import os
import time
import shutil

def GetBuildFolderName():
    dest = os.path.dirname(__file__)

    t = time.localtime()
    fileName = 'PFRS_BUILD_%02d-%02d' % (t[0] %100, t[1])
    fileName += '-%02d_%02d-%02d-%02d' % (t[2], t[3], t[4], t[5])
    buildFolder = os.path.join(dest, fileName)
    print ('Copying folder to: ' + buildFolder)
    return buildFolder

def DeleteUnusedFolders(dest):
    unused = (  '.git',
                '.vscode',
                '__pycache__',
                '_REF',
                'Images',
                'TEST_OUTPUT')
    for folder in unused:
        path = os.path.join(dest, folder)
        if os.path.isdir(path):
            print 'Deleting Unused FOLDER: ' + path
            os.system('rmdir /S /Q "{}"'.format(path))

def DeleteUnusedFiles(dest):
    unused = (  '.gitattributes',
                '.gitignore',
                'TPayne_VSC_Workspace.code-workspace',
                'run_payneFreeRigSuite.py')
    for deadFile in unused:
        path = os.path.join(dest, deadFile)
        if os.path.isfile(path):
            print 'Deleting Unused FILE: ' + path
            os.remove(path)

def DeletePythonFiles(dest):
    omit = ('payneFreeRigSuite_Plugin.py',
            '__init__.py')
    for something in os.listdir(dest):
        if something in omit:
            continue
        path = os.path.join(dest, something)
        if os.path.isdir(path):
            DeletePythonFiles(path)
        elif '.pyc' in something:
            continue
        elif '.py' in something:
            print 'Deleting PYTHON file: ' + path
            os.remove(path)

def DeleteLogs(dest):
    folder = os.path.join(dest, 'Logs')
    for log in os.listdir(folder):
        path = os.path.join(folder, log)
        print 'Deleting LOG file: ' + path
        os.remove(path)

def CopyReadme(dest):
    name = 'README.txt'
    source = os.path.join(os.path.dirname(__file__), name)
    fileDest = os.path.join(dest, name)
    print 'Copying Readme file to : ' + fileDest
    shutil.copy(source, fileDest)


if __name__ == '__main__':
    paths = os.environ['MAYA_PLUG_IN_PATH'].split(';')
    source = paths[0]
    dest = GetBuildFolderName()
    shutil.copytree(source, dest)
    DeleteUnusedFolders(dest)
    DeleteUnusedFiles(dest)
    DeletePythonFiles(dest)
    DeleteLogs(dest)
    CopyReadme(dest)





