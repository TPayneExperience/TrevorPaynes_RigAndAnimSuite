
from abc import ABCMeta, abstractmethod

# import Common.Utilities as util
# reload(util)

class Abstract_Behavior:
    __metaclass__ = ABCMeta
    bhvName = ''            # Empty, FK Chain
    validLimbTypes = ()     # rigData.LIMB_TYPES
    groupNames = []         # MUST BE UNIQUE: LookAt, IKPV1...
    groupMoveable = False   # for moving control pivots
    orderIndex = 1000       # in hundred, 0 = first

    @staticmethod
    @abstractmethod
    def InitLimb(limb):
        # LIMB GROUPS MUST BE CREATED BEFORE CALLING THIS
        # Add limb Attrs
        # Add Group Attrs
        # Connect 'used' joint groups to limb.usedGroups
            # limb groups auto-added/connected
        pass
    
#============= EDITABLE ============================

    @staticmethod
    @abstractmethod
    def Setup_Editable(limb):
        # Position / parent limb groups to joints
        pass
    
    @staticmethod
    @abstractmethod
    def Teardown_Editable(limb):
        # Reset limb groups
        pass
    
#============= RIG ============================

    @staticmethod
    @abstractmethod
    def Setup_Rig_Internal(limb):
        pass
    
    @staticmethod
    @abstractmethod
    def Setup_Rig_External(limb):
        pass
    
    # @staticmethod
    # @abstractmethod
    # def Teardown_Rig(limb):
    #     # constraints removed in parent
    #     pass
    
#============= UI ============================

    @staticmethod
    @abstractmethod
    def Setup_LimbProperties_UI(limb):
        return False # return if UI is enabled
    
    @staticmethod
    @abstractmethod
    def Setup_GroupProperties_UI(group):
        pass
    
