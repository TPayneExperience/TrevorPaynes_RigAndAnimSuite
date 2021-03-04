
import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)

class RIG_APP_Global_Properties_UI:
    def __init__(self, parent):
        self.parent = parent
        self.grpMng = parent.grpMng
        self.ctrMng = parent.ctrMng
        self.logger = parent.logger
        self.pfrs = parent.pfrs

        self._Setup()
    
    def Populate(self):
        self.logger.debug('\tApp_GlobalProp > Populate')
        root = self.pfrs.root
        pm.deleteUI(self.empty_at)
        pm.deleteUI(self.joint_at)
        pm.deleteUI(self.ikpv_at)
        pm.deleteUI(self.lookAt_at)
        self.empty_at = pm.attrEnumOptionMenu(  l='  Empty\t\t',
                                                p=self.prop_cl,
                                                cc=self.UpdateEmptyShapes,
                                                at=root.appEmptyCtrShape)
        self.joint_at = pm.attrEnumOptionMenu(  l='  FK\t\t',
                                                p=self.prop_cl,
                                                cc=self.UpdateJointShapes,
                                                at=root.appJointCtrShape)
        self.ikpv_at = pm.attrEnumOptionMenu(   l='  IKPV\t\t',
                                                p=self.prop_cl,
                                                cc=self.UpdateIKPVShapes,
                                                at=root.appIKPVCtrShape)
        self.lookAt_at = pm.attrEnumOptionMenu( l='  Look At\t',
                                                p=self.prop_cl,
                                                cc=self.UpdateLookAtShapes,
                                                at=root.appLookAtCtrShape)

#=========== SETUP UI ==============================================

    def _Setup(self):
        with pm.frameLayout('Global Control Shapes', bv=1) as self.prop_fl:
            with pm.columnLayout(adj=1) as self.prop_cl:
                self.empty_at = pm.attrEnumOptionMenu(at='perspShape.filmFit')
                self.joint_at = pm.attrEnumOptionMenu(at='perspShape.filmFit')
                self.ikpv_at = pm.attrEnumOptionMenu(at='perspShape.filmFit')
                self.lookAt_at = pm.attrEnumOptionMenu(at='perspShape.filmFit')

#=========== FUNCTIONALITY ==============================================

    def UpdateEmptyShapes(self, shape):
        self.logger.info('\tApp_GlobalProp > UpdateEmptyShapes')
        index = self.pfrs.root.appEmptyCtrShape.get()
        for limb in pm.listConnections(self.pfrs.root.emptyLimbs):
            group = pm.listConnections(limb.bhvEmptyGroup)[0]
            self.ctrMng.SetShape(group, index)

    def UpdateJointShapes(self, shape):
        self.logger.info('\tApp_GlobalProp > UpdateJointShapes')
        index = self.pfrs.root.appJointCtrShape.get()
        for limb in pm.listConnections(self.pfrs.root.jointLimbs):
            for joint in pm.listConnections(limb.joints):
                group = pm.listConnections(joint.group)[0]
                self.ctrMng.SetShape(group, index)

    def UpdateIKPVShapes(self, shape):
        self.logger.info('\tApp_GlobalProp > UpdateIKPVShapes')
        index = self.pfrs.root.appJointCtrShape.get()
        for limb in pm.listConnections(self.pfrs.root.jointLimbs):
            group = pm.listConnections(limb.bhvIKPVGroup)[0]
            self.ctrMng.SetShape(group, index)

    def UpdateLookAtShapes(self, shape):
        self.logger.info('\tApp_GlobalProp > UpdateLookAtShapes')
        index = self.pfrs.root.appJointCtrShape.get()
        for limb in pm.listConnections(self.pfrs.root.jointLimbs):
            group = pm.listConnections(limb.bhvLookAtGroup)[0]
            self.ctrMng.SetShape(group, index)


