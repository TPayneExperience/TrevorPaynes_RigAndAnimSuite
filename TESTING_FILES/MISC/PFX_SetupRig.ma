//Maya ASCII 2019 scene
//Name: PFX_SetupRig.ma
//Last modified: Tue, Jun 08, 2021 09:23:48 AM
//Codeset: 1252
requires maya "2019";
requires "stereoCamera" "10.0";
requires "mtoa" "3.1.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201812112215-434d8d9c04";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19041)\n";
createNode transform -s -n "persp";
	rename -uid "42D2A069-4F4E-8056-541E-F1A2C9B2109E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 239.168614970427 197.9688311453987 227.35476167052397 ;
	setAttr ".r" -type "double3" -27.938352729602379 44.999999999999972 -5.172681101354183e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "BFB4729C-4135-90A7-5C8E-339AFF326B60";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 384.18745424597091;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "5797C717-4C8F-6381-022E-C7AD5C544D46";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "97FA4AE2-4C1E-EFBA-EEDA-C896A3D96ACA";
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
	rename -uid "A8213315-458C-0883-24E1-07BF1C886CDA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "6A2B89C7-44CD-399C-04E5-549DA102C18D";
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
	rename -uid "C2CBAF57-45A9-FF33-0730-3090E2BB19C4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "B0884745-48FC-BE21-7091-6793997E3177";
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
	rename -uid "502CA180-42E5-4D1E-1E73-A0AF38E210A7";
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
	addAttr -ci true -sn "EmptyShape" -ln "EmptyShape" -dt "string";
	setAttr ".isBuilt" yes;
	setAttr ".pfrsName" -type "string" "TEMP";
	setAttr ".category" -type "string" "Rigging_Extras";
	setAttr ".operation" -type "string" "Constraints";
	setAttr ".nextLimbID" 9;
	setAttr ".nextJointID" 28;
createNode transform -n "JOINTS" -p "TEMP_RigRoot";
	rename -uid "27A06C04-4BF5-0699-F850-4C9F1387C6D4";
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
createNode joint -n "Clav_Clav01_L_JNT" -p "JOINTS";
	rename -uid "C02585B4-41FC-D8D0-729B-CB8DADC713D0";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.75649287571448476;
	setAttr ".ID" 16;
	setAttr ".pfrsName" -type "string" "Clav01";
createNode joint -n "Arm_Shoulder_L_JNT" -p "Clav_Clav01_L_JNT";
	rename -uid "8876FC51-4576-11C6-DBEF-2D86AC7E8064";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.6370063315610384;
	setAttr ".ID" 5;
	setAttr ".pfrsName" -type "string" "Shoulder";
createNode joint -n "Arm_Elbow_L_JNT" -p "Arm_Shoulder_L_JNT";
	rename -uid "C90ECEF2-4664-5759-EB21-36A75ED60584";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -1.9308742665174632 0 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.6210280660764069;
	setAttr ".ID" 6;
	setAttr ".pfrsName" -type "string" "Elbow";
createNode joint -n "ArmTwist_AT1_L_JNT" -p "Arm_Elbow_L_JNT";
	rename -uid "B14A1BF1-429C-8249-F4DA-5F8405B9E11A";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 1.1927080055488188e-15 0 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".ID" 17;
	setAttr ".pfrsName" -type "string" "AT1";
createNode parentConstraint -n "ArmTwist_AT1_L_JNT_parentConstraint1" -p "ArmTwist_AT1_L_JNT";
	rename -uid "AE186DE8-417B-3DC2-A30B-E2BE5EA0E29C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AT1_Joint_L_CTR0W0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-15 2.8421709430404007e-14 
		0 ;
	setAttr ".rst" -type "double3" 8.2590955173458198 2.8421709430404007e-14 -1.7763568394002505e-15 ;
	setAttr -k on ".w0";
createNode joint -n "ArmTwist_AT2_L_JNT" -p "Arm_Elbow_L_JNT";
	rename -uid "B0D88952-4FA2-6FEF-F074-148F01560ADA";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".ID" 18;
	setAttr ".pfrsName" -type "string" "AT2";
createNode parentConstraint -n "ArmTwist_AT2_L_JNT_parentConstraint1" -p "ArmTwist_AT2_L_JNT";
	rename -uid "2CD3C664-4001-28B1-F5E7-CCBE0C6E36F9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AT2_Joint_L_CTR1W0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-15 2.8421709430404007e-14 
		-8.8817841970012523e-16 ;
	setAttr ".rst" -type "double3" 13.321355045119574 2.8421709430404007e-14 -2.6645352591003757e-15 ;
	setAttr -k on ".w0";
createNode joint -n "ArmTwist_AT3_L_JNT" -p "Arm_Elbow_L_JNT";
	rename -uid "EBDBF0A0-416A-A01C-B26F-F59AFA08F1AC";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".ID" 19;
	setAttr ".pfrsName" -type "string" "AT3";
createNode parentConstraint -n "ArmTwist_AT3_L_JNT_parentConstraint1" -p "ArmTwist_AT3_L_JNT";
	rename -uid "DC24F3AC-4AF5-C1D8-D4D5-F2A9534EDD93";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AT3_Joint_L_CTR2W0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-15 0 8.8817841970012523e-16 ;
	setAttr ".rst" -type "double3" 18.524062215657011 0 0 ;
	setAttr -k on ".w0";
createNode joint -n "Arm_Wrist_L_JNT" -p "Arm_Elbow_L_JNT";
	rename -uid "701025F0-4706-3039-9C0D-7EAD80B8E4EC";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".ID" 7;
	setAttr ".pfrsName" -type "string" "Wrist";
createNode joint -n "Thumb_Thumb1_L_JNT" -p "Arm_Wrist_L_JNT";
	rename -uid "0DC5401B-4770-BE66-7F0D-ABA5A1C3AD12";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 1.9308742665174627 0 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.55172413793103448;
	setAttr ".ID" 24;
	setAttr ".pfrsName" -type "string" "Thumb1";
createNode joint -n "Thumb_Thumb2_L_JNT" -p "Thumb_Thumb1_L_JNT";
	rename -uid "4D4C83C8-4AE4-491E-EC5F-319457E1F58B";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 25;
	setAttr ".pfrsName" -type "string" "Thumb2";
createNode joint -n "Thumb_Thumb3_L_JNT" -p "Thumb_Thumb2_L_JNT";
	rename -uid "4B274251-4C68-6F39-7AE2-A4956F737052";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 26;
	setAttr ".pfrsName" -type "string" "Thumb3";
createNode joint -n "Thumb_Thumb4_L_JNT" -p "Thumb_Thumb3_L_JNT";
	rename -uid "49788F35-47F4-6ED0-AEA4-738235733736";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 27;
	setAttr ".pfrsName" -type "string" "Thumb4";
createNode parentConstraint -n "Thumb_Thumb4_L_JNT_parentConstraint1" -p "Thumb_Thumb4_L_JNT";
	rename -uid "41C41104-4321-2FB8-7736-DBA7C84EE81E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Thumb4_Joint_L_CTR3W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-14 0 -3.5527136788005009e-15 ;
	setAttr ".rst" -type "double3" 2.0644873462884448 2.8421709430404007e-14 -0.54545896349789125 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Thumb_Thumb3_L_JNT_parentConstraint1" -p "Thumb_Thumb3_L_JNT";
	rename -uid "5E3CE2C7-42E0-9A6C-F4F0-49BE3F765555";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Thumb3_Joint_L_CTR2W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" -2.1316282072803006e-14 0 5.3290705182007514e-15 ;
	setAttr ".rst" -type "double3" 1.9068061047389975 0 8.8817841970012523e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Thumb_Thumb2_L_JNT_parentConstraint1" -p "Thumb_Thumb2_L_JNT";
	rename -uid "C0CB0AA2-4402-CCBE-51E0-C3A81858B0A5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Thumb2_Joint_L_CTR1W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 2.1316282072803006e-14 -2.8421709430404007e-14 
		3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 1.5902773407317587e-14 0 ;
	setAttr ".lr" -type "double3" 0 9.5371761283020273 0 ;
	setAttr ".rst" -type "double3" 2.0000000000000071 2.8421709430404007e-14 3.5527136788005009e-15 ;
	setAttr ".rsrr" -type "double3" 0 9.5371761283020096 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Thumb_Thumb1_L_JNT_parentConstraint1" -p "Thumb_Thumb1_L_JNT";
	rename -uid "079A823A-4386-F3A3-4F46-11BDB3747971";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Thumb1_Joint_L_CTR0W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 2.8421709430404007e-14 
		1.4210854715202004e-14 ;
	setAttr ".tg[0].tor" -type "double3" 5.1684013573782151e-15 9.5416640443905503e-15 
		5.5659706925611543e-15 ;
	setAttr ".lr" -type "double3" -1.7730989266001761e-15 -26.247570961685526 -40.942160957263454 ;
	setAttr ".rst" -type "double3" 3.6445232976520501 -2.8873685380403913e-06 3.0651836085220148 ;
	setAttr ".rsrr" -type "double3" -1.7730989266001761e-15 -26.247570961685526 -40.942160957263454 ;
	setAttr -k on ".w0";
createNode joint -n "Pinkie_Pinkey1_L_JNT" -p "Arm_Wrist_L_JNT";
	rename -uid "77FB557C-4B6A-8E7B-8CE3-DA9BF1C3E73A";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 1.9308742665174627 0 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.55172413793103448;
	setAttr ".ID" 8;
	setAttr ".pfrsName" -type "string" "Pinkey1";
createNode joint -n "Pinkie_Pinkey2_L_JNT" -p "Pinkie_Pinkey1_L_JNT";
	rename -uid "14E4C226-4135-146E-0460-D48719FE4A52";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 9;
	setAttr ".pfrsName" -type "string" "Pinkey2";
createNode joint -n "Pinkie_Pinkey3_L_JNT" -p "Pinkie_Pinkey2_L_JNT";
	rename -uid "3B04FEBC-4FB4-1142-97C0-239EF206F382";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 10;
	setAttr ".pfrsName" -type "string" "Pinkey3";
createNode joint -n "Pinkie_Pinkey4_L_JNT" -p "Pinkie_Pinkey3_L_JNT";
	rename -uid "7CF6B7FE-436D-260A-B70C-A6AA0B207D9A";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 11;
	setAttr ".pfrsName" -type "string" "Pinkey4";
createNode parentConstraint -n "Pinkie_Pinkey4_L_JNT_parentConstraint1" -p "Pinkie_Pinkey4_L_JNT";
	rename -uid "86F5ADFA-4158-A427-5404-4AAA7295944F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Pinkey4_Joint_L_CTR3W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 5.6843418860808015e-14 1.1368683772161603e-13 
		-3.5527136788005009e-15 ;
	setAttr ".rst" -type "double3" 2.5452197364001563 -0.73726913738840949 8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Pinkie_Pinkey3_L_JNT_parentConstraint1" -p "Pinkie_Pinkey3_L_JNT";
	rename -uid "78E69228-4AA2-30FE-B96E-3BB0930F1FB1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Pinkey3_Joint_L_CTR2W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 4.2632564145606011e-14 8.5265128291212022e-14 
		-3.5527136788005009e-15 ;
	setAttr ".rst" -type "double3" 2.7759646736007113 -0.31684435439672143 -8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Pinkie_Pinkey2_L_JNT_parentConstraint1" -p "Pinkie_Pinkey2_L_JNT";
	rename -uid "2985F7A9-4981-1284-3058-5197CEFB0AFF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Pinkey2_Joint_L_CTR1W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-14 5.6843418860808015e-14 
		-2.6645352591003757e-15 ;
	setAttr ".rst" -type "double3" 2.6788155899991892 2.8421709430404007e-14 -1.7763568394002505e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Pinkie_Pinkey1_L_JNT_parentConstraint1" -p "Pinkie_Pinkey1_L_JNT";
	rename -uid "44B875F5-44F0-6930-3F2E-5F9DE185C785";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Pinkey1_Joint_L_CTR0W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 2.8421709430404007e-14 
		-8.8817841970012523e-16 ;
	setAttr ".rst" -type "double3" 4.4857089105952213 -2.8873685380403913e-06 -3.9422975888058112 ;
	setAttr -k on ".w0";
createNode joint -n "Index_Index1_L_JNT" -p "Arm_Wrist_L_JNT";
	rename -uid "24F43BF6-47E4-385E-9723-9BA74A622055";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 1.9308742665174627 0 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.55172413793103448;
	setAttr ".ID" 20;
	setAttr ".pfrsName" -type "string" "Index1";
createNode joint -n "Index_Index2_L_JNT" -p "Index_Index1_L_JNT";
	rename -uid "A52D2DF8-4CEC-22D3-A75B-9D85AF3C1437";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 21;
	setAttr ".pfrsName" -type "string" "Index2";
createNode joint -n "Index_Index3_L_JNT" -p "Index_Index2_L_JNT";
	rename -uid "6F51BBF4-42A1-10F8-8437-33B5C30977E7";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 22;
	setAttr ".pfrsName" -type "string" "Index3";
createNode joint -n "Index_Index4_L_JNT" -p "Index_Index3_L_JNT";
	rename -uid "43F22DD6-4BE5-AAA9-AC77-8C8E43BBE9F5";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 23;
	setAttr ".pfrsName" -type "string" "Index4";
createNode parentConstraint -n "Index_Index4_L_JNT_parentConstraint1" -p "Index_Index4_L_JNT";
	rename -uid "521214D9-41B6-AEE5-76BD-329EE0706F30";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Index4_Joint_L_CTR3W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 2.8421709430404007e-14 
		6.6613381477509392e-16 ;
	setAttr ".rst" -type "double3" 2.5452197364001421 -0.73726913738843791 4.4408920985006262e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Index_Index3_L_JNT_parentConstraint1" -p "Index_Index3_L_JNT";
	rename -uid "03B4E862-4FB6-0870-4968-D9AC447EA6A9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Index3_Joint_L_CTR2W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 2.8421709430404007e-14 
		6.6613381477509392e-16 ;
	setAttr ".rst" -type "double3" 2.7759646736006829 -0.31684435439674985 -4.4408920985006262e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Index_Index2_L_JNT_parentConstraint1" -p "Index_Index2_L_JNT";
	rename -uid "4769C800-4902-00A1-838D-7ABBCED34F61";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Index2_Joint_L_CTR1W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 2.8421709430404007e-14 
		6.6613381477509392e-16 ;
	setAttr ".rst" -type "double3" 2.6788155899991608 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Index_Index1_L_JNT_parentConstraint1" -p "Index_Index1_L_JNT";
	rename -uid "68DE5FFF-4DF3-FDC7-4C80-8398D69D7E29";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Index1_Joint_L_CTR0W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 0 2.8421709430404007e-14 6.6613381477509392e-16 ;
	setAttr ".rst" -type "double3" 4.9648392370963563 -2.8873685380403913e-06 1.4343524763647757 ;
	setAttr -k on ".w0";
createNode joint -n "Ring_Ring1_L_JNT" -p "Arm_Wrist_L_JNT";
	rename -uid "F1F3903B-4280-C404-C4A4-3BB66B7E1B22";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 1.9308742665174627 0 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.55172413793103448;
	setAttr ".ID" 1;
	setAttr ".pfrsName" -type "string" "Ring1";
createNode joint -n "Ring_Ring2_L_JNT" -p "Ring_Ring1_L_JNT";
	rename -uid "85A23FE0-428D-F974-1721-139423E7B0CF";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 2;
	setAttr ".pfrsName" -type "string" "Ring2";
createNode joint -n "Ring_Ring3_L_JNT" -p "Ring_Ring2_L_JNT";
	rename -uid "BB527FFF-4857-73B2-4943-E8A570376245";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 3;
	setAttr ".pfrsName" -type "string" "Ring3";
createNode joint -n "Ring_Ring4_L_JNT" -p "Ring_Ring3_L_JNT";
	rename -uid "26A86FF0-4011-F09B-8204-2D85F1340C47";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 4;
	setAttr ".pfrsName" -type "string" "Ring4";
createNode parentConstraint -n "Ring_Ring4_L_JNT_parentConstraint1" -p "Ring_Ring4_L_JNT";
	rename -uid "CB96F392-4FD5-C6D6-15CC-899F1FCB4F95";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Ring4_Joint_L_CTR3W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" -2.8421709430404007e-14 -5.6843418860808015e-14 
		-8.8817841970012523e-16 ;
	setAttr ".rst" -type "double3" 2.5452197364001279 -0.73726913738846633 -8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ring_Ring3_L_JNT_parentConstraint1" -p "Ring_Ring3_L_JNT";
	rename -uid "09014EBF-4D2F-2784-C870-D199FDFE464D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Ring3_Joint_L_CTR2W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 -2.8421709430404007e-14 
		8.8817841970012523e-16 ;
	setAttr ".rst" -type "double3" 2.7759646736006687 -0.31684435439677827 -8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ring_Ring2_L_JNT_parentConstraint1" -p "Ring_Ring2_L_JNT";
	rename -uid "B59D4D39-4CBF-252A-90F8-E2870D460915";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Ring2_Joint_L_CTR1W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 0 0 1.7763568394002505e-15 ;
	setAttr ".rst" -type "double3" 2.6788155899991608 -2.8421709430404007e-14 8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ring_Ring1_L_JNT_parentConstraint1" -p "Ring_Ring1_L_JNT";
	rename -uid "5A58D1AA-45D8-E475-ED65-319B1351049B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Ring1_Joint_L_CTR0W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-14 5.6843418860808015e-14 
		8.8817841970012523e-16 ;
	setAttr ".rst" -type "double3" 5.7284295193343127 -2.8873685096186819e-06 -2.0040592023330426 ;
	setAttr -k on ".w0";
createNode joint -n "Middle_Middle1_L_JNT" -p "Arm_Wrist_L_JNT";
	rename -uid "283632D5-45D4-23C1-62BF-C6AA48C67061";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 1.9308742665174627 0 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.55172413793103448;
	setAttr ".ID" 12;
	setAttr ".pfrsName" -type "string" "Middle1";
createNode joint -n "Middle_Middle2_L_JNT" -p "Middle_Middle1_L_JNT";
	rename -uid "0974E740-44DF-002B-ED68-2E9CBBFD8141";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 13;
	setAttr ".pfrsName" -type "string" "Middle2";
createNode joint -n "Middle_Middle3_L_JNT" -p "Middle_Middle2_L_JNT";
	rename -uid "C152F678-449E-AC52-7FBB-C795DDC3E0A0";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 14;
	setAttr ".pfrsName" -type "string" "Middle3";
createNode joint -n "Middle_Middle4_L_JNT" -p "Middle_Middle3_L_JNT";
	rename -uid "4FC68759-4BCE-244F-6D00-D5AE3FD0BA2D";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	addAttr -ci true -sn "skinAnimStart" -ln "skinAnimStart" -at "float";
	addAttr -ci true -sn "skinAnimEnd" -ln "skinAnimEnd" -at "float";
	addAttr -ci true -sn "jointColor" -ln "jointColor" -at "float3" -nc 3;
	addAttr -ci true -sn "jointColorR" -ln "jointColorR" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorG" -ln "jointColorG" -at "float" -p "jointColor";
	addAttr -ci true -sn "jointColorB" -ln "jointColorB" -at "float" -p "jointColor";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 15;
	setAttr ".pfrsName" -type "string" "Middle4";
createNode parentConstraint -n "Middle_Middle4_L_JNT_parentConstraint1" -p "Middle_Middle4_L_JNT";
	rename -uid "3CC85303-4542-4DBD-1860-8CA7EF0485D9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Middle4_Joint_L_CTR3W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 2.8421709430404007e-14 
		4.4408920985006262e-16 ;
	setAttr ".rst" -type "double3" 2.5452197364001421 -0.73726913738843791 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Middle_Middle3_L_JNT_parentConstraint1" -p "Middle_Middle3_L_JNT";
	rename -uid "BFE575B1-458C-A09A-BA29-F7982B55333C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Middle3_Joint_L_CTR2W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 2.8421709430404007e-14 
		8.8817841970012523e-16 ;
	setAttr ".rst" -type "double3" 2.7759646736006687 -0.31684435439674985 -8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Middle_Middle2_L_JNT_parentConstraint1" -p "Middle_Middle2_L_JNT";
	rename -uid "886D809E-49D5-7DFA-AE4B-7EA912189069";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Middle2_Joint_L_CTR1W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 2.8421709430404007e-14 
		1.3322676295501878e-15 ;
	setAttr ".rst" -type "double3" 2.6788155899991608 0 4.4408920985006262e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Middle_Middle1_L_JNT_parentConstraint1" -p "Middle_Middle1_L_JNT";
	rename -uid "7B762667-451B-BA2D-51E8-91A43A67FC5E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Middle1_Joint_L_CTR0W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-14 2.8421709430404007e-14 
		8.8817841970012523e-16 ;
	setAttr ".rst" -type "double3" 5.7254400679154713 -2.8873685380403913e-06 -0.15696195575257654 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Arm_Wrist_L_JNT_parentConstraint1" -p "Arm_Wrist_L_JNT";
	rename -uid "0BC26FCE-4DD9-D343-FD59-F58FB15283EB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Wrist_Joint_L_CTR2W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-15 2.8421709430404007e-14 
		8.8817841970012523e-16 ;
	setAttr ".rst" -type "double3" 22.673209277477213 2.8421709430404007e-14 1.1546319456101628e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Arm_Elbow_L_JNT_parentConstraint1" -p "Arm_Elbow_L_JNT";
	rename -uid "0CE63E3F-400C-D9DB-3728-F5ACBC1200FD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Elbow_Joint_L_CTR1W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-15 0 8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 -1.987846675914698e-15 0 ;
	setAttr ".lr" -type "double3" 0 1.987846675914698e-15 0 ;
	setAttr ".rst" -type "double3" 22.969421813513964 2.8873685380403913e-06 -0.76394504341705272 ;
	setAttr ".rsrr" -type "double3" 0 1.987846675914698e-15 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Arm_Shoulder_L_JNT_parentConstraint1" -p "Arm_Shoulder_L_JNT";
	rename -uid "96857554-49E7-6D21-D28F-74B18D4D94C5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Shoulder_Joint_L_CTR0W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 2.8421709430404007e-14 
		0 ;
	setAttr ".rst" -type "double3" 5.958861837017448 2.8421709430404007e-14 -4.4408920985006262e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Clav_Clav01_L_JNT_parentConstraint1" -p "Clav_Clav01_L_JNT";
	rename -uid "AB016642-4544-6D76-63D1-D9A9777A8DCA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Clav01_Joint_L_CTR0W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 0 -4.4408920985006262e-16 ;
	setAttr ".rst" -type "double3" 8.2724914959529574 136.60888383138146 -3.534698068765564 ;
	setAttr -k on ".w0";
createNode transform -n "LIMBS" -p "TEMP_RigRoot";
	rename -uid "42E2C9D1-4105-3525-C29F-E8BC2035039C";
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
createNode transform -n "Ring_Limb_L_NODE" -p "LIMBS";
	rename -uid "DC749A96-48CD-F984-4E3C-0F9A055CCA86";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 10 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3:Custom4:Custom5" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 1 -en "Body:Face" 
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
	addAttr -ci true -sn "animGroups" -ln "animGroups" -dt "string";
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
	setAttr ".pfrsName" -type "string" "Ring";
	setAttr ".limbType" 4;
	setAttr ".side" 1;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Ring1_Joint_L_GRP0" -p "Ring_Limb_L_NODE";
	rename -uid "F57A1659-41E8-21FF-BCD5-03A1E0876ABD";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring1_Joint_L_CTR0" -p "Ring1_Joint_L_GRP0";
	rename -uid "DDC5F261-4C22-7076-8C58-9A89E1BE02DB";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring1_Joint_L_CTR0Shape" -p "Ring1_Joint_L_CTR0";
	rename -uid "E62D110A-4331-537C-5E8A-92972A9991BD";
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
createNode transform -n "Ring2_Joint_L_GRP1" -p "Ring1_Joint_L_CTR0";
	rename -uid "C0A40214-4B69-7ACB-FD11-7D9EC4519809";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 2.678815589999175 0 0 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring2_Joint_L_CTR1" -p "Ring2_Joint_L_GRP1";
	rename -uid "D8D8B062-4390-E607-617D-CF9B6DF9CCE2";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring2_Joint_L_CTR1Shape" -p "Ring2_Joint_L_CTR1";
	rename -uid "B7BF541C-44A2-EFC2-A68F-D8AE56A19587";
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
createNode transform -n "Ring3_Joint_L_GRP2" -p "Ring2_Joint_L_CTR1";
	rename -uid "2C7A894D-4FF4-C578-E369-82873748F9E8";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 2.7759646736006829 -0.31684435439674985 0 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring3_Joint_L_CTR2" -p "Ring3_Joint_L_GRP2";
	rename -uid "D146EEFF-4C25-D79E-22E7-0CAEE1CE624C";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring3_Joint_L_CTR2Shape" -p "Ring3_Joint_L_CTR2";
	rename -uid "A44C1C55-4BC8-AD4A-9DC4-2B800A2C3F62";
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
createNode transform -n "Ring4_Joint_L_GRP3" -p "Ring3_Joint_L_CTR2";
	rename -uid "E4074704-414E-3876-20E9-8694A5504414";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 2.5452197364001421 -0.73726913738843791 8.8817841970012523e-16 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring4_Joint_L_CTR3" -p "Ring4_Joint_L_GRP3";
	rename -uid "08BDA851-43A2-EDBA-DCF7-46BA4E548C09";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring4_Joint_L_CTR3Shape" -p "Ring4_Joint_L_CTR3";
	rename -uid "CD5C825E-4FE9-5F51-7A9F-229763E6B19A";
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
createNode parentConstraint -n "Ring1_Joint_L_GRP0_parentConstraint1" -p "Ring1_Joint_L_GRP0";
	rename -uid "D2DF81B1-4689-EDCF-337A-B5955F31AEA9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Wrist_Joint_L_CTR2W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 5.7284295193343127 -2.8873685380403913e-06 
		-2.0040592023330417 ;
	setAttr ".tg[0].tor" -type "double3" 0 1.930874266517461 0 ;
	setAttr ".lr" -type "double3" 0 -3.975693351829396e-16 0 ;
	setAttr ".rst" -type "double3" 65.653811871969495 136.60888383138146 -5.3446071312575167 ;
	setAttr ".rsrr" -type "double3" 0 -3.975693351829396e-16 0 ;
	setAttr -k on ".w0";
