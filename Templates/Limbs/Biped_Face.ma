//Maya ASCII 2019 scene
//Name: Biped_Face.ma
//Last modified: Sat, Jul 17, 2021 03:03:58 PM
//Codeset: 1252
requires maya "2019";
requires "stereoCamera" "10.0";
requires "mtoa" "3.1.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201812112215-434d8d9c04";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19043)\n";
createNode transform -s -n "persp";
	rename -uid "D117D9E8-4691-392B-F2A4-24815DCBB6D8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 25.208747257918237 163.23743133260416 48.265485570995921 ;
	setAttr ".r" -type "double3" -0.93835272961101535 20.999999999996881 2.6615900187799922e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "267F1AF5-4A01-78C0-4EB6-64ABC914BC83";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 51.117043983197135;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 3.5047207587030385 160.38096777728458 8.7707187001402822 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "8F224400-4A8D-7D88-D863-35868EDE47FE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "C9291129-4A15-987B-34D9-74AA89E443F0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "C1ED5FFB-4152-8ADD-A18A-15907CBCA2BE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "83981E11-4642-2E0B-FB22-7DA419AB544F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "09C80222-461B-8BA7-41BB-3787318FB5D5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "1392BE2B-4AE9-5974-6DD5-F68E784CFCDD";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "TEMP_RigRoot";
	rename -uid "38DC35C7-495F-2C33-B25D-FA99AED60E55";
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
	addAttr -ci true -sn "IKSShape" -ln "IKSShape" -dt "string";
	addAttr -ci true -sn "JointShape" -ln "JointShape" -dt "string";
	addAttr -ci true -sn "IKPVShape" -ln "IKPVShape" -dt "string";
	addAttr -ci true -sn "LookAtShape" -ln "LookAtShape" -dt "string";
	addAttr -ci true -sn "FKRShape" -ln "FKRShape" -dt "string";
	addAttr -ci true -sn "FKShape" -ln "FKShape" -dt "string";
	addAttr -ci true -sn "EmptyShape" -ln "EmptyShape" -dt "string";
	setAttr ".rigMode" 2;
	setAttr ".pfrsName" -type "string" "TEMP";
	setAttr ".category" -type "string" "Rigging_Setup";
	setAttr ".operation" -type "string" "Limb Setup";
	setAttr ".nextLimbID" 26;
	setAttr ".nextJointID" 35;
createNode transform -n "JOINTS" -p "TEMP_RigRoot";
	rename -uid "F0A996D6-419B-B8A6-1921-499BFA031137";
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
createNode joint -n "Neck_Neck_M_JNT" -p "JOINTS";
	rename -uid "BD22F3A2-4B75-9F9B-3877-0284209C7182";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0 144.34698601506852 -2.5919166490755221 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90 -12.327770711316875 90.000000000000014 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.98060258440116099;
	setAttr ".ID" 16;
	setAttr ".pfrsName" -type "string" "Neck";
	setAttr ".startPos" -type "double3" 0 144.34698601506852 -2.5919166490755221 ;
createNode joint -n "Head_HeadRoot_M_JNT" -p "Neck_Neck_M_JNT";
	rename -uid "92AFC796-4EFA-2373-2F68-C28431854ECB";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 10.291649965089114 -4.4408920985006262e-16 -2.285205350524925e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.6099578633310234e-15 1.2293168035621834e-14 -14.922399134828286 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.71169548641632696;
	setAttr ".ID" 4;
	setAttr ".pfrsName" -type "string" "HeadRoot";
	setAttr ".startPos" -type "double3" 10.291649965089114 -4.4408920985006262e-16 -2.285205350524925e-15 ;
createNode joint -n "Head_HeadEnd_M_JNT" -p "Head_HeadRoot_M_JNT";
	rename -uid "E6E89895-411F-17C4-DA89-72829F124FDC";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 19.922741351332792 0 -4.2745488279157603e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 62.749830153854873 90 0 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.4787624836896267;
	setAttr ".ID" 5;
	setAttr ".pfrsName" -type "string" "HeadEnd";
	setAttr ".startPos" -type "double3" 19.922741351332792 0 -4.2745488279157603e-15 ;
createNode transform -n "HeadEnd_Joint_M_GRP1" -p "Head_HeadEnd_M_JNT";
	rename -uid "1079F6B3-4639-1894-CED3-40ADEC2473F7";
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
	setAttr ".t" -type "double3" 3.9813635091422502e-14 -5.6843418860808015e-14 3.5527136788005009e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999956 0.99999999999999933 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "HeadEnd_Joint_M_CTR1" -p "HeadEnd_Joint_M_GRP1";
	rename -uid "F85BAEB3-4BE0-86C7-C5A6-CB9AE17847F0";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.065171352947194 3.6014759947476963e-14 -6.095501893079471e-16 ;
	setAttr ".s" -type "double3" 0.1349703519022725 0.1349703519022725 0.1349703519022725 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "HeadEnd_Joint_M_CTR1Shape" -p "HeadEnd_Joint_M_CTR1";
	rename -uid "BB1D1A52-4737-3696-DEFB-D8A634C1B247";
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "Jaw_Jaw_M_JNT" -p "Head_HeadRoot_M_JNT";
	rename -uid "8214256E-4C21-0F5D-8A64-E3B08CF570B6";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 4.9290008175444768 -1.2811529959187311 -9.8429313758482276e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.8744552858160188e-15 -6.1524088744780868e-15 -103.99810108332892 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.010856553962328;
	setAttr ".ID" 18;
	setAttr ".pfrsName" -type "string" "Jaw";
	setAttr ".startPos" -type "double3" 4.9290008175444768 -1.2811529959187311 -9.8429313758482276e-16 ;
createNode joint -n "Chin_Chin_M_JNT" -p "Jaw_Jaw_M_JNT";
	rename -uid "F10204E1-4B78-38A1-C96F-3BAD880FE143";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 11.279549676047532 -0.18560342478328365 -0.0487527534312827 ;
	setAttr ".r" -type "double3" 0 0 -81.038307153634705 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 103.99810108332892 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.0437689645423225;
	setAttr ".ID" 11;
	setAttr ".pfrsName" -type "string" "Chin";
	setAttr ".startPos" -type "double3" 11.279549676047532 -0.18560342478328365 -0.0487527534312827 ;
	setAttr ".startRot" -type "double3" 0 0 -81.038307153634705 ;
createNode transform -n "Chin_Joint_M_GRP0" -p "Chin_Chin_M_JNT";
	rename -uid "22EBC727-49DC-3CAE-4CA6-B297FEFDF9BE";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -1.9895196601282805e-13 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Chin_Joint_M_CTR0" -p "Chin_Joint_M_GRP0";
	rename -uid "DCC7D02D-4612-8270-2FBE-94A686F481CE";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -7.1054273576010019e-15 0 0 ;
	setAttr ".rp" -type "double3" 1.0651713609695364 0 0 ;
	setAttr ".sp" -type "double3" 1.0651713609695364 0 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Chin_Joint_M_CTR0Shape" -p "Chin_Joint_M_CTR0";
	rename -uid "139BEDA1-4417-E174-882B-B595412E7D1A";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.9302011 0.86502963 -0.86502963 
		0.2001417 0.86502963 -0.86502963 1.9302011 -0.86502963 -0.86502963 0.2001417 -0.86502963 
		-0.86502963 1.9302011 -0.86502963 0.86502963 0.2001417 -0.86502963 0.86502963 1.9302011 
		0.86502963 0.86502963 0.2001417 0.86502963 0.86502963;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "LipLowerMid_LipLowerMid_M_JNT" -p "Jaw_Jaw_M_JNT";
	rename -uid "99571F64-40F3-7363-99C4-8BB20779B5DA";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.9227972292297242 2.7460634279276559 5.8103715452534169e-16 ;
	setAttr ".r" -type "double3" 0 0 15.24484017916388 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.010856553962328;
	setAttr ".ID" 17;
	setAttr ".pfrsName" -type "string" "LipLowerMid";
	setAttr ".startPos" -type "double3" 9.9227972292297242 2.7460634279276559 5.8103715452534169e-16 ;
	setAttr ".startRot" -type "double3" 0 0 15.24484017916388 ;
createNode transform -n "LipLowerMid_Joint_M_GRP0" -p "LipLowerMid_LipLowerMid_M_JNT";
	rename -uid "E0633B27-436E-E751-C74A-FF9E88AA9DBE";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 3.5527136788005009e-14 0 2.5243548967072378e-29 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999967 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "LipLowerMid_Joint_M_CTR0" -p "LipLowerMid_Joint_M_GRP0";
	rename -uid "A718ACF7-4566-E584-2652-81AA9D680A6E";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.4210854715202004e-14 2.8421709430404007e-14 0 ;
	setAttr ".rp" -type "double3" 1.065171360969515 2.8421709430404007e-14 0 ;
	setAttr ".sp" -type "double3" 1.065171360969515 2.8421709430404007e-14 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "LipLowerMid_Joint_M_CTR0Shape" -p "LipLowerMid_Joint_M_CTR0";
	rename -uid "59E50361-4D5E-9776-8F6A-7D91FB9EEF26";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.9302011 0.86502963 -0.86502963 
		0.2001417 0.86502963 -0.86502963 1.9302011 -0.86502963 -0.86502963 0.2001417 -0.86502963 
		-0.86502963 1.9302011 -0.86502963 0.86502963 0.2001417 -0.86502963 0.86502963 1.9302011 
		0.86502963 0.86502963 0.2001417 0.86502963 0.86502963;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "LipLower_LipLowerInner_M_JNT" -p "Jaw_Jaw_M_JNT";
	rename -uid "F7AC0AD4-4C8A-9876-FE99-23B736201232";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.6009173558517276 2.6265728713211045 -1.1564990075015458 ;
	setAttr ".r" -type "double3" -0.27455808619065397 18.143419689066068 26.490358358578355 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.010856553962328;
	setAttr ".ID" 2;
	setAttr ".pfrsName" -type "string" "LipLowerInner";
	setAttr ".startPos" -type "double3" 9.6009173558517276 2.6265728713211045 -1.1564990075015458 ;
	setAttr ".startRot" -type "double3" -0.27455808619065397 18.143419689066068 26.490358358578355 ;
createNode transform -n "LipLowerInner_Joint_M_GRP0" -p "LipLower_LipLowerInner_M_JNT";
	rename -uid "FC8A01C3-454D-8B90-FAD8-F2AF2E2EE4E9";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 2.1316282072803006e-14 -2.8421709430404007e-13 0 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "LipLowerInner_Joint_M_CTR0" -p "LipLowerInner_Joint_M_GRP0";
	rename -uid "25CD54E0-467B-1E9F-5483-D29EF8BD2F8A";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.5527136788005009e-15 2.8421709430404007e-14 -1.7763568394002505e-15 ;
	setAttr ".rp" -type "double3" 1.0651713609695541 5.6843418860808015e-14 -5.3290705182007514e-15 ;
	setAttr ".sp" -type "double3" 1.0651713609695541 5.6843418860808015e-14 -5.3290705182007514e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "LipLowerInner_Joint_M_CTR0Shape" -p "LipLowerInner_Joint_M_CTR0";
	rename -uid "6B3CF0AB-44BD-A8D8-E65A-E9BD235F60B8";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.9302011 0.86502963 -0.86502963 
		0.2001417 0.86502963 -0.86502963 1.9302011 -0.86502963 -0.86502963 0.2001417 -0.86502963 
		-0.86502963 1.9302011 -0.86502963 0.86502963 0.2001417 -0.86502963 0.86502963 1.9302011 
		0.86502963 0.86502963 0.2001417 0.86502963 0.86502963;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "LipLower_LipLowerOuter_M_JNT" -p "Jaw_Jaw_M_JNT";
	rename -uid "6CFF71ED-4C5A-129E-BF1B-D4AEBE77E938";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.0706086708385278 2.3103194877433251 -2.1618696627338334 ;
	setAttr ".r" -type "double3" 2.607707953245936 35.460864170580621 32.142809092063807 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.010856553962328;
	setAttr ".ID" 3;
	setAttr ".pfrsName" -type "string" "LipLowerOuter";
	setAttr ".startPos" -type "double3" 9.0706086708385278 2.3103194877433251 -2.1618696627338334 ;
	setAttr ".startRot" -type "double3" 2.607707953245936 35.460864170580621 32.142809092063807 ;
createNode transform -n "LipLowerOuter_Joint_M_GRP1" -p "LipLower_LipLowerOuter_M_JNT";
	rename -uid "D782AA41-405D-436A-AD88-029D7774AB97";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -5.3290705182007514e-15 -1.9895196601282805e-13 7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 1 0.99999999999999933 1.0000000000000004 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "LipLowerOuter_Joint_M_CTR1" -p "LipLowerOuter_Joint_M_GRP1";
	rename -uid "6092D3F7-4058-5FC0-367E-A0A6ED518061";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0 0 7.1054273576010019e-15 ;
	setAttr ".rp" -type "double3" 1.0651713609695452 0 1.0658141036401503e-14 ;
	setAttr ".sp" -type "double3" 1.0651713609695452 0 1.0658141036401503e-14 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "LipLowerOuter_Joint_M_CTR1Shape" -p "LipLowerOuter_Joint_M_CTR1";
	rename -uid "D79BC093-465A-6E17-A034-CC9211E41201";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.9302011 0.86502963 -0.86502963 
		0.2001417 0.86502963 -0.86502963 1.9302011 -0.86502963 -0.86502963 0.2001417 -0.86502963 
		-0.86502963 1.9302011 -0.86502963 0.86502963 0.2001417 -0.86502963 0.86502963 1.9302011 
		0.86502963 0.86502963 0.2001417 0.86502963 0.86502963;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Jaw_Joint_M_GRP0" -p "Jaw_Jaw_M_JNT";
	rename -uid "5D25A2FA-49DE-FE49-039C-8FB77EFB6A07";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 1.1368683772161603e-13 -1.2789769243681803e-13 6.3108872417680944e-30 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Jaw_Joint_M_CTR0" -p "Jaw_Joint_M_GRP0";
	rename -uid "C6E7B388-4802-C1B6-88C8-D688A216C814";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0 1.4210854715202004e-14 0 ;
	setAttr ".rp" -type "double3" 0 1.4210854715202004e-14 0 ;
	setAttr ".sp" -type "double3" 0 1.4210854715202004e-14 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Jaw_Joint_M_CTR0Shape" -p "Jaw_Joint_M_CTR0";
	rename -uid "BE8F1886-4B11-83E6-A757-5883B6310DE1";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.59111631 0.73784846 7.6921225 
		-0.59111631 0.73784846 7.6921225 0.59111631 -0.73784846 7.6921225 -0.59111631 -0.73784846 
		7.6921225 0.59111631 -0.73784846 -7.6921225 -0.59111631 -0.73784846 -7.6921225 0.59111631 
		0.73784846 -7.6921225 -0.59111631 0.73784846 -7.6921225;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "FaceMidRoot_DoNotSkin_M_JNT" -p "Head_HeadRoot_M_JNT";
	rename -uid "7E206120-462B-A7E2-7560-ECB00AB4361C";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 6.3745003889782517 -1.2606056436067286 -5.6449293436958348e-16 ;
	setAttr ".r" -type "double3" 0 0 38.042705288691003 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -103.99810108332892 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.010856553962328;
	setAttr ".ID" 20;
	setAttr ".pfrsName" -type "string" "DoNotSkin";
	setAttr ".startPos" -type "double3" 6.3745003889782517 -1.2606056436067286 -5.6449293436958348e-16 ;
	setAttr ".startRot" -type "double3" 0 0 38.042705288691003 ;
createNode joint -n "LipTopMid_LipTopMid_M_JNT" -p "FaceMidRoot_DoNotSkin_M_JNT";
	rename -uid "30F1B748-45B8-DEA6-3731-E782C110EC3E";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.1457692897974621 -4.1042094427226141 2.3647912756923517e-16 ;
	setAttr ".r" -type "double3" 0 0 38.042705288691003 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.0593375115320377e-30 -3.1780125345961146e-30 -38.042705288691003 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.010856553962328;
	setAttr ".ID" 9;
	setAttr ".pfrsName" -type "string" "LipTopMid";
	setAttr ".startPos" -type "double3" 9.1457692897974621 -4.1042094427226141 2.3647912756923517e-16 ;
	setAttr ".startRot" -type "double3" 0 0 38.042705288691003 ;
createNode transform -n "LipTopMid_Joint_M_GRP0" -p "LipTopMid_LipTopMid_M_JNT";
	rename -uid "17A9E566-41CA-7B35-02E6-BAB405BDE1BF";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -3.1086244689504383e-14 -2.8421709430404007e-13 8.2041534142985228e-29 ;
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999967 0.99999999999999967 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "LipTopMid_Joint_M_CTR0" -p "LipTopMid_Joint_M_GRP0";
	rename -uid "83CCAFF5-42D4-DA1F-8A9F-6588020D72E4";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.6645352591003757e-15 2.8421709430404007e-14 0 ;
	setAttr ".rp" -type "double3" 1.065171360969539 5.6843418860808015e-14 0 ;
	setAttr ".sp" -type "double3" 1.065171360969539 5.6843418860808015e-14 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "LipTopMid_Joint_M_CTR0Shape" -p "LipTopMid_Joint_M_CTR0";
	rename -uid "F98FC619-4519-B99E-C3A5-11BB413C42A7";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.9302011 0.86502963 -0.86502963 
		0.2001417 0.86502963 -0.86502963 1.9302011 -0.86502963 -0.86502963 0.2001417 -0.86502963 
		-0.86502963 1.9302011 -0.86502963 0.86502963 0.2001417 -0.86502963 0.86502963 1.9302011 
		0.86502963 0.86502963 0.2001417 0.86502963 0.86502963;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "LipTop_LipTopOuter_M_JNT" -p "FaceMidRoot_DoNotSkin_M_JNT";
	rename -uid "031D0AD9-438A-04F9-460D-5BBDB50FD2EB";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.1686845689717469 -4.3056404142817364 -2.1845629762258807 ;
	setAttr ".r" -type "double3" -8.1516295689387146 35.460864170580614 32.142809092063786 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.0593375115320377e-30 -3.1780125345961146e-30 -38.042705288691003 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.010856553962328;
	setAttr ".ID" 22;
	setAttr ".pfrsName" -type "string" "LipTopOuter";
	setAttr ".startPos" -type "double3" 8.1686845689717469 -4.3056404142817364 -2.1845629762258807 ;
	setAttr ".startRot" -type "double3" -8.1516295689387146 35.460864170580614 32.142809092063786 ;
createNode transform -n "LipTopOuter_Joint_M_GRP1" -p "LipTop_LipTopOuter_M_JNT";
	rename -uid "D63141CA-415D-8FD2-0D5F-FBA08F89314D";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -3.694822225952521e-13 -4.4408920985006262e-14 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "LipTopOuter_Joint_M_CTR1" -p "LipTopOuter_Joint_M_GRP1";
	rename -uid "0B0B3C0B-4146-0EBE-B199-7F9FEE021C58";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0 0 1.7763568394002505e-15 ;
	setAttr ".rp" -type "double3" 1.0651713609695435 2.8421709430404007e-14 5.3290705182007514e-15 ;
	setAttr ".sp" -type "double3" 1.0651713609695435 2.8421709430404007e-14 5.3290705182007514e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "LipTopOuter_Joint_M_CTR1Shape" -p "LipTopOuter_Joint_M_CTR1";
	rename -uid "B743E6C0-475A-9173-C6E2-2E83EA087A62";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.9302011 0.86502963 -0.86502963 
		0.2001417 0.86502963 -0.86502963 1.9302011 -0.86502963 -0.86502963 0.2001417 -0.86502963 
		-0.86502963 1.9302011 -0.86502963 0.86502963 0.2001417 -0.86502963 0.86502963 1.9302011 
		0.86502963 0.86502963 0.2001417 0.86502963 0.86502963;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "LipTop_LipTopInner_M_JNT" -p "FaceMidRoot_DoNotSkin_M_JNT";
	rename -uid "0543616A-4EFF-9556-54F7-C4AC99D4D262";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.7973987520761536 -4.1258107689367387 -1.2125066832956013 ;
	setAttr ".r" -type "double3" -6.5258169890713251 18.143419689066075 26.49035835857838 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.0593375115320377e-30 -3.1780125345961146e-30 -38.042705288691003 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.010856553962328;
	setAttr ".ID" 21;
	setAttr ".pfrsName" -type "string" "LipTopInner";
	setAttr ".startPos" -type "double3" 8.7973987520761536 -4.1258107689367387 -1.2125066832956013 ;
	setAttr ".startRot" -type "double3" -6.5258169890713251 18.143419689066075 26.49035835857838 ;
