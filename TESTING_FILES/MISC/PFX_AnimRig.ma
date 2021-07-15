//Maya ASCII 2019 scene
//Name: PFX_AnimRig.ma
//Last modified: Thu, Jul 15, 2021 04:31:45 PM
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
	rename -uid "0338769A-4430-6273-37F0-1D900E0984FF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 91.707574450151611 273.50328085351367 86.470660053003925 ;
	setAttr ".r" -type "double3" -48.938352729602855 21.800000000000171 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "4848F558-4E8C-96D3-8601-838EC00450F1";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 267.06557618628676;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "F6ED50F8-4CDD-AC28-A809-7897C7FD696F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "F6F80E7F-4609-D020-55C8-F6BD030383B9";
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
	rename -uid "BAC58E0A-4FFA-9EB6-3531-77A403910D51";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "CDB3D2B4-45A3-9D2B-256D-B4B68DEEC666";
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
	rename -uid "7C80FE4C-4B6E-F95A-6D3C-C992AA4596F1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "F7B8B354-45E0-0D39-4D37-DEA039285205";
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
	rename -uid "9ECDFC9B-468D-F6C3-6316-36B0DE906FE7";
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
	setAttr ".rigMode" 1;
	setAttr ".isBuilt" yes;
	setAttr ".pfrsName" -type "string" "TEMP";
	setAttr ".category" -type "string" "Animation";
	setAttr ".operation" -type "string" "Behavior";
	setAttr ".nextLimbID" 10;
	setAttr ".nextPresetID" 3;
	setAttr ".nextJointID" 28;
	setAttr ".posesFolderPath" -type "string" "D:/Assets/Programming/Python/Maya/PayneFreeRigSuite/TESTING_FILES/MISC\\Poses";
createNode transform -n "JOINTS" -p "TEMP_RigRoot";
	rename -uid "8AE1735B-4E4F-0787-28BB-1AA7F0510679";
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
	rename -uid "56E45984-4D09-C1F7-8BDB-9EB5BDFEB75D";
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
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.75649287571448476;
	setAttr ".ID" 15;
	setAttr ".pfrsName" -type "string" "Clav01";
	setAttr ".startPos" -type "double3" 8.2724914959529556 136.60888383138146 0 ;
createNode joint -n "Arm_Shoulder_M_JNT" -p "Clav_Clav01_M_JNT";
	rename -uid "EEB2F044-4961-9CA7-2BE9-F6A299B43B84";
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
	setAttr ".r" -type "double3" -8.5444581214357652e-05 0.0046446413395458104 8.5572327768485098e-07 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 1.9049107295000689 7.2023594007588187e-06 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.6370063315610384;
	setAttr ".ID" 12;
	setAttr ".pfrsName" -type "string" "Shoulder";
	setAttr ".startPos" -type "double3" 5.958861837017448 0 0 ;
createNode joint -n "BicepTwist_BicepTwist_M_JNT" -p "Arm_Shoulder_M_JNT";
	rename -uid "E577E428-4159-A338-881D-B8BE8C1766D9";
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
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -7.2144311188858164e-06 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.6210280660764069;
	setAttr ".ID" 1;
	setAttr ".pfrsName" -type "string" "BicepTwist";
	setAttr ".startPos" -type "double3" 12.274168772767116 1.3482982141919863e-06 -7.0644878835679492e-14 ;
createNode parentConstraint -n "BicepTwist_BicepTwist_M_JNT_parentConstraint1" -p
		 "BicepTwist_BicepTwist_M_JNT";
	rename -uid "A2D774DF-4323-5411-8BC3-029994AD3B9F";
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
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 -2.8421709430404007e-14 
		7.2164496600635175e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -1.6051953727495712e-08 ;
	setAttr ".lr" -type "double3" 7.9400648963071058e-05 -0.0019948936417711698 1.9082185767591578e-06 ;
	setAttr ".rst" -type "double3" 12.274168772767121 1.3482982126333809e-06 -7.0332628610003667e-14 ;
	setAttr ".rsrr" -type "double3" 0 0 1.6051953727497234e-08 ;
	setAttr -k on ".w0";
createNode joint -n "Arm_Elbow_M_JNT" -p "Arm_Shoulder_M_JNT";
	rename -uid "FF5738A1-467D-43B1-7FEF-15BAD9C8B6DB";
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
	setAttr ".t" -type "double3" 22.982122410180068 0 -7.1054273576010019e-14 ;
	setAttr ".r" -type "double3" -7.9480050806831513e-22 -0.0093526287845398307 1.4789521572156374e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.399499896478911e-07 -3.835784996017515 -7.2144311188858122e-06 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.6210280660764069;
	setAttr ".ID" 13;
	setAttr ".pfrsName" -type "string" "Elbow";
	setAttr ".startPos" -type "double3" 22.982122410180068 0 -7.1054273576010019e-14 ;
createNode joint -n "ForearmTwist_ForearmTwist1_M_JNT" -p "Arm_Elbow_M_JNT";
	rename -uid "4D3848A8-4335-710F-6544-F8920765B307";
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
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 7.9513867036587919e-16 0 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".ID" 2;
	setAttr ".pfrsName" -type "string" "ForearmTwist1";
	setAttr ".startPos" -type "double3" 8.700292705433327 0 -8.8817841970012523e-16 ;
createNode parentConstraint -n "ForearmTwist_ForearmTwist1_M_JNT_parentConstraint1" 
		-p "ForearmTwist_ForearmTwist1_M_JNT";
	rename -uid "CEB007F6-4793-BF19-325D-55BBF057C964";
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
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-15 0 0 ;
	setAttr ".lr" -type "double3" 7.9350278108394093e-05 0.0020221042279288826 -4.8946498973359584e-06 ;
	setAttr ".rst" -type "double3" 8.700292705433327 2.8421709430404007e-14 -8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode joint -n "ForearmTwist_ForearmTwist2_M_JNT" -p "Arm_Elbow_M_JNT";
	rename -uid "CF791AE2-4314-D235-3BE9-DF8FE7857974";
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
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 7.9513867036587919e-16 0 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".ID" 3;
	setAttr ".pfrsName" -type "string" "ForearmTwist2";
	setAttr ".startPos" -type "double3" 16.28114869182432 0 -8.8817841970012523e-16 ;
createNode parentConstraint -n "ForearmTwist_ForearmTwist2_M_JNT_parentConstraint1" 
		-p "ForearmTwist_ForearmTwist2_M_JNT";
	rename -uid "FBD75AD0-4AC0-0FA6-AE8F-DB90B56B94FF";
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
	setAttr ".tg[0].tot" -type "double3" 2.8421709430404007e-14 0 -8.8817841970012523e-16 ;
	setAttr ".lr" -type "double3" 7.9350278108394093e-05 0.0020221042279288826 -4.8946498973359584e-06 ;
	setAttr ".rst" -type "double3" 16.281148691824335 0 -1.3322676295501878e-15 ;
	setAttr -k on ".w0";
createNode joint -n "Arm_Wrist_M_JNT" -p "Arm_Elbow_M_JNT";
	rename -uid "C7679524-4579-C66E-B365-1EAC3C6984F3";
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
	setAttr ".t" -type "double3" 22.673209277477198 0 1.2434497875801753e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.655073889869503e-05 0 -4.5392502907583519e-05 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".ID" 14;
	setAttr ".pfrsName" -type "string" "Wrist";
	setAttr ".startPos" -type "double3" 22.673209277477198 0 1.2434497875801753e-14 ;
createNode joint -n "Thumb_Thumb1_M_JNT" -p "Arm_Wrist_M_JNT";
	rename -uid "B446B1A7-45B9-82CF-E208-FEBC4A523815";
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
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 19.596258298363459 -24.78236662924698 -40.341784730181956 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.55172413793103448;
	setAttr ".ID" 24;
	setAttr ".pfrsName" -type "string" "Thumb1";
	setAttr ".startPos" -type "double3" 3.6445232976532154 8.8542392973067763e-07 3.0651836085218913 ;
	setAttr ".startRot" -type "double3" 71.557117777550459 0 0 ;
createNode joint -n "Thumb_Thumb2_M_JNT" -p "Thumb_Thumb1_M_JNT";
	rename -uid "11E0834F-457A-4741-27FB-5BB633AE0920";
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
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -78.505674054380748 -0.42185510193095221 -9.5279279090871825 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 25;
	setAttr ".pfrsName" -type "string" "Thumb2";
	setAttr ".startPos" -type "double3" 1.9999999999999929 -1.4210854715202004e-14 0 ;
	setAttr ".startRot" -type "double3" 71.557117777550459 0 0 ;
createNode joint -n "Thumb_Thumb3_M_JNT" -p "Thumb_Thumb2_M_JNT";
	rename -uid "53860D29-4299-E60D-5211-B393C8EC71EE";
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
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -84.053252162478515 1.1323012981309024 -14.757531751947317 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 26;
	setAttr ".pfrsName" -type "string" "Thumb3";
	setAttr ".startPos" -type "double3" 1.9068061047389833 -7.1054273576010019e-15 0 ;
	setAttr ".startRot" -type "double3" 71.557117777550459 0 0 ;
createNode joint -n "Thumb_Thumb4_M_JNT" -p "Thumb_Thumb3_M_JNT";
	rename -uid "D6873FB2-42A4-196C-0BB6-1384373A37BF";
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
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -71.557117777550445 1.1032549051326571e-14 -7.9513867036587899e-16 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 27;
	setAttr ".pfrsName" -type "string" "Thumb4";
	setAttr ".startPos" -type "double3" 2.1353298302241726 -7.1054273576010019e-15 2.8421709430404007e-14 ;
	setAttr ".startRot" -type "double3" 71.557117777550459 0 0 ;
createNode parentConstraint -n "Thumb_Thumb4_M_JNT_parentConstraint1" -p "Thumb_Thumb4_M_JNT";
	rename -uid "39C8D1E5-46DA-D55A-E26E-839B3A5E63AA";
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
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 -2.1316282072803006e-14 
		-1.7053025658242404e-13 ;
	setAttr ".tg[0].tor" -type "double3" 1.9083328088781101e-14 0 0 ;
	setAttr ".lr" -type "double3" 71.557117777550445 0 0 ;
	setAttr ".rst" -type "double3" 2.1353298302241797 0 -2.8421709430404007e-14 ;
	setAttr ".rsrr" -type "double3" 71.557117777550445 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Thumb_Thumb3_M_JNT_parentConstraint1" -p "Thumb_Thumb3_M_JNT";
	rename -uid "8AB2F331-4392-0509-162C-209855FB9A0C";
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
	setAttr ".tg[0].tot" -type "double3" 0 3.5527136788005009e-14 -1.4210854715202004e-13 ;
	setAttr ".tg[0].tor" -type "double3" -7.9513867036587919e-15 -1.133072605271378e-14 
		-1.5803381073521852e-14 ;
	setAttr ".lr" -type "double3" 71.557117777550445 -8.710551243215943e-16 1.4808855934648244e-14 ;
	setAttr ".rst" -type "double3" 1.9068061047389904 -1.4210854715202004e-14 -5.6843418860808015e-14 ;
	setAttr ".rsrr" -type "double3" 71.557117777550474 -8.5885589185251191e-15 1.4637759344423314e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Thumb_Thumb2_M_JNT_parentConstraint1" -p "Thumb_Thumb2_M_JNT";
	rename -uid "7464958E-4923-8247-0D5F-FB8FB370A53C";
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
	setAttr ".tg[0].tot" -type "double3" -4.2632564145606011e-14 -1.0658141036401503e-14 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -3.5781240166464561e-14 8.1004752043523944e-15 
		-1.558596034334368e-14 ;
	setAttr ".lr" -type "double3" 71.557117777550502 -2.6563496023761847e-15 -1.2634159955608651e-14 ;
	setAttr ".rst" -type "double3" 2 -2.1316282072803006e-14 2.8421709430404007e-14 ;
	setAttr ".rsrr" -type "double3" 71.557117777550516 -1.5801280534891888e-14 -3.9139889656721613e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Thumb_Thumb1_M_JNT_parentConstraint1" -p "Thumb_Thumb1_M_JNT";
	rename -uid "67347B95-4392-E231-7E10-D7A992BBE1CE";
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
	setAttr ".tg[0].tot" -type "double3" 4.9737991503207013e-14 0 5.6843418860808015e-14 ;
	setAttr ".tg[0].tor" -type "double3" -2.2462667437836081e-14 5.1684013573782151e-15 
		-1.2722218725854067e-14 ;
	setAttr ".lr" -type "double3" 71.555982017594957 0.0016742749130869749 -4.5191400405170176e-05 ;
	setAttr ".rst" -type "double3" 3.6445232976532154 8.8542387288725877e-07 3.0651836085218958 ;
	setAttr ".rsrr" -type "double3" 71.557117777550474 -2.5253580857872163e-14 -6.4378868987143862e-15 ;
	setAttr -k on ".w0";
createNode joint -n "Middle_Middle1_M_JNT" -p "Arm_Wrist_M_JNT";
	rename -uid "408E6BE2-477C-565E-9AF1-9DAED4FF5090";
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
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.6320055356200353e-05 1.9308742665304948 4.4842619288882337e-05 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.55172413793103448;
	setAttr ".ID" 16;
	setAttr ".pfrsName" -type "string" "Middle1";
	setAttr ".startPos" -type "double3" 5.7254400679159545 1.6032627740969474e-06 -0.15696195575304328 ;
createNode joint -n "Middle_Middle2_M_JNT" -p "Middle_Middle1_M_JNT";
	rename -uid "A61D545E-4BF9-56EB-734D-47B041641F4E";
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
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.213561315172401e-16 6.3200757636833713e-15 -6.5114737805201326 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 17;
	setAttr ".pfrsName" -type "string" "Middle2";
	setAttr ".startPos" -type "double3" 2.678815589999175 0 0 ;
createNode joint -n "Middle_Middle3_M_JNT" -p "Middle_Middle2_M_JNT";
	rename -uid "65F107F8-48A9-7AC4-B26D-8C91652C9972";
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
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -9.6431460058388581 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 18;
	setAttr ".pfrsName" -type "string" "Middle3";
	setAttr ".startPos" -type "double3" 2.7939882272464871 0 -8.8817841970012523e-16 ;
createNode joint -n "Middle_Middle4_M_JNT" -p "Middle_Middle3_M_JNT";
	rename -uid "FFEFB0D3-41C6-1471-35D4-A182D538B277";
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
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 19;
	setAttr ".pfrsName" -type "string" "Middle4";
	setAttr ".startPos" -type "double3" 2.649850804763588 -2.8421709430404007e-14 0 ;
createNode parentConstraint -n "Middle_Middle4_M_JNT_parentConstraint1" -p "Middle_Middle4_M_JNT";
	rename -uid "5AA8E9F7-4D32-9BA0-AF67-528D26EF71F8";
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
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 1.1368683772161603e-13 
		1.1171619185290638e-15 ;
	setAttr ".rst" -type "double3" 2.649850804763588 -2.8421709430404007e-14 -6.9388939039072284e-18 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Middle_Middle3_M_JNT_parentConstraint1" -p "Middle_Middle3_M_JNT";
	rename -uid "E13EBED3-4848-F805-124D-A8B848759A27";
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
	setAttr ".tg[0].tot" -type "double3" 2.4868995751603507e-14 8.5265128291212022e-14 
		1.1449174941446927e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 3.1805546814635168e-15 ;
	setAttr ".rst" -type "double3" 2.7939882272464658 -2.8421709430404007e-14 -8.9511731360403246e-16 ;
	setAttr ".rsrr" -type "double3" 0 0 -3.1805546814635168e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Middle_Middle2_M_JNT_parentConstraint1" -p "Middle_Middle2_M_JNT";
	rename -uid "D612FF16-4F71-947A-288B-5A93BE7AC80B";
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
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-14 5.6843418860808015e-14 
		1.1171619185290638e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 1.5902773407317588e-15 ;
	setAttr ".lr" -type "double3" 0 0 7.9513867036587919e-16 ;
	setAttr ".rst" -type "double3" 2.6788155899991608 0 -6.9388939039072284e-18 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.5902773407317584e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Middle_Middle1_M_JNT_parentConstraint1" -p "Middle_Middle1_M_JNT";
	rename -uid "D96253A9-4766-8994-290D-F58B260516AA";
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
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 -2.8421709430404007e-14 
		-1.2975731600306517e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 1.1374549918640316e-21 ;
	setAttr ".lr" -type "double3" 7.9230423057526103e-05 0.0020221042260671106 -2.2263509573877893e-06 ;
	setAttr ".rst" -type "double3" 5.7254400679159403 1.603262745675238e-06 -0.15696195575304328 ;
	setAttr ".rsrr" -type "double3" 3.0332133116374176e-21 -1.446348815745076e-27 4.739395799433465e-23 ;
	setAttr -k on ".w0";
createNode joint -n "Ring_Ring1_M_JNT" -p "Arm_Wrist_M_JNT";
	rename -uid "F400D620-44FF-E9C4-0E78-34A632B98AAD";
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
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.6320055356200353e-05 1.9308742665304948 4.4842619288882337e-05 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.55172413793103448;
	setAttr ".ID" 4;
	setAttr ".pfrsName" -type "string" "Ring1";
	setAttr ".startPos" -type "double3" 5.72842951933481 1.072069579777235e-06 -2.004059202333428 ;
createNode joint -n "Ring_Ring2_M_JNT" -p "Ring_Ring1_M_JNT";
	rename -uid "A7EC83FF-43E4-3D89-55D2-488CF24CBD15";
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
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.213561315172401e-16 6.3200757636833713e-15 -6.5114737805201326 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 5;
	setAttr ".pfrsName" -type "string" "Ring2";
	setAttr ".startPos" -type "double3" 2.678815589999175 0 -8.8817841970012523e-16 ;
createNode joint -n "Ring_Ring3_M_JNT" -p "Ring_Ring2_M_JNT";
	rename -uid "21E97C5B-4CF7-7375-648A-8C80F0EB8C1E";
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
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -9.6431460058395473 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 6;
	setAttr ".pfrsName" -type "string" "Ring3";
	setAttr ".startPos" -type "double3" 2.7939882272464871 0 0 ;
createNode joint -n "Ring_Ring4_M_JNT" -p "Ring_Ring3_M_JNT";
	rename -uid "836F0420-4E33-EB59-3BE6-3FBBC493FE1F";
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
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 7;
	setAttr ".pfrsName" -type "string" "Ring4";
	setAttr ".startPos" -type "double3" 2.6498508047636022 0 8.8817841970012523e-16 ;
createNode parentConstraint -n "Ring_Ring4_M_JNT_parentConstraint1" -p "Ring_Ring4_M_JNT";
	rename -uid "EA65465E-481D-6731-EE97-9AA51126F3CC";
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
	setAttr ".tg[0].tot" -type "double3" 2.8421709430404007e-14 2.8421709430404007e-13 
		-6.6613381477509392e-16 ;
	setAttr ".rst" -type "double3" 2.6498508047635951 2.8421709430404007e-14 8.8817841970012523e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ring_Ring3_M_JNT_parentConstraint1" -p "Ring_Ring3_M_JNT";
	rename -uid "740E59CE-40B5-C274-83E5-7E8CB0FD25E7";
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
	setAttr ".tg[0].tot" -type "double3" -2.1316282072803006e-14 5.6843418860808015e-14 
		-1.1102230246251565e-15 ;
	setAttr ".lr" -type "double3" 0 0 4.7708320221952744e-15 ;
	setAttr ".rst" -type "double3" 2.79398822724648 2.8421709430404007e-14 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ring_Ring2_M_JNT_parentConstraint1" -p "Ring_Ring2_M_JNT";
	rename -uid "BD4BBF5D-495A-AF30-FB5B-1EAE107968A2";
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
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-14 0 8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 1.5902773407317588e-15 ;
	setAttr ".lr" -type "double3" 0 0 7.9513867036587919e-16 ;
	setAttr ".rst" -type "double3" 2.678815589999175 0 -8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.5902773407317584e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Ring_Ring1_M_JNT_parentConstraint1" -p "Ring_Ring1_M_JNT";
	rename -uid "D1A03A0E-4B2F-2F6D-8431-C58B21DE676C";
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
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 -2.8421709430404007e-14 
		-8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 1.1374549918640316e-21 ;
	setAttr ".lr" -type "double3" 7.9230423057526103e-05 0.0020221042260671106 -2.2263509573877893e-06 ;
	setAttr ".rst" -type "double3" 5.72842951933481 1.072069579777235e-06 -2.004059202333428 ;
	setAttr ".rsrr" -type "double3" 3.0332133116374176e-21 -1.446348815745076e-27 4.739395799433465e-23 ;
	setAttr -k on ".w0";
createNode joint -n "Index_Index1_M_JNT" -p "Arm_Wrist_M_JNT";
	rename -uid "5EA29F88-4EAF-F20F-2D54-E38315F3C61D";
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
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.6320055356200353e-05 1.9308742665304948 4.4842619288882337e-05 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.55172413793103448;
	setAttr ".ID" 20;
	setAttr ".pfrsName" -type "string" "Index1";
	setAttr ".startPos" -type "double3" 4.9648392370970953 1.4603526210521522e-06 1.4343524763644231 ;
createNode joint -n "Index_Index2_M_JNT" -p "Index_Index1_M_JNT";
	rename -uid "CC773479-4C56-6218-3E25-4F8831DE17D9";
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
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.2135613151723408e-16 6.3200757636833729e-15 -6.5114737805200784 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 21;
	setAttr ".pfrsName" -type "string" "Index2";
	setAttr ".startPos" -type "double3" 2.678815589999175 0 -2.2204460492503131e-16 ;
createNode joint -n "Index_Index3_M_JNT" -p "Index_Index2_M_JNT";
	rename -uid "A51B97FB-4ABB-D2CF-F500-A4B987545AD5";
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
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -9.64314600583943 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 22;
	setAttr ".pfrsName" -type "string" "Index3";
	setAttr ".startPos" -type "double3" 2.7939882272465013 0 -4.4408920985006262e-16 ;
createNode joint -n "Index_Index4_M_JNT" -p "Index_Index3_M_JNT";
	rename -uid "7D6888E8-4911-CDBC-5EC5-BD81890808CA";
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
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 23;
	setAttr ".pfrsName" -type "string" "Index4";
	setAttr ".startPos" -type "double3" 2.6498508047635951 0 8.8817841970012523e-16 ;
createNode parentConstraint -n "Index_Index4_M_JNT_parentConstraint1" -p "Index_Index4_M_JNT";
	rename -uid "42CD66BD-4346-CD06-3D63-A6BB12A06F13";
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
	setAttr ".tg[0].tot" -type "double3" -2.8421709430404007e-14 5.6843418860808015e-14 
		-1.3322676295501878e-15 ;
	setAttr ".rst" -type "double3" 2.6498508047635951 0 6.6613381477509392e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Index_Index3_M_JNT_parentConstraint1" -p "Index_Index3_M_JNT";
	rename -uid "63A19A01-45DB-295C-F268-8EA18FB10CF0";
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
	setAttr ".tg[0].tot" -type "double3" -6.0396132539608516e-14 -2.8421709430404007e-14 
		8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 6.3611093629270335e-15 ;
	setAttr ".lr" -type "double3" 0 0 1.5902773407317584e-15 ;
	setAttr ".rst" -type "double3" 2.7939882272464942 2.8421709430404007e-14 -4.4408920985006262e-16 ;
	setAttr ".rsrr" -type "double3" 0 0 -4.7708320221952752e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Index_Index2_M_JNT_parentConstraint1" -p "Index_Index2_M_JNT";
	rename -uid "8624C13E-4C3A-F2BA-8AE3-A28E332E27F0";
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
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-15 2.8421709430404007e-14 
		6.6613381477509392e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 2.3854160110976376e-15 ;
	setAttr ".lr" -type "double3" 0 0 7.9513867036587919e-16 ;
	setAttr ".rst" -type "double3" 2.678815589999175 -2.8421709430404007e-14 -2.2204460492503131e-16 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.5902773407317584e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Index_Index1_M_JNT_parentConstraint1" -p "Index_Index1_M_JNT";
	rename -uid "5D8CA82C-47CA-D9B4-1246-36A8593FF82B";
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
	setAttr ".tg[0].tot" -type "double3" -2.8421709430404007e-14 2.8421709430404007e-14 
		-2.4424906541753444e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 1.1374549918640316e-21 ;
	setAttr ".lr" -type "double3" 7.9230423057526103e-05 0.0020221042260671106 -2.2263509573877893e-06 ;
	setAttr ".rst" -type "double3" 4.9648392370970811 1.4603525926304428e-06 1.4343524763644233 ;
	setAttr ".rsrr" -type "double3" 3.0332133116374176e-21 -1.446348815745076e-27 4.739395799433465e-23 ;
	setAttr -k on ".w0";
createNode joint -n "Pinkie_Pinkey1_M_JNT" -p "Arm_Wrist_M_JNT";
	rename -uid "7C092B6A-4D80-6412-3BF4-F0B9EAD7C284";
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
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.6320055356200353e-05 1.9308742665304948 4.4842619288882337e-05 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.55172413793103448;
	setAttr ".ID" 8;
	setAttr ".pfrsName" -type "string" "Pinkey1";
	setAttr ".startPos" -type "double3" 4.4857089105961307 -4.7236315481313795e-07 -3.9422975888058325 ;
createNode joint -n "Pinkie_Pinkey2_M_JNT" -p "Pinkie_Pinkey1_M_JNT";
	rename -uid "9F0516D7-4045-F82D-3E96-DAB5AF97C669";
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
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.2135613151723408e-16 6.3200757636833729e-15 -6.5114737805200784 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 9;
	setAttr ".pfrsName" -type "string" "Pinkey2";
	setAttr ".startPos" -type "double3" 2.678815589999175 0 0 ;
