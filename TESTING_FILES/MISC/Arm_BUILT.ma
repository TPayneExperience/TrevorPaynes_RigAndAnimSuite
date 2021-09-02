//Maya ASCII 2019 scene
//Name: Arm_BUILT.ma
//Last modified: Wed, Sep 01, 2021 07:31:19 PM
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
	setAttr ".t" -type "double3" 110.33248779938282 162.05406792180148 26.082034515737529 ;
	setAttr ".r" -type "double3" -26.738352729605843 51.000000000001641 2.526975707999705e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "E77BA93B-47C6-9477-E3E8-4A89AC42A323";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 98.698327754336717;
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
	rename -uid "23028265-41C2-C92F-E8F6-B4BE90F84E66";
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
	addAttr -ci true -sn "IKSShape" -ln "IKSShape" -dt "string";
	addAttr -ci true -sn "JointShape" -ln "JointShape" -dt "string";
	addAttr -ci true -sn "IKPVShape" -ln "IKPVShape" -dt "string";
	addAttr -ci true -sn "LookAtShape" -ln "LookAtShape" -dt "string";
	addAttr -ci true -sn "FKRShape" -ln "FKRShape" -dt "string";
	addAttr -ci true -sn "FKShape" -ln "FKShape" -dt "string";
	addAttr -ci true -sn "EmptyShape" -ln "EmptyShape" -dt "string";
	setAttr ".isBuilt" yes;
	setAttr ".pfrsName" -type "string" "TEMP";
	setAttr ".category" -type "string" "Skinning_Setup";
	setAttr ".operation" -type "string" "Quick Weights";
	setAttr ".nextLimbID" 10;
	setAttr ".nextJointID" 28;
	setAttr ".nextMeshID" 2;
createNode transform -n "JOINTS" -p "TEMP_RigRoot";
	rename -uid "5FCDAB50-4F32-0577-AF6E-7A97B731B6B2";
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
	rename -uid "05A8CD36-4954-C80E-3CC0-74A1164C8677";
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
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 -8.5265128291212022e-14 
		4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -1.6051953727495712e-08 ;
	setAttr ".lr" -type "double3" 0 0 1.6051953727497234e-08 ;
	setAttr ".rst" -type "double3" 12.27416877276711 1.3482981273682526e-06 -6.9277916736609768e-14 ;
	setAttr ".rsrr" -type "double3" 0 0 1.6051953727497234e-08 ;
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
	rename -uid "C317C718-45DE-E214-56B5-889FA63B58FA";
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
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 -5.6843418860808015e-14 
		1.7763568394002505e-15 ;
	setAttr ".rst" -type "double3" 8.700292705433327 2.8421709430404007e-14 -1.7763568394002505e-15 ;
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
	rename -uid "86F786A6-458D-ACFD-6C3B-BDA99D0A20BF";
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
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 -2.8421709430404007e-14 
		2.6645352591003757e-15 ;
	setAttr ".rst" -type "double3" 16.28114869182432 0 -8.8817841970012523e-16 ;
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
	rename -uid "583730E4-40BD-FE8C-9D8A-89B93830047D";
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
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-13 -1.4210854715202004e-13 
		8.8817841970012523e-16 ;
	setAttr ".rst" -type "double3" 3.4510049024180063 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Middle_Middle3_M_JNT_parentConstraint1" -p "Middle_Middle3_M_JNT";
	rename -uid "94742AD9-4357-780D-1912-E8B301659BE5";
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
	setAttr ".tg[0].tot" -type "double3" 1.0658141036401503e-13 -1.9895196601282805e-13 
		1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" 1.9878466759146975e-16 -1.1927080055488192e-15 
		-3.2613109526725522e-15 ;
	setAttr ".lr" -type "double3" -9.9392333795734899e-17 7.9513867036587919e-16 -9.3180312933501468e-18 ;
	setAttr ".rst" -type "double3" 3.3563095325937393 -1.1368683772161603e-13 -6.6613381477509392e-16 ;
	setAttr ".rsrr" -type "double3" -9.9392333795734899e-17 7.9513867036587919e-16 -9.3180312933501468e-18 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Middle_Middle2_M_JNT_parentConstraint1" -p "Middle_Middle2_M_JNT";
	rename -uid "586ED14E-428E-9F10-25F8-A6BE8170349B";
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
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-14 -1.4210854715202004e-13 
		-1.5543122344752192e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -2.385416011097638e-15 ;
	setAttr ".lr" -type "double3" 0 0 2.3854160110976376e-15 ;
	setAttr ".rst" -type "double3" 3.2775428993820128 2.8421709430404007e-14 -1.1102230246251565e-15 ;
	setAttr ".rsrr" -type "double3" 0 0 2.3854160110976376e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Middle_Middle1_M_JNT_parentConstraint1" -p "Middle_Middle1_M_JNT";
	rename -uid "868093BF-4AF2-7872-89BD-208169610463";
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
	setAttr ".tg[0].tot" -type "double3" 2.1316282072803006e-14 -1.7053025658242404e-13 
		-1.3322676295501878e-15 ;
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
	rename -uid "BF16FD3B-4322-965C-DA10-E680E49CB478";
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
	setAttr ".tg[0].tot" -type "double3" 6.2527760746888816e-13 -4.2632564145606011e-14 
		-8.8817841970012523e-16 ;
	setAttr ".rst" -type "double3" 3.7421843699642388 8.5265128291212022e-14 -5.3290705182007514e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ring_Ring3_M_JNT_parentConstraint1" -p "Ring_Ring3_M_JNT";
	rename -uid "93E87D00-4A4E-1DF6-EC5F-18A62F6D6BAF";
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
	setAttr ".tg[0].tot" -type "double3" 1.3500311979441904e-13 -1.4210854715202004e-13 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 3.9756933518293969e-16 1.9878466759146976e-15 
		1.7138965558902035e-14 ;
	setAttr ".lr" -type "double3" -6.460501696722766e-16 -1.4411888400381563e-15 -1.9064692026194401e-14 ;
	setAttr ".rst" -type "double3" 2.9147340994338933 -2.8421709430404007e-14 0 ;
	setAttr ".rsrr" -type "double3" -6.460501696722766e-16 -1.4411888400381563e-15 -1.9064692026194401e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ring_Ring2_M_JNT_parentConstraint1" -p "Ring_Ring2_M_JNT";
	rename -uid "AD2B0723-44C7-D237-81B1-239D7A9134C8";
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
	setAttr ".tg[0].tot" -type "double3" 2.8421709430404007e-14 -1.4210854715202004e-13 
		3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" 1.987846675914698e-16 -1.987846675914698e-16 
		1.731600815347569e-15 ;
	setAttr ".lr" -type "double3" -1.1181637552020177e-16 1.9257264672923636e-16 -7.9475041906198963e-16 ;
	setAttr ".rst" -type "double3" 2.6470511256765761 8.5265128291212022e-14 1.7763568394002505e-15 ;
	setAttr ".rsrr" -type "double3" -1.1181637552020177e-16 1.9257264672923636e-16 -7.9475041906198963e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ring_Ring1_M_JNT_parentConstraint1" -p "Ring_Ring1_M_JNT";
	rename -uid "52918F68-430C-E586-3977-ABBC3AB6CDA9";
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
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-15 -1.7053025658242404e-13 
		-8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" 9.9392333795734924e-17 -3.975693351829396e-16 
		-2.0375428428125655e-15 ;
	setAttr ".lr" -type "double3" -9.9392333795734887e-17 3.9135731432070616e-16 3.1813311840712959e-15 ;
	setAttr ".rst" -type "double3" 7.8190365685399286 0.52916697249287381 -2.7118128374972352 ;
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
	rename -uid "E71719A6-4950-7F44-82C1-FE8E871F5773";
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
	setAttr ".tg[0].tot" -type "double3" 7.673861546209082e-13 -9.9475983006414026e-14 
		3.9968028886505635e-15 ;
	setAttr ".rst" -type "double3" 3.2332893329224959 2.8421709430404007e-14 7.1054273576010019e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Index_Index3_M_JNT_parentConstraint1" -p "Index_Index3_M_JNT";
	rename -uid "DBC79846-4C77-8C94-42B9-558F23167CE5";
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
	setAttr ".tg[0].tot" -type "double3" 1.4566126083082054e-13 -2.5579538487363607e-13 
		-4.4408920985006262e-15 ;
	setAttr ".tg[0].tor" -type "double3" 1.7890620083232284e-15 3.975693351829396e-16 
		-3.9651329163635993e-14 ;
	setAttr ".lr" -type "double3" -1.5405811738338917e-15 -7.454425034680114e-16 4.1328574796439022e-14 ;
	setAttr ".rst" -type "double3" 2.824840106606807 -1.4210854715202004e-13 -2.2204460492503131e-15 ;
	setAttr ".rsrr" -type "double3" -1.5405811738338917e-15 -7.454425034680114e-16 4.1328574796439022e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Index_Index2_M_JNT_parentConstraint1" -p "Index_Index2_M_JNT";
	rename -uid "0C4B266C-4805-B5E1-3042-4FB87CBF3D2B";
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
	setAttr ".tg[0].tot" -type "double3" 4.7961634663806763e-14 -1.4210854715202004e-13 
		2.2204460492503131e-15 ;
	setAttr ".tg[0].tor" -type "double3" 3.1681306397390506e-16 2.2363275104040355e-16 
		-2.073725437764426e-14 ;
	setAttr ".lr" -type "double3" -3.1836606918946342e-16 -2.2033261495734197e-16 2.1468571206719979e-14 ;
	setAttr ".rst" -type "double3" 3.6539765362013803 2.8421709430404007e-14 -1.7763568394002505e-15 ;
	setAttr ".rsrr" -type "double3" -3.1836606918946342e-16 -2.2033261495734197e-16 
		2.1468571206719979e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Index_Index1_M_JNT_parentConstraint1" -p "Index_Index1_M_JNT";
	rename -uid "7CC076E0-4321-D0E0-5BE8-08AF8E2D36D5";
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
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 -1.7053025658242404e-13 
		-1.3322676295501878e-15 ;
	setAttr ".tg[0].tor" -type "double3" 1.987846675914698e-16 3.975693351829396e-16 
		-2.2065098102653147e-14 ;
	setAttr ".lr" -type "double3" -1.9878466759146997e-16 -8.4483483726374669e-16 2.2273200801537967e-14 ;
	setAttr ".rst" -type "double3" 7.8288810320045172 0.94274018076015409 1.8635468004911599 ;
	setAttr ".rsrr" -type "double3" -1.9878466759146997e-16 -8.4483483726374669e-16 
		2.2273200801537967e-14 ;
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
	rename -uid "F4945110-4DAC-F3B3-079E-61A89F5F1E48";
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
	setAttr ".tg[0].tot" -type "double3" 7.3896444519050419e-13 -1.4210854715202004e-13 
		-4.6629367034256575e-15 ;
	setAttr ".rst" -type "double3" 2.1354158919624737 5.6843418860808015e-14 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Pinkie_Pinkey3_M_JNT_parentConstraint1" -p "Pinkie_Pinkey3_M_JNT";
	rename -uid "F54DC3D4-4781-242B-F2EF-DBB210AC8073";
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-13 -1.9895196601282805e-13 
		-2.6645352591003757e-15 ;
	setAttr ".tg[0].tor" -type "double3" -5.963540027744093e-16 -1.987846675914698e-16 
		4.0937217482118309e-15 ;
	setAttr ".lr" -type "double3" 4.4726550208080709e-16 1.490885006936024e-16 -6.351791331633684e-15 ;
	setAttr ".rst" -type "double3" 2.4760630189721748 -8.5265128291212022e-14 -8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" 4.4726550208080709e-16 1.490885006936024e-16 -6.351791331633684e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Pinkie_Pinkey2_M_JNT_parentConstraint1" -p "Pinkie_Pinkey2_M_JNT";
	rename -uid "50803983-4D33-4BF7-5B58-71A7D9492BAE";
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
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-14 -1.7053025658242404e-13 
		8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" 3.975693351829396e-16 -2.3854160110976376e-15 
		2.4568542510133221e-14 ;
	setAttr ".lr" -type "double3" -2.4848083448933774e-16 2.5096564283423063e-15 -2.2257670749382384e-14 ;
	setAttr ".rst" -type "double3" 2.2858601897864617 8.5265128291212022e-14 -1.7763568394002505e-15 ;
	setAttr ".rsrr" -type "double3" -2.4848083448933774e-16 2.5096564283423063e-15 -2.2257670749382384e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Pinkie_Pinkey1_M_JNT_parentConstraint1" -p "Pinkie_Pinkey1_M_JNT";
	rename -uid "72A0363C-4EA1-0B6B-E0DC-8F8EFDAF3A45";
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
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-15 -1.9895196601282805e-13 
		1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" -7.9513867036587919e-16 3.975693351829395e-16 
		-2.0613232351758023e-15 ;
	setAttr ".lr" -type "double3" 8.0756271209034607e-16 -4.0688736647628975e-16 3.182034889559596e-15 ;
	setAttr ".rst" -type "double3" 7.2965411030324674 0.4093609984092268 -4.6085328294878325 ;
	setAttr ".rsrr" -type "double3" 8.0756271209034607e-16 -4.0688736647628975e-16 3.182034889559596e-15 ;
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
	rename -uid "DD259074-40BB-C666-987A-339B7413E099";
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
	setAttr ".tg[0].tot" -type "double3" 3.1263880373444408e-13 -2.8421709430404007e-14 
		1.1368683772161603e-13 ;
	setAttr ".rst" -type "double3" 2.8346696655482546 1.4210854715202004e-14 -2.8421709430404007e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Thumb_Thumb3_M_JNT_parentConstraint1" -p "Thumb_Thumb3_M_JNT";
	rename -uid "0E9C99C9-4B03-B571-5CC0-E3838940DEB5";
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
	setAttr ".tg[0].tot" -type "double3" 9.2370555648813024e-14 -2.8421709430404007e-14 
		1.1368683772161603e-13 ;
	setAttr ".tg[0].tor" -type "double3" -2.8624992133171654e-14 -4.7708320221952759e-15 
		6.5598940305185051e-15 ;
	setAttr ".lr" -type "double3" 2.8227422797988717e-14 2.9817700138720487e-15 -4.2738703532166017e-15 ;
	setAttr ".rst" -type "double3" 4.0292311701752652 -1.4210854715202004e-14 5.6843418860808015e-14 ;
	setAttr ".rsrr" -type "double3" 2.8227422797988717e-14 2.9817700138720487e-15 -4.2738703532166017e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Thumb_Thumb2_M_JNT_parentConstraint1" -p "Thumb_Thumb2_M_JNT";
	rename -uid "12B690DC-443E-B98F-E695-10BE3379079D";
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
	setAttr ".tg[0].tot" -type "double3" 5.6843418860808015e-14 -3.5527136788005009e-14 
		1.1368683772161603e-13 ;
	setAttr ".tg[0].tor" -type "double3" -5.0888874903416281e-14 9.5416640443905519e-15 
		1.4710065401768767e-14 ;
	setAttr ".lr" -type "double3" 5.0093736233050376e-14 -8.2495637050459874e-15 -1.7294266080457871e-14 ;
	setAttr ".rst" -type "double3" 3.2816682663097616 -1.4210854715202004e-14 0 ;
	setAttr ".rsrr" -type "double3" 5.0093736233050376e-14 -8.2495637050459874e-15 -1.7294266080457871e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Thumb_Thumb1_M_JNT_parentConstraint1" -p "Thumb_Thumb1_M_JNT";
	rename -uid "482AADEE-4543-FE24-2F93-3482189CAF6D";
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
	setAttr ".tg[0].tot" -type "double3" 2.4868995751603507e-14 -1.7763568394002505e-14 
		1.7053025658242404e-13 ;
	setAttr ".tg[0].tor" -type "double3" 3.180554681463516e-15 7.9513867036587919e-16 
		1.9083328088781101e-14 ;
	setAttr ".lr" -type "double3" 3.1805546814635183e-15 -7.5538173684758519e-15 -1.2722218725854067e-14 ;
	setAttr ".rst" -type "double3" 2.6690456837124401 -1.7312968437121299 1.7853067906047229 ;
	setAttr ".rsrr" -type "double3" 3.1805546814635183e-15 -7.5538173684758519e-15 -1.2722218725854067e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Arm_Wrist_M_JNT_parentConstraint1" -p "Arm_Wrist_M_JNT";
	rename -uid "BBB2F0BB-4F8C-4696-C961-68A944259E26";
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
	setAttr ".tg[0].tot" -type "double3" -2.8421709430404007e-14 -2.8421709430404007e-14 
		2.6645352591003757e-15 ;
	setAttr ".tg[0].tor" -type "double3" -2.7298919804736761e-20 8.6780928944704544e-27 
		3.6398559739649005e-20 ;
	setAttr ".lr" -type "double3" 2.4265706493103129e-20 -5.7853952629802989e-27 -1.8199279869824156e-20 ;
	setAttr ".rst" -type "double3" 26.259939324857896 -2.8415820452210028e-06 1.3322676295501878e-14 ;
	setAttr ".rsrr" -type "double3" 2.4265706493103129e-20 -5.7853952629802989e-27 -1.8199279869824156e-20 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Arm_Elbow_M_JNT_parentConstraint1" -p "Arm_Elbow_M_JNT";
	rename -uid "43FE1B6F-4FBD-97B2-115A-38A7D4D89767";
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
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-14 -1.1368683772161603e-13 
		-8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" 2.8436374796600794e-22 -2.3854160110976384e-15 
		4.5561467976133282e-21 ;
	setAttr ".lr" -type "double3" -3.317577059603425e-22 1.5902773407317637e-15 -4.5438957227068334e-21 ;
	setAttr ".rst" -type "double3" 25.941269954820431 -3.726028694472916e-07 0.19840277671717521 ;
	setAttr ".rsrr" -type "double3" -3.317577059603425e-22 1.5902773407317637e-15 -4.5438957227068334e-21 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Arm_Shoulder_M_JNT_parentConstraint1" -p "Arm_Shoulder_M_JNT";
	rename -uid "80CE12C8-431A-B1D4-2EA0-D18D885C5FE6";
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
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-15 0 -2.2204460492503131e-16 ;
	setAttr ".tg[0].tor" -type "double3" 2.843637479660079e-22 3.975693351829396e-16 
		-7.5814587347611308e-21 ;
	setAttr ".lr" -type "double3" -2.843637479660079e-22 1.8811182536655945e-44 7.5804414220157282e-21 ;
	setAttr ".rst" -type "double3" 8.7083126930517007 2.8421709430404007e-14 -4.4408920985006262e-16 ;
	setAttr ".rsrr" -type "double3" -2.843637479660079e-22 1.8811182536655945e-44 7.5804414220157282e-21 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Clav_Clav01_M_JNT_parentConstraint1" -p "Clav_Clav01_M_JNT";
	rename -uid "28BCF547-41BB-19F2-CDDF-2DB701977F3A";
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
	rename -uid "C76448FF-45FB-C61F-3DA0-7D950F68D28F";
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
	rename -uid "30AAA9C9-4651-1D67-17D7-90A70F432472";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom1:Custom2:Custom3:Custom4" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 3 -en "Body:Face:Custom1:Custom2" 
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
	addAttr -ci true -sn "bakeInternal" -ln "bakeInternal" -dv 1 -min 0 -max 1 -at "bool";
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
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "BicepTwist_Joint_M_GRP0" -p "BicepTwist_Limb_M_NODE";
	rename -uid "8B0AE6A2-470E-118D-5D60-71BA44916BF9";
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
	rename -uid "F724AA09-4B54-D3D1-69DD-DFB676F3DD85";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "BicepTwist_Joint_M_CTR0Shape" -p "BicepTwist_Joint_M_CTR0";
	rename -uid "7C5486CA-468A-00DD-E652-30B653366B4E";
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
	rename -uid "100C3C25-4687-F827-BDD9-68B5023EFFBA";
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
	setAttr ".tg[0].tot" -type "double3" 12.274168772767119 1.3482982126333809e-06 -7.0388139761234925e-14 ;
	setAttr ".tg[0].tor" -type "double3" 2.3941247317872461e-07 1.1927080055488188e-15 
		-7.198379165158325e-06 ;
	setAttr ".lr" -type "double3" -2.3941247317872461e-07 1.9049107295000538 1.5737566851597584e-21 ;
	setAttr ".rst" -type "double3" 26.498739039134001 137.52213920538497 -2.4541803826011903 ;
	setAttr ".rsrr" -type "double3" -2.3941247317872461e-07 1.9049107295000538 1.5737566851597584e-21 ;
	setAttr -k on ".w0";
createNode transform -n "ForearmTwist_Limb_M_NODE" -p "LIMBS";
	rename -uid "9675508F-4FB3-D2D4-D141-14AF897C6C90";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom1:Custom2:Custom3:Custom4" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 3 -en "Body:Face:Custom1:Custom2" 
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
	addAttr -ci true -sn "bakeInternal" -ln "bakeInternal" -dv 1 -min 0 -max 1 -at "bool";
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
	setAttr ".limbParentJoint" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "ForearmTwist2_Joint_M_GRP1" -p "ForearmTwist_Limb_M_NODE";
	rename -uid "72C8F2E4-4ADE-23B8-61E8-4C9D1C0554A8";
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
	rename -uid "2C9D7138-4197-00C1-D78E-BE8C90291B5D";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "ForearmTwist2_Joint_M_CTR1Shape" -p "ForearmTwist2_Joint_M_CTR1";
	rename -uid "5803D628-434C-5F61-8EF1-75A214ED6A09";
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
	rename -uid "B216E781-4CAB-7005-3CC2-81B93922B9AF";
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
	setAttr ".tg[0].tot" -type "double3" 16.281148691824342 -2.8421709430404007e-14 
		-2.6645352591003757e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 -1.1927080055488188e-15 0 ;
	setAttr ".lr" -type "double3" 0 -1.9308742665174585 0 ;
	setAttr ".rst" -type "double3" 56.436786789718298 137.52213920238495 -2.1616204586526679 ;
	setAttr ".rsrr" -type "double3" 0 -1.9308742665174585 0 ;
	setAttr -k on ".w0";
createNode transform -n "ForearmTwist1_Joint_M_GRP0" -p "ForearmTwist_Limb_M_NODE";
	rename -uid "FFCD4CD3-476C-F30C-F031-06B3B68EE165";
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
	rename -uid "58AAFC24-4541-6EEE-A285-C08EC0CF865D";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "ForearmTwist1_Joint_M_CTR0Shape" -p "ForearmTwist1_Joint_M_CTR0";
	rename -uid "5380F6BA-4F81-C6B8-D94C-19A6C4D1AF6D";
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
	rename -uid "23B5A1FC-4B51-3683-6307-9D957B6B7666";
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
	setAttr ".tg[0].tot" -type "double3" 8.7002927054333483 0 -2.6645352591003757e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 -1.1927080055488188e-15 0 ;
	setAttr ".lr" -type "double3" 0 -1.9308742665174585 0 ;
	setAttr ".rst" -type "double3" 48.860235176068642 137.52213920238498 -2.4170478105612005 ;
	setAttr ".rsrr" -type "double3" 0 -1.9308742665174585 0 ;
	setAttr -k on ".w0";
createNode transform -n "Ring_Limb_M_NODE" -p "LIMBS";
	rename -uid "047C0AB3-46AC-E456-BC9D-508CF4B60161";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom1:Custom2:Custom3:Custom4" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 3 -en "Body:Face:Custom1:Custom2" 
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
	addAttr -ci true -sn "bakeInternal" -ln "bakeInternal" -dv 1 -min 0 -max 1 -at "bool";
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
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
	setAttr ".enableEndControl" no;
createNode transform -n "Ring1_Joint_M_GRP0" -p "Ring_Limb_M_NODE";
	rename -uid "784AD924-42C3-AF6A-0421-4CB8CC6143AD";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring1_Joint_M_CTR0" -p "Ring1_Joint_M_GRP0";
	rename -uid "0BBD9F43-4CBC-AF97-5931-ECA2C3241264";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 0 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 0 0 8.8817841970012523e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring1_Joint_M_CTR0Shape" -p "Ring1_Joint_M_CTR0";
	rename -uid "0BD96E2F-41DE-D97C-6B11-A59CF6E4E992";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.82154679 -0.50124973 0.50124973 
		-0.82154679 -0.50124973 0.50124973 0.82154679 0.50124973 0.50124973 -0.82154679 0.50124973 
		0.50124973 0.82154679 0.50124973 -0.50124973 -0.82154679 0.50124973 -0.50124973 0.82154679 
		-0.50124973 -0.50124973 -0.82154679 -0.50124973 -0.50124973;
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
	rename -uid "AD14DC19-4E5D-6893-F50D-E3A834E9469D";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 2.6470511256765832 5.6843418860808015e-14 8.8817841970012523e-16 ;
	setAttr ".r" -type "double3" 0.32184290256501574 -0.82840012879269209 -6.272073473022802 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring2_Joint_M_CTR1" -p "Ring2_Joint_M_GRP1";
	rename -uid "2FD484CA-4976-1A27-1AE8-F6B737EDEB45";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 2.4868995751603507e-14 0 -8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 2.4868995751603507e-14 0 -8.8817841970012523e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring2_Joint_M_CTR1Shape" -p "Ring2_Joint_M_CTR1";
	rename -uid "C8DC2D75-49A4-F8F7-B670-A19B2AE918D4";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.82154679 -0.50124973 0.50124973 
		-0.82154679 -0.50124973 0.50124973 0.82154679 0.50124973 0.50124973 -0.82154679 0.50124973 
		0.50124973 0.82154679 0.50124973 -0.50124973 -0.82154679 0.50124973 -0.50124973 0.82154679 
		-0.50124973 -0.50124973 -0.82154679 -0.50124973 -0.50124973;
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
	rename -uid "29A48619-46D4-E62A-DF14-0F8850C39A21";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 2.9147340994338968 0 0 ;
	setAttr ".r" -type "double3" 1.4134745652276195 -1.5108291308559805 -21.872085043039434 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring3_Joint_M_CTR2" -p "Ring3_Joint_M_GRP2";
	rename -uid "641E3A85-4198-24DC-F6E4-208A5C00EEC8";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -7.1054273576010019e-15 0 0 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-15 0 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring3_Joint_M_CTR2Shape" -p "Ring3_Joint_M_CTR2";
	rename -uid "A2672161-49D1-BA41-5FB8-77AD096CE16A";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.82154679 -0.50124973 0.50124973 
		-0.82154679 -0.50124973 0.50124973 0.82154679 0.50124973 0.50124973 -0.82154679 0.50124973 
		0.50124973 0.82154679 0.50124973 -0.50124973 -0.82154679 0.50124973 -0.50124973 0.82154679 
		-0.50124973 -0.50124973 -0.82154679 -0.50124973 -0.50124973;
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
	rename -uid "1D39EDC9-4B1E-B58B-1A1A-878F33F394A3";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.7421843699642814 -2.8421709430404007e-14 -3.5527136788005009e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 0.99999999999999978 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring4_Joint_M_CTR3" -p "Ring4_Joint_M_GRP3";
	rename -uid "06D8DBE4-4131-B75F-0A37-13BDD50D6663";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".s" -type "double3" 0.17845317858626167 1.5012497263083209 1.5012497263083209 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring4_Joint_M_CTR3Shape" -p "Ring4_Joint_M_CTR3";
	rename -uid "DE4B35BE-41EE-C625-D859-5FA183F16D53";
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
createNode parentConstraint -n "Ring1_Joint_M_GRP0_parentConstraint1" -p "Ring1_Joint_M_GRP0";
	rename -uid "340A4256-40B4-F4E5-67B6-E193B1BAC7C0";
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
	setAttr ".tg[0].tot" -type "double3" 7.8190365685399144 0.52916697249295908 -2.7118128374972335 ;
	setAttr ".tg[0].tor" -type "double3" -0.50158749274989078 1.8763645280600152 -14.968689057118794 ;
	setAttr ".lr" -type "double3" -0.0029306263820540073 0.010967469486314484 -14.960520488128386 ;
	setAttr ".rst" -type "double3" 74.315879989305401 138.05129791066531 -4.2722181059799365 ;
	setAttr ".rsrr" -type "double3" -0.0029306263820540073 0.010967469486314484 -14.960520488128386 ;
	setAttr -k on ".w0";
createNode transform -n "Pinkie_Limb_M_NODE" -p "LIMBS";
	rename -uid "68FC1BBC-4BDA-C453-F8F3-248558FFE010";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom1:Custom2:Custom3:Custom4" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 3 -en "Body:Face:Custom1:Custom2" 
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
	addAttr -ci true -sn "bakeInternal" -ln "bakeInternal" -dv 1 -min 0 -max 1 -at "bool";
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
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
	setAttr ".enableEndControl" no;
createNode transform -n "Pinkey1_Joint_M_GRP0" -p "Pinkie_Limb_M_NODE";
	rename -uid "645B742A-44D4-CBE5-A864-3E88DD2205A7";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinkey1_Joint_M_CTR0" -p "Pinkey1_Joint_M_GRP0";
	rename -uid "FF9FAFCD-48CD-EFA8-48F8-9BB575CFB864";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 7.1054273576010019e-15 2.8421709430404007e-14 0 ;
	setAttr ".sp" -type "double3" 7.1054273576010019e-15 2.8421709430404007e-14 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinkey1_Joint_M_CTR0Shape" -p "Pinkey1_Joint_M_CTR0";
	rename -uid "BB9F4320-4D1E-355E-2943-518BBF1C04CF";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.82154679 -0.50124973 0.50124973 
		-0.82154679 -0.50124973 0.50124973 0.82154679 0.50124973 0.50124973 -0.82154679 0.50124973 
		0.50124973 0.82154679 0.50124973 -0.50124973 -0.82154679 0.50124973 -0.50124973 0.82154679 
		-0.50124973 -0.50124973 -0.82154679 -0.50124973 -0.50124973;
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
	rename -uid "1268379A-4350-D965-328B-CE97DDC2E0D2";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 2.2858601897864474 8.5265128291212022e-14 -1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" -1.0809698282630751 2.3895266163728612 -10.507647530284293 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinkey2_Joint_M_CTR1" -p "Pinkey2_Joint_M_GRP1";
	rename -uid "4CAD7C82-4BF8-195F-2917-01B23BF78860";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -5.3290705182007514e-15 0 -1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" -5.3290705182007514e-15 0 -1.7763568394002505e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinkey2_Joint_M_CTR1Shape" -p "Pinkey2_Joint_M_CTR1";
	rename -uid "7F8A3CC6-4ED7-BD4D-E18A-EA982E9B8579";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.82154679 -0.50124973 0.50124973 
		-0.82154679 -0.50124973 0.50124973 0.82154679 0.50124973 0.50124973 -0.82154679 0.50124973 
		0.50124973 0.82154679 0.50124973 -0.50124973 -0.82154679 0.50124973 -0.50124973 0.82154679 
		-0.50124973 -0.50124973 -0.82154679 -0.50124973 -0.50124973;
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
	rename -uid "406A86CC-4981-86CE-7123-F2B6569787CA";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 2.4760630189721891 -2.8421709430404007e-14 8.8817841970012523e-16 ;
	setAttr ".r" -type "double3" -1.6614711522053984 1.5755088466025267 -22.205625824582047 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000004 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinkey3_Joint_M_CTR2" -p "Pinkey3_Joint_M_GRP2";
	rename -uid "6570D4E1-4B24-9EA7-FC99-CC8C9FD73FAE";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -2.1316282072803006e-14 0 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" -2.1316282072803006e-14 0 8.8817841970012523e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinkey3_Joint_M_CTR2Shape" -p "Pinkey3_Joint_M_CTR2";
	rename -uid "744A5D5E-4FD7-5D0B-94C3-13BF9A17595D";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.82154679 -0.50124973 0.50124973 
		-0.82154679 -0.50124973 0.50124973 0.82154679 0.50124973 0.50124973 -0.82154679 0.50124973 
		0.50124973 0.82154679 0.50124973 -0.50124973 -0.82154679 0.50124973 -0.50124973 0.82154679 
		-0.50124973 -0.50124973 -0.82154679 -0.50124973 -0.50124973;
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
	rename -uid "62B0E55E-4BC0-DCBF-726B-8E9FC907BA5F";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.1354158919624595 8.5265128291212022e-14 2.4424906541753444e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999967 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinkey4_Joint_M_CTR3" -p "Pinkey4_Joint_M_GRP3";
	rename -uid "FB2B3F06-4D87-A25F-A652-2EAB75262DC5";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".s" -type "double3" 0.17845317858626167 1.5012497263083209 1.5012497263083209 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinkey4_Joint_M_CTR3Shape" -p "Pinkey4_Joint_M_CTR3";
	rename -uid "9CE1EB1E-4E3A-D4FB-6533-CEA92B43A3A3";
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
createNode parentConstraint -n "Pinkey1_Joint_M_GRP0_parentConstraint1" -p "Pinkey1_Joint_M_GRP0";
	rename -uid "01C20885-47AC-5604-3292-63855DB84467";
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
	setAttr ".tg[0].tot" -type "double3" 7.2965411030324532 0.40936099840928364 -4.6085328294878307 ;
	setAttr ".tg[0].tor" -type "double3" -0.058845619240259217 0.23874909222634752 -13.842182154515399 ;
	setAttr ".lr" -type "double3" 0.40323612858959701 -1.6360326801531728 -13.847862357027605 ;
	setAttr ".rst" -type "double3" 73.857588681027451 137.93149289048051 -6.1854660106734745 ;
	setAttr ".rsrr" -type "double3" 0.40323612858959701 -1.6360326801531728 -13.847862357027605 ;
	setAttr -k on ".w0";
createNode transform -n "Arm_Limb_M_NODE" -p "LIMBS";
	rename -uid "F5F07D71-442A-C193-F646-008E34F6E607";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom1:Custom2:Custom3:Custom4" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 3 -en "Body:Face:Custom1:Custom2" 
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
	addAttr -ci true -sn "bakeInternal" -ln "bakeInternal" -dv 1 -min 0 -max 1 -at "bool";
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
	rename -uid "74EA434F-4273-4DF0-4993-E4ACA9128D19";
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
	rename -uid "913E55BE-4EBA-6087-14CB-2593D9A2A204";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -1.7763568394002505e-15 0 4.4408920985006262e-16 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-15 0 4.4408920985006262e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Shoulder_Joint_M_CTR0Shape" -p "Shoulder_Joint_M_CTR0";
	rename -uid "F178981F-44A7-798B-633B-85907B4152EA";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.799025 -6.3830299 6.3830299 
		-0.799025 -6.3830299 6.3830299 0.799025 6.3830299 6.3830299 -0.799025 6.3830299 6.3830299 
		0.799025 6.3830299 -6.3830299 -0.799025 6.3830299 -6.3830299 0.799025 -6.3830299 
		-6.3830299 -0.799025 -6.3830299 -6.3830299;
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
	rename -uid "A8690E33-4956-F16F-C8C6-CDB602676B67";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 25.941269954820424 -3.7260275576045387e-07 0.19840277671717454 ;
	setAttr ".r" -type "double3" 0 -3.8357849960175137 -7.2144311188858215e-06 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Elbow_Joint_M_CTR1" -p "Elbow_Joint_M_GRP1";
	rename -uid "E9D20A0E-4537-96BA-544E-14B59B95D933";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Elbow_Joint_M_CTR1Shape" -p "Elbow_Joint_M_CTR1";
	rename -uid "43EC74F0-4A3B-6774-FD9E-258480907279";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.84277987 -4.7756481 4.7756481 
		-0.84277987 -4.7756481 4.7756481 0.84277987 4.7756481 4.7756481 -0.84277987 4.7756481 
		4.7756481 0.84277987 4.7756481 -4.7756481 -0.84277987 4.7756481 -4.7756481 0.84277987 
		-4.7756481 -4.7756481 -0.84277987 -4.7756481 -4.7756481;
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
	rename -uid "B7130902-497E-35C6-FFD7-4BB3696B590D";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 26.259939324857903 -2.8415820736427122e-06 1.2434497875801753e-14 ;
	setAttr ".r" -type "double3" 1.6550738898695047e-05 1.4463488157450767e-27 -4.539250290758354e-05 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Wrist_Joint_M_CTR2" -p "Wrist_Joint_M_GRP2";
	rename -uid "F4F0B681-4397-5486-424C-E8B0D607ED94";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 2.8421709430404007e-14 0 -8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 2.8421709430404007e-14 0 -8.8817841970012523e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Wrist_Joint_M_CTR2Shape" -p "Wrist_Joint_M_CTR2";
	rename -uid "56FACF02-429E-38DD-CCD0-59A04AD3A4F5";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.8902815 -3.0306261 3.0306261 
		-0.8902815 -3.0306261 3.0306261 0.8902815 3.0306261 3.0306261 -0.8902815 3.0306261 
		3.0306261 0.8902815 3.0306261 -3.0306261 -0.8902815 3.0306261 -3.0306261 0.8902815 
		-3.0306261 -3.0306261 -0.8902815 -3.0306261 -3.0306261;
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
	rename -uid "C189C68D-4475-F057-D9D6-9BBF75209345";
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
	setAttr ".tg[0].tot" -type "double3" 8.708312693051699 2.8421709430404007e-14 -4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 1.9049107295000689 7.2023594007588229e-06 ;
	setAttr ".lr" -type "double3" -2.371008188564608e-23 1.9049107295000689 7.2023594007588246e-06 ;
	setAttr ".rst" -type "double3" 14.231353332970404 137.52213631501644 -2.0461767078897957 ;
	setAttr ".rsrr" -type "double3" -2.371008188564608e-23 1.9049107295000689 7.2023594007588246e-06 ;
	setAttr -k on ".w0";
