

# ============= ROOT =============
RIG_MODES = (   'Setup Rig',
                'Animate Rig')  # Maybe post anim rig later???

LIMBS_GROUP = 'LIMBS'
JOINTS_GROUP = 'JOINTS'
MESHES_GROUP = 'MESHES'
CONTROL_TEMPLATE_GROUP = 'CONTROL_SHAPE_TEMPLATES'

CONTROLS_LAYER = 'Controls'
MESHES_LAYER = 'Meshes'
JOINTS_LAYER = 'Joints'
JOINT_SHAPE_ATTR = 'JointShape'

# ============= BEHAVIORS =============
CST_TYPES = ('Orient', 'Parent', 'Point',  'Scale')
BHV_TYPES = (   'FK - Chain',           # 200

                'IK - Pole Vector',     # 500
                'Empty - Anim',         # 100
                'Constraint',           # 3
                'Look At',              # 800
                'DEPRICATED: IK - Chain',# 5

                'FK - Branch',          # 400
                'Empty - Rig',          # 7
                'FK - Chain Reversed',  # 300
                'FK - Relative Reversed',# 700
                'FK - Relative',        # 600

                'DEPRICATED - FK - Chain (2 Joints)',# 11
                'DEPRICATED - FK - Reverse Chain (2 Joints)' # 12
                )
                
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
                'Custom0',
                'Custom1',
                'Custom2',
                'Custom3',
                'Custom4',
                'Custom5')
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
# GROUP_TYPES = ( 'Empty', # DO NOT CHANGE ORDER

#                 'Joint', # FK, CST, IK Chain
#                 'IKPV',
#                 'DEPRICATED - FKIKSwitch',
#                 'LookAt')

# ============= CONTROLS =============
# CONTROL_TEMPLATES = {} # Filled by ctrMng.NewScene()
















