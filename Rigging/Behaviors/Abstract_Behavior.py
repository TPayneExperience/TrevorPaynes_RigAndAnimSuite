
from abc import ABCMeta, abstractmethod

import Common.Utilities as util
reload(util)

class xx:
    __metaclass__ = ABCMeta
    def __init__(self):
        self.pfrsName = 'asdf'      # Behavior Name in combobox
        self.version = 1
        self.validLimbTypes = (-1,) # rigData.LIMB_TYPES
        self.groupNames = []        # LookAt, IKPV1...
        self.isDepricated = True    
        self.orderIndex = -1        # 0 = first, 99 = last

    @abstractmethod
    def InitLimb(self, limb):
        # LIMB GROUPS MUST BE CREATED BEFORE CALLING THIS
        # Add limb Attrs
        # Add Group Attrs
        # Set limb groups canAdjustPivot
        # Parent limb groups to joints / position them
        pass
    
    def IsReadyToBuild(self):
        return False 

#============= EDITABLE + RIG ============================

    @abstractmethod
    def Setup_Editable(self, limb):
        # Mainly for joint group visibility
        pass
    
    @abstractmethod
    def Teardown_Editable(self, limb):
        pass
    
    @abstractmethod
    def Setup_Rig_Internal(self, limb):
        pass
    
    @abstractmethod
    def Setup_Rig_External(self, limb):
        pass
    
    @abstractmethod
    def Teardown_Rig_Internal(self, limb):
        pass
    
    @abstractmethod
    def Teardown_Rig_External(self, limb):
        pass
    
#============= UI ============================

    @abstractmethod
    def Setup_LimbProperties(self, limb):
        return False # return if frame should be enabled
    
    @abstractmethod
    def Teardown_LimbProperties(self, limb):
        pass
    
    @abstractmethod
    def Setup_GroupProperties(self, limb):
        return False # return if frame should be enabled
    
    @abstractmethod
    def Teardown_GroupProperties(self, limb):
        pass
    
