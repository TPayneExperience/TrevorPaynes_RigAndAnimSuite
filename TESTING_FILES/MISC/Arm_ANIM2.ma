//Maya ASCII 2019 scene
//Name: Arm_ANIM2.ma
//Last modified: Sun, Sep 26, 2021 03:47:52 PM
//Codeset: 1252
requires maya "2019";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201812112215-434d8d9c04";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19043)\n";
createNode transform -s -n "persp";
	rename -uid "0EE14B7F-45F5-1A23-8660-4FA2D0CCE408";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 117.68724551859991 196.28098756218202 72.525537010505488 ;
	setAttr ".r" -type "double3" -34.538352729606572 25.400000000001867 -1.7604508019287977e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "E77BA93B-47C6-9477-E3E8-4A89AC42A323";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 146.90356417171796;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 86.415593355894089 3.5180826187133789 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "08AD2DE7-47DE-579C-1560-A0B6941F96AE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "061E24BE-4D26-5AB9-8F53-FBBF06602737";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "D5AFFB35-490D-1E19-87C2-F2AE7448FBD0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.6015089742108835 143.47390810266958 1011.5835127526052 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "511AD2BE-44E4-846F-3859-13B5D58367DD";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1010.2406420403249;
	setAttr ".ow" 94.093802318934877;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -41.783416748046875 146.02909851074219 1.3428707122802734 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "2360A85C-4F20-8E28-AD73-0FB7D5D61EE6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "C6D913B4-4842-5E64-D81B-B0A739DB5834";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "TEMP_RigRoot";
	rename -uid "C1631ED3-497E-E9D4-A57B-9291CC07EB35";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -dv 1 -at "long";
	addAttr -ci true -sn "rigMode" -ln "rigMode" -min 0 -max 8 -en "Setup Rig:Animate Rig:Template:Baked Animations:Ghost:Misc1:Misc2:Misc3:Misc4" 
		-at "enum";
	addAttr -ci true -sn "isBuilt" -ln "isBuilt" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "rigRootIndex" -ln "rigRootIndex" -at "short";
	addAttr -ci true -sn "limbIndex" -ln "limbIndex" -dv 1 -at "short";
	addAttr -ci true -sn "jointIndex" -ln "jointIndex" -dv 2 -at "short";
	addAttr -ci true -sn "sideIndex" -ln "sideIndex" -dv 3 -at "short";
	addAttr -ci true -sn "typeIndex" -ln "typeIndex" -dv 4 -at "short";
	addAttr -ci true -sn "showRootName" -ln "showRootName" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "category" -ln "category" -dt "string";
	addAttr -ci true -sn "operation" -ln "operation" -dt "string";
	addAttr -ci true -sn "limbs" -ln "limbs" -dt "string";
	addAttr -ci true -sn "meshes" -ln "meshes" -dt "string";
	addAttr -ci true -sn "presets" -ln "presets" -dt "string";
	addAttr -ci true -sn "controlMtrL" -ln "controlMtrL" -dt "string";
	addAttr -ci true -sn "controlMtrM" -ln "controlMtrM" -dt "string";
	addAttr -ci true -sn "controlMtrR" -ln "controlMtrR" -dt "string";
	addAttr -ci true -sn "nextLimbID" -ln "nextLimbID" -dv 1 -at "short";
	addAttr -ci true -sn "nextPresetID" -ln "nextPresetID" -dv 1 -at "short";
	addAttr -ci true -sn "nextJointID" -ln "nextJointID" -dv 1 -at "short";
	addAttr -ci true -sn "nextMeshID" -ln "nextMeshID" -dv 1 -at "short";
	addAttr -ci true -sn "rebuildSkinInf" -ln "rebuildSkinInf" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hasAnimJoints" -ln "hasAnimJoints" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "posesFolderPath" -ln "posesFolderPath" -dt "string";
	addAttr -ci true -sn "animationFolderPath" -ln "animationFolderPath" -dt "string";
	addAttr -ci true -sn "jointsParentGroup" -ln "jointsParentGroup" -dt "string";
	addAttr -ci true -sn "limbsParentGroup" -ln "limbsParentGroup" -dt "string";
	addAttr -ci true -sn "meshesParentGroup" -ln "meshesParentGroup" -dt "string";
	addAttr -ci true -sn "bakedDataGroup" -ln "bakedDataGroup" -dt "string";
	addAttr -ci true -sn "controlTemplates" -ln "controlTemplates" -dt "string";
	addAttr -ci true -sn "paintWeightsUseAnimJoints" -ln "paintWeightsUseAnimJoints" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "nextAttachPointID" -ln "nextAttachPointID" -dv 1 -at "short";
	addAttr -ci true -sn "nextGhostID" -ln "nextGhostID" -dv 1 -at "short";
	addAttr -ci true -sn "attachPoints" -ln "attachPoints" -dt "string";
	addAttr -ci true -sn "ghosts" -ln "ghosts" -dt "string";
	addAttr -ci true -sn "IKSShape" -ln "IKSShape" -dt "string";
	addAttr -ci true -sn "JointShape" -ln "JointShape" -dt "string";
	addAttr -ci true -sn "IKPVShape" -ln "IKPVShape" -dt "string";
	addAttr -ci true -sn "LookAtShape" -ln "LookAtShape" -dt "string";
	addAttr -ci true -sn "FKRShape" -ln "FKRShape" -dt "string";
	addAttr -ci true -sn "FKShape" -ln "FKShape" -dt "string";
	addAttr -ci true -sn "EmptyShape" -ln "EmptyShape" -dt "string";
	setAttr ".pfrsVersion" 110;
	setAttr ".rigMode" 1;
	setAttr ".isBuilt" yes;
	setAttr ".pfrsName" -type "string" "TEMP";
	setAttr ".category" -type "string" "Animation";
	setAttr ".operation" -type "string" "Ghosts";
	setAttr ".nextLimbID" 10;
	setAttr ".nextJointID" 28;
	setAttr ".nextMeshID" 2;
	setAttr ".posesFolderPath" -type "string" "D:/Assets/Programming/Python/Maya/PayneFreeRigSuite/TESTING_FILES/MISC\\Poses";
	setAttr ".nextGhostID" 4;
createNode transform -n "JOINTS" -p "TEMP_RigRoot";
	rename -uid "4BDD3BC9-4D70-B195-511C-28BE3394B640";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode joint -n "Clav_Clav01_M_JNT" -p "JOINTS";
	rename -uid "A91B2BFD-4F64-E4A3-7525-0E83FA230712";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "startPos" -ln "startPos" -at "double3" -nc 3;
	addAttr -ci true -sn "startPosX" -ln "startPosX" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosY" -ln "startPosY" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosZ" -ln "startPosZ" -at "double" -p "startPos";
	addAttr -ci true -sn "startRot" -ln "startRot" -at "double3" -nc 3;
	addAttr -ci true -sn "startRotX" -ln "startRotX" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotY" -ln "startRotY" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotZ" -ln "startRotZ" -at "double" -p "startRot";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.5230406399187046 137.52213631501641 -2.0461767078897952 1;
	setAttr ".radi" 0.75649287571448476;
	setAttr ".ID" 15;
	setAttr ".pfrsName" -type "string" "Clav01";
	setAttr ".startPos" -type "double3" 5.5230406399187046 137.52213631501641 -2.0461767078897952 ;
createNode joint -n "Arm_Shoulder_M_JNT" -p "Clav_Clav01_M_JNT";
	rename -uid "A46355F7-42E9-A6F0-EEF2-1483DC19DE98";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "startPos" -ln "startPos" -at "double3" -nc 3;
	addAttr -ci true -sn "startPosX" -ln "startPosX" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosY" -ln "startPosY" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosZ" -ln "startPosZ" -at "double" -p "startPos";
	addAttr -ci true -sn "startRot" -ln "startRot" -at "double3" -nc 3;
	addAttr -ci true -sn "startRotX" -ln "startRotX" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotY" -ln "startRotY" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotZ" -ln "startRotZ" -at "double" -p "startRot";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 1.9049107295000689 7.2023594007588187e-06 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".bps" -type "matrix" 0.99944737059356725 1.2563541723897304e-07 -0.033240839543983491 0
		 -1.2570488545520684e-07 0.99999999999999212 0 0 0.033240839543983228 4.1785359273113547e-09 0.99944737059357514 0
		 14.231353332970404 137.52213631501644 -2.0461767078897957 1;
	setAttr ".radi" 1.6370063315610384;
	setAttr ".ID" 12;
	setAttr ".pfrsName" -type "string" "Shoulder";
	setAttr ".startPos" -type "double3" 8.708312693051699 2.8421709430404007e-14 -4.4408920985006262e-16 ;
createNode joint -n "BicepTwist_BicepTwist_M_JNT" -p "Arm_Shoulder_M_JNT";
	rename -uid "A48C8897-40C1-0640-36E2-D0BC9D6181E1";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "startPos" -ln "startPos" -at "double3" -nc 3;
	addAttr -ci true -sn "startPosX" -ln "startPosX" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosY" -ln "startPosY" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosZ" -ln "startPosZ" -at "double" -p "startPos";
	addAttr -ci true -sn "startRot" -ln "startRot" -at "double3" -nc 3;
	addAttr -ci true -sn "startRotX" -ln "startRotX" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotY" -ln "startRotY" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotZ" -ln "startRotZ" -at "double" -p "startRot";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -7.2144311188858164e-06 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".bps" -type "matrix" 0.99944737059357525 -2.8015944392257688e-10 -0.033240839543983228 0
		 1.4110657728684987e-10 1 -4.1855394806042821e-09 0 0.033240839543983228 4.1785359273113547e-09 0.99944737059357514 0
		 26.498739039134001 137.52213920538497 -2.4541803826011908 1;
	setAttr ".radi" 1.6210280660764069;
	setAttr ".ID" 1;
	setAttr ".pfrsName" -type "string" "BicepTwist";
	setAttr ".startPos" -type "double3" 12.274168772767116 1.3482982141919863e-06 -7.0644878835679492e-14 ;
createNode parentConstraint -n "BicepTwist_BicepTwist_M_JNT_parentConstraint1" -p
		 "BicepTwist_BicepTwist_M_JNT";
	rename -uid "DAE7D28A-4AF1-AC42-8B31-75B9123112F2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "BicepTwist_Joint_M_CTR0W0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-15 -1.1368683772161603e-13 
		1.1102230246251565e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -1.6051953727495712e-08 ;
	setAttr ".lr" -type "double3" 0 0 1.6051953727497234e-08 ;
	setAttr ".rst" -type "double3" 12.274168772767114 1.348298155789962e-06 -6.9499961341534799e-14 ;
	setAttr ".rsrr" -type "double3" 0 0 1.6051953727497238e-08 ;
	setAttr -k on ".w0";
createNode joint -n "Arm_Elbow_M_JNT" -p "Arm_Shoulder_M_JNT";
	rename -uid "CE322B72-4CD8-5258-02AE-7097C1D370FD";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "startPos" -ln "startPos" -at "double3" -nc 3;
	addAttr -ci true -sn "startPosX" -ln "startPosX" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosY" -ln "startPosY" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosZ" -ln "startPosZ" -at "double" -p "startPos";
	addAttr -ci true -sn "startRot" -ln "startRot" -at "double3" -nc 3;
	addAttr -ci true -sn "startRotX" -ln "startRotX" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotY" -ln "startRotY" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotZ" -ln "startRotZ" -at "double" -p "startRot";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.399499896478911e-07 -3.835784996017515 -7.2144311188858122e-06 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".bps" -type "matrix" 0.99943220491867046 5.8884919856118658e-23 0.033693734898416622 0
		 1.4110657728679693e-10 1 -4.1855394806042804e-09 0 -0.033693734898416622 4.1879173594820062e-09 0.99943220491867046 0
		 40.164882454039571 137.52213920238498 -2.7101931665166976 1;
	setAttr ".radi" 1.6210280660764069;
	setAttr ".ID" 13;
	setAttr ".pfrsName" -type "string" "Elbow";
	setAttr ".startPos" -type "double3" 25.941269954820434 -3.7260276957316732e-07 0.19840277671717454 ;
createNode joint -n "ForearmTwist_ForearmTwist1_M_JNT" -p "Arm_Elbow_M_JNT";
	rename -uid "8630DD5E-49D8-6A76-8232-A69FFA70A114";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "startPos" -ln "startPos" -at "double3" -nc 3;
	addAttr -ci true -sn "startPosX" -ln "startPosX" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosY" -ln "startPosY" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosZ" -ln "startPosZ" -at "double" -p "startPos";
	addAttr -ci true -sn "startRot" -ln "startRot" -at "double3" -nc 3;
	addAttr -ci true -sn "startRotX" -ln "startRotX" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotY" -ln "startRotY" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotZ" -ln "startRotZ" -at "double" -p "startRot";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 7.9513867036587919e-16 0 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".bps" -type "matrix" 0.99943220491867046 5.8884919856118658e-23 0.033693734898416622 0
		 1.4110657728679693e-10 1 -4.1855394806042804e-09 0 -0.033693734898416622 4.1879173594820062e-09 0.99943220491867046 0
		 48.860235176068628 137.52213920238498 -2.4170478105612001 1;
	setAttr ".ID" 2;
	setAttr ".pfrsName" -type "string" "ForearmTwist1";
	setAttr ".startPos" -type "double3" 8.700292705433327 0 -8.8817841970012523e-16 ;
createNode parentConstraint -n "ForearmTwist_ForearmTwist1_M_JNT_parentConstraint1" 
		-p "ForearmTwist_ForearmTwist1_M_JNT";
	rename -uid "7C55B0DE-402B-33DE-A154-1B90F5018592";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ForearmTwist1_Joint_M_CTR0W0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 -1.4210854715202004e-13 
		4.4408920985006262e-15 ;
	setAttr ".rst" -type "double3" 8.700292705433327 0 0 ;
	setAttr -k on ".w0";
createNode joint -n "ForearmTwist_ForearmTwist2_M_JNT" -p "Arm_Elbow_M_JNT";
	rename -uid "2355D6CC-4CBF-1A37-886B-4D9E6897EAF2";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "startPos" -ln "startPos" -at "double3" -nc 3;
	addAttr -ci true -sn "startPosX" -ln "startPosX" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosY" -ln "startPosY" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosZ" -ln "startPosZ" -at "double" -p "startPos";
	addAttr -ci true -sn "startRot" -ln "startRot" -at "double3" -nc 3;
	addAttr -ci true -sn "startRotX" -ln "startRotX" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotY" -ln "startRotY" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotZ" -ln "startRotZ" -at "double" -p "startRot";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 7.9513867036587919e-16 0 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".bps" -type "matrix" 0.99943220491867046 5.8884919856118658e-23 0.033693734898416622 0
		 1.4110657728679693e-10 1 -4.1855394806042804e-09 0 -0.033693734898416622 4.1879173594820062e-09 0.99943220491867046 0
		 56.436786789718283 137.52213920238498 -2.1616204586526671 1;
	setAttr ".ID" 3;
	setAttr ".pfrsName" -type "string" "ForearmTwist2";
	setAttr ".startPos" -type "double3" 16.28114869182432 0 -8.8817841970012523e-16 ;
createNode parentConstraint -n "ForearmTwist_ForearmTwist2_M_JNT_parentConstraint1" 
		-p "ForearmTwist_ForearmTwist2_M_JNT";
	rename -uid "05D071D9-4DE7-1B90-E50C-B1BFD57228FF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ForearmTwist2_Joint_M_CTR1W0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-15 -5.6843418860808015e-14 
		5.3290705182007514e-15 ;
	setAttr ".rst" -type "double3" 16.281148691824328 -2.8421709430404007e-14 -1.7763568394002505e-15 ;
	setAttr -k on ".w0";
createNode joint -n "Arm_Wrist_M_JNT" -p "Arm_Elbow_M_JNT";
	rename -uid "73BE0E1F-4F7B-0789-DA0F-80BE71EDBE6E";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "startPos" -ln "startPos" -at "double3" -nc 3;
	addAttr -ci true -sn "startPosX" -ln "startPosX" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosY" -ln "startPosY" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosZ" -ln "startPosZ" -at "double" -p "startPos";
	addAttr -ci true -sn "startRot" -ln "startRot" -at "double3" -nc 3;
	addAttr -ci true -sn "startRotX" -ln "startRotX" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotY" -ln "startRotY" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotZ" -ln "startRotZ" -at "double" -p "startRot";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.655073889869503e-05 0 -4.5392502907583519e-05 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".bps" -type "matrix" 0.99943220491835671 -7.9224863145834893e-07 0.033693734898409364 0
		 7.82206966221276e-07 0.99999999999964562 3.1120914723926565e-07 0 -0.033693734898643975 -2.8467697006055206e-07 0.99943220491862217 0
		 66.4099115145128 137.52213636080296 -1.825397732456405 1;
	setAttr ".ID" 14;
	setAttr ".pfrsName" -type "string" "Wrist";
	setAttr ".startPos" -type "double3" 26.259939324857896 -2.841582016799295e-06 1.333654098313944e-14 ;
createNode joint -n "Middle_Middle1_M_JNT" -p "Arm_Wrist_M_JNT";
	rename -uid "2C4EE3AB-4FC3-F7AC-7116-AC8ED764DC1B";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "startPos" -ln "startPos" -at "double3" -nc 3;
	addAttr -ci true -sn "startPosX" -ln "startPosX" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosY" -ln "startPosY" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosZ" -ln "startPosZ" -at "double" -p "startPos";
	addAttr -ci true -sn "startRot" -ln "startRot" -at "double3" -nc 3;
	addAttr -ci true -sn "startRotX" -ln "startRotX" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotY" -ln "startRotY" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotZ" -ln "startRotZ" -at "double" -p "startRot";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.62638663371221293 1.8264851864915996 -18.932373081521092 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".bps" -type "matrix" 0.94595846177063003 -0.3242878175395173 4.8572257327350599e-17 0
		 0.32428781753951741 0.94595846177063003 3.4694469519536142e-18 0 -2.7755575615628914e-17 1.1702501320147007e-17 1 0
		 74.353312744333138 138.2246927843311 -1.8546209906164359 1;
	setAttr ".radi" 0.55172413793103448;
	setAttr ".ID" 16;
	setAttr ".pfrsName" -type "string" "Middle1";
	setAttr ".startPos" -type "double3" 7.9379058083578533 0.70256262781710821 -0.29684972057054893 ;
createNode joint -n "Middle_Middle2_M_JNT" -p "Middle_Middle1_M_JNT";
	rename -uid "F32167C4-4A06-B620-9B92-41B804DCAD7D";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "startPos" -ln "startPos" -at "double3" -nc 3;
	addAttr -ci true -sn "startPosX" -ln "startPosX" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosY" -ln "startPosY" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosZ" -ln "startPosZ" -at "double" -p "startPos";
	addAttr -ci true -sn "startRot" -ln "startRot" -at "double3" -nc 3;
	addAttr -ci true -sn "startRotX" -ln "startRotX" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotY" -ln "startRotY" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotZ" -ln "startRotZ" -at "double" -p "startRot";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -6.9455202747752836 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".bps" -type "matrix" 0.89980194890582677 -0.43629858210321476 4.7796269127346506e-17 0
		 0.43629858210321487 0.89980194890582677 9.3176124373708133e-18 0 -2.7755575615628914e-17 1.1702501320147007e-17 1 0
		 77.45373218381981 137.16182555059837 -1.8546209906164355 1;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 17;
	setAttr ".pfrsName" -type "string" "Middle2";
	setAttr ".startPos" -type "double3" 3.2775428993820199 0 2.2204460492503131e-16 ;
createNode joint -n "Middle_Middle3_M_JNT" -p "Middle_Middle2_M_JNT";
	rename -uid "E140FAF4-4EC6-9859-64C9-A99864D2977B";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "startPos" -ln "startPos" -at "double3" -nc 3;
	addAttr -ci true -sn "startPosX" -ln "startPosX" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosY" -ln "startPosY" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosZ" -ln "startPosZ" -at "double" -p "startPos";
	addAttr -ci true -sn "startRot" -ln "startRot" -at "double3" -nc 3;
	addAttr -ci true -sn "startRotX" -ln "startRotX" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotY" -ln "startRotY" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotZ" -ln "startRotZ" -at "double" -p "startRot";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.3017548767980196 -1.4345230174597423 -16.36203736484855 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".bps" -type "matrix" 0.74022082227586206 -0.67189761598750086 0.025034534139047257 0
		 0.67151368146214119 0.7406440397588524 0.022710833953187567 0 -0.033801033688459561 2.2078557348845616e-15 0.99942858180141703 0
		 80.473746042378849 135.6974724604282 -1.8546209906164364 1;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 18;
	setAttr ".pfrsName" -type "string" "Middle3";
	setAttr ".startPos" -type "double3" 3.356309532593734 -2.8421709430404007e-14 -1.1102230246251565e-15 ;
createNode joint -n "Middle_Middle4_M_JNT" -p "Middle_Middle3_M_JNT";
	rename -uid "C3906547-41EF-A867-F4AE-DD85060B2EBA";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "startPos" -ln "startPos" -at "double3" -nc 3;
	addAttr -ci true -sn "startPosX" -ln "startPosX" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosY" -ln "startPosY" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosZ" -ln "startPosZ" -at "double" -p "startPos";
	addAttr -ci true -sn "startRot" -ln "startRot" -at "double3" -nc 3;
	addAttr -ci true -sn "startRotX" -ln "startRotX" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotY" -ln "startRotY" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotZ" -ln "startRotZ" -at "double" -p "startRot";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".bps" -type "matrix" 0.74022082227586206 -0.67189761598750086 0.025034534139047257 0
		 0.67151368146214119 0.7406440397588524 0.022710833953187567 0 -0.033801033688459561 2.2078557348845616e-15 0.99942858180141703 0
		 83.028251728924701 133.37875049373235 -1.7682266905728337 1;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 19;
	setAttr ".pfrsName" -type "string" "Middle4";
	setAttr ".startPos" -type "double3" 3.451004902417985 -2.8421709430404007e-14 8.8817841970012523e-16 ;
createNode parentConstraint -n "Middle_Middle4_M_JNT_parentConstraint1" -p "Middle_Middle4_M_JNT";
	rename -uid "354AA9DA-45FE-815C-9BC5-8C83BCD12D2B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Middle4_Joint_M_CTR3W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.1712414612411521e-14 1.1368683772161603e-13 
		-5.3290705182007514e-15 ;
	setAttr ".rst" -type "double3" 3.4510049024180063 -5.6843418860808015e-14 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Middle_Middle3_M_JNT_parentConstraint1" -p "Middle_Middle3_M_JNT";
	rename -uid "F6243DD2-4D22-2400-A0D8-D2B5E5CD7CBE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Middle3_Joint_M_CTR2W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.9737991503207013e-14 1.4210854715202004e-13 
		-2.6645352591003757e-15 ;
	setAttr ".tg[0].tor" -type "double3" -3.975693351829395e-16 -1.391492673140289e-15 
		-1.2790550955338637e-14 ;
	setAttr ".lr" -type "double3" 2.981770013872047e-16 6.7089825312121054e-16 -9.3180312933501452e-18 ;
	setAttr ".rst" -type "double3" 3.3563095325937251 1.7053025658242404e-13 4.4408920985006262e-16 ;
	setAttr ".rsrr" -type "double3" 3.9756933518293969e-16 9.1937908761054774e-16 6.3486853212025667e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Middle_Middle2_M_JNT_parentConstraint1" -p "Middle_Middle2_M_JNT";
	rename -uid "CF36966A-4F55-417B-292E-33A0EB64AD2A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Middle2_Joint_M_CTR1W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.3500311979441904e-13 -3.1263880373444408e-13 
		-6.6613381477509392e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -8.7465253740246703e-15 ;
	setAttr ".lr" -type "double3" 0 0 8.7465253740246703e-15 ;
	setAttr ".rst" -type "double3" 3.277542899382027 0 -8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" 0 0 8.7465253740246703e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Middle_Middle1_M_JNT_parentConstraint1" -p "Middle_Middle1_M_JNT";
	rename -uid "3D7EB070-41C1-8D6C-4D5F-C687B6DAABBF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Middle1_Joint_M_CTR0W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-14 -3.4106051316484809e-13 
		1.1102230246251565e-15 ;
	setAttr ".tg[0].tor" -type "double3" -9.9392333795734899e-17 -1.5902773407317584e-15 
		1.015665410975166e-15 ;
	setAttr ".lr" -type "double3" 1.4908850069360245e-16 1.6648215910785596e-15 6.3743099072592795e-15 ;
	setAttr ".rst" -type "double3" 7.9379058083578542 0.70256262781711598 -0.29684972057054893 ;
	setAttr ".rsrr" -type "double3" 1.4908850069360245e-16 1.6648215910785596e-15 6.3743099072592795e-15 ;
	setAttr -k on ".w0";
createNode joint -n "Ring_Ring1_M_JNT" -p "Arm_Wrist_M_JNT";
	rename -uid "B08FB2B2-412A-9450-68E6-1791ACC01992";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "startPos" -ln "startPos" -at "double3" -nc 3;
	addAttr -ci true -sn "startPosX" -ln "startPosX" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosY" -ln "startPosY" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosZ" -ln "startPosZ" -at "double" -p "startPos";
	addAttr -ci true -sn "startRot" -ln "startRot" -at "double3" -nc 3;
	addAttr -ci true -sn "startRotX" -ln "startRotX" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotY" -ln "startRotY" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotZ" -ln "startRotZ" -at "double" -p "startRot";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.50158749274989123 1.8763645280600167 -14.968689057118798 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".bps" -type "matrix" 0.96610391787923533 -0.25815341023772648 -0.00019141845197923057 0
		 0.2581534051705297 0.96610393684252838 -5.1149078553270125e-05 0 0.00019813442910047996 -4.6846774451432744e-15 0.99999998037137372 0
		 74.315879989305415 138.05129791066531 -4.2722181059799365 1;
	setAttr ".radi" 0.55172413793103448;
	setAttr ".ID" 4;
	setAttr ".pfrsName" -type "string" "Ring1";
	setAttr ".startPos" -type "double3" 7.8190365685399517 0.52916697249288736 -2.7118128374972352 ;
createNode joint -n "Ring_Ring2_M_JNT" -p "Ring_Ring1_M_JNT";
	rename -uid "E30BB0AE-4BA7-53DD-31D2-02B10F4784EA";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "startPos" -ln "startPos" -at "double3" -nc 3;
	addAttr -ci true -sn "startPosX" -ln "startPosX" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosY" -ln "startPosY" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosZ" -ln "startPosZ" -at "double" -p "startPos";
	addAttr -ci true -sn "startRot" -ln "startRot" -at "double3" -nc 3;
	addAttr -ci true -sn "startRotX" -ln "startRotX" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotY" -ln "startRotY" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotZ" -ln "startRotZ" -at "double" -p "startRot";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.3218429025650158 -0.82840012879269176 -6.2720734730228003 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".bps" -type "matrix" 0.9320233558294807 -0.3621170275632854 0.014273140407217123 0
		 0.36207457264051496 0.93213263989023099 0.0055448623479467819 0 -0.015312349118989294 3.5309935834059848e-14 0.99988275910951585 0
		 76.873206452648205 137.36795263549831 -4.2727248004087235 1;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 5;
	setAttr ".pfrsName" -type "string" "Ring2";
	setAttr ".startPos" -type "double3" 2.6470511256765832 2.8421709430404007e-14 0 ;
createNode joint -n "Ring_Ring3_M_JNT" -p "Ring_Ring2_M_JNT";
	rename -uid "5F66B9A0-407D-B636-8549-56A650227B1D";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "startPos" -ln "startPos" -at "double3" -nc 3;
	addAttr -ci true -sn "startPosX" -ln "startPosX" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosY" -ln "startPosY" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosZ" -ln "startPosZ" -at "double" -p "startPos";
	addAttr -ci true -sn "startRot" -ln "startRot" -at "double3" -nc 3;
	addAttr -ci true -sn "startRotX" -ln "startRotX" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotY" -ln "startRotY" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotZ" -ln "startRotZ" -at "double" -p "startRot";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.4134745652276197 -1.51082913085598 -21.872085043039409 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".bps" -type "matrix" 0.72939110755168923 -0.68306620268212126 0.037538979447335023 0
		 0.68216335376224679 0.73035646279979438 0.035108347019142332 0 -0.051398161527081508 4.8321148253246323e-15 0.99867824097235447 0
		 79.589806709353198 136.31247778727396 -4.2311223913578004 1;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 6;
	setAttr ".pfrsName" -type "string" "Ring3";
	setAttr ".startPos" -type "double3" 2.9147340994338968 0 -8.8817841970012523e-16 ;
createNode joint -n "Ring_Ring4_M_JNT" -p "Ring_Ring3_M_JNT";
	rename -uid "D3C1C0B6-40EF-6802-7F04-3AADF5FB30CD";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "startPos" -ln "startPos" -at "double3" -nc 3;
	addAttr -ci true -sn "startPosX" -ln "startPosX" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosY" -ln "startPosY" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosZ" -ln "startPosZ" -at "double" -p "startPos";
	addAttr -ci true -sn "startRot" -ln "startRot" -at "double3" -nc 3;
	addAttr -ci true -sn "startRotX" -ln "startRotX" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotY" -ln "startRotY" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotZ" -ln "startRotZ" -at "double" -p "startRot";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".bps" -type "matrix" 0.72939110755168923 -0.68306620268212126 0.037538979447335023 0
		 0.68216335376224679 0.73035646279979438 0.035108347019142332 0 -0.051398161527081508 4.8321148253246323e-15 0.99867824097235447 0
		 82.319322711624054 133.75631811994609 -4.0906446092055759 1;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 7;
	setAttr ".pfrsName" -type "string" "Ring4";
	setAttr ".startPos" -type "double3" 3.7421843699642601 0 -1.7763568394002505e-15 ;
createNode parentConstraint -n "Ring_Ring4_M_JNT_parentConstraint1" -p "Ring_Ring4_M_JNT";
	rename -uid "CBE7D0CC-4698-C5B1-0C0A-A1A819ED970A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Ring4_Joint_M_CTR3W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.9895196601282805e-13 -1.9895196601282805e-13 
		1.4210854715202004e-14 ;
	setAttr ".rst" -type "double3" 3.7421843699642956 -2.8421709430404007e-14 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ring_Ring3_M_JNT_parentConstraint1" -p "Ring_Ring3_M_JNT";
	rename -uid "C569BFD7-4194-8081-B413-5BA70597D292";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Ring3_Joint_M_CTR2W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.6342482922482304e-13 -1.7053025658242404e-13 
		3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" 5.9635400277440959e-16 1.7890620083232284e-15 
		2.0313308219503319e-14 ;
	setAttr ".lr" -type "double3" -1.5902773407317578e-15 -2.1120870931593671e-15 -3.1771380699892886e-14 ;
	setAttr ".rst" -type "double3" 2.914734099433872 2.8421709430404007e-14 8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" -7.454425034680114e-16 -1.5157330903849573e-15 -2.5425801389121438e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ring_Ring2_M_JNT_parentConstraint1" -p "Ring_Ring2_M_JNT";
	rename -uid "C17D3E95-4545-200F-B088-EDAFDF945492";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Ring2_Joint_M_CTR1W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.460698725481052e-14 -1.9895196601282805e-13 
		3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" 1.4908850069360235e-16 -9.9392333795734899e-17 
		4.1177933290529855e-15 ;
	setAttr ".lr" -type "double3" -1.3045243810690206e-16 1.8636062586700292e-16 -3.1801664301596272e-15 ;
	setAttr ".rst" -type "double3" 2.6470511256765832 1.1368683772161603e-13 0 ;
	setAttr ".rsrr" -type "double3" -1.3045243810690206e-16 1.8636062586700292e-16 -3.1801664301596272e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ring_Ring1_M_JNT_parentConstraint1" -p "Ring_Ring1_M_JNT";
	rename -uid "BF0317C4-49D8-7434-38B8-BD95DCA60879";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Ring1_Joint_M_CTR0W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.1316282072803006e-14 -3.4106051316484809e-13 
		-1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" 9.9392333795734924e-17 -3.975693351829396e-16 
		-2.0375428428125655e-15 ;
	setAttr ".lr" -type "double3" -9.9392333795734887e-17 3.9135731432070616e-16 3.1813311840712959e-15 ;
	setAttr ".rst" -type "double3" 7.8190365685399428 0.52916697249290223 -2.7118128374972361 ;
	setAttr ".rsrr" -type "double3" -9.9392333795734887e-17 3.9135731432070616e-16 3.1813311840712959e-15 ;
	setAttr -k on ".w0";
createNode joint -n "Index_Index1_M_JNT" -p "Arm_Wrist_M_JNT";
	rename -uid "5697175C-4089-E711-9530-DA86F9D74596";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "startPos" -ln "startPos" -at "double3" -nc 3;
	addAttr -ci true -sn "startPosX" -ln "startPosX" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosY" -ln "startPosY" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosZ" -ln "startPosZ" -at "double" -p "startPos";
	addAttr -ci true -sn "startRot" -ln "startRot" -at "double3" -nc 3;
	addAttr -ci true -sn "startRotX" -ln "startRotX" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotY" -ln "startRotY" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotZ" -ln "startRotZ" -at "double" -p "startRot";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.0092244041090619 3.0999822843514715 -18.042724137798125 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".bps" -type "matrix" 0.95071724998249163 -0.30927359984285019 -0.022057901667498762 0
		 0.30919039220257405 0.95097310184896633 -0.0071736273511990023 0 0.023195084723857236 -8.6506901038259929e-15 0.99973095783048194 0
		 74.171558231923555 138.46486980863367 0.30087549076043141 1;
	setAttr ".radi" 0.55172413793103448;
	setAttr ".ID" 20;
	setAttr ".pfrsName" -type "string" "Index1";
	setAttr ".startPos" -type "double3" 7.8288810320045279 0.94274018076017285 1.8635468004911591 ;
createNode joint -n "Index_Index2_M_JNT" -p "Index_Index1_M_JNT";
	rename -uid "6098015F-4481-A37A-1B96-AFAA4DA14C62";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "startPos" -ln "startPos" -at "double3" -nc 3;
	addAttr -ci true -sn "startPosX" -ln "startPosX" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosY" -ln "startPosY" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosZ" -ln "startPosZ" -at "double" -p "startPos";
	addAttr -ci true -sn "startRot" -ln "startRot" -at "double3" -nc 3;
	addAttr -ci true -sn "startRotX" -ln "startRotX" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotY" -ln "startRotY" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotZ" -ln "startRotZ" -at "double" -p "startRot";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.02217744893903514 0.048835656771432367 -6.4084878791712825 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".bps" -type "matrix" 0.91024585174523831 -0.41348487672457407 -0.021971483806277187 0
		 0.41336447262783965 0.91051098660041641 -0.0099777777608161655 0 0.02413093760494479 -1.4079449221438062e-14 0.99970880652833405 0
		 77.645456755921487 137.33479133154134 0.22027643562955079 1;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 21;
	setAttr ".pfrsName" -type "string" "Index2";
	setAttr ".startPos" -type "double3" 3.6539765362013874 0 -2.6645352591003757e-15 ;
createNode joint -n "Index_Index3_M_JNT" -p "Index_Index2_M_JNT";
	rename -uid "847C85D3-466D-1DC2-9474-8A95ADB10CF6";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "startPos" -ln "startPos" -at "double3" -nc 3;
	addAttr -ci true -sn "startPosX" -ln "startPosX" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosY" -ln "startPosY" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosZ" -ln "startPosZ" -at "double" -p "startPos";
	addAttr -ci true -sn "startRot" -ln "startRot" -at "double3" -nc 3;
	addAttr -ci true -sn "startRotX" -ln "startRotX" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotY" -ln "startRotY" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotZ" -ln "startRotZ" -at "double" -p "startRot";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.2562319854935926 1.4296116488609028 -16.890064668956981 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".bps" -type "matrix" 0.75004832649075082 -0.65997975708392764 -0.043060749736435255 0
		 0.65889479802707751 0.75128338211319412 -0.037827567902481471 0 0.057316254773674427 -1.1577151376797485e-14 0.99835607222008671 0
		 80.216755744803919 136.16676266829441 0.15821050697191635 1;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 22;
	setAttr ".pfrsName" -type "string" "Index3";
	setAttr ".startPos" -type "double3" 2.8248401066068034 2.8421709430404007e-14 -4.4408920985006262e-16 ;
createNode joint -n "Index_Index4_M_JNT" -p "Index_Index3_M_JNT";
	rename -uid "2591EE32-4984-E64A-882D-F9B5C142D5D4";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "startPos" -ln "startPos" -at "double3" -nc 3;
	addAttr -ci true -sn "startPosX" -ln "startPosX" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosY" -ln "startPosY" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosZ" -ln "startPosZ" -at "double" -p "startPos";
	addAttr -ci true -sn "startRot" -ln "startRot" -at "double3" -nc 3;
	addAttr -ci true -sn "startRotX" -ln "startRotX" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotY" -ln "startRotY" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotZ" -ln "startRotZ" -at "double" -p "startRot";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".bps" -type "matrix" 0.75004832649075082 -0.65997975708392764 -0.043060749736435255 0
		 0.65889479802707751 0.75128338211319412 -0.037827567902481471 0 0.057316254773674427 -1.1577151376797485e-14 0.99835607222008671 0
		 82.641878998022818 134.03285715977015 0.01898264418145526 1;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 23;
	setAttr ".pfrsName" -type "string" "Index4";
	setAttr ".startPos" -type "double3" 3.2332893329224959 -2.8421709430404007e-14 -8.8817841970012523e-16 ;
createNode parentConstraint -n "Index_Index4_M_JNT_parentConstraint1" -p "Index_Index4_M_JNT";
	rename -uid "F45EFF5B-4088-877D-758A-208DB2D7891C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Index4_Joint_M_CTR3W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.6342482922482304e-13 -2.2737367544323206e-13 
		6.2172489379008766e-15 ;
	setAttr ".rst" -type "double3" 3.2332893329224959 -5.6843418860808015e-14 -1.7763568394002505e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Index_Index3_M_JNT_parentConstraint1" -p "Index_Index3_M_JNT";
	rename -uid "F72505A4-44B9-9B19-E69A-3A9E746767F6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Index3_Joint_M_CTR2W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.5987211554602254e-13 -2.8421709430404007e-13 
		5.3290705182007514e-15 ;
	setAttr ".tg[0].tor" -type "double3" 1.3914926731402888e-15 1.391492673140289e-15 
		-4.6024862568287512e-14 ;
	setAttr ".lr" -type "double3" -8.9453100416161419e-16 -1.9878466759146958e-16 3.4979889475236461e-14 ;
	setAttr ".rst" -type "double3" 2.8248401066067714 5.6843418860808015e-14 2.2204460492503131e-15 ;
	setAttr ".rsrr" -type "double3" -1.3417965062424219e-15 -1.3666445896913544e-15 
		4.7689684159366062e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Index_Index2_M_JNT_parentConstraint1" -p "Index_Index2_M_JNT";
	rename -uid "05D95300-4A1C-05E4-081A-0E96725443DF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Index2_Joint_M_CTR1W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.1723955140041653e-13 -1.7053025658242404e-13 
		3.9968028886505635e-15 ;
	setAttr ".tg[0].tor" -type "double3" 3.2302508483613845e-16 6.2741410708557658e-16 
		-2.0737251344430948e-14 ;
	setAttr ".lr" -type "double3" -2.1392646844316383e-16 -4.1271113603463357e-16 1.4312329239853687e-14 ;
	setAttr ".rst" -type "double3" 3.6539765362013945 8.5265128291212022e-14 -2.2204460492503131e-15 ;
	setAttr ".rsrr" -type "double3" -3.2108382831669072e-16 -6.1926082970389522e-16 
		2.1468492343173874e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Index_Index1_M_JNT_parentConstraint1" -p "Index_Index1_M_JNT";
	rename -uid "C0F4D0DB-48DD-694C-2301-92A686AF3819";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Index1_Joint_M_CTR0W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 5.3290705182007514e-14 -3.979039320256561e-13 
		1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" 3.975693351829396e-16 7.9513867036587919e-16 
		-2.2046462040066448e-14 ;
	setAttr ".lr" -type "double3" -9.9392333795735182e-17 -1.6648215910785596e-15 1.9083328088781101e-14 ;
	setAttr ".rst" -type "double3" 7.8288810320045457 0.94274018076018251 1.8635468004911591 ;
	setAttr ".rsrr" -type "double3" -2.9817700138720499e-16 -1.6896696745274934e-15 
		2.2260776759813501e-14 ;
	setAttr -k on ".w0";
createNode joint -n "Pinkie_Pinkey1_M_JNT" -p "Arm_Wrist_M_JNT";
	rename -uid "5185DD89-43D3-F7D5-D102-E190CD17FB81";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "startPos" -ln "startPos" -at "double3" -nc 3;
	addAttr -ci true -sn "startPosX" -ln "startPosX" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosY" -ln "startPosY" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosZ" -ln "startPosZ" -at "double" -p "startPos";
	addAttr -ci true -sn "startRot" -ln "startRot" -at "double3" -nc 3;
	addAttr -ci true -sn "startRotX" -ln "startRotX" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotY" -ln "startRotY" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotZ" -ln "startRotZ" -at "double" -p "startRot";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.058845619240260112 0.23874909222634907 -13.842182154515401 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".bps" -type "matrix" 0.97053888681805012 -0.23924704985524847 0.02855027687327398 0
		 0.23914360006622687 0.97095872679303941 0.0070348711291898167 0 -0.029404212646233385 -2.7004228581706231e-13 0.99956760265559574 0
		 73.857588681027451 137.93149289048051 -6.1854660106734745 1;
	setAttr ".radi" 0.55172413793103448;
	setAttr ".ID" 8;
	setAttr ".pfrsName" -type "string" "Pinkey1";
	setAttr ".startPos" -type "double3" 7.2965411030324745 0.40936099840923879 -4.6085328294878325 ;
createNode joint -n "Pinkie_Pinkey2_M_JNT" -p "Pinkie_Pinkey1_M_JNT";
	rename -uid "D04A1440-4270-44AF-A511-9AA06C0C17FE";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "startPos" -ln "startPos" -at "double3" -nc 3;
	addAttr -ci true -sn "startPosX" -ln "startPosX" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosY" -ln "startPosY" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosZ" -ln "startPosZ" -at "double" -p "startPos";
	addAttr -ci true -sn "startRot" -ln "startRot" -at "double3" -nc 3;
	addAttr -ci true -sn "startRotX" -ln "startRotX" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotY" -ln "startRotY" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotZ" -ln "startRotZ" -at "double" -p "startRot";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.0809698282630733 2.3895266163728599 -10.507647530284272 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".bps" -type "matrix" 0.91108577308393113 -0.41194710190437506 -0.014909705451214748 0
		 0.41189195211798191 0.91120776183732455 -0.0067405153995613067 0 0.016362575118046247 -1.1500766442805047e-14 0.99986612410637565 0
		 76.076104885044487 137.3846075836926 -6.1202040693614785 1;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 9;
	setAttr ".pfrsName" -type "string" "Pinkey2";
	setAttr ".startPos" -type "double3" 2.2858601897864261 5.6843418860808015e-14 -1.7763568394002505e-15 ;
createNode joint -n "Pinkie_Pinkey3_M_JNT" -p "Pinkie_Pinkey2_M_JNT";
	rename -uid "7B07A1B1-443A-DA69-EB77-E1B124389104";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "startPos" -ln "startPos" -at "double3" -nc 3;
	addAttr -ci true -sn "startPosX" -ln "startPosX" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosY" -ln "startPosY" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosZ" -ln "startPosZ" -at "double" -p "startPos";
	addAttr -ci true -sn "startRot" -ln "startRot" -at "double3" -nc 3;
	addAttr -ci true -sn "startRotX" -ln "startRotX" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotY" -ln "startRotY" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotZ" -ln "startRotZ" -at "double" -p "startRot";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.6614711522053993 1.575508846602528 -22.205625824582064 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".bps" -type "matrix" 0.6871367757586514 -0.72549434303705784 -0.038742865423619093 0
		 0.72434389462558046 0.6882281294899445 -0.040840716171710076 0 0.056293638349735768 4.0775578028976655e-15 0.99841425584841748 0
		 78.332010674889304 136.36460059889444 -6.1571214396529985 1;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 10;
	setAttr ".pfrsName" -type "string" "Pinkey3";
	setAttr ".startPos" -type "double3" 2.4760630189721891 2.8421709430404007e-14 8.8817841970012523e-16 ;
createNode joint -n "Pinkie_Pinkey4_M_JNT" -p "Pinkie_Pinkey3_M_JNT";
	rename -uid "6897D407-4818-FFC8-CD73-01B815475B06";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "startPos" -ln "startPos" -at "double3" -nc 3;
	addAttr -ci true -sn "startPosX" -ln "startPosX" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosY" -ln "startPosY" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosZ" -ln "startPosZ" -at "double" -p "startPos";
	addAttr -ci true -sn "startRot" -ln "startRot" -at "double3" -nc 3;
	addAttr -ci true -sn "startRotX" -ln "startRotX" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotY" -ln "startRotY" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotZ" -ln "startRotZ" -at "double" -p "startRot";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".bps" -type "matrix" 0.6871367757586514 -0.72549434303705784 -0.038742865423619093 0
		 0.72434389462558046 0.6882281294899445 -0.040840716171710076 0 0.056293638349735768 4.0775578028976655e-15 0.99841425584841748 0
		 79.799333465796209 134.81536844924423 -6.2398535701787576 1;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 11;
	setAttr ".pfrsName" -type "string" "Pinkey4";
	setAttr ".startPos" -type "double3" 2.1354158919624879 2.8421709430404007e-14 2.2204460492503131e-15 ;
createNode parentConstraint -n "Pinkie_Pinkey4_M_JNT_parentConstraint1" -p "Pinkie_Pinkey4_M_JNT";
	rename -uid "3E8EA08D-4B79-4C16-DEC7-CC98AA29B70D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Pinkey4_Joint_M_CTR3W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.7000623958883807e-13 -3.694822225952521e-13 
		-3.1086244689504383e-15 ;
	setAttr ".rst" -type "double3" 2.1354158919624666 2.8421709430404007e-14 2.2204460492503131e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Pinkie_Pinkey3_M_JNT_parentConstraint1" -p "Pinkie_Pinkey3_M_JNT";
	rename -uid "C7EEFAE5-423E-B662-6D99-A4AA2DADCC5B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Pinkey3_Joint_M_CTR2W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.4106051316484809e-13 -4.5474735088646412e-13 
		-2.2204460492503131e-15 ;
	setAttr ".tg[0].tor" -type "double3" 1.9878466759146975e-16 1.9878466759146975e-16 
		-2.254963572990735e-15 ;
	setAttr ".lr" -type "double3" 2.981770013872047e-16 -2.981770013872047e-16 -6.3580033524959178e-15 ;
	setAttr ".rst" -type "double3" 2.4760630189721606 -1.1368683772161603e-13 1.7763568394002505e-15 ;
	setAttr ".rsrr" -type "double3" -1.987846675914698e-16 -4.4726550208080709e-16 -3.1060104311167152e-18 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Pinkie_Pinkey2_M_JNT_parentConstraint1" -p "Pinkie_Pinkey2_M_JNT";
	rename -uid "C87FD0AF-4FEB-BF39-F189-DC99D6EFAD36";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Pinkey2_Joint_M_CTR1W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.5809575870662229e-13 -3.979039320256561e-13 
		7.1054273576010019e-15 ;
	setAttr ".tg[0].tor" -type "double3" 3.975693351829396e-16 -2.3854160110976376e-15 
		2.4568542510133225e-14 ;
	setAttr ".lr" -type "double3" -2.9817700138720534e-16 2.919649805249712e-15 -2.5438225430845895e-14 ;
	setAttr ".rst" -type "double3" 2.2858601897864332 5.6843418860808015e-14 0 ;
	setAttr ".rsrr" -type "double3" -2.4848083448933774e-16 2.5096564283423063e-15 -2.2257670749382384e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Pinkie_Pinkey1_M_JNT_parentConstraint1" -p "Pinkie_Pinkey1_M_JNT";
	rename -uid "C4C17FA2-4678-D0C1-23FA-A4AD37BF6E95";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Pinkey1_Joint_M_CTR0W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.8421709430404007e-14 -3.979039320256561e-13 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -7.4544250346801169e-16 7.9513867036587899e-16 
		-2.0609835152848991e-15 ;
	setAttr ".lr" -type "double3" 7.5786654519247847e-16 -4.1232288473074391e-16 1.3588795636135602e-18 ;
	setAttr ".rst" -type "double3" 7.2965411030324816 0.40936099840925522 -4.6085328294878334 ;
	setAttr ".rsrr" -type "double3" 7.3923048260577835e-16 -8.1765724599147535e-16 3.1816951696686923e-15 ;
	setAttr -k on ".w0";
createNode joint -n "Thumb_Thumb1_M_JNT" -p "Arm_Wrist_M_JNT";
	rename -uid "D01F18F6-4EC7-492F-1CC2-9B9DB622EC58";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "startPos" -ln "startPos" -at "double3" -nc 3;
	addAttr -ci true -sn "startPosX" -ln "startPosX" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosY" -ln "startPosY" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosZ" -ln "startPosZ" -at "double" -p "startPos";
	addAttr -ci true -sn "startRot" -ln "startRot" -at "double3" -nc 3;
	addAttr -ci true -sn "startRotX" -ln "startRotX" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotY" -ln "startRotY" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotZ" -ln "startRotZ" -at "double" -p "startRot";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 79.567375970139238 -28.083724241771339 -16.687143393948979 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".bps" -type "matrix" 0.82876419317483008 -0.25333804941708521 0.49896868121037369 0
		 -0.42049807476294365 0.3063957745010002 0.85399238783995624 0 -0.36923066128360854 -0.91757368210159496 0.14740168480241478 0
		 69.017286719265513 135.79083689430797 0.048824948637190779 1;
	setAttr ".radi" 0.55172413793103448;
	setAttr ".ID" 24;
	setAttr ".pfrsName" -type "string" "Thumb1";
	setAttr ".startPos" -type "double3" 2.6690456837124401 -1.731296843712073 1.7853067906047153 ;
createNode joint -n "Thumb_Thumb2_M_JNT" -p "Thumb_Thumb1_M_JNT";
	rename -uid "BEFCCAAC-45C0-8CA4-1C8B-26BC3544D6CB";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "startPos" -ln "startPos" -at "double3" -nc 3;
	addAttr -ci true -sn "startPosX" -ln "startPosX" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosY" -ln "startPosY" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosZ" -ln "startPosZ" -at "double" -p "startPos";
	addAttr -ci true -sn "startRot" -ln "startRot" -at "double3" -nc 3;
	addAttr -ci true -sn "startRotX" -ln "startRotX" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotY" -ln "startRotY" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotZ" -ln "startRotZ" -at "double" -p "startRot";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -5.9606342143343758 5.3378613369064576 -18.60045087380874 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".bps" -type "matrix" 0.94996044897408882 -0.25100964555846389 0.18592822061634959 0
		 -0.10416733690273508 0.3065879564975279 0.94612525114451018 0 -0.2944899171576843 -0.91814921595963062 0.26509942648971541 0
		 71.737015872261168 134.9594654568871 1.686274635647695 1;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 25;
	setAttr ".pfrsName" -type "string" "Thumb2";
	setAttr ".startPos" -type "double3" 3.2816682663097581 -1.0658141036401503e-14 0 ;
createNode joint -n "Thumb_Thumb3_M_JNT" -p "Thumb_Thumb2_M_JNT";
	rename -uid "7786ED2D-4DC5-7E55-BD69-8382BE1C07DF";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "startPos" -ln "startPos" -at "double3" -nc 3;
	addAttr -ci true -sn "startPosX" -ln "startPosX" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosY" -ln "startPosY" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosZ" -ln "startPosZ" -at "double" -p "startPos";
	addAttr -ci true -sn "startRot" -ln "startRot" -at "double3" -nc 3;
	addAttr -ci true -sn "startRotX" -ln "startRotX" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotY" -ln "startRotY" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotZ" -ln "startRotZ" -at "double" -p "startRot";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -8.1010142476112907 7.6655622067223055 -24.468100029625671 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".bps" -type "matrix" 0.93896086296785342 -0.22980269978930823 -0.25601409528424196 0
		 0.31973273843037131 0.30825161897000974 0.89596423777859791 0 -0.12697824140568165 -0.92313144165493199 0.36291165266164638 0
		 75.564626123701231 133.94808956898831 2.4354224175703032 1;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 26;
	setAttr ".pfrsName" -type "string" "Thumb3";
	setAttr ".startPos" -type "double3" 4.0292311701752439 -7.1054273576010019e-15 0 ;
createNode joint -n "Thumb_Thumb4_M_JNT" -p "Thumb_Thumb3_M_JNT";
	rename -uid "765CF63C-4190-A9AE-DCC8-FA83B2B80ECE";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "startPos" -ln "startPos" -at "double3" -nc 3;
	addAttr -ci true -sn "startPosX" -ln "startPosX" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosY" -ln "startPosY" -at "double" -p "startPos";
	addAttr -ci true -sn "startPosZ" -ln "startPosZ" -at "double" -p "startPos";
	addAttr -ci true -sn "startRot" -ln "startRot" -at "double3" -nc 3;
	addAttr -ci true -sn "startRotX" -ln "startRotX" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotY" -ln "startRotY" -at "double" -p "startRot";
	addAttr -ci true -sn "startRotZ" -ln "startRotZ" -at "double" -p "startRot";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".bps" -type "matrix" 0.93896086296785342 -0.22980269978930823 -0.25601409528424196 0
		 0.31973273843037131 0.30825161897000974 0.89596423777859791 0 -0.12697824140568165 -0.92313144165493199 0.36291165266164638 0
		 78.226269999093219 133.2966748268345 1.7097070277152735 1;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 27;
	setAttr ".pfrsName" -type "string" "Thumb4";
	setAttr ".startPos" -type "double3" 2.8346696655482475 0 -2.8421709430404007e-14 ;
createNode parentConstraint -n "Thumb_Thumb4_M_JNT_parentConstraint1" -p "Thumb_Thumb4_M_JNT";
	rename -uid "A9A0A63B-41B2-93D9-1A4F-FB8AD13834DE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Thumb4_Joint_M_CTR3W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.2789769243681803e-13 -5.6843418860808015e-14 
		3.694822225952521e-13 ;
	setAttr ".rst" -type "double3" 2.8346696655482404 -2.8421709430404007e-14 -2.8421709430404007e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Thumb_Thumb3_M_JNT_parentConstraint1" -p "Thumb_Thumb3_M_JNT";
	rename -uid "963A5912-4174-2CA9-603D-8EA2197417AF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Thumb3_Joint_M_CTR2W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.2789769243681803e-13 -2.8421709430404007e-14 
		1.7053025658242404e-13 ;
	setAttr ".tg[0].tor" -type "double3" -1.4312496066585827e-14 -9.5416640443905519e-15 
		-4.1744780194208675e-15 ;
	setAttr ".lr" -type "double3" 1.073437204993937e-14 7.1562480332929135e-15 -2.0872390097104322e-15 ;
	setAttr ".rst" -type "double3" 4.029231170175251 1.4210854715202004e-14 0 ;
	setAttr ".rsrr" -type "double3" 1.232464939067113e-14 9.3428793767990835e-15 1.4908850069360252e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Thumb_Thumb2_M_JNT_parentConstraint1" -p "Thumb_Thumb2_M_JNT";
	rename -uid "FE89E271-4963-CDC6-3843-3BA3F9380C26";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Thumb2_Joint_M_CTR1W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 9.2370555648813024e-14 -4.9737991503207013e-14 
		2.2737367544323206e-13 ;
	setAttr ".tg[0].tor" -type "double3" -3.8961794847928069e-14 -5.5659706925611543e-15 
		6.1623246953355635e-15 ;
	setAttr ".lr" -type "double3" 3.8763010180336605e-14 7.5538173684758551e-15 -1.0585283549245763e-14 ;
	setAttr ".rst" -type "double3" 3.2816682663097616 -1.7763568394002505e-14 0 ;
	setAttr ".rsrr" -type "double3" 3.8763010180336605e-14 7.5538173684758551e-15 -1.0585283549245765e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Thumb_Thumb1_M_JNT_parentConstraint1" -p "Thumb_Thumb1_M_JNT";
	rename -uid "E0F46D1F-422A-8B52-24C8-1A8D1669085A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Thumb1_Joint_M_CTR0W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.460698725481052e-14 -6.3948846218409017e-14 
		3.1263880373444408e-13 ;
	setAttr ".tg[0].tor" -type "double3" -4.7708320221952759e-15 0 1.5902773407317584e-14 ;
	setAttr ".lr" -type "double3" -2.186631343506168e-15 3.5781240166464568e-15 -1.2722218725854067e-14 ;
	setAttr ".rst" -type "double3" 2.6690456837124401 -1.7312968437121015 1.785306790604726 ;
	setAttr ".rsrr" -type "double3" -2.186631343506168e-15 3.5781240166464568e-15 -1.2722218725854067e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Arm_Wrist_M_JNT_parentConstraint1" -p "Arm_Wrist_M_JNT";
	rename -uid "937E4162-400E-0C8B-FF8E-EC8F327C41B6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Wrist_Joint_M_CTR2W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -5.6843418860808015e-14 -2.8421709430404007e-14 
		5.3290705182007514e-15 ;
	setAttr ".tg[0].tor" -type "double3" -3.336534642801159e-20 8.6780928944704544e-27 
		3.6398559739649005e-20 ;
	setAttr ".lr" -type "double3" 3.3365346428016754e-20 -5.7853952629802974e-27 -1.8199279869824156e-20 ;
	setAttr ".rst" -type "double3" 26.259939324857896 -2.8415820452210028e-06 1.3322676295501878e-14 ;
	setAttr ".rsrr" -type "double3" 3.0332133116378647e-20 -5.7853952629802974e-27 -1.8199279869824328e-20 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Arm_Elbow_M_JNT_parentConstraint1" -p "Arm_Elbow_M_JNT";
	rename -uid "23598AB0-472C-D8E0-7624-A2B7963716E0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Elbow_Joint_M_CTR1W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.8421709430404007e-14 -1.4210854715202004e-13 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 2.8436374796600794e-22 -2.3854160110976384e-15 
		4.5561467976133282e-21 ;
	setAttr ".lr" -type "double3" -3.317577059603425e-22 1.5902773407317637e-15 -4.5438957227068334e-21 ;
	setAttr ".rst" -type "double3" 25.941269954820431 -3.7260284102558217e-07 0.19840277671717566 ;
	setAttr ".rsrr" -type "double3" -3.317577059603425e-22 1.5902773407317637e-15 -4.5438957227068334e-21 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Arm_Shoulder_M_JNT_parentConstraint1" -p "Arm_Shoulder_M_JNT";
	rename -uid "5ECB73D6-466F-8DBA-FFC4-EB8C0E93F0BE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Shoulder_Joint_M_CTR0W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-15 0 -4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" 2.843637479660079e-22 3.975693351829396e-16 
		-7.5814587347611308e-21 ;
	setAttr ".lr" -type "double3" -2.843637479660079e-22 1.8811182536655945e-44 7.5804414220157282e-21 ;
	setAttr ".rst" -type "double3" 8.7083126930517007 2.8421709430404007e-14 -4.4408920985006262e-16 ;
	setAttr ".rsrr" -type "double3" -2.843637479660079e-22 1.8811182536655945e-44 7.5804414220157282e-21 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Clav_Clav01_M_JNT_parentConstraint1" -p "Clav_Clav01_M_JNT";
	rename -uid "6718BFBD-4EB4-0EC9-3C98-848A1EA77585";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Clav01_Joint_M_CTR0W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 5.5230406399187046 137.52213631501641 -2.0461767078897952 ;
	setAttr -k on ".w0";
createNode transform -n "LIMBS" -p "TEMP_RigRoot";
	rename -uid "CC9E624D-4E5E-EC93-0FD8-9BA17DFB5216";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "BicepTwist_Limb_M_NODE" -p "LIMBS";
	rename -uid "5A49109F-4431-4A29-2D16-99A23857E47B";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom1:Custom2:Custom3:Custom4" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 4 -en "Body:Face:Fingers:Toes:Misc" 
		-at "enum";
	addAttr -ci true -sn "side" -ln "side" -min 0 -max 3 -en "M:L:R:-" -at "enum";
	addAttr -ci true -sn "joints" -ln "joints" -dt "string";
	addAttr -ci true -sn "enableLimb" -ln "enableLimb" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "limbParent" -ln "limbParent" -dt "string";
	addAttr -ci true -sn "limbChildren" -ln "limbChildren" -dt "string";
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 2 -en "Shoulder:Elbow:Wrist" 
		-at "enum";
	addAttr -ci true -sn "jointGroups" -ln "jointGroups" -dt "string";
	addAttr -ci true -sn "mirrorLimb" -ln "mirrorLimb" -at "long";
	addAttr -ci true -sn "bhvType" -ln "bhvType" -dt "string";
	addAttr -ci true -sn "bhvFile" -ln "bhvFile" -dt "string";
	addAttr -ci true -sn "limbGroups" -ln "limbGroups" -dt "string";
	addAttr -ci true -sn "usedGroups" -ln "usedGroups" -dt "string";
	addAttr -ci true -sn "channelBoxJointCtrPos" -ln "channelBoxJointCtrPos" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxJointCtrRot" -ln "channelBoxJointCtrRot" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxJointCtrScale" -ln "channelBoxJointCtrScale" -dv 
		1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxLimbCtrPos" -ln "channelBoxLimbCtrPos" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxLimbCtrRot" -ln "channelBoxLimbCtrRot" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxLimbCtrScale" -ln "channelBoxLimbCtrScale" -dv 1 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "presets" -ln "presets" -dt "string";
	addAttr -ci true -sn "presetLimbChildren" -ln "presetLimbChildren" -dt "string";
	addAttr -ci true -sn "hasKeys" -ln "hasKeys" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "controlKeyframes" -ln "controlKeyframes" -dt "string";
	addAttr -ci true -sn "toBeBaked" -ln "toBeBaked" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bakeExternal" -ln "bakeExternal" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "animJoints" -ln "animJoints" -dt "string";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".ID" 1;
	setAttr ".pfrsName" -type "string" "BicepTwist";
	setAttr ".limbType" 1;
	setAttr ".limbLocation" 4;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "BicepTwist_Joint_M_GRP0" -p "BicepTwist_Limb_M_NODE";
	rename -uid "A6235E21-4D5E-74FF-B42E-AE8F1E95CC57";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "BicepTwist_Joint_M_CTR0" -p "BicepTwist_Joint_M_GRP0";
	rename -uid "896DC297-4BE2-5203-7C61-12852AB629E0";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "BicepTwist_Joint_M_CTR0Shape" -p "BicepTwist_Joint_M_CTR0";
	rename -uid "D0E22E57-498B-512C-D59A-7E93A9CF2C82";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "BicepTwist_Joint_M_GRP0_parentConstraint1" -p "BicepTwist_Joint_M_GRP0";
	rename -uid "E22E49C4-48C7-8C52-0DAE-538295D13427";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Shoulder_Joint_M_CTR0W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 12.27416877276713 1.3482982694767998e-06 -7.2164496600635175e-14 ;
	setAttr ".tg[0].tor" -type "double3" 2.3941247317872461e-07 1.1927080055488188e-15 
		-7.198379165158325e-06 ;
	setAttr ".lr" -type "double3" -2.3941247317872461e-07 1.9049107295000538 1.5737566851597584e-21 ;
	setAttr ".rst" -type "double3" 26.498739039134009 137.52213920538503 -2.4541803826011916 ;
	setAttr ".rsrr" -type "double3" -2.3941247317872461e-07 1.9049107295000538 1.5737566851597584e-21 ;
	setAttr -k on ".w0";
createNode transform -n "ForearmTwist_Limb_M_NODE" -p "LIMBS";
	rename -uid "78E8D4E7-4A4F-7458-31E2-50990EA9AE1F";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom1:Custom2:Custom3:Custom4" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 4 -en "Body:Face:Fingers:Toes:Misc" 
		-at "enum";
	addAttr -ci true -sn "side" -ln "side" -min 0 -max 3 -en "M:L:R:-" -at "enum";
	addAttr -ci true -sn "joints" -ln "joints" -dt "string";
	addAttr -ci true -sn "enableLimb" -ln "enableLimb" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "limbParent" -ln "limbParent" -dt "string";
	addAttr -ci true -sn "limbChildren" -ln "limbChildren" -dt "string";
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 2 -en "Shoulder:Elbow:Wrist" 
		-at "enum";
	addAttr -ci true -sn "jointGroups" -ln "jointGroups" -dt "string";
	addAttr -ci true -sn "mirrorLimb" -ln "mirrorLimb" -at "long";
	addAttr -ci true -sn "bhvType" -ln "bhvType" -dt "string";
	addAttr -ci true -sn "bhvFile" -ln "bhvFile" -dt "string";
	addAttr -ci true -sn "limbGroups" -ln "limbGroups" -dt "string";
	addAttr -ci true -sn "usedGroups" -ln "usedGroups" -dt "string";
	addAttr -ci true -sn "channelBoxJointCtrPos" -ln "channelBoxJointCtrPos" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxJointCtrRot" -ln "channelBoxJointCtrRot" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxJointCtrScale" -ln "channelBoxJointCtrScale" -dv 
		1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxLimbCtrPos" -ln "channelBoxLimbCtrPos" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxLimbCtrRot" -ln "channelBoxLimbCtrRot" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxLimbCtrScale" -ln "channelBoxLimbCtrScale" -dv 1 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "presets" -ln "presets" -dt "string";
	addAttr -ci true -sn "presetLimbChildren" -ln "presetLimbChildren" -dt "string";
	addAttr -ci true -sn "hasKeys" -ln "hasKeys" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "controlKeyframes" -ln "controlKeyframes" -dt "string";
	addAttr -ci true -sn "toBeBaked" -ln "toBeBaked" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bakeExternal" -ln "bakeExternal" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "animJoints" -ln "animJoints" -dt "string";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".ID" 2;
	setAttr ".pfrsName" -type "string" "ForearmTwist";
	setAttr ".limbType" 2;
	setAttr ".limbLocation" 4;
	setAttr ".limbParentJoint" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "ForearmTwist2_Joint_M_GRP1" -p "ForearmTwist_Limb_M_NODE";
	rename -uid "640F31D2-4DFF-B1B4-21FD-3D875779762E";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "ForearmTwist2_Joint_M_CTR1" -p "ForearmTwist2_Joint_M_GRP1";
	rename -uid "69BAB4AE-48BC-E2BC-1CED-F5ADA2A474D1";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "ForearmTwist2_Joint_M_CTR1Shape" -p "ForearmTwist2_Joint_M_CTR1";
	rename -uid "913CC9AD-45E1-3815-DAEA-27A130CDAFCD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "ForearmTwist2_Joint_M_GRP1_parentConstraint1" -p "ForearmTwist2_Joint_M_GRP1";
	rename -uid "5821983C-4FEE-A0C6-6A5B-F0883ABF99BA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Elbow_Joint_M_CTR1W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 16.281148691824356 -5.6843418860808015e-14 
		-4.4408920985006262e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 -1.1927080055488188e-15 0 ;
	setAttr ".lr" -type "double3" 0 -1.9308742665174585 0 ;
	setAttr ".rst" -type "double3" 56.436786789718298 137.52213920238498 -2.1616204586526702 ;
	setAttr ".rsrr" -type "double3" 0 -1.9308742665174585 0 ;
	setAttr -k on ".w0";
createNode transform -n "ForearmTwist1_Joint_M_GRP0" -p "ForearmTwist_Limb_M_NODE";
	rename -uid "7CC2E92A-4EE5-9037-8D71-74A3BB698FED";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "ForearmTwist1_Joint_M_CTR0" -p "ForearmTwist1_Joint_M_GRP0";
	rename -uid "AC109AB0-4F6F-D2F6-FC43-09B5B4A79B7B";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "ForearmTwist1_Joint_M_CTR0Shape" -p "ForearmTwist1_Joint_M_CTR0";
	rename -uid "F86240C2-41B2-A1BE-1A58-91A73D292CA2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "ForearmTwist1_Joint_M_GRP0_parentConstraint1" -p "ForearmTwist1_Joint_M_GRP0";
	rename -uid "8814F1D7-4B95-3C65-D363-CFBED9993862";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Elbow_Joint_M_CTR1W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.7002927054333625 2.8421709430404007e-14 -2.6645352591003757e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 -1.1927080055488188e-15 0 ;
	setAttr ".lr" -type "double3" 0 -1.9308742665174585 0 ;
	setAttr ".rst" -type "double3" 48.860235176068642 137.52213920238506 -2.417047810561201 ;
	setAttr ".rsrr" -type "double3" 0 -1.9308742665174585 0 ;
	setAttr -k on ".w0";
createNode transform -n "Ring_Limb_M_NODE" -p "LIMBS";
	rename -uid "86736629-45AF-4EDF-75CB-8F8859EAF2B1";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom1:Custom2:Custom3:Custom4" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 4 -en "Body:Face:Fingers:Toes:Misc" 
		-at "enum";
	addAttr -ci true -sn "side" -ln "side" -min 0 -max 3 -en "M:L:R:-" -at "enum";
	addAttr -ci true -sn "joints" -ln "joints" -dt "string";
	addAttr -ci true -sn "enableLimb" -ln "enableLimb" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "limbParent" -ln "limbParent" -dt "string";
	addAttr -ci true -sn "limbChildren" -ln "limbChildren" -dt "string";
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 2 -en "Shoulder:Elbow:Wrist" 
		-at "enum";
	addAttr -ci true -sn "jointGroups" -ln "jointGroups" -dt "string";
	addAttr -ci true -sn "mirrorLimb" -ln "mirrorLimb" -at "long";
	addAttr -ci true -sn "bhvType" -ln "bhvType" -dt "string";
	addAttr -ci true -sn "bhvFile" -ln "bhvFile" -dt "string";
	addAttr -ci true -sn "limbGroups" -ln "limbGroups" -dt "string";
	addAttr -ci true -sn "usedGroups" -ln "usedGroups" -dt "string";
	addAttr -ci true -sn "channelBoxJointCtrPos" -ln "channelBoxJointCtrPos" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxJointCtrRot" -ln "channelBoxJointCtrRot" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxJointCtrScale" -ln "channelBoxJointCtrScale" -dv 
		1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxLimbCtrPos" -ln "channelBoxLimbCtrPos" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxLimbCtrRot" -ln "channelBoxLimbCtrRot" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxLimbCtrScale" -ln "channelBoxLimbCtrScale" -dv 1 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "presets" -ln "presets" -dt "string";
	addAttr -ci true -sn "presetLimbChildren" -ln "presetLimbChildren" -dt "string";
	addAttr -ci true -sn "hasKeys" -ln "hasKeys" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "controlKeyframes" -ln "controlKeyframes" -dt "string";
	addAttr -ci true -sn "toBeBaked" -ln "toBeBaked" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bakeExternal" -ln "bakeExternal" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "animJoints" -ln "animJoints" -dt "string";
	addAttr -ci true -sn "enableEndControl" -ln "enableEndControl" -dv 1 -min 0 -max 
		1 -at "bool";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".ID" 3;
	setAttr ".pfrsName" -type "string" "Ring";
	setAttr ".limbType" 4;
	setAttr ".limbLocation" 2;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Ring1_Joint_M_GRP0" -p "Ring_Limb_M_NODE";
	rename -uid "29AB3261-4A99-5C61-4FC5-8F92447F3482";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999989 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring1_Joint_M_CTR0" -p "Ring1_Joint_M_GRP0";
	rename -uid "281AEDD8-47F4-A4F2-CB6C-F4A68027D590";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 0 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 0 0 8.8817841970012523e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring1_Joint_M_CTR0Shape" -p "Ring1_Joint_M_CTR0";
	rename -uid "A409A76E-4152-534A-D7A8-259F86FA9900";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ring2_Joint_M_GRP1" -p "Ring1_Joint_M_CTR0";
	rename -uid "E0A8D02A-403B-4B17-73F4-01B3E6AC3FC7";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 2.6470511256765761 -5.6843418860808015e-14 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 0.3218429025650158 -0.82840012879269209 -6.2720734730228003 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 0.99999999999999989 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring2_Joint_M_CTR1" -p "Ring2_Joint_M_GRP1";
	rename -uid "A517519C-489D-703B-2912-B3BE22E5D502";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 1.4210854715202004e-14 0 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 1.4210854715202004e-14 0 8.8817841970012523e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring2_Joint_M_CTR1Shape" -p "Ring2_Joint_M_CTR1";
	rename -uid "6FA8E27C-40BB-4B03-A10A-D9BF8A5D3406";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  4.9737992e-14 0 -3.5527137e-15 
		4.9737992e-14 0 -3.5527137e-15 4.9737992e-14 0 -3.5527137e-15 4.9737992e-14 0 -3.5527137e-15 
		4.9737992e-14 0 -3.5527137e-15 4.9737992e-14 0 -3.5527137e-15 4.9737992e-14 0 -3.5527137e-15 
		4.9737992e-14 0 -3.5527137e-15;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ring3_Joint_M_GRP2" -p "Ring2_Joint_M_CTR1";
	rename -uid "E08F277F-4D15-0904-354A-8C8310C8056C";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 2.9147340994338933 0 8.8817841970012523e-16 ;
	setAttr ".r" -type "double3" 1.4134745652276195 -1.5108291308559805 -21.872085043039437 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1.0000000000000004 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring3_Joint_M_CTR2" -p "Ring3_Joint_M_GRP2";
	rename -uid "D949CF72-4C90-49F4-81A0-DD93A73C5AC1";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 7.1054273576010019e-15 0 0 ;
	setAttr ".sp" -type "double3" 7.1054273576010019e-15 0 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring3_Joint_M_CTR2Shape" -p "Ring3_Joint_M_CTR2";
	rename -uid "2B939CBD-41A3-EC97-99C6-B386723CDDCD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.8421709e-14 -5.6843419e-14 
		0 2.8421709e-14 -5.6843419e-14 0 2.8421709e-14 -5.6843419e-14 0 2.8421709e-14 -5.6843419e-14 
		0 2.8421709e-14 -5.6843419e-14 0 2.8421709e-14 -5.6843419e-14 0 2.8421709e-14 -5.6843419e-14 
		0 2.8421709e-14 -5.6843419e-14 0;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Ring4_Joint_M_GRP3" -p "Ring3_Joint_M_CTR2";
	rename -uid "5EF50509-43F8-22F7-57F8-F2AB0ABFB4D8";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 3.742184369964253 -2.8421709430404007e-14 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999956 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring4_Joint_M_CTR3" -p "Ring4_Joint_M_GRP3";
	rename -uid "896BB18E-44D9-BDAC-5F26-3D818E27E53C";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -1.7763568394002505e-14 2.8421709430404007e-14 -1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-14 2.8421709430404007e-14 -1.7763568394002505e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring4_Joint_M_CTR3Shape" -p "Ring4_Joint_M_CTR3";
	rename -uid "0A7A965B-4B9C-F11F-BB2C-59A9E07CA664";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -3.5527137e-14 5.6843419e-14 
		3.5527137e-15 -3.5527137e-14 5.6843419e-14 3.5527137e-15 -3.5527137e-14 5.6843419e-14 
		3.5527137e-15 -3.5527137e-14 5.6843419e-14 3.5527137e-15 -3.5527137e-14 5.6843419e-14 
		3.5527137e-15 -3.5527137e-14 5.6843419e-14 3.5527137e-15 -3.5527137e-14 5.6843419e-14 
		3.5527137e-15 -3.5527137e-14 5.6843419e-14 3.5527137e-15;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "Ring1_Joint_M_GRP0_parentConstraint1" -p "Ring1_Joint_M_GRP0";
	rename -uid "3C516CA8-4A7D-5A6F-B2DC-A49BAF090617";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Wrist_Joint_M_CTR2W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.8190365685399286 0.52916697249315803 -2.7118128374972326 ;
	setAttr ".tg[0].tor" -type "double3" -0.5015874927498909 1.8763645280600156 -14.968689057118794 ;
	setAttr ".lr" -type "double3" -0.0029306263820540073 0.010967469486314484 -14.960520488128386 ;
	setAttr ".rst" -type "double3" 74.315879989305444 138.05129791066554 -4.2722181059799356 ;
	setAttr ".rsrr" -type "double3" -0.0029306263820540073 0.010967469486314484 -14.960520488128386 ;
	setAttr -k on ".w0";
createNode transform -n "Pinkie_Limb_M_NODE" -p "LIMBS";
	rename -uid "B4244CA1-47EA-9A30-13F5-84BE2BF22CF8";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom1:Custom2:Custom3:Custom4" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 4 -en "Body:Face:Fingers:Toes:Misc" 
		-at "enum";
	addAttr -ci true -sn "side" -ln "side" -min 0 -max 3 -en "M:L:R:-" -at "enum";
	addAttr -ci true -sn "joints" -ln "joints" -dt "string";
	addAttr -ci true -sn "enableLimb" -ln "enableLimb" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "limbParent" -ln "limbParent" -dt "string";
	addAttr -ci true -sn "limbChildren" -ln "limbChildren" -dt "string";
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 2 -en "Shoulder:Elbow:Wrist" 
		-at "enum";
	addAttr -ci true -sn "jointGroups" -ln "jointGroups" -dt "string";
	addAttr -ci true -sn "mirrorLimb" -ln "mirrorLimb" -at "long";
	addAttr -ci true -sn "bhvType" -ln "bhvType" -dt "string";
	addAttr -ci true -sn "bhvFile" -ln "bhvFile" -dt "string";
	addAttr -ci true -sn "limbGroups" -ln "limbGroups" -dt "string";
	addAttr -ci true -sn "usedGroups" -ln "usedGroups" -dt "string";
	addAttr -ci true -sn "channelBoxJointCtrPos" -ln "channelBoxJointCtrPos" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxJointCtrRot" -ln "channelBoxJointCtrRot" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxJointCtrScale" -ln "channelBoxJointCtrScale" -dv 
		1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxLimbCtrPos" -ln "channelBoxLimbCtrPos" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxLimbCtrRot" -ln "channelBoxLimbCtrRot" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxLimbCtrScale" -ln "channelBoxLimbCtrScale" -dv 1 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "presets" -ln "presets" -dt "string";
	addAttr -ci true -sn "presetLimbChildren" -ln "presetLimbChildren" -dt "string";
	addAttr -ci true -sn "hasKeys" -ln "hasKeys" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "controlKeyframes" -ln "controlKeyframes" -dt "string";
	addAttr -ci true -sn "toBeBaked" -ln "toBeBaked" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bakeExternal" -ln "bakeExternal" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "animJoints" -ln "animJoints" -dt "string";
	addAttr -ci true -sn "enableEndControl" -ln "enableEndControl" -dv 1 -min 0 -max 
		1 -at "bool";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".ID" 4;
	setAttr ".pfrsName" -type "string" "Pinkie";
	setAttr ".limbType" 4;
	setAttr ".limbLocation" 2;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Pinkey1_Joint_M_GRP0" -p "Pinkie_Limb_M_NODE";
	rename -uid "4A96F0FA-4BB7-D216-43BD-14821E9AA92C";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinkey1_Joint_M_CTR0" -p "Pinkey1_Joint_M_GRP0";
	rename -uid "CCA28B96-438D-C577-F03E-F5BC91109A7F";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -7.1054273576010019e-15 2.8421709430404007e-14 0 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-15 2.8421709430404007e-14 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinkey1_Joint_M_CTR0Shape" -p "Pinkey1_Joint_M_CTR0";
	rename -uid "ACACF2B4-463F-12AD-0ED1-18903446A628";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.4210855e-14 5.6843419e-14 
		3.5527137e-15 1.4210855e-14 5.6843419e-14 3.5527137e-15 1.4210855e-14 5.6843419e-14 
		3.5527137e-15 1.4210855e-14 5.6843419e-14 3.5527137e-15 1.4210855e-14 5.6843419e-14 
		3.5527137e-15 1.4210855e-14 5.6843419e-14 3.5527137e-15 1.4210855e-14 5.6843419e-14 
		3.5527137e-15 1.4210855e-14 5.6843419e-14 3.5527137e-15;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Pinkey2_Joint_M_GRP1" -p "Pinkey1_Joint_M_CTR0";
	rename -uid "D19D1F95-4AFA-13E4-E9A6-D0A9C0E95169";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 2.2858601897863835 2.8421709430404007e-14 -3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" -1.0809698282630746 2.3895266163728617 -10.507647530284295 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000002 0.99999999999999989 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinkey2_Joint_M_CTR1" -p "Pinkey2_Joint_M_GRP1";
	rename -uid "8A7AE228-472B-77D4-622C-EC994233BB6E";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 0 -1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" 0 0 -1.7763568394002505e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinkey2_Joint_M_CTR1Shape" -p "Pinkey2_Joint_M_CTR1";
	rename -uid "0C5F9E19-4C31-67B8-BF8C-DA973A688A14";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  7.1054274e-15 -5.6843419e-14 
		1.7763568e-15 7.1054274e-15 -5.6843419e-14 1.7763568e-15 7.1054274e-15 -5.6843419e-14 
		1.7763568e-15 7.1054274e-15 -5.6843419e-14 1.7763568e-15 7.1054274e-15 -5.6843419e-14 
		1.7763568e-15 7.1054274e-15 -5.6843419e-14 1.7763568e-15 7.1054274e-15 -5.6843419e-14 
		1.7763568e-15 7.1054274e-15 -5.6843419e-14 1.7763568e-15;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Pinkey3_Joint_M_GRP2" -p "Pinkey2_Joint_M_CTR1";
	rename -uid "C960890C-47DB-4854-373D-62AB01B00436";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 2.4760630189721979 5.6843418860808015e-14 7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -1.6614711522053984 1.575508846602526 -22.205625824582043 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1.0000000000000004 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinkey3_Joint_M_CTR2" -p "Pinkey3_Joint_M_GRP2";
	rename -uid "302692AB-4AFB-3785-8CEC-C5B013F00067";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -7.1054273576010019e-15 2.8421709430404007e-14 -6.6613381477509392e-16 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-15 2.8421709430404007e-14 -6.6613381477509392e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinkey3_Joint_M_CTR2Shape" -p "Pinkey3_Joint_M_CTR2";
	rename -uid "9C86C882-496C-1DAA-3F6C-BCA3BBE02F15";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -4.2632564e-14 0 2.6645353e-15 
		-4.2632564e-14 0 2.6645353e-15 -4.2632564e-14 0 2.6645353e-15 -4.2632564e-14 0 2.6645353e-15 
		-4.2632564e-14 0 2.6645353e-15 -4.2632564e-14 0 2.6645353e-15 -4.2632564e-14 0 2.6645353e-15 
		-4.2632564e-14 0 2.6645353e-15;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Pinkey4_Joint_M_GRP3" -p "Pinkey3_Joint_M_CTR2";
	rename -uid "A6E70B55-4C45-DFCD-5773-A2A6692ABBF9";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 2.1354158919625306 2.8421709430404007e-14 -2.2204460492503131e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 0.99999999999999956 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinkey4_Joint_M_CTR3" -p "Pinkey4_Joint_M_GRP3";
	rename -uid "EE4FBC21-48B0-E76B-5AAF-D0967F9D7171";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -1.4210854715202004e-14 -2.8421709430404007e-14 4.4408920985006262e-16 ;
	setAttr ".sp" -type "double3" -1.4210854715202004e-14 -2.8421709430404007e-14 4.4408920985006262e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinkey4_Joint_M_CTR3Shape" -p "Pinkey4_Joint_M_CTR3";
	rename -uid "6DDD6C25-4D11-1C94-56C3-248BCBA9E1D7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.4210855e-14 5.6843419e-14 
		0 -1.4210855e-14 5.6843419e-14 0 -1.4210855e-14 5.6843419e-14 0 -1.4210855e-14 5.6843419e-14 
		0 -1.4210855e-14 5.6843419e-14 0 -1.4210855e-14 5.6843419e-14 0 -1.4210855e-14 5.6843419e-14 
		0 -1.4210855e-14 5.6843419e-14 0;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "Pinkey1_Joint_M_GRP0_parentConstraint1" -p "Pinkey1_Joint_M_GRP0";
	rename -uid "9B4233C7-4A46-9195-D577-58B9A06DE0F5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Wrist_Joint_M_CTR2W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.2965411030324674 0.40936099840951101 -4.6085328294878281 ;
	setAttr ".tg[0].tor" -type "double3" -0.05884561924025937 0.23874909222634794 -13.842182154515401 ;
	setAttr ".lr" -type "double3" 0.40323612858959706 -1.6360326801531728 -13.847862357027608 ;
	setAttr ".rst" -type "double3" 73.857588681027494 137.93149289048077 -6.1854660106734727 ;
	setAttr ".rsrr" -type "double3" 0.40323612858959695 -1.636032680153173 -13.847862357027605 ;
	setAttr -k on ".w0";
createNode transform -n "Arm_Limb_M_NODE" -p "LIMBS";
	rename -uid "FE5DC315-4B49-1FDE-9209-EC8373E36051";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom1:Custom2:Custom3:Custom4" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 4 -en "Body:Face:Fingers:Toes:Misc" 
		-at "enum";
	addAttr -ci true -sn "side" -ln "side" -min 0 -max 3 -en "M:L:R:-" -at "enum";
	addAttr -ci true -sn "joints" -ln "joints" -dt "string";
	addAttr -ci true -sn "enableLimb" -ln "enableLimb" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "limbParent" -ln "limbParent" -dt "string";
	addAttr -ci true -sn "limbChildren" -ln "limbChildren" -dt "string";
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "Clav01" 
		-at "enum";
	addAttr -ci true -sn "jointGroups" -ln "jointGroups" -dt "string";
	addAttr -ci true -sn "mirrorLimb" -ln "mirrorLimb" -at "long";
	addAttr -ci true -sn "bhvType" -ln "bhvType" -dt "string";
	addAttr -ci true -sn "bhvFile" -ln "bhvFile" -dt "string";
	addAttr -ci true -sn "limbGroups" -ln "limbGroups" -dt "string";
	addAttr -ci true -sn "usedGroups" -ln "usedGroups" -dt "string";
	addAttr -ci true -sn "channelBoxJointCtrPos" -ln "channelBoxJointCtrPos" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxJointCtrRot" -ln "channelBoxJointCtrRot" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxJointCtrScale" -ln "channelBoxJointCtrScale" -dv 
		1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxLimbCtrPos" -ln "channelBoxLimbCtrPos" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxLimbCtrRot" -ln "channelBoxLimbCtrRot" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxLimbCtrScale" -ln "channelBoxLimbCtrScale" -dv 1 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "presets" -ln "presets" -dt "string";
	addAttr -ci true -sn "presetLimbChildren" -ln "presetLimbChildren" -dt "string";
	addAttr -ci true -sn "hasKeys" -ln "hasKeys" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "controlKeyframes" -ln "controlKeyframes" -dt "string";
	addAttr -ci true -sn "toBeBaked" -ln "toBeBaked" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bakeExternal" -ln "bakeExternal" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "animJoints" -ln "animJoints" -dt "string";
	addAttr -ci true -sn "enableEndControl" -ln "enableEndControl" -dv 1 -min 0 -max 
		1 -at "bool";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".ID" 5;
	setAttr ".pfrsName" -type "string" "Arm";
	setAttr ".limbType" 4;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Shoulder_Joint_M_GRP0" -p "Arm_Limb_M_NODE";
	rename -uid "21F825F3-4A01-C3FC-A1A1-51B155E3EED1";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Shoulder_Joint_M_CTR0" -p "Shoulder_Joint_M_GRP0";
	rename -uid "5A5C13B6-4C60-8C27-3381-A2B5AA6DE2BF";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -1.7763568394002505e-15 0 4.4408920985006262e-16 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-15 0 4.4408920985006262e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Shoulder_Joint_M_CTR0Shape" -p "Shoulder_Joint_M_CTR0";
	rename -uid "3C398AA8-43F9-BFDB-6F21-8197F0872856";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -3.5527137e-15 0 8.8817842e-16 
		-3.5527137e-15 0 8.8817842e-16 -3.5527137e-15 0 8.8817842e-16 -3.5527137e-15 0 8.8817842e-16 
		-3.5527137e-15 0 8.8817842e-16 -3.5527137e-15 0 8.8817842e-16 -3.5527137e-15 0 8.8817842e-16 
		-3.5527137e-15 0 8.8817842e-16;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Elbow_Joint_M_GRP1" -p "Shoulder_Joint_M_CTR0";
	rename -uid "F1A11FEC-4D17-8F75-244B-B793C2D48062";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 25.941269954820413 -3.7260269891703501e-07 0.19840277671717321 ;
	setAttr ".r" -type "double3" 0 -3.8357849960175137 -7.2144311188858215e-06 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Elbow_Joint_M_CTR1" -p "Elbow_Joint_M_GRP1";
	rename -uid "66CEA998-4037-53D2-6319-F8B29B7E7ACF";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Elbow_Joint_M_CTR1Shape" -p "Elbow_Joint_M_CTR1";
	rename -uid "AD1D0770-4F51-974E-86CF-9EB5E23C2CC2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Wrist_Joint_M_GRP2" -p "Elbow_Joint_M_CTR1";
	rename -uid "0035B18B-49D8-70F9-455B-428C9B611295";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 26.259939324857946 -2.8415820736427122e-06 1.1546319456101628e-14 ;
	setAttr ".r" -type "double3" 1.655073889869505e-05 1.4463488157450767e-27 -4.539250290758354e-05 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 1.0000000000000002 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Wrist_Joint_M_CTR2" -p "Wrist_Joint_M_GRP2";
	rename -uid "8C0FB1EE-404A-BABF-3BAD-AA909D446014";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 2.8421709430404007e-14 -2.8421709430404007e-14 -8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 2.8421709430404007e-14 -2.8421709430404007e-14 -8.8817841970012523e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Wrist_Joint_M_CTR2Shape" -p "Wrist_Joint_M_CTR2";
	rename -uid "0E5CEF50-485C-0606-B95D-059779C90ECF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  5.6843419e-14 -5.6843419e-14 
		-1.7763568e-15 5.6843419e-14 -5.6843419e-14 -1.7763568e-15 5.6843419e-14 -5.6843419e-14 
		-1.7763568e-15 5.6843419e-14 -5.6843419e-14 -1.7763568e-15 5.6843419e-14 -5.6843419e-14 
		-1.7763568e-15 5.6843419e-14 -5.6843419e-14 -1.7763568e-15 5.6843419e-14 -5.6843419e-14 
		-1.7763568e-15 5.6843419e-14 -5.6843419e-14 -1.7763568e-15;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "Shoulder_Joint_M_GRP0_parentConstraint1" -p "Shoulder_Joint_M_GRP0";
	rename -uid "1044E483-4040-ED4C-A598-B5B0159E292E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Clav01_Joint_M_CTR0W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.7083126930516954 2.8421709430404007e-14 0 ;
	setAttr ".tg[0].tor" -type "double3" 0 1.9049107295000689 7.2023594007588229e-06 ;
	setAttr ".lr" -type "double3" -2.371008188564608e-23 1.9049107295000689 7.2023594007588246e-06 ;
	setAttr ".rst" -type "double3" 14.2313533329704 137.52213631501644 -2.0461767078897952 ;
	setAttr ".rsrr" -type "double3" -2.3710081885646086e-23 1.9049107295000689 7.2023594007588246e-06 ;
	setAttr -k on ".w0";
createNode transform -n "Clav_Limb_M_NODE" -p "LIMBS";
	rename -uid "6FD1E41A-4E85-8F70-AC86-BAAAA15A2CE4";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom1:Custom2:Custom3:Custom4" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 4 -en "Body:Face:Fingers:Toes:Misc" 
		-at "enum";
	addAttr -ci true -sn "side" -ln "side" -min 0 -max 3 -en "M:L:R:-" -at "enum";
	addAttr -ci true -sn "joints" -ln "joints" -dt "string";
	addAttr -ci true -sn "enableLimb" -ln "enableLimb" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "limbParent" -ln "limbParent" -dt "string";
	addAttr -ci true -sn "limbChildren" -ln "limbChildren" -dt "string";
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "None" 
		-at "enum";
	addAttr -ci true -sn "jointGroups" -ln "jointGroups" -dt "string";
	addAttr -ci true -sn "mirrorLimb" -ln "mirrorLimb" -at "long";
	addAttr -ci true -sn "bhvType" -ln "bhvType" -dt "string";
	addAttr -ci true -sn "bhvFile" -ln "bhvFile" -dt "string";
	addAttr -ci true -sn "limbGroups" -ln "limbGroups" -dt "string";
	addAttr -ci true -sn "usedGroups" -ln "usedGroups" -dt "string";
	addAttr -ci true -sn "channelBoxJointCtrPos" -ln "channelBoxJointCtrPos" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxJointCtrRot" -ln "channelBoxJointCtrRot" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxJointCtrScale" -ln "channelBoxJointCtrScale" -dv 
		1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxLimbCtrPos" -ln "channelBoxLimbCtrPos" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxLimbCtrRot" -ln "channelBoxLimbCtrRot" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxLimbCtrScale" -ln "channelBoxLimbCtrScale" -dv 1 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "presets" -ln "presets" -dt "string";
	addAttr -ci true -sn "presetLimbChildren" -ln "presetLimbChildren" -dt "string";
	addAttr -ci true -sn "hasKeys" -ln "hasKeys" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "controlKeyframes" -ln "controlKeyframes" -dt "string";
	addAttr -ci true -sn "toBeBaked" -ln "toBeBaked" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bakeExternal" -ln "bakeExternal" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "animJoints" -ln "animJoints" -dt "string";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".ID" 6;
	setAttr ".pfrsName" -type "string" "Clav";
	setAttr ".limbType" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "Clav01_Joint_M_GRP0" -p "Clav_Limb_M_NODE";
	rename -uid "B3BBE557-4932-6C77-A995-299E9A17CD86";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 5.5230406399187046 137.52213631501641 -2.0461767078897952 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Clav01_Joint_M_CTR0" -p "Clav01_Joint_M_GRP0";
	rename -uid "4197AB45-4FF0-FC85-74BF-DDA07AD3A6BF";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Clav01_Joint_M_CTR0Shape" -p "Clav01_Joint_M_CTR0";
	rename -uid "EA95E3AF-40E6-EAC9-FCB1-7DB0F154D251";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Middle_Limb_M_NODE" -p "LIMBS";
	rename -uid "BA6F742D-4F32-518C-37B7-FCB830E8975C";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom1:Custom2:Custom3:Custom4" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 4 -en "Body:Face:Fingers:Toes:Misc" 
		-at "enum";
	addAttr -ci true -sn "side" -ln "side" -min 0 -max 3 -en "M:L:R:-" -at "enum";
	addAttr -ci true -sn "joints" -ln "joints" -dt "string";
	addAttr -ci true -sn "enableLimb" -ln "enableLimb" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "limbParent" -ln "limbParent" -dt "string";
	addAttr -ci true -sn "limbChildren" -ln "limbChildren" -dt "string";
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 2 -en "Shoulder:Elbow:Wrist" 
		-at "enum";
	addAttr -ci true -sn "jointGroups" -ln "jointGroups" -dt "string";
	addAttr -ci true -sn "mirrorLimb" -ln "mirrorLimb" -at "long";
	addAttr -ci true -sn "bhvType" -ln "bhvType" -dt "string";
	addAttr -ci true -sn "bhvFile" -ln "bhvFile" -dt "string";
	addAttr -ci true -sn "limbGroups" -ln "limbGroups" -dt "string";
	addAttr -ci true -sn "usedGroups" -ln "usedGroups" -dt "string";
	addAttr -ci true -sn "channelBoxJointCtrPos" -ln "channelBoxJointCtrPos" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxJointCtrRot" -ln "channelBoxJointCtrRot" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxJointCtrScale" -ln "channelBoxJointCtrScale" -dv 
		1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxLimbCtrPos" -ln "channelBoxLimbCtrPos" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxLimbCtrRot" -ln "channelBoxLimbCtrRot" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxLimbCtrScale" -ln "channelBoxLimbCtrScale" -dv 1 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "presets" -ln "presets" -dt "string";
	addAttr -ci true -sn "presetLimbChildren" -ln "presetLimbChildren" -dt "string";
	addAttr -ci true -sn "hasKeys" -ln "hasKeys" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "controlKeyframes" -ln "controlKeyframes" -dt "string";
	addAttr -ci true -sn "toBeBaked" -ln "toBeBaked" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bakeExternal" -ln "bakeExternal" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "animJoints" -ln "animJoints" -dt "string";
	addAttr -ci true -sn "enableEndControl" -ln "enableEndControl" -dv 1 -min 0 -max 
		1 -at "bool";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".ID" 7;
	setAttr ".pfrsName" -type "string" "Middle";
	setAttr ".limbType" 4;
	setAttr ".limbLocation" 2;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Middle1_Joint_M_GRP0" -p "Middle_Limb_M_NODE";
	rename -uid "0D1F66F0-42E4-D0BC-D85F-D1BA4E972829";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle1_Joint_M_CTR0" -p "Middle1_Joint_M_GRP0";
	rename -uid "73EA2E75-4BFE-2ABD-3E6D-D393A313BBAB";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -3.5527136788005009e-15 5.6843418860808015e-14 4.4408920985006262e-16 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-15 5.6843418860808015e-14 4.4408920985006262e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle1_Joint_M_CTR0Shape" -p "Middle1_Joint_M_CTR0";
	rename -uid "6410FC66-465A-E3CD-0C62-EB91438FC3A0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -7.1054274e-15 5.6843419e-14 
		8.8817842e-16 -7.1054274e-15 5.6843419e-14 8.8817842e-16 -7.1054274e-15 5.6843419e-14 
		8.8817842e-16 -7.1054274e-15 5.6843419e-14 8.8817842e-16 -7.1054274e-15 5.6843419e-14 
		8.8817842e-16 -7.1054274e-15 5.6843419e-14 8.8817842e-16 -7.1054274e-15 5.6843419e-14 
		8.8817842e-16 -7.1054274e-15 5.6843419e-14 8.8817842e-16;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Middle2_Joint_M_GRP1" -p "Middle1_Joint_M_CTR0";
	rename -uid "78DAB82E-44E9-BAE0-BA3B-35A84ACDADF7";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 3.2775428993820306 5.6843418860808015e-14 2.6645352591003757e-15 ;
	setAttr ".r" -type "double3" 0 0 -6.9455202747752809 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle2_Joint_M_CTR1" -p "Middle2_Joint_M_GRP1";
	rename -uid "064A8752-43FD-0FA6-EC6C-4C81A97BCCCF";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -8.8817841970012523e-15 0 0 ;
	setAttr ".sp" -type "double3" -8.8817841970012523e-15 0 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle2_Joint_M_CTR1Shape" -p "Middle2_Joint_M_CTR1";
	rename -uid "FDA6F700-4705-26C9-6A12-7EACA6D9F87C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 -5.6843419e-14 4.4408921e-16 
		0 -5.6843419e-14 4.4408921e-16 0 -5.6843419e-14 4.4408921e-16 0 -5.6843419e-14 4.4408921e-16 
		0 -5.6843419e-14 4.4408921e-16 0 -5.6843419e-14 4.4408921e-16 0 -5.6843419e-14 4.4408921e-16 
		0 -5.6843419e-14 4.4408921e-16;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Middle3_Joint_M_GRP2" -p "Middle2_Joint_M_CTR1";
	rename -uid "DF6669F0-43EB-51FD-25B2-ECB00E899C9E";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 3.3563095325937589 -2.8421709430404007e-13 -8.8817841970012523e-16 ;
	setAttr ".r" -type "double3" 1.3017548767980209 -1.4345230174597441 -16.362037364848561 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle3_Joint_M_CTR2" -p "Middle3_Joint_M_GRP2";
	rename -uid "7DD18996-43D4-0DBC-1C2E-3A9CD7F50F81";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 1.0658141036401503e-14 0 0 ;
	setAttr ".sp" -type "double3" 1.0658141036401503e-14 0 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle3_Joint_M_CTR2Shape" -p "Middle3_Joint_M_CTR2";
	rename -uid "1FE6BCA2-4A7B-E2C2-5F2A-80A9FFF2D710";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -2.1316282e-14 0 -1.7763568e-15 
		-2.1316282e-14 0 -1.7763568e-15 -2.1316282e-14 0 -1.7763568e-15 -2.1316282e-14 0 
		-1.7763568e-15 -2.1316282e-14 0 -1.7763568e-15 -2.1316282e-14 0 -1.7763568e-15 -2.1316282e-14 
		0 -1.7763568e-15 -2.1316282e-14 0 -1.7763568e-15;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Middle4_Joint_M_GRP3" -p "Middle3_Joint_M_CTR2";
	rename -uid "72CEA59D-4D1B-FF6C-462C-E4AC7F16D97D";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 3.451004902417985 0 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000004 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle4_Joint_M_CTR3" -p "Middle4_Joint_M_GRP3";
	rename -uid "94681CE9-4F12-C919-9B21-FFB94E2D6678";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -1.7763568394002505e-14 0 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-14 0 8.8817841970012523e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle4_Joint_M_CTR3Shape" -p "Middle4_Joint_M_CTR3";
	rename -uid "B401455D-4189-6CCD-C8F5-F7AD8B0189F9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  3.5527137e-14 -5.6843419e-14 
		0 3.5527137e-14 -5.6843419e-14 0 3.5527137e-14 -5.6843419e-14 0 3.5527137e-14 -5.6843419e-14 
		0 3.5527137e-14 -5.6843419e-14 0 3.5527137e-14 -5.6843419e-14 0 3.5527137e-14 -5.6843419e-14 
		0 3.5527137e-14 -5.6843419e-14 0;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "Middle1_Joint_M_GRP0_parentConstraint1" -p "Middle1_Joint_M_GRP0";
	rename -uid "13BCB386-485B-3D2C-1804-399D23328BD9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Wrist_Joint_M_CTR2W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.9379058083577974 0.70256262781731493 -0.29684972057054715 ;
	setAttr ".tg[0].tor" -type "double3" -0.62638663371221259 1.8264851864916005 -18.932373081521089 ;
	setAttr ".lr" -type "double3" -8.8171353529838611e-17 -3.5227821265162903e-16 -18.922433221147045 ;
	setAttr ".rst" -type "double3" 74.353312744333138 138.22469278433127 -1.854620990616437 ;
	setAttr ".rsrr" -type "double3" -8.8171291204905716e-17 -3.522785866457293e-16 -18.922433221147045 ;
	setAttr -k on ".w0";
createNode transform -n "Index_Limb_M_NODE" -p "LIMBS";
	rename -uid "915B8913-4AB4-C38B-FC6A-F386DC477C65";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom1:Custom2:Custom3:Custom4" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 4 -en "Body:Face:Fingers:Toes:Misc" 
		-at "enum";
	addAttr -ci true -sn "side" -ln "side" -min 0 -max 3 -en "M:L:R:-" -at "enum";
	addAttr -ci true -sn "joints" -ln "joints" -dt "string";
	addAttr -ci true -sn "enableLimb" -ln "enableLimb" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "limbParent" -ln "limbParent" -dt "string";
	addAttr -ci true -sn "limbChildren" -ln "limbChildren" -dt "string";
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 2 -en "Shoulder:Elbow:Wrist" 
		-at "enum";
	addAttr -ci true -sn "jointGroups" -ln "jointGroups" -dt "string";
	addAttr -ci true -sn "mirrorLimb" -ln "mirrorLimb" -at "long";
	addAttr -ci true -sn "bhvType" -ln "bhvType" -dt "string";
	addAttr -ci true -sn "bhvFile" -ln "bhvFile" -dt "string";
	addAttr -ci true -sn "limbGroups" -ln "limbGroups" -dt "string";
	addAttr -ci true -sn "usedGroups" -ln "usedGroups" -dt "string";
	addAttr -ci true -sn "channelBoxJointCtrPos" -ln "channelBoxJointCtrPos" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxJointCtrRot" -ln "channelBoxJointCtrRot" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxJointCtrScale" -ln "channelBoxJointCtrScale" -dv 
		1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxLimbCtrPos" -ln "channelBoxLimbCtrPos" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxLimbCtrRot" -ln "channelBoxLimbCtrRot" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxLimbCtrScale" -ln "channelBoxLimbCtrScale" -dv 1 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "presets" -ln "presets" -dt "string";
	addAttr -ci true -sn "presetLimbChildren" -ln "presetLimbChildren" -dt "string";
	addAttr -ci true -sn "hasKeys" -ln "hasKeys" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "controlKeyframes" -ln "controlKeyframes" -dt "string";
	addAttr -ci true -sn "toBeBaked" -ln "toBeBaked" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bakeExternal" -ln "bakeExternal" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "animJoints" -ln "animJoints" -dt "string";
	addAttr -ci true -sn "enableEndControl" -ln "enableEndControl" -dv 1 -min 0 -max 
		1 -at "bool";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".ID" 8;
	setAttr ".pfrsName" -type "string" "Index";
	setAttr ".limbType" 4;
	setAttr ".limbLocation" 2;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Index1_Joint_M_GRP0" -p "Index_Limb_M_NODE";
	rename -uid "9D82DEA0-437E-3EAC-D93F-1F86556155C2";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999956 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index1_Joint_M_CTR0" -p "Index1_Joint_M_GRP0";
	rename -uid "ACE21174-483A-E6D7-7798-0489354989DD";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 1.4210854715202004e-14 2.8421709430404007e-14 0 ;
	setAttr ".sp" -type "double3" 1.4210854715202004e-14 2.8421709430404007e-14 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index1_Joint_M_CTR0Shape" -p "Index1_Joint_M_CTR0";
	rename -uid "FCF9002C-438B-3F2A-5D6F-409208E186F1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  4.2632564e-14 1.1368684e-13 
		0 4.2632564e-14 1.1368684e-13 0 4.2632564e-14 1.1368684e-13 0 4.2632564e-14 1.1368684e-13 
		0 4.2632564e-14 1.1368684e-13 0 4.2632564e-14 1.1368684e-13 0 4.2632564e-14 1.1368684e-13 
		0 4.2632564e-14 1.1368684e-13 0;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Index2_Joint_M_GRP1" -p "Index1_Joint_M_CTR0";
	rename -uid "DCDD8F77-46F8-F676-6511-F4BBB62E82A4";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 3.6539765362014052 -1.4210854715202004e-13 -2.6645352591003757e-15 ;
	setAttr ".r" -type "double3" -0.022177448939035348 0.048835656771432964 -6.408487879171286 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000004 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index2_Joint_M_CTR1" -p "Index2_Joint_M_GRP1";
	rename -uid "4C1E114D-4659-922F-9DC8-4297AE92BB8A";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -1.7763568394002505e-14 0 4.4408920985006262e-16 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-14 0 4.4408920985006262e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index2_Joint_M_CTR1Shape" -p "Index2_Joint_M_CTR1";
	rename -uid "8C03258B-4ECE-DC5A-AC53-968681EF8EB1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.7763568e-14 0 0 1.7763568e-14 
		0 0 1.7763568e-14 0 0 1.7763568e-14 0 0 1.7763568e-14 0 0 1.7763568e-14 0 0 1.7763568e-14 
		0 0 1.7763568e-14 0 0;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Index3_Joint_M_GRP2" -p "Index2_Joint_M_CTR1";
	rename -uid "20F4D794-49B3-992A-1537-FA9523E96210";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 2.8248401066068194 8.5265128291212022e-14 -1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" -1.2562319854935928 1.4296116488609036 -16.890064668956963 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index3_Joint_M_CTR2" -p "Index3_Joint_M_GRP2";
	rename -uid "6E344A91-4708-8EEC-2C23-949335321522";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -3.5527136788005009e-15 0 0 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-15 0 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index3_Joint_M_CTR2Shape" -p "Index3_Joint_M_CTR2";
	rename -uid "846D7069-40ED-E1B6-5E31-54A10B31EE3E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  7.1054274e-15 -5.6843419e-14 
		-1.7763568e-15 7.1054274e-15 -5.6843419e-14 -1.7763568e-15 7.1054274e-15 -5.6843419e-14 
		-1.7763568e-15 7.1054274e-15 -5.6843419e-14 -1.7763568e-15 7.1054274e-15 -5.6843419e-14 
		-1.7763568e-15 7.1054274e-15 -5.6843419e-14 -1.7763568e-15 7.1054274e-15 -5.6843419e-14 
		-1.7763568e-15 7.1054274e-15 -5.6843419e-14 -1.7763568e-15;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Index4_Joint_M_GRP3" -p "Index3_Joint_M_CTR2";
	rename -uid "FB882E5C-4502-5826-0C3D-899E91B8C65E";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 3.2332893329224532 -8.5265128291212022e-14 -2.6645352591003757e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index4_Joint_M_CTR3" -p "Index4_Joint_M_GRP3";
	rename -uid "A75C01AA-426B-B644-9117-F982A72CF93C";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 7.1054273576010019e-15 2.8421709430404007e-14 0 ;
	setAttr ".sp" -type "double3" 7.1054273576010019e-15 2.8421709430404007e-14 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index4_Joint_M_CTR3Shape" -p "Index4_Joint_M_CTR3";
	rename -uid "74E1E602-4971-244C-64B6-418C224561B9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.4210855e-14 0 0 1.4210855e-14 
		0 0 1.4210855e-14 0 0 1.4210855e-14 0 0 1.4210855e-14 0 0 1.4210855e-14 0 0 1.4210855e-14 
		0 0 1.4210855e-14 0 0;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "Index1_Joint_M_GRP0_parentConstraint1" -p "Index1_Joint_M_GRP0";
	rename -uid "331A8D18-4DFC-A74E-ED3E-73B6DAD7A72E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Wrist_Joint_M_CTR2W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.828881032004503 0.94274018076046673 1.8635468004911573 ;
	setAttr ".tg[0].tor" -type "double3" -1.0092244041090608 3.0999822843514702 -18.042724137798114 ;
	setAttr ".lr" -type "double3" -0.41112212616883465 1.2639271787728417 -18.019994523757084 ;
	setAttr ".rst" -type "double3" 74.171558231923584 138.46486980863392 0.30087549076042852 ;
	setAttr ".rsrr" -type "double3" -0.41112212616883465 1.2639271787728417 -18.019994523757081 ;
	setAttr -k on ".w0";
createNode transform -n "Thumb_Limb_M_NODE" -p "LIMBS";
	rename -uid "1CFB52AB-426E-4FD9-6902-DABD72C3D639";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom1:Custom2:Custom3:Custom4" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 4 -en "Body:Face:Fingers:Toes:Misc" 
		-at "enum";
	addAttr -ci true -sn "side" -ln "side" -min 0 -max 3 -en "M:L:R:-" -at "enum";
	addAttr -ci true -sn "joints" -ln "joints" -dt "string";
	addAttr -ci true -sn "enableLimb" -ln "enableLimb" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "limbParent" -ln "limbParent" -dt "string";
	addAttr -ci true -sn "limbChildren" -ln "limbChildren" -dt "string";
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 2 -en "Shoulder:Elbow:Wrist" 
		-at "enum";
	addAttr -ci true -sn "jointGroups" -ln "jointGroups" -dt "string";
	addAttr -ci true -sn "mirrorLimb" -ln "mirrorLimb" -at "long";
	addAttr -ci true -sn "bhvType" -ln "bhvType" -dt "string";
	addAttr -ci true -sn "bhvFile" -ln "bhvFile" -dt "string";
	addAttr -ci true -sn "limbGroups" -ln "limbGroups" -dt "string";
	addAttr -ci true -sn "usedGroups" -ln "usedGroups" -dt "string";
	addAttr -ci true -sn "channelBoxJointCtrPos" -ln "channelBoxJointCtrPos" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxJointCtrRot" -ln "channelBoxJointCtrRot" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxJointCtrScale" -ln "channelBoxJointCtrScale" -dv 
		1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxLimbCtrPos" -ln "channelBoxLimbCtrPos" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxLimbCtrRot" -ln "channelBoxLimbCtrRot" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "channelBoxLimbCtrScale" -ln "channelBoxLimbCtrScale" -dv 1 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "presets" -ln "presets" -dt "string";
	addAttr -ci true -sn "presetLimbChildren" -ln "presetLimbChildren" -dt "string";
	addAttr -ci true -sn "hasKeys" -ln "hasKeys" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "controlKeyframes" -ln "controlKeyframes" -dt "string";
	addAttr -ci true -sn "toBeBaked" -ln "toBeBaked" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bakeExternal" -ln "bakeExternal" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "animJoints" -ln "animJoints" -dt "string";
	addAttr -ci true -sn "enableEndControl" -ln "enableEndControl" -dv 1 -min 0 -max 
		1 -at "bool";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".ID" 9;
	setAttr ".pfrsName" -type "string" "Thumb";
	setAttr ".limbType" 4;
	setAttr ".limbLocation" 2;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Thumb1_Joint_M_GRP0" -p "Thumb_Limb_M_NODE";
	rename -uid "A8EC90B3-4856-CCE2-B440-C3AE22FF732D";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb1_Joint_M_CTR0" -p "Thumb1_Joint_M_GRP0";
	rename -uid "34D1D500-48D5-FE3C-EBAE-7FB252AA0CAC";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -7.1054273576010019e-15 -3.5527136788005009e-15 -2.8421709430404007e-14 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-15 -3.5527136788005009e-15 -2.8421709430404007e-14 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb1_Joint_M_CTR0Shape" -p "Thumb1_Joint_M_CTR0";
	rename -uid "554F108B-4E8C-5FC3-AC63-D5A11824FC27";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -7.1054274e-15 1.4210855e-14 
		0 -7.1054274e-15 1.4210855e-14 0 -7.1054274e-15 1.4210855e-14 0 -7.1054274e-15 1.4210855e-14 
		0 -7.1054274e-15 1.4210855e-14 0 -7.1054274e-15 1.4210855e-14 0 -7.1054274e-15 1.4210855e-14 
		0 -7.1054274e-15 1.4210855e-14 0;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Thumb2_Joint_M_GRP1" -p "Thumb1_Joint_M_CTR0";
	rename -uid "250C316B-45C3-A0DD-777F-DBAB15B62BA1";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 3.2816682663097403 -2.8421709430404007e-14 0 ;
	setAttr ".r" -type "double3" -5.9606342143343358 5.3378613369064531 -18.600450873808732 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000000000013 1.0000000000000009 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb2_Joint_M_CTR1" -p "Thumb2_Joint_M_GRP1";
	rename -uid "9E76F388-4178-00B1-0B60-05A0667A7578";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -7.1054273576010019e-15 -7.1054273576010019e-15 2.8421709430404007e-14 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-15 -7.1054273576010019e-15 2.8421709430404007e-14 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb2_Joint_M_CTR1Shape" -p "Thumb2_Joint_M_CTR1";
	rename -uid "B6282AC7-4A7F-D559-B329-5F94520777F7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 2.8421709e-14 -5.6843419e-14 
		0 2.8421709e-14 -5.6843419e-14 0 2.8421709e-14 -5.6843419e-14 0 2.8421709e-14 -5.6843419e-14 
		0 2.8421709e-14 -5.6843419e-14 0 2.8421709e-14 -5.6843419e-14 0 2.8421709e-14 -5.6843419e-14 
		0 2.8421709e-14 -5.6843419e-14;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Thumb3_Joint_M_GRP2" -p "Thumb2_Joint_M_CTR1";
	rename -uid "F1E59E03-41A1-621F-517A-0C9899D10DEC";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 4.0292311701752226 2.8421709430404007e-14 5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" -8.1010142476113103 7.6655622067222895 -24.468100029625642 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 1 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb3_Joint_M_CTR2" -p "Thumb3_Joint_M_GRP2";
	rename -uid "1FC80214-4B28-87C3-575E-90BD72AA62C4";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 -1.4210854715202004e-14 2.8421709430404007e-14 ;
	setAttr ".sp" -type "double3" 0 -1.4210854715202004e-14 2.8421709430404007e-14 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb3_Joint_M_CTR2Shape" -p "Thumb3_Joint_M_CTR2";
	rename -uid "A8A38884-46B1-8324-D2E5-23BF4466CBFB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -2.8421709e-14 0 5.6843419e-14 
		-2.8421709e-14 0 5.6843419e-14 -2.8421709e-14 0 5.6843419e-14 -2.8421709e-14 0 5.6843419e-14 
		-2.8421709e-14 0 5.6843419e-14 -2.8421709e-14 0 5.6843419e-14 -2.8421709e-14 0 5.6843419e-14 
		-2.8421709e-14 0 5.6843419e-14;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Thumb4_Joint_M_GRP3" -p "Thumb3_Joint_M_CTR2";
	rename -uid "D212898A-4DC5-5412-AC4F-80BBFF3F0659";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 2.8346696655482049 0 -1.7053025658242404e-13 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999956 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb4_Joint_M_CTR3" -p "Thumb4_Joint_M_GRP3";
	rename -uid "7BB57B39-46AA-9E71-05BE-3BBDCC6F7C55";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 7.1054273576010019e-15 0 -2.8421709430404007e-14 ;
	setAttr ".sp" -type "double3" 7.1054273576010019e-15 0 -2.8421709430404007e-14 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb4_Joint_M_CTR3Shape" -p "Thumb4_Joint_M_CTR3";
	rename -uid "950EC619-4183-F3CE-8DCC-8EBE41C7BA14";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.4210855e-14 2.8421709e-14 
		5.6843419e-14 -1.4210855e-14 2.8421709e-14 5.6843419e-14 -1.4210855e-14 2.8421709e-14 
		5.6843419e-14 -1.4210855e-14 2.8421709e-14 5.6843419e-14 -1.4210855e-14 2.8421709e-14 
		5.6843419e-14 -1.4210855e-14 2.8421709e-14 5.6843419e-14 -1.4210855e-14 2.8421709e-14 
		5.6843419e-14 -1.4210855e-14 2.8421709e-14 5.6843419e-14;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "Thumb1_Joint_M_GRP0_parentConstraint1" -p "Thumb1_Joint_M_GRP0";
	rename -uid "05456AB9-4238-23B4-CA23-DD8E8330EA73";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Wrist_Joint_M_CTR2W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.6690456837123833 -1.7312968437118741 1.78530679060471 ;
	setAttr ".tg[0].tor" -type "double3" 79.567375970139224 -28.083724241771325 -16.687143393948976 ;
	setAttr ".lr" -type "double3" 80.207063110069868 -29.931791922034211 -16.997433554294336 ;
	setAttr ".rst" -type "double3" 69.017286719265513 135.79083689430814 0.04882494863718323 ;
	setAttr ".rsrr" -type "double3" 80.207063110069868 -29.931791922034211 -16.997433554294336 ;
	setAttr -k on ".w0";
createNode transform -n "MESHES" -p "TEMP_RigRoot";
	rename -uid "E844F911-495C-D63C-EB1C-F0950E9FE011";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "Arm_Mesh" -p "MESHES";
	rename -uid "5B769362-4213-AA0C-1DED-7DAF7022DE01";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 86.415593355894089 3.5180826187133789 ;
	setAttr ".sp" -type "double3" 0 86.415593355894089 3.5180826187133789 ;
createNode mesh -n "Arm_MeshShape" -p "Arm_Mesh";
	rename -uid "0D8615C4-4480-C6D6-8627-A4BE8F85E784";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -dv 1 -at "long";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "backupMesh" -ln "backupMesh" -dt "string";
	addAttr -ci true -sn "pfrsSkinCluster" -ln "pfrsSkinCluster" -dt "string";
	addAttr -ci true -h true -sn "L002" -ln "L002" -dt "doubleArray";
	addAttr -ci true -h true -sn "J003" -ln "J003" -dt "doubleArray";
	addAttr -ci true -h true -sn "J002" -ln "J002" -dt "doubleArray";
	addAttr -ci true -h true -sn "L001" -ln "L001" -dt "doubleArray";
	addAttr -ci true -h true -sn "J001" -ln "J001" -dt "doubleArray";
	addAttr -ci true -h true -sn "L003" -ln "L003" -dt "doubleArray";
	addAttr -ci true -h true -sn "J005" -ln "J005" -dt "doubleArray";
	addAttr -ci true -h true -sn "J004" -ln "J004" -dt "doubleArray";
	addAttr -ci true -h true -sn "J006" -ln "J006" -dt "doubleArray";
	addAttr -ci true -h true -sn "J007" -ln "J007" -dt "doubleArray";
	addAttr -ci true -h true -sn "L004" -ln "L004" -dt "doubleArray";
	addAttr -ci true -h true -sn "J009" -ln "J009" -dt "doubleArray";
	addAttr -ci true -h true -sn "J008" -ln "J008" -dt "doubleArray";
	addAttr -ci true -h true -sn "J010" -ln "J010" -dt "doubleArray";
	addAttr -ci true -h true -sn "J011" -ln "J011" -dt "doubleArray";
	addAttr -ci true -h true -sn "L005" -ln "L005" -dt "doubleArray";
	addAttr -ci true -h true -sn "J013" -ln "J013" -dt "doubleArray";
	addAttr -ci true -h true -sn "J012" -ln "J012" -dt "doubleArray";
	addAttr -ci true -h true -sn "J014" -ln "J014" -dt "doubleArray";
	addAttr -ci true -h true -sn "L006" -ln "L006" -dt "doubleArray";
	addAttr -ci true -h true -sn "J015" -ln "J015" -dt "doubleArray";
	addAttr -ci true -h true -sn "L007" -ln "L007" -dt "doubleArray";
	addAttr -ci true -h true -sn "J017" -ln "J017" -dt "doubleArray";
	addAttr -ci true -h true -sn "J016" -ln "J016" -dt "doubleArray";
	addAttr -ci true -h true -sn "J018" -ln "J018" -dt "doubleArray";
	addAttr -ci true -h true -sn "J019" -ln "J019" -dt "doubleArray";
	addAttr -ci true -h true -sn "L008" -ln "L008" -dt "doubleArray";
	addAttr -ci true -h true -sn "J021" -ln "J021" -dt "doubleArray";
	addAttr -ci true -h true -sn "J020" -ln "J020" -dt "doubleArray";
	addAttr -ci true -h true -sn "J022" -ln "J022" -dt "doubleArray";
	addAttr -ci true -h true -sn "J023" -ln "J023" -dt "doubleArray";
	addAttr -ci true -h true -sn "L009" -ln "L009" -dt "doubleArray";
	addAttr -ci true -h true -sn "J025" -ln "J025" -dt "doubleArray";
	addAttr -ci true -h true -sn "J024" -ln "J024" -dt "doubleArray";
	addAttr -ci true -h true -sn "J026" -ln "J026" -dt "doubleArray";
	addAttr -ci true -h true -sn "J027" -ln "J027" -dt "doubleArray";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "uvSet1";
	setAttr ".cuvs" -type "string" "uvSet1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[1579]" -type "float3" 0 2.9802322e-08 -2.9802322e-08 ;
	setAttr ".pt[1698]" -type "float3" 0 2.9802322e-08 -2.9802322e-08 ;
	setAttr ".pt[1745]" -type "float3" 0 2.9802322e-08 -2.9802322e-08 ;
	setAttr ".pt[1751]" -type "float3" 0 2.9802322e-08 -2.9802322e-08 ;
	setAttr ".vcs" 2;
	setAttr ".pfrsVersion" 110;
	setAttr ".L002" -type "doubleArray" 304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0027614366743189157
		 0 0.006996079866485783 0.018860235065648195 0.032774172518414482 0.030485722030108308
		 0.01459762810362307 0.0035180078968451273 0.0017017729884576671 0.026713625558762583
		 0.092296154843164113 0.088786351782423029 0.027897735922871942 0.021415215734691007
		 0.088638504834502085 0.015242776901444237 0.079743251536178894 0.010924965521395406
		 0.074930886578447709 0.0091929729032459422 0.074158313919226213 0.0099205466523888865
		 0.067154818209562317 0.013102324568289204 0.068373503120887316 0.018447940258825783
		 0.074843333526775122 0.024356739032360027 0.082851855605029737 0.32069676428942351
		 0.29949721909911886 0.34172699474964352 0.35199265015982184 0.35203291276348642 0.3407243166627924
		 0.3203136538766696 0.3018334708861502 0.28780711328451852 0.28771997244962216 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.328520601609605 0.38095015648292263 0.42503223662083184
		 0.312739734612827 0.34641062747538487 0.35730280354650712 0.33875557857020289 0.33456926911322171
		 0.33672842261999841 0.31912616677955519 0.38946431982124813 0.30833623856099174 0.44749107582925535
		 0.31991123864664273 0.47048659631275064 0.3286537593836123 0.47344097516699174 0.32541641041741737
		 0.31742995333980095 0.4600259325128333 0.44549365933150264 0.47327786696077156 0.41561172332968371
		 0.39474919172505568 0.40094461969740708 0.43270647347644092 0.46648047747946092 0.48429647905077011
		 0.48991877335399847 0.48719292232977812 0.037904621778832297 0.059491841519050959
		 0.035125514967527645 0.02544440549404613 0.019702194365930011 0.033361107388141437
		 0.087748668304138924 0.14295850173053395 0.15072477543830803 0.11140629171560704
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".J003" -type "doubleArray" 304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99999999999999989
		 1 1 1 0.99999999999999989 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0.99999999999999989
		 0.99999999999999989 1 1 1 1 1 0.99999999999999989 0 0 0 0 0 0 0 0 0 0 0.99999999999999989
		 1 1 1 1 1 0.99999999999999989 1 1 0.99999999999999989 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".J002" -type "doubleArray" 304 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 1 1 1 0.99999999999999989 0.99999999999999989 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99999999999999989
		 1 1 0.99999999999999989 1 0.99999999999999989 1 1 1 0.99999999999999989 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0.99999999999999989
		 1 1 1 1 0.99999999999999989 1 0.99999999999999989 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ;
	setAttr ".L001" -type "doubleArray" 304 0.056869152747874768 0.03769951069638991
		 0.098742035937270947 0.12909356080243162 0.023919981089241326 0.076083430078984146
		 0.026069019472734115 0.080584957910198138 0.059521962058825845 0.13049496603837271
		 0.04223432222441325 0.10992475671112342 0.05999290520168573 0.1267667648310398 0.091381752765041749
		 0.15273286473632317 0.099084032085883983 0.16445599215498391 0.065189367117392691
		 0.1448833907409908 0.47597594878588828 0.19423931420122886 0.20276041012485263 0.47948508863913136
		 0.46919678128176051 0.18486352629811684 0.46999529025105968 0.17707159449877158 0.48095974742498421
		 0.17510324719403489 0.49784189680815144 0.18251506697061259 0.5 0.19581140201613054
		 0.5 0.20690220314637717 0.5 0.21107078983073796 0.49207428473129189 0.20896624014445117
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0.047829906403318259 0.043759165214065442 0.039201934089814837
		 0.035529625183123852 0.034148095913860775 0.036052134860637804 0.040801234775166
		 0.046220220572480319 0.049733229693052036 0.050167390908578427 0.34150180607262143
		 0.37477242501166663 0.32031538285925204 0.32871827803999221 0.33891047473832636 0.35018441268142558
		 0.3568630879793348 0.37615090650679911 0.39407698426547849 0.38613878637471866 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0.08712918922507587 0.12995189520761929 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0.11919794856973434 0 0 ;
	setAttr ".J001" -type "doubleArray" 304 1 1 0.99999999999999989 1 1 1 1 1 1 1
		 1 0.99999999999999989 1 1 1 1 1 0.99999999999999989 1 1 1 1 1 0.99999999999999989
		 1 1 0.99999999999999989 1 0.99999999999999989 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 0.99999999999999989 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99999999999999989
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ;
	setAttr ".L003" -type "doubleArray" 304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0.053092658472352269 0.079483310627969248
		 0 0 0.18386153800321642 0.25504097690191108 0 0 0 0 0 0 0 0 1 1 1 0 1 1 1 0.58852420627829249
		 0.9051225529063418 1 0.98514040656570923 0.87992600273870936 1 1 1 1 1 1 1 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".J005" -type "doubleArray" 304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 1 0.5 1 1 0 0.52521309159694485 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 1 0.49094991277629496 0.48801681919514567 0.49901516857986961 0 0.66171508370702403
		 0.68587679384587408 0.71459989334459595 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".J004" -type "doubleArray" 304 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
		 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 0 0 0 0 0 0 0.5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.50905008722370515
		 0.51198318080485439 0.50098483142013039 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ;
	setAttr ".J006" -type "doubleArray" 304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 1 0.4747869084030551 1 1 0 0 1 1 0 0 0 0 0 0 0 0
		 0 0 0 0 0 1 0.33828491629297602 0.31412320615412598 0.28540010665540416 1 1 0.98251638992841828
		 1 0.99999999999999989 0.85556793284692623 0.89437028328494972 0.9580352252933827
		 0.50763341155066566 0.5 0.5 0.50907178879223591 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".J007" -type "doubleArray" 304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0.99999999999999989 1 0 0 1 1 1 1 1 1 1 1
		 0 0 0 0 0 0 0 0 0 0 0 0.017483610071581716 0 0 0.14443206715307375 0.10562971671505032
		 0.041964774706617268 0.49236658844933429 0.5 0.5 0.49092821120776403 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".L004" -type "doubleArray" 304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 1 0 0 0
		 0.41147579372170751 0.094877447093658182 0 0.014859593434290792 0.12007399726129069
		 0 0 0 0 0 0 0 1 1 1 1 0.99999999999999989 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 ;
	setAttr ".J009" -type "doubleArray" 304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.05997619238746249
		 0.87298444041150902 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.45809150179140828 0.40634129218625531
		 0.45673449139323774 0.48493767609742672 0.91351762134323833 0.91467835978179091 0.90727755708987468
		 0.90803701690183702 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".J008" -type "doubleArray" 304 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
		 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.94002380761253757
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.54190849820859177 0.59365870781374475 0.54326550860676226
		 0.51506232390257323 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ;
	setAttr ".J010" -type "doubleArray" 304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0.12701555958849095
		 0 0 0 0.9198867872276133 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.08648237865676181
		 0.085321640218209177 0.092722442910125311 0.091962983098163045 0.96869365856858081
		 0.98272110329819273 0.98718532419315763 0.97593632507369887 0.90779474906468438 0.87749151495497268
		 0.89275123781440102 0.92653255661843115 0.5 0.5 0.5 0.5 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".J011" -type "doubleArray" 304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0.080113212772386755
		 0 0 0 1 1 1 1 0.99999999999999989 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0.031306341431419221
		 0.01727889670180734 0.012814675806842391 0.024063674926301189 0.092205250935315633
		 0.12250848504502733 0.10724876218559898 0.073467443381568853 0.5 0.5 0.5 0.5 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 ;
	setAttr ".L005" -type "doubleArray" 304 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 0.99999999999999989 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99999999999999989 1 1 1 1 0.99999999999999989
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 0.99999999999999989 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0.99999999999999989 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 0.48949476084628951 0.48682804765343124 0.48895650161890059 1 1 0.48378117990509861
		 0.48929277030611223 0.48854970387108421 0.48932422667512815 0.31429590529731638 0.32846048053358629
		 0.36411415458530072 0.33814606717812129 0.26365373332082931 0.19344943970546064 0.23863612875548379
		 0.2693373577076536 0.2354827352054952 0.16841737430033812 0.17852936083373741 0.14362083123506478
		 0.27333266290043839 0.43370779405015059 0.49999647921680701 0.35156765436718945 0.45697128848310276
		 0.49951748730576673 1 0.36310462050626835 0.31401441766786625 ;
	setAttr ".J013" -type "doubleArray" 304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99723856332568106
		 0 0.99300392013351424 0.98113976493435184 0.96722582748158548 0.96951427796989165
		 0.98540237189637692 0.99648199210315491 0.99829822701154236 0 0.90770384515683589
		 0.911213648217577 0 0 0.91136149516549791 0 0.92025674846382111 0 0.92506911342155229
		 0 0.92584168608077377 0 0.93284518179043774 0 0.9316264968791127 0 0.92515666647322492
		 0 0.91714814439497028 0.67930323571057649 0.70050278090088114 0.65827300525035648
		 0.64800734984017827 0.64796708723651364 0.65927568333720765 0.67968634612333034 0.6981665291138498
		 0.71219288671548142 0.71228002755037778 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.67147939839039494
		 0.61904984351707737 0.57496776337916822 0.687260265387173 0.65358937252461513 0.64269719645349288
		 0.66124442142979722 0.66543073088677829 0.66327157738000153 0.68087383322044492 0.61053568017875193
		 0.69166376143900832 0.5525089241707446 0.68008876135335727 0.52951340368724942 0.6713462406163877
		 0.52655902483300832 0.67458358958258269 0.68257004666019905 0.5399740674871667 0.55450634066849736
		 0.52672213303922844 0.58438827667031623 0.60525080827494426 0.59905538030259298 0.56729352652355902
		 0.53351952252053914 0.51570352094922989 0.51008122664600164 0.51280707767022182 0.96209537822116775
		 0.94050815848094904 0.96487448503247242 0.97455559450595397 0.98029780563406999 0.96663889261185854
		 0.91225133169586115 0.85704149826946607 0.84927522456169191 0.88859370828439299 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".J012" -type "doubleArray" 304 0.94313084725212526 0.96230048930361012
		 0.90125796406272907 0.87090643919756849 0.97608001891075868 0.9239165699210159 0.9739309805272659
		 0.91941504208980185 0.94047803794117413 0.86950503396162737 0.95776567777558674 0.89007524328887655
		 0.94000709479831424 0.87323323516896023 0.90861824723495821 0.84726713526367681 0.9009159679141161
		 0.83554400784501615 0.93481063288260735 0.85511660925900934 0.52402405121411177 0.80576068579877125
		 0.79723958987514731 0.52051491136086869 0.53080321871823943 0.81513647370188314 0.53000470974894032
		 0.82292840550122848 0.51904025257501574 0.82489675280596519 0.50215810319184861 0.81748493302938741
		 0.5 0.80418859798386944 0.5 0.79309779685362292 0.5 0.78892921016926199 0.50792571526870811
		 0.7910337598555488 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.97328637444123745
		 0 0 0.97210226407712808 0.97858478426530904 0 0.98475722309855573 0 0.98907503447860468
		 0 0.99080702709675406 0 0.99007945334761116 0 0.98689767543171081 0 0.98155205974117421
		 0 0.97564326096763998 0 0 0 0 0 0 0 0 0 0 0 0.9521700935966817 0.95624083478593458
		 0.96079806591018513 0.96447037481687614 0.96585190408613919 0.96394786513936226 0.95919876522483405
		 0.95377977942751968 0.95026677030694795 0.94983260909142153 0.65849819392737852 0.62522757498833337
		 0.6796846171407479 0.67128172196000779 0.66108952526167364 0.64981558731857436 0.64313691202066525
		 0.62384909349320095 0.60592301573452145 0.61386121362528134 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0.91287081077492416
		 0.87004810479238071 1 0.99999999999999989 1 0.99999999999999989 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0.99999999999999989 1 1 1 0.99999999999999989 0.88080205143026569 1 1 ;
	setAttr ".J014" -type "doubleArray" 304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0 0 0 0.98361695938909166 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.94717786505263646 0.99119072644964079
		 0 0.99233221370512226 0.99237724332061183 0.99817201557915092 0.99887422141161586
		 0.98529327153057245 0.98233505347025041 0.91428176568787245 0.64584416163699621 0.9511932017909609
		 0.99172414299552258 0.99610710331008057 0.98626212318744078 0.98720503693973161 0
		 0.72196932036250627 0.95306599719791429 0.9962120727549949 0.97746695234659575 0.98685038981547091
		 0.9887670012759846 0.98166993736582187 0.97296492800596135 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.9955592663204752 0 0.99642562023377923 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 ;
	setAttr ".L006" -type "doubleArray" 304 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 0.99999999999999989 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99999999999999989 1 1 1 1 0.99999999999999989
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 0.99999999999999989 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0.99999999999999989 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ;
	setAttr ".J015" -type "doubleArray" 304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0.51050523915371049 0.51317195234656876 0.51104349838109941 0 0
		 0.5162188200949015 0.51070722969388782 0.51145029612891579 0.5106757733248718 0.68570409470268356
		 0.67153951946641377 0.63588584541469939 0.66185393282187865 0.73634626667917069 0.80655056029453931
		 0.76136387124451632 0.73066264229234645 0.76451726479450477 0.8315826256996619 0.82147063916626262
		 0.85637916876493525 0.72666733709956155 0.56629220594984941 0.5000035207831931 0.64843234563281049
		 0.54302871151689724 0.50048251269423327 0 0.63689537949373165 0.6859855823321338 ;
	setAttr ".L007" -type "doubleArray" 304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 1 0 0 0.016383040610908343 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.052822134947363659
		 0.0088092735503592871 0 0.007667786294877796 0.0076227566793881617 0.0018279844208490368
		 0.0011257785883840999 0.014706728469427539 0.017664946529749703 0.08571823431212755
		 0.35415583836300374 0.048806798209039153 0.0082758570044773726 0.0038928966899193858
		 0.013737876812559242 0.012794963060268368 0 0.27803067963749373 0.046934002802085713
		 0.0037879272450051372 0.022533047653404192 0.013149610184529089 0.011232998724015422
		 0.018330062634178149 0.027035071994038713 0 0 0 0 0 0 0 0 1 0 1 1 1 0 1 1 0.94690734152764777
		 0.92051668937203079 0.95595880705673075 0.98765029911100011 0.81613846199678364 0.74495902309808892
		 0.81128965016662502 0.96781350381478837 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0044407336795247677 0 0.0035743797662208514
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".J017" -type "doubleArray" 304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.03137329866653079 1 1 0 1 0 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.47665308989431543 1 0.39597915443435128
		 0.46237767628424531 0.82996007633781876 0 0.83291084262249515 0.90270335460715934
		 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 1 1 1 1
		 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".J016" -type "doubleArray" 304 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.96862670133346918 0 0 1 0 1 0 0 0 0
		 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 1 1 1 0.99999999999999989
		 1 1 1 0.99999999999999989 1 1 1 1 1 0.99999999999999989 1 1 1 1 1 1 0.99999999999999989
		 1 1 1 1 0 0 0 0 0 0 0 0 0.52334691010568468 0 0.60402084556564883 0.53762232371575469
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0.99999999999999989 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ;
	setAttr ".J018" -type "doubleArray" 304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0.17003992366218124 1 0.1670891573775049 0.097296645392840678
		 0.99999999999999989 1 1 1 1 0.99999999999999989 1 1 0.50408152928612326 0.5 0.5 0.50790754159065443
		 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 ;
	setAttr ".J019" -type "doubleArray" 304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.49591847071387668 0.5 0.5
		 0.49209245840934557 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".L008" -type "doubleArray" 304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0.9793135993081743
		 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0.044041192943269324 0.012349700888999922
		 0 0 0.18871034983337509 0.032186496185211529 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".J021" -type "doubleArray" 304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.410899727687011 0.32591237810178314
		 0 0.28484458064101831 0.025662114101742017 0.3831007966038007 0.84704110189976289
		 0.82903529586545566 0.85576410397721236 0.87312119519290343 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 0 0 1 0 0 0
		 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".J020" -type "doubleArray" 304 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.58910027231298911 0.67408762189821692
		 1 0.71515541935898175 0.97433788589825798 0.6168992033961993 0 0 0 0 0 0 0 0 0 0
		 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ;
	setAttr ".J022" -type "doubleArray" 304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.15295889810023713 0.17096470413454443
		 0.14423589602278766 0.1268788048070966 0.98366059351424839 0.98406892025034054 0.98434388653105387
		 1 0.95132247465884712 0.92253561882616553 0.90581809340146913 0.93919584654977906
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 1 1 1 1 0.53767165645643267 0.50989938278494262 0.51467288020329338 0.54007419588606664
		 0 0 0 0 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 1 1 1 1 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 1 1 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".J023" -type "doubleArray" 304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.016339406485751634
		 0.015931079749659464 0.015656113468946235 0 0.048677525341152897 0.077464381173834487
		 0.094181906598530818 0.060804153450220985 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.46232834354356733 0.49010061721505743
		 0.48532711979670656 0.45992580411393341 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0
		 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 ;
	setAttr ".L009" -type "doubleArray" 304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.020686400691825677
		 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99999999999999989 1 1 1 1 0 0 1 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".J025" -type "doubleArray" 304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0.49703484971912226 0.98504248166924235 0.94243984083159715 0.93172401569685248 0.4716307694018913
		 0.93073900810241383 0.4794453754832731 0.93343129413884518 0.78859727062814133 0.67500105986650838
		 0.65178819589632375 0.76382652683830499 0 0 0 0 0 0 0 0 1 0 0.052405656768669096
		 0 0 0 0 0 0 0 1 0 0 0 0 0 0.33629417939605416 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0
		 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".J024" -type "doubleArray" 304 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0.50296515028087774 0 0 0 0.5283692305981087 0 0.52055462451672696 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 1 0.94759434323133085 1 1 1 1 1 1 1 0 1 1 1 1 1 0.66370582060394578
		 0 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 ;
	setAttr ".J026" -type "doubleArray" 304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0.014957518330757641 0.057560159168402861 0.068275984303147533 0 0.069260991897586263
		 0 0.066568705861154875 0.21140272937185861 0.32499894013349157 0.34821180410367625
		 0.23617347316169499 0.96990081918191706 0.97554743686569267 0.98030875462815215 0.9755910666998554
		 0.90431081841584315 0.86256158309693931 0.88168724113207819 0.92799514790452964 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0.50329548306315885 0.50269373423004193
		 0.5 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".J027" -type "doubleArray" 304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1
		 0 0 0 0 0 0 0 0 0 0 0 0 0.030099180818082941 0.024452563134307305 0.019691245371847892
		 0.024408933300144719 0.095689181584156943 0.1374384169030608 0.11831275886792178
		 0.07200485209547039 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0.4967045169368412
		 0.49730626576995807 0.5 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 ;
createNode mesh -n "Arm_MeshShapeOrig" -p "Arm_Mesh";
	rename -uid "B6E3F78F-459D-639B-F63E-649019F94215";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "uvSet1";
	setAttr -s 403 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.82559997 0.58169997 0.82909995
		 0.56779999 0.84359998 0.57679999 0.83859998 0.59310001 0.85829997 0.58459997 0.85359997
		 0.60439998 0.87489998 0.5905 0.86969995 0.61379999 0.89019996 0.59369999 0.88679999
		 0.61799997 0.90449995 0.61869997 0.90569997 0.59469998 0.92249995 0.61409998 0.92329997
		 0.59349996 0.94 0.60719997 0.93949997 0.58999997 0.95549995 0.5995 0.9558 0.5851
		 0.97289997 0.59389997 0.97279996 0.58179998 0.81029999 0.57190001 0.8136 0.56029999
		 0.84849995 0.542 0.83379996 0.53859997 0.83959997 0.51730001 0.85359997 0.52090001
		 0.86379999 0.54509997 0.86809999 0.52419996 0.87970001 0.54789996 0.88319999 0.52719998
		 0.89599997 0.5503 0.89889997 0.52969998 0.9145 0.5316 0.91229999 0.55229998 0.92979997
		 0.53279996 0.92839998 0.5539 0.94459999 0.53329998 0.94400001 0.55500001 0.95899999
		 0.5334 0.95909995 0.55549997 0.9734 0.53310001 0.97399998 0.55579996 0.81939995 0.53499997
		 0.8258 0.5133 0.91569996 0.84919995 0.9242 0.83939999 0.93289995 0.84429997 0.9253
		 0.85409999 0.94169998 0.86799997 0.94879997 0.8556 0.95729995 0.85999995 0.95190001
		 0.87199998 0.93419999 0.86149997 0.94089997 0.84969997 0.9386 0.83590001 0.93179995
		 0.82959998 0.96269995 0.8488 0.95459998 0.84509999 0.94629997 0.84119999 0.94459999
		 0.82819998 0.93889999 0.82199997 0.96609998 0.8387 0.95909995 0.83599997 0.95159996
		 0.83309996 0.94849998 0.82349998 0.94400001 0.8175 0.96799999 0.83219999 0.96129996
		 0.83019996 0.95469999 0.82799995 0.82779998 0.7274 0.83989996 0.7263 0.84219998 0.7331
		 0.83669996 0.73429996 0.8272 0.71619999 0.84039998 0.71719998 0.8312 0.7062 0.84279996
		 0.7098 0.84179997 0.69799995 0.84709996 0.70039999 0.84649998 0.73269999 0.84630001
		 0.72609997 0.847 0.71789998 0.84779996 0.7112 0.85109997 0.7022 0.85349995 0.73189998
		 0.85319996 0.72600001 0.85369998 0.71869999 0.85469997 0.713 0.85749996 0.70519996
		 0.85839999 0.7317 0.8581 0.7256 0.8585 0.71959996 0.85939997 0.71399999 0.86189997
		 0.70739996 0.82690001 0.7385 0.83359998 0.74439996 0.80729997 0.72649997 0.81159997
		 0.71319997 0.79069996 0.77069998 0.79809999 0.77999997 0.79119998 0.78380001 0.78369999
		 0.7755 0.7726 0.76550001 0.77939999 0.759 0.80309999 0.75779998 0.81079996 0.74949998
		 0.82119995 0.7604 0.81259996 0.7687 0.79229999 0.74519998 0.79909998 0.73649997 0.79579997
		 0.76499999 0.78499997 0.75369996 0.82919997 0.69119996 0.82519996 0.6803 0.83660001
		 0.67309999 0.84369999 0.68239999 0.81169999 0.70129997 0.80879998 0.69069999 0.81979996
		 0.6706 0.81559998 0.66339999 0.82549995 0.65749997 0.83019996 0.66399997 0.80500001
		 0.67919999 0.8506 0.69159997 0.8276 0.75169998 0.81819999 0.7421 0.86549997 0.73049998
		 0.86439997 0.72529995 0.86449999 0.72029996 0.86570001 0.7155 0.86750001 0.71090001
		 0.87039995 0.71669996 0.86919999 0.72139996 0.954 0.81799996 0.95029998 0.81339997
		 0.96899998 0.8247 0.96359998 0.82339996 0.95829999 0.82129997 0.95749998 0.81339997
		 0.96179998 0.81669998 0.949 0.98439997 0.94759995 0.9702 0.95819998 0.96809995 0.95919997
		 0.98199999 0.93669999 0.98439997 0.93669999 0.97059995 0.97079998 0.97969997 0.96879995
		 0.96699995 0.9799 0.96699995 0.98179996 0.98079997 0.95699996 0.95749998 0.94709998
		 0.95729995 0.93719995 0.95709997 0.97779995 0.9533 0.96739995 0.9562 0.95609999 0.94689995
		 0.94709998 0.94619995 0.93869996 0.9454 0.97419995 0.94159997 0.96559995 0.94529998
		 0.95549995 0.94019997 0.94759995 0.93919998 0.94 0.93789995 0.97119999 0.93479997
		 0.96399999 0.93869996 0.9551 0.9314 0.94839996 0.93119997 0.94239998 0.92999995 0.96709996
		 0.92769998 0.9612 0.93039995 0.94869995 0.92479998 0.95529997 0.92509997 0.94329995
		 0.7051 0.94199997 0.69119996 0.95159996 0.68970001 0.95209998 0.70389998 0.93219995
		 0.70449996 0.93219995 0.69139999 0.96289998 0.70169997 0.96139997 0.68909997 0.97149998
		 0.68909997 0.97359997 0.70199996 0.9508 0.67979997 0.9418 0.67939997 0.93289995 0.67899996
		 0.96969998 0.67640001 0.96029997 0.6789 0.95019996 0.67030001 0.94199997 0.66939998
		 0.93449998 0.66850001 0.9666 0.66579998 0.95879996 0.66899997 0.94979995 0.66420001
		 0.94259995 0.6631 0.93579996 0.66179997 0.9641 0.65959996 0.95749998 0.66299999 0.94959998
		 0.65630001 0.9436 0.6559 0.93809998 0.6548 0.96039999 0.65319997 0.9551 0.65549999
		 0.94389999 0.65020001 0.94989997 0.65059996 0.92799997 0.78179997 0.92569995 0.77179998
		 0.93289995 0.76889998 0.93579996 0.77919996 0.91969997 0.78209996 0.91839999 0.77269995
		 0.90979999 0.78149998 0.91060001 0.77160001 0.90129995 0.78209996 0.90279996 0.77089995
		 0.93109995 0.76299995 0.92429996 0.76440001 0.91789997 0.76499999 0.9109 0.76539999
		 0.90379995 0.7647 0.9285 0.7554 0.92259997 0.75639999 0.91729999 0.75699997 0.91149998
		 0.75769997 0.90539998 0.75699997 0.92699999 0.75079995 0.92159998 0.75159997 0.91679996
		 0.75229996 0.91179997 0.75309998 0.90629995 0.7525 0.9249 0.74489999 0.92039996 0.74610001
		 0.91609997 0.74689996 0.91179997 0.74729997 0.9077 0.74680001 0.91529995 0.74250001
		 0.91959995 0.74169999 0.80429995 0.7755 0.80269998 0.67210001 0.79729998 0.7137 0.7931
		 0.72179997 0.79719996 0.70589995 0.79389995 0.69549996 0.78959996 0.68579996 0.7863
		 0.67809999 0.76629996 0.74809998 0.76049995 0.7536 0.77249998 0.74239999 0.77989995
		 0.7353 0.78740001 0.7281 0.85029995 0.47619998;
	setAttr ".uvst[0].uvsp[250:402]" 0.8373 0.47319999 0.8416 0.45639998 0.85539997
		 0.45799997 0.86369997 0.47959998 0.86909997 0.45989999 0.88279998 0.46269998 0.87720001
		 0.48299998 0.89539999 0.4657 0.89109999 0.48619998 0.9077 0.46779999 0.90499997 0.48879999
		 0.91859996 0.49079999 0.91969997 0.47039998 0.9321 0.49179998 0.93219995 0.47169998
		 0.9454 0.4919 0.94559997 0.47259998 0.95849997 0.49149999 0.95899999 0.47319999 0.9716
		 0.49109998 0.97279996 0.4734 0.84619999 0.43869999 0.85969996 0.44049999 0.87289995
		 0.44189999 0.88559997 0.44349998 0.89819998 0.44619998 0.90999997 0.44859999 0.92179996
		 0.45109999 0.93439996 0.45289999 0.94689995 0.45459998 0.95999998 0.45539999 0.97349995
		 0.45499998 0.84499997 0.4982 0.85869998 0.50119996 0.8872 0.50629997 0.87279999 0.50389999
		 0.90179998 0.50849998 0.93059999 0.51209998 0.9163 0.51050001 0.9447 0.51319999 0.95859998
		 0.51370001 0.97249997 0.51349998 0.83169997 0.4948 0.84619999 0.55939996 0.83159995
		 0.55320001 0.86109996 0.56489998 0.87729996 0.56919998 0.89309996 0.5722 0.9091 0.57359999
		 0.92579997 0.57379997 0.94169998 0.57239997 0.95739996 0.57029998 0.9734 0.56909996
		 0.81639999 0.54789996 0.8707 0.40009999 0.8585 0.39769998 0.86499995 0.3784 0.87659997
		 0.38079998 0.88189995 0.4021 0.88689995 0.3829 0.8926 0.40419999 0.89649999 0.38499999
		 0.90649998 0.3874 0.90349996 0.4066 0.91779995 0.38999999 0.91529995 0.40919998 0.92899996
		 0.39219999 0.92699999 0.41149998 0.9393 0.3935 0.93799996 0.4131 0.949 0.39389998
		 0.94869995 0.41389999 0.94059998 0.3732 0.94919997 0.37359998 0.95999998 0.41369998
		 0.95929998 0.3935 0.97189999 0.41239998 0.97079998 0.39219999 0.86499995 0.42039999
		 0.85189998 0.4183 0.87729996 0.42209998 0.889 0.42389998 0.90059996 0.42629999 0.91259998
		 0.42899999 0.92460001 0.43149999 0.93629998 0.43349999 0.94799995 0.43469998 0.96019995
		 0.43489999 0.97309995 0.43379998 0.88259995 0.3612 0.8714 0.35889998 0.87769997 0.3396
		 0.88819999 0.3418 0.89209998 0.36300001 0.89569998 0.34379998 0.91289997 0.34809998
		 0.90979999 0.36719999 0.90059996 0.36499998 0.90459996 0.3459 0.92309999 0.3506 0.92049998
		 0.3698 0.94189996 0.35339999 0.93119997 0.37189999 0.93329996 0.35249999 0.94999999
		 0.35349998 0.9587 0.37309998 0.95809996 0.35279998 0.96959996 0.37180001 0.9684 0.3515
		 0.58109999 0.6318 0.5614 0.62559998 0.58819997 0.60719997 0.60369998 0.62519997 0.60569996
		 0.64459997 0.57749999 0.64699996 0.61129999 0.66329998 0.5819 0.6699 0.61879998 0.68019998
		 0.5934 0.69129997 0.65369999 0.66850001 0.68089998 0.66859996 0.67640001 0.68849999
		 0.65099996 0.68529999 0.6548 0.65059996 0.6803 0.64819998 0.65399998 0.63229996 0.67159998
		 0.62779999 0.64590001 0.61689997 0.6573 0.60829997 0.63139999 0.60600001 0.63260001
		 0.597 0.5521 0.65369999 0.5571 0.6753 0.56959999 0.69769996 0.70289999 0.67159998
		 0.69760001 0.69549996 0.71259999 0.64849997 0.53259999 0.67449999 0.54140002 0.68979996
		 0.55089998 0.70749998 0.72289997 0.68689996 0.71579999 0.70159996 0.73339999 0.6735
		 0.60960001 0.59939998 0.51779997 0.66439998 0.52399999 0.6415 0.52929997 0.62309998
		 0.53069997 0.60329998 0.55430001 0.60339999 0.57260001 0.59200001 0.61390001 0.61079997
		 0.7026 0.61919999 0.69549996 0.59429997;
	setAttr ".cuvs" -type "string" "uvSet1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 304 ".vt";
	setAttr ".vt[0:165]"  17.64957809 133.10853577 0.43187857 16.4513855 135.32743835 2.47252083
		 19.99689484 135.73228455 2.15175247 20.57501602 133.44755554 0.27611399 15.62722397 138.61839294 2.54582095
		 19.5083313 138.71292114 2.20732641 15.4030447 141.6781311 0.61482096 19.068147659 141.67114258 0.41141033
		 15.55090523 143.8441925 -2.58337927 19.12698364 143.36856079 -2.551332 15.35710716 141.80117798 -5.82597876
		 19.02570343 141.78997803 -5.55179739 16.098987579 138.9490509 -7.87577868 19.44604492 138.90556335 -7.44241476
		 17.40219307 135.69195557 -7.94371939 19.92806625 135.92459106 -7.49823904 18.51460648 133.49461365 -5.99203157
		 20.52467728 133.56588745 -5.68700647 16.87916756 131.81132507 -2.82087851 20.63389015 132.64874268 -2.72167635
		 27.15980148 135.62272644 2.030993938 31.29555321 135.70014954 1.8364327 31.27090073 133.52668762 0.17517853
		 27.26068115 133.4662323 0.29145765 27.31535339 138.50289917 2.10354042 31.21886063 138.43229675 1.90499592
		 27.38189697 140.86811829 0.47101021 31.067630768 140.68009949 0.34862852 27.33087158 141.81471252 -2.25431585
		 30.89760399 141.58099365 -2.24764013 27.18671989 140.98146057 -5.012108326 30.77482796 140.78807068 -4.87543535
		 27.013317108 138.68644714 -6.76797056 30.75084496 138.60671997 -6.54059553 26.87193489 135.80628967 -6.84104967
		 30.83160782 135.87420654 -6.60088491 27.079090118 133.57972717 -5.1916852 30.98319435 133.6341095 -5.035246372
		 27.12322426 132.63296509 -2.46597719 31.15095329 132.73828125 -2.44534922 74.69351196 139.2611084 -0.94236898
		 74.44267273 137.16436768 -0.94203043 76.68326569 136.50608826 -0.70561647 77.060722351 138.35519409 -0.77272463
		 74.39290619 139.18041992 1.15126371 77.052070618 138.40585327 1.097191334 74.21689606 137.32824707 1.26547194
		 76.67622375 136.56735229 1.12009573 78.46842194 135.95359802 -0.69626379 79.29172516 137.50076294 -0.74817324
		 79.29238129 137.55038452 1.0008893013 78.46910095 136.002532959 1.030914783 80.056266785 135.2706604 -0.56774712
		 81.043045044 136.43540955 -0.6032958 81.04384613 136.47775269 0.89190769 80.0570755 135.31277466 0.92133284
		 80.93813324 134.64372253 -0.50839376 81.98883057 135.540802 -0.53411913 81.98960876 135.58001709 0.86241865
		 80.93897247 134.68309021 0.88854074 71.50484467 136.14195251 2.45222831 73.041809082 135.59051514 1.25127888
		 74.10103607 135.30503845 1.54360223 73.59384155 135.44544983 2.93162417 70.70293427 134.30737305 2.40492201
		 73.1202774 133.63458252 2.95224953 71.52179718 133.74435425 0.82028341 73.53816986 133.40863037 1.51414371
		 74.90614319 135.060821533 1.64824581 74.90802765 135.0887146 3.031137228 74.50540924 133.29533386 3.069710016
		 74.4913559 133.26023865 1.67964149 76.20606995 134.64619446 1.70242023 76.32800293 134.6428833 2.89012957
		 75.98104858 133.092788696 2.92348027 75.86307526 133.088424683 1.73181605 77.094711304 134.3445282 1.58362579
		 77.34799957 134.31407166 2.78304815 77.045272827 132.95974731 2.81206822 76.79714203 132.98594666 1.61049342
		 72.61949921 137.5100708 1.72848392 68.41835022 137.53622437 1.18202543 68.019630432 134.987854 1.32946777
		 71.60823059 138.69256592 -6.42316866 71.46512604 137.0016937256 -6.41870832 73.63767242 137.091949463 -6.79069185
		 73.93009949 138.60980225 -6.78760481 68.52640533 138.34837341 -5.82079363 68.61301422 136.54458618 -5.8549943
		 71.74588013 139.56483459 -3.020962238 74.55570984 139.049194336 -3.27989435 71.73491669 139.60945129 -0.78478193
		 68.55794525 139.4744873 -2.62440205 68.40161896 139.17462158 -0.56694937 71.64396667 139.29289246 -5.043710232
		 68.60438538 139.36376953 -4.77331781 71.760849 135.60119629 -1.021801472 74.22252655 137.044525146 -3.19855165
		 71.79837036 136.36174011 -2.99117899 68.38674927 134.31213379 -0.76109076 68.55239105 134.84768677 -2.69217539
		 71.73179626 136.26454163 -5.04790163 73.92055511 137.016723633 -5.29712629 68.61444092 135.56826782 -4.84003401
		 71.7724762 138.96969604 1.17407942 78.27714539 133.85377502 1.36361265 78.45088959 133.83677673 2.31527281
		 78.24000549 132.89321899 2.33543801 78.066314697 132.91015625 1.38377333 81.98619843 133.64962769 -0.32009506
		 82.83223724 134.38726807 -0.3412509 82.83280182 134.41744995 0.72969294 81.98670197 133.67988586 0.75085402
		 76.75371552 136.21357727 -3.023532391 77.18735504 138.27233887 -3.096809864 77.17777252 138.32858276 -1.011611462
		 76.74578857 136.28190613 -0.9835453 78.67917633 135.61727905 -3.0089621544 79.60347748 137.34851074 -3.066604137
		 79.60412598 137.40412903 -1.10966635 78.68000031 135.67218018 -1.075326443 80.45281982 134.84924316 -2.86601877
		 81.55956268 136.15557861 -2.90593195 81.56036377 136.20303345 -1.22945261 80.45365143 134.89639282 -1.19636679
		 81.44114685 134.14364624 -2.79972124 82.6198349 135.14996338 -2.8285985 82.62075806 135.19398499 -1.26183939
		 81.44206238 134.18791199 -1.23265982 82.61670685 133.026702881 -2.58853388 83.56612396 133.85414124 -2.6124177
		 83.5668335 133.88795471 -1.41069984 82.61748505 133.060577393 -1.38692379 74.2405777 138.73092651 -5.33697844
		 76.51182556 136.24969482 -5.18482256 76.90193939 138.11671448 -5.25383043 76.89323425 138.1678772 -3.35550356
		 76.50479889 136.31170654 -3.33191156 78.30773926 135.70352173 -5.17328978 79.14608002 137.26898193 -5.22660112
		 79.146698 137.3192749 -3.45183992 78.30845642 135.75325012 -3.42122126 79.90919495 135.023742676 -5.041534901
		 80.91052246 136.20321655 -5.0777421 80.91131592 136.24609375 -3.5619607 79.90999603 135.066375732 -3.53207827
		 80.79890442 134.39407349 -4.98065233 81.86333466 135.30300903 -5.0067639351 81.86422729 135.34272766 -3.5916667
		 80.79969788 134.43395996 -3.56524515 81.85816956 133.39016724 -4.7895093 82.715271 134.13739014 -4.81102037
		 82.71585083 134.16781616 -3.72612619 81.85871124 133.42080688 -3.70461226 75.58790588 136.63925171 -6.77716303
		 75.82848358 138.11126709 -6.82991076 75.91809082 138.12826538 -5.36146688 75.67601776 136.66531372 -5.34994364
		 76.68361664 136.30404663 -6.78169203 77.28430939 137.52059937 -6.84353685 77.3738327 137.53805542 -5.48690271
		 76.7717514 136.32145691 -5.45173883 78.0099105835 135.73406982 -6.738132 78.74026489 136.61233521 -6.79373789
		 78.8137207 136.62712097 -5.67209387 78.082931519 135.74887085 -5.62558413;
	setAttr ".vt[166:303]" 78.70270538 135.25541687 -6.7240386 79.47271729 135.91282654 -6.77394342
		 79.53964233 135.92648315 -5.75080252 78.76969147 135.26922607 -5.70040083 79.48531342 134.52891541 -6.62848711
		 80.097221375 135.062683105 -6.66851854 80.14782715 135.073104858 -5.89399576 79.53593445 134.539505 -5.85386705
		 65.75784302 136.22879028 0.4547019 65.77718353 137.99789429 0.32274199 65.77876282 135.36044312 -0.73734617
		 65.6167984 134.90132141 -2.75308752 65.4544754 135.33453369 -4.69512415 65.32470703 136.39059448 -5.8672986
		 65.30457306 137.94619751 -5.89898062 65.36611938 139.13150024 -4.73163843 65.51069641 139.59388733 -2.79368639
		 65.66979218 139.1602478 -0.84022951 39.062389374 133.76300049 -0.50940561 42.54379654 133.88735962 -0.38314486
		 42.25654602 133.073043823 -2.90868044 38.94816971 133.046218872 -2.87962484 38.94909286 135.7376709 1.0029706955
		 42.65752029 136.030731201 1.18609381 38.65345383 138.2170105 1.079310894 42.49251938 138.79302979 1.1967659
		 38.2896347 140.25392151 -0.30939436 42.17451859 140.96260071 -0.28613043 37.99637985 141.069625854 -2.63282061
		 42.018600464 141.82391357 -2.76421785 37.88447571 140.35160828 -5.0027880669 41.73703766 141.038909912 -5.2507987
		 37.99669647 138.37487793 -6.51462126 41.78501892 138.91777039 -6.83182955 38.28939819 135.89546204 -6.59081125
		 41.94612122 136.1605835 -6.89084673 38.65215302 133.86050415 -5.20236635 42.102211 133.97097778 -5.399652
		 46.02696228 134.046447754 -0.35006952 45.76744843 133.26690674 -2.8682704 46.28445053 136.14903259 1.18925714
		 46.44261932 138.74133301 1.14886332 46.34246445 141.0049438477 -0.34436274 46.17613983 141.82264709 -2.81151152
		 45.91727066 141.066146851 -5.28329515 45.75948334 138.84068298 -6.82623434 45.60362244 136.25372314 -6.84315348
		 45.60994339 134.11528015 -5.34441328 34.97368622 133.73512268 -0.0795784 35.028671265 135.81535339 1.4991951
		 34.960495 138.42123413 1.55544496 34.793293 140.55708313 0.071342468 34.59011459 141.41088867 -2.38756943
		 34.42995453 140.65953064 -4.88006544 34.37621307 138.58718872 -6.4637332 34.44705582 135.98155212 -6.52882814
		 34.61319733 133.83804321 -5.045008183 34.81428146 132.97920227 -2.57930231 23.83736038 135.90698242 2.11288857
		 24.12900734 133.60646057 0.30572224 23.61271858 138.8309021 2.17539549 23.52634621 141.43261719 0.46632671
		 23.42808723 142.39868164 -2.38307714 23.41558647 141.5486908 -5.25829268 23.43854523 139.018814087 -7.08723402
		 23.66098404 136.095001221 -7.14979696 24.013217926 133.72239685 -5.41882372 24.045326233 132.73310852 -2.57384682
		 54.1468277 134.5549469 -0.5591445 58.0022087097 134.82188416 -0.6182189 57.81150055 134.24511719 -2.804317
		 53.92218399 133.91821289 -2.82983065 54.32014084 136.25045776 0.81081152 58.11248016 136.34860229 0.69195223
		 54.4009552 138.33470154 0.7358613 58.1336174 138.22418213 0.60028791 58.05973053 139.73460388 -0.68021154
		 54.36297226 140.013702393 -0.60255051 57.90327835 140.31202698 -2.81035566 54.20548248 140.66107178 -2.81832457
		 57.72515106 139.74006653 -4.93250036 53.99230957 140.037414551 -5.030581951 57.60176468 138.23106384 -6.22758341
		 53.81096649 138.37121582 -6.38930368 57.56720352 136.36090088 -6.21445513 53.71919632 136.29171753 -6.38647699
		 53.76388931 134.58380127 -5.046337605 57.65338135 134.83361816 -4.9294982 50.083786011 134.27749634 -0.40661001
		 49.81076813 133.55635071 -2.84002924 50.32938385 136.20584106 1.070008755 50.46965027 138.57699585 1.009885788
		 50.46256638 140.48783875 -0.43257952 50.29645157 141.23071289 -2.81001139 50.039459229 140.53268433 -5.18850946
		 49.79262161 138.64707947 -6.65849638 49.63911438 136.27908325 -6.66698694 49.6434288 134.32485962 -5.22508478
		 61.92330551 135.093444824 -0.67826462 61.72754669 134.5743103 -2.77850771 62.027332306 136.44992065 0.56911135
		 62.044654846 138.10838318 0.45830393 61.97310638 139.43927002 -0.76247501 61.81296921 139.94297791 -2.8017621
		 61.63331985 139.42877197 -4.82972479 61.51377487 138.086364746 -6.060700893 61.48130035 136.43135071 -6.039420605
		 61.5649147 135.084793091 -4.81195784 13.27375603 136.26667786 4.40402079 13.18824673 138.92247009 4.18202114
		 13.000009536743 134.86256409 -9.84407806 14.28676796 131.28320313 -7.14797926 16.94176865 129.985672 -2.85297918
		 13.11484623 142.52697754 1.52432108 13.2484808 144.17634583 -2.63337851 13.17249775 142.80189514 -6.57557917
		 13.15406609 139.23577881 -9.17577934 9.061999321 140.18319702 4.94902086 9.48379993 143.18869019 2.46202087
		 10.21987247 144.59385681 -1.84157896 9.55959988 143.43919373 -6.48277903 7.20459986 140.79930115 -9.97237968
		 5.51489973 143.55200195 4.00052070618 6.52629995 145.3361969 1.75562096 6.95169973 146.55999756 -1.58207893
		 6.18139982 146.15739441 -4.54607916 4.08949995 145.18418884 -6.70687914 4.26029968 138.52670288 7.05492115
		 3.044799805 142.19299316 5.34102058 5.45899963 135.70050049 8.84982109 10.8980999 135.44940186 6.53162098
		 14.20813084 131.81056213 4.58432102 5.9527998 132.33940125 10.78071976 10.4659996 132.022399902 9.22802067
		 13.83360004 129.60310364 8.011220932 16.60509682 130.6726532 1.28442097 7.68260002 129.63059998 -10.4083786
		 7.77320004 134.71069336 -10.95377731;
	setAttr -s 597 ".ed";
	setAttr ".ed[0:165]"  0 3 1 3 2 1 2 1 1 1 0 1 2 5 1 5 4 1 4 1 1 5 7 1 7 6 1
		 6 4 1 7 9 1 9 8 1 8 6 1 10 8 1 9 11 1 11 10 1 12 10 1 11 13 1 13 12 1 14 12 1 13 15 1
		 15 14 1 16 14 1 15 17 1 17 16 1 18 16 1 17 19 1 19 18 1 19 3 1 0 18 1 20 23 1 23 22 1
		 22 21 1 21 20 1 24 20 1 21 25 1 25 24 1 26 24 1 25 27 1 27 26 1 28 26 1 27 29 1 29 28 1
		 29 31 1 31 30 1 30 28 1 31 33 1 33 32 1 32 30 1 33 35 1 35 34 1 34 32 1 35 37 1 37 36 1
		 36 34 1 37 39 1 39 38 1 38 36 1 23 38 1 39 22 1 40 43 1 43 42 1 42 41 1 41 40 1 44 45 1
		 45 43 1 40 44 1 46 47 1 47 45 1 44 46 1 42 47 1 46 41 1 48 42 1 43 49 1 49 48 1 45 50 1
		 50 49 1 47 51 1 51 50 1 48 51 1 52 48 1 49 53 1 53 52 1 50 54 1 54 53 1 51 55 1 55 54 1
		 52 55 1 56 52 1 53 57 1 57 56 1 54 58 1 58 57 1 55 59 1 59 58 1 56 59 1 60 63 1 63 62 1
		 62 61 1 61 60 1 64 65 1 65 63 1 60 64 1 66 67 1 67 65 1 64 66 1 62 67 1 66 61 1 68 62 1
		 63 69 1 69 68 1 65 70 1 70 69 1 67 71 1 71 70 1 68 71 1 72 68 1 69 73 1 73 72 1 70 74 1
		 74 73 1 71 75 1 75 74 1 72 75 1 76 72 1 73 77 1 77 76 1 74 78 1 78 77 1 75 79 1 79 78 1
		 76 79 1 80 60 1 61 46 1 46 80 1 81 82 1 82 64 1 60 81 1 83 86 1 86 85 1 85 84 1 84 83 1
		 84 88 1 88 87 1 87 83 1 89 91 1 91 40 1 40 90 1 90 89 1 92 93 1 93 91 1 89 92 1 94 95 1
		 95 92 1 89 94 1 96 98 1 98 97 1 97 41 1 41 96 1 99 100 1 100 98 1 96 99 1 101 84 1
		 85 102 1 102 101 1 103 101 1;
	setAttr ".ed[166:331]" 101 98 1 100 103 1 61 96 1 66 99 1 82 99 1 44 104 1
		 104 80 1 91 104 1 104 81 1 93 81 1 105 76 1 77 106 1 106 105 1 78 107 1 107 106 1
		 79 108 1 108 107 1 105 108 1 109 56 1 57 110 1 110 109 1 58 111 1 111 110 1 59 112 1
		 112 111 1 109 112 1 90 114 1 114 113 1 113 97 1 97 90 1 40 115 1 115 114 1 41 116 1
		 116 115 1 113 116 1 117 113 1 114 118 1 118 117 1 115 119 1 119 118 1 116 120 1 120 119 1
		 117 120 1 121 117 1 118 122 1 122 121 1 119 123 1 123 122 1 120 124 1 124 123 1 121 124 1
		 125 121 1 122 126 1 126 125 1 123 127 1 127 126 1 124 128 1 128 127 1 125 128 1 129 125 1
		 126 130 1 130 129 1 127 131 1 131 130 1 128 132 1 132 131 1 129 132 1 133 135 1 135 134 1
		 134 102 1 102 133 1 90 136 1 136 135 1 133 90 1 97 137 1 137 136 1 134 137 1 97 102 1
		 138 134 1 135 139 1 139 138 1 136 140 1 140 139 1 137 141 1 141 140 1 138 141 1 142 138 1
		 139 143 1 143 142 1 140 144 1 144 143 1 141 145 1 145 144 1 142 145 1 146 142 1 143 147 1
		 147 146 1 144 148 1 148 147 1 145 149 1 149 148 1 146 149 1 150 146 1 147 151 1 151 150 1
		 148 152 1 152 151 1 149 153 1 153 152 1 150 153 1 86 155 1 155 154 1 154 85 1 133 156 1
		 156 155 1 86 133 1 102 157 1 157 156 1 154 157 1 158 154 1 155 159 1 159 158 1 156 160 1
		 160 159 1 157 161 1 161 160 1 158 161 1 162 158 1 159 163 1 163 162 1 160 164 1 164 163 1
		 161 165 1 165 164 1 162 165 1 166 162 1 163 167 1 167 166 1 164 168 1 168 167 1 165 169 1
		 169 168 1 166 169 1 170 166 1 167 171 1 171 170 1 168 172 1 172 171 1 169 173 1 173 172 1
		 170 173 1 83 94 1 94 133 1 87 95 1 103 88 1 174 82 1 81 175 1 175 174 1 176 99 1
		 174 176 1 177 100 1 176 177 1 178 103 1 177 178 1 179 88 1 178 179 1;
	setAttr ".ed[332:497]" 180 87 1 179 180 1 181 95 1 180 181 1 182 92 1 181 182 1
		 183 93 1 182 183 1 183 175 1 184 187 1 187 186 1 186 185 1 185 184 1 188 184 1 185 189 1
		 189 188 1 189 191 1 191 190 1 190 188 1 191 193 1 193 192 1 192 190 1 193 195 1 195 194 1
		 194 192 1 196 194 1 195 197 1 197 196 1 198 196 1 197 199 1 199 198 1 200 198 1 199 201 1
		 201 200 1 202 200 1 201 203 1 203 202 1 187 202 1 203 186 1 186 205 1 205 204 1 204 185 1
		 204 206 1 206 189 1 206 207 1 207 191 1 208 193 1 207 208 1 209 195 1 208 209 1 210 197 1
		 209 210 1 211 199 1 210 211 1 212 201 1 211 212 1 213 203 1 212 213 1 213 205 1 22 214 1
		 214 215 1 215 21 1 192 217 1 217 216 1 216 190 1 194 218 1 218 217 1 198 220 1 220 219 1
		 219 196 1 200 221 1 221 220 1 202 222 1 222 221 1 187 223 1 223 222 1 39 223 1 223 214 1
		 215 216 1 216 25 1 217 27 1 218 29 1 218 219 1 219 31 1 220 33 1 221 35 1 222 37 1
		 224 2 1 3 225 1 225 224 1 226 5 1 224 226 1 227 7 1 226 227 1 228 9 1 227 228 1 228 229 1
		 229 11 1 229 230 1 230 13 1 230 231 1 231 15 1 231 232 1 232 17 1 232 233 1 233 19 1
		 233 225 1 20 224 1 225 23 1 24 226 1 26 227 1 28 228 1 30 229 1 32 230 1 34 231 1
		 36 232 1 38 233 1 234 237 1 237 236 1 236 235 1 235 234 1 238 234 1 235 239 1 239 238 1
		 240 238 1 239 241 1 241 240 1 242 243 1 243 240 1 241 242 1 244 245 1 245 243 1 242 244 1
		 246 247 1 247 245 1 244 246 1 248 249 1 249 247 1 246 248 1 250 251 1 251 249 1 248 250 1
		 271 272 1 272 250 1 248 271 1 252 251 1 250 253 1 253 252 1 237 252 1 253 236 1 254 255 1
		 255 237 1 234 254 1 256 254 1 238 256 1 257 256 1 240 257 1 243 258 1 258 257 1 245 259 1
		 259 258 1 247 260 1 260 259 1 249 261 1 261 260 1 251 262 1;
	setAttr ".ed[498:596]" 262 261 1 263 262 1 252 263 1 255 263 1 205 255 1 254 204 1
		 256 206 1 257 207 1 258 208 1 259 209 1 260 210 1 261 211 1 262 212 1 263 213 1 264 265 1
		 265 177 1 176 264 1 266 264 1 174 266 1 183 268 1 268 267 1 267 175 1 182 269 1 269 268 1
		 180 271 1 271 270 1 270 181 1 179 272 1 273 272 1 178 273 1 265 273 1 236 265 1 264 235 1
		 266 239 1 266 267 1 267 241 1 268 242 1 269 244 1 269 270 1 270 246 1 273 253 1 274 296 1
		 296 297 1 297 1 1 1 274 1 4 275 1 275 274 1 6 279 1 279 275 1 8 280 1 280 279 1 10 281 1
		 281 280 1 12 282 1 282 281 1 14 276 1 276 282 1 16 277 1 277 276 1 18 278 1 278 277 1
		 283 275 1 279 284 1 284 283 1 280 285 1 285 284 1 281 286 1 286 285 1 282 287 1 287 286 1
		 288 283 1 284 289 1 289 288 1 285 290 1 290 289 1 286 291 1 291 290 1 287 292 1 292 291 1
		 278 301 1 288 294 1 294 293 1 293 283 1 295 293 1 295 296 1 296 283 1 298 295 1 299 296 1
		 298 299 1 300 297 1 299 300 1 215 188 1 214 184 1 301 297 1 0 301 1 287 303 1 303 302 1
		 277 302 1 303 276 1;
	setAttr -s 294 -ch 1176 ".fc[0:293]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 -3 4 5 6
		mu 0 4 3 2 4 5
		f 4 -6 7 8 9
		mu 0 4 5 4 6 7
		f 4 -9 10 11 12
		mu 0 4 7 6 8 9
		f 4 13 -12 14 15
		mu 0 4 10 9 8 11
		f 4 16 -16 17 18
		mu 0 4 12 10 11 13
		f 4 19 -19 20 21
		mu 0 4 14 12 13 15
		f 4 22 -22 23 24
		mu 0 4 16 14 15 17
		f 4 25 -25 26 27
		mu 0 4 18 16 17 19
		f 4 -28 28 -1 29
		mu 0 4 20 21 1 0
		f 4 30 31 32 33
		mu 0 4 22 23 24 25
		f 4 34 -34 35 36
		mu 0 4 26 22 25 27
		f 4 37 -37 38 39
		mu 0 4 28 26 27 29
		f 4 40 -40 41 42
		mu 0 4 30 28 29 31
		f 4 -43 43 44 45
		mu 0 4 30 31 32 33
		f 4 -45 46 47 48
		mu 0 4 33 32 34 35
		f 4 -48 49 50 51
		mu 0 4 35 34 36 37
		f 4 -51 52 53 54
		mu 0 4 37 36 38 39
		f 4 -54 55 56 57
		mu 0 4 39 38 40 41
		f 4 58 -57 59 -32
		mu 0 4 23 42 43 24
		f 4 60 61 62 63
		mu 0 4 44 45 46 47
		f 4 64 65 -61 66
		mu 0 4 48 49 50 51
		f 4 67 68 -65 69
		mu 0 4 52 53 49 48
		f 4 -63 70 -68 71
		mu 0 4 47 46 53 52
		f 4 72 -62 73 74
		mu 0 4 54 46 45 55
		f 4 -74 -66 75 76
		mu 0 4 56 50 49 57
		f 4 -76 -69 77 78
		mu 0 4 57 49 53 58
		f 4 -78 -71 -73 79
		mu 0 4 58 53 46 54
		f 4 80 -75 81 82
		mu 0 4 59 54 55 60
		f 4 -82 -77 83 84
		mu 0 4 61 56 57 62
		f 4 -84 -79 85 86
		mu 0 4 62 57 58 63
		f 4 -86 -80 -81 87
		mu 0 4 63 58 54 59
		f 4 88 -83 89 90
		mu 0 4 64 59 60 65
		f 4 -90 -85 91 92
		mu 0 4 66 61 62 67
		f 4 -92 -87 93 94
		mu 0 4 67 62 63 68
		f 4 -94 -88 -89 95
		mu 0 4 68 63 59 64
		f 4 96 97 98 99
		mu 0 4 69 70 71 72
		f 4 100 101 -97 102
		mu 0 4 73 74 70 69
		f 4 103 104 -101 105
		mu 0 4 75 76 74 73
		f 4 -99 106 -104 107
		mu 0 4 77 78 76 75
		f 4 108 -98 109 110
		mu 0 4 79 71 70 80
		f 4 -110 -102 111 112
		mu 0 4 80 70 74 81
		f 4 -112 -105 113 114
		mu 0 4 81 74 76 82
		f 4 -114 -107 -109 115
		mu 0 4 82 76 78 83
		f 4 116 -111 117 118
		mu 0 4 84 79 80 85
		f 4 -118 -113 119 120
		mu 0 4 85 80 81 86
		f 4 -120 -115 121 122
		mu 0 4 86 81 82 87
		f 4 -122 -116 -117 123
		mu 0 4 87 82 83 88
		f 4 124 -119 125 126
		mu 0 4 89 84 85 90
		f 4 -126 -121 127 128
		mu 0 4 90 85 86 91
		f 4 -128 -123 129 130
		mu 0 4 91 86 87 92
		f 4 -130 -124 -125 131
		mu 0 4 92 87 88 93
		f 4 132 -100 133 134
		mu 0 4 94 69 72 95
		f 4 135 136 -103 137
		mu 0 4 96 97 73 69
		f 4 138 139 140 141
		mu 0 4 98 99 100 101
		f 4 142 143 144 -142
		mu 0 4 101 102 103 98
		f 4 145 146 147 148
		mu 0 4 104 105 106 107
		f 4 149 150 -146 151
		mu 0 4 108 109 105 104
		f 4 152 153 -152 154
		mu 0 4 110 111 108 104
		f 4 155 156 157 158
		mu 0 4 112 113 114 115
		f 4 159 160 -156 161
		mu 0 4 116 117 113 112
		f 4 162 -141 163 164
		mu 0 4 118 119 120 121
		f 4 165 166 -161 167
		mu 0 4 122 118 113 117
		f 4 168 -159 -72 -134
		mu 0 4 77 112 115 123
		f 4 169 -162 -169 -108
		mu 0 4 75 116 112 77
		f 4 170 -170 -106 -137
		mu 0 4 97 116 75 73
		f 4 171 172 -135 -70
		mu 0 4 124 125 94 95
		f 4 -147 173 -172 -67
		mu 0 4 106 105 125 124
		f 4 -133 -173 174 -138
		mu 0 4 69 94 125 96
		f 4 175 -175 -174 -151
		mu 0 4 109 96 125 105
		f 4 176 -127 177 178
		mu 0 4 126 89 90 127
		f 4 -178 -129 179 180
		mu 0 4 127 90 91 128
		f 4 -180 -131 181 182
		mu 0 4 128 91 92 129
		f 4 -182 -132 -177 183
		mu 0 4 129 92 93 130
		f 4 -183 -184 -179 -181
		mu 0 4 128 129 131 132
		f 4 184 -91 185 186
		mu 0 4 133 64 65 134
		f 4 -186 -93 187 188
		mu 0 4 135 66 67 136
		f 4 -188 -95 189 190
		mu 0 4 136 67 68 137
		f 4 -190 -96 -185 191
		mu 0 4 137 68 64 133
		f 4 -189 -191 -192 -187
		mu 0 4 138 139 137 133
		f 4 192 193 194 195
		mu 0 4 140 141 142 143
		f 4 196 197 -193 -148
		mu 0 4 144 145 141 140
		f 4 198 199 -197 -64
		mu 0 4 146 147 148 149
		f 4 -195 200 -199 -158
		mu 0 4 143 142 147 146
		f 4 201 -194 202 203
		mu 0 4 150 142 141 151
		f 4 -203 -198 204 205
		mu 0 4 151 141 145 152
		f 4 -205 -200 206 207
		mu 0 4 153 148 147 154
		f 4 -207 -201 -202 208
		mu 0 4 154 147 142 150
		f 4 209 -204 210 211
		mu 0 4 155 150 151 156
		f 4 -211 -206 212 213
		mu 0 4 156 151 152 157
		f 4 -213 -208 214 215
		mu 0 4 158 153 154 159
		f 4 -215 -209 -210 216
		mu 0 4 159 154 150 155
		f 4 217 -212 218 219
		mu 0 4 160 155 156 161
		f 4 -219 -214 220 221
		mu 0 4 161 156 157 162
		f 4 -221 -216 222 223
		mu 0 4 163 158 159 164
		f 4 -223 -217 -218 224
		mu 0 4 164 159 155 160
		f 4 225 -220 226 227
		mu 0 4 165 160 161 166
		f 4 -227 -222 228 229
		mu 0 4 166 161 162 167
		f 4 -229 -224 230 231
		mu 0 4 168 163 164 169
		f 4 -231 -225 -226 232
		mu 0 4 169 164 160 165
		f 4 -230 -232 -233 -228
		mu 0 4 166 170 171 165
		f 4 233 234 235 236
		mu 0 4 172 173 174 175
		f 4 237 238 -234 239
		mu 0 4 176 177 173 172
		f 4 240 241 -238 -196
		mu 0 4 178 179 180 181
		f 4 -236 242 -241 243
		mu 0 4 175 174 179 178
		f 4 244 -235 245 246
		mu 0 4 182 174 173 183
		f 4 -246 -239 247 248
		mu 0 4 183 173 177 184
		f 4 -248 -242 249 250
		mu 0 4 185 180 179 186
		f 4 -250 -243 -245 251
		mu 0 4 186 179 174 182
		f 4 252 -247 253 254
		mu 0 4 187 182 183 188
		f 4 -254 -249 255 256
		mu 0 4 188 183 184 189
		f 4 -256 -251 257 258
		mu 0 4 190 185 186 191
		f 4 -258 -252 -253 259
		mu 0 4 191 186 182 187
		f 4 260 -255 261 262
		mu 0 4 192 187 188 193
		f 4 -262 -257 263 264
		mu 0 4 193 188 189 194
		f 4 -264 -259 265 266
		mu 0 4 195 190 191 196
		f 4 -266 -260 -261 267
		mu 0 4 196 191 187 192
		f 4 268 -263 269 270
		mu 0 4 197 192 193 198
		f 4 -270 -265 271 272
		mu 0 4 198 193 194 199
		f 4 -272 -267 273 274
		mu 0 4 200 195 196 201
		f 4 -274 -268 -269 275
		mu 0 4 201 196 192 197
		f 4 -273 -275 -276 -271
		mu 0 4 198 202 203 197
		f 4 276 277 278 -140
		mu 0 4 204 205 206 207
		f 4 279 280 -277 281
		mu 0 4 208 209 205 204
		f 4 282 283 -280 -237
		mu 0 4 210 211 209 208
		f 4 -279 284 -283 -164
		mu 0 4 212 213 211 210
		f 4 285 -278 286 287
		mu 0 4 214 206 205 215
		f 4 -287 -281 288 289
		mu 0 4 215 205 209 216
		f 4 -289 -284 290 291
		mu 0 4 216 209 211 217
		f 4 -291 -285 -286 292
		mu 0 4 217 211 213 218
		f 4 293 -288 294 295
		mu 0 4 219 214 215 220
		f 4 -295 -290 296 297
		mu 0 4 220 215 216 221
		f 4 -297 -292 298 299
		mu 0 4 221 216 217 222
		f 4 -299 -293 -294 300
		mu 0 4 222 217 218 223
		f 4 301 -296 302 303
		mu 0 4 224 219 220 225
		f 4 -303 -298 304 305
		mu 0 4 225 220 221 226
		f 4 -305 -300 306 307
		mu 0 4 226 221 222 227
		f 4 -307 -301 -302 308
		mu 0 4 227 222 223 228
		f 4 309 -304 310 311
		mu 0 4 229 224 225 230
		f 4 -311 -306 312 313
		mu 0 4 230 225 226 231
		f 4 -313 -308 314 315
		mu 0 4 231 226 227 232
		f 4 -315 -309 -310 316
		mu 0 4 232 227 228 233
		f 4 -314 -316 -317 -312
		mu 0 4 230 231 234 235
		f 4 317 318 -282 -139
		mu 0 4 98 110 236 99
		f 4 -244 -157 -167 -165
		mu 0 4 121 114 113 118
		f 4 -240 -319 -155 -149
		mu 0 4 107 236 110 104
		f 4 -145 319 -153 -318
		mu 0 4 98 103 111 110
		f 4 -143 -163 -166 320
		mu 0 4 237 119 118 122
		f 4 321 -136 322 323
		mu 0 4 238 97 96 239
		f 4 324 -171 -322 325
		mu 0 4 240 116 97 238
		f 4 326 -160 -325 327
		mu 0 4 241 117 116 240
		f 4 328 -168 -327 329
		mu 0 4 242 122 117 241
		f 4 330 -321 -329 331
		mu 0 4 243 237 122 242
		f 4 332 -144 -331 333
		mu 0 4 244 103 102 245
		f 4 334 -320 -333 335
		mu 0 4 246 111 103 244
		f 4 336 -154 -335 337
		mu 0 4 247 108 111 246
		f 4 338 -150 -337 339
		mu 0 4 248 109 108 247
		f 4 -323 -176 -339 340
		mu 0 4 239 96 109 248
		f 4 341 342 343 344
		mu 0 4 249 250 251 252
		f 4 345 -345 346 347
		mu 0 4 253 249 252 254
		f 4 -348 348 349 350
		mu 0 4 253 254 255 256
		f 4 -350 351 352 353
		mu 0 4 256 255 257 258
		f 4 -353 354 355 356
		mu 0 4 258 257 259 260
		f 4 357 -356 358 359
		mu 0 4 261 260 259 262
		f 4 360 -360 361 362
		mu 0 4 263 261 262 264
		f 4 363 -363 364 365
		mu 0 4 265 263 264 266
		f 4 366 -366 367 368
		mu 0 4 267 265 266 268
		f 4 369 -369 370 -343
		mu 0 4 269 267 268 270
		f 4 -344 371 372 373
		mu 0 4 252 251 271 272
		f 4 -347 -374 374 375
		mu 0 4 254 252 272 273
		f 4 -349 -376 376 377
		mu 0 4 255 254 273 274
		f 4 378 -352 -378 379
		mu 0 4 275 257 255 274
		f 4 380 -355 -379 381
		mu 0 4 276 259 257 275
		f 4 382 -359 -381 383
		mu 0 4 277 262 259 276
		f 4 384 -362 -383 385
		mu 0 4 278 264 262 277
		f 4 386 -365 -385 387
		mu 0 4 279 266 264 278
		f 4 388 -368 -387 389
		mu 0 4 280 268 266 279
		f 4 -371 -389 390 -372
		mu 0 4 270 268 280 281
		f 4 -33 391 392 393
		mu 0 4 25 24 282 283
		f 4 394 395 396 -354
		mu 0 4 258 284 285 256
		f 4 397 398 -395 -357
		mu 0 4 260 286 284 258
		f 4 399 400 401 -361
		mu 0 4 263 287 288 261
		f 4 402 403 -400 -364
		mu 0 4 265 289 287 263
		f 4 404 405 -403 -367
		mu 0 4 267 290 289 265
		f 4 406 407 -405 -370
		mu 0 4 269 291 290 267
		f 4 -60 408 409 -392
		mu 0 4 24 43 292 282
		f 4 -36 -394 410 411
		mu 0 4 27 25 283 285
		f 4 -39 -412 -396 412
		mu 0 4 29 27 285 284
		f 4 -42 -413 -399 413
		mu 0 4 31 29 284 286
		f 4 -44 -414 414 415
		mu 0 4 32 31 286 288
		f 4 -402 -415 -398 -358
		mu 0 4 261 288 286 260
		f 4 -47 -416 -401 416
		mu 0 4 34 32 288 287
		f 4 -50 -417 -404 417
		mu 0 4 36 34 287 289
		f 4 -53 -418 -406 418
		mu 0 4 38 36 289 290
		f 4 -56 -419 -408 -409
		mu 0 4 40 38 290 291
		f 4 419 -2 420 421
		mu 0 4 293 2 1 294
		f 4 422 -5 -420 423
		mu 0 4 295 4 2 293
		f 4 424 -8 -423 425
		mu 0 4 296 6 4 295
		f 4 426 -11 -425 427
		mu 0 4 297 8 6 296
		f 4 -15 -427 428 429
		mu 0 4 11 8 297 298
		f 4 -18 -430 430 431
		mu 0 4 13 11 298 299
		f 4 -21 -432 432 433
		mu 0 4 15 13 299 300
		f 4 -24 -434 434 435
		mu 0 4 17 15 300 301
		f 4 -27 -436 436 437
		mu 0 4 19 17 301 302
		f 4 -421 -29 -438 438
		mu 0 4 294 1 21 303
		f 4 439 -422 440 -31
		mu 0 4 22 293 294 23
		f 4 441 -424 -440 -35
		mu 0 4 26 295 293 22
		f 4 442 -426 -442 -38
		mu 0 4 28 296 295 26
		f 4 443 -428 -443 -41
		mu 0 4 30 297 296 28
		f 4 -429 -444 -46 444
		mu 0 4 298 297 30 33
		f 4 -431 -445 -49 445
		mu 0 4 299 298 33 35
		f 4 -433 -446 -52 446
		mu 0 4 300 299 35 37
		f 4 -435 -447 -55 447
		mu 0 4 301 300 37 39
		f 4 -437 -448 -58 448
		mu 0 4 302 301 39 41
		f 4 -441 -439 -449 -59
		mu 0 4 23 294 303 42
		f 4 449 450 451 452
		mu 0 4 304 305 306 307
		f 4 453 -453 454 455
		mu 0 4 308 304 307 309
		f 4 456 -456 457 458
		mu 0 4 310 308 309 311
		f 4 459 460 -459 461
		mu 0 4 312 313 310 311
		f 4 462 463 -460 464
		mu 0 4 314 315 313 312
		f 4 465 466 -463 467
		mu 0 4 316 317 315 314
		f 4 468 469 -466 470
		mu 0 4 318 319 317 316
		f 4 471 472 -469 473
		mu 0 4 320 321 319 318
		f 4 474 475 -474 476
		mu 0 4 322 323 320 318
		f 4 477 -472 478 479
		mu 0 4 324 321 320 325
		f 4 480 -480 481 -451
		mu 0 4 326 324 325 327
		f 4 482 483 -450 484
		mu 0 4 328 329 305 304
		f 4 485 -485 -454 486
		mu 0 4 330 328 304 308
		f 4 487 -487 -457 488
		mu 0 4 331 330 308 310
		f 4 489 490 -489 -461
		mu 0 4 313 332 331 310
		f 4 491 492 -490 -464
		mu 0 4 315 333 332 313
		f 4 493 494 -492 -467
		mu 0 4 317 334 333 315
		f 4 495 496 -494 -470
		mu 0 4 319 335 334 317
		f 4 497 498 -496 -473
		mu 0 4 321 336 335 319
		f 4 499 -498 -478 500
		mu 0 4 337 336 321 324
		f 4 501 -501 -481 -484
		mu 0 4 338 337 324 326
		f 4 -373 502 -483 503
		mu 0 4 272 271 329 328
		f 4 -375 -504 -486 504
		mu 0 4 273 272 328 330
		f 4 -377 -505 -488 505
		mu 0 4 274 273 330 331
		f 4 -380 -506 -491 506
		mu 0 4 275 274 331 332
		f 4 -382 -507 -493 507
		mu 0 4 276 275 332 333
		f 4 -384 -508 -495 508
		mu 0 4 277 276 333 334
		f 4 -386 -509 -497 509
		mu 0 4 278 277 334 335
		f 4 -388 -510 -499 510
		mu 0 4 279 278 335 336
		f 4 -390 -511 -500 511
		mu 0 4 280 279 336 337
		f 4 -391 -512 -502 -503
		mu 0 4 281 280 337 338
		f 4 512 513 -328 514
		mu 0 4 339 340 341 342
		f 4 515 -515 -326 516
		mu 0 4 343 339 342 344
		f 4 517 518 519 -341
		mu 0 4 345 346 347 348
		f 4 520 521 -518 -340
		mu 0 4 349 350 346 345
		f 4 522 523 524 -336
		mu 0 4 351 322 352 353
		f 4 525 -475 -523 -334
		mu 0 4 354 323 322 351
		f 4 526 -526 -332 527
		mu 0 4 355 323 354 356
		f 4 528 -528 -330 -514
		mu 0 4 357 355 356 358
		f 4 -452 529 -513 530
		mu 0 4 307 306 340 339
		f 4 -455 -531 -516 531
		mu 0 4 309 307 339 343
		f 4 -458 -532 532 533
		mu 0 4 311 309 343 347
		f 4 -520 -533 -517 -324
		mu 0 4 348 347 343 344
		f 4 -462 -534 -519 534
		mu 0 4 312 311 347 346
		f 4 -465 -535 -522 535
		mu 0 4 314 312 346 350
		f 4 -468 -536 536 537
		mu 0 4 316 314 350 352
		f 4 -525 -537 -521 -338
		mu 0 4 353 352 350 349
		f 4 -471 -538 -524 -477
		mu 0 4 318 316 352 322
		f 4 -479 -476 -527 538
		mu 0 4 325 320 323 355
		f 4 -482 -539 -529 -530
		mu 0 4 327 325 355 357
		f 4 539 540 541 542
		mu 0 4 359 360 361 362
		f 4 543 544 -543 -7
		mu 0 4 363 364 359 362
		f 4 545 546 -544 -10
		mu 0 4 365 366 364 363
		f 4 547 548 -546 -13
		mu 0 4 367 368 366 365
		f 4 549 550 -548 -14
		mu 0 4 369 370 371 372
		f 4 551 552 -550 -17
		mu 0 4 373 374 370 369
		f 4 553 554 -552 -20
		mu 0 4 375 376 374 373
		f 4 555 556 -554 -23
		mu 0 4 377 378 376 375
		f 4 557 558 -556 -26
		mu 0 4 379 380 378 377
		f 4 559 -547 560 561
		mu 0 4 381 364 366 382
		f 4 -549 562 563 -561
		mu 0 4 366 368 383 382
		f 4 -551 564 565 -563
		mu 0 4 371 370 384 385
		f 4 -553 566 567 -565
		mu 0 4 370 374 386 384
		f 4 568 -562 569 570
		mu 0 4 387 381 382 388
		f 4 -564 571 572 -570
		mu 0 4 382 383 389 388
		f 4 -566 573 574 -572
		mu 0 4 385 384 390 391
		f 4 -568 575 576 -574
		mu 0 4 384 386 392 390
		f 4 578 579 580 -569
		mu 0 4 387 394 395 381
		f 4 -582 582 583 -581
		mu 0 4 395 396 360 381
		f 4 585 -583 -585 586
		mu 0 4 398 360 396 397
		f 4 587 -541 -586 588
		mu 0 4 399 361 360 398
		f 4 589 -351 -397 -411
		mu 0 4 283 253 256 285
		f 4 590 -346 -590 -393
		mu 0 4 282 249 253 283
		f 4 -407 -342 -591 -410
		mu 0 4 292 250 249 282
		f 4 -558 -30 592 -578
		mu 0 4 380 379 400 393
		f 4 -592 -593 -4 -542
		mu 0 4 361 393 400 362
		f 4 -560 -584 -540 -545
		mu 0 4 364 381 360 359
		f 4 -557 595 -595 596
		mu 0 4 376 378 402 401
		f 4 -555 -597 -594 -567
		mu 0 4 374 376 401 386;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Arm_Mesh1" -p "MESHES";
	rename -uid "92D691C0-4722-D6A5-2F7D-E08D92C3383E";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 86.415593355894089 3.5180826187133789 ;
	setAttr ".sp" -type "double3" 0 86.415593355894089 3.5180826187133789 ;
createNode mesh -n "Arm_Mesh1Shape" -p "Arm_Mesh1";
	rename -uid "5C2D75E0-4BFC-6E99-5C64-AE8647829198";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -dv 1 -at "long";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "backupMesh" -ln "backupMesh" -dt "string";
	addAttr -ci true -sn "pfrsSkinCluster" -ln "pfrsSkinCluster" -dt "string";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:293]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "uvSet1";
	setAttr -s 403 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.82559997 0.58169997 0.82909995
		 0.56779999 0.84359998 0.57679999 0.83859998 0.59310001 0.85829997 0.58459997 0.85359997
		 0.60439998 0.87489998 0.5905 0.86969995 0.61379999 0.89019996 0.59369999 0.88679999
		 0.61799997 0.90449995 0.61869997 0.90569997 0.59469998 0.92249995 0.61409998 0.92329997
		 0.59349996 0.94 0.60719997 0.93949997 0.58999997 0.95549995 0.5995 0.9558 0.5851
		 0.97289997 0.59389997 0.97279996 0.58179998 0.81029999 0.57190001 0.8136 0.56029999
		 0.84849995 0.542 0.83379996 0.53859997 0.83959997 0.51730001 0.85359997 0.52090001
		 0.86379999 0.54509997 0.86809999 0.52419996 0.87970001 0.54789996 0.88319999 0.52719998
		 0.89599997 0.5503 0.89889997 0.52969998 0.9145 0.5316 0.91229999 0.55229998 0.92979997
		 0.53279996 0.92839998 0.5539 0.94459999 0.53329998 0.94400001 0.55500001 0.95899999
		 0.5334 0.95909995 0.55549997 0.9734 0.53310001 0.97399998 0.55579996 0.81939995 0.53499997
		 0.8258 0.5133 0.91569996 0.84919995 0.9242 0.83939999 0.93289995 0.84429997 0.9253
		 0.85409999 0.94169998 0.86799997 0.94879997 0.8556 0.95729995 0.85999995 0.95190001
		 0.87199998 0.93419999 0.86149997 0.94089997 0.84969997 0.9386 0.83590001 0.93179995
		 0.82959998 0.96269995 0.8488 0.95459998 0.84509999 0.94629997 0.84119999 0.94459999
		 0.82819998 0.93889999 0.82199997 0.96609998 0.8387 0.95909995 0.83599997 0.95159996
		 0.83309996 0.94849998 0.82349998 0.94400001 0.8175 0.96799999 0.83219999 0.96129996
		 0.83019996 0.95469999 0.82799995 0.82779998 0.7274 0.83989996 0.7263 0.84219998 0.7331
		 0.83669996 0.73429996 0.8272 0.71619999 0.84039998 0.71719998 0.8312 0.7062 0.84279996
		 0.7098 0.84179997 0.69799995 0.84709996 0.70039999 0.84649998 0.73269999 0.84630001
		 0.72609997 0.847 0.71789998 0.84779996 0.7112 0.85109997 0.7022 0.85349995 0.73189998
		 0.85319996 0.72600001 0.85369998 0.71869999 0.85469997 0.713 0.85749996 0.70519996
		 0.85839999 0.7317 0.8581 0.7256 0.8585 0.71959996 0.85939997 0.71399999 0.86189997
		 0.70739996 0.82690001 0.7385 0.83359998 0.74439996 0.80729997 0.72649997 0.81159997
		 0.71319997 0.79069996 0.77069998 0.79809999 0.77999997 0.79119998 0.78380001 0.78369999
		 0.7755 0.7726 0.76550001 0.77939999 0.759 0.80309999 0.75779998 0.81079996 0.74949998
		 0.82119995 0.7604 0.81259996 0.7687 0.79229999 0.74519998 0.79909998 0.73649997 0.79579997
		 0.76499999 0.78499997 0.75369996 0.82919997 0.69119996 0.82519996 0.6803 0.83660001
		 0.67309999 0.84369999 0.68239999 0.81169999 0.70129997 0.80879998 0.69069999 0.81979996
		 0.6706 0.81559998 0.66339999 0.82549995 0.65749997 0.83019996 0.66399997 0.80500001
		 0.67919999 0.8506 0.69159997 0.8276 0.75169998 0.81819999 0.7421 0.86549997 0.73049998
		 0.86439997 0.72529995 0.86449999 0.72029996 0.86570001 0.7155 0.86750001 0.71090001
		 0.87039995 0.71669996 0.86919999 0.72139996 0.954 0.81799996 0.95029998 0.81339997
		 0.96899998 0.8247 0.96359998 0.82339996 0.95829999 0.82129997 0.95749998 0.81339997
		 0.96179998 0.81669998 0.949 0.98439997 0.94759995 0.9702 0.95819998 0.96809995 0.95919997
		 0.98199999 0.93669999 0.98439997 0.93669999 0.97059995 0.97079998 0.97969997 0.96879995
		 0.96699995 0.9799 0.96699995 0.98179996 0.98079997 0.95699996 0.95749998 0.94709998
		 0.95729995 0.93719995 0.95709997 0.97779995 0.9533 0.96739995 0.9562 0.95609999 0.94689995
		 0.94709998 0.94619995 0.93869996 0.9454 0.97419995 0.94159997 0.96559995 0.94529998
		 0.95549995 0.94019997 0.94759995 0.93919998 0.94 0.93789995 0.97119999 0.93479997
		 0.96399999 0.93869996 0.9551 0.9314 0.94839996 0.93119997 0.94239998 0.92999995 0.96709996
		 0.92769998 0.9612 0.93039995 0.94869995 0.92479998 0.95529997 0.92509997 0.94329995
		 0.7051 0.94199997 0.69119996 0.95159996 0.68970001 0.95209998 0.70389998 0.93219995
		 0.70449996 0.93219995 0.69139999 0.96289998 0.70169997 0.96139997 0.68909997 0.97149998
		 0.68909997 0.97359997 0.70199996 0.9508 0.67979997 0.9418 0.67939997 0.93289995 0.67899996
		 0.96969998 0.67640001 0.96029997 0.6789 0.95019996 0.67030001 0.94199997 0.66939998
		 0.93449998 0.66850001 0.9666 0.66579998 0.95879996 0.66899997 0.94979995 0.66420001
		 0.94259995 0.6631 0.93579996 0.66179997 0.9641 0.65959996 0.95749998 0.66299999 0.94959998
		 0.65630001 0.9436 0.6559 0.93809998 0.6548 0.96039999 0.65319997 0.9551 0.65549999
		 0.94389999 0.65020001 0.94989997 0.65059996 0.92799997 0.78179997 0.92569995 0.77179998
		 0.93289995 0.76889998 0.93579996 0.77919996 0.91969997 0.78209996 0.91839999 0.77269995
		 0.90979999 0.78149998 0.91060001 0.77160001 0.90129995 0.78209996 0.90279996 0.77089995
		 0.93109995 0.76299995 0.92429996 0.76440001 0.91789997 0.76499999 0.9109 0.76539999
		 0.90379995 0.7647 0.9285 0.7554 0.92259997 0.75639999 0.91729999 0.75699997 0.91149998
		 0.75769997 0.90539998 0.75699997 0.92699999 0.75079995 0.92159998 0.75159997 0.91679996
		 0.75229996 0.91179997 0.75309998 0.90629995 0.7525 0.9249 0.74489999 0.92039996 0.74610001
		 0.91609997 0.74689996 0.91179997 0.74729997 0.9077 0.74680001 0.91529995 0.74250001
		 0.91959995 0.74169999 0.80429995 0.7755 0.80269998 0.67210001 0.79729998 0.7137 0.7931
		 0.72179997 0.79719996 0.70589995 0.79389995 0.69549996 0.78959996 0.68579996 0.7863
		 0.67809999 0.76629996 0.74809998 0.76049995 0.7536 0.77249998 0.74239999 0.77989995
		 0.7353 0.78740001 0.7281 0.85029995 0.47619998;
	setAttr ".uvst[0].uvsp[250:402]" 0.8373 0.47319999 0.8416 0.45639998 0.85539997
		 0.45799997 0.86369997 0.47959998 0.86909997 0.45989999 0.88279998 0.46269998 0.87720001
		 0.48299998 0.89539999 0.4657 0.89109999 0.48619998 0.9077 0.46779999 0.90499997 0.48879999
		 0.91859996 0.49079999 0.91969997 0.47039998 0.9321 0.49179998 0.93219995 0.47169998
		 0.9454 0.4919 0.94559997 0.47259998 0.95849997 0.49149999 0.95899999 0.47319999 0.9716
		 0.49109998 0.97279996 0.4734 0.84619999 0.43869999 0.85969996 0.44049999 0.87289995
		 0.44189999 0.88559997 0.44349998 0.89819998 0.44619998 0.90999997 0.44859999 0.92179996
		 0.45109999 0.93439996 0.45289999 0.94689995 0.45459998 0.95999998 0.45539999 0.97349995
		 0.45499998 0.84499997 0.4982 0.85869998 0.50119996 0.8872 0.50629997 0.87279999 0.50389999
		 0.90179998 0.50849998 0.93059999 0.51209998 0.9163 0.51050001 0.9447 0.51319999 0.95859998
		 0.51370001 0.97249997 0.51349998 0.83169997 0.4948 0.84619999 0.55939996 0.83159995
		 0.55320001 0.86109996 0.56489998 0.87729996 0.56919998 0.89309996 0.5722 0.9091 0.57359999
		 0.92579997 0.57379997 0.94169998 0.57239997 0.95739996 0.57029998 0.9734 0.56909996
		 0.81639999 0.54789996 0.8707 0.40009999 0.8585 0.39769998 0.86499995 0.3784 0.87659997
		 0.38079998 0.88189995 0.4021 0.88689995 0.3829 0.8926 0.40419999 0.89649999 0.38499999
		 0.90649998 0.3874 0.90349996 0.4066 0.91779995 0.38999999 0.91529995 0.40919998 0.92899996
		 0.39219999 0.92699999 0.41149998 0.9393 0.3935 0.93799996 0.4131 0.949 0.39389998
		 0.94869995 0.41389999 0.94059998 0.3732 0.94919997 0.37359998 0.95999998 0.41369998
		 0.95929998 0.3935 0.97189999 0.41239998 0.97079998 0.39219999 0.86499995 0.42039999
		 0.85189998 0.4183 0.87729996 0.42209998 0.889 0.42389998 0.90059996 0.42629999 0.91259998
		 0.42899999 0.92460001 0.43149999 0.93629998 0.43349999 0.94799995 0.43469998 0.96019995
		 0.43489999 0.97309995 0.43379998 0.88259995 0.3612 0.8714 0.35889998 0.87769997 0.3396
		 0.88819999 0.3418 0.89209998 0.36300001 0.89569998 0.34379998 0.91289997 0.34809998
		 0.90979999 0.36719999 0.90059996 0.36499998 0.90459996 0.3459 0.92309999 0.3506 0.92049998
		 0.3698 0.94189996 0.35339999 0.93119997 0.37189999 0.93329996 0.35249999 0.94999999
		 0.35349998 0.9587 0.37309998 0.95809996 0.35279998 0.96959996 0.37180001 0.9684 0.3515
		 0.58109999 0.6318 0.5614 0.62559998 0.58819997 0.60719997 0.60369998 0.62519997 0.60569996
		 0.64459997 0.57749999 0.64699996 0.61129999 0.66329998 0.5819 0.6699 0.61879998 0.68019998
		 0.5934 0.69129997 0.65369999 0.66850001 0.68089998 0.66859996 0.67640001 0.68849999
		 0.65099996 0.68529999 0.6548 0.65059996 0.6803 0.64819998 0.65399998 0.63229996 0.67159998
		 0.62779999 0.64590001 0.61689997 0.6573 0.60829997 0.63139999 0.60600001 0.63260001
		 0.597 0.5521 0.65369999 0.5571 0.6753 0.56959999 0.69769996 0.70289999 0.67159998
		 0.69760001 0.69549996 0.71259999 0.64849997 0.53259999 0.67449999 0.54140002 0.68979996
		 0.55089998 0.70749998 0.72289997 0.68689996 0.71579999 0.70159996 0.73339999 0.6735
		 0.60960001 0.59939998 0.51779997 0.66439998 0.52399999 0.6415 0.52929997 0.62309998
		 0.53069997 0.60329998 0.55430001 0.60339999 0.57260001 0.59200001 0.61390001 0.61079997
		 0.7026 0.61919999 0.69549996 0.59429997;
	setAttr ".cuvs" -type "string" "uvSet1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[1579]" -type "float3" 0 2.9802322e-08 -2.9802322e-08 ;
	setAttr ".pt[1698]" -type "float3" 0 2.9802322e-08 -2.9802322e-08 ;
	setAttr ".pt[1745]" -type "float3" 0 2.9802322e-08 -2.9802322e-08 ;
	setAttr ".pt[1751]" -type "float3" 0 2.9802322e-08 -2.9802322e-08 ;
	setAttr -s 304 ".vt";
	setAttr ".vt[0:165]"  17.64957809 133.10853577 0.43187857 16.4513855 135.32743835 2.47252083
		 19.99689484 135.73228455 2.15175247 20.57501602 133.44755554 0.27611399 15.62722397 138.61839294 2.54582095
		 19.5083313 138.71292114 2.20732641 15.4030447 141.6781311 0.61482096 19.068147659 141.67114258 0.41141033
		 15.55090523 143.8441925 -2.58337927 19.12698364 143.36856079 -2.551332 15.35710716 141.80117798 -5.82597876
		 19.02570343 141.78997803 -5.55179739 16.098987579 138.9490509 -7.87577868 19.44604492 138.90556335 -7.44241476
		 17.40219307 135.69195557 -7.94371939 19.92806625 135.92459106 -7.49823904 18.51460648 133.49461365 -5.99203157
		 20.52467728 133.56588745 -5.68700647 16.87916756 131.81132507 -2.82087851 20.63389015 132.64874268 -2.72167635
		 27.15980148 135.62272644 2.030993938 31.29555321 135.70014954 1.8364327 31.27090073 133.52668762 0.17517853
		 27.26068115 133.4662323 0.29145765 27.31535339 138.50289917 2.10354042 31.21886063 138.43229675 1.90499592
		 27.38189697 140.86811829 0.47101021 31.067630768 140.68009949 0.34862852 27.33087158 141.81471252 -2.25431585
		 30.89760399 141.58099365 -2.24764013 27.18671989 140.98146057 -5.012108326 30.77482796 140.78807068 -4.87543535
		 27.013317108 138.68644714 -6.76797056 30.75084496 138.60671997 -6.54059553 26.87193489 135.80628967 -6.84104967
		 30.83160782 135.87420654 -6.60088491 27.079090118 133.57972717 -5.1916852 30.98319435 133.6341095 -5.035246372
		 27.12322426 132.63296509 -2.46597719 31.15095329 132.73828125 -2.44534922 74.69351196 139.2611084 -0.94236898
		 74.44267273 137.16436768 -0.94203043 76.68326569 136.50608826 -0.70561647 77.060722351 138.35519409 -0.77272463
		 74.39290619 139.18041992 1.15126371 77.052070618 138.40585327 1.097191334 74.21689606 137.32824707 1.26547194
		 76.67622375 136.56735229 1.12009573 78.46842194 135.95359802 -0.69626379 79.29172516 137.50076294 -0.74817324
		 79.29238129 137.55038452 1.0008893013 78.46910095 136.002532959 1.030914783 80.056266785 135.2706604 -0.56774712
		 81.043045044 136.43540955 -0.6032958 81.04384613 136.47775269 0.89190769 80.0570755 135.31277466 0.92133284
		 80.93813324 134.64372253 -0.50839376 81.98883057 135.540802 -0.53411913 81.98960876 135.58001709 0.86241865
		 80.93897247 134.68309021 0.88854074 71.50484467 136.14195251 2.45222831 73.041809082 135.59051514 1.25127888
		 74.10103607 135.30503845 1.54360223 73.59384155 135.44544983 2.93162417 70.70293427 134.30737305 2.40492201
		 73.1202774 133.63458252 2.95224953 71.52179718 133.74435425 0.82028341 73.53816986 133.40863037 1.51414371
		 74.90614319 135.060821533 1.64824581 74.90802765 135.0887146 3.031137228 74.50540924 133.29533386 3.069710016
		 74.4913559 133.26023865 1.67964149 76.20606995 134.64619446 1.70242023 76.32800293 134.6428833 2.89012957
		 75.98104858 133.092788696 2.92348027 75.86307526 133.088424683 1.73181605 77.094711304 134.3445282 1.58362579
		 77.34799957 134.31407166 2.78304815 77.045272827 132.95974731 2.81206822 76.79714203 132.98594666 1.61049342
		 72.61949921 137.5100708 1.72848392 68.41835022 137.53622437 1.18202543 68.019630432 134.987854 1.32946777
		 71.60823059 138.69256592 -6.42316866 71.46512604 137.0016937256 -6.41870832 73.63767242 137.091949463 -6.79069185
		 73.93009949 138.60980225 -6.78760481 68.52640533 138.34837341 -5.82079363 68.61301422 136.54458618 -5.8549943
		 71.74588013 139.56483459 -3.020962238 74.55570984 139.049194336 -3.27989435 71.73491669 139.60945129 -0.78478193
		 68.55794525 139.4744873 -2.62440205 68.40161896 139.17462158 -0.56694937 71.64396667 139.29289246 -5.043710232
		 68.60438538 139.36376953 -4.77331781 71.760849 135.60119629 -1.021801472 74.22252655 137.044525146 -3.19855165
		 71.79837036 136.36174011 -2.99117899 68.38674927 134.31213379 -0.76109076 68.55239105 134.84768677 -2.69217539
		 71.73179626 136.26454163 -5.04790163 73.92055511 137.016723633 -5.29712629 68.61444092 135.56826782 -4.84003401
		 71.7724762 138.96969604 1.17407942 78.27714539 133.85377502 1.36361265 78.45088959 133.83677673 2.31527281
		 78.24000549 132.89321899 2.33543801 78.066314697 132.91015625 1.38377333 81.98619843 133.64962769 -0.32009506
		 82.83223724 134.38726807 -0.3412509 82.83280182 134.41744995 0.72969294 81.98670197 133.67988586 0.75085402
		 76.75371552 136.21357727 -3.023532391 77.18735504 138.27233887 -3.096809864 77.17777252 138.32858276 -1.011611462
		 76.74578857 136.28190613 -0.9835453 78.67917633 135.61727905 -3.0089621544 79.60347748 137.34851074 -3.066604137
		 79.60412598 137.40412903 -1.10966635 78.68000031 135.67218018 -1.075326443 80.45281982 134.84924316 -2.86601877
		 81.55956268 136.15557861 -2.90593195 81.56036377 136.20303345 -1.22945261 80.45365143 134.89639282 -1.19636679
		 81.44114685 134.14364624 -2.79972124 82.6198349 135.14996338 -2.8285985 82.62075806 135.19398499 -1.26183939
		 81.44206238 134.18791199 -1.23265982 82.61670685 133.026702881 -2.58853388 83.56612396 133.85414124 -2.6124177
		 83.5668335 133.88795471 -1.41069984 82.61748505 133.060577393 -1.38692379 74.2405777 138.73092651 -5.33697844
		 76.51182556 136.24969482 -5.18482256 76.90193939 138.11671448 -5.25383043 76.89323425 138.1678772 -3.35550356
		 76.50479889 136.31170654 -3.33191156 78.30773926 135.70352173 -5.17328978 79.14608002 137.26898193 -5.22660112
		 79.146698 137.3192749 -3.45183992 78.30845642 135.75325012 -3.42122126 79.90919495 135.023742676 -5.041534901
		 80.91052246 136.20321655 -5.0777421 80.91131592 136.24609375 -3.5619607 79.90999603 135.066375732 -3.53207827
		 80.79890442 134.39407349 -4.98065233 81.86333466 135.30300903 -5.0067639351 81.86422729 135.34272766 -3.5916667
		 80.79969788 134.43395996 -3.56524515 81.85816956 133.39016724 -4.7895093 82.715271 134.13739014 -4.81102037
		 82.71585083 134.16781616 -3.72612619 81.85871124 133.42080688 -3.70461226 75.58790588 136.63925171 -6.77716303
		 75.82848358 138.11126709 -6.82991076 75.91809082 138.12826538 -5.36146688 75.67601776 136.66531372 -5.34994364
		 76.68361664 136.30404663 -6.78169203 77.28430939 137.52059937 -6.84353685 77.3738327 137.53805542 -5.48690271
		 76.7717514 136.32145691 -5.45173883 78.0099105835 135.73406982 -6.738132 78.74026489 136.61233521 -6.79373789
		 78.8137207 136.62712097 -5.67209387 78.082931519 135.74887085 -5.62558413;
	setAttr ".vt[166:303]" 78.70270538 135.25541687 -6.7240386 79.47271729 135.91282654 -6.77394342
		 79.53964233 135.92648315 -5.75080252 78.76969147 135.26922607 -5.70040083 79.48531342 134.52891541 -6.62848711
		 80.097221375 135.062683105 -6.66851854 80.14782715 135.073104858 -5.89399576 79.53593445 134.539505 -5.85386705
		 65.75784302 136.22879028 0.4547019 65.77718353 137.99789429 0.32274199 65.77876282 135.36044312 -0.73734617
		 65.6167984 134.90132141 -2.75308752 65.4544754 135.33453369 -4.69512415 65.32470703 136.39059448 -5.8672986
		 65.30457306 137.94619751 -5.89898062 65.36611938 139.13150024 -4.73163843 65.51069641 139.59388733 -2.79368639
		 65.66979218 139.1602478 -0.84022951 39.062389374 133.76300049 -0.50940561 42.54379654 133.88735962 -0.38314486
		 42.25654602 133.073043823 -2.90868044 38.94816971 133.046218872 -2.87962484 38.94909286 135.7376709 1.0029706955
		 42.65752029 136.030731201 1.18609381 38.65345383 138.2170105 1.079310894 42.49251938 138.79302979 1.1967659
		 38.2896347 140.25392151 -0.30939436 42.17451859 140.96260071 -0.28613043 37.99637985 141.069625854 -2.63282061
		 42.018600464 141.82391357 -2.76421785 37.88447571 140.35160828 -5.0027880669 41.73703766 141.038909912 -5.2507987
		 37.99669647 138.37487793 -6.51462126 41.78501892 138.91777039 -6.83182955 38.28939819 135.89546204 -6.59081125
		 41.94612122 136.1605835 -6.89084673 38.65215302 133.86050415 -5.20236635 42.102211 133.97097778 -5.399652
		 46.02696228 134.046447754 -0.35006952 45.76744843 133.26690674 -2.8682704 46.28445053 136.14903259 1.18925714
		 46.44261932 138.74133301 1.14886332 46.34246445 141.0049438477 -0.34436274 46.17613983 141.82264709 -2.81151152
		 45.91727066 141.066146851 -5.28329515 45.75948334 138.84068298 -6.82623434 45.60362244 136.25372314 -6.84315348
		 45.60994339 134.11528015 -5.34441328 34.97368622 133.73512268 -0.0795784 35.028671265 135.81535339 1.4991951
		 34.960495 138.42123413 1.55544496 34.793293 140.55708313 0.071342468 34.59011459 141.41088867 -2.38756943
		 34.42995453 140.65953064 -4.88006544 34.37621307 138.58718872 -6.4637332 34.44705582 135.98155212 -6.52882814
		 34.61319733 133.83804321 -5.045008183 34.81428146 132.97920227 -2.57930231 23.83736038 135.90698242 2.11288857
		 24.12900734 133.60646057 0.30572224 23.61271858 138.8309021 2.17539549 23.52634621 141.43261719 0.46632671
		 23.42808723 142.39868164 -2.38307714 23.41558647 141.5486908 -5.25829268 23.43854523 139.018814087 -7.08723402
		 23.66098404 136.095001221 -7.14979696 24.013217926 133.72239685 -5.41882372 24.045326233 132.73310852 -2.57384682
		 54.1468277 134.5549469 -0.5591445 58.0022087097 134.82188416 -0.6182189 57.81150055 134.24511719 -2.804317
		 53.92218399 133.91821289 -2.82983065 54.32014084 136.25045776 0.81081152 58.11248016 136.34860229 0.69195223
		 54.4009552 138.33470154 0.7358613 58.1336174 138.22418213 0.60028791 58.05973053 139.73460388 -0.68021154
		 54.36297226 140.013702393 -0.60255051 57.90327835 140.31202698 -2.81035566 54.20548248 140.66107178 -2.81832457
		 57.72515106 139.74006653 -4.93250036 53.99230957 140.037414551 -5.030581951 57.60176468 138.23106384 -6.22758341
		 53.81096649 138.37121582 -6.38930368 57.56720352 136.36090088 -6.21445513 53.71919632 136.29171753 -6.38647699
		 53.76388931 134.58380127 -5.046337605 57.65338135 134.83361816 -4.9294982 50.083786011 134.27749634 -0.40661001
		 49.81076813 133.55635071 -2.84002924 50.32938385 136.20584106 1.070008755 50.46965027 138.57699585 1.009885788
		 50.46256638 140.48783875 -0.43257952 50.29645157 141.23071289 -2.81001139 50.039459229 140.53268433 -5.18850946
		 49.79262161 138.64707947 -6.65849638 49.63911438 136.27908325 -6.66698694 49.6434288 134.32485962 -5.22508478
		 61.92330551 135.093444824 -0.67826462 61.72754669 134.5743103 -2.77850771 62.027332306 136.44992065 0.56911135
		 62.044654846 138.10838318 0.45830393 61.97310638 139.43927002 -0.76247501 61.81296921 139.94297791 -2.8017621
		 61.63331985 139.42877197 -4.82972479 61.51377487 138.086364746 -6.060700893 61.48130035 136.43135071 -6.039420605
		 61.5649147 135.084793091 -4.81195784 13.27375603 136.26667786 4.40402079 13.18824673 138.92247009 4.18202114
		 13.000009536743 134.86256409 -9.84407806 14.28676796 131.28320313 -7.14797926 16.94176865 129.985672 -2.85297918
		 13.11484623 142.52697754 1.52432108 13.2484808 144.17634583 -2.63337851 13.17249775 142.80189514 -6.57557917
		 13.15406609 139.23577881 -9.17577934 9.061999321 140.18319702 4.94902086 9.48379993 143.18869019 2.46202087
		 10.21987247 144.59385681 -1.84157896 9.55959988 143.43919373 -6.48277903 7.20459986 140.79930115 -9.97237968
		 5.51489973 143.55200195 4.00052070618 6.52629995 145.3361969 1.75562096 6.95169973 146.55999756 -1.58207893
		 6.18139982 146.15739441 -4.54607916 4.08949995 145.18418884 -6.70687914 4.26029968 138.52670288 7.05492115
		 3.044799805 142.19299316 5.34102058 5.45899963 135.70050049 8.84982109 10.8980999 135.44940186 6.53162098
		 14.20813084 131.81056213 4.58432102 5.9527998 132.33940125 10.78071976 10.4659996 132.022399902 9.22802067
		 13.83360004 129.60310364 8.011220932 16.60509682 130.6726532 1.28442097 7.68260002 129.63059998 -10.4083786
		 7.77320004 134.71069336 -10.95377731;
	setAttr -s 597 ".ed";
	setAttr ".ed[0:165]"  0 3 1 3 2 1 2 1 1 1 0 1 2 5 1 5 4 1 4 1 1 5 7 1 7 6 1
		 6 4 1 7 9 1 9 8 1 8 6 1 10 8 1 9 11 1 11 10 1 12 10 1 11 13 1 13 12 1 14 12 1 13 15 1
		 15 14 1 16 14 1 15 17 1 17 16 1 18 16 1 17 19 1 19 18 1 19 3 1 0 18 1 20 23 1 23 22 1
		 22 21 1 21 20 1 24 20 1 21 25 1 25 24 1 26 24 1 25 27 1 27 26 1 28 26 1 27 29 1 29 28 1
		 29 31 1 31 30 1 30 28 1 31 33 1 33 32 1 32 30 1 33 35 1 35 34 1 34 32 1 35 37 1 37 36 1
		 36 34 1 37 39 1 39 38 1 38 36 1 23 38 1 39 22 1 40 43 1 43 42 1 42 41 1 41 40 1 44 45 1
		 45 43 1 40 44 1 46 47 1 47 45 1 44 46 1 42 47 1 46 41 1 48 42 1 43 49 1 49 48 1 45 50 1
		 50 49 1 47 51 1 51 50 1 48 51 1 52 48 1 49 53 1 53 52 1 50 54 1 54 53 1 51 55 1 55 54 1
		 52 55 1 56 52 1 53 57 1 57 56 1 54 58 1 58 57 1 55 59 1 59 58 1 56 59 1 60 63 1 63 62 1
		 62 61 1 61 60 1 64 65 1 65 63 1 60 64 1 66 67 1 67 65 1 64 66 1 62 67 1 66 61 1 68 62 1
		 63 69 1 69 68 1 65 70 1 70 69 1 67 71 1 71 70 1 68 71 1 72 68 1 69 73 1 73 72 1 70 74 1
		 74 73 1 71 75 1 75 74 1 72 75 1 76 72 1 73 77 1 77 76 1 74 78 1 78 77 1 75 79 1 79 78 1
		 76 79 1 80 60 1 61 46 1 46 80 1 81 82 1 82 64 1 60 81 1 83 86 1 86 85 1 85 84 1 84 83 1
		 84 88 1 88 87 1 87 83 1 89 91 1 91 40 1 40 90 1 90 89 1 92 93 1 93 91 1 89 92 1 94 95 1
		 95 92 1 89 94 1 96 98 1 98 97 1 97 41 1 41 96 1 99 100 1 100 98 1 96 99 1 101 84 1
		 85 102 1 102 101 1 103 101 1;
	setAttr ".ed[166:331]" 101 98 1 100 103 1 61 96 1 66 99 1 82 99 1 44 104 1
		 104 80 1 91 104 1 104 81 1 93 81 1 105 76 1 77 106 1 106 105 1 78 107 1 107 106 1
		 79 108 1 108 107 1 105 108 1 109 56 1 57 110 1 110 109 1 58 111 1 111 110 1 59 112 1
		 112 111 1 109 112 1 90 114 1 114 113 1 113 97 1 97 90 1 40 115 1 115 114 1 41 116 1
		 116 115 1 113 116 1 117 113 1 114 118 1 118 117 1 115 119 1 119 118 1 116 120 1 120 119 1
		 117 120 1 121 117 1 118 122 1 122 121 1 119 123 1 123 122 1 120 124 1 124 123 1 121 124 1
		 125 121 1 122 126 1 126 125 1 123 127 1 127 126 1 124 128 1 128 127 1 125 128 1 129 125 1
		 126 130 1 130 129 1 127 131 1 131 130 1 128 132 1 132 131 1 129 132 1 133 135 1 135 134 1
		 134 102 1 102 133 1 90 136 1 136 135 1 133 90 1 97 137 1 137 136 1 134 137 1 97 102 1
		 138 134 1 135 139 1 139 138 1 136 140 1 140 139 1 137 141 1 141 140 1 138 141 1 142 138 1
		 139 143 1 143 142 1 140 144 1 144 143 1 141 145 1 145 144 1 142 145 1 146 142 1 143 147 1
		 147 146 1 144 148 1 148 147 1 145 149 1 149 148 1 146 149 1 150 146 1 147 151 1 151 150 1
		 148 152 1 152 151 1 149 153 1 153 152 1 150 153 1 86 155 1 155 154 1 154 85 1 133 156 1
		 156 155 1 86 133 1 102 157 1 157 156 1 154 157 1 158 154 1 155 159 1 159 158 1 156 160 1
		 160 159 1 157 161 1 161 160 1 158 161 1 162 158 1 159 163 1 163 162 1 160 164 1 164 163 1
		 161 165 1 165 164 1 162 165 1 166 162 1 163 167 1 167 166 1 164 168 1 168 167 1 165 169 1
		 169 168 1 166 169 1 170 166 1 167 171 1 171 170 1 168 172 1 172 171 1 169 173 1 173 172 1
		 170 173 1 83 94 1 94 133 1 87 95 1 103 88 1 174 82 1 81 175 1 175 174 1 176 99 1
		 174 176 1 177 100 1 176 177 1 178 103 1 177 178 1 179 88 1 178 179 1;
	setAttr ".ed[332:497]" 180 87 1 179 180 1 181 95 1 180 181 1 182 92 1 181 182 1
		 183 93 1 182 183 1 183 175 1 184 187 1 187 186 1 186 185 1 185 184 1 188 184 1 185 189 1
		 189 188 1 189 191 1 191 190 1 190 188 1 191 193 1 193 192 1 192 190 1 193 195 1 195 194 1
		 194 192 1 196 194 1 195 197 1 197 196 1 198 196 1 197 199 1 199 198 1 200 198 1 199 201 1
		 201 200 1 202 200 1 201 203 1 203 202 1 187 202 1 203 186 1 186 205 1 205 204 1 204 185 1
		 204 206 1 206 189 1 206 207 1 207 191 1 208 193 1 207 208 1 209 195 1 208 209 1 210 197 1
		 209 210 1 211 199 1 210 211 1 212 201 1 211 212 1 213 203 1 212 213 1 213 205 1 22 214 1
		 214 215 1 215 21 1 192 217 1 217 216 1 216 190 1 194 218 1 218 217 1 198 220 1 220 219 1
		 219 196 1 200 221 1 221 220 1 202 222 1 222 221 1 187 223 1 223 222 1 39 223 1 223 214 1
		 215 216 1 216 25 1 217 27 1 218 29 1 218 219 1 219 31 1 220 33 1 221 35 1 222 37 1
		 224 2 1 3 225 1 225 224 1 226 5 1 224 226 1 227 7 1 226 227 1 228 9 1 227 228 1 228 229 1
		 229 11 1 229 230 1 230 13 1 230 231 1 231 15 1 231 232 1 232 17 1 232 233 1 233 19 1
		 233 225 1 20 224 1 225 23 1 24 226 1 26 227 1 28 228 1 30 229 1 32 230 1 34 231 1
		 36 232 1 38 233 1 234 237 1 237 236 1 236 235 1 235 234 1 238 234 1 235 239 1 239 238 1
		 240 238 1 239 241 1 241 240 1 242 243 1 243 240 1 241 242 1 244 245 1 245 243 1 242 244 1
		 246 247 1 247 245 1 244 246 1 248 249 1 249 247 1 246 248 1 250 251 1 251 249 1 248 250 1
		 271 272 1 272 250 1 248 271 1 252 251 1 250 253 1 253 252 1 237 252 1 253 236 1 254 255 1
		 255 237 1 234 254 1 256 254 1 238 256 1 257 256 1 240 257 1 243 258 1 258 257 1 245 259 1
		 259 258 1 247 260 1 260 259 1 249 261 1 261 260 1 251 262 1;
	setAttr ".ed[498:596]" 262 261 1 263 262 1 252 263 1 255 263 1 205 255 1 254 204 1
		 256 206 1 257 207 1 258 208 1 259 209 1 260 210 1 261 211 1 262 212 1 263 213 1 264 265 1
		 265 177 1 176 264 1 266 264 1 174 266 1 183 268 1 268 267 1 267 175 1 182 269 1 269 268 1
		 180 271 1 271 270 1 270 181 1 179 272 1 273 272 1 178 273 1 265 273 1 236 265 1 264 235 1
		 266 239 1 266 267 1 267 241 1 268 242 1 269 244 1 269 270 1 270 246 1 273 253 1 274 296 1
		 296 297 1 297 1 1 1 274 1 4 275 1 275 274 1 6 279 1 279 275 1 8 280 1 280 279 1 10 281 1
		 281 280 1 12 282 1 282 281 1 14 276 1 276 282 1 16 277 1 277 276 1 18 278 1 278 277 1
		 283 275 1 279 284 1 284 283 1 280 285 1 285 284 1 281 286 1 286 285 1 282 287 1 287 286 1
		 288 283 1 284 289 1 289 288 1 285 290 1 290 289 1 286 291 1 291 290 1 287 292 1 292 291 1
		 278 301 1 288 294 1 294 293 1 293 283 1 295 293 1 295 296 1 296 283 1 298 295 1 299 296 1
		 298 299 1 300 297 1 299 300 1 215 188 1 214 184 1 301 297 1 0 301 1 287 303 1 303 302 1
		 277 302 1 303 276 1;
	setAttr -s 294 -ch 1176 ".fc[0:293]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 -3 4 5 6
		mu 0 4 3 2 4 5
		f 4 -6 7 8 9
		mu 0 4 5 4 6 7
		f 4 -9 10 11 12
		mu 0 4 7 6 8 9
		f 4 13 -12 14 15
		mu 0 4 10 9 8 11
		f 4 16 -16 17 18
		mu 0 4 12 10 11 13
		f 4 19 -19 20 21
		mu 0 4 14 12 13 15
		f 4 22 -22 23 24
		mu 0 4 16 14 15 17
		f 4 25 -25 26 27
		mu 0 4 18 16 17 19
		f 4 -28 28 -1 29
		mu 0 4 20 21 1 0
		f 4 30 31 32 33
		mu 0 4 22 23 24 25
		f 4 34 -34 35 36
		mu 0 4 26 22 25 27
		f 4 37 -37 38 39
		mu 0 4 28 26 27 29
		f 4 40 -40 41 42
		mu 0 4 30 28 29 31
		f 4 -43 43 44 45
		mu 0 4 30 31 32 33
		f 4 -45 46 47 48
		mu 0 4 33 32 34 35
		f 4 -48 49 50 51
		mu 0 4 35 34 36 37
		f 4 -51 52 53 54
		mu 0 4 37 36 38 39
		f 4 -54 55 56 57
		mu 0 4 39 38 40 41
		f 4 58 -57 59 -32
		mu 0 4 23 42 43 24
		f 4 60 61 62 63
		mu 0 4 44 45 46 47
		f 4 64 65 -61 66
		mu 0 4 48 49 50 51
		f 4 67 68 -65 69
		mu 0 4 52 53 49 48
		f 4 -63 70 -68 71
		mu 0 4 47 46 53 52
		f 4 72 -62 73 74
		mu 0 4 54 46 45 55
		f 4 -74 -66 75 76
		mu 0 4 56 50 49 57
		f 4 -76 -69 77 78
		mu 0 4 57 49 53 58
		f 4 -78 -71 -73 79
		mu 0 4 58 53 46 54
		f 4 80 -75 81 82
		mu 0 4 59 54 55 60
		f 4 -82 -77 83 84
		mu 0 4 61 56 57 62
		f 4 -84 -79 85 86
		mu 0 4 62 57 58 63
		f 4 -86 -80 -81 87
		mu 0 4 63 58 54 59
		f 4 88 -83 89 90
		mu 0 4 64 59 60 65
		f 4 -90 -85 91 92
		mu 0 4 66 61 62 67
		f 4 -92 -87 93 94
		mu 0 4 67 62 63 68
		f 4 -94 -88 -89 95
		mu 0 4 68 63 59 64
		f 4 96 97 98 99
		mu 0 4 69 70 71 72
		f 4 100 101 -97 102
		mu 0 4 73 74 70 69
		f 4 103 104 -101 105
		mu 0 4 75 76 74 73
		f 4 -99 106 -104 107
		mu 0 4 77 78 76 75
		f 4 108 -98 109 110
		mu 0 4 79 71 70 80
		f 4 -110 -102 111 112
		mu 0 4 80 70 74 81
		f 4 -112 -105 113 114
		mu 0 4 81 74 76 82
		f 4 -114 -107 -109 115
		mu 0 4 82 76 78 83
		f 4 116 -111 117 118
		mu 0 4 84 79 80 85
		f 4 -118 -113 119 120
		mu 0 4 85 80 81 86
		f 4 -120 -115 121 122
		mu 0 4 86 81 82 87
		f 4 -122 -116 -117 123
		mu 0 4 87 82 83 88
		f 4 124 -119 125 126
		mu 0 4 89 84 85 90
		f 4 -126 -121 127 128
		mu 0 4 90 85 86 91
		f 4 -128 -123 129 130
		mu 0 4 91 86 87 92
		f 4 -130 -124 -125 131
		mu 0 4 92 87 88 93
		f 4 132 -100 133 134
		mu 0 4 94 69 72 95
		f 4 135 136 -103 137
		mu 0 4 96 97 73 69
		f 4 138 139 140 141
		mu 0 4 98 99 100 101
		f 4 142 143 144 -142
		mu 0 4 101 102 103 98
		f 4 145 146 147 148
		mu 0 4 104 105 106 107
		f 4 149 150 -146 151
		mu 0 4 108 109 105 104
		f 4 152 153 -152 154
		mu 0 4 110 111 108 104
		f 4 155 156 157 158
		mu 0 4 112 113 114 115
		f 4 159 160 -156 161
		mu 0 4 116 117 113 112
		f 4 162 -141 163 164
		mu 0 4 118 119 120 121
		f 4 165 166 -161 167
		mu 0 4 122 118 113 117
		f 4 168 -159 -72 -134
		mu 0 4 77 112 115 123
		f 4 169 -162 -169 -108
		mu 0 4 75 116 112 77
		f 4 170 -170 -106 -137
		mu 0 4 97 116 75 73
		f 4 171 172 -135 -70
		mu 0 4 124 125 94 95
		f 4 -147 173 -172 -67
		mu 0 4 106 105 125 124
		f 4 -133 -173 174 -138
		mu 0 4 69 94 125 96
		f 4 175 -175 -174 -151
		mu 0 4 109 96 125 105
		f 4 176 -127 177 178
		mu 0 4 126 89 90 127
		f 4 -178 -129 179 180
		mu 0 4 127 90 91 128
		f 4 -180 -131 181 182
		mu 0 4 128 91 92 129
		f 4 -182 -132 -177 183
		mu 0 4 129 92 93 130
		f 4 -183 -184 -179 -181
		mu 0 4 128 129 131 132
		f 4 184 -91 185 186
		mu 0 4 133 64 65 134
		f 4 -186 -93 187 188
		mu 0 4 135 66 67 136
		f 4 -188 -95 189 190
		mu 0 4 136 67 68 137
		f 4 -190 -96 -185 191
		mu 0 4 137 68 64 133
		f 4 -189 -191 -192 -187
		mu 0 4 138 139 137 133
		f 4 192 193 194 195
		mu 0 4 140 141 142 143
		f 4 196 197 -193 -148
		mu 0 4 144 145 141 140
		f 4 198 199 -197 -64
		mu 0 4 146 147 148 149
		f 4 -195 200 -199 -158
		mu 0 4 143 142 147 146
		f 4 201 -194 202 203
		mu 0 4 150 142 141 151
		f 4 -203 -198 204 205
		mu 0 4 151 141 145 152
		f 4 -205 -200 206 207
		mu 0 4 153 148 147 154
		f 4 -207 -201 -202 208
		mu 0 4 154 147 142 150
		f 4 209 -204 210 211
		mu 0 4 155 150 151 156
		f 4 -211 -206 212 213
		mu 0 4 156 151 152 157
		f 4 -213 -208 214 215
		mu 0 4 158 153 154 159
		f 4 -215 -209 -210 216
		mu 0 4 159 154 150 155
		f 4 217 -212 218 219
		mu 0 4 160 155 156 161
		f 4 -219 -214 220 221
		mu 0 4 161 156 157 162
		f 4 -221 -216 222 223
		mu 0 4 163 158 159 164
		f 4 -223 -217 -218 224
		mu 0 4 164 159 155 160
		f 4 225 -220 226 227
		mu 0 4 165 160 161 166
		f 4 -227 -222 228 229
		mu 0 4 166 161 162 167
		f 4 -229 -224 230 231
		mu 0 4 168 163 164 169
		f 4 -231 -225 -226 232
		mu 0 4 169 164 160 165
		f 4 -230 -232 -233 -228
		mu 0 4 166 170 171 165
		f 4 233 234 235 236
		mu 0 4 172 173 174 175
		f 4 237 238 -234 239
		mu 0 4 176 177 173 172
		f 4 240 241 -238 -196
		mu 0 4 178 179 180 181
		f 4 -236 242 -241 243
		mu 0 4 175 174 179 178
		f 4 244 -235 245 246
		mu 0 4 182 174 173 183
		f 4 -246 -239 247 248
		mu 0 4 183 173 177 184
		f 4 -248 -242 249 250
		mu 0 4 185 180 179 186
		f 4 -250 -243 -245 251
		mu 0 4 186 179 174 182
		f 4 252 -247 253 254
		mu 0 4 187 182 183 188
		f 4 -254 -249 255 256
		mu 0 4 188 183 184 189
		f 4 -256 -251 257 258
		mu 0 4 190 185 186 191
		f 4 -258 -252 -253 259
		mu 0 4 191 186 182 187
		f 4 260 -255 261 262
		mu 0 4 192 187 188 193
		f 4 -262 -257 263 264
		mu 0 4 193 188 189 194
		f 4 -264 -259 265 266
		mu 0 4 195 190 191 196
		f 4 -266 -260 -261 267
		mu 0 4 196 191 187 192
		f 4 268 -263 269 270
		mu 0 4 197 192 193 198
		f 4 -270 -265 271 272
		mu 0 4 198 193 194 199
		f 4 -272 -267 273 274
		mu 0 4 200 195 196 201
		f 4 -274 -268 -269 275
		mu 0 4 201 196 192 197
		f 4 -273 -275 -276 -271
		mu 0 4 198 202 203 197
		f 4 276 277 278 -140
		mu 0 4 204 205 206 207
		f 4 279 280 -277 281
		mu 0 4 208 209 205 204
		f 4 282 283 -280 -237
		mu 0 4 210 211 209 208
		f 4 -279 284 -283 -164
		mu 0 4 212 213 211 210
		f 4 285 -278 286 287
		mu 0 4 214 206 205 215
		f 4 -287 -281 288 289
		mu 0 4 215 205 209 216
		f 4 -289 -284 290 291
		mu 0 4 216 209 211 217
		f 4 -291 -285 -286 292
		mu 0 4 217 211 213 218
		f 4 293 -288 294 295
		mu 0 4 219 214 215 220
		f 4 -295 -290 296 297
		mu 0 4 220 215 216 221
		f 4 -297 -292 298 299
		mu 0 4 221 216 217 222
		f 4 -299 -293 -294 300
		mu 0 4 222 217 218 223
		f 4 301 -296 302 303
		mu 0 4 224 219 220 225
		f 4 -303 -298 304 305
		mu 0 4 225 220 221 226
		f 4 -305 -300 306 307
		mu 0 4 226 221 222 227
		f 4 -307 -301 -302 308
		mu 0 4 227 222 223 228
		f 4 309 -304 310 311
		mu 0 4 229 224 225 230
		f 4 -311 -306 312 313
		mu 0 4 230 225 226 231
		f 4 -313 -308 314 315
		mu 0 4 231 226 227 232
		f 4 -315 -309 -310 316
		mu 0 4 232 227 228 233
		f 4 -314 -316 -317 -312
		mu 0 4 230 231 234 235
		f 4 317 318 -282 -139
		mu 0 4 98 110 236 99
		f 4 -244 -157 -167 -165
		mu 0 4 121 114 113 118
		f 4 -240 -319 -155 -149
		mu 0 4 107 236 110 104
		f 4 -145 319 -153 -318
		mu 0 4 98 103 111 110
		f 4 -143 -163 -166 320
		mu 0 4 237 119 118 122
		f 4 321 -136 322 323
		mu 0 4 238 97 96 239
		f 4 324 -171 -322 325
		mu 0 4 240 116 97 238
		f 4 326 -160 -325 327
		mu 0 4 241 117 116 240
		f 4 328 -168 -327 329
		mu 0 4 242 122 117 241
		f 4 330 -321 -329 331
		mu 0 4 243 237 122 242
		f 4 332 -144 -331 333
		mu 0 4 244 103 102 245
		f 4 334 -320 -333 335
		mu 0 4 246 111 103 244
		f 4 336 -154 -335 337
		mu 0 4 247 108 111 246
		f 4 338 -150 -337 339
		mu 0 4 248 109 108 247
		f 4 -323 -176 -339 340
		mu 0 4 239 96 109 248
		f 4 341 342 343 344
		mu 0 4 249 250 251 252
		f 4 345 -345 346 347
		mu 0 4 253 249 252 254
		f 4 -348 348 349 350
		mu 0 4 253 254 255 256
		f 4 -350 351 352 353
		mu 0 4 256 255 257 258
		f 4 -353 354 355 356
		mu 0 4 258 257 259 260
		f 4 357 -356 358 359
		mu 0 4 261 260 259 262
		f 4 360 -360 361 362
		mu 0 4 263 261 262 264
		f 4 363 -363 364 365
		mu 0 4 265 263 264 266
		f 4 366 -366 367 368
		mu 0 4 267 265 266 268
		f 4 369 -369 370 -343
		mu 0 4 269 267 268 270
		f 4 -344 371 372 373
		mu 0 4 252 251 271 272
		f 4 -347 -374 374 375
		mu 0 4 254 252 272 273
		f 4 -349 -376 376 377
		mu 0 4 255 254 273 274
		f 4 378 -352 -378 379
		mu 0 4 275 257 255 274
		f 4 380 -355 -379 381
		mu 0 4 276 259 257 275
		f 4 382 -359 -381 383
		mu 0 4 277 262 259 276
		f 4 384 -362 -383 385
		mu 0 4 278 264 262 277
		f 4 386 -365 -385 387
		mu 0 4 279 266 264 278
		f 4 388 -368 -387 389
		mu 0 4 280 268 266 279
		f 4 -371 -389 390 -372
		mu 0 4 270 268 280 281
		f 4 -33 391 392 393
		mu 0 4 25 24 282 283
		f 4 394 395 396 -354
		mu 0 4 258 284 285 256
		f 4 397 398 -395 -357
		mu 0 4 260 286 284 258
		f 4 399 400 401 -361
		mu 0 4 263 287 288 261
		f 4 402 403 -400 -364
		mu 0 4 265 289 287 263
		f 4 404 405 -403 -367
		mu 0 4 267 290 289 265
		f 4 406 407 -405 -370
		mu 0 4 269 291 290 267
		f 4 -60 408 409 -392
		mu 0 4 24 43 292 282
		f 4 -36 -394 410 411
		mu 0 4 27 25 283 285
		f 4 -39 -412 -396 412
		mu 0 4 29 27 285 284
		f 4 -42 -413 -399 413
		mu 0 4 31 29 284 286
		f 4 -44 -414 414 415
		mu 0 4 32 31 286 288
		f 4 -402 -415 -398 -358
		mu 0 4 261 288 286 260
		f 4 -47 -416 -401 416
		mu 0 4 34 32 288 287
		f 4 -50 -417 -404 417
		mu 0 4 36 34 287 289
		f 4 -53 -418 -406 418
		mu 0 4 38 36 289 290
		f 4 -56 -419 -408 -409
		mu 0 4 40 38 290 291
		f 4 419 -2 420 421
		mu 0 4 293 2 1 294
		f 4 422 -5 -420 423
		mu 0 4 295 4 2 293
		f 4 424 -8 -423 425
		mu 0 4 296 6 4 295
		f 4 426 -11 -425 427
		mu 0 4 297 8 6 296
		f 4 -15 -427 428 429
		mu 0 4 11 8 297 298
		f 4 -18 -430 430 431
		mu 0 4 13 11 298 299
		f 4 -21 -432 432 433
		mu 0 4 15 13 299 300
		f 4 -24 -434 434 435
		mu 0 4 17 15 300 301
		f 4 -27 -436 436 437
		mu 0 4 19 17 301 302
		f 4 -421 -29 -438 438
		mu 0 4 294 1 21 303
		f 4 439 -422 440 -31
		mu 0 4 22 293 294 23
		f 4 441 -424 -440 -35
		mu 0 4 26 295 293 22
		f 4 442 -426 -442 -38
		mu 0 4 28 296 295 26
		f 4 443 -428 -443 -41
		mu 0 4 30 297 296 28
		f 4 -429 -444 -46 444
		mu 0 4 298 297 30 33
		f 4 -431 -445 -49 445
		mu 0 4 299 298 33 35
		f 4 -433 -446 -52 446
		mu 0 4 300 299 35 37
		f 4 -435 -447 -55 447
		mu 0 4 301 300 37 39
		f 4 -437 -448 -58 448
		mu 0 4 302 301 39 41
		f 4 -441 -439 -449 -59
		mu 0 4 23 294 303 42
		f 4 449 450 451 452
		mu 0 4 304 305 306 307
		f 4 453 -453 454 455
		mu 0 4 308 304 307 309
		f 4 456 -456 457 458
		mu 0 4 310 308 309 311
		f 4 459 460 -459 461
		mu 0 4 312 313 310 311
		f 4 462 463 -460 464
		mu 0 4 314 315 313 312
		f 4 465 466 -463 467
		mu 0 4 316 317 315 314
		f 4 468 469 -466 470
		mu 0 4 318 319 317 316
		f 4 471 472 -469 473
		mu 0 4 320 321 319 318
		f 4 474 475 -474 476
		mu 0 4 322 323 320 318
		f 4 477 -472 478 479
		mu 0 4 324 321 320 325
		f 4 480 -480 481 -451
		mu 0 4 326 324 325 327
		f 4 482 483 -450 484
		mu 0 4 328 329 305 304
		f 4 485 -485 -454 486
		mu 0 4 330 328 304 308
		f 4 487 -487 -457 488
		mu 0 4 331 330 308 310
		f 4 489 490 -489 -461
		mu 0 4 313 332 331 310
		f 4 491 492 -490 -464
		mu 0 4 315 333 332 313
		f 4 493 494 -492 -467
		mu 0 4 317 334 333 315
		f 4 495 496 -494 -470
		mu 0 4 319 335 334 317
		f 4 497 498 -496 -473
		mu 0 4 321 336 335 319
		f 4 499 -498 -478 500
		mu 0 4 337 336 321 324
		f 4 501 -501 -481 -484
		mu 0 4 338 337 324 326
		f 4 -373 502 -483 503
		mu 0 4 272 271 329 328
		f 4 -375 -504 -486 504
		mu 0 4 273 272 328 330
		f 4 -377 -505 -488 505
		mu 0 4 274 273 330 331
		f 4 -380 -506 -491 506
		mu 0 4 275 274 331 332
		f 4 -382 -507 -493 507
		mu 0 4 276 275 332 333
		f 4 -384 -508 -495 508
		mu 0 4 277 276 333 334
		f 4 -386 -509 -497 509
		mu 0 4 278 277 334 335
		f 4 -388 -510 -499 510
		mu 0 4 279 278 335 336
		f 4 -390 -511 -500 511
		mu 0 4 280 279 336 337
		f 4 -391 -512 -502 -503
		mu 0 4 281 280 337 338
		f 4 512 513 -328 514
		mu 0 4 339 340 341 342
		f 4 515 -515 -326 516
		mu 0 4 343 339 342 344
		f 4 517 518 519 -341
		mu 0 4 345 346 347 348
		f 4 520 521 -518 -340
		mu 0 4 349 350 346 345
		f 4 522 523 524 -336
		mu 0 4 351 322 352 353
		f 4 525 -475 -523 -334
		mu 0 4 354 323 322 351
		f 4 526 -526 -332 527
		mu 0 4 355 323 354 356
		f 4 528 -528 -330 -514
		mu 0 4 357 355 356 358
		f 4 -452 529 -513 530
		mu 0 4 307 306 340 339
		f 4 -455 -531 -516 531
		mu 0 4 309 307 339 343
		f 4 -458 -532 532 533
		mu 0 4 311 309 343 347
		f 4 -520 -533 -517 -324
		mu 0 4 348 347 343 344
		f 4 -462 -534 -519 534
		mu 0 4 312 311 347 346
		f 4 -465 -535 -522 535
		mu 0 4 314 312 346 350
		f 4 -468 -536 536 537
		mu 0 4 316 314 350 352
		f 4 -525 -537 -521 -338
		mu 0 4 353 352 350 349
		f 4 -471 -538 -524 -477
		mu 0 4 318 316 352 322
		f 4 -479 -476 -527 538
		mu 0 4 325 320 323 355
		f 4 -482 -539 -529 -530
		mu 0 4 327 325 355 357
		f 4 539 540 541 542
		mu 0 4 359 360 361 362
		f 4 543 544 -543 -7
		mu 0 4 363 364 359 362
		f 4 545 546 -544 -10
		mu 0 4 365 366 364 363
		f 4 547 548 -546 -13
		mu 0 4 367 368 366 365
		f 4 549 550 -548 -14
		mu 0 4 369 370 371 372
		f 4 551 552 -550 -17
		mu 0 4 373 374 370 369
		f 4 553 554 -552 -20
		mu 0 4 375 376 374 373
		f 4 555 556 -554 -23
		mu 0 4 377 378 376 375
		f 4 557 558 -556 -26
		mu 0 4 379 380 378 377
		f 4 559 -547 560 561
		mu 0 4 381 364 366 382
		f 4 -549 562 563 -561
		mu 0 4 366 368 383 382
		f 4 -551 564 565 -563
		mu 0 4 371 370 384 385
		f 4 -553 566 567 -565
		mu 0 4 370 374 386 384
		f 4 568 -562 569 570
		mu 0 4 387 381 382 388
		f 4 -564 571 572 -570
		mu 0 4 382 383 389 388
		f 4 -566 573 574 -572
		mu 0 4 385 384 390 391
		f 4 -568 575 576 -574
		mu 0 4 384 386 392 390
		f 4 578 579 580 -569
		mu 0 4 387 394 395 381
		f 4 -582 582 583 -581
		mu 0 4 395 396 360 381
		f 4 585 -583 -585 586
		mu 0 4 398 360 396 397
		f 4 587 -541 -586 588
		mu 0 4 399 361 360 398
		f 4 589 -351 -397 -411
		mu 0 4 283 253 256 285
		f 4 590 -346 -590 -393
		mu 0 4 282 249 253 283
		f 4 -407 -342 -591 -410
		mu 0 4 292 250 249 282
		f 4 -558 -30 592 -578
		mu 0 4 380 379 400 393
		f 4 -592 -593 -4 -542
		mu 0 4 361 393 400 362
		f 4 -560 -584 -540 -545
		mu 0 4 364 381 360 359
		f 4 -557 595 -595 596
		mu 0 4 376 378 402 401
		f 4 -555 -597 -594 -567
		mu 0 4 374 376 401 386;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".pfrsVersion" 110;
createNode transform -n "ATTACH_POINTS" -p "TEMP_RigRoot";
	rename -uid "8A0B63B6-4E54-A648-0A2D-FB87CD234D19";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "GHOSTS" -p "TEMP_RigRoot";
	rename -uid "4904B008-4C90-79CE-5D09-12A89A0A3EC4";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "CONTROL_SHAPE_TEMPLATES" -p "TEMP_RigRoot";
	rename -uid "984FDDCC-4ABF-DB01-AE52-90945B2E9310";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr -l on -k off ".v" no;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0.1117423517145405 0 3.3306690738754696e-16 ;
	setAttr ".sp" -type "double3" 0.1117423517145405 0 3.3306690738754696e-16 ;
createNode transform -n "Circle_Wire" -p "CONTROL_SHAPE_TEMPLATES";
	rename -uid "22C51827-479F-BB7B-0F38-15A33B60DD49";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Circle_Wire";
createNode nurbsCurve -n "Circle_WireShape" -p "Circle_Wire";
	rename -uid "00921B1D-4415-7668-3C6E-F88A40AC0FC8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		-1.1081941875543881 3.5177356190060272e-33 -5.7448982375248304e-17
		-0.78361162489122449 -4.7982373409884725e-17 0.78361162489122449
		-1.1100856969603225e-16 -6.7857323231109171e-17 1.1081941875543884
		0.78361162489122449 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543881 -9.2536792101100989e-33 1.511240500779959e-16
		0.78361162489122449 4.7982373409884731e-17 -0.7836116248912246
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.78361162489122449 4.7982373409884719e-17 -0.78361162489122438
		;
createNode transform -n "Cube_Poly" -p "CONTROL_SHAPE_TEMPLATES";
	rename -uid "8E975A71-440E-FCA4-F63B-DFB4BCFAF11C";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Cube_PolyShape" -p "Cube_Poly";
	rename -uid "47E5752A-4F3F-F5F1-3ABC-74B8D1C0639E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Cube_Wire" -p "CONTROL_SHAPE_TEMPLATES";
	rename -uid "BACF7BDA-45B8-13D1-5ACE-D5B2A1EC9A12";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cube_Wire";
createNode nurbsCurve -n "Cube_WireShape" -p "Cube_Wire";
	rename -uid "FA100072-4C82-8212-6F5A-53A1BBB57E11";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 18 0 no 3
		19 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		19
		-1 1 -1
		-1 -1 -1
		-1 -1 1
		-1 1 1
		-1 1 -1
		1 1 -1
		1 -1 -1
		-1 -1 -1
		-1 1 -1
		1 1 -1
		1 1 1
		1 -1 1
		1 -1 -1
		1 1 -1
		1 1 1
		-1 1 1
		-1 -1 1
		1 -1 1
		1 1 1
		;
createNode transform -n "Cylinder_Poly" -p "CONTROL_SHAPE_TEMPLATES";
	rename -uid "E9E045FA-4075-855B-DCB1-1BB205FD9F02";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cylinder_Poly";
createNode mesh -n "Cylinder_PolyShape" -p "Cylinder_Poly";
	rename -uid "A0591690-4580-8290-2314-C1A90BA2F41E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 68 ".uvst[0].uvsp[0:67]" -type "float2" 0.64435619 0.096455812
		 0.61048549 0.045764625 0.55979437 0.011893868 0.50000006 1.4901161e-08 0.44020578
		 0.011893794 0.38951463 0.045764521 0.35564384 0.096455663 0.34375 0.15624994 0.35564381
		 0.21604425 0.38951454 0.2667354 0.44020569 0.30060616 0.49999997 0.3125 0.55979425
		 0.30060619 0.61048543 0.26673543 0.64435619 0.21604431 0.65625 0.15625 0.375 0.3125
		 0.390625 0.3125 0.40625 0.3125 0.421875 0.3125 0.4375 0.3125 0.453125 0.3125 0.46875
		 0.3125 0.484375 0.3125 0.5 0.3125 0.515625 0.3125 0.53125 0.3125 0.546875 0.3125
		 0.5625 0.3125 0.578125 0.3125 0.59375 0.3125 0.609375 0.3125 0.625 0.3125 0.375 0.68843985
		 0.390625 0.68843985 0.40625 0.68843985 0.421875 0.68843985 0.4375 0.68843985 0.453125
		 0.68843985 0.46875 0.68843985 0.484375 0.68843985 0.5 0.68843985 0.515625 0.68843985
		 0.53125 0.68843985 0.546875 0.68843985 0.5625 0.68843985 0.578125 0.68843985 0.59375
		 0.68843985 0.609375 0.68843985 0.625 0.68843985 0.64435619 0.78395581 0.61048549
		 0.73326463 0.55979437 0.69939387 0.50000006 0.6875 0.44020578 0.69939381 0.38951463
		 0.73326451 0.35564384 0.78395569 0.34375 0.84374994 0.35564381 0.90354425 0.38951454
		 0.95423543 0.44020569 0.98810613 0.49999997 1 0.55979425 0.98810619 0.61048543 0.95423543
		 0.64435619 0.90354431 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 34 ".vt[0:33]"  0.92387974 -1 -0.38268289 0.70710713 -1 -0.70710635
		 0.3826839 -1 -0.92387927 5.0663948e-07 -1 -0.99999994 -0.38268298 -1 -0.92387968
		 -0.70710647 -1 -0.70710707 -0.92387938 -1 -0.38268378 -1 -1 -3.5762787e-07 -0.92387962 -1 0.38268313
		 -0.70710695 -1 0.70710659 -0.3826836 -1 0.92387944 -1.4901161e-07 -1 1 0.38268331 -1 0.92387956
		 0.70710671 -1 0.70710683 0.9238795 -1 0.38268346 1 -1 0 0.92387974 1 -0.38268289
		 0.70710713 1 -0.70710635 0.3826839 1 -0.92387927 5.0663948e-07 1 -0.99999994 -0.38268298 1 -0.92387968
		 -0.70710647 1 -0.70710707 -0.92387938 1 -0.38268378 -1 1 -3.5762787e-07 -0.92387962 1 0.38268313
		 -0.70710695 1 0.70710659 -0.3826836 1 0.92387944 -1.4901161e-07 1 1 0.38268331 1 0.92387956
		 0.70710671 1 0.70710683 0.9238795 1 0.38268346 1 1 0 0 -1 0 0 1 0;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 0 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 16 0 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1 6 22 1 7 23 1 8 24 1
		 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 32 0 1 32 1 1 32 2 1 32 3 1
		 32 4 1 32 5 1 32 6 1 32 7 1 32 8 1 32 9 1 32 10 1 32 11 1 32 12 1 32 13 1 32 14 1
		 32 15 1 16 33 1 17 33 1 18 33 1 19 33 1 20 33 1 21 33 1 22 33 1 23 33 1 24 33 1 25 33 1
		 26 33 1 27 33 1 28 33 1 29 33 1 30 33 1 31 33 1;
	setAttr -s 48 -ch 160 ".fc[0:47]" -type "polyFaces" 
		f 4 0 33 -17 -33
		mu 0 4 16 17 34 33
		f 4 1 34 -18 -34
		mu 0 4 17 18 35 34
		f 4 2 35 -19 -35
		mu 0 4 18 19 36 35
		f 4 3 36 -20 -36
		mu 0 4 19 20 37 36
		f 4 4 37 -21 -37
		mu 0 4 20 21 38 37
		f 4 5 38 -22 -38
		mu 0 4 21 22 39 38
		f 4 6 39 -23 -39
		mu 0 4 22 23 40 39
		f 4 7 40 -24 -40
		mu 0 4 23 24 41 40
		f 4 8 41 -25 -41
		mu 0 4 24 25 42 41
		f 4 9 42 -26 -42
		mu 0 4 25 26 43 42
		f 4 10 43 -27 -43
		mu 0 4 26 27 44 43
		f 4 11 44 -28 -44
		mu 0 4 27 28 45 44
		f 4 12 45 -29 -45
		mu 0 4 28 29 46 45
		f 4 13 46 -30 -46
		mu 0 4 29 30 47 46
		f 4 14 47 -31 -47
		mu 0 4 30 31 48 47
		f 4 15 32 -32 -48
		mu 0 4 31 32 49 48
		f 3 -1 -49 49
		mu 0 3 1 0 66
		f 3 -2 -50 50
		mu 0 3 2 1 66
		f 3 -3 -51 51
		mu 0 3 3 2 66
		f 3 -4 -52 52
		mu 0 3 4 3 66
		f 3 -5 -53 53
		mu 0 3 5 4 66
		f 3 -6 -54 54
		mu 0 3 6 5 66
		f 3 -7 -55 55
		mu 0 3 7 6 66
		f 3 -8 -56 56
		mu 0 3 8 7 66
		f 3 -9 -57 57
		mu 0 3 9 8 66
		f 3 -10 -58 58
		mu 0 3 10 9 66
		f 3 -11 -59 59
		mu 0 3 11 10 66
		f 3 -12 -60 60
		mu 0 3 12 11 66
		f 3 -13 -61 61
		mu 0 3 13 12 66
		f 3 -14 -62 62
		mu 0 3 14 13 66
		f 3 -15 -63 63
		mu 0 3 15 14 66
		f 3 -16 -64 48
		mu 0 3 0 15 66
		f 3 16 65 -65
		mu 0 3 64 63 67
		f 3 17 66 -66
		mu 0 3 63 62 67
		f 3 18 67 -67
		mu 0 3 62 61 67
		f 3 19 68 -68
		mu 0 3 61 60 67
		f 3 20 69 -69
		mu 0 3 60 59 67
		f 3 21 70 -70
		mu 0 3 59 58 67
		f 3 22 71 -71
		mu 0 3 58 57 67
		f 3 23 72 -72
		mu 0 3 57 56 67
		f 3 24 73 -73
		mu 0 3 56 55 67
		f 3 25 74 -74
		mu 0 3 55 54 67
		f 3 26 75 -75
		mu 0 3 54 53 67
		f 3 27 76 -76
		mu 0 3 53 52 67
		f 3 28 77 -77
		mu 0 3 52 51 67
		f 3 29 78 -78
		mu 0 3 51 50 67
		f 3 30 79 -79
		mu 0 3 50 65 67
		f 3 31 64 -80
		mu 0 3 65 64 67;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Diamond_Wire" -p "CONTROL_SHAPE_TEMPLATES";
	rename -uid "1694163F-480E-31EB-74AD-54B0EA7DF30C";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Diamond_Wire";
createNode nurbsCurve -n "Diamond_WireShape" -p "Diamond_Wire";
	rename -uid "6230269F-4526-9F13-EE8D-7187887F0242";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0 0 1
		1 0 0
		0 0 -1
		-1 0 0
		0 0 1
		0 1 0
		0 0 -1
		0 -1 0
		0 0 1
		1 0 0
		0 1 0
		-1 0 0
		0 -1 0
		1 0 0
		;
createNode transform -n "Pin_Wire" -p "CONTROL_SHAPE_TEMPLATES";
	rename -uid "76C9CFBC-4C65-7893-2946-CBAB1894A788";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Pin_Wire";
createNode nurbsCurve -n "Pin_WireShape" -p "Pin_Wire";
	rename -uid "00F7EB4D-4B54-0644-FF09-D897244661DE";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 8 0 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		0 0 0
		0.66583944549173457 0 0
		0.9987591682376018 0.33291972274586729 0
		1.3316788909834691 0 0
		0.9987591682376018 -0.33291972274586729 0
		0.66583944549173457 0 0
		1.3316788909834691 0 0
		0.9987591682376018 0.33291972274586729 0
		0.9987591682376018 -0.33291972274586729 0
		;
createNode transform -n "Sphere_Poly" -p "CONTROL_SHAPE_TEMPLATES";
	rename -uid "586F757B-4A88-B0F0-B815-88BA7891156B";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Sphere_Poly";
createNode mesh -n "Sphere_PolyShape" -p "Sphere_Poly";
	rename -uid "842B6D55-4E74-D1AA-E63B-8AA8F9EFBEA4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 219 ".uvst[0].uvsp[0:218]" -type "float2" 0 0.083333336 0.0625
		 0.083333336 0.125 0.083333336 0.1875 0.083333336 0.25 0.083333336 0.3125 0.083333336
		 0.375 0.083333336 0.4375 0.083333336 0.5 0.083333336 0.5625 0.083333336 0.625 0.083333336
		 0.6875 0.083333336 0.75 0.083333336 0.8125 0.083333336 0.875 0.083333336 0.9375 0.083333336
		 1 0.083333336 0 0.16666667 0.0625 0.16666667 0.125 0.16666667 0.1875 0.16666667 0.25
		 0.16666667 0.3125 0.16666667 0.375 0.16666667 0.4375 0.16666667 0.5 0.16666667 0.5625
		 0.16666667 0.625 0.16666667 0.6875 0.16666667 0.75 0.16666667 0.8125 0.16666667 0.875
		 0.16666667 0.9375 0.16666667 1 0.16666667 0 0.25 0.0625 0.25 0.125 0.25 0.1875 0.25
		 0.25 0.25 0.3125 0.25 0.375 0.25 0.4375 0.25 0.5 0.25 0.5625 0.25 0.625 0.25 0.6875
		 0.25 0.75 0.25 0.8125 0.25 0.875 0.25 0.9375 0.25 1 0.25 0 0.33333334 0.0625 0.33333334
		 0.125 0.33333334 0.1875 0.33333334 0.25 0.33333334 0.3125 0.33333334 0.375 0.33333334
		 0.4375 0.33333334 0.5 0.33333334 0.5625 0.33333334 0.625 0.33333334 0.6875 0.33333334
		 0.75 0.33333334 0.8125 0.33333334 0.875 0.33333334 0.9375 0.33333334 1 0.33333334
		 0 0.41666669 0.0625 0.41666669 0.125 0.41666669 0.1875 0.41666669 0.25 0.41666669
		 0.3125 0.41666669 0.375 0.41666669 0.4375 0.41666669 0.5 0.41666669 0.5625 0.41666669
		 0.625 0.41666669 0.6875 0.41666669 0.75 0.41666669 0.8125 0.41666669 0.875 0.41666669
		 0.9375 0.41666669 1 0.41666669 0 0.5 0.0625 0.5 0.125 0.5 0.1875 0.5 0.25 0.5 0.3125
		 0.5 0.375 0.5 0.4375 0.5 0.5 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.8125
		 0.5 0.875 0.5 0.9375 0.5 1 0.5 0 0.58333331 0.0625 0.58333331 0.125 0.58333331 0.1875
		 0.58333331 0.25 0.58333331 0.3125 0.58333331 0.375 0.58333331 0.4375 0.58333331 0.5
		 0.58333331 0.5625 0.58333331 0.625 0.58333331 0.6875 0.58333331 0.75 0.58333331 0.8125
		 0.58333331 0.875 0.58333331 0.9375 0.58333331 1 0.58333331 0 0.66666663 0.0625 0.66666663
		 0.125 0.66666663 0.1875 0.66666663 0.25 0.66666663 0.3125 0.66666663 0.375 0.66666663
		 0.4375 0.66666663 0.5 0.66666663 0.5625 0.66666663 0.625 0.66666663 0.6875 0.66666663
		 0.75 0.66666663 0.8125 0.66666663 0.875 0.66666663 0.9375 0.66666663 1 0.66666663
		 0 0.74999994 0.0625 0.74999994 0.125 0.74999994 0.1875 0.74999994 0.25 0.74999994
		 0.3125 0.74999994 0.375 0.74999994 0.4375 0.74999994 0.5 0.74999994 0.5625 0.74999994
		 0.625 0.74999994 0.6875 0.74999994 0.75 0.74999994 0.8125 0.74999994 0.875 0.74999994
		 0.9375 0.74999994 1 0.74999994 0 0.83333325 0.0625 0.83333325 0.125 0.83333325 0.1875
		 0.83333325 0.25 0.83333325 0.3125 0.83333325 0.375 0.83333325 0.4375 0.83333325 0.5
		 0.83333325 0.5625 0.83333325 0.625 0.83333325 0.6875 0.83333325 0.75 0.83333325 0.8125
		 0.83333325 0.875 0.83333325 0.9375 0.83333325 1 0.83333325 0 0.91666657 0.0625 0.91666657
		 0.125 0.91666657 0.1875 0.91666657 0.25 0.91666657 0.3125 0.91666657 0.375 0.91666657
		 0.4375 0.91666657 0.5 0.91666657 0.5625 0.91666657 0.625 0.91666657 0.6875 0.91666657
		 0.75 0.91666657 0.8125 0.91666657 0.875 0.91666657 0.9375 0.91666657 1 0.91666657
		 0.03125 0 0.09375 0 0.15625 0 0.21875 0 0.28125 0 0.34375 0 0.40625 0 0.46875 0 0.53125
		 0 0.59375 0 0.65625 0 0.71875 0 0.78125 0 0.84375 0 0.90625 0 0.96875 0 0.03125 1
		 0.09375 1 0.15625 1 0.21875 1 0.28125 1 0.34375 1 0.40625 1 0.46875 1 0.53125 1 0.59375
		 1 0.65625 1 0.71875 1 0.78125 1 0.84375 1 0.90625 1 0.96875 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 178 ".vt";
	setAttr ".vt[0:165]"  0.23911767 -0.96592581 -0.099045619 0.18301278 -0.96592581 -0.18301259
		 0.09904588 -0.96592581 -0.23911755 1.3112795e-07 -0.96592581 -0.25881901 -0.099045642 -0.96592581 -0.23911765
		 -0.18301262 -0.96592581 -0.18301277 -0.23911758 -0.96592581 -0.09904585 -0.25881904 -0.96592581 -9.2560903e-08
		 -0.23911764 -0.96592581 0.099045679 -0.18301274 -0.96592581 0.18301265 -0.099045806 -0.96592581 0.23911759
		 -3.8567045e-08 -0.96592581 0.25881904 0.099045731 -0.96592581 0.23911762 0.18301268 -0.96592581 0.18301271
		 0.23911761 -0.96592581 0.099045768 0.25881904 -0.96592581 0 0.46193987 -0.86602539 -0.19134144
		 0.35355356 -0.86602539 -0.35355318 0.19134195 -0.86602539 -0.46193963 2.5331974e-07 -0.86602539 -0.49999997
		 -0.19134149 -0.86602539 -0.46193984 -0.35355324 -0.86602539 -0.35355353 -0.46193969 -0.86602539 -0.19134189
		 -0.5 -0.86602539 -1.7881393e-07 -0.46193981 -0.86602539 0.19134156 -0.35355347 -0.86602539 0.3535533
		 -0.1913418 -0.86602539 0.46193972 -7.4505806e-08 -0.86602539 0.5 0.19134165 -0.86602539 0.46193978
		 0.35355335 -0.86602539 0.35355341 0.46193975 -0.86602539 0.19134173 0.5 -0.86602539 0
		 0.65328163 -0.70710677 -0.27059767 0.50000024 -0.70710677 -0.4999997 0.27059838 -0.70710677 -0.65328127
		 3.582482e-07 -0.70710677 -0.70710671 -0.27059773 -0.70710677 -0.65328157 -0.49999976 -0.70710677 -0.50000018
		 -0.65328139 -0.70710677 -0.27059829 -0.70710677 -0.70710677 -2.5288108e-07 -0.65328151 -0.70710677 0.27059782
		 -0.50000012 -0.70710677 0.49999985 -0.27059817 -0.70710677 0.65328139 -1.0536712e-07 -0.70710677 0.70710677
		 0.27059796 -0.70710677 0.65328151 0.49999994 -0.70710677 0.5 0.65328145 -0.70710677 0.27059805
		 0.70710677 -0.70710677 0 0.80010337 -0.49999997 -0.33141312 0.61237276 -0.49999997 -0.6123721
		 0.33141398 -0.49999997 -0.80010295 4.387627e-07 -0.49999997 -0.86602539 -0.33141321 -0.49999997 -0.80010331
		 -0.61237222 -0.49999997 -0.6123727 -0.80010307 -0.49999997 -0.33141389 -0.86602545 -0.49999997 -3.0971484e-07
		 -0.80010325 -0.49999997 0.33141333 -0.61237264 -0.49999997 0.61237228 -0.33141375 -0.49999997 0.80010313
		 -1.2904785e-07 -0.49999997 0.86602545 0.33141348 -0.49999997 0.80010319 0.6123724 -0.49999997 0.61237252
		 0.80010319 -0.49999997 0.3314136 0.86602545 -0.49999997 0 0.89239931 -0.25881907 -0.36964327
		 0.68301302 -0.25881907 -0.68301231 0.36964425 -0.25881907 -0.89239883 4.8937613e-07 -0.25881907 -0.96592575
		 -0.36964336 -0.25881907 -0.89239925 -0.68301237 -0.25881907 -0.68301296 -0.89239895 -0.25881907 -0.36964414
		 -0.96592581 -0.25881907 -3.45442e-07 -0.89239919 -0.25881907 0.36964351 -0.68301284 -0.25881907 0.68301249
		 -0.36964399 -0.25881907 0.89239901 -1.4393416e-07 -0.25881907 0.96592581 0.36964369 -0.25881907 0.89239913
		 0.6830126 -0.25881907 0.68301272 0.89239907 -0.25881907 0.36964384 0.96592581 -0.25881907 0
		 0.92387974 0 -0.38268289 0.70710713 0 -0.70710635 0.3826839 0 -0.92387927 5.0663948e-07 0 -0.99999994
		 -0.38268298 0 -0.92387968 -0.70710647 0 -0.70710707 -0.92387938 0 -0.38268378 -1 0 -3.5762787e-07
		 -0.92387962 0 0.38268313 -0.70710695 0 0.70710659 -0.3826836 0 0.92387944 -1.4901161e-07 0 1
		 0.38268331 0 0.92387956 0.70710671 0 0.70710683 0.9238795 0 0.38268346 1 0 0 0.89239931 0.25881907 -0.36964327
		 0.68301302 0.25881907 -0.68301231 0.36964425 0.25881907 -0.89239883 4.8937613e-07 0.25881907 -0.96592575
		 -0.36964336 0.25881907 -0.89239925 -0.68301237 0.25881907 -0.68301296 -0.89239895 0.25881907 -0.36964414
		 -0.96592581 0.25881907 -3.45442e-07 -0.89239919 0.25881907 0.36964351 -0.68301284 0.25881907 0.68301249
		 -0.36964399 0.25881907 0.89239901 -1.4393416e-07 0.25881907 0.96592581 0.36964369 0.25881907 0.89239913
		 0.6830126 0.25881907 0.68301272 0.89239907 0.25881907 0.36964384 0.96592581 0.25881907 0
		 0.80010337 0.49999997 -0.33141312 0.61237276 0.49999997 -0.6123721 0.33141398 0.49999997 -0.80010295
		 4.387627e-07 0.49999997 -0.86602539 -0.33141321 0.49999997 -0.80010331 -0.61237222 0.49999997 -0.6123727
		 -0.80010307 0.49999997 -0.33141389 -0.86602545 0.49999997 -3.0971484e-07 -0.80010325 0.49999997 0.33141333
		 -0.61237264 0.49999997 0.61237228 -0.33141375 0.49999997 0.80010313 -1.2904785e-07 0.49999997 0.86602545
		 0.33141348 0.49999997 0.80010319 0.6123724 0.49999997 0.61237252 0.80010319 0.49999997 0.3314136
		 0.86602545 0.49999997 0 0.65328163 0.70710677 -0.27059767 0.50000024 0.70710677 -0.4999997
		 0.27059838 0.70710677 -0.65328127 3.582482e-07 0.70710677 -0.70710671 -0.27059773 0.70710677 -0.65328157
		 -0.49999976 0.70710677 -0.50000018 -0.65328139 0.70710677 -0.27059829 -0.70710677 0.70710677 -2.5288108e-07
		 -0.65328151 0.70710677 0.27059782 -0.50000012 0.70710677 0.49999985 -0.27059817 0.70710677 0.65328139
		 -1.0536712e-07 0.70710677 0.70710677 0.27059796 0.70710677 0.65328151 0.49999994 0.70710677 0.5
		 0.65328145 0.70710677 0.27059805 0.70710677 0.70710677 0 0.46193987 0.86602539 -0.19134144
		 0.35355356 0.86602539 -0.35355318 0.19134195 0.86602539 -0.46193963 2.5331974e-07 0.86602539 -0.49999997
		 -0.19134149 0.86602539 -0.46193984 -0.35355324 0.86602539 -0.35355353 -0.46193969 0.86602539 -0.19134189
		 -0.5 0.86602539 -1.7881393e-07 -0.46193981 0.86602539 0.19134156 -0.35355347 0.86602539 0.3535533
		 -0.1913418 0.86602539 0.46193972 -7.4505806e-08 0.86602539 0.5 0.19134165 0.86602539 0.46193978
		 0.35355335 0.86602539 0.35355341 0.46193975 0.86602539 0.19134173 0.5 0.86602539 0
		 0.23911767 0.96592581 -0.099045619 0.18301278 0.96592581 -0.18301259 0.09904588 0.96592581 -0.23911755
		 1.3112795e-07 0.96592581 -0.25881901 -0.099045642 0.96592581 -0.23911765 -0.18301262 0.96592581 -0.18301277;
	setAttr ".vt[166:177]" -0.23911758 0.96592581 -0.09904585 -0.25881904 0.96592581 -9.2560903e-08
		 -0.23911764 0.96592581 0.099045679 -0.18301274 0.96592581 0.18301265 -0.099045806 0.96592581 0.23911759
		 -3.8567045e-08 0.96592581 0.25881904 0.099045731 0.96592581 0.23911762 0.18301268 0.96592581 0.18301271
		 0.23911761 0.96592581 0.099045768 0.25881904 0.96592581 0 0 -1 0 0 1 0;
	setAttr -s 368 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 0 1 16 17 1 17 18 1 18 19 1 19 20 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 16 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 40 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 32 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 60 1 60 61 1 61 62 1 62 63 1 63 48 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 64 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 80 1 96 97 1
		 97 98 1 98 99 1 99 100 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 96 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 120 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 112 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 140 1 140 141 1 141 142 1
		 142 143 1 143 128 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 144 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 160 1 0 16 1 1 17 1 2 18 1 3 19 1 4 20 1 5 21 1
		 6 22 1 7 23 1 8 24 1 9 25 1 10 26 1 11 27 1 12 28 1 13 29 1 14 30 1 15 31 1 16 32 1
		 17 33 1 18 34 1 19 35 1 20 36 1 21 37 1 22 38 1 23 39 1 24 40 1 25 41 1 26 42 1 27 43 1
		 28 44 1 29 45 1 30 46 1 31 47 1 32 48 1 33 49 1 34 50 1 35 51 1 36 52 1 37 53 1 38 54 1
		 39 55 1 40 56 1 41 57 1 42 58 1 43 59 1 44 60 1 45 61 1 46 62 1 47 63 1 48 64 1 49 65 1
		 50 66 1 51 67 1 52 68 1 53 69 1 54 70 1 55 71 1 56 72 1 57 73 1 58 74 1 59 75 1 60 76 1
		 61 77 1 62 78 1 63 79 1 64 80 1 65 81 1 66 82 1 67 83 1 68 84 1 69 85 1 70 86 1 71 87 1
		 72 88 1 73 89 1 74 90 1 75 91 1 76 92 1 77 93 1 78 94 1 79 95 1 80 96 1 81 97 1 82 98 1
		 83 99 1 84 100 1 85 101 1 86 102 1 87 103 1 88 104 1 89 105 1 90 106 1 91 107 1 92 108 1
		 93 109 1 94 110 1 95 111 1 96 112 1 97 113 1 98 114 1 99 115 1 100 116 1 101 117 1
		 102 118 1 103 119 1 104 120 1 105 121 1 106 122 1 107 123 1 108 124 1 109 125 1 110 126 1
		 111 127 1 112 128 1 113 129 1 114 130 1 115 131 1 116 132 1 117 133 1 118 134 1 119 135 1
		 120 136 1 121 137 1 122 138 1 123 139 1 124 140 1 125 141 1 126 142 1 127 143 1 128 144 1
		 129 145 1 130 146 1 131 147 1 132 148 1 133 149 1 134 150 1 135 151 1 136 152 1 137 153 1
		 138 154 1 139 155 1 140 156 1 141 157 1 142 158 1 143 159 1 144 160 1 145 161 1 146 162 1
		 147 163 1 148 164 1 149 165 1 150 166 1 151 167 1 152 168 1 153 169 1 154 170 1 155 171 1;
	setAttr ".ed[332:367]" 156 172 1 157 173 1 158 174 1 159 175 1 176 0 1 176 1 1
		 176 2 1 176 3 1 176 4 1 176 5 1 176 6 1 176 7 1 176 8 1 176 9 1 176 10 1 176 11 1
		 176 12 1 176 13 1 176 14 1 176 15 1 160 177 1 161 177 1 162 177 1 163 177 1 164 177 1
		 165 177 1 166 177 1 167 177 1 168 177 1 169 177 1 170 177 1 171 177 1 172 177 1 173 177 1
		 174 177 1 175 177 1;
	setAttr -s 192 -ch 736 ".fc[0:191]" -type "polyFaces" 
		f 4 0 177 -17 -177
		mu 0 4 0 1 18 17
		f 4 1 178 -18 -178
		mu 0 4 1 2 19 18
		f 4 2 179 -19 -179
		mu 0 4 2 3 20 19
		f 4 3 180 -20 -180
		mu 0 4 3 4 21 20
		f 4 4 181 -21 -181
		mu 0 4 4 5 22 21
		f 4 5 182 -22 -182
		mu 0 4 5 6 23 22
		f 4 6 183 -23 -183
		mu 0 4 6 7 24 23
		f 4 7 184 -24 -184
		mu 0 4 7 8 25 24
		f 4 8 185 -25 -185
		mu 0 4 8 9 26 25
		f 4 9 186 -26 -186
		mu 0 4 9 10 27 26
		f 4 10 187 -27 -187
		mu 0 4 10 11 28 27
		f 4 11 188 -28 -188
		mu 0 4 11 12 29 28
		f 4 12 189 -29 -189
		mu 0 4 12 13 30 29
		f 4 13 190 -30 -190
		mu 0 4 13 14 31 30
		f 4 14 191 -31 -191
		mu 0 4 14 15 32 31
		f 4 15 176 -32 -192
		mu 0 4 15 16 33 32
		f 4 16 193 -33 -193
		mu 0 4 17 18 35 34
		f 4 17 194 -34 -194
		mu 0 4 18 19 36 35
		f 4 18 195 -35 -195
		mu 0 4 19 20 37 36
		f 4 19 196 -36 -196
		mu 0 4 20 21 38 37
		f 4 20 197 -37 -197
		mu 0 4 21 22 39 38
		f 4 21 198 -38 -198
		mu 0 4 22 23 40 39
		f 4 22 199 -39 -199
		mu 0 4 23 24 41 40
		f 4 23 200 -40 -200
		mu 0 4 24 25 42 41
		f 4 24 201 -41 -201
		mu 0 4 25 26 43 42
		f 4 25 202 -42 -202
		mu 0 4 26 27 44 43
		f 4 26 203 -43 -203
		mu 0 4 27 28 45 44
		f 4 27 204 -44 -204
		mu 0 4 28 29 46 45
		f 4 28 205 -45 -205
		mu 0 4 29 30 47 46
		f 4 29 206 -46 -206
		mu 0 4 30 31 48 47
		f 4 30 207 -47 -207
		mu 0 4 31 32 49 48
		f 4 31 192 -48 -208
		mu 0 4 32 33 50 49
		f 4 32 209 -49 -209
		mu 0 4 34 35 52 51
		f 4 33 210 -50 -210
		mu 0 4 35 36 53 52
		f 4 34 211 -51 -211
		mu 0 4 36 37 54 53
		f 4 35 212 -52 -212
		mu 0 4 37 38 55 54
		f 4 36 213 -53 -213
		mu 0 4 38 39 56 55
		f 4 37 214 -54 -214
		mu 0 4 39 40 57 56
		f 4 38 215 -55 -215
		mu 0 4 40 41 58 57
		f 4 39 216 -56 -216
		mu 0 4 41 42 59 58
		f 4 40 217 -57 -217
		mu 0 4 42 43 60 59
		f 4 41 218 -58 -218
		mu 0 4 43 44 61 60
		f 4 42 219 -59 -219
		mu 0 4 44 45 62 61
		f 4 43 220 -60 -220
		mu 0 4 45 46 63 62
		f 4 44 221 -61 -221
		mu 0 4 46 47 64 63
		f 4 45 222 -62 -222
		mu 0 4 47 48 65 64
		f 4 46 223 -63 -223
		mu 0 4 48 49 66 65
		f 4 47 208 -64 -224
		mu 0 4 49 50 67 66
		f 4 48 225 -65 -225
		mu 0 4 51 52 69 68
		f 4 49 226 -66 -226
		mu 0 4 52 53 70 69
		f 4 50 227 -67 -227
		mu 0 4 53 54 71 70
		f 4 51 228 -68 -228
		mu 0 4 54 55 72 71
		f 4 52 229 -69 -229
		mu 0 4 55 56 73 72
		f 4 53 230 -70 -230
		mu 0 4 56 57 74 73
		f 4 54 231 -71 -231
		mu 0 4 57 58 75 74
		f 4 55 232 -72 -232
		mu 0 4 58 59 76 75
		f 4 56 233 -73 -233
		mu 0 4 59 60 77 76
		f 4 57 234 -74 -234
		mu 0 4 60 61 78 77
		f 4 58 235 -75 -235
		mu 0 4 61 62 79 78
		f 4 59 236 -76 -236
		mu 0 4 62 63 80 79
		f 4 60 237 -77 -237
		mu 0 4 63 64 81 80
		f 4 61 238 -78 -238
		mu 0 4 64 65 82 81
		f 4 62 239 -79 -239
		mu 0 4 65 66 83 82
		f 4 63 224 -80 -240
		mu 0 4 66 67 84 83
		f 4 64 241 -81 -241
		mu 0 4 68 69 86 85
		f 4 65 242 -82 -242
		mu 0 4 69 70 87 86
		f 4 66 243 -83 -243
		mu 0 4 70 71 88 87
		f 4 67 244 -84 -244
		mu 0 4 71 72 89 88
		f 4 68 245 -85 -245
		mu 0 4 72 73 90 89
		f 4 69 246 -86 -246
		mu 0 4 73 74 91 90
		f 4 70 247 -87 -247
		mu 0 4 74 75 92 91
		f 4 71 248 -88 -248
		mu 0 4 75 76 93 92
		f 4 72 249 -89 -249
		mu 0 4 76 77 94 93
		f 4 73 250 -90 -250
		mu 0 4 77 78 95 94
		f 4 74 251 -91 -251
		mu 0 4 78 79 96 95
		f 4 75 252 -92 -252
		mu 0 4 79 80 97 96
		f 4 76 253 -93 -253
		mu 0 4 80 81 98 97
		f 4 77 254 -94 -254
		mu 0 4 81 82 99 98
		f 4 78 255 -95 -255
		mu 0 4 82 83 100 99
		f 4 79 240 -96 -256
		mu 0 4 83 84 101 100
		f 4 80 257 -97 -257
		mu 0 4 85 86 103 102
		f 4 81 258 -98 -258
		mu 0 4 86 87 104 103
		f 4 82 259 -99 -259
		mu 0 4 87 88 105 104
		f 4 83 260 -100 -260
		mu 0 4 88 89 106 105
		f 4 84 261 -101 -261
		mu 0 4 89 90 107 106
		f 4 85 262 -102 -262
		mu 0 4 90 91 108 107
		f 4 86 263 -103 -263
		mu 0 4 91 92 109 108
		f 4 87 264 -104 -264
		mu 0 4 92 93 110 109
		f 4 88 265 -105 -265
		mu 0 4 93 94 111 110
		f 4 89 266 -106 -266
		mu 0 4 94 95 112 111
		f 4 90 267 -107 -267
		mu 0 4 95 96 113 112
		f 4 91 268 -108 -268
		mu 0 4 96 97 114 113
		f 4 92 269 -109 -269
		mu 0 4 97 98 115 114
		f 4 93 270 -110 -270
		mu 0 4 98 99 116 115
		f 4 94 271 -111 -271
		mu 0 4 99 100 117 116
		f 4 95 256 -112 -272
		mu 0 4 100 101 118 117
		f 4 96 273 -113 -273
		mu 0 4 102 103 120 119
		f 4 97 274 -114 -274
		mu 0 4 103 104 121 120
		f 4 98 275 -115 -275
		mu 0 4 104 105 122 121
		f 4 99 276 -116 -276
		mu 0 4 105 106 123 122
		f 4 100 277 -117 -277
		mu 0 4 106 107 124 123
		f 4 101 278 -118 -278
		mu 0 4 107 108 125 124
		f 4 102 279 -119 -279
		mu 0 4 108 109 126 125
		f 4 103 280 -120 -280
		mu 0 4 109 110 127 126
		f 4 104 281 -121 -281
		mu 0 4 110 111 128 127
		f 4 105 282 -122 -282
		mu 0 4 111 112 129 128
		f 4 106 283 -123 -283
		mu 0 4 112 113 130 129
		f 4 107 284 -124 -284
		mu 0 4 113 114 131 130
		f 4 108 285 -125 -285
		mu 0 4 114 115 132 131
		f 4 109 286 -126 -286
		mu 0 4 115 116 133 132
		f 4 110 287 -127 -287
		mu 0 4 116 117 134 133
		f 4 111 272 -128 -288
		mu 0 4 117 118 135 134
		f 4 112 289 -129 -289
		mu 0 4 119 120 137 136
		f 4 113 290 -130 -290
		mu 0 4 120 121 138 137
		f 4 114 291 -131 -291
		mu 0 4 121 122 139 138
		f 4 115 292 -132 -292
		mu 0 4 122 123 140 139
		f 4 116 293 -133 -293
		mu 0 4 123 124 141 140
		f 4 117 294 -134 -294
		mu 0 4 124 125 142 141
		f 4 118 295 -135 -295
		mu 0 4 125 126 143 142
		f 4 119 296 -136 -296
		mu 0 4 126 127 144 143
		f 4 120 297 -137 -297
		mu 0 4 127 128 145 144
		f 4 121 298 -138 -298
		mu 0 4 128 129 146 145
		f 4 122 299 -139 -299
		mu 0 4 129 130 147 146
		f 4 123 300 -140 -300
		mu 0 4 130 131 148 147
		f 4 124 301 -141 -301
		mu 0 4 131 132 149 148
		f 4 125 302 -142 -302
		mu 0 4 132 133 150 149
		f 4 126 303 -143 -303
		mu 0 4 133 134 151 150
		f 4 127 288 -144 -304
		mu 0 4 134 135 152 151
		f 4 128 305 -145 -305
		mu 0 4 136 137 154 153
		f 4 129 306 -146 -306
		mu 0 4 137 138 155 154
		f 4 130 307 -147 -307
		mu 0 4 138 139 156 155
		f 4 131 308 -148 -308
		mu 0 4 139 140 157 156
		f 4 132 309 -149 -309
		mu 0 4 140 141 158 157
		f 4 133 310 -150 -310
		mu 0 4 141 142 159 158
		f 4 134 311 -151 -311
		mu 0 4 142 143 160 159
		f 4 135 312 -152 -312
		mu 0 4 143 144 161 160
		f 4 136 313 -153 -313
		mu 0 4 144 145 162 161
		f 4 137 314 -154 -314
		mu 0 4 145 146 163 162
		f 4 138 315 -155 -315
		mu 0 4 146 147 164 163
		f 4 139 316 -156 -316
		mu 0 4 147 148 165 164
		f 4 140 317 -157 -317
		mu 0 4 148 149 166 165
		f 4 141 318 -158 -318
		mu 0 4 149 150 167 166
		f 4 142 319 -159 -319
		mu 0 4 150 151 168 167
		f 4 143 304 -160 -320
		mu 0 4 151 152 169 168
		f 4 144 321 -161 -321
		mu 0 4 153 154 171 170
		f 4 145 322 -162 -322
		mu 0 4 154 155 172 171
		f 4 146 323 -163 -323
		mu 0 4 155 156 173 172
		f 4 147 324 -164 -324
		mu 0 4 156 157 174 173
		f 4 148 325 -165 -325
		mu 0 4 157 158 175 174
		f 4 149 326 -166 -326
		mu 0 4 158 159 176 175
		f 4 150 327 -167 -327
		mu 0 4 159 160 177 176
		f 4 151 328 -168 -328
		mu 0 4 160 161 178 177
		f 4 152 329 -169 -329
		mu 0 4 161 162 179 178
		f 4 153 330 -170 -330
		mu 0 4 162 163 180 179
		f 4 154 331 -171 -331
		mu 0 4 163 164 181 180
		f 4 155 332 -172 -332
		mu 0 4 164 165 182 181
		f 4 156 333 -173 -333
		mu 0 4 165 166 183 182
		f 4 157 334 -174 -334
		mu 0 4 166 167 184 183
		f 4 158 335 -175 -335
		mu 0 4 167 168 185 184
		f 4 159 320 -176 -336
		mu 0 4 168 169 186 185
		f 3 -1 -337 337
		mu 0 3 1 0 187
		f 3 -2 -338 338
		mu 0 3 2 1 188
		f 3 -3 -339 339
		mu 0 3 3 2 189
		f 3 -4 -340 340
		mu 0 3 4 3 190
		f 3 -5 -341 341
		mu 0 3 5 4 191
		f 3 -6 -342 342
		mu 0 3 6 5 192
		f 3 -7 -343 343
		mu 0 3 7 6 193
		f 3 -8 -344 344
		mu 0 3 8 7 194
		f 3 -9 -345 345
		mu 0 3 9 8 195
		f 3 -10 -346 346
		mu 0 3 10 9 196
		f 3 -11 -347 347
		mu 0 3 11 10 197
		f 3 -12 -348 348
		mu 0 3 12 11 198
		f 3 -13 -349 349
		mu 0 3 13 12 199
		f 3 -14 -350 350
		mu 0 3 14 13 200
		f 3 -15 -351 351
		mu 0 3 15 14 201
		f 3 -16 -352 336
		mu 0 3 16 15 202
		f 3 160 353 -353
		mu 0 3 170 171 203
		f 3 161 354 -354
		mu 0 3 171 172 204
		f 3 162 355 -355
		mu 0 3 172 173 205
		f 3 163 356 -356
		mu 0 3 173 174 206
		f 3 164 357 -357
		mu 0 3 174 175 207
		f 3 165 358 -358
		mu 0 3 175 176 208
		f 3 166 359 -359
		mu 0 3 176 177 209
		f 3 167 360 -360
		mu 0 3 177 178 210
		f 3 168 361 -361
		mu 0 3 178 179 211
		f 3 169 362 -362
		mu 0 3 179 180 212
		f 3 170 363 -363
		mu 0 3 180 181 213
		f 3 171 364 -364
		mu 0 3 181 182 214
		f 3 172 365 -365
		mu 0 3 182 183 215
		f 3 173 366 -366
		mu 0 3 183 184 216
		f 3 174 367 -367
		mu 0 3 184 185 217
		f 3 175 352 -368
		mu 0 3 185 186 218;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Square_Wire" -p "CONTROL_SHAPE_TEMPLATES";
	rename -uid "C022FA2B-4A11-17DD-6F54-3D8B6C1CD2C9";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Square_Wire";
createNode nurbsCurve -n "Square_WireShape" -p "Square_Wire";
	rename -uid "1AF77460-4EEA-66A0-C12D-4DA5B6BE10DA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-1 0 -1
		1 0 -1
		1 0 1
		-1 0 1
		-1 0 -1
		;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "5CB57108-4139-259E-67AC-6CA936AD738C";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "E954B75E-4CE9-D289-653D-7798A87226C7";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "A2972CC8-4A58-8675-A955-3294D35AF3A4";
createNode displayLayerManager -n "layerManager";
	rename -uid "03CA0F48-440C-4690-90D2-2B8004C60E4C";
	setAttr -s 9 ".dli[1:8]"  9 1 3 4 2 6 7 8;
	setAttr -s 6 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "41089FF6-4ABB-B74A-E5C4-1EAD9D288DD1";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "9C188300-4743-7E96-93CD-849C2944F323";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "61356F95-4EF4-D16D-14C4-0AB02369D83B";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "DD8AF880-4CC8-823D-4792-6AAB3D603EA7";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1200\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 1\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n"
		+ "                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1200\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1200\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 50 -size 100 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "B6388A7B-49A3-0D39-A7F8-22A6CD85078F";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "Control_Disp1";
	rename -uid "01579237-4FE4-7337-B46C-239C8466DE3F";
	setAttr ".dt" 2;
	setAttr ".v" no;
	setAttr ".do" 3;
createNode displayLayer -n "Joint_Disp1";
	rename -uid "4C80782A-4126-6FA8-8803-32963673BA82";
	setAttr ".do" 4;
createNode shadingEngine -n "Mesh_Human_Biped_01_lambert2SG";
	rename -uid "B9666D6C-466A-5569-3967-628D8B9CDABE";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
createNode materialInfo -n "materialInfo3";
	rename -uid "B32DD872-4333-9F54-F1AC-148A761538DC";
createNode lambert -n "lambert2";
	rename -uid "2729B46D-402B-DD2E-0D4F-0CBA79BDCFB3";
createNode displayLayer -n "Control_Disp";
	rename -uid "48EE63D5-4012-29D3-B0EE-50961D652719";
	setAttr ".do" 5;
createNode displayLayer -n "Joint_Disp";
	rename -uid "35365468-4A76-EBB3-DE80-33A43B90487D";
	setAttr ".do" 6;
createNode displayLayer -n "Meshes_Disp";
	rename -uid "8C0DE601-4B4D-1757-A477-91961C9678FA";
	setAttr ".do" 7;
createNode materialInfo -n "materialInfo1";
	rename -uid "3B11903D-4632-025A-033F-78814EC43B17";
createNode shadingEngine -n "lambert2SG";
	rename -uid "FD0DB3B4-4913-BE1C-9DB3-C1992115968F";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode lambert -n "TempMaterial";
	rename -uid "90AD6686-41EB-DE85-9C27-A68D606C102A";
	setAttr ".c" -type "float3" 1 0.92308331 0 ;
	setAttr ".it" -type "float3" 0.69277108 0.69277108 0.69277108 ;
createNode surfaceShader -n "LControlsMaterial";
	rename -uid "DB0603C4-44E2-928D-EF19-7D8ABDFDE4D8";
	setAttr ".oc" -type "float3" 0 0 1 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "LControlsMaterialSG";
	rename -uid "AF718DF4-4F13-302E-3D50-209FEB45345F";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "FA8703D2-41BC-F0CB-FDB0-27BDE3194744";
createNode surfaceShader -n "MControlsMaterial";
	rename -uid "42E9382B-4C62-5CF0-1620-0FB9B747F095";
	setAttr ".oc" -type "float3" 1 1 0 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "MControlsMaterialSG";
	rename -uid "55F4A4F0-488B-74C2-F6F0-21B978B01AFF";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr -s 27 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "8613E958-4AF2-EDCA-C0BE-39827849A4A4";
createNode surfaceShader -n "RControlsMaterial";
	rename -uid "F93F0055-4334-5211-0991-E6BEDBE2A23C";
	setAttr ".oc" -type "float3" 1 0 0 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "RControlsMaterialSG";
	rename -uid "8956BBD0-447B-ECAF-53BD-CC89DF9C1CA3";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "8A217BF9-4E81-05F9-2369-28854D382806";
createNode groupId -n "groupId2";
	rename -uid "C6C414C9-4DA2-419E-724B-358F59BC07C1";
	setAttr ".ihi" 0;
createNode skinCluster -n "skinCluster1";
	rename -uid "9B7B3F21-478D-F34E-2FC3-D385CCB93047";
	addAttr -ci true -sn "pfrsMeshes" -ln "pfrsMeshes" -dt "string";
	setAttr -s 304 ".wl";
	setAttr ".wl[0:249].w"
		2 1 0.94313084725212526 2 0.056869152747874768
		2 1 0.96230048930361012 2 0.03769951069638991
		2 1 0.90125796406272907 2 0.098742035937270947
		2 1 0.87090643919756849 2 0.12909356080243162
		2 1 0.97608001891075868 2 0.023919981089241326
		2 1 0.9239165699210159 2 0.076083430078984146
		2 1 0.9739309805272659 2 0.026069019472734115
		2 1 0.91941504208980185 2 0.080584957910198138
		2 1 0.94047803794117413 2 0.059521962058825845
		2 1 0.86950503396162737 2 0.13049496603837271
		2 1 0.95776567777558674 2 0.04223432222441325
		2 1 0.89007524328887655 2 0.10992475671112342
		2 1 0.94000709479831424 2 0.05999290520168573
		2 1 0.87323323516896023 2 0.1267667648310398
		2 1 0.90861824723495821 2 0.091381752765041749
		2 1 0.84726713526367681 2 0.15273286473632317
		2 1 0.9009159679141161 2 0.099084032085883983
		2 1 0.83554400784501615 2 0.16445599215498391
		2 1 0.93481063288260735 2 0.065189367117392691
		2 1 0.85511660925900912 2 0.1448833907409908
		2 1 0.52402405121411177 2 0.47597594878588828
		2 1 0.80576068579877125 2 0.19423931420122886
		2 1 0.79723958987514731 2 0.20276041012485263
		2 1 0.52051491136086869 2 0.47948508863913136
		2 1 0.53080321871823943 2 0.46919678128176051
		2 1 0.81513647370188314 2 0.18486352629811684
		2 1 0.53000470974894032 2 0.46999529025105968
		2 1 0.82292840550122848 2 0.17707159449877158
		2 1 0.51904025257501574 2 0.48095974742498421
		2 1 0.82489675280596519 2 0.17510324719403489
		2 1 0.50215810319184861 2 0.49784189680815144
		2 1 0.81748493302938741 2 0.18251506697061259
		2 1 0.5 2 0.5
		2 1 0.80418859798386944 2 0.19581140201613054
		2 1 0.5 2 0.5
		2 1 0.79309779685362292 2 0.20690220314637717
		2 1 0.5 2 0.5
		2 1 0.78892921016926199 2 0.21107078983073796
		2 1 0.50792571526870811 2 0.49207428473129189
		2 1 0.7910337598555488 2 0.20896624014445117
		2 6 0.5 7 0.5
		2 7 0.96862670133346918 8 0.03137329866653079
		2 15 0.58910027231298911 16 0.410899727687011
		2 15 0.67408762189821692 16 0.32591237810178314
		2 6 0.98361695938909166 7 0.016383040610908343
		2 15 0.71515541935898175 16 0.28484458064101831
		2 15 0.97433788589825798 16 0.025662114101742017
		2 15 0.6168992033961993 16 0.3831007966038007
		2 16 0.84704110189976289 17 0.15295889810023713
		2 16 0.82903529586545566 17 0.17096470413454443
		2 16 0.85576410397721236 17 0.14423589602278766
		2 16 0.87312119519290343 17 0.1268788048070966
		2 17 0.98366059351424839 18 0.016339406485751634
		2 17 0.98406892025034054 18 0.015931079749659464
		2 17 0.98434388653105387 18 0.015656113468946235
		2 17 0.9793135993081743 26 0.020686400691825677
		2 17 0.95132247465884712 18 0.048677525341152897
		2 17 0.92253561882616553 18 0.077464381173834487
		2 17 0.90581809340146913 18 0.094181906598530818
		2 17 0.93919584654977906 18 0.060804153450220985
		2 23 0.50296515028087774 24 0.49703484971912226
		2 24 0.98504248166924235 25 0.014957518330757641
		2 24 0.94243984083159715 25 0.057560159168402861
		2 24 0.93172401569685248 25 0.068275984303147533
		2 23 0.5283692305981087 24 0.4716307694018913
		2 24 0.93073900810241383 25 0.069260991897586263
		2 23 0.52055462451672696 24 0.4794453754832731
		2 24 0.93343129413884518 25 0.066568705861154875
		2 24 0.78859727062814133 25 0.21140272937185861
		2 24 0.67500105986650838 25 0.32499894013349157
		2 24 0.65178819589632375 25 0.34821180410367625
		2 24 0.76382652683830499 25 0.23617347316169499
		2 25 0.96990081918191706 26 0.030099180818082941
		2 25 0.97554743686569267 26 0.024452563134307305
		2 25 0.98030875462815215 26 0.019691245371847892
		2 25 0.97559106669985518 26 0.024408933300144712
		2 25 0.90431081841584315 26 0.095689181584156943
		2 25 0.86256158309693931 26 0.1374384169030608
		2 25 0.88168724113207819 26 0.11831275886792178
		2 25 0.92799514790452964 26 0.07200485209547039
		2 6 0.94717786505263624 7 0.052822134947363659
		2 6 0.99119072644964079 7 0.0088092735503592871
		2 23 0.94759434323133085 24 0.052405656768669096
		2 6 0.99233221370512226 7 0.007667786294877796
		2 6 0.99237724332061183 7 0.0076227566793881617
		2 6 0.99817201557915092 7 0.0018279844208490368
		2 6 0.99887422141161586 7 0.0011257785883840999
		2 6 0.98529327153057245 7 0.014706728469427539
		2 6 0.98233505347025041 7 0.017664946529749703
		2 6 0.91428176568787245 7 0.08571823431212755
		2 6 0.64584416163699621 7 0.35415583836300374
		2 6 0.9511932017909609 7 0.048806798209039153
		2 6 0.99172414299552258 7 0.0082758570044773726
		2 6 0.99610710331008057 7 0.0038928966899193858
		2 6 0.98626212318744078 7 0.013737876812559242
		2 6 0.98720503693973161 7 0.012794963060268368
		2 23 0.66370582060394578 24 0.33629417939605416
		2 6 0.72196932036250627 7 0.27803067963749373
		2 6 0.95306599719791429 7 0.046934002802085713
		2 6 0.9962120727549949 7 0.0037879272450051372
		2 6 0.97746695234659575 7 0.022533047653404192
		2 6 0.98685038981547091 7 0.013149610184529089
		2 6 0.9887670012759846 7 0.011232998724015422
		2 6 0.98166993736582187 7 0.018330062634178149
		2 6 0.97296492800596135 7 0.027035071994038713
		2 25 0.5 26 0.5
		2 25 0.50329548306315885 26 0.4967045169368412
		2 25 0.50269373423004193 26 0.49730626576995807
		2 25 0.5 26 0.5
		2 17 0.53767165645643267 18 0.46232834354356733
		2 17 0.50989938278494262 18 0.49010061721505743
		2 17 0.51467288020329338 18 0.48532711979670656
		2 17 0.54007419588606664 18 0.45992580411393341
		2 7 0.52334691010568468 8 0.47665308989431543
		2 11 0.5 12 0.5
		2 7 0.60402084556564883 8 0.39597915443435128
		2 7 0.53762232371575469 8 0.46237767628424531
		2 8 0.82996007633781876 9 0.17003992366218124
		2 12 0.52521309159694485 13 0.4747869084030551
		2 8 0.83291084262249515 9 0.1670891573775049
		2 8 0.90270335460715934 9 0.097296645392840678
		2 9 0.94690734152764777 14 0.053092658472352269
		2 9 0.92051668937203079 14 0.079483310627969248
		2 9 0.95595880705673075 18 0.044041192943269324
		2 9 0.98765029911100011 18 0.012349700888999922
		2 9 0.81613846199678364 14 0.18386153800321642
		2 9 0.74495902309808892 14 0.25504097690191108
		2 9 0.81128965016662502 18 0.18871034983337509
		2 9 0.96781350381478837 18 0.032186496185211529
		2 9 0.50408152928612326 10 0.49591847071387668
		2 9 0.5 10 0.5
		2 9 0.5 10 0.5
		2 9 0.50790754159065443 10 0.49209245840934557
		2 19 0.94002380761253757 20 0.05997619238746249
		2 20 0.87298444041150902 21 0.12701555958849095
		2 11 0.50905008722370515 12 0.49094991277629496
		2 11 0.51198318080485439 12 0.48801681919514567
		2 11 0.50098483142013039 12 0.49901516857986961
		2 21 0.9198867872276133 22 0.080113212772386755
		2 12 0.66171508370702403 13 0.33828491629297602
		2 12 0.68587679384587408 13 0.31412320615412598
		2 12 0.71459989334459595 13 0.28540010665540416
		2 13 0.58852420627829249 22 0.41147579372170751
		2 13 0.9051225529063418 22 0.094877447093658182
		2 13 0.98251638992841828 14 0.017483610071581716
		2 13 0.98514040656570923 22 0.014859593434290792
		2 13 0.87992600273870936 22 0.12007399726129069
		2 13 0.85556793284692623 14 0.14443206715307375
		2 13 0.89437028328494972 14 0.10562971671505032
		2 13 0.9580352252933827 14 0.041964774706617268
		2 13 0.50763341155066566 14 0.49236658844933429
		2 13 0.5 14 0.5
		2 13 0.5 14 0.5
		2 13 0.50907178879223591 14 0.49092821120776403
		2 19 0.54190849820859177 20 0.45809150179140828
		2 19 0.59365870781374475 20 0.40634129218625531
		2 19 0.54326550860676226 20 0.45673449139323774
		2 19 0.51506232390257323 20 0.48493767609742672
		2 20 0.91351762134323811 21 0.086482378656761796
		2 20 0.91467835978179091 21 0.085321640218209177
		2 20 0.90727755708987468 21 0.092722442910125311
		2 20 0.90803701690183702 21 0.091962983098163045
		2 21 0.96869365856858081 22 0.031306341431419221
		2 21 0.98272110329819273 22 0.01727889670180734
		2 21 0.98718532419315763 22 0.012814675806842391
		2 21 0.97593632507369887 22 0.024063674926301189
		2 21 0.90779474906468438 22 0.092205250935315633
		2 21 0.87749151495497268 22 0.12250848504502733
		2 21 0.89275123781440102 22 0.10724876218559898
		2 21 0.92653255661843115 22 0.073467443381568853
		2 21 0.5 22 0.5
		2 21 0.5 22 0.5
		2 21 0.5 22 0.5
		2 21 0.5 22 0.5
		2 6 0.9955592663204752 7 0.0044407336795247677
		2 3 0.99723856332568106 5 0.0027614366743189157
		2 6 0.99642562023377923 7 0.0035743797662208514
		2 3 0.99300392013351424 5 0.006996079866485783
		2 3 0.98113976493435184 5 0.018860235065648195
		2 3 0.96722582748158548 5 0.032774172518414482
		2 3 0.96951427796989165 5 0.030485722030108308
		2 3 0.98540237189637692 5 0.01459762810362307
		2 3 0.99648199210315491 5 0.0035180078968451273
		2 3 0.99829822701154236 5 0.0017017729884576671
		2 1 0.97328637444123745 4 0.026713625558762583
		2 3 0.90770384515683589 4 0.092296154843164113
		2 3 0.911213648217577 4 0.088786351782423029
		2 1 0.97210226407712808 4 0.027897735922871942
		2 1 0.97858478426530904 4 0.021415215734691007
		2 3 0.91136149516549791 4 0.088638504834502085
		2 1 0.98475722309855573 4 0.015242776901444237
		2 3 0.92025674846382111 4 0.079743251536178894
		2 1 0.98907503447860468 4 0.010924965521395406
		2 3 0.92506911342155229 4 0.074930886578447709
		2 1 0.99080702709675406 4 0.0091929729032459422
		2 3 0.92584168608077377 4 0.074158313919226213
		2 1 0.99007945334761116 4 0.0099205466523888865
		2 3 0.93284518179043774 4 0.067154818209562317
		2 1 0.98689767543171081 4 0.013102324568289204
		2 3 0.9316264968791127 4 0.068373503120887316
		2 1 0.98155205974117421 4 0.018447940258825783
		2 3 0.92515666647322492 4 0.074843333526775122
		2 1 0.97564326096763998 4 0.024356739032360027
		2 3 0.91714814439497028 4 0.082851855605029737
		2 3 0.67930323571057649 4 0.32069676428942351
		2 3 0.70050278090088114 4 0.29949721909911886
		2 3 0.65827300525035648 4 0.34172699474964352
		2 3 0.64800734984017827 4 0.35199265015982184
		2 3 0.64796708723651364 4 0.35203291276348642
		2 3 0.65927568333720765 4 0.3407243166627924
		2 3 0.67968634612333034 4 0.3203136538766696
		2 3 0.6981665291138498 4 0.3018334708861502
		2 3 0.71219288671548142 4 0.28780711328451852
		2 3 0.71228002755037778 4 0.28771997244962216
		2 1 0.9521700935966817 2 0.047829906403318259
		2 1 0.95624083478593458 2 0.043759165214065442
		2 1 0.96079806591018513 2 0.039201934089814837
		2 1 0.96447037481687614 2 0.035529625183123852
		2 1 0.96585190408613919 2 0.034148095913860775
		2 1 0.96394786513936226 2 0.036052134860637804
		2 1 0.95919876522483405 2 0.040801234775166
		2 1 0.95377977942751968 2 0.046220220572480319
		2 1 0.95026677030694795 2 0.049733229693052036
		2 1 0.94983260909142153 2 0.050167390908578427
		2 1 0.65849819392737852 2 0.34150180607262143
		2 1 0.62522757498833337 2 0.37477242501166663
		2 1 0.6796846171407479 2 0.32031538285925204
		2 1 0.67128172196000779 2 0.32871827803999221
		2 1 0.66108952526167364 2 0.33891047473832636
		2 1 0.64981558731857436 2 0.35018441268142558
		2 1 0.64313691202066525 2 0.3568630879793348
		2 1 0.62384909349320095 2 0.37615090650679911
		2 1 0.60592301573452145 2 0.39407698426547849
		2 1 0.61386121362528134 2 0.38613878637471866
		2 3 0.67147939839039494 5 0.328520601609605
		2 3 0.61904984351707737 5 0.38095015648292263
		2 3 0.57496776337916822 5 0.42503223662083184
		2 3 0.687260265387173 5 0.312739734612827
		2 3 0.65358937252461513 5 0.34641062747538487
		2 3 0.64269719645349288 5 0.35730280354650712
		2 3 0.66124442142979722 5 0.33875557857020289
		2 3 0.66543073088677829 5 0.33456926911322171
		2 3 0.66327157738000153 5 0.33672842261999841
		2 3 0.68087383322044492 5 0.31912616677955519
		2 3 0.61053568017875193 5 0.38946431982124813
		2 3 0.69166376143900832 5 0.30833623856099174
		2 3 0.5525089241707446 5 0.44749107582925535
		2 3 0.68008876135335727 5 0.31991123864664273
		2 3 0.52951340368724942 5 0.47048659631275064
		2 3 0.6713462406163877 5 0.3286537593836123;
	setAttr ".wl[250:303].w"
		2 3 0.52655902483300832 5 0.47344097516699174
		2 3 0.67458358958258269 5 0.32541641041741737
		2 3 0.68257004666019905 5 0.31742995333980095
		2 3 0.5399740674871667 5 0.4600259325128333
		2 3 0.55450634066849736 4 0.44549365933150264
		2 3 0.52672213303922844 4 0.47327786696077156
		2 3 0.58438827667031623 4 0.41561172332968371
		2 3 0.60525080827494426 4 0.39474919172505568
		2 3 0.59905538030259298 4 0.40094461969740708
		2 3 0.56729352652355902 4 0.43270647347644092
		2 3 0.53351952252053914 4 0.46648047747946092
		2 3 0.51570352094922989 4 0.48429647905077011
		2 3 0.51008122664600164 4 0.48991877335399847
		2 3 0.51280707767022182 4 0.48719292232977812
		2 3 0.96209537822116775 5 0.037904621778832297
		2 3 0.94050815848094904 5 0.059491841519050959
		2 3 0.96487448503247242 5 0.035125514967527645
		2 3 0.97455559450595397 5 0.02544440549404613
		2 3 0.98029780563406999 5 0.019702194365930011
		2 3 0.96663889261185854 5 0.033361107388141437
		2 3 0.91225133169586115 5 0.087748668304138924
		2 3 0.85704149826946607 5 0.14295850173053395
		2 3 0.84927522456169191 5 0.15072477543830803
		2 3 0.88859370828439299 5 0.11140629171560704
		2 0 0.51050523915371049 1 0.48949476084628951
		2 0 0.51317195234656876 1 0.48682804765343124
		2 0 0.51104349838109941 1 0.48895650161890059
		2 1 0.91287081077492416 2 0.08712918922507587
		2 1 0.87004810479238071 2 0.12995189520761929
		2 0 0.5162188200949015 1 0.48378117990509861
		2 0 0.51070722969388782 1 0.48929277030611223
		2 0 0.51145029612891579 1 0.48854970387108421
		2 0 0.5106757733248718 1 0.48932422667512815
		2 0 0.68570409470268356 1 0.31429590529731638
		2 0 0.67153951946641377 1 0.32846048053358629
		2 0 0.63588584541469939 1 0.36411415458530072
		2 0 0.66185393282187865 1 0.33814606717812129
		2 0 0.73634626667917069 1 0.26365373332082931
		2 0 0.80655056029453931 1 0.19344943970546064
		2 0 0.76136387124451632 1 0.23863612875548379
		2 0 0.73066264229234645 1 0.2693373577076536
		2 0 0.76451726479450477 1 0.2354827352054952
		2 0 0.8315826256996619 1 0.16841737430033812
		2 0 0.82147063916626262 1 0.17852936083373741
		2 0 0.85637916876493525 1 0.14362083123506478
		2 0 0.72666733709956155 1 0.27333266290043839
		2 0 0.56629220594984941 1 0.43370779405015059
		2 0 0.5000035207831931 1 0.49999647921680701
		2 0 0.64843234563281049 1 0.35156765436718945
		2 0 0.54302871151689724 1 0.45697128848310276
		2 0 0.50048251269423327 1 0.49951748730576673
		2 1 0.88080205143026569 2 0.11919794856973434
		2 0 0.63689537949373165 1 0.36310462050626835
		2 0 0.6859855823321338 1 0.31401441766786625;
	setAttr -s 27 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -5.5230406399187046 -137.52213631501641 2.0461767078897952 1;
	setAttr ".pm[1]" -type "matrix" 0.99944737059356725 -1.2570488545520684e-07 0.033240839543983228 0
		 1.2563541723897301e-07 0.99999999999999212 4.1785359273113547e-09 0 -0.033240839543983491 0 0.99944737059357514 0
		 -14.291522577901848 -137.52213452606472 1.5719832231940871 1;
	setAttr ".pm[2]" -type "matrix" 0.99944737059357514 1.4110657728685171e-10 0.033240839543983228 0
		 -2.8015944392257502e-10 1 4.1785359273113555e-09 0 -0.033240839543983228 -4.1855394806042821e-09 0.99944737059357525 0
		 -26.56567403448971 -137.52213921939622 1.5719832231941573 1;
	setAttr ".pm[3]" -type "matrix" 0.99943220491867046 1.4110657728680479e-10 -0.033693734898416622 0
		 6.6768985069514703e-23 1 4.1879173594820071e-09 0 0.033693734898416622 -4.1855394806042796e-09 0.99943220491867046 0
		 -40.050760501263881 -137.52213921939617 4.0619586578684164 1;
	setAttr ".pm[4]" -type "matrix" 0.99943220491867046 1.4110657728680479e-10 -0.033693734898416622 0
		 6.6768985069514703e-23 1 4.1879173594820071e-09 0 0.033693734898416622 -4.1855394806042796e-09 0.99943220491867046 0
		 -48.751053206697215 -137.52213921939614 4.0619586578684181 1;
	setAttr ".pm[5]" -type "matrix" 0.99943220491867046 1.4110657728680479e-10 -0.033693734898416622 0
		 6.6768985069514703e-23 1 4.1879173594820071e-09 0 0.033693734898416622 -4.1855394806042796e-09 0.99943220491867046 0
		 -56.331909193088208 -137.52213921939614 4.0619586578684181 1;
	setAttr ".pm[6]" -type "matrix" 0.99943220491835683 7.822069662212761e-07 -0.033693734898643982 0
		 -7.9224863145834914e-07 0.99999999999964584 -2.8467697006055211e-07 0 0.033693734898409364 3.1120914723926576e-07 0.9994322049186225 0
		 -66.310590874376601 -137.52218773896919 4.0619983831998532 1;
	setAttr ".pm[7]" -type "matrix" 0.94595846177063025 0.32428781753951735 -4.7072437206225967e-17 0
		 -0.32428781753951746 0.94595846177063025 1.2469438619789519e-17 0 3.0050600227782538e-17 -2.0692851067296852e-18 1 0
		 -25.510561398078956 -154.86669128167676 1.8546209906164379 1;
	setAttr ".pm[8]" -type "matrix" 0.89980194890582699 0.43629858210321487 -4.7072437206225967e-17 0
		 -0.43629858210321498 0.89980194890582699 1.2469438619789519e-17 0 3.0080305764987085e-17 1.5797847916161702e-18 1 0
		 -9.8495091626164442 -157.21143147631219 1.8546209906164375 1;
	setAttr ".pm[9]" -type "matrix" 0.74022082227586228 0.67151368146214119 -0.033801033688459582 0
		 -0.67189761598750108 0.74064403975885251 2.2135071553464062e-15 0 0.02503453413904724 0.022710833953187553 0.99942858180141703 0
		 31.652895347087281 -154.50062566476043 4.5736570274456128 1;
	setAttr ".pm[10]" -type "matrix" 0.74022082227586228 0.67151368146214119 -0.033801033688459582 0
		 -0.67189761598750108 0.74064403975885251 2.2135071553464062e-15 0 0.02503453413904724 0.022710833953187553 0.99942858180141703 0
		 28.201890444669306 -154.50062566476041 4.5736570274456119 1;
	setAttr ".pm[11]" -type "matrix" 0.96610391787923544 0.2581534051705297 0.00019813442910048123 0
		 -0.25815341023772653 0.96610393684252849 -4.6828521420815014e-15 0 -0.00019141845197922992 -5.1149078553268058e-05 0.99999998037137394 0
		 -36.159267256304823 -152.5570183952176 4.2574934876680315 1;
	setAttr ".pm[12]" -type "matrix" 0.93202335582948048 0.36207457264051485 -0.015312349118989287 0
		 -0.36211702756328534 0.93213263989023065 3.5312898438721867e-14 0 0.014273140407217125 0.0055448623479467845 0.99988275910951596 0
		 -21.843363959551212 -155.85529402942296 5.4493332374425698 1;
	setAttr ".pm[13]" -type "matrix" 0.72939110755168912 0.68216335376224668 -0.051398161527081501 0
		 -0.68306620268212126 0.73035646279979427 4.839878497975291e-15 0 0.037538979447335016 0.035108347019142332 0.99867824097235447 0
		 35.217181331272577 -153.70140086913401 8.3162996082958198 1;
	setAttr ".pm[14]" -type "matrix" 0.72939110755168912 0.68216335376224668 -0.051398161527081501 0
		 -0.68306620268212126 0.73035646279979427 4.839878497975291e-15 0 0.037538979447335016 0.035108347019142332 0.99867824097235447 0
		 31.474996961308292 -153.70140086913401 8.3162996082958234 1;
	setAttr ".pm[15]" -type "matrix" 0.95071724998249163 0.30919039220257405 0.023195084723857232 0
		 -0.30927359984285024 0.95097310184896644 -8.6528006981723154e-15 0 -0.022057901667498769 -0.0071736273511990075 0.99973095783048216 0
		 -27.686014449693531 -154.60734155038432 -2.0212101198544219 1;
	setAttr ".pm[16]" -type "matrix" 0.91024585174523831 0.41336447262783971 0.02413093760494479 0
		 -0.41348487672457412 0.91051098660041663 -1.4080750454503746e-14 0 -0.021971483806277191 -0.0099777777608161707 0.99970880652833438 0
		 -13.885755855086011 -157.13851176438257 -2.0938699648521797 1;
	setAttr ".pm[17]" -type "matrix" 0.75004832649075082 0.65889479802707751 0.057316254773674427 0
		 -0.65997975708392775 0.75128338211319434 -1.1570605584765306e-14 0 -0.043060749736435262 -0.037827567902481485 0.99835607222008704 0
		 29.707676208864676 -155.14824434500551 -4.7556744297096483 1;
	setAttr ".pm[18]" -type "matrix" 0.75004832649075082 0.65889479802707751 0.057316254773674427 0
		 -0.65997975708392775 0.75128338211319434 -1.1570605584765306e-14 0 -0.043060749736435262 -0.037827567902481485 0.99835607222008704 0
		 26.474386875942173 -155.14824434500548 -4.7556744297096474 1;
	setAttr ".pm[19]" -type "matrix" 0.9705388868180499 0.23914360006622679 -0.029404212646233389 0
		 -0.23924704985524853 0.97095872679303952 -2.7004527086704755e-13 0 0.028550276873273977 0.0070348711291898123 0.99956760265559597 0
		 -38.505362378177182 -151.54484241473654 8.354515674748777 1;
	setAttr ".pm[20]" -type "matrix" 0.91108577308393124 0.41189195211798191 0.01636257511804624 0
		 -0.41194710190437522 0.91120776183732477 -1.1502951369202211e-14 0 -0.014909705451214759 -0.0067405153995613119 0.99986612410637599 0
		 -12.807916332008489 -156.562309467647 4.8745837407042059 1;
	setAttr ".pm[21]" -type "matrix" 0.6871367757586514 0.72434389462558046 0.056293638349735761 0
		 -0.72549434303705795 0.6882281294899445 4.0800696154974503e-15 0 -0.038742865423619099 -0.040840716171710083 0.99841425584841748 0
		 44.868396543836653 -150.84072893407395 1.737763940199069 1;
	setAttr ".pm[22]" -type "matrix" 0.6871367757586514 0.72434389462558046 0.056293638349735761 0
		 -0.72549434303705795 0.6882281294899445 4.0800696154974503e-15 0 -0.038742865423619099 -0.040840716171710083 0.99841425584841748 0
		 42.732980651874165 -150.84072893407398 1.7377639401990677 1;
	setAttr ".pm[23]" -type "matrix" 0.82876419317482997 -0.4204980747629436 -0.36923066128360849 0
		 -0.25333804941708521 0.30639577450100014 -0.91757368210159473 0 0.49896868121037358 0.85399238783995601 0.14740168480241475 0
		 -22.822432315722107 -12.625798584030086 150.07419974043256 1;
	setAttr ".pm[24]" -type "matrix" 0.94996044897408882 -0.10416733690273507 -0.29448991715768424 0
		 -0.25100964555846395 0.3065879564975279 -0.9181492159596305 0 0.18592822061634959 0.94612525114450985 0.26509942648971535 0
		 -34.58472625945803 -35.499719836813824 144.59172481811905 1;
	setAttr ".pm[25]" -type "matrix" 0.93896086296785375 0.31973273843037142 -0.12697824140568159 0
		 -0.22980269978930828 0.30825161897000969 -0.92313144165493199 0 -0.25601409528424185 0.89596423777859779 0.36291165266164632 0
		 -39.54709147351091 -67.632251696605977 132.36291319391989 1;
	setAttr ".pm[26]" -type "matrix" 0.93896086296785375 0.31973273843037142 -0.12697824140568159 0
		 -0.22980269978930828 0.30825161897000969 -0.92313144165493199 0 -0.25601409528424185 0.89596423777859779 0.36291165266164632 0
		 -42.381761139059158 -67.632251696605991 132.36291319391992 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 27 ".ma";
	setAttr -s 27 ".dpf[0:26]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4;
	setAttr -s 27 ".lw";
	setAttr -s 27 ".lw";
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
	setAttr -s 27 ".ifcl";
	setAttr -s 27 ".ifcl";
createNode groupId -n "groupId3";
	rename -uid "70FDDE33-472A-BB07-A4CD-D583EB06430E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "A7442C18-4081-3AA8-478D-079B00E070CC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:293]";
createNode tweak -n "tweak1";
	rename -uid "72B6B5B7-4B56-C6D5-EE2A-05B3EAED587B";
createNode objectSet -n "skinCluster1Set";
	rename -uid "4A0A3BEA-46A1-6AFC-B6D6-16919B2E673B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "CA2299B9-4815-CE0F-3D5E-00A19BA7EA1B";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "7233F936-489C-3B99-D308-9F8F96E2B0D5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "B349E3F4-446D-2831-50BA-0C8EB9108611";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId5";
	rename -uid "6636DD56-4D8C-5835-FF79-B3A3E88D7D08";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "47E4623E-48BB-1C83-316D-28AF88840CEE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "FA2B03B7-4D53-B2FA-EF55-3D896652E2EA";
	setAttr -s 29 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 29 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.5230406399187046 137.52213631501641
		 -2.0461767078897952 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 8.708312693051699 2.8421709430404007e-14
		 -4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -1.0447783356081607e-09 0.016622716481141834 6.2843758600644879e-08 0.99986183310334609 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 12.274168772767116 1.3482982141919863e-06
		 -7.0644878835679492e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -6.295778834144794e-08 0.999999999999998 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 25.941269954820434 -3.7260276957316732e-07
		 0.19840277671717454 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -2.1070264393179571e-09 -0.033467288080239056 -6.2922520232668429e-08 0.99943981340976717 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 8.700292705433327 0 -8.8817841970012523e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 16.28114869182432 0 -8.8817841970012523e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 26.259939324857896 -2.841582016799295e-06
		 1.333654098313944e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1.4443244371005242e-07 -5.7213202933745997e-14 -3.9612431572920136e-07 0.99999999999991107 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.9379058083578533 0.70256262781710821
		 -0.29684972057054893 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0027698274346259744 0.016620036000902252 -0.16435623000282026 0.98625713286068117 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.2775428993820199 0
		 2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.060573994126982451 0.99816370963660284 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.356309532593734 -2.8421709430404007e-14
		 -1.1102230246251565e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0094619814469837343 -0.014006427324212544 -0.14213993863241176 0.98970224246804794 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.451004902417985 -2.8421709430404007e-14
		 8.8817841970012523e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.8190365685399517 0.52916697249288736
		 -2.7118128374972352 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0022065571341431671 0.016804059018803622 -0.13016551666160983 0.99134741285702777 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.6470511256765832 2.8421709430404007e-14
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0024088469626986162 -0.0073718835103551662 -0.054684923045736765 0.99847354095203833 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.9147340994338968 0
		 -8.8817841970012523e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0096085214159855274 -0.015283504063932482 -0.18952253054183646 0.98171039580761554 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.7421843699642601 0
		 -1.7763568394002505e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.8288810320045279 0.94274018076017285
		 1.8635468004911591 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0044536892855043227 0.028093974702850431 -0.1565039741292322 0.98726764320466842 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.6539765362013874 0
		 -2.6645352591003757e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.00016941111504592627 0.00043632292846649325 -0.055895371592495892 0.99843652194654464 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.8248401066068034 2.8421709430404007e-14
		 -4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0090107326250457153 0.013949211052400405 -0.14670498314863875 0.98904088597384754 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.2332893329224959 -2.8421709430404007e-14
		 -8.8817841970012523e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.2965411030324745 0.40936099840923879
		 -4.6085328294878325 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.00025871801866542143 0.0021301756811009367 -0.12050093378927003 0.99271089465788998 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2858601897864261 5.6843418860808015e-14
		 -1.7763568394002505e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0074822241593983426 0.021626102652993525 -0.091348231387184939 0.99555603992347119 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.4760630189721891 2.8421709430404007e-14
		 8.8817841970012523e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.011578584241563718 0.016281456323803647 -0.19233610039400392 0.98112571827068362 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.1354158919624879 2.8421709430404007e-14
		 2.2204460492503131e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.6690456837124401 -1.731296843712073
		 1.7853067906047153 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.58714376874001073 -0.27455908069022222 0.045434999201841089 0.76014154398233336 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.2816682663097581 -1.0658141036401503e-14
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.043738743932870361 0.0542838778706633 -0.15882484555832138 0.98484255153596667 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.0292311701752439 -7.1054273576010019e-15
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.054747886434341198 0.080098207531008284 -0.20628914454353919 0.97366921227118342 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.8346696655482475 0
		 -2.8421709430404007e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 29 ".m";
	setAttr -s 29 ".p";
	setAttr -s 29 ".g[0:28]" yes yes no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no;
	setAttr ".bp" yes;
createNode controller -n "Clav01_Joint_M_CTR0_tag";
	rename -uid "5915B495-4AC7-A81C-F84C-37B5D6874645";
	setAttr -s 3 ".child";
createNode controller -n "controller1";
	rename -uid "7E152ED5-4406-5172-F8C7-11B5F3516CE9";
	setAttr ".cwsb" yes;
createNode controller -n "Elbow_Joint_M_CTR1_tag";
	rename -uid "0E39A609-44F1-06CC-1608-5AA179551DDC";
	setAttr -s 23 ".child";
createNode controller -n "Wrist_Joint_M_CTR2_tag";
	rename -uid "DD363AC7-4797-029C-20F3-91A9A0D1A6D3";
createNode controller -n "Shoulder_Joint_M_CTR0_tag";
	rename -uid "8211F912-4E63-4EF7-49B7-8BBECE2E654E";
createNode controller -n "BicepTwist_Joint_M_CTR0_tag";
	rename -uid "6B63E143-4A6C-50D9-958E-83815FAE90C0";
createNode controller -n "ForearmTwist2_Joint_M_CTR1_tag";
	rename -uid "DD42BCDE-4DA4-12C7-78D9-ECA4B8203A32";
createNode controller -n "ForearmTwist1_Joint_M_CTR0_tag";
	rename -uid "72FAA4BF-4AD8-64DC-9D2C-F0BFF98B0261";
createNode controller -n "Index3_Joint_M_CTR2_tag";
	rename -uid "6527C5EC-43F0-E534-0B59-9685F4217DA4";
createNode controller -n "Index4_Joint_M_CTR3_tag";
	rename -uid "5314E36A-4107-AD58-7FF9-44AABFF73554";
createNode controller -n "Index2_Joint_M_CTR1_tag";
	rename -uid "399BBBA1-43D3-8B30-1A4E-2D8BB7C0D581";
createNode controller -n "Index1_Joint_M_CTR0_tag";
	rename -uid "BE8BF343-41C1-7508-288F-38B8D42332A5";
createNode controller -n "Middle3_Joint_M_CTR2_tag";
	rename -uid "D8905FA8-47DA-BF9B-8DBE-FCB2844EE298";
createNode controller -n "Middle4_Joint_M_CTR3_tag";
	rename -uid "D0786685-489F-1940-B19D-6E94D8AE3B17";
createNode controller -n "Middle2_Joint_M_CTR1_tag";
	rename -uid "7F256FA0-4463-5334-2549-12BB5B99FB28";
createNode controller -n "Middle1_Joint_M_CTR0_tag";
	rename -uid "FEB1F124-4A47-8BCF-013B-59900C7A1BCB";
createNode controller -n "Pinkey3_Joint_M_CTR2_tag";
	rename -uid "C22615D3-4B71-3E9A-D2E0-3789A7A08E53";
createNode controller -n "Pinkey4_Joint_M_CTR3_tag";
	rename -uid "01C2B5F2-4DC2-A057-D6E0-B3B62B014BBD";
createNode controller -n "Pinkey2_Joint_M_CTR1_tag";
	rename -uid "238FFEC5-43EB-C2AB-2AAE-68A39DFA401D";
createNode controller -n "Pinkey1_Joint_M_CTR0_tag";
	rename -uid "5316D88B-43C3-1551-EC92-F49B9A1E9D5D";
createNode controller -n "Ring3_Joint_M_CTR2_tag";
	rename -uid "8C26C028-4382-AA03-FF72-2887C064E29D";
createNode controller -n "Ring4_Joint_M_CTR3_tag";
	rename -uid "A5709F26-45E5-24B6-D0B2-4A8DA2647AAD";
createNode controller -n "Ring2_Joint_M_CTR1_tag";
	rename -uid "2E355652-453D-2434-8596-4AA7C8145386";
createNode controller -n "Ring1_Joint_M_CTR0_tag";
	rename -uid "4C1908F7-468B-330B-4139-589916B91CA0";
createNode controller -n "Thumb3_Joint_M_CTR2_tag";
	rename -uid "C5D9D7DB-4CDD-E8FF-969E-0D80FB020C2C";
createNode controller -n "Thumb4_Joint_M_CTR3_tag";
	rename -uid "65AE968C-4E05-8978-F2C2-158120CBBA2C";
createNode controller -n "Thumb2_Joint_M_CTR1_tag";
	rename -uid "DBCDE375-483B-C66E-8159-D1A64838A182";
createNode controller -n "Thumb1_Joint_M_CTR0_tag";
	rename -uid "D8E71171-4B87-D3D9-8869-F391D318A755";
createNode animCurveTL -n "Middle3_Joint_M_CTR2_translateX";
	rename -uid "E20FF051-40F0-0D2E-C411-A5A5609E59C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Middle3_Joint_M_CTR2_translateY";
	rename -uid "6C27D888-405A-CB53-E7A2-43B37ACB3CE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Middle3_Joint_M_CTR2_translateZ";
	rename -uid "0DF778D2-4E9E-6F63-6E2C-F483C13682EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Middle3_Joint_M_CTR2_rotateX";
	rename -uid "FAF313AA-428B-F115-1A0D-218F6A6CCA64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Middle3_Joint_M_CTR2_rotateY";
	rename -uid "A28C614B-45FE-E8CA-DF3E-F593843F9F74";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Middle3_Joint_M_CTR2_rotateZ";
	rename -uid "DDF59A98-4AFF-E4B0-D809-5F9A49C7A094";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 -64.392961074383393 20 0;
createNode animCurveTU -n "Middle3_Joint_M_CTR2_scaleX";
	rename -uid "A4326D53-44E6-4243-5A28-9B83B17F2938";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Middle3_Joint_M_CTR2_scaleY";
	rename -uid "1C5881AC-4607-EDBA-2E48-8AB429E48764";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Middle3_Joint_M_CTR2_scaleZ";
	rename -uid "7E00393E-41DC-9D47-1469-C89B973ACD80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTL -n "Middle1_Joint_M_CTR0_translateX";
	rename -uid "14979782-4AE6-BA37-0333-868F6143A836";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Middle1_Joint_M_CTR0_translateY";
	rename -uid "0DE9D0C2-4402-AF94-4FFB-A2B2A8964D32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Middle1_Joint_M_CTR0_translateZ";
	rename -uid "54FF6B42-4ED1-FC8E-D890-318136132370";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Middle1_Joint_M_CTR0_rotateX";
	rename -uid "0F69831C-4D70-3D32-779A-4CA46A0888CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Middle1_Joint_M_CTR0_rotateY";
	rename -uid "15271024-45E1-9206-C36B-FCAB25EAE640";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Middle1_Joint_M_CTR0_rotateZ";
	rename -uid "3E8A0D1E-4D3B-E622-14E6-6CBF9D46CF4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 -64.392961074383393 20 0;
createNode animCurveTU -n "Middle1_Joint_M_CTR0_scaleX";
	rename -uid "5CB3F7FA-4E91-AC30-FE9C-DA8C7A58BCBF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Middle1_Joint_M_CTR0_scaleY";
	rename -uid "A9AD4592-4A5D-EE86-6CFB-E79290C2BB8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Middle1_Joint_M_CTR0_scaleZ";
	rename -uid "81127716-4CCD-7157-ABF8-E6B37155865B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTL -n "Thumb2_Joint_M_CTR1_translateX";
	rename -uid "C17EC9A7-4479-1373-ADFC-D8BF6D9C66A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Thumb2_Joint_M_CTR1_translateY";
	rename -uid "368646E3-4362-BA80-6799-109C89C949F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Thumb2_Joint_M_CTR1_translateZ";
	rename -uid "2F4D4774-4D33-4FA3-1852-61821D907004";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Thumb2_Joint_M_CTR1_rotateX";
	rename -uid "863281D1-48B3-D627-6351-5B9BF8341DC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Thumb2_Joint_M_CTR1_rotateY";
	rename -uid "AB1AA36B-4624-A5C8-9F99-52957C2A933F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Thumb2_Joint_M_CTR1_rotateZ";
	rename -uid "1ED4DD0D-4FC5-0EE3-79B8-568BE1FEFE2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 -32.895600611029494 20 0;
createNode animCurveTU -n "Thumb2_Joint_M_CTR1_scaleX";
	rename -uid "A8927579-4945-7444-CE8A-7B989C659320";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Thumb2_Joint_M_CTR1_scaleY";
	rename -uid "9C149852-4BE1-8D66-F704-4882795C27ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Thumb2_Joint_M_CTR1_scaleZ";
	rename -uid "E5824F77-4113-7F71-A859-DF987EAFCDC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTL -n "Middle2_Joint_M_CTR1_translateX";
	rename -uid "1D0191A4-4A2E-8450-AE8B-039579532AC5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Middle2_Joint_M_CTR1_translateY";
	rename -uid "9BFB2325-45E4-DAB2-2BC4-51901DFD6991";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Middle2_Joint_M_CTR1_translateZ";
	rename -uid "B5845B73-4075-CC66-8FBF-7D9DE3A505B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Middle2_Joint_M_CTR1_rotateX";
	rename -uid "130EE886-4D06-2B92-7EC8-59B0C9B39185";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Middle2_Joint_M_CTR1_rotateY";
	rename -uid "854D420F-49B0-82EA-B53C-3DAF338F9F6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Middle2_Joint_M_CTR1_rotateZ";
	rename -uid "874E9022-4029-33F1-3626-1285FB914218";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 -64.392961074383393 20 0;
createNode animCurveTU -n "Middle2_Joint_M_CTR1_scaleX";
	rename -uid "A2C8783F-4675-BA7F-C46E-9F84C697D440";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Middle2_Joint_M_CTR1_scaleY";
	rename -uid "DE058475-45FC-C1CC-1B5C-A382D8603333";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Middle2_Joint_M_CTR1_scaleZ";
	rename -uid "9BB70D2F-47FB-029E-E04F-4C8DE841986B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTL -n "Pinkey1_Joint_M_CTR0_translateX";
	rename -uid "CD19629E-4417-9633-8720-65BBB9931F6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Pinkey1_Joint_M_CTR0_translateY";
	rename -uid "0FD8B6A7-490A-CC88-A355-15B421AABB18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Pinkey1_Joint_M_CTR0_translateZ";
	rename -uid "127F8846-445D-27F9-6A50-79B383779352";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Pinkey1_Joint_M_CTR0_rotateX";
	rename -uid "AC29519A-4B51-1034-233C-1CB19C6137DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Pinkey1_Joint_M_CTR0_rotateY";
	rename -uid "35717B93-4845-1FB7-D20D-A5B297443AC1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Pinkey1_Joint_M_CTR0_rotateZ";
	rename -uid "B5C7BED6-4DE2-78E5-4639-D1B7825C01AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 -64.392961074383393 20 0;
createNode animCurveTU -n "Pinkey1_Joint_M_CTR0_scaleX";
	rename -uid "A6CB18A4-4D9C-2C62-9F45-838F78E8EE66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Pinkey1_Joint_M_CTR0_scaleY";
	rename -uid "6B4D601F-46C3-58CE-2C22-C68012E72F0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Pinkey1_Joint_M_CTR0_scaleZ";
	rename -uid "8C3C96B2-491E-4442-D435-DB8598442B15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTL -n "Pinkey2_Joint_M_CTR1_translateX";
	rename -uid "3FC6433A-449A-28C8-DEB8-CC9BF221DFE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Pinkey2_Joint_M_CTR1_translateY";
	rename -uid "5C7780CE-4988-91D2-2D3A-16A36560A452";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Pinkey2_Joint_M_CTR1_translateZ";
	rename -uid "6A6396D4-4FE5-D27E-6318-3280C5846E0F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Pinkey2_Joint_M_CTR1_rotateX";
	rename -uid "8864B1DE-4532-C10B-55E3-349302FEEA52";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Pinkey2_Joint_M_CTR1_rotateY";
	rename -uid "BEB6FA27-4A3D-9DA7-F7A2-D79A79067204";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Pinkey2_Joint_M_CTR1_rotateZ";
	rename -uid "2ADCF23C-4073-A940-6095-75BE4F1876D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 -64.392961074383393 20 0;
createNode animCurveTU -n "Pinkey2_Joint_M_CTR1_scaleX";
	rename -uid "4A3BD539-4D8B-BDD3-A806-0CA5C3DBF2DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Pinkey2_Joint_M_CTR1_scaleY";
	rename -uid "9986AD9F-403A-B33A-C118-AF863B3FA5AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Pinkey2_Joint_M_CTR1_scaleZ";
	rename -uid "A51CCE56-4913-9D12-6683-EC8D21C80519";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTL -n "Thumb1_Joint_M_CTR0_translateX";
	rename -uid "3CE50DF0-44BE-CB48-1F87-19B0CBF2A75B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Thumb1_Joint_M_CTR0_translateY";
	rename -uid "98D3C712-43BB-0D31-66AF-26AB576268C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Thumb1_Joint_M_CTR0_translateZ";
	rename -uid "145E6AFC-465F-B788-D419-B38EA0B70A77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Thumb1_Joint_M_CTR0_rotateX";
	rename -uid "AA70F4BC-4D17-D895-3899-F081FD229D33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Thumb1_Joint_M_CTR0_rotateY";
	rename -uid "62A7168E-456C-57FD-BC8B-75AE99E94D3D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Thumb1_Joint_M_CTR0_rotateZ";
	rename -uid "3969E760-4B74-D7C3-B991-36AE08CF6C63";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 -32.895600611029494 20 0;
createNode animCurveTU -n "Thumb1_Joint_M_CTR0_scaleX";
	rename -uid "8DC0849B-4A70-3623-1D85-3795567CEA58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Thumb1_Joint_M_CTR0_scaleY";
	rename -uid "6557586A-4176-C00D-A0FF-45B428133EE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Thumb1_Joint_M_CTR0_scaleZ";
	rename -uid "52EBE387-40D7-B34F-56B6-329A03815AAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTL -n "Thumb3_Joint_M_CTR2_translateX";
	rename -uid "9CD7C2F9-40BB-5615-9F0E-8C84B28D98E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Thumb3_Joint_M_CTR2_translateY";
	rename -uid "D352A1BA-4546-E1D0-99CE-50AD15246B2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Thumb3_Joint_M_CTR2_translateZ";
	rename -uid "6485B1AD-44F1-7E18-E3CE-CE8420E2A4ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Thumb3_Joint_M_CTR2_rotateX";
	rename -uid "55B43715-476D-E8B1-74BC-4BB1C71FE524";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Thumb3_Joint_M_CTR2_rotateY";
	rename -uid "C4A7FCF6-4661-4A61-FD63-1A9F3E6EF88A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Thumb3_Joint_M_CTR2_rotateZ";
	rename -uid "5ADA45C9-4776-E9AD-A65B-52A9A7D4FA86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 -32.895600611029494 20 0;
createNode animCurveTU -n "Thumb3_Joint_M_CTR2_scaleX";
	rename -uid "399857D1-4013-E3C9-3120-0FA2856301C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Thumb3_Joint_M_CTR2_scaleY";
	rename -uid "7C35B5DC-4811-8EB8-3AFE-ACBA26A2F76D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Thumb3_Joint_M_CTR2_scaleZ";
	rename -uid "74322AE9-4140-E215-564D-7BAA58927B39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTL -n "Index1_Joint_M_CTR0_translateX";
	rename -uid "FEE530F4-40C2-764B-5DC9-D99669885ADE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Index1_Joint_M_CTR0_translateY";
	rename -uid "3137D87A-4A84-6F28-9458-74B5DE79ED4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Index1_Joint_M_CTR0_translateZ";
	rename -uid "EA8F00DB-4DB9-C202-5F49-33A61C563E50";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Index1_Joint_M_CTR0_rotateX";
	rename -uid "B779CD13-47C9-73E4-14DB-52ADF284211A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Index1_Joint_M_CTR0_rotateY";
	rename -uid "4118FF7B-47B7-F164-2F75-84BA6FA932F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Index1_Joint_M_CTR0_rotateZ";
	rename -uid "B98117AD-4EB6-35A3-6051-99B5588AAD24";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 -64.392961074383393 20 0;
createNode animCurveTU -n "Index1_Joint_M_CTR0_scaleX";
	rename -uid "D25FFA35-48EF-2359-420C-0B96B76499E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Index1_Joint_M_CTR0_scaleY";
	rename -uid "CDA20945-4AF9-CE56-D4E9-B9BF272758CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Index1_Joint_M_CTR0_scaleZ";
	rename -uid "7AD7D594-4D96-0101-BAEA-31B7CD7639FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTL -n "Index3_Joint_M_CTR2_translateX";
	rename -uid "8A97BEFB-4C40-AE2A-53A2-D9B1236C5AA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Index3_Joint_M_CTR2_translateY";
	rename -uid "95B95DB7-4426-97FF-13CC-F895B26D6CBC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Index3_Joint_M_CTR2_translateZ";
	rename -uid "A517B16C-4BF6-5C49-D0DC-5FA47B7D74BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Index3_Joint_M_CTR2_rotateX";
	rename -uid "8BB711E4-4A24-0BCE-B7AD-56826661A0EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Index3_Joint_M_CTR2_rotateY";
	rename -uid "71D670BA-4911-7EED-ADFE-09AE7E87D8EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Index3_Joint_M_CTR2_rotateZ";
	rename -uid "4C6164A6-40C5-7418-31D8-5C8B0AA57C93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 -64.392961074383393 20 0;
createNode animCurveTU -n "Index3_Joint_M_CTR2_scaleX";
	rename -uid "47513460-4B37-CD41-4265-6C89033F84A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Index3_Joint_M_CTR2_scaleY";
	rename -uid "4C9D0F98-4E70-6328-13C0-7FA8C7D3C5ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Index3_Joint_M_CTR2_scaleZ";
	rename -uid "E8E86788-4C35-9182-4E6E-4EA770CBCE6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTL -n "Ring4_Joint_M_CTR3_translateX";
	rename -uid "601ACB3B-43C5-89CE-4CFE-939D43C43A4A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTL -n "Ring4_Joint_M_CTR3_translateY";
	rename -uid "CB3FC966-4C75-9F96-27E4-1396F9DD0584";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTL -n "Ring4_Joint_M_CTR3_translateZ";
	rename -uid "9E944DCB-4BEC-1294-E736-44BE75584637";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTA -n "Ring4_Joint_M_CTR3_rotateX";
	rename -uid "033DD36C-44F2-5C9A-9EFE-0180FA67BE50";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTA -n "Ring4_Joint_M_CTR3_rotateY";
	rename -uid "D3A3A53F-4B1C-5EA2-C36A-7EB736FE5C02";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTA -n "Ring4_Joint_M_CTR3_rotateZ";
	rename -uid "F6F02B67-4884-2EE9-E311-ED800667824F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTU -n "Ring4_Joint_M_CTR3_scaleX";
	rename -uid "56C739D8-4F0C-7B78-A350-BABDF23E120E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 20 1;
createNode animCurveTU -n "Ring4_Joint_M_CTR3_scaleY";
	rename -uid "4FEE5133-434F-B5F4-BCA8-128A1A379F82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 20 1;
createNode animCurveTU -n "Ring4_Joint_M_CTR3_scaleZ";
	rename -uid "1C850630-4084-2466-9C6F-A9BA4146A4EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 20 1;
createNode animCurveTL -n "Ring3_Joint_M_CTR2_translateX";
	rename -uid "5D0AB70C-42FA-E867-C32D-329F32945EFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Ring3_Joint_M_CTR2_translateY";
	rename -uid "8FADE41E-45EB-4A4B-C02C-439BFC62B873";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Ring3_Joint_M_CTR2_translateZ";
	rename -uid "D5C45431-4785-7DB1-35A3-C084B712DD77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Ring3_Joint_M_CTR2_rotateX";
	rename -uid "51F46C87-481B-48D4-E4BE-5994E38B29D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Ring3_Joint_M_CTR2_rotateY";
	rename -uid "03C3440C-4734-7E4F-83F5-C9BFC201C9E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Ring3_Joint_M_CTR2_rotateZ";
	rename -uid "3C3D5DE1-4BA0-5F44-CBB6-C5B0BCBD7234";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 -64.392961074383393 20 0;
createNode animCurveTU -n "Ring3_Joint_M_CTR2_scaleX";
	rename -uid "441FFE62-4332-4CAC-2708-D998E660119C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Ring3_Joint_M_CTR2_scaleY";
	rename -uid "A0905339-4AF4-1F54-E9DB-47B5BD0D0923";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Ring3_Joint_M_CTR2_scaleZ";
	rename -uid "01C0C01D-4E61-0C99-16BB-689A8E0A1EAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTL -n "Thumb4_Joint_M_CTR3_translateX";
	rename -uid "71FC43B2-4178-CE42-9B63-E2A8A1016B8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTL -n "Thumb4_Joint_M_CTR3_translateY";
	rename -uid "9CF731B4-4428-6592-12FA-B6B9D23A3E24";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTL -n "Thumb4_Joint_M_CTR3_translateZ";
	rename -uid "3C855DD8-4D9B-5E63-2568-21AD6C8637A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTA -n "Thumb4_Joint_M_CTR3_rotateX";
	rename -uid "D278FEDF-43AD-DE7C-3BEF-0B8A68648738";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTA -n "Thumb4_Joint_M_CTR3_rotateY";
	rename -uid "23849994-4215-9ED7-C3F9-4D87DB947D3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTA -n "Thumb4_Joint_M_CTR3_rotateZ";
	rename -uid "85A3A3C4-4B14-5792-CF19-B49EF35AAD49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTU -n "Thumb4_Joint_M_CTR3_scaleX";
	rename -uid "C45049D2-4849-6586-89D6-E3A8A924D8B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 20 1;
createNode animCurveTU -n "Thumb4_Joint_M_CTR3_scaleY";
	rename -uid "506CA464-4669-7469-F935-ED8F079D9226";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 20 1;
createNode animCurveTU -n "Thumb4_Joint_M_CTR3_scaleZ";
	rename -uid "68FE6B07-4D8B-4ECD-537C-42B0E0D70C94";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 20 1;
createNode animCurveTL -n "Pinkey3_Joint_M_CTR2_translateX";
	rename -uid "02420CC9-43EB-D949-00D4-90A541961E29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Pinkey3_Joint_M_CTR2_translateY";
	rename -uid "42960CC8-423B-5641-A61C-FF9C71DA4CED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Pinkey3_Joint_M_CTR2_translateZ";
	rename -uid "B38615CE-4839-28A3-1348-B0A4375E9A50";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Pinkey3_Joint_M_CTR2_rotateX";
	rename -uid "CA6841AB-4B74-555A-64B9-4E90ACAA21C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Pinkey3_Joint_M_CTR2_rotateY";
	rename -uid "13B92E82-427A-F0CC-2AEA-AEA5FA556EDA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Pinkey3_Joint_M_CTR2_rotateZ";
	rename -uid "CFC27A0E-415B-250B-655F-E7B71D2DA3BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 -64.392961074383393 20 0;
createNode animCurveTU -n "Pinkey3_Joint_M_CTR2_scaleX";
	rename -uid "13A8ED3F-43E2-7223-681F-BE9252ED2046";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Pinkey3_Joint_M_CTR2_scaleY";
	rename -uid "C7B41195-40E2-3761-0413-FBBA5093EB3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Pinkey3_Joint_M_CTR2_scaleZ";
	rename -uid "912580CB-4844-95E4-5F80-90A5CE386B04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTL -n "Index4_Joint_M_CTR3_translateX";
	rename -uid "72B506F2-4DBE-7D5A-D252-598EC6458AA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTL -n "Index4_Joint_M_CTR3_translateY";
	rename -uid "E8E0441D-4FA6-2A7C-8D74-29B58262DF4B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTL -n "Index4_Joint_M_CTR3_translateZ";
	rename -uid "464266C5-4D2A-219D-91F1-07A987118E59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTA -n "Index4_Joint_M_CTR3_rotateX";
	rename -uid "E298FB5A-4785-718A-E6C2-BFB023610977";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTA -n "Index4_Joint_M_CTR3_rotateY";
	rename -uid "48E986AA-47FF-1617-5D42-92960C69C372";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTA -n "Index4_Joint_M_CTR3_rotateZ";
	rename -uid "88FAB235-4181-C731-CB4D-BBBF84FDC941";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTU -n "Index4_Joint_M_CTR3_scaleX";
	rename -uid "B0C7DDA5-42A8-E2AB-FB3E-EBAB2BEB52D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 20 1;
createNode animCurveTU -n "Index4_Joint_M_CTR3_scaleY";
	rename -uid "0C8F7E2A-41E3-B590-76E9-7F8FE8DF43D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 20 1;
createNode animCurveTU -n "Index4_Joint_M_CTR3_scaleZ";
	rename -uid "2D5D314A-4312-D70D-0407-0F831C2CC807";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 20 1;
createNode animCurveTL -n "Ring1_Joint_M_CTR0_translateX";
	rename -uid "D3A3585B-4EE7-6EC5-A686-9AA9CA6A5BD8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Ring1_Joint_M_CTR0_translateY";
	rename -uid "61F3997D-4CEB-365B-45D0-CA9E9BA1E8A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Ring1_Joint_M_CTR0_translateZ";
	rename -uid "D83C9037-4C81-6396-8802-D6A5627727B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Ring1_Joint_M_CTR0_rotateX";
	rename -uid "F515FF88-4F4F-11D3-A8BB-B68146785001";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Ring1_Joint_M_CTR0_rotateY";
	rename -uid "B261107D-4A64-8D4F-E3EA-75937E82F8F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Ring1_Joint_M_CTR0_rotateZ";
	rename -uid "6C82B0D6-4234-C350-5669-ABA48110994B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 -64.392961074383393 20 0;
createNode animCurveTU -n "Ring1_Joint_M_CTR0_scaleX";
	rename -uid "C02B92AF-46DC-7ACB-7845-3E9D76A76B47";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Ring1_Joint_M_CTR0_scaleY";
	rename -uid "B7AF822E-4C0D-3274-5712-E8AED51ABD41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Ring1_Joint_M_CTR0_scaleZ";
	rename -uid "C45B7D8B-42BA-0265-D844-729147E535F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTL -n "Ring2_Joint_M_CTR1_translateX";
	rename -uid "12DE952A-4534-89D0-6677-E0A541543CF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Ring2_Joint_M_CTR1_translateY";
	rename -uid "C052065B-4DF4-1887-EEAB-2A9C63551CAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Ring2_Joint_M_CTR1_translateZ";
	rename -uid "956DF504-48CE-A6FA-6CB2-CF98B8C04F2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Ring2_Joint_M_CTR1_rotateX";
	rename -uid "4CDA1D19-459A-A0C0-F773-B78A2E35167D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Ring2_Joint_M_CTR1_rotateY";
	rename -uid "AA506949-445C-8047-E589-99AD63486F2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Ring2_Joint_M_CTR1_rotateZ";
	rename -uid "52CAF73A-41A6-CEB2-016E-FCBF28320145";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 -64.392961074383393 20 0;
createNode animCurveTU -n "Ring2_Joint_M_CTR1_scaleX";
	rename -uid "2951CA9F-4599-D3FF-14A8-48A5738FD022";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Ring2_Joint_M_CTR1_scaleY";
	rename -uid "A03DCE94-48D6-ECF2-189E-A2865CC74AA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Ring2_Joint_M_CTR1_scaleZ";
	rename -uid "C2F0734F-4BEC-553C-90E9-10BD6EFD344E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTL -n "Pinkey4_Joint_M_CTR3_translateX";
	rename -uid "6357EA59-416B-B60D-1DA5-CF9A778FEC76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Pinkey4_Joint_M_CTR3_translateY";
	rename -uid "1359E5C4-4422-5B4D-5FEF-7389474D7BA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Pinkey4_Joint_M_CTR3_translateZ";
	rename -uid "2A44A97A-4926-A635-6EE5-1E81DD13095D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Pinkey4_Joint_M_CTR3_rotateX";
	rename -uid "9A1D9CA9-4AB1-34D2-BDAA-7AB5CA4C1386";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Pinkey4_Joint_M_CTR3_rotateY";
	rename -uid "A22C2FC7-4566-C703-E385-0C9C7400529F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Pinkey4_Joint_M_CTR3_rotateZ";
	rename -uid "82F311A7-4B06-1492-A9D3-9B83428F25F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 -64.392961074383393 20 0;
createNode animCurveTU -n "Pinkey4_Joint_M_CTR3_scaleX";
	rename -uid "C2A1D6DB-45E7-133C-9A4E-3DA628294072";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Pinkey4_Joint_M_CTR3_scaleY";
	rename -uid "C0E03C25-4D74-994F-2CDD-5089CF1A1F29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Pinkey4_Joint_M_CTR3_scaleZ";
	rename -uid "6245B4C2-4636-BEB2-F38B-42A06E551407";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTL -n "Index2_Joint_M_CTR1_translateX";
	rename -uid "CD6C9AD4-47D7-31B1-93DD-EE8E2BBF906F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Index2_Joint_M_CTR1_translateY";
	rename -uid "019B8600-4771-999C-1BCD-B790AB04A51B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Index2_Joint_M_CTR1_translateZ";
	rename -uid "7AFCDEFF-4C2E-9FA4-4BAB-99819EABD9AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Index2_Joint_M_CTR1_rotateX";
	rename -uid "A18EC7B7-49BD-9AC9-AB94-01B31922FB2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Index2_Joint_M_CTR1_rotateY";
	rename -uid "54A9F060-4380-A1C1-3677-33B53074B81F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Index2_Joint_M_CTR1_rotateZ";
	rename -uid "B6DD4FF6-436F-0747-EF83-32B319607DC2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 -64.392961074383393 20 0;
createNode animCurveTU -n "Index2_Joint_M_CTR1_scaleX";
	rename -uid "914460B7-48D3-526E-1C93-79B8511969C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Index2_Joint_M_CTR1_scaleY";
	rename -uid "39F8D61C-4A35-BD87-5A7F-60B959C0EBB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Index2_Joint_M_CTR1_scaleZ";
	rename -uid "4498B15A-4F35-1EB9-9EA7-51A275FD395D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTL -n "Middle4_Joint_M_CTR3_translateX";
	rename -uid "20F590CD-484A-2892-DF09-B6ACF69D7581";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTL -n "Middle4_Joint_M_CTR3_translateY";
	rename -uid "2F6D0E63-47D7-AD62-1A7C-B281791CC992";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTL -n "Middle4_Joint_M_CTR3_translateZ";
	rename -uid "3825ACF9-4C99-E83C-319E-CFA3B21CB90D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTA -n "Middle4_Joint_M_CTR3_rotateX";
	rename -uid "99FAA451-4DB3-AFEB-ABD8-62A254EB1674";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTA -n "Middle4_Joint_M_CTR3_rotateY";
	rename -uid "EB097942-49CD-C348-01FE-3C9270A051A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTA -n "Middle4_Joint_M_CTR3_rotateZ";
	rename -uid "8419CD5A-4062-4CA6-B302-06AE9C5C9A85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 20 0;
createNode animCurveTU -n "Middle4_Joint_M_CTR3_scaleX";
	rename -uid "3B2494C6-4445-60F9-782B-FC8AB334946E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 20 1;
createNode animCurveTU -n "Middle4_Joint_M_CTR3_scaleY";
	rename -uid "C5879F7C-4E38-E39F-B6AC-10B0A3C1161A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 20 1;
createNode animCurveTU -n "Middle4_Joint_M_CTR3_scaleZ";
	rename -uid "5421358E-45DA-307F-5D3C-64B4F3CFC81F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 20 1;
createNode animCurveTA -n "Wrist_Joint_M_CTR2_rotateX";
	rename -uid "337D7263-41E0-5E3F-EB04-CAAA207A47C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  20 0 30 0 40 0;
createNode animCurveTA -n "Wrist_Joint_M_CTR2_rotateY";
	rename -uid "C2372614-4EF9-F452-C057-2AB6F8E2E50F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  20 0 30 0 40 0;
createNode animCurveTA -n "Wrist_Joint_M_CTR2_rotateZ";
	rename -uid "F6E299DA-41B5-38D7-DF93-8ABF41D6D560";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  20 0 30 39.462466440799375 40 0;
createNode animCurveTL -n "Wrist_Joint_M_CTR2_translateX";
	rename -uid "181A04E7-4839-B315-0339-4696DF6440AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  20 0 30 0 40 0;
createNode animCurveTL -n "Wrist_Joint_M_CTR2_translateY";
	rename -uid "425D16FC-45ED-5F34-6899-DAB4AA04A2EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  20 0 30 0 40 0;
createNode animCurveTL -n "Wrist_Joint_M_CTR2_translateZ";
	rename -uid "72A0CF65-4BD7-807A-F19F-A49109C2BF3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  20 0 30 0 40 0;
createNode animCurveTU -n "Wrist_Joint_M_CTR2_scaleX";
	rename -uid "0C0B2A2D-45CF-939A-CBC3-EE82C00C7F4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  20 1 30 1 40 1;
createNode animCurveTU -n "Wrist_Joint_M_CTR2_scaleY";
	rename -uid "7915A89A-4BC0-C3D8-658D-87A1390F549F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  20 1 30 1 40 1;
createNode animCurveTU -n "Wrist_Joint_M_CTR2_scaleZ";
	rename -uid "A3605D08-41CA-A693-07B2-408851CBA4A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  20 1 30 1 40 1;
createNode objectSet -n "skinCluster1Set1";
	rename -uid "27E075EE-413D-C6FF-131A-79B260E51DE9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode objectSet -n "tweakSet2";
	rename -uid "C80A68CC-4802-CDFD-482C-669B086714E2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId7";
	rename -uid "2B89C90E-4026-E698-5476-2A884C806ABD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	rename -uid "62BFD556-49FA-468F-D48F-2E8813874816";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "0DD3EFBA-4753-8F42-9EF0-188312BA2E2B";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -511.90474156349512 -346.42855766273738 ;
	setAttr ".tgi[0].vh" -type "double2" 511.90474156349512 345.23808151956644 ;
	setAttr -s 436 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -582.85711669921875;
	setAttr ".tgi[0].ni[0].y" 10078.5712890625;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -3332.857177734375;
	setAttr ".tgi[0].ni[1].y" 19530;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 3545.71435546875;
	setAttr ".tgi[0].ni[2].y" -7807.14306640625;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[3].y" 1960;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[4].y" -3950;
	setAttr ".tgi[0].ni[4].nvs" 1920;
	setAttr ".tgi[0].ni[5].x" -952.85711669921875;
	setAttr ".tgi[0].ni[5].y" 7088.5712890625;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 3545.71435546875;
	setAttr ".tgi[0].ni[6].y" -4791.4287109375;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 3545.71435546875;
	setAttr ".tgi[0].ni[7].y" -6170;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[8].y" -4737.14306640625;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 2768.571533203125;
	setAttr ".tgi[0].ni[9].y" -6175.71435546875;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[10].y" -5991.4287109375;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 672.85711669921875;
	setAttr ".tgi[0].ni[11].y" 808.5714111328125;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 2768.571533203125;
	setAttr ".tgi[0].ni[12].y" 10487.142578125;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 672.85711669921875;
	setAttr ".tgi[0].ni[13].y" 6671.4287109375;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 277.14285278320313;
	setAttr ".tgi[0].ni[14].y" 7160;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[15].y" -4640;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 2768.571533203125;
	setAttr ".tgi[0].ni[16].y" -6391.4287109375;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" -952.85711669921875;
	setAttr ".tgi[0].ni[17].y" 14855.7138671875;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[18].y" 1330;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 3545.71435546875;
	setAttr ".tgi[0].ni[19].y" -11602.857421875;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 2768.571533203125;
	setAttr ".tgi[0].ni[20].y" 4941.4287109375;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 2768.571533203125;
	setAttr ".tgi[0].ni[21].y" 11117.142578125;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 3545.71435546875;
	setAttr ".tgi[0].ni[22].y" -16167.142578125;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 2358.571533203125;
	setAttr ".tgi[0].ni[23].y" -8468.5712890625;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 3545.71435546875;
	setAttr ".tgi[0].ni[24].y" 7868.5712890625;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 3178.571533203125;
	setAttr ".tgi[0].ni[25].y" 5161.4287109375;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[26].y" 12967.142578125;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[27].y" 16402.857421875;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 3545.71435546875;
	setAttr ".tgi[0].ni[28].y" -6702.85693359375;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 2768.571533203125;
	setAttr ".tgi[0].ni[29].y" -5617.14306640625;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 277.14285278320313;
	setAttr ".tgi[0].ni[30].y" 5295.71435546875;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" -2338.571533203125;
	setAttr ".tgi[0].ni[31].y" 18311.427734375;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[32].y" 1194.2857666015625;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" -952.85711669921875;
	setAttr ".tgi[0].ni[33].y" 7647.14306640625;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 2358.571533203125;
	setAttr ".tgi[0].ni[34].y" -12165.7138671875;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[35].y" -1275.7142333984375;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" -952.85711669921875;
	setAttr ".tgi[0].ni[36].y" 8567.142578125;
	setAttr ".tgi[0].ni[36].nvs" 1920;
	setAttr ".tgi[0].ni[37].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[37].y" -5248.5712890625;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 2768.571533203125;
	setAttr ".tgi[0].ni[38].y" 2551.428466796875;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[39].y" -10815.7138671875;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 2768.571533203125;
	setAttr ".tgi[0].ni[40].y" 297.14285278320313;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 3545.71435546875;
	setAttr ".tgi[0].ni[41].y" 4027.142822265625;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[42].y" 9662.857421875;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[43].y" 9238.5712890625;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[44].y" 1460;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 672.85711669921875;
	setAttr ".tgi[0].ni[45].y" 11270;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" -952.85711669921875;
	setAttr ".tgi[0].ni[46].y" 12108.5712890625;
	setAttr ".tgi[0].ni[46].nvs" 1920;
	setAttr ".tgi[0].ni[47].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[47].y" -11900;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 3178.571533203125;
	setAttr ".tgi[0].ni[48].y" 4335.71435546875;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[49].y" 9218.5712890625;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[50].y" 2502.857177734375;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 2768.571533203125;
	setAttr ".tgi[0].ni[51].y" 14571.4287109375;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" 3545.71435546875;
	setAttr ".tgi[0].ni[52].y" -8308.5712890625;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[53].y" 2401.428466796875;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 672.85711669921875;
	setAttr ".tgi[0].ni[54].y" 1182.857177734375;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 3545.71435546875;
	setAttr ".tgi[0].ni[55].y" -8467.142578125;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[56].y" -4675.71435546875;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 672.85711669921875;
	setAttr ".tgi[0].ni[57].y" 7438.5712890625;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" 672.85711669921875;
	setAttr ".tgi[0].ni[58].y" 5782.85693359375;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" -132.85714721679688;
	setAttr ".tgi[0].ni[59].y" 2788.571533203125;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" 2768.571533203125;
	setAttr ".tgi[0].ni[60].y" 13664.2861328125;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" -132.85714721679688;
	setAttr ".tgi[0].ni[61].y" 9051.4287109375;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[62].y" 9092.857421875;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" -952.85711669921875;
	setAttr ".tgi[0].ni[63].y" 11182.857421875;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" -1704.2857666015625;
	setAttr ".tgi[0].ni[64].y" 14247.142578125;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[65].y" -4948.5712890625;
	setAttr ".tgi[0].ni[65].nvs" 1920;
	setAttr ".tgi[0].ni[66].x" 3545.71435546875;
	setAttr ".tgi[0].ni[66].y" -3274.28564453125;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" -4254.28564453125;
	setAttr ".tgi[0].ni[67].y" 20390;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[68].y" 15394.2861328125;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" 672.85711669921875;
	setAttr ".tgi[0].ni[69].y" 1918.5714111328125;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" -2338.571533203125;
	setAttr ".tgi[0].ni[70].y" 18470;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" 3545.71435546875;
	setAttr ".tgi[0].ni[71].y" 16401.427734375;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" -582.85711669921875;
	setAttr ".tgi[0].ni[72].y" 6941.4287109375;
	setAttr ".tgi[0].ni[72].nvs" 1920;
	setAttr ".tgi[0].ni[73].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[73].y" 2061.428466796875;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" 672.85711669921875;
	setAttr ".tgi[0].ni[74].y" 192.85714721679688;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[75].y" 17182.857421875;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[76].y" -3005.71435546875;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[77].y" 5035.71435546875;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" -582.85711669921875;
	setAttr ".tgi[0].ni[78].y" 5282.85693359375;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[79].y" -1002.8571166992188;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" 2768.571533203125;
	setAttr ".tgi[0].ni[80].y" -2140;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" 2358.571533203125;
	setAttr ".tgi[0].ni[81].y" 7285.71435546875;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[82].y" 6225.71435546875;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" 672.85711669921875;
	setAttr ".tgi[0].ni[83].y" 6170;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[84].y" 9308.5712890625;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" 2768.571533203125;
	setAttr ".tgi[0].ni[85].y" 6864.28564453125;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" -2338.571533203125;
	setAttr ".tgi[0].ni[86].y" 16902.857421875;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[87].y" -2144.28564453125;
	setAttr ".tgi[0].ni[87].nvs" 1920;
	setAttr ".tgi[0].ni[88].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[88].y" 15812.857421875;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" 672.85711669921875;
	setAttr ".tgi[0].ni[89].y" 10825.7138671875;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" 2768.571533203125;
	setAttr ".tgi[0].ni[90].y" 12845.7138671875;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[91].y" -4005.71435546875;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" -582.85711669921875;
	setAttr ".tgi[0].ni[92].y" 11690;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" 3545.71435546875;
	setAttr ".tgi[0].ni[93].y" 3585.71435546875;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" 3545.71435546875;
	setAttr ".tgi[0].ni[94].y" 12012.857421875;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[95].y" 12865.7138671875;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" -1704.2857666015625;
	setAttr ".tgi[0].ni[96].y" 18847.142578125;
	setAttr ".tgi[0].ni[96].nvs" 18304;
	setAttr ".tgi[0].ni[97].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[97].y" 5431.4287109375;
	setAttr ".tgi[0].ni[97].nvs" 18304;
	setAttr ".tgi[0].ni[98].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[98].y" -6750;
	setAttr ".tgi[0].ni[98].nvs" 1920;
	setAttr ".tgi[0].ni[99].x" -4254.28564453125;
	setAttr ".tgi[0].ni[99].y" 19971.427734375;
	setAttr ".tgi[0].ni[99].nvs" 18304;
	setAttr ".tgi[0].ni[100].x" 3545.71435546875;
	setAttr ".tgi[0].ni[100].y" -16268.5712890625;
	setAttr ".tgi[0].ni[100].nvs" 18304;
	setAttr ".tgi[0].ni[101].x" 2358.571533203125;
	setAttr ".tgi[0].ni[101].y" 481.42855834960938;
	setAttr ".tgi[0].ni[101].nvs" 18304;
	setAttr ".tgi[0].ni[102].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[102].y" 14102.857421875;
	setAttr ".tgi[0].ni[102].nvs" 18304;
	setAttr ".tgi[0].ni[103].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[103].y" 9410;
	setAttr ".tgi[0].ni[103].nvs" 18304;
	setAttr ".tgi[0].ni[104].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[104].y" -5982.85693359375;
	setAttr ".tgi[0].ni[104].nvs" 18304;
	setAttr ".tgi[0].ni[105].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[105].y" 7147.14306640625;
	setAttr ".tgi[0].ni[105].nvs" 1920;
	setAttr ".tgi[0].ni[106].x" 2768.571533203125;
	setAttr ".tgi[0].ni[106].y" 798.5714111328125;
	setAttr ".tgi[0].ni[106].nvs" 18304;
	setAttr ".tgi[0].ni[107].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[107].y" 12312.857421875;
	setAttr ".tgi[0].ni[107].nvs" 18304;
	setAttr ".tgi[0].ni[108].x" 277.14285278320313;
	setAttr ".tgi[0].ni[108].y" 6627.14306640625;
	setAttr ".tgi[0].ni[108].nvs" 18304;
	setAttr ".tgi[0].ni[109].x" 3178.571533203125;
	setAttr ".tgi[0].ni[109].y" 7370;
	setAttr ".tgi[0].ni[109].nvs" 18304;
	setAttr ".tgi[0].ni[110].x" 2768.571533203125;
	setAttr ".tgi[0].ni[110].y" 8144.28564453125;
	setAttr ".tgi[0].ni[110].nvs" 18304;
	setAttr ".tgi[0].ni[111].x" -952.85711669921875;
	setAttr ".tgi[0].ni[111].y" 16135.7138671875;
	setAttr ".tgi[0].ni[111].nvs" 18304;
	setAttr ".tgi[0].ni[112].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[112].y" -1908.5714111328125;
	setAttr ".tgi[0].ni[112].nvs" 18304;
	setAttr ".tgi[0].ni[113].x" 3545.71435546875;
	setAttr ".tgi[0].ni[113].y" -1341.4285888671875;
	setAttr ".tgi[0].ni[113].nvs" 18304;
	setAttr ".tgi[0].ni[114].x" 2768.571533203125;
	setAttr ".tgi[0].ni[114].y" 13924.2861328125;
	setAttr ".tgi[0].ni[114].nvs" 18304;
	setAttr ".tgi[0].ni[115].x" 3545.71435546875;
	setAttr ".tgi[0].ni[115].y" -3058.571533203125;
	setAttr ".tgi[0].ni[115].nvs" 18304;
	setAttr ".tgi[0].ni[116].x" 2768.571533203125;
	setAttr ".tgi[0].ni[116].y" 14901.4287109375;
	setAttr ".tgi[0].ni[116].nvs" 18304;
	setAttr ".tgi[0].ni[117].x" 672.85711669921875;
	setAttr ".tgi[0].ni[117].y" 1024.2857666015625;
	setAttr ".tgi[0].ni[117].nvs" 18304;
	setAttr ".tgi[0].ni[118].x" -952.85711669921875;
	setAttr ".tgi[0].ni[118].y" 13937.142578125;
	setAttr ".tgi[0].ni[118].nvs" 18304;
	setAttr ".tgi[0].ni[119].x" 3545.71435546875;
	setAttr ".tgi[0].ni[119].y" 4267.14306640625;
	setAttr ".tgi[0].ni[119].nvs" 18304;
	setAttr ".tgi[0].ni[120].x" 3545.71435546875;
	setAttr ".tgi[0].ni[120].y" -16674.28515625;
	setAttr ".tgi[0].ni[120].nvs" 18304;
	setAttr ".tgi[0].ni[121].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[121].y" 11188.5712890625;
	setAttr ".tgi[0].ni[121].nvs" 18304;
	setAttr ".tgi[0].ni[122].x" -952.85711669921875;
	setAttr ".tgi[0].ni[122].y" 13498.5712890625;
	setAttr ".tgi[0].ni[122].nvs" 18304;
	setAttr ".tgi[0].ni[123].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[123].y" -72.857139587402344;
	setAttr ".tgi[0].ni[123].nvs" 18304;
	setAttr ".tgi[0].ni[124].x" 3178.571533203125;
	setAttr ".tgi[0].ni[124].y" 2478.571533203125;
	setAttr ".tgi[0].ni[124].nvs" 18304;
	setAttr ".tgi[0].ni[125].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[125].y" 7350;
	setAttr ".tgi[0].ni[125].nvs" 18304;
	setAttr ".tgi[0].ni[126].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[126].y" 9060;
	setAttr ".tgi[0].ni[126].nvs" 18304;
	setAttr ".tgi[0].ni[127].x" 2768.571533203125;
	setAttr ".tgi[0].ni[127].y" 5214.28564453125;
	setAttr ".tgi[0].ni[127].nvs" 18304;
	setAttr ".tgi[0].ni[128].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[128].y" 11517.142578125;
	setAttr ".tgi[0].ni[128].nvs" 18304;
	setAttr ".tgi[0].ni[129].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[129].y" -12001.4287109375;
	setAttr ".tgi[0].ni[129].nvs" 18304;
	setAttr ".tgi[0].ni[130].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[130].y" 11647.142578125;
	setAttr ".tgi[0].ni[130].nvs" 18304;
	setAttr ".tgi[0].ni[131].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[131].y" -5908.5712890625;
	setAttr ".tgi[0].ni[131].nvs" 18304;
	setAttr ".tgi[0].ni[132].x" -132.85714721679688;
	setAttr ".tgi[0].ni[132].y" 13048.5712890625;
	setAttr ".tgi[0].ni[132].nvs" 18304;
	setAttr ".tgi[0].ni[133].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[133].y" 5830;
	setAttr ".tgi[0].ni[133].nvs" 18304;
	setAttr ".tgi[0].ni[134].x" 3545.71435546875;
	setAttr ".tgi[0].ni[134].y" 3475.71435546875;
	setAttr ".tgi[0].ni[134].nvs" 18304;
	setAttr ".tgi[0].ni[135].x" 277.14285278320313;
	setAttr ".tgi[0].ni[135].y" 164.28572082519531;
	setAttr ".tgi[0].ni[135].nvs" 18304;
	setAttr ".tgi[0].ni[136].x" 3545.71435546875;
	setAttr ".tgi[0].ni[136].y" -3890;
	setAttr ".tgi[0].ni[136].nvs" 18304;
	setAttr ".tgi[0].ni[137].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[137].y" 9821.4287109375;
	setAttr ".tgi[0].ni[137].nvs" 18304;
	setAttr ".tgi[0].ni[138].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[138].y" 12528.5712890625;
	setAttr ".tgi[0].ni[138].nvs" 18304;
	setAttr ".tgi[0].ni[139].x" 672.85711669921875;
	setAttr ".tgi[0].ni[139].y" 2774.28564453125;
	setAttr ".tgi[0].ni[139].nvs" 18304;
	setAttr ".tgi[0].ni[140].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[140].y" -4895.71435546875;
	setAttr ".tgi[0].ni[140].nvs" 18304;
	setAttr ".tgi[0].ni[141].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[141].y" -1581.4285888671875;
	setAttr ".tgi[0].ni[141].nvs" 18304;
	setAttr ".tgi[0].ni[142].x" 277.14285278320313;
	setAttr ".tgi[0].ni[142].y" 7321.4287109375;
	setAttr ".tgi[0].ni[142].nvs" 18304;
	setAttr ".tgi[0].ni[143].x" -952.85711669921875;
	setAttr ".tgi[0].ni[143].y" 9068.5712890625;
	setAttr ".tgi[0].ni[143].nvs" 18304;
	setAttr ".tgi[0].ni[144].x" 2768.571533203125;
	setAttr ".tgi[0].ni[144].y" -10137.142578125;
	setAttr ".tgi[0].ni[144].nvs" 18304;
	setAttr ".tgi[0].ni[145].x" -1704.2857666015625;
	setAttr ".tgi[0].ni[145].y" 16118.5712890625;
	setAttr ".tgi[0].ni[145].nvs" 18304;
	setAttr ".tgi[0].ni[146].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[146].y" -5824.28564453125;
	setAttr ".tgi[0].ni[146].nvs" 1920;
	setAttr ".tgi[0].ni[147].x" 2358.571533203125;
	setAttr ".tgi[0].ni[147].y" 640;
	setAttr ".tgi[0].ni[147].nvs" 18304;
	setAttr ".tgi[0].ni[148].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[148].y" 7477.14306640625;
	setAttr ".tgi[0].ni[148].nvs" 18304;
	setAttr ".tgi[0].ni[149].x" -2338.571533203125;
	setAttr ".tgi[0].ni[149].y" 17721.427734375;
	setAttr ".tgi[0].ni[149].nvs" 18304;
	setAttr ".tgi[0].ni[150].x" 3545.71435546875;
	setAttr ".tgi[0].ni[150].y" -5897.14306640625;
	setAttr ".tgi[0].ni[150].nvs" 18304;
	setAttr ".tgi[0].ni[151].x" 3545.71435546875;
	setAttr ".tgi[0].ni[151].y" 391.42855834960938;
	setAttr ".tgi[0].ni[151].nvs" 18304;
	setAttr ".tgi[0].ni[152].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[152].y" -1844.2857666015625;
	setAttr ".tgi[0].ni[152].nvs" 18304;
	setAttr ".tgi[0].ni[153].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[153].y" -4578.5712890625;
	setAttr ".tgi[0].ni[153].nvs" 18304;
	setAttr ".tgi[0].ni[154].x" -952.85711669921875;
	setAttr ".tgi[0].ni[154].y" 13124.2861328125;
	setAttr ".tgi[0].ni[154].nvs" 18304;
	setAttr ".tgi[0].ni[155].x" 277.14285278320313;
	setAttr ".tgi[0].ni[155].y" 4077.142822265625;
	setAttr ".tgi[0].ni[155].nvs" 18304;
	setAttr ".tgi[0].ni[156].x" 672.85711669921875;
	setAttr ".tgi[0].ni[156].y" 3764.28564453125;
	setAttr ".tgi[0].ni[156].nvs" 18304;
	setAttr ".tgi[0].ni[157].x" -2011.4285888671875;
	setAttr ".tgi[0].ni[157].y" 13640;
	setAttr ".tgi[0].ni[157].nvs" 1920;
	setAttr ".tgi[0].ni[158].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[158].y" 11078.5712890625;
	setAttr ".tgi[0].ni[158].nvs" 18304;
	setAttr ".tgi[0].ni[159].x" 2358.571533203125;
	setAttr ".tgi[0].ni[159].y" 8350;
	setAttr ".tgi[0].ni[159].nvs" 18304;
	setAttr ".tgi[0].ni[160].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[160].y" 921.4285888671875;
	setAttr ".tgi[0].ni[160].nvs" 18304;
	setAttr ".tgi[0].ni[161].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[161].y" 8655.7138671875;
	setAttr ".tgi[0].ni[161].nvs" 18304;
	setAttr ".tgi[0].ni[162].x" -132.85714721679688;
	setAttr ".tgi[0].ni[162].y" 7002.85693359375;
	setAttr ".tgi[0].ni[162].nvs" 18304;
	setAttr ".tgi[0].ni[163].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[163].y" 10660;
	setAttr ".tgi[0].ni[163].nvs" 18304;
	setAttr ".tgi[0].ni[164].x" -1704.2857666015625;
	setAttr ".tgi[0].ni[164].y" 13842.857421875;
	setAttr ".tgi[0].ni[164].nvs" 18304;
	setAttr ".tgi[0].ni[165].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[165].y" 16028.5712890625;
	setAttr ".tgi[0].ni[165].nvs" 18304;
	setAttr ".tgi[0].ni[166].x" -4254.28564453125;
	setAttr ".tgi[0].ni[166].y" 20288.572265625;
	setAttr ".tgi[0].ni[166].nvs" 18304;
	setAttr ".tgi[0].ni[167].x" -132.85714721679688;
	setAttr ".tgi[0].ni[167].y" 8391.4287109375;
	setAttr ".tgi[0].ni[167].nvs" 18304;
	setAttr ".tgi[0].ni[168].x" 3545.71435546875;
	setAttr ".tgi[0].ni[168].y" -2842.857177734375;
	setAttr ".tgi[0].ni[168].nvs" 18304;
	setAttr ".tgi[0].ni[169].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[169].y" 2808.571533203125;
	setAttr ".tgi[0].ni[169].nvs" 18304;
	setAttr ".tgi[0].ni[170].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[170].y" -11764.2861328125;
	setAttr ".tgi[0].ni[170].nvs" 18304;
	setAttr ".tgi[0].ni[171].x" 672.85711669921875;
	setAttr ".tgi[0].ni[171].y" 1685.7142333984375;
	setAttr ".tgi[0].ni[171].nvs" 18304;
	setAttr ".tgi[0].ni[172].x" -582.85711669921875;
	setAttr ".tgi[0].ni[172].y" 11087.142578125;
	setAttr ".tgi[0].ni[172].nvs" 18304;
	setAttr ".tgi[0].ni[173].x" -952.85711669921875;
	setAttr ".tgi[0].ni[173].y" 14697.142578125;
	setAttr ".tgi[0].ni[173].nvs" 18304;
	setAttr ".tgi[0].ni[174].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[174].y" 15178.5712890625;
	setAttr ".tgi[0].ni[174].nvs" 18304;
	setAttr ".tgi[0].ni[175].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[175].y" -4164.28564453125;
	setAttr ".tgi[0].ni[175].nvs" 18304;
	setAttr ".tgi[0].ni[176].x" 2768.571533203125;
	setAttr ".tgi[0].ni[176].y" 14470;
	setAttr ".tgi[0].ni[176].nvs" 18304;
	setAttr ".tgi[0].ni[177].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[177].y" 13354.2861328125;
	setAttr ".tgi[0].ni[177].nvs" 18304;
	setAttr ".tgi[0].ni[178].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[178].y" 11091.4287109375;
	setAttr ".tgi[0].ni[178].nvs" 18304;
	setAttr ".tgi[0].ni[179].x" 2768.571533203125;
	setAttr ".tgi[0].ni[179].y" 14082.857421875;
	setAttr ".tgi[0].ni[179].nvs" 18304;
	setAttr ".tgi[0].ni[180].x" 3545.71435546875;
	setAttr ".tgi[0].ni[180].y" -16978.572265625;
	setAttr ".tgi[0].ni[180].nvs" 18304;
	setAttr ".tgi[0].ni[181].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[181].y" 17081.427734375;
	setAttr ".tgi[0].ni[181].nvs" 18304;
	setAttr ".tgi[0].ni[182].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[182].y" 8242.857421875;
	setAttr ".tgi[0].ni[182].nvs" 18304;
	setAttr ".tgi[0].ni[183].x" 3545.71435546875;
	setAttr ".tgi[0].ni[183].y" -554.28570556640625;
	setAttr ".tgi[0].ni[183].nvs" 18304;
	setAttr ".tgi[0].ni[184].x" 2768.571533203125;
	setAttr ".tgi[0].ni[184].y" -890;
	setAttr ".tgi[0].ni[184].nvs" 18304;
	setAttr ".tgi[0].ni[185].x" 2768.571533203125;
	setAttr ".tgi[0].ni[185].y" -13822.857421875;
	setAttr ".tgi[0].ni[185].nvs" 18304;
	setAttr ".tgi[0].ni[186].x" 3545.71435546875;
	setAttr ".tgi[0].ni[186].y" -16775.71484375;
	setAttr ".tgi[0].ni[186].nvs" 18304;
	setAttr ".tgi[0].ni[187].x" -582.85711669921875;
	setAttr ".tgi[0].ni[187].y" 9348.5712890625;
	setAttr ".tgi[0].ni[187].nvs" 1920;
	setAttr ".tgi[0].ni[188].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[188].y" 14645.7138671875;
	setAttr ".tgi[0].ni[188].nvs" 18304;
	setAttr ".tgi[0].ni[189].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[189].y" 241.42857360839844;
	setAttr ".tgi[0].ni[189].nvs" 18304;
	setAttr ".tgi[0].ni[190].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[190].y" -9685.7138671875;
	setAttr ".tgi[0].ni[190].nvs" 18304;
	setAttr ".tgi[0].ni[191].x" -582.85711669921875;
	setAttr ".tgi[0].ni[191].y" 6355.71435546875;
	setAttr ".tgi[0].ni[191].nvs" 18304;
	setAttr ".tgi[0].ni[192].x" 3545.71435546875;
	setAttr ".tgi[0].ni[192].y" -4892.85693359375;
	setAttr ".tgi[0].ni[192].nvs" 18304;
	setAttr ".tgi[0].ni[193].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[193].y" -9854.2861328125;
	setAttr ".tgi[0].ni[193].nvs" 18304;
	setAttr ".tgi[0].ni[194].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[194].y" 9421.4287109375;
	setAttr ".tgi[0].ni[194].nvs" 18304;
	setAttr ".tgi[0].ni[195].x" -582.85711669921875;
	setAttr ".tgi[0].ni[195].y" 10237.142578125;
	setAttr ".tgi[0].ni[195].nvs" 18304;
	setAttr ".tgi[0].ni[196].x" 277.14285278320313;
	setAttr ".tgi[0].ni[196].y" 5952.85693359375;
	setAttr ".tgi[0].ni[196].nvs" 18304;
	setAttr ".tgi[0].ni[197].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[197].y" 11488.5712890625;
	setAttr ".tgi[0].ni[197].nvs" 18304;
	setAttr ".tgi[0].ni[198].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[198].y" 6962.85693359375;
	setAttr ".tgi[0].ni[198].nvs" 18304;
	setAttr ".tgi[0].ni[199].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[199].y" -5050;
	setAttr ".tgi[0].ni[199].nvs" 18304;
	setAttr ".tgi[0].ni[200].x" 2768.571533203125;
	setAttr ".tgi[0].ni[200].y" -1422.857177734375;
	setAttr ".tgi[0].ni[200].nvs" 18304;
	setAttr ".tgi[0].ni[201].x" -2338.571533203125;
	setAttr ".tgi[0].ni[201].y" 19244.28515625;
	setAttr ".tgi[0].ni[201].nvs" 18304;
	setAttr ".tgi[0].ni[202].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[202].y" 6384.28564453125;
	setAttr ".tgi[0].ni[202].nvs" 18304;
	setAttr ".tgi[0].ni[203].x" 2768.571533203125;
	setAttr ".tgi[0].ni[203].y" 8531.4287109375;
	setAttr ".tgi[0].ni[203].nvs" 18304;
	setAttr ".tgi[0].ni[204].x" 672.85711669921875;
	setAttr ".tgi[0].ni[204].y" 1341.4285888671875;
	setAttr ".tgi[0].ni[204].nvs" 18304;
	setAttr ".tgi[0].ni[205].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[205].y" -1438.5714111328125;
	setAttr ".tgi[0].ni[205].nvs" 1920;
	setAttr ".tgi[0].ni[206].x" 3545.71435546875;
	setAttr ".tgi[0].ni[206].y" 1552.857177734375;
	setAttr ".tgi[0].ni[206].nvs" 18304;
	setAttr ".tgi[0].ni[207].x" 2768.571533203125;
	setAttr ".tgi[0].ni[207].y" -1207.142822265625;
	setAttr ".tgi[0].ni[207].nvs" 18304;
	setAttr ".tgi[0].ni[208].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[208].y" 16504.28515625;
	setAttr ".tgi[0].ni[208].nvs" 18304;
	setAttr ".tgi[0].ni[209].x" -132.85714721679688;
	setAttr ".tgi[0].ni[209].y" 15682.857421875;
	setAttr ".tgi[0].ni[209].nvs" 18304;
	setAttr ".tgi[0].ni[210].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[210].y" 11401.4287109375;
	setAttr ".tgi[0].ni[210].nvs" 18304;
	setAttr ".tgi[0].ni[211].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[211].y" -3107.142822265625;
	setAttr ".tgi[0].ni[211].nvs" 18304;
	setAttr ".tgi[0].ni[212].x" 3545.71435546875;
	setAttr ".tgi[0].ni[212].y" -5522.85693359375;
	setAttr ".tgi[0].ni[212].nvs" 18304;
	setAttr ".tgi[0].ni[213].x" 2768.571533203125;
	setAttr ".tgi[0].ni[213].y" -991.4285888671875;
	setAttr ".tgi[0].ni[213].nvs" 18304;
	setAttr ".tgi[0].ni[214].x" -952.85711669921875;
	setAttr ".tgi[0].ni[214].y" 14380;
	setAttr ".tgi[0].ni[214].nvs" 18304;
	setAttr ".tgi[0].ni[215].x" 3545.71435546875;
	setAttr ".tgi[0].ni[215].y" -20224.28515625;
	setAttr ".tgi[0].ni[215].nvs" 18304;
	setAttr ".tgi[0].ni[216].x" -582.85711669921875;
	setAttr ".tgi[0].ni[216].y" 15471.4287109375;
	setAttr ".tgi[0].ni[216].nvs" 18304;
	setAttr ".tgi[0].ni[217].x" 2358.571533203125;
	setAttr ".tgi[0].ni[217].y" -6221.4287109375;
	setAttr ".tgi[0].ni[217].nvs" 18304;
	setAttr ".tgi[0].ni[218].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[218].y" -10070;
	setAttr ".tgi[0].ni[218].nvs" 18304;
	setAttr ".tgi[0].ni[219].x" -952.85711669921875;
	setAttr ".tgi[0].ni[219].y" 16237.142578125;
	setAttr ".tgi[0].ni[219].nvs" 18304;
	setAttr ".tgi[0].ni[220].x" 2768.571533203125;
	setAttr ".tgi[0].ni[220].y" 9550;
	setAttr ".tgi[0].ni[220].nvs" 18304;
	setAttr ".tgi[0].ni[221].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[221].y" 16764.28515625;
	setAttr ".tgi[0].ni[221].nvs" 18304;
	setAttr ".tgi[0].ni[222].x" 3545.71435546875;
	setAttr ".tgi[0].ni[222].y" 5398.5712890625;
	setAttr ".tgi[0].ni[222].nvs" 18304;
	setAttr ".tgi[0].ni[223].x" -952.85711669921875;
	setAttr ".tgi[0].ni[223].y" 15071.4287109375;
	setAttr ".tgi[0].ni[223].nvs" 18304;
	setAttr ".tgi[0].ni[224].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[224].y" 4540;
	setAttr ".tgi[0].ni[224].nvs" 18304;
	setAttr ".tgi[0].ni[225].x" 2768.571533203125;
	setAttr ".tgi[0].ni[225].y" 13118.5712890625;
	setAttr ".tgi[0].ni[225].nvs" 18304;
	setAttr ".tgi[0].ni[226].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[226].y" 1410;
	setAttr ".tgi[0].ni[226].nvs" 18304;
	setAttr ".tgi[0].ni[227].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[227].y" -10714.2861328125;
	setAttr ".tgi[0].ni[227].nvs" 18304;
	setAttr ".tgi[0].ni[228].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[228].y" 10977.142578125;
	setAttr ".tgi[0].ni[228].nvs" 18304;
	setAttr ".tgi[0].ni[229].x" -2338.571533203125;
	setAttr ".tgi[0].ni[229].y" 17994.28515625;
	setAttr ".tgi[0].ni[229].nvs" 18304;
	setAttr ".tgi[0].ni[230].x" 3545.71435546875;
	setAttr ".tgi[0].ni[230].y" -16877.142578125;
	setAttr ".tgi[0].ni[230].nvs" 18304;
	setAttr ".tgi[0].ni[231].x" 2768.571533203125;
	setAttr ".tgi[0].ni[231].y" -1981.4285888671875;
	setAttr ".tgi[0].ni[231].nvs" 18304;
	setAttr ".tgi[0].ni[232].x" -952.85711669921875;
	setAttr ".tgi[0].ni[232].y" 11520;
	setAttr ".tgi[0].ni[232].nvs" 18304;
	setAttr ".tgi[0].ni[233].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[233].y" -7947.14306640625;
	setAttr ".tgi[0].ni[233].nvs" 18304;
	setAttr ".tgi[0].ni[234].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[234].y" -6207.14306640625;
	setAttr ".tgi[0].ni[234].nvs" 18304;
	setAttr ".tgi[0].ni[235].x" 3545.71435546875;
	setAttr ".tgi[0].ni[235].y" 664.28570556640625;
	setAttr ".tgi[0].ni[235].nvs" 18304;
	setAttr ".tgi[0].ni[236].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[236].y" -6422.85693359375;
	setAttr ".tgi[0].ni[236].nvs" 18304;
	setAttr ".tgi[0].ni[237].x" 3545.71435546875;
	setAttr ".tgi[0].ni[237].y" -167.14285278320313;
	setAttr ".tgi[0].ni[237].nvs" 18304;
	setAttr ".tgi[0].ni[238].x" 672.85711669921875;
	setAttr ".tgi[0].ni[238].y" -451.42855834960938;
	setAttr ".tgi[0].ni[238].nvs" 18304;
	setAttr ".tgi[0].ni[239].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[239].y" -9025.7138671875;
	setAttr ".tgi[0].ni[239].nvs" 18304;
	setAttr ".tgi[0].ni[240].x" -952.85711669921875;
	setAttr ".tgi[0].ni[240].y" 16611.427734375;
	setAttr ".tgi[0].ni[240].nvs" 18304;
	setAttr ".tgi[0].ni[241].x" 3545.71435546875;
	setAttr ".tgi[0].ni[241].y" -7534.28564453125;
	setAttr ".tgi[0].ni[241].nvs" 18304;
	setAttr ".tgi[0].ni[242].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[242].y" 5794.28564453125;
	setAttr ".tgi[0].ni[242].nvs" 18304;
	setAttr ".tgi[0].ni[243].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[243].y" 1511.4285888671875;
	setAttr ".tgi[0].ni[243].nvs" 18304;
	setAttr ".tgi[0].ni[244].x" 3545.71435546875;
	setAttr ".tgi[0].ni[244].y" 6211.4287109375;
	setAttr ".tgi[0].ni[244].nvs" 18304;
	setAttr ".tgi[0].ni[245].x" 3545.71435546875;
	setAttr ".tgi[0].ni[245].y" 15257.142578125;
	setAttr ".tgi[0].ni[245].nvs" 18304;
	setAttr ".tgi[0].ni[246].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[246].y" 12744.2861328125;
	setAttr ".tgi[0].ni[246].nvs" 18304;
	setAttr ".tgi[0].ni[247].x" -132.85714721679688;
	setAttr ".tgi[0].ni[247].y" 10667.142578125;
	setAttr ".tgi[0].ni[247].nvs" 18304;
	setAttr ".tgi[0].ni[248].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[248].y" 3255.71435546875;
	setAttr ".tgi[0].ni[248].nvs" 18304;
	setAttr ".tgi[0].ni[249].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[249].y" -8594.2861328125;
	setAttr ".tgi[0].ni[249].nvs" 18304;
	setAttr ".tgi[0].ni[250].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[250].y" 8341.4287109375;
	setAttr ".tgi[0].ni[250].nvs" 18304;
	setAttr ".tgi[0].ni[251].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[251].y" -6542.85693359375;
	setAttr ".tgi[0].ni[251].nvs" 18304;
	setAttr ".tgi[0].ni[252].x" -952.85711669921875;
	setAttr ".tgi[0].ni[252].y" 15662.857421875;
	setAttr ".tgi[0].ni[252].nvs" 18304;
	setAttr ".tgi[0].ni[253].x" 3545.71435546875;
	setAttr ".tgi[0].ni[253].y" -10987.142578125;
	setAttr ".tgi[0].ni[253].nvs" 18304;
	setAttr ".tgi[0].ni[254].x" 3178.571533203125;
	setAttr ".tgi[0].ni[254].y" -11897.142578125;
	setAttr ".tgi[0].ni[254].nvs" 18304;
	setAttr ".tgi[0].ni[255].x" 277.14285278320313;
	setAttr ".tgi[0].ni[255].y" 4407.14306640625;
	setAttr ".tgi[0].ni[255].nvs" 18304;
	setAttr ".tgi[0].ni[256].x" 672.85711669921875;
	setAttr ".tgi[0].ni[256].y" 12297.142578125;
	setAttr ".tgi[0].ni[256].nvs" 18304;
	setAttr ".tgi[0].ni[257].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[257].y" 5330;
	setAttr ".tgi[0].ni[257].nvs" 18304;
	setAttr ".tgi[0].ni[258].x" 672.85711669921875;
	setAttr ".tgi[0].ni[258].y" 7540;
	setAttr ".tgi[0].ni[258].nvs" 18304;
	setAttr ".tgi[0].ni[259].x" 2768.571533203125;
	setAttr ".tgi[0].ni[259].y" 12572.857421875;
	setAttr ".tgi[0].ni[259].nvs" 18304;
	setAttr ".tgi[0].ni[260].x" 672.85711669921875;
	setAttr ".tgi[0].ni[260].y" 10394.2861328125;
	setAttr ".tgi[0].ni[260].nvs" 18304;
	setAttr ".tgi[0].ni[261].x" 3545.71435546875;
	setAttr ".tgi[0].ni[261].y" -20021.427734375;
	setAttr ".tgi[0].ni[261].nvs" 18304;
	setAttr ".tgi[0].ni[262].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[262].y" 3125.71435546875;
	setAttr ".tgi[0].ni[262].nvs" 18304;
	setAttr ".tgi[0].ni[263].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[263].y" 16865.71484375;
	setAttr ".tgi[0].ni[263].nvs" 18304;
	setAttr ".tgi[0].ni[264].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[264].y" 6542.85693359375;
	setAttr ".tgi[0].ni[264].nvs" 18304;
	setAttr ".tgi[0].ni[265].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[265].y" 2910;
	setAttr ".tgi[0].ni[265].nvs" 18304;
	setAttr ".tgi[0].ni[266].x" 3545.71435546875;
	setAttr ".tgi[0].ni[266].y" -9927.142578125;
	setAttr ".tgi[0].ni[266].nvs" 18304;
	setAttr ".tgi[0].ni[267].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[267].y" 17512.857421875;
	setAttr ".tgi[0].ni[267].nvs" 18304;
	setAttr ".tgi[0].ni[268].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[268].y" -3085.71435546875;
	setAttr ".tgi[0].ni[268].nvs" 18304;
	setAttr ".tgi[0].ni[269].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[269].y" 7851.4287109375;
	setAttr ".tgi[0].ni[269].nvs" 18304;
	setAttr ".tgi[0].ni[270].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[270].y" -7202.85693359375;
	setAttr ".tgi[0].ni[270].nvs" 18304;
	setAttr ".tgi[0].ni[271].x" 277.14285278320313;
	setAttr ".tgi[0].ni[271].y" 551.4285888671875;
	setAttr ".tgi[0].ni[271].nvs" 18304;
	setAttr ".tgi[0].ni[272].x" 2358.571533203125;
	setAttr ".tgi[0].ni[272].y" -14090;
	setAttr ".tgi[0].ni[272].nvs" 18304;
	setAttr ".tgi[0].ni[273].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[273].y" -708.5714111328125;
	setAttr ".tgi[0].ni[273].nvs" 1920;
	setAttr ".tgi[0].ni[274].x" 3545.71435546875;
	setAttr ".tgi[0].ni[274].y" -20325.71484375;
	setAttr ".tgi[0].ni[274].nvs" 18304;
	setAttr ".tgi[0].ni[275].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[275].y" 8141.4287109375;
	setAttr ".tgi[0].ni[275].nvs" 18304;
	setAttr ".tgi[0].ni[276].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[276].y" 14804.2861328125;
	setAttr ".tgi[0].ni[276].nvs" 18304;
	setAttr ".tgi[0].ni[277].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[277].y" 8401.4287109375;
	setAttr ".tgi[0].ni[277].nvs" 18304;
	setAttr ".tgi[0].ni[278].x" 2768.571533203125;
	setAttr ".tgi[0].ni[278].y" -2927.142822265625;
	setAttr ".tgi[0].ni[278].nvs" 18304;
	setAttr ".tgi[0].ni[279].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[279].y" 6818.5712890625;
	setAttr ".tgi[0].ni[279].nvs" 18304;
	setAttr ".tgi[0].ni[280].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[280].y" 10875.7138671875;
	setAttr ".tgi[0].ni[280].nvs" 18304;
	setAttr ".tgi[0].ni[281].x" 2768.571533203125;
	setAttr ".tgi[0].ni[281].y" -14095.7138671875;
	setAttr ".tgi[0].ni[281].nvs" 18304;
	setAttr ".tgi[0].ni[282].x" 3545.71435546875;
	setAttr ".tgi[0].ni[282].y" 5968.5712890625;
	setAttr ".tgi[0].ni[282].nvs" 18304;
	setAttr ".tgi[0].ni[283].x" -952.85711669921875;
	setAttr ".tgi[0].ni[283].y" 13340;
	setAttr ".tgi[0].ni[283].nvs" 18304;
	setAttr ".tgi[0].ni[284].x" 277.14285278320313;
	setAttr ".tgi[0].ni[284].y" 4908.5712890625;
	setAttr ".tgi[0].ni[284].nvs" 18304;
	setAttr ".tgi[0].ni[285].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[285].y" 4968.5712890625;
	setAttr ".tgi[0].ni[285].nvs" 18304;
	setAttr ".tgi[0].ni[286].x" 3545.71435546875;
	setAttr ".tgi[0].ni[286].y" 2532.857177734375;
	setAttr ".tgi[0].ni[286].nvs" 18304;
	setAttr ".tgi[0].ni[287].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[287].y" 628.5714111328125;
	setAttr ".tgi[0].ni[287].nvs" 18304;
	setAttr ".tgi[0].ni[288].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[288].y" -6084.28564453125;
	setAttr ".tgi[0].ni[288].nvs" 18304;
	setAttr ".tgi[0].ni[289].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[289].y" -9787.142578125;
	setAttr ".tgi[0].ni[289].nvs" 18304;
	setAttr ".tgi[0].ni[290].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[290].y" -901.4285888671875;
	setAttr ".tgi[0].ni[290].nvs" 18304;
	setAttr ".tgi[0].ni[291].x" -2718.571533203125;
	setAttr ".tgi[0].ni[291].y" 18914.28515625;
	setAttr ".tgi[0].ni[291].nvs" 18304;
	setAttr ".tgi[0].ni[292].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[292].y" 4282.85693359375;
	setAttr ".tgi[0].ni[292].nvs" 18304;
	setAttr ".tgi[0].ni[293].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[293].y" 8554.2861328125;
	setAttr ".tgi[0].ni[293].nvs" 18304;
	setAttr ".tgi[0].ni[294].x" -952.85711669921875;
	setAttr ".tgi[0].ni[294].y" 16395.71484375;
	setAttr ".tgi[0].ni[294].nvs" 18304;
	setAttr ".tgi[0].ni[295].x" -582.85711669921875;
	setAttr ".tgi[0].ni[295].y" 18515.71484375;
	setAttr ".tgi[0].ni[295].nvs" 18304;
	setAttr ".tgi[0].ni[296].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[296].y" -8105.71435546875;
	setAttr ".tgi[0].ni[296].nvs" 18304;
	setAttr ".tgi[0].ni[297].x" 672.85711669921875;
	setAttr ".tgi[0].ni[297].y" 9734.2861328125;
	setAttr ".tgi[0].ni[297].nvs" 18304;
	setAttr ".tgi[0].ni[298].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[298].y" -3208.571533203125;
	setAttr ".tgi[0].ni[298].nvs" 1920;
	setAttr ".tgi[0].ni[299].x" -4254.28564453125;
	setAttr ".tgi[0].ni[299].y" 20174.28515625;
	setAttr ".tgi[0].ni[299].nvs" 18304;
	setAttr ".tgi[0].ni[300].x" -3025.71435546875;
	setAttr ".tgi[0].ni[300].y" 18748.572265625;
	setAttr ".tgi[0].ni[300].nvs" 18304;
	setAttr ".tgi[0].ni[301].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[301].y" 820;
	setAttr ".tgi[0].ni[301].nvs" 18304;
	setAttr ".tgi[0].ni[302].x" 2768.571533203125;
	setAttr ".tgi[0].ni[302].y" -12010;
	setAttr ".tgi[0].ni[302].nvs" 18304;
	setAttr ".tgi[0].ni[303].x" -2338.571533203125;
	setAttr ".tgi[0].ni[303].y" 17562.857421875;
	setAttr ".tgi[0].ni[303].nvs" 18304;
	setAttr ".tgi[0].ni[304].x" 3178.571533203125;
	setAttr ".tgi[0].ni[304].y" -18375.71484375;
	setAttr ".tgi[0].ni[304].nvs" 18304;
	setAttr ".tgi[0].ni[305].x" 672.85711669921875;
	setAttr ".tgi[0].ni[305].y" -995.71429443359375;
	setAttr ".tgi[0].ni[305].nvs" 18304;
	setAttr ".tgi[0].ni[306].x" 672.85711669921875;
	setAttr ".tgi[0].ni[306].y" 5510;
	setAttr ".tgi[0].ni[306].nvs" 18304;
	setAttr ".tgi[0].ni[307].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[307].y" 15495.7138671875;
	setAttr ".tgi[0].ni[307].nvs" 18304;
	setAttr ".tgi[0].ni[308].x" 2768.571533203125;
	setAttr ".tgi[0].ni[308].y" -3142.857177734375;
	setAttr ".tgi[0].ni[308].nvs" 18304;
	setAttr ".tgi[0].ni[309].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[309].y" -7422.85693359375;
	setAttr ".tgi[0].ni[309].nvs" 18304;
	setAttr ".tgi[0].ni[310].x" 2768.571533203125;
	setAttr ".tgi[0].ni[310].y" 6477.14306640625;
	setAttr ".tgi[0].ni[310].nvs" 18304;
	setAttr ".tgi[0].ni[311].x" -3947.142822265625;
	setAttr ".tgi[0].ni[311].y" 20187.142578125;
	setAttr ".tgi[0].ni[311].nvs" 18304;
	setAttr ".tgi[0].ni[312].x" 3545.71435546875;
	setAttr ".tgi[0].ni[312].y" -17080;
	setAttr ".tgi[0].ni[312].nvs" 18304;
	setAttr ".tgi[0].ni[313].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[313].y" 10011.4287109375;
	setAttr ".tgi[0].ni[313].nvs" 18304;
	setAttr ".tgi[0].ni[314].x" -132.85714721679688;
	setAttr ".tgi[0].ni[314].y" 11111.4287109375;
	setAttr ".tgi[0].ni[314].nvs" 18304;
	setAttr ".tgi[0].ni[315].x" 3545.71435546875;
	setAttr ".tgi[0].ni[315].y" -7090;
	setAttr ".tgi[0].ni[315].nvs" 18304;
	setAttr ".tgi[0].ni[316].x" 3545.71435546875;
	setAttr ".tgi[0].ni[316].y" -5364.28564453125;
	setAttr ".tgi[0].ni[316].nvs" 18304;
	setAttr ".tgi[0].ni[317].x" -4254.28564453125;
	setAttr ".tgi[0].ni[317].y" 20072.857421875;
	setAttr ".tgi[0].ni[317].nvs" 18304;
	setAttr ".tgi[0].ni[318].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[318].y" -6318.5712890625;
	setAttr ".tgi[0].ni[318].nvs" 18304;
	setAttr ".tgi[0].ni[319].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[319].y" 3320;
	setAttr ".tgi[0].ni[319].nvs" 18304;
	setAttr ".tgi[0].ni[320].x" 3545.71435546875;
	setAttr ".tgi[0].ni[320].y" -16572.857421875;
	setAttr ".tgi[0].ni[320].nvs" 18304;
	setAttr ".tgi[0].ni[321].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[321].y" 3515.71435546875;
	setAttr ".tgi[0].ni[321].nvs" 18304;
	setAttr ".tgi[0].ni[322].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[322].y" -9581.4287109375;
	setAttr ".tgi[0].ni[322].nvs" 18304;
	setAttr ".tgi[0].ni[323].x" 277.14285278320313;
	setAttr ".tgi[0].ni[323].y" -832.85711669921875;
	setAttr ".tgi[0].ni[323].nvs" 18304;
	setAttr ".tgi[0].ni[324].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[324].y" 2128.571533203125;
	setAttr ".tgi[0].ni[324].nvs" 18304;
	setAttr ".tgi[0].ni[325].x" 672.85711669921875;
	setAttr ".tgi[0].ni[325].y" -2590;
	setAttr ".tgi[0].ni[325].nvs" 18304;
	setAttr ".tgi[0].ni[326].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[326].y" -3945.71435546875;
	setAttr ".tgi[0].ni[326].nvs" 18304;
	setAttr ".tgi[0].ni[327].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[327].y" 8502.857421875;
	setAttr ".tgi[0].ni[327].nvs" 18304;
	setAttr ".tgi[0].ni[328].x" 2358.571533203125;
	setAttr ".tgi[0].ni[328].y" 37.142856597900391;
	setAttr ".tgi[0].ni[328].nvs" 1920;
	setAttr ".tgi[0].ni[329].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[329].y" 10972.857421875;
	setAttr ".tgi[0].ni[329].nvs" 18304;
	setAttr ".tgi[0].ni[330].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[330].y" -5208.5712890625;
	setAttr ".tgi[0].ni[330].nvs" 18304;
	setAttr ".tgi[0].ni[331].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[331].y" -6160;
	setAttr ".tgi[0].ni[331].nvs" 18304;
	setAttr ".tgi[0].ni[332].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[332].y" -10917.142578125;
	setAttr ".tgi[0].ni[332].nvs" 18304;
	setAttr ".tgi[0].ni[333].x" 2358.571533203125;
	setAttr ".tgi[0].ni[333].y" -9690;
	setAttr ".tgi[0].ni[333].nvs" 1920;
	setAttr ".tgi[0].ni[334].x" -3640;
	setAttr ".tgi[0].ni[334].y" 20167.142578125;
	setAttr ".tgi[0].ni[334].nvs" 18304;
	setAttr ".tgi[0].ni[335].x" 3545.71435546875;
	setAttr ".tgi[0].ni[335].y" -12161.4287109375;
	setAttr ".tgi[0].ni[335].nvs" 18304;
	setAttr ".tgi[0].ni[336].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[336].y" 5671.4287109375;
	setAttr ".tgi[0].ni[336].nvs" 18304;
	setAttr ".tgi[0].ni[337].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[337].y" 15020;
	setAttr ".tgi[0].ni[337].nvs" 18304;
	setAttr ".tgi[0].ni[338].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[338].y" 4547.14306640625;
	setAttr ".tgi[0].ni[338].nvs" 18304;
	setAttr ".tgi[0].ni[339].x" 2358.571533203125;
	setAttr ".tgi[0].ni[339].y" -6710;
	setAttr ".tgi[0].ni[339].nvs" 1920;
	setAttr ".tgi[0].ni[340].x" -2338.571533203125;
	setAttr ".tgi[0].ni[340].y" 17290;
	setAttr ".tgi[0].ni[340].nvs" 18304;
	setAttr ".tgi[0].ni[341].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[341].y" -5054.28564453125;
	setAttr ".tgi[0].ni[341].nvs" 18304;
	setAttr ".tgi[0].ni[342].x" 672.85711669921875;
	setAttr ".tgi[0].ni[342].y" 4037.142822265625;
	setAttr ".tgi[0].ni[342].nvs" 18304;
	setAttr ".tgi[0].ni[343].x" 2768.571533203125;
	setAttr ".tgi[0].ni[343].y" 13562.857421875;
	setAttr ".tgi[0].ni[343].nvs" 18304;
	setAttr ".tgi[0].ni[344].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[344].y" -1170;
	setAttr ".tgi[0].ni[344].nvs" 18304;
	setAttr ".tgi[0].ni[345].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[345].y" -2021.4285888671875;
	setAttr ".tgi[0].ni[345].nvs" 18304;
	setAttr ".tgi[0].ni[346].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[346].y" 8757.142578125;
	setAttr ".tgi[0].ni[346].nvs" 18304;
	setAttr ".tgi[0].ni[347].x" 672.85711669921875;
	setAttr ".tgi[0].ni[347].y" 10178.5712890625;
	setAttr ".tgi[0].ni[347].nvs" 18304;
	setAttr ".tgi[0].ni[348].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[348].y" 1561.4285888671875;
	setAttr ".tgi[0].ni[348].nvs" 18304;
	setAttr ".tgi[0].ni[349].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[349].y" 4670;
	setAttr ".tgi[0].ni[349].nvs" 18304;
	setAttr ".tgi[0].ni[350].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[350].y" 4705.71435546875;
	setAttr ".tgi[0].ni[350].nvs" 18304;
	setAttr ".tgi[0].ni[351].x" -582.85711669921875;
	setAttr ".tgi[0].ni[351].y" 10452.857421875;
	setAttr ".tgi[0].ni[351].nvs" 18304;
	setAttr ".tgi[0].ni[352].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[352].y" -9412.857421875;
	setAttr ".tgi[0].ni[352].nvs" 1920;
	setAttr ".tgi[0].ni[353].x" 2768.571533203125;
	setAttr ".tgi[0].ni[353].y" -3358.571533203125;
	setAttr ".tgi[0].ni[353].nvs" 18304;
	setAttr ".tgi[0].ni[354].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[354].y" 15597.142578125;
	setAttr ".tgi[0].ni[354].nvs" 18304;
	setAttr ".tgi[0].ni[355].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[355].y" -6477.14306640625;
	setAttr ".tgi[0].ni[355].nvs" 18304;
	setAttr ".tgi[0].ni[356].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[356].y" -6758.5712890625;
	setAttr ".tgi[0].ni[356].nvs" 18304;
	setAttr ".tgi[0].ni[357].x" -2338.571533203125;
	setAttr ".tgi[0].ni[357].y" 18571.427734375;
	setAttr ".tgi[0].ni[357].nvs" 18304;
	setAttr ".tgi[0].ni[358].x" -582.85711669921875;
	setAttr ".tgi[0].ni[358].y" 8215.7138671875;
	setAttr ".tgi[0].ni[358].nvs" 18304;
	setAttr ".tgi[0].ni[359].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[359].y" 11731.4287109375;
	setAttr ".tgi[0].ni[359].nvs" 18304;
	setAttr ".tgi[0].ni[360].x" 3545.71435546875;
	setAttr ".tgi[0].ni[360].y" -10714.2861328125;
	setAttr ".tgi[0].ni[360].nvs" 18304;
	setAttr ".tgi[0].ni[361].x" -582.85711669921875;
	setAttr ".tgi[0].ni[361].y" 7487.14306640625;
	setAttr ".tgi[0].ni[361].nvs" 18304;
	setAttr ".tgi[0].ni[362].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[362].y" 1072.857177734375;
	setAttr ".tgi[0].ni[362].nvs" 18304;
	setAttr ".tgi[0].ni[363].x" -2011.4285888671875;
	setAttr ".tgi[0].ni[363].y" 16530;
	setAttr ".tgi[0].ni[363].nvs" 18304;
	setAttr ".tgi[0].ni[364].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[364].y" 3442.857177734375;
	setAttr ".tgi[0].ni[364].nvs" 18304;
	setAttr ".tgi[0].ni[365].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[365].y" 5000;
	setAttr ".tgi[0].ni[365].nvs" 18304;
	setAttr ".tgi[0].ni[366].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[366].y" 4058.571533203125;
	setAttr ".tgi[0].ni[366].nvs" 18304;
	setAttr ".tgi[0].ni[367].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[367].y" -8321.4287109375;
	setAttr ".tgi[0].ni[367].nvs" 18304;
	setAttr ".tgi[0].ni[368].x" 2768.571533203125;
	setAttr ".tgi[0].ni[368].y" 2710;
	setAttr ".tgi[0].ni[368].nvs" 18304;
	setAttr ".tgi[0].ni[369].x" 3545.71435546875;
	setAttr ".tgi[0].ni[369].y" -6544.28564453125;
	setAttr ".tgi[0].ni[369].nvs" 18304;
	setAttr ".tgi[0].ni[370].x" 3545.71435546875;
	setAttr ".tgi[0].ni[370].y" 4961.4287109375;
	setAttr ".tgi[0].ni[370].nvs" 18304;
	setAttr ".tgi[0].ni[371].x" -952.85711669921875;
	setAttr ".tgi[0].ni[371].y" 16827.142578125;
	setAttr ".tgi[0].ni[371].nvs" 18304;
	setAttr ".tgi[0].ni[372].x" -952.85711669921875;
	setAttr ".tgi[0].ni[372].y" 11721.4287109375;
	setAttr ".tgi[0].ni[372].nvs" 1920;
	setAttr ".tgi[0].ni[373].x" -952.85711669921875;
	setAttr ".tgi[0].ni[373].y" 11304.2861328125;
	setAttr ".tgi[0].ni[373].nvs" 1920;
	setAttr ".tgi[0].ni[374].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[374].y" 4217.14306640625;
	setAttr ".tgi[0].ni[374].nvs" 18304;
	setAttr ".tgi[0].ni[375].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[375].y" 4381.4287109375;
	setAttr ".tgi[0].ni[375].nvs" 18304;
	setAttr ".tgi[0].ni[376].x" 3178.571533203125;
	setAttr ".tgi[0].ni[376].y" -11510;
	setAttr ".tgi[0].ni[376].nvs" 18304;
	setAttr ".tgi[0].ni[377].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[377].y" 1662.857177734375;
	setAttr ".tgi[0].ni[377].nvs" 18304;
	setAttr ".tgi[0].ni[378].x" 672.85711669921875;
	setAttr ".tgi[0].ni[378].y" 7051.4287109375;
	setAttr ".tgi[0].ni[378].nvs" 18304;
	setAttr ".tgi[0].ni[379].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[379].y" 2707.142822265625;
	setAttr ".tgi[0].ni[379].nvs" 18304;
	setAttr ".tgi[0].ni[380].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[380].y" 16662.857421875;
	setAttr ".tgi[0].ni[380].nvs" 18304;
	setAttr ".tgi[0].ni[381].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[381].y" 12464.2861328125;
	setAttr ".tgi[0].ni[381].nvs" 18304;
	setAttr ".tgi[0].ni[382].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[382].y" -2927.142822265625;
	setAttr ".tgi[0].ni[382].nvs" 18304;
	setAttr ".tgi[0].ni[383].x" -132.85714721679688;
	setAttr ".tgi[0].ni[383].y" 5310;
	setAttr ".tgi[0].ni[383].nvs" 18304;
	setAttr ".tgi[0].ni[384].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[384].y" 10455.7138671875;
	setAttr ".tgi[0].ni[384].nvs" 18304;
	setAttr ".tgi[0].ni[385].x" -2338.571533203125;
	setAttr ".tgi[0].ni[385].y" 16458.572265625;
	setAttr ".tgi[0].ni[385].nvs" 18304;
	setAttr ".tgi[0].ni[386].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[386].y" 9797.142578125;
	setAttr ".tgi[0].ni[386].nvs" 18304;
	setAttr ".tgi[0].ni[387].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[387].y" 6214.28564453125;
	setAttr ".tgi[0].ni[387].nvs" 18304;
	setAttr ".tgi[0].ni[388].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[388].y" 3821.428466796875;
	setAttr ".tgi[0].ni[388].nvs" 18304;
	setAttr ".tgi[0].ni[389].x" 3545.71435546875;
	setAttr ".tgi[0].ni[389].y" -5681.4287109375;
	setAttr ".tgi[0].ni[389].nvs" 18304;
	setAttr ".tgi[0].ni[390].x" 3545.71435546875;
	setAttr ".tgi[0].ni[390].y" -19920;
	setAttr ".tgi[0].ni[390].nvs" 18304;
	setAttr ".tgi[0].ni[391].x" 2768.571533203125;
	setAttr ".tgi[0].ni[391].y" -6607.14306640625;
	setAttr ".tgi[0].ni[391].nvs" 18304;
	setAttr ".tgi[0].ni[392].x" -132.85714721679688;
	setAttr ".tgi[0].ni[392].y" 8607.142578125;
	setAttr ".tgi[0].ni[392].nvs" 18304;
	setAttr ".tgi[0].ni[393].x" 3545.71435546875;
	setAttr ".tgi[0].ni[393].y" -20122.857421875;
	setAttr ".tgi[0].ni[393].nvs" 18304;
	setAttr ".tgi[0].ni[394].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[394].y" -5407.14306640625;
	setAttr ".tgi[0].ni[394].nvs" 18304;
	setAttr ".tgi[0].ni[395].x" -952.85711669921875;
	setAttr ".tgi[0].ni[395].y" 14595.7138671875;
	setAttr ".tgi[0].ni[395].nvs" 18304;
	setAttr ".tgi[0].ni[396].x" 672.85711669921875;
	setAttr ".tgi[0].ni[396].y" 12710;
	setAttr ".tgi[0].ni[396].nvs" 18304;
	setAttr ".tgi[0].ni[397].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[397].y" 1858.5714111328125;
	setAttr ".tgi[0].ni[397].nvs" 18304;
	setAttr ".tgi[0].ni[398].x" 3545.71435546875;
	setAttr ".tgi[0].ni[398].y" -13005.7138671875;
	setAttr ".tgi[0].ni[398].nvs" 18304;
	setAttr ".tgi[0].ni[399].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[399].y" -3787.142822265625;
	setAttr ".tgi[0].ni[399].nvs" 18304;
	setAttr ".tgi[0].ni[400].x" 3545.71435546875;
	setAttr ".tgi[0].ni[400].y" -16370;
	setAttr ".tgi[0].ni[400].nvs" 18304;
	setAttr ".tgi[0].ni[401].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[401].y" -174.28572082519531;
	setAttr ".tgi[0].ni[401].nvs" 18304;
	setAttr ".tgi[0].ni[402].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[402].y" 6545.71435546875;
	setAttr ".tgi[0].ni[402].nvs" 18304;
	setAttr ".tgi[0].ni[403].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[403].y" 7434.28564453125;
	setAttr ".tgi[0].ni[403].nvs" 18304;
	setAttr ".tgi[0].ni[404].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[404].y" 7650;
	setAttr ".tgi[0].ni[404].nvs" 18304;
	setAttr ".tgi[0].ni[405].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[405].y" 16301.4287109375;
	setAttr ".tgi[0].ni[405].nvs" 18304;
	setAttr ".tgi[0].ni[406].x" -582.85711669921875;
	setAttr ".tgi[0].ni[406].y" 7100;
	setAttr ".tgi[0].ni[406].nvs" 18304;
	setAttr ".tgi[0].ni[407].x" 2358.571533203125;
	setAttr ".tgi[0].ni[407].y" 2170;
	setAttr ".tgi[0].ni[407].nvs" 18304;
	setAttr ".tgi[0].ni[408].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[408].y" 10584.2861328125;
	setAttr ".tgi[0].ni[408].nvs" 18304;
	setAttr ".tgi[0].ni[409].x" -132.85714721679688;
	setAttr ".tgi[0].ni[409].y" 12661.4287109375;
	setAttr ".tgi[0].ni[409].nvs" 18304;
	setAttr ".tgi[0].ni[410].x" -2718.571533203125;
	setAttr ".tgi[0].ni[410].y" 17484.28515625;
	setAttr ".tgi[0].ni[410].nvs" 18304;
	setAttr ".tgi[0].ni[411].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[411].y" -8752.857421875;
	setAttr ".tgi[0].ni[411].nvs" 18304;
	setAttr ".tgi[0].ni[412].x" -1301.4285888671875;
	setAttr ".tgi[0].ni[412].y" 14544.2861328125;
	setAttr ".tgi[0].ni[412].nvs" 18304;
	setAttr ".tgi[0].ni[413].x" 3545.71435546875;
	setAttr ".tgi[0].ni[413].y" 3300;
	setAttr ".tgi[0].ni[413].nvs" 18304;
	setAttr ".tgi[0].ni[414].x" -3332.857177734375;
	setAttr ".tgi[0].ni[414].y" 20135.71484375;
	setAttr ".tgi[0].ni[414].nvs" 18304;
	setAttr ".tgi[0].ni[415].x" 672.85711669921875;
	setAttr ".tgi[0].ni[415].y" 10610;
	setAttr ".tgi[0].ni[415].nvs" 18304;
	setAttr ".tgi[0].ni[416].x" 2358.571533203125;
	setAttr ".tgi[0].ni[416].y" -13874.2861328125;
	setAttr ".tgi[0].ni[416].nvs" 18304;
	setAttr ".tgi[0].ni[417].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[417].y" 6067.14306640625;
	setAttr ".tgi[0].ni[417].nvs" 18304;
	setAttr ".tgi[0].ni[418].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[418].y" 3414.28564453125;
	setAttr ".tgi[0].ni[418].nvs" 18304;
	setAttr ".tgi[0].ni[419].x" 2768.571533203125;
	setAttr ".tgi[0].ni[419].y" 13765.7138671875;
	setAttr ".tgi[0].ni[419].nvs" 18304;
	setAttr ".tgi[0].ni[420].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[420].y" -12388.5712890625;
	setAttr ".tgi[0].ni[420].nvs" 18304;
	setAttr ".tgi[0].ni[421].x" 672.85711669921875;
	setAttr ".tgi[0].ni[421].y" 3662.857177734375;
	setAttr ".tgi[0].ni[421].nvs" 18304;
	setAttr ".tgi[0].ni[422].x" -132.85714721679688;
	setAttr ".tgi[0].ni[422].y" 7944.28564453125;
	setAttr ".tgi[0].ni[422].nvs" 18304;
	setAttr ".tgi[0].ni[423].x" 672.85711669921875;
	setAttr ".tgi[0].ni[423].y" 2875.71435546875;
	setAttr ".tgi[0].ni[423].nvs" 18304;
	setAttr ".tgi[0].ni[424].x" 3545.71435546875;
	setAttr ".tgi[0].ni[424].y" -6271.4287109375;
	setAttr ".tgi[0].ni[424].nvs" 18304;
	setAttr ".tgi[0].ni[425].x" 2358.571533203125;
	setAttr ".tgi[0].ni[425].y" -10992.857421875;
	setAttr ".tgi[0].ni[425].nvs" 1920;
	setAttr ".tgi[0].ni[426].x" 1948.5714111328125;
	setAttr ".tgi[0].ni[426].y" 5127.14306640625;
	setAttr ".tgi[0].ni[426].nvs" 18304;
	setAttr ".tgi[0].ni[427].x" 3545.71435546875;
	setAttr ".tgi[0].ni[427].y" -16471.427734375;
	setAttr ".tgi[0].ni[427].nvs" 18304;
	setAttr ".tgi[0].ni[428].x" 1538.5714111328125;
	setAttr ".tgi[0].ni[428].y" 3227.142822265625;
	setAttr ".tgi[0].ni[428].nvs" 18304;
	setAttr ".tgi[0].ni[429].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[429].y" 7952.85693359375;
	setAttr ".tgi[0].ni[429].nvs" 18304;
	setAttr ".tgi[0].ni[430].x" 3545.71435546875;
	setAttr ".tgi[0].ni[430].y" 1394.2857666015625;
	setAttr ".tgi[0].ni[430].nvs" 18304;
	setAttr ".tgi[0].ni[431].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[431].y" 142.85714721679688;
	setAttr ".tgi[0].ni[431].nvs" 18304;
	setAttr ".tgi[0].ni[432].x" -2338.571533203125;
	setAttr ".tgi[0].ni[432].y" 18152.857421875;
	setAttr ".tgi[0].ni[432].nvs" 18304;
	setAttr ".tgi[0].ni[433].x" 3545.71435546875;
	setAttr ".tgi[0].ni[433].y" -9254.2861328125;
	setAttr ".tgi[0].ni[433].nvs" 18304;
	setAttr ".tgi[0].ni[434].x" 1171.4285888671875;
	setAttr ".tgi[0].ni[434].y" -1068.5714111328125;
	setAttr ".tgi[0].ni[434].nvs" 18304;
	setAttr ".tgi[0].ni[435].x" 2358.571533203125;
	setAttr ".tgi[0].ni[435].y" -6608.5712890625;
	setAttr ".tgi[0].ni[435].nvs" 1920;
select -ne :time1;
	setAttr ".o" 45;
	setAttr ".unw" 45;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 7 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 9 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "Cylinder_Poly.rigRoot" "TEMP_RigRoot.IKSShape";
connectAttr "Cube_Poly.rigRoot" "TEMP_RigRoot.JointShape";
connectAttr "Sphere_Poly.rigRoot" "TEMP_RigRoot.IKPVShape";
connectAttr "Circle_Wire.rigRoot" "TEMP_RigRoot.LookAtShape";
connectAttr "Cube_Poly.rigRoot" "TEMP_RigRoot.FKRShape";
connectAttr "Cube_Poly.rigRoot" "TEMP_RigRoot.FKShape";
connectAttr "Square_Wire.rigRoot" "TEMP_RigRoot.EmptyShape";
connectAttr "TEMP_RigRoot.jointsParentGroup" "JOINTS.rigRoot";
connectAttr "Joint_Disp.di" "Clav_Clav01_M_JNT.do";
connectAttr "Clav_Limb_M_NODE.joints" "Clav_Clav01_M_JNT.limb";
connectAttr "Clav_Clav01_M_JNT_parentConstraint1.ctx" "Clav_Clav01_M_JNT.tx";
connectAttr "Clav_Clav01_M_JNT_parentConstraint1.cty" "Clav_Clav01_M_JNT.ty";
connectAttr "Clav_Clav01_M_JNT_parentConstraint1.ctz" "Clav_Clav01_M_JNT.tz";
connectAttr "Clav_Clav01_M_JNT_parentConstraint1.crx" "Clav_Clav01_M_JNT.rx";
connectAttr "Clav_Clav01_M_JNT_parentConstraint1.cry" "Clav_Clav01_M_JNT.ry";
connectAttr "Clav_Clav01_M_JNT_parentConstraint1.crz" "Clav_Clav01_M_JNT.rz";
connectAttr "Clav_Clav01_M_JNT.s" "Arm_Shoulder_M_JNT.is";
connectAttr "Joint_Disp.di" "Arm_Shoulder_M_JNT.do";
connectAttr "Arm_Limb_M_NODE.joints" "Arm_Shoulder_M_JNT.limb";
connectAttr "Arm_Shoulder_M_JNT_parentConstraint1.ctx" "Arm_Shoulder_M_JNT.tx";
connectAttr "Arm_Shoulder_M_JNT_parentConstraint1.cty" "Arm_Shoulder_M_JNT.ty";
connectAttr "Arm_Shoulder_M_JNT_parentConstraint1.ctz" "Arm_Shoulder_M_JNT.tz";
connectAttr "Arm_Shoulder_M_JNT_parentConstraint1.crx" "Arm_Shoulder_M_JNT.rx";
connectAttr "Arm_Shoulder_M_JNT_parentConstraint1.cry" "Arm_Shoulder_M_JNT.ry";
connectAttr "Arm_Shoulder_M_JNT_parentConstraint1.crz" "Arm_Shoulder_M_JNT.rz";
connectAttr "Arm_Shoulder_M_JNT.s" "BicepTwist_BicepTwist_M_JNT.is";
connectAttr "Joint_Disp.di" "BicepTwist_BicepTwist_M_JNT.do";
connectAttr "BicepTwist_Limb_M_NODE.joints" "BicepTwist_BicepTwist_M_JNT.limb";
connectAttr "BicepTwist_BicepTwist_M_JNT_parentConstraint1.ctx" "BicepTwist_BicepTwist_M_JNT.tx"
		;
connectAttr "BicepTwist_BicepTwist_M_JNT_parentConstraint1.cty" "BicepTwist_BicepTwist_M_JNT.ty"
		;
connectAttr "BicepTwist_BicepTwist_M_JNT_parentConstraint1.ctz" "BicepTwist_BicepTwist_M_JNT.tz"
		;
connectAttr "BicepTwist_BicepTwist_M_JNT_parentConstraint1.crx" "BicepTwist_BicepTwist_M_JNT.rx"
		;
connectAttr "BicepTwist_BicepTwist_M_JNT_parentConstraint1.cry" "BicepTwist_BicepTwist_M_JNT.ry"
		;
connectAttr "BicepTwist_BicepTwist_M_JNT_parentConstraint1.crz" "BicepTwist_BicepTwist_M_JNT.rz"
		;
connectAttr "BicepTwist_BicepTwist_M_JNT.ro" "BicepTwist_BicepTwist_M_JNT_parentConstraint1.cro"
		;
connectAttr "BicepTwist_BicepTwist_M_JNT.pim" "BicepTwist_BicepTwist_M_JNT_parentConstraint1.cpim"
		;
connectAttr "BicepTwist_BicepTwist_M_JNT.rp" "BicepTwist_BicepTwist_M_JNT_parentConstraint1.crp"
		;
connectAttr "BicepTwist_BicepTwist_M_JNT.rpt" "BicepTwist_BicepTwist_M_JNT_parentConstraint1.crt"
		;
connectAttr "BicepTwist_BicepTwist_M_JNT.jo" "BicepTwist_BicepTwist_M_JNT_parentConstraint1.cjo"
		;
connectAttr "BicepTwist_Joint_M_CTR0.t" "BicepTwist_BicepTwist_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "BicepTwist_Joint_M_CTR0.rp" "BicepTwist_BicepTwist_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "BicepTwist_Joint_M_CTR0.rpt" "BicepTwist_BicepTwist_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "BicepTwist_Joint_M_CTR0.r" "BicepTwist_BicepTwist_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "BicepTwist_Joint_M_CTR0.ro" "BicepTwist_BicepTwist_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "BicepTwist_Joint_M_CTR0.s" "BicepTwist_BicepTwist_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "BicepTwist_Joint_M_CTR0.pm" "BicepTwist_BicepTwist_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "BicepTwist_BicepTwist_M_JNT_parentConstraint1.w0" "BicepTwist_BicepTwist_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_Shoulder_M_JNT.s" "Arm_Elbow_M_JNT.is";
connectAttr "Joint_Disp.di" "Arm_Elbow_M_JNT.do";
connectAttr "Arm_Limb_M_NODE.joints" "Arm_Elbow_M_JNT.limb";
connectAttr "Arm_Elbow_M_JNT_parentConstraint1.ctx" "Arm_Elbow_M_JNT.tx";
connectAttr "Arm_Elbow_M_JNT_parentConstraint1.cty" "Arm_Elbow_M_JNT.ty";
connectAttr "Arm_Elbow_M_JNT_parentConstraint1.ctz" "Arm_Elbow_M_JNT.tz";
connectAttr "Arm_Elbow_M_JNT_parentConstraint1.crx" "Arm_Elbow_M_JNT.rx";
connectAttr "Arm_Elbow_M_JNT_parentConstraint1.cry" "Arm_Elbow_M_JNT.ry";
connectAttr "Arm_Elbow_M_JNT_parentConstraint1.crz" "Arm_Elbow_M_JNT.rz";
connectAttr "Arm_Elbow_M_JNT.s" "ForearmTwist_ForearmTwist1_M_JNT.is";
connectAttr "Joint_Disp.di" "ForearmTwist_ForearmTwist1_M_JNT.do";
connectAttr "ForearmTwist_Limb_M_NODE.joints" "ForearmTwist_ForearmTwist1_M_JNT.limb"
		;
connectAttr "ForearmTwist_ForearmTwist1_M_JNT_parentConstraint1.ctx" "ForearmTwist_ForearmTwist1_M_JNT.tx"
		;
connectAttr "ForearmTwist_ForearmTwist1_M_JNT_parentConstraint1.cty" "ForearmTwist_ForearmTwist1_M_JNT.ty"
		;
connectAttr "ForearmTwist_ForearmTwist1_M_JNT_parentConstraint1.ctz" "ForearmTwist_ForearmTwist1_M_JNT.tz"
		;
connectAttr "ForearmTwist_ForearmTwist1_M_JNT_parentConstraint1.crx" "ForearmTwist_ForearmTwist1_M_JNT.rx"
		;
connectAttr "ForearmTwist_ForearmTwist1_M_JNT_parentConstraint1.cry" "ForearmTwist_ForearmTwist1_M_JNT.ry"
		;
connectAttr "ForearmTwist_ForearmTwist1_M_JNT_parentConstraint1.crz" "ForearmTwist_ForearmTwist1_M_JNT.rz"
		;
connectAttr "ForearmTwist_ForearmTwist1_M_JNT.ro" "ForearmTwist_ForearmTwist1_M_JNT_parentConstraint1.cro"
		;
connectAttr "ForearmTwist_ForearmTwist1_M_JNT.pim" "ForearmTwist_ForearmTwist1_M_JNT_parentConstraint1.cpim"
		;
connectAttr "ForearmTwist_ForearmTwist1_M_JNT.rp" "ForearmTwist_ForearmTwist1_M_JNT_parentConstraint1.crp"
		;
connectAttr "ForearmTwist_ForearmTwist1_M_JNT.rpt" "ForearmTwist_ForearmTwist1_M_JNT_parentConstraint1.crt"
		;
connectAttr "ForearmTwist_ForearmTwist1_M_JNT.jo" "ForearmTwist_ForearmTwist1_M_JNT_parentConstraint1.cjo"
		;
connectAttr "ForearmTwist1_Joint_M_CTR0.t" "ForearmTwist_ForearmTwist1_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "ForearmTwist1_Joint_M_CTR0.rp" "ForearmTwist_ForearmTwist1_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "ForearmTwist1_Joint_M_CTR0.rpt" "ForearmTwist_ForearmTwist1_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "ForearmTwist1_Joint_M_CTR0.r" "ForearmTwist_ForearmTwist1_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "ForearmTwist1_Joint_M_CTR0.ro" "ForearmTwist_ForearmTwist1_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "ForearmTwist1_Joint_M_CTR0.s" "ForearmTwist_ForearmTwist1_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "ForearmTwist1_Joint_M_CTR0.pm" "ForearmTwist_ForearmTwist1_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "ForearmTwist_ForearmTwist1_M_JNT_parentConstraint1.w0" "ForearmTwist_ForearmTwist1_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_Elbow_M_JNT.s" "ForearmTwist_ForearmTwist2_M_JNT.is";
connectAttr "Joint_Disp.di" "ForearmTwist_ForearmTwist2_M_JNT.do";
connectAttr "ForearmTwist_Limb_M_NODE.joints" "ForearmTwist_ForearmTwist2_M_JNT.limb"
		;
connectAttr "ForearmTwist_ForearmTwist2_M_JNT_parentConstraint1.ctx" "ForearmTwist_ForearmTwist2_M_JNT.tx"
		;
connectAttr "ForearmTwist_ForearmTwist2_M_JNT_parentConstraint1.cty" "ForearmTwist_ForearmTwist2_M_JNT.ty"
		;
connectAttr "ForearmTwist_ForearmTwist2_M_JNT_parentConstraint1.ctz" "ForearmTwist_ForearmTwist2_M_JNT.tz"
		;
connectAttr "ForearmTwist_ForearmTwist2_M_JNT_parentConstraint1.crx" "ForearmTwist_ForearmTwist2_M_JNT.rx"
		;
connectAttr "ForearmTwist_ForearmTwist2_M_JNT_parentConstraint1.cry" "ForearmTwist_ForearmTwist2_M_JNT.ry"
		;
connectAttr "ForearmTwist_ForearmTwist2_M_JNT_parentConstraint1.crz" "ForearmTwist_ForearmTwist2_M_JNT.rz"
		;
connectAttr "ForearmTwist_ForearmTwist2_M_JNT.ro" "ForearmTwist_ForearmTwist2_M_JNT_parentConstraint1.cro"
		;
connectAttr "ForearmTwist_ForearmTwist2_M_JNT.pim" "ForearmTwist_ForearmTwist2_M_JNT_parentConstraint1.cpim"
		;
connectAttr "ForearmTwist_ForearmTwist2_M_JNT.rp" "ForearmTwist_ForearmTwist2_M_JNT_parentConstraint1.crp"
		;
connectAttr "ForearmTwist_ForearmTwist2_M_JNT.rpt" "ForearmTwist_ForearmTwist2_M_JNT_parentConstraint1.crt"
		;
connectAttr "ForearmTwist_ForearmTwist2_M_JNT.jo" "ForearmTwist_ForearmTwist2_M_JNT_parentConstraint1.cjo"
		;
connectAttr "ForearmTwist2_Joint_M_CTR1.t" "ForearmTwist_ForearmTwist2_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "ForearmTwist2_Joint_M_CTR1.rp" "ForearmTwist_ForearmTwist2_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "ForearmTwist2_Joint_M_CTR1.rpt" "ForearmTwist_ForearmTwist2_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "ForearmTwist2_Joint_M_CTR1.r" "ForearmTwist_ForearmTwist2_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "ForearmTwist2_Joint_M_CTR1.ro" "ForearmTwist_ForearmTwist2_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "ForearmTwist2_Joint_M_CTR1.s" "ForearmTwist_ForearmTwist2_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "ForearmTwist2_Joint_M_CTR1.pm" "ForearmTwist_ForearmTwist2_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "ForearmTwist_ForearmTwist2_M_JNT_parentConstraint1.w0" "ForearmTwist_ForearmTwist2_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_Elbow_M_JNT.s" "Arm_Wrist_M_JNT.is";
connectAttr "Joint_Disp.di" "Arm_Wrist_M_JNT.do";
connectAttr "Arm_Limb_M_NODE.joints" "Arm_Wrist_M_JNT.limb";
connectAttr "Arm_Wrist_M_JNT_parentConstraint1.ctx" "Arm_Wrist_M_JNT.tx";
connectAttr "Arm_Wrist_M_JNT_parentConstraint1.cty" "Arm_Wrist_M_JNT.ty";
connectAttr "Arm_Wrist_M_JNT_parentConstraint1.ctz" "Arm_Wrist_M_JNT.tz";
connectAttr "Arm_Wrist_M_JNT_parentConstraint1.crx" "Arm_Wrist_M_JNT.rx";
connectAttr "Arm_Wrist_M_JNT_parentConstraint1.cry" "Arm_Wrist_M_JNT.ry";
connectAttr "Arm_Wrist_M_JNT_parentConstraint1.crz" "Arm_Wrist_M_JNT.rz";
connectAttr "Arm_Wrist_M_JNT.s" "Middle_Middle1_M_JNT.is";
connectAttr "Joint_Disp.di" "Middle_Middle1_M_JNT.do";
connectAttr "Middle_Limb_M_NODE.joints" "Middle_Middle1_M_JNT.limb";
connectAttr "Middle_Middle1_M_JNT_parentConstraint1.ctx" "Middle_Middle1_M_JNT.tx"
		;
connectAttr "Middle_Middle1_M_JNT_parentConstraint1.cty" "Middle_Middle1_M_JNT.ty"
		;
connectAttr "Middle_Middle1_M_JNT_parentConstraint1.ctz" "Middle_Middle1_M_JNT.tz"
		;
connectAttr "Middle_Middle1_M_JNT_parentConstraint1.crx" "Middle_Middle1_M_JNT.rx"
		;
connectAttr "Middle_Middle1_M_JNT_parentConstraint1.cry" "Middle_Middle1_M_JNT.ry"
		;
connectAttr "Middle_Middle1_M_JNT_parentConstraint1.crz" "Middle_Middle1_M_JNT.rz"
		;
connectAttr "Middle_Middle1_M_JNT.s" "Middle_Middle2_M_JNT.is";
connectAttr "Joint_Disp.di" "Middle_Middle2_M_JNT.do";
connectAttr "Middle_Limb_M_NODE.joints" "Middle_Middle2_M_JNT.limb";
connectAttr "Middle_Middle2_M_JNT_parentConstraint1.ctx" "Middle_Middle2_M_JNT.tx"
		;
connectAttr "Middle_Middle2_M_JNT_parentConstraint1.cty" "Middle_Middle2_M_JNT.ty"
		;
connectAttr "Middle_Middle2_M_JNT_parentConstraint1.ctz" "Middle_Middle2_M_JNT.tz"
		;
connectAttr "Middle_Middle2_M_JNT_parentConstraint1.crx" "Middle_Middle2_M_JNT.rx"
		;
connectAttr "Middle_Middle2_M_JNT_parentConstraint1.cry" "Middle_Middle2_M_JNT.ry"
		;
connectAttr "Middle_Middle2_M_JNT_parentConstraint1.crz" "Middle_Middle2_M_JNT.rz"
		;
connectAttr "Middle_Middle2_M_JNT.s" "Middle_Middle3_M_JNT.is";
connectAttr "Joint_Disp.di" "Middle_Middle3_M_JNT.do";
connectAttr "Middle_Limb_M_NODE.joints" "Middle_Middle3_M_JNT.limb";
connectAttr "Middle_Middle3_M_JNT_parentConstraint1.ctx" "Middle_Middle3_M_JNT.tx"
		;
connectAttr "Middle_Middle3_M_JNT_parentConstraint1.cty" "Middle_Middle3_M_JNT.ty"
		;
connectAttr "Middle_Middle3_M_JNT_parentConstraint1.ctz" "Middle_Middle3_M_JNT.tz"
		;
connectAttr "Middle_Middle3_M_JNT_parentConstraint1.crx" "Middle_Middle3_M_JNT.rx"
		;
connectAttr "Middle_Middle3_M_JNT_parentConstraint1.cry" "Middle_Middle3_M_JNT.ry"
		;
connectAttr "Middle_Middle3_M_JNT_parentConstraint1.crz" "Middle_Middle3_M_JNT.rz"
		;
connectAttr "Middle_Middle3_M_JNT.s" "Middle_Middle4_M_JNT.is";
connectAttr "Joint_Disp.di" "Middle_Middle4_M_JNT.do";
connectAttr "Middle_Limb_M_NODE.joints" "Middle_Middle4_M_JNT.limb";
connectAttr "Middle_Middle4_M_JNT_parentConstraint1.ctx" "Middle_Middle4_M_JNT.tx"
		;
connectAttr "Middle_Middle4_M_JNT_parentConstraint1.cty" "Middle_Middle4_M_JNT.ty"
		;
connectAttr "Middle_Middle4_M_JNT_parentConstraint1.ctz" "Middle_Middle4_M_JNT.tz"
		;
connectAttr "Middle_Middle4_M_JNT_parentConstraint1.crx" "Middle_Middle4_M_JNT.rx"
		;
connectAttr "Middle_Middle4_M_JNT_parentConstraint1.cry" "Middle_Middle4_M_JNT.ry"
		;
connectAttr "Middle_Middle4_M_JNT_parentConstraint1.crz" "Middle_Middle4_M_JNT.rz"
		;
connectAttr "Middle_Middle4_M_JNT.ro" "Middle_Middle4_M_JNT_parentConstraint1.cro"
		;
connectAttr "Middle_Middle4_M_JNT.pim" "Middle_Middle4_M_JNT_parentConstraint1.cpim"
		;
connectAttr "Middle_Middle4_M_JNT.rp" "Middle_Middle4_M_JNT_parentConstraint1.crp"
		;
connectAttr "Middle_Middle4_M_JNT.rpt" "Middle_Middle4_M_JNT_parentConstraint1.crt"
		;
connectAttr "Middle_Middle4_M_JNT.jo" "Middle_Middle4_M_JNT_parentConstraint1.cjo"
		;
connectAttr "Middle4_Joint_M_CTR3.t" "Middle_Middle4_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Middle4_Joint_M_CTR3.rp" "Middle_Middle4_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Middle4_Joint_M_CTR3.rpt" "Middle_Middle4_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Middle4_Joint_M_CTR3.r" "Middle_Middle4_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Middle4_Joint_M_CTR3.ro" "Middle_Middle4_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Middle4_Joint_M_CTR3.s" "Middle_Middle4_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Middle4_Joint_M_CTR3.pm" "Middle_Middle4_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Middle_Middle4_M_JNT_parentConstraint1.w0" "Middle_Middle4_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Middle_Middle3_M_JNT.ro" "Middle_Middle3_M_JNT_parentConstraint1.cro"
		;
connectAttr "Middle_Middle3_M_JNT.pim" "Middle_Middle3_M_JNT_parentConstraint1.cpim"
		;
connectAttr "Middle_Middle3_M_JNT.rp" "Middle_Middle3_M_JNT_parentConstraint1.crp"
		;
connectAttr "Middle_Middle3_M_JNT.rpt" "Middle_Middle3_M_JNT_parentConstraint1.crt"
		;
connectAttr "Middle_Middle3_M_JNT.jo" "Middle_Middle3_M_JNT_parentConstraint1.cjo"
		;
connectAttr "Middle3_Joint_M_CTR2.t" "Middle_Middle3_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Middle3_Joint_M_CTR2.rp" "Middle_Middle3_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Middle3_Joint_M_CTR2.rpt" "Middle_Middle3_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Middle3_Joint_M_CTR2.r" "Middle_Middle3_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Middle3_Joint_M_CTR2.ro" "Middle_Middle3_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Middle3_Joint_M_CTR2.s" "Middle_Middle3_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Middle3_Joint_M_CTR2.pm" "Middle_Middle3_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Middle_Middle3_M_JNT_parentConstraint1.w0" "Middle_Middle3_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Middle_Middle2_M_JNT.ro" "Middle_Middle2_M_JNT_parentConstraint1.cro"
		;
connectAttr "Middle_Middle2_M_JNT.pim" "Middle_Middle2_M_JNT_parentConstraint1.cpim"
		;
connectAttr "Middle_Middle2_M_JNT.rp" "Middle_Middle2_M_JNT_parentConstraint1.crp"
		;
connectAttr "Middle_Middle2_M_JNT.rpt" "Middle_Middle2_M_JNT_parentConstraint1.crt"
		;
connectAttr "Middle_Middle2_M_JNT.jo" "Middle_Middle2_M_JNT_parentConstraint1.cjo"
		;
connectAttr "Middle2_Joint_M_CTR1.t" "Middle_Middle2_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Middle2_Joint_M_CTR1.rp" "Middle_Middle2_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Middle2_Joint_M_CTR1.rpt" "Middle_Middle2_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Middle2_Joint_M_CTR1.r" "Middle_Middle2_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Middle2_Joint_M_CTR1.ro" "Middle_Middle2_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Middle2_Joint_M_CTR1.s" "Middle_Middle2_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Middle2_Joint_M_CTR1.pm" "Middle_Middle2_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Middle_Middle2_M_JNT_parentConstraint1.w0" "Middle_Middle2_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Middle_Middle1_M_JNT.ro" "Middle_Middle1_M_JNT_parentConstraint1.cro"
		;
connectAttr "Middle_Middle1_M_JNT.pim" "Middle_Middle1_M_JNT_parentConstraint1.cpim"
		;
connectAttr "Middle_Middle1_M_JNT.rp" "Middle_Middle1_M_JNT_parentConstraint1.crp"
		;
connectAttr "Middle_Middle1_M_JNT.rpt" "Middle_Middle1_M_JNT_parentConstraint1.crt"
		;
connectAttr "Middle_Middle1_M_JNT.jo" "Middle_Middle1_M_JNT_parentConstraint1.cjo"
		;
connectAttr "Middle1_Joint_M_CTR0.t" "Middle_Middle1_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Middle1_Joint_M_CTR0.rp" "Middle_Middle1_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Middle1_Joint_M_CTR0.rpt" "Middle_Middle1_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Middle1_Joint_M_CTR0.r" "Middle_Middle1_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Middle1_Joint_M_CTR0.ro" "Middle_Middle1_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Middle1_Joint_M_CTR0.s" "Middle_Middle1_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Middle1_Joint_M_CTR0.pm" "Middle_Middle1_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Middle_Middle1_M_JNT_parentConstraint1.w0" "Middle_Middle1_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_Wrist_M_JNT.s" "Ring_Ring1_M_JNT.is";
connectAttr "Joint_Disp.di" "Ring_Ring1_M_JNT.do";
connectAttr "Ring_Limb_M_NODE.joints" "Ring_Ring1_M_JNT.limb";
connectAttr "Ring_Ring1_M_JNT_parentConstraint1.ctx" "Ring_Ring1_M_JNT.tx";
connectAttr "Ring_Ring1_M_JNT_parentConstraint1.cty" "Ring_Ring1_M_JNT.ty";
connectAttr "Ring_Ring1_M_JNT_parentConstraint1.ctz" "Ring_Ring1_M_JNT.tz";
connectAttr "Ring_Ring1_M_JNT_parentConstraint1.crx" "Ring_Ring1_M_JNT.rx";
connectAttr "Ring_Ring1_M_JNT_parentConstraint1.cry" "Ring_Ring1_M_JNT.ry";
connectAttr "Ring_Ring1_M_JNT_parentConstraint1.crz" "Ring_Ring1_M_JNT.rz";
connectAttr "Ring_Ring1_M_JNT.s" "Ring_Ring2_M_JNT.is";
connectAttr "Joint_Disp.di" "Ring_Ring2_M_JNT.do";
connectAttr "Ring_Limb_M_NODE.joints" "Ring_Ring2_M_JNT.limb";
connectAttr "Ring_Ring2_M_JNT_parentConstraint1.ctx" "Ring_Ring2_M_JNT.tx";
connectAttr "Ring_Ring2_M_JNT_parentConstraint1.cty" "Ring_Ring2_M_JNT.ty";
connectAttr "Ring_Ring2_M_JNT_parentConstraint1.ctz" "Ring_Ring2_M_JNT.tz";
connectAttr "Ring_Ring2_M_JNT_parentConstraint1.crx" "Ring_Ring2_M_JNT.rx";
connectAttr "Ring_Ring2_M_JNT_parentConstraint1.cry" "Ring_Ring2_M_JNT.ry";
connectAttr "Ring_Ring2_M_JNT_parentConstraint1.crz" "Ring_Ring2_M_JNT.rz";
connectAttr "Ring_Ring2_M_JNT.s" "Ring_Ring3_M_JNT.is";
connectAttr "Joint_Disp.di" "Ring_Ring3_M_JNT.do";
connectAttr "Ring_Limb_M_NODE.joints" "Ring_Ring3_M_JNT.limb";
connectAttr "Ring_Ring3_M_JNT_parentConstraint1.ctx" "Ring_Ring3_M_JNT.tx";
connectAttr "Ring_Ring3_M_JNT_parentConstraint1.cty" "Ring_Ring3_M_JNT.ty";
connectAttr "Ring_Ring3_M_JNT_parentConstraint1.ctz" "Ring_Ring3_M_JNT.tz";
connectAttr "Ring_Ring3_M_JNT_parentConstraint1.crx" "Ring_Ring3_M_JNT.rx";
connectAttr "Ring_Ring3_M_JNT_parentConstraint1.cry" "Ring_Ring3_M_JNT.ry";
connectAttr "Ring_Ring3_M_JNT_parentConstraint1.crz" "Ring_Ring3_M_JNT.rz";
connectAttr "Ring_Ring3_M_JNT.s" "Ring_Ring4_M_JNT.is";
connectAttr "Joint_Disp.di" "Ring_Ring4_M_JNT.do";
connectAttr "Ring_Limb_M_NODE.joints" "Ring_Ring4_M_JNT.limb";
connectAttr "Ring_Ring4_M_JNT_parentConstraint1.ctx" "Ring_Ring4_M_JNT.tx";
connectAttr "Ring_Ring4_M_JNT_parentConstraint1.cty" "Ring_Ring4_M_JNT.ty";
connectAttr "Ring_Ring4_M_JNT_parentConstraint1.ctz" "Ring_Ring4_M_JNT.tz";
connectAttr "Ring_Ring4_M_JNT_parentConstraint1.crx" "Ring_Ring4_M_JNT.rx";
connectAttr "Ring_Ring4_M_JNT_parentConstraint1.cry" "Ring_Ring4_M_JNT.ry";
connectAttr "Ring_Ring4_M_JNT_parentConstraint1.crz" "Ring_Ring4_M_JNT.rz";
connectAttr "Ring_Ring4_M_JNT.ro" "Ring_Ring4_M_JNT_parentConstraint1.cro";
connectAttr "Ring_Ring4_M_JNT.pim" "Ring_Ring4_M_JNT_parentConstraint1.cpim";
connectAttr "Ring_Ring4_M_JNT.rp" "Ring_Ring4_M_JNT_parentConstraint1.crp";
connectAttr "Ring_Ring4_M_JNT.rpt" "Ring_Ring4_M_JNT_parentConstraint1.crt";
connectAttr "Ring_Ring4_M_JNT.jo" "Ring_Ring4_M_JNT_parentConstraint1.cjo";
connectAttr "Ring4_Joint_M_CTR3.t" "Ring_Ring4_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Ring4_Joint_M_CTR3.rp" "Ring_Ring4_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Ring4_Joint_M_CTR3.rpt" "Ring_Ring4_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Ring4_Joint_M_CTR3.r" "Ring_Ring4_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Ring4_Joint_M_CTR3.ro" "Ring_Ring4_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Ring4_Joint_M_CTR3.s" "Ring_Ring4_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Ring4_Joint_M_CTR3.pm" "Ring_Ring4_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ring_Ring4_M_JNT_parentConstraint1.w0" "Ring_Ring4_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Ring_Ring3_M_JNT.ro" "Ring_Ring3_M_JNT_parentConstraint1.cro";
connectAttr "Ring_Ring3_M_JNT.pim" "Ring_Ring3_M_JNT_parentConstraint1.cpim";
connectAttr "Ring_Ring3_M_JNT.rp" "Ring_Ring3_M_JNT_parentConstraint1.crp";
connectAttr "Ring_Ring3_M_JNT.rpt" "Ring_Ring3_M_JNT_parentConstraint1.crt";
connectAttr "Ring_Ring3_M_JNT.jo" "Ring_Ring3_M_JNT_parentConstraint1.cjo";
connectAttr "Ring3_Joint_M_CTR2.t" "Ring_Ring3_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Ring3_Joint_M_CTR2.rp" "Ring_Ring3_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Ring3_Joint_M_CTR2.rpt" "Ring_Ring3_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Ring3_Joint_M_CTR2.r" "Ring_Ring3_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Ring3_Joint_M_CTR2.ro" "Ring_Ring3_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Ring3_Joint_M_CTR2.s" "Ring_Ring3_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Ring3_Joint_M_CTR2.pm" "Ring_Ring3_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ring_Ring3_M_JNT_parentConstraint1.w0" "Ring_Ring3_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Ring_Ring2_M_JNT.ro" "Ring_Ring2_M_JNT_parentConstraint1.cro";
connectAttr "Ring_Ring2_M_JNT.pim" "Ring_Ring2_M_JNT_parentConstraint1.cpim";
connectAttr "Ring_Ring2_M_JNT.rp" "Ring_Ring2_M_JNT_parentConstraint1.crp";
connectAttr "Ring_Ring2_M_JNT.rpt" "Ring_Ring2_M_JNT_parentConstraint1.crt";
connectAttr "Ring_Ring2_M_JNT.jo" "Ring_Ring2_M_JNT_parentConstraint1.cjo";
connectAttr "Ring2_Joint_M_CTR1.t" "Ring_Ring2_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Ring2_Joint_M_CTR1.rp" "Ring_Ring2_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Ring2_Joint_M_CTR1.rpt" "Ring_Ring2_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Ring2_Joint_M_CTR1.r" "Ring_Ring2_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Ring2_Joint_M_CTR1.ro" "Ring_Ring2_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Ring2_Joint_M_CTR1.s" "Ring_Ring2_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Ring2_Joint_M_CTR1.pm" "Ring_Ring2_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ring_Ring2_M_JNT_parentConstraint1.w0" "Ring_Ring2_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Ring_Ring1_M_JNT.ro" "Ring_Ring1_M_JNT_parentConstraint1.cro";
connectAttr "Ring_Ring1_M_JNT.pim" "Ring_Ring1_M_JNT_parentConstraint1.cpim";
connectAttr "Ring_Ring1_M_JNT.rp" "Ring_Ring1_M_JNT_parentConstraint1.crp";
connectAttr "Ring_Ring1_M_JNT.rpt" "Ring_Ring1_M_JNT_parentConstraint1.crt";
connectAttr "Ring_Ring1_M_JNT.jo" "Ring_Ring1_M_JNT_parentConstraint1.cjo";
connectAttr "Ring1_Joint_M_CTR0.t" "Ring_Ring1_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Ring1_Joint_M_CTR0.rp" "Ring_Ring1_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Ring1_Joint_M_CTR0.rpt" "Ring_Ring1_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Ring1_Joint_M_CTR0.r" "Ring_Ring1_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Ring1_Joint_M_CTR0.ro" "Ring_Ring1_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Ring1_Joint_M_CTR0.s" "Ring_Ring1_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Ring1_Joint_M_CTR0.pm" "Ring_Ring1_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ring_Ring1_M_JNT_parentConstraint1.w0" "Ring_Ring1_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_Wrist_M_JNT.s" "Index_Index1_M_JNT.is";
connectAttr "Joint_Disp.di" "Index_Index1_M_JNT.do";
connectAttr "Index_Limb_M_NODE.joints" "Index_Index1_M_JNT.limb";
connectAttr "Index_Index1_M_JNT_parentConstraint1.ctx" "Index_Index1_M_JNT.tx";
connectAttr "Index_Index1_M_JNT_parentConstraint1.cty" "Index_Index1_M_JNT.ty";
connectAttr "Index_Index1_M_JNT_parentConstraint1.ctz" "Index_Index1_M_JNT.tz";
connectAttr "Index_Index1_M_JNT_parentConstraint1.crx" "Index_Index1_M_JNT.rx";
connectAttr "Index_Index1_M_JNT_parentConstraint1.cry" "Index_Index1_M_JNT.ry";
connectAttr "Index_Index1_M_JNT_parentConstraint1.crz" "Index_Index1_M_JNT.rz";
connectAttr "Index_Index1_M_JNT.s" "Index_Index2_M_JNT.is";
connectAttr "Joint_Disp.di" "Index_Index2_M_JNT.do";
connectAttr "Index_Limb_M_NODE.joints" "Index_Index2_M_JNT.limb";
connectAttr "Index_Index2_M_JNT_parentConstraint1.ctx" "Index_Index2_M_JNT.tx";
connectAttr "Index_Index2_M_JNT_parentConstraint1.cty" "Index_Index2_M_JNT.ty";
connectAttr "Index_Index2_M_JNT_parentConstraint1.ctz" "Index_Index2_M_JNT.tz";
connectAttr "Index_Index2_M_JNT_parentConstraint1.crx" "Index_Index2_M_JNT.rx";
connectAttr "Index_Index2_M_JNT_parentConstraint1.cry" "Index_Index2_M_JNT.ry";
connectAttr "Index_Index2_M_JNT_parentConstraint1.crz" "Index_Index2_M_JNT.rz";
connectAttr "Index_Index2_M_JNT.s" "Index_Index3_M_JNT.is";
connectAttr "Joint_Disp.di" "Index_Index3_M_JNT.do";
connectAttr "Index_Limb_M_NODE.joints" "Index_Index3_M_JNT.limb";
connectAttr "Index_Index3_M_JNT_parentConstraint1.ctx" "Index_Index3_M_JNT.tx";
connectAttr "Index_Index3_M_JNT_parentConstraint1.cty" "Index_Index3_M_JNT.ty";
connectAttr "Index_Index3_M_JNT_parentConstraint1.ctz" "Index_Index3_M_JNT.tz";
connectAttr "Index_Index3_M_JNT_parentConstraint1.crx" "Index_Index3_M_JNT.rx";
connectAttr "Index_Index3_M_JNT_parentConstraint1.cry" "Index_Index3_M_JNT.ry";
connectAttr "Index_Index3_M_JNT_parentConstraint1.crz" "Index_Index3_M_JNT.rz";
connectAttr "Index_Index3_M_JNT.s" "Index_Index4_M_JNT.is";
connectAttr "Joint_Disp.di" "Index_Index4_M_JNT.do";
connectAttr "Index_Limb_M_NODE.joints" "Index_Index4_M_JNT.limb";
connectAttr "Index_Index4_M_JNT_parentConstraint1.ctx" "Index_Index4_M_JNT.tx";
connectAttr "Index_Index4_M_JNT_parentConstraint1.cty" "Index_Index4_M_JNT.ty";
connectAttr "Index_Index4_M_JNT_parentConstraint1.ctz" "Index_Index4_M_JNT.tz";
connectAttr "Index_Index4_M_JNT_parentConstraint1.crx" "Index_Index4_M_JNT.rx";
connectAttr "Index_Index4_M_JNT_parentConstraint1.cry" "Index_Index4_M_JNT.ry";
connectAttr "Index_Index4_M_JNT_parentConstraint1.crz" "Index_Index4_M_JNT.rz";
connectAttr "Index_Index4_M_JNT.ro" "Index_Index4_M_JNT_parentConstraint1.cro";
connectAttr "Index_Index4_M_JNT.pim" "Index_Index4_M_JNT_parentConstraint1.cpim"
		;
connectAttr "Index_Index4_M_JNT.rp" "Index_Index4_M_JNT_parentConstraint1.crp";
connectAttr "Index_Index4_M_JNT.rpt" "Index_Index4_M_JNT_parentConstraint1.crt";
connectAttr "Index_Index4_M_JNT.jo" "Index_Index4_M_JNT_parentConstraint1.cjo";
connectAttr "Index4_Joint_M_CTR3.t" "Index_Index4_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Index4_Joint_M_CTR3.rp" "Index_Index4_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Index4_Joint_M_CTR3.rpt" "Index_Index4_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Index4_Joint_M_CTR3.r" "Index_Index4_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Index4_Joint_M_CTR3.ro" "Index_Index4_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Index4_Joint_M_CTR3.s" "Index_Index4_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Index4_Joint_M_CTR3.pm" "Index_Index4_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Index_Index4_M_JNT_parentConstraint1.w0" "Index_Index4_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Index_Index3_M_JNT.ro" "Index_Index3_M_JNT_parentConstraint1.cro";
connectAttr "Index_Index3_M_JNT.pim" "Index_Index3_M_JNT_parentConstraint1.cpim"
		;
connectAttr "Index_Index3_M_JNT.rp" "Index_Index3_M_JNT_parentConstraint1.crp";
connectAttr "Index_Index3_M_JNT.rpt" "Index_Index3_M_JNT_parentConstraint1.crt";
connectAttr "Index_Index3_M_JNT.jo" "Index_Index3_M_JNT_parentConstraint1.cjo";
connectAttr "Index3_Joint_M_CTR2.t" "Index_Index3_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Index3_Joint_M_CTR2.rp" "Index_Index3_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Index3_Joint_M_CTR2.rpt" "Index_Index3_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Index3_Joint_M_CTR2.r" "Index_Index3_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Index3_Joint_M_CTR2.ro" "Index_Index3_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Index3_Joint_M_CTR2.s" "Index_Index3_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Index3_Joint_M_CTR2.pm" "Index_Index3_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Index_Index3_M_JNT_parentConstraint1.w0" "Index_Index3_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Index_Index2_M_JNT.ro" "Index_Index2_M_JNT_parentConstraint1.cro";
connectAttr "Index_Index2_M_JNT.pim" "Index_Index2_M_JNT_parentConstraint1.cpim"
		;
connectAttr "Index_Index2_M_JNT.rp" "Index_Index2_M_JNT_parentConstraint1.crp";
connectAttr "Index_Index2_M_JNT.rpt" "Index_Index2_M_JNT_parentConstraint1.crt";
connectAttr "Index_Index2_M_JNT.jo" "Index_Index2_M_JNT_parentConstraint1.cjo";
connectAttr "Index2_Joint_M_CTR1.t" "Index_Index2_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Index2_Joint_M_CTR1.rp" "Index_Index2_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Index2_Joint_M_CTR1.rpt" "Index_Index2_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Index2_Joint_M_CTR1.r" "Index_Index2_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Index2_Joint_M_CTR1.ro" "Index_Index2_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Index2_Joint_M_CTR1.s" "Index_Index2_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Index2_Joint_M_CTR1.pm" "Index_Index2_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Index_Index2_M_JNT_parentConstraint1.w0" "Index_Index2_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Index_Index1_M_JNT.ro" "Index_Index1_M_JNT_parentConstraint1.cro";
connectAttr "Index_Index1_M_JNT.pim" "Index_Index1_M_JNT_parentConstraint1.cpim"
		;
connectAttr "Index_Index1_M_JNT.rp" "Index_Index1_M_JNT_parentConstraint1.crp";
connectAttr "Index_Index1_M_JNT.rpt" "Index_Index1_M_JNT_parentConstraint1.crt";
connectAttr "Index_Index1_M_JNT.jo" "Index_Index1_M_JNT_parentConstraint1.cjo";
connectAttr "Index1_Joint_M_CTR0.t" "Index_Index1_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Index1_Joint_M_CTR0.rp" "Index_Index1_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Index1_Joint_M_CTR0.rpt" "Index_Index1_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Index1_Joint_M_CTR0.r" "Index_Index1_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Index1_Joint_M_CTR0.ro" "Index_Index1_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Index1_Joint_M_CTR0.s" "Index_Index1_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Index1_Joint_M_CTR0.pm" "Index_Index1_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Index_Index1_M_JNT_parentConstraint1.w0" "Index_Index1_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_Wrist_M_JNT.s" "Pinkie_Pinkey1_M_JNT.is";
connectAttr "Joint_Disp.di" "Pinkie_Pinkey1_M_JNT.do";
connectAttr "Pinkie_Limb_M_NODE.joints" "Pinkie_Pinkey1_M_JNT.limb";
connectAttr "Pinkie_Pinkey1_M_JNT_parentConstraint1.ctx" "Pinkie_Pinkey1_M_JNT.tx"
		;
connectAttr "Pinkie_Pinkey1_M_JNT_parentConstraint1.cty" "Pinkie_Pinkey1_M_JNT.ty"
		;
connectAttr "Pinkie_Pinkey1_M_JNT_parentConstraint1.ctz" "Pinkie_Pinkey1_M_JNT.tz"
		;
connectAttr "Pinkie_Pinkey1_M_JNT_parentConstraint1.crx" "Pinkie_Pinkey1_M_JNT.rx"
		;
connectAttr "Pinkie_Pinkey1_M_JNT_parentConstraint1.cry" "Pinkie_Pinkey1_M_JNT.ry"
		;
connectAttr "Pinkie_Pinkey1_M_JNT_parentConstraint1.crz" "Pinkie_Pinkey1_M_JNT.rz"
		;
connectAttr "Pinkie_Pinkey1_M_JNT.s" "Pinkie_Pinkey2_M_JNT.is";
connectAttr "Joint_Disp.di" "Pinkie_Pinkey2_M_JNT.do";
connectAttr "Pinkie_Limb_M_NODE.joints" "Pinkie_Pinkey2_M_JNT.limb";
connectAttr "Pinkie_Pinkey2_M_JNT_parentConstraint1.ctx" "Pinkie_Pinkey2_M_JNT.tx"
		;
connectAttr "Pinkie_Pinkey2_M_JNT_parentConstraint1.cty" "Pinkie_Pinkey2_M_JNT.ty"
		;
connectAttr "Pinkie_Pinkey2_M_JNT_parentConstraint1.ctz" "Pinkie_Pinkey2_M_JNT.tz"
		;
connectAttr "Pinkie_Pinkey2_M_JNT_parentConstraint1.crx" "Pinkie_Pinkey2_M_JNT.rx"
		;
connectAttr "Pinkie_Pinkey2_M_JNT_parentConstraint1.cry" "Pinkie_Pinkey2_M_JNT.ry"
		;
connectAttr "Pinkie_Pinkey2_M_JNT_parentConstraint1.crz" "Pinkie_Pinkey2_M_JNT.rz"
		;
connectAttr "Pinkie_Pinkey2_M_JNT.s" "Pinkie_Pinkey3_M_JNT.is";
connectAttr "Joint_Disp.di" "Pinkie_Pinkey3_M_JNT.do";
connectAttr "Pinkie_Limb_M_NODE.joints" "Pinkie_Pinkey3_M_JNT.limb";
connectAttr "Pinkie_Pinkey3_M_JNT_parentConstraint1.ctx" "Pinkie_Pinkey3_M_JNT.tx"
		;
connectAttr "Pinkie_Pinkey3_M_JNT_parentConstraint1.cty" "Pinkie_Pinkey3_M_JNT.ty"
		;
connectAttr "Pinkie_Pinkey3_M_JNT_parentConstraint1.ctz" "Pinkie_Pinkey3_M_JNT.tz"
		;
connectAttr "Pinkie_Pinkey3_M_JNT_parentConstraint1.crx" "Pinkie_Pinkey3_M_JNT.rx"
		;
connectAttr "Pinkie_Pinkey3_M_JNT_parentConstraint1.cry" "Pinkie_Pinkey3_M_JNT.ry"
		;
connectAttr "Pinkie_Pinkey3_M_JNT_parentConstraint1.crz" "Pinkie_Pinkey3_M_JNT.rz"
		;
connectAttr "Pinkie_Pinkey3_M_JNT.s" "Pinkie_Pinkey4_M_JNT.is";
connectAttr "Joint_Disp.di" "Pinkie_Pinkey4_M_JNT.do";
connectAttr "Pinkie_Limb_M_NODE.joints" "Pinkie_Pinkey4_M_JNT.limb";
connectAttr "Pinkie_Pinkey4_M_JNT_parentConstraint1.ctx" "Pinkie_Pinkey4_M_JNT.tx"
		;
connectAttr "Pinkie_Pinkey4_M_JNT_parentConstraint1.cty" "Pinkie_Pinkey4_M_JNT.ty"
		;
connectAttr "Pinkie_Pinkey4_M_JNT_parentConstraint1.ctz" "Pinkie_Pinkey4_M_JNT.tz"
		;
connectAttr "Pinkie_Pinkey4_M_JNT_parentConstraint1.crx" "Pinkie_Pinkey4_M_JNT.rx"
		;
connectAttr "Pinkie_Pinkey4_M_JNT_parentConstraint1.cry" "Pinkie_Pinkey4_M_JNT.ry"
		;
connectAttr "Pinkie_Pinkey4_M_JNT_parentConstraint1.crz" "Pinkie_Pinkey4_M_JNT.rz"
		;
connectAttr "Pinkie_Pinkey4_M_JNT.ro" "Pinkie_Pinkey4_M_JNT_parentConstraint1.cro"
		;
connectAttr "Pinkie_Pinkey4_M_JNT.pim" "Pinkie_Pinkey4_M_JNT_parentConstraint1.cpim"
		;
connectAttr "Pinkie_Pinkey4_M_JNT.rp" "Pinkie_Pinkey4_M_JNT_parentConstraint1.crp"
		;
connectAttr "Pinkie_Pinkey4_M_JNT.rpt" "Pinkie_Pinkey4_M_JNT_parentConstraint1.crt"
		;
connectAttr "Pinkie_Pinkey4_M_JNT.jo" "Pinkie_Pinkey4_M_JNT_parentConstraint1.cjo"
		;
connectAttr "Pinkey4_Joint_M_CTR3.t" "Pinkie_Pinkey4_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Pinkey4_Joint_M_CTR3.rp" "Pinkie_Pinkey4_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Pinkey4_Joint_M_CTR3.rpt" "Pinkie_Pinkey4_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Pinkey4_Joint_M_CTR3.r" "Pinkie_Pinkey4_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Pinkey4_Joint_M_CTR3.ro" "Pinkie_Pinkey4_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Pinkey4_Joint_M_CTR3.s" "Pinkie_Pinkey4_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Pinkey4_Joint_M_CTR3.pm" "Pinkie_Pinkey4_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Pinkie_Pinkey4_M_JNT_parentConstraint1.w0" "Pinkie_Pinkey4_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Pinkie_Pinkey3_M_JNT.ro" "Pinkie_Pinkey3_M_JNT_parentConstraint1.cro"
		;
connectAttr "Pinkie_Pinkey3_M_JNT.pim" "Pinkie_Pinkey3_M_JNT_parentConstraint1.cpim"
		;
connectAttr "Pinkie_Pinkey3_M_JNT.rp" "Pinkie_Pinkey3_M_JNT_parentConstraint1.crp"
		;
connectAttr "Pinkie_Pinkey3_M_JNT.rpt" "Pinkie_Pinkey3_M_JNT_parentConstraint1.crt"
		;
connectAttr "Pinkie_Pinkey3_M_JNT.jo" "Pinkie_Pinkey3_M_JNT_parentConstraint1.cjo"
		;
connectAttr "Pinkey3_Joint_M_CTR2.t" "Pinkie_Pinkey3_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Pinkey3_Joint_M_CTR2.rp" "Pinkie_Pinkey3_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Pinkey3_Joint_M_CTR2.rpt" "Pinkie_Pinkey3_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Pinkey3_Joint_M_CTR2.r" "Pinkie_Pinkey3_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Pinkey3_Joint_M_CTR2.ro" "Pinkie_Pinkey3_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Pinkey3_Joint_M_CTR2.s" "Pinkie_Pinkey3_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Pinkey3_Joint_M_CTR2.pm" "Pinkie_Pinkey3_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Pinkie_Pinkey3_M_JNT_parentConstraint1.w0" "Pinkie_Pinkey3_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Pinkie_Pinkey2_M_JNT.ro" "Pinkie_Pinkey2_M_JNT_parentConstraint1.cro"
		;
connectAttr "Pinkie_Pinkey2_M_JNT.pim" "Pinkie_Pinkey2_M_JNT_parentConstraint1.cpim"
		;
connectAttr "Pinkie_Pinkey2_M_JNT.rp" "Pinkie_Pinkey2_M_JNT_parentConstraint1.crp"
		;
connectAttr "Pinkie_Pinkey2_M_JNT.rpt" "Pinkie_Pinkey2_M_JNT_parentConstraint1.crt"
		;
connectAttr "Pinkie_Pinkey2_M_JNT.jo" "Pinkie_Pinkey2_M_JNT_parentConstraint1.cjo"
		;
connectAttr "Pinkey2_Joint_M_CTR1.t" "Pinkie_Pinkey2_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Pinkey2_Joint_M_CTR1.rp" "Pinkie_Pinkey2_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Pinkey2_Joint_M_CTR1.rpt" "Pinkie_Pinkey2_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Pinkey2_Joint_M_CTR1.r" "Pinkie_Pinkey2_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Pinkey2_Joint_M_CTR1.ro" "Pinkie_Pinkey2_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Pinkey2_Joint_M_CTR1.s" "Pinkie_Pinkey2_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Pinkey2_Joint_M_CTR1.pm" "Pinkie_Pinkey2_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Pinkie_Pinkey2_M_JNT_parentConstraint1.w0" "Pinkie_Pinkey2_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Pinkie_Pinkey1_M_JNT.ro" "Pinkie_Pinkey1_M_JNT_parentConstraint1.cro"
		;
connectAttr "Pinkie_Pinkey1_M_JNT.pim" "Pinkie_Pinkey1_M_JNT_parentConstraint1.cpim"
		;
connectAttr "Pinkie_Pinkey1_M_JNT.rp" "Pinkie_Pinkey1_M_JNT_parentConstraint1.crp"
		;
connectAttr "Pinkie_Pinkey1_M_JNT.rpt" "Pinkie_Pinkey1_M_JNT_parentConstraint1.crt"
		;
connectAttr "Pinkie_Pinkey1_M_JNT.jo" "Pinkie_Pinkey1_M_JNT_parentConstraint1.cjo"
		;
connectAttr "Pinkey1_Joint_M_CTR0.t" "Pinkie_Pinkey1_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Pinkey1_Joint_M_CTR0.rp" "Pinkie_Pinkey1_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Pinkey1_Joint_M_CTR0.rpt" "Pinkie_Pinkey1_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Pinkey1_Joint_M_CTR0.r" "Pinkie_Pinkey1_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Pinkey1_Joint_M_CTR0.ro" "Pinkie_Pinkey1_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Pinkey1_Joint_M_CTR0.s" "Pinkie_Pinkey1_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Pinkey1_Joint_M_CTR0.pm" "Pinkie_Pinkey1_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Pinkie_Pinkey1_M_JNT_parentConstraint1.w0" "Pinkie_Pinkey1_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_Wrist_M_JNT.s" "Thumb_Thumb1_M_JNT.is";
connectAttr "Joint_Disp.di" "Thumb_Thumb1_M_JNT.do";
connectAttr "Thumb_Limb_M_NODE.joints" "Thumb_Thumb1_M_JNT.limb";
connectAttr "Thumb_Thumb1_M_JNT_parentConstraint1.ctx" "Thumb_Thumb1_M_JNT.tx";
connectAttr "Thumb_Thumb1_M_JNT_parentConstraint1.cty" "Thumb_Thumb1_M_JNT.ty";
connectAttr "Thumb_Thumb1_M_JNT_parentConstraint1.ctz" "Thumb_Thumb1_M_JNT.tz";
connectAttr "Thumb_Thumb1_M_JNT_parentConstraint1.crx" "Thumb_Thumb1_M_JNT.rx";
connectAttr "Thumb_Thumb1_M_JNT_parentConstraint1.cry" "Thumb_Thumb1_M_JNT.ry";
connectAttr "Thumb_Thumb1_M_JNT_parentConstraint1.crz" "Thumb_Thumb1_M_JNT.rz";
connectAttr "Thumb_Thumb1_M_JNT.s" "Thumb_Thumb2_M_JNT.is";
connectAttr "Joint_Disp.di" "Thumb_Thumb2_M_JNT.do";
connectAttr "Thumb_Limb_M_NODE.joints" "Thumb_Thumb2_M_JNT.limb";
connectAttr "Thumb_Thumb2_M_JNT_parentConstraint1.ctx" "Thumb_Thumb2_M_JNT.tx";
connectAttr "Thumb_Thumb2_M_JNT_parentConstraint1.cty" "Thumb_Thumb2_M_JNT.ty";
connectAttr "Thumb_Thumb2_M_JNT_parentConstraint1.ctz" "Thumb_Thumb2_M_JNT.tz";
connectAttr "Thumb_Thumb2_M_JNT_parentConstraint1.crx" "Thumb_Thumb2_M_JNT.rx";
connectAttr "Thumb_Thumb2_M_JNT_parentConstraint1.cry" "Thumb_Thumb2_M_JNT.ry";
connectAttr "Thumb_Thumb2_M_JNT_parentConstraint1.crz" "Thumb_Thumb2_M_JNT.rz";
connectAttr "Thumb_Thumb2_M_JNT.s" "Thumb_Thumb3_M_JNT.is";
connectAttr "Joint_Disp.di" "Thumb_Thumb3_M_JNT.do";
connectAttr "Thumb_Limb_M_NODE.joints" "Thumb_Thumb3_M_JNT.limb";
connectAttr "Thumb_Thumb3_M_JNT_parentConstraint1.ctx" "Thumb_Thumb3_M_JNT.tx";
connectAttr "Thumb_Thumb3_M_JNT_parentConstraint1.cty" "Thumb_Thumb3_M_JNT.ty";
connectAttr "Thumb_Thumb3_M_JNT_parentConstraint1.ctz" "Thumb_Thumb3_M_JNT.tz";
connectAttr "Thumb_Thumb3_M_JNT_parentConstraint1.crx" "Thumb_Thumb3_M_JNT.rx";
connectAttr "Thumb_Thumb3_M_JNT_parentConstraint1.cry" "Thumb_Thumb3_M_JNT.ry";
connectAttr "Thumb_Thumb3_M_JNT_parentConstraint1.crz" "Thumb_Thumb3_M_JNT.rz";
connectAttr "Thumb_Thumb3_M_JNT.s" "Thumb_Thumb4_M_JNT.is";
connectAttr "Joint_Disp.di" "Thumb_Thumb4_M_JNT.do";
connectAttr "Thumb_Limb_M_NODE.joints" "Thumb_Thumb4_M_JNT.limb";
connectAttr "Thumb_Thumb4_M_JNT_parentConstraint1.ctx" "Thumb_Thumb4_M_JNT.tx";
connectAttr "Thumb_Thumb4_M_JNT_parentConstraint1.cty" "Thumb_Thumb4_M_JNT.ty";
connectAttr "Thumb_Thumb4_M_JNT_parentConstraint1.ctz" "Thumb_Thumb4_M_JNT.tz";
connectAttr "Thumb_Thumb4_M_JNT_parentConstraint1.crx" "Thumb_Thumb4_M_JNT.rx";
connectAttr "Thumb_Thumb4_M_JNT_parentConstraint1.cry" "Thumb_Thumb4_M_JNT.ry";
connectAttr "Thumb_Thumb4_M_JNT_parentConstraint1.crz" "Thumb_Thumb4_M_JNT.rz";
connectAttr "Thumb_Thumb4_M_JNT.ro" "Thumb_Thumb4_M_JNT_parentConstraint1.cro";
connectAttr "Thumb_Thumb4_M_JNT.pim" "Thumb_Thumb4_M_JNT_parentConstraint1.cpim"
		;
connectAttr "Thumb_Thumb4_M_JNT.rp" "Thumb_Thumb4_M_JNT_parentConstraint1.crp";
connectAttr "Thumb_Thumb4_M_JNT.rpt" "Thumb_Thumb4_M_JNT_parentConstraint1.crt";
connectAttr "Thumb_Thumb4_M_JNT.jo" "Thumb_Thumb4_M_JNT_parentConstraint1.cjo";
connectAttr "Thumb4_Joint_M_CTR3.t" "Thumb_Thumb4_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Thumb4_Joint_M_CTR3.rp" "Thumb_Thumb4_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Thumb4_Joint_M_CTR3.rpt" "Thumb_Thumb4_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Thumb4_Joint_M_CTR3.r" "Thumb_Thumb4_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Thumb4_Joint_M_CTR3.ro" "Thumb_Thumb4_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Thumb4_Joint_M_CTR3.s" "Thumb_Thumb4_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Thumb4_Joint_M_CTR3.pm" "Thumb_Thumb4_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Thumb_Thumb4_M_JNT_parentConstraint1.w0" "Thumb_Thumb4_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Thumb_Thumb3_M_JNT.ro" "Thumb_Thumb3_M_JNT_parentConstraint1.cro";
connectAttr "Thumb_Thumb3_M_JNT.pim" "Thumb_Thumb3_M_JNT_parentConstraint1.cpim"
		;
connectAttr "Thumb_Thumb3_M_JNT.rp" "Thumb_Thumb3_M_JNT_parentConstraint1.crp";
connectAttr "Thumb_Thumb3_M_JNT.rpt" "Thumb_Thumb3_M_JNT_parentConstraint1.crt";
connectAttr "Thumb_Thumb3_M_JNT.jo" "Thumb_Thumb3_M_JNT_parentConstraint1.cjo";
connectAttr "Thumb3_Joint_M_CTR2.t" "Thumb_Thumb3_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Thumb3_Joint_M_CTR2.rp" "Thumb_Thumb3_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Thumb3_Joint_M_CTR2.rpt" "Thumb_Thumb3_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Thumb3_Joint_M_CTR2.r" "Thumb_Thumb3_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Thumb3_Joint_M_CTR2.ro" "Thumb_Thumb3_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Thumb3_Joint_M_CTR2.s" "Thumb_Thumb3_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Thumb3_Joint_M_CTR2.pm" "Thumb_Thumb3_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Thumb_Thumb3_M_JNT_parentConstraint1.w0" "Thumb_Thumb3_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Thumb_Thumb2_M_JNT.ro" "Thumb_Thumb2_M_JNT_parentConstraint1.cro";
connectAttr "Thumb_Thumb2_M_JNT.pim" "Thumb_Thumb2_M_JNT_parentConstraint1.cpim"
		;
connectAttr "Thumb_Thumb2_M_JNT.rp" "Thumb_Thumb2_M_JNT_parentConstraint1.crp";
connectAttr "Thumb_Thumb2_M_JNT.rpt" "Thumb_Thumb2_M_JNT_parentConstraint1.crt";
connectAttr "Thumb_Thumb2_M_JNT.jo" "Thumb_Thumb2_M_JNT_parentConstraint1.cjo";
connectAttr "Thumb2_Joint_M_CTR1.t" "Thumb_Thumb2_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Thumb2_Joint_M_CTR1.rp" "Thumb_Thumb2_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Thumb2_Joint_M_CTR1.rpt" "Thumb_Thumb2_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Thumb2_Joint_M_CTR1.r" "Thumb_Thumb2_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Thumb2_Joint_M_CTR1.ro" "Thumb_Thumb2_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Thumb2_Joint_M_CTR1.s" "Thumb_Thumb2_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Thumb2_Joint_M_CTR1.pm" "Thumb_Thumb2_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Thumb_Thumb2_M_JNT_parentConstraint1.w0" "Thumb_Thumb2_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Thumb_Thumb1_M_JNT.ro" "Thumb_Thumb1_M_JNT_parentConstraint1.cro";
connectAttr "Thumb_Thumb1_M_JNT.pim" "Thumb_Thumb1_M_JNT_parentConstraint1.cpim"
		;
connectAttr "Thumb_Thumb1_M_JNT.rp" "Thumb_Thumb1_M_JNT_parentConstraint1.crp";
connectAttr "Thumb_Thumb1_M_JNT.rpt" "Thumb_Thumb1_M_JNT_parentConstraint1.crt";
connectAttr "Thumb_Thumb1_M_JNT.jo" "Thumb_Thumb1_M_JNT_parentConstraint1.cjo";
connectAttr "Thumb1_Joint_M_CTR0.t" "Thumb_Thumb1_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Thumb1_Joint_M_CTR0.rp" "Thumb_Thumb1_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Thumb1_Joint_M_CTR0.rpt" "Thumb_Thumb1_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Thumb1_Joint_M_CTR0.r" "Thumb_Thumb1_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Thumb1_Joint_M_CTR0.ro" "Thumb_Thumb1_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Thumb1_Joint_M_CTR0.s" "Thumb_Thumb1_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Thumb1_Joint_M_CTR0.pm" "Thumb_Thumb1_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Thumb_Thumb1_M_JNT_parentConstraint1.w0" "Thumb_Thumb1_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_Wrist_M_JNT.ro" "Arm_Wrist_M_JNT_parentConstraint1.cro";
connectAttr "Arm_Wrist_M_JNT.pim" "Arm_Wrist_M_JNT_parentConstraint1.cpim";
connectAttr "Arm_Wrist_M_JNT.rp" "Arm_Wrist_M_JNT_parentConstraint1.crp";
connectAttr "Arm_Wrist_M_JNT.rpt" "Arm_Wrist_M_JNT_parentConstraint1.crt";
connectAttr "Arm_Wrist_M_JNT.jo" "Arm_Wrist_M_JNT_parentConstraint1.cjo";
connectAttr "Wrist_Joint_M_CTR2.t" "Arm_Wrist_M_JNT_parentConstraint1.tg[0].tt";
connectAttr "Wrist_Joint_M_CTR2.rp" "Arm_Wrist_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Wrist_Joint_M_CTR2.rpt" "Arm_Wrist_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Wrist_Joint_M_CTR2.r" "Arm_Wrist_M_JNT_parentConstraint1.tg[0].tr";
connectAttr "Wrist_Joint_M_CTR2.ro" "Arm_Wrist_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Wrist_Joint_M_CTR2.s" "Arm_Wrist_M_JNT_parentConstraint1.tg[0].ts";
connectAttr "Wrist_Joint_M_CTR2.pm" "Arm_Wrist_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Arm_Wrist_M_JNT_parentConstraint1.w0" "Arm_Wrist_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_Elbow_M_JNT.ro" "Arm_Elbow_M_JNT_parentConstraint1.cro";
connectAttr "Arm_Elbow_M_JNT.pim" "Arm_Elbow_M_JNT_parentConstraint1.cpim";
connectAttr "Arm_Elbow_M_JNT.rp" "Arm_Elbow_M_JNT_parentConstraint1.crp";
connectAttr "Arm_Elbow_M_JNT.rpt" "Arm_Elbow_M_JNT_parentConstraint1.crt";
connectAttr "Arm_Elbow_M_JNT.jo" "Arm_Elbow_M_JNT_parentConstraint1.cjo";
connectAttr "Elbow_Joint_M_CTR1.t" "Arm_Elbow_M_JNT_parentConstraint1.tg[0].tt";
connectAttr "Elbow_Joint_M_CTR1.rp" "Arm_Elbow_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Elbow_Joint_M_CTR1.rpt" "Arm_Elbow_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Elbow_Joint_M_CTR1.r" "Arm_Elbow_M_JNT_parentConstraint1.tg[0].tr";
connectAttr "Elbow_Joint_M_CTR1.ro" "Arm_Elbow_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Elbow_Joint_M_CTR1.s" "Arm_Elbow_M_JNT_parentConstraint1.tg[0].ts";
connectAttr "Elbow_Joint_M_CTR1.pm" "Arm_Elbow_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Arm_Elbow_M_JNT_parentConstraint1.w0" "Arm_Elbow_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_Shoulder_M_JNT.ro" "Arm_Shoulder_M_JNT_parentConstraint1.cro";
connectAttr "Arm_Shoulder_M_JNT.pim" "Arm_Shoulder_M_JNT_parentConstraint1.cpim"
		;
connectAttr "Arm_Shoulder_M_JNT.rp" "Arm_Shoulder_M_JNT_parentConstraint1.crp";
connectAttr "Arm_Shoulder_M_JNT.rpt" "Arm_Shoulder_M_JNT_parentConstraint1.crt";
connectAttr "Arm_Shoulder_M_JNT.jo" "Arm_Shoulder_M_JNT_parentConstraint1.cjo";
connectAttr "Shoulder_Joint_M_CTR0.t" "Arm_Shoulder_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Shoulder_Joint_M_CTR0.rp" "Arm_Shoulder_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Shoulder_Joint_M_CTR0.rpt" "Arm_Shoulder_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Shoulder_Joint_M_CTR0.r" "Arm_Shoulder_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Shoulder_Joint_M_CTR0.ro" "Arm_Shoulder_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Shoulder_Joint_M_CTR0.s" "Arm_Shoulder_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Shoulder_Joint_M_CTR0.pm" "Arm_Shoulder_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Arm_Shoulder_M_JNT_parentConstraint1.w0" "Arm_Shoulder_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Clav_Clav01_M_JNT.ro" "Clav_Clav01_M_JNT_parentConstraint1.cro";
connectAttr "Clav_Clav01_M_JNT.pim" "Clav_Clav01_M_JNT_parentConstraint1.cpim";
connectAttr "Clav_Clav01_M_JNT.rp" "Clav_Clav01_M_JNT_parentConstraint1.crp";
connectAttr "Clav_Clav01_M_JNT.rpt" "Clav_Clav01_M_JNT_parentConstraint1.crt";
connectAttr "Clav_Clav01_M_JNT.jo" "Clav_Clav01_M_JNT_parentConstraint1.cjo";
connectAttr "Clav01_Joint_M_CTR0.t" "Clav_Clav01_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Clav01_Joint_M_CTR0.rp" "Clav_Clav01_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Clav01_Joint_M_CTR0.rpt" "Clav_Clav01_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Clav01_Joint_M_CTR0.r" "Clav_Clav01_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Clav01_Joint_M_CTR0.ro" "Clav_Clav01_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Clav01_Joint_M_CTR0.s" "Clav_Clav01_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Clav01_Joint_M_CTR0.pm" "Clav_Clav01_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Clav_Clav01_M_JNT_parentConstraint1.w0" "Clav_Clav01_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "TEMP_RigRoot.limbsParentGroup" "LIMBS.rigRoot";
connectAttr "TEMP_RigRoot.limbs" "BicepTwist_Limb_M_NODE.rigRoot";
connectAttr "Arm_Limb_M_NODE.limbChildren" "BicepTwist_Limb_M_NODE.limbParent";
connectAttr "BicepTwist_BicepTwist_M_JNT.group" "BicepTwist_Joint_M_GRP0.joint";
connectAttr "BicepTwist_Limb_M_NODE.jointGroups" "BicepTwist_Joint_M_GRP0.limb";
connectAttr "BicepTwist_Limb_M_NODE.usedGroups" "BicepTwist_Joint_M_GRP0.used";
connectAttr "BicepTwist_Joint_M_GRP0_parentConstraint1.ctx" "BicepTwist_Joint_M_GRP0.tx"
		;
connectAttr "BicepTwist_Joint_M_GRP0_parentConstraint1.cty" "BicepTwist_Joint_M_GRP0.ty"
		;
connectAttr "BicepTwist_Joint_M_GRP0_parentConstraint1.ctz" "BicepTwist_Joint_M_GRP0.tz"
		;
connectAttr "BicepTwist_Joint_M_GRP0_parentConstraint1.crx" "BicepTwist_Joint_M_GRP0.rx"
		;
connectAttr "BicepTwist_Joint_M_GRP0_parentConstraint1.cry" "BicepTwist_Joint_M_GRP0.ry"
		;
connectAttr "BicepTwist_Joint_M_GRP0_parentConstraint1.crz" "BicepTwist_Joint_M_GRP0.rz"
		;
connectAttr "Control_Disp.di" "BicepTwist_Joint_M_CTR0.do";
connectAttr "BicepTwist_Joint_M_GRP0.control" "BicepTwist_Joint_M_CTR0.group";
connectAttr "BicepTwist_Joint_M_GRP0.ro" "BicepTwist_Joint_M_GRP0_parentConstraint1.cro"
		;
connectAttr "BicepTwist_Joint_M_GRP0.pim" "BicepTwist_Joint_M_GRP0_parentConstraint1.cpim"
		;
connectAttr "BicepTwist_Joint_M_GRP0.rp" "BicepTwist_Joint_M_GRP0_parentConstraint1.crp"
		;
connectAttr "BicepTwist_Joint_M_GRP0.rpt" "BicepTwist_Joint_M_GRP0_parentConstraint1.crt"
		;
connectAttr "Shoulder_Joint_M_CTR0.t" "BicepTwist_Joint_M_GRP0_parentConstraint1.tg[0].tt"
		;
connectAttr "Shoulder_Joint_M_CTR0.rp" "BicepTwist_Joint_M_GRP0_parentConstraint1.tg[0].trp"
		;
connectAttr "Shoulder_Joint_M_CTR0.rpt" "BicepTwist_Joint_M_GRP0_parentConstraint1.tg[0].trt"
		;
connectAttr "Shoulder_Joint_M_CTR0.r" "BicepTwist_Joint_M_GRP0_parentConstraint1.tg[0].tr"
		;
connectAttr "Shoulder_Joint_M_CTR0.ro" "BicepTwist_Joint_M_GRP0_parentConstraint1.tg[0].tro"
		;
connectAttr "Shoulder_Joint_M_CTR0.s" "BicepTwist_Joint_M_GRP0_parentConstraint1.tg[0].ts"
		;
connectAttr "Shoulder_Joint_M_CTR0.pm" "BicepTwist_Joint_M_GRP0_parentConstraint1.tg[0].tpm"
		;
connectAttr "BicepTwist_Joint_M_GRP0_parentConstraint1.w0" "BicepTwist_Joint_M_GRP0_parentConstraint1.tg[0].tw"
		;
connectAttr "TEMP_RigRoot.limbs" "ForearmTwist_Limb_M_NODE.rigRoot";
connectAttr "Arm_Limb_M_NODE.limbChildren" "ForearmTwist_Limb_M_NODE.limbParent"
		;
connectAttr "ForearmTwist_ForearmTwist2_M_JNT.group" "ForearmTwist2_Joint_M_GRP1.joint"
		;
connectAttr "ForearmTwist_Limb_M_NODE.jointGroups" "ForearmTwist2_Joint_M_GRP1.limb"
		;
connectAttr "ForearmTwist_Limb_M_NODE.usedGroups" "ForearmTwist2_Joint_M_GRP1.used"
		;
connectAttr "ForearmTwist2_Joint_M_GRP1_parentConstraint1.ctx" "ForearmTwist2_Joint_M_GRP1.tx"
		;
connectAttr "ForearmTwist2_Joint_M_GRP1_parentConstraint1.cty" "ForearmTwist2_Joint_M_GRP1.ty"
		;
connectAttr "ForearmTwist2_Joint_M_GRP1_parentConstraint1.ctz" "ForearmTwist2_Joint_M_GRP1.tz"
		;
connectAttr "ForearmTwist2_Joint_M_GRP1_parentConstraint1.crx" "ForearmTwist2_Joint_M_GRP1.rx"
		;
connectAttr "ForearmTwist2_Joint_M_GRP1_parentConstraint1.cry" "ForearmTwist2_Joint_M_GRP1.ry"
		;
connectAttr "ForearmTwist2_Joint_M_GRP1_parentConstraint1.crz" "ForearmTwist2_Joint_M_GRP1.rz"
		;
connectAttr "Control_Disp.di" "ForearmTwist2_Joint_M_CTR1.do";
connectAttr "ForearmTwist2_Joint_M_GRP1.control" "ForearmTwist2_Joint_M_CTR1.group"
		;
connectAttr "ForearmTwist2_Joint_M_GRP1.ro" "ForearmTwist2_Joint_M_GRP1_parentConstraint1.cro"
		;
connectAttr "ForearmTwist2_Joint_M_GRP1.pim" "ForearmTwist2_Joint_M_GRP1_parentConstraint1.cpim"
		;
connectAttr "ForearmTwist2_Joint_M_GRP1.rp" "ForearmTwist2_Joint_M_GRP1_parentConstraint1.crp"
		;
connectAttr "ForearmTwist2_Joint_M_GRP1.rpt" "ForearmTwist2_Joint_M_GRP1_parentConstraint1.crt"
		;
connectAttr "Elbow_Joint_M_CTR1.t" "ForearmTwist2_Joint_M_GRP1_parentConstraint1.tg[0].tt"
		;
connectAttr "Elbow_Joint_M_CTR1.rp" "ForearmTwist2_Joint_M_GRP1_parentConstraint1.tg[0].trp"
		;
connectAttr "Elbow_Joint_M_CTR1.rpt" "ForearmTwist2_Joint_M_GRP1_parentConstraint1.tg[0].trt"
		;
connectAttr "Elbow_Joint_M_CTR1.r" "ForearmTwist2_Joint_M_GRP1_parentConstraint1.tg[0].tr"
		;
connectAttr "Elbow_Joint_M_CTR1.ro" "ForearmTwist2_Joint_M_GRP1_parentConstraint1.tg[0].tro"
		;
connectAttr "Elbow_Joint_M_CTR1.s" "ForearmTwist2_Joint_M_GRP1_parentConstraint1.tg[0].ts"
		;
connectAttr "Elbow_Joint_M_CTR1.pm" "ForearmTwist2_Joint_M_GRP1_parentConstraint1.tg[0].tpm"
		;
connectAttr "ForearmTwist2_Joint_M_GRP1_parentConstraint1.w0" "ForearmTwist2_Joint_M_GRP1_parentConstraint1.tg[0].tw"
		;
connectAttr "ForearmTwist_ForearmTwist1_M_JNT.group" "ForearmTwist1_Joint_M_GRP0.joint"
		;
connectAttr "ForearmTwist_Limb_M_NODE.jointGroups" "ForearmTwist1_Joint_M_GRP0.limb"
		;
connectAttr "ForearmTwist_Limb_M_NODE.usedGroups" "ForearmTwist1_Joint_M_GRP0.used"
		;
connectAttr "ForearmTwist1_Joint_M_GRP0_parentConstraint1.ctx" "ForearmTwist1_Joint_M_GRP0.tx"
		;
connectAttr "ForearmTwist1_Joint_M_GRP0_parentConstraint1.cty" "ForearmTwist1_Joint_M_GRP0.ty"
		;
connectAttr "ForearmTwist1_Joint_M_GRP0_parentConstraint1.ctz" "ForearmTwist1_Joint_M_GRP0.tz"
		;
connectAttr "ForearmTwist1_Joint_M_GRP0_parentConstraint1.crx" "ForearmTwist1_Joint_M_GRP0.rx"
		;
connectAttr "ForearmTwist1_Joint_M_GRP0_parentConstraint1.cry" "ForearmTwist1_Joint_M_GRP0.ry"
		;
connectAttr "ForearmTwist1_Joint_M_GRP0_parentConstraint1.crz" "ForearmTwist1_Joint_M_GRP0.rz"
		;
connectAttr "Control_Disp.di" "ForearmTwist1_Joint_M_CTR0.do";
connectAttr "ForearmTwist1_Joint_M_GRP0.control" "ForearmTwist1_Joint_M_CTR0.group"
		;
connectAttr "ForearmTwist1_Joint_M_GRP0.ro" "ForearmTwist1_Joint_M_GRP0_parentConstraint1.cro"
		;
connectAttr "ForearmTwist1_Joint_M_GRP0.pim" "ForearmTwist1_Joint_M_GRP0_parentConstraint1.cpim"
		;
connectAttr "ForearmTwist1_Joint_M_GRP0.rp" "ForearmTwist1_Joint_M_GRP0_parentConstraint1.crp"
		;
connectAttr "ForearmTwist1_Joint_M_GRP0.rpt" "ForearmTwist1_Joint_M_GRP0_parentConstraint1.crt"
		;
connectAttr "Elbow_Joint_M_CTR1.t" "ForearmTwist1_Joint_M_GRP0_parentConstraint1.tg[0].tt"
		;
connectAttr "Elbow_Joint_M_CTR1.rp" "ForearmTwist1_Joint_M_GRP0_parentConstraint1.tg[0].trp"
		;
connectAttr "Elbow_Joint_M_CTR1.rpt" "ForearmTwist1_Joint_M_GRP0_parentConstraint1.tg[0].trt"
		;
connectAttr "Elbow_Joint_M_CTR1.r" "ForearmTwist1_Joint_M_GRP0_parentConstraint1.tg[0].tr"
		;
connectAttr "Elbow_Joint_M_CTR1.ro" "ForearmTwist1_Joint_M_GRP0_parentConstraint1.tg[0].tro"
		;
connectAttr "Elbow_Joint_M_CTR1.s" "ForearmTwist1_Joint_M_GRP0_parentConstraint1.tg[0].ts"
		;
connectAttr "Elbow_Joint_M_CTR1.pm" "ForearmTwist1_Joint_M_GRP0_parentConstraint1.tg[0].tpm"
		;
connectAttr "ForearmTwist1_Joint_M_GRP0_parentConstraint1.w0" "ForearmTwist1_Joint_M_GRP0_parentConstraint1.tg[0].tw"
		;
connectAttr "TEMP_RigRoot.limbs" "Ring_Limb_M_NODE.rigRoot";
connectAttr "Arm_Limb_M_NODE.limbChildren" "Ring_Limb_M_NODE.limbParent";
connectAttr "Ring_Ring1_M_JNT.group" "Ring1_Joint_M_GRP0.joint";
connectAttr "Ring_Limb_M_NODE.jointGroups" "Ring1_Joint_M_GRP0.limb";
connectAttr "Ring_Limb_M_NODE.usedGroups" "Ring1_Joint_M_GRP0.used";
connectAttr "Ring1_Joint_M_GRP0_parentConstraint1.ctx" "Ring1_Joint_M_GRP0.tx";
connectAttr "Ring1_Joint_M_GRP0_parentConstraint1.cty" "Ring1_Joint_M_GRP0.ty";
connectAttr "Ring1_Joint_M_GRP0_parentConstraint1.ctz" "Ring1_Joint_M_GRP0.tz";
connectAttr "Ring1_Joint_M_GRP0_parentConstraint1.crx" "Ring1_Joint_M_GRP0.rx";
connectAttr "Ring1_Joint_M_GRP0_parentConstraint1.cry" "Ring1_Joint_M_GRP0.ry";
connectAttr "Ring1_Joint_M_GRP0_parentConstraint1.crz" "Ring1_Joint_M_GRP0.rz";
connectAttr "Ring1_Joint_M_CTR0_translateX.o" "Ring1_Joint_M_CTR0.tx";
connectAttr "Ring1_Joint_M_CTR0_translateY.o" "Ring1_Joint_M_CTR0.ty";
connectAttr "Ring1_Joint_M_CTR0_translateZ.o" "Ring1_Joint_M_CTR0.tz";
connectAttr "Ring1_Joint_M_CTR0_rotateX.o" "Ring1_Joint_M_CTR0.rx";
connectAttr "Ring1_Joint_M_CTR0_rotateY.o" "Ring1_Joint_M_CTR0.ry";
connectAttr "Ring1_Joint_M_CTR0_rotateZ.o" "Ring1_Joint_M_CTR0.rz";
connectAttr "Ring1_Joint_M_CTR0_scaleX.o" "Ring1_Joint_M_CTR0.sx";
connectAttr "Ring1_Joint_M_CTR0_scaleY.o" "Ring1_Joint_M_CTR0.sy";
connectAttr "Ring1_Joint_M_CTR0_scaleZ.o" "Ring1_Joint_M_CTR0.sz";
connectAttr "Control_Disp.di" "Ring1_Joint_M_CTR0.do";
connectAttr "Ring1_Joint_M_GRP0.control" "Ring1_Joint_M_CTR0.group";
connectAttr "Ring_Ring2_M_JNT.group" "Ring2_Joint_M_GRP1.joint";
connectAttr "Ring_Limb_M_NODE.jointGroups" "Ring2_Joint_M_GRP1.limb";
connectAttr "Ring_Limb_M_NODE.usedGroups" "Ring2_Joint_M_GRP1.used";
connectAttr "Ring2_Joint_M_CTR1_translateX.o" "Ring2_Joint_M_CTR1.tx";
connectAttr "Ring2_Joint_M_CTR1_translateY.o" "Ring2_Joint_M_CTR1.ty";
connectAttr "Ring2_Joint_M_CTR1_translateZ.o" "Ring2_Joint_M_CTR1.tz";
connectAttr "Ring2_Joint_M_CTR1_rotateX.o" "Ring2_Joint_M_CTR1.rx";
connectAttr "Ring2_Joint_M_CTR1_rotateY.o" "Ring2_Joint_M_CTR1.ry";
connectAttr "Ring2_Joint_M_CTR1_rotateZ.o" "Ring2_Joint_M_CTR1.rz";
connectAttr "Ring2_Joint_M_CTR1_scaleX.o" "Ring2_Joint_M_CTR1.sx";
connectAttr "Ring2_Joint_M_CTR1_scaleY.o" "Ring2_Joint_M_CTR1.sy";
connectAttr "Ring2_Joint_M_CTR1_scaleZ.o" "Ring2_Joint_M_CTR1.sz";
connectAttr "Control_Disp.di" "Ring2_Joint_M_CTR1.do";
connectAttr "Ring2_Joint_M_GRP1.control" "Ring2_Joint_M_CTR1.group";
connectAttr "Ring_Ring3_M_JNT.group" "Ring3_Joint_M_GRP2.joint";
connectAttr "Ring_Limb_M_NODE.jointGroups" "Ring3_Joint_M_GRP2.limb";
connectAttr "Ring_Limb_M_NODE.usedGroups" "Ring3_Joint_M_GRP2.used";
connectAttr "Ring3_Joint_M_CTR2_translateX.o" "Ring3_Joint_M_CTR2.tx";
connectAttr "Ring3_Joint_M_CTR2_translateY.o" "Ring3_Joint_M_CTR2.ty";
connectAttr "Ring3_Joint_M_CTR2_translateZ.o" "Ring3_Joint_M_CTR2.tz";
connectAttr "Ring3_Joint_M_CTR2_rotateX.o" "Ring3_Joint_M_CTR2.rx";
connectAttr "Ring3_Joint_M_CTR2_rotateY.o" "Ring3_Joint_M_CTR2.ry";
connectAttr "Ring3_Joint_M_CTR2_rotateZ.o" "Ring3_Joint_M_CTR2.rz";
connectAttr "Ring3_Joint_M_CTR2_scaleX.o" "Ring3_Joint_M_CTR2.sx";
connectAttr "Ring3_Joint_M_CTR2_scaleY.o" "Ring3_Joint_M_CTR2.sy";
connectAttr "Ring3_Joint_M_CTR2_scaleZ.o" "Ring3_Joint_M_CTR2.sz";
connectAttr "Control_Disp.di" "Ring3_Joint_M_CTR2.do";
connectAttr "Ring3_Joint_M_GRP2.control" "Ring3_Joint_M_CTR2.group";
connectAttr "Ring_Ring4_M_JNT.group" "Ring4_Joint_M_GRP3.joint";
connectAttr "Ring_Limb_M_NODE.jointGroups" "Ring4_Joint_M_GRP3.limb";
connectAttr "Ring_Limb_M_NODE.usedGroups" "Ring4_Joint_M_GRP3.used";
connectAttr "Ring4_Joint_M_CTR3_translateX.o" "Ring4_Joint_M_CTR3.tx";
connectAttr "Ring4_Joint_M_CTR3_translateY.o" "Ring4_Joint_M_CTR3.ty";
connectAttr "Ring4_Joint_M_CTR3_translateZ.o" "Ring4_Joint_M_CTR3.tz";
connectAttr "Ring4_Joint_M_CTR3_rotateX.o" "Ring4_Joint_M_CTR3.rx";
connectAttr "Ring4_Joint_M_CTR3_rotateY.o" "Ring4_Joint_M_CTR3.ry";
connectAttr "Ring4_Joint_M_CTR3_rotateZ.o" "Ring4_Joint_M_CTR3.rz";
connectAttr "Ring4_Joint_M_CTR3_scaleX.o" "Ring4_Joint_M_CTR3.sx";
connectAttr "Ring4_Joint_M_CTR3_scaleY.o" "Ring4_Joint_M_CTR3.sy";
connectAttr "Ring4_Joint_M_CTR3_scaleZ.o" "Ring4_Joint_M_CTR3.sz";
connectAttr "Control_Disp.di" "Ring4_Joint_M_CTR3.do";
connectAttr "Ring4_Joint_M_GRP3.control" "Ring4_Joint_M_CTR3.group";
connectAttr "Ring1_Joint_M_GRP0.ro" "Ring1_Joint_M_GRP0_parentConstraint1.cro";
connectAttr "Ring1_Joint_M_GRP0.pim" "Ring1_Joint_M_GRP0_parentConstraint1.cpim"
		;
connectAttr "Ring1_Joint_M_GRP0.rp" "Ring1_Joint_M_GRP0_parentConstraint1.crp";
connectAttr "Ring1_Joint_M_GRP0.rpt" "Ring1_Joint_M_GRP0_parentConstraint1.crt";
connectAttr "Wrist_Joint_M_CTR2.t" "Ring1_Joint_M_GRP0_parentConstraint1.tg[0].tt"
		;
connectAttr "Wrist_Joint_M_CTR2.rp" "Ring1_Joint_M_GRP0_parentConstraint1.tg[0].trp"
		;
connectAttr "Wrist_Joint_M_CTR2.rpt" "Ring1_Joint_M_GRP0_parentConstraint1.tg[0].trt"
		;
connectAttr "Wrist_Joint_M_CTR2.r" "Ring1_Joint_M_GRP0_parentConstraint1.tg[0].tr"
		;
connectAttr "Wrist_Joint_M_CTR2.ro" "Ring1_Joint_M_GRP0_parentConstraint1.tg[0].tro"
		;
connectAttr "Wrist_Joint_M_CTR2.s" "Ring1_Joint_M_GRP0_parentConstraint1.tg[0].ts"
		;
connectAttr "Wrist_Joint_M_CTR2.pm" "Ring1_Joint_M_GRP0_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ring1_Joint_M_GRP0_parentConstraint1.w0" "Ring1_Joint_M_GRP0_parentConstraint1.tg[0].tw"
		;
connectAttr "TEMP_RigRoot.limbs" "Pinkie_Limb_M_NODE.rigRoot";
connectAttr "Arm_Limb_M_NODE.limbChildren" "Pinkie_Limb_M_NODE.limbParent";
connectAttr "Pinkie_Pinkey1_M_JNT.group" "Pinkey1_Joint_M_GRP0.joint";
connectAttr "Pinkie_Limb_M_NODE.jointGroups" "Pinkey1_Joint_M_GRP0.limb";
connectAttr "Pinkie_Limb_M_NODE.usedGroups" "Pinkey1_Joint_M_GRP0.used";
connectAttr "Pinkey1_Joint_M_GRP0_parentConstraint1.ctx" "Pinkey1_Joint_M_GRP0.tx"
		;
connectAttr "Pinkey1_Joint_M_GRP0_parentConstraint1.cty" "Pinkey1_Joint_M_GRP0.ty"
		;
connectAttr "Pinkey1_Joint_M_GRP0_parentConstraint1.ctz" "Pinkey1_Joint_M_GRP0.tz"
		;
connectAttr "Pinkey1_Joint_M_GRP0_parentConstraint1.crx" "Pinkey1_Joint_M_GRP0.rx"
		;
connectAttr "Pinkey1_Joint_M_GRP0_parentConstraint1.cry" "Pinkey1_Joint_M_GRP0.ry"
		;
connectAttr "Pinkey1_Joint_M_GRP0_parentConstraint1.crz" "Pinkey1_Joint_M_GRP0.rz"
		;
connectAttr "Pinkey1_Joint_M_CTR0_translateX.o" "Pinkey1_Joint_M_CTR0.tx";
connectAttr "Pinkey1_Joint_M_CTR0_translateY.o" "Pinkey1_Joint_M_CTR0.ty";
connectAttr "Pinkey1_Joint_M_CTR0_translateZ.o" "Pinkey1_Joint_M_CTR0.tz";
connectAttr "Pinkey1_Joint_M_CTR0_rotateX.o" "Pinkey1_Joint_M_CTR0.rx";
connectAttr "Pinkey1_Joint_M_CTR0_rotateY.o" "Pinkey1_Joint_M_CTR0.ry";
connectAttr "Pinkey1_Joint_M_CTR0_rotateZ.o" "Pinkey1_Joint_M_CTR0.rz";
connectAttr "Pinkey1_Joint_M_CTR0_scaleX.o" "Pinkey1_Joint_M_CTR0.sx";
connectAttr "Pinkey1_Joint_M_CTR0_scaleY.o" "Pinkey1_Joint_M_CTR0.sy";
connectAttr "Pinkey1_Joint_M_CTR0_scaleZ.o" "Pinkey1_Joint_M_CTR0.sz";
connectAttr "Control_Disp.di" "Pinkey1_Joint_M_CTR0.do";
connectAttr "Pinkey1_Joint_M_GRP0.control" "Pinkey1_Joint_M_CTR0.group";
connectAttr "Pinkie_Pinkey2_M_JNT.group" "Pinkey2_Joint_M_GRP1.joint";
connectAttr "Pinkie_Limb_M_NODE.jointGroups" "Pinkey2_Joint_M_GRP1.limb";
connectAttr "Pinkie_Limb_M_NODE.usedGroups" "Pinkey2_Joint_M_GRP1.used";
connectAttr "Pinkey2_Joint_M_CTR1_translateX.o" "Pinkey2_Joint_M_CTR1.tx";
connectAttr "Pinkey2_Joint_M_CTR1_translateY.o" "Pinkey2_Joint_M_CTR1.ty";
connectAttr "Pinkey2_Joint_M_CTR1_translateZ.o" "Pinkey2_Joint_M_CTR1.tz";
connectAttr "Pinkey2_Joint_M_CTR1_rotateX.o" "Pinkey2_Joint_M_CTR1.rx";
connectAttr "Pinkey2_Joint_M_CTR1_rotateY.o" "Pinkey2_Joint_M_CTR1.ry";
connectAttr "Pinkey2_Joint_M_CTR1_rotateZ.o" "Pinkey2_Joint_M_CTR1.rz";
connectAttr "Pinkey2_Joint_M_CTR1_scaleX.o" "Pinkey2_Joint_M_CTR1.sx";
connectAttr "Pinkey2_Joint_M_CTR1_scaleY.o" "Pinkey2_Joint_M_CTR1.sy";
connectAttr "Pinkey2_Joint_M_CTR1_scaleZ.o" "Pinkey2_Joint_M_CTR1.sz";
connectAttr "Control_Disp.di" "Pinkey2_Joint_M_CTR1.do";
connectAttr "Pinkey2_Joint_M_GRP1.control" "Pinkey2_Joint_M_CTR1.group";
connectAttr "Pinkie_Pinkey3_M_JNT.group" "Pinkey3_Joint_M_GRP2.joint";
connectAttr "Pinkie_Limb_M_NODE.jointGroups" "Pinkey3_Joint_M_GRP2.limb";
connectAttr "Pinkie_Limb_M_NODE.usedGroups" "Pinkey3_Joint_M_GRP2.used";
connectAttr "Pinkey3_Joint_M_CTR2_translateX.o" "Pinkey3_Joint_M_CTR2.tx";
connectAttr "Pinkey3_Joint_M_CTR2_translateY.o" "Pinkey3_Joint_M_CTR2.ty";
connectAttr "Pinkey3_Joint_M_CTR2_translateZ.o" "Pinkey3_Joint_M_CTR2.tz";
connectAttr "Pinkey3_Joint_M_CTR2_rotateX.o" "Pinkey3_Joint_M_CTR2.rx";
connectAttr "Pinkey3_Joint_M_CTR2_rotateY.o" "Pinkey3_Joint_M_CTR2.ry";
connectAttr "Pinkey3_Joint_M_CTR2_rotateZ.o" "Pinkey3_Joint_M_CTR2.rz";
connectAttr "Pinkey3_Joint_M_CTR2_scaleX.o" "Pinkey3_Joint_M_CTR2.sx";
connectAttr "Pinkey3_Joint_M_CTR2_scaleY.o" "Pinkey3_Joint_M_CTR2.sy";
connectAttr "Pinkey3_Joint_M_CTR2_scaleZ.o" "Pinkey3_Joint_M_CTR2.sz";
connectAttr "Control_Disp.di" "Pinkey3_Joint_M_CTR2.do";
connectAttr "Pinkey3_Joint_M_GRP2.control" "Pinkey3_Joint_M_CTR2.group";
connectAttr "Pinkie_Pinkey4_M_JNT.group" "Pinkey4_Joint_M_GRP3.joint";
connectAttr "Pinkie_Limb_M_NODE.jointGroups" "Pinkey4_Joint_M_GRP3.limb";
connectAttr "Pinkie_Limb_M_NODE.usedGroups" "Pinkey4_Joint_M_GRP3.used";
connectAttr "Pinkey4_Joint_M_CTR3_translateX.o" "Pinkey4_Joint_M_CTR3.tx";
connectAttr "Pinkey4_Joint_M_CTR3_translateY.o" "Pinkey4_Joint_M_CTR3.ty";
connectAttr "Pinkey4_Joint_M_CTR3_translateZ.o" "Pinkey4_Joint_M_CTR3.tz";
connectAttr "Pinkey4_Joint_M_CTR3_rotateX.o" "Pinkey4_Joint_M_CTR3.rx";
connectAttr "Pinkey4_Joint_M_CTR3_rotateY.o" "Pinkey4_Joint_M_CTR3.ry";
connectAttr "Pinkey4_Joint_M_CTR3_rotateZ.o" "Pinkey4_Joint_M_CTR3.rz";
connectAttr "Pinkey4_Joint_M_CTR3_scaleX.o" "Pinkey4_Joint_M_CTR3.sx";
connectAttr "Pinkey4_Joint_M_CTR3_scaleY.o" "Pinkey4_Joint_M_CTR3.sy";
connectAttr "Pinkey4_Joint_M_CTR3_scaleZ.o" "Pinkey4_Joint_M_CTR3.sz";
connectAttr "Control_Disp.di" "Pinkey4_Joint_M_CTR3.do";
connectAttr "Pinkey4_Joint_M_GRP3.control" "Pinkey4_Joint_M_CTR3.group";
connectAttr "Pinkey1_Joint_M_GRP0.ro" "Pinkey1_Joint_M_GRP0_parentConstraint1.cro"
		;
connectAttr "Pinkey1_Joint_M_GRP0.pim" "Pinkey1_Joint_M_GRP0_parentConstraint1.cpim"
		;
connectAttr "Pinkey1_Joint_M_GRP0.rp" "Pinkey1_Joint_M_GRP0_parentConstraint1.crp"
		;
connectAttr "Pinkey1_Joint_M_GRP0.rpt" "Pinkey1_Joint_M_GRP0_parentConstraint1.crt"
		;
connectAttr "Wrist_Joint_M_CTR2.t" "Pinkey1_Joint_M_GRP0_parentConstraint1.tg[0].tt"
		;
connectAttr "Wrist_Joint_M_CTR2.rp" "Pinkey1_Joint_M_GRP0_parentConstraint1.tg[0].trp"
		;
connectAttr "Wrist_Joint_M_CTR2.rpt" "Pinkey1_Joint_M_GRP0_parentConstraint1.tg[0].trt"
		;
connectAttr "Wrist_Joint_M_CTR2.r" "Pinkey1_Joint_M_GRP0_parentConstraint1.tg[0].tr"
		;
connectAttr "Wrist_Joint_M_CTR2.ro" "Pinkey1_Joint_M_GRP0_parentConstraint1.tg[0].tro"
		;
connectAttr "Wrist_Joint_M_CTR2.s" "Pinkey1_Joint_M_GRP0_parentConstraint1.tg[0].ts"
		;
connectAttr "Wrist_Joint_M_CTR2.pm" "Pinkey1_Joint_M_GRP0_parentConstraint1.tg[0].tpm"
		;
connectAttr "Pinkey1_Joint_M_GRP0_parentConstraint1.w0" "Pinkey1_Joint_M_GRP0_parentConstraint1.tg[0].tw"
		;
connectAttr "TEMP_RigRoot.limbs" "Arm_Limb_M_NODE.rigRoot";
connectAttr "Clav_Limb_M_NODE.limbChildren" "Arm_Limb_M_NODE.limbParent";
connectAttr "Arm_Shoulder_M_JNT.group" "Shoulder_Joint_M_GRP0.joint";
connectAttr "Arm_Limb_M_NODE.jointGroups" "Shoulder_Joint_M_GRP0.limb";
connectAttr "Arm_Limb_M_NODE.usedGroups" "Shoulder_Joint_M_GRP0.used";
connectAttr "Shoulder_Joint_M_GRP0_parentConstraint1.ctx" "Shoulder_Joint_M_GRP0.tx"
		;
connectAttr "Shoulder_Joint_M_GRP0_parentConstraint1.cty" "Shoulder_Joint_M_GRP0.ty"
		;
connectAttr "Shoulder_Joint_M_GRP0_parentConstraint1.ctz" "Shoulder_Joint_M_GRP0.tz"
		;
connectAttr "Shoulder_Joint_M_GRP0_parentConstraint1.crx" "Shoulder_Joint_M_GRP0.rx"
		;
connectAttr "Shoulder_Joint_M_GRP0_parentConstraint1.cry" "Shoulder_Joint_M_GRP0.ry"
		;
connectAttr "Shoulder_Joint_M_GRP0_parentConstraint1.crz" "Shoulder_Joint_M_GRP0.rz"
		;
connectAttr "Control_Disp.di" "Shoulder_Joint_M_CTR0.do";
connectAttr "Shoulder_Joint_M_GRP0.control" "Shoulder_Joint_M_CTR0.group";
connectAttr "Arm_Elbow_M_JNT.group" "Elbow_Joint_M_GRP1.joint";
connectAttr "Arm_Limb_M_NODE.jointGroups" "Elbow_Joint_M_GRP1.limb";
connectAttr "Arm_Limb_M_NODE.usedGroups" "Elbow_Joint_M_GRP1.used";
connectAttr "Control_Disp.di" "Elbow_Joint_M_CTR1.do";
connectAttr "Elbow_Joint_M_GRP1.control" "Elbow_Joint_M_CTR1.group";
connectAttr "Arm_Wrist_M_JNT.group" "Wrist_Joint_M_GRP2.joint";
connectAttr "Arm_Limb_M_NODE.jointGroups" "Wrist_Joint_M_GRP2.limb";
connectAttr "Arm_Limb_M_NODE.usedGroups" "Wrist_Joint_M_GRP2.used";
connectAttr "Wrist_Joint_M_CTR2_translateX.o" "Wrist_Joint_M_CTR2.tx";
connectAttr "Wrist_Joint_M_CTR2_translateY.o" "Wrist_Joint_M_CTR2.ty";
connectAttr "Wrist_Joint_M_CTR2_translateZ.o" "Wrist_Joint_M_CTR2.tz";
connectAttr "Wrist_Joint_M_CTR2_rotateX.o" "Wrist_Joint_M_CTR2.rx";
connectAttr "Wrist_Joint_M_CTR2_rotateY.o" "Wrist_Joint_M_CTR2.ry";
connectAttr "Wrist_Joint_M_CTR2_rotateZ.o" "Wrist_Joint_M_CTR2.rz";
connectAttr "Wrist_Joint_M_CTR2_scaleX.o" "Wrist_Joint_M_CTR2.sx";
connectAttr "Wrist_Joint_M_CTR2_scaleY.o" "Wrist_Joint_M_CTR2.sy";
connectAttr "Wrist_Joint_M_CTR2_scaleZ.o" "Wrist_Joint_M_CTR2.sz";
connectAttr "Control_Disp.di" "Wrist_Joint_M_CTR2.do";
connectAttr "Wrist_Joint_M_GRP2.control" "Wrist_Joint_M_CTR2.group";
connectAttr "Shoulder_Joint_M_GRP0.ro" "Shoulder_Joint_M_GRP0_parentConstraint1.cro"
		;
connectAttr "Shoulder_Joint_M_GRP0.pim" "Shoulder_Joint_M_GRP0_parentConstraint1.cpim"
		;
connectAttr "Shoulder_Joint_M_GRP0.rp" "Shoulder_Joint_M_GRP0_parentConstraint1.crp"
		;
connectAttr "Shoulder_Joint_M_GRP0.rpt" "Shoulder_Joint_M_GRP0_parentConstraint1.crt"
		;
connectAttr "Clav01_Joint_M_CTR0.t" "Shoulder_Joint_M_GRP0_parentConstraint1.tg[0].tt"
		;
connectAttr "Clav01_Joint_M_CTR0.rp" "Shoulder_Joint_M_GRP0_parentConstraint1.tg[0].trp"
		;
connectAttr "Clav01_Joint_M_CTR0.rpt" "Shoulder_Joint_M_GRP0_parentConstraint1.tg[0].trt"
		;
connectAttr "Clav01_Joint_M_CTR0.r" "Shoulder_Joint_M_GRP0_parentConstraint1.tg[0].tr"
		;
connectAttr "Clav01_Joint_M_CTR0.ro" "Shoulder_Joint_M_GRP0_parentConstraint1.tg[0].tro"
		;
connectAttr "Clav01_Joint_M_CTR0.s" "Shoulder_Joint_M_GRP0_parentConstraint1.tg[0].ts"
		;
connectAttr "Clav01_Joint_M_CTR0.pm" "Shoulder_Joint_M_GRP0_parentConstraint1.tg[0].tpm"
		;
connectAttr "Shoulder_Joint_M_GRP0_parentConstraint1.w0" "Shoulder_Joint_M_GRP0_parentConstraint1.tg[0].tw"
		;
connectAttr "TEMP_RigRoot.limbs" "Clav_Limb_M_NODE.rigRoot";
connectAttr "Clav_Clav01_M_JNT.group" "Clav01_Joint_M_GRP0.joint";
connectAttr "Clav_Limb_M_NODE.jointGroups" "Clav01_Joint_M_GRP0.limb";
connectAttr "Clav_Limb_M_NODE.usedGroups" "Clav01_Joint_M_GRP0.used";
connectAttr "Control_Disp.di" "Clav01_Joint_M_CTR0.do";
connectAttr "Clav01_Joint_M_GRP0.control" "Clav01_Joint_M_CTR0.group";
connectAttr "TEMP_RigRoot.limbs" "Middle_Limb_M_NODE.rigRoot";
connectAttr "Arm_Limb_M_NODE.limbChildren" "Middle_Limb_M_NODE.limbParent";
connectAttr "Middle_Middle1_M_JNT.group" "Middle1_Joint_M_GRP0.joint";
connectAttr "Middle_Limb_M_NODE.jointGroups" "Middle1_Joint_M_GRP0.limb";
connectAttr "Middle_Limb_M_NODE.usedGroups" "Middle1_Joint_M_GRP0.used";
connectAttr "Middle1_Joint_M_GRP0_parentConstraint1.ctx" "Middle1_Joint_M_GRP0.tx"
		;
connectAttr "Middle1_Joint_M_GRP0_parentConstraint1.cty" "Middle1_Joint_M_GRP0.ty"
		;
connectAttr "Middle1_Joint_M_GRP0_parentConstraint1.ctz" "Middle1_Joint_M_GRP0.tz"
		;
connectAttr "Middle1_Joint_M_GRP0_parentConstraint1.crx" "Middle1_Joint_M_GRP0.rx"
		;
connectAttr "Middle1_Joint_M_GRP0_parentConstraint1.cry" "Middle1_Joint_M_GRP0.ry"
		;
connectAttr "Middle1_Joint_M_GRP0_parentConstraint1.crz" "Middle1_Joint_M_GRP0.rz"
		;
connectAttr "Middle1_Joint_M_CTR0_translateX.o" "Middle1_Joint_M_CTR0.tx";
connectAttr "Middle1_Joint_M_CTR0_translateY.o" "Middle1_Joint_M_CTR0.ty";
connectAttr "Middle1_Joint_M_CTR0_translateZ.o" "Middle1_Joint_M_CTR0.tz";
connectAttr "Middle1_Joint_M_CTR0_rotateX.o" "Middle1_Joint_M_CTR0.rx";
connectAttr "Middle1_Joint_M_CTR0_rotateY.o" "Middle1_Joint_M_CTR0.ry";
connectAttr "Middle1_Joint_M_CTR0_rotateZ.o" "Middle1_Joint_M_CTR0.rz";
connectAttr "Middle1_Joint_M_CTR0_scaleX.o" "Middle1_Joint_M_CTR0.sx";
connectAttr "Middle1_Joint_M_CTR0_scaleY.o" "Middle1_Joint_M_CTR0.sy";
connectAttr "Middle1_Joint_M_CTR0_scaleZ.o" "Middle1_Joint_M_CTR0.sz";
connectAttr "Control_Disp.di" "Middle1_Joint_M_CTR0.do";
connectAttr "Middle1_Joint_M_GRP0.control" "Middle1_Joint_M_CTR0.group";
connectAttr "Middle_Middle2_M_JNT.group" "Middle2_Joint_M_GRP1.joint";
connectAttr "Middle_Limb_M_NODE.jointGroups" "Middle2_Joint_M_GRP1.limb";
connectAttr "Middle_Limb_M_NODE.usedGroups" "Middle2_Joint_M_GRP1.used";
connectAttr "Middle2_Joint_M_CTR1_translateX.o" "Middle2_Joint_M_CTR1.tx";
connectAttr "Middle2_Joint_M_CTR1_translateY.o" "Middle2_Joint_M_CTR1.ty";
connectAttr "Middle2_Joint_M_CTR1_translateZ.o" "Middle2_Joint_M_CTR1.tz";
connectAttr "Middle2_Joint_M_CTR1_rotateX.o" "Middle2_Joint_M_CTR1.rx";
connectAttr "Middle2_Joint_M_CTR1_rotateY.o" "Middle2_Joint_M_CTR1.ry";
connectAttr "Middle2_Joint_M_CTR1_rotateZ.o" "Middle2_Joint_M_CTR1.rz";
connectAttr "Middle2_Joint_M_CTR1_scaleX.o" "Middle2_Joint_M_CTR1.sx";
connectAttr "Middle2_Joint_M_CTR1_scaleY.o" "Middle2_Joint_M_CTR1.sy";
connectAttr "Middle2_Joint_M_CTR1_scaleZ.o" "Middle2_Joint_M_CTR1.sz";
connectAttr "Control_Disp.di" "Middle2_Joint_M_CTR1.do";
connectAttr "Middle2_Joint_M_GRP1.control" "Middle2_Joint_M_CTR1.group";
connectAttr "Middle_Middle3_M_JNT.group" "Middle3_Joint_M_GRP2.joint";
connectAttr "Middle_Limb_M_NODE.jointGroups" "Middle3_Joint_M_GRP2.limb";
connectAttr "Middle_Limb_M_NODE.usedGroups" "Middle3_Joint_M_GRP2.used";
connectAttr "Middle3_Joint_M_CTR2_translateX.o" "Middle3_Joint_M_CTR2.tx";
connectAttr "Middle3_Joint_M_CTR2_translateY.o" "Middle3_Joint_M_CTR2.ty";
connectAttr "Middle3_Joint_M_CTR2_translateZ.o" "Middle3_Joint_M_CTR2.tz";
connectAttr "Middle3_Joint_M_CTR2_rotateX.o" "Middle3_Joint_M_CTR2.rx";
connectAttr "Middle3_Joint_M_CTR2_rotateY.o" "Middle3_Joint_M_CTR2.ry";
connectAttr "Middle3_Joint_M_CTR2_rotateZ.o" "Middle3_Joint_M_CTR2.rz";
connectAttr "Middle3_Joint_M_CTR2_scaleX.o" "Middle3_Joint_M_CTR2.sx";
connectAttr "Middle3_Joint_M_CTR2_scaleY.o" "Middle3_Joint_M_CTR2.sy";
connectAttr "Middle3_Joint_M_CTR2_scaleZ.o" "Middle3_Joint_M_CTR2.sz";
connectAttr "Control_Disp.di" "Middle3_Joint_M_CTR2.do";
connectAttr "Middle3_Joint_M_GRP2.control" "Middle3_Joint_M_CTR2.group";
connectAttr "Middle_Middle4_M_JNT.group" "Middle4_Joint_M_GRP3.joint";
connectAttr "Middle_Limb_M_NODE.jointGroups" "Middle4_Joint_M_GRP3.limb";
connectAttr "Middle_Limb_M_NODE.usedGroups" "Middle4_Joint_M_GRP3.used";
connectAttr "Middle4_Joint_M_CTR3_translateX.o" "Middle4_Joint_M_CTR3.tx";
connectAttr "Middle4_Joint_M_CTR3_translateY.o" "Middle4_Joint_M_CTR3.ty";
connectAttr "Middle4_Joint_M_CTR3_translateZ.o" "Middle4_Joint_M_CTR3.tz";
connectAttr "Middle4_Joint_M_CTR3_rotateX.o" "Middle4_Joint_M_CTR3.rx";
connectAttr "Middle4_Joint_M_CTR3_rotateY.o" "Middle4_Joint_M_CTR3.ry";
connectAttr "Middle4_Joint_M_CTR3_rotateZ.o" "Middle4_Joint_M_CTR3.rz";
connectAttr "Middle4_Joint_M_CTR3_scaleX.o" "Middle4_Joint_M_CTR3.sx";
connectAttr "Middle4_Joint_M_CTR3_scaleY.o" "Middle4_Joint_M_CTR3.sy";
connectAttr "Middle4_Joint_M_CTR3_scaleZ.o" "Middle4_Joint_M_CTR3.sz";
connectAttr "Control_Disp.di" "Middle4_Joint_M_CTR3.do";
connectAttr "Middle4_Joint_M_GRP3.control" "Middle4_Joint_M_CTR3.group";
connectAttr "Middle1_Joint_M_GRP0.ro" "Middle1_Joint_M_GRP0_parentConstraint1.cro"
		;
connectAttr "Middle1_Joint_M_GRP0.pim" "Middle1_Joint_M_GRP0_parentConstraint1.cpim"
		;
connectAttr "Middle1_Joint_M_GRP0.rp" "Middle1_Joint_M_GRP0_parentConstraint1.crp"
		;
connectAttr "Middle1_Joint_M_GRP0.rpt" "Middle1_Joint_M_GRP0_parentConstraint1.crt"
		;
connectAttr "Wrist_Joint_M_CTR2.t" "Middle1_Joint_M_GRP0_parentConstraint1.tg[0].tt"
		;
connectAttr "Wrist_Joint_M_CTR2.rp" "Middle1_Joint_M_GRP0_parentConstraint1.tg[0].trp"
		;
connectAttr "Wrist_Joint_M_CTR2.rpt" "Middle1_Joint_M_GRP0_parentConstraint1.tg[0].trt"
		;
connectAttr "Wrist_Joint_M_CTR2.r" "Middle1_Joint_M_GRP0_parentConstraint1.tg[0].tr"
		;
connectAttr "Wrist_Joint_M_CTR2.ro" "Middle1_Joint_M_GRP0_parentConstraint1.tg[0].tro"
		;
connectAttr "Wrist_Joint_M_CTR2.s" "Middle1_Joint_M_GRP0_parentConstraint1.tg[0].ts"
		;
connectAttr "Wrist_Joint_M_CTR2.pm" "Middle1_Joint_M_GRP0_parentConstraint1.tg[0].tpm"
		;
connectAttr "Middle1_Joint_M_GRP0_parentConstraint1.w0" "Middle1_Joint_M_GRP0_parentConstraint1.tg[0].tw"
		;
connectAttr "TEMP_RigRoot.limbs" "Index_Limb_M_NODE.rigRoot";
connectAttr "Arm_Limb_M_NODE.limbChildren" "Index_Limb_M_NODE.limbParent";
connectAttr "Index_Index1_M_JNT.group" "Index1_Joint_M_GRP0.joint";
connectAttr "Index_Limb_M_NODE.jointGroups" "Index1_Joint_M_GRP0.limb";
connectAttr "Index_Limb_M_NODE.usedGroups" "Index1_Joint_M_GRP0.used";
connectAttr "Index1_Joint_M_GRP0_parentConstraint1.ctx" "Index1_Joint_M_GRP0.tx"
		;
connectAttr "Index1_Joint_M_GRP0_parentConstraint1.cty" "Index1_Joint_M_GRP0.ty"
		;
connectAttr "Index1_Joint_M_GRP0_parentConstraint1.ctz" "Index1_Joint_M_GRP0.tz"
		;
connectAttr "Index1_Joint_M_GRP0_parentConstraint1.crx" "Index1_Joint_M_GRP0.rx"
		;
connectAttr "Index1_Joint_M_GRP0_parentConstraint1.cry" "Index1_Joint_M_GRP0.ry"
		;
connectAttr "Index1_Joint_M_GRP0_parentConstraint1.crz" "Index1_Joint_M_GRP0.rz"
		;
connectAttr "Index1_Joint_M_CTR0_translateX.o" "Index1_Joint_M_CTR0.tx";
connectAttr "Index1_Joint_M_CTR0_translateY.o" "Index1_Joint_M_CTR0.ty";
connectAttr "Index1_Joint_M_CTR0_translateZ.o" "Index1_Joint_M_CTR0.tz";
connectAttr "Index1_Joint_M_CTR0_rotateX.o" "Index1_Joint_M_CTR0.rx";
connectAttr "Index1_Joint_M_CTR0_rotateY.o" "Index1_Joint_M_CTR0.ry";
connectAttr "Index1_Joint_M_CTR0_rotateZ.o" "Index1_Joint_M_CTR0.rz";
connectAttr "Index1_Joint_M_CTR0_scaleX.o" "Index1_Joint_M_CTR0.sx";
connectAttr "Index1_Joint_M_CTR0_scaleY.o" "Index1_Joint_M_CTR0.sy";
connectAttr "Index1_Joint_M_CTR0_scaleZ.o" "Index1_Joint_M_CTR0.sz";
connectAttr "Control_Disp.di" "Index1_Joint_M_CTR0.do";
connectAttr "Index1_Joint_M_GRP0.control" "Index1_Joint_M_CTR0.group";
connectAttr "Index_Index2_M_JNT.group" "Index2_Joint_M_GRP1.joint";
connectAttr "Index_Limb_M_NODE.jointGroups" "Index2_Joint_M_GRP1.limb";
connectAttr "Index_Limb_M_NODE.usedGroups" "Index2_Joint_M_GRP1.used";
connectAttr "Index2_Joint_M_CTR1_translateX.o" "Index2_Joint_M_CTR1.tx";
connectAttr "Index2_Joint_M_CTR1_translateY.o" "Index2_Joint_M_CTR1.ty";
connectAttr "Index2_Joint_M_CTR1_translateZ.o" "Index2_Joint_M_CTR1.tz";
connectAttr "Index2_Joint_M_CTR1_rotateX.o" "Index2_Joint_M_CTR1.rx";
connectAttr "Index2_Joint_M_CTR1_rotateY.o" "Index2_Joint_M_CTR1.ry";
connectAttr "Index2_Joint_M_CTR1_rotateZ.o" "Index2_Joint_M_CTR1.rz";
connectAttr "Index2_Joint_M_CTR1_scaleX.o" "Index2_Joint_M_CTR1.sx";
connectAttr "Index2_Joint_M_CTR1_scaleY.o" "Index2_Joint_M_CTR1.sy";
connectAttr "Index2_Joint_M_CTR1_scaleZ.o" "Index2_Joint_M_CTR1.sz";
connectAttr "Control_Disp.di" "Index2_Joint_M_CTR1.do";
connectAttr "Index2_Joint_M_GRP1.control" "Index2_Joint_M_CTR1.group";
connectAttr "Index_Index3_M_JNT.group" "Index3_Joint_M_GRP2.joint";
connectAttr "Index_Limb_M_NODE.jointGroups" "Index3_Joint_M_GRP2.limb";
connectAttr "Index_Limb_M_NODE.usedGroups" "Index3_Joint_M_GRP2.used";
connectAttr "Index3_Joint_M_CTR2_translateX.o" "Index3_Joint_M_CTR2.tx";
connectAttr "Index3_Joint_M_CTR2_translateY.o" "Index3_Joint_M_CTR2.ty";
connectAttr "Index3_Joint_M_CTR2_translateZ.o" "Index3_Joint_M_CTR2.tz";
connectAttr "Index3_Joint_M_CTR2_rotateX.o" "Index3_Joint_M_CTR2.rx";
connectAttr "Index3_Joint_M_CTR2_rotateY.o" "Index3_Joint_M_CTR2.ry";
connectAttr "Index3_Joint_M_CTR2_rotateZ.o" "Index3_Joint_M_CTR2.rz";
connectAttr "Index3_Joint_M_CTR2_scaleX.o" "Index3_Joint_M_CTR2.sx";
connectAttr "Index3_Joint_M_CTR2_scaleY.o" "Index3_Joint_M_CTR2.sy";
connectAttr "Index3_Joint_M_CTR2_scaleZ.o" "Index3_Joint_M_CTR2.sz";
connectAttr "Control_Disp.di" "Index3_Joint_M_CTR2.do";
connectAttr "Index3_Joint_M_GRP2.control" "Index3_Joint_M_CTR2.group";
connectAttr "Index_Index4_M_JNT.group" "Index4_Joint_M_GRP3.joint";
connectAttr "Index_Limb_M_NODE.jointGroups" "Index4_Joint_M_GRP3.limb";
connectAttr "Index_Limb_M_NODE.usedGroups" "Index4_Joint_M_GRP3.used";
connectAttr "Index4_Joint_M_CTR3_translateX.o" "Index4_Joint_M_CTR3.tx";
connectAttr "Index4_Joint_M_CTR3_translateY.o" "Index4_Joint_M_CTR3.ty";
connectAttr "Index4_Joint_M_CTR3_translateZ.o" "Index4_Joint_M_CTR3.tz";
connectAttr "Index4_Joint_M_CTR3_rotateX.o" "Index4_Joint_M_CTR3.rx";
connectAttr "Index4_Joint_M_CTR3_rotateY.o" "Index4_Joint_M_CTR3.ry";
connectAttr "Index4_Joint_M_CTR3_rotateZ.o" "Index4_Joint_M_CTR3.rz";
connectAttr "Index4_Joint_M_CTR3_scaleX.o" "Index4_Joint_M_CTR3.sx";
connectAttr "Index4_Joint_M_CTR3_scaleY.o" "Index4_Joint_M_CTR3.sy";
connectAttr "Index4_Joint_M_CTR3_scaleZ.o" "Index4_Joint_M_CTR3.sz";
connectAttr "Control_Disp.di" "Index4_Joint_M_CTR3.do";
connectAttr "Index4_Joint_M_GRP3.control" "Index4_Joint_M_CTR3.group";
connectAttr "Index1_Joint_M_GRP0.ro" "Index1_Joint_M_GRP0_parentConstraint1.cro"
		;
connectAttr "Index1_Joint_M_GRP0.pim" "Index1_Joint_M_GRP0_parentConstraint1.cpim"
		;
connectAttr "Index1_Joint_M_GRP0.rp" "Index1_Joint_M_GRP0_parentConstraint1.crp"
		;
connectAttr "Index1_Joint_M_GRP0.rpt" "Index1_Joint_M_GRP0_parentConstraint1.crt"
		;
connectAttr "Wrist_Joint_M_CTR2.t" "Index1_Joint_M_GRP0_parentConstraint1.tg[0].tt"
		;
connectAttr "Wrist_Joint_M_CTR2.rp" "Index1_Joint_M_GRP0_parentConstraint1.tg[0].trp"
		;
connectAttr "Wrist_Joint_M_CTR2.rpt" "Index1_Joint_M_GRP0_parentConstraint1.tg[0].trt"
		;
connectAttr "Wrist_Joint_M_CTR2.r" "Index1_Joint_M_GRP0_parentConstraint1.tg[0].tr"
		;
connectAttr "Wrist_Joint_M_CTR2.ro" "Index1_Joint_M_GRP0_parentConstraint1.tg[0].tro"
		;
connectAttr "Wrist_Joint_M_CTR2.s" "Index1_Joint_M_GRP0_parentConstraint1.tg[0].ts"
		;
connectAttr "Wrist_Joint_M_CTR2.pm" "Index1_Joint_M_GRP0_parentConstraint1.tg[0].tpm"
		;
connectAttr "Index1_Joint_M_GRP0_parentConstraint1.w0" "Index1_Joint_M_GRP0_parentConstraint1.tg[0].tw"
		;
connectAttr "TEMP_RigRoot.limbs" "Thumb_Limb_M_NODE.rigRoot";
connectAttr "Arm_Limb_M_NODE.limbChildren" "Thumb_Limb_M_NODE.limbParent";
connectAttr "Thumb_Thumb1_M_JNT.group" "Thumb1_Joint_M_GRP0.joint";
connectAttr "Thumb_Limb_M_NODE.jointGroups" "Thumb1_Joint_M_GRP0.limb";
connectAttr "Thumb_Limb_M_NODE.usedGroups" "Thumb1_Joint_M_GRP0.used";
connectAttr "Thumb1_Joint_M_GRP0_parentConstraint1.ctx" "Thumb1_Joint_M_GRP0.tx"
		;
connectAttr "Thumb1_Joint_M_GRP0_parentConstraint1.cty" "Thumb1_Joint_M_GRP0.ty"
		;
connectAttr "Thumb1_Joint_M_GRP0_parentConstraint1.ctz" "Thumb1_Joint_M_GRP0.tz"
		;
connectAttr "Thumb1_Joint_M_GRP0_parentConstraint1.crx" "Thumb1_Joint_M_GRP0.rx"
		;
connectAttr "Thumb1_Joint_M_GRP0_parentConstraint1.cry" "Thumb1_Joint_M_GRP0.ry"
		;
connectAttr "Thumb1_Joint_M_GRP0_parentConstraint1.crz" "Thumb1_Joint_M_GRP0.rz"
		;
connectAttr "Thumb1_Joint_M_CTR0_translateX.o" "Thumb1_Joint_M_CTR0.tx";
connectAttr "Thumb1_Joint_M_CTR0_translateY.o" "Thumb1_Joint_M_CTR0.ty";
connectAttr "Thumb1_Joint_M_CTR0_translateZ.o" "Thumb1_Joint_M_CTR0.tz";
connectAttr "Thumb1_Joint_M_CTR0_rotateX.o" "Thumb1_Joint_M_CTR0.rx";
connectAttr "Thumb1_Joint_M_CTR0_rotateY.o" "Thumb1_Joint_M_CTR0.ry";
connectAttr "Thumb1_Joint_M_CTR0_rotateZ.o" "Thumb1_Joint_M_CTR0.rz";
connectAttr "Thumb1_Joint_M_CTR0_scaleX.o" "Thumb1_Joint_M_CTR0.sx";
connectAttr "Thumb1_Joint_M_CTR0_scaleY.o" "Thumb1_Joint_M_CTR0.sy";
connectAttr "Thumb1_Joint_M_CTR0_scaleZ.o" "Thumb1_Joint_M_CTR0.sz";
connectAttr "Control_Disp.di" "Thumb1_Joint_M_CTR0.do";
connectAttr "Thumb1_Joint_M_GRP0.control" "Thumb1_Joint_M_CTR0.group";
connectAttr "Thumb_Thumb2_M_JNT.group" "Thumb2_Joint_M_GRP1.joint";
connectAttr "Thumb_Limb_M_NODE.jointGroups" "Thumb2_Joint_M_GRP1.limb";
connectAttr "Thumb_Limb_M_NODE.usedGroups" "Thumb2_Joint_M_GRP1.used";
connectAttr "Thumb2_Joint_M_CTR1_translateX.o" "Thumb2_Joint_M_CTR1.tx";
connectAttr "Thumb2_Joint_M_CTR1_translateY.o" "Thumb2_Joint_M_CTR1.ty";
connectAttr "Thumb2_Joint_M_CTR1_translateZ.o" "Thumb2_Joint_M_CTR1.tz";
connectAttr "Thumb2_Joint_M_CTR1_rotateX.o" "Thumb2_Joint_M_CTR1.rx";
connectAttr "Thumb2_Joint_M_CTR1_rotateY.o" "Thumb2_Joint_M_CTR1.ry";
connectAttr "Thumb2_Joint_M_CTR1_rotateZ.o" "Thumb2_Joint_M_CTR1.rz";
connectAttr "Thumb2_Joint_M_CTR1_scaleX.o" "Thumb2_Joint_M_CTR1.sx";
connectAttr "Thumb2_Joint_M_CTR1_scaleY.o" "Thumb2_Joint_M_CTR1.sy";
connectAttr "Thumb2_Joint_M_CTR1_scaleZ.o" "Thumb2_Joint_M_CTR1.sz";
connectAttr "Control_Disp.di" "Thumb2_Joint_M_CTR1.do";
connectAttr "Thumb2_Joint_M_GRP1.control" "Thumb2_Joint_M_CTR1.group";
connectAttr "Thumb_Thumb3_M_JNT.group" "Thumb3_Joint_M_GRP2.joint";
connectAttr "Thumb_Limb_M_NODE.jointGroups" "Thumb3_Joint_M_GRP2.limb";
connectAttr "Thumb_Limb_M_NODE.usedGroups" "Thumb3_Joint_M_GRP2.used";
connectAttr "Thumb3_Joint_M_CTR2_translateX.o" "Thumb3_Joint_M_CTR2.tx";
connectAttr "Thumb3_Joint_M_CTR2_translateY.o" "Thumb3_Joint_M_CTR2.ty";
connectAttr "Thumb3_Joint_M_CTR2_translateZ.o" "Thumb3_Joint_M_CTR2.tz";
connectAttr "Thumb3_Joint_M_CTR2_rotateX.o" "Thumb3_Joint_M_CTR2.rx";
connectAttr "Thumb3_Joint_M_CTR2_rotateY.o" "Thumb3_Joint_M_CTR2.ry";
connectAttr "Thumb3_Joint_M_CTR2_rotateZ.o" "Thumb3_Joint_M_CTR2.rz";
connectAttr "Thumb3_Joint_M_CTR2_scaleX.o" "Thumb3_Joint_M_CTR2.sx";
connectAttr "Thumb3_Joint_M_CTR2_scaleY.o" "Thumb3_Joint_M_CTR2.sy";
connectAttr "Thumb3_Joint_M_CTR2_scaleZ.o" "Thumb3_Joint_M_CTR2.sz";
connectAttr "Control_Disp.di" "Thumb3_Joint_M_CTR2.do";
connectAttr "Thumb3_Joint_M_GRP2.control" "Thumb3_Joint_M_CTR2.group";
connectAttr "Thumb_Thumb4_M_JNT.group" "Thumb4_Joint_M_GRP3.joint";
connectAttr "Thumb_Limb_M_NODE.jointGroups" "Thumb4_Joint_M_GRP3.limb";
connectAttr "Thumb_Limb_M_NODE.usedGroups" "Thumb4_Joint_M_GRP3.used";
connectAttr "Thumb4_Joint_M_CTR3_translateX.o" "Thumb4_Joint_M_CTR3.tx";
connectAttr "Thumb4_Joint_M_CTR3_translateY.o" "Thumb4_Joint_M_CTR3.ty";
connectAttr "Thumb4_Joint_M_CTR3_translateZ.o" "Thumb4_Joint_M_CTR3.tz";
connectAttr "Thumb4_Joint_M_CTR3_rotateX.o" "Thumb4_Joint_M_CTR3.rx";
connectAttr "Thumb4_Joint_M_CTR3_rotateY.o" "Thumb4_Joint_M_CTR3.ry";
connectAttr "Thumb4_Joint_M_CTR3_rotateZ.o" "Thumb4_Joint_M_CTR3.rz";
connectAttr "Thumb4_Joint_M_CTR3_scaleX.o" "Thumb4_Joint_M_CTR3.sx";
connectAttr "Thumb4_Joint_M_CTR3_scaleY.o" "Thumb4_Joint_M_CTR3.sy";
connectAttr "Thumb4_Joint_M_CTR3_scaleZ.o" "Thumb4_Joint_M_CTR3.sz";
connectAttr "Control_Disp.di" "Thumb4_Joint_M_CTR3.do";
connectAttr "Thumb4_Joint_M_GRP3.control" "Thumb4_Joint_M_CTR3.group";
connectAttr "Thumb1_Joint_M_GRP0.ro" "Thumb1_Joint_M_GRP0_parentConstraint1.cro"
		;
connectAttr "Thumb1_Joint_M_GRP0.pim" "Thumb1_Joint_M_GRP0_parentConstraint1.cpim"
		;
connectAttr "Thumb1_Joint_M_GRP0.rp" "Thumb1_Joint_M_GRP0_parentConstraint1.crp"
		;
connectAttr "Thumb1_Joint_M_GRP0.rpt" "Thumb1_Joint_M_GRP0_parentConstraint1.crt"
		;
connectAttr "Wrist_Joint_M_CTR2.t" "Thumb1_Joint_M_GRP0_parentConstraint1.tg[0].tt"
		;
connectAttr "Wrist_Joint_M_CTR2.rp" "Thumb1_Joint_M_GRP0_parentConstraint1.tg[0].trp"
		;
connectAttr "Wrist_Joint_M_CTR2.rpt" "Thumb1_Joint_M_GRP0_parentConstraint1.tg[0].trt"
		;
connectAttr "Wrist_Joint_M_CTR2.r" "Thumb1_Joint_M_GRP0_parentConstraint1.tg[0].tr"
		;
connectAttr "Wrist_Joint_M_CTR2.ro" "Thumb1_Joint_M_GRP0_parentConstraint1.tg[0].tro"
		;
connectAttr "Wrist_Joint_M_CTR2.s" "Thumb1_Joint_M_GRP0_parentConstraint1.tg[0].ts"
		;
connectAttr "Wrist_Joint_M_CTR2.pm" "Thumb1_Joint_M_GRP0_parentConstraint1.tg[0].tpm"
		;
connectAttr "Thumb1_Joint_M_GRP0_parentConstraint1.w0" "Thumb1_Joint_M_GRP0_parentConstraint1.tg[0].tw"
		;
connectAttr "TEMP_RigRoot.meshesParentGroup" "MESHES.rigRoot";
connectAttr "groupId3.id" "Arm_MeshShape.iog.og[0].gid";
connectAttr "Mesh_Human_Biped_01_lambert2SG.mwc" "Arm_MeshShape.iog.og[0].gco";
connectAttr "skinCluster1GroupId.id" "Arm_MeshShape.iog.og[1].gid";
connectAttr "skinCluster1Set.mwc" "Arm_MeshShape.iog.og[1].gco";
connectAttr "groupId5.id" "Arm_MeshShape.iog.og[2].gid";
connectAttr "tweakSet1.mwc" "Arm_MeshShape.iog.og[2].gco";
connectAttr "Meshes_Disp.di" "Arm_MeshShape.do";
connectAttr "TEMP_RigRoot.meshes" "Arm_MeshShape.rigRoot";
connectAttr "skinCluster1.og[0]" "Arm_MeshShape.i";
connectAttr "tweak1.vl[0].vt[0]" "Arm_MeshShape.twl";
connectAttr "skinCluster1.pfrsMeshes" "Arm_MeshShape.pfrsSkinCluster";
connectAttr "groupId2.id" "Arm_Mesh1Shape.iog.og[0].gid";
connectAttr "Mesh_Human_Biped_01_lambert2SG.mwc" "Arm_Mesh1Shape.iog.og[0].gco";
connectAttr "Meshes_Disp.di" "Arm_Mesh1Shape.do";
connectAttr "Arm_MeshShape.backupMesh" "Arm_Mesh1Shape.backupMesh";
connectAttr "TEMP_RigRoot.attachPoints" "ATTACH_POINTS.rigRoot";
connectAttr "TEMP_RigRoot.ghosts" "GHOSTS.rigRoot";
connectAttr "TEMP_RigRoot.controlTemplates" "CONTROL_SHAPE_TEMPLATES.rigRoot";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "LControlsMaterialSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "MControlsMaterialSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "RControlsMaterialSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Mesh_Human_Biped_01_lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "LControlsMaterialSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "MControlsMaterialSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "RControlsMaterialSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Mesh_Human_Biped_01_lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[3]" "Control_Disp1.id";
connectAttr "layerManager.dli[4]" "Joint_Disp1.id";
connectAttr "lambert2.oc" "Mesh_Human_Biped_01_lambert2SG.ss";
connectAttr "Arm_Mesh1Shape.iog.og[0]" "Mesh_Human_Biped_01_lambert2SG.dsm" -na;
connectAttr "Arm_MeshShape.iog.og[0]" "Mesh_Human_Biped_01_lambert2SG.dsm" -na;
connectAttr "groupId2.msg" "Mesh_Human_Biped_01_lambert2SG.gn" -na;
connectAttr "groupId3.msg" "Mesh_Human_Biped_01_lambert2SG.gn" -na;
connectAttr "groupId6.msg" "Mesh_Human_Biped_01_lambert2SG.gn" -na;
connectAttr "groupId7.msg" "Mesh_Human_Biped_01_lambert2SG.gn" -na;
connectAttr "Mesh_Human_Biped_01_lambert2SG.msg" "materialInfo3.sg";
connectAttr "lambert2.msg" "materialInfo3.m";
connectAttr "layerManager.dli[1]" "Control_Disp.id";
connectAttr "layerManager.dli[2]" "Joint_Disp.id";
connectAttr "layerManager.dli[5]" "Meshes_Disp.id";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "TempMaterial.msg" "materialInfo1.m";
connectAttr "TempMaterial.oc" "lambert2SG.ss";
connectAttr "Cylinder_PolyShape.iog" "lambert2SG.dsm" -na;
connectAttr "Cube_PolyShape.iog" "lambert2SG.dsm" -na;
connectAttr "Sphere_PolyShape.iog" "lambert2SG.dsm" -na;
connectAttr "LControlsMaterial.oc" "LControlsMaterialSG.ss";
connectAttr "TEMP_RigRoot.controlMtrL" "LControlsMaterialSG.rigRoot";
connectAttr "LControlsMaterialSG.msg" "materialInfo4.sg";
connectAttr "LControlsMaterial.msg" "materialInfo4.m";
connectAttr "LControlsMaterial.msg" "materialInfo4.t" -na;
connectAttr "MControlsMaterial.oc" "MControlsMaterialSG.ss";
connectAttr "TEMP_RigRoot.controlMtrM" "MControlsMaterialSG.rigRoot";
connectAttr "BicepTwist_Joint_M_CTR0Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "ForearmTwist1_Joint_M_CTR0Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "ForearmTwist2_Joint_M_CTR1Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Ring2_Joint_M_CTR1Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Ring1_Joint_M_CTR0Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Ring3_Joint_M_CTR2Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Ring4_Joint_M_CTR3Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Pinkey2_Joint_M_CTR1Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Pinkey1_Joint_M_CTR0Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Pinkey3_Joint_M_CTR2Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Pinkey4_Joint_M_CTR3Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Elbow_Joint_M_CTR1Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Shoulder_Joint_M_CTR0Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Wrist_Joint_M_CTR2Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Clav01_Joint_M_CTR0Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Middle2_Joint_M_CTR1Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Middle1_Joint_M_CTR0Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Middle3_Joint_M_CTR2Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Middle4_Joint_M_CTR3Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Index2_Joint_M_CTR1Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Index1_Joint_M_CTR0Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Index3_Joint_M_CTR2Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Index4_Joint_M_CTR3Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Thumb2_Joint_M_CTR1Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Thumb1_Joint_M_CTR0Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Thumb3_Joint_M_CTR2Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Thumb4_Joint_M_CTR3Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "MControlsMaterialSG.msg" "materialInfo5.sg";
connectAttr "MControlsMaterial.msg" "materialInfo5.m";
connectAttr "MControlsMaterial.msg" "materialInfo5.t" -na;
connectAttr "RControlsMaterial.oc" "RControlsMaterialSG.ss";
connectAttr "TEMP_RigRoot.controlMtrR" "RControlsMaterialSG.rigRoot";
connectAttr "RControlsMaterialSG.msg" "materialInfo6.sg";
connectAttr "RControlsMaterial.msg" "materialInfo6.m";
connectAttr "RControlsMaterial.msg" "materialInfo6.t" -na;
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "Clav_Clav01_M_JNT.wm" "skinCluster1.ma[0]";
connectAttr "Arm_Shoulder_M_JNT.wm" "skinCluster1.ma[1]";
connectAttr "BicepTwist_BicepTwist_M_JNT.wm" "skinCluster1.ma[2]";
connectAttr "Arm_Elbow_M_JNT.wm" "skinCluster1.ma[3]";
connectAttr "ForearmTwist_ForearmTwist1_M_JNT.wm" "skinCluster1.ma[4]";
connectAttr "ForearmTwist_ForearmTwist2_M_JNT.wm" "skinCluster1.ma[5]";
connectAttr "Arm_Wrist_M_JNT.wm" "skinCluster1.ma[6]";
connectAttr "Middle_Middle1_M_JNT.wm" "skinCluster1.ma[7]";
connectAttr "Middle_Middle2_M_JNT.wm" "skinCluster1.ma[8]";
connectAttr "Middle_Middle3_M_JNT.wm" "skinCluster1.ma[9]";
connectAttr "Middle_Middle4_M_JNT.wm" "skinCluster1.ma[10]";
connectAttr "Ring_Ring1_M_JNT.wm" "skinCluster1.ma[11]";
connectAttr "Ring_Ring2_M_JNT.wm" "skinCluster1.ma[12]";
connectAttr "Ring_Ring3_M_JNT.wm" "skinCluster1.ma[13]";
connectAttr "Ring_Ring4_M_JNT.wm" "skinCluster1.ma[14]";
connectAttr "Index_Index1_M_JNT.wm" "skinCluster1.ma[15]";
connectAttr "Index_Index2_M_JNT.wm" "skinCluster1.ma[16]";
connectAttr "Index_Index3_M_JNT.wm" "skinCluster1.ma[17]";
connectAttr "Index_Index4_M_JNT.wm" "skinCluster1.ma[18]";
connectAttr "Pinkie_Pinkey1_M_JNT.wm" "skinCluster1.ma[19]";
connectAttr "Pinkie_Pinkey2_M_JNT.wm" "skinCluster1.ma[20]";
connectAttr "Pinkie_Pinkey3_M_JNT.wm" "skinCluster1.ma[21]";
connectAttr "Pinkie_Pinkey4_M_JNT.wm" "skinCluster1.ma[22]";
connectAttr "Thumb_Thumb1_M_JNT.wm" "skinCluster1.ma[23]";
connectAttr "Thumb_Thumb2_M_JNT.wm" "skinCluster1.ma[24]";
connectAttr "Thumb_Thumb3_M_JNT.wm" "skinCluster1.ma[25]";
connectAttr "Thumb_Thumb4_M_JNT.wm" "skinCluster1.ma[26]";
connectAttr "Clav_Clav01_M_JNT.liw" "skinCluster1.lw[0]";
connectAttr "Arm_Shoulder_M_JNT.liw" "skinCluster1.lw[1]";
connectAttr "BicepTwist_BicepTwist_M_JNT.liw" "skinCluster1.lw[2]";
connectAttr "Arm_Elbow_M_JNT.liw" "skinCluster1.lw[3]";
connectAttr "ForearmTwist_ForearmTwist1_M_JNT.liw" "skinCluster1.lw[4]";
connectAttr "ForearmTwist_ForearmTwist2_M_JNT.liw" "skinCluster1.lw[5]";
connectAttr "Arm_Wrist_M_JNT.liw" "skinCluster1.lw[6]";
connectAttr "Middle_Middle1_M_JNT.liw" "skinCluster1.lw[7]";
connectAttr "Middle_Middle2_M_JNT.liw" "skinCluster1.lw[8]";
connectAttr "Middle_Middle3_M_JNT.liw" "skinCluster1.lw[9]";
connectAttr "Middle_Middle4_M_JNT.liw" "skinCluster1.lw[10]";
connectAttr "Ring_Ring1_M_JNT.liw" "skinCluster1.lw[11]";
connectAttr "Ring_Ring2_M_JNT.liw" "skinCluster1.lw[12]";
connectAttr "Ring_Ring3_M_JNT.liw" "skinCluster1.lw[13]";
connectAttr "Ring_Ring4_M_JNT.liw" "skinCluster1.lw[14]";
connectAttr "Index_Index1_M_JNT.liw" "skinCluster1.lw[15]";
connectAttr "Index_Index2_M_JNT.liw" "skinCluster1.lw[16]";
connectAttr "Index_Index3_M_JNT.liw" "skinCluster1.lw[17]";
connectAttr "Index_Index4_M_JNT.liw" "skinCluster1.lw[18]";
connectAttr "Pinkie_Pinkey1_M_JNT.liw" "skinCluster1.lw[19]";
connectAttr "Pinkie_Pinkey2_M_JNT.liw" "skinCluster1.lw[20]";
connectAttr "Pinkie_Pinkey3_M_JNT.liw" "skinCluster1.lw[21]";
connectAttr "Pinkie_Pinkey4_M_JNT.liw" "skinCluster1.lw[22]";
connectAttr "Thumb_Thumb1_M_JNT.liw" "skinCluster1.lw[23]";
connectAttr "Thumb_Thumb2_M_JNT.liw" "skinCluster1.lw[24]";
connectAttr "Thumb_Thumb3_M_JNT.liw" "skinCluster1.lw[25]";
connectAttr "Thumb_Thumb4_M_JNT.liw" "skinCluster1.lw[26]";
connectAttr "Clav_Clav01_M_JNT.obcc" "skinCluster1.ifcl[0]";
connectAttr "Arm_Shoulder_M_JNT.obcc" "skinCluster1.ifcl[1]";
connectAttr "BicepTwist_BicepTwist_M_JNT.obcc" "skinCluster1.ifcl[2]";
connectAttr "Arm_Elbow_M_JNT.obcc" "skinCluster1.ifcl[3]";
connectAttr "ForearmTwist_ForearmTwist1_M_JNT.obcc" "skinCluster1.ifcl[4]";
connectAttr "ForearmTwist_ForearmTwist2_M_JNT.obcc" "skinCluster1.ifcl[5]";
connectAttr "Arm_Wrist_M_JNT.obcc" "skinCluster1.ifcl[6]";
connectAttr "Middle_Middle1_M_JNT.obcc" "skinCluster1.ifcl[7]";
connectAttr "Middle_Middle2_M_JNT.obcc" "skinCluster1.ifcl[8]";
connectAttr "Middle_Middle3_M_JNT.obcc" "skinCluster1.ifcl[9]";
connectAttr "Middle_Middle4_M_JNT.obcc" "skinCluster1.ifcl[10]";
connectAttr "Ring_Ring1_M_JNT.obcc" "skinCluster1.ifcl[11]";
connectAttr "Ring_Ring2_M_JNT.obcc" "skinCluster1.ifcl[12]";
connectAttr "Ring_Ring3_M_JNT.obcc" "skinCluster1.ifcl[13]";
connectAttr "Ring_Ring4_M_JNT.obcc" "skinCluster1.ifcl[14]";
connectAttr "Index_Index1_M_JNT.obcc" "skinCluster1.ifcl[15]";
connectAttr "Index_Index2_M_JNT.obcc" "skinCluster1.ifcl[16]";
connectAttr "Index_Index3_M_JNT.obcc" "skinCluster1.ifcl[17]";
connectAttr "Index_Index4_M_JNT.obcc" "skinCluster1.ifcl[18]";
connectAttr "Pinkie_Pinkey1_M_JNT.obcc" "skinCluster1.ifcl[19]";
connectAttr "Pinkie_Pinkey2_M_JNT.obcc" "skinCluster1.ifcl[20]";
connectAttr "Pinkie_Pinkey3_M_JNT.obcc" "skinCluster1.ifcl[21]";
connectAttr "Pinkie_Pinkey4_M_JNT.obcc" "skinCluster1.ifcl[22]";
connectAttr "Thumb_Thumb1_M_JNT.obcc" "skinCluster1.ifcl[23]";
connectAttr "Thumb_Thumb2_M_JNT.obcc" "skinCluster1.ifcl[24]";
connectAttr "Thumb_Thumb3_M_JNT.obcc" "skinCluster1.ifcl[25]";
connectAttr "Thumb_Thumb4_M_JNT.obcc" "skinCluster1.ifcl[26]";
connectAttr "Clav_Clav01_M_JNT.msg" "skinCluster1.ptt";
connectAttr "Arm_MeshShapeOrig.w" "groupParts1.ig";
connectAttr "groupId3.id" "groupParts1.gi";
connectAttr "groupParts3.og" "tweak1.ip[0].ig";
connectAttr "groupId5.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "Arm_MeshShape.iog.og[1]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId5.msg" "tweakSet1.gn" -na;
connectAttr "Arm_MeshShape.iog.og[2]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "groupParts1.og" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "TEMP_RigRoot.msg" "bindPose1.m[0]";
connectAttr "JOINTS.msg" "bindPose1.m[1]";
connectAttr "Clav_Clav01_M_JNT.msg" "bindPose1.m[2]";
connectAttr "Arm_Shoulder_M_JNT.msg" "bindPose1.m[3]";
connectAttr "BicepTwist_BicepTwist_M_JNT.msg" "bindPose1.m[4]";
connectAttr "Arm_Elbow_M_JNT.msg" "bindPose1.m[5]";
connectAttr "ForearmTwist_ForearmTwist1_M_JNT.msg" "bindPose1.m[6]";
connectAttr "ForearmTwist_ForearmTwist2_M_JNT.msg" "bindPose1.m[7]";
connectAttr "Arm_Wrist_M_JNT.msg" "bindPose1.m[8]";
connectAttr "Middle_Middle1_M_JNT.msg" "bindPose1.m[9]";
connectAttr "Middle_Middle2_M_JNT.msg" "bindPose1.m[10]";
connectAttr "Middle_Middle3_M_JNT.msg" "bindPose1.m[11]";
connectAttr "Middle_Middle4_M_JNT.msg" "bindPose1.m[12]";
connectAttr "Ring_Ring1_M_JNT.msg" "bindPose1.m[13]";
connectAttr "Ring_Ring2_M_JNT.msg" "bindPose1.m[14]";
connectAttr "Ring_Ring3_M_JNT.msg" "bindPose1.m[15]";
connectAttr "Ring_Ring4_M_JNT.msg" "bindPose1.m[16]";
connectAttr "Index_Index1_M_JNT.msg" "bindPose1.m[17]";
connectAttr "Index_Index2_M_JNT.msg" "bindPose1.m[18]";
connectAttr "Index_Index3_M_JNT.msg" "bindPose1.m[19]";
connectAttr "Index_Index4_M_JNT.msg" "bindPose1.m[20]";
connectAttr "Pinkie_Pinkey1_M_JNT.msg" "bindPose1.m[21]";
connectAttr "Pinkie_Pinkey2_M_JNT.msg" "bindPose1.m[22]";
connectAttr "Pinkie_Pinkey3_M_JNT.msg" "bindPose1.m[23]";
connectAttr "Pinkie_Pinkey4_M_JNT.msg" "bindPose1.m[24]";
connectAttr "Thumb_Thumb1_M_JNT.msg" "bindPose1.m[25]";
connectAttr "Thumb_Thumb2_M_JNT.msg" "bindPose1.m[26]";
connectAttr "Thumb_Thumb3_M_JNT.msg" "bindPose1.m[27]";
connectAttr "Thumb_Thumb4_M_JNT.msg" "bindPose1.m[28]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[3]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[5]" "bindPose1.p[7]";
connectAttr "bindPose1.m[5]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[8]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[8]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[8]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
connectAttr "bindPose1.m[23]" "bindPose1.p[24]";
connectAttr "bindPose1.m[8]" "bindPose1.p[25]";
connectAttr "bindPose1.m[25]" "bindPose1.p[26]";
connectAttr "bindPose1.m[26]" "bindPose1.p[27]";
connectAttr "bindPose1.m[27]" "bindPose1.p[28]";
connectAttr "Clav_Clav01_M_JNT.bps" "bindPose1.wm[2]";
connectAttr "Arm_Shoulder_M_JNT.bps" "bindPose1.wm[3]";
connectAttr "BicepTwist_BicepTwist_M_JNT.bps" "bindPose1.wm[4]";
connectAttr "Arm_Elbow_M_JNT.bps" "bindPose1.wm[5]";
connectAttr "ForearmTwist_ForearmTwist1_M_JNT.bps" "bindPose1.wm[6]";
connectAttr "ForearmTwist_ForearmTwist2_M_JNT.bps" "bindPose1.wm[7]";
connectAttr "Arm_Wrist_M_JNT.bps" "bindPose1.wm[8]";
connectAttr "Middle_Middle1_M_JNT.bps" "bindPose1.wm[9]";
connectAttr "Middle_Middle2_M_JNT.bps" "bindPose1.wm[10]";
connectAttr "Middle_Middle3_M_JNT.bps" "bindPose1.wm[11]";
connectAttr "Middle_Middle4_M_JNT.bps" "bindPose1.wm[12]";
connectAttr "Ring_Ring1_M_JNT.bps" "bindPose1.wm[13]";
connectAttr "Ring_Ring2_M_JNT.bps" "bindPose1.wm[14]";
connectAttr "Ring_Ring3_M_JNT.bps" "bindPose1.wm[15]";
connectAttr "Ring_Ring4_M_JNT.bps" "bindPose1.wm[16]";
connectAttr "Index_Index1_M_JNT.bps" "bindPose1.wm[17]";
connectAttr "Index_Index2_M_JNT.bps" "bindPose1.wm[18]";
connectAttr "Index_Index3_M_JNT.bps" "bindPose1.wm[19]";
connectAttr "Index_Index4_M_JNT.bps" "bindPose1.wm[20]";
connectAttr "Pinkie_Pinkey1_M_JNT.bps" "bindPose1.wm[21]";
connectAttr "Pinkie_Pinkey2_M_JNT.bps" "bindPose1.wm[22]";
connectAttr "Pinkie_Pinkey3_M_JNT.bps" "bindPose1.wm[23]";
connectAttr "Pinkie_Pinkey4_M_JNT.bps" "bindPose1.wm[24]";
connectAttr "Thumb_Thumb1_M_JNT.bps" "bindPose1.wm[25]";
connectAttr "Thumb_Thumb2_M_JNT.bps" "bindPose1.wm[26]";
connectAttr "Thumb_Thumb3_M_JNT.bps" "bindPose1.wm[27]";
connectAttr "Thumb_Thumb4_M_JNT.bps" "bindPose1.wm[28]";
connectAttr "Clav01_Joint_M_CTR0.msg" "Clav01_Joint_M_CTR0_tag.act";
connectAttr "controller1.prep" "Clav01_Joint_M_CTR0_tag.prep";
connectAttr "Elbow_Joint_M_CTR1_tag.pare" "Clav01_Joint_M_CTR0_tag.child[0]";
connectAttr "Wrist_Joint_M_CTR2_tag.pare" "Clav01_Joint_M_CTR0_tag.child[1]";
connectAttr "Shoulder_Joint_M_CTR0_tag.pare" "Clav01_Joint_M_CTR0_tag.child[2]";
connectAttr "Clav01_Joint_M_CTR0_tag.pare" "controller1.child[0]";
connectAttr "Elbow_Joint_M_CTR1.msg" "Elbow_Joint_M_CTR1_tag.act";
connectAttr "Clav01_Joint_M_CTR0_tag.prep" "Elbow_Joint_M_CTR1_tag.prep";
connectAttr "BicepTwist_Joint_M_CTR0_tag.pare" "Elbow_Joint_M_CTR1_tag.child[0]"
		;
connectAttr "ForearmTwist2_Joint_M_CTR1_tag.pare" "Elbow_Joint_M_CTR1_tag.child[1]"
		;
connectAttr "ForearmTwist1_Joint_M_CTR0_tag.pare" "Elbow_Joint_M_CTR1_tag.child[2]"
		;
connectAttr "Index3_Joint_M_CTR2_tag.pare" "Elbow_Joint_M_CTR1_tag.child[3]";
connectAttr "Index4_Joint_M_CTR3_tag.pare" "Elbow_Joint_M_CTR1_tag.child[4]";
connectAttr "Index2_Joint_M_CTR1_tag.pare" "Elbow_Joint_M_CTR1_tag.child[5]";
connectAttr "Index1_Joint_M_CTR0_tag.pare" "Elbow_Joint_M_CTR1_tag.child[6]";
connectAttr "Middle3_Joint_M_CTR2_tag.pare" "Elbow_Joint_M_CTR1_tag.child[7]";
connectAttr "Middle4_Joint_M_CTR3_tag.pare" "Elbow_Joint_M_CTR1_tag.child[8]";
connectAttr "Middle2_Joint_M_CTR1_tag.pare" "Elbow_Joint_M_CTR1_tag.child[9]";
connectAttr "Middle1_Joint_M_CTR0_tag.pare" "Elbow_Joint_M_CTR1_tag.child[10]";
connectAttr "Pinkey3_Joint_M_CTR2_tag.pare" "Elbow_Joint_M_CTR1_tag.child[11]";
connectAttr "Pinkey4_Joint_M_CTR3_tag.pare" "Elbow_Joint_M_CTR1_tag.child[12]";
connectAttr "Pinkey2_Joint_M_CTR1_tag.pare" "Elbow_Joint_M_CTR1_tag.child[13]";
connectAttr "Pinkey1_Joint_M_CTR0_tag.pare" "Elbow_Joint_M_CTR1_tag.child[14]";
connectAttr "Ring3_Joint_M_CTR2_tag.pare" "Elbow_Joint_M_CTR1_tag.child[15]";
connectAttr "Ring4_Joint_M_CTR3_tag.pare" "Elbow_Joint_M_CTR1_tag.child[16]";
connectAttr "Ring2_Joint_M_CTR1_tag.pare" "Elbow_Joint_M_CTR1_tag.child[17]";
connectAttr "Ring1_Joint_M_CTR0_tag.pare" "Elbow_Joint_M_CTR1_tag.child[18]";
connectAttr "Thumb3_Joint_M_CTR2_tag.pare" "Elbow_Joint_M_CTR1_tag.child[19]";
connectAttr "Thumb4_Joint_M_CTR3_tag.pare" "Elbow_Joint_M_CTR1_tag.child[20]";
connectAttr "Thumb2_Joint_M_CTR1_tag.pare" "Elbow_Joint_M_CTR1_tag.child[21]";
connectAttr "Thumb1_Joint_M_CTR0_tag.pare" "Elbow_Joint_M_CTR1_tag.child[22]";
connectAttr "Wrist_Joint_M_CTR2.msg" "Wrist_Joint_M_CTR2_tag.act";
connectAttr "Clav01_Joint_M_CTR0_tag.prep" "Wrist_Joint_M_CTR2_tag.prep";
connectAttr "Shoulder_Joint_M_CTR0.msg" "Shoulder_Joint_M_CTR0_tag.act";
connectAttr "Clav01_Joint_M_CTR0_tag.prep" "Shoulder_Joint_M_CTR0_tag.prep";
connectAttr "BicepTwist_Joint_M_CTR0.msg" "BicepTwist_Joint_M_CTR0_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "BicepTwist_Joint_M_CTR0_tag.prep";
connectAttr "ForearmTwist2_Joint_M_CTR1.msg" "ForearmTwist2_Joint_M_CTR1_tag.act"
		;
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "ForearmTwist2_Joint_M_CTR1_tag.prep";
connectAttr "ForearmTwist1_Joint_M_CTR0.msg" "ForearmTwist1_Joint_M_CTR0_tag.act"
		;
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "ForearmTwist1_Joint_M_CTR0_tag.prep";
connectAttr "Index3_Joint_M_CTR2.msg" "Index3_Joint_M_CTR2_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Index3_Joint_M_CTR2_tag.prep";
connectAttr "Index4_Joint_M_CTR3.msg" "Index4_Joint_M_CTR3_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Index4_Joint_M_CTR3_tag.prep";
connectAttr "Index2_Joint_M_CTR1.msg" "Index2_Joint_M_CTR1_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Index2_Joint_M_CTR1_tag.prep";
connectAttr "Index1_Joint_M_CTR0.msg" "Index1_Joint_M_CTR0_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Index1_Joint_M_CTR0_tag.prep";
connectAttr "Middle3_Joint_M_CTR2.msg" "Middle3_Joint_M_CTR2_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Middle3_Joint_M_CTR2_tag.prep";
connectAttr "Middle4_Joint_M_CTR3.msg" "Middle4_Joint_M_CTR3_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Middle4_Joint_M_CTR3_tag.prep";
connectAttr "Middle2_Joint_M_CTR1.msg" "Middle2_Joint_M_CTR1_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Middle2_Joint_M_CTR1_tag.prep";
connectAttr "Middle1_Joint_M_CTR0.msg" "Middle1_Joint_M_CTR0_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Middle1_Joint_M_CTR0_tag.prep";
connectAttr "Pinkey3_Joint_M_CTR2.msg" "Pinkey3_Joint_M_CTR2_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Pinkey3_Joint_M_CTR2_tag.prep";
connectAttr "Pinkey4_Joint_M_CTR3.msg" "Pinkey4_Joint_M_CTR3_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Pinkey4_Joint_M_CTR3_tag.prep";
connectAttr "Pinkey2_Joint_M_CTR1.msg" "Pinkey2_Joint_M_CTR1_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Pinkey2_Joint_M_CTR1_tag.prep";
connectAttr "Pinkey1_Joint_M_CTR0.msg" "Pinkey1_Joint_M_CTR0_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Pinkey1_Joint_M_CTR0_tag.prep";
connectAttr "Ring3_Joint_M_CTR2.msg" "Ring3_Joint_M_CTR2_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Ring3_Joint_M_CTR2_tag.prep";
connectAttr "Ring4_Joint_M_CTR3.msg" "Ring4_Joint_M_CTR3_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Ring4_Joint_M_CTR3_tag.prep";
connectAttr "Ring2_Joint_M_CTR1.msg" "Ring2_Joint_M_CTR1_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Ring2_Joint_M_CTR1_tag.prep";
connectAttr "Ring1_Joint_M_CTR0.msg" "Ring1_Joint_M_CTR0_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Ring1_Joint_M_CTR0_tag.prep";
connectAttr "Thumb3_Joint_M_CTR2.msg" "Thumb3_Joint_M_CTR2_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Thumb3_Joint_M_CTR2_tag.prep";
connectAttr "Thumb4_Joint_M_CTR3.msg" "Thumb4_Joint_M_CTR3_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Thumb4_Joint_M_CTR3_tag.prep";
connectAttr "Thumb2_Joint_M_CTR1.msg" "Thumb2_Joint_M_CTR1_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Thumb2_Joint_M_CTR1_tag.prep";
connectAttr "Thumb1_Joint_M_CTR0.msg" "Thumb1_Joint_M_CTR0_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Thumb1_Joint_M_CTR0_tag.prep";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set1.gn" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set1.ub[0]";
connectAttr "groupId5.msg" "tweakSet2.gn" -na;
connectAttr "tweak1.msg" "tweakSet2.ub[0]";
connectAttr "Arm_Wrist_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "Control_Disp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "Control_Disp1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "Index4_Joint_M_CTR3_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "Thumb1_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "Shoulder_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "Square_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "GHOSTS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "Thumb_Thumb1_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "Pinkie_Pinkey4_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "skinCluster1GroupId.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "Ring1_Joint_M_CTR0_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "Pinkey1_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "groupParts3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn";
connectAttr "Index_Index2_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "Middle2_Joint_M_CTR1_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "Elbow_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "Ring2_Joint_M_CTR1_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "Pinkey2_Joint_M_CTR1_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "ATTACH_POINTS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn";
connectAttr "Index1_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "Index2_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "skinCluster1Set.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "Index_Index3_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "Arm_Mesh1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn";
connectAttr "lambert2SG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn";
connectAttr "Index2_Joint_M_CTR1_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "Middle1_Joint_M_CTR0_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "sceneConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "Elbow_Joint_M_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "Thumb_Thumb2_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "Wrist_Joint_M_CTR2_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "Ring4_Joint_M_CTR3_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "Thumb2_Joint_M_CTR1_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "Pinkie_Pinkey3_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "Index3_Joint_M_CTR2_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "Pinkey1_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "Index3_Joint_M_CTR2_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "Thumb3_Joint_M_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "Index4_Joint_M_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "MControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "materialInfo4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn";
connectAttr "Pinkey1_Joint_M_CTR0_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "Ring3_Joint_M_CTR2_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "Pinkey3_Joint_M_CTR2_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "Ring1_Joint_M_CTR0_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "Elbow_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "Thumb4_Joint_M_CTR3_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "RControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn"
		;
connectAttr "Pinkey1_Joint_M_CTR0_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn"
		;
connectAttr "Pinkey2_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "Thumb4_Joint_M_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "Middle2_Joint_M_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "Index2_Joint_M_CTR1_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "Index_Index3_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "Arm_Mesh1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn";
connectAttr "Thumb4_Joint_M_CTR3_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "Thumb1_Joint_M_CTR0_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "Ring_Ring3_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "Thumb_Thumb2_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "Index3_Joint_M_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "Ring_Ring2_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn"
		;
connectAttr "Middle4_Joint_M_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "Thumb2_Joint_M_CTR1_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "Pinkie_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "Middle3_Joint_M_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "Index3_Joint_M_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "Sphere_Poly.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn";
connectAttr "Pinkey1_Joint_M_CTR0_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "Thumb1_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn"
		;
connectAttr "Wrist_Joint_M_CTR2_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "Pin_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn";
connectAttr "Thumb2_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "Thumb4_Joint_M_CTR3_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "Thumb1_Joint_M_CTR0_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn"
		;
connectAttr "Pinkey1_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn"
		;
connectAttr "Index3_Joint_M_CTR2_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn"
		;
connectAttr "Middle3_Joint_M_CTR2_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "Thumb_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn"
		;
connectAttr "Pinkey3_Joint_M_CTR2_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "TempMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn";
connectAttr "Ring_Ring3_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn"
		;
connectAttr "Ring3_Joint_M_CTR2_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn"
		;
connectAttr "ForearmTwist_ForearmTwist1_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "Pinkey4_Joint_M_CTR3_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "Thumb1_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "Wrist_Joint_M_CTR2_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "Ring1_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "Pinkey1_Joint_M_CTR0_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "Ring1_Joint_M_CTR0_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn"
		;
connectAttr "BicepTwist_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "Middle3_Joint_M_CTR2_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn"
		;
connectAttr "ForearmTwist_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn"
		;
connectAttr "Arm_Mesh.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn";
connectAttr "Diamond_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn"
		;
connectAttr "Index2_Joint_M_CTR1_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn"
		;
connectAttr "Pinkey1_Joint_M_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn"
		;
connectAttr "Pinkey2_Joint_M_CTR1_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn"
		;
connectAttr "Middle2_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn"
		;
connectAttr "Square_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn";
connectAttr "controller1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn";
connectAttr "lambert2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn";
connectAttr "Index1_Joint_M_CTR0_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn"
		;
connectAttr "Middle4_Joint_M_CTR3_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn"
		;
connectAttr "Middle_Middle2_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn"
		;
connectAttr "Index2_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn"
		;
connectAttr "Thumb2_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn"
		;
connectAttr "Middle1_Joint_M_CTR0_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn"
		;
connectAttr "Ring_Ring2_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn"
		;
connectAttr "MControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn"
		;
connectAttr "LControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn"
		;
connectAttr "Ring2_Joint_M_CTR1_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn"
		;
connectAttr "Ring4_Joint_M_CTR3_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn"
		;
connectAttr "materialInfo1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn";
connectAttr "Ring3_Joint_M_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn"
		;
connectAttr "Thumb3_Joint_M_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn"
		;
connectAttr "Index4_Joint_M_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn"
		;
connectAttr "Ring1_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn"
		;
connectAttr "Ring2_Joint_M_CTR1_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[118].dn"
		;
connectAttr "materialInfo5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn";
connectAttr "Shoulder_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[120].dn"
		;
connectAttr "Middle1_Joint_M_CTR0_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn"
		;
connectAttr "Ring2_Joint_M_CTR1_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn"
		;
connectAttr "Pinkey2_Joint_M_CTR1_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[123].dn"
		;
connectAttr "LControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[124].dn"
		;
connectAttr "Middle2_Joint_M_CTR1_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[125].dn"
		;
connectAttr "Pinkey1_Joint_M_CTR0_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[126].dn"
		;
connectAttr "Cube_PolyShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[127].dn"
		;
connectAttr "Thumb3_Joint_M_CTR2_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[128].dn"
		;
connectAttr "Meshes_Disp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[129].dn";
connectAttr "Pinkey2_Joint_M_CTR1_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[130].dn"
		;
connectAttr "Middle3_Joint_M_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[131].dn"
		;
connectAttr "Arm_MeshShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[132].dn"
		;
connectAttr "Thumb4_Joint_M_CTR3_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[133].dn"
		;
connectAttr "Pinkey3_Joint_M_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[134].dn"
		;
connectAttr "BicepTwist_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[135].dn"
		;
connectAttr "Thumb2_Joint_M_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[136].dn"
		;
connectAttr "Pinkey1_Joint_M_CTR0_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[137].dn"
		;
connectAttr "Middle1_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[138].dn"
		;
connectAttr "Thumb1_Joint_M_CTR0_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[139].dn"
		;
connectAttr "Middle3_Joint_M_CTR2_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[140].dn"
		;
connectAttr "bindPose1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[141].dn";
connectAttr "Middle_Middle2_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[142].dn"
		;
connectAttr "Ring2_Joint_M_CTR1_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[143].dn"
		;
connectAttr "Mesh_Human_Biped_01_lambert2SG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[144].dn"
		;
connectAttr "Arm_Elbow_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[145].dn"
		;
connectAttr "Ring3_Joint_M_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[146].dn"
		;
connectAttr "groupId2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[147].dn";
connectAttr "Thumb3_Joint_M_CTR2_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[148].dn"
		;
connectAttr "Wrist_Joint_M_CTR2_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[149].dn"
		;
connectAttr "Cube_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[150].dn"
		;
connectAttr "LIMBS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[151].dn";
connectAttr "Ring_Ring4_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[152].dn"
		;
connectAttr "Index3_Joint_M_CTR2_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[153].dn"
		;
connectAttr "Thumb2_Joint_M_CTR1_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[154].dn"
		;
connectAttr "groupParts1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[155].dn";
connectAttr "Pinkie_Pinkey3_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[156].dn"
		;
connectAttr "Wrist_Joint_M_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[157].dn"
		;
connectAttr "Pinkey2_Joint_M_CTR1_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[158].dn"
		;
connectAttr "Middle1_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[159].dn"
		;
connectAttr "Pinkey4_Joint_M_CTR3_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[160].dn"
		;
connectAttr "Pinkey2_Joint_M_CTR1_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[161].dn"
		;
connectAttr "Middle_Middle1_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[162].dn"
		;
connectAttr "Index2_Joint_M_CTR1_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[163].dn"
		;
connectAttr "Middle_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[164].dn"
		;
connectAttr "Index1_Joint_M_CTR0_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[165].dn"
		;
connectAttr "Circle_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[166].dn";
connectAttr "Thumb_Thumb1_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[167].dn"
		;
connectAttr "Pinkey4_Joint_M_CTR3_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[168].dn"
		;
connectAttr "Middle3_Joint_M_CTR2_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[169].dn"
		;
connectAttr "Index4_Joint_M_CTR3_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[170].dn"
		;
connectAttr "Ring1_Joint_M_CTR0_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[171].dn"
		;
connectAttr "BicepTwist_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[172].dn"
		;
connectAttr "Thumb2_Joint_M_CTR1_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[173].dn"
		;
connectAttr "Pinkey1_Joint_M_CTR0_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[174].dn"
		;
connectAttr "Ring3_Joint_M_CTR2_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[175].dn"
		;
connectAttr "ForearmTwist2_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[176].dn"
		;
connectAttr "Index2_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[177].dn"
		;
connectAttr "Pinkey3_Joint_M_CTR2_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[178].dn"
		;
connectAttr "Middle3_Joint_M_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[179].dn"
		;
connectAttr "Thumb1_Joint_M_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[180].dn"
		;
connectAttr "Middle1_Joint_M_CTR0_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[181].dn"
		;
connectAttr "Middle3_Joint_M_CTR2_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[182].dn"
		;
connectAttr "Thumb1_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[183].dn"
		;
connectAttr "RControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[184].dn"
		;
connectAttr "Ring_Ring4_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[185].dn"
		;
connectAttr "Index1_Joint_M_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[186].dn"
		;
connectAttr "Ring2_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[187].dn"
		;
connectAttr "Index1_Joint_M_CTR0_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[188].dn"
		;
connectAttr "Middle4_Joint_M_CTR3_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[189].dn"
		;
connectAttr "skinCluster1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[190].dn";
connectAttr "Ring_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[191].dn"
		;
connectAttr "materialInfo6.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[192].dn";
connectAttr "Ring3_Joint_M_CTR2_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[193].dn"
		;
connectAttr "Index2_Joint_M_CTR1_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[194].dn"
		;
connectAttr "BicepTwist_Joint_M_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[195].dn"
		;
connectAttr "ForearmTwist2_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[196].dn"
		;
connectAttr "JOINTS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[197].dn";
connectAttr "Middle2_Joint_M_CTR1_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[198].dn"
		;
connectAttr "Pinkey4_Joint_M_CTR3_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[199].dn"
		;
connectAttr "Pinkey4_Joint_M_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[200].dn"
		;
connectAttr "Clav_Clav01_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[201].dn"
		;
connectAttr "Ring3_Joint_M_CTR2_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[202].dn"
		;
connectAttr "Clav01_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[203].dn"
		;
connectAttr "BicepTwist_BicepTwist_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[204].dn"
		;
connectAttr "Pinkey3_Joint_M_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[205].dn"
		;
connectAttr "MESHES.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[206].dn";
connectAttr "Pinkey3_Joint_M_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[207].dn"
		;
connectAttr "Index1_Joint_M_CTR0_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[208].dn"
		;
connectAttr "ForearmTwist1_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[209].dn"
		;
connectAttr "Shoulder_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[210].dn"
		;
connectAttr "Index3_Joint_M_CTR2_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[211].dn"
		;
connectAttr "Ring2_Joint_M_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[212].dn"
		;
connectAttr "Pinkey2_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[213].dn"
		;
connectAttr "Ring2_Joint_M_CTR1_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[214].dn"
		;
connectAttr "tweakSet2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[215].dn";
connectAttr "ForearmTwist2_Joint_M_GRP1_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[216].dn"
		;
connectAttr "Middle_Middle3_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[217].dn"
		;
connectAttr "Index3_Joint_M_CTR2_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[218].dn"
		;
connectAttr "Thumb2_Joint_M_CTR1_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[219].dn"
		;
connectAttr "Wrist_Joint_M_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[220].dn"
		;
connectAttr "Index1_Joint_M_CTR0_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[221].dn"
		;
connectAttr "Circle_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[222].dn"
		;
connectAttr "Thumb2_Joint_M_CTR1_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[223].dn"
		;
connectAttr "Thumb4_Joint_M_CTR3_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[224].dn"
		;
connectAttr "Sphere_PolyShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[225].dn"
		;
connectAttr "Pinkey4_Joint_M_CTR3_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[226].dn"
		;
connectAttr "Thumb4_Joint_M_CTR3_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[227].dn"
		;
connectAttr "Index2_Joint_M_CTR1_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[228].dn"
		;
connectAttr "Wrist_Joint_M_CTR2_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[229].dn"
		;
connectAttr "Wrist_Joint_M_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[230].dn"
		;
connectAttr "Shoulder_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[231].dn"
		;
connectAttr "Arm_Wrist_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[232].dn"
		;
connectAttr "Index4_Joint_M_CTR3_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[233].dn"
		;
connectAttr "Middle2_Joint_M_CTR1_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[234].dn"
		;
connectAttr "Pin_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[235].dn";
connectAttr "tweak1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[236].dn";
connectAttr "Thumb4_Joint_M_CTR3_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[237].dn"
		;
connectAttr "Thumb1_Joint_M_CTR0_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[238].dn"
		;
connectAttr "Middle4_Joint_M_CTR3_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[239].dn"
		;
connectAttr "Ring2_Joint_M_CTR1_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[240].dn"
		;
connectAttr "ForearmTwist1_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[241].dn"
		;
connectAttr "Thumb3_Joint_M_CTR2_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[242].dn"
		;
connectAttr "Thumb4_Joint_M_CTR3_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[243].dn"
		;
connectAttr "uiConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[244].dn"
		;
connectAttr "CONTROL_SHAPE_TEMPLATES.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[245].dn"
		;
connectAttr "Middle1_Joint_M_CTR0_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[246].dn"
		;
connectAttr "BicepTwist_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[247].dn"
		;
connectAttr "ForearmTwist_ForearmTwist1_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[248].dn"
		;
connectAttr "Thumb4_Joint_M_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[249].dn"
		;
connectAttr "Index_Index2_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[250].dn"
		;
connectAttr "Index4_Joint_M_CTR3_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[251].dn"
		;
connectAttr "Thumb2_Joint_M_CTR1_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[252].dn"
		;
connectAttr "Index4_Joint_M_CTR3_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[253].dn"
		;
connectAttr "Index1_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[254].dn"
		;
connectAttr "Pinkie_Pinkey2_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[255].dn"
		;
connectAttr "Arm_Elbow_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[256].dn"
		;
connectAttr "Index2_Joint_M_CTR1_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[257].dn"
		;
connectAttr "Thumb1_Joint_M_CTR0_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[258].dn"
		;
connectAttr "Middle2_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[259].dn"
		;
connectAttr "Thumb1_Joint_M_CTR0_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[260].dn"
		;
connectAttr "Middle1_Joint_M_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[261].dn"
		;
connectAttr "Thumb3_Joint_M_CTR2_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[262].dn"
		;
connectAttr "Middle1_Joint_M_CTR0_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[263].dn"
		;
connectAttr "Pinkey3_Joint_M_CTR2_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[264].dn"
		;
connectAttr "Index3_Joint_M_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[265].dn"
		;
connectAttr "Cube_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[266].dn";
connectAttr "Index1_Joint_M_CTR0_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[267].dn"
		;
connectAttr "Ring4_Joint_M_CTR3_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[268].dn"
		;
connectAttr "Middle2_Joint_M_CTR1_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[269].dn"
		;
connectAttr "Ring4_Joint_M_CTR3_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[270].dn"
		;
connectAttr "Arm_Shoulder_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[271].dn"
		;
connectAttr "groupId6.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[272].dn";
connectAttr "Thumb3_Joint_M_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[273].dn"
		;
connectAttr "Ring1_Joint_M_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[274].dn"
		;
connectAttr "Pinkey3_Joint_M_CTR2_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[275].dn"
		;
connectAttr "Pinkey1_Joint_M_CTR0_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[276].dn"
		;
connectAttr "Thumb3_Joint_M_CTR2_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[277].dn"
		;
connectAttr "Ring2_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[278].dn"
		;
connectAttr "Pinkey4_Joint_M_CTR3_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[279].dn"
		;
connectAttr "ForearmTwist_ForearmTwist2_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[280].dn"
		;
connectAttr "Middle_Middle4_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[281].dn"
		;
connectAttr "Index2_Joint_M_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[282].dn"
		;
connectAttr "Thumb2_Joint_M_CTR1_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[283].dn"
		;
connectAttr "ForearmTwist1_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[284].dn"
		;
connectAttr "Pinkey4_Joint_M_CTR3_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[285].dn"
		;
connectAttr "Ring1_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[286].dn"
		;
connectAttr "Ring3_Joint_M_CTR2_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[287].dn"
		;
connectAttr "Middle4_Joint_M_CTR3_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[288].dn"
		;
connectAttr "Ring4_Joint_M_CTR3_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[289].dn"
		;
connectAttr "Pinkey3_Joint_M_CTR2_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[290].dn"
		;
connectAttr "Clav_Clav01_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[291].dn"
		;
connectAttr "Pinkey2_Joint_M_CTR1_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[292].dn"
		;
connectAttr "Middle2_Joint_M_CTR1_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[293].dn"
		;
connectAttr "Ring2_Joint_M_CTR1_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[294].dn"
		;
connectAttr "ForearmTwist1_Joint_M_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[295].dn"
		;
connectAttr "Ring4_Joint_M_CTR3_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[296].dn"
		;
connectAttr "Ring1_Joint_M_CTR0_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[297].dn"
		;
connectAttr "Pinkey2_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[298].dn"
		;
connectAttr "Cylinder_Poly.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[299].dn";
connectAttr "Clav01_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[300].dn"
		;
connectAttr "Index4_Joint_M_CTR3_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[301].dn"
		;
connectAttr "Thumb_Thumb4_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[302].dn"
		;
connectAttr "Wrist_Joint_M_CTR2_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[303].dn"
		;
connectAttr "Clav01_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[304].dn"
		;
connectAttr "Thumb1_Joint_M_CTR0_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[305].dn"
		;
connectAttr "Thumb1_Joint_M_CTR0_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[306].dn"
		;
connectAttr "Index1_Joint_M_CTR0_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[307].dn"
		;
connectAttr "Middle1_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[308].dn"
		;
connectAttr "Ring3_Joint_M_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[309].dn"
		;
connectAttr "ForearmTwist1_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[310].dn"
		;
connectAttr "TEMP_RigRoot.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[311].dn";
connectAttr "Ring2_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[312].dn"
		;
connectAttr "Thumb3_Joint_M_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[313].dn"
		;
connectAttr "Pinkie_Pinkey1_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[314].dn"
		;
connectAttr "Middle4_Joint_M_CTR3_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[315].dn"
		;
connectAttr "Ring3_Joint_M_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[316].dn"
		;
connectAttr "Cube_Poly.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[317].dn";
connectAttr "Middle3_Joint_M_CTR2_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[318].dn"
		;
connectAttr "Middle4_Joint_M_CTR3_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[319].dn"
		;
connectAttr "Wrist_Joint_M_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[320].dn"
		;
connectAttr "Pinkie_Pinkey4_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[321].dn"
		;
connectAttr "skinCluster1GroupParts.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[322].dn"
		;
connectAttr "groupId5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[323].dn";
connectAttr "Middle2_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[324].dn"
		;
connectAttr "Ring1_Joint_M_CTR0_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[325].dn"
		;
connectAttr "Ring4_Joint_M_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[326].dn"
		;
connectAttr "Pinkey3_Joint_M_CTR2_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[327].dn"
		;
connectAttr "Pinkey4_Joint_M_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[328].dn"
		;
connectAttr "Pinkey1_Joint_M_CTR0_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[329].dn"
		;
connectAttr "Ring4_Joint_M_CTR3_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[330].dn"
		;
connectAttr "Ring3_Joint_M_CTR2_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[331].dn"
		;
connectAttr "Thumb4_Joint_M_CTR3_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[332].dn"
		;
connectAttr "Ring4_Joint_M_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[333].dn"
		;
connectAttr "Clav_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[334].dn"
		;
connectAttr "materialInfo3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[335].dn";
connectAttr "Pinkey4_Joint_M_CTR3_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[336].dn"
		;
connectAttr "Middle1_Joint_M_CTR0_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[337].dn"
		;
connectAttr "Middle3_Joint_M_CTR2_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[338].dn"
		;
connectAttr "Index4_Joint_M_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[339].dn"
		;
connectAttr "Wrist_Joint_M_CTR2_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[340].dn"
		;
connectAttr "Pinkey3_Joint_M_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[341].dn"
		;
connectAttr "Middle_Middle3_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[342].dn"
		;
connectAttr "Ring4_Joint_M_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[343].dn"
		;
connectAttr "Thumb_Thumb4_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[344].dn"
		;
connectAttr "Index3_Joint_M_CTR2_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[345].dn"
		;
connectAttr "Middle2_Joint_M_CTR1_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[346].dn"
		;
connectAttr "ForearmTwist_ForearmTwist2_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[347].dn"
		;
connectAttr "Thumb3_Joint_M_CTR2_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[348].dn"
		;
connectAttr "Index_Index4_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[349].dn"
		;
connectAttr "Ring_Ring1_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[350].dn"
		;
connectAttr "Middle_Middle1_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[351].dn"
		;
connectAttr "Index3_Joint_M_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[352].dn"
		;
connectAttr "Middle4_Joint_M_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[353].dn"
		;
connectAttr "Elbow_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[354].dn"
		;
connectAttr "Ring3_Joint_M_CTR2_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[355].dn"
		;
connectAttr "Middle4_Joint_M_CTR3_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[356].dn"
		;
connectAttr "Wrist_Joint_M_CTR2_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[357].dn"
		;
connectAttr "Index_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[358].dn"
		;
connectAttr "Index1_Joint_M_CTR0_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[359].dn"
		;
connectAttr "ForearmTwist2_Joint_M_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[360].dn"
		;
connectAttr "Index_Index1_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[361].dn"
		;
connectAttr "Thumb3_Joint_M_CTR2_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[362].dn"
		;
connectAttr "Arm_Shoulder_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[363].dn"
		;
connectAttr "Thumb3_Joint_M_CTR2_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[364].dn"
		;
connectAttr "Pinkey2_Joint_M_CTR1_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[365].dn"
		;
connectAttr "Pinkey3_Joint_M_CTR2_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[366].dn"
		;
connectAttr "Middle4_Joint_M_CTR3_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[367].dn"
		;
connectAttr "Index_Index4_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[368].dn"
		;
connectAttr "Middle3_Joint_M_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[369].dn"
		;
connectAttr "Diamond_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[370].dn";
connectAttr "Ring2_Joint_M_CTR1_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[371].dn"
		;
connectAttr "Index1_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[372].dn"
		;
connectAttr "Middle1_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[373].dn"
		;
connectAttr "Index3_Joint_M_CTR2_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[374].dn"
		;
connectAttr "Middle4_Joint_M_CTR3_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[375].dn"
		;
connectAttr "Arm_MeshShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[376].dn";
connectAttr "Ring3_Joint_M_CTR2_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[377].dn"
		;
connectAttr "Ring1_Joint_M_CTR0_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[378].dn"
		;
connectAttr "Middle3_Joint_M_CTR2_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[379].dn"
		;
connectAttr "Index1_Joint_M_CTR0_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[380].dn"
		;
connectAttr "Index2_Joint_M_CTR1_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[381].dn"
		;
connectAttr "Index4_Joint_M_CTR3_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[382].dn"
		;
connectAttr "groupId3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[383].dn";
connectAttr "Pinkey3_Joint_M_CTR2_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[384].dn"
		;
connectAttr "Arm_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[385].dn"
		;
connectAttr "Pinkey4_Joint_M_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[386].dn"
		;
connectAttr "Index2_Joint_M_CTR1_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[387].dn"
		;
connectAttr "Ring4_Joint_M_CTR3_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[388].dn"
		;
connectAttr "Index1_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[389].dn"
		;
connectAttr "Shoulder_Joint_M_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[390].dn"
		;
connectAttr "Ring1_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[391].dn"
		;
connectAttr "Ring_Ring1_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[392].dn"
		;
connectAttr "skinCluster1Set1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[393].dn"
		;
connectAttr "Index3_Joint_M_CTR2_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[394].dn"
		;
connectAttr "Thumb2_Joint_M_CTR1_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[395].dn"
		;
connectAttr "Ring1_Joint_M_CTR0_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[396].dn"
		;
connectAttr "Index4_Joint_M_CTR3_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[397].dn"
		;
connectAttr "BicepTwist_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[398].dn"
		;
connectAttr "Index4_Joint_M_CTR3_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[399].dn"
		;
connectAttr "tweakSet1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[400].dn";
connectAttr "Middle_Middle4_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[401].dn"
		;
connectAttr "Pinkey4_Joint_M_CTR3_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[402].dn"
		;
connectAttr "Middle4_Joint_M_CTR3_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[403].dn"
		;
connectAttr "Index4_Joint_M_CTR3_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[404].dn"
		;
connectAttr "Middle1_Joint_M_CTR0_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[405].dn"
		;
connectAttr "Pinkie_Pinkey1_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[406].dn"
		;
connectAttr "Thumb_Thumb3_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[407].dn"
		;
connectAttr "Pinkey4_Joint_M_CTR3_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[408].dn"
		;
connectAttr "ForearmTwist2_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[409].dn"
		;
connectAttr "Joint_Disp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[410].dn";
connectAttr "Thumb4_Joint_M_CTR3_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[411].dn"
		;
connectAttr "Middle1_Joint_M_CTR0_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[412].dn"
		;
connectAttr "Pinkey1_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[413].dn"
		;
connectAttr "Clav01_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[414].dn"
		;
connectAttr "Ring1_Joint_M_CTR0_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[415].dn"
		;
connectAttr "groupId7.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[416].dn";
connectAttr "Thumb3_Joint_M_CTR2_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[417].dn"
		;
connectAttr "Middle2_Joint_M_CTR1_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[418].dn"
		;
connectAttr "Cylinder_PolyShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[419].dn"
		;
connectAttr "Pinkie_Pinkey2_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[420].dn"
		;
connectAttr "Thumb_Thumb3_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[421].dn"
		;
connectAttr "Index_Index1_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[422].dn"
		;
connectAttr "Thumb1_Joint_M_CTR0_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[423].dn"
		;
connectAttr "Pinkey2_Joint_M_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[424].dn"
		;
connectAttr "Thumb4_Joint_M_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[425].dn"
		;
connectAttr "Ring4_Joint_M_CTR3_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[426].dn"
		;
connectAttr "Thumb2_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[427].dn"
		;
connectAttr "Middle3_Joint_M_CTR2_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[428].dn"
		;
connectAttr "BicepTwist_BicepTwist_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[429].dn"
		;
connectAttr "Joint_Disp1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[430].dn";
connectAttr "Middle2_Joint_M_CTR1_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[431].dn"
		;
connectAttr "Wrist_Joint_M_CTR2_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[432].dn"
		;
connectAttr "Ring4_Joint_M_CTR3_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[433].dn"
		;
connectAttr "Pinkey2_Joint_M_CTR1_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[434].dn"
		;
connectAttr "Middle4_Joint_M_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[435].dn"
		;
connectAttr "Mesh_Human_Biped_01_lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "LControlsMaterialSG.pa" ":renderPartition.st" -na;
connectAttr "MControlsMaterialSG.pa" ":renderPartition.st" -na;
connectAttr "RControlsMaterialSG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "TempMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "LControlsMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "MControlsMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "RControlsMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Arm_ANIM2.ma
