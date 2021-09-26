//Maya ASCII 2019 scene
//Name: TEMP_AnimBakeForExport.ma
//Last modified: Sun, Sep 26, 2021 05:27:59 PM
//Codeset: 1252
requires maya "2019";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201812112215-434d8d9c04";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19043)\n";
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
	setAttr ".rigMode" 5;
	setAttr ".isBuilt" yes;
	setAttr ".pfrsName" -type "string" "TEMP";
	setAttr ".category" -type "string" "Animation";
	setAttr ".operation" -type "string" "Ghosts";
	setAttr ".nextLimbID" 10;
	setAttr ".nextJointID" 28;
	setAttr ".nextMeshID" 2;
	setAttr ".posesFolderPath" -type "string" "D:/Assets/Programming/Python/Maya/PayneFreeRigSuite/TESTING_FILES/MISC\\Poses";
	setAttr ".nextGhostID" 4;
	setAttr ".IKSShape" -type "string" "Cylinder_Poly";
	setAttr ".JointShape" -type "string" "Cube_Poly";
	setAttr ".IKPVShape" -type "string" "Sphere_Poly";
	setAttr ".LookAtShape" -type "string" "Circle_Wire";
	setAttr ".FKRShape" -type "string" "Cube_Poly";
	setAttr ".FKShape" -type "string" "Cube_Poly";
	setAttr ".EmptyShape" -type "string" "Square_Wire";
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
createNode displayLayer -n "Joint_Disp";
	rename -uid "35365468-4A76-EBB3-DE80-33A43B90487D";
	setAttr ".dt" 2;
	setAttr ".v" no;
	setAttr ".do" 6;
createNode displayLayerManager -n "layerManager";
	rename -uid "97639E7C-4DC0-9EAD-ECBE-DAAEECF7C76C";
	setAttr -s 9 ".dli[1:8]"  9 1 3 4 2 6 7 8;
	setAttr -s 6 ".dli";
createNode animCurveTL -n "Clav_Clav01_M_JNT_translateX";
	rename -uid "DCDD5F8F-4A63-DCDB-ACA1-42AE5E370DAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 5.5230406399187046 200 5.5230406399187046;
createNode animCurveTL -n "Clav_Clav01_M_JNT_translateY";
	rename -uid "3523540B-4873-C093-E23C-CAB811D169A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 137.52213631501641 200 137.52213631501641;
createNode animCurveTL -n "Clav_Clav01_M_JNT_translateZ";
	rename -uid "90B72798-46AC-777F-F318-B98A05485DF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -2.0461767078897952 200 -2.0461767078897952;
createNode animCurveTA -n "Clav_Clav01_M_JNT_rotateX";
	rename -uid "E34DF2B2-4945-4859-4482-C587A8CD1CB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "Clav_Clav01_M_JNT_rotateY";
	rename -uid "C0EB0401-406B-8D3D-5425-99965AE8A376";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "Clav_Clav01_M_JNT_rotateZ";
	rename -uid "522B5A50-41F5-A027-2E37-0DBCC99CAA5A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTU -n "Clav_Clav01_M_JNT_scaleX";
	rename -uid "4B3DD495-4D39-C5F1-277B-059D1DD585A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Clav_Clav01_M_JNT_scaleY";
	rename -uid "E81420D3-461A-ADEE-6A5E-65AA29836706";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Clav_Clav01_M_JNT_scaleZ";
	rename -uid "B3449C18-4420-0DF0-26F6-F4A3982F9A6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Clav_Clav01_M_JNT_visibility";
	rename -uid "EDD4B6D7-4831-5EDD-3F5A-ECA37563BE3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTL -n "Arm_Shoulder_M_JNT_translateX";
	rename -uid "FFD4069C-43EC-0C99-2834-5D8AD2BC464B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 8.7083126930517007 200 8.7083126930517007;
createNode animCurveTL -n "Arm_Shoulder_M_JNT_translateY";
	rename -uid "3160CC73-43FC-E989-4BA0-79874E6C6E0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 2.8421709430404007e-14 200 2.8421709430404007e-14;
createNode animCurveTL -n "Arm_Shoulder_M_JNT_translateZ";
	rename -uid "CC2B9EE1-4610-0CE8-9C66-2FA418576DAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -4.4408920985006262e-16 200 -4.4408920985006262e-16;
createNode animCurveTA -n "Arm_Shoulder_M_JNT_rotateX";
	rename -uid "A79E0352-4ADB-285C-A08C-4BBAA7B22A09";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -2.843637479660079e-22 200 -2.843637479660079e-22;
createNode animCurveTA -n "Arm_Shoulder_M_JNT_rotateY";
	rename -uid "79D98053-42B3-942A-036F-E5BED0F88975";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.8811182536655945e-44 200 1.8811182536655945e-44;
createNode animCurveTA -n "Arm_Shoulder_M_JNT_rotateZ";
	rename -uid "5E4D217A-4CAE-DC9C-2389-9495F4DABF2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 7.5804414220157282e-21 200 7.5804414220157282e-21;
createNode animCurveTU -n "Arm_Shoulder_M_JNT_scaleX";
	rename -uid "2A37E752-4800-36CD-8E3E-9CA82A4123CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Arm_Shoulder_M_JNT_scaleY";
	rename -uid "C7EBE11F-45AC-F5C2-D08E-669223A9B34A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Arm_Shoulder_M_JNT_scaleZ";
	rename -uid "F75D3A2C-4739-F287-6542-D38DD0511996";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Arm_Shoulder_M_JNT_visibility";
	rename -uid "D1A495B4-4A64-C4F8-EF65-4EBD4465CAD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTL -n "BicepTwist_BicepTwist_M_JNT_translateX";
	rename -uid "1FB0DF76-40A6-B920-A91C-67B5B19048F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 12.274168772767114 200 12.274168772767114;
createNode animCurveTL -n "BicepTwist_BicepTwist_M_JNT_translateY";
	rename -uid "BFDD9B52-4F90-AE22-F6F0-C8A44BD5793A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.348298155789962e-06 200 1.348298155789962e-06;
createNode animCurveTL -n "BicepTwist_BicepTwist_M_JNT_translateZ";
	rename -uid "8039023B-49F6-722B-6A53-3DBFDDE62FB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -6.9499961341534799e-14 200 -6.9499961341534799e-14;
createNode animCurveTA -n "BicepTwist_BicepTwist_M_JNT_rotateX";
	rename -uid "2AAD7F08-40BD-6F01-87C1-8FB4FB18E1C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "BicepTwist_BicepTwist_M_JNT_rotateY";
	rename -uid "A70158FB-441F-4260-74D5-CCABDD21CB4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "BicepTwist_BicepTwist_M_JNT_rotateZ";
	rename -uid "DBCAA44B-4857-0BED-4086-EFBF4CABA737";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.6051953727497234e-08 200 1.6051953727497234e-08;
createNode animCurveTU -n "BicepTwist_BicepTwist_M_JNT_visibility";
	rename -uid "5CA87C75-4AA5-6AFC-C5A9-118C8C42557E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "BicepTwist_BicepTwist_M_JNT_scaleX";
	rename -uid "F4091863-45E1-C380-5DFD-C893B3075CA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "BicepTwist_BicepTwist_M_JNT_scaleY";
	rename -uid "73A337F5-460B-CE9D-1AE5-C195C87869EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "BicepTwist_BicepTwist_M_JNT_scaleZ";
	rename -uid "307F6DC9-4742-3A0B-7E24-02AF05101858";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTL -n "Arm_Elbow_M_JNT_translateX";
	rename -uid "CA1E16F9-4D25-599B-62C0-CEAA05402199";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 25.941269954820427 200 25.941269954820427;
createNode animCurveTL -n "Arm_Elbow_M_JNT_translateY";
	rename -uid "06D6488A-476B-2ECB-FD37-AAB6D1419189";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -3.7260284102558217e-07 200 -3.7260284102558217e-07;
createNode animCurveTL -n "Arm_Elbow_M_JNT_translateZ";
	rename -uid "690B2B3F-422B-6E57-EDEF-EA9AEB92A175";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.19840277671717566 200 0.19840277671717566;
createNode animCurveTA -n "Arm_Elbow_M_JNT_rotateX";
	rename -uid "94525939-41C6-B6FF-285D-299D8E3A5B5D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -3.317577059603425e-22 200 -3.317577059603425e-22;
createNode animCurveTA -n "Arm_Elbow_M_JNT_rotateY";
	rename -uid "5A23EC70-4C40-9E82-E1C5-938FFCE07755";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.5902773407317637e-15 200 1.5902773407317637e-15;
createNode animCurveTA -n "Arm_Elbow_M_JNT_rotateZ";
	rename -uid "CAFAD710-4AB2-2FCF-6609-B2A6D790C5EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -4.5438957227068334e-21 200 -4.5438957227068334e-21;
createNode animCurveTU -n "Arm_Elbow_M_JNT_scaleX";
	rename -uid "15446E98-48CC-227C-26AB-4196D805E966";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Arm_Elbow_M_JNT_scaleY";
	rename -uid "0B004C66-4700-AA11-78C5-AE9749214A21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Arm_Elbow_M_JNT_scaleZ";
	rename -uid "98E5F5BC-4BC5-2B0F-5856-1C87AC0ECAAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Arm_Elbow_M_JNT_visibility";
	rename -uid "515C7828-40EE-7FBE-BD36-8783CE50F900";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTL -n "ForearmTwist_ForearmTwist1_M_JNT_translateX";
	rename -uid "60BC5F86-4565-EC8B-FA33-71AEAFFC0751";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 8.700292705433327 200 8.700292705433327;
createNode animCurveTL -n "ForearmTwist_ForearmTwist1_M_JNT_translateY";
	rename -uid "8169546B-406C-1E19-52CB-8EAB40718E93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTL -n "ForearmTwist_ForearmTwist1_M_JNT_translateZ";
	rename -uid "877D2B0E-4381-7E07-734F-32A00F643959";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "ForearmTwist_ForearmTwist1_M_JNT_rotateX";
	rename -uid "F61DD37D-4C01-0FCB-514A-E4A9FF47722C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "ForearmTwist_ForearmTwist1_M_JNT_rotateY";
	rename -uid "7C0B7605-44BE-F807-2E83-BE814BFD559C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "ForearmTwist_ForearmTwist1_M_JNT_rotateZ";
	rename -uid "C3D844B1-43D9-9B35-F478-E28743223CC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTU -n "ForearmTwist_ForearmTwist1_M_JNT_visibility";
	rename -uid "9D87ADF0-42B3-ED7F-EBAA-1590F3DFDCCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "ForearmTwist_ForearmTwist1_M_JNT_scaleX";
	rename -uid "006F9851-4D8B-2936-E474-7C97E9D4576A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "ForearmTwist_ForearmTwist1_M_JNT_scaleY";
	rename -uid "F6C1B1E8-43C8-8447-FAFE-C19771408EF9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "ForearmTwist_ForearmTwist1_M_JNT_scaleZ";
	rename -uid "36B10280-4E4C-B81D-F2D1-7FBC2AD8BC91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTL -n "ForearmTwist_ForearmTwist2_M_JNT_translateX";
	rename -uid "B4646713-4C4B-E51E-2066-29805AF2E557";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 16.281148691824328 200 16.281148691824328;
createNode animCurveTL -n "ForearmTwist_ForearmTwist2_M_JNT_translateY";
	rename -uid "E177AB14-4F04-1B6E-56DA-57A3C14FC78C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -2.8421709430404007e-14 200 -2.8421709430404007e-14;
createNode animCurveTL -n "ForearmTwist_ForearmTwist2_M_JNT_translateZ";
	rename -uid "3F103672-4755-C05B-FE27-DDA3C88B515F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -1.7763568394002505e-15 200 -1.7763568394002505e-15;