createNode transform -n "LipTopInner_Joint_M_GRP0" -p "LipTop_LipTopInner_M_JNT";
	rename -uid "C4C3FDCA-4DB1-02B0-AC46-13B0BD70E86A";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 3.1974423109204508e-14 -2.8421709430404007e-13 -3.1086244689504383e-14 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 1 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "LipTopInner_Joint_M_CTR0" -p "LipTopInner_Joint_M_GRP0";
	rename -uid "E520BEFD-48EA-FFE1-B377-53A6DC1B8BCA";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.5527136788005009e-15 2.8421709430404007e-14 1.7763568394002505e-15 ;
	setAttr ".rp" -type "double3" 1.0651713609695399 2.8421709430404007e-14 3.5527136788005009e-15 ;
	setAttr ".sp" -type "double3" 1.0651713609695399 2.8421709430404007e-14 3.5527136788005009e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "LipTopInner_Joint_M_CTR0Shape" -p "LipTopInner_Joint_M_CTR0";
	rename -uid "ED4DE94C-44E7-BA18-DFCA-BB809FF67CFD";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.9302011 0.86502963 -0.86502963 
		0.2001417 0.86502963 -0.86502963 1.9302011 -0.86502963 -0.86502963 0.2001417 -0.86502963 
		-0.86502963 1.9302011 -0.86502963 0.86502963 0.2001417 -0.86502963 0.86502963 1.9302011 
		0.86502963 0.86502963 0.2001417 0.86502963 0.86502963;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "NoseTip_NoseTip_M_JNT" -p "FaceMidRoot_DoNotSkin_M_JNT";
	rename -uid "1DC6E7D5-410E-7092-72DB-C1BFBD92724B";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 10.895337634361239 -1.1267951241853957 1.5929962919149048e-15 ;
	setAttr ".r" -type "double3" 0 0 38.042705288691003 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -38.042705288691003 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.010856553962328;
	setAttr ".ID" 10;
	setAttr ".pfrsName" -type "string" "NoseTip";
	setAttr ".startPos" -type "double3" 10.895337634361239 -1.1267951241853957 1.5929962919149048e-15 ;
	setAttr ".startRot" -type "double3" 0 0 38.042705288691003 ;
createNode transform -n "NoseTip_Joint_M_GRP0" -p "NoseTip_NoseTip_M_JNT";
	rename -uid "38AAC1AA-48F3-78D8-716B-7EA928C82AEB";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -3.8191672047105385e-14 -2.2737367544323206e-13 8.2041534142985228e-29 ;
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999967 0.99999999999999967 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "NoseTip_Joint_M_CTR0" -p "NoseTip_Joint_M_GRP0";
	rename -uid "9F9BABC0-4427-D839-FF2A-D98E421A8444";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0 0 -3.944304526105059e-31 ;
	setAttr ".rp" -type "double3" 1.0651713609695435 0 -7.8886090522101181e-31 ;
	setAttr ".sp" -type "double3" 1.0651713609695435 0 -7.8886090522101181e-31 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "NoseTip_Joint_M_CTR0Shape" -p "NoseTip_Joint_M_CTR0";
	rename -uid "EF28E25A-4A3F-8686-28F2-8690FAAD9485";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.9302011 0.86502963 -0.86502963 
		0.2001417 0.86502963 -0.86502963 1.9302011 -0.86502963 -0.86502963 0.2001417 -0.86502963 
		-0.86502963 1.9302011 -0.86502963 0.86502963 0.2001417 -0.86502963 0.86502963 1.9302011 
		0.86502963 0.86502963 0.2001417 0.86502963 0.86502963;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "Eye_Eye_M_JNT" -p "FaceMidRoot_DoNotSkin_M_JNT";
	rename -uid "B07E10AE-4C9B-1A9E-99C9-6793F5B1192F";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 5.6370279919747945 2.2135652846949787 -3.6476853716169497 ;
	setAttr ".r" -type "double3" 0 0 38.042705288691003 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -38.042705288691003 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.010856553962328;
	setAttr ".ID" 19;
	setAttr ".pfrsName" -type "string" "Eye";
	setAttr ".startPos" -type "double3" 5.6370279919747945 2.2135652846949787 -3.6476853716169497 ;
	setAttr ".startRot" -type "double3" 0 0 38.042705288691003 ;
createNode transform -n "Eye_Joint_M_GRP0" -p "Eye_Eye_M_JNT";
	rename -uid "CC2B7740-4CF5-CFBF-AF3D-8AAE4BDEF700";
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
	setAttr ".t" -type "double3" -5.1569859493838521e-14 -8.5265128291212022e-14 0 ;
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999967 0.99999999999999967 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Eye_Joint_M_CTR0" -p "Eye_Joint_M_GRP0";
	rename -uid "D3279A34-465F-F518-D528-A3A177C28DC3";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.065171352947194 3.6014759947476963e-14 -6.095501893079471e-16 ;
	setAttr ".s" -type "double3" 0.1349703519022725 0.1349703519022725 0.1349703519022725 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Eye_Joint_M_CTR0Shape" -p "Eye_Joint_M_CTR0";
	rename -uid "FBBABBC9-4A24-8577-7892-4BB4C94D7C7C";
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "EyeLowerLidRoot_DoNotSkin_M_JNT" -p "FaceMidRoot_DoNotSkin_M_JNT";
	rename -uid "A055B11C-44C2-E980-EA1A-DABEE631B038";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 5.6370279919747954 1.8625808827044184 -3.6476853716169502 ;
	setAttr ".r" -type "double3" 0 0 38.042705288691003 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -38.042705288691003 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.010856553962328;
	setAttr ".ID" 33;
	setAttr ".pfrsName" -type "string" "DoNotSkin";
	setAttr ".startPos" -type "double3" 5.6370279919747954 1.8625808827044184 -3.6476853716169502 ;
	setAttr ".startRot" -type "double3" 0 0 38.042705288691003 ;
createNode joint -n "EyeLowerLid_EyeLowerLidMid_M_JNT" -p "EyeLowerLidRoot_DoNotSkin_M_JNT";
	rename -uid "B48674C7-4576-A542-2182-DFAF5079EDA7";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.5087106392690033 -0.29755898166160866 -0.12137256308281028 ;
	setAttr ".r" -type "double3" 0 9.5532911248179975 38.042705288691025 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.0622500768802538e-31 -3.5311250384401269e-31 -38.042705288691003 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.010856553962328;
	setAttr ".ID" 26;
	setAttr ".pfrsName" -type "string" "EyeLowerLidMid";
	setAttr ".startPos" -type "double3" 1.5087106392690033 -0.29755898166160866 -0.12137256308281028 ;
	setAttr ".startRot" -type "double3" 0 9.5532911248179975 38.042705288691025 ;
createNode transform -n "EyeLowerLidMid_Joint_M_GRP1" -p "EyeLowerLid_EyeLowerLidMid_M_JNT";
	rename -uid "AD9FFB59-4F9A-F462-FA3A-CE911B083151";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -4.6629367034256575e-14 -3.4106051316484809e-13 -9.3258734068513149e-15 ;
	setAttr ".s" -type "double3" 0.999999999999999 0.99999999999999967 0.99999999999999967 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "EyeLowerLidMid_Joint_M_CTR1" -p "EyeLowerLidMid_Joint_M_GRP1";
	rename -uid "F26A5BC0-4E7C-954C-EBF5-00BC2E5413A4";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 4.4408920985006262e-16 -2.8421709430404007e-14 4.4408920985006262e-16 ;
	setAttr ".rp" -type "double3" 1.0651713609695439 -2.8421709430404007e-14 0 ;
	setAttr ".sp" -type "double3" 1.0651713609695439 -2.8421709430404007e-14 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "EyeLowerLidMid_Joint_M_CTR1Shape" -p "EyeLowerLidMid_Joint_M_CTR1";
	rename -uid "E3AC33EF-4C60-081A-DDBE-3B80B0B517EA";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.9302011 0.86502963 -0.86502963 
		0.2001417 0.86502963 -0.86502963 1.9302011 -0.86502963 -0.86502963 0.2001417 -0.86502963 
		-0.86502963 1.9302011 -0.86502963 0.86502963 0.2001417 -0.86502963 0.86502963 1.9302011 
		0.86502963 0.86502963 0.2001417 0.86502963 0.86502963;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "EyeLowerLid_EyeLowerLidInner_M_JNT" -p "EyeLowerLidRoot_DoNotSkin_M_JNT";
	rename -uid "E3900637-49EC-A1C6-DEF8-4A82811A8278";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.7736407300169168 -0.20295102679477567 1.0113282432434296 ;
	setAttr ".r" -type "double3" 0 9.5532911248179975 38.042705288691025 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -38.042705288691003 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.010856553962328;
	setAttr ".ID" 25;
	setAttr ".pfrsName" -type "string" "EyeLowerLidInner";
	setAttr ".startPos" -type "double3" 1.7736407300169168 -0.20295102679477567 1.0113282432434296 ;
	setAttr ".startRot" -type "double3" 0 9.5532911248179975 38.042705288691025 ;
createNode transform -n "EyeLowerLidInner_Joint_M_GRP0" -p "EyeLowerLid_EyeLowerLidInner_M_JNT";
	rename -uid "A3486F7E-4898-78AB-62DE-BC9C680697E3";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -3.5971225997855072e-14 -2.2737367544323206e-13 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 0.999999999999999 0.99999999999999967 0.99999999999999967 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "EyeLowerLidInner_Joint_M_CTR0" -p "EyeLowerLidInner_Joint_M_GRP0";
	rename -uid "DAA01CC1-47F8-51DB-88E5-6C9E38664875";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.1086244689504383e-15 2.8421709430404007e-14 0 ;
	setAttr ".rp" -type "double3" 1.0651713609695386 5.6843418860808015e-14 -4.4408920985006262e-16 ;
	setAttr ".sp" -type "double3" 1.0651713609695386 5.6843418860808015e-14 -4.4408920985006262e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "EyeLowerLidInner_Joint_M_CTR0Shape" -p "EyeLowerLidInner_Joint_M_CTR0";
	rename -uid "10515485-415E-68A0-23F6-2C96CACD1BD5";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.9302011 0.86502963 -0.86502963 
		0.2001417 0.86502963 -0.86502963 1.9302011 -0.86502963 -0.86502963 0.2001417 -0.86502963 
		-0.86502963 1.9302011 -0.86502963 0.86502963 0.2001417 -0.86502963 0.86502963 1.9302011 
		0.86502963 0.86502963 0.2001417 0.86502963 0.86502963;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "EyeLowerLid_EyeLowerLidOuter_M_JNT" -p "EyeLowerLidRoot_DoNotSkin_M_JNT";
	rename -uid "ADEB7DAD-4850-259C-07EE-C9AAACB26531";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.95395652165043165 -0.085010625932569736 -1.2221018311200178 ;
	setAttr ".r" -type "double3" 0 9.5532911248179975 38.042705288691025 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -38.042705288691003 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.010856553962328;
	setAttr ".ID" 27;
	setAttr ".pfrsName" -type "string" "EyeLowerLidOuter";
	setAttr ".startPos" -type "double3" 0.95395652165043165 -0.085010625932569736 -1.2221018311200178 ;
	setAttr ".startRot" -type "double3" 0 9.5532911248179975 38.042705288691025 ;
createNode transform -n "EyeLowerLidOuter_Joint_M_GRP2" -p "EyeLowerLid_EyeLowerLidOuter_M_JNT";
	rename -uid "CBEAF59E-4958-464C-3D0D-F49101311F7F";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -3.7747582837255322e-14 -2.5579538487363607e-13 -7.1054273576010019e-15 ;
	setAttr ".s" -type "double3" 0.999999999999999 0.99999999999999967 0.99999999999999967 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "EyeLowerLidOuter_Joint_M_CTR2" -p "EyeLowerLidOuter_Joint_M_GRP2";
	rename -uid "5F6E9815-4EBA-FFC6-217B-98A432655787";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.3322676295501878e-15 -2.8421709430404007e-14 -8.8817841970012523e-16 ;
	setAttr ".rp" -type "double3" 1.0651713609695466 -5.6843418860808015e-14 -1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" 1.0651713609695466 -5.6843418860808015e-14 -1.7763568394002505e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "EyeLowerLidOuter_Joint_M_CTR2Shape" -p "EyeLowerLidOuter_Joint_M_CTR2";
	rename -uid "93BC305B-47CE-98F3-5B3D-5EB1BA905762";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.9302011 0.86502963 -0.86502963 
		0.2001417 0.86502963 -0.86502963 1.9302011 -0.86502963 -0.86502963 0.2001417 -0.86502963 
		-0.86502963 1.9302011 -0.86502963 0.86502963 0.2001417 -0.86502963 0.86502963 1.9302011 
		0.86502963 0.86502963 0.2001417 0.86502963 0.86502963;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "DoNotSkin_Joint_M_GRP0" -p "EyeLowerLidRoot_DoNotSkin_M_JNT";
	rename -uid "7F78341B-432E-ED9A-06B7-4C9BF7492804";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -4.4464432136237519e-14 -2.2737367544323206e-13 -4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999967 0.99999999999999967 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "DoNotSkin_Joint_M_CTR0" -p "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|EyeLowerLidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0";
	rename -uid "8E7B75EB-4EE5-2BDE-7966-08A12EE39211";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -5.5511151231257827e-16 0 0 ;
	setAttr ".rp" -type "double3" 1.0651713609695448 0 0 ;
	setAttr ".sp" -type "double3" 1.0651713609695448 0 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "DoNotSkin_Joint_M_CTR0Shape" -p "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|EyeLowerLidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0|DoNotSkin_Joint_M_CTR0";
	rename -uid "88738C59-4182-FBC1-14F7-A3B262ABFC74";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.9302011 0.86502963 -0.86502963 
		0.2001417 0.86502963 -0.86502963 1.9302011 -0.86502963 -0.86502963 0.2001417 -0.86502963 
		-0.86502963 1.9302011 -0.86502963 0.86502963 0.2001417 -0.86502963 0.86502963 1.9302011 
		0.86502963 0.86502963 0.2001417 0.86502963 0.86502963;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "EyeUpperLidRoot_DoNotSkin_M_JNT" -p "FaceMidRoot_DoNotSkin_M_JNT";
	rename -uid "26178E67-4C7B-65C3-0BDC-A28E88C8BFCC";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 5.6370279919748016 2.6832896699794633 -3.6476853716169511 ;
	setAttr ".r" -type "double3" 0 0 38.042705288691003 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -38.042705288691003 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.010856553962328;
	setAttr ".ID" 12;
	setAttr ".pfrsName" -type "string" "DoNotSkin";
	setAttr ".startPos" -type "double3" 5.6370279919748016 2.6832896699794633 -3.6476853716169511 ;
	setAttr ".startRot" -type "double3" 0 0 38.042705288691003 ;
createNode joint -n "EyeUpperLid_EyeUpperLidMiddle_M_JNT" -p "EyeUpperLidRoot_DoNotSkin_M_JNT";
	rename -uid "B4B2E04E-458F-1362-BB7F-EAB7AF130EC8";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.5087106392690037 0.1381831273409363 -0.12137256308280982 ;
	setAttr ".r" -type "double3" 0 9.5532911248179975 38.042705288691025 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -38.042705288691003 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.010856553962328;
	setAttr ".ID" 7;
	setAttr ".pfrsName" -type "string" "EyeUpperLidMiddle";
	setAttr ".startPos" -type "double3" 1.5087106392690037 0.1381831273409363 -0.12137256308280982 ;
	setAttr ".startRot" -type "double3" 0 9.5532911248179975 38.042705288691025 ;
createNode transform -n "EyeUpperLidMiddle_Joint_M_GRP1" -p "EyeUpperLid_EyeUpperLidMiddle_M_JNT";
	rename -uid "02A0A92F-40B0-5017-A420-5BA99997FB91";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -2.5313084961453569e-14 -2.8421709430404007e-13 -3.1086244689504383e-15 ;
	setAttr ".s" -type "double3" 0.999999999999999 0.99999999999999967 0.99999999999999967 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "EyeUpperLidMiddle_Joint_M_CTR1" -p "EyeUpperLidMiddle_Joint_M_GRP1";
	rename -uid "5EC6C4E0-419A-5D53-3AC4-7C802F690F9F";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.3322676295501878e-15 0 -4.4408920985006262e-16 ;
	setAttr ".rp" -type "double3" 1.0651713609695403 0 -8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 1.0651713609695403 0 -8.8817841970012523e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "EyeUpperLidMiddle_Joint_M_CTR1Shape" -p "EyeUpperLidMiddle_Joint_M_CTR1";
	rename -uid "C6134BDA-4987-062C-E665-889A886C5EA0";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.9302011 0.86502963 -0.86502963 
		0.2001417 0.86502963 -0.86502963 1.9302011 -0.86502963 -0.86502963 0.2001417 -0.86502963 
		-0.86502963 1.9302011 -0.86502963 0.86502963 0.2001417 -0.86502963 0.86502963 1.9302011 
		0.86502963 0.86502963 0.2001417 0.86502963 0.86502963;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "EyeUpperLid_EyeUpperLidInner_M_JNT" -p "EyeUpperLidRoot_DoNotSkin_M_JNT";
	rename -uid "C50E3B1E-4B5F-1F63-577A-E9BB79A1AC8B";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.7736407300169168 -0.20295102679477567 1.0113282432434296 ;
	setAttr ".r" -type "double3" 0 9.5532911248179975 38.042705288691025 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -38.042705288691003 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.010856553962328;
	setAttr ".ID" 6;
	setAttr ".pfrsName" -type "string" "EyeUpperLidInner";
	setAttr ".startPos" -type "double3" 1.7736407300169168 -0.20295102679477567 1.0113282432434296 ;
	setAttr ".startRot" -type "double3" 0 9.5532911248179975 38.042705288691025 ;
createNode transform -n "EyeUpperLidInner_Joint_M_GRP0" -p "EyeUpperLid_EyeUpperLidInner_M_JNT";
	rename -uid "E9EC32CC-4556-025C-2D03-C7986871FFF0";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -3.2418512319054571e-14 -3.694822225952521e-13 -4.8849813083506888e-15 ;
	setAttr ".s" -type "double3" 0.999999999999999 0.99999999999999967 0.99999999999999967 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "EyeUpperLidInner_Joint_M_CTR0" -p "EyeUpperLidInner_Joint_M_GRP0";
	rename -uid "F47C6FE6-4B77-839E-9373-7D931535F9BB";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 4.4408920985006262e-16 0 -1.3322676295501878e-15 ;
	setAttr ".rp" -type "double3" 1.0651713609695439 -2.8421709430404007e-14 -2.2204460492503131e-15 ;
	setAttr ".sp" -type "double3" 1.0651713609695439 -2.8421709430404007e-14 -2.2204460492503131e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "EyeUpperLidInner_Joint_M_CTR0Shape" -p "EyeUpperLidInner_Joint_M_CTR0";
	rename -uid "2EA12692-40A4-85EA-0A37-F4A8E019A039";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.9302011 0.86502963 -0.86502963 
		0.2001417 0.86502963 -0.86502963 1.9302011 -0.86502963 -0.86502963 0.2001417 -0.86502963 
		-0.86502963 1.9302011 -0.86502963 0.86502963 0.2001417 -0.86502963 0.86502963 1.9302011 
		0.86502963 0.86502963 0.2001417 0.86502963 0.86502963;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "EyeUpperLid_EyeUpperLidOuter_M_JNT" -p "EyeUpperLidRoot_DoNotSkin_M_JNT";
	rename -uid "63EEE98F-4C8C-D5AA-94F8-ADA793C0F61A";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0.95395652165043165 -0.085010625932569736 -1.2221018311200178 ;
	setAttr ".r" -type "double3" 0 9.5532911248179975 38.042705288691025 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -38.042705288691003 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.010856553962328;
	setAttr ".ID" 8;
	setAttr ".pfrsName" -type "string" "EyeUpperLidOuter";
	setAttr ".startPos" -type "double3" 0.95395652165043165 -0.085010625932569736 -1.2221018311200178 ;
	setAttr ".startRot" -type "double3" 0 9.5532911248179975 38.042705288691025 ;