createNode transform -n "Arm_Limb_L_NODE" -p "LIMBS";
	rename -uid "64CE5AD2-4928-B182-072E-88B766915AFF";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 10 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3:Custom4:Custom5" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 1 -en "Body:Face" 
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
	addAttr -ci true -sn "animGroups" -ln "animGroups" -dt "string";
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
	setAttr ".pfrsName" -type "string" "Arm";
	setAttr ".limbType" 4;
	setAttr ".side" 1;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Shoulder_Joint_L_GRP0" -p "Arm_Limb_L_NODE";
	rename -uid "1B322114-495F-7C8D-7602-F8A81C9F076B";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Shoulder_Joint_L_CTR0" -p "Shoulder_Joint_L_GRP0";
	rename -uid "DFE4CB30-40F2-8EA6-114B-FF9FED4D07B9";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Shoulder_Joint_L_CTR0Shape" -p "Shoulder_Joint_L_CTR0";
	rename -uid "CDA55739-4B15-7DA4-8759-D582B0B577F0";
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
createNode transform -n "Elbow_Joint_L_GRP1" -p "Shoulder_Joint_L_CTR0";
	rename -uid "9882C411-4EA1-3751-CDAD-6583A64743C3";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 22.969421813513964 2.8873685380403913e-06 -0.7639450434170536 ;
	setAttr ".r" -type "double3" 0 -1.9308742665174616 0 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Elbow_Joint_L_CTR1" -p "Elbow_Joint_L_GRP1";
	rename -uid "80DABEB5-4BD6-D902-BC94-A1B1FA917CA6";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Elbow_Joint_L_CTR1Shape" -p "Elbow_Joint_L_CTR1";
	rename -uid "1B4A8C65-4202-E94C-3DC6-CA91E33881FD";
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
createNode transform -n "Wrist_Joint_L_GRP2" -p "Elbow_Joint_L_CTR1";
	rename -uid "07BE5F7C-44C6-8516-C44C-F2B9E1B5786E";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 22.673209277477198 0 1.2434497875801753e-14 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Wrist_Joint_L_CTR2" -p "Wrist_Joint_L_GRP2";
	rename -uid "246AA928-4FBB-57B4-D85D-53A02271ECF6";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Wrist_Joint_L_CTR2Shape" -p "Wrist_Joint_L_CTR2";
	rename -uid "CE7B21A5-4333-9FE8-2802-338632546E6A";
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
createNode parentConstraint -n "Shoulder_Joint_L_GRP0_parentConstraint1" -p "Shoulder_Joint_L_GRP0";
	rename -uid "37E07746-442A-28EB-A4AC-C39EB6A93031";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Clav01_Joint_L_CTR0W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 5.9588618370174515 0 -4.4408920985006262e-16 ;
	setAttr ".rst" -type "double3" 14.231353332970407 136.60888383138146 -3.534698068765564 ;
	setAttr -k on ".w0";
createNode transform -n "Pinkie_Limb_L_NODE" -p "LIMBS";
	rename -uid "0B1D4DBE-4757-8188-2E52-EF8C16E57591";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 10 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3:Custom4:Custom5" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 1 -en "Body:Face" 
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
	addAttr -ci true -sn "animGroups" -ln "animGroups" -dt "string";
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
	setAttr ".pfrsName" -type "string" "Pinkie";
	setAttr ".limbType" 4;
	setAttr ".side" 1;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Pinkey1_Joint_L_GRP0" -p "Pinkie_Limb_L_NODE";
	rename -uid "0F335043-427C-7B4E-022E-EA892F41705F";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinkey1_Joint_L_CTR0" -p "Pinkey1_Joint_L_GRP0";
	rename -uid "9AE8AFA2-4FB2-B37E-93BF-E8AEE2442C89";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinkey1_Joint_L_CTR0Shape" -p "Pinkey1_Joint_L_CTR0";
	rename -uid "08083266-4D93-91D2-60D9-BB90C06E79FC";
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
createNode transform -n "Pinkey2_Joint_L_GRP1" -p "Pinkey1_Joint_L_CTR0";
	rename -uid "44B061B3-444F-CDC9-8EA4-7EA15AE211CD";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 2.678815589999175 0 0 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinkey2_Joint_L_CTR1" -p "Pinkey2_Joint_L_GRP1";
	rename -uid "F6FF3717-4B00-82CF-B41A-89BE43C7FB07";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinkey2_Joint_L_CTR1Shape" -p "Pinkey2_Joint_L_CTR1";
	rename -uid "72A30339-48EE-9D93-93E9-0DBEB0052B8F";
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
createNode transform -n "Pinkey3_Joint_L_GRP2" -p "Pinkey2_Joint_L_CTR1";
	rename -uid "5967A63E-413B-D349-198D-72B1B9F06CD1";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 2.7759646736006829 -0.31684435439674985 0 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinkey3_Joint_L_CTR2" -p "Pinkey3_Joint_L_GRP2";
	rename -uid "5EDD722F-46FA-6867-DFE9-CAA813B4BF59";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinkey3_Joint_L_CTR2Shape" -p "Pinkey3_Joint_L_CTR2";
	rename -uid "76B6BC8E-476B-0742-9174-1084F4AA3B50";
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
createNode transform -n "Pinkey4_Joint_L_GRP3" -p "Pinkey3_Joint_L_CTR2";
	rename -uid "4664844D-42D3-CA92-D64F-A48B59CCB52C";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 2.5452197364001421 -0.73726913738843791 8.8817841970012523e-16 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinkey4_Joint_L_CTR3" -p "Pinkey4_Joint_L_GRP3";
	rename -uid "459EDF70-4626-EDEA-980C-49A88A451337";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinkey4_Joint_L_CTR3Shape" -p "Pinkey4_Joint_L_CTR3";
	rename -uid "A1E4969A-464D-46FF-543D-F6BA30D1E421";
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
createNode parentConstraint -n "Pinkey1_Joint_L_GRP0_parentConstraint1" -p "Pinkey1_Joint_L_GRP0";
	rename -uid "67A53B73-4DBD-95DB-87E5-33970857F269";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Wrist_Joint_L_CTR2W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 4.4857089105952355 -2.8873685380403913e-06 
		-3.9422975888058094 ;
	setAttr ".tg[0].tor" -type "double3" 0 1.930874266517461 0 ;
	setAttr ".lr" -type "double3" 0 -3.975693351829396e-16 0 ;
	setAttr ".rst" -type "double3" 64.477103364243277 136.60888383138146 -7.3236168942516544 ;
	setAttr ".rsrr" -type "double3" 0 -3.975693351829396e-16 0 ;
	setAttr -k on ".w0";
createNode transform -n "Middle_Limb_L_NODE" -p "LIMBS";
	rename -uid "7A097718-440B-2094-9119-26AE06D27AB5";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 10 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3:Custom4:Custom5" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 1 -en "Body:Face" 
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
	addAttr -ci true -sn "animGroups" -ln "animGroups" -dt "string";
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
	setAttr ".pfrsName" -type "string" "Middle";
	setAttr ".limbType" 4;
	setAttr ".side" 1;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Middle1_Joint_L_GRP0" -p "Middle_Limb_L_NODE";
	rename -uid "6E701296-424A-6163-8CA8-9EBD4EC79D39";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle1_Joint_L_CTR0" -p "Middle1_Joint_L_GRP0";
	rename -uid "1E5EB54E-4B5E-F904-8513-68B45F88A32D";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle1_Joint_L_CTR0Shape" -p "Middle1_Joint_L_CTR0";
	rename -uid "93026070-4344-A88D-938C-6894759D486B";
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
createNode transform -n "Middle2_Joint_L_GRP1" -p "Middle1_Joint_L_CTR0";
	rename -uid "115BE665-47D5-7345-6B3E-23A5EE65FC35";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 2.678815589999175 0 0 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle2_Joint_L_CTR1" -p "Middle2_Joint_L_GRP1";
	rename -uid "53C68E0D-4D88-98F7-182B-EAA2FA45909A";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle2_Joint_L_CTR1Shape" -p "Middle2_Joint_L_CTR1";
	rename -uid "288BFB99-436A-D271-F21C-8FAA051987B2";
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
createNode transform -n "Middle3_Joint_L_GRP2" -p "Middle2_Joint_L_CTR1";
	rename -uid "2FC8D8A9-4AF5-A746-6031-709F8A4D8191";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 2.7759646736006687 -0.31684435439674985 -4.4408920985006262e-16 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle3_Joint_L_CTR2" -p "Middle3_Joint_L_GRP2";
	rename -uid "BD72F6CE-4051-14E1-EADC-F6B85B716DEB";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle3_Joint_L_CTR2Shape" -p "Middle3_Joint_L_CTR2";
	rename -uid "7F8B892A-41F1-BE87-6383-28ACF7E5FC8D";
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
createNode transform -n "Middle4_Joint_L_GRP3" -p "Middle3_Joint_L_CTR2";
	rename -uid "B7D65F22-47B5-9DF7-3E95-E09483FBF205";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 2.5452197364001421 -0.73726913738843791 4.4408920985006262e-16 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle4_Joint_L_CTR3" -p "Middle4_Joint_L_GRP3";
	rename -uid "1D39A265-40D8-0AA2-B765-BF8B8D115D5B";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle4_Joint_L_CTR3Shape" -p "Middle4_Joint_L_CTR3";
	rename -uid "84EC14B4-47AE-EF39-CC37-A8941FDEEF91";
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
createNode parentConstraint -n "Middle1_Joint_L_GRP0_parentConstraint1" -p "Middle1_Joint_L_GRP0";
	rename -uid "CC4C840A-4A23-CCA8-6707-7B960EDA78FE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Wrist_Joint_L_CTR2W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 5.7254400679154571 -2.8873685380403913e-06 
		-0.15696195575257565 ;
	setAttr ".tg[0].tor" -type "double3" 0 1.930874266517461 0 ;
	setAttr ".lr" -type "double3" 0 -3.975693351829396e-16 0 ;
	setAttr ".rst" -type "double3" 65.588588512988579 136.60888383138146 -3.4986593831919954 ;
	setAttr ".rsrr" -type "double3" 0 -3.975693351829396e-16 0 ;
	setAttr -k on ".w0";
createNode transform -n "Clav_Limb_L_NODE" -p "LIMBS";
	rename -uid "1C7093EC-4948-0441-6D9C-47925A025C63";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 10 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3:Custom4:Custom5" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 1 -en "Body:Face" 
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
	addAttr -ci true -sn "animGroups" -ln "animGroups" -dt "string";
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
	setAttr ".pfrsName" -type "string" "Clav";
	setAttr ".limbType" 1;
	setAttr ".side" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "Clav01_Joint_L_GRP0" -p "Clav_Limb_L_NODE";
	rename -uid "9E6F3D98-464B-8290-1AFC-3EB659B04D45";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 8.2724914959529556 136.60888383138146 -3.5346980687655636 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Clav01_Joint_L_CTR0" -p "Clav01_Joint_L_GRP0";
	rename -uid "1F10D82E-48BF-2588-0577-F3B730D6AEBC";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Clav01_Joint_L_CTR0Shape" -p "Clav01_Joint_L_CTR0";
	rename -uid "ECBC8E33-408C-E003-28A9-E3B14F7BC19D";
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
createNode transform -n "ArmTwist_Limb_L_NODE" -p "LIMBS";
	rename -uid "502A9989-45EC-2258-B612-94BCFBA100CA";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 10 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3:Custom4:Custom5" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 1 -en "Body:Face" 
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
	addAttr -ci true -sn "animGroups" -ln "animGroups" -dt "string";
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
	setAttr ".ID" 6;
	setAttr ".pfrsName" -type "string" "ArmTwist";
	setAttr ".limbType" 2;
	setAttr ".side" 1;
	setAttr ".limbParentJoint" 1;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "AT1_Joint_L_GRP0" -p "ArmTwist_Limb_L_NODE";
	rename -uid "773E36E7-4855-FA96-FF78-F39D7A3649C8";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "AT1_Joint_L_CTR0" -p "AT1_Joint_L_GRP0";
	rename -uid "88E72E95-4D0E-47C2-F941-D88253321E16";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "AT1_Joint_L_CTR0Shape" -p "AT1_Joint_L_CTR0";
	rename -uid "85DA714C-49ED-EA97-E1C8-D6A1A07D4586";
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
createNode transform -n "AT2_Joint_L_GRP1" -p "AT1_Joint_L_CTR0";
	rename -uid "7587C832-4B86-900B-D29D-139E9521EB00";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 5.0622595277737616 0 0 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "AT2_Joint_L_CTR1" -p "AT2_Joint_L_GRP1";
	rename -uid "BF9431FC-4777-1EBB-97F7-53AF7E98B707";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "AT2_Joint_L_CTR1Shape" -p "AT2_Joint_L_CTR1";
	rename -uid "F601C436-493D-7E84-C406-CBB827318D85";
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
createNode transform -n "AT3_Joint_L_GRP2" -p "AT2_Joint_L_CTR1";
	rename -uid "4A498071-40D2-3030-38FE-91AD59274486";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 5.2027071705374297 0 8.8817841970012523e-16 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "AT3_Joint_L_CTR2" -p "AT3_Joint_L_GRP2";
	rename -uid "B9E3DB4F-475A-39C9-6C22-31A1E8F21BA3";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "AT3_Joint_L_CTR2Shape" -p "AT3_Joint_L_CTR2";
	rename -uid "3CFD60A8-4EBF-D180-2186-80B5E26C576B";
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
createNode parentConstraint -n "AT1_Joint_L_GRP0_parentConstraint1" -p "AT1_Joint_L_GRP0";
	rename -uid "ECFB56E1-4A8E-B6A2-F36F-97B3E1169476";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Elbow_Joint_L_CTR1W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 8.2590955173458127 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 0 -1.1927080055488188e-15 0 ;
	setAttr ".lr" -type "double3" 0 -1.930874266517461 0 ;
	setAttr ".rst" -type "double3" 45.455181190019204 136.60888671875 -4.0203633373204664 ;
	setAttr ".rsrr" -type "double3" 0 -1.930874266517461 0 ;
	setAttr -k on ".w0";
createNode transform -n "Index_Limb_L_NODE" -p "LIMBS";
	rename -uid "BDDC290A-46EE-D9BB-02C5-CFA47E2F1F36";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 10 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3:Custom4:Custom5" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 1 -en "Body:Face" 
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
	addAttr -ci true -sn "animGroups" -ln "animGroups" -dt "string";
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
	setAttr ".pfrsName" -type "string" "Index";
	setAttr ".limbType" 4;
	setAttr ".side" 1;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Index1_Joint_L_GRP0" -p "Index_Limb_L_NODE";
	rename -uid "FDACE194-4F5A-905A-F0D9-2F8FE6E6B2EC";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index1_Joint_L_CTR0" -p "Index1_Joint_L_GRP0";
	rename -uid "049FAB88-47E4-FDC4-AD8F-5FA685632007";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index1_Joint_L_CTR0Shape" -p "Index1_Joint_L_CTR0";
	rename -uid "3C554704-48BB-D213-2DD5-819926A54808";
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
createNode transform -n "Index2_Joint_L_GRP1" -p "Index1_Joint_L_CTR0";
	rename -uid "36F78D60-49F2-CD53-84C1-AFB437DBC756";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 2.678815589999175 0 0 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index2_Joint_L_CTR1" -p "Index2_Joint_L_GRP1";
	rename -uid "D0103B20-4063-3425-931B-57BCA3378854";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index2_Joint_L_CTR1Shape" -p "Index2_Joint_L_CTR1";
	rename -uid "6CB7C41F-41E2-FB9F-DCB9-B2B347BD0E07";
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
createNode transform -n "Index3_Joint_L_GRP2" -p "Index2_Joint_L_CTR1";
	rename -uid "7A67B8F0-4E70-EE2F-8E67-4EBB912F6DC1";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 2.7759646736006829 -0.31684435439674985 -4.4408920985006262e-16 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index3_Joint_L_CTR2" -p "Index3_Joint_L_GRP2";
	rename -uid "8C5C256D-4EFC-F4D3-518A-96A404234742";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index3_Joint_L_CTR2Shape" -p "Index3_Joint_L_CTR2";
	rename -uid "87357F28-49C9-DD06-2348-448938975361";
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
createNode transform -n "Index4_Joint_L_GRP3" -p "Index3_Joint_L_CTR2";
	rename -uid "427E3B6F-43DA-1D83-5300-6591B67F2F29";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 2.5452197364001421 -0.73726913738843791 4.4408920985006262e-16 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index4_Joint_L_CTR3" -p "Index4_Joint_L_GRP3";
	rename -uid "FC29E64C-40F6-EA67-6F8C-A493633A9B3D";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index4_Joint_L_CTR3Shape" -p "Index4_Joint_L_CTR3";
	rename -uid "6B91BD9C-4E0B-EC0E-FDA2-DDA7716F96A6";
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
createNode parentConstraint -n "Index1_Joint_L_GRP0_parentConstraint1" -p "Index1_Joint_L_GRP0";
	rename -uid "BD50FBB2-48E9-5461-F6C3-1183CEEB1977";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Wrist_Joint_L_CTR2W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 4.9648392370963563 -2.8873685380403913e-06 
		1.4343524763647766 ;
	setAttr ".tg[0].tor" -type "double3" 0 1.930874266517461 0 ;
	setAttr ".lr" -type "double3" 0 -3.975693351829396e-16 0 ;
	setAttr ".rst" -type "double3" 64.77480222096429 136.60888383138146 -1.9338759743391822 ;
	setAttr ".rsrr" -type "double3" 0 -3.975693351829396e-16 0 ;
	setAttr -k on ".w0";
createNode transform -n "Thumb_Limb_L_NODE" -p "LIMBS";
	rename -uid "CC2B9D66-44BA-3B9A-DB19-9E9EB3F8204C";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 10 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3:Custom4:Custom5" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 1 -en "Body:Face" 
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
	addAttr -ci true -sn "animGroups" -ln "animGroups" -dt "string";
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
	setAttr ".pfrsName" -type "string" "Thumb";
	setAttr ".limbType" 4;
	setAttr ".side" 1;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Thumb1_Joint_L_GRP0" -p "Thumb_Limb_L_NODE";
	rename -uid "AF914A41-42C2-8181-AE51-F4B64E121C16";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb1_Joint_L_CTR0" -p "Thumb1_Joint_L_GRP0";
	rename -uid "18F7DD25-4E02-9159-0119-A6B8F284638C";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -1.4210854715202004e-14 0 0 ;
	setAttr ".sp" -type "double3" -1.4210854715202004e-14 0 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb1_Joint_L_CTR0Shape" -p "Thumb1_Joint_L_CTR0";
	rename -uid "4A71EE99-41FF-1ED9-7BE1-B1A9C0930F5B";
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
createNode transform -n "Thumb2_Joint_L_GRP1" -p "Thumb1_Joint_L_CTR0";
	rename -uid "1AED708D-4BAB-BC68-6634-2685AC3BA8C7";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 1.9999999999999787 0 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 0 9.5371761283020167 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb2_Joint_L_CTR1" -p "Thumb2_Joint_L_GRP1";
	rename -uid "B34AB332-47CF-62C7-B4A1-2CA53391966E";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -1.4210854715202004e-14 5.6843418860808015e-14 3.5527136788005009e-15 ;
	setAttr ".sp" -type "double3" -1.4210854715202004e-14 5.6843418860808015e-14 3.5527136788005009e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb2_Joint_L_CTR1Shape" -p "Thumb2_Joint_L_CTR1";
	rename -uid "B62CADB3-48E1-56F4-5904-9194B0784807";
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
createNode transform -n "Thumb3_Joint_L_GRP2" -p "Thumb2_Joint_L_CTR1";
	rename -uid "ABF3D4A3-43BF-AE64-CAA1-19B5CFBAB5B8";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 1.9068061047389975 2.8421709430404007e-14 5.3290705182007514e-15 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb3_Joint_L_CTR2" -p "Thumb3_Joint_L_GRP2";
	rename -uid "9014C0E6-45A8-1E8E-C7D0-0D83029EC0BB";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 1.4210854715202004e-14 2.8421709430404007e-14 1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" 1.4210854715202004e-14 2.8421709430404007e-14 1.7763568394002505e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb3_Joint_L_CTR2Shape" -p "Thumb3_Joint_L_CTR2";
	rename -uid "2926BE18-434C-B558-44CE-06AE41046489";
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
createNode transform -n "Thumb4_Joint_L_GRP3" -p "Thumb3_Joint_L_CTR2";
	rename -uid "A9609F19-42F8-E34C-8C7A-A19EDABDCE22";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 2.064487346288459 2.8421709430404007e-14 -0.54545896349788947 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb4_Joint_L_CTR3" -p "Thumb4_Joint_L_GRP3";
	rename -uid "7C917B8D-4EC3-5B8A-7E0A-28B34AB246EF";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 2.8421709430404007e-14 3.5527136788005009e-15 ;
	setAttr ".sp" -type "double3" 0 2.8421709430404007e-14 3.5527136788005009e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb4_Joint_L_CTR3Shape" -p "Thumb4_Joint_L_CTR3";
	rename -uid "C171958A-488D-4551-3C4C-3DADB7F266D7";
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
createNode parentConstraint -n "Thumb1_Joint_L_GRP0_parentConstraint1" -p "Thumb1_Joint_L_GRP0";
	rename -uid "EF40A3A4-431A-4741-0DD5-F582896790FB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Wrist_Joint_L_CTR2W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 3.6445232976520572 -2.8873685380403913e-06 
		3.0651836085220157 ;
	setAttr ".tg[0].tor" -type "double3" -1.3935145125068946 -24.782356070525744 -40.341835862442714 ;
	setAttr ".lr" -type "double3" 0 -26.247570961685515 -40.942160957263447 ;
	setAttr ".rst" -type "double3" 63.400287158585215 136.60888383138146 -0.34845719532305131 ;
	setAttr ".rsrr" -type "double3" 0 -26.247570961685515 -40.942160957263447 ;
	setAttr -k on ".w0";
createNode transform -n "MESHES" -p "TEMP_RigRoot";
	rename -uid "0384DCCE-4B7F-99DD-5549-EE816AF0DD7C";
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
	rename -uid "67A950D5-4073-A016-7248-EFB341A38783";
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
	rename -uid "1672E0CC-4AAA-D0DD-1553-31B8766E2455";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Circle_Wire";
createNode nurbsCurve -n "Circle_WireShape" -p "Circle_Wire";
	rename -uid "65C14DA1-4005-D319-A6E2-7AAA50E1923F";
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
	rename -uid "4AC69CE2-431C-E0C5-8104-C1973B46118C";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Cube_PolyShape" -p "Cube_Poly";
	rename -uid "4B3924AC-4AF1-8649-82A6-C789E40CAF8E";
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
	rename -uid "0A145699-4A0F-7E13-FBF4-C3B01D5216E1";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cube_Wire";
createNode nurbsCurve -n "Cube_WireShape" -p "Cube_Wire";
	rename -uid "E0132F7D-4844-9EB1-059C-1C90E6B8CF88";
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
	rename -uid "647E0301-48CB-7F65-1766-D88ACB9DC213";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cylinder_Poly";
createNode mesh -n "Cylinder_PolyShape" -p "Cylinder_Poly";
	rename -uid "03C54406-4EAB-75D0-46A6-4485D7FB9059";
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
	rename -uid "BECF765B-4EA8-AA60-C104-5BADD769FC37";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Diamond_Wire";
createNode nurbsCurve -n "Diamond_WireShape" -p "Diamond_Wire";
	rename -uid "F2D6EE67-4B1A-52D5-6DAD-09B6EEB1379C";
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
	rename -uid "50625DDA-4314-9D3B-089F-90963EB206AB";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Pin_Wire";
createNode nurbsCurve -n "Pin_WireShape" -p "Pin_Wire";
	rename -uid "16FC99C3-4BA1-4430-2746-F3B07D57E24F";
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
	rename -uid "2F960E51-4A04-0D4B-1C3B-FEADF00CD6DE";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Sphere_Poly";
createNode mesh -n "Sphere_PolyShape" -p "Sphere_Poly";
	rename -uid "1204C053-4E8E-8A4A-2464-519BBF0C9608";
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
	rename -uid "AA5EDFE0-4483-A2AE-97A9-A381DD17CC36";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Square_Wire";
createNode nurbsCurve -n "Square_WireShape" -p "Square_Wire";
	rename -uid "E01BF182-4801-DC95-549C-76A7C1728DEF";
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
	rename -uid "72D986AB-4769-81F6-E937-398552E394D1";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "99D67FC8-4351-2318-7532-FEB99D3CCF23";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "5901D669-4AC0-4F66-EB4D-1F830E85BE36";
createNode displayLayerManager -n "layerManager";
	rename -uid "52989F4F-4E75-1CB7-337C-B5A5901B9D38";
	setAttr -s 4 ".dli[1:3]"  1 2 3;
	setAttr -s 4 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "9A429724-4D01-C864-8667-65942A937D4F";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "BFBA7C01-4A07-D88C-B0FE-34BFFF825A25";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "0673FCB2-4CE4-44D5-C3E8-778A92A1CA0D";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "36F2BA00-486D-B63D-EED6-708AC5C02F18";
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
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1088\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1088\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1088\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 50 -size 100 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "3CA31253-43D2-D252-861D-7E95D5CD7156";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "Control_Disp";
	rename -uid "740328ED-4410-4C83-61B9-31A2EE21BF74";
	setAttr ".do" 1;
createNode displayLayer -n "Joint_Disp";
	rename -uid "23383175-415A-0E0F-F713-3593494C09D5";
	setAttr ".do" 2;
createNode displayLayer -n "Meshes_Disp";
	rename -uid "B369C94B-4EB7-D1B4-3206-C389DBC4DA71";
	setAttr ".dt" 2;
	setAttr ".do" 3;
createNode lambert -n "TempMaterial";
	rename -uid "CC10D799-415A-BA76-55BC-2C918671794D";
	setAttr ".c" -type "float3" 1 0.92308331 0 ;
	setAttr ".it" -type "float3" 0.69277108 0.69277108 0.69277108 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "6BAD85CE-4BF2-2EE8-45B5-04A8554E201B";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "A236AC6F-4036-F46D-C22B-969FD3A8B9D2";
createNode surfaceShader -n "LControlsMaterial";
	rename -uid "D49507E8-409E-3137-6054-B5ADD2FF4DE3";
	setAttr ".oc" -type "float3" 0 0 1 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "LControlsMaterialSG";
	rename -uid "C6B0CF9B-4202-3510-51B2-F08E0D1909DC";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr -s 27 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "B07C3E86-4F8B-E856-6C7E-67A25CC05BF3";
createNode surfaceShader -n "MControlsMaterial";
	rename -uid "8DBC5AFA-4E41-4304-E940-93B4E984190F";
	setAttr ".oc" -type "float3" 1 1 0 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "MControlsMaterialSG";
	rename -uid "9ADC681F-4F3F-7B11-5E49-77813B69F504";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "B7B97FD9-4FE1-0064-EA28-118CE2A66E95";
createNode surfaceShader -n "RControlsMaterial";
	rename -uid "71A52B83-4FE0-A6A0-603D-5891C9BAF6BC";
	setAttr ".oc" -type "float3" 1 0 0 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "RControlsMaterialSG";
	rename -uid "16344270-4DD5-26E5-CC16-83AC195C1F7C";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "1288428C-4696-44B5-A3BC-5BB03E4DE5CB";
createNode controller -n "Elbow_Joint_L_CTR1_tag";
	rename -uid "DA41F324-47DE-58CD-D1A9-88BB6D7A43CA";
	setAttr -s 23 ".child";
createNode controller -n "Shoulder_Joint_L_CTR0_tag";
	rename -uid "E7F275C9-46D2-1EEB-D614-1786B4C57EEA";
createNode controller -n "Wrist_Joint_L_CTR2_tag";
	rename -uid "B3366EDD-4DB2-03D1-95B7-3BB3E6FDCA92";