createNode animCurveTA -n "ForearmTwist_ForearmTwist2_M_JNT_rotateX";
	rename -uid "ADD2C578-4F7E-BF73-D6F7-29A573DFDD99";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "ForearmTwist_ForearmTwist2_M_JNT_rotateY";
	rename -uid "98309A66-462C-C460-290A-8D9E14E4A63D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "ForearmTwist_ForearmTwist2_M_JNT_rotateZ";
	rename -uid "EE792533-46AD-86CC-C49D-5BBDBE495108";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTU -n "ForearmTwist_ForearmTwist2_M_JNT_visibility";
	rename -uid "3ABCC7A3-41D0-1D31-07BE-3E81D7594352";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "ForearmTwist_ForearmTwist2_M_JNT_scaleX";
	rename -uid "7F798B72-4092-63FA-AEB7-C9B4FC70B59A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "ForearmTwist_ForearmTwist2_M_JNT_scaleY";
	rename -uid "E12437AA-4811-CCD8-C98F-D5A815379A77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "ForearmTwist_ForearmTwist2_M_JNT_scaleZ";
	rename -uid "E5EAF9AE-419A-031A-C0BC-FB9EC75A0824";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTL -n "Arm_Wrist_M_JNT_translateX";
	rename -uid "F4A25C73-45C7-EF83-A84E-E0B4A111A88F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 26.259939324857896 200 26.259939324857896;
createNode animCurveTL -n "Arm_Wrist_M_JNT_translateY";
	rename -uid "B915D257-4ABD-05A7-2D62-5E95BBEEED6C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -2.8415820452210028e-06 200 -2.8415820452210028e-06;
createNode animCurveTL -n "Arm_Wrist_M_JNT_translateZ";
	rename -uid "FC89B07C-41E2-5A7F-E11A-FEA1A256B99D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.3322676295501878e-14 200 1.3322676295501878e-14;
createNode animCurveTA -n "Arm_Wrist_M_JNT_rotateX";
	rename -uid "94AA2476-45BC-6428-C6D6-09814B43A1B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 3.3365346428016754e-20 200 3.3365346428016754e-20;
createNode animCurveTA -n "Arm_Wrist_M_JNT_rotateY";
	rename -uid "D5E4C421-472B-A6E6-0FA3-8A9D8710C497";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -5.7853952629802974e-27 200 -5.7853952629802974e-27;
createNode animCurveTA -n "Arm_Wrist_M_JNT_rotateZ";
	rename -uid "54B2BA2F-45C4-CD85-C3F6-63BB25C9A091";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -1.8199279869824156e-20 20 -1.8199279869824156e-20
		 21 1.1049490603423813 30 39.462466440799389 39 1.1049490603423837 40 -1.8199279869824156e-20
		 200 -1.8199279869824156e-20;
createNode animCurveTU -n "Arm_Wrist_M_JNT_scaleX";
	rename -uid "2A190B59-473A-E035-E1B9-9BB91F9093FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Arm_Wrist_M_JNT_scaleY";
	rename -uid "3AE49968-4633-36CA-6538-0891CF0AB179";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Arm_Wrist_M_JNT_scaleZ";
	rename -uid "FF7801F3-4444-7D92-66AB-06B9E74F313C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Arm_Wrist_M_JNT_visibility";
	rename -uid "8AC0C6F3-42C5-6D7E-7426-A68D073C34BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTL -n "Middle_Middle1_M_JNT_translateX";
	rename -uid "30844FEB-4F49-1A30-B04E-799778CFC9C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 7.9379058083578542 200 7.9379058083578542;
createNode animCurveTL -n "Middle_Middle1_M_JNT_translateY";
	rename -uid "1F72032A-4057-D0FC-C75B-9FB87D3DBECE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.70256262781711598 200 0.70256262781711598;
createNode animCurveTL -n "Middle_Middle1_M_JNT_translateZ";
	rename -uid "B1A2C5ED-4FA6-9EA7-3C71-859C9EE2D384";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -0.29684972057054893 200 -0.29684972057054893;
createNode animCurveTA -n "Middle_Middle1_M_JNT_rotateX";
	rename -uid "70F74898-407A-1CA3-CF1F-EDAF893D5684";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.4908850069360245e-16 200 1.4908850069360245e-16;
createNode animCurveTA -n "Middle_Middle1_M_JNT_rotateY";
	rename -uid "039B62FC-4D10-E264-F94D-D2AC7137D90C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.6648215910785596e-15 200 1.6648215910785596e-15;
createNode animCurveTA -n "Middle_Middle1_M_JNT_rotateZ";
	rename -uid "43D5C78D-46E2-828B-D43E-2E8999E88FF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 6.3743099072592795e-15 2 -2.2082634113300146
		 10 -64.392961074383379 19 -1.8030029100827432 20 6.3743099072592795e-15 200 6.3743099072592795e-15;
createNode animCurveTU -n "Middle_Middle1_M_JNT_scaleX";
	rename -uid "2CAB600C-41BF-A1A7-C451-4F8A0545F43D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Middle_Middle1_M_JNT_scaleY";
	rename -uid "6D009A6A-46B1-8958-0868-C9A828923639";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Middle_Middle1_M_JNT_scaleZ";
	rename -uid "BE237FFF-499A-4013-C324-18B2B12C7BB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Middle_Middle1_M_JNT_visibility";
	rename -uid "7EE3ED1B-4657-6ADA-245D-248B9A38F8C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTL -n "Middle_Middle2_M_JNT_translateX";
	rename -uid "4272D1E9-437E-779C-6D51-28BEB24CEE3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 3.277542899382027 200 3.277542899382027;
createNode animCurveTL -n "Middle_Middle2_M_JNT_translateY";
	rename -uid "5308833F-4FDE-627C-35B3-33BEC88425A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTL -n "Middle_Middle2_M_JNT_translateZ";
	rename -uid "70003D74-43DE-DF2F-2319-54A7419397E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -8.8817841970012523e-16 200 -8.8817841970012523e-16;
createNode animCurveTA -n "Middle_Middle2_M_JNT_rotateX";
	rename -uid "86C229BF-48D0-40FA-837D-F390E70DA810";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "Middle_Middle2_M_JNT_rotateY";
	rename -uid "5F9ED2EB-4F1F-84E5-A9F4-AF811F18D967";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "Middle_Middle2_M_JNT_rotateZ";
	rename -uid "64DCFE67-4BD3-C328-874D-F6A7845C1370";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 8.7465253740246703e-15 2 -2.2082634113300168
		 10 -64.392961074383393 19 -1.8030029100827496 20 8.7465253740246703e-15 200 8.7465253740246703e-15;
createNode animCurveTU -n "Middle_Middle2_M_JNT_scaleX";
	rename -uid "905CCF88-4D2D-DE77-4C30-5B976D3FC317";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Middle_Middle2_M_JNT_scaleY";
	rename -uid "E2E94857-4C7B-8F1C-FEAF-DBBE807855F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Middle_Middle2_M_JNT_scaleZ";
	rename -uid "16997F39-4BAB-C9C3-92FE-EF97C34334EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Middle_Middle2_M_JNT_visibility";
	rename -uid "76DF50EB-4818-2569-99E7-7796C4708B6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTL -n "Middle_Middle3_M_JNT_translateX";
	rename -uid "CE913BE5-4447-E0EF-FC64-8BA8942914D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 3.3563095325937251 200 3.3563095325937251;
createNode animCurveTL -n "Middle_Middle3_M_JNT_translateY";
	rename -uid "F5FDDF27-401C-C0AF-863E-FC8FF782DDB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.7053025658242404e-13 200 1.7053025658242404e-13;
createNode animCurveTL -n "Middle_Middle3_M_JNT_translateZ";
	rename -uid "EE5C00F3-4A72-295C-6D43-D7B4904E7E97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.3322676295501878e-15 200 1.3322676295501878e-15;
createNode animCurveTA -n "Middle_Middle3_M_JNT_rotateX";
	rename -uid "1539D060-4EE9-1374-C9C4-75A1C51B3982";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 2.981770013872047e-16 200 2.981770013872047e-16;
createNode animCurveTA -n "Middle_Middle3_M_JNT_rotateY";
	rename -uid "5019ECC1-4DA4-BC32-0A31-78B488BC6E98";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 6.7089825312121054e-16 200 6.7089825312121054e-16;
createNode animCurveTA -n "Middle_Middle3_M_JNT_rotateZ";
	rename -uid "527F14C2-417C-7549-ECE5-D094D3497589";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -9.3180312933501452e-18 2 -2.208263411330035
		 10 -64.392961074383408 19 -1.8030029100827647 20 -9.3180312933501452e-18 200 -9.3180312933501452e-18;
createNode animCurveTU -n "Middle_Middle3_M_JNT_scaleX";
	rename -uid "EC190B4B-4A9B-2DCB-0709-85843DEE8114";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Middle_Middle3_M_JNT_scaleY";
	rename -uid "63EC86A4-4073-21DB-6B89-81A1C0AF66E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Middle_Middle3_M_JNT_scaleZ";
	rename -uid "041E1A32-45D9-F826-A1AF-D2942DAA2D2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Middle_Middle3_M_JNT_visibility";
	rename -uid "F8763898-4581-BFF3-E368-FD9A514FE945";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTL -n "Middle_Middle4_M_JNT_translateX";
	rename -uid "946E449B-4047-B87F-F5FA-0FACADC6D06A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 3.4510049024180063 200 3.4510049024180063;
createNode animCurveTL -n "Middle_Middle4_M_JNT_translateY";
	rename -uid "CF76F8CF-453F-B739-5D51-C4A17AE0BCE2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -5.6843418860808015e-14 200 -5.6843418860808015e-14;
createNode animCurveTL -n "Middle_Middle4_M_JNT_translateZ";
	rename -uid "935A6D8F-411E-F8E7-1012-94B11D19DC78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "Middle_Middle4_M_JNT_rotateX";
	rename -uid "199237DA-4813-E7D5-D2CF-4CBBE8723F5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "Middle_Middle4_M_JNT_rotateY";
	rename -uid "9B5BEE92-406B-A272-F7AC-53AEE78D1E78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "Middle_Middle4_M_JNT_rotateZ";
	rename -uid "4ECAD922-4DF7-11A2-0C8C-26862E4354BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTU -n "Middle_Middle4_M_JNT_visibility";
	rename -uid "12310093-40AE-521E-844D-4C9E7862198D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Middle_Middle4_M_JNT_scaleX";
	rename -uid "7B8C75EC-4D80-9C50-F9DA-D8A5477D2B60";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Middle_Middle4_M_JNT_scaleY";
	rename -uid "395E98DC-4D53-0DD1-692B-8E984541B142";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Middle_Middle4_M_JNT_scaleZ";
	rename -uid "F67EF1DC-42C5-BA14-94D7-F1B327CE4A82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTL -n "Ring_Ring1_M_JNT_translateX";
	rename -uid "02417121-4315-E2AA-599E-0B9E9F337545";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 7.8190365685399428 200 7.8190365685399428;
createNode animCurveTL -n "Ring_Ring1_M_JNT_translateY";
	rename -uid "1DFB3985-479D-F763-8277-6CB24F561ECD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.52916697249290223 200 0.52916697249290223;
createNode animCurveTL -n "Ring_Ring1_M_JNT_translateZ";
	rename -uid "096D54E2-40BB-8019-917A-4299400EE3F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -2.7118128374972361 200 -2.7118128374972361;
createNode animCurveTA -n "Ring_Ring1_M_JNT_rotateX";
	rename -uid "AFFE3504-4F3B-DF04-6C8C-A8B03498EF08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -9.9392333795734887e-17 200 -9.9392333795734887e-17;
createNode animCurveTA -n "Ring_Ring1_M_JNT_rotateY";
	rename -uid "2BB66CAA-41A4-2916-B495-38ABC3D0D835";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 3.9135731432070616e-16 200 3.9135731432070616e-16;
createNode animCurveTA -n "Ring_Ring1_M_JNT_rotateZ";
	rename -uid "C281CE3D-41DE-7A2F-00E0-F58B28984900";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 3.1813311840712959e-15 2 -2.2082634113300221
		 10 -64.392961074383393 19 -1.8030029100827447 20 3.1813311840712959e-15 200 3.1813311840712959e-15;
createNode animCurveTU -n "Ring_Ring1_M_JNT_scaleX";
	rename -uid "2DB1EF30-4560-1431-AA0A-EFBFFDB893F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Ring_Ring1_M_JNT_scaleY";
	rename -uid "A1D0DFDB-42F7-EE9F-7C0D-FCABA756EA67";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Ring_Ring1_M_JNT_scaleZ";
	rename -uid "8591B852-43E4-101E-EDBD-558289FB7BEC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Ring_Ring1_M_JNT_visibility";
	rename -uid "2D21BE51-4EB2-37B0-B605-19A3BFAD6B7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTL -n "Ring_Ring2_M_JNT_translateX";
	rename -uid "77C5299E-4E7F-1B82-80D9-0CA6D7BDF31E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 2.6470511256765974 200 2.6470511256765974;