createNode transform -n "EyeUpperLidOuter_Joint_M_GRP2" -p "EyeUpperLid_EyeUpperLidOuter_M_JNT";
	rename -uid "66529494-4314-C586-23A8-E693A59C8156";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -3.0642155479654321e-14 -2.2737367544323206e-13 -9.7699626167013776e-15 ;
	setAttr ".s" -type "double3" 0.999999999999999 0.99999999999999967 0.99999999999999967 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "EyeUpperLidOuter_Joint_M_CTR2" -p "EyeUpperLidOuter_Joint_M_GRP2";
	rename -uid "DBAFAA63-4540-680A-FC3B-A4B7470A47FD";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.3322676295501878e-15 0 -8.8817841970012523e-16 ;
	setAttr ".rp" -type "double3" 1.0651713609695448 0 -1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" 1.0651713609695448 0 -1.7763568394002505e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "EyeUpperLidOuter_Joint_M_CTR2Shape" -p "EyeUpperLidOuter_Joint_M_CTR2";
	rename -uid "666ED245-4E2A-7D7E-4FC4-948EBFD41AC9";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.9302011 0.86502963 -0.86502963 
		0.2001417 0.86502963 -0.86502963 1.9302011 -0.86502963 -0.86502963 0.2001417 -0.86502963 
		-0.86502963 1.9302011 -0.86502963 0.86502963 0.2001417 -0.86502963 0.86502963 1.9302011 
		0.86502963 0.86502963 0.2001417 0.86502963 0.86502963;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "DoNotSkin_Joint_M_GRP0" -p "EyeUpperLidRoot_DoNotSkin_M_JNT";
	rename -uid "465DC0E1-4A54-F317-856D-5ABD30ED889D";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -4.2688075296837269e-14 -2.2737367544323206e-13 2.2204460492503131e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999967 0.99999999999999967 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "DoNotSkin_Joint_M_CTR0" -p "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|EyeUpperLidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0";
	rename -uid "C5B000CB-470B-C30B-F4A9-5BA3F8CAE06D";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.2212453270876722e-15 0 0 ;
	setAttr ".rp" -type "double3" 1.0651713609695466 0 0 ;
	setAttr ".sp" -type "double3" 1.0651713609695466 0 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "DoNotSkin_Joint_M_CTR0Shape" -p "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|EyeUpperLidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0|DoNotSkin_Joint_M_CTR0";
	rename -uid "79C5056C-4E40-C807-9CFE-60853A6032EC";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.9302011 0.86502963 -0.86502963 
		0.2001417 0.86502963 -0.86502963 1.9302011 -0.86502963 -0.86502963 0.2001417 -0.86502963 
		-0.86502963 1.9302011 -0.86502963 0.86502963 0.2001417 -0.86502963 0.86502963 1.9302011 
		0.86502963 0.86502963 0.2001417 0.86502963 0.86502963;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "Cheek_Cheek_M_JNT" -p "FaceMidRoot_DoNotSkin_M_JNT";
	rename -uid "54D4631A-40BF-C7B8-36EA-E6AC590B4AB1";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 5.5390636425412882 -4.5107086827957055 -4.6203919024570324 ;
	setAttr ".r" -type "double3" -8.7799195910065713 49.497804539281617 32.474527078439564 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -38.042705288691003 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.010856553962328;
	setAttr ".ID" 34;
	setAttr ".pfrsName" -type "string" "Cheek";
	setAttr ".startPos" -type "double3" 5.5390636425412882 -4.5107086827957055 -4.6203919024570324 ;
	setAttr ".startRot" -type "double3" -8.7799195910065713 49.497804539281617 32.474527078439564 ;
createNode transform -n "Cheek_Joint_M_GRP0" -p "Cheek_Cheek_M_JNT";
	rename -uid "D1DD06BA-42EA-DDD1-C92A-69A5C028E6A9";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -3.979039320256561e-13 -6.0396132539608516e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999978 0.99999999999999944 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Cheek_Joint_M_CTR0" -p "Cheek_Joint_M_GRP0";
	rename -uid "DDADE4AA-4F4E-30CC-A739-6DBDEE60A033";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 1.7763568394002505e-15 ;
	setAttr ".rp" -type "double3" 1.0651713609695417 0 3.5527136788005009e-15 ;
	setAttr ".sp" -type "double3" 1.0651713609695417 0 3.5527136788005009e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Cheek_Joint_M_CTR0Shape" -p "Cheek_Joint_M_CTR0";
	rename -uid "197EACCA-41F8-00D4-2F0C-5EAD7B239C06";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.9302011 0.86502963 -0.86502963 
		0.2001417 0.86502963 -0.86502963 1.9302011 -0.86502963 -0.86502963 0.2001417 -0.86502963 
		-0.86502963 1.9302011 -0.86502963 0.86502963 0.2001417 -0.86502963 0.86502963 1.9302011 
		0.86502963 0.86502963 0.2001417 0.86502963 0.86502963;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "CheekInner_CheekInner_M_JNT" -p "FaceMidRoot_DoNotSkin_M_JNT";
	rename -uid "127E9F11-406D-CD67-06D5-95BD64386BB7";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 7.7840512543286628 -1.3044095819709252 -3.2796976647654068 ;
	setAttr ".r" -type "double3" -8.7799195910065713 49.497804539281617 32.474527078439564 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -38.042705288691003 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.010856553962328;
	setAttr ".ID" 23;
	setAttr ".pfrsName" -type "string" "CheekInner";
	setAttr ".startPos" -type "double3" 7.7840512543286628 -1.3044095819709252 -3.2796976647654068 ;
	setAttr ".startRot" -type "double3" -8.7799195910065713 49.497804539281617 32.474527078439564 ;
createNode transform -n "CheekInner_Joint_M_GRP0" -p "CheekInner_CheekInner_M_JNT";
	rename -uid "3FC40187-4580-DE7B-ABAD-1882D181874E";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -2.042810365310288e-14 -1.9895196601282805e-13 -6.3948846218409017e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999978 0.99999999999999944 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "CheekInner_Joint_M_CTR0" -p "CheekInner_Joint_M_GRP0";
	rename -uid "816C93EA-4CDA-F7F0-2E8C-209005562F6A";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 0 ;
	setAttr ".rp" -type "double3" 1.0651713609695417 0 0 ;
	setAttr ".sp" -type "double3" 1.0651713609695417 0 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "CheekInner_Joint_M_CTR0Shape" -p "CheekInner_Joint_M_CTR0";
	rename -uid "C09D4107-41A0-A9E3-8AB8-5891C27B91E4";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.9302011 0.86502963 -0.86502963 
		0.2001417 0.86502963 -0.86502963 1.9302011 -0.86502963 -0.86502963 0.2001417 -0.86502963 
		-0.86502963 1.9302011 -0.86502963 0.86502963 0.2001417 -0.86502963 0.86502963 1.9302011 
		0.86502963 0.86502963 0.2001417 0.86502963 0.86502963;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "CheekBone_CheekBone_M_JNT" -p "FaceMidRoot_DoNotSkin_M_JNT";
	rename -uid "D6FCD561-42B1-B2CC-1335-FCA9E7E78459";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 5.8742212514794332 -0.37055517683362849 -5.8813615948871014 ;
	setAttr ".r" -type "double3" -8.7799195910065713 49.497804539281617 32.474527078439564 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -38.042705288691003 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.010856553962328;
	setAttr ".ID" 24;
	setAttr ".pfrsName" -type "string" "CheekBone";
	setAttr ".startPos" -type "double3" 5.8742212514794332 -0.37055517683362849 -5.8813615948871014 ;
	setAttr ".startRot" -type "double3" -8.7799195910065713 49.497804539281617 32.474527078439564 ;
createNode transform -n "CheekBone_Joint_M_GRP0" -p "CheekBone_CheekBone_M_JNT";
	rename -uid "AB611EAE-47A9-05ED-47A5-C5928D318C26";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -1.5987211554602254e-14 -2.5579538487363607e-13 -5.8619775700208265e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999978 0.99999999999999944 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "CheekBone_Joint_M_CTR0" -p "CheekBone_Joint_M_GRP0";
	rename -uid "E0EAAE9B-49EC-1085-3008-04BCF6F2E7C4";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -4.4408920985006262e-15 -2.8421709430404007e-14 1.7763568394002505e-15 ;
	setAttr ".rp" -type "double3" 1.0651713609695372 -2.8421709430404007e-14 3.5527136788005009e-15 ;
	setAttr ".sp" -type "double3" 1.0651713609695372 -2.8421709430404007e-14 3.5527136788005009e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "CheekBone_Joint_M_CTR0Shape" -p "CheekBone_Joint_M_CTR0";
	rename -uid "F894D1CB-4535-33B1-9808-4ABFC58E8402";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.9302011 0.86502963 -0.86502963 
		0.2001417 0.86502963 -0.86502963 1.9302011 -0.86502963 -0.86502963 0.2001417 -0.86502963 
		-0.86502963 1.9302011 -0.86502963 0.86502963 0.2001417 -0.86502963 0.86502963 1.9302011 
		0.86502963 0.86502963 0.2001417 0.86502963 0.86502963;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "Nostral_Nostral_M_JNT" -p "FaceMidRoot_DoNotSkin_M_JNT";
	rename -uid "4033D567-495E-2968-7568-C7B9368AD4F0";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.4491130878175564 -1.5396261575740902 -1.2735841792160763 ;
	setAttr ".r" -type "double3" -8.7799195910065713 49.497804539281617 32.474527078439564 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -38.042705288691003 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.010856553962328;
	setAttr ".ID" 14;
	setAttr ".pfrsName" -type "string" "Nostral";
	setAttr ".startPos" -type "double3" 9.4491130878175564 -1.5396261575740902 -1.2735841792160763 ;
	setAttr ".startRot" -type "double3" -8.7799195910065713 49.497804539281617 32.474527078439564 ;
createNode transform -n "Nostral_Joint_M_GRP0" -p "Nostral_Nostral_M_JNT";
	rename -uid "14CD74B4-474D-88A8-BAE9-8986F27367A5";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -1.9539925233402755e-14 -1.9895196601282805e-13 -6.9277916736609768e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999978 0.99999999999999944 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Nostral_Joint_M_CTR0" -p "Nostral_Joint_M_GRP0";
	rename -uid "69F19172-4D54-555D-860D-F89F88630026";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -5.3290705182007514e-15 2.8421709430404007e-14 0 ;
	setAttr ".rp" -type "double3" 1.0651713609695328 2.8421709430404007e-14 1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" 1.0651713609695328 2.8421709430404007e-14 1.7763568394002505e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Nostral_Joint_M_CTR0Shape" -p "Nostral_Joint_M_CTR0";
	rename -uid "F3D76054-460A-D023-F279-268FD1B1C570";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.9302011 0.86502963 -0.86502963 
		0.2001417 0.86502963 -0.86502963 1.9302011 -0.86502963 -0.86502963 0.2001417 -0.86502963 
		-0.86502963 1.9302011 -0.86502963 0.86502963 0.2001417 -0.86502963 0.86502963 1.9302011 
		0.86502963 0.86502963 0.2001417 0.86502963 0.86502963;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "EyeLowerSkin_EyeLowerSkin_M_JNT" -p "FaceMidRoot_DoNotSkin_M_JNT";
	rename -uid "092AB2F1-4129-32FB-8A9E-C1B07E241F11";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 7.4097234857347187 0.78777262232050815 -2.994605409897543 ;
	setAttr ".r" -type "double3" -8.7799195910065713 49.497804539281617 32.474527078439564 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -38.042705288691003 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.010856553962328;
	setAttr ".ID" 1;
	setAttr ".pfrsName" -type "string" "EyeLowerSkin";
	setAttr ".startPos" -type "double3" 7.4097234857347187 0.78777262232050815 -2.994605409897543 ;
	setAttr ".startRot" -type "double3" -8.7799195910065713 49.497804539281617 32.474527078439564 ;
createNode transform -n "EyeLowerSkin_Joint_M_GRP0" -p "EyeLowerSkin_EyeLowerSkin_M_JNT";
	rename -uid "D637C8C7-442F-1849-E6B3-37A6E48FE3FF";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -1.6875389974302379e-14 -3.4106051316484809e-13 -6.2172489379008766e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999978 0.99999999999999944 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "EyeLowerSkin_Joint_M_CTR0" -p "EyeLowerSkin_Joint_M_GRP0";
	rename -uid "BEB678EB-491E-A761-8184-F89A9FF14B0F";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.6645352591003757e-15 0 3.5527136788005009e-15 ;
	setAttr ".rp" -type "double3" 1.0651713609695408 -2.8421709430404007e-14 7.1054273576010019e-15 ;
	setAttr ".sp" -type "double3" 1.0651713609695408 -2.8421709430404007e-14 7.1054273576010019e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "EyeLowerSkin_Joint_M_CTR0Shape" -p "EyeLowerSkin_Joint_M_CTR0";
	rename -uid "58FB73DF-4FF5-AD7F-EC76-90A74EAE34AB";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.9302011 0.86502963 -0.86502963 
		0.2001417 0.86502963 -0.86502963 1.9302011 -0.86502963 -0.86502963 0.2001417 -0.86502963 
		-0.86502963 1.9302011 -0.86502963 0.86502963 0.2001417 -0.86502963 0.86502963 1.9302011 
		0.86502963 0.86502963 0.2001417 0.86502963 0.86502963;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "Ear_Ear_M_JNT" -p "FaceMidRoot_DoNotSkin_M_JNT";
	rename -uid "9474BE19-4CC5-5FDE-BF12-968AC2108670";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.5856419798779018 0.83079409258337333 -7.4146480525499179 ;
	setAttr ".r" -type "double3" -209.33497050466505 83.121216187370777 -170.93868797630523 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -38.042705288691003 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.010856553962328;
	setAttr ".ID" 28;
	setAttr ".pfrsName" -type "string" "Ear";
	setAttr ".startPos" -type "double3" -3.5856419798779018 0.83079409258337333 -7.4146480525499179 ;
	setAttr ".startRot" -type "double3" -209.33497050466505 83.121216187370777 -170.93868797630523 ;
createNode transform -n "Ear_Joint_M_GRP0" -p "Ear_Ear_M_JNT";
	rename -uid "93D0F8FC-4EF0-963D-1462-23A296011DCA";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 -1.4210854715202004e-13 -4.2632564145606011e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999922 0.99999999999999922 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ear_Joint_M_CTR0" -p "Ear_Joint_M_GRP0";
	rename -uid "8742BC0B-4C15-6152-050A-C0B929E7F02C";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.5527136788005009e-15 5.6843418860808015e-14 -8.8817841970012523e-16 ;
	setAttr ".rp" -type "double3" 1.0651713609695364 1.7053025658242404e-13 -1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" 1.0651713609695364 1.7053025658242404e-13 -1.7763568394002505e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ear_Joint_M_CTR0Shape" -p "Ear_Joint_M_CTR0";
	rename -uid "C41175A2-4BD5-49DA-0F6F-1396E996459B";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.9302011 0.86502963 -0.86502963 
		0.2001417 0.86502963 -0.86502963 1.9302011 -0.86502963 -0.86502963 0.2001417 -0.86502963 
		-0.86502963 1.9302011 -0.86502963 0.86502963 0.2001417 -0.86502963 0.86502963 1.9302011 
		0.86502963 0.86502963 0.2001417 0.86502963 0.86502963;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "DoNotSkin_Joint_M_GRP0" -p "FaceMidRoot_DoNotSkin_M_JNT";
	rename -uid "AF96DCA2-494A-FA3F-195F-AABA06A5707A";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -4.9737991503207013e-14 -5.6843418860808015e-14 -6.3108872417680944e-30 ;
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999967 0.99999999999999967 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "DoNotSkin_Joint_M_CTR0" -p "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0";
	rename -uid "FF9441EB-4444-FB89-6E5F-F8BEE88CF436";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -8.8817841970012523e-16 -2.8421709430404007e-14 -9.8607613152626476e-32 ;
	setAttr ".rp" -type "double3" -8.8817841970012523e-16 -5.6843418860808015e-14 -1.9721522630525295e-31 ;
	setAttr ".sp" -type "double3" -8.8817841970012523e-16 -5.6843418860808015e-14 -1.9721522630525295e-31 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "DoNotSkin_Joint_M_CTR0Shape" -p "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0|DoNotSkin_Joint_M_CTR0";
	rename -uid "189B1FA9-4603-A888-9F8D-1582CC53D736";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.50285995 0.76706225 10.747211 
		-0.50285995 0.76706225 10.747211 0.50285995 -0.76706225 10.747211 -0.50285995 -0.76706225 
		10.747211 0.50285995 -0.76706225 -10.747211 -0.50285995 -0.76706225 -10.747211 0.50285995 
		0.76706225 -10.747211 -0.50285995 0.76706225 -10.747211;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "FaceUpperRoot_DoNotSkin_M_JNT" -p "Head_HeadRoot_M_JNT";
	rename -uid "24F80305-4279-7711-4B45-C1B0415174EB";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 11.229111694120698 -0.68904558379406411 -0.0039806309618045828 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 62.749830153854873 90 0 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.4787624836896267;
	setAttr ".ID" 15;
	setAttr ".pfrsName" -type "string" "DoNotSkin";
	setAttr ".startPos" -type "double3" 11.229111694120698 -0.68904558379406411 -0.0039806309618045828 ;
createNode joint -n "FaceBrow_Brow3_M_JNT" -p "FaceUpperRoot_DoNotSkin_M_JNT";
	rename -uid "B27CBD52-4614-5051-2213-B98305ABB8FE";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.6466790691877251 -0.76940620187781406 6.9703283241949352 ;
	setAttr ".r" -type "double3" 0 9.5532911248179975 38.042705288691025 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 -48.751729070525947 -90.000000000000014 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.010856553962328;
	setAttr ".ID" 31;
	setAttr ".pfrsName" -type "string" "Brow3";
	setAttr ".startPos" -type "double3" 2.6466790691877251 -0.76940620187781406 6.9703283241949352 ;
	setAttr ".startRot" -type "double3" 0 9.5532911248179975 38.042705288691025 ;
createNode transform -n "Brow3_Joint_M_GRP2" -p "FaceBrow_Brow3_M_JNT";
	rename -uid "093DDCD9-4193-55F9-1C18-4F8BC66EAAC7";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -2.3092638912203256e-14 -2.2737367544323206e-13 -5.3290705182007514e-15 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Brow3_Joint_M_CTR2" -p "Brow3_Joint_M_GRP2";
	rename -uid "1659035B-492C-E5E0-3FE0-679499B48097";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0 -1.3322676295501878e-15 ;
	setAttr ".rp" -type "double3" 1.0651713609695426 2.8421709430404007e-14 -2.2204460492503131e-15 ;
	setAttr ".sp" -type "double3" 1.0651713609695426 2.8421709430404007e-14 -2.2204460492503131e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Brow3_Joint_M_CTR2Shape" -p "Brow3_Joint_M_CTR2";
	rename -uid "17EA37A9-499B-1AF2-AA33-88994297973F";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.9302011 0.86502963 -0.86502963 
		0.2001417 0.86502963 -0.86502963 1.9302011 -0.86502963 -0.86502963 0.2001417 -0.86502963 
		-0.86502963 1.9302011 -0.86502963 0.86502963 0.2001417 -0.86502963 0.86502963 1.9302011 
		0.86502963 0.86502963 0.2001417 0.86502963 0.86502963;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "FaceBrow_Brow2_M_JNT" -p "FaceUpperRoot_DoNotSkin_M_JNT";
	rename -uid "34967EF2-4F57-8ACF-17EB-EEB9E5ACE6C4";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.9929660159292437 -0.62028571918199238 6.1715188227069637 ;
	setAttr ".r" -type "double3" 0 9.5532911248179975 38.042705288691025 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 -48.751729070525947 -90.000000000000014 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.010856553962328;
	setAttr ".ID" 30;
	setAttr ".pfrsName" -type "string" "Brow2";
	setAttr ".startPos" -type "double3" 3.9929660159292437 -0.62028571918199238 6.1715188227069637 ;
	setAttr ".startRot" -type "double3" 0 9.5532911248179975 38.042705288691025 ;
createNode transform -n "Brow2_Joint_M_GRP1" -p "FaceBrow_Brow2_M_JNT";
	rename -uid "63219293-4E17-0F1B-A431-2F8833726BDF";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -3.0198066269804258e-14 -2.5579538487363607e-13 -7.9936057773011271e-15 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Brow2_Joint_M_CTR1" -p "Brow2_Joint_M_GRP1";
	rename -uid "6EECE1F3-4EC6-5E1B-130C-18945D4C4643";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.6645352591003757e-15 2.8421709430404007e-14 -8.8817841970012523e-16 ;
	setAttr ".rp" -type "double3" 1.0651713609695355 8.5265128291212022e-14 -2.2204460492503131e-15 ;
	setAttr ".sp" -type "double3" 1.0651713609695355 8.5265128291212022e-14 -2.2204460492503131e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Brow2_Joint_M_CTR1Shape" -p "Brow2_Joint_M_CTR1";
	rename -uid "4C185FBD-4E8A-9876-ECD1-AE88F3C06EDC";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.9302011 0.86502963 -0.86502963 
		0.2001417 0.86502963 -0.86502963 1.9302011 -0.86502963 -0.86502963 0.2001417 -0.86502963 
		-0.86502963 1.9302011 -0.86502963 0.86502963 0.2001417 -0.86502963 0.86502963 1.9302011 
		0.86502963 0.86502963 0.2001417 0.86502963 0.86502963;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "FaceBrow_Brow1_M_JNT" -p "FaceUpperRoot_DoNotSkin_M_JNT";
	rename -uid "F9C05085-409A-C47F-2874-DDA1985AEC65";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 5.3369750137903607 -0.59209765289392635 5.34771493739549 ;
	setAttr ".r" -type "double3" 0 9.5532911248179975 38.042705288691025 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 -48.751729070525947 -90.000000000000014 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.010856553962328;
	setAttr ".ID" 29;
	setAttr ".pfrsName" -type "string" "Brow1";
	setAttr ".startPos" -type "double3" 5.3369750137903607 -0.59209765289392635 5.34771493739549 ;
	setAttr ".startRot" -type "double3" 0 9.5532911248179975 38.042705288691025 ;
