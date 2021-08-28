//Maya ASCII 2019 scene
//Name: Simple_BUILT.ma
//Last modified: Sun, Aug 22, 2021 09:03:46 PM
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
	rename -uid "DC95BF85-4017-489E-A20F-8CB24E0F5AE1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -14.84672172180478 89.060886090633829 -103.29708004781695 ;
	setAttr ".r" -type "double3" -39.338352729569671 193.00000000000125 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "B8AA6F82-4EE0-67CC-D4CC-5683EE8CE264";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 136.66490182843404;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -2.9802322387695313e-07 0 -2.6822090148925781e-07 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "87839C36-43B0-EEED-E39D-378E978B2E9F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "6C350D73-4E33-D61D-8805-BE82758C1ED9";
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
	rename -uid "FDF5F5C7-4551-8B87-CFE0-21A61010F186";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "590DC859-4752-BFA1-641D-F9802D2F84C5";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "3E7DA42B-4492-5DA8-3C8A-17B6755E0FA4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "0A3D5021-47BE-84E6-2033-498678D6F7A8";
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
	rename -uid "A798CE95-4225-474D-1ACA-67B73DFE6B08";
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
	setAttr ".operation" -type "string" "Paint Weights";
	setAttr ".nextLimbID" 4;
	setAttr ".nextJointID" 10;
	setAttr ".nextMeshID" 2;
createNode transform -n "JOINTS" -p "TEMP_RigRoot";
	rename -uid "2E4C3D92-4A56-52DE-64EE-358420318D92";
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
createNode joint -n "Limb003_Joint000_M_JNT" -p "JOINTS";
	rename -uid "88C90EE2-42C0-51B2-27EA-19BDB81E84DF";
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
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -20 0 0 1;
	setAttr ".radi" 0.96551724137931039;
	setAttr ".ID" 7;
	setAttr ".pfrsName" -type "string" "Joint000";
	setAttr ".startPos" -type "double3" -20 0 0 ;
	setAttr ".skinAnimStart" 1;
	setAttr ".skinAnimEnd" 37;
createNode joint -n "Limb003_Joint001_M_JNT" -p "Limb003_Joint000_M_JNT";
	rename -uid "478B2EDE-4D7B-D0A7-461A-F1B0ACDE0FF1";
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
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -10 0 0 1;
	setAttr ".radi" 0.96551724137931039;
	setAttr ".ID" 8;
	setAttr ".pfrsName" -type "string" "Joint001";
	setAttr ".startPos" -type "double3" 10 0 0 ;
	setAttr ".skinAnimStart" 38;
	setAttr ".skinAnimEnd" 74;
createNode joint -n "Limb003_Joint002_M_JNT" -p "Limb003_Joint001_M_JNT";
	rename -uid "0950A168-4C35-F2D0-0F48-85A21C03E2C7";
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
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".radi" 0.96551724137931039;
	setAttr ".ID" 9;
	setAttr ".pfrsName" -type "string" "Joint002";
	setAttr ".startPos" -type "double3" 10 0 0 ;
	setAttr ".skinAnimStart" 75;
	setAttr ".skinAnimEnd" 111;
createNode joint -n "Limb001_Joint000_M_JNT" -p "Limb003_Joint002_M_JNT";
	rename -uid "2E8955F0-4950-E3AD-E606-DF9587E80617";
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
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 10 0 10 1;
	setAttr ".radi" 0.96551724137931039;
	setAttr ".ID" 1;
	setAttr ".pfrsName" -type "string" "Joint000";
	setAttr ".startPos" -type "double3" 10 0 10 ;
	setAttr ".skinAnimStart" 112;
	setAttr ".skinAnimEnd" 148;
createNode joint -n "Limb001_Joint001_M_JNT" -p "Limb001_Joint000_M_JNT";
	rename -uid "52C8EEC8-40CA-ECC5-EF11-22992FAA10FC";
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
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 20 0 10 1;
	setAttr ".radi" 0.96551724137931039;
	setAttr ".ID" 2;
	setAttr ".pfrsName" -type "string" "Joint001";
	setAttr ".startPos" -type "double3" 10 0 0 ;
	setAttr ".skinAnimStart" 149;
	setAttr ".skinAnimEnd" 185;
createNode joint -n "Limb001_Joint002_M_JNT" -p "Limb001_Joint001_M_JNT";
	rename -uid "A07D457A-402D-CC70-358C-DE8C66347A3A";
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
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 30 0 10 1;
	setAttr ".radi" 0.96551724137931039;
	setAttr ".ID" 3;
	setAttr ".pfrsName" -type "string" "Joint002";
	setAttr ".startPos" -type "double3" 10 0 0 ;
	setAttr ".skinAnimStart" 186;
	setAttr ".skinAnimEnd" 222;
createNode parentConstraint -n "Limb001_Joint002_M_JNT_parentConstraint1" -p "Limb001_Joint002_M_JNT";
	rename -uid "7C181BC9-4C66-7692-BD45-9BB0696D8027";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Joint002_Joint_M_CTR2W0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" 10 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Limb001_Joint001_M_JNT_parentConstraint1" -p "Limb001_Joint001_M_JNT";
	rename -uid "69CDFAF0-4DCA-0A5E-2264-EB8DB532E48C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Joint001_Joint_M_CTR1W0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" 10 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Limb001_Joint000_M_JNT_parentConstraint1" -p "Limb001_Joint000_M_JNT";
	rename -uid "303D9AD0-4C20-C7D5-E93E-4788456B8F7D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Joint000_Joint_M_CTR0W0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" 10 0 10 ;
	setAttr -k on ".w0";
createNode joint -n "Limb002_Joint000_M_JNT" -p "Limb003_Joint002_M_JNT";
	rename -uid "0D87FC1C-4279-024F-F339-D1892B65D293";
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
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 10 0 -10 1;
	setAttr ".radi" 0.96551724137931039;
	setAttr ".ID" 4;
	setAttr ".pfrsName" -type "string" "Joint000";
	setAttr ".startPos" -type "double3" 10 0 -10 ;
	setAttr ".skinAnimStart" 223;
	setAttr ".skinAnimEnd" 259;
createNode joint -n "Limb002_Joint001_M_JNT" -p "Limb002_Joint000_M_JNT";
	rename -uid "1E34D83F-4E3F-A333-C018-E98D2A805707";
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
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 20 0 -10 1;
	setAttr ".radi" 0.96551724137931039;
	setAttr ".ID" 5;
	setAttr ".pfrsName" -type "string" "Joint001";
	setAttr ".startPos" -type "double3" 10 0 0 ;
	setAttr ".skinAnimStart" 260;
	setAttr ".skinAnimEnd" 296;
createNode joint -n "Limb002_Joint002_M_JNT" -p "Limb002_Joint001_M_JNT";
	rename -uid "994BFF25-4940-670D-89B1-96979A95498F";
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
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 30 0 -10 1;
	setAttr ".radi" 0.96551724137931039;
	setAttr ".ID" 6;
	setAttr ".pfrsName" -type "string" "Joint002";
	setAttr ".startPos" -type "double3" 10 0 0 ;
	setAttr ".skinAnimStart" 297;
	setAttr ".skinAnimEnd" 333;
createNode parentConstraint -n "Limb002_Joint002_M_JNT_parentConstraint1" -p "Limb002_Joint002_M_JNT";
	rename -uid "4006A6B0-4F39-1AA0-87D1-88A2C85F1402";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Joint002_Joint_M_CTR2W0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" 10 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Limb002_Joint001_M_JNT_parentConstraint1" -p "Limb002_Joint001_M_JNT";
	rename -uid "649051D1-4BB8-5C43-31FD-E382F1ED7C6D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Joint001_Joint_M_CTR1W0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" 10 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Limb002_Joint000_M_JNT_parentConstraint1" -p "Limb002_Joint000_M_JNT";
	rename -uid "AF11102C-48B8-D323-4BA4-18BB38957EF6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Joint000_Joint_M_CTR0W0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" 10 0 -10 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Limb003_Joint002_M_JNT_parentConstraint1" -p "Limb003_Joint002_M_JNT";
	rename -uid "F9AA8CF3-45F3-9C1B-90BD-38A412208AB7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Joint002_Joint_M_CTR2W0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" 10 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Limb003_Joint001_M_JNT_parentConstraint1" -p "Limb003_Joint001_M_JNT";
	rename -uid "78C45E18-4142-FFF4-B582-C6BE39DA9579";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Joint001_Joint_M_CTR1W0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" 10 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Limb003_Joint000_M_JNT_parentConstraint1" -p "Limb003_Joint000_M_JNT";
	rename -uid "96E6006F-4353-A68D-5934-FD8EA90E0F24";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Joint000_Joint_M_CTR0W0" -dv 1 -min 
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
	setAttr ".rst" -type "double3" -20 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "LIMBS" -p "TEMP_RigRoot";
	rename -uid "EC104E0C-4FDB-C082-EC58-21A74673A8AC";
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
createNode transform -n "Limb001_Limb_M_NODE" -p "LIMBS";
	rename -uid "7205B45B-4B5E-4419-4E8F-B7BA5F903F2C";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 2 -en "Joint000:Joint001:Joint002" 
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
	setAttr ".ID" 1;
	setAttr ".pfrsName" -type "string" "Limb001";
	setAttr ".limbType" 4;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Joint000_Joint_M_GRP0" -p "Limb001_Limb_M_NODE";
	rename -uid "B084E257-45BC-11E6-8D92-0D9504AEA727";
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
createNode transform -n "Joint000_Joint_M_CTR0" -p "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0";
	rename -uid "982F7EDA-4285-EE46-3504-75A736D65274";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Joint000_Joint_M_CTR0Shape" -p "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0";
	rename -uid "B5BD88AC-4D46-CED9-DAD2-3DB9D487B2B9";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.56381762 -0.86339605 0.86339605 
		-0.56381762 -0.86339605 0.86339605 0.56381762 0.86339605 0.86339605 -0.56381762 0.86339605 
		0.86339605 0.56381762 0.86339605 -0.86339605 -0.56381762 0.86339605 -0.86339605 0.56381762 
		-0.86339605 -0.86339605 -0.56381762 -0.86339605 -0.86339605;
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
createNode transform -n "Joint001_Joint_M_GRP1" -p "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0";
	rename -uid "BC0A50B2-4F90-56B0-9AE6-319C50A440E1";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 10 0 0 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Joint001_Joint_M_CTR1" -p "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1";
	rename -uid "B4AA48A5-4739-D763-1DC5-2A9DF78BFC45";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Joint001_Joint_M_CTR1Shape" -p "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1";
	rename -uid "CF4C3FCE-49AB-7C3D-F608-258D878CA19A";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.56381762 -0.86339605 0.86339605 
		-0.56381762 -0.86339605 0.86339605 0.56381762 0.86339605 0.86339605 -0.56381762 0.86339605 
		0.86339605 0.56381762 0.86339605 -0.86339605 -0.56381762 0.86339605 -0.86339605 0.56381762 
		-0.86339605 -0.86339605 -0.56381762 -0.86339605 -0.86339605;
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
createNode transform -n "Joint002_Joint_M_GRP2" -p "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1";
	rename -uid "83A3797A-41F7-36B3-0976-9E9C3A878579";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 10 0 0 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Joint002_Joint_M_CTR2" -p "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2";
	rename -uid "0D3F15BE-4B78-337C-4AD5-59972A8671AB";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Joint002_Joint_M_CTR2Shape" -p "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2";
	rename -uid "BD23AC24-456B-80F5-C7C7-6F8A290D0045";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.56381762 -0.86339605 0.86339605 
		-0.56381762 -0.86339605 0.86339605 0.56381762 0.86339605 0.86339605 -0.56381762 0.86339605 
		0.86339605 0.56381762 0.86339605 -0.86339605 -0.56381762 0.86339605 -0.86339605 0.56381762 
		-0.86339605 -0.86339605 -0.56381762 -0.86339605 -0.86339605;
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
createNode parentConstraint -n "Joint000_Joint_M_GRP0_parentConstraint1" -p "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0";
	rename -uid "82ABA5C3-4425-5CE8-99B2-C39868D7F368";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Joint002_Joint_M_CTR2W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 10 0 10 ;
	setAttr ".rst" -type "double3" 10 0 10 ;
	setAttr -k on ".w0";
createNode transform -n "Limb002_Limb_M_NODE" -p "LIMBS";
	rename -uid "B65206E1-4EBB-9291-36C0-12A7A3B100D3";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 2 -en "Joint000:Joint001:Joint002" 
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
	setAttr ".ID" 2;
	setAttr ".pfrsName" -type "string" "Limb002";
	setAttr ".limbType" 4;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Joint000_Joint_M_GRP0" -p "Limb002_Limb_M_NODE";
	rename -uid "217C2479-4B66-F56C-FE1F-3484B712103C";
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
createNode transform -n "Joint000_Joint_M_CTR0" -p "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0";
	rename -uid "B10E4FA7-47ED-18C1-C554-C38D96D9D49A";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Joint000_Joint_M_CTR0Shape" -p "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0";
	rename -uid "FBB0BCC5-41D4-2B75-F59B-28A40517B056";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.56381762 -0.86339605 0.86339605 
		-0.56381762 -0.86339605 0.86339605 0.56381762 0.86339605 0.86339605 -0.56381762 0.86339605 
		0.86339605 0.56381762 0.86339605 -0.86339605 -0.56381762 0.86339605 -0.86339605 0.56381762 
		-0.86339605 -0.86339605 -0.56381762 -0.86339605 -0.86339605;
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
createNode transform -n "Joint001_Joint_M_GRP1" -p "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0";
	rename -uid "D9E1E03C-4D3F-BB7B-D9D6-06842476CE37";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 10 0 0 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Joint001_Joint_M_CTR1" -p "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1";
	rename -uid "9280F217-4138-9639-0DAE-73B68526DD29";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Joint001_Joint_M_CTR1Shape" -p "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1";
	rename -uid "497B6EE3-4F3B-519D-657E-1D93178476AE";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.56381762 -0.86339605 0.86339605 
		-0.56381762 -0.86339605 0.86339605 0.56381762 0.86339605 0.86339605 -0.56381762 0.86339605 
		0.86339605 0.56381762 0.86339605 -0.86339605 -0.56381762 0.86339605 -0.86339605 0.56381762 
		-0.86339605 -0.86339605 -0.56381762 -0.86339605 -0.86339605;
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
createNode transform -n "Joint002_Joint_M_GRP2" -p "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1";
	rename -uid "21C2F0DA-43B9-6CA0-24E7-9F9C5B08001B";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 10 0 0 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Joint002_Joint_M_CTR2" -p "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2";
	rename -uid "611A5741-4109-19E2-7551-F6ABC2D9A39E";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Joint002_Joint_M_CTR2Shape" -p "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2";
	rename -uid "07BD6E30-4754-5918-A61F-98B86021B9A3";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.56381762 -0.86339605 0.86339605 
		-0.56381762 -0.86339605 0.86339605 0.56381762 0.86339605 0.86339605 -0.56381762 0.86339605 
		0.86339605 0.56381762 0.86339605 -0.86339605 -0.56381762 0.86339605 -0.86339605 0.56381762 
		-0.86339605 -0.86339605 -0.56381762 -0.86339605 -0.86339605;
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
createNode parentConstraint -n "Joint000_Joint_M_GRP0_parentConstraint2" -p "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0";
	rename -uid "26D03F79-4693-E1CE-DC40-C6BBE43D1EE5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Joint002_Joint_M_CTR2W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 10 0 -10 ;
	setAttr ".rst" -type "double3" 10 0 -10 ;
	setAttr -k on ".w0";