createNode animCurveTL -n "Ring_Ring2_M_JNT_translateY";
	rename -uid "052414EC-4169-9AB4-B64B-7CA09B9821A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.1368683772161603e-13 200 1.1368683772161603e-13;
createNode animCurveTL -n "Ring_Ring2_M_JNT_translateZ";
	rename -uid "9E553381-4B9D-DE75-BFA9-409D021D506A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 8.8817841970012523e-16 200 8.8817841970012523e-16;
createNode animCurveTA -n "Ring_Ring2_M_JNT_rotateX";
	rename -uid "6EF08B8F-4DBD-3328-33E0-15ACE6EB50F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -1.3045243810690206e-16 200 -1.3045243810690206e-16;
createNode animCurveTA -n "Ring_Ring2_M_JNT_rotateY";
	rename -uid "95536B93-4F2E-E6F4-DD83-9E978AC132F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.8636062586700292e-16 200 1.8636062586700292e-16;
createNode animCurveTA -n "Ring_Ring2_M_JNT_rotateZ";
	rename -uid "6F480741-4392-2CD4-04CE-C6879258774F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -3.1801664301596272e-15 6 -37.540477992610342
		 20 -3.1801664301596272e-15 200 -3.1801664301596272e-15;
createNode animCurveTU -n "Ring_Ring2_M_JNT_scaleX";
	rename -uid "D22C8968-4463-65FC-380F-A9AAB820153A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Ring_Ring2_M_JNT_scaleY";
	rename -uid "6798455B-4DB7-D7A3-2048-86A40085D178";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Ring_Ring2_M_JNT_scaleZ";
	rename -uid "2ADC7F26-42C6-CE56-38B4-7693BCF24F0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Ring_Ring2_M_JNT_visibility";
	rename -uid "E11A46AE-4641-6007-461A-1A8C25CFAD66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTL -n "Ring_Ring3_M_JNT_translateX";
	rename -uid "3568B6A3-48E9-D9BE-D791-A0B7D8DB9BA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 2.9147340994338933 200 2.9147340994338933;
createNode animCurveTL -n "Ring_Ring3_M_JNT_translateY";
	rename -uid "21FA37CE-4894-CB2C-758C-81BF2F101277";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -5.6843418860808015e-14 200 -5.6843418860808015e-14;
createNode animCurveTL -n "Ring_Ring3_M_JNT_translateZ";
	rename -uid "1AA40571-4078-0D58-F627-39AE1B2951D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 8.8817841970012523e-16 200 8.8817841970012523e-16;
createNode animCurveTA -n "Ring_Ring3_M_JNT_rotateX";
	rename -uid "2D3B280D-47E8-2B70-0B0F-6EAFD365D21C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -1.5902773407317578e-15 200 -1.5902773407317578e-15;
createNode animCurveTA -n "Ring_Ring3_M_JNT_rotateY";
	rename -uid "AD652A2E-4F24-5D0A-12D6-40BE43D12266";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -2.1120870931593671e-15 200 -2.1120870931593671e-15;
createNode animCurveTA -n "Ring_Ring3_M_JNT_rotateZ";
	rename -uid "7C4E2A40-4D7A-E4E3-5749-5C930AEAB1CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -3.1771380699892886e-14 9 -62.184697663053349
		 20 -3.1771380699892886e-14 200 -3.1771380699892886e-14;
createNode animCurveTU -n "Ring_Ring3_M_JNT_scaleX";
	rename -uid "C455F3E1-48A5-B357-4915-23A90C1FE685";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Ring_Ring3_M_JNT_scaleY";
	rename -uid "E0A8EDCC-46C5-5C50-1295-5FB1F8CE7FE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Ring_Ring3_M_JNT_scaleZ";
	rename -uid "6ECE3AEB-46FC-9DFD-E3EB-C5821A1FDE3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Ring_Ring3_M_JNT_visibility";
	rename -uid "E460E9DF-4DB1-50D8-A720-2F8E9D065D72";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTL -n "Ring_Ring4_M_JNT_translateX";
	rename -uid "5248562F-412C-6AD1-3119-70A2166996EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 3.7421843699642814 200 3.7421843699642814;
createNode animCurveTL -n "Ring_Ring4_M_JNT_translateY";
	rename -uid "465CFF1F-4933-AF09-53C3-978702047145";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -5.6843418860808015e-14 200 -5.6843418860808015e-14;
createNode animCurveTL -n "Ring_Ring4_M_JNT_translateZ";
	rename -uid "E3794EFD-44B9-4641-19DF-44A469E42C14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 3.5527136788005009e-15 200 3.5527136788005009e-15;
createNode animCurveTA -n "Ring_Ring4_M_JNT_rotateX";
	rename -uid "A6419FFF-4753-E7D3-07C8-659DC5B696B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "Ring_Ring4_M_JNT_rotateY";
	rename -uid "94B4143E-4EC1-AF08-3449-EC9161DABD77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "Ring_Ring4_M_JNT_rotateZ";
	rename -uid "4B6122D8-4BFF-3CE1-17C4-61A8AE8B0CC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTU -n "Ring_Ring4_M_JNT_visibility";
	rename -uid "8321B31C-48DA-8564-C85E-B6BDDD320A0F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Ring_Ring4_M_JNT_scaleX";
	rename -uid "777EDFD9-49E7-81B3-BBCE-499577B5DEE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Ring_Ring4_M_JNT_scaleY";
	rename -uid "A8AF372C-4275-EFAA-25FA-0FB3C2B2DA61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Ring_Ring4_M_JNT_scaleZ";
	rename -uid "58AD29AF-4C26-4D90-A405-B2B67242F703";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTL -n "Index_Index1_M_JNT_translateX";
	rename -uid "24F1BE95-44C2-8B4C-FAA9-D9A4BF83DD88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 7.8288810320045457 200 7.8288810320045457;
createNode animCurveTL -n "Index_Index1_M_JNT_translateY";
	rename -uid "68BE4A2B-40B6-0E40-EFA9-3987FFBF5BFC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.94274018076018251 200 0.94274018076018251;
createNode animCurveTL -n "Index_Index1_M_JNT_translateZ";
	rename -uid "24BA2A8B-449B-D6F2-F8F7-F5B0CCFE5E6C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.8635468004911591 200 1.8635468004911591;
createNode animCurveTA -n "Index_Index1_M_JNT_rotateX";
	rename -uid "A7CC27E4-4DC0-DEC1-A615-28B9506854DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -9.9392333795735182e-17 200 -9.9392333795735182e-17;
createNode animCurveTA -n "Index_Index1_M_JNT_rotateY";
	rename -uid "A0404360-425C-EF88-4C79-E997F94462B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -1.6648215910785596e-15 200 -1.6648215910785596e-15;
createNode animCurveTA -n "Index_Index1_M_JNT_rotateZ";
	rename -uid "BCC46B6D-4823-2304-0423-4294CDF21D08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1.9083328088781101e-14 2 -2.2082634113299986
		 10 -64.392961074383365 19 -1.8030029100827276 20 1.9083328088781101e-14 200 1.9083328088781101e-14;
createNode animCurveTU -n "Index_Index1_M_JNT_scaleX";
	rename -uid "A5E5ED84-4DAF-AEE7-5491-19B268765FAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Index_Index1_M_JNT_scaleY";
	rename -uid "906F637B-4D8A-00A2-B15E-46BE8F63AB46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Index_Index1_M_JNT_scaleZ";
	rename -uid "9F078F4D-4CB5-6E1A-E801-91B59A70C292";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Index_Index1_M_JNT_visibility";
	rename -uid "0D7D1992-40E0-A152-C29F-12A5EA65EEC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTL -n "Index_Index2_M_JNT_translateX";
	rename -uid "FA1856CD-4470-5FF3-CEF5-97AAA222955E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 3.6539765362013803 200 3.6539765362013803;
createNode animCurveTL -n "Index_Index2_M_JNT_translateY";
	rename -uid "C9F83675-4467-CAD6-8AE4-BC8AE2D8B512";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 5.6843418860808015e-14 200 5.6843418860808015e-14;
createNode animCurveTL -n "Index_Index2_M_JNT_translateZ";
	rename -uid "D3B11CF2-4E01-26B5-D5C1-8CADA8A1E75C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -3.5527136788005009e-15 200 -3.5527136788005009e-15;
createNode animCurveTA -n "Index_Index2_M_JNT_rotateX";
	rename -uid "3E64D505-4322-2E80-A0EA-7D9D87A0B98D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -2.1392646844316383e-16 200 -2.1392646844316383e-16;
createNode animCurveTA -n "Index_Index2_M_JNT_rotateY";
	rename -uid "24CAE091-4A1B-54E8-F51B-56B9E5A58931";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -4.1271113603463357e-16 200 -4.1271113603463357e-16;
createNode animCurveTA -n "Index_Index2_M_JNT_rotateZ";
	rename -uid "ECC7B0DD-49CA-0F62-060A-1F918C3A4580";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1.4312329239853687e-14 2 -2.208263411330019
		 10 -64.392961074383393 19 -1.8030029100827496 20 1.4312329239853687e-14 200 1.4312329239853687e-14;
createNode animCurveTU -n "Index_Index2_M_JNT_scaleX";
	rename -uid "B4CB822E-4E46-B930-8F84-45AB7AFEE619";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Index_Index2_M_JNT_scaleY";
	rename -uid "6F6B148D-4B26-E792-EE04-2E96F31C095A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Index_Index2_M_JNT_scaleZ";
	rename -uid "50079E37-4F22-CEF3-224A-47B3F21F9B47";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Index_Index2_M_JNT_visibility";
	rename -uid "02F5B65A-4CF5-C902-6504-EF9B3CA2923C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTL -n "Index_Index3_M_JNT_translateX";
	rename -uid "961AB14C-4D09-E742-F59F-718A6F9D378D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 2.8248401066067856 200 2.8248401066067856;
createNode animCurveTL -n "Index_Index3_M_JNT_translateY";
	rename -uid "F1486884-457D-E2D4-E8EA-7A8E7E32B001";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTL -n "Index_Index3_M_JNT_translateZ";
	rename -uid "DE1225D0-41F0-7724-79D9-B4AFEE8BF6B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.7763568394002505e-15 200 1.7763568394002505e-15;
createNode animCurveTA -n "Index_Index3_M_JNT_rotateX";
	rename -uid "09B3387A-445A-7FF6-9D6B-E48AFAC808B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -8.9453100416161419e-16 200 -8.9453100416161419e-16;
createNode animCurveTA -n "Index_Index3_M_JNT_rotateY";
	rename -uid "5BD862FC-4542-362E-0347-C89404D6DCDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -1.9878466759146958e-16 200 -1.9878466759146958e-16;
createNode animCurveTA -n "Index_Index3_M_JNT_rotateZ";
	rename -uid "2A2FFC04-4EC2-566D-BD46-77BE0E38E3D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 3.4979889475236461e-14 2 -2.2082634113299999
		 10 -64.392961074383379 19 -1.8030029100827256 20 3.4979889475236461e-14 200 3.4979889475236461e-14;
createNode animCurveTU -n "Index_Index3_M_JNT_scaleX";
	rename -uid "F281F1D5-49CD-D29E-3A50-66A3C3941512";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Index_Index3_M_JNT_scaleY";
	rename -uid "D6320AB8-479D-AD7C-446C-7FA53EEE1AE5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Index_Index3_M_JNT_scaleZ";
	rename -uid "F4FCA60D-478F-3DD7-5BF0-BEAB99AFC9C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Index_Index3_M_JNT_visibility";
	rename -uid "D42D6055-4255-2374-B6F8-B7B542FF5CBC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTL -n "Index_Index4_M_JNT_translateX";
	rename -uid "134F7B75-499D-0F50-C7B5-94A6897FAE9C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 3.2332893329224888 200 3.2332893329224888;