createNode transform -n "Brow1_Joint_M_GRP0" -p "FaceBrow_Brow1_M_JNT";
	rename -uid "A5AC4E9F-48BA-47AC-D746-1B87C3FC4FD4";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -2.8421709430404007e-14 -2.8421709430404007e-13 0 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Brow1_Joint_M_CTR0" -p "Brow1_Joint_M_GRP0";
	rename -uid "2CEF7C34-4095-E3BA-7BE3-7FA0001FBB77";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.2204460492503131e-15 2.8421709430404007e-14 -8.8817841970012523e-16 ;
	setAttr ".rp" -type "double3" 1.0651713609695412 8.5265128291212022e-14 -1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" 1.0651713609695412 8.5265128291212022e-14 -1.7763568394002505e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Brow1_Joint_M_CTR0Shape" -p "Brow1_Joint_M_CTR0";
	rename -uid "A70D741A-47AD-2E37-7B8B-5188F9E0DD82";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.9302011 0.86502963 -0.86502963 
		0.2001417 0.86502963 -0.86502963 1.9302011 -0.86502963 -0.86502963 0.2001417 -0.86502963 
		-0.86502963 1.9302011 -0.86502963 0.86502963 0.2001417 -0.86502963 0.86502963 1.9302011 
		0.86502963 0.86502963 0.2001417 0.86502963 0.86502963;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "EyeUpperSkin_EyeUpperSkin_M_JNT" -p "FaceUpperRoot_DoNotSkin_M_JNT";
	rename -uid "0A2DE480-4AFB-A79F-C0C3-598875B3793D";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.1529008211095859 -1.7795061669443442 6.5033959061001356 ;
	setAttr ".r" -type "double3" 0 9.5532911248179975 38.042705288691025 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 -48.751729070525954 -90.000000000000057 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.010856553962328;
	setAttr ".ID" 32;
	setAttr ".pfrsName" -type "string" "EyeUpperSkin";
	setAttr ".startPos" -type "double3" 3.1529008211095859 -1.7795061669443442 6.5033959061001356 ;
	setAttr ".startRot" -type "double3" 0 9.5532911248179975 38.042705288691025 ;
createNode transform -n "EyeUpperSkin_Joint_M_GRP0" -p "EyeUpperSkin_EyeUpperSkin_M_JNT";
	rename -uid "BAC54B93-4C7E-6319-F8CC-FBA1651058E7";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -2.3980817331903381e-14 -1.7053025658242404e-13 -8.4376949871511897e-15 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "EyeUpperSkin_Joint_M_CTR0" -p "EyeUpperSkin_Joint_M_GRP0";
	rename -uid "FA8A79C3-41D2-0556-A258-0BB5D36A295C";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.2204460492503131e-15 0 0 ;
	setAttr ".rp" -type "double3" 1.0651713609695457 0 4.4408920985006262e-16 ;
	setAttr ".sp" -type "double3" 1.0651713609695457 0 4.4408920985006262e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "EyeUpperSkin_Joint_M_CTR0Shape" -p "EyeUpperSkin_Joint_M_CTR0";
	rename -uid "FFA73CCF-4131-30AF-193B-66830ABC88ED";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.9302011 0.86502963 -0.86502963 
		0.2001417 0.86502963 -0.86502963 1.9302011 -0.86502963 -0.86502963 0.2001417 -0.86502963 
		-0.86502963 1.9302011 -0.86502963 0.86502963 0.2001417 -0.86502963 0.86502963 1.9302011 
		0.86502963 0.86502963 0.2001417 0.86502963 0.86502963;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode joint -n "BetweenBrow_BetweenBrow_M_JNT" -p "FaceUpperRoot_DoNotSkin_M_JNT";
	rename -uid "64F24B7B-489B-319A-924B-75BE4E43D726";
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
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -0.0039806309618047693 -0.56810376398064477 7.4408057751282319 ;
	setAttr ".r" -type "double3" 0 0 38.042705288691003 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 -48.75172907052594 -90 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.010856553962328;
	setAttr ".ID" 13;
	setAttr ".pfrsName" -type "string" "BetweenBrow";
	setAttr ".startPos" -type "double3" -0.0039806309618047693 -0.56810376398064477 
		7.4408057751282319 ;
	setAttr ".startRot" -type "double3" 0 0 38.042705288691003 ;
createNode transform -n "BetweenBrow_Joint_M_GRP0" -p "BetweenBrow_BetweenBrow_M_JNT";
	rename -uid "A00009A4-41C2-B986-522C-698DFD6D1CBF";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -3.4638958368304884e-14 -1.1368683772161603e-13 2.5243548967072378e-29 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000007 1 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "BetweenBrow_Joint_M_CTR0" -p "BetweenBrow_Joint_M_GRP0";
	rename -uid "3C7C9445-49F0-7A10-CF3E-9CAFD09C23AB";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.8817841970012523e-16 0 0 ;
	setAttr ".rp" -type "double3" 1.0651713609695426 0 0 ;
	setAttr ".sp" -type "double3" 1.0651713609695426 0 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "BetweenBrow_Joint_M_CTR0Shape" -p "BetweenBrow_Joint_M_CTR0";
	rename -uid "7759A16E-45DA-88A8-12F9-B08E81F116AC";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.9302011 0.86502963 -0.86502963 
		0.2001417 0.86502963 -0.86502963 1.9302011 -0.86502963 -0.86502963 0.2001417 -0.86502963 
		-0.86502963 1.9302011 -0.86502963 0.86502963 0.2001417 -0.86502963 0.86502963 1.9302011 
		0.86502963 0.86502963 0.2001417 0.86502963 0.86502963;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "DoNotSkin_Joint_M_GRP0" -p "FaceUpperRoot_DoNotSkin_M_JNT";
	rename -uid "3A0BB2CD-4ED3-2288-1E2E-3B91FBADE3C8";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 2.1684043449710089e-17 -1.7053025658242404e-13 -3.9968028886505635e-14 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "DoNotSkin_Joint_M_CTR0" -p "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceUpperRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0";
	rename -uid "8096D875-4043-4A7A-4A9E-E9A15FD3440E";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" 0 0.32302680611610413 0 ;
	setAttr ".sp" -type "double3" 0 0.32302680611610413 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "DoNotSkin_Joint_M_CTR0Shape" -p "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceUpperRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0|DoNotSkin_Joint_M_CTR0";
	rename -uid "4D96CF60-4BD6-B977-0448-B89D288B055F";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -5.694098 1.2296976 0.044044457 
		5.694098 1.2296976 0.044044457 -5.694098 -0.58364397 0.044044457 5.694098 -0.58364397 
		0.044044457 -5.694098 -0.58364397 -0.044044457 5.694098 -0.58364397 -0.044044457 
		-5.694098 1.2296976 -0.044044457 5.694098 1.2296976 -0.044044457;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "HeadRoot_Joint_M_GRP0" -p "Head_HeadRoot_M_JNT";
	rename -uid "C3180461-4224-EBBF-29E5-DB96664D400E";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -2.8421709430404007e-14 2.8421709430404007e-14 -6.3108872417680944e-30 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999967 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "HeadRoot_Joint_M_CTR0" -p "HeadRoot_Joint_M_GRP0";
	rename -uid "82961977-4990-2929-3451-F7A295E4AFB9";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 0 0 1.7516230804060213e-46 ;
	setAttr ".rp" -type "double3" 0 0 3.5032461608120427e-46 ;
	setAttr ".sp" -type "double3" 0 0 3.5032461608120427e-46 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "HeadRoot_Joint_M_CTR0Shape" -p "HeadRoot_Joint_M_CTR0";
	rename -uid "8A5687F9-417B-3A29-6045-6DB4AF2A8D4C";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.65313345 -11.689019 11.689019 
		-0.65313345 -11.689019 11.689019 0.65313345 11.689019 11.689019 -0.65313345 11.689019 
		11.689019 0.65313345 11.689019 -11.689019 -0.65313345 11.689019 -11.689019 0.65313345 
		-11.689019 -11.689019 -0.65313345 -11.689019 -11.689019;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Neck_Joint_M_GRP0" -p "Neck_Neck_M_JNT";
	rename -uid "B5F05879-48CB-CB5A-E1F9-4591412F619E";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -2.8421709430404007e-14 1.4210854715202004e-14 0 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999967 0.99999999999999933 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Neck_Joint_M_CTR0" -p "Neck_Joint_M_GRP0";
	rename -uid "1194455E-4992-0662-45F3-E68D70E6279E";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.8421709430404007e-14 0 0 ;
	setAttr ".rp" -type "double3" 1.0651713609694866 7.1054273576010019e-15 0 ;
	setAttr ".sp" -type "double3" 1.0651713609694866 7.1054273576010019e-15 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Neck_Joint_M_CTR0Shape" -p "Neck_Joint_M_CTR0";
	rename -uid "A1CCFCED-4E05-E117-5680-1990E86612BD";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.9302011 0.86502963 -0.86502963 
		0.2001417 0.86502963 -0.86502963 1.9302011 -0.86502963 -0.86502963 0.2001417 -0.86502963 
		-0.86502963 1.9302011 -0.86502963 0.86502963 0.2001417 -0.86502963 0.86502963 1.9302011 
		0.86502963 0.86502963 0.2001417 0.86502963 0.86502963;
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "LIMBS" -p "TEMP_RigRoot";
	rename -uid "B2A439FB-4CD9-4DD4-154F-8FA0976BD9C7";
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
createNode transform -n "EyeLowerSkin_Limb_M_NODE" -p "LIMBS";
	rename -uid "4F4E9E6E-4CAA-FDE0-0EAA-6385A4005D00";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "DoNotSkin" 
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
	setAttr ".pfrsName" -type "string" "EyeLowerSkin";
	setAttr ".limbType" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "LipLower_Limb_M_NODE" -p "LIMBS";
	rename -uid "0D2C3011-4326-1CF6-EAFF-CFB5C0AB017C";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "Jaw" 
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
	setAttr ".pfrsName" -type "string" "LipLower";
	setAttr ".limbType" 2;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "Head_Limb_M_NODE" -p "LIMBS";
	rename -uid "DD80694E-46D2-06EE-EB9F-81AF838A8BA1";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "Neck" 
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
	setAttr ".pfrsName" -type "string" "Head";
	setAttr ".limbType" 3;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
	setAttr ".enableEndControl" no;
createNode transform -n "EyeUpperLid_Limb_M_NODE" -p "LIMBS";
	rename -uid "B00E4737-443B-6F06-D436-ABA9C67218F4";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "DoNotSkin" 
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
	setAttr ".ID" 4;
	setAttr ".pfrsName" -type "string" "EyeUpperLid";
	setAttr ".limbType" 2;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "LipTopMid_Limb_M_NODE" -p "LIMBS";
	rename -uid "00EDF415-45C0-B206-1A68-D1B54BE0D02A";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "DoNotSkin" 
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
	setAttr ".ID" 5;
	setAttr ".pfrsName" -type "string" "LipTopMid";
	setAttr ".limbType" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "NoseTip_Limb_M_NODE" -p "LIMBS";
	rename -uid "31170CE9-49EF-0003-C20F-D3B0160BE528";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "DoNotSkin" 
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
	setAttr ".pfrsName" -type "string" "NoseTip";
	setAttr ".limbType" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "Chin_Limb_M_NODE" -p "LIMBS";
	rename -uid "4065AC9C-4807-7032-6C0C-609EC58D3580";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "Jaw" 
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
	setAttr ".ID" 7;
	setAttr ".pfrsName" -type "string" "Chin";
	setAttr ".limbType" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "EyeUpperLidRoot_Limb_M_NODE" -p "LIMBS";
	rename -uid "E9FFDE9F-4E31-E54C-41A9-B1A723A72BB1";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "DoNotSkin" 
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
	setAttr ".ID" 8;
	setAttr ".pfrsName" -type "string" "EyeUpperLidRoot";
	setAttr ".limbType" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "BetweenBrow_Limb_M_NODE" -p "LIMBS";
	rename -uid "D03695ED-414D-C4E9-C4EF-7EBE5FE09FDB";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "DoNotSkin" 
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
	setAttr ".ID" 9;
	setAttr ".pfrsName" -type "string" "BetweenBrow";
	setAttr ".limbType" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "Nostral_Limb_M_NODE" -p "LIMBS";
	rename -uid "0236022B-4F1E-3EA5-FE8A-4699696FDF92";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "DoNotSkin" 
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
	setAttr ".ID" 10;
	setAttr ".pfrsName" -type "string" "Nostral";
	setAttr ".limbType" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "FaceUpperRoot_Limb_M_NODE" -p "LIMBS";
	rename -uid "66D2BEFB-4CC5-CE32-8C5F-ABA22773EBED";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 1 -en "HeadRoot:HeadEnd" 
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
	setAttr ".ID" 11;
	setAttr ".pfrsName" -type "string" "FaceUpperRoot";
	setAttr ".limbType" 1;
	setAttr ".limbParentJoint" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "Neck_Limb_M_NODE" -p "LIMBS";
	rename -uid "7F80F2AD-451B-2532-E4C1-2FB76BC448E9";
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
	setAttr ".ID" 12;
	setAttr ".pfrsName" -type "string" "Neck";
	setAttr ".limbType" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "LipLowerMid_Limb_M_NODE" -p "LIMBS";
	rename -uid "22E696B2-4F67-05AF-A92C-81832DCBD9F2";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "Jaw" 
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
	setAttr ".ID" 13;
	setAttr ".pfrsName" -type "string" "LipLowerMid";
	setAttr ".limbType" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "Jaw_Limb_M_NODE" -p "LIMBS";
	rename -uid "03DA214A-4289-4AB1-5888-4D84CC0078D7";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 1 -en "HeadRoot:HeadEnd" 
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
	setAttr ".ID" 14;
	setAttr ".pfrsName" -type "string" "Jaw";
	setAttr ".limbType" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "Eye_Limb_M_NODE" -p "LIMBS";
	rename -uid "61D941C6-458B-432C-3DE9-7589300FDC59";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "DoNotSkin" 
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
	addAttr -ci true -sn "lookAtDistance" -ln "lookAtDistance" -dv 1 -min 0 -at "float";
	addAttr -ci true -sn "lookAtOffsetX" -ln "lookAtOffsetX" -at "float";
	addAttr -ci true -sn "lookAtOffsetY" -ln "lookAtOffsetY" -at "float";
	addAttr -ci true -sn "lookAtOffsetZ" -ln "lookAtOffsetZ" -at "float";
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
	setAttr ".ID" 15;
	setAttr ".pfrsName" -type "string" "Eye";
	setAttr ".limbType" 1;
	setAttr ".bhvType" -type "string" "Look At";
	setAttr ".bhvFile" -type "string" "LookAt_01";
	setAttr ".lookAtDistance" 6.6999998092651367;
createNode transform -n "Eye_LookAt_M_GRP0" -p "Eye_Limb_M_NODE";
	rename -uid "1C511E38-4BF4-EBF8-94E8-36BC9B25026A";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 3.6476853716169475 161.38605062898458 9.3968107611600562 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" 90 -86.794434359216922 -90 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
	setAttr ".groupType" -type "string" "LookAt";
createNode transform -n "Eye_LookAt_M_CTR0" -p "Eye_LookAt_M_GRP0";
	rename -uid "FC94C740-446B-E730-843F-718643CB8131";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 6.6999998092651403 0 0 ;
	setAttr ".rp" -type "double3" -1.9984014443252818e-15 0 4.4408920985006262e-16 ;
	setAttr ".sp" -type "double3" -1.9984014443252818e-15 0 4.4408920985006262e-16 ;
	setAttr ".rigRoot" -type "string" "Circle_Wire";
createNode nurbsCurve -n "Eye_LookAt_M_CTR0Shape" -p "Eye_LookAt_M_CTR0";
	rename -uid "165EF569-41DA-B169-3863-F59F6C644029";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovrgbf" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-2.8384664949124968e-15 0.78361162489122449 -0.7836116248912246
		-2.5103479774064535e-15 6.7857323231109097e-17 -1.1081941875543877
		-2.1424795602579616e-15 -0.78361162489122449 -0.78361162489122438
		-1.9503535730638841e-15 -1.1081941875543881 -5.7448982375248304e-17
		-2.046514813438192e-15 -0.78361162489122449 0.78361162489122449
		-2.3746333309442352e-15 -1.1100856969603222e-16 1.1081941875543884
		-2.7425017480927272e-15 0.78361162489122449 0.78361162489122438
		-2.9346277352868047e-15 1.1081941875543881 1.511240500779959e-16
		-2.8384664949124968e-15 0.78361162489122449 -0.7836116248912246
		-2.5103479774064535e-15 6.7857323231109097e-17 -1.1081941875543877
		-2.1424795602579616e-15 -0.78361162489122449 -0.78361162489122438
		;
createNode transform -n "FaceMidRoot_Limb_M_NODE" -p "LIMBS";
	rename -uid "A5EAE37E-4ED1-67A2-18B2-DAB835B69665";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 1 -en "HeadRoot:HeadEnd" 
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
	setAttr ".ID" 16;
	setAttr ".pfrsName" -type "string" "FaceMidRoot";
	setAttr ".limbType" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "LipTop_Limb_M_NODE" -p "LIMBS";
	rename -uid "3342E0C7-4925-052D-DA23-B8A70623537F";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "DoNotSkin" 
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
	setAttr ".ID" 17;
	setAttr ".pfrsName" -type "string" "LipTop";
	setAttr ".limbType" 2;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "CheekInner_Limb_M_NODE" -p "LIMBS";
	rename -uid "E3691B39-4272-4128-8AF6-CEAD44DB246E";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "DoNotSkin" 
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
	setAttr ".ID" 18;
	setAttr ".pfrsName" -type "string" "CheekInner";
	setAttr ".limbType" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "CheekBone_Limb_M_NODE" -p "LIMBS";
	rename -uid "62E6EE28-48E6-3EF5-F5C3-968E47155722";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "DoNotSkin" 
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
	setAttr ".ID" 19;
	setAttr ".pfrsName" -type "string" "CheekBone";
	setAttr ".limbType" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "EyeLowerLid_Limb_M_NODE" -p "LIMBS";
	rename -uid "8A9B2570-4774-BDF5-D82C-91BD784F28D2";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "DoNotSkin" 
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
	setAttr ".ID" 20;
	setAttr ".pfrsName" -type "string" "EyeLowerLid";
	setAttr ".limbType" 2;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "Ear_Limb_M_NODE" -p "LIMBS";
	rename -uid "64D68963-4CDD-6B89-BD9D-72B32FF9BA42";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "DoNotSkin" 
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
	setAttr ".ID" 21;
	setAttr ".pfrsName" -type "string" "Ear";
	setAttr ".limbType" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "FaceBrow_Limb_M_NODE" -p "LIMBS";
	rename -uid "FE02E3B5-49AA-08DF-BF01-E2B0EA96826A";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "DoNotSkin" 
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
	setAttr ".ID" 22;
	setAttr ".pfrsName" -type "string" "FaceBrow";
	setAttr ".limbType" 2;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "EyeUpperSkin_Limb_M_NODE" -p "LIMBS";
	rename -uid "2D2323CD-4684-FE07-FDEB-678762BFF62F";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "DoNotSkin" 
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
	setAttr ".ID" 23;
	setAttr ".pfrsName" -type "string" "EyeUpperSkin";
	setAttr ".limbType" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "EyeLowerLidRoot_Limb_M_NODE" -p "LIMBS";
	rename -uid "F0C8EC22-43B5-CBB0-2C66-048E6ABF8127";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "DoNotSkin" 
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
	setAttr ".ID" 24;
	setAttr ".pfrsName" -type "string" "EyeLowerLidRoot";
	setAttr ".limbType" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "Cheek_Limb_M_NODE" -p "LIMBS";
	rename -uid "87A9198C-4EB3-BA5E-513C-C1AB2F4D41C4";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "DoNotSkin" 
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
	setAttr ".ID" 25;
	setAttr ".pfrsName" -type "string" "Cheek";
	setAttr ".limbType" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "MESHES" -p "TEMP_RigRoot";
	rename -uid "3CA3B755-47AC-EAEE-3131-218304FD7BE3";
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
	rename -uid "4A8814E5-417D-C098-9701-07A88A442889";
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
	rename -uid "68220220-4195-268B-4BF8-68BAC6152D6C";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Circle_Wire";
createNode nurbsCurve -n "Circle_WireShape" -p "Circle_Wire";
	rename -uid "F3C0225A-497F-6BFD-45BC-DFBDCEEB1EA1";
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
	rename -uid "72B855B4-4167-70B1-DCB9-0C8242647694";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Cube_PolyShape" -p "Cube_Poly";
	rename -uid "366E0274-4DC5-62A0-0593-4A924F063616";
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Cube_Wire" -p "CONTROL_SHAPE_TEMPLATES";
	rename -uid "3E62F145-47C0-DCCB-A9EA-518E33D36423";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cube_Wire";
