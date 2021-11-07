
from abc import ABCMeta, abstractmethod, abstractproperty

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
        pass

    @abstractproperty
    def usesLimbControls(self):    # bool | True
        pass 

    @abstractproperty
    def uiOrderIndex(self):       # int | 0, 100, 200...
        pass 

    @abstractproperty
    def bakeLosesData(self):       # bool | False
        pass 

    @abstractproperty
    def duplicateJointGroups(self):       # bool | False
        pass 

#============= METHODS ============================

    @abstractmethod
    def InitLimb(self, limb):
        # Add limb Attrs
        # Add Group Attrs
        # POSITION Limb groups (NO PARENTING)
        pass
    
    @abstractmethod
    def CleanupLimb(self, limb):
        # Remove lingering behavior specific stuff (EX - IK Spline curve)
        pass
    
#============= FOR BEHAVIOR OPERATION ============================

    @abstractmethod
    def Setup_ForBhvOp(self, limb):
        pass
    
    @abstractmethod
    def Teardown_ForBhvOp(self, limb):
        pass
    
#============= SETUP ============================

    @abstractmethod
    def Setup_Rig_Controls(self, limb):
        pass
    
    @abstractmethod
    def Setup_Constraint_JointsToControls(self, limb):
        pass
    
    @abstractmethod
    def Setup_Constraint_ControlsToXforms(self, limb, 
            xforms, hasPosCst, hasRotCst, hasScaleCst):
        return []
    
#============= TEARDOWN ============================

    @abstractmethod
    def Teardown_Rig_Controls(self, limb):
        pass

    @abstractmethod
    def Teardown_Constraint_JointsToControls(self, limb):
        pass
    
    @abstractmethod
    def Teardown_Constraint_ControlsToXforms(self, limb):
        pass
    
#============= EDITABLE UI ============================

    @abstractmethod
    def Setup_Behavior_Limb_UI(self, limb):
        return False # return if UI is enabled
    
#============= ANIMATION UI ============================

    @abstractmethod
    def Setup_AnimationTools_Limb_UI(self, limb):
        return False # return if UI is enabled
    
# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"