createNode controller -n "Clav01_Joint_L_CTR0_tag";
	rename -uid "36996992-4435-3684-FBF6-10A366744B95";
	setAttr -s 3 ".child";
createNode controller -n "Ring2_Joint_L_CTR1_tag";
	rename -uid "05C746CF-4AB2-8156-AB4B-48B4BC4F82AE";
createNode controller -n "Ring1_Joint_L_CTR0_tag";
	rename -uid "C85E0C97-44B2-CBC5-ED6F-54B62D8C3CF9";
createNode controller -n "Ring3_Joint_L_CTR2_tag";
	rename -uid "5EC22C15-4FA9-7540-5742-0AB3784AFFBC";
createNode controller -n "Ring4_Joint_L_CTR3_tag";
	rename -uid "023104E6-48AF-1F99-2CFE-47A6407491CE";
createNode controller -n "Pinkey2_Joint_L_CTR1_tag";
	rename -uid "70AEE1A0-489F-4978-4BA4-1D81EA45E901";
createNode controller -n "Pinkey1_Joint_L_CTR0_tag";
	rename -uid "AFEAB082-4F7F-87CF-3CA9-66A12EE81B70";
createNode controller -n "Pinkey3_Joint_L_CTR2_tag";
	rename -uid "7C79B978-497E-1452-AFE6-E5B4DCEE92F0";
createNode controller -n "Pinkey4_Joint_L_CTR3_tag";
	rename -uid "94965A1D-47DF-9FAE-47F0-C08E77D65BCB";
createNode controller -n "Middle2_Joint_L_CTR1_tag";
	rename -uid "916BC4A9-4B60-758B-7554-A98D4DFD8AF0";
createNode controller -n "Middle1_Joint_L_CTR0_tag";
	rename -uid "EC98ACE5-4A1C-0693-B967-1FA324F27C6B";
createNode controller -n "Middle3_Joint_L_CTR2_tag";
	rename -uid "1031FBA3-4463-87F3-8212-EE8B4E780A13";
createNode controller -n "Middle4_Joint_L_CTR3_tag";
	rename -uid "286A3D9C-40C5-C587-857C-998052BC3AA3";
createNode controller -n "controller1";
	rename -uid "7A5E8F26-4B9E-DFD4-7129-1CA46098E021";
	setAttr ".cwsb" yes;
createNode controller -n "AT2_Joint_L_CTR1_tag";
	rename -uid "FDCAAE25-456F-B383-E1C9-57A7E4DAC026";
createNode controller -n "AT1_Joint_L_CTR0_tag";
	rename -uid "D12E483C-4FC7-08D1-4542-6F85E58509B5";
createNode controller -n "AT3_Joint_L_CTR2_tag";
	rename -uid "77494B80-4B4A-E82F-694A-D9AB0BBCC1ED";
createNode controller -n "Index2_Joint_L_CTR1_tag";
	rename -uid "CAD4D3AE-4DAC-5710-6D9E-0DBEB865A319";
createNode controller -n "Index1_Joint_L_CTR0_tag";
	rename -uid "8D9E66A8-405A-4445-EF6A-B3992EFBF9B9";
createNode controller -n "Index3_Joint_L_CTR2_tag";
	rename -uid "F3995DB4-43FD-3D38-C1EA-E0BC26D1122E";
createNode controller -n "Index4_Joint_L_CTR3_tag";
	rename -uid "4CD18E74-46FC-8724-9DF3-169007E17925";
createNode controller -n "Thumb2_Joint_L_CTR1_tag";
	rename -uid "9A53A734-4380-509B-C63E-8B905C7BCA70";
createNode controller -n "Thumb1_Joint_L_CTR0_tag";
	rename -uid "D23FBF8D-4AEC-3D64-7AA5-BC99DBCF8988";
createNode controller -n "Thumb3_Joint_L_CTR2_tag";
	rename -uid "35B7AAAA-47B7-649B-6840-E3A701C0A9BE";
createNode controller -n "Thumb4_Joint_L_CTR3_tag";
	rename -uid "A0CA1E15-4501-0A44-3C6D-CF9FFCFA1F43";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "BAEB6B3C-42D9-27DC-6547-D59BE8A427F3";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -421.42855468250531 -324.99998708566085 ;
	setAttr ".tgi[0].vh" -type "double2" 421.42855468250531 323.80951094248991 ;
	setAttr -s 216 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 3010;
	setAttr ".tgi[0].ni[0].y" 415.71429443359375;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 4012.857177734375;
	setAttr ".tgi[0].ni[1].y" 285.71429443359375;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 2607.142822265625;
	setAttr ".tgi[0].ni[2].y" 2821.428466796875;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 4012.857177734375;
	setAttr ".tgi[0].ni[3].y" 1300;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 4012.857177734375;
	setAttr ".tgi[0].ni[4].y" 184.28572082519531;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 4012.857177734375;
	setAttr ".tgi[0].ni[5].y" -728.5714111328125;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 4012.857177734375;
	setAttr ".tgi[0].ni[6].y" 82.857139587402344;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 4012.857177734375;
	setAttr ".tgi[0].ni[7].y" -424.28570556640625;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 2607.142822265625;
	setAttr ".tgi[0].ni[8].y" 3037.142822265625;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 4012.857177734375;
	setAttr ".tgi[0].ni[9].y" -1134.2857666015625;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 4012.857177734375;
	setAttr ".tgi[0].ni[10].y" -221.42857360839844;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 2607.142822265625;
	setAttr ".tgi[0].ni[11].y" 1858.5714111328125;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 4012.857177734375;
	setAttr ".tgi[0].ni[12].y" 1097.142822265625;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 4012.857177734375;
	setAttr ".tgi[0].ni[13].y" -1742.857177734375;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 4012.857177734375;
	setAttr ".tgi[0].ni[14].y" 488.57144165039063;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 1822.857177734375;
	setAttr ".tgi[0].ni[15].y" 1792.857177734375;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 1420;
	setAttr ".tgi[0].ni[16].y" 1635.7142333984375;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 4012.857177734375;
	setAttr ".tgi[0].ni[17].y" -120;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 4012.857177734375;
	setAttr ".tgi[0].ni[18].y" 387.14285278320313;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 2225.71435546875;
	setAttr ".tgi[0].ni[19].y" 1761.4285888671875;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 4012.857177734375;
	setAttr ".tgi[0].ni[20].y" 792.85711669921875;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 4012.857177734375;
	setAttr ".tgi[0].ni[21].y" -322.85714721679688;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 4012.857177734375;
	setAttr ".tgi[0].ni[22].y" -18.571428298950195;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 4012.857177734375;
	setAttr ".tgi[0].ni[23].y" 1401.4285888671875;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 4012.857177734375;
	setAttr ".tgi[0].ni[24].y" 894.28570556640625;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 4012.857177734375;
	setAttr ".tgi[0].ni[25].y" 1198.5714111328125;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 4012.857177734375;
	setAttr ".tgi[0].ni[26].y" 590;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 1822.857177734375;
	setAttr ".tgi[0].ni[27].y" 3062.857177734375;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 4012.857177734375;
	setAttr ".tgi[0].ni[28].y" 691.4285888671875;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 1420;
	setAttr ".tgi[0].ni[29].y" 2217.142822265625;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 1015.7142944335938;
	setAttr ".tgi[0].ni[30].y" 1758.5714111328125;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 611.4285888671875;
	setAttr ".tgi[0].ni[31].y" 2982.857177734375;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 4012.857177734375;
	setAttr ".tgi[0].ni[32].y" -525.71429443359375;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 2607.142822265625;
	setAttr ".tgi[0].ni[33].y" 3195.71435546875;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" -4008.571533203125;
	setAttr ".tgi[0].ni[34].y" 3644.28564453125;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 4012.857177734375;
	setAttr ".tgi[0].ni[35].y" -627.14288330078125;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 3624.28564453125;
	setAttr ".tgi[0].ni[36].y" -4635.71435546875;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 4012.857177734375;
	setAttr ".tgi[0].ni[37].y" -1032.857177734375;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 4012.857177734375;
	setAttr ".tgi[0].ni[38].y" 1807.142822265625;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 4012.857177734375;
	setAttr ".tgi[0].ni[39].y" 1705.7142333984375;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 4012.857177734375;
	setAttr ".tgi[0].ni[40].y" 1604.2857666015625;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 4012.857177734375;
	setAttr ".tgi[0].ni[41].y" 1502.857177734375;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" 4012.857177734375;
	setAttr ".tgi[0].ni[42].y" -1235.7142333984375;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 4012.857177734375;
	setAttr ".tgi[0].ni[43].y" -1337.142822265625;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 2225.71435546875;
	setAttr ".tgi[0].ni[44].y" -1117.142822265625;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 2607.142822265625;
	setAttr ".tgi[0].ni[45].y" -1412.857177734375;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 3624.28564453125;
	setAttr ".tgi[0].ni[46].y" -3175.71435546875;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 3624.28564453125;
	setAttr ".tgi[0].ni[47].y" 1848.5714111328125;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 3624.28564453125;
	setAttr ".tgi[0].ni[48].y" 1544.2857666015625;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 3317.142822265625;
	setAttr ".tgi[0].ni[49].y" 732.85711669921875;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 3624.28564453125;
	setAttr ".tgi[0].ni[50].y" -48.571430206298828;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 3317.142822265625;
	setAttr ".tgi[0].ni[51].y" -3411.428466796875;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" 3624.28564453125;
	setAttr ".tgi[0].ni[52].y" 1138.5714111328125;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" 3624.28564453125;
	setAttr ".tgi[0].ni[53].y" -2528.571533203125;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 3317.142822265625;
	setAttr ".tgi[0].ni[54].y" -2528.571533203125;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 3624.28564453125;
	setAttr ".tgi[0].ni[55].y" 1645.7142333984375;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" 3624.28564453125;
	setAttr ".tgi[0].ni[56].y" -1272.857177734375;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 3317.142822265625;
	setAttr ".tgi[0].ni[57].y" -387.14285278320313;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" 3624.28564453125;
	setAttr ".tgi[0].ni[58].y" -955.71429443359375;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" 611.4285888671875;
	setAttr ".tgi[0].ni[59].y" 274.28570556640625;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" 3317.142822265625;
	setAttr ".tgi[0].ni[60].y" 190;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" 3624.28564453125;
	setAttr ".tgi[0].ni[61].y" -594.28570556640625;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" 3624.28564453125;
	setAttr ".tgi[0].ni[62].y" 1341.4285888671875;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" 3624.28564453125;
	setAttr ".tgi[0].ni[63].y" 1240;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" 3624.28564453125;
	setAttr ".tgi[0].ni[64].y" 2007.142822265625;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" 3624.28564453125;
	setAttr ".tgi[0].ni[65].y" 1747.142822265625;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" 3317.142822265625;
	setAttr ".tgi[0].ni[66].y" 405.71429443359375;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" 4012.857177734375;
	setAttr ".tgi[0].ni[67].y" -1844.2857666015625;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" 4012.857177734375;
	setAttr ".tgi[0].ni[68].y" -1945.7142333984375;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" 3317.142822265625;
	setAttr ".tgi[0].ni[69].y" -70;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" 4012.857177734375;
	setAttr ".tgi[0].ni[70].y" -1641.4285888671875;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" 3624.28564453125;
	setAttr ".tgi[0].ni[71].y" -4248.5712890625;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" 4012.857177734375;
	setAttr ".tgi[0].ni[72].y" -830;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" -1695.7142333984375;
	setAttr ".tgi[0].ni[73].y" 3224.28564453125;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" 4012.857177734375;
	setAttr ".tgi[0].ni[74].y" -1540;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" -2714.28564453125;
	setAttr ".tgi[0].ni[75].y" 3438.571533203125;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" 4012.857177734375;
	setAttr ".tgi[0].ni[76].y" -2047.142822265625;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" 1420;
	setAttr ".tgi[0].ni[77].y" 905.71429443359375;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" 4012.857177734375;
	setAttr ".tgi[0].ni[78].y" -931.4285888671875;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" 4012.857177734375;
	setAttr ".tgi[0].ni[79].y" -1438.5714111328125;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" 2607.142822265625;
	setAttr ".tgi[0].ni[80].y" 1551.4285888671875;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" 4012.857177734375;
	setAttr ".tgi[0].ni[81].y" 995.71429443359375;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" 228.57142639160156;
	setAttr ".tgi[0].ni[82].y" 3250;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" 4012.857177734375;
	setAttr ".tgi[0].ni[83].y" -2148.571533203125;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" 4012.857177734375;
	setAttr ".tgi[0].ni[84].y" -2250;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" 3624.28564453125;
	setAttr ".tgi[0].ni[85].y" 2514.28564453125;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" 3317.142822265625;
	setAttr ".tgi[0].ni[86].y" -3252.857177734375;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" 1420;
	setAttr ".tgi[0].ni[87].y" 645.71429443359375;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" 3317.142822265625;
	setAttr ".tgi[0].ni[88].y" -228.57142639160156;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" 3624.28564453125;
	setAttr ".tgi[0].ni[89].y" -2052.857177734375;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" 3624.28564453125;
	setAttr ".tgi[0].ni[90].y" 3281.428466796875;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" 3624.28564453125;
	setAttr ".tgi[0].ni[91].y" 2412.857177734375;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" 2607.142822265625;
	setAttr ".tgi[0].ni[92].y" 54.285713195800781;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" 3624.28564453125;
	setAttr ".tgi[0].ni[93].y" -2845.71435546875;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" 3624.28564453125;
	setAttr ".tgi[0].ni[94].y" 2920;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" 3624.28564453125;
	setAttr ".tgi[0].ni[95].y" -150;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" 3317.142822265625;
	setAttr ".tgi[0].ni[96].y" 31.428571701049805;
	setAttr ".tgi[0].ni[96].nvs" 18304;
	setAttr ".tgi[0].ni[97].x" -3021.428466796875;
	setAttr ".tgi[0].ni[97].y" 2521.428466796875;
	setAttr ".tgi[0].ni[97].nvs" 18304;
	setAttr ".tgi[0].ni[98].x" 3624.28564453125;
	setAttr ".tgi[0].ni[98].y" -854.28570556640625;
	setAttr ".tgi[0].ni[98].nvs" 18304;
	setAttr ".tgi[0].ni[99].x" 3624.28564453125;
	setAttr ".tgi[0].ni[99].y" 2311.428466796875;
	setAttr ".tgi[0].ni[99].nvs" 18304;
	setAttr ".tgi[0].ni[100].x" 3624.28564453125;
	setAttr ".tgi[0].ni[100].y" 2210;
	setAttr ".tgi[0].ni[100].nvs" 18304;
	setAttr ".tgi[0].ni[101].x" 3624.28564453125;
	setAttr ".tgi[0].ni[101].y" -1374.2857666015625;
	setAttr ".tgi[0].ni[101].nvs" 18304;
	setAttr ".tgi[0].ni[102].x" 3624.28564453125;
	setAttr ".tgi[0].ni[102].y" 3180;
	setAttr ".tgi[0].ni[102].nvs" 18304;
	setAttr ".tgi[0].ni[103].x" 3317.142822265625;
	setAttr ".tgi[0].ni[103].y" -2211.428466796875;
	setAttr ".tgi[0].ni[103].nvs" 18304;
	setAttr ".tgi[0].ni[104].x" 3624.28564453125;
	setAttr ".tgi[0].ni[104].y" 2108.571533203125;
	setAttr ".tgi[0].ni[104].nvs" 18304;
	setAttr ".tgi[0].ni[105].x" 3010;
	setAttr ".tgi[0].ni[105].y" 314.28570556640625;
	setAttr ".tgi[0].ni[105].nvs" 18304;
	setAttr ".tgi[0].ni[106].x" 3624.28564453125;
	setAttr ".tgi[0].ni[106].y" -695.71429443359375;
	setAttr ".tgi[0].ni[106].nvs" 18304;
	setAttr ".tgi[0].ni[107].x" -3328.571533203125;
	setAttr ".tgi[0].ni[107].y" 2951.428466796875;
	setAttr ".tgi[0].ni[107].nvs" 18304;
	setAttr ".tgi[0].ni[108].x" 3317.142822265625;
	setAttr ".tgi[0].ni[108].y" -660;
	setAttr ".tgi[0].ni[108].nvs" 18304;
	setAttr ".tgi[0].ni[109].x" 3624.28564453125;
	setAttr ".tgi[0].ni[109].y" -1532.857177734375;
	setAttr ".tgi[0].ni[109].nvs" 18304;
	setAttr ".tgi[0].ni[110].x" 1420;
	setAttr ".tgi[0].ni[110].y" 430;
	setAttr ".tgi[0].ni[110].nvs" 18304;
	setAttr ".tgi[0].ni[111].x" 3317.142822265625;
	setAttr ".tgi[0].ni[111].y" -2764.28564453125;
	setAttr ".tgi[0].ni[111].nvs" 18304;
	setAttr ".tgi[0].ni[112].x" 3624.28564453125;
	setAttr ".tgi[0].ni[112].y" 2818.571533203125;
	setAttr ".tgi[0].ni[112].nvs" 18304;
	setAttr ".tgi[0].ni[113].x" 3624.28564453125;
	setAttr ".tgi[0].ni[113].y" -1894.2857666015625;
	setAttr ".tgi[0].ni[113].nvs" 18304;
	setAttr ".tgi[0].ni[114].x" 3624.28564453125;
	setAttr ".tgi[0].ni[114].y" 2615.71435546875;
	setAttr ".tgi[0].ni[114].nvs" 18304;
	setAttr ".tgi[0].ni[115].x" 3317.142822265625;
	setAttr ".tgi[0].ni[115].y" -2980;
	setAttr ".tgi[0].ni[115].nvs" 18304;
	setAttr ".tgi[0].ni[116].x" -4008.571533203125;
	setAttr ".tgi[0].ni[116].y" 3501.428466796875;
	setAttr ".tgi[0].ni[116].nvs" 18304;
	setAttr ".tgi[0].ni[117].x" 3317.142822265625;
	setAttr ".tgi[0].ni[117].y" -1894.2857666015625;
	setAttr ".tgi[0].ni[117].nvs" 18304;
	setAttr ".tgi[0].ni[118].x" 3317.142822265625;
	setAttr ".tgi[0].ni[118].y" -1024.2857666015625;
	setAttr ".tgi[0].ni[118].nvs" 18304;
	setAttr ".tgi[0].ni[119].x" 3624.28564453125;
	setAttr ".tgi[0].ni[119].y" -1114.2857666015625;
	setAttr ".tgi[0].ni[119].nvs" 18304;
	setAttr ".tgi[0].ni[120].x" 3624.28564453125;
	setAttr ".tgi[0].ni[120].y" 3021.428466796875;
	setAttr ".tgi[0].ni[120].nvs" 18304;
	setAttr ".tgi[0].ni[121].x" 3317.142822265625;
	setAttr ".tgi[0].ni[121].y" 574.28570556640625;
	setAttr ".tgi[0].ni[121].nvs" 18304;
	setAttr ".tgi[0].ni[122].x" 3624.28564453125;
	setAttr ".tgi[0].ni[122].y" 2717.142822265625;
	setAttr ".tgi[0].ni[122].nvs" 18304;
	setAttr ".tgi[0].ni[123].x" 3317.142822265625;
	setAttr ".tgi[0].ni[123].y" -1182.857177734375;
	setAttr ".tgi[0].ni[123].nvs" 18304;
	setAttr ".tgi[0].ni[124].x" 3624.28564453125;
	setAttr ".tgi[0].ni[124].y" -1634.2857666015625;
	setAttr ".tgi[0].ni[124].nvs" 18304;
	setAttr ".tgi[0].ni[125].x" 4417.14306640625;
	setAttr ".tgi[0].ni[125].y" 4700;
	setAttr ".tgi[0].ni[125].nvs" 18304;
	setAttr ".tgi[0].ni[126].x" -4315.71435546875;
	setAttr ".tgi[0].ni[126].y" 3520;
	setAttr ".tgi[0].ni[126].nvs" 18304;
	setAttr ".tgi[0].ni[127].x" 2607.142822265625;
	setAttr ".tgi[0].ni[127].y" -2501.428466796875;
	setAttr ".tgi[0].ni[127].nvs" 18304;
	setAttr ".tgi[0].ni[128].x" -3635.71435546875;
	setAttr ".tgi[0].ni[128].y" 3605.71435546875;
	setAttr ".tgi[0].ni[128].nvs" 18304;
	setAttr ".tgi[0].ni[129].x" 981.4285888671875;
	setAttr ".tgi[0].ni[129].y" -1770;
	setAttr ".tgi[0].ni[129].nvs" 18304;
	setAttr ".tgi[0].ni[130].x" -4622.85693359375;
	setAttr ".tgi[0].ni[130].y" 3418.571533203125;
	setAttr ".tgi[0].ni[130].nvs" 18304;
	setAttr ".tgi[0].ni[131].x" 4012.857177734375;
	setAttr ".tgi[0].ni[131].y" -2351.428466796875;
	setAttr ".tgi[0].ni[131].nvs" 18304;
	setAttr ".tgi[0].ni[132].x" 2225.71435546875;
	setAttr ".tgi[0].ni[132].y" -2410;
	setAttr ".tgi[0].ni[132].nvs" 18304;
	setAttr ".tgi[0].ni[133].x" 3010;
	setAttr ".tgi[0].ni[133].y" 1691.4285888671875;
	setAttr ".tgi[0].ni[133].nvs" 18304;
	setAttr ".tgi[0].ni[134].x" 2607.142822265625;
	setAttr ".tgi[0].ni[134].y" -982.85711669921875;
	setAttr ".tgi[0].ni[134].nvs" 18304;
	setAttr ".tgi[0].ni[135].x" 1822.857177734375;
	setAttr ".tgi[0].ni[135].y" -1732.857177734375;
	setAttr ".tgi[0].ni[135].nvs" 18304;
	setAttr ".tgi[0].ni[136].x" 1822.857177734375;
	setAttr ".tgi[0].ni[136].y" 790;
	setAttr ".tgi[0].ni[136].nvs" 18304;
	setAttr ".tgi[0].ni[137].x" 3010;
	setAttr ".tgi[0].ni[137].y" 1088.5714111328125;
	setAttr ".tgi[0].ni[137].nvs" 18304;
	setAttr ".tgi[0].ni[138].x" 1822.857177734375;
	setAttr ".tgi[0].ni[138].y" 1005.7142944335938;
	setAttr ".tgi[0].ni[138].nvs" 18304;
	setAttr ".tgi[0].ni[139].x" 3010;
	setAttr ".tgi[0].ni[139].y" 1532.857177734375;
	setAttr ".tgi[0].ni[139].nvs" 18304;
	setAttr ".tgi[0].ni[140].x" 3010;
	setAttr ".tgi[0].ni[140].y" -3245.71435546875;
	setAttr ".tgi[0].ni[140].nvs" 18304;
	setAttr ".tgi[0].ni[141].x" 2225.71435546875;
	setAttr ".tgi[0].ni[141].y" 1920;
	setAttr ".tgi[0].ni[141].nvs" 18304;
	setAttr ".tgi[0].ni[142].x" 1420;
	setAttr ".tgi[0].ni[142].y" 747.14288330078125;
	setAttr ".tgi[0].ni[142].nvs" 18304;
	setAttr ".tgi[0].ni[143].x" 1015.7142944335938;
	setAttr ".tgi[0].ni[143].y" 2707.142822265625;
	setAttr ".tgi[0].ni[143].nvs" 18304;
	setAttr ".tgi[0].ni[144].x" 3010;
	setAttr ".tgi[0].ni[144].y" -2585.71435546875;
	setAttr ".tgi[0].ni[144].nvs" 18304;
	setAttr ".tgi[0].ni[145].x" -1307.142822265625;
	setAttr ".tgi[0].ni[145].y" 2707.142822265625;
	setAttr ".tgi[0].ni[145].nvs" 18304;
	setAttr ".tgi[0].ni[146].x" 2225.71435546875;
	setAttr ".tgi[0].ni[146].y" -2625.71435546875;
	setAttr ".tgi[0].ni[146].nvs" 18304;
	setAttr ".tgi[0].ni[147].x" 2607.142822265625;
	setAttr ".tgi[0].ni[147].y" -104.28571319580078;
	setAttr ".tgi[0].ni[147].nvs" 18304;
	setAttr ".tgi[0].ni[148].x" 961.4285888671875;
	setAttr ".tgi[0].ni[148].y" -210;
	setAttr ".tgi[0].ni[148].nvs" 18304;
	setAttr ".tgi[0].ni[149].x" 2225.71435546875;
	setAttr ".tgi[0].ni[149].y" 1202.857177734375;
	setAttr ".tgi[0].ni[149].nvs" 18304;
	setAttr ".tgi[0].ni[150].x" 4417.14306640625;
	setAttr ".tgi[0].ni[150].y" 4598.5712890625;
	setAttr ".tgi[0].ni[150].nvs" 18304;
	setAttr ".tgi[0].ni[151].x" 4417.14306640625;
	setAttr ".tgi[0].ni[151].y" 4497.14306640625;
	setAttr ".tgi[0].ni[151].nvs" 18304;
	setAttr ".tgi[0].ni[152].x" -3328.571533203125;
	setAttr ".tgi[0].ni[152].y" 2388.571533203125;
	setAttr ".tgi[0].ni[152].nvs" 18304;
	setAttr ".tgi[0].ni[153].x" -1000;
	setAttr ".tgi[0].ni[153].y" 1258.5714111328125;
	setAttr ".tgi[0].ni[153].nvs" 18304;
	setAttr ".tgi[0].ni[154].x" -4008.571533203125;
	setAttr ".tgi[0].ni[154].y" 3228.571533203125;
	setAttr ".tgi[0].ni[154].nvs" 18304;
	setAttr ".tgi[0].ni[155].x" -4622.85693359375;
	setAttr ".tgi[0].ni[155].y" 3621.428466796875;
	setAttr ".tgi[0].ni[155].nvs" 18304;
	setAttr ".tgi[0].ni[156].x" 3010;
	setAttr ".tgi[0].ni[156].y" 2055.71435546875;
	setAttr ".tgi[0].ni[156].nvs" 18304;
	setAttr ".tgi[0].ni[157].x" 367.14285278320313;
	setAttr ".tgi[0].ni[157].y" 21.428571701049805;
	setAttr ".tgi[0].ni[157].nvs" 18304;
	setAttr ".tgi[0].ni[158].x" 1822.857177734375;
	setAttr ".tgi[0].ni[158].y" -2717.142822265625;
	setAttr ".tgi[0].ni[158].nvs" 18304;
	setAttr ".tgi[0].ni[159].x" 981.4285888671875;
	setAttr ".tgi[0].ni[159].y" -1380;
	setAttr ".tgi[0].ni[159].nvs" 18304;
	setAttr ".tgi[0].ni[160].x" 3010;
	setAttr ".tgi[0].ni[160].y" -3030;
	setAttr ".tgi[0].ni[160].nvs" 18304;
	setAttr ".tgi[0].ni[161].x" -692.85711669921875;
	setAttr ".tgi[0].ni[161].y" 772.85711669921875;
	setAttr ".tgi[0].ni[161].nvs" 18304;
	setAttr ".tgi[0].ni[162].x" 2607.142822265625;
	setAttr ".tgi[0].ni[162].y" 440;
	setAttr ".tgi[0].ni[162].nvs" 18304;
	setAttr ".tgi[0].ni[163].x" 1822.857177734375;
	setAttr ".tgi[0].ni[163].y" -737.14288330078125;
	setAttr ".tgi[0].ni[163].nvs" 18304;
	setAttr ".tgi[0].ni[164].x" 981.4285888671875;
	setAttr ".tgi[0].ni[164].y" -1250;
	setAttr ".tgi[0].ni[164].nvs" 18304;
	setAttr ".tgi[0].ni[165].x" -4622.85693359375;
	setAttr ".tgi[0].ni[165].y" 3317.142822265625;
	setAttr ".tgi[0].ni[165].nvs" 18304;
	setAttr ".tgi[0].ni[166].x" 367.14285278320313;
	setAttr ".tgi[0].ni[166].y" 122.85713958740234;
	setAttr ".tgi[0].ni[166].nvs" 18304;
	setAttr ".tgi[0].ni[167].x" -4622.85693359375;
	setAttr ".tgi[0].ni[167].y" 3722.857177734375;
	setAttr ".tgi[0].ni[167].nvs" 18304;
	setAttr ".tgi[0].ni[168].x" 367.14285278320313;
	setAttr ".tgi[0].ni[168].y" 224.28572082519531;
	setAttr ".tgi[0].ni[168].nvs" 18304;
	setAttr ".tgi[0].ni[169].x" -4622.85693359375;
	setAttr ".tgi[0].ni[169].y" 3520;
	setAttr ".tgi[0].ni[169].nvs" 18304;
	setAttr ".tgi[0].ni[170].x" 981.4285888671875;
	setAttr ".tgi[0].ni[170].y" -1120;
	setAttr ".tgi[0].ni[170].nvs" 18304;
	setAttr ".tgi[0].ni[171].x" 981.4285888671875;
	setAttr ".tgi[0].ni[171].y" -990;
	setAttr ".tgi[0].ni[171].nvs" 18304;
	setAttr ".tgi[0].ni[172].x" 981.4285888671875;
	setAttr ".tgi[0].ni[172].y" -860;
	setAttr ".tgi[0].ni[172].nvs" 18304;
	setAttr ".tgi[0].ni[173].x" 981.4285888671875;
	setAttr ".tgi[0].ni[173].y" -730;
	setAttr ".tgi[0].ni[173].nvs" 18304;
	setAttr ".tgi[0].ni[174].x" 981.4285888671875;
	setAttr ".tgi[0].ni[174].y" -600;
	setAttr ".tgi[0].ni[174].nvs" 18304;
	setAttr ".tgi[0].ni[175].x" 981.4285888671875;
	setAttr ".tgi[0].ni[175].y" -470;
	setAttr ".tgi[0].ni[175].nvs" 18304;
	setAttr ".tgi[0].ni[176].x" 981.4285888671875;
	setAttr ".tgi[0].ni[176].y" -340;
	setAttr ".tgi[0].ni[176].nvs" 18304;
	setAttr ".tgi[0].ni[177].x" 367.14285278320313;
	setAttr ".tgi[0].ni[177].y" -80;
	setAttr ".tgi[0].ni[177].nvs" 18304;
	setAttr ".tgi[0].ni[178].x" 3624.28564453125;
	setAttr ".tgi[0].ni[178].y" 3788.571533203125;
	setAttr ".tgi[0].ni[178].nvs" 18304;
	setAttr ".tgi[0].ni[179].x" 3624.28564453125;
	setAttr ".tgi[0].ni[179].y" 1442.857177734375;
	setAttr ".tgi[0].ni[179].nvs" 18304;
	setAttr ".tgi[0].ni[180].x" 4012.857177734375;
	setAttr ".tgi[0].ni[180].y" 4431.4287109375;
	setAttr ".tgi[0].ni[180].nvs" 18304;
	setAttr ".tgi[0].ni[181].x" 3624.28564453125;
	setAttr ".tgi[0].ni[181].y" -2154.28564453125;
	setAttr ".tgi[0].ni[181].nvs" 18304;
	setAttr ".tgi[0].ni[182].x" 4417.14306640625;
	setAttr ".tgi[0].ni[182].y" 4380;
	setAttr ".tgi[0].ni[182].nvs" 18304;
	setAttr ".tgi[0].ni[183].x" 3317.142822265625;
	setAttr ".tgi[0].ni[183].y" -1678.5714111328125;
	setAttr ".tgi[0].ni[183].nvs" 18304;
	setAttr ".tgi[0].ni[184].x" 3317.142822265625;
	setAttr ".tgi[0].ni[184].y" -2052.857177734375;
	setAttr ".tgi[0].ni[184].nvs" 18304;
	setAttr ".tgi[0].ni[185].x" -2714.28564453125;
	setAttr ".tgi[0].ni[185].y" 1462.857177734375;
	setAttr ".tgi[0].ni[185].nvs" 18304;
	setAttr ".tgi[0].ni[186].x" 2225.71435546875;
	setAttr ".tgi[0].ni[186].y" -507.14285278320313;
	setAttr ".tgi[0].ni[186].nvs" 18304;
	setAttr ".tgi[0].ni[187].x" -78.571426391601563;
	setAttr ".tgi[0].ni[187].y" -280;
	setAttr ".tgi[0].ni[187].nvs" 18304;
	setAttr ".tgi[0].ni[188].x" 3624.28564453125;
	setAttr ".tgi[0].ni[188].y" -1792.857177734375;
	setAttr ".tgi[0].ni[188].nvs" 18304;
	setAttr ".tgi[0].ni[189].x" 1420;
	setAttr ".tgi[0].ni[189].y" -717.14288330078125;
	setAttr ".tgi[0].ni[189].nvs" 18304;
	setAttr ".tgi[0].ni[190].x" 1015.7142944335938;
	setAttr ".tgi[0].ni[190].y" 2808.571533203125;
	setAttr ".tgi[0].ni[190].nvs" 18304;
	setAttr ".tgi[0].ni[191].x" 3317.142822265625;
	setAttr ".tgi[0].ni[191].y" -3570;
	setAttr ".tgi[0].ni[191].nvs" 18304;
	setAttr ".tgi[0].ni[192].x" 3624.28564453125;
	setAttr ".tgi[0].ni[192].y" 3991.428466796875;
	setAttr ".tgi[0].ni[192].nvs" 18304;
	setAttr ".tgi[0].ni[193].x" 3624.28564453125;
	setAttr ".tgi[0].ni[193].y" -2744.28564453125;
	setAttr ".tgi[0].ni[193].nvs" 18304;
	setAttr ".tgi[0].ni[194].x" 4417.14306640625;
	setAttr ".tgi[0].ni[194].y" 4264.28564453125;
	setAttr ".tgi[0].ni[194].nvs" 18304;
	setAttr ".tgi[0].ni[195].x" 3624.28564453125;
	setAttr ".tgi[0].ni[195].y" 3687.142822265625;
	setAttr ".tgi[0].ni[195].nvs" 18304;
	setAttr ".tgi[0].ni[196].x" 674.28570556640625;
	setAttr ".tgi[0].ni[196].y" 84.285713195800781;
	setAttr ".tgi[0].ni[196].nvs" 18304;
	setAttr ".tgi[0].ni[197].x" 4417.14306640625;
	setAttr ".tgi[0].ni[197].y" 3251.428466796875;
	setAttr ".tgi[0].ni[197].nvs" 18304;
	setAttr ".tgi[0].ni[198].x" 3317.142822265625;
	setAttr ".tgi[0].ni[198].y" -2370;
	setAttr ".tgi[0].ni[198].nvs" 18304;
	setAttr ".tgi[0].ni[199].x" -2310;
	setAttr ".tgi[0].ni[199].y" 2631.428466796875;
	setAttr ".tgi[0].ni[199].nvs" 18304;
	setAttr ".tgi[0].ni[200].x" 4012.857177734375;
	setAttr ".tgi[0].ni[200].y" 1965.7142333984375;
	setAttr ".tgi[0].ni[200].nvs" 18304;
	setAttr ".tgi[0].ni[201].x" 3624.28564453125;
	setAttr ".tgi[0].ni[201].y" -2370;
	setAttr ".tgi[0].ni[201].nvs" 18304;
	setAttr ".tgi[0].ni[202].x" 3624.28564453125;
	setAttr ".tgi[0].ni[202].y" 4092.857177734375;
	setAttr ".tgi[0].ni[202].nvs" 18304;
	setAttr ".tgi[0].ni[203].x" 4417.14306640625;
	setAttr ".tgi[0].ni[203].y" 1915.7142333984375;
	setAttr ".tgi[0].ni[203].nvs" 18304;
	setAttr ".tgi[0].ni[204].x" -2002.857177734375;
	setAttr ".tgi[0].ni[204].y" 1042.857177734375;
	setAttr ".tgi[0].ni[204].nvs" 18304;
	setAttr ".tgi[0].ni[205].x" 3624.28564453125;
	setAttr ".tgi[0].ni[205].y" 4365.71435546875;
	setAttr ".tgi[0].ni[205].nvs" 18304;
	setAttr ".tgi[0].ni[206].x" 981.4285888671875;
	setAttr ".tgi[0].ni[206].y" 71.428573608398438;
	setAttr ".tgi[0].ni[206].nvs" 18304;
	setAttr ".tgi[0].ni[207].x" 228.57142639160156;
	setAttr ".tgi[0].ni[207].y" -212.85714721679688;
	setAttr ".tgi[0].ni[207].nvs" 18304;
	setAttr ".tgi[0].ni[208].x" 611.4285888671875;
	setAttr ".tgi[0].ni[208].y" 3141.428466796875;
	setAttr ".tgi[0].ni[208].nvs" 18304;
	setAttr ".tgi[0].ni[209].x" 3624.28564453125;
	setAttr ".tgi[0].ni[209].y" 3890;
	setAttr ".tgi[0].ni[209].nvs" 18304;
	setAttr ".tgi[0].ni[210].x" 3624.28564453125;
	setAttr ".tgi[0].ni[210].y" 3484.28564453125;
	setAttr ".tgi[0].ni[210].nvs" 18304;
	setAttr ".tgi[0].ni[211].x" 1822.857177734375;
	setAttr ".tgi[0].ni[211].y" -334.28570556640625;
	setAttr ".tgi[0].ni[211].nvs" 18304;
	setAttr ".tgi[0].ni[212].x" 3624.28564453125;
	setAttr ".tgi[0].ni[212].y" 3585.71435546875;
	setAttr ".tgi[0].ni[212].nvs" 18304;
	setAttr ".tgi[0].ni[213].x" -385.71429443359375;
	setAttr ".tgi[0].ni[213].y" -195.71427917480469;
	setAttr ".tgi[0].ni[213].nvs" 18304;
	setAttr ".tgi[0].ni[214].x" 3624.28564453125;
	setAttr ".tgi[0].ni[214].y" 3382.857177734375;
	setAttr ".tgi[0].ni[214].nvs" 18304;
	setAttr ".tgi[0].ni[215].x" 4012.857177734375;
	setAttr ".tgi[0].ni[215].y" 3302.857177734375;
	setAttr ".tgi[0].ni[215].nvs" 18304;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 6 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -cb on ".macc";
	setAttr -cb on ".macd";
	setAttr -cb on ".macq";
	setAttr -k on ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr ".ren" -type "string" "arnold";
	setAttr -av -k on ".esr";
	setAttr -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av -k on ".outf";
	setAttr -cb on ".imfkey";
	setAttr -k on ".gama";
	setAttr -cb on ".an";
	setAttr -cb on ".ar";
	setAttr -k on ".fs";
	setAttr -k on ".ef";
	setAttr -av -k on ".bfs";
	setAttr -cb on ".me";
	setAttr -cb on ".se";
	setAttr -k on ".be";
	setAttr -cb on ".ep";
	setAttr -k on ".fec";
	setAttr -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -cb on ".pff";
	setAttr -cb on ".peie";
	setAttr -cb on ".ifp";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".soll";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -k on ".shs";
	setAttr -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".itf";
	setAttr -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -k on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -k on ".pram";
	setAttr -k on ".poam";
	setAttr -k on ".prlm";
	setAttr -k on ".polm";
	setAttr -cb on ".prm";
	setAttr -cb on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -k on ".bls";
	setAttr -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
	setAttr -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -cb on ".ope";
	setAttr -cb on ".oppf";
	setAttr -cb on ".hbl";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av ".w";
	setAttr -av ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av ".dar";
	setAttr -av -k on ".ldar";
	setAttr -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -k on ".isu";
	setAttr -k on ".pdu";
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
connectAttr "Cylinder_Poly.rigRoot" "TEMP_RigRoot.IKSShape";
connectAttr "Cube_Poly.rigRoot" "TEMP_RigRoot.JointShape";
connectAttr "Sphere_Poly.rigRoot" "TEMP_RigRoot.IKPVShape";
connectAttr "Circle_Wire.rigRoot" "TEMP_RigRoot.LookAtShape";
connectAttr "Cube_Poly.rigRoot" "TEMP_RigRoot.FKRShape";
connectAttr "Square_Wire.rigRoot" "TEMP_RigRoot.EmptyShape";
connectAttr "TEMP_RigRoot.jointsParentGroup" "JOINTS.rigRoot";
connectAttr "Joint_Disp.di" "Clav_Clav01_L_JNT.do";
connectAttr "Clav_Limb_L_NODE.joints" "Clav_Clav01_L_JNT.limb";
connectAttr "Clav_Clav01_L_JNT_parentConstraint1.ctx" "Clav_Clav01_L_JNT.tx";
connectAttr "Clav_Clav01_L_JNT_parentConstraint1.cty" "Clav_Clav01_L_JNT.ty";
connectAttr "Clav_Clav01_L_JNT_parentConstraint1.ctz" "Clav_Clav01_L_JNT.tz";
connectAttr "Clav_Clav01_L_JNT_parentConstraint1.crx" "Clav_Clav01_L_JNT.rx";
connectAttr "Clav_Clav01_L_JNT_parentConstraint1.cry" "Clav_Clav01_L_JNT.ry";
connectAttr "Clav_Clav01_L_JNT_parentConstraint1.crz" "Clav_Clav01_L_JNT.rz";
connectAttr "Clav_Clav01_L_JNT.s" "Arm_Shoulder_L_JNT.is";
connectAttr "Joint_Disp.di" "Arm_Shoulder_L_JNT.do";
connectAttr "Arm_Limb_L_NODE.joints" "Arm_Shoulder_L_JNT.limb";
connectAttr "Arm_Shoulder_L_JNT_parentConstraint1.ctx" "Arm_Shoulder_L_JNT.tx";
connectAttr "Arm_Shoulder_L_JNT_parentConstraint1.cty" "Arm_Shoulder_L_JNT.ty";
connectAttr "Arm_Shoulder_L_JNT_parentConstraint1.ctz" "Arm_Shoulder_L_JNT.tz";
connectAttr "Arm_Shoulder_L_JNT_parentConstraint1.crx" "Arm_Shoulder_L_JNT.rx";
connectAttr "Arm_Shoulder_L_JNT_parentConstraint1.cry" "Arm_Shoulder_L_JNT.ry";
connectAttr "Arm_Shoulder_L_JNT_parentConstraint1.crz" "Arm_Shoulder_L_JNT.rz";
connectAttr "Arm_Shoulder_L_JNT.s" "Arm_Elbow_L_JNT.is";
connectAttr "Joint_Disp.di" "Arm_Elbow_L_JNT.do";
connectAttr "Arm_Limb_L_NODE.joints" "Arm_Elbow_L_JNT.limb";
connectAttr "Arm_Elbow_L_JNT_parentConstraint1.ctx" "Arm_Elbow_L_JNT.tx";
connectAttr "Arm_Elbow_L_JNT_parentConstraint1.cty" "Arm_Elbow_L_JNT.ty";
connectAttr "Arm_Elbow_L_JNT_parentConstraint1.ctz" "Arm_Elbow_L_JNT.tz";
connectAttr "Arm_Elbow_L_JNT_parentConstraint1.crx" "Arm_Elbow_L_JNT.rx";
connectAttr "Arm_Elbow_L_JNT_parentConstraint1.cry" "Arm_Elbow_L_JNT.ry";
connectAttr "Arm_Elbow_L_JNT_parentConstraint1.crz" "Arm_Elbow_L_JNT.rz";
connectAttr "Arm_Elbow_L_JNT.s" "ArmTwist_AT1_L_JNT.is";
connectAttr "Joint_Disp.di" "ArmTwist_AT1_L_JNT.do";
connectAttr "ArmTwist_Limb_L_NODE.joints" "ArmTwist_AT1_L_JNT.limb";
connectAttr "ArmTwist_AT1_L_JNT_parentConstraint1.ctx" "ArmTwist_AT1_L_JNT.tx";
connectAttr "ArmTwist_AT1_L_JNT_parentConstraint1.cty" "ArmTwist_AT1_L_JNT.ty";
connectAttr "ArmTwist_AT1_L_JNT_parentConstraint1.ctz" "ArmTwist_AT1_L_JNT.tz";
connectAttr "ArmTwist_AT1_L_JNT_parentConstraint1.crx" "ArmTwist_AT1_L_JNT.rx";
connectAttr "ArmTwist_AT1_L_JNT_parentConstraint1.cry" "ArmTwist_AT1_L_JNT.ry";
connectAttr "ArmTwist_AT1_L_JNT_parentConstraint1.crz" "ArmTwist_AT1_L_JNT.rz";
connectAttr "ArmTwist_AT1_L_JNT.ro" "ArmTwist_AT1_L_JNT_parentConstraint1.cro";
connectAttr "ArmTwist_AT1_L_JNT.pim" "ArmTwist_AT1_L_JNT_parentConstraint1.cpim"
		;