createNode nurbsCurve -n "Cube_WireShape" -p "Cube_Wire";
	rename -uid "03F050DF-44BD-EAFD-30B3-9EADF6498CE8";
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
	rename -uid "38D46D42-4CB0-4994-CC7D-6198615B4469";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cylinder_Poly";
createNode mesh -n "Cylinder_PolyShape" -p "Cylinder_Poly";
	rename -uid "149416F2-4417-65E2-79E9-529EB178C0C7";
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Diamond_Wire" -p "CONTROL_SHAPE_TEMPLATES";
	rename -uid "C2C71960-4AF3-7F26-428E-CABAD684A880";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Diamond_Wire";
createNode nurbsCurve -n "Diamond_WireShape" -p "Diamond_Wire";
	rename -uid "20300E68-4476-3A83-08EB-9EBD70AEDE3E";
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
	rename -uid "C9F65277-43FF-5AD4-729A-D89631CA60B3";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Pin_Wire";
createNode nurbsCurve -n "Pin_WireShape" -p "Pin_Wire";
	rename -uid "735E4FDF-4103-279C-698E-02A3EAD0458C";
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
	rename -uid "AF017865-420B-A70E-A6C1-6DA3ED396B0C";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Sphere_Poly";
createNode mesh -n "Sphere_PolyShape" -p "Sphere_Poly";
	rename -uid "45DAAB39-4FC7-20D9-D9EA-388E67E86A50";
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Square_Wire" -p "CONTROL_SHAPE_TEMPLATES";
	rename -uid "D06B988B-4D9F-14F7-F958-6F9808FC71C1";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Square_Wire";
createNode nurbsCurve -n "Square_WireShape" -p "Square_Wire";
	rename -uid "75D6A907-47B0-F204-54FF-5D9301CC7F60";
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
	rename -uid "BDF4FFEC-4422-1DD4-6C7F-1C9DFC87017C";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "0F37286C-4420-F7A4-CB52-6D8B7E54AB9D";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "2706BD75-49A4-ED0F-2322-C59E0AD63BE6";
createNode displayLayerManager -n "layerManager";
	rename -uid "2C90A34B-4D73-6ED3-1577-6E9849530227";
	setAttr -s 4 ".dli[1:3]"  1 2 3;
createNode displayLayer -n "defaultLayer";
	rename -uid "79583C8F-4258-932E-6216-729189F6B70B";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "D89A1905-44FF-CF4B-265C-5EBA036121CD";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "6937C941-477E-C9CE-A681-D7B08C551259";
	setAttr ".g" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "B1806AE3-4F8E-02F9-2B95-38A48693D627";
createNode shadingEngine -n "Control_Shapes_lambert2SG";
	rename -uid "83C569C6-44AA-2CCF-47C0-058E1E5EB0FC";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "TempMaterial";
	rename -uid "D87834E5-4CB6-89B6-DD71-039557B6D912";
	setAttr ".c" -type "float3" 1 0.92308331 0 ;
	setAttr ".it" -type "float3" 0.69277108 0.69277108 0.69277108 ;
createNode materialInfo -n "materialInfo5";
	rename -uid "CCCA94FB-4C90-7716-04E7-54B312A19F46";
createNode shadingEngine -n "MControlsMaterialSG";
	rename -uid "4E06EF4F-4138-238E-D42B-FFB64F2A65F1";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode surfaceShader -n "MControlsMaterial";
	rename -uid "8B6576C3-4B9B-A778-2F90-BF815799254D";
	setAttr ".oc" -type "float3" 1 1 0 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "5AE80EA0-48F1-65B1-81DB-F19C43736BD2";
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
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1064\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1064\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1064\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 50 -size 100 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "9C7A8A00-4F5E-BD1D-F569-7798DDB2B295";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode materialInfo -n "Control_Shapes_materialInfo1";
	rename -uid "4DF8402F-46D5-2410-9ED9-98925CA46CEF";
createNode shadingEngine -n "lambert2SG";
	rename -uid "BFD8781C-41F5-E8E6-C1B9-2C82D209F739";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode lambert -n "Control_Shapes_TempMaterial";
	rename -uid "48A2F7CF-4E7B-DFA3-5D72-DE9215244088";
	setAttr ".c" -type "float3" 1 0.92308331 0 ;
	setAttr ".it" -type "float3" 0.69277108 0.69277108 0.69277108 ;
createNode surfaceShader -n "LControlsMaterial";
	rename -uid "7D3BE04E-440F-65A9-EFA0-F0872498D50E";
	setAttr ".oc" -type "float3" 0 0 1 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "LControlsMaterialSG";
	rename -uid "DAB98684-4A7B-2228-B288-95A6CAFE6D47";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "6F5A2587-473D-4C2B-C24D-9DB65F91BE03";
createNode surfaceShader -n "MControlsMaterial1";
	rename -uid "5AE11835-4362-5E63-B401-D9BA0F5C626D";
	setAttr ".oc" -type "float3" 1 1 0 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "MControlsMaterialSG1";
	rename -uid "6AC3916E-44CF-CBCF-B351-03A06BC9B98B";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr -s 34 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
	rename -uid "C9EF2FAC-4609-8053-68FE-BDB59FEF27AA";
