
import pymel.core as pm

import Common.Utilities as util
reload(util)
import Data.Rig_Data as rigData
reload(rigData)


class Root_Manager:
    def __init__(self, parent):
        self.parent = parent
        self.logger = parent.logger
        self._roots = {} # {ID : root}

#============= ACCESSORS ============================

    def GetSceneRoots(self):
        return [r for r in pm.ls(tr=1) if r.hasAttr('jointLimbs')]

#============= ADD / REMOVE? ============================

    def AddRoot(self, prefix, nameOrder, showPrefix):
        msg = '\tRootMng > AddRoot'
        msg += '\n\t\tPrefix = ' + prefix
        msg += '\n\t\tNameOrder = ' + str(nameOrder)
        msg += '\n\t\tShowPrefix = ' + str(showPrefix)
        hide = rigData.HIDE_ATTRS
        self.logger.debug(msg)
        rootID = 1
        if self._roots:
            rootID = max(self._roots.keys()) + 1
        root = pm.group(name='temp', em=True)
        pm.addAttr(root, ln='ID', at='long', dv=rootID, h=hide)

        # ROOT CONNECTIONS
        pm.addAttr(root, ln='jointLimbs', dt='string')
        pm.addAttr(root, ln='emptyLimbs', dt='string')
        pm.addAttr(root, ln='meshes', dt='string')

        # IDS
        pm.addAttr(root, ln='nextLimbID', at='short', dv=1)
        pm.addAttr(root, ln='nextJointID', at='short', dv=1)
        pm.addAttr(root, ln='nextGroupID', at='long')
        pm.addAttr(root, ln='nextCtrID', at='long')
        pm.addAttr(root, ln='nextMeshID', at='short', dv=1)

        # NAMING
        pm.addAttr(root, ln='prefixIndex', at='short', dv=nameOrder[0])
        pm.addAttr(root, ln='limbIndex', at='short', dv=nameOrder[1])
        pm.addAttr(root, ln='jointIndex', at='short', dv=nameOrder[2])
        pm.addAttr(root, ln='sideIndex', at='short', dv=nameOrder[3])
        pm.addAttr(root, ln='typeIndex', at='short', dv=nameOrder[4])
        pm.addAttr(root, ln='showPrefix', at='bool', dv=showPrefix)
        pm.addAttr(root, ln='mainTab', at='enum', en='Rig:Skin:Anim')
        pm.addAttr(root, ln='riggingTab', at='enum',
                                    en='Joint:Limbs:Behaviors:Appearance:Test')
        pm.addAttr(root, ln='skinningTab', at='enum', 
                                    en='Mesh:QuickWeights:PaintWeights:Test')
        pm.addAttr(root, ln='prefix', dt='string')
        root.prefix.set(prefix)

        # When Joints/limbs added/removed
        pm.addAttr(root, ln='rebuildSkinInf', at='bool', h=hide)

        # CONTROLS
        names = rigData.CONTROL_TEMPLATES.keys()
        shapes = ':'.join(names)
        pm.addAttr(root, ln='appEmptyCtrShape', at='enum', en=shapes, h=hide)
        pm.addAttr(root, ln='appJointCtrShape', at='enum', en=shapes, h=hide)
        pm.addAttr(root, ln='appIKPVCtrShape', at='enum', en=shapes, h=hide)
        pm.addAttr(root, ln='appLookAtCtrShape', at='enum', en=shapes, h=hide)
        root.appEmptyCtrShape.set(names.index('Square_Wire'))
        root.appJointCtrShape.set(names.index('Sphere_Poly'))
        root.appIKPVCtrShape.set(names.index('Diamond_Wire'))
        root.appLookAtCtrShape.set(names.index('Circle_Wire'))

        self.UpdateRootName(root)
        return root
        
    def RemoveRoot(self, root):
        pass

    def UpdateRootName(self, root):
        root.rename('%s_ROOT' % root.prefix.get())

    def LoadSceneRoot(self):
        '''For when tool opened AFTER scene opened'''
        pass