connectAttr "ArmTwist_AT1_L_JNT.rp" "ArmTwist_AT1_L_JNT_parentConstraint1.crp";
connectAttr "ArmTwist_AT1_L_JNT.rpt" "ArmTwist_AT1_L_JNT_parentConstraint1.crt";
connectAttr "ArmTwist_AT1_L_JNT.jo" "ArmTwist_AT1_L_JNT_parentConstraint1.cjo";
connectAttr "AT1_Joint_L_CTR0.t" "ArmTwist_AT1_L_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "AT1_Joint_L_CTR0.rp" "ArmTwist_AT1_L_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "AT1_Joint_L_CTR0.rpt" "ArmTwist_AT1_L_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "AT1_Joint_L_CTR0.r" "ArmTwist_AT1_L_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "AT1_Joint_L_CTR0.ro" "ArmTwist_AT1_L_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "AT1_Joint_L_CTR0.s" "ArmTwist_AT1_L_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "AT1_Joint_L_CTR0.pm" "ArmTwist_AT1_L_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "ArmTwist_AT1_L_JNT_parentConstraint1.w0" "ArmTwist_AT1_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_Elbow_L_JNT.s" "ArmTwist_AT2_L_JNT.is";
connectAttr "Joint_Disp.di" "ArmTwist_AT2_L_JNT.do";
connectAttr "ArmTwist_Limb_L_NODE.joints" "ArmTwist_AT2_L_JNT.limb";
connectAttr "ArmTwist_AT2_L_JNT_parentConstraint1.ctx" "ArmTwist_AT2_L_JNT.tx";
connectAttr "ArmTwist_AT2_L_JNT_parentConstraint1.cty" "ArmTwist_AT2_L_JNT.ty";
connectAttr "ArmTwist_AT2_L_JNT_parentConstraint1.ctz" "ArmTwist_AT2_L_JNT.tz";
connectAttr "ArmTwist_AT2_L_JNT_parentConstraint1.crx" "ArmTwist_AT2_L_JNT.rx";
connectAttr "ArmTwist_AT2_L_JNT_parentConstraint1.cry" "ArmTwist_AT2_L_JNT.ry";
connectAttr "ArmTwist_AT2_L_JNT_parentConstraint1.crz" "ArmTwist_AT2_L_JNT.rz";
connectAttr "ArmTwist_AT2_L_JNT.ro" "ArmTwist_AT2_L_JNT_parentConstraint1.cro";
connectAttr "ArmTwist_AT2_L_JNT.pim" "ArmTwist_AT2_L_JNT_parentConstraint1.cpim"
		;
connectAttr "ArmTwist_AT2_L_JNT.rp" "ArmTwist_AT2_L_JNT_parentConstraint1.crp";
connectAttr "ArmTwist_AT2_L_JNT.rpt" "ArmTwist_AT2_L_JNT_parentConstraint1.crt";
connectAttr "ArmTwist_AT2_L_JNT.jo" "ArmTwist_AT2_L_JNT_parentConstraint1.cjo";
connectAttr "AT2_Joint_L_CTR1.t" "ArmTwist_AT2_L_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "AT2_Joint_L_CTR1.rp" "ArmTwist_AT2_L_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "AT2_Joint_L_CTR1.rpt" "ArmTwist_AT2_L_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "AT2_Joint_L_CTR1.r" "ArmTwist_AT2_L_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "AT2_Joint_L_CTR1.ro" "ArmTwist_AT2_L_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "AT2_Joint_L_CTR1.s" "ArmTwist_AT2_L_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "AT2_Joint_L_CTR1.pm" "ArmTwist_AT2_L_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "ArmTwist_AT2_L_JNT_parentConstraint1.w0" "ArmTwist_AT2_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_Elbow_L_JNT.s" "ArmTwist_AT3_L_JNT.is";
connectAttr "Joint_Disp.di" "ArmTwist_AT3_L_JNT.do";
connectAttr "ArmTwist_Limb_L_NODE.joints" "ArmTwist_AT3_L_JNT.limb";
connectAttr "ArmTwist_AT3_L_JNT_parentConstraint1.ctx" "ArmTwist_AT3_L_JNT.tx";
connectAttr "ArmTwist_AT3_L_JNT_parentConstraint1.cty" "ArmTwist_AT3_L_JNT.ty";
connectAttr "ArmTwist_AT3_L_JNT_parentConstraint1.ctz" "ArmTwist_AT3_L_JNT.tz";
connectAttr "ArmTwist_AT3_L_JNT_parentConstraint1.crx" "ArmTwist_AT3_L_JNT.rx";
connectAttr "ArmTwist_AT3_L_JNT_parentConstraint1.cry" "ArmTwist_AT3_L_JNT.ry";
connectAttr "ArmTwist_AT3_L_JNT_parentConstraint1.crz" "ArmTwist_AT3_L_JNT.rz";
connectAttr "ArmTwist_AT3_L_JNT.ro" "ArmTwist_AT3_L_JNT_parentConstraint1.cro";
connectAttr "ArmTwist_AT3_L_JNT.pim" "ArmTwist_AT3_L_JNT_parentConstraint1.cpim"
		;
connectAttr "ArmTwist_AT3_L_JNT.rp" "ArmTwist_AT3_L_JNT_parentConstraint1.crp";
connectAttr "ArmTwist_AT3_L_JNT.rpt" "ArmTwist_AT3_L_JNT_parentConstraint1.crt";
connectAttr "ArmTwist_AT3_L_JNT.jo" "ArmTwist_AT3_L_JNT_parentConstraint1.cjo";
connectAttr "AT3_Joint_L_CTR2.t" "ArmTwist_AT3_L_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "AT3_Joint_L_CTR2.rp" "ArmTwist_AT3_L_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "AT3_Joint_L_CTR2.rpt" "ArmTwist_AT3_L_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "AT3_Joint_L_CTR2.r" "ArmTwist_AT3_L_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "AT3_Joint_L_CTR2.ro" "ArmTwist_AT3_L_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "AT3_Joint_L_CTR2.s" "ArmTwist_AT3_L_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "AT3_Joint_L_CTR2.pm" "ArmTwist_AT3_L_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "ArmTwist_AT3_L_JNT_parentConstraint1.w0" "ArmTwist_AT3_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_Elbow_L_JNT.s" "Arm_Wrist_L_JNT.is";
connectAttr "Joint_Disp.di" "Arm_Wrist_L_JNT.do";
connectAttr "Arm_Limb_L_NODE.joints" "Arm_Wrist_L_JNT.limb";
connectAttr "Arm_Wrist_L_JNT_parentConstraint1.ctx" "Arm_Wrist_L_JNT.tx";
connectAttr "Arm_Wrist_L_JNT_parentConstraint1.cty" "Arm_Wrist_L_JNT.ty";
connectAttr "Arm_Wrist_L_JNT_parentConstraint1.ctz" "Arm_Wrist_L_JNT.tz";
connectAttr "Arm_Wrist_L_JNT_parentConstraint1.crx" "Arm_Wrist_L_JNT.rx";
connectAttr "Arm_Wrist_L_JNT_parentConstraint1.cry" "Arm_Wrist_L_JNT.ry";
connectAttr "Arm_Wrist_L_JNT_parentConstraint1.crz" "Arm_Wrist_L_JNT.rz";
connectAttr "Arm_Wrist_L_JNT.s" "Thumb_Thumb1_L_JNT.is";
connectAttr "Joint_Disp.di" "Thumb_Thumb1_L_JNT.do";
connectAttr "Thumb_Limb_L_NODE.joints" "Thumb_Thumb1_L_JNT.limb";
connectAttr "Thumb_Thumb1_L_JNT_parentConstraint1.ctx" "Thumb_Thumb1_L_JNT.tx";
connectAttr "Thumb_Thumb1_L_JNT_parentConstraint1.cty" "Thumb_Thumb1_L_JNT.ty";
connectAttr "Thumb_Thumb1_L_JNT_parentConstraint1.ctz" "Thumb_Thumb1_L_JNT.tz";
connectAttr "Thumb_Thumb1_L_JNT_parentConstraint1.crx" "Thumb_Thumb1_L_JNT.rx";
connectAttr "Thumb_Thumb1_L_JNT_parentConstraint1.cry" "Thumb_Thumb1_L_JNT.ry";
connectAttr "Thumb_Thumb1_L_JNT_parentConstraint1.crz" "Thumb_Thumb1_L_JNT.rz";
connectAttr "Thumb_Thumb1_L_JNT.s" "Thumb_Thumb2_L_JNT.is";
connectAttr "Joint_Disp.di" "Thumb_Thumb2_L_JNT.do";
connectAttr "Thumb_Limb_L_NODE.joints" "Thumb_Thumb2_L_JNT.limb";
connectAttr "Thumb_Thumb2_L_JNT_parentConstraint1.ctx" "Thumb_Thumb2_L_JNT.tx";
connectAttr "Thumb_Thumb2_L_JNT_parentConstraint1.cty" "Thumb_Thumb2_L_JNT.ty";
connectAttr "Thumb_Thumb2_L_JNT_parentConstraint1.ctz" "Thumb_Thumb2_L_JNT.tz";
connectAttr "Thumb_Thumb2_L_JNT_parentConstraint1.crx" "Thumb_Thumb2_L_JNT.rx";
connectAttr "Thumb_Thumb2_L_JNT_parentConstraint1.cry" "Thumb_Thumb2_L_JNT.ry";
connectAttr "Thumb_Thumb2_L_JNT_parentConstraint1.crz" "Thumb_Thumb2_L_JNT.rz";
connectAttr "Thumb_Thumb2_L_JNT.s" "Thumb_Thumb3_L_JNT.is";
connectAttr "Joint_Disp.di" "Thumb_Thumb3_L_JNT.do";
connectAttr "Thumb_Limb_L_NODE.joints" "Thumb_Thumb3_L_JNT.limb";
connectAttr "Thumb_Thumb3_L_JNT_parentConstraint1.ctx" "Thumb_Thumb3_L_JNT.tx";
connectAttr "Thumb_Thumb3_L_JNT_parentConstraint1.cty" "Thumb_Thumb3_L_JNT.ty";
connectAttr "Thumb_Thumb3_L_JNT_parentConstraint1.ctz" "Thumb_Thumb3_L_JNT.tz";
connectAttr "Thumb_Thumb3_L_JNT_parentConstraint1.crx" "Thumb_Thumb3_L_JNT.rx";
connectAttr "Thumb_Thumb3_L_JNT_parentConstraint1.cry" "Thumb_Thumb3_L_JNT.ry";
connectAttr "Thumb_Thumb3_L_JNT_parentConstraint1.crz" "Thumb_Thumb3_L_JNT.rz";
connectAttr "Thumb_Thumb3_L_JNT.s" "Thumb_Thumb4_L_JNT.is";
connectAttr "Joint_Disp.di" "Thumb_Thumb4_L_JNT.do";
connectAttr "Thumb_Limb_L_NODE.joints" "Thumb_Thumb4_L_JNT.limb";
connectAttr "Thumb_Thumb4_L_JNT_parentConstraint1.ctx" "Thumb_Thumb4_L_JNT.tx";
connectAttr "Thumb_Thumb4_L_JNT_parentConstraint1.cty" "Thumb_Thumb4_L_JNT.ty";
connectAttr "Thumb_Thumb4_L_JNT_parentConstraint1.ctz" "Thumb_Thumb4_L_JNT.tz";
connectAttr "Thumb_Thumb4_L_JNT_parentConstraint1.crx" "Thumb_Thumb4_L_JNT.rx";
connectAttr "Thumb_Thumb4_L_JNT_parentConstraint1.cry" "Thumb_Thumb4_L_JNT.ry";
connectAttr "Thumb_Thumb4_L_JNT_parentConstraint1.crz" "Thumb_Thumb4_L_JNT.rz";
connectAttr "Thumb_Thumb4_L_JNT.ro" "Thumb_Thumb4_L_JNT_parentConstraint1.cro";
connectAttr "Thumb_Thumb4_L_JNT.pim" "Thumb_Thumb4_L_JNT_parentConstraint1.cpim"
		;