createNode surfaceShader -n "RControlsMaterial";
	rename -uid "5770B2BE-4DB3-AB60-0F90-7495DD7ADA6A";
	setAttr ".oc" -type "float3" 1 0 0 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "RControlsMaterialSG";
	rename -uid "D920EE91-461B-DB06-3975-02B5BD4CDFE4";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
	rename -uid "8C51A94C-4E64-4EB1-ECBA-899BF0B37ED2";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "2BEC3B00-4A11-7130-33FF-BBB17855F2D4";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -421.42855468250531 -324.99998708566085 ;
	setAttr ".tgi[0].vh" -type "double2" 421.42855468250531 323.80951094248991 ;
	setAttr -s 205 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1222.857177734375;
	setAttr ".tgi[0].ni[0].y" 7155.71435546875;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 868.5714111328125;
	setAttr ".tgi[0].ni[1].y" 7160;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 1222.857177734375;
	setAttr ".tgi[0].ni[2].y" 6997.14306640625;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 104.28571319580078;
	setAttr ".tgi[0].ni[3].y" 6428.5712890625;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 472.85714721679688;
	setAttr ".tgi[0].ni[4].y" 2210;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 1222.857177734375;
	setAttr ".tgi[0].ni[5].y" 6781.4287109375;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 868.5714111328125;
	setAttr ".tgi[0].ni[6].y" 6715.71435546875;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 472.85714721679688;
	setAttr ".tgi[0].ni[7].y" 2108.571533203125;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 472.85714721679688;
	setAttr ".tgi[0].ni[8].y" 2007.142822265625;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" -240;
	setAttr ".tgi[0].ni[9].y" 6580;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 868.5714111328125;
	setAttr ".tgi[0].ni[10].y" 6614.28564453125;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 1222.857177734375;
	setAttr ".tgi[0].ni[11].y" 6394.28564453125;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 1222.857177734375;
	setAttr ".tgi[0].ni[12].y" 6292.85693359375;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 1222.857177734375;
	setAttr ".tgi[0].ni[13].y" 6191.4287109375;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 472.85714721679688;
	setAttr ".tgi[0].ni[14].y" 1690;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 1222.857177734375;
	setAttr ".tgi[0].ni[15].y" 6032.85693359375;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 868.5714111328125;
	setAttr ".tgi[0].ni[16].y" 6354.28564453125;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 1222.857177734375;
	setAttr ".tgi[0].ni[17].y" 5874.28564453125;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 1222.857177734375;
	setAttr ".tgi[0].ni[18].y" 5772.85693359375;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 472.85714721679688;
	setAttr ".tgi[0].ni[19].y" 1531.4285888671875;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 472.85714721679688;
	setAttr ".tgi[0].ni[20].y" 1430;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 104.28571319580078;
	setAttr ".tgi[0].ni[21].y" 6530;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 868.5714111328125;
	setAttr ".tgi[0].ni[22].y" 5605.71435546875;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 472.85714721679688;
	setAttr ".tgi[0].ni[23].y" 1271.4285888671875;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 104.28571319580078;
	setAttr ".tgi[0].ni[24].y" 6634.28564453125;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 868.5714111328125;
	setAttr ".tgi[0].ni[25].y" 5764.28564453125;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 1222.857177734375;
	setAttr ".tgi[0].ni[26].y" 5271.4287109375;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 472.85714721679688;
	setAttr ".tgi[0].ni[27].y" 910;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 868.5714111328125;
	setAttr ".tgi[0].ni[28].y" 6455.71435546875;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 868.5714111328125;
	setAttr ".tgi[0].ni[29].y" 5922.85693359375;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 472.85714721679688;
	setAttr ".tgi[0].ni[30].y" 504.28570556640625;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 868.5714111328125;
	setAttr ".tgi[0].ni[31].y" 6081.4287109375;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 104.28571319580078;
	setAttr ".tgi[0].ni[32].y" 6792.85693359375;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 1222.857177734375;
	setAttr ".tgi[0].ni[33].y" 4827.14306640625;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 472.85714721679688;
	setAttr ".tgi[0].ni[34].y" 345.71429443359375;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 104.28571319580078;
	setAttr ".tgi[0].ni[35].y" 5264.28564453125;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 472.85714721679688;
	setAttr ".tgi[0].ni[36].y" 244.28572082519531;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 1222.857177734375;
	setAttr ".tgi[0].ni[37].y" 4554.28564453125;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 104.28571319580078;
	setAttr ".tgi[0].ni[38].y" 4890;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 868.5714111328125;
	setAttr ".tgi[0].ni[39].y" 4761.4287109375;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 472.85714721679688;
	setAttr ".tgi[0].ni[40].y" 85.714286804199219;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 472.85714721679688;
	setAttr ".tgi[0].ni[41].y" -72.857139587402344;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" 472.85714721679688;
	setAttr ".tgi[0].ni[42].y" -174.28572082519531;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 1222.857177734375;
	setAttr ".tgi[0].ni[43].y" 4167.14306640625;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 868.5714111328125;
	setAttr ".tgi[0].ni[44].y" 4660;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" -240;
	setAttr ".tgi[0].ni[45].y" 6931.4287109375;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" -1170;
	setAttr ".tgi[0].ni[46].y" 5630;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 104.28571319580078;
	setAttr ".tgi[0].ni[47].y" 5162.85693359375;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 104.28571319580078;
	setAttr ".tgi[0].ni[48].y" 5710;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 1222.857177734375;
	setAttr ".tgi[0].ni[49].y" 3780;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 868.5714111328125;
	setAttr ".tgi[0].ni[50].y" 3185.71435546875;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 1222.857177734375;
	setAttr ".tgi[0].ni[51].y" 3621.428466796875;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" 104.28571319580078;
	setAttr ".tgi[0].ni[52].y" 6327.14306640625;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" 1222.857177734375;
	setAttr ".tgi[0].ni[53].y" 3462.857177734375;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 1222.857177734375;
	setAttr ".tgi[0].ni[54].y" 3361.428466796875;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 868.5714111328125;
	setAttr ".tgi[0].ni[55].y" 3822.857177734375;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" 868.5714111328125;
	setAttr ".tgi[0].ni[56].y" 2431.428466796875;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 104.28571319580078;
	setAttr ".tgi[0].ni[57].y" 5811.4287109375;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" 1222.857177734375;
	setAttr ".tgi[0].ni[58].y" 3088.571533203125;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" -240;
	setAttr ".tgi[0].ni[59].y" 5888.5712890625;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" 104.28571319580078;
	setAttr ".tgi[0].ni[60].y" 4681.4287109375;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" 1222.857177734375;
	setAttr ".tgi[0].ni[61].y" 2872.857177734375;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" 868.5714111328125;
	setAttr ".tgi[0].ni[62].y" 4241.4287109375;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" 1222.857177734375;
	setAttr ".tgi[0].ni[63].y" 2714.28564453125;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" 472.85714721679688;
	setAttr ".tgi[0].ni[64].y" -795.71429443359375;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" 1222.857177734375;
	setAttr ".tgi[0].ni[65].y" 2555.71435546875;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" 868.5714111328125;
	setAttr ".tgi[0].ni[66].y" 3084.28564453125;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" 868.5714111328125;
	setAttr ".tgi[0].ni[67].y" 4082.857177734375;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" 472.85714721679688;
	setAttr ".tgi[0].ni[68].y" -1302.857177734375;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" 868.5714111328125;
	setAttr ".tgi[0].ni[69].y" 4400;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" -555.71429443359375;
	setAttr ".tgi[0].ni[70].y" 6404.28564453125;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" 868.5714111328125;
	setAttr ".tgi[0].ni[71].y" 3721.428466796875;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" 472.85714721679688;
	setAttr ".tgi[0].ni[72].y" -1461.4285888671875;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" 1222.857177734375;
	setAttr ".tgi[0].ni[73].y" 2054.28564453125;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" 472.85714721679688;
	setAttr ".tgi[0].ni[74].y" -1562.857177734375;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" 472.85714721679688;
	setAttr ".tgi[0].ni[75].y" -1664.2857666015625;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" 104.28571319580078;
	setAttr ".tgi[0].ni[76].y" 5537.14306640625;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" 1222.857177734375;
	setAttr ".tgi[0].ni[77].y" 1781.4285888671875;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" 868.5714111328125;
	setAttr ".tgi[0].ni[78].y" 2764.28564453125;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" 472.85714721679688;
	setAttr ".tgi[0].ni[79].y" -1765.7142333984375;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" -240;
	setAttr ".tgi[0].ni[80].y" 5230;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" 868.5714111328125;
	setAttr ".tgi[0].ni[81].y" 2044.2857666015625;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" 868.5714111328125;
	setAttr ".tgi[0].ni[82].y" 3981.428466796875;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" 1222.857177734375;
	setAttr ".tgi[0].ni[83].y" 1394.2857666015625;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" 472.85714721679688;
	setAttr ".tgi[0].ni[84].y" -2025.7142333984375;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" 472.85714721679688;
	setAttr ".tgi[0].ni[85].y" -2184.28564453125;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" 104.28571319580078;
	setAttr ".tgi[0].ni[86].y" 3491.428466796875;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" 868.5714111328125;
	setAttr ".tgi[0].ni[87].y" 1345.7142333984375;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" 1222.857177734375;
	setAttr ".tgi[0].ni[88].y" 1064.2857666015625;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" 472.85714721679688;
	setAttr ".tgi[0].ni[89].y" -2285.71435546875;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" 868.5714111328125;
	setAttr ".tgi[0].ni[90].y" 1037.142822265625;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" 1222.857177734375;
	setAttr ".tgi[0].ni[91].y" 848.5714111328125;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" 472.85714721679688;
	setAttr ".tgi[0].ni[92].y" -2444.28564453125;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" 104.28571319580078;
	setAttr ".tgi[0].ni[93].y" 4788.5712890625;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" 1222.857177734375;
	setAttr ".tgi[0].ni[94].y" 632.85711669921875;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" 472.85714721679688;
	setAttr ".tgi[0].ni[95].y" -2545.71435546875;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" 868.5714111328125;
	setAttr ".tgi[0].ni[96].y" 4501.4287109375;
	setAttr ".tgi[0].ni[96].nvs" 18304;
	setAttr ".tgi[0].ni[97].x" 868.5714111328125;
	setAttr ".tgi[0].ni[97].y" 764.28570556640625;
	setAttr ".tgi[0].ni[97].nvs" 18304;
	setAttr ".tgi[0].ni[98].x" 868.5714111328125;
	setAttr ".tgi[0].ni[98].y" 504.28570556640625;
	setAttr ".tgi[0].ni[98].nvs" 18304;
	setAttr ".tgi[0].ni[99].x" 868.5714111328125;
	setAttr ".tgi[0].ni[99].y" 662.85711669921875;
	setAttr ".tgi[0].ni[99].nvs" 18304;
	setAttr ".tgi[0].ni[100].x" 1222.857177734375;
	setAttr ".tgi[0].ni[100].y" 245.71427917480469;
	setAttr ".tgi[0].ni[100].nvs" 18304;
	setAttr ".tgi[0].ni[101].x" 1222.857177734375;
	setAttr ".tgi[0].ni[101].y" 144.28572082519531;
	setAttr ".tgi[0].ni[101].nvs" 18304;
	setAttr ".tgi[0].ni[102].x" 1222.857177734375;
	setAttr ".tgi[0].ni[102].y" 42.857143402099609;
	setAttr ".tgi[0].ni[102].nvs" 18304;
	setAttr ".tgi[0].ni[103].x" 472.85714721679688;
	setAttr ".tgi[0].ni[103].y" -2748.571533203125;
	setAttr ".tgi[0].ni[103].nvs" 18304;
	setAttr ".tgi[0].ni[104].x" 104.28571319580078;
	setAttr ".tgi[0].ni[104].y" 2288.571533203125;
	setAttr ".tgi[0].ni[104].nvs" 18304;
	setAttr ".tgi[0].ni[105].x" 104.28571319580078;
	setAttr ".tgi[0].ni[105].y" 2618.571533203125;
	setAttr ".tgi[0].ni[105].nvs" 18304;
	setAttr ".tgi[0].ni[106].x" 472.85714721679688;
	setAttr ".tgi[0].ni[106].y" -2850;
	setAttr ".tgi[0].ni[106].nvs" 18304;
	setAttr ".tgi[0].ni[107].x" 104.28571319580078;
	setAttr ".tgi[0].ni[107].y" 3050;
	setAttr ".tgi[0].ni[107].nvs" 18304;
	setAttr ".tgi[0].ni[108].x" 472.85714721679688;
	setAttr ".tgi[0].ni[108].y" -2951.428466796875;
	setAttr ".tgi[0].ni[108].nvs" 18304;
	setAttr ".tgi[0].ni[109].x" 1222.857177734375;
	setAttr ".tgi[0].ni[109].y" -401.42855834960938;
	setAttr ".tgi[0].ni[109].nvs" 18304;
	setAttr ".tgi[0].ni[110].x" 1222.857177734375;
	setAttr ".tgi[0].ni[110].y" -502.85714721679688;
	setAttr ".tgi[0].ni[110].nvs" 18304;
	setAttr ".tgi[0].ni[111].x" 868.5714111328125;
	setAttr ".tgi[0].ni[111].y" -257.14285278320313;
	setAttr ".tgi[0].ni[111].nvs" 18304;
	setAttr ".tgi[0].ni[112].x" 472.85714721679688;
	setAttr ".tgi[0].ni[112].y" -3154.28564453125;
	setAttr ".tgi[0].ni[112].nvs" 18304;
	setAttr ".tgi[0].ni[113].x" -862.85711669921875;
	setAttr ".tgi[0].ni[113].y" 6021.4287109375;
	setAttr ".tgi[0].ni[113].nvs" 18304;
	setAttr ".tgi[0].ni[114].x" 1222.857177734375;
	setAttr ".tgi[0].ni[114].y" -775.71429443359375;
	setAttr ".tgi[0].ni[114].nvs" 18304;
	setAttr ".tgi[0].ni[115].x" 472.85714721679688;
	setAttr ".tgi[0].ni[115].y" -3255.71435546875;
	setAttr ".tgi[0].ni[115].nvs" 18304;
	setAttr ".tgi[0].ni[116].x" 472.85714721679688;
	setAttr ".tgi[0].ni[116].y" -3357.142822265625;
	setAttr ".tgi[0].ni[116].nvs" 18304;
	setAttr ".tgi[0].ni[117].x" 472.85714721679688;
	setAttr ".tgi[0].ni[117].y" -3458.571533203125;
	setAttr ".tgi[0].ni[117].nvs" 18304;
	setAttr ".tgi[0].ni[118].x" 868.5714111328125;
	setAttr ".tgi[0].ni[118].y" 117.14286041259766;
	setAttr ".tgi[0].ni[118].nvs" 18304;
	setAttr ".tgi[0].ni[119].x" 868.5714111328125;
	setAttr ".tgi[0].ni[119].y" 15.714285850524902;
	setAttr ".tgi[0].ni[119].nvs" 18304;
	setAttr ".tgi[0].ni[120].x" 1222.857177734375;
	setAttr ".tgi[0].ni[120].y" -1162.857177734375;
	setAttr ".tgi[0].ni[120].nvs" 18304;
	setAttr ".tgi[0].ni[121].x" 868.5714111328125;
	setAttr ".tgi[0].ni[121].y" -358.57144165039063;
	setAttr ".tgi[0].ni[121].nvs" 18304;
	setAttr ".tgi[0].ni[122].x" 868.5714111328125;
	setAttr ".tgi[0].ni[122].y" -675.71429443359375;
	setAttr ".tgi[0].ni[122].nvs" 18304;
	setAttr ".tgi[0].ni[123].x" 1222.857177734375;
	setAttr ".tgi[0].ni[123].y" -1378.5714111328125;
	setAttr ".tgi[0].ni[123].nvs" 18304;
	setAttr ".tgi[0].ni[124].x" 104.28571319580078;
	setAttr ".tgi[0].ni[124].y" 1778.5714111328125;
	setAttr ".tgi[0].ni[124].nvs" 18304;
	setAttr ".tgi[0].ni[125].x" 868.5714111328125;
	setAttr ".tgi[0].ni[125].y" -834.28570556640625;
	setAttr ".tgi[0].ni[125].nvs" 18304;
	setAttr ".tgi[0].ni[126].x" 1222.857177734375;
	setAttr ".tgi[0].ni[126].y" -1594.2857666015625;
	setAttr ".tgi[0].ni[126].nvs" 18304;
	setAttr ".tgi[0].ni[127].x" 472.85714721679688;
	setAttr ".tgi[0].ni[127].y" -3617.142822265625;
	setAttr ".tgi[0].ni[127].nvs" 18304;
	setAttr ".tgi[0].ni[128].x" 472.85714721679688;
	setAttr ".tgi[0].ni[128].y" -3718.571533203125;
	setAttr ".tgi[0].ni[128].nvs" 18304;
	setAttr ".tgi[0].ni[129].x" 868.5714111328125;
	setAttr ".tgi[0].ni[129].y" -574.28570556640625;
	setAttr ".tgi[0].ni[129].nvs" 18304;
	setAttr ".tgi[0].ni[130].x" 472.85714721679688;
	setAttr ".tgi[0].ni[130].y" 3478.571533203125;
	setAttr ".tgi[0].ni[130].nvs" 18304;
	setAttr ".tgi[0].ni[131].x" 472.85714721679688;
	setAttr ".tgi[0].ni[131].y" 4125.71435546875;
	setAttr ".tgi[0].ni[131].nvs" 18304;
	setAttr ".tgi[0].ni[132].x" 472.85714721679688;
	setAttr ".tgi[0].ni[132].y" 2482.857177734375;
	setAttr ".tgi[0].ni[132].nvs" 18304;
	setAttr ".tgi[0].ni[133].x" 472.85714721679688;
	setAttr ".tgi[0].ni[133].y" -637.14288330078125;
	setAttr ".tgi[0].ni[133].nvs" 18304;
	setAttr ".tgi[0].ni[134].x" 1222.857177734375;
	setAttr ".tgi[0].ni[134].y" -2095.71435546875;
	setAttr ".tgi[0].ni[134].nvs" 18304;
	setAttr ".tgi[0].ni[135].x" 472.85714721679688;
	setAttr ".tgi[0].ni[135].y" 4024.28564453125;
	setAttr ".tgi[0].ni[135].nvs" 18304;
	setAttr ".tgi[0].ni[136].x" -240;
	setAttr ".tgi[0].ni[136].y" 4614.28564453125;
	setAttr ".tgi[0].ni[136].nvs" 18304;
	setAttr ".tgi[0].ni[137].x" 472.85714721679688;
	setAttr ".tgi[0].ni[137].y" -434.28570556640625;
	setAttr ".tgi[0].ni[137].nvs" 18304;
	setAttr ".tgi[0].ni[138].x" 472.85714721679688;
	setAttr ".tgi[0].ni[138].y" 4227.14306640625;
	setAttr ".tgi[0].ni[138].nvs" 18304;
	setAttr ".tgi[0].ni[139].x" 472.85714721679688;
	setAttr ".tgi[0].ni[139].y" 2844.28564453125;
	setAttr ".tgi[0].ni[139].nvs" 18304;
	setAttr ".tgi[0].ni[140].x" 104.28571319580078;
	setAttr ".tgi[0].ni[140].y" 2720;
	setAttr ".tgi[0].ni[140].nvs" 18304;
	setAttr ".tgi[0].ni[141].x" 472.85714721679688;
	setAttr ".tgi[0].ni[141].y" 707.14288330078125;
	setAttr ".tgi[0].ni[141].nvs" 18304;
	setAttr ".tgi[0].ni[142].x" 472.85714721679688;
	setAttr ".tgi[0].ni[142].y" 1011.4285888671875;
	setAttr ".tgi[0].ni[142].nvs" 18304;
	setAttr ".tgi[0].ni[143].x" -862.85711669921875;
	setAttr ".tgi[0].ni[143].y" 5691.4287109375;
	setAttr ".tgi[0].ni[143].nvs" 18304;
	setAttr ".tgi[0].ni[144].x" -555.71429443359375;
	setAttr ".tgi[0].ni[144].y" 4668.5712890625;
	setAttr ".tgi[0].ni[144].nvs" 18304;
	setAttr ".tgi[0].ni[145].x" 472.85714721679688;
	setAttr ".tgi[0].ni[145].y" 2742.857177734375;
	setAttr ".tgi[0].ni[145].nvs" 18304;
	setAttr ".tgi[0].ni[146].x" 104.28571319580078;
	setAttr ".tgi[0].ni[146].y" 3592.857177734375;
	setAttr ".tgi[0].ni[146].nvs" 18304;
	setAttr ".tgi[0].ni[147].x" 472.85714721679688;
	setAttr ".tgi[0].ni[147].y" 2584.28564453125;
	setAttr ".tgi[0].ni[147].nvs" 18304;
	setAttr ".tgi[0].ni[148].x" 472.85714721679688;
	setAttr ".tgi[0].ni[148].y" -535.71429443359375;
	setAttr ".tgi[0].ni[148].nvs" 18304;
	setAttr ".tgi[0].ni[149].x" 472.85714721679688;
	setAttr ".tgi[0].ni[149].y" -1100;
	setAttr ".tgi[0].ni[149].nvs" 18304;
	setAttr ".tgi[0].ni[150].x" 472.85714721679688;
	setAttr ".tgi[0].ni[150].y" 3751.428466796875;
	setAttr ".tgi[0].ni[150].nvs" 18304;
	setAttr ".tgi[0].ni[151].x" 472.85714721679688;
	setAttr ".tgi[0].ni[151].y" 808.5714111328125;
	setAttr ".tgi[0].ni[151].nvs" 18304;
	setAttr ".tgi[0].ni[152].x" 472.85714721679688;
	setAttr ".tgi[0].ni[152].y" 3275.71435546875;
	setAttr ".tgi[0].ni[152].nvs" 18304;
	setAttr ".tgi[0].ni[153].x" 472.85714721679688;
	setAttr ".tgi[0].ni[153].y" 3377.142822265625;
	setAttr ".tgi[0].ni[153].nvs" 18304;
	setAttr ".tgi[0].ni[154].x" 472.85714721679688;
	setAttr ".tgi[0].ni[154].y" -1201.4285888671875;
	setAttr ".tgi[0].ni[154].nvs" 18304;
	setAttr ".tgi[0].ni[155].x" 472.85714721679688;
	setAttr ".tgi[0].ni[155].y" -332.85714721679688;
	setAttr ".tgi[0].ni[155].nvs" 18304;
	setAttr ".tgi[0].ni[156].x" 472.85714721679688;
	setAttr ".tgi[0].ni[156].y" 1170;
	setAttr ".tgi[0].ni[156].nvs" 18304;
	setAttr ".tgi[0].ni[157].x" 104.28571319580078;
	setAttr ".tgi[0].ni[157].y" 2187.142822265625;
	setAttr ".tgi[0].ni[157].nvs" 18304;
	setAttr ".tgi[0].ni[158].x" 472.85714721679688;
	setAttr ".tgi[0].ni[158].y" -897.14288330078125;
	setAttr ".tgi[0].ni[158].nvs" 18304;
	setAttr ".tgi[0].ni[159].x" 472.85714721679688;
	setAttr ".tgi[0].ni[159].y" -998.5714111328125;
	setAttr ".tgi[0].ni[159].nvs" 18304;
	setAttr ".tgi[0].ni[160].x" 472.85714721679688;
	setAttr ".tgi[0].ni[160].y" -1867.142822265625;
	setAttr ".tgi[0].ni[160].nvs" 18304;
	setAttr ".tgi[0].ni[161].x" 472.85714721679688;
	setAttr ".tgi[0].ni[161].y" 1848.5714111328125;
	setAttr ".tgi[0].ni[161].nvs" 18304;
	setAttr ".tgi[0].ni[162].x" 472.85714721679688;
	setAttr ".tgi[0].ni[162].y" 3174.28564453125;
	setAttr ".tgi[0].ni[162].nvs" 18304;
	setAttr ".tgi[0].ni[163].x" 104.28571319580078;
	setAttr ".tgi[0].ni[163].y" 3865.71435546875;
	setAttr ".tgi[0].ni[163].nvs" 18304;
	setAttr ".tgi[0].ni[164].x" 472.85714721679688;
	setAttr ".tgi[0].ni[164].y" 605.71429443359375;
	setAttr ".tgi[0].ni[164].nvs" 18304;
	setAttr ".tgi[0].ni[165].x" 1222.857177734375;
	setAttr ".tgi[0].ni[165].y" -3911.428466796875;
	setAttr ".tgi[0].ni[165].nvs" 18304;
	setAttr ".tgi[0].ni[166].x" 868.5714111328125;
	setAttr ".tgi[0].ni[166].y" -3858.571533203125;
	setAttr ".tgi[0].ni[166].nvs" 18304;
	setAttr ".tgi[0].ni[167].x" 472.85714721679688;
	setAttr ".tgi[0].ni[167].y" -3877.142822265625;
	setAttr ".tgi[0].ni[167].nvs" 18304;
	setAttr ".tgi[0].ni[168].x" 868.5714111328125;
	setAttr ".tgi[0].ni[168].y" -2752.857177734375;
	setAttr ".tgi[0].ni[168].nvs" 18304;
	setAttr ".tgi[0].ni[169].x" 472.85714721679688;
	setAttr ".tgi[0].ni[169].y" -3052.857177734375;
	setAttr ".tgi[0].ni[169].nvs" 18304;
	setAttr ".tgi[0].ni[170].x" 1222.857177734375;
	setAttr ".tgi[0].ni[170].y" -4241.4287109375;
	setAttr ".tgi[0].ni[170].nvs" 18304;
	setAttr ".tgi[0].ni[171].x" 1222.857177734375;
	setAttr ".tgi[0].ni[171].y" -4342.85693359375;
	setAttr ".tgi[0].ni[171].nvs" 18304;
	setAttr ".tgi[0].ni[172].x" -1477.142822265625;
	setAttr ".tgi[0].ni[172].y" 4250;
	setAttr ".tgi[0].ni[172].nvs" 18304;
	setAttr ".tgi[0].ni[173].x" 1222.857177734375;
	setAttr ".tgi[0].ni[173].y" -4501.4287109375;
	setAttr ".tgi[0].ni[173].nvs" 18304;
	setAttr ".tgi[0].ni[174].x" 1222.857177734375;
	setAttr ".tgi[0].ni[174].y" -4602.85693359375;
	setAttr ".tgi[0].ni[174].nvs" 18304;
	setAttr ".tgi[0].ni[175].x" 472.85714721679688;
	setAttr ".tgi[0].ni[175].y" -4092.857177734375;
	setAttr ".tgi[0].ni[175].nvs" 18304;
	setAttr ".tgi[0].ni[176].x" -1784.2857666015625;
	setAttr ".tgi[0].ni[176].y" 3945.71435546875;
	setAttr ".tgi[0].ni[176].nvs" 18304;
	setAttr ".tgi[0].ni[177].x" -1784.2857666015625;
	setAttr ".tgi[0].ni[177].y" 3832.857177734375;
	setAttr ".tgi[0].ni[177].nvs" 18304;
	setAttr ".tgi[0].ni[178].x" 868.5714111328125;
	setAttr ".tgi[0].ni[178].y" -4488.5712890625;
	setAttr ".tgi[0].ni[178].nvs" 18304;
	setAttr ".tgi[0].ni[179].x" 1222.857177734375;
	setAttr ".tgi[0].ni[179].y" -4990;
	setAttr ".tgi[0].ni[179].nvs" 18304;
	setAttr ".tgi[0].ni[180].x" 1222.857177734375;
	setAttr ".tgi[0].ni[180].y" -5091.4287109375;
	setAttr ".tgi[0].ni[180].nvs" 18304;
	setAttr ".tgi[0].ni[181].x" 472.85714721679688;
	setAttr ".tgi[0].ni[181].y" -5232.85693359375;
	setAttr ".tgi[0].ni[181].nvs" 18304;
	setAttr ".tgi[0].ni[182].x" 1222.857177734375;
	setAttr ".tgi[0].ni[182].y" -5250;
	setAttr ".tgi[0].ni[182].nvs" 18304;
	setAttr ".tgi[0].ni[183].x" -1784.2857666015625;
	setAttr ".tgi[0].ni[183].y" 3731.428466796875;
	setAttr ".tgi[0].ni[183].nvs" 18304;
	setAttr ".tgi[0].ni[184].x" 1222.857177734375;
	setAttr ".tgi[0].ni[184].y" -5408.5712890625;
	setAttr ".tgi[0].ni[184].nvs" 18304;
	setAttr ".tgi[0].ni[185].x" 868.5714111328125;
	setAttr ".tgi[0].ni[185].y" -5551.4287109375;
	setAttr ".tgi[0].ni[185].nvs" 18304;
	setAttr ".tgi[0].ni[186].x" 1222.857177734375;
	setAttr ".tgi[0].ni[186].y" -5567.14306640625;
	setAttr ".tgi[0].ni[186].nvs" 18304;
	setAttr ".tgi[0].ni[187].x" 1222.857177734375;
	setAttr ".tgi[0].ni[187].y" -5668.5712890625;
	setAttr ".tgi[0].ni[187].nvs" 18304;
	setAttr ".tgi[0].ni[188].x" 1222.857177734375;
	setAttr ".tgi[0].ni[188].y" -5770;
	setAttr ".tgi[0].ni[188].nvs" 18304;
	setAttr ".tgi[0].ni[189].x" 472.85714721679688;
	setAttr ".tgi[0].ni[189].y" -5334.28564453125;
	setAttr ".tgi[0].ni[189].nvs" 18304;
	setAttr ".tgi[0].ni[190].x" 868.5714111328125;
	setAttr ".tgi[0].ni[190].y" -5652.85693359375;
	setAttr ".tgi[0].ni[190].nvs" 18304;
	setAttr ".tgi[0].ni[191].x" 1222.857177734375;
	setAttr ".tgi[0].ni[191].y" -5985.71435546875;
	setAttr ".tgi[0].ni[191].nvs" 18304;
	setAttr ".tgi[0].ni[192].x" 1222.857177734375;
	setAttr ".tgi[0].ni[192].y" -6087.14306640625;
	setAttr ".tgi[0].ni[192].nvs" 18304;
	setAttr ".tgi[0].ni[193].x" 1222.857177734375;
	setAttr ".tgi[0].ni[193].y" -6245.71435546875;
	setAttr ".tgi[0].ni[193].nvs" 18304;
	setAttr ".tgi[0].ni[194].x" 472.85714721679688;
	setAttr ".tgi[0].ni[194].y" -2647.142822265625;
	setAttr ".tgi[0].ni[194].nvs" 18304;
	setAttr ".tgi[0].ni[195].x" 1222.857177734375;
	setAttr ".tgi[0].ni[195].y" -6404.28564453125;
	setAttr ".tgi[0].ni[195].nvs" 18304;
	setAttr ".tgi[0].ni[196].x" -1784.2857666015625;
	setAttr ".tgi[0].ni[196].y" 3082.857177734375;
	setAttr ".tgi[0].ni[196].nvs" 18304;
	setAttr ".tgi[0].ni[197].x" 1222.857177734375;
	setAttr ".tgi[0].ni[197].y" -6562.85693359375;
	setAttr ".tgi[0].ni[197].nvs" 18304;
	setAttr ".tgi[0].ni[198].x" 1222.857177734375;
	setAttr ".tgi[0].ni[198].y" -6664.28564453125;
	setAttr ".tgi[0].ni[198].nvs" 18304;
	setAttr ".tgi[0].ni[199].x" 472.85714721679688;
	setAttr ".tgi[0].ni[199].y" -5708.5712890625;
	setAttr ".tgi[0].ni[199].nvs" 18304;
	setAttr ".tgi[0].ni[200].x" 472.85714721679688;
	setAttr ".tgi[0].ni[200].y" -5550;
	setAttr ".tgi[0].ni[200].nvs" 18304;
	setAttr ".tgi[0].ni[201].x" 1222.857177734375;
	setAttr ".tgi[0].ni[201].y" -6880;
	setAttr ".tgi[0].ni[201].nvs" 18304;
	setAttr ".tgi[0].ni[202].x" 472.85714721679688;
	setAttr ".tgi[0].ni[202].y" -5810;
	setAttr ".tgi[0].ni[202].nvs" 18304;
	setAttr ".tgi[0].ni[203].x" -1784.2857666015625;
	setAttr ".tgi[0].ni[203].y" 2974.28564453125;
	setAttr ".tgi[0].ni[203].nvs" 18304;
	setAttr ".tgi[0].ni[204].x" 868.5714111328125;
	setAttr ".tgi[0].ni[204].y" -5868.5712890625;
	setAttr ".tgi[0].ni[204].nvs" 18304;
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
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
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
connectAttr "Neck_Limb_M_NODE.joints" "Neck_Neck_M_JNT.limb";
connectAttr "Neck_Neck_M_JNT.s" "Head_HeadRoot_M_JNT.is";
connectAttr "Head_Limb_M_NODE.joints" "Head_HeadRoot_M_JNT.limb";
connectAttr "Head_HeadRoot_M_JNT.s" "Head_HeadEnd_M_JNT.is";
connectAttr "Head_Limb_M_NODE.joints" "Head_HeadEnd_M_JNT.limb";
connectAttr "Head_HeadEnd_M_JNT.group" "HeadEnd_Joint_M_GRP1.joint";
connectAttr "Head_Limb_M_NODE.jointGroups" "HeadEnd_Joint_M_GRP1.limb";
connectAttr "HeadEnd_Joint_M_GRP1.control" "HeadEnd_Joint_M_CTR1.group";
connectAttr "Head_HeadRoot_M_JNT.s" "Jaw_Jaw_M_JNT.is";
connectAttr "Jaw_Limb_M_NODE.joints" "Jaw_Jaw_M_JNT.limb";
connectAttr "Jaw_Jaw_M_JNT.s" "Chin_Chin_M_JNT.is";
connectAttr "Chin_Limb_M_NODE.joints" "Chin_Chin_M_JNT.limb";
connectAttr "Chin_Chin_M_JNT.group" "Chin_Joint_M_GRP0.joint";
connectAttr "Chin_Limb_M_NODE.jointGroups" "Chin_Joint_M_GRP0.limb";
connectAttr "Chin_Limb_M_NODE.usedGroups" "Chin_Joint_M_GRP0.used";
connectAttr "Chin_Joint_M_GRP0.control" "Chin_Joint_M_CTR0.group";
connectAttr "Jaw_Jaw_M_JNT.s" "LipLowerMid_LipLowerMid_M_JNT.is";
connectAttr "LipLowerMid_Limb_M_NODE.joints" "LipLowerMid_LipLowerMid_M_JNT.limb"
		;
connectAttr "LipLowerMid_LipLowerMid_M_JNT.group" "LipLowerMid_Joint_M_GRP0.joint"
		;
connectAttr "LipLowerMid_Limb_M_NODE.jointGroups" "LipLowerMid_Joint_M_GRP0.limb"
		;
connectAttr "LipLowerMid_Limb_M_NODE.usedGroups" "LipLowerMid_Joint_M_GRP0.used"
		;
connectAttr "LipLowerMid_Joint_M_GRP0.control" "LipLowerMid_Joint_M_CTR0.group";
connectAttr "Jaw_Jaw_M_JNT.s" "LipLower_LipLowerInner_M_JNT.is";
connectAttr "LipLower_Limb_M_NODE.joints" "LipLower_LipLowerInner_M_JNT.limb";
connectAttr "LipLower_LipLowerInner_M_JNT.group" "LipLowerInner_Joint_M_GRP0.joint"
		;
connectAttr "LipLower_Limb_M_NODE.jointGroups" "LipLowerInner_Joint_M_GRP0.limb"
		;
connectAttr "LipLower_Limb_M_NODE.usedGroups" "LipLowerInner_Joint_M_GRP0.used";
connectAttr "LipLowerInner_Joint_M_GRP0.control" "LipLowerInner_Joint_M_CTR0.group"
		;
connectAttr "Jaw_Jaw_M_JNT.s" "LipLower_LipLowerOuter_M_JNT.is";
connectAttr "LipLower_Limb_M_NODE.joints" "LipLower_LipLowerOuter_M_JNT.limb";
connectAttr "LipLower_LipLowerOuter_M_JNT.group" "LipLowerOuter_Joint_M_GRP1.joint"
		;
connectAttr "LipLower_Limb_M_NODE.jointGroups" "LipLowerOuter_Joint_M_GRP1.limb"
		;
connectAttr "LipLower_Limb_M_NODE.usedGroups" "LipLowerOuter_Joint_M_GRP1.used";
connectAttr "LipLowerOuter_Joint_M_GRP1.control" "LipLowerOuter_Joint_M_CTR1.group"
		;
