
from RigSetup.RigSetup import RigSetup

class RigAndAnim_Manager():
    def __init__(self):
        self._rigSetup = RigSetup()
        # skeleton manager
        # behavior mng
        # appearance mng
        # skinning mng

        # used to track group parents
        self._sceneGrps = { 'root': '',
                            'skeleton':'',
                            'controls':'',
                            'mesh':'',
                            'temp':'' }
    
    # For when animations applied to controls
    # def MuteAnims(self):
    #     pass
    # def UnmuteAnims(self):
    #     pass

