createNode transform -n "Limb003_Limb_M_NODE" -p "LIMBS";
	rename -uid "708AA1C4-400A-B0F5-849F-2498B5C4A0EF";
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
	setAttr ".pfrsName" -type "string" "Limb003";
	setAttr ".limbType" 4;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Joint000_Joint_M_GRP0" -p "Limb003_Limb_M_NODE";
	rename -uid "06EDA209-4261-B6AE-A45B-19B94530DAC1";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" -20 0 0 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Joint000_Joint_M_CTR0" -p "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0";
	rename -uid "FF61A96F-4947-4309-E681-AE9746E47986";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Joint000_Joint_M_CTR0Shape" -p "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0";
	rename -uid "F84B70E2-43B4-6C4A-E033-9BAF83AE7B3F";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.56381762 -0.86339605 0.86339605 
		-0.56381762 -0.86339605 0.86339605 0.56381762 0.86339605 0.86339605 -0.56381762 0.86339605 
		0.86339605 0.56381762 0.86339605 -0.86339605 -0.56381762 0.86339605 -0.86339605 0.56381762 
		-0.86339605 -0.86339605 -0.56381762 -0.86339605 -0.86339605;
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
createNode transform -n "Joint001_Joint_M_GRP1" -p "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0";
	rename -uid "271001BD-42F0-E3EA-1B36-0DBC8A0BDE84";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 10 0 0 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Joint001_Joint_M_CTR1" -p "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1";
	rename -uid "1F71B843-4D31-8D38-9264-C1BCC892E228";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Joint001_Joint_M_CTR1Shape" -p "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1";
	rename -uid "5BB27289-4C7C-31EA-BD70-9A9DBD441C40";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.56381762 -0.86339605 0.86339605 
		-0.56381762 -0.86339605 0.86339605 0.56381762 0.86339605 0.86339605 -0.56381762 0.86339605 
		0.86339605 0.56381762 0.86339605 -0.86339605 -0.56381762 0.86339605 -0.86339605 0.56381762 
		-0.86339605 -0.86339605 -0.56381762 -0.86339605 -0.86339605;
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
createNode transform -n "Joint002_Joint_M_GRP2" -p "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1";
	rename -uid "2638BC69-45CA-AA53-7344-DEA87D536E4A";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 10 0 0 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Joint002_Joint_M_CTR2" -p "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2";
	rename -uid "42ED8CD5-46D5-C426-4CE2-858F721A6196";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Joint002_Joint_M_CTR2Shape" -p "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2";
	rename -uid "D649A767-40B6-B834-F28A-4FBB6441A2A9";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.56381762 -0.86339605 0.86339605 
		-0.56381762 -0.86339605 0.86339605 0.56381762 0.86339605 0.86339605 -0.56381762 0.86339605 
		0.86339605 0.56381762 0.86339605 -0.86339605 -0.56381762 0.86339605 -0.86339605 0.56381762 
		-0.86339605 -0.86339605 -0.56381762 -0.86339605 -0.86339605;
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
createNode transform -n "MESHES" -p "TEMP_RigRoot";
	rename -uid "C97B8172-4E79-4AB0-CCFD-8A821BDCC606";
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
createNode transform -n "pCylinder1" -p "MESHES";
	rename -uid "C68AE61B-4167-579D-BE9B-288FDCF22CFE";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "A1D91CEB-484F-979B-5343-B6BD51534695";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -dv 1 -at "long";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "backupMesh" -ln "backupMesh" -dt "string";
	addAttr -ci true -sn "pfrsSkinCluster" -ln "pfrsSkinCluster" -dt "string";
	addAttr -ci true -h true -sn "L002" -ln "L002" -dt "doubleArray";
	addAttr -ci true -h true -sn "J005" -ln "J005" -dt "doubleArray";
	addAttr -ci true -h true -sn "J004" -ln "J004" -dt "doubleArray";
	addAttr -ci true -h true -sn "J006" -ln "J006" -dt "doubleArray";
	addAttr -ci true -h true -sn "L001" -ln "L001" -dt "doubleArray";
	addAttr -ci true -h true -sn "J002" -ln "J002" -dt "doubleArray";
	addAttr -ci true -h true -sn "J001" -ln "J001" -dt "doubleArray";
	addAttr -ci true -h true -sn "J003" -ln "J003" -dt "doubleArray";
	addAttr -ci true -h true -sn "L003" -ln "L003" -dt "doubleArray";
	addAttr -ci true -h true -sn "J008" -ln "J008" -dt "doubleArray";
	addAttr -ci true -h true -sn "J007" -ln "J007" -dt "doubleArray";
	addAttr -ci true -h true -sn "J009" -ln "J009" -dt "doubleArray";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000001490116119 0.50046992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ccls" -type "string" "colorSet1";
	setAttr ".clst[0].clsn" -type "string" "colorSet1";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".pfrsVersion" 110;
	setAttr ".L002" -type "doubleArray" 38 0 0 0 0 0 0 0 1.8973889502867785e-05 1.8973889502867785e-05
		 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".J005" -type "doubleArray" 38 0 0 0 0 0 0 0 0 0.11372599999999999 0.24705900000000008
		 0.99970428076155982 0.99970428076155982 0.99970428076155982 0.99970428076155982 0.5
		 0.5 0.5 0.5 0 0 0 0 1 0 1 0 1 0 1 0 0 0 0 0 0 0 0 0 ;
	setAttr ".J004" -type "doubleArray" 38 1 1 1 1 1 1 1 1 0.88627400000000001 0.75294099999999997
		 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 ;
	setAttr ".J006" -type "doubleArray" 38 0 0 0 0 0 0 0 0 0 -5.5511151231257827e-17
		 0.00029571923844019891 0.00029571923844019891 0.00029571923844019891 0.00029571923844019891
		 0.5 0.5 0.5 0.5 0 0 0 0 0 1 0 1 0 1 0 1 0 0 0 0 0 0 0 0 ;
	setAttr ".L001" -type "doubleArray" 38 0 0 6.7922064382177749e-05 0 0 6.7922064382177749e-05
		 1.4028413778265847e-05 0 0 1.4028413778265847e-05 0 0 0 0 0 0 0 0 0.5 0.38170338154126671
		 0.38170338154126671 0.5 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 ;
	setAttr ".J002" -type "doubleArray" 38 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0
		 0 0 0 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0 0 0 0 0 0 0 0 ;
	setAttr ".J001" -type "doubleArray" 38 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 1
		 1 1 1 0.5 0 0.5 0 0.5 0 0.5 0 1 1 1 1 1 1 1 1 ;
	setAttr ".J003" -type "doubleArray" 38 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0
		 0 0 0 0 0.5 0 0.5 0 0.5 0 0.5 0 0 0 0 0 0 0 0 ;
	setAttr ".L003" -type "doubleArray" 38 1 1 0.99993207793561789 1 1 0.99993207793561789
		 9.2e-05 0.00063500000000000004 0.011764 0 0 0 0 0 0 0 0 0 0.043464999999999997 0.00054799999999999998
		 0.0047019999999999996 0.034627999999999999 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 ;
	setAttr ".J008" -type "doubleArray" 38 0.54956860176987987 0.54956832652292997
		 0 0.54956860176987987 0.54956832652292997 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0.48246154022836879 0.00029571870824461892 0.48246166957582781 0.00029571877680585861
		 0.48246166957582781 0.00029571877680585861 0.48246154022836879 0.00029571870824461892 ;
	setAttr ".J007" -type "doubleArray" 38 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0.51753845977163127 0.99970428129175537 0.5175383304241723
		 0.9997042812231941 0.5175383304241723 0.9997042812231941 0.51753845977163127 0.99970428129175537 ;
	setAttr ".J009" -type "doubleArray" 38 0.45043139823012013 0.45043167347707014
		 1 0.45043139823012013 0.45043167347707014 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 0 0 0 0 0 0 0 0 ;
createNode mesh -n "pCylinderShape1Orig" -p "pCylinder1";
	rename -uid "FF21A5BD-4206-D3F2-FFE6-CEA2443C587C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder2" -p "MESHES";
	rename -uid "C3993315-4311-B3DD-C519-95A2E85B78A7";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	rename -uid "7D6ADE57-4B76-088E-ABFE-5A8C2A713817";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -dv 1 -at "long";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "backupMesh" -ln "backupMesh" -dt "string";
	addAttr -ci true -sn "pfrsSkinCluster" -ln "pfrsSkinCluster" -dt "string";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000001490116119 0.50046992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pfrsVersion" 110;
createNode transform -n "CONTROL_SHAPE_TEMPLATES" -p "TEMP_RigRoot";
	rename -uid "D7BF1B35-49D6-9015-E393-71A5C3134100";
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
	rename -uid "BF9D1F59-4169-C340-5034-C9AA992FEF48";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Circle_Wire";
createNode nurbsCurve -n "Circle_WireShape" -p "Circle_Wire";
	rename -uid "88745C8E-4A52-FDCD-B6EC-6CB396F8DD80";
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
	rename -uid "D9AEDBF4-47B4-9D19-4762-4EAF10E4A22D";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Cube_PolyShape" -p "Cube_Poly";
	rename -uid "4428E247-4AAB-A773-EC2C-CA845903C51E";
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
	rename -uid "770ADC74-4270-54BF-74D6-8F829F0E796B";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cube_Wire";
createNode nurbsCurve -n "Cube_WireShape" -p "Cube_Wire";
	rename -uid "4AEB7048-4AD0-75E2-3D2C-B1BE2DDA3B28";
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
	rename -uid "DB625C00-4B5D-19FA-E5C1-56ACE9580055";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cylinder_Poly";
createNode mesh -n "Cylinder_PolyShape" -p "Cylinder_Poly";
	rename -uid "79E21A9E-4F23-32D0-C00A-2FA75B56410B";
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
	rename -uid "013E44A3-46F5-72DD-7F4E-7A9D16F169DB";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Diamond_Wire";
createNode nurbsCurve -n "Diamond_WireShape" -p "Diamond_Wire";
	rename -uid "52653B0A-4B03-05F3-E373-F7B293DA860B";
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
	rename -uid "0715760D-4C74-8C1B-09E3-1D9D6B6CD051";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Pin_Wire";
createNode nurbsCurve -n "Pin_WireShape" -p "Pin_Wire";
	rename -uid "06F819A1-4631-EFC1-F79B-A6AA7193D4FC";
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
	rename -uid "3117772F-40F9-8215-D6C3-75896D282CE6";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Sphere_Poly";
createNode mesh -n "Sphere_PolyShape" -p "Sphere_Poly";
	rename -uid "178DB7B1-40AE-428D-F475-0197C15E7020";
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
	rename -uid "54BEB2F9-4F22-86FF-5241-9BB718CEDB59";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Square_Wire";
createNode nurbsCurve -n "Square_WireShape" -p "Square_Wire";
	rename -uid "997451E2-47B1-677E-E31F-9C8B59C97FC9";
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
	rename -uid "9A17D3EF-4B6B-6898-CFD1-EBB8B11B506F";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "29D332F6-4BFF-C83A-03CE-B19BBBA0B684";
	setAttr -s 4 ".dli[1:3]"  1 2 3;
	setAttr -s 4 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "22418C31-444C-A2A0-F2F7-8B8EB3F21E2F";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "4A6826D9-4525-8C01-D5AC-F495936E93C9";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "0A915A3C-4D73-C11B-32F0-39A5E306235A";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "E48397DB-4F00-1F13-3AF1-3A8C445913DA";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "2B95CD2E-4A42-7AFB-C23B-BFBBBC1740FA";
createNode polyCylinder -n "polyCylinder1";
	rename -uid "7E8ED8A9-44E6-03FD-C58F-C9A28BE60B73";
	setAttr ".sa" 3;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "E339492A-49BA-7818-80FA-C0BC91C54DCC";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.25000003 0 -0.43301275 ;
	setAttr ".rs" 37554;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.49999994039535522 -1 -0.86602550745010376 ;
	setAttr ".cbx" -type "double3" 1 1 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "40616F38-49A7-3906-D8E7-E28F16D8D776";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 9.9999981 0 -10 ;
	setAttr ".rs" 35538;
	setAttr ".lt" -type "double3" 0 0 10.00000321865101 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 9.9999980926513672 -1 -10.866025924682617 ;
	setAttr ".cbx" -type "double3" 9.9999980926513672 1 -9.1339740753173828 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "3C71C035-42C0-E2B1-64B4-AE905385AF37";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[6:9]" -type "float3"  8.99999809 0 -9.13397408 10.49999809
		 0 -10 10.49999809 0 -10 8.99999809 0 -9.13397408;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "6A74B69F-475C-3455-B2B7-F9A7ECE1B7D1";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 20.000002 0 -10 ;
	setAttr ".rs" 55314;
	setAttr ".lt" -type "double3" -3.1086247336482509e-15 1.970575965456774e-46 9.9999988079070388 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 20.000001907348633 -1 -10.866025924682617 ;
	setAttr ".cbx" -type "double3" 20.000001907348633 1 -9.1339740753173828 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "BAE95858-4A4B-BA95-1662-26A9CB3725C7";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.25000092 0 0.43301269 ;
	setAttr ".rs" 48655;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.49999910593032837 -1 0 ;
	setAttr ".cbx" -type "double3" 1.0000009536743164 1 0.86602538824081421 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "CB2359AF-4478-D329-E905-A39B4F500079";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 10 0 9.999999 ;
	setAttr ".rs" 33549;
	setAttr ".lt" -type "double3" 0 0 19.999999046325684 ;
	setAttr ".d" 2;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 10 -1 9.1339740753173828 ;
	setAttr ".cbx" -type "double3" 10 1 10.866024971008301 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "46D01AEF-4E5E-CDE9-ED1B-4CAC60979A7F";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[1]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".tk[2]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".tk[4]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".tk[5]" -type "float3" 9.5367432e-07 0 0 ;
	setAttr ".tk[18]" -type "float3" 10.5 0 10 ;
	setAttr ".tk[19]" -type "float3" 9 0 9.1339741 ;
	setAttr ".tk[20]" -type "float3" 9 0 9.1339741 ;
	setAttr ".tk[21]" -type "float3" 10.5 0 10 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "CA569972-420A-23AD-B6DC-84AB35F67984";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.49999952 0 -5.9604645e-08 ;
	setAttr ".rs" 37634;
	setAttr ".lt" -type "double3" 0 9.3329388743679344e-06 19.500000506637218 ;
	setAttr ".d" 2;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.49999994039535522 -1 -0.86602550745010376 ;
	setAttr ".cbx" -type "double3" -0.49999910593032837 1 0.86602538824081421 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "E19D43A0-4001-F3FB-02A7-EFB5527945B1";
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1314\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1314\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 50 -size 100 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "EDDF19EA-40C9-D455-2F53-4A9D809141B2";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 333 ";
	setAttr ".st" 6;
