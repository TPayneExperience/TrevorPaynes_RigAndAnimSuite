
import pymel.core as pm

import Utilities.Logger as log
reload(log)
import Utilities.General_Utilities as genUtil
reload(genUtil)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)
import Data.Rig_Data as rigData
reload(rigData)

class AttachPoint:
    @staticmethod
    def Add(rigRoot, vertex):
        log.funcFileDebug()
        newID = rigRoot.nextAttachPointID.get()
        rigRoot.nextAttachPointID.set(newID + 1)
        parent = pm.listConnections(rigRoot.attachPoints)[0]
        locator = pm.spaceLocator()
        attachPoint = pm.group(locator, n='AttachPoint_%03d' % newID)
        pm.addAttr(attachPoint, ln='ID', at='short', dv=newID)
        pm.parent(attachPoint, parent)
        pm.select([vertex, attachPoint])
        pm.pointOnPolyConstraint()
        return attachPoint

    @staticmethod
    def Remove(attachPoint):
        log.funcFileDebug()
        pm.delete(attachPoint)
    
    
# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