createNode transform -n "Clav_Limb_M_NODE" -p "LIMBS";
	rename -uid "87704759-460A-BC20-F124-F59174F14C1A";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom1:Custom2:Custom3:Custom4" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 3 -en "Body:Face:Custom1:Custom2" 
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
	addAttr -ci true -sn "bakeInternal" -ln "bakeInternal" -dv 1 -min 0 -max 1 -at "bool";
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
	rename -uid "720C434D-4226-C591-1905-C2ADBF73C7D3";
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
	rename -uid "BFBB51E5-45FD-9E84-0AD0-088B17EF1267";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Clav01_Joint_M_CTR0Shape" -p "Clav01_Joint_M_CTR0";
	rename -uid "F2440948-40E5-C58C-8D8E-E98DE306ABE6";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 1.6611878 11.046672 0 1.6611878 
		11.046672 0 1.6611878 11.046672 0 1.6611878 11.046672 0 1.6611878 11.046672 0 1.6611878 
		11.046672 0 1.6611878 11.046672 0 1.6611878 11.046672;
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
	rename -uid "39E6EC1E-4B94-2961-B9D8-6EAE6C46F222";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom1:Custom2:Custom3:Custom4" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 3 -en "Body:Face:Custom1:Custom2" 
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
	addAttr -ci true -sn "bakeInternal" -ln "bakeInternal" -dv 1 -min 0 -max 1 -at "bool";
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
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
	setAttr ".enableEndControl" no;
createNode transform -n "Middle1_Joint_M_GRP0" -p "Middle_Limb_M_NODE";
	rename -uid "E4652474-412D-82E8-DB3D-9E9C16F39510";
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
	rename -uid "8A4B2C8D-4D29-8B59-182D-2F8CCD86DF05";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -3.5527136788005009e-15 2.8421709430404007e-14 6.6613381477509392e-16 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-15 2.8421709430404007e-14 6.6613381477509392e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle1_Joint_M_CTR0Shape" -p "Middle1_Joint_M_CTR0";
	rename -uid "0BB718EC-4CFA-719E-2B24-DE84FBA020D7";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.82154679 -0.50124973 0.50124973 
		-0.82154679 -0.50124973 0.50124973 0.82154679 0.50124973 0.50124973 -0.82154679 0.50124973 
		0.50124973 0.82154679 0.50124973 -0.50124973 -0.82154679 0.50124973 -0.50124973 0.82154679 
		-0.50124973 -0.50124973 -0.82154679 -0.50124973 -0.50124973;
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
	rename -uid "389748D1-498D-2BED-1B4A-81B731998496";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 3.2775428993820235 2.8421709430404007e-14 1.1102230246251565e-15 ;
	setAttr ".r" -type "double3" 0 0 -6.9455202747752862 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle2_Joint_M_CTR1" -p "Middle2_Joint_M_GRP1";
	rename -uid "431593B3-409A-59B2-CE8D-31B0F7C418FC";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 1.2434497875801753e-14 0 0 ;
	setAttr ".sp" -type "double3" 1.2434497875801753e-14 0 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle2_Joint_M_CTR1Shape" -p "Middle2_Joint_M_CTR1";
	rename -uid "8D4930C9-4B8F-62C1-3A88-B58E05015662";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.82154679 -0.50124973 0.50124973 
		-0.82154679 -0.50124973 0.50124973 0.82154679 0.50124973 0.50124973 -0.82154679 0.50124973 
		0.50124973 0.82154679 0.50124973 -0.50124973 -0.82154679 0.50124973 -0.50124973 0.82154679 
		-0.50124973 -0.50124973 -0.82154679 -0.50124973 -0.50124973;
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
	rename -uid "5EC6522F-4DA3-C85D-0460-3A8EEE61E1C8";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 3.3563095325937518 -2.8421709430404007e-14 -1.3322676295501878e-15 ;
	setAttr ".r" -type "double3" 1.3017548767980207 -1.4345230174597441 -16.362037364848558 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle3_Joint_M_CTR2" -p "Middle3_Joint_M_GRP2";
	rename -uid "42F7F1E9-4DC0-4D5A-AA78-A79A8ADE9CE8";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -1.0658141036401503e-14 0 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" -1.0658141036401503e-14 0 8.8817841970012523e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle3_Joint_M_CTR2Shape" -p "Middle3_Joint_M_CTR2";
	rename -uid "E7DFC8D1-4538-E3B5-B4D3-338ED53E0458";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.82154679 -0.50124973 0.50124973 
		-0.82154679 -0.50124973 0.50124973 0.82154679 0.50124973 0.50124973 -0.82154679 0.50124973 
		0.50124973 0.82154679 0.50124973 -0.50124973 -0.82154679 0.50124973 -0.50124973 0.82154679 
		-0.50124973 -0.50124973 -0.82154679 -0.50124973 -0.50124973;
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
	rename -uid "DF1CDD62-4813-FCF5-ADBB-A99B6E4E0023";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.4510049024179565 -2.8421709430404007e-14 1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle4_Joint_M_CTR3" -p "Middle4_Joint_M_GRP3";
	rename -uid "70FF5D93-44E6-B474-77B5-8182F733E090";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".s" -type "double3" 0.17845317858626167 1.5012497263083209 1.5012497263083209 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle4_Joint_M_CTR3Shape" -p "Middle4_Joint_M_CTR3";
	rename -uid "B0242B04-465E-D872-2BE1-01BFFDD264D4";
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
createNode parentConstraint -n "Middle1_Joint_M_GRP0_parentConstraint1" -p "Middle1_Joint_M_GRP0";
	rename -uid "1B5715FE-428B-DD9E-DBDB-6D9EE9233DA1";
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
	setAttr ".tg[0].tot" -type "double3" 7.9379058083578258 0.70256262781717282 -0.29684972057054715 ;
	setAttr ".tg[0].tor" -type "double3" -0.62638663371221248 1.8264851864916001 -18.932373081521089 ;
	setAttr ".lr" -type "double3" -1.3719141476113347e-16 -3.6044840381926846e-16 -18.922433221147045 ;
	setAttr ".rst" -type "double3" 74.353312744333138 138.2246927843311 -1.8546209906164357 ;
	setAttr ".rsrr" -type "double3" -1.3719141476113347e-16 -3.6044840381926846e-16 
		-18.922433221147045 ;
	setAttr -k on ".w0";
createNode transform -n "Index_Limb_M_NODE" -p "LIMBS";
	rename -uid "1440A4A2-4FDB-B6F9-7940-0D9EE02266BB";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom1:Custom2:Custom3:Custom4" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 3 -en "Body:Face:Custom1:Custom2" 
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
	addAttr -ci true -sn "bakeInternal" -ln "bakeInternal" -dv 1 -min 0 -max 1 -at "bool";
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
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
	setAttr ".enableEndControl" no;
createNode transform -n "Index1_Joint_M_GRP0" -p "Index_Limb_M_NODE";
	rename -uid "9F844286-4E38-3FB7-2D38-5B862E54F04E";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index1_Joint_M_CTR0" -p "Index1_Joint_M_GRP0";
	rename -uid "36FAB862-441D-D3B7-A49F-B9837AF143E4";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 2.1316282072803006e-14 0 0 ;
	setAttr ".sp" -type "double3" 2.1316282072803006e-14 0 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index1_Joint_M_CTR0Shape" -p "Index1_Joint_M_CTR0";
	rename -uid "814B0E0C-4C92-B622-2C14-A09C1C1C55F4";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.82154679 -0.50124973 0.50124973 
		-0.82154679 -0.50124973 0.50124973 0.82154679 0.50124973 0.50124973 -0.82154679 0.50124973 
		0.50124973 0.82154679 0.50124973 -0.50124973 -0.82154679 0.50124973 -0.50124973 0.82154679 
		-0.50124973 -0.50124973 -0.82154679 -0.50124973 -0.50124973;
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
	rename -uid "22194F57-4CDB-C4D3-E7BD-CEAD41AE10B3";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 3.6539765362013981 0 -2.6645352591003757e-15 ;
	setAttr ".r" -type "double3" -0.022177448939035144 0.048835656771432964 -6.408487879171286 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index2_Joint_M_CTR1" -p "Index2_Joint_M_GRP1";
	rename -uid "FD754D62-406C-0E1A-1401-598B39513458";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -1.7763568394002505e-14 2.8421709430404007e-14 0 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-14 2.8421709430404007e-14 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index2_Joint_M_CTR1Shape" -p "Index2_Joint_M_CTR1";
	rename -uid "973F2D05-48C7-C622-8500-7F83A71DED3C";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.82154679 -0.50124973 0.50124973 
		-0.82154679 -0.50124973 0.50124973 0.82154679 0.50124973 0.50124973 -0.82154679 0.50124973 
		0.50124973 0.82154679 0.50124973 -0.50124973 -0.82154679 0.50124973 -0.50124973 0.82154679 
		-0.50124973 -0.50124973 -0.82154679 -0.50124973 -0.50124973;
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
	rename -uid "8D5087E3-41D5-D3BF-6DB1-2BA3806C6E39";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 2.8248401066067927 2.8421709430404007e-14 0 ;
	setAttr ".r" -type "double3" -1.2562319854935926 1.4296116488609034 -16.89006466895696 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index3_Joint_M_CTR2" -p "Index3_Joint_M_GRP2";
	rename -uid "5570BD09-4B2E-C7CF-C034-7A8AE8EC8E57";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 -2.8421709430404007e-14 0 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-15 -2.8421709430404007e-14 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index3_Joint_M_CTR2Shape" -p "Index3_Joint_M_CTR2";
	rename -uid "C2397FF9-4ACD-9CAB-33F2-60A2050BBBC3";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.82154679 -0.50124973 0.50124973 
		-0.82154679 -0.50124973 0.50124973 0.82154679 0.50124973 0.50124973 -0.82154679 0.50124973 
		0.50124973 0.82154679 0.50124973 -0.50124973 -0.82154679 0.50124973 -0.50124973 0.82154679 
		-0.50124973 -0.50124973 -0.82154679 -0.50124973 -0.50124973;
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
	rename -uid "F89978AD-4DDF-E6C6-9734-B39ADB06A5CF";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.2332893329224888 -5.6843418860808015e-14 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index4_Joint_M_CTR3" -p "Index4_Joint_M_GRP3";
	rename -uid "AF543F60-4BA0-49CD-CA01-9A894E8A536B";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".s" -type "double3" 0.17845317858626167 1.5012497263083209 1.5012497263083209 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index4_Joint_M_CTR3Shape" -p "Index4_Joint_M_CTR3";
	rename -uid "37D46DD8-4FA6-DF09-2B1E-B8A38B4B38DD";
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
createNode parentConstraint -n "Index1_Joint_M_GRP0_parentConstraint1" -p "Index1_Joint_M_GRP0";
	rename -uid "E6860D08-4E61-E437-132A-60A8E111A08D";
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
	setAttr ".tg[0].tot" -type "double3" 7.828881032004503 0.94274018076023935 1.8635468004911599 ;
	setAttr ".tg[0].tor" -type "double3" -1.0092244041090608 3.0999822843514702 -18.042724137798114 ;
	setAttr ".lr" -type "double3" -0.41112212616883476 1.2639271787728421 -18.019994523757081 ;
	setAttr ".rst" -type "double3" 74.171558231923555 138.46486980863367 0.30087549076043096 ;
	setAttr ".rsrr" -type "double3" -0.41112212616883476 1.2639271787728421 -18.019994523757081 ;
	setAttr -k on ".w0";
createNode transform -n "Thumb_Limb_M_NODE" -p "LIMBS";
	rename -uid "ED6F0C73-4894-AA15-54FD-7A81DEDEEEFB";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom1:Custom2:Custom3:Custom4" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 3 -en "Body:Face:Custom1:Custom2" 
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
	addAttr -ci true -sn "bakeInternal" -ln "bakeInternal" -dv 1 -min 0 -max 1 -at "bool";
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
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
	setAttr ".enableEndControl" no;
createNode transform -n "Thumb1_Joint_M_GRP0" -p "Thumb_Limb_M_NODE";
	rename -uid "5C33052D-4B0E-EFFE-03AC-D7BDBE42263C";
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
createNode transform -n "Thumb1_Joint_M_CTR0" -p "Thumb1_Joint_M_GRP0";
	rename -uid "6CF54CA4-47CA-A6AD-3551-5EB69698DD51";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -1.0658141036401503e-14 -7.1054273576010019e-15 -2.8421709430404007e-14 ;
	setAttr ".sp" -type "double3" -1.0658141036401503e-14 -7.1054273576010019e-15 -2.8421709430404007e-14 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb1_Joint_M_CTR0Shape" -p "Thumb1_Joint_M_CTR0";
	rename -uid "88C8A34C-440B-D5F5-E3EC-CEB82556A8D3";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.82154679 -0.50124973 0.50124973 
		-0.82154679 -0.50124973 0.50124973 0.82154679 0.50124973 0.50124973 -0.82154679 0.50124973 
		0.50124973 0.82154679 0.50124973 -0.50124973 -0.82154679 0.50124973 -0.50124973 0.82154679 
		-0.50124973 -0.50124973 -0.82154679 -0.50124973 -0.50124973;
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
	rename -uid "26118200-45F5-DF6D-2B63-F0B34AD4C4C9";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 3.2816682663097474 -1.5987211554602254e-14 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -5.9606342143343358 5.3378613369064505 -18.600450873808732 ;
	setAttr ".s" -type "double3" 1 1.0000000000000007 1.0000000000000004 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb2_Joint_M_CTR1" -p "Thumb2_Joint_M_GRP1";
	rename -uid "9E031E4C-4D4A-C826-F37A-98AA6D040B2E";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -7.1054273576010019e-15 7.1054273576010019e-15 0 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-15 7.1054273576010019e-15 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb2_Joint_M_CTR1Shape" -p "Thumb2_Joint_M_CTR1";
	rename -uid "649F582E-487D-959E-B2A1-4C9EAFB8C6E9";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.82154679 -0.50124973 0.50124973 
		-0.82154679 -0.50124973 0.50124973 0.82154679 0.50124973 0.50124973 -0.82154679 0.50124973 
		0.50124973 0.82154679 0.50124973 -0.50124973 -0.82154679 0.50124973 -0.50124973 0.82154679 
		-0.50124973 -0.50124973 -0.82154679 -0.50124973 -0.50124973;
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
	rename -uid "5CEA45FC-46C5-5CB0-F95D-46B5FAA71D1E";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 4.0292311701752368 0 5.6843418860808015e-14 ;
	setAttr ".r" -type "double3" -8.1010142476113121 7.6655622067222957 -24.468100029625656 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999956 1 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb3_Joint_M_CTR2" -p "Thumb3_Joint_M_GRP2";
	rename -uid "041A1DC4-4FE7-DDAB-CDCE-07AAFDF20E2D";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -2.1316282072803006e-14 0 0 ;
	setAttr ".sp" -type "double3" -2.1316282072803006e-14 0 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb3_Joint_M_CTR2Shape" -p "Thumb3_Joint_M_CTR2";
	rename -uid "FE53BC16-4625-4B35-60CA-E58C51B5987E";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.82154679 -0.50124973 0.50124973 
		-0.82154679 -0.50124973 0.50124973 0.82154679 0.50124973 0.50124973 -0.82154679 0.50124973 
		0.50124973 0.82154679 0.50124973 -0.50124973 -0.82154679 0.50124973 -0.50124973 0.82154679 
		-0.50124973 -0.50124973 -0.82154679 -0.50124973 -0.50124973;
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
	rename -uid "9AB0E45C-417C-02A6-972C-DA9F7DF4C6F9";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.8346696655482617 1.4210854715202004e-14 -5.6843418860808015e-14 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999967 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb4_Joint_M_CTR3" -p "Thumb4_Joint_M_GRP3";
	rename -uid "F1AF5447-43AB-05F3-0970-A987DC8EAE63";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".s" -type "double3" 0.17845317858626167 1.5012497263083209 1.5012497263083209 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb4_Joint_M_CTR3Shape" -p "Thumb4_Joint_M_CTR3";
	rename -uid "31BC7325-446F-94D2-B865-CEB2F57905B7";
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
createNode parentConstraint -n "Thumb1_Joint_M_GRP0_parentConstraint1" -p "Thumb1_Joint_M_GRP0";
	rename -uid "90259105-4CAE-8DBA-5D69-C1B9D4F6E6D7";
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
	setAttr ".tg[0].tot" -type "double3" 2.6690456837124117 -1.7312968437120446 1.7853067906047162 ;
	setAttr ".tg[0].tor" -type "double3" 79.567375970139224 -28.083724241771325 -16.687143393948979 ;
	setAttr ".lr" -type "double3" 80.207063110069853 -29.931791922034204 -16.997433554294339 ;
	setAttr ".rst" -type "double3" 69.017286719265513 135.79083689430794 0.048824948637190335 ;
	setAttr ".rsrr" -type "double3" 80.207063110069853 -29.931791922034204 -16.997433554294339 ;
	setAttr -k on ".w0";
createNode transform -n "MESHES" -p "TEMP_RigRoot";
	rename -uid "84C8C6D8-4609-D7BA-927E-F397ABB6AD13";
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
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
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
	rename -uid "C1CA961E-468E-4679-13FE-578E9D45DCCB";
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
	rename -uid "AC5DDFA6-4A97-3CF3-A6C6-C0932E222A7D";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 86.415593355894089 3.5180826187133789 ;
	setAttr ".sp" -type "double3" 0 86.415593355894089 3.5180826187133789 ;
createNode mesh -n "Arm_Mesh1Shape" -p "Arm_Mesh1";
	rename -uid "8F1F7256-44D8-3A5B-9666-98B32F42ABE3";
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
createNode transform -n "CONTROL_SHAPE_TEMPLATES" -p "TEMP_RigRoot";
	rename -uid "029EF5E6-49F4-8427-6E22-379ABB28EC30";
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
	rename -uid "61066A8C-4D15-81EF-1C24-8A8E0DCFEC83";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Circle_Wire";
createNode nurbsCurve -n "Circle_WireShape" -p "Circle_Wire";
	rename -uid "2D22C5B3-42DF-A6B2-3D2F-6098D7FFD22F";
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
	rename -uid "77E057F2-49B3-F5C4-A42A-3DBB8BC85512";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Cube_PolyShape" -p "Cube_Poly";
	rename -uid "604A80BF-4F25-A9B9-51CB-9E90D2A003DD";
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
	rename -uid "52096B8E-4774-2ACE-9165-929952B78CEF";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cube_Wire";
createNode nurbsCurve -n "Cube_WireShape" -p "Cube_Wire";
	rename -uid "2A86A866-4367-E357-22DB-5C82174A5DB5";
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
	rename -uid "54FC9E74-46A0-1315-F36C-3C86B7DD134E";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cylinder_Poly";
createNode mesh -n "Cylinder_PolyShape" -p "Cylinder_Poly";
	rename -uid "D798E4E5-4C3E-ED1E-F0A9-088D5499530E";
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
	rename -uid "3DD45AA3-4241-D29C-B718-DAA763840249";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Diamond_Wire";
createNode nurbsCurve -n "Diamond_WireShape" -p "Diamond_Wire";
	rename -uid "663BF4A3-4193-99AB-4037-11A701F6EEAB";
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
	rename -uid "A30AB26D-44CA-E1A8-009F-B1B0A030EDF2";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Pin_Wire";
createNode nurbsCurve -n "Pin_WireShape" -p "Pin_Wire";
	rename -uid "5C215F60-4397-CEFE-5E2F-C783248251EA";
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
	rename -uid "B98519B9-46E3-251E-142F-67B109192EB6";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Sphere_Poly";
createNode mesh -n "Sphere_PolyShape" -p "Sphere_Poly";
	rename -uid "4713D09D-4C3D-F0E0-C2F4-A681E27084C0";
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
	rename -uid "3AA4097F-49D6-5C50-6445-54B12794DF8A";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Square_Wire";
createNode nurbsCurve -n "Square_WireShape" -p "Square_Wire";
	rename -uid "00EF62C9-4829-0073-E420-BF8833974676";
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
	rename -uid "74748C55-4E0F-8FCC-1DB2-2B8278251F4E";
	setAttr -s 9 ".lnk";
	setAttr -s 9 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "C357BC43-4174-F501-C85F-A188CED57432";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "66EB30D8-4966-DCAE-23A9-5B8338588862";
createNode displayLayerManager -n "layerManager";
	rename -uid "C50FF2EB-4A11-BF1A-BDD6-15A4071195DE";
	setAttr -s 6 ".dli[1:5]"  1 2 3 4 5;
	setAttr -s 6 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "41089FF6-4ABB-B74A-E5C4-1EAD9D288DD1";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "08B48465-461A-CA2A-C777-FB9E458839C4";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "61356F95-4EF4-D16D-14C4-0AB02369D83B";
	setAttr ".g" yes;
createNode displayLayer -n "Joint_Disp";
	rename -uid "A11A89C0-47BC-0188-5074-55BCA7D3F025";
	setAttr ".dt" 2;
	setAttr ".do" 2;
createNode materialInfo -n "materialInfo1";
	rename -uid "1208B3EF-4F19-253A-57DD-D3BE42FE27C7";
createNode shadingEngine -n "Control_Shapes_lambert2SG";
	rename -uid "42DE2348-4C86-ED5D-805C-23ADB668766E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "TempMaterial";
	rename -uid "A6C51345-4A29-1119-9F93-B1AA18AFBBF4";
	setAttr ".c" -type "float3" 1 0.92308331 0 ;
	setAttr ".it" -type "float3" 0.69277108 0.69277108 0.69277108 ;
createNode displayLayer -n "Control_Disp";
	rename -uid "1EBDE0B5-413B-6B50-F5FD-4EB7E62F0181";
	setAttr ".do" 1;
createNode materialInfo -n "materialInfo5";
	rename -uid "39075589-4888-F59B-CDAC-A1AF8ABC72EC";
createNode shadingEngine -n "MControlsMaterialSG";
	rename -uid "79C71BA9-44CA-DEF0-7F9F-6D8D2B1B12FE";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode surfaceShader -n "MControlsMaterial";
	rename -uid "C38E017C-44E0-B523-FC45-44AADFD14D46";
	setAttr ".oc" -type "float3" 1 1 0 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "DD8AF880-4CC8-823D-4792-6AAB3D603EA7";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1314\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1314\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1314\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
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
	setAttr ".dt" 2;
	setAttr ".do" 4;
createNode displayLayer -n "Meshes_Disp";
	rename -uid "1053061D-4A1F-88AE-C562-B3B4438B51E8";
	setAttr ".do" 5;
createNode materialInfo -n "Control_Shapes_materialInfo1";
	rename -uid "BEC18E2B-42D0-38DA-1E00-3BBBCC201002";
createNode shadingEngine -n "lambert2SG";
	rename -uid "0795A24F-4F49-4932-27F1-9B91CD947AE5";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode lambert -n "Control_Shapes_TempMaterial";
	rename -uid "077D609B-414C-3885-5576-E881EC6C2E17";
	setAttr ".c" -type "float3" 1 0.92308331 0 ;
	setAttr ".it" -type "float3" 0.69277108 0.69277108 0.69277108 ;
createNode surfaceShader -n "LControlsMaterial";
	rename -uid "19A07EDA-4D99-7FE5-30F7-2D8DF3F9AE85";
	setAttr ".oc" -type "float3" 0 0 1 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "LControlsMaterialSG";
	rename -uid "D4DA4EA8-4A22-B15B-A78D-C29C737EEAF1";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "F8827A7E-40B8-2620-1E75-34A6F971BE29";
createNode surfaceShader -n "MControlsMaterial1";
	rename -uid "32B5F892-48EC-4C49-B26D-22960A0B5980";
	setAttr ".oc" -type "float3" 1 1 0 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "MControlsMaterialSG1";
	rename -uid "36D13F9C-4A27-7620-4E6E-F2A35F119808";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr -s 27 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
	rename -uid "BC33FA06-4A11-7BF3-B658-809029F6C96F";
createNode surfaceShader -n "RControlsMaterial";
	rename -uid "42B82EF9-4D15-C957-B685-0EAA89471974";
	setAttr ".oc" -type "float3" 1 0 0 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "RControlsMaterialSG";
	rename -uid "562F7E3D-40B3-EEA6-5EA7-DB8C46D7166E";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
	rename -uid "98C37FC2-4E87-1AF0-D5CE-F3BD5FDE4DC7";
createNode shadingEngine -n "Mesh_Human_Biped_01_lambert2SG";
	rename -uid "B9666D6C-466A-5569-3967-628D8B9CDABE";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo3";
	rename -uid "B32DD872-4333-9F54-F1AC-148A761538DC";
createNode lambert -n "lambert2";
	rename -uid "2729B46D-402B-DD2E-0D4F-0CBA79BDCFB3";
createNode groupId -n "groupId2";
	rename -uid "150865FD-477D-02BB-1895-9A8EB2278440";
	setAttr ".ihi" 0;
createNode skinCluster -n "skinCluster1";
	rename -uid "F63D702B-4AEF-6D02-F035-F0B5AA2B06F5";
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
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -5.5230406399187046 -137.52213631501641 2.0461767078897952 1;
	setAttr ".pm[1]" -type "matrix" 0.99944737059356725 -1.2570488545520684e-07 0.033240839543983228 -0
		 1.2563541723897301e-07 0.99999999999999212 4.1785359273113547e-09 0 -0.033240839543983491 -0 0.99944737059357514 -0
		 -14.291522577901848 -137.52213452606472 1.5719832231940871 1;
	setAttr ".pm[2]" -type "matrix" 0.99944737059357514 1.4110657728685171e-10 0.033240839543983228 -0
		 -2.8015944392257502e-10 1 4.1785359273113555e-09 0 -0.033240839543983228 -4.1855394806042821e-09 0.99944737059357525 -0
		 -26.56567403448971 -137.52213921939622 1.5719832231941573 1;
	setAttr ".pm[3]" -type "matrix" 0.99943220491867046 1.4110657728680479e-10 -0.033693734898416622 -0
		 6.6768985069514703e-23 1 4.1879173594820071e-09 -0 0.033693734898416622 -4.1855394806042796e-09 0.99943220491867046 -0
		 -40.050760501263881 -137.52213921939617 4.0619586578684164 1;
	setAttr ".pm[4]" -type "matrix" 0.99943220491867046 1.4110657728680479e-10 -0.033693734898416622 -0
		 6.6768985069514703e-23 1 4.1879173594820071e-09 -0 0.033693734898416622 -4.1855394806042796e-09 0.99943220491867046 -0
		 -48.751053206697215 -137.52213921939614 4.0619586578684181 1;
	setAttr ".pm[5]" -type "matrix" 0.99943220491867046 1.4110657728680479e-10 -0.033693734898416622 -0
		 6.6768985069514703e-23 1 4.1879173594820071e-09 -0 0.033693734898416622 -4.1855394806042796e-09 0.99943220491867046 -0
		 -56.331909193088208 -137.52213921939614 4.0619586578684181 1;
	setAttr ".pm[6]" -type "matrix" 0.99943220491835683 7.822069662212761e-07 -0.033693734898643982 -0
		 -7.9224863145834914e-07 0.99999999999964584 -2.8467697006055211e-07 0 0.033693734898409364 3.1120914723926576e-07 0.9994322049186225 -0
		 -66.310590874376601 -137.52218773896919 4.0619983831998532 1;
	setAttr ".pm[7]" -type "matrix" 0.94595846177063025 0.32428781753951735 -4.7072437206225967e-17 -0
		 -0.32428781753951746 0.94595846177063025 1.246943861978952e-17 0 3.0050600227782538e-17 -2.0692851067296852e-18 1 -0
		 -25.510561398078956 -154.86669128167676 1.8546209906164379 1;
	setAttr ".pm[8]" -type "matrix" 0.89980194890582699 0.43629858210321487 -4.7072437206225967e-17 -0
		 -0.43629858210321498 0.89980194890582699 1.2469438619789519e-17 0 3.0080305764987085e-17 1.5797847916161702e-18 1 -0
		 -9.8495091626164442 -157.21143147631219 1.8546209906164375 1;
	setAttr ".pm[9]" -type "matrix" 0.74022082227586228 0.67151368146214119 -0.033801033688459582 -0
		 -0.67189761598750108 0.74064403975885251 2.2135071553464062e-15 0 0.02503453413904724 0.022710833953187553 0.99942858180141703 -0
		 31.652895347087281 -154.50062566476043 4.5736570274456128 1;
	setAttr ".pm[10]" -type "matrix" 0.74022082227586228 0.67151368146214119 -0.033801033688459582 -0
		 -0.67189761598750108 0.74064403975885251 2.2135071553464062e-15 0 0.02503453413904724 0.022710833953187553 0.99942858180141703 -0
		 28.201890444669306 -154.50062566476041 4.5736570274456119 1;
	setAttr ".pm[11]" -type "matrix" 0.96610391787923544 0.2581534051705297 0.00019813442910048123 -0
		 -0.25815341023772653 0.96610393684252849 -4.6828521420815014e-15 0 -0.00019141845197922992 -5.1149078553268058e-05 0.99999998037137394 -0
		 -36.159267256304823 -152.5570183952176 4.2574934876680315 1;
	setAttr ".pm[12]" -type "matrix" 0.93202335582948048 0.36207457264051485 -0.015312349118989287 -0
		 -0.36211702756328534 0.93213263989023065 3.5312898438721867e-14 0 0.014273140407217125 0.0055448623479467845 0.99988275910951596 -0
		 -21.843363959551212 -155.85529402942296 5.4493332374425698 1;
	setAttr ".pm[13]" -type "matrix" 0.72939110755168912 0.68216335376224668 -0.051398161527081501 -0
		 -0.68306620268212126 0.73035646279979427 4.839878497975291e-15 0 0.037538979447335016 0.035108347019142332 0.99867824097235447 -0
		 35.217181331272577 -153.70140086913401 8.3162996082958198 1;
	setAttr ".pm[14]" -type "matrix" 0.72939110755168912 0.68216335376224668 -0.051398161527081501 -0
		 -0.68306620268212126 0.73035646279979427 4.839878497975291e-15 0 0.037538979447335016 0.035108347019142332 0.99867824097235447 -0
		 31.474996961308292 -153.70140086913401 8.3162996082958234 1;
	setAttr ".pm[15]" -type "matrix" 0.95071724998249163 0.30919039220257405 0.023195084723857232 -0
		 -0.30927359984285024 0.95097310184896644 -8.6528006981723154e-15 0 -0.022057901667498769 -0.0071736273511990075 0.99973095783048216 -0
		 -27.686014449693531 -154.60734155038432 -2.0212101198544219 1;
	setAttr ".pm[16]" -type "matrix" 0.91024585174523831 0.41336447262783971 0.02413093760494479 -0
		 -0.41348487672457412 0.91051098660041663 -1.4080750454503746e-14 0 -0.021971483806277191 -0.0099777777608161707 0.99970880652833438 -0
		 -13.885755855086011 -157.13851176438257 -2.0938699648521797 1;
	setAttr ".pm[17]" -type "matrix" 0.75004832649075082 0.65889479802707751 0.057316254773674427 -0
		 -0.65997975708392775 0.75128338211319434 -1.1570605584765306e-14 0 -0.043060749736435262 -0.037827567902481485 0.99835607222008704 -0
		 29.707676208864676 -155.14824434500551 -4.7556744297096483 1;
	setAttr ".pm[18]" -type "matrix" 0.75004832649075082 0.65889479802707751 0.057316254773674427 -0
		 -0.65997975708392775 0.75128338211319434 -1.1570605584765306e-14 0 -0.043060749736435262 -0.037827567902481485 0.99835607222008704 -0
		 26.474386875942173 -155.14824434500548 -4.7556744297096474 1;
	setAttr ".pm[19]" -type "matrix" 0.9705388868180499 0.23914360006622679 -0.029404212646233389 -0
		 -0.23924704985524853 0.97095872679303952 -2.7004527086704755e-13 0 0.028550276873273977 0.0070348711291898123 0.99956760265559597 -0
		 -38.505362378177182 -151.54484241473654 8.354515674748777 1;
	setAttr ".pm[20]" -type "matrix" 0.91108577308393124 0.41189195211798191 0.01636257511804624 -0
		 -0.41194710190437522 0.91120776183732477 -1.1502951369202211e-14 0 -0.014909705451214759 -0.0067405153995613119 0.99986612410637599 -0
		 -12.807916332008489 -156.562309467647 4.8745837407042059 1;
	setAttr ".pm[21]" -type "matrix" 0.6871367757586514 0.72434389462558046 0.056293638349735761 -0
		 -0.72549434303705795 0.6882281294899445 4.0800696154974503e-15 0 -0.038742865423619099 -0.040840716171710083 0.99841425584841748 -0
		 44.868396543836653 -150.84072893407395 1.737763940199069 1;
	setAttr ".pm[22]" -type "matrix" 0.6871367757586514 0.72434389462558046 0.056293638349735761 -0
		 -0.72549434303705795 0.6882281294899445 4.0800696154974503e-15 0 -0.038742865423619099 -0.040840716171710083 0.99841425584841748 -0
		 42.732980651874165 -150.84072893407398 1.7377639401990677 1;
	setAttr ".pm[23]" -type "matrix" 0.82876419317482997 -0.4204980747629436 -0.36923066128360849 -0
		 -0.25333804941708521 0.30639577450100014 -0.91757368210159473 0 0.49896868121037358 0.85399238783995601 0.14740168480241475 -0
		 -22.822432315722107 -12.625798584030086 150.07419974043256 1;
	setAttr ".pm[24]" -type "matrix" 0.94996044897408882 -0.10416733690273507 -0.29448991715768424 -0
		 -0.25100964555846395 0.3065879564975279 -0.9181492159596305 0 0.18592822061634959 0.94612525114450985 0.26509942648971535 -0
		 -34.58472625945803 -35.499719836813824 144.59172481811905 1;
	setAttr ".pm[25]" -type "matrix" 0.93896086296785375 0.31973273843037142 -0.12697824140568159 -0
		 -0.22980269978930828 0.30825161897000969 -0.92313144165493199 0 -0.25601409528424185 0.89596423777859779 0.36291165266164632 -0
		 -39.54709147351091 -67.632251696605977 132.36291319391989 1;
	setAttr ".pm[26]" -type "matrix" 0.93896086296785375 0.31973273843037142 -0.12697824140568159 -0
		 -0.22980269978930828 0.30825161897000969 -0.92313144165493199 0 -0.25601409528424185 0.89596423777859779 0.36291165266164632 -0
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
	rename -uid "977475BE-4180-560E-FC05-8D948F97A72B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "9A0B5542-4257-A873-3631-3380FDE6FA6F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:293]";
createNode tweak -n "tweak1";
	rename -uid "9046A87E-4B3A-F8AC-2FE7-3FBA391B3A75";
createNode objectSet -n "skinCluster1Set";
	rename -uid "4A25BE0F-431D-4432-B547-CDBBE2D52FDC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "6702C870-4D1D-B2DB-4E04-3C99FCC43FB8";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "C6F0EA9A-4B9D-3498-B32D-EE8C56E1345F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "1CDA83C8-49EC-D3CC-62D5-D7A7A8F76266";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId5";
	rename -uid "0D368EF7-47C3-79D8-70F6-9FBB0D5AD63D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "C86ADA0F-4790-95B6-360C-3EB709E3E54E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "1DF17E61-4096-14CC-8A64-0689A9FE7FA1";
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
	rename -uid "7146BE38-4014-78B7-7363-BDB339DE80D6";
	setAttr -s 3 ".child";
createNode controller -n "controller1";
	rename -uid "77FF7CD7-4D10-A741-60C0-9EB2F792B837";
	setAttr ".cwsb" yes;
createNode controller -n "Elbow_Joint_M_CTR1_tag";
	rename -uid "5848D9A2-4F99-9502-9D30-8F96558226D5";
	setAttr -s 18 ".child";
createNode controller -n "Wrist_Joint_M_CTR2_tag";
	rename -uid "CA88D172-45C1-2F36-D0FD-3F9629FFFCED";
createNode controller -n "Shoulder_Joint_M_CTR0_tag";
	rename -uid "EB898B27-48E3-31AB-917E-E2913444B741";
createNode controller -n "BicepTwist_Joint_M_CTR0_tag";
	rename -uid "D965A421-4742-D94B-64D6-FE8A5C1A029A";
createNode controller -n "ForearmTwist2_Joint_M_CTR1_tag";
	rename -uid "0263898A-471A-6CB2-65A6-F1A122C3EE6E";
createNode controller -n "ForearmTwist1_Joint_M_CTR0_tag";
	rename -uid "1130CECB-4F4D-8D64-15A6-829663C2ED8A";
createNode controller -n "Index3_Joint_M_CTR2_tag";
	rename -uid "4D7EB15B-4DAB-E84D-63B8-A797903E971E";
createNode controller -n "Index2_Joint_M_CTR1_tag";
	rename -uid "2A47C7A6-4218-FFA9-D002-45A20002DF08";
