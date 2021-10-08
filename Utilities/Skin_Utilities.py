
import pymel.core as pm

import General_Utilities as genUtil
reload(genUtil)

def GetSkeletalLimbOrder(limbs):
    '''Returns Root limb to end children'''
    limbParents = genUtil.GetDefaultLimbHier(limbs)
    orderedLimbs = []
    for i in range(99):
        if not limbParents:
            break
        toAdd = {} # limbID : limb
        for child, parent in limbParents.items():
            if not parent:
                toAdd[child.ID.get()] = child
                del(limbParents[child])
            if parent in orderedLimbs:
                limbParents[child] = None
        idOrder = sorted(list(toAdd.keys()))
        orderedLimbs += [toAdd[ID] for ID in idOrder]
    return orderedLimbs


# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"