createNode displayLayer -n "Control_Disp";
	rename -uid "72C38F84-4DFB-0FE6-FA1C-778DA0B8738C";
	setAttr ".do" 1;
createNode displayLayer -n "Joint_Disp";
	rename -uid "BBACD2D3-4D0F-4267-DFCC-CB9AE8C6E444";
	setAttr ".dt" 2;
	setAttr ".do" 2;
createNode displayLayer -n "Meshes_Disp";
	rename -uid "C4504C2D-4CCE-10BD-9230-34BD2E0C2524";
	setAttr ".do" 3;
createNode materialInfo -n "materialInfo1";
	rename -uid "276501CA-456B-A98A-2844-73966AE6F455";
createNode shadingEngine -n "lambert2SG";
	rename -uid "26201951-4CB7-063E-7E08-0FAAC1D081F6";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode lambert -n "TempMaterial";
	rename -uid "5DEB4880-4FBA-BF68-35A4-FB9626441323";
	setAttr ".c" -type "float3" 1 0.92308331 0 ;
	setAttr ".it" -type "float3" 0.69277108 0.69277108 0.69277108 ;
createNode surfaceShader -n "LControlsMaterial";
	rename -uid "D60702CB-4BEC-ECBA-8442-B3B467F95F50";
	setAttr ".oc" -type "float3" 0 0 1 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "LControlsMaterialSG";
	rename -uid "6017ABC2-4955-B0B2-789A-58BB0239BAC3";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "2736BFC9-4598-EEE1-EB1B-10818C2AE298";
createNode surfaceShader -n "MControlsMaterial";
	rename -uid "CBE62CC8-4DE4-52CB-8BEE-549C1B66C344";
	setAttr ".oc" -type "float3" 1 1 0 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "MControlsMaterialSG";
	rename -uid "B81685E0-4E02-F918-5936-C7851D696727";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr -s 9 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "0EBF67B8-4D27-CE3A-4940-3189C9C5106A";
createNode surfaceShader -n "RControlsMaterial";
	rename -uid "3EFB9C9E-4A22-86D3-B6CA-27826A769750";
	setAttr ".oc" -type "float3" 1 0 0 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "RControlsMaterialSG";
	rename -uid "FAD6AE73-4294-27E2-A5A9-4D9F9020FFCD";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "075AA75F-4CA9-F2E5-B8C5-E78CEDBD031E";
createNode skinCluster -n "skinCluster1";
	rename -uid "F16B9925-4CD2-9175-8081-7397C67A0206";
	addAttr -ci true -sn "pfrsMeshes" -ln "pfrsMeshes" -dt "string";
	setAttr -s 38 ".wl";
	setAttr ".wl[0:37].w"
		2 1 0.54956860176987987 2 0.45043139823012013
		2 1 0.54956832652292997 2 0.45043167347707014
		2 2 0.99993207793561789 3 6.7922064382177749e-05
		2 1 0.54956860176987987 2 0.45043139823012013
		2 1 0.54956832652292997 2 0.45043167347707014
		2 2 0.99993207793561789 3 6.7922064382177749e-05
		2 2 9.2e-05 3 0.99990800000000013
		2 2 0.000635 6 0.999365
		3 2 0.011764 6 0.87584787266399999 7 0.112388127336
		1 3 1
		2 7 0.99970428076155982 8 0.00029571923844019891
		2 7 0.99970428076155982 8 0.00029571923844019891
		2 7 0.99970428076155982 8 0.00029571923844019891
		2 7 0.99970428076155982 8 0.00029571923844019891
		2 7 0.5 8 0.5
		2 7 0.5 8 0.5
		2 7 0.5 8 0.5
		2 7 0.5 8 0.5
		2 2 0.043465 3 0.956535
		2 2 0.000548 3 0.999452
		2 2 0.004702 3 0.995298
		2 2 0.034628 3 0.965372
		2 3 0.5 4 0.5
		2 4 0.5 5 0.5
		2 3 0.5 4 0.5
		2 4 0.5 5 0.5
		2 3 0.5 4 0.5
		2 4 0.5 5 0.5
		2 3 0.5 4 0.5
		2 4 0.5 5 0.5
		2 0 0.51753845977163127 1 0.48246154022836879
		2 0 0.99970428129175537 1 0.00029571870824461892
		2 0 0.5175383304241723 1 0.48246166957582781
		2 0 0.9997042812231941 1 0.00029571877680585861
		2 0 0.5175383304241723 1 0.48246166957582781
		2 0 0.9997042812231941 1 0.00029571877680585861
		2 0 0.51753845977163127 1 0.48246154022836879
		2 0 0.99970428129175537 1 0.00029571870824461892;
	setAttr -s 9 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 20 0 0 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 10 0 0 1;
	setAttr ".pm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".pm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -10 0 -10 1;
	setAttr ".pm[4]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -20 0 -10 1;
	setAttr ".pm[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -30 0 -10 1;
	setAttr ".pm[6]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -10 0 10 1;
	setAttr ".pm[7]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -20 0 10 1;
	setAttr ".pm[8]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -30 0 10 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 9 ".ma";
	setAttr -s 9 ".dpf[0:8]"  4 4 4 4 4 4 4 4 4;
	setAttr -s 9 ".lw";
	setAttr -s 9 ".lw";
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
	setAttr -s 9 ".ifcl";
	setAttr -s 9 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "764B302B-4EAB-686C-9921-F6BCE3654315";
createNode objectSet -n "skinCluster1Set";
	rename -uid "0D9E581C-44E7-FAE5-81A2-1D91535EAC47";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "DCE498A5-4680-9191-30E0-D8B5F13F538E";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "16D38AC7-4A57-56ED-9AE2-44A916C51FA7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "0387173F-4DDE-C46F-6838-72A78F64B902";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "3491C6B2-4211-65CA-2214-149C02C35ED9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "6762C959-4CAE-0540-9778-2B815F6FB1B3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "21D234E3-4486-3001-D86E-FB8452D04449";
	setAttr -s 11 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 11 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 -20 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 10 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 10 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 10 0 10 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 10 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 10 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 10 0 -10 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 10 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 10 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 11 ".m";
	setAttr -s 11 ".p";
	setAttr -s 11 ".g[0:10]" yes yes no no no no no no no no no;
	setAttr ".bp" yes;
createNode animLayer -n "BaseAnimation";
	rename -uid "80003B60-49AD-3120-A3BE-7CAA111478DA";
	setAttr ".ovrd" yes;
