
class POSE:
    def __init__(self):
        self.poseName = 'asdf'
        self.pfrsName = 'asdf' # limb.pfrsName.get()
        self.bhvType = -1
        self.side = -1
        self.weight = 0
        self.limbControls = [] # [Empty, IKPV, LookAt]
        self.jointControls = [] # by index >>>
        # >>> empty = ignore, [[], [[pos], [rot], [scale]],...]












