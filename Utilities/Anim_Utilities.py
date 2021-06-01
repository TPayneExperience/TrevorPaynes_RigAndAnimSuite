
import os

import pymel.core as pm

#=========== ACCESSORS ====================================

def GetLimbAnim(limb, animName):
    for animGroup in pm.listConnections(limb.animGroups):
        if animGroup.pfrsName.get() == animName:
            return animGroup
    return None

    # limbName = limb.pfrsName.get()
    # msg = '"%s" missing animation "%s"' % (limbName, animName)
    # raise ValueError(msg)

def UpdateAnimFolder(rigRoot, currentFilePath):
    folder = rigRoot.animationFolderPath.get()
    if not folder:
        folder = os.path.dirname(currentFilePath)
        folder = os.path.join(folder, 'Animations')
        rigRoot.animationFolderPath.set(folder)
    if not os.path.isdir(folder):
        os.makedirs(folder)
