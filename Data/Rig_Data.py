
# ============= ROOT =============

RIG_MODES = (   'Setup Rig',
                'Animate Rig',
                'Template',
                'Baked Animations',
                'Ghost',
                'Misc1',
                'Misc2',
                'Misc3',
                'Misc4')

CONTROL_TEMPLATE_GROUP = 'CONTROL_SHAPE_TEMPLATES'

CONTROL_DISP_LAYER = 'Control_Disp'
MESHES_DISP_LAYER = 'Meshes_Disp'
JOINTS_DISP_LAYER = 'Joint_Disp'

# JOINTS_ANIM_LAYER = 'Joint_Anim'

# ============= BEHAVIORS =============

CST_TYPES = ('Orient', 'Parent', 'Point',  'Scale')
                
AXES_NAMES = ('X', '-X', 'Y', '-Y', 'Z', '-Z')
AXES_XFORMS =   ((0,0,0),
                (0,180,0),
                (0,0,90),
                (0,0,-90),
                (0,-90,0),
                (0,90,0))


# ============= LIMBS =============

LIMB_TYPES = (  'Empty',
        
                'OneJointBranch', 
                'TwoJointBranch',
                'TwoJointChain',
                'ThreeJointChain',

                'Custom1',
                'Custom2',
                'Custom3',
                'Custom4')
LIMB_LOCATIONS = ('Body', 'Face', 'Custom1', 'Custom2')

LIMB_SIDES = ('M', 'L', 'R', '-')

LIMB_JOINT_NAME_PRESETS = { # lowercase to for keycheck
                'arm' : ['Shoulder', 'Elbow', 'Wrist'],
                'leg' : ['Hip', 'Knee', 'Ankle']}

# ============= JOINTS =============

JOINT_ROT_ORDER = ( 'XYZ',
                    'YZX',
                    'ZXY',
                    'XZY',
                    'YXZ',
                    'ZYX')

JOINT_AIM_UP_AXES = (   'X',
                        '-X',
                        'Y',
                        '-Y',
                        'Z',
                        '-Z')

JOINT_AIM_UP_VECTORS = ((1, 0, 0),
                        (-1, 0, 0),
                        (0, 1, 0),
                        (0, -1, 0),
                        (0, 0, 1),
                        (0, 0, -1))


# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"