createNode animCurveTL -n "Index_Index4_M_JNT_translateY";
	rename -uid "72FA7F88-4D7C-6F24-BD1D-3E92D3805EF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -8.5265128291212022e-14 200 -8.5265128291212022e-14;
createNode animCurveTL -n "Index_Index4_M_JNT_translateZ";
	rename -uid "04966642-4C4E-5E0F-B5FE-3DB2DC9EE562";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -1.7763568394002505e-15 200 -1.7763568394002505e-15;
createNode animCurveTA -n "Index_Index4_M_JNT_rotateX";
	rename -uid "67CEC0D2-4E59-5FDE-2B2B-9FA0B409DB6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "Index_Index4_M_JNT_rotateY";
	rename -uid "B7222CFB-4747-01A4-5823-229E9A671B35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "Index_Index4_M_JNT_rotateZ";
	rename -uid "817A3E06-43A5-8741-9251-9B861FE9E04B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTU -n "Index_Index4_M_JNT_visibility";
	rename -uid "A6F94365-4455-FF9C-94B2-9D8004EBBAA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Index_Index4_M_JNT_scaleX";
	rename -uid "99893381-4B45-E358-A98D-7EA1537CB7D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Index_Index4_M_JNT_scaleY";
	rename -uid "DCD57C7C-499D-831B-2E2E-51B4891BADB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Index_Index4_M_JNT_scaleZ";
	rename -uid "C932341F-400C-A413-7198-66A51C478505";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTL -n "Pinkie_Pinkey1_M_JNT_translateX";
	rename -uid "01430F2B-4591-A444-0F67-15A6E1F92EBA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 7.2965411030324816 200 7.2965411030324816;
createNode animCurveTL -n "Pinkie_Pinkey1_M_JNT_translateY";
	rename -uid "CC45C55A-4488-F2F0-7319-8A9D23F1E6D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.40936099840925522 200 0.40936099840925522;
createNode animCurveTL -n "Pinkie_Pinkey1_M_JNT_translateZ";
	rename -uid "18B00915-4342-D4C3-3F26-868C45C6862E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -4.6085328294878334 200 -4.6085328294878334;
createNode animCurveTA -n "Pinkie_Pinkey1_M_JNT_rotateX";
	rename -uid "974CD2E1-44EB-0CA5-BB6D-21B1AF5E6271";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 7.5786654519247847e-16 200 7.5786654519247847e-16;
createNode animCurveTA -n "Pinkie_Pinkey1_M_JNT_rotateY";
	rename -uid "C4BD6154-4450-0CCB-0FE4-1E8D0CD8A906";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -4.1232288473074391e-16 200 -4.1232288473074391e-16;
createNode animCurveTA -n "Pinkie_Pinkey1_M_JNT_rotateZ";
	rename -uid "A7CCBE7B-4207-F391-977A-55A9722A01F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1.3588795636135602e-18 2 -2.2082634113300199
		 10 -64.392961074383393 19 -1.8030029100827507 20 1.3588795636135602e-18 200 1.3588795636135602e-18;
createNode animCurveTU -n "Pinkie_Pinkey1_M_JNT_scaleX";
	rename -uid "C9C7229B-467F-FF01-0723-709EBDB4421C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Pinkie_Pinkey1_M_JNT_scaleY";
	rename -uid "6456CA62-4528-AE73-FBD2-DFA52B051AF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Pinkie_Pinkey1_M_JNT_scaleZ";
	rename -uid "D449E3F5-4C55-9E90-D6E8-8D97E7D7BDB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Pinkie_Pinkey1_M_JNT_visibility";
	rename -uid "777616E7-4B9A-1470-E77B-A6B4CDA542B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTL -n "Pinkie_Pinkey2_M_JNT_translateX";
	rename -uid "9C3BC4A5-4A10-2454-840D-EAA3F9E42D0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 2.2858601897864403 200 2.2858601897864403;
createNode animCurveTL -n "Pinkie_Pinkey2_M_JNT_translateY";
	rename -uid "938D1BF1-49E4-9F91-5BEA-248EBB28D14B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTL -n "Pinkie_Pinkey2_M_JNT_translateZ";
	rename -uid "38E5C074-4DB8-6F09-DAAD-9AA0A9024E22";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.7763568394002505e-15 200 1.7763568394002505e-15;
createNode animCurveTA -n "Pinkie_Pinkey2_M_JNT_rotateX";
	rename -uid "568CB561-419A-5B82-9354-19A3E498BDD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -2.9817700138720534e-16 200 -2.9817700138720534e-16;
createNode animCurveTA -n "Pinkie_Pinkey2_M_JNT_rotateY";
	rename -uid "383EDF56-4E97-CB86-E51C-6A98EE5EE414";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 2.919649805249712e-15 200 2.919649805249712e-15;
createNode animCurveTA -n "Pinkie_Pinkey2_M_JNT_rotateZ";
	rename -uid "D554B477-4471-594C-4929-2487036B4E28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -2.5438225430845895e-14 8 -56.266551720688938
		 20 -2.5438225430845895e-14 200 -2.5438225430845895e-14;
createNode animCurveTU -n "Pinkie_Pinkey2_M_JNT_scaleX";
	rename -uid "6A0D2706-4ED6-26A3-DAF7-E9A82165E603";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Pinkie_Pinkey2_M_JNT_scaleY";
	rename -uid "23D6579D-4E94-B90A-9FF3-0BAB76EB4412";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Pinkie_Pinkey2_M_JNT_scaleZ";
	rename -uid "CB02374B-4977-FF28-1947-44824E49FE72";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Pinkie_Pinkey2_M_JNT_visibility";
	rename -uid "C5B6A58F-4C10-F9FF-5B3A-CEB97566327D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTL -n "Pinkie_Pinkey3_M_JNT_translateX";
	rename -uid "29BA7B7B-49C6-E25D-9809-85AEA4EECF4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 2.4760630189721464 200 2.4760630189721464;
createNode animCurveTL -n "Pinkie_Pinkey3_M_JNT_translateY";
	rename -uid "B99C6CF9-44E9-5D81-2EEB-72A612950402";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -8.5265128291212022e-14 200 -8.5265128291212022e-14;
createNode animCurveTL -n "Pinkie_Pinkey3_M_JNT_translateZ";
	rename -uid "081C80F6-4585-6C58-5490-D1A1C5C220C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 8.8817841970012523e-16 200 8.8817841970012523e-16;
createNode animCurveTA -n "Pinkie_Pinkey3_M_JNT_rotateX";
	rename -uid "BCA0A21D-461F-AF39-C85E-1BA2C9453764";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 2.981770013872047e-16 200 2.981770013872047e-16;
createNode animCurveTA -n "Pinkie_Pinkey3_M_JNT_rotateY";
	rename -uid "53A160CF-4B75-D5E2-2A9A-E4869D2CCBF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -2.981770013872047e-16 200 -2.981770013872047e-16;
createNode animCurveTA -n "Pinkie_Pinkey3_M_JNT_rotateZ";
	rename -uid "2FA4FF2C-4BA5-7CEC-BDD9-71A28B39A6A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -6.3580033524959178e-15 9 -62.184697663053377
		 20 -6.3580033524959178e-15 200 -6.3580033524959178e-15;
createNode animCurveTU -n "Pinkie_Pinkey3_M_JNT_scaleX";
	rename -uid "C5438339-4B22-A9F3-8A09-A19D4D56DA5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Pinkie_Pinkey3_M_JNT_scaleY";
	rename -uid "AF44F970-484E-810E-4CF4-1EAE63E50AD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Pinkie_Pinkey3_M_JNT_scaleZ";
	rename -uid "432EFD6E-439C-F0EA-7457-A89D68CB2311";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Pinkie_Pinkey3_M_JNT_visibility";
	rename -uid "9256C806-4768-9BDE-8A13-099FFF6C1ABB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTL -n "Pinkie_Pinkey4_M_JNT_translateX";
	rename -uid "6712E5AB-4917-7806-FDF0-ED8A4159B98F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 2.1354158919624666 200 2.1354158919624666;
createNode animCurveTL -n "Pinkie_Pinkey4_M_JNT_translateY";
	rename -uid "3C9F16D6-412B-70C6-375D-0594BBD5A86F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 2.8421709430404007e-14 200 2.8421709430404007e-14;
createNode animCurveTL -n "Pinkie_Pinkey4_M_JNT_translateZ";
	rename -uid "1195C40D-4AB5-684D-EFE6-D79DAD74E90F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 8.8817841970012523e-16 200 8.8817841970012523e-16;
createNode animCurveTA -n "Pinkie_Pinkey4_M_JNT_rotateX";
	rename -uid "FA00B11E-4557-F483-F582-E2BDA5508057";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "Pinkie_Pinkey4_M_JNT_rotateY";
	rename -uid "F6FCFDA3-4C78-4E39-075E-93B53F946E56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "Pinkie_Pinkey4_M_JNT_rotateZ";
	rename -uid "C20A6A7C-418E-3EB2-8AAE-B49C4767FE43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 -2.2082634113300199 10 -64.392961074383393
		 19 -1.8030029100827487 20 0 200 0;
createNode animCurveTU -n "Pinkie_Pinkey4_M_JNT_visibility";
	rename -uid "1CAAD67A-4749-F186-2FEF-D29B80CC3848";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Pinkie_Pinkey4_M_JNT_scaleX";
	rename -uid "C0864895-4493-90E6-6B6A-D182F079024E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Pinkie_Pinkey4_M_JNT_scaleY";
	rename -uid "38F0BCB6-45CB-62B9-7A83-60A6BE1ABC96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Pinkie_Pinkey4_M_JNT_scaleZ";
	rename -uid "D6442CCC-4A62-79D9-4167-70B727FCCC99";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTL -n "Thumb_Thumb1_M_JNT_translateX";
	rename -uid "94588A92-474B-D469-5630-DFA8A8C841C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 2.6690456837124401 200 2.6690456837124401;
createNode animCurveTL -n "Thumb_Thumb1_M_JNT_translateY";
	rename -uid "82116271-495D-1FD5-2857-9099B0475ABC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -1.7312968437121015 200 -1.7312968437121015;
createNode animCurveTL -n "Thumb_Thumb1_M_JNT_translateZ";
	rename -uid "8BC74A0B-47CE-4C62-C20F-8A85254BB7CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.785306790604726 200 1.785306790604726;
createNode animCurveTA -n "Thumb_Thumb1_M_JNT_rotateX";
	rename -uid "2CBE8001-46F8-A231-AC4F-1EA10566F60B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -2.186631343506168e-15 200 -2.186631343506168e-15;
createNode animCurveTA -n "Thumb_Thumb1_M_JNT_rotateY";
	rename -uid "13D92B98-4E68-9D5A-4CB7-298748C0AE71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 3.5781240166464568e-15 200 3.5781240166464568e-15;
createNode animCurveTA -n "Thumb_Thumb1_M_JNT_rotateZ";
	rename -uid "EA1D5C30-4268-0ACF-0C9B-09A17BC97977";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -1.2722218725854067e-14 10 -32.895600611029501
		 20 -1.2722218725854067e-14 200 -1.2722218725854067e-14;
createNode animCurveTU -n "Thumb_Thumb1_M_JNT_scaleX";
	rename -uid "B7C853CA-468F-2893-24D6-A0B8FF8B8143";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Thumb_Thumb1_M_JNT_scaleY";
	rename -uid "710E97FC-47EE-54D4-A130-D0A654737888";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Thumb_Thumb1_M_JNT_scaleZ";
	rename -uid "95D2CA51-4065-F4EE-E17D-82BD540DCBAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Thumb_Thumb1_M_JNT_visibility";
	rename -uid "27781AAB-4DDD-0F67-B2A2-E7842EAB9976";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTL -n "Thumb_Thumb2_M_JNT_translateX";
	rename -uid "68923140-4C0A-9B36-9D3C-F284D410B0F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 3.2816682663097509 200 3.2816682663097509;
createNode animCurveTL -n "Thumb_Thumb2_M_JNT_translateY";
	rename -uid "B4EC97F1-4116-DEB0-1BFD-8382560FB9A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -1.7763568394002505e-14 200 -1.7763568394002505e-14;
createNode animCurveTL -n "Thumb_Thumb2_M_JNT_translateZ";
	rename -uid "A92B98F2-4EEE-8467-FC38-A2BAE4534B07";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -2.8421709430404007e-14 200 -2.8421709430404007e-14;