createNode joint -n "Pinkie_Pinkey3_M_JNT" -p "Pinkie_Pinkey2_M_JNT";
	rename -uid "61813828-4E66-7048-C5A9-9182F603E0E4";
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
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -9.6431460058400393 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 10;
	setAttr ".pfrsName" -type "string" "Pinkey3";
	setAttr ".startPos" -type "double3" 2.7939882272465013 0 -8.8817841970012523e-16 ;
createNode joint -n "Pinkie_Pinkey4_M_JNT" -p "Pinkie_Pinkey3_M_JNT";
	rename -uid "1455A8D8-431C-4422-0005-C0BDFD3F2FE1";
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
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 11;
	setAttr ".pfrsName" -type "string" "Pinkey4";
	setAttr ".startPos" -type "double3" 2.6498508047636022 2.8421709430404007e-14 1.7763568394002505e-15 ;
createNode parentConstraint -n "Pinkie_Pinkey4_M_JNT_parentConstraint1" -p "Pinkie_Pinkey4_M_JNT";
	rename -uid "3FBA4BB3-4B4B-7B91-9EAA-DD8D31BCA61C";
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
	setAttr ".tg[0].tot" -type "double3" 4.2632564145606011e-14 8.5265128291212022e-14 
		-7.1054273576010019e-15 ;
	setAttr ".rst" -type "double3" 2.6498508047636236 -2.8421709430404007e-14 1.3322676295501878e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Pinkie_Pinkey3_M_JNT_parentConstraint1" -p "Pinkie_Pinkey3_M_JNT";
	rename -uid "00E26DEB-466D-22FC-9523-10B2D927CECF";
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
	setAttr ".tg[0].tot" -type "double3" 4.6185277824406512e-14 0 -5.773159728050814e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -3.1805546814635168e-15 ;
	setAttr ".lr" -type "double3" 0 0 6.3611093629270335e-15 ;
	setAttr ".rst" -type "double3" 2.7939882272465084 0 -1.3322676295501878e-15 ;
	setAttr ".rsrr" -type "double3" 0 0 3.1805546814635168e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Pinkie_Pinkey2_M_JNT_parentConstraint1" -p "Pinkie_Pinkey2_M_JNT";
	rename -uid "49F22717-4A7D-EAC0-5B20-53BF26B745A9";
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
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 -2.8421709430404007e-14 
		-3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 2.3854160110976376e-15 ;
	setAttr ".lr" -type "double3" 0 0 7.9513867036587919e-16 ;
	setAttr ".rst" -type "double3" 2.678815589999175 0 0 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.5902773407317584e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Pinkie_Pinkey1_M_JNT_parentConstraint1" -p "Pinkie_Pinkey1_M_JNT";
	rename -uid "DC55760D-4246-BB53-8861-CF83CFB95970";
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
	setAttr ".tg[0].tot" -type "double3" -2.8421709430404007e-14 -2.8421709430404007e-14 
		-1.3322676295501878e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 1.1374549918640316e-21 ;
	setAttr ".lr" -type "double3" 7.9230423057526103e-05 0.0020221042260671106 -2.2263509573877893e-06 ;
	setAttr ".rst" -type "double3" 4.4857089105961165 -4.7236321165655681e-07 -3.9422975888058316 ;
	setAttr ".rsrr" -type "double3" 3.0332133116374176e-21 -1.446348815745076e-27 4.739395799433465e-23 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Arm_Wrist_M_JNT_orientConstraint1" -p "Arm_Wrist_M_JNT";
	rename -uid "5707D13E-44E9-2706-A62A-C49D870D138C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_IKPV_M_CTR2W0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -7.296892787290199e-05 0.0020042404991424531 2.5943608750119251e-06 ;
	setAttr ".o" -type "double3" -7.9108898912821365e-05 -0.0020221042824257194 4.898025978573578e-06 ;
	setAttr ".rsrr" -type "double3" 2.4265775917842497e-20 1.5530052141120091e-18 5.5539794524610954e-25 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector1" -p "Arm_Elbow_M_JNT";
	rename -uid "23616155-4F0C-D5C5-B35D-9C8F29220510";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode pointConstraint -n "Arm_Shoulder_M_JNT_pointConstraint1" -p "Arm_Shoulder_M_JNT";
	rename -uid "2ABC5E8A-4F83-F3A4-3AAC-DD9347621B5B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_IKPV_M_CTR0W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 5.9588618370174462 0 3.5671185346584416e-18 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Clav_Clav01_M_JNT_parentConstraint1" -p "Clav_Clav01_M_JNT";
	rename -uid "6E7E43F8-4BC7-E562-A8B9-EC8B6B9CCFA0";
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
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 0 0 ;
	setAttr ".rst" -type "double3" 8.2724914959529556 136.60888383138146 0 ;
	setAttr -k on ".w0";
createNode transform -n "LIMBS" -p "TEMP_RigRoot";
	rename -uid "77600139-48BE-4931-B1B9-D5A643F532BA";
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
	rename -uid "6BE4BEC0-46E8-FFEF-0671-B0AB2A98AB10";
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
	rename -uid "918F0460-4B17-8172-2D28-3BA15FBA00D0";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "BicepTwist_Joint_M_CTR0" -p "BicepTwist_Joint_M_GRP0";
	rename -uid "E8EBC3BE-42E2-F71E-F9C4-9F9C954D48DB";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "BicepTwist_Joint_M_CTR0Shape" -p "BicepTwist_Joint_M_CTR0";
	rename -uid "FA138A78-4F1A-97CC-64CE-37A693CA53A9";
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
createNode parentConstraint -n "BicepTwist_Joint_M_GRP0_parentConstraint1" -p "BicepTwist_Joint_M_GRP0";
	rename -uid "DDC2AA50-49EB-A63D-36B9-2A81ED3775FC";
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
	setAttr ".tg[0].tot" -type "double3" 12.274168769441941 9.4276722961694759e-07 -0.00028570768024299698 ;
	setAttr ".tg[0].tor" -type "double3" -7.8921876878317745e-05 0.0013336824940315772 
		-9.0913965729451877e-06 ;
	setAttr ".lr" -type "double3" -6.2207440208450412e-06 1.9075604771899251 1.8961813125200347e-06 ;
	setAttr ".rst" -type "double3" 26.498739039134019 136.60888672175003 -0.4080036747113962 ;
	setAttr ".rsrr" -type "double3" -2.0767771854253902e-20 1.9049107295000549 -4.1373050616259369e-21 ;
	setAttr -k on ".w0";
createNode transform -n "ForearmTwist_Limb_M_NODE" -p "LIMBS";
	rename -uid "158ABDCD-4503-6A44-B038-619902136943";
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
	rename -uid "3C18FE89-4744-F97C-0D6E-2AA1EF131FB2";
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
	rename -uid "8C520887-4622-429D-AE2F-C8BB9497B6E3";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "ForearmTwist2_Joint_M_CTR1Shape" -p "ForearmTwist2_Joint_M_CTR1";
	rename -uid "D4057239-4367-F8DB-51B6-4A805415BDFE";
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
createNode parentConstraint -n "ForearmTwist2_Joint_M_GRP1_parentConstraint1" -p "ForearmTwist2_Joint_M_GRP1";
	rename -uid "75BD4E90-4492-B311-A233-049DDD18EF98";
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
	setAttr ".tg[0].tot" -type "double3" 16.281112893929794 6.3292233676293108e-07 -0.00014961165722260361 ;
	setAttr ".tg[0].tor" -type "double3" -7.9110438449224619e-05 -0.001351873447987712 
		4.899498624963801e-06 ;
	setAttr ".lr" -type "double3" -6.2203640906652128e-06 -1.9335601497460959 2.3125698030460908e-06 ;
	setAttr ".rst" -type "double3" 53.472679482163059 136.60888671875003 -0.21537233555302338 ;
	setAttr ".rsrr" -type "double3" 2.1309662851712027e-20 -1.9308742665174601 -1.3071167527361185e-21 ;
	setAttr -k on ".w0";
createNode transform -n "ForearmTwist1_Joint_M_GRP0" -p "ForearmTwist_Limb_M_NODE";
	rename -uid "80D81A96-4210-243F-547F-2F8DF85F3A88";
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
	rename -uid "646E3E5B-4767-EC37-BCEB-8994EED4C676";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "ForearmTwist1_Joint_M_CTR0Shape" -p "ForearmTwist1_Joint_M_CTR0";
	rename -uid "B9DA48B9-40AF-D043-DCD8-16A6315919FB";
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
createNode parentConstraint -n "ForearmTwist1_Joint_M_GRP0_parentConstraint1" -p "ForearmTwist1_Joint_M_GRP0";
	rename -uid "E0540E33-4FCC-1F0F-59C9-28A14E4B1613";
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
	setAttr ".tg[0].tot" -type "double3" 8.7002569096489992 -1.5334734371208469e-08 
		-0.00032847924585110988 ;
	setAttr ".tg[0].tor" -type "double3" -7.9110438449224619e-05 -0.001351873447987712 
		4.899498624963801e-06 ;
	setAttr ".lr" -type "double3" -6.2203640906652128e-06 -1.9335601497460959 2.3125698030460908e-06 ;
	setAttr ".rst" -type "double3" 45.896127868513418 136.60888671875003 -0.47079968746155615 ;
	setAttr ".rsrr" -type "double3" 2.1309662851712027e-20 -1.9308742665174601 -1.3071167527361185e-21 ;
	setAttr -k on ".w0";
createNode transform -n "Ring_Limb_M_NODE" -p "LIMBS";
	rename -uid "0B522E0B-4AA3-8116-1DCF-3C866C9009BD";
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
createNode transform -n "Ring1_Joint_M_GRP0" -p "Ring_Limb_M_NODE";
	rename -uid "BCF1180B-4F7B-69B0-EA3C-6FBA393E8E88";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring1_Joint_M_CTR0" -p "Ring1_Joint_M_GRP0";
	rename -uid "A6968E20-4E69-C878-1DE1-F8AFF3937B06";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring1_Joint_M_CTR0Shape" -p "Ring1_Joint_M_CTR0";
	rename -uid "06DB9A05-45FD-4F06-297A-65B91326FAE9";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0 4.4408921e-16 0 0 4.4408921e-16 
		0 0 4.4408921e-16 0 0 4.4408921e-16 0 0 4.4408921e-16 0 0 4.4408921e-16 0 0 4.4408921e-16 
		0 0 4.4408921e-16;
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
createNode transform -n "Ring2_Joint_M_GRP1" -p "Ring1_Joint_M_CTR0";
	rename -uid "CC3B3337-4A4A-F1BA-25DF-ACB4D3707F5C";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 2.6788155899991466 0 -2.6645352591003757e-15 ;
	setAttr ".r" -type "double3" 0 0 -6.5114737805201335 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring2_Joint_M_CTR1" -p "Ring2_Joint_M_GRP1";
	rename -uid "6C41A4A5-4A8B-BE11-2B4B-2D81788527EF";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring2_Joint_M_CTR1Shape" -p "Ring2_Joint_M_CTR1";
	rename -uid "DF5F4A44-4E0A-F441-C357-0E9C62EC3CD8";
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
createNode transform -n "Ring3_Joint_M_GRP2" -p "Ring2_Joint_M_CTR1";
	rename -uid "C0ABE4CF-4FD5-8C2C-0DB6-4AA468A53EAF";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 2.7939882272465084 -5.6843418860808015e-14 1.9984014443252818e-15 ;
	setAttr ".r" -type "double3" 0 0 -9.6431460058395437 ;
	setAttr ".s" -type "double3" 1.0000000000000007 1 1 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring3_Joint_M_CTR2" -p "Ring3_Joint_M_GRP2";
	rename -uid "7F745017-481E-C951-99A1-55A656D6ADF5";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 2.8421709430404007e-14 2.2204460492503131e-16 ;
	setAttr ".sp" -type "double3" 0 2.8421709430404007e-14 2.2204460492503131e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring3_Joint_M_CTR2Shape" -p "Ring3_Joint_M_CTR2";
	rename -uid "DAA3A3A4-4AD2-4ECC-F3E7-F2B243595F6A";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0 8.8817842e-16 0 0 8.8817842e-16 
		0 0 8.8817842e-16 0 0 8.8817842e-16 0 0 8.8817842e-16 0 0 8.8817842e-16 0 0 8.8817842e-16 
		0 0 8.8817842e-16;
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
createNode transform -n "Ring4_Joint_M_GRP3" -p "Ring3_Joint_M_CTR2";
	rename -uid "0D6FE346-4742-05B1-C46D-DF8CBC8CFCB4";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 2.6498508047635561 -1.4210854715202004e-13 4.4408920985006262e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring4_Joint_M_CTR3" -p "Ring4_Joint_M_GRP3";
	rename -uid "0F8FBC59-469A-6BAE-C954-1DB23FB07F2A";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 0 -2.2204460492503131e-16 ;
	setAttr ".sp" -type "double3" 0 0 -2.2204460492503131e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring4_Joint_M_CTR3Shape" -p "Ring4_Joint_M_CTR3";
	rename -uid "48FD0285-4882-EB3B-8613-B6888CBD2B81";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.4210855e-14 0 -4.4408921e-16 
		1.4210855e-14 0 -4.4408921e-16 1.4210855e-14 0 -4.4408921e-16 1.4210855e-14 0 -4.4408921e-16 
		1.4210855e-14 0 -4.4408921e-16 1.4210855e-14 0 -4.4408921e-16 1.4210855e-14 0 -4.4408921e-16 
		1.4210855e-14 0 -4.4408921e-16;
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
createNode parentConstraint -n "Ring1_Joint_M_GRP0_parentConstraint1" -p "Ring1_Joint_M_GRP0";
	rename -uid "3953D1A2-400A-E56D-EF2C-DA8C609ABF52";
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
	setAttr ".tg[0].tot" -type "double3" 5.7284410031287436 -2.5584057539163041e-08 
		-2.0039228347927862 ;
	setAttr ".tg[0].tor" -type "double3" -9.5475361901567989e-05 1.929522393081305 4.7075464845646641e-05 ;
	setAttr ".lr" -type "double3" -0.00015846086790064892 -0.0027037468965460205 4.4642729076450646e-06 ;
	setAttr ".rst" -type "double3" 65.653811871969495 136.60888382298864 -1.8099090624919338 ;
	setAttr ".rsrr" -type "double3" -3.6114195991683003e-20 1.1927080055546043e-15 6.4455782872295127e-21 ;
	setAttr -k on ".w0";
createNode transform -n "Pinkie_Limb_M_NODE" -p "LIMBS";
	rename -uid "456B5C80-46BA-4AF2-C464-6C985EE34A67";
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
createNode transform -n "Pinkey1_Joint_M_GRP0" -p "Pinkie_Limb_M_NODE";
	rename -uid "17ECC94E-4B06-39AE-0959-6FABF5C11910";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinkey1_Joint_M_CTR0" -p "Pinkey1_Joint_M_GRP0";
	rename -uid "3EEB7D01-4D78-0613-4820-71A7F9926E7F";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinkey1_Joint_M_CTR0Shape" -p "Pinkey1_Joint_M_CTR0";
	rename -uid "9A5B2703-4226-4BDD-2683-288ED9AAA8A2";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0 8.8817842e-16 0 0 8.8817842e-16 
		0 0 8.8817842e-16 0 0 8.8817842e-16 0 0 8.8817842e-16 0 0 8.8817842e-16 0 0 8.8817842e-16 
		0 0 8.8817842e-16;
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
createNode transform -n "Pinkey2_Joint_M_GRP1" -p "Pinkey1_Joint_M_CTR0";
	rename -uid "3D89FE72-4BCD-1EB2-BE00-4D8B234DEF72";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 2.6788155899991892 2.8421709430404007e-14 1.3322676295501878e-15 ;
	setAttr ".r" -type "double3" 0 0 -6.5114737805200793 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinkey2_Joint_M_CTR1" -p "Pinkey2_Joint_M_GRP1";
	rename -uid "83BC64F8-4D5B-4CA0-1B07-9BBEAA7B466C";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 7.1054273576010019e-15 0 0 ;
	setAttr ".sp" -type "double3" 7.1054273576010019e-15 0 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinkey2_Joint_M_CTR1Shape" -p "Pinkey2_Joint_M_CTR1";
	rename -uid "1E0DE224-4B0F-7034-2126-64801B341667";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.8421709e-14 0 2.6645353e-15 
		2.8421709e-14 0 2.6645353e-15 2.8421709e-14 0 2.6645353e-15 2.8421709e-14 0 2.6645353e-15 
		2.8421709e-14 0 2.6645353e-15 2.8421709e-14 0 2.6645353e-15 2.8421709e-14 0 2.6645353e-15 
		2.8421709e-14 0 2.6645353e-15;
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
createNode transform -n "Pinkey3_Joint_M_GRP2" -p "Pinkey2_Joint_M_CTR1";
	rename -uid "FBCD7F62-4A80-2376-B32B-7DA13B6013F3";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 2.7939882272464303 -5.6843418860808015e-14 4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 0 0 -9.6431460058400358 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999933 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinkey3_Joint_M_CTR2" -p "Pinkey3_Joint_M_GRP2";
	rename -uid "BD54FC02-45D8-9F3D-65FF-58B4777A8C7D";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 2.8421709430404007e-14 0 ;
	setAttr ".sp" -type "double3" 0 2.8421709430404007e-14 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinkey3_Joint_M_CTR2Shape" -p "Pinkey3_Joint_M_CTR2";
	rename -uid "6DD92F68-4A44-778A-CEA1-7889424829F2";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  7.1054274e-15 0 1.7763568e-15 
		7.1054274e-15 0 1.7763568e-15 7.1054274e-15 0 1.7763568e-15 7.1054274e-15 0 1.7763568e-15 
		7.1054274e-15 0 1.7763568e-15 7.1054274e-15 0 1.7763568e-15 7.1054274e-15 0 1.7763568e-15 
		7.1054274e-15 0 1.7763568e-15;
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
createNode transform -n "Pinkey4_Joint_M_GRP3" -p "Pinkey3_Joint_M_CTR2";
	rename -uid "1E29A2E6-4D76-EF45-8CFF-CCB463A8D782";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 2.6498508047636342 -2.8421709430404007e-14 2.6645352591003757e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000007 1 1.0000000000000004 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinkey4_Joint_M_CTR3" -p "Pinkey4_Joint_M_GRP3";
	rename -uid "F7272A5A-496C-9540-F958-E9B4661D2894";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 -2.8421709430404007e-14 0 ;
	setAttr ".sp" -type "double3" 0 -2.8421709430404007e-14 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinkey4_Joint_M_CTR3Shape" -p "Pinkey4_Joint_M_CTR3";
	rename -uid "98A0237F-4935-0E83-BC05-05810CD382C2";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0 1.7763568e-15 0 0 1.7763568e-15 
		0 0 1.7763568e-15 0 0 1.7763568e-15 0 0 1.7763568e-15 0 0 1.7763568e-15 0 0 1.7763568e-15 
		0 0 1.7763568e-15;
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
createNode parentConstraint -n "Pinkey1_Joint_M_GRP0_parentConstraint1" -p "Pinkey1_Joint_M_GRP0";
	rename -uid "27F58CD7-4B67-6FF0-E143-548751A65B87";
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
	setAttr ".tg[0].tot" -type "double3" 4.4857661267806819 -4.35245166841014e-06 -3.9421905422718062 ;
	setAttr ".tg[0].tor" -type "double3" -9.5475361901567989e-05 1.929522393081305 4.7075464845646641e-05 ;
	setAttr ".lr" -type "double3" -0.00015846086790064892 -0.0027037468965460205 4.4642729076450646e-06 ;
	setAttr ".rst" -type "double3" 64.477103364243277 136.60888381487143 -3.7889188254860722 ;
	setAttr ".rsrr" -type "double3" -3.6114195991683003e-20 1.1927080055546043e-15 6.4455782872295127e-21 ;
	setAttr -k on ".w0";
createNode transform -n "Arm_Limb_M_NODE" -p "LIMBS";
	rename -uid "ABBF9374-4A6F-EB4E-6B63-5AAEF470A1ED";
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
	addAttr -ci true -sn "ikpvDistance" -ln "ikpvDistance" -dv 10 -min 0 -at "float";
	addAttr -ci true -sn "ikpvCurve" -ln "ikpvCurve" -dt "string";
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
	setAttr ".bhvType" -type "string" "IK Pole Vector";
	setAttr ".bhvFile" -type "string" "IK_PoleVector_01";
	setAttr ".controlKeyframes" -type "string" "1.0:10.0:20.0";
createNode transform -n "Arm_IKPV_M_GRP1" -p "Arm_Limb_M_NODE";
	rename -uid "D337FCC3-4955-F9BB-9706-74B96952150F";
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
	setAttr ".groupType" -type "string" "IKPV";
createNode transform -n "Arm_IKPV_M_CTR1" -p "Arm_IKPV_M_GRP1";
	rename -uid "8D955E83-4D69-22CA-09A5-D4A06F148527";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 0 2.9802322387695313e-08 ;
	setAttr ".sp" -type "double3" 0 0 2.9802322387695313e-08 ;
	setAttr ".rigRoot" -type "string" "Sphere_Poly";
createNode mesh -n "Arm_IKPV_M_CTR1Shape" -p "Arm_IKPV_M_CTR1";
	rename -uid "314A32EC-44EE-D6FE-AB28-7AA2CF436D45";
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
	setAttr -s 178 ".pt";
	setAttr ".pt[0:165]" -type "float3"  1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 
		0 2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15;
	setAttr ".pt[166:177]" 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15 1.110223e-16 2.8421709e-14 -7.1054274e-15 1.110223e-16 
		2.8421709e-14 -7.1054274e-15;
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
createNode parentConstraint -n "Arm_IKPV_M_GRP1_parentConstraint1" -p "Arm_IKPV_M_GRP1";
	rename -uid "21CC6827-49EC-6368-5A0B-4E9080115C6A";
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
	setAttr ".tg[0].tot" -type "double3" 28.928302420276097 2.8873685380403913e-06 -10.76394504339944 ;
	setAttr ".tg[0].tor" -type "double3" -0.00010754268945665742 89.999892457284659 
		0 ;
	setAttr ".lr" -type "double3" -0.00010754268945665742 89.999892457284659 0 ;
	setAttr ".rst" -type "double3" 37.200793916229053 136.60888671875 -10.76394504339944 ;
	setAttr ".rsrr" -type "double3" -0.00010754268945665742 89.999892457284659 0 ;
	setAttr -k on ".w0";
createNode transform -n "cluster1Handle" -p "Arm_Limb_M_NODE";
	rename -uid "A1A58EC6-4AA5-C2D1-4882-B29E90006000";
	setAttr ".v" no;
createNode clusterHandle -n "cluster1HandleShape" -p "cluster1Handle";
	rename -uid "EB1A4DEC-4B2B-9CA3-5446-77AECA40C4E0";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode parentConstraint -n "cluster1Handle_parentConstraint1" -p "cluster1Handle";
	rename -uid "8F872EEB-42D4-4093-FEA7-8FBE4902182A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_IKPV_M_CTR1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -0.00010754268945665742 89.999892457284659 0 ;
	setAttr ".rst" -type "double3" 37.200793916229053 136.60888671875 -10.76394504339944 ;
	setAttr ".rsrr" -type "double3" -0.00010754268945665742 89.999892457284659 0 ;
	setAttr -k on ".w0";
createNode transform -n "cluster2Handle" -p "Arm_Limb_M_NODE";
	rename -uid "34047826-43E1-290B-A215-ABA3F582C6CC";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1 0 0 ;
	setAttr ".sp" -type "double3" 1 0 0 ;
createNode clusterHandle -n "cluster2HandleShape" -p "cluster2Handle";
	rename -uid "64127C9A-4B9E-9E0E-9AAD-BB909FBEE7B6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1 0 0 ;
createNode parentConstraint -n "cluster2Handle_parentConstraint1" -p "cluster2Handle";
	rename -uid "73F62F2D-4FB8-DACD-F489-4492972475DA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_Elbow_M_JNTW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -8.5736159587313627e-05 -1.9355822539667042 7.2130357361734345e-06 ;
	setAttr ".rst" -type "double3" 36.200775146484361 136.60888671875 -0.76394504341705383 ;
	setAttr ".rsrr" -type "double3" -2.3994998964789104e-07 -1.930874266517461 5.6067785034927996e-21 ;
	setAttr -k on ".w0";
createNode transform -n "curve1" -p "Arm_Limb_M_NODE";
	rename -uid "0E48DA00-457F-5F9C-0FAC-12826E1BE0D5";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	setAttr ".tmp" yes;
createNode nurbsCurve -n "curveShape1" -p "curve1";
	rename -uid "7A46E8BA-43FC-F1DB-9404-D4BA4475408D";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "curveShape1Orig" -p "curve1";
	rename -uid "97F2416A-4D66-0819-138B-EEBC46A91C15";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		1 0 0
		;
createNode transform -n "Arm_IKPV_M_GRP0" -p "Arm_Limb_M_NODE";
	rename -uid "0DD8FFFB-4B1A-8B64-7AFC-579ACD9D6B67";
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
	setAttr ".groupType" -type "string" "IKPV";
createNode transform -n "Arm_IKPV_M_CTR0" -p "Arm_IKPV_M_GRP0";
	rename -uid "0A7ECE33-409F-0101-5C52-529F6BEF201B";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Sphere_Poly";