createNode polyColorPerVertex -n "polyColorPerVertex1";
	rename -uid "1F1DEEA1-46B1-A419-BD9E-059BEA2D2F37";
	setAttr ".uopa" yes;
	setAttr -s 38 ".vclr";
	setAttr ".vclr[0].vxal" 1;
	setAttr -s 5 ".vclr[0].vfcl";
	setAttr ".vclr[0].vfcl[3].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[0].vfcl[3].vfal" 1;
	setAttr ".vclr[0].vfcl[5].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[0].vfcl[5].vfal" 1;
	setAttr ".vclr[0].vfcl[6].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[0].vfcl[6].vfal" 1;
	setAttr ".vclr[0].vfcl[29].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[0].vfcl[29].vfal" 1;
	setAttr ".vclr[0].vfcl[35].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[0].vfcl[35].vfal" 1;
	setAttr ".vclr[1].vxal" 1;
	setAttr -s 5 ".vclr[1].vfcl";
	setAttr ".vclr[1].vfcl[3].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[1].vfcl[3].vfal" 1;
	setAttr ".vclr[1].vfcl[17].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[1].vfcl[17].vfal" 1;
	setAttr ".vclr[1].vfcl[20].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[1].vfcl[20].vfal" 1;
	setAttr ".vclr[1].vfcl[29].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[1].vfcl[29].vfal" 1;
	setAttr ".vclr[1].vfcl[31].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[1].vfcl[31].vfal" 1;
	setAttr ".vclr[2].vxal" 1;
	setAttr -s 5 ".vclr[2].vfcl";
	setAttr ".vclr[2].vfcl[3].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[2].vfcl[3].vfal" 1;
	setAttr ".vclr[2].vfcl[5].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[2].vfcl[5].vfal" 1;
	setAttr ".vclr[2].vfcl[8].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[2].vfcl[8].vfal" 1;
	setAttr ".vclr[2].vfcl[17].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[2].vfcl[17].vfal" 1;
	setAttr ".vclr[2].vfcl[18].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[2].vfcl[18].vfal" 1;
	setAttr ".vclr[3].vxal" 1;
	setAttr -s 5 ".vclr[3].vfcl";
	setAttr ".vclr[3].vfcl[4].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[3].vfcl[4].vfal" 1;
	setAttr ".vclr[3].vfcl[6].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[3].vfcl[6].vfal" 1;
	setAttr ".vclr[3].vfcl[7].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[3].vfcl[7].vfal" 1;
	setAttr ".vclr[3].vfcl[33].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[3].vfcl[33].vfal" 1;
	setAttr ".vclr[3].vfcl[35].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[3].vfcl[35].vfal" 1;
	setAttr ".vclr[4].vxal" 1;
	setAttr -s 5 ".vclr[4].vfcl";
	setAttr ".vclr[4].vfcl[4].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[4].vfcl[4].vfal" 1;
	setAttr ".vclr[4].vfcl[19].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[4].vfcl[19].vfal" 1;
	setAttr ".vclr[4].vfcl[20].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[4].vfcl[20].vfal" 1;
	setAttr ".vclr[4].vfcl[31].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[4].vfcl[31].vfal" 1;
	setAttr ".vclr[4].vfcl[33].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[4].vfcl[33].vfal" 1;
	setAttr ".vclr[5].vxal" 1;
	setAttr -s 5 ".vclr[5].vfcl";
	setAttr ".vclr[5].vfcl[4].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[5].vfcl[4].vfal" 1;
	setAttr ".vclr[5].vfcl[7].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[5].vfcl[7].vfal" 1;
	setAttr ".vclr[5].vfcl[8].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[5].vfcl[8].vfal" 1;
	setAttr ".vclr[5].vfcl[18].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[5].vfcl[18].vfal" 1;
	setAttr ".vclr[5].vfcl[19].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[5].vfcl[19].vfal" 1;
	setAttr ".vclr[6].vxal" 1;
	setAttr -s 4 ".vclr[6].vfcl";
	setAttr ".vclr[6].vfcl[5].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[6].vfcl[5].vfal" 1;
	setAttr ".vclr[6].vfcl[8].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[6].vfcl[8].vfal" 1;
	setAttr ".vclr[6].vfcl[9].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[6].vfcl[9].vfal" 1;
	setAttr ".vclr[6].vfcl[12].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[6].vfcl[12].vfal" 1;
	setAttr ".vclr[7].vxal" 1;
	setAttr -s 4 ".vclr[7].vfcl";
	setAttr ".vclr[7].vfcl[5].frgb" -type "float3" 1.8973889e-05 1.8973889e-05 1.8973889e-05 ;
	setAttr ".vclr[7].vfcl[5].vfal" 1;
	setAttr ".vclr[7].vfcl[6].frgb" -type "float3" 1.8973889e-05 1.8973889e-05 1.8973889e-05 ;
	setAttr ".vclr[7].vfcl[6].vfal" 1;
	setAttr ".vclr[7].vfcl[9].frgb" -type "float3" 1.8973889e-05 1.8973889e-05 1.8973889e-05 ;
	setAttr ".vclr[7].vfcl[9].vfal" 1;
	setAttr ".vclr[7].vfcl[10].frgb" -type "float3" 1.8973889e-05 1.8973889e-05 1.8973889e-05 ;
	setAttr ".vclr[7].vfcl[10].vfal" 1;
	setAttr ".vclr[8].vxal" 1;
	setAttr -s 4 ".vclr[8].vfcl";
	setAttr ".vclr[8].vfcl[6].frgb" -type "float3" 1.8973889e-05 1.8973889e-05 1.8973889e-05 ;
	setAttr ".vclr[8].vfcl[6].vfal" 1;
	setAttr ".vclr[8].vfcl[7].frgb" -type "float3" 1.8973889e-05 1.8973889e-05 1.8973889e-05 ;
	setAttr ".vclr[8].vfcl[7].vfal" 1;
	setAttr ".vclr[8].vfcl[10].frgb" -type "float3" 1.8973889e-05 1.8973889e-05 1.8973889e-05 ;
	setAttr ".vclr[8].vfcl[10].vfal" 1;
	setAttr ".vclr[8].vfcl[11].frgb" -type "float3" 1.8973889e-05 1.8973889e-05 1.8973889e-05 ;
	setAttr ".vclr[8].vfcl[11].vfal" 1;
	setAttr ".vclr[9].vxal" 1;
	setAttr -s 4 ".vclr[9].vfcl";
	setAttr ".vclr[9].vfcl[7].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[9].vfcl[7].vfal" 1;
	setAttr ".vclr[9].vfcl[8].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[9].vfcl[8].vfal" 1;
	setAttr ".vclr[9].vfcl[11].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[9].vfcl[11].vfal" 1;
	setAttr ".vclr[9].vfcl[12].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[9].vfcl[12].vfal" 1;
	setAttr ".vclr[10].vxal" 1;
	setAttr -s 4 ".vclr[10].vfcl";
	setAttr ".vclr[10].vfcl[9].frgb" -type "float3" 1 1 1 ;
	setAttr ".vclr[10].vfcl[9].vfal" 1;
	setAttr ".vclr[10].vfcl[12].frgb" -type "float3" 1 1 1 ;
	setAttr ".vclr[10].vfcl[12].vfal" 1;
	setAttr ".vclr[10].vfcl[13].frgb" -type "float3" 1 1 1 ;
	setAttr ".vclr[10].vfcl[13].vfal" 1;
	setAttr ".vclr[10].vfcl[16].frgb" -type "float3" 1 1 1 ;
	setAttr ".vclr[10].vfcl[16].vfal" 1;
	setAttr ".vclr[11].vxal" 1;
	setAttr -s 4 ".vclr[11].vfcl";
	setAttr ".vclr[11].vfcl[9].frgb" -type "float3" 1 1 1 ;
	setAttr ".vclr[11].vfcl[9].vfal" 1;
	setAttr ".vclr[11].vfcl[10].frgb" -type "float3" 1 1 1 ;
	setAttr ".vclr[11].vfcl[10].vfal" 1;
	setAttr ".vclr[11].vfcl[13].frgb" -type "float3" 1 1 1 ;
	setAttr ".vclr[11].vfcl[13].vfal" 1;
	setAttr ".vclr[11].vfcl[14].frgb" -type "float3" 1 1 1 ;
	setAttr ".vclr[11].vfcl[14].vfal" 1;
	setAttr ".vclr[12].vxal" 1;
	setAttr -s 4 ".vclr[12].vfcl";
	setAttr ".vclr[12].vfcl[10].frgb" -type "float3" 1 1 1 ;
	setAttr ".vclr[12].vfcl[10].vfal" 1;
	setAttr ".vclr[12].vfcl[11].frgb" -type "float3" 1 1 1 ;
	setAttr ".vclr[12].vfcl[11].vfal" 1;
	setAttr ".vclr[12].vfcl[14].frgb" -type "float3" 1 1 1 ;
	setAttr ".vclr[12].vfcl[14].vfal" 1;
	setAttr ".vclr[12].vfcl[15].frgb" -type "float3" 1 1 1 ;
	setAttr ".vclr[12].vfcl[15].vfal" 1;
	setAttr ".vclr[13].vxal" 1;
	setAttr -s 4 ".vclr[13].vfcl";
	setAttr ".vclr[13].vfcl[11].frgb" -type "float3" 1 1 1 ;
	setAttr ".vclr[13].vfcl[11].vfal" 1;
	setAttr ".vclr[13].vfcl[12].frgb" -type "float3" 1 1 1 ;
	setAttr ".vclr[13].vfcl[12].vfal" 1;
	setAttr ".vclr[13].vfcl[15].frgb" -type "float3" 1 1 1 ;
	setAttr ".vclr[13].vfcl[15].vfal" 1;
	setAttr ".vclr[13].vfcl[16].frgb" -type "float3" 1 1 1 ;
	setAttr ".vclr[13].vfcl[16].vfal" 1;
	setAttr ".vclr[14].vxal" 1;
	setAttr -s 3 ".vclr[14].vfcl";
	setAttr ".vclr[14].vfcl[2].frgb" -type "float3" 1 1 1 ;
	setAttr ".vclr[14].vfcl[2].vfal" 1;
	setAttr ".vclr[14].vfcl[13].frgb" -type "float3" 1 1 1 ;
	setAttr ".vclr[14].vfcl[13].vfal" 1;
	setAttr ".vclr[14].vfcl[16].frgb" -type "float3" 1 1 1 ;
	setAttr ".vclr[14].vfcl[16].vfal" 1;
	setAttr ".vclr[15].vxal" 1;
	setAttr -s 3 ".vclr[15].vfcl";
	setAttr ".vclr[15].vfcl[2].frgb" -type "float3" 1 1 1 ;
	setAttr ".vclr[15].vfcl[2].vfal" 1;
	setAttr ".vclr[15].vfcl[13].frgb" -type "float3" 1 1 1 ;
	setAttr ".vclr[15].vfcl[13].vfal" 1;
	setAttr ".vclr[15].vfcl[14].frgb" -type "float3" 1 1 1 ;
	setAttr ".vclr[15].vfcl[14].vfal" 1;
	setAttr ".vclr[16].vxal" 1;
	setAttr -s 3 ".vclr[16].vfcl";
	setAttr ".vclr[16].vfcl[2].frgb" -type "float3" 1 1 1 ;
	setAttr ".vclr[16].vfcl[2].vfal" 1;
	setAttr ".vclr[16].vfcl[14].frgb" -type "float3" 1 1 1 ;
	setAttr ".vclr[16].vfcl[14].vfal" 1;
	setAttr ".vclr[16].vfcl[15].frgb" -type "float3" 1 1 1 ;
	setAttr ".vclr[16].vfcl[15].vfal" 1;
	setAttr ".vclr[17].vxal" 1;
	setAttr -s 3 ".vclr[17].vfcl";
	setAttr ".vclr[17].vfcl[2].frgb" -type "float3" 1 1 1 ;
	setAttr ".vclr[17].vfcl[2].vfal" 1;
	setAttr ".vclr[17].vfcl[15].frgb" -type "float3" 1 1 1 ;
	setAttr ".vclr[17].vfcl[15].vfal" 1;
	setAttr ".vclr[17].vfcl[16].frgb" -type "float3" 1 1 1 ;
	setAttr ".vclr[17].vfcl[16].vfal" 1;
	setAttr ".vclr[18].vxal" 1;
	setAttr -s 4 ".vclr[18].vfcl";
	setAttr ".vclr[18].vfcl[17].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[18].vfcl[17].vfal" 1;
	setAttr ".vclr[18].vfcl[20].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[18].vfcl[20].vfal" 1;
	setAttr ".vclr[18].vfcl[21].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[18].vfcl[21].vfal" 1;
	setAttr ".vclr[18].vfcl[27].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[18].vfcl[27].vfal" 1;
	setAttr ".vclr[19].vxal" 1;
	setAttr -s 4 ".vclr[19].vfcl";
	setAttr ".vclr[19].vfcl[17].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[19].vfcl[17].vfal" 1;
	setAttr ".vclr[19].vfcl[18].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[19].vfcl[18].vfal" 1;
	setAttr ".vclr[19].vfcl[21].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[19].vfcl[21].vfal" 1;
	setAttr ".vclr[19].vfcl[23].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[19].vfcl[23].vfal" 1;
	setAttr ".vclr[20].vxal" 1;
	setAttr -s 4 ".vclr[20].vfcl";
	setAttr ".vclr[20].vfcl[18].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[20].vfcl[18].vfal" 1;
	setAttr ".vclr[20].vfcl[19].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[20].vfcl[19].vfal" 1;
	setAttr ".vclr[20].vfcl[23].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[20].vfcl[23].vfal" 1;
	setAttr ".vclr[20].vfcl[25].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[20].vfcl[25].vfal" 1;
	setAttr ".vclr[21].vxal" 1;
	setAttr -s 4 ".vclr[21].vfcl";
	setAttr ".vclr[21].vfcl[19].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[21].vfcl[19].vfal" 1;
	setAttr ".vclr[21].vfcl[20].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[21].vfcl[20].vfal" 1;
	setAttr ".vclr[21].vfcl[25].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[21].vfcl[25].vfal" 1;
	setAttr ".vclr[21].vfcl[27].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[21].vfcl[27].vfal" 1;
	setAttr ".vclr[22].vxal" 1;
	setAttr -s 4 ".vclr[22].vfcl";
	setAttr ".vclr[22].vfcl[21].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[22].vfcl[21].vfal" 1;
	setAttr ".vclr[22].vfcl[22].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[22].vfcl[22].vfal" 1;
	setAttr ".vclr[22].vfcl[27].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[22].vfcl[27].vfal" 1;
	setAttr ".vclr[22].vfcl[28].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[22].vfcl[28].vfal" 1;
	setAttr ".vclr[23].vxal" 1;
	setAttr -s 3 ".vclr[23].vfcl";
	setAttr ".vclr[23].vfcl[1].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[23].vfcl[1].vfal" 1;
	setAttr ".vclr[23].vfcl[22].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[23].vfcl[22].vfal" 1;
	setAttr ".vclr[23].vfcl[28].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[23].vfcl[28].vfal" 1;
	setAttr ".vclr[24].vxal" 1;
	setAttr -s 4 ".vclr[24].vfcl";
	setAttr ".vclr[24].vfcl[21].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[24].vfcl[21].vfal" 1;
	setAttr ".vclr[24].vfcl[22].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[24].vfcl[22].vfal" 1;
	setAttr ".vclr[24].vfcl[23].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[24].vfcl[23].vfal" 1;
	setAttr ".vclr[24].vfcl[24].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[24].vfcl[24].vfal" 1;
	setAttr ".vclr[25].vxal" 1;
	setAttr -s 3 ".vclr[25].vfcl";
	setAttr ".vclr[25].vfcl[1].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[25].vfcl[1].vfal" 1;
	setAttr ".vclr[25].vfcl[22].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[25].vfcl[22].vfal" 1;
	setAttr ".vclr[25].vfcl[24].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[25].vfcl[24].vfal" 1;
	setAttr ".vclr[26].vxal" 1;
	setAttr -s 4 ".vclr[26].vfcl";
	setAttr ".vclr[26].vfcl[23].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[26].vfcl[23].vfal" 1;
	setAttr ".vclr[26].vfcl[24].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[26].vfcl[24].vfal" 1;
	setAttr ".vclr[26].vfcl[25].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[26].vfcl[25].vfal" 1;
	setAttr ".vclr[26].vfcl[26].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[26].vfcl[26].vfal" 1;
	setAttr ".vclr[27].vxal" 1;
	setAttr -s 3 ".vclr[27].vfcl";
	setAttr ".vclr[27].vfcl[1].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[27].vfcl[1].vfal" 1;
	setAttr ".vclr[27].vfcl[24].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[27].vfcl[24].vfal" 1;
	setAttr ".vclr[27].vfcl[26].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[27].vfcl[26].vfal" 1;
	setAttr ".vclr[28].vxal" 1;
	setAttr -s 4 ".vclr[28].vfcl";
	setAttr ".vclr[28].vfcl[25].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[28].vfcl[25].vfal" 1;
	setAttr ".vclr[28].vfcl[26].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[28].vfcl[26].vfal" 1;
	setAttr ".vclr[28].vfcl[27].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[28].vfcl[27].vfal" 1;
	setAttr ".vclr[28].vfcl[28].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[28].vfcl[28].vfal" 1;
	setAttr ".vclr[29].vxal" 1;
	setAttr -s 3 ".vclr[29].vfcl";
	setAttr ".vclr[29].vfcl[1].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[29].vfcl[1].vfal" 1;
	setAttr ".vclr[29].vfcl[26].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[29].vfcl[26].vfal" 1;
	setAttr ".vclr[29].vfcl[28].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[29].vfcl[28].vfal" 1;
	setAttr ".vclr[30].vxal" 1;
	setAttr -s 4 ".vclr[30].vfcl";
	setAttr ".vclr[30].vfcl[29].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[30].vfcl[29].vfal" 1;
	setAttr ".vclr[30].vfcl[30].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[30].vfcl[30].vfal" 1;
	setAttr ".vclr[30].vfcl[35].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[30].vfcl[35].vfal" 1;
	setAttr ".vclr[30].vfcl[36].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[30].vfcl[36].vfal" 1;
	setAttr ".vclr[31].vxal" 1;
	setAttr -s 3 ".vclr[31].vfcl";
	setAttr ".vclr[31].vfcl[0].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[31].vfcl[0].vfal" 1;
	setAttr ".vclr[31].vfcl[30].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[31].vfcl[30].vfal" 1;
	setAttr ".vclr[31].vfcl[36].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[31].vfcl[36].vfal" 1;
	setAttr ".vclr[32].vxal" 1;
	setAttr -s 4 ".vclr[32].vfcl";
	setAttr ".vclr[32].vfcl[29].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[32].vfcl[29].vfal" 1;
	setAttr ".vclr[32].vfcl[30].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[32].vfcl[30].vfal" 1;
	setAttr ".vclr[32].vfcl[31].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[32].vfcl[31].vfal" 1;
	setAttr ".vclr[32].vfcl[32].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[32].vfcl[32].vfal" 1;
	setAttr ".vclr[33].vxal" 1;
	setAttr -s 3 ".vclr[33].vfcl";
	setAttr ".vclr[33].vfcl[0].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[33].vfcl[0].vfal" 1;
	setAttr ".vclr[33].vfcl[30].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[33].vfcl[30].vfal" 1;
	setAttr ".vclr[33].vfcl[32].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[33].vfcl[32].vfal" 1;
	setAttr ".vclr[34].vxal" 1;
	setAttr -s 4 ".vclr[34].vfcl";
	setAttr ".vclr[34].vfcl[31].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[34].vfcl[31].vfal" 1;
	setAttr ".vclr[34].vfcl[32].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[34].vfcl[32].vfal" 1;
	setAttr ".vclr[34].vfcl[33].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[34].vfcl[33].vfal" 1;
	setAttr ".vclr[34].vfcl[34].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[34].vfcl[34].vfal" 1;
	setAttr ".vclr[35].vxal" 1;
	setAttr -s 3 ".vclr[35].vfcl";
	setAttr ".vclr[35].vfcl[0].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[35].vfcl[0].vfal" 1;
	setAttr ".vclr[35].vfcl[32].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[35].vfcl[32].vfal" 1;
	setAttr ".vclr[35].vfcl[34].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[35].vfcl[34].vfal" 1;
	setAttr ".vclr[36].vxal" 1;
	setAttr -s 4 ".vclr[36].vfcl";
	setAttr ".vclr[36].vfcl[33].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[36].vfcl[33].vfal" 1;
	setAttr ".vclr[36].vfcl[34].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[36].vfcl[34].vfal" 1;
	setAttr ".vclr[36].vfcl[35].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[36].vfcl[35].vfal" 1;
	setAttr ".vclr[36].vfcl[36].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[36].vfcl[36].vfal" 1;
	setAttr ".vclr[37].vxal" 1;
	setAttr -s 3 ".vclr[37].vfcl";
	setAttr ".vclr[37].vfcl[0].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[37].vfcl[0].vfal" 1;
	setAttr ".vclr[37].vfcl[34].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[37].vfcl[34].vfal" 1;
	setAttr ".vclr[37].vfcl[36].frgb" -type "float3" 0 0 0 ;
	setAttr ".vclr[37].vfcl[36].vfal" 1;
	setAttr ".cn" -type "string" "colorSet1";
	setAttr ".clam" no;
createNode controller -n "Joint001_Joint_M_CTR1_tag";
	rename -uid "35C7BC1D-4E4A-8583-32FC-3485DD0B8712";
	setAttr -s 6 ".child";
createNode controller -n "Joint000_Joint_M_CTR0_tag";
	rename -uid "8E140978-42AB-28B1-CF14-1BA4181530C8";
createNode controller -n "Joint002_Joint_M_CTR2_tag";
	rename -uid "CCB8D6B7-41F1-124E-23B7-1892720C602B";
createNode controller -n "controller1";
	rename -uid "16517B3B-474E-4EB7-4D4E-1ABC92F9530D";
	setAttr ".cwsb" yes;
	setAttr -s 3 ".child";
createNode controller -n "Joint001_Joint_M_CTR1_tag1";
	rename -uid "E54ED6CA-4080-1A7B-C303-D49DF8D47240";
createNode controller -n "Joint000_Joint_M_CTR0_tag1";
	rename -uid "FC9ECC15-4B1E-30D3-7BE5-F68A3E6495ED";
createNode controller -n "Joint002_Joint_M_CTR2_tag1";
	rename -uid "03A64C5C-4797-D924-3C74-9696C20E6C45";