createNode controller -n "Index1_Joint_M_CTR0_tag";
	rename -uid "DD450E8A-4231-E62E-F27D-0BB36A523FE0";
createNode controller -n "Middle3_Joint_M_CTR2_tag";
	rename -uid "634E5E49-415E-33C9-4B14-2DA7420C4F6B";
createNode controller -n "Middle2_Joint_M_CTR1_tag";
	rename -uid "AB676EB3-4D8F-1726-7BC2-53B7C526EEAA";
createNode controller -n "Middle1_Joint_M_CTR0_tag";
	rename -uid "900ED234-4348-BB5D-3904-868CAB2740CB";
createNode controller -n "Pinkey3_Joint_M_CTR2_tag";
	rename -uid "8928933A-4BD1-2564-B6FC-289EF4F699AD";
createNode controller -n "Pinkey2_Joint_M_CTR1_tag";
	rename -uid "358F1CCE-4FC6-671C-7375-54812E388088";
createNode controller -n "Pinkey1_Joint_M_CTR0_tag";
	rename -uid "446A007D-4533-F9F2-BC10-778182081E8F";
createNode controller -n "Ring3_Joint_M_CTR2_tag";
	rename -uid "6EE51910-4A2C-F152-AC4B-398EF0881DD8";
createNode controller -n "Ring2_Joint_M_CTR1_tag";
	rename -uid "B98C9A5C-4095-1CC3-5994-0381019D67D7";
createNode controller -n "Ring1_Joint_M_CTR0_tag";
	rename -uid "8631BC0F-4549-3C24-DF2A-688C037F4F9D";
createNode controller -n "Thumb3_Joint_M_CTR2_tag";
	rename -uid "253C1044-4168-9974-1A61-8AA6B3F66AE4";
createNode controller -n "Thumb2_Joint_M_CTR1_tag";
	rename -uid "D83CDED0-4A6E-A9CD-54B0-2AAABB32C363";
createNode controller -n "Thumb1_Joint_M_CTR0_tag";
	rename -uid "07B75A06-47EB-0F7D-27EC-15A3EC190F1F";
