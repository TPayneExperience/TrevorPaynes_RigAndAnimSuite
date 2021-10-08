//Maya ASCII 2019 scene
//Name: Arm_BUILT.ma
//Last modified: Fri, Oct 08, 2021 02:50:08 PM
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
	setAttr ".t" -type "double3" 142.61357519713991 249.6151726370172 -36.279792366137656 ;
	setAttr ".r" -type "double3" -55.538352729608441 84.60000000000251 -3.3796745147267076e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "E77BA93B-47C6-9477-E3E8-4A89AC42A323";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 159.10724573987312;
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
	setAttr ".operation" -type "string" "Mesh Setup";
	setAttr ".nextLimbID" 10;
	setAttr ".nextJointID" 28;
	setAttr ".nextMeshID" 4;
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
	setAttr ".t" -type "double3" 5.5230406399187046 137.52213631501641 -2.0461767078897952 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".t" -type "double3" 8.708312693051699 2.8421709430404007e-14 -4.4408920985006262e-16 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".t" -type "double3" 12.274168772767116 1.3482982141919863e-06 -7.0644878835679492e-14 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -5.6843418860808015e-14 -1.3322676295501878e-15 ;
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
	setAttr ".t" -type "double3" 25.941269954820434 -3.7260276957316732e-07 0.19840277671717454 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".t" -type "double3" 8.700292705433327 0 -8.8817841970012523e-16 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".t" -type "double3" 7.1054273576010019e-15 1.1368683772161603e-13 -2.6645352591003757e-15 ;
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
	setAttr ".t" -type "double3" 16.28114869182432 0 -8.8817841970012523e-16 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".t" -type "double3" -1.4210854715202004e-14 -5.6843418860808015e-14 -3.5527136788005009e-15 ;
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
	setAttr ".t" -type "double3" 26.259939324857896 -2.841582016799295e-06 1.333654098313944e-14 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".t" -type "double3" 7.9379058083578533 0.70256262781710821 -0.29684972057054893 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".t" -type "double3" 3.2775428993820199 0 2.2204460492503131e-16 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".t" -type "double3" 3.356309532593734 -2.8421709430404007e-14 -1.1102230246251565e-15 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".t" -type "double3" 3.451004902417985 -2.8421709430404007e-14 8.8817841970012523e-16 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".t" -type "double3" -3.5527136788005009e-15 -5.6843418860808015e-14 4.4408920985006262e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999933 1.0000000000000011 ;
	setAttr ".rp" -type "double3" 1.0658141036401498e-14 0 8.8817841970012622e-16 ;
	setAttr ".sp" -type "double3" 1.0658141036401503e-14 0 8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" -4.7331654313260687e-30 0 9.8607613152626581e-31 ;
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
	setAttr ".t" -type "double3" -3.5527136788005009e-15 2.8421709430404007e-14 1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999933 1.0000000000000007 ;
	setAttr ".rp" -type "double3" -1.0658141036401498e-14 0 0 ;
	setAttr ".sp" -type "double3" -1.0658141036401503e-14 0 0 ;
	setAttr ".spt" -type "double3" 4.7331654313260687e-30 0 0 ;
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
	setAttr ".t" -type "double3" -5.8619775700208265e-14 1.9895196601282805e-13 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".rp" -type "double3" 1.2434497875801752e-14 0 0 ;
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
	setAttr ".t" -type "double3" -2.8421709430404007e-14 8.5265128291212022e-14 2.2204460492503131e-16 ;
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
	setAttr ".t" -type "double3" 7.8190365685399517 0.52916697249288736 -2.7118128374972352 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".t" -type "double3" 2.6470511256765832 2.8421709430404007e-14 0 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".t" -type "double3" 2.9147340994338968 0 -8.8817841970012523e-16 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".t" -type "double3" 3.7421843699642601 0 -1.7763568394002505e-15 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".t" -type "double3" 3.5527136788005009e-15 2.8421709430404007e-14 1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999978 ;
	setAttr ".rp" -type "double3" -2.4868995751603507e-14 2.8421709430403995e-14 0 ;
	setAttr ".sp" -type "double3" -2.4868995751603507e-14 2.8421709430404007e-14 0 ;
	setAttr ".spt" -type "double3" 0 -1.2621774483536183e-29 0 ;
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
	setAttr ".t" -type "double3" -5.6843418860808015e-14 1.4210854715202004e-13 1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -7.1054273576010019e-15 2.8421709430403995e-14 -1.7763568394002509e-15 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-15 2.8421709430404007e-14 -1.7763568394002505e-15 ;
	setAttr ".spt" -type "double3" 0 -1.2621774483536183e-29 -3.9443045261050599e-31 ;
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
	setAttr ".t" -type "double3" -3.907985046680551e-14 5.6843418860808015e-14 4.4408920985006262e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999978 0.99999999999999967 ;
	setAttr ".rp" -type "double3" -3.5527136788004986e-15 0 1.7763568394002497e-15 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-15 0 1.7763568394002505e-15 ;
	setAttr ".spt" -type "double3" 2.366582715663034e-30 0 -7.8886090522101154e-31 ;
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
	setAttr ".t" -type "double3" -2.1316282072803006e-14 1.4210854715202004e-13 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000007 1 ;
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
	setAttr ".t" -type "double3" 7.8288810320045279 0.94274018076017285 1.8635468004911591 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".t" -type "double3" 3.6539765362013874 0 -2.6645352591003757e-15 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".t" -type "double3" 2.8248401066068034 2.8421709430404007e-14 -4.4408920985006262e-16 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".t" -type "double3" 3.2332893329224959 -2.8421709430404007e-14 -8.8817841970012523e-16 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".t" -type "double3" -2.2737367544323206e-13 2.8421709430404007e-13 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999967 1 ;
	setAttr ".rp" -type "double3" -7.1054273576010034e-15 0 0 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-15 0 0 ;
	setAttr ".spt" -type "double3" -1.577721810442024e-30 0 0 ;
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
	setAttr ".t" -type "double3" -1.3855583347321954e-13 2.2737367544323206e-13 4.4408920985006262e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 1.0000000000000002 ;
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
	setAttr ".t" -type "double3" -2.4868995751603507e-14 4.5474735088646412e-13 2.2204460492503131e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 1.0000000000000002 ;
	setAttr ".rp" -type "double3" -1.7763568394002505e-14 2.8421709430403995e-14 4.4408920985006271e-16 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-14 2.8421709430404007e-14 4.4408920985006262e-16 ;
	setAttr ".spt" -type "double3" 0 -1.2621774483536183e-29 9.8607613152626498e-32 ;
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
	setAttr ".t" -type "double3" -4.6185277824406512e-14 1.9895196601282805e-13 -3.1086244689504383e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999933 ;
	setAttr ".rp" -type "double3" -1.0658141036401503e-14 5.684341886080799e-14 -4.4408920985006232e-16 ;
	setAttr ".sp" -type "double3" -1.0658141036401503e-14 5.6843418860808015e-14 -4.4408920985006262e-16 ;
	setAttr ".spt" -type "double3" 0 -2.5243548967072369e-29 2.9582283945787925e-31 ;
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
	setAttr ".t" -type "double3" 7.2965411030324745 0.40936099840923879 -4.6085328294878325 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".t" -type "double3" 2.2858601897864261 5.6843418860808015e-14 -1.7763568394002505e-15 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".t" -type "double3" 2.4760630189721891 2.8421709430404007e-14 8.8817841970012523e-16 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".t" -type "double3" 2.1354158919624879 2.8421709430404007e-14 2.2204460492503131e-15 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".t" -type "double3" -3.5527136788005009e-14 3.4106051316484809e-13 3.9968028886505635e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999956 1 ;
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
	setAttr ".t" -type "double3" -4.2632564145606011e-14 1.7053025658242404e-13 8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000004 ;
	setAttr ".rp" -type "double3" -1.4210854715202007e-14 0 -8.8817841970012563e-16 ;
	setAttr ".sp" -type "double3" -1.4210854715202004e-14 0 -8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" -3.1554436208840479e-30 0 -3.9443045261050608e-31 ;
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
	setAttr ".t" -type "double3" -6.2172489379008766e-14 2.8421709430404007e-13 -8.8817841970012523e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999956 1.0000000000000002 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 1.7763568394002497e-15 0 -8.8817841970012543e-16 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-15 0 -8.8817841970012523e-16 ;
	setAttr ".spt" -type "double3" -7.8886090522101146e-31 0 -1.97215226305253e-31 ;
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
	setAttr ".t" -type "double3" 9.2370555648813024e-14 3.1263880373444408e-13 5.3290705182007514e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 1 ;
	setAttr ".rp" -type "double3" 7.1054273576010019e-15 5.684341886080799e-14 0 ;
	setAttr ".sp" -type "double3" 7.1054273576010019e-15 5.6843418860808015e-14 0 ;
	setAttr ".spt" -type "double3" 0 -2.5243548967072369e-29 0 ;
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
	setAttr ".t" -type "double3" 2.6690456837124401 -1.731296843712073 1.7853067906047153 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".t" -type "double3" 3.2816682663097581 -1.0658141036401503e-14 0 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".t" -type "double3" 4.0292311701752439 -7.1054273576010019e-15 0 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".t" -type "double3" 2.8346696655482475 0 -2.8421709430404007e-14 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 0 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".t" -type "double3" -4.9737991503207013e-14 5.6843418860808015e-14 -8.5265128291212022e-14 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
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
	setAttr ".t" -type "double3" -2.1316282072803006e-14 5.6843418860808015e-14 0 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000004 ;
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
	setAttr ".t" -type "double3" -7.1054273576010019e-14 2.8421709430404007e-14 -8.5265128291212022e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999922 1.0000000000000016 1.0000000000000011 ;
	setAttr ".rp" -type "double3" 0 7.1054273576010129e-15 0 ;
	setAttr ".sp" -type "double3" 0 7.1054273576010019e-15 0 ;
	setAttr ".spt" -type "double3" 0 1.1044052673094182e-29 0 ;
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
	setAttr ".t" -type "double3" -5.6843418860808015e-14 6.7501559897209518e-14 -1.1368683772161603e-13 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999956 0.99999999999999967 ;
	setAttr ".rp" -type "double3" -3.5527136788004994e-15 1.7763568394002497e-15 0 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-15 1.7763568394002505e-15 0 ;
	setAttr ".spt" -type "double3" 1.5777218104420231e-30 -7.8886090522101146e-31 0 ;
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
	setAttr ".t" -type "double3" 8.5265128291212022e-14 -8.5265128291212022e-14 -1.7763568394002505e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999933 1.0000000000000007 ;
	setAttr ".rp" -type "double3" 2.8421709430403995e-14 -2.8421709430403989e-14 0 ;
	setAttr ".sp" -type "double3" 2.8421709430404007e-14 -2.8421709430404007e-14 0 ;
	setAttr ".spt" -type "double3" -1.2621774483536185e-29 1.8932661725304272e-29 0 ;
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
	setAttr ".t" -type "double3" -3.5527136788005009e-14 -5.6843418860808015e-14 0 ;
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
	setAttr ".t" -type "double3" -1.2434497875801753e-14 0 8.8817841970012523e-16 ;
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
createNode transform -n "Arm_Mesh2" -p "MESHES";
	rename -uid "E3E2B34A-4320-BFEE-9332-C1BD1BD4E7B5";
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
createNode mesh -n "Arm_Mesh2Shape" -p "Arm_Mesh2";
	rename -uid "DBCF6C1C-4CFF-AECB-FAE4-37B938E3AECD";
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
	setAttr ".pv" -type "double2" 0.96364641189575195 0.96028387546539307 ;
	setAttr ".uvst[0].uvsn" -type "string" "uvSet1";
	setAttr ".cuvs" -type "string" "uvSet1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
	setAttr ".pfrsVersion" 110;
	setAttr ".ID" 3;
	setAttr ".L002" -type "doubleArray" 613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
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
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0.029828354842465436 0.14090383809278359 0.47057266859198627 0.31876768740525263
		 0.48627088979875777 0.28200742568374748 0.062197933322118176 0.01321731830961472
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".J003" -type "doubleArray" 613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99999999999999989
		 1 1 1 0.99999999999999989 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0.99999999999999989
		 0.99999999999999989 1 1 1 1 1 0.99999999999999989 0 0 0 0 0 0 0 0 0 0 0.99999999999999989
		 1 1 1 1 1 0.99999999999999989 1 1 0.99999999999999989 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99999999999999989
		 1 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 ;
	setAttr ".J002" -type "doubleArray" 613 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 1 1 1 0.99999999999999989 0.99999999999999989 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99999999999999989
		 1 1 0.99999999999999989 1 0.99999999999999989 1 1 1 0.99999999999999989 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0.99999999999999989
		 1 1 1 1 0.99999999999999989 1 0.99999999999999989 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 1 1 1 0.99999999999999989 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".L001" -type "doubleArray" 613 0.056869152747874768 0.03769951069638991
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
		 0 0 0.11919794856973434 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.037114780841217838
		 0.18480257718843518 0.5 0.35618100109641587 0.12823381418598614 0.066685327625857924
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".J001" -type "doubleArray" 613 1 1 0.99999999999999989 1 1 1 1 1 1 1
		 1 0.99999999999999989 1 1 1 1 1 0.99999999999999989 1 1 1 1 1 0.99999999999999989
		 1 1 0.99999999999999989 1 0.99999999999999989 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 0.99999999999999989 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99999999999999989
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99999999999999989 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ;
	setAttr ".L003" -type "doubleArray" 613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0.053092658472352269 0.079483310627969248
		 0 0 0.18386153800321642 0.25504097690191108 0 0 0 0 0 0 0 0 1 1 1 0 1 1 1 0.58852420627829249
		 0.9051225529063418 1 0.98514040656570923 0.87992600273870936 1 1 1 1 1 1 1 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 1 1 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0.042060556354114778
		 0 1 1 0 1 1 1 0 1 0.99239565959289822 0.93238315524866833 0 0.97154589667398783 1
		 0.91252240406195073 0 0.97937906008825137 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.15813684545316403
		 0.032388914819701138 0.019104710372724626 0 0 0 0 0 1 0 1 1 1 1 1 0.99655127714216307
		 0.9971032944296766 1 1 1 1 1 0.91064485563969422 0.9018165379151859 0.90837662361349181
		 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 0.9193768517651737
		 0.94139327838297082 0.96075828803029495 1 1 1 1 1 0.98362103064517836 0.98811996888211073
		 0.99323971434872138 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 ;
	setAttr ".J005" -type "doubleArray" 613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 1 0.5 1 1 0 0.52521309159694485 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 1 0.49094991277629496 0.48801681919514567 0.49901516857986961 0 0.66171508370702403
		 0.68587679384587408 0.71459989334459595 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.068535622690366865 0.093547140056560812
		 0 0 0 0.088464034244412862 0.063314100288463238 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0
		 0 0 0 0 0 0 0 1 0.89049945372249539 1 1 1 0.93672246401994519 1 1 0 0 0 0 0 0 0 0
		 0.95011629616546733 0.94219297482269115 1 0.90917179886506128 0.97391785212563009
		 0.97098520882581185 1 0.94036802737291503 0 0 0 0 0 0 0 0 0 1 1 0 0 1 0 0 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 1 1 1 0 0
		 0 0 0 0 0 0 0 0 0 0 1 1 1 0.030778007398538088 0 0.027473695647377238 0.48970136616819293
		 0.98708004608483524 0.97669525690171632 0.82247495349421629 0 0 0 0 0 0 0 0 0 0 0.76964605921096552
		 1 1 1 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0
		 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0.045661920248875006 0.97112488220495974
		 0.95608720925466939 0.92937165640308339 0.73305382342999637 0 0 0 0 0 0 0 0 0 0 0
		 0.76307572141649282 0.97716263569144368 0.98943345087449786 0.4717704474569378 0.020021231313847022
		 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 0 0 0 ;
	setAttr ".J004" -type "doubleArray" 613 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
		 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 0 0 0 0 0 0 0.5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.50905008722370515
		 0.51198318080485439 0.50098483142013039 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.93146437730963316 0.90645285994343916
		 1 1 1 0.91153596575558715 0.93668589971153682 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0
		 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.96922199260146191 1 0.97252630435262277
		 0.51029863383180707 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 1 1 1 1
		 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 1 1 1 1 1 0.95433807975112506 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.52822955254306225
		 0.97997876868615297 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 ;
	setAttr ".J006" -type "doubleArray" 613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 1 0.4747869084030551 1 1 0 0 1 1 0 0 0 0 0 0 0 0
		 0 0 0 0 0 1 0.33828491629297602 0.31412320615412598 0.28540010665540416 1 1 0.98251638992841828
		 1 0.99999999999999989 0.85556793284692623 0.89437028328494972 0.9580352252933827
		 0.50763341155066566 0.5 0.5 0.50907178879223591 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1
		 1 1 1 1 1 0 0.10950054627750469 0 0 0 0.063277535980054908 0 0 1 1 1 1 1 1 0 1 0.049883703834532618
		 0.057807025177308811 0 0.090828201134938766 0.026082147874369965 0.029014791174188106
		 0 0.059631972627085063 1 1 1 0.99999999999999989 0.98991014744878247 1 1 1 1 0 0
		 1 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0
		 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0.01291995391516478 0.023304743098283717
		 0.17752504650578371 0.99999999999999989 1 0.99687065620293902 0.98130540590079973
		 0.50420066455769774 0.50299485213097073 0.94283024596928799 0.99999999999999989 1
		 1 0.23035394078903448 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0
		 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0.028875117795040268
		 0.043912790745330645 0.070628343596916651 0.26694617657000358 1 1 0.99999999999999989
		 0.96860147714589695 0.5000409259758084 0.54944177871565036 0.51398418253739542 0.92183371853226748
		 1 1 1 0.2369242785835072 0.022837364308556388 0.010566549125502089 0 0 0 0 0 0 0
		 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 ;
	setAttr ".J007" -type "doubleArray" 613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0.99999999999999989 1 0 0 1 1 1 1 1 1 1 1
		 0 0 0 0 0 0 0 0 0 0 0 0.017483610071581716 0 0 0.14443206715307375 0.10562971671505032
		 0.041964774706617268 0.49236658844933429 0.5 0.5 0.49092821120776403 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0.010089852551217559 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0.0031293437970610818 0.018694594099200303 0.49579933544230237
		 0.49700514786902927 0.057169754030712061 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.031398522854103064 0.4999590740241916 0.45055822128434964
		 0.48601581746260453 0.078166281467732635 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".L004" -type "doubleArray" 613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 1 0 0 0
		 0.41147579372170751 0.094877447093658182 0 0.014859593434290792 0.12007399726129069
		 0 0 0 0 0 0 0 1 1 1 1 0.99999999999999989 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 1 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0.0076043404071018863 0.067616844751331728
		 1 0.028454103326012194 0 0.087477595938049282 1 0.020620939911748577 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0034487228578369395 0.002896705570323445
		 0 0 0 0 0 0.089355144360305727 0.098183462084814058 0.091623376386508151 0 1 1 1
		 1 1 0.99999999999999989 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.080623148234826303
		 0.058606721617029123 0.039241711969705134 0 0 0 0 0 0.016378969354821606 0.011880031117889284
		 0.0067602856512785671 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 0 0 ;
	setAttr ".J009" -type "doubleArray" 613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.05997619238746249
		 0.87298444041150902 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.45809150179140828 0.40634129218625531
		 0.45673449139323774 0.48493767609742672 0.91351762134323833 0.91467835978179091 0.90727755708987468
		 0.90803701690183702 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0.097361503084672466
		 0.11991767702081634 0 0 0.027834081819282857 0.050468123869616306 0.11168626610725113
		 0.08895486911214992 0 0 0 0 0 0 0 0 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0
		 0 0 0 0 0 0 0 0.67368071128340978 0 1 1 0.79251106924893755 1 0 0 0 0 0 0 0 0 0.52257615132682578
		 0.58644460687444711 0.57707290936031252 0.51422900494363921 0.5 0.51223288198647321
		 0.50494399561036263 0.5 0.97946021131136674 0.96058042256047804 0.95649154480193044
		 0.97547707414487994 0.9568912002715988 0.94095271538503078 0.93620220334205984 0.95138416215358879
		 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 1 1 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 1 1 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0.78221331450874565 0.90928676538357578
		 0.96189414389543071 0.04127878029398898 0.022692727891565945 0.038253607482290043
		 0.44951285668403107 0.98927580997399089 0.98108688502149943 0.96616506895707155 0.5849520073594302
		 0 0 0 0 0 0 0 0.50155781668927824 0.59155483397604769 0.96820996360898226 0.98341844109444698
		 0.99142146128761333 0.36996986026702683 0.0080335670716890871 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0.010069786499352805 0.032988780108209458 0.38939300680159245
		 0.98861056288910909 0.97429902358796994 0.9450180478587259 0.55649870517576627 0.5
		 0.5 0 0 0 0 0 0 0.51484879079006984 0.62995697041288945 0.96221763766274271 0.97491214610133237
		 0.9833082146206874 0.45109435488580596 0.033980301033291825 0 0 ;
	setAttr ".J008" -type "doubleArray" 613 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
		 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.94002380761253757
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.54190849820859177 0.59365870781374475 0.54326550860676226
		 0.51506232390257323 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0
		 0.9026384969153276 0.88008232297918365 1 1 0.97216591818071718 0.9495318761303837
		 0.88831373389274881 0.91104513088785011 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.95872121970601099
		 0.97730727210843404 0.9617463925177101 0.55048714331596893 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0.63003013973297317 0.99196643292831088 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 1 1 1 1 0.98993021350064725 0.96701121989179051 0.61060699319840761 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.54890564511419404 0.96601969896670814 1 1 ;
	setAttr ".J010" -type "doubleArray" 613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0.12701555958849095
		 0 0 0 0.9198867872276133 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.08648237865676181
		 0.085321640218209177 0.092722442910125311 0.091962983098163045 0.96869365856858081
		 0.98272110329819273 0.98718532419315763 0.97593632507369887 0.90779474906468438 0.87749151495497268
		 0.89275123781440102 0.92653255661843115 0.5 0.5 0.5 0.5 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 1 0 1 1 0 0 0 0 0 0 1 1 1 1 0 0 1 1 0 0 0
		 0 0 0 0 0 1 1 0.32631928871659016 1 0 0 0.20748893075106253 0 0 0 0.68193963858601225
		 0 0 0 0.55498133564431162 0 0.47742384867317428 0.41355539312555295 0.42292709063968753
		 0.48577099505636079 0.5 0.48776711801352685 0.49505600438963732 0.5 0.020539788688633247
		 0.039419577439521902 0.04350845519806959 0.024522925855120146 0.043108799728401294
		 0.059047284614969199 0.063797796657940178 0.048615837846411304 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 1 1 0 0
		 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 1 0.21778668549125432 0.090713234616424193 0.038105856104569333
		 0 0 0 0 0.010724190026009214 0.018913114978500619 0.0338349310429285 0.4150479926405698
		 0.99635703651200247 0.99569908349337122 0.96909525406888686 0.5 0.5 0.95266494637616295
		 0.99205562359892507 0.49844218331072182 0.40844516602395237 0.031790036391017719
		 0.016581558905552993 0.0085785387123867504 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0
		 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0
		 0 1 1 0 0 0 0 0 0 0 0 0 0.011389437110890971 0.025700976412030115 0.054981952141274146
		 0.44350129482423378 0.5 0.5 0.93485560859275896 0.51692487735622505 0.5 0.5 0.97362341055402368
		 0.98891435359309543 0.48515120920993021 0.37004302958711049 0.037782362337257271
		 0.025087853898667609 0.016691785379312554 0 0 0 0 ;
	setAttr ".J011" -type "doubleArray" 613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0.080113212772386755
		 0 0 0 1 1 1 1 0.99999999999999989 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0.031306341431419221
		 0.01727889670180734 0.012814675806842391 0.024063674926301189 0.092205250935315633
		 0.12250848504502733 0.10724876218559898 0.073467443381568853 0.5 0.5 0.5 0.5 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1
		 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 1 1 0.31806036141398769 1 1 1 0.44501866435568843
		 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0.99999999999999989
		 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0.0036429634879975325 0.0043009165066288241
		 0.030904745931113104 0.5 0.5 0.047335053623837012 0.0079443764010748794 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.06514439140724107
		 0.483075122643775 0.5 0.5 0.026376589445976272 0.01108564640690456 0 0 0 0 0 0 0
		 0 0 ;
	setAttr ".L005" -type "doubleArray" 613 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
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
		 0.49951748730576673 1 0.36310462050626835 0.31401441766786625 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99999999999999989 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99999999999999989 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.48823143740187486
		 0.2704404778828659 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99999999999999989 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 ;
	setAttr ".J013" -type "doubleArray" 613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.99999999999999989
		 1 1 1 1 1 0.99999999999999989 0 1 1 0 0 1 0 1 0 1 0 1 0 1 0 1 0 0.99999999999999989
		 0 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99999999999999989
		 1 1 1 1 0.99999999999999989 1 1 1 1 1 1 1 0.99999999999999989 1 0.99999999999999989
		 1 1 1 1 1 1 1 1 1 1 0.99999999999999989 1 1 1 0.99999999999999989 0.99999999999999989
		 1 1 1 1 1 0.99999999999999989 0.99999999999999989 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99999999999999989
		 1 0.99999999999999989 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".J012" -type "doubleArray" 613 1 1 1 1 0.99999999999999989 1 1 1 1 1
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
		 1 1 1 1 1 1 0.99999999999999989 1 1 1 0.99999999999999989 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99999999999999989 0.99999999999999989 1 1 1 0.99999999999999989
		 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".J014" -type "doubleArray" 613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99999999999999989 1 1 1 1 0.99999999999999989
		 1 1 1 0.99999999999999989 1 1 1 1 1 1 1 1 1 0.99999999999999989 0.99999999999999989
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 0.99999999999999989 0.99999999999999989 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ;
	setAttr ".L006" -type "doubleArray" 613 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 0.99999999999999989 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99999999999999989 1 1 1 1 0.99999999999999989
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 0.99999999999999989 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0.99999999999999989 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99999999999999989 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99999999999999989 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99999999999999989 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 ;
	setAttr ".J015" -type "doubleArray" 613 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ;
	setAttr ".L007" -type "doubleArray" 613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
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
		 0 0 0 0 0 1 1 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1
		 0 1 1 1 0 1 1 1 1 1 1 1 1 0.95793944364588524 0.98777065330962455 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.014546675795427984
		 0 0 0.47758916437983512 0.23550988652122651 0.010514696642194152 0.0022651828789250796
		 0.001152016490273659 0.012866156707775621 0.36204432161096767 0.5 0 0 0 0 0 0 0 0
		 0 0 1 1 1 1 1 1 1 1 0.99713579659883544 0.99495680690279042 0.97171173633320695 1
		 1 0.84186315454683602 0.96761108518029881 0.98089528962727535 1 1 1 1 1 0 0.21587480834964654
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0.0002283087038124042 0.0003211624011059205 0.0042625897839500184 0.012818033440133774
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.011456591927428874 0.017399783709587665
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.4999345165319598 0.5 1 1 1 1 1
		 1 1 0.97813578080044239 1 1 1 1 1 0.99800981935797561 0.99719775018051005 1 0.99999999999999989
		 1 1 1 1 1 0.43991095412439724 0.022331241027777424 0.017942777562192876 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.012529665985066964 0.016017426208650182 0.00095449956858767308
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0013688282471897193 0.0015886633744143653 ;
	setAttr ".J017" -type "doubleArray" 613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.03137329866653079 1 1 0 1 0 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.47665308989431543 1 0.39597915443435128
		 0.46237767628424531 0.82996007633781876 0 0.83291084262249515 0.90270335460715934
		 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 1 1 1 1
		 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.032645257893210877 0.043280766129092395
		 0 0.032250607334494169 0 0 0.043963914792621739 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0.98167672566625885 1 0.95113437480246177 0.97335939705377483
		 0.47964161993428045 1 0.96357845130148201 0.49807506599289969 0.51272090996841135
		 0.50691982673670888 0.5543272267009165 0.5941256501972545 0.5 0.5 0 0 1 1 1 1 1 1
		 1 1 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0.01007838518922575 0.0065909967925707729 0.0092592771160967292
		 0.3513646229060477 0.47787421699213306 0.99560450596959393 0.96123249495062191 0.60024708638701707
		 0 0 0 0 0 0 0 0 0.53909953831794755 0.87728375796820346 0.98262635800499087 0.49204421714998398
		 0.42587250229858425 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 1 1
		 0 0 0 0 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1
		 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0.018268956747286017
		 0.36380745890076738 0.46495227722522431 0.98623799419975056 0.85290504116898258 0.52754393609842487
		 0.5 0 0 0 0 0 0 0 0 0.6492421063708308 0.95716710159983698 0.98811770363367502 0.49845556175740124
		 0.44566287414964789 0.020158726073873989 0.013793182960242911 0 0 0 0 1 1 1 1 0 0
		 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 1 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 1 1 0 0 0 ;
	setAttr ".J016" -type "doubleArray" 613 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.96862670133346918 0 0 1 0 1 0 0 0 0
		 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 1 1 1 0.99999999999999989
		 1 1 1 0.99999999999999989 1 1 1 1 1 0.99999999999999989 1 1 1 1 1 1 0.99999999999999989
		 1 1 1 1 0 0 0 0 0 0 0 0 0.52334691010568468 0 0.60402084556564883 0.53762232371575469
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0.99999999999999989 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.96735474210678918
		 0.95671923387090763 1 0.96774939266550586 1 1 0.95603608520737826 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.52035838006571955 0 0 0.50192493400710025
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0.99999999999999989 1 1 0.99999999999999989 1 1 1 1 1 1 1 1 0 0 0 0
		 0 0 0 0 0 0.98992161481077423 0.99340900320742931 0.99074072288390336 0.64863537709395225
		 0.52212578300786694 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.50795578285001597 0.57412749770141569
		 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 1 1 0.99999999999999989 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 1
		 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 0.98173104325271399 0.63619254109923262
		 0.53504772277477564 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.50154443824259876 0.55433712585035211
		 0.97984127392612597 0.9862068170397571 0.99999999999999989 1 1 1 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0.99999999999999989 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 1 0.99999999999999989 1 ;
	setAttr ".J018" -type "doubleArray" 613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0.17003992366218124 1 0.1670891573775049 0.097296645392840678
		 0.99999999999999989 1 1 1 1 0.99999999999999989 1 1 0.50408152928612326 0.5 0.5 0.50790754159065443
		 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1
		 1 1 0.018323274333741146 0 0.048865625197538225 0.026640602946225209 0 0 0.036421548698518061
		 0 0.48727909003158865 0.49308017326329107 0.44567277329908356 0.40587434980274556
		 0.5 0.5 1 0.99999999999999989 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0.0043954940304060403
		 0.038767505049378086 0.39975291361298293 1 0.99999999999999989 0.99999999999999989
		 0.50015411285247258 0.50015441231628743 1 1 1 0.46090046168205251 0.12271624203179658
		 0.017373641995009077 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0.013762005800249416
		 0.14709495883101745 0.47245606390157513 0.5 1 0.88789715696930993 0.50605312127972779
		 0.50095803001745542 0.51055835294095553 0.99464446870650725 0.99999999999999989 1
		 0.3507578936291692 0.042832898400163147 0.01188229636632494 0 0 0 0 0 0 0 0 0 0 0
		 0 1 1 1 1 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 0 0 0 0 0 0 0
		 0 0 0 ;
	setAttr ".J019" -type "doubleArray" 613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.49591847071387668 0.5 0.5
		 0.49209245840934557 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.49984588714752753 0.49984558768371251 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.11210284303069006
		 0.49394687872027221 0.49904196998254452 0.48944164705904453 0.0053555312934927901
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".L008" -type "doubleArray" 613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 1 1 1 1 1 1 1 1 1 1 0.9793135993081743
		 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0.044041192943269324 0.012349700888999922
		 0 0 0.18871034983337509 0.032186496185211529 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.97133939151448467 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0.012229346690375491 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1
		 1 1 0 0 0 0 0 0 0 0 0.0028642034011645873 0.0050431930972095855 0.028288263666793021
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1
		 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.98419266964283381 1 1 1 1 1 1 1 1 0 0 0 0
		 0 0 0 0 0 0.021864219199557645 0 0 0 0 0 0.0019901806420244048 0.0028022498194899019
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".J021" -type "doubleArray" 613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.410899727687011 0.32591237810178314
		 0 0.28484458064101831 0.025662114101742017 0.3831007966038007 0.84704110189976289
		 0.82903529586545566 0.85576410397721236 0.87312119519290343 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 0 0 1 0 0 0
		 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.010399787328424351
		 0 0 0.033759451313374989 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.97781636008952333 0.97011662043229274
		 0.94709904204111672 0.95790877691440801 0.44819150868626145 0.46748768837575261 0.48742964363239655
		 0.47733720543963526 0.50104354093882464 0.5 0.53404470235883528 0.54711972768068973
		 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0.024477340588620031 0.036009980331526338
		 0 0 0 0 0 0 0 0 0.029670711022734234 0 0 0 0 0.51801020766797223 0.92243102656046017
		 0.98573878896283373 0.46123850401589317 0.28843999487104188 0 0 0 1 1 1 0 0 0 0 0
		 0 0 0 0 0 0 0 1 1 1 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 1 1 1 1 1 1 1
		 0 0 0 0 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.53407678173980666
		 0.94637150328694808 0.99076475754587645 0.43060329779830525 0.23027849443500079 0.0062010262804141321
		 0.0045493012379796138 0 0 0.0031570168715357606 0.0086516993813019246 0.22468188558668722
		 0.41776667771550358 0.98838879739539987 0.90038032784086852 0.50785632385737023 0.5
		 0 0 0 0 0 0 0 0 0.52323010840906747 0.87644425970370055 0.96057857914932587 0.48909294876589765
		 0.40098677500315816 0.032136183083565459 0.012022661103927114 0.021652316873633431
		 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0
		 0 0 1 1 1 1 0 0 0 0 0 0 0 1 1 1 1 1 1 0 0 0 0 0 1 1 1 1 1 1 1 0 0 0 ;
	setAttr ".J020" -type "doubleArray" 613 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.58910027231298911 0.67408762189821692
		 1 0.71515541935898175 0.97433788589825798 0.6168992033961993 0 0 0 0 0 0 0 0 0 0
		 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 0.98960021267157561 1 1 0.96624054868662501 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0
		 0 0.55180849131373855 0.53251231162424739 0.51257035636760351 0.52266279456036469
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.97552265941138006 0.96399001966847364
		 1 1 1 1 1 1 1 1 0.97032928897726578 0 0 0 0 0 0 0 0.53876149598410683 0.71156000512895823
		 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 0 0 0 0 0 0 0 0.5693967022016948 0.76972150556499919 0.99379897371958592 0.99545069876202041
		 1 1 0.99684298312846431 0.99134830061869805 0.77531811441331278 0.58223332228449654
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.51090705123410229 0.59901322499684184 0.96786381691643464
		 0.98797733889607287 0.97834768312636655 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 1 1 ;
	setAttr ".J022" -type "doubleArray" 613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.15295889810023713 0.17096470413454443
		 0.14423589602278766 0.1268788048070966 0.98366059351424839 0.98406892025034054 0.98434388653105387
		 1 0.95132247465884712 0.92253561882616553 0.90581809340146913 0.93919584654977906
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 1 1 1 1 0.53767165645643267 0.50989938278494262 0.51467288020329338 0.54007419588606664
		 0 0 0 0 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 1 1 1 1 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 1 1 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0.022183639910476713 0.029883379567707223 0.052900957958883249 0.042091223085591954
		 0 0 0 0 0.49895645906117536 0.5 0.46595529764116483 0.45288027231931033 0.99038071009919149
		 0.98948037240604592 0.98437166614738303 1 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 0 0 0 0 0
		 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0.56777209948198704 0.98280645363853503 0.99579446016462136 0.99648553402809847
		 0.48198979233202788 0.077568973439539793 0.014261211037166273 0 0 0 0 0 0 0 0 1 1
		 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0
		 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.54147465754648816
		 0.96705944064154181 0.99534217883325615 0.99671021937444415 0.46592321826019328 0.053628496713051921
		 0.0092352424541236374 0 0 0 0 0 0 0 0 0 0 0.011611202604600163 0.099619672159131478
		 0.49214367614262972 0.5 0.99196940747786178 0.95269912132036505 0.58187971440603325
		 0.74311519987439834 0.50661562491167911 0.95137612374080949 0.98729495390200539 0.99999999999999989
		 0.47676989159093247 0.12355574029629957 0.039421420850674127 0 0 0 0 0 0 0 0 0 0
		 0 1 1 1 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 1 1 1 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".J023" -type "doubleArray" 613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.016339406485751634
		 0.015931079749659464 0.015656113468946235 0 0.048677525341152897 0.077464381173834487
		 0.094181906598530818 0.060804153450220985 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.46232834354356733 0.49010061721505743
		 0.48532711979670656 0.45992580411393341 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0
		 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.009619289900808568
		 0.010519627593954112 0.015628333852617034 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0.43222790051801296 0.017193546361465001 0.0042055398353787101 0.0035144659719015246
		 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0.99999999999999989 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.4585253424535119 0.032940559358458195 0.0046578211667439584
		 0.003289780625555835 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.0080305925221382333 0.047300878679634978
		 0.41812028559396675 0.25688480012560172 0.49338437508832089 0.048623876259190457
		 0.012705046097994718 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".L009" -type "doubleArray" 613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.020686400691825677
		 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99999999999999989 1 1 1 1 0 0 1 0 0 0 0 0
		 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0.028660608485515358 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0.01580733035716617 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".J025" -type "doubleArray" 613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0.49703484971912226 0.98504248166924235 0.94243984083159715 0.93172401569685248 0.4716307694018913
		 0.93073900810241383 0.4794453754832731 0.93343129413884518 0.78859727062814133 0.67500105986650838
		 0.65178819589632375 0.76382652683830499 0 0 0 0 0 0 0 0 1 0 0.052405656768669096
		 0 0 0 0 0 0 0 1 0 0 0 0 0 0.33629417939605416 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0
		 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 1 1 0 0 0 0
		 0.5 0.9818929846297737 0.98313838138911402 0.5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0.57528105248916417 0.67399526142517407 0.65176833980390703 0.55778683951839225
		 0.50823468234695302 0.56821109798517688 0.55213525343553704 0.50218764732184795 1
		 1 1 1 1 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1
		 1 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 1 0 0 0 ;
	setAttr ".J024" -type "doubleArray" 613 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0.50296515028087774 0 0 0 0.5283692305981087 0 0.52055462451672696 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 1 0.94759434323133085 1 1 1 1 1 1 1 0 1 1 1 1 1 0.66370582060394578
		 0 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 0 0 0 0 0 0 0 0 1 1 0 0 1 1 1 1 0.5 0 0 0.5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1
		 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 ;
	setAttr ".J026" -type "doubleArray" 613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
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
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0.018107015370226277 0.01686161861088592 0 0 0 0 0 1 0 0 1 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0.42471894751083583 0.32600473857482587 0.34823166019609292
		 0.44221316048160775 0.49176531765304698 0.43178890201482312 0.44786474656446296 0.49781235267815199
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".J027" -type "doubleArray" 613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1
		 0 0 0 0 0 0 0 0 0 0 0 0 0.030099180818082941 0.024452563134307305 0.019691245371847892
		 0.024408933300144719 0.095689181584156943 0.1374384169030608 0.11831275886792178
		 0.07200485209547039 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.5 0.4967045169368412
		 0.49730626576995807 0.5 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 1 1 0 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 0 0 0 0 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0
		 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 ;
createNode mesh -n "polySurfaceShape1" -p "Arm_Mesh2";
	rename -uid "54297A1C-4D53-81AA-5267-1B8F18D2531C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:293]";
	setAttr ".ove" yes;
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
		 281 280 1 12 282 1 282 281 1 14 276 1 276 282 1 16 277 1 277 276 1 18 278 1 278 277 0
		 283 275 1 279 284 1 284 283 1 280 285 1 285 284 1 281 286 1 286 285 1 282 287 1 287 286 1
		 288 283 1 284 289 1 289 288 0 285 290 1 290 289 0 286 291 1 291 290 0 287 292 0 292 291 0
		 278 301 0 288 294 0 294 293 0 293 283 1 295 293 0 295 296 1 296 283 1 298 295 0 299 296 1
		 298 299 0 300 297 0 299 300 0 215 188 1 214 184 1 301 297 0 0 301 1 287 303 0 303 302 0
		 277 302 0 303 276 1;
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
createNode mesh -n "Arm_Mesh2ShapeOrig" -p "Arm_Mesh2";
	rename -uid "9A625767-46C2-8CA1-1A01-169E3FE43213";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "uvSet1";
	setAttr ".cuvs" -type "string" "uvSet1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Arm_Mesh3" -p "MESHES";
	rename -uid "0FCA6550-4166-F1F8-808C-BA83D1071505";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 86.415593355894089 3.5180826187133789 ;
	setAttr ".sp" -type "double3" 0 86.415593355894089 3.5180826187133789 ;
createNode mesh -n "Arm_Mesh3Shape" -p "Arm_Mesh3";
	rename -uid "83C1D5E3-41DC-C68A-66B0-F5A485846BED";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -dv 1 -at "long";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "backupMesh" -ln "backupMesh" -dt "string";
	addAttr -ci true -sn "pfrsSkinCluster" -ln "pfrsSkinCluster" -dt "string";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.96364641189575195 0.96028387546539307 ;
	setAttr ".uvst[0].uvsn" -type "string" "uvSet1";
	setAttr ".cuvs" -type "string" "uvSet1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".pt";
	setAttr ".pt[540]" -type "float3" 0 0.24445529 0 ;
	setAttr ".pt[541]" -type "float3" 0 0.24445529 0 ;
	setAttr ".pt[542]" -type "float3" 0 0.24445529 0 ;
	setAttr ".pt[543]" -type "float3" 0 0.24445529 0 ;
	setAttr ".pt[544]" -type "float3" 0 0.24445529 0 ;
	setAttr ".pt[545]" -type "float3" 0 0.24445529 0 ;
	setAttr ".pt[546]" -type "float3" 0 0.24445529 0 ;
	setAttr ".pt[547]" -type "float3" 0 0.24445529 0 ;
	setAttr ".pt[548]" -type "float3" 0 0.24445529 0 ;
	setAttr ".pt[549]" -type "float3" 0 0.24445529 0 ;
	setAttr ".pt[565]" -type "float3" 0 -0.14017402 0 ;
	setAttr ".pt[566]" -type "float3" 0 -0.14017402 0 ;
	setAttr ".pt[567]" -type "float3" 0 -0.14017402 0 ;
	setAttr ".pt[568]" -type "float3" 0 -0.14017402 0 ;
	setAttr ".pt[569]" -type "float3" 0 -0.14017402 0 ;
	setAttr ".pt[570]" -type "float3" 0 -0.14017402 0 ;
	setAttr ".pt[571]" -type "float3" 0 -0.14017402 0 ;
	setAttr ".pt[572]" -type "float3" 0 -0.14017402 0 ;
	setAttr ".pt[573]" -type "float3" 0 -0.14017402 0 ;
	setAttr ".pt[574]" -type "float3" 0 -0.14017402 0 ;
	setAttr ".pt[576]" -type "float3" 0 0.19602549 -0.10764485 ;
	setAttr ".pt[577]" -type "float3" 0 0.19602549 -0.20144802 ;
	setAttr ".pt[578]" -type "float3" 0 0.19602549 -0.24836686 ;
	setAttr ".pt[579]" -type "float3" 0 0.19602549 -0.24860218 ;
	setAttr ".pt[580]" -type "float3" 0 0.19602549 -0.24890986 ;
	setAttr ".pt[581]" -type "float3" 0 0.19602549 -0.24971455 ;
	setAttr ".pt[582]" -type "float3" 0 0.19602549 -0.20941538 ;
	setAttr ".pt[583]" -type "float3" 0 0.19602549 -0.19350144 ;
	setAttr ".pt[584]" -type "float3" 0 0.19602549 -0.17783268 ;
	setAttr ".pt[585]" -type "float3" 0 0.19602549 -0.085310899 ;
	setAttr ".pt[590]" -type "float3" 0 0.19520301 0 ;
	setAttr ".pt[591]" -type "float3" 0 0.19520301 0 ;
	setAttr ".pt[592]" -type "float3" 0 0.19520301 0 ;
	setAttr ".pt[593]" -type "float3" 0 0.19520301 0 ;
	setAttr ".pt[594]" -type "float3" 0 0.19520301 0 ;
	setAttr ".pt[595]" -type "float3" 0 0.19520301 0 ;
	setAttr ".pt[596]" -type "float3" 0 0.19520301 0 ;
	setAttr ".pt[597]" -type "float3" 0 0.19520301 0 ;
	setAttr ".pt[598]" -type "float3" 0 0.19520301 0 ;
	setAttr ".pt[599]" -type "float3" 0 0.19520301 0 ;
	setAttr ".dr" 1;
	setAttr ".pfrsVersion" 110;
	setAttr ".ID" 3;
createNode mesh -n "polySurfaceShape1" -p "Arm_Mesh3";
	rename -uid "D0E2B829-43E7-4B92-EECD-009F8AD6F24A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:293]";
	setAttr ".ove" yes;
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
		 281 280 1 12 282 1 282 281 1 14 276 1 276 282 1 16 277 1 277 276 1 18 278 1 278 277 0
		 283 275 1 279 284 1 284 283 1 280 285 1 285 284 1 281 286 1 286 285 1 282 287 1 287 286 1
		 288 283 1 284 289 1 289 288 0 285 290 1 290 289 0 286 291 1 291 290 0 287 292 0 292 291 0
		 278 301 0 288 294 0 294 293 0 293 283 1 295 293 0 295 296 1 296 283 1 298 295 0 299 296 1
		 298 299 0 300 297 0 299 300 0 215 188 1 214 184 1 301 297 0 0 301 1 287 303 0 303 302 0
		 277 302 0 303 276 1;
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
	rename -uid "8793C29A-4A59-4836-26A9-7DA267C92E42";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "7C3DEB87-427D-A830-FD5D-08BA59FF2CFD";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "3E0A5BCF-404B-D719-15DA-5289F284A6FD";
createNode displayLayerManager -n "layerManager";
	rename -uid "EF916C6B-4C07-E855-8C37-368AB297B4C0";
	setAttr -s 9 ".dli[1:8]"  5 9 3 4 1 6 7 8;
	setAttr -s 6 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "41089FF6-4ABB-B74A-E5C4-1EAD9D288DD1";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "0968F720-4995-F857-39AE-679F2F6F8732";
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
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 0 -aet 200 ";
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
	setAttr ".v" no;
	setAttr ".do" 6;
createNode displayLayer -n "Meshes_Disp";
	rename -uid "422386A5-40C8-9BD2-4D81-3E92D8AFECD2";
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
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 12.274168772767114 1.3482982126333809e-06
		 -6.9722005946459831e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -6.295778834144794e-08 0.999999999999998 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 25.941269954820434 -3.7260276957316732e-07
		 0.19840277671717454 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -2.1070264393179571e-09 -0.033467288080239056 -6.2922520232668429e-08 0.99943981340976717 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 8.7002927054333341 0 -8.8817841970012523e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 16.28114869182432 0 -8.8817841970012523e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 26.259939324857896 -2.841582016799295e-06
		 1.333654098313944e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1.4443244371005242e-07 -5.7213202933745997e-14 -3.9612431572920136e-07 0.99999999999991107 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.9379058083578542 0.70256262781711598
		 -0.29684972057054893 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0027698274346259744 0.016620036000902252 -0.16435623000282026 0.98625713286068117 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.2775428993820306 0
		 4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.060573994126982451 0.99816370963660284 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.3563095325937411 -2.8421709430404007e-14
		 -1.1102230246251565e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0094619814469837343 -0.014006427324212544 -0.14213993863241176 0.98970224246804794 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.4510049024179672 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.8190365685399517 0.52916697249288736
		 -2.7118128374972352 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0022065571341431671 0.016804059018803622 -0.13016551666160983 0.99134741285702777 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.6470511256765832 2.8421709430404007e-14
		 8.8817841970012523e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0024088469626986162 -0.0073718835103551662 -0.054684923045736765 0.99847354095203833 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.9147340994338968 2.8421709430404007e-14
		 -8.8817841970012523e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0096085214159855274 -0.015283504063932482 -0.18952253054183646 0.98171039580761554 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.7421843699642601 0
		 -1.7763568394002505e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.8288810320045279 0.94274018076017285
		 1.8635468004911591 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0044536892855043227 0.028093974702850431 -0.1565039741292322 0.98726764320466842 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.6539765362013981 0
		 -2.6645352591003757e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.00016941111504592627 0.00043632292846649325 -0.055895371592495892 0.99843652194654464 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.8248401066067981 0
		 -4.4408920985006262e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0090107326250457153 0.013949211052400405 -0.14670498314863875 0.98904088597384754 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.2332893329224817 -2.8421709430404007e-14
		 -1.7763568394002505e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.2965411030324745 0.40936099840923879
		 -4.6085328294878325 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.00025871801866542143 0.0021301756811009367 -0.12050093378927003 0.99271089465788998 1
		 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.2858601897864403 5.6843418860808015e-14
		 -1.7763568394002505e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0074822241593983426 0.021626102652993525 -0.091348231387184939 0.99555603992347119 1
		 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.4760630189721873 0
		 1.7763568394002505e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.011578584241563718 0.016281456323803647 -0.19233610039400392 0.98112571827068362 1
		 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.1354158919624666 2.8421709430404007e-14
		 2.6645352591003757e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.6690456837124401 -1.731296843712073
		 1.7853067906047153 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.58714376874001073 -0.27455908069022222 0.045434999201841089 0.76014154398233336 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.2816682663097616 -5.3290705182007514e-15
		 2.8421709430404007e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.043738743932870361 0.0542838778706633 -0.15882484555832138 0.98484255153596667 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.0292311701752368 -7.1054273576010019e-15
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.054747886434341198 0.080098207531008284 -0.20628914454353919 0.97366921227118342 1
		 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 2.8346696655482475 0
		 -2.8421709430404007e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 29 ".m";
	setAttr -s 29 ".p";
	setAttr -s 29 ".g[0:28]" yes yes no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no;
	setAttr ".bp" yes;
createNode animLayer -n "BaseAnimation";
	rename -uid "4B34A9C1-4821-E1DC-D6DC-A3A730D7526B";
	setAttr ".ovrd" yes;
createNode animLayer -n "Skin_Test_Anim1";
	rename -uid "9DF2EE14-4BA3-C0EC-2287-65BE74BF5AF1";
	setAttr -s 270 ".dsm";
	setAttr -s 216 ".bnds";
	setAttr ".mt" yes;
	setAttr ".sl" yes;
createNode animBlendNodeBoolean -n "JNT_Clav_Clav01_M_visibility_Skin_Test_Anim1";
	rename -uid "986315EE-45C0-1A69-9802-71BB32FEB02B";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Clav_Clav01_M_translateX_Skin_Test_Anim1";
	rename -uid "4ABD6AF2-4246-C4AA-A0CC-E39CA99649A8";
	setAttr ".ia" 5.5230406399187046;
	setAttr ".o" 5.5230406399187046;
createNode animBlendNodeAdditiveDL -n "JNT_Clav_Clav01_M_translateY_Skin_Test_Anim1";
	rename -uid "7174A410-4172-8E60-D30B-BF9BAA61963B";
	setAttr ".ia" 137.52213631501641;
	setAttr ".o" 137.52213631501641;
createNode animBlendNodeAdditiveDL -n "JNT_Clav_Clav01_M_translateZ_Skin_Test_Anim1";
	rename -uid "981F0379-430A-1BBA-2956-828D57A0040E";
	setAttr ".ia" -2.0461767078897952;
	setAttr ".o" -2.0461767078897952;
createNode animBlendNodeAdditiveRotation -n "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim1";
	rename -uid "51F8D1BD-40B0-ACBD-D153-A0A531BAA4D3";
createNode animBlendNodeAdditiveScale -n "JNT_Clav_Clav01_M_scaleX_Skin_Test_Anim1";
	rename -uid "24C719F1-4071-FB8F-631B-3E9045BDCB59";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Clav_Clav01_M_scaleY_Skin_Test_Anim1";
	rename -uid "955A2937-4837-4402-FA94-F1B40A8E0A57";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Clav_Clav01_M_scaleZ_Skin_Test_Anim1";
	rename -uid "B10FD9D4-4595-9212-4808-A488EA00D16A";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Arm_Shoulder_M_visibility_Skin_Test_Anim1";
	rename -uid "5497AA24-48FF-4937-A914-8EAEDFD4BF25";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Arm_Shoulder_M_translateX_Skin_Test_Anim1";
	rename -uid "41CCC612-4BFF-3193-B176-74A145D8D80D";
	setAttr ".ia" 8.708312693051699;
	setAttr ".o" 8.708312693051699;
createNode animBlendNodeAdditiveDL -n "JNT_Arm_Shoulder_M_translateY_Skin_Test_Anim1";
	rename -uid "A242D8A2-4C8E-AAC1-1F5C-59829ECE7765";
	setAttr ".ia" 2.8421709430404007e-14;
	setAttr ".o" 2.8421709430404007e-14;
createNode animBlendNodeAdditiveDL -n "JNT_Arm_Shoulder_M_translateZ_Skin_Test_Anim1";
	rename -uid "BE341821-4523-19B4-212A-47AB9EDCEE79";
	setAttr ".ia" -4.4408920985006262e-16;
	setAttr ".o" -4.4408920985006262e-16;
createNode animBlendNodeAdditiveRotation -n "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim1";
	rename -uid "975E226A-4B4C-81B8-25AF-2EAF5FBBEB43";
createNode animBlendNodeAdditiveScale -n "JNT_Arm_Shoulder_M_scaleX_Skin_Test_Anim1";
	rename -uid "134CDFEA-4024-434D-571D-568D376BF366";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Arm_Shoulder_M_scaleY_Skin_Test_Anim1";
	rename -uid "EE488892-47B7-6FEB-8A8F-E1A4C3B94225";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Arm_Shoulder_M_scaleZ_Skin_Test_Anim1";
	rename -uid "752DA2F3-42CC-DCEC-D135-4AAAE9DEBEF5";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Arm_Elbow_M_visibility_Skin_Test_Anim1";
	rename -uid "1022DDDA-41D8-4D05-15B2-04B69CBFBDDC";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Arm_Elbow_M_translateX_Skin_Test_Anim1";
	rename -uid "C370D090-4651-70EA-9CEC-1EB42B6621E8";
	setAttr ".ia" 25.941269954820434;
	setAttr ".o" 25.941269954820434;
createNode animBlendNodeAdditiveDL -n "JNT_Arm_Elbow_M_translateY_Skin_Test_Anim1";
	rename -uid "B705AE86-4C5B-616B-4792-0196318765D6";
	setAttr ".ia" -3.7260276957316732e-07;
	setAttr ".o" -3.7260276957316732e-07;
createNode animBlendNodeAdditiveDL -n "JNT_Arm_Elbow_M_translateZ_Skin_Test_Anim1";
	rename -uid "7C379E8A-4D18-26AC-C8ED-C6AB7622C186";
	setAttr ".ia" 0.19840277671717454;
	setAttr ".o" 0.19840277671717454;
createNode animBlendNodeAdditiveRotation -n "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim1";
	rename -uid "25A28298-4EDD-A8FB-A228-E09603F780A2";
createNode animBlendNodeAdditiveScale -n "JNT_Arm_Elbow_M_scaleX_Skin_Test_Anim1";
	rename -uid "A8D7D673-426E-44AD-2955-239778F8058A";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Arm_Elbow_M_scaleY_Skin_Test_Anim1";
	rename -uid "CBCC5B0F-488A-CA52-5C85-E69ACEBAD5A0";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Arm_Elbow_M_scaleZ_Skin_Test_Anim1";
	rename -uid "01CCD71E-4593-A541-3014-5EAE419E89EE";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Arm_Wrist_M_visibility_Skin_Test_Anim1";
	rename -uid "25545AC3-48B2-68E7-9DA3-918BBD9409D6";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Arm_Wrist_M_translateX_Skin_Test_Anim1";
	rename -uid "4C7FB75B-45A8-B890-14C9-E3BE3D32B1A0";
	setAttr ".ia" 26.259939324857896;
	setAttr ".o" 26.259939324857896;
createNode animBlendNodeAdditiveDL -n "JNT_Arm_Wrist_M_translateY_Skin_Test_Anim1";
	rename -uid "FC6BA0B6-4A08-74B1-4107-879C0CEE0B22";
	setAttr ".ia" -2.841582016799295e-06;
	setAttr ".o" -2.841582016799295e-06;
createNode animBlendNodeAdditiveDL -n "JNT_Arm_Wrist_M_translateZ_Skin_Test_Anim1";
	rename -uid "0013D128-40E8-117B-DB84-8C9C376E695C";
	setAttr ".ia" 1.333654098313944e-14;
	setAttr ".o" 1.333654098313944e-14;
createNode animBlendNodeAdditiveRotation -n "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim1";
	rename -uid "0BB8A268-44FA-3316-A7E5-4E870F056658";
createNode animBlendNodeAdditiveScale -n "JNT_Arm_Wrist_M_scaleX_Skin_Test_Anim1";
	rename -uid "21671A5C-4112-E4BE-CE72-5DBA76BF250D";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Arm_Wrist_M_scaleY_Skin_Test_Anim1";
	rename -uid "8A62D7A8-4B65-7CF8-613E-D9AD30BF808A";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Arm_Wrist_M_scaleZ_Skin_Test_Anim1";
	rename -uid "51E122ED-40C3-FF92-938E-58A7F7ABE490";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Index_Index1_M_visibility_Skin_Test_Anim1";
	rename -uid "8ACFD00C-4740-2E95-D428-96AA20479CDF";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Index_Index1_M_translateX_Skin_Test_Anim1";
	rename -uid "00DD96CD-404B-D5EA-4C88-6DB0A7B1D4FE";
	setAttr ".ia" 7.8288810320045279;
	setAttr ".o" 7.8288810320045279;
createNode animBlendNodeAdditiveDL -n "JNT_Index_Index1_M_translateY_Skin_Test_Anim1";
	rename -uid "7B334DC4-4B1F-3449-735F-AB8538A2444C";
	setAttr ".ia" 0.94274018076017285;
	setAttr ".o" 0.94274018076017285;
createNode animBlendNodeAdditiveDL -n "JNT_Index_Index1_M_translateZ_Skin_Test_Anim1";
	rename -uid "66EAE67C-490A-F13F-D84B-528EA75CE512";
	setAttr ".ia" 1.8635468004911591;
	setAttr ".o" 1.8635468004911591;
createNode animBlendNodeAdditiveRotation -n "JNT_Index_Index1_M_rotate_Skin_Test_Anim1";
	rename -uid "C8DC3F3B-4127-EA7E-06BC-C0AB48C0D292";
createNode animBlendNodeAdditiveScale -n "JNT_Index_Index1_M_scaleX_Skin_Test_Anim1";
	rename -uid "C978C690-4318-09B4-3A46-BFAA75E52971";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Index_Index1_M_scaleY_Skin_Test_Anim1";
	rename -uid "553B8096-45A9-317D-13D9-899DFB79BBF7";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Index_Index1_M_scaleZ_Skin_Test_Anim1";
	rename -uid "9C3ED149-45EC-02B2-CDF6-15B3BDB32542";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Index_Index2_M_visibility_Skin_Test_Anim1";
	rename -uid "509F9F03-4A02-20C7-DCD3-5C9E253319C1";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Index_Index2_M_translateX_Skin_Test_Anim1";
	rename -uid "AEF84711-4CE6-5101-C1F8-098145136085";
	setAttr ".ia" 3.6539765362013874;
	setAttr ".o" 3.6539765362013874;
createNode animBlendNodeAdditiveDL -n "JNT_Index_Index2_M_translateY_Skin_Test_Anim1";
	rename -uid "387F51D5-4A92-0FAC-5957-F49A2BC8F901";
createNode animBlendNodeAdditiveDL -n "JNT_Index_Index2_M_translateZ_Skin_Test_Anim1";
	rename -uid "5551C7A0-400F-067D-899B-66978BA4BFCE";
	setAttr ".ia" -2.6645352591003757e-15;
	setAttr ".o" -2.6645352591003757e-15;
createNode animBlendNodeAdditiveRotation -n "JNT_Index_Index2_M_rotate_Skin_Test_Anim1";
	rename -uid "64DC5A27-4926-B5E5-33C3-E4BC9AE3BF9D";
createNode animBlendNodeAdditiveScale -n "JNT_Index_Index2_M_scaleX_Skin_Test_Anim1";
	rename -uid "B43301CE-408A-286C-DD17-48A1392656D9";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Index_Index2_M_scaleY_Skin_Test_Anim1";
	rename -uid "846A7BFF-4984-17E2-10A9-DBAB120CBEE2";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Index_Index2_M_scaleZ_Skin_Test_Anim1";
	rename -uid "AFEE2277-45D3-394D-4A1C-EBB9E7B56071";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Index_Index3_M_visibility_Skin_Test_Anim1";
	rename -uid "EB595B43-4AC3-4BEA-1B81-39885B65F3AE";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Index_Index3_M_translateX_Skin_Test_Anim1";
	rename -uid "14A2E469-41D1-DA45-D2DB-3581EA58CF46";
	setAttr ".ia" 2.8248401066068034;
	setAttr ".o" 2.8248401066068034;
createNode animBlendNodeAdditiveDL -n "JNT_Index_Index3_M_translateY_Skin_Test_Anim1";
	rename -uid "B4DA8AE7-40B1-BA81-7C80-BD8E033D8F90";
	setAttr ".ia" 2.8421709430404007e-14;
	setAttr ".o" 2.8421709430404007e-14;
createNode animBlendNodeAdditiveDL -n "JNT_Index_Index3_M_translateZ_Skin_Test_Anim1";
	rename -uid "CAAC4C9F-4ED4-B463-50AF-429C19B5CCEE";
	setAttr ".ia" -4.4408920985006262e-16;
	setAttr ".o" -4.4408920985006262e-16;
createNode animBlendNodeAdditiveRotation -n "JNT_Index_Index3_M_rotate_Skin_Test_Anim1";
	rename -uid "0CDBCEEA-43CD-C011-87A4-1AA06F708897";
createNode animBlendNodeAdditiveScale -n "JNT_Index_Index3_M_scaleX_Skin_Test_Anim1";
	rename -uid "6EC4BADE-4FDB-AEBA-D02A-5F9E53E79866";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Index_Index3_M_scaleY_Skin_Test_Anim1";
	rename -uid "9DBED255-477E-FF5B-CD67-4E92FD224216";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Index_Index3_M_scaleZ_Skin_Test_Anim1";
	rename -uid "A1B6A5EA-4B4A-AD07-6542-48836FF23310";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Index_Index4_M_visibility_Skin_Test_Anim1";
	rename -uid "936CDAF6-4367-C235-CA4D-CBB8843D914C";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Index_Index4_M_translateX_Skin_Test_Anim1";
	rename -uid "57CEB98F-4BDF-C5B9-B6EE-63BCF4FA4B95";
	setAttr ".ia" 3.2332893329224959;
	setAttr ".o" 3.2332893329224959;
createNode animBlendNodeAdditiveDL -n "JNT_Index_Index4_M_translateY_Skin_Test_Anim1";
	rename -uid "529E4047-443D-A549-D717-3DBBA5A96E28";
	setAttr ".ia" -2.8421709430404007e-14;
	setAttr ".o" -2.8421709430404007e-14;
createNode animBlendNodeAdditiveDL -n "JNT_Index_Index4_M_translateZ_Skin_Test_Anim1";
	rename -uid "873E1C77-46D9-28B8-0B64-D1B5F76A06B8";
	setAttr ".ia" -8.8817841970012523e-16;
	setAttr ".o" -8.8817841970012523e-16;
createNode animBlendNodeAdditiveRotation -n "JNT_Index_Index4_M_rotate_Skin_Test_Anim1";
	rename -uid "CEAFABAD-47D9-D454-89FF-BBA1E38844BF";
createNode animBlendNodeAdditiveScale -n "JNT_Index_Index4_M_scaleX_Skin_Test_Anim1";
	rename -uid "4E0CD77D-4C75-CABB-FDFF-5597A79A99F9";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Index_Index4_M_scaleY_Skin_Test_Anim1";
	rename -uid "DE33866D-4399-9642-0CD8-1E9F9F828DED";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Index_Index4_M_scaleZ_Skin_Test_Anim1";
	rename -uid "8D49DEF5-4EB2-4A75-9D3B-2C85A0367C04";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Middle_Middle1_M_visibility_Skin_Test_Anim1";
	rename -uid "ADBCB461-400B-8153-4ED0-97B8F5085806";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Middle_Middle1_M_translateX_Skin_Test_Anim1";
	rename -uid "24E1FC9E-4BAD-3594-033E-09B75143B381";
	setAttr ".ia" 7.9379058083578533;
	setAttr ".o" 7.9379058083578533;
createNode animBlendNodeAdditiveDL -n "JNT_Middle_Middle1_M_translateY_Skin_Test_Anim1";
	rename -uid "35B09416-41A4-772D-679C-F38AF3AF3041";
	setAttr ".ia" 0.70256262781710821;
	setAttr ".o" 0.70256262781710821;
createNode animBlendNodeAdditiveDL -n "JNT_Middle_Middle1_M_translateZ_Skin_Test_Anim1";
	rename -uid "08BA0FD2-44BC-671F-267F-83B8D6BD2825";
	setAttr ".ia" -0.29684972057054893;
	setAttr ".o" -0.29684972057054893;
createNode animBlendNodeAdditiveRotation -n "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim1";
	rename -uid "614A366B-4736-5F07-8268-A09E1D8F4E4A";
createNode animBlendNodeAdditiveScale -n "JNT_Middle_Middle1_M_scaleX_Skin_Test_Anim1";
	rename -uid "B255D604-49B5-9F9A-6BA1-A2976DD0B01E";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Middle_Middle1_M_scaleY_Skin_Test_Anim1";
	rename -uid "20DDCD0B-4E00-274A-0342-12A87EC8C8C8";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Middle_Middle1_M_scaleZ_Skin_Test_Anim1";
	rename -uid "F6A038B6-4B17-730F-FFAD-D69E92657D31";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Middle_Middle2_M_visibility_Skin_Test_Anim1";
	rename -uid "832F85F8-48BA-0D27-7594-E5AD01690BCA";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Middle_Middle2_M_translateX_Skin_Test_Anim1";
	rename -uid "C2DA08B2-4DDC-70A5-A43D-3BB02E7D76D0";
	setAttr ".ia" 3.2775428993820199;
	setAttr ".o" 3.2775428993820199;
createNode animBlendNodeAdditiveDL -n "JNT_Middle_Middle2_M_translateY_Skin_Test_Anim1";
	rename -uid "D9620BAA-4BB5-BF29-3CBE-A4A79737A271";
createNode animBlendNodeAdditiveDL -n "JNT_Middle_Middle2_M_translateZ_Skin_Test_Anim1";
	rename -uid "EC5EEB4B-4010-BB5E-AB0B-42B25718E55B";
	setAttr ".ia" 2.2204460492503131e-16;
	setAttr ".o" 2.2204460492503131e-16;
createNode animBlendNodeAdditiveRotation -n "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim1";
	rename -uid "E08B072C-4635-B4D5-B641-CBA56706EA78";
createNode animBlendNodeAdditiveScale -n "JNT_Middle_Middle2_M_scaleX_Skin_Test_Anim1";
	rename -uid "CDCBF251-4A0B-1E05-9F25-70B42108CAA3";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Middle_Middle2_M_scaleY_Skin_Test_Anim1";
	rename -uid "93888050-4305-889D-76A7-70A1C80909AE";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Middle_Middle2_M_scaleZ_Skin_Test_Anim1";
	rename -uid "13AE1B7E-4A39-72FE-5241-B084EE5771F5";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Middle_Middle3_M_visibility_Skin_Test_Anim1";
	rename -uid "4A5B516E-43F1-B466-0698-4298AF3AAEC3";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Middle_Middle3_M_translateX_Skin_Test_Anim1";
	rename -uid "A9687BA7-4755-BDB1-4B06-BBA94DDBCC47";
	setAttr ".ia" 3.356309532593734;
	setAttr ".o" 3.356309532593734;
createNode animBlendNodeAdditiveDL -n "JNT_Middle_Middle3_M_translateY_Skin_Test_Anim1";
	rename -uid "AF4FA048-4AC9-DE39-5DF1-EDA62576584C";
	setAttr ".ia" -2.8421709430404007e-14;
	setAttr ".o" -2.8421709430404007e-14;
createNode animBlendNodeAdditiveDL -n "JNT_Middle_Middle3_M_translateZ_Skin_Test_Anim1";
	rename -uid "44953463-4FE0-0D4E-6DF7-70A1D4AB9B67";
	setAttr ".ia" -1.1102230246251565e-15;
	setAttr ".o" -1.1102230246251565e-15;
createNode animBlendNodeAdditiveRotation -n "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim1";
	rename -uid "54846587-4135-EB59-5005-BE83A1481B97";
createNode animBlendNodeAdditiveScale -n "JNT_Middle_Middle3_M_scaleX_Skin_Test_Anim1";
	rename -uid "19EEC1D0-4E6B-CF53-743B-9DBDA02F56FF";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Middle_Middle3_M_scaleY_Skin_Test_Anim1";
	rename -uid "5C9CC248-4D72-21E7-2D22-7AAC9D440459";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Middle_Middle3_M_scaleZ_Skin_Test_Anim1";
	rename -uid "18701FB3-4480-4FBD-150F-11822B45A445";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Middle_Middle4_M_visibility_Skin_Test_Anim1";
	rename -uid "439FB70B-47C5-CB09-9C8A-198A9B107A96";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Middle_Middle4_M_translateX_Skin_Test_Anim1";
	rename -uid "9C2C00FE-4ED0-F7AC-DAD2-E481648BF113";
	setAttr ".ia" 3.451004902417985;
	setAttr ".o" 3.451004902417985;
createNode animBlendNodeAdditiveDL -n "JNT_Middle_Middle4_M_translateY_Skin_Test_Anim1";
	rename -uid "9416E1DB-4E8B-774B-5753-D081454DAA9E";
	setAttr ".ia" -2.8421709430404007e-14;
	setAttr ".o" -2.8421709430404007e-14;
createNode animBlendNodeAdditiveDL -n "JNT_Middle_Middle4_M_translateZ_Skin_Test_Anim1";
	rename -uid "A27633F4-4251-D2A0-B1B5-A19DB3D6F63E";
	setAttr ".ia" 8.8817841970012523e-16;
	setAttr ".o" 8.8817841970012523e-16;
createNode animBlendNodeAdditiveRotation -n "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim1";
	rename -uid "24500D3E-425D-34F3-5945-4D87DBD62B1D";
createNode animBlendNodeAdditiveScale -n "JNT_Middle_Middle4_M_scaleX_Skin_Test_Anim1";
	rename -uid "9A27A674-4334-E326-3351-52AC8A350D1E";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Middle_Middle4_M_scaleY_Skin_Test_Anim1";
	rename -uid "FF072B6B-4F9D-7EBA-A95E-6985E5FD2D6A";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Middle_Middle4_M_scaleZ_Skin_Test_Anim1";
	rename -uid "5CC7E4B1-4441-5040-D3F5-728919389F00";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Pinkie_Pinkey1_M_visibility_Skin_Test_Anim1";
	rename -uid "953F9ADC-454B-8742-2AA0-228B138F6FFF";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Pinkie_Pinkey1_M_translateX_Skin_Test_Anim1";
	rename -uid "49F9844E-429B-C1C3-5670-F6A6FB7130BB";
	setAttr ".ia" 7.2965411030324745;
	setAttr ".o" 7.2965411030324745;
createNode animBlendNodeAdditiveDL -n "JNT_Pinkie_Pinkey1_M_translateY_Skin_Test_Anim1";
	rename -uid "E9AD0100-415A-FC4C-9D55-F49E3FA42BCD";
	setAttr ".ia" 0.40936099840923879;
	setAttr ".o" 0.40936099840923879;
createNode animBlendNodeAdditiveDL -n "JNT_Pinkie_Pinkey1_M_translateZ_Skin_Test_Anim1";
	rename -uid "23FFD841-45EB-BBF0-468A-358E5452969E";
	setAttr ".ia" -4.6085328294878325;
	setAttr ".o" -4.6085328294878325;
createNode animBlendNodeAdditiveRotation -n "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim1";
	rename -uid "393601A5-4B9D-FDFA-23E5-C28D7B767E76";
createNode animBlendNodeAdditiveScale -n "JNT_Pinkie_Pinkey1_M_scaleX_Skin_Test_Anim1";
	rename -uid "CE4D6958-4D31-0CBD-D27C-1C92A9B09746";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Pinkie_Pinkey1_M_scaleY_Skin_Test_Anim1";
	rename -uid "6CD56CA2-4128-B8FE-DD9B-E3A2A2B36EB0";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Pinkie_Pinkey1_M_scaleZ_Skin_Test_Anim1";
	rename -uid "AAC16BF2-4E9E-ED00-B4D7-7B8422D14402";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Pinkie_Pinkey2_M_visibility_Skin_Test_Anim1";
	rename -uid "4E10BE44-4F6E-6FB3-A98B-56AEF82B1320";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Pinkie_Pinkey2_M_translateX_Skin_Test_Anim1";
	rename -uid "5B12DCF5-4002-E584-59F0-31B00292980B";
	setAttr ".ia" 2.2858601897864261;
	setAttr ".o" 2.2858601897864261;
createNode animBlendNodeAdditiveDL -n "JNT_Pinkie_Pinkey2_M_translateY_Skin_Test_Anim1";
	rename -uid "D462BCB6-4CFA-7FF1-4265-DB8C28575023";
	setAttr ".ia" 5.6843418860808015e-14;
	setAttr ".o" 5.6843418860808015e-14;
createNode animBlendNodeAdditiveDL -n "JNT_Pinkie_Pinkey2_M_translateZ_Skin_Test_Anim1";
	rename -uid "C5F06EF0-4DCB-7DC4-F2BE-9DB29301C7A4";
	setAttr ".ia" -1.7763568394002505e-15;
	setAttr ".o" -1.7763568394002505e-15;
createNode animBlendNodeAdditiveRotation -n "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim1";
	rename -uid "55A90FB2-477B-5EB9-A1D7-EC867AD157B8";
createNode animBlendNodeAdditiveScale -n "JNT_Pinkie_Pinkey2_M_scaleX_Skin_Test_Anim1";
	rename -uid "D60B13E4-4043-8CE0-5C9B-F3B4D0B6794E";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Pinkie_Pinkey2_M_scaleY_Skin_Test_Anim1";
	rename -uid "A120A5BC-4F42-1463-C0CD-B0BF87533FC1";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Pinkie_Pinkey2_M_scaleZ_Skin_Test_Anim1";
	rename -uid "6267A997-4975-55F7-AB82-0595FB3A7005";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Pinkie_Pinkey3_M_visibility_Skin_Test_Anim1";
	rename -uid "A34E6D5A-437F-97BA-B0F5-C9811D5B40C0";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Pinkie_Pinkey3_M_translateX_Skin_Test_Anim1";
	rename -uid "C48B74D6-43FA-59AE-192C-909971FB0209";
	setAttr ".ia" 2.4760630189721891;
	setAttr ".o" 2.4760630189721891;
createNode animBlendNodeAdditiveDL -n "JNT_Pinkie_Pinkey3_M_translateY_Skin_Test_Anim1";
	rename -uid "EE00558D-41C9-8F8B-9426-C9B04B3B9FC6";
	setAttr ".ia" 2.8421709430404007e-14;
	setAttr ".o" 2.8421709430404007e-14;
createNode animBlendNodeAdditiveDL -n "JNT_Pinkie_Pinkey3_M_translateZ_Skin_Test_Anim1";
	rename -uid "0D282DFF-4D05-969A-5A92-02B8EBB32B75";
	setAttr ".ia" 8.8817841970012523e-16;
	setAttr ".o" 8.8817841970012523e-16;
createNode animBlendNodeAdditiveRotation -n "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim1";
	rename -uid "75BA2DD2-4528-DD29-3218-09878A26E644";
createNode animBlendNodeAdditiveScale -n "JNT_Pinkie_Pinkey3_M_scaleX_Skin_Test_Anim1";
	rename -uid "2D1926AC-4829-F2C0-B845-1284DB8FC55E";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Pinkie_Pinkey3_M_scaleY_Skin_Test_Anim1";
	rename -uid "61A4AD06-4594-BA43-6D7A-52828F08746B";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Pinkie_Pinkey3_M_scaleZ_Skin_Test_Anim1";
	rename -uid "957E258A-4CEC-0980-BEF9-638687F9F42D";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Pinkie_Pinkey4_M_visibility_Skin_Test_Anim1";
	rename -uid "7FF52609-4E45-2299-BEEF-8A9A22129200";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Pinkie_Pinkey4_M_translateX_Skin_Test_Anim1";
	rename -uid "F911AF06-4BEA-B524-82BC-359D6B4C545B";
	setAttr ".ia" 2.1354158919624879;
	setAttr ".o" 2.1354158919624879;
createNode animBlendNodeAdditiveDL -n "JNT_Pinkie_Pinkey4_M_translateY_Skin_Test_Anim1";
	rename -uid "5FDA6EC2-42A2-9502-F733-D2B26E1D900B";
	setAttr ".ia" 2.8421709430404007e-14;
	setAttr ".o" 2.8421709430404007e-14;
createNode animBlendNodeAdditiveDL -n "JNT_Pinkie_Pinkey4_M_translateZ_Skin_Test_Anim1";
	rename -uid "E337D3A1-42B8-3C75-C6A9-C6BF57D91D36";
	setAttr ".ia" 2.2204460492503131e-15;
	setAttr ".o" 2.2204460492503131e-15;
createNode animBlendNodeAdditiveRotation -n "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim1";
	rename -uid "29C28175-43B3-5504-1D37-1D8C28D1D074";
createNode animBlendNodeAdditiveScale -n "JNT_Pinkie_Pinkey4_M_scaleX_Skin_Test_Anim1";
	rename -uid "382944CC-46ED-CA6F-C9C0-36AEB2A4CFF8";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Pinkie_Pinkey4_M_scaleY_Skin_Test_Anim1";
	rename -uid "865C03AB-4AD4-16DC-ECF2-C6849488C311";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Pinkie_Pinkey4_M_scaleZ_Skin_Test_Anim1";
	rename -uid "0382BE90-477D-29F9-682B-A89ADA947D3C";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Ring_Ring1_M_visibility_Skin_Test_Anim1";
	rename -uid "A99DA370-4F98-F3FB-EEB4-7B9C53DF8347";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Ring_Ring1_M_translateX_Skin_Test_Anim1";
	rename -uid "2A8ACE4B-4BEA-6ABF-54EB-F6B5CD03759F";
	setAttr ".ia" 7.8190365685399517;
	setAttr ".o" 7.8190365685399517;
createNode animBlendNodeAdditiveDL -n "JNT_Ring_Ring1_M_translateY_Skin_Test_Anim1";
	rename -uid "57F6A613-4827-A712-FE04-AEAA1E8A3767";
	setAttr ".ia" 0.52916697249288736;
	setAttr ".o" 0.52916697249288736;
createNode animBlendNodeAdditiveDL -n "JNT_Ring_Ring1_M_translateZ_Skin_Test_Anim1";
	rename -uid "ED9CC624-4BA8-0D6B-3601-0386CADD8DDB";
	setAttr ".ia" -2.7118128374972352;
	setAttr ".o" -2.7118128374972352;
createNode animBlendNodeAdditiveRotation -n "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim1";
	rename -uid "0F4349E7-44E4-7724-99E5-E0B242897519";
createNode animBlendNodeAdditiveScale -n "JNT_Ring_Ring1_M_scaleX_Skin_Test_Anim1";
	rename -uid "0F7A0746-46AE-C0EB-102C-6FB5BF2285C5";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Ring_Ring1_M_scaleY_Skin_Test_Anim1";
	rename -uid "204F1A73-4449-07B8-7F23-2786E44D1218";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Ring_Ring1_M_scaleZ_Skin_Test_Anim1";
	rename -uid "4B6FDE6A-40A9-9320-55D4-DB97A4F58B0A";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Ring_Ring2_M_visibility_Skin_Test_Anim1";
	rename -uid "EE905F01-4066-5F85-1128-7C90D3EF2132";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Ring_Ring2_M_translateX_Skin_Test_Anim1";
	rename -uid "3254D644-4F80-9287-FD9A-C79B67DCA96B";
	setAttr ".ia" 2.6470511256765832;
	setAttr ".o" 2.6470511256765832;
createNode animBlendNodeAdditiveDL -n "JNT_Ring_Ring2_M_translateY_Skin_Test_Anim1";
	rename -uid "364786F3-4383-97F4-99A7-5B90DDF821FE";
	setAttr ".ia" 2.8421709430404007e-14;
	setAttr ".o" 2.8421709430404007e-14;
createNode animBlendNodeAdditiveDL -n "JNT_Ring_Ring2_M_translateZ_Skin_Test_Anim1";
	rename -uid "4B6A36A1-4501-3E79-4466-B9910265AB50";
createNode animBlendNodeAdditiveRotation -n "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim1";
	rename -uid "6B3567C8-4434-754D-A31A-B69B501B92EB";
createNode animBlendNodeAdditiveScale -n "JNT_Ring_Ring2_M_scaleX_Skin_Test_Anim1";
	rename -uid "CC50E0EA-4038-644D-4E78-BB9AB5FDCEFF";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Ring_Ring2_M_scaleY_Skin_Test_Anim1";
	rename -uid "F4020EB9-44B1-2597-D3C4-559A6339E551";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Ring_Ring2_M_scaleZ_Skin_Test_Anim1";
	rename -uid "B27BE3C7-46D0-AC5D-465D-AC913E925476";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Ring_Ring3_M_visibility_Skin_Test_Anim1";
	rename -uid "9A8A7765-4988-372A-772D-CCBF52002F1F";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Ring_Ring3_M_translateX_Skin_Test_Anim1";
	rename -uid "3DD4DA3C-444A-D086-57D4-29ABFE2C735D";
	setAttr ".ia" 2.9147340994338968;
	setAttr ".o" 2.9147340994338968;
createNode animBlendNodeAdditiveDL -n "JNT_Ring_Ring3_M_translateY_Skin_Test_Anim1";
	rename -uid "1DA8D688-48F7-0F58-2862-CBAB024F5AB8";
createNode animBlendNodeAdditiveDL -n "JNT_Ring_Ring3_M_translateZ_Skin_Test_Anim1";
	rename -uid "0A069E5C-46E2-C881-4F4B-E2B54E0936AF";
	setAttr ".ia" -8.8817841970012523e-16;
	setAttr ".o" -8.8817841970012523e-16;
createNode animBlendNodeAdditiveRotation -n "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim1";
	rename -uid "3B8BC45D-4193-7BB5-2911-489A95EEA45E";
createNode animBlendNodeAdditiveScale -n "JNT_Ring_Ring3_M_scaleX_Skin_Test_Anim1";
	rename -uid "2BD200E2-4B18-502B-9D23-358FBEA27D7F";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Ring_Ring3_M_scaleY_Skin_Test_Anim1";
	rename -uid "5021F105-4D4B-420B-3BA5-80ACA7BB30A2";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Ring_Ring3_M_scaleZ_Skin_Test_Anim1";
	rename -uid "E91F8925-4B3F-0C5F-4706-32AE3FAC565F";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Ring_Ring4_M_visibility_Skin_Test_Anim1";
	rename -uid "949A4C1E-48D0-2906-0A1A-288350454E5D";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Ring_Ring4_M_translateX_Skin_Test_Anim1";
	rename -uid "A90D3604-480A-A766-145F-7EBCDB39620D";
	setAttr ".ia" 3.7421843699642601;
	setAttr ".o" 3.7421843699642601;
createNode animBlendNodeAdditiveDL -n "JNT_Ring_Ring4_M_translateY_Skin_Test_Anim1";
	rename -uid "83AC27A2-469A-60D7-38A0-ED8B81102289";
createNode animBlendNodeAdditiveDL -n "JNT_Ring_Ring4_M_translateZ_Skin_Test_Anim1";
	rename -uid "C0132F2A-4BD6-258D-91E5-72A42846AF4E";
	setAttr ".ia" -1.7763568394002505e-15;
	setAttr ".o" -1.7763568394002505e-15;
createNode animBlendNodeAdditiveRotation -n "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim1";
	rename -uid "8C52B919-4057-BE42-70EF-2B8F47ECCA40";
createNode animBlendNodeAdditiveScale -n "JNT_Ring_Ring4_M_scaleX_Skin_Test_Anim1";
	rename -uid "18861D33-4D16-1114-612B-378DF0333677";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Ring_Ring4_M_scaleY_Skin_Test_Anim1";
	rename -uid "96C45ED9-4A53-BED5-0B6A-BB9DFF6CAC70";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Ring_Ring4_M_scaleZ_Skin_Test_Anim1";
	rename -uid "9E643B50-469F-74A7-EF48-938EB5025A9E";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Thumb_Thumb1_M_visibility_Skin_Test_Anim1";
	rename -uid "1CF648C5-4E0A-7257-C0E4-34BD005113F7";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Thumb_Thumb1_M_translateX_Skin_Test_Anim1";
	rename -uid "F394E583-4FDD-3FC3-017B-A3AD60E64F2A";
	setAttr ".ia" 2.6690456837124401;
	setAttr ".o" 2.6690456837124401;
createNode animBlendNodeAdditiveDL -n "JNT_Thumb_Thumb1_M_translateY_Skin_Test_Anim1";
	rename -uid "E0E80551-4B18-9AAE-6F8A-FDB9F4DFCDD4";
	setAttr ".ia" -1.731296843712073;
	setAttr ".o" -1.731296843712073;
createNode animBlendNodeAdditiveDL -n "JNT_Thumb_Thumb1_M_translateZ_Skin_Test_Anim1";
	rename -uid "AD889551-4F5E-B4E3-20F9-D09DB2EFE148";
	setAttr ".ia" 1.7853067906047153;
	setAttr ".o" 1.7853067906047153;
createNode animBlendNodeAdditiveRotation -n "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim1";
	rename -uid "610123EA-44BC-821A-D452-76A2031CD951";
createNode animBlendNodeAdditiveScale -n "JNT_Thumb_Thumb1_M_scaleX_Skin_Test_Anim1";
	rename -uid "7785C122-4340-9D8B-C530-3483B8C35D90";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Thumb_Thumb1_M_scaleY_Skin_Test_Anim1";
	rename -uid "C82C6E56-49DC-EDF7-2BFE-F2B32EACC61F";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Thumb_Thumb1_M_scaleZ_Skin_Test_Anim1";
	rename -uid "E449225F-4F96-D0BA-623B-0ABA5530641A";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Thumb_Thumb2_M_visibility_Skin_Test_Anim1";
	rename -uid "531B2BF5-4A23-C328-B725-15A29D36EF85";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Thumb_Thumb2_M_translateX_Skin_Test_Anim1";
	rename -uid "D5AC297D-4BFB-2377-983A-44811BC8C90D";
	setAttr ".ia" 3.2816682663097581;
	setAttr ".o" 3.2816682663097581;
createNode animBlendNodeAdditiveDL -n "JNT_Thumb_Thumb2_M_translateY_Skin_Test_Anim1";
	rename -uid "4580BF3D-40BC-78E7-4F61-79AF24EEE21D";
	setAttr ".ia" -1.0658141036401503e-14;
	setAttr ".o" -1.0658141036401503e-14;
createNode animBlendNodeAdditiveDL -n "JNT_Thumb_Thumb2_M_translateZ_Skin_Test_Anim1";
	rename -uid "24FAF5EB-403C-141B-AB0C-D198DC7F2E17";
createNode animBlendNodeAdditiveRotation -n "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim1";
	rename -uid "07DA5D34-4391-4A79-4005-CC9FBD6391A6";
createNode animBlendNodeAdditiveScale -n "JNT_Thumb_Thumb2_M_scaleX_Skin_Test_Anim1";
	rename -uid "194219C8-423B-9274-5E83-4D84747B88AD";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Thumb_Thumb2_M_scaleY_Skin_Test_Anim1";
	rename -uid "F5C17B39-4909-57D0-70BF-4897BC13A361";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Thumb_Thumb2_M_scaleZ_Skin_Test_Anim1";
	rename -uid "57D0B968-42A1-A3B5-396B-D49DC79FB94D";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Thumb_Thumb3_M_visibility_Skin_Test_Anim1";
	rename -uid "58F11AC2-4D89-6BFC-72A4-949943ADEEE7";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Thumb_Thumb3_M_translateX_Skin_Test_Anim1";
	rename -uid "F44A6CBE-469E-E983-5777-F7A7ADF0B0D2";
	setAttr ".ia" 4.0292311701752439;
	setAttr ".o" 4.0292311701752439;
createNode animBlendNodeAdditiveDL -n "JNT_Thumb_Thumb3_M_translateY_Skin_Test_Anim1";
	rename -uid "013B9296-4608-6FFE-9913-F0AC8C036603";
	setAttr ".ia" -7.1054273576010019e-15;
	setAttr ".o" -7.1054273576010019e-15;
createNode animBlendNodeAdditiveDL -n "JNT_Thumb_Thumb3_M_translateZ_Skin_Test_Anim1";
	rename -uid "79BE2386-42F8-8777-FE5E-CC84933935B0";
createNode animBlendNodeAdditiveRotation -n "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim1";
	rename -uid "3983247A-4C5E-B88A-91CD-1DB484514D15";
createNode animBlendNodeAdditiveScale -n "JNT_Thumb_Thumb3_M_scaleX_Skin_Test_Anim1";
	rename -uid "F1068AEF-4740-B30E-73B5-C0BF26685F19";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Thumb_Thumb3_M_scaleY_Skin_Test_Anim1";
	rename -uid "BA4F9C85-49E3-65FD-1BCB-2B840161CBC7";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Thumb_Thumb3_M_scaleZ_Skin_Test_Anim1";
	rename -uid "2D7D6FA7-4B4F-AE8C-E650-F78E1EAAB115";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_Thumb_Thumb4_M_visibility_Skin_Test_Anim1";
	rename -uid "B60CACFE-4A3C-666B-3DB9-EA82FCD0BEC6";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_Thumb_Thumb4_M_translateX_Skin_Test_Anim1";
	rename -uid "E43826B5-4A14-C545-435C-3296262175D2";
	setAttr ".ia" 2.8346696655482475;
	setAttr ".o" 2.8346696655482475;
createNode animBlendNodeAdditiveDL -n "JNT_Thumb_Thumb4_M_translateY_Skin_Test_Anim1";
	rename -uid "4C1FB199-4139-B167-C379-409736F5609C";
createNode animBlendNodeAdditiveDL -n "JNT_Thumb_Thumb4_M_translateZ_Skin_Test_Anim1";
	rename -uid "181754CA-49AF-CEE1-326D-DEB376BF5B25";
	setAttr ".ia" -2.8421709430404007e-14;
	setAttr ".o" -2.8421709430404007e-14;
createNode animBlendNodeAdditiveRotation -n "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim1";
	rename -uid "EF284CBB-4D1B-062C-AD34-2DA9C4870108";
createNode animBlendNodeAdditiveScale -n "JNT_Thumb_Thumb4_M_scaleX_Skin_Test_Anim1";
	rename -uid "EE172A78-4917-ABEB-5034-8F94E5E0A0B5";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Thumb_Thumb4_M_scaleY_Skin_Test_Anim1";
	rename -uid "848C244C-4DF3-8EFF-6506-C9849BECF758";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_Thumb_Thumb4_M_scaleZ_Skin_Test_Anim1";
	rename -uid "57A19ECC-4E4B-4510-6EE7-E69379DBF0E2";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_ForearmTwist_ForearmTwist1_M_visibility_Skin_Test_Anim1";
	rename -uid "52146546-4A9C-16B9-6C53-E38CA292B3B9";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_ForearmTwist_ForearmTwist1_M_translateX_Skin_Test_Anim1";
	rename -uid "A32BEC4C-41B8-BB21-C400-5087023D7300";
	setAttr ".ia" 8.700292705433327;
	setAttr ".o" 8.700292705433327;
createNode animBlendNodeAdditiveDL -n "JNT_ForearmTwist_ForearmTwist1_M_translateY_Skin_Test_Anim1";
	rename -uid "098E7DB6-4273-6D0C-B79E-2BB9FAC65811";
createNode animBlendNodeAdditiveDL -n "JNT_ForearmTwist_ForearmTwist1_M_translateZ_Skin_Test_Anim1";
	rename -uid "6DA88720-42A5-98C4-9ED3-6098F792012D";
	setAttr ".ia" -8.8817841970012523e-16;
	setAttr ".o" -8.8817841970012523e-16;
createNode animBlendNodeAdditiveRotation -n "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim1";
	rename -uid "DB375940-49D5-2003-15B9-138623267C9E";
createNode animBlendNodeAdditiveScale -n "JNT_ForearmTwist_ForearmTwist1_M_scaleX_Skin_Test_Anim1";
	rename -uid "9DDF23A2-44E1-5A27-4C09-F381BE14EB75";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_ForearmTwist_ForearmTwist1_M_scaleY_Skin_Test_Anim1";
	rename -uid "A4968385-445B-039E-C4DC-238D509CE6B5";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_ForearmTwist_ForearmTwist1_M_scaleZ_Skin_Test_Anim1";
	rename -uid "FA253307-4D35-F284-0B5F-64B80E6D4639";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_ForearmTwist_ForearmTwist2_M_visibility_Skin_Test_Anim1";
	rename -uid "D56860F7-4F79-2755-B8DA-74A7D89AFAA2";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_ForearmTwist_ForearmTwist2_M_translateX_Skin_Test_Anim1";
	rename -uid "4568E9B6-4D85-B47F-44E5-D38BE0306FB5";
	setAttr ".ia" 16.28114869182432;
	setAttr ".o" 16.28114869182432;
createNode animBlendNodeAdditiveDL -n "JNT_ForearmTwist_ForearmTwist2_M_translateY_Skin_Test_Anim1";
	rename -uid "4F8AC7C2-48C0-0DBE-4550-E4909B1C00ED";
createNode animBlendNodeAdditiveDL -n "JNT_ForearmTwist_ForearmTwist2_M_translateZ_Skin_Test_Anim1";
	rename -uid "E5416039-4F46-4245-8C60-07ADD0D8C5D2";
	setAttr ".ia" -8.8817841970012523e-16;
	setAttr ".o" -8.8817841970012523e-16;
createNode animBlendNodeAdditiveRotation -n "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim1";
	rename -uid "68D68127-4005-8A37-584C-B59B36CE5C45";
createNode animBlendNodeAdditiveScale -n "JNT_ForearmTwist_ForearmTwist2_M_scaleX_Skin_Test_Anim1";
	rename -uid "C37DF1E3-496B-AFB3-5DFE-D3B3011B3B39";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_ForearmTwist_ForearmTwist2_M_scaleY_Skin_Test_Anim1";
	rename -uid "5A19BBF0-4731-61A6-B725-5EB7C63F7677";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_ForearmTwist_ForearmTwist2_M_scaleZ_Skin_Test_Anim1";
	rename -uid "360E180C-4E9C-01A5-531A-DE812635076A";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "JNT_BicepTwist_BicepTwist_M_visibility_Skin_Test_Anim1";
	rename -uid "663C6679-4BEC-4842-11B8-CA9E6C2A442D";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "JNT_BicepTwist_BicepTwist_M_translateX_Skin_Test_Anim1";
	rename -uid "7E15E1E5-4101-C877-03D2-5DAB1A43155E";
	setAttr ".ia" 12.274168772767116;
	setAttr ".o" 12.274168772767116;
createNode animBlendNodeAdditiveDL -n "JNT_BicepTwist_BicepTwist_M_translateY_Skin_Test_Anim1";
	rename -uid "C2923C32-4E20-59FF-7CB7-459BA83983BF";
	setAttr ".ia" 1.3482982141919863e-06;
	setAttr ".o" 1.3482982141919863e-06;
createNode animBlendNodeAdditiveDL -n "JNT_BicepTwist_BicepTwist_M_translateZ_Skin_Test_Anim1";
	rename -uid "F9948C43-4B70-B273-B949-11943C8CE1DD";
	setAttr ".ia" -7.0644878835679492e-14;
	setAttr ".o" -7.0644878835679492e-14;
createNode animBlendNodeAdditiveRotation -n "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim1";
	rename -uid "854C93D2-49B1-6DF4-F292-7A87D477132C";
createNode animBlendNodeAdditiveScale -n "JNT_BicepTwist_BicepTwist_M_scaleX_Skin_Test_Anim1";
	rename -uid "1151B722-4D3D-015C-A69C-DA94FB735068";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_BicepTwist_BicepTwist_M_scaleY_Skin_Test_Anim1";
	rename -uid "C3851C59-495E-E348-F008-94A55DE3D834";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "JNT_BicepTwist_BicepTwist_M_scaleZ_Skin_Test_Anim1";
	rename -uid "E21D2CA6-4B55-4A04-A3FB-BA9E2E805EF3";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animCurveTA -n "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim1_inputBX";
	rename -uid "E05A8A9D-412A-92C8-4336-40A95E10C91A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 4 0 10 0 13 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim1_inputBY";
	rename -uid "3B8FCD8E-41DC-709E-AFD7-6492BEE81E43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  13 0 16 0 22 0 25 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim1_inputBZ";
	rename -uid "DFA015E7-4CEF-2619-DCB3-BDA056119A20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  25 0 28 0 34 0 37 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim1_inputBX";
	rename -uid "AFBB7C47-444D-F324-C09B-DE81B4667909";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  38 0 41 0 47 0 50 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim1_inputBY";
	rename -uid "B8250169-4ABE-0D04-7617-5DBB9016CCDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  50 0 53 0 59 0 62 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim1_inputBZ";
	rename -uid "E7E268BF-421C-01EB-7389-F09A5D0382EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  62 0 65 0 71 0 74 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim1_inputBX";
	rename -uid "E2794B93-4703-4F6E-63F9-F2B36702AEA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  75 0 78 0 84 0 87 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim1_inputBY";
	rename -uid "988C9D2D-478A-E451-FF34-D6B4E6803F5B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  87 0 90 0 96 0 99 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim1_inputBZ";
	rename -uid "F7ECE159-447E-F6D2-8473-8CA46629C17D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  99 0 102 0 108 0 111 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim1_inputBX";
	rename -uid "9E7F9DDA-4A85-E0B6-2C8B-8D812BD232E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  112 0 115 0 121 0 124 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim1_inputBY";
	rename -uid "2E1D9683-4A9D-16CA-3D5E-B692084AA965";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  124 0 127 0 133 0 136 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim1_inputBZ";
	rename -uid "A248EDDA-4747-A38E-F24E-0EB1E180C98D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  136 0 139 0 145 0 148 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Index_Index1_M_rotate_Skin_Test_Anim1_inputBX";
	rename -uid "34C630B5-47C4-7C85-5554-909E02519B7C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  149 0 152 0 158 0 161 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Index_Index1_M_rotate_Skin_Test_Anim1_inputBY";
	rename -uid "B82BE2B0-4651-808F-7D54-60BA904DC9BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  161 0 164 0 170 0 173 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Index_Index1_M_rotate_Skin_Test_Anim1_inputBZ";
	rename -uid "1E8A2614-424D-0C27-47CA-BF94D4526CD6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  173 0 176 0 182 0 185 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Index_Index2_M_rotate_Skin_Test_Anim1_inputBX";
	rename -uid "271CDD10-46CA-03FB-D158-C2A92B16054C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  186 0 189 0 195 0 198 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Index_Index2_M_rotate_Skin_Test_Anim1_inputBY";
	rename -uid "31F5E150-4577-D206-22D6-9486E84968EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  198 0 201 0 207 0 210 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Index_Index2_M_rotate_Skin_Test_Anim1_inputBZ";
	rename -uid "1928A697-451B-C420-3C7F-6F80F972D7F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  210 0 213 0 219 0 222 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Index_Index3_M_rotate_Skin_Test_Anim1_inputBX";
	rename -uid "42642E5C-42E2-1290-39C2-FC8B2693865D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  223 0 226 0 232 0 235 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Index_Index3_M_rotate_Skin_Test_Anim1_inputBY";
	rename -uid "BF4040F8-43E7-6C40-7DC0-599F517C762A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  235 0 238 0 244 0 247 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Index_Index3_M_rotate_Skin_Test_Anim1_inputBZ";
	rename -uid "3D2DA887-48FD-C879-29FB-EAA6103D94AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  247 0 250 0 256 0 259 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Index_Index4_M_rotate_Skin_Test_Anim1_inputBX";
	rename -uid "4287AE36-45A6-6A07-E87E-3A82717C1860";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  260 0 263 0 269 0 272 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Index_Index4_M_rotate_Skin_Test_Anim1_inputBY";
	rename -uid "A1027D73-411A-3F12-389B-82A2D4539841";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  272 0 275 0 281 0 284 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Index_Index4_M_rotate_Skin_Test_Anim1_inputBZ";
	rename -uid "19C609C4-4FED-AD8A-3E0F-4A8D2763FD6C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  284 0 287 0 293 0 296 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim1_inputBX";
	rename -uid "2396F9C0-4FB6-821B-762F-588F9F833BD4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  297 0 300 0 306 0 309 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim1_inputBY";
	rename -uid "C3F27542-4DAF-3617-D076-958215FC8756";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  309 0 312 0 318 0 321 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim1_inputBZ";
	rename -uid "FA732792-49C0-69DC-715F-9295884AAA6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  321 0 324 0 330 0 333 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim1_inputBX";
	rename -uid "C73FBA34-40EE-4980-AC27-48BD541287FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  334 0 337 0 343 0 346 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim1_inputBY";
	rename -uid "EAB82A7B-493A-F80E-72B5-0880B73E1EDA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  346 0 349 0 355 0 358 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim1_inputBZ";
	rename -uid "ABABD375-48B5-EE84-7501-35BA979D85C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  358 0 361 0 367 0 370 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim1_inputBX";
	rename -uid "F0C1880A-4253-58B5-B6B8-1C85BDB190FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  371 0 374 0 380 0 383 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim1_inputBY";
	rename -uid "6ACE05AA-4689-DF81-897E-C68B6799E07B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  383 0 386 0 392 0 395 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim1_inputBZ";
	rename -uid "D4FAA110-4F06-2F03-BAE1-C38421D03E51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  395 0 398 0 404 0 407 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim1_inputBX";
	rename -uid "1D05FC17-4D79-B0E2-CCAF-D293536024D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  408 0 411 0 417 0 420 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim1_inputBY";
	rename -uid "DC2E1706-466E-C571-00B9-588774352611";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  420 0 423 0 429 0 432 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim1_inputBZ";
	rename -uid "A7CC09F8-4086-0F4B-DCF2-B7A21B40A35C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  432 0 435 0 441 0 444 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim1_inputBX";
	rename -uid "5F6D3D1C-4ABD-3D7A-208D-65A127EED0CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  445 0 448 0 454 0 457 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim1_inputBY";
	rename -uid "27A242F3-4AC2-C60B-E0F0-14AC65099F48";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  457 0 460 0 466 0 469 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim1_inputBZ";
	rename -uid "87787896-4302-6194-29EF-E0B27C9D3A3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  469 0 472 0 478 0 481 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim1_inputBX";
	rename -uid "75EBA344-4351-E276-8DDB-15B045FD5B45";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  482 0 485 0 491 0 494 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim1_inputBY";
	rename -uid "F2F145A9-4B09-27EF-9EDF-EDA5058C08E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  494 0 497 0 503 0 506 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim1_inputBZ";
	rename -uid "726B688A-4996-50F3-D244-B0B2D7BED316";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  506 0 509 0 515 0 518 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim1_inputBX";
	rename -uid "396A9D69-4628-6484-488B-6EBC6525171D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  519 0 522 0 528 0 531 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim1_inputBY";
	rename -uid "C94E3878-4C8E-DDC9-A180-8793615758FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  531 0 534 0 540 0 543 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim1_inputBZ";
	rename -uid "080BDEB3-4704-0CDB-4D22-D08555B1449B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  543 0 546 0 552 0 555 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim1_inputBX";
	rename -uid "B2AA21B8-48AF-8F14-3298-C2999715E694";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  556 0 559 0 565 0 568 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim1_inputBY";
	rename -uid "893CA961-4F32-E4DE-6149-3FBEB80AF45A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  568 0 571 0 577 0 580 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim1_inputBZ";
	rename -uid "A0050F48-43BF-0F77-1D25-EA94A36705DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  580 0 583 0 589 0 592 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim1_inputBX";
	rename -uid "4A2E2F8F-461F-F008-B526-3D951A861137";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  593 0 596 0 602 0 605 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim1_inputBY";
	rename -uid "509E2F45-430A-7CE0-08D6-36895E03D0A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  605 0 608 0 614 0 617 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim1_inputBZ";
	rename -uid "D31F1517-40C4-D70F-695A-9C894D90A0DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  617 0 620 0 626 0 629 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim1_inputBX";
	rename -uid "062D0B9E-4D87-6413-6CF7-84AB0132954B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  630 0 633 0 639 0 642 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim1_inputBY";
	rename -uid "5E7139E4-465A-C7A1-9E9C-B6ADA2A1488E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  642 0 645 0 651 0 654 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim1_inputBZ";
	rename -uid "DC91F290-4A18-B8A2-E86C-CEB2511B2BE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  654 0 657 0 663 0 666 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim1_inputBX";
	rename -uid "A201E9EC-49E4-7515-6465-A6884720743A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  667 0 670 0 676 0 679 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim1_inputBY";
	rename -uid "FDB84191-4FCF-2BAB-6CCE-C0A144235EB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  679 0 682 0 688 0 691 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim1_inputBZ";
	rename -uid "2BECF715-447B-0F49-F57A-15A7AADB011A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  691 0 694 0 700 0 703 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim1_inputBX";
	rename -uid "6054483B-4AB8-92F6-43A0-0C8F8F580DB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  704 0 707 0 713 0 716 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim1_inputBY";
	rename -uid "70E14528-4C41-9BBC-BCFA-A5A88D0A8AB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  716 0 719 0 725 0 728 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim1_inputBZ";
	rename -uid "6D846761-4E5F-EE93-B41A-49ACA97E8AAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  728 0 731 0 737 0 740 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim1_inputBX";
	rename -uid "D56138BE-4F4E-A040-B5C0-BCB9465D3F39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  741 0 744 0 750 0 753 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim1_inputBY";
	rename -uid "07069722-4970-E0C3-BA0A-359EC7F2593A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  753 0 756 0 762 0 765 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim1_inputBZ";
	rename -uid "F734BAA9-4817-DCFD-5FC3-F59C10A19B7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  765 0 768 0 774 0 777 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim1_inputBX";
	rename -uid "1EC00D70-4381-3F97-048F-E4B5EB523D54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  778 0 781 0 787 0 790 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim1_inputBY";
	rename -uid "4098ADE9-487E-2D61-B449-FEA619B79CE2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  790 0 793 0 799 0 802 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim1_inputBZ";
	rename -uid "B921AAEB-41D6-7314-D8C7-19878B2B7EDB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  802 0 805 0 811 0 814 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim1_inputBX";
	rename -uid "AA6266C9-40DC-3845-9783-5C8139CABF38";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  815 0 818 0 824 0 827 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim1_inputBY";
	rename -uid "9E924DCA-4FBE-6D65-C3D0-18AA3B09E5C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  827 0 830 0 836 0 839 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim1_inputBZ";
	rename -uid "3EF34D4D-47C0-8A49-C465-D290A9346F20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  839 0 842 0 848 0 851 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim1_inputBX";
	rename -uid "DAACD471-4BCE-0079-D00D-B8A0C10F3CF9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  852 0 855 0 861 0 864 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim1_inputBY";
	rename -uid "D668A450-4F6A-A0AE-20A4-1BAA9FD56D12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  864 0 867 0 873 0 876 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim1_inputBZ";
	rename -uid "8D17FE33-4EB7-E7F9-6D4F-F8AAA27B01E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  876 0 879 0 885 0 888 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim1_inputBX";
	rename -uid "335001E0-4F46-C661-B50C-E1A10BB2F81D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  889 0 892 0 898 0 901 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim1_inputBY";
	rename -uid "29CAAFCC-4F84-BF8F-0D75-B5AA0FF2D6EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  901 0 904 0 910 0 913 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim1_inputBZ";
	rename -uid "3CC7A664-4A6E-40DA-D537-5980FC6D3973";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  913 0 916 0 922 0 925 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim1_inputBX";
	rename -uid "FE2CEA3E-4ACC-C28F-3C2A-5E9147C29B38";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  926 0 929 0 935 0 938 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim1_inputBY";
	rename -uid "BE9BB85A-40EA-87D5-AFFA-D68BAB7FC435";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  938 0 941 0 947 0 950 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim1_inputBZ";
	rename -uid "ACB63CDB-4CCE-211B-9079-C2A1A33B0B60";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  950 0 953 0 959 0 962 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim1_inputBX";
	rename -uid "859E9E4F-4EE8-8AEA-78A8-BA8D2227E937";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  963 0 966 0 972 0 975 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim1_inputBY";
	rename -uid "96658839-4927-1F6B-5732-06B3D474B7DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  975 0 978 0 984 0 987 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim1_inputBZ";
	rename -uid "DB0A93C7-48B2-44E0-C4BE-F4A1BF9812EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  987 0 990 0 996 0 999 0;
	setAttr -s 4 ".kit[0:3]"  3 18 18 18;
	setAttr -s 4 ".kot[3]"  3;
createNode groupId -n "groupId1";
	rename -uid "80EE2AD9-4E39-0EB2-B289-D2962BFED0DC";
	setAttr ".ihi" 0;
createNode shadingEngine -n "temp_Mesh_Human_Biped_01_lambert2SG";
	rename -uid "80E5B5F2-4815-A4C1-9CA5-1A911560E8CE";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "temp_materialInfo3";
	rename -uid "2ABD8B20-40A8-F43A-D187-C79A74893FAD";
createNode lambert -n "temp_lambert2";
	rename -uid "B176E2B9-4FE6-9544-2DE6-FCA7DB3F849E";
createNode polySplit -n "polySplit3";
	rename -uid "9D92DF0D-449F-BC6B-172C-73B898DF60A2";
	setAttr -s 79 ".e[0:78]"  1 0.48967201 0.498173 0.49985299 0.51419401
		 0.51023501 0.50487798 0.485212 0.46572599 0.458417 0.44941199 0.444915 0.45462999
		 0.48981401 0.474226 0.612692 0.65820098 0.64984697 0.64304501 0.62480003 0.56940502
		 0.55417198 0.54287601 0.52254301 0.52672797 0.46689701 1 0.52938402 0.53443003 0.46307701
		 0.44340801 0.44354701 0.443692 0.44407299 0.43823099 0.435702 0.43365899 0.45652601
		 0.52213401 0.473418 0.46905899 0.364636 0.317992 0.32087901 0.32443899 0.332607 0.37906
		 0.39646301 0.41310999 0.47907001 0.51070303 0.47936901 1 0.40593401 0.42444599 0.57928002
		 0.59509099 0.58849698 0.58427602 0.58055401 0.55858701 0.55312002 0.54901302 0.512707
		 0.51341802 0.48185799 0.55039102 0.46828401 0.43258601 0.43051001 0.42773601 0.41647801
		 0.416412 0.41633999 0.41622499 0.463714 0.42128101 0.63284099 0;
	setAttr -s 79 ".d[0:78]"  -2147483503 -2147482847 -2147483501 -2147483041 -2147483451 -2147482969 
		-2147482977 -2147483443 -2147482961 -2147482953 -2147483435 -2147483427 -2147483419 -2147482801 -2147483416 -2147483424 -2147483432 -2147482949 
		-2147482957 -2147483440 -2147482973 -2147482965 -2147483448 -2147483037 -2147483491 -2147482859 -2147483493 -2147482857 -2147483405 -2147483031 
		-2147483406 -2147482933 -2147482941 -2147483397 -2147482925 -2147482917 -2147483389 -2147483381 -2147483373 -2147482759 -2147483376 -2147483384 
		-2147483392 -2147482921 -2147482929 -2147483400 -2147482945 -2147482937 -2147483410 -2147483028 -2147483409 -2147482849 -2147483494 -2147482851 
		-2147483367 -2147483020 -2147483368 -2147482892 -2147482884 -2147483359 -2147482908 -2147482900 -2147483351 -2147483343 -2147483335 -2147482717 
		-2147483332 -2147483340 -2147483348 -2147482903 -2147482911 -2147483356 -2147482887 -2147482895 -2147483364 -2147483023 -2147483485 -2147482855 
		-2147483486;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "CB380B02-4CCC-58B2-E44B-978DA6FEE383";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[515]" -type "float3" 0 0.21714897 0 ;
	setAttr ".tk[516]" -type "float3" 0 0.21714897 0 ;
	setAttr ".tk[517]" -type "float3" 0 0.21714897 0 ;
	setAttr ".tk[518]" -type "float3" 0 0.21714897 0 ;
	setAttr ".tk[519]" -type "float3" 0 0.21714897 0 ;
	setAttr ".tk[520]" -type "float3" 0 0.21714897 0 ;
	setAttr ".tk[521]" -type "float3" 0 0.21714897 0 ;
	setAttr ".tk[522]" -type "float3" 0 0.21714897 0 ;
	setAttr ".tk[523]" -type "float3" 0 0.21714897 0 ;
	setAttr ".tk[524]" -type "float3" 0 0.21714897 0 ;
	setAttr ".tk[526]" -type "float3" 0 -0.22843742 0 ;
	setAttr ".tk[527]" -type "float3" 0 -0.22843742 0 ;
	setAttr ".tk[528]" -type "float3" 0 -0.22843742 0 ;
	setAttr ".tk[529]" -type "float3" 0 -0.22843742 0 ;
	setAttr ".tk[530]" -type "float3" 0 -0.22843742 0 ;
	setAttr ".tk[531]" -type "float3" 0 -0.22843742 0 ;
	setAttr ".tk[532]" -type "float3" 0 -0.22843742 0 ;
	setAttr ".tk[533]" -type "float3" 0 -0.22843742 0 ;
	setAttr ".tk[534]" -type "float3" 0 -0.22843742 0 ;
	setAttr ".tk[535]" -type "float3" 0 -0.22843742 0 ;
	setAttr ".tk[1579]" -type "float3" 0 2.9802322e-08 -2.9802322e-08 ;
	setAttr ".tk[1698]" -type "float3" 0 2.9802322e-08 -2.9802322e-08 ;
	setAttr ".tk[1745]" -type "float3" 0 2.9802322e-08 -2.9802322e-08 ;
	setAttr ".tk[1751]" -type "float3" 0 2.9802322e-08 -2.9802322e-08 ;
createNode polySplit -n "polySplit2";
	rename -uid "D212A509-451D-4BD7-270E-1381B515021C";
	setAttr -s 27 ".e[0:26]"  0 0.483246 0.49175701 0.50911599 0.51684999
		 0.50816602 0.50393599 0.49350101 0.50078303 0.50281501 0.50372499 0.49801001 0.477992
		 0.48661101 0.449431 0.55073202 0.55600297 0.53739101 0.53975999 0.54830903 0.51880801
		 0.50672901 0.50735199 0.546956 0.44887501 0.43834901 0;
	setAttr -s 27 ".d[0:26]"  -2147483502 -2147482846 -2147483582 -2147483049 -2147483583 -2147483001 
		-2147483009 -2147483572 -2147482993 -2147482985 -2147483564 -2147483556 -2147483460 -2147482646 -2147483457 -2147483553 -2147483561 -2147482981 
		-2147482989 -2147483569 -2147483005 -2147482997 -2147483578 -2147483045 -2147483577 -2147482861 -2147483515;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit1";
	rename -uid "A3477803-4385-ED77-516C-12A99F24BF8E";
	setAttr -s 14 ".e[0:13]"  0 0.51951498 0.42150399 0.46434301 0.51430398
		 0.49592799 0.43149099 0.46951899 0.48507401 0.47447699 0.47814101 0.52138799 0.57909101
		 1;
	setAttr -s 14 ".d[0:13]"  -2147482843 -2147483458 -2147483554 -2147483562 -2147482980 -2147482988 
		-2147483570 -2147483004 -2147482996 -2147483580 -2147483044 -2147483579 -2147482865 -2147483476;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplitRing -n "polySplitRing25";
	rename -uid "D2D3B477-47A2-52E7-B4B2-43A5EB7595CF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 89 "e[19:20]" "e[49]" "e[51]" "e[61]" "e[63]" "e[74]" "e[82]" "e[90]" "e[139]" "e[141]" "e[143]" "e[186]" "e[193]" "e[195]" "e[199]" "e[203]" "e[207]" "e[211]" "e[215]" "e[219]" "e[223]" "e[227]" "e[231]" "e[234]" "e[236]" "e[241]" "e[246]" "e[250]" "e[254]" "e[258]" "e[262]" "e[266]" "e[270]" "e[274]" "e[277]" "e[283]" "e[287]" "e[291]" "e[295]" "e[299]" "e[303]" "e[307]" "e[311]" "e[315]" "e[333]" "e[363:364]" "e[387]" "e[403]" "e[432]" "e[472:474]" "e[498]" "e[554]" "e[593]" "e[601]" "e[609]" "e[612]" "e[615]" "e[619]" "e[623]" "e[627]" "e[641]" "e[649]" "e[657]" "e[665]" "e[673]" "e[676]" "e[681]" "e[684]" "e[689]" "e[692]" "e[697]" "e[700]" "e[705]" "e[708]" "e[713]" "e[716]" "e[721]" "e[724]" "e[729]" "e[732]" "e[735]" "e[739]" "e[743]" "e[747]" "e[751]" "e[755]" "e[759]" "e[763]" "e[795]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.49456989765167236;
	setAttr ".dr" no;
	setAttr ".re" 227;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing24";
	rename -uid "9485AB65-46BE-9E9D-6940-718B48DCD4D4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[133:134]" "e[138]" "e[140]" "e[146]" "e[148]" "e[156]" "e[158]" "e[164]" "e[171]" "e[318]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.12819816172122955;
	setAttr ".re" 171;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing23";
	rename -uid "DBF33180-45E5-5F72-D25C-CFB7C570B3F3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[116]" "e[765]" "e[768]" "e[770]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.29295828938484192;
	setAttr ".re" 765;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing22";
	rename -uid "9E1F48BE-4F7C-C98C-E6B9-9CB7F2A908BD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[116:117]" "e[119]" "e[121]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.23819166421890259;
	setAttr ".re" 117;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing21";
	rename -uid "D039D48D-41EB-D872-42B0-44A5EB211130";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[285]" "e[749]" "e[752]" "e[754]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.54186403751373291;
	setAttr ".re" 749;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing20";
	rename -uid "6A78C600-432B-6258-BD4C-718DA8D3A67A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[285:286]" "e[288]" "e[290]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.47324016690254211;
	setAttr ".dr" no;
	setAttr ".re" 286;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing19";
	rename -uid "85873A33-4F48-CEA5-8A70-54900A896A63";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[293]" "e[733]" "e[736]" "e[738]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.58424586057662964;
	setAttr ".dr" no;
	setAttr ".re" 733;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing18";
	rename -uid "EB8716FF-4476-C5F3-4F39-FF8AF1598F0A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[293:294]" "e[296]" "e[298]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.7351033091545105;
	setAttr ".dr" no;
	setAttr ".re" 294;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing17";
	rename -uid "D3E5A34B-4597-47A1-4068-BD9EF5C41E1F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[252]" "e[717:718]" "e[722]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.56845623254776001;
	setAttr ".re" 717;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing16";
	rename -uid "86318A71-4FCF-30EC-E7F5-929C88FA35DC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[252:253]" "e[255]" "e[257]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.59730058908462524;
	setAttr ".dr" no;
	setAttr ".re" 255;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing15";
	rename -uid "CAB83B42-4474-3555-16D2-5CACC9F7B50F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[245]" "e[247]" "e[249]" "e[704]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.49624636769294739;
	setAttr ".dr" no;
	setAttr ".re" 247;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing14";
	rename -uid "B0FEF686-47C7-25CE-D9F1-9797BE5BC997";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[244:245]" "e[247]" "e[249]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.43967685103416443;
	setAttr ".dr" no;
	setAttr ".re" 247;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing13";
	rename -uid "989AF994-4D4E-56C0-AD5F-FFA8CBDB670B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[209]" "e[685:686]" "e[690]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.46473956108093262;
	setAttr ".re" 685;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing12";
	rename -uid "ECBF0C9B-481C-C695-5419-628584A6902B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[209:210]" "e[212]" "e[214]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.58232772350311279;
	setAttr ".dr" no;
	setAttr ".re" 212;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing11";
	rename -uid "714CC0A5-43B3-EC7D-F631-C985DA0FA393";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[202]" "e[204]" "e[206]" "e[672]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.43002867698669434;
	setAttr ".dr" no;
	setAttr ".re" 204;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing10";
	rename -uid "01D926B0-4527-8462-F046-A59E20574F3E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[201:202]" "e[204]" "e[206]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.33542871475219727;
	setAttr ".re" 204;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing9";
	rename -uid "BEFEADE7-4320-2E60-937B-E59F2D63227A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[80]" "e[653:654]" "e[658]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.51672035455703735;
	setAttr ".dr" no;
	setAttr ".re" 653;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing8";
	rename -uid "91D564D3-459C-392B-505B-A58B2EBD8E44";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[80:81]" "e[83]" "e[85]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.67854100465774536;
	setAttr ".dr" no;
	setAttr ".re" 83;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "7F225227-4009-E3B6-D490-6EBCFBEF8A10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[73]" "e[75]" "e[77]" "e[640]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.48500007390975952;
	setAttr ".dr" no;
	setAttr ".re" 75;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "A82EAE9D-49B8-1FA2-516A-419370C01D37";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[72:73]" "e[75]" "e[77]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.45340824127197266;
	setAttr ".re" 75;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "90B727B7-41B3-A3FE-CD5B-3EAD0F4789E5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[96]" "e[98]" "e[100]" "e[103]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.16357506811618805;
	setAttr ".dr" no;
	setAttr ".re" 96;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "248AD3E4-4D3F-6242-244E-9C9771050748";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[276]" "e[278:279]" "e[282]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.191126748919487;
	setAttr ".dr" no;
	setAttr ".re" 276;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "BB0FE46E-4B9D-F9C5-22BC-40A38545FB24";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[233]" "e[235]" "e[237]" "e[240]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.12633383274078369;
	setAttr ".dr" no;
	setAttr ".re" 233;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "E33C505C-4458-B876-9D20-E58E873C7E08";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[192]" "e[194]" "e[196]" "e[198]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.11621593683958054;
	setAttr ".dr" no;
	setAttr ".re" 196;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "3BEB73EA-4815-ABC8-AD25-468F6830496B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[60]" "e[62]" "e[64]" "e[67]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.11233091354370117;
	setAttr ".dr" no;
	setAttr ".re" 64;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode groupParts -n "temp_groupParts1";
	rename -uid "53E7ED28-46DD-6BE2-7613-C0ACDD8CE3D6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:293]";
createNode skinCluster -n "skinCluster2";
	rename -uid "B1D9C5AA-4E71-3CB0-F1CB-5FB18D25F686";
	addAttr -ci true -sn "pfrsMeshes" -ln "pfrsMeshes" -dt "string";
	setAttr -s 613 ".wl";
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
	setAttr ".wl[250:499].w"
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
		2 0 0.6859855823321338 1 0.31401441766786625
		2 15 0.98960021267157561 16 0.010399787328424351
		2 7 0.96735474210678918 8 0.032645257893210877
		2 7 0.95671923387090763 8 0.043280766129092395
		2 15 0.96624054868662501 16 0.033759451313374989
		2 7 0.96774939266550586 8 0.032250607334494169
		2 11 0.93146437730963316 12 0.068535622690366865
		2 11 0.90645285994343916 12 0.093547140056560812
		2 7 0.95603608520737826 8 0.043963914792621739
		2 19 0.9026384969153276 20 0.097361503084672466
		2 19 0.88008232297918365 20 0.11991767702081634
		2 11 0.91153596575558715 12 0.088464034244412862
		2 11 0.93668589971153682 12 0.063314100288463238
		2 19 0.97216591818071718 20 0.027834081819282857
		2 19 0.9495318761303837 20 0.050468123869616306
		2 19 0.88831373389274881 20 0.11168626610725113
		2 19 0.91104513088785011 20 0.08895486911214992
		2 23 0.5 24 0.5
		2 24 0.9818929846297737 25 0.018107015370226277
		2 24 0.98313838138911402 25 0.01686161861088592
		2 23 0.5 24 0.5
		2 16 0.97781636008952333 17 0.022183639910476713
		2 16 0.97011662043229274 17 0.029883379567707223
		2 16 0.94709904204111672 17 0.052900957958883249
		2 16 0.95790877691440801 17 0.042091223085591954
		2 15 0.55180849131373855 16 0.44819150868626145
		2 15 0.53251231162424739 16 0.46748768837575261
		2 15 0.51257035636760351 16 0.48742964363239655
		2 15 0.52266279456036469 16 0.47733720543963526
		2 16 0.50104354093882464 17 0.49895645906117536
		2 16 0.5 17 0.5
		2 16 0.53404470235883528 17 0.46595529764116483
		2 16 0.54711972768068973 17 0.45288027231931033
		2 17 0.99038071009919149 18 0.009619289900808568
		2 17 0.98948037240604592 18 0.010519627593954112
		2 17 0.98437166614738303 18 0.015628333852617034
		2 17 0.97133939151448467 26 0.028660608485515358
		2 8 0.98167672566625885 9 0.018323274333741146
		2 12 0.89049945372249539 13 0.10950054627750469
		2 8 0.95113437480246177 9 0.048865625197538225
		2 8 0.97335939705377483 9 0.026640602946225209
		2 7 0.52035838006571955 8 0.47964161993428045
		2 12 0.93672246401994519 13 0.063277535980054908
		2 8 0.96357845130148201 9 0.036421548698518061
		2 7 0.50192493400710025 8 0.49807506599289969
		2 8 0.51272090996841135 9 0.48727909003158865
		2 8 0.50691982673670888 9 0.49308017326329107
		2 8 0.5543272267009165 9 0.44567277329908356
		2 8 0.5941256501972545 9 0.40587434980274556
		2 8 0.5 9 0.5
		2 8 0.5 9 0.5
		2 9 0.95793944364588524 14 0.042060556354114778
		2 9 0.98777065330962455 18 0.012229346690375491
		2 12 0.95011629616546733 13 0.049883703834532618
		2 12 0.94219297482269115 13 0.057807025177308811
		2 20 0.67368071128340978 21 0.32631928871659016
		2 12 0.90917179886506128 13 0.090828201134938766
		2 12 0.97391785212563009 13 0.026082147874369965
		2 12 0.97098520882581185 13 0.029014791174188106
		2 20 0.79251106924893755 21 0.20748893075106253
		2 12 0.94036802737291503 13 0.059631972627085063
		2 13 0.99239565959289822 22 0.0076043404071018863
		2 13 0.93238315524866833 22 0.067616844751331728
		2 21 0.68193963858601225 22 0.31806036141398769
		2 13 0.97154589667398783 22 0.028454103326012194
		2 13 0.98991014744878247 14 0.010089852551217559
		2 13 0.91252240406195073 22 0.087477595938049282
		2 21 0.55498133564431162 22 0.44501866435568843
		2 13 0.97937906008825137 22 0.020620939911748577
		2 20 0.52257615132682578 21 0.47742384867317428
		2 20 0.58644460687444711 21 0.41355539312555295
		2 20 0.57707290936031252 21 0.42292709063968753
		2 20 0.51422900494363921 21 0.48577099505636079
		2 20 0.5 21 0.5
		2 20 0.51223288198647321 21 0.48776711801352685
		2 20 0.50494399561036263 21 0.49505600438963732
		2 20 0.5 21 0.5
		2 20 0.97946021131136674 21 0.020539788688633247
		2 20 0.96058042256047804 21 0.039419577439521902
		2 20 0.95649154480193044 21 0.04350845519806959
		2 20 0.97547707414487994 21 0.024522925855120146
		2 20 0.9568912002715988 21 0.043108799728401294
		2 20 0.94095271538503078 21 0.059047284614969199
		2 20 0.93620220334205984 21 0.063797796657940178
		2 20 0.95138416215358879 21 0.048615837846411304
		2 24 0.57528105248916417 25 0.42471894751083583
		2 24 0.67399526142517407 25 0.32600473857482587
		2 24 0.65176833980390703 25 0.34823166019609292
		2 24 0.55778683951839225 25 0.44221316048160775
		2 24 0.50823468234695302 25 0.49176531765304698
		2 24 0.56821109798517688 25 0.43178890201482312
		2 24 0.55213525343553704 25 0.44786474656446296
		2 24 0.50218764732184795 25 0.49781235267815199
		2 6 0.98545332420457199 7 0.014546675795427984
		2 15 0.97552265941138006 16 0.024477340588620031
		2 15 0.96399001966847364 16 0.036009980331526338
		2 6 0.52241083562016499 7 0.47758916437983512
		2 6 0.76449011347877349 7 0.23550988652122651
		2 6 0.98948530335780582 7 0.010514696642194152
		2 6 0.99773481712107492 7 0.0022651828789250796
		2 6 0.99884798350972637 7 0.001152016490273659
		2 6 0.98713384329222442 7 0.012866156707775621
		2 6 0.63795567838903233 7 0.36204432161096767
		2 6 0.5 7 0.5
		2 15 0.97032928897726578 16 0.029670711022734234
		2 17 0.56777209948198704 18 0.43222790051801296
		2 17 0.98280645363853503 18 0.017193546361465001
		2 17 0.99579446016462136 18 0.0042055398353787101
		2 17 0.99648553402809847 18 0.0035144659719015246
		2 16 0.51801020766797223 17 0.48198979233202788
		2 16 0.92243102656046017 17 0.077568973439539793
		2 16 0.98573878896283373 17 0.014261211037166273
		2 15 0.53876149598410683 16 0.46123850401589317
		2 15 0.71156000512895823 16 0.28843999487104188
		2 7 0.98992161481077423 8 0.01007838518922575
		2 7 0.99340900320742931 8 0.0065909967925707729
		2 7 0.99074072288390336 8 0.0092592771160967292
		2 7 0.64863537709395225 8 0.3513646229060477
		2 7 0.52212578300786694 8 0.47787421699213306
		2 8 0.99560450596959393 9 0.0043954940304060403
		2 8 0.96123249495062191 9 0.038767505049378086
		2 8 0.60024708638701707 9 0.39975291361298293
		2 9 0.99713579659883544 18 0.0028642034011645873
		2 9 0.99495680690279042 18 0.0050431930972095855
		2 9 0.97171173633320695 18 0.028288263666793021
		2 9 0.50015411285247258 10 0.49984588714752753
		2 9 0.50015441231628743 10 0.49984558768371251
		2 9 0.84186315454683602 14 0.15813684545316403
		2 9 0.96761108518029881 14 0.032388914819701138
		2 9 0.98089528962727535 14 0.019104710372724626
		2 8 0.53909953831794755 9 0.46090046168205251
		2 8 0.87728375796820346 9 0.12271624203179658
		2 8 0.98262635800499087 9 0.017373641995009077
		2 7 0.50795578285001597 8 0.49204421714998398
		2 7 0.57412749770141569 8 0.42587250229858425
		2 11 0.96922199260146191 12 0.030778007398538088
		2 6 0.78412519165035355 7 0.21587480834964654
		2 11 0.97252630435262277 12 0.027473695647377238
		2 11 0.51029863383180707 12 0.48970136616819293
		2 12 0.98708004608483524 13 0.01291995391516478
		2 12 0.97669525690171632 13 0.023304743098283717
		2 12 0.82247495349421629 13 0.17752504650578371
		2 13 0.99655127714216307 22 0.0034487228578369395
		2 13 0.9971032944296766 22 0.002896705570323445
		2 13 0.99687065620293902 14 0.0031293437970610818
		2 13 0.98130540590079973 14 0.018694594099200303
		2 13 0.50420066455769774 14 0.49579933544230237
		2 13 0.50299485213097073 14 0.49700514786902927
		2 13 0.94283024596928799 14 0.057169754030712061
		2 13 0.91064485563969422 22 0.089355144360305727
		2 13 0.9018165379151859 22 0.098183462084814058
		2 13 0.90837662361349181 22 0.091623376386508151
		2 12 0.76964605921096552 13 0.23035394078903448
		2 20 0.78221331450874565 21 0.21778668549125432
		2 20 0.90928676538357578 21 0.090713234616424193
		2 20 0.96189414389543071 21 0.038105856104569333
		2 19 0.95872121970601099 20 0.04127878029398898
		2 19 0.97730727210843404 20 0.022692727891565945
		2 19 0.96174639251770988 20 0.038253607482290036
		2 19 0.55048714331596893 20 0.44951285668403107
		2 20 0.98927580997399089 21 0.010724190026009214
		2 20 0.98108688502149943 21 0.018913114978500619
		2 20 0.96616506895707155 21 0.0338349310429285
		2 20 0.5849520073594302 21 0.4150479926405698
		2 21 0.99635703651200247 22 0.0036429634879975325
		2 21 0.99569908349337122 22 0.0043009165066288241
		2 21 0.96909525406888686 22 0.030904745931113104
		2 21 0.5 22 0.5
		2 21 0.5 22 0.5
		2 21 0.95266494637616295 22 0.047335053623837012
		2 21 0.99205562359892507 22 0.0079443764010748794
		2 20 0.50155781668927824 21 0.49844218331072182
		2 20 0.59155483397604769 21 0.40844516602395237
		2 20 0.96820996360898226 21 0.031790036391017719
		2 20 0.98341844109444698 21 0.016581558905552993
		2 20 0.99142146128761333 21 0.0085785387123867504
		2 19 0.63003013973297317 20 0.36996986026702683
		2 19 0.99196643292831088 20 0.0080335670716890871
		2 6 0.99977169129618759 7 0.0002283087038124042
		2 6 0.99967883759889409 7 0.0003211624011059205
		2 6 0.99573741021605 7 0.0042625897839500184
		2 6 0.98718196655986612 7 0.012818033440133774
		2 3 0.97017164515753451 5 0.029828354842465436
		2 3 0.85909616190721638 5 0.14090383809278359
		2 3 0.52942733140801368 5 0.47057266859198627
		2 3 0.68123231259474737 5 0.31876768740525263
		2 3 0.51372911020124223 4 0.48627088979875777
		2 3 0.71799257431625263 4 0.28200742568374748
		2 3 0.9378020666778818 4 0.062197933322118176
		2 1 0.9867826816903853 4 0.01321731830961472
		2 1 0.96288521915878211 2 0.037114780841217838
		2 1 0.81519742281156482 2 0.18480257718843518
		2 1 0.5 2 0.5
		2 1 0.64381899890358418 2 0.35618100109641587
		2 1 0.87176618581401388 2 0.12823381418598614
		2 1 0.93331467237414212 2 0.066685327625857924
		2 0 0.51176856259812509 1 0.48823143740187486;
	setAttr ".wl[500:612].w"
		2 0 0.72955952211713404 1 0.2704404778828659
		2 17 0.54147465754648816 18 0.4585253424535119
		2 17 0.96705944064154181 18 0.032940559358458195
		2 17 0.99534217883325615 18 0.0046578211667439584
		2 17 0.99671021937444415 18 0.003289780625555835
		2 16 0.53407678173980666 17 0.46592321826019328
		2 16 0.94637150328694808 17 0.053628496713051921
		2 16 0.99076475754587645 17 0.0092352424541236374
		2 15 0.5693967022016948 16 0.43060329779830525
		2 15 0.76972150556499919 16 0.23027849443500079
		2 15 0.99379897371958592 16 0.0062010262804141321
		2 15 0.99545069876202041 16 0.0045493012379796138
		2 6 0.98854340807257113 7 0.011456591927428874
		2 6 0.98260021629041239 7 0.017399783709587665
		2 15 0.99684298312846431 16 0.0031570168715357606
		2 15 0.99134830061869805 16 0.0086516993813019246
		2 15 0.77531811441331278 16 0.22468188558668722
		2 15 0.58223332228449654 16 0.41776667771550358
		2 16 0.98838879739539987 17 0.011611202604600163
		2 16 0.90038032784086852 17 0.099619672159131478
		2 16 0.50785632385737023 17 0.49214367614262972
		2 16 0.5 17 0.5
		2 17 0.99196940747786178 18 0.0080305925221382333
		2 17 0.95269912132036505 18 0.047300878679634978
		2 17 0.58187971440603325 18 0.41812028559396675
		2 17 0.74311519987439834 18 0.25688480012560172
		2 17 0.50661562491167911 18 0.49338437508832089
		2 17 0.95137612374080949 18 0.048623876259190457
		2 17 0.98729495390200539 18 0.012705046097994718
		2 17 0.98419266964283381 26 0.01580733035716617
		2 16 0.52323010840906747 17 0.47676989159093247
		2 16 0.87644425970370055 17 0.12355574029629957
		2 16 0.96057857914932587 17 0.039421420850674127
		2 15 0.51090705123410229 16 0.48909294876589765
		2 15 0.59901322499684184 16 0.40098677500315816
		2 15 0.96786381691643464 16 0.032136183083565459
		2 15 0.98797733889607287 16 0.012022661103927114
		2 15 0.97834768312636655 16 0.021652316873633431
		2 6 0.50006548346804025 7 0.4999345165319598
		2 6 0.5 7 0.5
		2 7 0.98173104325271399 8 0.018268956747286017
		2 7 0.63619254109923262 8 0.36380745890076738
		2 7 0.53504772277477564 8 0.46495227722522431
		2 8 0.98623799419975056 9 0.013762005800249416
		2 8 0.85290504116898258 9 0.14709495883101745
		2 8 0.52754393609842487 9 0.47245606390157513
		2 8 0.5 9 0.5
		2 9 0.97813578080044239 18 0.021864219199557645
		2 9 0.88789715696930993 10 0.11210284303069006
		2 9 0.50605312127972779 10 0.49394687872027221
		2 9 0.50095803001745542 10 0.49904196998254452
		2 9 0.51055835294095553 10 0.48944164705904453
		2 9 0.99464446870650725 10 0.0053555312934927901
		2 9 0.99800981935797561 18 0.0019901806420244048
		2 9 0.99719775018051005 18 0.0028022498194899019
		2 8 0.6492421063708308 9 0.3507578936291692
		2 8 0.95716710159983676 9 0.04283289840016314
		2 8 0.98811770363367502 9 0.01188229636632494
		2 7 0.50154443824259876 8 0.49845556175740124
		2 7 0.55433712585035211 8 0.44566287414964789
		2 7 0.97984127392612597 8 0.020158726073873989
		2 7 0.9862068170397571 8 0.013793182960242911
		2 6 0.56008904587560271 7 0.43991095412439724
		2 6 0.97766875897222261 7 0.022331241027777424
		2 6 0.98205722243780713 7 0.017942777562192876
		2 11 0.95433807975112506 12 0.045661920248875006
		2 12 0.97112488220495974 13 0.028875117795040268
		2 12 0.95608720925466939 13 0.043912790745330645
		2 12 0.92937165640308339 13 0.070628343596916651
		2 12 0.73305382342999637 13 0.26694617657000358
		2 13 0.9193768517651737 22 0.080623148234826303
		2 13 0.94139327838297082 22 0.058606721617029123
		2 13 0.96075828803029495 22 0.039241711969705134
		2 13 0.96860147714589695 14 0.031398522854103064
		2 13 0.5000409259758084 14 0.4999590740241916
		2 13 0.54944177871565036 14 0.45055822128434964
		2 13 0.51398418253739542 14 0.48601581746260453
		2 13 0.92183371853226748 14 0.078166281467732635
		2 13 0.98362103064517836 22 0.016378969354821606
		2 13 0.98811996888211073 22 0.011880031117889284
		2 13 0.99323971434872138 22 0.0067602856512785671
		2 12 0.76307572141649282 13 0.2369242785835072
		2 12 0.97716263569144368 13 0.022837364308556388
		2 12 0.98943345087449786 13 0.010566549125502089
		2 11 0.52822955254306225 12 0.4717704474569378
		2 11 0.97997876868615297 12 0.020021231313847022
		2 6 0.98747033401493312 7 0.012529665985066964
		2 6 0.98398257379134979 7 0.016017426208650182
		2 6 0.99904550043141238 7 0.00095449956858767308
		2 19 0.98993021350064725 20 0.010069786499352805
		2 19 0.96701121989179051 20 0.032988780108209458
		2 19 0.61060699319840761 20 0.38939300680159245
		2 20 0.98861056288910909 21 0.011389437110890971
		2 20 0.97429902358796994 21 0.025700976412030115
		2 20 0.9450180478587259 21 0.054981952141274146
		2 20 0.55649870517576627 21 0.44350129482423378
		2 20 0.5 21 0.5
		2 20 0.5 21 0.5
		2 21 0.93485560859275896 22 0.06514439140724107
		2 21 0.51692487735622505 22 0.483075122643775
		2 21 0.5 22 0.5
		2 21 0.5 22 0.5
		2 21 0.97362341055402368 22 0.026376589445976272
		2 21 0.98891435359309543 22 0.01108564640690456
		2 20 0.51484879079006984 21 0.48515120920993021
		2 20 0.62995697041288945 21 0.37004302958711049
		2 20 0.96221763766274271 21 0.037782362337257271
		2 20 0.97491214610133237 21 0.025087853898667609
		2 20 0.9833082146206874 21 0.016691785379312554
		2 19 0.54890564511419404 20 0.45109435488580596
		2 19 0.96601969896670814 20 0.033980301033291825
		2 6 0.99863117175281024 7 0.0013688282471897193
		2 6 0.99841133662558568 7 0.0015886633744143653;
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
createNode tweak -n "tweak2";
	rename -uid "8F1C7F93-4786-8613-9B7C-69BACA5048CD";
	setAttr -s 40 ".vl[0].vt";
	setAttr ".vl[0].vt[540]" -type "float3" 0 0.24445529 0 ;
	setAttr ".vl[0].vt[541]" -type "float3" 0 0.24445529 0 ;
	setAttr ".vl[0].vt[542]" -type "float3" 0 0.24445529 0 ;
	setAttr ".vl[0].vt[543]" -type "float3" 0 0.24445529 0 ;
	setAttr ".vl[0].vt[544]" -type "float3" 0 0.24445529 0 ;
	setAttr ".vl[0].vt[545]" -type "float3" 0 0.24445529 0 ;
	setAttr ".vl[0].vt[546]" -type "float3" 0 0.24445529 0 ;
	setAttr ".vl[0].vt[547]" -type "float3" 0 0.24445529 0 ;
	setAttr ".vl[0].vt[548]" -type "float3" 0 0.24445529 0 ;
	setAttr ".vl[0].vt[549]" -type "float3" 0 0.24445529 0 ;
	setAttr ".vl[0].vt[565]" -type "float3" 0 -0.14017402 0 ;
	setAttr ".vl[0].vt[566]" -type "float3" 0 -0.14017402 0 ;
	setAttr ".vl[0].vt[567]" -type "float3" 0 -0.14017402 0 ;
	setAttr ".vl[0].vt[568]" -type "float3" 0 -0.14017402 0 ;
	setAttr ".vl[0].vt[569]" -type "float3" 0 -0.14017402 0 ;
	setAttr ".vl[0].vt[570]" -type "float3" 0 -0.14017402 0 ;
	setAttr ".vl[0].vt[571]" -type "float3" 0 -0.14017402 0 ;
	setAttr ".vl[0].vt[572]" -type "float3" 0 -0.14017402 0 ;
	setAttr ".vl[0].vt[573]" -type "float3" 0 -0.14017402 0 ;
	setAttr ".vl[0].vt[574]" -type "float3" 0 -0.14017402 0 ;
	setAttr ".vl[0].vt[576]" -type "float3" 0 0.19602549 -0.10764485 ;
	setAttr ".vl[0].vt[577]" -type "float3" 0 0.19602549 -0.20144802 ;
	setAttr ".vl[0].vt[578]" -type "float3" 0 0.19602549 -0.24836686 ;
	setAttr ".vl[0].vt[579]" -type "float3" 0 0.19602549 -0.24860218 ;
	setAttr ".vl[0].vt[580]" -type "float3" 0 0.19602549 -0.24890986 ;
	setAttr ".vl[0].vt[581]" -type "float3" 0 0.19602549 -0.24971455 ;
	setAttr ".vl[0].vt[582]" -type "float3" 0 0.19602549 -0.20941538 ;
	setAttr ".vl[0].vt[583]" -type "float3" 0 0.19602549 -0.19350144 ;
	setAttr ".vl[0].vt[584]" -type "float3" 0 0.19602549 -0.17783268 ;
	setAttr ".vl[0].vt[585]" -type "float3" 0 0.19602549 -0.085310899 ;
	setAttr ".vl[0].vt[590]" -type "float3" 0 0.19520301 0 ;
	setAttr ".vl[0].vt[591]" -type "float3" 0 0.19520301 0 ;
	setAttr ".vl[0].vt[592]" -type "float3" 0 0.19520301 0 ;
	setAttr ".vl[0].vt[593]" -type "float3" 0 0.19520301 0 ;
	setAttr ".vl[0].vt[594]" -type "float3" 0 0.19520301 0 ;
	setAttr ".vl[0].vt[595]" -type "float3" 0 0.19520301 0 ;
	setAttr ".vl[0].vt[596]" -type "float3" 0 0.19520301 0 ;
	setAttr ".vl[0].vt[597]" -type "float3" 0 0.19520301 0 ;
	setAttr ".vl[0].vt[598]" -type "float3" 0 0.19520301 0 ;
	setAttr ".vl[0].vt[599]" -type "float3" 0 0.19520301 0 ;
createNode objectSet -n "skinCluster2Set";
	rename -uid "0FE42036-456A-6BEA-4E8A-3D89552B48FE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster2GroupId";
	rename -uid "15840C5C-455E-46B5-1A3D-1CA9706627C0";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster2GroupParts";
	rename -uid "1990E5C4-4638-5172-641F-0DBC5F9A3CCC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet3";
	rename -uid "9251DD63-4D80-2798-6CF0-81998DC9809B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId7";
	rename -uid "A30BD313-4E2C-3EB8-651A-1DB71A6D0002";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "7B579D7D-4716-61E7-9E9B-388356A430E0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "8DF3F0A5-4127-7AAB-4A40-D2895FF4E3BE";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -511.90474156349512 -346.42855766273738 ;
	setAttr ".tgi[0].vh" -type "double2" 511.90474156349512 345.23808151956644 ;
	setAttr -s 382 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -8508.5712890625;
	setAttr ".tgi[0].ni[0].y" 5990;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 8355.7138671875;
	setAttr ".tgi[0].ni[1].y" 15774.2861328125;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 8355.7138671875;
	setAttr ".tgi[0].ni[2].y" 15672.857421875;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 8355.7138671875;
	setAttr ".tgi[0].ni[3].y" 15402.857421875;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 8355.7138671875;
	setAttr ".tgi[0].ni[4].y" 14997.142578125;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 8355.7138671875;
	setAttr ".tgi[0].ni[5].y" 14791.4287109375;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" -4952.85693359375;
	setAttr ".tgi[0].ni[6].y" -25.714284896850586;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" -4952.85693359375;
	setAttr ".tgi[0].ni[7].y" -275.71429443359375;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" -4952.85693359375;
	setAttr ".tgi[0].ni[8].y" -377.14285278320313;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" -4952.85693359375;
	setAttr ".tgi[0].ni[9].y" -592.85711669921875;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" -4952.85693359375;
	setAttr ".tgi[0].ni[10].y" -808.5714111328125;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" -4952.85693359375;
	setAttr ".tgi[0].ni[11].y" -967.14288330078125;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" -2952.857177734375;
	setAttr ".tgi[0].ni[12].y" 12280;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" -2952.857177734375;
	setAttr ".tgi[0].ni[13].y" 12438.5712890625;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" -3452.857177734375;
	setAttr ".tgi[0].ni[14].y" 9424.2861328125;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" -2952.857177734375;
	setAttr ".tgi[0].ni[15].y" 12178.5712890625;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" -2952.857177734375;
	setAttr ".tgi[0].ni[16].y" 11690;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" -2952.857177734375;
	setAttr ".tgi[0].ni[17].y" 11487.142578125;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" -2952.857177734375;
	setAttr ".tgi[0].ni[18].y" 11284.2861328125;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" -2952.857177734375;
	setAttr ".tgi[0].ni[19].y" 11962.857421875;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" -2952.857177734375;
	setAttr ".tgi[0].ni[20].y" 11385.7138671875;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" -2952.857177734375;
	setAttr ".tgi[0].ni[21].y" 11182.857421875;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" -2952.857177734375;
	setAttr ".tgi[0].ni[22].y" 11588.5712890625;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" -2952.857177734375;
	setAttr ".tgi[0].ni[23].y" 11081.4287109375;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" -3452.857177734375;
	setAttr ".tgi[0].ni[24].y" 8332.857421875;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" -2952.857177734375;
	setAttr ".tgi[0].ni[25].y" 10557.142578125;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" -2952.857177734375;
	setAttr ".tgi[0].ni[26].y" 10455.7138671875;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" -3452.857177734375;
	setAttr ".tgi[0].ni[27].y" 7745.71435546875;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" -2952.857177734375;
	setAttr ".tgi[0].ni[28].y" 9934.2861328125;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" -3452.857177734375;
	setAttr ".tgi[0].ni[29].y" 7530;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" -2952.857177734375;
	setAttr ".tgi[0].ni[30].y" 9451.4287109375;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" -2952.857177734375;
	setAttr ".tgi[0].ni[31].y" 9248.5712890625;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" -2952.857177734375;
	setAttr ".tgi[0].ni[32].y" 9350;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" -3452.857177734375;
	setAttr ".tgi[0].ni[33].y" 5822.85693359375;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" -2952.857177734375;
	setAttr ".tgi[0].ni[34].y" 9147.142578125;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" -2952.857177734375;
	setAttr ".tgi[0].ni[35].y" 9045.7138671875;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" -3452.857177734375;
	setAttr ".tgi[0].ni[36].y" 5255.71435546875;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" -6387.14306640625;
	setAttr ".tgi[0].ni[37].y" -2280;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" -5892.85693359375;
	setAttr ".tgi[0].ni[38].y" 4482.85693359375;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" -5892.85693359375;
	setAttr ".tgi[0].ni[39].y" 4381.4287109375;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" -5892.85693359375;
	setAttr ".tgi[0].ni[40].y" 3962.857177734375;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" -5892.85693359375;
	setAttr ".tgi[0].ni[41].y" 4064.28564453125;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" -5892.85693359375;
	setAttr ".tgi[0].ni[42].y" 4280;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" -3952.857177734375;
	setAttr ".tgi[0].ni[43].y" 7404.28564453125;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" -3952.857177734375;
	setAttr ".tgi[0].ni[44].y" 7245.71435546875;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" -3952.857177734375;
	setAttr ".tgi[0].ni[45].y" 7144.28564453125;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" -3952.857177734375;
	setAttr ".tgi[0].ni[46].y" 6985.71435546875;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" -3952.857177734375;
	setAttr ".tgi[0].ni[47].y" 5951.4287109375;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" -3952.857177734375;
	setAttr ".tgi[0].ni[48].y" 5850;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" -4452.85693359375;
	setAttr ".tgi[0].ni[49].y" 3121.428466796875;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" -3952.857177734375;
	setAttr ".tgi[0].ni[50].y" 1041.4285888671875;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" -4452.85693359375;
	setAttr ".tgi[0].ni[51].y" 2928.571533203125;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" -3952.857177734375;
	setAttr ".tgi[0].ni[52].y" 940;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" -3952.857177734375;
	setAttr ".tgi[0].ni[53].y" 552.85711669921875;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" -3952.857177734375;
	setAttr ".tgi[0].ni[54].y" 394.28570556640625;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" -3952.857177734375;
	setAttr ".tgi[0].ni[55].y" 292.85714721679688;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" -3952.857177734375;
	setAttr ".tgi[0].ni[56].y" 77.142860412597656;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" -3952.857177734375;
	setAttr ".tgi[0].ni[57].y" -138.57142639160156;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" -3452.857177734375;
	setAttr ".tgi[0].ni[58].y" 6502.85693359375;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" -4452.85693359375;
	setAttr ".tgi[0].ni[59].y" 2767.142822265625;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" -3452.857177734375;
	setAttr ".tgi[0].ni[60].y" 6082.85693359375;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" -3452.857177734375;
	setAttr ".tgi[0].ni[61].y" 5924.28564453125;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" -3452.857177734375;
	setAttr ".tgi[0].ni[62].y" 5664.28564453125;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" -3452.857177734375;
	setAttr ".tgi[0].ni[63].y" 5357.14306640625;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" -3952.857177734375;
	setAttr ".tgi[0].ni[64].y" -421.42855834960938;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" -4452.85693359375;
	setAttr ".tgi[0].ni[65].y" 2181.428466796875;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" -3452.857177734375;
	setAttr ".tgi[0].ni[66].y" 5097.14306640625;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" -3452.857177734375;
	setAttr ".tgi[0].ni[67].y" 4938.5712890625;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" -2952.857177734375;
	setAttr ".tgi[0].ni[68].y" 7975.71435546875;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" -4452.85693359375;
	setAttr ".tgi[0].ni[69].y" 1951.4285888671875;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" -4452.85693359375;
	setAttr ".tgi[0].ni[70].y" 1735.7142333984375;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" -3452.857177734375;
	setAttr ".tgi[0].ni[71].y" 3828.571533203125;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" -4452.85693359375;
	setAttr ".tgi[0].ni[72].y" 1520;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" -4452.85693359375;
	setAttr ".tgi[0].ni[73].y" 1418.5714111328125;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" -4452.85693359375;
	setAttr ".tgi[0].ni[74].y" -4154.28564453125;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" -4452.85693359375;
	setAttr ".tgi[0].ni[75].y" -4312.85693359375;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" -4452.85693359375;
	setAttr ".tgi[0].ni[76].y" -4414.28564453125;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" -4452.85693359375;
	setAttr ".tgi[0].ni[77].y" -4630;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" -2952.857177734375;
	setAttr ".tgi[0].ni[78].y" 7874.28564453125;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" -2952.857177734375;
	setAttr ".tgi[0].ni[79].y" 7772.85693359375;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" -4452.85693359375;
	setAttr ".tgi[0].ni[80].y" -4788.5712890625;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" -4452.85693359375;
	setAttr ".tgi[0].ni[81].y" -4947.14306640625;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" -3952.857177734375;
	setAttr ".tgi[0].ni[82].y" -1818.5714111328125;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" -2952.857177734375;
	setAttr ".tgi[0].ni[83].y" 7671.4287109375;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" -3952.857177734375;
	setAttr ".tgi[0].ni[84].y" -2128.571533203125;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" -3952.857177734375;
	setAttr ".tgi[0].ni[85].y" -2230;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" -3452.857177734375;
	setAttr ".tgi[0].ni[86].y" 2060;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" -2952.857177734375;
	setAttr ".tgi[0].ni[87].y" 7468.5712890625;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" -2952.857177734375;
	setAttr ".tgi[0].ni[88].y" 7367.14306640625;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" -4452.85693359375;
	setAttr ".tgi[0].ni[89].y" -5562.85693359375;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" -3952.857177734375;
	setAttr ".tgi[0].ni[90].y" -2560;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" -3952.857177734375;
	setAttr ".tgi[0].ni[91].y" -2775.71435546875;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" -4452.85693359375;
	setAttr ".tgi[0].ni[92].y" -5778.5712890625;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" -3952.857177734375;
	setAttr ".tgi[0].ni[93].y" -2991.428466796875;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" -3452.857177734375;
	setAttr ".tgi[0].ni[94].y" 54.285713195800781;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" -3952.857177734375;
	setAttr ".tgi[0].ni[95].y" -3631.428466796875;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" -3952.857177734375;
	setAttr ".tgi[0].ni[96].y" -3732.857177734375;
	setAttr ".tgi[0].ni[96].nvs" 18304;
	setAttr ".tgi[0].ni[97].x" -2952.857177734375;
	setAttr ".tgi[0].ni[97].y" 7265.71435546875;
	setAttr ".tgi[0].ni[97].nvs" 18304;
	setAttr ".tgi[0].ni[98].x" -2952.857177734375;
	setAttr ".tgi[0].ni[98].y" 7164.28564453125;
	setAttr ".tgi[0].ni[98].nvs" 18304;
	setAttr ".tgi[0].ni[99].x" 1050;
	setAttr ".tgi[0].ni[99].y" 1832.857177734375;
	setAttr ".tgi[0].ni[99].nvs" 18304;
	setAttr ".tgi[0].ni[100].x" -2454.28564453125;
	setAttr ".tgi[0].ni[100].y" 12872.857421875;
	setAttr ".tgi[0].ni[100].nvs" 18304;
	setAttr ".tgi[0].ni[101].x" 8355.7138671875;
	setAttr ".tgi[0].ni[101].y" 14505.7138671875;
	setAttr ".tgi[0].ni[101].nvs" 18304;
	setAttr ".tgi[0].ni[102].x" -2952.857177734375;
	setAttr ".tgi[0].ni[102].y" 6661.4287109375;
	setAttr ".tgi[0].ni[102].nvs" 18304;
	setAttr ".tgi[0].ni[103].x" 742.85711669921875;
	setAttr ".tgi[0].ni[103].y" 1744.2857666015625;
	setAttr ".tgi[0].ni[103].nvs" 18304;
	setAttr ".tgi[0].ni[104].x" -3952.857177734375;
	setAttr ".tgi[0].ni[104].y" 1257.142822265625;
	setAttr ".tgi[0].ni[104].nvs" 18304;
	setAttr ".tgi[0].ni[105].x" -3452.857177734375;
	setAttr ".tgi[0].ni[105].y" -47.142856597900391;
	setAttr ".tgi[0].ni[105].nvs" 18304;
	setAttr ".tgi[0].ni[106].x" -3452.857177734375;
	setAttr ".tgi[0].ni[106].y" -148.57142639160156;
	setAttr ".tgi[0].ni[106].nvs" 18304;
	setAttr ".tgi[0].ni[107].x" -3452.857177734375;
	setAttr ".tgi[0].ni[107].y" -250;
	setAttr ".tgi[0].ni[107].nvs" 18304;
	setAttr ".tgi[0].ni[108].x" -3452.857177734375;
	setAttr ".tgi[0].ni[108].y" -351.42855834960938;
	setAttr ".tgi[0].ni[108].nvs" 18304;
	setAttr ".tgi[0].ni[109].x" -3452.857177734375;
	setAttr ".tgi[0].ni[109].y" -452.85714721679688;
	setAttr ".tgi[0].ni[109].nvs" 18304;
	setAttr ".tgi[0].ni[110].x" -3452.857177734375;
	setAttr ".tgi[0].ni[110].y" -1547.142822265625;
	setAttr ".tgi[0].ni[110].nvs" 18304;
	setAttr ".tgi[0].ni[111].x" -2952.857177734375;
	setAttr ".tgi[0].ni[111].y" 6560;
	setAttr ".tgi[0].ni[111].nvs" 18304;
	setAttr ".tgi[0].ni[112].x" -2952.857177734375;
	setAttr ".tgi[0].ni[112].y" 6458.5712890625;
	setAttr ".tgi[0].ni[112].nvs" 18304;
	setAttr ".tgi[0].ni[113].x" -2952.857177734375;
	setAttr ".tgi[0].ni[113].y" 6357.14306640625;
	setAttr ".tgi[0].ni[113].nvs" 18304;
	setAttr ".tgi[0].ni[114].x" -3452.857177734375;
	setAttr ".tgi[0].ni[114].y" -1648.5714111328125;
	setAttr ".tgi[0].ni[114].nvs" 18304;
	setAttr ".tgi[0].ni[115].x" -3452.857177734375;
	setAttr ".tgi[0].ni[115].y" -1750;
	setAttr ".tgi[0].ni[115].nvs" 18304;
	setAttr ".tgi[0].ni[116].x" -5420;
	setAttr ".tgi[0].ni[116].y" -2282.857177734375;
	setAttr ".tgi[0].ni[116].nvs" 18304;
	setAttr ".tgi[0].ni[117].x" -5420;
	setAttr ".tgi[0].ni[117].y" -2384.28564453125;
	setAttr ".tgi[0].ni[117].nvs" 18304;
	setAttr ".tgi[0].ni[118].x" -4952.85693359375;
	setAttr ".tgi[0].ni[118].y" -6354.28564453125;
	setAttr ".tgi[0].ni[118].nvs" 18304;
	setAttr ".tgi[0].ni[119].x" -5420;
	setAttr ".tgi[0].ni[119].y" -3028.571533203125;
	setAttr ".tgi[0].ni[119].nvs" 18304;
	setAttr ".tgi[0].ni[120].x" -5420;
	setAttr ".tgi[0].ni[120].y" -3548.571533203125;
	setAttr ".tgi[0].ni[120].nvs" 18304;
	setAttr ".tgi[0].ni[121].x" -5420;
	setAttr ".tgi[0].ni[121].y" -3650;
	setAttr ".tgi[0].ni[121].nvs" 18304;
	setAttr ".tgi[0].ni[122].x" 1615.7142333984375;
	setAttr ".tgi[0].ni[122].y" 4262.85693359375;
	setAttr ".tgi[0].ni[122].nvs" 18304;
	setAttr ".tgi[0].ni[123].x" -2952.857177734375;
	setAttr ".tgi[0].ni[123].y" 9552.857421875;
	setAttr ".tgi[0].ni[123].nvs" 18304;
	setAttr ".tgi[0].ni[124].x" -3952.857177734375;
	setAttr ".tgi[0].ni[124].y" 2042.857177734375;
	setAttr ".tgi[0].ni[124].nvs" 18304;
	setAttr ".tgi[0].ni[125].x" 1615.7142333984375;
	setAttr ".tgi[0].ni[125].y" 3545.71435546875;
	setAttr ".tgi[0].ni[125].nvs" 18304;
	setAttr ".tgi[0].ni[126].x" -2454.28564453125;
	setAttr ".tgi[0].ni[126].y" 12600;
	setAttr ".tgi[0].ni[126].nvs" 18304;
	setAttr ".tgi[0].ni[127].x" -2454.28564453125;
	setAttr ".tgi[0].ni[127].y" 12974.2861328125;
	setAttr ".tgi[0].ni[127].nvs" 18304;
	setAttr ".tgi[0].ni[128].x" -2454.28564453125;
	setAttr ".tgi[0].ni[128].y" 12097.142578125;
	setAttr ".tgi[0].ni[128].nvs" 18304;
	setAttr ".tgi[0].ni[129].x" -2952.857177734375;
	setAttr ".tgi[0].ni[129].y" 7570;
	setAttr ".tgi[0].ni[129].nvs" 18304;
	setAttr ".tgi[0].ni[130].x" -3452.857177734375;
	setAttr ".tgi[0].ni[130].y" 6401.4287109375;
	setAttr ".tgi[0].ni[130].nvs" 18304;
	setAttr ".tgi[0].ni[131].x" -3452.857177734375;
	setAttr ".tgi[0].ni[131].y" 4260;
	setAttr ".tgi[0].ni[131].nvs" 18304;
	setAttr ".tgi[0].ni[132].x" -4952.85693359375;
	setAttr ".tgi[0].ni[132].y" -1284.2857666015625;
	setAttr ".tgi[0].ni[132].nvs" 18304;
	setAttr ".tgi[0].ni[133].x" -4452.85693359375;
	setAttr ".tgi[0].ni[133].y" -11248.5712890625;
	setAttr ".tgi[0].ni[133].nvs" 18304;
	setAttr ".tgi[0].ni[134].x" -4452.85693359375;
	setAttr ".tgi[0].ni[134].y" -11350;
	setAttr ".tgi[0].ni[134].nvs" 18304;
	setAttr ".tgi[0].ni[135].x" -3952.857177734375;
	setAttr ".tgi[0].ni[135].y" -6218.5712890625;
	setAttr ".tgi[0].ni[135].nvs" 18304;
	setAttr ".tgi[0].ni[136].x" -3952.857177734375;
	setAttr ".tgi[0].ni[136].y" -6320;
	setAttr ".tgi[0].ni[136].nvs" 18304;
	setAttr ".tgi[0].ni[137].x" -3452.857177734375;
	setAttr ".tgi[0].ni[137].y" 4735.71435546875;
	setAttr ".tgi[0].ni[137].nvs" 18304;
	setAttr ".tgi[0].ni[138].x" -3952.857177734375;
	setAttr ".tgi[0].ni[138].y" 6782.85693359375;
	setAttr ".tgi[0].ni[138].nvs" 18304;
	setAttr ".tgi[0].ni[139].x" -3452.857177734375;
	setAttr ".tgi[0].ni[139].y" 10860;
	setAttr ".tgi[0].ni[139].nvs" 18304;
	setAttr ".tgi[0].ni[140].x" -3452.857177734375;
	setAttr ".tgi[0].ni[140].y" 10657.142578125;
	setAttr ".tgi[0].ni[140].nvs" 18304;
	setAttr ".tgi[0].ni[141].x" -4952.85693359375;
	setAttr ".tgi[0].ni[141].y" -15007.142578125;
	setAttr ".tgi[0].ni[141].nvs" 18304;
	setAttr ".tgi[0].ni[142].x" -3452.857177734375;
	setAttr ".tgi[0].ni[142].y" 4837.14306640625;
	setAttr ".tgi[0].ni[142].nvs" 18304;
	setAttr ".tgi[0].ni[143].x" -3452.857177734375;
	setAttr ".tgi[0].ni[143].y" 8764.2861328125;
	setAttr ".tgi[0].ni[143].nvs" 18304;
	setAttr ".tgi[0].ni[144].x" -3952.857177734375;
	setAttr ".tgi[0].ni[144].y" 6681.4287109375;
	setAttr ".tgi[0].ni[144].nvs" 18304;
	setAttr ".tgi[0].ni[145].x" -3452.857177734375;
	setAttr ".tgi[0].ni[145].y" 10758.5712890625;
	setAttr ".tgi[0].ni[145].nvs" 18304;
	setAttr ".tgi[0].ni[146].x" -4452.85693359375;
	setAttr ".tgi[0].ni[146].y" -6825.71435546875;
	setAttr ".tgi[0].ni[146].nvs" 18304;
	setAttr ".tgi[0].ni[147].x" -4952.85693359375;
	setAttr ".tgi[0].ni[147].y" -1385.7142333984375;
	setAttr ".tgi[0].ni[147].nvs" 18304;
	setAttr ".tgi[0].ni[148].x" -4952.85693359375;
	setAttr ".tgi[0].ni[148].y" -6798.5712890625;
	setAttr ".tgi[0].ni[148].nvs" 18304;
	setAttr ".tgi[0].ni[149].x" -4452.85693359375;
	setAttr ".tgi[0].ni[149].y" -6927.14306640625;
	setAttr ".tgi[0].ni[149].nvs" 18304;
	setAttr ".tgi[0].ni[150].x" -3452.857177734375;
	setAttr ".tgi[0].ni[150].y" 9957.142578125;
	setAttr ".tgi[0].ni[150].nvs" 18304;
	setAttr ".tgi[0].ni[151].x" -3452.857177734375;
	setAttr ".tgi[0].ni[151].y" 9855.7138671875;
	setAttr ".tgi[0].ni[151].nvs" 18304;
	setAttr ".tgi[0].ni[152].x" -3452.857177734375;
	setAttr ".tgi[0].ni[152].y" 4158.5712890625;
	setAttr ".tgi[0].ni[152].nvs" 18304;
	setAttr ".tgi[0].ni[153].x" -4452.85693359375;
	setAttr ".tgi[0].ni[153].y" -2967.142822265625;
	setAttr ".tgi[0].ni[153].nvs" 18304;
	setAttr ".tgi[0].ni[154].x" -4452.85693359375;
	setAttr ".tgi[0].ni[154].y" -11451.4287109375;
	setAttr ".tgi[0].ni[154].nvs" 18304;
	setAttr ".tgi[0].ni[155].x" -4952.85693359375;
	setAttr ".tgi[0].ni[155].y" -1487.142822265625;
	setAttr ".tgi[0].ni[155].nvs" 18304;
	setAttr ".tgi[0].ni[156].x" -3952.857177734375;
	setAttr ".tgi[0].ni[156].y" -6421.4287109375;
	setAttr ".tgi[0].ni[156].nvs" 18304;
	setAttr ".tgi[0].ni[157].x" -3952.857177734375;
	setAttr ".tgi[0].ni[157].y" 4462.85693359375;
	setAttr ".tgi[0].ni[157].nvs" 18304;
	setAttr ".tgi[0].ni[158].x" -3452.857177734375;
	setAttr ".tgi[0].ni[158].y" 4634.28564453125;
	setAttr ".tgi[0].ni[158].nvs" 18304;
	setAttr ".tgi[0].ni[159].x" -3952.857177734375;
	setAttr ".tgi[0].ni[159].y" 6884.28564453125;
	setAttr ".tgi[0].ni[159].nvs" 18304;
	setAttr ".tgi[0].ni[160].x" -4452.85693359375;
	setAttr ".tgi[0].ni[160].y" -6724.28564453125;
	setAttr ".tgi[0].ni[160].nvs" 18304;
	setAttr ".tgi[0].ni[161].x" -3952.857177734375;
	setAttr ".tgi[0].ni[161].y" 4260;
	setAttr ".tgi[0].ni[161].nvs" 18304;
	setAttr ".tgi[0].ni[162].x" -3952.857177734375;
	setAttr ".tgi[0].ni[162].y" 4361.4287109375;
	setAttr ".tgi[0].ni[162].nvs" 18304;
	setAttr ".tgi[0].ni[163].x" -3452.857177734375;
	setAttr ".tgi[0].ni[163].y" 8662.857421875;
	setAttr ".tgi[0].ni[163].nvs" 18304;
	setAttr ".tgi[0].ni[164].x" -4952.85693359375;
	setAttr ".tgi[0].ni[164].y" -7001.4287109375;
	setAttr ".tgi[0].ni[164].nvs" 18304;
	setAttr ".tgi[0].ni[165].x" -3452.857177734375;
	setAttr ".tgi[0].ni[165].y" 9754.2861328125;
	setAttr ".tgi[0].ni[165].nvs" 18304;
	setAttr ".tgi[0].ni[166].x" -3452.857177734375;
	setAttr ".tgi[0].ni[166].y" 2434.28564453125;
	setAttr ".tgi[0].ni[166].nvs" 18304;
	setAttr ".tgi[0].ni[167].x" -3452.857177734375;
	setAttr ".tgi[0].ni[167].y" 8865.7138671875;
	setAttr ".tgi[0].ni[167].nvs" 18304;
	setAttr ".tgi[0].ni[168].x" -3452.857177734375;
	setAttr ".tgi[0].ni[168].y" 2332.857177734375;
	setAttr ".tgi[0].ni[168].nvs" 18304;
	setAttr ".tgi[0].ni[169].x" -3452.857177734375;
	setAttr ".tgi[0].ni[169].y" 4361.4287109375;
	setAttr ".tgi[0].ni[169].nvs" 18304;
	setAttr ".tgi[0].ni[170].x" -4452.85693359375;
	setAttr ".tgi[0].ni[170].y" -2865.71435546875;
	setAttr ".tgi[0].ni[170].nvs" 18304;
	setAttr ".tgi[0].ni[171].x" -3452.857177734375;
	setAttr ".tgi[0].ni[171].y" 2535.71435546875;
	setAttr ".tgi[0].ni[171].nvs" 18304;
	setAttr ".tgi[0].ni[172].x" -4952.85693359375;
	setAttr ".tgi[0].ni[172].y" -6900;
	setAttr ".tgi[0].ni[172].nvs" 18304;
	setAttr ".tgi[0].ni[173].x" -4452.85693359375;
	setAttr ".tgi[0].ni[173].y" -2764.28564453125;
	setAttr ".tgi[0].ni[173].nvs" 18304;
	setAttr ".tgi[0].ni[174].x" -2952.857177734375;
	setAttr ".tgi[0].ni[174].y" 6255.71435546875;
	setAttr ".tgi[0].ni[174].nvs" 18304;
	setAttr ".tgi[0].ni[175].x" -2952.857177734375;
	setAttr ".tgi[0].ni[175].y" 6154.28564453125;
	setAttr ".tgi[0].ni[175].nvs" 18304;
	setAttr ".tgi[0].ni[176].x" -2952.857177734375;
	setAttr ".tgi[0].ni[176].y" 6052.85693359375;
	setAttr ".tgi[0].ni[176].nvs" 18304;
	setAttr ".tgi[0].ni[177].x" 8355.7138671875;
	setAttr ".tgi[0].ni[177].y" 14297.142578125;
	setAttr ".tgi[0].ni[177].nvs" 18304;
	setAttr ".tgi[0].ni[178].x" -2952.857177734375;
	setAttr ".tgi[0].ni[178].y" 5951.4287109375;
	setAttr ".tgi[0].ni[178].nvs" 18304;
	setAttr ".tgi[0].ni[179].x" -2952.857177734375;
	setAttr ".tgi[0].ni[179].y" 5850;
	setAttr ".tgi[0].ni[179].nvs" 18304;
	setAttr ".tgi[0].ni[180].x" -6864.28564453125;
	setAttr ".tgi[0].ni[180].y" -1152.857177734375;
	setAttr ".tgi[0].ni[180].nvs" 18304;
	setAttr ".tgi[0].ni[181].x" -6387.14306640625;
	setAttr ".tgi[0].ni[181].y" -1975.7142333984375;
	setAttr ".tgi[0].ni[181].nvs" 18304;
	setAttr ".tgi[0].ni[182].x" -6387.14306640625;
	setAttr ".tgi[0].ni[182].y" -2178.571533203125;
	setAttr ".tgi[0].ni[182].nvs" 18304;
	setAttr ".tgi[0].ni[183].x" -6387.14306640625;
	setAttr ".tgi[0].ni[183].y" -1671.4285888671875;
	setAttr ".tgi[0].ni[183].nvs" 18304;
	setAttr ".tgi[0].ni[184].x" -6387.14306640625;
	setAttr ".tgi[0].ni[184].y" -1772.857177734375;
	setAttr ".tgi[0].ni[184].nvs" 18304;
	setAttr ".tgi[0].ni[185].x" -2087.142822265625;
	setAttr ".tgi[0].ni[185].y" 14360;
	setAttr ".tgi[0].ni[185].nvs" 18304;
	setAttr ".tgi[0].ni[186].x" -2454.28564453125;
	setAttr ".tgi[0].ni[186].y" 14588.5712890625;
	setAttr ".tgi[0].ni[186].nvs" 18304;
	setAttr ".tgi[0].ni[187].x" 8048.5712890625;
	setAttr ".tgi[0].ni[187].y" 13077.142578125;
	setAttr ".tgi[0].ni[187].nvs" 18304;
	setAttr ".tgi[0].ni[188].x" 8355.7138671875;
	setAttr ".tgi[0].ni[188].y" 13748.5712890625;
	setAttr ".tgi[0].ni[188].nvs" 18304;
	setAttr ".tgi[0].ni[189].x" 8808.5712890625;
	setAttr ".tgi[0].ni[189].y" -15711.4287109375;
	setAttr ".tgi[0].ni[189].nvs" 18304;
	setAttr ".tgi[0].ni[190].x" -2087.142822265625;
	setAttr ".tgi[0].ni[190].y" 13861.4287109375;
	setAttr ".tgi[0].ni[190].nvs" 18304;
	setAttr ".tgi[0].ni[191].x" 7741.4287109375;
	setAttr ".tgi[0].ni[191].y" 12927.142578125;
	setAttr ".tgi[0].ni[191].nvs" 18304;
	setAttr ".tgi[0].ni[192].x" 7434.28564453125;
	setAttr ".tgi[0].ni[192].y" 12752.857421875;
	setAttr ".tgi[0].ni[192].nvs" 18304;
	setAttr ".tgi[0].ni[193].x" 8355.7138671875;
	setAttr ".tgi[0].ni[193].y" 13558.5712890625;
	setAttr ".tgi[0].ni[193].nvs" 18304;
	setAttr ".tgi[0].ni[194].x" 8355.7138671875;
	setAttr ".tgi[0].ni[194].y" 13457.142578125;
	setAttr ".tgi[0].ni[194].nvs" 18304;
	setAttr ".tgi[0].ni[195].x" -3952.857177734375;
	setAttr ".tgi[0].ni[195].y" -5167.14306640625;
	setAttr ".tgi[0].ni[195].nvs" 18304;
	setAttr ".tgi[0].ni[196].x" -3452.857177734375;
	setAttr ".tgi[0].ni[196].y" -2238.571533203125;
	setAttr ".tgi[0].ni[196].nvs" 18304;
	setAttr ".tgi[0].ni[197].x" -2454.28564453125;
	setAttr ".tgi[0].ni[197].y" 6144.28564453125;
	setAttr ".tgi[0].ni[197].nvs" 18304;
	setAttr ".tgi[0].ni[198].x" -2952.857177734375;
	setAttr ".tgi[0].ni[198].y" 5647.14306640625;
	setAttr ".tgi[0].ni[198].nvs" 18304;
	setAttr ".tgi[0].ni[199].x" -2952.857177734375;
	setAttr ".tgi[0].ni[199].y" 5545.71435546875;
	setAttr ".tgi[0].ni[199].nvs" 18304;
	setAttr ".tgi[0].ni[200].x" -2952.857177734375;
	setAttr ".tgi[0].ni[200].y" 5444.28564453125;
	setAttr ".tgi[0].ni[200].nvs" 18304;
	setAttr ".tgi[0].ni[201].x" -4452.85693359375;
	setAttr ".tgi[0].ni[201].y" -12948.5712890625;
	setAttr ".tgi[0].ni[201].nvs" 18304;
	setAttr ".tgi[0].ni[202].x" -3452.857177734375;
	setAttr ".tgi[0].ni[202].y" -2727.142822265625;
	setAttr ".tgi[0].ni[202].nvs" 18304;
	setAttr ".tgi[0].ni[203].x" -3452.857177734375;
	setAttr ".tgi[0].ni[203].y" -2828.571533203125;
	setAttr ".tgi[0].ni[203].nvs" 18304;
	setAttr ".tgi[0].ni[204].x" -3452.857177734375;
	setAttr ".tgi[0].ni[204].y" -2930;
	setAttr ".tgi[0].ni[204].nvs" 18304;
	setAttr ".tgi[0].ni[205].x" -3452.857177734375;
	setAttr ".tgi[0].ni[205].y" -3031.428466796875;
	setAttr ".tgi[0].ni[205].nvs" 18304;
	setAttr ".tgi[0].ni[206].x" -2952.857177734375;
	setAttr ".tgi[0].ni[206].y" 5342.85693359375;
	setAttr ".tgi[0].ni[206].nvs" 18304;
	setAttr ".tgi[0].ni[207].x" -2952.857177734375;
	setAttr ".tgi[0].ni[207].y" 5241.4287109375;
	setAttr ".tgi[0].ni[207].nvs" 18304;
	setAttr ".tgi[0].ni[208].x" -3452.857177734375;
	setAttr ".tgi[0].ni[208].y" -3190;
	setAttr ".tgi[0].ni[208].nvs" 18304;
	setAttr ".tgi[0].ni[209].x" -3952.857177734375;
	setAttr ".tgi[0].ni[209].y" -9541.4287109375;
	setAttr ".tgi[0].ni[209].nvs" 18304;
	setAttr ".tgi[0].ni[210].x" -3952.857177734375;
	setAttr ".tgi[0].ni[210].y" -9642.857421875;
	setAttr ".tgi[0].ni[210].nvs" 18304;
	setAttr ".tgi[0].ni[211].x" -3952.857177734375;
	setAttr ".tgi[0].ni[211].y" -9744.2861328125;
	setAttr ".tgi[0].ni[211].nvs" 18304;
	setAttr ".tgi[0].ni[212].x" -3452.857177734375;
	setAttr ".tgi[0].ni[212].y" -3291.428466796875;
	setAttr ".tgi[0].ni[212].nvs" 18304;
	setAttr ".tgi[0].ni[213].x" -3952.857177734375;
	setAttr ".tgi[0].ni[213].y" -9845.7138671875;
	setAttr ".tgi[0].ni[213].nvs" 18304;
	setAttr ".tgi[0].ni[214].x" -3452.857177734375;
	setAttr ".tgi[0].ni[214].y" -3450;
	setAttr ".tgi[0].ni[214].nvs" 18304;
	setAttr ".tgi[0].ni[215].x" -2952.857177734375;
	setAttr ".tgi[0].ni[215].y" 5140;
	setAttr ".tgi[0].ni[215].nvs" 18304;
	setAttr ".tgi[0].ni[216].x" -2952.857177734375;
	setAttr ".tgi[0].ni[216].y" 5038.5712890625;
	setAttr ".tgi[0].ni[216].nvs" 18304;
	setAttr ".tgi[0].ni[217].x" -3952.857177734375;
	setAttr ".tgi[0].ni[217].y" -9947.142578125;
	setAttr ".tgi[0].ni[217].nvs" 18304;
	setAttr ".tgi[0].ni[218].x" -3952.857177734375;
	setAttr ".tgi[0].ni[218].y" -10048.5712890625;
	setAttr ".tgi[0].ni[218].nvs" 18304;
	setAttr ".tgi[0].ni[219].x" -3952.857177734375;
	setAttr ".tgi[0].ni[219].y" -10150;
	setAttr ".tgi[0].ni[219].nvs" 18304;
	setAttr ".tgi[0].ni[220].x" -3952.857177734375;
	setAttr ".tgi[0].ni[220].y" -10251.4287109375;
	setAttr ".tgi[0].ni[220].nvs" 18304;
	setAttr ".tgi[0].ni[221].x" -3452.857177734375;
	setAttr ".tgi[0].ni[221].y" -3551.428466796875;
	setAttr ".tgi[0].ni[221].nvs" 18304;
	setAttr ".tgi[0].ni[222].x" -2952.857177734375;
	setAttr ".tgi[0].ni[222].y" 4937.14306640625;
	setAttr ".tgi[0].ni[222].nvs" 18304;
	setAttr ".tgi[0].ni[223].x" -2454.28564453125;
	setAttr ".tgi[0].ni[223].y" 6245.71435546875;
	setAttr ".tgi[0].ni[223].nvs" 18304;
	setAttr ".tgi[0].ni[224].x" -2952.857177734375;
	setAttr ".tgi[0].ni[224].y" 6762.85693359375;
	setAttr ".tgi[0].ni[224].nvs" 18304;
	setAttr ".tgi[0].ni[225].x" -2952.857177734375;
	setAttr ".tgi[0].ni[225].y" 5748.5712890625;
	setAttr ".tgi[0].ni[225].nvs" 18304;
	setAttr ".tgi[0].ni[226].x" -2087.142822265625;
	setAttr ".tgi[0].ni[226].y" 14677.142578125;
	setAttr ".tgi[0].ni[226].nvs" 18304;
	setAttr ".tgi[0].ni[227].x" -1780;
	setAttr ".tgi[0].ni[227].y" 12154.2861328125;
	setAttr ".tgi[0].ni[227].nvs" 18304;
	setAttr ".tgi[0].ni[228].x" -2087.142822265625;
	setAttr ".tgi[0].ni[228].y" 14461.4287109375;
	setAttr ".tgi[0].ni[228].nvs" 18304;
	setAttr ".tgi[0].ni[229].x" 8355.7138671875;
	setAttr ".tgi[0].ni[229].y" 14614.2861328125;
	setAttr ".tgi[0].ni[229].nvs" 18304;
	setAttr ".tgi[0].ni[230].x" 4871.4287109375;
	setAttr ".tgi[0].ni[230].y" -894.28570556640625;
	setAttr ".tgi[0].ni[230].nvs" 18304;
	setAttr ".tgi[0].ni[231].x" -5420;
	setAttr ".tgi[0].ni[231].y" -11780;
	setAttr ".tgi[0].ni[231].nvs" 18304;
	setAttr ".tgi[0].ni[232].x" -5420;
	setAttr ".tgi[0].ni[232].y" -11938.5712890625;
	setAttr ".tgi[0].ni[232].nvs" 18304;
	setAttr ".tgi[0].ni[233].x" -5892.85693359375;
	setAttr ".tgi[0].ni[233].y" 3702.857177734375;
	setAttr ".tgi[0].ni[233].nvs" 18304;
	setAttr ".tgi[0].ni[234].x" -5420;
	setAttr ".tgi[0].ni[234].y" -12040;
	setAttr ".tgi[0].ni[234].nvs" 18304;
	setAttr ".tgi[0].ni[235].x" -5892.85693359375;
	setAttr ".tgi[0].ni[235].y" 3804.28564453125;
	setAttr ".tgi[0].ni[235].nvs" 18304;
	setAttr ".tgi[0].ni[236].x" -5892.85693359375;
	setAttr ".tgi[0].ni[236].y" 3544.28564453125;
	setAttr ".tgi[0].ni[236].nvs" 18304;
	setAttr ".tgi[0].ni[237].x" -4452.85693359375;
	setAttr ".tgi[0].ni[237].y" -12448.5712890625;
	setAttr ".tgi[0].ni[237].nvs" 18304;
	setAttr ".tgi[0].ni[238].x" 8355.7138671875;
	setAttr ".tgi[0].ni[238].y" 13355.7138671875;
	setAttr ".tgi[0].ni[238].nvs" 18304;
	setAttr ".tgi[0].ni[239].x" -4452.85693359375;
	setAttr ".tgi[0].ni[239].y" -12550;
	setAttr ".tgi[0].ni[239].nvs" 18304;
	setAttr ".tgi[0].ni[240].x" 8355.7138671875;
	setAttr ".tgi[0].ni[240].y" 13254.2861328125;
	setAttr ".tgi[0].ni[240].nvs" 18304;
	setAttr ".tgi[0].ni[241].x" 8355.7138671875;
	setAttr ".tgi[0].ni[241].y" 13152.857421875;
	setAttr ".tgi[0].ni[241].nvs" 18304;
	setAttr ".tgi[0].ni[242].x" -4452.85693359375;
	setAttr ".tgi[0].ni[242].y" -13050;
	setAttr ".tgi[0].ni[242].nvs" 18304;
	setAttr ".tgi[0].ni[243].x" 2827.142822265625;
	setAttr ".tgi[0].ni[243].y" 13114.2861328125;
	setAttr ".tgi[0].ni[243].nvs" 18304;
	setAttr ".tgi[0].ni[244].x" 1598.5714111328125;
	setAttr ".tgi[0].ni[244].y" 13061.4287109375;
	setAttr ".tgi[0].ni[244].nvs" 18304;
	setAttr ".tgi[0].ni[245].x" 2212.857177734375;
	setAttr ".tgi[0].ni[245].y" 13080;
	setAttr ".tgi[0].ni[245].nvs" 18304;
	setAttr ".tgi[0].ni[246].x" 1291.4285888671875;
	setAttr ".tgi[0].ni[246].y" 13058.5712890625;
	setAttr ".tgi[0].ni[246].nvs" 18304;
	setAttr ".tgi[0].ni[247].x" 2520;
	setAttr ".tgi[0].ni[247].y" 13097.142578125;
	setAttr ".tgi[0].ni[247].nvs" 18304;
	setAttr ".tgi[0].ni[248].x" 1905.7142333984375;
	setAttr ".tgi[0].ni[248].y" 13072.857421875;
	setAttr ".tgi[0].ni[248].nvs" 18304;
	setAttr ".tgi[0].ni[249].x" 4055.71435546875;
	setAttr ".tgi[0].ni[249].y" 13214.2861328125;
	setAttr ".tgi[0].ni[249].nvs" 18304;
	setAttr ".tgi[0].ni[250].x" 3748.571533203125;
	setAttr ".tgi[0].ni[250].y" 13190;
	setAttr ".tgi[0].ni[250].nvs" 18304;
	setAttr ".tgi[0].ni[251].x" 3441.428466796875;
	setAttr ".tgi[0].ni[251].y" 13161.4287109375;
	setAttr ".tgi[0].ni[251].nvs" 18304;
	setAttr ".tgi[0].ni[252].x" 984.28570556640625;
	setAttr ".tgi[0].ni[252].y" 13075.7138671875;
	setAttr ".tgi[0].ni[252].nvs" 18304;
	setAttr ".tgi[0].ni[253].x" 677.14288330078125;
	setAttr ".tgi[0].ni[253].y" 13107.142578125;
	setAttr ".tgi[0].ni[253].nvs" 18304;
	setAttr ".tgi[0].ni[254].x" 3134.28564453125;
	setAttr ".tgi[0].ni[254].y" 13135.7138671875;
	setAttr ".tgi[0].ni[254].nvs" 18304;
	setAttr ".tgi[0].ni[255].x" -5892.85693359375;
	setAttr ".tgi[0].ni[255].y" -4378.5712890625;
	setAttr ".tgi[0].ni[255].nvs" 18304;
	setAttr ".tgi[0].ni[256].x" 397.14285278320313;
	setAttr ".tgi[0].ni[256].y" -95.714286804199219;
	setAttr ".tgi[0].ni[256].nvs" 18304;
	setAttr ".tgi[0].ni[257].x" 1615.7142333984375;
	setAttr ".tgi[0].ni[257].y" 3444.28564453125;
	setAttr ".tgi[0].ni[257].nvs" 18304;
	setAttr ".tgi[0].ni[258].x" -4952.85693359375;
	setAttr ".tgi[0].ni[258].y" -1125.7142333984375;
	setAttr ".tgi[0].ni[258].nvs" 18304;
	setAttr ".tgi[0].ni[259].x" -5420;
	setAttr ".tgi[0].ni[259].y" 661.4285888671875;
	setAttr ".tgi[0].ni[259].nvs" 18304;
	setAttr ".tgi[0].ni[260].x" -3452.857177734375;
	setAttr ".tgi[0].ni[260].y" 1641.4285888671875;
	setAttr ".tgi[0].ni[260].nvs" 18304;
	setAttr ".tgi[0].ni[261].x" -2952.857177734375;
	setAttr ".tgi[0].ni[261].y" 4835.71435546875;
	setAttr ".tgi[0].ni[261].nvs" 18304;
	setAttr ".tgi[0].ni[262].x" -4952.85693359375;
	setAttr ".tgi[0].ni[262].y" -14804.2861328125;
	setAttr ".tgi[0].ni[262].nvs" 18304;
	setAttr ".tgi[0].ni[263].x" -4952.85693359375;
	setAttr ".tgi[0].ni[263].y" -14905.7138671875;
	setAttr ".tgi[0].ni[263].nvs" 18304;
	setAttr ".tgi[0].ni[264].x" -2952.857177734375;
	setAttr ".tgi[0].ni[264].y" 4734.28564453125;
	setAttr ".tgi[0].ni[264].nvs" 18304;
	setAttr ".tgi[0].ni[265].x" -3952.857177734375;
	setAttr ".tgi[0].ni[265].y" -7125.71435546875;
	setAttr ".tgi[0].ni[265].nvs" 18304;
	setAttr ".tgi[0].ni[266].x" -3452.857177734375;
	setAttr ".tgi[0].ni[266].y" 6921.4287109375;
	setAttr ".tgi[0].ni[266].nvs" 18304;
	setAttr ".tgi[0].ni[267].x" -5892.85693359375;
	setAttr ".tgi[0].ni[267].y" -6537.14306640625;
	setAttr ".tgi[0].ni[267].nvs" 18304;
	setAttr ".tgi[0].ni[268].x" -3452.857177734375;
	setAttr ".tgi[0].ni[268].y" 6820;
	setAttr ".tgi[0].ni[268].nvs" 18304;
	setAttr ".tgi[0].ni[269].x" -8994.2861328125;
	setAttr ".tgi[0].ni[269].y" 5990;
	setAttr ".tgi[0].ni[269].nvs" 18304;
	setAttr ".tgi[0].ni[270].x" -3452.857177734375;
	setAttr ".tgi[0].ni[270].y" 1742.857177734375;
	setAttr ".tgi[0].ni[270].nvs" 18304;
	setAttr ".tgi[0].ni[271].x" -6864.28564453125;
	setAttr ".tgi[0].ni[271].y" -1051.4285888671875;
	setAttr ".tgi[0].ni[271].nvs" 18304;
	setAttr ".tgi[0].ni[272].x" -4952.85693359375;
	setAttr ".tgi[0].ni[272].y" -14531.4287109375;
	setAttr ".tgi[0].ni[272].nvs" 18304;
	setAttr ".tgi[0].ni[273].x" -2952.857177734375;
	setAttr ".tgi[0].ni[273].y" 4430;
	setAttr ".tgi[0].ni[273].nvs" 18304;
	setAttr ".tgi[0].ni[274].x" -2952.857177734375;
	setAttr ".tgi[0].ni[274].y" 4328.5712890625;
	setAttr ".tgi[0].ni[274].nvs" 18304;
	setAttr ".tgi[0].ni[275].x" -2952.857177734375;
	setAttr ".tgi[0].ni[275].y" 4632.85693359375;
	setAttr ".tgi[0].ni[275].nvs" 18304;
	setAttr ".tgi[0].ni[276].x" -6387.14306640625;
	setAttr ".tgi[0].ni[276].y" -967.14288330078125;
	setAttr ".tgi[0].ni[276].nvs" 18304;
	setAttr ".tgi[0].ni[277].x" -2952.857177734375;
	setAttr ".tgi[0].ni[277].y" 4531.4287109375;
	setAttr ".tgi[0].ni[277].nvs" 18304;
	setAttr ".tgi[0].ni[278].x" -2952.857177734375;
	setAttr ".tgi[0].ni[278].y" 4024.28564453125;
	setAttr ".tgi[0].ni[278].nvs" 18304;
	setAttr ".tgi[0].ni[279].x" -2952.857177734375;
	setAttr ".tgi[0].ni[279].y" 3720;
	setAttr ".tgi[0].ni[279].nvs" 18304;
	setAttr ".tgi[0].ni[280].x" -2952.857177734375;
	setAttr ".tgi[0].ni[280].y" 3618.571533203125;
	setAttr ".tgi[0].ni[280].nvs" 18304;
	setAttr ".tgi[0].ni[281].x" -2952.857177734375;
	setAttr ".tgi[0].ni[281].y" 4227.14306640625;
	setAttr ".tgi[0].ni[281].nvs" 18304;
	setAttr ".tgi[0].ni[282].x" -6864.28564453125;
	setAttr ".tgi[0].ni[282].y" -848.5714111328125;
	setAttr ".tgi[0].ni[282].nvs" 18304;
	setAttr ".tgi[0].ni[283].x" -5892.85693359375;
	setAttr ".tgi[0].ni[283].y" -6638.5712890625;
	setAttr ".tgi[0].ni[283].nvs" 18304;
	setAttr ".tgi[0].ni[284].x" -5420;
	setAttr ".tgi[0].ni[284].y" -3288.571533203125;
	setAttr ".tgi[0].ni[284].nvs" 18304;
	setAttr ".tgi[0].ni[285].x" -8994.2861328125;
	setAttr ".tgi[0].ni[285].y" 6091.4287109375;
	setAttr ".tgi[0].ni[285].nvs" 18304;
	setAttr ".tgi[0].ni[286].x" -3952.857177734375;
	setAttr ".tgi[0].ni[286].y" -7024.28564453125;
	setAttr ".tgi[0].ni[286].nvs" 18304;
	setAttr ".tgi[0].ni[287].x" -7775.71435546875;
	setAttr ".tgi[0].ni[287].y" 3730;
	setAttr ".tgi[0].ni[287].nvs" 18304;
	setAttr ".tgi[0].ni[288].x" -7775.71435546875;
	setAttr ".tgi[0].ni[288].y" 3628.571533203125;
	setAttr ".tgi[0].ni[288].nvs" 18304;
	setAttr ".tgi[0].ni[289].x" -6387.14306640625;
	setAttr ".tgi[0].ni[289].y" -1170;
	setAttr ".tgi[0].ni[289].nvs" 18304;
	setAttr ".tgi[0].ni[290].x" -7775.71435546875;
	setAttr ".tgi[0].ni[290].y" 3527.142822265625;
	setAttr ".tgi[0].ni[290].nvs" 18304;
	setAttr ".tgi[0].ni[291].x" -4952.85693359375;
	setAttr ".tgi[0].ni[291].y" -14430;
	setAttr ".tgi[0].ni[291].nvs" 18304;
	setAttr ".tgi[0].ni[292].x" -4452.85693359375;
	setAttr ".tgi[0].ni[292].y" 5470;
	setAttr ".tgi[0].ni[292].nvs" 18304;
	setAttr ".tgi[0].ni[293].x" -2952.857177734375;
	setAttr ".tgi[0].ni[293].y" 4125.71435546875;
	setAttr ".tgi[0].ni[293].nvs" 18304;
	setAttr ".tgi[0].ni[294].x" -6864.28564453125;
	setAttr ".tgi[0].ni[294].y" -950;
	setAttr ".tgi[0].ni[294].nvs" 18304;
	setAttr ".tgi[0].ni[295].x" -3952.857177734375;
	setAttr ".tgi[0].ni[295].y" -7227.14306640625;
	setAttr ".tgi[0].ni[295].nvs" 18304;
	setAttr ".tgi[0].ni[296].x" -3452.857177734375;
	setAttr ".tgi[0].ni[296].y" 6718.5712890625;
	setAttr ".tgi[0].ni[296].nvs" 18304;
	setAttr ".tgi[0].ni[297].x" -4452.85693359375;
	setAttr ".tgi[0].ni[297].y" 5571.4287109375;
	setAttr ".tgi[0].ni[297].nvs" 18304;
	setAttr ".tgi[0].ni[298].x" -3952.857177734375;
	setAttr ".tgi[0].ni[298].y" -4005.71435546875;
	setAttr ".tgi[0].ni[298].nvs" 18304;
	setAttr ".tgi[0].ni[299].x" -5892.85693359375;
	setAttr ".tgi[0].ni[299].y" -6740;
	setAttr ".tgi[0].ni[299].nvs" 18304;
	setAttr ".tgi[0].ni[300].x" -4452.85693359375;
	setAttr ".tgi[0].ni[300].y" 5672.85693359375;
	setAttr ".tgi[0].ni[300].nvs" 18304;
	setAttr ".tgi[0].ni[301].x" -2952.857177734375;
	setAttr ".tgi[0].ni[301].y" 3922.857177734375;
	setAttr ".tgi[0].ni[301].nvs" 18304;
	setAttr ".tgi[0].ni[302].x" -2952.857177734375;
	setAttr ".tgi[0].ni[302].y" 3821.428466796875;
	setAttr ".tgi[0].ni[302].nvs" 18304;
	setAttr ".tgi[0].ni[303].x" -6387.14306640625;
	setAttr ".tgi[0].ni[303].y" -1068.5714111328125;
	setAttr ".tgi[0].ni[303].nvs" 18304;
	setAttr ".tgi[0].ni[304].x" -5420;
	setAttr ".tgi[0].ni[304].y" -3187.142822265625;
	setAttr ".tgi[0].ni[304].nvs" 18304;
	setAttr ".tgi[0].ni[305].x" -8994.2861328125;
	setAttr ".tgi[0].ni[305].y" 5888.5712890625;
	setAttr ".tgi[0].ni[305].nvs" 18304;
	setAttr ".tgi[0].ni[306].x" -5420;
	setAttr ".tgi[0].ni[306].y" -3390;
	setAttr ".tgi[0].ni[306].nvs" 18304;
	setAttr ".tgi[0].ni[307].x" -4952.85693359375;
	setAttr ".tgi[0].ni[307].y" -14328.5712890625;
	setAttr ".tgi[0].ni[307].nvs" 18304;
	setAttr ".tgi[0].ni[308].x" -3952.857177734375;
	setAttr ".tgi[0].ni[308].y" -4208.5712890625;
	setAttr ".tgi[0].ni[308].nvs" 18304;
	setAttr ".tgi[0].ni[309].x" -3952.857177734375;
	setAttr ".tgi[0].ni[309].y" -4107.14306640625;
	setAttr ".tgi[0].ni[309].nvs" 18304;
	setAttr ".tgi[0].ni[310].x" -3452.857177734375;
	setAttr ".tgi[0].ni[310].y" 1844.2857666015625;
	setAttr ".tgi[0].ni[310].nvs" 18304;
	setAttr ".tgi[0].ni[311].x" -2952.857177734375;
	setAttr ".tgi[0].ni[311].y" 3517.142822265625;
	setAttr ".tgi[0].ni[311].nvs" 18304;
	setAttr ".tgi[0].ni[312].x" -2952.857177734375;
	setAttr ".tgi[0].ni[312].y" 3415.71435546875;
	setAttr ".tgi[0].ni[312].nvs" 18304;
	setAttr ".tgi[0].ni[313].x" -2952.857177734375;
	setAttr ".tgi[0].ni[313].y" 3314.28564453125;
	setAttr ".tgi[0].ni[313].nvs" 18304;
	setAttr ".tgi[0].ni[314].x" -2952.857177734375;
	setAttr ".tgi[0].ni[314].y" 3212.857177734375;
	setAttr ".tgi[0].ni[314].nvs" 18304;
	setAttr ".tgi[0].ni[315].x" -2952.857177734375;
	setAttr ".tgi[0].ni[315].y" 3111.428466796875;
	setAttr ".tgi[0].ni[315].nvs" 18304;
	setAttr ".tgi[0].ni[316].x" -4452.85693359375;
	setAttr ".tgi[0].ni[316].y" -13807.142578125;
	setAttr ".tgi[0].ni[316].nvs" 18304;
	setAttr ".tgi[0].ni[317].x" -3452.857177734375;
	setAttr ".tgi[0].ni[317].y" -4502.85693359375;
	setAttr ".tgi[0].ni[317].nvs" 18304;
	setAttr ".tgi[0].ni[318].x" -3452.857177734375;
	setAttr ".tgi[0].ni[318].y" -4705.71435546875;
	setAttr ".tgi[0].ni[318].nvs" 18304;
	setAttr ".tgi[0].ni[319].x" -3452.857177734375;
	setAttr ".tgi[0].ni[319].y" -4908.5712890625;
	setAttr ".tgi[0].ni[319].nvs" 18304;
	setAttr ".tgi[0].ni[320].x" -3452.857177734375;
	setAttr ".tgi[0].ni[320].y" -5010;
	setAttr ".tgi[0].ni[320].nvs" 18304;
	setAttr ".tgi[0].ni[321].x" -4952.85693359375;
	setAttr ".tgi[0].ni[321].y" -15451.4287109375;
	setAttr ".tgi[0].ni[321].nvs" 18304;
	setAttr ".tgi[0].ni[322].x" -3452.857177734375;
	setAttr ".tgi[0].ni[322].y" -5212.85693359375;
	setAttr ".tgi[0].ni[322].nvs" 18304;
	setAttr ".tgi[0].ni[323].x" -4452.85693359375;
	setAttr ".tgi[0].ni[323].y" -13908.5712890625;
	setAttr ".tgi[0].ni[323].nvs" 18304;
	setAttr ".tgi[0].ni[324].x" -4452.85693359375;
	setAttr ".tgi[0].ni[324].y" -14010;
	setAttr ".tgi[0].ni[324].nvs" 18304;
	setAttr ".tgi[0].ni[325].x" -4452.85693359375;
	setAttr ".tgi[0].ni[325].y" -14111.4287109375;
	setAttr ".tgi[0].ni[325].nvs" 18304;
	setAttr ".tgi[0].ni[326].x" -4452.85693359375;
	setAttr ".tgi[0].ni[326].y" -14212.857421875;
	setAttr ".tgi[0].ni[326].nvs" 18304;
	setAttr ".tgi[0].ni[327].x" -4452.85693359375;
	setAttr ".tgi[0].ni[327].y" -14314.2861328125;
	setAttr ".tgi[0].ni[327].nvs" 18304;
	setAttr ".tgi[0].ni[328].x" -4452.85693359375;
	setAttr ".tgi[0].ni[328].y" -14415.7138671875;
	setAttr ".tgi[0].ni[328].nvs" 18304;
	setAttr ".tgi[0].ni[329].x" 8355.7138671875;
	setAttr ".tgi[0].ni[329].y" 13051.4287109375;
	setAttr ".tgi[0].ni[329].nvs" 18304;
	setAttr ".tgi[0].ni[330].x" 8355.7138671875;
	setAttr ".tgi[0].ni[330].y" 12950;
	setAttr ".tgi[0].ni[330].nvs" 18304;
	setAttr ".tgi[0].ni[331].x" 8355.7138671875;
	setAttr ".tgi[0].ni[331].y" 12848.5712890625;
	setAttr ".tgi[0].ni[331].nvs" 18304;
	setAttr ".tgi[0].ni[332].x" 8355.7138671875;
	setAttr ".tgi[0].ni[332].y" 12537.142578125;
	setAttr ".tgi[0].ni[332].nvs" 18304;
	setAttr ".tgi[0].ni[333].x" 8355.7138671875;
	setAttr ".tgi[0].ni[333].y" 12400;
	setAttr ".tgi[0].ni[333].nvs" 18304;
	setAttr ".tgi[0].ni[334].x" -7290;
	setAttr ".tgi[0].ni[334].y" 1867.142822265625;
	setAttr ".tgi[0].ni[334].nvs" 18304;
	setAttr ".tgi[0].ni[335].x" 8808.5712890625;
	setAttr ".tgi[0].ni[335].y" 15222.857421875;
	setAttr ".tgi[0].ni[335].nvs" 18304;
	setAttr ".tgi[0].ni[336].x" 4362.85693359375;
	setAttr ".tgi[0].ni[336].y" 13240;
	setAttr ".tgi[0].ni[336].nvs" 18304;
	setAttr ".tgi[0].ni[337].x" 6512.85693359375;
	setAttr ".tgi[0].ni[337].y" 13574.2861328125;
	setAttr ".tgi[0].ni[337].nvs" 18304;
	setAttr ".tgi[0].ni[338].x" 6205.71435546875;
	setAttr ".tgi[0].ni[338].y" 13485.7138671875;
	setAttr ".tgi[0].ni[338].nvs" 18304;
	setAttr ".tgi[0].ni[339].x" 7127.14306640625;
	setAttr ".tgi[0].ni[339].y" 13752.857421875;
	setAttr ".tgi[0].ni[339].nvs" 18304;
	setAttr ".tgi[0].ni[340].x" 6820;
	setAttr ".tgi[0].ni[340].y" 13664.2861328125;
	setAttr ".tgi[0].ni[340].nvs" 18304;
	setAttr ".tgi[0].ni[341].x" 8048.5712890625;
	setAttr ".tgi[0].ni[341].y" 15558.5712890625;
	setAttr ".tgi[0].ni[341].nvs" 18304;
	setAttr ".tgi[0].ni[342].x" 5591.4287109375;
	setAttr ".tgi[0].ni[342].y" 13355.7138671875;
	setAttr ".tgi[0].ni[342].nvs" 18304;
	setAttr ".tgi[0].ni[343].x" 5898.5712890625;
	setAttr ".tgi[0].ni[343].y" 13395.7138671875;
	setAttr ".tgi[0].ni[343].nvs" 18304;
	setAttr ".tgi[0].ni[344].x" 4977.14306640625;
	setAttr ".tgi[0].ni[344].y" 13294.2861328125;
	setAttr ".tgi[0].ni[344].nvs" 18304;
	setAttr ".tgi[0].ni[345].x" 4670;
	setAttr ".tgi[0].ni[345].y" 13265.7138671875;
	setAttr ".tgi[0].ni[345].nvs" 18304;
	setAttr ".tgi[0].ni[346].x" 5284.28564453125;
	setAttr ".tgi[0].ni[346].y" 13321.4287109375;
	setAttr ".tgi[0].ni[346].nvs" 18304;
	setAttr ".tgi[0].ni[347].x" -3452.857177734375;
	setAttr ".tgi[0].ni[347].y" -4604.28564453125;
	setAttr ".tgi[0].ni[347].nvs" 18304;
	setAttr ".tgi[0].ni[348].x" -2952.857177734375;
	setAttr ".tgi[0].ni[348].y" 3010;
	setAttr ".tgi[0].ni[348].nvs" 18304;
	setAttr ".tgi[0].ni[349].x" -3452.857177734375;
	setAttr ".tgi[0].ni[349].y" -4807.14306640625;
	setAttr ".tgi[0].ni[349].nvs" 18304;
	setAttr ".tgi[0].ni[350].x" -2952.857177734375;
	setAttr ".tgi[0].ni[350].y" 2908.571533203125;
	setAttr ".tgi[0].ni[350].nvs" 18304;
	setAttr ".tgi[0].ni[351].x" -3452.857177734375;
	setAttr ".tgi[0].ni[351].y" -5111.4287109375;
	setAttr ".tgi[0].ni[351].nvs" 18304;
	setAttr ".tgi[0].ni[352].x" -2952.857177734375;
	setAttr ".tgi[0].ni[352].y" 2807.142822265625;
	setAttr ".tgi[0].ni[352].nvs" 18304;
	setAttr ".tgi[0].ni[353].x" -6387.14306640625;
	setAttr ".tgi[0].ni[353].y" -2381.428466796875;
	setAttr ".tgi[0].ni[353].nvs" 18304;
	setAttr ".tgi[0].ni[354].x" -6387.14306640625;
	setAttr ".tgi[0].ni[354].y" -2077.142822265625;
	setAttr ".tgi[0].ni[354].nvs" 18304;
	setAttr ".tgi[0].ni[355].x" -6387.14306640625;
	setAttr ".tgi[0].ni[355].y" -1874.2857666015625;
	setAttr ".tgi[0].ni[355].nvs" 18304;
	setAttr ".tgi[0].ni[356].x" -4452.85693359375;
	setAttr ".tgi[0].ni[356].y" -13227.142578125;
	setAttr ".tgi[0].ni[356].nvs" 18304;
	setAttr ".tgi[0].ni[357].x" -4452.85693359375;
	setAttr ".tgi[0].ni[357].y" -13328.5712890625;
	setAttr ".tgi[0].ni[357].nvs" 18304;
	setAttr ".tgi[0].ni[358].x" -4452.85693359375;
	setAttr ".tgi[0].ni[358].y" -13430;
	setAttr ".tgi[0].ni[358].nvs" 18304;
	setAttr ".tgi[0].ni[359].x" -4452.85693359375;
	setAttr ".tgi[0].ni[359].y" -13531.4287109375;
	setAttr ".tgi[0].ni[359].nvs" 18304;
	setAttr ".tgi[0].ni[360].x" -4452.85693359375;
	setAttr ".tgi[0].ni[360].y" -13705.7138671875;
	setAttr ".tgi[0].ni[360].nvs" 18304;
	setAttr ".tgi[0].ni[361].x" -3952.857177734375;
	setAttr ".tgi[0].ni[361].y" -8911.4287109375;
	setAttr ".tgi[0].ni[361].nvs" 18304;
	setAttr ".tgi[0].ni[362].x" -3452.857177734375;
	setAttr ".tgi[0].ni[362].y" -2022.857177734375;
	setAttr ".tgi[0].ni[362].nvs" 18304;
	setAttr ".tgi[0].ni[363].x" -3952.857177734375;
	setAttr ".tgi[0].ni[363].y" -8810;
	setAttr ".tgi[0].ni[363].nvs" 18304;
	setAttr ".tgi[0].ni[364].x" -8082.85693359375;
	setAttr ".tgi[0].ni[364].y" 6511.4287109375;
	setAttr ".tgi[0].ni[364].nvs" 18304;
	setAttr ".tgi[0].ni[365].x" -4452.85693359375;
	setAttr ".tgi[0].ni[365].y" -6508.5712890625;
	setAttr ".tgi[0].ni[365].nvs" 18304;
	setAttr ".tgi[0].ni[366].x" -3452.857177734375;
	setAttr ".tgi[0].ni[366].y" -2340;
	setAttr ".tgi[0].ni[366].nvs" 18304;
	setAttr ".tgi[0].ni[367].x" -3952.857177734375;
	setAttr ".tgi[0].ni[367].y" -6637.14306640625;
	setAttr ".tgi[0].ni[367].nvs" 18304;
	setAttr ".tgi[0].ni[368].x" -2454.28564453125;
	setAttr ".tgi[0].ni[368].y" 12441.4287109375;
	setAttr ".tgi[0].ni[368].nvs" 18304;
	setAttr ".tgi[0].ni[369].x" 1415.7142333984375;
	setAttr ".tgi[0].ni[369].y" 1781.4285888671875;
	setAttr ".tgi[0].ni[369].nvs" 18304;
	setAttr ".tgi[0].ni[370].x" -2454.28564453125;
	setAttr ".tgi[0].ni[370].y" 4330;
	setAttr ".tgi[0].ni[370].nvs" 18304;
	setAttr ".tgi[0].ni[371].x" 8808.5712890625;
	setAttr ".tgi[0].ni[371].y" -15581.4287109375;
	setAttr ".tgi[0].ni[371].nvs" 18304;
	setAttr ".tgi[0].ni[372].x" 370;
	setAttr ".tgi[0].ni[372].y" 13174.2861328125;
	setAttr ".tgi[0].ni[372].nvs" 18304;
	setAttr ".tgi[0].ni[373].x" 62.857143402099609;
	setAttr ".tgi[0].ni[373].y" 13268.5712890625;
	setAttr ".tgi[0].ni[373].nvs" 18304;
	setAttr ".tgi[0].ni[374].x" 8048.5712890625;
	setAttr ".tgi[0].ni[374].y" 15081.4287109375;
	setAttr ".tgi[0].ni[374].nvs" 18304;
	setAttr ".tgi[0].ni[375].x" -858.5714111328125;
	setAttr ".tgi[0].ni[375].y" 13632.857421875;
	setAttr ".tgi[0].ni[375].nvs" 18304;
	setAttr ".tgi[0].ni[376].x" -1472.857177734375;
	setAttr ".tgi[0].ni[376].y" 12554.2861328125;
	setAttr ".tgi[0].ni[376].nvs" 18304;
	setAttr ".tgi[0].ni[377].x" -1165.7142333984375;
	setAttr ".tgi[0].ni[377].y" 13070;
	setAttr ".tgi[0].ni[377].nvs" 18304;
	setAttr ".tgi[0].ni[378].x" -244.28572082519531;
	setAttr ".tgi[0].ni[378].y" 13380;
	setAttr ".tgi[0].ni[378].nvs" 18304;
	setAttr ".tgi[0].ni[379].x" -1780;
	setAttr ".tgi[0].ni[379].y" 12884.2861328125;
	setAttr ".tgi[0].ni[379].nvs" 18304;
	setAttr ".tgi[0].ni[380].x" -551.4285888671875;
	setAttr ".tgi[0].ni[380].y" 13511.4287109375;
	setAttr ".tgi[0].ni[380].nvs" 18304;
	setAttr ".tgi[0].ni[381].x" -7775.71435546875;
	setAttr ".tgi[0].ni[381].y" 3425.71435546875;
	setAttr ".tgi[0].ni[381].nvs" 18304;
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
	setAttr -s 8 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 10 ".s";
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
connectAttr "JNT_Clav_Clav01_M_scaleX_Skin_Test_Anim1.o" "JNT_Clav_Clav01_M.sx";
connectAttr "JNT_Clav_Clav01_M_scaleY_Skin_Test_Anim1.o" "JNT_Clav_Clav01_M.sy";
connectAttr "JNT_Clav_Clav01_M_scaleZ_Skin_Test_Anim1.o" "JNT_Clav_Clav01_M.sz";
connectAttr "JNT_Clav_Clav01_M_translateX_Skin_Test_Anim1.o" "JNT_Clav_Clav01_M.tx"
		;
connectAttr "JNT_Clav_Clav01_M_translateY_Skin_Test_Anim1.o" "JNT_Clav_Clav01_M.ty"
		;
connectAttr "JNT_Clav_Clav01_M_translateZ_Skin_Test_Anim1.o" "JNT_Clav_Clav01_M.tz"
		;
connectAttr "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim1.ox" "JNT_Clav_Clav01_M.rx"
		;
connectAttr "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim1.oy" "JNT_Clav_Clav01_M.ry"
		;
connectAttr "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim1.oz" "JNT_Clav_Clav01_M.rz"
		;
connectAttr "JNT_Clav_Clav01_M_visibility_Skin_Test_Anim1.o" "JNT_Clav_Clav01_M.v"
		;
connectAttr "JNT_Clav_Clav01_M.s" "JNT_Arm_Shoulder_M.is";
connectAttr "Joint_Disp.di" "JNT_Arm_Shoulder_M.do";
connectAttr "NODE_Arm_Limb_M.joints" "JNT_Arm_Shoulder_M.limb";
connectAttr "JNT_Arm_Shoulder_M_scaleX_Skin_Test_Anim1.o" "JNT_Arm_Shoulder_M.sx"
		;
connectAttr "JNT_Arm_Shoulder_M_scaleY_Skin_Test_Anim1.o" "JNT_Arm_Shoulder_M.sy"
		;
connectAttr "JNT_Arm_Shoulder_M_scaleZ_Skin_Test_Anim1.o" "JNT_Arm_Shoulder_M.sz"
		;
connectAttr "JNT_Arm_Shoulder_M_translateX_Skin_Test_Anim1.o" "JNT_Arm_Shoulder_M.tx"
		;
connectAttr "JNT_Arm_Shoulder_M_translateY_Skin_Test_Anim1.o" "JNT_Arm_Shoulder_M.ty"
		;
connectAttr "JNT_Arm_Shoulder_M_translateZ_Skin_Test_Anim1.o" "JNT_Arm_Shoulder_M.tz"
		;
connectAttr "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim1.ox" "JNT_Arm_Shoulder_M.rx"
		;
connectAttr "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim1.oy" "JNT_Arm_Shoulder_M.ry"
		;
connectAttr "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim1.oz" "JNT_Arm_Shoulder_M.rz"
		;
connectAttr "JNT_Arm_Shoulder_M_visibility_Skin_Test_Anim1.o" "JNT_Arm_Shoulder_M.v"
		;
connectAttr "JNT_Arm_Shoulder_M.s" "JNT_BicepTwist_BicepTwist_M.is";
connectAttr "Joint_Disp.di" "JNT_BicepTwist_BicepTwist_M.do";
connectAttr "NODE_BicepTwist_Limb_M.joints" "JNT_BicepTwist_BicepTwist_M.limb";
connectAttr "JNT_BicepTwist_BicepTwist_M_translateX_Skin_Test_Anim1.o" "JNT_BicepTwist_BicepTwist_M.tx"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_translateY_Skin_Test_Anim1.o" "JNT_BicepTwist_BicepTwist_M.ty"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_translateZ_Skin_Test_Anim1.o" "JNT_BicepTwist_BicepTwist_M.tz"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim1.ox" "JNT_BicepTwist_BicepTwist_M.rx"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim1.oy" "JNT_BicepTwist_BicepTwist_M.ry"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim1.oz" "JNT_BicepTwist_BicepTwist_M.rz"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_visibility_Skin_Test_Anim1.o" "JNT_BicepTwist_BicepTwist_M.v"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_scaleX_Skin_Test_Anim1.o" "JNT_BicepTwist_BicepTwist_M.sx"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_scaleY_Skin_Test_Anim1.o" "JNT_BicepTwist_BicepTwist_M.sy"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_scaleZ_Skin_Test_Anim1.o" "JNT_BicepTwist_BicepTwist_M.sz"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M.group" "GRP0_BicepTwist_Joint_M.joint";
connectAttr "NODE_BicepTwist_Limb_M.jointGroups" "GRP0_BicepTwist_Joint_M.limb";
connectAttr "NODE_BicepTwist_Limb_M.usedGroups" "GRP0_BicepTwist_Joint_M.used";
connectAttr "Control_Disp.di" "CTR0_BicepTwist_Joint_M.do";
connectAttr "GRP0_BicepTwist_Joint_M.control" "CTR0_BicepTwist_Joint_M.group";
connectAttr "JNT_Arm_Shoulder_M.s" "JNT_Arm_Elbow_M.is";
connectAttr "Joint_Disp.di" "JNT_Arm_Elbow_M.do";
connectAttr "NODE_Arm_Limb_M.joints" "JNT_Arm_Elbow_M.limb";
connectAttr "JNT_Arm_Elbow_M_scaleX_Skin_Test_Anim1.o" "JNT_Arm_Elbow_M.sx";
connectAttr "JNT_Arm_Elbow_M_scaleY_Skin_Test_Anim1.o" "JNT_Arm_Elbow_M.sy";
connectAttr "JNT_Arm_Elbow_M_scaleZ_Skin_Test_Anim1.o" "JNT_Arm_Elbow_M.sz";
connectAttr "JNT_Arm_Elbow_M_translateX_Skin_Test_Anim1.o" "JNT_Arm_Elbow_M.tx";
connectAttr "JNT_Arm_Elbow_M_translateY_Skin_Test_Anim1.o" "JNT_Arm_Elbow_M.ty";
connectAttr "JNT_Arm_Elbow_M_translateZ_Skin_Test_Anim1.o" "JNT_Arm_Elbow_M.tz";
connectAttr "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim1.ox" "JNT_Arm_Elbow_M.rx";
connectAttr "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim1.oy" "JNT_Arm_Elbow_M.ry";
connectAttr "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim1.oz" "JNT_Arm_Elbow_M.rz";
connectAttr "JNT_Arm_Elbow_M_visibility_Skin_Test_Anim1.o" "JNT_Arm_Elbow_M.v";
connectAttr "JNT_Arm_Elbow_M.s" "JNT_ForearmTwist_ForearmTwist1_M.is";
connectAttr "Joint_Disp.di" "JNT_ForearmTwist_ForearmTwist1_M.do";
connectAttr "NODE_ForearmTwist_Limb_M.joints" "JNT_ForearmTwist_ForearmTwist1_M.limb"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_translateX_Skin_Test_Anim1.o" "JNT_ForearmTwist_ForearmTwist1_M.tx"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_translateY_Skin_Test_Anim1.o" "JNT_ForearmTwist_ForearmTwist1_M.ty"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_translateZ_Skin_Test_Anim1.o" "JNT_ForearmTwist_ForearmTwist1_M.tz"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim1.ox" "JNT_ForearmTwist_ForearmTwist1_M.rx"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim1.oy" "JNT_ForearmTwist_ForearmTwist1_M.ry"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim1.oz" "JNT_ForearmTwist_ForearmTwist1_M.rz"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_visibility_Skin_Test_Anim1.o" "JNT_ForearmTwist_ForearmTwist1_M.v"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_scaleX_Skin_Test_Anim1.o" "JNT_ForearmTwist_ForearmTwist1_M.sx"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_scaleY_Skin_Test_Anim1.o" "JNT_ForearmTwist_ForearmTwist1_M.sy"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_scaleZ_Skin_Test_Anim1.o" "JNT_ForearmTwist_ForearmTwist1_M.sz"
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
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_translateX_Skin_Test_Anim1.o" "JNT_ForearmTwist_ForearmTwist2_M.tx"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_translateY_Skin_Test_Anim1.o" "JNT_ForearmTwist_ForearmTwist2_M.ty"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_translateZ_Skin_Test_Anim1.o" "JNT_ForearmTwist_ForearmTwist2_M.tz"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim1.ox" "JNT_ForearmTwist_ForearmTwist2_M.rx"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim1.oy" "JNT_ForearmTwist_ForearmTwist2_M.ry"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim1.oz" "JNT_ForearmTwist_ForearmTwist2_M.rz"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_visibility_Skin_Test_Anim1.o" "JNT_ForearmTwist_ForearmTwist2_M.v"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_scaleX_Skin_Test_Anim1.o" "JNT_ForearmTwist_ForearmTwist2_M.sx"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_scaleY_Skin_Test_Anim1.o" "JNT_ForearmTwist_ForearmTwist2_M.sy"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_scaleZ_Skin_Test_Anim1.o" "JNT_ForearmTwist_ForearmTwist2_M.sz"
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
connectAttr "JNT_Arm_Wrist_M_scaleX_Skin_Test_Anim1.o" "JNT_Arm_Wrist_M.sx";
connectAttr "JNT_Arm_Wrist_M_scaleY_Skin_Test_Anim1.o" "JNT_Arm_Wrist_M.sy";
connectAttr "JNT_Arm_Wrist_M_scaleZ_Skin_Test_Anim1.o" "JNT_Arm_Wrist_M.sz";
connectAttr "JNT_Arm_Wrist_M_translateX_Skin_Test_Anim1.o" "JNT_Arm_Wrist_M.tx";
connectAttr "JNT_Arm_Wrist_M_translateY_Skin_Test_Anim1.o" "JNT_Arm_Wrist_M.ty";
connectAttr "JNT_Arm_Wrist_M_translateZ_Skin_Test_Anim1.o" "JNT_Arm_Wrist_M.tz";
connectAttr "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim1.ox" "JNT_Arm_Wrist_M.rx";
connectAttr "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim1.oy" "JNT_Arm_Wrist_M.ry";
connectAttr "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim1.oz" "JNT_Arm_Wrist_M.rz";
connectAttr "JNT_Arm_Wrist_M_visibility_Skin_Test_Anim1.o" "JNT_Arm_Wrist_M.v";
connectAttr "JNT_Arm_Wrist_M.s" "JNT_Middle_Middle1_M.is";
connectAttr "Joint_Disp.di" "JNT_Middle_Middle1_M.do";
connectAttr "NODE_Middle_Limb_M.joints" "JNT_Middle_Middle1_M.limb";
connectAttr "JNT_Middle_Middle1_M_scaleX_Skin_Test_Anim1.o" "JNT_Middle_Middle1_M.sx"
		;
connectAttr "JNT_Middle_Middle1_M_scaleY_Skin_Test_Anim1.o" "JNT_Middle_Middle1_M.sy"
		;
connectAttr "JNT_Middle_Middle1_M_scaleZ_Skin_Test_Anim1.o" "JNT_Middle_Middle1_M.sz"
		;
connectAttr "JNT_Middle_Middle1_M_translateX_Skin_Test_Anim1.o" "JNT_Middle_Middle1_M.tx"
		;
connectAttr "JNT_Middle_Middle1_M_translateY_Skin_Test_Anim1.o" "JNT_Middle_Middle1_M.ty"
		;
connectAttr "JNT_Middle_Middle1_M_translateZ_Skin_Test_Anim1.o" "JNT_Middle_Middle1_M.tz"
		;
connectAttr "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim1.ox" "JNT_Middle_Middle1_M.rx"
		;
connectAttr "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim1.oy" "JNT_Middle_Middle1_M.ry"
		;
connectAttr "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim1.oz" "JNT_Middle_Middle1_M.rz"
		;
connectAttr "JNT_Middle_Middle1_M_visibility_Skin_Test_Anim1.o" "JNT_Middle_Middle1_M.v"
		;
connectAttr "JNT_Middle_Middle1_M.s" "JNT_Middle_Middle2_M.is";
connectAttr "Joint_Disp.di" "JNT_Middle_Middle2_M.do";
connectAttr "NODE_Middle_Limb_M.joints" "JNT_Middle_Middle2_M.limb";
connectAttr "JNT_Middle_Middle2_M_scaleX_Skin_Test_Anim1.o" "JNT_Middle_Middle2_M.sx"
		;
connectAttr "JNT_Middle_Middle2_M_scaleY_Skin_Test_Anim1.o" "JNT_Middle_Middle2_M.sy"
		;
connectAttr "JNT_Middle_Middle2_M_scaleZ_Skin_Test_Anim1.o" "JNT_Middle_Middle2_M.sz"
		;
connectAttr "JNT_Middle_Middle2_M_translateX_Skin_Test_Anim1.o" "JNT_Middle_Middle2_M.tx"
		;
connectAttr "JNT_Middle_Middle2_M_translateY_Skin_Test_Anim1.o" "JNT_Middle_Middle2_M.ty"
		;
connectAttr "JNT_Middle_Middle2_M_translateZ_Skin_Test_Anim1.o" "JNT_Middle_Middle2_M.tz"
		;
connectAttr "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim1.ox" "JNT_Middle_Middle2_M.rx"
		;
connectAttr "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim1.oy" "JNT_Middle_Middle2_M.ry"
		;
connectAttr "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim1.oz" "JNT_Middle_Middle2_M.rz"
		;
connectAttr "JNT_Middle_Middle2_M_visibility_Skin_Test_Anim1.o" "JNT_Middle_Middle2_M.v"
		;
connectAttr "JNT_Middle_Middle2_M.s" "JNT_Middle_Middle3_M.is";
connectAttr "Joint_Disp.di" "JNT_Middle_Middle3_M.do";
connectAttr "NODE_Middle_Limb_M.joints" "JNT_Middle_Middle3_M.limb";
connectAttr "JNT_Middle_Middle3_M_scaleX_Skin_Test_Anim1.o" "JNT_Middle_Middle3_M.sx"
		;
connectAttr "JNT_Middle_Middle3_M_scaleY_Skin_Test_Anim1.o" "JNT_Middle_Middle3_M.sy"
		;
connectAttr "JNT_Middle_Middle3_M_scaleZ_Skin_Test_Anim1.o" "JNT_Middle_Middle3_M.sz"
		;
connectAttr "JNT_Middle_Middle3_M_translateX_Skin_Test_Anim1.o" "JNT_Middle_Middle3_M.tx"
		;
connectAttr "JNT_Middle_Middle3_M_translateY_Skin_Test_Anim1.o" "JNT_Middle_Middle3_M.ty"
		;
connectAttr "JNT_Middle_Middle3_M_translateZ_Skin_Test_Anim1.o" "JNT_Middle_Middle3_M.tz"
		;
connectAttr "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim1.ox" "JNT_Middle_Middle3_M.rx"
		;
connectAttr "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim1.oy" "JNT_Middle_Middle3_M.ry"
		;
connectAttr "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim1.oz" "JNT_Middle_Middle3_M.rz"
		;
connectAttr "JNT_Middle_Middle3_M_visibility_Skin_Test_Anim1.o" "JNT_Middle_Middle3_M.v"
		;
connectAttr "JNT_Middle_Middle3_M.s" "JNT_Middle_Middle4_M.is";
connectAttr "Joint_Disp.di" "JNT_Middle_Middle4_M.do";
connectAttr "NODE_Middle_Limb_M.joints" "JNT_Middle_Middle4_M.limb";
connectAttr "JNT_Middle_Middle4_M_translateX_Skin_Test_Anim1.o" "JNT_Middle_Middle4_M.tx"
		;
connectAttr "JNT_Middle_Middle4_M_translateY_Skin_Test_Anim1.o" "JNT_Middle_Middle4_M.ty"
		;
connectAttr "JNT_Middle_Middle4_M_translateZ_Skin_Test_Anim1.o" "JNT_Middle_Middle4_M.tz"
		;
connectAttr "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim1.ox" "JNT_Middle_Middle4_M.rx"
		;
connectAttr "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim1.oy" "JNT_Middle_Middle4_M.ry"
		;
connectAttr "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim1.oz" "JNT_Middle_Middle4_M.rz"
		;
connectAttr "JNT_Middle_Middle4_M_visibility_Skin_Test_Anim1.o" "JNT_Middle_Middle4_M.v"
		;
connectAttr "JNT_Middle_Middle4_M_scaleX_Skin_Test_Anim1.o" "JNT_Middle_Middle4_M.sx"
		;
connectAttr "JNT_Middle_Middle4_M_scaleY_Skin_Test_Anim1.o" "JNT_Middle_Middle4_M.sy"
		;
connectAttr "JNT_Middle_Middle4_M_scaleZ_Skin_Test_Anim1.o" "JNT_Middle_Middle4_M.sz"
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
connectAttr "JNT_Ring_Ring1_M_scaleX_Skin_Test_Anim1.o" "JNT_Ring_Ring1_M.sx";
connectAttr "JNT_Ring_Ring1_M_scaleY_Skin_Test_Anim1.o" "JNT_Ring_Ring1_M.sy";
connectAttr "JNT_Ring_Ring1_M_scaleZ_Skin_Test_Anim1.o" "JNT_Ring_Ring1_M.sz";
connectAttr "JNT_Ring_Ring1_M_translateX_Skin_Test_Anim1.o" "JNT_Ring_Ring1_M.tx"
		;
connectAttr "JNT_Ring_Ring1_M_translateY_Skin_Test_Anim1.o" "JNT_Ring_Ring1_M.ty"
		;
connectAttr "JNT_Ring_Ring1_M_translateZ_Skin_Test_Anim1.o" "JNT_Ring_Ring1_M.tz"
		;
connectAttr "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim1.ox" "JNT_Ring_Ring1_M.rx";
connectAttr "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim1.oy" "JNT_Ring_Ring1_M.ry";
connectAttr "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim1.oz" "JNT_Ring_Ring1_M.rz";
connectAttr "JNT_Ring_Ring1_M_visibility_Skin_Test_Anim1.o" "JNT_Ring_Ring1_M.v"
		;
connectAttr "JNT_Ring_Ring1_M.s" "JNT_Ring_Ring2_M.is";
connectAttr "Joint_Disp.di" "JNT_Ring_Ring2_M.do";
connectAttr "NODE_Ring_Limb_M.joints" "JNT_Ring_Ring2_M.limb";
connectAttr "JNT_Ring_Ring2_M_scaleX_Skin_Test_Anim1.o" "JNT_Ring_Ring2_M.sx";
connectAttr "JNT_Ring_Ring2_M_scaleY_Skin_Test_Anim1.o" "JNT_Ring_Ring2_M.sy";
connectAttr "JNT_Ring_Ring2_M_scaleZ_Skin_Test_Anim1.o" "JNT_Ring_Ring2_M.sz";
connectAttr "JNT_Ring_Ring2_M_translateX_Skin_Test_Anim1.o" "JNT_Ring_Ring2_M.tx"
		;
connectAttr "JNT_Ring_Ring2_M_translateY_Skin_Test_Anim1.o" "JNT_Ring_Ring2_M.ty"
		;
connectAttr "JNT_Ring_Ring2_M_translateZ_Skin_Test_Anim1.o" "JNT_Ring_Ring2_M.tz"
		;
connectAttr "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim1.ox" "JNT_Ring_Ring2_M.rx";
connectAttr "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim1.oy" "JNT_Ring_Ring2_M.ry";
connectAttr "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim1.oz" "JNT_Ring_Ring2_M.rz";
connectAttr "JNT_Ring_Ring2_M_visibility_Skin_Test_Anim1.o" "JNT_Ring_Ring2_M.v"
		;
connectAttr "JNT_Ring_Ring2_M.s" "JNT_Ring_Ring3_M.is";
connectAttr "Joint_Disp.di" "JNT_Ring_Ring3_M.do";
connectAttr "NODE_Ring_Limb_M.joints" "JNT_Ring_Ring3_M.limb";
connectAttr "JNT_Ring_Ring3_M_scaleX_Skin_Test_Anim1.o" "JNT_Ring_Ring3_M.sx";
connectAttr "JNT_Ring_Ring3_M_scaleY_Skin_Test_Anim1.o" "JNT_Ring_Ring3_M.sy";
connectAttr "JNT_Ring_Ring3_M_scaleZ_Skin_Test_Anim1.o" "JNT_Ring_Ring3_M.sz";
connectAttr "JNT_Ring_Ring3_M_translateX_Skin_Test_Anim1.o" "JNT_Ring_Ring3_M.tx"
		;
connectAttr "JNT_Ring_Ring3_M_translateY_Skin_Test_Anim1.o" "JNT_Ring_Ring3_M.ty"
		;
connectAttr "JNT_Ring_Ring3_M_translateZ_Skin_Test_Anim1.o" "JNT_Ring_Ring3_M.tz"
		;
connectAttr "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim1.ox" "JNT_Ring_Ring3_M.rx";
connectAttr "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim1.oy" "JNT_Ring_Ring3_M.ry";
connectAttr "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim1.oz" "JNT_Ring_Ring3_M.rz";
connectAttr "JNT_Ring_Ring3_M_visibility_Skin_Test_Anim1.o" "JNT_Ring_Ring3_M.v"
		;
connectAttr "JNT_Ring_Ring3_M.s" "JNT_Ring_Ring4_M.is";
connectAttr "Joint_Disp.di" "JNT_Ring_Ring4_M.do";
connectAttr "NODE_Ring_Limb_M.joints" "JNT_Ring_Ring4_M.limb";
connectAttr "JNT_Ring_Ring4_M_translateX_Skin_Test_Anim1.o" "JNT_Ring_Ring4_M.tx"
		;
connectAttr "JNT_Ring_Ring4_M_translateY_Skin_Test_Anim1.o" "JNT_Ring_Ring4_M.ty"
		;
connectAttr "JNT_Ring_Ring4_M_translateZ_Skin_Test_Anim1.o" "JNT_Ring_Ring4_M.tz"
		;
connectAttr "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim1.ox" "JNT_Ring_Ring4_M.rx";
connectAttr "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim1.oy" "JNT_Ring_Ring4_M.ry";
connectAttr "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim1.oz" "JNT_Ring_Ring4_M.rz";
connectAttr "JNT_Ring_Ring4_M_visibility_Skin_Test_Anim1.o" "JNT_Ring_Ring4_M.v"
		;
connectAttr "JNT_Ring_Ring4_M_scaleX_Skin_Test_Anim1.o" "JNT_Ring_Ring4_M.sx";
connectAttr "JNT_Ring_Ring4_M_scaleY_Skin_Test_Anim1.o" "JNT_Ring_Ring4_M.sy";
connectAttr "JNT_Ring_Ring4_M_scaleZ_Skin_Test_Anim1.o" "JNT_Ring_Ring4_M.sz";
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
connectAttr "JNT_Index_Index1_M_scaleX_Skin_Test_Anim1.o" "JNT_Index_Index1_M.sx"
		;
connectAttr "JNT_Index_Index1_M_scaleY_Skin_Test_Anim1.o" "JNT_Index_Index1_M.sy"
		;
connectAttr "JNT_Index_Index1_M_scaleZ_Skin_Test_Anim1.o" "JNT_Index_Index1_M.sz"
		;
connectAttr "JNT_Index_Index1_M_translateX_Skin_Test_Anim1.o" "JNT_Index_Index1_M.tx"
		;
connectAttr "JNT_Index_Index1_M_translateY_Skin_Test_Anim1.o" "JNT_Index_Index1_M.ty"
		;
connectAttr "JNT_Index_Index1_M_translateZ_Skin_Test_Anim1.o" "JNT_Index_Index1_M.tz"
		;
connectAttr "JNT_Index_Index1_M_rotate_Skin_Test_Anim1.ox" "JNT_Index_Index1_M.rx"
		;
connectAttr "JNT_Index_Index1_M_rotate_Skin_Test_Anim1.oy" "JNT_Index_Index1_M.ry"
		;
connectAttr "JNT_Index_Index1_M_rotate_Skin_Test_Anim1.oz" "JNT_Index_Index1_M.rz"
		;
connectAttr "JNT_Index_Index1_M_visibility_Skin_Test_Anim1.o" "JNT_Index_Index1_M.v"
		;
connectAttr "JNT_Index_Index1_M.s" "JNT_Index_Index2_M.is";
connectAttr "Joint_Disp.di" "JNT_Index_Index2_M.do";
connectAttr "NODE_Index_Limb_M.joints" "JNT_Index_Index2_M.limb";
connectAttr "JNT_Index_Index2_M_scaleX_Skin_Test_Anim1.o" "JNT_Index_Index2_M.sx"
		;
connectAttr "JNT_Index_Index2_M_scaleY_Skin_Test_Anim1.o" "JNT_Index_Index2_M.sy"
		;
connectAttr "JNT_Index_Index2_M_scaleZ_Skin_Test_Anim1.o" "JNT_Index_Index2_M.sz"
		;
connectAttr "JNT_Index_Index2_M_translateX_Skin_Test_Anim1.o" "JNT_Index_Index2_M.tx"
		;
connectAttr "JNT_Index_Index2_M_translateY_Skin_Test_Anim1.o" "JNT_Index_Index2_M.ty"
		;
connectAttr "JNT_Index_Index2_M_translateZ_Skin_Test_Anim1.o" "JNT_Index_Index2_M.tz"
		;
connectAttr "JNT_Index_Index2_M_rotate_Skin_Test_Anim1.ox" "JNT_Index_Index2_M.rx"
		;
connectAttr "JNT_Index_Index2_M_rotate_Skin_Test_Anim1.oy" "JNT_Index_Index2_M.ry"
		;
connectAttr "JNT_Index_Index2_M_rotate_Skin_Test_Anim1.oz" "JNT_Index_Index2_M.rz"
		;
connectAttr "JNT_Index_Index2_M_visibility_Skin_Test_Anim1.o" "JNT_Index_Index2_M.v"
		;
connectAttr "JNT_Index_Index2_M.s" "JNT_Index_Index3_M.is";
connectAttr "Joint_Disp.di" "JNT_Index_Index3_M.do";
connectAttr "NODE_Index_Limb_M.joints" "JNT_Index_Index3_M.limb";
connectAttr "JNT_Index_Index3_M_scaleX_Skin_Test_Anim1.o" "JNT_Index_Index3_M.sx"
		;
connectAttr "JNT_Index_Index3_M_scaleY_Skin_Test_Anim1.o" "JNT_Index_Index3_M.sy"
		;
connectAttr "JNT_Index_Index3_M_scaleZ_Skin_Test_Anim1.o" "JNT_Index_Index3_M.sz"
		;
connectAttr "JNT_Index_Index3_M_translateX_Skin_Test_Anim1.o" "JNT_Index_Index3_M.tx"
		;
connectAttr "JNT_Index_Index3_M_translateY_Skin_Test_Anim1.o" "JNT_Index_Index3_M.ty"
		;
connectAttr "JNT_Index_Index3_M_translateZ_Skin_Test_Anim1.o" "JNT_Index_Index3_M.tz"
		;
connectAttr "JNT_Index_Index3_M_rotate_Skin_Test_Anim1.ox" "JNT_Index_Index3_M.rx"
		;
connectAttr "JNT_Index_Index3_M_rotate_Skin_Test_Anim1.oy" "JNT_Index_Index3_M.ry"
		;
connectAttr "JNT_Index_Index3_M_rotate_Skin_Test_Anim1.oz" "JNT_Index_Index3_M.rz"
		;
connectAttr "JNT_Index_Index3_M_visibility_Skin_Test_Anim1.o" "JNT_Index_Index3_M.v"
		;
connectAttr "JNT_Index_Index3_M.s" "JNT_Index_Index4_M.is";
connectAttr "Joint_Disp.di" "JNT_Index_Index4_M.do";
connectAttr "NODE_Index_Limb_M.joints" "JNT_Index_Index4_M.limb";
connectAttr "JNT_Index_Index4_M_translateX_Skin_Test_Anim1.o" "JNT_Index_Index4_M.tx"
		;
connectAttr "JNT_Index_Index4_M_translateY_Skin_Test_Anim1.o" "JNT_Index_Index4_M.ty"
		;
connectAttr "JNT_Index_Index4_M_translateZ_Skin_Test_Anim1.o" "JNT_Index_Index4_M.tz"
		;
connectAttr "JNT_Index_Index4_M_rotate_Skin_Test_Anim1.ox" "JNT_Index_Index4_M.rx"
		;
connectAttr "JNT_Index_Index4_M_rotate_Skin_Test_Anim1.oy" "JNT_Index_Index4_M.ry"
		;
connectAttr "JNT_Index_Index4_M_rotate_Skin_Test_Anim1.oz" "JNT_Index_Index4_M.rz"
		;
connectAttr "JNT_Index_Index4_M_visibility_Skin_Test_Anim1.o" "JNT_Index_Index4_M.v"
		;
connectAttr "JNT_Index_Index4_M_scaleX_Skin_Test_Anim1.o" "JNT_Index_Index4_M.sx"
		;
connectAttr "JNT_Index_Index4_M_scaleY_Skin_Test_Anim1.o" "JNT_Index_Index4_M.sy"
		;
connectAttr "JNT_Index_Index4_M_scaleZ_Skin_Test_Anim1.o" "JNT_Index_Index4_M.sz"
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
connectAttr "JNT_Pinkie_Pinkey1_M_scaleX_Skin_Test_Anim1.o" "JNT_Pinkie_Pinkey1_M.sx"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_scaleY_Skin_Test_Anim1.o" "JNT_Pinkie_Pinkey1_M.sy"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_scaleZ_Skin_Test_Anim1.o" "JNT_Pinkie_Pinkey1_M.sz"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_translateX_Skin_Test_Anim1.o" "JNT_Pinkie_Pinkey1_M.tx"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_translateY_Skin_Test_Anim1.o" "JNT_Pinkie_Pinkey1_M.ty"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_translateZ_Skin_Test_Anim1.o" "JNT_Pinkie_Pinkey1_M.tz"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim1.ox" "JNT_Pinkie_Pinkey1_M.rx"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim1.oy" "JNT_Pinkie_Pinkey1_M.ry"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim1.oz" "JNT_Pinkie_Pinkey1_M.rz"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_visibility_Skin_Test_Anim1.o" "JNT_Pinkie_Pinkey1_M.v"
		;
connectAttr "JNT_Pinkie_Pinkey1_M.s" "JNT_Pinkie_Pinkey2_M.is";
connectAttr "Joint_Disp.di" "JNT_Pinkie_Pinkey2_M.do";
connectAttr "NODE_Pinkie_Limb_M.joints" "JNT_Pinkie_Pinkey2_M.limb";
connectAttr "JNT_Pinkie_Pinkey2_M_scaleX_Skin_Test_Anim1.o" "JNT_Pinkie_Pinkey2_M.sx"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_scaleY_Skin_Test_Anim1.o" "JNT_Pinkie_Pinkey2_M.sy"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_scaleZ_Skin_Test_Anim1.o" "JNT_Pinkie_Pinkey2_M.sz"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_translateX_Skin_Test_Anim1.o" "JNT_Pinkie_Pinkey2_M.tx"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_translateY_Skin_Test_Anim1.o" "JNT_Pinkie_Pinkey2_M.ty"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_translateZ_Skin_Test_Anim1.o" "JNT_Pinkie_Pinkey2_M.tz"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim1.ox" "JNT_Pinkie_Pinkey2_M.rx"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim1.oy" "JNT_Pinkie_Pinkey2_M.ry"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim1.oz" "JNT_Pinkie_Pinkey2_M.rz"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_visibility_Skin_Test_Anim1.o" "JNT_Pinkie_Pinkey2_M.v"
		;
connectAttr "JNT_Pinkie_Pinkey2_M.s" "JNT_Pinkie_Pinkey3_M.is";
connectAttr "Joint_Disp.di" "JNT_Pinkie_Pinkey3_M.do";
connectAttr "NODE_Pinkie_Limb_M.joints" "JNT_Pinkie_Pinkey3_M.limb";
connectAttr "JNT_Pinkie_Pinkey3_M_scaleX_Skin_Test_Anim1.o" "JNT_Pinkie_Pinkey3_M.sx"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_scaleY_Skin_Test_Anim1.o" "JNT_Pinkie_Pinkey3_M.sy"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_scaleZ_Skin_Test_Anim1.o" "JNT_Pinkie_Pinkey3_M.sz"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_translateX_Skin_Test_Anim1.o" "JNT_Pinkie_Pinkey3_M.tx"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_translateY_Skin_Test_Anim1.o" "JNT_Pinkie_Pinkey3_M.ty"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_translateZ_Skin_Test_Anim1.o" "JNT_Pinkie_Pinkey3_M.tz"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim1.ox" "JNT_Pinkie_Pinkey3_M.rx"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim1.oy" "JNT_Pinkie_Pinkey3_M.ry"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim1.oz" "JNT_Pinkie_Pinkey3_M.rz"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_visibility_Skin_Test_Anim1.o" "JNT_Pinkie_Pinkey3_M.v"
		;
connectAttr "JNT_Pinkie_Pinkey3_M.s" "JNT_Pinkie_Pinkey4_M.is";
connectAttr "Joint_Disp.di" "JNT_Pinkie_Pinkey4_M.do";
connectAttr "NODE_Pinkie_Limb_M.joints" "JNT_Pinkie_Pinkey4_M.limb";
connectAttr "JNT_Pinkie_Pinkey4_M_translateX_Skin_Test_Anim1.o" "JNT_Pinkie_Pinkey4_M.tx"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_translateY_Skin_Test_Anim1.o" "JNT_Pinkie_Pinkey4_M.ty"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_translateZ_Skin_Test_Anim1.o" "JNT_Pinkie_Pinkey4_M.tz"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim1.ox" "JNT_Pinkie_Pinkey4_M.rx"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim1.oy" "JNT_Pinkie_Pinkey4_M.ry"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim1.oz" "JNT_Pinkie_Pinkey4_M.rz"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_visibility_Skin_Test_Anim1.o" "JNT_Pinkie_Pinkey4_M.v"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_scaleX_Skin_Test_Anim1.o" "JNT_Pinkie_Pinkey4_M.sx"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_scaleY_Skin_Test_Anim1.o" "JNT_Pinkie_Pinkey4_M.sy"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_scaleZ_Skin_Test_Anim1.o" "JNT_Pinkie_Pinkey4_M.sz"
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
connectAttr "JNT_Thumb_Thumb1_M_scaleX_Skin_Test_Anim1.o" "JNT_Thumb_Thumb1_M.sx"
		;
connectAttr "JNT_Thumb_Thumb1_M_scaleY_Skin_Test_Anim1.o" "JNT_Thumb_Thumb1_M.sy"
		;
connectAttr "JNT_Thumb_Thumb1_M_scaleZ_Skin_Test_Anim1.o" "JNT_Thumb_Thumb1_M.sz"
		;
connectAttr "JNT_Thumb_Thumb1_M_translateX_Skin_Test_Anim1.o" "JNT_Thumb_Thumb1_M.tx"
		;
connectAttr "JNT_Thumb_Thumb1_M_translateY_Skin_Test_Anim1.o" "JNT_Thumb_Thumb1_M.ty"
		;
connectAttr "JNT_Thumb_Thumb1_M_translateZ_Skin_Test_Anim1.o" "JNT_Thumb_Thumb1_M.tz"
		;
connectAttr "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim1.ox" "JNT_Thumb_Thumb1_M.rx"
		;
connectAttr "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim1.oy" "JNT_Thumb_Thumb1_M.ry"
		;
connectAttr "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim1.oz" "JNT_Thumb_Thumb1_M.rz"
		;
connectAttr "JNT_Thumb_Thumb1_M_visibility_Skin_Test_Anim1.o" "JNT_Thumb_Thumb1_M.v"
		;
connectAttr "JNT_Thumb_Thumb1_M.s" "JNT_Thumb_Thumb2_M.is";
connectAttr "Joint_Disp.di" "JNT_Thumb_Thumb2_M.do";
connectAttr "NODE_Thumb_Limb_M.joints" "JNT_Thumb_Thumb2_M.limb";
connectAttr "JNT_Thumb_Thumb2_M_scaleX_Skin_Test_Anim1.o" "JNT_Thumb_Thumb2_M.sx"
		;
connectAttr "JNT_Thumb_Thumb2_M_scaleY_Skin_Test_Anim1.o" "JNT_Thumb_Thumb2_M.sy"
		;
connectAttr "JNT_Thumb_Thumb2_M_scaleZ_Skin_Test_Anim1.o" "JNT_Thumb_Thumb2_M.sz"
		;
connectAttr "JNT_Thumb_Thumb2_M_translateX_Skin_Test_Anim1.o" "JNT_Thumb_Thumb2_M.tx"
		;
connectAttr "JNT_Thumb_Thumb2_M_translateY_Skin_Test_Anim1.o" "JNT_Thumb_Thumb2_M.ty"
		;
connectAttr "JNT_Thumb_Thumb2_M_translateZ_Skin_Test_Anim1.o" "JNT_Thumb_Thumb2_M.tz"
		;
connectAttr "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim1.ox" "JNT_Thumb_Thumb2_M.rx"
		;
connectAttr "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim1.oy" "JNT_Thumb_Thumb2_M.ry"
		;
connectAttr "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim1.oz" "JNT_Thumb_Thumb2_M.rz"
		;
connectAttr "JNT_Thumb_Thumb2_M_visibility_Skin_Test_Anim1.o" "JNT_Thumb_Thumb2_M.v"
		;
connectAttr "JNT_Thumb_Thumb2_M.s" "JNT_Thumb_Thumb3_M.is";
connectAttr "Joint_Disp.di" "JNT_Thumb_Thumb3_M.do";
connectAttr "NODE_Thumb_Limb_M.joints" "JNT_Thumb_Thumb3_M.limb";
connectAttr "JNT_Thumb_Thumb3_M_scaleX_Skin_Test_Anim1.o" "JNT_Thumb_Thumb3_M.sx"
		;
connectAttr "JNT_Thumb_Thumb3_M_scaleY_Skin_Test_Anim1.o" "JNT_Thumb_Thumb3_M.sy"
		;
connectAttr "JNT_Thumb_Thumb3_M_scaleZ_Skin_Test_Anim1.o" "JNT_Thumb_Thumb3_M.sz"
		;
connectAttr "JNT_Thumb_Thumb3_M_translateX_Skin_Test_Anim1.o" "JNT_Thumb_Thumb3_M.tx"
		;
connectAttr "JNT_Thumb_Thumb3_M_translateY_Skin_Test_Anim1.o" "JNT_Thumb_Thumb3_M.ty"
		;
connectAttr "JNT_Thumb_Thumb3_M_translateZ_Skin_Test_Anim1.o" "JNT_Thumb_Thumb3_M.tz"
		;
connectAttr "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim1.ox" "JNT_Thumb_Thumb3_M.rx"
		;
connectAttr "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim1.oy" "JNT_Thumb_Thumb3_M.ry"
		;
connectAttr "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim1.oz" "JNT_Thumb_Thumb3_M.rz"
		;
connectAttr "JNT_Thumb_Thumb3_M_visibility_Skin_Test_Anim1.o" "JNT_Thumb_Thumb3_M.v"
		;
connectAttr "JNT_Thumb_Thumb3_M.s" "JNT_Thumb_Thumb4_M.is";
connectAttr "Joint_Disp.di" "JNT_Thumb_Thumb4_M.do";
connectAttr "NODE_Thumb_Limb_M.joints" "JNT_Thumb_Thumb4_M.limb";
connectAttr "JNT_Thumb_Thumb4_M_translateX_Skin_Test_Anim1.o" "JNT_Thumb_Thumb4_M.tx"
		;
connectAttr "JNT_Thumb_Thumb4_M_translateY_Skin_Test_Anim1.o" "JNT_Thumb_Thumb4_M.ty"
		;
connectAttr "JNT_Thumb_Thumb4_M_translateZ_Skin_Test_Anim1.o" "JNT_Thumb_Thumb4_M.tz"
		;
connectAttr "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim1.ox" "JNT_Thumb_Thumb4_M.rx"
		;
connectAttr "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim1.oy" "JNT_Thumb_Thumb4_M.ry"
		;
connectAttr "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim1.oz" "JNT_Thumb_Thumb4_M.rz"
		;
connectAttr "JNT_Thumb_Thumb4_M_visibility_Skin_Test_Anim1.o" "JNT_Thumb_Thumb4_M.v"
		;
connectAttr "JNT_Thumb_Thumb4_M_scaleX_Skin_Test_Anim1.o" "JNT_Thumb_Thumb4_M.sx"
		;
connectAttr "JNT_Thumb_Thumb4_M_scaleY_Skin_Test_Anim1.o" "JNT_Thumb_Thumb4_M.sy"
		;
connectAttr "JNT_Thumb_Thumb4_M_scaleZ_Skin_Test_Anim1.o" "JNT_Thumb_Thumb4_M.sz"
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
connectAttr "groupId1.id" "Arm_Mesh2Shape.iog.og[0].gid";
connectAttr "temp_Mesh_Human_Biped_01_lambert2SG.mwc" "Arm_Mesh2Shape.iog.og[0].gco"
		;
connectAttr "skinCluster2GroupId.id" "Arm_Mesh2Shape.iog.og[1].gid";
connectAttr "skinCluster2Set.mwc" "Arm_Mesh2Shape.iog.og[1].gco";
connectAttr "groupId7.id" "Arm_Mesh2Shape.iog.og[2].gid";
connectAttr "tweakSet3.mwc" "Arm_Mesh2Shape.iog.og[2].gco";
connectAttr "skinCluster2.og[0]" "Arm_Mesh2Shape.i";
connectAttr "Meshes_Disp.di" "Arm_Mesh2Shape.do";
connectAttr "TEMP_RigRoot.meshes" "Arm_Mesh2Shape.rigRoot";
connectAttr "tweak2.vl[0].vt[0]" "Arm_Mesh2Shape.twl";
connectAttr "skinCluster2.pfrsMeshes" "Arm_Mesh2Shape.pfrsSkinCluster";
connectAttr "polySplit3.out" "Arm_Mesh2ShapeOrig.i";
connectAttr "polySplit3.out" "Arm_Mesh3Shape.i";
connectAttr "groupId1.id" "Arm_Mesh3Shape.iog.og[0].gid";
connectAttr "Meshes_Disp.di" "Arm_Mesh3Shape.do";
connectAttr "Arm_Mesh2Shape.backupMesh" "Arm_Mesh3Shape.backupMesh";
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
relationship "link" ":lightLinker1" "temp_Mesh_Human_Biped_01_lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Mesh_Human_Biped_01_lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "LControlsMaterialSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "MControlsMaterialSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "RControlsMaterialSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "temp_Mesh_Human_Biped_01_lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[3]" "Control_Disp1.id";
connectAttr "layerManager.dli[4]" "Joint_Disp1.id";
connectAttr "lambert2.oc" "Mesh_Human_Biped_01_lambert2SG.ss";
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
connectAttr "Skin_Test_Anim1.sl" "BaseAnimation.chsl[1]";
connectAttr "Skin_Test_Anim1.play" "BaseAnimation.cdly[1]";
connectAttr "BaseAnimation.csol" "Skin_Test_Anim1.sslo";
connectAttr "BaseAnimation.fgwt" "Skin_Test_Anim1.pwth";
connectAttr "BaseAnimation.omte" "Skin_Test_Anim1.pmte";
connectAttr "JNT_Clav_Clav01_M.v" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Clav_Clav01_M.tx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Clav_Clav01_M.ty" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Clav_Clav01_M.tz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Clav_Clav01_M.rx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Clav_Clav01_M.ry" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Clav_Clav01_M.rz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Clav_Clav01_M.sx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Clav_Clav01_M.sy" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Clav_Clav01_M.sz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Arm_Shoulder_M.v" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Arm_Shoulder_M.tx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Arm_Shoulder_M.ty" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Arm_Shoulder_M.tz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Arm_Shoulder_M.rx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Arm_Shoulder_M.ry" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Arm_Shoulder_M.rz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Arm_Shoulder_M.sx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Arm_Shoulder_M.sy" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Arm_Shoulder_M.sz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Arm_Elbow_M.v" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Arm_Elbow_M.tx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Arm_Elbow_M.ty" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Arm_Elbow_M.tz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Arm_Elbow_M.rx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Arm_Elbow_M.ry" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Arm_Elbow_M.rz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Arm_Elbow_M.sx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Arm_Elbow_M.sy" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Arm_Elbow_M.sz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Arm_Wrist_M.v" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Arm_Wrist_M.tx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Arm_Wrist_M.ty" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Arm_Wrist_M.tz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Arm_Wrist_M.rx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Arm_Wrist_M.ry" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Arm_Wrist_M.rz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Arm_Wrist_M.sx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Arm_Wrist_M.sy" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Arm_Wrist_M.sz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index1_M.v" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index1_M.tx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index1_M.ty" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index1_M.tz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index1_M.rx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index1_M.ry" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index1_M.rz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index1_M.sx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index1_M.sy" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index1_M.sz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index2_M.v" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index2_M.tx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index2_M.ty" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index2_M.tz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index2_M.rx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index2_M.ry" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index2_M.rz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index2_M.sx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index2_M.sy" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index2_M.sz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index3_M.v" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index3_M.tx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index3_M.ty" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index3_M.tz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index3_M.rx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index3_M.ry" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index3_M.rz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index3_M.sx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index3_M.sy" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index3_M.sz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index4_M.v" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index4_M.tx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index4_M.ty" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index4_M.tz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index4_M.rx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index4_M.ry" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index4_M.rz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index4_M.sx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index4_M.sy" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Index_Index4_M.sz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle1_M.v" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle1_M.tx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle1_M.ty" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle1_M.tz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle1_M.rx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle1_M.ry" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle1_M.rz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle1_M.sx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle1_M.sy" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle1_M.sz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle2_M.v" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle2_M.tx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle2_M.ty" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle2_M.tz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle2_M.rx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle2_M.ry" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle2_M.rz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle2_M.sx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle2_M.sy" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle2_M.sz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle3_M.v" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle3_M.tx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle3_M.ty" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle3_M.tz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle3_M.rx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle3_M.ry" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle3_M.rz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle3_M.sx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle3_M.sy" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle3_M.sz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle4_M.v" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle4_M.tx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle4_M.ty" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle4_M.tz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle4_M.rx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle4_M.ry" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle4_M.rz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle4_M.sx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle4_M.sy" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Middle_Middle4_M.sz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey1_M.v" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey1_M.tx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey1_M.ty" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey1_M.tz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey1_M.rx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey1_M.ry" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey1_M.rz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey1_M.sx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey1_M.sy" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey1_M.sz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey2_M.v" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey2_M.tx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey2_M.ty" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey2_M.tz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey2_M.rx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey2_M.ry" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey2_M.rz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey2_M.sx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey2_M.sy" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey2_M.sz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey3_M.v" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey3_M.tx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey3_M.ty" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey3_M.tz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey3_M.rx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey3_M.ry" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey3_M.rz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey3_M.sx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey3_M.sy" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey3_M.sz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey4_M.v" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey4_M.tx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey4_M.ty" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey4_M.tz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey4_M.rx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey4_M.ry" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey4_M.rz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey4_M.sx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey4_M.sy" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Pinkie_Pinkey4_M.sz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring1_M.v" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring1_M.tx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring1_M.ty" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring1_M.tz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring1_M.rx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring1_M.ry" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring1_M.rz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring1_M.sx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring1_M.sy" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring1_M.sz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring2_M.v" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring2_M.tx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring2_M.ty" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring2_M.tz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring2_M.rx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring2_M.ry" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring2_M.rz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring2_M.sx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring2_M.sy" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring2_M.sz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring3_M.v" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring3_M.tx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring3_M.ty" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring3_M.tz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring3_M.rx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring3_M.ry" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring3_M.rz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring3_M.sx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring3_M.sy" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring3_M.sz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring4_M.v" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring4_M.tx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring4_M.ty" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring4_M.tz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring4_M.rx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring4_M.ry" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring4_M.rz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring4_M.sx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring4_M.sy" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Ring_Ring4_M.sz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb1_M.v" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb1_M.tx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb1_M.ty" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb1_M.tz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb1_M.rx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb1_M.ry" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb1_M.rz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb1_M.sx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb1_M.sy" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb1_M.sz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb2_M.v" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb2_M.tx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb2_M.ty" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb2_M.tz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb2_M.rx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb2_M.ry" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb2_M.rz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb2_M.sx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb2_M.sy" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb2_M.sz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb3_M.v" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb3_M.tx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb3_M.ty" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb3_M.tz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb3_M.rx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb3_M.ry" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb3_M.rz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb3_M.sx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb3_M.sy" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb3_M.sz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb4_M.v" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb4_M.tx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb4_M.ty" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb4_M.tz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb4_M.rx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb4_M.ry" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb4_M.rz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb4_M.sx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb4_M.sy" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Thumb_Thumb4_M.sz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.v" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.tx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.ty" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.tz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.rx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.ry" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.rz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.sx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.sy" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.sz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.v" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.tx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.ty" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.tz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.rx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.ry" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.rz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.sx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.sy" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.sz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_BicepTwist_BicepTwist_M.v" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_BicepTwist_BicepTwist_M.tx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_BicepTwist_BicepTwist_M.ty" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_BicepTwist_BicepTwist_M.tz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_BicepTwist_BicepTwist_M.rx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_BicepTwist_BicepTwist_M.ry" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_BicepTwist_BicepTwist_M.rz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_BicepTwist_BicepTwist_M.sx" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_BicepTwist_BicepTwist_M.sy" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_BicepTwist_BicepTwist_M.sz" "Skin_Test_Anim1.dsm" -na;
connectAttr "JNT_Clav_Clav01_M_visibility_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[0]"
		;
connectAttr "JNT_Clav_Clav01_M_translateX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[1]"
		;
connectAttr "JNT_Clav_Clav01_M_translateY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[2]"
		;
connectAttr "JNT_Clav_Clav01_M_translateZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[3]"
		;
connectAttr "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[7]"
		;
connectAttr "JNT_Clav_Clav01_M_scaleX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[8]"
		;
connectAttr "JNT_Clav_Clav01_M_scaleY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[9]"
		;
connectAttr "JNT_Clav_Clav01_M_scaleZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[10]"
		;
connectAttr "JNT_Arm_Shoulder_M_visibility_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[11]"
		;
connectAttr "JNT_Arm_Shoulder_M_translateX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[12]"
		;
connectAttr "JNT_Arm_Shoulder_M_translateY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[13]"
		;
connectAttr "JNT_Arm_Shoulder_M_translateZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[14]"
		;
connectAttr "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[18]"
		;
connectAttr "JNT_Arm_Shoulder_M_scaleX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[19]"
		;
connectAttr "JNT_Arm_Shoulder_M_scaleY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[20]"
		;
connectAttr "JNT_Arm_Shoulder_M_scaleZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[21]"
		;
connectAttr "JNT_Arm_Elbow_M_visibility_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[22]"
		;
connectAttr "JNT_Arm_Elbow_M_translateX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[23]"
		;
connectAttr "JNT_Arm_Elbow_M_translateY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[24]"
		;
connectAttr "JNT_Arm_Elbow_M_translateZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[25]"
		;
connectAttr "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[29]"
		;
connectAttr "JNT_Arm_Elbow_M_scaleX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[30]"
		;
connectAttr "JNT_Arm_Elbow_M_scaleY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[31]"
		;
connectAttr "JNT_Arm_Elbow_M_scaleZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[32]"
		;
connectAttr "JNT_Arm_Wrist_M_visibility_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[33]"
		;
connectAttr "JNT_Arm_Wrist_M_translateX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[34]"
		;
connectAttr "JNT_Arm_Wrist_M_translateY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[35]"
		;
connectAttr "JNT_Arm_Wrist_M_translateZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[36]"
		;
connectAttr "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[40]"
		;
connectAttr "JNT_Arm_Wrist_M_scaleX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[41]"
		;
connectAttr "JNT_Arm_Wrist_M_scaleY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[42]"
		;
connectAttr "JNT_Arm_Wrist_M_scaleZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[43]"
		;
connectAttr "JNT_Index_Index1_M_visibility_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[44]"
		;
connectAttr "JNT_Index_Index1_M_translateX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[45]"
		;
connectAttr "JNT_Index_Index1_M_translateY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[46]"
		;
connectAttr "JNT_Index_Index1_M_translateZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[47]"
		;
connectAttr "JNT_Index_Index1_M_rotate_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[51]"
		;
connectAttr "JNT_Index_Index1_M_scaleX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[52]"
		;
connectAttr "JNT_Index_Index1_M_scaleY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[53]"
		;
connectAttr "JNT_Index_Index1_M_scaleZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[54]"
		;
connectAttr "JNT_Index_Index2_M_visibility_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[55]"
		;
connectAttr "JNT_Index_Index2_M_translateX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[56]"
		;
connectAttr "JNT_Index_Index2_M_translateY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[57]"
		;
connectAttr "JNT_Index_Index2_M_translateZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[58]"
		;
connectAttr "JNT_Index_Index2_M_rotate_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[62]"
		;
connectAttr "JNT_Index_Index2_M_scaleX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[63]"
		;
connectAttr "JNT_Index_Index2_M_scaleY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[64]"
		;
connectAttr "JNT_Index_Index2_M_scaleZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[65]"
		;
connectAttr "JNT_Index_Index3_M_visibility_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[66]"
		;
connectAttr "JNT_Index_Index3_M_translateX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[67]"
		;
connectAttr "JNT_Index_Index3_M_translateY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[68]"
		;
connectAttr "JNT_Index_Index3_M_translateZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[69]"
		;
connectAttr "JNT_Index_Index3_M_rotate_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[73]"
		;
connectAttr "JNT_Index_Index3_M_scaleX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[74]"
		;
connectAttr "JNT_Index_Index3_M_scaleY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[75]"
		;
connectAttr "JNT_Index_Index3_M_scaleZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[76]"
		;
connectAttr "JNT_Index_Index4_M_visibility_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[77]"
		;
connectAttr "JNT_Index_Index4_M_translateX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[78]"
		;
connectAttr "JNT_Index_Index4_M_translateY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[79]"
		;
connectAttr "JNT_Index_Index4_M_translateZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[80]"
		;
connectAttr "JNT_Index_Index4_M_rotate_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[84]"
		;
connectAttr "JNT_Index_Index4_M_scaleX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[85]"
		;
connectAttr "JNT_Index_Index4_M_scaleY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[86]"
		;
connectAttr "JNT_Index_Index4_M_scaleZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[87]"
		;
connectAttr "JNT_Middle_Middle1_M_visibility_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[88]"
		;
connectAttr "JNT_Middle_Middle1_M_translateX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[89]"
		;
connectAttr "JNT_Middle_Middle1_M_translateY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[90]"
		;
connectAttr "JNT_Middle_Middle1_M_translateZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[91]"
		;
connectAttr "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[95]"
		;
connectAttr "JNT_Middle_Middle1_M_scaleX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[96]"
		;
connectAttr "JNT_Middle_Middle1_M_scaleY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[97]"
		;
connectAttr "JNT_Middle_Middle1_M_scaleZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[98]"
		;
connectAttr "JNT_Middle_Middle2_M_visibility_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[99]"
		;
connectAttr "JNT_Middle_Middle2_M_translateX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[100]"
		;
connectAttr "JNT_Middle_Middle2_M_translateY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[101]"
		;
connectAttr "JNT_Middle_Middle2_M_translateZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[102]"
		;
connectAttr "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[106]"
		;
connectAttr "JNT_Middle_Middle2_M_scaleX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[107]"
		;
connectAttr "JNT_Middle_Middle2_M_scaleY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[108]"
		;
connectAttr "JNT_Middle_Middle2_M_scaleZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[109]"
		;
connectAttr "JNT_Middle_Middle3_M_visibility_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[110]"
		;
connectAttr "JNT_Middle_Middle3_M_translateX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[111]"
		;
connectAttr "JNT_Middle_Middle3_M_translateY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[112]"
		;
connectAttr "JNT_Middle_Middle3_M_translateZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[113]"
		;
connectAttr "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[117]"
		;
connectAttr "JNT_Middle_Middle3_M_scaleX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[118]"
		;
connectAttr "JNT_Middle_Middle3_M_scaleY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[119]"
		;
connectAttr "JNT_Middle_Middle3_M_scaleZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[120]"
		;
connectAttr "JNT_Middle_Middle4_M_visibility_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[121]"
		;
connectAttr "JNT_Middle_Middle4_M_translateX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[122]"
		;
connectAttr "JNT_Middle_Middle4_M_translateY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[123]"
		;
connectAttr "JNT_Middle_Middle4_M_translateZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[124]"
		;
connectAttr "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[128]"
		;
connectAttr "JNT_Middle_Middle4_M_scaleX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[129]"
		;
connectAttr "JNT_Middle_Middle4_M_scaleY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[130]"
		;
connectAttr "JNT_Middle_Middle4_M_scaleZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[131]"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_visibility_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[132]"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_translateX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[133]"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_translateY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[134]"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_translateZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[135]"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[139]"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_scaleX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[140]"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_scaleY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[141]"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_scaleZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[142]"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_visibility_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[143]"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_translateX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[144]"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_translateY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[145]"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_translateZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[146]"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[150]"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_scaleX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[151]"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_scaleY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[152]"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_scaleZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[153]"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_visibility_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[154]"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_translateX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[155]"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_translateY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[156]"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_translateZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[157]"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[161]"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_scaleX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[162]"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_scaleY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[163]"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_scaleZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[164]"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_visibility_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[165]"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_translateX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[166]"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_translateY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[167]"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_translateZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[168]"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[172]"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_scaleX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[173]"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_scaleY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[174]"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_scaleZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[175]"
		;
connectAttr "JNT_Ring_Ring1_M_visibility_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[176]"
		;
connectAttr "JNT_Ring_Ring1_M_translateX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[177]"
		;
connectAttr "JNT_Ring_Ring1_M_translateY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[178]"
		;
connectAttr "JNT_Ring_Ring1_M_translateZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[179]"
		;
connectAttr "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[183]"
		;
connectAttr "JNT_Ring_Ring1_M_scaleX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[184]"
		;
connectAttr "JNT_Ring_Ring1_M_scaleY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[185]"
		;
connectAttr "JNT_Ring_Ring1_M_scaleZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[186]"
		;
connectAttr "JNT_Ring_Ring2_M_visibility_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[187]"
		;
connectAttr "JNT_Ring_Ring2_M_translateX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[188]"
		;
connectAttr "JNT_Ring_Ring2_M_translateY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[189]"
		;
connectAttr "JNT_Ring_Ring2_M_translateZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[190]"
		;
connectAttr "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[194]"
		;
connectAttr "JNT_Ring_Ring2_M_scaleX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[195]"
		;
connectAttr "JNT_Ring_Ring2_M_scaleY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[196]"
		;
connectAttr "JNT_Ring_Ring2_M_scaleZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[197]"
		;
connectAttr "JNT_Ring_Ring3_M_visibility_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[198]"
		;
connectAttr "JNT_Ring_Ring3_M_translateX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[199]"
		;
connectAttr "JNT_Ring_Ring3_M_translateY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[200]"
		;
connectAttr "JNT_Ring_Ring3_M_translateZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[201]"
		;
connectAttr "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[205]"
		;
connectAttr "JNT_Ring_Ring3_M_scaleX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[206]"
		;
connectAttr "JNT_Ring_Ring3_M_scaleY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[207]"
		;
connectAttr "JNT_Ring_Ring3_M_scaleZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[208]"
		;
connectAttr "JNT_Ring_Ring4_M_visibility_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[209]"
		;
connectAttr "JNT_Ring_Ring4_M_translateX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[210]"
		;
connectAttr "JNT_Ring_Ring4_M_translateY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[211]"
		;
connectAttr "JNT_Ring_Ring4_M_translateZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[212]"
		;
connectAttr "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[216]"
		;
connectAttr "JNT_Ring_Ring4_M_scaleX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[217]"
		;
connectAttr "JNT_Ring_Ring4_M_scaleY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[218]"
		;
connectAttr "JNT_Ring_Ring4_M_scaleZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[219]"
		;
connectAttr "JNT_Thumb_Thumb1_M_visibility_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[220]"
		;
connectAttr "JNT_Thumb_Thumb1_M_translateX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[221]"
		;
connectAttr "JNT_Thumb_Thumb1_M_translateY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[222]"
		;
connectAttr "JNT_Thumb_Thumb1_M_translateZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[223]"
		;
connectAttr "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[227]"
		;
connectAttr "JNT_Thumb_Thumb1_M_scaleX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[228]"
		;
connectAttr "JNT_Thumb_Thumb1_M_scaleY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[229]"
		;
connectAttr "JNT_Thumb_Thumb1_M_scaleZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[230]"
		;
connectAttr "JNT_Thumb_Thumb2_M_visibility_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[231]"
		;
connectAttr "JNT_Thumb_Thumb2_M_translateX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[232]"
		;
connectAttr "JNT_Thumb_Thumb2_M_translateY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[233]"
		;
connectAttr "JNT_Thumb_Thumb2_M_translateZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[234]"
		;
connectAttr "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[238]"
		;
connectAttr "JNT_Thumb_Thumb2_M_scaleX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[239]"
		;
connectAttr "JNT_Thumb_Thumb2_M_scaleY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[240]"
		;
connectAttr "JNT_Thumb_Thumb2_M_scaleZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[241]"
		;
connectAttr "JNT_Thumb_Thumb3_M_visibility_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[242]"
		;
connectAttr "JNT_Thumb_Thumb3_M_translateX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[243]"
		;
connectAttr "JNT_Thumb_Thumb3_M_translateY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[244]"
		;
connectAttr "JNT_Thumb_Thumb3_M_translateZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[245]"
		;
connectAttr "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[249]"
		;
connectAttr "JNT_Thumb_Thumb3_M_scaleX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[250]"
		;
connectAttr "JNT_Thumb_Thumb3_M_scaleY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[251]"
		;
connectAttr "JNT_Thumb_Thumb3_M_scaleZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[252]"
		;
connectAttr "JNT_Thumb_Thumb4_M_visibility_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[253]"
		;
connectAttr "JNT_Thumb_Thumb4_M_translateX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[254]"
		;
connectAttr "JNT_Thumb_Thumb4_M_translateY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[255]"
		;
connectAttr "JNT_Thumb_Thumb4_M_translateZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[256]"
		;
connectAttr "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[260]"
		;
connectAttr "JNT_Thumb_Thumb4_M_scaleX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[261]"
		;
connectAttr "JNT_Thumb_Thumb4_M_scaleY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[262]"
		;
connectAttr "JNT_Thumb_Thumb4_M_scaleZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[263]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_visibility_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[264]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_translateX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[265]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_translateY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[266]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_translateZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[267]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[271]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_scaleX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[272]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_scaleY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[273]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_scaleZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[274]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_visibility_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[275]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_translateX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[276]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_translateY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[277]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_translateZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[278]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[282]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_scaleX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[283]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_scaleY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[284]"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_scaleZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[285]"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_visibility_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[286]"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_translateX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[287]"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_translateY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[288]"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_translateZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[289]"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[293]"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_scaleX_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[294]"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_scaleY_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[295]"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_scaleZ_Skin_Test_Anim1.msg" "Skin_Test_Anim1.bnds[296]"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Clav_Clav01_M_visibility_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Clav_Clav01_M_visibility_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Clav_Clav01_M_translateX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Clav_Clav01_M_translateX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Clav_Clav01_M_translateY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Clav_Clav01_M_translateY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Clav_Clav01_M_translateZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Clav_Clav01_M_translateZ_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Clav_Clav01_M.ro" "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim1.ro"
		;
connectAttr "Skin_Test_Anim1.oram" "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim1_inputBX.o" "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim1.ibx"
		;
connectAttr "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim1_inputBY.o" "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim1.iby"
		;
connectAttr "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim1_inputBZ.o" "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim1.ibz"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Clav_Clav01_M_scaleX_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Clav_Clav01_M_scaleX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Clav_Clav01_M_scaleX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Clav_Clav01_M_scaleY_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Clav_Clav01_M_scaleY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Clav_Clav01_M_scaleY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Clav_Clav01_M_scaleZ_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Clav_Clav01_M_scaleZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Clav_Clav01_M_scaleZ_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Arm_Shoulder_M_visibility_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Arm_Shoulder_M_visibility_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Arm_Shoulder_M_translateX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Arm_Shoulder_M_translateX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Arm_Shoulder_M_translateY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Arm_Shoulder_M_translateY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Arm_Shoulder_M_translateZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Arm_Shoulder_M_translateZ_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Arm_Shoulder_M.ro" "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim1.ro"
		;
connectAttr "Skin_Test_Anim1.oram" "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim1_inputBX.o" "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim1.ibx"
		;
connectAttr "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim1_inputBY.o" "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim1.iby"
		;
connectAttr "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim1_inputBZ.o" "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim1.ibz"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Arm_Shoulder_M_scaleX_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Arm_Shoulder_M_scaleX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Arm_Shoulder_M_scaleX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Arm_Shoulder_M_scaleY_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Arm_Shoulder_M_scaleY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Arm_Shoulder_M_scaleY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Arm_Shoulder_M_scaleZ_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Arm_Shoulder_M_scaleZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Arm_Shoulder_M_scaleZ_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Arm_Elbow_M_visibility_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Arm_Elbow_M_visibility_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Arm_Elbow_M_translateX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Arm_Elbow_M_translateX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Arm_Elbow_M_translateY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Arm_Elbow_M_translateY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Arm_Elbow_M_translateZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Arm_Elbow_M_translateZ_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Arm_Elbow_M.ro" "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim1.ro";
connectAttr "Skin_Test_Anim1.oram" "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim1.acm";
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim1.wa";
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim1.wb";
connectAttr "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim1_inputBX.o" "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim1.ibx"
		;
connectAttr "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim1_inputBY.o" "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim1.iby"
		;
connectAttr "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim1_inputBZ.o" "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim1.ibz"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Arm_Elbow_M_scaleX_Skin_Test_Anim1.acm";
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Arm_Elbow_M_scaleX_Skin_Test_Anim1.wa";
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Arm_Elbow_M_scaleX_Skin_Test_Anim1.wb";
connectAttr "Skin_Test_Anim1.sam" "JNT_Arm_Elbow_M_scaleY_Skin_Test_Anim1.acm";
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Arm_Elbow_M_scaleY_Skin_Test_Anim1.wa";
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Arm_Elbow_M_scaleY_Skin_Test_Anim1.wb";
connectAttr "Skin_Test_Anim1.sam" "JNT_Arm_Elbow_M_scaleZ_Skin_Test_Anim1.acm";
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Arm_Elbow_M_scaleZ_Skin_Test_Anim1.wa";
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Arm_Elbow_M_scaleZ_Skin_Test_Anim1.wb";
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Arm_Wrist_M_visibility_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Arm_Wrist_M_visibility_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Arm_Wrist_M_translateX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Arm_Wrist_M_translateX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Arm_Wrist_M_translateY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Arm_Wrist_M_translateY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Arm_Wrist_M_translateZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Arm_Wrist_M_translateZ_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Arm_Wrist_M.ro" "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim1.ro";
connectAttr "Skin_Test_Anim1.oram" "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim1.acm";
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim1.wa";
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim1.wb";
connectAttr "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim1_inputBX.o" "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim1.ibx"
		;
connectAttr "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim1_inputBY.o" "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim1.iby"
		;
connectAttr "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim1_inputBZ.o" "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim1.ibz"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Arm_Wrist_M_scaleX_Skin_Test_Anim1.acm";
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Arm_Wrist_M_scaleX_Skin_Test_Anim1.wa";
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Arm_Wrist_M_scaleX_Skin_Test_Anim1.wb";
connectAttr "Skin_Test_Anim1.sam" "JNT_Arm_Wrist_M_scaleY_Skin_Test_Anim1.acm";
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Arm_Wrist_M_scaleY_Skin_Test_Anim1.wa";
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Arm_Wrist_M_scaleY_Skin_Test_Anim1.wb";
connectAttr "Skin_Test_Anim1.sam" "JNT_Arm_Wrist_M_scaleZ_Skin_Test_Anim1.acm";
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Arm_Wrist_M_scaleZ_Skin_Test_Anim1.wa";
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Arm_Wrist_M_scaleZ_Skin_Test_Anim1.wb";
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index1_M_visibility_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index1_M_visibility_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index1_M_translateX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index1_M_translateX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index1_M_translateY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index1_M_translateY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index1_M_translateZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index1_M_translateZ_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Index_Index1_M.ro" "JNT_Index_Index1_M_rotate_Skin_Test_Anim1.ro"
		;
connectAttr "Skin_Test_Anim1.oram" "JNT_Index_Index1_M_rotate_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index1_M_rotate_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index1_M_rotate_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Index_Index1_M_rotate_Skin_Test_Anim1_inputBX.o" "JNT_Index_Index1_M_rotate_Skin_Test_Anim1.ibx"
		;
connectAttr "JNT_Index_Index1_M_rotate_Skin_Test_Anim1_inputBY.o" "JNT_Index_Index1_M_rotate_Skin_Test_Anim1.iby"
		;
connectAttr "JNT_Index_Index1_M_rotate_Skin_Test_Anim1_inputBZ.o" "JNT_Index_Index1_M_rotate_Skin_Test_Anim1.ibz"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Index_Index1_M_scaleX_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index1_M_scaleX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index1_M_scaleX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Index_Index1_M_scaleY_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index1_M_scaleY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index1_M_scaleY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Index_Index1_M_scaleZ_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index1_M_scaleZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index1_M_scaleZ_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index2_M_visibility_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index2_M_visibility_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index2_M_translateX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index2_M_translateX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index2_M_translateY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index2_M_translateY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index2_M_translateZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index2_M_translateZ_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Index_Index2_M.ro" "JNT_Index_Index2_M_rotate_Skin_Test_Anim1.ro"
		;
connectAttr "Skin_Test_Anim1.oram" "JNT_Index_Index2_M_rotate_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index2_M_rotate_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index2_M_rotate_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Index_Index2_M_rotate_Skin_Test_Anim1_inputBX.o" "JNT_Index_Index2_M_rotate_Skin_Test_Anim1.ibx"
		;
connectAttr "JNT_Index_Index2_M_rotate_Skin_Test_Anim1_inputBY.o" "JNT_Index_Index2_M_rotate_Skin_Test_Anim1.iby"
		;
connectAttr "JNT_Index_Index2_M_rotate_Skin_Test_Anim1_inputBZ.o" "JNT_Index_Index2_M_rotate_Skin_Test_Anim1.ibz"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Index_Index2_M_scaleX_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index2_M_scaleX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index2_M_scaleX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Index_Index2_M_scaleY_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index2_M_scaleY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index2_M_scaleY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Index_Index2_M_scaleZ_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index2_M_scaleZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index2_M_scaleZ_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index3_M_visibility_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index3_M_visibility_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index3_M_translateX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index3_M_translateX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index3_M_translateY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index3_M_translateY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index3_M_translateZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index3_M_translateZ_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Index_Index3_M.ro" "JNT_Index_Index3_M_rotate_Skin_Test_Anim1.ro"
		;
connectAttr "Skin_Test_Anim1.oram" "JNT_Index_Index3_M_rotate_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index3_M_rotate_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index3_M_rotate_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Index_Index3_M_rotate_Skin_Test_Anim1_inputBX.o" "JNT_Index_Index3_M_rotate_Skin_Test_Anim1.ibx"
		;
connectAttr "JNT_Index_Index3_M_rotate_Skin_Test_Anim1_inputBY.o" "JNT_Index_Index3_M_rotate_Skin_Test_Anim1.iby"
		;
connectAttr "JNT_Index_Index3_M_rotate_Skin_Test_Anim1_inputBZ.o" "JNT_Index_Index3_M_rotate_Skin_Test_Anim1.ibz"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Index_Index3_M_scaleX_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index3_M_scaleX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index3_M_scaleX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Index_Index3_M_scaleY_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index3_M_scaleY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index3_M_scaleY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Index_Index3_M_scaleZ_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index3_M_scaleZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index3_M_scaleZ_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index4_M_visibility_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index4_M_visibility_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index4_M_translateX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index4_M_translateX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index4_M_translateY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index4_M_translateY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index4_M_translateZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index4_M_translateZ_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Index_Index4_M.ro" "JNT_Index_Index4_M_rotate_Skin_Test_Anim1.ro"
		;
connectAttr "Skin_Test_Anim1.oram" "JNT_Index_Index4_M_rotate_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index4_M_rotate_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index4_M_rotate_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Index_Index4_M_rotate_Skin_Test_Anim1_inputBX.o" "JNT_Index_Index4_M_rotate_Skin_Test_Anim1.ibx"
		;
connectAttr "JNT_Index_Index4_M_rotate_Skin_Test_Anim1_inputBY.o" "JNT_Index_Index4_M_rotate_Skin_Test_Anim1.iby"
		;
connectAttr "JNT_Index_Index4_M_rotate_Skin_Test_Anim1_inputBZ.o" "JNT_Index_Index4_M_rotate_Skin_Test_Anim1.ibz"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Index_Index4_M_scaleX_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index4_M_scaleX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index4_M_scaleX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Index_Index4_M_scaleY_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index4_M_scaleY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index4_M_scaleY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Index_Index4_M_scaleZ_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Index_Index4_M_scaleZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Index_Index4_M_scaleZ_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle1_M_visibility_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle1_M_visibility_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle1_M_translateX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle1_M_translateX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle1_M_translateY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle1_M_translateY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle1_M_translateZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle1_M_translateZ_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Middle_Middle1_M.ro" "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim1.ro"
		;
connectAttr "Skin_Test_Anim1.oram" "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim1_inputBX.o" "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim1.ibx"
		;
connectAttr "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim1_inputBY.o" "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim1.iby"
		;
connectAttr "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim1_inputBZ.o" "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim1.ibz"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Middle_Middle1_M_scaleX_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle1_M_scaleX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle1_M_scaleX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Middle_Middle1_M_scaleY_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle1_M_scaleY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle1_M_scaleY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Middle_Middle1_M_scaleZ_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle1_M_scaleZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle1_M_scaleZ_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle2_M_visibility_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle2_M_visibility_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle2_M_translateX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle2_M_translateX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle2_M_translateY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle2_M_translateY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle2_M_translateZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle2_M_translateZ_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Middle_Middle2_M.ro" "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim1.ro"
		;
connectAttr "Skin_Test_Anim1.oram" "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim1_inputBX.o" "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim1.ibx"
		;
connectAttr "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim1_inputBY.o" "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim1.iby"
		;
connectAttr "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim1_inputBZ.o" "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim1.ibz"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Middle_Middle2_M_scaleX_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle2_M_scaleX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle2_M_scaleX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Middle_Middle2_M_scaleY_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle2_M_scaleY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle2_M_scaleY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Middle_Middle2_M_scaleZ_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle2_M_scaleZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle2_M_scaleZ_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle3_M_visibility_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle3_M_visibility_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle3_M_translateX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle3_M_translateX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle3_M_translateY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle3_M_translateY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle3_M_translateZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle3_M_translateZ_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Middle_Middle3_M.ro" "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim1.ro"
		;
connectAttr "Skin_Test_Anim1.oram" "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim1_inputBX.o" "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim1.ibx"
		;
connectAttr "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim1_inputBY.o" "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim1.iby"
		;
connectAttr "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim1_inputBZ.o" "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim1.ibz"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Middle_Middle3_M_scaleX_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle3_M_scaleX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle3_M_scaleX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Middle_Middle3_M_scaleY_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle3_M_scaleY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle3_M_scaleY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Middle_Middle3_M_scaleZ_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle3_M_scaleZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle3_M_scaleZ_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle4_M_visibility_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle4_M_visibility_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle4_M_translateX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle4_M_translateX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle4_M_translateY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle4_M_translateY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle4_M_translateZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle4_M_translateZ_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Middle_Middle4_M.ro" "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim1.ro"
		;
connectAttr "Skin_Test_Anim1.oram" "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim1_inputBX.o" "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim1.ibx"
		;
connectAttr "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim1_inputBY.o" "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim1.iby"
		;
connectAttr "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim1_inputBZ.o" "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim1.ibz"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Middle_Middle4_M_scaleX_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle4_M_scaleX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle4_M_scaleX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Middle_Middle4_M_scaleY_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle4_M_scaleY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle4_M_scaleY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Middle_Middle4_M_scaleZ_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Middle_Middle4_M_scaleZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Middle_Middle4_M_scaleZ_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey1_M_visibility_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey1_M_visibility_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey1_M_translateX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey1_M_translateX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey1_M_translateY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey1_M_translateY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey1_M_translateZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey1_M_translateZ_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Pinkie_Pinkey1_M.ro" "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim1.ro"
		;
connectAttr "Skin_Test_Anim1.oram" "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim1_inputBX.o" "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim1.ibx"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim1_inputBY.o" "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim1.iby"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim1_inputBZ.o" "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim1.ibz"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Pinkie_Pinkey1_M_scaleX_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey1_M_scaleX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey1_M_scaleX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Pinkie_Pinkey1_M_scaleY_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey1_M_scaleY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey1_M_scaleY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Pinkie_Pinkey1_M_scaleZ_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey1_M_scaleZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey1_M_scaleZ_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey2_M_visibility_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey2_M_visibility_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey2_M_translateX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey2_M_translateX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey2_M_translateY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey2_M_translateY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey2_M_translateZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey2_M_translateZ_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Pinkie_Pinkey2_M.ro" "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim1.ro"
		;
connectAttr "Skin_Test_Anim1.oram" "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim1_inputBX.o" "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim1.ibx"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim1_inputBY.o" "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim1.iby"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim1_inputBZ.o" "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim1.ibz"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Pinkie_Pinkey2_M_scaleX_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey2_M_scaleX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey2_M_scaleX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Pinkie_Pinkey2_M_scaleY_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey2_M_scaleY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey2_M_scaleY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Pinkie_Pinkey2_M_scaleZ_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey2_M_scaleZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey2_M_scaleZ_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey3_M_visibility_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey3_M_visibility_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey3_M_translateX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey3_M_translateX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey3_M_translateY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey3_M_translateY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey3_M_translateZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey3_M_translateZ_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Pinkie_Pinkey3_M.ro" "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim1.ro"
		;
connectAttr "Skin_Test_Anim1.oram" "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim1_inputBX.o" "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim1.ibx"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim1_inputBY.o" "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim1.iby"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim1_inputBZ.o" "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim1.ibz"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Pinkie_Pinkey3_M_scaleX_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey3_M_scaleX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey3_M_scaleX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Pinkie_Pinkey3_M_scaleY_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey3_M_scaleY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey3_M_scaleY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Pinkie_Pinkey3_M_scaleZ_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey3_M_scaleZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey3_M_scaleZ_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey4_M_visibility_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey4_M_visibility_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey4_M_translateX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey4_M_translateX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey4_M_translateY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey4_M_translateY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey4_M_translateZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey4_M_translateZ_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Pinkie_Pinkey4_M.ro" "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim1.ro"
		;
connectAttr "Skin_Test_Anim1.oram" "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim1_inputBX.o" "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim1.ibx"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim1_inputBY.o" "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim1.iby"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim1_inputBZ.o" "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim1.ibz"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Pinkie_Pinkey4_M_scaleX_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey4_M_scaleX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey4_M_scaleX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Pinkie_Pinkey4_M_scaleY_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey4_M_scaleY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey4_M_scaleY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Pinkie_Pinkey4_M_scaleZ_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Pinkie_Pinkey4_M_scaleZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Pinkie_Pinkey4_M_scaleZ_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring1_M_visibility_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring1_M_visibility_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring1_M_translateX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring1_M_translateX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring1_M_translateY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring1_M_translateY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring1_M_translateZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring1_M_translateZ_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Ring_Ring1_M.ro" "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim1.ro";
connectAttr "Skin_Test_Anim1.oram" "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim1.wa";
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim1.wb";
connectAttr "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim1_inputBX.o" "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim1.ibx"
		;
connectAttr "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim1_inputBY.o" "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim1.iby"
		;
connectAttr "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim1_inputBZ.o" "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim1.ibz"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Ring_Ring1_M_scaleX_Skin_Test_Anim1.acm";
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring1_M_scaleX_Skin_Test_Anim1.wa";
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring1_M_scaleX_Skin_Test_Anim1.wb";
connectAttr "Skin_Test_Anim1.sam" "JNT_Ring_Ring1_M_scaleY_Skin_Test_Anim1.acm";
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring1_M_scaleY_Skin_Test_Anim1.wa";
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring1_M_scaleY_Skin_Test_Anim1.wb";
connectAttr "Skin_Test_Anim1.sam" "JNT_Ring_Ring1_M_scaleZ_Skin_Test_Anim1.acm";
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring1_M_scaleZ_Skin_Test_Anim1.wa";
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring1_M_scaleZ_Skin_Test_Anim1.wb";
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring2_M_visibility_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring2_M_visibility_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring2_M_translateX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring2_M_translateX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring2_M_translateY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring2_M_translateY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring2_M_translateZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring2_M_translateZ_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Ring_Ring2_M.ro" "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim1.ro";
connectAttr "Skin_Test_Anim1.oram" "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim1.wa";
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim1.wb";
connectAttr "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim1_inputBX.o" "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim1.ibx"
		;
connectAttr "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim1_inputBY.o" "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim1.iby"
		;
connectAttr "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim1_inputBZ.o" "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim1.ibz"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Ring_Ring2_M_scaleX_Skin_Test_Anim1.acm";
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring2_M_scaleX_Skin_Test_Anim1.wa";
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring2_M_scaleX_Skin_Test_Anim1.wb";
connectAttr "Skin_Test_Anim1.sam" "JNT_Ring_Ring2_M_scaleY_Skin_Test_Anim1.acm";
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring2_M_scaleY_Skin_Test_Anim1.wa";
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring2_M_scaleY_Skin_Test_Anim1.wb";
connectAttr "Skin_Test_Anim1.sam" "JNT_Ring_Ring2_M_scaleZ_Skin_Test_Anim1.acm";
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring2_M_scaleZ_Skin_Test_Anim1.wa";
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring2_M_scaleZ_Skin_Test_Anim1.wb";
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring3_M_visibility_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring3_M_visibility_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring3_M_translateX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring3_M_translateX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring3_M_translateY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring3_M_translateY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring3_M_translateZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring3_M_translateZ_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Ring_Ring3_M.ro" "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim1.ro";
connectAttr "Skin_Test_Anim1.oram" "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim1.wa";
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim1.wb";
connectAttr "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim1_inputBX.o" "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim1.ibx"
		;
connectAttr "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim1_inputBY.o" "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim1.iby"
		;
connectAttr "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim1_inputBZ.o" "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim1.ibz"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Ring_Ring3_M_scaleX_Skin_Test_Anim1.acm";
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring3_M_scaleX_Skin_Test_Anim1.wa";
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring3_M_scaleX_Skin_Test_Anim1.wb";
connectAttr "Skin_Test_Anim1.sam" "JNT_Ring_Ring3_M_scaleY_Skin_Test_Anim1.acm";
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring3_M_scaleY_Skin_Test_Anim1.wa";
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring3_M_scaleY_Skin_Test_Anim1.wb";
connectAttr "Skin_Test_Anim1.sam" "JNT_Ring_Ring3_M_scaleZ_Skin_Test_Anim1.acm";
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring3_M_scaleZ_Skin_Test_Anim1.wa";
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring3_M_scaleZ_Skin_Test_Anim1.wb";
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring4_M_visibility_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring4_M_visibility_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring4_M_translateX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring4_M_translateX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring4_M_translateY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring4_M_translateY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring4_M_translateZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring4_M_translateZ_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Ring_Ring4_M.ro" "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim1.ro";
connectAttr "Skin_Test_Anim1.oram" "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim1.wa";
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim1.wb";
connectAttr "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim1_inputBX.o" "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim1.ibx"
		;
connectAttr "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim1_inputBY.o" "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim1.iby"
		;
connectAttr "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim1_inputBZ.o" "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim1.ibz"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Ring_Ring4_M_scaleX_Skin_Test_Anim1.acm";
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring4_M_scaleX_Skin_Test_Anim1.wa";
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring4_M_scaleX_Skin_Test_Anim1.wb";
connectAttr "Skin_Test_Anim1.sam" "JNT_Ring_Ring4_M_scaleY_Skin_Test_Anim1.acm";
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring4_M_scaleY_Skin_Test_Anim1.wa";
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring4_M_scaleY_Skin_Test_Anim1.wb";
connectAttr "Skin_Test_Anim1.sam" "JNT_Ring_Ring4_M_scaleZ_Skin_Test_Anim1.acm";
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Ring_Ring4_M_scaleZ_Skin_Test_Anim1.wa";
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Ring_Ring4_M_scaleZ_Skin_Test_Anim1.wb";
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb1_M_visibility_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb1_M_visibility_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb1_M_translateX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb1_M_translateX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb1_M_translateY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb1_M_translateY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb1_M_translateZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb1_M_translateZ_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Thumb_Thumb1_M.ro" "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim1.ro"
		;
connectAttr "Skin_Test_Anim1.oram" "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim1_inputBX.o" "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim1.ibx"
		;
connectAttr "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim1_inputBY.o" "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim1.iby"
		;
connectAttr "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim1_inputBZ.o" "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim1.ibz"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Thumb_Thumb1_M_scaleX_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb1_M_scaleX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb1_M_scaleX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Thumb_Thumb1_M_scaleY_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb1_M_scaleY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb1_M_scaleY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Thumb_Thumb1_M_scaleZ_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb1_M_scaleZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb1_M_scaleZ_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb2_M_visibility_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb2_M_visibility_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb2_M_translateX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb2_M_translateX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb2_M_translateY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb2_M_translateY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb2_M_translateZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb2_M_translateZ_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Thumb_Thumb2_M.ro" "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim1.ro"
		;
connectAttr "Skin_Test_Anim1.oram" "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim1_inputBX.o" "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim1.ibx"
		;
connectAttr "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim1_inputBY.o" "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim1.iby"
		;
connectAttr "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim1_inputBZ.o" "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim1.ibz"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Thumb_Thumb2_M_scaleX_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb2_M_scaleX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb2_M_scaleX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Thumb_Thumb2_M_scaleY_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb2_M_scaleY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb2_M_scaleY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Thumb_Thumb2_M_scaleZ_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb2_M_scaleZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb2_M_scaleZ_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb3_M_visibility_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb3_M_visibility_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb3_M_translateX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb3_M_translateX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb3_M_translateY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb3_M_translateY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb3_M_translateZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb3_M_translateZ_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Thumb_Thumb3_M.ro" "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim1.ro"
		;
connectAttr "Skin_Test_Anim1.oram" "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim1_inputBX.o" "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim1.ibx"
		;
connectAttr "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim1_inputBY.o" "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim1.iby"
		;
connectAttr "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim1_inputBZ.o" "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim1.ibz"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Thumb_Thumb3_M_scaleX_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb3_M_scaleX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb3_M_scaleX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Thumb_Thumb3_M_scaleY_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb3_M_scaleY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb3_M_scaleY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Thumb_Thumb3_M_scaleZ_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb3_M_scaleZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb3_M_scaleZ_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb4_M_visibility_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb4_M_visibility_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb4_M_translateX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb4_M_translateX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb4_M_translateY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb4_M_translateY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb4_M_translateZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb4_M_translateZ_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Thumb_Thumb4_M.ro" "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim1.ro"
		;
connectAttr "Skin_Test_Anim1.oram" "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim1_inputBX.o" "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim1.ibx"
		;
connectAttr "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim1_inputBY.o" "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim1.iby"
		;
connectAttr "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim1_inputBZ.o" "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim1.ibz"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Thumb_Thumb4_M_scaleX_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb4_M_scaleX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb4_M_scaleX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Thumb_Thumb4_M_scaleY_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb4_M_scaleY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb4_M_scaleY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_Thumb_Thumb4_M_scaleZ_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_Thumb_Thumb4_M_scaleZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_Thumb_Thumb4_M_scaleZ_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_ForearmTwist_ForearmTwist1_M_visibility_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_ForearmTwist_ForearmTwist1_M_visibility_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_ForearmTwist_ForearmTwist1_M_translateX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_ForearmTwist_ForearmTwist1_M_translateX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_ForearmTwist_ForearmTwist1_M_translateY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_ForearmTwist_ForearmTwist1_M_translateY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_ForearmTwist_ForearmTwist1_M_translateZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_ForearmTwist_ForearmTwist1_M_translateZ_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.ro" "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim1.ro"
		;
connectAttr "Skin_Test_Anim1.oram" "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim1_inputBX.o" "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim1.ibx"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim1_inputBY.o" "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim1.iby"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim1_inputBZ.o" "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim1.ibz"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_ForearmTwist_ForearmTwist1_M_scaleX_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_ForearmTwist_ForearmTwist1_M_scaleX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_ForearmTwist_ForearmTwist1_M_scaleX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_ForearmTwist_ForearmTwist1_M_scaleY_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_ForearmTwist_ForearmTwist1_M_scaleY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_ForearmTwist_ForearmTwist1_M_scaleY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_ForearmTwist_ForearmTwist1_M_scaleZ_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_ForearmTwist_ForearmTwist1_M_scaleZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_ForearmTwist_ForearmTwist1_M_scaleZ_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_ForearmTwist_ForearmTwist2_M_visibility_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_ForearmTwist_ForearmTwist2_M_visibility_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_ForearmTwist_ForearmTwist2_M_translateX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_ForearmTwist_ForearmTwist2_M_translateX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_ForearmTwist_ForearmTwist2_M_translateY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_ForearmTwist_ForearmTwist2_M_translateY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_ForearmTwist_ForearmTwist2_M_translateZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_ForearmTwist_ForearmTwist2_M_translateZ_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.ro" "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim1.ro"
		;
connectAttr "Skin_Test_Anim1.oram" "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim1_inputBX.o" "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim1.ibx"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim1_inputBY.o" "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim1.iby"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim1_inputBZ.o" "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim1.ibz"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_ForearmTwist_ForearmTwist2_M_scaleX_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_ForearmTwist_ForearmTwist2_M_scaleX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_ForearmTwist_ForearmTwist2_M_scaleX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_ForearmTwist_ForearmTwist2_M_scaleY_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_ForearmTwist_ForearmTwist2_M_scaleY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_ForearmTwist_ForearmTwist2_M_scaleY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_ForearmTwist_ForearmTwist2_M_scaleZ_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_ForearmTwist_ForearmTwist2_M_scaleZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_ForearmTwist_ForearmTwist2_M_scaleZ_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_BicepTwist_BicepTwist_M_visibility_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_BicepTwist_BicepTwist_M_visibility_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_BicepTwist_BicepTwist_M_translateX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_BicepTwist_BicepTwist_M_translateX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_BicepTwist_BicepTwist_M_translateY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_BicepTwist_BicepTwist_M_translateY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_BicepTwist_BicepTwist_M_translateZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_BicepTwist_BicepTwist_M_translateZ_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M.ro" "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim1.ro"
		;
connectAttr "Skin_Test_Anim1.oram" "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim1.wb"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim1_inputBX.o" "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim1.ibx"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim1_inputBY.o" "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim1.iby"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim1_inputBZ.o" "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim1.ibz"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_BicepTwist_BicepTwist_M_scaleX_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_BicepTwist_BicepTwist_M_scaleX_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_BicepTwist_BicepTwist_M_scaleX_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_BicepTwist_BicepTwist_M_scaleY_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_BicepTwist_BicepTwist_M_scaleY_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_BicepTwist_BicepTwist_M_scaleY_Skin_Test_Anim1.wb"
		;
connectAttr "Skin_Test_Anim1.sam" "JNT_BicepTwist_BicepTwist_M_scaleZ_Skin_Test_Anim1.acm"
		;
connectAttr "Skin_Test_Anim1.bgwt" "JNT_BicepTwist_BicepTwist_M_scaleZ_Skin_Test_Anim1.wa"
		;
connectAttr "Skin_Test_Anim1.fgwt" "JNT_BicepTwist_BicepTwist_M_scaleZ_Skin_Test_Anim1.wb"
		;
connectAttr "temp_lambert2.oc" "temp_Mesh_Human_Biped_01_lambert2SG.ss";
connectAttr "Arm_Mesh2Shape.iog.og[0]" "temp_Mesh_Human_Biped_01_lambert2SG.dsm"
		 -na;
connectAttr "Arm_Mesh3Shape.iog.og[0]" "temp_Mesh_Human_Biped_01_lambert2SG.dsm"
		 -na;
connectAttr "groupId1.msg" "temp_Mesh_Human_Biped_01_lambert2SG.gn" -na;
connectAttr "temp_Mesh_Human_Biped_01_lambert2SG.msg" "temp_materialInfo3.sg";
connectAttr "temp_lambert2.msg" "temp_materialInfo3.m";
connectAttr "polyTweak1.out" "polySplit3.ip";
connectAttr "polySplit2.out" "polyTweak1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplitRing25.out" "polySplit1.ip";
connectAttr "polySplitRing24.out" "polySplitRing25.ip";
connectAttr "Arm_Mesh2Shape.wm" "polySplitRing25.mp";
connectAttr "polySplitRing23.out" "polySplitRing24.ip";
connectAttr "Arm_Mesh2Shape.wm" "polySplitRing24.mp";
connectAttr "polySplitRing22.out" "polySplitRing23.ip";
connectAttr "Arm_Mesh2Shape.wm" "polySplitRing23.mp";
connectAttr "polySplitRing21.out" "polySplitRing22.ip";
connectAttr "Arm_Mesh2Shape.wm" "polySplitRing22.mp";
connectAttr "polySplitRing20.out" "polySplitRing21.ip";
connectAttr "Arm_Mesh2Shape.wm" "polySplitRing21.mp";
connectAttr "polySplitRing19.out" "polySplitRing20.ip";
connectAttr "Arm_Mesh2Shape.wm" "polySplitRing20.mp";
connectAttr "polySplitRing18.out" "polySplitRing19.ip";
connectAttr "Arm_Mesh2Shape.wm" "polySplitRing19.mp";
connectAttr "polySplitRing17.out" "polySplitRing18.ip";
connectAttr "Arm_Mesh2Shape.wm" "polySplitRing18.mp";
connectAttr "polySplitRing16.out" "polySplitRing17.ip";
connectAttr "Arm_Mesh2Shape.wm" "polySplitRing17.mp";
connectAttr "polySplitRing15.out" "polySplitRing16.ip";
connectAttr "Arm_Mesh2Shape.wm" "polySplitRing16.mp";
connectAttr "polySplitRing14.out" "polySplitRing15.ip";
connectAttr "Arm_Mesh2Shape.wm" "polySplitRing15.mp";
connectAttr "polySplitRing13.out" "polySplitRing14.ip";
connectAttr "Arm_Mesh2Shape.wm" "polySplitRing14.mp";
connectAttr "polySplitRing12.out" "polySplitRing13.ip";
connectAttr "Arm_Mesh2Shape.wm" "polySplitRing13.mp";
connectAttr "polySplitRing11.out" "polySplitRing12.ip";
connectAttr "Arm_Mesh2Shape.wm" "polySplitRing12.mp";
connectAttr "polySplitRing10.out" "polySplitRing11.ip";
connectAttr "Arm_Mesh2Shape.wm" "polySplitRing11.mp";
connectAttr "polySplitRing9.out" "polySplitRing10.ip";
connectAttr "Arm_Mesh2Shape.wm" "polySplitRing10.mp";
connectAttr "polySplitRing8.out" "polySplitRing9.ip";
connectAttr "Arm_Mesh2Shape.wm" "polySplitRing9.mp";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "Arm_Mesh2Shape.wm" "polySplitRing8.mp";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "Arm_Mesh2Shape.wm" "polySplitRing7.mp";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "Arm_Mesh2Shape.wm" "polySplitRing6.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "Arm_Mesh2Shape.wm" "polySplitRing5.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "Arm_Mesh2Shape.wm" "polySplitRing4.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "Arm_Mesh2Shape.wm" "polySplitRing3.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "Arm_Mesh2Shape.wm" "polySplitRing2.mp";
connectAttr "temp_groupParts1.og" "polySplitRing1.ip";
connectAttr "Arm_Mesh2Shape.wm" "polySplitRing1.mp";
connectAttr "|TEMP_RigRoot|MESHES|Arm_Mesh2|polySurfaceShape1.o" "temp_groupParts1.ig"
		;
connectAttr "groupId1.id" "temp_groupParts1.gi";
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "JNT_Clav_Clav01_M.wm" "skinCluster2.ma[0]";
connectAttr "JNT_Arm_Shoulder_M.wm" "skinCluster2.ma[1]";
connectAttr "JNT_BicepTwist_BicepTwist_M.wm" "skinCluster2.ma[2]";
connectAttr "JNT_Arm_Elbow_M.wm" "skinCluster2.ma[3]";
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.wm" "skinCluster2.ma[4]";
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.wm" "skinCluster2.ma[5]";
connectAttr "JNT_Arm_Wrist_M.wm" "skinCluster2.ma[6]";
connectAttr "JNT_Middle_Middle1_M.wm" "skinCluster2.ma[7]";
connectAttr "JNT_Middle_Middle2_M.wm" "skinCluster2.ma[8]";
connectAttr "JNT_Middle_Middle3_M.wm" "skinCluster2.ma[9]";
connectAttr "JNT_Middle_Middle4_M.wm" "skinCluster2.ma[10]";
connectAttr "JNT_Ring_Ring1_M.wm" "skinCluster2.ma[11]";
connectAttr "JNT_Ring_Ring2_M.wm" "skinCluster2.ma[12]";
connectAttr "JNT_Ring_Ring3_M.wm" "skinCluster2.ma[13]";
connectAttr "JNT_Ring_Ring4_M.wm" "skinCluster2.ma[14]";
connectAttr "JNT_Index_Index1_M.wm" "skinCluster2.ma[15]";
connectAttr "JNT_Index_Index2_M.wm" "skinCluster2.ma[16]";
connectAttr "JNT_Index_Index3_M.wm" "skinCluster2.ma[17]";
connectAttr "JNT_Index_Index4_M.wm" "skinCluster2.ma[18]";
connectAttr "JNT_Pinkie_Pinkey1_M.wm" "skinCluster2.ma[19]";
connectAttr "JNT_Pinkie_Pinkey2_M.wm" "skinCluster2.ma[20]";
connectAttr "JNT_Pinkie_Pinkey3_M.wm" "skinCluster2.ma[21]";
connectAttr "JNT_Pinkie_Pinkey4_M.wm" "skinCluster2.ma[22]";
connectAttr "JNT_Thumb_Thumb1_M.wm" "skinCluster2.ma[23]";
connectAttr "JNT_Thumb_Thumb2_M.wm" "skinCluster2.ma[24]";
connectAttr "JNT_Thumb_Thumb3_M.wm" "skinCluster2.ma[25]";
connectAttr "JNT_Thumb_Thumb4_M.wm" "skinCluster2.ma[26]";
connectAttr "JNT_Clav_Clav01_M.liw" "skinCluster2.lw[0]";
connectAttr "JNT_Arm_Shoulder_M.liw" "skinCluster2.lw[1]";
connectAttr "JNT_BicepTwist_BicepTwist_M.liw" "skinCluster2.lw[2]";
connectAttr "JNT_Arm_Elbow_M.liw" "skinCluster2.lw[3]";
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.liw" "skinCluster2.lw[4]";
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.liw" "skinCluster2.lw[5]";
connectAttr "JNT_Arm_Wrist_M.liw" "skinCluster2.lw[6]";
connectAttr "JNT_Middle_Middle1_M.liw" "skinCluster2.lw[7]";
connectAttr "JNT_Middle_Middle2_M.liw" "skinCluster2.lw[8]";
connectAttr "JNT_Middle_Middle3_M.liw" "skinCluster2.lw[9]";
connectAttr "JNT_Middle_Middle4_M.liw" "skinCluster2.lw[10]";
connectAttr "JNT_Ring_Ring1_M.liw" "skinCluster2.lw[11]";
connectAttr "JNT_Ring_Ring2_M.liw" "skinCluster2.lw[12]";
connectAttr "JNT_Ring_Ring3_M.liw" "skinCluster2.lw[13]";
connectAttr "JNT_Ring_Ring4_M.liw" "skinCluster2.lw[14]";
connectAttr "JNT_Index_Index1_M.liw" "skinCluster2.lw[15]";
connectAttr "JNT_Index_Index2_M.liw" "skinCluster2.lw[16]";
connectAttr "JNT_Index_Index3_M.liw" "skinCluster2.lw[17]";
connectAttr "JNT_Index_Index4_M.liw" "skinCluster2.lw[18]";
connectAttr "JNT_Pinkie_Pinkey1_M.liw" "skinCluster2.lw[19]";
connectAttr "JNT_Pinkie_Pinkey2_M.liw" "skinCluster2.lw[20]";
connectAttr "JNT_Pinkie_Pinkey3_M.liw" "skinCluster2.lw[21]";
connectAttr "JNT_Pinkie_Pinkey4_M.liw" "skinCluster2.lw[22]";
connectAttr "JNT_Thumb_Thumb1_M.liw" "skinCluster2.lw[23]";
connectAttr "JNT_Thumb_Thumb2_M.liw" "skinCluster2.lw[24]";
connectAttr "JNT_Thumb_Thumb3_M.liw" "skinCluster2.lw[25]";
connectAttr "JNT_Thumb_Thumb4_M.liw" "skinCluster2.lw[26]";
connectAttr "JNT_Clav_Clav01_M.obcc" "skinCluster2.ifcl[0]";
connectAttr "JNT_Arm_Shoulder_M.obcc" "skinCluster2.ifcl[1]";
connectAttr "JNT_BicepTwist_BicepTwist_M.obcc" "skinCluster2.ifcl[2]";
connectAttr "JNT_Arm_Elbow_M.obcc" "skinCluster2.ifcl[3]";
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.obcc" "skinCluster2.ifcl[4]";
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.obcc" "skinCluster2.ifcl[5]";
connectAttr "JNT_Arm_Wrist_M.obcc" "skinCluster2.ifcl[6]";
connectAttr "JNT_Middle_Middle1_M.obcc" "skinCluster2.ifcl[7]";
connectAttr "JNT_Middle_Middle2_M.obcc" "skinCluster2.ifcl[8]";
connectAttr "JNT_Middle_Middle3_M.obcc" "skinCluster2.ifcl[9]";
connectAttr "JNT_Middle_Middle4_M.obcc" "skinCluster2.ifcl[10]";
connectAttr "JNT_Ring_Ring1_M.obcc" "skinCluster2.ifcl[11]";
connectAttr "JNT_Ring_Ring2_M.obcc" "skinCluster2.ifcl[12]";
connectAttr "JNT_Ring_Ring3_M.obcc" "skinCluster2.ifcl[13]";
connectAttr "JNT_Ring_Ring4_M.obcc" "skinCluster2.ifcl[14]";
connectAttr "JNT_Index_Index1_M.obcc" "skinCluster2.ifcl[15]";
connectAttr "JNT_Index_Index2_M.obcc" "skinCluster2.ifcl[16]";
connectAttr "JNT_Index_Index3_M.obcc" "skinCluster2.ifcl[17]";
connectAttr "JNT_Index_Index4_M.obcc" "skinCluster2.ifcl[18]";
connectAttr "JNT_Pinkie_Pinkey1_M.obcc" "skinCluster2.ifcl[19]";
connectAttr "JNT_Pinkie_Pinkey2_M.obcc" "skinCluster2.ifcl[20]";
connectAttr "JNT_Pinkie_Pinkey3_M.obcc" "skinCluster2.ifcl[21]";
connectAttr "JNT_Pinkie_Pinkey4_M.obcc" "skinCluster2.ifcl[22]";
connectAttr "JNT_Thumb_Thumb1_M.obcc" "skinCluster2.ifcl[23]";
connectAttr "JNT_Thumb_Thumb2_M.obcc" "skinCluster2.ifcl[24]";
connectAttr "JNT_Thumb_Thumb3_M.obcc" "skinCluster2.ifcl[25]";
connectAttr "JNT_Thumb_Thumb4_M.obcc" "skinCluster2.ifcl[26]";
connectAttr "bindPose1.msg" "skinCluster2.bp";
connectAttr "groupParts5.og" "tweak2.ip[0].ig";
connectAttr "groupId7.id" "tweak2.ip[0].gi";
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "Arm_Mesh2Shape.iog.og[1]" "skinCluster2Set.dsm" -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "groupId7.msg" "tweakSet3.gn" -na;
connectAttr "Arm_Mesh2Shape.iog.og[2]" "tweakSet3.dsm" -na;
connectAttr "tweak2.msg" "tweakSet3.ub[0]";
connectAttr "Arm_Mesh2ShapeOrig.w" "groupParts5.ig";
connectAttr "groupId7.id" "groupParts5.gi";
connectAttr "JNT_Index_Index3_M_rotate_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "JNT_Index_Index3_M_scaleY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "JNT_Index_Index3_M_translateX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "JNT_Index_Index3_M_translateZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "JNT_Index_Index3_M_translateY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "JNT_Index_Index3_M_scaleX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "JNT_Arm_Wrist_M_translateY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "JNT_Arm_Wrist_M_translateX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "JNT_Arm_Wrist_M_scaleX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "JNT_Arm_Wrist_M_translateZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "JNT_Arm_Wrist_M_scaleY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "JNT_Thumb_Thumb4_M_translateZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_scaleX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "JNT_Thumb_Thumb3_M_scaleZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_visibility_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_visibility_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_translateX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_translateY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_translateX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "JNT_Thumb_Thumb4_M_translateX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "JNT_Thumb_Thumb4_M_scaleX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_scaleY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_scaleZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "JNT_Thumb_Thumb3_M_scaleY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "JNT_Thumb_Thumb4_M_visibility_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "JNT_Thumb_Thumb3_M_translateY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "JNT_Thumb_Thumb4_M_scaleZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "JNT_Thumb_Thumb4_M_scaleY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "JNT_Thumb_Thumb4_M_translateY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_translateZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "JNT_Thumb_Thumb3_M_translateZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_translateY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "JNT_Thumb_Thumb3_M_scaleX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "JNT_Clav_Clav01_M_scaleZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "JNT_Arm_Shoulder_M_visibility_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "JNT_Arm_Shoulder_M_translateX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "JNT_Arm_Shoulder_M_translateZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "JNT_Arm_Shoulder_M_translateY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "JNT_Middle_Middle2_M_translateY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "JNT_Middle_Middle2_M_translateX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "JNT_Middle_Middle2_M_translateZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "JNT_Middle_Middle2_M_scaleX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "JNT_Middle_Middle2_M_scaleY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn"
		;
connectAttr "JNT_Ring_Ring1_M_scaleY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn"
		;
connectAttr "JNT_Ring_Ring2_M_scaleZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "JNT_Ring_Ring1_M_translateY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "JNT_Ring_Ring2_M_scaleX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "JNT_Ring_Ring2_M_translateY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "JNT_Ring_Ring2_M_visibility_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "JNT_Ring_Ring2_M_translateZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "JNT_Ring_Ring2_M_scaleY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "JNT_Ring_Ring3_M_visibility_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "JNT_Ring_Ring1_M_scaleZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "JNT_Ring_Ring3_M_translateY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "JNT_Ring_Ring3_M_translateZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn"
		;
connectAttr "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "JNT_Ring_Ring3_M_scaleX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "JNT_Ring_Ring2_M_translateX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "JNT_Ring_Ring1_M_scaleX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "JNT_Ring_Ring3_M_scaleY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "JNT_Ring_Ring3_M_scaleZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn"
		;
connectAttr "JNT_Ring_Ring4_M_visibility_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "JNT_Ring_Ring1_M_translateZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn"
		;
connectAttr "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "JNT_Ring_Ring3_M_translateX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "JNT_Ring_Ring1_M_translateX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "JNT_Ring_Ring1_M_visibility_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn"
		;
connectAttr "JNT_Thumb_Thumb1_M_scaleX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn"
		;
connectAttr "JNT_Thumb_Thumb1_M_visibility_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn"
		;
connectAttr "JNT_Thumb_Thumb1_M_translateY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "JNT_Ring_Ring4_M_translateX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn"
		;
connectAttr "JNT_Ring_Ring4_M_scaleZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "JNT_Thumb_Thumb1_M_scaleY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn"
		;
connectAttr "JNT_Thumb_Thumb1_M_scaleZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn"
		;
connectAttr "JNT_Thumb_Thumb2_M_translateX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn"
		;
connectAttr "JNT_Ring_Ring4_M_scaleY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "JNT_Thumb_Thumb2_M_visibility_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "JNT_Thumb_Thumb2_M_translateY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "JNT_Thumb_Thumb3_M_translateX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "JNT_Ring_Ring4_M_scaleX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "JNT_Ring_Ring4_M_translateZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "JNT_Thumb_Thumb1_M_translateX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn"
		;
connectAttr "JNT_Thumb_Thumb2_M_translateZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "JNT_Thumb_Thumb2_M_scaleX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn"
		;
connectAttr "JNT_Thumb_Thumb1_M_translateZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn"
		;
connectAttr "JNT_Thumb_Thumb2_M_scaleZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn"
		;
connectAttr "JNT_Thumb_Thumb3_M_visibility_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn"
		;
connectAttr "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn"
		;
connectAttr "JNT_Thumb_Thumb2_M_scaleY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn"
		;
connectAttr "JNT_Ring_Ring4_M_translateY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn"
		;
connectAttr "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn"
		;
connectAttr "Mesh_Human_Biped_01_lambert2SG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn"
		;
connectAttr "JNT_Ring_Ring4_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn"
		;
connectAttr "BaseAnimation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn";
connectAttr "JNT_Pinkie_Pinkey3_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn"
		;
connectAttr "lambert2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn";
connectAttr "JNT_Middle_Middle2_M_scaleZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn"
		;
connectAttr "JNT_Middle_Middle3_M_visibility_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn"
		;
connectAttr "JNT_Middle_Middle3_M_translateY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn"
		;
connectAttr "JNT_Middle_Middle3_M_translateZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn"
		;
connectAttr "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn"
		;
connectAttr "JNT_Middle_Middle3_M_translateX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn"
		;
connectAttr "JNT_Index_Index1_M_scaleX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn"
		;
connectAttr "JNT_Index_Index2_M_visibility_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn"
		;
connectAttr "JNT_Index_Index2_M_translateX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn"
		;
connectAttr "JNT_Index_Index2_M_translateY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn"
		;
connectAttr "JNT_Index_Index1_M_scaleY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn"
		;
connectAttr "JNT_Index_Index1_M_scaleZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn"
		;
connectAttr "JNT_Arm_Elbow_M_scaleZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn"
		;
connectAttr "JNT_Arm_Elbow_M_scaleY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn"
		;
connectAttr "JNT_Arm_Wrist_M_visibility_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[118].dn"
		;
connectAttr "JNT_Arm_Elbow_M_scaleX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn"
		;
connectAttr "JNT_Arm_Elbow_M_translateZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[120].dn"
		;
connectAttr "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn"
		;
connectAttr "Joint_Disp1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn";
connectAttr "JNT_Ring_Ring3_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[123].dn"
		;
connectAttr "JNT_Ring_Ring1_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[124].dn"
		;
connectAttr "uiConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[125].dn"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[126].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[127].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[128].dn"
		;
connectAttr "JNT_Middle_Middle3_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[129].dn"
		;
connectAttr "JNT_Middle_Middle2_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[130].dn"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim1_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[131].dn"
		;
connectAttr "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim1_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[132].dn"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim1_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[133].dn"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim1_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[134].dn"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim1_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[135].dn"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim1_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[136].dn"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim1_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[137].dn"
		;
connectAttr "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim1_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[138].dn"
		;
connectAttr "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim1_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[139].dn"
		;
connectAttr "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim1_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[140].dn"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim1_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[141].dn"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim1_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[142].dn"
		;
connectAttr "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim1_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[143].dn"
		;
connectAttr "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim1_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[144].dn"
		;
connectAttr "JNT_Thumb_Thumb4_M_rotate_Skin_Test_Anim1_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[145].dn"
		;
connectAttr "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim1_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[146].dn"
		;
connectAttr "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim1_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[147].dn"
		;
connectAttr "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim1_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[148].dn"
		;
connectAttr "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim1_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[149].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim1_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[150].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim1_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[151].dn"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim1_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[152].dn"
		;
connectAttr "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim1_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[153].dn"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim1_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[154].dn"
		;
connectAttr "JNT_Ring_Ring1_M_rotate_Skin_Test_Anim1_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[155].dn"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim1_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[156].dn"
		;
connectAttr "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim1_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[157].dn"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim1_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[158].dn"
		;
connectAttr "JNT_Thumb_Thumb3_M_rotate_Skin_Test_Anim1_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[159].dn"
		;
connectAttr "JNT_Thumb_Thumb2_M_rotate_Skin_Test_Anim1_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[160].dn"
		;
connectAttr "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim1_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[161].dn"
		;
connectAttr "JNT_Ring_Ring3_M_rotate_Skin_Test_Anim1_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[162].dn"
		;
connectAttr "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim1_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[163].dn"
		;
connectAttr "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim1_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[164].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist1_M_rotate_Skin_Test_Anim1_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[165].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim1_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[166].dn"
		;
connectAttr "JNT_Ring_Ring4_M_rotate_Skin_Test_Anim1_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[167].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim1_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[168].dn"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim1_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[169].dn"
		;
connectAttr "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim1_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[170].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim1_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[171].dn"
		;
connectAttr "JNT_Thumb_Thumb1_M_rotate_Skin_Test_Anim1_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[172].dn"
		;
connectAttr "JNT_Ring_Ring2_M_rotate_Skin_Test_Anim1_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[173].dn"
		;
connectAttr "JNT_Index_Index2_M_translateZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[174].dn"
		;
connectAttr "JNT_Index_Index2_M_scaleX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[175].dn"
		;
connectAttr "JNT_Index_Index2_M_scaleZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[176].dn"
		;
connectAttr "JNT_Index_Index3_M_visibility_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[177].dn"
		;
connectAttr "JNT_Index_Index2_M_scaleY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[178].dn"
		;
connectAttr "JNT_Index_Index2_M_rotate_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[179].dn"
		;
connectAttr "Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[180].dn"
		;
connectAttr "JNT_Clav_Clav01_M_translateY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[181].dn"
		;
connectAttr "JNT_Clav_Clav01_M_translateZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[182].dn"
		;
connectAttr "JNT_Clav_Clav01_M_visibility_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[183].dn"
		;
connectAttr "JNT_Clav_Clav01_M_translateX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[184].dn"
		;
connectAttr "skinCluster2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[185].dn";
connectAttr "skinCluster2GroupId.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[186].dn"
		;
connectAttr "tweak2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[187].dn";
connectAttr "skinCluster2Set.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[188].dn"
		;
connectAttr "|TEMP_RigRoot|MESHES|Arm_Mesh3|polySurfaceShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[189].dn"
		;
connectAttr "groupId7.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[190].dn";
connectAttr "groupParts5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[191].dn";
connectAttr "Arm_Mesh2ShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[192].dn"
		;
connectAttr "tweakSet3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[193].dn";
connectAttr "skinCluster2GroupParts.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[194].dn"
		;
connectAttr "JNT_Middle_Middle1_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[195].dn"
		;
connectAttr "JNT_Pinkie_Pinkey2_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[196].dn"
		;
connectAttr "JNT_Index_Index2_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[197].dn"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_scaleY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[198].dn"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_scaleZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[199].dn"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_visibility_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[200].dn"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_scaleZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[201].dn"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_translateY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[202].dn"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_translateZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[203].dn"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_scaleX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[204].dn"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_scaleY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[205].dn"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_translateZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[206].dn"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_scaleX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[207].dn"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_visibility_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[208].dn"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_translateZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[209].dn"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_translateX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[210].dn"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_visibility_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[211].dn"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_scaleZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[212].dn"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_scaleX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[213].dn"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_rotate_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[214].dn"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_translateX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[215].dn"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_rotate_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[216].dn"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_rotate_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[217].dn"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_translateY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[218].dn"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_scaleY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[219].dn"
		;
connectAttr "JNT_Pinkie_Pinkey2_M_scaleZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[220].dn"
		;
connectAttr "JNT_Pinkie_Pinkey3_M_translateX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[221].dn"
		;
connectAttr "JNT_Pinkie_Pinkey4_M_translateY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[222].dn"
		;
connectAttr "JNT_Pinkie_Pinkey4_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[223].dn"
		;
connectAttr "JNT_Thumb_Thumb3_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[224].dn"
		;
connectAttr "JNT_Index_Index1_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[225].dn"
		;
connectAttr "groupId1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[226].dn";
connectAttr "Arm_Mesh2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[227].dn"
		;
connectAttr "|TEMP_RigRoot|MESHES|Arm_Mesh2|polySurfaceShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[228].dn"
		;
connectAttr "temp_Mesh_Human_Biped_01_lambert2SG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[229].dn"
		;
connectAttr "Arm_Mesh2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[230].dn";
connectAttr "JNT_Arm_Elbow_M_translateX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[231].dn"
		;
connectAttr "JNT_Arm_Elbow_M_translateY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[232].dn"
		;
connectAttr "JNT_Arm_Shoulder_M_scaleY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[233].dn"
		;
connectAttr "JNT_Arm_Elbow_M_visibility_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[234].dn"
		;
connectAttr "JNT_Arm_Shoulder_M_scaleX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[235].dn"
		;
connectAttr "JNT_Arm_Shoulder_M_scaleZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[236].dn"
		;
connectAttr "JNT_Middle_Middle1_M_visibility_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[237].dn"
		;
connectAttr "JNT_Index_Index4_M_scaleZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[238].dn"
		;
connectAttr "JNT_Middle_Middle1_M_translateY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[239].dn"
		;
connectAttr "JNT_Index_Index4_M_scaleX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[240].dn"
		;
connectAttr "JNT_Index_Index4_M_scaleY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[241].dn"
		;
connectAttr "JNT_Middle_Middle1_M_translateX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[242].dn"
		;
connectAttr "polySplitRing15.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[243].dn"
		;
connectAttr "polySplitRing11.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[244].dn"
		;
connectAttr "polySplitRing13.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[245].dn"
		;
connectAttr "polySplitRing10.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[246].dn"
		;
connectAttr "polySplitRing14.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[247].dn"
		;
connectAttr "polySplitRing12.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[248].dn"
		;
connectAttr "polySplitRing19.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[249].dn"
		;
connectAttr "polySplitRing18.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[250].dn"
		;
connectAttr "polySplitRing17.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[251].dn"
		;
connectAttr "polySplitRing9.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[252].dn"
		;
connectAttr "polySplitRing8.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[253].dn"
		;
connectAttr "polySplitRing16.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[254].dn"
		;
connectAttr "JNT_Clav_Clav01_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[255].dn"
		;
connectAttr "Arm_Mesh.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[256].dn";
connectAttr "sceneConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[257].dn"
		;
connectAttr "JNT_Arm_Elbow_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[258].dn"
		;
connectAttr "JNT_Arm_Shoulder_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[259].dn"
		;
connectAttr "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim1_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[260].dn"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_rotate_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[261].dn"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim1_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[262].dn"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim1_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[263].dn"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_scaleX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[264].dn"
		;
connectAttr "JNT_Index_Index1_M_rotate_Skin_Test_Anim1_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[265].dn"
		;
connectAttr "JNT_Index_Index2_M_rotate_Skin_Test_Anim1_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[266].dn"
		;
connectAttr "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim1_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[267].dn"
		;
connectAttr "JNT_Index_Index2_M_rotate_Skin_Test_Anim1_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[268].dn"
		;
connectAttr "JNT_Index_Index3_M_rotate_Skin_Test_Anim1_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[269].dn"
		;
connectAttr "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim1_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[270].dn"
		;
connectAttr "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim1_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[271].dn"
		;
connectAttr "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim1_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[272].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_scaleX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[273].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_scaleY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[274].dn"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_translateZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[275].dn"
		;
connectAttr "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim1_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[276].dn"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_scaleZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[277].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_scaleZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[278].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_translateZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[279].dn"
		;
connectAttr "JNT_ForearmTwist_ForearmTwist2_M_rotate_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[280].dn"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_visibility_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[281].dn"
		;
connectAttr "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim1_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[282].dn"
		;
connectAttr "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim1_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[283].dn"
		;
connectAttr "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim1_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[284].dn"
		;
connectAttr "JNT_Index_Index3_M_rotate_Skin_Test_Anim1_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[285].dn"
		;
connectAttr "JNT_Index_Index1_M_rotate_Skin_Test_Anim1_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[286].dn"
		;
connectAttr "JNT_Index_Index4_M_rotate_Skin_Test_Anim1_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[287].dn"
		;
connectAttr "JNT_Index_Index4_M_rotate_Skin_Test_Anim1_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[288].dn"
		;
connectAttr "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim1_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[289].dn"
		;
connectAttr "JNT_Index_Index4_M_rotate_Skin_Test_Anim1_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[290].dn"
		;
connectAttr "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim1_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[291].dn"
		;
connectAttr "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim1_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[292].dn"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_scaleY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[293].dn"
		;
connectAttr "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim1_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[294].dn"
		;
connectAttr "JNT_Index_Index1_M_rotate_Skin_Test_Anim1_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[295].dn"
		;
connectAttr "JNT_Index_Index2_M_rotate_Skin_Test_Anim1_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[296].dn"
		;
connectAttr "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim1_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[297].dn"
		;
connectAttr "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim1_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[298].dn"
		;
connectAttr "JNT_Arm_Elbow_M_rotate_Skin_Test_Anim1_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[299].dn"
		;
connectAttr "JNT_Middle_Middle2_M_rotate_Skin_Test_Anim1_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[300].dn"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_translateX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[301].dn"
		;
connectAttr "JNT_BicepTwist_BicepTwist_M_translateY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[302].dn"
		;
connectAttr "JNT_Arm_Shoulder_M_rotate_Skin_Test_Anim1_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[303].dn"
		;
connectAttr "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim1_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[304].dn"
		;
connectAttr "JNT_Index_Index3_M_rotate_Skin_Test_Anim1_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[305].dn"
		;
connectAttr "JNT_Arm_Wrist_M_rotate_Skin_Test_Anim1_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[306].dn"
		;
connectAttr "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim1_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[307].dn"
		;
connectAttr "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim1_inputBZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[308].dn"
		;
connectAttr "JNT_Middle_Middle3_M_rotate_Skin_Test_Anim1_inputBY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[309].dn"
		;
connectAttr "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim1_inputBX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[310].dn"
		;
connectAttr "JNT_Middle_Middle4_M_scaleX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[311].dn"
		;
connectAttr "JNT_Middle_Middle4_M_scaleY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[312].dn"
		;
connectAttr "JNT_Middle_Middle4_M_scaleZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[313].dn"
		;
connectAttr "JNT_Middle_Middle4_M_translateZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[314].dn"
		;
connectAttr "JNT_Middle_Middle4_M_rotate_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[315].dn"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_visibility_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[316].dn"
		;
connectAttr "JNT_Index_Index1_M_visibility_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[317].dn"
		;
connectAttr "JNT_Index_Index1_M_translateX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[318].dn"
		;
connectAttr "JNT_Index_Index1_M_translateZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[319].dn"
		;
connectAttr "JNT_Index_Index1_M_rotate_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[320].dn"
		;
connectAttr "JNT_Arm_Wrist_M_scaleZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[321].dn"
		;
connectAttr "JNT_Index_Index1_M_translateY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[322].dn"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_rotate_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[323].dn"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_scaleY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[324].dn"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_translateZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[325].dn"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_scaleX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[326].dn"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_translateX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[327].dn"
		;
connectAttr "JNT_Pinkie_Pinkey1_M_translateY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[328].dn"
		;
connectAttr "JNT_Index_Index4_M_visibility_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[329].dn"
		;
connectAttr "JNT_Index_Index4_M_translateX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[330].dn"
		;
connectAttr "JNT_Index_Index3_M_scaleZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[331].dn"
		;
connectAttr "JNT_Index_Index4_M_translateY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[332].dn"
		;
connectAttr "JNT_Index_Index4_M_translateZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[333].dn"
		;
connectAttr "JNT_Index_Index4_M_rotate_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[334].dn"
		;
connectAttr "temp_materialInfo3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[335].dn"
		;
connectAttr "polySplitRing20.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[336].dn"
		;
connectAttr "polySplit2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[337].dn";
connectAttr "polySplit1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[338].dn";
connectAttr "polySplit3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[339].dn";
connectAttr "polyTweak1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[340].dn";
connectAttr "temp_lambert2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[341].dn";
connectAttr "polySplitRing24.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[342].dn"
		;
connectAttr "polySplitRing25.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[343].dn"
		;
connectAttr "polySplitRing22.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[344].dn"
		;
connectAttr "polySplitRing21.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[345].dn"
		;
connectAttr "polySplitRing23.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[346].dn"
		;
connectAttr "JNT_Middle_Middle3_M_scaleY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[347].dn"
		;
connectAttr "JNT_Middle_Middle4_M_translateY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[348].dn"
		;
connectAttr "JNT_Middle_Middle3_M_scaleX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[349].dn"
		;
connectAttr "JNT_Middle_Middle4_M_visibility_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[350].dn"
		;
connectAttr "JNT_Middle_Middle3_M_scaleZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[351].dn"
		;
connectAttr "JNT_Middle_Middle4_M_translateX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[352].dn"
		;
connectAttr "JNT_Clav_Clav01_M_rotate_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[353].dn"
		;
connectAttr "JNT_Clav_Clav01_M_scaleY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[354].dn"
		;
connectAttr "JNT_Clav_Clav01_M_scaleX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[355].dn"
		;
connectAttr "JNT_Middle_Middle1_M_scaleY_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[356].dn"
		;
connectAttr "JNT_Middle_Middle1_M_scaleX_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[357].dn"
		;
connectAttr "JNT_Middle_Middle1_M_translateZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[358].dn"
		;
connectAttr "JNT_Middle_Middle1_M_rotate_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[359].dn"
		;
connectAttr "JNT_Middle_Middle1_M_scaleZ_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[360].dn"
		;
connectAttr "JNT_Middle_Middle2_M_visibility_Skin_Test_Anim1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[361].dn"
		;
connectAttr "JNT_Ring_Ring2_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[362].dn"
		;
connectAttr "JNT_Pinkie_Pinkey1_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[363].dn"
		;
connectAttr "JNT_Index_Index3_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[364].dn"
		;
connectAttr "JNT_Arm_Wrist_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[365].dn"
		;
connectAttr "JNT_Thumb_Thumb2_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[366].dn"
		;
connectAttr "JNT_Thumb_Thumb1_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[367].dn"
		;
connectAttr "JNT_Thumb_Thumb4_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[368].dn"
		;
connectAttr "materialInfo3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[369].dn";
connectAttr "JNT_Middle_Middle4_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[370].dn"
		;
connectAttr "Arm_Mesh3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[371].dn";
connectAttr "polySplitRing7.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[372].dn"
		;
connectAttr "polySplitRing6.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[373].dn"
		;
connectAttr "Arm_Mesh3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[374].dn"
		;
connectAttr "polySplitRing3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[375].dn"
		;
connectAttr "polySplitRing1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[376].dn"
		;
connectAttr "polySplitRing2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[377].dn"
		;
connectAttr "polySplitRing5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[378].dn"
		;
connectAttr "temp_groupParts1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[379].dn"
		;
connectAttr "polySplitRing4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[380].dn"
		;
connectAttr "JNT_Index_Index4_M.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[381].dn"
		;
connectAttr "Mesh_Human_Biped_01_lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "LControlsMaterialSG.pa" ":renderPartition.st" -na;
connectAttr "MControlsMaterialSG.pa" ":renderPartition.st" -na;
connectAttr "RControlsMaterialSG.pa" ":renderPartition.st" -na;
connectAttr "temp_Mesh_Human_Biped_01_lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "TempMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "LControlsMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "MControlsMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "RControlsMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "temp_lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Arm_BUILT.ma