createNode controller -n "Joint001_Joint_M_CTR1_tag2";
	rename -uid "14B0F0AF-4406-EF3D-30D7-CCAAB1CA3685";
createNode controller -n "Joint000_Joint_M_CTR0_tag2";
	rename -uid "9E3D53DB-4E9B-F9B6-21F3-5AADBFE9D0A5";
createNode controller -n "Joint002_Joint_M_CTR2_tag2";
	rename -uid "71797F50-4E7B-DAB4-5D30-73863E4E7B07";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "2CDE91A0-4B9E-BB39-CB49-3C8A3979F16C";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -511.90474156349512 -346.42855766273738 ;
	setAttr ".tgi[0].vh" -type "double2" 511.90474156349512 345.23808151956644 ;
	setAttr -s 123 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 3878.571533203125;
	setAttr ".tgi[0].ni[0].y" 4170;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -728.5714111328125;
	setAttr ".tgi[0].ni[1].y" 3514.28564453125;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 2035.7142333984375;
	setAttr ".tgi[0].ni[2].y" 1280;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 4205.71435546875;
	setAttr ".tgi[0].ni[3].y" 120;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 4852.85693359375;
	setAttr ".tgi[0].ni[4].y" 3527.142822265625;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 4374.28564453125;
	setAttr ".tgi[0].ni[5].y" 5228.5712890625;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" -5057.14306640625;
	setAttr ".tgi[0].ni[6].y" 4712.85693359375;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" -728.5714111328125;
	setAttr ".tgi[0].ni[7].y" 2841.428466796875;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 3878.571533203125;
	setAttr ".tgi[0].ni[8].y" 4677.14306640625;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" -421.42855834960938;
	setAttr ".tgi[0].ni[9].y" 3030;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 4852.85693359375;
	setAttr ".tgi[0].ni[10].y" 5215.71435546875;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" -2198.571533203125;
	setAttr ".tgi[0].ni[11].y" -1617.142822265625;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" -1702.857177734375;
	setAttr ".tgi[0].ni[12].y" 3228.571533203125;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 192.85714721679688;
	setAttr ".tgi[0].ni[13].y" -10;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 4830;
	setAttr ".tgi[0].ni[14].y" 1820;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 4852.85693359375;
	setAttr ".tgi[0].ni[15].y" 4034.28564453125;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 4374.28564453125;
	setAttr ".tgi[0].ni[16].y" 3380;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" -2198.571533203125;
	setAttr ".tgi[0].ni[17].y" 3372.857177734375;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" -1207.142822265625;
	setAttr ".tgi[0].ni[18].y" 2815.71435546875;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 4852.85693359375;
	setAttr ".tgi[0].ni[19].y" 4724.28564453125;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 4374.28564453125;
	setAttr ".tgi[0].ni[20].y" 4154.28564453125;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 4852.85693359375;
	setAttr ".tgi[0].ni[21].y" 4622.85693359375;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 4852.85693359375;
	setAttr ".tgi[0].ni[22].y" 4135.71435546875;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 3878.571533203125;
	setAttr ".tgi[0].ni[23].y" 3852.857177734375;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 4852.85693359375;
	setAttr ".tgi[0].ni[24].y" 3628.571533203125;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" -1207.142822265625;
	setAttr ".tgi[0].ni[25].y" 2600;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" -4442.85693359375;
	setAttr ".tgi[0].ni[26].y" 4621.4287109375;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 4852.85693359375;
	setAttr ".tgi[0].ni[27].y" 4927.14306640625;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" -421.42855834960938;
	setAttr ".tgi[0].ni[28].y" 980;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 4852.85693359375;
	setAttr ".tgi[0].ni[29].y" 3730;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 4852.85693359375;
	setAttr ".tgi[0].ni[30].y" 5114.28564453125;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 500;
	setAttr ".tgi[0].ni[31].y" 1367.142822265625;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 192.85714721679688;
	setAttr ".tgi[0].ni[32].y" 2877.142822265625;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 4830;
	setAttr ".tgi[0].ni[33].y" 265.71429443359375;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" -4442.85693359375;
	setAttr ".tgi[0].ni[34].y" 2334.28564453125;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 2957.142822265625;
	setAttr ".tgi[0].ni[35].y" 1414.2857666015625;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 1421.4285888671875;
	setAttr ".tgi[0].ni[36].y" 1210;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 4852.85693359375;
	setAttr ".tgi[0].ni[37].y" 5317.14306640625;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 4830;
	setAttr ".tgi[0].ni[38].y" 107.14286041259766;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" -4135.71435546875;
	setAttr ".tgi[0].ni[39].y" 2785.71435546875;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 4374.28564453125;
	setAttr ".tgi[0].ni[40].y" 5127.14306640625;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 2650;
	setAttr ".tgi[0].ni[41].y" 1371.4285888671875;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" -5057.14306640625;
	setAttr ".tgi[0].ni[42].y" 4814.28564453125;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 2342.857177734375;
	setAttr ".tgi[0].ni[43].y" 1347.142822265625;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 3878.571533203125;
	setAttr ".tgi[0].ni[44].y" 5038.5712890625;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 1114.2857666015625;
	setAttr ".tgi[0].ni[45].y" 1231.4285888671875;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 4374.28564453125;
	setAttr ".tgi[0].ni[46].y" -1247.142822265625;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 4830;
	setAttr ".tgi[0].ni[47].y" -882.85711669921875;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 3878.571533203125;
	setAttr ".tgi[0].ni[48].y" 4068.571533203125;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 4830;
	setAttr ".tgi[0].ni[49].y" 1058.5714111328125;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" -2198.571533203125;
	setAttr ".tgi[0].ni[50].y" 2714.28564453125;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 3878.571533203125;
	setAttr ".tgi[0].ni[51].y" 4271.4287109375;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" 807.14288330078125;
	setAttr ".tgi[0].ni[52].y" 1200;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" -1702.857177734375;
	setAttr ".tgi[0].ni[53].y" 1500;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 4374.28564453125;
	setAttr ".tgi[0].ni[54].y" 3668.571533203125;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 4374.28564453125;
	setAttr ".tgi[0].ni[55].y" 3867.142822265625;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" 4374.28564453125;
	setAttr ".tgi[0].ni[56].y" -1875.7142333984375;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 4205.71435546875;
	setAttr ".tgi[0].ni[57].y" -615.71429443359375;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" 4374.28564453125;
	setAttr ".tgi[0].ni[58].y" -2180;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" 4374.28564453125;
	setAttr ".tgi[0].ni[59].y" 3262.857177734375;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" -5057.14306640625;
	setAttr ".tgi[0].ni[60].y" 5017.14306640625;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" 4830;
	setAttr ".tgi[0].ni[61].y" -781.4285888671875;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" 4852.85693359375;
	setAttr ".tgi[0].ni[62].y" 3932.857177734375;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" 3878.571533203125;
	setAttr ".tgi[0].ni[63].y" 4778.5712890625;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" -5057.14306640625;
	setAttr ".tgi[0].ni[64].y" 4915.71435546875;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" 4374.28564453125;
	setAttr ".tgi[0].ni[65].y" 5025.71435546875;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" 4374.28564453125;
	setAttr ".tgi[0].ni[66].y" 3161.428466796875;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" 4374.28564453125;
	setAttr ".tgi[0].ni[67].y" -2397.142822265625;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" 4830;
	setAttr ".tgi[0].ni[68].y" 2035.7142333984375;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" 4374.28564453125;
	setAttr ".tgi[0].ni[69].y" 3508.571533203125;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" 1728.5714111328125;
	setAttr ".tgi[0].ni[70].y" 1242.857177734375;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" 500;
	setAttr ".tgi[0].ni[71].y" 1265.7142333984375;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" 4205.71435546875;
	setAttr ".tgi[0].ni[72].y" 2038.5714111328125;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" 3264.28564453125;
	setAttr ".tgi[0].ni[73].y" -1660;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" -728.5714111328125;
	setAttr ".tgi[0].ni[74].y" 1098.5714111328125;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" 4830;
	setAttr ".tgi[0].ni[75].y" 468.57144165039063;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" -114.28571319580078;
	setAttr ".tgi[0].ni[76].y" 1335.7142333984375;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" 3878.571533203125;
	setAttr ".tgi[0].ni[77].y" 4474.28564453125;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" -728.5714111328125;
	setAttr ".tgi[0].ni[78].y" 997.14288330078125;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" 4830;
	setAttr ".tgi[0].ni[79].y" 5.7142858505249023;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" 4830;
	setAttr ".tgi[0].ni[80].y" 570;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" 3878.571533203125;
	setAttr ".tgi[0].ni[81].y" 4372.85693359375;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" 3878.571533203125;
	setAttr ".tgi[0].ni[82].y" -2928.571533203125;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" 4852.85693359375;
	setAttr ".tgi[0].ni[83].y" 4825.71435546875;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" 4830;
	setAttr ".tgi[0].ni[84].y" 367.14285278320313;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" 4830;
	setAttr ".tgi[0].ni[85].y" 785.71429443359375;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" 4522.85693359375;
	setAttr ".tgi[0].ni[86].y" -847.14288330078125;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" 3878.571533203125;
	setAttr ".tgi[0].ni[87].y" 3580;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" -4750;
	setAttr ".tgi[0].ni[88].y" 4814.28564453125;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" 4852.85693359375;
	setAttr ".tgi[0].ni[89].y" 4521.4287109375;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" 4205.71435546875;
	setAttr ".tgi[0].ni[90].y" 18.571428298950195;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" 4374.28564453125;
	setAttr ".tgi[0].ni[91].y" 4052.857177734375;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" -5057.14306640625;
	setAttr ".tgi[0].ni[92].y" 4611.4287109375;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" 4830;
	setAttr ".tgi[0].ni[93].y" 1490;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" 4374.28564453125;
	setAttr ".tgi[0].ni[94].y" 4572.85693359375;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" 4852.85693359375;
	setAttr ".tgi[0].ni[95].y" 3831.428466796875;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" 4374.28564453125;
	setAttr ".tgi[0].ni[96].y" 5547.14306640625;
	setAttr ".tgi[0].ni[96].nvs" 18304;
	setAttr ".tgi[0].ni[97].x" 4852.85693359375;
	setAttr ".tgi[0].ni[97].y" 4237.14306640625;
	setAttr ".tgi[0].ni[97].nvs" 18304;
	setAttr ".tgi[0].ni[98].x" 3878.571533203125;
	setAttr ".tgi[0].ni[98].y" 4880;
	setAttr ".tgi[0].ni[98].nvs" 18304;
	setAttr ".tgi[0].ni[99].x" 3878.571533203125;
	setAttr ".tgi[0].ni[99].y" 4575.71435546875;
	setAttr ".tgi[0].ni[99].nvs" 18304;
	setAttr ".tgi[0].ni[100].x" 3571.428466796875;
	setAttr ".tgi[0].ni[100].y" -2258.571533203125;
	setAttr ".tgi[0].ni[100].nvs" 18304;
	setAttr ".tgi[0].ni[101].x" 4830;
	setAttr ".tgi[0].ni[101].y" -3481.428466796875;
	setAttr ".tgi[0].ni[101].nvs" 18304;
	setAttr ".tgi[0].ni[102].x" 4830;
	setAttr ".tgi[0].ni[102].y" -4698.5712890625;
	setAttr ".tgi[0].ni[102].nvs" 18304;
	setAttr ".tgi[0].ni[103].x" -522.85711669921875;
	setAttr ".tgi[0].ni[103].y" 3504.28564453125;
	setAttr ".tgi[0].ni[103].nvs" 18304;
	setAttr ".tgi[0].ni[104].x" 4830;
	setAttr ".tgi[0].ni[104].y" -4495.71435546875;
	setAttr ".tgi[0].ni[104].nvs" 18304;
	setAttr ".tgi[0].ni[105].x" 4830;
	setAttr ".tgi[0].ni[105].y" -4292.85693359375;
	setAttr ".tgi[0].ni[105].nvs" 18304;
	setAttr ".tgi[0].ni[106].x" 4830;
	setAttr ".tgi[0].ni[106].y" -3278.571533203125;
	setAttr ".tgi[0].ni[106].nvs" 18304;
	setAttr ".tgi[0].ni[107].x" 4830;
	setAttr ".tgi[0].ni[107].y" -4597.14306640625;
	setAttr ".tgi[0].ni[107].nvs" 18304;
	setAttr ".tgi[0].ni[108].x" 3892.857177734375;
	setAttr ".tgi[0].ni[108].y" -2944.28564453125;
	setAttr ".tgi[0].ni[108].nvs" 18304;
	setAttr ".tgi[0].ni[109].x" 4205.71435546875;
	setAttr ".tgi[0].ni[109].y" -3667.142822265625;
	setAttr ".tgi[0].ni[109].nvs" 18304;
	setAttr ".tgi[0].ni[110].x" 4830;
	setAttr ".tgi[0].ni[110].y" -3582.857177734375;
	setAttr ".tgi[0].ni[110].nvs" 18304;
	setAttr ".tgi[0].ni[111].x" 4830;
	setAttr ".tgi[0].ni[111].y" -3684.28564453125;
	setAttr ".tgi[0].ni[111].nvs" 18304;
	setAttr ".tgi[0].ni[112].x" 4522.85693359375;
	setAttr ".tgi[0].ni[112].y" -4760;
	setAttr ".tgi[0].ni[112].nvs" 18304;
	setAttr ".tgi[0].ni[113].x" 4830;
	setAttr ".tgi[0].ni[113].y" -3380;
	setAttr ".tgi[0].ni[113].nvs" 18304;
	setAttr ".tgi[0].ni[114].x" -945.71429443359375;
	setAttr ".tgi[0].ni[114].y" 3461.428466796875;
	setAttr ".tgi[0].ni[114].nvs" 18304;
	setAttr ".tgi[0].ni[115].x" 4830;
	setAttr ".tgi[0].ni[115].y" -4394.28564453125;
	setAttr ".tgi[0].ni[115].nvs" 18304;
	setAttr ".tgi[0].ni[116].x" -1967.142822265625;
	setAttr ".tgi[0].ni[116].y" 2981.428466796875;
	setAttr ".tgi[0].ni[116].nvs" 18304;
	setAttr ".tgi[0].ni[117].x" 4830;
	setAttr ".tgi[0].ni[117].y" -4800;
	setAttr ".tgi[0].ni[117].nvs" 18304;
	setAttr ".tgi[0].ni[118].x" 4830;
	setAttr ".tgi[0].ni[118].y" -4901.4287109375;
	setAttr ".tgi[0].ni[118].nvs" 18304;
	setAttr ".tgi[0].ni[119].x" 4830;
	setAttr ".tgi[0].ni[119].y" -4191.4287109375;
	setAttr ".tgi[0].ni[119].nvs" 18304;
	setAttr ".tgi[0].ni[120].x" 4830;
	setAttr ".tgi[0].ni[120].y" -4090;
	setAttr ".tgi[0].ni[120].nvs" 18304;
	setAttr ".tgi[0].ni[121].x" -3925.71435546875;
	setAttr ".tgi[0].ni[121].y" 4094.28564453125;
	setAttr ".tgi[0].ni[121].nvs" 18304;
	setAttr ".tgi[0].ni[122].x" 192.85714721679688;
	setAttr ".tgi[0].ni[122].y" 1415.7142333984375;
	setAttr ".tgi[0].ni[122].nvs" 18304;
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
	setAttr -s 6 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
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
connectAttr "Joint_Disp.di" "Limb003_Joint000_M_JNT.do";
connectAttr "Limb003_Limb_M_NODE.joints" "Limb003_Joint000_M_JNT.limb";
connectAttr "Limb003_Joint000_M_JNT_parentConstraint1.ctx" "Limb003_Joint000_M_JNT.tx"
		;