createNode polyColorPerVertex -n "polyColorPerVertex1";
	rename -uid "F69B51FB-4061-1457-A9E4-98B0886ACDE0";
	setAttr ".uopa" yes;
	setAttr -s 304 ".vclr";
	setAttr ".vclr[0].vxal" 1;
	setAttr -s 4 ".vclr[0].vfcl";
	setAttr ".vclr[0].vfcl[0].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[0].vfcl[0].vfal" 1;
	setAttr ".vclr[0].vfcl[9].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[0].vfcl[9].vfal" 1;
	setAttr ".vclr[0].vfcl[289].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[0].vfcl[289].vfal" 1;
	setAttr ".vclr[0].vfcl[290].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[0].vfcl[290].vfal" 1;
	setAttr ".vclr[1].vxal" 1;
	setAttr -s 5 ".vclr[1].vfcl";
	setAttr ".vclr[1].vfcl[0].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[1].vfcl[0].vfal" 1;
	setAttr ".vclr[1].vfcl[1].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[1].vfcl[1].vfal" 1;
	setAttr ".vclr[1].vfcl[265].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[1].vfcl[265].vfal" 1;
	setAttr ".vclr[1].vfcl[266].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[1].vfcl[266].vfal" 1;
	setAttr ".vclr[1].vfcl[290].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[1].vfcl[290].vfal" 1;
	setAttr ".vclr[2].vxal" 1;
	setAttr -s 4 ".vclr[2].vfcl";
	setAttr ".vclr[2].vfcl[0].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[2].vfcl[0].vfal" 1;
	setAttr ".vclr[2].vfcl[1].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[2].vfcl[1].vfal" 1;
	setAttr ".vclr[2].vfcl[195].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[2].vfcl[195].vfal" 1;
	setAttr ".vclr[2].vfcl[196].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[2].vfcl[196].vfal" 1;
	setAttr ".vclr[3].vxal" 1;
	setAttr -s 4 ".vclr[3].vfcl";
	setAttr ".vclr[3].vfcl[0].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[3].vfcl[0].vfal" 1;
	setAttr ".vclr[3].vfcl[9].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[3].vfcl[9].vfal" 1;
	setAttr ".vclr[3].vfcl[195].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[3].vfcl[195].vfal" 1;
	setAttr ".vclr[3].vfcl[204].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[3].vfcl[204].vfal" 1;
	setAttr ".vclr[4].vxal" 1;
	setAttr -s 4 ".vclr[4].vfcl";
	setAttr ".vclr[4].vfcl[1].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[4].vfcl[1].vfal" 1;
	setAttr ".vclr[4].vfcl[2].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[4].vfcl[2].vfal" 1;
	setAttr ".vclr[4].vfcl[266].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[4].vfcl[266].vfal" 1;
	setAttr ".vclr[4].vfcl[267].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[4].vfcl[267].vfal" 1;
	setAttr ".vclr[5].vxal" 1;
	setAttr -s 4 ".vclr[5].vfcl";
	setAttr ".vclr[5].vfcl[1].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[5].vfcl[1].vfal" 1;
	setAttr ".vclr[5].vfcl[2].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[5].vfcl[2].vfal" 1;
	setAttr ".vclr[5].vfcl[196].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[5].vfcl[196].vfal" 1;
	setAttr ".vclr[5].vfcl[197].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[5].vfcl[197].vfal" 1;
	setAttr ".vclr[6].vxal" 1;
	setAttr -s 4 ".vclr[6].vfcl";
	setAttr ".vclr[6].vfcl[2].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[6].vfcl[2].vfal" 1;
	setAttr ".vclr[6].vfcl[3].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[6].vfcl[3].vfal" 1;
	setAttr ".vclr[6].vfcl[267].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[6].vfcl[267].vfal" 1;
	setAttr ".vclr[6].vfcl[268].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[6].vfcl[268].vfal" 1;
	setAttr ".vclr[7].vxal" 1;
	setAttr -s 4 ".vclr[7].vfcl";
	setAttr ".vclr[7].vfcl[2].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[7].vfcl[2].vfal" 1;
	setAttr ".vclr[7].vfcl[3].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[7].vfcl[3].vfal" 1;
	setAttr ".vclr[7].vfcl[197].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[7].vfcl[197].vfal" 1;
	setAttr ".vclr[7].vfcl[198].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[7].vfcl[198].vfal" 1;
	setAttr ".vclr[8].vxal" 1;
	setAttr -s 4 ".vclr[8].vfcl";
	setAttr ".vclr[8].vfcl[3].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[8].vfcl[3].vfal" 1;
	setAttr ".vclr[8].vfcl[4].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[8].vfcl[4].vfal" 1;
	setAttr ".vclr[8].vfcl[268].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[8].vfcl[268].vfal" 1;
	setAttr ".vclr[8].vfcl[269].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[8].vfcl[269].vfal" 1;
	setAttr ".vclr[9].vxal" 1;
	setAttr -s 4 ".vclr[9].vfcl";
	setAttr ".vclr[9].vfcl[3].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[9].vfcl[3].vfal" 1;
	setAttr ".vclr[9].vfcl[4].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[9].vfcl[4].vfal" 1;
	setAttr ".vclr[9].vfcl[198].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[9].vfcl[198].vfal" 1;
	setAttr ".vclr[9].vfcl[199].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[9].vfcl[199].vfal" 1;
	setAttr ".vclr[10].vxal" 1;
	setAttr -s 4 ".vclr[10].vfcl";
	setAttr ".vclr[10].vfcl[4].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[10].vfcl[4].vfal" 1;
	setAttr ".vclr[10].vfcl[5].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[10].vfcl[5].vfal" 1;
	setAttr ".vclr[10].vfcl[269].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[10].vfcl[269].vfal" 1;
	setAttr ".vclr[10].vfcl[270].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[10].vfcl[270].vfal" 1;
	setAttr ".vclr[11].vxal" 1;
	setAttr -s 4 ".vclr[11].vfcl";
	setAttr ".vclr[11].vfcl[4].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[11].vfcl[4].vfal" 1;
	setAttr ".vclr[11].vfcl[5].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[11].vfcl[5].vfal" 1;
	setAttr ".vclr[11].vfcl[199].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[11].vfcl[199].vfal" 1;
	setAttr ".vclr[11].vfcl[200].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[11].vfcl[200].vfal" 1;
	setAttr ".vclr[12].vxal" 1;
	setAttr -s 4 ".vclr[12].vfcl";
	setAttr ".vclr[12].vfcl[5].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[12].vfcl[5].vfal" 1;
	setAttr ".vclr[12].vfcl[6].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[12].vfcl[6].vfal" 1;
	setAttr ".vclr[12].vfcl[270].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[12].vfcl[270].vfal" 1;
	setAttr ".vclr[12].vfcl[271].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[12].vfcl[271].vfal" 1;
	setAttr ".vclr[13].vxal" 1;
	setAttr -s 4 ".vclr[13].vfcl";
	setAttr ".vclr[13].vfcl[5].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[13].vfcl[5].vfal" 1;
	setAttr ".vclr[13].vfcl[6].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[13].vfcl[6].vfal" 1;
	setAttr ".vclr[13].vfcl[200].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[13].vfcl[200].vfal" 1;
	setAttr ".vclr[13].vfcl[201].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[13].vfcl[201].vfal" 1;
	setAttr ".vclr[14].vxal" 1;
	setAttr -s 4 ".vclr[14].vfcl";
	setAttr ".vclr[14].vfcl[6].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[14].vfcl[6].vfal" 1;
	setAttr ".vclr[14].vfcl[7].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[14].vfcl[7].vfal" 1;
	setAttr ".vclr[14].vfcl[271].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[14].vfcl[271].vfal" 1;
	setAttr ".vclr[14].vfcl[272].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[14].vfcl[272].vfal" 1;
	setAttr ".vclr[15].vxal" 1;
	setAttr -s 4 ".vclr[15].vfcl";
	setAttr ".vclr[15].vfcl[6].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[15].vfcl[6].vfal" 1;
	setAttr ".vclr[15].vfcl[7].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[15].vfcl[7].vfal" 1;
	setAttr ".vclr[15].vfcl[201].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[15].vfcl[201].vfal" 1;
	setAttr ".vclr[15].vfcl[202].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[15].vfcl[202].vfal" 1;
	setAttr ".vclr[16].vxal" 1;
	setAttr -s 4 ".vclr[16].vfcl";
	setAttr ".vclr[16].vfcl[7].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[16].vfcl[7].vfal" 1;
	setAttr ".vclr[16].vfcl[8].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[16].vfcl[8].vfal" 1;
	setAttr ".vclr[16].vfcl[272].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[16].vfcl[272].vfal" 1;
	setAttr ".vclr[16].vfcl[273].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[16].vfcl[273].vfal" 1;
	setAttr ".vclr[17].vxal" 1;
	setAttr -s 4 ".vclr[17].vfcl";
	setAttr ".vclr[17].vfcl[7].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[17].vfcl[7].vfal" 1;
	setAttr ".vclr[17].vfcl[8].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[17].vfcl[8].vfal" 1;
	setAttr ".vclr[17].vfcl[202].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[17].vfcl[202].vfal" 1;
	setAttr ".vclr[17].vfcl[203].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[17].vfcl[203].vfal" 1;
	setAttr ".vclr[18].vxal" 1;
	setAttr -s 4 ".vclr[18].vfcl";
	setAttr ".vclr[18].vfcl[8].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[18].vfcl[8].vfal" 1;
	setAttr ".vclr[18].vfcl[9].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[18].vfcl[9].vfal" 1;
	setAttr ".vclr[18].vfcl[273].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[18].vfcl[273].vfal" 1;
	setAttr ".vclr[18].vfcl[289].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[18].vfcl[289].vfal" 1;
	setAttr ".vclr[19].vxal" 1;
	setAttr -s 4 ".vclr[19].vfcl";
	setAttr ".vclr[19].vfcl[8].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[19].vfcl[8].vfal" 1;
	setAttr ".vclr[19].vfcl[9].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[19].vfcl[9].vfal" 1;
	setAttr ".vclr[19].vfcl[203].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[19].vfcl[203].vfal" 1;
	setAttr ".vclr[19].vfcl[204].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[19].vfcl[204].vfal" 1;
	setAttr ".vclr[20].vxal" 1;
	setAttr -s 4 ".vclr[20].vfcl";
	setAttr ".vclr[20].vfcl[10].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[20].vfcl[10].vfal" 1;
	setAttr ".vclr[20].vfcl[11].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[20].vfcl[11].vfal" 1;
	setAttr ".vclr[20].vfcl[205].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[20].vfcl[205].vfal" 1;
	setAttr ".vclr[20].vfcl[206].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[20].vfcl[206].vfal" 1;
	setAttr ".vclr[21].vxal" 1;
	setAttr -s 4 ".vclr[21].vfcl";
	setAttr ".vclr[21].vfcl[10].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[21].vfcl[10].vfal" 1;
	setAttr ".vclr[21].vfcl[11].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[21].vfcl[11].vfal" 1;
	setAttr ".vclr[21].vfcl[178].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[21].vfcl[178].vfal" 1;
	setAttr ".vclr[21].vfcl[186].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[21].vfcl[186].vfal" 1;
	setAttr ".vclr[22].vxal" 1;
	setAttr -s 4 ".vclr[22].vfcl";
	setAttr ".vclr[22].vfcl[10].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[22].vfcl[10].vfal" 1;
	setAttr ".vclr[22].vfcl[19].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[22].vfcl[19].vfal" 1;
	setAttr ".vclr[22].vfcl[178].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[22].vfcl[178].vfal" 1;
	setAttr ".vclr[22].vfcl[185].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[22].vfcl[185].vfal" 1;
	setAttr ".vclr[23].vxal" 1;
	setAttr -s 4 ".vclr[23].vfcl";
	setAttr ".vclr[23].vfcl[10].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[23].vfcl[10].vfal" 1;
	setAttr ".vclr[23].vfcl[19].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[23].vfcl[19].vfal" 1;
	setAttr ".vclr[23].vfcl[205].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[23].vfcl[205].vfal" 1;
	setAttr ".vclr[23].vfcl[214].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[23].vfcl[214].vfal" 1;
	setAttr ".vclr[24].vxal" 1;
	setAttr -s 4 ".vclr[24].vfcl";
	setAttr ".vclr[24].vfcl[11].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[24].vfcl[11].vfal" 1;
	setAttr ".vclr[24].vfcl[12].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[24].vfcl[12].vfal" 1;
	setAttr ".vclr[24].vfcl[206].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[24].vfcl[206].vfal" 1;
	setAttr ".vclr[24].vfcl[207].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[24].vfcl[207].vfal" 1;
	setAttr ".vclr[25].vxal" 1;
	setAttr -s 4 ".vclr[25].vfcl";
	setAttr ".vclr[25].vfcl[11].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[25].vfcl[11].vfal" 1;
	setAttr ".vclr[25].vfcl[12].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[25].vfcl[12].vfal" 1;
	setAttr ".vclr[25].vfcl[186].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[25].vfcl[186].vfal" 1;
	setAttr ".vclr[25].vfcl[187].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[25].vfcl[187].vfal" 1;
	setAttr ".vclr[26].vxal" 1;
	setAttr -s 4 ".vclr[26].vfcl";
	setAttr ".vclr[26].vfcl[12].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[26].vfcl[12].vfal" 1;
	setAttr ".vclr[26].vfcl[13].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[26].vfcl[13].vfal" 1;
	setAttr ".vclr[26].vfcl[207].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[26].vfcl[207].vfal" 1;
	setAttr ".vclr[26].vfcl[208].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[26].vfcl[208].vfal" 1;
	setAttr ".vclr[27].vxal" 1;
	setAttr -s 4 ".vclr[27].vfcl";
	setAttr ".vclr[27].vfcl[12].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[27].vfcl[12].vfal" 1;
	setAttr ".vclr[27].vfcl[13].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[27].vfcl[13].vfal" 1;
	setAttr ".vclr[27].vfcl[187].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[27].vfcl[187].vfal" 1;
	setAttr ".vclr[27].vfcl[188].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[27].vfcl[188].vfal" 1;
	setAttr ".vclr[28].vxal" 1;
	setAttr -s 4 ".vclr[28].vfcl";
	setAttr ".vclr[28].vfcl[13].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[28].vfcl[13].vfal" 1;
	setAttr ".vclr[28].vfcl[14].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[28].vfcl[14].vfal" 1;
	setAttr ".vclr[28].vfcl[208].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[28].vfcl[208].vfal" 1;
	setAttr ".vclr[28].vfcl[209].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[28].vfcl[209].vfal" 1;
	setAttr ".vclr[29].vxal" 1;
	setAttr -s 4 ".vclr[29].vfcl";
	setAttr ".vclr[29].vfcl[13].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[29].vfcl[13].vfal" 1;
	setAttr ".vclr[29].vfcl[14].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[29].vfcl[14].vfal" 1;
	setAttr ".vclr[29].vfcl[188].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[29].vfcl[188].vfal" 1;
	setAttr ".vclr[29].vfcl[189].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[29].vfcl[189].vfal" 1;
	setAttr ".vclr[30].vxal" 1;
	setAttr -s 4 ".vclr[30].vfcl";
	setAttr ".vclr[30].vfcl[14].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[30].vfcl[14].vfal" 1;
	setAttr ".vclr[30].vfcl[15].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[30].vfcl[15].vfal" 1;
	setAttr ".vclr[30].vfcl[209].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[30].vfcl[209].vfal" 1;
	setAttr ".vclr[30].vfcl[210].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[30].vfcl[210].vfal" 1;
	setAttr ".vclr[31].vxal" 1;
	setAttr -s 4 ".vclr[31].vfcl";
	setAttr ".vclr[31].vfcl[14].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[31].vfcl[14].vfal" 1;
	setAttr ".vclr[31].vfcl[15].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[31].vfcl[15].vfal" 1;
	setAttr ".vclr[31].vfcl[189].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[31].vfcl[189].vfal" 1;
	setAttr ".vclr[31].vfcl[191].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[31].vfcl[191].vfal" 1;
	setAttr ".vclr[32].vxal" 1;
	setAttr -s 4 ".vclr[32].vfcl";
	setAttr ".vclr[32].vfcl[15].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[32].vfcl[15].vfal" 1;
	setAttr ".vclr[32].vfcl[16].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[32].vfcl[16].vfal" 1;
	setAttr ".vclr[32].vfcl[210].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[32].vfcl[210].vfal" 1;
	setAttr ".vclr[32].vfcl[211].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[32].vfcl[211].vfal" 1;
	setAttr ".vclr[33].vxal" 1;
	setAttr -s 4 ".vclr[33].vfcl";
	setAttr ".vclr[33].vfcl[15].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[33].vfcl[15].vfal" 1;
	setAttr ".vclr[33].vfcl[16].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[33].vfcl[16].vfal" 1;
	setAttr ".vclr[33].vfcl[191].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[33].vfcl[191].vfal" 1;
	setAttr ".vclr[33].vfcl[192].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[33].vfcl[192].vfal" 1;
	setAttr ".vclr[34].vxal" 1;
	setAttr -s 4 ".vclr[34].vfcl";
	setAttr ".vclr[34].vfcl[16].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[34].vfcl[16].vfal" 1;
	setAttr ".vclr[34].vfcl[17].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[34].vfcl[17].vfal" 1;
	setAttr ".vclr[34].vfcl[211].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[34].vfcl[211].vfal" 1;
	setAttr ".vclr[34].vfcl[212].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[34].vfcl[212].vfal" 1;
	setAttr ".vclr[35].vxal" 1;
	setAttr -s 4 ".vclr[35].vfcl";
	setAttr ".vclr[35].vfcl[16].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[35].vfcl[16].vfal" 1;
	setAttr ".vclr[35].vfcl[17].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[35].vfcl[17].vfal" 1;
	setAttr ".vclr[35].vfcl[192].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[35].vfcl[192].vfal" 1;
	setAttr ".vclr[35].vfcl[193].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[35].vfcl[193].vfal" 1;
	setAttr ".vclr[36].vxal" 1;
	setAttr -s 4 ".vclr[36].vfcl";
	setAttr ".vclr[36].vfcl[17].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[36].vfcl[17].vfal" 1;
	setAttr ".vclr[36].vfcl[18].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[36].vfcl[18].vfal" 1;
	setAttr ".vclr[36].vfcl[212].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[36].vfcl[212].vfal" 1;
	setAttr ".vclr[36].vfcl[213].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[36].vfcl[213].vfal" 1;
	setAttr ".vclr[37].vxal" 1;
	setAttr -s 4 ".vclr[37].vfcl";
	setAttr ".vclr[37].vfcl[17].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[37].vfcl[17].vfal" 1;
	setAttr ".vclr[37].vfcl[18].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[37].vfcl[18].vfal" 1;
	setAttr ".vclr[37].vfcl[193].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[37].vfcl[193].vfal" 1;
	setAttr ".vclr[37].vfcl[194].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[37].vfcl[194].vfal" 1;
	setAttr ".vclr[38].vxal" 1;
	setAttr -s 4 ".vclr[38].vfcl";
	setAttr ".vclr[38].vfcl[18].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[38].vfcl[18].vfal" 1;
	setAttr ".vclr[38].vfcl[19].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[38].vfcl[19].vfal" 1;
	setAttr ".vclr[38].vfcl[213].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[38].vfcl[213].vfal" 1;
	setAttr ".vclr[38].vfcl[214].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[38].vfcl[214].vfal" 1;
	setAttr ".vclr[39].vxal" 1;
	setAttr -s 4 ".vclr[39].vfcl";
	setAttr ".vclr[39].vfcl[18].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[39].vfcl[18].vfal" 1;
	setAttr ".vclr[39].vfcl[19].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[39].vfcl[19].vfal" 1;
	setAttr ".vclr[39].vfcl[185].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[39].vfcl[185].vfal" 1;
	setAttr ".vclr[39].vfcl[194].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[39].vfcl[194].vfal" 1;
	setAttr ".vclr[40].vxal" 1;
	setAttr -s 6 ".vclr[40].vfcl";
	setAttr ".vclr[40].vfcl[20].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[40].vfcl[20].vfal" 1;
	setAttr ".vclr[40].vfcl[21].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[40].vfcl[21].vfal" 1;
	setAttr ".vclr[40].vfcl[56].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[40].vfcl[56].vfal" 1;
	setAttr ".vclr[40].vfcl[67].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[40].vfcl[67].vfal" 1;
	setAttr ".vclr[40].vfcl[81].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[40].vfcl[81].vfal" 1;
	setAttr ".vclr[40].vfcl[82].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[40].vfcl[82].vfal" 1;
	setAttr ".vclr[41].vxal" 1;
	setAttr -s 6 ".vclr[41].vfcl";
	setAttr ".vclr[41].vfcl[20].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[41].vfcl[20].vfal" 1;
	setAttr ".vclr[41].vfcl[23].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[41].vfcl[23].vfal" 1;
	setAttr ".vclr[41].vfcl[59].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[41].vfcl[59].vfal" 1;
	setAttr ".vclr[41].vfcl[63].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[41].vfcl[63].vfal" 1;
	setAttr ".vclr[41].vfcl[82].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[41].vfcl[82].vfal" 1;
	setAttr ".vclr[41].vfcl[83].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[41].vfcl[83].vfal" 1;
	setAttr ".vclr[42].vxal" 1;
	setAttr -s 4 ".vclr[42].vfcl";
	setAttr ".vclr[42].vfcl[20].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[42].vfcl[20].vfal" 1;
	setAttr ".vclr[42].vfcl[23].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[42].vfcl[23].vfal" 1;
	setAttr ".vclr[42].vfcl[24].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[42].vfcl[24].vfal" 1;
	setAttr ".vclr[42].vfcl[27].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[42].vfcl[27].vfal" 1;
	setAttr ".vclr[43].vxal" 1;
	setAttr -s 4 ".vclr[43].vfcl";
	setAttr ".vclr[43].vfcl[20].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[43].vfcl[20].vfal" 1;
	setAttr ".vclr[43].vfcl[21].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[43].vfcl[21].vfal" 1;
	setAttr ".vclr[43].vfcl[24].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[43].vfcl[24].vfal" 1;
	setAttr ".vclr[43].vfcl[25].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[43].vfcl[25].vfal" 1;
	setAttr ".vclr[44].vxal" 1;
	setAttr -s 4 ".vclr[44].vfcl";
	setAttr ".vclr[44].vfcl[21].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[44].vfcl[21].vfal" 1;
	setAttr ".vclr[44].vfcl[22].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[44].vfcl[22].vfal" 1;
	setAttr ".vclr[44].vfcl[66].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[44].vfcl[66].vfal" 1;
	setAttr ".vclr[44].vfcl[67].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[44].vfcl[67].vfal" 1;
	setAttr ".vclr[45].vxal" 1;
	setAttr -s 4 ".vclr[45].vfcl";
	setAttr ".vclr[45].vfcl[21].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[45].vfcl[21].vfal" 1;
	setAttr ".vclr[45].vfcl[22].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[45].vfcl[22].vfal" 1;
	setAttr ".vclr[45].vfcl[25].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[45].vfcl[25].vfal" 1;
	setAttr ".vclr[45].vfcl[26].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[45].vfcl[26].vfal" 1;
	setAttr ".vclr[46].vxal" 1;
	setAttr -s 5 ".vclr[46].vfcl";
	setAttr ".vclr[46].vfcl[22].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[46].vfcl[22].vfal" 1;
	setAttr ".vclr[46].vfcl[23].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[46].vfcl[23].vfal" 1;
	setAttr ".vclr[46].vfcl[52].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[46].vfcl[52].vfal" 1;
	setAttr ".vclr[46].vfcl[63].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[46].vfcl[63].vfal" 1;
	setAttr ".vclr[46].vfcl[66].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[46].vfcl[66].vfal" 1;
	setAttr ".vclr[47].vxal" 1;
	setAttr -s 4 ".vclr[47].vfcl";
	setAttr ".vclr[47].vfcl[22].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[47].vfcl[22].vfal" 1;
	setAttr ".vclr[47].vfcl[23].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[47].vfcl[23].vfal" 1;
	setAttr ".vclr[47].vfcl[26].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[47].vfcl[26].vfal" 1;
	setAttr ".vclr[47].vfcl[27].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[47].vfcl[27].vfal" 1;
	setAttr ".vclr[48].vxal" 1;
	setAttr -s 4 ".vclr[48].vfcl";
	setAttr ".vclr[48].vfcl[24].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[48].vfcl[24].vfal" 1;
	setAttr ".vclr[48].vfcl[27].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[48].vfcl[27].vfal" 1;
	setAttr ".vclr[48].vfcl[28].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[48].vfcl[28].vfal" 1;
	setAttr ".vclr[48].vfcl[31].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[48].vfcl[31].vfal" 1;
	setAttr ".vclr[49].vxal" 1;
	setAttr -s 4 ".vclr[49].vfcl";
	setAttr ".vclr[49].vfcl[24].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[49].vfcl[24].vfal" 1;
	setAttr ".vclr[49].vfcl[25].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[49].vfcl[25].vfal" 1;
	setAttr ".vclr[49].vfcl[28].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[49].vfcl[28].vfal" 1;
	setAttr ".vclr[49].vfcl[29].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[49].vfcl[29].vfal" 1;
	setAttr ".vclr[50].vxal" 1;
	setAttr -s 4 ".vclr[50].vfcl";
	setAttr ".vclr[50].vfcl[25].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[50].vfcl[25].vfal" 1;
	setAttr ".vclr[50].vfcl[26].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[50].vfcl[26].vfal" 1;
	setAttr ".vclr[50].vfcl[29].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[50].vfcl[29].vfal" 1;
	setAttr ".vclr[50].vfcl[30].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[50].vfcl[30].vfal" 1;
	setAttr ".vclr[51].vxal" 1;
	setAttr -s 4 ".vclr[51].vfcl";
	setAttr ".vclr[51].vfcl[26].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[51].vfcl[26].vfal" 1;
	setAttr ".vclr[51].vfcl[27].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[51].vfcl[27].vfal" 1;
	setAttr ".vclr[51].vfcl[30].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[51].vfcl[30].vfal" 1;
	setAttr ".vclr[51].vfcl[31].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[51].vfcl[31].vfal" 1;
	setAttr ".vclr[52].vxal" 1;
	setAttr -s 4 ".vclr[52].vfcl";
	setAttr ".vclr[52].vfcl[28].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[52].vfcl[28].vfal" 1;
	setAttr ".vclr[52].vfcl[31].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[52].vfcl[31].vfal" 1;
	setAttr ".vclr[52].vfcl[32].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[52].vfcl[32].vfal" 1;
	setAttr ".vclr[52].vfcl[35].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[52].vfcl[35].vfal" 1;
	setAttr ".vclr[53].vxal" 1;
	setAttr -s 4 ".vclr[53].vfcl";
	setAttr ".vclr[53].vfcl[28].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[53].vfcl[28].vfal" 1;
	setAttr ".vclr[53].vfcl[29].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[53].vfcl[29].vfal" 1;
	setAttr ".vclr[53].vfcl[32].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[53].vfcl[32].vfal" 1;
	setAttr ".vclr[53].vfcl[33].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[53].vfcl[33].vfal" 1;
	setAttr ".vclr[54].vxal" 1;
	setAttr -s 4 ".vclr[54].vfcl";
	setAttr ".vclr[54].vfcl[29].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[54].vfcl[29].vfal" 1;
	setAttr ".vclr[54].vfcl[30].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[54].vfcl[30].vfal" 1;
	setAttr ".vclr[54].vfcl[33].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[54].vfcl[33].vfal" 1;
	setAttr ".vclr[54].vfcl[34].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[54].vfcl[34].vfal" 1;
	setAttr ".vclr[55].vxal" 1;
	setAttr -s 4 ".vclr[55].vfcl";
	setAttr ".vclr[55].vfcl[30].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[55].vfcl[30].vfal" 1;
	setAttr ".vclr[55].vfcl[31].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[55].vfcl[31].vfal" 1;
	setAttr ".vclr[55].vfcl[34].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[55].vfcl[34].vfal" 1;
	setAttr ".vclr[55].vfcl[35].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[55].vfcl[35].vfal" 1;
	setAttr ".vclr[56].vxal" 1;
	setAttr -s 4 ".vclr[56].vfcl";
	setAttr ".vclr[56].vfcl[32].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[56].vfcl[32].vfal" 1;
	setAttr ".vclr[56].vfcl[35].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[56].vfcl[35].vfal" 1;
	setAttr ".vclr[56].vfcl[75].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[56].vfcl[75].vfal" 1;
	setAttr ".vclr[56].vfcl[78].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[56].vfcl[78].vfal" 1;
	setAttr ".vclr[57].vxal" 1;
	setAttr -s 4 ".vclr[57].vfcl";
	setAttr ".vclr[57].vfcl[32].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[57].vfcl[32].vfal" 1;
	setAttr ".vclr[57].vfcl[33].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[57].vfcl[33].vfal" 1;
	setAttr ".vclr[57].vfcl[75].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[57].vfcl[75].vfal" 1;
	setAttr ".vclr[57].vfcl[76].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[57].vfcl[76].vfal" 1;
	setAttr ".vclr[58].vxal" 1;
	setAttr -s 4 ".vclr[58].vfcl";
	setAttr ".vclr[58].vfcl[33].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[58].vfcl[33].vfal" 1;
	setAttr ".vclr[58].vfcl[34].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[58].vfcl[34].vfal" 1;
	setAttr ".vclr[58].vfcl[76].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[58].vfcl[76].vfal" 1;
	setAttr ".vclr[58].vfcl[77].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[58].vfcl[77].vfal" 1;
	setAttr ".vclr[59].vxal" 1;
	setAttr -s 4 ".vclr[59].vfcl";
	setAttr ".vclr[59].vfcl[34].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[59].vfcl[34].vfal" 1;
	setAttr ".vclr[59].vfcl[35].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[59].vfcl[35].vfal" 1;
	setAttr ".vclr[59].vfcl[77].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[59].vfcl[77].vfal" 1;
	setAttr ".vclr[59].vfcl[78].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[59].vfcl[78].vfal" 1;
	setAttr ".vclr[60].vxal" 1;
	setAttr -s 5 ".vclr[60].vfcl";
	setAttr ".vclr[60].vfcl[36].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[60].vfcl[36].vfal" 1;
	setAttr ".vclr[60].vfcl[37].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[60].vfcl[37].vfal" 1;
	setAttr ".vclr[60].vfcl[52].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[60].vfcl[52].vfal" 1;
	setAttr ".vclr[60].vfcl[53].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[60].vfcl[53].vfal" 1;
	setAttr ".vclr[60].vfcl[68].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[60].vfcl[68].vfal" 1;
	setAttr ".vclr[61].vxal" 1;
	setAttr -s 5 ".vclr[61].vfcl";
	setAttr ".vclr[61].vfcl[36].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[61].vfcl[36].vfal" 1;
	setAttr ".vclr[61].vfcl[39].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[61].vfcl[39].vfal" 1;
	setAttr ".vclr[61].vfcl[52].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[61].vfcl[52].vfal" 1;
	setAttr ".vclr[61].vfcl[63].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[61].vfcl[63].vfal" 1;
	setAttr ".vclr[61].vfcl[64].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[61].vfcl[64].vfal" 1;
	setAttr ".vclr[62].vxal" 1;
	setAttr -s 4 ".vclr[62].vfcl";
	setAttr ".vclr[62].vfcl[36].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[62].vfcl[36].vfal" 1;
	setAttr ".vclr[62].vfcl[39].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[62].vfcl[39].vfal" 1;
	setAttr ".vclr[62].vfcl[40].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[62].vfcl[40].vfal" 1;
	setAttr ".vclr[62].vfcl[43].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[62].vfcl[43].vfal" 1;
	setAttr ".vclr[63].vxal" 1;
	setAttr -s 4 ".vclr[63].vfcl";
	setAttr ".vclr[63].vfcl[36].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[63].vfcl[36].vfal" 1;
	setAttr ".vclr[63].vfcl[37].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[63].vfcl[37].vfal" 1;
	setAttr ".vclr[63].vfcl[40].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[63].vfcl[40].vfal" 1;
	setAttr ".vclr[63].vfcl[41].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[63].vfcl[41].vfal" 1;
	setAttr ".vclr[64].vxal" 1;
	setAttr -s 4 ".vclr[64].vfcl";
	setAttr ".vclr[64].vfcl[37].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[64].vfcl[37].vfal" 1;
	setAttr ".vclr[64].vfcl[38].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[64].vfcl[38].vfal" 1;
	setAttr ".vclr[64].vfcl[53].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[64].vfcl[53].vfal" 1;
	setAttr ".vclr[64].vfcl[65].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[64].vfcl[65].vfal" 1;
	setAttr ".vclr[65].vxal" 1;
	setAttr -s 4 ".vclr[65].vfcl";
	setAttr ".vclr[65].vfcl[37].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[65].vfcl[37].vfal" 1;
	setAttr ".vclr[65].vfcl[38].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[65].vfcl[38].vfal" 1;
	setAttr ".vclr[65].vfcl[41].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[65].vfcl[41].vfal" 1;
	setAttr ".vclr[65].vfcl[42].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[65].vfcl[42].vfal" 1;
	setAttr ".vclr[66].vxal" 1;
	setAttr -s 4 ".vclr[66].vfcl";
	setAttr ".vclr[66].vfcl[38].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[66].vfcl[38].vfal" 1;
	setAttr ".vclr[66].vfcl[39].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[66].vfcl[39].vfal" 1;
	setAttr ".vclr[66].vfcl[64].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[66].vfcl[64].vfal" 1;
	setAttr ".vclr[66].vfcl[65].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[66].vfcl[65].vfal" 1;
	setAttr ".vclr[67].vxal" 1;
	setAttr -s 4 ".vclr[67].vfcl";
	setAttr ".vclr[67].vfcl[38].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[67].vfcl[38].vfal" 1;
	setAttr ".vclr[67].vfcl[39].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[67].vfcl[39].vfal" 1;
	setAttr ".vclr[67].vfcl[42].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[67].vfcl[42].vfal" 1;
	setAttr ".vclr[67].vfcl[43].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[67].vfcl[43].vfal" 1;
	setAttr ".vclr[68].vxal" 1;
	setAttr -s 4 ".vclr[68].vfcl";
	setAttr ".vclr[68].vfcl[40].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[68].vfcl[40].vfal" 1;
	setAttr ".vclr[68].vfcl[43].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[68].vfcl[43].vfal" 1;
	setAttr ".vclr[68].vfcl[44].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[68].vfcl[44].vfal" 1;
	setAttr ".vclr[68].vfcl[47].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[68].vfcl[47].vfal" 1;
	setAttr ".vclr[69].vxal" 1;
	setAttr -s 4 ".vclr[69].vfcl";
	setAttr ".vclr[69].vfcl[40].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[69].vfcl[40].vfal" 1;
	setAttr ".vclr[69].vfcl[41].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[69].vfcl[41].vfal" 1;
	setAttr ".vclr[69].vfcl[44].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[69].vfcl[44].vfal" 1;
	setAttr ".vclr[69].vfcl[45].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[69].vfcl[45].vfal" 1;
	setAttr ".vclr[70].vxal" 1;
	setAttr -s 4 ".vclr[70].vfcl";
	setAttr ".vclr[70].vfcl[41].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[70].vfcl[41].vfal" 1;
	setAttr ".vclr[70].vfcl[42].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[70].vfcl[42].vfal" 1;
	setAttr ".vclr[70].vfcl[45].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[70].vfcl[45].vfal" 1;
	setAttr ".vclr[70].vfcl[46].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[70].vfcl[46].vfal" 1;
	setAttr ".vclr[71].vxal" 1;
	setAttr -s 4 ".vclr[71].vfcl";
	setAttr ".vclr[71].vfcl[42].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[71].vfcl[42].vfal" 1;
	setAttr ".vclr[71].vfcl[43].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[71].vfcl[43].vfal" 1;
	setAttr ".vclr[71].vfcl[46].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[71].vfcl[46].vfal" 1;
	setAttr ".vclr[71].vfcl[47].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[71].vfcl[47].vfal" 1;
	setAttr ".vclr[72].vxal" 1;
	setAttr -s 4 ".vclr[72].vfcl";
	setAttr ".vclr[72].vfcl[44].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[72].vfcl[44].vfal" 1;
	setAttr ".vclr[72].vfcl[47].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[72].vfcl[47].vfal" 1;
	setAttr ".vclr[72].vfcl[48].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[72].vfcl[48].vfal" 1;
	setAttr ".vclr[72].vfcl[51].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[72].vfcl[51].vfal" 1;
	setAttr ".vclr[73].vxal" 1;
	setAttr -s 4 ".vclr[73].vfcl";
	setAttr ".vclr[73].vfcl[44].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[73].vfcl[44].vfal" 1;
	setAttr ".vclr[73].vfcl[45].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[73].vfcl[45].vfal" 1;
	setAttr ".vclr[73].vfcl[48].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[73].vfcl[48].vfal" 1;
	setAttr ".vclr[73].vfcl[49].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[73].vfcl[49].vfal" 1;
	setAttr ".vclr[74].vxal" 1;
	setAttr -s 4 ".vclr[74].vfcl";
	setAttr ".vclr[74].vfcl[45].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[74].vfcl[45].vfal" 1;
	setAttr ".vclr[74].vfcl[46].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[74].vfcl[46].vfal" 1;
	setAttr ".vclr[74].vfcl[49].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[74].vfcl[49].vfal" 1;
	setAttr ".vclr[74].vfcl[50].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[74].vfcl[50].vfal" 1;
	setAttr ".vclr[75].vxal" 1;
	setAttr -s 4 ".vclr[75].vfcl";
	setAttr ".vclr[75].vfcl[46].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[75].vfcl[46].vfal" 1;
	setAttr ".vclr[75].vfcl[47].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[75].vfcl[47].vfal" 1;
	setAttr ".vclr[75].vfcl[50].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[75].vfcl[50].vfal" 1;
	setAttr ".vclr[75].vfcl[51].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[75].vfcl[51].vfal" 1;
	setAttr ".vclr[76].vxal" 1;
	setAttr -s 4 ".vclr[76].vfcl";
	setAttr ".vclr[76].vfcl[48].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[76].vfcl[48].vfal" 1;
	setAttr ".vclr[76].vfcl[51].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[76].vfcl[51].vfal" 1;
	setAttr ".vclr[76].vfcl[70].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[76].vfcl[70].vfal" 1;
	setAttr ".vclr[76].vfcl[73].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[76].vfcl[73].vfal" 1;
	setAttr ".vclr[77].vxal" 1;
	setAttr -s 4 ".vclr[77].vfcl";
	setAttr ".vclr[77].vfcl[48].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[77].vfcl[48].vfal" 1;
	setAttr ".vclr[77].vfcl[49].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[77].vfcl[49].vfal" 1;
	setAttr ".vclr[77].vfcl[70].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[77].vfcl[70].vfal" 1;
	setAttr ".vclr[77].vfcl[71].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[77].vfcl[71].vfal" 1;
	setAttr ".vclr[78].vxal" 1;
	setAttr -s 4 ".vclr[78].vfcl";
	setAttr ".vclr[78].vfcl[49].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[78].vfcl[49].vfal" 1;
	setAttr ".vclr[78].vfcl[50].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[78].vfcl[50].vfal" 1;
	setAttr ".vclr[78].vfcl[71].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[78].vfcl[71].vfal" 1;
	setAttr ".vclr[78].vfcl[72].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[78].vfcl[72].vfal" 1;
	setAttr ".vclr[79].vxal" 1;
	setAttr -s 4 ".vclr[79].vfcl";
	setAttr ".vclr[79].vfcl[50].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[79].vfcl[50].vfal" 1;
	setAttr ".vclr[79].vfcl[51].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[79].vfcl[51].vfal" 1;
	setAttr ".vclr[79].vfcl[72].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[79].vfcl[72].vfal" 1;
	setAttr ".vclr[79].vfcl[73].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[79].vfcl[73].vfal" 1;
	setAttr ".vclr[80].vxal" 1;
	setAttr -s 3 ".vclr[80].vfcl";
	setAttr ".vclr[80].vfcl[52].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[80].vfcl[52].vfal" 1;
	setAttr ".vclr[80].vfcl[66].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[80].vfcl[66].vfal" 1;
	setAttr ".vclr[80].vfcl[68].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[80].vfcl[68].vfal" 1;
	setAttr ".vclr[81].vxal" 1;
	setAttr -s 5 ".vclr[81].vfcl";
	setAttr ".vclr[81].vfcl[53].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[81].vfcl[53].vfal" 1;
	setAttr ".vclr[81].vfcl[68].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[81].vfcl[68].vfal" 1;
	setAttr ".vclr[81].vfcl[69].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[81].vfcl[69].vfal" 1;
	setAttr ".vclr[81].vfcl[148].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[81].vfcl[148].vfal" 1;
	setAttr ".vclr[81].vfcl[157].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[81].vfcl[157].vfal" 1;
	setAttr ".vclr[82].vxal" 1;
	setAttr -s 4 ".vclr[82].vfcl";
	setAttr ".vclr[82].vfcl[53].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[82].vfcl[53].vfal" 1;
	setAttr ".vclr[82].vfcl[65].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[82].vfcl[65].vfal" 1;
	setAttr ".vclr[82].vfcl[148].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[82].vfcl[148].vfal" 1;
	setAttr ".vclr[82].vfcl[149].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[82].vfcl[149].vfal" 1;
	setAttr ".vclr[83].vxal" 1;
	setAttr -s 4 ".vclr[83].vfcl";
	setAttr ".vclr[83].vfcl[54].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[83].vfcl[54].vfal" 1;
	setAttr ".vclr[83].vfcl[55].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[83].vfcl[55].vfal" 1;
	setAttr ".vclr[83].vfcl[143].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[83].vfcl[143].vfal" 1;
	setAttr ".vclr[83].vfcl[146].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[83].vfcl[146].vfal" 1;
	setAttr ".vclr[84].vxal" 1;
	setAttr -s 4 ".vclr[84].vfcl";
	setAttr ".vclr[84].vfcl[54].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[84].vfcl[54].vfal" 1;
	setAttr ".vclr[84].vfcl[55].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[84].vfcl[55].vfal" 1;
	setAttr ".vclr[84].vfcl[61].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[84].vfcl[61].vfal" 1;
	setAttr ".vclr[84].vfcl[147].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[84].vfcl[147].vfal" 1;
	setAttr ".vclr[85].vxal" 1;
	setAttr -s 4 ".vclr[85].vfcl";
	setAttr ".vclr[85].vfcl[54].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[85].vfcl[54].vfal" 1;
	setAttr ".vclr[85].vfcl[61].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[85].vfcl[61].vfal" 1;
	setAttr ".vclr[85].vfcl[122].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[85].vfcl[122].vfal" 1;
	setAttr ".vclr[85].vfcl[125].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[85].vfcl[125].vfal" 1;
	setAttr ".vclr[86].vxal" 1;
	setAttr -s 4 ".vclr[86].vfcl";
	setAttr ".vclr[86].vfcl[54].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[86].vfcl[54].vfal" 1;
	setAttr ".vclr[86].vfcl[122].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[86].vfcl[122].vfal" 1;
	setAttr ".vclr[86].vfcl[123].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[86].vfcl[123].vfal" 1;
	setAttr ".vclr[86].vfcl[143].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[86].vfcl[143].vfal" 1;
	setAttr ".vclr[87].vxal" 1;
	setAttr -s 4 ".vclr[87].vfcl";
	setAttr ".vclr[87].vfcl[55].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[87].vfcl[55].vfal" 1;
	setAttr ".vclr[87].vfcl[146].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[87].vfcl[146].vfal" 1;
	setAttr ".vclr[87].vfcl[153].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[87].vfcl[153].vfal" 1;
	setAttr ".vclr[87].vfcl[154].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[87].vfcl[154].vfal" 1;
	setAttr ".vclr[88].vxal" 1;
	setAttr -s 4 ".vclr[88].vfcl";
	setAttr ".vclr[88].vfcl[55].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[88].vfcl[55].vfal" 1;
	setAttr ".vclr[88].vfcl[147].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[88].vfcl[147].vfal" 1;
	setAttr ".vclr[88].vfcl[152].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[88].vfcl[152].vfal" 1;
	setAttr ".vclr[88].vfcl[153].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[88].vfcl[153].vfal" 1;
	setAttr ".vclr[89].vxal" 1;
	setAttr -s 4 ".vclr[89].vfcl";
	setAttr ".vclr[89].vfcl[56].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[89].vfcl[56].vfal" 1;
	setAttr ".vclr[89].vfcl[57].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[89].vfcl[57].vfal" 1;
	setAttr ".vclr[89].vfcl[58].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[89].vfcl[58].vfal" 1;
	setAttr ".vclr[89].vfcl[145].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[89].vfcl[145].vfal" 1;
	setAttr ".vclr[90].vxal" 1;
	setAttr -s 6 ".vclr[90].vfcl";
	setAttr ".vclr[90].vfcl[56].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[90].vfcl[56].vfal" 1;
	setAttr ".vclr[90].vfcl[80].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[90].vfcl[80].vfal" 1;
	setAttr ".vclr[90].vfcl[81].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[90].vfcl[81].vfal" 1;
	setAttr ".vclr[90].vfcl[102].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[90].vfcl[102].vfal" 1;
	setAttr ".vclr[90].vfcl[103].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[90].vfcl[103].vfal" 1;
	setAttr ".vclr[90].vfcl[145].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[90].vfcl[145].vfal" 1;
	setAttr ".vclr[91].vxal" 1;
	setAttr -s 4 ".vclr[91].vfcl";
	setAttr ".vclr[91].vfcl[56].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[91].vfcl[56].vfal" 1;
	setAttr ".vclr[91].vfcl[57].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[91].vfcl[57].vfal" 1;
	setAttr ".vclr[91].vfcl[67].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[91].vfcl[67].vfal" 1;
	setAttr ".vclr[91].vfcl[69].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[91].vfcl[69].vfal" 1;
	setAttr ".vclr[92].vxal" 1;
	setAttr -s 4 ".vclr[92].vfcl";
	setAttr ".vclr[92].vfcl[57].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[92].vfcl[57].vfal" 1;
	setAttr ".vclr[92].vfcl[58].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[92].vfcl[58].vfal" 1;
	setAttr ".vclr[92].vfcl[155].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[92].vfcl[155].vfal" 1;
	setAttr ".vclr[92].vfcl[156].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[92].vfcl[156].vfal" 1;
	setAttr ".vclr[93].vxal" 1;
	setAttr -s 4 ".vclr[93].vfcl";
	setAttr ".vclr[93].vfcl[57].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[93].vfcl[57].vfal" 1;
	setAttr ".vclr[93].vfcl[69].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[93].vfcl[69].vfal" 1;
	setAttr ".vclr[93].vfcl[156].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[93].vfcl[156].vfal" 1;
	setAttr ".vclr[93].vfcl[157].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[93].vfcl[157].vfal" 1;
	setAttr ".vclr[94].vxal" 1;
	setAttr -s 4 ".vclr[94].vfcl";
	setAttr ".vclr[94].vfcl[58].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[94].vfcl[58].vfal" 1;
	setAttr ".vclr[94].vfcl[143].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[94].vfcl[143].vfal" 1;
	setAttr ".vclr[94].vfcl[145].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[94].vfcl[145].vfal" 1;
	setAttr ".vclr[94].vfcl[146].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[94].vfcl[146].vfal" 1;
	setAttr ".vclr[95].vxal" 1;
	setAttr -s 4 ".vclr[95].vfcl";
	setAttr ".vclr[95].vfcl[58].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[95].vfcl[58].vfal" 1;
	setAttr ".vclr[95].vfcl[146].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[95].vfcl[146].vfal" 1;
	setAttr ".vclr[95].vfcl[154].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[95].vfcl[154].vfal" 1;
	setAttr ".vclr[95].vfcl[155].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[95].vfcl[155].vfal" 1;
	setAttr ".vclr[96].vxal" 1;
	setAttr -s 4 ".vclr[96].vfcl";
	setAttr ".vclr[96].vfcl[59].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[96].vfcl[59].vfal" 1;
	setAttr ".vclr[96].vfcl[60].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[96].vfcl[60].vfal" 1;
	setAttr ".vclr[96].vfcl[63].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[96].vfcl[63].vfal" 1;
	setAttr ".vclr[96].vfcl[64].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[96].vfcl[64].vfal" 1;
	setAttr ".vclr[97].vxal" 1;
	setAttr -s 6 ".vclr[97].vfcl";
	setAttr ".vclr[97].vfcl[59].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[97].vfcl[59].vfal" 1;
	setAttr ".vclr[97].vfcl[80].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[97].vfcl[80].vfal" 1;
	setAttr ".vclr[97].vfcl[83].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[97].vfcl[83].vfal" 1;
	setAttr ".vclr[97].vfcl[103].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[97].vfcl[103].vfal" 1;
	setAttr ".vclr[97].vfcl[104].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[97].vfcl[104].vfal" 1;
	setAttr ".vclr[97].vfcl[144].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[97].vfcl[144].vfal" 1;
	setAttr ".vclr[98].vxal" 1;
	setAttr -s 4 ".vclr[98].vfcl";
	setAttr ".vclr[98].vfcl[59].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[98].vfcl[59].vfal" 1;
	setAttr ".vclr[98].vfcl[60].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[98].vfcl[60].vfal" 1;
	setAttr ".vclr[98].vfcl[62].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[98].vfcl[62].vfal" 1;
	setAttr ".vclr[98].vfcl[144].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[98].vfcl[144].vfal" 1;
	setAttr ".vclr[99].vxal" 1;
	setAttr -s 5 ".vclr[99].vfcl";
	setAttr ".vclr[99].vfcl[60].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[99].vfcl[60].vfal" 1;
	setAttr ".vclr[99].vfcl[64].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[99].vfcl[64].vfal" 1;
	setAttr ".vclr[99].vfcl[65].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[99].vfcl[65].vfal" 1;
	setAttr ".vclr[99].vfcl[149].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[99].vfcl[149].vfal" 1;
	setAttr ".vclr[99].vfcl[150].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[99].vfcl[150].vfal" 1;
	setAttr ".vclr[100].vxal" 1;
	setAttr -s 4 ".vclr[100].vfcl";
	setAttr ".vclr[100].vfcl[60].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[100].vfcl[60].vfal" 1;
	setAttr ".vclr[100].vfcl[62].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[100].vfcl[62].vfal" 1;
	setAttr ".vclr[100].vfcl[150].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[100].vfcl[150].vfal" 1;
	setAttr ".vclr[100].vfcl[151].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[100].vfcl[151].vfal" 1;
	setAttr ".vclr[101].vxal" 1;
	setAttr -s 4 ".vclr[101].vfcl";
	setAttr ".vclr[101].vfcl[61].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[101].vfcl[61].vfal" 1;
	setAttr ".vclr[101].vfcl[62].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[101].vfcl[62].vfal" 1;
	setAttr ".vclr[101].vfcl[144].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[101].vfcl[144].vfal" 1;
	setAttr ".vclr[101].vfcl[147].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[101].vfcl[147].vfal" 1;
	setAttr ".vclr[102].vxal" 1;
	setAttr -s 6 ".vclr[102].vfcl";
	setAttr ".vclr[102].vfcl[61].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[102].vfcl[61].vfal" 1;
	setAttr ".vclr[102].vfcl[101].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[102].vfcl[101].vfal" 1;
	setAttr ".vclr[102].vfcl[104].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[102].vfcl[104].vfal" 1;
	setAttr ".vclr[102].vfcl[124].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[102].vfcl[124].vfal" 1;
	setAttr ".vclr[102].vfcl[125].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[102].vfcl[125].vfal" 1;
	setAttr ".vclr[102].vfcl[144].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[102].vfcl[144].vfal" 1;
	setAttr ".vclr[103].vxal" 1;
	setAttr -s 4 ".vclr[103].vfcl";
	setAttr ".vclr[103].vfcl[62].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[103].vfcl[62].vfal" 1;
	setAttr ".vclr[103].vfcl[147].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[103].vfcl[147].vfal" 1;
	setAttr ".vclr[103].vfcl[151].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[103].vfcl[151].vfal" 1;
	setAttr ".vclr[103].vfcl[152].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[103].vfcl[152].vfal" 1;
	setAttr ".vclr[104].vxal" 1;
	setAttr -s 4 ".vclr[104].vfcl";
	setAttr ".vclr[104].vfcl[66].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[104].vfcl[66].vfal" 1;
	setAttr ".vclr[104].vfcl[67].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[104].vfcl[67].vfal" 1;
	setAttr ".vclr[104].vfcl[68].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[104].vfcl[68].vfal" 1;
	setAttr ".vclr[104].vfcl[69].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[104].vfcl[69].vfal" 1;
	setAttr ".vclr[105].vxal" 1;
	setAttr -s 3 ".vclr[105].vfcl";
	setAttr ".vclr[105].vfcl[70].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[105].vfcl[70].vfal" 1;
	setAttr ".vclr[105].vfcl[73].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[105].vfcl[73].vfal" 1;
	setAttr ".vclr[105].vfcl[74].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[105].vfcl[74].vfal" 1;
	setAttr ".vclr[106].vxal" 1;
	setAttr -s 3 ".vclr[106].vfcl";
	setAttr ".vclr[106].vfcl[70].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[106].vfcl[70].vfal" 1;
	setAttr ".vclr[106].vfcl[71].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[106].vfcl[71].vfal" 1;
	setAttr ".vclr[106].vfcl[74].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[106].vfcl[74].vfal" 1;
	setAttr ".vclr[107].vxal" 1;
	setAttr -s 3 ".vclr[107].vfcl";
	setAttr ".vclr[107].vfcl[71].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[107].vfcl[71].vfal" 1;
	setAttr ".vclr[107].vfcl[72].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[107].vfcl[72].vfal" 1;
	setAttr ".vclr[107].vfcl[74].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[107].vfcl[74].vfal" 1;
	setAttr ".vclr[108].vxal" 1;
	setAttr -s 3 ".vclr[108].vfcl";
	setAttr ".vclr[108].vfcl[72].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[108].vfcl[72].vfal" 1;
	setAttr ".vclr[108].vfcl[73].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[108].vfcl[73].vfal" 1;
	setAttr ".vclr[108].vfcl[74].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[108].vfcl[74].vfal" 1;
	setAttr ".vclr[109].vxal" 1;
	setAttr -s 3 ".vclr[109].vfcl";
	setAttr ".vclr[109].vfcl[75].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[109].vfcl[75].vfal" 1;
	setAttr ".vclr[109].vfcl[78].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[109].vfcl[78].vfal" 1;
	setAttr ".vclr[109].vfcl[79].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[109].vfcl[79].vfal" 1;
	setAttr ".vclr[110].vxal" 1;
	setAttr -s 3 ".vclr[110].vfcl";
	setAttr ".vclr[110].vfcl[75].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[110].vfcl[75].vfal" 1;
	setAttr ".vclr[110].vfcl[76].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[110].vfcl[76].vfal" 1;
	setAttr ".vclr[110].vfcl[79].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[110].vfcl[79].vfal" 1;
	setAttr ".vclr[111].vxal" 1;
	setAttr -s 3 ".vclr[111].vfcl";
	setAttr ".vclr[111].vfcl[76].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[111].vfcl[76].vfal" 1;
	setAttr ".vclr[111].vfcl[77].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[111].vfcl[77].vfal" 1;
	setAttr ".vclr[111].vfcl[79].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[111].vfcl[79].vfal" 1;
	setAttr ".vclr[112].vxal" 1;
	setAttr -s 3 ".vclr[112].vfcl";
	setAttr ".vclr[112].vfcl[77].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[112].vfcl[77].vfal" 1;
	setAttr ".vclr[112].vfcl[78].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[112].vfcl[78].vfal" 1;
	setAttr ".vclr[112].vfcl[79].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[112].vfcl[79].vfal" 1;
	setAttr ".vclr[113].vxal" 1;
	setAttr -s 4 ".vclr[113].vfcl";
	setAttr ".vclr[113].vfcl[80].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[113].vfcl[80].vfal" 1;
	setAttr ".vclr[113].vfcl[83].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[113].vfcl[83].vfal" 1;
	setAttr ".vclr[113].vfcl[84].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[113].vfcl[84].vfal" 1;
	setAttr ".vclr[113].vfcl[87].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[113].vfcl[87].vfal" 1;
	setAttr ".vclr[114].vxal" 1;
	setAttr -s 4 ".vclr[114].vfcl";
	setAttr ".vclr[114].vfcl[80].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[114].vfcl[80].vfal" 1;
	setAttr ".vclr[114].vfcl[81].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[114].vfcl[81].vfal" 1;
	setAttr ".vclr[114].vfcl[84].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[114].vfcl[84].vfal" 1;
	setAttr ".vclr[114].vfcl[85].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[114].vfcl[85].vfal" 1;
	setAttr ".vclr[115].vxal" 1;
	setAttr -s 4 ".vclr[115].vfcl";
	setAttr ".vclr[115].vfcl[81].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[115].vfcl[81].vfal" 1;
	setAttr ".vclr[115].vfcl[82].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[115].vfcl[82].vfal" 1;
	setAttr ".vclr[115].vfcl[85].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[115].vfcl[85].vfal" 1;
	setAttr ".vclr[115].vfcl[86].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[115].vfcl[86].vfal" 1;
	setAttr ".vclr[116].vxal" 1;
	setAttr -s 4 ".vclr[116].vfcl";
	setAttr ".vclr[116].vfcl[82].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[116].vfcl[82].vfal" 1;
	setAttr ".vclr[116].vfcl[83].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[116].vfcl[83].vfal" 1;
	setAttr ".vclr[116].vfcl[86].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[116].vfcl[86].vfal" 1;
	setAttr ".vclr[116].vfcl[87].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[116].vfcl[87].vfal" 1;
	setAttr ".vclr[117].vxal" 1;
	setAttr -s 4 ".vclr[117].vfcl";
	setAttr ".vclr[117].vfcl[84].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[117].vfcl[84].vfal" 1;
	setAttr ".vclr[117].vfcl[87].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[117].vfcl[87].vfal" 1;
	setAttr ".vclr[117].vfcl[88].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[117].vfcl[88].vfal" 1;
	setAttr ".vclr[117].vfcl[91].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[117].vfcl[91].vfal" 1;
	setAttr ".vclr[118].vxal" 1;
	setAttr -s 4 ".vclr[118].vfcl";
	setAttr ".vclr[118].vfcl[84].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[118].vfcl[84].vfal" 1;
	setAttr ".vclr[118].vfcl[85].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[118].vfcl[85].vfal" 1;
	setAttr ".vclr[118].vfcl[88].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[118].vfcl[88].vfal" 1;
	setAttr ".vclr[118].vfcl[89].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[118].vfcl[89].vfal" 1;
	setAttr ".vclr[119].vxal" 1;
	setAttr -s 4 ".vclr[119].vfcl";
	setAttr ".vclr[119].vfcl[85].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[119].vfcl[85].vfal" 1;
	setAttr ".vclr[119].vfcl[86].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[119].vfcl[86].vfal" 1;
	setAttr ".vclr[119].vfcl[89].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[119].vfcl[89].vfal" 1;
	setAttr ".vclr[119].vfcl[90].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[119].vfcl[90].vfal" 1;
	setAttr ".vclr[120].vxal" 1;
	setAttr -s 4 ".vclr[120].vfcl";
	setAttr ".vclr[120].vfcl[86].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[120].vfcl[86].vfal" 1;
	setAttr ".vclr[120].vfcl[87].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[120].vfcl[87].vfal" 1;
	setAttr ".vclr[120].vfcl[90].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[120].vfcl[90].vfal" 1;
	setAttr ".vclr[120].vfcl[91].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[120].vfcl[91].vfal" 1;
	setAttr ".vclr[121].vxal" 1;
	setAttr -s 4 ".vclr[121].vfcl";
	setAttr ".vclr[121].vfcl[88].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[121].vfcl[88].vfal" 1;
	setAttr ".vclr[121].vfcl[91].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[121].vfcl[91].vfal" 1;
	setAttr ".vclr[121].vfcl[92].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[121].vfcl[92].vfal" 1;
	setAttr ".vclr[121].vfcl[95].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[121].vfcl[95].vfal" 1;
	setAttr ".vclr[122].vxal" 1;
	setAttr -s 4 ".vclr[122].vfcl";
	setAttr ".vclr[122].vfcl[88].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[122].vfcl[88].vfal" 1;
	setAttr ".vclr[122].vfcl[89].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[122].vfcl[89].vfal" 1;
	setAttr ".vclr[122].vfcl[92].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[122].vfcl[92].vfal" 1;
	setAttr ".vclr[122].vfcl[93].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[122].vfcl[93].vfal" 1;
	setAttr ".vclr[123].vxal" 1;
	setAttr -s 4 ".vclr[123].vfcl";
	setAttr ".vclr[123].vfcl[89].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[123].vfcl[89].vfal" 1;
	setAttr ".vclr[123].vfcl[90].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[123].vfcl[90].vfal" 1;
	setAttr ".vclr[123].vfcl[93].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[123].vfcl[93].vfal" 1;
	setAttr ".vclr[123].vfcl[94].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[123].vfcl[94].vfal" 1;
	setAttr ".vclr[124].vxal" 1;
	setAttr -s 4 ".vclr[124].vfcl";
	setAttr ".vclr[124].vfcl[90].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[124].vfcl[90].vfal" 1;
	setAttr ".vclr[124].vfcl[91].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[124].vfcl[91].vfal" 1;
	setAttr ".vclr[124].vfcl[94].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[124].vfcl[94].vfal" 1;
	setAttr ".vclr[124].vfcl[95].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[124].vfcl[95].vfal" 1;
	setAttr ".vclr[125].vxal" 1;
	setAttr -s 4 ".vclr[125].vfcl";
	setAttr ".vclr[125].vfcl[92].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[125].vfcl[92].vfal" 1;
	setAttr ".vclr[125].vfcl[95].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[125].vfcl[95].vfal" 1;
	setAttr ".vclr[125].vfcl[96].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[125].vfcl[96].vfal" 1;
	setAttr ".vclr[125].vfcl[99].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[125].vfcl[99].vfal" 1;
	setAttr ".vclr[126].vxal" 1;
	setAttr -s 4 ".vclr[126].vfcl";
	setAttr ".vclr[126].vfcl[92].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[126].vfcl[92].vfal" 1;
	setAttr ".vclr[126].vfcl[93].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[126].vfcl[93].vfal" 1;
	setAttr ".vclr[126].vfcl[96].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[126].vfcl[96].vfal" 1;
	setAttr ".vclr[126].vfcl[97].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[126].vfcl[97].vfal" 1;
	setAttr ".vclr[127].vxal" 1;
	setAttr -s 4 ".vclr[127].vfcl";
	setAttr ".vclr[127].vfcl[93].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[127].vfcl[93].vfal" 1;
	setAttr ".vclr[127].vfcl[94].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[127].vfcl[94].vfal" 1;
	setAttr ".vclr[127].vfcl[97].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[127].vfcl[97].vfal" 1;
	setAttr ".vclr[127].vfcl[98].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[127].vfcl[98].vfal" 1;
	setAttr ".vclr[128].vxal" 1;
	setAttr -s 4 ".vclr[128].vfcl";
	setAttr ".vclr[128].vfcl[94].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[128].vfcl[94].vfal" 1;
	setAttr ".vclr[128].vfcl[95].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[128].vfcl[95].vfal" 1;
	setAttr ".vclr[128].vfcl[98].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[128].vfcl[98].vfal" 1;
	setAttr ".vclr[128].vfcl[99].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[128].vfcl[99].vfal" 1;
	setAttr ".vclr[129].vxal" 1;
	setAttr -s 3 ".vclr[129].vfcl";
	setAttr ".vclr[129].vfcl[96].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[129].vfcl[96].vfal" 1;
	setAttr ".vclr[129].vfcl[99].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[129].vfcl[99].vfal" 1;
	setAttr ".vclr[129].vfcl[100].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[129].vfcl[100].vfal" 1;
	setAttr ".vclr[130].vxal" 1;
	setAttr -s 3 ".vclr[130].vfcl";
	setAttr ".vclr[130].vfcl[96].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[130].vfcl[96].vfal" 1;
	setAttr ".vclr[130].vfcl[97].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[130].vfcl[97].vfal" 1;
	setAttr ".vclr[130].vfcl[100].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[130].vfcl[100].vfal" 1;
	setAttr ".vclr[131].vxal" 1;
	setAttr -s 3 ".vclr[131].vfcl";
	setAttr ".vclr[131].vfcl[97].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[131].vfcl[97].vfal" 1;
	setAttr ".vclr[131].vfcl[98].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[131].vfcl[98].vfal" 1;
	setAttr ".vclr[131].vfcl[100].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[131].vfcl[100].vfal" 1;
	setAttr ".vclr[132].vxal" 1;
	setAttr -s 3 ".vclr[132].vfcl";
	setAttr ".vclr[132].vfcl[98].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[132].vfcl[98].vfal" 1;
	setAttr ".vclr[132].vfcl[99].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[132].vfcl[99].vfal" 1;
	setAttr ".vclr[132].vfcl[100].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[132].vfcl[100].vfal" 1;
	setAttr ".vclr[133].vxal" 1;
	setAttr -s 6 ".vclr[133].vfcl";
	setAttr ".vclr[133].vfcl[101].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[133].vfcl[101].vfal" 1;
	setAttr ".vclr[133].vfcl[102].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[133].vfcl[102].vfal" 1;
	setAttr ".vclr[133].vfcl[123].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[133].vfcl[123].vfal" 1;
	setAttr ".vclr[133].vfcl[124].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[133].vfcl[124].vfal" 1;
	setAttr ".vclr[133].vfcl[143].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[133].vfcl[143].vfal" 1;
	setAttr ".vclr[133].vfcl[145].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[133].vfcl[145].vfal" 1;
	setAttr ".vclr[134].vxal" 1;
	setAttr -s 4 ".vclr[134].vfcl";
	setAttr ".vclr[134].vfcl[101].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[134].vfcl[101].vfal" 1;
	setAttr ".vclr[134].vfcl[104].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[134].vfcl[104].vfal" 1;
	setAttr ".vclr[134].vfcl[105].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[134].vfcl[105].vfal" 1;
	setAttr ".vclr[134].vfcl[108].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[134].vfcl[108].vfal" 1;
	setAttr ".vclr[135].vxal" 1;
	setAttr -s 4 ".vclr[135].vfcl";
	setAttr ".vclr[135].vfcl[101].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[135].vfcl[101].vfal" 1;
	setAttr ".vclr[135].vfcl[102].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[135].vfcl[102].vfal" 1;
	setAttr ".vclr[135].vfcl[105].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[135].vfcl[105].vfal" 1;
	setAttr ".vclr[135].vfcl[106].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[135].vfcl[106].vfal" 1;
	setAttr ".vclr[136].vxal" 1;
	setAttr -s 4 ".vclr[136].vfcl";
	setAttr ".vclr[136].vfcl[102].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[136].vfcl[102].vfal" 1;
	setAttr ".vclr[136].vfcl[103].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[136].vfcl[103].vfal" 1;
	setAttr ".vclr[136].vfcl[106].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[136].vfcl[106].vfal" 1;
	setAttr ".vclr[136].vfcl[107].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[136].vfcl[107].vfal" 1;
	setAttr ".vclr[137].vxal" 1;
	setAttr -s 4 ".vclr[137].vfcl";
	setAttr ".vclr[137].vfcl[103].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[137].vfcl[103].vfal" 1;
	setAttr ".vclr[137].vfcl[104].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[137].vfcl[104].vfal" 1;
	setAttr ".vclr[137].vfcl[107].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[137].vfcl[107].vfal" 1;
	setAttr ".vclr[137].vfcl[108].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[137].vfcl[108].vfal" 1;
	setAttr ".vclr[138].vxal" 1;
	setAttr -s 4 ".vclr[138].vfcl";
	setAttr ".vclr[138].vfcl[105].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[138].vfcl[105].vfal" 1;
	setAttr ".vclr[138].vfcl[108].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[138].vfcl[108].vfal" 1;
	setAttr ".vclr[138].vfcl[109].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[138].vfcl[109].vfal" 1;
	setAttr ".vclr[138].vfcl[112].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[138].vfcl[112].vfal" 1;
	setAttr ".vclr[139].vxal" 1;
	setAttr -s 4 ".vclr[139].vfcl";
	setAttr ".vclr[139].vfcl[105].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[139].vfcl[105].vfal" 1;
	setAttr ".vclr[139].vfcl[106].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[139].vfcl[106].vfal" 1;
	setAttr ".vclr[139].vfcl[109].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[139].vfcl[109].vfal" 1;
	setAttr ".vclr[139].vfcl[110].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[139].vfcl[110].vfal" 1;
	setAttr ".vclr[140].vxal" 1;
	setAttr -s 4 ".vclr[140].vfcl";
	setAttr ".vclr[140].vfcl[106].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[140].vfcl[106].vfal" 1;
	setAttr ".vclr[140].vfcl[107].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[140].vfcl[107].vfal" 1;
	setAttr ".vclr[140].vfcl[110].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[140].vfcl[110].vfal" 1;
	setAttr ".vclr[140].vfcl[111].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[140].vfcl[111].vfal" 1;
	setAttr ".vclr[141].vxal" 1;
	setAttr -s 4 ".vclr[141].vfcl";
	setAttr ".vclr[141].vfcl[107].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[141].vfcl[107].vfal" 1;
	setAttr ".vclr[141].vfcl[108].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[141].vfcl[108].vfal" 1;
	setAttr ".vclr[141].vfcl[111].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[141].vfcl[111].vfal" 1;
	setAttr ".vclr[141].vfcl[112].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[141].vfcl[112].vfal" 1;
	setAttr ".vclr[142].vxal" 1;
	setAttr -s 4 ".vclr[142].vfcl";
	setAttr ".vclr[142].vfcl[109].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[142].vfcl[109].vfal" 1;
	setAttr ".vclr[142].vfcl[112].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[142].vfcl[112].vfal" 1;
	setAttr ".vclr[142].vfcl[113].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[142].vfcl[113].vfal" 1;
	setAttr ".vclr[142].vfcl[116].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[142].vfcl[116].vfal" 1;
	setAttr ".vclr[143].vxal" 1;
	setAttr -s 4 ".vclr[143].vfcl";
	setAttr ".vclr[143].vfcl[109].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[143].vfcl[109].vfal" 1;
	setAttr ".vclr[143].vfcl[110].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[143].vfcl[110].vfal" 1;
	setAttr ".vclr[143].vfcl[113].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[143].vfcl[113].vfal" 1;
	setAttr ".vclr[143].vfcl[114].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[143].vfcl[114].vfal" 1;
	setAttr ".vclr[144].vxal" 1;
	setAttr -s 4 ".vclr[144].vfcl";
	setAttr ".vclr[144].vfcl[110].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[144].vfcl[110].vfal" 1;
	setAttr ".vclr[144].vfcl[111].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[144].vfcl[111].vfal" 1;
	setAttr ".vclr[144].vfcl[114].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[144].vfcl[114].vfal" 1;
	setAttr ".vclr[144].vfcl[115].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[144].vfcl[115].vfal" 1;
	setAttr ".vclr[145].vxal" 1;
	setAttr -s 4 ".vclr[145].vfcl";
	setAttr ".vclr[145].vfcl[111].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[145].vfcl[111].vfal" 1;
	setAttr ".vclr[145].vfcl[112].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[145].vfcl[112].vfal" 1;
	setAttr ".vclr[145].vfcl[115].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[145].vfcl[115].vfal" 1;
	setAttr ".vclr[145].vfcl[116].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[145].vfcl[116].vfal" 1;
	setAttr ".vclr[146].vxal" 1;
	setAttr -s 4 ".vclr[146].vfcl";
	setAttr ".vclr[146].vfcl[113].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[146].vfcl[113].vfal" 1;
	setAttr ".vclr[146].vfcl[116].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[146].vfcl[116].vfal" 1;
	setAttr ".vclr[146].vfcl[117].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[146].vfcl[117].vfal" 1;
	setAttr ".vclr[146].vfcl[120].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[146].vfcl[120].vfal" 1;
	setAttr ".vclr[147].vxal" 1;
	setAttr -s 4 ".vclr[147].vfcl";
	setAttr ".vclr[147].vfcl[113].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[147].vfcl[113].vfal" 1;
	setAttr ".vclr[147].vfcl[114].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[147].vfcl[114].vfal" 1;
	setAttr ".vclr[147].vfcl[117].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[147].vfcl[117].vfal" 1;
	setAttr ".vclr[147].vfcl[118].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[147].vfcl[118].vfal" 1;
	setAttr ".vclr[148].vxal" 1;
	setAttr -s 4 ".vclr[148].vfcl";
	setAttr ".vclr[148].vfcl[114].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[148].vfcl[114].vfal" 1;
	setAttr ".vclr[148].vfcl[115].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[148].vfcl[115].vfal" 1;
	setAttr ".vclr[148].vfcl[118].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[148].vfcl[118].vfal" 1;
	setAttr ".vclr[148].vfcl[119].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[148].vfcl[119].vfal" 1;
	setAttr ".vclr[149].vxal" 1;
	setAttr -s 4 ".vclr[149].vfcl";
	setAttr ".vclr[149].vfcl[115].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[149].vfcl[115].vfal" 1;
	setAttr ".vclr[149].vfcl[116].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[149].vfcl[116].vfal" 1;
	setAttr ".vclr[149].vfcl[119].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[149].vfcl[119].vfal" 1;
	setAttr ".vclr[149].vfcl[120].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[149].vfcl[120].vfal" 1;
	setAttr ".vclr[150].vxal" 1;
	setAttr -s 3 ".vclr[150].vfcl";
	setAttr ".vclr[150].vfcl[117].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[150].vfcl[117].vfal" 1;
	setAttr ".vclr[150].vfcl[120].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[150].vfcl[120].vfal" 1;
	setAttr ".vclr[150].vfcl[121].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[150].vfcl[121].vfal" 1;
	setAttr ".vclr[151].vxal" 1;
	setAttr -s 3 ".vclr[151].vfcl";
	setAttr ".vclr[151].vfcl[117].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[151].vfcl[117].vfal" 1;
	setAttr ".vclr[151].vfcl[118].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[151].vfcl[118].vfal" 1;
	setAttr ".vclr[151].vfcl[121].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[151].vfcl[121].vfal" 1;
	setAttr ".vclr[152].vxal" 1;
	setAttr -s 3 ".vclr[152].vfcl";
	setAttr ".vclr[152].vfcl[118].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[152].vfcl[118].vfal" 1;
	setAttr ".vclr[152].vfcl[119].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[152].vfcl[119].vfal" 1;
	setAttr ".vclr[152].vfcl[121].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[152].vfcl[121].vfal" 1;
	setAttr ".vclr[153].vxal" 1;
	setAttr -s 3 ".vclr[153].vfcl";
	setAttr ".vclr[153].vfcl[119].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[153].vfcl[119].vfal" 1;
	setAttr ".vclr[153].vfcl[120].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[153].vfcl[120].vfal" 1;
	setAttr ".vclr[153].vfcl[121].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[153].vfcl[121].vfal" 1;
	setAttr ".vclr[154].vxal" 1;
	setAttr -s 4 ".vclr[154].vfcl";
	setAttr ".vclr[154].vfcl[122].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[154].vfcl[122].vfal" 1;
	setAttr ".vclr[154].vfcl[125].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[154].vfcl[125].vfal" 1;
	setAttr ".vclr[154].vfcl[126].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[154].vfcl[126].vfal" 1;
	setAttr ".vclr[154].vfcl[129].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[154].vfcl[129].vfal" 1;
	setAttr ".vclr[155].vxal" 1;
	setAttr -s 4 ".vclr[155].vfcl";
	setAttr ".vclr[155].vfcl[122].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[155].vfcl[122].vfal" 1;
	setAttr ".vclr[155].vfcl[123].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[155].vfcl[123].vfal" 1;
	setAttr ".vclr[155].vfcl[126].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[155].vfcl[126].vfal" 1;
	setAttr ".vclr[155].vfcl[127].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[155].vfcl[127].vfal" 1;
	setAttr ".vclr[156].vxal" 1;
	setAttr -s 4 ".vclr[156].vfcl";
	setAttr ".vclr[156].vfcl[123].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[156].vfcl[123].vfal" 1;
	setAttr ".vclr[156].vfcl[124].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[156].vfcl[124].vfal" 1;
	setAttr ".vclr[156].vfcl[127].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[156].vfcl[127].vfal" 1;
	setAttr ".vclr[156].vfcl[128].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[156].vfcl[128].vfal" 1;
	setAttr ".vclr[157].vxal" 1;
	setAttr -s 4 ".vclr[157].vfcl";
	setAttr ".vclr[157].vfcl[124].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[157].vfcl[124].vfal" 1;
	setAttr ".vclr[157].vfcl[125].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[157].vfcl[125].vfal" 1;
	setAttr ".vclr[157].vfcl[128].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[157].vfcl[128].vfal" 1;
	setAttr ".vclr[157].vfcl[129].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[157].vfcl[129].vfal" 1;
	setAttr ".vclr[158].vxal" 1;
	setAttr -s 4 ".vclr[158].vfcl";
	setAttr ".vclr[158].vfcl[126].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[158].vfcl[126].vfal" 1;
	setAttr ".vclr[158].vfcl[129].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[158].vfcl[129].vfal" 1;
	setAttr ".vclr[158].vfcl[130].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[158].vfcl[130].vfal" 1;
	setAttr ".vclr[158].vfcl[133].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[158].vfcl[133].vfal" 1;
	setAttr ".vclr[159].vxal" 1;
	setAttr -s 4 ".vclr[159].vfcl";
	setAttr ".vclr[159].vfcl[126].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[159].vfcl[126].vfal" 1;
	setAttr ".vclr[159].vfcl[127].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[159].vfcl[127].vfal" 1;
	setAttr ".vclr[159].vfcl[130].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[159].vfcl[130].vfal" 1;
	setAttr ".vclr[159].vfcl[131].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[159].vfcl[131].vfal" 1;
	setAttr ".vclr[160].vxal" 1;
	setAttr -s 4 ".vclr[160].vfcl";
	setAttr ".vclr[160].vfcl[127].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[160].vfcl[127].vfal" 1;
	setAttr ".vclr[160].vfcl[128].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[160].vfcl[128].vfal" 1;
	setAttr ".vclr[160].vfcl[131].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[160].vfcl[131].vfal" 1;
	setAttr ".vclr[160].vfcl[132].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[160].vfcl[132].vfal" 1;
	setAttr ".vclr[161].vxal" 1;
	setAttr -s 4 ".vclr[161].vfcl";
	setAttr ".vclr[161].vfcl[128].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[161].vfcl[128].vfal" 1;
	setAttr ".vclr[161].vfcl[129].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[161].vfcl[129].vfal" 1;
	setAttr ".vclr[161].vfcl[132].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[161].vfcl[132].vfal" 1;
	setAttr ".vclr[161].vfcl[133].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[161].vfcl[133].vfal" 1;
	setAttr ".vclr[162].vxal" 1;
	setAttr -s 4 ".vclr[162].vfcl";
	setAttr ".vclr[162].vfcl[130].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[162].vfcl[130].vfal" 1;
	setAttr ".vclr[162].vfcl[133].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[162].vfcl[133].vfal" 1;
	setAttr ".vclr[162].vfcl[134].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[162].vfcl[134].vfal" 1;
	setAttr ".vclr[162].vfcl[137].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[162].vfcl[137].vfal" 1;
	setAttr ".vclr[163].vxal" 1;
	setAttr -s 4 ".vclr[163].vfcl";
	setAttr ".vclr[163].vfcl[130].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[163].vfcl[130].vfal" 1;
	setAttr ".vclr[163].vfcl[131].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[163].vfcl[131].vfal" 1;
	setAttr ".vclr[163].vfcl[134].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[163].vfcl[134].vfal" 1;
	setAttr ".vclr[163].vfcl[135].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[163].vfcl[135].vfal" 1;
	setAttr ".vclr[164].vxal" 1;
	setAttr -s 4 ".vclr[164].vfcl";
	setAttr ".vclr[164].vfcl[131].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[164].vfcl[131].vfal" 1;
	setAttr ".vclr[164].vfcl[132].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[164].vfcl[132].vfal" 1;
	setAttr ".vclr[164].vfcl[135].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[164].vfcl[135].vfal" 1;
	setAttr ".vclr[164].vfcl[136].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[164].vfcl[136].vfal" 1;
	setAttr ".vclr[165].vxal" 1;
	setAttr -s 4 ".vclr[165].vfcl";
	setAttr ".vclr[165].vfcl[132].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[165].vfcl[132].vfal" 1;
	setAttr ".vclr[165].vfcl[133].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[165].vfcl[133].vfal" 1;
	setAttr ".vclr[165].vfcl[136].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[165].vfcl[136].vfal" 1;
	setAttr ".vclr[165].vfcl[137].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[165].vfcl[137].vfal" 1;
	setAttr ".vclr[166].vxal" 1;
	setAttr -s 4 ".vclr[166].vfcl";
	setAttr ".vclr[166].vfcl[134].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[166].vfcl[134].vfal" 1;
	setAttr ".vclr[166].vfcl[137].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[166].vfcl[137].vfal" 1;
	setAttr ".vclr[166].vfcl[138].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[166].vfcl[138].vfal" 1;
	setAttr ".vclr[166].vfcl[141].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[166].vfcl[141].vfal" 1;
	setAttr ".vclr[167].vxal" 1;
	setAttr -s 4 ".vclr[167].vfcl";
	setAttr ".vclr[167].vfcl[134].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[167].vfcl[134].vfal" 1;
	setAttr ".vclr[167].vfcl[135].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[167].vfcl[135].vfal" 1;
	setAttr ".vclr[167].vfcl[138].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[167].vfcl[138].vfal" 1;
	setAttr ".vclr[167].vfcl[139].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[167].vfcl[139].vfal" 1;
	setAttr ".vclr[168].vxal" 1;
	setAttr -s 4 ".vclr[168].vfcl";
	setAttr ".vclr[168].vfcl[135].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[168].vfcl[135].vfal" 1;
	setAttr ".vclr[168].vfcl[136].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[168].vfcl[136].vfal" 1;
	setAttr ".vclr[168].vfcl[139].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[168].vfcl[139].vfal" 1;
	setAttr ".vclr[168].vfcl[140].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[168].vfcl[140].vfal" 1;
	setAttr ".vclr[169].vxal" 1;
	setAttr -s 4 ".vclr[169].vfcl";
	setAttr ".vclr[169].vfcl[136].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[169].vfcl[136].vfal" 1;
	setAttr ".vclr[169].vfcl[137].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[169].vfcl[137].vfal" 1;
	setAttr ".vclr[169].vfcl[140].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[169].vfcl[140].vfal" 1;
	setAttr ".vclr[169].vfcl[141].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[169].vfcl[141].vfal" 1;
	setAttr ".vclr[170].vxal" 1;
	setAttr -s 3 ".vclr[170].vfcl";
	setAttr ".vclr[170].vfcl[138].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[170].vfcl[138].vfal" 1;
	setAttr ".vclr[170].vfcl[141].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[170].vfcl[141].vfal" 1;
	setAttr ".vclr[170].vfcl[142].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[170].vfcl[142].vfal" 1;
	setAttr ".vclr[171].vxal" 1;
	setAttr -s 3 ".vclr[171].vfcl";
	setAttr ".vclr[171].vfcl[138].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[171].vfcl[138].vfal" 1;
	setAttr ".vclr[171].vfcl[139].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[171].vfcl[139].vfal" 1;
	setAttr ".vclr[171].vfcl[142].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[171].vfcl[142].vfal" 1;
	setAttr ".vclr[172].vxal" 1;
	setAttr -s 3 ".vclr[172].vfcl";
	setAttr ".vclr[172].vfcl[139].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[172].vfcl[139].vfal" 1;
	setAttr ".vclr[172].vfcl[140].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[172].vfcl[140].vfal" 1;
	setAttr ".vclr[172].vfcl[142].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[172].vfcl[142].vfal" 1;
	setAttr ".vclr[173].vxal" 1;
	setAttr -s 3 ".vclr[173].vfcl";
	setAttr ".vclr[173].vfcl[140].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[173].vfcl[140].vfal" 1;
	setAttr ".vclr[173].vfcl[141].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[173].vfcl[141].vfal" 1;
	setAttr ".vclr[173].vfcl[142].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[173].vfcl[142].vfal" 1;
	setAttr ".vclr[174].vxal" 1;
	setAttr -s 4 ".vclr[174].vfcl";
	setAttr ".vclr[174].vfcl[148].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[174].vfcl[148].vfal" 1;
	setAttr ".vclr[174].vfcl[149].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[174].vfcl[149].vfal" 1;
	setAttr ".vclr[174].vfcl[247].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[174].vfcl[247].vfal" 1;
	setAttr ".vclr[174].vfcl[257].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[174].vfcl[257].vfal" 1;
	setAttr ".vclr[175].vxal" 1;
	setAttr -s 4 ".vclr[175].vfcl";
	setAttr ".vclr[175].vfcl[148].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[175].vfcl[148].vfal" 1;
	setAttr ".vclr[175].vfcl[157].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[175].vfcl[157].vfal" 1;
	setAttr ".vclr[175].vfcl[248].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[175].vfcl[248].vfal" 1;
	setAttr ".vclr[175].vfcl[257].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[175].vfcl[257].vfal" 1;
	setAttr ".vclr[176].vxal" 1;
	setAttr -s 4 ".vclr[176].vfcl";
	setAttr ".vclr[176].vfcl[149].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[176].vfcl[149].vfal" 1;
	setAttr ".vclr[176].vfcl[150].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[176].vfcl[150].vfal" 1;
	setAttr ".vclr[176].vfcl[246].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[176].vfcl[246].vfal" 1;
	setAttr ".vclr[176].vfcl[247].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[176].vfcl[247].vfal" 1;
	setAttr ".vclr[177].vxal" 1;
	setAttr -s 4 ".vclr[177].vfcl";
	setAttr ".vclr[177].vfcl[150].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[177].vfcl[150].vfal" 1;
	setAttr ".vclr[177].vfcl[151].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[177].vfcl[151].vfal" 1;
	setAttr ".vclr[177].vfcl[246].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[177].vfcl[246].vfal" 1;
	setAttr ".vclr[177].vfcl[253].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[177].vfcl[253].vfal" 1;
	setAttr ".vclr[178].vxal" 1;
	setAttr -s 4 ".vclr[178].vfcl";
	setAttr ".vclr[178].vfcl[151].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[178].vfcl[151].vfal" 1;
	setAttr ".vclr[178].vfcl[152].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[178].vfcl[152].vfal" 1;
	setAttr ".vclr[178].vfcl[252].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[178].vfcl[252].vfal" 1;
	setAttr ".vclr[178].vfcl[253].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[178].vfcl[253].vfal" 1;
	setAttr ".vclr[179].vxal" 1;
	setAttr -s 4 ".vclr[179].vfcl";
	setAttr ".vclr[179].vfcl[152].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[179].vfcl[152].vfal" 1;
	setAttr ".vclr[179].vfcl[153].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[179].vfcl[153].vfal" 1;
	setAttr ".vclr[179].vfcl[251].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[179].vfcl[251].vfal" 1;
	setAttr ".vclr[179].vfcl[252].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[179].vfcl[252].vfal" 1;
	setAttr ".vclr[180].vxal" 1;
	setAttr -s 4 ".vclr[180].vfcl";
	setAttr ".vclr[180].vfcl[153].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[180].vfcl[153].vfal" 1;
	setAttr ".vclr[180].vfcl[154].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[180].vfcl[154].vfal" 1;
	setAttr ".vclr[180].vfcl[250].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[180].vfcl[250].vfal" 1;
	setAttr ".vclr[180].vfcl[251].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[180].vfcl[251].vfal" 1;
	setAttr ".vclr[181].vxal" 1;
	setAttr -s 4 ".vclr[181].vfcl";
	setAttr ".vclr[181].vfcl[154].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[181].vfcl[154].vfal" 1;
	setAttr ".vclr[181].vfcl[155].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[181].vfcl[155].vfal" 1;
	setAttr ".vclr[181].vfcl[250].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[181].vfcl[250].vfal" 1;
	setAttr ".vclr[181].vfcl[261].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[181].vfcl[261].vfal" 1;
	setAttr ".vclr[182].vxal" 1;
	setAttr -s 4 ".vclr[182].vfcl";
	setAttr ".vclr[182].vfcl[155].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[182].vfcl[155].vfal" 1;
	setAttr ".vclr[182].vfcl[156].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[182].vfcl[156].vfal" 1;
	setAttr ".vclr[182].vfcl[249].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[182].vfcl[249].vfal" 1;
	setAttr ".vclr[182].vfcl[261].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[182].vfcl[261].vfal" 1;
	setAttr ".vclr[183].vxal" 1;
	setAttr -s 4 ".vclr[183].vfcl";
	setAttr ".vclr[183].vfcl[156].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[183].vfcl[156].vfal" 1;
	setAttr ".vclr[183].vfcl[157].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[183].vfcl[157].vfal" 1;
	setAttr ".vclr[183].vfcl[248].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[183].vfcl[248].vfal" 1;
	setAttr ".vclr[183].vfcl[249].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[183].vfcl[249].vfal" 1;
	setAttr ".vclr[184].vxal" 1;
	setAttr -s 4 ".vclr[184].vfcl";
	setAttr ".vclr[184].vfcl[158].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[184].vfcl[158].vfal" 1;
	setAttr ".vclr[184].vfcl[159].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[184].vfcl[159].vfal" 1;
	setAttr ".vclr[184].vfcl[287].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[184].vfcl[287].vfal" 1;
	setAttr ".vclr[184].vfcl[288].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[184].vfcl[288].vfal" 1;
	setAttr ".vclr[185].vxal" 1;
	setAttr -s 4 ".vclr[185].vfcl";
	setAttr ".vclr[185].vfcl[158].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[185].vfcl[158].vfal" 1;
	setAttr ".vclr[185].vfcl[159].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[185].vfcl[159].vfal" 1;
	setAttr ".vclr[185].vfcl[168].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[185].vfcl[168].vfal" 1;
	setAttr ".vclr[185].vfcl[169].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[185].vfcl[169].vfal" 1;
	setAttr ".vclr[186].vxal" 1;
	setAttr -s 4 ".vclr[186].vfcl";
	setAttr ".vclr[186].vfcl[158].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[186].vfcl[158].vfal" 1;
	setAttr ".vclr[186].vfcl[167].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[186].vfcl[167].vfal" 1;
	setAttr ".vclr[186].vfcl[168].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[186].vfcl[168].vfal" 1;
	setAttr ".vclr[186].vfcl[177].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[186].vfcl[177].vfal" 1;
	setAttr ".vclr[187].vxal" 1;
	setAttr -s 4 ".vclr[187].vfcl";
	setAttr ".vclr[187].vfcl[158].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[187].vfcl[158].vfal" 1;
	setAttr ".vclr[187].vfcl[167].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[187].vfcl[167].vfal" 1;
	setAttr ".vclr[187].vfcl[184].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[187].vfcl[184].vfal" 1;
	setAttr ".vclr[187].vfcl[288].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[187].vfcl[288].vfal" 1;
	setAttr ".vclr[188].vxal" 1;
	setAttr -s 4 ".vclr[188].vfcl";
	setAttr ".vclr[188].vfcl[159].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[188].vfcl[159].vfal" 1;
	setAttr ".vclr[188].vfcl[160].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[188].vfcl[160].vfal" 1;
	setAttr ".vclr[188].vfcl[286].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[188].vfcl[286].vfal" 1;
	setAttr ".vclr[188].vfcl[287].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[188].vfcl[287].vfal" 1;
	setAttr ".vclr[189].vxal" 1;
	setAttr -s 4 ".vclr[189].vfcl";
	setAttr ".vclr[189].vfcl[159].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[189].vfcl[159].vfal" 1;
	setAttr ".vclr[189].vfcl[160].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[189].vfcl[160].vfal" 1;
	setAttr ".vclr[189].vfcl[169].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[189].vfcl[169].vfal" 1;
	setAttr ".vclr[189].vfcl[170].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[189].vfcl[170].vfal" 1;
	setAttr ".vclr[190].vxal" 1;
	setAttr -s 4 ".vclr[190].vfcl";
	setAttr ".vclr[190].vfcl[160].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[190].vfcl[160].vfal" 1;
	setAttr ".vclr[190].vfcl[161].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[190].vfcl[161].vfal" 1;
	setAttr ".vclr[190].vfcl[179].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[190].vfcl[179].vfal" 1;
	setAttr ".vclr[190].vfcl[286].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[190].vfcl[286].vfal" 1;
	setAttr ".vclr[191].vxal" 1;
	setAttr -s 4 ".vclr[191].vfcl";
	setAttr ".vclr[191].vfcl[160].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[191].vfcl[160].vfal" 1;
	setAttr ".vclr[191].vfcl[161].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[191].vfcl[161].vfal" 1;
	setAttr ".vclr[191].vfcl[170].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[191].vfcl[170].vfal" 1;
	setAttr ".vclr[191].vfcl[171].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[191].vfcl[171].vfal" 1;
	setAttr ".vclr[192].vxal" 1;
	setAttr -s 4 ".vclr[192].vfcl";
	setAttr ".vclr[192].vfcl[161].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[192].vfcl[161].vfal" 1;
	setAttr ".vclr[192].vfcl[162].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[192].vfcl[162].vfal" 1;
	setAttr ".vclr[192].vfcl[179].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[192].vfcl[179].vfal" 1;
	setAttr ".vclr[192].vfcl[180].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[192].vfcl[180].vfal" 1;
	setAttr ".vclr[193].vxal" 1;
	setAttr -s 4 ".vclr[193].vfcl";
	setAttr ".vclr[193].vfcl[161].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[193].vfcl[161].vfal" 1;
	setAttr ".vclr[193].vfcl[162].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[193].vfcl[162].vfal" 1;
	setAttr ".vclr[193].vfcl[171].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[193].vfcl[171].vfal" 1;
	setAttr ".vclr[193].vfcl[172].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[193].vfcl[172].vfal" 1;
	setAttr ".vclr[194].vxal" 1;
	setAttr -s 4 ".vclr[194].vfcl";
	setAttr ".vclr[194].vfcl[162].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[194].vfcl[162].vfal" 1;
	setAttr ".vclr[194].vfcl[163].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[194].vfcl[163].vfal" 1;
	setAttr ".vclr[194].vfcl[180].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[194].vfcl[180].vfal" 1;
	setAttr ".vclr[194].vfcl[190].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[194].vfcl[190].vfal" 1;
	setAttr ".vclr[195].vxal" 1;
	setAttr -s 4 ".vclr[195].vfcl";
	setAttr ".vclr[195].vfcl[162].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[195].vfcl[162].vfal" 1;
	setAttr ".vclr[195].vfcl[163].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[195].vfcl[163].vfal" 1;
	setAttr ".vclr[195].vfcl[172].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[195].vfcl[172].vfal" 1;
	setAttr ".vclr[195].vfcl[173].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[195].vfcl[173].vfal" 1;
	setAttr ".vclr[196].vxal" 1;
	setAttr -s 4 ".vclr[196].vfcl";
	setAttr ".vclr[196].vfcl[163].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[196].vfcl[163].vfal" 1;
	setAttr ".vclr[196].vfcl[164].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[196].vfcl[164].vfal" 1;
	setAttr ".vclr[196].vfcl[181].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[196].vfcl[181].vfal" 1;
	setAttr ".vclr[196].vfcl[190].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[196].vfcl[190].vfal" 1;
	setAttr ".vclr[197].vxal" 1;
	setAttr -s 4 ".vclr[197].vfcl";
	setAttr ".vclr[197].vfcl[163].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[197].vfcl[163].vfal" 1;
	setAttr ".vclr[197].vfcl[164].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[197].vfcl[164].vfal" 1;
	setAttr ".vclr[197].vfcl[173].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[197].vfcl[173].vfal" 1;
	setAttr ".vclr[197].vfcl[174].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[197].vfcl[174].vfal" 1;
	setAttr ".vclr[198].vxal" 1;
	setAttr -s 4 ".vclr[198].vfcl";
	setAttr ".vclr[198].vfcl[164].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[198].vfcl[164].vfal" 1;
	setAttr ".vclr[198].vfcl[165].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[198].vfcl[165].vfal" 1;
	setAttr ".vclr[198].vfcl[181].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[198].vfcl[181].vfal" 1;
	setAttr ".vclr[198].vfcl[182].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[198].vfcl[182].vfal" 1;
	setAttr ".vclr[199].vxal" 1;
	setAttr -s 4 ".vclr[199].vfcl";
	setAttr ".vclr[199].vfcl[164].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[199].vfcl[164].vfal" 1;
	setAttr ".vclr[199].vfcl[165].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[199].vfcl[165].vfal" 1;
	setAttr ".vclr[199].vfcl[174].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[199].vfcl[174].vfal" 1;
	setAttr ".vclr[199].vfcl[175].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[199].vfcl[175].vfal" 1;
	setAttr ".vclr[200].vxal" 1;
	setAttr -s 4 ".vclr[200].vfcl";
	setAttr ".vclr[200].vfcl[165].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[200].vfcl[165].vfal" 1;
	setAttr ".vclr[200].vfcl[166].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[200].vfcl[166].vfal" 1;
	setAttr ".vclr[200].vfcl[182].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[200].vfcl[182].vfal" 1;
	setAttr ".vclr[200].vfcl[183].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[200].vfcl[183].vfal" 1;
	setAttr ".vclr[201].vxal" 1;
	setAttr -s 4 ".vclr[201].vfcl";
	setAttr ".vclr[201].vfcl[165].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[201].vfcl[165].vfal" 1;
	setAttr ".vclr[201].vfcl[166].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[201].vfcl[166].vfal" 1;
	setAttr ".vclr[201].vfcl[175].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[201].vfcl[175].vfal" 1;
	setAttr ".vclr[201].vfcl[176].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[201].vfcl[176].vfal" 1;
	setAttr ".vclr[202].vxal" 1;
	setAttr -s 4 ".vclr[202].vfcl";
	setAttr ".vclr[202].vfcl[166].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[202].vfcl[166].vfal" 1;
	setAttr ".vclr[202].vfcl[167].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[202].vfcl[167].vfal" 1;
	setAttr ".vclr[202].vfcl[183].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[202].vfcl[183].vfal" 1;
	setAttr ".vclr[202].vfcl[184].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[202].vfcl[184].vfal" 1;
	setAttr ".vclr[203].vxal" 1;
	setAttr -s 4 ".vclr[203].vfcl";
	setAttr ".vclr[203].vfcl[166].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[203].vfcl[166].vfal" 1;
	setAttr ".vclr[203].vfcl[167].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[203].vfcl[167].vfal" 1;
	setAttr ".vclr[203].vfcl[176].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[203].vfcl[176].vfal" 1;
	setAttr ".vclr[203].vfcl[177].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[203].vfcl[177].vfal" 1;
	setAttr ".vclr[204].vxal" 1;
	setAttr -s 4 ".vclr[204].vfcl";
	setAttr ".vclr[204].vfcl[168].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[204].vfcl[168].vfal" 1;
	setAttr ".vclr[204].vfcl[169].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[204].vfcl[169].vfal" 1;
	setAttr ".vclr[204].vfcl[236].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[204].vfcl[236].vfal" 1;
	setAttr ".vclr[204].vfcl[237].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[204].vfcl[237].vfal" 1;
	setAttr ".vclr[205].vxal" 1;
	setAttr -s 4 ".vclr[205].vfcl";
	setAttr ".vclr[205].vfcl[168].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[205].vfcl[168].vfal" 1;
	setAttr ".vclr[205].vfcl[177].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[205].vfcl[177].vfal" 1;
	setAttr ".vclr[205].vfcl[236].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[205].vfcl[236].vfal" 1;
	setAttr ".vclr[205].vfcl[245].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[205].vfcl[245].vfal" 1;
	setAttr ".vclr[206].vxal" 1;
	setAttr -s 4 ".vclr[206].vfcl";
	setAttr ".vclr[206].vfcl[169].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[206].vfcl[169].vfal" 1;
	setAttr ".vclr[206].vfcl[170].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[206].vfcl[170].vfal" 1;
	setAttr ".vclr[206].vfcl[237].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[206].vfcl[237].vfal" 1;
	setAttr ".vclr[206].vfcl[238].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[206].vfcl[238].vfal" 1;
	setAttr ".vclr[207].vxal" 1;
	setAttr -s 4 ".vclr[207].vfcl";
	setAttr ".vclr[207].vfcl[170].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[207].vfcl[170].vfal" 1;
	setAttr ".vclr[207].vfcl[171].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[207].vfcl[171].vfal" 1;
	setAttr ".vclr[207].vfcl[238].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[207].vfcl[238].vfal" 1;
	setAttr ".vclr[207].vfcl[239].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[207].vfcl[239].vfal" 1;
	setAttr ".vclr[208].vxal" 1;
	setAttr -s 4 ".vclr[208].vfcl";
	setAttr ".vclr[208].vfcl[171].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[208].vfcl[171].vfal" 1;
	setAttr ".vclr[208].vfcl[172].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[208].vfcl[172].vfal" 1;
	setAttr ".vclr[208].vfcl[239].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[208].vfcl[239].vfal" 1;
	setAttr ".vclr[208].vfcl[240].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[208].vfcl[240].vfal" 1;
	setAttr ".vclr[209].vxal" 1;
	setAttr -s 4 ".vclr[209].vfcl";
	setAttr ".vclr[209].vfcl[172].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[209].vfcl[172].vfal" 1;
	setAttr ".vclr[209].vfcl[173].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[209].vfcl[173].vfal" 1;
	setAttr ".vclr[209].vfcl[240].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[209].vfcl[240].vfal" 1;
	setAttr ".vclr[209].vfcl[241].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[209].vfcl[241].vfal" 1;
	setAttr ".vclr[210].vxal" 1;
	setAttr -s 4 ".vclr[210].vfcl";
	setAttr ".vclr[210].vfcl[173].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[210].vfcl[173].vfal" 1;
	setAttr ".vclr[210].vfcl[174].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[210].vfcl[174].vfal" 1;
	setAttr ".vclr[210].vfcl[241].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[210].vfcl[241].vfal" 1;
	setAttr ".vclr[210].vfcl[242].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[210].vfcl[242].vfal" 1;
	setAttr ".vclr[211].vxal" 1;
	setAttr -s 4 ".vclr[211].vfcl";
	setAttr ".vclr[211].vfcl[174].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[211].vfcl[174].vfal" 1;
	setAttr ".vclr[211].vfcl[175].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[211].vfcl[175].vfal" 1;
	setAttr ".vclr[211].vfcl[242].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[211].vfcl[242].vfal" 1;
	setAttr ".vclr[211].vfcl[243].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[211].vfcl[243].vfal" 1;
	setAttr ".vclr[212].vxal" 1;
	setAttr -s 4 ".vclr[212].vfcl";
	setAttr ".vclr[212].vfcl[175].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[212].vfcl[175].vfal" 1;
	setAttr ".vclr[212].vfcl[176].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[212].vfcl[176].vfal" 1;
	setAttr ".vclr[212].vfcl[243].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[212].vfcl[243].vfal" 1;
	setAttr ".vclr[212].vfcl[244].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[212].vfcl[244].vfal" 1;
	setAttr ".vclr[213].vxal" 1;
	setAttr -s 4 ".vclr[213].vfcl";
	setAttr ".vclr[213].vfcl[176].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[213].vfcl[176].vfal" 1;
	setAttr ".vclr[213].vfcl[177].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[213].vfcl[177].vfal" 1;
	setAttr ".vclr[213].vfcl[244].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[213].vfcl[244].vfal" 1;
	setAttr ".vclr[213].vfcl[245].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[213].vfcl[245].vfal" 1;
	setAttr ".vclr[214].vxal" 1;
	setAttr -s 4 ".vclr[214].vfcl";
	setAttr ".vclr[214].vfcl[178].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[214].vfcl[178].vfal" 1;
	setAttr ".vclr[214].vfcl[185].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[214].vfcl[185].vfal" 1;
	setAttr ".vclr[214].vfcl[287].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[214].vfcl[287].vfal" 1;
	setAttr ".vclr[214].vfcl[288].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[214].vfcl[288].vfal" 1;
	setAttr ".vclr[215].vxal" 1;
	setAttr -s 4 ".vclr[215].vfcl";
	setAttr ".vclr[215].vfcl[178].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[215].vfcl[178].vfal" 1;
	setAttr ".vclr[215].vfcl[186].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[215].vfcl[186].vfal" 1;
	setAttr ".vclr[215].vfcl[286].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[215].vfcl[286].vfal" 1;
	setAttr ".vclr[215].vfcl[287].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[215].vfcl[287].vfal" 1;
	setAttr ".vclr[216].vxal" 1;
	setAttr -s 4 ".vclr[216].vfcl";
	setAttr ".vclr[216].vfcl[179].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[216].vfcl[179].vfal" 1;
	setAttr ".vclr[216].vfcl[186].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[216].vfcl[186].vfal" 1;
	setAttr ".vclr[216].vfcl[187].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[216].vfcl[187].vfal" 1;
	setAttr ".vclr[216].vfcl[286].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[216].vfcl[286].vfal" 1;
	setAttr ".vclr[217].vxal" 1;
	setAttr -s 4 ".vclr[217].vfcl";
	setAttr ".vclr[217].vfcl[179].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[217].vfcl[179].vfal" 1;
	setAttr ".vclr[217].vfcl[180].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[217].vfcl[180].vfal" 1;
	setAttr ".vclr[217].vfcl[187].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[217].vfcl[187].vfal" 1;
	setAttr ".vclr[217].vfcl[188].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[217].vfcl[188].vfal" 1;
	setAttr ".vclr[218].vxal" 1;
	setAttr -s 4 ".vclr[218].vfcl";
	setAttr ".vclr[218].vfcl[180].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[218].vfcl[180].vfal" 1;
	setAttr ".vclr[218].vfcl[188].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[218].vfcl[188].vfal" 1;
	setAttr ".vclr[218].vfcl[189].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[218].vfcl[189].vfal" 1;
	setAttr ".vclr[218].vfcl[190].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[218].vfcl[190].vfal" 1;
	setAttr ".vclr[219].vxal" 1;
	setAttr -s 4 ".vclr[219].vfcl";
	setAttr ".vclr[219].vfcl[181].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[219].vfcl[181].vfal" 1;
	setAttr ".vclr[219].vfcl[189].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[219].vfcl[189].vfal" 1;
	setAttr ".vclr[219].vfcl[190].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[219].vfcl[190].vfal" 1;
	setAttr ".vclr[219].vfcl[191].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[219].vfcl[191].vfal" 1;
	setAttr ".vclr[220].vxal" 1;
	setAttr -s 4 ".vclr[220].vfcl";
	setAttr ".vclr[220].vfcl[181].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[220].vfcl[181].vfal" 1;
	setAttr ".vclr[220].vfcl[182].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[220].vfcl[182].vfal" 1;
	setAttr ".vclr[220].vfcl[191].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[220].vfcl[191].vfal" 1;
	setAttr ".vclr[220].vfcl[192].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[220].vfcl[192].vfal" 1;
	setAttr ".vclr[221].vxal" 1;
	setAttr -s 4 ".vclr[221].vfcl";
	setAttr ".vclr[221].vfcl[182].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[221].vfcl[182].vfal" 1;
	setAttr ".vclr[221].vfcl[183].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[221].vfcl[183].vfal" 1;
	setAttr ".vclr[221].vfcl[192].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[221].vfcl[192].vfal" 1;
	setAttr ".vclr[221].vfcl[193].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[221].vfcl[193].vfal" 1;
	setAttr ".vclr[222].vxal" 1;
	setAttr -s 4 ".vclr[222].vfcl";
	setAttr ".vclr[222].vfcl[183].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[222].vfcl[183].vfal" 1;
	setAttr ".vclr[222].vfcl[184].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[222].vfcl[184].vfal" 1;
	setAttr ".vclr[222].vfcl[193].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[222].vfcl[193].vfal" 1;
	setAttr ".vclr[222].vfcl[194].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[222].vfcl[194].vfal" 1;
	setAttr ".vclr[223].vxal" 1;
	setAttr -s 4 ".vclr[223].vfcl";
	setAttr ".vclr[223].vfcl[184].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[223].vfcl[184].vfal" 1;
	setAttr ".vclr[223].vfcl[185].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[223].vfcl[185].vfal" 1;
	setAttr ".vclr[223].vfcl[194].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[223].vfcl[194].vfal" 1;
	setAttr ".vclr[223].vfcl[288].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[223].vfcl[288].vfal" 1;
	setAttr ".vclr[224].vxal" 1;
	setAttr -s 4 ".vclr[224].vfcl";
	setAttr ".vclr[224].vfcl[195].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[224].vfcl[195].vfal" 1;
	setAttr ".vclr[224].vfcl[196].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[224].vfcl[196].vfal" 1;
	setAttr ".vclr[224].vfcl[205].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[224].vfcl[205].vfal" 1;
	setAttr ".vclr[224].vfcl[206].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[224].vfcl[206].vfal" 1;
	setAttr ".vclr[225].vxal" 1;
	setAttr -s 4 ".vclr[225].vfcl";
	setAttr ".vclr[225].vfcl[195].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[225].vfcl[195].vfal" 1;
	setAttr ".vclr[225].vfcl[204].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[225].vfcl[204].vfal" 1;
	setAttr ".vclr[225].vfcl[205].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[225].vfcl[205].vfal" 1;
	setAttr ".vclr[225].vfcl[214].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[225].vfcl[214].vfal" 1;
	setAttr ".vclr[226].vxal" 1;
	setAttr -s 4 ".vclr[226].vfcl";
	setAttr ".vclr[226].vfcl[196].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[226].vfcl[196].vfal" 1;
	setAttr ".vclr[226].vfcl[197].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[226].vfcl[197].vfal" 1;
	setAttr ".vclr[226].vfcl[206].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[226].vfcl[206].vfal" 1;
	setAttr ".vclr[226].vfcl[207].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[226].vfcl[207].vfal" 1;
	setAttr ".vclr[227].vxal" 1;
	setAttr -s 4 ".vclr[227].vfcl";
	setAttr ".vclr[227].vfcl[197].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[227].vfcl[197].vfal" 1;
	setAttr ".vclr[227].vfcl[198].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[227].vfcl[198].vfal" 1;
	setAttr ".vclr[227].vfcl[207].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[227].vfcl[207].vfal" 1;
	setAttr ".vclr[227].vfcl[208].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[227].vfcl[208].vfal" 1;
	setAttr ".vclr[228].vxal" 1;
	setAttr -s 4 ".vclr[228].vfcl";
	setAttr ".vclr[228].vfcl[198].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[228].vfcl[198].vfal" 1;
	setAttr ".vclr[228].vfcl[199].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[228].vfcl[199].vfal" 1;
	setAttr ".vclr[228].vfcl[208].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[228].vfcl[208].vfal" 1;
	setAttr ".vclr[228].vfcl[209].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[228].vfcl[209].vfal" 1;
	setAttr ".vclr[229].vxal" 1;
	setAttr -s 4 ".vclr[229].vfcl";
	setAttr ".vclr[229].vfcl[199].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[229].vfcl[199].vfal" 1;
	setAttr ".vclr[229].vfcl[200].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[229].vfcl[200].vfal" 1;
	setAttr ".vclr[229].vfcl[209].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[229].vfcl[209].vfal" 1;
	setAttr ".vclr[229].vfcl[210].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[229].vfcl[210].vfal" 1;
	setAttr ".vclr[230].vxal" 1;
	setAttr -s 4 ".vclr[230].vfcl";
	setAttr ".vclr[230].vfcl[200].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[230].vfcl[200].vfal" 1;
	setAttr ".vclr[230].vfcl[201].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[230].vfcl[201].vfal" 1;
	setAttr ".vclr[230].vfcl[210].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[230].vfcl[210].vfal" 1;
	setAttr ".vclr[230].vfcl[211].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[230].vfcl[211].vfal" 1;
	setAttr ".vclr[231].vxal" 1;
	setAttr -s 4 ".vclr[231].vfcl";
	setAttr ".vclr[231].vfcl[201].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[231].vfcl[201].vfal" 1;
	setAttr ".vclr[231].vfcl[202].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[231].vfcl[202].vfal" 1;
	setAttr ".vclr[231].vfcl[211].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[231].vfcl[211].vfal" 1;
	setAttr ".vclr[231].vfcl[212].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[231].vfcl[212].vfal" 1;
	setAttr ".vclr[232].vxal" 1;
	setAttr -s 4 ".vclr[232].vfcl";
	setAttr ".vclr[232].vfcl[202].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[232].vfcl[202].vfal" 1;
	setAttr ".vclr[232].vfcl[203].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[232].vfcl[203].vfal" 1;
	setAttr ".vclr[232].vfcl[212].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[232].vfcl[212].vfal" 1;
	setAttr ".vclr[232].vfcl[213].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[232].vfcl[213].vfal" 1;
	setAttr ".vclr[233].vxal" 1;
	setAttr -s 4 ".vclr[233].vfcl";
	setAttr ".vclr[233].vfcl[203].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[233].vfcl[203].vfal" 1;
	setAttr ".vclr[233].vfcl[204].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[233].vfcl[204].vfal" 1;
	setAttr ".vclr[233].vfcl[213].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[233].vfcl[213].vfal" 1;
	setAttr ".vclr[233].vfcl[214].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[233].vfcl[214].vfal" 1;
	setAttr ".vclr[234].vxal" 1;
	setAttr -s 4 ".vclr[234].vfcl";
	setAttr ".vclr[234].vfcl[215].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[234].vfcl[215].vfal" 1;
	setAttr ".vclr[234].vfcl[216].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[234].vfcl[216].vfal" 1;
	setAttr ".vclr[234].vfcl[226].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[234].vfcl[226].vfal" 1;
	setAttr ".vclr[234].vfcl[227].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[234].vfcl[227].vfal" 1;
	setAttr ".vclr[235].vxal" 1;
	setAttr -s 4 ".vclr[235].vfcl";
	setAttr ".vclr[235].vfcl[215].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[235].vfcl[215].vfal" 1;
	setAttr ".vclr[235].vfcl[216].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[235].vfcl[216].vfal" 1;
	setAttr ".vclr[235].vfcl[254].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[235].vfcl[254].vfal" 1;
	setAttr ".vclr[235].vfcl[255].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[235].vfcl[255].vfal" 1;
	setAttr ".vclr[236].vxal" 1;
	setAttr -s 4 ".vclr[236].vfcl";
	setAttr ".vclr[236].vfcl[215].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[236].vfcl[215].vfal" 1;
	setAttr ".vclr[236].vfcl[225].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[236].vfcl[225].vfal" 1;
	setAttr ".vclr[236].vfcl[254].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[236].vfcl[254].vfal" 1;
	setAttr ".vclr[236].vfcl[264].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[236].vfcl[264].vfal" 1;
	setAttr ".vclr[237].vxal" 1;
	setAttr -s 4 ".vclr[237].vfcl";
	setAttr ".vclr[237].vfcl[215].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[237].vfcl[215].vfal" 1;
	setAttr ".vclr[237].vfcl[225].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[237].vfcl[225].vfal" 1;
	setAttr ".vclr[237].vfcl[226].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[237].vfcl[226].vfal" 1;
	setAttr ".vclr[237].vfcl[235].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[237].vfcl[235].vfal" 1;
	setAttr ".vclr[238].vxal" 1;
	setAttr -s 4 ".vclr[238].vfcl";
	setAttr ".vclr[238].vfcl[216].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[238].vfcl[216].vfal" 1;
	setAttr ".vclr[238].vfcl[217].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[238].vfcl[217].vfal" 1;
	setAttr ".vclr[238].vfcl[227].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[238].vfcl[227].vfal" 1;
	setAttr ".vclr[238].vfcl[228].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[238].vfcl[228].vfal" 1;
	setAttr ".vclr[239].vxal" 1;
	setAttr -s 4 ".vclr[239].vfcl";
	setAttr ".vclr[239].vfcl[216].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[239].vfcl[216].vfal" 1;
	setAttr ".vclr[239].vfcl[217].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[239].vfcl[217].vfal" 1;
	setAttr ".vclr[239].vfcl[255].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[239].vfcl[255].vfal" 1;
	setAttr ".vclr[239].vfcl[256].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[239].vfcl[256].vfal" 1;
	setAttr ".vclr[240].vxal" 1;
	setAttr -s 4 ".vclr[240].vfcl";
	setAttr ".vclr[240].vfcl[217].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[240].vfcl[217].vfal" 1;
	setAttr ".vclr[240].vfcl[218].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[240].vfcl[218].vfal" 1;
	setAttr ".vclr[240].vfcl[228].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[240].vfcl[228].vfal" 1;
	setAttr ".vclr[240].vfcl[229].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[240].vfcl[229].vfal" 1;
	setAttr ".vclr[241].vxal" 1;
	setAttr -s 4 ".vclr[241].vfcl";
	setAttr ".vclr[241].vfcl[217].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[241].vfcl[217].vfal" 1;
	setAttr ".vclr[241].vfcl[218].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[241].vfcl[218].vfal" 1;
	setAttr ".vclr[241].vfcl[256].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[241].vfcl[256].vfal" 1;
	setAttr ".vclr[241].vfcl[258].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[241].vfcl[258].vfal" 1;
	setAttr ".vclr[242].vxal" 1;
	setAttr -s 4 ".vclr[242].vfcl";
	setAttr ".vclr[242].vfcl[218].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[242].vfcl[218].vfal" 1;
	setAttr ".vclr[242].vfcl[219].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[242].vfcl[219].vfal" 1;
	setAttr ".vclr[242].vfcl[258].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[242].vfcl[258].vfal" 1;
	setAttr ".vclr[242].vfcl[259].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[242].vfcl[259].vfal" 1;
	setAttr ".vclr[243].vxal" 1;
	setAttr -s 4 ".vclr[243].vfcl";
	setAttr ".vclr[243].vfcl[218].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[243].vfcl[218].vfal" 1;
	setAttr ".vclr[243].vfcl[219].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[243].vfcl[219].vfal" 1;
	setAttr ".vclr[243].vfcl[229].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[243].vfcl[229].vfal" 1;
	setAttr ".vclr[243].vfcl[230].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[243].vfcl[230].vfal" 1;
	setAttr ".vclr[244].vxal" 1;
	setAttr -s 4 ".vclr[244].vfcl";
	setAttr ".vclr[244].vfcl[219].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[244].vfcl[219].vfal" 1;
	setAttr ".vclr[244].vfcl[220].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[244].vfcl[220].vfal" 1;
	setAttr ".vclr[244].vfcl[259].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[244].vfcl[259].vfal" 1;
	setAttr ".vclr[244].vfcl[260].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[244].vfcl[260].vfal" 1;
	setAttr ".vclr[245].vxal" 1;
	setAttr -s 4 ".vclr[245].vfcl";
	setAttr ".vclr[245].vfcl[219].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[245].vfcl[219].vfal" 1;
	setAttr ".vclr[245].vfcl[220].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[245].vfcl[220].vfal" 1;
	setAttr ".vclr[245].vfcl[230].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[245].vfcl[230].vfal" 1;
	setAttr ".vclr[245].vfcl[231].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[245].vfcl[231].vfal" 1;
	setAttr ".vclr[246].vxal" 1;
	setAttr -s 4 ".vclr[246].vfcl";
	setAttr ".vclr[246].vfcl[220].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[246].vfcl[220].vfal" 1;
	setAttr ".vclr[246].vfcl[221].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[246].vfcl[221].vfal" 1;
	setAttr ".vclr[246].vfcl[260].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[246].vfcl[260].vfal" 1;
	setAttr ".vclr[246].vfcl[262].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[246].vfcl[262].vfal" 1;
	setAttr ".vclr[247].vxal" 1;
	setAttr -s 4 ".vclr[247].vfcl";
	setAttr ".vclr[247].vfcl[220].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[247].vfcl[220].vfal" 1;
	setAttr ".vclr[247].vfcl[221].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[247].vfcl[221].vfal" 1;
	setAttr ".vclr[247].vfcl[231].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[247].vfcl[231].vfal" 1;
	setAttr ".vclr[247].vfcl[232].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[247].vfcl[232].vfal" 1;
	setAttr ".vclr[248].vxal" 1;
	setAttr -s 4 ".vclr[248].vfcl";
	setAttr ".vclr[248].vfcl[221].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[248].vfcl[221].vfal" 1;
	setAttr ".vclr[248].vfcl[222].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[248].vfcl[222].vfal" 1;
	setAttr ".vclr[248].vfcl[223].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[248].vfcl[223].vfal" 1;
	setAttr ".vclr[248].vfcl[262].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[248].vfcl[262].vfal" 1;
	setAttr ".vclr[249].vxal" 1;
	setAttr -s 4 ".vclr[249].vfcl";
	setAttr ".vclr[249].vfcl[221].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[249].vfcl[221].vfal" 1;
	setAttr ".vclr[249].vfcl[222].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[249].vfcl[222].vfal" 1;
	setAttr ".vclr[249].vfcl[232].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[249].vfcl[232].vfal" 1;
	setAttr ".vclr[249].vfcl[233].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[249].vfcl[233].vfal" 1;
	setAttr ".vclr[250].vxal" 1;
	setAttr -s 4 ".vclr[250].vfcl";
	setAttr ".vclr[250].vfcl[222].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[250].vfcl[222].vfal" 1;
	setAttr ".vclr[250].vfcl[223].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[250].vfcl[223].vfal" 1;
	setAttr ".vclr[250].vfcl[224].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[250].vfcl[224].vfal" 1;
	setAttr ".vclr[250].vfcl[263].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[250].vfcl[263].vfal" 1;
	setAttr ".vclr[251].vxal" 1;
	setAttr -s 4 ".vclr[251].vfcl";
	setAttr ".vclr[251].vfcl[222].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[251].vfcl[222].vfal" 1;
	setAttr ".vclr[251].vfcl[224].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[251].vfcl[224].vfal" 1;
	setAttr ".vclr[251].vfcl[233].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[251].vfcl[233].vfal" 1;
	setAttr ".vclr[251].vfcl[234].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[251].vfcl[234].vfal" 1;
	setAttr ".vclr[252].vxal" 1;
	setAttr -s 4 ".vclr[252].vfcl";
	setAttr ".vclr[252].vfcl[224].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[252].vfcl[224].vfal" 1;
	setAttr ".vclr[252].vfcl[225].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[252].vfcl[225].vfal" 1;
	setAttr ".vclr[252].vfcl[234].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[252].vfcl[234].vfal" 1;
	setAttr ".vclr[252].vfcl[235].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[252].vfcl[235].vfal" 1;
	setAttr ".vclr[253].vxal" 1;
	setAttr -s 4 ".vclr[253].vfcl";
	setAttr ".vclr[253].vfcl[224].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[253].vfcl[224].vfal" 1;
	setAttr ".vclr[253].vfcl[225].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[253].vfcl[225].vfal" 1;
	setAttr ".vclr[253].vfcl[263].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[253].vfcl[263].vfal" 1;
	setAttr ".vclr[253].vfcl[264].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[253].vfcl[264].vfal" 1;
	setAttr ".vclr[254].vxal" 1;
	setAttr -s 4 ".vclr[254].vfcl";
	setAttr ".vclr[254].vfcl[226].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[254].vfcl[226].vfal" 1;
	setAttr ".vclr[254].vfcl[227].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[254].vfcl[227].vfal" 1;
	setAttr ".vclr[254].vfcl[236].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[254].vfcl[236].vfal" 1;
	setAttr ".vclr[254].vfcl[237].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[254].vfcl[237].vfal" 1;
	setAttr ".vclr[255].vxal" 1;
	setAttr -s 4 ".vclr[255].vfcl";
	setAttr ".vclr[255].vfcl[226].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[255].vfcl[226].vfal" 1;
	setAttr ".vclr[255].vfcl[235].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[255].vfcl[235].vfal" 1;
	setAttr ".vclr[255].vfcl[236].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[255].vfcl[236].vfal" 1;
	setAttr ".vclr[255].vfcl[245].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[255].vfcl[245].vfal" 1;
	setAttr ".vclr[256].vxal" 1;
	setAttr -s 4 ".vclr[256].vfcl";
	setAttr ".vclr[256].vfcl[227].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[256].vfcl[227].vfal" 1;
	setAttr ".vclr[256].vfcl[228].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[256].vfcl[228].vfal" 1;
	setAttr ".vclr[256].vfcl[237].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[256].vfcl[237].vfal" 1;
	setAttr ".vclr[256].vfcl[238].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[256].vfcl[238].vfal" 1;
	setAttr ".vclr[257].vxal" 1;
	setAttr -s 4 ".vclr[257].vfcl";
	setAttr ".vclr[257].vfcl[228].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[257].vfcl[228].vfal" 1;
	setAttr ".vclr[257].vfcl[229].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[257].vfcl[229].vfal" 1;
	setAttr ".vclr[257].vfcl[238].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[257].vfcl[238].vfal" 1;
	setAttr ".vclr[257].vfcl[239].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[257].vfcl[239].vfal" 1;
	setAttr ".vclr[258].vxal" 1;
	setAttr -s 4 ".vclr[258].vfcl";
	setAttr ".vclr[258].vfcl[229].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[258].vfcl[229].vfal" 1;
	setAttr ".vclr[258].vfcl[230].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[258].vfcl[230].vfal" 1;
	setAttr ".vclr[258].vfcl[239].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[258].vfcl[239].vfal" 1;
	setAttr ".vclr[258].vfcl[240].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[258].vfcl[240].vfal" 1;
	setAttr ".vclr[259].vxal" 1;
	setAttr -s 4 ".vclr[259].vfcl";
	setAttr ".vclr[259].vfcl[230].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[259].vfcl[230].vfal" 1;
	setAttr ".vclr[259].vfcl[231].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[259].vfcl[231].vfal" 1;
	setAttr ".vclr[259].vfcl[240].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[259].vfcl[240].vfal" 1;
	setAttr ".vclr[259].vfcl[241].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[259].vfcl[241].vfal" 1;
	setAttr ".vclr[260].vxal" 1;
	setAttr -s 4 ".vclr[260].vfcl";
	setAttr ".vclr[260].vfcl[231].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[260].vfcl[231].vfal" 1;
	setAttr ".vclr[260].vfcl[232].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[260].vfcl[232].vfal" 1;
	setAttr ".vclr[260].vfcl[241].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[260].vfcl[241].vfal" 1;
	setAttr ".vclr[260].vfcl[242].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[260].vfcl[242].vfal" 1;
	setAttr ".vclr[261].vxal" 1;
	setAttr -s 4 ".vclr[261].vfcl";
	setAttr ".vclr[261].vfcl[232].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[261].vfcl[232].vfal" 1;
	setAttr ".vclr[261].vfcl[233].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[261].vfcl[233].vfal" 1;
	setAttr ".vclr[261].vfcl[242].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[261].vfcl[242].vfal" 1;
	setAttr ".vclr[261].vfcl[243].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[261].vfcl[243].vfal" 1;
	setAttr ".vclr[262].vxal" 1;
	setAttr -s 4 ".vclr[262].vfcl";
	setAttr ".vclr[262].vfcl[233].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[262].vfcl[233].vfal" 1;
	setAttr ".vclr[262].vfcl[234].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[262].vfcl[234].vfal" 1;
	setAttr ".vclr[262].vfcl[243].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[262].vfcl[243].vfal" 1;
	setAttr ".vclr[262].vfcl[244].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[262].vfcl[244].vfal" 1;
	setAttr ".vclr[263].vxal" 1;
	setAttr -s 4 ".vclr[263].vfcl";
	setAttr ".vclr[263].vfcl[234].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[263].vfcl[234].vfal" 1;
	setAttr ".vclr[263].vfcl[235].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[263].vfcl[235].vfal" 1;
	setAttr ".vclr[263].vfcl[244].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[263].vfcl[244].vfal" 1;
	setAttr ".vclr[263].vfcl[245].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[263].vfcl[245].vfal" 1;
	setAttr ".vclr[264].vxal" 1;
	setAttr -s 4 ".vclr[264].vfcl";
	setAttr ".vclr[264].vfcl[246].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[264].vfcl[246].vfal" 1;
	setAttr ".vclr[264].vfcl[247].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[264].vfcl[247].vfal" 1;
	setAttr ".vclr[264].vfcl[254].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[264].vfcl[254].vfal" 1;
	setAttr ".vclr[264].vfcl[255].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[264].vfcl[255].vfal" 1;
	setAttr ".vclr[265].vxal" 1;
	setAttr -s 4 ".vclr[265].vfcl";
	setAttr ".vclr[265].vfcl[246].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[265].vfcl[246].vfal" 1;
	setAttr ".vclr[265].vfcl[253].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[265].vfcl[253].vfal" 1;
	setAttr ".vclr[265].vfcl[254].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[265].vfcl[254].vfal" 1;
	setAttr ".vclr[265].vfcl[264].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[265].vfcl[264].vfal" 1;
	setAttr ".vclr[266].vxal" 1;
	setAttr -s 4 ".vclr[266].vfcl";
	setAttr ".vclr[266].vfcl[247].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[266].vfcl[247].vfal" 1;
	setAttr ".vclr[266].vfcl[255].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[266].vfcl[255].vfal" 1;
	setAttr ".vclr[266].vfcl[256].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[266].vfcl[256].vfal" 1;
	setAttr ".vclr[266].vfcl[257].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[266].vfcl[257].vfal" 1;
	setAttr ".vclr[267].vxal" 1;
	setAttr -s 4 ".vclr[267].vfcl";
	setAttr ".vclr[267].vfcl[248].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[267].vfcl[248].vfal" 1;
	setAttr ".vclr[267].vfcl[256].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[267].vfcl[256].vfal" 1;
	setAttr ".vclr[267].vfcl[257].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[267].vfcl[257].vfal" 1;
	setAttr ".vclr[267].vfcl[258].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[267].vfcl[258].vfal" 1;
	setAttr ".vclr[268].vxal" 1;
	setAttr -s 4 ".vclr[268].vfcl";
	setAttr ".vclr[268].vfcl[248].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[268].vfcl[248].vfal" 1;
	setAttr ".vclr[268].vfcl[249].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[268].vfcl[249].vfal" 1;
	setAttr ".vclr[268].vfcl[258].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[268].vfcl[258].vfal" 1;
	setAttr ".vclr[268].vfcl[259].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[268].vfcl[259].vfal" 1;
	setAttr ".vclr[269].vxal" 1;
	setAttr -s 4 ".vclr[269].vfcl";
	setAttr ".vclr[269].vfcl[249].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[269].vfcl[249].vfal" 1;
	setAttr ".vclr[269].vfcl[259].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[269].vfcl[259].vfal" 1;
	setAttr ".vclr[269].vfcl[260].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[269].vfcl[260].vfal" 1;
	setAttr ".vclr[269].vfcl[261].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[269].vfcl[261].vfal" 1;
	setAttr ".vclr[270].vxal" 1;
	setAttr -s 4 ".vclr[270].vfcl";
	setAttr ".vclr[270].vfcl[250].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[270].vfcl[250].vfal" 1;
	setAttr ".vclr[270].vfcl[260].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[270].vfcl[260].vfal" 1;
	setAttr ".vclr[270].vfcl[261].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[270].vfcl[261].vfal" 1;
	setAttr ".vclr[270].vfcl[262].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[270].vfcl[262].vfal" 1;
	setAttr ".vclr[271].vxal" 1;
	setAttr -s 4 ".vclr[271].vfcl";
	setAttr ".vclr[271].vfcl[223].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[271].vfcl[223].vfal" 1;
	setAttr ".vclr[271].vfcl[250].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[271].vfcl[250].vfal" 1;
	setAttr ".vclr[271].vfcl[251].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[271].vfcl[251].vfal" 1;
	setAttr ".vclr[271].vfcl[262].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[271].vfcl[262].vfal" 1;
	setAttr ".vclr[272].vxal" 1;
	setAttr -s 4 ".vclr[272].vfcl";
	setAttr ".vclr[272].vfcl[223].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[272].vfcl[223].vfal" 1;
	setAttr ".vclr[272].vfcl[251].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[272].vfcl[251].vfal" 1;
	setAttr ".vclr[272].vfcl[252].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[272].vfcl[252].vfal" 1;
	setAttr ".vclr[272].vfcl[263].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[272].vfcl[263].vfal" 1;
	setAttr ".vclr[273].vxal" 1;
	setAttr -s 4 ".vclr[273].vfcl";
	setAttr ".vclr[273].vfcl[252].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[273].vfcl[252].vfal" 1;
	setAttr ".vclr[273].vfcl[253].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[273].vfcl[253].vfal" 1;
	setAttr ".vclr[273].vfcl[263].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[273].vfcl[263].vfal" 1;
	setAttr ".vclr[273].vfcl[264].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[273].vfcl[264].vfal" 1;
	setAttr ".vclr[274].vxal" 1;
	setAttr -s 3 ".vclr[274].vfcl";
	setAttr ".vclr[274].vfcl[265].frgb" -type "float3" 0.51050526 0.10210105 0.10210105 ;
	setAttr ".vclr[274].vfcl[265].vfal" 1;
	setAttr ".vclr[274].vfcl[266].frgb" -type "float3" 0.51050526 0.10210105 0.10210105 ;
	setAttr ".vclr[274].vfcl[266].vfal" 1;
	setAttr ".vclr[274].vfcl[291].frgb" -type "float3" 0.51050526 0.10210105 0.10210105 ;
	setAttr ".vclr[274].vfcl[291].vfal" 1;
	setAttr ".vclr[275].vxal" 1;
	setAttr -s 4 ".vclr[275].vfcl";
	setAttr ".vclr[275].vfcl[266].frgb" -type "float3" 0.51317197 0.10263439 0.10263439 ;
	setAttr ".vclr[275].vfcl[266].vfal" 1;
	setAttr ".vclr[275].vfcl[267].frgb" -type "float3" 0.51317197 0.10263439 0.10263439 ;
	setAttr ".vclr[275].vfcl[267].vfal" 1;
	setAttr ".vclr[275].vfcl[274].frgb" -type "float3" 0.51317197 0.10263439 0.10263439 ;
	setAttr ".vclr[275].vfcl[274].vfal" 1;
	setAttr ".vclr[275].vfcl[291].frgb" -type "float3" 0.51317197 0.10263439 0.10263439 ;
	setAttr ".vclr[275].vfcl[291].vfal" 1;
	setAttr ".vclr[276].vxal" 1;
	setAttr -s 4 ".vclr[276].vfcl";
	setAttr ".vclr[276].vfcl[271].frgb" -type "float3" 0.51104349 0.1022087 0.1022087 ;
	setAttr ".vclr[276].vfcl[271].vfal" 1;
	setAttr ".vclr[276].vfcl[272].frgb" -type "float3" 0.51104349 0.1022087 0.1022087 ;
	setAttr ".vclr[276].vfcl[272].vfal" 1;
	setAttr ".vclr[276].vfcl[292].frgb" -type "float3" 0.51104349 0.1022087 0.1022087 ;
	setAttr ".vclr[276].vfcl[292].vfal" 1;
	setAttr ".vclr[276].vfcl[293].frgb" -type "float3" 0.51104349 0.1022087 0.1022087 ;
	setAttr ".vclr[276].vfcl[293].vfal" 1;
	setAttr ".vclr[277].vxal" 1;
	setAttr -s 3 ".vclr[277].vfcl";
	setAttr ".vclr[277].vfcl[272].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[277].vfcl[272].vfal" 1;
	setAttr ".vclr[277].vfcl[273].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[277].vfcl[273].vfal" 1;
	setAttr ".vclr[277].vfcl[292].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[277].vfcl[292].vfal" 1;
	setAttr ".vclr[278].vxal" 1;
	setAttr -s 2 ".vclr[278].vfcl";
	setAttr ".vclr[278].vfcl[273].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[278].vfcl[273].vfal" 1;
	setAttr ".vclr[278].vfcl[289].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[278].vfcl[289].vfal" 1;
	setAttr ".vclr[279].vxal" 1;
	setAttr -s 4 ".vclr[279].vfcl";
	setAttr ".vclr[279].vfcl[267].frgb" -type "float3" 0.51621884 0.10324376 0.10324376 ;
	setAttr ".vclr[279].vfcl[267].vfal" 1;
	setAttr ".vclr[279].vfcl[268].frgb" -type "float3" 0.51621884 0.10324376 0.10324376 ;
	setAttr ".vclr[279].vfcl[268].vfal" 1;
	setAttr ".vclr[279].vfcl[274].frgb" -type "float3" 0.51621884 0.10324376 0.10324376 ;
	setAttr ".vclr[279].vfcl[274].vfal" 1;
	setAttr ".vclr[279].vfcl[275].frgb" -type "float3" 0.51621884 0.10324376 0.10324376 ;
	setAttr ".vclr[279].vfcl[275].vfal" 1;
	setAttr ".vclr[280].vxal" 1;
	setAttr -s 4 ".vclr[280].vfcl";
	setAttr ".vclr[280].vfcl[268].frgb" -type "float3" 0.51070726 0.10214145 0.10214145 ;
	setAttr ".vclr[280].vfcl[268].vfal" 1;
	setAttr ".vclr[280].vfcl[269].frgb" -type "float3" 0.51070726 0.10214145 0.10214145 ;
	setAttr ".vclr[280].vfcl[269].vfal" 1;
	setAttr ".vclr[280].vfcl[275].frgb" -type "float3" 0.51070726 0.10214145 0.10214145 ;
	setAttr ".vclr[280].vfcl[275].vfal" 1;
	setAttr ".vclr[280].vfcl[276].frgb" -type "float3" 0.51070726 0.10214145 0.10214145 ;
	setAttr ".vclr[280].vfcl[276].vfal" 1;
	setAttr ".vclr[281].vxal" 1;
	setAttr -s 4 ".vclr[281].vfcl";
	setAttr ".vclr[281].vfcl[269].frgb" -type "float3" 0.51145029 0.10229006 0.10229006 ;
	setAttr ".vclr[281].vfcl[269].vfal" 1;
	setAttr ".vclr[281].vfcl[270].frgb" -type "float3" 0.51145029 0.10229006 0.10229006 ;
	setAttr ".vclr[281].vfcl[270].vfal" 1;
	setAttr ".vclr[281].vfcl[276].frgb" -type "float3" 0.51145029 0.10229006 0.10229006 ;
	setAttr ".vclr[281].vfcl[276].vfal" 1;
	setAttr ".vclr[281].vfcl[277].frgb" -type "float3" 0.51145029 0.10229006 0.10229006 ;
	setAttr ".vclr[281].vfcl[277].vfal" 1;
	setAttr ".vclr[282].vxal" 1;
	setAttr -s 4 ".vclr[282].vfcl";
	setAttr ".vclr[282].vfcl[270].frgb" -type "float3" 0.51067579 0.10213515 0.10213515 ;
	setAttr ".vclr[282].vfcl[270].vfal" 1;
	setAttr ".vclr[282].vfcl[271].frgb" -type "float3" 0.51067579 0.10213515 0.10213515 ;
	setAttr ".vclr[282].vfcl[271].vfal" 1;
	setAttr ".vclr[282].vfcl[277].frgb" -type "float3" 0.51067579 0.10213515 0.10213515 ;
	setAttr ".vclr[282].vfcl[277].vfal" 1;
	setAttr ".vclr[282].vfcl[293].frgb" -type "float3" 0.51067579 0.10213515 0.10213515 ;
	setAttr ".vclr[282].vfcl[293].vfal" 1;
	setAttr ".vclr[283].vxal" 1;
	setAttr -s 5 ".vclr[283].vfcl";
	setAttr ".vclr[283].vfcl[274].frgb" -type "float3" 0.68570411 0.13714083 0.13714083 ;
	setAttr ".vclr[283].vfcl[274].vfal" 1;
	setAttr ".vclr[283].vfcl[278].frgb" -type "float3" 0.68570411 0.13714083 0.13714083 ;
	setAttr ".vclr[283].vfcl[278].vfal" 1;
	setAttr ".vclr[283].vfcl[282].frgb" -type "float3" 0.68570411 0.13714083 0.13714083 ;
	setAttr ".vclr[283].vfcl[282].vfal" 1;
	setAttr ".vclr[283].vfcl[283].frgb" -type "float3" 0.68570411 0.13714083 0.13714083 ;
	setAttr ".vclr[283].vfcl[283].vfal" 1;
	setAttr ".vclr[283].vfcl[291].frgb" -type "float3" 0.68570411 0.13714083 0.13714083 ;
	setAttr ".vclr[283].vfcl[291].vfal" 1;
	setAttr ".vclr[284].vxal" 1;
	setAttr -s 4 ".vclr[284].vfcl";
	setAttr ".vclr[284].vfcl[274].frgb" -type "float3" 0.67153955 0.13430791 0.13430791 ;
	setAttr ".vclr[284].vfcl[274].vfal" 1;
	setAttr ".vclr[284].vfcl[275].frgb" -type "float3" 0.67153955 0.13430791 0.13430791 ;
	setAttr ".vclr[284].vfcl[275].vfal" 1;
	setAttr ".vclr[284].vfcl[278].frgb" -type "float3" 0.67153955 0.13430791 0.13430791 ;
	setAttr ".vclr[284].vfcl[278].vfal" 1;
	setAttr ".vclr[284].vfcl[279].frgb" -type "float3" 0.67153955 0.13430791 0.13430791 ;
	setAttr ".vclr[284].vfcl[279].vfal" 1;
	setAttr ".vclr[285].vxal" 1;
	setAttr -s 4 ".vclr[285].vfcl";
	setAttr ".vclr[285].vfcl[275].frgb" -type "float3" 0.63588583 0.12717716 0.12717716 ;
	setAttr ".vclr[285].vfcl[275].vfal" 1;
	setAttr ".vclr[285].vfcl[276].frgb" -type "float3" 0.63588583 0.12717716 0.12717716 ;
	setAttr ".vclr[285].vfcl[276].vfal" 1;
	setAttr ".vclr[285].vfcl[279].frgb" -type "float3" 0.63588583 0.12717716 0.12717716 ;
	setAttr ".vclr[285].vfcl[279].vfal" 1;
	setAttr ".vclr[285].vfcl[280].frgb" -type "float3" 0.63588583 0.12717716 0.12717716 ;
	setAttr ".vclr[285].vfcl[280].vfal" 1;
	setAttr ".vclr[286].vxal" 1;
	setAttr -s 4 ".vclr[286].vfcl";
	setAttr ".vclr[286].vfcl[276].frgb" -type "float3" 0.66185391 0.13237078 0.13237078 ;
	setAttr ".vclr[286].vfcl[276].vfal" 1;
	setAttr ".vclr[286].vfcl[277].frgb" -type "float3" 0.66185391 0.13237078 0.13237078 ;
	setAttr ".vclr[286].vfcl[277].vfal" 1;
	setAttr ".vclr[286].vfcl[280].frgb" -type "float3" 0.66185391 0.13237078 0.13237078 ;
	setAttr ".vclr[286].vfcl[280].vfal" 1;
	setAttr ".vclr[286].vfcl[281].frgb" -type "float3" 0.66185391 0.13237078 0.13237078 ;
	setAttr ".vclr[286].vfcl[281].vfal" 1;
	setAttr ".vclr[287].vxal" 1;
	setAttr -s 3 ".vclr[287].vfcl";
	setAttr ".vclr[287].vfcl[277].frgb" -type "float3" 0.73634624 0.14726925 0.14726925 ;
	setAttr ".vclr[287].vfcl[277].vfal" 1;
	setAttr ".vclr[287].vfcl[281].frgb" -type "float3" 0.73634624 0.14726925 0.14726925 ;
	setAttr ".vclr[287].vfcl[281].vfal" 1;
	setAttr ".vclr[287].vfcl[293].frgb" -type "float3" 0.73634624 0.14726925 0.14726925 ;
	setAttr ".vclr[287].vfcl[293].vfal" 1;
	setAttr ".vclr[288].vxal" 1;
	setAttr -s 2 ".vclr[288].vfcl";
	setAttr ".vclr[288].vfcl[278].frgb" -type "float3" 0.80655056 0.16131011 0.16131011 ;
	setAttr ".vclr[288].vfcl[278].vfal" 1;
	setAttr ".vclr[288].vfcl[282].frgb" -type "float3" 0.80655056 0.16131011 0.16131011 ;
	setAttr ".vclr[288].vfcl[282].vfal" 1;
	setAttr ".vclr[289].vxal" 1;
	setAttr -s 2 ".vclr[289].vfcl";
	setAttr ".vclr[289].vfcl[278].frgb" -type "float3" 0.76136386 0.15227278 0.15227278 ;
	setAttr ".vclr[289].vfcl[278].vfal" 1;
	setAttr ".vclr[289].vfcl[279].frgb" -type "float3" 0.76136386 0.15227278 0.15227278 ;
	setAttr ".vclr[289].vfcl[279].vfal" 1;
	setAttr ".vclr[290].vxal" 1;
	setAttr -s 2 ".vclr[290].vfcl";
	setAttr ".vclr[290].vfcl[279].frgb" -type "float3" 0.73066264 0.14613253 0.14613253 ;
	setAttr ".vclr[290].vfcl[279].vfal" 1;
	setAttr ".vclr[290].vfcl[280].frgb" -type "float3" 0.73066264 0.14613253 0.14613253 ;
	setAttr ".vclr[290].vfcl[280].vfal" 1;
	setAttr ".vclr[291].vxal" 1;
	setAttr -s 2 ".vclr[291].vfcl";
	setAttr ".vclr[291].vfcl[280].frgb" -type "float3" 0.76451725 0.15290345 0.15290345 ;
	setAttr ".vclr[291].vfcl[280].vfal" 1;
	setAttr ".vclr[291].vfcl[281].frgb" -type "float3" 0.76451725 0.15290345 0.15290345 ;
	setAttr ".vclr[291].vfcl[281].vfal" 1;
	setAttr ".vclr[292].vxal" 1;
	setAttr ".vclr[292].vfcl[281].frgb" -type "float3" 0.83158261 0.16631652 0.16631652 ;
	setAttr ".vclr[292].vfcl[281].vfal" 1;
	setAttr ".vclr[293].vxal" 1;
	setAttr -s 2 ".vclr[293].vfcl";
	setAttr ".vclr[293].vfcl[282].frgb" -type "float3" 0.82147062 0.16429412 0.16429412 ;
	setAttr ".vclr[293].vfcl[282].vfal" 1;
	setAttr ".vclr[293].vfcl[283].frgb" -type "float3" 0.82147062 0.16429412 0.16429412 ;
	setAttr ".vclr[293].vfcl[283].vfal" 1;
	setAttr ".vclr[294].vxal" 1;
	setAttr ".vclr[294].vfcl[282].frgb" -type "float3" 0.85637915 0.17127584 0.17127584 ;
	setAttr ".vclr[294].vfcl[282].vfal" 1;
	setAttr ".vclr[295].vxal" 1;
	setAttr -s 2 ".vclr[295].vfcl";
	setAttr ".vclr[295].vfcl[283].frgb" -type "float3" 0.72666734 0.14533347 0.14533347 ;
	setAttr ".vclr[295].vfcl[283].vfal" 1;
	setAttr ".vclr[295].vfcl[284].frgb" -type "float3" 0.72666734 0.14533347 0.14533347 ;
	setAttr ".vclr[295].vfcl[284].vfal" 1;
	setAttr ".vclr[296].vxal" 1;
	setAttr -s 5 ".vclr[296].vfcl";
	setAttr ".vclr[296].vfcl[265].frgb" -type "float3" 0.56629223 0.11325844 0.11325844 ;
	setAttr ".vclr[296].vfcl[265].vfal" 1;
	setAttr ".vclr[296].vfcl[283].frgb" -type "float3" 0.56629223 0.11325844 0.11325844 ;
	setAttr ".vclr[296].vfcl[283].vfal" 1;
	setAttr ".vclr[296].vfcl[284].frgb" -type "float3" 0.56629223 0.11325844 0.11325844 ;
	setAttr ".vclr[296].vfcl[284].vfal" 1;
	setAttr ".vclr[296].vfcl[285].frgb" -type "float3" 0.56629223 0.11325844 0.11325844 ;
	setAttr ".vclr[296].vfcl[285].vfal" 1;
	setAttr ".vclr[296].vfcl[291].frgb" -type "float3" 0.56629223 0.11325844 0.11325844 ;
	setAttr ".vclr[296].vfcl[291].vfal" 1;
	setAttr ".vclr[297].vxal" 1;
	setAttr -s 3 ".vclr[297].vfcl";
	setAttr ".vclr[297].vfcl[265].frgb" -type "float3" 0.50000352 0.1000007 0.1000007 ;
	setAttr ".vclr[297].vfcl[265].vfal" 1;
	setAttr ".vclr[297].vfcl[285].frgb" -type "float3" 0.50000352 0.1000007 0.1000007 ;
	setAttr ".vclr[297].vfcl[285].vfal" 1;
	setAttr ".vclr[297].vfcl[290].frgb" -type "float3" 0.50000352 0.1000007 0.1000007 ;
	setAttr ".vclr[297].vfcl[290].vfal" 1;
	setAttr ".vclr[298].vxal" 1;
	setAttr ".vclr[298].vfcl[284].frgb" -type "float3" 0.64843237 0.12968647 0.12968647 ;
	setAttr ".vclr[298].vfcl[284].vfal" 1;
	setAttr ".vclr[299].vxal" 1;
	setAttr -s 2 ".vclr[299].vfcl";
	setAttr ".vclr[299].vfcl[284].frgb" -type "float3" 0.54302871 0.10860574 0.10860574 ;
	setAttr ".vclr[299].vfcl[284].vfal" 1;
	setAttr ".vclr[299].vfcl[285].frgb" -type "float3" 0.54302871 0.10860574 0.10860574 ;
	setAttr ".vclr[299].vfcl[285].vfal" 1;
	setAttr ".vclr[300].vxal" 1;
	setAttr ".vclr[300].vfcl[285].frgb" -type "float3" 0.5004825 0.1000965 0.1000965 ;
	setAttr ".vclr[300].vfcl[285].vfal" 1;
	setAttr ".vclr[301].vxal" 1;
	setAttr -s 2 ".vclr[301].vfcl";
	setAttr ".vclr[301].vfcl[289].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[301].vfcl[289].vfal" 1;
	setAttr ".vclr[301].vfcl[290].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[301].vfcl[290].vfal" 1;
	setAttr ".vclr[302].vxal" 1;
	setAttr ".vclr[302].vfcl[292].frgb" -type "float3" 0.63689536 0.12737907 0.12737907 ;
	setAttr ".vclr[302].vfcl[292].vfal" 1;
	setAttr ".vclr[303].vxal" 1;
	setAttr -s 2 ".vclr[303].vfcl";
	setAttr ".vclr[303].vfcl[292].frgb" -type "float3" 0.68598557 0.13719712 0.13719712 ;
	setAttr ".vclr[303].vfcl[292].vfal" 1;
	setAttr ".vclr[303].vfcl[293].frgb" -type "float3" 0.68598557 0.13719712 0.13719712 ;
	setAttr ".vclr[303].vfcl[293].vfal" 1;
	setAttr ".cn" -type "string" "colorSet1";
	setAttr ".clam" no;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "D77E997A-4347-FD3D-E9AE-DBA9A34DD240";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -511.90474156349512 -346.42855766273738 ;
	setAttr ".tgi[0].vh" -type "double2" 511.90474156349512 345.23808151956644 ;
	setAttr -s 243 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 188.57142639160156;
	setAttr ".tgi[0].ni[0].y" 6644.28564453125;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -425.71429443359375;
	setAttr ".tgi[0].ni[1].y" 6237.14306640625;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" -2057.142822265625;
	setAttr ".tgi[0].ni[2].y" 8347.142578125;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 3152.857177734375;
	setAttr ".tgi[0].ni[3].y" 9741.4287109375;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 3878.571533203125;
	setAttr ".tgi[0].ni[4].y" 8702.857421875;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 3512.857177734375;
	setAttr ".tgi[0].ni[5].y" 8470;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 3152.857177734375;
	setAttr ".tgi[0].ni[6].y" 9957.142578125;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" -4587.14306640625;
	setAttr ".tgi[0].ni[7].y" 11322.857421875;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 3152.857177734375;
	setAttr ".tgi[0].ni[8].y" -518.5714111328125;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 3152.857177734375;
	setAttr ".tgi[0].ni[9].y" 8204.2861328125;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 3152.857177734375;
	setAttr ".tgi[0].ni[10].y" 1397.142822265625;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 3512.857177734375;
	setAttr ".tgi[0].ni[11].y" -592.85711669921875;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" -828.5714111328125;
	setAttr ".tgi[0].ni[12].y" 5174.28564453125;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 3512.857177734375;
	setAttr ".tgi[0].ni[13].y" -2731.428466796875;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 3152.857177734375;
	setAttr ".tgi[0].ni[14].y" 5204.28564453125;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 3512.857177734375;
	setAttr ".tgi[0].ni[15].y" -808.5714111328125;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 3152.857177734375;
	setAttr ".tgi[0].ni[16].y" 8102.85693359375;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" -3665.71435546875;
	setAttr ".tgi[0].ni[17].y" 10695.7138671875;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 3878.571533203125;
	setAttr ".tgi[0].ni[18].y" 7851.4287109375;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 188.57142639160156;
	setAttr ".tgi[0].ni[19].y" 6847.14306640625;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 3152.857177734375;
	setAttr ".tgi[0].ni[20].y" 6457.14306640625;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 3512.857177734375;
	setAttr ".tgi[0].ni[21].y" 1022.8571166992188;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" -3665.71435546875;
	setAttr ".tgi[0].ni[22].y" 9655.7138671875;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" -118.57142639160156;
	setAttr ".tgi[0].ni[23].y" 4110;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 3878.571533203125;
	setAttr ".tgi[0].ni[24].y" 7460;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 3152.857177734375;
	setAttr ".tgi[0].ni[25].y" 8808.5712890625;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 188.57142639160156;
	setAttr ".tgi[0].ni[26].y" 5467.14306640625;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 3152.857177734375;
	setAttr ".tgi[0].ni[27].y" 7728.5712890625;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 3878.571533203125;
	setAttr ".tgi[0].ni[28].y" 7187.14306640625;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 3878.571533203125;
	setAttr ".tgi[0].ni[29].y" 7085.71435546875;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" -4587.14306640625;
	setAttr ".tgi[0].ni[30].y" 11220;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" -828.5714111328125;
	setAttr ".tgi[0].ni[31].y" 8350;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 3152.857177734375;
	setAttr ".tgi[0].ni[32].y" 6910;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 1048.5714111328125;
	setAttr ".tgi[0].ni[33].y" 6090;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 3512.857177734375;
	setAttr ".tgi[0].ni[34].y" -1182.857177734375;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 3152.857177734375;
	setAttr ".tgi[0].ni[35].y" 7182.85693359375;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 1365.7142333984375;
	setAttr ".tgi[0].ni[36].y" 2971.428466796875;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 3878.571533203125;
	setAttr ".tgi[0].ni[37].y" 6581.4287109375;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" -1442.857177734375;
	setAttr ".tgi[0].ni[38].y" 7704.28564453125;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" -3051.428466796875;
	setAttr ".tgi[0].ni[39].y" 8661.4287109375;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 3512.857177734375;
	setAttr ".tgi[0].ni[40].y" -1970;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 3152.857177734375;
	setAttr ".tgi[0].ni[41].y" 8910;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" 3152.857177734375;
	setAttr ".tgi[0].ni[42].y" 4024.28564453125;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" -118.57142639160156;
	setAttr ".tgi[0].ni[43].y" 6605.71435546875;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 3152.857177734375;
	setAttr ".tgi[0].ni[44].y" 185.71427917480469;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 3152.857177734375;
	setAttr ".tgi[0].ni[45].y" -880;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 3512.857177734375;
	setAttr ".tgi[0].ni[46].y" -2128.571533203125;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 3152.857177734375;
	setAttr ".tgi[0].ni[47].y" 6197.14306640625;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 3152.857177734375;
	setAttr ".tgi[0].ni[48].y" 9125.7138671875;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 2231.428466796875;
	setAttr ".tgi[0].ni[49].y" 4361.4287109375;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 3878.571533203125;
	setAttr ".tgi[0].ni[50].y" -8217.142578125;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 3878.571533203125;
	setAttr ".tgi[0].ni[51].y" -8014.28564453125;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" 3878.571533203125;
	setAttr ".tgi[0].ni[52].y" -8318.5712890625;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" -828.5714111328125;
	setAttr ".tgi[0].ni[53].y" 9771.4287109375;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 3878.571533203125;
	setAttr ".tgi[0].ni[54].y" -8420;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" -3051.428466796875;
	setAttr ".tgi[0].ni[55].y" 10037.142578125;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" 3878.571533203125;
	setAttr ".tgi[0].ni[56].y" -8927.142578125;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 3878.571533203125;
	setAttr ".tgi[0].ni[57].y" -8115.71435546875;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" 3878.571533203125;
	setAttr ".tgi[0].ni[58].y" -9028.5712890625;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" 188.57142639160156;
	setAttr ".tgi[0].ni[59].y" 9151.4287109375;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" 1365.7142333984375;
	setAttr ".tgi[0].ni[60].y" 2584.28564453125;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" -4587.14306640625;
	setAttr ".tgi[0].ni[61].y" 11118.5712890625;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" 1365.7142333984375;
	setAttr ".tgi[0].ni[62].y" 3244.28564453125;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" 3152.857177734375;
	setAttr ".tgi[0].ni[63].y" 6298.5712890625;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" 3152.857177734375;
	setAttr ".tgi[0].ni[64].y" 6095.71435546875;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" 3152.857177734375;
	setAttr ".tgi[0].ni[65].y" 5937.14306640625;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" 3152.857177734375;
	setAttr ".tgi[0].ni[66].y" -302.85714721679688;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" 3152.857177734375;
	setAttr ".tgi[0].ni[67].y" 8535.7138671875;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" 3152.857177734375;
	setAttr ".tgi[0].ni[68].y" 5464.28564453125;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" 3512.857177734375;
	setAttr ".tgi[0].ni[69].y" 8742.857421875;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" 1864.2857666015625;
	setAttr ".tgi[0].ni[70].y" 1682.857177734375;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" 3512.857177734375;
	setAttr ".tgi[0].ni[71].y" -1081.4285888671875;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" 3152.857177734375;
	setAttr ".tgi[0].ni[72].y" 5362.85693359375;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" -425.71429443359375;
	setAttr ".tgi[0].ni[73].y" 9174.2861328125;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" 1048.5714111328125;
	setAttr ".tgi[0].ni[74].y" 2567.142822265625;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" 3878.571533203125;
	setAttr ".tgi[0].ni[75].y" 5047.14306640625;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" 3512.857177734375;
	setAttr ".tgi[0].ni[76].y" 2654.28564453125;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" 3152.857177734375;
	setAttr ".tgi[0].ni[77].y" -1760;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" 638.5714111328125;
	setAttr ".tgi[0].ni[78].y" 4525.71435546875;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" 3152.857177734375;
	setAttr ".tgi[0].ni[79].y" 5102.85693359375;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" 1365.7142333984375;
	setAttr ".tgi[0].ni[80].y" 2311.428466796875;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" 3878.571533203125;
	setAttr ".tgi[0].ni[81].y" 4658.5712890625;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" 1365.7142333984375;
	setAttr ".tgi[0].ni[82].y" 3574.28564453125;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" 3152.857177734375;
	setAttr ".tgi[0].ni[83].y" 4887.14306640625;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" 3512.857177734375;
	setAttr ".tgi[0].ni[84].y" -9618.5712890625;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" 3878.571533203125;
	setAttr ".tgi[0].ni[85].y" -9130;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" 3878.571533203125;
	setAttr ".tgi[0].ni[86].y" -9231.4287109375;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" 3878.571533203125;
	setAttr ".tgi[0].ni[87].y" -9332.857421875;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" 3878.571533203125;
	setAttr ".tgi[0].ni[88].y" -9434.2861328125;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" 3878.571533203125;
	setAttr ".tgi[0].ni[89].y" -9535.7138671875;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" 3878.571533203125;
	setAttr ".tgi[0].ni[90].y" -9637.142578125;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" 3878.571533203125;
	setAttr ".tgi[0].ni[91].y" -8622.857421875;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" 3878.571533203125;
	setAttr ".tgi[0].ni[92].y" -8724.2861328125;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" 3878.571533203125;
	setAttr ".tgi[0].ni[93].y" -8825.7138671875;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" 3878.571533203125;
	setAttr ".tgi[0].ni[94].y" -6695.71435546875;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" 3878.571533203125;
	setAttr ".tgi[0].ni[95].y" -9738.5712890625;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" 3878.571533203125;
	setAttr ".tgi[0].ni[96].y" -9840;
	setAttr ".tgi[0].ni[96].nvs" 18304;
	setAttr ".tgi[0].ni[97].x" 3878.571533203125;
	setAttr ".tgi[0].ni[97].y" -9941.4287109375;
	setAttr ".tgi[0].ni[97].nvs" 18304;
	setAttr ".tgi[0].ni[98].x" 1365.7142333984375;
	setAttr ".tgi[0].ni[98].y" 7085.71435546875;
	setAttr ".tgi[0].ni[98].nvs" 18304;
	setAttr ".tgi[0].ni[99].x" 3878.571533203125;
	setAttr ".tgi[0].ni[99].y" -6188.5712890625;
	setAttr ".tgi[0].ni[99].nvs" 18304;
	setAttr ".tgi[0].ni[100].x" 3878.571533203125;
	setAttr ".tgi[0].ni[100].y" -10042.857421875;
	setAttr ".tgi[0].ni[100].nvs" 18304;
	setAttr ".tgi[0].ni[101].x" 3878.571533203125;
	setAttr ".tgi[0].ni[101].y" -6391.4287109375;
	setAttr ".tgi[0].ni[101].nvs" 18304;
	setAttr ".tgi[0].ni[102].x" 3878.571533203125;
	setAttr ".tgi[0].ni[102].y" -10144.2861328125;
	setAttr ".tgi[0].ni[102].nvs" 18304;
	setAttr ".tgi[0].ni[103].x" 3152.857177734375;
	setAttr ".tgi[0].ni[103].y" -6950;
	setAttr ".tgi[0].ni[103].nvs" 18304;
	setAttr ".tgi[0].ni[104].x" 3878.571533203125;
	setAttr ".tgi[0].ni[104].y" -6492.85693359375;
	setAttr ".tgi[0].ni[104].nvs" 18304;
	setAttr ".tgi[0].ni[105].x" 3878.571533203125;
	setAttr ".tgi[0].ni[105].y" -6594.28564453125;
	setAttr ".tgi[0].ni[105].nvs" 18304;
	setAttr ".tgi[0].ni[106].x" 3878.571533203125;
	setAttr ".tgi[0].ni[106].y" -6290;
	setAttr ".tgi[0].ni[106].nvs" 18304;
	setAttr ".tgi[0].ni[107].x" 3878.571533203125;
	setAttr ".tgi[0].ni[107].y" -10245.7138671875;
	setAttr ".tgi[0].ni[107].nvs" 18304;
	setAttr ".tgi[0].ni[108].x" 638.5714111328125;
	setAttr ".tgi[0].ni[108].y" 7274.28564453125;
	setAttr ".tgi[0].ni[108].nvs" 18304;
	setAttr ".tgi[0].ni[109].x" 3152.857177734375;
	setAttr ".tgi[0].ni[109].y" 1137.142822265625;
	setAttr ".tgi[0].ni[109].nvs" 18304;
	setAttr ".tgi[0].ni[110].x" -3358.571533203125;
	setAttr ".tgi[0].ni[110].y" 9432.857421875;
	setAttr ".tgi[0].ni[110].nvs" 18304;
	setAttr ".tgi[0].ni[111].x" 188.57142639160156;
	setAttr ".tgi[0].ni[111].y" 8211.4287109375;
	setAttr ".tgi[0].ni[111].nvs" 18304;
	setAttr ".tgi[0].ni[112].x" 3512.857177734375;
	setAttr ".tgi[0].ni[112].y" 3957.142822265625;
	setAttr ".tgi[0].ni[112].nvs" 18304;
	setAttr ".tgi[0].ni[113].x" 1864.2857666015625;
	setAttr ".tgi[0].ni[113].y" 2628.571533203125;
	setAttr ".tgi[0].ni[113].nvs" 18304;
	setAttr ".tgi[0].ni[114].x" 3512.857177734375;
	setAttr ".tgi[0].ni[114].y" -5365.71435546875;
	setAttr ".tgi[0].ni[114].nvs" 18304;
	setAttr ".tgi[0].ni[115].x" 3152.857177734375;
	setAttr ".tgi[0].ni[115].y" 7455.71435546875;
	setAttr ".tgi[0].ni[115].nvs" 18304;
	setAttr ".tgi[0].ni[116].x" -118.57142639160156;
	setAttr ".tgi[0].ni[116].y" 5867.14306640625;
	setAttr ".tgi[0].ni[116].nvs" 18304;
	setAttr ".tgi[0].ni[117].x" 3512.857177734375;
	setAttr ".tgi[0].ni[117].y" -3872.857177734375;
	setAttr ".tgi[0].ni[117].nvs" 18304;
	setAttr ".tgi[0].ni[118].x" 1864.2857666015625;
	setAttr ".tgi[0].ni[118].y" 5732.85693359375;
	setAttr ".tgi[0].ni[118].nvs" 18304;
	setAttr ".tgi[0].ni[119].x" 3878.571533203125;
	setAttr ".tgi[0].ni[119].y" 3870;
	setAttr ".tgi[0].ni[119].nvs" 18304;
	setAttr ".tgi[0].ni[120].x" 3152.857177734375;
	setAttr ".tgi[0].ni[120].y" 4671.4287109375;
	setAttr ".tgi[0].ni[120].nvs" 18304;
	setAttr ".tgi[0].ni[121].x" 3152.857177734375;
	setAttr ".tgi[0].ni[121].y" 1035.7142333984375;
	setAttr ".tgi[0].ni[121].nvs" 18304;
	setAttr ".tgi[0].ni[122].x" 3512.857177734375;
	setAttr ".tgi[0].ni[122].y" -2890;
	setAttr ".tgi[0].ni[122].nvs" 18304;
	setAttr ".tgi[0].ni[123].x" 3512.857177734375;
	setAttr ".tgi[0].ni[123].y" -5150;
	setAttr ".tgi[0].ni[123].nvs" 18304;
	setAttr ".tgi[0].ni[124].x" -425.71429443359375;
	setAttr ".tgi[0].ni[124].y" 7661.4287109375;
	setAttr ".tgi[0].ni[124].nvs" 18304;
	setAttr ".tgi[0].ni[125].x" 1864.2857666015625;
	setAttr ".tgi[0].ni[125].y" 978.5714111328125;
	setAttr ".tgi[0].ni[125].nvs" 18304;
	setAttr ".tgi[0].ni[126].x" 3152.857177734375;
	setAttr ".tgi[0].ni[126].y" 4398.5712890625;
	setAttr ".tgi[0].ni[126].nvs" 18304;
	setAttr ".tgi[0].ni[127].x" -2671.428466796875;
	setAttr ".tgi[0].ni[127].y" 8730;
	setAttr ".tgi[0].ni[127].nvs" 18304;
	setAttr ".tgi[0].ni[128].x" -1135.7142333984375;
	setAttr ".tgi[0].ni[128].y" 4714.28564453125;
	setAttr ".tgi[0].ni[128].nvs" 18304;
	setAttr ".tgi[0].ni[129].x" 3152.857177734375;
	setAttr ".tgi[0].ni[129].y" 7944.28564453125;
	setAttr ".tgi[0].ni[129].nvs" 18304;
	setAttr ".tgi[0].ni[130].x" -2671.428466796875;
	setAttr ".tgi[0].ni[130].y" 9174.2861328125;
	setAttr ".tgi[0].ni[130].nvs" 18304;
	setAttr ".tgi[0].ni[131].x" 3512.857177734375;
	setAttr ".tgi[0].ni[131].y" -2572.857177734375;
	setAttr ".tgi[0].ni[131].nvs" 18304;
	setAttr ".tgi[0].ni[132].x" 3878.571533203125;
	setAttr ".tgi[0].ni[132].y" 2991.428466796875;
	setAttr ".tgi[0].ni[132].nvs" 18304;
	setAttr ".tgi[0].ni[133].x" -3972.857177734375;
	setAttr ".tgi[0].ni[133].y" 10898.5712890625;
	setAttr ".tgi[0].ni[133].nvs" 18304;
	setAttr ".tgi[0].ni[134].x" 3878.571533203125;
	setAttr ".tgi[0].ni[134].y" 2832.857177734375;
	setAttr ".tgi[0].ni[134].nvs" 18304;
	setAttr ".tgi[0].ni[135].x" 3878.571533203125;
	setAttr ".tgi[0].ni[135].y" 2731.428466796875;
	setAttr ".tgi[0].ni[135].nvs" 18304;
	setAttr ".tgi[0].ni[136].x" 3512.857177734375;
	setAttr ".tgi[0].ni[136].y" 2324.28564453125;
	setAttr ".tgi[0].ni[136].nvs" 18304;
	setAttr ".tgi[0].ni[137].x" 3152.857177734375;
	setAttr ".tgi[0].ni[137].y" 515.71429443359375;
	setAttr ".tgi[0].ni[137].nvs" 18304;
	setAttr ".tgi[0].ni[138].x" 3878.571533203125;
	setAttr ".tgi[0].ni[138].y" 2515.71435546875;
	setAttr ".tgi[0].ni[138].nvs" 18304;
	setAttr ".tgi[0].ni[139].x" 3152.857177734375;
	setAttr ".tgi[0].ni[139].y" 4125.71435546875;
	setAttr ".tgi[0].ni[139].nvs" 18304;
	setAttr ".tgi[0].ni[140].x" -4280;
	setAttr ".tgi[0].ni[140].y" 10964.2861328125;
	setAttr ".tgi[0].ni[140].nvs" 18304;
	setAttr ".tgi[0].ni[141].x" -4587.14306640625;
	setAttr ".tgi[0].ni[141].y" 11018.5712890625;
	setAttr ".tgi[0].ni[141].nvs" 18304;
	setAttr ".tgi[0].ni[142].x" 3878.571533203125;
	setAttr ".tgi[0].ni[142].y" 2242.857177734375;
	setAttr ".tgi[0].ni[142].nvs" 18304;
	setAttr ".tgi[0].ni[143].x" 3878.571533203125;
	setAttr ".tgi[0].ni[143].y" 2141.428466796875;
	setAttr ".tgi[0].ni[143].nvs" 18304;
	setAttr ".tgi[0].ni[144].x" 1864.2857666015625;
	setAttr ".tgi[0].ni[144].y" 6291.4287109375;
	setAttr ".tgi[0].ni[144].nvs" 18304;
	setAttr ".tgi[0].ni[145].x" 3152.857177734375;
	setAttr ".tgi[0].ni[145].y" 3000;
	setAttr ".tgi[0].ni[145].nvs" 18304;
	setAttr ".tgi[0].ni[146].x" 3152.857177734375;
	setAttr ".tgi[0].ni[146].y" 2898.571533203125;
	setAttr ".tgi[0].ni[146].nvs" 18304;
	setAttr ".tgi[0].ni[147].x" 3152.857177734375;
	setAttr ".tgi[0].ni[147].y" 2348.571533203125;
	setAttr ".tgi[0].ni[147].nvs" 18304;
	setAttr ".tgi[0].ni[148].x" 3152.857177734375;
	setAttr ".tgi[0].ni[148].y" 2247.142822265625;
	setAttr ".tgi[0].ni[148].nvs" 18304;
	setAttr ".tgi[0].ni[149].x" 3512.857177734375;
	setAttr ".tgi[0].ni[149].y" 5344.28564453125;
	setAttr ".tgi[0].ni[149].nvs" 18304;
	setAttr ".tgi[0].ni[150].x" 1048.5714111328125;
	setAttr ".tgi[0].ni[150].y" 4788.5712890625;
	setAttr ".tgi[0].ni[150].nvs" 18304;
	setAttr ".tgi[0].ni[151].x" 3152.857177734375;
	setAttr ".tgi[0].ni[151].y" 27.142856597900391;
	setAttr ".tgi[0].ni[151].nvs" 18304;
	setAttr ".tgi[0].ni[152].x" 3152.857177734375;
	setAttr ".tgi[0].ni[152].y" 2044.2857666015625;
	setAttr ".tgi[0].ni[152].nvs" 18304;
	setAttr ".tgi[0].ni[153].x" 3878.571533203125;
	setAttr ".tgi[0].ni[153].y" 1525.7142333984375;
	setAttr ".tgi[0].ni[153].nvs" 18304;
	setAttr ".tgi[0].ni[154].x" 3152.857177734375;
	setAttr ".tgi[0].ni[154].y" 2145.71435546875;
	setAttr ".tgi[0].ni[154].nvs" 18304;
	setAttr ".tgi[0].ni[155].x" 3152.857177734375;
	setAttr ".tgi[0].ni[155].y" 1942.857177734375;
	setAttr ".tgi[0].ni[155].nvs" 18304;
	setAttr ".tgi[0].ni[156].x" 1365.7142333984375;
	setAttr ".tgi[0].ni[156].y" 1708.5714111328125;
	setAttr ".tgi[0].ni[156].nvs" 18304;
	setAttr ".tgi[0].ni[157].x" 3878.571533203125;
	setAttr ".tgi[0].ni[157].y" 1252.857177734375;
	setAttr ".tgi[0].ni[157].nvs" 18304;
	setAttr ".tgi[0].ni[158].x" 638.5714111328125;
	setAttr ".tgi[0].ni[158].y" 2950;
	setAttr ".tgi[0].ni[158].nvs" 18304;
	setAttr ".tgi[0].ni[159].x" 3878.571533203125;
	setAttr ".tgi[0].ni[159].y" 1094.2857666015625;
	setAttr ".tgi[0].ni[159].nvs" 18304;
	setAttr ".tgi[0].ni[160].x" 3878.571533203125;
	setAttr ".tgi[0].ni[160].y" 992.85711669921875;
	setAttr ".tgi[0].ni[160].nvs" 18304;
	setAttr ".tgi[0].ni[161].x" 2538.571533203125;
	setAttr ".tgi[0].ni[161].y" -1750;
	setAttr ".tgi[0].ni[161].nvs" 18304;
	setAttr ".tgi[0].ni[162].x" 3878.571533203125;
	setAttr ".tgi[0].ni[162].y" -8521.4287109375;
	setAttr ".tgi[0].ni[162].nvs" 18304;
	setAttr ".tgi[0].ni[163].x" 3878.571533203125;
	setAttr ".tgi[0].ni[163].y" 834.28570556640625;
	setAttr ".tgi[0].ni[163].nvs" 18304;
	setAttr ".tgi[0].ni[164].x" 3152.857177734375;
	setAttr ".tgi[0].ni[164].y" -2921.428466796875;
	setAttr ".tgi[0].ni[164].nvs" 18304;
	setAttr ".tgi[0].ni[165].x" 3512.857177734375;
	setAttr ".tgi[0].ni[165].y" -7657.14306640625;
	setAttr ".tgi[0].ni[165].nvs" 18304;
	setAttr ".tgi[0].ni[166].x" 1048.5714111328125;
	setAttr ".tgi[0].ni[166].y" 4515.71435546875;
	setAttr ".tgi[0].ni[166].nvs" 18304;
	setAttr ".tgi[0].ni[167].x" 638.5714111328125;
	setAttr ".tgi[0].ni[167].y" 8195.7138671875;
	setAttr ".tgi[0].ni[167].nvs" 18304;
	setAttr ".tgi[0].ni[168].x" 3152.857177734375;
	setAttr ".tgi[0].ni[168].y" 1555.7142333984375;
	setAttr ".tgi[0].ni[168].nvs" 18304;
	setAttr ".tgi[0].ni[169].x" 3512.857177734375;
	setAttr ".tgi[0].ni[169].y" -7225.71435546875;
	setAttr ".tgi[0].ni[169].nvs" 18304;
	setAttr ".tgi[0].ni[170].x" 1864.2857666015625;
	setAttr ".tgi[0].ni[170].y" 2958.571533203125;
	setAttr ".tgi[0].ni[170].nvs" 18304;
	setAttr ".tgi[0].ni[171].x" 1048.5714111328125;
	setAttr ".tgi[0].ni[171].y" 2884.28564453125;
	setAttr ".tgi[0].ni[171].nvs" 18304;
	setAttr ".tgi[0].ni[172].x" 3152.857177734375;
	setAttr ".tgi[0].ni[172].y" -1658.5714111328125;
	setAttr ".tgi[0].ni[172].nvs" 18304;
	setAttr ".tgi[0].ni[173].x" 3878.571533203125;
	setAttr ".tgi[0].ni[173].y" -367.14285278320313;
	setAttr ".tgi[0].ni[173].nvs" 18304;
	setAttr ".tgi[0].ni[174].x" 3878.571533203125;
	setAttr ".tgi[0].ni[174].y" 134.28572082519531;
	setAttr ".tgi[0].ni[174].nvs" 18304;
	setAttr ".tgi[0].ni[175].x" 1048.5714111328125;
	setAttr ".tgi[0].ni[175].y" 3654.28564453125;
	setAttr ".tgi[0].ni[175].nvs" 18304;
	setAttr ".tgi[0].ni[176].x" 2231.428466796875;
	setAttr ".tgi[0].ni[176].y" 3802.857177734375;
	setAttr ".tgi[0].ni[176].nvs" 18304;
	setAttr ".tgi[0].ni[177].x" 3512.857177734375;
	setAttr ".tgi[0].ni[177].y" -7758.5712890625;
	setAttr ".tgi[0].ni[177].nvs" 18304;
	setAttr ".tgi[0].ni[178].x" 2845.71435546875;
	setAttr ".tgi[0].ni[178].y" -914.28570556640625;
	setAttr ".tgi[0].ni[178].nvs" 18304;
	setAttr ".tgi[0].ni[179].x" 2475.71435546875;
	setAttr ".tgi[0].ni[179].y" -6548.5712890625;
	setAttr ".tgi[0].ni[179].nvs" 18304;
	setAttr ".tgi[0].ni[180].x" 3878.571533203125;
	setAttr ".tgi[0].ni[180].y" -7912.85693359375;
	setAttr ".tgi[0].ni[180].nvs" 18304;
	setAttr ".tgi[0].ni[181].x" 2538.571533203125;
	setAttr ".tgi[0].ni[181].y" 3475.71435546875;
	setAttr ".tgi[0].ni[181].nvs" 18304;
	setAttr ".tgi[0].ni[182].x" 638.5714111328125;
	setAttr ".tgi[0].ni[182].y" 4367.14306640625;
	setAttr ".tgi[0].ni[182].nvs" 18304;
	setAttr ".tgi[0].ni[183].x" 638.5714111328125;
	setAttr ".tgi[0].ni[183].y" 6944.28564453125;
	setAttr ".tgi[0].ni[183].nvs" 18304;
	setAttr ".tgi[0].ni[184].x" 3512.857177734375;
	setAttr ".tgi[0].ni[184].y" -6952.85693359375;
	setAttr ".tgi[0].ni[184].nvs" 18304;
	setAttr ".tgi[0].ni[185].x" 1864.2857666015625;
	setAttr ".tgi[0].ni[185].y" 2241.428466796875;
	setAttr ".tgi[0].ni[185].nvs" 18304;
	setAttr ".tgi[0].ni[186].x" 3152.857177734375;
	setAttr ".tgi[0].ni[186].y" -3238.571533203125;
	setAttr ".tgi[0].ni[186].nvs" 18304;
	setAttr ".tgi[0].ni[187].x" 3878.571533203125;
	setAttr ".tgi[0].ni[187].y" -1040;
	setAttr ".tgi[0].ni[187].nvs" 18304;
	setAttr ".tgi[0].ni[188].x" 2231.428466796875;
	setAttr ".tgi[0].ni[188].y" 787.14288330078125;
	setAttr ".tgi[0].ni[188].nvs" 18304;
	setAttr ".tgi[0].ni[189].x" 1365.7142333984375;
	setAttr ".tgi[0].ni[189].y" 2095.71435546875;
	setAttr ".tgi[0].ni[189].nvs" 18304;
	setAttr ".tgi[0].ni[190].x" 3152.857177734375;
	setAttr ".tgi[0].ni[190].y" -3137.142822265625;
	setAttr ".tgi[0].ni[190].nvs" 18304;
	setAttr ".tgi[0].ni[191].x" 1048.5714111328125;
	setAttr ".tgi[0].ni[191].y" 2782.857177734375;
	setAttr ".tgi[0].ni[191].nvs" 18304;
	setAttr ".tgi[0].ni[192].x" 3152.857177734375;
	setAttr ".tgi[0].ni[192].y" 934.28570556640625;
	setAttr ".tgi[0].ni[192].nvs" 18304;
	setAttr ".tgi[0].ni[193].x" 1864.2857666015625;
	setAttr ".tgi[0].ni[193].y" 191.42857360839844;
	setAttr ".tgi[0].ni[193].nvs" 18304;
	setAttr ".tgi[0].ni[194].x" 3152.857177734375;
	setAttr ".tgi[0].ni[194].y" 617.14288330078125;
	setAttr ".tgi[0].ni[194].nvs" 18304;
	setAttr ".tgi[0].ni[195].x" 3512.857177734375;
	setAttr ".tgi[0].ni[195].y" -7384.28564453125;
	setAttr ".tgi[0].ni[195].nvs" 18304;
	setAttr ".tgi[0].ni[196].x" 638.5714111328125;
	setAttr ".tgi[0].ni[196].y" 2677.142822265625;
	setAttr ".tgi[0].ni[196].nvs" 18304;
	setAttr ".tgi[0].ni[197].x" 3152.857177734375;
	setAttr ".tgi[0].ni[197].y" 718.5714111328125;
	setAttr ".tgi[0].ni[197].nvs" 18304;
	setAttr ".tgi[0].ni[198].x" 3152.857177734375;
	setAttr ".tgi[0].ni[198].y" 1295.7142333984375;
	setAttr ".tgi[0].ni[198].nvs" 18304;
	setAttr ".tgi[0].ni[199].x" 1864.2857666015625;
	setAttr ".tgi[0].ni[199].y" 90;
	setAttr ".tgi[0].ni[199].nvs" 18304;
	setAttr ".tgi[0].ni[200].x" 1048.5714111328125;
	setAttr ".tgi[0].ni[200].y" 2122.857177734375;
	setAttr ".tgi[0].ni[200].nvs" 18304;
	setAttr ".tgi[0].ni[201].x" 3152.857177734375;
	setAttr ".tgi[0].ni[201].y" -6347.14306640625;
	setAttr ".tgi[0].ni[201].nvs" 18304;
	setAttr ".tgi[0].ni[202].x" 1864.2857666015625;
	setAttr ".tgi[0].ni[202].y" 1581.4285888671875;
	setAttr ".tgi[0].ni[202].nvs" 18304;
	setAttr ".tgi[0].ni[203].x" 638.5714111328125;
	setAttr ".tgi[0].ni[203].y" 5442.85693359375;
	setAttr ".tgi[0].ni[203].nvs" 18304;
	setAttr ".tgi[0].ni[204].x" 3878.571533203125;
	setAttr ".tgi[0].ni[204].y" -1312.857177734375;
	setAttr ".tgi[0].ni[204].nvs" 18304;
	setAttr ".tgi[0].ni[205].x" 3152.857177734375;
	setAttr ".tgi[0].ni[205].y" -6620;
	setAttr ".tgi[0].ni[205].nvs" 18304;
	setAttr ".tgi[0].ni[206].x" 3152.857177734375;
	setAttr ".tgi[0].ni[206].y" -1210;
	setAttr ".tgi[0].ni[206].nvs" 18304;
	setAttr ".tgi[0].ni[207].x" 3512.857177734375;
	setAttr ".tgi[0].ni[207].y" 3398.571533203125;
	setAttr ".tgi[0].ni[207].nvs" 18304;
	setAttr ".tgi[0].ni[208].x" 1864.2857666015625;
	setAttr ".tgi[0].ni[208].y" 1194.2857666015625;
	setAttr ".tgi[0].ni[208].nvs" 18304;
	setAttr ".tgi[0].ni[209].x" 188.57142639160156;
	setAttr ".tgi[0].ni[209].y" 2592.857177734375;
	setAttr ".tgi[0].ni[209].nvs" 18304;
	setAttr ".tgi[0].ni[210].x" 638.5714111328125;
	setAttr ".tgi[0].ni[210].y" 4208.5712890625;
	setAttr ".tgi[0].ni[210].nvs" 18304;
	setAttr ".tgi[0].ni[211].x" -4587.14306640625;
	setAttr ".tgi[0].ni[211].y" 10500;
	setAttr ".tgi[0].ni[211].nvs" 18304;
	setAttr ".tgi[0].ni[212].x" 3512.857177734375;
	setAttr ".tgi[0].ni[212].y" -8660;
	setAttr ".tgi[0].ni[212].nvs" 18304;
	setAttr ".tgi[0].ni[213].x" -2364.28564453125;
	setAttr ".tgi[0].ni[213].y" 7210;
	setAttr ".tgi[0].ni[213].nvs" 18304;
	setAttr ".tgi[0].ni[214].x" 3878.571533203125;
	setAttr ".tgi[0].ni[214].y" -1928.5714111328125;
	setAttr ".tgi[0].ni[214].nvs" 18304;
	setAttr ".tgi[0].ni[215].x" 3152.857177734375;
	setAttr ".tgi[0].ni[215].y" -620;
	setAttr ".tgi[0].ni[215].nvs" 18304;
	setAttr ".tgi[0].ni[216].x" 3152.857177734375;
	setAttr ".tgi[0].ni[216].y" -721.4285888671875;
	setAttr ".tgi[0].ni[216].nvs" 18304;
	setAttr ".tgi[0].ni[217].x" -1750;
	setAttr ".tgi[0].ni[217].y" 6858.5712890625;
	setAttr ".tgi[0].ni[217].nvs" 18304;
	setAttr ".tgi[0].ni[218].x" 3878.571533203125;
	setAttr ".tgi[0].ni[218].y" -10347.142578125;
	setAttr ".tgi[0].ni[218].nvs" 18304;
	setAttr ".tgi[0].ni[219].x" 2845.71435546875;
	setAttr ".tgi[0].ni[219].y" -3384.28564453125;
	setAttr ".tgi[0].ni[219].nvs" 18304;
	setAttr ".tgi[0].ni[220].x" 3878.571533203125;
	setAttr ".tgi[0].ni[220].y" -10448.5712890625;
	setAttr ".tgi[0].ni[220].nvs" 18304;
	setAttr ".tgi[0].ni[221].x" 3878.571533203125;
	setAttr ".tgi[0].ni[221].y" -10550;
	setAttr ".tgi[0].ni[221].nvs" 18304;
	setAttr ".tgi[0].ni[222].x" 3878.571533203125;
	setAttr ".tgi[0].ni[222].y" -10651.4287109375;
	setAttr ".tgi[0].ni[222].nvs" 18304;
	setAttr ".tgi[0].ni[223].x" 3878.571533203125;
	setAttr ".tgi[0].ni[223].y" -6797.14306640625;
	setAttr ".tgi[0].ni[223].nvs" 18304;
	setAttr ".tgi[0].ni[224].x" 3878.571533203125;
	setAttr ".tgi[0].ni[224].y" -6898.5712890625;
	setAttr ".tgi[0].ni[224].nvs" 18304;
	setAttr ".tgi[0].ni[225].x" 3878.571533203125;
	setAttr ".tgi[0].ni[225].y" -7710;
	setAttr ".tgi[0].ni[225].nvs" 18304;
	setAttr ".tgi[0].ni[226].x" 3878.571533203125;
	setAttr ".tgi[0].ni[226].y" -7405.71435546875;
	setAttr ".tgi[0].ni[226].nvs" 18304;
	setAttr ".tgi[0].ni[227].x" 3878.571533203125;
	setAttr ".tgi[0].ni[227].y" -7101.4287109375;
	setAttr ".tgi[0].ni[227].nvs" 18304;
	setAttr ".tgi[0].ni[228].x" 3878.571533203125;
	setAttr ".tgi[0].ni[228].y" -7000;
	setAttr ".tgi[0].ni[228].nvs" 18304;
	setAttr ".tgi[0].ni[229].x" 188.57142639160156;
	setAttr ".tgi[0].ni[229].y" 7538.5712890625;
	setAttr ".tgi[0].ni[229].nvs" 18304;
	setAttr ".tgi[0].ni[230].x" 3878.571533203125;
	setAttr ".tgi[0].ni[230].y" -10752.857421875;
	setAttr ".tgi[0].ni[230].nvs" 18304;
	setAttr ".tgi[0].ni[231].x" 2845.71435546875;
	setAttr ".tgi[0].ni[231].y" 2024.2857666015625;
	setAttr ".tgi[0].ni[231].nvs" 18304;
	setAttr ".tgi[0].ni[232].x" 3878.571533203125;
	setAttr ".tgi[0].ni[232].y" -10854.2861328125;
	setAttr ".tgi[0].ni[232].nvs" 18304;
	setAttr ".tgi[0].ni[233].x" 3878.571533203125;
	setAttr ".tgi[0].ni[233].y" -7608.5712890625;
	setAttr ".tgi[0].ni[233].nvs" 18304;
	setAttr ".tgi[0].ni[234].x" 3878.571533203125;
	setAttr ".tgi[0].ni[234].y" -10955.7138671875;
	setAttr ".tgi[0].ni[234].nvs" 18304;
	setAttr ".tgi[0].ni[235].x" 3878.571533203125;
	setAttr ".tgi[0].ni[235].y" -11057.142578125;
	setAttr ".tgi[0].ni[235].nvs" 18304;
	setAttr ".tgi[0].ni[236].x" 3878.571533203125;
	setAttr ".tgi[0].ni[236].y" -11158.5712890625;
	setAttr ".tgi[0].ni[236].nvs" 18304;
	setAttr ".tgi[0].ni[237].x" 3878.571533203125;
	setAttr ".tgi[0].ni[237].y" -7811.4287109375;
	setAttr ".tgi[0].ni[237].nvs" 18304;
	setAttr ".tgi[0].ni[238].x" 3878.571533203125;
	setAttr ".tgi[0].ni[238].y" -7202.85693359375;
	setAttr ".tgi[0].ni[238].nvs" 18304;
	setAttr ".tgi[0].ni[239].x" 3878.571533203125;
	setAttr ".tgi[0].ni[239].y" -7507.14306640625;
	setAttr ".tgi[0].ni[239].nvs" 18304;
	setAttr ".tgi[0].ni[240].x" 188.57142639160156;
	setAttr ".tgi[0].ni[240].y" 6745.71435546875;
	setAttr ".tgi[0].ni[240].nvs" 18304;
	setAttr ".tgi[0].ni[241].x" 3878.571533203125;
	setAttr ".tgi[0].ni[241].y" -7304.28564453125;
	setAttr ".tgi[0].ni[241].nvs" 18304;
	setAttr ".tgi[0].ni[242].x" 3878.571533203125;
	setAttr ".tgi[0].ni[242].y" -11260;
	setAttr ".tgi[0].ni[242].nvs" 18304;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 9 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 11 ".s";
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
connectAttr "Control_Disp.di" "Ring1_Joint_M_CTR0.do";
connectAttr "Ring1_Joint_M_GRP0.control" "Ring1_Joint_M_CTR0.group";
connectAttr "Ring_Ring2_M_JNT.group" "Ring2_Joint_M_GRP1.joint";
connectAttr "Ring_Limb_M_NODE.jointGroups" "Ring2_Joint_M_GRP1.limb";
connectAttr "Ring_Limb_M_NODE.usedGroups" "Ring2_Joint_M_GRP1.used";
connectAttr "Control_Disp.di" "Ring2_Joint_M_CTR1.do";
connectAttr "Ring2_Joint_M_GRP1.control" "Ring2_Joint_M_CTR1.group";
connectAttr "Ring_Ring3_M_JNT.group" "Ring3_Joint_M_GRP2.joint";
connectAttr "Ring_Limb_M_NODE.jointGroups" "Ring3_Joint_M_GRP2.limb";
connectAttr "Ring_Limb_M_NODE.usedGroups" "Ring3_Joint_M_GRP2.used";
connectAttr "Control_Disp.di" "Ring3_Joint_M_CTR2.do";
connectAttr "Ring3_Joint_M_GRP2.control" "Ring3_Joint_M_CTR2.group";
connectAttr "Ring_Ring4_M_JNT.group" "Ring4_Joint_M_GRP3.joint";
connectAttr "Ring_Limb_M_NODE.jointGroups" "Ring4_Joint_M_GRP3.limb";
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
connectAttr "Control_Disp.di" "Pinkey1_Joint_M_CTR0.do";
connectAttr "Pinkey1_Joint_M_GRP0.control" "Pinkey1_Joint_M_CTR0.group";
connectAttr "Pinkie_Pinkey2_M_JNT.group" "Pinkey2_Joint_M_GRP1.joint";
connectAttr "Pinkie_Limb_M_NODE.jointGroups" "Pinkey2_Joint_M_GRP1.limb";
connectAttr "Pinkie_Limb_M_NODE.usedGroups" "Pinkey2_Joint_M_GRP1.used";
connectAttr "Control_Disp.di" "Pinkey2_Joint_M_CTR1.do";
connectAttr "Pinkey2_Joint_M_GRP1.control" "Pinkey2_Joint_M_CTR1.group";
connectAttr "Pinkie_Pinkey3_M_JNT.group" "Pinkey3_Joint_M_GRP2.joint";
connectAttr "Pinkie_Limb_M_NODE.jointGroups" "Pinkey3_Joint_M_GRP2.limb";
connectAttr "Pinkie_Limb_M_NODE.usedGroups" "Pinkey3_Joint_M_GRP2.used";
connectAttr "Control_Disp.di" "Pinkey3_Joint_M_CTR2.do";
connectAttr "Pinkey3_Joint_M_GRP2.control" "Pinkey3_Joint_M_CTR2.group";
connectAttr "Pinkie_Pinkey4_M_JNT.group" "Pinkey4_Joint_M_GRP3.joint";
connectAttr "Pinkie_Limb_M_NODE.jointGroups" "Pinkey4_Joint_M_GRP3.limb";
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
connectAttr "Control_Disp.di" "Middle1_Joint_M_CTR0.do";
connectAttr "Middle1_Joint_M_GRP0.control" "Middle1_Joint_M_CTR0.group";
connectAttr "Middle_Middle2_M_JNT.group" "Middle2_Joint_M_GRP1.joint";
connectAttr "Middle_Limb_M_NODE.jointGroups" "Middle2_Joint_M_GRP1.limb";
connectAttr "Middle_Limb_M_NODE.usedGroups" "Middle2_Joint_M_GRP1.used";
connectAttr "Control_Disp.di" "Middle2_Joint_M_CTR1.do";
connectAttr "Middle2_Joint_M_GRP1.control" "Middle2_Joint_M_CTR1.group";
connectAttr "Middle_Middle3_M_JNT.group" "Middle3_Joint_M_GRP2.joint";
connectAttr "Middle_Limb_M_NODE.jointGroups" "Middle3_Joint_M_GRP2.limb";
connectAttr "Middle_Limb_M_NODE.usedGroups" "Middle3_Joint_M_GRP2.used";
connectAttr "Control_Disp.di" "Middle3_Joint_M_CTR2.do";
connectAttr "Middle3_Joint_M_GRP2.control" "Middle3_Joint_M_CTR2.group";
connectAttr "Middle_Middle4_M_JNT.group" "Middle4_Joint_M_GRP3.joint";
connectAttr "Middle_Limb_M_NODE.jointGroups" "Middle4_Joint_M_GRP3.limb";
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
connectAttr "Control_Disp.di" "Index1_Joint_M_CTR0.do";
connectAttr "Index1_Joint_M_GRP0.control" "Index1_Joint_M_CTR0.group";
connectAttr "Index_Index2_M_JNT.group" "Index2_Joint_M_GRP1.joint";
connectAttr "Index_Limb_M_NODE.jointGroups" "Index2_Joint_M_GRP1.limb";
connectAttr "Index_Limb_M_NODE.usedGroups" "Index2_Joint_M_GRP1.used";
connectAttr "Control_Disp.di" "Index2_Joint_M_CTR1.do";
connectAttr "Index2_Joint_M_GRP1.control" "Index2_Joint_M_CTR1.group";
connectAttr "Index_Index3_M_JNT.group" "Index3_Joint_M_GRP2.joint";
connectAttr "Index_Limb_M_NODE.jointGroups" "Index3_Joint_M_GRP2.limb";
connectAttr "Index_Limb_M_NODE.usedGroups" "Index3_Joint_M_GRP2.used";
connectAttr "Control_Disp.di" "Index3_Joint_M_CTR2.do";
connectAttr "Index3_Joint_M_GRP2.control" "Index3_Joint_M_CTR2.group";
connectAttr "Index_Index4_M_JNT.group" "Index4_Joint_M_GRP3.joint";
connectAttr "Index_Limb_M_NODE.jointGroups" "Index4_Joint_M_GRP3.limb";
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
connectAttr "Control_Disp.di" "Thumb1_Joint_M_CTR0.do";
connectAttr "Thumb1_Joint_M_GRP0.control" "Thumb1_Joint_M_CTR0.group";
connectAttr "Thumb_Thumb2_M_JNT.group" "Thumb2_Joint_M_GRP1.joint";
connectAttr "Thumb_Limb_M_NODE.jointGroups" "Thumb2_Joint_M_GRP1.limb";
connectAttr "Thumb_Limb_M_NODE.usedGroups" "Thumb2_Joint_M_GRP1.used";
connectAttr "Control_Disp.di" "Thumb2_Joint_M_CTR1.do";
connectAttr "Thumb2_Joint_M_GRP1.control" "Thumb2_Joint_M_CTR1.group";
connectAttr "Thumb_Thumb3_M_JNT.group" "Thumb3_Joint_M_GRP2.joint";
connectAttr "Thumb_Limb_M_NODE.jointGroups" "Thumb3_Joint_M_GRP2.limb";
connectAttr "Thumb_Limb_M_NODE.usedGroups" "Thumb3_Joint_M_GRP2.used";
connectAttr "Control_Disp.di" "Thumb3_Joint_M_CTR2.do";
connectAttr "Thumb3_Joint_M_GRP2.control" "Thumb3_Joint_M_CTR2.group";
connectAttr "Thumb_Thumb4_M_JNT.group" "Thumb4_Joint_M_GRP3.joint";
connectAttr "Thumb_Limb_M_NODE.jointGroups" "Thumb4_Joint_M_GRP3.limb";
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
connectAttr "polyColorPerVertex1.out" "Arm_MeshShape.i";
connectAttr "tweak1.vl[0].vt[0]" "Arm_MeshShape.twl";
connectAttr "skinCluster1.pfrsMeshes" "Arm_MeshShape.pfrsSkinCluster";
connectAttr "groupId2.id" "Arm_Mesh1Shape.iog.og[0].gid";
connectAttr "Mesh_Human_Biped_01_lambert2SG.mwc" "Arm_Mesh1Shape.iog.og[0].gco";
connectAttr "Meshes_Disp.di" "Arm_Mesh1Shape.do";
connectAttr "Arm_MeshShape.backupMesh" "Arm_Mesh1Shape.backupMesh";
connectAttr "TEMP_RigRoot.controlTemplates" "CONTROL_SHAPE_TEMPLATES.rigRoot";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Control_Shapes_lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "MControlsMaterialSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "LControlsMaterialSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "MControlsMaterialSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "RControlsMaterialSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Mesh_Human_Biped_01_lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Control_Shapes_lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "MControlsMaterialSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "LControlsMaterialSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "MControlsMaterialSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "RControlsMaterialSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Mesh_Human_Biped_01_lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[2]" "Joint_Disp.id";
connectAttr "Control_Shapes_lambert2SG.msg" "materialInfo1.sg";
connectAttr "TempMaterial.msg" "materialInfo1.m";
connectAttr "TempMaterial.oc" "Control_Shapes_lambert2SG.ss";
connectAttr "layerManager.dli[1]" "Control_Disp.id";
connectAttr "MControlsMaterialSG.msg" "materialInfo5.sg";
connectAttr "MControlsMaterial.msg" "materialInfo5.m";
connectAttr "MControlsMaterial.msg" "materialInfo5.t" -na;
connectAttr "MControlsMaterial.oc" "MControlsMaterialSG.ss";
connectAttr "layerManager.dli[3]" "Control_Disp1.id";
connectAttr "layerManager.dli[4]" "Joint_Disp1.id";
connectAttr "layerManager.dli[5]" "Meshes_Disp.id";
connectAttr "lambert2SG.msg" "Control_Shapes_materialInfo1.sg";
connectAttr "Control_Shapes_TempMaterial.msg" "Control_Shapes_materialInfo1.m";
connectAttr "Control_Shapes_TempMaterial.oc" "lambert2SG.ss";
connectAttr "Cylinder_PolyShape.iog" "lambert2SG.dsm" -na;
connectAttr "Cube_PolyShape.iog" "lambert2SG.dsm" -na;
connectAttr "Sphere_PolyShape.iog" "lambert2SG.dsm" -na;
connectAttr "LControlsMaterial.oc" "LControlsMaterialSG.ss";
connectAttr "TEMP_RigRoot.controlMtrL" "LControlsMaterialSG.rigRoot";
connectAttr "LControlsMaterialSG.msg" "materialInfo6.sg";
connectAttr "LControlsMaterial.msg" "materialInfo6.m";
connectAttr "LControlsMaterial.msg" "materialInfo6.t" -na;
connectAttr "MControlsMaterial1.oc" "MControlsMaterialSG1.ss";
connectAttr "TEMP_RigRoot.controlMtrM" "MControlsMaterialSG1.rigRoot";
connectAttr "BicepTwist_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "ForearmTwist1_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm" -na
		;
