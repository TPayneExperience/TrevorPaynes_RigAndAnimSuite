

import pymel.core as pm
# from maya import mel

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
    def __init__(self, limbMng, jntMng, meshMng, skinMng, parent):
        self.limbMng = limbMng
        self.jntMng = jntMng
        self.parent = parent
        self.meshMng = meshMng
        self.skinMng = skinMng

        self.curMesh = None
        self.limb = None
        self.joint = None

        self._Setup()

    def NewRig(self, rigRoot):
        self.rigRoot = rigRoot


#=========== SETUP ====================================

    def _Setup(self):
        with pm.verticalLayout():
            # with pm.columnLayout():
            with pm.frameLayout('Skinned Meshes', bv=1, h=33):
                self.meshHier_ui = mesh_ui.PW_Meshes_Hierarchy_UI( self.meshMng,
                                                                self)
            with pm.frameLayout('Limb Hierarchy', bv=1):
                self.limbHier_ui = limb_UI.PW_Limb_Hierarchy_UI(self.limbMng,
                                                                self.jntMng,
                                                                self)
            with pm.frameLayout('Limb Joints', bv=1):
                self.jntHier_ui = joint_ui.PW_Joint_Hierarchy_UI( self.limbMng,
                                                                self.jntMng,
                                                                self)
        
        with pm.verticalLayout():
            self.brush_ui = brush_ui.PW_Brush_Properties_UI(self.meshMng,
                                                            self.skinMng, 
                                                            self)

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

    def LimbSelected(self, limbID):
        if limbID != -1:
            self.limb = self.limbMng.GetLimb(limbID)
            paint.PFRS_ATTR = 'L' + str(limbID)
            paint.PFRS_INF_JOINTS = []
            self.jntHier_ui.SetLimb(limbID)
            self.skinMng.SkinTestLimbAnim(self.limb)
            if self.curMesh:
                paint.UpdateLimbVertexColors()
                pm.select(self.curMesh)
                self.brush_ui.BrushOn()
        else:
            self.jntHier_ui.Depopulate()
            self.limb = None
            self.brush_ui.BrushOff()

    def JointSelected(self, jointID):
        if jointID != -1:
            self.joint = self.jntMng.GetJoint(jointID)
            joints = self.jntMng.GetLimbJoints(self.limb, False)
            otherJoints = [j for j in joints if j != self.joint]
            paint.PFRS_INF_JOINTS = otherJoints
            paint.PFRS_ATTR = 'J' + str(jointID)
            self.skinMng.SkinTestJointAnim(self.joint)
            if self.curMesh:
                pm.select(self.curMesh)
                paint.UpdateJointVertexColors()
                self.brush_ui.BrushOn()
        else:
            self.brush_ui.BrushOff()
            self.joint = None

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