createNode mesh -n "Arm_IKPV_M_CTR0Shape" -p "Arm_IKPV_M_CTR0";
	rename -uid "682F9372-4EB6-AAAD-421E-8F9CD7E946D5";
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
	setAttr -s 178 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 
		0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 
		-1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 
		-5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 
		0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 
		-1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 
		-5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 
		0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 
		-1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 
		-5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 
		0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 
		-1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 
		-5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 
		0 -5.5511151e-17 -1.7763568e-15 0 0 -1.7763568e-15 0 0 -1.7763568e-15 0 0 -1.7763568e-15 
		0 0 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 
		0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 0 -1.7763568e-15 
		0 0 -1.7763568e-15 0 0 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 
		-1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 
		0 -1.7763568e-15 0 0 -1.7763568e-15 0 0 -1.7763568e-15 0 0 -1.7763568e-15 0 0 -1.7763568e-15 
		0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 
		-1.7763568e-15 0 0 -1.7763568e-15 0 0 -1.7763568e-15 0 0 -1.7763568e-15 0 0 -1.7763568e-15 
		0 0 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 
		0 -5.5511151e-17 -1.7763568e-15 0 0 -1.7763568e-15 0 0 -1.7763568e-15 0 0 -1.7763568e-15 
		0 0 -1.7763568e-15 0 0 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 
		-1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 0 -1.7763568e-15 0 0 -1.7763568e-15 
		0 0 -1.7763568e-15 0 0 -1.7763568e-15 0 0 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 
		0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 0 -1.7763568e-15 
		0 0 -1.7763568e-15 0 0 -1.7763568e-15 0 0 -1.7763568e-15 0 0 -1.7763568e-15 0 -5.5511151e-17 
		-1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 
		0 -1.7763568e-15 0 0 -1.7763568e-15 0 0 -1.7763568e-15 0 0 -1.7763568e-15 0 0 -1.7763568e-15 
		0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 
		-1.7763568e-15 0 0 -1.7763568e-15 0 0 -1.7763568e-15 0 0 -1.7763568e-15 0 0 -1.7763568e-15 
		0 0 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 
		0 -5.5511151e-17 -1.7763568e-15 0 0 -1.7763568e-15 0 0 -1.7763568e-15 0 0 -1.7763568e-15 
		0 0 -1.7763568e-15 0 0 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 
		-1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 0 -1.7763568e-15 0 0 -1.7763568e-15 
		0 0 -1.7763568e-15 0 0 -1.7763568e-15 0 0 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 
		0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 0 -1.7763568e-15 
		0 0 -1.7763568e-15 0 0 -1.7763568e-15 0 0 -1.7763568e-15 0 0 -1.7763568e-15 0 -5.5511151e-17 
		-1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 
		-5.5511151e-17 -1.7763568e-15 0 0 -1.7763568e-15 0 0 -1.7763568e-15 0 0 -1.7763568e-15 
		0 0 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 
		0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 0 -1.7763568e-15 
		0 0 -1.7763568e-15 0 0 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 
		-1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 
		-5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 
		0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 
		-1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 
		-5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 
		0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 
		-1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 
		-5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 
		0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17;
	setAttr ".pt[166:177]" -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 
		-1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 
		-5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 
		0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17 
		-1.7763568e-15 0 -5.5511151e-17 -1.7763568e-15 0 -5.5511151e-17;
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
createNode parentConstraint -n "Arm_IKPV_M_GRP0_parentConstraint1" -p "Arm_IKPV_M_GRP0";
	rename -uid "72B1FCCA-49F0-DC70-5D50-718DD045F1CB";
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
	setAttr ".tg[0].tot" -type "double3" 5.9588618370174498 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 0 1.9049107295000689 7.2023594007588229e-06 ;
	setAttr ".lr" -type "double3" -2.371008188564608e-23 1.9049107295000689 7.2023594007588246e-06 ;
	setAttr ".rst" -type "double3" 14.231353332970404 136.60888383138146 0 ;
	setAttr ".rsrr" -type "double3" -2.371008188564608e-23 1.9049107295000689 7.2023594007588246e-06 ;
	setAttr -k on ".w0";
createNode transform -n "Arm_IKPV_M_GRP2" -p "Arm_Limb_M_NODE";
	rename -uid "24DC5904-4F63-2416-D3F7-229A0E92583C";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "IKPV";
createNode transform -n "Arm_IKPV_M_CTR2" -p "Arm_IKPV_M_GRP2";
	rename -uid "DF4DF2BC-49C8-1F61-FF9F-D6888E8BF88C";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Sphere_Poly";
createNode mesh -n "Arm_IKPV_M_CTR2Shape" -p "Arm_IKPV_M_CTR2";
	rename -uid "91AF353D-4908-FF40-8B61-B5948AB4F453";
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
	setAttr -s 178 ".pt";
	setAttr ".pt[0:165]" -type "float3"  0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0;
	setAttr ".pt[166:177]" 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 
		0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0 0 -2.8421709e-14 0;
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
createNode ikHandle -n "ikHandle1" -p "Arm_IKPV_M_CTR2";
	rename -uid "6711EB3B-4CA4-97FC-CE39-1BB7FB594D11";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.579965949995767e-05 5.8916933198815968e-07 1.2071640060895561e-06 ;
	setAttr ".r" -type "double3" -1.6320055356200353e-05 1.9308742665304963 4.4842619288882357e-05 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle1_poleVectorConstraint1" -p "ikHandle1";
	rename -uid "FB5D3040-4B1C-3C7B-8853-81893E1405CF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_IKPV_M_CTR1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 22.593721166897154 1.7504386903510749e-05 -11.53175957113497 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Arm_IKPV_M_GRP2_parentConstraint1" -p "Arm_IKPV_M_GRP2";
	rename -uid "CD8321AE-446E-0183-34D3-8D85AC7B99D3";
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
	setAttr ".tg[0].tot" -type "double3" 51.588619191302897 2.8873685380403913e-06 5.9274595565206312e-08 ;
	setAttr ".tg[0].tor" -type "double3" 1.7841100771939439e-05 -1.9308742665170453 
		-4.5418291189923558e-05 ;
	setAttr ".lr" -type "double3" 1.7841100771939439e-05 -1.9308742665170457 -4.5418291189923564e-05 ;
	setAttr ".rst" -type "double3" 59.861110687255852 136.60888671875 5.9274595565206312e-08 ;
	setAttr ".rsrr" -type "double3" 1.7841100771939439e-05 -1.9308742665170457 -4.5418291189923564e-05 ;
	setAttr -k on ".w0";
createNode transform -n "Elbow_Joint_M_GRP1" -p "Arm_Limb_M_NODE";
	rename -uid "D524C658-4413-308D-0DD0-A784BCFBA3C9";
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
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Elbow_Joint_M_CTR1" -p "Elbow_Joint_M_GRP1";
	rename -uid "1DC3B078-4D96-2596-70BF-89961417EE75";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 2.8421709430404007e-14 0 ;
	setAttr ".rp" -type "double3" 1.4210854715202004e-14 5.6843418860808015e-14 0 ;
	setAttr ".sp" -type "double3" 1.4210854715202004e-14 5.6843418860808015e-14 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Elbow_Joint_M_CTR1Shape" -p "Elbow_Joint_M_CTR1";
	rename -uid "E91AD0E6-4EED-C08F-E0B8-AE81FEA1B2E3";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  7.1054274e-15 2.8421709e-14 
		0 7.1054274e-15 2.8421709e-14 0 7.1054274e-15 2.8421709e-14 0 7.1054274e-15 2.8421709e-14 
		0 7.1054274e-15 2.8421709e-14 0 7.1054274e-15 2.8421709e-14 0 7.1054274e-15 2.8421709e-14 
		0 7.1054274e-15 2.8421709e-14 0;
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
createNode parentConstraint -n "Elbow_Joint_M_GRP1_parentConstraint1" -p "Elbow_Joint_M_GRP1";
	rename -uid "E60C779C-41BD-3474-8611-159036127914";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_Elbow_M_JNTW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 8.9396520912998767e-05 1.5168076572535938e-06 
		0.0013321413027651552 ;
	setAttr ".tg[0].tor" -type "double3" 0.00015846042821680763 0.0033739776894611494 
		-9.7904097067747062e-06 ;
	setAttr ".lr" -type "double3" 7.3055306716393641e-05 -1.9322082762918693 -2.5879953692061027e-06 ;
	setAttr ".rst" -type "double3" 37.200792947786191 136.60888747732736 -0.76341038134591721 ;
	setAttr ".rsrr" -type "double3" 7.9275436004247032e-05 -1.9295223930627019 -4.9004105770272307e-06 ;
	setAttr -k on ".w0";
createNode transform -n "Shoulder_Joint_M_GRP0" -p "Arm_Limb_M_NODE";
	rename -uid "988C9ACC-4F76-A6EE-0E30-FC8702D11286";
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
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Shoulder_Joint_M_CTR0" -p "Shoulder_Joint_M_GRP0";
	rename -uid "99ADF3E5-4A02-A5A4-A746-919E1C61C368";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.7763568394002505e-15 0 -1.1102230246251565e-16 ;
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 0 -2.2204460492503131e-16 ;
	setAttr ".sp" -type "double3" 3.5527136788005009e-15 0 -2.2204460492503131e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Shoulder_Joint_M_CTR0Shape" -p "Shoulder_Joint_M_CTR0";
	rename -uid "D2A31EB1-470F-5C27-C2A2-6E833CBE1E70";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.7763568e-15 0 -1.110223e-16 
		1.7763568e-15 0 -1.110223e-16 1.7763568e-15 0 -1.110223e-16 1.7763568e-15 0 -1.110223e-16 
		1.7763568e-15 0 0 1.7763568e-15 0 0 1.7763568e-15 0 0 1.7763568e-15 0 0;
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
createNode parentConstraint -n "Shoulder_Joint_M_GRP0_parentConstraint1" -p "Shoulder_Joint_M_GRP0";
	rename -uid "BCFD79EA-4F49-708C-4B8C-8F9A4C8F736C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_Shoulder_M_JNTW0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-15 0 5.5511151231257827e-17 ;
	setAttr ".tg[0].tor" -type "double3" 0.00015832199785142522 -0.0033285761609194594 
		3.7814987488268437e-06 ;
	setAttr ".lr" -type "double3" 7.3003658327441693e-05 1.9062267946843345 1.0990918576001157e-05 ;
	setAttr ".rst" -type "double3" 14.231353332970405 136.60888383138146 -5.9171284996550236e-17 ;
	setAttr ".rsrr" -type "double3" 7.92239766990696e-05 1.9035770469934776 9.0945783934885178e-06 ;
	setAttr -k on ".w0";
createNode transform -n "Wrist_Joint_M_GRP2" -p "Arm_Limb_M_NODE";
	rename -uid "D228FEB1-4513-DDFB-3D3E-CBAC15F2A9A2";
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
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Wrist_Joint_M_CTR2" -p "Wrist_Joint_M_GRP2";
	rename -uid "9665BF36-4846-C417-7394-91A4593FBAB3";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Wrist_Joint_M_CTR2Shape" -p "Wrist_Joint_M_CTR2";
	rename -uid "314CA8B8-4F1D-28DB-5094-FFB191C69CDA";
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
createNode parentConstraint -n "Wrist_Joint_M_GRP2_parentConstraint1" -p "Wrist_Joint_M_GRP2";
	rename -uid "9E6CD69E-4AF7-2018-567D-4CACBDCFE3A7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_Wrist_M_JNTW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 8.9357210732998738e-05 -2.3574043837015779e-06 
		-3.0164142184041509e-06 ;
	setAttr ".tg[0].tor" -type "double3" 0.00015821780516920393 0.0033739778119777054 
		-9.7913844090273707e-06 ;
	setAttr ".lr" -type "double3" -6.1433177910728541e-05 -1.9322261400278116 -4.0516035643111214e-05 ;
	setAttr ".rst" -type "double3" 59.861146507261886 136.60888553922592 5.8609056606968124e-08 ;
	setAttr ".rsrr" -type "double3" 9.7115464539842121e-05 -1.9295223929994845 -5.0318665651902002e-05 ;
	setAttr -k on ".w0";
createNode transform -n "Clav_Limb_M_NODE" -p "LIMBS";
	rename -uid "965ACF23-439A-D304-7FF6-F19259B142BE";
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
	rename -uid "ED9AF11E-414B-6280-F2D7-46B85BF8BC2C";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 8.2724914959529539 136.60888383138146 0 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Clav01_Joint_M_CTR0" -p "Clav01_Joint_M_GRP0";
	rename -uid "9C194337-4EF4-255E-7622-D48A6537F31F";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Clav01_Joint_M_CTR0Shape" -p "Clav01_Joint_M_CTR0";
	rename -uid "2B41FE76-4BD5-C9D2-2A33-9594216937D4";
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
createNode transform -n "Middle_Limb_M_NODE" -p "LIMBS";
	rename -uid "A1A7FC5C-4DDC-637C-FFD0-61B71748297B";
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
createNode transform -n "Middle1_Joint_M_GRP0" -p "Middle_Limb_M_NODE";
	rename -uid "D54BAC53-4C6E-A70D-FBFC-3EB73A1ADFB5";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle1_Joint_M_CTR0" -p "Middle1_Joint_M_GRP0";
	rename -uid "82F6178E-4A06-6ECF-1773-A68BC7337265";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle1_Joint_M_CTR0Shape" -p "Middle1_Joint_M_CTR0";
	rename -uid "EE316B67-4E88-FE3E-3AE1-E89777A22DCD";
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
createNode transform -n "Middle2_Joint_M_GRP1" -p "Middle1_Joint_M_CTR0";
	rename -uid "666C34F5-4ABC-4290-057F-0E97705DD8C0";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 2.6788155899991466 -2.8421709430404007e-14 -1.5820678100908481e-15 ;
	setAttr ".r" -type "double3" 0 0 -6.5114737805201335 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle2_Joint_M_CTR1" -p "Middle2_Joint_M_GRP1";
	rename -uid "314BEFE2-4A57-4E5B-CD46-19A272B95B5A";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle2_Joint_M_CTR1Shape" -p "Middle2_Joint_M_CTR1";
	rename -uid "B2031952-4D40-6C26-489E-958CF36F8A47";
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
createNode transform -n "Middle3_Joint_M_GRP2" -p "Middle2_Joint_M_CTR1";
	rename -uid "98F20851-478C-2302-6F85-CA9CB92FF32B";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 2.7939882272464658 -5.6843418860808015e-14 -9.0899510141184692e-16 ;
	setAttr ".r" -type "double3" 0 0 -9.6431460058388581 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 1 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle3_Joint_M_CTR2" -p "Middle3_Joint_M_GRP2";
	rename -uid "A1926907-4B37-4842-8B5C-C5A0A7076274";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle3_Joint_M_CTR2Shape" -p "Middle3_Joint_M_CTR2";
	rename -uid "6911C542-4AA8-4679-791D-EDBDAF43F74B";
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
createNode transform -n "Middle4_Joint_M_GRP3" -p "Middle3_Joint_M_CTR2";
	rename -uid "CBD6CC68-4CF5-F6B6-7873-4CB91FE4F189";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 2.6498508047636022 -5.6843418860808015e-14 1.3877787807814457e-17 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle4_Joint_M_CTR3" -p "Middle4_Joint_M_GRP3";
	rename -uid "42773DEC-43F6-3CCA-2C15-00AF33C70581";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle4_Joint_M_CTR3Shape" -p "Middle4_Joint_M_CTR3";
	rename -uid "E7136288-4DAE-4587-DAF9-5EAC4299039A";
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
createNode parentConstraint -n "Middle1_Joint_M_GRP0_parentConstraint1" -p "Middle1_Joint_M_GRP0";
	rename -uid "7BC51933-4FB0-5C21-D7C6-8BA938127F1D";
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
	setAttr ".tg[0].tot" -type "double3" 5.7254079701088543 3.0556718684238149e-06 -0.15682565926408332 ;
	setAttr ".tg[0].tor" -type "double3" -9.5475361901567989e-05 1.929522393081305 4.7075464845646641e-05 ;
	setAttr ".lr" -type "double3" -0.00015846086790064892 -0.0027037468965460205 4.4642729076450646e-06 ;
	setAttr ".rst" -type "double3" 65.588588512988565 136.60888383072415 0.036038685573582821 ;
	setAttr ".rsrr" -type "double3" -3.6114195991683003e-20 1.1927080055546043e-15 6.4455782872295127e-21 ;
	setAttr -k on ".w0";
createNode transform -n "Index_Limb_M_NODE" -p "LIMBS";
	rename -uid "A022538F-42AB-BA50-81B8-9EAE37B5A479";
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
createNode transform -n "Index1_Joint_M_GRP0" -p "Index_Limb_M_NODE";
	rename -uid "B751C234-4573-EC9E-A928-5EBAF11F964A";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index1_Joint_M_CTR0" -p "Index1_Joint_M_GRP0";
	rename -uid "E4E71248-4AC3-D4CD-8A15-E9ADD1571540";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index1_Joint_M_CTR0Shape" -p "Index1_Joint_M_CTR0";
	rename -uid "4B3DA5F5-415A-E567-9F62-3DB160AFCFE3";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0 -4.4408921e-16 0 0 -4.4408921e-16 
		0 0 -4.4408921e-16 0 0 -4.4408921e-16 0 0 -4.4408921e-16 0 0 -4.4408921e-16 0 0 -4.4408921e-16 
		0 0 -4.4408921e-16;
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
createNode transform -n "Index2_Joint_M_GRP1" -p "Index1_Joint_M_CTR0";
	rename -uid "4D5E067D-4C12-4BDE-51D4-1FB529A4D7E3";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 2.6788155899991608 0 -1.9984014443252818e-15 ;
	setAttr ".r" -type "double3" 0 0 -6.5114737805200793 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index2_Joint_M_CTR1" -p "Index2_Joint_M_GRP1";
	rename -uid "2F4BAFD3-4011-9BE2-DBF2-BA8F0CC2E5CB";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index2_Joint_M_CTR1Shape" -p "Index2_Joint_M_CTR1";
	rename -uid "470AE7B4-4246-E09A-C48B-45AA9C9C76D9";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0 -4.4408921e-16 0 0 -4.4408921e-16 
		0 0 -4.4408921e-16 0 0 -4.4408921e-16 0 0 -4.4408921e-16 0 0 -4.4408921e-16 0 0 -4.4408921e-16 
		0 0 -4.4408921e-16;
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
createNode transform -n "Index3_Joint_M_GRP2" -p "Index2_Joint_M_CTR1";
	rename -uid "5DE13C5A-4495-1EEE-EDF1-7A9368E889D9";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 2.793988227246551 8.5265128291212022e-14 -6.6613381477509392e-16 ;
	setAttr ".r" -type "double3" 0 0 -9.6431460058394283 ;
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999922 0.99999999999999933 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index3_Joint_M_CTR2" -p "Index3_Joint_M_GRP2";
	rename -uid "CD5A76C0-4B92-2E45-7C5B-029538235093";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 1.0658141036401503e-14 0 0 ;
	setAttr ".sp" -type "double3" 1.0658141036401503e-14 0 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index3_Joint_M_CTR2Shape" -p "Index3_Joint_M_CTR2";
	rename -uid "6B2C540C-4A73-7CA7-9B15-1AB13FE3EA4B";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -7.1054274e-15 0 0 -7.1054274e-15 
		0 0 -7.1054274e-15 0 0 -7.1054274e-15 0 0 -7.1054274e-15 0 0 -7.1054274e-15 0 0 -7.1054274e-15 
		0 0 -7.1054274e-15 0 0;
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
createNode transform -n "Index4_Joint_M_GRP3" -p "Index3_Joint_M_CTR2";
	rename -uid "26C064D1-4105-890F-982F-BD8E372BF6A3";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 2.6498508047635632 -8.5265128291212022e-14 2.6645352591003757e-15 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000004 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index4_Joint_M_CTR3" -p "Index4_Joint_M_GRP3";
	rename -uid "AFDF6E1E-4569-B844-2B79-63BDEDD868DA";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -7.1054273576010019e-15 0 2.2204460492503131e-16 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-15 0 2.2204460492503131e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index4_Joint_M_CTR3Shape" -p "Index4_Joint_M_CTR3";
	rename -uid "61507FE3-4CAD-E709-1303-93AF3FBF2DE0";
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
		1.3322676e-15 -1.4210855e-14 5.6843419e-14 1.3322676e-15 -1.4210855e-14 5.6843419e-14 
		1.3322676e-15 -1.4210855e-14 5.6843419e-14 1.3322676e-15 -1.4210855e-14 5.6843419e-14 
		1.3322676e-15 -1.4210855e-14 5.6843419e-14 1.3322676e-15 -1.4210855e-14 5.6843419e-14 
		1.3322676e-15 -1.4210855e-14 5.6843419e-14 1.3322676e-15;
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
createNode parentConstraint -n "Index1_Joint_M_GRP0_parentConstraint1" -p "Index1_Joint_M_GRP0";
	rename -uid "202F8928-477F-D2BB-514B-559EBE82C048";
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
	setAttr ".tg[0].tot" -type "double3" 4.9647695930043412 5.0448705337657884e-06 1.4344708263034347 ;
	setAttr ".tg[0].tor" -type "double3" -9.5475361901567989e-05 1.929522393081305 4.7075464845646641e-05 ;
	setAttr ".lr" -type "double3" -0.00015846086790064892 -0.0027037468965460205 4.4642729076450646e-06 ;
	setAttr ".rst" -type "double3" 64.77480222096429 136.60888383738836 1.6008220944264031 ;
	setAttr ".rsrr" -type "double3" -3.6114195991683003e-20 1.1927080055546043e-15 6.4455782872295127e-21 ;
	setAttr -k on ".w0";
createNode transform -n "Thumb_Limb_M_NODE" -p "LIMBS";
	rename -uid "3BE89458-49E7-1BDC-17E7-C9B8689D8F79";
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
createNode transform -n "Thumb1_Joint_M_GRP0" -p "Thumb_Limb_M_NODE";
	rename -uid "9DABD3CE-4664-963E-CC8C-92BB58BB33F6";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".s" -type "double3" 0.99999999999999967 1 1.0000000000000002 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb1_Joint_M_CTR0" -p "Thumb1_Joint_M_GRP0";
	rename -uid "36F1FD4B-4C35-E42A-8134-C0AAE679888D";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 7.1054273576010019e-15 -3.5527136788005009e-15 -2.8421709430404007e-14 ;
	setAttr ".sp" -type "double3" 7.1054273576010019e-15 -3.5527136788005009e-15 -2.8421709430404007e-14 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb1_Joint_M_CTR0Shape" -p "Thumb1_Joint_M_CTR0";
	rename -uid "EA2FE48C-4BF1-45AE-5451-A0A793742184";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.8421709e-14 -3.5527137e-14 
		-5.6843419e-14 2.8421709e-14 -3.5527137e-14 -5.6843419e-14 2.8421709e-14 -3.5527137e-14 
		-5.6843419e-14 2.8421709e-14 -3.5527137e-14 -5.6843419e-14 2.8421709e-14 -3.5527137e-14 
		-5.6843419e-14 2.8421709e-14 -3.5527137e-14 -5.6843419e-14 2.8421709e-14 -3.5527137e-14 
		-5.6843419e-14 2.8421709e-14 -3.5527137e-14 -5.6843419e-14;
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
createNode transform -n "Thumb2_Joint_M_GRP1" -p "Thumb1_Joint_M_CTR0";
	rename -uid "B0076772-4CA4-C2E0-62E3-ECB962CFC629";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 2.0000000000000711 -1.4210854715202004e-14 -2.8421709430404007e-14 ;
	setAttr ".r" -type "double3" -6.9485562768302565 -0.42185510193096143 -9.5279279090871842 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000002 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb2_Joint_M_CTR1" -p "Thumb2_Joint_M_GRP1";
	rename -uid "A38E4D90-470B-5382-2451-559A8232B90A";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb2_Joint_M_CTR1Shape" -p "Thumb2_Joint_M_CTR1";
	rename -uid "2FA13A6C-4D6A-918B-1ACF-64AAFAEAE28A";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  5.6843419e-14 -2.1316282e-14 
		0 5.6843419e-14 -2.1316282e-14 0 5.6843419e-14 -2.1316282e-14 0 5.6843419e-14 -2.1316282e-14 
		0 5.6843419e-14 -2.1316282e-14 0 5.6843419e-14 -2.1316282e-14 0 5.6843419e-14 -2.1316282e-14 
		0 5.6843419e-14 -2.1316282e-14 0;
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
createNode transform -n "Thumb3_Joint_M_GRP2" -p "Thumb2_Joint_M_CTR1";
	rename -uid "B80D021E-426B-DF85-2284-DD8E770F15E9";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 1.9068061047389406 -1.4210854715202004e-14 1.1368683772161603e-13 ;
	setAttr ".r" -type "double3" -12.496134384928087 1.1323012981309131 -14.757531751947313 ;
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999978 0.99999999999999922 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb3_Joint_M_CTR2" -p "Thumb3_Joint_M_GRP2";
	rename -uid "97031ECE-4AB3-74F8-2EB6-A39EFC0A200B";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 -7.1054273576010019e-15 2.8421709430404007e-14 ;
	setAttr ".sp" -type "double3" 0 -7.1054273576010019e-15 2.8421709430404007e-14 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb3_Joint_M_CTR2Shape" -p "Thumb3_Joint_M_CTR2";
	rename -uid "90DC7177-47F0-0B0E-32C9-76A8E8D17C25";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.8421709e-14 -1.4210855e-14 
		0 2.8421709e-14 -1.4210855e-14 0 2.8421709e-14 -1.4210855e-14 0 2.8421709e-14 -1.4210855e-14 
		0 2.8421709e-14 -1.4210855e-14 0 2.8421709e-14 -1.4210855e-14 0 2.8421709e-14 -1.4210855e-14 
		0 2.8421709e-14 -1.4210855e-14 0;
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
createNode transform -n "Thumb4_Joint_M_GRP3" -p "Thumb3_Joint_M_CTR2";
	rename -uid "DB88DEFD-4A4F-6ABE-D18C-0BB724C3B7AC";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".t" -type "double3" 2.1353298302241797 3.5527136788005009e-14 2.8421709430404007e-14 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000009 1.0000000000000009 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb4_Joint_M_CTR3" -p "Thumb4_Joint_M_GRP3";
	rename -uid "0013D1E1-4095-BD86-24A3-C2BEC044D987";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -7.1054273576010019e-15 0 0 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-15 0 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb4_Joint_M_CTR3Shape" -p "Thumb4_Joint_M_CTR3";
	rename -uid "E596136E-4774-5E68-FB7B-D4BC65CE27E9";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.4210855e-14 1.4210855e-14 
		5.6843419e-14 1.4210855e-14 1.4210855e-14 5.6843419e-14 1.4210855e-14 1.4210855e-14 
		5.6843419e-14 1.4210855e-14 1.4210855e-14 5.6843419e-14 1.4210855e-14 1.4210855e-14 
		5.6843419e-14 1.4210855e-14 1.4210855e-14 5.6843419e-14 1.4210855e-14 1.4210855e-14 
		5.6843419e-14 1.4210855e-14 1.4210855e-14 5.6843419e-14;
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
createNode parentConstraint -n "Thumb1_Joint_M_GRP0_parentConstraint1" -p "Thumb1_Joint_M_GRP0";
	rename -uid "1FD8276C-4F80-E616-39C9-2AA47FCF5D47";
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
	setAttr ".tg[0].tot" -type "double3" 3.644415175048124 6.6087457923913462e-06 3.0652708056218754 ;
	setAttr ".tg[0].tor" -type "double3" 91.154273569046097 -24.783448230858966 -40.342156043528526 ;
	setAttr ".lr" -type "double3" 92.548746299702145 -26.249717122126604 -40.942971161455951 ;
	setAttr ".rst" -type "double3" 63.400287158585179 136.60888384421816 3.1862408734425101 ;
	setAttr ".rsrr" -type "double3" 92.546904281487116 -26.247570961685465 -40.942160957263816 ;
	setAttr -k on ".w0";
