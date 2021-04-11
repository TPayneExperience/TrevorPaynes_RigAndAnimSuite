

# ============= ROOT =============
RIG_MODES = (   'Setup Rig',
                'Building Rig', # Incase of build breakage
                'Animate Rig') 

LIMBS_GROUP = 'LIMBS'
JOINTS_GROUP = 'JOINTS'
MESHES_GROUP = 'MESHES'
CONTROL_TEMPLATE_GROUP = 'CONTROL_SHAPE_TEMPLATES'

CONTROLS_LAYER = 'Controls'
MESHES_LAYER = 'Meshes'
JOINTS_LAYER = 'Joints'
JOINT_SHAPE_ATTR = 'JointShape'
EMPTY_SHAPE_ATTR = 'EmptyShape'

# ============= BEHAVIORS =============
CST_TYPES = ('Orient', 'Parent', 'Point',  'Scale')
BHV_TYPES = (   'FK - Chain',           # 0

                'IK - Pole Vector',     # 1
                'Empty - Anim',         # 2
                'Constraint',           # 3
                'Look At',              # 4
                'DEPRICATED: IK - Chain',# 5

                'FK - Branch',          # 6
                'Empty - Rig',          # 7
                'FK - Chain Reversed',  # 8
                'FK - Relative Reversed',# 9
                'FK - Relative',        # 10

                'DEPRICATED - FK - Chain (2 Joints)',# 11
                'DEPRICATED - FK - Reverse Chain (2 Joints)' # 12
                )
                
EMPTY_BHV_INDEXES = (7,)
ONE_JOINT_BHV_INDEXES = (6, 4, 3)
TWO_JOINT_CHAIN_BHV_INDEXES = (0, 8, 6) # (11, 6, 12)
THREE_JOINT_CHAIN_BHV_INDEXES = (0, 8, 6, 10, 9, 1, 3)
TWO_JOINT_BRANCH_BHV_INDEXES = (6, 3)

REVERSE_BHV_INDEXES = (8, 9) # (8, 12, 9)

FK_BRANCH_BHV_INDEXES = (6,)
FK_CHAIN_BHV_INDEXES = (0, 8) # (0, 8, 11, 12)
FK_BHV_INDEXES = (0, 6, 8)
RFK_BHV_INDEXES = (10, 9)
JOINT_CONTROL_INDEXES = (0, 6, 8, 9, 10)

IK_PV_BHV_INDEXES = (1,)
CST_BHV_INDEXES = (3,)
LOOK_AT_BHV_INDEXES = (4,)
LIMB_CONTROL_INDEXES = (1, 4, 7)

ROT_LOCK_OVERRIDE_BHV_INDEXES = (9, 10)
POS_LOCK_OVERRIDE_BHV_INDEXES = (9, 10)

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
                'ThreeJointChain')
# LIMB_TYPES = (  'Empty - Rigging',
        
#                 '1 Joint BRANCH',
#                 '3+ Joint CHAIN', 
#                 '2+ Joint BRANCH',
#                 '2 Joint CHAIN')
LIMB_SIDES = ('M', 'L', 'R', '-')
LIMB_JOINT_NAME_PRESETS = { # lowercase to for keycheck
                'arm' : ['Shoulder', 'Elbow', 'Wrist'],
                'leg' : ['Hip', 'Knee', 'Ankle']}

# ============= JOINTS =============
JOINT_COLORS = ((1, 0, 0), # Red
                (0, 1, 0), # Green
                (0, 0, 1), # Blue
                (1, 1, 0), # Yellow
                (0, 1, 1), # Cyan
                (1, 0, 1), # Magenta
                (1, 0.5, 0), # 
                (0, 1, 0.5), # 
                (0.5, 0, 1),# 
                (0.5, 1, 0), # 
                (0, 0.5, 1), # 
                (1, 0, 0.5)) 
# MIRROR_XFORMS = {   'X': (-1,1,1),
#                     'Y': (1,-1,1),
#                     'Z': (1,1,-1)}

# ============= GROUPS =============
GROUP_TYPES = ( 'Empty', # DO NOT CHANGE ORDER

                'Joint', # FK, CST, IK Chain
                'IKPV',
                'DEPRICATED - FKIKSwitch',
                'LookAt')

# ============= CONTROLS =============
# CONTROL_TEMPLATES = {} # Filled by ctrMng.NewScene()
