connectAttr "Thumb_Thumb4_L_JNT.rp" "Thumb_Thumb4_L_JNT_parentConstraint1.crp";
connectAttr "Thumb_Thumb4_L_JNT.rpt" "Thumb_Thumb4_L_JNT_parentConstraint1.crt";
connectAttr "Thumb_Thumb4_L_JNT.jo" "Thumb_Thumb4_L_JNT_parentConstraint1.cjo";
connectAttr "Thumb4_Joint_L_CTR3.t" "Thumb_Thumb4_L_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Thumb4_Joint_L_CTR3.rp" "Thumb_Thumb4_L_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Thumb4_Joint_L_CTR3.rpt" "Thumb_Thumb4_L_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Thumb4_Joint_L_CTR3.r" "Thumb_Thumb4_L_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Thumb4_Joint_L_CTR3.ro" "Thumb_Thumb4_L_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Thumb4_Joint_L_CTR3.s" "Thumb_Thumb4_L_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Thumb4_Joint_L_CTR3.pm" "Thumb_Thumb4_L_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Thumb_Thumb4_L_JNT_parentConstraint1.w0" "Thumb_Thumb4_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Thumb_Thumb3_L_JNT.ro" "Thumb_Thumb3_L_JNT_parentConstraint1.cro";
connectAttr "Thumb_Thumb3_L_JNT.pim" "Thumb_Thumb3_L_JNT_parentConstraint1.cpim"
		;
connectAttr "Thumb_Thumb3_L_JNT.rp" "Thumb_Thumb3_L_JNT_parentConstraint1.crp";
connectAttr "Thumb_Thumb3_L_JNT.rpt" "Thumb_Thumb3_L_JNT_parentConstraint1.crt";
connectAttr "Thumb_Thumb3_L_JNT.jo" "Thumb_Thumb3_L_JNT_parentConstraint1.cjo";
connectAttr "Thumb3_Joint_L_CTR2.t" "Thumb_Thumb3_L_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Thumb3_Joint_L_CTR2.rp" "Thumb_Thumb3_L_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Thumb3_Joint_L_CTR2.rpt" "Thumb_Thumb3_L_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Thumb3_Joint_L_CTR2.r" "Thumb_Thumb3_L_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Thumb3_Joint_L_CTR2.ro" "Thumb_Thumb3_L_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Thumb3_Joint_L_CTR2.s" "Thumb_Thumb3_L_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Thumb3_Joint_L_CTR2.pm" "Thumb_Thumb3_L_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Thumb_Thumb3_L_JNT_parentConstraint1.w0" "Thumb_Thumb3_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Thumb_Thumb2_L_JNT.ro" "Thumb_Thumb2_L_JNT_parentConstraint1.cro";
connectAttr "Thumb_Thumb2_L_JNT.pim" "Thumb_Thumb2_L_JNT_parentConstraint1.cpim"
		;
connectAttr "Thumb_Thumb2_L_JNT.rp" "Thumb_Thumb2_L_JNT_parentConstraint1.crp";
connectAttr "Thumb_Thumb2_L_JNT.rpt" "Thumb_Thumb2_L_JNT_parentConstraint1.crt";
connectAttr "Thumb_Thumb2_L_JNT.jo" "Thumb_Thumb2_L_JNT_parentConstraint1.cjo";
connectAttr "Thumb2_Joint_L_CTR1.t" "Thumb_Thumb2_L_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Thumb2_Joint_L_CTR1.rp" "Thumb_Thumb2_L_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Thumb2_Joint_L_CTR1.rpt" "Thumb_Thumb2_L_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Thumb2_Joint_L_CTR1.r" "Thumb_Thumb2_L_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Thumb2_Joint_L_CTR1.ro" "Thumb_Thumb2_L_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Thumb2_Joint_L_CTR1.s" "Thumb_Thumb2_L_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Thumb2_Joint_L_CTR1.pm" "Thumb_Thumb2_L_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Thumb_Thumb2_L_JNT_parentConstraint1.w0" "Thumb_Thumb2_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Thumb_Thumb1_L_JNT.ro" "Thumb_Thumb1_L_JNT_parentConstraint1.cro";
connectAttr "Thumb_Thumb1_L_JNT.pim" "Thumb_Thumb1_L_JNT_parentConstraint1.cpim"
		;
connectAttr "Thumb_Thumb1_L_JNT.rp" "Thumb_Thumb1_L_JNT_parentConstraint1.crp";
connectAttr "Thumb_Thumb1_L_JNT.rpt" "Thumb_Thumb1_L_JNT_parentConstraint1.crt";
connectAttr "Thumb_Thumb1_L_JNT.jo" "Thumb_Thumb1_L_JNT_parentConstraint1.cjo";
connectAttr "Thumb1_Joint_L_CTR0.t" "Thumb_Thumb1_L_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Thumb1_Joint_L_CTR0.rp" "Thumb_Thumb1_L_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Thumb1_Joint_L_CTR0.rpt" "Thumb_Thumb1_L_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Thumb1_Joint_L_CTR0.r" "Thumb_Thumb1_L_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Thumb1_Joint_L_CTR0.ro" "Thumb_Thumb1_L_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Thumb1_Joint_L_CTR0.s" "Thumb_Thumb1_L_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Thumb1_Joint_L_CTR0.pm" "Thumb_Thumb1_L_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Thumb_Thumb1_L_JNT_parentConstraint1.w0" "Thumb_Thumb1_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_Wrist_L_JNT.s" "Pinkie_Pinkey1_L_JNT.is";
connectAttr "Joint_Disp.di" "Pinkie_Pinkey1_L_JNT.do";
connectAttr "Pinkie_Limb_L_NODE.joints" "Pinkie_Pinkey1_L_JNT.limb";
connectAttr "Pinkie_Pinkey1_L_JNT_parentConstraint1.ctx" "Pinkie_Pinkey1_L_JNT.tx"
		;
connectAttr "Pinkie_Pinkey1_L_JNT_parentConstraint1.cty" "Pinkie_Pinkey1_L_JNT.ty"
		;
connectAttr "Pinkie_Pinkey1_L_JNT_parentConstraint1.ctz" "Pinkie_Pinkey1_L_JNT.tz"
		;
connectAttr "Pinkie_Pinkey1_L_JNT_parentConstraint1.crx" "Pinkie_Pinkey1_L_JNT.rx"
		;
connectAttr "Pinkie_Pinkey1_L_JNT_parentConstraint1.cry" "Pinkie_Pinkey1_L_JNT.ry"
		;
connectAttr "Pinkie_Pinkey1_L_JNT_parentConstraint1.crz" "Pinkie_Pinkey1_L_JNT.rz"
		;
connectAttr "Pinkie_Pinkey1_L_JNT.s" "Pinkie_Pinkey2_L_JNT.is";
connectAttr "Joint_Disp.di" "Pinkie_Pinkey2_L_JNT.do";
connectAttr "Pinkie_Limb_L_NODE.joints" "Pinkie_Pinkey2_L_JNT.limb";
connectAttr "Pinkie_Pinkey2_L_JNT_parentConstraint1.ctx" "Pinkie_Pinkey2_L_JNT.tx"
		;
connectAttr "Pinkie_Pinkey2_L_JNT_parentConstraint1.cty" "Pinkie_Pinkey2_L_JNT.ty"
		;
connectAttr "Pinkie_Pinkey2_L_JNT_parentConstraint1.ctz" "Pinkie_Pinkey2_L_JNT.tz"
		;
connectAttr "Pinkie_Pinkey2_L_JNT_parentConstraint1.crx" "Pinkie_Pinkey2_L_JNT.rx"
		;
connectAttr "Pinkie_Pinkey2_L_JNT_parentConstraint1.cry" "Pinkie_Pinkey2_L_JNT.ry"
		;
connectAttr "Pinkie_Pinkey2_L_JNT_parentConstraint1.crz" "Pinkie_Pinkey2_L_JNT.rz"
		;
connectAttr "Pinkie_Pinkey2_L_JNT.s" "Pinkie_Pinkey3_L_JNT.is";
connectAttr "Joint_Disp.di" "Pinkie_Pinkey3_L_JNT.do";
connectAttr "Pinkie_Limb_L_NODE.joints" "Pinkie_Pinkey3_L_JNT.limb";
connectAttr "Pinkie_Pinkey3_L_JNT_parentConstraint1.ctx" "Pinkie_Pinkey3_L_JNT.tx"
		;
connectAttr "Pinkie_Pinkey3_L_JNT_parentConstraint1.cty" "Pinkie_Pinkey3_L_JNT.ty"
		;
connectAttr "Pinkie_Pinkey3_L_JNT_parentConstraint1.ctz" "Pinkie_Pinkey3_L_JNT.tz"
		;
connectAttr "Pinkie_Pinkey3_L_JNT_parentConstraint1.crx" "Pinkie_Pinkey3_L_JNT.rx"
		;
connectAttr "Pinkie_Pinkey3_L_JNT_parentConstraint1.cry" "Pinkie_Pinkey3_L_JNT.ry"
		;
connectAttr "Pinkie_Pinkey3_L_JNT_parentConstraint1.crz" "Pinkie_Pinkey3_L_JNT.rz"
		;
connectAttr "Pinkie_Pinkey3_L_JNT.s" "Pinkie_Pinkey4_L_JNT.is";
connectAttr "Joint_Disp.di" "Pinkie_Pinkey4_L_JNT.do";
connectAttr "Pinkie_Limb_L_NODE.joints" "Pinkie_Pinkey4_L_JNT.limb";
connectAttr "Pinkie_Pinkey4_L_JNT_parentConstraint1.ctx" "Pinkie_Pinkey4_L_JNT.tx"
		;
connectAttr "Pinkie_Pinkey4_L_JNT_parentConstraint1.cty" "Pinkie_Pinkey4_L_JNT.ty"
		;
connectAttr "Pinkie_Pinkey4_L_JNT_parentConstraint1.ctz" "Pinkie_Pinkey4_L_JNT.tz"
		;
connectAttr "Pinkie_Pinkey4_L_JNT_parentConstraint1.crx" "Pinkie_Pinkey4_L_JNT.rx"
		;
connectAttr "Pinkie_Pinkey4_L_JNT_parentConstraint1.cry" "Pinkie_Pinkey4_L_JNT.ry"
		;
connectAttr "Pinkie_Pinkey4_L_JNT_parentConstraint1.crz" "Pinkie_Pinkey4_L_JNT.rz"
		;
connectAttr "Pinkie_Pinkey4_L_JNT.ro" "Pinkie_Pinkey4_L_JNT_parentConstraint1.cro"
		;
connectAttr "Pinkie_Pinkey4_L_JNT.pim" "Pinkie_Pinkey4_L_JNT_parentConstraint1.cpim"
		;
connectAttr "Pinkie_Pinkey4_L_JNT.rp" "Pinkie_Pinkey4_L_JNT_parentConstraint1.crp"
		;
connectAttr "Pinkie_Pinkey4_L_JNT.rpt" "Pinkie_Pinkey4_L_JNT_parentConstraint1.crt"
		;
connectAttr "Pinkie_Pinkey4_L_JNT.jo" "Pinkie_Pinkey4_L_JNT_parentConstraint1.cjo"
		;
connectAttr "Pinkey4_Joint_L_CTR3.t" "Pinkie_Pinkey4_L_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Pinkey4_Joint_L_CTR3.rp" "Pinkie_Pinkey4_L_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Pinkey4_Joint_L_CTR3.rpt" "Pinkie_Pinkey4_L_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Pinkey4_Joint_L_CTR3.r" "Pinkie_Pinkey4_L_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Pinkey4_Joint_L_CTR3.ro" "Pinkie_Pinkey4_L_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Pinkey4_Joint_L_CTR3.s" "Pinkie_Pinkey4_L_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Pinkey4_Joint_L_CTR3.pm" "Pinkie_Pinkey4_L_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Pinkie_Pinkey4_L_JNT_parentConstraint1.w0" "Pinkie_Pinkey4_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Pinkie_Pinkey3_L_JNT.ro" "Pinkie_Pinkey3_L_JNT_parentConstraint1.cro"
		;
connectAttr "Pinkie_Pinkey3_L_JNT.pim" "Pinkie_Pinkey3_L_JNT_parentConstraint1.cpim"
		;
connectAttr "Pinkie_Pinkey3_L_JNT.rp" "Pinkie_Pinkey3_L_JNT_parentConstraint1.crp"
		;
connectAttr "Pinkie_Pinkey3_L_JNT.rpt" "Pinkie_Pinkey3_L_JNT_parentConstraint1.crt"
		;
connectAttr "Pinkie_Pinkey3_L_JNT.jo" "Pinkie_Pinkey3_L_JNT_parentConstraint1.cjo"
		;
connectAttr "Pinkey3_Joint_L_CTR2.t" "Pinkie_Pinkey3_L_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Pinkey3_Joint_L_CTR2.rp" "Pinkie_Pinkey3_L_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Pinkey3_Joint_L_CTR2.rpt" "Pinkie_Pinkey3_L_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Pinkey3_Joint_L_CTR2.r" "Pinkie_Pinkey3_L_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Pinkey3_Joint_L_CTR2.ro" "Pinkie_Pinkey3_L_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Pinkey3_Joint_L_CTR2.s" "Pinkie_Pinkey3_L_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Pinkey3_Joint_L_CTR2.pm" "Pinkie_Pinkey3_L_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Pinkie_Pinkey3_L_JNT_parentConstraint1.w0" "Pinkie_Pinkey3_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Pinkie_Pinkey2_L_JNT.ro" "Pinkie_Pinkey2_L_JNT_parentConstraint1.cro"
		;
connectAttr "Pinkie_Pinkey2_L_JNT.pim" "Pinkie_Pinkey2_L_JNT_parentConstraint1.cpim"
		;
connectAttr "Pinkie_Pinkey2_L_JNT.rp" "Pinkie_Pinkey2_L_JNT_parentConstraint1.crp"
		;
connectAttr "Pinkie_Pinkey2_L_JNT.rpt" "Pinkie_Pinkey2_L_JNT_parentConstraint1.crt"
		;
connectAttr "Pinkie_Pinkey2_L_JNT.jo" "Pinkie_Pinkey2_L_JNT_parentConstraint1.cjo"
		;
connectAttr "Pinkey2_Joint_L_CTR1.t" "Pinkie_Pinkey2_L_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Pinkey2_Joint_L_CTR1.rp" "Pinkie_Pinkey2_L_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Pinkey2_Joint_L_CTR1.rpt" "Pinkie_Pinkey2_L_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Pinkey2_Joint_L_CTR1.r" "Pinkie_Pinkey2_L_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Pinkey2_Joint_L_CTR1.ro" "Pinkie_Pinkey2_L_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Pinkey2_Joint_L_CTR1.s" "Pinkie_Pinkey2_L_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Pinkey2_Joint_L_CTR1.pm" "Pinkie_Pinkey2_L_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Pinkie_Pinkey2_L_JNT_parentConstraint1.w0" "Pinkie_Pinkey2_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Pinkie_Pinkey1_L_JNT.ro" "Pinkie_Pinkey1_L_JNT_parentConstraint1.cro"
		;
connectAttr "Pinkie_Pinkey1_L_JNT.pim" "Pinkie_Pinkey1_L_JNT_parentConstraint1.cpim"
		;
connectAttr "Pinkie_Pinkey1_L_JNT.rp" "Pinkie_Pinkey1_L_JNT_parentConstraint1.crp"
		;
connectAttr "Pinkie_Pinkey1_L_JNT.rpt" "Pinkie_Pinkey1_L_JNT_parentConstraint1.crt"
		;
connectAttr "Pinkie_Pinkey1_L_JNT.jo" "Pinkie_Pinkey1_L_JNT_parentConstraint1.cjo"
		;
connectAttr "Pinkey1_Joint_L_CTR0.t" "Pinkie_Pinkey1_L_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Pinkey1_Joint_L_CTR0.rp" "Pinkie_Pinkey1_L_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Pinkey1_Joint_L_CTR0.rpt" "Pinkie_Pinkey1_L_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Pinkey1_Joint_L_CTR0.r" "Pinkie_Pinkey1_L_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Pinkey1_Joint_L_CTR0.ro" "Pinkie_Pinkey1_L_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Pinkey1_Joint_L_CTR0.s" "Pinkie_Pinkey1_L_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Pinkey1_Joint_L_CTR0.pm" "Pinkie_Pinkey1_L_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Pinkie_Pinkey1_L_JNT_parentConstraint1.w0" "Pinkie_Pinkey1_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_Wrist_L_JNT.s" "Index_Index1_L_JNT.is";
connectAttr "Joint_Disp.di" "Index_Index1_L_JNT.do";
connectAttr "Index_Limb_L_NODE.joints" "Index_Index1_L_JNT.limb";
connectAttr "Index_Index1_L_JNT_parentConstraint1.ctx" "Index_Index1_L_JNT.tx";
connectAttr "Index_Index1_L_JNT_parentConstraint1.cty" "Index_Index1_L_JNT.ty";
connectAttr "Index_Index1_L_JNT_parentConstraint1.ctz" "Index_Index1_L_JNT.tz";
connectAttr "Index_Index1_L_JNT_parentConstraint1.crx" "Index_Index1_L_JNT.rx";
connectAttr "Index_Index1_L_JNT_parentConstraint1.cry" "Index_Index1_L_JNT.ry";
connectAttr "Index_Index1_L_JNT_parentConstraint1.crz" "Index_Index1_L_JNT.rz";
connectAttr "Index_Index1_L_JNT.s" "Index_Index2_L_JNT.is";
connectAttr "Joint_Disp.di" "Index_Index2_L_JNT.do";
connectAttr "Index_Limb_L_NODE.joints" "Index_Index2_L_JNT.limb";
connectAttr "Index_Index2_L_JNT_parentConstraint1.ctx" "Index_Index2_L_JNT.tx";
connectAttr "Index_Index2_L_JNT_parentConstraint1.cty" "Index_Index2_L_JNT.ty";
connectAttr "Index_Index2_L_JNT_parentConstraint1.ctz" "Index_Index2_L_JNT.tz";
connectAttr "Index_Index2_L_JNT_parentConstraint1.crx" "Index_Index2_L_JNT.rx";
connectAttr "Index_Index2_L_JNT_parentConstraint1.cry" "Index_Index2_L_JNT.ry";
connectAttr "Index_Index2_L_JNT_parentConstraint1.crz" "Index_Index2_L_JNT.rz";
connectAttr "Index_Index2_L_JNT.s" "Index_Index3_L_JNT.is";
connectAttr "Joint_Disp.di" "Index_Index3_L_JNT.do";
connectAttr "Index_Limb_L_NODE.joints" "Index_Index3_L_JNT.limb";
connectAttr "Index_Index3_L_JNT_parentConstraint1.ctx" "Index_Index3_L_JNT.tx";
connectAttr "Index_Index3_L_JNT_parentConstraint1.cty" "Index_Index3_L_JNT.ty";
connectAttr "Index_Index3_L_JNT_parentConstraint1.ctz" "Index_Index3_L_JNT.tz";
connectAttr "Index_Index3_L_JNT_parentConstraint1.crx" "Index_Index3_L_JNT.rx";
connectAttr "Index_Index3_L_JNT_parentConstraint1.cry" "Index_Index3_L_JNT.ry";
connectAttr "Index_Index3_L_JNT_parentConstraint1.crz" "Index_Index3_L_JNT.rz";
connectAttr "Index_Index3_L_JNT.s" "Index_Index4_L_JNT.is";
connectAttr "Joint_Disp.di" "Index_Index4_L_JNT.do";
connectAttr "Index_Limb_L_NODE.joints" "Index_Index4_L_JNT.limb";
connectAttr "Index_Index4_L_JNT_parentConstraint1.ctx" "Index_Index4_L_JNT.tx";
connectAttr "Index_Index4_L_JNT_parentConstraint1.cty" "Index_Index4_L_JNT.ty";
connectAttr "Index_Index4_L_JNT_parentConstraint1.ctz" "Index_Index4_L_JNT.tz";
connectAttr "Index_Index4_L_JNT_parentConstraint1.crx" "Index_Index4_L_JNT.rx";
connectAttr "Index_Index4_L_JNT_parentConstraint1.cry" "Index_Index4_L_JNT.ry";
connectAttr "Index_Index4_L_JNT_parentConstraint1.crz" "Index_Index4_L_JNT.rz";
connectAttr "Index_Index4_L_JNT.ro" "Index_Index4_L_JNT_parentConstraint1.cro";
connectAttr "Index_Index4_L_JNT.pim" "Index_Index4_L_JNT_parentConstraint1.cpim"
		;
connectAttr "Index_Index4_L_JNT.rp" "Index_Index4_L_JNT_parentConstraint1.crp";
connectAttr "Index_Index4_L_JNT.rpt" "Index_Index4_L_JNT_parentConstraint1.crt";
connectAttr "Index_Index4_L_JNT.jo" "Index_Index4_L_JNT_parentConstraint1.cjo";
connectAttr "Index4_Joint_L_CTR3.t" "Index_Index4_L_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Index4_Joint_L_CTR3.rp" "Index_Index4_L_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Index4_Joint_L_CTR3.rpt" "Index_Index4_L_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Index4_Joint_L_CTR3.r" "Index_Index4_L_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Index4_Joint_L_CTR3.ro" "Index_Index4_L_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Index4_Joint_L_CTR3.s" "Index_Index4_L_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Index4_Joint_L_CTR3.pm" "Index_Index4_L_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Index_Index4_L_JNT_parentConstraint1.w0" "Index_Index4_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Index_Index3_L_JNT.ro" "Index_Index3_L_JNT_parentConstraint1.cro";
connectAttr "Index_Index3_L_JNT.pim" "Index_Index3_L_JNT_parentConstraint1.cpim"
		;
connectAttr "Index_Index3_L_JNT.rp" "Index_Index3_L_JNT_parentConstraint1.crp";
connectAttr "Index_Index3_L_JNT.rpt" "Index_Index3_L_JNT_parentConstraint1.crt";
connectAttr "Index_Index3_L_JNT.jo" "Index_Index3_L_JNT_parentConstraint1.cjo";
connectAttr "Index3_Joint_L_CTR2.t" "Index_Index3_L_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Index3_Joint_L_CTR2.rp" "Index_Index3_L_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Index3_Joint_L_CTR2.rpt" "Index_Index3_L_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Index3_Joint_L_CTR2.r" "Index_Index3_L_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Index3_Joint_L_CTR2.ro" "Index_Index3_L_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Index3_Joint_L_CTR2.s" "Index_Index3_L_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Index3_Joint_L_CTR2.pm" "Index_Index3_L_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Index_Index3_L_JNT_parentConstraint1.w0" "Index_Index3_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Index_Index2_L_JNT.ro" "Index_Index2_L_JNT_parentConstraint1.cro";
connectAttr "Index_Index2_L_JNT.pim" "Index_Index2_L_JNT_parentConstraint1.cpim"
		;
connectAttr "Index_Index2_L_JNT.rp" "Index_Index2_L_JNT_parentConstraint1.crp";
connectAttr "Index_Index2_L_JNT.rpt" "Index_Index2_L_JNT_parentConstraint1.crt";
connectAttr "Index_Index2_L_JNT.jo" "Index_Index2_L_JNT_parentConstraint1.cjo";
connectAttr "Index2_Joint_L_CTR1.t" "Index_Index2_L_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Index2_Joint_L_CTR1.rp" "Index_Index2_L_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Index2_Joint_L_CTR1.rpt" "Index_Index2_L_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Index2_Joint_L_CTR1.r" "Index_Index2_L_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Index2_Joint_L_CTR1.ro" "Index_Index2_L_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Index2_Joint_L_CTR1.s" "Index_Index2_L_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Index2_Joint_L_CTR1.pm" "Index_Index2_L_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Index_Index2_L_JNT_parentConstraint1.w0" "Index_Index2_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Index_Index1_L_JNT.ro" "Index_Index1_L_JNT_parentConstraint1.cro";
connectAttr "Index_Index1_L_JNT.pim" "Index_Index1_L_JNT_parentConstraint1.cpim"
		;
