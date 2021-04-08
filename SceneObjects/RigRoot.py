
import os

import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)
import Common.Logger as log
reload(log)
import Common.General_Utilities as genUtil
reload(genUtil)

class RigRoot:
    @staticmethod
    @log.static_decorator
    def Add():
        rigRoot = pm.group(name='ROOT_tempName', em=True)
        genUtil.AbstractInitializer(rigRoot, 'RigRoot')
        RigRoot.ImportControlShapeTemplates(rigRoot)
        rigRoot.prefix.set('TEMP')
        rigRoot.mainTab.set('Rigging')
        rigRoot.subTab.set('Limb Setup')

        return rigRoot

    @staticmethod
    @log.static_decorator
    def GetAll():
        return [r for r in pm.ls(tr=1) if r.hasAttr('limbs')]

    @staticmethod
    @log.static_decorator
    def UpdateRootName(rigRoot):
        rigRoot.rename('%s_ROOT' % rigRoot.prefix.get())
        for limb in pm.listConnections(rigRoot.limbs):
            pass
            # self.limbMng.UpdateLimbName(limb)

    @staticmethod
    @log.static_decorator
    def ImportControlShapeTemplates(rigRoot):
        for child in pm.listRelatives(rigRoot, c=1):
            if child.shortName() == rigData.CONTROL_TEMPLATE_GROUP:
                pm.delete(child)
                break
        folder = os.path.dirname(__file__)  # Scene Objects
        folder = os.path.dirname(folder)    # Root
        folder = os.path.join(folder, 'Templates')
        filePath = os.path.join(folder, 'Control_Shapes.ma')
        nodes = pm.importFile(filePath, returnNewNodes=1)
        ctrShapes = [n for n in nodes if pm.objectType(n) == 'transform']
        ctrShapesParent = pm.group(name=rigData.CONTROL_TEMPLATE_GROUP, em=1)
        ctrShapesParent.v.set(0)
        pm.parent(ctrShapes, ctrShapesParent)
        pm.parent(ctrShapesParent, rigRoot)
        for ctr in ctrShapes:
            ctr.rename('PFRSCTR_' + ctr.shortName())