createNode transform -n "MESHES" -p "TEMP_RigRoot";
	rename -uid "9641FE35-42BE-F6BD-E96B-8BA874831271";
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
	rename -uid "1732E8A7-4B15-8148-3F37-7BB3537E3AB4";
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
	rename -uid "B8457466-4789-51CA-1B6E-458D300A9A03";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Circle_Wire";
createNode nurbsCurve -n "Circle_WireShape" -p "Circle_Wire";
	rename -uid "479B4A29-4543-CB70-DA19-BC84D2F8646A";
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
	rename -uid "5F73E390-4D69-380E-558E-20869077B022";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Cube_PolyShape" -p "Cube_Poly";
	rename -uid "984CB9A5-4A64-BDB3-2D0A-83B0560E5CCA";
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
	rename -uid "5C400287-4307-2986-5CA3-A2BDBA129514";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cube_Wire";
createNode nurbsCurve -n "Cube_WireShape" -p "Cube_Wire";
	rename -uid "23CD0AE0-4274-FB66-32A5-60A09D5F8E3D";
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
	rename -uid "4E0CC1CA-4665-931A-8304-EFBEE85F336C";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cylinder_Poly";
createNode mesh -n "Cylinder_PolyShape" -p "Cylinder_Poly";
	rename -uid "81D752A0-4F68-5818-CE1E-F78265434931";
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
	rename -uid "2BCAD7A6-4257-9BFD-D301-DD98A32AADB9";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Diamond_Wire";
createNode nurbsCurve -n "Diamond_WireShape" -p "Diamond_Wire";
	rename -uid "60AE53B0-4197-C6EE-479B-51865E0862B1";
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
	rename -uid "013DCEFE-47DB-E3CA-DBD1-EEA6F75BEF9C";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Pin_Wire";
createNode nurbsCurve -n "Pin_WireShape" -p "Pin_Wire";
	rename -uid "A4C68ADE-47CD-D1B4-382C-B2B7CACA9D7C";
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
	rename -uid "E0EB9B23-4238-25CC-C89C-BFB96553784B";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Sphere_Poly";
createNode mesh -n "Sphere_PolyShape" -p "Sphere_Poly";
	rename -uid "50435AE9-4EB0-CAC7-AD41-A39B74906B05";
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
	rename -uid "02B91477-4F67-449B-98CD-D3A1FC40ECF2";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Square_Wire";
createNode nurbsCurve -n "Square_WireShape" -p "Square_Wire";
	rename -uid "7AE0ED6E-4C91-E8AD-A8E3-8FA23926393A";
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
	rename -uid "214010A9-417F-EA4A-8A69-F7876AF06481";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "4A594413-4ABC-6F84-E16B-D4B70903B43E";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "7B2E61F6-4633-0D84-DFF7-748EA5F663B3";
createNode displayLayerManager -n "layerManager";
	rename -uid "7A91F9CB-4376-3A76-48B6-CD838B97313B";
	setAttr -s 4 ".dli[1:3]"  1 2 3;
	setAttr -s 4 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "FF544087-4F49-F8C9-E7EA-059182A5F3D7";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "B205EF8A-4825-19F4-7DBE-D18B14567494";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "02BBE0BE-43AC-D53F-0DD0-019842195618";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "BECDCFD9-4C6B-01E2-617B-C99A96193045";
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
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1265\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1265\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1265\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 50 -size 100 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "1C5F698B-4E87-7BAA-AB89-26AD26305587";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "Control_Disp";
	rename -uid "84F4DCCD-4855-058C-D5F7-4CA20BA8EBDA";
	setAttr ".do" 1;
createNode displayLayer -n "Joint_Disp";
	rename -uid "B7B27F1D-4C2B-51A4-D6C3-3F881966A2EB";
	setAttr ".dt" 2;
	setAttr ".do" 2;
createNode displayLayer -n "Meshes_Disp";
	rename -uid "5E6A917C-42B7-E674-0B84-B7BD3841BD6B";
	setAttr ".dt" 2;
	setAttr ".do" 3;
createNode materialInfo -n "materialInfo1";
	rename -uid "63B20DD7-4E04-055A-CE93-35AE0298D61E";
createNode shadingEngine -n "lambert2SG";
	rename -uid "6B4522CC-4C13-6AE3-7534-4591F334AB32";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode lambert -n "TempMaterial";
	rename -uid "5C2684EC-4786-C2DA-80C5-998284194B16";
	setAttr ".c" -type "float3" 1 0.92308331 0 ;
	setAttr ".it" -type "float3" 0.69277108 0.69277108 0.69277108 ;
createNode surfaceShader -n "LControlsMaterial";
	rename -uid "0E6C6451-4133-5F55-D359-9BA1D5BBFFC7";
	setAttr ".oc" -type "float3" 0 0 1 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "LControlsMaterialSG";
	rename -uid "23D78038-4523-0763-39E7-A3B782F0C7D2";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "0FA0B9B2-4958-FA43-54FD-A8A7AF333351";
createNode surfaceShader -n "MControlsMaterial";
	rename -uid "005367E6-4BEE-C472-D40C-7F99A5C700C1";
	setAttr ".oc" -type "float3" 1 1 0 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "MControlsMaterialSG";
	rename -uid "BE7BADF6-4B24-7949-577E-86935CD207DB";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr -s 30 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "FF2AEC54-4B32-5E1A-C62C-5485CD10BA75";
createNode surfaceShader -n "RControlsMaterial";
	rename -uid "DC7E5281-4A18-60BD-8B5B-65A48858918D";
	setAttr ".oc" -type "float3" 1 0 0 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "RControlsMaterialSG";
	rename -uid "7B78958A-42FA-E413-6C86-EE96BC28BBFC";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "186C83C7-44E0-23D6-1277-FFAC771BF03F";
createNode cluster -n "cluster1";
	rename -uid "6A1C5743-4FC7-290A-F1BB-03A480A285E5";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode tweak -n "tweak1";
	rename -uid "BE616D5C-4A01-6643-3128-DF808C5DFD11";
createNode objectSet -n "cluster1Set";
	rename -uid "202AC89C-4916-4FD3-925E-4FA7F949DDB0";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster1GroupId";
	rename -uid "DB394122-48E2-9EA0-F6C0-0BBA78B7B699";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster1GroupParts";
	rename -uid "93E9F590-417D-4BB7-0BDC-818AA68184F7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0]";
createNode objectSet -n "tweakSet1";
	rename -uid "C9E43EC4-43CF-3F28-17D9-ACA2ED615B69";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "4A33AC5C-4D55-71F8-F6C4-299346992703";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "4CF616D3-43A0-E238-B992-07BE4FA954C4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode cluster -n "cluster2";
	rename -uid "9705E959-4066-2A19-01C0-B78D392C4141";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode objectSet -n "cluster2Set";
	rename -uid "E1A1F213-4B3A-6DB2-BDFF-04808F358F99";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster2GroupId";
	rename -uid "6780AA9B-4BDB-5C35-50A4-AFA9B4B2FAA4";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster2GroupParts";
	rename -uid "8F43C02F-4452-1328-BF19-818A38DA11F4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[1]";
createNode network -n "LimbPreset_Arm_1";
	rename -uid "3E1BA7FB-4BEC-EE05-FBB1-8EB169D92414";
	addAttr -ci true -sn "presetParent" -ln "presetParent" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "presetName" -ln "presetName" -dt "string";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "limbParent" -ln "limbParent" -dt "string";
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -at "short";
	addAttr -ci true -sn "bhvFile" -ln "bhvFile" -dt "string";
	addAttr -ci true -sn "bhvType" -ln "bhvType" -dt "string";
	addAttr -ci true -sn "enableLimb" -ln "enableLimb" -min 0 -max 1 -at "bool";
	setAttr ".ID" 1;
	setAttr ".presetName" -type "string" "IK";
	setAttr ".bhvFile" -type "string" "IK_PoleVector_01";
	setAttr ".enableLimb" yes;
createNode network -n "LimbPreset_Arm_2";
	rename -uid "EFBD6319-45A7-4870-4348-76835A05077C";
	addAttr -ci true -sn "presetParent" -ln "presetParent" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "presetName" -ln "presetName" -dt "string";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "limbParent" -ln "limbParent" -dt "string";
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -at "short";
	addAttr -ci true -sn "bhvFile" -ln "bhvFile" -dt "string";
	addAttr -ci true -sn "bhvType" -ln "bhvType" -dt "string";
	addAttr -ci true -sn "enableLimb" -ln "enableLimb" -min 0 -max 1 -at "bool";
	setAttr ".ID" 2;
	setAttr ".presetName" -type "string" "FK_Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
	setAttr ".enableLimb" yes;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "E9A22D5A-4934-5B0C-C4F7-E8BB667CB042";
createNode controller -n "Clav01_Joint_M_CTR0_tag";
	rename -uid "ABF09F6A-4520-C76A-3E90-0D8BA539E57F";
	setAttr -s 3 ".child";
createNode controller -n "controller1";
	rename -uid "7BD40378-41C2-58B5-BE5D-D7BE7942A2E1";
	setAttr ".cwsb" yes;
createNode controller -n "BicepTwist_Joint_M_CTR0_tag";
	rename -uid "C954A004-443E-A308-7EC5-1B8FCBD0A74F";
createNode controller -n "Arm_IKPV_M_CTR1_tag";
	rename -uid "5751D120-478E-694F-AA14-E5A268DB8381";
	setAttr -s 23 ".child";
createNode controller -n "ForearmTwist2_Joint_M_CTR1_tag";
	rename -uid "BE9C99D6-486B-7BD1-F1E0-E5A209244A16";
createNode controller -n "ForearmTwist1_Joint_M_CTR0_tag";
	rename -uid "1E14BA49-473C-10FF-0129-1CB4755D48E6";
createNode controller -n "Index3_Joint_M_CTR2_tag";
	rename -uid "BE71186C-4DED-CEA2-4ED0-90819EFB0B1C";
createNode controller -n "Index4_Joint_M_CTR3_tag";
	rename -uid "E0C6AFD8-4579-A066-A74F-A9B507FD0055";
createNode controller -n "Index2_Joint_M_CTR1_tag";
	rename -uid "21ED4BF0-4C3F-4C17-C5FD-A1883E6DF203";
createNode controller -n "Index1_Joint_M_CTR0_tag";
	rename -uid "55DBCFC9-4916-7002-9000-43A07BFCC02B";
createNode controller -n "Middle3_Joint_M_CTR2_tag";
	rename -uid "0DB8E4DB-408E-D2A1-DE1F-B0B151D82E12";
createNode controller -n "Middle4_Joint_M_CTR3_tag";
	rename -uid "5E21CFB8-4C94-3631-D110-3991F71EE16F";
createNode controller -n "Middle2_Joint_M_CTR1_tag";
	rename -uid "7FFFD552-4B91-4167-8D6B-4F8CD0E3FF89";
createNode controller -n "Middle1_Joint_M_CTR0_tag";
	rename -uid "FF1523E5-4146-EB34-9AAB-24948DC8189B";
createNode controller -n "Pinkey3_Joint_M_CTR2_tag";
	rename -uid "936C922B-41E5-EC8E-F1DD-1E964C14054D";
createNode controller -n "Pinkey4_Joint_M_CTR3_tag";
	rename -uid "84973F3D-4445-37A7-E835-33A7A54B5CCF";
createNode controller -n "Pinkey2_Joint_M_CTR1_tag";
	rename -uid "79AB737E-4ABC-BB02-3274-F68E03FD0F8C";
createNode controller -n "Pinkey1_Joint_M_CTR0_tag";
	rename -uid "D0DE4B6B-4CD1-7F8C-2344-F3AB5610E750";
createNode controller -n "Ring3_Joint_M_CTR2_tag";
	rename -uid "72D10794-4E39-2106-BD6D-F3920BDB4396";
createNode controller -n "Ring4_Joint_M_CTR3_tag";
	rename -uid "73722832-47EF-F155-9E08-32B06D78A76D";
createNode controller -n "Ring2_Joint_M_CTR1_tag";
	rename -uid "85705FB4-4065-1430-088F-9D8D5314E357";
createNode controller -n "Ring1_Joint_M_CTR0_tag";
	rename -uid "83F88354-477C-697B-47D9-C98E6746E54C";
createNode controller -n "Thumb3_Joint_M_CTR2_tag";
	rename -uid "338872DA-4307-598E-59AB-1B867326860E";
createNode controller -n "Thumb4_Joint_M_CTR3_tag";
	rename -uid "735101AF-4107-D412-A45A-10B97B7F0EA4";
createNode controller -n "Thumb2_Joint_M_CTR1_tag";
	rename -uid "7EDB9AB9-4731-16C4-F402-D3A170E26A1B";
createNode controller -n "Thumb1_Joint_M_CTR0_tag";
	rename -uid "EDB847BC-42DC-C673-44C0-19B6430C1882";
createNode controller -n "Arm_IKPV_M_CTR0_tag";
	rename -uid "640FFBF0-4A7C-F45F-D254-93A2EBE494F2";
createNode controller -n "Arm_IKPV_M_CTR2_tag";
	rename -uid "D4E147DE-4140-1A95-0B7C-D09E212A785A";
createNode animCurveTL -n "Arm_IKPV_M_CTR0_translateX";
	rename -uid "DBD00AC1-490C-3CFC-90D7-B6A7CD9D2367";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -1.7763568394002505e-15 10 -1.7763568394002505e-15
		 20 -1.7763568394002505e-15;
createNode animCurveTL -n "Arm_IKPV_M_CTR0_translateY";
	rename -uid "1C7F757F-43F6-5EB0-E1EA-9D9F65144406";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTL -n "Arm_IKPV_M_CTR0_translateZ";
	rename -uid "1E5DE360-4B98-114C-CC13-559B1CA8EE0F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -5.5511151231257827e-17 10 8.3266726846886741e-16
		 20 -5.5511151231257827e-17;
createNode animCurveTA -n "Arm_IKPV_M_CTR0_rotateX";
	rename -uid "81A99645-4AB3-4F99-6ABF-B58D0259D45E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Arm_IKPV_M_CTR0_rotateY";
	rename -uid "8EA52BAE-4348-B3B9-F34E-53AD8D066CB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTA -n "Arm_IKPV_M_CTR0_rotateZ";
	rename -uid "D486DE64-43A6-4E8C-2174-51ABA0371138";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 20 0;
createNode animCurveTU -n "Arm_IKPV_M_CTR0_scaleX";
	rename -uid "3127F474-4A12-EEE8-CB22-B18A601F81C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Arm_IKPV_M_CTR0_scaleY";
	rename -uid "2694B20B-47D5-1F9A-7744-65A48A51E464";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Arm_IKPV_M_CTR0_scaleZ";
	rename -uid "2C0B7CFD-4CC0-E13F-C4C9-F98EAA16CE9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTL -n "Arm_IKPV_M_CTR1_translateX";
	rename -uid "E7B362C5-4B3C-9B70-DC36-C193601228BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 9.9999999999999929 10 1.5714183656537148
		 20 9.9999999999999929;
createNode animCurveTL -n "Arm_IKPV_M_CTR1_translateY";
	rename -uid "01EF6F26-4EF1-94E6-F793-349E1A14FED4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.8421709430404007e-14 10 -0.0002142581613782113
		 20 2.8421709430404007e-14;
createNode animCurveTL -n "Arm_IKPV_M_CTR1_translateZ";
	rename -uid "6C81B849-476C-CA6A-3F3F-B28A4365CF7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.1316282072803006e-14 10 16.080090901530475
		 20 -2.1316282072803006e-14;
createNode animCurveTA -n "Arm_IKPV_M_CTR1_rotateX";
	rename -uid "56033E2E-4EEA-9BFE-25FE-3A8E2EC552A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1.5602849275062872e-16 10 -0.014141020554537595
		 20 1.5602849275062872e-16;
createNode animCurveTA -n "Arm_IKPV_M_CTR1_rotateY";
	rename -uid "F5B576D3-4C5C-F2A9-CF98-1D8D1955061A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.544443743614542e-14 10 -91.463488280740037
		 20 2.544443743614542e-14;
createNode animCurveTA -n "Arm_IKPV_M_CTR1_rotateZ";
	rename -uid "B005C87D-4751-8BC0-8503-4EA3A3E9195A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -2.318375930483827e-16 10 0.013746968237129873
		 20 -2.318375930483827e-16;
createNode animCurveTU -n "Arm_IKPV_M_CTR1_scaleX";
	rename -uid "BEA368E6-48AC-D7F8-1F4E-609C5F35E9C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Arm_IKPV_M_CTR1_scaleY";
	rename -uid "809E989C-4562-75DC-4DB1-23978D328374";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Arm_IKPV_M_CTR1_scaleZ";
	rename -uid "62EB1E67-427C-B05D-81AB-0F99A41077AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTL -n "Arm_IKPV_M_CTR2_translateX";
	rename -uid "11177502-4257-A0E5-5CD7-07BC86A0192C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -7.1599377953646126e-05 10 -27.57055283260096
		 20 -7.1599377953646126e-05;
createNode animCurveTL -n "Arm_IKPV_M_CTR2_translateY";
	rename -uid "ECE3E09E-403B-3855-ABE0-CBBB7FD08E2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.3589879845076211e-06 10 1.7695012672902521e-06
		 20 2.3589879845076211e-06;
createNode animCurveTL -n "Arm_IKPV_M_CTR2_translateZ";
	rename -uid "9A768D25-4690-FF9D-C704-C8B206AAC714";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 2.4126102986521403e-06 10 10.722270802194325
		 20 2.4126102986521403e-06;
createNode animCurveTA -n "Arm_IKPV_M_CTR2_rotateX";
	rename -uid "5DA30F29-4426-9DBD-4D4C-AA9649FC3D64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.00015821858649970596 10 -0.00015821885054608377
		 20 -0.00015821858649970596;
createNode animCurveTA -n "Arm_IKPV_M_CTR2_rotateY";
	rename -uid "1F470BAE-44D4-34D6-F680-2EACEE5977E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 -0.0027037470117465554 10 -0.0027037470117484146
		 20 -0.0027037470117465554;
createNode animCurveTA -n "Arm_IKPV_M_CTR2_rotateZ";
	rename -uid "754ECBA4-4131-1754-436C-6D920D1300CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 9.8016391422235195e-06 10 9.8016334719050313e-06
		 20 9.8016391422235195e-06;
