

import pymel.core as pm
# from maya import mel

import Common.Utilities as util
reload(util)

import PW_Meshes_Hierarchy_UI as mesh_ui
reload(mesh_ui)
import PW_Limb_Hierarchy_UI as limb_UI
reload(limb_UI)
import PW_Joint_Hierarchy_UI as joint_ui
reload(joint_ui)
import PW_Brush_Properties_UI as brush_ui
reload(brush_ui)
import Skinning.Data.PFRS_Paint as paint
reload(paint)

class PaintWeights_UI:
    def __init__(self, parent):
        self.parent = parent
        self.limbMng = parent.limbMng
        self.jntMng = parent.jntMng
        self.rigBHV = parent.rigBHV
        self.meshMng = parent.meshMng
        self.skinMng = parent.skinMng
        self.logger = parent.logger
        self.pfrs = parent.pfrs

        self.curMesh = None
        self.limb = None
        self.joint = None

        self._Setup()

#=========== SETUP ====================================

    def _Setup(self):
        with pm.verticalLayout():
            # with pm.columnLayout():
            with pm.frameLayout('Skinned Meshes', bv=1, h=33):
                self.meshHier_ui = mesh_ui.PW_Meshes_Hierarchy_UI(self)
            with pm.frameLayout('Limb Hierarchy', bv=1):
                self.limbHier_ui = limb_UI.PW_Limb_Hierarchy_UI(self)
            with pm.frameLayout('Limb Joints', bv=1):
                self.jntHier_ui = joint_ui.PW_Joint_Hierarchy_UI(self)
        
        with pm.verticalLayout():
            self.brush_ui = brush_ui.PW_Brush_Properties_UI(self)

#=========== TABS ====================================

    def Setup_Editable(self):
        print ('paint weights, setup')
        # self.brush_ui.CreateBrush()
        self.brush_ui.UpdateInfluenceCount()
        self.Populate()

    def Teardown_Editable(self):
        print ('paint weights, teardown')
    
    def Populate(self):
        self.limbHier_ui.Populate()
        self.meshHier_ui.Populate()

    def LimbSelected(self, limb):
        self.limb = limb
        self.jntHier_ui.SetLimb(limb)
        if limb:
            paint.PFRS_ATTR = 'L' + str(limb.ID.get())
            paint.PFRS_INF_JOINTS = []
            self.skinMng.SkinTestLimbAnim(limb)
            if self.curMesh:
                paint.UpdateLimbVertexColors()
                pm.select(self.curMesh)
                self.brush_ui.BrushOn()
        else:
            self.brush_ui.BrushOff()

    def JointSelected(self, joint):
        self.joint = joint
        if joint:
            joints = util.GetSortedLimbJoints(self.limb)
            if self.limb.limbType.get() == 2:
                joints = joints[:-1]
            otherJoints = [j for j in joints if j != self.joint]
            paint.PFRS_INF_JOINTS = otherJoints
            paint.PFRS_ATTR = 'J' + str(joint.ID.get())
            self.skinMng.SkinTestJointAnim(self.joint)
            if self.curMesh:
                pm.select(self.curMesh)
                paint.UpdateJointVertexColors()
                self.brush_ui.BrushOn()
        else:
            self.brush_ui.BrushOff()

    def MeshSelected(self, mesh):
        if self.curMesh == mesh:
            return
        if self.curMesh:
            self.skinMng.Teardown_PaintDisplay(self.curMesh)
        self.curMesh = mesh
        if mesh:
            self.skinMng.Setup_PaintDisplay(mesh)
            paint.PFRS_MESH_NAME = mesh.longName()
            if self.joint:
                self.JointSelected(self.joint.ID.get())
            elif self.limb:
                self.LimbSelected(self.limb.ID.get())
        else:
            self.brush_ui.BrushOff()