connectAttr "Limb003_Joint000_M_JNT_parentConstraint1.cty" "Limb003_Joint000_M_JNT.ty"
		;
connectAttr "Limb003_Joint000_M_JNT_parentConstraint1.ctz" "Limb003_Joint000_M_JNT.tz"
		;
connectAttr "Limb003_Joint000_M_JNT_parentConstraint1.crx" "Limb003_Joint000_M_JNT.rx"
		;
connectAttr "Limb003_Joint000_M_JNT_parentConstraint1.cry" "Limb003_Joint000_M_JNT.ry"
		;
connectAttr "Limb003_Joint000_M_JNT_parentConstraint1.crz" "Limb003_Joint000_M_JNT.rz"
		;
connectAttr "Limb003_Joint000_M_JNT.s" "Limb003_Joint001_M_JNT.is";
connectAttr "Joint_Disp.di" "Limb003_Joint001_M_JNT.do";
connectAttr "Limb003_Limb_M_NODE.joints" "Limb003_Joint001_M_JNT.limb";
connectAttr "Limb003_Joint001_M_JNT_parentConstraint1.ctx" "Limb003_Joint001_M_JNT.tx"
		;
connectAttr "Limb003_Joint001_M_JNT_parentConstraint1.cty" "Limb003_Joint001_M_JNT.ty"
		;
connectAttr "Limb003_Joint001_M_JNT_parentConstraint1.ctz" "Limb003_Joint001_M_JNT.tz"
		;
connectAttr "Limb003_Joint001_M_JNT_parentConstraint1.crx" "Limb003_Joint001_M_JNT.rx"
		;
connectAttr "Limb003_Joint001_M_JNT_parentConstraint1.cry" "Limb003_Joint001_M_JNT.ry"
		;
connectAttr "Limb003_Joint001_M_JNT_parentConstraint1.crz" "Limb003_Joint001_M_JNT.rz"
		;
connectAttr "Limb003_Joint001_M_JNT.s" "Limb003_Joint002_M_JNT.is";
connectAttr "Joint_Disp.di" "Limb003_Joint002_M_JNT.do";
connectAttr "Limb003_Limb_M_NODE.joints" "Limb003_Joint002_M_JNT.limb";
connectAttr "Limb003_Joint002_M_JNT_parentConstraint1.ctx" "Limb003_Joint002_M_JNT.tx"
		;
connectAttr "Limb003_Joint002_M_JNT_parentConstraint1.cty" "Limb003_Joint002_M_JNT.ty"
		;
connectAttr "Limb003_Joint002_M_JNT_parentConstraint1.ctz" "Limb003_Joint002_M_JNT.tz"
		;
connectAttr "Limb003_Joint002_M_JNT_parentConstraint1.crx" "Limb003_Joint002_M_JNT.rx"
		;
connectAttr "Limb003_Joint002_M_JNT_parentConstraint1.cry" "Limb003_Joint002_M_JNT.ry"
		;
connectAttr "Limb003_Joint002_M_JNT_parentConstraint1.crz" "Limb003_Joint002_M_JNT.rz"
		;
connectAttr "Limb003_Joint002_M_JNT.s" "Limb001_Joint000_M_JNT.is";
connectAttr "Joint_Disp.di" "Limb001_Joint000_M_JNT.do";
connectAttr "Limb001_Limb_M_NODE.joints" "Limb001_Joint000_M_JNT.limb";
connectAttr "Limb001_Joint000_M_JNT_parentConstraint1.ctx" "Limb001_Joint000_M_JNT.tx"
		;
connectAttr "Limb001_Joint000_M_JNT_parentConstraint1.cty" "Limb001_Joint000_M_JNT.ty"
		;
connectAttr "Limb001_Joint000_M_JNT_parentConstraint1.ctz" "Limb001_Joint000_M_JNT.tz"
		;
connectAttr "Limb001_Joint000_M_JNT_parentConstraint1.crx" "Limb001_Joint000_M_JNT.rx"
		;
connectAttr "Limb001_Joint000_M_JNT_parentConstraint1.cry" "Limb001_Joint000_M_JNT.ry"
		;
connectAttr "Limb001_Joint000_M_JNT_parentConstraint1.crz" "Limb001_Joint000_M_JNT.rz"
		;
connectAttr "Limb001_Joint000_M_JNT.s" "Limb001_Joint001_M_JNT.is";
connectAttr "Joint_Disp.di" "Limb001_Joint001_M_JNT.do";
connectAttr "Limb001_Limb_M_NODE.joints" "Limb001_Joint001_M_JNT.limb";
connectAttr "Limb001_Joint001_M_JNT_parentConstraint1.ctx" "Limb001_Joint001_M_JNT.tx"
		;
connectAttr "Limb001_Joint001_M_JNT_parentConstraint1.cty" "Limb001_Joint001_M_JNT.ty"
		;
connectAttr "Limb001_Joint001_M_JNT_parentConstraint1.ctz" "Limb001_Joint001_M_JNT.tz"
		;
connectAttr "Limb001_Joint001_M_JNT_parentConstraint1.crx" "Limb001_Joint001_M_JNT.rx"
		;
connectAttr "Limb001_Joint001_M_JNT_parentConstraint1.cry" "Limb001_Joint001_M_JNT.ry"
		;
connectAttr "Limb001_Joint001_M_JNT_parentConstraint1.crz" "Limb001_Joint001_M_JNT.rz"
		;
connectAttr "Limb001_Joint001_M_JNT.s" "Limb001_Joint002_M_JNT.is";
connectAttr "Joint_Disp.di" "Limb001_Joint002_M_JNT.do";
connectAttr "Limb001_Limb_M_NODE.joints" "Limb001_Joint002_M_JNT.limb";
connectAttr "Limb001_Joint002_M_JNT_parentConstraint1.ctx" "Limb001_Joint002_M_JNT.tx"
		;
connectAttr "Limb001_Joint002_M_JNT_parentConstraint1.cty" "Limb001_Joint002_M_JNT.ty"
		;
connectAttr "Limb001_Joint002_M_JNT_parentConstraint1.ctz" "Limb001_Joint002_M_JNT.tz"
		;
connectAttr "Limb001_Joint002_M_JNT_parentConstraint1.crx" "Limb001_Joint002_M_JNT.rx"
		;
connectAttr "Limb001_Joint002_M_JNT_parentConstraint1.cry" "Limb001_Joint002_M_JNT.ry"
		;
connectAttr "Limb001_Joint002_M_JNT_parentConstraint1.crz" "Limb001_Joint002_M_JNT.rz"
		;
connectAttr "Limb001_Joint002_M_JNT.ro" "Limb001_Joint002_M_JNT_parentConstraint1.cro"
		;
connectAttr "Limb001_Joint002_M_JNT.pim" "Limb001_Joint002_M_JNT_parentConstraint1.cpim"
		;
connectAttr "Limb001_Joint002_M_JNT.rp" "Limb001_Joint002_M_JNT_parentConstraint1.crp"
		;
connectAttr "Limb001_Joint002_M_JNT.rpt" "Limb001_Joint002_M_JNT_parentConstraint1.crt"
		;
connectAttr "Limb001_Joint002_M_JNT.jo" "Limb001_Joint002_M_JNT_parentConstraint1.cjo"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.t" "Limb001_Joint002_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.rp" "Limb001_Joint002_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.rpt" "Limb001_Joint002_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.r" "Limb001_Joint002_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.ro" "Limb001_Joint002_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.s" "Limb001_Joint002_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.pm" "Limb001_Joint002_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Limb001_Joint002_M_JNT_parentConstraint1.w0" "Limb001_Joint002_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Limb001_Joint001_M_JNT.ro" "Limb001_Joint001_M_JNT_parentConstraint1.cro"
		;
connectAttr "Limb001_Joint001_M_JNT.pim" "Limb001_Joint001_M_JNT_parentConstraint1.cpim"
		;
connectAttr "Limb001_Joint001_M_JNT.rp" "Limb001_Joint001_M_JNT_parentConstraint1.crp"
		;
connectAttr "Limb001_Joint001_M_JNT.rpt" "Limb001_Joint001_M_JNT_parentConstraint1.crt"
		;
connectAttr "Limb001_Joint001_M_JNT.jo" "Limb001_Joint001_M_JNT_parentConstraint1.cjo"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.t" "Limb001_Joint001_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.rp" "Limb001_Joint001_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.rpt" "Limb001_Joint001_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.r" "Limb001_Joint001_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.ro" "Limb001_Joint001_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.s" "Limb001_Joint001_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.pm" "Limb001_Joint001_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Limb001_Joint001_M_JNT_parentConstraint1.w0" "Limb001_Joint001_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Limb001_Joint000_M_JNT.ro" "Limb001_Joint000_M_JNT_parentConstraint1.cro"
		;
connectAttr "Limb001_Joint000_M_JNT.pim" "Limb001_Joint000_M_JNT_parentConstraint1.cpim"
		;
connectAttr "Limb001_Joint000_M_JNT.rp" "Limb001_Joint000_M_JNT_parentConstraint1.crp"
		;
connectAttr "Limb001_Joint000_M_JNT.rpt" "Limb001_Joint000_M_JNT_parentConstraint1.crt"
		;
connectAttr "Limb001_Joint000_M_JNT.jo" "Limb001_Joint000_M_JNT_parentConstraint1.cjo"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.t" "Limb001_Joint000_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.rp" "Limb001_Joint000_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.rpt" "Limb001_Joint000_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.r" "Limb001_Joint000_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.ro" "Limb001_Joint000_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.s" "Limb001_Joint000_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.pm" "Limb001_Joint000_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Limb001_Joint000_M_JNT_parentConstraint1.w0" "Limb001_Joint000_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Limb003_Joint002_M_JNT.s" "Limb002_Joint000_M_JNT.is";
connectAttr "Joint_Disp.di" "Limb002_Joint000_M_JNT.do";
connectAttr "Limb002_Limb_M_NODE.joints" "Limb002_Joint000_M_JNT.limb";
connectAttr "Limb002_Joint000_M_JNT_parentConstraint1.ctx" "Limb002_Joint000_M_JNT.tx"
		;
connectAttr "Limb002_Joint000_M_JNT_parentConstraint1.cty" "Limb002_Joint000_M_JNT.ty"
		;
connectAttr "Limb002_Joint000_M_JNT_parentConstraint1.ctz" "Limb002_Joint000_M_JNT.tz"
		;
connectAttr "Limb002_Joint000_M_JNT_parentConstraint1.crx" "Limb002_Joint000_M_JNT.rx"
		;
connectAttr "Limb002_Joint000_M_JNT_parentConstraint1.cry" "Limb002_Joint000_M_JNT.ry"
		;
connectAttr "Limb002_Joint000_M_JNT_parentConstraint1.crz" "Limb002_Joint000_M_JNT.rz"
		;
connectAttr "Limb002_Joint000_M_JNT.s" "Limb002_Joint001_M_JNT.is";
connectAttr "Joint_Disp.di" "Limb002_Joint001_M_JNT.do";
connectAttr "Limb002_Limb_M_NODE.joints" "Limb002_Joint001_M_JNT.limb";
connectAttr "Limb002_Joint001_M_JNT_parentConstraint1.ctx" "Limb002_Joint001_M_JNT.tx"
		;
connectAttr "Limb002_Joint001_M_JNT_parentConstraint1.cty" "Limb002_Joint001_M_JNT.ty"
		;
connectAttr "Limb002_Joint001_M_JNT_parentConstraint1.ctz" "Limb002_Joint001_M_JNT.tz"
		;
connectAttr "Limb002_Joint001_M_JNT_parentConstraint1.crx" "Limb002_Joint001_M_JNT.rx"
		;
connectAttr "Limb002_Joint001_M_JNT_parentConstraint1.cry" "Limb002_Joint001_M_JNT.ry"
		;
connectAttr "Limb002_Joint001_M_JNT_parentConstraint1.crz" "Limb002_Joint001_M_JNT.rz"
		;
connectAttr "Limb002_Joint001_M_JNT.s" "Limb002_Joint002_M_JNT.is";
connectAttr "Joint_Disp.di" "Limb002_Joint002_M_JNT.do";
connectAttr "Limb002_Limb_M_NODE.joints" "Limb002_Joint002_M_JNT.limb";
connectAttr "Limb002_Joint002_M_JNT_parentConstraint1.ctx" "Limb002_Joint002_M_JNT.tx"
		;
connectAttr "Limb002_Joint002_M_JNT_parentConstraint1.cty" "Limb002_Joint002_M_JNT.ty"
		;
connectAttr "Limb002_Joint002_M_JNT_parentConstraint1.ctz" "Limb002_Joint002_M_JNT.tz"
		;
connectAttr "Limb002_Joint002_M_JNT_parentConstraint1.crx" "Limb002_Joint002_M_JNT.rx"
		;
connectAttr "Limb002_Joint002_M_JNT_parentConstraint1.cry" "Limb002_Joint002_M_JNT.ry"
		;
connectAttr "Limb002_Joint002_M_JNT_parentConstraint1.crz" "Limb002_Joint002_M_JNT.rz"
		;
connectAttr "Limb002_Joint002_M_JNT.ro" "Limb002_Joint002_M_JNT_parentConstraint1.cro"
		;
connectAttr "Limb002_Joint002_M_JNT.pim" "Limb002_Joint002_M_JNT_parentConstraint1.cpim"
		;
connectAttr "Limb002_Joint002_M_JNT.rp" "Limb002_Joint002_M_JNT_parentConstraint1.crp"
		;
connectAttr "Limb002_Joint002_M_JNT.rpt" "Limb002_Joint002_M_JNT_parentConstraint1.crt"
		;