createNode animCurveTU -n "Arm_IKPV_M_CTR2_scaleX";
	rename -uid "47B46848-4CE7-966C-617A-72B5FF20CBAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Arm_IKPV_M_CTR2_scaleY";
	rename -uid "74558A6F-4294-E66C-3EB4-9EB9AB614631";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode animCurveTU -n "Arm_IKPV_M_CTR2_scaleZ";
	rename -uid "CCBE0696-4697-273B-ED30-7F9331B62F8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 20 1;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "4F96DB90-42F1-52CE-E67D-8EB5840F926D";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -421.42855468250531 -324.99998708566085 ;
	setAttr ".tgi[0].vh" -type "double2" 421.42855468250531 323.80951094248991 ;
	setAttr -s 285 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 130;
	setAttr ".tgi[0].ni[0].y" 9728.5712890625;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 4568.5712890625;
	setAttr ".tgi[0].ni[1].y" 8014.28564453125;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 2455.71435546875;
	setAttr ".tgi[0].ni[2].y" 9120;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 2844.28564453125;
	setAttr ".tgi[0].ni[3].y" 9092.857421875;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 4568.5712890625;
	setAttr ".tgi[0].ni[4].y" -9395.7138671875;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 2067.142822265625;
	setAttr ".tgi[0].ni[5].y" 9937.142578125;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 537.14288330078125;
	setAttr ".tgi[0].ni[6].y" 8917.142578125;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 3710;
	setAttr ".tgi[0].ni[7].y" -1357.142822265625;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" -2614.28564453125;
	setAttr ".tgi[0].ni[8].y" 9885.7138671875;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 537.14288330078125;
	setAttr ".tgi[0].ni[9].y" 7040;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 4070;
	setAttr ".tgi[0].ni[10].y" -8328.5712890625;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 4568.5712890625;
	setAttr ".tgi[0].ni[11].y" -9192.857421875;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 2844.28564453125;
	setAttr ".tgi[0].ni[12].y" 9674.2861328125;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 2844.28564453125;
	setAttr ".tgi[0].ni[13].y" 7284.28564453125;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 4568.5712890625;
	setAttr ".tgi[0].ni[14].y" -9294.2861328125;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 4568.5712890625;
	setAttr ".tgi[0].ni[15].y" -9700;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 4568.5712890625;
	setAttr ".tgi[0].ni[16].y" -8584.2861328125;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 4568.5712890625;
	setAttr ".tgi[0].ni[17].y" 7120;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 4568.5712890625;
	setAttr ".tgi[0].ni[18].y" 6402.85693359375;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 4568.5712890625;
	setAttr ".tgi[0].ni[19].y" -9497.142578125;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 4070;
	setAttr ".tgi[0].ni[20].y" -3970;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" -4612.85693359375;
	setAttr ".tgi[0].ni[21].y" 11268.5712890625;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 4070;
	setAttr ".tgi[0].ni[22].y" -4344.28564453125;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" -3311.428466796875;
	setAttr ".tgi[0].ni[23].y" 11211.4287109375;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 537.14288330078125;
	setAttr ".tgi[0].ni[24].y" 8062.85693359375;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 3710;
	setAttr ".tgi[0].ni[25].y" 7918.5712890625;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 2844.28564453125;
	setAttr ".tgi[0].ni[26].y" 8674.2861328125;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 4070;
	setAttr ".tgi[0].ni[27].y" 1745.7142333984375;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 3710;
	setAttr ".tgi[0].ni[28].y" 7157.14306640625;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 3710;
	setAttr ".tgi[0].ni[29].y" 7702.85693359375;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 537.14288330078125;
	setAttr ".tgi[0].ni[30].y" 9075.7138671875;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 3710;
	setAttr ".tgi[0].ni[31].y" 5527.14306640625;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 3710;
	setAttr ".tgi[0].ni[32].y" 7487.14306640625;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 3342.857177734375;
	setAttr ".tgi[0].ni[33].y" 5000;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 2455.71435546875;
	setAttr ".tgi[0].ni[34].y" 9348.5712890625;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 2067.142822265625;
	setAttr ".tgi[0].ni[35].y" 9292.857421875;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 1655.7142333984375;
	setAttr ".tgi[0].ni[36].y" 6162.85693359375;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 3710;
	setAttr ".tgi[0].ni[37].y" 494.28570556640625;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 3710;
	setAttr ".tgi[0].ni[38].y" 9035.7138671875;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 3342.857177734375;
	setAttr ".tgi[0].ni[39].y" 5431.4287109375;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 4568.5712890625;
	setAttr ".tgi[0].ni[40].y" 7525.71435546875;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 3710;
	setAttr ".tgi[0].ni[41].y" 4994.28564453125;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" -1850;
	setAttr ".tgi[0].ni[42].y" 7941.4287109375;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 3342.857177734375;
	setAttr ".tgi[0].ni[43].y" 2927.142822265625;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" -3311.428466796875;
	setAttr ".tgi[0].ni[44].y" 9962.857421875;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 3710;
	setAttr ".tgi[0].ni[45].y" 6941.4287109375;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 3342.857177734375;
	setAttr ".tgi[0].ni[46].y" 7607.14306640625;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 2844.28564453125;
	setAttr ".tgi[0].ni[47].y" 8287.142578125;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 3710;
	setAttr ".tgi[0].ni[48].y" 3315.71435546875;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 3710;
	setAttr ".tgi[0].ni[49].y" -1515.7142333984375;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 4070;
	setAttr ".tgi[0].ni[50].y" 7197.14306640625;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 3710;
	setAttr ".tgi[0].ni[51].y" 6681.4287109375;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" 2455.71435546875;
	setAttr ".tgi[0].ni[52].y" 4440;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" 3342.857177734375;
	setAttr ".tgi[0].ni[53].y" 8720;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 2455.71435546875;
	setAttr ".tgi[0].ni[54].y" 2508.571533203125;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 1655.7142333984375;
	setAttr ".tgi[0].ni[55].y" 10048.5712890625;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" 4070;
	setAttr ".tgi[0].ni[56].y" 882.85711669921875;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 2067.142822265625;
	setAttr ".tgi[0].ni[57].y" 4697.14306640625;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" 2844.28564453125;
	setAttr ".tgi[0].ni[58].y" 3210;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" 2844.28564453125;
	setAttr ".tgi[0].ni[59].y" 7900;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" 4070;
	setAttr ".tgi[0].ni[60].y" -3342.857177734375;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" 2067.142822265625;
	setAttr ".tgi[0].ni[61].y" 8404.2861328125;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" -5227.14306640625;
	setAttr ".tgi[0].ni[62].y" 11387.142578125;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" 3710;
	setAttr ".tgi[0].ni[63].y" 6250;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" 4070;
	setAttr ".tgi[0].ni[64].y" -660;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" 3710;
	setAttr ".tgi[0].ni[65].y" 6091.4287109375;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" -4612.85693359375;
	setAttr ".tgi[0].ni[66].y" 10938.5712890625;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" -177.14285278320313;
	setAttr ".tgi[0].ni[67].y" 6521.4287109375;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" 3710;
	setAttr ".tgi[0].ni[68].y" 5932.85693359375;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" 3710;
	setAttr ".tgi[0].ni[69].y" 5831.4287109375;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" 4568.5712890625;
	setAttr ".tgi[0].ni[70].y" 5342.85693359375;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" 3710;
	setAttr ".tgi[0].ni[71].y" 5152.85693359375;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" 3710;
	setAttr ".tgi[0].ni[72].y" 75.714286804199219;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" 3710;
	setAttr ".tgi[0].ni[73].y" 5730;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" 3710;
	setAttr ".tgi[0].ni[74].y" 5628.5712890625;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" 2455.71435546875;
	setAttr ".tgi[0].ni[75].y" 6257.14306640625;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" 2067.142822265625;
	setAttr ".tgi[0].ni[76].y" 8791.4287109375;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" 4568.5712890625;
	setAttr ".tgi[0].ni[77].y" 4797.14306640625;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" -3925.71435546875;
	setAttr ".tgi[0].ni[78].y" 9731.4287109375;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" 3342.857177734375;
	setAttr ".tgi[0].ni[79].y" 2451.428466796875;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" 2455.71435546875;
	setAttr ".tgi[0].ni[80].y" 5984.28564453125;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" 2067.142822265625;
	setAttr ".tgi[0].ni[81].y" 4892.85693359375;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" 4568.5712890625;
	setAttr ".tgi[0].ni[82].y" -9091.4287109375;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" 3710;
	setAttr ".tgi[0].ni[83].y" 6522.85693359375;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" -4612.85693359375;
	setAttr ".tgi[0].ni[84].y" 10825.7138671875;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" 3710;
	setAttr ".tgi[0].ni[85].y" 5311.4287109375;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" 4568.5712890625;
	setAttr ".tgi[0].ni[86].y" 4194.28564453125;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" 3710;
	setAttr ".tgi[0].ni[87].y" 4620;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" 2455.71435546875;
	setAttr ".tgi[0].ni[88].y" 7818.5712890625;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" -4920;
	setAttr ".tgi[0].ni[89].y" 11027.142578125;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" 3710;
	setAttr ".tgi[0].ni[90].y" 4360;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" 2067.142822265625;
	setAttr ".tgi[0].ni[91].y" 7950;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" 4070;
	setAttr ".tgi[0].ni[92].y" -1378.5714111328125;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" 3710;
	setAttr ".tgi[0].ni[93].y" 8020;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" 4070;
	setAttr ".tgi[0].ni[94].y" -4661.4287109375;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" 4568.5712890625;
	setAttr ".tgi[0].ni[95].y" 3534.28564453125;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" 3710;
	setAttr ".tgi[0].ni[96].y" 4201.4287109375;
	setAttr ".tgi[0].ni[96].nvs" 18304;
	setAttr ".tgi[0].ni[97].x" 4070;
	setAttr ".tgi[0].ni[97].y" 4548.5712890625;
	setAttr ".tgi[0].ni[97].nvs" 18304;
	setAttr ".tgi[0].ni[98].x" 2067.142822265625;
	setAttr ".tgi[0].ni[98].y" 6661.4287109375;
	setAttr ".tgi[0].ni[98].nvs" 18304;
	setAttr ".tgi[0].ni[99].x" 3342.857177734375;
	setAttr ".tgi[0].ni[99].y" 2768.571533203125;
	setAttr ".tgi[0].ni[99].nvs" 18304;
	setAttr ".tgi[0].ni[100].x" 3710;
	setAttr ".tgi[0].ni[100].y" 177.14285278320313;
	setAttr ".tgi[0].ni[100].nvs" 18304;
	setAttr ".tgi[0].ni[101].x" 2455.71435546875;
	setAttr ".tgi[0].ni[101].y" 4110;
	setAttr ".tgi[0].ni[101].nvs" 18304;
	setAttr ".tgi[0].ni[102].x" 2844.28564453125;
	setAttr ".tgi[0].ni[102].y" 5625.71435546875;
	setAttr ".tgi[0].ni[102].nvs" 18304;
	setAttr ".tgi[0].ni[103].x" 4568.5712890625;
	setAttr ".tgi[0].ni[103].y" 3032.857177734375;
	setAttr ".tgi[0].ni[103].nvs" 18304;
	setAttr ".tgi[0].ni[104].x" 3710;
	setAttr ".tgi[0].ni[104].y" 3985.71435546875;
	setAttr ".tgi[0].ni[104].nvs" 18304;
	setAttr ".tgi[0].ni[105].x" 3710;
	setAttr ".tgi[0].ni[105].y" 3827.142822265625;
	setAttr ".tgi[0].ni[105].nvs" 18304;
	setAttr ".tgi[0].ni[106].x" 4568.5712890625;
	setAttr ".tgi[0].ni[106].y" 2715.71435546875;
	setAttr ".tgi[0].ni[106].nvs" 18304;
	setAttr ".tgi[0].ni[107].x" 4568.5712890625;
	setAttr ".tgi[0].ni[107].y" -2417.142822265625;
	setAttr ".tgi[0].ni[107].nvs" 18304;
	setAttr ".tgi[0].ni[108].x" 4568.5712890625;
	setAttr ".tgi[0].ni[108].y" -3650;
	setAttr ".tgi[0].ni[108].nvs" 18304;
	setAttr ".tgi[0].ni[109].x" 4568.5712890625;
	setAttr ".tgi[0].ni[109].y" -9801.4287109375;
	setAttr ".tgi[0].ni[109].nvs" 18304;
	setAttr ".tgi[0].ni[110].x" 4568.5712890625;
	setAttr ".tgi[0].ni[110].y" -1567.142822265625;
	setAttr ".tgi[0].ni[110].nvs" 18304;
	setAttr ".tgi[0].ni[111].x" 4568.5712890625;
	setAttr ".tgi[0].ni[111].y" -9902.857421875;
	setAttr ".tgi[0].ni[111].nvs" 18304;
	setAttr ".tgi[0].ni[112].x" 4568.5712890625;
	setAttr ".tgi[0].ni[112].y" -10004.2861328125;
	setAttr ".tgi[0].ni[112].nvs" 18304;
	setAttr ".tgi[0].ni[113].x" 3710;
	setAttr ".tgi[0].ni[113].y" 970;
	setAttr ".tgi[0].ni[113].nvs" 18304;
	setAttr ".tgi[0].ni[114].x" 1655.7142333984375;
	setAttr ".tgi[0].ni[114].y" 3488.571533203125;
	setAttr ".tgi[0].ni[114].nvs" 18304;
	setAttr ".tgi[0].ni[115].x" -5227.14306640625;
	setAttr ".tgi[0].ni[115].y" 11221.4287109375;
	setAttr ".tgi[0].ni[115].nvs" 18304;
	setAttr ".tgi[0].ni[116].x" 925.71429443359375;
	setAttr ".tgi[0].ni[116].y" 5321.4287109375;
	setAttr ".tgi[0].ni[116].nvs" 18304;
	setAttr ".tgi[0].ni[117].x" 2844.28564453125;
	setAttr ".tgi[0].ni[117].y" 5410;
	setAttr ".tgi[0].ni[117].nvs" 18304;
	setAttr ".tgi[0].ni[118].x" 925.71429443359375;
	setAttr ".tgi[0].ni[118].y" 4032.857177734375;
	setAttr ".tgi[0].ni[118].nvs" 18304;
	setAttr ".tgi[0].ni[119].x" 3710;
	setAttr ".tgi[0].ni[119].y" 652.85711669921875;
	setAttr ".tgi[0].ni[119].nvs" 18304;
	setAttr ".tgi[0].ni[120].x" 3710;
	setAttr ".tgi[0].ni[120].y" 2925.71435546875;
	setAttr ".tgi[0].ni[120].nvs" 18304;
	setAttr ".tgi[0].ni[121].x" 4070;
	setAttr ".tgi[0].ni[121].y" -2740;
	setAttr ".tgi[0].ni[121].nvs" 18304;
	setAttr ".tgi[0].ni[122].x" 3710;
	setAttr ".tgi[0].ni[122].y" 3611.428466796875;
	setAttr ".tgi[0].ni[122].nvs" 18304;
	setAttr ".tgi[0].ni[123].x" 2844.28564453125;
	setAttr ".tgi[0].ni[123].y" 6930;
	setAttr ".tgi[0].ni[123].nvs" 18304;
	setAttr ".tgi[0].ni[124].x" 4070;
	setAttr ".tgi[0].ni[124].y" -4502.85693359375;
	setAttr ".tgi[0].ni[124].nvs" 18304;
	setAttr ".tgi[0].ni[125].x" -1542.857177734375;
	setAttr ".tgi[0].ni[125].y" 9208.5712890625;
	setAttr ".tgi[0].ni[125].nvs" 18304;
	setAttr ".tgi[0].ni[126].x" 3710;
	setAttr ".tgi[0].ni[126].y" 4721.4287109375;
	setAttr ".tgi[0].ni[126].nvs" 18304;
	setAttr ".tgi[0].ni[127].x" -2934.28564453125;
	setAttr ".tgi[0].ni[127].y" 10387.142578125;
	setAttr ".tgi[0].ni[127].nvs" 18304;
	setAttr ".tgi[0].ni[128].x" 3342.857177734375;
	setAttr ".tgi[0].ni[128].y" 6064.28564453125;
	setAttr ".tgi[0].ni[128].nvs" 18304;
	setAttr ".tgi[0].ni[129].x" 4070;
	setAttr ".tgi[0].ni[129].y" -3868.571533203125;
	setAttr ".tgi[0].ni[129].nvs" 18304;
	setAttr ".tgi[0].ni[130].x" 4070;
	setAttr ".tgi[0].ni[130].y" -4185.71435546875;
	setAttr ".tgi[0].ni[130].nvs" 18304;
	setAttr ".tgi[0].ni[131].x" 4070;
	setAttr ".tgi[0].ni[131].y" -1984.2857666015625;
	setAttr ".tgi[0].ni[131].nvs" 18304;
	setAttr ".tgi[0].ni[132].x" 3710;
	setAttr ".tgi[0].ni[132].y" 2518.571533203125;
	setAttr ".tgi[0].ni[132].nvs" 18304;
	setAttr ".tgi[0].ni[133].x" 4070;
	setAttr ".tgi[0].ni[133].y" 3790;
	setAttr ".tgi[0].ni[133].nvs" 18304;
	setAttr ".tgi[0].ni[134].x" 3710;
	setAttr ".tgi[0].ni[134].y" -1617.142822265625;
	setAttr ".tgi[0].ni[134].nvs" 18304;
	setAttr ".tgi[0].ni[135].x" 3710;
	setAttr ".tgi[0].ni[135].y" 1490;
	setAttr ".tgi[0].ni[135].nvs" 18304;
	setAttr ".tgi[0].ni[136].x" 3710;
	setAttr ".tgi[0].ni[136].y" 1388.5714111328125;
	setAttr ".tgi[0].ni[136].nvs" 18304;
	setAttr ".tgi[0].ni[137].x" 3710;
	setAttr ".tgi[0].ni[137].y" 1287.142822265625;
	setAttr ".tgi[0].ni[137].nvs" 18304;
	setAttr ".tgi[0].ni[138].x" -484.28570556640625;
	setAttr ".tgi[0].ni[138].y" 8861.4287109375;
	setAttr ".tgi[0].ni[138].nvs" 18304;
	setAttr ".tgi[0].ni[139].x" 4568.5712890625;
	setAttr ".tgi[0].ni[139].y" 925.71429443359375;
	setAttr ".tgi[0].ni[139].nvs" 18304;
	setAttr ".tgi[0].ni[140].x" 3710;
	setAttr ".tgi[0].ni[140].y" 1185.7142333984375;
	setAttr ".tgi[0].ni[140].nvs" 18304;
	setAttr ".tgi[0].ni[141].x" 2844.28564453125;
	setAttr ".tgi[0].ni[141].y" 2175.71435546875;
	setAttr ".tgi[0].ni[141].nvs" 18304;
	setAttr ".tgi[0].ni[142].x" 3710;
	setAttr ".tgi[0].ni[142].y" 2824.28564453125;
	setAttr ".tgi[0].ni[142].nvs" 18304;
	setAttr ".tgi[0].ni[143].x" 4070;
	setAttr ".tgi[0].ni[143].y" -6081.4287109375;
	setAttr ".tgi[0].ni[143].nvs" 18304;
	setAttr ".tgi[0].ni[144].x" 3710;
	setAttr ".tgi[0].ni[144].y" 868.5714111328125;
	setAttr ".tgi[0].ni[144].nvs" 18304;
	setAttr ".tgi[0].ni[145].x" 925.71429443359375;
	setAttr ".tgi[0].ni[145].y" 7901.4287109375;
	setAttr ".tgi[0].ni[145].nvs" 18304;
	setAttr ".tgi[0].ni[146].x" -2614.28564453125;
	setAttr ".tgi[0].ni[146].y" 7875.71435546875;
	setAttr ".tgi[0].ni[146].nvs" 18304;
	setAttr ".tgi[0].ni[147].x" 1655.7142333984375;
	setAttr ".tgi[0].ni[147].y" 4890;
	setAttr ".tgi[0].ni[147].nvs" 18304;
	setAttr ".tgi[0].ni[148].x" 1245.7142333984375;
	setAttr ".tgi[0].ni[148].y" 5708.5712890625;
	setAttr ".tgi[0].ni[148].nvs" 18304;
	setAttr ".tgi[0].ni[149].x" 4070;
	setAttr ".tgi[0].ni[149].y" -2638.571533203125;
	setAttr ".tgi[0].ni[149].nvs" 18304;
	setAttr ".tgi[0].ni[150].x" 4568.5712890625;
	setAttr ".tgi[0].ni[150].y" -405.71429443359375;
	setAttr ".tgi[0].ni[150].nvs" 18304;
	setAttr ".tgi[0].ni[151].x" 3710;
	setAttr ".tgi[0].ni[151].y" 6782.85693359375;
	setAttr ".tgi[0].ni[151].nvs" 18304;
	setAttr ".tgi[0].ni[152].x" -5227.14306640625;
	setAttr ".tgi[0].ni[152].y" 11055.7138671875;
	setAttr ".tgi[0].ni[152].nvs" 18304;
	setAttr ".tgi[0].ni[153].x" 2844.28564453125;
	setAttr ".tgi[0].ni[153].y" 3311.428466796875;
	setAttr ".tgi[0].ni[153].nvs" 18304;
	setAttr ".tgi[0].ni[154].x" 4568.5712890625;
	setAttr ".tgi[0].ni[154].y" -1122.857177734375;
	setAttr ".tgi[0].ni[154].nvs" 18304;
	setAttr ".tgi[0].ni[155].x" 1655.7142333984375;
	setAttr ".tgi[0].ni[155].y" 7412.85693359375;
	setAttr ".tgi[0].ni[155].nvs" 18304;
	setAttr ".tgi[0].ni[156].x" 3710;
	setAttr ".tgi[0].ni[156].y" -82.857139587402344;
	setAttr ".tgi[0].ni[156].nvs" 18304;
	setAttr ".tgi[0].ni[157].x" -2237.142822265625;
	setAttr ".tgi[0].ni[157].y" 8405.7138671875;
	setAttr ".tgi[0].ni[157].nvs" 18304;
	setAttr ".tgi[0].ni[158].x" 4070;
	setAttr ".tgi[0].ni[158].y" -2480;
	setAttr ".tgi[0].ni[158].nvs" 18304;
	setAttr ".tgi[0].ni[159].x" 3710;
	setAttr ".tgi[0].ni[159].y" -298.57144165039063;
	setAttr ".tgi[0].ni[159].nvs" 18304;
	setAttr ".tgi[0].ni[160].x" 1655.7142333984375;
	setAttr ".tgi[0].ni[160].y" 5832.85693359375;
	setAttr ".tgi[0].ni[160].nvs" 18304;
	setAttr ".tgi[0].ni[161].x" 4568.5712890625;
	setAttr ".tgi[0].ni[161].y" -1668.5714111328125;
	setAttr ".tgi[0].ni[161].nvs" 18304;
	setAttr ".tgi[0].ni[162].x" 2067.142822265625;
	setAttr ".tgi[0].ni[162].y" 6820;
	setAttr ".tgi[0].ni[162].nvs" 18304;
	setAttr ".tgi[0].ni[163].x" 4568.5712890625;
	setAttr ".tgi[0].ni[163].y" -1827.142822265625;
	setAttr ".tgi[0].ni[163].nvs" 18304;
	setAttr ".tgi[0].ni[164].x" 4568.5712890625;
	setAttr ".tgi[0].ni[164].y" -1928.5714111328125;
	setAttr ".tgi[0].ni[164].nvs" 18304;
	setAttr ".tgi[0].ni[165].x" -3925.71435546875;
	setAttr ".tgi[0].ni[165].y" 9458.5712890625;
	setAttr ".tgi[0].ni[165].nvs" 18304;
	setAttr ".tgi[0].ni[166].x" 2455.71435546875;
	setAttr ".tgi[0].ni[166].y" 7660;
	setAttr ".tgi[0].ni[166].nvs" 18304;
	setAttr ".tgi[0].ni[167].x" 4568.5712890625;
	setAttr ".tgi[0].ni[167].y" -2144.28564453125;
	setAttr ".tgi[0].ni[167].nvs" 18304;
	setAttr ".tgi[0].ni[168].x" 4070;
	setAttr ".tgi[0].ni[168].y" -6182.85693359375;
	setAttr ".tgi[0].ni[168].nvs" 18304;
	setAttr ".tgi[0].ni[169].x" 3710;
	setAttr ".tgi[0].ni[169].y" -1832.857177734375;
	setAttr ".tgi[0].ni[169].nvs" 18304;
	setAttr ".tgi[0].ni[170].x" 3710;
	setAttr ".tgi[0].ni[170].y" 4461.4287109375;
	setAttr ".tgi[0].ni[170].nvs" 18304;
	setAttr ".tgi[0].ni[171].x" -1850;
	setAttr ".tgi[0].ni[171].y" 5961.4287109375;
	setAttr ".tgi[0].ni[171].nvs" 18304;
	setAttr ".tgi[0].ni[172].x" 1245.7142333984375;
	setAttr ".tgi[0].ni[172].y" 3990;
	setAttr ".tgi[0].ni[172].nvs" 18304;
	setAttr ".tgi[0].ni[173].x" 4568.5712890625;
	setAttr ".tgi[0].ni[173].y" -2632.857177734375;
	setAttr ".tgi[0].ni[173].nvs" 18304;
	setAttr ".tgi[0].ni[174].x" 3710;
	setAttr ".tgi[0].ni[174].y" -2664.28564453125;
	setAttr ".tgi[0].ni[174].nvs" 18304;
	setAttr ".tgi[0].ni[175].x" 3710;
	setAttr ".tgi[0].ni[175].y" -4872.85693359375;
	setAttr ".tgi[0].ni[175].nvs" 18304;
	setAttr ".tgi[0].ni[176].x" 3710;
	setAttr ".tgi[0].ni[176].y" -2277.142822265625;
	setAttr ".tgi[0].ni[176].nvs" 18304;
	setAttr ".tgi[0].ni[177].x" -5227.14306640625;
	setAttr ".tgi[0].ni[177].y" 10808.5712890625;
	setAttr ".tgi[0].ni[177].nvs" 18304;
	setAttr ".tgi[0].ni[178].x" 3710;
	setAttr ".tgi[0].ni[178].y" -3927.142822265625;
	setAttr ".tgi[0].ni[178].nvs" 18304;
	setAttr ".tgi[0].ni[179].x" 4070;
	setAttr ".tgi[0].ni[179].y" 667.14288330078125;
	setAttr ".tgi[0].ni[179].nvs" 18304;
	setAttr ".tgi[0].ni[180].x" 4568.5712890625;
	setAttr ".tgi[0].ni[180].y" -3077.142822265625;
	setAttr ".tgi[0].ni[180].nvs" 18304;
	setAttr ".tgi[0].ni[181].x" 4568.5712890625;
	setAttr ".tgi[0].ni[181].y" -3751.428466796875;
	setAttr ".tgi[0].ni[181].nvs" 18304;
	setAttr ".tgi[0].ni[182].x" -3618.571533203125;
	setAttr ".tgi[0].ni[182].y" 9350;
	setAttr ".tgi[0].ni[182].nvs" 18304;
	setAttr ".tgi[0].ni[183].x" 2844.28564453125;
	setAttr ".tgi[0].ni[183].y" 41.428569793701172;
	setAttr ".tgi[0].ni[183].nvs" 18304;
	setAttr ".tgi[0].ni[184].x" 4568.5712890625;
	setAttr ".tgi[0].ni[184].y" -3967.142822265625;
	setAttr ".tgi[0].ni[184].nvs" 18304;
	setAttr ".tgi[0].ni[185].x" -1177.142822265625;
	setAttr ".tgi[0].ni[185].y" 7355.71435546875;
	setAttr ".tgi[0].ni[185].nvs" 18304;
	setAttr ".tgi[0].ni[186].x" 2455.71435546875;
	setAttr ".tgi[0].ni[186].y" 6758.5712890625;
	setAttr ".tgi[0].ni[186].nvs" 18304;
	setAttr ".tgi[0].ni[187].x" 4568.5712890625;
	setAttr ".tgi[0].ni[187].y" -4182.85693359375;
	setAttr ".tgi[0].ni[187].nvs" 18304;
	setAttr ".tgi[0].ni[188].x" 925.71429443359375;
	setAttr ".tgi[0].ni[188].y" 2592.857177734375;
	setAttr ".tgi[0].ni[188].nvs" 18304;
	setAttr ".tgi[0].ni[189].x" 3710;
	setAttr ".tgi[0].ni[189].y" -3394.28564453125;
	setAttr ".tgi[0].ni[189].nvs" 18304;
	setAttr ".tgi[0].ni[190].x" 3710;
	setAttr ".tgi[0].ni[190].y" -3495.71435546875;
	setAttr ".tgi[0].ni[190].nvs" 18304;
	setAttr ".tgi[0].ni[191].x" 1655.7142333984375;
	setAttr ".tgi[0].ni[191].y" 3268.571533203125;
	setAttr ".tgi[0].ni[191].nvs" 18304;
	setAttr ".tgi[0].ni[192].x" 4568.5712890625;
	setAttr ".tgi[0].ni[192].y" -4614.28564453125;
	setAttr ".tgi[0].ni[192].nvs" 18304;
	setAttr ".tgi[0].ni[193].x" 925.71429443359375;
	setAttr ".tgi[0].ni[193].y" 5162.85693359375;
	setAttr ".tgi[0].ni[193].nvs" 18304;
	setAttr ".tgi[0].ni[194].x" 3710;
	setAttr ".tgi[0].ni[194].y" -5031.4287109375;
	setAttr ".tgi[0].ni[194].nvs" 18304;
	setAttr ".tgi[0].ni[195].x" -5227.14306640625;
	setAttr ".tgi[0].ni[195].y" 10634.2861328125;
	setAttr ".tgi[0].ni[195].nvs" 18304;
	setAttr ".tgi[0].ni[196].x" -4232.85693359375;
	setAttr ".tgi[0].ni[196].y" 10640;
	setAttr ".tgi[0].ni[196].nvs" 18304;
	setAttr ".tgi[0].ni[197].x" 4070;
	setAttr ".tgi[0].ni[197].y" -2841.428466796875;
	setAttr ".tgi[0].ni[197].nvs" 18304;
	setAttr ".tgi[0].ni[198].x" 2844.28564453125;
	setAttr ".tgi[0].ni[198].y" -1261.4285888671875;
	setAttr ".tgi[0].ni[198].nvs" 18304;
	setAttr ".tgi[0].ni[199].x" 2067.142822265625;
	setAttr ".tgi[0].ni[199].y" 1895.7142333984375;
	setAttr ".tgi[0].ni[199].nvs" 18304;
	setAttr ".tgi[0].ni[200].x" 2067.142822265625;
	setAttr ".tgi[0].ni[200].y" 505.71429443359375;
	setAttr ".tgi[0].ni[200].nvs" 18304;
	setAttr ".tgi[0].ni[201].x" 3710;
	setAttr ".tgi[0].ni[201].y" -3825.71435546875;
	setAttr ".tgi[0].ni[201].nvs" 18304;
	setAttr ".tgi[0].ni[202].x" 130;
	setAttr ".tgi[0].ni[202].y" 5785.71435546875;
	setAttr ".tgi[0].ni[202].nvs" 18304;
	setAttr ".tgi[0].ni[203].x" 4568.5712890625;
	setAttr ".tgi[0].ni[203].y" -5388.5712890625;
	setAttr ".tgi[0].ni[203].nvs" 18304;
	setAttr ".tgi[0].ni[204].x" 4070;
	setAttr ".tgi[0].ni[204].y" 565.71429443359375;
	setAttr ".tgi[0].ni[204].nvs" 18304;
	setAttr ".tgi[0].ni[205].x" 3710;
	setAttr ".tgi[0].ni[205].y" -5818.5712890625;
	setAttr ".tgi[0].ni[205].nvs" 18304;
	setAttr ".tgi[0].ni[206].x" 3710;
	setAttr ".tgi[0].ni[206].y" 335.71429443359375;
	setAttr ".tgi[0].ni[206].nvs" 18304;
	setAttr ".tgi[0].ni[207].x" 4568.5712890625;
	setAttr ".tgi[0].ni[207].y" -9598.5712890625;
	setAttr ".tgi[0].ni[207].nvs" 18304;
	setAttr ".tgi[0].ni[208].x" 4070;
	setAttr ".tgi[0].ni[208].y" -6855.71435546875;
	setAttr ".tgi[0].ni[208].nvs" 18304;
	setAttr ".tgi[0].ni[209].x" 4568.5712890625;
	setAttr ".tgi[0].ni[209].y" -8888.5712890625;
	setAttr ".tgi[0].ni[209].nvs" 18304;
	setAttr ".tgi[0].ni[210].x" 3342.857177734375;
	setAttr ".tgi[0].ni[210].y" 5330;
	setAttr ".tgi[0].ni[210].nvs" 18304;
	setAttr ".tgi[0].ni[211].x" 3710;
	setAttr ".tgi[0].ni[211].y" -4142.85693359375;
	setAttr ".tgi[0].ni[211].nvs" 18304;
	setAttr ".tgi[0].ni[212].x" 4070;
	setAttr ".tgi[0].ni[212].y" -875.71429443359375;
	setAttr ".tgi[0].ni[212].nvs" 18304;
	setAttr ".tgi[0].ni[213].x" 4568.5712890625;
	setAttr ".tgi[0].ni[213].y" -5991.4287109375;
	setAttr ".tgi[0].ni[213].nvs" 18304;
	setAttr ".tgi[0].ni[214].x" 2455.71435546875;
	setAttr ".tgi[0].ni[214].y" 1792.857177734375;
	setAttr ".tgi[0].ni[214].nvs" 18304;
	setAttr ".tgi[0].ni[215].x" 1245.7142333984375;
	setAttr ".tgi[0].ni[215].y" 2450;
	setAttr ".tgi[0].ni[215].nvs" 18304;
	setAttr ".tgi[0].ni[216].x" 4568.5712890625;
	setAttr ".tgi[0].ni[216].y" -8990;
	setAttr ".tgi[0].ni[216].nvs" 18304;
	setAttr ".tgi[0].ni[217].x" 4568.5712890625;
	setAttr ".tgi[0].ni[217].y" 2157.142822265625;
	setAttr ".tgi[0].ni[217].nvs" 18304;
	setAttr ".tgi[0].ni[218].x" 4568.5712890625;
	setAttr ".tgi[0].ni[218].y" -10207.142578125;
	setAttr ".tgi[0].ni[218].nvs" 18304;
	setAttr ".tgi[0].ni[219].x" 4568.5712890625;
	setAttr ".tgi[0].ni[219].y" 2874.28564453125;
	setAttr ".tgi[0].ni[219].nvs" 18304;
	setAttr ".tgi[0].ni[220].x" 4568.5712890625;
	setAttr ".tgi[0].ni[220].y" -10308.5712890625;
	setAttr ".tgi[0].ni[220].nvs" 18304;
	setAttr ".tgi[0].ni[221].x" 4568.5712890625;
	setAttr ".tgi[0].ni[221].y" -10410;
	setAttr ".tgi[0].ni[221].nvs" 18304;
	setAttr ".tgi[0].ni[222].x" 4568.5712890625;
	setAttr ".tgi[0].ni[222].y" 1484.2857666015625;
	setAttr ".tgi[0].ni[222].nvs" 18304;
	setAttr ".tgi[0].ni[223].x" 4568.5712890625;
	setAttr ".tgi[0].ni[223].y" -8787.142578125;
	setAttr ".tgi[0].ni[223].nvs" 18304;
	setAttr ".tgi[0].ni[224].x" -2934.28564453125;
	setAttr ".tgi[0].ni[224].y" 7814.28564453125;
	setAttr ".tgi[0].ni[224].nvs" 18304;
	setAttr ".tgi[0].ni[225].x" 925.71429443359375;
	setAttr ".tgi[0].ni[225].y" 6304.28564453125;
	setAttr ".tgi[0].ni[225].nvs" 18304;
	setAttr ".tgi[0].ni[226].x" -2934.28564453125;
	setAttr ".tgi[0].ni[226].y" 8220;
	setAttr ".tgi[0].ni[226].nvs" 18304;
	setAttr ".tgi[0].ni[227].x" -2934.28564453125;
	setAttr ".tgi[0].ni[227].y" 8017.14306640625;
	setAttr ".tgi[0].ni[227].nvs" 18304;
	setAttr ".tgi[0].ni[228].x" -2934.28564453125;
	setAttr ".tgi[0].ni[228].y" 7712.85693359375;
	setAttr ".tgi[0].ni[228].nvs" 18304;
	setAttr ".tgi[0].ni[229].x" -2934.28564453125;
	setAttr ".tgi[0].ni[229].y" 7611.4287109375;
	setAttr ".tgi[0].ni[229].nvs" 18304;
	setAttr ".tgi[0].ni[230].x" -2934.28564453125;
	setAttr ".tgi[0].ni[230].y" 7510;
	setAttr ".tgi[0].ni[230].nvs" 18304;
	setAttr ".tgi[0].ni[231].x" -2934.28564453125;
	setAttr ".tgi[0].ni[231].y" 7408.5712890625;
	setAttr ".tgi[0].ni[231].nvs" 18304;
	setAttr ".tgi[0].ni[232].x" 925.71429443359375;
	setAttr ".tgi[0].ni[232].y" 6405.71435546875;
	setAttr ".tgi[0].ni[232].nvs" 18304;
	setAttr ".tgi[0].ni[233].x" -2934.28564453125;
	setAttr ".tgi[0].ni[233].y" 8118.5712890625;
	setAttr ".tgi[0].ni[233].nvs" 18304;
	setAttr ".tgi[0].ni[234].x" -2934.28564453125;
	setAttr ".tgi[0].ni[234].y" 7915.71435546875;
	setAttr ".tgi[0].ni[234].nvs" 18304;
	setAttr ".tgi[0].ni[235].x" 4568.5712890625;
	setAttr ".tgi[0].ni[235].y" -10511.4287109375;
	setAttr ".tgi[0].ni[235].nvs" 18304;
	setAttr ".tgi[0].ni[236].x" 4568.5712890625;
	setAttr ".tgi[0].ni[236].y" -850;
	setAttr ".tgi[0].ni[236].nvs" 18304;
	setAttr ".tgi[0].ni[237].x" 4568.5712890625;
	setAttr ".tgi[0].ni[237].y" -10612.857421875;
	setAttr ".tgi[0].ni[237].nvs" 18304;
	setAttr ".tgi[0].ni[238].x" 4568.5712890625;
	setAttr ".tgi[0].ni[238].y" 210;
	setAttr ".tgi[0].ni[238].nvs" 18304;
	setAttr ".tgi[0].ni[239].x" 4568.5712890625;
	setAttr ".tgi[0].ni[239].y" -10714.2861328125;
	setAttr ".tgi[0].ni[239].nvs" 18304;
	setAttr ".tgi[0].ni[240].x" 4568.5712890625;
	setAttr ".tgi[0].ni[240].y" -10815.7138671875;
	setAttr ".tgi[0].ni[240].nvs" 18304;
	setAttr ".tgi[0].ni[241].x" 4568.5712890625;
	setAttr ".tgi[0].ni[241].y" 4352.85693359375;
	setAttr ".tgi[0].ni[241].nvs" 18304;
	setAttr ".tgi[0].ni[242].x" 4568.5712890625;
	setAttr ".tgi[0].ni[242].y" 3635.71435546875;
	setAttr ".tgi[0].ni[242].nvs" 18304;
	setAttr ".tgi[0].ni[243].x" 4568.5712890625;
	setAttr ".tgi[0].ni[243].y" 5730;
	setAttr ".tgi[0].ni[243].nvs" 18304;
	setAttr ".tgi[0].ni[244].x" 4568.5712890625;
	setAttr ".tgi[0].ni[244].y" -10917.142578125;
	setAttr ".tgi[0].ni[244].nvs" 18304;
	setAttr ".tgi[0].ni[245].x" 4568.5712890625;
	setAttr ".tgi[0].ni[245].y" 5012.85693359375;
	setAttr ".tgi[0].ni[245].nvs" 18304;
	setAttr ".tgi[0].ni[246].x" 4568.5712890625;
	setAttr ".tgi[0].ni[246].y" -11018.5712890625;
	setAttr ".tgi[0].ni[246].nvs" 18304;
	setAttr ".tgi[0].ni[247].x" 4568.5712890625;
	setAttr ".tgi[0].ni[247].y" -5172.85693359375;
	setAttr ".tgi[0].ni[247].nvs" 18304;
	setAttr ".tgi[0].ni[248].x" 4568.5712890625;
	setAttr ".tgi[0].ni[248].y" -5775.71435546875;
	setAttr ".tgi[0].ni[248].nvs" 18304;
	setAttr ".tgi[0].ni[249].x" 3342.857177734375;
	setAttr ".tgi[0].ni[249].y" 2552.857177734375;
	setAttr ".tgi[0].ni[249].nvs" 18304;
	setAttr ".tgi[0].ni[250].x" 4568.5712890625;
	setAttr ".tgi[0].ni[250].y" -11120;
	setAttr ".tgi[0].ni[250].nvs" 18304;
	setAttr ".tgi[0].ni[251].x" 4568.5712890625;
	setAttr ".tgi[0].ni[251].y" -11221.4287109375;
	setAttr ".tgi[0].ni[251].nvs" 18304;
	setAttr ".tgi[0].ni[252].x" 1655.7142333984375;
	setAttr ".tgi[0].ni[252].y" 8004.28564453125;
	setAttr ".tgi[0].ni[252].nvs" 18304;
	setAttr ".tgi[0].ni[253].x" 1245.7142333984375;
	setAttr ".tgi[0].ni[253].y" 6701.4287109375;
	setAttr ".tgi[0].ni[253].nvs" 18304;
	setAttr ".tgi[0].ni[254].x" 4568.5712890625;
	setAttr ".tgi[0].ni[254].y" -8381.4287109375;
	setAttr ".tgi[0].ni[254].nvs" 18304;
	setAttr ".tgi[0].ni[255].x" 4568.5712890625;
	setAttr ".tgi[0].ni[255].y" -8178.5712890625;
	setAttr ".tgi[0].ni[255].nvs" 18304;
	setAttr ".tgi[0].ni[256].x" 4568.5712890625;
	setAttr ".tgi[0].ni[256].y" -8280;
	setAttr ".tgi[0].ni[256].nvs" 18304;
	setAttr ".tgi[0].ni[257].x" 4568.5712890625;
	setAttr ".tgi[0].ni[257].y" -11322.857421875;
	setAttr ".tgi[0].ni[257].nvs" 18304;
	setAttr ".tgi[0].ni[258].x" 4568.5712890625;
	setAttr ".tgi[0].ni[258].y" -4455.71435546875;
	setAttr ".tgi[0].ni[258].nvs" 18304;
	setAttr ".tgi[0].ni[259].x" 4568.5712890625;
	setAttr ".tgi[0].ni[259].y" -8482.857421875;
	setAttr ".tgi[0].ni[259].nvs" 18304;
	setAttr ".tgi[0].ni[260].x" -1542.857177734375;
	setAttr ".tgi[0].ni[260].y" 8764.2861328125;
	setAttr ".tgi[0].ni[260].nvs" 18304;
	setAttr ".tgi[0].ni[261].x" 4070;
	setAttr ".tgi[0].ni[261].y" -10030;
	setAttr ".tgi[0].ni[261].nvs" 18304;
	setAttr ".tgi[0].ni[262].x" 1655.7142333984375;
	setAttr ".tgi[0].ni[262].y" 8334.2861328125;
	setAttr ".tgi[0].ni[262].nvs" 18304;
	setAttr ".tgi[0].ni[263].x" -2237.142822265625;
	setAttr ".tgi[0].ni[263].y" 9135.7138671875;
	setAttr ".tgi[0].ni[263].nvs" 18304;
	setAttr ".tgi[0].ni[264].x" 1655.7142333984375;
	setAttr ".tgi[0].ni[264].y" 9472.857421875;
	setAttr ".tgi[0].ni[264].nvs" 18304;
	setAttr ".tgi[0].ni[265].x" -870;
	setAttr ".tgi[0].ni[265].y" 9751.4287109375;
	setAttr ".tgi[0].ni[265].nvs" 18304;
	setAttr ".tgi[0].ni[266].x" 4568.5712890625;
	setAttr ".tgi[0].ni[266].y" -8685.7138671875;
	setAttr ".tgi[0].ni[266].nvs" 18304;
	setAttr ".tgi[0].ni[267].x" 3710;
	setAttr ".tgi[0].ni[267].y" -7911.4287109375;
	setAttr ".tgi[0].ni[267].nvs" 18304;
	setAttr ".tgi[0].ni[268].x" 4568.5712890625;
	setAttr ".tgi[0].ni[268].y" -10105.7138671875;
	setAttr ".tgi[0].ni[268].nvs" 18304;
	setAttr ".tgi[0].ni[269].x" -2237.142822265625;
	setAttr ".tgi[0].ni[269].y" 5935.71435546875;
	setAttr ".tgi[0].ni[269].nvs" 18304;
	setAttr ".tgi[0].ni[270].x" -2237.142822265625;
	setAttr ".tgi[0].ni[270].y" 5834.28564453125;
	setAttr ".tgi[0].ni[270].nvs" 18304;
	setAttr ".tgi[0].ni[271].x" 925.71429443359375;
	setAttr ".tgi[0].ni[271].y" 6202.85693359375;
	setAttr ".tgi[0].ni[271].nvs" 18304;
	setAttr ".tgi[0].ni[272].x" 925.71429443359375;
	setAttr ".tgi[0].ni[272].y" 6101.4287109375;
	setAttr ".tgi[0].ni[272].nvs" 18304;
	setAttr ".tgi[0].ni[273].x" 925.71429443359375;
	setAttr ".tgi[0].ni[273].y" 5594.28564453125;
	setAttr ".tgi[0].ni[273].nvs" 18304;
	setAttr ".tgi[0].ni[274].x" -2237.142822265625;
	setAttr ".tgi[0].ni[274].y" 6037.14306640625;
	setAttr ".tgi[0].ni[274].nvs" 18304;
	setAttr ".tgi[0].ni[275].x" 925.71429443359375;
	setAttr ".tgi[0].ni[275].y" 6000;
	setAttr ".tgi[0].ni[275].nvs" 18304;
	setAttr ".tgi[0].ni[276].x" 925.71429443359375;
	setAttr ".tgi[0].ni[276].y" 5898.5712890625;
	setAttr ".tgi[0].ni[276].nvs" 18304;
	setAttr ".tgi[0].ni[277].x" 925.71429443359375;
	setAttr ".tgi[0].ni[277].y" 5695.71435546875;
	setAttr ".tgi[0].ni[277].nvs" 18304;
	setAttr ".tgi[0].ni[278].x" -2237.142822265625;
	setAttr ".tgi[0].ni[278].y" 6138.5712890625;
	setAttr ".tgi[0].ni[278].nvs" 18304;
	setAttr ".tgi[0].ni[279].x" -2237.142822265625;
	setAttr ".tgi[0].ni[279].y" 6240;
	setAttr ".tgi[0].ni[279].nvs" 18304;
	setAttr ".tgi[0].ni[280].x" 925.71429443359375;
	setAttr ".tgi[0].ni[280].y" 5797.14306640625;
	setAttr ".tgi[0].ni[280].nvs" 18304;
	setAttr ".tgi[0].ni[281].x" -2237.142822265625;
	setAttr ".tgi[0].ni[281].y" 5530;
	setAttr ".tgi[0].ni[281].nvs" 18304;
	setAttr ".tgi[0].ni[282].x" -2237.142822265625;
	setAttr ".tgi[0].ni[282].y" 5428.5712890625;
	setAttr ".tgi[0].ni[282].nvs" 18304;
	setAttr ".tgi[0].ni[283].x" -2237.142822265625;
	setAttr ".tgi[0].ni[283].y" 5732.85693359375;
	setAttr ".tgi[0].ni[283].nvs" 18304;
	setAttr ".tgi[0].ni[284].x" -2237.142822265625;
	setAttr ".tgi[0].ni[284].y" 5631.4287109375;
	setAttr ".tgi[0].ni[284].nvs" 18304;
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
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
connectAttr "Arm_Shoulder_M_JNT_pointConstraint1.ctx" "Arm_Shoulder_M_JNT.tx";
connectAttr "Arm_Shoulder_M_JNT_pointConstraint1.cty" "Arm_Shoulder_M_JNT.ty";
connectAttr "Arm_Shoulder_M_JNT_pointConstraint1.ctz" "Arm_Shoulder_M_JNT.tz";
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
connectAttr "Arm_Wrist_M_JNT_orientConstraint1.crx" "Arm_Wrist_M_JNT.rx";
connectAttr "Arm_Wrist_M_JNT_orientConstraint1.cry" "Arm_Wrist_M_JNT.ry";
connectAttr "Arm_Wrist_M_JNT_orientConstraint1.crz" "Arm_Wrist_M_JNT.rz";
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
connectAttr "Arm_Wrist_M_JNT.ro" "Arm_Wrist_M_JNT_orientConstraint1.cro";
connectAttr "Arm_Wrist_M_JNT.pim" "Arm_Wrist_M_JNT_orientConstraint1.cpim";
connectAttr "Arm_Wrist_M_JNT.jo" "Arm_Wrist_M_JNT_orientConstraint1.cjo";
connectAttr "Arm_Wrist_M_JNT.is" "Arm_Wrist_M_JNT_orientConstraint1.is";
connectAttr "Arm_IKPV_M_CTR2.r" "Arm_Wrist_M_JNT_orientConstraint1.tg[0].tr";
connectAttr "Arm_IKPV_M_CTR2.ro" "Arm_Wrist_M_JNT_orientConstraint1.tg[0].tro";
connectAttr "Arm_IKPV_M_CTR2.pm" "Arm_Wrist_M_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Arm_Wrist_M_JNT_orientConstraint1.w0" "Arm_Wrist_M_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Arm_Wrist_M_JNT.tx" "effector1.tx";
connectAttr "Arm_Wrist_M_JNT.ty" "effector1.ty";
connectAttr "Arm_Wrist_M_JNT.tz" "effector1.tz";
connectAttr "Arm_Shoulder_M_JNT.pim" "Arm_Shoulder_M_JNT_pointConstraint1.cpim";
connectAttr "Arm_Shoulder_M_JNT.rp" "Arm_Shoulder_M_JNT_pointConstraint1.crp";
connectAttr "Arm_Shoulder_M_JNT.rpt" "Arm_Shoulder_M_JNT_pointConstraint1.crt";
connectAttr "Arm_IKPV_M_CTR0.t" "Arm_Shoulder_M_JNT_pointConstraint1.tg[0].tt";
connectAttr "Arm_IKPV_M_CTR0.rp" "Arm_Shoulder_M_JNT_pointConstraint1.tg[0].trp"
		;