connectAttr "ForearmTwist2_Joint_M_CTR1Shape.iog" "MControlsMaterialSG1.dsm" -na
		;
connectAttr "Ring2_Joint_M_CTR1Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "Ring1_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "Ring3_Joint_M_CTR2Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "Ring4_Joint_M_CTR3Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "Pinkey2_Joint_M_CTR1Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "Pinkey1_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "Pinkey3_Joint_M_CTR2Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "Pinkey4_Joint_M_CTR3Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "Elbow_Joint_M_CTR1Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "Shoulder_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "Wrist_Joint_M_CTR2Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "Clav01_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "Middle2_Joint_M_CTR1Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "Middle1_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "Middle3_Joint_M_CTR2Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "Middle4_Joint_M_CTR3Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "Index2_Joint_M_CTR1Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "Index1_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "Index3_Joint_M_CTR2Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "Index4_Joint_M_CTR3Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "Thumb2_Joint_M_CTR1Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "Thumb1_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "Thumb3_Joint_M_CTR2Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "Thumb4_Joint_M_CTR3Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "MControlsMaterialSG1.msg" "materialInfo7.sg";
connectAttr "MControlsMaterial1.msg" "materialInfo7.m";
connectAttr "MControlsMaterial1.msg" "materialInfo7.t" -na;
connectAttr "RControlsMaterial.oc" "RControlsMaterialSG.ss";
connectAttr "TEMP_RigRoot.controlMtrR" "RControlsMaterialSG.rigRoot";
connectAttr "RControlsMaterialSG.msg" "materialInfo8.sg";
connectAttr "RControlsMaterial.msg" "materialInfo8.m";
connectAttr "RControlsMaterial.msg" "materialInfo8.t" -na;
connectAttr "lambert2.oc" "Mesh_Human_Biped_01_lambert2SG.ss";
connectAttr "Arm_Mesh1Shape.iog.og[0]" "Mesh_Human_Biped_01_lambert2SG.dsm" -na;
connectAttr "Arm_MeshShape.iog.og[0]" "Mesh_Human_Biped_01_lambert2SG.dsm" -na;
connectAttr "groupId2.msg" "Mesh_Human_Biped_01_lambert2SG.gn" -na;
connectAttr "groupId3.msg" "Mesh_Human_Biped_01_lambert2SG.gn" -na;
connectAttr "Mesh_Human_Biped_01_lambert2SG.msg" "materialInfo3.sg";
connectAttr "lambert2.msg" "materialInfo3.m";
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
connectAttr "Index2_Joint_M_CTR1_tag.pare" "Elbow_Joint_M_CTR1_tag.child[4]";
connectAttr "Index1_Joint_M_CTR0_tag.pare" "Elbow_Joint_M_CTR1_tag.child[5]";
connectAttr "Middle3_Joint_M_CTR2_tag.pare" "Elbow_Joint_M_CTR1_tag.child[6]";
connectAttr "Middle2_Joint_M_CTR1_tag.pare" "Elbow_Joint_M_CTR1_tag.child[7]";
connectAttr "Middle1_Joint_M_CTR0_tag.pare" "Elbow_Joint_M_CTR1_tag.child[8]";
connectAttr "Pinkey3_Joint_M_CTR2_tag.pare" "Elbow_Joint_M_CTR1_tag.child[9]";
connectAttr "Pinkey2_Joint_M_CTR1_tag.pare" "Elbow_Joint_M_CTR1_tag.child[10]";
connectAttr "Pinkey1_Joint_M_CTR0_tag.pare" "Elbow_Joint_M_CTR1_tag.child[11]";
connectAttr "Ring3_Joint_M_CTR2_tag.pare" "Elbow_Joint_M_CTR1_tag.child[12]";
connectAttr "Ring2_Joint_M_CTR1_tag.pare" "Elbow_Joint_M_CTR1_tag.child[13]";
connectAttr "Ring1_Joint_M_CTR0_tag.pare" "Elbow_Joint_M_CTR1_tag.child[14]";
connectAttr "Thumb3_Joint_M_CTR2_tag.pare" "Elbow_Joint_M_CTR1_tag.child[15]";
connectAttr "Thumb2_Joint_M_CTR1_tag.pare" "Elbow_Joint_M_CTR1_tag.child[16]";
connectAttr "Thumb1_Joint_M_CTR0_tag.pare" "Elbow_Joint_M_CTR1_tag.child[17]";
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
connectAttr "Index2_Joint_M_CTR1.msg" "Index2_Joint_M_CTR1_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Index2_Joint_M_CTR1_tag.prep";
connectAttr "Index1_Joint_M_CTR0.msg" "Index1_Joint_M_CTR0_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Index1_Joint_M_CTR0_tag.prep";
connectAttr "Middle3_Joint_M_CTR2.msg" "Middle3_Joint_M_CTR2_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Middle3_Joint_M_CTR2_tag.prep";
connectAttr "Middle2_Joint_M_CTR1.msg" "Middle2_Joint_M_CTR1_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Middle2_Joint_M_CTR1_tag.prep";
connectAttr "Middle1_Joint_M_CTR0.msg" "Middle1_Joint_M_CTR0_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Middle1_Joint_M_CTR0_tag.prep";
connectAttr "Pinkey3_Joint_M_CTR2.msg" "Pinkey3_Joint_M_CTR2_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Pinkey3_Joint_M_CTR2_tag.prep";
connectAttr "Pinkey2_Joint_M_CTR1.msg" "Pinkey2_Joint_M_CTR1_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Pinkey2_Joint_M_CTR1_tag.prep";
connectAttr "Pinkey1_Joint_M_CTR0.msg" "Pinkey1_Joint_M_CTR0_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Pinkey1_Joint_M_CTR0_tag.prep";
connectAttr "Ring3_Joint_M_CTR2.msg" "Ring3_Joint_M_CTR2_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Ring3_Joint_M_CTR2_tag.prep";
connectAttr "Ring2_Joint_M_CTR1.msg" "Ring2_Joint_M_CTR1_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Ring2_Joint_M_CTR1_tag.prep";
connectAttr "Ring1_Joint_M_CTR0.msg" "Ring1_Joint_M_CTR0_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Ring1_Joint_M_CTR0_tag.prep";
connectAttr "Thumb3_Joint_M_CTR2.msg" "Thumb3_Joint_M_CTR2_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Thumb3_Joint_M_CTR2_tag.prep";
connectAttr "Thumb2_Joint_M_CTR1.msg" "Thumb2_Joint_M_CTR1_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Thumb2_Joint_M_CTR1_tag.prep";
connectAttr "Thumb1_Joint_M_CTR0.msg" "Thumb1_Joint_M_CTR0_tag.act";
connectAttr "Elbow_Joint_M_CTR1_tag.prep" "Thumb1_Joint_M_CTR0_tag.prep";
connectAttr "skinCluster1.og[0]" "polyColorPerVertex1.ip";
connectAttr "Middle2_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "Ring1_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "Arm_Elbow_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "Sphere_PolyShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "Control_Shapes_materialInfo1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "Control_Shapes_lambert2SG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "Control_Shapes_TempMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "Sphere_Poly.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "Middle1_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "Pinkey2_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "ForearmTwist2_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "ForearmTwist2_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "Ring_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "Shoulder_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "Pinkey4_Joint_M_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "Index1_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "ForearmTwist1_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "Clav01_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "Circle_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "Index_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "Index3_Joint_M_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "Index4_Joint_M_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "Control_Disp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn";
connectAttr "Elbow_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "materialInfo3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn";
connectAttr "MControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "Thumb_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "Ring1_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "materialInfo6.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn";
connectAttr "Pin_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn";
connectAttr "Square_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn";
connectAttr "Pinkie_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "Index4_Joint_M_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "ForearmTwist1_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "Index3_Joint_M_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "ForearmTwist2_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "BicepTwist_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "materialInfo5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn";
connectAttr "Wrist_Joint_M_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "Joint_Disp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn";
connectAttr "Thumb2_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "LControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "Pinkey2_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "Pinkey1_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "Arm_MeshShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn";
connectAttr "Shoulder_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "Thumb3_Joint_M_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "RControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "Cube_PolyShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn";
connectAttr "bindPose1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn";
connectAttr "Shoulder_Joint_M_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "ForearmTwist2_Joint_M_GRP1_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "Index1_Joint_M_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "Pinkey1_Joint_M_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "Thumb1_Joint_M_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "Clav_Clav01_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "BicepTwist_Joint_M_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "Middle1_Joint_M_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "Ring1_Joint_M_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "ForearmTwist1_Joint_M_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "groupParts3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn";
connectAttr "Cylinder_Poly.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn";
connectAttr "Thumb_Thumb3_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "Index3_Joint_M_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "Index4_Joint_M_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "Middle3_Joint_M_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "Index1_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "TempMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn";
connectAttr "Thumb2_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "lambert2SG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn";
connectAttr "Thumb_Thumb4_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "Thumb4_Joint_M_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "Index1_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "Pinkey1_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "Ring_Ring2_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn"
		;
