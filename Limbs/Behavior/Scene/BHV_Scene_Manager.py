
class BHV_Scene_Manager:
    def __init__(self):
        pass

    def NewRig(self, rigRoot):
        self.rigRoot = rigRoot
    
# ======= SETUP / TEARDOWN OF EDITABLE / FINAL ========================

    def Setup_Editable(self):
        pass
        # for each limb:
            # create Bhv Groups temp ctrs
            # connect to bhv grps
            # 


    def Teardown_Editable(self):
        pass

    def Setup_Final(self):
        pass
        # for each limb:
            # Create BHV groups
            # create dup joints
            # bind original jnts to bhvJnts

    def Teardown_Final(self):
        pass
    
#======= SETUP + TEARDOWN WRAPPERS ===================================
    
    
#======= SCRIPT JOBS ===================================