connectAttr "Index_Index1_L_JNT.rp" "Index_Index1_L_JNT_parentConstraint1.crp";
connectAttr "Index_Index1_L_JNT.rpt" "Index_Index1_L_JNT_parentConstraint1.crt";
connectAttr "Index_Index1_L_JNT.jo" "Index_Index1_L_JNT_parentConstraint1.cjo";
connectAttr "Index1_Joint_L_CTR0.t" "Index_Index1_L_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Index1_Joint_L_CTR0.rp" "Index_Index1_L_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Index1_Joint_L_CTR0.rpt" "Index_Index1_L_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Index1_Joint_L_CTR0.r" "Index_Index1_L_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Index1_Joint_L_CTR0.ro" "Index_Index1_L_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Index1_Joint_L_CTR0.s" "Index_Index1_L_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Index1_Joint_L_CTR0.pm" "Index_Index1_L_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Index_Index1_L_JNT_parentConstraint1.w0" "Index_Index1_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_Wrist_L_JNT.s" "Ring_Ring1_L_JNT.is";
connectAttr "Joint_Disp.di" "Ring_Ring1_L_JNT.do";
connectAttr "Ring_Limb_L_NODE.joints" "Ring_Ring1_L_JNT.limb";
connectAttr "Ring_Ring1_L_JNT_parentConstraint1.ctx" "Ring_Ring1_L_JNT.tx";
connectAttr "Ring_Ring1_L_JNT_parentConstraint1.cty" "Ring_Ring1_L_JNT.ty";
connectAttr "Ring_Ring1_L_JNT_parentConstraint1.ctz" "Ring_Ring1_L_JNT.tz";
connectAttr "Ring_Ring1_L_JNT_parentConstraint1.crx" "Ring_Ring1_L_JNT.rx";
connectAttr "Ring_Ring1_L_JNT_parentConstraint1.cry" "Ring_Ring1_L_JNT.ry";
connectAttr "Ring_Ring1_L_JNT_parentConstraint1.crz" "Ring_Ring1_L_JNT.rz";
connectAttr "Ring_Ring1_L_JNT.s" "Ring_Ring2_L_JNT.is";
connectAttr "Joint_Disp.di" "Ring_Ring2_L_JNT.do";
connectAttr "Ring_Limb_L_NODE.joints" "Ring_Ring2_L_JNT.limb";
connectAttr "Ring_Ring2_L_JNT_parentConstraint1.ctx" "Ring_Ring2_L_JNT.tx";
connectAttr "Ring_Ring2_L_JNT_parentConstraint1.cty" "Ring_Ring2_L_JNT.ty";
connectAttr "Ring_Ring2_L_JNT_parentConstraint1.ctz" "Ring_Ring2_L_JNT.tz";
connectAttr "Ring_Ring2_L_JNT_parentConstraint1.crx" "Ring_Ring2_L_JNT.rx";
connectAttr "Ring_Ring2_L_JNT_parentConstraint1.cry" "Ring_Ring2_L_JNT.ry";
connectAttr "Ring_Ring2_L_JNT_parentConstraint1.crz" "Ring_Ring2_L_JNT.rz";
connectAttr "Ring_Ring2_L_JNT.s" "Ring_Ring3_L_JNT.is";
connectAttr "Joint_Disp.di" "Ring_Ring3_L_JNT.do";
connectAttr "Ring_Limb_L_NODE.joints" "Ring_Ring3_L_JNT.limb";
connectAttr "Ring_Ring3_L_JNT_parentConstraint1.ctx" "Ring_Ring3_L_JNT.tx";
connectAttr "Ring_Ring3_L_JNT_parentConstraint1.cty" "Ring_Ring3_L_JNT.ty";
connectAttr "Ring_Ring3_L_JNT_parentConstraint1.ctz" "Ring_Ring3_L_JNT.tz";
connectAttr "Ring_Ring3_L_JNT_parentConstraint1.crx" "Ring_Ring3_L_JNT.rx";
connectAttr "Ring_Ring3_L_JNT_parentConstraint1.cry" "Ring_Ring3_L_JNT.ry";
connectAttr "Ring_Ring3_L_JNT_parentConstraint1.crz" "Ring_Ring3_L_JNT.rz";
connectAttr "Ring_Ring3_L_JNT.s" "Ring_Ring4_L_JNT.is";
connectAttr "Joint_Disp.di" "Ring_Ring4_L_JNT.do";
connectAttr "Ring_Limb_L_NODE.joints" "Ring_Ring4_L_JNT.limb";
connectAttr "Ring_Ring4_L_JNT_parentConstraint1.ctx" "Ring_Ring4_L_JNT.tx";
connectAttr "Ring_Ring4_L_JNT_parentConstraint1.cty" "Ring_Ring4_L_JNT.ty";
connectAttr "Ring_Ring4_L_JNT_parentConstraint1.ctz" "Ring_Ring4_L_JNT.tz";
connectAttr "Ring_Ring4_L_JNT_parentConstraint1.crx" "Ring_Ring4_L_JNT.rx";
connectAttr "Ring_Ring4_L_JNT_parentConstraint1.cry" "Ring_Ring4_L_JNT.ry";
connectAttr "Ring_Ring4_L_JNT_parentConstraint1.crz" "Ring_Ring4_L_JNT.rz";
connectAttr "Ring_Ring4_L_JNT.ro" "Ring_Ring4_L_JNT_parentConstraint1.cro";
connectAttr "Ring_Ring4_L_JNT.pim" "Ring_Ring4_L_JNT_parentConstraint1.cpim";
connectAttr "Ring_Ring4_L_JNT.rp" "Ring_Ring4_L_JNT_parentConstraint1.crp";
connectAttr "Ring_Ring4_L_JNT.rpt" "Ring_Ring4_L_JNT_parentConstraint1.crt";
connectAttr "Ring_Ring4_L_JNT.jo" "Ring_Ring4_L_JNT_parentConstraint1.cjo";
connectAttr "Ring4_Joint_L_CTR3.t" "Ring_Ring4_L_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Ring4_Joint_L_CTR3.rp" "Ring_Ring4_L_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Ring4_Joint_L_CTR3.rpt" "Ring_Ring4_L_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Ring4_Joint_L_CTR3.r" "Ring_Ring4_L_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Ring4_Joint_L_CTR3.ro" "Ring_Ring4_L_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Ring4_Joint_L_CTR3.s" "Ring_Ring4_L_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Ring4_Joint_L_CTR3.pm" "Ring_Ring4_L_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ring_Ring4_L_JNT_parentConstraint1.w0" "Ring_Ring4_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Ring_Ring3_L_JNT.ro" "Ring_Ring3_L_JNT_parentConstraint1.cro";
connectAttr "Ring_Ring3_L_JNT.pim" "Ring_Ring3_L_JNT_parentConstraint1.cpim";
connectAttr "Ring_Ring3_L_JNT.rp" "Ring_Ring3_L_JNT_parentConstraint1.crp";
connectAttr "Ring_Ring3_L_JNT.rpt" "Ring_Ring3_L_JNT_parentConstraint1.crt";
connectAttr "Ring_Ring3_L_JNT.jo" "Ring_Ring3_L_JNT_parentConstraint1.cjo";
connectAttr "Ring3_Joint_L_CTR2.t" "Ring_Ring3_L_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Ring3_Joint_L_CTR2.rp" "Ring_Ring3_L_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Ring3_Joint_L_CTR2.rpt" "Ring_Ring3_L_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Ring3_Joint_L_CTR2.r" "Ring_Ring3_L_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Ring3_Joint_L_CTR2.ro" "Ring_Ring3_L_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Ring3_Joint_L_CTR2.s" "Ring_Ring3_L_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Ring3_Joint_L_CTR2.pm" "Ring_Ring3_L_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ring_Ring3_L_JNT_parentConstraint1.w0" "Ring_Ring3_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Ring_Ring2_L_JNT.ro" "Ring_Ring2_L_JNT_parentConstraint1.cro";
connectAttr "Ring_Ring2_L_JNT.pim" "Ring_Ring2_L_JNT_parentConstraint1.cpim";
connectAttr "Ring_Ring2_L_JNT.rp" "Ring_Ring2_L_JNT_parentConstraint1.crp";
connectAttr "Ring_Ring2_L_JNT.rpt" "Ring_Ring2_L_JNT_parentConstraint1.crt";
connectAttr "Ring_Ring2_L_JNT.jo" "Ring_Ring2_L_JNT_parentConstraint1.cjo";
connectAttr "Ring2_Joint_L_CTR1.t" "Ring_Ring2_L_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Ring2_Joint_L_CTR1.rp" "Ring_Ring2_L_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Ring2_Joint_L_CTR1.rpt" "Ring_Ring2_L_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Ring2_Joint_L_CTR1.r" "Ring_Ring2_L_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Ring2_Joint_L_CTR1.ro" "Ring_Ring2_L_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Ring2_Joint_L_CTR1.s" "Ring_Ring2_L_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Ring2_Joint_L_CTR1.pm" "Ring_Ring2_L_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ring_Ring2_L_JNT_parentConstraint1.w0" "Ring_Ring2_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Ring_Ring1_L_JNT.ro" "Ring_Ring1_L_JNT_parentConstraint1.cro";
connectAttr "Ring_Ring1_L_JNT.pim" "Ring_Ring1_L_JNT_parentConstraint1.cpim";
connectAttr "Ring_Ring1_L_JNT.rp" "Ring_Ring1_L_JNT_parentConstraint1.crp";
connectAttr "Ring_Ring1_L_JNT.rpt" "Ring_Ring1_L_JNT_parentConstraint1.crt";
connectAttr "Ring_Ring1_L_JNT.jo" "Ring_Ring1_L_JNT_parentConstraint1.cjo";
connectAttr "Ring1_Joint_L_CTR0.t" "Ring_Ring1_L_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Ring1_Joint_L_CTR0.rp" "Ring_Ring1_L_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Ring1_Joint_L_CTR0.rpt" "Ring_Ring1_L_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Ring1_Joint_L_CTR0.r" "Ring_Ring1_L_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Ring1_Joint_L_CTR0.ro" "Ring_Ring1_L_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Ring1_Joint_L_CTR0.s" "Ring_Ring1_L_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Ring1_Joint_L_CTR0.pm" "Ring_Ring1_L_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ring_Ring1_L_JNT_parentConstraint1.w0" "Ring_Ring1_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_Wrist_L_JNT.s" "Middle_Middle1_L_JNT.is";
connectAttr "Joint_Disp.di" "Middle_Middle1_L_JNT.do";
connectAttr "Middle_Limb_L_NODE.joints" "Middle_Middle1_L_JNT.limb";
connectAttr "Middle_Middle1_L_JNT_parentConstraint1.ctx" "Middle_Middle1_L_JNT.tx"
		;
connectAttr "Middle_Middle1_L_JNT_parentConstraint1.cty" "Middle_Middle1_L_JNT.ty"
		;
connectAttr "Middle_Middle1_L_JNT_parentConstraint1.ctz" "Middle_Middle1_L_JNT.tz"
		;
connectAttr "Middle_Middle1_L_JNT_parentConstraint1.crx" "Middle_Middle1_L_JNT.rx"
		;
connectAttr "Middle_Middle1_L_JNT_parentConstraint1.cry" "Middle_Middle1_L_JNT.ry"
		;
connectAttr "Middle_Middle1_L_JNT_parentConstraint1.crz" "Middle_Middle1_L_JNT.rz"
		;
connectAttr "Middle_Middle1_L_JNT.s" "Middle_Middle2_L_JNT.is";
connectAttr "Joint_Disp.di" "Middle_Middle2_L_JNT.do";
connectAttr "Middle_Limb_L_NODE.joints" "Middle_Middle2_L_JNT.limb";
connectAttr "Middle_Middle2_L_JNT_parentConstraint1.ctx" "Middle_Middle2_L_JNT.tx"
		;
connectAttr "Middle_Middle2_L_JNT_parentConstraint1.cty" "Middle_Middle2_L_JNT.ty"
		;
connectAttr "Middle_Middle2_L_JNT_parentConstraint1.ctz" "Middle_Middle2_L_JNT.tz"
		;
connectAttr "Middle_Middle2_L_JNT_parentConstraint1.crx" "Middle_Middle2_L_JNT.rx"
		;
connectAttr "Middle_Middle2_L_JNT_parentConstraint1.cry" "Middle_Middle2_L_JNT.ry"
		;
connectAttr "Middle_Middle2_L_JNT_parentConstraint1.crz" "Middle_Middle2_L_JNT.rz"
		;
connectAttr "Middle_Middle2_L_JNT.s" "Middle_Middle3_L_JNT.is";
connectAttr "Joint_Disp.di" "Middle_Middle3_L_JNT.do";
connectAttr "Middle_Limb_L_NODE.joints" "Middle_Middle3_L_JNT.limb";
connectAttr "Middle_Middle3_L_JNT_parentConstraint1.ctx" "Middle_Middle3_L_JNT.tx"
		;
connectAttr "Middle_Middle3_L_JNT_parentConstraint1.cty" "Middle_Middle3_L_JNT.ty"
		;
connectAttr "Middle_Middle3_L_JNT_parentConstraint1.ctz" "Middle_Middle3_L_JNT.tz"
		;
connectAttr "Middle_Middle3_L_JNT_parentConstraint1.crx" "Middle_Middle3_L_JNT.rx"
		;
connectAttr "Middle_Middle3_L_JNT_parentConstraint1.cry" "Middle_Middle3_L_JNT.ry"
		;
connectAttr "Middle_Middle3_L_JNT_parentConstraint1.crz" "Middle_Middle3_L_JNT.rz"
		;
connectAttr "Middle_Middle3_L_JNT.s" "Middle_Middle4_L_JNT.is";
connectAttr "Joint_Disp.di" "Middle_Middle4_L_JNT.do";
connectAttr "Middle_Limb_L_NODE.joints" "Middle_Middle4_L_JNT.limb";
connectAttr "Middle_Middle4_L_JNT_parentConstraint1.ctx" "Middle_Middle4_L_JNT.tx"
		;
connectAttr "Middle_Middle4_L_JNT_parentConstraint1.cty" "Middle_Middle4_L_JNT.ty"
		;
connectAttr "Middle_Middle4_L_JNT_parentConstraint1.ctz" "Middle_Middle4_L_JNT.tz"
		;
connectAttr "Middle_Middle4_L_JNT_parentConstraint1.crx" "Middle_Middle4_L_JNT.rx"
		;
connectAttr "Middle_Middle4_L_JNT_parentConstraint1.cry" "Middle_Middle4_L_JNT.ry"
		;
connectAttr "Middle_Middle4_L_JNT_parentConstraint1.crz" "Middle_Middle4_L_JNT.rz"
		;
connectAttr "Middle_Middle4_L_JNT.ro" "Middle_Middle4_L_JNT_parentConstraint1.cro"
		;
connectAttr "Middle_Middle4_L_JNT.pim" "Middle_Middle4_L_JNT_parentConstraint1.cpim"
		;
connectAttr "Middle_Middle4_L_JNT.rp" "Middle_Middle4_L_JNT_parentConstraint1.crp"
		;
connectAttr "Middle_Middle4_L_JNT.rpt" "Middle_Middle4_L_JNT_parentConstraint1.crt"
		;
connectAttr "Middle_Middle4_L_JNT.jo" "Middle_Middle4_L_JNT_parentConstraint1.cjo"
		;
connectAttr "Middle4_Joint_L_CTR3.t" "Middle_Middle4_L_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Middle4_Joint_L_CTR3.rp" "Middle_Middle4_L_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Middle4_Joint_L_CTR3.rpt" "Middle_Middle4_L_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Middle4_Joint_L_CTR3.r" "Middle_Middle4_L_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Middle4_Joint_L_CTR3.ro" "Middle_Middle4_L_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Middle4_Joint_L_CTR3.s" "Middle_Middle4_L_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Middle4_Joint_L_CTR3.pm" "Middle_Middle4_L_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Middle_Middle4_L_JNT_parentConstraint1.w0" "Middle_Middle4_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Middle_Middle3_L_JNT.ro" "Middle_Middle3_L_JNT_parentConstraint1.cro"
		;
connectAttr "Middle_Middle3_L_JNT.pim" "Middle_Middle3_L_JNT_parentConstraint1.cpim"
		;
connectAttr "Middle_Middle3_L_JNT.rp" "Middle_Middle3_L_JNT_parentConstraint1.crp"
		;
connectAttr "Middle_Middle3_L_JNT.rpt" "Middle_Middle3_L_JNT_parentConstraint1.crt"
		;
connectAttr "Middle_Middle3_L_JNT.jo" "Middle_Middle3_L_JNT_parentConstraint1.cjo"
		;
connectAttr "Middle3_Joint_L_CTR2.t" "Middle_Middle3_L_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Middle3_Joint_L_CTR2.rp" "Middle_Middle3_L_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Middle3_Joint_L_CTR2.rpt" "Middle_Middle3_L_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Middle3_Joint_L_CTR2.r" "Middle_Middle3_L_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Middle3_Joint_L_CTR2.ro" "Middle_Middle3_L_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Middle3_Joint_L_CTR2.s" "Middle_Middle3_L_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Middle3_Joint_L_CTR2.pm" "Middle_Middle3_L_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Middle_Middle3_L_JNT_parentConstraint1.w0" "Middle_Middle3_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Middle_Middle2_L_JNT.ro" "Middle_Middle2_L_JNT_parentConstraint1.cro"
		;
connectAttr "Middle_Middle2_L_JNT.pim" "Middle_Middle2_L_JNT_parentConstraint1.cpim"
		;
connectAttr "Middle_Middle2_L_JNT.rp" "Middle_Middle2_L_JNT_parentConstraint1.crp"
		;
connectAttr "Middle_Middle2_L_JNT.rpt" "Middle_Middle2_L_JNT_parentConstraint1.crt"
		;
connectAttr "Middle_Middle2_L_JNT.jo" "Middle_Middle2_L_JNT_parentConstraint1.cjo"
		;
connectAttr "Middle2_Joint_L_CTR1.t" "Middle_Middle2_L_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Middle2_Joint_L_CTR1.rp" "Middle_Middle2_L_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Middle2_Joint_L_CTR1.rpt" "Middle_Middle2_L_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Middle2_Joint_L_CTR1.r" "Middle_Middle2_L_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Middle2_Joint_L_CTR1.ro" "Middle_Middle2_L_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Middle2_Joint_L_CTR1.s" "Middle_Middle2_L_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Middle2_Joint_L_CTR1.pm" "Middle_Middle2_L_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Middle_Middle2_L_JNT_parentConstraint1.w0" "Middle_Middle2_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Middle_Middle1_L_JNT.ro" "Middle_Middle1_L_JNT_parentConstraint1.cro"
		;
connectAttr "Middle_Middle1_L_JNT.pim" "Middle_Middle1_L_JNT_parentConstraint1.cpim"
		;
connectAttr "Middle_Middle1_L_JNT.rp" "Middle_Middle1_L_JNT_parentConstraint1.crp"
		;
connectAttr "Middle_Middle1_L_JNT.rpt" "Middle_Middle1_L_JNT_parentConstraint1.crt"
		;
connectAttr "Middle_Middle1_L_JNT.jo" "Middle_Middle1_L_JNT_parentConstraint1.cjo"
		;
connectAttr "Middle1_Joint_L_CTR0.t" "Middle_Middle1_L_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Middle1_Joint_L_CTR0.rp" "Middle_Middle1_L_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Middle1_Joint_L_CTR0.rpt" "Middle_Middle1_L_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Middle1_Joint_L_CTR0.r" "Middle_Middle1_L_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Middle1_Joint_L_CTR0.ro" "Middle_Middle1_L_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Middle1_Joint_L_CTR0.s" "Middle_Middle1_L_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Middle1_Joint_L_CTR0.pm" "Middle_Middle1_L_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Middle_Middle1_L_JNT_parentConstraint1.w0" "Middle_Middle1_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_Wrist_L_JNT.ro" "Arm_Wrist_L_JNT_parentConstraint1.cro";
connectAttr "Arm_Wrist_L_JNT.pim" "Arm_Wrist_L_JNT_parentConstraint1.cpim";
connectAttr "Arm_Wrist_L_JNT.rp" "Arm_Wrist_L_JNT_parentConstraint1.crp";
connectAttr "Arm_Wrist_L_JNT.rpt" "Arm_Wrist_L_JNT_parentConstraint1.crt";
connectAttr "Arm_Wrist_L_JNT.jo" "Arm_Wrist_L_JNT_parentConstraint1.cjo";
connectAttr "Wrist_Joint_L_CTR2.t" "Arm_Wrist_L_JNT_parentConstraint1.tg[0].tt";
connectAttr "Wrist_Joint_L_CTR2.rp" "Arm_Wrist_L_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Wrist_Joint_L_CTR2.rpt" "Arm_Wrist_L_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Wrist_Joint_L_CTR2.r" "Arm_Wrist_L_JNT_parentConstraint1.tg[0].tr";
connectAttr "Wrist_Joint_L_CTR2.ro" "Arm_Wrist_L_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Wrist_Joint_L_CTR2.s" "Arm_Wrist_L_JNT_parentConstraint1.tg[0].ts";
connectAttr "Wrist_Joint_L_CTR2.pm" "Arm_Wrist_L_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Arm_Wrist_L_JNT_parentConstraint1.w0" "Arm_Wrist_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_Elbow_L_JNT.ro" "Arm_Elbow_L_JNT_parentConstraint1.cro";
connectAttr "Arm_Elbow_L_JNT.pim" "Arm_Elbow_L_JNT_parentConstraint1.cpim";
connectAttr "Arm_Elbow_L_JNT.rp" "Arm_Elbow_L_JNT_parentConstraint1.crp";
connectAttr "Arm_Elbow_L_JNT.rpt" "Arm_Elbow_L_JNT_parentConstraint1.crt";
connectAttr "Arm_Elbow_L_JNT.jo" "Arm_Elbow_L_JNT_parentConstraint1.cjo";
connectAttr "Elbow_Joint_L_CTR1.t" "Arm_Elbow_L_JNT_parentConstraint1.tg[0].tt";
connectAttr "Elbow_Joint_L_CTR1.rp" "Arm_Elbow_L_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Elbow_Joint_L_CTR1.rpt" "Arm_Elbow_L_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Elbow_Joint_L_CTR1.r" "Arm_Elbow_L_JNT_parentConstraint1.tg[0].tr";
connectAttr "Elbow_Joint_L_CTR1.ro" "Arm_Elbow_L_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Elbow_Joint_L_CTR1.s" "Arm_Elbow_L_JNT_parentConstraint1.tg[0].ts";
connectAttr "Elbow_Joint_L_CTR1.pm" "Arm_Elbow_L_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Arm_Elbow_L_JNT_parentConstraint1.w0" "Arm_Elbow_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_Shoulder_L_JNT.ro" "Arm_Shoulder_L_JNT_parentConstraint1.cro";
connectAttr "Arm_Shoulder_L_JNT.pim" "Arm_Shoulder_L_JNT_parentConstraint1.cpim"
		;
connectAttr "Arm_Shoulder_L_JNT.rp" "Arm_Shoulder_L_JNT_parentConstraint1.crp";
connectAttr "Arm_Shoulder_L_JNT.rpt" "Arm_Shoulder_L_JNT_parentConstraint1.crt";
connectAttr "Arm_Shoulder_L_JNT.jo" "Arm_Shoulder_L_JNT_parentConstraint1.cjo";
connectAttr "Shoulder_Joint_L_CTR0.t" "Arm_Shoulder_L_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Shoulder_Joint_L_CTR0.rp" "Arm_Shoulder_L_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Shoulder_Joint_L_CTR0.rpt" "Arm_Shoulder_L_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Shoulder_Joint_L_CTR0.r" "Arm_Shoulder_L_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Shoulder_Joint_L_CTR0.ro" "Arm_Shoulder_L_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Shoulder_Joint_L_CTR0.s" "Arm_Shoulder_L_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Shoulder_Joint_L_CTR0.pm" "Arm_Shoulder_L_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Arm_Shoulder_L_JNT_parentConstraint1.w0" "Arm_Shoulder_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Clav_Clav01_L_JNT.ro" "Clav_Clav01_L_JNT_parentConstraint1.cro";
connectAttr "Clav_Clav01_L_JNT.pim" "Clav_Clav01_L_JNT_parentConstraint1.cpim";
connectAttr "Clav_Clav01_L_JNT.rp" "Clav_Clav01_L_JNT_parentConstraint1.crp";
connectAttr "Clav_Clav01_L_JNT.rpt" "Clav_Clav01_L_JNT_parentConstraint1.crt";
connectAttr "Clav_Clav01_L_JNT.jo" "Clav_Clav01_L_JNT_parentConstraint1.cjo";
connectAttr "Clav01_Joint_L_CTR0.t" "Clav_Clav01_L_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Clav01_Joint_L_CTR0.rp" "Clav_Clav01_L_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Clav01_Joint_L_CTR0.rpt" "Clav_Clav01_L_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Clav01_Joint_L_CTR0.r" "Clav_Clav01_L_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Clav01_Joint_L_CTR0.ro" "Clav_Clav01_L_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Clav01_Joint_L_CTR0.s" "Clav_Clav01_L_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Clav01_Joint_L_CTR0.pm" "Clav_Clav01_L_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Clav_Clav01_L_JNT_parentConstraint1.w0" "Clav_Clav01_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "TEMP_RigRoot.limbsParentGroup" "LIMBS.rigRoot";
connectAttr "TEMP_RigRoot.limbs" "Ring_Limb_L_NODE.rigRoot";
connectAttr "Arm_Limb_L_NODE.limbChildren" "Ring_Limb_L_NODE.limbParent";
connectAttr "Ring_Ring1_L_JNT.group" "Ring1_Joint_L_GRP0.joint";
connectAttr "Ring_Limb_L_NODE.jointGroups" "Ring1_Joint_L_GRP0.limb";
connectAttr "Ring_Limb_L_NODE.usedGroups" "Ring1_Joint_L_GRP0.used";
connectAttr "Ring1_Joint_L_GRP0_parentConstraint1.ctx" "Ring1_Joint_L_GRP0.tx";
connectAttr "Ring1_Joint_L_GRP0_parentConstraint1.cty" "Ring1_Joint_L_GRP0.ty";
connectAttr "Ring1_Joint_L_GRP0_parentConstraint1.ctz" "Ring1_Joint_L_GRP0.tz";
connectAttr "Ring1_Joint_L_GRP0_parentConstraint1.crx" "Ring1_Joint_L_GRP0.rx";
connectAttr "Ring1_Joint_L_GRP0_parentConstraint1.cry" "Ring1_Joint_L_GRP0.ry";
connectAttr "Ring1_Joint_L_GRP0_parentConstraint1.crz" "Ring1_Joint_L_GRP0.rz";
connectAttr "Control_Disp.di" "Ring1_Joint_L_CTR0.do";
connectAttr "Ring1_Joint_L_GRP0.control" "Ring1_Joint_L_CTR0.group";
connectAttr "Ring_Ring2_L_JNT.group" "Ring2_Joint_L_GRP1.joint";
connectAttr "Ring_Limb_L_NODE.jointGroups" "Ring2_Joint_L_GRP1.limb";
connectAttr "Ring_Limb_L_NODE.usedGroups" "Ring2_Joint_L_GRP1.used";
connectAttr "Control_Disp.di" "Ring2_Joint_L_CTR1.do";
connectAttr "Ring2_Joint_L_GRP1.control" "Ring2_Joint_L_CTR1.group";
connectAttr "Ring_Ring3_L_JNT.group" "Ring3_Joint_L_GRP2.joint";
connectAttr "Ring_Limb_L_NODE.jointGroups" "Ring3_Joint_L_GRP2.limb";
connectAttr "Ring_Limb_L_NODE.usedGroups" "Ring3_Joint_L_GRP2.used";
connectAttr "Control_Disp.di" "Ring3_Joint_L_CTR2.do";
connectAttr "Ring3_Joint_L_GRP2.control" "Ring3_Joint_L_CTR2.group";
connectAttr "Ring_Ring4_L_JNT.group" "Ring4_Joint_L_GRP3.joint";
connectAttr "Ring_Limb_L_NODE.jointGroups" "Ring4_Joint_L_GRP3.limb";
connectAttr "Ring_Limb_L_NODE.usedGroups" "Ring4_Joint_L_GRP3.used";
connectAttr "Control_Disp.di" "Ring4_Joint_L_CTR3.do";
connectAttr "Ring4_Joint_L_GRP3.control" "Ring4_Joint_L_CTR3.group";
connectAttr "Ring1_Joint_L_GRP0.ro" "Ring1_Joint_L_GRP0_parentConstraint1.cro";
connectAttr "Ring1_Joint_L_GRP0.pim" "Ring1_Joint_L_GRP0_parentConstraint1.cpim"
		;
