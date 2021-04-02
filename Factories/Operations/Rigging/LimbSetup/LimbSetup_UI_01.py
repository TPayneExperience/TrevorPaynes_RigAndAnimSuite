
import pymel.core as pm

import Common.Abstract_Operation as absOp
reload(absOp)

class LimbSetup_UI(absOp.Abstract_Operation):
    operationName = 'Joint + Limb Setup'
    version = 100
    orderIndex = 100
    isRigBuilt = False
    validRigStates = (0,) # 0 = Setup, 1 = Anim

#=========== INIT RIG ROOT ====================================

    @staticmethod
    def IsRigSetup(rigRoot):
        print ('inside Is rig setup')
        return False

    @staticmethod
    def InitRig(rigRoot):
        print ('inside Setup Rig!')
        pass

#=========== SETUP UI ====================================

    def Setup_UI(self, parentUI): # Return nothing, parent should cleanup
        print ('Setup UI working!!!')
        pm.text('asdfasdf')
    
#=========== SETUP ====================================






