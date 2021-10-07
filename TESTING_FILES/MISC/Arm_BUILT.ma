//Maya ASCII 2019 scene
//Name: Arm_BUILT.ma
//Last modified: Wed, Oct 06, 2021 09:25:15 PM
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
	setAttr ".t" -type "double3" 121.61592201572206 228.46224601637073 79.381642254421152 ;
	setAttr ".r" -type "double3" -38.138352729607185 29.000000000002434 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "E77BA93B-47C6-9477-E3E8-4A89AC42A323";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 178.79593776059949;
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
	rename -uid "7DB58CD5-46DC-39D2-CDBE-59AA7C9F15FC";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -dv 1 -at "long";
	addAttr -ci true -sn "rigMode" -ln "rigMode" -min 0 -max 8 -en "Setup Rig:Animate Rig:Template:Baked Animations:Ghost:Exported:Misc2:Misc3:Misc4" 
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
	addAttr -ci true -sn "nextSetDrivenGroupID" -ln "nextSetDrivenGroupID" -dv 1 -at "short";
	addAttr -ci true -sn "arePhysicsActive" -ln "arePhysicsActive" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "attachPoints" -ln "attachPoints" -dt "string";
	addAttr -ci true -sn "ghosts" -ln "ghosts" -dt "string";
	addAttr -ci true -sn "IKSShape" -ln "IKSShape" -dt "string";
	addAttr -ci true -sn "JointShape" -ln "JointShape" -dt "string";
	addAttr -ci true -sn "IKPVShape" -ln "IKPVShape" -dt "string";
	addAttr -ci true -sn "LookAtShape" -ln "LookAtShape" -dt "string";
	addAttr -ci true -sn "FKRShape" -ln "FKRShape" -dt "string";
	addAttr -ci true -sn "FKShape" -ln "FKShape" -dt "string";
	addAttr -ci true -sn "EmptyShape" -ln "EmptyShape" -dt "string";
	setAttr ".pfrsVersion" 120;
	setAttr ".pfrsName" -type "string" "TEMP";
	setAttr ".rigRootIndex" 1;
	setAttr ".limbIndex" 2;
	setAttr ".jointIndex" 3;
	setAttr ".sideIndex" 4;
	setAttr ".typeIndex" 0;
	setAttr ".category" -type "string" "Skinning_Setup";
	setAttr ".operation" -type "string" "Quick Weights";
	setAttr ".nextLimbID" 10;
	setAttr ".nextJointID" 28;
	setAttr ".nextMeshID" 3;
	setAttr ".paintWeightsUseAnimJoints" yes;
createNode transform -n "JOINTS" -p "TEMP_RigRoot";
	rename -uid "1FB9B25F-475C-8719-2ECB-F5AC4E6CF70A";
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
createNode joint -n "JNT_Clav_Clav01_M" -p "JOINTS";
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
	setAttr ".skinAnimStart" 1;
	setAttr ".skinAnimEnd" 37;
createNode joint -n "JNT_Arm_Shoulder_M" -p "JNT_Clav_Clav01_M";
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
	setAttr ".skinAnimStart" 38;
	setAttr ".skinAnimEnd" 74;
createNode joint -n "JNT_BicepTwist_BicepTwist_M" -p "JNT_Arm_Shoulder_M";
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
	setAttr ".skinAnimStart" 963;
	setAttr ".skinAnimEnd" 999;
createNode transform -n "GRP0_BicepTwist_Joint_M" -p "JNT_BicepTwist_BicepTwist_M";
	rename -uid "09703BBD-4BAA-950D-CBFE-22A4CE5029BC";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 0 -2.8421709430404007e-14 -6.6613381477509392e-16 ;
	setAttr ".rp" -type "double3" 0 -2.8421709430404007e-14 -2.2204460492503131e-16 ;
	setAttr ".sp" -type "double3" 0 -2.8421709430404007e-14 -2.2204460492503131e-16 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "CTR0_BicepTwist_Joint_M" -p "GRP0_BicepTwist_Joint_M";
	rename -uid "0B4A7330-4D9E-6CF9-9C66-0BA2FA3B694B";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 -5.6843418860808015e-14 -2.2204460492503131e-16 ;
	setAttr ".sp" -type "double3" 0 -5.6843418860808015e-14 -2.2204460492503131e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
	setAttr ".pfrsVersion" 110;
createNode mesh -n "CTR0_BicepTwist_Joint_MShape" -p "CTR0_BicepTwist_Joint_M";
	rename -uid "C62EE827-484A-6749-8254-9BAA7B89EC96";
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
createNode joint -n "JNT_Arm_Elbow_M" -p "JNT_Arm_Shoulder_M";
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
	setAttr ".skinAnimStart" 75;
	setAttr ".skinAnimEnd" 111;
createNode joint -n "JNT_ForearmTwist_ForearmTwist1_M" -p "JNT_Arm_Elbow_M";
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
	setAttr ".skinAnimStart" 889;
	setAttr ".skinAnimEnd" 925;
createNode transform -n "GRP0_ForearmTwist1_Joint_M" -p "JNT_ForearmTwist_ForearmTwist1_M";
	rename -uid "CB9E9B75-4FD0-A0D2-F61F-FC9EDD0748B9";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 0 1.1368683772161603e-13 -1.7763568394002505e-15 ;
	setAttr ".rp" -type "double3" -7.1054273576010019e-15 0 0 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-15 0 0 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "CTR0_ForearmTwist1_Joint_M" -p "GRP0_ForearmTwist1_Joint_M";
	rename -uid "DEC1841D-4436-512B-F98E-E5B461336424";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -1.4210854715202004e-14 0 0 ;
	setAttr ".sp" -type "double3" -1.4210854715202004e-14 0 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
	setAttr ".pfrsVersion" 110;
createNode mesh -n "CTR0_ForearmTwist1_Joint_MShape" -p "CTR0_ForearmTwist1_Joint_M";
	rename -uid "CF2CF2DD-4D84-A79F-90CC-1BA378393737";
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
createNode joint -n "JNT_ForearmTwist_ForearmTwist2_M" -p "JNT_Arm_Elbow_M";
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
	setAttr ".skinAnimStart" 926;
	setAttr ".skinAnimEnd" 962;
createNode transform -n "GRP1_ForearmTwist2_Joint_M" -p "JNT_ForearmTwist_ForearmTwist2_M";
	rename -uid "1552464E-4B67-F40D-C70B-038B0810226A";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 5.6843418860808015e-14 -2.6645352591003757e-15 ;
	setAttr ".rp" -type "double3" -7.1054273576010019e-15 -2.8421709430404007e-14 0 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-15 -2.8421709430404007e-14 0 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "CTR1_ForearmTwist2_Joint_M" -p "GRP1_ForearmTwist2_Joint_M";
	rename -uid "8AD3CE9B-4683-FD46-32B4-B8933798BFD7";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -1.4210854715202004e-14 -5.6843418860808015e-14 0 ;
	setAttr ".sp" -type "double3" -1.4210854715202004e-14 -5.6843418860808015e-14 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
	setAttr ".pfrsVersion" 110;
createNode mesh -n "CTR1_ForearmTwist2_Joint_MShape" -p "CTR1_ForearmTwist2_Joint_M";
	rename -uid "41C56306-4313-22DE-DA9E-E198C3920A80";
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
createNode joint -n "JNT_Arm_Wrist_M" -p "JNT_Arm_Elbow_M";
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
	setAttr ".skinAnimStart" 112;
	setAttr ".skinAnimEnd" 148;
createNode joint -n "JNT_Middle_Middle1_M" -p "JNT_Arm_Wrist_M";
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
	setAttr ".skinAnimStart" 297;
	setAttr ".skinAnimEnd" 333;
createNode joint -n "JNT_Middle_Middle2_M" -p "JNT_Middle_Middle1_M";
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
	setAttr ".skinAnimStart" 334;
	setAttr ".skinAnimEnd" 370;
createNode joint -n "JNT_Middle_Middle3_M" -p "JNT_Middle_Middle2_M";
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
	setAttr ".skinAnimStart" 371;
	setAttr ".skinAnimEnd" 407;
createNode joint -n "JNT_Middle_Middle4_M" -p "JNT_Middle_Middle3_M";
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
	setAttr ".skinAnimStart" 408;
	setAttr ".skinAnimEnd" 444;
createNode transform -n "GRP3_Middle4_Joint_M" -p "JNT_Middle_Middle4_M";
	rename -uid "0F04A028-4D0D-2AD7-F668-BD924B1DEB25";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -8.8817841970012523e-14 0 1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1.0000000000000004 ;
	setAttr ".rp" -type "double3" 1.0658141036401503e-14 0 8.8817841970012563e-16 ;
	setAttr ".sp" -type "double3" 1.0658141036401503e-14 0 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" 0 0 3.9443045261050608e-31 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "CTR3_Middle4_Joint_M" -p "GRP3_Middle4_Joint_M";
	rename -uid "2D5A5D46-4353-B070-E69D-7E8DF0CB0180";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 2.4868995751603507e-14 0 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 2.4868995751603507e-14 0 8.8817841970012523e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
	setAttr ".pfrsVersion" 110;
createNode mesh -n "CTR3_Middle4_Joint_MShape" -p "CTR3_Middle4_Joint_M";
	rename -uid "9F739B43-4AFC-3988-ADE7-88B84B882495";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.73981071 2.3841329 -0.73981071 
		-0.73981071 2.3841329 -0.73981071 0.73981071 0.90451145 -0.73981071 -0.73981071 0.90451145 
		-0.73981071 0.73981071 0.90451145 0.73981071 -0.73981071 0.90451145 0.73981071 0.73981071 
		2.3841329 0.73981071 -0.73981071 2.3841329 0.73981071;
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
createNode transform -n "GRP2_Middle3_Joint_M" -p "JNT_Middle_Middle3_M";
	rename -uid "5E9008D6-4BF3-1B6B-8546-A188BAEA9819";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -6.0396132539608516e-14 5.6843418860808015e-14 1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -1.0658141036401503e-14 0 0 ;
	setAttr ".sp" -type "double3" -1.0658141036401503e-14 0 0 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "CTR2_Middle3_Joint_M" -p "GRP2_Middle3_Joint_M";
	rename -uid "83B63EE1-4979-BCA1-FFC4-C2B915CADB4D";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -1.7763568394002505e-14 -2.8421709430404007e-14 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-14 -2.8421709430404007e-14 8.8817841970012523e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
	setAttr ".pfrsVersion" 110;
createNode mesh -n "CTR2_Middle3_Joint_MShape" -p "CTR2_Middle3_Joint_M";
	rename -uid "C18FD236-4AA9-0A37-BB8B-EB9FA3130ACC";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.73981071 2.3841329 -0.73981071 
		-0.73981071 2.3841329 -0.73981071 0.73981071 0.90451145 -0.73981071 -0.73981071 0.90451145 
		-0.73981071 0.73981071 0.90451145 0.73981071 -0.73981071 0.90451145 0.73981071 0.73981071 
		2.3841329 0.73981071 -0.73981071 2.3841329 0.73981071;
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
createNode transform -n "GRP1_Middle2_Joint_M" -p "JNT_Middle_Middle2_M";
	rename -uid "A6B9B651-4BC2-CD9E-B213-0AB7405ED9C0";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -6.5725203057809267e-14 1.4210854715202004e-13 -2.2204460492503131e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
	setAttr ".rp" -type "double3" 1.243449787580175e-14 0 0 ;
	setAttr ".sp" -type "double3" 1.2434497875801753e-14 0 0 ;
	setAttr ".spt" -type "double3" -3.1554436208840469e-30 0 0 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "CTR1_Middle2_Joint_M" -p "GRP1_Middle2_Joint_M";
	rename -uid "402897AF-4CE5-D3F8-E7A7-12B2B57A0D5B";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 1.2434497875801753e-14 0 0 ;
	setAttr ".sp" -type "double3" 1.2434497875801753e-14 0 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
	setAttr ".pfrsVersion" 110;
createNode mesh -n "CTR1_Middle2_Joint_MShape" -p "CTR1_Middle2_Joint_M";
	rename -uid "FA99BD52-4694-F9A8-35B4-949D06473F94";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.73981071 2.3841329 -0.73981071 
		-0.73981071 2.3841329 -0.73981071 0.73981071 0.90451145 -0.73981071 -0.73981071 0.90451145 
		-0.73981071 0.73981071 0.90451145 0.73981071 -0.73981071 0.90451145 0.73981071 0.73981071 
		2.3841329 0.73981071 -0.73981071 2.3841329 0.73981071;
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
createNode transform -n "GRP0_Middle1_Joint_M" -p "JNT_Middle_Middle1_M";
	rename -uid "AEA83939-4075-938D-1305-6D9AFFFA5CA6";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -6.3948846218409017e-14 1.4210854715202004e-13 -4.4408920985006262e-16 ;
	setAttr ".rp" -type "double3" 0 0 2.2204460492503131e-16 ;
	setAttr ".sp" -type "double3" 0 0 2.2204460492503131e-16 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "CTR0_Middle1_Joint_M" -p "GRP0_Middle1_Joint_M";
	rename -uid "2EDA430B-4316-45F4-1CE3-47B0C854E53D";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 0 4.4408920985006262e-16 ;
	setAttr ".sp" -type "double3" 0 0 4.4408920985006262e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
	setAttr ".pfrsVersion" 110;
createNode mesh -n "CTR0_Middle1_Joint_MShape" -p "CTR0_Middle1_Joint_M";
	rename -uid "E5125503-454D-C0A4-7A53-C3B9DC37E7A7";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.73981071 2.3841329 -0.73981071 
		-0.73981071 2.3841329 -0.73981071 0.73981071 0.90451145 -0.73981071 -0.73981071 0.90451145 
		-0.73981071 0.73981071 0.90451145 0.73981071 -0.73981071 0.90451145 0.73981071 0.73981071 
		2.3841329 0.73981071 -0.73981071 2.3841329 0.73981071;
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
createNode joint -n "JNT_Ring_Ring1_M" -p "JNT_Arm_Wrist_M";
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
	setAttr ".skinAnimStart" 593;
	setAttr ".skinAnimEnd" 629;
createNode joint -n "JNT_Ring_Ring2_M" -p "JNT_Ring_Ring1_M";
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
	setAttr ".skinAnimStart" 630;
	setAttr ".skinAnimEnd" 666;
createNode joint -n "JNT_Ring_Ring3_M" -p "JNT_Ring_Ring2_M";
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
	setAttr ".skinAnimStart" 667;
	setAttr ".skinAnimEnd" 703;
createNode joint -n "JNT_Ring_Ring4_M" -p "JNT_Ring_Ring3_M";
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
	setAttr ".skinAnimStart" 704;
	setAttr ".skinAnimEnd" 740;
createNode transform -n "GRP3_Ring4_Joint_M" -p "JNT_Ring_Ring4_M";
	rename -uid "A4A8078A-4991-1F57-2E36-8DB2FC0E962E";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -6.7501559897209518e-14 8.5265128291212022e-14 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".rp" -type "double3" -2.4868995751603507e-14 2.8421709430404001e-14 0 ;
	setAttr ".sp" -type "double3" -2.4868995751603507e-14 2.8421709430404007e-14 0 ;
	setAttr ".spt" -type "double3" 0 -6.3108872417680937e-30 0 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "CTR3_Ring4_Joint_M" -p "GRP3_Ring4_Joint_M";
	rename -uid "122E7055-4B43-9D31-958C-83BA3700A1DE";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -3.907985046680551e-14 5.6843418860808015e-14 0 ;
	setAttr ".sp" -type "double3" -3.907985046680551e-14 5.6843418860808015e-14 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
	setAttr ".pfrsVersion" 110;
createNode mesh -n "CTR3_Ring4_Joint_MShape" -p "CTR3_Ring4_Joint_M";
	rename -uid "6F845336-48E1-0AC5-CD85-FD88E688BAED";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.73981071 2.3841329 -0.73981071 
		-0.73981071 2.3841329 -0.73981071 0.73981071 0.90451145 -0.73981071 -0.73981071 0.90451145 
		-0.73981071 0.73981071 0.90451145 0.73981071 -0.73981071 0.90451145 0.73981071 0.73981071 
		2.3841329 0.73981071 -0.73981071 2.3841329 0.73981071;
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
createNode transform -n "GRP2_Ring3_Joint_M" -p "JNT_Ring_Ring3_M";
	rename -uid "1B048971-4A09-8577-57A6-94AEFCD25BA3";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -1.2789769243681803e-13 8.5265128291212022e-14 5.3290705182007514e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -7.1054273576010019e-15 2.8421709430404001e-14 -1.7763568394002509e-15 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-15 2.8421709430404007e-14 -1.7763568394002505e-15 ;
	setAttr ".spt" -type "double3" 0 -6.3108872417680937e-30 -3.9443045261050599e-31 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "CTR2_Ring3_Joint_M" -p "GRP2_Ring3_Joint_M";
	rename -uid "117562E5-49A2-46B5-9F94-A9B93F15C445";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -7.1054273576010019e-15 5.6843418860808015e-14 -1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-15 5.6843418860808015e-14 -1.7763568394002505e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
	setAttr ".pfrsVersion" 110;
createNode mesh -n "CTR2_Ring3_Joint_MShape" -p "CTR2_Ring3_Joint_M";
	rename -uid "ACB9E48A-43BF-73C6-8130-6A82013D033F";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.73981071 2.3841329 -0.73981071 
		-0.73981071 2.3841329 -0.73981071 0.73981071 0.90451145 -0.73981071 -0.73981071 0.90451145 
		-0.73981071 0.73981071 0.90451145 0.73981071 -0.73981071 0.90451145 0.73981071 0.73981071 
		2.3841329 0.73981071 -0.73981071 2.3841329 0.73981071;
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
createNode transform -n "GRP1_Ring2_Joint_M" -p "JNT_Ring_Ring2_M";
	rename -uid "43ECA3E9-4242-5495-E827-6D822F9194AB";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -4.6185277824406512e-14 1.1368683772161603e-13 -8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999989 ;
	setAttr ".rp" -type "double3" -3.5527136788005001e-15 0 1.7763568394002501e-15 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-15 0 1.7763568394002505e-15 ;
	setAttr ".spt" -type "double3" 7.8886090522101163e-31 0 -3.9443045261050586e-31 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "CTR1_Ring2_Joint_M" -p "GRP1_Ring2_Joint_M";
	rename -uid "FC878F5A-46EC-6F97-3574-37A79F38BEC5";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -3.5527136788005009e-15 0 3.5527136788005009e-15 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-15 0 3.5527136788005009e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
	setAttr ".pfrsVersion" 110;
createNode mesh -n "CTR1_Ring2_Joint_MShape" -p "CTR1_Ring2_Joint_M";
	rename -uid "9180B338-4496-2DAD-C919-CE953C284534";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.73981071 2.3841329 -0.73981071 
		-0.73981071 2.3841329 -0.73981071 0.73981071 0.90451145 -0.73981071 -0.73981071 0.90451145 
		-0.73981071 0.73981071 0.90451145 0.73981071 -0.73981071 0.90451145 0.73981071 0.73981071 
		2.3841329 0.73981071 -0.73981071 2.3841329 0.73981071;
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
createNode transform -n "GRP0_Ring1_Joint_M" -p "JNT_Ring_Ring1_M";
	rename -uid "77B41BF8-40B5-EE4A-5352-CFA271D15315";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -4.2632564145606011e-14 1.9895196601282805e-13 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".rp" -type "double3" 0 0 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 0 0 8.8817841970012523e-16 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "CTR0_Ring1_Joint_M" -p "GRP0_Ring1_Joint_M";
	rename -uid "34F63CB9-4D7E-9D89-6C12-13BE34B62264";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 0 1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" 0 0 1.7763568394002505e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
	setAttr ".pfrsVersion" 110;
createNode mesh -n "CTR0_Ring1_Joint_MShape" -p "CTR0_Ring1_Joint_M";
	rename -uid "133B54BB-48E4-294C-3DFD-6F96AD40A8B1";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.73981071 2.3841329 -0.73981071 
		-0.73981071 2.3841329 -0.73981071 0.73981071 0.90451145 -0.73981071 -0.73981071 0.90451145 
		-0.73981071 0.73981071 0.90451145 0.73981071 -0.73981071 0.90451145 0.73981071 0.73981071 
		2.3841329 0.73981071 -0.73981071 2.3841329 0.73981071;
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
createNode joint -n "JNT_Index_Index1_M" -p "JNT_Arm_Wrist_M";
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
	setAttr ".skinAnimStart" 149;
	setAttr ".skinAnimEnd" 185;
createNode joint -n "JNT_Index_Index2_M" -p "JNT_Index_Index1_M";
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
	setAttr ".skinAnimStart" 186;
	setAttr ".skinAnimEnd" 222;
createNode joint -n "JNT_Index_Index3_M" -p "JNT_Index_Index2_M";
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
	setAttr ".skinAnimStart" 223;
	setAttr ".skinAnimEnd" 259;
createNode joint -n "JNT_Index_Index4_M" -p "JNT_Index_Index3_M";
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
	setAttr ".skinAnimStart" 260;
	setAttr ".skinAnimEnd" 296;
createNode transform -n "GRP3_Index4_Joint_M" -p "JNT_Index_Index4_M";
	rename -uid "351D6FE4-4547-4AE6-385B-2984ED299D73";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -1.4210854715202004e-13 2.8421709430404007e-13 2.6645352591003757e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -7.1054273576010019e-15 0 0 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-15 0 0 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "CTR3_Index4_Joint_M" -p "GRP3_Index4_Joint_M";
	rename -uid "C66627B1-4ABC-FBD0-72A5-61B25A7CD11C";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -7.1054273576010019e-15 0 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-15 0 8.8817841970012523e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
	setAttr ".pfrsVersion" 110;
createNode mesh -n "CTR3_Index4_Joint_MShape" -p "CTR3_Index4_Joint_M";
	rename -uid "8133E912-413D-46E3-ADFB-45B268942726";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.73981071 2.3841329 -0.73981071 
		-0.73981071 2.3841329 -0.73981071 0.73981071 0.90451145 -0.73981071 -0.73981071 0.90451145 
		-0.73981071 0.73981071 0.90451145 0.73981071 -0.73981071 0.90451145 0.73981071 0.73981071 
		2.3841329 0.73981071 -0.73981071 2.3841329 0.73981071;
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
createNode transform -n "GRP2_Index3_Joint_M" -p "JNT_Index_Index3_M";
	rename -uid "D4B5D0FD-4E98-A1DE-12DA-0896562E6B36";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -1.3855583347321954e-13 1.7053025658242404e-13 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "CTR2_Index3_Joint_M" -p "GRP2_Index3_Joint_M";
	rename -uid "2E88FA16-4502-64B9-DB9D-F29C9D8711B5";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
	setAttr ".pfrsVersion" 110;
createNode mesh -n "CTR2_Index3_Joint_MShape" -p "CTR2_Index3_Joint_M";
	rename -uid "CC7C30AA-4B98-C728-1D07-AA8AA58F52A4";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.73981071 2.3841329 -0.73981071 
		-0.73981071 2.3841329 -0.73981071 0.73981071 0.90451145 -0.73981071 -0.73981071 0.90451145 
		-0.73981071 0.73981071 0.90451145 0.73981071 -0.73981071 0.90451145 0.73981071 0.73981071 
		2.3841329 0.73981071 -0.73981071 2.3841329 0.73981071;
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
createNode transform -n "GRP1_Index2_Joint_M" -p "JNT_Index_Index2_M";
	rename -uid "30DE3127-4416-FC16-2095-39835F9B6857";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -4.6185277824406512e-14 3.4106051316484809e-13 4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -1.7763568394002505e-14 2.8421709430404001e-14 4.4408920985006271e-16 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-14 2.8421709430404007e-14 4.4408920985006262e-16 ;
	setAttr ".spt" -type "double3" 0 -6.3108872417680937e-30 9.8607613152626498e-32 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "CTR1_Index2_Joint_M" -p "GRP1_Index2_Joint_M";
	rename -uid "B34BA8A7-4390-8DCC-072B-B587076BECE2";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -2.4868995751603507e-14 5.6843418860808015e-14 1.3322676295501878e-15 ;
	setAttr ".sp" -type "double3" -2.4868995751603507e-14 5.6843418860808015e-14 1.3322676295501878e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
	setAttr ".pfrsVersion" 110;
createNode mesh -n "CTR1_Index2_Joint_MShape" -p "CTR1_Index2_Joint_M";
	rename -uid "4A7AAA17-4865-2487-C7F6-2A8DE4E93004";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.73981071 2.3841329 -0.73981071 
		-0.73981071 2.3841329 -0.73981071 0.73981071 0.90451145 -0.73981071 -0.73981071 0.90451145 
		-0.73981071 0.73981071 0.90451145 0.73981071 -0.73981071 0.90451145 0.73981071 0.73981071 
		2.3841329 0.73981071 -0.73981071 2.3841329 0.73981071;
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
createNode transform -n "GRP0_Index1_Joint_M" -p "JNT_Index_Index1_M";
	rename -uid "AC8A843B-44F0-53F5-8377-469F6A29C562";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -5.3290705182007514e-14 1.7053025658242404e-13 -2.6645352591003757e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999978 ;
	setAttr ".rp" -type "double3" -1.0658141036401503e-14 5.6843418860808002e-14 -4.4408920985006252e-16 ;
	setAttr ".sp" -type "double3" -1.0658141036401503e-14 5.6843418860808015e-14 -4.4408920985006262e-16 ;
	setAttr ".spt" -type "double3" 0 -1.2621774483536187e-29 9.8607613152626454e-32 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "CTR0_Index1_Joint_M" -p "GRP0_Index1_Joint_M";
	rename -uid "9411F266-47FF-1AFE-F903-14857D41FECC";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -1.0658141036401503e-14 8.5265128291212022e-14 -4.4408920985006262e-16 ;
	setAttr ".sp" -type "double3" -1.0658141036401503e-14 8.5265128291212022e-14 -4.4408920985006262e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
	setAttr ".pfrsVersion" 110;
createNode mesh -n "CTR0_Index1_Joint_MShape" -p "CTR0_Index1_Joint_M";
	rename -uid "05D371B6-4575-AE75-4E3E-86A59D85ED94";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.73981071 2.3841329 -0.73981071 
		-0.73981071 2.3841329 -0.73981071 0.73981071 0.90451145 -0.73981071 -0.73981071 0.90451145 
		-0.73981071 0.73981071 0.90451145 0.73981071 -0.73981071 0.90451145 0.73981071 0.73981071 
		2.3841329 0.73981071 -0.73981071 2.3841329 0.73981071;
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
createNode joint -n "JNT_Pinkie_Pinkey1_M" -p "JNT_Arm_Wrist_M";
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
	setAttr ".skinAnimStart" 445;
	setAttr ".skinAnimEnd" 481;
createNode joint -n "JNT_Pinkie_Pinkey2_M" -p "JNT_Pinkie_Pinkey1_M";
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
	setAttr ".skinAnimStart" 482;
	setAttr ".skinAnimEnd" 518;
createNode joint -n "JNT_Pinkie_Pinkey3_M" -p "JNT_Pinkie_Pinkey2_M";
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
	setAttr ".skinAnimStart" 519;
	setAttr ".skinAnimEnd" 555;
createNode joint -n "JNT_Pinkie_Pinkey4_M" -p "JNT_Pinkie_Pinkey3_M";
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
	setAttr ".skinAnimStart" 556;
	setAttr ".skinAnimEnd" 592;
createNode transform -n "GRP3_Pinkey4_Joint_M" -p "JNT_Pinkie_Pinkey4_M";
	rename -uid "72C81EBE-496D-574F-D49F-7E879D522477";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -9.2370555648813024e-14 2.8421709430404007e-13 2.2204460492503131e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".rp" -type "double3" -1.4210854715202007e-14 0 -4.4408920985006262e-16 ;
	setAttr ".sp" -type "double3" -1.4210854715202004e-14 0 -4.4408920985006262e-16 ;
	setAttr ".spt" -type "double3" -3.1554436208840479e-30 0 0 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "CTR3_Pinkey4_Joint_M" -p "GRP3_Pinkey4_Joint_M";
	rename -uid "3B6297D7-42EF-61F8-D825-8096C9233F09";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -2.1316282072803006e-14 0 -4.4408920985006262e-16 ;
	setAttr ".sp" -type "double3" -2.1316282072803006e-14 0 -4.4408920985006262e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
	setAttr ".pfrsVersion" 110;
createNode mesh -n "CTR3_Pinkey4_Joint_MShape" -p "CTR3_Pinkey4_Joint_M";
	rename -uid "DA873996-4890-1802-A93C-E0B92D99A57B";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.73981071 2.3841329 -0.73981071 
		-0.73981071 2.3841329 -0.73981071 0.73981071 0.90451145 -0.73981071 -0.73981071 0.90451145 
		-0.73981071 0.73981071 0.90451145 0.73981071 -0.73981071 0.90451145 0.73981071 0.73981071 
		2.3841329 0.73981071 -0.73981071 2.3841329 0.73981071;
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
createNode transform -n "GRP2_Pinkey3_Joint_M" -p "JNT_Pinkie_Pinkey3_M";
	rename -uid "57CDA51C-4742-4FB1-17C0-90A9E54774B9";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -9.9475983006414026e-14 1.9895196601282805e-13 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -1.4210854715202007e-14 0 -8.8817841970012543e-16 ;
	setAttr ".sp" -type "double3" -1.4210854715202004e-14 0 -8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" -3.1554436208840479e-30 0 -1.97215226305253e-31 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "CTR2_Pinkey3_Joint_M" -p "GRP2_Pinkey3_Joint_M";
	rename -uid "C2F4AC11-4D9C-2659-0F9A-73B06D09BA5F";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -2.1316282072803006e-14 0 -1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" -2.1316282072803006e-14 0 -1.7763568394002505e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
	setAttr ".pfrsVersion" 110;
createNode mesh -n "CTR2_Pinkey3_Joint_MShape" -p "CTR2_Pinkey3_Joint_M";
	rename -uid "CB0F668C-4A35-B52C-00EC-A89D677520E2";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.73981071 2.3841329 -0.73981071 
		-0.73981071 2.3841329 -0.73981071 0.73981071 0.90451145 -0.73981071 -0.73981071 0.90451145 
		-0.73981071 0.73981071 0.90451145 0.73981071 -0.73981071 0.90451145 0.73981071 0.73981071 
		2.3841329 0.73981071 -0.73981071 2.3841329 0.73981071;
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
createNode transform -n "GRP1_Pinkey2_Joint_M" -p "JNT_Pinkie_Pinkey2_M";
	rename -uid "DC4BAF41-495C-70EE-C183-74BE6E69052B";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -5.5067062021407764e-14 1.9895196601282805e-13 -2.6645352591003757e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".rp" -type "double3" 1.7763568394002501e-15 0 -8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-15 0 -8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" -3.9443045261050586e-31 0 0 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "CTR1_Pinkey2_Joint_M" -p "GRP1_Pinkey2_Joint_M";
	rename -uid "5C2A330E-455F-0EEC-791C-DBB61C3C69DE";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 1.7763568394002505e-15 0 -1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-15 0 -1.7763568394002505e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
	setAttr ".pfrsVersion" 110;
createNode mesh -n "CTR1_Pinkey2_Joint_MShape" -p "CTR1_Pinkey2_Joint_M";
	rename -uid "AF72DAC3-4DB2-D33B-F7E0-A8BE68361AF7";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.73981071 2.3841329 -0.73981071 
		-0.73981071 2.3841329 -0.73981071 0.73981071 0.90451145 -0.73981071 -0.73981071 0.90451145 
		-0.73981071 0.73981071 0.90451145 0.73981071 -0.73981071 0.90451145 0.73981071 0.73981071 
		2.3841329 0.73981071 -0.73981071 2.3841329 0.73981071;
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
createNode transform -n "GRP0_Pinkey1_Joint_M" -p "JNT_Pinkie_Pinkey1_M";
	rename -uid "1880E50B-462D-0BF5-266A-FEB42F9AD66B";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 1.9895196601282805e-13 1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".rp" -type "double3" 7.1054273576010019e-15 5.6843418860808002e-14 0 ;
	setAttr ".sp" -type "double3" 7.1054273576010019e-15 5.6843418860808015e-14 0 ;
	setAttr ".spt" -type "double3" 0 -1.2621774483536187e-29 0 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "CTR0_Pinkey1_Joint_M" -p "GRP0_Pinkey1_Joint_M";
	rename -uid "4A176173-4FDC-EC2D-813E-E183E4EA09F4";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 7.1054273576010019e-15 1.1368683772161603e-13 1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" 7.1054273576010019e-15 1.1368683772161603e-13 1.7763568394002505e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
	setAttr ".pfrsVersion" 110;
createNode mesh -n "CTR0_Pinkey1_Joint_MShape" -p "CTR0_Pinkey1_Joint_M";
	rename -uid "90EC6F06-450A-D08F-2D02-8282CB0E27FE";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.73981071 2.3841329 -0.73981071 
		-0.73981071 2.3841329 -0.73981071 0.73981071 0.90451145 -0.73981071 -0.73981071 0.90451145 
		-0.73981071 0.73981071 0.90451145 0.73981071 -0.73981071 0.90451145 0.73981071 0.73981071 
		2.3841329 0.73981071 -0.73981071 2.3841329 0.73981071;
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
createNode joint -n "JNT_Thumb_Thumb1_M" -p "JNT_Arm_Wrist_M";
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
	setAttr ".skinAnimStart" 741;
	setAttr ".skinAnimEnd" 777;
createNode joint -n "JNT_Thumb_Thumb2_M" -p "JNT_Thumb_Thumb1_M";
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
	setAttr ".skinAnimStart" 778;
	setAttr ".skinAnimEnd" 814;
createNode joint -n "JNT_Thumb_Thumb3_M" -p "JNT_Thumb_Thumb2_M";
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
	setAttr ".skinAnimStart" 815;
	setAttr ".skinAnimEnd" 851;
createNode joint -n "JNT_Thumb_Thumb4_M" -p "JNT_Thumb_Thumb3_M";
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
	setAttr ".skinAnimStart" 852;
	setAttr ".skinAnimEnd" 888;
createNode transform -n "GRP3_Thumb4_Joint_M" -p "JNT_Thumb_Thumb4_M";
	rename -uid "8F8AC076-468F-D727-FA81-6399A91A5173";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -3.5527136788005009e-14 7.1054273576010019e-14 -8.5265128291212022e-14 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "CTR3_Thumb4_Joint_M" -p "GRP3_Thumb4_Joint_M";
	rename -uid "1288EDC8-4BC4-7AD8-F4B1-1FA3F1665C6E";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
	setAttr ".pfrsVersion" 110;
createNode mesh -n "CTR3_Thumb4_Joint_MShape" -p "CTR3_Thumb4_Joint_M";
	rename -uid "1994AA37-45A0-9593-5E08-BE9B440B8E6F";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.73981071 2.3841329 -0.73981071 
		-0.73981071 2.3841329 -0.73981071 0.73981071 0.90451145 -0.73981071 -0.73981071 0.90451145 
		-0.73981071 0.73981071 0.90451145 0.73981071 -0.73981071 0.90451145 0.73981071 0.73981071 
		2.3841329 0.73981071 -0.73981071 2.3841329 0.73981071;
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
createNode transform -n "GRP2_Thumb3_Joint_M" -p "JNT_Thumb_Thumb3_M";
	rename -uid "4043896B-4914-B29B-F92A-B89B23C1F264";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -4.9737991503207013e-14 4.2632564145606011e-14 -2.8421709430404007e-14 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
	setAttr ".rp" -type "double3" 1.4210854715202004e-14 0 2.842170943040402e-14 ;
	setAttr ".sp" -type "double3" 1.4210854715202004e-14 0 2.8421709430404007e-14 ;
	setAttr ".spt" -type "double3" 0 0 1.2621774483536194e-29 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "CTR2_Thumb3_Joint_M" -p "GRP2_Thumb3_Joint_M";
	rename -uid "A77D43B6-4A90-093F-1B9A-8E92A9FBA896";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 2.8421709430404007e-14 1.4210854715202004e-14 2.8421709430404007e-14 ;
	setAttr ".sp" -type "double3" 2.8421709430404007e-14 1.4210854715202004e-14 2.8421709430404007e-14 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
	setAttr ".pfrsVersion" 110;
createNode mesh -n "CTR2_Thumb3_Joint_MShape" -p "CTR2_Thumb3_Joint_M";
	rename -uid "3D5014F8-40B0-22D3-BCAA-328C874FC41F";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.73981071 2.3841329 -0.73981071 
		-0.73981071 2.3841329 -0.73981071 0.73981071 0.90451145 -0.73981071 -0.73981071 0.90451145 
		-0.73981071 0.73981071 0.90451145 0.73981071 -0.73981071 0.90451145 0.73981071 0.73981071 
		2.3841329 0.73981071 -0.73981071 2.3841329 0.73981071;
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
createNode transform -n "GRP1_Thumb2_Joint_M" -p "JNT_Thumb_Thumb2_M";
	rename -uid "D57280E7-4E4C-D102-D2EC-E8AC63D9909C";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -4.2632564145606011e-14 3.5527136788005009e-14 -1.1368683772161603e-13 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000009 1.0000000000000004 ;
	setAttr ".rp" -type "double3" 0 7.1054273576010082e-15 0 ;
	setAttr ".sp" -type "double3" 0 7.1054273576010019e-15 0 ;
	setAttr ".spt" -type "double3" 0 6.3108872417681e-30 0 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "CTR1_Thumb2_Joint_M" -p "GRP1_Thumb2_Joint_M";
	rename -uid "32E43C25-45CD-C02F-E82F-C6AA16B13B0E";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 1.4210854715202004e-14 0 ;
	setAttr ".sp" -type "double3" 0 1.4210854715202004e-14 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
	setAttr ".pfrsVersion" 110;
createNode mesh -n "CTR1_Thumb2_Joint_MShape" -p "CTR1_Thumb2_Joint_M";
	rename -uid "C9ADCC2D-458A-94D0-CD5E-17969DE217BD";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.73981071 2.3841329 -0.73981071 
		-0.73981071 2.3841329 -0.73981071 0.73981071 0.90451145 -0.73981071 -0.73981071 0.90451145 
		-0.73981071 0.73981071 0.90451145 0.73981071 -0.73981071 0.90451145 0.73981071 0.73981071 
		2.3841329 0.73981071 -0.73981071 2.3841329 0.73981071;
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
createNode transform -n "GRP0_Thumb1_Joint_M" -p "JNT_Thumb_Thumb1_M";
	rename -uid "21187321-4982-17FD-80F6-5D9EF289C9C8";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -3.907985046680551e-14 6.2172489379008766e-14 -1.4210854715202004e-13 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".rp" -type "double3" -3.5527136788005001e-15 1.7763568394002505e-15 0 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-15 1.7763568394002505e-15 0 ;
	setAttr ".spt" -type "double3" 7.8886090522101172e-31 0 0 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "CTR0_Thumb1_Joint_M" -p "GRP0_Thumb1_Joint_M";
	rename -uid "94080CD9-4EF5-D190-3775-51AC7D2CA5B4";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -3.5527136788005009e-15 1.7763568394002505e-15 0 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-15 1.7763568394002505e-15 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
	setAttr ".pfrsVersion" 110;
createNode mesh -n "CTR0_Thumb1_Joint_MShape" -p "CTR0_Thumb1_Joint_M";
	rename -uid "6FF71C71-4A2A-A7A5-6761-54AA428358FD";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.73981071 2.3841329 -0.73981071 
		-0.73981071 2.3841329 -0.73981071 0.73981071 0.90451145 -0.73981071 -0.73981071 0.90451145 
		-0.73981071 0.73981071 0.90451145 0.73981071 -0.73981071 0.90451145 0.73981071 0.73981071 
		2.3841329 0.73981071 -0.73981071 2.3841329 0.73981071;
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
createNode transform -n "GRP2_Wrist_Joint_M" -p "JNT_Arm_Wrist_M";
	rename -uid "76DE0512-491C-30A3-D41C-DA9B3F8DDFBC";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 2.8421709430404007e-14 8.5265128291212022e-14 -8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 2.8421709430404001e-14 -2.8421709430404001e-14 0 ;
	setAttr ".sp" -type "double3" 2.8421709430404007e-14 -2.8421709430404007e-14 0 ;
	setAttr ".spt" -type "double3" -6.3108872417680937e-30 6.310887241768093e-30 0 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "CTR2_Wrist_Joint_M" -p "GRP2_Wrist_Joint_M";
	rename -uid "3CE34822-4A9E-95D0-8E03-07B495BC3571";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 5.6843418860808015e-14 -5.6843418860808015e-14 0 ;
	setAttr ".sp" -type "double3" 5.6843418860808015e-14 -5.6843418860808015e-14 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
	setAttr ".pfrsVersion" 110;
createNode mesh -n "CTR2_Wrist_Joint_MShape" -p "CTR2_Wrist_Joint_M";
	rename -uid "1F1DB47A-4CFD-5E99-B3A4-CFB72FCB2252";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.57489347 -3.3194604 3.3194604 
		-0.57489347 -3.3194604 3.3194604 0.57489347 3.3194604 3.3194604 -0.57489347 3.3194604 
		3.3194604 0.57489347 3.3194604 -3.3194604 -0.57489347 3.3194604 -3.3194604 0.57489347 
		-3.3194604 -3.3194604 -0.57489347 -3.3194604 -3.3194604;
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
createNode transform -n "GRP1_Elbow_Joint_M" -p "JNT_Arm_Elbow_M";
	rename -uid "77D2D96B-4472-4C29-CBE0-888FD47AC5FD";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 5.6843418860808015e-14 0 ;
	setAttr ".rp" -type "double3" -7.1054273576010019e-15 -5.6843418860808015e-14 0 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-15 -5.6843418860808015e-14 0 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "CTR1_Elbow_Joint_M" -p "GRP1_Elbow_Joint_M";
	rename -uid "D74892D5-4B07-6FE1-5B65-CABEF8CA07A8";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -1.4210854715202004e-14 -1.1368683772161603e-13 -8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" -1.4210854715202004e-14 -1.1368683772161603e-13 -8.8817841970012523e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
	setAttr ".pfrsVersion" 110;
createNode mesh -n "CTR1_Elbow_Joint_MShape" -p "CTR1_Elbow_Joint_M";
	rename -uid "E4D320DA-4986-E630-C97B-54844F0A476A";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.57489347 -3.3194604 3.3194604 
		-0.57489347 -3.3194604 3.3194604 0.57489347 3.3194604 3.3194604 -0.57489347 3.3194604 
		3.3194604 0.57489347 3.3194604 -3.3194604 -0.57489347 3.3194604 -3.3194604 0.57489347 
		-3.3194604 -3.3194604 -0.57489347 -3.3194604 -3.3194604;
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
createNode transform -n "GRP0_Shoulder_Joint_M" -p "JNT_Arm_Shoulder_M";
	rename -uid "B699295C-4396-E515-4FDE-2C93F7C6326D";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -5.3290705182007514e-15 0 2.2204460492503131e-16 ;
	setAttr ".rp" -type "double3" -1.7763568394002505e-15 0 4.4408920985006262e-16 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-15 0 4.4408920985006262e-16 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "CTR0_Shoulder_Joint_M" -p "GRP0_Shoulder_Joint_M";
	rename -uid "E3E39B17-42EB-B65C-3EA4-B09921AE26CE";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -3.5527136788005009e-15 0 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-15 0 8.8817841970012523e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
	setAttr ".pfrsVersion" 110;
createNode mesh -n "CTR0_Shoulder_Joint_MShape" -p "CTR0_Shoulder_Joint_M";
	rename -uid "6B41A8F8-4F8B-B81F-3CC4-A8890870B9C5";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.078645796 -6.2546964 6.2546964 
		-0.078645796 -6.2546964 6.2546964 0.078645796 6.2546964 6.2546964 -0.078645796 6.2546964 
		6.2546964 0.078645796 6.2546964 -6.2546964 -0.078645796 6.2546964 -6.2546964 0.078645796 
		-6.2546964 -6.2546964 -0.078645796 -6.2546964 -6.2546964;
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
createNode transform -n "GRP0_Clav01_Joint_M" -p "JNT_Clav_Clav01_M";
	rename -uid "A2726AC2-4776-A9CC-306A-D5BC22294485";
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
createNode transform -n "CTR0_Clav01_Joint_M" -p "GRP0_Clav01_Joint_M";
	rename -uid "9489150B-4473-223F-D276-3B9517093799";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
	setAttr ".pfrsVersion" 110;
createNode mesh -n "CTR0_Clav01_Joint_MShape" -p "CTR0_Clav01_Joint_M";
	rename -uid "E4329EA5-464C-81F0-90D7-7DBCF234230E";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0 12.082672 0 0 12.082672 
		0 0 12.082672 0 0 12.082672 0 0 12.082672 0 0 12.082672 0 0 12.082672 0 0 12.082672;
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
createNode transform -n "LIMBS" -p "TEMP_RigRoot";
	rename -uid "0CE9EFF2-4816-C738-DD42-3B947D1861CD";
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
createNode transform -n "NODE_BicepTwist_Limb_M" -p "LIMBS";
	rename -uid "B0BB9372-4815-E2F5-9F76-A3AD96F04AAC";
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
	addAttr -ci true -sn "controlKeyframes" -ln "controlKeyframes" -dt "string";
	addAttr -ci true -sn "animJoints" -ln "animJoints" -dt "string";
	addAttr -ci true -sn "setDrivenGroups" -ln "setDrivenGroups" -dt "string";
	addAttr -ci true -sn "toBeBaked" -ln "toBeBaked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "isFirstIkGroupVis" -ln "isFirstIkGroupVis" -min 0 -max 1 -at "bool";
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
	setAttr ".pfrsVersion" 120;
	setAttr ".ID" 1;
	setAttr ".pfrsName" -type "string" "BicepTwist";
	setAttr ".limbType" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "NODE_ForearmTwist_Limb_M" -p "LIMBS";
	rename -uid "63767FC7-440B-568F-B655-03AE8DBBE186";
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
	addAttr -ci true -sn "controlKeyframes" -ln "controlKeyframes" -dt "string";
	addAttr -ci true -sn "animJoints" -ln "animJoints" -dt "string";
	addAttr -ci true -sn "setDrivenGroups" -ln "setDrivenGroups" -dt "string";
	addAttr -ci true -sn "toBeBaked" -ln "toBeBaked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "isFirstIkGroupVis" -ln "isFirstIkGroupVis" -min 0 -max 1 -at "bool";
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
	setAttr ".pfrsVersion" 120;
	setAttr ".ID" 2;
	setAttr ".pfrsName" -type "string" "ForearmTwist";
	setAttr ".limbType" 2;
	setAttr ".limbParentJoint" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "NODE_Ring_Limb_M" -p "LIMBS";
	rename -uid "766033A8-43B0-5514-BC37-C28E5D53FAA5";
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
	addAttr -ci true -sn "controlKeyframes" -ln "controlKeyframes" -dt "string";
	addAttr -ci true -sn "animJoints" -ln "animJoints" -dt "string";
	addAttr -ci true -sn "setDrivenGroups" -ln "setDrivenGroups" -dt "string";
	addAttr -ci true -sn "toBeBaked" -ln "toBeBaked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "isFirstIkGroupVis" -ln "isFirstIkGroupVis" -min 0 -max 1 -at "bool";
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
	setAttr ".pfrsVersion" 120;
	setAttr ".ID" 3;
	setAttr ".pfrsName" -type "string" "Ring";
	setAttr ".limbType" 4;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "NODE_Pinkie_Limb_M" -p "LIMBS";
	rename -uid "5BFD8D39-4412-771E-856B-FCAE753A3B56";
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
	addAttr -ci true -sn "controlKeyframes" -ln "controlKeyframes" -dt "string";
	addAttr -ci true -sn "animJoints" -ln "animJoints" -dt "string";
	addAttr -ci true -sn "setDrivenGroups" -ln "setDrivenGroups" -dt "string";
	addAttr -ci true -sn "toBeBaked" -ln "toBeBaked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "isFirstIkGroupVis" -ln "isFirstIkGroupVis" -min 0 -max 1 -at "bool";
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
	setAttr ".pfrsVersion" 120;
	setAttr ".ID" 4;
	setAttr ".pfrsName" -type "string" "Pinkie";
	setAttr ".limbType" 4;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "NODE_Arm_Limb_M" -p "LIMBS";
	rename -uid "3178BD26-4967-FA83-DE97-1A92EBA180DF";
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
	addAttr -ci true -sn "controlKeyframes" -ln "controlKeyframes" -dt "string";
	addAttr -ci true -sn "animJoints" -ln "animJoints" -dt "string";
	addAttr -ci true -sn "setDrivenGroups" -ln "setDrivenGroups" -dt "string";
	addAttr -ci true -sn "toBeBaked" -ln "toBeBaked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "isFirstIkGroupVis" -ln "isFirstIkGroupVis" -min 0 -max 1 -at "bool";
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
	setAttr ".pfrsVersion" 120;
	setAttr ".ID" 5;
	setAttr ".pfrsName" -type "string" "Arm";
	setAttr ".limbType" 4;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "NODE_Clav_Limb_M" -p "LIMBS";
	rename -uid "14C46229-439E-0B06-623A-4084F234B1C9";
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
	addAttr -ci true -sn "controlKeyframes" -ln "controlKeyframes" -dt "string";
	addAttr -ci true -sn "animJoints" -ln "animJoints" -dt "string";
	addAttr -ci true -sn "setDrivenGroups" -ln "setDrivenGroups" -dt "string";
	addAttr -ci true -sn "toBeBaked" -ln "toBeBaked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "isFirstIkGroupVis" -ln "isFirstIkGroupVis" -min 0 -max 1 -at "bool";
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
	setAttr ".pfrsVersion" 120;
	setAttr ".ID" 6;
	setAttr ".pfrsName" -type "string" "Clav";
	setAttr ".limbType" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "NODE_Middle_Limb_M" -p "LIMBS";
	rename -uid "A043B8EC-41A5-3F45-D2E9-D48BFFA28652";
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
	addAttr -ci true -sn "controlKeyframes" -ln "controlKeyframes" -dt "string";
	addAttr -ci true -sn "animJoints" -ln "animJoints" -dt "string";
	addAttr -ci true -sn "setDrivenGroups" -ln "setDrivenGroups" -dt "string";
	addAttr -ci true -sn "toBeBaked" -ln "toBeBaked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "isFirstIkGroupVis" -ln "isFirstIkGroupVis" -min 0 -max 1 -at "bool";
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
	setAttr ".pfrsVersion" 120;
	setAttr ".ID" 7;
	setAttr ".pfrsName" -type "string" "Middle";
	setAttr ".limbType" 4;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "NODE_Index_Limb_M" -p "LIMBS";
	rename -uid "D143C4BD-4E33-B1BB-1FFD-F18EBD7169CE";
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
	addAttr -ci true -sn "controlKeyframes" -ln "controlKeyframes" -dt "string";
	addAttr -ci true -sn "animJoints" -ln "animJoints" -dt "string";
	addAttr -ci true -sn "setDrivenGroups" -ln "setDrivenGroups" -dt "string";
	addAttr -ci true -sn "toBeBaked" -ln "toBeBaked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "isFirstIkGroupVis" -ln "isFirstIkGroupVis" -min 0 -max 1 -at "bool";
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
	setAttr ".pfrsVersion" 120;
	setAttr ".ID" 8;
	setAttr ".pfrsName" -type "string" "Index";
	setAttr ".limbType" 4;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "NODE_Thumb_Limb_M" -p "LIMBS";
	rename -uid "78EBFE08-4839-5AC4-56FC-7DB71F805538";
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
	addAttr -ci true -sn "controlKeyframes" -ln "controlKeyframes" -dt "string";
	addAttr -ci true -sn "animJoints" -ln "animJoints" -dt "string";
	addAttr -ci true -sn "setDrivenGroups" -ln "setDrivenGroups" -dt "string";
	addAttr -ci true -sn "toBeBaked" -ln "toBeBaked" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "isFirstIkGroupVis" -ln "isFirstIkGroupVis" -min 0 -max 1 -at "bool";
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
	setAttr ".pfrsVersion" 120;
	setAttr ".ID" 9;
	setAttr ".pfrsName" -type "string" "Thumb";
	setAttr ".limbType" 4;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "MESHES" -p "TEMP_RigRoot";
	rename -uid "1836FE90-4DA7-BBB8-CF30-13B6AD9759B5";
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
	setAttr ".ID" 2;
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
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.99999999999999989
		 1 1 1 1 1 0.99999999999999989 0 1 1 0 0 1 0 1 0 1 0 1 0 1 0 1 0 0.99999999999999989
		 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99999999999999989
		 1 1 1 1 0.99999999999999989 1 1 1 1 1 1 1 0.99999999999999989 1 0.99999999999999989
		 1 1 1 1 1 1 1 1 1 1 0.99999999999999989 1 1 1 0.99999999999999989 0.99999999999999989
		 1 1 1 1 1 0.99999999999999989 0.99999999999999989 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".J012" -type "doubleArray" 304 1 1 1 1 0.99999999999999989 1 1 1 1 1
		 0.99999999999999989 0.99999999999999989 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 0.99999999999999989 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1
		 1 0 1 0 1 0 0.99999999999999989 0 1 0 0.99999999999999989 0 1 0 0.99999999999999989
		 0 0 0 0 0 0 0 0 0 0 0 1 1 0.99999999999999989 1 1 0.99999999999999989 0.99999999999999989
		 1 0.99999999999999989 0.99999999999999989 1 1 1 0.99999999999999989 1 1 1 1 1 1 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1
		 1 0.99999999999999989 1 1 0.99999999999999989 1 0.99999999999999989 1 1 1 1 1 1 1
		 1 1 1 1 1 1 0.99999999999999989 1 1 1 0.99999999999999989 1 1 1 ;
	setAttr ".J014" -type "doubleArray" 304 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99999999999999989 1 1 1 1 0.99999999999999989
		 1 1 1 0.99999999999999989 1 1 1 1 1 1 1 1 1 0.99999999999999989 0.99999999999999989
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".L006" -type "doubleArray" 304 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 0.99999999999999989 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99999999999999989 1 1 1 1 0.99999999999999989
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 0.99999999999999989 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0.99999999999999989 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ;
	setAttr ".J015" -type "doubleArray" 304 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ;
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
	rename -uid "8FDC888B-4D05-4029-B13E-FEB974D9CDCF";
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
	rename -uid "28BF2CE8-42A8-9F29-0C1D-35AFC3B323CC";
	setAttr ".v" no;
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
createNode mesh -n "Arm_Mesh1Shape" -p "Arm_Mesh1";
	rename -uid "EDB40CD2-4F24-9C62-231A-D3893EB7FE2D";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -dv 1 -at "long";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "backupMesh" -ln "backupMesh" -dt "string";
	addAttr -ci true -sn "pfrsSkinCluster" -ln "pfrsSkinCluster" -dt "string";
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
	setAttr ".ID" 2;
createNode mesh -n "Arm_Mesh1ShapeOrig" -p "Arm_Mesh1";
	rename -uid "AD2B8D65-403A-67E4-319C-A183B021F401";
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
createNode transform -n "ATTACH_POINTS" -p "TEMP_RigRoot";
	rename -uid "6D84BC6A-487B-C119-AE99-9F9BF6791AD0";
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
	rename -uid "AD0D71BB-4F1F-EAD3-9C8D-03852F4D050C";
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
	rename -uid "B0C2B1D3-42EA-1EFD-E88C-E6B9CCB1AD1B";
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
	rename -uid "CC43DDFA-4E64-6332-8515-9BB0F5EA47FD";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Circle_Wire";
createNode nurbsCurve -n "Circle_WireShape" -p "Circle_Wire";
	rename -uid "DDB837A5-4697-A39B-DE17-1D95BD260AE4";
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
	rename -uid "0905FE37-4AE1-E4FF-EB14-D19E62DA35B6";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Cube_PolyShape" -p "Cube_Poly";
	rename -uid "647565D0-4F7E-D0CE-C0E4-1DB7E9823E92";
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
	rename -uid "076F5E16-49DE-B0E0-7B84-7385BB617A35";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cube_Wire";
createNode nurbsCurve -n "Cube_WireShape" -p "Cube_Wire";
	rename -uid "24F0B62E-4AB1-6383-4E9B-CDBF46580DB8";
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
	rename -uid "C12199B5-4FFB-E946-CE4F-4BAC17C53C91";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cylinder_Poly";
createNode mesh -n "Cylinder_PolyShape" -p "Cylinder_Poly";
	rename -uid "390F17FD-48E7-B80C-7BEC-0B9BC5039690";
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
	rename -uid "2762C77F-4C6D-A50A-D1D5-84A57944F796";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Diamond_Wire";
createNode nurbsCurve -n "Diamond_WireShape" -p "Diamond_Wire";
	rename -uid "E5D81A6C-4786-8DB9-BF13-8B90793C7589";
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
	rename -uid "E9F84501-4883-B25E-FC56-EF9562C5779C";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Pin_Wire";
createNode nurbsCurve -n "Pin_WireShape" -p "Pin_Wire";
	rename -uid "7D831F77-44AE-D73E-2A5E-80A663BF21E4";
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
	rename -uid "1C89131A-4023-0613-2C42-0D90C29DF66D";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Sphere_Poly";
createNode mesh -n "Sphere_PolyShape" -p "Sphere_Poly";
	rename -uid "26FE898A-428D-8E0A-A6FC-01B90198BB52";
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
	rename -uid "E6F86DC0-4F54-3A9F-90F7-799812C1921B";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Square_Wire";
createNode nurbsCurve -n "Square_WireShape" -p "Square_Wire";
	rename -uid "4ACCF100-4FA7-878A-21DD-7EB1B4845028";
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
	rename -uid "C5CFDB10-4498-D515-3718-52867168D14D";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "75F1CD7F-4B29-4F85-D90B-559938B1DBE4";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "949D0979-4482-8870-DB38-E3A6EDD3FB30";
createNode displayLayerManager -n "layerManager";
	rename -uid "F45E76E8-4941-CC7C-7570-C0872A9EA204";
	setAttr -s 9 ".dli[1:8]"  5 9 3 4 1 6 7 8;
	setAttr -s 6 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "41089FF6-4ABB-B74A-E5C4-1EAD9D288DD1";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "3BB50556-4003-51F2-8F34-A189BB569005";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "61356F95-4EF4-D16D-14C4-0AB02369D83B";
	setAttr ".g" yes;
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
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1200\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 1\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1200\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1200\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 50 -size 100 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "B6388A7B-49A3-0D39-A7F8-22A6CD85078F";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 1 -ast 0 -aet 200 ";
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
createNode shadingEngine -n "Mesh_Human_Biped_01_lambert2SG";
	rename -uid "B9666D6C-466A-5569-3967-628D8B9CDABE";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "B32DD872-4333-9F54-F1AC-148A761538DC";
createNode lambert -n "lambert2";
	rename -uid "2729B46D-402B-DD2E-0D4F-0CBA79BDCFB3";
createNode displayLayer -n "Control_Disp";
	rename -uid "22820542-4055-8690-732E-8CA58A0822CB";
	setAttr ".v" no;
	setAttr ".do" 5;
createNode displayLayer -n "Joint_Disp";
	rename -uid "214715E6-4B42-5E34-0CB2-AAA9048E20D9";
	setAttr ".dt" 2;
	setAttr ".do" 6;
createNode displayLayer -n "Meshes_Disp";
	rename -uid "422386A5-40C8-9BD2-4D81-3E92D8AFECD2";
	setAttr ".dt" 2;
	setAttr ".do" 7;
createNode materialInfo -n "materialInfo1";
	rename -uid "1494807E-4C4C-D546-A47B-B3B6C3E28097";
createNode shadingEngine -n "lambert2SG";
	rename -uid "9C2220B4-4360-D9A6-01D6-D6A4C3F55CC9";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode lambert -n "TempMaterial";
	rename -uid "31035921-4BCF-8A21-1D9E-0BAE4FB32713";
	setAttr ".c" -type "float3" 1 0.92308331 0 ;
	setAttr ".it" -type "float3" 0.69277108 0.69277108 0.69277108 ;
createNode surfaceShader -n "LControlsMaterial";
	rename -uid "8E56326E-4A6B-B0E1-856F-06B33091FC06";
	setAttr ".oc" -type "float3" 0 0 1 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "LControlsMaterialSG";
	rename -uid "94B5F7B6-49AD-3C3C-1E46-7A8D85DDE28C";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "43A652A0-41A1-04D5-D207-8182D87B58DF";
createNode surfaceShader -n "MControlsMaterial";
	rename -uid "3EE554E9-40CA-8F68-1815-AE8E87FA8282";
	setAttr ".oc" -type "float3" 1 1 0 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "MControlsMaterialSG";
	rename -uid "C3F87FFC-4945-6A51-5299-B88BF479CC90";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr -s 27 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "F5DF2D57-42AA-9965-E3D3-30BA50B67968";
createNode surfaceShader -n "RControlsMaterial";
	rename -uid "EAC4033C-477C-2361-A2DC-37A65A7E0BD2";
	setAttr ".oc" -type "float3" 1 0 0 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "RControlsMaterialSG";
	rename -uid "F083444C-4837-5093-1FA3-3783C4C5FF92";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "3F05E8EE-452B-133D-4421-B68BC605DE27";
createNode skinCluster -n "skinCluster1";
	rename -uid "4379E545-4C61-BF79-E4AF-7B8046CE2D7F";
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
	rename -uid "9112689A-4017-5E7C-878D-2BAE3C303FB6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "83C13A49-4F51-269B-DE3F-DF8225C16820";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:293]";
createNode tweak -n "tweak1";
	rename -uid "DB8C9485-4ABC-521F-5305-13AD2394B9A0";
createNode objectSet -n "skinCluster1Set";
	rename -uid "367C0484-427B-CB80-CFE0-50A29F9E7135";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "F0BC6D43-4E21-E6FD-F965-F9A60BD69766";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "B37535E5-4869-D37D-E980-0DA182DF644F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "B88ED3CC-4DAE-62F6-44AC-5CBFC5E8E2C6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId5";
	rename -uid "E007FC8D-4154-E724-72FA-5C8EADD753E8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "7B0769F3-4E26-E662-0366-43A3FF2DCC0A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "4625591B-44C0-6370-12B3-CDB12A58D47C";
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
createNode objectSet -n "skinCluster1Set1";
	rename -uid "C82FF45B-499F-B024-8641-71B31EDCB804";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode objectSet -n "tweakSet2";
	rename -uid "97DA1898-4C25-D56A-C276-9BA30118C2A7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode polyColorPerVertex -n "polyColorPerVertex1";
	rename -uid "DA244508-440D-711F-F45C-43AA69326A28";
	setAttr ".uopa" yes;
	setAttr -s 304 ".vclr";
	setAttr ".vclr[0].vxal" 1;
	setAttr -s 4 ".vclr[0].vfcl";
	setAttr ".vclr[0].vfcl[0].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[0].vfcl[0].vfal" 1;
	setAttr ".vclr[0].vfcl[9].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[0].vfcl[9].vfal" 1;
	setAttr ".vclr[0].vfcl[289].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[0].vfcl[289].vfal" 1;
	setAttr ".vclr[0].vfcl[290].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[0].vfcl[290].vfal" 1;
	setAttr ".vclr[1].vxal" 1;
	setAttr -s 5 ".vclr[1].vfcl";
	setAttr ".vclr[1].vfcl[0].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[1].vfcl[0].vfal" 1;
	setAttr ".vclr[1].vfcl[1].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[1].vfcl[1].vfal" 1;
	setAttr ".vclr[1].vfcl[265].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[1].vfcl[265].vfal" 1;
	setAttr ".vclr[1].vfcl[266].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[1].vfcl[266].vfal" 1;
	setAttr ".vclr[1].vfcl[290].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[1].vfcl[290].vfal" 1;
	setAttr ".vclr[2].vxal" 1;
	setAttr -s 4 ".vclr[2].vfcl";
	setAttr ".vclr[2].vfcl[0].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[2].vfcl[0].vfal" 1;
	setAttr ".vclr[2].vfcl[1].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[2].vfcl[1].vfal" 1;
	setAttr ".vclr[2].vfcl[195].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[2].vfcl[195].vfal" 1;
	setAttr ".vclr[2].vfcl[196].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[2].vfcl[196].vfal" 1;
	setAttr ".vclr[3].vxal" 1;
	setAttr -s 4 ".vclr[3].vfcl";
	setAttr ".vclr[3].vfcl[0].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[3].vfcl[0].vfal" 1;
	setAttr ".vclr[3].vfcl[9].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[3].vfcl[9].vfal" 1;
	setAttr ".vclr[3].vfcl[195].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[3].vfcl[195].vfal" 1;
	setAttr ".vclr[3].vfcl[204].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[3].vfcl[204].vfal" 1;
	setAttr ".vclr[4].vxal" 1;
	setAttr -s 4 ".vclr[4].vfcl";
	setAttr ".vclr[4].vfcl[1].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[4].vfcl[1].vfal" 1;
	setAttr ".vclr[4].vfcl[2].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[4].vfcl[2].vfal" 1;
	setAttr ".vclr[4].vfcl[266].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[4].vfcl[266].vfal" 1;
	setAttr ".vclr[4].vfcl[267].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[4].vfcl[267].vfal" 1;
	setAttr ".vclr[5].vxal" 1;
	setAttr -s 4 ".vclr[5].vfcl";
	setAttr ".vclr[5].vfcl[1].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[5].vfcl[1].vfal" 1;
	setAttr ".vclr[5].vfcl[2].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[5].vfcl[2].vfal" 1;
	setAttr ".vclr[5].vfcl[196].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[5].vfcl[196].vfal" 1;
	setAttr ".vclr[5].vfcl[197].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[5].vfcl[197].vfal" 1;
	setAttr ".vclr[6].vxal" 1;
	setAttr -s 4 ".vclr[6].vfcl";
	setAttr ".vclr[6].vfcl[2].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[6].vfcl[2].vfal" 1;
	setAttr ".vclr[6].vfcl[3].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[6].vfcl[3].vfal" 1;
	setAttr ".vclr[6].vfcl[267].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[6].vfcl[267].vfal" 1;
	setAttr ".vclr[6].vfcl[268].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[6].vfcl[268].vfal" 1;
	setAttr ".vclr[7].vxal" 1;
	setAttr -s 4 ".vclr[7].vfcl";
	setAttr ".vclr[7].vfcl[2].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[7].vfcl[2].vfal" 1;
	setAttr ".vclr[7].vfcl[3].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[7].vfcl[3].vfal" 1;
	setAttr ".vclr[7].vfcl[197].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[7].vfcl[197].vfal" 1;
	setAttr ".vclr[7].vfcl[198].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[7].vfcl[198].vfal" 1;
	setAttr ".vclr[8].vxal" 1;
	setAttr -s 4 ".vclr[8].vfcl";
	setAttr ".vclr[8].vfcl[3].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[8].vfcl[3].vfal" 1;
	setAttr ".vclr[8].vfcl[4].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[8].vfcl[4].vfal" 1;
	setAttr ".vclr[8].vfcl[268].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[8].vfcl[268].vfal" 1;
	setAttr ".vclr[8].vfcl[269].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[8].vfcl[269].vfal" 1;
	setAttr ".vclr[9].vxal" 1;
	setAttr -s 4 ".vclr[9].vfcl";
	setAttr ".vclr[9].vfcl[3].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[9].vfcl[3].vfal" 1;
	setAttr ".vclr[9].vfcl[4].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[9].vfcl[4].vfal" 1;
	setAttr ".vclr[9].vfcl[198].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[9].vfcl[198].vfal" 1;
	setAttr ".vclr[9].vfcl[199].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[9].vfcl[199].vfal" 1;
	setAttr ".vclr[10].vxal" 1;
	setAttr -s 4 ".vclr[10].vfcl";
	setAttr ".vclr[10].vfcl[4].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[10].vfcl[4].vfal" 1;
	setAttr ".vclr[10].vfcl[5].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[10].vfcl[5].vfal" 1;
	setAttr ".vclr[10].vfcl[269].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[10].vfcl[269].vfal" 1;
	setAttr ".vclr[10].vfcl[270].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[10].vfcl[270].vfal" 1;
	setAttr ".vclr[11].vxal" 1;
	setAttr -s 4 ".vclr[11].vfcl";
	setAttr ".vclr[11].vfcl[4].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[11].vfcl[4].vfal" 1;
	setAttr ".vclr[11].vfcl[5].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[11].vfcl[5].vfal" 1;
	setAttr ".vclr[11].vfcl[199].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[11].vfcl[199].vfal" 1;
	setAttr ".vclr[11].vfcl[200].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[11].vfcl[200].vfal" 1;
	setAttr ".vclr[12].vxal" 1;
	setAttr -s 4 ".vclr[12].vfcl";
	setAttr ".vclr[12].vfcl[5].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[12].vfcl[5].vfal" 1;
	setAttr ".vclr[12].vfcl[6].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[12].vfcl[6].vfal" 1;
	setAttr ".vclr[12].vfcl[270].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[12].vfcl[270].vfal" 1;
	setAttr ".vclr[12].vfcl[271].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[12].vfcl[271].vfal" 1;
	setAttr ".vclr[13].vxal" 1;
	setAttr -s 4 ".vclr[13].vfcl";
	setAttr ".vclr[13].vfcl[5].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[13].vfcl[5].vfal" 1;
	setAttr ".vclr[13].vfcl[6].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[13].vfcl[6].vfal" 1;
	setAttr ".vclr[13].vfcl[200].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[13].vfcl[200].vfal" 1;
	setAttr ".vclr[13].vfcl[201].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[13].vfcl[201].vfal" 1;
	setAttr ".vclr[14].vxal" 1;
	setAttr -s 4 ".vclr[14].vfcl";
	setAttr ".vclr[14].vfcl[6].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[14].vfcl[6].vfal" 1;
	setAttr ".vclr[14].vfcl[7].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[14].vfcl[7].vfal" 1;
	setAttr ".vclr[14].vfcl[271].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[14].vfcl[271].vfal" 1;
	setAttr ".vclr[14].vfcl[272].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[14].vfcl[272].vfal" 1;
	setAttr ".vclr[15].vxal" 1;
	setAttr -s 4 ".vclr[15].vfcl";
	setAttr ".vclr[15].vfcl[6].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[15].vfcl[6].vfal" 1;
	setAttr ".vclr[15].vfcl[7].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[15].vfcl[7].vfal" 1;
	setAttr ".vclr[15].vfcl[201].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[15].vfcl[201].vfal" 1;
	setAttr ".vclr[15].vfcl[202].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[15].vfcl[202].vfal" 1;
	setAttr ".vclr[16].vxal" 1;
	setAttr -s 4 ".vclr[16].vfcl";
	setAttr ".vclr[16].vfcl[7].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[16].vfcl[7].vfal" 1;
	setAttr ".vclr[16].vfcl[8].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[16].vfcl[8].vfal" 1;
	setAttr ".vclr[16].vfcl[272].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[16].vfcl[272].vfal" 1;
	setAttr ".vclr[16].vfcl[273].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[16].vfcl[273].vfal" 1;
	setAttr ".vclr[17].vxal" 1;
	setAttr -s 4 ".vclr[17].vfcl";
	setAttr ".vclr[17].vfcl[7].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[17].vfcl[7].vfal" 1;
	setAttr ".vclr[17].vfcl[8].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[17].vfcl[8].vfal" 1;
	setAttr ".vclr[17].vfcl[202].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[17].vfcl[202].vfal" 1;
	setAttr ".vclr[17].vfcl[203].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[17].vfcl[203].vfal" 1;
	setAttr ".vclr[18].vxal" 1;
	setAttr -s 4 ".vclr[18].vfcl";
	setAttr ".vclr[18].vfcl[8].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[18].vfcl[8].vfal" 1;
	setAttr ".vclr[18].vfcl[9].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[18].vfcl[9].vfal" 1;
	setAttr ".vclr[18].vfcl[273].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[18].vfcl[273].vfal" 1;
	setAttr ".vclr[18].vfcl[289].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[18].vfcl[289].vfal" 1;
	setAttr ".vclr[19].vxal" 1;
	setAttr -s 4 ".vclr[19].vfcl";
	setAttr ".vclr[19].vfcl[8].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[19].vfcl[8].vfal" 1;
	setAttr ".vclr[19].vfcl[9].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[19].vfcl[9].vfal" 1;
	setAttr ".vclr[19].vfcl[203].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[19].vfcl[203].vfal" 1;
	setAttr ".vclr[19].vfcl[204].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[19].vfcl[204].vfal" 1;
	setAttr ".vclr[20].vxal" 1;
	setAttr -s 4 ".vclr[20].vfcl";
	setAttr ".vclr[20].vfcl[10].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[20].vfcl[10].vfal" 1;
	setAttr ".vclr[20].vfcl[11].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[20].vfcl[11].vfal" 1;
	setAttr ".vclr[20].vfcl[205].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[20].vfcl[205].vfal" 1;
	setAttr ".vclr[20].vfcl[206].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[20].vfcl[206].vfal" 1;
	setAttr ".vclr[21].vxal" 1;
	setAttr -s 4 ".vclr[21].vfcl";
	setAttr ".vclr[21].vfcl[10].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[21].vfcl[10].vfal" 1;
	setAttr ".vclr[21].vfcl[11].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[21].vfcl[11].vfal" 1;
	setAttr ".vclr[21].vfcl[178].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[21].vfcl[178].vfal" 1;
	setAttr ".vclr[21].vfcl[186].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[21].vfcl[186].vfal" 1;
	setAttr ".vclr[22].vxal" 1;
	setAttr -s 4 ".vclr[22].vfcl";
	setAttr ".vclr[22].vfcl[10].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[22].vfcl[10].vfal" 1;
	setAttr ".vclr[22].vfcl[19].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[22].vfcl[19].vfal" 1;
	setAttr ".vclr[22].vfcl[178].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[22].vfcl[178].vfal" 1;
	setAttr ".vclr[22].vfcl[185].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[22].vfcl[185].vfal" 1;
	setAttr ".vclr[23].vxal" 1;
	setAttr -s 4 ".vclr[23].vfcl";
	setAttr ".vclr[23].vfcl[10].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[23].vfcl[10].vfal" 1;
	setAttr ".vclr[23].vfcl[19].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[23].vfcl[19].vfal" 1;
	setAttr ".vclr[23].vfcl[205].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[23].vfcl[205].vfal" 1;
	setAttr ".vclr[23].vfcl[214].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[23].vfcl[214].vfal" 1;
	setAttr ".vclr[24].vxal" 1;
	setAttr -s 4 ".vclr[24].vfcl";
	setAttr ".vclr[24].vfcl[11].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[24].vfcl[11].vfal" 1;
	setAttr ".vclr[24].vfcl[12].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[24].vfcl[12].vfal" 1;
	setAttr ".vclr[24].vfcl[206].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[24].vfcl[206].vfal" 1;
	setAttr ".vclr[24].vfcl[207].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[24].vfcl[207].vfal" 1;
	setAttr ".vclr[25].vxal" 1;
	setAttr -s 4 ".vclr[25].vfcl";
	setAttr ".vclr[25].vfcl[11].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[25].vfcl[11].vfal" 1;
	setAttr ".vclr[25].vfcl[12].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[25].vfcl[12].vfal" 1;
	setAttr ".vclr[25].vfcl[186].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[25].vfcl[186].vfal" 1;
	setAttr ".vclr[25].vfcl[187].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[25].vfcl[187].vfal" 1;
	setAttr ".vclr[26].vxal" 1;
	setAttr -s 4 ".vclr[26].vfcl";
	setAttr ".vclr[26].vfcl[12].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[26].vfcl[12].vfal" 1;
	setAttr ".vclr[26].vfcl[13].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[26].vfcl[13].vfal" 1;
	setAttr ".vclr[26].vfcl[207].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[26].vfcl[207].vfal" 1;
	setAttr ".vclr[26].vfcl[208].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[26].vfcl[208].vfal" 1;
	setAttr ".vclr[27].vxal" 1;
	setAttr -s 4 ".vclr[27].vfcl";
	setAttr ".vclr[27].vfcl[12].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[27].vfcl[12].vfal" 1;
	setAttr ".vclr[27].vfcl[13].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[27].vfcl[13].vfal" 1;
	setAttr ".vclr[27].vfcl[187].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[27].vfcl[187].vfal" 1;
	setAttr ".vclr[27].vfcl[188].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[27].vfcl[188].vfal" 1;
	setAttr ".vclr[28].vxal" 1;
	setAttr -s 4 ".vclr[28].vfcl";
	setAttr ".vclr[28].vfcl[13].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[28].vfcl[13].vfal" 1;
	setAttr ".vclr[28].vfcl[14].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[28].vfcl[14].vfal" 1;
	setAttr ".vclr[28].vfcl[208].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[28].vfcl[208].vfal" 1;
	setAttr ".vclr[28].vfcl[209].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[28].vfcl[209].vfal" 1;
	setAttr ".vclr[29].vxal" 1;
	setAttr -s 4 ".vclr[29].vfcl";
	setAttr ".vclr[29].vfcl[13].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[29].vfcl[13].vfal" 1;
	setAttr ".vclr[29].vfcl[14].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[29].vfcl[14].vfal" 1;
	setAttr ".vclr[29].vfcl[188].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[29].vfcl[188].vfal" 1;
	setAttr ".vclr[29].vfcl[189].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[29].vfcl[189].vfal" 1;
	setAttr ".vclr[30].vxal" 1;
	setAttr -s 4 ".vclr[30].vfcl";
	setAttr ".vclr[30].vfcl[14].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[30].vfcl[14].vfal" 1;
	setAttr ".vclr[30].vfcl[15].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[30].vfcl[15].vfal" 1;
	setAttr ".vclr[30].vfcl[209].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[30].vfcl[209].vfal" 1;
	setAttr ".vclr[30].vfcl[210].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[30].vfcl[210].vfal" 1;
	setAttr ".vclr[31].vxal" 1;
	setAttr -s 4 ".vclr[31].vfcl";
	setAttr ".vclr[31].vfcl[14].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[31].vfcl[14].vfal" 1;
	setAttr ".vclr[31].vfcl[15].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[31].vfcl[15].vfal" 1;
	setAttr ".vclr[31].vfcl[189].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[31].vfcl[189].vfal" 1;
	setAttr ".vclr[31].vfcl[191].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[31].vfcl[191].vfal" 1;
	setAttr ".vclr[32].vxal" 1;
	setAttr -s 4 ".vclr[32].vfcl";
	setAttr ".vclr[32].vfcl[15].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[32].vfcl[15].vfal" 1;
	setAttr ".vclr[32].vfcl[16].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[32].vfcl[16].vfal" 1;
	setAttr ".vclr[32].vfcl[210].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[32].vfcl[210].vfal" 1;
	setAttr ".vclr[32].vfcl[211].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[32].vfcl[211].vfal" 1;
	setAttr ".vclr[33].vxal" 1;
	setAttr -s 4 ".vclr[33].vfcl";
	setAttr ".vclr[33].vfcl[15].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[33].vfcl[15].vfal" 1;
	setAttr ".vclr[33].vfcl[16].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[33].vfcl[16].vfal" 1;
	setAttr ".vclr[33].vfcl[191].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[33].vfcl[191].vfal" 1;
	setAttr ".vclr[33].vfcl[192].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[33].vfcl[192].vfal" 1;
	setAttr ".vclr[34].vxal" 1;
	setAttr -s 4 ".vclr[34].vfcl";
	setAttr ".vclr[34].vfcl[16].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[34].vfcl[16].vfal" 1;
	setAttr ".vclr[34].vfcl[17].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[34].vfcl[17].vfal" 1;
	setAttr ".vclr[34].vfcl[211].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[34].vfcl[211].vfal" 1;
	setAttr ".vclr[34].vfcl[212].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[34].vfcl[212].vfal" 1;
	setAttr ".vclr[35].vxal" 1;
	setAttr -s 4 ".vclr[35].vfcl";
	setAttr ".vclr[35].vfcl[16].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[35].vfcl[16].vfal" 1;
	setAttr ".vclr[35].vfcl[17].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[35].vfcl[17].vfal" 1;
	setAttr ".vclr[35].vfcl[192].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[35].vfcl[192].vfal" 1;
	setAttr ".vclr[35].vfcl[193].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[35].vfcl[193].vfal" 1;
	setAttr ".vclr[36].vxal" 1;
	setAttr -s 4 ".vclr[36].vfcl";
	setAttr ".vclr[36].vfcl[17].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[36].vfcl[17].vfal" 1;
	setAttr ".vclr[36].vfcl[18].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[36].vfcl[18].vfal" 1;
	setAttr ".vclr[36].vfcl[212].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[36].vfcl[212].vfal" 1;
	setAttr ".vclr[36].vfcl[213].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[36].vfcl[213].vfal" 1;
	setAttr ".vclr[37].vxal" 1;
	setAttr -s 4 ".vclr[37].vfcl";
	setAttr ".vclr[37].vfcl[17].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[37].vfcl[17].vfal" 1;
	setAttr ".vclr[37].vfcl[18].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[37].vfcl[18].vfal" 1;
	setAttr ".vclr[37].vfcl[193].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[37].vfcl[193].vfal" 1;
	setAttr ".vclr[37].vfcl[194].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[37].vfcl[194].vfal" 1;
	setAttr ".vclr[38].vxal" 1;
	setAttr -s 4 ".vclr[38].vfcl";
	setAttr ".vclr[38].vfcl[18].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[38].vfcl[18].vfal" 1;
	setAttr ".vclr[38].vfcl[19].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[38].vfcl[19].vfal" 1;
	setAttr ".vclr[38].vfcl[213].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[38].vfcl[213].vfal" 1;
	setAttr ".vclr[38].vfcl[214].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[38].vfcl[214].vfal" 1;
	setAttr ".vclr[39].vxal" 1;
	setAttr -s 4 ".vclr[39].vfcl";
	setAttr ".vclr[39].vfcl[18].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[39].vfcl[18].vfal" 1;
	setAttr ".vclr[39].vfcl[19].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[39].vfcl[19].vfal" 1;
	setAttr ".vclr[39].vfcl[185].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[39].vfcl[185].vfal" 1;
	setAttr ".vclr[39].vfcl[194].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[39].vfcl[194].vfal" 1;
	setAttr ".vclr[40].vxal" 1;
	setAttr -s 6 ".vclr[40].vfcl";
	setAttr ".vclr[40].vfcl[20].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[40].vfcl[20].vfal" 1;
	setAttr ".vclr[40].vfcl[21].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[40].vfcl[21].vfal" 1;
	setAttr ".vclr[40].vfcl[56].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[40].vfcl[56].vfal" 1;
	setAttr ".vclr[40].vfcl[67].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[40].vfcl[67].vfal" 1;
	setAttr ".vclr[40].vfcl[81].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[40].vfcl[81].vfal" 1;
	setAttr ".vclr[40].vfcl[82].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[40].vfcl[82].vfal" 1;
	setAttr ".vclr[41].vxal" 1;
	setAttr -s 6 ".vclr[41].vfcl";
	setAttr ".vclr[41].vfcl[20].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[41].vfcl[20].vfal" 1;
	setAttr ".vclr[41].vfcl[23].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[41].vfcl[23].vfal" 1;
	setAttr ".vclr[41].vfcl[59].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[41].vfcl[59].vfal" 1;
	setAttr ".vclr[41].vfcl[63].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[41].vfcl[63].vfal" 1;
	setAttr ".vclr[41].vfcl[82].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[41].vfcl[82].vfal" 1;
	setAttr ".vclr[41].vfcl[83].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[41].vfcl[83].vfal" 1;
	setAttr ".vclr[42].vxal" 1;
	setAttr -s 4 ".vclr[42].vfcl";
	setAttr ".vclr[42].vfcl[20].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[42].vfcl[20].vfal" 1;
	setAttr ".vclr[42].vfcl[23].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[42].vfcl[23].vfal" 1;
	setAttr ".vclr[42].vfcl[24].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[42].vfcl[24].vfal" 1;
	setAttr ".vclr[42].vfcl[27].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[42].vfcl[27].vfal" 1;
	setAttr ".vclr[43].vxal" 1;
	setAttr -s 4 ".vclr[43].vfcl";
	setAttr ".vclr[43].vfcl[20].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[43].vfcl[20].vfal" 1;
	setAttr ".vclr[43].vfcl[21].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[43].vfcl[21].vfal" 1;
	setAttr ".vclr[43].vfcl[24].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[43].vfcl[24].vfal" 1;
	setAttr ".vclr[43].vfcl[25].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[43].vfcl[25].vfal" 1;
	setAttr ".vclr[44].vxal" 1;
	setAttr -s 4 ".vclr[44].vfcl";
	setAttr ".vclr[44].vfcl[21].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[44].vfcl[21].vfal" 1;
	setAttr ".vclr[44].vfcl[22].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[44].vfcl[22].vfal" 1;
	setAttr ".vclr[44].vfcl[66].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[44].vfcl[66].vfal" 1;
	setAttr ".vclr[44].vfcl[67].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[44].vfcl[67].vfal" 1;
	setAttr ".vclr[45].vxal" 1;
	setAttr -s 4 ".vclr[45].vfcl";
	setAttr ".vclr[45].vfcl[21].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[45].vfcl[21].vfal" 1;
	setAttr ".vclr[45].vfcl[22].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[45].vfcl[22].vfal" 1;
	setAttr ".vclr[45].vfcl[25].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[45].vfcl[25].vfal" 1;
	setAttr ".vclr[45].vfcl[26].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[45].vfcl[26].vfal" 1;
	setAttr ".vclr[46].vxal" 1;
	setAttr -s 5 ".vclr[46].vfcl";
	setAttr ".vclr[46].vfcl[22].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[46].vfcl[22].vfal" 1;
	setAttr ".vclr[46].vfcl[23].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[46].vfcl[23].vfal" 1;
	setAttr ".vclr[46].vfcl[52].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[46].vfcl[52].vfal" 1;
	setAttr ".vclr[46].vfcl[63].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[46].vfcl[63].vfal" 1;
	setAttr ".vclr[46].vfcl[66].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[46].vfcl[66].vfal" 1;
	setAttr ".vclr[47].vxal" 1;
	setAttr -s 4 ".vclr[47].vfcl";
	setAttr ".vclr[47].vfcl[22].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[47].vfcl[22].vfal" 1;
	setAttr ".vclr[47].vfcl[23].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[47].vfcl[23].vfal" 1;
	setAttr ".vclr[47].vfcl[26].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[47].vfcl[26].vfal" 1;
	setAttr ".vclr[47].vfcl[27].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[47].vfcl[27].vfal" 1;
	setAttr ".vclr[48].vxal" 1;
	setAttr -s 4 ".vclr[48].vfcl";
	setAttr ".vclr[48].vfcl[24].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[48].vfcl[24].vfal" 1;
	setAttr ".vclr[48].vfcl[27].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[48].vfcl[27].vfal" 1;
	setAttr ".vclr[48].vfcl[28].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[48].vfcl[28].vfal" 1;
	setAttr ".vclr[48].vfcl[31].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[48].vfcl[31].vfal" 1;
	setAttr ".vclr[49].vxal" 1;
	setAttr -s 4 ".vclr[49].vfcl";
	setAttr ".vclr[49].vfcl[24].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[49].vfcl[24].vfal" 1;
	setAttr ".vclr[49].vfcl[25].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[49].vfcl[25].vfal" 1;
	setAttr ".vclr[49].vfcl[28].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[49].vfcl[28].vfal" 1;
	setAttr ".vclr[49].vfcl[29].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[49].vfcl[29].vfal" 1;
	setAttr ".vclr[50].vxal" 1;
	setAttr -s 4 ".vclr[50].vfcl";
	setAttr ".vclr[50].vfcl[25].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[50].vfcl[25].vfal" 1;
	setAttr ".vclr[50].vfcl[26].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[50].vfcl[26].vfal" 1;
	setAttr ".vclr[50].vfcl[29].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[50].vfcl[29].vfal" 1;
	setAttr ".vclr[50].vfcl[30].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[50].vfcl[30].vfal" 1;
	setAttr ".vclr[51].vxal" 1;
	setAttr -s 4 ".vclr[51].vfcl";
	setAttr ".vclr[51].vfcl[26].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[51].vfcl[26].vfal" 1;
	setAttr ".vclr[51].vfcl[27].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[51].vfcl[27].vfal" 1;
	setAttr ".vclr[51].vfcl[30].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[51].vfcl[30].vfal" 1;
	setAttr ".vclr[51].vfcl[31].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[51].vfcl[31].vfal" 1;
	setAttr ".vclr[52].vxal" 1;
	setAttr -s 4 ".vclr[52].vfcl";
	setAttr ".vclr[52].vfcl[28].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[52].vfcl[28].vfal" 1;
	setAttr ".vclr[52].vfcl[31].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[52].vfcl[31].vfal" 1;
	setAttr ".vclr[52].vfcl[32].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[52].vfcl[32].vfal" 1;
	setAttr ".vclr[52].vfcl[35].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[52].vfcl[35].vfal" 1;
	setAttr ".vclr[53].vxal" 1;
	setAttr -s 4 ".vclr[53].vfcl";
	setAttr ".vclr[53].vfcl[28].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[53].vfcl[28].vfal" 1;
	setAttr ".vclr[53].vfcl[29].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[53].vfcl[29].vfal" 1;
	setAttr ".vclr[53].vfcl[32].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[53].vfcl[32].vfal" 1;
	setAttr ".vclr[53].vfcl[33].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[53].vfcl[33].vfal" 1;
	setAttr ".vclr[54].vxal" 1;
	setAttr -s 4 ".vclr[54].vfcl";
	setAttr ".vclr[54].vfcl[29].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[54].vfcl[29].vfal" 1;
	setAttr ".vclr[54].vfcl[30].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[54].vfcl[30].vfal" 1;
	setAttr ".vclr[54].vfcl[33].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[54].vfcl[33].vfal" 1;
	setAttr ".vclr[54].vfcl[34].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[54].vfcl[34].vfal" 1;
	setAttr ".vclr[55].vxal" 1;
	setAttr -s 4 ".vclr[55].vfcl";
	setAttr ".vclr[55].vfcl[30].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[55].vfcl[30].vfal" 1;
	setAttr ".vclr[55].vfcl[31].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[55].vfcl[31].vfal" 1;
	setAttr ".vclr[55].vfcl[34].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[55].vfcl[34].vfal" 1;
	setAttr ".vclr[55].vfcl[35].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[55].vfcl[35].vfal" 1;
	setAttr ".vclr[56].vxal" 1;
	setAttr -s 4 ".vclr[56].vfcl";
	setAttr ".vclr[56].vfcl[32].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[56].vfcl[32].vfal" 1;
	setAttr ".vclr[56].vfcl[35].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[56].vfcl[35].vfal" 1;
	setAttr ".vclr[56].vfcl[75].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[56].vfcl[75].vfal" 1;
	setAttr ".vclr[56].vfcl[78].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[56].vfcl[78].vfal" 1;
	setAttr ".vclr[57].vxal" 1;
	setAttr -s 4 ".vclr[57].vfcl";
	setAttr ".vclr[57].vfcl[32].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[57].vfcl[32].vfal" 1;
	setAttr ".vclr[57].vfcl[33].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[57].vfcl[33].vfal" 1;
	setAttr ".vclr[57].vfcl[75].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[57].vfcl[75].vfal" 1;
	setAttr ".vclr[57].vfcl[76].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[57].vfcl[76].vfal" 1;
	setAttr ".vclr[58].vxal" 1;
	setAttr -s 4 ".vclr[58].vfcl";
	setAttr ".vclr[58].vfcl[33].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[58].vfcl[33].vfal" 1;
	setAttr ".vclr[58].vfcl[34].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[58].vfcl[34].vfal" 1;
	setAttr ".vclr[58].vfcl[76].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[58].vfcl[76].vfal" 1;
	setAttr ".vclr[58].vfcl[77].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[58].vfcl[77].vfal" 1;
	setAttr ".vclr[59].vxal" 1;
	setAttr -s 4 ".vclr[59].vfcl";
	setAttr ".vclr[59].vfcl[34].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[59].vfcl[34].vfal" 1;
	setAttr ".vclr[59].vfcl[35].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[59].vfcl[35].vfal" 1;
	setAttr ".vclr[59].vfcl[77].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[59].vfcl[77].vfal" 1;
	setAttr ".vclr[59].vfcl[78].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[59].vfcl[78].vfal" 1;
	setAttr ".vclr[60].vxal" 1;
	setAttr -s 5 ".vclr[60].vfcl";
	setAttr ".vclr[60].vfcl[36].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[60].vfcl[36].vfal" 1;
	setAttr ".vclr[60].vfcl[37].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[60].vfcl[37].vfal" 1;
	setAttr ".vclr[60].vfcl[52].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[60].vfcl[52].vfal" 1;
	setAttr ".vclr[60].vfcl[53].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[60].vfcl[53].vfal" 1;
	setAttr ".vclr[60].vfcl[68].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[60].vfcl[68].vfal" 1;
	setAttr ".vclr[61].vxal" 1;
	setAttr -s 5 ".vclr[61].vfcl";
	setAttr ".vclr[61].vfcl[36].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[61].vfcl[36].vfal" 1;
	setAttr ".vclr[61].vfcl[39].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[61].vfcl[39].vfal" 1;
	setAttr ".vclr[61].vfcl[52].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[61].vfcl[52].vfal" 1;
	setAttr ".vclr[61].vfcl[63].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[61].vfcl[63].vfal" 1;
	setAttr ".vclr[61].vfcl[64].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[61].vfcl[64].vfal" 1;
	setAttr ".vclr[62].vxal" 1;
	setAttr -s 4 ".vclr[62].vfcl";
	setAttr ".vclr[62].vfcl[36].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[62].vfcl[36].vfal" 1;
	setAttr ".vclr[62].vfcl[39].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[62].vfcl[39].vfal" 1;
	setAttr ".vclr[62].vfcl[40].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[62].vfcl[40].vfal" 1;
	setAttr ".vclr[62].vfcl[43].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[62].vfcl[43].vfal" 1;
	setAttr ".vclr[63].vxal" 1;
	setAttr -s 4 ".vclr[63].vfcl";
	setAttr ".vclr[63].vfcl[36].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[63].vfcl[36].vfal" 1;
	setAttr ".vclr[63].vfcl[37].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[63].vfcl[37].vfal" 1;
	setAttr ".vclr[63].vfcl[40].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[63].vfcl[40].vfal" 1;
	setAttr ".vclr[63].vfcl[41].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[63].vfcl[41].vfal" 1;
	setAttr ".vclr[64].vxal" 1;
	setAttr -s 4 ".vclr[64].vfcl";
	setAttr ".vclr[64].vfcl[37].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[64].vfcl[37].vfal" 1;
	setAttr ".vclr[64].vfcl[38].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[64].vfcl[38].vfal" 1;
	setAttr ".vclr[64].vfcl[53].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[64].vfcl[53].vfal" 1;
	setAttr ".vclr[64].vfcl[65].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[64].vfcl[65].vfal" 1;
	setAttr ".vclr[65].vxal" 1;
	setAttr -s 4 ".vclr[65].vfcl";
	setAttr ".vclr[65].vfcl[37].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[65].vfcl[37].vfal" 1;
	setAttr ".vclr[65].vfcl[38].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[65].vfcl[38].vfal" 1;
	setAttr ".vclr[65].vfcl[41].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[65].vfcl[41].vfal" 1;
	setAttr ".vclr[65].vfcl[42].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[65].vfcl[42].vfal" 1;
	setAttr ".vclr[66].vxal" 1;
	setAttr -s 4 ".vclr[66].vfcl";
	setAttr ".vclr[66].vfcl[38].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[66].vfcl[38].vfal" 1;
	setAttr ".vclr[66].vfcl[39].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[66].vfcl[39].vfal" 1;
	setAttr ".vclr[66].vfcl[64].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[66].vfcl[64].vfal" 1;
	setAttr ".vclr[66].vfcl[65].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[66].vfcl[65].vfal" 1;
	setAttr ".vclr[67].vxal" 1;
	setAttr -s 4 ".vclr[67].vfcl";
	setAttr ".vclr[67].vfcl[38].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[67].vfcl[38].vfal" 1;
	setAttr ".vclr[67].vfcl[39].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[67].vfcl[39].vfal" 1;
	setAttr ".vclr[67].vfcl[42].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[67].vfcl[42].vfal" 1;
	setAttr ".vclr[67].vfcl[43].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[67].vfcl[43].vfal" 1;
	setAttr ".vclr[68].vxal" 1;
	setAttr -s 4 ".vclr[68].vfcl";
	setAttr ".vclr[68].vfcl[40].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[68].vfcl[40].vfal" 1;
	setAttr ".vclr[68].vfcl[43].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[68].vfcl[43].vfal" 1;
	setAttr ".vclr[68].vfcl[44].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[68].vfcl[44].vfal" 1;
	setAttr ".vclr[68].vfcl[47].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[68].vfcl[47].vfal" 1;
	setAttr ".vclr[69].vxal" 1;
	setAttr -s 4 ".vclr[69].vfcl";
	setAttr ".vclr[69].vfcl[40].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[69].vfcl[40].vfal" 1;
	setAttr ".vclr[69].vfcl[41].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[69].vfcl[41].vfal" 1;
	setAttr ".vclr[69].vfcl[44].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[69].vfcl[44].vfal" 1;
	setAttr ".vclr[69].vfcl[45].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[69].vfcl[45].vfal" 1;
	setAttr ".vclr[70].vxal" 1;
	setAttr -s 4 ".vclr[70].vfcl";
	setAttr ".vclr[70].vfcl[41].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[70].vfcl[41].vfal" 1;
	setAttr ".vclr[70].vfcl[42].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[70].vfcl[42].vfal" 1;
	setAttr ".vclr[70].vfcl[45].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[70].vfcl[45].vfal" 1;
	setAttr ".vclr[70].vfcl[46].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[70].vfcl[46].vfal" 1;
	setAttr ".vclr[71].vxal" 1;
	setAttr -s 4 ".vclr[71].vfcl";
	setAttr ".vclr[71].vfcl[42].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[71].vfcl[42].vfal" 1;
	setAttr ".vclr[71].vfcl[43].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[71].vfcl[43].vfal" 1;
	setAttr ".vclr[71].vfcl[46].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[71].vfcl[46].vfal" 1;
	setAttr ".vclr[71].vfcl[47].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[71].vfcl[47].vfal" 1;
	setAttr ".vclr[72].vxal" 1;
	setAttr -s 4 ".vclr[72].vfcl";
	setAttr ".vclr[72].vfcl[44].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[72].vfcl[44].vfal" 1;
	setAttr ".vclr[72].vfcl[47].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[72].vfcl[47].vfal" 1;
	setAttr ".vclr[72].vfcl[48].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[72].vfcl[48].vfal" 1;
	setAttr ".vclr[72].vfcl[51].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[72].vfcl[51].vfal" 1;
	setAttr ".vclr[73].vxal" 1;
	setAttr -s 4 ".vclr[73].vfcl";
	setAttr ".vclr[73].vfcl[44].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[73].vfcl[44].vfal" 1;
	setAttr ".vclr[73].vfcl[45].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[73].vfcl[45].vfal" 1;
	setAttr ".vclr[73].vfcl[48].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[73].vfcl[48].vfal" 1;
	setAttr ".vclr[73].vfcl[49].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[73].vfcl[49].vfal" 1;
	setAttr ".vclr[74].vxal" 1;
	setAttr -s 4 ".vclr[74].vfcl";
	setAttr ".vclr[74].vfcl[45].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[74].vfcl[45].vfal" 1;
	setAttr ".vclr[74].vfcl[46].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[74].vfcl[46].vfal" 1;
	setAttr ".vclr[74].vfcl[49].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[74].vfcl[49].vfal" 1;
	setAttr ".vclr[74].vfcl[50].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[74].vfcl[50].vfal" 1;
	setAttr ".vclr[75].vxal" 1;
	setAttr -s 4 ".vclr[75].vfcl";
	setAttr ".vclr[75].vfcl[46].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[75].vfcl[46].vfal" 1;
	setAttr ".vclr[75].vfcl[47].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[75].vfcl[47].vfal" 1;
	setAttr ".vclr[75].vfcl[50].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[75].vfcl[50].vfal" 1;
	setAttr ".vclr[75].vfcl[51].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[75].vfcl[51].vfal" 1;
	setAttr ".vclr[76].vxal" 1;
	setAttr -s 4 ".vclr[76].vfcl";
	setAttr ".vclr[76].vfcl[48].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[76].vfcl[48].vfal" 1;
	setAttr ".vclr[76].vfcl[51].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[76].vfcl[51].vfal" 1;
	setAttr ".vclr[76].vfcl[70].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[76].vfcl[70].vfal" 1;
	setAttr ".vclr[76].vfcl[73].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[76].vfcl[73].vfal" 1;
	setAttr ".vclr[77].vxal" 1;
	setAttr -s 4 ".vclr[77].vfcl";
	setAttr ".vclr[77].vfcl[48].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[77].vfcl[48].vfal" 1;
	setAttr ".vclr[77].vfcl[49].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[77].vfcl[49].vfal" 1;
	setAttr ".vclr[77].vfcl[70].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[77].vfcl[70].vfal" 1;
	setAttr ".vclr[77].vfcl[71].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[77].vfcl[71].vfal" 1;
	setAttr ".vclr[78].vxal" 1;
	setAttr -s 4 ".vclr[78].vfcl";
	setAttr ".vclr[78].vfcl[49].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[78].vfcl[49].vfal" 1;
	setAttr ".vclr[78].vfcl[50].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[78].vfcl[50].vfal" 1;
	setAttr ".vclr[78].vfcl[71].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[78].vfcl[71].vfal" 1;
	setAttr ".vclr[78].vfcl[72].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[78].vfcl[72].vfal" 1;
	setAttr ".vclr[79].vxal" 1;
	setAttr -s 4 ".vclr[79].vfcl";
	setAttr ".vclr[79].vfcl[50].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[79].vfcl[50].vfal" 1;
	setAttr ".vclr[79].vfcl[51].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[79].vfcl[51].vfal" 1;
	setAttr ".vclr[79].vfcl[72].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[79].vfcl[72].vfal" 1;
	setAttr ".vclr[79].vfcl[73].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[79].vfcl[73].vfal" 1;
	setAttr ".vclr[80].vxal" 1;
	setAttr -s 3 ".vclr[80].vfcl";
	setAttr ".vclr[80].vfcl[52].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[80].vfcl[52].vfal" 1;
	setAttr ".vclr[80].vfcl[66].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[80].vfcl[66].vfal" 1;
	setAttr ".vclr[80].vfcl[68].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[80].vfcl[68].vfal" 1;
	setAttr ".vclr[81].vxal" 1;
	setAttr -s 5 ".vclr[81].vfcl";
	setAttr ".vclr[81].vfcl[53].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[81].vfcl[53].vfal" 1;
	setAttr ".vclr[81].vfcl[68].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[81].vfcl[68].vfal" 1;
	setAttr ".vclr[81].vfcl[69].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[81].vfcl[69].vfal" 1;
	setAttr ".vclr[81].vfcl[148].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[81].vfcl[148].vfal" 1;
	setAttr ".vclr[81].vfcl[157].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[81].vfcl[157].vfal" 1;
	setAttr ".vclr[82].vxal" 1;
	setAttr -s 4 ".vclr[82].vfcl";
	setAttr ".vclr[82].vfcl[53].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[82].vfcl[53].vfal" 1;
	setAttr ".vclr[82].vfcl[65].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[82].vfcl[65].vfal" 1;
	setAttr ".vclr[82].vfcl[148].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[82].vfcl[148].vfal" 1;
	setAttr ".vclr[82].vfcl[149].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[82].vfcl[149].vfal" 1;
	setAttr ".vclr[83].vxal" 1;
	setAttr -s 4 ".vclr[83].vfcl";
	setAttr ".vclr[83].vfcl[54].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[83].vfcl[54].vfal" 1;
	setAttr ".vclr[83].vfcl[55].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[83].vfcl[55].vfal" 1;
	setAttr ".vclr[83].vfcl[143].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[83].vfcl[143].vfal" 1;
	setAttr ".vclr[83].vfcl[146].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[83].vfcl[146].vfal" 1;
	setAttr ".vclr[84].vxal" 1;
	setAttr -s 4 ".vclr[84].vfcl";
	setAttr ".vclr[84].vfcl[54].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[84].vfcl[54].vfal" 1;
	setAttr ".vclr[84].vfcl[55].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[84].vfcl[55].vfal" 1;
	setAttr ".vclr[84].vfcl[61].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[84].vfcl[61].vfal" 1;
	setAttr ".vclr[84].vfcl[147].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[84].vfcl[147].vfal" 1;
	setAttr ".vclr[85].vxal" 1;
	setAttr -s 4 ".vclr[85].vfcl";
	setAttr ".vclr[85].vfcl[54].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[85].vfcl[54].vfal" 1;
	setAttr ".vclr[85].vfcl[61].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[85].vfcl[61].vfal" 1;
	setAttr ".vclr[85].vfcl[122].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[85].vfcl[122].vfal" 1;
	setAttr ".vclr[85].vfcl[125].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[85].vfcl[125].vfal" 1;
	setAttr ".vclr[86].vxal" 1;
	setAttr -s 4 ".vclr[86].vfcl";
	setAttr ".vclr[86].vfcl[54].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[86].vfcl[54].vfal" 1;
	setAttr ".vclr[86].vfcl[122].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[86].vfcl[122].vfal" 1;
	setAttr ".vclr[86].vfcl[123].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[86].vfcl[123].vfal" 1;
	setAttr ".vclr[86].vfcl[143].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[86].vfcl[143].vfal" 1;
	setAttr ".vclr[87].vxal" 1;
	setAttr -s 4 ".vclr[87].vfcl";
	setAttr ".vclr[87].vfcl[55].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[87].vfcl[55].vfal" 1;
	setAttr ".vclr[87].vfcl[146].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[87].vfcl[146].vfal" 1;
	setAttr ".vclr[87].vfcl[153].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[87].vfcl[153].vfal" 1;
	setAttr ".vclr[87].vfcl[154].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[87].vfcl[154].vfal" 1;
	setAttr ".vclr[88].vxal" 1;
	setAttr -s 4 ".vclr[88].vfcl";
	setAttr ".vclr[88].vfcl[55].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[88].vfcl[55].vfal" 1;
	setAttr ".vclr[88].vfcl[147].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[88].vfcl[147].vfal" 1;
	setAttr ".vclr[88].vfcl[152].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[88].vfcl[152].vfal" 1;
	setAttr ".vclr[88].vfcl[153].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[88].vfcl[153].vfal" 1;
	setAttr ".vclr[89].vxal" 1;
	setAttr -s 4 ".vclr[89].vfcl";
	setAttr ".vclr[89].vfcl[56].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[89].vfcl[56].vfal" 1;
	setAttr ".vclr[89].vfcl[57].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[89].vfcl[57].vfal" 1;
	setAttr ".vclr[89].vfcl[58].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[89].vfcl[58].vfal" 1;
	setAttr ".vclr[89].vfcl[145].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[89].vfcl[145].vfal" 1;
	setAttr ".vclr[90].vxal" 1;
	setAttr -s 6 ".vclr[90].vfcl";
	setAttr ".vclr[90].vfcl[56].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[90].vfcl[56].vfal" 1;
	setAttr ".vclr[90].vfcl[80].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[90].vfcl[80].vfal" 1;
	setAttr ".vclr[90].vfcl[81].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[90].vfcl[81].vfal" 1;
	setAttr ".vclr[90].vfcl[102].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[90].vfcl[102].vfal" 1;
	setAttr ".vclr[90].vfcl[103].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[90].vfcl[103].vfal" 1;
	setAttr ".vclr[90].vfcl[145].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[90].vfcl[145].vfal" 1;
	setAttr ".vclr[91].vxal" 1;
	setAttr -s 4 ".vclr[91].vfcl";
	setAttr ".vclr[91].vfcl[56].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[91].vfcl[56].vfal" 1;
	setAttr ".vclr[91].vfcl[57].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[91].vfcl[57].vfal" 1;
	setAttr ".vclr[91].vfcl[67].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[91].vfcl[67].vfal" 1;
	setAttr ".vclr[91].vfcl[69].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[91].vfcl[69].vfal" 1;
	setAttr ".vclr[92].vxal" 1;
	setAttr -s 4 ".vclr[92].vfcl";
	setAttr ".vclr[92].vfcl[57].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[92].vfcl[57].vfal" 1;
	setAttr ".vclr[92].vfcl[58].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[92].vfcl[58].vfal" 1;
	setAttr ".vclr[92].vfcl[155].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[92].vfcl[155].vfal" 1;
	setAttr ".vclr[92].vfcl[156].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[92].vfcl[156].vfal" 1;
	setAttr ".vclr[93].vxal" 1;
	setAttr -s 4 ".vclr[93].vfcl";
	setAttr ".vclr[93].vfcl[57].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[93].vfcl[57].vfal" 1;
	setAttr ".vclr[93].vfcl[69].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[93].vfcl[69].vfal" 1;
	setAttr ".vclr[93].vfcl[156].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[93].vfcl[156].vfal" 1;
	setAttr ".vclr[93].vfcl[157].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[93].vfcl[157].vfal" 1;
	setAttr ".vclr[94].vxal" 1;
	setAttr -s 4 ".vclr[94].vfcl";
	setAttr ".vclr[94].vfcl[58].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[94].vfcl[58].vfal" 1;
	setAttr ".vclr[94].vfcl[143].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[94].vfcl[143].vfal" 1;
	setAttr ".vclr[94].vfcl[145].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[94].vfcl[145].vfal" 1;
	setAttr ".vclr[94].vfcl[146].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[94].vfcl[146].vfal" 1;
	setAttr ".vclr[95].vxal" 1;
	setAttr -s 4 ".vclr[95].vfcl";
	setAttr ".vclr[95].vfcl[58].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[95].vfcl[58].vfal" 1;
	setAttr ".vclr[95].vfcl[146].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[95].vfcl[146].vfal" 1;
	setAttr ".vclr[95].vfcl[154].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[95].vfcl[154].vfal" 1;
	setAttr ".vclr[95].vfcl[155].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[95].vfcl[155].vfal" 1;
	setAttr ".vclr[96].vxal" 1;
	setAttr -s 4 ".vclr[96].vfcl";
	setAttr ".vclr[96].vfcl[59].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[96].vfcl[59].vfal" 1;
	setAttr ".vclr[96].vfcl[60].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[96].vfcl[60].vfal" 1;
	setAttr ".vclr[96].vfcl[63].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[96].vfcl[63].vfal" 1;
	setAttr ".vclr[96].vfcl[64].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[96].vfcl[64].vfal" 1;
	setAttr ".vclr[97].vxal" 1;
	setAttr -s 6 ".vclr[97].vfcl";
	setAttr ".vclr[97].vfcl[59].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[97].vfcl[59].vfal" 1;
	setAttr ".vclr[97].vfcl[80].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[97].vfcl[80].vfal" 1;
	setAttr ".vclr[97].vfcl[83].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[97].vfcl[83].vfal" 1;
	setAttr ".vclr[97].vfcl[103].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[97].vfcl[103].vfal" 1;
	setAttr ".vclr[97].vfcl[104].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[97].vfcl[104].vfal" 1;
	setAttr ".vclr[97].vfcl[144].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[97].vfcl[144].vfal" 1;
	setAttr ".vclr[98].vxal" 1;
	setAttr -s 4 ".vclr[98].vfcl";
	setAttr ".vclr[98].vfcl[59].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[98].vfcl[59].vfal" 1;
	setAttr ".vclr[98].vfcl[60].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[98].vfcl[60].vfal" 1;
	setAttr ".vclr[98].vfcl[62].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[98].vfcl[62].vfal" 1;
	setAttr ".vclr[98].vfcl[144].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[98].vfcl[144].vfal" 1;
	setAttr ".vclr[99].vxal" 1;
	setAttr -s 5 ".vclr[99].vfcl";
	setAttr ".vclr[99].vfcl[60].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[99].vfcl[60].vfal" 1;
	setAttr ".vclr[99].vfcl[64].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[99].vfcl[64].vfal" 1;
	setAttr ".vclr[99].vfcl[65].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[99].vfcl[65].vfal" 1;
	setAttr ".vclr[99].vfcl[149].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[99].vfcl[149].vfal" 1;
	setAttr ".vclr[99].vfcl[150].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[99].vfcl[150].vfal" 1;
	setAttr ".vclr[100].vxal" 1;
	setAttr -s 4 ".vclr[100].vfcl";
	setAttr ".vclr[100].vfcl[60].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[100].vfcl[60].vfal" 1;
	setAttr ".vclr[100].vfcl[62].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[100].vfcl[62].vfal" 1;
	setAttr ".vclr[100].vfcl[150].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[100].vfcl[150].vfal" 1;
	setAttr ".vclr[100].vfcl[151].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[100].vfcl[151].vfal" 1;
	setAttr ".vclr[101].vxal" 1;
	setAttr -s 4 ".vclr[101].vfcl";
	setAttr ".vclr[101].vfcl[61].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[101].vfcl[61].vfal" 1;
	setAttr ".vclr[101].vfcl[62].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[101].vfcl[62].vfal" 1;
	setAttr ".vclr[101].vfcl[144].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[101].vfcl[144].vfal" 1;
	setAttr ".vclr[101].vfcl[147].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[101].vfcl[147].vfal" 1;
	setAttr ".vclr[102].vxal" 1;
	setAttr -s 6 ".vclr[102].vfcl";
	setAttr ".vclr[102].vfcl[61].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[102].vfcl[61].vfal" 1;
	setAttr ".vclr[102].vfcl[101].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[102].vfcl[101].vfal" 1;
	setAttr ".vclr[102].vfcl[104].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[102].vfcl[104].vfal" 1;
	setAttr ".vclr[102].vfcl[124].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[102].vfcl[124].vfal" 1;
	setAttr ".vclr[102].vfcl[125].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[102].vfcl[125].vfal" 1;
	setAttr ".vclr[102].vfcl[144].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[102].vfcl[144].vfal" 1;
	setAttr ".vclr[103].vxal" 1;
	setAttr -s 4 ".vclr[103].vfcl";
	setAttr ".vclr[103].vfcl[62].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[103].vfcl[62].vfal" 1;
	setAttr ".vclr[103].vfcl[147].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[103].vfcl[147].vfal" 1;
	setAttr ".vclr[103].vfcl[151].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[103].vfcl[151].vfal" 1;
	setAttr ".vclr[103].vfcl[152].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[103].vfcl[152].vfal" 1;
	setAttr ".vclr[104].vxal" 1;
	setAttr -s 4 ".vclr[104].vfcl";
	setAttr ".vclr[104].vfcl[66].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[104].vfcl[66].vfal" 1;
	setAttr ".vclr[104].vfcl[67].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[104].vfcl[67].vfal" 1;
	setAttr ".vclr[104].vfcl[68].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[104].vfcl[68].vfal" 1;
	setAttr ".vclr[104].vfcl[69].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[104].vfcl[69].vfal" 1;
	setAttr ".vclr[105].vxal" 1;
	setAttr -s 3 ".vclr[105].vfcl";
	setAttr ".vclr[105].vfcl[70].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[105].vfcl[70].vfal" 1;
	setAttr ".vclr[105].vfcl[73].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[105].vfcl[73].vfal" 1;
	setAttr ".vclr[105].vfcl[74].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[105].vfcl[74].vfal" 1;
	setAttr ".vclr[106].vxal" 1;
	setAttr -s 3 ".vclr[106].vfcl";
	setAttr ".vclr[106].vfcl[70].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[106].vfcl[70].vfal" 1;
	setAttr ".vclr[106].vfcl[71].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[106].vfcl[71].vfal" 1;
	setAttr ".vclr[106].vfcl[74].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[106].vfcl[74].vfal" 1;
	setAttr ".vclr[107].vxal" 1;
	setAttr -s 3 ".vclr[107].vfcl";
	setAttr ".vclr[107].vfcl[71].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[107].vfcl[71].vfal" 1;
	setAttr ".vclr[107].vfcl[72].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[107].vfcl[72].vfal" 1;
	setAttr ".vclr[107].vfcl[74].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[107].vfcl[74].vfal" 1;
	setAttr ".vclr[108].vxal" 1;
	setAttr -s 3 ".vclr[108].vfcl";
	setAttr ".vclr[108].vfcl[72].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[108].vfcl[72].vfal" 1;
	setAttr ".vclr[108].vfcl[73].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[108].vfcl[73].vfal" 1;
	setAttr ".vclr[108].vfcl[74].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[108].vfcl[74].vfal" 1;
	setAttr ".vclr[109].vxal" 1;
	setAttr -s 3 ".vclr[109].vfcl";
	setAttr ".vclr[109].vfcl[75].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[109].vfcl[75].vfal" 1;
	setAttr ".vclr[109].vfcl[78].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[109].vfcl[78].vfal" 1;
	setAttr ".vclr[109].vfcl[79].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[109].vfcl[79].vfal" 1;
	setAttr ".vclr[110].vxal" 1;
	setAttr -s 3 ".vclr[110].vfcl";
	setAttr ".vclr[110].vfcl[75].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[110].vfcl[75].vfal" 1;
	setAttr ".vclr[110].vfcl[76].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[110].vfcl[76].vfal" 1;
	setAttr ".vclr[110].vfcl[79].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[110].vfcl[79].vfal" 1;
	setAttr ".vclr[111].vxal" 1;
	setAttr -s 3 ".vclr[111].vfcl";
	setAttr ".vclr[111].vfcl[76].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[111].vfcl[76].vfal" 1;
	setAttr ".vclr[111].vfcl[77].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[111].vfcl[77].vfal" 1;
	setAttr ".vclr[111].vfcl[79].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[111].vfcl[79].vfal" 1;
	setAttr ".vclr[112].vxal" 1;
	setAttr -s 3 ".vclr[112].vfcl";
	setAttr ".vclr[112].vfcl[77].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[112].vfcl[77].vfal" 1;
	setAttr ".vclr[112].vfcl[78].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[112].vfcl[78].vfal" 1;
	setAttr ".vclr[112].vfcl[79].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[112].vfcl[79].vfal" 1;
	setAttr ".vclr[113].vxal" 1;
	setAttr -s 4 ".vclr[113].vfcl";
	setAttr ".vclr[113].vfcl[80].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[113].vfcl[80].vfal" 1;
	setAttr ".vclr[113].vfcl[83].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[113].vfcl[83].vfal" 1;
	setAttr ".vclr[113].vfcl[84].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[113].vfcl[84].vfal" 1;
	setAttr ".vclr[113].vfcl[87].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[113].vfcl[87].vfal" 1;
	setAttr ".vclr[114].vxal" 1;
	setAttr -s 4 ".vclr[114].vfcl";
	setAttr ".vclr[114].vfcl[80].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[114].vfcl[80].vfal" 1;
	setAttr ".vclr[114].vfcl[81].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[114].vfcl[81].vfal" 1;
	setAttr ".vclr[114].vfcl[84].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[114].vfcl[84].vfal" 1;
	setAttr ".vclr[114].vfcl[85].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[114].vfcl[85].vfal" 1;
	setAttr ".vclr[115].vxal" 1;
	setAttr -s 4 ".vclr[115].vfcl";
	setAttr ".vclr[115].vfcl[81].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[115].vfcl[81].vfal" 1;
	setAttr ".vclr[115].vfcl[82].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[115].vfcl[82].vfal" 1;
	setAttr ".vclr[115].vfcl[85].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[115].vfcl[85].vfal" 1;
	setAttr ".vclr[115].vfcl[86].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[115].vfcl[86].vfal" 1;
	setAttr ".vclr[116].vxal" 1;
	setAttr -s 4 ".vclr[116].vfcl";
	setAttr ".vclr[116].vfcl[82].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[116].vfcl[82].vfal" 1;
	setAttr ".vclr[116].vfcl[83].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[116].vfcl[83].vfal" 1;
	setAttr ".vclr[116].vfcl[86].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[116].vfcl[86].vfal" 1;
	setAttr ".vclr[116].vfcl[87].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[116].vfcl[87].vfal" 1;
	setAttr ".vclr[117].vxal" 1;
	setAttr -s 4 ".vclr[117].vfcl";
	setAttr ".vclr[117].vfcl[84].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[117].vfcl[84].vfal" 1;
	setAttr ".vclr[117].vfcl[87].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[117].vfcl[87].vfal" 1;
	setAttr ".vclr[117].vfcl[88].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[117].vfcl[88].vfal" 1;
	setAttr ".vclr[117].vfcl[91].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[117].vfcl[91].vfal" 1;
	setAttr ".vclr[118].vxal" 1;
	setAttr -s 4 ".vclr[118].vfcl";
	setAttr ".vclr[118].vfcl[84].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[118].vfcl[84].vfal" 1;
	setAttr ".vclr[118].vfcl[85].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[118].vfcl[85].vfal" 1;
	setAttr ".vclr[118].vfcl[88].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[118].vfcl[88].vfal" 1;
	setAttr ".vclr[118].vfcl[89].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[118].vfcl[89].vfal" 1;
	setAttr ".vclr[119].vxal" 1;
	setAttr -s 4 ".vclr[119].vfcl";
	setAttr ".vclr[119].vfcl[85].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[119].vfcl[85].vfal" 1;
	setAttr ".vclr[119].vfcl[86].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[119].vfcl[86].vfal" 1;
	setAttr ".vclr[119].vfcl[89].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[119].vfcl[89].vfal" 1;
	setAttr ".vclr[119].vfcl[90].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[119].vfcl[90].vfal" 1;
	setAttr ".vclr[120].vxal" 1;
	setAttr -s 4 ".vclr[120].vfcl";
	setAttr ".vclr[120].vfcl[86].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[120].vfcl[86].vfal" 1;
	setAttr ".vclr[120].vfcl[87].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[120].vfcl[87].vfal" 1;
	setAttr ".vclr[120].vfcl[90].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[120].vfcl[90].vfal" 1;
	setAttr ".vclr[120].vfcl[91].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[120].vfcl[91].vfal" 1;
	setAttr ".vclr[121].vxal" 1;
	setAttr -s 4 ".vclr[121].vfcl";
	setAttr ".vclr[121].vfcl[88].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[121].vfcl[88].vfal" 1;
	setAttr ".vclr[121].vfcl[91].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[121].vfcl[91].vfal" 1;
	setAttr ".vclr[121].vfcl[92].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[121].vfcl[92].vfal" 1;
	setAttr ".vclr[121].vfcl[95].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[121].vfcl[95].vfal" 1;
	setAttr ".vclr[122].vxal" 1;
	setAttr -s 4 ".vclr[122].vfcl";
	setAttr ".vclr[122].vfcl[88].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[122].vfcl[88].vfal" 1;
	setAttr ".vclr[122].vfcl[89].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[122].vfcl[89].vfal" 1;
	setAttr ".vclr[122].vfcl[92].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[122].vfcl[92].vfal" 1;
	setAttr ".vclr[122].vfcl[93].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[122].vfcl[93].vfal" 1;
	setAttr ".vclr[123].vxal" 1;
	setAttr -s 4 ".vclr[123].vfcl";
	setAttr ".vclr[123].vfcl[89].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[123].vfcl[89].vfal" 1;
	setAttr ".vclr[123].vfcl[90].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[123].vfcl[90].vfal" 1;
	setAttr ".vclr[123].vfcl[93].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[123].vfcl[93].vfal" 1;
	setAttr ".vclr[123].vfcl[94].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[123].vfcl[94].vfal" 1;
	setAttr ".vclr[124].vxal" 1;
	setAttr -s 4 ".vclr[124].vfcl";
	setAttr ".vclr[124].vfcl[90].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[124].vfcl[90].vfal" 1;
	setAttr ".vclr[124].vfcl[91].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[124].vfcl[91].vfal" 1;
	setAttr ".vclr[124].vfcl[94].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[124].vfcl[94].vfal" 1;
	setAttr ".vclr[124].vfcl[95].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[124].vfcl[95].vfal" 1;
	setAttr ".vclr[125].vxal" 1;
	setAttr -s 4 ".vclr[125].vfcl";
	setAttr ".vclr[125].vfcl[92].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[125].vfcl[92].vfal" 1;
	setAttr ".vclr[125].vfcl[95].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[125].vfcl[95].vfal" 1;
	setAttr ".vclr[125].vfcl[96].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[125].vfcl[96].vfal" 1;
	setAttr ".vclr[125].vfcl[99].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[125].vfcl[99].vfal" 1;
	setAttr ".vclr[126].vxal" 1;
	setAttr -s 4 ".vclr[126].vfcl";
	setAttr ".vclr[126].vfcl[92].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[126].vfcl[92].vfal" 1;
	setAttr ".vclr[126].vfcl[93].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[126].vfcl[93].vfal" 1;
	setAttr ".vclr[126].vfcl[96].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[126].vfcl[96].vfal" 1;
	setAttr ".vclr[126].vfcl[97].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[126].vfcl[97].vfal" 1;
	setAttr ".vclr[127].vxal" 1;
	setAttr -s 4 ".vclr[127].vfcl";
	setAttr ".vclr[127].vfcl[93].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[127].vfcl[93].vfal" 1;
	setAttr ".vclr[127].vfcl[94].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[127].vfcl[94].vfal" 1;
	setAttr ".vclr[127].vfcl[97].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[127].vfcl[97].vfal" 1;
	setAttr ".vclr[127].vfcl[98].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[127].vfcl[98].vfal" 1;
	setAttr ".vclr[128].vxal" 1;
	setAttr -s 4 ".vclr[128].vfcl";
	setAttr ".vclr[128].vfcl[94].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[128].vfcl[94].vfal" 1;
	setAttr ".vclr[128].vfcl[95].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[128].vfcl[95].vfal" 1;
	setAttr ".vclr[128].vfcl[98].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[128].vfcl[98].vfal" 1;
	setAttr ".vclr[128].vfcl[99].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[128].vfcl[99].vfal" 1;
	setAttr ".vclr[129].vxal" 1;
	setAttr -s 3 ".vclr[129].vfcl";
	setAttr ".vclr[129].vfcl[96].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[129].vfcl[96].vfal" 1;
	setAttr ".vclr[129].vfcl[99].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[129].vfcl[99].vfal" 1;
	setAttr ".vclr[129].vfcl[100].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[129].vfcl[100].vfal" 1;
	setAttr ".vclr[130].vxal" 1;
	setAttr -s 3 ".vclr[130].vfcl";
	setAttr ".vclr[130].vfcl[96].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[130].vfcl[96].vfal" 1;
	setAttr ".vclr[130].vfcl[97].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[130].vfcl[97].vfal" 1;
	setAttr ".vclr[130].vfcl[100].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[130].vfcl[100].vfal" 1;
	setAttr ".vclr[131].vxal" 1;
	setAttr -s 3 ".vclr[131].vfcl";
	setAttr ".vclr[131].vfcl[97].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[131].vfcl[97].vfal" 1;
	setAttr ".vclr[131].vfcl[98].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[131].vfcl[98].vfal" 1;
	setAttr ".vclr[131].vfcl[100].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[131].vfcl[100].vfal" 1;
	setAttr ".vclr[132].vxal" 1;
	setAttr -s 3 ".vclr[132].vfcl";
	setAttr ".vclr[132].vfcl[98].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[132].vfcl[98].vfal" 1;
	setAttr ".vclr[132].vfcl[99].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[132].vfcl[99].vfal" 1;
	setAttr ".vclr[132].vfcl[100].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[132].vfcl[100].vfal" 1;
	setAttr ".vclr[133].vxal" 1;
	setAttr -s 6 ".vclr[133].vfcl";
	setAttr ".vclr[133].vfcl[101].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[133].vfcl[101].vfal" 1;
	setAttr ".vclr[133].vfcl[102].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[133].vfcl[102].vfal" 1;
	setAttr ".vclr[133].vfcl[123].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[133].vfcl[123].vfal" 1;
	setAttr ".vclr[133].vfcl[124].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[133].vfcl[124].vfal" 1;
	setAttr ".vclr[133].vfcl[143].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[133].vfcl[143].vfal" 1;
	setAttr ".vclr[133].vfcl[145].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[133].vfcl[145].vfal" 1;
	setAttr ".vclr[134].vxal" 1;
	setAttr -s 4 ".vclr[134].vfcl";
	setAttr ".vclr[134].vfcl[101].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[134].vfcl[101].vfal" 1;
	setAttr ".vclr[134].vfcl[104].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[134].vfcl[104].vfal" 1;
	setAttr ".vclr[134].vfcl[105].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[134].vfcl[105].vfal" 1;
	setAttr ".vclr[134].vfcl[108].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[134].vfcl[108].vfal" 1;
	setAttr ".vclr[135].vxal" 1;
	setAttr -s 4 ".vclr[135].vfcl";
	setAttr ".vclr[135].vfcl[101].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[135].vfcl[101].vfal" 1;
	setAttr ".vclr[135].vfcl[102].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[135].vfcl[102].vfal" 1;
	setAttr ".vclr[135].vfcl[105].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[135].vfcl[105].vfal" 1;
	setAttr ".vclr[135].vfcl[106].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[135].vfcl[106].vfal" 1;
	setAttr ".vclr[136].vxal" 1;
	setAttr -s 4 ".vclr[136].vfcl";
	setAttr ".vclr[136].vfcl[102].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[136].vfcl[102].vfal" 1;
	setAttr ".vclr[136].vfcl[103].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[136].vfcl[103].vfal" 1;
	setAttr ".vclr[136].vfcl[106].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[136].vfcl[106].vfal" 1;
	setAttr ".vclr[136].vfcl[107].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[136].vfcl[107].vfal" 1;
	setAttr ".vclr[137].vxal" 1;
	setAttr -s 4 ".vclr[137].vfcl";
	setAttr ".vclr[137].vfcl[103].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[137].vfcl[103].vfal" 1;
	setAttr ".vclr[137].vfcl[104].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[137].vfcl[104].vfal" 1;
	setAttr ".vclr[137].vfcl[107].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[137].vfcl[107].vfal" 1;
	setAttr ".vclr[137].vfcl[108].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[137].vfcl[108].vfal" 1;
	setAttr ".vclr[138].vxal" 1;
	setAttr -s 4 ".vclr[138].vfcl";
	setAttr ".vclr[138].vfcl[105].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[138].vfcl[105].vfal" 1;
	setAttr ".vclr[138].vfcl[108].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[138].vfcl[108].vfal" 1;
	setAttr ".vclr[138].vfcl[109].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[138].vfcl[109].vfal" 1;
	setAttr ".vclr[138].vfcl[112].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[138].vfcl[112].vfal" 1;
	setAttr ".vclr[139].vxal" 1;
	setAttr -s 4 ".vclr[139].vfcl";
	setAttr ".vclr[139].vfcl[105].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[139].vfcl[105].vfal" 1;
	setAttr ".vclr[139].vfcl[106].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[139].vfcl[106].vfal" 1;
	setAttr ".vclr[139].vfcl[109].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[139].vfcl[109].vfal" 1;
	setAttr ".vclr[139].vfcl[110].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[139].vfcl[110].vfal" 1;
	setAttr ".vclr[140].vxal" 1;
	setAttr -s 4 ".vclr[140].vfcl";
	setAttr ".vclr[140].vfcl[106].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[140].vfcl[106].vfal" 1;
	setAttr ".vclr[140].vfcl[107].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[140].vfcl[107].vfal" 1;
	setAttr ".vclr[140].vfcl[110].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[140].vfcl[110].vfal" 1;
	setAttr ".vclr[140].vfcl[111].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[140].vfcl[111].vfal" 1;
	setAttr ".vclr[141].vxal" 1;
	setAttr -s 4 ".vclr[141].vfcl";
	setAttr ".vclr[141].vfcl[107].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[141].vfcl[107].vfal" 1;
	setAttr ".vclr[141].vfcl[108].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[141].vfcl[108].vfal" 1;
	setAttr ".vclr[141].vfcl[111].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[141].vfcl[111].vfal" 1;
	setAttr ".vclr[141].vfcl[112].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[141].vfcl[112].vfal" 1;
	setAttr ".vclr[142].vxal" 1;
	setAttr -s 4 ".vclr[142].vfcl";
	setAttr ".vclr[142].vfcl[109].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[142].vfcl[109].vfal" 1;
	setAttr ".vclr[142].vfcl[112].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[142].vfcl[112].vfal" 1;
	setAttr ".vclr[142].vfcl[113].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[142].vfcl[113].vfal" 1;
	setAttr ".vclr[142].vfcl[116].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[142].vfcl[116].vfal" 1;
	setAttr ".vclr[143].vxal" 1;
	setAttr -s 4 ".vclr[143].vfcl";
	setAttr ".vclr[143].vfcl[109].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[143].vfcl[109].vfal" 1;
	setAttr ".vclr[143].vfcl[110].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[143].vfcl[110].vfal" 1;
	setAttr ".vclr[143].vfcl[113].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[143].vfcl[113].vfal" 1;
	setAttr ".vclr[143].vfcl[114].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[143].vfcl[114].vfal" 1;
	setAttr ".vclr[144].vxal" 1;
	setAttr -s 4 ".vclr[144].vfcl";
	setAttr ".vclr[144].vfcl[110].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[144].vfcl[110].vfal" 1;
	setAttr ".vclr[144].vfcl[111].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[144].vfcl[111].vfal" 1;
	setAttr ".vclr[144].vfcl[114].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[144].vfcl[114].vfal" 1;
	setAttr ".vclr[144].vfcl[115].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[144].vfcl[115].vfal" 1;
	setAttr ".vclr[145].vxal" 1;
	setAttr -s 4 ".vclr[145].vfcl";
	setAttr ".vclr[145].vfcl[111].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[145].vfcl[111].vfal" 1;
	setAttr ".vclr[145].vfcl[112].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[145].vfcl[112].vfal" 1;
	setAttr ".vclr[145].vfcl[115].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[145].vfcl[115].vfal" 1;
	setAttr ".vclr[145].vfcl[116].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[145].vfcl[116].vfal" 1;
	setAttr ".vclr[146].vxal" 1;
	setAttr -s 4 ".vclr[146].vfcl";
	setAttr ".vclr[146].vfcl[113].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[146].vfcl[113].vfal" 1;
	setAttr ".vclr[146].vfcl[116].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[146].vfcl[116].vfal" 1;
	setAttr ".vclr[146].vfcl[117].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[146].vfcl[117].vfal" 1;
	setAttr ".vclr[146].vfcl[120].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[146].vfcl[120].vfal" 1;
	setAttr ".vclr[147].vxal" 1;
	setAttr -s 4 ".vclr[147].vfcl";
	setAttr ".vclr[147].vfcl[113].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[147].vfcl[113].vfal" 1;
	setAttr ".vclr[147].vfcl[114].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[147].vfcl[114].vfal" 1;
	setAttr ".vclr[147].vfcl[117].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[147].vfcl[117].vfal" 1;
	setAttr ".vclr[147].vfcl[118].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[147].vfcl[118].vfal" 1;
	setAttr ".vclr[148].vxal" 1;
	setAttr -s 4 ".vclr[148].vfcl";
	setAttr ".vclr[148].vfcl[114].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[148].vfcl[114].vfal" 1;
	setAttr ".vclr[148].vfcl[115].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[148].vfcl[115].vfal" 1;
	setAttr ".vclr[148].vfcl[118].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[148].vfcl[118].vfal" 1;
	setAttr ".vclr[148].vfcl[119].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[148].vfcl[119].vfal" 1;
	setAttr ".vclr[149].vxal" 1;
	setAttr -s 4 ".vclr[149].vfcl";
	setAttr ".vclr[149].vfcl[115].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[149].vfcl[115].vfal" 1;
	setAttr ".vclr[149].vfcl[116].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[149].vfcl[116].vfal" 1;
	setAttr ".vclr[149].vfcl[119].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[149].vfcl[119].vfal" 1;
	setAttr ".vclr[149].vfcl[120].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[149].vfcl[120].vfal" 1;
	setAttr ".vclr[150].vxal" 1;
	setAttr -s 3 ".vclr[150].vfcl";
	setAttr ".vclr[150].vfcl[117].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[150].vfcl[117].vfal" 1;
	setAttr ".vclr[150].vfcl[120].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[150].vfcl[120].vfal" 1;
	setAttr ".vclr[150].vfcl[121].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[150].vfcl[121].vfal" 1;
	setAttr ".vclr[151].vxal" 1;
	setAttr -s 3 ".vclr[151].vfcl";
	setAttr ".vclr[151].vfcl[117].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[151].vfcl[117].vfal" 1;
	setAttr ".vclr[151].vfcl[118].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[151].vfcl[118].vfal" 1;
	setAttr ".vclr[151].vfcl[121].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[151].vfcl[121].vfal" 1;
	setAttr ".vclr[152].vxal" 1;
	setAttr -s 3 ".vclr[152].vfcl";
	setAttr ".vclr[152].vfcl[118].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[152].vfcl[118].vfal" 1;
	setAttr ".vclr[152].vfcl[119].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[152].vfcl[119].vfal" 1;
	setAttr ".vclr[152].vfcl[121].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[152].vfcl[121].vfal" 1;
	setAttr ".vclr[153].vxal" 1;
	setAttr -s 3 ".vclr[153].vfcl";
	setAttr ".vclr[153].vfcl[119].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[153].vfcl[119].vfal" 1;
	setAttr ".vclr[153].vfcl[120].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[153].vfcl[120].vfal" 1;
	setAttr ".vclr[153].vfcl[121].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[153].vfcl[121].vfal" 1;
	setAttr ".vclr[154].vxal" 1;
	setAttr -s 4 ".vclr[154].vfcl";
	setAttr ".vclr[154].vfcl[122].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[154].vfcl[122].vfal" 1;
	setAttr ".vclr[154].vfcl[125].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[154].vfcl[125].vfal" 1;
	setAttr ".vclr[154].vfcl[126].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[154].vfcl[126].vfal" 1;
	setAttr ".vclr[154].vfcl[129].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[154].vfcl[129].vfal" 1;
	setAttr ".vclr[155].vxal" 1;
	setAttr -s 4 ".vclr[155].vfcl";
	setAttr ".vclr[155].vfcl[122].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[155].vfcl[122].vfal" 1;
	setAttr ".vclr[155].vfcl[123].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[155].vfcl[123].vfal" 1;
	setAttr ".vclr[155].vfcl[126].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[155].vfcl[126].vfal" 1;
	setAttr ".vclr[155].vfcl[127].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[155].vfcl[127].vfal" 1;
	setAttr ".vclr[156].vxal" 1;
	setAttr -s 4 ".vclr[156].vfcl";
	setAttr ".vclr[156].vfcl[123].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[156].vfcl[123].vfal" 1;
	setAttr ".vclr[156].vfcl[124].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[156].vfcl[124].vfal" 1;
	setAttr ".vclr[156].vfcl[127].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[156].vfcl[127].vfal" 1;
	setAttr ".vclr[156].vfcl[128].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[156].vfcl[128].vfal" 1;
	setAttr ".vclr[157].vxal" 1;
	setAttr -s 4 ".vclr[157].vfcl";
	setAttr ".vclr[157].vfcl[124].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[157].vfcl[124].vfal" 1;
	setAttr ".vclr[157].vfcl[125].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[157].vfcl[125].vfal" 1;
	setAttr ".vclr[157].vfcl[128].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[157].vfcl[128].vfal" 1;
	setAttr ".vclr[157].vfcl[129].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[157].vfcl[129].vfal" 1;
	setAttr ".vclr[158].vxal" 1;
	setAttr -s 4 ".vclr[158].vfcl";
	setAttr ".vclr[158].vfcl[126].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[158].vfcl[126].vfal" 1;
	setAttr ".vclr[158].vfcl[129].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[158].vfcl[129].vfal" 1;
	setAttr ".vclr[158].vfcl[130].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[158].vfcl[130].vfal" 1;
	setAttr ".vclr[158].vfcl[133].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[158].vfcl[133].vfal" 1;
	setAttr ".vclr[159].vxal" 1;
	setAttr -s 4 ".vclr[159].vfcl";
	setAttr ".vclr[159].vfcl[126].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[159].vfcl[126].vfal" 1;
	setAttr ".vclr[159].vfcl[127].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[159].vfcl[127].vfal" 1;
	setAttr ".vclr[159].vfcl[130].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[159].vfcl[130].vfal" 1;
	setAttr ".vclr[159].vfcl[131].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[159].vfcl[131].vfal" 1;
	setAttr ".vclr[160].vxal" 1;
	setAttr -s 4 ".vclr[160].vfcl";
	setAttr ".vclr[160].vfcl[127].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[160].vfcl[127].vfal" 1;
	setAttr ".vclr[160].vfcl[128].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[160].vfcl[128].vfal" 1;
	setAttr ".vclr[160].vfcl[131].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[160].vfcl[131].vfal" 1;
	setAttr ".vclr[160].vfcl[132].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[160].vfcl[132].vfal" 1;
	setAttr ".vclr[161].vxal" 1;
	setAttr -s 4 ".vclr[161].vfcl";
	setAttr ".vclr[161].vfcl[128].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[161].vfcl[128].vfal" 1;
	setAttr ".vclr[161].vfcl[129].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[161].vfcl[129].vfal" 1;
	setAttr ".vclr[161].vfcl[132].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[161].vfcl[132].vfal" 1;
	setAttr ".vclr[161].vfcl[133].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[161].vfcl[133].vfal" 1;
	setAttr ".vclr[162].vxal" 1;
	setAttr -s 4 ".vclr[162].vfcl";
	setAttr ".vclr[162].vfcl[130].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[162].vfcl[130].vfal" 1;
	setAttr ".vclr[162].vfcl[133].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[162].vfcl[133].vfal" 1;
	setAttr ".vclr[162].vfcl[134].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[162].vfcl[134].vfal" 1;
	setAttr ".vclr[162].vfcl[137].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[162].vfcl[137].vfal" 1;
	setAttr ".vclr[163].vxal" 1;
	setAttr -s 4 ".vclr[163].vfcl";
	setAttr ".vclr[163].vfcl[130].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[163].vfcl[130].vfal" 1;
	setAttr ".vclr[163].vfcl[131].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[163].vfcl[131].vfal" 1;
	setAttr ".vclr[163].vfcl[134].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[163].vfcl[134].vfal" 1;
	setAttr ".vclr[163].vfcl[135].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[163].vfcl[135].vfal" 1;
	setAttr ".vclr[164].vxal" 1;
	setAttr -s 4 ".vclr[164].vfcl";
	setAttr ".vclr[164].vfcl[131].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[164].vfcl[131].vfal" 1;
	setAttr ".vclr[164].vfcl[132].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[164].vfcl[132].vfal" 1;
	setAttr ".vclr[164].vfcl[135].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[164].vfcl[135].vfal" 1;
	setAttr ".vclr[164].vfcl[136].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[164].vfcl[136].vfal" 1;
	setAttr ".vclr[165].vxal" 1;
	setAttr -s 4 ".vclr[165].vfcl";
	setAttr ".vclr[165].vfcl[132].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[165].vfcl[132].vfal" 1;
	setAttr ".vclr[165].vfcl[133].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[165].vfcl[133].vfal" 1;
	setAttr ".vclr[165].vfcl[136].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[165].vfcl[136].vfal" 1;
	setAttr ".vclr[165].vfcl[137].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[165].vfcl[137].vfal" 1;
	setAttr ".vclr[166].vxal" 1;
	setAttr -s 4 ".vclr[166].vfcl";
	setAttr ".vclr[166].vfcl[134].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[166].vfcl[134].vfal" 1;
	setAttr ".vclr[166].vfcl[137].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[166].vfcl[137].vfal" 1;
	setAttr ".vclr[166].vfcl[138].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[166].vfcl[138].vfal" 1;
	setAttr ".vclr[166].vfcl[141].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[166].vfcl[141].vfal" 1;
	setAttr ".vclr[167].vxal" 1;
	setAttr -s 4 ".vclr[167].vfcl";
	setAttr ".vclr[167].vfcl[134].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[167].vfcl[134].vfal" 1;
	setAttr ".vclr[167].vfcl[135].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[167].vfcl[135].vfal" 1;
	setAttr ".vclr[167].vfcl[138].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[167].vfcl[138].vfal" 1;
	setAttr ".vclr[167].vfcl[139].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[167].vfcl[139].vfal" 1;
	setAttr ".vclr[168].vxal" 1;
	setAttr -s 4 ".vclr[168].vfcl";
	setAttr ".vclr[168].vfcl[135].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[168].vfcl[135].vfal" 1;
	setAttr ".vclr[168].vfcl[136].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[168].vfcl[136].vfal" 1;
	setAttr ".vclr[168].vfcl[139].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[168].vfcl[139].vfal" 1;
	setAttr ".vclr[168].vfcl[140].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[168].vfcl[140].vfal" 1;
	setAttr ".vclr[169].vxal" 1;
	setAttr -s 4 ".vclr[169].vfcl";
	setAttr ".vclr[169].vfcl[136].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[169].vfcl[136].vfal" 1;
	setAttr ".vclr[169].vfcl[137].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[169].vfcl[137].vfal" 1;
	setAttr ".vclr[169].vfcl[140].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[169].vfcl[140].vfal" 1;
	setAttr ".vclr[169].vfcl[141].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[169].vfcl[141].vfal" 1;
	setAttr ".vclr[170].vxal" 1;
	setAttr -s 3 ".vclr[170].vfcl";
	setAttr ".vclr[170].vfcl[138].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[170].vfcl[138].vfal" 1;
	setAttr ".vclr[170].vfcl[141].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[170].vfcl[141].vfal" 1;
	setAttr ".vclr[170].vfcl[142].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[170].vfcl[142].vfal" 1;
	setAttr ".vclr[171].vxal" 1;
	setAttr -s 3 ".vclr[171].vfcl";
	setAttr ".vclr[171].vfcl[138].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[171].vfcl[138].vfal" 1;
	setAttr ".vclr[171].vfcl[139].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[171].vfcl[139].vfal" 1;
	setAttr ".vclr[171].vfcl[142].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[171].vfcl[142].vfal" 1;
	setAttr ".vclr[172].vxal" 1;
	setAttr -s 3 ".vclr[172].vfcl";
	setAttr ".vclr[172].vfcl[139].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[172].vfcl[139].vfal" 1;
	setAttr ".vclr[172].vfcl[140].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[172].vfcl[140].vfal" 1;
	setAttr ".vclr[172].vfcl[142].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[172].vfcl[142].vfal" 1;
	setAttr ".vclr[173].vxal" 1;
	setAttr -s 3 ".vclr[173].vfcl";
	setAttr ".vclr[173].vfcl[140].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[173].vfcl[140].vfal" 1;
	setAttr ".vclr[173].vfcl[141].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[173].vfcl[141].vfal" 1;
	setAttr ".vclr[173].vfcl[142].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[173].vfcl[142].vfal" 1;
	setAttr ".vclr[174].vxal" 1;
	setAttr -s 4 ".vclr[174].vfcl";
	setAttr ".vclr[174].vfcl[148].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[174].vfcl[148].vfal" 1;
	setAttr ".vclr[174].vfcl[149].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[174].vfcl[149].vfal" 1;
	setAttr ".vclr[174].vfcl[247].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[174].vfcl[247].vfal" 1;
	setAttr ".vclr[174].vfcl[257].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[174].vfcl[257].vfal" 1;
	setAttr ".vclr[175].vxal" 1;
	setAttr -s 4 ".vclr[175].vfcl";
	setAttr ".vclr[175].vfcl[148].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[175].vfcl[148].vfal" 1;
	setAttr ".vclr[175].vfcl[157].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[175].vfcl[157].vfal" 1;
	setAttr ".vclr[175].vfcl[248].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[175].vfcl[248].vfal" 1;
	setAttr ".vclr[175].vfcl[257].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[175].vfcl[257].vfal" 1;
	setAttr ".vclr[176].vxal" 1;
	setAttr -s 4 ".vclr[176].vfcl";
	setAttr ".vclr[176].vfcl[149].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[176].vfcl[149].vfal" 1;
	setAttr ".vclr[176].vfcl[150].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[176].vfcl[150].vfal" 1;
	setAttr ".vclr[176].vfcl[246].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[176].vfcl[246].vfal" 1;
	setAttr ".vclr[176].vfcl[247].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[176].vfcl[247].vfal" 1;
	setAttr ".vclr[177].vxal" 1;
	setAttr -s 4 ".vclr[177].vfcl";
	setAttr ".vclr[177].vfcl[150].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[177].vfcl[150].vfal" 1;
	setAttr ".vclr[177].vfcl[151].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[177].vfcl[151].vfal" 1;
	setAttr ".vclr[177].vfcl[246].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[177].vfcl[246].vfal" 1;
	setAttr ".vclr[177].vfcl[253].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[177].vfcl[253].vfal" 1;
	setAttr ".vclr[178].vxal" 1;
	setAttr -s 4 ".vclr[178].vfcl";
	setAttr ".vclr[178].vfcl[151].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[178].vfcl[151].vfal" 1;
	setAttr ".vclr[178].vfcl[152].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[178].vfcl[152].vfal" 1;
	setAttr ".vclr[178].vfcl[252].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[178].vfcl[252].vfal" 1;
	setAttr ".vclr[178].vfcl[253].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[178].vfcl[253].vfal" 1;
	setAttr ".vclr[179].vxal" 1;
	setAttr -s 4 ".vclr[179].vfcl";
	setAttr ".vclr[179].vfcl[152].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[179].vfcl[152].vfal" 1;
	setAttr ".vclr[179].vfcl[153].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[179].vfcl[153].vfal" 1;
	setAttr ".vclr[179].vfcl[251].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[179].vfcl[251].vfal" 1;
	setAttr ".vclr[179].vfcl[252].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[179].vfcl[252].vfal" 1;
	setAttr ".vclr[180].vxal" 1;
	setAttr -s 4 ".vclr[180].vfcl";
	setAttr ".vclr[180].vfcl[153].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[180].vfcl[153].vfal" 1;
	setAttr ".vclr[180].vfcl[154].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[180].vfcl[154].vfal" 1;
	setAttr ".vclr[180].vfcl[250].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[180].vfcl[250].vfal" 1;
	setAttr ".vclr[180].vfcl[251].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[180].vfcl[251].vfal" 1;
	setAttr ".vclr[181].vxal" 1;
	setAttr -s 4 ".vclr[181].vfcl";
	setAttr ".vclr[181].vfcl[154].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[181].vfcl[154].vfal" 1;
	setAttr ".vclr[181].vfcl[155].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[181].vfcl[155].vfal" 1;
	setAttr ".vclr[181].vfcl[250].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[181].vfcl[250].vfal" 1;
	setAttr ".vclr[181].vfcl[261].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[181].vfcl[261].vfal" 1;
	setAttr ".vclr[182].vxal" 1;
	setAttr -s 4 ".vclr[182].vfcl";
	setAttr ".vclr[182].vfcl[155].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[182].vfcl[155].vfal" 1;
	setAttr ".vclr[182].vfcl[156].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[182].vfcl[156].vfal" 1;
	setAttr ".vclr[182].vfcl[249].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[182].vfcl[249].vfal" 1;
	setAttr ".vclr[182].vfcl[261].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[182].vfcl[261].vfal" 1;
	setAttr ".vclr[183].vxal" 1;
	setAttr -s 4 ".vclr[183].vfcl";
	setAttr ".vclr[183].vfcl[156].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[183].vfcl[156].vfal" 1;
	setAttr ".vclr[183].vfcl[157].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[183].vfcl[157].vfal" 1;
	setAttr ".vclr[183].vfcl[248].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[183].vfcl[248].vfal" 1;
	setAttr ".vclr[183].vfcl[249].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[183].vfcl[249].vfal" 1;
	setAttr ".vclr[184].vxal" 1;
	setAttr -s 4 ".vclr[184].vfcl";
	setAttr ".vclr[184].vfcl[158].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[184].vfcl[158].vfal" 1;
	setAttr ".vclr[184].vfcl[159].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[184].vfcl[159].vfal" 1;
	setAttr ".vclr[184].vfcl[287].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[184].vfcl[287].vfal" 1;
	setAttr ".vclr[184].vfcl[288].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[184].vfcl[288].vfal" 1;
	setAttr ".vclr[185].vxal" 1;
	setAttr -s 4 ".vclr[185].vfcl";
	setAttr ".vclr[185].vfcl[158].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[185].vfcl[158].vfal" 1;
	setAttr ".vclr[185].vfcl[159].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[185].vfcl[159].vfal" 1;
	setAttr ".vclr[185].vfcl[168].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[185].vfcl[168].vfal" 1;
	setAttr ".vclr[185].vfcl[169].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[185].vfcl[169].vfal" 1;
	setAttr ".vclr[186].vxal" 1;
	setAttr -s 4 ".vclr[186].vfcl";
	setAttr ".vclr[186].vfcl[158].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[186].vfcl[158].vfal" 1;
	setAttr ".vclr[186].vfcl[167].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[186].vfcl[167].vfal" 1;
	setAttr ".vclr[186].vfcl[168].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[186].vfcl[168].vfal" 1;
	setAttr ".vclr[186].vfcl[177].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[186].vfcl[177].vfal" 1;
	setAttr ".vclr[187].vxal" 1;
	setAttr -s 4 ".vclr[187].vfcl";
	setAttr ".vclr[187].vfcl[158].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[187].vfcl[158].vfal" 1;
	setAttr ".vclr[187].vfcl[167].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[187].vfcl[167].vfal" 1;
	setAttr ".vclr[187].vfcl[184].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[187].vfcl[184].vfal" 1;
	setAttr ".vclr[187].vfcl[288].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[187].vfcl[288].vfal" 1;
	setAttr ".vclr[188].vxal" 1;
	setAttr -s 4 ".vclr[188].vfcl";
	setAttr ".vclr[188].vfcl[159].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[188].vfcl[159].vfal" 1;
	setAttr ".vclr[188].vfcl[160].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[188].vfcl[160].vfal" 1;
	setAttr ".vclr[188].vfcl[286].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[188].vfcl[286].vfal" 1;
	setAttr ".vclr[188].vfcl[287].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[188].vfcl[287].vfal" 1;
	setAttr ".vclr[189].vxal" 1;
	setAttr -s 4 ".vclr[189].vfcl";
	setAttr ".vclr[189].vfcl[159].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[189].vfcl[159].vfal" 1;
	setAttr ".vclr[189].vfcl[160].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[189].vfcl[160].vfal" 1;
	setAttr ".vclr[189].vfcl[169].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[189].vfcl[169].vfal" 1;
	setAttr ".vclr[189].vfcl[170].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[189].vfcl[170].vfal" 1;
	setAttr ".vclr[190].vxal" 1;
	setAttr -s 4 ".vclr[190].vfcl";
	setAttr ".vclr[190].vfcl[160].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[190].vfcl[160].vfal" 1;
	setAttr ".vclr[190].vfcl[161].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[190].vfcl[161].vfal" 1;
	setAttr ".vclr[190].vfcl[179].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[190].vfcl[179].vfal" 1;
	setAttr ".vclr[190].vfcl[286].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[190].vfcl[286].vfal" 1;
	setAttr ".vclr[191].vxal" 1;
	setAttr -s 4 ".vclr[191].vfcl";
	setAttr ".vclr[191].vfcl[160].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[191].vfcl[160].vfal" 1;
	setAttr ".vclr[191].vfcl[161].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[191].vfcl[161].vfal" 1;
	setAttr ".vclr[191].vfcl[170].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[191].vfcl[170].vfal" 1;
	setAttr ".vclr[191].vfcl[171].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[191].vfcl[171].vfal" 1;
	setAttr ".vclr[192].vxal" 1;
	setAttr -s 4 ".vclr[192].vfcl";
	setAttr ".vclr[192].vfcl[161].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[192].vfcl[161].vfal" 1;
	setAttr ".vclr[192].vfcl[162].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[192].vfcl[162].vfal" 1;
	setAttr ".vclr[192].vfcl[179].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[192].vfcl[179].vfal" 1;
	setAttr ".vclr[192].vfcl[180].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[192].vfcl[180].vfal" 1;
	setAttr ".vclr[193].vxal" 1;
	setAttr -s 4 ".vclr[193].vfcl";
	setAttr ".vclr[193].vfcl[161].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[193].vfcl[161].vfal" 1;
	setAttr ".vclr[193].vfcl[162].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[193].vfcl[162].vfal" 1;
	setAttr ".vclr[193].vfcl[171].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[193].vfcl[171].vfal" 1;
	setAttr ".vclr[193].vfcl[172].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[193].vfcl[172].vfal" 1;
	setAttr ".vclr[194].vxal" 1;
	setAttr -s 4 ".vclr[194].vfcl";
	setAttr ".vclr[194].vfcl[162].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[194].vfcl[162].vfal" 1;
	setAttr ".vclr[194].vfcl[163].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[194].vfcl[163].vfal" 1;
	setAttr ".vclr[194].vfcl[180].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[194].vfcl[180].vfal" 1;
	setAttr ".vclr[194].vfcl[190].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[194].vfcl[190].vfal" 1;
	setAttr ".vclr[195].vxal" 1;
	setAttr -s 4 ".vclr[195].vfcl";
	setAttr ".vclr[195].vfcl[162].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[195].vfcl[162].vfal" 1;
	setAttr ".vclr[195].vfcl[163].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[195].vfcl[163].vfal" 1;
	setAttr ".vclr[195].vfcl[172].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[195].vfcl[172].vfal" 1;
	setAttr ".vclr[195].vfcl[173].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[195].vfcl[173].vfal" 1;
	setAttr ".vclr[196].vxal" 1;
	setAttr -s 4 ".vclr[196].vfcl";
	setAttr ".vclr[196].vfcl[163].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[196].vfcl[163].vfal" 1;
	setAttr ".vclr[196].vfcl[164].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[196].vfcl[164].vfal" 1;
	setAttr ".vclr[196].vfcl[181].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[196].vfcl[181].vfal" 1;
	setAttr ".vclr[196].vfcl[190].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[196].vfcl[190].vfal" 1;
	setAttr ".vclr[197].vxal" 1;
	setAttr -s 4 ".vclr[197].vfcl";
	setAttr ".vclr[197].vfcl[163].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[197].vfcl[163].vfal" 1;
	setAttr ".vclr[197].vfcl[164].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[197].vfcl[164].vfal" 1;
	setAttr ".vclr[197].vfcl[173].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[197].vfcl[173].vfal" 1;
	setAttr ".vclr[197].vfcl[174].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[197].vfcl[174].vfal" 1;
	setAttr ".vclr[198].vxal" 1;
	setAttr -s 4 ".vclr[198].vfcl";
	setAttr ".vclr[198].vfcl[164].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[198].vfcl[164].vfal" 1;
	setAttr ".vclr[198].vfcl[165].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[198].vfcl[165].vfal" 1;
	setAttr ".vclr[198].vfcl[181].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[198].vfcl[181].vfal" 1;
	setAttr ".vclr[198].vfcl[182].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[198].vfcl[182].vfal" 1;
	setAttr ".vclr[199].vxal" 1;
	setAttr -s 4 ".vclr[199].vfcl";
	setAttr ".vclr[199].vfcl[164].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[199].vfcl[164].vfal" 1;
	setAttr ".vclr[199].vfcl[165].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[199].vfcl[165].vfal" 1;
	setAttr ".vclr[199].vfcl[174].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[199].vfcl[174].vfal" 1;
	setAttr ".vclr[199].vfcl[175].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[199].vfcl[175].vfal" 1;
	setAttr ".vclr[200].vxal" 1;
	setAttr -s 4 ".vclr[200].vfcl";
	setAttr ".vclr[200].vfcl[165].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[200].vfcl[165].vfal" 1;
	setAttr ".vclr[200].vfcl[166].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[200].vfcl[166].vfal" 1;
	setAttr ".vclr[200].vfcl[182].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[200].vfcl[182].vfal" 1;
	setAttr ".vclr[200].vfcl[183].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[200].vfcl[183].vfal" 1;
	setAttr ".vclr[201].vxal" 1;
	setAttr -s 4 ".vclr[201].vfcl";
	setAttr ".vclr[201].vfcl[165].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[201].vfcl[165].vfal" 1;
	setAttr ".vclr[201].vfcl[166].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[201].vfcl[166].vfal" 1;
	setAttr ".vclr[201].vfcl[175].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[201].vfcl[175].vfal" 1;
	setAttr ".vclr[201].vfcl[176].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[201].vfcl[176].vfal" 1;
	setAttr ".vclr[202].vxal" 1;
	setAttr -s 4 ".vclr[202].vfcl";
	setAttr ".vclr[202].vfcl[166].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[202].vfcl[166].vfal" 1;
	setAttr ".vclr[202].vfcl[167].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[202].vfcl[167].vfal" 1;
	setAttr ".vclr[202].vfcl[183].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[202].vfcl[183].vfal" 1;
	setAttr ".vclr[202].vfcl[184].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[202].vfcl[184].vfal" 1;
	setAttr ".vclr[203].vxal" 1;
	setAttr -s 4 ".vclr[203].vfcl";
	setAttr ".vclr[203].vfcl[166].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[203].vfcl[166].vfal" 1;
	setAttr ".vclr[203].vfcl[167].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[203].vfcl[167].vfal" 1;
	setAttr ".vclr[203].vfcl[176].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[203].vfcl[176].vfal" 1;
	setAttr ".vclr[203].vfcl[177].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[203].vfcl[177].vfal" 1;
	setAttr ".vclr[204].vxal" 1;
	setAttr -s 4 ".vclr[204].vfcl";
	setAttr ".vclr[204].vfcl[168].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[204].vfcl[168].vfal" 1;
	setAttr ".vclr[204].vfcl[169].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[204].vfcl[169].vfal" 1;
	setAttr ".vclr[204].vfcl[236].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[204].vfcl[236].vfal" 1;
	setAttr ".vclr[204].vfcl[237].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[204].vfcl[237].vfal" 1;
	setAttr ".vclr[205].vxal" 1;
	setAttr -s 4 ".vclr[205].vfcl";
	setAttr ".vclr[205].vfcl[168].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[205].vfcl[168].vfal" 1;
	setAttr ".vclr[205].vfcl[177].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[205].vfcl[177].vfal" 1;
	setAttr ".vclr[205].vfcl[236].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[205].vfcl[236].vfal" 1;
	setAttr ".vclr[205].vfcl[245].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[205].vfcl[245].vfal" 1;
	setAttr ".vclr[206].vxal" 1;
	setAttr -s 4 ".vclr[206].vfcl";
	setAttr ".vclr[206].vfcl[169].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[206].vfcl[169].vfal" 1;
	setAttr ".vclr[206].vfcl[170].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[206].vfcl[170].vfal" 1;
	setAttr ".vclr[206].vfcl[237].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[206].vfcl[237].vfal" 1;
	setAttr ".vclr[206].vfcl[238].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[206].vfcl[238].vfal" 1;
	setAttr ".vclr[207].vxal" 1;
	setAttr -s 4 ".vclr[207].vfcl";
	setAttr ".vclr[207].vfcl[170].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[207].vfcl[170].vfal" 1;
	setAttr ".vclr[207].vfcl[171].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[207].vfcl[171].vfal" 1;
	setAttr ".vclr[207].vfcl[238].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[207].vfcl[238].vfal" 1;
	setAttr ".vclr[207].vfcl[239].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[207].vfcl[239].vfal" 1;
	setAttr ".vclr[208].vxal" 1;
	setAttr -s 4 ".vclr[208].vfcl";
	setAttr ".vclr[208].vfcl[171].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[208].vfcl[171].vfal" 1;
	setAttr ".vclr[208].vfcl[172].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[208].vfcl[172].vfal" 1;
	setAttr ".vclr[208].vfcl[239].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[208].vfcl[239].vfal" 1;
	setAttr ".vclr[208].vfcl[240].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[208].vfcl[240].vfal" 1;
	setAttr ".vclr[209].vxal" 1;
	setAttr -s 4 ".vclr[209].vfcl";
	setAttr ".vclr[209].vfcl[172].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[209].vfcl[172].vfal" 1;
	setAttr ".vclr[209].vfcl[173].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[209].vfcl[173].vfal" 1;
	setAttr ".vclr[209].vfcl[240].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[209].vfcl[240].vfal" 1;
	setAttr ".vclr[209].vfcl[241].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[209].vfcl[241].vfal" 1;
	setAttr ".vclr[210].vxal" 1;
	setAttr -s 4 ".vclr[210].vfcl";
	setAttr ".vclr[210].vfcl[173].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[210].vfcl[173].vfal" 1;
	setAttr ".vclr[210].vfcl[174].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[210].vfcl[174].vfal" 1;
	setAttr ".vclr[210].vfcl[241].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[210].vfcl[241].vfal" 1;
	setAttr ".vclr[210].vfcl[242].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[210].vfcl[242].vfal" 1;
	setAttr ".vclr[211].vxal" 1;
	setAttr -s 4 ".vclr[211].vfcl";
	setAttr ".vclr[211].vfcl[174].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[211].vfcl[174].vfal" 1;
	setAttr ".vclr[211].vfcl[175].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[211].vfcl[175].vfal" 1;
	setAttr ".vclr[211].vfcl[242].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[211].vfcl[242].vfal" 1;
	setAttr ".vclr[211].vfcl[243].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[211].vfcl[243].vfal" 1;
	setAttr ".vclr[212].vxal" 1;
	setAttr -s 4 ".vclr[212].vfcl";
	setAttr ".vclr[212].vfcl[175].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[212].vfcl[175].vfal" 1;
	setAttr ".vclr[212].vfcl[176].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[212].vfcl[176].vfal" 1;
	setAttr ".vclr[212].vfcl[243].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[212].vfcl[243].vfal" 1;
	setAttr ".vclr[212].vfcl[244].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[212].vfcl[244].vfal" 1;
	setAttr ".vclr[213].vxal" 1;
	setAttr -s 4 ".vclr[213].vfcl";
	setAttr ".vclr[213].vfcl[176].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[213].vfcl[176].vfal" 1;
	setAttr ".vclr[213].vfcl[177].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[213].vfcl[177].vfal" 1;
	setAttr ".vclr[213].vfcl[244].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[213].vfcl[244].vfal" 1;
	setAttr ".vclr[213].vfcl[245].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[213].vfcl[245].vfal" 1;
	setAttr ".vclr[214].vxal" 1;
	setAttr -s 4 ".vclr[214].vfcl";
	setAttr ".vclr[214].vfcl[178].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[214].vfcl[178].vfal" 1;
	setAttr ".vclr[214].vfcl[185].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[214].vfcl[185].vfal" 1;
	setAttr ".vclr[214].vfcl[287].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[214].vfcl[287].vfal" 1;
	setAttr ".vclr[214].vfcl[288].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[214].vfcl[288].vfal" 1;
	setAttr ".vclr[215].vxal" 1;
	setAttr -s 4 ".vclr[215].vfcl";
	setAttr ".vclr[215].vfcl[178].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[215].vfcl[178].vfal" 1;
	setAttr ".vclr[215].vfcl[186].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[215].vfcl[186].vfal" 1;
	setAttr ".vclr[215].vfcl[286].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[215].vfcl[286].vfal" 1;
	setAttr ".vclr[215].vfcl[287].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[215].vfcl[287].vfal" 1;
	setAttr ".vclr[216].vxal" 1;
	setAttr -s 4 ".vclr[216].vfcl";
	setAttr ".vclr[216].vfcl[179].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[216].vfcl[179].vfal" 1;
	setAttr ".vclr[216].vfcl[186].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[216].vfcl[186].vfal" 1;
	setAttr ".vclr[216].vfcl[187].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[216].vfcl[187].vfal" 1;
	setAttr ".vclr[216].vfcl[286].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[216].vfcl[286].vfal" 1;
	setAttr ".vclr[217].vxal" 1;
	setAttr -s 4 ".vclr[217].vfcl";
	setAttr ".vclr[217].vfcl[179].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[217].vfcl[179].vfal" 1;
	setAttr ".vclr[217].vfcl[180].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[217].vfcl[180].vfal" 1;
	setAttr ".vclr[217].vfcl[187].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[217].vfcl[187].vfal" 1;
	setAttr ".vclr[217].vfcl[188].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[217].vfcl[188].vfal" 1;
	setAttr ".vclr[218].vxal" 1;
	setAttr -s 4 ".vclr[218].vfcl";
	setAttr ".vclr[218].vfcl[180].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[218].vfcl[180].vfal" 1;
	setAttr ".vclr[218].vfcl[188].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[218].vfcl[188].vfal" 1;
	setAttr ".vclr[218].vfcl[189].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[218].vfcl[189].vfal" 1;
	setAttr ".vclr[218].vfcl[190].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[218].vfcl[190].vfal" 1;
	setAttr ".vclr[219].vxal" 1;
	setAttr -s 4 ".vclr[219].vfcl";
	setAttr ".vclr[219].vfcl[181].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[219].vfcl[181].vfal" 1;
	setAttr ".vclr[219].vfcl[189].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[219].vfcl[189].vfal" 1;
	setAttr ".vclr[219].vfcl[190].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[219].vfcl[190].vfal" 1;
	setAttr ".vclr[219].vfcl[191].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[219].vfcl[191].vfal" 1;
	setAttr ".vclr[220].vxal" 1;
	setAttr -s 4 ".vclr[220].vfcl";
	setAttr ".vclr[220].vfcl[181].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[220].vfcl[181].vfal" 1;
	setAttr ".vclr[220].vfcl[182].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[220].vfcl[182].vfal" 1;
	setAttr ".vclr[220].vfcl[191].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[220].vfcl[191].vfal" 1;
	setAttr ".vclr[220].vfcl[192].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[220].vfcl[192].vfal" 1;
	setAttr ".vclr[221].vxal" 1;
	setAttr -s 4 ".vclr[221].vfcl";
	setAttr ".vclr[221].vfcl[182].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[221].vfcl[182].vfal" 1;
	setAttr ".vclr[221].vfcl[183].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[221].vfcl[183].vfal" 1;
	setAttr ".vclr[221].vfcl[192].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[221].vfcl[192].vfal" 1;
	setAttr ".vclr[221].vfcl[193].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[221].vfcl[193].vfal" 1;
	setAttr ".vclr[222].vxal" 1;
	setAttr -s 4 ".vclr[222].vfcl";
	setAttr ".vclr[222].vfcl[183].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[222].vfcl[183].vfal" 1;
	setAttr ".vclr[222].vfcl[184].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[222].vfcl[184].vfal" 1;
	setAttr ".vclr[222].vfcl[193].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[222].vfcl[193].vfal" 1;
	setAttr ".vclr[222].vfcl[194].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[222].vfcl[194].vfal" 1;
	setAttr ".vclr[223].vxal" 1;
	setAttr -s 4 ".vclr[223].vfcl";
	setAttr ".vclr[223].vfcl[184].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[223].vfcl[184].vfal" 1;
	setAttr ".vclr[223].vfcl[185].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[223].vfcl[185].vfal" 1;
	setAttr ".vclr[223].vfcl[194].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[223].vfcl[194].vfal" 1;
	setAttr ".vclr[223].vfcl[288].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[223].vfcl[288].vfal" 1;
	setAttr ".vclr[224].vxal" 1;
	setAttr -s 4 ".vclr[224].vfcl";
	setAttr ".vclr[224].vfcl[195].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[224].vfcl[195].vfal" 1;
	setAttr ".vclr[224].vfcl[196].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[224].vfcl[196].vfal" 1;
	setAttr ".vclr[224].vfcl[205].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[224].vfcl[205].vfal" 1;
	setAttr ".vclr[224].vfcl[206].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[224].vfcl[206].vfal" 1;
	setAttr ".vclr[225].vxal" 1;
	setAttr -s 4 ".vclr[225].vfcl";
	setAttr ".vclr[225].vfcl[195].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[225].vfcl[195].vfal" 1;
	setAttr ".vclr[225].vfcl[204].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[225].vfcl[204].vfal" 1;
	setAttr ".vclr[225].vfcl[205].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[225].vfcl[205].vfal" 1;
	setAttr ".vclr[225].vfcl[214].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[225].vfcl[214].vfal" 1;
	setAttr ".vclr[226].vxal" 1;
	setAttr -s 4 ".vclr[226].vfcl";
	setAttr ".vclr[226].vfcl[196].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[226].vfcl[196].vfal" 1;
	setAttr ".vclr[226].vfcl[197].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[226].vfcl[197].vfal" 1;
	setAttr ".vclr[226].vfcl[206].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[226].vfcl[206].vfal" 1;
	setAttr ".vclr[226].vfcl[207].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[226].vfcl[207].vfal" 1;
	setAttr ".vclr[227].vxal" 1;
	setAttr -s 4 ".vclr[227].vfcl";
	setAttr ".vclr[227].vfcl[197].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[227].vfcl[197].vfal" 1;
	setAttr ".vclr[227].vfcl[198].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[227].vfcl[198].vfal" 1;
	setAttr ".vclr[227].vfcl[207].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[227].vfcl[207].vfal" 1;
	setAttr ".vclr[227].vfcl[208].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[227].vfcl[208].vfal" 1;
	setAttr ".vclr[228].vxal" 1;
	setAttr -s 4 ".vclr[228].vfcl";
	setAttr ".vclr[228].vfcl[198].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[228].vfcl[198].vfal" 1;
	setAttr ".vclr[228].vfcl[199].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[228].vfcl[199].vfal" 1;
	setAttr ".vclr[228].vfcl[208].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[228].vfcl[208].vfal" 1;
	setAttr ".vclr[228].vfcl[209].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[228].vfcl[209].vfal" 1;
	setAttr ".vclr[229].vxal" 1;
	setAttr -s 4 ".vclr[229].vfcl";
	setAttr ".vclr[229].vfcl[199].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[229].vfcl[199].vfal" 1;
	setAttr ".vclr[229].vfcl[200].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[229].vfcl[200].vfal" 1;
	setAttr ".vclr[229].vfcl[209].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[229].vfcl[209].vfal" 1;
	setAttr ".vclr[229].vfcl[210].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[229].vfcl[210].vfal" 1;
	setAttr ".vclr[230].vxal" 1;
	setAttr -s 4 ".vclr[230].vfcl";
	setAttr ".vclr[230].vfcl[200].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[230].vfcl[200].vfal" 1;
	setAttr ".vclr[230].vfcl[201].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[230].vfcl[201].vfal" 1;
	setAttr ".vclr[230].vfcl[210].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[230].vfcl[210].vfal" 1;
	setAttr ".vclr[230].vfcl[211].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[230].vfcl[211].vfal" 1;
	setAttr ".vclr[231].vxal" 1;
	setAttr -s 4 ".vclr[231].vfcl";
	setAttr ".vclr[231].vfcl[201].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[231].vfcl[201].vfal" 1;
	setAttr ".vclr[231].vfcl[202].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[231].vfcl[202].vfal" 1;
	setAttr ".vclr[231].vfcl[211].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[231].vfcl[211].vfal" 1;
	setAttr ".vclr[231].vfcl[212].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[231].vfcl[212].vfal" 1;
	setAttr ".vclr[232].vxal" 1;
	setAttr -s 4 ".vclr[232].vfcl";
	setAttr ".vclr[232].vfcl[202].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[232].vfcl[202].vfal" 1;
	setAttr ".vclr[232].vfcl[203].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[232].vfcl[203].vfal" 1;
	setAttr ".vclr[232].vfcl[212].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[232].vfcl[212].vfal" 1;
	setAttr ".vclr[232].vfcl[213].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[232].vfcl[213].vfal" 1;
	setAttr ".vclr[233].vxal" 1;
	setAttr -s 4 ".vclr[233].vfcl";
	setAttr ".vclr[233].vfcl[203].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[233].vfcl[203].vfal" 1;
	setAttr ".vclr[233].vfcl[204].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[233].vfcl[204].vfal" 1;
	setAttr ".vclr[233].vfcl[213].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[233].vfcl[213].vfal" 1;
	setAttr ".vclr[233].vfcl[214].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[233].vfcl[214].vfal" 1;
	setAttr ".vclr[234].vxal" 1;
	setAttr -s 4 ".vclr[234].vfcl";
	setAttr ".vclr[234].vfcl[215].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[234].vfcl[215].vfal" 1;
	setAttr ".vclr[234].vfcl[216].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[234].vfcl[216].vfal" 1;
	setAttr ".vclr[234].vfcl[226].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[234].vfcl[226].vfal" 1;
	setAttr ".vclr[234].vfcl[227].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[234].vfcl[227].vfal" 1;
	setAttr ".vclr[235].vxal" 1;
	setAttr -s 4 ".vclr[235].vfcl";
	setAttr ".vclr[235].vfcl[215].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[235].vfcl[215].vfal" 1;
	setAttr ".vclr[235].vfcl[216].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[235].vfcl[216].vfal" 1;
	setAttr ".vclr[235].vfcl[254].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[235].vfcl[254].vfal" 1;
	setAttr ".vclr[235].vfcl[255].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[235].vfcl[255].vfal" 1;
	setAttr ".vclr[236].vxal" 1;
	setAttr -s 4 ".vclr[236].vfcl";
	setAttr ".vclr[236].vfcl[215].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[236].vfcl[215].vfal" 1;
	setAttr ".vclr[236].vfcl[225].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[236].vfcl[225].vfal" 1;
	setAttr ".vclr[236].vfcl[254].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[236].vfcl[254].vfal" 1;
	setAttr ".vclr[236].vfcl[264].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[236].vfcl[264].vfal" 1;
	setAttr ".vclr[237].vxal" 1;
	setAttr -s 4 ".vclr[237].vfcl";
	setAttr ".vclr[237].vfcl[215].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[237].vfcl[215].vfal" 1;
	setAttr ".vclr[237].vfcl[225].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[237].vfcl[225].vfal" 1;
	setAttr ".vclr[237].vfcl[226].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[237].vfcl[226].vfal" 1;
	setAttr ".vclr[237].vfcl[235].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[237].vfcl[235].vfal" 1;
	setAttr ".vclr[238].vxal" 1;
	setAttr -s 4 ".vclr[238].vfcl";
	setAttr ".vclr[238].vfcl[216].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[238].vfcl[216].vfal" 1;
	setAttr ".vclr[238].vfcl[217].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[238].vfcl[217].vfal" 1;
	setAttr ".vclr[238].vfcl[227].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[238].vfcl[227].vfal" 1;
	setAttr ".vclr[238].vfcl[228].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[238].vfcl[228].vfal" 1;
	setAttr ".vclr[239].vxal" 1;
	setAttr -s 4 ".vclr[239].vfcl";
	setAttr ".vclr[239].vfcl[216].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[239].vfcl[216].vfal" 1;
	setAttr ".vclr[239].vfcl[217].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[239].vfcl[217].vfal" 1;
	setAttr ".vclr[239].vfcl[255].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[239].vfcl[255].vfal" 1;
	setAttr ".vclr[239].vfcl[256].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[239].vfcl[256].vfal" 1;
	setAttr ".vclr[240].vxal" 1;
	setAttr -s 4 ".vclr[240].vfcl";
	setAttr ".vclr[240].vfcl[217].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[240].vfcl[217].vfal" 1;
	setAttr ".vclr[240].vfcl[218].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[240].vfcl[218].vfal" 1;
	setAttr ".vclr[240].vfcl[228].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[240].vfcl[228].vfal" 1;
	setAttr ".vclr[240].vfcl[229].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[240].vfcl[229].vfal" 1;
	setAttr ".vclr[241].vxal" 1;
	setAttr -s 4 ".vclr[241].vfcl";
	setAttr ".vclr[241].vfcl[217].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[241].vfcl[217].vfal" 1;
	setAttr ".vclr[241].vfcl[218].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[241].vfcl[218].vfal" 1;
	setAttr ".vclr[241].vfcl[256].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[241].vfcl[256].vfal" 1;
	setAttr ".vclr[241].vfcl[258].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[241].vfcl[258].vfal" 1;
	setAttr ".vclr[242].vxal" 1;
	setAttr -s 4 ".vclr[242].vfcl";
	setAttr ".vclr[242].vfcl[218].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[242].vfcl[218].vfal" 1;
	setAttr ".vclr[242].vfcl[219].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[242].vfcl[219].vfal" 1;
	setAttr ".vclr[242].vfcl[258].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[242].vfcl[258].vfal" 1;
	setAttr ".vclr[242].vfcl[259].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[242].vfcl[259].vfal" 1;
	setAttr ".vclr[243].vxal" 1;
	setAttr -s 4 ".vclr[243].vfcl";
	setAttr ".vclr[243].vfcl[218].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[243].vfcl[218].vfal" 1;
	setAttr ".vclr[243].vfcl[219].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[243].vfcl[219].vfal" 1;
	setAttr ".vclr[243].vfcl[229].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[243].vfcl[229].vfal" 1;
	setAttr ".vclr[243].vfcl[230].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[243].vfcl[230].vfal" 1;
	setAttr ".vclr[244].vxal" 1;
	setAttr -s 4 ".vclr[244].vfcl";
	setAttr ".vclr[244].vfcl[219].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[244].vfcl[219].vfal" 1;
	setAttr ".vclr[244].vfcl[220].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[244].vfcl[220].vfal" 1;
	setAttr ".vclr[244].vfcl[259].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[244].vfcl[259].vfal" 1;
	setAttr ".vclr[244].vfcl[260].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[244].vfcl[260].vfal" 1;
	setAttr ".vclr[245].vxal" 1;
	setAttr -s 4 ".vclr[245].vfcl";
	setAttr ".vclr[245].vfcl[219].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[245].vfcl[219].vfal" 1;
	setAttr ".vclr[245].vfcl[220].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[245].vfcl[220].vfal" 1;
	setAttr ".vclr[245].vfcl[230].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[245].vfcl[230].vfal" 1;
	setAttr ".vclr[245].vfcl[231].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[245].vfcl[231].vfal" 1;
	setAttr ".vclr[246].vxal" 1;
	setAttr -s 4 ".vclr[246].vfcl";
	setAttr ".vclr[246].vfcl[220].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[246].vfcl[220].vfal" 1;
	setAttr ".vclr[246].vfcl[221].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[246].vfcl[221].vfal" 1;
	setAttr ".vclr[246].vfcl[260].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[246].vfcl[260].vfal" 1;
	setAttr ".vclr[246].vfcl[262].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[246].vfcl[262].vfal" 1;
	setAttr ".vclr[247].vxal" 1;
	setAttr -s 4 ".vclr[247].vfcl";
	setAttr ".vclr[247].vfcl[220].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[247].vfcl[220].vfal" 1;
	setAttr ".vclr[247].vfcl[221].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[247].vfcl[221].vfal" 1;
	setAttr ".vclr[247].vfcl[231].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[247].vfcl[231].vfal" 1;
	setAttr ".vclr[247].vfcl[232].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[247].vfcl[232].vfal" 1;
	setAttr ".vclr[248].vxal" 1;
	setAttr -s 4 ".vclr[248].vfcl";
	setAttr ".vclr[248].vfcl[221].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[248].vfcl[221].vfal" 1;
	setAttr ".vclr[248].vfcl[222].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[248].vfcl[222].vfal" 1;
	setAttr ".vclr[248].vfcl[223].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[248].vfcl[223].vfal" 1;
	setAttr ".vclr[248].vfcl[262].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[248].vfcl[262].vfal" 1;
	setAttr ".vclr[249].vxal" 1;
	setAttr -s 4 ".vclr[249].vfcl";
	setAttr ".vclr[249].vfcl[221].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[249].vfcl[221].vfal" 1;
	setAttr ".vclr[249].vfcl[222].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[249].vfcl[222].vfal" 1;
	setAttr ".vclr[249].vfcl[232].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[249].vfcl[232].vfal" 1;
	setAttr ".vclr[249].vfcl[233].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[249].vfcl[233].vfal" 1;
	setAttr ".vclr[250].vxal" 1;
	setAttr -s 4 ".vclr[250].vfcl";
	setAttr ".vclr[250].vfcl[222].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[250].vfcl[222].vfal" 1;
	setAttr ".vclr[250].vfcl[223].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[250].vfcl[223].vfal" 1;
	setAttr ".vclr[250].vfcl[224].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[250].vfcl[224].vfal" 1;
	setAttr ".vclr[250].vfcl[263].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[250].vfcl[263].vfal" 1;
	setAttr ".vclr[251].vxal" 1;
	setAttr -s 4 ".vclr[251].vfcl";
	setAttr ".vclr[251].vfcl[222].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[251].vfcl[222].vfal" 1;
	setAttr ".vclr[251].vfcl[224].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[251].vfcl[224].vfal" 1;
	setAttr ".vclr[251].vfcl[233].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[251].vfcl[233].vfal" 1;
	setAttr ".vclr[251].vfcl[234].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[251].vfcl[234].vfal" 1;
	setAttr ".vclr[252].vxal" 1;
	setAttr -s 4 ".vclr[252].vfcl";
	setAttr ".vclr[252].vfcl[224].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[252].vfcl[224].vfal" 1;
	setAttr ".vclr[252].vfcl[225].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[252].vfcl[225].vfal" 1;
	setAttr ".vclr[252].vfcl[234].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[252].vfcl[234].vfal" 1;
	setAttr ".vclr[252].vfcl[235].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[252].vfcl[235].vfal" 1;
	setAttr ".vclr[253].vxal" 1;
	setAttr -s 4 ".vclr[253].vfcl";
	setAttr ".vclr[253].vfcl[224].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[253].vfcl[224].vfal" 1;
	setAttr ".vclr[253].vfcl[225].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[253].vfcl[225].vfal" 1;
	setAttr ".vclr[253].vfcl[263].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[253].vfcl[263].vfal" 1;
	setAttr ".vclr[253].vfcl[264].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[253].vfcl[264].vfal" 1;
	setAttr ".vclr[254].vxal" 1;
	setAttr -s 4 ".vclr[254].vfcl";
	setAttr ".vclr[254].vfcl[226].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[254].vfcl[226].vfal" 1;
	setAttr ".vclr[254].vfcl[227].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[254].vfcl[227].vfal" 1;
	setAttr ".vclr[254].vfcl[236].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[254].vfcl[236].vfal" 1;
	setAttr ".vclr[254].vfcl[237].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[254].vfcl[237].vfal" 1;
	setAttr ".vclr[255].vxal" 1;
	setAttr -s 4 ".vclr[255].vfcl";
	setAttr ".vclr[255].vfcl[226].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[255].vfcl[226].vfal" 1;
	setAttr ".vclr[255].vfcl[235].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[255].vfcl[235].vfal" 1;
	setAttr ".vclr[255].vfcl[236].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[255].vfcl[236].vfal" 1;
	setAttr ".vclr[255].vfcl[245].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[255].vfcl[245].vfal" 1;
	setAttr ".vclr[256].vxal" 1;
	setAttr -s 4 ".vclr[256].vfcl";
	setAttr ".vclr[256].vfcl[227].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[256].vfcl[227].vfal" 1;
	setAttr ".vclr[256].vfcl[228].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[256].vfcl[228].vfal" 1;
	setAttr ".vclr[256].vfcl[237].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[256].vfcl[237].vfal" 1;
	setAttr ".vclr[256].vfcl[238].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[256].vfcl[238].vfal" 1;
	setAttr ".vclr[257].vxal" 1;
	setAttr -s 4 ".vclr[257].vfcl";
	setAttr ".vclr[257].vfcl[228].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[257].vfcl[228].vfal" 1;
	setAttr ".vclr[257].vfcl[229].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[257].vfcl[229].vfal" 1;
	setAttr ".vclr[257].vfcl[238].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[257].vfcl[238].vfal" 1;
	setAttr ".vclr[257].vfcl[239].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[257].vfcl[239].vfal" 1;
	setAttr ".vclr[258].vxal" 1;
	setAttr -s 4 ".vclr[258].vfcl";
	setAttr ".vclr[258].vfcl[229].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[258].vfcl[229].vfal" 1;
	setAttr ".vclr[258].vfcl[230].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[258].vfcl[230].vfal" 1;
	setAttr ".vclr[258].vfcl[239].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[258].vfcl[239].vfal" 1;
	setAttr ".vclr[258].vfcl[240].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[258].vfcl[240].vfal" 1;
	setAttr ".vclr[259].vxal" 1;
	setAttr -s 4 ".vclr[259].vfcl";
	setAttr ".vclr[259].vfcl[230].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[259].vfcl[230].vfal" 1;
	setAttr ".vclr[259].vfcl[231].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[259].vfcl[231].vfal" 1;
	setAttr ".vclr[259].vfcl[240].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[259].vfcl[240].vfal" 1;
	setAttr ".vclr[259].vfcl[241].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[259].vfcl[241].vfal" 1;
	setAttr ".vclr[260].vxal" 1;
	setAttr -s 4 ".vclr[260].vfcl";
	setAttr ".vclr[260].vfcl[231].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[260].vfcl[231].vfal" 1;
	setAttr ".vclr[260].vfcl[232].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[260].vfcl[232].vfal" 1;
	setAttr ".vclr[260].vfcl[241].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[260].vfcl[241].vfal" 1;
	setAttr ".vclr[260].vfcl[242].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[260].vfcl[242].vfal" 1;
	setAttr ".vclr[261].vxal" 1;
	setAttr -s 4 ".vclr[261].vfcl";
	setAttr ".vclr[261].vfcl[232].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[261].vfcl[232].vfal" 1;
	setAttr ".vclr[261].vfcl[233].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[261].vfcl[233].vfal" 1;
	setAttr ".vclr[261].vfcl[242].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[261].vfcl[242].vfal" 1;
	setAttr ".vclr[261].vfcl[243].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[261].vfcl[243].vfal" 1;
	setAttr ".vclr[262].vxal" 1;
	setAttr -s 4 ".vclr[262].vfcl";
	setAttr ".vclr[262].vfcl[233].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[262].vfcl[233].vfal" 1;
	setAttr ".vclr[262].vfcl[234].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[262].vfcl[234].vfal" 1;
	setAttr ".vclr[262].vfcl[243].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[262].vfcl[243].vfal" 1;
	setAttr ".vclr[262].vfcl[244].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[262].vfcl[244].vfal" 1;
	setAttr ".vclr[263].vxal" 1;
	setAttr -s 4 ".vclr[263].vfcl";
	setAttr ".vclr[263].vfcl[234].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[263].vfcl[234].vfal" 1;
	setAttr ".vclr[263].vfcl[235].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[263].vfcl[235].vfal" 1;
	setAttr ".vclr[263].vfcl[244].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[263].vfcl[244].vfal" 1;
	setAttr ".vclr[263].vfcl[245].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[263].vfcl[245].vfal" 1;
	setAttr ".vclr[264].vxal" 1;
	setAttr -s 4 ".vclr[264].vfcl";
	setAttr ".vclr[264].vfcl[246].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[264].vfcl[246].vfal" 1;
	setAttr ".vclr[264].vfcl[247].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[264].vfcl[247].vfal" 1;
	setAttr ".vclr[264].vfcl[254].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[264].vfcl[254].vfal" 1;
	setAttr ".vclr[264].vfcl[255].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[264].vfcl[255].vfal" 1;
	setAttr ".vclr[265].vxal" 1;
	setAttr -s 4 ".vclr[265].vfcl";
	setAttr ".vclr[265].vfcl[246].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[265].vfcl[246].vfal" 1;
	setAttr ".vclr[265].vfcl[253].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[265].vfcl[253].vfal" 1;
	setAttr ".vclr[265].vfcl[254].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[265].vfcl[254].vfal" 1;
	setAttr ".vclr[265].vfcl[264].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[265].vfcl[264].vfal" 1;
	setAttr ".vclr[266].vxal" 1;
	setAttr -s 4 ".vclr[266].vfcl";
	setAttr ".vclr[266].vfcl[247].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[266].vfcl[247].vfal" 1;
	setAttr ".vclr[266].vfcl[255].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[266].vfcl[255].vfal" 1;
	setAttr ".vclr[266].vfcl[256].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[266].vfcl[256].vfal" 1;
	setAttr ".vclr[266].vfcl[257].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[266].vfcl[257].vfal" 1;
	setAttr ".vclr[267].vxal" 1;
	setAttr -s 4 ".vclr[267].vfcl";
	setAttr ".vclr[267].vfcl[248].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[267].vfcl[248].vfal" 1;
	setAttr ".vclr[267].vfcl[256].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[267].vfcl[256].vfal" 1;
	setAttr ".vclr[267].vfcl[257].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[267].vfcl[257].vfal" 1;
	setAttr ".vclr[267].vfcl[258].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[267].vfcl[258].vfal" 1;
	setAttr ".vclr[268].vxal" 1;
	setAttr -s 4 ".vclr[268].vfcl";
	setAttr ".vclr[268].vfcl[248].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[268].vfcl[248].vfal" 1;
	setAttr ".vclr[268].vfcl[249].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[268].vfcl[249].vfal" 1;
	setAttr ".vclr[268].vfcl[258].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[268].vfcl[258].vfal" 1;
	setAttr ".vclr[268].vfcl[259].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[268].vfcl[259].vfal" 1;
	setAttr ".vclr[269].vxal" 1;
	setAttr -s 4 ".vclr[269].vfcl";
	setAttr ".vclr[269].vfcl[249].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[269].vfcl[249].vfal" 1;
	setAttr ".vclr[269].vfcl[259].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[269].vfcl[259].vfal" 1;
	setAttr ".vclr[269].vfcl[260].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[269].vfcl[260].vfal" 1;
	setAttr ".vclr[269].vfcl[261].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[269].vfcl[261].vfal" 1;
	setAttr ".vclr[270].vxal" 1;
	setAttr -s 4 ".vclr[270].vfcl";
	setAttr ".vclr[270].vfcl[250].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[270].vfcl[250].vfal" 1;
	setAttr ".vclr[270].vfcl[260].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[270].vfcl[260].vfal" 1;
	setAttr ".vclr[270].vfcl[261].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[270].vfcl[261].vfal" 1;
	setAttr ".vclr[270].vfcl[262].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[270].vfcl[262].vfal" 1;
	setAttr ".vclr[271].vxal" 1;
	setAttr -s 4 ".vclr[271].vfcl";
	setAttr ".vclr[271].vfcl[223].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[271].vfcl[223].vfal" 1;
	setAttr ".vclr[271].vfcl[250].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[271].vfcl[250].vfal" 1;
	setAttr ".vclr[271].vfcl[251].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[271].vfcl[251].vfal" 1;
	setAttr ".vclr[271].vfcl[262].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[271].vfcl[262].vfal" 1;
	setAttr ".vclr[272].vxal" 1;
	setAttr -s 4 ".vclr[272].vfcl";
	setAttr ".vclr[272].vfcl[223].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[272].vfcl[223].vfal" 1;
	setAttr ".vclr[272].vfcl[251].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[272].vfcl[251].vfal" 1;
	setAttr ".vclr[272].vfcl[252].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[272].vfcl[252].vfal" 1;
	setAttr ".vclr[272].vfcl[263].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[272].vfcl[263].vfal" 1;
	setAttr ".vclr[273].vxal" 1;
	setAttr -s 4 ".vclr[273].vfcl";
	setAttr ".vclr[273].vfcl[252].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[273].vfcl[252].vfal" 1;
	setAttr ".vclr[273].vfcl[253].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[273].vfcl[253].vfal" 1;
	setAttr ".vclr[273].vfcl[263].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[273].vfcl[263].vfal" 1;
	setAttr ".vclr[273].vfcl[264].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[273].vfcl[264].vfal" 1;
	setAttr ".vclr[274].vxal" 1;
	setAttr -s 3 ".vclr[274].vfcl";
	setAttr ".vclr[274].vfcl[265].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[274].vfcl[265].vfal" 1;
	setAttr ".vclr[274].vfcl[266].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[274].vfcl[266].vfal" 1;
	setAttr ".vclr[274].vfcl[291].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[274].vfcl[291].vfal" 1;
	setAttr ".vclr[275].vxal" 1;
	setAttr -s 4 ".vclr[275].vfcl";
	setAttr ".vclr[275].vfcl[266].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[275].vfcl[266].vfal" 1;
	setAttr ".vclr[275].vfcl[267].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[275].vfcl[267].vfal" 1;
	setAttr ".vclr[275].vfcl[274].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[275].vfcl[274].vfal" 1;
	setAttr ".vclr[275].vfcl[291].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[275].vfcl[291].vfal" 1;
	setAttr ".vclr[276].vxal" 1;
	setAttr -s 4 ".vclr[276].vfcl";
	setAttr ".vclr[276].vfcl[271].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[276].vfcl[271].vfal" 1;
	setAttr ".vclr[276].vfcl[272].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[276].vfcl[272].vfal" 1;
	setAttr ".vclr[276].vfcl[292].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[276].vfcl[292].vfal" 1;
	setAttr ".vclr[276].vfcl[293].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[276].vfcl[293].vfal" 1;
	setAttr ".vclr[277].vxal" 1;
	setAttr -s 3 ".vclr[277].vfcl";
	setAttr ".vclr[277].vfcl[272].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[277].vfcl[272].vfal" 1;
	setAttr ".vclr[277].vfcl[273].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[277].vfcl[273].vfal" 1;
	setAttr ".vclr[277].vfcl[292].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[277].vfcl[292].vfal" 1;
	setAttr ".vclr[278].vxal" 1;
	setAttr -s 2 ".vclr[278].vfcl";
	setAttr ".vclr[278].vfcl[273].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[278].vfcl[273].vfal" 1;
	setAttr ".vclr[278].vfcl[289].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[278].vfcl[289].vfal" 1;
	setAttr ".vclr[279].vxal" 1;
	setAttr -s 4 ".vclr[279].vfcl";
	setAttr ".vclr[279].vfcl[267].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[279].vfcl[267].vfal" 1;
	setAttr ".vclr[279].vfcl[268].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[279].vfcl[268].vfal" 1;
	setAttr ".vclr[279].vfcl[274].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[279].vfcl[274].vfal" 1;
	setAttr ".vclr[279].vfcl[275].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[279].vfcl[275].vfal" 1;
	setAttr ".vclr[280].vxal" 1;
	setAttr -s 4 ".vclr[280].vfcl";
	setAttr ".vclr[280].vfcl[268].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[280].vfcl[268].vfal" 1;
	setAttr ".vclr[280].vfcl[269].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[280].vfcl[269].vfal" 1;
	setAttr ".vclr[280].vfcl[275].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[280].vfcl[275].vfal" 1;
	setAttr ".vclr[280].vfcl[276].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[280].vfcl[276].vfal" 1;
	setAttr ".vclr[281].vxal" 1;
	setAttr -s 4 ".vclr[281].vfcl";
	setAttr ".vclr[281].vfcl[269].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[281].vfcl[269].vfal" 1;
	setAttr ".vclr[281].vfcl[270].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[281].vfcl[270].vfal" 1;
	setAttr ".vclr[281].vfcl[276].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[281].vfcl[276].vfal" 1;
	setAttr ".vclr[281].vfcl[277].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[281].vfcl[277].vfal" 1;
	setAttr ".vclr[282].vxal" 1;
	setAttr -s 4 ".vclr[282].vfcl";
	setAttr ".vclr[282].vfcl[270].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[282].vfcl[270].vfal" 1;
	setAttr ".vclr[282].vfcl[271].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[282].vfcl[271].vfal" 1;
	setAttr ".vclr[282].vfcl[277].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[282].vfcl[277].vfal" 1;
	setAttr ".vclr[282].vfcl[293].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[282].vfcl[293].vfal" 1;
	setAttr ".vclr[283].vxal" 1;
	setAttr -s 5 ".vclr[283].vfcl";
	setAttr ".vclr[283].vfcl[274].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[283].vfcl[274].vfal" 1;
	setAttr ".vclr[283].vfcl[278].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[283].vfcl[278].vfal" 1;
	setAttr ".vclr[283].vfcl[282].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[283].vfcl[282].vfal" 1;
	setAttr ".vclr[283].vfcl[283].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[283].vfcl[283].vfal" 1;
	setAttr ".vclr[283].vfcl[291].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[283].vfcl[291].vfal" 1;
	setAttr ".vclr[284].vxal" 1;
	setAttr -s 4 ".vclr[284].vfcl";
	setAttr ".vclr[284].vfcl[274].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[284].vfcl[274].vfal" 1;
	setAttr ".vclr[284].vfcl[275].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[284].vfcl[275].vfal" 1;
	setAttr ".vclr[284].vfcl[278].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[284].vfcl[278].vfal" 1;
	setAttr ".vclr[284].vfcl[279].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[284].vfcl[279].vfal" 1;
	setAttr ".vclr[285].vxal" 1;
	setAttr -s 4 ".vclr[285].vfcl";
	setAttr ".vclr[285].vfcl[275].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[285].vfcl[275].vfal" 1;
	setAttr ".vclr[285].vfcl[276].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[285].vfcl[276].vfal" 1;
	setAttr ".vclr[285].vfcl[279].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[285].vfcl[279].vfal" 1;
	setAttr ".vclr[285].vfcl[280].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[285].vfcl[280].vfal" 1;
	setAttr ".vclr[286].vxal" 1;
	setAttr -s 4 ".vclr[286].vfcl";
	setAttr ".vclr[286].vfcl[276].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[286].vfcl[276].vfal" 1;
	setAttr ".vclr[286].vfcl[277].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[286].vfcl[277].vfal" 1;
	setAttr ".vclr[286].vfcl[280].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[286].vfcl[280].vfal" 1;
	setAttr ".vclr[286].vfcl[281].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[286].vfcl[281].vfal" 1;
	setAttr ".vclr[287].vxal" 1;
	setAttr -s 3 ".vclr[287].vfcl";
	setAttr ".vclr[287].vfcl[277].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[287].vfcl[277].vfal" 1;
	setAttr ".vclr[287].vfcl[281].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[287].vfcl[281].vfal" 1;
	setAttr ".vclr[287].vfcl[293].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[287].vfcl[293].vfal" 1;
	setAttr ".vclr[288].vxal" 1;
	setAttr -s 2 ".vclr[288].vfcl";
	setAttr ".vclr[288].vfcl[278].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[288].vfcl[278].vfal" 1;
	setAttr ".vclr[288].vfcl[282].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[288].vfcl[282].vfal" 1;
	setAttr ".vclr[289].vxal" 1;
	setAttr -s 2 ".vclr[289].vfcl";
	setAttr ".vclr[289].vfcl[278].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[289].vfcl[278].vfal" 1;
	setAttr ".vclr[289].vfcl[279].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[289].vfcl[279].vfal" 1;
	setAttr ".vclr[290].vxal" 1;
	setAttr -s 2 ".vclr[290].vfcl";
	setAttr ".vclr[290].vfcl[279].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[290].vfcl[279].vfal" 1;
	setAttr ".vclr[290].vfcl[280].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[290].vfcl[280].vfal" 1;
	setAttr ".vclr[291].vxal" 1;
	setAttr -s 2 ".vclr[291].vfcl";
	setAttr ".vclr[291].vfcl[280].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[291].vfcl[280].vfal" 1;
	setAttr ".vclr[291].vfcl[281].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[291].vfcl[281].vfal" 1;
	setAttr ".vclr[292].vxal" 1;
	setAttr ".vclr[292].vfcl[281].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[292].vfcl[281].vfal" 1;
	setAttr ".vclr[293].vxal" 1;
	setAttr -s 2 ".vclr[293].vfcl";
	setAttr ".vclr[293].vfcl[282].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[293].vfcl[282].vfal" 1;
	setAttr ".vclr[293].vfcl[283].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[293].vfcl[283].vfal" 1;
	setAttr ".vclr[294].vxal" 1;
	setAttr ".vclr[294].vfcl[282].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[294].vfcl[282].vfal" 1;
	setAttr ".vclr[295].vxal" 1;
	setAttr -s 2 ".vclr[295].vfcl";
	setAttr ".vclr[295].vfcl[283].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[295].vfcl[283].vfal" 1;
	setAttr ".vclr[295].vfcl[284].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[295].vfcl[284].vfal" 1;
	setAttr ".vclr[296].vxal" 1;
	setAttr -s 5 ".vclr[296].vfcl";
	setAttr ".vclr[296].vfcl[265].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[296].vfcl[265].vfal" 1;
	setAttr ".vclr[296].vfcl[283].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[296].vfcl[283].vfal" 1;
	setAttr ".vclr[296].vfcl[284].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[296].vfcl[284].vfal" 1;
	setAttr ".vclr[296].vfcl[285].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[296].vfcl[285].vfal" 1;
	setAttr ".vclr[296].vfcl[291].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[296].vfcl[291].vfal" 1;
	setAttr ".vclr[297].vxal" 1;
	setAttr -s 3 ".vclr[297].vfcl";
	setAttr ".vclr[297].vfcl[265].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[297].vfcl[265].vfal" 1;
	setAttr ".vclr[297].vfcl[285].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[297].vfcl[285].vfal" 1;
	setAttr ".vclr[297].vfcl[290].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[297].vfcl[290].vfal" 1;
	setAttr ".vclr[298].vxal" 1;
	setAttr ".vclr[298].vfcl[284].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[298].vfcl[284].vfal" 1;
	setAttr ".vclr[299].vxal" 1;
	setAttr -s 2 ".vclr[299].vfcl";
	setAttr ".vclr[299].vfcl[284].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[299].vfcl[284].vfal" 1;
	setAttr ".vclr[299].vfcl[285].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[299].vfcl[285].vfal" 1;
	setAttr ".vclr[300].vxal" 1;
	setAttr ".vclr[300].vfcl[285].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[300].vfcl[285].vfal" 1;
	setAttr ".vclr[301].vxal" 1;
	setAttr -s 2 ".vclr[301].vfcl";
	setAttr ".vclr[301].vfcl[289].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[301].vfcl[289].vfal" 1;
	setAttr ".vclr[301].vfcl[290].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[301].vfcl[290].vfal" 1;
	setAttr ".vclr[302].vxal" 1;
	setAttr ".vclr[302].vfcl[292].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[302].vfcl[292].vfal" 1;
	setAttr ".vclr[303].vxal" 1;
	setAttr -s 2 ".vclr[303].vfcl";
	setAttr ".vclr[303].vfcl[292].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[303].vfcl[292].vfal" 1;
	setAttr ".vclr[303].vfcl[293].frgb" -type "float3" 1 0 0 ;
	setAttr ".vclr[303].vfcl[293].vfal" 1;
	setAttr ".cn" -type "string" "colorSet1";
	setAttr ".clam" no;
createNode animLayer -n "BaseAnimation";
	rename -uid "4B34A9C1-4821-E1DC-D6DC-A3A730D7526B";
	setAttr ".ovrd" yes;
createNode animLayer -n "Skin_Test_Anim";
	rename -uid "AD0424F3-4CAB-2FC9-F993-3A8CC82A2647";
	setAttr -s 270 ".dsm";
	setAttr -s 216 ".bnds";
	setAttr ".sl" yes;
	setAttr ".lo" yes;
createNode animBlendNodeBoolean -n "JNT_Clav_Clav01_M_visibility_Skin_Test_Anim";
	rename -uid "D718889B-4D76-AF23-F488-E4B2056006DD";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Clav_Clav01_M_translateX_Skin_Test_Anim";
	rename -uid "AE6846E9-4805-6DF8-B1C2-C88762E54732";
	setAttr ".ia" 5.5230406399187046;
	setAttr ".o" 5.5230406399187046;
createNode animBlendNodeAdditiveDL -n "JNT_Clav_Clav01_M_translateY_Skin_Test_Anim";
	rename -uid "5D3C6B8C-4CD8-6C5E-F692-9BADD520C1C7";
	setAttr ".ia" 137.52213631501641;
	setAttr ".o" 137.52213631501641;
createNode animBlendNodeAdditiveDL -n "JNT_Clav_Clav01_M_translateZ_Skin_Test_Anim";
	rename -uid "264DB63B-46F9-7EB0-7C52-258BF8AE55BA";
	setAttr ".ia" -2.0461767078897952;
	setAttr ".o" -2.0461767078897952;
createNode animBlendNodeAdditiveRotation -n "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim";
	rename -uid "C0844A6A-494F-602E-DC5A-E4A3C6000E36";
createNode animBlendNodeAdditiveScale -n "JNT_Clav_Clav01_M_scaleX_Skin_Test_Anim";
	rename -uid "F772C5C3-400C-799D-0672-36A8B3D50F5B";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Clav_Clav01_M_scaleY_Skin_Test_Anim";
	rename -uid "75EDA428-4304-3F80-13B6-D1AED05F8517";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Clav_Clav01_M_scaleZ_Skin_Test_Anim";
	rename -uid "D9E903CD-4A1D-46A4-E0B7-69A6AAA2BA75";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Arm_Shoulder_M_visibility_Skin_Test_Anim";
	rename -uid "4A5D8B15-46FF-5732-1E88-F585278631C9";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Arm_Shoulder_M_translateX_Skin_Test_Anim";
	rename -uid "2C6C22B3-4F74-0214-EFD2-13B5B6F464CC";
	setAttr ".ia" 8.708312693051699;
	setAttr ".o" 8.708312693051699;
createNode animBlendNodeAdditiveDL -n "JNT_Arm_Shoulder_M_translateY_Skin_Test_Anim";
	rename -uid "6C073062-4753-1790-A6A2-018001664008";
	setAttr ".ia" 2.8421709430404007e-14;
	setAttr ".o" 2.8421709430404007e-14;
createNode animBlendNodeAdditiveDL -n "JNT_Arm_Shoulder_M_translateZ_Skin_Test_Anim";
	rename -uid "3892448A-4224-00D8-98CC-C4870D7BCF39";
	setAttr ".ia" -4.4408920985006262e-16;
	setAttr ".o" -4.4408920985006262e-16;
createNode animBlendNodeAdditiveRotation -n "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim";
	rename -uid "924026E9-4134-B01F-F73F-E29385D1BE9C";
createNode animBlendNodeAdditiveScale -n "JNT_Arm_Shoulder_M_scaleX_Skin_Test_Anim";
	rename -uid "D22F7626-4632-3FC0-192F-C6AAEECCAF54";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Arm_Shoulder_M_scaleY_Skin_Test_Anim";
	rename -uid "73026A26-4A0E-0DC6-0C60-FFA36C44DA57";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Arm_Shoulder_M_scaleZ_Skin_Test_Anim";
	rename -uid "57A3D6F6-4567-175D-F95A-DB88A9609D96";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Arm_Elbow_M_visibility_Skin_Test_Anim";
	rename -uid "1F6569DF-40FA-2736-E21F-889D93CEEF23";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Arm_Elbow_M_translateX_Skin_Test_Anim";
	rename -uid "45F9A32A-4576-BD9D-3230-4397B9EB40A2";
	setAttr ".ia" 25.941269954820434;
	setAttr ".o" 25.941269954820434;
createNode animBlendNodeAdditiveDL -n "JNT_Arm_Elbow_M_translateY_Skin_Test_Anim";
	rename -uid "250C30AE-4C84-827C-5164-4E8D9B7AAE2F";
	setAttr ".ia" -3.7260276957316732e-07;
	setAttr ".o" -3.7260276957316732e-07;
createNode animBlendNodeAdditiveDL -n "JNT_Arm_Elbow_M_translateZ_Skin_Test_Anim";
	rename -uid "694308C8-43DB-2492-F222-8CAB4F858F74";
	setAttr ".ia" 0.19840277671717454;
	setAttr ".o" 0.19840277671717454;
createNode animBlendNodeAdditiveRotation -n "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim";
	rename -uid "3554A6B1-44A1-D756-83C5-269E99B7D99A";
createNode animBlendNodeAdditiveScale -n "JNT_Arm_Elbow_M_scaleX_Skin_Test_Anim";
	rename -uid "34B34963-49C6-8254-4436-61A1AD6CED47";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Arm_Elbow_M_scaleY_Skin_Test_Anim";
	rename -uid "EE86D8E8-4CB8-C5F5-B400-2C8CB07B7E21";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Arm_Elbow_M_scaleZ_Skin_Test_Anim";
	rename -uid "CAFA6669-4B2C-585C-C67F-028CDA05AB24";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Arm_Wrist_M_visibility_Skin_Test_Anim";
	rename -uid "FEA3EA28-4745-2677-A3E1-F9B462293AD4";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Arm_Wrist_M_translateX_Skin_Test_Anim";
	rename -uid "658A877E-4C8D-854C-C22C-0CA286A190EE";
	setAttr ".ia" 26.259939324857896;
	setAttr ".o" 26.259939324857896;
createNode animBlendNodeAdditiveDL -n "JNT_Arm_Wrist_M_translateY_Skin_Test_Anim";
	rename -uid "50E04766-43B7-48C5-D99C-42B6659A28D9";
	setAttr ".ia" -2.841582016799295e-06;
	setAttr ".o" -2.841582016799295e-06;
createNode animBlendNodeAdditiveDL -n "JNT_Arm_Wrist_M_translateZ_Skin_Test_Anim";
	rename -uid "CA7D6505-4A13-CF03-DAAF-59A40FBC0EC7";
	setAttr ".ia" 1.333654098313944e-14;
	setAttr ".o" 1.333654098313944e-14;
createNode animBlendNodeAdditiveRotation -n "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim";
	rename -uid "6DA228EF-4D8E-53E1-6A0D-EE827A3E9598";
createNode animBlendNodeAdditiveScale -n "JNT_Arm_Wrist_M_scaleX_Skin_Test_Anim";
	rename -uid "CCC153EB-424B-A8AE-D619-93A8D406F3F7";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Arm_Wrist_M_scaleY_Skin_Test_Anim";
	rename -uid "DACE1A8A-4CD9-7570-E54A-C1BB3FE162B2";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Arm_Wrist_M_scaleZ_Skin_Test_Anim";
	rename -uid "9621075D-4AA9-0BB8-0F74-D583A040FB9A";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Index_Index1_M_visibility_Skin_Test_Anim";
	rename -uid "53881116-4361-4276-2978-10AA6EF725C5";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Index_Index1_M_translateX_Skin_Test_Anim";
	rename -uid "BFDF67B2-47F2-16A0-FC5C-9E911428175C";
	setAttr ".ia" 7.8288810320045279;
	setAttr ".o" 7.8288810320045279;
createNode animBlendNodeAdditiveDL -n "JNT_Index_Index1_M_translateY_Skin_Test_Anim";
	rename -uid "E62B184C-406D-C9DB-1350-4F99F16A9CEF";
	setAttr ".ia" 0.94274018076017285;
	setAttr ".o" 0.94274018076017285;
createNode animBlendNodeAdditiveDL -n "JNT_Index_Index1_M_translateZ_Skin_Test_Anim";
	rename -uid "DFFB4A76-4677-BF0D-0588-EA91A7880CF5";
	setAttr ".ia" 1.8635468004911591;
	setAttr ".o" 1.8635468004911591;
createNode animBlendNodeAdditiveRotation -n "JNT_Index_Index1_M_rotate_Skin_Test_Anim";
	rename -uid "10C795B6-4F46-6321-F0D8-A099183C4049";
createNode animBlendNodeAdditiveScale -n "JNT_Index_Index1_M_scaleX_Skin_Test_Anim";
	rename -uid "AD03B44F-4692-6AAF-1D83-B9BFD59E63C1";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Index_Index1_M_scaleY_Skin_Test_Anim";
	rename -uid "877F9EE8-4595-DAF9-AAF6-81AD0E2871A3";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Index_Index1_M_scaleZ_Skin_Test_Anim";
	rename -uid "6B2FCE24-4F25-757F-58CD-8D88B2818F21";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Index_Index2_M_visibility_Skin_Test_Anim";
	rename -uid "A234644C-4640-587F-5178-9D9FAED33A48";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Index_Index2_M_translateX_Skin_Test_Anim";
	rename -uid "E267E971-415C-73A5-4793-82953CF02798";
	setAttr ".ia" 3.6539765362013874;
	setAttr ".o" 3.6539765362013874;
createNode animBlendNodeAdditiveDL -n "JNT_Index_Index2_M_translateY_Skin_Test_Anim";
	rename -uid "3CE6481F-4776-790A-7366-78B1B4240A44";
createNode animBlendNodeAdditiveDL -n "JNT_Index_Index2_M_translateZ_Skin_Test_Anim";
	rename -uid "5855B7AE-4E3D-4536-A6C7-D196F805CEC8";
	setAttr ".ia" -2.6645352591003757e-15;
	setAttr ".o" -2.6645352591003757e-15;
createNode animBlendNodeAdditiveRotation -n "JNT_Index_Index2_M_rotate_Skin_Test_Anim";
	rename -uid "02B20FD8-4DA4-56A4-493D-92954A0D3AE2";
createNode animBlendNodeAdditiveScale -n "JNT_Index_Index2_M_scaleX_Skin_Test_Anim";
	rename -uid "4770B587-48AA-98A2-28C5-09BDEDFD3DEB";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Index_Index2_M_scaleY_Skin_Test_Anim";
	rename -uid "E675E26C-4FCC-319D-1728-769EB1F5CBBF";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Index_Index2_M_scaleZ_Skin_Test_Anim";
	rename -uid "600A62CC-41A6-7288-DB1E-8BBF7D82A18F";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Index_Index3_M_visibility_Skin_Test_Anim";
	rename -uid "E667F318-43EE-668C-CC76-039D49F8EC1C";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Index_Index3_M_translateX_Skin_Test_Anim";
	rename -uid "27437BF0-4131-66A2-724E-CB835FCC0555";
	setAttr ".ia" 2.8248401066068034;
	setAttr ".o" 2.8248401066068034;
createNode animBlendNodeAdditiveDL -n "JNT_Index_Index3_M_translateY_Skin_Test_Anim";
	rename -uid "469DFC37-4B99-613E-778E-6F880F0778E6";
	setAttr ".ia" 2.8421709430404007e-14;
	setAttr ".o" 2.8421709430404007e-14;
createNode animBlendNodeAdditiveDL -n "JNT_Index_Index3_M_translateZ_Skin_Test_Anim";
	rename -uid "9049223D-4DF6-99CB-29B3-AC9BF804F683";
	setAttr ".ia" -4.4408920985006262e-16;
	setAttr ".o" -4.4408920985006262e-16;
createNode animBlendNodeAdditiveRotation -n "JNT_Index_Index3_M_rotate_Skin_Test_Anim";
	rename -uid "D4630ABF-4842-DC09-D99A-3D9EF38CE6A1";
createNode animBlendNodeAdditiveScale -n "JNT_Index_Index3_M_scaleX_Skin_Test_Anim";
	rename -uid "74A073C8-46F3-DE2C-656D-A1A3A3F8D305";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Index_Index3_M_scaleY_Skin_Test_Anim";
	rename -uid "59362AF9-4FC5-011D-E0DF-CDB14248FA68";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Index_Index3_M_scaleZ_Skin_Test_Anim";
	rename -uid "8E3AE23F-45FA-16DF-FE9C-F083872CAB9F";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Index_Index4_M_visibility_Skin_Test_Anim";
	rename -uid "2EFCD5C4-45E7-2DD0-C506-29B9E6820EE9";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Index_Index4_M_translateX_Skin_Test_Anim";
	rename -uid "3FE884AE-4F4B-87EE-875F-F692F06D0EED";
	setAttr ".ia" 3.2332893329224959;
	setAttr ".o" 3.2332893329224959;
createNode animBlendNodeAdditiveDL -n "JNT_Index_Index4_M_translateY_Skin_Test_Anim";
	rename -uid "4869CBD7-40ED-1072-A96B-7EB77B6F992A";
	setAttr ".ia" -2.8421709430404007e-14;
	setAttr ".o" -2.8421709430404007e-14;
createNode animBlendNodeAdditiveDL -n "JNT_Index_Index4_M_translateZ_Skin_Test_Anim";
	rename -uid "8C628FA6-4C03-AB8A-303D-1785DCFA7679";
	setAttr ".ia" -8.8817841970012523e-16;
	setAttr ".o" -8.8817841970012523e-16;
createNode animBlendNodeAdditiveRotation -n "JNT_Index_Index4_M_rotate_Skin_Test_Anim";
	rename -uid "CC5F83E8-4F44-CA8A-621A-409A9D247F95";
createNode animBlendNodeAdditiveScale -n "JNT_Index_Index4_M_scaleX_Skin_Test_Anim";
	rename -uid "005B2EDB-46D6-D187-B1C3-478277EDDB4F";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Index_Index4_M_scaleY_Skin_Test_Anim";
	rename -uid "D2C07690-4D1C-286E-4D73-FFA594F7750A";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Index_Index4_M_scaleZ_Skin_Test_Anim";
	rename -uid "8656AB37-4F2F-D9FC-EF66-4E92A4FE926E";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Middle_Middle1_M_visibility_Skin_Test_Anim";
	rename -uid "B11D5716-4D5C-0BD9-E44B-D09AACDFC522";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Middle_Middle1_M_translateX_Skin_Test_Anim";
	rename -uid "0165F12C-4AAA-402D-CE43-0E81168AD8A4";
	setAttr ".ia" 7.9379058083578533;
	setAttr ".o" 7.9379058083578533;
createNode animBlendNodeAdditiveDL -n "JNT_Middle_Middle1_M_translateY_Skin_Test_Anim";
	rename -uid "4458AAF5-4012-BAF5-A184-CB991F1F89EC";
	setAttr ".ia" 0.70256262781710821;
	setAttr ".o" 0.70256262781710821;
createNode animBlendNodeAdditiveDL -n "JNT_Middle_Middle1_M_translateZ_Skin_Test_Anim";
	rename -uid "9EDB6274-42DC-7A3F-0408-20A3D9CB79A9";
	setAttr ".ia" -0.29684972057054893;
	setAttr ".o" -0.29684972057054893;
createNode animBlendNodeAdditiveRotation -n "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim";
	rename -uid "72C92A75-4B56-85F0-ADE5-BBAF064A94EB";
createNode animBlendNodeAdditiveScale -n "JNT_Middle_Middle1_M_scaleX_Skin_Test_Anim";
	rename -uid "A590B53E-408C-2C6C-DCEF-5296BD77BE33";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Middle_Middle1_M_scaleY_Skin_Test_Anim";
	rename -uid "13CD2CFD-4FD5-9CBB-B494-B0A51185A1C6";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Middle_Middle1_M_scaleZ_Skin_Test_Anim";
	rename -uid "685849F2-4452-4505-9E5F-5D84EAFDF89F";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Middle_Middle2_M_visibility_Skin_Test_Anim";
	rename -uid "5FDE0674-4655-0428-523E-37A6E7237418";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Middle_Middle2_M_translateX_Skin_Test_Anim";
	rename -uid "66633E43-47AB-5595-5FEF-10A35E972FF8";
	setAttr ".ia" 3.2775428993820199;
	setAttr ".o" 3.2775428993820199;
createNode animBlendNodeAdditiveDL -n "JNT_Middle_Middle2_M_translateY_Skin_Test_Anim";
	rename -uid "404B6E4E-462A-CC19-FD99-D3AF572E7620";
createNode animBlendNodeAdditiveDL -n "JNT_Middle_Middle2_M_translateZ_Skin_Test_Anim";
	rename -uid "A97BFAB9-468C-8EA4-5B1D-B4BAB7B3EC19";
	setAttr ".ia" 2.2204460492503131e-16;
	setAttr ".o" 2.2204460492503131e-16;
createNode animBlendNodeAdditiveRotation -n "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim";
	rename -uid "08B55A51-48B8-2F3E-B199-46A208BED52A";
createNode animBlendNodeAdditiveScale -n "JNT_Middle_Middle2_M_scaleX_Skin_Test_Anim";
	rename -uid "5CB089B9-460E-F398-9CBA-4DABB7F64543";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Middle_Middle2_M_scaleY_Skin_Test_Anim";
	rename -uid "A0650C8F-4BEC-2CBE-EE87-B1BB6977BF3D";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Middle_Middle2_M_scaleZ_Skin_Test_Anim";
	rename -uid "8C049AA6-4F3C-6F37-89EA-98A5E2370FD4";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Middle_Middle3_M_visibility_Skin_Test_Anim";
	rename -uid "C1706A00-4B94-692D-EA6A-6B9D708FF408";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Middle_Middle3_M_translateX_Skin_Test_Anim";
	rename -uid "9A194C29-429F-A6F6-9117-3D85F6E4D89C";
	setAttr ".ia" 3.356309532593734;
	setAttr ".o" 3.356309532593734;
createNode animBlendNodeAdditiveDL -n "JNT_Middle_Middle3_M_translateY_Skin_Test_Anim";
	rename -uid "DA847097-40AE-4B78-0F43-7BA0BE084DB9";
	setAttr ".ia" -2.8421709430404007e-14;
	setAttr ".o" -2.8421709430404007e-14;
createNode animBlendNodeAdditiveDL -n "JNT_Middle_Middle3_M_translateZ_Skin_Test_Anim";
	rename -uid "D13C22BF-4F89-306E-E8F3-31B6921F7503";
	setAttr ".ia" -1.1102230246251565e-15;
	setAttr ".o" -1.1102230246251565e-15;
createNode animBlendNodeAdditiveRotation -n "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim";
	rename -uid "12F77F62-439D-66D7-379C-C99D38890685";
createNode animBlendNodeAdditiveScale -n "JNT_Middle_Middle3_M_scaleX_Skin_Test_Anim";
	rename -uid "6C7240D2-4883-3262-6578-8082E55EE74F";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Middle_Middle3_M_scaleY_Skin_Test_Anim";
	rename -uid "1922D5AD-4AAB-760E-A663-1FA7CB50D860";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Middle_Middle3_M_scaleZ_Skin_Test_Anim";
	rename -uid "C57082E4-44CA-2128-7B83-C595E805EB11";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Middle_Middle4_M_visibility_Skin_Test_Anim";
	rename -uid "06604571-4CE3-2AB3-95CA-A5872D42ABFC";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Middle_Middle4_M_translateX_Skin_Test_Anim";
	rename -uid "BCAEBC6F-43DF-79C1-C5A6-988C861BD3E1";
	setAttr ".ia" 3.451004902417985;
	setAttr ".o" 3.451004902417985;
createNode animBlendNodeAdditiveDL -n "JNT_Middle_Middle4_M_translateY_Skin_Test_Anim";
	rename -uid "7817A49D-41B4-8D5D-DA7C-17AC217BF8F4";
	setAttr ".ia" -2.8421709430404007e-14;
	setAttr ".o" -2.8421709430404007e-14;
createNode animBlendNodeAdditiveDL -n "JNT_Middle_Middle4_M_translateZ_Skin_Test_Anim";
	rename -uid "C731FEEA-4C41-8AF1-F88B-51B6FE6112A1";
	setAttr ".ia" 8.8817841970012523e-16;
	setAttr ".o" 8.8817841970012523e-16;
createNode animBlendNodeAdditiveRotation -n "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim";
	rename -uid "D6B892ED-47F0-7921-B359-709056810947";
createNode animBlendNodeAdditiveScale -n "JNT_Middle_Middle4_M_scaleX_Skin_Test_Anim";
	rename -uid "8B41B9BE-4BD1-EC7D-B119-73AE58509505";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Middle_Middle4_M_scaleY_Skin_Test_Anim";
	rename -uid "3932B0BC-4A70-BBA2-A6C5-55B86C7E0DC0";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Middle_Middle4_M_scaleZ_Skin_Test_Anim";
	rename -uid "F498D4DC-4E41-69BC-9E6A-99B0EF4B3D3C";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Pinkie_Pinkey1_M_visibility_Skin_Test_Anim";
	rename -uid "23F95A73-45F3-9436-B7E8-F587DA85BF5B";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Pinkie_Pinkey1_M_translateX_Skin_Test_Anim";
	rename -uid "806D4AD7-4700-75F9-0A64-C095AF46A4E6";
	setAttr ".ia" 7.2965411030324745;
	setAttr ".o" 7.2965411030324745;
createNode animBlendNodeAdditiveDL -n "JNT_Pinkie_Pinkey1_M_translateY_Skin_Test_Anim";
	rename -uid "6287A54C-4D2D-A6D4-0054-7B9D857A0DDC";
	setAttr ".ia" 0.40936099840923879;
	setAttr ".o" 0.40936099840923879;
createNode animBlendNodeAdditiveDL -n "JNT_Pinkie_Pinkey1_M_translateZ_Skin_Test_Anim";
	rename -uid "E09CFAFF-4252-105F-2734-CDAD94884266";
	setAttr ".ia" -4.6085328294878325;
	setAttr ".o" -4.6085328294878325;
createNode animBlendNodeAdditiveRotation -n "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim";
	rename -uid "12AD1554-44BB-290C-3337-F4A500C9B508";
createNode animBlendNodeAdditiveScale -n "JNT_Pinkie_Pinkey1_M_scaleX_Skin_Test_Anim";
	rename -uid "8CA91C9B-4EC7-3D39-7E1C-ACBE36D14EC9";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Pinkie_Pinkey1_M_scaleY_Skin_Test_Anim";
	rename -uid "AE43C174-4C59-F3C0-F79E-D093268E9D9A";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Pinkie_Pinkey1_M_scaleZ_Skin_Test_Anim";
	rename -uid "94D43F49-4542-00BB-FEEC-6E948727C0B6";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Pinkie_Pinkey2_M_visibility_Skin_Test_Anim";
	rename -uid "D20E8C3E-4FFA-4F21-FE6A-429292F937FF";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Pinkie_Pinkey2_M_translateX_Skin_Test_Anim";
	rename -uid "82FC065C-4C7E-8290-6EA2-71B60B29534C";
	setAttr ".ia" 2.2858601897864261;
	setAttr ".o" 2.2858601897864261;
createNode animBlendNodeAdditiveDL -n "JNT_Pinkie_Pinkey2_M_translateY_Skin_Test_Anim";
	rename -uid "6E958C45-41D7-5955-94A2-E680EFB15A5C";
	setAttr ".ia" 5.6843418860808015e-14;
	setAttr ".o" 5.6843418860808015e-14;
createNode animBlendNodeAdditiveDL -n "JNT_Pinkie_Pinkey2_M_translateZ_Skin_Test_Anim";
	rename -uid "79769FBB-43A0-2363-F440-D7A915F693B7";
	setAttr ".ia" -1.7763568394002505e-15;
	setAttr ".o" -1.7763568394002505e-15;
createNode animBlendNodeAdditiveRotation -n "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim";
	rename -uid "36EC19E9-4460-67C7-F4AF-B1B07FEF8DCA";
createNode animBlendNodeAdditiveScale -n "JNT_Pinkie_Pinkey2_M_scaleX_Skin_Test_Anim";
	rename -uid "D57F493D-40BC-69D6-ADBA-9B847614348A";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Pinkie_Pinkey2_M_scaleY_Skin_Test_Anim";
	rename -uid "018CACA8-4411-725A-0B46-348BF1EBE304";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Pinkie_Pinkey2_M_scaleZ_Skin_Test_Anim";
	rename -uid "3483E7F8-4A0C-C8DE-E1A9-E3BCCE353B3C";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Pinkie_Pinkey3_M_visibility_Skin_Test_Anim";
	rename -uid "1D7A154B-4CF5-F44F-535D-C893009ECE04";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Pinkie_Pinkey3_M_translateX_Skin_Test_Anim";
	rename -uid "89439678-4F02-8C97-8C34-EE86475BBFDB";
	setAttr ".ia" 2.4760630189721891;
	setAttr ".o" 2.4760630189721891;
createNode animBlendNodeAdditiveDL -n "JNT_Pinkie_Pinkey3_M_translateY_Skin_Test_Anim";
	rename -uid "3DECFB78-4E64-8F52-601C-9BA09F069A26";
	setAttr ".ia" 2.8421709430404007e-14;
	setAttr ".o" 2.8421709430404007e-14;
createNode animBlendNodeAdditiveDL -n "JNT_Pinkie_Pinkey3_M_translateZ_Skin_Test_Anim";
	rename -uid "634BB523-4EE4-C1D6-EF17-D686FB492BD2";
	setAttr ".ia" 8.8817841970012523e-16;
	setAttr ".o" 8.8817841970012523e-16;
createNode animBlendNodeAdditiveRotation -n "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim";
	rename -uid "A974D73E-446A-1B25-90FC-6D825CBCC22D";
createNode animBlendNodeAdditiveScale -n "JNT_Pinkie_Pinkey3_M_scaleX_Skin_Test_Anim";
	rename -uid "100CADF4-444D-0DA1-9014-509C566BCD22";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Pinkie_Pinkey3_M_scaleY_Skin_Test_Anim";
	rename -uid "379C5E2A-4943-DD50-F627-BB9AB827FD7E";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Pinkie_Pinkey3_M_scaleZ_Skin_Test_Anim";
	rename -uid "7C97B8ED-4A09-EA7C-DA19-F9997A6561CB";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Pinkie_Pinkey4_M_visibility_Skin_Test_Anim";
	rename -uid "82EF7A37-401F-4878-89A5-C08D68ACF71F";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Pinkie_Pinkey4_M_translateX_Skin_Test_Anim";
	rename -uid "55845272-493E-378D-C9DC-278878F27E66";
	setAttr ".ia" 2.1354158919624879;
	setAttr ".o" 2.1354158919624879;
createNode animBlendNodeAdditiveDL -n "JNT_Pinkie_Pinkey4_M_translateY_Skin_Test_Anim";
	rename -uid "1550E1AC-4EE3-4459-E37F-38927AD8C12D";
	setAttr ".ia" 2.8421709430404007e-14;
	setAttr ".o" 2.8421709430404007e-14;
createNode animBlendNodeAdditiveDL -n "JNT_Pinkie_Pinkey4_M_translateZ_Skin_Test_Anim";
	rename -uid "498EAA2A-4FA9-25D6-3F9B-23A42ECF3AC8";
	setAttr ".ia" 2.2204460492503131e-15;
	setAttr ".o" 2.2204460492503131e-15;
createNode animBlendNodeAdditiveRotation -n "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim";
	rename -uid "D0F49185-4C79-78B9-5A98-96A3751E4B47";
createNode animBlendNodeAdditiveScale -n "JNT_Pinkie_Pinkey4_M_scaleX_Skin_Test_Anim";
	rename -uid "82E73FB4-4D32-43D0-6008-FD9EE7811397";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Pinkie_Pinkey4_M_scaleY_Skin_Test_Anim";
	rename -uid "4A9D8E88-4834-8369-2342-78B8A0405B9A";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Pinkie_Pinkey4_M_scaleZ_Skin_Test_Anim";
	rename -uid "4B9F1937-428D-1B74-C787-43ABB9ECB4DF";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Ring_Ring1_M_visibility_Skin_Test_Anim";
	rename -uid "ED0C884D-4638-BA0D-FB79-88A895AEBC2A";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Ring_Ring1_M_translateX_Skin_Test_Anim";
	rename -uid "45DAE6B8-45AF-4C68-F6C3-58A088473779";
	setAttr ".ia" 7.8190365685399517;
	setAttr ".o" 7.8190365685399517;
createNode animBlendNodeAdditiveDL -n "JNT_Ring_Ring1_M_translateY_Skin_Test_Anim";
	rename -uid "066A96FC-4AEC-0DD4-92F5-1FAA0648FF41";
	setAttr ".ia" 0.52916697249288736;
	setAttr ".o" 0.52916697249288736;
createNode animBlendNodeAdditiveDL -n "JNT_Ring_Ring1_M_translateZ_Skin_Test_Anim";
	rename -uid "157F0578-444E-43C3-3AB1-D48A2155E553";
	setAttr ".ia" -2.7118128374972352;
	setAttr ".o" -2.7118128374972352;
createNode animBlendNodeAdditiveRotation -n "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim";
	rename -uid "5C8F2E11-4598-BBDF-40E4-D1992D9109D1";
createNode animBlendNodeAdditiveScale -n "JNT_Ring_Ring1_M_scaleX_Skin_Test_Anim";
	rename -uid "22EB90DE-4A30-5A65-4AC4-73AFBD8041A9";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Ring_Ring1_M_scaleY_Skin_Test_Anim";
	rename -uid "0B66EA03-4680-8D84-1725-6D80824F0356";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Ring_Ring1_M_scaleZ_Skin_Test_Anim";
	rename -uid "12B292BC-4325-F9CF-9F30-F9A0C22E2D0B";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Ring_Ring2_M_visibility_Skin_Test_Anim";
	rename -uid "CB5C1E28-477F-C417-BECA-DCBFC4830F11";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Ring_Ring2_M_translateX_Skin_Test_Anim";
	rename -uid "40A45C2E-4E6C-EEB3-320D-57B7D04DA366";
	setAttr ".ia" 2.6470511256765832;
	setAttr ".o" 2.6470511256765832;
createNode animBlendNodeAdditiveDL -n "JNT_Ring_Ring2_M_translateY_Skin_Test_Anim";
	rename -uid "B7BB5A97-41FD-70E1-5CF8-41A49A98D33E";
	setAttr ".ia" 2.8421709430404007e-14;
	setAttr ".o" 2.8421709430404007e-14;
createNode animBlendNodeAdditiveDL -n "JNT_Ring_Ring2_M_translateZ_Skin_Test_Anim";
	rename -uid "77FB5A7E-4AC5-CA7F-5878-378FC5A382A1";
createNode animBlendNodeAdditiveRotation -n "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim";
	rename -uid "997ED59F-4479-96FF-A6E2-778A5EB3E5C3";
createNode animBlendNodeAdditiveScale -n "JNT_Ring_Ring2_M_scaleX_Skin_Test_Anim";
	rename -uid "CDA325A8-4CDB-56CE-7ABA-668A31330091";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Ring_Ring2_M_scaleY_Skin_Test_Anim";
	rename -uid "95472729-4E63-54F7-A605-43A5DF94C187";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Ring_Ring2_M_scaleZ_Skin_Test_Anim";
	rename -uid "DFC3F104-48D9-8D27-9E22-C8B33881B9DB";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Ring_Ring3_M_visibility_Skin_Test_Anim";
	rename -uid "F239DD5F-4A02-3B74-8E15-B088A45CBBE1";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Ring_Ring3_M_translateX_Skin_Test_Anim";
	rename -uid "4CD18ADA-427B-1C96-9519-93B80B8CE612";
	setAttr ".ia" 2.9147340994338968;
	setAttr ".o" 2.9147340994338968;
createNode animBlendNodeAdditiveDL -n "JNT_Ring_Ring3_M_translateY_Skin_Test_Anim";
	rename -uid "721E5656-421A-2DAE-C9BA-B0B332BB578A";
createNode animBlendNodeAdditiveDL -n "JNT_Ring_Ring3_M_translateZ_Skin_Test_Anim";
	rename -uid "2236ED36-4AA0-7AB3-78C2-65AF3BBED6C2";
	setAttr ".ia" -8.8817841970012523e-16;
	setAttr ".o" -8.8817841970012523e-16;
createNode animBlendNodeAdditiveRotation -n "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim";
	rename -uid "C1D05ACB-435D-64DD-0493-72A142DEB3C3";
createNode animBlendNodeAdditiveScale -n "JNT_Ring_Ring3_M_scaleX_Skin_Test_Anim";
	rename -uid "DE970A99-42E8-61B2-3A4B-88BE2AC27B4F";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Ring_Ring3_M_scaleY_Skin_Test_Anim";
	rename -uid "A0026E41-4467-05E5-4503-F384638F5644";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Ring_Ring3_M_scaleZ_Skin_Test_Anim";
	rename -uid "F932698A-4162-312B-9E96-DC9DA2996647";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Ring_Ring4_M_visibility_Skin_Test_Anim";
	rename -uid "C3D42588-437A-9295-4E21-9BAEE06F6E8D";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Ring_Ring4_M_translateX_Skin_Test_Anim";
	rename -uid "10D9C3E6-4C0B-EDDB-627F-D391BBE035AD";
	setAttr ".ia" 3.7421843699642601;
	setAttr ".o" 3.7421843699642601;
createNode animBlendNodeAdditiveDL -n "JNT_Ring_Ring4_M_translateY_Skin_Test_Anim";
	rename -uid "838826B1-42E0-DD18-B147-27BBF7C7AF41";
createNode animBlendNodeAdditiveDL -n "JNT_Ring_Ring4_M_translateZ_Skin_Test_Anim";
	rename -uid "5401DEAF-4F8A-69D6-451B-7CAC841F85F7";
	setAttr ".ia" -1.7763568394002505e-15;
	setAttr ".o" -1.7763568394002505e-15;
createNode animBlendNodeAdditiveRotation -n "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim";
	rename -uid "86AF59DA-449E-5845-4654-3FB7D0027859";
createNode animBlendNodeAdditiveScale -n "JNT_Ring_Ring4_M_scaleX_Skin_Test_Anim";
	rename -uid "BB0B9565-4E78-3A91-8B57-D19788B81F45";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Ring_Ring4_M_scaleY_Skin_Test_Anim";
	rename -uid "302FFCFF-4CBA-9BFF-C6C9-9694D5931420";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Ring_Ring4_M_scaleZ_Skin_Test_Anim";
	rename -uid "32C87EAC-4C30-8D89-7901-FA9F8A2F807B";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Thumb_Thumb1_M_visibility_Skin_Test_Anim";
	rename -uid "80D51184-4E07-6A99-BBBA-D48849031B4C";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Thumb_Thumb1_M_translateX_Skin_Test_Anim";
	rename -uid "4A0BA062-4F19-221B-F447-549FA85F1D5C";
	setAttr ".ia" 2.6690456837124401;
	setAttr ".o" 2.6690456837124401;
createNode animBlendNodeAdditiveDL -n "JNT_Thumb_Thumb1_M_translateY_Skin_Test_Anim";
	rename -uid "57C27600-4A61-398C-6F67-C0BB7B86F41A";
	setAttr ".ia" -1.731296843712073;
	setAttr ".o" -1.731296843712073;
createNode animBlendNodeAdditiveDL -n "JNT_Thumb_Thumb1_M_translateZ_Skin_Test_Anim";
	rename -uid "161228EB-403F-BF71-9641-F3B5FC203EE4";
	setAttr ".ia" 1.7853067906047153;
	setAttr ".o" 1.7853067906047153;
createNode animBlendNodeAdditiveRotation -n "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim";
	rename -uid "F1052184-4D8B-2BBC-426E-ABADF5C41FA0";
createNode animBlendNodeAdditiveScale -n "JNT_Thumb_Thumb1_M_scaleX_Skin_Test_Anim";
	rename -uid "D1929560-492F-5B0D-2C9F-CAA2CCFB405B";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Thumb_Thumb1_M_scaleY_Skin_Test_Anim";
	rename -uid "16C5178E-40C2-4698-B0C6-398CC0A17578";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Thumb_Thumb1_M_scaleZ_Skin_Test_Anim";
	rename -uid "B67E3749-4792-F49D-F1C7-4EAE8234764F";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Thumb_Thumb2_M_visibility_Skin_Test_Anim";
	rename -uid "07775494-45CA-D774-BBEE-43A90767F5AD";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Thumb_Thumb2_M_translateX_Skin_Test_Anim";
	rename -uid "EDA1056A-457B-9E5A-83A0-0799B4087F1A";
	setAttr ".ia" 3.2816682663097581;
	setAttr ".o" 3.2816682663097581;
createNode animBlendNodeAdditiveDL -n "JNT_Thumb_Thumb2_M_translateY_Skin_Test_Anim";
	rename -uid "0E1A9089-4804-8319-77D0-DF9731F693FA";
	setAttr ".ia" -1.0658141036401503e-14;
	setAttr ".o" -1.0658141036401503e-14;
createNode animBlendNodeAdditiveDL -n "JNT_Thumb_Thumb2_M_translateZ_Skin_Test_Anim";
	rename -uid "FF29829D-42BA-D056-CEB4-06A8075462D6";
createNode animBlendNodeAdditiveRotation -n "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim";
	rename -uid "BC21F184-4058-B8C2-DBB0-65A2253FE336";
createNode animBlendNodeAdditiveScale -n "JNT_Thumb_Thumb2_M_scaleX_Skin_Test_Anim";
	rename -uid "A5B1B381-4B9A-91BE-E243-3495FE361070";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Thumb_Thumb2_M_scaleY_Skin_Test_Anim";
	rename -uid "150A5621-4D65-7198-5661-2382FED1A2D7";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Thumb_Thumb2_M_scaleZ_Skin_Test_Anim";
	rename -uid "AE9F006A-4931-4A2A-F9F4-19AF0B14E1BE";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Thumb_Thumb3_M_visibility_Skin_Test_Anim";
	rename -uid "4FE61D58-4EFE-659F-6FFF-02ABD33EAE9D";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Thumb_Thumb3_M_translateX_Skin_Test_Anim";
	rename -uid "3CD82678-4E8F-75A0-511A-909FDA0F4F66";
	setAttr ".ia" 4.0292311701752439;
	setAttr ".o" 4.0292311701752439;
createNode animBlendNodeAdditiveDL -n "JNT_Thumb_Thumb3_M_translateY_Skin_Test_Anim";
	rename -uid "75184BFF-4D8A-1BEC-C173-5BAC761118AA";
	setAttr ".ia" -7.1054273576010019e-15;
	setAttr ".o" -7.1054273576010019e-15;
createNode animBlendNodeAdditiveDL -n "JNT_Thumb_Thumb3_M_translateZ_Skin_Test_Anim";
	rename -uid "F227072D-4525-AEFC-BFEE-B4B29674FCB2";
createNode animBlendNodeAdditiveRotation -n "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim";
	rename -uid "5909CAF0-4DCA-534D-6556-D6BDF7AA63DE";
createNode animBlendNodeAdditiveScale -n "JNT_Thumb_Thumb3_M_scaleX_Skin_Test_Anim";
	rename -uid "CEF92F4C-4BF3-C8D7-60B8-7686134B7F04";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Thumb_Thumb3_M_scaleY_Skin_Test_Anim";
	rename -uid "C7856DA1-4853-7E8B-D77D-D5ABA8A2A2A3";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Thumb_Thumb3_M_scaleZ_Skin_Test_Anim";
	rename -uid "4E9392E3-44DD-DBAD-B986-F487F56025B3";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Thumb_Thumb4_M_visibility_Skin_Test_Anim";
	rename -uid "D1A2ADB5-4079-2643-F6EE-3195A1F4F337";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Thumb_Thumb4_M_translateX_Skin_Test_Anim";
	rename -uid "7B0A392E-4486-9423-7C22-CB8931888AD0";
	setAttr ".ia" 2.8346696655482475;
	setAttr ".o" 2.8346696655482475;
createNode animBlendNodeAdditiveDL -n "JNT_Thumb_Thumb4_M_translateY_Skin_Test_Anim";
	rename -uid "265F01EC-4F98-44EF-9A05-9AB9E550DE87";
createNode animBlendNodeAdditiveDL -n "JNT_Thumb_Thumb4_M_translateZ_Skin_Test_Anim";
	rename -uid "CEAE231E-4A3B-29C0-2DCB-A0AA91279EB8";
	setAttr ".ia" -2.8421709430404007e-14;
	setAttr ".o" -2.8421709430404007e-14;
createNode animBlendNodeAdditiveRotation -n "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim";
	rename -uid "131C818E-4ED3-DC27-5379-129B5E570F41";
createNode animBlendNodeAdditiveScale -n "JNT_Thumb_Thumb4_M_scaleX_Skin_Test_Anim";
	rename -uid "131083A3-482B-A524-86F4-308102FB1BC0";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Thumb_Thumb4_M_scaleY_Skin_Test_Anim";
	rename -uid "73E62ACB-46EE-1E14-BE45-DFA09B862832";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Thumb_Thumb4_M_scaleZ_Skin_Test_Anim";
	rename -uid "95305071-4A5E-C46C-1E40-7C97CE5BB9A4";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_ForearmTwist_ForearmTwist1_M_visibility_Skin_Test_Anim";
	rename -uid "B9315091-40D5-2EBE-DFE1-90802D7A05B5";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_ForearmTwist_ForearmTwist1_M_translateX_Skin_Test_Anim";
	rename -uid "A489BCAF-4698-0609-A769-EEAA7B30D265";
	setAttr ".ia" 8.700292705433327;
	setAttr ".o" 8.700292705433327;
createNode animBlendNodeAdditiveDL -n "JNT_ForearmTwist_ForearmTwist1_M_translateY_Skin_Test_Anim";
	rename -uid "5AC63935-433C-C882-FA83-328DEDC3A471";
createNode animBlendNodeAdditiveDL -n "JNT_ForearmTwist_ForearmTwist1_M_translateZ_Skin_Test_Anim";
	rename -uid "897916F5-4989-C4B9-AB30-A0BD0DBEBD92";
	setAttr ".ia" -8.8817841970012523e-16;
	setAttr ".o" -8.8817841970012523e-16;
createNode animBlendNodeAdditiveRotation -n "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim";
	rename -uid "C48608AC-43F9-7898-975B-90802EE032B1";
createNode animBlendNodeAdditiveScale -n "JNT_ForearmTwist_ForearmTwist1_M_scaleX_Skin_Test_Anim";
	rename -uid "732B390F-4E02-2745-5636-0FBC2500B454";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_ForearmTwist_ForearmTwist1_M_scaleY_Skin_Test_Anim";
	rename -uid "34D8CA99-43E2-5ECB-787E-26A97CFAE3A4";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_ForearmTwist_ForearmTwist1_M_scaleZ_Skin_Test_Anim";
	rename -uid "34D73F15-4E20-D016-06D7-10BDBBF464F2";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_ForearmTwist_ForearmTwist2_M_visibility_Skin_Test_Anim";
	rename -uid "3C57B760-4072-7FAF-E811-E98458786EF9";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_ForearmTwist_ForearmTwist2_M_translateX_Skin_Test_Anim";
	rename -uid "42C732B3-456F-7ED9-4F3E-03AAD0AB6B91";
	setAttr ".ia" 16.28114869182432;
	setAttr ".o" 16.28114869182432;
createNode animBlendNodeAdditiveDL -n "JNT_ForearmTwist_ForearmTwist2_M_translateY_Skin_Test_Anim";
	rename -uid "C51E6E9C-41DB-BADA-7B19-F8B8227A2887";
createNode animBlendNodeAdditiveDL -n "JNT_ForearmTwist_ForearmTwist2_M_translateZ_Skin_Test_Anim";
	rename -uid "E393002B-4029-67B2-2611-B290C1AE8101";
	setAttr ".ia" -8.8817841970012523e-16;
	setAttr ".o" -8.8817841970012523e-16;
createNode animBlendNodeAdditiveRotation -n "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim";
	rename -uid "6CDE9DA8-4F25-70B2-87A0-AB9B8CF048EA";
createNode animBlendNodeAdditiveScale -n "JNT_ForearmTwist_ForearmTwist2_M_scaleX_Skin_Test_Anim";
	rename -uid "E91E878E-4F87-D936-4A45-1DB684FEACE0";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_ForearmTwist_ForearmTwist2_M_scaleY_Skin_Test_Anim";
	rename -uid "3EEE7C28-450A-0D56-2804-D68B96C6E5F5";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_ForearmTwist_ForearmTwist2_M_scaleZ_Skin_Test_Anim";
	rename -uid "984CC4CE-4A99-3448-25DA-22A2A1ABB011";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_BicepTwist_BicepTwist_M_visibility_Skin_Test_Anim";
	rename -uid "2C154DE0-4DA6-0AFF-F22E-E0B69EF658AD";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_BicepTwist_BicepTwist_M_translateX_Skin_Test_Anim";
	rename -uid "7E4D2111-49EB-8D7B-3341-1F9CC9D04819";
	setAttr ".ia" 12.274168772767116;
	setAttr ".o" 12.274168772767116;
createNode animBlendNodeAdditiveDL -n "JNT_BicepTwist_BicepTwist_M_translateY_Skin_Test_Anim";
	rename -uid "771E5F85-4973-1E5C-362B-3C98002A8563";
	setAttr ".ia" 1.3482982141919863e-06;
	setAttr ".o" 1.3482982141919863e-06;
createNode animBlendNodeAdditiveDL -n "JNT_BicepTwist_BicepTwist_M_translateZ_Skin_Test_Anim";
	rename -uid "40E5DFC6-4C46-755E-1F6B-2297BE8D2757";
	setAttr ".ia" -7.0644878835679492e-14;
	setAttr ".o" -7.0644878835679492e-14;
createNode animBlendNodeAdditiveRotation -n "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim";
	rename -uid "E2B06788-4E7E-A0AE-E37C-8DB78332EF55";
createNode animBlendNodeAdditiveScale -n "JNT_BicepTwist_BicepTwist_M_scaleX_Skin_Test_Anim";
	rename -uid "5EBF3BE9-4FF3-B970-D91B-A1BF95D86B93";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_BicepTwist_BicepTwist_M_scaleY_Skin_Test_Anim";
	rename -uid "5791154A-409D-981C-6712-3484BA25786D";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_BicepTwist_BicepTwist_M_scaleZ_Skin_Test_Anim";
	rename -uid "111C4066-49CD-16C6-7AC3-51B9DE47C004";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animCurveTA -n "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim_inputBX";
	rename -uid "E8CBEB36-4474-B547-AEA1-15BB8BEE182B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  1 0 4 90 10 -90 13 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim_inputBY";
	rename -uid "21AA2865-4131-C4DD-C8FB-9FA028478103";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  13 0 16 90 22 -90 25 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim_inputBZ";
	rename -uid "2AA782CB-4A90-0C24-7153-E69D4B489BA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  25 0 28 90 34 -90 37 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim_inputBX";
	rename -uid "2B1EDF29-49A4-DA87-8007-AD96FDF2DFC7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  38 0 41 90 47 -90 50 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim_inputBY";
	rename -uid "8A40FF2B-4CA9-D9B2-D484-C98AE584A7AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  50 0 53 90 59 -90 62 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim_inputBZ";
	rename -uid "F9D0F0BB-4561-B70F-0E32-E882EF1B799E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  62 0 65 90 71 -90 74 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim_inputBX";
	rename -uid "8430D2B7-4A71-F449-A25B-F1B1FDA0DAFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  75 0 78 90 84 -90 87 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim_inputBY";
	rename -uid "62B56423-40CF-6B89-A58F-70A95C6381DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  87 0 90 90 96 -90 99 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim_inputBZ";
	rename -uid "A1B1B5AB-48F2-69D6-48CD-568B03172CCF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  99 0 102 90 108 -90 111 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim_inputBX";
	rename -uid "B8DB32AE-41FA-E881-145D-05832E394420";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  112 0 115 90 121 -90 124 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim_inputBY";
	rename -uid "DD7F3104-4984-B4B8-5F35-7292069A8602";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  124 0 127 90 133 -90 136 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim_inputBZ";
	rename -uid "6D42D937-4016-F2C1-7DBA-408337EEFAC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  136 0 139 90 145 -90 148 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Index_Index1_M_rotate_Skin_Test_Anim_inputBX";
	rename -uid "D8F6A4F4-44CA-99BF-11D0-8991FF6289BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  149 0 152 90 158 -90 161 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Index_Index1_M_rotate_Skin_Test_Anim_inputBY";
	rename -uid "A8C8B645-4FBD-E7A6-C27C-7D9494619FD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  161 0 164 90 170 -90 173 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Index_Index1_M_rotate_Skin_Test_Anim_inputBZ";
	rename -uid "69F90BAD-4CEB-52F1-DE9C-EFBF9331EF37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  173 0 176 90 182 -90 185 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Index_Index2_M_rotate_Skin_Test_Anim_inputBX";
	rename -uid "BF5E203A-4584-45FB-9EB9-2F9C97B21CDB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  186 0 189 90 195 -90 198 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Index_Index2_M_rotate_Skin_Test_Anim_inputBY";
	rename -uid "5E5740E9-4F03-6138-0492-CBADC7EB7B4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  198 0 201 90 207 -90 210 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Index_Index2_M_rotate_Skin_Test_Anim_inputBZ";
	rename -uid "13EE642C-438C-FFE9-2519-7BBBB76EA6D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  210 0 213 90 219 -90 222 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Index_Index3_M_rotate_Skin_Test_Anim_inputBX";
	rename -uid "A3EBA0D4-4221-8ECD-936C-57816958C27E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  223 0 226 90 232 -90 235 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Index_Index3_M_rotate_Skin_Test_Anim_inputBY";
	rename -uid "D9E04A45-42AA-D457-5198-E0A82567AE98";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  235 0 238 90 244 -90 247 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Index_Index3_M_rotate_Skin_Test_Anim_inputBZ";
	rename -uid "131A23C2-4AD9-A3BF-EFF7-5EAA6FCDD5CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  247 0 250 90 256 -90 259 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Index_Index4_M_rotate_Skin_Test_Anim_inputBX";
	rename -uid "75DFBA3A-4DD5-D541-5CC5-13BD19A87FCB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  260 0 263 90 269 -90 272 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Index_Index4_M_rotate_Skin_Test_Anim_inputBY";
	rename -uid "E2C544DB-4E33-E353-3452-02A6AB67A315";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  272 0 275 90 281 -90 284 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Index_Index4_M_rotate_Skin_Test_Anim_inputBZ";
	rename -uid "E2E2CB88-4F3A-AC24-0371-0BADA6F03717";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  284 0 287 90 293 -90 296 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim_inputBX";
	rename -uid "49AD751D-4F3B-38A0-3C98-F1B01DAAA1C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  297 0 300 90 306 -90 309 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim_inputBY";
	rename -uid "EA714E47-45E1-F2D6-855A-C5AB8577675D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  309 0 312 90 318 -90 321 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim_inputBZ";
	rename -uid "ECDD0527-415A-3C53-DB19-26B278958FE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  321 0 324 90 330 -90 333 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim_inputBX";
	rename -uid "019573DF-449C-526E-4E3B-28938875D217";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  334 0 337 90 343 -90 346 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim_inputBY";
	rename -uid "B9F51BAF-49E7-C384-40F8-05A5036450BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  346 0 349 90 355 -90 358 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim_inputBZ";
	rename -uid "B1738ED3-4AA1-F0A1-72B0-CA850887F89F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  358 0 361 90 367 -90 370 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim_inputBX";
	rename -uid "4F6DCE51-4E73-5133-246D-45854653607D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  371 0 374 90 380 -90 383 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim_inputBY";
	rename -uid "D1759A31-4EE9-9A01-BFBB-50BF7C97FB83";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  383 0 386 90 392 -90 395 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim_inputBZ";
	rename -uid "E907FB8D-4767-F6AD-01DB-5780D87E941D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  395 0 398 90 404 -90 407 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim_inputBX";
	rename -uid "1B634A0E-47F5-5058-0693-E3943CBB61A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  408 0 411 90 417 -90 420 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim_inputBY";
	rename -uid "8D9A4A4B-40DE-C97E-0120-718F8BDB25E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  420 0 423 90 429 -90 432 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim_inputBZ";
	rename -uid "BEB5AF5A-4086-5186-5A05-E5ADF3391337";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  432 0 435 90 441 -90 444 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim_inputBX";
	rename -uid "8D5582B9-41BD-14D9-3403-5FB72BA72D2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  445 0 448 90 454 -90 457 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim_inputBY";
	rename -uid "FDB3621E-493C-D3FF-9837-0E8A037FF086";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  457 0 460 90 466 -90 469 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim_inputBZ";
	rename -uid "CC77CD1B-457D-9981-25F4-A8B26C286039";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  469 0 472 90 478 -90 481 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim_inputBX";
	rename -uid "43C3C615-4287-E25B-94AD-79B8A2A270D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  482 0 485 90 491 -90 494 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim_inputBY";
	rename -uid "5C048AB2-4C51-3061-02CD-85A90E745BA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  494 0 497 90 503 -90 506 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim_inputBZ";
	rename -uid "AEBFC1FF-4100-D92B-ED6E-4692A96BB6EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  506 0 509 90 515 -90 518 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim_inputBX";
	rename -uid "4C735274-495F-84A3-24B7-A18C2B23DC51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  519 0 522 90 528 -90 531 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim_inputBY";
	rename -uid "1C8DE775-4653-82C1-3FFD-118920CE1D05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  531 0 534 90 540 -90 543 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim_inputBZ";
	rename -uid "A664C4C2-40CC-517C-FA0E-459F953C9459";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  543 0 546 90 552 -90 555 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim_inputBX";
	rename -uid "BD459FCB-4155-C8CD-7EE8-4F8AB0B907C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  556 0 559 90 565 -90 568 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim_inputBY";
	rename -uid "0B91E70F-418A-2E97-4FD2-F4B6BA42656C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  568 0 571 90 577 -90 580 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim_inputBZ";
	rename -uid "E6AB112C-4966-7BEA-3073-6491C411989D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  580 0 583 90 589 -90 592 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim_inputBX";
	rename -uid "5F3A87AD-4B50-EE59-91F4-9485F993213A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  593 0 596 90 602 -90 605 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim_inputBY";
	rename -uid "A36ADBF7-4856-2A94-70FB-6E9CD13E9BD7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  605 0 608 90 614 -90 617 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim_inputBZ";
	rename -uid "667C9571-4EEA-EE3E-7BBF-E4BFCF7916FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  617 0 620 90 626 -90 629 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim_inputBX";
	rename -uid "BB08DF60-414F-0E7C-862E-23A46B4BEEE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  630 0 633 90 639 -90 642 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim_inputBY";
	rename -uid "91821392-4029-FABB-8002-08A37326F95A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  642 0 645 90 651 -90 654 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim_inputBZ";
	rename -uid "12C720B9-4E42-7C7A-D39B-7F84D02DE7C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  654 0 657 90 663 -90 666 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim_inputBX";
	rename -uid "C6800A51-419D-5332-AD8E-D4A59D786C9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  667 0 670 90 676 -90 679 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim_inputBY";
	rename -uid "2427DB78-4C20-2199-3066-61AC5251B780";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  679 0 682 90 688 -90 691 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim_inputBZ";
	rename -uid "CDE35CA9-48AA-2FB9-6C49-3DB02E1E2593";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  691 0 694 90 700 -90 703 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim_inputBX";
	rename -uid "867BFACC-4C83-5FA2-F020-EA831936D4A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  704 0 707 90 713 -90 716 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim_inputBY";
	rename -uid "A1EEE0BD-451C-F169-2D70-71A8BC93E248";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  716 0 719 90 725 -90 728 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim_inputBZ";
	rename -uid "8AEADCFF-448C-D125-B120-86919451ABC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  728 0 731 90 737 -90 740 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim_inputBX";
	rename -uid "6002313F-4F7E-BDA3-3F33-459A59C74130";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  741 0 744 90 750 -90 753 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim_inputBY";
	rename -uid "EE7A41B8-4BF7-C14C-3384-899684C3A4FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  753 0 756 90 762 -90 765 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim_inputBZ";
	rename -uid "CF9D0CB6-4059-6404-4B86-7FBDF60342FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  765 0 768 90 774 -90 777 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim_inputBX";
	rename -uid "3CF98794-4EBB-BBD6-9BAC-AB8C44323C27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  778 0 781 90 787 -90 790 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim_inputBY";
	rename -uid "846E5AB9-47DC-780D-B219-359CBFE1C718";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  790 0 793 90 799 -90 802 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim_inputBZ";
	rename -uid "C3136451-4F1E-2B25-856C-F698DD934E93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  802 0 805 90 811 -90 814 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim_inputBX";
	rename -uid "D41ACF55-44B2-7FAF-A1B0-BF9FBE03A524";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  815 0 818 90 824 -90 827 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim_inputBY";
	rename -uid "409D0A1D-4C15-C6F0-B74F-0FB413F8FDD5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  827 0 830 90 836 -90 839 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim_inputBZ";
	rename -uid "FABCA374-4C09-B125-38DE-7D996152513D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  839 0 842 90 848 -90 851 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim_inputBX";
	rename -uid "288D86F4-4DB2-49C9-6E33-C0A965EF14B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  852 0 855 90 861 -90 864 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim_inputBY";
	rename -uid "53D2B669-4556-726D-B7E7-69A5D3A4EFAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  864 0 867 90 873 -90 876 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim_inputBZ";
	rename -uid "F3DDD329-4B0F-53A0-2C22-72804F542C14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  876 0 879 90 885 -90 888 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim_inputBX";
	rename -uid "B97B2247-49D1-AB7B-26C0-E8A3EAC4FFC0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  889 0 892 90 898 -90 901 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim_inputBY";
	rename -uid "2488B45E-4182-C27A-681D-72B706894BCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  901 0 904 90 910 -90 913 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim_inputBZ";
	rename -uid "8A4B940C-4BE8-0C4C-E6E7-C09ED9991DAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  913 0 916 90 922 -90 925 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim_inputBX";
	rename -uid "83CF968F-4EA3-3075-7DAD-94A2DC6AA816";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  926 0 929 90 935 -90 938 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim_inputBY";
	rename -uid "01DC8DE7-4E82-4891-AAD1-6D9CBB6E5974";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  938 0 941 90 947 -90 950 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim_inputBZ";
	rename -uid "CC2D7A3C-4AB2-B050-3579-D68BF34960F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  950 0 953 90 959 -90 962 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim_inputBX";
	rename -uid "46BACDC6-4E8F-377F-3850-F98873B84BCF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  963 0 966 90 972 -90 975 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim_inputBY";
	rename -uid "9E090498-47A5-F175-B4B9-C29F205177A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  975 0 978 90 984 -90 987 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim_inputBZ";
	rename -uid "9F4ACD92-4DBD-694E-5063-F6B207AB2446";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 -l on ".ktv[0:3]"  987 0 990 90 996 -90 999 0;
	setAttr -l on ".ktv";
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "7E80DD54-452A-1AB6-AA93-8897BC166D97";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -511.90474156349512 -346.42855766273738 ;
	setAttr ".tgi[0].vh" -type "double2" 511.90474156349512 345.23808151956644 ;
	setAttr -s 340 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -2778.571533203125;
	setAttr ".tgi[0].ni[0].y" 625.71429443359375;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 1410;
	setAttr ".tgi[0].ni[1].y" 12272.857421875;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 1410;
	setAttr ".tgi[0].ni[2].y" 12475.7138671875;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -2778.571533203125;
	setAttr ".tgi[0].ni[3].y" 727.14288330078125;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 1410;
	setAttr ".tgi[0].ni[4].y" 12374.2861328125;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -2778.571533203125;
	setAttr ".tgi[0].ni[5].y" 828.5714111328125;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 910;
	setAttr ".tgi[0].ni[6].y" 7388.5712890625;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 410;
	setAttr ".tgi[0].ni[7].y" 2305.71435546875;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" -90;
	setAttr ".tgi[0].ni[8].y" -2217.142822265625;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 1410;
	setAttr ".tgi[0].ni[9].y" 10148.5712890625;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 410;
	setAttr ".tgi[0].ni[10].y" 1728.5714111328125;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 410;
	setAttr ".tgi[0].ni[11].y" 1525.7142333984375;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" -90;
	setAttr ".tgi[0].ni[12].y" -4432.85693359375;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 910;
	setAttr ".tgi[0].ni[13].y" 5935.71435546875;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 910;
	setAttr ".tgi[0].ni[14].y" 5834.28564453125;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 1410;
	setAttr ".tgi[0].ni[15].y" 8828.5712890625;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 910;
	setAttr ".tgi[0].ni[16].y" 8277.142578125;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" -90;
	setAttr ".tgi[0].ni[17].y" -4635.71435546875;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 410;
	setAttr ".tgi[0].ni[18].y" 2984.28564453125;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 910;
	setAttr ".tgi[0].ni[19].y" 7287.14306640625;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 910;
	setAttr ".tgi[0].ni[20].y" 6037.14306640625;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 1410;
	setAttr ".tgi[0].ni[21].y" 14374.2861328125;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" -90;
	setAttr ".tgi[0].ni[22].y" -934.28570556640625;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 1410;
	setAttr ".tgi[0].ni[23].y" 8727.142578125;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 1410;
	setAttr ".tgi[0].ni[24].y" 14475.7138671875;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" -90;
	setAttr ".tgi[0].ni[25].y" -731.4285888671875;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 910;
	setAttr ".tgi[0].ni[26].y" 7185.71435546875;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" -90;
	setAttr ".tgi[0].ni[27].y" -4534.28564453125;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 410;
	setAttr ".tgi[0].ni[28].y" 1627.142822265625;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 1410;
	setAttr ".tgi[0].ni[29].y" 11684.2861328125;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 1410;
	setAttr ".tgi[0].ni[30].y" 8625.7138671875;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 1410;
	setAttr ".tgi[0].ni[31].y" 11582.857421875;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 1410;
	setAttr ".tgi[0].ni[32].y" 11481.4287109375;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 410;
	setAttr ".tgi[0].ni[33].y" 2882.857177734375;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 410;
	setAttr ".tgi[0].ni[34].y" 4652.85693359375;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 410;
	setAttr ".tgi[0].ni[35].y" 3085.71435546875;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 1410;
	setAttr ".tgi[0].ni[36].y" 9888.5712890625;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 1410;
	setAttr ".tgi[0].ni[37].y" 9787.142578125;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 410;
	setAttr ".tgi[0].ni[38].y" 2407.142822265625;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 1410;
	setAttr ".tgi[0].ni[39].y" 14577.142578125;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 1410;
	setAttr ".tgi[0].ni[40].y" 9990;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" -90;
	setAttr ".tgi[0].ni[41].y" -2115.71435546875;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" 910;
	setAttr ".tgi[0].ni[42].y" 6684.28564453125;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 910;
	setAttr ".tgi[0].ni[43].y" 6582.85693359375;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 1410;
	setAttr ".tgi[0].ni[44].y" 10351.4287109375;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 910;
	setAttr ".tgi[0].ni[45].y" 8378.5712890625;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 410;
	setAttr ".tgi[0].ni[46].y" 2204.28564453125;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 1410;
	setAttr ".tgi[0].ni[47].y" 10250;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 910;
	setAttr ".tgi[0].ni[48].y" 8175.71435546875;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" -90;
	setAttr ".tgi[0].ni[49].y" -832.85711669921875;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" -90;
	setAttr ".tgi[0].ni[50].y" -2014.2857666015625;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 910;
	setAttr ".tgi[0].ni[51].y" 6481.4287109375;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" -548.5714111328125;
	setAttr ".tgi[0].ni[52].y" 8268.5712890625;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" -1498.5714111328125;
	setAttr ".tgi[0].ni[53].y" -6610;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" -548.5714111328125;
	setAttr ".tgi[0].ni[54].y" 8024.28564453125;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 2407.142822265625;
	setAttr ".tgi[0].ni[55].y" 13395.7138671875;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" -1967.142822265625;
	setAttr ".tgi[0].ni[56].y" -4348.5712890625;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" -1498.5714111328125;
	setAttr ".tgi[0].ni[57].y" -5944.28564453125;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" -1012.8571166992188;
	setAttr ".tgi[0].ni[58].y" -12.857142448425293;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" -1012.8571166992188;
	setAttr ".tgi[0].ni[59].y" -907.14288330078125;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" -548.5714111328125;
	setAttr ".tgi[0].ni[60].y" 1265.7142333984375;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" -1498.5714111328125;
	setAttr ".tgi[0].ni[61].y" -6711.4287109375;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" -90;
	setAttr ".tgi[0].ni[62].y" 2205.71435546875;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" -1012.8571166992188;
	setAttr ".tgi[0].ni[63].y" -590;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" -548.5714111328125;
	setAttr ".tgi[0].ni[64].y" 1107.142822265625;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" 910;
	setAttr ".tgi[0].ni[65].y" 5561.4287109375;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" -90;
	setAttr ".tgi[0].ni[66].y" 2047.142822265625;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" -548.5714111328125;
	setAttr ".tgi[0].ni[67].y" 891.4285888671875;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" -1498.5714111328125;
	setAttr ".tgi[0].ni[68].y" -6508.5712890625;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" -1012.8571166992188;
	setAttr ".tgi[0].ni[69].y" -805.71429443359375;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" -90;
	setAttr ".tgi[0].ni[70].y" 1945.7142333984375;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" 410;
	setAttr ".tgi[0].ni[71].y" 3935.71435546875;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" -1012.8571166992188;
	setAttr ".tgi[0].ni[72].y" 202.85714721679688;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" -1012.8571166992188;
	setAttr ".tgi[0].ni[73].y" -488.57144165039063;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" -1498.5714111328125;
	setAttr ".tgi[0].ni[74].y" -6305.71435546875;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" -1498.5714111328125;
	setAttr ".tgi[0].ni[75].y" -6407.14306640625;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" 410;
	setAttr ".tgi[0].ni[76].y" 3777.142822265625;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" -90;
	setAttr ".tgi[0].ni[77].y" 1844.2857666015625;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" -1498.5714111328125;
	setAttr ".tgi[0].ni[78].y" -6204.28564453125;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" -548.5714111328125;
	setAttr ".tgi[0].ni[79].y" 732.85711669921875;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" 410;
	setAttr ".tgi[0].ni[80].y" 3618.571533203125;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" 410;
	setAttr ".tgi[0].ni[81].y" 3517.142822265625;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" 910;
	setAttr ".tgi[0].ni[82].y" 5460;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" -1012.8571166992188;
	setAttr ".tgi[0].ni[83].y" -171.42857360839844;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" -1012.8571166992188;
	setAttr ".tgi[0].ni[84].y" -272.85714721679688;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" 410;
	setAttr ".tgi[0].ni[85].y" 3301.428466796875;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" 910;
	setAttr ".tgi[0].ni[86].y" 5358.5712890625;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" 910;
	setAttr ".tgi[0].ni[87].y" 5257.14306640625;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" 910;
	setAttr ".tgi[0].ni[88].y" 5155.71435546875;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" 1410;
	setAttr ".tgi[0].ni[89].y" 8352.857421875;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" -548.5714111328125;
	setAttr ".tgi[0].ni[90].y" 155.71427917480469;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" 1410;
	setAttr ".tgi[0].ni[91].y" 8251.4287109375;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" -548.5714111328125;
	setAttr ".tgi[0].ni[92].y" 54.285713195800781;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" 128.57142639160156;
	setAttr ".tgi[0].ni[93].y" 1767.142822265625;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" -90;
	setAttr ".tgi[0].ni[94].y" 1571.4285888671875;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" -90;
	setAttr ".tgi[0].ni[95].y" 1412.857177734375;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" 1410;
	setAttr ".tgi[0].ni[96].y" 8150;
	setAttr ".tgi[0].ni[96].nvs" 18304;
	setAttr ".tgi[0].ni[97].x" 1410;
	setAttr ".tgi[0].ni[97].y" 8048.5712890625;
	setAttr ".tgi[0].ni[97].nvs" 18304;
	setAttr ".tgi[0].ni[98].x" 910;
	setAttr ".tgi[0].ni[98].y" 5054.28564453125;
	setAttr ".tgi[0].ni[98].nvs" 18304;
	setAttr ".tgi[0].ni[99].x" 1410;
	setAttr ".tgi[0].ni[99].y" 7947.14306640625;
	setAttr ".tgi[0].ni[99].nvs" 18304;
	setAttr ".tgi[0].ni[100].x" 410;
	setAttr ".tgi[0].ni[100].y" 2724.28564453125;
	setAttr ".tgi[0].ni[100].nvs" 18304;
	setAttr ".tgi[0].ni[101].x" -1498.5714111328125;
	setAttr ".tgi[0].ni[101].y" -6102.85693359375;
	setAttr ".tgi[0].ni[101].nvs" 18304;
	setAttr ".tgi[0].ni[102].x" 1410;
	setAttr ".tgi[0].ni[102].y" 7845.71435546875;
	setAttr ".tgi[0].ni[102].nvs" 18304;
	setAttr ".tgi[0].ni[103].x" -90;
	setAttr ".tgi[0].ni[103].y" 892.85711669921875;
	setAttr ".tgi[0].ni[103].nvs" 18304;
	setAttr ".tgi[0].ni[104].x" 1410;
	setAttr ".tgi[0].ni[104].y" 7744.28564453125;
	setAttr ".tgi[0].ni[104].nvs" 18304;
	setAttr ".tgi[0].ni[105].x" 1410;
	setAttr ".tgi[0].ni[105].y" 7642.85693359375;
	setAttr ".tgi[0].ni[105].nvs" 18304;
	setAttr ".tgi[0].ni[106].x" 910;
	setAttr ".tgi[0].ni[106].y" 4952.85693359375;
	setAttr ".tgi[0].ni[106].nvs" 18304;
	setAttr ".tgi[0].ni[107].x" 1910;
	setAttr ".tgi[0].ni[107].y" 12231.4287109375;
	setAttr ".tgi[0].ni[107].nvs" 18304;
	setAttr ".tgi[0].ni[108].x" 1910;
	setAttr ".tgi[0].ni[108].y" 12130;
	setAttr ".tgi[0].ni[108].nvs" 18304;
	setAttr ".tgi[0].ni[109].x" -90;
	setAttr ".tgi[0].ni[109].y" 791.4285888671875;
	setAttr ".tgi[0].ni[109].nvs" 18304;
	setAttr ".tgi[0].ni[110].x" 1910;
	setAttr ".tgi[0].ni[110].y" 12028.5712890625;
	setAttr ".tgi[0].ni[110].nvs" 18304;
	setAttr ".tgi[0].ni[111].x" 410;
	setAttr ".tgi[0].ni[111].y" 2045.7142333984375;
	setAttr ".tgi[0].ni[111].nvs" 18304;
	setAttr ".tgi[0].ni[112].x" 1910;
	setAttr ".tgi[0].ni[112].y" 11927.142578125;
	setAttr ".tgi[0].ni[112].nvs" 18304;
	setAttr ".tgi[0].ni[113].x" 910;
	setAttr ".tgi[0].ni[113].y" 4851.4287109375;
	setAttr ".tgi[0].ni[113].nvs" 18304;
	setAttr ".tgi[0].ni[114].x" 410;
	setAttr ".tgi[0].ni[114].y" 1944.2857666015625;
	setAttr ".tgi[0].ni[114].nvs" 18304;
	setAttr ".tgi[0].ni[115].x" 1410;
	setAttr ".tgi[0].ni[115].y" 7541.4287109375;
	setAttr ".tgi[0].ni[115].nvs" 18304;
	setAttr ".tgi[0].ni[116].x" 1410;
	setAttr ".tgi[0].ni[116].y" 7440;
	setAttr ".tgi[0].ni[116].nvs" 18304;
	setAttr ".tgi[0].ni[117].x" 1910;
	setAttr ".tgi[0].ni[117].y" 11825.7138671875;
	setAttr ".tgi[0].ni[117].nvs" 18304;
	setAttr ".tgi[0].ni[118].x" 1910;
	setAttr ".tgi[0].ni[118].y" 11622.857421875;
	setAttr ".tgi[0].ni[118].nvs" 18304;
	setAttr ".tgi[0].ni[119].x" 410;
	setAttr ".tgi[0].ni[119].y" 1195.7142333984375;
	setAttr ".tgi[0].ni[119].nvs" 18304;
	setAttr ".tgi[0].ni[120].x" 410;
	setAttr ".tgi[0].ni[120].y" 1037.142822265625;
	setAttr ".tgi[0].ni[120].nvs" 18304;
	setAttr ".tgi[0].ni[121].x" 410;
	setAttr ".tgi[0].ni[121].y" 935.71429443359375;
	setAttr ".tgi[0].ni[121].nvs" 18304;
	setAttr ".tgi[0].ni[122].x" 410;
	setAttr ".tgi[0].ni[122].y" 777.14288330078125;
	setAttr ".tgi[0].ni[122].nvs" 18304;
	setAttr ".tgi[0].ni[123].x" 910;
	setAttr ".tgi[0].ni[123].y" 4750;
	setAttr ".tgi[0].ni[123].nvs" 18304;
	setAttr ".tgi[0].ni[124].x" 1410;
	setAttr ".tgi[0].ni[124].y" 7338.5712890625;
	setAttr ".tgi[0].ni[124].nvs" 18304;
	setAttr ".tgi[0].ni[125].x" 1910;
	setAttr ".tgi[0].ni[125].y" 11724.2861328125;
	setAttr ".tgi[0].ni[125].nvs" 18304;
	setAttr ".tgi[0].ni[126].x" 1910;
	setAttr ".tgi[0].ni[126].y" 11521.4287109375;
	setAttr ".tgi[0].ni[126].nvs" 18304;
	setAttr ".tgi[0].ni[127].x" 1910;
	setAttr ".tgi[0].ni[127].y" 11420;
	setAttr ".tgi[0].ni[127].nvs" 18304;
	setAttr ".tgi[0].ni[128].x" 910;
	setAttr ".tgi[0].ni[128].y" 4648.5712890625;
	setAttr ".tgi[0].ni[128].nvs" 18304;
	setAttr ".tgi[0].ni[129].x" 1910;
	setAttr ".tgi[0].ni[129].y" 11318.5712890625;
	setAttr ".tgi[0].ni[129].nvs" 18304;
	setAttr ".tgi[0].ni[130].x" 1910;
	setAttr ".tgi[0].ni[130].y" 11160;
	setAttr ".tgi[0].ni[130].nvs" 18304;
	setAttr ".tgi[0].ni[131].x" 1910;
	setAttr ".tgi[0].ni[131].y" 11058.5712890625;
	setAttr ".tgi[0].ni[131].nvs" 18304;
	setAttr ".tgi[0].ni[132].x" 410;
	setAttr ".tgi[0].ni[132].y" 447.14285278320313;
	setAttr ".tgi[0].ni[132].nvs" 18304;
	setAttr ".tgi[0].ni[133].x" 410;
	setAttr ".tgi[0].ni[133].y" 345.71429443359375;
	setAttr ".tgi[0].ni[133].nvs" 18304;
	setAttr ".tgi[0].ni[134].x" 910;
	setAttr ".tgi[0].ni[134].y" 4547.14306640625;
	setAttr ".tgi[0].ni[134].nvs" 18304;
	setAttr ".tgi[0].ni[135].x" 1410;
	setAttr ".tgi[0].ni[135].y" 7237.14306640625;
	setAttr ".tgi[0].ni[135].nvs" 18304;
	setAttr ".tgi[0].ni[136].x" 910;
	setAttr ".tgi[0].ni[136].y" 4445.71435546875;
	setAttr ".tgi[0].ni[136].nvs" 18304;
	setAttr ".tgi[0].ni[137].x" 910;
	setAttr ".tgi[0].ni[137].y" 4344.28564453125;
	setAttr ".tgi[0].ni[137].nvs" 18304;
	setAttr ".tgi[0].ni[138].x" 910;
	setAttr ".tgi[0].ni[138].y" 4242.85693359375;
	setAttr ".tgi[0].ni[138].nvs" 18304;
	setAttr ".tgi[0].ni[139].x" 1410;
	setAttr ".tgi[0].ni[139].y" 7135.71435546875;
	setAttr ".tgi[0].ni[139].nvs" 18304;
	setAttr ".tgi[0].ni[140].x" 1410;
	setAttr ".tgi[0].ni[140].y" 7034.28564453125;
	setAttr ".tgi[0].ni[140].nvs" 18304;
	setAttr ".tgi[0].ni[141].x" 1910;
	setAttr ".tgi[0].ni[141].y" 10957.142578125;
	setAttr ".tgi[0].ni[141].nvs" 18304;
	setAttr ".tgi[0].ni[142].x" 910;
	setAttr ".tgi[0].ni[142].y" 4141.4287109375;
	setAttr ".tgi[0].ni[142].nvs" 18304;
	setAttr ".tgi[0].ni[143].x" 1910;
	setAttr ".tgi[0].ni[143].y" 10855.7138671875;
	setAttr ".tgi[0].ni[143].nvs" 18304;
	setAttr ".tgi[0].ni[144].x" 1910;
	setAttr ".tgi[0].ni[144].y" 10754.2861328125;
	setAttr ".tgi[0].ni[144].nvs" 18304;
	setAttr ".tgi[0].ni[145].x" 410;
	setAttr ".tgi[0].ni[145].y" 72.857139587402344;
	setAttr ".tgi[0].ni[145].nvs" 18304;
	setAttr ".tgi[0].ni[146].x" 410;
	setAttr ".tgi[0].ni[146].y" -28.571428298950195;
	setAttr ".tgi[0].ni[146].nvs" 18304;
	setAttr ".tgi[0].ni[147].x" 1410;
	setAttr ".tgi[0].ni[147].y" 6932.85693359375;
	setAttr ".tgi[0].ni[147].nvs" 18304;
	setAttr ".tgi[0].ni[148].x" 1910;
	setAttr ".tgi[0].ni[148].y" 10652.857421875;
	setAttr ".tgi[0].ni[148].nvs" 18304;
	setAttr ".tgi[0].ni[149].x" 910;
	setAttr ".tgi[0].ni[149].y" 4040;
	setAttr ".tgi[0].ni[149].nvs" 18304;
	setAttr ".tgi[0].ni[150].x" 410;
	setAttr ".tgi[0].ni[150].y" -187.14285278320313;
	setAttr ".tgi[0].ni[150].nvs" 18304;
	setAttr ".tgi[0].ni[151].x" 1410;
	setAttr ".tgi[0].ni[151].y" 6831.4287109375;
	setAttr ".tgi[0].ni[151].nvs" 18304;
	setAttr ".tgi[0].ni[152].x" 410;
	setAttr ".tgi[0].ni[152].y" -345.71429443359375;
	setAttr ".tgi[0].ni[152].nvs" 18304;
	setAttr ".tgi[0].ni[153].x" -1498.5714111328125;
	setAttr ".tgi[0].ni[153].y" -4998.5712890625;
	setAttr ".tgi[0].ni[153].nvs" 18304;
	setAttr ".tgi[0].ni[154].x" 1910;
	setAttr ".tgi[0].ni[154].y" 10551.4287109375;
	setAttr ".tgi[0].ni[154].nvs" 18304;
	setAttr ".tgi[0].ni[155].x" 1910;
	setAttr ".tgi[0].ni[155].y" 10450;
	setAttr ".tgi[0].ni[155].nvs" 18304;
	setAttr ".tgi[0].ni[156].x" 2407.142822265625;
	setAttr ".tgi[0].ni[156].y" 9067.142578125;
	setAttr ".tgi[0].ni[156].nvs" 18304;
	setAttr ".tgi[0].ni[157].x" 2407.142822265625;
	setAttr ".tgi[0].ni[157].y" 8965.7138671875;
	setAttr ".tgi[0].ni[157].nvs" 18304;
	setAttr ".tgi[0].ni[158].x" -548.5714111328125;
	setAttr ".tgi[0].ni[158].y" 371.42855834960938;
	setAttr ".tgi[0].ni[158].nvs" 18304;
	setAttr ".tgi[0].ni[159].x" 410;
	setAttr ".tgi[0].ni[159].y" 5845.71435546875;
	setAttr ".tgi[0].ni[159].nvs" 18304;
	setAttr ".tgi[0].ni[160].x" -1967.142822265625;
	setAttr ".tgi[0].ni[160].y" -6407.14306640625;
	setAttr ".tgi[0].ni[160].nvs" 18304;
	setAttr ".tgi[0].ni[161].x" 910;
	setAttr ".tgi[0].ni[161].y" 8924.2861328125;
	setAttr ".tgi[0].ni[161].nvs" 18304;
	setAttr ".tgi[0].ni[162].x" 1410;
	setAttr ".tgi[0].ni[162].y" 13930;
	setAttr ".tgi[0].ni[162].nvs" 18304;
	setAttr ".tgi[0].ni[163].x" 1910;
	setAttr ".tgi[0].ni[163].y" 10348.5712890625;
	setAttr ".tgi[0].ni[163].nvs" 18304;
	setAttr ".tgi[0].ni[164].x" -90;
	setAttr ".tgi[0].ni[164].y" 1254.2857666015625;
	setAttr ".tgi[0].ni[164].nvs" 18304;
	setAttr ".tgi[0].ni[165].x" 1910;
	setAttr ".tgi[0].ni[165].y" 10247.142578125;
	setAttr ".tgi[0].ni[165].nvs" 18304;
	setAttr ".tgi[0].ni[166].x" -90;
	setAttr ".tgi[0].ni[166].y" 1152.857177734375;
	setAttr ".tgi[0].ni[166].nvs" 18304;
	setAttr ".tgi[0].ni[167].x" -90;
	setAttr ".tgi[0].ni[167].y" 1051.4285888671875;
	setAttr ".tgi[0].ni[167].nvs" 18304;
	setAttr ".tgi[0].ni[168].x" 2407.142822265625;
	setAttr ".tgi[0].ni[168].y" 8864.2861328125;
	setAttr ".tgi[0].ni[168].nvs" 18304;
	setAttr ".tgi[0].ni[169].x" 910;
	setAttr ".tgi[0].ni[169].y" 2665.71435546875;
	setAttr ".tgi[0].ni[169].nvs" 18304;
	setAttr ".tgi[0].ni[170].x" 1910;
	setAttr ".tgi[0].ni[170].y" 10145.7138671875;
	setAttr ".tgi[0].ni[170].nvs" 18304;
	setAttr ".tgi[0].ni[171].x" -2764.28564453125;
	setAttr ".tgi[0].ni[171].y" 727.14288330078125;
	setAttr ".tgi[0].ni[171].nvs" 18304;
	setAttr ".tgi[0].ni[172].x" 2407.142822265625;
	setAttr ".tgi[0].ni[172].y" 8762.857421875;
	setAttr ".tgi[0].ni[172].nvs" 18304;
	setAttr ".tgi[0].ni[173].x" -1967.142822265625;
	setAttr ".tgi[0].ni[173].y" -6610;
	setAttr ".tgi[0].ni[173].nvs" 18304;
	setAttr ".tgi[0].ni[174].x" 2407.142822265625;
	setAttr ".tgi[0].ni[174].y" 9371.4287109375;
	setAttr ".tgi[0].ni[174].nvs" 18304;
	setAttr ".tgi[0].ni[175].x" -1498.5714111328125;
	setAttr ".tgi[0].ni[175].y" -4897.14306640625;
	setAttr ".tgi[0].ni[175].nvs" 18304;
	setAttr ".tgi[0].ni[176].x" -548.5714111328125;
	setAttr ".tgi[0].ni[176].y" 472.85714721679688;
	setAttr ".tgi[0].ni[176].nvs" 18304;
	setAttr ".tgi[0].ni[177].x" 410;
	setAttr ".tgi[0].ni[177].y" 4855.71435546875;
	setAttr ".tgi[0].ni[177].nvs" 18304;
	setAttr ".tgi[0].ni[178].x" 410;
	setAttr ".tgi[0].ni[178].y" 4754.28564453125;
	setAttr ".tgi[0].ni[178].nvs" 18304;
	setAttr ".tgi[0].ni[179].x" -548.5714111328125;
	setAttr ".tgi[0].ni[179].y" -1761.4285888671875;
	setAttr ".tgi[0].ni[179].nvs" 18304;
	setAttr ".tgi[0].ni[180].x" 2407.142822265625;
	setAttr ".tgi[0].ni[180].y" 8560;
	setAttr ".tgi[0].ni[180].nvs" 18304;
	setAttr ".tgi[0].ni[181].x" 910;
	setAttr ".tgi[0].ni[181].y" 9025.7138671875;
	setAttr ".tgi[0].ni[181].nvs" 18304;
	setAttr ".tgi[0].ni[182].x" 1910;
	setAttr ".tgi[0].ni[182].y" 9638.5712890625;
	setAttr ".tgi[0].ni[182].nvs" 18304;
	setAttr ".tgi[0].ni[183].x" 1910;
	setAttr ".tgi[0].ni[183].y" 10044.2861328125;
	setAttr ".tgi[0].ni[183].nvs" 18304;
	setAttr ".tgi[0].ni[184].x" -1967.142822265625;
	setAttr ".tgi[0].ni[184].y" -6508.5712890625;
	setAttr ".tgi[0].ni[184].nvs" 18304;
	setAttr ".tgi[0].ni[185].x" 1910;
	setAttr ".tgi[0].ni[185].y" 9334.2861328125;
	setAttr ".tgi[0].ni[185].nvs" 18304;
	setAttr ".tgi[0].ni[186].x" 1910;
	setAttr ".tgi[0].ni[186].y" 9841.4287109375;
	setAttr ".tgi[0].ni[186].nvs" 18304;
	setAttr ".tgi[0].ni[187].x" 1910;
	setAttr ".tgi[0].ni[187].y" 9942.857421875;
	setAttr ".tgi[0].ni[187].nvs" 18304;
	setAttr ".tgi[0].ni[188].x" 2407.142822265625;
	setAttr ".tgi[0].ni[188].y" 8458.5712890625;
	setAttr ".tgi[0].ni[188].nvs" 18304;
	setAttr ".tgi[0].ni[189].x" 1050;
	setAttr ".tgi[0].ni[189].y" 1832.857177734375;
	setAttr ".tgi[0].ni[189].nvs" 18304;
	setAttr ".tgi[0].ni[190].x" 1910;
	setAttr ".tgi[0].ni[190].y" 9537.142578125;
	setAttr ".tgi[0].ni[190].nvs" 18304;
	setAttr ".tgi[0].ni[191].x" -1498.5714111328125;
	setAttr ".tgi[0].ni[191].y" -5100;
	setAttr ".tgi[0].ni[191].nvs" 18304;
	setAttr ".tgi[0].ni[192].x" 1910;
	setAttr ".tgi[0].ni[192].y" 9740;
	setAttr ".tgi[0].ni[192].nvs" 18304;
	setAttr ".tgi[0].ni[193].x" 1910;
	setAttr ".tgi[0].ni[193].y" 9435.7138671875;
	setAttr ".tgi[0].ni[193].nvs" 18304;
	setAttr ".tgi[0].ni[194].x" 1910;
	setAttr ".tgi[0].ni[194].y" 9131.4287109375;
	setAttr ".tgi[0].ni[194].nvs" 18304;
	setAttr ".tgi[0].ni[195].x" 1910;
	setAttr ".tgi[0].ni[195].y" 9232.857421875;
	setAttr ".tgi[0].ni[195].nvs" 18304;
	setAttr ".tgi[0].ni[196].x" 1910;
	setAttr ".tgi[0].ni[196].y" 8928.5712890625;
	setAttr ".tgi[0].ni[196].nvs" 18304;
	setAttr ".tgi[0].ni[197].x" 1410;
	setAttr ".tgi[0].ni[197].y" 6730;
	setAttr ".tgi[0].ni[197].nvs" 18304;
	setAttr ".tgi[0].ni[198].x" 1910;
	setAttr ".tgi[0].ni[198].y" 9030;
	setAttr ".tgi[0].ni[198].nvs" 18304;
	setAttr ".tgi[0].ni[199].x" 2407.142822265625;
	setAttr ".tgi[0].ni[199].y" 8357.142578125;
	setAttr ".tgi[0].ni[199].nvs" 18304;
	setAttr ".tgi[0].ni[200].x" 1910;
	setAttr ".tgi[0].ni[200].y" 8624.2861328125;
	setAttr ".tgi[0].ni[200].nvs" 18304;
	setAttr ".tgi[0].ni[201].x" 1415.7142333984375;
	setAttr ".tgi[0].ni[201].y" 1781.4285888671875;
	setAttr ".tgi[0].ni[201].nvs" 18304;
	setAttr ".tgi[0].ni[202].x" 1910;
	setAttr ".tgi[0].ni[202].y" 8827.142578125;
	setAttr ".tgi[0].ni[202].nvs" 18304;
	setAttr ".tgi[0].ni[203].x" -1012.8571166992188;
	setAttr ".tgi[0].ni[203].y" -7980;
	setAttr ".tgi[0].ni[203].nvs" 18304;
	setAttr ".tgi[0].ni[204].x" -1012.8571166992188;
	setAttr ".tgi[0].ni[204].y" -8081.4287109375;
	setAttr ".tgi[0].ni[204].nvs" 18304;
	setAttr ".tgi[0].ni[205].x" -1012.8571166992188;
	setAttr ".tgi[0].ni[205].y" -8182.85693359375;
	setAttr ".tgi[0].ni[205].nvs" 18304;
	setAttr ".tgi[0].ni[206].x" -548.5714111328125;
	setAttr ".tgi[0].ni[206].y" 574.28570556640625;
	setAttr ".tgi[0].ni[206].nvs" 18304;
	setAttr ".tgi[0].ni[207].x" -90;
	setAttr ".tgi[0].ni[207].y" 3481.428466796875;
	setAttr ".tgi[0].ni[207].nvs" 18304;
	setAttr ".tgi[0].ni[208].x" -90;
	setAttr ".tgi[0].ni[208].y" 3380;
	setAttr ".tgi[0].ni[208].nvs" 18304;
	setAttr ".tgi[0].ni[209].x" -90;
	setAttr ".tgi[0].ni[209].y" 3278.571533203125;
	setAttr ".tgi[0].ni[209].nvs" 18304;
	setAttr ".tgi[0].ni[210].x" 410;
	setAttr ".tgi[0].ni[210].y" 5744.28564453125;
	setAttr ".tgi[0].ni[210].nvs" 18304;
	setAttr ".tgi[0].ni[211].x" 410;
	setAttr ".tgi[0].ni[211].y" 5642.85693359375;
	setAttr ".tgi[0].ni[211].nvs" 18304;
	setAttr ".tgi[0].ni[212].x" 910;
	setAttr ".tgi[0].ni[212].y" 8822.857421875;
	setAttr ".tgi[0].ni[212].nvs" 18304;
	setAttr ".tgi[0].ni[213].x" 1410;
	setAttr ".tgi[0].ni[213].y" 13828.5712890625;
	setAttr ".tgi[0].ni[213].nvs" 18304;
	setAttr ".tgi[0].ni[214].x" 1410;
	setAttr ".tgi[0].ni[214].y" 13727.142578125;
	setAttr ".tgi[0].ni[214].nvs" 18304;
	setAttr ".tgi[0].ni[215].x" 2407.142822265625;
	setAttr ".tgi[0].ni[215].y" 9574.2861328125;
	setAttr ".tgi[0].ni[215].nvs" 18304;
	setAttr ".tgi[0].ni[216].x" 1910;
	setAttr ".tgi[0].ni[216].y" 6595.71435546875;
	setAttr ".tgi[0].ni[216].nvs" 18304;
	setAttr ".tgi[0].ni[217].x" 742.85711669921875;
	setAttr ".tgi[0].ni[217].y" 1744.2857666015625;
	setAttr ".tgi[0].ni[217].nvs" 18304;
	setAttr ".tgi[0].ni[218].x" 410;
	setAttr ".tgi[0].ni[218].y" 2622.857177734375;
	setAttr ".tgi[0].ni[218].nvs" 18304;
	setAttr ".tgi[0].ni[219].x" -1012.8571166992188;
	setAttr ".tgi[0].ni[219].y" -14512.857421875;
	setAttr ".tgi[0].ni[219].nvs" 18304;
	setAttr ".tgi[0].ni[220].x" 910;
	setAttr ".tgi[0].ni[220].y" 3938.571533203125;
	setAttr ".tgi[0].ni[220].nvs" 18304;
	setAttr ".tgi[0].ni[221].x" 1615.7142333984375;
	setAttr ".tgi[0].ni[221].y" 3545.71435546875;
	setAttr ".tgi[0].ni[221].nvs" 18304;
	setAttr ".tgi[0].ni[222].x" 2407.142822265625;
	setAttr ".tgi[0].ni[222].y" 9472.857421875;
	setAttr ".tgi[0].ni[222].nvs" 18304;
	setAttr ".tgi[0].ni[223].x" 1615.7142333984375;
	setAttr ".tgi[0].ni[223].y" 4262.85693359375;
	setAttr ".tgi[0].ni[223].nvs" 18304;
	setAttr ".tgi[0].ni[224].x" 1410;
	setAttr ".tgi[0].ni[224].y" 6324.28564453125;
	setAttr ".tgi[0].ni[224].nvs" 18304;
	setAttr ".tgi[0].ni[225].x" 2407.142822265625;
	setAttr ".tgi[0].ni[225].y" 8661.4287109375;
	setAttr ".tgi[0].ni[225].nvs" 18304;
	setAttr ".tgi[0].ni[226].x" 910;
	setAttr ".tgi[0].ni[226].y" 2234.28564453125;
	setAttr ".tgi[0].ni[226].nvs" 18304;
	setAttr ".tgi[0].ni[227].x" 550;
	setAttr ".tgi[0].ni[227].y" -57.142856597900391;
	setAttr ".tgi[0].ni[227].nvs" 18304;
	setAttr ".tgi[0].ni[228].x" 1910;
	setAttr ".tgi[0].ni[228].y" 7204.28564453125;
	setAttr ".tgi[0].ni[228].nvs" 18304;
	setAttr ".tgi[0].ni[229].x" 1410;
	setAttr ".tgi[0].ni[229].y" 6425.71435546875;
	setAttr ".tgi[0].ni[229].nvs" 18304;
	setAttr ".tgi[0].ni[230].x" 1910;
	setAttr ".tgi[0].ni[230].y" 8725.7138671875;
	setAttr ".tgi[0].ni[230].nvs" 18304;
	setAttr ".tgi[0].ni[231].x" -90;
	setAttr ".tgi[0].ni[231].y" 4668.5712890625;
	setAttr ".tgi[0].ni[231].nvs" 18304;
	setAttr ".tgi[0].ni[232].x" -2285.71435546875;
	setAttr ".tgi[0].ni[232].y" 5321.4287109375;
	setAttr ".tgi[0].ni[232].nvs" 18304;
	setAttr ".tgi[0].ni[233].x" 1050;
	setAttr ".tgi[0].ni[233].y" 1572.857177734375;
	setAttr ".tgi[0].ni[233].nvs" 18304;
	setAttr ".tgi[0].ni[234].x" 910;
	setAttr ".tgi[0].ni[234].y" 2564.28564453125;
	setAttr ".tgi[0].ni[234].nvs" 18304;
	setAttr ".tgi[0].ni[235].x" 435.71429443359375;
	setAttr ".tgi[0].ni[235].y" 1767.142822265625;
	setAttr ".tgi[0].ni[235].nvs" 18304;
	setAttr ".tgi[0].ni[236].x" 550;
	setAttr ".tgi[0].ni[236].y" -187.14285278320313;
	setAttr ".tgi[0].ni[236].nvs" 18304;
	setAttr ".tgi[0].ni[237].x" 1410;
	setAttr ".tgi[0].ni[237].y" 6628.5712890625;
	setAttr ".tgi[0].ni[237].nvs" 18304;
	setAttr ".tgi[0].ni[238].x" 1910;
	setAttr ".tgi[0].ni[238].y" 8522.857421875;
	setAttr ".tgi[0].ni[238].nvs" 18304;
	setAttr ".tgi[0].ni[239].x" 2407.142822265625;
	setAttr ".tgi[0].ni[239].y" 9168.5712890625;
	setAttr ".tgi[0].ni[239].nvs" 18304;
	setAttr ".tgi[0].ni[240].x" 1050;
	setAttr ".tgi[0].ni[240].y" 1674.2857666015625;
	setAttr ".tgi[0].ni[240].nvs" 18304;
	setAttr ".tgi[0].ni[241].x" 1615.7142333984375;
	setAttr ".tgi[0].ni[241].y" 3444.28564453125;
	setAttr ".tgi[0].ni[241].nvs" 18304;
	setAttr ".tgi[0].ni[242].x" 2407.142822265625;
	setAttr ".tgi[0].ni[242].y" 9675.7138671875;
	setAttr ".tgi[0].ni[242].nvs" 18304;
	setAttr ".tgi[0].ni[243].x" 1410;
	setAttr ".tgi[0].ni[243].y" 5094.28564453125;
	setAttr ".tgi[0].ni[243].nvs" 18304;
	setAttr ".tgi[0].ni[244].x" 910;
	setAttr ".tgi[0].ni[244].y" 105.71428680419922;
	setAttr ".tgi[0].ni[244].nvs" 18304;
	setAttr ".tgi[0].ni[245].x" 397.14285278320313;
	setAttr ".tgi[0].ni[245].y" -95.714286804199219;
	setAttr ".tgi[0].ni[245].nvs" 18304;
	setAttr ".tgi[0].ni[246].x" 2407.142822265625;
	setAttr ".tgi[0].ni[246].y" 9270;
	setAttr ".tgi[0].ni[246].nvs" 18304;
	setAttr ".tgi[0].ni[247].x" 1910;
	setAttr ".tgi[0].ni[247].y" 7001.4287109375;
	setAttr ".tgi[0].ni[247].nvs" 18304;
	setAttr ".tgi[0].ni[248].x" 742.85711669921875;
	setAttr ".tgi[0].ni[248].y" 1642.857177734375;
	setAttr ".tgi[0].ni[248].nvs" 18304;
	setAttr ".tgi[0].ni[249].x" 1910;
	setAttr ".tgi[0].ni[249].y" 8320;
	setAttr ".tgi[0].ni[249].nvs" 18304;
	setAttr ".tgi[0].ni[250].x" 910;
	setAttr ".tgi[0].ni[250].y" 2018.5714111328125;
	setAttr ".tgi[0].ni[250].nvs" 18304;
	setAttr ".tgi[0].ni[251].x" 910;
	setAttr ".tgi[0].ni[251].y" 1917.142822265625;
	setAttr ".tgi[0].ni[251].nvs" 18304;
	setAttr ".tgi[0].ni[252].x" 910;
	setAttr ".tgi[0].ni[252].y" 1758.5714111328125;
	setAttr ".tgi[0].ni[252].nvs" 18304;
	setAttr ".tgi[0].ni[253].x" 1410;
	setAttr ".tgi[0].ni[253].y" 6222.85693359375;
	setAttr ".tgi[0].ni[253].nvs" 18304;
	setAttr ".tgi[0].ni[254].x" 1410;
	setAttr ".tgi[0].ni[254].y" 6527.14306640625;
	setAttr ".tgi[0].ni[254].nvs" 18304;
	setAttr ".tgi[0].ni[255].x" 1410;
	setAttr ".tgi[0].ni[255].y" 6121.4287109375;
	setAttr ".tgi[0].ni[255].nvs" 18304;
	setAttr ".tgi[0].ni[256].x" 410;
	setAttr ".tgi[0].ni[256].y" -1608.5714111328125;
	setAttr ".tgi[0].ni[256].nvs" 18304;
	setAttr ".tgi[0].ni[257].x" 410;
	setAttr ".tgi[0].ni[257].y" -1868.5714111328125;
	setAttr ".tgi[0].ni[257].nvs" 18304;
	setAttr ".tgi[0].ni[258].x" 910;
	setAttr ".tgi[0].ni[258].y" 1600;
	setAttr ".tgi[0].ni[258].nvs" 18304;
	setAttr ".tgi[0].ni[259].x" 910;
	setAttr ".tgi[0].ni[259].y" 1498.5714111328125;
	setAttr ".tgi[0].ni[259].nvs" 18304;
	setAttr ".tgi[0].ni[260].x" 410;
	setAttr ".tgi[0].ni[260].y" -2084.28564453125;
	setAttr ".tgi[0].ni[260].nvs" 18304;
	setAttr ".tgi[0].ni[261].x" 410;
	setAttr ".tgi[0].ni[261].y" -1710;
	setAttr ".tgi[0].ni[261].nvs" 18304;
	setAttr ".tgi[0].ni[262].x" 410;
	setAttr ".tgi[0].ni[262].y" -2242.857177734375;
	setAttr ".tgi[0].ni[262].nvs" 18304;
	setAttr ".tgi[0].ni[263].x" 910;
	setAttr ".tgi[0].ni[263].y" 1397.142822265625;
	setAttr ".tgi[0].ni[263].nvs" 18304;
	setAttr ".tgi[0].ni[264].x" 1910;
	setAttr ".tgi[0].ni[264].y" 8421.4287109375;
	setAttr ".tgi[0].ni[264].nvs" 18304;
	setAttr ".tgi[0].ni[265].x" 1910;
	setAttr ".tgi[0].ni[265].y" 8218.5712890625;
	setAttr ".tgi[0].ni[265].nvs" 18304;
	setAttr ".tgi[0].ni[266].x" 910;
	setAttr ".tgi[0].ni[266].y" 1238.5714111328125;
	setAttr ".tgi[0].ni[266].nvs" 18304;
	setAttr ".tgi[0].ni[267].x" 410;
	setAttr ".tgi[0].ni[267].y" -2560;
	setAttr ".tgi[0].ni[267].nvs" 18304;
	setAttr ".tgi[0].ni[268].x" 1410;
	setAttr ".tgi[0].ni[268].y" 6020;
	setAttr ".tgi[0].ni[268].nvs" 18304;
	setAttr ".tgi[0].ni[269].x" 910;
	setAttr ".tgi[0].ni[269].y" 1137.142822265625;
	setAttr ".tgi[0].ni[269].nvs" 18304;
	setAttr ".tgi[0].ni[270].x" 1410;
	setAttr ".tgi[0].ni[270].y" 5817.14306640625;
	setAttr ".tgi[0].ni[270].nvs" 18304;
	setAttr ".tgi[0].ni[271].x" 410;
	setAttr ".tgi[0].ni[271].y" -2401.428466796875;
	setAttr ".tgi[0].ni[271].nvs" 18304;
	setAttr ".tgi[0].ni[272].x" 1410;
	setAttr ".tgi[0].ni[272].y" 5715.71435546875;
	setAttr ".tgi[0].ni[272].nvs" 18304;
	setAttr ".tgi[0].ni[273].x" 1410;
	setAttr ".tgi[0].ni[273].y" 5918.5712890625;
	setAttr ".tgi[0].ni[273].nvs" 18304;
	setAttr ".tgi[0].ni[274].x" 410;
	setAttr ".tgi[0].ni[274].y" -2718.571533203125;
	setAttr ".tgi[0].ni[274].nvs" 18304;
	setAttr ".tgi[0].ni[275].x" 410;
	setAttr ".tgi[0].ni[275].y" -2820;
	setAttr ".tgi[0].ni[275].nvs" 18304;
	setAttr ".tgi[0].ni[276].x" 1910;
	setAttr ".tgi[0].ni[276].y" 8117.14306640625;
	setAttr ".tgi[0].ni[276].nvs" 18304;
	setAttr ".tgi[0].ni[277].x" 410;
	setAttr ".tgi[0].ni[277].y" -2978.571533203125;
	setAttr ".tgi[0].ni[277].nvs" 18304;
	setAttr ".tgi[0].ni[278].x" 910;
	setAttr ".tgi[0].ni[278].y" 1035.7142333984375;
	setAttr ".tgi[0].ni[278].nvs" 18304;
	setAttr ".tgi[0].ni[279].x" 910;
	setAttr ".tgi[0].ni[279].y" 877.14288330078125;
	setAttr ".tgi[0].ni[279].nvs" 18304;
	setAttr ".tgi[0].ni[280].x" 410;
	setAttr ".tgi[0].ni[280].y" -3251.428466796875;
	setAttr ".tgi[0].ni[280].nvs" 18304;
	setAttr ".tgi[0].ni[281].x" 1410;
	setAttr ".tgi[0].ni[281].y" 5455.71435546875;
	setAttr ".tgi[0].ni[281].nvs" 18304;
	setAttr ".tgi[0].ni[282].x" 1410;
	setAttr ".tgi[0].ni[282].y" 5614.28564453125;
	setAttr ".tgi[0].ni[282].nvs" 18304;
	setAttr ".tgi[0].ni[283].x" 1910;
	setAttr ".tgi[0].ni[283].y" 8015.71435546875;
	setAttr ".tgi[0].ni[283].nvs" 18304;
	setAttr ".tgi[0].ni[284].x" 1410;
	setAttr ".tgi[0].ni[284].y" 5354.28564453125;
	setAttr ".tgi[0].ni[284].nvs" 18304;
	setAttr ".tgi[0].ni[285].x" 910;
	setAttr ".tgi[0].ni[285].y" 661.4285888671875;
	setAttr ".tgi[0].ni[285].nvs" 18304;
	setAttr ".tgi[0].ni[286].x" 910;
	setAttr ".tgi[0].ni[286].y" 560;
	setAttr ".tgi[0].ni[286].nvs" 18304;
	setAttr ".tgi[0].ni[287].x" 910;
	setAttr ".tgi[0].ni[287].y" 401.42855834960938;
	setAttr ".tgi[0].ni[287].nvs" 18304;
	setAttr ".tgi[0].ni[288].x" 1910;
	setAttr ".tgi[0].ni[288].y" 7914.28564453125;
	setAttr ".tgi[0].ni[288].nvs" 18304;
	setAttr ".tgi[0].ni[289].x" 1910;
	setAttr ".tgi[0].ni[289].y" 7812.85693359375;
	setAttr ".tgi[0].ni[289].nvs" 18304;
	setAttr ".tgi[0].ni[290].x" 1410;
	setAttr ".tgi[0].ni[290].y" 5195.71435546875;
	setAttr ".tgi[0].ni[290].nvs" 18304;
	setAttr ".tgi[0].ni[291].x" 410;
	setAttr ".tgi[0].ni[291].y" -3740;
	setAttr ".tgi[0].ni[291].nvs" 18304;
	setAttr ".tgi[0].ni[292].x" 1910;
	setAttr ".tgi[0].ni[292].y" 7711.4287109375;
	setAttr ".tgi[0].ni[292].nvs" 18304;
	setAttr ".tgi[0].ni[293].x" 1910;
	setAttr ".tgi[0].ni[293].y" 7508.5712890625;
	setAttr ".tgi[0].ni[293].nvs" 18304;
	setAttr ".tgi[0].ni[294].x" 1410;
	setAttr ".tgi[0].ni[294].y" 4992.85693359375;
	setAttr ".tgi[0].ni[294].nvs" 18304;
	setAttr ".tgi[0].ni[295].x" 1910;
	setAttr ".tgi[0].ni[295].y" 7305.71435546875;
	setAttr ".tgi[0].ni[295].nvs" 18304;
	setAttr ".tgi[0].ni[296].x" 410;
	setAttr ".tgi[0].ni[296].y" -3638.571533203125;
	setAttr ".tgi[0].ni[296].nvs" 18304;
	setAttr ".tgi[0].ni[297].x" 410;
	setAttr ".tgi[0].ni[297].y" -3841.428466796875;
	setAttr ".tgi[0].ni[297].nvs" 18304;
	setAttr ".tgi[0].ni[298].x" 910;
	setAttr ".tgi[0].ni[298].y" -52.857143402099609;
	setAttr ".tgi[0].ni[298].nvs" 18304;
	setAttr ".tgi[0].ni[299].x" 910;
	setAttr ".tgi[0].ni[299].y" -154.28572082519531;
	setAttr ".tgi[0].ni[299].nvs" 18304;
	setAttr ".tgi[0].ni[300].x" 910;
	setAttr ".tgi[0].ni[300].y" -255.71427917480469;
	setAttr ".tgi[0].ni[300].nvs" 18304;
	setAttr ".tgi[0].ni[301].x" 1410;
	setAttr ".tgi[0].ni[301].y" 4891.4287109375;
	setAttr ".tgi[0].ni[301].nvs" 18304;
	setAttr ".tgi[0].ni[302].x" 1410;
	setAttr ".tgi[0].ni[302].y" 4732.85693359375;
	setAttr ".tgi[0].ni[302].nvs" 18304;
	setAttr ".tgi[0].ni[303].x" 1410;
	setAttr ".tgi[0].ni[303].y" 4631.4287109375;
	setAttr ".tgi[0].ni[303].nvs" 18304;
	setAttr ".tgi[0].ni[304].x" 1410;
	setAttr ".tgi[0].ni[304].y" 4472.85693359375;
	setAttr ".tgi[0].ni[304].nvs" 18304;
	setAttr ".tgi[0].ni[305].x" 1910;
	setAttr ".tgi[0].ni[305].y" 7610;
	setAttr ".tgi[0].ni[305].nvs" 18304;
	setAttr ".tgi[0].ni[306].x" 1910;
	setAttr ".tgi[0].ni[306].y" 7407.14306640625;
	setAttr ".tgi[0].ni[306].nvs" 18304;
	setAttr ".tgi[0].ni[307].x" 1910;
	setAttr ".tgi[0].ni[307].y" 7102.85693359375;
	setAttr ".tgi[0].ni[307].nvs" 18304;
	setAttr ".tgi[0].ni[308].x" 1910;
	setAttr ".tgi[0].ni[308].y" 6494.28564453125;
	setAttr ".tgi[0].ni[308].nvs" 18304;
	setAttr ".tgi[0].ni[309].x" 1410;
	setAttr ".tgi[0].ni[309].y" 4371.4287109375;
	setAttr ".tgi[0].ni[309].nvs" 18304;
	setAttr ".tgi[0].ni[310].x" 1910;
	setAttr ".tgi[0].ni[310].y" 6900;
	setAttr ".tgi[0].ni[310].nvs" 18304;
	setAttr ".tgi[0].ni[311].x" 910;
	setAttr ".tgi[0].ni[311].y" -757.14288330078125;
	setAttr ".tgi[0].ni[311].nvs" 18304;
	setAttr ".tgi[0].ni[312].x" 910;
	setAttr ".tgi[0].ni[312].y" -915.71429443359375;
	setAttr ".tgi[0].ni[312].nvs" 18304;
	setAttr ".tgi[0].ni[313].x" 910;
	setAttr ".tgi[0].ni[313].y" -1017.1428833007813;
	setAttr ".tgi[0].ni[313].nvs" 18304;
	setAttr ".tgi[0].ni[314].x" 910;
	setAttr ".tgi[0].ni[314].y" -1118.5714111328125;
	setAttr ".tgi[0].ni[314].nvs" 18304;
	setAttr ".tgi[0].ni[315].x" 1410;
	setAttr ".tgi[0].ni[315].y" 4212.85693359375;
	setAttr ".tgi[0].ni[315].nvs" 18304;
	setAttr ".tgi[0].ni[316].x" 910;
	setAttr ".tgi[0].ni[316].y" -1220;
	setAttr ".tgi[0].ni[316].nvs" 18304;
	setAttr ".tgi[0].ni[317].x" 410;
	setAttr ".tgi[0].ni[317].y" -5142.85693359375;
	setAttr ".tgi[0].ni[317].nvs" 18304;
	setAttr ".tgi[0].ni[318].x" 910;
	setAttr ".tgi[0].ni[318].y" -1321.4285888671875;
	setAttr ".tgi[0].ni[318].nvs" 18304;
	setAttr ".tgi[0].ni[319].x" 1910;
	setAttr ".tgi[0].ni[319].y" 6392.85693359375;
	setAttr ".tgi[0].ni[319].nvs" 18304;
	setAttr ".tgi[0].ni[320].x" 1910;
	setAttr ".tgi[0].ni[320].y" 6291.4287109375;
	setAttr ".tgi[0].ni[320].nvs" 18304;
	setAttr ".tgi[0].ni[321].x" 910;
	setAttr ".tgi[0].ni[321].y" -1480;
	setAttr ".tgi[0].ni[321].nvs" 18304;
	setAttr ".tgi[0].ni[322].x" 410;
	setAttr ".tgi[0].ni[322].y" -5598.5712890625;
	setAttr ".tgi[0].ni[322].nvs" 18304;
	setAttr ".tgi[0].ni[323].x" 1410;
	setAttr ".tgi[0].ni[323].y" 4054.28564453125;
	setAttr ".tgi[0].ni[323].nvs" 18304;
	setAttr ".tgi[0].ni[324].x" 410;
	setAttr ".tgi[0].ni[324].y" -5757.14306640625;
	setAttr ".tgi[0].ni[324].nvs" 18304;
	setAttr ".tgi[0].ni[325].x" 410;
	setAttr ".tgi[0].ni[325].y" -5915.71435546875;
	setAttr ".tgi[0].ni[325].nvs" 18304;
	setAttr ".tgi[0].ni[326].x" 1910;
	setAttr ".tgi[0].ni[326].y" 6798.5712890625;
	setAttr ".tgi[0].ni[326].nvs" 18304;
	setAttr ".tgi[0].ni[327].x" 410;
	setAttr ".tgi[0].ni[327].y" -6074.28564453125;
	setAttr ".tgi[0].ni[327].nvs" 18304;
	setAttr ".tgi[0].ni[328].x" 410;
	setAttr ".tgi[0].ni[328].y" -6175.71435546875;
	setAttr ".tgi[0].ni[328].nvs" 18304;
	setAttr ".tgi[0].ni[329].x" 410;
	setAttr ".tgi[0].ni[329].y" -6334.28564453125;
	setAttr ".tgi[0].ni[329].nvs" 18304;
	setAttr ".tgi[0].ni[330].x" 410;
	setAttr ".tgi[0].ni[330].y" -6435.71435546875;
	setAttr ".tgi[0].ni[330].nvs" 18304;
	setAttr ".tgi[0].ni[331].x" 1910;
	setAttr ".tgi[0].ni[331].y" 6697.14306640625;
	setAttr ".tgi[0].ni[331].nvs" 18304;
	setAttr ".tgi[0].ni[332].x" 1410;
	setAttr ".tgi[0].ni[332].y" 3895.71435546875;
	setAttr ".tgi[0].ni[332].nvs" 18304;
	setAttr ".tgi[0].ni[333].x" 1410;
	setAttr ".tgi[0].ni[333].y" 3737.142822265625;
	setAttr ".tgi[0].ni[333].nvs" 18304;
	setAttr ".tgi[0].ni[334].x" 1410;
	setAttr ".tgi[0].ni[334].y" 3635.71435546875;
	setAttr ".tgi[0].ni[334].nvs" 18304;
	setAttr ".tgi[0].ni[335].x" 1410;
	setAttr ".tgi[0].ni[335].y" 3477.142822265625;
	setAttr ".tgi[0].ni[335].nvs" 18304;
	setAttr ".tgi[0].ni[336].x" 910;
	setAttr ".tgi[0].ni[336].y" -1638.5714111328125;
	setAttr ".tgi[0].ni[336].nvs" 18304;
	setAttr ".tgi[0].ni[337].x" 1410;
	setAttr ".tgi[0].ni[337].y" 3375.71435546875;
	setAttr ".tgi[0].ni[337].nvs" 18304;
	setAttr ".tgi[0].ni[338].x" 1910;
	setAttr ".tgi[0].ni[338].y" 6190;
	setAttr ".tgi[0].ni[338].nvs" 18304;
	setAttr ".tgi[0].ni[339].x" 1910;
	setAttr ".tgi[0].ni[339].y" 6088.5712890625;
	setAttr ".tgi[0].ni[339].nvs" 18304;
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
connectAttr "Joint_Disp.di" "JNT_Clav_Clav01_M.do";
connectAttr "NODE_Clav_Limb_M.joints" "JNT_Clav_Clav01_M.limb";
connectAttr "JNT_Clav_Clav01_M_scaleX_Skin_Test_Anim.o" "JNT_Clav_Clav01_M.sx";
connectAttr "JNT_Clav_Clav01_M_scaleY_Skin_Test_Anim.o" "JNT_Clav_Clav01_M.sy";
connectAttr "JNT_Clav_Clav01_M_scaleZ_Skin_Test_Anim.o" "JNT_Clav_Clav01_M.sz";
connectAttr "JNT_Clav_Clav01_M_translateX_Skin_Test_Anim.o" "JNT_Clav_Clav01_M.tx"
		;
connectAttr "JNT_Clav_Clav01_M_translateY_Skin_Test_Anim.o" "JNT_Clav_Clav01_M.ty"
		;
connectAttr "JNT_Clav_Clav01_M_translateZ_Skin_Test_Anim.o" "JNT_Clav_Clav01_M.tz"
		;
connectAttr "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim.ox" "JNT_Clav_Clav01_M.rx";
connectAttr "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim.oy" "JNT_Clav_Clav01_M.ry";
connectAttr "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim.oz" "JNT_Clav_Clav01_M.rz";
connectAttr "JNT_Clav_Clav01_M_visibility_Skin_Test_Anim.o" "JNT_Clav_Clav01_M.v"
		;
connectAttr "JNT_Clav_Clav01_M.s" "JNT_Arm_Shoulder_M.is";
connectAttr "Joint_Disp.di" "JNT_Arm_Shoulder_M.do";
connectAttr "NODE_Arm_Limb_M.joints" "JNT_Arm_Shoulder_M.limb";
connectAttr "JNT_Arm_Shoulder_M_scaleX_Skin_Test_Anim.o" "JNT_Arm_Shoulder_M.sx"
		;
connectAttr "JNT_Arm_Shoulder_M_scaleY_Skin_Test_Anim.o" "JNT_Arm_Shoulder_M.sy"
		;
connectAttr "JNT_Arm_Shoulder_M_scaleZ_Skin_Test_Anim.o" "JNT_Arm_Shoulder_M.sz"
		;
connectAttr "JNT_Arm_Shoulder_M_translateX_Skin_Test_Anim.o" "JNT_Arm_Shoulder_M.tx"
		;
connectAttr "JNT_Arm_Shoulder_M_translateY_Skin_Test_Anim.o" "JNT_Arm_Shoulder_M.ty"
		;
connectAttr "JNT_Arm_Shoulder_M_translateZ_Skin_Test_Anim.o" "JNT_Arm_Shoulder_M.tz"
		;
connectAttr "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim.ox" "JNT_Arm_Shoulder_M.rx"
		;
connectAttr "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim.oy" "JNT_Arm_Shoulder_M.ry"
		;
connectAttr "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim.oz" "JNT_Arm_Shoulder_M.rz"
		;
connectAttr "JNT_Arm_Shoulder_M_visibility_Skin_Test_Anim.o" "JNT_Arm_Shoulder_M.v"
		;
connectAttr "JNT_Arm_Shoulder_M.s" "JNT_BicepTwist_BicepTwist_M.is";
connectAttr "Joint_Disp.di" "JNT_BicepTwist_BicepTwist_M.do";
connectAttr "NODE_BicepTwist_Limb_M.joints" "JNT_BicepTwist_BicepTwist_M.limb";
connectAttr "JNT_BicepTwist_BicepTwist_M_translateX_Skin_Test_Anim.o" "JNT_BicepTwist_BicepTwist_M.tx"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_translateY_Skin_Test_Anim.o" "JNT_BicepTwist_BicepTwist_M.ty"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_translateZ_Skin_Test_Anim.o" "JNT_BicepTwist_BicepTwist_M.tz"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim.ox" "JNT_BicepTwist_BicepTwist_M.rx"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim.oy" "JNT_BicepTwist_BicepTwist_M.ry"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim.oz" "JNT_BicepTwist_BicepTwist_M.rz"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_visibility_Skin_Test_Anim.o" "JNT_BicepTwist_BicepTwist_M.v"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_scaleX_Skin_Test_Anim.o" "JNT_BicepTwist_BicepTwist_M.sx"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_scaleY_Skin_Test_Anim.o" "JNT_BicepTwist_BicepTwist_M.sy"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_scaleZ_Skin_Test_Anim.o" "JNT_BicepTwist_BicepTwist_M.sz"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M.group" "GRP0_BicepTwist_Joint_M.joint";
connectAttr "NODE_BicepTwist_Limb_M.jointGroups" "GRP0_BicepTwist_Joint_M.limb";
connectAttr "NODE_BicepTwist_Limb_M.usedGroups" "GRP0_BicepTwist_Joint_M.used";
connectAttr "Control_Disp.di" "CTR0_BicepTwist_Joint_M.do";
connectAttr "GRP0_BicepTwist_Joint_M.control" "CTR0_BicepTwist_Joint_M.group";
connectAttr "JNT_Arm_Shoulder_M.s" "JNT_Arm_Elbow_M.is";
connectAttr "Joint_Disp.di" "JNT_Arm_Elbow_M.do";
connectAttr "NODE_Arm_Limb_M.joints" "JNT_Arm_Elbow_M.limb";
connectAttr "JNT_Arm_Elbow_M_scaleX_Skin_Test_Anim.o" "JNT_Arm_Elbow_M.sx";
connectAttr "JNT_Arm_Elbow_M_scaleY_Skin_Test_Anim.o" "JNT_Arm_Elbow_M.sy";
connectAttr "JNT_Arm_Elbow_M_scaleZ_Skin_Test_Anim.o" "JNT_Arm_Elbow_M.sz";
connectAttr "JNT_Arm_Elbow_M_translateX_Skin_Test_Anim.o" "JNT_Arm_Elbow_M.tx";
connectAttr "JNT_Arm_Elbow_M_translateY_Skin_Test_Anim.o" "JNT_Arm_Elbow_M.ty";
connectAttr "JNT_Arm_Elbow_M_translateZ_Skin_Test_Anim.o" "JNT_Arm_Elbow_M.tz";
connectAttr "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim.ox" "JNT_Arm_Elbow_M.rx";
connectAttr "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim.oy" "JNT_Arm_Elbow_M.ry";
connectAttr "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim.oz" "JNT_Arm_Elbow_M.rz";
connectAttr "JNT_Arm_Elbow_M_visibility_Skin_Test_Anim.o" "JNT_Arm_Elbow_M.v";
connectAttr "JNT_Arm_Elbow_M.s" "JNT_ForearmTwist_ForearmTwist1_M.is";
connectAttr "Joint_Disp.di" "JNT_ForearmTwist_ForearmTwist1_M.do";
connectAttr "NODE_ForearmTwist_Limb_M.joints" "JNT_ForearmTwist_ForearmTwist1_M.limb"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_translateX_Skin_Test_Anim.o" "JNT_ForearmTwist_ForearmTwist1_M.tx"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_translateY_Skin_Test_Anim.o" "JNT_ForearmTwist_ForearmTwist1_M.ty"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_translateZ_Skin_Test_Anim.o" "JNT_ForearmTwist_ForearmTwist1_M.tz"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim.ox" "JNT_ForearmTwist_ForearmTwist1_M.rx"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim.oy" "JNT_ForearmTwist_ForearmTwist1_M.ry"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim.oz" "JNT_ForearmTwist_ForearmTwist1_M.rz"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_visibility_Skin_Test_Anim.o" "JNT_ForearmTwist_ForearmTwist1_M.v"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_scaleX_Skin_Test_Anim.o" "JNT_ForearmTwist_ForearmTwist1_M.sx"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_scaleY_Skin_Test_Anim.o" "JNT_ForearmTwist_ForearmTwist1_M.sy"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_scaleZ_Skin_Test_Anim.o" "JNT_ForearmTwist_ForearmTwist1_M.sz"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.group" "GRP0_ForearmTwist1_Joint_M.joint"
		;
connectAttr "NODE_ForearmTwist_Limb_M.jointGroups" "GRP0_ForearmTwist1_Joint_M.limb"
		;
connectAttr "NODE_ForearmTwist_Limb_M.usedGroups" "GRP0_ForearmTwist1_Joint_M.used"
		;
connectAttr "Control_Disp.di" "CTR0_ForearmTwist1_Joint_M.do";
connectAttr "GRP0_ForearmTwist1_Joint_M.control" "CTR0_ForearmTwist1_Joint_M.group"
		;
connectAttr "JNT_Arm_Elbow_M.s" "JNT_ForearmTwist_ForearmTwist2_M.is";
connectAttr "Joint_Disp.di" "JNT_ForearmTwist_ForearmTwist2_M.do";
connectAttr "NODE_ForearmTwist_Limb_M.joints" "JNT_ForearmTwist_ForearmTwist2_M.limb"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_translateX_Skin_Test_Anim.o" "JNT_ForearmTwist_ForearmTwist2_M.tx"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_translateY_Skin_Test_Anim.o" "JNT_ForearmTwist_ForearmTwist2_M.ty"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_translateZ_Skin_Test_Anim.o" "JNT_ForearmTwist_ForearmTwist2_M.tz"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim.ox" "JNT_ForearmTwist_ForearmTwist2_M.rx"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim.oy" "JNT_ForearmTwist_ForearmTwist2_M.ry"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim.oz" "JNT_ForearmTwist_ForearmTwist2_M.rz"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_visibility_Skin_Test_Anim.o" "JNT_ForearmTwist_ForearmTwist2_M.v"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_scaleX_Skin_Test_Anim.o" "JNT_ForearmTwist_ForearmTwist2_M.sx"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_scaleY_Skin_Test_Anim.o" "JNT_ForearmTwist_ForearmTwist2_M.sy"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_scaleZ_Skin_Test_Anim.o" "JNT_ForearmTwist_ForearmTwist2_M.sz"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.group" "GRP1_ForearmTwist2_Joint_M.joint"
		;
connectAttr "NODE_ForearmTwist_Limb_M.jointGroups" "GRP1_ForearmTwist2_Joint_M.limb"
		;
connectAttr "NODE_ForearmTwist_Limb_M.usedGroups" "GRP1_ForearmTwist2_Joint_M.used"
		;
connectAttr "Control_Disp.di" "CTR1_ForearmTwist2_Joint_M.do";
connectAttr "GRP1_ForearmTwist2_Joint_M.control" "CTR1_ForearmTwist2_Joint_M.group"
		;
connectAttr "JNT_Arm_Elbow_M.s" "JNT_Arm_Wrist_M.is";
connectAttr "Joint_Disp.di" "JNT_Arm_Wrist_M.do";
connectAttr "NODE_Arm_Limb_M.joints" "JNT_Arm_Wrist_M.limb";
connectAttr "JNT_Arm_Wrist_M_scaleX_Skin_Test_Anim.o" "JNT_Arm_Wrist_M.sx";
connectAttr "JNT_Arm_Wrist_M_scaleY_Skin_Test_Anim.o" "JNT_Arm_Wrist_M.sy";
connectAttr "JNT_Arm_Wrist_M_scaleZ_Skin_Test_Anim.o" "JNT_Arm_Wrist_M.sz";
connectAttr "JNT_Arm_Wrist_M_translateX_Skin_Test_Anim.o" "JNT_Arm_Wrist_M.tx";
connectAttr "JNT_Arm_Wrist_M_translateY_Skin_Test_Anim.o" "JNT_Arm_Wrist_M.ty";
connectAttr "JNT_Arm_Wrist_M_translateZ_Skin_Test_Anim.o" "JNT_Arm_Wrist_M.tz";
connectAttr "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim.ox" "JNT_Arm_Wrist_M.rx";
connectAttr "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim.oy" "JNT_Arm_Wrist_M.ry";
connectAttr "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim.oz" "JNT_Arm_Wrist_M.rz";
connectAttr "JNT_Arm_Wrist_M_visibility_Skin_Test_Anim.o" "JNT_Arm_Wrist_M.v";
connectAttr "JNT_Arm_Wrist_M.s" "JNT_Middle_Middle1_M.is";
connectAttr "Joint_Disp.di" "JNT_Middle_Middle1_M.do";
connectAttr "NODE_Middle_Limb_M.joints" "JNT_Middle_Middle1_M.limb";
connectAttr "JNT_Middle_Middle1_M_scaleX_Skin_Test_Anim.o" "JNT_Middle_Middle1_M.sx"
		;
connectAttr "JNT_Middle_Middle1_M_scaleY_Skin_Test_Anim.o" "JNT_Middle_Middle1_M.sy"
		;
connectAttr "JNT_Middle_Middle1_M_scaleZ_Skin_Test_Anim.o" "JNT_Middle_Middle1_M.sz"
		;
connectAttr "JNT_Middle_Middle1_M_translateX_Skin_Test_Anim.o" "JNT_Middle_Middle1_M.tx"
		;
connectAttr "JNT_Middle_Middle1_M_translateY_Skin_Test_Anim.o" "JNT_Middle_Middle1_M.ty"
		;
connectAttr "JNT_Middle_Middle1_M_translateZ_Skin_Test_Anim.o" "JNT_Middle_Middle1_M.tz"
		;
connectAttr "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim.ox" "JNT_Middle_Middle1_M.rx"
		;
connectAttr "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim.oy" "JNT_Middle_Middle1_M.ry"
		;
connectAttr "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim.oz" "JNT_Middle_Middle1_M.rz"
		;
connectAttr "JNT_Middle_Middle1_M_visibility_Skin_Test_Anim.o" "JNT_Middle_Middle1_M.v"
		;
connectAttr "JNT_Middle_Middle1_M.s" "JNT_Middle_Middle2_M.is";
connectAttr "Joint_Disp.di" "JNT_Middle_Middle2_M.do";
connectAttr "NODE_Middle_Limb_M.joints" "JNT_Middle_Middle2_M.limb";
connectAttr "JNT_Middle_Middle2_M_scaleX_Skin_Test_Anim.o" "JNT_Middle_Middle2_M.sx"
		;
connectAttr "JNT_Middle_Middle2_M_scaleY_Skin_Test_Anim.o" "JNT_Middle_Middle2_M.sy"
		;
connectAttr "JNT_Middle_Middle2_M_scaleZ_Skin_Test_Anim.o" "JNT_Middle_Middle2_M.sz"
		;
connectAttr "JNT_Middle_Middle2_M_translateX_Skin_Test_Anim.o" "JNT_Middle_Middle2_M.tx"
		;
connectAttr "JNT_Middle_Middle2_M_translateY_Skin_Test_Anim.o" "JNT_Middle_Middle2_M.ty"
		;
connectAttr "JNT_Middle_Middle2_M_translateZ_Skin_Test_Anim.o" "JNT_Middle_Middle2_M.tz"
		;
connectAttr "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim.ox" "JNT_Middle_Middle2_M.rx"
		;
connectAttr "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim.oy" "JNT_Middle_Middle2_M.ry"
		;
connectAttr "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim.oz" "JNT_Middle_Middle2_M.rz"
		;
connectAttr "JNT_Middle_Middle2_M_visibility_Skin_Test_Anim.o" "JNT_Middle_Middle2_M.v"
		;
connectAttr "JNT_Middle_Middle2_M.s" "JNT_Middle_Middle3_M.is";
connectAttr "Joint_Disp.di" "JNT_Middle_Middle3_M.do";
connectAttr "NODE_Middle_Limb_M.joints" "JNT_Middle_Middle3_M.limb";
connectAttr "JNT_Middle_Middle3_M_scaleX_Skin_Test_Anim.o" "JNT_Middle_Middle3_M.sx"
		;
connectAttr "JNT_Middle_Middle3_M_scaleY_Skin_Test_Anim.o" "JNT_Middle_Middle3_M.sy"
		;
connectAttr "JNT_Middle_Middle3_M_scaleZ_Skin_Test_Anim.o" "JNT_Middle_Middle3_M.sz"
		;
connectAttr "JNT_Middle_Middle3_M_translateX_Skin_Test_Anim.o" "JNT_Middle_Middle3_M.tx"
		;
connectAttr "JNT_Middle_Middle3_M_translateY_Skin_Test_Anim.o" "JNT_Middle_Middle3_M.ty"
		;
connectAttr "JNT_Middle_Middle3_M_translateZ_Skin_Test_Anim.o" "JNT_Middle_Middle3_M.tz"
		;
connectAttr "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim.ox" "JNT_Middle_Middle3_M.rx"
		;
connectAttr "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim.oy" "JNT_Middle_Middle3_M.ry"
		;
connectAttr "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim.oz" "JNT_Middle_Middle3_M.rz"
		;
connectAttr "JNT_Middle_Middle3_M_visibility_Skin_Test_Anim.o" "JNT_Middle_Middle3_M.v"
		;
connectAttr "JNT_Middle_Middle3_M.s" "JNT_Middle_Middle4_M.is";
connectAttr "Joint_Disp.di" "JNT_Middle_Middle4_M.do";
connectAttr "NODE_Middle_Limb_M.joints" "JNT_Middle_Middle4_M.limb";
connectAttr "JNT_Middle_Middle4_M_translateX_Skin_Test_Anim.o" "JNT_Middle_Middle4_M.tx"
		;
connectAttr "JNT_Middle_Middle4_M_translateY_Skin_Test_Anim.o" "JNT_Middle_Middle4_M.ty"
		;
connectAttr "JNT_Middle_Middle4_M_translateZ_Skin_Test_Anim.o" "JNT_Middle_Middle4_M.tz"
		;
connectAttr "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim.ox" "JNT_Middle_Middle4_M.rx"
		;
connectAttr "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim.oy" "JNT_Middle_Middle4_M.ry"
		;
connectAttr "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim.oz" "JNT_Middle_Middle4_M.rz"
		;
connectAttr "JNT_Middle_Middle4_M_visibility_Skin_Test_Anim.o" "JNT_Middle_Middle4_M.v"
		;
connectAttr "JNT_Middle_Middle4_M_scaleX_Skin_Test_Anim.o" "JNT_Middle_Middle4_M.sx"
		;
connectAttr "JNT_Middle_Middle4_M_scaleY_Skin_Test_Anim.o" "JNT_Middle_Middle4_M.sy"
		;
connectAttr "JNT_Middle_Middle4_M_scaleZ_Skin_Test_Anim.o" "JNT_Middle_Middle4_M.sz"
		;
connectAttr "JNT_Middle_Middle4_M.group" "GRP3_Middle4_Joint_M.joint";
connectAttr "NODE_Middle_Limb_M.jointGroups" "GRP3_Middle4_Joint_M.limb";
connectAttr "NODE_Middle_Limb_M.usedGroups" "GRP3_Middle4_Joint_M.used";
connectAttr "Control_Disp.di" "CTR3_Middle4_Joint_M.do";
connectAttr "GRP3_Middle4_Joint_M.control" "CTR3_Middle4_Joint_M.group";
connectAttr "JNT_Middle_Middle3_M.group" "GRP2_Middle3_Joint_M.joint";
connectAttr "NODE_Middle_Limb_M.jointGroups" "GRP2_Middle3_Joint_M.limb";
connectAttr "NODE_Middle_Limb_M.usedGroups" "GRP2_Middle3_Joint_M.used";
connectAttr "Control_Disp.di" "CTR2_Middle3_Joint_M.do";
connectAttr "GRP2_Middle3_Joint_M.control" "CTR2_Middle3_Joint_M.group";
connectAttr "JNT_Middle_Middle2_M.group" "GRP1_Middle2_Joint_M.joint";
connectAttr "NODE_Middle_Limb_M.jointGroups" "GRP1_Middle2_Joint_M.limb";
connectAttr "NODE_Middle_Limb_M.usedGroups" "GRP1_Middle2_Joint_M.used";
connectAttr "Control_Disp.di" "CTR1_Middle2_Joint_M.do";
connectAttr "GRP1_Middle2_Joint_M.control" "CTR1_Middle2_Joint_M.group";
connectAttr "JNT_Middle_Middle1_M.group" "GRP0_Middle1_Joint_M.joint";
connectAttr "NODE_Middle_Limb_M.jointGroups" "GRP0_Middle1_Joint_M.limb";
connectAttr "NODE_Middle_Limb_M.usedGroups" "GRP0_Middle1_Joint_M.used";
connectAttr "Control_Disp.di" "CTR0_Middle1_Joint_M.do";
connectAttr "GRP0_Middle1_Joint_M.control" "CTR0_Middle1_Joint_M.group";
connectAttr "JNT_Arm_Wrist_M.s" "JNT_Ring_Ring1_M.is";
connectAttr "Joint_Disp.di" "JNT_Ring_Ring1_M.do";
connectAttr "NODE_Ring_Limb_M.joints" "JNT_Ring_Ring1_M.limb";
connectAttr "JNT_Ring_Ring1_M_scaleX_Skin_Test_Anim.o" "JNT_Ring_Ring1_M.sx";
connectAttr "JNT_Ring_Ring1_M_scaleY_Skin_Test_Anim.o" "JNT_Ring_Ring1_M.sy";
connectAttr "JNT_Ring_Ring1_M_scaleZ_Skin_Test_Anim.o" "JNT_Ring_Ring1_M.sz";
connectAttr "JNT_Ring_Ring1_M_translateX_Skin_Test_Anim.o" "JNT_Ring_Ring1_M.tx"
		;
connectAttr "JNT_Ring_Ring1_M_translateY_Skin_Test_Anim.o" "JNT_Ring_Ring1_M.ty"
		;
connectAttr "JNT_Ring_Ring1_M_translateZ_Skin_Test_Anim.o" "JNT_Ring_Ring1_M.tz"
		;
connectAttr "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim.ox" "JNT_Ring_Ring1_M.rx";
connectAttr "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim.oy" "JNT_Ring_Ring1_M.ry";
connectAttr "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim.oz" "JNT_Ring_Ring1_M.rz";
connectAttr "JNT_Ring_Ring1_M_visibility_Skin_Test_Anim.o" "JNT_Ring_Ring1_M.v";
connectAttr "JNT_Ring_Ring1_M.s" "JNT_Ring_Ring2_M.is";
connectAttr "Joint_Disp.di" "JNT_Ring_Ring2_M.do";
connectAttr "NODE_Ring_Limb_M.joints" "JNT_Ring_Ring2_M.limb";
connectAttr "JNT_Ring_Ring2_M_scaleX_Skin_Test_Anim.o" "JNT_Ring_Ring2_M.sx";
connectAttr "JNT_Ring_Ring2_M_scaleY_Skin_Test_Anim.o" "JNT_Ring_Ring2_M.sy";
connectAttr "JNT_Ring_Ring2_M_scaleZ_Skin_Test_Anim.o" "JNT_Ring_Ring2_M.sz";
connectAttr "JNT_Ring_Ring2_M_translateX_Skin_Test_Anim.o" "JNT_Ring_Ring2_M.tx"
		;
connectAttr "JNT_Ring_Ring2_M_translateY_Skin_Test_Anim.o" "JNT_Ring_Ring2_M.ty"
		;
connectAttr "JNT_Ring_Ring2_M_translateZ_Skin_Test_Anim.o" "JNT_Ring_Ring2_M.tz"
		;
connectAttr "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim.ox" "JNT_Ring_Ring2_M.rx";
connectAttr "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim.oy" "JNT_Ring_Ring2_M.ry";
connectAttr "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim.oz" "JNT_Ring_Ring2_M.rz";
connectAttr "JNT_Ring_Ring2_M_visibility_Skin_Test_Anim.o" "JNT_Ring_Ring2_M.v";
connectAttr "JNT_Ring_Ring2_M.s" "JNT_Ring_Ring3_M.is";
connectAttr "Joint_Disp.di" "JNT_Ring_Ring3_M.do";
connectAttr "NODE_Ring_Limb_M.joints" "JNT_Ring_Ring3_M.limb";
connectAttr "JNT_Ring_Ring3_M_scaleX_Skin_Test_Anim.o" "JNT_Ring_Ring3_M.sx";
connectAttr "JNT_Ring_Ring3_M_scaleY_Skin_Test_Anim.o" "JNT_Ring_Ring3_M.sy";
connectAttr "JNT_Ring_Ring3_M_scaleZ_Skin_Test_Anim.o" "JNT_Ring_Ring3_M.sz";
connectAttr "JNT_Ring_Ring3_M_translateX_Skin_Test_Anim.o" "JNT_Ring_Ring3_M.tx"
		;
connectAttr "JNT_Ring_Ring3_M_translateY_Skin_Test_Anim.o" "JNT_Ring_Ring3_M.ty"
		;
connectAttr "JNT_Ring_Ring3_M_translateZ_Skin_Test_Anim.o" "JNT_Ring_Ring3_M.tz"
		;
connectAttr "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim.ox" "JNT_Ring_Ring3_M.rx";
connectAttr "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim.oy" "JNT_Ring_Ring3_M.ry";
connectAttr "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim.oz" "JNT_Ring_Ring3_M.rz";
connectAttr "JNT_Ring_Ring3_M_visibility_Skin_Test_Anim.o" "JNT_Ring_Ring3_M.v";
connectAttr "JNT_Ring_Ring3_M.s" "JNT_Ring_Ring4_M.is";
connectAttr "Joint_Disp.di" "JNT_Ring_Ring4_M.do";
connectAttr "NODE_Ring_Limb_M.joints" "JNT_Ring_Ring4_M.limb";
connectAttr "JNT_Ring_Ring4_M_translateX_Skin_Test_Anim.o" "JNT_Ring_Ring4_M.tx"
		;
connectAttr "JNT_Ring_Ring4_M_translateY_Skin_Test_Anim.o" "JNT_Ring_Ring4_M.ty"
		;
connectAttr "JNT_Ring_Ring4_M_translateZ_Skin_Test_Anim.o" "JNT_Ring_Ring4_M.tz"
		;
connectAttr "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim.ox" "JNT_Ring_Ring4_M.rx";
connectAttr "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim.oy" "JNT_Ring_Ring4_M.ry";
connectAttr "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim.oz" "JNT_Ring_Ring4_M.rz";
connectAttr "JNT_Ring_Ring4_M_visibility_Skin_Test_Anim.o" "JNT_Ring_Ring4_M.v";
connectAttr "JNT_Ring_Ring4_M_scaleX_Skin_Test_Anim.o" "JNT_Ring_Ring4_M.sx";
connectAttr "JNT_Ring_Ring4_M_scaleY_Skin_Test_Anim.o" "JNT_Ring_Ring4_M.sy";
connectAttr "JNT_Ring_Ring4_M_scaleZ_Skin_Test_Anim.o" "JNT_Ring_Ring4_M.sz";
connectAttr "JNT_Ring_Ring4_M.group" "GRP3_Ring4_Joint_M.joint";
connectAttr "NODE_Ring_Limb_M.jointGroups" "GRP3_Ring4_Joint_M.limb";
connectAttr "NODE_Ring_Limb_M.usedGroups" "GRP3_Ring4_Joint_M.used";
connectAttr "Control_Disp.di" "CTR3_Ring4_Joint_M.do";
connectAttr "GRP3_Ring4_Joint_M.control" "CTR3_Ring4_Joint_M.group";
connectAttr "JNT_Ring_Ring3_M.group" "GRP2_Ring3_Joint_M.joint";
connectAttr "NODE_Ring_Limb_M.jointGroups" "GRP2_Ring3_Joint_M.limb";
connectAttr "NODE_Ring_Limb_M.usedGroups" "GRP2_Ring3_Joint_M.used";
connectAttr "Control_Disp.di" "CTR2_Ring3_Joint_M.do";
connectAttr "GRP2_Ring3_Joint_M.control" "CTR2_Ring3_Joint_M.group";
connectAttr "JNT_Ring_Ring2_M.group" "GRP1_Ring2_Joint_M.joint";
connectAttr "NODE_Ring_Limb_M.jointGroups" "GRP1_Ring2_Joint_M.limb";
connectAttr "NODE_Ring_Limb_M.usedGroups" "GRP1_Ring2_Joint_M.used";
connectAttr "Control_Disp.di" "CTR1_Ring2_Joint_M.do";
connectAttr "GRP1_Ring2_Joint_M.control" "CTR1_Ring2_Joint_M.group";
connectAttr "JNT_Ring_Ring1_M.group" "GRP0_Ring1_Joint_M.joint";
connectAttr "NODE_Ring_Limb_M.jointGroups" "GRP0_Ring1_Joint_M.limb";
connectAttr "NODE_Ring_Limb_M.usedGroups" "GRP0_Ring1_Joint_M.used";
connectAttr "Control_Disp.di" "CTR0_Ring1_Joint_M.do";
connectAttr "GRP0_Ring1_Joint_M.control" "CTR0_Ring1_Joint_M.group";
connectAttr "JNT_Arm_Wrist_M.s" "JNT_Index_Index1_M.is";
connectAttr "Joint_Disp.di" "JNT_Index_Index1_M.do";
connectAttr "NODE_Index_Limb_M.joints" "JNT_Index_Index1_M.limb";
connectAttr "JNT_Index_Index1_M_scaleX_Skin_Test_Anim.o" "JNT_Index_Index1_M.sx"
		;
connectAttr "JNT_Index_Index1_M_scaleY_Skin_Test_Anim.o" "JNT_Index_Index1_M.sy"
		;
connectAttr "JNT_Index_Index1_M_scaleZ_Skin_Test_Anim.o" "JNT_Index_Index1_M.sz"
		;
connectAttr "JNT_Index_Index1_M_translateX_Skin_Test_Anim.o" "JNT_Index_Index1_M.tx"
		;
connectAttr "JNT_Index_Index1_M_translateY_Skin_Test_Anim.o" "JNT_Index_Index1_M.ty"
		;
connectAttr "JNT_Index_Index1_M_translateZ_Skin_Test_Anim.o" "JNT_Index_Index1_M.tz"
		;
connectAttr "JNT_Index_Index1_M_rotate_Skin_Test_Anim.ox" "JNT_Index_Index1_M.rx"
		;
connectAttr "JNT_Index_Index1_M_rotate_Skin_Test_Anim.oy" "JNT_Index_Index1_M.ry"
		;
connectAttr "JNT_Index_Index1_M_rotate_Skin_Test_Anim.oz" "JNT_Index_Index1_M.rz"
		;
connectAttr "JNT_Index_Index1_M_visibility_Skin_Test_Anim.o" "JNT_Index_Index1_M.v"
		;
connectAttr "JNT_Index_Index1_M.s" "JNT_Index_Index2_M.is";
connectAttr "Joint_Disp.di" "JNT_Index_Index2_M.do";
connectAttr "NODE_Index_Limb_M.joints" "JNT_Index_Index2_M.limb";
connectAttr "JNT_Index_Index2_M_scaleX_Skin_Test_Anim.o" "JNT_Index_Index2_M.sx"
		;
connectAttr "JNT_Index_Index2_M_scaleY_Skin_Test_Anim.o" "JNT_Index_Index2_M.sy"
		;
connectAttr "JNT_Index_Index2_M_scaleZ_Skin_Test_Anim.o" "JNT_Index_Index2_M.sz"
		;
connectAttr "JNT_Index_Index2_M_translateX_Skin_Test_Anim.o" "JNT_Index_Index2_M.tx"
		;
connectAttr "JNT_Index_Index2_M_translateY_Skin_Test_Anim.o" "JNT_Index_Index2_M.ty"
		;
connectAttr "JNT_Index_Index2_M_translateZ_Skin_Test_Anim.o" "JNT_Index_Index2_M.tz"
		;
connectAttr "JNT_Index_Index2_M_rotate_Skin_Test_Anim.ox" "JNT_Index_Index2_M.rx"
		;
connectAttr "JNT_Index_Index2_M_rotate_Skin_Test_Anim.oy" "JNT_Index_Index2_M.ry"
		;
connectAttr "JNT_Index_Index2_M_rotate_Skin_Test_Anim.oz" "JNT_Index_Index2_M.rz"
		;
connectAttr "JNT_Index_Index2_M_visibility_Skin_Test_Anim.o" "JNT_Index_Index2_M.v"
		;
connectAttr "JNT_Index_Index2_M.s" "JNT_Index_Index3_M.is";
connectAttr "Joint_Disp.di" "JNT_Index_Index3_M.do";
connectAttr "NODE_Index_Limb_M.joints" "JNT_Index_Index3_M.limb";
connectAttr "JNT_Index_Index3_M_scaleX_Skin_Test_Anim.o" "JNT_Index_Index3_M.sx"
		;
connectAttr "JNT_Index_Index3_M_scaleY_Skin_Test_Anim.o" "JNT_Index_Index3_M.sy"
		;
connectAttr "JNT_Index_Index3_M_scaleZ_Skin_Test_Anim.o" "JNT_Index_Index3_M.sz"
		;
connectAttr "JNT_Index_Index3_M_translateX_Skin_Test_Anim.o" "JNT_Index_Index3_M.tx"
		;
connectAttr "JNT_Index_Index3_M_translateY_Skin_Test_Anim.o" "JNT_Index_Index3_M.ty"
		;
connectAttr "JNT_Index_Index3_M_translateZ_Skin_Test_Anim.o" "JNT_Index_Index3_M.tz"
		;
connectAttr "JNT_Index_Index3_M_rotate_Skin_Test_Anim.ox" "JNT_Index_Index3_M.rx"
		;
connectAttr "JNT_Index_Index3_M_rotate_Skin_Test_Anim.oy" "JNT_Index_Index3_M.ry"
		;
connectAttr "JNT_Index_Index3_M_rotate_Skin_Test_Anim.oz" "JNT_Index_Index3_M.rz"
		;
connectAttr "JNT_Index_Index3_M_visibility_Skin_Test_Anim.o" "JNT_Index_Index3_M.v"
		;
connectAttr "JNT_Index_Index3_M.s" "JNT_Index_Index4_M.is";
connectAttr "Joint_Disp.di" "JNT_Index_Index4_M.do";
connectAttr "NODE_Index_Limb_M.joints" "JNT_Index_Index4_M.limb";
connectAttr "JNT_Index_Index4_M_translateX_Skin_Test_Anim.o" "JNT_Index_Index4_M.tx"
		;
connectAttr "JNT_Index_Index4_M_translateY_Skin_Test_Anim.o" "JNT_Index_Index4_M.ty"
		;
connectAttr "JNT_Index_Index4_M_translateZ_Skin_Test_Anim.o" "JNT_Index_Index4_M.tz"
		;
connectAttr "JNT_Index_Index4_M_rotate_Skin_Test_Anim.ox" "JNT_Index_Index4_M.rx"
		;
connectAttr "JNT_Index_Index4_M_rotate_Skin_Test_Anim.oy" "JNT_Index_Index4_M.ry"
		;
connectAttr "JNT_Index_Index4_M_rotate_Skin_Test_Anim.oz" "JNT_Index_Index4_M.rz"
		;
connectAttr "JNT_Index_Index4_M_visibility_Skin_Test_Anim.o" "JNT_Index_Index4_M.v"
		;
connectAttr "JNT_Index_Index4_M_scaleX_Skin_Test_Anim.o" "JNT_Index_Index4_M.sx"
		;
connectAttr "JNT_Index_Index4_M_scaleY_Skin_Test_Anim.o" "JNT_Index_Index4_M.sy"
		;
connectAttr "JNT_Index_Index4_M_scaleZ_Skin_Test_Anim.o" "JNT_Index_Index4_M.sz"
		;
connectAttr "JNT_Index_Index4_M.group" "GRP3_Index4_Joint_M.joint";
connectAttr "NODE_Index_Limb_M.jointGroups" "GRP3_Index4_Joint_M.limb";
connectAttr "NODE_Index_Limb_M.usedGroups" "GRP3_Index4_Joint_M.used";
connectAttr "Control_Disp.di" "CTR3_Index4_Joint_M.do";
connectAttr "GRP3_Index4_Joint_M.control" "CTR3_Index4_Joint_M.group";
connectAttr "JNT_Index_Index3_M.group" "GRP2_Index3_Joint_M.joint";
connectAttr "NODE_Index_Limb_M.jointGroups" "GRP2_Index3_Joint_M.limb";
connectAttr "NODE_Index_Limb_M.usedGroups" "GRP2_Index3_Joint_M.used";
connectAttr "Control_Disp.di" "CTR2_Index3_Joint_M.do";
connectAttr "GRP2_Index3_Joint_M.control" "CTR2_Index3_Joint_M.group";
connectAttr "JNT_Index_Index2_M.group" "GRP1_Index2_Joint_M.joint";
connectAttr "NODE_Index_Limb_M.jointGroups" "GRP1_Index2_Joint_M.limb";
connectAttr "NODE_Index_Limb_M.usedGroups" "GRP1_Index2_Joint_M.used";
connectAttr "Control_Disp.di" "CTR1_Index2_Joint_M.do";
connectAttr "GRP1_Index2_Joint_M.control" "CTR1_Index2_Joint_M.group";
connectAttr "JNT_Index_Index1_M.group" "GRP0_Index1_Joint_M.joint";
connectAttr "NODE_Index_Limb_M.jointGroups" "GRP0_Index1_Joint_M.limb";
connectAttr "NODE_Index_Limb_M.usedGroups" "GRP0_Index1_Joint_M.used";
connectAttr "Control_Disp.di" "CTR0_Index1_Joint_M.do";
connectAttr "GRP0_Index1_Joint_M.control" "CTR0_Index1_Joint_M.group";
connectAttr "JNT_Arm_Wrist_M.s" "JNT_Pinkie_Pinkey1_M.is";
connectAttr "Joint_Disp.di" "JNT_Pinkie_Pinkey1_M.do";
connectAttr "NODE_Pinkie_Limb_M.joints" "JNT_Pinkie_Pinkey1_M.limb";
connectAttr "JNT_Pinkie_Pinkey1_M_scaleX_Skin_Test_Anim.o" "JNT_Pinkie_Pinkey1_M.sx"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_scaleY_Skin_Test_Anim.o" "JNT_Pinkie_Pinkey1_M.sy"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_scaleZ_Skin_Test_Anim.o" "JNT_Pinkie_Pinkey1_M.sz"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_translateX_Skin_Test_Anim.o" "JNT_Pinkie_Pinkey1_M.tx"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_translateY_Skin_Test_Anim.o" "JNT_Pinkie_Pinkey1_M.ty"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_translateZ_Skin_Test_Anim.o" "JNT_Pinkie_Pinkey1_M.tz"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim.ox" "JNT_Pinkie_Pinkey1_M.rx"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim.oy" "JNT_Pinkie_Pinkey1_M.ry"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim.oz" "JNT_Pinkie_Pinkey1_M.rz"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_visibility_Skin_Test_Anim.o" "JNT_Pinkie_Pinkey1_M.v"
		;
connectAttr "JNT_Pinkie_Pinkey1_M.s" "JNT_Pinkie_Pinkey2_M.is";
connectAttr "Joint_Disp.di" "JNT_Pinkie_Pinkey2_M.do";
connectAttr "NODE_Pinkie_Limb_M.joints" "JNT_Pinkie_Pinkey2_M.limb";
connectAttr "JNT_Pinkie_Pinkey2_M_scaleX_Skin_Test_Anim.o" "JNT_Pinkie_Pinkey2_M.sx"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_scaleY_Skin_Test_Anim.o" "JNT_Pinkie_Pinkey2_M.sy"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_scaleZ_Skin_Test_Anim.o" "JNT_Pinkie_Pinkey2_M.sz"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_translateX_Skin_Test_Anim.o" "JNT_Pinkie_Pinkey2_M.tx"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_translateY_Skin_Test_Anim.o" "JNT_Pinkie_Pinkey2_M.ty"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_translateZ_Skin_Test_Anim.o" "JNT_Pinkie_Pinkey2_M.tz"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim.ox" "JNT_Pinkie_Pinkey2_M.rx"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim.oy" "JNT_Pinkie_Pinkey2_M.ry"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim.oz" "JNT_Pinkie_Pinkey2_M.rz"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_visibility_Skin_Test_Anim.o" "JNT_Pinkie_Pinkey2_M.v"
		;
connectAttr "JNT_Pinkie_Pinkey2_M.s" "JNT_Pinkie_Pinkey3_M.is";
connectAttr "Joint_Disp.di" "JNT_Pinkie_Pinkey3_M.do";
connectAttr "NODE_Pinkie_Limb_M.joints" "JNT_Pinkie_Pinkey3_M.limb";
connectAttr "JNT_Pinkie_Pinkey3_M_scaleX_Skin_Test_Anim.o" "JNT_Pinkie_Pinkey3_M.sx"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_scaleY_Skin_Test_Anim.o" "JNT_Pinkie_Pinkey3_M.sy"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_scaleZ_Skin_Test_Anim.o" "JNT_Pinkie_Pinkey3_M.sz"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_translateX_Skin_Test_Anim.o" "JNT_Pinkie_Pinkey3_M.tx"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_translateY_Skin_Test_Anim.o" "JNT_Pinkie_Pinkey3_M.ty"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_translateZ_Skin_Test_Anim.o" "JNT_Pinkie_Pinkey3_M.tz"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim.ox" "JNT_Pinkie_Pinkey3_M.rx"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim.oy" "JNT_Pinkie_Pinkey3_M.ry"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim.oz" "JNT_Pinkie_Pinkey3_M.rz"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_visibility_Skin_Test_Anim.o" "JNT_Pinkie_Pinkey3_M.v"
		;
connectAttr "JNT_Pinkie_Pinkey3_M.s" "JNT_Pinkie_Pinkey4_M.is";
connectAttr "Joint_Disp.di" "JNT_Pinkie_Pinkey4_M.do";
connectAttr "NODE_Pinkie_Limb_M.joints" "JNT_Pinkie_Pinkey4_M.limb";
connectAttr "JNT_Pinkie_Pinkey4_M_translateX_Skin_Test_Anim.o" "JNT_Pinkie_Pinkey4_M.tx"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_translateY_Skin_Test_Anim.o" "JNT_Pinkie_Pinkey4_M.ty"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_translateZ_Skin_Test_Anim.o" "JNT_Pinkie_Pinkey4_M.tz"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim.ox" "JNT_Pinkie_Pinkey4_M.rx"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim.oy" "JNT_Pinkie_Pinkey4_M.ry"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim.oz" "JNT_Pinkie_Pinkey4_M.rz"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_visibility_Skin_Test_Anim.o" "JNT_Pinkie_Pinkey4_M.v"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_scaleX_Skin_Test_Anim.o" "JNT_Pinkie_Pinkey4_M.sx"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_scaleY_Skin_Test_Anim.o" "JNT_Pinkie_Pinkey4_M.sy"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_scaleZ_Skin_Test_Anim.o" "JNT_Pinkie_Pinkey4_M.sz"
		;
connectAttr "JNT_Pinkie_Pinkey4_M.group" "GRP3_Pinkey4_Joint_M.joint";
connectAttr "NODE_Pinkie_Limb_M.jointGroups" "GRP3_Pinkey4_Joint_M.limb";
connectAttr "NODE_Pinkie_Limb_M.usedGroups" "GRP3_Pinkey4_Joint_M.used";
connectAttr "Control_Disp.di" "CTR3_Pinkey4_Joint_M.do";
connectAttr "GRP3_Pinkey4_Joint_M.control" "CTR3_Pinkey4_Joint_M.group";
connectAttr "JNT_Pinkie_Pinkey3_M.group" "GRP2_Pinkey3_Joint_M.joint";
connectAttr "NODE_Pinkie_Limb_M.jointGroups" "GRP2_Pinkey3_Joint_M.limb";
connectAttr "NODE_Pinkie_Limb_M.usedGroups" "GRP2_Pinkey3_Joint_M.used";
connectAttr "Control_Disp.di" "CTR2_Pinkey3_Joint_M.do";
connectAttr "GRP2_Pinkey3_Joint_M.control" "CTR2_Pinkey3_Joint_M.group";
connectAttr "JNT_Pinkie_Pinkey2_M.group" "GRP1_Pinkey2_Joint_M.joint";
connectAttr "NODE_Pinkie_Limb_M.jointGroups" "GRP1_Pinkey2_Joint_M.limb";
connectAttr "NODE_Pinkie_Limb_M.usedGroups" "GRP1_Pinkey2_Joint_M.used";
connectAttr "Control_Disp.di" "CTR1_Pinkey2_Joint_M.do";
connectAttr "GRP1_Pinkey2_Joint_M.control" "CTR1_Pinkey2_Joint_M.group";
connectAttr "JNT_Pinkie_Pinkey1_M.group" "GRP0_Pinkey1_Joint_M.joint";
connectAttr "NODE_Pinkie_Limb_M.jointGroups" "GRP0_Pinkey1_Joint_M.limb";
connectAttr "NODE_Pinkie_Limb_M.usedGroups" "GRP0_Pinkey1_Joint_M.used";
connectAttr "Control_Disp.di" "CTR0_Pinkey1_Joint_M.do";
connectAttr "GRP0_Pinkey1_Joint_M.control" "CTR0_Pinkey1_Joint_M.group";
connectAttr "JNT_Arm_Wrist_M.s" "JNT_Thumb_Thumb1_M.is";
connectAttr "Joint_Disp.di" "JNT_Thumb_Thumb1_M.do";
connectAttr "NODE_Thumb_Limb_M.joints" "JNT_Thumb_Thumb1_M.limb";
connectAttr "JNT_Thumb_Thumb1_M_scaleX_Skin_Test_Anim.o" "JNT_Thumb_Thumb1_M.sx"
		;
connectAttr "JNT_Thumb_Thumb1_M_scaleY_Skin_Test_Anim.o" "JNT_Thumb_Thumb1_M.sy"
		;
connectAttr "JNT_Thumb_Thumb1_M_scaleZ_Skin_Test_Anim.o" "JNT_Thumb_Thumb1_M.sz"
		;
connectAttr "JNT_Thumb_Thumb1_M_translateX_Skin_Test_Anim.o" "JNT_Thumb_Thumb1_M.tx"
		;
connectAttr "JNT_Thumb_Thumb1_M_translateY_Skin_Test_Anim.o" "JNT_Thumb_Thumb1_M.ty"
		;
connectAttr "JNT_Thumb_Thumb1_M_translateZ_Skin_Test_Anim.o" "JNT_Thumb_Thumb1_M.tz"
		;
connectAttr "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim.ox" "JNT_Thumb_Thumb1_M.rx"
		;
connectAttr "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim.oy" "JNT_Thumb_Thumb1_M.ry"
		;
connectAttr "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim.oz" "JNT_Thumb_Thumb1_M.rz"
		;
connectAttr "JNT_Thumb_Thumb1_M_visibility_Skin_Test_Anim.o" "JNT_Thumb_Thumb1_M.v"
		;
connectAttr "JNT_Thumb_Thumb1_M.s" "JNT_Thumb_Thumb2_M.is";
connectAttr "Joint_Disp.di" "JNT_Thumb_Thumb2_M.do";
connectAttr "NODE_Thumb_Limb_M.joints" "JNT_Thumb_Thumb2_M.limb";
connectAttr "JNT_Thumb_Thumb2_M_scaleX_Skin_Test_Anim.o" "JNT_Thumb_Thumb2_M.sx"
		;
connectAttr "JNT_Thumb_Thumb2_M_scaleY_Skin_Test_Anim.o" "JNT_Thumb_Thumb2_M.sy"
		;
connectAttr "JNT_Thumb_Thumb2_M_scaleZ_Skin_Test_Anim.o" "JNT_Thumb_Thumb2_M.sz"
		;
connectAttr "JNT_Thumb_Thumb2_M_translateX_Skin_Test_Anim.o" "JNT_Thumb_Thumb2_M.tx"
		;
connectAttr "JNT_Thumb_Thumb2_M_translateY_Skin_Test_Anim.o" "JNT_Thumb_Thumb2_M.ty"
		;
connectAttr "JNT_Thumb_Thumb2_M_translateZ_Skin_Test_Anim.o" "JNT_Thumb_Thumb2_M.tz"
		;
connectAttr "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim.ox" "JNT_Thumb_Thumb2_M.rx"
		;
connectAttr "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim.oy" "JNT_Thumb_Thumb2_M.ry"
		;
connectAttr "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim.oz" "JNT_Thumb_Thumb2_M.rz"
		;
connectAttr "JNT_Thumb_Thumb2_M_visibility_Skin_Test_Anim.o" "JNT_Thumb_Thumb2_M.v"
		;
connectAttr "JNT_Thumb_Thumb2_M.s" "JNT_Thumb_Thumb3_M.is";
connectAttr "Joint_Disp.di" "JNT_Thumb_Thumb3_M.do";
connectAttr "NODE_Thumb_Limb_M.joints" "JNT_Thumb_Thumb3_M.limb";
connectAttr "JNT_Thumb_Thumb3_M_scaleX_Skin_Test_Anim.o" "JNT_Thumb_Thumb3_M.sx"
		;
connectAttr "JNT_Thumb_Thumb3_M_scaleY_Skin_Test_Anim.o" "JNT_Thumb_Thumb3_M.sy"
		;
connectAttr "JNT_Thumb_Thumb3_M_scaleZ_Skin_Test_Anim.o" "JNT_Thumb_Thumb3_M.sz"
		;
connectAttr "JNT_Thumb_Thumb3_M_translateX_Skin_Test_Anim.o" "JNT_Thumb_Thumb3_M.tx"
		;
connectAttr "JNT_Thumb_Thumb3_M_translateY_Skin_Test_Anim.o" "JNT_Thumb_Thumb3_M.ty"
		;
connectAttr "JNT_Thumb_Thumb3_M_translateZ_Skin_Test_Anim.o" "JNT_Thumb_Thumb3_M.tz"
		;
connectAttr "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim.ox" "JNT_Thumb_Thumb3_M.rx"
		;
connectAttr "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim.oy" "JNT_Thumb_Thumb3_M.ry"
		;
connectAttr "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim.oz" "JNT_Thumb_Thumb3_M.rz"
		;
connectAttr "JNT_Thumb_Thumb3_M_visibility_Skin_Test_Anim.o" "JNT_Thumb_Thumb3_M.v"
		;
connectAttr "JNT_Thumb_Thumb3_M.s" "JNT_Thumb_Thumb4_M.is";
connectAttr "Joint_Disp.di" "JNT_Thumb_Thumb4_M.do";
connectAttr "NODE_Thumb_Limb_M.joints" "JNT_Thumb_Thumb4_M.limb";
connectAttr "JNT_Thumb_Thumb4_M_translateX_Skin_Test_Anim.o" "JNT_Thumb_Thumb4_M.tx"
		;
connectAttr "JNT_Thumb_Thumb4_M_translateY_Skin_Test_Anim.o" "JNT_Thumb_Thumb4_M.ty"
		;
connectAttr "JNT_Thumb_Thumb4_M_translateZ_Skin_Test_Anim.o" "JNT_Thumb_Thumb4_M.tz"
		;
connectAttr "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim.ox" "JNT_Thumb_Thumb4_M.rx"
		;
connectAttr "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim.oy" "JNT_Thumb_Thumb4_M.ry"
		;
connectAttr "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim.oz" "JNT_Thumb_Thumb4_M.rz"
		;
connectAttr "JNT_Thumb_Thumb4_M_visibility_Skin_Test_Anim.o" "JNT_Thumb_Thumb4_M.v"
		;
connectAttr "JNT_Thumb_Thumb4_M_scaleX_Skin_Test_Anim.o" "JNT_Thumb_Thumb4_M.sx"
		;
connectAttr "JNT_Thumb_Thumb4_M_scaleY_Skin_Test_Anim.o" "JNT_Thumb_Thumb4_M.sy"
		;
connectAttr "JNT_Thumb_Thumb4_M_scaleZ_Skin_Test_Anim.o" "JNT_Thumb_Thumb4_M.sz"
		;
connectAttr "JNT_Thumb_Thumb4_M.group" "GRP3_Thumb4_Joint_M.joint";
connectAttr "NODE_Thumb_Limb_M.jointGroups" "GRP3_Thumb4_Joint_M.limb";
connectAttr "NODE_Thumb_Limb_M.usedGroups" "GRP3_Thumb4_Joint_M.used";
connectAttr "Control_Disp.di" "CTR3_Thumb4_Joint_M.do";
connectAttr "GRP3_Thumb4_Joint_M.control" "CTR3_Thumb4_Joint_M.group";
connectAttr "JNT_Thumb_Thumb3_M.group" "GRP2_Thumb3_Joint_M.joint";
connectAttr "NODE_Thumb_Limb_M.jointGroups" "GRP2_Thumb3_Joint_M.limb";
connectAttr "NODE_Thumb_Limb_M.usedGroups" "GRP2_Thumb3_Joint_M.used";
connectAttr "Control_Disp.di" "CTR2_Thumb3_Joint_M.do";
connectAttr "GRP2_Thumb3_Joint_M.control" "CTR2_Thumb3_Joint_M.group";
connectAttr "JNT_Thumb_Thumb2_M.group" "GRP1_Thumb2_Joint_M.joint";
connectAttr "NODE_Thumb_Limb_M.jointGroups" "GRP1_Thumb2_Joint_M.limb";
connectAttr "NODE_Thumb_Limb_M.usedGroups" "GRP1_Thumb2_Joint_M.used";
connectAttr "Control_Disp.di" "CTR1_Thumb2_Joint_M.do";
connectAttr "GRP1_Thumb2_Joint_M.control" "CTR1_Thumb2_Joint_M.group";
connectAttr "JNT_Thumb_Thumb1_M.group" "GRP0_Thumb1_Joint_M.joint";
connectAttr "NODE_Thumb_Limb_M.jointGroups" "GRP0_Thumb1_Joint_M.limb";
connectAttr "NODE_Thumb_Limb_M.usedGroups" "GRP0_Thumb1_Joint_M.used";
connectAttr "Control_Disp.di" "CTR0_Thumb1_Joint_M.do";
connectAttr "GRP0_Thumb1_Joint_M.control" "CTR0_Thumb1_Joint_M.group";
connectAttr "JNT_Arm_Wrist_M.group" "GRP2_Wrist_Joint_M.joint";
connectAttr "NODE_Arm_Limb_M.jointGroups" "GRP2_Wrist_Joint_M.limb";
connectAttr "NODE_Arm_Limb_M.usedGroups" "GRP2_Wrist_Joint_M.used";
connectAttr "Control_Disp.di" "CTR2_Wrist_Joint_M.do";
connectAttr "GRP2_Wrist_Joint_M.control" "CTR2_Wrist_Joint_M.group";
connectAttr "JNT_Arm_Elbow_M.group" "GRP1_Elbow_Joint_M.joint";
connectAttr "NODE_Arm_Limb_M.jointGroups" "GRP1_Elbow_Joint_M.limb";
connectAttr "NODE_Arm_Limb_M.usedGroups" "GRP1_Elbow_Joint_M.used";
connectAttr "Control_Disp.di" "CTR1_Elbow_Joint_M.do";
connectAttr "GRP1_Elbow_Joint_M.control" "CTR1_Elbow_Joint_M.group";
connectAttr "JNT_Arm_Shoulder_M.group" "GRP0_Shoulder_Joint_M.joint";
connectAttr "NODE_Arm_Limb_M.jointGroups" "GRP0_Shoulder_Joint_M.limb";
connectAttr "NODE_Arm_Limb_M.usedGroups" "GRP0_Shoulder_Joint_M.used";
connectAttr "Control_Disp.di" "CTR0_Shoulder_Joint_M.do";
connectAttr "GRP0_Shoulder_Joint_M.control" "CTR0_Shoulder_Joint_M.group";
connectAttr "JNT_Clav_Clav01_M.group" "GRP0_Clav01_Joint_M.joint";
connectAttr "NODE_Clav_Limb_M.jointGroups" "GRP0_Clav01_Joint_M.limb";
connectAttr "NODE_Clav_Limb_M.usedGroups" "GRP0_Clav01_Joint_M.used";
connectAttr "Control_Disp.di" "CTR0_Clav01_Joint_M.do";
connectAttr "GRP0_Clav01_Joint_M.control" "CTR0_Clav01_Joint_M.group";
connectAttr "TEMP_RigRoot.limbsParentGroup" "LIMBS.rigRoot";
connectAttr "TEMP_RigRoot.limbs" "NODE_BicepTwist_Limb_M.rigRoot";
connectAttr "NODE_Arm_Limb_M.limbChildren" "NODE_BicepTwist_Limb_M.limbParent";
connectAttr "TEMP_RigRoot.limbs" "NODE_ForearmTwist_Limb_M.rigRoot";
connectAttr "NODE_Arm_Limb_M.limbChildren" "NODE_ForearmTwist_Limb_M.limbParent"
		;
connectAttr "TEMP_RigRoot.limbs" "NODE_Ring_Limb_M.rigRoot";
connectAttr "NODE_Arm_Limb_M.limbChildren" "NODE_Ring_Limb_M.limbParent";
connectAttr "TEMP_RigRoot.limbs" "NODE_Pinkie_Limb_M.rigRoot";
connectAttr "NODE_Arm_Limb_M.limbChildren" "NODE_Pinkie_Limb_M.limbParent";
connectAttr "TEMP_RigRoot.limbs" "NODE_Arm_Limb_M.rigRoot";
connectAttr "NODE_Clav_Limb_M.limbChildren" "NODE_Arm_Limb_M.limbParent";
connectAttr "TEMP_RigRoot.limbs" "NODE_Clav_Limb_M.rigRoot";
connectAttr "TEMP_RigRoot.limbs" "NODE_Middle_Limb_M.rigRoot";
connectAttr "NODE_Arm_Limb_M.limbChildren" "NODE_Middle_Limb_M.limbParent";
connectAttr "TEMP_RigRoot.limbs" "NODE_Index_Limb_M.rigRoot";
connectAttr "NODE_Arm_Limb_M.limbChildren" "NODE_Index_Limb_M.limbParent";
connectAttr "TEMP_RigRoot.limbs" "NODE_Thumb_Limb_M.rigRoot";
connectAttr "NODE_Arm_Limb_M.limbChildren" "NODE_Thumb_Limb_M.limbParent";
connectAttr "TEMP_RigRoot.meshesParentGroup" "MESHES.rigRoot";
connectAttr "groupId3.id" "Arm_MeshShape.iog.og[0].gid";
connectAttr "Mesh_Human_Biped_01_lambert2SG.mwc" "Arm_MeshShape.iog.og[0].gco";
connectAttr "skinCluster1GroupId.id" "Arm_MeshShape.iog.og[1].gid";
connectAttr "skinCluster1Set.mwc" "Arm_MeshShape.iog.og[1].gco";
connectAttr "groupId5.id" "Arm_MeshShape.iog.og[2].gid";
connectAttr "tweakSet1.mwc" "Arm_MeshShape.iog.og[2].gco";
connectAttr "Meshes_Disp.di" "Arm_MeshShape.do";
connectAttr "polyColorPerVertex1.out" "Arm_MeshShape.i";
connectAttr "tweak1.vl[0].vt[0]" "Arm_MeshShape.twl";
connectAttr "skinCluster1.pfrsMeshes" "Arm_MeshShape.pfrsSkinCluster";
connectAttr "TEMP_RigRoot.meshes" "Arm_MeshShape.rigRoot";
connectAttr "groupId3.id" "Arm_Mesh1Shape.iog.og[0].gid";
connectAttr "skinCluster1GroupId.id" "Arm_Mesh1Shape.iog.og[1].gid";
connectAttr "skinCluster1Set1.mwc" "Arm_Mesh1Shape.iog.og[1].gco";
connectAttr "groupId5.id" "Arm_Mesh1Shape.iog.og[2].gid";
connectAttr "tweakSet2.mwc" "Arm_Mesh1Shape.iog.og[2].gco";
connectAttr "skinCluster1.og[0]" "Arm_Mesh1Shape.i";
connectAttr "tweak1.vl[0].vt[0]" "Arm_Mesh1Shape.twl";
connectAttr "skinCluster1.pfrsMeshes" "Arm_Mesh1Shape.pfrsSkinCluster";
connectAttr "Meshes_Disp.di" "Arm_Mesh1Shape.do";
connectAttr "Arm_MeshShape.backupMesh" "Arm_Mesh1Shape.backupMesh";
connectAttr "TEMP_RigRoot.attachPoints" "ATTACH_POINTS.rigRoot";
connectAttr "TEMP_RigRoot.ghosts" "GHOSTS.rigRoot";
connectAttr "TEMP_RigRoot.controlTemplates" "CONTROL_SHAPE_TEMPLATES.rigRoot";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Mesh_Human_Biped_01_lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "LControlsMaterialSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "MControlsMaterialSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "RControlsMaterialSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Mesh_Human_Biped_01_lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "LControlsMaterialSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "MControlsMaterialSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "RControlsMaterialSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[3]" "Control_Disp1.id";
connectAttr "layerManager.dli[4]" "Joint_Disp1.id";
connectAttr "lambert2.oc" "Mesh_Human_Biped_01_lambert2SG.ss";
connectAttr "Arm_MeshShape.iog.og[0]" "Mesh_Human_Biped_01_lambert2SG.dsm" -na;
connectAttr "Arm_Mesh1Shape.iog.og[0]" "Mesh_Human_Biped_01_lambert2SG.dsm" -na;
connectAttr "groupId3.msg" "Mesh_Human_Biped_01_lambert2SG.gn" -na;
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
connectAttr "CTR0_BicepTwist_Joint_MShape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "CTR0_ForearmTwist1_Joint_MShape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "CTR1_ForearmTwist2_Joint_MShape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "CTR1_Ring2_Joint_MShape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "CTR0_Ring1_Joint_MShape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "CTR2_Ring3_Joint_MShape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "CTR3_Ring4_Joint_MShape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "CTR1_Pinkey2_Joint_MShape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "CTR0_Pinkey1_Joint_MShape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "CTR2_Pinkey3_Joint_MShape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "CTR3_Pinkey4_Joint_MShape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "CTR1_Elbow_Joint_MShape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "CTR0_Shoulder_Joint_MShape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "CTR2_Wrist_Joint_MShape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "CTR0_Clav01_Joint_MShape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "CTR1_Middle2_Joint_MShape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "CTR0_Middle1_Joint_MShape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "CTR2_Middle3_Joint_MShape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "CTR3_Middle4_Joint_MShape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "CTR1_Index2_Joint_MShape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "CTR0_Index1_Joint_MShape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "CTR2_Index3_Joint_MShape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "CTR3_Index4_Joint_MShape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "CTR1_Thumb2_Joint_MShape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "CTR0_Thumb1_Joint_MShape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "CTR2_Thumb3_Joint_MShape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "CTR3_Thumb4_Joint_MShape.iog" "MControlsMaterialSG.dsm" -na;
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
connectAttr "JNT_Clav_Clav01_M.wm" "skinCluster1.ma[0]";
connectAttr "JNT_Arm_Shoulder_M.wm" "skinCluster1.ma[1]";
connectAttr "JNT_BicepTwist_BicepTwist_M.wm" "skinCluster1.ma[2]";
connectAttr "JNT_Arm_Elbow_M.wm" "skinCluster1.ma[3]";
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.wm" "skinCluster1.ma[4]";
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.wm" "skinCluster1.ma[5]";
connectAttr "JNT_Arm_Wrist_M.wm" "skinCluster1.ma[6]";
connectAttr "JNT_Middle_Middle1_M.wm" "skinCluster1.ma[7]";
connectAttr "JNT_Middle_Middle2_M.wm" "skinCluster1.ma[8]";
connectAttr "JNT_Middle_Middle3_M.wm" "skinCluster1.ma[9]";
connectAttr "JNT_Middle_Middle4_M.wm" "skinCluster1.ma[10]";
connectAttr "JNT_Ring_Ring1_M.wm" "skinCluster1.ma[11]";
connectAttr "JNT_Ring_Ring2_M.wm" "skinCluster1.ma[12]";
connectAttr "JNT_Ring_Ring3_M.wm" "skinCluster1.ma[13]";
connectAttr "JNT_Ring_Ring4_M.wm" "skinCluster1.ma[14]";
connectAttr "JNT_Index_Index1_M.wm" "skinCluster1.ma[15]";
connectAttr "JNT_Index_Index2_M.wm" "skinCluster1.ma[16]";
connectAttr "JNT_Index_Index3_M.wm" "skinCluster1.ma[17]";
connectAttr "JNT_Index_Index4_M.wm" "skinCluster1.ma[18]";
connectAttr "JNT_Pinkie_Pinkey1_M.wm" "skinCluster1.ma[19]";
connectAttr "JNT_Pinkie_Pinkey2_M.wm" "skinCluster1.ma[20]";
connectAttr "JNT_Pinkie_Pinkey3_M.wm" "skinCluster1.ma[21]";
connectAttr "JNT_Pinkie_Pinkey4_M.wm" "skinCluster1.ma[22]";
connectAttr "JNT_Thumb_Thumb1_M.wm" "skinCluster1.ma[23]";
connectAttr "JNT_Thumb_Thumb2_M.wm" "skinCluster1.ma[24]";
connectAttr "JNT_Thumb_Thumb3_M.wm" "skinCluster1.ma[25]";
connectAttr "JNT_Thumb_Thumb4_M.wm" "skinCluster1.ma[26]";
connectAttr "JNT_Clav_Clav01_M.liw" "skinCluster1.lw[0]";
connectAttr "JNT_Arm_Shoulder_M.liw" "skinCluster1.lw[1]";
connectAttr "JNT_BicepTwist_BicepTwist_M.liw" "skinCluster1.lw[2]";
connectAttr "JNT_Arm_Elbow_M.liw" "skinCluster1.lw[3]";
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.liw" "skinCluster1.lw[4]";
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.liw" "skinCluster1.lw[5]";
connectAttr "JNT_Arm_Wrist_M.liw" "skinCluster1.lw[6]";
connectAttr "JNT_Middle_Middle1_M.liw" "skinCluster1.lw[7]";
connectAttr "JNT_Middle_Middle2_M.liw" "skinCluster1.lw[8]";
connectAttr "JNT_Middle_Middle3_M.liw" "skinCluster1.lw[9]";
connectAttr "JNT_Middle_Middle4_M.liw" "skinCluster1.lw[10]";
connectAttr "JNT_Ring_Ring1_M.liw" "skinCluster1.lw[11]";
connectAttr "JNT_Ring_Ring2_M.liw" "skinCluster1.lw[12]";
connectAttr "JNT_Ring_Ring3_M.liw" "skinCluster1.lw[13]";
connectAttr "JNT_Ring_Ring4_M.liw" "skinCluster1.lw[14]";
connectAttr "JNT_Index_Index1_M.liw" "skinCluster1.lw[15]";
connectAttr "JNT_Index_Index2_M.liw" "skinCluster1.lw[16]";
connectAttr "JNT_Index_Index3_M.liw" "skinCluster1.lw[17]";
connectAttr "JNT_Index_Index4_M.liw" "skinCluster1.lw[18]";
connectAttr "JNT_Pinkie_Pinkey1_M.liw" "skinCluster1.lw[19]";
connectAttr "JNT_Pinkie_Pinkey2_M.liw" "skinCluster1.lw[20]";
connectAttr "JNT_Pinkie_Pinkey3_M.liw" "skinCluster1.lw[21]";
connectAttr "JNT_Pinkie_Pinkey4_M.liw" "skinCluster1.lw[22]";
connectAttr "JNT_Thumb_Thumb1_M.liw" "skinCluster1.lw[23]";
connectAttr "JNT_Thumb_Thumb2_M.liw" "skinCluster1.lw[24]";
connectAttr "JNT_Thumb_Thumb3_M.liw" "skinCluster1.lw[25]";
connectAttr "JNT_Thumb_Thumb4_M.liw" "skinCluster1.lw[26]";
connectAttr "JNT_Clav_Clav01_M.obcc" "skinCluster1.ifcl[0]";
connectAttr "JNT_Arm_Shoulder_M.obcc" "skinCluster1.ifcl[1]";
connectAttr "JNT_BicepTwist_BicepTwist_M.obcc" "skinCluster1.ifcl[2]";
connectAttr "JNT_Arm_Elbow_M.obcc" "skinCluster1.ifcl[3]";
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.obcc" "skinCluster1.ifcl[4]";
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.obcc" "skinCluster1.ifcl[5]";
connectAttr "JNT_Arm_Wrist_M.obcc" "skinCluster1.ifcl[6]";
connectAttr "JNT_Middle_Middle1_M.obcc" "skinCluster1.ifcl[7]";
connectAttr "JNT_Middle_Middle2_M.obcc" "skinCluster1.ifcl[8]";
connectAttr "JNT_Middle_Middle3_M.obcc" "skinCluster1.ifcl[9]";
connectAttr "JNT_Middle_Middle4_M.obcc" "skinCluster1.ifcl[10]";
connectAttr "JNT_Ring_Ring1_M.obcc" "skinCluster1.ifcl[11]";
connectAttr "JNT_Ring_Ring2_M.obcc" "skinCluster1.ifcl[12]";
connectAttr "JNT_Ring_Ring3_M.obcc" "skinCluster1.ifcl[13]";
connectAttr "JNT_Ring_Ring4_M.obcc" "skinCluster1.ifcl[14]";
connectAttr "JNT_Index_Index1_M.obcc" "skinCluster1.ifcl[15]";
connectAttr "JNT_Index_Index2_M.obcc" "skinCluster1.ifcl[16]";
connectAttr "JNT_Index_Index3_M.obcc" "skinCluster1.ifcl[17]";
connectAttr "JNT_Index_Index4_M.obcc" "skinCluster1.ifcl[18]";
connectAttr "JNT_Pinkie_Pinkey1_M.obcc" "skinCluster1.ifcl[19]";
connectAttr "JNT_Pinkie_Pinkey2_M.obcc" "skinCluster1.ifcl[20]";
connectAttr "JNT_Pinkie_Pinkey3_M.obcc" "skinCluster1.ifcl[21]";
connectAttr "JNT_Pinkie_Pinkey4_M.obcc" "skinCluster1.ifcl[22]";
connectAttr "JNT_Thumb_Thumb1_M.obcc" "skinCluster1.ifcl[23]";
connectAttr "JNT_Thumb_Thumb2_M.obcc" "skinCluster1.ifcl[24]";
connectAttr "JNT_Thumb_Thumb3_M.obcc" "skinCluster1.ifcl[25]";
connectAttr "JNT_Thumb_Thumb4_M.obcc" "skinCluster1.ifcl[26]";
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
connectAttr "JNT_Clav_Clav01_M.msg" "bindPose1.m[2]";
connectAttr "JNT_Arm_Shoulder_M.msg" "bindPose1.m[3]";
connectAttr "JNT_BicepTwist_BicepTwist_M.msg" "bindPose1.m[4]";
connectAttr "JNT_Arm_Elbow_M.msg" "bindPose1.m[5]";
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.msg" "bindPose1.m[6]";
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.msg" "bindPose1.m[7]";
connectAttr "JNT_Arm_Wrist_M.msg" "bindPose1.m[8]";
connectAttr "JNT_Middle_Middle1_M.msg" "bindPose1.m[9]";
connectAttr "JNT_Middle_Middle2_M.msg" "bindPose1.m[10]";
connectAttr "JNT_Middle_Middle3_M.msg" "bindPose1.m[11]";
connectAttr "JNT_Middle_Middle4_M.msg" "bindPose1.m[12]";
connectAttr "JNT_Ring_Ring1_M.msg" "bindPose1.m[13]";
connectAttr "JNT_Ring_Ring2_M.msg" "bindPose1.m[14]";
connectAttr "JNT_Ring_Ring3_M.msg" "bindPose1.m[15]";
connectAttr "JNT_Ring_Ring4_M.msg" "bindPose1.m[16]";
connectAttr "JNT_Index_Index1_M.msg" "bindPose1.m[17]";
connectAttr "JNT_Index_Index2_M.msg" "bindPose1.m[18]";
connectAttr "JNT_Index_Index3_M.msg" "bindPose1.m[19]";
connectAttr "JNT_Index_Index4_M.msg" "bindPose1.m[20]";
connectAttr "JNT_Pinkie_Pinkey1_M.msg" "bindPose1.m[21]";
connectAttr "JNT_Pinkie_Pinkey2_M.msg" "bindPose1.m[22]";
connectAttr "JNT_Pinkie_Pinkey3_M.msg" "bindPose1.m[23]";
connectAttr "JNT_Pinkie_Pinkey4_M.msg" "bindPose1.m[24]";
connectAttr "JNT_Thumb_Thumb1_M.msg" "bindPose1.m[25]";
connectAttr "JNT_Thumb_Thumb2_M.msg" "bindPose1.m[26]";
connectAttr "JNT_Thumb_Thumb3_M.msg" "bindPose1.m[27]";
connectAttr "JNT_Thumb_Thumb4_M.msg" "bindPose1.m[28]";
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
connectAttr "JNT_Clav_Clav01_M.bps" "bindPose1.wm[2]";
connectAttr "JNT_Arm_Shoulder_M.bps" "bindPose1.wm[3]";
connectAttr "JNT_BicepTwist_BicepTwist_M.bps" "bindPose1.wm[4]";
connectAttr "JNT_Arm_Elbow_M.bps" "bindPose1.wm[5]";
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.bps" "bindPose1.wm[6]";
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.bps" "bindPose1.wm[7]";
connectAttr "JNT_Arm_Wrist_M.bps" "bindPose1.wm[8]";
connectAttr "JNT_Middle_Middle1_M.bps" "bindPose1.wm[9]";
connectAttr "JNT_Middle_Middle2_M.bps" "bindPose1.wm[10]";
connectAttr "JNT_Middle_Middle3_M.bps" "bindPose1.wm[11]";
connectAttr "JNT_Middle_Middle4_M.bps" "bindPose1.wm[12]";
connectAttr "JNT_Ring_Ring1_M.bps" "bindPose1.wm[13]";
connectAttr "JNT_Ring_Ring2_M.bps" "bindPose1.wm[14]";
connectAttr "JNT_Ring_Ring3_M.bps" "bindPose1.wm[15]";
connectAttr "JNT_Ring_Ring4_M.bps" "bindPose1.wm[16]";
connectAttr "JNT_Index_Index1_M.bps" "bindPose1.wm[17]";
connectAttr "JNT_Index_Index2_M.bps" "bindPose1.wm[18]";
connectAttr "JNT_Index_Index3_M.bps" "bindPose1.wm[19]";
connectAttr "JNT_Index_Index4_M.bps" "bindPose1.wm[20]";
connectAttr "JNT_Pinkie_Pinkey1_M.bps" "bindPose1.wm[21]";
connectAttr "JNT_Pinkie_Pinkey2_M.bps" "bindPose1.wm[22]";
connectAttr "JNT_Pinkie_Pinkey3_M.bps" "bindPose1.wm[23]";
connectAttr "JNT_Pinkie_Pinkey4_M.bps" "bindPose1.wm[24]";
connectAttr "JNT_Thumb_Thumb1_M.bps" "bindPose1.wm[25]";
connectAttr "JNT_Thumb_Thumb2_M.bps" "bindPose1.wm[26]";
connectAttr "JNT_Thumb_Thumb3_M.bps" "bindPose1.wm[27]";
connectAttr "JNT_Thumb_Thumb4_M.bps" "bindPose1.wm[28]";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set1.gn" -na;
connectAttr "Arm_Mesh1Shape.iog.og[1]" "skinCluster1Set1.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set1.ub[0]";
connectAttr "groupId5.msg" "tweakSet2.gn" -na;
connectAttr "Arm_Mesh1Shape.iog.og[2]" "tweakSet2.dsm" -na;
connectAttr "tweak1.msg" "tweakSet2.ub[0]";
connectAttr "skinCluster1.og[0]" "polyColorPerVertex1.ip";
connectAttr "Skin_Test_Anim.sl" "BaseAnimation.chsl[0]";
connectAttr "Skin_Test_Anim.play" "BaseAnimation.cdly[0]";
connectAttr "BaseAnimation.csol" "Skin_Test_Anim.sslo";
connectAttr "BaseAnimation.fgwt" "Skin_Test_Anim.pwth";
connectAttr "BaseAnimation.omte" "Skin_Test_Anim.pmte";
connectAttr "JNT_Clav_Clav01_M.v" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Clav_Clav01_M.tx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Clav_Clav01_M.ty" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Clav_Clav01_M.tz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Clav_Clav01_M.rx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Clav_Clav01_M.ry" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Clav_Clav01_M.rz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Clav_Clav01_M.sx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Clav_Clav01_M.sy" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Clav_Clav01_M.sz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Arm_Shoulder_M.v" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Arm_Shoulder_M.tx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Arm_Shoulder_M.ty" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Arm_Shoulder_M.tz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Arm_Shoulder_M.rx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Arm_Shoulder_M.ry" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Arm_Shoulder_M.rz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Arm_Shoulder_M.sx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Arm_Shoulder_M.sy" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Arm_Shoulder_M.sz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Arm_Elbow_M.v" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Arm_Elbow_M.tx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Arm_Elbow_M.ty" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Arm_Elbow_M.tz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Arm_Elbow_M.rx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Arm_Elbow_M.ry" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Arm_Elbow_M.rz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Arm_Elbow_M.sx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Arm_Elbow_M.sy" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Arm_Elbow_M.sz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Arm_Wrist_M.v" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Arm_Wrist_M.tx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Arm_Wrist_M.ty" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Arm_Wrist_M.tz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Arm_Wrist_M.rx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Arm_Wrist_M.ry" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Arm_Wrist_M.rz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Arm_Wrist_M.sx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Arm_Wrist_M.sy" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Arm_Wrist_M.sz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index1_M.v" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index1_M.tx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index1_M.ty" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index1_M.tz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index1_M.rx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index1_M.ry" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index1_M.rz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index1_M.sx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index1_M.sy" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index1_M.sz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index2_M.v" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index2_M.tx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index2_M.ty" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index2_M.tz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index2_M.rx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index2_M.ry" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index2_M.rz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index2_M.sx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index2_M.sy" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index2_M.sz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index3_M.v" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index3_M.tx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index3_M.ty" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index3_M.tz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index3_M.rx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index3_M.ry" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index3_M.rz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index3_M.sx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index3_M.sy" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index3_M.sz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index4_M.v" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index4_M.tx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index4_M.ty" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index4_M.tz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index4_M.rx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index4_M.ry" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index4_M.rz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index4_M.sx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index4_M.sy" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Index_Index4_M.sz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle1_M.v" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle1_M.tx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle1_M.ty" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle1_M.tz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle1_M.rx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle1_M.ry" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle1_M.rz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle1_M.sx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle1_M.sy" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle1_M.sz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle2_M.v" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle2_M.tx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle2_M.ty" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle2_M.tz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle2_M.rx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle2_M.ry" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle2_M.rz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle2_M.sx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle2_M.sy" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle2_M.sz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle3_M.v" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle3_M.tx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle3_M.ty" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle3_M.tz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle3_M.rx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle3_M.ry" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle3_M.rz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle3_M.sx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle3_M.sy" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle3_M.sz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle4_M.v" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle4_M.tx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle4_M.ty" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle4_M.tz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle4_M.rx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle4_M.ry" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle4_M.rz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle4_M.sx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle4_M.sy" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Middle_Middle4_M.sz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey1_M.v" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey1_M.tx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey1_M.ty" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey1_M.tz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey1_M.rx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey1_M.ry" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey1_M.rz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey1_M.sx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey1_M.sy" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey1_M.sz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey2_M.v" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey2_M.tx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey2_M.ty" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey2_M.tz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey2_M.rx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey2_M.ry" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey2_M.rz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey2_M.sx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey2_M.sy" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey2_M.sz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey3_M.v" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey3_M.tx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey3_M.ty" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey3_M.tz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey3_M.rx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey3_M.ry" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey3_M.rz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey3_M.sx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey3_M.sy" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey3_M.sz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey4_M.v" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey4_M.tx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey4_M.ty" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey4_M.tz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey4_M.rx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey4_M.ry" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey4_M.rz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey4_M.sx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey4_M.sy" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey4_M.sz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring1_M.v" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring1_M.tx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring1_M.ty" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring1_M.tz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring1_M.rx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring1_M.ry" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring1_M.rz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring1_M.sx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring1_M.sy" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring1_M.sz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring2_M.v" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring2_M.tx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring2_M.ty" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring2_M.tz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring2_M.rx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring2_M.ry" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring2_M.rz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring2_M.sx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring2_M.sy" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring2_M.sz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring3_M.v" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring3_M.tx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring3_M.ty" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring3_M.tz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring3_M.rx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring3_M.ry" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring3_M.rz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring3_M.sx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring3_M.sy" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring3_M.sz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring4_M.v" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring4_M.tx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring4_M.ty" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring4_M.tz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring4_M.rx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring4_M.ry" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring4_M.rz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring4_M.sx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring4_M.sy" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Ring_Ring4_M.sz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb1_M.v" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb1_M.tx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb1_M.ty" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb1_M.tz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb1_M.rx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb1_M.ry" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb1_M.rz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb1_M.sx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb1_M.sy" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb1_M.sz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb2_M.v" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb2_M.tx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb2_M.ty" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb2_M.tz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb2_M.rx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb2_M.ry" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb2_M.rz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb2_M.sx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb2_M.sy" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb2_M.sz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb3_M.v" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb3_M.tx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb3_M.ty" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb3_M.tz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb3_M.rx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb3_M.ry" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb3_M.rz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb3_M.sx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb3_M.sy" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb3_M.sz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb4_M.v" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb4_M.tx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb4_M.ty" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb4_M.tz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb4_M.rx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb4_M.ry" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb4_M.rz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb4_M.sx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb4_M.sy" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Thumb_Thumb4_M.sz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.v" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.tx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.ty" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.tz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.rx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.ry" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.rz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.sx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.sy" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.sz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.v" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.tx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.ty" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.tz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.rx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.ry" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.rz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.sx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.sy" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.sz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_BicepTwist_BicepTwist_M.v" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_BicepTwist_BicepTwist_M.tx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_BicepTwist_BicepTwist_M.ty" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_BicepTwist_BicepTwist_M.tz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_BicepTwist_BicepTwist_M.rx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_BicepTwist_BicepTwist_M.ry" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_BicepTwist_BicepTwist_M.rz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_BicepTwist_BicepTwist_M.sx" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_BicepTwist_BicepTwist_M.sy" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_BicepTwist_BicepTwist_M.sz" "Skin_Test_Anim.dsm" -na;
connectAttr "JNT_Clav_Clav01_M_visibility_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[0]"
		;
connectAttr "JNT_Clav_Clav01_M_translateX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[1]"
		;
connectAttr "JNT_Clav_Clav01_M_translateY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[2]"
		;
connectAttr "JNT_Clav_Clav01_M_translateZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[3]"
		;
connectAttr "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[7]"
		;
connectAttr "JNT_Clav_Clav01_M_scaleX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[8]"
		;
connectAttr "JNT_Clav_Clav01_M_scaleY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[9]"
		;
connectAttr "JNT_Clav_Clav01_M_scaleZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[10]"
		;
connectAttr "JNT_Arm_Shoulder_M_visibility_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[11]"
		;
connectAttr "JNT_Arm_Shoulder_M_translateX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[12]"
		;
connectAttr "JNT_Arm_Shoulder_M_translateY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[13]"
		;
connectAttr "JNT_Arm_Shoulder_M_translateZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[14]"
		;
connectAttr "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[18]"
		;
connectAttr "JNT_Arm_Shoulder_M_scaleX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[19]"
		;
connectAttr "JNT_Arm_Shoulder_M_scaleY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[20]"
		;
connectAttr "JNT_Arm_Shoulder_M_scaleZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[21]"
		;
connectAttr "JNT_Arm_Elbow_M_visibility_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[22]"
		;
connectAttr "JNT_Arm_Elbow_M_translateX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[23]"
		;
connectAttr "JNT_Arm_Elbow_M_translateY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[24]"
		;
connectAttr "JNT_Arm_Elbow_M_translateZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[25]"
		;
connectAttr "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[29]"
		;
connectAttr "JNT_Arm_Elbow_M_scaleX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[30]"
		;
connectAttr "JNT_Arm_Elbow_M_scaleY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[31]"
		;
connectAttr "JNT_Arm_Elbow_M_scaleZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[32]"
		;
connectAttr "JNT_Arm_Wrist_M_visibility_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[33]"
		;
connectAttr "JNT_Arm_Wrist_M_translateX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[34]"
		;
connectAttr "JNT_Arm_Wrist_M_translateY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[35]"
		;
connectAttr "JNT_Arm_Wrist_M_translateZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[36]"
		;
connectAttr "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[40]"
		;
connectAttr "JNT_Arm_Wrist_M_scaleX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[41]"
		;
connectAttr "JNT_Arm_Wrist_M_scaleY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[42]"
		;
connectAttr "JNT_Arm_Wrist_M_scaleZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[43]"
		;
connectAttr "JNT_Index_Index1_M_visibility_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[44]"
		;
connectAttr "JNT_Index_Index1_M_translateX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[45]"
		;
connectAttr "JNT_Index_Index1_M_translateY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[46]"
		;
connectAttr "JNT_Index_Index1_M_translateZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[47]"
		;
connectAttr "JNT_Index_Index1_M_rotate_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[51]"
		;
connectAttr "JNT_Index_Index1_M_scaleX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[52]"
		;
connectAttr "JNT_Index_Index1_M_scaleY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[53]"
		;
connectAttr "JNT_Index_Index1_M_scaleZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[54]"
		;
connectAttr "JNT_Index_Index2_M_visibility_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[55]"
		;
connectAttr "JNT_Index_Index2_M_translateX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[56]"
		;
connectAttr "JNT_Index_Index2_M_translateY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[57]"
		;
connectAttr "JNT_Index_Index2_M_translateZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[58]"
		;
connectAttr "JNT_Index_Index2_M_rotate_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[62]"
		;
connectAttr "JNT_Index_Index2_M_scaleX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[63]"
		;
connectAttr "JNT_Index_Index2_M_scaleY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[64]"
		;
connectAttr "JNT_Index_Index2_M_scaleZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[65]"
		;
connectAttr "JNT_Index_Index3_M_visibility_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[66]"
		;
connectAttr "JNT_Index_Index3_M_translateX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[67]"
		;
connectAttr "JNT_Index_Index3_M_translateY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[68]"
		;
connectAttr "JNT_Index_Index3_M_translateZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[69]"
		;
connectAttr "JNT_Index_Index3_M_rotate_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[73]"
		;
connectAttr "JNT_Index_Index3_M_scaleX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[74]"
		;
connectAttr "JNT_Index_Index3_M_scaleY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[75]"
		;
connectAttr "JNT_Index_Index3_M_scaleZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[76]"
		;
connectAttr "JNT_Index_Index4_M_visibility_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[77]"
		;
connectAttr "JNT_Index_Index4_M_translateX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[78]"
		;
connectAttr "JNT_Index_Index4_M_translateY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[79]"
		;
connectAttr "JNT_Index_Index4_M_translateZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[80]"
		;
connectAttr "JNT_Index_Index4_M_rotate_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[84]"
		;
connectAttr "JNT_Index_Index4_M_scaleX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[85]"
		;
connectAttr "JNT_Index_Index4_M_scaleY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[86]"
		;
connectAttr "JNT_Index_Index4_M_scaleZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[87]"
		;
connectAttr "JNT_Middle_Middle1_M_visibility_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[88]"
		;
connectAttr "JNT_Middle_Middle1_M_translateX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[89]"
		;
connectAttr "JNT_Middle_Middle1_M_translateY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[90]"
		;
connectAttr "JNT_Middle_Middle1_M_translateZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[91]"
		;
connectAttr "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[95]"
		;
connectAttr "JNT_Middle_Middle1_M_scaleX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[96]"
		;
connectAttr "JNT_Middle_Middle1_M_scaleY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[97]"
		;
connectAttr "JNT_Middle_Middle1_M_scaleZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[98]"
		;
connectAttr "JNT_Middle_Middle2_M_visibility_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[99]"
		;
connectAttr "JNT_Middle_Middle2_M_translateX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[100]"
		;
connectAttr "JNT_Middle_Middle2_M_translateY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[101]"
		;
connectAttr "JNT_Middle_Middle2_M_translateZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[102]"
		;
connectAttr "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[106]"
		;
connectAttr "JNT_Middle_Middle2_M_scaleX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[107]"
		;
connectAttr "JNT_Middle_Middle2_M_scaleY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[108]"
		;
connectAttr "JNT_Middle_Middle2_M_scaleZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[109]"
		;
connectAttr "JNT_Middle_Middle3_M_visibility_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[110]"
		;
connectAttr "JNT_Middle_Middle3_M_translateX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[111]"
		;
connectAttr "JNT_Middle_Middle3_M_translateY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[112]"
		;
connectAttr "JNT_Middle_Middle3_M_translateZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[113]"
		;
connectAttr "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[117]"
		;
connectAttr "JNT_Middle_Middle3_M_scaleX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[118]"
		;
connectAttr "JNT_Middle_Middle3_M_scaleY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[119]"
		;
connectAttr "JNT_Middle_Middle3_M_scaleZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[120]"
		;
connectAttr "JNT_Middle_Middle4_M_visibility_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[121]"
		;
connectAttr "JNT_Middle_Middle4_M_translateX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[122]"
		;
connectAttr "JNT_Middle_Middle4_M_translateY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[123]"
		;
connectAttr "JNT_Middle_Middle4_M_translateZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[124]"
		;
connectAttr "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[128]"
		;
connectAttr "JNT_Middle_Middle4_M_scaleX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[129]"
		;
connectAttr "JNT_Middle_Middle4_M_scaleY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[130]"
		;
connectAttr "JNT_Middle_Middle4_M_scaleZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[131]"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_visibility_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[132]"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_translateX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[133]"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_translateY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[134]"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_translateZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[135]"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[139]"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_scaleX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[140]"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_scaleY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[141]"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_scaleZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[142]"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_visibility_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[143]"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_translateX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[144]"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_translateY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[145]"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_translateZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[146]"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[150]"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_scaleX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[151]"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_scaleY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[152]"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_scaleZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[153]"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_visibility_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[154]"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_translateX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[155]"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_translateY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[156]"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_translateZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[157]"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[161]"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_scaleX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[162]"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_scaleY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[163]"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_scaleZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[164]"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_visibility_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[165]"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_translateX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[166]"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_translateY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[167]"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_translateZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[168]"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[172]"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_scaleX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[173]"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_scaleY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[174]"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_scaleZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[175]"
		;
connectAttr "JNT_Ring_Ring1_M_visibility_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[176]"
		;
connectAttr "JNT_Ring_Ring1_M_translateX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[177]"
		;
connectAttr "JNT_Ring_Ring1_M_translateY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[178]"
		;
connectAttr "JNT_Ring_Ring1_M_translateZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[179]"
		;
connectAttr "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[183]"
		;
connectAttr "JNT_Ring_Ring1_M_scaleX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[184]"
		;
connectAttr "JNT_Ring_Ring1_M_scaleY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[185]"
		;
connectAttr "JNT_Ring_Ring1_M_scaleZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[186]"
		;
connectAttr "JNT_Ring_Ring2_M_visibility_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[187]"
		;
connectAttr "JNT_Ring_Ring2_M_translateX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[188]"
		;
connectAttr "JNT_Ring_Ring2_M_translateY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[189]"
		;
connectAttr "JNT_Ring_Ring2_M_translateZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[190]"
		;
connectAttr "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[194]"
		;
connectAttr "JNT_Ring_Ring2_M_scaleX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[195]"
		;
connectAttr "JNT_Ring_Ring2_M_scaleY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[196]"
		;
connectAttr "JNT_Ring_Ring2_M_scaleZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[197]"
		;
connectAttr "JNT_Ring_Ring3_M_visibility_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[198]"
		;
connectAttr "JNT_Ring_Ring3_M_translateX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[199]"
		;
connectAttr "JNT_Ring_Ring3_M_translateY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[200]"
		;
connectAttr "JNT_Ring_Ring3_M_translateZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[201]"
		;
connectAttr "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[205]"
		;
connectAttr "JNT_Ring_Ring3_M_scaleX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[206]"
		;
connectAttr "JNT_Ring_Ring3_M_scaleY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[207]"
		;
connectAttr "JNT_Ring_Ring3_M_scaleZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[208]"
		;
connectAttr "JNT_Ring_Ring4_M_visibility_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[209]"
		;
connectAttr "JNT_Ring_Ring4_M_translateX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[210]"
		;
connectAttr "JNT_Ring_Ring4_M_translateY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[211]"
		;
connectAttr "JNT_Ring_Ring4_M_translateZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[212]"
		;
connectAttr "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[216]"
		;
connectAttr "JNT_Ring_Ring4_M_scaleX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[217]"
		;
connectAttr "JNT_Ring_Ring4_M_scaleY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[218]"
		;
connectAttr "JNT_Ring_Ring4_M_scaleZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[219]"
		;
connectAttr "JNT_Thumb_Thumb1_M_visibility_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[220]"
		;
connectAttr "JNT_Thumb_Thumb1_M_translateX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[221]"
		;
connectAttr "JNT_Thumb_Thumb1_M_translateY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[222]"
		;
connectAttr "JNT_Thumb_Thumb1_M_translateZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[223]"
		;
connectAttr "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[227]"
		;
connectAttr "JNT_Thumb_Thumb1_M_scaleX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[228]"
		;
connectAttr "JNT_Thumb_Thumb1_M_scaleY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[229]"
		;
connectAttr "JNT_Thumb_Thumb1_M_scaleZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[230]"
		;
connectAttr "JNT_Thumb_Thumb2_M_visibility_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[231]"
		;
connectAttr "JNT_Thumb_Thumb2_M_translateX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[232]"
		;
connectAttr "JNT_Thumb_Thumb2_M_translateY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[233]"
		;
connectAttr "JNT_Thumb_Thumb2_M_translateZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[234]"
		;
connectAttr "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[238]"
		;
connectAttr "JNT_Thumb_Thumb2_M_scaleX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[239]"
		;
connectAttr "JNT_Thumb_Thumb2_M_scaleY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[240]"
		;
connectAttr "JNT_Thumb_Thumb2_M_scaleZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[241]"
		;
connectAttr "JNT_Thumb_Thumb3_M_visibility_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[242]"
		;
connectAttr "JNT_Thumb_Thumb3_M_translateX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[243]"
		;
connectAttr "JNT_Thumb_Thumb3_M_translateY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[244]"
		;
connectAttr "JNT_Thumb_Thumb3_M_translateZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[245]"
		;
connectAttr "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[249]"
		;
connectAttr "JNT_Thumb_Thumb3_M_scaleX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[250]"
		;
connectAttr "JNT_Thumb_Thumb3_M_scaleY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[251]"
		;
connectAttr "JNT_Thumb_Thumb3_M_scaleZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[252]"
		;
connectAttr "JNT_Thumb_Thumb4_M_visibility_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[253]"
		;
connectAttr "JNT_Thumb_Thumb4_M_translateX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[254]"
		;
connectAttr "JNT_Thumb_Thumb4_M_translateY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[255]"
		;
connectAttr "JNT_Thumb_Thumb4_M_translateZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[256]"
		;
connectAttr "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[260]"
		;
connectAttr "JNT_Thumb_Thumb4_M_scaleX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[261]"
		;
connectAttr "JNT_Thumb_Thumb4_M_scaleY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[262]"
		;
connectAttr "JNT_Thumb_Thumb4_M_scaleZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[263]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_visibility_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[264]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_translateX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[265]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_translateY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[266]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_translateZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[267]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[271]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_scaleX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[272]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_scaleY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[273]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_scaleZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[274]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_visibility_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[275]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_translateX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[276]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_translateY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[277]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_translateZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[278]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[282]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_scaleX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[283]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_scaleY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[284]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_scaleZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[285]"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_visibility_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[286]"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_translateX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[287]"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_translateY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[288]"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_translateZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[289]"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[293]"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_scaleX_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[294]"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_scaleY_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[295]"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_scaleZ_Skin_Test_Anim.msg" "Skin_Test_Anim.bnds[296]"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Clav_Clav01_M_visibility_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Clav_Clav01_M_visibility_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Clav_Clav01_M_translateX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Clav_Clav01_M_translateX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Clav_Clav01_M_translateY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Clav_Clav01_M_translateY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Clav_Clav01_M_translateZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Clav_Clav01_M_translateZ_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Clav_Clav01_M.ro" "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim.ro";
connectAttr "Skin_Test_Anim.oram" "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim.wb";
connectAttr "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim_inputBX.o" "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim.ibx"
		;
connectAttr "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim_inputBY.o" "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim.iby"
		;
connectAttr "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim_inputBZ.o" "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim.ibz"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Clav_Clav01_M_scaleX_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Clav_Clav01_M_scaleX_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Clav_Clav01_M_scaleX_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Clav_Clav01_M_scaleY_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Clav_Clav01_M_scaleY_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Clav_Clav01_M_scaleY_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Clav_Clav01_M_scaleZ_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Clav_Clav01_M_scaleZ_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Clav_Clav01_M_scaleZ_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Arm_Shoulder_M_visibility_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Arm_Shoulder_M_visibility_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Arm_Shoulder_M_translateX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Arm_Shoulder_M_translateX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Arm_Shoulder_M_translateY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Arm_Shoulder_M_translateY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Arm_Shoulder_M_translateZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Arm_Shoulder_M_translateZ_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Arm_Shoulder_M.ro" "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim.ro"
		;
connectAttr "Skin_Test_Anim.oram" "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim.wb";
connectAttr "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim_inputBX.o" "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim.ibx"
		;
connectAttr "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim_inputBY.o" "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim.iby"
		;
connectAttr "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim_inputBZ.o" "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim.ibz"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Arm_Shoulder_M_scaleX_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Arm_Shoulder_M_scaleX_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Arm_Shoulder_M_scaleX_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Arm_Shoulder_M_scaleY_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Arm_Shoulder_M_scaleY_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Arm_Shoulder_M_scaleY_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Arm_Shoulder_M_scaleZ_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Arm_Shoulder_M_scaleZ_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Arm_Shoulder_M_scaleZ_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Arm_Elbow_M_visibility_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Arm_Elbow_M_visibility_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Arm_Elbow_M_translateX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Arm_Elbow_M_translateX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Arm_Elbow_M_translateY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Arm_Elbow_M_translateY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Arm_Elbow_M_translateZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Arm_Elbow_M_translateZ_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Arm_Elbow_M.ro" "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim.ro";
connectAttr "Skin_Test_Anim.oram" "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim.wb";
connectAttr "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim_inputBX.o" "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim.ibx"
		;
connectAttr "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim_inputBY.o" "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim.iby"
		;
connectAttr "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim_inputBZ.o" "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim.ibz"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Arm_Elbow_M_scaleX_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Arm_Elbow_M_scaleX_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Arm_Elbow_M_scaleX_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Arm_Elbow_M_scaleY_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Arm_Elbow_M_scaleY_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Arm_Elbow_M_scaleY_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Arm_Elbow_M_scaleZ_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Arm_Elbow_M_scaleZ_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Arm_Elbow_M_scaleZ_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Arm_Wrist_M_visibility_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Arm_Wrist_M_visibility_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Arm_Wrist_M_translateX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Arm_Wrist_M_translateX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Arm_Wrist_M_translateY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Arm_Wrist_M_translateY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Arm_Wrist_M_translateZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Arm_Wrist_M_translateZ_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Arm_Wrist_M.ro" "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim.ro";
connectAttr "Skin_Test_Anim.oram" "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim.wb";
connectAttr "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim_inputBX.o" "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim.ibx"
		;
connectAttr "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim_inputBY.o" "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim.iby"
		;
connectAttr "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim_inputBZ.o" "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim.ibz"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Arm_Wrist_M_scaleX_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Arm_Wrist_M_scaleX_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Arm_Wrist_M_scaleX_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Arm_Wrist_M_scaleY_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Arm_Wrist_M_scaleY_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Arm_Wrist_M_scaleY_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Arm_Wrist_M_scaleZ_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Arm_Wrist_M_scaleZ_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Arm_Wrist_M_scaleZ_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index1_M_visibility_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index1_M_visibility_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index1_M_translateX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index1_M_translateX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index1_M_translateY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index1_M_translateY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index1_M_translateZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index1_M_translateZ_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Index_Index1_M.ro" "JNT_Index_Index1_M_rotate_Skin_Test_Anim.ro"
		;
connectAttr "Skin_Test_Anim.oram" "JNT_Index_Index1_M_rotate_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index1_M_rotate_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index1_M_rotate_Skin_Test_Anim.wb";
connectAttr "JNT_Index_Index1_M_rotate_Skin_Test_Anim_inputBX.o" "JNT_Index_Index1_M_rotate_Skin_Test_Anim.ibx"
		;
connectAttr "JNT_Index_Index1_M_rotate_Skin_Test_Anim_inputBY.o" "JNT_Index_Index1_M_rotate_Skin_Test_Anim.iby"
		;
connectAttr "JNT_Index_Index1_M_rotate_Skin_Test_Anim_inputBZ.o" "JNT_Index_Index1_M_rotate_Skin_Test_Anim.ibz"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Index_Index1_M_scaleX_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index1_M_scaleX_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index1_M_scaleX_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Index_Index1_M_scaleY_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index1_M_scaleY_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index1_M_scaleY_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Index_Index1_M_scaleZ_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index1_M_scaleZ_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index1_M_scaleZ_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index2_M_visibility_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index2_M_visibility_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index2_M_translateX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index2_M_translateX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index2_M_translateY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index2_M_translateY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index2_M_translateZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index2_M_translateZ_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Index_Index2_M.ro" "JNT_Index_Index2_M_rotate_Skin_Test_Anim.ro"
		;
connectAttr "Skin_Test_Anim.oram" "JNT_Index_Index2_M_rotate_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index2_M_rotate_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index2_M_rotate_Skin_Test_Anim.wb";
connectAttr "JNT_Index_Index2_M_rotate_Skin_Test_Anim_inputBX.o" "JNT_Index_Index2_M_rotate_Skin_Test_Anim.ibx"
		;
connectAttr "JNT_Index_Index2_M_rotate_Skin_Test_Anim_inputBY.o" "JNT_Index_Index2_M_rotate_Skin_Test_Anim.iby"
		;
connectAttr "JNT_Index_Index2_M_rotate_Skin_Test_Anim_inputBZ.o" "JNT_Index_Index2_M_rotate_Skin_Test_Anim.ibz"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Index_Index2_M_scaleX_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index2_M_scaleX_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index2_M_scaleX_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Index_Index2_M_scaleY_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index2_M_scaleY_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index2_M_scaleY_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Index_Index2_M_scaleZ_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index2_M_scaleZ_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index2_M_scaleZ_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index3_M_visibility_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index3_M_visibility_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index3_M_translateX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index3_M_translateX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index3_M_translateY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index3_M_translateY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index3_M_translateZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index3_M_translateZ_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Index_Index3_M.ro" "JNT_Index_Index3_M_rotate_Skin_Test_Anim.ro"
		;
connectAttr "Skin_Test_Anim.oram" "JNT_Index_Index3_M_rotate_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index3_M_rotate_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index3_M_rotate_Skin_Test_Anim.wb";
connectAttr "JNT_Index_Index3_M_rotate_Skin_Test_Anim_inputBX.o" "JNT_Index_Index3_M_rotate_Skin_Test_Anim.ibx"
		;
connectAttr "JNT_Index_Index3_M_rotate_Skin_Test_Anim_inputBY.o" "JNT_Index_Index3_M_rotate_Skin_Test_Anim.iby"
		;
connectAttr "JNT_Index_Index3_M_rotate_Skin_Test_Anim_inputBZ.o" "JNT_Index_Index3_M_rotate_Skin_Test_Anim.ibz"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Index_Index3_M_scaleX_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index3_M_scaleX_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index3_M_scaleX_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Index_Index3_M_scaleY_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index3_M_scaleY_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index3_M_scaleY_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Index_Index3_M_scaleZ_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index3_M_scaleZ_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index3_M_scaleZ_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index4_M_visibility_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index4_M_visibility_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index4_M_translateX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index4_M_translateX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index4_M_translateY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index4_M_translateY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index4_M_translateZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index4_M_translateZ_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Index_Index4_M.ro" "JNT_Index_Index4_M_rotate_Skin_Test_Anim.ro"
		;
connectAttr "Skin_Test_Anim.oram" "JNT_Index_Index4_M_rotate_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index4_M_rotate_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index4_M_rotate_Skin_Test_Anim.wb";
connectAttr "JNT_Index_Index4_M_rotate_Skin_Test_Anim_inputBX.o" "JNT_Index_Index4_M_rotate_Skin_Test_Anim.ibx"
		;
connectAttr "JNT_Index_Index4_M_rotate_Skin_Test_Anim_inputBY.o" "JNT_Index_Index4_M_rotate_Skin_Test_Anim.iby"
		;
connectAttr "JNT_Index_Index4_M_rotate_Skin_Test_Anim_inputBZ.o" "JNT_Index_Index4_M_rotate_Skin_Test_Anim.ibz"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Index_Index4_M_scaleX_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index4_M_scaleX_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index4_M_scaleX_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Index_Index4_M_scaleY_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index4_M_scaleY_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index4_M_scaleY_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Index_Index4_M_scaleZ_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Index_Index4_M_scaleZ_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Index_Index4_M_scaleZ_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle1_M_visibility_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle1_M_visibility_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle1_M_translateX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle1_M_translateX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle1_M_translateY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle1_M_translateY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle1_M_translateZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle1_M_translateZ_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Middle_Middle1_M.ro" "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim.ro"
		;
connectAttr "Skin_Test_Anim.oram" "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim_inputBX.o" "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim.ibx"
		;
connectAttr "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim_inputBY.o" "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim.iby"
		;
connectAttr "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim_inputBZ.o" "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim.ibz"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Middle_Middle1_M_scaleX_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle1_M_scaleX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle1_M_scaleX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Middle_Middle1_M_scaleY_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle1_M_scaleY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle1_M_scaleY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Middle_Middle1_M_scaleZ_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle1_M_scaleZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle1_M_scaleZ_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle2_M_visibility_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle2_M_visibility_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle2_M_translateX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle2_M_translateX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle2_M_translateY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle2_M_translateY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle2_M_translateZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle2_M_translateZ_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Middle_Middle2_M.ro" "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim.ro"
		;
connectAttr "Skin_Test_Anim.oram" "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim_inputBX.o" "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim.ibx"
		;
connectAttr "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim_inputBY.o" "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim.iby"
		;
connectAttr "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim_inputBZ.o" "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim.ibz"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Middle_Middle2_M_scaleX_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle2_M_scaleX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle2_M_scaleX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Middle_Middle2_M_scaleY_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle2_M_scaleY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle2_M_scaleY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Middle_Middle2_M_scaleZ_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle2_M_scaleZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle2_M_scaleZ_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle3_M_visibility_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle3_M_visibility_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle3_M_translateX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle3_M_translateX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle3_M_translateY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle3_M_translateY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle3_M_translateZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle3_M_translateZ_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Middle_Middle3_M.ro" "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim.ro"
		;
connectAttr "Skin_Test_Anim.oram" "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim_inputBX.o" "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim.ibx"
		;
connectAttr "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim_inputBY.o" "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim.iby"
		;
connectAttr "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim_inputBZ.o" "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim.ibz"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Middle_Middle3_M_scaleX_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle3_M_scaleX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle3_M_scaleX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Middle_Middle3_M_scaleY_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle3_M_scaleY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle3_M_scaleY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Middle_Middle3_M_scaleZ_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle3_M_scaleZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle3_M_scaleZ_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle4_M_visibility_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle4_M_visibility_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle4_M_translateX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle4_M_translateX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle4_M_translateY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle4_M_translateY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle4_M_translateZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle4_M_translateZ_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Middle_Middle4_M.ro" "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim.ro"
		;
connectAttr "Skin_Test_Anim.oram" "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim_inputBX.o" "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim.ibx"
		;
connectAttr "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim_inputBY.o" "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim.iby"
		;
connectAttr "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim_inputBZ.o" "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim.ibz"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Middle_Middle4_M_scaleX_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle4_M_scaleX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle4_M_scaleX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Middle_Middle4_M_scaleY_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle4_M_scaleY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle4_M_scaleY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Middle_Middle4_M_scaleZ_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Middle_Middle4_M_scaleZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Middle_Middle4_M_scaleZ_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey1_M_visibility_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey1_M_visibility_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey1_M_translateX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey1_M_translateX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey1_M_translateY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey1_M_translateY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey1_M_translateZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey1_M_translateZ_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Pinkie_Pinkey1_M.ro" "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim.ro"
		;
connectAttr "Skin_Test_Anim.oram" "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim_inputBX.o" "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim.ibx"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim_inputBY.o" "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim.iby"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim_inputBZ.o" "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim.ibz"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Pinkie_Pinkey1_M_scaleX_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey1_M_scaleX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey1_M_scaleX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Pinkie_Pinkey1_M_scaleY_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey1_M_scaleY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey1_M_scaleY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Pinkie_Pinkey1_M_scaleZ_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey1_M_scaleZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey1_M_scaleZ_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey2_M_visibility_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey2_M_visibility_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey2_M_translateX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey2_M_translateX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey2_M_translateY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey2_M_translateY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey2_M_translateZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey2_M_translateZ_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Pinkie_Pinkey2_M.ro" "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim.ro"
		;
connectAttr "Skin_Test_Anim.oram" "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim_inputBX.o" "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim.ibx"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim_inputBY.o" "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim.iby"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim_inputBZ.o" "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim.ibz"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Pinkie_Pinkey2_M_scaleX_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey2_M_scaleX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey2_M_scaleX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Pinkie_Pinkey2_M_scaleY_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey2_M_scaleY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey2_M_scaleY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Pinkie_Pinkey2_M_scaleZ_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey2_M_scaleZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey2_M_scaleZ_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey3_M_visibility_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey3_M_visibility_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey3_M_translateX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey3_M_translateX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey3_M_translateY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey3_M_translateY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey3_M_translateZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey3_M_translateZ_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Pinkie_Pinkey3_M.ro" "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim.ro"
		;
connectAttr "Skin_Test_Anim.oram" "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim_inputBX.o" "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim.ibx"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim_inputBY.o" "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim.iby"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim_inputBZ.o" "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim.ibz"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Pinkie_Pinkey3_M_scaleX_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey3_M_scaleX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey3_M_scaleX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Pinkie_Pinkey3_M_scaleY_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey3_M_scaleY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey3_M_scaleY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Pinkie_Pinkey3_M_scaleZ_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey3_M_scaleZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey3_M_scaleZ_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey4_M_visibility_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey4_M_visibility_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey4_M_translateX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey4_M_translateX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey4_M_translateY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey4_M_translateY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey4_M_translateZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey4_M_translateZ_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Pinkie_Pinkey4_M.ro" "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim.ro"
		;
connectAttr "Skin_Test_Anim.oram" "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim_inputBX.o" "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim.ibx"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim_inputBY.o" "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim.iby"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim_inputBZ.o" "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim.ibz"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Pinkie_Pinkey4_M_scaleX_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey4_M_scaleX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey4_M_scaleX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Pinkie_Pinkey4_M_scaleY_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey4_M_scaleY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey4_M_scaleY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Pinkie_Pinkey4_M_scaleZ_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Pinkie_Pinkey4_M_scaleZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Pinkie_Pinkey4_M_scaleZ_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring1_M_visibility_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring1_M_visibility_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring1_M_translateX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring1_M_translateX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring1_M_translateY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring1_M_translateY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring1_M_translateZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring1_M_translateZ_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Ring_Ring1_M.ro" "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim.ro";
connectAttr "Skin_Test_Anim.oram" "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim.wb";
connectAttr "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim_inputBX.o" "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim.ibx"
		;
connectAttr "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim_inputBY.o" "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim.iby"
		;
connectAttr "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim_inputBZ.o" "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim.ibz"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Ring_Ring1_M_scaleX_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring1_M_scaleX_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring1_M_scaleX_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Ring_Ring1_M_scaleY_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring1_M_scaleY_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring1_M_scaleY_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Ring_Ring1_M_scaleZ_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring1_M_scaleZ_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring1_M_scaleZ_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring2_M_visibility_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring2_M_visibility_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring2_M_translateX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring2_M_translateX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring2_M_translateY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring2_M_translateY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring2_M_translateZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring2_M_translateZ_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Ring_Ring2_M.ro" "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim.ro";
connectAttr "Skin_Test_Anim.oram" "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim.wb";
connectAttr "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim_inputBX.o" "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim.ibx"
		;
connectAttr "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim_inputBY.o" "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim.iby"
		;
connectAttr "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim_inputBZ.o" "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim.ibz"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Ring_Ring2_M_scaleX_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring2_M_scaleX_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring2_M_scaleX_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Ring_Ring2_M_scaleY_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring2_M_scaleY_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring2_M_scaleY_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Ring_Ring2_M_scaleZ_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring2_M_scaleZ_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring2_M_scaleZ_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring3_M_visibility_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring3_M_visibility_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring3_M_translateX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring3_M_translateX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring3_M_translateY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring3_M_translateY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring3_M_translateZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring3_M_translateZ_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Ring_Ring3_M.ro" "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim.ro";
connectAttr "Skin_Test_Anim.oram" "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim.wb";
connectAttr "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim_inputBX.o" "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim.ibx"
		;
connectAttr "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim_inputBY.o" "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim.iby"
		;
connectAttr "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim_inputBZ.o" "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim.ibz"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Ring_Ring3_M_scaleX_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring3_M_scaleX_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring3_M_scaleX_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Ring_Ring3_M_scaleY_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring3_M_scaleY_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring3_M_scaleY_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Ring_Ring3_M_scaleZ_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring3_M_scaleZ_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring3_M_scaleZ_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring4_M_visibility_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring4_M_visibility_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring4_M_translateX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring4_M_translateX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring4_M_translateY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring4_M_translateY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring4_M_translateZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring4_M_translateZ_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Ring_Ring4_M.ro" "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim.ro";
connectAttr "Skin_Test_Anim.oram" "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim.wb";
connectAttr "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim_inputBX.o" "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim.ibx"
		;
connectAttr "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim_inputBY.o" "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim.iby"
		;
connectAttr "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim_inputBZ.o" "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim.ibz"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Ring_Ring4_M_scaleX_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring4_M_scaleX_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring4_M_scaleX_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Ring_Ring4_M_scaleY_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring4_M_scaleY_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring4_M_scaleY_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Ring_Ring4_M_scaleZ_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Ring_Ring4_M_scaleZ_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Ring_Ring4_M_scaleZ_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb1_M_visibility_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb1_M_visibility_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb1_M_translateX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb1_M_translateX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb1_M_translateY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb1_M_translateY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb1_M_translateZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb1_M_translateZ_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Thumb_Thumb1_M.ro" "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim.ro"
		;
connectAttr "Skin_Test_Anim.oram" "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim.wb";
connectAttr "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim_inputBX.o" "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim.ibx"
		;
connectAttr "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim_inputBY.o" "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim.iby"
		;
connectAttr "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim_inputBZ.o" "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim.ibz"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Thumb_Thumb1_M_scaleX_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb1_M_scaleX_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb1_M_scaleX_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Thumb_Thumb1_M_scaleY_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb1_M_scaleY_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb1_M_scaleY_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Thumb_Thumb1_M_scaleZ_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb1_M_scaleZ_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb1_M_scaleZ_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb2_M_visibility_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb2_M_visibility_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb2_M_translateX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb2_M_translateX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb2_M_translateY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb2_M_translateY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb2_M_translateZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb2_M_translateZ_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Thumb_Thumb2_M.ro" "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim.ro"
		;
connectAttr "Skin_Test_Anim.oram" "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim.wb";
connectAttr "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim_inputBX.o" "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim.ibx"
		;
connectAttr "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim_inputBY.o" "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim.iby"
		;
connectAttr "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim_inputBZ.o" "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim.ibz"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Thumb_Thumb2_M_scaleX_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb2_M_scaleX_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb2_M_scaleX_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Thumb_Thumb2_M_scaleY_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb2_M_scaleY_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb2_M_scaleY_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Thumb_Thumb2_M_scaleZ_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb2_M_scaleZ_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb2_M_scaleZ_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb3_M_visibility_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb3_M_visibility_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb3_M_translateX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb3_M_translateX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb3_M_translateY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb3_M_translateY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb3_M_translateZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb3_M_translateZ_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Thumb_Thumb3_M.ro" "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim.ro"
		;
connectAttr "Skin_Test_Anim.oram" "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim.wb";
connectAttr "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim_inputBX.o" "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim.ibx"
		;
connectAttr "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim_inputBY.o" "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim.iby"
		;
connectAttr "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim_inputBZ.o" "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim.ibz"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Thumb_Thumb3_M_scaleX_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb3_M_scaleX_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb3_M_scaleX_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Thumb_Thumb3_M_scaleY_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb3_M_scaleY_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb3_M_scaleY_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Thumb_Thumb3_M_scaleZ_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb3_M_scaleZ_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb3_M_scaleZ_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb4_M_visibility_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb4_M_visibility_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb4_M_translateX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb4_M_translateX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb4_M_translateY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb4_M_translateY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb4_M_translateZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb4_M_translateZ_Skin_Test_Anim.wb"
		;
connectAttr "JNT_Thumb_Thumb4_M.ro" "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim.ro"
		;
connectAttr "Skin_Test_Anim.oram" "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim.wb";
connectAttr "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim_inputBX.o" "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim.ibx"
		;
connectAttr "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim_inputBY.o" "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim.iby"
		;
connectAttr "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim_inputBZ.o" "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim.ibz"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_Thumb_Thumb4_M_scaleX_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb4_M_scaleX_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb4_M_scaleX_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Thumb_Thumb4_M_scaleY_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb4_M_scaleY_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb4_M_scaleY_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.sam" "JNT_Thumb_Thumb4_M_scaleZ_Skin_Test_Anim.acm";
connectAttr "Skin_Test_Anim.bgwt" "JNT_Thumb_Thumb4_M_scaleZ_Skin_Test_Anim.wa";
connectAttr "Skin_Test_Anim.fgwt" "JNT_Thumb_Thumb4_M_scaleZ_Skin_Test_Anim.wb";
connectAttr "Skin_Test_Anim.bgwt" "JNT_ForearmTwist_ForearmTwist1_M_visibility_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_ForearmTwist_ForearmTwist1_M_visibility_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_ForearmTwist_ForearmTwist1_M_translateX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_ForearmTwist_ForearmTwist1_M_translateX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_ForearmTwist_ForearmTwist1_M_translateY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_ForearmTwist_ForearmTwist1_M_translateY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_ForearmTwist_ForearmTwist1_M_translateZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_ForearmTwist_ForearmTwist1_M_translateZ_Skin_Test_Anim.wb"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.ro" "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim.ro"
		;
connectAttr "Skin_Test_Anim.oram" "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim.wb"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim_inputBX.o" "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim.ibx"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim_inputBY.o" "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim.iby"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim_inputBZ.o" "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim.ibz"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_ForearmTwist_ForearmTwist1_M_scaleX_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_ForearmTwist_ForearmTwist1_M_scaleX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_ForearmTwist_ForearmTwist1_M_scaleX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_ForearmTwist_ForearmTwist1_M_scaleY_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_ForearmTwist_ForearmTwist1_M_scaleY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_ForearmTwist_ForearmTwist1_M_scaleY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_ForearmTwist_ForearmTwist1_M_scaleZ_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_ForearmTwist_ForearmTwist1_M_scaleZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_ForearmTwist_ForearmTwist1_M_scaleZ_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_ForearmTwist_ForearmTwist2_M_visibility_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_ForearmTwist_ForearmTwist2_M_visibility_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_ForearmTwist_ForearmTwist2_M_translateX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_ForearmTwist_ForearmTwist2_M_translateX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_ForearmTwist_ForearmTwist2_M_translateY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_ForearmTwist_ForearmTwist2_M_translateY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_ForearmTwist_ForearmTwist2_M_translateZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_ForearmTwist_ForearmTwist2_M_translateZ_Skin_Test_Anim.wb"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.ro" "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim.ro"
		;
connectAttr "Skin_Test_Anim.oram" "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim.wb"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim_inputBX.o" "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim.ibx"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim_inputBY.o" "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim.iby"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim_inputBZ.o" "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim.ibz"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_ForearmTwist_ForearmTwist2_M_scaleX_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_ForearmTwist_ForearmTwist2_M_scaleX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_ForearmTwist_ForearmTwist2_M_scaleX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_ForearmTwist_ForearmTwist2_M_scaleY_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_ForearmTwist_ForearmTwist2_M_scaleY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_ForearmTwist_ForearmTwist2_M_scaleY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_ForearmTwist_ForearmTwist2_M_scaleZ_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_ForearmTwist_ForearmTwist2_M_scaleZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_ForearmTwist_ForearmTwist2_M_scaleZ_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_BicepTwist_BicepTwist_M_visibility_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_BicepTwist_BicepTwist_M_visibility_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_BicepTwist_BicepTwist_M_translateX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_BicepTwist_BicepTwist_M_translateX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_BicepTwist_BicepTwist_M_translateY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_BicepTwist_BicepTwist_M_translateY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_BicepTwist_BicepTwist_M_translateZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_BicepTwist_BicepTwist_M_translateZ_Skin_Test_Anim.wb"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M.ro" "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim.ro"
		;
connectAttr "Skin_Test_Anim.oram" "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim.wb"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim_inputBX.o" "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim.ibx"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim_inputBY.o" "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim.iby"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim_inputBZ.o" "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim.ibz"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_BicepTwist_BicepTwist_M_scaleX_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_BicepTwist_BicepTwist_M_scaleX_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_BicepTwist_BicepTwist_M_scaleX_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_BicepTwist_BicepTwist_M_scaleY_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_BicepTwist_BicepTwist_M_scaleY_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_BicepTwist_BicepTwist_M_scaleY_Skin_Test_Anim.wb"
		;
connectAttr "Skin_Test_Anim.sam" "JNT_BicepTwist_BicepTwist_M_scaleZ_Skin_Test_Anim.acm"
		;
connectAttr "Skin_Test_Anim.bgwt" "JNT_BicepTwist_BicepTwist_M_scaleZ_Skin_Test_Anim.wa"
		;
connectAttr "Skin_Test_Anim.fgwt" "JNT_BicepTwist_BicepTwist_M_scaleZ_Skin_Test_Anim.wb"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn"
		;
connectAttr "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "JNT_Arm_Elbow_M_scaleX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "JNT_Clav_Clav01_M_scaleY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "JNT_Arm_Elbow_M_translateX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "BaseAnimation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn";
connectAttr "Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn";
connectAttr "JNT_Clav_Clav01_M_visibility_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "JNT_Arm_Shoulder_M_translateX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "JNT_Arm_Shoulder_M_scaleZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "JNT_Arm_Elbow_M_translateY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "JNT_Clav_Clav01_M_scaleZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn"
		;
connectAttr "JNT_Arm_Wrist_M_translateX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "JNT_Arm_Shoulder_M_scaleX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "JNT_Arm_Elbow_M_scaleY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "JNT_Index_Index2_M_rotate_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "JNT_Arm_Wrist_M_visibility_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "JNT_Arm_Elbow_M_visibility_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn"
		;
connectAttr "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "JNT_Arm_Shoulder_M_scaleY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn"
		;
connectAttr "JNT_Arm_Wrist_M_translateY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "JNT_Index_Index1_M_visibility_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "JNT_Arm_Shoulder_M_visibility_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "JNT_Clav_Clav01_M_translateZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn"
		;
connectAttr "JNT_Clav_Clav01_M_scaleX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn"
		;
connectAttr "JNT_Index_Index1_M_scaleY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn"
		;
connectAttr "JNT_Arm_Wrist_M_scaleX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "JNT_Clav_Clav01_M_translateY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn"
		;
connectAttr "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "JNT_Index_Index1_M_scaleX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn"
		;
connectAttr "JNT_Index_Index1_M_scaleZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn"
		;
connectAttr "JNT_Index_Index2_M_translateX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn"
		;
connectAttr "JNT_Arm_Shoulder_M_translateY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "JNT_Arm_Shoulder_M_translateZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "JNT_Index_Index1_M_translateY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "JNT_Index_Index2_M_translateY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "JNT_Index_Index2_M_translateZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "JNT_Index_Index2_M_scaleY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "JNT_Index_Index3_M_translateX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn"
		;
connectAttr "JNT_Arm_Elbow_M_scaleZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "JNT_Index_Index3_M_translateY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn"
		;
connectAttr "JNT_Arm_Elbow_M_translateZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn"
		;
connectAttr "polyColorPerVertex1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn"
		;
connectAttr "JNT_Arm_Wrist_M_translateZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn"
		;
connectAttr "JNT_Arm_Wrist_M_scaleZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn"
		;
connectAttr "JNT_Index_Index3_M_visibility_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn"
		;
connectAttr "JNT_Index_Index3_M_scaleX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn"
		;
connectAttr "JNT_Index_Index2_M_scaleZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn"
		;
connectAttr "JNT_Index_Index3_M_scaleY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn"
		;
connectAttr "JNT_Index_Index1_M_rotate_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn"
		;
connectAttr "JNT_Clav_Clav01_M_translateX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn"
		;
connectAttr "JNT_Index_Index3_M_translateZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn"
		;
connectAttr "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn"
		;
connectAttr "JNT_Index_Index3_M_rotate_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn"
		;
connectAttr "JNT_Index_Index3_M_scaleZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn"
		;
connectAttr "JNT_Index_Index2_M_scaleX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn"
		;
connectAttr "JNT_Index_Index4_M_visibility_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn"
		;
connectAttr "JNT_Index_Index4_M_translateX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn"
		;
connectAttr "JNT_Arm_Wrist_M_scaleY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn"
		;
connectAttr "JNT_Index_Index4_M_translateY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn"
		;
connectAttr "JNT_Index_Index1_M_translateZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn"
		;
connectAttr "JNT_Index_Index4_M_translateZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn"
		;
connectAttr "JNT_Index_Index2_M_visibility_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn"
		;
connectAttr "JNT_Index_Index1_M_translateX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn"
		;
connectAttr "JNT_Middle_Middle3_M_translateZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn"
		;
connectAttr "JNT_Middle_Middle3_M_scaleX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn"
		;
connectAttr "JNT_Index_Index4_M_scaleX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn"
		;
connectAttr "JNT_Index_Index4_M_scaleY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[118].dn"
		;
connectAttr "JNT_Middle_Middle1_M_translateX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn"
		;
connectAttr "JNT_Middle_Middle1_M_translateY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[120].dn"
		;
connectAttr "JNT_Middle_Middle1_M_scaleX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn"
		;
connectAttr "JNT_Middle_Middle1_M_scaleY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn"
		;
connectAttr "JNT_Middle_Middle2_M_scaleZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[123].dn"
		;
connectAttr "JNT_Middle_Middle3_M_scaleZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[124].dn"
		;
connectAttr "JNT_Middle_Middle4_M_translateX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[125].dn"
		;
connectAttr "JNT_Middle_Middle4_M_translateY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[126].dn"
		;
connectAttr "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[127].dn"
		;
connectAttr "JNT_Middle_Middle2_M_translateY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[128].dn"
		;
connectAttr "JNT_Middle_Middle4_M_scaleX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[129].dn"
		;
connectAttr "JNT_Middle_Middle4_M_scaleY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[130].dn"
		;
connectAttr "JNT_Middle_Middle4_M_scaleZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[131].dn"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_visibility_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[132].dn"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_translateX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[133].dn"
		;
connectAttr "JNT_Middle_Middle2_M_translateX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[134].dn"
		;
connectAttr "JNT_Middle_Middle3_M_translateX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[135].dn"
		;
connectAttr "JNT_Middle_Middle2_M_visibility_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[136].dn"
		;
connectAttr "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[137].dn"
		;
connectAttr "JNT_Middle_Middle2_M_scaleY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[138].dn"
		;
connectAttr "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[139].dn"
		;
connectAttr "JNT_Middle_Middle3_M_scaleY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[140].dn"
		;
connectAttr "JNT_Middle_Middle4_M_visibility_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[141].dn"
		;
connectAttr "JNT_Middle_Middle2_M_translateZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[142].dn"
		;
connectAttr "JNT_Middle_Middle4_M_translateZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[143].dn"
		;
connectAttr "JNT_Index_Index4_M_rotate_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[144].dn"
		;
connectAttr "JNT_Middle_Middle1_M_visibility_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[145].dn"
		;
connectAttr "JNT_Middle_Middle1_M_translateZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[146].dn"
		;
connectAttr "JNT_Middle_Middle3_M_translateY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[147].dn"
		;
connectAttr "JNT_Index_Index4_M_scaleZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[148].dn"
		;
connectAttr "JNT_Middle_Middle2_M_scaleX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[149].dn"
		;
connectAttr "JNT_Middle_Middle1_M_scaleZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[150].dn"
		;
connectAttr "JNT_Middle_Middle3_M_visibility_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[151].dn"
		;
connectAttr "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[152].dn"
		;
connectAttr "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[153].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_translateZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[154].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_scaleZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[155].dn"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_translateX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[156].dn"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_translateY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[157].dn"
		;
connectAttr "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[158].dn"
		;
connectAttr "JNT_Index_Index2_M_rotate_Skin_Test_Anim_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[159].dn"
		;
connectAttr "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[160].dn"
		;
connectAttr "JNT_Index_Index3_M_rotate_Skin_Test_Anim_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[161].dn"
		;
connectAttr "JNT_Index_Index4_M_rotate_Skin_Test_Anim_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[162].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_translateY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[163].dn"
		;
connectAttr "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[164].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_scaleX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[165].dn"
		;
connectAttr "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[166].dn"
		;
connectAttr "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[167].dn"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_scaleY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[168].dn"
		;
connectAttr "JNT_Ring_Ring1_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[169].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_scaleY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[170].dn"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[171].dn"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_scaleZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[172].dn"
		;
connectAttr "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[173].dn"
		;
connectAttr "JNT_Ring_Ring4_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[174].dn"
		;
connectAttr "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[175].dn"
		;
connectAttr "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[176].dn"
		;
connectAttr "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[177].dn"
		;
connectAttr "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[178].dn"
		;
connectAttr "JNT_Arm_Shoulder_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[179].dn"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_visibility_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[180].dn"
		;
connectAttr "JNT_Index_Index3_M_rotate_Skin_Test_Anim_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[181].dn"
		;
connectAttr "JNT_Thumb_Thumb4_M_scaleX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[182].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_translateY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[183].dn"
		;
connectAttr "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[184].dn"
		;
connectAttr "JNT_Thumb_Thumb4_M_scaleY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[185].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_visibility_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[186].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_visibility_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[187].dn"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_scaleX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[188].dn"
		;
connectAttr "Mesh_Human_Biped_01_lambert2SG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[189].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_scaleY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[190].dn"
		;
connectAttr "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[191].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_translateX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[192].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[193].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[194].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_scaleZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[195].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_scaleX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[196].dn"
		;
connectAttr "JNT_Index_Index2_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[197].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_translateZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[198].dn"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_translateZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[199].dn"
		;
connectAttr "JNT_Thumb_Thumb4_M_scaleZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[200].dn"
		;
connectAttr "materialInfo3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[201].dn";
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_translateX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[202].dn"
		;
connectAttr "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[203].dn"
		;
connectAttr "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[204].dn"
		;
connectAttr "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[205].dn"
		;
connectAttr "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[206].dn"
		;
connectAttr "JNT_Index_Index1_M_rotate_Skin_Test_Anim_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[207].dn"
		;
connectAttr "JNT_Index_Index1_M_rotate_Skin_Test_Anim_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[208].dn"
		;
connectAttr "JNT_Index_Index1_M_rotate_Skin_Test_Anim_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[209].dn"
		;
connectAttr "JNT_Index_Index2_M_rotate_Skin_Test_Anim_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[210].dn"
		;
connectAttr "JNT_Index_Index2_M_rotate_Skin_Test_Anim_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[211].dn"
		;
connectAttr "JNT_Index_Index3_M_rotate_Skin_Test_Anim_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[212].dn"
		;
connectAttr "JNT_Index_Index4_M_rotate_Skin_Test_Anim_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[213].dn"
		;
connectAttr "JNT_Index_Index4_M_rotate_Skin_Test_Anim_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[214].dn"
		;
connectAttr "JNT_Index_Index4_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[215].dn"
		;
connectAttr "JNT_Thumb_Thumb3_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[216].dn"
		;
connectAttr "lambert2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[217].dn";
connectAttr "JNT_Arm_Wrist_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[218].dn"
		;
connectAttr "JNT_Clav_Clav01_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[219].dn"
		;
connectAttr "JNT_Index_Index1_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[220].dn"
		;
connectAttr "uiConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[221].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[222].dn"
		;
connectAttr "Joint_Disp1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[223].dn";
connectAttr "JNT_Ring_Ring2_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[224].dn"
		;
connectAttr "JNT_Thumb_Thumb4_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[225].dn"
		;
connectAttr "JNT_Pinkie_Pinkey1_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[226].dn"
		;
connectAttr "Arm_Mesh1ShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[227].dn"
		;
connectAttr "JNT_Ring_Ring3_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[228].dn"
		;
connectAttr "JNT_Pinkie_Pinkey2_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[229].dn"
		;
connectAttr "JNT_Index_Index3_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[230].dn"
		;
connectAttr "JNT_Arm_Elbow_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[231].dn"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[232].dn"
		;
connectAttr "skinCluster1Set1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[233].dn"
		;
connectAttr "JNT_Middle_Middle1_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[234].dn"
		;
connectAttr "Arm_MeshShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[235].dn";
connectAttr "Arm_Mesh1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[236].dn";
connectAttr "JNT_Middle_Middle2_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[237].dn"
		;
connectAttr "JNT_Middle_Middle3_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[238].dn"
		;
connectAttr "JNT_Pinkie_Pinkey4_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[239].dn"
		;
connectAttr "tweakSet2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[240].dn";
connectAttr "sceneConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[241].dn"
		;
connectAttr "JNT_Middle_Middle4_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[242].dn"
		;
connectAttr "JNT_Thumb_Thumb2_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[243].dn"
		;
connectAttr "JNT_Thumb_Thumb1_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[244].dn"
		;
connectAttr "Arm_Mesh.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[245].dn";
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[246].dn"
		;
connectAttr "JNT_Pinkie_Pinkey3_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[247].dn"
		;
connectAttr "Arm_Mesh1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[248].dn"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_translateX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[249].dn"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_translateZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[250].dn"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_translateY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[251].dn"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_scaleX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[252].dn"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_scaleZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[253].dn"
		;
connectAttr "JNT_Ring_Ring3_M_translateX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[254].dn"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_translateX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[255].dn"
		;
connectAttr "JNT_Ring_Ring1_M_visibility_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[256].dn"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_scaleZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[257].dn"
		;
connectAttr "JNT_Ring_Ring2_M_translateX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[258].dn"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_scaleY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[259].dn"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[260].dn"
		;
connectAttr "JNT_Ring_Ring1_M_scaleX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[261].dn"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_translateZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[262].dn"
		;
connectAttr "JNT_Ring_Ring2_M_translateZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[263].dn"
		;
connectAttr "JNT_Ring_Ring4_M_translateZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[264].dn"
		;
connectAttr "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[265].dn"
		;
connectAttr "JNT_Ring_Ring2_M_visibility_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[266].dn"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_scaleX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[267].dn"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_translateZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[268].dn"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_translateX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[269].dn"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_scaleX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[270].dn"
		;
connectAttr "JNT_Ring_Ring1_M_translateZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[271].dn"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_scaleY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[272].dn"
		;
connectAttr "JNT_Ring_Ring3_M_visibility_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[273].dn"
		;
connectAttr "JNT_Ring_Ring1_M_translateY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[274].dn"
		;
connectAttr "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[275].dn"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[276].dn"
		;
connectAttr "JNT_Ring_Ring1_M_scaleY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[277].dn"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_visibility_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[278].dn"
		;
connectAttr "JNT_Ring_Ring2_M_scaleZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[279].dn"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_scaleY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[280].dn"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[281].dn"
		;
connectAttr "JNT_Ring_Ring3_M_translateY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[282].dn"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_scaleY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[283].dn"
		;
connectAttr "JNT_Ring_Ring3_M_translateZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[284].dn"
		;
connectAttr "JNT_Ring_Ring2_M_scaleY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[285].dn"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_scaleZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[286].dn"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[287].dn"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_scaleZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[288].dn"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_scaleX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[289].dn"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_translateY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[290].dn"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_translateY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[291].dn"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_visibility_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[292].dn"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_translateY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[293].dn"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_visibility_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[294].dn"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_translateZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[295].dn"
		;
connectAttr "JNT_Ring_Ring1_M_translateX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[296].dn"
		;
connectAttr "JNT_Ring_Ring1_M_scaleZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[297].dn"
		;
connectAttr "JNT_Ring_Ring2_M_translateY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[298].dn"
		;
connectAttr "JNT_Ring_Ring2_M_scaleX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[299].dn"
		;
connectAttr "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[300].dn"
		;
connectAttr "JNT_Ring_Ring3_M_scaleX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[301].dn"
		;
connectAttr "JNT_Ring_Ring3_M_scaleY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[302].dn"
		;
connectAttr "JNT_Ring_Ring3_M_scaleZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[303].dn"
		;
connectAttr "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[304].dn"
		;
connectAttr "JNT_Ring_Ring4_M_visibility_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[305].dn"
		;
connectAttr "JNT_Ring_Ring4_M_translateX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[306].dn"
		;
connectAttr "JNT_Ring_Ring4_M_translateY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[307].dn"
		;
connectAttr "JNT_Thumb_Thumb4_M_translateZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[308].dn"
		;
connectAttr "JNT_Thumb_Thumb3_M_visibility_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[309].dn"
		;
connectAttr "JNT_Ring_Ring4_M_scaleX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[310].dn"
		;
connectAttr "JNT_Thumb_Thumb2_M_translateX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[311].dn"
		;
connectAttr "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[312].dn"
		;
connectAttr "JNT_Thumb_Thumb2_M_translateZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[313].dn"
		;
connectAttr "JNT_Thumb_Thumb2_M_scaleY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[314].dn"
		;
connectAttr "JNT_Thumb_Thumb3_M_scaleX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[315].dn"
		;
connectAttr "JNT_Thumb_Thumb2_M_translateY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[316].dn"
		;
connectAttr "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[317].dn"
		;
connectAttr "JNT_Thumb_Thumb2_M_scaleZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[318].dn"
		;
connectAttr "JNT_Thumb_Thumb4_M_translateX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[319].dn"
		;
connectAttr "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[320].dn"
		;
connectAttr "JNT_Thumb_Thumb2_M_visibility_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[321].dn"
		;
connectAttr "JNT_Thumb_Thumb1_M_visibility_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[322].dn"
		;
connectAttr "JNT_Thumb_Thumb3_M_translateZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[323].dn"
		;
connectAttr "JNT_Thumb_Thumb1_M_translateZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[324].dn"
		;
connectAttr "JNT_Thumb_Thumb1_M_scaleX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[325].dn"
		;
connectAttr "JNT_Ring_Ring4_M_scaleZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[326].dn"
		;
connectAttr "JNT_Thumb_Thumb1_M_scaleY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[327].dn"
		;
connectAttr "JNT_Thumb_Thumb1_M_translateY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[328].dn"
		;
connectAttr "JNT_Thumb_Thumb1_M_translateX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[329].dn"
		;
connectAttr "JNT_Thumb_Thumb1_M_scaleZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[330].dn"
		;
connectAttr "JNT_Ring_Ring4_M_scaleY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[331].dn"
		;
connectAttr "JNT_Thumb_Thumb3_M_translateY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[332].dn"
		;
connectAttr "JNT_Thumb_Thumb3_M_translateX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[333].dn"
		;
connectAttr "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[334].dn"
		;
connectAttr "JNT_Thumb_Thumb3_M_scaleY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[335].dn"
		;
connectAttr "JNT_Thumb_Thumb2_M_scaleX_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[336].dn"
		;
connectAttr "JNT_Thumb_Thumb3_M_scaleZ_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[337].dn"
		;
connectAttr "JNT_Thumb_Thumb4_M_visibility_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[338].dn"
		;
connectAttr "JNT_Thumb_Thumb4_M_translateY_Skin_Test_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[339].dn"
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
// End of Arm_BUILT.ma