connectAttr "Jaw_Jaw_M_JNT.group" "Jaw_Joint_M_GRP0.joint";
connectAttr "Jaw_Limb_M_NODE.jointGroups" "Jaw_Joint_M_GRP0.limb";
connectAttr "Jaw_Limb_M_NODE.usedGroups" "Jaw_Joint_M_GRP0.used";
connectAttr "Jaw_Joint_M_GRP0.control" "Jaw_Joint_M_CTR0.group";
connectAttr "Head_HeadRoot_M_JNT.s" "FaceMidRoot_DoNotSkin_M_JNT.is";
connectAttr "FaceMidRoot_Limb_M_NODE.joints" "FaceMidRoot_DoNotSkin_M_JNT.limb";
connectAttr "FaceMidRoot_DoNotSkin_M_JNT.s" "LipTopMid_LipTopMid_M_JNT.is";
connectAttr "LipTopMid_Limb_M_NODE.joints" "LipTopMid_LipTopMid_M_JNT.limb";
connectAttr "LipTopMid_LipTopMid_M_JNT.group" "LipTopMid_Joint_M_GRP0.joint";
connectAttr "LipTopMid_Limb_M_NODE.jointGroups" "LipTopMid_Joint_M_GRP0.limb";
connectAttr "LipTopMid_Limb_M_NODE.usedGroups" "LipTopMid_Joint_M_GRP0.used";
connectAttr "LipTopMid_Joint_M_GRP0.control" "LipTopMid_Joint_M_CTR0.group";
connectAttr "FaceMidRoot_DoNotSkin_M_JNT.s" "LipTop_LipTopOuter_M_JNT.is";
connectAttr "LipTop_Limb_M_NODE.joints" "LipTop_LipTopOuter_M_JNT.limb";
connectAttr "LipTop_LipTopOuter_M_JNT.group" "LipTopOuter_Joint_M_GRP1.joint";
connectAttr "LipTop_Limb_M_NODE.jointGroups" "LipTopOuter_Joint_M_GRP1.limb";
connectAttr "LipTop_Limb_M_NODE.usedGroups" "LipTopOuter_Joint_M_GRP1.used";
connectAttr "LipTopOuter_Joint_M_GRP1.control" "LipTopOuter_Joint_M_CTR1.group";
connectAttr "FaceMidRoot_DoNotSkin_M_JNT.s" "LipTop_LipTopInner_M_JNT.is";
connectAttr "LipTop_Limb_M_NODE.joints" "LipTop_LipTopInner_M_JNT.limb";
connectAttr "LipTop_LipTopInner_M_JNT.group" "LipTopInner_Joint_M_GRP0.joint";
connectAttr "LipTop_Limb_M_NODE.jointGroups" "LipTopInner_Joint_M_GRP0.limb";
connectAttr "LipTop_Limb_M_NODE.usedGroups" "LipTopInner_Joint_M_GRP0.used";
connectAttr "LipTopInner_Joint_M_GRP0.control" "LipTopInner_Joint_M_CTR0.group";
connectAttr "FaceMidRoot_DoNotSkin_M_JNT.s" "NoseTip_NoseTip_M_JNT.is";
connectAttr "NoseTip_Limb_M_NODE.joints" "NoseTip_NoseTip_M_JNT.limb";
connectAttr "NoseTip_NoseTip_M_JNT.group" "NoseTip_Joint_M_GRP0.joint";
connectAttr "NoseTip_Limb_M_NODE.jointGroups" "NoseTip_Joint_M_GRP0.limb";
connectAttr "NoseTip_Limb_M_NODE.usedGroups" "NoseTip_Joint_M_GRP0.used";
connectAttr "NoseTip_Joint_M_GRP0.control" "NoseTip_Joint_M_CTR0.group";
connectAttr "FaceMidRoot_DoNotSkin_M_JNT.s" "Eye_Eye_M_JNT.is";
connectAttr "Eye_Limb_M_NODE.joints" "Eye_Eye_M_JNT.limb";
connectAttr "Eye_Eye_M_JNT.group" "Eye_Joint_M_GRP0.joint";
connectAttr "Eye_Limb_M_NODE.jointGroups" "Eye_Joint_M_GRP0.limb";
connectAttr "Eye_Joint_M_GRP0.control" "Eye_Joint_M_CTR0.group";
connectAttr "FaceMidRoot_DoNotSkin_M_JNT.s" "EyeLowerLidRoot_DoNotSkin_M_JNT.is"
		;
connectAttr "EyeLowerLidRoot_Limb_M_NODE.joints" "EyeLowerLidRoot_DoNotSkin_M_JNT.limb"
		;
connectAttr "EyeLowerLidRoot_DoNotSkin_M_JNT.s" "EyeLowerLid_EyeLowerLidMid_M_JNT.is"
		;
connectAttr "EyeLowerLid_Limb_M_NODE.joints" "EyeLowerLid_EyeLowerLidMid_M_JNT.limb"
		;
connectAttr "EyeLowerLid_EyeLowerLidMid_M_JNT.group" "EyeLowerLidMid_Joint_M_GRP1.joint"
		;
connectAttr "EyeLowerLid_Limb_M_NODE.jointGroups" "EyeLowerLidMid_Joint_M_GRP1.limb"
		;
connectAttr "EyeLowerLid_Limb_M_NODE.usedGroups" "EyeLowerLidMid_Joint_M_GRP1.used"
		;
connectAttr "EyeLowerLidMid_Joint_M_GRP1.control" "EyeLowerLidMid_Joint_M_CTR1.group"
		;
connectAttr "EyeLowerLidRoot_DoNotSkin_M_JNT.s" "EyeLowerLid_EyeLowerLidInner_M_JNT.is"
		;
connectAttr "EyeLowerLid_Limb_M_NODE.joints" "EyeLowerLid_EyeLowerLidInner_M_JNT.limb"
		;
connectAttr "EyeLowerLid_EyeLowerLidInner_M_JNT.group" "EyeLowerLidInner_Joint_M_GRP0.joint"
		;
connectAttr "EyeLowerLid_Limb_M_NODE.jointGroups" "EyeLowerLidInner_Joint_M_GRP0.limb"
		;
connectAttr "EyeLowerLid_Limb_M_NODE.usedGroups" "EyeLowerLidInner_Joint_M_GRP0.used"
		;
connectAttr "EyeLowerLidInner_Joint_M_GRP0.control" "EyeLowerLidInner_Joint_M_CTR0.group"
		;
connectAttr "EyeLowerLidRoot_DoNotSkin_M_JNT.s" "EyeLowerLid_EyeLowerLidOuter_M_JNT.is"
		;
connectAttr "EyeLowerLid_Limb_M_NODE.joints" "EyeLowerLid_EyeLowerLidOuter_M_JNT.limb"
		;
connectAttr "EyeLowerLid_EyeLowerLidOuter_M_JNT.group" "EyeLowerLidOuter_Joint_M_GRP2.joint"
		;
connectAttr "EyeLowerLid_Limb_M_NODE.jointGroups" "EyeLowerLidOuter_Joint_M_GRP2.limb"
		;
connectAttr "EyeLowerLid_Limb_M_NODE.usedGroups" "EyeLowerLidOuter_Joint_M_GRP2.used"
		;
connectAttr "EyeLowerLidOuter_Joint_M_GRP2.control" "EyeLowerLidOuter_Joint_M_CTR2.group"
		;
connectAttr "EyeLowerLidRoot_DoNotSkin_M_JNT.group" "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|EyeLowerLidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0.joint"
		;
connectAttr "EyeLowerLidRoot_Limb_M_NODE.jointGroups" "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|EyeLowerLidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0.limb"
		;
connectAttr "EyeLowerLidRoot_Limb_M_NODE.usedGroups" "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|EyeLowerLidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0.used"
		;
connectAttr "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|EyeLowerLidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0.control" "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|EyeLowerLidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0|DoNotSkin_Joint_M_CTR0.group"
		;
connectAttr "FaceMidRoot_DoNotSkin_M_JNT.s" "EyeUpperLidRoot_DoNotSkin_M_JNT.is"
		;
connectAttr "EyeUpperLidRoot_Limb_M_NODE.joints" "EyeUpperLidRoot_DoNotSkin_M_JNT.limb"
		;
connectAttr "EyeUpperLidRoot_DoNotSkin_M_JNT.s" "EyeUpperLid_EyeUpperLidMiddle_M_JNT.is"
		;
connectAttr "EyeUpperLid_Limb_M_NODE.joints" "EyeUpperLid_EyeUpperLidMiddle_M_JNT.limb"
		;
connectAttr "EyeUpperLid_EyeUpperLidMiddle_M_JNT.group" "EyeUpperLidMiddle_Joint_M_GRP1.joint"
		;
connectAttr "EyeUpperLid_Limb_M_NODE.jointGroups" "EyeUpperLidMiddle_Joint_M_GRP1.limb"
		;
connectAttr "EyeUpperLid_Limb_M_NODE.usedGroups" "EyeUpperLidMiddle_Joint_M_GRP1.used"
		;
connectAttr "EyeUpperLidMiddle_Joint_M_GRP1.control" "EyeUpperLidMiddle_Joint_M_CTR1.group"
		;
connectAttr "EyeUpperLidRoot_DoNotSkin_M_JNT.s" "EyeUpperLid_EyeUpperLidInner_M_JNT.is"
		;
connectAttr "EyeUpperLid_Limb_M_NODE.joints" "EyeUpperLid_EyeUpperLidInner_M_JNT.limb"
		;
connectAttr "EyeUpperLid_EyeUpperLidInner_M_JNT.group" "EyeUpperLidInner_Joint_M_GRP0.joint"
		;
connectAttr "EyeUpperLid_Limb_M_NODE.jointGroups" "EyeUpperLidInner_Joint_M_GRP0.limb"
		;
connectAttr "EyeUpperLid_Limb_M_NODE.usedGroups" "EyeUpperLidInner_Joint_M_GRP0.used"
		;
connectAttr "EyeUpperLidInner_Joint_M_GRP0.control" "EyeUpperLidInner_Joint_M_CTR0.group"
		;
connectAttr "EyeUpperLidRoot_DoNotSkin_M_JNT.s" "EyeUpperLid_EyeUpperLidOuter_M_JNT.is"
		;
connectAttr "EyeUpperLid_Limb_M_NODE.joints" "EyeUpperLid_EyeUpperLidOuter_M_JNT.limb"
		;
connectAttr "EyeUpperLid_EyeUpperLidOuter_M_JNT.group" "EyeUpperLidOuter_Joint_M_GRP2.joint"
		;
connectAttr "EyeUpperLid_Limb_M_NODE.jointGroups" "EyeUpperLidOuter_Joint_M_GRP2.limb"
		;
connectAttr "EyeUpperLid_Limb_M_NODE.usedGroups" "EyeUpperLidOuter_Joint_M_GRP2.used"
		;
connectAttr "EyeUpperLidOuter_Joint_M_GRP2.control" "EyeUpperLidOuter_Joint_M_CTR2.group"
		;
connectAttr "EyeUpperLidRoot_DoNotSkin_M_JNT.group" "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|EyeUpperLidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0.joint"
		;
connectAttr "EyeUpperLidRoot_Limb_M_NODE.jointGroups" "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|EyeUpperLidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0.limb"
		;
connectAttr "EyeUpperLidRoot_Limb_M_NODE.usedGroups" "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|EyeUpperLidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0.used"
		;
connectAttr "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|EyeUpperLidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0.control" "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|EyeUpperLidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0|DoNotSkin_Joint_M_CTR0.group"
		;
connectAttr "FaceMidRoot_DoNotSkin_M_JNT.s" "Cheek_Cheek_M_JNT.is";
connectAttr "Cheek_Limb_M_NODE.joints" "Cheek_Cheek_M_JNT.limb";
connectAttr "Cheek_Cheek_M_JNT.group" "Cheek_Joint_M_GRP0.joint";
connectAttr "Cheek_Limb_M_NODE.jointGroups" "Cheek_Joint_M_GRP0.limb";
connectAttr "Cheek_Limb_M_NODE.usedGroups" "Cheek_Joint_M_GRP0.used";
connectAttr "Cheek_Joint_M_GRP0.control" "Cheek_Joint_M_CTR0.group";
connectAttr "FaceMidRoot_DoNotSkin_M_JNT.s" "CheekInner_CheekInner_M_JNT.is";
connectAttr "CheekInner_Limb_M_NODE.joints" "CheekInner_CheekInner_M_JNT.limb";
connectAttr "CheekInner_CheekInner_M_JNT.group" "CheekInner_Joint_M_GRP0.joint";
connectAttr "CheekInner_Limb_M_NODE.jointGroups" "CheekInner_Joint_M_GRP0.limb";
connectAttr "CheekInner_Limb_M_NODE.usedGroups" "CheekInner_Joint_M_GRP0.used";
connectAttr "CheekInner_Joint_M_GRP0.control" "CheekInner_Joint_M_CTR0.group";
connectAttr "FaceMidRoot_DoNotSkin_M_JNT.s" "CheekBone_CheekBone_M_JNT.is";
connectAttr "CheekBone_Limb_M_NODE.joints" "CheekBone_CheekBone_M_JNT.limb";
connectAttr "CheekBone_CheekBone_M_JNT.group" "CheekBone_Joint_M_GRP0.joint";
connectAttr "CheekBone_Limb_M_NODE.jointGroups" "CheekBone_Joint_M_GRP0.limb";
connectAttr "CheekBone_Limb_M_NODE.usedGroups" "CheekBone_Joint_M_GRP0.used";
connectAttr "CheekBone_Joint_M_GRP0.control" "CheekBone_Joint_M_CTR0.group";
connectAttr "FaceMidRoot_DoNotSkin_M_JNT.s" "Nostral_Nostral_M_JNT.is";
connectAttr "Nostral_Limb_M_NODE.joints" "Nostral_Nostral_M_JNT.limb";
connectAttr "Nostral_Nostral_M_JNT.group" "Nostral_Joint_M_GRP0.joint";
connectAttr "Nostral_Limb_M_NODE.jointGroups" "Nostral_Joint_M_GRP0.limb";
connectAttr "Nostral_Limb_M_NODE.usedGroups" "Nostral_Joint_M_GRP0.used";
connectAttr "Nostral_Joint_M_GRP0.control" "Nostral_Joint_M_CTR0.group";
connectAttr "FaceMidRoot_DoNotSkin_M_JNT.s" "EyeLowerSkin_EyeLowerSkin_M_JNT.is"
		;
connectAttr "EyeLowerSkin_Limb_M_NODE.joints" "EyeLowerSkin_EyeLowerSkin_M_JNT.limb"
		;
connectAttr "EyeLowerSkin_EyeLowerSkin_M_JNT.group" "EyeLowerSkin_Joint_M_GRP0.joint"
		;
connectAttr "EyeLowerSkin_Limb_M_NODE.jointGroups" "EyeLowerSkin_Joint_M_GRP0.limb"
		;
connectAttr "EyeLowerSkin_Limb_M_NODE.usedGroups" "EyeLowerSkin_Joint_M_GRP0.used"
		;
connectAttr "EyeLowerSkin_Joint_M_GRP0.control" "EyeLowerSkin_Joint_M_CTR0.group"
		;
connectAttr "FaceMidRoot_DoNotSkin_M_JNT.s" "Ear_Ear_M_JNT.is";
connectAttr "Ear_Limb_M_NODE.joints" "Ear_Ear_M_JNT.limb";
connectAttr "Ear_Ear_M_JNT.group" "Ear_Joint_M_GRP0.joint";
connectAttr "Ear_Limb_M_NODE.jointGroups" "Ear_Joint_M_GRP0.limb";
connectAttr "Ear_Limb_M_NODE.usedGroups" "Ear_Joint_M_GRP0.used";
connectAttr "Ear_Joint_M_GRP0.control" "Ear_Joint_M_CTR0.group";
connectAttr "FaceMidRoot_DoNotSkin_M_JNT.group" "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0.joint"
		;
connectAttr "FaceMidRoot_Limb_M_NODE.jointGroups" "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0.limb"
		;
connectAttr "FaceMidRoot_Limb_M_NODE.usedGroups" "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0.used"
		;
connectAttr "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0.control" "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0|DoNotSkin_Joint_M_CTR0.group"
		;
connectAttr "Head_HeadRoot_M_JNT.s" "FaceUpperRoot_DoNotSkin_M_JNT.is";
connectAttr "FaceUpperRoot_Limb_M_NODE.joints" "FaceUpperRoot_DoNotSkin_M_JNT.limb"
		;
connectAttr "FaceUpperRoot_DoNotSkin_M_JNT.s" "FaceBrow_Brow3_M_JNT.is";
connectAttr "FaceBrow_Limb_M_NODE.joints" "FaceBrow_Brow3_M_JNT.limb";
connectAttr "FaceBrow_Brow3_M_JNT.group" "Brow3_Joint_M_GRP2.joint";
connectAttr "FaceBrow_Limb_M_NODE.jointGroups" "Brow3_Joint_M_GRP2.limb";
connectAttr "FaceBrow_Limb_M_NODE.usedGroups" "Brow3_Joint_M_GRP2.used";
connectAttr "Brow3_Joint_M_GRP2.control" "Brow3_Joint_M_CTR2.group";
connectAttr "FaceUpperRoot_DoNotSkin_M_JNT.s" "FaceBrow_Brow2_M_JNT.is";
connectAttr "FaceBrow_Limb_M_NODE.joints" "FaceBrow_Brow2_M_JNT.limb";
connectAttr "FaceBrow_Brow2_M_JNT.group" "Brow2_Joint_M_GRP1.joint";
connectAttr "FaceBrow_Limb_M_NODE.jointGroups" "Brow2_Joint_M_GRP1.limb";
connectAttr "FaceBrow_Limb_M_NODE.usedGroups" "Brow2_Joint_M_GRP1.used";
connectAttr "Brow2_Joint_M_GRP1.control" "Brow2_Joint_M_CTR1.group";
connectAttr "FaceUpperRoot_DoNotSkin_M_JNT.s" "FaceBrow_Brow1_M_JNT.is";
connectAttr "FaceBrow_Limb_M_NODE.joints" "FaceBrow_Brow1_M_JNT.limb";
connectAttr "FaceBrow_Brow1_M_JNT.group" "Brow1_Joint_M_GRP0.joint";
connectAttr "FaceBrow_Limb_M_NODE.jointGroups" "Brow1_Joint_M_GRP0.limb";
connectAttr "FaceBrow_Limb_M_NODE.usedGroups" "Brow1_Joint_M_GRP0.used";
connectAttr "Brow1_Joint_M_GRP0.control" "Brow1_Joint_M_CTR0.group";
connectAttr "FaceUpperRoot_DoNotSkin_M_JNT.s" "EyeUpperSkin_EyeUpperSkin_M_JNT.is"
		;
connectAttr "EyeUpperSkin_Limb_M_NODE.joints" "EyeUpperSkin_EyeUpperSkin_M_JNT.limb"
		;
connectAttr "EyeUpperSkin_EyeUpperSkin_M_JNT.group" "EyeUpperSkin_Joint_M_GRP0.joint"
		;
connectAttr "EyeUpperSkin_Limb_M_NODE.jointGroups" "EyeUpperSkin_Joint_M_GRP0.limb"
		;
connectAttr "EyeUpperSkin_Limb_M_NODE.usedGroups" "EyeUpperSkin_Joint_M_GRP0.used"
		;
connectAttr "EyeUpperSkin_Joint_M_GRP0.control" "EyeUpperSkin_Joint_M_CTR0.group"
		;
connectAttr "FaceUpperRoot_DoNotSkin_M_JNT.s" "BetweenBrow_BetweenBrow_M_JNT.is"
		;
connectAttr "BetweenBrow_Limb_M_NODE.joints" "BetweenBrow_BetweenBrow_M_JNT.limb"
		;
connectAttr "BetweenBrow_BetweenBrow_M_JNT.group" "BetweenBrow_Joint_M_GRP0.joint"
		;
connectAttr "BetweenBrow_Limb_M_NODE.jointGroups" "BetweenBrow_Joint_M_GRP0.limb"
		;
connectAttr "BetweenBrow_Limb_M_NODE.usedGroups" "BetweenBrow_Joint_M_GRP0.used"
		;
connectAttr "BetweenBrow_Joint_M_GRP0.control" "BetweenBrow_Joint_M_CTR0.group";
connectAttr "FaceUpperRoot_DoNotSkin_M_JNT.group" "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceUpperRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0.joint"
		;
connectAttr "FaceUpperRoot_Limb_M_NODE.jointGroups" "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceUpperRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0.limb"
		;
connectAttr "FaceUpperRoot_Limb_M_NODE.usedGroups" "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceUpperRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0.used"
		;
connectAttr "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceUpperRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0.control" "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceUpperRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0|DoNotSkin_Joint_M_CTR0.group"
		;
