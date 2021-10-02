
import pymel.core as pm

import Abstracts.Abstract_Initializer as absInit
reload(absInit)

class InitConfig(absInit.Abstract_Initializer):
    @staticmethod
    def Initialize(temp):
        if temp.data['version'] > 100:
            return 
        temp.data['version'] = 110 # Beta

        # New Stuff
        temp.data['paintWeightsUseJointAnim'] = True
        temp.data['paintWeightsMode'] = 1   # Add = 1, replace = 2
        temp.data['paintWeightsAddValue'] = 1.0
        temp.data['paintWeightsAddSoftness'] = 1.0
        temp.data['paintWeightsAddRadius'] = 1.0
        temp.data['paintWeightsReplaceValue'] = 1.0
        temp.data['paintWeightsReplaceSoftness'] = 1.0
        temp.data['paintWeightsReplaceRadius'] = 1.0

        temp.data['quickWeightsLimbMaskRadius'] = 1.0
        temp.data['quickWeightsJointMaskRadius'] = 1.0
        temp.data['quickWeightsLimbMaskMidpoints'] = 4
        temp.data['quickWeightsJointMaskMidpoints'] = 5
        temp.data['quickWeightsDisplayMode'] = 1


        
# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
