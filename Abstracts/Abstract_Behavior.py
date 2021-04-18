
from abc import ABCMeta, abstractmethod, abstractproperty

# import Common.Utilities as util
# reload(util)

class Abstract_Behavior:
    __metaclass__ = ABCMeta
    
#============= PROPERTIES ============================

    @abstractproperty
    def bhvName(self):          # str | 'Empty', 'FK Chain'
        pass 

    @abstractproperty
    def validLimbTypes(self):   # tuple int | 
        pass 

    @abstractproperty
    def groupName(self):        # str | 'IKPV', 'Empty'
        pass 

    @abstractproperty
    def groupCount(self):       # int | 2
        pass 

    @abstractproperty
    def groupMoveable(self):    # bool | True
        pass 

    @abstractproperty
    def orderIndex(self):       # int | 0, 100, 200...
        pass 

#============= METHODS ============================

    @abstractmethod
    def InitLimb(self, limb):
        # LIMB GROUPS MUST BE CREATED BEFORE CALLING THIS
        # Add limb Attrs
        # Add Group Attrs
        # Connect 'used' joint groups to limb.usedGroups
            # limb groups auto-added/connected
        pass
    
#============= EDITABLE ============================

    @abstractmethod
    def Setup_Editable(self, limb):
        # Position / parent limb groups to joints
        pass
    
    @abstractmethod
    def Teardown_Editable(self, limb):
        # Reset limb groups
        pass
    
#============= RIG ============================

    @abstractmethod
    def Setup_Rig_Internal(self, limb):
        pass
    
    @abstractmethod
    def Setup_Rig_External(self, limb):
        pass
    
#============= UI ============================

    @abstractmethod
    def Setup_LimbProperties_UI(self, limb):
        return False # return if UI is enabled
    
    @abstractmethod
    def Setup_GroupProperties_UI(self, group):
        pass
    