connectAttr "Head_HeadRoot_M_JNT.group" "HeadRoot_Joint_M_GRP0.joint";
connectAttr "Head_Limb_M_NODE.jointGroups" "HeadRoot_Joint_M_GRP0.limb";
connectAttr "Head_Limb_M_NODE.usedGroups" "HeadRoot_Joint_M_GRP0.used";
connectAttr "HeadRoot_Joint_M_GRP0.control" "HeadRoot_Joint_M_CTR0.group";
connectAttr "Neck_Neck_M_JNT.group" "Neck_Joint_M_GRP0.joint";
connectAttr "Neck_Limb_M_NODE.jointGroups" "Neck_Joint_M_GRP0.limb";
connectAttr "Neck_Limb_M_NODE.usedGroups" "Neck_Joint_M_GRP0.used";
connectAttr "Neck_Joint_M_GRP0.control" "Neck_Joint_M_CTR0.group";
connectAttr "TEMP_RigRoot.limbsParentGroup" "LIMBS.rigRoot";
connectAttr "TEMP_RigRoot.limbs" "EyeLowerSkin_Limb_M_NODE.rigRoot";
connectAttr "FaceMidRoot_Limb_M_NODE.limbChildren" "EyeLowerSkin_Limb_M_NODE.limbParent"
		;
connectAttr "TEMP_RigRoot.limbs" "LipLower_Limb_M_NODE.rigRoot";
connectAttr "Jaw_Limb_M_NODE.limbChildren" "LipLower_Limb_M_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "Head_Limb_M_NODE.rigRoot";
connectAttr "Neck_Limb_M_NODE.limbChildren" "Head_Limb_M_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "EyeUpperLid_Limb_M_NODE.rigRoot";
connectAttr "EyeUpperLidRoot_Limb_M_NODE.limbChildren" "EyeUpperLid_Limb_M_NODE.limbParent"
		;
connectAttr "TEMP_RigRoot.limbs" "LipTopMid_Limb_M_NODE.rigRoot";
connectAttr "FaceMidRoot_Limb_M_NODE.limbChildren" "LipTopMid_Limb_M_NODE.limbParent"
		;
connectAttr "TEMP_RigRoot.limbs" "NoseTip_Limb_M_NODE.rigRoot";
connectAttr "FaceMidRoot_Limb_M_NODE.limbChildren" "NoseTip_Limb_M_NODE.limbParent"
		;
connectAttr "TEMP_RigRoot.limbs" "Chin_Limb_M_NODE.rigRoot";
connectAttr "Jaw_Limb_M_NODE.limbChildren" "Chin_Limb_M_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "EyeUpperLidRoot_Limb_M_NODE.rigRoot";
connectAttr "FaceMidRoot_Limb_M_NODE.limbChildren" "EyeUpperLidRoot_Limb_M_NODE.limbParent"
		;
connectAttr "TEMP_RigRoot.limbs" "BetweenBrow_Limb_M_NODE.rigRoot";
connectAttr "FaceUpperRoot_Limb_M_NODE.limbChildren" "BetweenBrow_Limb_M_NODE.limbParent"
		;
connectAttr "TEMP_RigRoot.limbs" "Nostral_Limb_M_NODE.rigRoot";
connectAttr "FaceMidRoot_Limb_M_NODE.limbChildren" "Nostral_Limb_M_NODE.limbParent"
		;
connectAttr "TEMP_RigRoot.limbs" "FaceUpperRoot_Limb_M_NODE.rigRoot";
connectAttr "Head_Limb_M_NODE.limbChildren" "FaceUpperRoot_Limb_M_NODE.limbParent"
		;
connectAttr "TEMP_RigRoot.limbs" "Neck_Limb_M_NODE.rigRoot";
connectAttr "TEMP_RigRoot.limbs" "LipLowerMid_Limb_M_NODE.rigRoot";
connectAttr "Jaw_Limb_M_NODE.limbChildren" "LipLowerMid_Limb_M_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "Jaw_Limb_M_NODE.rigRoot";
connectAttr "Head_Limb_M_NODE.limbChildren" "Jaw_Limb_M_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "Eye_Limb_M_NODE.rigRoot";
connectAttr "FaceMidRoot_Limb_M_NODE.limbChildren" "Eye_Limb_M_NODE.limbParent";
connectAttr "Eye_Limb_M_NODE.limbGroups" "Eye_LookAt_M_GRP0.limb";
connectAttr "Eye_Limb_M_NODE.usedGroups" "Eye_LookAt_M_GRP0.used";
connectAttr "Eye_LookAt_M_GRP0.control" "Eye_LookAt_M_CTR0.group";
connectAttr "MControlsMaterial1.oc" "Eye_LookAt_M_CTR0Shape.ovrgb";
connectAttr "TEMP_RigRoot.limbs" "FaceMidRoot_Limb_M_NODE.rigRoot";
connectAttr "Head_Limb_M_NODE.limbChildren" "FaceMidRoot_Limb_M_NODE.limbParent"
		;
connectAttr "TEMP_RigRoot.limbs" "LipTop_Limb_M_NODE.rigRoot";
connectAttr "FaceMidRoot_Limb_M_NODE.limbChildren" "LipTop_Limb_M_NODE.limbParent"
		;
connectAttr "TEMP_RigRoot.limbs" "CheekInner_Limb_M_NODE.rigRoot";
connectAttr "FaceMidRoot_Limb_M_NODE.limbChildren" "CheekInner_Limb_M_NODE.limbParent"
		;
connectAttr "TEMP_RigRoot.limbs" "CheekBone_Limb_M_NODE.rigRoot";
connectAttr "FaceMidRoot_Limb_M_NODE.limbChildren" "CheekBone_Limb_M_NODE.limbParent"
		;
connectAttr "TEMP_RigRoot.limbs" "EyeLowerLid_Limb_M_NODE.rigRoot";
connectAttr "EyeLowerLidRoot_Limb_M_NODE.limbChildren" "EyeLowerLid_Limb_M_NODE.limbParent"
		;
connectAttr "TEMP_RigRoot.limbs" "Ear_Limb_M_NODE.rigRoot";
connectAttr "FaceMidRoot_Limb_M_NODE.limbChildren" "Ear_Limb_M_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "FaceBrow_Limb_M_NODE.rigRoot";
connectAttr "FaceUpperRoot_Limb_M_NODE.limbChildren" "FaceBrow_Limb_M_NODE.limbParent"
		;
connectAttr "TEMP_RigRoot.limbs" "EyeUpperSkin_Limb_M_NODE.rigRoot";
connectAttr "FaceUpperRoot_Limb_M_NODE.limbChildren" "EyeUpperSkin_Limb_M_NODE.limbParent"
		;
connectAttr "TEMP_RigRoot.limbs" "EyeLowerLidRoot_Limb_M_NODE.rigRoot";
connectAttr "FaceMidRoot_Limb_M_NODE.limbChildren" "EyeLowerLidRoot_Limb_M_NODE.limbParent"
		;
connectAttr "TEMP_RigRoot.limbs" "Cheek_Limb_M_NODE.rigRoot";
connectAttr "FaceMidRoot_Limb_M_NODE.limbChildren" "Cheek_Limb_M_NODE.limbParent"
		;
connectAttr "TEMP_RigRoot.meshesParentGroup" "MESHES.rigRoot";
connectAttr "TEMP_RigRoot.controlTemplates" "CONTROL_SHAPE_TEMPLATES.rigRoot";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "MControlsMaterialSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Control_Shapes_lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "LControlsMaterialSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "MControlsMaterialSG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "RControlsMaterialSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "MControlsMaterialSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Control_Shapes_lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "LControlsMaterialSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "MControlsMaterialSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "RControlsMaterialSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Control_Shapes_lambert2SG.msg" "materialInfo1.sg";
connectAttr "TempMaterial.msg" "materialInfo1.m";
connectAttr "TempMaterial.oc" "Control_Shapes_lambert2SG.ss";
connectAttr "MControlsMaterialSG.msg" "materialInfo5.sg";
connectAttr "MControlsMaterial.msg" "materialInfo5.m";
connectAttr "MControlsMaterial.msg" "materialInfo5.t" -na;
connectAttr "MControlsMaterial.oc" "MControlsMaterialSG.ss";
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
connectAttr "EyeLowerSkin_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "LipLowerInner_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm" -na
		;
connectAttr "LipLowerOuter_Joint_M_CTR1Shape.iog" "MControlsMaterialSG1.dsm" -na
		;
connectAttr "HeadEnd_Joint_M_CTR1Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "HeadRoot_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "EyeUpperLidInner_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm" 
		-na;
connectAttr "EyeUpperLidMiddle_Joint_M_CTR1Shape.iog" "MControlsMaterialSG1.dsm"
		 -na;
connectAttr "EyeUpperLidOuter_Joint_M_CTR2Shape.iog" "MControlsMaterialSG1.dsm" 
		-na;
connectAttr "LipTopMid_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "NoseTip_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "Chin_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|EyeUpperLidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0|DoNotSkin_Joint_M_CTR0|DoNotSkin_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm"
		 -na;
connectAttr "BetweenBrow_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "Nostral_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceUpperRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0|DoNotSkin_Joint_M_CTR0|DoNotSkin_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm"
		 -na;
connectAttr "Neck_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "LipLowerMid_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "Jaw_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "Eye_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0|DoNotSkin_Joint_M_CTR0|DoNotSkin_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm"
		 -na;
connectAttr "LipTopInner_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "LipTopOuter_Joint_M_CTR1Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "CheekInner_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "CheekBone_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "EyeLowerLidInner_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm" 
		-na;
connectAttr "EyeLowerLidMid_Joint_M_CTR1Shape.iog" "MControlsMaterialSG1.dsm" -na
		;
connectAttr "EyeLowerLidOuter_Joint_M_CTR2Shape.iog" "MControlsMaterialSG1.dsm" 
		-na;
connectAttr "Ear_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "Brow1_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "Brow2_Joint_M_CTR1Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "Brow3_Joint_M_CTR2Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "EyeUpperSkin_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|EyeLowerLidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0|DoNotSkin_Joint_M_CTR0|DoNotSkin_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm"
		 -na;
connectAttr "Cheek_Joint_M_CTR0Shape.iog" "MControlsMaterialSG1.dsm" -na;
connectAttr "MControlsMaterialSG1.msg" "materialInfo7.sg";
connectAttr "MControlsMaterial1.msg" "materialInfo7.m";
connectAttr "MControlsMaterial1.msg" "materialInfo7.t" -na;
connectAttr "RControlsMaterial.oc" "RControlsMaterialSG.ss";
connectAttr "TEMP_RigRoot.controlMtrR" "RControlsMaterialSG.rigRoot";
connectAttr "RControlsMaterialSG.msg" "materialInfo8.sg";
connectAttr "RControlsMaterial.msg" "materialInfo8.m";
connectAttr "RControlsMaterial.msg" "materialInfo8.t" -na;
connectAttr "Eye_LookAt_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "Eye_LookAt_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "Eye_LookAt_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "FaceBrow_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "Brow2_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "Ear_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "EyeUpperSkin_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "EyeUpperSkin_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "EyeLowerLidOuter_Joint_M_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "EyeLowerLidRoot_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|EyeLowerLidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "EyeLowerLidMid_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "Brow3_Joint_M_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|EyeLowerLidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0|DoNotSkin_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|EyeLowerLidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0|DoNotSkin_Joint_M_CTR0|DoNotSkin_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "EyeUpperSkin_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "Cheek_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "Brow1_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "Cheek_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "Cheek_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "EyeLowerLidMid_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "Cheek_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "EyeLowerLidOuter_Joint_M_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "Brow1_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "Ear_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "Brow2_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "Brow2_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "Ear_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "Ear_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "Brow1_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "Brow3_Joint_M_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "Brow3_Joint_M_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "EyeUpperSkin_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "EyeLowerLidOuter_Joint_M_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "LipTopOuter_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "BetweenBrow_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "NoseTip_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "LipTopOuter_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "CheekBone_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|EyeUpperLidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "Neck_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "Nostral_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|EyeUpperLidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0|DoNotSkin_Joint_M_CTR0|DoNotSkin_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "Eye_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "Chin_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "FaceUpperRoot_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "Neck_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "LipLowerMid_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "NoseTip_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn"
		;
connectAttr "LipLowerMid_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn"
		;
connectAttr "BetweenBrow_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "Nostral_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "Eye_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceUpperRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0|DoNotSkin_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "Jaw_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "Neck_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "NoseTip_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "Chin_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "Chin_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "Jaw_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "LipTop_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0|DoNotSkin_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn"
		;
connectAttr "Jaw_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|EyeUpperLidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0|DoNotSkin_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "BetweenBrow_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "Neck_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "Nostral_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn"
		;
connectAttr "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceUpperRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0|DoNotSkin_Joint_M_CTR0|DoNotSkin_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "Eye_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn"
		;
connectAttr "FaceMidRoot_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceUpperRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "|TEMP_RigRoot|JOINTS|Neck_Neck_M_JNT|Head_HeadRoot_M_JNT|FaceMidRoot_DoNotSkin_M_JNT|DoNotSkin_Joint_M_GRP0|DoNotSkin_Joint_M_CTR0|DoNotSkin_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "LipTopInner_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "Chin_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn"
		;
connectAttr "Eye_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn"
		;
connectAttr "Nostral_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn"
		;
connectAttr "BetweenBrow_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "LipLowerMid_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn"
		;
connectAttr "Jaw_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "EyeUpperLidRoot_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn"
		;
connectAttr "LipTopInner_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn"
		;
connectAttr "LipTopOuter_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn"
		;
connectAttr "NoseTip_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "LipLowerMid_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "LipTopInner_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "CheekInner_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "CheekInner_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "CheekInner_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "CheekInner_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn"
		;
connectAttr "CheekBone_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "CheekBone_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn"
		;
connectAttr "CheekBone_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn"
		;
connectAttr "EyeLowerLid_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn"
		;
connectAttr "EyeLowerLidInner_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn"
		;
connectAttr "EyeLowerLidInner_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn"
		;
connectAttr "EyeLowerLidMid_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn"
		;
connectAttr "EyeLowerLidInner_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn"
		;
connectAttr "EyeLowerSkin_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn"
		;
connectAttr "HeadRoot_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn"
		;
connectAttr "LipLowerInner_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn"
		;
connectAttr "LipLowerOuter_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn"
		;
connectAttr "HeadRoot_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn"
		;
connectAttr "HeadEnd_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn"
		;
connectAttr "EyeUpperLid_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn"
		;
connectAttr "LipLower_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn"
		;
connectAttr "LipLowerInner_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn"
		;
connectAttr "EyeLowerSkin_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn"
		;
connectAttr "LipLowerOuter_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn"
		;
connectAttr "EyeLowerSkin_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn"
		;
connectAttr "HeadEnd_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn"
		;
connectAttr "EyeUpperLidInner_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn"
		;
connectAttr "EyeUpperLidInner_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn"
		;
connectAttr "Head_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn"
		;
connectAttr "EyeUpperLidOuter_Joint_M_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn"
		;
connectAttr "HeadRoot_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn"
		;
connectAttr "EyeUpperLidOuter_Joint_M_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn"
		;
connectAttr "EyeLowerSkin_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn"
		;
connectAttr "LipLowerOuter_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[118].dn"
		;
connectAttr "LipLowerInner_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn"
		;
connectAttr "EyeUpperLidInner_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[120].dn"
		;
connectAttr "HeadEnd_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn"
		;
connectAttr "EyeUpperLidMiddle_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn"
		;
connectAttr "EyeUpperLidMiddle_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[123].dn"
		;
connectAttr "LipTopMid_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[124].dn"
		;
connectAttr "LipTopMid_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[125].dn"
		;
connectAttr "LipTopMid_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[126].dn"
		;
connectAttr "LipTopMid_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[127].dn"
		;
connectAttr "EyeUpperLidMiddle_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[128].dn"
		;
connectAttr "EyeUpperLidOuter_Joint_M_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[129].dn"
		;
connectAttr "Nostral_Nostral_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[130].dn"
		;
connectAttr "FaceBrow_Brow1_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[131].dn"
		;
connectAttr "NoseTip_NoseTip_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[132].dn"
		;
connectAttr "EyeUpperLid_EyeUpperLidMiddle_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[133].dn"
		;
connectAttr "materialInfo5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[134].dn";
connectAttr "FaceBrow_Brow3_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[135].dn"
		;
connectAttr "FaceMidRoot_DoNotSkin_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[136].dn"
		;
connectAttr "EyeUpperLid_EyeUpperLidInner_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[137].dn"
		;
connectAttr "EyeUpperSkin_EyeUpperSkin_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[138].dn"
		;
connectAttr "LipTop_LipTopOuter_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[139].dn"
		;
connectAttr "Jaw_Jaw_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[140].dn";
connectAttr "EyeLowerLid_EyeLowerLidInner_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[141].dn"
		;
connectAttr "CheekBone_CheekBone_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[142].dn"
		;
connectAttr "Neck_Neck_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[143].dn"
		;
connectAttr "Head_HeadRoot_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[144].dn"
		;
connectAttr "Eye_Eye_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[145].dn";
connectAttr "EyeLowerLidRoot_DoNotSkin_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[146].dn"
		;
connectAttr "EyeLowerLid_EyeLowerLidMid_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[147].dn"
		;
connectAttr "EyeLowerSkin_EyeLowerSkin_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[148].dn"
		;
connectAttr "LipTopMid_LipTopMid_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[149].dn"
		;
connectAttr "Ear_Ear_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[150].dn";
connectAttr "LipTop_LipTopInner_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[151].dn"
		;
connectAttr "EyeLowerLid_EyeLowerLidOuter_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[152].dn"
		;
connectAttr "FaceBrow_Brow2_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[153].dn"
		;
connectAttr "Head_HeadEnd_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[154].dn"
		;
connectAttr "CheekInner_CheekInner_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[155].dn"
		;
connectAttr "LipLowerMid_LipLowerMid_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[156].dn"
		;
connectAttr "EyeUpperLidRoot_DoNotSkin_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[157].dn"
		;
connectAttr "LipLower_LipLowerInner_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[158].dn"
		;
connectAttr "LipLower_LipLowerOuter_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[159].dn"
		;
connectAttr "EyeUpperLid_EyeUpperLidOuter_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[160].dn"
		;
connectAttr "Chin_Chin_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[161].dn"
		;
connectAttr "Cheek_Cheek_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[162].dn"
		;
connectAttr "FaceUpperRoot_DoNotSkin_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[163].dn"
		;
connectAttr "BetweenBrow_BetweenBrow_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[164].dn"
		;
connectAttr "materialInfo1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[165].dn";
connectAttr "Control_Shapes_lambert2SG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[166].dn"
		;
connectAttr "TempMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[167].dn";
connectAttr "MControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[168].dn"
		;
connectAttr "MControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[169].dn"
		;
connectAttr "uiConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[170].dn"
		;
connectAttr "sceneConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[171].dn"
		;
connectAttr "TEMP_RigRoot.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[172].dn";
connectAttr "JOINTS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[173].dn";
connectAttr "materialInfo6.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[174].dn";
connectAttr "LControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[175].dn"
		;
connectAttr "Square_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[176].dn";
connectAttr "Cube_Poly.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[177].dn";
connectAttr "LControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[178].dn"
		;
connectAttr "Circle_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[179].dn"
		;
connectAttr "LIMBS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[180].dn";
connectAttr "Sphere_PolyShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[181].dn"
		;
connectAttr "materialInfo7.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[182].dn";
connectAttr "Cylinder_Poly.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[183].dn";
connectAttr "Diamond_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[184].dn"
		;
connectAttr "RControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[185].dn"
		;
connectAttr "MESHES.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[186].dn";
connectAttr "Pin_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[187].dn";
connectAttr "Square_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[188].dn"
		;
connectAttr "Cube_PolyShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[189].dn"
		;
connectAttr "lambert2SG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[190].dn";
connectAttr "Control_Shapes_materialInfo1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[191].dn"
		;
connectAttr "CONTROL_SHAPE_TEMPLATES.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[192].dn"
		;
connectAttr "Cube_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[193].dn";
connectAttr "MControlsMaterial1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[194].dn"
		;
connectAttr "materialInfo8.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[195].dn";
connectAttr "Circle_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[196].dn";
connectAttr "Diamond_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[197].dn";
connectAttr "Pin_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[198].dn";
connectAttr "Cylinder_PolyShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[199].dn"
		;
connectAttr "Control_Shapes_TempMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[200].dn"
		;
connectAttr "Cube_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[201].dn"
		;
connectAttr "RControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[202].dn"
		;
connectAttr "Sphere_Poly.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[203].dn";
connectAttr "MControlsMaterialSG1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[204].dn"
		;
connectAttr "Control_Shapes_lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "MControlsMaterialSG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "LControlsMaterialSG.pa" ":renderPartition.st" -na;
connectAttr "MControlsMaterialSG1.pa" ":renderPartition.st" -na;
connectAttr "RControlsMaterialSG.pa" ":renderPartition.st" -na;
connectAttr "TempMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "MControlsMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "Control_Shapes_TempMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "LControlsMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "MControlsMaterial1.msg" ":defaultShaderList1.s" -na;
connectAttr "RControlsMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Biped_Face.ma