connectAttr "materialInfo1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn";
connectAttr "Mesh_Human_Biped_01_lambert2SG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn"
		;
connectAttr "Thumb1_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "Middle_Middle1_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn"
		;
connectAttr "Pinkey1_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "Middle_Middle3_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn"
		;
connectAttr "Cube_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn";
connectAttr "Index_Index3_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn"
		;
connectAttr "Shoulder_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "Clav01_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "Middle_Middle1_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "Index_Index1_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "ForearmTwist_ForearmTwist2_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "Arm_Elbow_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "Index_Index4_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn"
		;
connectAttr "Arm_Wrist_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "controller1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn";
connectAttr "Wrist_Joint_M_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn"
		;
connectAttr "Shoulder_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn"
		;
connectAttr "Index1_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn"
		;
connectAttr "Index_Index3_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn"
		;
connectAttr "Middle_Middle3_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn"
		;
connectAttr "Index_Index2_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn"
		;
connectAttr "ForearmTwist_ForearmTwist1_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn"
		;
connectAttr "BicepTwist_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn"
		;
connectAttr "BicepTwist_BicepTwist_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn"
		;
connectAttr "ForearmTwist1_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn"
		;
connectAttr "Arm_Shoulder_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn"
		;
connectAttr "Elbow_Joint_M_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn"
		;
