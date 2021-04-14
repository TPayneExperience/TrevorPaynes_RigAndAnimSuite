
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
    def Add():
        log.funcFileDebug()
        rigRoot = pm.group(name='ROOT_tempName', em=True)
        genUtil.AbstractInitializer(rigRoot, 'RigRoot')
        RigRoot.ImportControlShapeTemplates(rigRoot)
        rigRoot.prefix.set('TEMP')
        rigRoot.mainTab.set('Rigging')
        rigRoot.subTab.set('Limb Setup')

        return rigRoot

    @staticmethod
    def GetAll():
        log.funcFileDebug()
        return [r for r in pm.ls(tr=1) if r.hasAttr('limbs')]

    @staticmethod
    def UpdateRootName(rigRoot):
        log.funcFileDebug()
        rigRoot.rename('%s_ROOT' % rigRoot.prefix.get())
        for limb in pm.listConnections(rigRoot.limbs):
            genUtil.Name.UpdateLimbName(rigRoot, limb)

    @staticmethod
    def ImportControlShapeTemplates(rigRoot):
        log.funcFileDebug()
        old = pm.listConnections(rigRoot.controlTemplates)
        pm.delete(old)

        folder = os.path.dirname(__file__)  # Scene Objects
        folder = os.path.dirname(folder)    # Root
        folder = os.path.join(folder, 'Templates')
        filePath = os.path.join(folder, 'Control_Shapes.ma')
        nodes = pm.importFile(filePath, returnNewNodes=1)
        ctrShapes = [n for n in nodes if pm.objectType(n) == 'transform']
        ctrShapesParent = pm.group(ctrShapes, p=rigRoot,
                                    name=rigData.CONTROL_TEMPLATE_GROUP)
        ctrShapesParent.v.set(0)
        pm.addAttr(ctrShapesParent, ln='rigRoot', dt='string')
        pm.connectAttr(rigRoot.controlTemplates, ctrShapesParent.rigRoot)
        for ctr in ctrShapes:
            pm.addAttr(ctr, ln='rigRoot', dt='string')
        for ctr in ctrShapes:
            if 'Sphere_Poly' in ctr.shortName():
                attr = '.' + rigData.JOINT_SHAPE_ATTR
                pm.connectAttr(rigRoot + attr, ctr.rigRoot)
                break
        for ctr in ctrShapes:
            if 'Square_Wire' in ctr.shortName():
                attr = '.' + rigData.EMPTY_SHAPE_ATTR
                pm.connectAttr(rigRoot + attr, ctr.rigRoot)
                break