connectAttr "Limb002_Joint002_M_JNT.jo" "Limb002_Joint002_M_JNT_parentConstraint1.cjo"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.t" "Limb002_Joint002_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.rp" "Limb002_Joint002_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.rpt" "Limb002_Joint002_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.r" "Limb002_Joint002_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.ro" "Limb002_Joint002_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.s" "Limb002_Joint002_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.pm" "Limb002_Joint002_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Limb002_Joint002_M_JNT_parentConstraint1.w0" "Limb002_Joint002_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Limb002_Joint001_M_JNT.ro" "Limb002_Joint001_M_JNT_parentConstraint1.cro"
		;
connectAttr "Limb002_Joint001_M_JNT.pim" "Limb002_Joint001_M_JNT_parentConstraint1.cpim"
		;
connectAttr "Limb002_Joint001_M_JNT.rp" "Limb002_Joint001_M_JNT_parentConstraint1.crp"
		;
connectAttr "Limb002_Joint001_M_JNT.rpt" "Limb002_Joint001_M_JNT_parentConstraint1.crt"
		;
connectAttr "Limb002_Joint001_M_JNT.jo" "Limb002_Joint001_M_JNT_parentConstraint1.cjo"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.t" "Limb002_Joint001_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.rp" "Limb002_Joint001_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.rpt" "Limb002_Joint001_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.r" "Limb002_Joint001_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.ro" "Limb002_Joint001_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.s" "Limb002_Joint001_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.pm" "Limb002_Joint001_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Limb002_Joint001_M_JNT_parentConstraint1.w0" "Limb002_Joint001_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Limb002_Joint000_M_JNT.ro" "Limb002_Joint000_M_JNT_parentConstraint1.cro"
		;
connectAttr "Limb002_Joint000_M_JNT.pim" "Limb002_Joint000_M_JNT_parentConstraint1.cpim"
		;
connectAttr "Limb002_Joint000_M_JNT.rp" "Limb002_Joint000_M_JNT_parentConstraint1.crp"
		;
connectAttr "Limb002_Joint000_M_JNT.rpt" "Limb002_Joint000_M_JNT_parentConstraint1.crt"
		;
connectAttr "Limb002_Joint000_M_JNT.jo" "Limb002_Joint000_M_JNT_parentConstraint1.cjo"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.t" "Limb002_Joint000_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.rp" "Limb002_Joint000_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.rpt" "Limb002_Joint000_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.r" "Limb002_Joint000_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.ro" "Limb002_Joint000_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.s" "Limb002_Joint000_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.pm" "Limb002_Joint000_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Limb002_Joint000_M_JNT_parentConstraint1.w0" "Limb002_Joint000_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Limb003_Joint002_M_JNT.ro" "Limb003_Joint002_M_JNT_parentConstraint1.cro"
		;
connectAttr "Limb003_Joint002_M_JNT.pim" "Limb003_Joint002_M_JNT_parentConstraint1.cpim"
		;
connectAttr "Limb003_Joint002_M_JNT.rp" "Limb003_Joint002_M_JNT_parentConstraint1.crp"
		;
connectAttr "Limb003_Joint002_M_JNT.rpt" "Limb003_Joint002_M_JNT_parentConstraint1.crt"
		;
connectAttr "Limb003_Joint002_M_JNT.jo" "Limb003_Joint002_M_JNT_parentConstraint1.cjo"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.t" "Limb003_Joint002_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.rp" "Limb003_Joint002_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.rpt" "Limb003_Joint002_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.r" "Limb003_Joint002_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.ro" "Limb003_Joint002_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.s" "Limb003_Joint002_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.pm" "Limb003_Joint002_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Limb003_Joint002_M_JNT_parentConstraint1.w0" "Limb003_Joint002_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Limb003_Joint001_M_JNT.ro" "Limb003_Joint001_M_JNT_parentConstraint1.cro"
		;
connectAttr "Limb003_Joint001_M_JNT.pim" "Limb003_Joint001_M_JNT_parentConstraint1.cpim"
		;
connectAttr "Limb003_Joint001_M_JNT.rp" "Limb003_Joint001_M_JNT_parentConstraint1.crp"
		;
connectAttr "Limb003_Joint001_M_JNT.rpt" "Limb003_Joint001_M_JNT_parentConstraint1.crt"
		;
connectAttr "Limb003_Joint001_M_JNT.jo" "Limb003_Joint001_M_JNT_parentConstraint1.cjo"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.t" "Limb003_Joint001_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.rp" "Limb003_Joint001_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.rpt" "Limb003_Joint001_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.r" "Limb003_Joint001_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.ro" "Limb003_Joint001_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.s" "Limb003_Joint001_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.pm" "Limb003_Joint001_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Limb003_Joint001_M_JNT_parentConstraint1.w0" "Limb003_Joint001_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Limb003_Joint000_M_JNT.ro" "Limb003_Joint000_M_JNT_parentConstraint1.cro"
		;
connectAttr "Limb003_Joint000_M_JNT.pim" "Limb003_Joint000_M_JNT_parentConstraint1.cpim"
		;
connectAttr "Limb003_Joint000_M_JNT.rp" "Limb003_Joint000_M_JNT_parentConstraint1.crp"
		;
connectAttr "Limb003_Joint000_M_JNT.rpt" "Limb003_Joint000_M_JNT_parentConstraint1.crt"
		;
connectAttr "Limb003_Joint000_M_JNT.jo" "Limb003_Joint000_M_JNT_parentConstraint1.cjo"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.t" "Limb003_Joint000_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.rp" "Limb003_Joint000_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.rpt" "Limb003_Joint000_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.r" "Limb003_Joint000_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.ro" "Limb003_Joint000_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.s" "Limb003_Joint000_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.pm" "Limb003_Joint000_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Limb003_Joint000_M_JNT_parentConstraint1.w0" "Limb003_Joint000_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "TEMP_RigRoot.limbsParentGroup" "LIMBS.rigRoot";
connectAttr "TEMP_RigRoot.limbs" "Limb001_Limb_M_NODE.rigRoot";
connectAttr "Limb003_Limb_M_NODE.limbChildren" "Limb001_Limb_M_NODE.limbParent";
connectAttr "Limb001_Joint000_M_JNT.group" "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0.joint"
		;
connectAttr "Limb001_Limb_M_NODE.jointGroups" "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0.limb"
		;
connectAttr "Limb001_Limb_M_NODE.usedGroups" "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0.used"
		;
connectAttr "Joint000_Joint_M_GRP0_parentConstraint1.ctx" "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0.tx"
		;
connectAttr "Joint000_Joint_M_GRP0_parentConstraint1.cty" "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0.ty"
		;
connectAttr "Joint000_Joint_M_GRP0_parentConstraint1.ctz" "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0.tz"
		;
connectAttr "Joint000_Joint_M_GRP0_parentConstraint1.crx" "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0.rx"
		;
connectAttr "Joint000_Joint_M_GRP0_parentConstraint1.cry" "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0.ry"
		;
connectAttr "Joint000_Joint_M_GRP0_parentConstraint1.crz" "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0.rz"
		;
connectAttr "Control_Disp.di" "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.do"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0.control" "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.group"
		;
connectAttr "Limb001_Joint001_M_JNT.group" "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1.joint"
		;
connectAttr "Limb001_Limb_M_NODE.jointGroups" "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1.limb"
		;
connectAttr "Limb001_Limb_M_NODE.usedGroups" "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1.used"
		;
connectAttr "Control_Disp.di" "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.do"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1.control" "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.group"
		;
connectAttr "Limb001_Joint002_M_JNT.group" "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2.joint"
		;
connectAttr "Limb001_Limb_M_NODE.jointGroups" "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2.limb"
		;
connectAttr "Limb001_Limb_M_NODE.usedGroups" "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2.used"
		;
connectAttr "Control_Disp.di" "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.do"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2.control" "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.group"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0.ro" "Joint000_Joint_M_GRP0_parentConstraint1.cro"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0.pim" "Joint000_Joint_M_GRP0_parentConstraint1.cpim"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0.rp" "Joint000_Joint_M_GRP0_parentConstraint1.crp"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0.rpt" "Joint000_Joint_M_GRP0_parentConstraint1.crt"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.t" "Joint000_Joint_M_GRP0_parentConstraint1.tg[0].tt"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.rp" "Joint000_Joint_M_GRP0_parentConstraint1.tg[0].trp"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.rpt" "Joint000_Joint_M_GRP0_parentConstraint1.tg[0].trt"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.r" "Joint000_Joint_M_GRP0_parentConstraint1.tg[0].tr"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.ro" "Joint000_Joint_M_GRP0_parentConstraint1.tg[0].tro"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.s" "Joint000_Joint_M_GRP0_parentConstraint1.tg[0].ts"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.pm" "Joint000_Joint_M_GRP0_parentConstraint1.tg[0].tpm"
		;
connectAttr "Joint000_Joint_M_GRP0_parentConstraint1.w0" "Joint000_Joint_M_GRP0_parentConstraint1.tg[0].tw"
		;
connectAttr "TEMP_RigRoot.limbs" "Limb002_Limb_M_NODE.rigRoot";
connectAttr "Limb003_Limb_M_NODE.limbChildren" "Limb002_Limb_M_NODE.limbParent";
connectAttr "Limb002_Joint000_M_JNT.group" "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0.joint"
		;
connectAttr "Limb002_Limb_M_NODE.jointGroups" "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0.limb"
		;
connectAttr "Limb002_Limb_M_NODE.usedGroups" "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0.used"
		;
connectAttr "Joint000_Joint_M_GRP0_parentConstraint2.ctx" "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0.tx"
		;
connectAttr "Joint000_Joint_M_GRP0_parentConstraint2.cty" "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0.ty"
		;
connectAttr "Joint000_Joint_M_GRP0_parentConstraint2.ctz" "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0.tz"
		;
connectAttr "Joint000_Joint_M_GRP0_parentConstraint2.crx" "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0.rx"
		;
connectAttr "Joint000_Joint_M_GRP0_parentConstraint2.cry" "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0.ry"
		;
connectAttr "Joint000_Joint_M_GRP0_parentConstraint2.crz" "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0.rz"
		;
connectAttr "Control_Disp.di" "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.do"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0.control" "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.group"
		;
connectAttr "Limb002_Joint001_M_JNT.group" "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1.joint"
		;
connectAttr "Limb002_Limb_M_NODE.jointGroups" "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1.limb"
		;
connectAttr "Limb002_Limb_M_NODE.usedGroups" "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1.used"
		;
connectAttr "Control_Disp.di" "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.do"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1.control" "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.group"
		;
connectAttr "Limb002_Joint002_M_JNT.group" "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2.joint"
		;
connectAttr "Limb002_Limb_M_NODE.jointGroups" "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2.limb"
		;
connectAttr "Limb002_Limb_M_NODE.usedGroups" "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2.used"
		;
connectAttr "Control_Disp.di" "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.do"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2.control" "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.group"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0.ro" "Joint000_Joint_M_GRP0_parentConstraint2.cro"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0.pim" "Joint000_Joint_M_GRP0_parentConstraint2.cpim"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0.rp" "Joint000_Joint_M_GRP0_parentConstraint2.crp"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0.rpt" "Joint000_Joint_M_GRP0_parentConstraint2.crt"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.t" "Joint000_Joint_M_GRP0_parentConstraint2.tg[0].tt"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.rp" "Joint000_Joint_M_GRP0_parentConstraint2.tg[0].trp"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.rpt" "Joint000_Joint_M_GRP0_parentConstraint2.tg[0].trt"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.r" "Joint000_Joint_M_GRP0_parentConstraint2.tg[0].tr"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.ro" "Joint000_Joint_M_GRP0_parentConstraint2.tg[0].tro"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.s" "Joint000_Joint_M_GRP0_parentConstraint2.tg[0].ts"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.pm" "Joint000_Joint_M_GRP0_parentConstraint2.tg[0].tpm"
		;
connectAttr "Joint000_Joint_M_GRP0_parentConstraint2.w0" "Joint000_Joint_M_GRP0_parentConstraint2.tg[0].tw"
		;
connectAttr "TEMP_RigRoot.limbs" "Limb003_Limb_M_NODE.rigRoot";
connectAttr "Limb003_Joint000_M_JNT.group" "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0.joint"
		;
connectAttr "Limb003_Limb_M_NODE.jointGroups" "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0.limb"
		;
connectAttr "Limb003_Limb_M_NODE.usedGroups" "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0.used"
		;
connectAttr "Control_Disp.di" "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.do"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0.control" "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.group"
		;
connectAttr "Limb003_Joint001_M_JNT.group" "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1.joint"
		;
connectAttr "Limb003_Limb_M_NODE.jointGroups" "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1.limb"
		;
connectAttr "Limb003_Limb_M_NODE.usedGroups" "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1.used"
		;
connectAttr "Control_Disp.di" "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.do"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1.control" "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.group"
		;
connectAttr "Limb003_Joint002_M_JNT.group" "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2.joint"
		;
connectAttr "Limb003_Limb_M_NODE.jointGroups" "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2.limb"
		;
connectAttr "Limb003_Limb_M_NODE.usedGroups" "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2.used"
		;
connectAttr "Control_Disp.di" "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.do"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2.control" "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.group"
		;
connectAttr "TEMP_RigRoot.meshesParentGroup" "MESHES.rigRoot";
connectAttr "skinCluster1GroupId.id" "pCylinderShape1.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "pCylinderShape1.iog.og[0].gco";
connectAttr "groupId2.id" "pCylinderShape1.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "pCylinderShape1.iog.og[1].gco";
connectAttr "polyColorPerVertex1.out" "pCylinderShape1.i";
connectAttr "Meshes_Disp.di" "pCylinderShape1.do";
connectAttr "TEMP_RigRoot.meshes" "pCylinderShape1.rigRoot";
connectAttr "tweak1.vl[0].vt[0]" "pCylinderShape1.twl";
connectAttr "skinCluster1.pfrsMeshes" "pCylinderShape1.pfrsSkinCluster";
connectAttr "polyExtrudeFace6.out" "pCylinderShape1Orig.i";
connectAttr "polyExtrudeFace6.out" "pCylinderShape2.i";
connectAttr "Meshes_Disp.di" "pCylinderShape2.do";
connectAttr "pCylinderShape1.backupMesh" "pCylinderShape2.backupMesh";
connectAttr "TEMP_RigRoot.controlTemplates" "CONTROL_SHAPE_TEMPLATES.rigRoot";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "LControlsMaterialSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "MControlsMaterialSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "RControlsMaterialSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "LControlsMaterialSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "MControlsMaterialSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "RControlsMaterialSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCylinder1.out" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace3.out" "polyExtrudeFace4.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyTweak2.out" "polyExtrudeFace5.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak2.ip";
connectAttr "polyExtrudeFace5.out" "polyExtrudeFace6.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace6.mp";
connectAttr "layerManager.dli[1]" "Control_Disp.id";
connectAttr "layerManager.dli[2]" "Joint_Disp.id";
connectAttr "layerManager.dli[3]" "Meshes_Disp.id";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "TempMaterial.msg" "materialInfo1.m";
connectAttr "TempMaterial.oc" "lambert2SG.ss";
connectAttr "Cylinder_PolyShape.iog" "lambert2SG.dsm" -na;
connectAttr "Cube_PolyShape.iog" "lambert2SG.dsm" -na;
connectAttr "Sphere_PolyShape.iog" "lambert2SG.dsm" -na;
connectAttr "LControlsMaterial.oc" "LControlsMaterialSG.ss";
connectAttr "TEMP_RigRoot.controlMtrL" "LControlsMaterialSG.rigRoot";
connectAttr "LControlsMaterialSG.msg" "materialInfo2.sg";
connectAttr "LControlsMaterial.msg" "materialInfo2.m";
connectAttr "LControlsMaterial.msg" "materialInfo2.t" -na;
connectAttr "MControlsMaterial.oc" "MControlsMaterialSG.ss";
connectAttr "TEMP_RigRoot.controlMtrM" "MControlsMaterialSG.rigRoot";
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint001_Joint_M_CTR1Shape.iog" "MControlsMaterialSG.dsm"
		 -na;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint000_Joint_M_CTR0Shape.iog" "MControlsMaterialSG.dsm"
		 -na;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2|Joint002_Joint_M_CTR2Shape.iog" "MControlsMaterialSG.dsm"
		 -na;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint001_Joint_M_CTR1Shape.iog" "MControlsMaterialSG.dsm"
		 -na;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint000_Joint_M_CTR0Shape.iog" "MControlsMaterialSG.dsm"
		 -na;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2|Joint002_Joint_M_CTR2Shape.iog" "MControlsMaterialSG.dsm"
		 -na;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint001_Joint_M_CTR1Shape.iog" "MControlsMaterialSG.dsm"
		 -na;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint000_Joint_M_CTR0Shape.iog" "MControlsMaterialSG.dsm"
		 -na;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2|Joint002_Joint_M_CTR2Shape.iog" "MControlsMaterialSG.dsm"
		 -na;
