
import os

import pymel.core as pm

#=========== ACCESSORS ====================================

def UpdateAnimFolder(rigRoot, currentFilePath):
    folder = rigRoot.animationFolderPath.get()
    if not folder:
        folder = os.path.dirname(currentFilePath)
        folder = os.path.join(folder, 'Animations')
        rigRoot.animationFolderPath.set(folder)
    if not os.path.isdir(folder):
        os.makedirs(folder)

# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
