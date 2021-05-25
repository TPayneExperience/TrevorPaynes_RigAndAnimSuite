
from abc import ABCMeta, abstractmethod, abstractproperty

# import Utilities.Utilities as util
# reload(util)

class Abstract_Behavior:
    __metaclass__ = ABCMeta
    
#============= PROPERTIES ============================

    @abstractproperty
    def bhvType(self):          # str | 'Empty', 'FK Chain'
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
    def usesJointControls(self):    # bool | True
        pass                            #

    @abstractproperty
    def usesLimbControls(self):    # bool | True
        pass 

    @abstractproperty
    def orderIndex(self):       # int | 0, 100, 200...
        pass 

    @abstractproperty
    def bakeLosesData(self):       # bool | False
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
    
#============= SETUP ============================

    @abstractmethod
    def Setup_Rig_Internal(self, limb):
        return [] # Return internal groups to be baked
    
    @abstractmethod
    def Setup_Rig_External(self, limb):
        return []  # Return external groups to be baked
    
    @abstractmethod
    def Setup_Constraint_JointsToControls(self, limb):
        pass
    
    @abstractmethod
    def Setup_Constraint_ControlsToJoints(self, limb):
        pass
    
#============= TEARDOWN ============================

    @abstractmethod
    def Teardown_Rig_Internal(self, limb):
        pass

    @abstractmethod
    def Teardown_Rig_External(self, limb):
        pass
    
    @abstractmethod
    def Teardown_Constraint_JointsToControls(self, limb):
        pass
    
    @abstractmethod
    def Teardown_Constraint_ControlsToJoints(self, limb):
        pass
    
#============= EDITABLE UI ============================

    @abstractmethod
    def Setup_Editable_Limb_UI(self, limb):
        return False # return if UI is enabled
    
#============= ANIMATION UI ============================

    @abstractmethod
    def Setup_Animation_Limb_UI(self, limb):
        return False # return if UI is enabled
    
