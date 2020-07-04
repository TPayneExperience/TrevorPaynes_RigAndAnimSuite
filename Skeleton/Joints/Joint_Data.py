
AXES = ['X', '-X', 'Y', '-Y', 'Z', '-Z']
ROT_AXES = ['XYZ', 'XZY', 'YXZ', 'YZX', 'ZXY', 'ZYX']

class Joint_Data():
    def __init__(self):
        self.jointID = -1
        self.prefix = ''
        self.limbName = ''
        self.jointName = ''
        self.side = ''
        self.position = [0,0,0]
        self.rotation = [0,0,0,0]
        self.scale = [1,1,1]
        self.rotationOrder = ROT_AXES[0]
        self.aimAxis = AXES[0]
        self.upAxis = AXES[2]
        














