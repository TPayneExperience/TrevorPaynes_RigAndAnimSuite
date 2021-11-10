

import pymel.core as pm

import Utilities.Logger as log

class AttachPoint:
    @staticmethod
    def AddAtVert(rigRoot, vertex):
        log.funcFileDebug()
        attachPoint = AttachPoint.Add(rigRoot)
        pm.select([vertex, attachPoint])
        pm.pointOnPolyConstraint()
        return attachPoint

    @staticmethod
    def Add(rigRoot):
        log.funcFileDebug()
        newID = rigRoot.nextAttachPointID.get()
        rigRoot.nextAttachPointID.set(newID + 1)
        parent = pm.listConnections(rigRoot.attachPoints)[0]
        locator = pm.spaceLocator()
        attachPoint = pm.group(locator, n='AttachPoint_%03d' % newID)
        pm.addAttr(attachPoint, ln='ID', at='short', dv=newID)
        pm.parent(attachPoint, parent)
        return attachPoint

    @staticmethod
    def Remove(attachPoint):
        log.funcFileDebug()
        pm.delete(attachPoint)
    
    
# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
