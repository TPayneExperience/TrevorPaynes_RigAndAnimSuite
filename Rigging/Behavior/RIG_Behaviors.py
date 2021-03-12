
import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)
import Common.Utilities as util
reload(util)

class RIG_Behaviors:
    def __init__ (self, parent):
        self.logger = parent.logger
        self.grpMng = parent.grpMng
        self.jntMng = parent.jntMng
        self.limbMng = parent.limbMng
        self.pfrs = parent

#============= ACCESSORS ============================

    def GetBhvOptions(self, limb):
        self.logger.debug('\tBhv.py > GetBhvOptions')
        limbType = limb.limbType.get()
        if limbType == 0: # Empty
            return [rigData.BHV_TYPES[i] for i in rigData.EMPTY_BHV_INDEXES]
        elif limbType == 1: # One Joint
            return [rigData.BHV_TYPES[i] for i in rigData.ONE_JOINT_BHV_INDEXES]
        elif limbType == 4: # 2 Chain
            return [rigData.BHV_TYPES[i] for i in rigData.TWO_JOINT_CHAIN_BHV_INDEXES]
        elif limbType == 2: # 3+ Chain
            return [rigData.BHV_TYPES[i] for i in rigData.THREE_JOINT_CHAIN_BHV_INDEXES]
        elif limbType == 3: # Branch
            return [rigData.BHV_TYPES[i] for i in rigData.TWO_JOINT_BRANCH_BHV_INDEXES]