connectAttr "Arm_IKPV_M_CTR0.rpt" "Arm_Shoulder_M_JNT_pointConstraint1.tg[0].trt"
		;
connectAttr "Arm_IKPV_M_CTR0.pm" "Arm_Shoulder_M_JNT_pointConstraint1.tg[0].tpm"
		;
connectAttr "Arm_Shoulder_M_JNT_pointConstraint1.w0" "Arm_Shoulder_M_JNT_pointConstraint1.tg[0].tw"
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
connectAttr "Ring_Limb_M_NODE.usedGroups" "Ring4_Joint_M_GRP3.used";
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
connectAttr "Pinkie_Limb_M_NODE.usedGroups" "Pinkey4_Joint_M_GRP3.used";
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
connectAttr "Arm_Limb_M_NODE.limbGroups" "Arm_IKPV_M_GRP1.limb";
connectAttr "Arm_IKPV_M_GRP1_parentConstraint1.ctx" "Arm_IKPV_M_GRP1.tx";
connectAttr "Arm_IKPV_M_GRP1_parentConstraint1.cty" "Arm_IKPV_M_GRP1.ty";
connectAttr "Arm_IKPV_M_GRP1_parentConstraint1.ctz" "Arm_IKPV_M_GRP1.tz";
connectAttr "Arm_IKPV_M_GRP1_parentConstraint1.crx" "Arm_IKPV_M_GRP1.rx";
connectAttr "Arm_IKPV_M_GRP1_parentConstraint1.cry" "Arm_IKPV_M_GRP1.ry";
connectAttr "Arm_IKPV_M_GRP1_parentConstraint1.crz" "Arm_IKPV_M_GRP1.rz";
connectAttr "Arm_Limb_M_NODE.usedGroups" "Arm_IKPV_M_GRP1.used";
connectAttr "Control_Disp.di" "Arm_IKPV_M_CTR1.do";
connectAttr "Arm_IKPV_M_GRP1.control" "Arm_IKPV_M_CTR1.group";
connectAttr "Arm_IKPV_M_CTR1_translateX.o" "Arm_IKPV_M_CTR1.tx";
connectAttr "Arm_IKPV_M_CTR1_translateY.o" "Arm_IKPV_M_CTR1.ty";
connectAttr "Arm_IKPV_M_CTR1_translateZ.o" "Arm_IKPV_M_CTR1.tz";
connectAttr "Arm_IKPV_M_CTR1_rotateX.o" "Arm_IKPV_M_CTR1.rx";
connectAttr "Arm_IKPV_M_CTR1_rotateY.o" "Arm_IKPV_M_CTR1.ry";
connectAttr "Arm_IKPV_M_CTR1_rotateZ.o" "Arm_IKPV_M_CTR1.rz";
connectAttr "Arm_IKPV_M_CTR1_scaleX.o" "Arm_IKPV_M_CTR1.sx";
connectAttr "Arm_IKPV_M_CTR1_scaleY.o" "Arm_IKPV_M_CTR1.sy";
connectAttr "Arm_IKPV_M_CTR1_scaleZ.o" "Arm_IKPV_M_CTR1.sz";
connectAttr "Arm_IKPV_M_GRP1.ro" "Arm_IKPV_M_GRP1_parentConstraint1.cro";
connectAttr "Arm_IKPV_M_GRP1.pim" "Arm_IKPV_M_GRP1_parentConstraint1.cpim";
connectAttr "Arm_IKPV_M_GRP1.rp" "Arm_IKPV_M_GRP1_parentConstraint1.crp";
connectAttr "Arm_IKPV_M_GRP1.rpt" "Arm_IKPV_M_GRP1_parentConstraint1.crt";
connectAttr "Clav01_Joint_M_CTR0.t" "Arm_IKPV_M_GRP1_parentConstraint1.tg[0].tt"
		;
connectAttr "Clav01_Joint_M_CTR0.rp" "Arm_IKPV_M_GRP1_parentConstraint1.tg[0].trp"
		;
connectAttr "Clav01_Joint_M_CTR0.rpt" "Arm_IKPV_M_GRP1_parentConstraint1.tg[0].trt"
		;
connectAttr "Clav01_Joint_M_CTR0.r" "Arm_IKPV_M_GRP1_parentConstraint1.tg[0].tr"
		;
connectAttr "Clav01_Joint_M_CTR0.ro" "Arm_IKPV_M_GRP1_parentConstraint1.tg[0].tro"
		;
connectAttr "Clav01_Joint_M_CTR0.s" "Arm_IKPV_M_GRP1_parentConstraint1.tg[0].ts"
		;
connectAttr "Clav01_Joint_M_CTR0.pm" "Arm_IKPV_M_GRP1_parentConstraint1.tg[0].tpm"
		;