connectAttr "Index3_Joint_M_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn"
		;
connectAttr "Index2_Joint_M_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn"
		;
connectAttr "ForearmTwist2_Joint_M_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn"
		;
connectAttr "Middle_Middle4_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn"
		;
connectAttr "Middle_Middle2_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn"
		;
connectAttr "Pinkey3_Joint_M_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn"
		;
connectAttr "Clav01_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn"
		;
connectAttr "ForearmTwist_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn"
		;
connectAttr "RControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn"
		;
connectAttr "ForearmTwist_ForearmTwist2_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn"
		;
connectAttr "Thumb1_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn"
		;
connectAttr "lambert2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn";
connectAttr "Ring1_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn"
		;
connectAttr "Pinkey2_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn"
		;
connectAttr "ForearmTwist_ForearmTwist1_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[118].dn"
		;
connectAttr "Joint_Disp1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn";
connectAttr "Index2_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[120].dn"
		;
connectAttr "Index2_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn"
		;
connectAttr "Index2_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn"
		;
connectAttr "Pinkey3_Joint_M_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[123].dn"
		;
connectAttr "Elbow_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[124].dn"
		;
connectAttr "BicepTwist_BicepTwist_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[125].dn"
		;
connectAttr "Elbow_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[126].dn"
		;
