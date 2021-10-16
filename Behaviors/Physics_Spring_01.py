
# import imp

# import pymel.core as pm

# import Abstracts.Abstract_Behavior as absBhv
# #imp.reload(absBhv)
# import Utilities.Rig_Utilities as rigUtil
# #imp.reload(rigUtil)

# import Utilities.Logger as log
# #imp.reload(log)

# class Physics_Spring_01(absBhv.Abstract_Behavior):
#     bhvType = 'Physics Spring'
#     validLimbTypes = (1, 2, 3, 4) # rigData.LIMB_TYPES, 1B, 2B, 2C, 3C
#     groupType = ''        # LookAt, IKPV...
#     groupShape = ''
#     groupCount = 0
#     groupMoveable = True   # for moving control pivots
#     uiOrderIndex = 610  
#     usesJointControls = True
#     usesLimbControls = False
#     bakeLosesData = False
#     duplicateJointGroups = False
    
#     def InitLimb(self, limb):
#         log.funcFileDebug()
#         pm.disconnectAttr(limb.usedGroups)
#         limb.bhvHasPhysics.set(1)
#         for group in pm.listConnections(limb.jointGroups):
#             pm.connectAttr(limb.usedGroups, group.used)
#             control = pm.listConnections(group.control)[0]

#             pm.setAttr(control.RIGID_BODY, k=1)
#             pm.setAttr(control.rbMass, k=1)
#             pm.setAttr(control.rbBounciness, k=1)
#             pm.setAttr(control.rbDamping, k=1)

#             pm.setAttr(control.SPRING, k=1)
#             pm.setAttr(control.sInterpenetrate, k=1)
#             pm.setAttr(control.sStiffness, k=1)
#             pm.setAttr(control.sDamping, k=1)
#             pm.setAttr(control.sRestLength, k=1)

#     def CleanupLimb(self, limb):
#         log.funcFileDebug()
#         limb.bhvHasPhysics.set(0)
#         for group in pm.listConnections(limb.jointGroups):
#             control = pm.listConnections(group.control)[0]
#             pm.setAttr(control.RIGID_BODY, k=0)
#             pm.setAttr(control.rbMass, k=0, cb=0)
#             pm.setAttr(control.rbBounciness, k=0, cb=0)
#             pm.setAttr(control.rbDamping, k=0, cb=0)

#             pm.setAttr(control.SPRING, k=0)
#             pm.setAttr(control.sInterpenetrate, k=0, cb=0)
#             pm.setAttr(control.sStiffness, k=0, cb=0)
#             pm.setAttr(control.sDamping, k=0, cb=0)
#             pm.setAttr(control.sRestLength, k=0, cb=0)

# #============= FOR BEHAVIOR OPERATION ============================

#     def Setup_ForBhvOp(self, limb):
#         pass
    
#     def Teardown_ForBhvOp(self, limb):
#         pass
    
# #============= SETUP ============================

#     def Setup_Rig_Controls(self, limb):
#         log.funcFileDebug()
#         parentControl = rigUtil.GetParentControl(limb)
#         if parentControl:
#             for group in pm.listConnections(limb.jointGroups):
#                 pm.makeIdentity(group, a=1, t=1, r=1, s=1)
#                 pm.parentConstraint(parentControl, group, mo=1)
    
#     def Setup_Constraint_JointsToControls(self, limb):
#         log.funcFileDebug()
#         rigRoot = pm.listConnections(limb.rigRoot)[0]
#         for group in pm.listConnections(limb.jointGroups):
#             # Bind Joint
#             joint = pm.listConnections(group.joint)[0]
#             control = pm.listConnections(group.control)[0]
#             pm.parentConstraint(control, joint, mo=1)

#             # Create + parent spring group
#             controlParent = pm.listRelatives(control, p=1)[0]
#             name = control.shortName() + '_SpringGroup#'
#             springGroup = pm.group(n=name, em=1, p=controlParent)
#             pm.addAttr(springGroup, ln='limb', dt='string')
#             pm.delete(pm.parentConstraint(controlParent, springGroup))
#             rigUtil.ResetAttrs(springGroup)
#             pm.parent(control, springGroup)
#             pm.connectAttr(limb.physicsGroups, springGroup.limb)

#             # Create rigid body + connections
#             rigidBody = pm.rigidBody(springGroup)
#             pm.connectAttr(rigRoot.arePhysicsActive, rigidBody.active)
#             pm.connectAttr(control.rbMass, rigidBody.mass)
#             pm.connectAttr(control.rbBounciness, rigidBody.bounciness)
#             pm.connectAttr(control.rbDamping, rigidBody.damping)

#             # Create spring constraint
#             springCst = pm.constrain(springGroup, spring=1)
#             pm.connectAttr(rigRoot.arePhysicsActive, springCst + '.constrain')
#             pm.connectAttr(control.sInterpenetrate, 
#                                         springCst + '.interpenetrate')
#             pm.connectAttr(control.sStiffness, 
#                                         springCst + '.springStiffness')
#             pm.connectAttr(control.sDamping, 
#                                         springCst + '.springDamping')
#             pm.connectAttr(control.sRestLength, 
#                                         springCst + '.springRestLength')
#             pm.parent(springCst, controlParent)

#             # rigidBody.visibility.set(0)
#             # pm.setAttr(springCst + '.visibility', 0)

#     def Setup_Constraint_ControlsToXforms(self, limb, 
#             xforms, hasPosCst, hasRotCst, hasScaleCst):
#         log.funcFileDebug()
#         groups = pm.listConnections(limb.jointGroups)
#         groups = rigUtil.SortGroups(groups)
#         controls = [pm.listConnections(g.control)[0] for g in groups]
#         for xform, control in zip(xforms, controls):
#             if hasPosCst:
#                 pm.pointConstraint(xform, control)
#             if hasRotCst:
#                 pm.orientConstraint(xform, control)
#             if hasScaleCst:
#                 pm.scaleConstraint(xform, control)
#         return controls
    
# #============= TEARDOWN ============================

#     def Teardown_Rig_Controls(self, limb):
#         log.funcFileDebug()
#         if not pm.listConnections(limb.limbParent):
#             return
#         for group in pm.listConnections(limb.jointGroups):
#             pm.delete(pm.listRelatives(group, c=1, type='constraint'))
#             rigUtil.ResetAttrs(group)

#     def Teardown_Constraint_JointsToControls(self, limb):
#         for joint in pm.listConnections(limb.joints):
#             pm.delete(pm.listRelatives(joint, c=1, type='constraint'))
#         for group in pm.listConnections(limb.jointGroups):
#             control = pm.listConnections(group.control)[0]
#             springGroup = pm.listRelatives(control, p=1)[0]
#             parentGroup = pm.listRelatives(springGroup, p=1)[0]
#             pm.parent(control, parentGroup)
#             pm.delete(pm.listConnections(control.rbMass))
#             pm.delete(pm.listConnections(control.sStiffness))
    
#     def Teardown_Constraint_ControlsToXforms(self, limb):
#         jointGroups = pm.listConnections(limb.jointGroups)
#         controls = [pm.listConnections(g.control)[0] for g in jointGroups]
#         for control in controls:
#             pm.delete(pm.listRelatives(control, c=1, type='constraint'))
    
# #============= EDITABLE UI ============================

#     def Setup_Behavior_Limb_UI(self, limb):
#         log.funcFileDebug()
#         return False
    
# #============= ANIMATION UI ============================

#     def Setup_AnimationTools_Limb_UI(self, limb):
#         log.funcFileDebug()
#         return False # return if UI is enabled
    
# # Copyright (c) 2021 Trevor Payne
# # See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