connectAttr "Ring1_Joint_L_GRP0.rp" "Ring1_Joint_L_GRP0_parentConstraint1.crp";
connectAttr "Ring1_Joint_L_GRP0.rpt" "Ring1_Joint_L_GRP0_parentConstraint1.crt";
connectAttr "Wrist_Joint_L_CTR2.t" "Ring1_Joint_L_GRP0_parentConstraint1.tg[0].tt"
		;
connectAttr "Wrist_Joint_L_CTR2.rp" "Ring1_Joint_L_GRP0_parentConstraint1.tg[0].trp"
		;
connectAttr "Wrist_Joint_L_CTR2.rpt" "Ring1_Joint_L_GRP0_parentConstraint1.tg[0].trt"
		;
connectAttr "Wrist_Joint_L_CTR2.r" "Ring1_Joint_L_GRP0_parentConstraint1.tg[0].tr"
		;
connectAttr "Wrist_Joint_L_CTR2.ro" "Ring1_Joint_L_GRP0_parentConstraint1.tg[0].tro"
		;
connectAttr "Wrist_Joint_L_CTR2.s" "Ring1_Joint_L_GRP0_parentConstraint1.tg[0].ts"
		;
connectAttr "Wrist_Joint_L_CTR2.pm" "Ring1_Joint_L_GRP0_parentConstraint1.tg[0].tpm"
		;
connectAttr "Ring1_Joint_L_GRP0_parentConstraint1.w0" "Ring1_Joint_L_GRP0_parentConstraint1.tg[0].tw"
		;
connectAttr "TEMP_RigRoot.limbs" "Arm_Limb_L_NODE.rigRoot";
connectAttr "Clav_Limb_L_NODE.limbChildren" "Arm_Limb_L_NODE.limbParent";
connectAttr "Arm_Shoulder_L_JNT.group" "Shoulder_Joint_L_GRP0.joint";
connectAttr "Arm_Limb_L_NODE.jointGroups" "Shoulder_Joint_L_GRP0.limb";
connectAttr "Arm_Limb_L_NODE.usedGroups" "Shoulder_Joint_L_GRP0.used";
connectAttr "Shoulder_Joint_L_GRP0_parentConstraint1.ctx" "Shoulder_Joint_L_GRP0.tx"
		;
connectAttr "Shoulder_Joint_L_GRP0_parentConstraint1.cty" "Shoulder_Joint_L_GRP0.ty"
		;
connectAttr "Shoulder_Joint_L_GRP0_parentConstraint1.ctz" "Shoulder_Joint_L_GRP0.tz"
		;
connectAttr "Shoulder_Joint_L_GRP0_parentConstraint1.crx" "Shoulder_Joint_L_GRP0.rx"
		;
connectAttr "Shoulder_Joint_L_GRP0_parentConstraint1.cry" "Shoulder_Joint_L_GRP0.ry"
		;
connectAttr "Shoulder_Joint_L_GRP0_parentConstraint1.crz" "Shoulder_Joint_L_GRP0.rz"
		;
connectAttr "Control_Disp.di" "Shoulder_Joint_L_CTR0.do";
connectAttr "Shoulder_Joint_L_GRP0.control" "Shoulder_Joint_L_CTR0.group";
connectAttr "Arm_Elbow_L_JNT.group" "Elbow_Joint_L_GRP1.joint";
connectAttr "Arm_Limb_L_NODE.jointGroups" "Elbow_Joint_L_GRP1.limb";
connectAttr "Arm_Limb_L_NODE.usedGroups" "Elbow_Joint_L_GRP1.used";
connectAttr "Control_Disp.di" "Elbow_Joint_L_CTR1.do";
connectAttr "Elbow_Joint_L_GRP1.control" "Elbow_Joint_L_CTR1.group";
connectAttr "Arm_Wrist_L_JNT.group" "Wrist_Joint_L_GRP2.joint";
connectAttr "Arm_Limb_L_NODE.jointGroups" "Wrist_Joint_L_GRP2.limb";
connectAttr "Arm_Limb_L_NODE.usedGroups" "Wrist_Joint_L_GRP2.used";
connectAttr "Control_Disp.di" "Wrist_Joint_L_CTR2.do";
connectAttr "Wrist_Joint_L_GRP2.control" "Wrist_Joint_L_CTR2.group";
connectAttr "Shoulder_Joint_L_GRP0.ro" "Shoulder_Joint_L_GRP0_parentConstraint1.cro"
		;
connectAttr "Shoulder_Joint_L_GRP0.pim" "Shoulder_Joint_L_GRP0_parentConstraint1.cpim"
		;
connectAttr "Shoulder_Joint_L_GRP0.rp" "Shoulder_Joint_L_GRP0_parentConstraint1.crp"
		;
connectAttr "Shoulder_Joint_L_GRP0.rpt" "Shoulder_Joint_L_GRP0_parentConstraint1.crt"
		;
connectAttr "Clav01_Joint_L_CTR0.t" "Shoulder_Joint_L_GRP0_parentConstraint1.tg[0].tt"
		;
connectAttr "Clav01_Joint_L_CTR0.rp" "Shoulder_Joint_L_GRP0_parentConstraint1.tg[0].trp"
		;
connectAttr "Clav01_Joint_L_CTR0.rpt" "Shoulder_Joint_L_GRP0_parentConstraint1.tg[0].trt"
		;
connectAttr "Clav01_Joint_L_CTR0.r" "Shoulder_Joint_L_GRP0_parentConstraint1.tg[0].tr"
		;
connectAttr "Clav01_Joint_L_CTR0.ro" "Shoulder_Joint_L_GRP0_parentConstraint1.tg[0].tro"
		;
connectAttr "Clav01_Joint_L_CTR0.s" "Shoulder_Joint_L_GRP0_parentConstraint1.tg[0].ts"
		;
connectAttr "Clav01_Joint_L_CTR0.pm" "Shoulder_Joint_L_GRP0_parentConstraint1.tg[0].tpm"
		;
connectAttr "Shoulder_Joint_L_GRP0_parentConstraint1.w0" "Shoulder_Joint_L_GRP0_parentConstraint1.tg[0].tw"
		;
connectAttr "TEMP_RigRoot.limbs" "Pinkie_Limb_L_NODE.rigRoot";
connectAttr "Arm_Limb_L_NODE.limbChildren" "Pinkie_Limb_L_NODE.limbParent";
connectAttr "Pinkie_Pinkey1_L_JNT.group" "Pinkey1_Joint_L_GRP0.joint";
connectAttr "Pinkie_Limb_L_NODE.jointGroups" "Pinkey1_Joint_L_GRP0.limb";
connectAttr "Pinkie_Limb_L_NODE.usedGroups" "Pinkey1_Joint_L_GRP0.used";
connectAttr "Pinkey1_Joint_L_GRP0_parentConstraint1.ctx" "Pinkey1_Joint_L_GRP0.tx"
		;
connectAttr "Pinkey1_Joint_L_GRP0_parentConstraint1.cty" "Pinkey1_Joint_L_GRP0.ty"
		;
connectAttr "Pinkey1_Joint_L_GRP0_parentConstraint1.ctz" "Pinkey1_Joint_L_GRP0.tz"
		;
connectAttr "Pinkey1_Joint_L_GRP0_parentConstraint1.crx" "Pinkey1_Joint_L_GRP0.rx"
		;
connectAttr "Pinkey1_Joint_L_GRP0_parentConstraint1.cry" "Pinkey1_Joint_L_GRP0.ry"
		;
connectAttr "Pinkey1_Joint_L_GRP0_parentConstraint1.crz" "Pinkey1_Joint_L_GRP0.rz"
		;
connectAttr "Control_Disp.di" "Pinkey1_Joint_L_CTR0.do";
connectAttr "Pinkey1_Joint_L_GRP0.control" "Pinkey1_Joint_L_CTR0.group";
connectAttr "Pinkie_Pinkey2_L_JNT.group" "Pinkey2_Joint_L_GRP1.joint";
connectAttr "Pinkie_Limb_L_NODE.jointGroups" "Pinkey2_Joint_L_GRP1.limb";
connectAttr "Pinkie_Limb_L_NODE.usedGroups" "Pinkey2_Joint_L_GRP1.used";
connectAttr "Control_Disp.di" "Pinkey2_Joint_L_CTR1.do";
connectAttr "Pinkey2_Joint_L_GRP1.control" "Pinkey2_Joint_L_CTR1.group";
connectAttr "Pinkie_Pinkey3_L_JNT.group" "Pinkey3_Joint_L_GRP2.joint";
connectAttr "Pinkie_Limb_L_NODE.jointGroups" "Pinkey3_Joint_L_GRP2.limb";
connectAttr "Pinkie_Limb_L_NODE.usedGroups" "Pinkey3_Joint_L_GRP2.used";
connectAttr "Control_Disp.di" "Pinkey3_Joint_L_CTR2.do";
connectAttr "Pinkey3_Joint_L_GRP2.control" "Pinkey3_Joint_L_CTR2.group";
connectAttr "Pinkie_Pinkey4_L_JNT.group" "Pinkey4_Joint_L_GRP3.joint";
connectAttr "Pinkie_Limb_L_NODE.jointGroups" "Pinkey4_Joint_L_GRP3.limb";
connectAttr "Pinkie_Limb_L_NODE.usedGroups" "Pinkey4_Joint_L_GRP3.used";
connectAttr "Control_Disp.di" "Pinkey4_Joint_L_CTR3.do";
connectAttr "Pinkey4_Joint_L_GRP3.control" "Pinkey4_Joint_L_CTR3.group";
connectAttr "Pinkey1_Joint_L_GRP0.ro" "Pinkey1_Joint_L_GRP0_parentConstraint1.cro"
		;
connectAttr "Pinkey1_Joint_L_GRP0.pim" "Pinkey1_Joint_L_GRP0_parentConstraint1.cpim"
		;
connectAttr "Pinkey1_Joint_L_GRP0.rp" "Pinkey1_Joint_L_GRP0_parentConstraint1.crp"
		;
connectAttr "Pinkey1_Joint_L_GRP0.rpt" "Pinkey1_Joint_L_GRP0_parentConstraint1.crt"
		;
connectAttr "Wrist_Joint_L_CTR2.t" "Pinkey1_Joint_L_GRP0_parentConstraint1.tg[0].tt"
		;
connectAttr "Wrist_Joint_L_CTR2.rp" "Pinkey1_Joint_L_GRP0_parentConstraint1.tg[0].trp"
		;
connectAttr "Wrist_Joint_L_CTR2.rpt" "Pinkey1_Joint_L_GRP0_parentConstraint1.tg[0].trt"
		;
connectAttr "Wrist_Joint_L_CTR2.r" "Pinkey1_Joint_L_GRP0_parentConstraint1.tg[0].tr"
		;
connectAttr "Wrist_Joint_L_CTR2.ro" "Pinkey1_Joint_L_GRP0_parentConstraint1.tg[0].tro"
		;
connectAttr "Wrist_Joint_L_CTR2.s" "Pinkey1_Joint_L_GRP0_parentConstraint1.tg[0].ts"
		;
connectAttr "Wrist_Joint_L_CTR2.pm" "Pinkey1_Joint_L_GRP0_parentConstraint1.tg[0].tpm"
		;
connectAttr "Pinkey1_Joint_L_GRP0_parentConstraint1.w0" "Pinkey1_Joint_L_GRP0_parentConstraint1.tg[0].tw"
		;
connectAttr "TEMP_RigRoot.limbs" "Middle_Limb_L_NODE.rigRoot";
connectAttr "Arm_Limb_L_NODE.limbChildren" "Middle_Limb_L_NODE.limbParent";
connectAttr "Middle_Middle1_L_JNT.group" "Middle1_Joint_L_GRP0.joint";
connectAttr "Middle_Limb_L_NODE.jointGroups" "Middle1_Joint_L_GRP0.limb";
connectAttr "Middle_Limb_L_NODE.usedGroups" "Middle1_Joint_L_GRP0.used";
connectAttr "Middle1_Joint_L_GRP0_parentConstraint1.ctx" "Middle1_Joint_L_GRP0.tx"
		;
connectAttr "Middle1_Joint_L_GRP0_parentConstraint1.cty" "Middle1_Joint_L_GRP0.ty"
		;
connectAttr "Middle1_Joint_L_GRP0_parentConstraint1.ctz" "Middle1_Joint_L_GRP0.tz"
		;
connectAttr "Middle1_Joint_L_GRP0_parentConstraint1.crx" "Middle1_Joint_L_GRP0.rx"
		;
connectAttr "Middle1_Joint_L_GRP0_parentConstraint1.cry" "Middle1_Joint_L_GRP0.ry"
		;
connectAttr "Middle1_Joint_L_GRP0_parentConstraint1.crz" "Middle1_Joint_L_GRP0.rz"
		;
connectAttr "Control_Disp.di" "Middle1_Joint_L_CTR0.do";
connectAttr "Middle1_Joint_L_GRP0.control" "Middle1_Joint_L_CTR0.group";
connectAttr "Middle_Middle2_L_JNT.group" "Middle2_Joint_L_GRP1.joint";
connectAttr "Middle_Limb_L_NODE.jointGroups" "Middle2_Joint_L_GRP1.limb";
connectAttr "Middle_Limb_L_NODE.usedGroups" "Middle2_Joint_L_GRP1.used";
connectAttr "Control_Disp.di" "Middle2_Joint_L_CTR1.do";
connectAttr "Middle2_Joint_L_GRP1.control" "Middle2_Joint_L_CTR1.group";
connectAttr "Middle_Middle3_L_JNT.group" "Middle3_Joint_L_GRP2.joint";
connectAttr "Middle_Limb_L_NODE.jointGroups" "Middle3_Joint_L_GRP2.limb";
connectAttr "Middle_Limb_L_NODE.usedGroups" "Middle3_Joint_L_GRP2.used";
connectAttr "Control_Disp.di" "Middle3_Joint_L_CTR2.do";
connectAttr "Middle3_Joint_L_GRP2.control" "Middle3_Joint_L_CTR2.group";
connectAttr "Middle_Middle4_L_JNT.group" "Middle4_Joint_L_GRP3.joint";
connectAttr "Middle_Limb_L_NODE.jointGroups" "Middle4_Joint_L_GRP3.limb";
connectAttr "Middle_Limb_L_NODE.usedGroups" "Middle4_Joint_L_GRP3.used";
connectAttr "Control_Disp.di" "Middle4_Joint_L_CTR3.do";
connectAttr "Middle4_Joint_L_GRP3.control" "Middle4_Joint_L_CTR3.group";
connectAttr "Middle1_Joint_L_GRP0.ro" "Middle1_Joint_L_GRP0_parentConstraint1.cro"
		;
connectAttr "Middle1_Joint_L_GRP0.pim" "Middle1_Joint_L_GRP0_parentConstraint1.cpim"
		;
connectAttr "Middle1_Joint_L_GRP0.rp" "Middle1_Joint_L_GRP0_parentConstraint1.crp"
		;
connectAttr "Middle1_Joint_L_GRP0.rpt" "Middle1_Joint_L_GRP0_parentConstraint1.crt"
		;
connectAttr "Wrist_Joint_L_CTR2.t" "Middle1_Joint_L_GRP0_parentConstraint1.tg[0].tt"
		;
connectAttr "Wrist_Joint_L_CTR2.rp" "Middle1_Joint_L_GRP0_parentConstraint1.tg[0].trp"
		;
connectAttr "Wrist_Joint_L_CTR2.rpt" "Middle1_Joint_L_GRP0_parentConstraint1.tg[0].trt"
		;
connectAttr "Wrist_Joint_L_CTR2.r" "Middle1_Joint_L_GRP0_parentConstraint1.tg[0].tr"
		;
connectAttr "Wrist_Joint_L_CTR2.ro" "Middle1_Joint_L_GRP0_parentConstraint1.tg[0].tro"
		;
connectAttr "Wrist_Joint_L_CTR2.s" "Middle1_Joint_L_GRP0_parentConstraint1.tg[0].ts"
		;
connectAttr "Wrist_Joint_L_CTR2.pm" "Middle1_Joint_L_GRP0_parentConstraint1.tg[0].tpm"
		;
connectAttr "Middle1_Joint_L_GRP0_parentConstraint1.w0" "Middle1_Joint_L_GRP0_parentConstraint1.tg[0].tw"
		;
connectAttr "TEMP_RigRoot.limbs" "Clav_Limb_L_NODE.rigRoot";
connectAttr "Clav_Clav01_L_JNT.group" "Clav01_Joint_L_GRP0.joint";
connectAttr "Clav_Limb_L_NODE.jointGroups" "Clav01_Joint_L_GRP0.limb";
connectAttr "Clav_Limb_L_NODE.usedGroups" "Clav01_Joint_L_GRP0.used";
connectAttr "Control_Disp.di" "Clav01_Joint_L_CTR0.do";
connectAttr "Clav01_Joint_L_GRP0.control" "Clav01_Joint_L_CTR0.group";
connectAttr "TEMP_RigRoot.limbs" "ArmTwist_Limb_L_NODE.rigRoot";
connectAttr "Arm_Limb_L_NODE.limbChildren" "ArmTwist_Limb_L_NODE.limbParent";
connectAttr "ArmTwist_AT1_L_JNT.group" "AT1_Joint_L_GRP0.joint";
connectAttr "ArmTwist_Limb_L_NODE.jointGroups" "AT1_Joint_L_GRP0.limb";
connectAttr "ArmTwist_Limb_L_NODE.usedGroups" "AT1_Joint_L_GRP0.used";
connectAttr "AT1_Joint_L_GRP0_parentConstraint1.ctx" "AT1_Joint_L_GRP0.tx";
connectAttr "AT1_Joint_L_GRP0_parentConstraint1.cty" "AT1_Joint_L_GRP0.ty";
connectAttr "AT1_Joint_L_GRP0_parentConstraint1.ctz" "AT1_Joint_L_GRP0.tz";
connectAttr "AT1_Joint_L_GRP0_parentConstraint1.crx" "AT1_Joint_L_GRP0.rx";
connectAttr "AT1_Joint_L_GRP0_parentConstraint1.cry" "AT1_Joint_L_GRP0.ry";
connectAttr "AT1_Joint_L_GRP0_parentConstraint1.crz" "AT1_Joint_L_GRP0.rz";
connectAttr "Control_Disp.di" "AT1_Joint_L_CTR0.do";
connectAttr "AT1_Joint_L_GRP0.control" "AT1_Joint_L_CTR0.group";
connectAttr "ArmTwist_AT2_L_JNT.group" "AT2_Joint_L_GRP1.joint";
connectAttr "ArmTwist_Limb_L_NODE.jointGroups" "AT2_Joint_L_GRP1.limb";
connectAttr "ArmTwist_Limb_L_NODE.usedGroups" "AT2_Joint_L_GRP1.used";
connectAttr "Control_Disp.di" "AT2_Joint_L_CTR1.do";
connectAttr "AT2_Joint_L_GRP1.control" "AT2_Joint_L_CTR1.group";
connectAttr "ArmTwist_AT3_L_JNT.group" "AT3_Joint_L_GRP2.joint";
connectAttr "ArmTwist_Limb_L_NODE.jointGroups" "AT3_Joint_L_GRP2.limb";
connectAttr "ArmTwist_Limb_L_NODE.usedGroups" "AT3_Joint_L_GRP2.used";
connectAttr "Control_Disp.di" "AT3_Joint_L_CTR2.do";
connectAttr "AT3_Joint_L_GRP2.control" "AT3_Joint_L_CTR2.group";
connectAttr "AT1_Joint_L_GRP0.ro" "AT1_Joint_L_GRP0_parentConstraint1.cro";
connectAttr "AT1_Joint_L_GRP0.pim" "AT1_Joint_L_GRP0_parentConstraint1.cpim";
connectAttr "AT1_Joint_L_GRP0.rp" "AT1_Joint_L_GRP0_parentConstraint1.crp";
connectAttr "AT1_Joint_L_GRP0.rpt" "AT1_Joint_L_GRP0_parentConstraint1.crt";
connectAttr "Elbow_Joint_L_CTR1.t" "AT1_Joint_L_GRP0_parentConstraint1.tg[0].tt"
		;
connectAttr "Elbow_Joint_L_CTR1.rp" "AT1_Joint_L_GRP0_parentConstraint1.tg[0].trp"
		;
connectAttr "Elbow_Joint_L_CTR1.rpt" "AT1_Joint_L_GRP0_parentConstraint1.tg[0].trt"
		;
connectAttr "Elbow_Joint_L_CTR1.r" "AT1_Joint_L_GRP0_parentConstraint1.tg[0].tr"
		;
connectAttr "Elbow_Joint_L_CTR1.ro" "AT1_Joint_L_GRP0_parentConstraint1.tg[0].tro"
		;
connectAttr "Elbow_Joint_L_CTR1.s" "AT1_Joint_L_GRP0_parentConstraint1.tg[0].ts"
		;
connectAttr "Elbow_Joint_L_CTR1.pm" "AT1_Joint_L_GRP0_parentConstraint1.tg[0].tpm"
		;
connectAttr "AT1_Joint_L_GRP0_parentConstraint1.w0" "AT1_Joint_L_GRP0_parentConstraint1.tg[0].tw"
		;
connectAttr "TEMP_RigRoot.limbs" "Index_Limb_L_NODE.rigRoot";
connectAttr "Arm_Limb_L_NODE.limbChildren" "Index_Limb_L_NODE.limbParent";
connectAttr "Index_Index1_L_JNT.group" "Index1_Joint_L_GRP0.joint";
connectAttr "Index_Limb_L_NODE.jointGroups" "Index1_Joint_L_GRP0.limb";
connectAttr "Index_Limb_L_NODE.usedGroups" "Index1_Joint_L_GRP0.used";
connectAttr "Index1_Joint_L_GRP0_parentConstraint1.ctx" "Index1_Joint_L_GRP0.tx"
		;
connectAttr "Index1_Joint_L_GRP0_parentConstraint1.cty" "Index1_Joint_L_GRP0.ty"
		;
connectAttr "Index1_Joint_L_GRP0_parentConstraint1.ctz" "Index1_Joint_L_GRP0.tz"
		;
connectAttr "Index1_Joint_L_GRP0_parentConstraint1.crx" "Index1_Joint_L_GRP0.rx"
		;
connectAttr "Index1_Joint_L_GRP0_parentConstraint1.cry" "Index1_Joint_L_GRP0.ry"
		;
connectAttr "Index1_Joint_L_GRP0_parentConstraint1.crz" "Index1_Joint_L_GRP0.rz"
		;
connectAttr "Control_Disp.di" "Index1_Joint_L_CTR0.do";
connectAttr "Index1_Joint_L_GRP0.control" "Index1_Joint_L_CTR0.group";
connectAttr "Index_Index2_L_JNT.group" "Index2_Joint_L_GRP1.joint";
connectAttr "Index_Limb_L_NODE.jointGroups" "Index2_Joint_L_GRP1.limb";
connectAttr "Index_Limb_L_NODE.usedGroups" "Index2_Joint_L_GRP1.used";
connectAttr "Control_Disp.di" "Index2_Joint_L_CTR1.do";
connectAttr "Index2_Joint_L_GRP1.control" "Index2_Joint_L_CTR1.group";
connectAttr "Index_Index3_L_JNT.group" "Index3_Joint_L_GRP2.joint";
connectAttr "Index_Limb_L_NODE.jointGroups" "Index3_Joint_L_GRP2.limb";
connectAttr "Index_Limb_L_NODE.usedGroups" "Index3_Joint_L_GRP2.used";
connectAttr "Control_Disp.di" "Index3_Joint_L_CTR2.do";
connectAttr "Index3_Joint_L_GRP2.control" "Index3_Joint_L_CTR2.group";
connectAttr "Index_Index4_L_JNT.group" "Index4_Joint_L_GRP3.joint";
connectAttr "Index_Limb_L_NODE.jointGroups" "Index4_Joint_L_GRP3.limb";
connectAttr "Index_Limb_L_NODE.usedGroups" "Index4_Joint_L_GRP3.used";
connectAttr "Control_Disp.di" "Index4_Joint_L_CTR3.do";
connectAttr "Index4_Joint_L_GRP3.control" "Index4_Joint_L_CTR3.group";
connectAttr "Index1_Joint_L_GRP0.ro" "Index1_Joint_L_GRP0_parentConstraint1.cro"
		;
connectAttr "Index1_Joint_L_GRP0.pim" "Index1_Joint_L_GRP0_parentConstraint1.cpim"
		;
connectAttr "Index1_Joint_L_GRP0.rp" "Index1_Joint_L_GRP0_parentConstraint1.crp"
		;
connectAttr "Index1_Joint_L_GRP0.rpt" "Index1_Joint_L_GRP0_parentConstraint1.crt"
		;
connectAttr "Wrist_Joint_L_CTR2.t" "Index1_Joint_L_GRP0_parentConstraint1.tg[0].tt"
		;
connectAttr "Wrist_Joint_L_CTR2.rp" "Index1_Joint_L_GRP0_parentConstraint1.tg[0].trp"
		;
connectAttr "Wrist_Joint_L_CTR2.rpt" "Index1_Joint_L_GRP0_parentConstraint1.tg[0].trt"
		;
connectAttr "Wrist_Joint_L_CTR2.r" "Index1_Joint_L_GRP0_parentConstraint1.tg[0].tr"
		;
connectAttr "Wrist_Joint_L_CTR2.ro" "Index1_Joint_L_GRP0_parentConstraint1.tg[0].tro"
		;
connectAttr "Wrist_Joint_L_CTR2.s" "Index1_Joint_L_GRP0_parentConstraint1.tg[0].ts"
		;
connectAttr "Wrist_Joint_L_CTR2.pm" "Index1_Joint_L_GRP0_parentConstraint1.tg[0].tpm"
		;
connectAttr "Index1_Joint_L_GRP0_parentConstraint1.w0" "Index1_Joint_L_GRP0_parentConstraint1.tg[0].tw"
		;
connectAttr "TEMP_RigRoot.limbs" "Thumb_Limb_L_NODE.rigRoot";
connectAttr "Arm_Limb_L_NODE.limbChildren" "Thumb_Limb_L_NODE.limbParent";
connectAttr "Thumb_Thumb1_L_JNT.group" "Thumb1_Joint_L_GRP0.joint";
connectAttr "Thumb_Limb_L_NODE.jointGroups" "Thumb1_Joint_L_GRP0.limb";
connectAttr "Thumb_Limb_L_NODE.usedGroups" "Thumb1_Joint_L_GRP0.used";
connectAttr "Thumb1_Joint_L_GRP0_parentConstraint1.ctx" "Thumb1_Joint_L_GRP0.tx"
		;