connectAttr "Arm_IKPV_M_GRP1_parentConstraint1.w0" "Arm_IKPV_M_GRP1_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster1Handle_parentConstraint1.ctx" "cluster1Handle.tx";
connectAttr "cluster1Handle_parentConstraint1.cty" "cluster1Handle.ty";
connectAttr "cluster1Handle_parentConstraint1.ctz" "cluster1Handle.tz";
connectAttr "cluster1Handle_parentConstraint1.crx" "cluster1Handle.rx";
connectAttr "cluster1Handle_parentConstraint1.cry" "cluster1Handle.ry";
connectAttr "cluster1Handle_parentConstraint1.crz" "cluster1Handle.rz";
connectAttr "cluster1Handle.ro" "cluster1Handle_parentConstraint1.cro";
connectAttr "cluster1Handle.pim" "cluster1Handle_parentConstraint1.cpim";
connectAttr "cluster1Handle.rp" "cluster1Handle_parentConstraint1.crp";
connectAttr "cluster1Handle.rpt" "cluster1Handle_parentConstraint1.crt";
connectAttr "Arm_IKPV_M_CTR1.t" "cluster1Handle_parentConstraint1.tg[0].tt";
connectAttr "Arm_IKPV_M_CTR1.rp" "cluster1Handle_parentConstraint1.tg[0].trp";
connectAttr "Arm_IKPV_M_CTR1.rpt" "cluster1Handle_parentConstraint1.tg[0].trt";
connectAttr "Arm_IKPV_M_CTR1.r" "cluster1Handle_parentConstraint1.tg[0].tr";
connectAttr "Arm_IKPV_M_CTR1.ro" "cluster1Handle_parentConstraint1.tg[0].tro";
connectAttr "Arm_IKPV_M_CTR1.s" "cluster1Handle_parentConstraint1.tg[0].ts";
connectAttr "Arm_IKPV_M_CTR1.pm" "cluster1Handle_parentConstraint1.tg[0].tpm";
connectAttr "cluster1Handle_parentConstraint1.w0" "cluster1Handle_parentConstraint1.tg[0].tw"
		;
connectAttr "cluster2Handle_parentConstraint1.ctx" "cluster2Handle.tx";
connectAttr "cluster2Handle_parentConstraint1.cty" "cluster2Handle.ty";
connectAttr "cluster2Handle_parentConstraint1.ctz" "cluster2Handle.tz";
connectAttr "cluster2Handle_parentConstraint1.crx" "cluster2Handle.rx";
connectAttr "cluster2Handle_parentConstraint1.cry" "cluster2Handle.ry";
connectAttr "cluster2Handle_parentConstraint1.crz" "cluster2Handle.rz";
connectAttr "cluster2Handle.ro" "cluster2Handle_parentConstraint1.cro";
connectAttr "cluster2Handle.pim" "cluster2Handle_parentConstraint1.cpim";
connectAttr "cluster2Handle.rp" "cluster2Handle_parentConstraint1.crp";
connectAttr "cluster2Handle.rpt" "cluster2Handle_parentConstraint1.crt";
connectAttr "Arm_Elbow_M_JNT.t" "cluster2Handle_parentConstraint1.tg[0].tt";
connectAttr "Arm_Elbow_M_JNT.rp" "cluster2Handle_parentConstraint1.tg[0].trp";
connectAttr "Arm_Elbow_M_JNT.rpt" "cluster2Handle_parentConstraint1.tg[0].trt";
connectAttr "Arm_Elbow_M_JNT.r" "cluster2Handle_parentConstraint1.tg[0].tr";
connectAttr "Arm_Elbow_M_JNT.ro" "cluster2Handle_parentConstraint1.tg[0].tro";
connectAttr "Arm_Elbow_M_JNT.s" "cluster2Handle_parentConstraint1.tg[0].ts";
connectAttr "Arm_Elbow_M_JNT.pm" "cluster2Handle_parentConstraint1.tg[0].tpm";
connectAttr "Arm_Elbow_M_JNT.jo" "cluster2Handle_parentConstraint1.tg[0].tjo";
connectAttr "Arm_Elbow_M_JNT.ssc" "cluster2Handle_parentConstraint1.tg[0].tsc";
connectAttr "Arm_Elbow_M_JNT.is" "cluster2Handle_parentConstraint1.tg[0].tis";
connectAttr "cluster2Handle_parentConstraint1.w0" "cluster2Handle_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_Limb_M_NODE.ikpvCurve" "curve1.limb";
connectAttr "cluster2.og[0]" "curveShape1.cr";
connectAttr "tweak1.pl[0].cp[0]" "curveShape1.twl";
connectAttr "cluster1GroupId.id" "curveShape1.iog.og[0].gid";
connectAttr "cluster1Set.mwc" "curveShape1.iog.og[0].gco";
connectAttr "groupId2.id" "curveShape1.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "curveShape1.iog.og[1].gco";
connectAttr "cluster2GroupId.id" "curveShape1.iog.og[2].gid";
connectAttr "cluster2Set.mwc" "curveShape1.iog.og[2].gco";
connectAttr "Arm_Limb_M_NODE.limbGroups" "Arm_IKPV_M_GRP0.limb";
connectAttr "Arm_IKPV_M_GRP0_parentConstraint1.ctx" "Arm_IKPV_M_GRP0.tx";
connectAttr "Arm_IKPV_M_GRP0_parentConstraint1.cty" "Arm_IKPV_M_GRP0.ty";
connectAttr "Arm_IKPV_M_GRP0_parentConstraint1.ctz" "Arm_IKPV_M_GRP0.tz";
connectAttr "Arm_IKPV_M_GRP0_parentConstraint1.crx" "Arm_IKPV_M_GRP0.rx";
connectAttr "Arm_IKPV_M_GRP0_parentConstraint1.cry" "Arm_IKPV_M_GRP0.ry";
connectAttr "Arm_IKPV_M_GRP0_parentConstraint1.crz" "Arm_IKPV_M_GRP0.rz";
connectAttr "Arm_Limb_M_NODE.usedGroups" "Arm_IKPV_M_GRP0.used";
connectAttr "Control_Disp.di" "Arm_IKPV_M_CTR0.do";
connectAttr "Arm_IKPV_M_GRP0.control" "Arm_IKPV_M_CTR0.group";
connectAttr "Arm_IKPV_M_CTR0_translateX.o" "Arm_IKPV_M_CTR0.tx";
connectAttr "Arm_IKPV_M_CTR0_translateY.o" "Arm_IKPV_M_CTR0.ty";
connectAttr "Arm_IKPV_M_CTR0_translateZ.o" "Arm_IKPV_M_CTR0.tz";
connectAttr "Arm_IKPV_M_CTR0_rotateX.o" "Arm_IKPV_M_CTR0.rx";
connectAttr "Arm_IKPV_M_CTR0_rotateY.o" "Arm_IKPV_M_CTR0.ry";
connectAttr "Arm_IKPV_M_CTR0_rotateZ.o" "Arm_IKPV_M_CTR0.rz";
connectAttr "Arm_IKPV_M_CTR0_scaleX.o" "Arm_IKPV_M_CTR0.sx";
connectAttr "Arm_IKPV_M_CTR0_scaleY.o" "Arm_IKPV_M_CTR0.sy";
connectAttr "Arm_IKPV_M_CTR0_scaleZ.o" "Arm_IKPV_M_CTR0.sz";
connectAttr "Arm_IKPV_M_GRP0.ro" "Arm_IKPV_M_GRP0_parentConstraint1.cro";
connectAttr "Arm_IKPV_M_GRP0.pim" "Arm_IKPV_M_GRP0_parentConstraint1.cpim";
connectAttr "Arm_IKPV_M_GRP0.rp" "Arm_IKPV_M_GRP0_parentConstraint1.crp";
connectAttr "Arm_IKPV_M_GRP0.rpt" "Arm_IKPV_M_GRP0_parentConstraint1.crt";
connectAttr "Clav01_Joint_M_CTR0.t" "Arm_IKPV_M_GRP0_parentConstraint1.tg[0].tt"
		;
connectAttr "Clav01_Joint_M_CTR0.rp" "Arm_IKPV_M_GRP0_parentConstraint1.tg[0].trp"
		;
connectAttr "Clav01_Joint_M_CTR0.rpt" "Arm_IKPV_M_GRP0_parentConstraint1.tg[0].trt"
		;
connectAttr "Clav01_Joint_M_CTR0.r" "Arm_IKPV_M_GRP0_parentConstraint1.tg[0].tr"
		;
connectAttr "Clav01_Joint_M_CTR0.ro" "Arm_IKPV_M_GRP0_parentConstraint1.tg[0].tro"
		;
connectAttr "Clav01_Joint_M_CTR0.s" "Arm_IKPV_M_GRP0_parentConstraint1.tg[0].ts"
		;
connectAttr "Clav01_Joint_M_CTR0.pm" "Arm_IKPV_M_GRP0_parentConstraint1.tg[0].tpm"
		;
connectAttr "Arm_IKPV_M_GRP0_parentConstraint1.w0" "Arm_IKPV_M_GRP0_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_Limb_M_NODE.limbGroups" "Arm_IKPV_M_GRP2.limb";
connectAttr "Arm_IKPV_M_GRP2_parentConstraint1.ctx" "Arm_IKPV_M_GRP2.tx";
connectAttr "Arm_IKPV_M_GRP2_parentConstraint1.cty" "Arm_IKPV_M_GRP2.ty";
connectAttr "Arm_IKPV_M_GRP2_parentConstraint1.ctz" "Arm_IKPV_M_GRP2.tz";
connectAttr "Arm_IKPV_M_GRP2_parentConstraint1.crx" "Arm_IKPV_M_GRP2.rx";
connectAttr "Arm_IKPV_M_GRP2_parentConstraint1.cry" "Arm_IKPV_M_GRP2.ry";
connectAttr "Arm_IKPV_M_GRP2_parentConstraint1.crz" "Arm_IKPV_M_GRP2.rz";
connectAttr "Arm_Limb_M_NODE.usedGroups" "Arm_IKPV_M_GRP2.used";
connectAttr "Control_Disp.di" "Arm_IKPV_M_CTR2.do";
connectAttr "Arm_IKPV_M_GRP2.control" "Arm_IKPV_M_CTR2.group";
connectAttr "Arm_IKPV_M_CTR2_rotateX.o" "Arm_IKPV_M_CTR2.rx";
connectAttr "Arm_IKPV_M_CTR2_rotateY.o" "Arm_IKPV_M_CTR2.ry";
connectAttr "Arm_IKPV_M_CTR2_rotateZ.o" "Arm_IKPV_M_CTR2.rz";
connectAttr "Arm_IKPV_M_CTR2_translateX.o" "Arm_IKPV_M_CTR2.tx";
connectAttr "Arm_IKPV_M_CTR2_translateY.o" "Arm_IKPV_M_CTR2.ty";
connectAttr "Arm_IKPV_M_CTR2_translateZ.o" "Arm_IKPV_M_CTR2.tz";
connectAttr "Arm_IKPV_M_CTR2_scaleX.o" "Arm_IKPV_M_CTR2.sx";
connectAttr "Arm_IKPV_M_CTR2_scaleY.o" "Arm_IKPV_M_CTR2.sy";
connectAttr "Arm_IKPV_M_CTR2_scaleZ.o" "Arm_IKPV_M_CTR2.sz";
connectAttr "Arm_Shoulder_M_JNT.msg" "ikHandle1.hsj";
connectAttr "effector1.hp" "ikHandle1.hee";
connectAttr "ikRPsolver.msg" "ikHandle1.hsv";
connectAttr "ikHandle1_poleVectorConstraint1.ctx" "ikHandle1.pvx";
connectAttr "ikHandle1_poleVectorConstraint1.cty" "ikHandle1.pvy";
connectAttr "ikHandle1_poleVectorConstraint1.ctz" "ikHandle1.pvz";
connectAttr "ikHandle1.pim" "ikHandle1_poleVectorConstraint1.cpim";
connectAttr "Arm_Shoulder_M_JNT.pm" "ikHandle1_poleVectorConstraint1.ps";
connectAttr "Arm_Shoulder_M_JNT.t" "ikHandle1_poleVectorConstraint1.crp";
connectAttr "Arm_IKPV_M_CTR1.t" "ikHandle1_poleVectorConstraint1.tg[0].tt";
connectAttr "Arm_IKPV_M_CTR1.rp" "ikHandle1_poleVectorConstraint1.tg[0].trp";
connectAttr "Arm_IKPV_M_CTR1.rpt" "ikHandle1_poleVectorConstraint1.tg[0].trt";
connectAttr "Arm_IKPV_M_CTR1.pm" "ikHandle1_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle1_poleVectorConstraint1.w0" "ikHandle1_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "Arm_IKPV_M_GRP2.ro" "Arm_IKPV_M_GRP2_parentConstraint1.cro";
connectAttr "Arm_IKPV_M_GRP2.pim" "Arm_IKPV_M_GRP2_parentConstraint1.cpim";
connectAttr "Arm_IKPV_M_GRP2.rp" "Arm_IKPV_M_GRP2_parentConstraint1.crp";
connectAttr "Arm_IKPV_M_GRP2.rpt" "Arm_IKPV_M_GRP2_parentConstraint1.crt";
connectAttr "Clav01_Joint_M_CTR0.t" "Arm_IKPV_M_GRP2_parentConstraint1.tg[0].tt"
		;
connectAttr "Clav01_Joint_M_CTR0.rp" "Arm_IKPV_M_GRP2_parentConstraint1.tg[0].trp"
		;
connectAttr "Clav01_Joint_M_CTR0.rpt" "Arm_IKPV_M_GRP2_parentConstraint1.tg[0].trt"
		;
connectAttr "Clav01_Joint_M_CTR0.r" "Arm_IKPV_M_GRP2_parentConstraint1.tg[0].tr"
		;
connectAttr "Clav01_Joint_M_CTR0.ro" "Arm_IKPV_M_GRP2_parentConstraint1.tg[0].tro"
		;
connectAttr "Clav01_Joint_M_CTR0.s" "Arm_IKPV_M_GRP2_parentConstraint1.tg[0].ts"
		;
connectAttr "Clav01_Joint_M_CTR0.pm" "Arm_IKPV_M_GRP2_parentConstraint1.tg[0].tpm"
		;
connectAttr "Arm_IKPV_M_GRP2_parentConstraint1.w0" "Arm_IKPV_M_GRP2_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_Elbow_M_JNT.group" "Elbow_Joint_M_GRP1.joint";
connectAttr "Arm_Limb_M_NODE.jointGroups" "Elbow_Joint_M_GRP1.limb";
connectAttr "Elbow_Joint_M_GRP1_parentConstraint1.ctx" "Elbow_Joint_M_GRP1.tx";
connectAttr "Elbow_Joint_M_GRP1_parentConstraint1.cty" "Elbow_Joint_M_GRP1.ty";
connectAttr "Elbow_Joint_M_GRP1_parentConstraint1.ctz" "Elbow_Joint_M_GRP1.tz";
connectAttr "Elbow_Joint_M_GRP1_parentConstraint1.crx" "Elbow_Joint_M_GRP1.rx";
connectAttr "Elbow_Joint_M_GRP1_parentConstraint1.cry" "Elbow_Joint_M_GRP1.ry";
connectAttr "Elbow_Joint_M_GRP1_parentConstraint1.crz" "Elbow_Joint_M_GRP1.rz";
connectAttr "Control_Disp.di" "Elbow_Joint_M_CTR1.do";
connectAttr "Elbow_Joint_M_GRP1.control" "Elbow_Joint_M_CTR1.group";
connectAttr "Elbow_Joint_M_GRP1.ro" "Elbow_Joint_M_GRP1_parentConstraint1.cro";
connectAttr "Elbow_Joint_M_GRP1.pim" "Elbow_Joint_M_GRP1_parentConstraint1.cpim"
		;
connectAttr "Elbow_Joint_M_GRP1.rp" "Elbow_Joint_M_GRP1_parentConstraint1.crp";
connectAttr "Elbow_Joint_M_GRP1.rpt" "Elbow_Joint_M_GRP1_parentConstraint1.crt";
connectAttr "Arm_Elbow_M_JNT.t" "Elbow_Joint_M_GRP1_parentConstraint1.tg[0].tt";
connectAttr "Arm_Elbow_M_JNT.rp" "Elbow_Joint_M_GRP1_parentConstraint1.tg[0].trp"
		;
connectAttr "Arm_Elbow_M_JNT.rpt" "Elbow_Joint_M_GRP1_parentConstraint1.tg[0].trt"
		;
connectAttr "Arm_Elbow_M_JNT.r" "Elbow_Joint_M_GRP1_parentConstraint1.tg[0].tr";
connectAttr "Arm_Elbow_M_JNT.ro" "Elbow_Joint_M_GRP1_parentConstraint1.tg[0].tro"
		;
connectAttr "Arm_Elbow_M_JNT.s" "Elbow_Joint_M_GRP1_parentConstraint1.tg[0].ts";
connectAttr "Arm_Elbow_M_JNT.pm" "Elbow_Joint_M_GRP1_parentConstraint1.tg[0].tpm"
		;
connectAttr "Arm_Elbow_M_JNT.jo" "Elbow_Joint_M_GRP1_parentConstraint1.tg[0].tjo"
		;
connectAttr "Arm_Elbow_M_JNT.ssc" "Elbow_Joint_M_GRP1_parentConstraint1.tg[0].tsc"
		;
connectAttr "Arm_Elbow_M_JNT.is" "Elbow_Joint_M_GRP1_parentConstraint1.tg[0].tis"
		;
connectAttr "Elbow_Joint_M_GRP1_parentConstraint1.w0" "Elbow_Joint_M_GRP1_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_Shoulder_M_JNT.group" "Shoulder_Joint_M_GRP0.joint";
connectAttr "Arm_Limb_M_NODE.jointGroups" "Shoulder_Joint_M_GRP0.limb";
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
connectAttr "Shoulder_Joint_M_GRP0.ro" "Shoulder_Joint_M_GRP0_parentConstraint1.cro"
		;
connectAttr "Shoulder_Joint_M_GRP0.pim" "Shoulder_Joint_M_GRP0_parentConstraint1.cpim"
		;
connectAttr "Shoulder_Joint_M_GRP0.rp" "Shoulder_Joint_M_GRP0_parentConstraint1.crp"
		;
connectAttr "Shoulder_Joint_M_GRP0.rpt" "Shoulder_Joint_M_GRP0_parentConstraint1.crt"
		;
connectAttr "Arm_Shoulder_M_JNT.t" "Shoulder_Joint_M_GRP0_parentConstraint1.tg[0].tt"
		;
connectAttr "Arm_Shoulder_M_JNT.rp" "Shoulder_Joint_M_GRP0_parentConstraint1.tg[0].trp"
		;
connectAttr "Arm_Shoulder_M_JNT.rpt" "Shoulder_Joint_M_GRP0_parentConstraint1.tg[0].trt"
		;
connectAttr "Arm_Shoulder_M_JNT.r" "Shoulder_Joint_M_GRP0_parentConstraint1.tg[0].tr"
		;
connectAttr "Arm_Shoulder_M_JNT.ro" "Shoulder_Joint_M_GRP0_parentConstraint1.tg[0].tro"
		;
connectAttr "Arm_Shoulder_M_JNT.s" "Shoulder_Joint_M_GRP0_parentConstraint1.tg[0].ts"
		;
connectAttr "Arm_Shoulder_M_JNT.pm" "Shoulder_Joint_M_GRP0_parentConstraint1.tg[0].tpm"
		;
connectAttr "Arm_Shoulder_M_JNT.jo" "Shoulder_Joint_M_GRP0_parentConstraint1.tg[0].tjo"
		;
connectAttr "Arm_Shoulder_M_JNT.ssc" "Shoulder_Joint_M_GRP0_parentConstraint1.tg[0].tsc"
		;
connectAttr "Arm_Shoulder_M_JNT.is" "Shoulder_Joint_M_GRP0_parentConstraint1.tg[0].tis"
		;
connectAttr "Shoulder_Joint_M_GRP0_parentConstraint1.w0" "Shoulder_Joint_M_GRP0_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_Wrist_M_JNT.group" "Wrist_Joint_M_GRP2.joint";
connectAttr "Arm_Limb_M_NODE.jointGroups" "Wrist_Joint_M_GRP2.limb";
connectAttr "Wrist_Joint_M_GRP2_parentConstraint1.ctx" "Wrist_Joint_M_GRP2.tx";
connectAttr "Wrist_Joint_M_GRP2_parentConstraint1.cty" "Wrist_Joint_M_GRP2.ty";
connectAttr "Wrist_Joint_M_GRP2_parentConstraint1.ctz" "Wrist_Joint_M_GRP2.tz";
connectAttr "Wrist_Joint_M_GRP2_parentConstraint1.crx" "Wrist_Joint_M_GRP2.rx";
connectAttr "Wrist_Joint_M_GRP2_parentConstraint1.cry" "Wrist_Joint_M_GRP2.ry";
connectAttr "Wrist_Joint_M_GRP2_parentConstraint1.crz" "Wrist_Joint_M_GRP2.rz";
connectAttr "Control_Disp.di" "Wrist_Joint_M_CTR2.do";
connectAttr "Wrist_Joint_M_GRP2.control" "Wrist_Joint_M_CTR2.group";
connectAttr "Wrist_Joint_M_GRP2.ro" "Wrist_Joint_M_GRP2_parentConstraint1.cro";
connectAttr "Wrist_Joint_M_GRP2.pim" "Wrist_Joint_M_GRP2_parentConstraint1.cpim"
		;
connectAttr "Wrist_Joint_M_GRP2.rp" "Wrist_Joint_M_GRP2_parentConstraint1.crp";
connectAttr "Wrist_Joint_M_GRP2.rpt" "Wrist_Joint_M_GRP2_parentConstraint1.crt";
connectAttr "Arm_Wrist_M_JNT.t" "Wrist_Joint_M_GRP2_parentConstraint1.tg[0].tt";
connectAttr "Arm_Wrist_M_JNT.rp" "Wrist_Joint_M_GRP2_parentConstraint1.tg[0].trp"
		;
connectAttr "Arm_Wrist_M_JNT.rpt" "Wrist_Joint_M_GRP2_parentConstraint1.tg[0].trt"
		;
connectAttr "Arm_Wrist_M_JNT.r" "Wrist_Joint_M_GRP2_parentConstraint1.tg[0].tr";
connectAttr "Arm_Wrist_M_JNT.ro" "Wrist_Joint_M_GRP2_parentConstraint1.tg[0].tro"
		;
connectAttr "Arm_Wrist_M_JNT.s" "Wrist_Joint_M_GRP2_parentConstraint1.tg[0].ts";
connectAttr "Arm_Wrist_M_JNT.pm" "Wrist_Joint_M_GRP2_parentConstraint1.tg[0].tpm"
		;
connectAttr "Arm_Wrist_M_JNT.jo" "Wrist_Joint_M_GRP2_parentConstraint1.tg[0].tjo"
		;
connectAttr "Arm_Wrist_M_JNT.ssc" "Wrist_Joint_M_GRP2_parentConstraint1.tg[0].tsc"
		;
connectAttr "Arm_Wrist_M_JNT.is" "Wrist_Joint_M_GRP2_parentConstraint1.tg[0].tis"
		;
connectAttr "Wrist_Joint_M_GRP2_parentConstraint1.w0" "Wrist_Joint_M_GRP2_parentConstraint1.tg[0].tw"
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
connectAttr "Middle_Limb_M_NODE.usedGroups" "Middle4_Joint_M_GRP3.used";
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
connectAttr "Index_Limb_M_NODE.usedGroups" "Index4_Joint_M_GRP3.used";
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
connectAttr "Thumb_Limb_M_NODE.usedGroups" "Thumb4_Joint_M_GRP3.used";
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
connectAttr "Arm_IKPV_M_CTR1Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Arm_IKPV_M_CTR0Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Arm_IKPV_M_CTR2Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "MControlsMaterialSG.msg" "materialInfo3.sg";
connectAttr "MControlsMaterial.msg" "materialInfo3.m";
connectAttr "MControlsMaterial.msg" "materialInfo3.t" -na;
connectAttr "RControlsMaterial.oc" "RControlsMaterialSG.ss";
connectAttr "TEMP_RigRoot.controlMtrR" "RControlsMaterialSG.rigRoot";
connectAttr "RControlsMaterialSG.msg" "materialInfo4.sg";
connectAttr "RControlsMaterial.msg" "materialInfo4.m";
connectAttr "RControlsMaterial.msg" "materialInfo4.t" -na;
connectAttr "cluster1GroupParts.og" "cluster1.ip[0].ig";
connectAttr "cluster1GroupId.id" "cluster1.ip[0].gi";
connectAttr "cluster1Handle.wm" "cluster1.ma";
connectAttr "cluster1HandleShape.x" "cluster1.x";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "cluster1GroupId.msg" "cluster1Set.gn" -na;
connectAttr "curveShape1.iog.og[0]" "cluster1Set.dsm" -na;
connectAttr "cluster1.msg" "cluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "cluster1GroupParts.ig";
connectAttr "cluster1GroupId.id" "cluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "curveShape1.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "curveShape1Orig.ws" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "cluster2GroupParts.og" "cluster2.ip[0].ig";
connectAttr "cluster2GroupId.id" "cluster2.ip[0].gi";
connectAttr "cluster2Handle.wm" "cluster2.ma";
connectAttr "cluster2HandleShape.x" "cluster2.x";
connectAttr "cluster2GroupId.msg" "cluster2Set.gn" -na;
connectAttr "curveShape1.iog.og[2]" "cluster2Set.dsm" -na;
connectAttr "cluster2.msg" "cluster2Set.ub[0]";
connectAttr "cluster1.og[0]" "cluster2GroupParts.ig";
connectAttr "cluster2GroupId.id" "cluster2GroupParts.gi";
connectAttr "Arm_Limb_M_NODE.presets" "LimbPreset_Arm_1.limb";
connectAttr "Clav_Limb_M_NODE.presetLimbChildren" "LimbPreset_Arm_1.limbParent";
connectAttr "TEMP_RigRoot.presets" "LimbPreset_Arm_1.rigRoot";
connectAttr "Arm_Limb_M_NODE.presets" "LimbPreset_Arm_2.limb";
connectAttr "TEMP_RigRoot.presets" "LimbPreset_Arm_2.rigRoot";
connectAttr "Clav01_Joint_M_CTR0.msg" "Clav01_Joint_M_CTR0_tag.act";
connectAttr "controller1.prep" "Clav01_Joint_M_CTR0_tag.prep";
connectAttr "Arm_IKPV_M_CTR1_tag.pare" "Clav01_Joint_M_CTR0_tag.child[0]";
connectAttr "Arm_IKPV_M_CTR0_tag.pare" "Clav01_Joint_M_CTR0_tag.child[1]";
connectAttr "Arm_IKPV_M_CTR2_tag.pare" "Clav01_Joint_M_CTR0_tag.child[2]";
connectAttr "Clav01_Joint_M_CTR0_tag.pare" "controller1.child[0]";
connectAttr "BicepTwist_Joint_M_CTR0.msg" "BicepTwist_Joint_M_CTR0_tag.act";
connectAttr "Arm_IKPV_M_CTR1_tag.prep" "BicepTwist_Joint_M_CTR0_tag.prep";
connectAttr "Arm_IKPV_M_CTR1.msg" "Arm_IKPV_M_CTR1_tag.act";
connectAttr "BicepTwist_Joint_M_CTR0_tag.pare" "Arm_IKPV_M_CTR1_tag.child[0]";
connectAttr "ForearmTwist2_Joint_M_CTR1_tag.pare" "Arm_IKPV_M_CTR1_tag.child[1]"
		;