createNode animCurveTA -n "Thumb_Thumb2_M_JNT_rotateX";
	rename -uid "C533EEB4-4EA6-1225-FAB6-828A7DF108B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 3.8763010180336605e-14 200 3.8763010180336605e-14;
createNode animCurveTA -n "Thumb_Thumb2_M_JNT_rotateY";
	rename -uid "C78E6CFD-4412-54BA-9175-17B407074090";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 7.5538173684758551e-15 200 7.5538173684758551e-15;
createNode animCurveTA -n "Thumb_Thumb2_M_JNT_rotateZ";
	rename -uid "3BDCBD6C-47C2-D619-B2E6-1F862F82FA16";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -1.0585283549245763e-14 10 -32.895600611029494
		 20 -1.0585283549245763e-14 200 -1.0585283549245763e-14;
createNode animCurveTU -n "Thumb_Thumb2_M_JNT_scaleX";
	rename -uid "1E26C397-4933-F649-E212-CA97B71299BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Thumb_Thumb2_M_JNT_scaleY";
	rename -uid "52AE942B-4283-592F-5E04-68AD5E30E970";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Thumb_Thumb2_M_JNT_scaleZ";
	rename -uid "FF5C0AA3-4850-1CD4-4699-658F414D3535";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Thumb_Thumb2_M_JNT_visibility";
	rename -uid "418A472A-44D9-55DB-D507-A5BEB77D4103";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTL -n "Thumb_Thumb3_M_JNT_translateX";
	rename -uid "E67E0E36-46DE-6516-9D2A-C8B500CA44FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 4.029231170175251 200 4.029231170175251;
createNode animCurveTL -n "Thumb_Thumb3_M_JNT_translateY";
	rename -uid "5702CC8D-4FAF-4523-A675-08A5763692EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.4210854715202004e-14 200 1.4210854715202004e-14;
createNode animCurveTL -n "Thumb_Thumb3_M_JNT_translateZ";
	rename -uid "3868EC3A-4747-DE29-A055-5590DC11025E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "Thumb_Thumb3_M_JNT_rotateX";
	rename -uid "3F8125BE-473D-587B-5C79-7F955A8BA1E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.073437204993937e-14 200 1.073437204993937e-14;
createNode animCurveTA -n "Thumb_Thumb3_M_JNT_rotateY";
	rename -uid "ED00D9D0-44D7-77E2-19C9-BEB733C9076C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 7.1562480332929135e-15 200 7.1562480332929135e-15;
createNode animCurveTA -n "Thumb_Thumb3_M_JNT_rotateZ";
	rename -uid "02822DD7-4F34-CAFF-268B-8DB1FE7CE13D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -2.0872390097104322e-15 8 -28.744166789061424
		 20 -2.0872390097104322e-15 200 -2.0872390097104322e-15;
createNode animCurveTU -n "Thumb_Thumb3_M_JNT_scaleX";
	rename -uid "2D447BA7-442D-1423-D76B-7AA2C52E5D11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Thumb_Thumb3_M_JNT_scaleY";
	rename -uid "62AD529A-48D6-2133-DCC0-54AC2670BDDF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Thumb_Thumb3_M_JNT_scaleZ";
	rename -uid "B0963200-414C-C118-20EF-56B2CD585A36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Thumb_Thumb3_M_JNT_visibility";
	rename -uid "7BF28D16-41E3-6FCF-CC4D-598370C31AB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTL -n "Thumb_Thumb4_M_JNT_translateX";
	rename -uid "E929EC36-49CA-1F50-364F-5CB6E14010F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 2.8346696655482262 200 2.8346696655482262;
createNode animCurveTL -n "Thumb_Thumb4_M_JNT_translateY";
	rename -uid "738766E4-43E5-3C22-FB60-0FB6A973D725";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -2.8421709430404007e-14 200 -2.8421709430404007e-14;
createNode animCurveTL -n "Thumb_Thumb4_M_JNT_translateZ";
	rename -uid "32AD5A71-4CAA-2E57-9933-008536314F65";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -2.8421709430404007e-14 200 -2.8421709430404007e-14;
createNode animCurveTA -n "Thumb_Thumb4_M_JNT_rotateX";
	rename -uid "D79507D2-4A5E-C083-925B-1B8455D797E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "Thumb_Thumb4_M_JNT_rotateY";
	rename -uid "0F39B19F-4066-756F-F2D6-B3BAD96432C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTA -n "Thumb_Thumb4_M_JNT_rotateZ";
	rename -uid "125404F4-4426-1F35-F843-CDB54D80C01A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 200 0;
createNode animCurveTU -n "Thumb_Thumb4_M_JNT_visibility";
	rename -uid "DB62C693-42C8-EFDF-527F-FC8198F6F29A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Thumb_Thumb4_M_JNT_scaleX";
	rename -uid "D992DF19-4488-1803-2618-56B7C68F7580";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Thumb_Thumb4_M_JNT_scaleY";
	rename -uid "C498D1B2-4494-CB4D-F442-1D9F596E6FB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode animCurveTU -n "Thumb_Thumb4_M_JNT_scaleZ";
	rename -uid "BACBE54C-40F8-5C21-92E3-0FAD75B654C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 200 1;
createNode groupId -n "groupId3";
	rename -uid "70FDDE33-472A-BB07-A4CD-D583EB06430E";
	setAttr ".ihi" 0;
createNode shadingEngine -n "Mesh_Human_Biped_01_lambert2SG";
	rename -uid "B9666D6C-466A-5569-3967-628D8B9CDABE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
createNode materialInfo -n "materialInfo3";
	rename -uid "B32DD872-4333-9F54-F1AC-148A761538DC";
createNode lambert -n "lambert2";
	rename -uid "2729B46D-402B-DD2E-0D4F-0CBA79BDCFB3";
createNode groupId -n "skinCluster1GroupId";
	rename -uid "CA2299B9-4815-CE0F-3D5E-00A19BA7EA1B";
	setAttr ".ihi" 0;
createNode objectSet -n "skinCluster1Set";
	rename -uid "4A0A3BEA-46A1-6AFC-B6D6-16919B2E673B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode skinCluster -n "skinCluster1";
	rename -uid "9B7B3F21-478D-F34E-2FC3-D385CCB93047";
	addAttr -ci true -sn "pfrsMeshes" -ln "pfrsMeshes" -dt "string";
	setAttr -s 304 ".wl";
	setAttr ".wl[0:256].w"
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
		1 17 1
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
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
		1 25 1
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
		1 25 1
		1 25 1
		1 25 1
		1 25 1
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
		2 3 0.6713462406163877 5 0.3286537593836123
		2 3 0.52655902483300832 5 0.47344097516699174
		2 3 0.67458358958258269 5 0.32541641041741737
		2 3 0.68257004666019905 5 0.31742995333980095
		2 3 0.5399740674871667 5 0.4600259325128333
		2 3 0.55450634066849736 4 0.44549365933150264
		2 3 0.52672213303922844 4 0.47327786696077156
		1 3 0.58438827667031623;
	setAttr ".wl[256:303].w"
		1 4 0.41561172332968371
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
	setAttr -s 26 ".ma";
	setAttr -s 27 ".dpf[0:26]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4;
	setAttr -s 26 ".lw";
	setAttr -s 26 ".lw";
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
	setAttr -s 26 ".ifcl";
	setAttr -s 26 ".ifcl";
createNode dagPose -n "bindPose1";
	rename -uid "FA2B03B7-4D53-B2FA-EF55-3D896652E2EA";
	setAttr -s 28 ".wm";
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
	setAttr -s 28 ".m";
	setAttr -s 28 ".p";
	setAttr -s 29 ".g[0:28]" yes yes no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no;
	setAttr ".bp" yes;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "7233F936-489C-3B99-D308-9F8F96E2B0D5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode tweak -n "tweak1";
	rename -uid "72B6B5B7-4B56-C6D5-EE2A-05B3EAED587B";
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
createNode groupParts -n "groupParts1";
	rename -uid "A7442C18-4081-3AA8-478D-079B00E070CC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:293]";
createNode displayLayer -n "Meshes_Disp";
	rename -uid "8C0DE601-4B4D-1757-A477-91961C9678FA";
	setAttr ".do" 7;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "A2AF78B9-4973-9FE3-766E-A9BF781C9ACF";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
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
connectAttr "TEMP_RigRoot.jointsParentGroup" "JOINTS.rigRoot";
connectAttr "Joint_Disp.di" "Clav_Clav01_M_JNT.do";
connectAttr "Clav_Clav01_M_JNT_translateX.o" "Clav_Clav01_M_JNT.tx";
connectAttr "Clav_Clav01_M_JNT_translateY.o" "Clav_Clav01_M_JNT.ty";
connectAttr "Clav_Clav01_M_JNT_translateZ.o" "Clav_Clav01_M_JNT.tz";
connectAttr "Clav_Clav01_M_JNT_rotateX.o" "Clav_Clav01_M_JNT.rx";
connectAttr "Clav_Clav01_M_JNT_rotateY.o" "Clav_Clav01_M_JNT.ry";
connectAttr "Clav_Clav01_M_JNT_rotateZ.o" "Clav_Clav01_M_JNT.rz";
connectAttr "Clav_Clav01_M_JNT_scaleX.o" "Clav_Clav01_M_JNT.sx";
connectAttr "Clav_Clav01_M_JNT_scaleY.o" "Clav_Clav01_M_JNT.sy";
connectAttr "Clav_Clav01_M_JNT_scaleZ.o" "Clav_Clav01_M_JNT.sz";
connectAttr "Clav_Clav01_M_JNT_visibility.o" "Clav_Clav01_M_JNT.v";
connectAttr "Clav_Clav01_M_JNT.s" "Arm_Shoulder_M_JNT.is";
connectAttr "Joint_Disp.di" "Arm_Shoulder_M_JNT.do";
connectAttr "Arm_Shoulder_M_JNT_translateX.o" "Arm_Shoulder_M_JNT.tx";
connectAttr "Arm_Shoulder_M_JNT_translateY.o" "Arm_Shoulder_M_JNT.ty";
connectAttr "Arm_Shoulder_M_JNT_translateZ.o" "Arm_Shoulder_M_JNT.tz";
connectAttr "Arm_Shoulder_M_JNT_rotateX.o" "Arm_Shoulder_M_JNT.rx";
connectAttr "Arm_Shoulder_M_JNT_rotateY.o" "Arm_Shoulder_M_JNT.ry";
connectAttr "Arm_Shoulder_M_JNT_rotateZ.o" "Arm_Shoulder_M_JNT.rz";
connectAttr "Arm_Shoulder_M_JNT_scaleX.o" "Arm_Shoulder_M_JNT.sx";
connectAttr "Arm_Shoulder_M_JNT_scaleY.o" "Arm_Shoulder_M_JNT.sy";
connectAttr "Arm_Shoulder_M_JNT_scaleZ.o" "Arm_Shoulder_M_JNT.sz";
connectAttr "Arm_Shoulder_M_JNT_visibility.o" "Arm_Shoulder_M_JNT.v";
connectAttr "Arm_Shoulder_M_JNT.s" "BicepTwist_BicepTwist_M_JNT.is";
connectAttr "Joint_Disp.di" "BicepTwist_BicepTwist_M_JNT.do";
connectAttr "BicepTwist_BicepTwist_M_JNT_translateX.o" "BicepTwist_BicepTwist_M_JNT.tx"
		;
connectAttr "BicepTwist_BicepTwist_M_JNT_translateY.o" "BicepTwist_BicepTwist_M_JNT.ty"
		;
connectAttr "BicepTwist_BicepTwist_M_JNT_translateZ.o" "BicepTwist_BicepTwist_M_JNT.tz"
		;
connectAttr "BicepTwist_BicepTwist_M_JNT_rotateX.o" "BicepTwist_BicepTwist_M_JNT.rx"
		;
connectAttr "BicepTwist_BicepTwist_M_JNT_rotateY.o" "BicepTwist_BicepTwist_M_JNT.ry"
		;
connectAttr "BicepTwist_BicepTwist_M_JNT_rotateZ.o" "BicepTwist_BicepTwist_M_JNT.rz"
		;