connectAttr "Thumb1_Joint_L_GRP0_parentConstraint1.cty" "Thumb1_Joint_L_GRP0.ty"
		;
connectAttr "Thumb1_Joint_L_GRP0_parentConstraint1.ctz" "Thumb1_Joint_L_GRP0.tz"
		;
connectAttr "Thumb1_Joint_L_GRP0_parentConstraint1.crx" "Thumb1_Joint_L_GRP0.rx"
		;
connectAttr "Thumb1_Joint_L_GRP0_parentConstraint1.cry" "Thumb1_Joint_L_GRP0.ry"
		;
connectAttr "Thumb1_Joint_L_GRP0_parentConstraint1.crz" "Thumb1_Joint_L_GRP0.rz"
		;
connectAttr "Control_Disp.di" "Thumb1_Joint_L_CTR0.do";
connectAttr "Thumb1_Joint_L_GRP0.control" "Thumb1_Joint_L_CTR0.group";
connectAttr "Thumb_Thumb2_L_JNT.group" "Thumb2_Joint_L_GRP1.joint";
connectAttr "Thumb_Limb_L_NODE.jointGroups" "Thumb2_Joint_L_GRP1.limb";
connectAttr "Thumb_Limb_L_NODE.usedGroups" "Thumb2_Joint_L_GRP1.used";
connectAttr "Control_Disp.di" "Thumb2_Joint_L_CTR1.do";
connectAttr "Thumb2_Joint_L_GRP1.control" "Thumb2_Joint_L_CTR1.group";
connectAttr "Thumb_Thumb3_L_JNT.group" "Thumb3_Joint_L_GRP2.joint";
connectAttr "Thumb_Limb_L_NODE.jointGroups" "Thumb3_Joint_L_GRP2.limb";
connectAttr "Thumb_Limb_L_NODE.usedGroups" "Thumb3_Joint_L_GRP2.used";
connectAttr "Control_Disp.di" "Thumb3_Joint_L_CTR2.do";
connectAttr "Thumb3_Joint_L_GRP2.control" "Thumb3_Joint_L_CTR2.group";
connectAttr "Thumb_Thumb4_L_JNT.group" "Thumb4_Joint_L_GRP3.joint";
connectAttr "Thumb_Limb_L_NODE.jointGroups" "Thumb4_Joint_L_GRP3.limb";
connectAttr "Thumb_Limb_L_NODE.usedGroups" "Thumb4_Joint_L_GRP3.used";
connectAttr "Control_Disp.di" "Thumb4_Joint_L_CTR3.do";
connectAttr "Thumb4_Joint_L_GRP3.control" "Thumb4_Joint_L_CTR3.group";
connectAttr "Thumb1_Joint_L_GRP0.ro" "Thumb1_Joint_L_GRP0_parentConstraint1.cro"
		;
connectAttr "Thumb1_Joint_L_GRP0.pim" "Thumb1_Joint_L_GRP0_parentConstraint1.cpim"
		;
connectAttr "Thumb1_Joint_L_GRP0.rp" "Thumb1_Joint_L_GRP0_parentConstraint1.crp"
		;
connectAttr "Thumb1_Joint_L_GRP0.rpt" "Thumb1_Joint_L_GRP0_parentConstraint1.crt"
		;
connectAttr "Wrist_Joint_L_CTR2.t" "Thumb1_Joint_L_GRP0_parentConstraint1.tg[0].tt"
		;
connectAttr "Wrist_Joint_L_CTR2.rp" "Thumb1_Joint_L_GRP0_parentConstraint1.tg[0].trp"
		;
connectAttr "Wrist_Joint_L_CTR2.rpt" "Thumb1_Joint_L_GRP0_parentConstraint1.tg[0].trt"
		;
connectAttr "Wrist_Joint_L_CTR2.r" "Thumb1_Joint_L_GRP0_parentConstraint1.tg[0].tr"
		;
connectAttr "Wrist_Joint_L_CTR2.ro" "Thumb1_Joint_L_GRP0_parentConstraint1.tg[0].tro"
		;
connectAttr "Wrist_Joint_L_CTR2.s" "Thumb1_Joint_L_GRP0_parentConstraint1.tg[0].ts"
		;
connectAttr "Wrist_Joint_L_CTR2.pm" "Thumb1_Joint_L_GRP0_parentConstraint1.tg[0].tpm"
		;
connectAttr "Thumb1_Joint_L_GRP0_parentConstraint1.w0" "Thumb1_Joint_L_GRP0_parentConstraint1.tg[0].tw"
		;
connectAttr "TEMP_RigRoot.meshesParentGroup" "MESHES.rigRoot";
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
connectAttr "layerManager.dli[1]" "Control_Disp.id";
connectAttr "layerManager.dli[2]" "Joint_Disp.id";
connectAttr "layerManager.dli[3]" "Meshes_Disp.id";
connectAttr "TempMaterial.oc" "lambert2SG.ss";
connectAttr "Cylinder_PolyShape.iog" "lambert2SG.dsm" -na;
connectAttr "Cube_PolyShape.iog" "lambert2SG.dsm" -na;
connectAttr "Sphere_PolyShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "TempMaterial.msg" "materialInfo1.m";
connectAttr "LControlsMaterial.oc" "LControlsMaterialSG.ss";
connectAttr "TEMP_RigRoot.controlMtrL" "LControlsMaterialSG.rigRoot";
connectAttr "Ring2_Joint_L_CTR1Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Ring1_Joint_L_CTR0Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Ring3_Joint_L_CTR2Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Ring4_Joint_L_CTR3Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Elbow_Joint_L_CTR1Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Shoulder_Joint_L_CTR0Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Wrist_Joint_L_CTR2Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Pinkey2_Joint_L_CTR1Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Pinkey1_Joint_L_CTR0Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Pinkey3_Joint_L_CTR2Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Pinkey4_Joint_L_CTR3Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Middle2_Joint_L_CTR1Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Middle1_Joint_L_CTR0Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Middle3_Joint_L_CTR2Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Middle4_Joint_L_CTR3Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Clav01_Joint_L_CTR0Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "AT2_Joint_L_CTR1Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "AT1_Joint_L_CTR0Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "AT3_Joint_L_CTR2Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Index2_Joint_L_CTR1Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Index1_Joint_L_CTR0Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Index3_Joint_L_CTR2Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Index4_Joint_L_CTR3Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Thumb2_Joint_L_CTR1Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Thumb1_Joint_L_CTR0Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Thumb3_Joint_L_CTR2Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Thumb4_Joint_L_CTR3Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "LControlsMaterialSG.msg" "materialInfo2.sg";
connectAttr "LControlsMaterial.msg" "materialInfo2.m";
connectAttr "LControlsMaterial.msg" "materialInfo2.t" -na;
connectAttr "MControlsMaterial.oc" "MControlsMaterialSG.ss";
connectAttr "TEMP_RigRoot.controlMtrM" "MControlsMaterialSG.rigRoot";
connectAttr "MControlsMaterialSG.msg" "materialInfo3.sg";
connectAttr "MControlsMaterial.msg" "materialInfo3.m";
connectAttr "MControlsMaterial.msg" "materialInfo3.t" -na;
connectAttr "RControlsMaterial.oc" "RControlsMaterialSG.ss";
connectAttr "TEMP_RigRoot.controlMtrR" "RControlsMaterialSG.rigRoot";
connectAttr "RControlsMaterialSG.msg" "materialInfo4.sg";
connectAttr "RControlsMaterial.msg" "materialInfo4.m";
connectAttr "RControlsMaterial.msg" "materialInfo4.t" -na;
connectAttr "Elbow_Joint_L_CTR1.msg" "Elbow_Joint_L_CTR1_tag.act";
connectAttr "Clav01_Joint_L_CTR0_tag.prep" "Elbow_Joint_L_CTR1_tag.prep";
connectAttr "Ring2_Joint_L_CTR1_tag.pare" "Elbow_Joint_L_CTR1_tag.child[0]";
connectAttr "Ring1_Joint_L_CTR0_tag.pare" "Elbow_Joint_L_CTR1_tag.child[1]";
connectAttr "Ring3_Joint_L_CTR2_tag.pare" "Elbow_Joint_L_CTR1_tag.child[2]";
connectAttr "Ring4_Joint_L_CTR3_tag.pare" "Elbow_Joint_L_CTR1_tag.child[3]";
connectAttr "Pinkey2_Joint_L_CTR1_tag.pare" "Elbow_Joint_L_CTR1_tag.child[4]";
connectAttr "Pinkey1_Joint_L_CTR0_tag.pare" "Elbow_Joint_L_CTR1_tag.child[5]";
connectAttr "Pinkey3_Joint_L_CTR2_tag.pare" "Elbow_Joint_L_CTR1_tag.child[6]";
connectAttr "Pinkey4_Joint_L_CTR3_tag.pare" "Elbow_Joint_L_CTR1_tag.child[7]";
connectAttr "Middle2_Joint_L_CTR1_tag.pare" "Elbow_Joint_L_CTR1_tag.child[8]";
connectAttr "Middle1_Joint_L_CTR0_tag.pare" "Elbow_Joint_L_CTR1_tag.child[9]";
connectAttr "Middle3_Joint_L_CTR2_tag.pare" "Elbow_Joint_L_CTR1_tag.child[10]";
connectAttr "Middle4_Joint_L_CTR3_tag.pare" "Elbow_Joint_L_CTR1_tag.child[11]";
connectAttr "AT2_Joint_L_CTR1_tag.pare" "Elbow_Joint_L_CTR1_tag.child[12]";
connectAttr "AT1_Joint_L_CTR0_tag.pare" "Elbow_Joint_L_CTR1_tag.child[13]";
connectAttr "AT3_Joint_L_CTR2_tag.pare" "Elbow_Joint_L_CTR1_tag.child[14]";
connectAttr "Index2_Joint_L_CTR1_tag.pare" "Elbow_Joint_L_CTR1_tag.child[15]";
connectAttr "Index1_Joint_L_CTR0_tag.pare" "Elbow_Joint_L_CTR1_tag.child[16]";
connectAttr "Index3_Joint_L_CTR2_tag.pare" "Elbow_Joint_L_CTR1_tag.child[17]";
connectAttr "Index4_Joint_L_CTR3_tag.pare" "Elbow_Joint_L_CTR1_tag.child[18]";
connectAttr "Thumb2_Joint_L_CTR1_tag.pare" "Elbow_Joint_L_CTR1_tag.child[19]";
connectAttr "Thumb1_Joint_L_CTR0_tag.pare" "Elbow_Joint_L_CTR1_tag.child[20]";
connectAttr "Thumb3_Joint_L_CTR2_tag.pare" "Elbow_Joint_L_CTR1_tag.child[21]";
connectAttr "Thumb4_Joint_L_CTR3_tag.pare" "Elbow_Joint_L_CTR1_tag.child[22]";
connectAttr "Shoulder_Joint_L_CTR0.msg" "Shoulder_Joint_L_CTR0_tag.act";
connectAttr "Clav01_Joint_L_CTR0_tag.prep" "Shoulder_Joint_L_CTR0_tag.prep";
connectAttr "Wrist_Joint_L_CTR2.msg" "Wrist_Joint_L_CTR2_tag.act";
connectAttr "Clav01_Joint_L_CTR0_tag.prep" "Wrist_Joint_L_CTR2_tag.prep";
connectAttr "Clav01_Joint_L_CTR0.msg" "Clav01_Joint_L_CTR0_tag.act";
connectAttr "Elbow_Joint_L_CTR1_tag.pare" "Clav01_Joint_L_CTR0_tag.child[0]";
connectAttr "Shoulder_Joint_L_CTR0_tag.pare" "Clav01_Joint_L_CTR0_tag.child[1]";
connectAttr "Wrist_Joint_L_CTR2_tag.pare" "Clav01_Joint_L_CTR0_tag.child[2]";
connectAttr "controller1.prep" "Clav01_Joint_L_CTR0_tag.prep";
connectAttr "Ring2_Joint_L_CTR1.msg" "Ring2_Joint_L_CTR1_tag.act";
connectAttr "Elbow_Joint_L_CTR1_tag.prep" "Ring2_Joint_L_CTR1_tag.prep";
connectAttr "Ring1_Joint_L_CTR0.msg" "Ring1_Joint_L_CTR0_tag.act";
connectAttr "Elbow_Joint_L_CTR1_tag.prep" "Ring1_Joint_L_CTR0_tag.prep";
connectAttr "Ring3_Joint_L_CTR2.msg" "Ring3_Joint_L_CTR2_tag.act";
connectAttr "Elbow_Joint_L_CTR1_tag.prep" "Ring3_Joint_L_CTR2_tag.prep";
connectAttr "Ring4_Joint_L_CTR3.msg" "Ring4_Joint_L_CTR3_tag.act";
connectAttr "Elbow_Joint_L_CTR1_tag.prep" "Ring4_Joint_L_CTR3_tag.prep";
connectAttr "Pinkey2_Joint_L_CTR1.msg" "Pinkey2_Joint_L_CTR1_tag.act";
connectAttr "Elbow_Joint_L_CTR1_tag.prep" "Pinkey2_Joint_L_CTR1_tag.prep";
connectAttr "Pinkey1_Joint_L_CTR0.msg" "Pinkey1_Joint_L_CTR0_tag.act";
connectAttr "Elbow_Joint_L_CTR1_tag.prep" "Pinkey1_Joint_L_CTR0_tag.prep";
connectAttr "Pinkey3_Joint_L_CTR2.msg" "Pinkey3_Joint_L_CTR2_tag.act";
connectAttr "Elbow_Joint_L_CTR1_tag.prep" "Pinkey3_Joint_L_CTR2_tag.prep";
connectAttr "Pinkey4_Joint_L_CTR3.msg" "Pinkey4_Joint_L_CTR3_tag.act";
connectAttr "Elbow_Joint_L_CTR1_tag.prep" "Pinkey4_Joint_L_CTR3_tag.prep";
connectAttr "Middle2_Joint_L_CTR1.msg" "Middle2_Joint_L_CTR1_tag.act";
connectAttr "Elbow_Joint_L_CTR1_tag.prep" "Middle2_Joint_L_CTR1_tag.prep";
connectAttr "Middle1_Joint_L_CTR0.msg" "Middle1_Joint_L_CTR0_tag.act";
connectAttr "Elbow_Joint_L_CTR1_tag.prep" "Middle1_Joint_L_CTR0_tag.prep";
connectAttr "Middle3_Joint_L_CTR2.msg" "Middle3_Joint_L_CTR2_tag.act";
connectAttr "Elbow_Joint_L_CTR1_tag.prep" "Middle3_Joint_L_CTR2_tag.prep";
connectAttr "Middle4_Joint_L_CTR3.msg" "Middle4_Joint_L_CTR3_tag.act";
connectAttr "Elbow_Joint_L_CTR1_tag.prep" "Middle4_Joint_L_CTR3_tag.prep";
connectAttr "Clav01_Joint_L_CTR0_tag.pare" "controller1.child[0]";
connectAttr "AT2_Joint_L_CTR1.msg" "AT2_Joint_L_CTR1_tag.act";
connectAttr "Elbow_Joint_L_CTR1_tag.prep" "AT2_Joint_L_CTR1_tag.prep";
connectAttr "AT1_Joint_L_CTR0.msg" "AT1_Joint_L_CTR0_tag.act";
connectAttr "Elbow_Joint_L_CTR1_tag.prep" "AT1_Joint_L_CTR0_tag.prep";
connectAttr "AT3_Joint_L_CTR2.msg" "AT3_Joint_L_CTR2_tag.act";
connectAttr "Elbow_Joint_L_CTR1_tag.prep" "AT3_Joint_L_CTR2_tag.prep";
connectAttr "Index2_Joint_L_CTR1.msg" "Index2_Joint_L_CTR1_tag.act";
connectAttr "Elbow_Joint_L_CTR1_tag.prep" "Index2_Joint_L_CTR1_tag.prep";
connectAttr "Index1_Joint_L_CTR0.msg" "Index1_Joint_L_CTR0_tag.act";
connectAttr "Elbow_Joint_L_CTR1_tag.prep" "Index1_Joint_L_CTR0_tag.prep";
connectAttr "Index3_Joint_L_CTR2.msg" "Index3_Joint_L_CTR2_tag.act";
connectAttr "Elbow_Joint_L_CTR1_tag.prep" "Index3_Joint_L_CTR2_tag.prep";
connectAttr "Index4_Joint_L_CTR3.msg" "Index4_Joint_L_CTR3_tag.act";
connectAttr "Elbow_Joint_L_CTR1_tag.prep" "Index4_Joint_L_CTR3_tag.prep";
connectAttr "Thumb2_Joint_L_CTR1.msg" "Thumb2_Joint_L_CTR1_tag.act";
connectAttr "Elbow_Joint_L_CTR1_tag.prep" "Thumb2_Joint_L_CTR1_tag.prep";
connectAttr "Thumb1_Joint_L_CTR0.msg" "Thumb1_Joint_L_CTR0_tag.act";
connectAttr "Elbow_Joint_L_CTR1_tag.prep" "Thumb1_Joint_L_CTR0_tag.prep";
connectAttr "Thumb3_Joint_L_CTR2.msg" "Thumb3_Joint_L_CTR2_tag.act";
connectAttr "Elbow_Joint_L_CTR1_tag.prep" "Thumb3_Joint_L_CTR2_tag.prep";
connectAttr "Thumb4_Joint_L_CTR3.msg" "Thumb4_Joint_L_CTR3_tag.act";
connectAttr "Elbow_Joint_L_CTR1_tag.prep" "Thumb4_Joint_L_CTR3_tag.prep";
connectAttr "Thumb3_Joint_L_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "AT3_Joint_L_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "ArmTwist_AT2_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "Pinkey1_Joint_L_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "Index2_Joint_L_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "Thumb1_Joint_L_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "Index1_Joint_L_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "Thumb2_Joint_L_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "ArmTwist_AT3_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "Thumb4_Joint_L_CTR3_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "Index4_Joint_L_CTR3_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "Middle_Middle4_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "Pinkey4_Joint_L_CTR3_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "controller1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn";
connectAttr "AT2_Joint_L_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "Middle_Middle2_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "Middle_Middle1_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "Middle_Middle3_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "AT1_Joint_L_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "Index_Index3_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "Middle1_Joint_L_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "Index_Index4_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "Index3_Joint_L_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "Pinkey2_Joint_L_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "Middle2_Joint_L_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "Pinkey3_Joint_L_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "Middle4_Joint_L_CTR3_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "Index_Index2_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "Middle3_Joint_L_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "Index_Index1_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "Thumb_Thumb2_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "Thumb_Thumb1_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "Thumb_Thumb4_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "Pinkie_Pinkey4_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "Clav_Clav01_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "Thumb_Thumb3_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "ArmTwist_AT1_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "Pinkie_Pinkey3_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "Ring2_Joint_L_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "Ring1_Joint_L_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "Ring3_Joint_L_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "Ring4_Joint_L_CTR3_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "Ring_Ring3_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "Ring_Ring4_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "Thumb3_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "Thumb3_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "Thumb4_Joint_L_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "Index1_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "Thumb2_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn"
		;
connectAttr "Index2_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn"
		;
connectAttr "Index2_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "Thumb4_Joint_L_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "Thumb4_Joint_L_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "Index4_Joint_L_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "Index4_Joint_L_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "Index4_Joint_L_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "Thumb1_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "Thumb2_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "Thumb2_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "Thumb_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "Index3_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "Index3_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn"
		;
connectAttr "Thumb1_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "Thumb3_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "Index2_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "Index3_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "Thumb1_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "Arm_Elbow_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn"
		;
connectAttr "Arm_Wrist_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "Elbow_Joint_L_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn"
		;
connectAttr "Wrist_Joint_L_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "Clav01_Joint_L_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "Index1_Joint_L_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "Arm_Shoulder_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "Shoulder_Joint_L_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn"
		;
connectAttr "Shoulder_Joint_L_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn"
		;
connectAttr "Ring_Ring2_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn"
		;
connectAttr "Ring_Ring1_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "Middle1_Joint_L_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn"
		;
connectAttr "Pinkey1_Joint_L_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "AT1_Joint_L_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn"
		;
connectAttr "Thumb1_Joint_L_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn"
		;
connectAttr "Ring1_Joint_L_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn"
		;
connectAttr "Pinkie_Pinkey1_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "Pinkie_Pinkey2_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "Middle4_Joint_L_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "AT1_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "Middle_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "AT2_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "Pinkey3_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn"
		;
connectAttr "Pinkey2_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "Clav01_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn"
		;
connectAttr "ArmTwist_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn"
		;
connectAttr "Pinkey2_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn"
		;
connectAttr "Pinkey4_Joint_L_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn"
		;
connectAttr "Pinkey4_Joint_L_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn"
		;
connectAttr "Middle2_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn"
		;
connectAttr "Clav01_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn"
		;
connectAttr "AT2_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn"
		;
connectAttr "AT2_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn"
		;
connectAttr "AT1_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn"
		;
connectAttr "AT3_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn"
		;
connectAttr "Pinkey1_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn"
		;
connectAttr "Middle1_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn"
		;
connectAttr "AT3_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn"
		;
connectAttr "AT1_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn"
		;
connectAttr "Middle2_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn"
		;
connectAttr "Clav01_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn"
		;
connectAttr "AT3_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn"
		;
connectAttr "Middle3_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn"
		;
connectAttr "Index_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn"
		;
connectAttr "Index1_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn"
		;
connectAttr "Middle2_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn"
		;
connectAttr "Index1_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn"
		;
connectAttr "Middle3_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn"
		;
connectAttr "Pinkey2_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn"
		;
connectAttr "Clav_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn"
		;
connectAttr "Pinkey3_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn"
		;
connectAttr "Middle3_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[118].dn"
		;
connectAttr "Middle1_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn"
		;
connectAttr "Pinkey3_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[120].dn"
		;
connectAttr "Pinkey4_Joint_L_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn"
		;
connectAttr "Middle1_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn"
		;
connectAttr "Middle4_Joint_L_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[123].dn"
		;
connectAttr "Middle4_Joint_L_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[124].dn"
		;
connectAttr "JOINTS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[125].dn";
connectAttr "TEMP_RigRoot.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[126].dn";
connectAttr "Ring_Ring3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[127].dn"
		;
connectAttr "Clav_Clav01_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[128].dn"
		;
connectAttr "Diamond_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[129].dn";
connectAttr "Square_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[130].dn";
connectAttr "ArmTwist_AT1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[131].dn"
		;
connectAttr "Pinkie_Pinkey2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[132].dn"
		;
connectAttr "ArmTwist_AT2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[133].dn"
		;
connectAttr "Pinkie_Pinkey3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[134].dn"
		;
connectAttr "Thumb_Thumb3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[135].dn"
		;
connectAttr "Middle_Middle1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[136].dn"
		;
connectAttr "Middle_Middle4_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[137].dn"
		;
connectAttr "Index_Index1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[138].dn"
		;
connectAttr "ArmTwist_AT3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[139].dn"
		;
connectAttr "Thumb_Thumb4_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[140].dn"
		;
connectAttr "Index_Index2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[141].dn"
		;
connectAttr "Thumb_Thumb2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[142].dn"
		;
connectAttr "Thumb_Thumb1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[143].dn"
		;
connectAttr "Index_Index4_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[144].dn"
		;
connectAttr "Arm_Shoulder_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[145].dn"
		;
connectAttr "Ring_Ring2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[146].dn"
		;
connectAttr "Middle_Middle3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[147].dn"
		;
connectAttr "sceneConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[148].dn"
		;
connectAttr "Middle_Middle2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[149].dn"
		;
connectAttr "LIMBS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[150].dn";
connectAttr "MESHES.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[151].dn";
connectAttr "Control_Disp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[152].dn";
connectAttr "Arm_Elbow_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[153].dn"
		;
connectAttr "Joint_Disp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[154].dn";
connectAttr "Sphere_Poly.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[155].dn";
connectAttr "Pinkie_Pinkey4_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[156].dn"
		;
connectAttr "Sphere_PolyShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[157].dn"
		;
connectAttr "Pinkie_Pinkey1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[158].dn"
		;
connectAttr "uiConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[159].dn"
		;
connectAttr "Ring_Ring4_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[160].dn"
		;
connectAttr "Arm_Wrist_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[161].dn"
		;
connectAttr "Index_Index3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[162].dn"
		;
connectAttr "Ring_Ring1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[163].dn"
		;
connectAttr "Meshes_Disp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[164].dn";
connectAttr "Cube_Poly.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[165].dn";
connectAttr "Cube_PolyShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[166].dn"
		;
connectAttr "Cylinder_Poly.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[167].dn";
connectAttr "Cylinder_PolyShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[168].dn"
		;
connectAttr "Circle_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[169].dn";
connectAttr "Circle_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[170].dn"
		;
connectAttr "Cube_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[171].dn"
		;
connectAttr "Cube_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[172].dn";
connectAttr "Pin_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[173].dn";
connectAttr "Pin_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[174].dn";
connectAttr "Diamond_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[175].dn"
		;
connectAttr "Square_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[176].dn"
		;
connectAttr "TempMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[177].dn";
connectAttr "LControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[178].dn"
		;
connectAttr "MControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[179].dn"
		;
connectAttr "RControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[180].dn"
		;
connectAttr "Ring4_Joint_L_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[181].dn"
		;
connectAttr "materialInfo4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[182].dn";
connectAttr "Ring3_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[183].dn"
		;
connectAttr "Ring4_Joint_L_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[184].dn"
		;
connectAttr "Arm_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[185].dn"
		;
connectAttr "Elbow_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[186].dn"
		;
connectAttr "Wrist_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[187].dn"
		;
connectAttr "Ring3_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[188].dn"
		;
connectAttr "Pinkie_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[189].dn"
		;
connectAttr "Ring1_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[190].dn"
		;
connectAttr "Pinkey1_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[191].dn"
		;
connectAttr "Ring1_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[192].dn"
		;
connectAttr "Pinkey1_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[193].dn"
		;
connectAttr "CONTROL_SHAPE_TEMPLATES.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[194].dn"
		;
connectAttr "Ring4_Joint_L_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[195].dn"
		;
connectAttr "lambert2SG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[196].dn";
connectAttr "materialInfo2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[197].dn";
connectAttr "Ring2_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[198].dn"
		;
connectAttr "Shoulder_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[199].dn"
		;
connectAttr "MControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[200].dn"
		;
connectAttr "Ring2_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[201].dn"
		;
connectAttr "Ring2_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[202].dn"
		;
connectAttr "materialInfo3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[203].dn";
connectAttr "Shoulder_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[204].dn"
		;
connectAttr "RControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[205].dn"
		;
connectAttr "materialInfo1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[206].dn";
connectAttr "Ring_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[207].dn"
		;
connectAttr "Ring1_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[208].dn"
		;
connectAttr "Ring3_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[209].dn"
		;
connectAttr "Shoulder_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[210].dn"
		;
connectAttr "Elbow_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[211].dn"
		;
connectAttr "Elbow_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[212].dn"
		;
connectAttr "Wrist_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[213].dn"
		;
connectAttr "Wrist_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[214].dn"
		;
connectAttr "LControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[215].dn"
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
// End of PFX_SetupRig.ma
