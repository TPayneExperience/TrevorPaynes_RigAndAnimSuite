
import pymel.core as pm

class Skin_Mananger:
    def __init__(self, limbMng, jntMng, meshMng):
        self.limbMng = limbMng
        self.jntMng = jntMng
        self.meshMng = meshMng
    
    def NewRig(self, rigRoot):
        pass


#============= PARENTS / TREE MANIPULATION ============================

    def BindSkins(self):
        pass    # Skin

    def UnbindSkins(self):
        pass # UnSkin
        

#============= ADD / REMOVE ============================

    def AddSkinAttrs(self, mesh):
        for rootLimb in self.limbMng.GetRootLimbs():
            for limb in self.limbMng.GetLimbCreationOrder(rootLimb):
                self.AddLimbAttrs(mesh, limb)

    def RemoveSkinAttrs(self, mesh): # FINALIZE MESHES
        for rootLimb in self.limbMng.GetRootLimbs():
            for limb in self.limbMng.GetLimbCreationOrder(rootLimb):
                self.RemoveLimbAttrs(mesh, limb)

    def AddLimbAttrs(self, mesh, limb):
        limbAttr = "L" + str(limb.ID.get())
        if not mesh.hasAttr(limbAttr):
            pm.addAttr(mesh, ln=limbAttr, dt='doubleArray')
        for joint in self.jntMng.GetLimbJoints(limb):
            self.AddJointAttr(mesh, joint)

    def RemoveLimbAttrs(self, mesh, limb):
        limbAttr = "L" + str(limb.ID.get())
        if not mesh.hasAttr(limbAttr):
            mesh.deleteAttr(limbAttr)
        for joint in self.jntMng.GetLimbJoints(limb):
            self.RemoveJointAttr(mesh, joint)

    def AddJointAttr(self, mesh, joint):
        jointAttr = "J" + str(joint.ID.get())
        if not mesh.hasAttr(jointAttr):
            pm.addAttr(mesh, ln=jointAttr, dt='doubleArray')

    def RemoveJointAttr(self, mesh, joint):
        jointAttr = "J" + str(joint.ID.get())
        if mesh.hasAttr(jointAttr):
            mesh.deleteAttr(jointAttr)




