
import json

class Json_Manager():
    def Save(self, filePath, data):
        print('Saving: ' + filePath)
        with open(filePath, 'w') as outputFile:
            json.dump(data, outputFile, indent=4)
    
    def Load(self, filePath):
        print('Loading: ' + filePath)
        data = None
        with open(filePath, 'r') as readFile:
            data = json.load(readFile)
        return data