connectAttr "BicepTwist_BicepTwist_M_JNT_visibility.o" "BicepTwist_BicepTwist_M_JNT.v"
		;
connectAttr "BicepTwist_BicepTwist_M_JNT_scaleX.o" "BicepTwist_BicepTwist_M_JNT.sx"
		;
connectAttr "BicepTwist_BicepTwist_M_JNT_scaleY.o" "BicepTwist_BicepTwist_M_JNT.sy"
		;
connectAttr "BicepTwist_BicepTwist_M_JNT_scaleZ.o" "BicepTwist_BicepTwist_M_JNT.sz"
		;
connectAttr "Arm_Shoulder_M_JNT.s" "Arm_Elbow_M_JNT.is";
connectAttr "Joint_Disp.di" "Arm_Elbow_M_JNT.do";
connectAttr "Arm_Elbow_M_JNT_translateX.o" "Arm_Elbow_M_JNT.tx";
connectAttr "Arm_Elbow_M_JNT_translateY.o" "Arm_Elbow_M_JNT.ty";
connectAttr "Arm_Elbow_M_JNT_translateZ.o" "Arm_Elbow_M_JNT.tz";
connectAttr "Arm_Elbow_M_JNT_rotateX.o" "Arm_Elbow_M_JNT.rx";
connectAttr "Arm_Elbow_M_JNT_rotateY.o" "Arm_Elbow_M_JNT.ry";
connectAttr "Arm_Elbow_M_JNT_rotateZ.o" "Arm_Elbow_M_JNT.rz";
connectAttr "Arm_Elbow_M_JNT_scaleX.o" "Arm_Elbow_M_JNT.sx";
connectAttr "Arm_Elbow_M_JNT_scaleY.o" "Arm_Elbow_M_JNT.sy";
connectAttr "Arm_Elbow_M_JNT_scaleZ.o" "Arm_Elbow_M_JNT.sz";
connectAttr "Arm_Elbow_M_JNT_visibility.o" "Arm_Elbow_M_JNT.v";
connectAttr "Arm_Elbow_M_JNT.s" "ForearmTwist_ForearmTwist1_M_JNT.is";
connectAttr "Joint_Disp.di" "ForearmTwist_ForearmTwist1_M_JNT.do";
connectAttr "ForearmTwist_ForearmTwist1_M_JNT_translateX.o" "ForearmTwist_ForearmTwist1_M_JNT.tx"
		;
connectAttr "ForearmTwist_ForearmTwist1_M_JNT_translateY.o" "ForearmTwist_ForearmTwist1_M_JNT.ty"
		;
connectAttr "ForearmTwist_ForearmTwist1_M_JNT_translateZ.o" "ForearmTwist_ForearmTwist1_M_JNT.tz"
		;
connectAttr "ForearmTwist_ForearmTwist1_M_JNT_rotateX.o" "ForearmTwist_ForearmTwist1_M_JNT.rx"
		;
connectAttr "ForearmTwist_ForearmTwist1_M_JNT_rotateY.o" "ForearmTwist_ForearmTwist1_M_JNT.ry"
		;
connectAttr "ForearmTwist_ForearmTwist1_M_JNT_rotateZ.o" "ForearmTwist_ForearmTwist1_M_JNT.rz"
		;
connectAttr "ForearmTwist_ForearmTwist1_M_JNT_visibility.o" "ForearmTwist_ForearmTwist1_M_JNT.v"
		;
connectAttr "ForearmTwist_ForearmTwist1_M_JNT_scaleX.o" "ForearmTwist_ForearmTwist1_M_JNT.sx"
		;
connectAttr "ForearmTwist_ForearmTwist1_M_JNT_scaleY.o" "ForearmTwist_ForearmTwist1_M_JNT.sy"
		;
connectAttr "ForearmTwist_ForearmTwist1_M_JNT_scaleZ.o" "ForearmTwist_ForearmTwist1_M_JNT.sz"
		;
connectAttr "Arm_Elbow_M_JNT.s" "ForearmTwist_ForearmTwist2_M_JNT.is";
connectAttr "Joint_Disp.di" "ForearmTwist_ForearmTwist2_M_JNT.do";
connectAttr "ForearmTwist_ForearmTwist2_M_JNT_translateX.o" "ForearmTwist_ForearmTwist2_M_JNT.tx"
		;
connectAttr "ForearmTwist_ForearmTwist2_M_JNT_translateY.o" "ForearmTwist_ForearmTwist2_M_JNT.ty"
		;
connectAttr "ForearmTwist_ForearmTwist2_M_JNT_translateZ.o" "ForearmTwist_ForearmTwist2_M_JNT.tz"
		;
connectAttr "ForearmTwist_ForearmTwist2_M_JNT_rotateX.o" "ForearmTwist_ForearmTwist2_M_JNT.rx"
		;
connectAttr "ForearmTwist_ForearmTwist2_M_JNT_rotateY.o" "ForearmTwist_ForearmTwist2_M_JNT.ry"
		;
connectAttr "ForearmTwist_ForearmTwist2_M_JNT_rotateZ.o" "ForearmTwist_ForearmTwist2_M_JNT.rz"
		;
connectAttr "ForearmTwist_ForearmTwist2_M_JNT_visibility.o" "ForearmTwist_ForearmTwist2_M_JNT.v"
		;
connectAttr "ForearmTwist_ForearmTwist2_M_JNT_scaleX.o" "ForearmTwist_ForearmTwist2_M_JNT.sx"
		;
connectAttr "ForearmTwist_ForearmTwist2_M_JNT_scaleY.o" "ForearmTwist_ForearmTwist2_M_JNT.sy"
		;
connectAttr "ForearmTwist_ForearmTwist2_M_JNT_scaleZ.o" "ForearmTwist_ForearmTwist2_M_JNT.sz"
		;
