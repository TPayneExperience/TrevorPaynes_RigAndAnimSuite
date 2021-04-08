
from abc import ABCMeta, abstractmethod

# import Common.Utilities as util
# reload(util)

class Abstract_Behavior:
    __metaclass__ = ABCMeta
    validLimbTypes = ()     # rigData.LIMB_TYPES
    groupNames = []         # LookAt, IKPV...
    isDepricated = True    
    orderIndex = 1000       # in hundred, 0 = first

    @staticmethod
    @abstractmethod
    def InitLimb(limb):
        # LIMB GROUPS MUST BE CREATED BEFORE CALLING THIS
        # Add limb Attrs
        # Add Group Attrs
        # Parent limb groups to joints / position them
        pass
    
#============= EDITABLE ============================

    @staticmethod
    @abstractmethod
    def Setup_Editable(limb):
        # Mainly for joint/limb group visibility
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
    
    @staticmethod
    @abstractmethod
    def Teardown_Rig(limb):
        # constraints removed in parent
        pass
    
#============= UI ============================

    @staticmethod
    @abstractmethod
    def Setup_LimbProperties_UI(limb):
        return None # return ui created
    
    @staticmethod
    @abstractmethod
    def Setup_GroupProperties_UI(limb):
        return None # return ui created
    
