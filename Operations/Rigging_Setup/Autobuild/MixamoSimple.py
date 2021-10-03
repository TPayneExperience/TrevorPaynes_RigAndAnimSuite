
import pymel.core as pm

import Abstracts.Abstract_Autobuild as absBld
reload(absBld)
import Utilities.Logger as log
reload(log)
import Operations.Rigging_Setup.Autobuild.ByNames as autoBld
reload(autoBld)

class MixamoSimple(absBld.Abstract_Autobuild):
    uiName = 'Mixamo | Simple'
    uiOrderIndex = 300
    def Execute(self, rigRoot):
        namespaceToRemove = 'mixamorig:'
        toRename = {
            'Hips':'Pelvis_M_Root',
            'Spine':'Spine_M_Spine1',
            'Spine1':'Spine_M_Spine2',
            'Spine2':'Spine_M_Spine3',

            'Neck':'Neck_M_Neck',
            'Head':'Head_M_Head1',
            'HeadTop_End':'Head_M_Head2',
            'LeftEye':'Eye_L_Eye',
            'RightEye':'Eye_R_Eye',

            # ARMS
            'LeftShoulder':'Clav_L_Clav',
            'LeftArm':'Arm_L_Shoulder',
            'LeftForeArm':'Arm_L_Elbow',
            'LeftHand':'Arm_L_Wrist',

            'RightShoulder':'Clav_R_Clav',
            'RightArm':'Arm_R_Shoulder',
            'RightForeArm':'Arm_R_Elbow',
            'RightHand':'Arm_R_Wrist',

            # LEGS
            'LeftUpLeg':'Leg_L_Hip',
            'LeftLeg':'Leg_L_Knee',
            'LeftFoot':'Leg_L_Ankle',
            'LeftToeBase':'Foot_L_Ball',
            'LeftToe_End':'Foot_L_Toe',

            'RightUpLeg':'Leg_R_Hip',
            'RightLeg':'Leg_R_Knee',
            'RightFoot':'Leg_R_Ankle',
            'RightToeBase':'Foot_R_Ball',
            'RightToe_End':'Foot_R_Toe',

            # LEFT HAND
            'LeftHandThumb1':'Thumb_L_Thumb1',
            'LeftHandThumb2':'Thumb_L_Thumb2',
            'LeftHandThumb3':'Thumb_L_Thumb3',
            'LeftHandThumb4':'Thumb_L_Thumb4',

            'LeftHandIndex1':'Index_L_Index1',
            'LeftHandIndex2':'Index_L_Index2',
            'LeftHandIndex3':'Index_L_Index3',
            'LeftHandIndex4':'Index_L_Index4',

            'LeftHandMiddle1':'Middle_L_Middle1',
            'LeftHandMiddle2':'Middle_L_Middle2',
            'LeftHandMiddle3':'Middle_L_Middle3',
            'LeftHandMiddle4':'Middle_L_Middle4',

            'LeftHandRing1':'Ring_L_Ring1',
            'LeftHandRing2':'Ring_L_Ring2',
            'LeftHandRing3':'Ring_L_Ring3',
            'LeftHandRing4':'Ring_L_Ring4',

            'LeftHandPinky1':'Pinky_L_Pinky1',
            'LeftHandPinky2':'Pinky_L_Pinky2',
            'LeftHandPinky3':'Pinky_L_Pinky3',
            'LeftHandPinky4':'Pinky_L_Pinky4',

            # RIGHT HAND
            'RightHandThumb1':'Thumb_R_Thumb1',
            'RightHandThumb2':'Thumb_R_Thumb2',
            'RightHandThumb3':'Thumb_R_Thumb3',
            'RightHandThumb4':'Thumb_R_Thumb4',

            'RightHandIndex1':'Index_R_Index1',
            'RightHandIndex2':'Index_R_Index2',
            'RightHandIndex3':'Index_R_Index3',
            'RightHandIndex4':'Index_R_Index4',

            'RightHandMiddle1':'Middle_R_Middle1',
            'RightHandMiddle2':'Middle_R_Middle2',
            'RightHandMiddle3':'Middle_R_Middle3',
            'RightHandMiddle4':'Middle_R_Middle4',

            'RightHandRing1':'Ring_R_Ring1',
            'RightHandRing2':'Ring_R_Ring2',
            'RightHandRing3':'Ring_R_Ring3',
            'RightHandRing4':'Ring_R_Ring4',

            'RightHandPinky1':'Pinky_R_Pinky1',
            'RightHandPinky2':'Pinky_R_Pinky2',
            'RightHandPinky3':'Pinky_R_Pinky3',
            'RightHandPinky4':'Pinky_R_Pinky4'
        }

        # Remove namespace
        joints = pm.ls(type='joint')
        for j in joints:
            name = j.shortName()
            if namespaceToRemove in name:
                newName = name.split(namespaceToRemove)[1]
                pm.rename(j, newName)

        # Rename joints
        for k, v in toRename.items():
            if pm.objExists(k):
                pm.rename(k,v)

        inst = autoBld.ByNames()
        return inst.Execute(rigRoot)
