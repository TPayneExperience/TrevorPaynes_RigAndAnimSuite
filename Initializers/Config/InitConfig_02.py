
import pymel.core as pm

import Abstracts.Abstract_Initializer as absInit
reload(absInit)

class InitConfig(absInit.Abstract_Initializer):
    @staticmethod
    def Initialize(temp):
        if temp.data['version'] > 100:
            return 
        temp.data['version'] = 110

        # New Stuff
        temp.data['paintWeightsUseJointAnim'] = True
        temp.data['paintWeightsRadius'] = 1.0
        temp.data['paintWeightsValue'] = 1.0
        temp.data['paintWeightsSoftness'] = 1.0


        
# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