connectAttr "Arm_Elbow_M_JNT.s" "Arm_Wrist_M_JNT.is";
connectAttr "Joint_Disp.di" "Arm_Wrist_M_JNT.do";
connectAttr "Arm_Wrist_M_JNT_translateX.o" "Arm_Wrist_M_JNT.tx";
connectAttr "Arm_Wrist_M_JNT_translateY.o" "Arm_Wrist_M_JNT.ty";
connectAttr "Arm_Wrist_M_JNT_translateZ.o" "Arm_Wrist_M_JNT.tz";
connectAttr "Arm_Wrist_M_JNT_rotateX.o" "Arm_Wrist_M_JNT.rx";
connectAttr "Arm_Wrist_M_JNT_rotateY.o" "Arm_Wrist_M_JNT.ry";
connectAttr "Arm_Wrist_M_JNT_rotateZ.o" "Arm_Wrist_M_JNT.rz";
connectAttr "Arm_Wrist_M_JNT_scaleX.o" "Arm_Wrist_M_JNT.sx";
connectAttr "Arm_Wrist_M_JNT_scaleY.o" "Arm_Wrist_M_JNT.sy";
connectAttr "Arm_Wrist_M_JNT_scaleZ.o" "Arm_Wrist_M_JNT.sz";
connectAttr "Arm_Wrist_M_JNT_visibility.o" "Arm_Wrist_M_JNT.v";
connectAttr "Arm_Wrist_M_JNT.s" "Middle_Middle1_M_JNT.is";
connectAttr "Joint_Disp.di" "Middle_Middle1_M_JNT.do";
connectAttr "Middle_Middle1_M_JNT_translateX.o" "Middle_Middle1_M_JNT.tx";
connectAttr "Middle_Middle1_M_JNT_translateY.o" "Middle_Middle1_M_JNT.ty";
connectAttr "Middle_Middle1_M_JNT_translateZ.o" "Middle_Middle1_M_JNT.tz";
connectAttr "Middle_Middle1_M_JNT_rotateX.o" "Middle_Middle1_M_JNT.rx";
connectAttr "Middle_Middle1_M_JNT_rotateY.o" "Middle_Middle1_M_JNT.ry";
connectAttr "Middle_Middle1_M_JNT_rotateZ.o" "Middle_Middle1_M_JNT.rz";
connectAttr "Middle_Middle1_M_JNT_scaleX.o" "Middle_Middle1_M_JNT.sx";
connectAttr "Middle_Middle1_M_JNT_scaleY.o" "Middle_Middle1_M_JNT.sy";
connectAttr "Middle_Middle1_M_JNT_scaleZ.o" "Middle_Middle1_M_JNT.sz";
connectAttr "Middle_Middle1_M_JNT_visibility.o" "Middle_Middle1_M_JNT.v";
connectAttr "Middle_Middle1_M_JNT.s" "Middle_Middle2_M_JNT.is";
connectAttr "Joint_Disp.di" "Middle_Middle2_M_JNT.do";
connectAttr "Middle_Middle2_M_JNT_translateX.o" "Middle_Middle2_M_JNT.tx";
connectAttr "Middle_Middle2_M_JNT_translateY.o" "Middle_Middle2_M_JNT.ty";
connectAttr "Middle_Middle2_M_JNT_translateZ.o" "Middle_Middle2_M_JNT.tz";
connectAttr "Middle_Middle2_M_JNT_rotateX.o" "Middle_Middle2_M_JNT.rx";
connectAttr "Middle_Middle2_M_JNT_rotateY.o" "Middle_Middle2_M_JNT.ry";
connectAttr "Middle_Middle2_M_JNT_rotateZ.o" "Middle_Middle2_M_JNT.rz";
connectAttr "Middle_Middle2_M_JNT_scaleX.o" "Middle_Middle2_M_JNT.sx";
connectAttr "Middle_Middle2_M_JNT_scaleY.o" "Middle_Middle2_M_JNT.sy";
connectAttr "Middle_Middle2_M_JNT_scaleZ.o" "Middle_Middle2_M_JNT.sz";
connectAttr "Middle_Middle2_M_JNT_visibility.o" "Middle_Middle2_M_JNT.v";
connectAttr "Middle_Middle2_M_JNT.s" "Middle_Middle3_M_JNT.is";
connectAttr "Joint_Disp.di" "Middle_Middle3_M_JNT.do";
connectAttr "Middle_Middle3_M_JNT_translateX.o" "Middle_Middle3_M_JNT.tx";
connectAttr "Middle_Middle3_M_JNT_translateY.o" "Middle_Middle3_M_JNT.ty";
connectAttr "Middle_Middle3_M_JNT_translateZ.o" "Middle_Middle3_M_JNT.tz";
connectAttr "Middle_Middle3_M_JNT_rotateX.o" "Middle_Middle3_M_JNT.rx";
connectAttr "Middle_Middle3_M_JNT_rotateY.o" "Middle_Middle3_M_JNT.ry";
connectAttr "Middle_Middle3_M_JNT_rotateZ.o" "Middle_Middle3_M_JNT.rz";
connectAttr "Middle_Middle3_M_JNT_scaleX.o" "Middle_Middle3_M_JNT.sx";
connectAttr "Middle_Middle3_M_JNT_scaleY.o" "Middle_Middle3_M_JNT.sy";
connectAttr "Middle_Middle3_M_JNT_scaleZ.o" "Middle_Middle3_M_JNT.sz";
connectAttr "Middle_Middle3_M_JNT_visibility.o" "Middle_Middle3_M_JNT.v";
connectAttr "Middle_Middle3_M_JNT.s" "Middle_Middle4_M_JNT.is";
connectAttr "Joint_Disp.di" "Middle_Middle4_M_JNT.do";
connectAttr "Middle_Middle4_M_JNT_translateX.o" "Middle_Middle4_M_JNT.tx";
connectAttr "Middle_Middle4_M_JNT_translateY.o" "Middle_Middle4_M_JNT.ty";
connectAttr "Middle_Middle4_M_JNT_translateZ.o" "Middle_Middle4_M_JNT.tz";
connectAttr "Middle_Middle4_M_JNT_rotateX.o" "Middle_Middle4_M_JNT.rx";
connectAttr "Middle_Middle4_M_JNT_rotateY.o" "Middle_Middle4_M_JNT.ry";
connectAttr "Middle_Middle4_M_JNT_rotateZ.o" "Middle_Middle4_M_JNT.rz";
connectAttr "Middle_Middle4_M_JNT_visibility.o" "Middle_Middle4_M_JNT.v";
connectAttr "Middle_Middle4_M_JNT_scaleX.o" "Middle_Middle4_M_JNT.sx";
connectAttr "Middle_Middle4_M_JNT_scaleY.o" "Middle_Middle4_M_JNT.sy";
connectAttr "Middle_Middle4_M_JNT_scaleZ.o" "Middle_Middle4_M_JNT.sz";
connectAttr "Arm_Wrist_M_JNT.s" "Ring_Ring1_M_JNT.is";
connectAttr "Joint_Disp.di" "Ring_Ring1_M_JNT.do";
connectAttr "Ring_Ring1_M_JNT_translateX.o" "Ring_Ring1_M_JNT.tx";
connectAttr "Ring_Ring1_M_JNT_translateY.o" "Ring_Ring1_M_JNT.ty";
connectAttr "Ring_Ring1_M_JNT_translateZ.o" "Ring_Ring1_M_JNT.tz";
connectAttr "Ring_Ring1_M_JNT_rotateX.o" "Ring_Ring1_M_JNT.rx";
connectAttr "Ring_Ring1_M_JNT_rotateY.o" "Ring_Ring1_M_JNT.ry";
connectAttr "Ring_Ring1_M_JNT_rotateZ.o" "Ring_Ring1_M_JNT.rz";
connectAttr "Ring_Ring1_M_JNT_scaleX.o" "Ring_Ring1_M_JNT.sx";
connectAttr "Ring_Ring1_M_JNT_scaleY.o" "Ring_Ring1_M_JNT.sy";
connectAttr "Ring_Ring1_M_JNT_scaleZ.o" "Ring_Ring1_M_JNT.sz";
connectAttr "Ring_Ring1_M_JNT_visibility.o" "Ring_Ring1_M_JNT.v";
connectAttr "Ring_Ring1_M_JNT.s" "Ring_Ring2_M_JNT.is";
connectAttr "Joint_Disp.di" "Ring_Ring2_M_JNT.do";
connectAttr "Ring_Ring2_M_JNT_translateX.o" "Ring_Ring2_M_JNT.tx";
connectAttr "Ring_Ring2_M_JNT_translateY.o" "Ring_Ring2_M_JNT.ty";
connectAttr "Ring_Ring2_M_JNT_translateZ.o" "Ring_Ring2_M_JNT.tz";
connectAttr "Ring_Ring2_M_JNT_rotateX.o" "Ring_Ring2_M_JNT.rx";
connectAttr "Ring_Ring2_M_JNT_rotateY.o" "Ring_Ring2_M_JNT.ry";
connectAttr "Ring_Ring2_M_JNT_rotateZ.o" "Ring_Ring2_M_JNT.rz";
connectAttr "Ring_Ring2_M_JNT_scaleX.o" "Ring_Ring2_M_JNT.sx";
connectAttr "Ring_Ring2_M_JNT_scaleY.o" "Ring_Ring2_M_JNT.sy";
connectAttr "Ring_Ring2_M_JNT_scaleZ.o" "Ring_Ring2_M_JNT.sz";
connectAttr "Ring_Ring2_M_JNT_visibility.o" "Ring_Ring2_M_JNT.v";
connectAttr "Ring_Ring2_M_JNT.s" "Ring_Ring3_M_JNT.is";
connectAttr "Joint_Disp.di" "Ring_Ring3_M_JNT.do";
connectAttr "Ring_Ring3_M_JNT_translateX.o" "Ring_Ring3_M_JNT.tx";
connectAttr "Ring_Ring3_M_JNT_translateY.o" "Ring_Ring3_M_JNT.ty";
connectAttr "Ring_Ring3_M_JNT_translateZ.o" "Ring_Ring3_M_JNT.tz";
connectAttr "Ring_Ring3_M_JNT_rotateX.o" "Ring_Ring3_M_JNT.rx";
connectAttr "Ring_Ring3_M_JNT_rotateY.o" "Ring_Ring3_M_JNT.ry";
connectAttr "Ring_Ring3_M_JNT_rotateZ.o" "Ring_Ring3_M_JNT.rz";
connectAttr "Ring_Ring3_M_JNT_scaleX.o" "Ring_Ring3_M_JNT.sx";
connectAttr "Ring_Ring3_M_JNT_scaleY.o" "Ring_Ring3_M_JNT.sy";
connectAttr "Ring_Ring3_M_JNT_scaleZ.o" "Ring_Ring3_M_JNT.sz";
connectAttr "Ring_Ring3_M_JNT_visibility.o" "Ring_Ring3_M_JNT.v";
connectAttr "Ring_Ring3_M_JNT.s" "Ring_Ring4_M_JNT.is";
connectAttr "Joint_Disp.di" "Ring_Ring4_M_JNT.do";
connectAttr "Ring_Ring4_M_JNT_translateX.o" "Ring_Ring4_M_JNT.tx";
connectAttr "Ring_Ring4_M_JNT_translateY.o" "Ring_Ring4_M_JNT.ty";
connectAttr "Ring_Ring4_M_JNT_translateZ.o" "Ring_Ring4_M_JNT.tz";
connectAttr "Ring_Ring4_M_JNT_rotateX.o" "Ring_Ring4_M_JNT.rx";
connectAttr "Ring_Ring4_M_JNT_rotateY.o" "Ring_Ring4_M_JNT.ry";
connectAttr "Ring_Ring4_M_JNT_rotateZ.o" "Ring_Ring4_M_JNT.rz";
connectAttr "Ring_Ring4_M_JNT_visibility.o" "Ring_Ring4_M_JNT.v";
connectAttr "Ring_Ring4_M_JNT_scaleX.o" "Ring_Ring4_M_JNT.sx";
connectAttr "Ring_Ring4_M_JNT_scaleY.o" "Ring_Ring4_M_JNT.sy";
connectAttr "Ring_Ring4_M_JNT_scaleZ.o" "Ring_Ring4_M_JNT.sz";
connectAttr "Arm_Wrist_M_JNT.s" "Index_Index1_M_JNT.is";
connectAttr "Joint_Disp.di" "Index_Index1_M_JNT.do";
connectAttr "Index_Index1_M_JNT_translateX.o" "Index_Index1_M_JNT.tx";
connectAttr "Index_Index1_M_JNT_translateY.o" "Index_Index1_M_JNT.ty";
connectAttr "Index_Index1_M_JNT_translateZ.o" "Index_Index1_M_JNT.tz";
connectAttr "Index_Index1_M_JNT_rotateX.o" "Index_Index1_M_JNT.rx";
connectAttr "Index_Index1_M_JNT_rotateY.o" "Index_Index1_M_JNT.ry";
connectAttr "Index_Index1_M_JNT_rotateZ.o" "Index_Index1_M_JNT.rz";
connectAttr "Index_Index1_M_JNT_scaleX.o" "Index_Index1_M_JNT.sx";
connectAttr "Index_Index1_M_JNT_scaleY.o" "Index_Index1_M_JNT.sy";
connectAttr "Index_Index1_M_JNT_scaleZ.o" "Index_Index1_M_JNT.sz";
connectAttr "Index_Index1_M_JNT_visibility.o" "Index_Index1_M_JNT.v";
connectAttr "Index_Index1_M_JNT.s" "Index_Index2_M_JNT.is";
connectAttr "Joint_Disp.di" "Index_Index2_M_JNT.do";
connectAttr "Index_Index2_M_JNT_translateX.o" "Index_Index2_M_JNT.tx";
connectAttr "Index_Index2_M_JNT_translateY.o" "Index_Index2_M_JNT.ty";
connectAttr "Index_Index2_M_JNT_translateZ.o" "Index_Index2_M_JNT.tz";
connectAttr "Index_Index2_M_JNT_rotateX.o" "Index_Index2_M_JNT.rx";
connectAttr "Index_Index2_M_JNT_rotateY.o" "Index_Index2_M_JNT.ry";
connectAttr "Index_Index2_M_JNT_rotateZ.o" "Index_Index2_M_JNT.rz";
connectAttr "Index_Index2_M_JNT_scaleX.o" "Index_Index2_M_JNT.sx";
connectAttr "Index_Index2_M_JNT_scaleY.o" "Index_Index2_M_JNT.sy";
connectAttr "Index_Index2_M_JNT_scaleZ.o" "Index_Index2_M_JNT.sz";
connectAttr "Index_Index2_M_JNT_visibility.o" "Index_Index2_M_JNT.v";
connectAttr "Index_Index2_M_JNT.s" "Index_Index3_M_JNT.is";
connectAttr "Joint_Disp.di" "Index_Index3_M_JNT.do";
connectAttr "Index_Index3_M_JNT_translateX.o" "Index_Index3_M_JNT.tx";
connectAttr "Index_Index3_M_JNT_translateY.o" "Index_Index3_M_JNT.ty";
connectAttr "Index_Index3_M_JNT_translateZ.o" "Index_Index3_M_JNT.tz";
connectAttr "Index_Index3_M_JNT_rotateX.o" "Index_Index3_M_JNT.rx";
connectAttr "Index_Index3_M_JNT_rotateY.o" "Index_Index3_M_JNT.ry";
connectAttr "Index_Index3_M_JNT_rotateZ.o" "Index_Index3_M_JNT.rz";
connectAttr "Index_Index3_M_JNT_scaleX.o" "Index_Index3_M_JNT.sx";
connectAttr "Index_Index3_M_JNT_scaleY.o" "Index_Index3_M_JNT.sy";
connectAttr "Index_Index3_M_JNT_scaleZ.o" "Index_Index3_M_JNT.sz";
connectAttr "Index_Index3_M_JNT_visibility.o" "Index_Index3_M_JNT.v";
connectAttr "Index_Index3_M_JNT.s" "Index_Index4_M_JNT.is";
connectAttr "Joint_Disp.di" "Index_Index4_M_JNT.do";
connectAttr "Index_Index4_M_JNT_translateX.o" "Index_Index4_M_JNT.tx";
connectAttr "Index_Index4_M_JNT_translateY.o" "Index_Index4_M_JNT.ty";
connectAttr "Index_Index4_M_JNT_translateZ.o" "Index_Index4_M_JNT.tz";
connectAttr "Index_Index4_M_JNT_rotateX.o" "Index_Index4_M_JNT.rx";
connectAttr "Index_Index4_M_JNT_rotateY.o" "Index_Index4_M_JNT.ry";
connectAttr "Index_Index4_M_JNT_rotateZ.o" "Index_Index4_M_JNT.rz";
connectAttr "Index_Index4_M_JNT_visibility.o" "Index_Index4_M_JNT.v";
connectAttr "Index_Index4_M_JNT_scaleX.o" "Index_Index4_M_JNT.sx";
connectAttr "Index_Index4_M_JNT_scaleY.o" "Index_Index4_M_JNT.sy";
connectAttr "Index_Index4_M_JNT_scaleZ.o" "Index_Index4_M_JNT.sz";
connectAttr "Arm_Wrist_M_JNT.s" "Pinkie_Pinkey1_M_JNT.is";
connectAttr "Joint_Disp.di" "Pinkie_Pinkey1_M_JNT.do";
connectAttr "Pinkie_Pinkey1_M_JNT_translateX.o" "Pinkie_Pinkey1_M_JNT.tx";
connectAttr "Pinkie_Pinkey1_M_JNT_translateY.o" "Pinkie_Pinkey1_M_JNT.ty";
connectAttr "Pinkie_Pinkey1_M_JNT_translateZ.o" "Pinkie_Pinkey1_M_JNT.tz";
connectAttr "Pinkie_Pinkey1_M_JNT_rotateX.o" "Pinkie_Pinkey1_M_JNT.rx";
connectAttr "Pinkie_Pinkey1_M_JNT_rotateY.o" "Pinkie_Pinkey1_M_JNT.ry";
connectAttr "Pinkie_Pinkey1_M_JNT_rotateZ.o" "Pinkie_Pinkey1_M_JNT.rz";
connectAttr "Pinkie_Pinkey1_M_JNT_scaleX.o" "Pinkie_Pinkey1_M_JNT.sx";
connectAttr "Pinkie_Pinkey1_M_JNT_scaleY.o" "Pinkie_Pinkey1_M_JNT.sy";
connectAttr "Pinkie_Pinkey1_M_JNT_scaleZ.o" "Pinkie_Pinkey1_M_JNT.sz";
connectAttr "Pinkie_Pinkey1_M_JNT_visibility.o" "Pinkie_Pinkey1_M_JNT.v";
connectAttr "Pinkie_Pinkey1_M_JNT.s" "Pinkie_Pinkey2_M_JNT.is";
connectAttr "Joint_Disp.di" "Pinkie_Pinkey2_M_JNT.do";
connectAttr "Pinkie_Pinkey2_M_JNT_translateX.o" "Pinkie_Pinkey2_M_JNT.tx";
connectAttr "Pinkie_Pinkey2_M_JNT_translateY.o" "Pinkie_Pinkey2_M_JNT.ty";
connectAttr "Pinkie_Pinkey2_M_JNT_translateZ.o" "Pinkie_Pinkey2_M_JNT.tz";
connectAttr "Pinkie_Pinkey2_M_JNT_rotateX.o" "Pinkie_Pinkey2_M_JNT.rx";
connectAttr "Pinkie_Pinkey2_M_JNT_rotateY.o" "Pinkie_Pinkey2_M_JNT.ry";
connectAttr "Pinkie_Pinkey2_M_JNT_rotateZ.o" "Pinkie_Pinkey2_M_JNT.rz";
connectAttr "Pinkie_Pinkey2_M_JNT_scaleX.o" "Pinkie_Pinkey2_M_JNT.sx";
connectAttr "Pinkie_Pinkey2_M_JNT_scaleY.o" "Pinkie_Pinkey2_M_JNT.sy";
connectAttr "Pinkie_Pinkey2_M_JNT_scaleZ.o" "Pinkie_Pinkey2_M_JNT.sz";
connectAttr "Pinkie_Pinkey2_M_JNT_visibility.o" "Pinkie_Pinkey2_M_JNT.v";
connectAttr "Pinkie_Pinkey2_M_JNT.s" "Pinkie_Pinkey3_M_JNT.is";
connectAttr "Joint_Disp.di" "Pinkie_Pinkey3_M_JNT.do";
connectAttr "Pinkie_Pinkey3_M_JNT_translateX.o" "Pinkie_Pinkey3_M_JNT.tx";
connectAttr "Pinkie_Pinkey3_M_JNT_translateY.o" "Pinkie_Pinkey3_M_JNT.ty";
connectAttr "Pinkie_Pinkey3_M_JNT_translateZ.o" "Pinkie_Pinkey3_M_JNT.tz";
connectAttr "Pinkie_Pinkey3_M_JNT_rotateX.o" "Pinkie_Pinkey3_M_JNT.rx";
connectAttr "Pinkie_Pinkey3_M_JNT_rotateY.o" "Pinkie_Pinkey3_M_JNT.ry";
connectAttr "Pinkie_Pinkey3_M_JNT_rotateZ.o" "Pinkie_Pinkey3_M_JNT.rz";
connectAttr "Pinkie_Pinkey3_M_JNT_scaleX.o" "Pinkie_Pinkey3_M_JNT.sx";
connectAttr "Pinkie_Pinkey3_M_JNT_scaleY.o" "Pinkie_Pinkey3_M_JNT.sy";
connectAttr "Pinkie_Pinkey3_M_JNT_scaleZ.o" "Pinkie_Pinkey3_M_JNT.sz";
connectAttr "Pinkie_Pinkey3_M_JNT_visibility.o" "Pinkie_Pinkey3_M_JNT.v";
connectAttr "Pinkie_Pinkey3_M_JNT.s" "Pinkie_Pinkey4_M_JNT.is";
connectAttr "Joint_Disp.di" "Pinkie_Pinkey4_M_JNT.do";
connectAttr "Pinkie_Pinkey4_M_JNT_translateX.o" "Pinkie_Pinkey4_M_JNT.tx";
connectAttr "Pinkie_Pinkey4_M_JNT_translateY.o" "Pinkie_Pinkey4_M_JNT.ty";
connectAttr "Pinkie_Pinkey4_M_JNT_translateZ.o" "Pinkie_Pinkey4_M_JNT.tz";
connectAttr "Pinkie_Pinkey4_M_JNT_rotateX.o" "Pinkie_Pinkey4_M_JNT.rx";
connectAttr "Pinkie_Pinkey4_M_JNT_rotateY.o" "Pinkie_Pinkey4_M_JNT.ry";
connectAttr "Pinkie_Pinkey4_M_JNT_rotateZ.o" "Pinkie_Pinkey4_M_JNT.rz";
connectAttr "Pinkie_Pinkey4_M_JNT_visibility.o" "Pinkie_Pinkey4_M_JNT.v";
connectAttr "Pinkie_Pinkey4_M_JNT_scaleX.o" "Pinkie_Pinkey4_M_JNT.sx";
connectAttr "Pinkie_Pinkey4_M_JNT_scaleY.o" "Pinkie_Pinkey4_M_JNT.sy";
connectAttr "Pinkie_Pinkey4_M_JNT_scaleZ.o" "Pinkie_Pinkey4_M_JNT.sz";
connectAttr "Arm_Wrist_M_JNT.s" "Thumb_Thumb1_M_JNT.is";
connectAttr "Joint_Disp.di" "Thumb_Thumb1_M_JNT.do";
connectAttr "Thumb_Thumb1_M_JNT_translateX.o" "Thumb_Thumb1_M_JNT.tx";
connectAttr "Thumb_Thumb1_M_JNT_translateY.o" "Thumb_Thumb1_M_JNT.ty";
connectAttr "Thumb_Thumb1_M_JNT_translateZ.o" "Thumb_Thumb1_M_JNT.tz";
connectAttr "Thumb_Thumb1_M_JNT_rotateX.o" "Thumb_Thumb1_M_JNT.rx";
connectAttr "Thumb_Thumb1_M_JNT_rotateY.o" "Thumb_Thumb1_M_JNT.ry";
connectAttr "Thumb_Thumb1_M_JNT_rotateZ.o" "Thumb_Thumb1_M_JNT.rz";
connectAttr "Thumb_Thumb1_M_JNT_scaleX.o" "Thumb_Thumb1_M_JNT.sx";
connectAttr "Thumb_Thumb1_M_JNT_scaleY.o" "Thumb_Thumb1_M_JNT.sy";
connectAttr "Thumb_Thumb1_M_JNT_scaleZ.o" "Thumb_Thumb1_M_JNT.sz";
connectAttr "Thumb_Thumb1_M_JNT_visibility.o" "Thumb_Thumb1_M_JNT.v";
connectAttr "Thumb_Thumb1_M_JNT.s" "Thumb_Thumb2_M_JNT.is";
connectAttr "Joint_Disp.di" "Thumb_Thumb2_M_JNT.do";
connectAttr "Thumb_Thumb2_M_JNT_translateX.o" "Thumb_Thumb2_M_JNT.tx";
connectAttr "Thumb_Thumb2_M_JNT_translateY.o" "Thumb_Thumb2_M_JNT.ty";
connectAttr "Thumb_Thumb2_M_JNT_translateZ.o" "Thumb_Thumb2_M_JNT.tz";
connectAttr "Thumb_Thumb2_M_JNT_rotateX.o" "Thumb_Thumb2_M_JNT.rx";
connectAttr "Thumb_Thumb2_M_JNT_rotateY.o" "Thumb_Thumb2_M_JNT.ry";
connectAttr "Thumb_Thumb2_M_JNT_rotateZ.o" "Thumb_Thumb2_M_JNT.rz";
connectAttr "Thumb_Thumb2_M_JNT_scaleX.o" "Thumb_Thumb2_M_JNT.sx";
connectAttr "Thumb_Thumb2_M_JNT_scaleY.o" "Thumb_Thumb2_M_JNT.sy";
connectAttr "Thumb_Thumb2_M_JNT_scaleZ.o" "Thumb_Thumb2_M_JNT.sz";
connectAttr "Thumb_Thumb2_M_JNT_visibility.o" "Thumb_Thumb2_M_JNT.v";
connectAttr "Thumb_Thumb2_M_JNT.s" "Thumb_Thumb3_M_JNT.is";
connectAttr "Joint_Disp.di" "Thumb_Thumb3_M_JNT.do";
connectAttr "Thumb_Thumb3_M_JNT_translateX.o" "Thumb_Thumb3_M_JNT.tx";
connectAttr "Thumb_Thumb3_M_JNT_translateY.o" "Thumb_Thumb3_M_JNT.ty";
connectAttr "Thumb_Thumb3_M_JNT_translateZ.o" "Thumb_Thumb3_M_JNT.tz";
connectAttr "Thumb_Thumb3_M_JNT_rotateX.o" "Thumb_Thumb3_M_JNT.rx";
connectAttr "Thumb_Thumb3_M_JNT_rotateY.o" "Thumb_Thumb3_M_JNT.ry";
connectAttr "Thumb_Thumb3_M_JNT_rotateZ.o" "Thumb_Thumb3_M_JNT.rz";
connectAttr "Thumb_Thumb3_M_JNT_scaleX.o" "Thumb_Thumb3_M_JNT.sx";
connectAttr "Thumb_Thumb3_M_JNT_scaleY.o" "Thumb_Thumb3_M_JNT.sy";
connectAttr "Thumb_Thumb3_M_JNT_scaleZ.o" "Thumb_Thumb3_M_JNT.sz";
connectAttr "Thumb_Thumb3_M_JNT_visibility.o" "Thumb_Thumb3_M_JNT.v";
connectAttr "Thumb_Thumb3_M_JNT.s" "Thumb_Thumb4_M_JNT.is";
connectAttr "Joint_Disp.di" "Thumb_Thumb4_M_JNT.do";
connectAttr "Thumb_Thumb4_M_JNT_translateX.o" "Thumb_Thumb4_M_JNT.tx";
connectAttr "Thumb_Thumb4_M_JNT_translateY.o" "Thumb_Thumb4_M_JNT.ty";
connectAttr "Thumb_Thumb4_M_JNT_translateZ.o" "Thumb_Thumb4_M_JNT.tz";
connectAttr "Thumb_Thumb4_M_JNT_rotateX.o" "Thumb_Thumb4_M_JNT.rx";
connectAttr "Thumb_Thumb4_M_JNT_rotateY.o" "Thumb_Thumb4_M_JNT.ry";
connectAttr "Thumb_Thumb4_M_JNT_rotateZ.o" "Thumb_Thumb4_M_JNT.rz";
connectAttr "Thumb_Thumb4_M_JNT_visibility.o" "Thumb_Thumb4_M_JNT.v";
connectAttr "Thumb_Thumb4_M_JNT_scaleX.o" "Thumb_Thumb4_M_JNT.sx";
connectAttr "Thumb_Thumb4_M_JNT_scaleY.o" "Thumb_Thumb4_M_JNT.sy";
connectAttr "Thumb_Thumb4_M_JNT_scaleZ.o" "Thumb_Thumb4_M_JNT.sz";
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
connectAttr "layerManager.dli[2]" "Joint_Disp.id";
connectAttr "lambert2.oc" "Mesh_Human_Biped_01_lambert2SG.ss";
connectAttr "Arm_MeshShape.iog.og[0]" "Mesh_Human_Biped_01_lambert2SG.dsm" -na;
connectAttr "groupId3.msg" "Mesh_Human_Biped_01_lambert2SG.gn" -na;
connectAttr "Mesh_Human_Biped_01_lambert2SG.msg" "materialInfo3.sg";
connectAttr "lambert2.msg" "materialInfo3.m";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "Arm_MeshShape.iog.og[1]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
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
connectAttr "Thumb_Thumb4_M_JNT.msg" "skinCluster1.ptt";
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
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupParts3.og" "tweak1.ip[0].ig";
connectAttr "groupId5.id" "tweak1.ip[0].gi";
connectAttr "groupId5.msg" "tweakSet1.gn" -na;
connectAttr "Arm_MeshShape.iog.og[2]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "groupParts1.og" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "Arm_MeshShapeOrig.w" "groupParts1.ig";
connectAttr "groupId3.id" "groupParts1.gi";
connectAttr "layerManager.dli[5]" "Meshes_Disp.id";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Mesh_Human_Biped_01_lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Mesh_Human_Biped_01_lambert2SG.message" ":defaultLightSet.message";
connectAttr "Mesh_Human_Biped_01_lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
// End of TEMP_AnimBakeForExport.ma