connectAttr "ForearmTwist1_Joint_M_CTR0_tag.pare" "Arm_IKPV_M_CTR1_tag.child[2]"
		;
connectAttr "Index3_Joint_M_CTR2_tag.pare" "Arm_IKPV_M_CTR1_tag.child[3]";
connectAttr "Index4_Joint_M_CTR3_tag.pare" "Arm_IKPV_M_CTR1_tag.child[4]";
connectAttr "Index2_Joint_M_CTR1_tag.pare" "Arm_IKPV_M_CTR1_tag.child[5]";
connectAttr "Index1_Joint_M_CTR0_tag.pare" "Arm_IKPV_M_CTR1_tag.child[6]";
connectAttr "Middle3_Joint_M_CTR2_tag.pare" "Arm_IKPV_M_CTR1_tag.child[7]";
connectAttr "Middle4_Joint_M_CTR3_tag.pare" "Arm_IKPV_M_CTR1_tag.child[8]";
connectAttr "Middle2_Joint_M_CTR1_tag.pare" "Arm_IKPV_M_CTR1_tag.child[9]";
connectAttr "Middle1_Joint_M_CTR0_tag.pare" "Arm_IKPV_M_CTR1_tag.child[10]";
connectAttr "Pinkey3_Joint_M_CTR2_tag.pare" "Arm_IKPV_M_CTR1_tag.child[11]";
connectAttr "Pinkey4_Joint_M_CTR3_tag.pare" "Arm_IKPV_M_CTR1_tag.child[12]";
connectAttr "Pinkey2_Joint_M_CTR1_tag.pare" "Arm_IKPV_M_CTR1_tag.child[13]";
connectAttr "Pinkey1_Joint_M_CTR0_tag.pare" "Arm_IKPV_M_CTR1_tag.child[14]";
connectAttr "Ring3_Joint_M_CTR2_tag.pare" "Arm_IKPV_M_CTR1_tag.child[15]";
connectAttr "Ring4_Joint_M_CTR3_tag.pare" "Arm_IKPV_M_CTR1_tag.child[16]";
connectAttr "Ring2_Joint_M_CTR1_tag.pare" "Arm_IKPV_M_CTR1_tag.child[17]";
connectAttr "Ring1_Joint_M_CTR0_tag.pare" "Arm_IKPV_M_CTR1_tag.child[18]";
connectAttr "Thumb3_Joint_M_CTR2_tag.pare" "Arm_IKPV_M_CTR1_tag.child[19]";
connectAttr "Thumb4_Joint_M_CTR3_tag.pare" "Arm_IKPV_M_CTR1_tag.child[20]";
connectAttr "Thumb2_Joint_M_CTR1_tag.pare" "Arm_IKPV_M_CTR1_tag.child[21]";
connectAttr "Thumb1_Joint_M_CTR0_tag.pare" "Arm_IKPV_M_CTR1_tag.child[22]";
connectAttr "Clav01_Joint_M_CTR0_tag.prep" "Arm_IKPV_M_CTR1_tag.prep";
connectAttr "ForearmTwist2_Joint_M_CTR1.msg" "ForearmTwist2_Joint_M_CTR1_tag.act"
		;
connectAttr "Arm_IKPV_M_CTR1_tag.prep" "ForearmTwist2_Joint_M_CTR1_tag.prep";
connectAttr "ForearmTwist1_Joint_M_CTR0.msg" "ForearmTwist1_Joint_M_CTR0_tag.act"
		;
connectAttr "Arm_IKPV_M_CTR1_tag.prep" "ForearmTwist1_Joint_M_CTR0_tag.prep";
connectAttr "Index3_Joint_M_CTR2.msg" "Index3_Joint_M_CTR2_tag.act";
connectAttr "Arm_IKPV_M_CTR1_tag.prep" "Index3_Joint_M_CTR2_tag.prep";
connectAttr "Index4_Joint_M_CTR3.msg" "Index4_Joint_M_CTR3_tag.act";
connectAttr "Arm_IKPV_M_CTR1_tag.prep" "Index4_Joint_M_CTR3_tag.prep";
connectAttr "Index2_Joint_M_CTR1.msg" "Index2_Joint_M_CTR1_tag.act";
connectAttr "Arm_IKPV_M_CTR1_tag.prep" "Index2_Joint_M_CTR1_tag.prep";
connectAttr "Index1_Joint_M_CTR0.msg" "Index1_Joint_M_CTR0_tag.act";
connectAttr "Arm_IKPV_M_CTR1_tag.prep" "Index1_Joint_M_CTR0_tag.prep";
connectAttr "Middle3_Joint_M_CTR2.msg" "Middle3_Joint_M_CTR2_tag.act";
connectAttr "Arm_IKPV_M_CTR1_tag.prep" "Middle3_Joint_M_CTR2_tag.prep";
connectAttr "Middle4_Joint_M_CTR3.msg" "Middle4_Joint_M_CTR3_tag.act";
connectAttr "Arm_IKPV_M_CTR1_tag.prep" "Middle4_Joint_M_CTR3_tag.prep";
connectAttr "Middle2_Joint_M_CTR1.msg" "Middle2_Joint_M_CTR1_tag.act";
connectAttr "Arm_IKPV_M_CTR1_tag.prep" "Middle2_Joint_M_CTR1_tag.prep";
connectAttr "Middle1_Joint_M_CTR0.msg" "Middle1_Joint_M_CTR0_tag.act";
connectAttr "Arm_IKPV_M_CTR1_tag.prep" "Middle1_Joint_M_CTR0_tag.prep";
connectAttr "Pinkey3_Joint_M_CTR2.msg" "Pinkey3_Joint_M_CTR2_tag.act";
connectAttr "Arm_IKPV_M_CTR1_tag.prep" "Pinkey3_Joint_M_CTR2_tag.prep";
connectAttr "Pinkey4_Joint_M_CTR3.msg" "Pinkey4_Joint_M_CTR3_tag.act";
connectAttr "Arm_IKPV_M_CTR1_tag.prep" "Pinkey4_Joint_M_CTR3_tag.prep";
connectAttr "Pinkey2_Joint_M_CTR1.msg" "Pinkey2_Joint_M_CTR1_tag.act";
connectAttr "Arm_IKPV_M_CTR1_tag.prep" "Pinkey2_Joint_M_CTR1_tag.prep";
connectAttr "Pinkey1_Joint_M_CTR0.msg" "Pinkey1_Joint_M_CTR0_tag.act";
connectAttr "Arm_IKPV_M_CTR1_tag.prep" "Pinkey1_Joint_M_CTR0_tag.prep";
connectAttr "Ring3_Joint_M_CTR2.msg" "Ring3_Joint_M_CTR2_tag.act";
connectAttr "Arm_IKPV_M_CTR1_tag.prep" "Ring3_Joint_M_CTR2_tag.prep";
connectAttr "Ring4_Joint_M_CTR3.msg" "Ring4_Joint_M_CTR3_tag.act";
connectAttr "Arm_IKPV_M_CTR1_tag.prep" "Ring4_Joint_M_CTR3_tag.prep";
connectAttr "Ring2_Joint_M_CTR1.msg" "Ring2_Joint_M_CTR1_tag.act";
connectAttr "Arm_IKPV_M_CTR1_tag.prep" "Ring2_Joint_M_CTR1_tag.prep";
connectAttr "Ring1_Joint_M_CTR0.msg" "Ring1_Joint_M_CTR0_tag.act";
connectAttr "Arm_IKPV_M_CTR1_tag.prep" "Ring1_Joint_M_CTR0_tag.prep";
connectAttr "Thumb3_Joint_M_CTR2.msg" "Thumb3_Joint_M_CTR2_tag.act";
connectAttr "Arm_IKPV_M_CTR1_tag.prep" "Thumb3_Joint_M_CTR2_tag.prep";
connectAttr "Thumb4_Joint_M_CTR3.msg" "Thumb4_Joint_M_CTR3_tag.act";
connectAttr "Arm_IKPV_M_CTR1_tag.prep" "Thumb4_Joint_M_CTR3_tag.prep";
connectAttr "Thumb2_Joint_M_CTR1.msg" "Thumb2_Joint_M_CTR1_tag.act";
connectAttr "Arm_IKPV_M_CTR1_tag.prep" "Thumb2_Joint_M_CTR1_tag.prep";
connectAttr "Thumb1_Joint_M_CTR0.msg" "Thumb1_Joint_M_CTR0_tag.act";
connectAttr "Arm_IKPV_M_CTR1_tag.prep" "Thumb1_Joint_M_CTR0_tag.prep";
connectAttr "Arm_IKPV_M_CTR0.msg" "Arm_IKPV_M_CTR0_tag.act";
connectAttr "Clav01_Joint_M_CTR0_tag.prep" "Arm_IKPV_M_CTR0_tag.prep";
connectAttr "Arm_IKPV_M_CTR2.msg" "Arm_IKPV_M_CTR2_tag.act";
connectAttr "Clav01_Joint_M_CTR0_tag.prep" "Arm_IKPV_M_CTR2_tag.prep";
connectAttr "Thumb1_Joint_M_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "BicepTwist_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "Index_Index3_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "ForearmTwist_ForearmTwist2_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "Index_Index4_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "Index_Index2_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "Ring1_Joint_M_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "Arm_IKPV_M_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "Arm_IKPV_M_GRP2_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "Arm_IKPV_M_GRP1_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "Clav01_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "ForearmTwist2_Joint_M_GRP1_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "BicepTwist_Joint_M_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "ForearmTwist1_Joint_M_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "Middle1_Joint_M_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "Pinkey1_Joint_M_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "controller1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn";
connectAttr "ForearmTwist2_Joint_M_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "ForearmTwist1_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "Index1_Joint_M_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "BicepTwist_BicepTwist_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "Clav_Clav01_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "ForearmTwist_ForearmTwist1_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "Arm_IKPV_M_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "Ring_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "Thumb2_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "cluster2Handle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn";
connectAttr "Middle4_Joint_M_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "cluster2Set.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn";
connectAttr "Middle3_Joint_M_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "Thumb1_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "Ring4_Joint_M_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "Middle2_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "Index_Index4_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "Index_Index2_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "cluster1Handle.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn";
connectAttr "cluster1GroupId.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "ForearmTwist2_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "Cube_PolyShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn";
connectAttr "Ring_Ring4_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "curve1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn";
connectAttr "Ring3_Joint_M_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "Arm_Shoulder_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "Thumb_Thumb4_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "Arm_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "Wrist_Joint_M_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "ForearmTwist_ForearmTwist2_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "cluster2HandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "Ring2_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn"
		;
connectAttr "Middle1_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn"
		;
connectAttr "lambert2SG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn";
connectAttr "Index4_Joint_M_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "Middle_Middle2_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "BicepTwist_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "Pinkie_Pinkey2_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "cluster1Handle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "Middle2_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "Middle_Middle1_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "Thumb_Thumb3_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "Index_Index3_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "Thumb4_Joint_M_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "cluster1GroupParts.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn"
		;
connectAttr "Square_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn";
connectAttr "Arm_IKPV_M_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "Pinkey3_Joint_M_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "ForearmTwist2_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "Clav_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "Wrist_Joint_M_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn"
		;
connectAttr "Middle1_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "Ring4_Joint_M_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn"
		;
connectAttr "sceneConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "Index3_Joint_M_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "Pinkey4_Joint_M_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "MControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "Pinkey1_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn"
		;
connectAttr "cluster1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn";
connectAttr "Elbow_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn"
		;
connectAttr "materialInfo1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn";
connectAttr "Control_Disp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn";
connectAttr "Pinkie_Pinkey4_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "Elbow_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn"
		;
connectAttr "Index_Index1_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn"
		;
connectAttr "BicepTwist_BicepTwist_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn"
		;
connectAttr "BicepTwist_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "Joint_Disp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn";
connectAttr "ForearmTwist1_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "LimbPreset_Arm_2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "Thumb3_Joint_M_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "cluster2GroupId.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "TEMP_RigRoot.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn";
connectAttr "Middle4_Joint_M_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "cluster1HandleShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn"
		;
connectAttr "Middle1_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn"
		;
connectAttr "Cylinder_PolyShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn"
		;
connectAttr "Thumb3_Joint_M_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn"
		;
connectAttr "Pin_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn";
connectAttr "Index3_Joint_M_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn"
		;
connectAttr "LControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn"
		;
connectAttr "Ring_Ring1_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn"
		;
connectAttr "Middle_Middle4_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn"
		;
connectAttr "Thumb3_Joint_M_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn"
		;
connectAttr "Thumb2_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn"
		;
connectAttr "BicepTwist_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn"
		;
connectAttr "materialInfo2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn";
connectAttr "Pinkey3_Joint_M_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn"
		;
connectAttr "BicepTwist_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn"
		;
connectAttr "materialInfo3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn";
connectAttr "Pinkey2_Joint_M_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn"
		;
connectAttr "Pinkey1_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn"
		;
connectAttr "Ring_Ring3_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn"
		;
connectAttr "Pinkey4_Joint_M_CTR3_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn"
		;
connectAttr "Ring_Ring4_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn"
		;
connectAttr "Ring_Ring2_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn"
		;
connectAttr "Index4_Joint_M_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn"
		;
connectAttr "Pinkie_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn"
		;
connectAttr "Cube_Poly.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn";
connectAttr "Thumb1_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn"
		;
connectAttr "ForearmTwist_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn"
		;
connectAttr "groupId2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[118].dn";
connectAttr "Middle3_Joint_M_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn"
		;
connectAttr "Ring1_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[120].dn"
		;
connectAttr "RControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn"
		;
connectAttr "Middle2_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn"
		;
connectAttr "cluster2GroupParts.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[123].dn"
		;
connectAttr "Ring4_Joint_M_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[124].dn"
		;
connectAttr "Arm_Elbow_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[125].dn"
		;
connectAttr "Index2_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[126].dn"
		;
connectAttr "Arm_IKPV_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[127].dn"
		;
connectAttr "cluster2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[128].dn";
connectAttr "Pinkey2_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[129].dn"
		;
connectAttr "Ring3_Joint_M_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[130].dn"
		;
connectAttr "curveShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[131].dn";
connectAttr "Pinkey4_Joint_M_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[132].dn"
		;
connectAttr "Index2_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[133].dn"
		;
connectAttr "Thumb4_Joint_M_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[134].dn"
		;
connectAttr "Clav01_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[135].dn"
		;
connectAttr "Index1_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[136].dn"
		;
connectAttr "Index2_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[137].dn"
		;
connectAttr "Wrist_Joint_M_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[138].dn"
		;
connectAttr "Meshes_Disp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[139].dn";
connectAttr "Ring3_Joint_M_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[140].dn"
		;
connectAttr "Middle_Middle3_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[141].dn"
		;
connectAttr "Middle4_Joint_M_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[142].dn"
		;
connectAttr "Ring2_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[143].dn"
		;
connectAttr "Pinkey2_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[144].dn"
		;
connectAttr "Ring1_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[145].dn"
		;
connectAttr "Arm_IKPV_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[146].dn"
		;
connectAttr "Thumb_Thumb1_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[147].dn"
		;
connectAttr "Arm_IKPV_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[148].dn"
		;
connectAttr "Middle3_Joint_M_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[149].dn"
		;
connectAttr "Cube_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[150].dn";
connectAttr "TempMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[151].dn";
connectAttr "Sphere_Poly.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[152].dn";
connectAttr "Ring_Ring3_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[153].dn"
		;
connectAttr "LIMBS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[154].dn";
connectAttr "Index_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[155].dn"
		;
connectAttr "Thumb1_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[156].dn"
		;
connectAttr "Arm_IKPV_M_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[157].dn"
		;
connectAttr "Index1_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[158].dn"
		;
connectAttr "Ring2_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[159].dn"
		;
connectAttr "Middle_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[160].dn"
		;
connectAttr "JOINTS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[161].dn";
connectAttr "Shoulder_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[162].dn"
		;
connectAttr "Cube_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[163].dn"
		;
connectAttr "uiConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[164].dn"
		;
connectAttr "Clav01_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[165].dn"
		;
connectAttr "cluster2Handle_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[166].dn"
		;
connectAttr "Diamond_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[167].dn"
		;
connectAttr "Pinkey1_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[168].dn"
		;
connectAttr "Thumb4_Joint_M_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[169].dn"
		;
connectAttr "Sphere_PolyShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[170].dn"
		;
connectAttr "Arm_IKPV_M_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[171].dn"
		;
connectAttr "Ring1_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[172].dn"
		;
connectAttr "Circle_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[173].dn"
		;
connectAttr "Pinkey3_Joint_M_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[174].dn"
		;
connectAttr "Index1_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[175].dn"
		;
connectAttr "Arm_IKPV_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[176].dn"
		;
connectAttr "Circle_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[177].dn";
connectAttr "Pinkey2_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[178].dn"
		;
connectAttr "MControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[179].dn"
		;
connectAttr "Pin_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[180].dn";
connectAttr "Diamond_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[181].dn";
connectAttr "Clav01_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[182].dn"
		;
connectAttr "Pinkie_Pinkey3_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[183].dn"
		;
connectAttr "CONTROL_SHAPE_TEMPLATES.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[184].dn"
		;
connectAttr "Arm_Wrist_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[185].dn"
		;
connectAttr "Shoulder_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[186].dn"
		;
connectAttr "LimbPreset_Arm_1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[187].dn"
		;
connectAttr "curveShape1Orig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[188].dn"
		;
connectAttr "Shoulder_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[189].dn"
		;
connectAttr "Arm_IKPV_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[190].dn"
		;
connectAttr "tweak1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[191].dn";
connectAttr "MESHES.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[192].dn";
connectAttr "Arm_IKPV_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[193].dn"
		;
connectAttr "RControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[194].dn"
		;
connectAttr "Cylinder_Poly.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[195].dn";
connectAttr "Clav_Clav01_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[196].dn"
		;
connectAttr "Index4_Joint_M_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[197].dn"
		;
connectAttr "Thumb2_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[198].dn"
		;
connectAttr "Thumb_Thumb2_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[199].dn"
		;
connectAttr "Pinkie_Pinkey1_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[200].dn"
		;
connectAttr "ForearmTwist1_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[201].dn"
		;
connectAttr "Thumb_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[202].dn"
		;
connectAttr "Square_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[203].dn"
		;
connectAttr "ForearmTwist2_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[204].dn"
		;
connectAttr "Pinkey1_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[205].dn"
		;
connectAttr "LControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[206].dn"
		;
connectAttr "ForearmTwist_ForearmTwist1_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[207].dn"
		;
connectAttr "Pinkey4_Joint_M_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[208].dn"
		;
connectAttr "cluster1Set.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[209].dn";
connectAttr "ForearmTwist1_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[210].dn"
		;
connectAttr "Elbow_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[211].dn"
		;
connectAttr "Index3_Joint_M_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[212].dn"
		;
connectAttr "materialInfo4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[213].dn";
connectAttr "Ring_Ring2_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[214].dn"
		;
connectAttr "groupParts2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[215].dn";
connectAttr "tweakSet1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[216].dn";
connectAttr "Middle4_Joint_M_CTR3_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[217].dn"
		;
connectAttr "Middle_Middle1_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[218].dn"
		;
connectAttr "Middle3_Joint_M_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[219].dn"
		;
connectAttr "Middle_Middle2_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[220].dn"
		;
connectAttr "Middle_Middle4_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[221].dn"
		;
connectAttr "Middle2_Joint_M_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[222].dn"
		;
connectAttr "Arm_IKPV_M_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[223].dn"
		;
connectAttr "Arm_IKPV_M_CTR0_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[224].dn"
		;
connectAttr "Arm_IKPV_M_CTR1_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[225].dn"
		;
connectAttr "Arm_IKPV_M_CTR0_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[226].dn"
		;
connectAttr "Arm_IKPV_M_CTR0_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[227].dn"
		;
connectAttr "Arm_IKPV_M_CTR0_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[228].dn"
		;
connectAttr "Arm_IKPV_M_CTR0_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[229].dn"
		;
connectAttr "Arm_IKPV_M_CTR0_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[230].dn"
		;
connectAttr "Arm_IKPV_M_CTR0_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[231].dn"
		;
connectAttr "Arm_IKPV_M_CTR1_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[232].dn"
		;
connectAttr "Arm_IKPV_M_CTR0_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[233].dn"
		;
connectAttr "Arm_IKPV_M_CTR0_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[234].dn"
		;
connectAttr "Pinkie_Pinkey1_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[235].dn"
		;
connectAttr "Pinkey3_Joint_M_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[236].dn"
		;
connectAttr "Pinkie_Pinkey3_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[237].dn"
		;
connectAttr "Middle1_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[238].dn"
		;
connectAttr "Pinkie_Pinkey4_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[239].dn"
		;
connectAttr "Pinkie_Pinkey2_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[240].dn"
		;
connectAttr "Index2_Joint_M_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[241].dn"
		;
connectAttr "Index1_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[242].dn"
		;
connectAttr "Index3_Joint_M_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[243].dn"
		;
connectAttr "Index_Index1_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[244].dn"
		;
connectAttr "Index4_Joint_M_CTR3_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[245].dn"
		;
connectAttr "Middle_Middle3_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[246].dn"
		;
connectAttr "Ring4_Joint_M_CTR3_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[247].dn"
		;
connectAttr "Ring2_Joint_M_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[248].dn"
		;
connectAttr "Thumb2_Joint_M_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[249].dn"
		;
connectAttr "Thumb_Thumb3_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[250].dn"
		;
connectAttr "Thumb_Thumb2_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[251].dn"
		;
connectAttr "Ring_Ring1_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[252].dn"
		;
connectAttr "Thumb_Thumb1_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[253].dn"
		;
connectAttr "Thumb4_Joint_M_CTR3_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[254].dn"
		;
connectAttr "Ring1_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[255].dn"
		;
connectAttr "Thumb3_Joint_M_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[256].dn"
		;
connectAttr "Thumb_Thumb4_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[257].dn"
		;
connectAttr "Ring3_Joint_M_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[258].dn"
		;
connectAttr "Thumb1_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[259].dn"
		;
connectAttr "Arm_Wrist_M_JNT_orientConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[260].dn"
		;
connectAttr "ikHandle1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[261].dn";
connectAttr "Shoulder_Joint_M_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[262].dn"
		;
connectAttr "Arm_Shoulder_M_JNT_pointConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[263].dn"
		;
connectAttr "Elbow_Joint_M_GRP1_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[264].dn"
		;
connectAttr "Wrist_Joint_M_GRP2_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[265].dn"
		;
connectAttr "Arm_IKPV_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[266].dn"
		;
connectAttr "effector1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[267].dn";
connectAttr "ikHandle1_poleVectorConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[268].dn"
		;
connectAttr "Arm_IKPV_M_CTR2_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[269].dn"
		;
connectAttr "Arm_IKPV_M_CTR2_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[270].dn"
		;
connectAttr "Arm_IKPV_M_CTR1_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[271].dn"
		;
connectAttr "Arm_IKPV_M_CTR1_rotateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[272].dn"
		;
connectAttr "Arm_IKPV_M_CTR1_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[273].dn"
		;
connectAttr "Arm_IKPV_M_CTR2_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[274].dn"
		;
connectAttr "Arm_IKPV_M_CTR1_rotateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[275].dn"
		;
connectAttr "Arm_IKPV_M_CTR1_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[276].dn"
		;
connectAttr "Arm_IKPV_M_CTR1_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[277].dn"
		;
connectAttr "Arm_IKPV_M_CTR2_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[278].dn"
		;
connectAttr "Arm_IKPV_M_CTR2_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[279].dn"
		;
connectAttr "Arm_IKPV_M_CTR1_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[280].dn"
		;
connectAttr "Arm_IKPV_M_CTR2_scaleY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[281].dn"
		;
connectAttr "Arm_IKPV_M_CTR2_scaleZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[282].dn"
		;
connectAttr "Arm_IKPV_M_CTR2_rotateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[283].dn"
		;
connectAttr "Arm_IKPV_M_CTR2_scaleX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[284].dn"
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
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of PFX_AnimRig.ma