connectAttr "Arm_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[127].dn"
		;
connectAttr "Wrist_Joint_M_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[128].dn"
		;
connectAttr "Cylinder_PolyShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[129].dn"
		;
connectAttr "Clav_Clav01_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[130].dn"
		;
connectAttr "Pinkey4_Joint_M_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[131].dn"
		;
connectAttr "LIMBS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[132].dn";
connectAttr "Clav_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[133].dn"
		;
connectAttr "sceneConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[134].dn"
		;
connectAttr "CONTROL_SHAPE_TEMPLATES.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[135].dn"
		;
connectAttr "MControlsMaterialSG1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[136].dn"
		;
connectAttr "Thumb3_Joint_M_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[137].dn"
		;
connectAttr "materialInfo8.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[138].dn";
connectAttr "Clav01_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[139].dn"
		;
connectAttr "TEMP_RigRoot.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[140].dn";
connectAttr "Circle_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[141].dn";
connectAttr "materialInfo7.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[142].dn";
connectAttr "Control_Disp1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[143].dn";
connectAttr "JOINTS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[144].dn";
connectAttr "BicepTwist_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[145].dn"
		;
connectAttr "Thumb3_Joint_M_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[146].dn"
		;
connectAttr "Middle1_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[147].dn"
		;
connectAttr "Ring4_Joint_M_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[148].dn"
		;
connectAttr "LControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[149].dn"
		;
connectAttr "Middle_Middle2_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[150].dn"
		;
connectAttr "Thumb2_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[151].dn"
		;
connectAttr "Pinkey4_Joint_M_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[152].dn"
		;
connectAttr "uiConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[153].dn"
		;
connectAttr "Ring2_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[154].dn"
		;
connectAttr "Pinkey3_Joint_M_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[155].dn"
		;
connectAttr "Ring_Ring3_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[156].dn"
		;
connectAttr "Diamond_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[157].dn";
connectAttr "Thumb_Thumb1_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[158].dn"
		;
connectAttr "Pin_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[159].dn";
connectAttr "Diamond_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[160].dn"
		;
connectAttr "Middle3_Joint_M_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[161].dn"
		;
connectAttr "Middle2_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[162].dn"
		;
connectAttr "MESHES.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[163].dn";
connectAttr "Ring3_Joint_M_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[164].dn"
		;
connectAttr "Ring2_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[165].dn"
		;
connectAttr "Pinkie_Pinkey2_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[166].dn"
		;
connectAttr "ForearmTwist1_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[167].dn"
		;
connectAttr "Wrist_Joint_M_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[168].dn"
		;
connectAttr "Ring4_Joint_M_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[169].dn"
		;
connectAttr "skinCluster1GroupId.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[170].dn"
		;
connectAttr "groupId5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[171].dn";
connectAttr "groupId2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[172].dn";
connectAttr "skinCluster1Set.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[173].dn"
		;
connectAttr "Arm_Mesh.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[174].dn";
connectAttr "groupParts1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[175].dn";
connectAttr "skinCluster1GroupParts.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[176].dn"
		;
connectAttr "Ring3_Joint_M_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[177].dn"
		;
connectAttr "Meshes_Disp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[178].dn";
connectAttr "Arm_Mesh1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[179].dn";
connectAttr "Arm_Mesh1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[180].dn"
		;
connectAttr "skinCluster1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[181].dn";
connectAttr "Arm_MeshShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[182].dn"
		;
connectAttr "groupId3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[183].dn";
connectAttr "BicepTwist_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[184].dn"
		;
connectAttr "tweak1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[185].dn";
connectAttr "Ring2_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[186].dn"
		;
connectAttr "tweakSet1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[187].dn";
connectAttr "Middle3_Joint_M_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[188].dn"
		;
connectAttr "Pinkie_Pinkey3_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[189].dn"
		;
connectAttr "Ring4_Joint_M_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[190].dn"
		;
connectAttr "Index_Index2_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[191].dn"
		;
connectAttr "Middle4_Joint_M_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[192].dn"
		;
connectAttr "Middle_Middle4_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[193].dn"
		;
connectAttr "Thumb4_Joint_M_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[194].dn"
		;
connectAttr "Middle1_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[195].dn"
		;
connectAttr "Index_Index1_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[196].dn"
		;
connectAttr "Ring3_Joint_M_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[197].dn"
		;
connectAttr "MControlsMaterial1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[198].dn"
		;
connectAttr "Ring_Ring4_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[199].dn"
		;
connectAttr "Thumb_Thumb2_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[200].dn"
		;
connectAttr "Middle4_Joint_M_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[201].dn"
		;
connectAttr "Index_Index4_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[202].dn"
		;
connectAttr "Pinkie_Pinkey1_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[203].dn"
		;
connectAttr "Cube_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[204].dn";
connectAttr "BicepTwist_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[205].dn"
		;
connectAttr "Thumb4_Joint_M_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[206].dn"
		;
connectAttr "MControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[207].dn"
		;
connectAttr "Pinkie_Pinkey4_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[208].dn"
		;
connectAttr "Middle_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[209].dn"
		;
connectAttr "Ring_Ring1_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[210].dn"
		;
connectAttr "Cube_Poly.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[211].dn";
connectAttr "Middle4_Joint_M_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[212].dn"
		;
connectAttr "Arm_Shoulder_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[213].dn"
		;
connectAttr "Square_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[214].dn"
		;
connectAttr "Middle2_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[215].dn"
		;
connectAttr "Thumb1_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[216].dn"
		;
connectAttr "Arm_Wrist_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[217].dn"
		;
connectAttr "Pinkie_Pinkey2_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[218].dn"
		;
connectAttr "Middle3_Joint_M_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[219].dn"
		;
connectAttr "Pinkie_Pinkey4_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[220].dn"
		;
connectAttr "Ring_Ring3_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[221].dn"
		;
connectAttr "Ring_Ring4_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[222].dn"
		;
connectAttr "Middle2_Joint_M_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[223].dn"
		;
connectAttr "Middle1_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[224].dn"
		;
connectAttr "Thumb2_Joint_M_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[225].dn"
		;
connectAttr "Ring2_Joint_M_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[226].dn"
		;
connectAttr "Pinkey2_Joint_M_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[227].dn"
		;
connectAttr "Pinkey3_Joint_M_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[228].dn"
		;
connectAttr "Pinkie_Pinkey1_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[229].dn"
		;
connectAttr "Thumb_Thumb4_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[230].dn"
		;
connectAttr "polyColorPerVertex1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[231].dn"
		;
connectAttr "Thumb_Thumb3_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[232].dn"
		;
connectAttr "Thumb3_Joint_M_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[233].dn"
		;
connectAttr "Pinkie_Pinkey3_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[234].dn"
		;
connectAttr "Ring_Ring2_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[235].dn"
		;
connectAttr "Thumb_Thumb2_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[236].dn"
		;
connectAttr "Thumb1_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[237].dn"
		;
connectAttr "Pinkey1_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[238].dn"
		;
connectAttr "Ring1_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[239].dn"
		;
connectAttr "Ring_Ring1_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[240].dn"
		;
connectAttr "Ring3_Joint_M_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[241].dn"
		;
connectAttr "Thumb_Thumb1_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[242].dn"
		;
connectAttr "Control_Shapes_lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "MControlsMaterialSG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "LControlsMaterialSG.pa" ":renderPartition.st" -na;
connectAttr "MControlsMaterialSG1.pa" ":renderPartition.st" -na;
connectAttr "RControlsMaterialSG.pa" ":renderPartition.st" -na;
connectAttr "Mesh_Human_Biped_01_lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "TempMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "MControlsMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "Control_Shapes_TempMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "LControlsMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "MControlsMaterial1.msg" ":defaultShaderList1.s" -na;
connectAttr "RControlsMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Arm_BUILT.ma
