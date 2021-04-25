
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
    def validLimbTypes(self):   # tuple int | (0, 1)
        pass 

    @abstractproperty
    def groupType(self):        # str | 'IKPV', 'Empty'
        pass 

    @abstractproperty
    def groupShape(self):       # str | 'Circle_Wire', 'Cube_Poly'
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
        # POSITION Limb groups (NO PARENTING)
        pass
    
    @abstractmethod
    def CleanupLimb(self, limb):
        # Remove lingering behavior specific stuff (EX - IK Spline curve)
        pass
    
#============= RIG (Requires Setup) ============================

    @abstractmethod
    def Setup_Rig_Internal(self, limb):
        pass
    
    @abstractmethod
    def Setup_Rig_External(self, limb):
        pass
    
    @abstractmethod
    def Teardown_Rig(self, limb):
        # Remove constraints
        # Reparent groups to limbs/joints
        pass
    
#============= BAKE (Requires Setup) ============================

    @abstractmethod
    def Setup_Bake(self, limb):
        # Setup controls to recieve keys from joints
        pass
    
    @abstractmethod
    def Teardown_Bake(self, limb):
        # Remove constraints
        # Reparent groups to limbs/joints
        pass
    
#============= EDITABLE UI ============================

    @abstractmethod
    def Setup_Editable_Limb_UI(self, limb):
        return False # return if UI is enabled
    
#============= ANIMATION UI ============================

    @abstractmethod
    def Setup_Animation_Limb_UI(self, limb):
        return False # return if UI is enabled
    
    @abstractmethod
    def Setup_Animation_Group_UI(self, group):
        pass
    