connectAttr "MControlsMaterialSG.msg" "materialInfo3.sg";
connectAttr "MControlsMaterial.msg" "materialInfo3.m";
connectAttr "MControlsMaterial.msg" "materialInfo3.t" -na;
connectAttr "RControlsMaterial.oc" "RControlsMaterialSG.ss";
connectAttr "TEMP_RigRoot.controlMtrR" "RControlsMaterialSG.rigRoot";
connectAttr "RControlsMaterialSG.msg" "materialInfo4.sg";
connectAttr "RControlsMaterial.msg" "materialInfo4.m";
connectAttr "RControlsMaterial.msg" "materialInfo4.t" -na;
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "Limb003_Joint000_M_JNT.wm" "skinCluster1.ma[0]";
connectAttr "Limb003_Joint001_M_JNT.wm" "skinCluster1.ma[1]";
connectAttr "Limb003_Joint002_M_JNT.wm" "skinCluster1.ma[2]";
connectAttr "Limb001_Joint000_M_JNT.wm" "skinCluster1.ma[3]";
connectAttr "Limb001_Joint001_M_JNT.wm" "skinCluster1.ma[4]";
connectAttr "Limb001_Joint002_M_JNT.wm" "skinCluster1.ma[5]";
connectAttr "Limb002_Joint000_M_JNT.wm" "skinCluster1.ma[6]";
connectAttr "Limb002_Joint001_M_JNT.wm" "skinCluster1.ma[7]";
connectAttr "Limb002_Joint002_M_JNT.wm" "skinCluster1.ma[8]";
connectAttr "Limb003_Joint000_M_JNT.liw" "skinCluster1.lw[0]";
connectAttr "Limb003_Joint001_M_JNT.liw" "skinCluster1.lw[1]";
connectAttr "Limb003_Joint002_M_JNT.liw" "skinCluster1.lw[2]";
connectAttr "Limb001_Joint000_M_JNT.liw" "skinCluster1.lw[3]";
connectAttr "Limb001_Joint001_M_JNT.liw" "skinCluster1.lw[4]";
connectAttr "Limb001_Joint002_M_JNT.liw" "skinCluster1.lw[5]";
connectAttr "Limb002_Joint000_M_JNT.liw" "skinCluster1.lw[6]";
connectAttr "Limb002_Joint001_M_JNT.liw" "skinCluster1.lw[7]";
connectAttr "Limb002_Joint002_M_JNT.liw" "skinCluster1.lw[8]";
connectAttr "Limb003_Joint000_M_JNT.obcc" "skinCluster1.ifcl[0]";
connectAttr "Limb003_Joint001_M_JNT.obcc" "skinCluster1.ifcl[1]";
connectAttr "Limb003_Joint002_M_JNT.obcc" "skinCluster1.ifcl[2]";
connectAttr "Limb001_Joint000_M_JNT.obcc" "skinCluster1.ifcl[3]";
connectAttr "Limb001_Joint001_M_JNT.obcc" "skinCluster1.ifcl[4]";
connectAttr "Limb001_Joint002_M_JNT.obcc" "skinCluster1.ifcl[5]";
connectAttr "Limb002_Joint000_M_JNT.obcc" "skinCluster1.ifcl[6]";
connectAttr "Limb002_Joint001_M_JNT.obcc" "skinCluster1.ifcl[7]";
connectAttr "Limb002_Joint002_M_JNT.obcc" "skinCluster1.ifcl[8]";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "pCylinderShape1.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "pCylinderShape1.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "pCylinderShape1Orig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "TEMP_RigRoot.msg" "bindPose1.m[0]";
connectAttr "JOINTS.msg" "bindPose1.m[1]";
connectAttr "Limb003_Joint000_M_JNT.msg" "bindPose1.m[2]";
connectAttr "Limb003_Joint001_M_JNT.msg" "bindPose1.m[3]";
connectAttr "Limb003_Joint002_M_JNT.msg" "bindPose1.m[4]";
connectAttr "Limb001_Joint000_M_JNT.msg" "bindPose1.m[5]";
connectAttr "Limb001_Joint001_M_JNT.msg" "bindPose1.m[6]";
connectAttr "Limb001_Joint002_M_JNT.msg" "bindPose1.m[7]";
connectAttr "Limb002_Joint000_M_JNT.msg" "bindPose1.m[8]";
connectAttr "Limb002_Joint001_M_JNT.msg" "bindPose1.m[9]";
connectAttr "Limb002_Joint002_M_JNT.msg" "bindPose1.m[10]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[4]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "Limb003_Joint000_M_JNT.bps" "bindPose1.wm[2]";
connectAttr "Limb003_Joint001_M_JNT.bps" "bindPose1.wm[3]";
connectAttr "Limb003_Joint002_M_JNT.bps" "bindPose1.wm[4]";
connectAttr "Limb001_Joint000_M_JNT.bps" "bindPose1.wm[5]";
connectAttr "Limb001_Joint001_M_JNT.bps" "bindPose1.wm[6]";
connectAttr "Limb001_Joint002_M_JNT.bps" "bindPose1.wm[7]";
connectAttr "Limb002_Joint000_M_JNT.bps" "bindPose1.wm[8]";
connectAttr "Limb002_Joint001_M_JNT.bps" "bindPose1.wm[9]";
connectAttr "Limb002_Joint002_M_JNT.bps" "bindPose1.wm[10]";
connectAttr "skinCluster1.og[0]" "polyColorPerVertex1.ip";
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.msg" "Joint001_Joint_M_CTR1_tag.act"
		;
connectAttr "controller1.prep" "Joint001_Joint_M_CTR1_tag.prep";
connectAttr "Joint001_Joint_M_CTR1_tag1.pare" "Joint001_Joint_M_CTR1_tag.child[0]"
		;
connectAttr "Joint000_Joint_M_CTR0_tag1.pare" "Joint001_Joint_M_CTR1_tag.child[1]"
		;
connectAttr "Joint002_Joint_M_CTR2_tag1.pare" "Joint001_Joint_M_CTR1_tag.child[2]"
		;
connectAttr "Joint001_Joint_M_CTR1_tag2.pare" "Joint001_Joint_M_CTR1_tag.child[3]"
		;
connectAttr "Joint000_Joint_M_CTR0_tag2.pare" "Joint001_Joint_M_CTR1_tag.child[4]"
		;
connectAttr "Joint002_Joint_M_CTR2_tag2.pare" "Joint001_Joint_M_CTR1_tag.child[5]"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.msg" "Joint000_Joint_M_CTR0_tag.act"
		;
connectAttr "controller1.prep" "Joint000_Joint_M_CTR0_tag.prep";
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.msg" "Joint002_Joint_M_CTR2_tag.act"
		;
connectAttr "controller1.prep" "Joint002_Joint_M_CTR2_tag.prep";
connectAttr "Joint001_Joint_M_CTR1_tag.pare" "controller1.child[0]";
connectAttr "Joint000_Joint_M_CTR0_tag.pare" "controller1.child[1]";
connectAttr "Joint002_Joint_M_CTR2_tag.pare" "controller1.child[2]";
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.msg" "Joint001_Joint_M_CTR1_tag1.act"
		;
connectAttr "Joint001_Joint_M_CTR1_tag.prep" "Joint001_Joint_M_CTR1_tag1.prep";
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.msg" "Joint000_Joint_M_CTR0_tag1.act"
		;
connectAttr "Joint001_Joint_M_CTR1_tag.prep" "Joint000_Joint_M_CTR0_tag1.prep";
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.msg" "Joint002_Joint_M_CTR2_tag1.act"
		;
connectAttr "Joint001_Joint_M_CTR1_tag.prep" "Joint002_Joint_M_CTR2_tag1.prep";
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.msg" "Joint001_Joint_M_CTR1_tag2.act"
		;
connectAttr "Joint001_Joint_M_CTR1_tag.prep" "Joint001_Joint_M_CTR1_tag2.prep";
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.msg" "Joint000_Joint_M_CTR0_tag2.act"
		;
connectAttr "Joint001_Joint_M_CTR1_tag.prep" "Joint000_Joint_M_CTR0_tag2.prep";
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.msg" "Joint002_Joint_M_CTR2_tag2.act"
		;
connectAttr "Joint001_Joint_M_CTR1_tag.prep" "Joint002_Joint_M_CTR2_tag2.prep";
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2|Joint002_Joint_M_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "JOINTS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "polyExtrudeFace4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "Cylinder_PolyShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "Circle_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "Limb002_Joint002_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2|Joint002_Joint_M_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "bindPose1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "MESHES.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn";
connectAttr "Limb003_Joint002_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "Limb002_Joint000_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "groupId2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn";
connectAttr "uiConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "materialInfo4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn";
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "Limb002_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "Limb002_Joint001_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "Control_Disp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn";
connectAttr "pCylinderShape2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "materialInfo2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn";
connectAttr "LControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "Limb001_Joint001_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "Limb003_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "skinCluster1GroupId.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "LIMBS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn";
connectAttr "polyCylinder1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn";
connectAttr "Meshes_Disp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn";
connectAttr "Diamond_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn";
connectAttr "Joint_Disp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn";
connectAttr "polyExtrudeFace6.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "polyExtrudeFace2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "Pin_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn";
connectAttr "Limb003_Joint001_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "polyExtrudeFace5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "Cylinder_Poly.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn";
connectAttr "polyTweak2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn";
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint001_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "polyTweak1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn";
connectAttr "skinCluster1Set.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "materialInfo1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn";
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint001_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn"
		;
connectAttr "pCylinder1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn";
connectAttr "Limb001_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint000_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "polyExtrudeFace1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "Limb001_Joint000_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "RControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "skinCluster1GroupParts.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "TempMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn";
connectAttr "BaseAnimation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn";
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "Sphere_Poly.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn";
connectAttr "Square_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint000_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "Square_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn";
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "tweakSet1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn";
connectAttr "sceneConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn"
		;
connectAttr "polyExtrudeFace3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "pCylinderShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "Sphere_PolyShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "pCylinderShape1Orig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "Limb001_Joint002_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn"
		;
connectAttr "Pin_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn";
connectAttr "skinCluster1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn";
connectAttr "MControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "Limb003_Joint000_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn"
		;
connectAttr "Diamond_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "Cube_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn";
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint001_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn"
		;
connectAttr "tweak1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn";
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "Cube_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn";
connectAttr "Circle_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "lambert2SG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn";
connectAttr "RControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "TEMP_RigRoot.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn";
connectAttr "materialInfo3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn";
connectAttr "Cube_PolyShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn";
connectAttr "LControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn"
		;
connectAttr "Cube_Poly.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn";
connectAttr "pCylinder2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn";
connectAttr "MControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb003_Limb_M_NODE|Joint000_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn"
		;
connectAttr "CONTROL_SHAPE_TEMPLATES.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb002_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint001_Joint_M_GRP1|Joint001_Joint_M_CTR1|Joint002_Joint_M_GRP2|Joint002_Joint_M_CTR2|Joint002_Joint_M_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn"
		;
connectAttr "|TEMP_RigRoot|LIMBS|Limb001_Limb_M_NODE|Joint000_Joint_M_GRP0|Joint000_Joint_M_CTR0|Joint000_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn"
		;
connectAttr "groupParts2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn";
connectAttr "Joint002_Joint_M_CTR2_tag1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn"
		;
connectAttr "Limb001_Joint002_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn"
		;
connectAttr "Limb002_Joint001_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn"
		;
connectAttr "Limb002_Joint000_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn"
		;
connectAttr "Joint002_Joint_M_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn"
		;
connectAttr "Joint001_Joint_M_CTR1_tag1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn"
		;
connectAttr "Limb002_Joint002_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn"
		;
connectAttr "Joint001_Joint_M_CTR1_tag2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn"
		;
connectAttr "Joint001_Joint_M_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn"
		;
connectAttr "Joint000_Joint_M_CTR0_tag2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn"
		;
connectAttr "Joint002_Joint_M_CTR2_tag2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn"
		;
connectAttr "controller1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn";
connectAttr "Joint000_Joint_M_CTR0_tag1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn"
		;
connectAttr "Limb001_Joint000_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn"
		;
connectAttr "Limb003_Joint001_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn"
		;
connectAttr "Joint000_Joint_M_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn"
		;
connectAttr "Limb003_Joint002_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn"
		;
connectAttr "Limb001_Joint001_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[118].dn"
		;
connectAttr "Joint000_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn"
		;
connectAttr "Joint000_Joint_M_GRP0_parentConstraint2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[120].dn"
		;
connectAttr "Limb003_Joint000_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn"
		;
connectAttr "polyColorPerVertex1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn"
		;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "LControlsMaterialSG.pa" ":renderPartition.st" -na;
connectAttr "MControlsMaterialSG.pa" ":renderPartition.st" -na;
connectAttr "RControlsMaterialSG.pa" ":renderPartition.st" -na;
connectAttr "TempMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "LControlsMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "MControlsMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "RControlsMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog" ":initialShadingGroup.dsm" -na;
// End of Simple_BUILT.ma
