//Maya ASCII 2019 scene
//Name: PFX_SetupRig.ma
//Last modified: Sat, May 22, 2021 01:19:41 PM
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
	rename -uid "B3E34877-4F42-91F7-4977-5FAA861953DF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 46.639180072706722 189.7622737313288 34.302942723810688 ;
	setAttr ".r" -type "double3" -46.538352729602735 -2.9999999999995701 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "DC6134C9-4012-2FC4-F132-13B4BDAB10C3";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 157.55774293677507;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "C4FB9966-4300-EADA-F155-FFADB5AB2354";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "614659E5-4418-0A8D-3A67-F6A40D25861B";
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
	rename -uid "9EFF31A0-4AED-7A94-B053-F4A834B378D9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "BA1B6D3B-4777-E9BD-BF69-8F88FB40A3D3";
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
	rename -uid "24BD544B-4C17-D049-2FA5-21B7A3DC9FA2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "84594005-4BD4-0551-C285-96B567A55B6F";
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
	rename -uid "90D4597C-4430-BC0A-7249-10A30D8B5A7E";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "ID" -ln "ID" -dv 1 -at "long";
	addAttr -ci true -sn "rigMode" -ln "rigMode" -min 0 -max 1 -en "Setup Rig:Animate Rig" 
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
	setAttr ".pfrsName" -type "string" "TEMP";
	setAttr ".rigRootIndex" 4;
	setAttr ".limbIndex" 0;
	setAttr ".jointIndex" 1;
	setAttr ".sideIndex" 2;
	setAttr ".typeIndex" 3;
	setAttr ".category" -type "string" "Rigging";
	setAttr ".operation" -type "string" "Behavior";
	setAttr ".nextLimbID" 9;
	setAttr ".nextPresetID" 3;
	setAttr ".nextJointID" 28;
	setAttr ".posesFolderPath" -type "string" "D:/Assets/Programming/Python/Maya/ModularAutoRigger/TESTING_FILES/MISC\\Poses";
createNode transform -n "JOINTS" -p "TEMP_RigRoot";
	rename -uid "3CBA3365-4386-146F-66A2-C99160A9A47B";
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
	rename -uid "7F63A51C-48FB-677A-4979-CB81C4699DB7";
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
	setAttr ".t" -type "double3" 8.2724914959529574 136.60888383138146 -3.534698068765564 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.75649287571448476;
	setAttr ".ID" 16;
	setAttr ".pfrsName" -type "string" "Clav01";
createNode joint -n "Arm_Shoulder_L_JNT" -p "Clav_Clav01_L_JNT";
	rename -uid "C520EA2F-46C3-0E41-3859-3E9710322DAE";
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
	setAttr ".t" -type "double3" 5.9588618370174462 2.8421709430404007e-14 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 1.6370063315610384;
	setAttr ".ID" 5;
	setAttr ".pfrsName" -type "string" "Shoulder";
createNode joint -n "Arm_Elbow_L_JNT" -p "Arm_Shoulder_L_JNT";
	rename -uid "50970051-4652-4F00-B044-CBAAD72DD075";
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
	setAttr ".t" -type "double3" 22.969421813513964 2.8873685096186819e-06 -0.76394504341705227 ;
	setAttr ".r" -type "double3" 0 1.987846675914698e-15 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -1.9308742665174632 0 ;
	setAttr ".radi" 1.6210280660764069;
	setAttr ".ID" 6;
	setAttr ".pfrsName" -type "string" "Elbow";
createNode joint -n "ArmTwist_AT1_L_JNT" -p "Arm_Elbow_L_JNT";
	rename -uid "0AD60E1F-402A-E6AB-C066-63AE1148ACC9";
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
	setAttr ".t" -type "double3" 8.2590955173458198 2.8421709430404007e-14 -1.7763568394002505e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 1.1927080055488188e-15 0 ;
	setAttr ".ID" 17;
	setAttr ".pfrsName" -type "string" "AT1";
createNode joint -n "ArmTwist_AT2_L_JNT" -p "Arm_Elbow_L_JNT";
	rename -uid "C656162E-4E9C-C1B7-43A6-BAB1A8A49D47";
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
	setAttr ".t" -type "double3" 13.321355045119581 2.8421709430404007e-14 -2.6645352591003757e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ID" 18;
	setAttr ".pfrsName" -type "string" "AT2";
createNode joint -n "ArmTwist_AT3_L_JNT" -p "Arm_Elbow_L_JNT";
	rename -uid "DE20A73D-45DE-5382-57E4-0D8578E8EDBB";
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
	setAttr ".t" -type "double3" 18.524062215657011 0 -1.7763568394002505e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ID" 19;
	setAttr ".pfrsName" -type "string" "AT3";
createNode joint -n "Arm_Wrist_L_JNT" -p "Arm_Elbow_L_JNT";
	rename -uid "D5A0685C-42EF-F3CF-1B7A-C98D24DD9989";
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
	setAttr ".t" -type "double3" 22.673209277477213 2.8421709430404007e-14 1.1546319456101628e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ID" 7;
	setAttr ".pfrsName" -type "string" "Wrist";
createNode joint -n "Thumb_Thumb1_L_JNT" -p "Arm_Wrist_L_JNT";
	rename -uid "AB2E927C-4D3E-ADD8-CBA9-F386D0113B49";
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
	setAttr ".t" -type "double3" 3.6445232976520501 -2.8873685380403913e-06 3.0651836085220148 ;
	setAttr ".r" -type "double3" -3.5461978532003522e-15 -26.247570961685522 -40.942160957263454 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 1.9308742665174627 0 ;
	setAttr ".radi" 0.55172413793103448;
	setAttr ".ID" 24;
	setAttr ".pfrsName" -type "string" "Thumb1";
createNode joint -n "Thumb_Thumb2_L_JNT" -p "Thumb_Thumb1_L_JNT";
	rename -uid "816C6106-43CA-582C-D0EB-DC9407C870BE";
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
	setAttr ".t" -type "double3" 1.9999999999999929 5.6843418860808015e-14 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" 0 9.5371761283020255 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 25;
	setAttr ".pfrsName" -type "string" "Thumb2";
createNode joint -n "Thumb_Thumb3_L_JNT" -p "Thumb_Thumb2_L_JNT";
	rename -uid "9DFF9EF6-4C7E-9CA3-E79B-42B2A45F0D91";
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
	setAttr ".t" -type "double3" 1.9068061047389904 0 1.2434497875801753e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 26;
	setAttr ".pfrsName" -type "string" "Thumb3";
createNode joint -n "Thumb_Thumb4_L_JNT" -p "Thumb_Thumb3_L_JNT";
	rename -uid "99BBD21D-4BD1-1082-ABC0-7B8DED7F5F8D";
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
	setAttr ".t" -type "double3" 2.0644873462884448 0 -0.5454589634978948 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 27;
	setAttr ".pfrsName" -type "string" "Thumb4";
createNode joint -n "Pinkie_Pinkey1_L_JNT" -p "Arm_Wrist_L_JNT";
	rename -uid "B4525FA0-4B91-C115-1D3E-6196F600DDF9";
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
	setAttr ".t" -type "double3" 4.4857089105952213 -2.8873685380403913e-06 -3.9422975888058112 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 1.9308742665174627 0 ;
	setAttr ".radi" 0.55172413793103448;
	setAttr ".ID" 8;
	setAttr ".pfrsName" -type "string" "Pinkey1";
createNode joint -n "Pinkie_Pinkey2_L_JNT" -p "Pinkie_Pinkey1_L_JNT";
	rename -uid "44C690C5-4650-94D2-4589-32B8915894CB";
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
	setAttr ".t" -type "double3" 2.6788155899991892 2.8421709430404007e-14 -1.7763568394002505e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 9;
	setAttr ".pfrsName" -type "string" "Pinkey2";
createNode joint -n "Pinkie_Pinkey3_L_JNT" -p "Pinkie_Pinkey2_L_JNT";
	rename -uid "8B3342EB-4109-B3DC-5603-CE93FABDE0DF";
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
	setAttr ".t" -type "double3" 2.7759646736007113 -0.31684435439672143 -8.8817841970012523e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 10;
	setAttr ".pfrsName" -type "string" "Pinkey3";
createNode joint -n "Pinkie_Pinkey4_L_JNT" -p "Pinkie_Pinkey3_L_JNT";
	rename -uid "89601E58-43BA-01A3-CC7B-5C99224796B8";
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
	setAttr ".t" -type "double3" 2.5452197364001563 -0.73726913738840949 8.8817841970012523e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 11;
	setAttr ".pfrsName" -type "string" "Pinkey4";
createNode joint -n "Index_Index1_L_JNT" -p "Arm_Wrist_L_JNT";
	rename -uid "65899A1D-41B4-58B2-2BF3-82B07FA2BECF";
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
	setAttr ".t" -type "double3" 4.9648392370963563 -2.8873685380403913e-06 1.4343524763647757 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 1.9308742665174627 0 ;
	setAttr ".radi" 0.55172413793103448;
	setAttr ".ID" 20;
	setAttr ".pfrsName" -type "string" "Index1";
createNode joint -n "Index_Index2_L_JNT" -p "Index_Index1_L_JNT";
	rename -uid "8B8E5139-4262-94AB-E3CE-0D92E19D11A0";
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
	setAttr ".t" -type "double3" 2.6788155899991608 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 21;
	setAttr ".pfrsName" -type "string" "Index2";
createNode joint -n "Index_Index3_L_JNT" -p "Index_Index2_L_JNT";
	rename -uid "C8D3EC99-454A-A199-64A3-939E6B298FA7";
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
	setAttr ".t" -type "double3" 2.7759646736006829 -0.31684435439674985 -4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 22;
	setAttr ".pfrsName" -type "string" "Index3";
createNode joint -n "Index_Index4_L_JNT" -p "Index_Index3_L_JNT";
	rename -uid "B98422FB-4C9C-C83E-C98A-359AF212ED41";
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
	setAttr ".t" -type "double3" 2.5452197364001421 -0.73726913738843791 4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 23;
	setAttr ".pfrsName" -type "string" "Index4";
createNode joint -n "Ring_Ring1_L_JNT" -p "Arm_Wrist_L_JNT";
	rename -uid "614504A2-4B4E-F3D1-94CD-90A58E08AC5B";
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
	setAttr ".t" -type "double3" 5.7284295193343127 -2.8873685096186819e-06 -2.0040592023330426 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 1.9308742665174627 0 ;
	setAttr ".radi" 0.55172413793103448;
	setAttr ".ID" 1;
	setAttr ".pfrsName" -type "string" "Ring1";
createNode joint -n "Ring_Ring2_L_JNT" -p "Ring_Ring1_L_JNT";
	rename -uid "98B8DA33-4E1A-668F-3825-21AEBB29DDF7";
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
	setAttr ".t" -type "double3" 2.6788155899991608 -5.6843418860808015e-14 8.8817841970012523e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 2;
	setAttr ".pfrsName" -type "string" "Ring2";
createNode joint -n "Ring_Ring3_L_JNT" -p "Ring_Ring2_L_JNT";
	rename -uid "DD8B317A-4D92-9CC5-7600-1EBBECF496FC";
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
	setAttr ".t" -type "double3" 2.7759646736006687 -0.31684435439677827 -8.8817841970012523e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 3;
	setAttr ".pfrsName" -type "string" "Ring3";
createNode joint -n "Ring_Ring4_L_JNT" -p "Ring_Ring3_L_JNT";
	rename -uid "9B237966-4F2F-F773-A804-2BA46777AEF0";
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
	setAttr ".t" -type "double3" 2.5452197364001279 -0.73726913738846633 -8.8817841970012523e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 4;
	setAttr ".pfrsName" -type "string" "Ring4";
createNode joint -n "Middle_Middle1_L_JNT" -p "Arm_Wrist_L_JNT";
	rename -uid "C0AB48BB-4775-964B-2574-289C20A830BD";
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
	setAttr ".t" -type "double3" 5.7254400679154713 -2.8873685380403913e-06 -0.15696195575257654 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 1.9308742665174627 0 ;
	setAttr ".radi" 0.55172413793103448;
	setAttr ".ID" 12;
	setAttr ".pfrsName" -type "string" "Middle1";
createNode joint -n "Middle_Middle2_L_JNT" -p "Middle_Middle1_L_JNT";
	rename -uid "CBA79C54-433B-A385-C0A8-66826767ACE3";
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
	setAttr ".t" -type "double3" 2.6788155899991466 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 13;
	setAttr ".pfrsName" -type "string" "Middle2";
createNode joint -n "Middle_Middle3_L_JNT" -p "Middle_Middle2_L_JNT";
	rename -uid "99AD8E17-4CF4-1382-DB07-41ACF32D10AF";
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
	setAttr ".t" -type "double3" 2.7759646736006687 -0.31684435439674985 -8.8817841970012523e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 14;
	setAttr ".pfrsName" -type "string" "Middle3";
createNode joint -n "Middle_Middle4_L_JNT" -p "Middle_Middle3_L_JNT";
	rename -uid "EEA74854-4663-DBB8-E70B-10936B66847C";
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
	setAttr ".t" -type "double3" 2.5452197364001421 -0.73726913738843791 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 15;
	setAttr ".pfrsName" -type "string" "Middle4";
createNode transform -n "LIMBS" -p "TEMP_RigRoot";
	rename -uid "C8F7191B-46D5-A618-CDDE-A187237CDF89";
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
	rename -uid "9EBDBEA3-4924-C28F-BC25-8F82696D24A7";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 10 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3:Custom4:Custom5" 
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
	addAttr -ci true -sn "enableEndControl" -ln "enableEndControl" -dv 1 -min 0 -max 
		1 -at "bool";
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
	setAttr ".ID" 1;
	setAttr ".pfrsName" -type "string" "Ring";
	setAttr ".limbType" 4;
	setAttr ".side" 1;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Ring1_Joint_L_GRP0" -p "Ring_Limb_L_NODE";
	rename -uid "CD5069FF-4158-08F7-ED1B-7094444943E0";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 65.653811871969495 136.60888383138146 -5.3446071312575167 ;
	setAttr ".r" -type "double3" 0 3.975693351829396e-16 0 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring1_Joint_L_CTR0" -p "Ring1_Joint_L_GRP0";
	rename -uid "8C41D810-491A-D666-5D67-CD9745D5B587";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring1_Joint_L_CTR0Shape" -p "Ring1_Joint_L_CTR0";
	rename -uid "CC6F359F-4ACF-E276-5BEC-22B6D3517482";
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
createNode transform -n "Ring2_Joint_L_GRP1" -p "Ring_Limb_L_NODE";
	rename -uid "5FC4CFD6-4914-B936-2D79-C3BE28DD5690";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 68.33262746196867 136.60888383138146 -5.3446071312575167 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring2_Joint_L_CTR1" -p "Ring2_Joint_L_GRP1";
	rename -uid "B78BC1A5-4E93-1A00-CB6B-EAAACA6CCC45";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring2_Joint_L_CTR1Shape" -p "Ring2_Joint_L_CTR1";
	rename -uid "E70ED82C-47E1-6DDA-CAD5-BAB9C8D49F4C";
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
createNode transform -n "Ring3_Joint_L_GRP2" -p "Ring_Limb_L_NODE";
	rename -uid "C669022E-4543-43FC-4730-6BA5E20CE58B";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 71.108592135569353 136.29203947698471 -5.3446071312575167 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring3_Joint_L_CTR2" -p "Ring3_Joint_L_GRP2";
	rename -uid "CCB30F72-46FC-BD3C-D476-D889D4F193DD";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring3_Joint_L_CTR2Shape" -p "Ring3_Joint_L_CTR2";
	rename -uid "613116AA-4129-EBA3-1366-31ACA5DB56CD";
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
createNode transform -n "Ring4_Joint_L_GRP3" -p "Ring_Limb_L_NODE";
	rename -uid "8DEEF733-495A-9D28-D62E-F9A8647834DA";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 73.653811871969495 135.55477033959627 -5.3446071312575159 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring4_Joint_L_CTR3" -p "Ring4_Joint_L_GRP3";
	rename -uid "DFA85910-455E-75D8-7AD0-D396D38A160F";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring4_Joint_L_CTR3Shape" -p "Ring4_Joint_L_CTR3";
	rename -uid "30E019AB-4410-BE56-176F-97BAEF5C16D3";
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
createNode transform -n "Arm_Limb_L_NODE" -p "LIMBS";
	rename -uid "D40FF1E7-416D-6147-B65E-ACAB1E10225D";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 10 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3:Custom4:Custom5" 
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
	addAttr -ci true -sn "enableEndControl" -ln "enableEndControl" -dv 1 -min 0 -max 
		1 -at "bool";
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
	setAttr ".ID" 2;
	setAttr ".pfrsName" -type "string" "Arm";
	setAttr ".limbType" 4;
	setAttr ".side" 1;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Shoulder_Joint_L_GRP0" -p "Arm_Limb_L_NODE";
	rename -uid "59A5C8D0-4819-FE85-DCD6-8C8B5FDF17BE";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 14.231353332970407 136.60888383138146 -3.534698068765564 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Shoulder_Joint_L_CTR0" -p "Shoulder_Joint_L_GRP0";
	rename -uid "461A877E-4FEA-1B15-219A-8A943904309B";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Shoulder_Joint_L_CTR0Shape" -p "Shoulder_Joint_L_CTR0";
	rename -uid "AC50F12B-4F4B-4425-D811-638BDFF8A18E";
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
createNode transform -n "Elbow_Joint_L_GRP1" -p "Arm_Limb_L_NODE";
	rename -uid "18AD3160-403F-5773-7072-3BA7FCABBE68";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 37.200775146484375 136.60888671875 -4.2986431121826172 ;
	setAttr ".r" -type "double3" 0 -1.930874266517461 0 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Elbow_Joint_L_CTR1" -p "Elbow_Joint_L_GRP1";
	rename -uid "A7C73297-40A5-215B-FA2E-56A845C149DE";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Elbow_Joint_L_CTR1Shape" -p "Elbow_Joint_L_CTR1";
	rename -uid "BED13D01-4D35-D44B-D8A6-83A2D32F4C6A";
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
createNode transform -n "Wrist_Joint_L_GRP2" -p "Arm_Limb_L_NODE";
	rename -uid "E933C2F3-4FDF-3352-3587-CD96D28FD9A9";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 59.861110687255866 136.60888671875 -3.5346980094909677 ;
	setAttr ".r" -type "double3" 0 -1.930874266517461 0 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Wrist_Joint_L_CTR2" -p "Wrist_Joint_L_GRP2";
	rename -uid "8C19837C-4F91-7D0E-3E91-4387EE15C187";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Wrist_Joint_L_CTR2Shape" -p "Wrist_Joint_L_CTR2";
	rename -uid "9059C0EF-42FE-1087-0E7C-3DBA20BDEC41";
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
createNode transform -n "Pinkie_Limb_L_NODE" -p "LIMBS";
	rename -uid "C5736F83-457F-19BD-D51D-F1BA8125C7D5";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 10 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3:Custom4:Custom5" 
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
	addAttr -ci true -sn "enableEndControl" -ln "enableEndControl" -dv 1 -min 0 -max 
		1 -at "bool";
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
	setAttr ".ID" 3;
	setAttr ".pfrsName" -type "string" "Pinkie";
	setAttr ".limbType" 4;
	setAttr ".side" 1;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Pinkey1_Joint_L_GRP0" -p "Pinkie_Limb_L_NODE";
	rename -uid "BB61347B-4C27-1FBF-CCE3-4A94F4CAB83C";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 64.477103364243277 136.60888383138146 -7.3236168942516544 ;
	setAttr ".r" -type "double3" 0 3.975693351829396e-16 0 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinkey1_Joint_L_CTR0" -p "Pinkey1_Joint_L_GRP0";
	rename -uid "32C14BF9-4BC3-FEBD-08CA-71AFD1F65743";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinkey1_Joint_L_CTR0Shape" -p "Pinkey1_Joint_L_CTR0";
	rename -uid "6F25EA09-41C1-0298-8CC0-31B3BDCBABA7";
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
createNode transform -n "Pinkey2_Joint_L_GRP1" -p "Pinkie_Limb_L_NODE";
	rename -uid "8B7FE50D-4A6A-A9D7-59E2-52802D5F7022";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 67.155918954242452 136.60888383138146 -7.3236168942516544 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinkey2_Joint_L_CTR1" -p "Pinkey2_Joint_L_GRP1";
	rename -uid "4D05A59E-4D17-DF57-341F-13B679DA8036";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinkey2_Joint_L_CTR1Shape" -p "Pinkey2_Joint_L_CTR1";
	rename -uid "CA579973-48C3-C6E1-1E8D-749DD19AE98E";
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
createNode transform -n "Pinkey3_Joint_L_GRP2" -p "Pinkie_Limb_L_NODE";
	rename -uid "F2D63C1B-4EC5-2CE3-1822-9790A1B6E582";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 69.931883627843135 136.29203947698471 -7.3236168942516544 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinkey3_Joint_L_CTR2" -p "Pinkey3_Joint_L_GRP2";
	rename -uid "51C56BA6-48B6-7C02-8317-A9A4BF31CEED";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinkey3_Joint_L_CTR2Shape" -p "Pinkey3_Joint_L_CTR2";
	rename -uid "DC27D45C-4A8B-5400-27B2-B38D7A98DE2E";
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
createNode transform -n "Pinkey4_Joint_L_GRP3" -p "Pinkie_Limb_L_NODE";
	rename -uid "C6D6850A-43A3-9D4A-ECEB-B380757A3C98";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 72.477103364243277 135.55477033959627 -7.3236168942516535 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinkey4_Joint_L_CTR3" -p "Pinkey4_Joint_L_GRP3";
	rename -uid "07A3D389-4B56-85EC-A5D8-30B3A475412D";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinkey4_Joint_L_CTR3Shape" -p "Pinkey4_Joint_L_CTR3";
	rename -uid "D742D1C3-4A46-4AC3-645D-E9AB0C12E375";
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
createNode transform -n "Middle_Limb_L_NODE" -p "LIMBS";
	rename -uid "4C03EE4F-457C-5C8E-C365-53882946DAA3";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 10 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3:Custom4:Custom5" 
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
	addAttr -ci true -sn "enableEndControl" -ln "enableEndControl" -dv 1 -min 0 -max 
		1 -at "bool";
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
	setAttr ".ID" 4;
	setAttr ".pfrsName" -type "string" "Middle";
	setAttr ".limbType" 4;
	setAttr ".side" 1;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Middle1_Joint_L_GRP0" -p "Middle_Limb_L_NODE";
	rename -uid "3A5922A7-4380-17BF-9AE9-14952C96FED2";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 65.588588512988579 136.60888383138146 -3.4986593831919954 ;
	setAttr ".r" -type "double3" 0 3.975693351829396e-16 0 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle1_Joint_L_CTR0" -p "Middle1_Joint_L_GRP0";
	rename -uid "C00F779F-4863-CA39-F5BB-468313B5D1F9";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle1_Joint_L_CTR0Shape" -p "Middle1_Joint_L_CTR0";
	rename -uid "A0F3D7C9-4289-C9A3-0721-CABF84816AD7";
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
createNode transform -n "Middle2_Joint_L_GRP1" -p "Middle_Limb_L_NODE";
	rename -uid "A11E12D0-4241-4200-C062-47B8488689D9";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 68.267404102987754 136.60888383138146 -3.4986593831919954 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle2_Joint_L_CTR1" -p "Middle2_Joint_L_GRP1";
	rename -uid "1F7C1030-4BB1-A12E-6DC6-B093846D436D";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle2_Joint_L_CTR1Shape" -p "Middle2_Joint_L_CTR1";
	rename -uid "807D3BAE-4FEB-2E57-7371-7293E99433BD";
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
createNode transform -n "Middle3_Joint_L_GRP2" -p "Middle_Limb_L_NODE";
	rename -uid "BCE1B088-448E-6ABE-89FC-07BB2E0AF5D4";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 71.043368776588423 136.29203947698471 -3.4986593831919959 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle3_Joint_L_CTR2" -p "Middle3_Joint_L_GRP2";
	rename -uid "37A17CC4-4CA2-20BA-3F4A-67B90896E6CC";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle3_Joint_L_CTR2Shape" -p "Middle3_Joint_L_CTR2";
	rename -uid "AD31FDE6-42DA-7F74-5184-2CBDB84F94B7";
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
createNode transform -n "Middle4_Joint_L_GRP3" -p "Middle_Limb_L_NODE";
	rename -uid "D6368A3D-4A3C-D87F-CBF5-08BD88834CDD";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 73.588588512988565 135.55477033959627 -3.4986593831919954 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle4_Joint_L_CTR3" -p "Middle4_Joint_L_GRP3";
	rename -uid "0941011C-4719-20B1-B821-FBA62A29D9DB";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle4_Joint_L_CTR3Shape" -p "Middle4_Joint_L_CTR3";
	rename -uid "EF40D3C6-49BA-4145-C5B5-119121E3D2BA";
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
createNode transform -n "Clav_Limb_L_NODE" -p "LIMBS";
	rename -uid "47251ADC-42B9-0D52-E00E-9580564732C1";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 10 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3:Custom4:Custom5" 
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
	setAttr ".ID" 5;
	setAttr ".pfrsName" -type "string" "Clav";
	setAttr ".limbType" 1;
	setAttr ".side" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "Clav01_Joint_L_GRP0" -p "Clav_Limb_L_NODE";
	rename -uid "439CDB62-4952-BB69-CDAE-4AAF5DD79025";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 8.2724914959529556 136.60888383138146 -3.5346980687655636 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Clav01_Joint_L_CTR0" -p "Clav01_Joint_L_GRP0";
	rename -uid "BB038163-4C7B-3346-40AB-CAB36044C954";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Clav01_Joint_L_CTR0Shape" -p "Clav01_Joint_L_CTR0";
	rename -uid "9FE30957-428A-D82E-8DF4-0C9459229289";
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
	rename -uid "378FAD41-4F9F-24ED-8C9D-A18DBAB136E3";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 10 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3:Custom4:Custom5" 
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
	addAttr -ci true -sn "enableEndControl" -ln "enableEndControl" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "cstType" -ln "cstType" -min 0 -max 3 -en "Orient:Parent:Point:Scale" 
		-at "enum";
	addAttr -ci true -sn "cstTargetJointIndex" -ln "cstTargetJointIndex" -at "short";
	addAttr -ci true -sn "cstPosX" -ln "cstPosX" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cstPosY" -ln "cstPosY" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cstPosZ" -ln "cstPosZ" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cstRotX" -ln "cstRotX" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cstRotY" -ln "cstRotY" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "cstRotZ" -ln "cstRotZ" -dv 1 -min 0 -max 1 -at "bool";
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
	setAttr ".ID" 6;
	setAttr ".pfrsName" -type "string" "ArmTwist";
	setAttr ".limbType" 2;
	setAttr ".side" 1;
	setAttr ".limbParentJoint" 1;
	setAttr ".bhvType" -type "string" "Constraint";
	setAttr ".bhvFile" -type "string" "Constraint_01";
	setAttr ".cstTargetJointIndex" 2;
createNode transform -n "AT2_Joint_L_GRP1" -p "ArmTwist_Limb_L_NODE";
	rename -uid "C48A2B27-4F73-5FC8-3674-31971D12DA3A";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "cstWeight" -ln "cstWeight" -dv 0.5 -min 0 -max 1 -at "float";
	setAttr ".t" -type "double3" 50.514566391732686 136.60888671875 -3.8497969068046736 ;
	setAttr ".r" -type "double3" 0 -1.9308742665174592 0 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "AT2_Joint_L_CTR1" -p "AT2_Joint_L_GRP1";
	rename -uid "39789909-44A5-8A7A-F2FF-D096CBCA3221";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "AT2_Joint_L_CTR1Shape" -p "AT2_Joint_L_CTR1";
	rename -uid "9F6CC98B-439F-749B-6FE6-54B7529C65B0";
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
createNode transform -n "AT1_Joint_L_GRP0" -p "ArmTwist_Limb_L_NODE";
	rename -uid "A06BA7C8-4AD3-FA44-4DAB-6296111F359C";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "cstWeight" -ln "cstWeight" -dv 0.5 -min 0 -max 1 -at "float";
	setAttr ".t" -type "double3" 45.455181190019204 136.60888671875 -4.0203633373204664 ;
	setAttr ".r" -type "double3" 0 -1.9308742665174592 0 ;
	setAttr ".groupType" -type "string" "Joint";
	setAttr ".cstWeight" 0.29487180709838867;
createNode transform -n "AT1_Joint_L_CTR0" -p "AT1_Joint_L_GRP0";
	rename -uid "508F9931-4868-F14A-7CE5-ED890AD85B87";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "AT1_Joint_L_CTR0Shape" -p "AT1_Joint_L_CTR0";
	rename -uid "976A2C04-48BE-E9E7-C8F6-EB8A79C28DA1";
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
createNode transform -n "AT3_Joint_L_GRP2" -p "ArmTwist_Limb_L_NODE";
	rename -uid "FE088CDA-4655-4629-91CD-0AB6E65E42A7";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "cstWeight" -ln "cstWeight" -dv 0.5 -min 0 -max 1 -at "float";
	setAttr ".t" -type "double3" 55.714319490729075 136.60888671875 -3.6744982706464944 ;
	setAttr ".r" -type "double3" 0 -1.9308742665174592 0 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
	setAttr ".cstWeight" 0.76923078298568726;
createNode transform -n "AT3_Joint_L_CTR2" -p "AT3_Joint_L_GRP2";
	rename -uid "DA2579C0-4FEC-516B-5605-DFB6ECA58A3F";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "AT3_Joint_L_CTR2Shape" -p "AT3_Joint_L_CTR2";
	rename -uid "6F69416F-4B79-6D6C-1A2D-5B85B2F2AC4C";
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
createNode transform -n "Index_Limb_L_NODE" -p "LIMBS";
	rename -uid "3C1DE0CA-4503-5C90-28CA-D2A1AE67942B";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 10 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3:Custom4:Custom5" 
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
	addAttr -ci true -sn "enableEndControl" -ln "enableEndControl" -dv 1 -min 0 -max 
		1 -at "bool";
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
	setAttr ".ID" 7;
	setAttr ".pfrsName" -type "string" "Index";
	setAttr ".limbType" 4;
	setAttr ".side" 1;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Index1_Joint_L_GRP0" -p "Index_Limb_L_NODE";
	rename -uid "7FB60ADF-440B-1B70-D617-C48BC4F993BF";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 64.77480222096429 136.60888383138146 -1.9338759743391822 ;
	setAttr ".r" -type "double3" 0 3.975693351829396e-16 0 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index1_Joint_L_CTR0" -p "Index1_Joint_L_GRP0";
	rename -uid "EA6B7753-4AB0-9368-F0B3-268C08C72BFE";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index1_Joint_L_CTR0Shape" -p "Index1_Joint_L_CTR0";
	rename -uid "C29A8A73-4613-3F04-C7CC-BCAFEA1F959F";
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
createNode transform -n "Index2_Joint_L_GRP1" -p "Index_Limb_L_NODE";
	rename -uid "099B9E90-4DF4-FF99-85E3-579D7686E56B";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 67.453617810963465 136.60888383138146 -1.9338759743391822 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index2_Joint_L_CTR1" -p "Index2_Joint_L_GRP1";
	rename -uid "AEE56D45-4AF0-A8DC-4B2E-66BEB41B0649";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index2_Joint_L_CTR1Shape" -p "Index2_Joint_L_CTR1";
	rename -uid "5177026D-4167-AC93-7B40-C6B357C0D9D8";
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
createNode transform -n "Index3_Joint_L_GRP2" -p "Index_Limb_L_NODE";
	rename -uid "1D92867A-4100-7B8F-AB9E-B681D23CF7EE";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 70.229582484564148 136.29203947698471 -1.9338759743391827 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index3_Joint_L_CTR2" -p "Index3_Joint_L_GRP2";
	rename -uid "14CFA720-4EE7-553C-F436-B0ADBE7406AE";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index3_Joint_L_CTR2Shape" -p "Index3_Joint_L_CTR2";
	rename -uid "9066F4AF-43F2-014E-1A8A-9E82F2749EBE";
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
createNode transform -n "Index4_Joint_L_GRP3" -p "Index_Limb_L_NODE";
	rename -uid "D20A2267-42CA-B9DB-2637-DFB23E6E07D0";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 72.77480222096429 135.55477033959627 -1.9338759743391822 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index4_Joint_L_CTR3" -p "Index4_Joint_L_GRP3";
	rename -uid "6D826ED6-41D0-BD8D-24CA-26863138A661";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index4_Joint_L_CTR3Shape" -p "Index4_Joint_L_CTR3";
	rename -uid "D298523A-46A1-F53D-BF22-BD88A9CA16CA";
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
createNode transform -n "Thumb_Limb_L_NODE" -p "LIMBS";
	rename -uid "E085ED06-447A-928F-61F3-98A969FA9D4F";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 10 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3:Custom4:Custom5" 
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
	addAttr -ci true -sn "enableEndControl" -ln "enableEndControl" -dv 1 -min 0 -max 
		1 -at "bool";
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
	setAttr ".ID" 8;
	setAttr ".pfrsName" -type "string" "Thumb";
	setAttr ".limbType" 4;
	setAttr ".side" 1;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Thumb1_Joint_L_GRP0" -p "Thumb_Limb_L_NODE";
	rename -uid "14E968E9-494A-D7FE-CACF-7391B664028D";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 63.400287158585215 136.60888383138146 -0.34845719532305131 ;
	setAttr ".r" -type "double3" -1.7730989266001761e-15 -26.247570961685511 -40.942160957263447 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb1_Joint_L_CTR0" -p "Thumb1_Joint_L_GRP0";
	rename -uid "E89B36CF-44B3-3608-91A8-7C87E870BABA";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 2.8421709430404007e-14 -7.1054273576010019e-15 ;
	setAttr ".rp" -type "double3" -2.8421709430404007e-14 5.6843418860808015e-14 -7.1054273576010019e-15 ;
	setAttr ".sp" -type "double3" -2.8421709430404007e-14 5.6843418860808015e-14 -7.1054273576010019e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb1_Joint_L_CTR0Shape" -p "Thumb1_Joint_L_CTR0";
	rename -uid "558EF921-49AC-3BA4-6422-A89CB55E33E7";
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
		-7.1054274e-15 -1.4210855e-14 2.8421709e-14 -7.1054274e-15 -1.4210855e-14 2.8421709e-14 
		-7.1054274e-15 -1.4210855e-14 2.8421709e-14 -7.1054274e-15 -1.4210855e-14 2.8421709e-14 
		-7.1054274e-15 -1.4210855e-14 2.8421709e-14 -7.1054274e-15 -1.4210855e-14 2.8421709e-14 
		-7.1054274e-15 -1.4210855e-14 2.8421709e-14 -7.1054274e-15;
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
createNode transform -n "Thumb2_Joint_L_GRP1" -p "Thumb_Limb_L_NODE";
	rename -uid "901875CF-4053-60DD-985A-5CBFAFC4A0E5";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 64.755259656484242 135.43342353024963 0.53604413898926684 ;
	setAttr ".r" -type "double3" 0 -16.7103948333835 -40.942160957263447 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb2_Joint_L_CTR1" -p "Thumb2_Joint_L_GRP1";
	rename -uid "4A0CD575-42A1-1F13-F4A2-FD944A106799";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 2.8421709430404007e-14 1.7763568394002505e-15 ;
	setAttr ".rp" -type "double3" -2.1316282072803006e-14 5.6843418860808015e-14 0 ;
	setAttr ".sp" -type "double3" -2.1316282072803006e-14 5.6843418860808015e-14 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb2_Joint_L_CTR1Shape" -p "Thumb2_Joint_L_CTR1";
	rename -uid "9D8C705E-45FE-E88A-5B7B-87A11517A511";
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
		1.7763568e-15 -1.4210855e-14 2.8421709e-14 1.7763568e-15 -1.4210855e-14 2.8421709e-14 
		1.7763568e-15 -1.4210855e-14 2.8421709e-14 1.7763568e-15 -1.4210855e-14 2.8421709e-14 
		1.7763568e-15 -1.4210855e-14 2.8421709e-14 1.7763568e-15 -1.4210855e-14 2.8421709e-14 
		1.7763568e-15 -1.4210855e-14 2.8421709e-14 1.7763568e-15;
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
createNode transform -n "Thumb3_Joint_L_GRP2" -p "Thumb_Limb_L_NODE";
	rename -uid "B742B14F-42AC-0476-92FF-78B774518B7C";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 66.134781242273945 134.23666650295607 1.0843162730920537 ;
	setAttr ".r" -type "double3" 0 -16.7103948333835 -40.942160957263447 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb3_Joint_L_CTR2" -p "Thumb3_Joint_L_GRP2";
	rename -uid "B5A60E56-4BB8-0719-B835-C59DAF5BC1B0";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 2.8421709430404007e-14 1.7763568394002505e-15 ;
	setAttr ".rp" -type "double3" 0 5.6843418860808015e-14 7.1054273576010019e-15 ;
	setAttr ".sp" -type "double3" 0 5.6843418860808015e-14 7.1054273576010019e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb3_Joint_L_CTR2Shape" -p "Thumb3_Joint_L_CTR2";
	rename -uid "04C27B4D-41F0-81F5-D314-B09F2AF84DAB";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 2.8421709e-14 1.7763568e-15 
		0 2.8421709e-14 1.7763568e-15 0 2.8421709e-14 1.7763568e-15 0 2.8421709e-14 1.7763568e-15 
		0 2.8421709e-14 1.7763568e-15 0 2.8421709e-14 1.7763568e-15 0 2.8421709e-14 1.7763568e-15 
		0 2.8421709e-14 1.7763568e-15;
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
createNode transform -n "Thumb4_Joint_L_GRP3" -p "Thumb_Limb_L_NODE";
	rename -uid "0769ACBB-4C89-17FE-6AA6-9696F4275758";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 67.746851922002591 132.83816941937852 1.1555027509490317 ;
	setAttr ".r" -type "double3" 0 -16.7103948333835 -40.942160957263447 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999978 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb4_Joint_L_CTR3" -p "Thumb4_Joint_L_GRP3";
	rename -uid "FC056B97-4721-F034-8847-43A9413F98AC";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -2.1316282072803006e-14 2.8421709430404007e-14 3.5527136788005009e-15 ;
	setAttr ".rp" -type "double3" -3.5527136788005009e-14 2.8421709430404007e-14 3.5527136788005009e-15 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-14 2.8421709430404007e-14 3.5527136788005009e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb4_Joint_L_CTR3Shape" -p "Thumb4_Joint_L_CTR3";
	rename -uid "BD85051A-4973-7DAD-8FEF-19AF61FEB710";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -2.1316282e-14 2.8421709e-14 
		3.5527137e-15 -2.1316282e-14 2.8421709e-14 3.5527137e-15 -2.1316282e-14 2.8421709e-14 
		3.5527137e-15 -2.1316282e-14 2.8421709e-14 3.5527137e-15 -2.1316282e-14 2.8421709e-14 
		3.5527137e-15 -2.1316282e-14 2.8421709e-14 3.5527137e-15 -2.1316282e-14 2.8421709e-14 
		3.5527137e-15 -2.1316282e-14 2.8421709e-14 3.5527137e-15;
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
createNode transform -n "MESHES" -p "TEMP_RigRoot";
	rename -uid "F291BB53-495B-C709-0A5F-FDAD2A683DE5";
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
createNode transform -n "BAKED_DATA" -p "TEMP_RigRoot";
	rename -uid "AA90875B-4EDC-77FE-3345-00928977F8BF";
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
	rename -uid "BBAE67A2-4763-FCD8-D70F-05829DAE6FAC";
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
	rename -uid "21DD8A8D-462B-08DA-A770-15B08AEDE087";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Circle_Wire";
createNode nurbsCurve -n "Circle_WireShape" -p "Circle_Wire";
	rename -uid "AFC3C2EA-4014-E810-0267-B39197CC4212";
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
	rename -uid "8CB308FB-4203-C0EB-BF86-64ABE0543E95";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Cube_PolyShape" -p "Cube_Poly";
	rename -uid "400F25D2-4C33-4EDC-9814-C7ACA586924D";
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
	rename -uid "A7297D24-4590-7311-400D-FC876D5D96AF";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cube_Wire";
createNode nurbsCurve -n "Cube_WireShape" -p "Cube_Wire";
	rename -uid "1784F54A-42D8-BFCC-F3A2-CE9435AF3014";
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
	rename -uid "BB36713E-44A2-94A4-49DB-5D98FFE43E0C";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cylinder_Poly";
createNode mesh -n "Cylinder_PolyShape" -p "Cylinder_Poly";
	rename -uid "4D79F5AF-4F8E-E1D5-1CEC-24ADF1C8203F";
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
	rename -uid "6EF4FC37-4EF1-3AA3-26B8-B78C73A9A3DF";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Diamond_Wire";
createNode nurbsCurve -n "Diamond_WireShape" -p "Diamond_Wire";
	rename -uid "510ADFB9-407A-EC43-3113-ED9A5B36B770";
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
	rename -uid "895BEBE2-4F67-AC66-2418-53A5E1D47856";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Pin_Wire";
createNode nurbsCurve -n "Pin_WireShape" -p "Pin_Wire";
	rename -uid "1C507ABF-4B14-8C98-DA37-FBBD9E0209DE";
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
	rename -uid "BFD7D5A1-4DFF-B1C9-60FF-F8A9EFF0C639";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Sphere_Poly";
createNode mesh -n "Sphere_PolyShape" -p "Sphere_Poly";
	rename -uid "350D818C-4C18-FAA0-B962-B8BC96C3BBA3";
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
	rename -uid "C0AA21B0-4B36-3700-C127-2F963BD8902B";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Square_Wire";
createNode nurbsCurve -n "Square_WireShape" -p "Square_Wire";
	rename -uid "DCA72AC6-441D-FA44-DFBD-96BF91670565";
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
	rename -uid "566EF58C-438A-E8CA-1AC8-96A0313850F8";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "6EA17AA3-4262-3AE5-75B7-ED8CCE27E62D";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "14383E12-4F2F-185F-03A3-79AFB6216ED1";
createNode displayLayerManager -n "layerManager";
	rename -uid "51E280C4-401A-F4F3-E789-6DAFED236239";
	setAttr -s 4 ".dli[1:3]"  1 2 3;
	setAttr -s 4 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "53D18D38-4AFC-2C2B-3D3D-16A17114D1FC";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "49ACFBCA-448F-9F1E-9519-5CAA6CBB3AC7";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "956C5C69-4E20-1616-D1B3-98AB025990FC";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "89C2EF42-4D29-0E0C-B4F5-12B170E928F0";
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
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1270\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1270\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1270\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 50 -size 100 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "B475E1CE-4090-0D9B-C292-55A814616893";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "Controls";
	rename -uid "190B7722-4D25-CDE9-C5AB-9DA505F7F041";
	setAttr ".dt" 2;
	setAttr ".do" 1;
createNode displayLayer -n "Joints";
	rename -uid "74266346-4DD6-BF37-4A7C-AAAAF08A1D47";
	setAttr ".dt" 2;
	setAttr ".do" 2;
createNode displayLayer -n "Meshes";
	rename -uid "6093F0BD-4A33-577B-DDE9-0AAC9D4A8A15";
	setAttr ".dt" 2;
	setAttr ".do" 3;
createNode lambert -n "TempMaterial";
	rename -uid "D15B8C8E-437A-FBAE-5C2F-33949D4D56DC";
	setAttr ".c" -type "float3" 1 0.92308331 0 ;
	setAttr ".it" -type "float3" 0.69277108 0.69277108 0.69277108 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "3F6850FE-4084-6C7F-FADD-FDBFF289148A";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "17102163-4B42-2359-0FFD-EB9AA3AB0878";
createNode surfaceShader -n "LControlsMaterial";
	rename -uid "64EF6157-409E-D0ED-71D0-D8ACFBB255D2";
	setAttr ".oc" -type "float3" 0 0 1 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "LControlsMaterialSG";
	rename -uid "0ECDAF43-49A6-FF6F-E563-D1BE6F3C13D5";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr -s 27 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "12820CE4-4C8F-17EA-E795-529C782302F2";
createNode surfaceShader -n "MControlsMaterial";
	rename -uid "642E7023-4513-2949-B794-868405E2A48B";
	setAttr ".oc" -type "float3" 1 1 0 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "MControlsMaterialSG";
	rename -uid "92B33F63-4D20-8BEB-63C3-EE98DB5ACC26";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "8C1D0ACF-4077-8F41-B946-EEBBE633FF3A";
createNode surfaceShader -n "RControlsMaterial";
	rename -uid "24C735F9-4BB6-943B-1B07-1FB2CF389393";
	setAttr ".oc" -type "float3" 1 0 0 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "RControlsMaterialSG";
	rename -uid "CB480FD4-4D85-AACF-1A9C-EA9DB024618E";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "46EECD3E-4343-6BAA-38EC-80993F3FCBE2";
createNode network -n "LimbPreset_ArmTwist_1";
	rename -uid "771854BB-4D08-4ACF-29C7-4983CA514042";
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
	setAttr ".presetName" -type "string" "FK";
	setAttr ".limbParentJoint" 1;
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
	setAttr ".enableLimb" yes;
createNode network -n "LimbPreset_ArmTwist_2";
	rename -uid "D88E1E1E-4112-756A-6E75-F4B8535EABCF";
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
	setAttr ".presetName" -type "string" "CST";
	setAttr ".limbParentJoint" 1;
	setAttr ".bhvFile" -type "string" "Constraint_01";
	setAttr ".enableLimb" yes;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "D240D200-4628-8DE0-868A-3AB07032F243";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -421.42855468250531 -324.99998708566085 ;
	setAttr ".tgi[0].vh" -type "double2" 421.42855468250531 323.80951094248991 ;
	setAttr -s 157 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 3380;
	setAttr ".tgi[0].ni[0].y" 2367.142822265625;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 3694.28564453125;
	setAttr ".tgi[0].ni[1].y" 8595.7138671875;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 4082.857177734375;
	setAttr ".tgi[0].ni[2].y" 7812.85693359375;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 3380;
	setAttr ".tgi[0].ni[3].y" 8337.142578125;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 3380;
	setAttr ".tgi[0].ni[4].y" 8781.4287109375;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 4082.857177734375;
	setAttr ".tgi[0].ni[5].y" 7580;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 4082.857177734375;
	setAttr ".tgi[0].ni[6].y" 7474.28564453125;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 4082.857177734375;
	setAttr ".tgi[0].ni[7].y" 7367.14306640625;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 4082.857177734375;
	setAttr ".tgi[0].ni[8].y" 7261.4287109375;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 3380;
	setAttr ".tgi[0].ni[9].y" 8235.7138671875;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 4082.857177734375;
	setAttr ".tgi[0].ni[10].y" 7094.28564453125;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 4082.857177734375;
	setAttr ".tgi[0].ni[11].y" 6985.71435546875;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 3380;
	setAttr ".tgi[0].ni[12].y" 8020;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 3694.28564453125;
	setAttr ".tgi[0].ni[13].y" 7421.4287109375;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 4082.857177734375;
	setAttr ".tgi[0].ni[14].y" 6758.5712890625;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" -4697.14306640625;
	setAttr ".tgi[0].ni[15].y" 10107.142578125;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 3694.28564453125;
	setAttr ".tgi[0].ni[16].y" 7694.28564453125;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 4082.857177734375;
	setAttr ".tgi[0].ni[17].y" 6541.4287109375;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 3380;
	setAttr ".tgi[0].ni[18].y" 7760;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 4082.857177734375;
	setAttr ".tgi[0].ni[19].y" 6382.85693359375;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 3694.28564453125;
	setAttr ".tgi[0].ni[20].y" 7091.4287109375;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 4082.857177734375;
	setAttr ".tgi[0].ni[21].y" 6224.28564453125;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 554.28570556640625;
	setAttr ".tgi[0].ni[22].y" 6182.85693359375;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 954.28570556640625;
	setAttr ".tgi[0].ni[23].y" 8432.857421875;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 1261.4285888671875;
	setAttr ".tgi[0].ni[24].y" 6551.4287109375;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 4082.857177734375;
	setAttr ".tgi[0].ni[25].y" 5951.4287109375;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 2684.28564453125;
	setAttr ".tgi[0].ni[26].y" 2318.571533203125;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 2070;
	setAttr ".tgi[0].ni[27].y" 6037.14306640625;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 4082.857177734375;
	setAttr ".tgi[0].ni[28].y" 5735.71435546875;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 3380;
	setAttr ".tgi[0].ni[29].y" 7861.4287109375;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" -3710;
	setAttr ".tgi[0].ni[30].y" 9791.4287109375;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 3072.857177734375;
	setAttr ".tgi[0].ni[31].y" 6334.28564453125;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 4082.857177734375;
	setAttr ".tgi[0].ni[32].y" 5462.85693359375;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 4082.857177734375;
	setAttr ".tgi[0].ni[33].y" 5361.4287109375;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 2377.142822265625;
	setAttr ".tgi[0].ni[34].y" 3617.142822265625;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" -1074.2857666015625;
	setAttr ".tgi[0].ni[35].y" 6118.5712890625;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 3072.857177734375;
	setAttr ".tgi[0].ni[36].y" 2740;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 2684.28564453125;
	setAttr ".tgi[0].ni[37].y" 3881.428466796875;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" -767.14288330078125;
	setAttr ".tgi[0].ni[38].y" 7682.85693359375;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 4082.857177734375;
	setAttr ".tgi[0].ni[39].y" -7914.28564453125;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 3072.857177734375;
	setAttr ".tgi[0].ni[40].y" 2841.428466796875;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 2070;
	setAttr ".tgi[0].ni[41].y" 7388.5712890625;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" -3402.857177734375;
	setAttr ".tgi[0].ni[42].y" 6984.28564453125;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 3072.857177734375;
	setAttr ".tgi[0].ni[43].y" 2044.2857666015625;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 2684.28564453125;
	setAttr ".tgi[0].ni[44].y" 2671.428466796875;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" -4082.857177734375;
	setAttr ".tgi[0].ni[45].y" 9417.142578125;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 2684.28564453125;
	setAttr ".tgi[0].ni[46].y" 2160;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 4082.857177734375;
	setAttr ".tgi[0].ni[47].y" 4574.28564453125;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 4082.857177734375;
	setAttr ".tgi[0].ni[48].y" -8117.14306640625;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 3072.857177734375;
	setAttr ".tgi[0].ni[49].y" 1371.4285888671875;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 2684.28564453125;
	setAttr ".tgi[0].ni[50].y" 3290;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 4082.857177734375;
	setAttr ".tgi[0].ni[51].y" 4358.5712890625;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" -4697.14306640625;
	setAttr ".tgi[0].ni[52].y" 10005.7138671875;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" -4697.14306640625;
	setAttr ".tgi[0].ni[53].y" 9904.2861328125;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 3380;
	setAttr ".tgi[0].ni[54].y" 7144.28564453125;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 3380;
	setAttr ".tgi[0].ni[55].y" 7042.85693359375;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" -4697.14306640625;
	setAttr ".tgi[0].ni[56].y" 9802.857421875;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 4082.857177734375;
	setAttr ".tgi[0].ni[57].y" 3971.428466796875;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" 2377.142822265625;
	setAttr ".tgi[0].ni[58].y" 4072.857177734375;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" 2377.142822265625;
	setAttr ".tgi[0].ni[59].y" 4174.28564453125;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" 2070;
	setAttr ".tgi[0].ni[60].y" 5434.28564453125;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" 3072.857177734375;
	setAttr ".tgi[0].ni[61].y" 5734.28564453125;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" 4082.857177734375;
	setAttr ".tgi[0].ni[62].y" 3641.428466796875;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" 1665.7142333984375;
	setAttr ".tgi[0].ni[63].y" 5870;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" 2070;
	setAttr ".tgi[0].ni[64].y" 5650;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" -1381.4285888671875;
	setAttr ".tgi[0].ni[65].y" 7614.28564453125;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" -4697.14306640625;
	setAttr ".tgi[0].ni[66].y" 9701.4287109375;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" 4082.857177734375;
	setAttr ".tgi[0].ni[67].y" 3311.428466796875;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" 2377.142822265625;
	setAttr ".tgi[0].ni[68].y" 2434.28564453125;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" -4390;
	setAttr ".tgi[0].ni[69].y" 9827.142578125;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" 2070;
	setAttr ".tgi[0].ni[70].y" 4932.85693359375;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" 2684.28564453125;
	setAttr ".tgi[0].ni[71].y" 4211.4287109375;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" 3380;
	setAttr ".tgi[0].ni[72].y" 857.14288330078125;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" -4082.857177734375;
	setAttr ".tgi[0].ni[73].y" 9632.857421875;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" 3380;
	setAttr ".tgi[0].ni[74].y" 1117.142822265625;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" 3380;
	setAttr ".tgi[0].ni[75].y" 6198.5712890625;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" 3380;
	setAttr ".tgi[0].ni[76].y" -437.14285278320313;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" 3694.28564453125;
	setAttr ".tgi[0].ni[77].y" 340;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" 3694.28564453125;
	setAttr ".tgi[0].ni[78].y" -2357.142822265625;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" 3380;
	setAttr ".tgi[0].ni[79].y" 6097.14306640625;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" 3380;
	setAttr ".tgi[0].ni[80].y" 5938.5712890625;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" 3380;
	setAttr ".tgi[0].ni[81].y" 755.71429443359375;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" 554.28570556640625;
	setAttr ".tgi[0].ni[82].y" 5131.4287109375;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" 2070;
	setAttr ".tgi[0].ni[83].y" 4660;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" 3380;
	setAttr ".tgi[0].ni[84].y" 5722.85693359375;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" 3380;
	setAttr ".tgi[0].ni[85].y" 5564.28564453125;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" 3380;
	setAttr ".tgi[0].ni[86].y" 5405.71435546875;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" -152.85714721679688;
	setAttr ".tgi[0].ni[87].y" 6128.5712890625;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" -2077.142822265625;
	setAttr ".tgi[0].ni[88].y" 7094.28564453125;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" 2377.142822265625;
	setAttr ".tgi[0].ni[89].y" 2275.71435546875;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" 3380;
	setAttr ".tgi[0].ni[90].y" 958.5714111328125;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" 3380;
	setAttr ".tgi[0].ni[91].y" 5190;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" -2788.571533203125;
	setAttr ".tgi[0].ni[92].y" 7565.71435546875;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" 3694.28564453125;
	setAttr ".tgi[0].ni[93].y" -3095.71435546875;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" 3694.28564453125;
	setAttr ".tgi[0].ni[94].y" -3254.28564453125;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" 3380;
	setAttr ".tgi[0].ni[95].y" 5088.5712890625;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" 954.28570556640625;
	setAttr ".tgi[0].ni[96].y" 7180;
	setAttr ".tgi[0].ni[96].nvs" 18304;
	setAttr ".tgi[0].ni[97].x" 3380;
	setAttr ".tgi[0].ni[97].y" 368.57144165039063;
	setAttr ".tgi[0].ni[97].nvs" 18304;
	setAttr ".tgi[0].ni[98].x" 3380;
	setAttr ".tgi[0].ni[98].y" 4930;
	setAttr ".tgi[0].ni[98].nvs" 18304;
	setAttr ".tgi[0].ni[99].x" 3380;
	setAttr ".tgi[0].ni[99].y" -1004.2857055664063;
	setAttr ".tgi[0].ni[99].nvs" 18304;
	setAttr ".tgi[0].ni[100].x" 3694.28564453125;
	setAttr ".tgi[0].ni[100].y" -3730;
	setAttr ".tgi[0].ni[100].nvs" 18304;
	setAttr ".tgi[0].ni[101].x" -460;
	setAttr ".tgi[0].ni[101].y" 7367.14306640625;
	setAttr ".tgi[0].ni[101].nvs" 18304;
	setAttr ".tgi[0].ni[102].x" 3694.28564453125;
	setAttr ".tgi[0].ni[102].y" -3571.428466796875;
	setAttr ".tgi[0].ni[102].nvs" 18304;
	setAttr ".tgi[0].ni[103].x" 3380;
	setAttr ".tgi[0].ni[103].y" 4771.4287109375;
	setAttr ".tgi[0].ni[103].nvs" 18304;
	setAttr ".tgi[0].ni[104].x" 3380;
	setAttr ".tgi[0].ni[104].y" 4612.85693359375;
	setAttr ".tgi[0].ni[104].nvs" 18304;
	setAttr ".tgi[0].ni[105].x" 3694.28564453125;
	setAttr ".tgi[0].ni[105].y" -797.14288330078125;
	setAttr ".tgi[0].ni[105].nvs" 18304;
	setAttr ".tgi[0].ni[106].x" 3380;
	setAttr ".tgi[0].ni[106].y" 4454.28564453125;
	setAttr ".tgi[0].ni[106].nvs" 18304;
	setAttr ".tgi[0].ni[107].x" 3694.28564453125;
	setAttr ".tgi[0].ni[107].y" -3888.571533203125;
	setAttr ".tgi[0].ni[107].nvs" 18304;
	setAttr ".tgi[0].ni[108].x" 3694.28564453125;
	setAttr ".tgi[0].ni[108].y" -4047.142822265625;
	setAttr ".tgi[0].ni[108].nvs" 18304;
	setAttr ".tgi[0].ni[109].x" 3380;
	setAttr ".tgi[0].ni[109].y" 4352.85693359375;
	setAttr ".tgi[0].ni[109].nvs" 18304;
	setAttr ".tgi[0].ni[110].x" 3380;
	setAttr ".tgi[0].ni[110].y" 95.714286804199219;
	setAttr ".tgi[0].ni[110].nvs" 18304;
	setAttr ".tgi[0].ni[111].x" 3694.28564453125;
	setAttr ".tgi[0].ni[111].y" -4148.5712890625;
	setAttr ".tgi[0].ni[111].nvs" 18304;
	setAttr ".tgi[0].ni[112].x" 3380;
	setAttr ".tgi[0].ni[112].y" 4194.28564453125;
	setAttr ".tgi[0].ni[112].nvs" 18304;
	setAttr ".tgi[0].ni[113].x" -3402.857177734375;
	setAttr ".tgi[0].ni[113].y" 8648.5712890625;
	setAttr ".tgi[0].ni[113].nvs" 18304;
	setAttr ".tgi[0].ni[114].x" -2384.28564453125;
	setAttr ".tgi[0].ni[114].y" 8571.4287109375;
	setAttr ".tgi[0].ni[114].nvs" 18304;
	setAttr ".tgi[0].ni[115].x" 1665.7142333984375;
	setAttr ".tgi[0].ni[115].y" 4854.28564453125;
	setAttr ".tgi[0].ni[115].nvs" 18304;
	setAttr ".tgi[0].ni[116].x" 1261.4285888671875;
	setAttr ".tgi[0].ni[116].y" 4672.85693359375;
	setAttr ".tgi[0].ni[116].nvs" 18304;
	setAttr ".tgi[0].ni[117].x" 3694.28564453125;
	setAttr ".tgi[0].ni[117].y" -4421.4287109375;
	setAttr ".tgi[0].ni[117].nvs" 18304;
	setAttr ".tgi[0].ni[118].x" 3380;
	setAttr ".tgi[0].ni[118].y" -221.42857360839844;
	setAttr ".tgi[0].ni[118].nvs" 18304;
	setAttr ".tgi[0].ni[119].x" 3380;
	setAttr ".tgi[0].ni[119].y" -62.857143402099609;
	setAttr ".tgi[0].ni[119].nvs" 18304;
	setAttr ".tgi[0].ni[120].x" -3095.71435546875;
	setAttr ".tgi[0].ni[120].y" 7032.85693359375;
	setAttr ".tgi[0].ni[120].nvs" 18304;
	setAttr ".tgi[0].ni[121].x" 3380;
	setAttr ".tgi[0].ni[121].y" 3807.142822265625;
	setAttr ".tgi[0].ni[121].nvs" 18304;
	setAttr ".tgi[0].ni[122].x" 3380;
	setAttr ".tgi[0].ni[122].y" 3648.571533203125;
	setAttr ".tgi[0].ni[122].nvs" 18304;
	setAttr ".tgi[0].ni[123].x" 3072.857177734375;
	setAttr ".tgi[0].ni[123].y" 4092.857177734375;
	setAttr ".tgi[0].ni[123].nvs" 18304;
	setAttr ".tgi[0].ni[124].x" 3380;
	setAttr ".tgi[0].ni[124].y" -1378.5714111328125;
	setAttr ".tgi[0].ni[124].nvs" 18304;
	setAttr ".tgi[0].ni[125].x" 3694.28564453125;
	setAttr ".tgi[0].ni[125].y" -2198.571533203125;
	setAttr ".tgi[0].ni[125].nvs" 18304;
	setAttr ".tgi[0].ni[126].x" 3380;
	setAttr ".tgi[0].ni[126].y" 3375.71435546875;
	setAttr ".tgi[0].ni[126].nvs" 18304;
	setAttr ".tgi[0].ni[127].x" 954.28570556640625;
	setAttr ".tgi[0].ni[127].y" 4181.4287109375;
	setAttr ".tgi[0].ni[127].nvs" 18304;
	setAttr ".tgi[0].ni[128].x" 3380;
	setAttr ".tgi[0].ni[128].y" -1162.857177734375;
	setAttr ".tgi[0].ni[128].nvs" 18304;
	setAttr ".tgi[0].ni[129].x" 3694.28564453125;
	setAttr ".tgi[0].ni[129].y" -5728.5712890625;
	setAttr ".tgi[0].ni[129].nvs" 18304;
	setAttr ".tgi[0].ni[130].x" 3694.28564453125;
	setAttr ".tgi[0].ni[130].y" -5570;
	setAttr ".tgi[0].ni[130].nvs" 18304;
	setAttr ".tgi[0].ni[131].x" 3380;
	setAttr ".tgi[0].ni[131].y" 3274.28564453125;
	setAttr ".tgi[0].ni[131].nvs" 18304;
	setAttr ".tgi[0].ni[132].x" 554.28570556640625;
	setAttr ".tgi[0].ni[132].y" 5591.4287109375;
	setAttr ".tgi[0].ni[132].nvs" 18304;
	setAttr ".tgi[0].ni[133].x" 3380;
	setAttr ".tgi[0].ni[133].y" 3058.571533203125;
	setAttr ".tgi[0].ni[133].nvs" 18304;
	setAttr ".tgi[0].ni[134].x" 954.28570556640625;
	setAttr ".tgi[0].ni[134].y" 5012.85693359375;
	setAttr ".tgi[0].ni[134].nvs" 18304;
	setAttr ".tgi[0].ni[135].x" 3380;
	setAttr ".tgi[0].ni[135].y" 2900;
	setAttr ".tgi[0].ni[135].nvs" 18304;
	setAttr ".tgi[0].ni[136].x" 3380;
	setAttr ".tgi[0].ni[136].y" 2798.571533203125;
	setAttr ".tgi[0].ni[136].nvs" 18304;
	setAttr ".tgi[0].ni[137].x" 554.28570556640625;
	setAttr ".tgi[0].ni[137].y" 4254.28564453125;
	setAttr ".tgi[0].ni[137].nvs" 18304;
	setAttr ".tgi[0].ni[138].x" 154.28572082519531;
	setAttr ".tgi[0].ni[138].y" 4101.4287109375;
	setAttr ".tgi[0].ni[138].nvs" 18304;
	setAttr ".tgi[0].ni[139].x" 2377.142822265625;
	setAttr ".tgi[0].ni[139].y" 1160;
	setAttr ".tgi[0].ni[139].nvs" 18304;
	setAttr ".tgi[0].ni[140].x" 3380;
	setAttr ".tgi[0].ni[140].y" -1537.142822265625;
	setAttr ".tgi[0].ni[140].nvs" 18304;
	setAttr ".tgi[0].ni[141].x" 3694.28564453125;
	setAttr ".tgi[0].ni[141].y" -6115.71435546875;
	setAttr ".tgi[0].ni[141].nvs" 18304;
	setAttr ".tgi[0].ni[142].x" 3380;
	setAttr ".tgi[0].ni[142].y" 2525.71435546875;
	setAttr ".tgi[0].ni[142].nvs" 18304;
	setAttr ".tgi[0].ni[143].x" 1261.4285888671875;
	setAttr ".tgi[0].ni[143].y" 3142.857177734375;
	setAttr ".tgi[0].ni[143].nvs" 18304;
	setAttr ".tgi[0].ni[144].x" 4487.14306640625;
	setAttr ".tgi[0].ni[144].y" 9815.7138671875;
	setAttr ".tgi[0].ni[144].nvs" 18304;
	setAttr ".tgi[0].ni[145].x" 3380;
	setAttr ".tgi[0].ni[145].y" -1695.7142333984375;
	setAttr ".tgi[0].ni[145].nvs" 18304;
	setAttr ".tgi[0].ni[146].x" 4082.857177734375;
	setAttr ".tgi[0].ni[146].y" -3148.571533203125;
	setAttr ".tgi[0].ni[146].nvs" 18304;
	setAttr ".tgi[0].ni[147].x" 3380;
	setAttr ".tgi[0].ni[147].y" 2265.71435546875;
	setAttr ".tgi[0].ni[147].nvs" 18304;
	setAttr ".tgi[0].ni[148].x" 3380;
	setAttr ".tgi[0].ni[148].y" 2164.28564453125;
	setAttr ".tgi[0].ni[148].nvs" 18304;
	setAttr ".tgi[0].ni[149].x" 2684.28564453125;
	setAttr ".tgi[0].ni[149].y" -251.42857360839844;
	setAttr ".tgi[0].ni[149].nvs" 18304;
	setAttr ".tgi[0].ni[150].x" 3072.857177734375;
	setAttr ".tgi[0].ni[150].y" 3762.857177734375;
	setAttr ".tgi[0].ni[150].nvs" 18304;
	setAttr ".tgi[0].ni[151].x" 3380;
	setAttr ".tgi[0].ni[151].y" -1911.4285888671875;
	setAttr ".tgi[0].ni[151].nvs" 18304;
	setAttr ".tgi[0].ni[152].x" 3694.28564453125;
	setAttr ".tgi[0].ni[152].y" -6445.71435546875;
	setAttr ".tgi[0].ni[152].nvs" 18304;
	setAttr ".tgi[0].ni[153].x" 3380;
	setAttr ".tgi[0].ni[153].y" 1891.4285888671875;
	setAttr ".tgi[0].ni[153].nvs" 18304;
	setAttr ".tgi[0].ni[154].x" 3380;
	setAttr ".tgi[0].ni[154].y" -652.85711669921875;
	setAttr ".tgi[0].ni[154].nvs" 18304;
	setAttr ".tgi[0].ni[155].x" 3380;
	setAttr ".tgi[0].ni[155].y" 1732.857177734375;
	setAttr ".tgi[0].ni[155].nvs" 18304;
	setAttr ".tgi[0].ni[156].x" 3380;
	setAttr ".tgi[0].ni[156].y" -3224.28564453125;
	setAttr ".tgi[0].ni[156].nvs" 18304;
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
connectAttr "Cylinder_Poly.rigRoot" "TEMP_RigRoot.IKSShape";
connectAttr "Cube_Poly.rigRoot" "TEMP_RigRoot.JointShape";
connectAttr "Sphere_Poly.rigRoot" "TEMP_RigRoot.IKPVShape";
connectAttr "Circle_Wire.rigRoot" "TEMP_RigRoot.LookAtShape";
connectAttr "Cube_Poly.rigRoot" "TEMP_RigRoot.FKRShape";
connectAttr "Square_Wire.rigRoot" "TEMP_RigRoot.EmptyShape";
connectAttr "TEMP_RigRoot.jointsParentGroup" "JOINTS.rigRoot";
connectAttr "Joints.di" "Clav_Clav01_L_JNT.do";
connectAttr "Clav_Limb_L_NODE.joints" "Clav_Clav01_L_JNT.limb";
connectAttr "Clav_Clav01_L_JNT.s" "Arm_Shoulder_L_JNT.is";
connectAttr "Joints.di" "Arm_Shoulder_L_JNT.do";
connectAttr "Arm_Limb_L_NODE.joints" "Arm_Shoulder_L_JNT.limb";
connectAttr "Arm_Shoulder_L_JNT.s" "Arm_Elbow_L_JNT.is";
connectAttr "Joints.di" "Arm_Elbow_L_JNT.do";
connectAttr "Arm_Limb_L_NODE.joints" "Arm_Elbow_L_JNT.limb";
connectAttr "Arm_Elbow_L_JNT.s" "ArmTwist_AT1_L_JNT.is";
connectAttr "Joints.di" "ArmTwist_AT1_L_JNT.do";
connectAttr "ArmTwist_Limb_L_NODE.joints" "ArmTwist_AT1_L_JNT.limb";
connectAttr "Arm_Elbow_L_JNT.s" "ArmTwist_AT2_L_JNT.is";
connectAttr "Joints.di" "ArmTwist_AT2_L_JNT.do";
connectAttr "ArmTwist_Limb_L_NODE.joints" "ArmTwist_AT2_L_JNT.limb";
connectAttr "Arm_Elbow_L_JNT.s" "ArmTwist_AT3_L_JNT.is";
connectAttr "Joints.di" "ArmTwist_AT3_L_JNT.do";
connectAttr "ArmTwist_Limb_L_NODE.joints" "ArmTwist_AT3_L_JNT.limb";
connectAttr "Arm_Elbow_L_JNT.s" "Arm_Wrist_L_JNT.is";
connectAttr "Joints.di" "Arm_Wrist_L_JNT.do";
connectAttr "Arm_Limb_L_NODE.joints" "Arm_Wrist_L_JNT.limb";
connectAttr "Arm_Wrist_L_JNT.s" "Thumb_Thumb1_L_JNT.is";
connectAttr "Joints.di" "Thumb_Thumb1_L_JNT.do";
connectAttr "Thumb_Limb_L_NODE.joints" "Thumb_Thumb1_L_JNT.limb";
connectAttr "Thumb_Thumb1_L_JNT.s" "Thumb_Thumb2_L_JNT.is";
connectAttr "Joints.di" "Thumb_Thumb2_L_JNT.do";
connectAttr "Thumb_Limb_L_NODE.joints" "Thumb_Thumb2_L_JNT.limb";
connectAttr "Thumb_Thumb2_L_JNT.s" "Thumb_Thumb3_L_JNT.is";
connectAttr "Joints.di" "Thumb_Thumb3_L_JNT.do";
connectAttr "Thumb_Limb_L_NODE.joints" "Thumb_Thumb3_L_JNT.limb";
connectAttr "Thumb_Thumb3_L_JNT.s" "Thumb_Thumb4_L_JNT.is";
connectAttr "Joints.di" "Thumb_Thumb4_L_JNT.do";
connectAttr "Thumb_Limb_L_NODE.joints" "Thumb_Thumb4_L_JNT.limb";
connectAttr "Arm_Wrist_L_JNT.s" "Pinkie_Pinkey1_L_JNT.is";
connectAttr "Joints.di" "Pinkie_Pinkey1_L_JNT.do";
connectAttr "Pinkie_Limb_L_NODE.joints" "Pinkie_Pinkey1_L_JNT.limb";
connectAttr "Pinkie_Pinkey1_L_JNT.s" "Pinkie_Pinkey2_L_JNT.is";
connectAttr "Joints.di" "Pinkie_Pinkey2_L_JNT.do";
connectAttr "Pinkie_Limb_L_NODE.joints" "Pinkie_Pinkey2_L_JNT.limb";
connectAttr "Pinkie_Pinkey2_L_JNT.s" "Pinkie_Pinkey3_L_JNT.is";
connectAttr "Joints.di" "Pinkie_Pinkey3_L_JNT.do";
connectAttr "Pinkie_Limb_L_NODE.joints" "Pinkie_Pinkey3_L_JNT.limb";
connectAttr "Pinkie_Pinkey3_L_JNT.s" "Pinkie_Pinkey4_L_JNT.is";
connectAttr "Joints.di" "Pinkie_Pinkey4_L_JNT.do";
connectAttr "Pinkie_Limb_L_NODE.joints" "Pinkie_Pinkey4_L_JNT.limb";
connectAttr "Arm_Wrist_L_JNT.s" "Index_Index1_L_JNT.is";
connectAttr "Joints.di" "Index_Index1_L_JNT.do";
connectAttr "Index_Limb_L_NODE.joints" "Index_Index1_L_JNT.limb";
connectAttr "Index_Index1_L_JNT.s" "Index_Index2_L_JNT.is";
connectAttr "Joints.di" "Index_Index2_L_JNT.do";
connectAttr "Index_Limb_L_NODE.joints" "Index_Index2_L_JNT.limb";
connectAttr "Index_Index2_L_JNT.s" "Index_Index3_L_JNT.is";
connectAttr "Joints.di" "Index_Index3_L_JNT.do";
connectAttr "Index_Limb_L_NODE.joints" "Index_Index3_L_JNT.limb";
connectAttr "Index_Index3_L_JNT.s" "Index_Index4_L_JNT.is";
connectAttr "Joints.di" "Index_Index4_L_JNT.do";
connectAttr "Index_Limb_L_NODE.joints" "Index_Index4_L_JNT.limb";
connectAttr "Arm_Wrist_L_JNT.s" "Ring_Ring1_L_JNT.is";
connectAttr "Joints.di" "Ring_Ring1_L_JNT.do";
connectAttr "Ring_Limb_L_NODE.joints" "Ring_Ring1_L_JNT.limb";
connectAttr "Ring_Ring1_L_JNT.s" "Ring_Ring2_L_JNT.is";
connectAttr "Joints.di" "Ring_Ring2_L_JNT.do";
connectAttr "Ring_Limb_L_NODE.joints" "Ring_Ring2_L_JNT.limb";
connectAttr "Ring_Ring2_L_JNT.s" "Ring_Ring3_L_JNT.is";
connectAttr "Joints.di" "Ring_Ring3_L_JNT.do";
connectAttr "Ring_Limb_L_NODE.joints" "Ring_Ring3_L_JNT.limb";
connectAttr "Ring_Ring3_L_JNT.s" "Ring_Ring4_L_JNT.is";
connectAttr "Joints.di" "Ring_Ring4_L_JNT.do";
connectAttr "Ring_Limb_L_NODE.joints" "Ring_Ring4_L_JNT.limb";
connectAttr "Arm_Wrist_L_JNT.s" "Middle_Middle1_L_JNT.is";
connectAttr "Joints.di" "Middle_Middle1_L_JNT.do";
connectAttr "Middle_Limb_L_NODE.joints" "Middle_Middle1_L_JNT.limb";
connectAttr "Middle_Middle1_L_JNT.s" "Middle_Middle2_L_JNT.is";
connectAttr "Joints.di" "Middle_Middle2_L_JNT.do";
connectAttr "Middle_Limb_L_NODE.joints" "Middle_Middle2_L_JNT.limb";
connectAttr "Middle_Middle2_L_JNT.s" "Middle_Middle3_L_JNT.is";
connectAttr "Joints.di" "Middle_Middle3_L_JNT.do";
connectAttr "Middle_Limb_L_NODE.joints" "Middle_Middle3_L_JNT.limb";
connectAttr "Middle_Middle3_L_JNT.s" "Middle_Middle4_L_JNT.is";
connectAttr "Joints.di" "Middle_Middle4_L_JNT.do";
connectAttr "Middle_Limb_L_NODE.joints" "Middle_Middle4_L_JNT.limb";
connectAttr "TEMP_RigRoot.limbsParentGroup" "LIMBS.rigRoot";
connectAttr "TEMP_RigRoot.limbs" "Ring_Limb_L_NODE.rigRoot";
connectAttr "Arm_Limb_L_NODE.limbChildren" "Ring_Limb_L_NODE.limbParent";
connectAttr "Ring_Ring1_L_JNT.group" "Ring1_Joint_L_GRP0.joint";
connectAttr "Ring_Limb_L_NODE.jointGroups" "Ring1_Joint_L_GRP0.limb";
connectAttr "Ring_Limb_L_NODE.usedGroups" "Ring1_Joint_L_GRP0.used";
connectAttr "Controls.di" "Ring1_Joint_L_CTR0.do";
connectAttr "Ring1_Joint_L_GRP0.control" "Ring1_Joint_L_CTR0.group";
connectAttr "Ring_Ring2_L_JNT.group" "Ring2_Joint_L_GRP1.joint";
connectAttr "Ring_Limb_L_NODE.jointGroups" "Ring2_Joint_L_GRP1.limb";
connectAttr "Ring_Limb_L_NODE.usedGroups" "Ring2_Joint_L_GRP1.used";
connectAttr "Controls.di" "Ring2_Joint_L_CTR1.do";
connectAttr "Ring2_Joint_L_GRP1.control" "Ring2_Joint_L_CTR1.group";
connectAttr "Ring_Ring3_L_JNT.group" "Ring3_Joint_L_GRP2.joint";
connectAttr "Ring_Limb_L_NODE.jointGroups" "Ring3_Joint_L_GRP2.limb";
connectAttr "Ring_Limb_L_NODE.usedGroups" "Ring3_Joint_L_GRP2.used";
connectAttr "Controls.di" "Ring3_Joint_L_CTR2.do";
connectAttr "Ring3_Joint_L_GRP2.control" "Ring3_Joint_L_CTR2.group";
connectAttr "Ring_Ring4_L_JNT.group" "Ring4_Joint_L_GRP3.joint";
connectAttr "Ring_Limb_L_NODE.jointGroups" "Ring4_Joint_L_GRP3.limb";
connectAttr "Ring_Limb_L_NODE.usedGroups" "Ring4_Joint_L_GRP3.used";
connectAttr "Controls.di" "Ring4_Joint_L_CTR3.do";
connectAttr "Ring4_Joint_L_GRP3.control" "Ring4_Joint_L_CTR3.group";
connectAttr "TEMP_RigRoot.limbs" "Arm_Limb_L_NODE.rigRoot";
connectAttr "Clav_Limb_L_NODE.limbChildren" "Arm_Limb_L_NODE.limbParent";
connectAttr "Arm_Shoulder_L_JNT.group" "Shoulder_Joint_L_GRP0.joint";
connectAttr "Arm_Limb_L_NODE.jointGroups" "Shoulder_Joint_L_GRP0.limb";
connectAttr "Arm_Limb_L_NODE.usedGroups" "Shoulder_Joint_L_GRP0.used";
connectAttr "Controls.di" "Shoulder_Joint_L_CTR0.do";
connectAttr "Shoulder_Joint_L_GRP0.control" "Shoulder_Joint_L_CTR0.group";
connectAttr "Arm_Elbow_L_JNT.group" "Elbow_Joint_L_GRP1.joint";
connectAttr "Arm_Limb_L_NODE.jointGroups" "Elbow_Joint_L_GRP1.limb";
connectAttr "Arm_Limb_L_NODE.usedGroups" "Elbow_Joint_L_GRP1.used";
connectAttr "Controls.di" "Elbow_Joint_L_CTR1.do";
connectAttr "Elbow_Joint_L_GRP1.control" "Elbow_Joint_L_CTR1.group";
connectAttr "Arm_Wrist_L_JNT.group" "Wrist_Joint_L_GRP2.joint";
connectAttr "Arm_Limb_L_NODE.jointGroups" "Wrist_Joint_L_GRP2.limb";
connectAttr "Arm_Limb_L_NODE.usedGroups" "Wrist_Joint_L_GRP2.used";
connectAttr "Controls.di" "Wrist_Joint_L_CTR2.do";
connectAttr "Wrist_Joint_L_GRP2.control" "Wrist_Joint_L_CTR2.group";
connectAttr "TEMP_RigRoot.limbs" "Pinkie_Limb_L_NODE.rigRoot";
connectAttr "Arm_Limb_L_NODE.limbChildren" "Pinkie_Limb_L_NODE.limbParent";
connectAttr "Pinkie_Pinkey1_L_JNT.group" "Pinkey1_Joint_L_GRP0.joint";
connectAttr "Pinkie_Limb_L_NODE.jointGroups" "Pinkey1_Joint_L_GRP0.limb";
connectAttr "Pinkie_Limb_L_NODE.usedGroups" "Pinkey1_Joint_L_GRP0.used";
connectAttr "Controls.di" "Pinkey1_Joint_L_CTR0.do";
connectAttr "Pinkey1_Joint_L_GRP0.control" "Pinkey1_Joint_L_CTR0.group";
connectAttr "Pinkie_Pinkey2_L_JNT.group" "Pinkey2_Joint_L_GRP1.joint";
connectAttr "Pinkie_Limb_L_NODE.jointGroups" "Pinkey2_Joint_L_GRP1.limb";
connectAttr "Pinkie_Limb_L_NODE.usedGroups" "Pinkey2_Joint_L_GRP1.used";
connectAttr "Controls.di" "Pinkey2_Joint_L_CTR1.do";
connectAttr "Pinkey2_Joint_L_GRP1.control" "Pinkey2_Joint_L_CTR1.group";
connectAttr "Pinkie_Pinkey3_L_JNT.group" "Pinkey3_Joint_L_GRP2.joint";
connectAttr "Pinkie_Limb_L_NODE.jointGroups" "Pinkey3_Joint_L_GRP2.limb";
connectAttr "Pinkie_Limb_L_NODE.usedGroups" "Pinkey3_Joint_L_GRP2.used";
connectAttr "Controls.di" "Pinkey3_Joint_L_CTR2.do";
connectAttr "Pinkey3_Joint_L_GRP2.control" "Pinkey3_Joint_L_CTR2.group";
connectAttr "Pinkie_Pinkey4_L_JNT.group" "Pinkey4_Joint_L_GRP3.joint";
connectAttr "Pinkie_Limb_L_NODE.jointGroups" "Pinkey4_Joint_L_GRP3.limb";
connectAttr "Pinkie_Limb_L_NODE.usedGroups" "Pinkey4_Joint_L_GRP3.used";
connectAttr "Controls.di" "Pinkey4_Joint_L_CTR3.do";
connectAttr "Pinkey4_Joint_L_GRP3.control" "Pinkey4_Joint_L_CTR3.group";
connectAttr "TEMP_RigRoot.limbs" "Middle_Limb_L_NODE.rigRoot";
connectAttr "Arm_Limb_L_NODE.limbChildren" "Middle_Limb_L_NODE.limbParent";
connectAttr "Middle_Middle1_L_JNT.group" "Middle1_Joint_L_GRP0.joint";
connectAttr "Middle_Limb_L_NODE.jointGroups" "Middle1_Joint_L_GRP0.limb";
connectAttr "Middle_Limb_L_NODE.usedGroups" "Middle1_Joint_L_GRP0.used";
connectAttr "Controls.di" "Middle1_Joint_L_CTR0.do";
connectAttr "Middle1_Joint_L_GRP0.control" "Middle1_Joint_L_CTR0.group";
connectAttr "Middle_Middle2_L_JNT.group" "Middle2_Joint_L_GRP1.joint";
connectAttr "Middle_Limb_L_NODE.jointGroups" "Middle2_Joint_L_GRP1.limb";
connectAttr "Middle_Limb_L_NODE.usedGroups" "Middle2_Joint_L_GRP1.used";
connectAttr "Controls.di" "Middle2_Joint_L_CTR1.do";
connectAttr "Middle2_Joint_L_GRP1.control" "Middle2_Joint_L_CTR1.group";
connectAttr "Middle_Middle3_L_JNT.group" "Middle3_Joint_L_GRP2.joint";
connectAttr "Middle_Limb_L_NODE.jointGroups" "Middle3_Joint_L_GRP2.limb";
connectAttr "Middle_Limb_L_NODE.usedGroups" "Middle3_Joint_L_GRP2.used";
connectAttr "Controls.di" "Middle3_Joint_L_CTR2.do";
connectAttr "Middle3_Joint_L_GRP2.control" "Middle3_Joint_L_CTR2.group";
connectAttr "Middle_Middle4_L_JNT.group" "Middle4_Joint_L_GRP3.joint";
connectAttr "Middle_Limb_L_NODE.jointGroups" "Middle4_Joint_L_GRP3.limb";
connectAttr "Middle_Limb_L_NODE.usedGroups" "Middle4_Joint_L_GRP3.used";
connectAttr "Controls.di" "Middle4_Joint_L_CTR3.do";
connectAttr "Middle4_Joint_L_GRP3.control" "Middle4_Joint_L_CTR3.group";
connectAttr "TEMP_RigRoot.limbs" "Clav_Limb_L_NODE.rigRoot";
connectAttr "Clav_Clav01_L_JNT.group" "Clav01_Joint_L_GRP0.joint";
connectAttr "Clav_Limb_L_NODE.jointGroups" "Clav01_Joint_L_GRP0.limb";
connectAttr "Clav_Limb_L_NODE.usedGroups" "Clav01_Joint_L_GRP0.used";
connectAttr "Controls.di" "Clav01_Joint_L_CTR0.do";
connectAttr "Clav01_Joint_L_GRP0.control" "Clav01_Joint_L_CTR0.group";
connectAttr "TEMP_RigRoot.limbs" "ArmTwist_Limb_L_NODE.rigRoot";
connectAttr "Arm_Limb_L_NODE.limbChildren" "ArmTwist_Limb_L_NODE.limbParent";
connectAttr "ArmTwist_AT2_L_JNT.group" "AT2_Joint_L_GRP1.joint";
connectAttr "ArmTwist_Limb_L_NODE.jointGroups" "AT2_Joint_L_GRP1.limb";
connectAttr "ArmTwist_Limb_L_NODE.usedGroups" "AT2_Joint_L_GRP1.used";
connectAttr "Controls.di" "AT2_Joint_L_CTR1.do";
connectAttr "AT2_Joint_L_GRP1.control" "AT2_Joint_L_CTR1.group";
connectAttr "ArmTwist_AT1_L_JNT.group" "AT1_Joint_L_GRP0.joint";
connectAttr "ArmTwist_Limb_L_NODE.jointGroups" "AT1_Joint_L_GRP0.limb";
connectAttr "ArmTwist_Limb_L_NODE.usedGroups" "AT1_Joint_L_GRP0.used";
connectAttr "Controls.di" "AT1_Joint_L_CTR0.do";
connectAttr "AT1_Joint_L_GRP0.control" "AT1_Joint_L_CTR0.group";
connectAttr "ArmTwist_AT3_L_JNT.group" "AT3_Joint_L_GRP2.joint";
connectAttr "ArmTwist_Limb_L_NODE.jointGroups" "AT3_Joint_L_GRP2.limb";
connectAttr "ArmTwist_Limb_L_NODE.usedGroups" "AT3_Joint_L_GRP2.used";
connectAttr "Controls.di" "AT3_Joint_L_CTR2.do";
connectAttr "AT3_Joint_L_GRP2.control" "AT3_Joint_L_CTR2.group";
connectAttr "TEMP_RigRoot.limbs" "Index_Limb_L_NODE.rigRoot";
connectAttr "Arm_Limb_L_NODE.limbChildren" "Index_Limb_L_NODE.limbParent";
connectAttr "Index_Index1_L_JNT.group" "Index1_Joint_L_GRP0.joint";
connectAttr "Index_Limb_L_NODE.jointGroups" "Index1_Joint_L_GRP0.limb";
connectAttr "Index_Limb_L_NODE.usedGroups" "Index1_Joint_L_GRP0.used";
connectAttr "Controls.di" "Index1_Joint_L_CTR0.do";
connectAttr "Index1_Joint_L_GRP0.control" "Index1_Joint_L_CTR0.group";
connectAttr "Index_Index2_L_JNT.group" "Index2_Joint_L_GRP1.joint";
connectAttr "Index_Limb_L_NODE.jointGroups" "Index2_Joint_L_GRP1.limb";
connectAttr "Index_Limb_L_NODE.usedGroups" "Index2_Joint_L_GRP1.used";
connectAttr "Controls.di" "Index2_Joint_L_CTR1.do";
connectAttr "Index2_Joint_L_GRP1.control" "Index2_Joint_L_CTR1.group";
connectAttr "Index_Index3_L_JNT.group" "Index3_Joint_L_GRP2.joint";
connectAttr "Index_Limb_L_NODE.jointGroups" "Index3_Joint_L_GRP2.limb";
connectAttr "Index_Limb_L_NODE.usedGroups" "Index3_Joint_L_GRP2.used";
connectAttr "Controls.di" "Index3_Joint_L_CTR2.do";
connectAttr "Index3_Joint_L_GRP2.control" "Index3_Joint_L_CTR2.group";
connectAttr "Index_Index4_L_JNT.group" "Index4_Joint_L_GRP3.joint";
connectAttr "Index_Limb_L_NODE.jointGroups" "Index4_Joint_L_GRP3.limb";
connectAttr "Index_Limb_L_NODE.usedGroups" "Index4_Joint_L_GRP3.used";
connectAttr "Controls.di" "Index4_Joint_L_CTR3.do";
connectAttr "Index4_Joint_L_GRP3.control" "Index4_Joint_L_CTR3.group";
connectAttr "TEMP_RigRoot.limbs" "Thumb_Limb_L_NODE.rigRoot";
connectAttr "Arm_Limb_L_NODE.limbChildren" "Thumb_Limb_L_NODE.limbParent";
connectAttr "Thumb_Thumb1_L_JNT.group" "Thumb1_Joint_L_GRP0.joint";
connectAttr "Thumb_Limb_L_NODE.jointGroups" "Thumb1_Joint_L_GRP0.limb";
connectAttr "Thumb_Limb_L_NODE.usedGroups" "Thumb1_Joint_L_GRP0.used";
connectAttr "Controls.di" "Thumb1_Joint_L_CTR0.do";
connectAttr "Thumb1_Joint_L_GRP0.control" "Thumb1_Joint_L_CTR0.group";
connectAttr "Thumb_Thumb2_L_JNT.group" "Thumb2_Joint_L_GRP1.joint";
connectAttr "Thumb_Limb_L_NODE.jointGroups" "Thumb2_Joint_L_GRP1.limb";
connectAttr "Thumb_Limb_L_NODE.usedGroups" "Thumb2_Joint_L_GRP1.used";
connectAttr "Controls.di" "Thumb2_Joint_L_CTR1.do";
connectAttr "Thumb2_Joint_L_GRP1.control" "Thumb2_Joint_L_CTR1.group";
connectAttr "Thumb_Thumb3_L_JNT.group" "Thumb3_Joint_L_GRP2.joint";
connectAttr "Thumb_Limb_L_NODE.jointGroups" "Thumb3_Joint_L_GRP2.limb";
connectAttr "Thumb_Limb_L_NODE.usedGroups" "Thumb3_Joint_L_GRP2.used";
connectAttr "Controls.di" "Thumb3_Joint_L_CTR2.do";
connectAttr "Thumb3_Joint_L_GRP2.control" "Thumb3_Joint_L_CTR2.group";
connectAttr "Thumb_Thumb4_L_JNT.group" "Thumb4_Joint_L_GRP3.joint";
connectAttr "Thumb_Limb_L_NODE.jointGroups" "Thumb4_Joint_L_GRP3.limb";
connectAttr "Thumb_Limb_L_NODE.usedGroups" "Thumb4_Joint_L_GRP3.used";
connectAttr "Controls.di" "Thumb4_Joint_L_CTR3.do";
connectAttr "Thumb4_Joint_L_GRP3.control" "Thumb4_Joint_L_CTR3.group";
connectAttr "TEMP_RigRoot.meshesParentGroup" "MESHES.rigRoot";
connectAttr "TEMP_RigRoot.bakedDataGroup" "BAKED_DATA.rigRoot";
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
connectAttr "layerManager.dli[1]" "Controls.id";
connectAttr "layerManager.dli[2]" "Joints.id";
connectAttr "layerManager.dli[3]" "Meshes.id";
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
connectAttr "ArmTwist_Limb_L_NODE.presets" "LimbPreset_ArmTwist_1.limb";
connectAttr "Arm_Limb_L_NODE.presetLimbChildren" "LimbPreset_ArmTwist_1.limbParent"
		;
connectAttr "TEMP_RigRoot.presets" "LimbPreset_ArmTwist_1.rigRoot";
connectAttr "ArmTwist_Limb_L_NODE.presets" "LimbPreset_ArmTwist_2.limb";
connectAttr "Arm_Limb_L_NODE.presetLimbChildren" "LimbPreset_ArmTwist_2.limbParent"
		;
connectAttr "TEMP_RigRoot.presets" "LimbPreset_ArmTwist_2.rigRoot";
connectAttr "Ring2_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "RControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "materialInfo4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "Ring1_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "RControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "Diamond_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "Square_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "Pin_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "Pin_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "TempMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "materialInfo1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn";
connectAttr "CONTROL_SHAPE_TEMPLATES.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "LControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "LControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "Cube_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn";
connectAttr "Square_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn";
connectAttr "lambert2SG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn";
connectAttr "Diamond_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn";
connectAttr "MControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "materialInfo2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn";
connectAttr "MControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "materialInfo3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn";
connectAttr "Ring_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "Ring1_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "Ring1_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "sceneConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "Thumb_Thumb3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "Pinkie_Pinkey1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "Meshes.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn";
connectAttr "Sphere_PolyShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "Clav_Clav01_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "ArmTwist_AT1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "uiConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "MESHES.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn";
connectAttr "Middle_Middle2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "Arm_Elbow_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "Middle_Middle4_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "Index_Index3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "Arm_Wrist_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "ArmTwist_AT3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "Pinkie_Pinkey4_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "Ring_Ring1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "Controls.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn";
connectAttr "Ring_Ring4_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "Middle_Middle3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "Joints.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn";
connectAttr "Ring_Ring3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "LIMBS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn";
connectAttr "ArmTwist_AT2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn"
		;
connectAttr "Thumb_Thumb4_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn"
		;
connectAttr "Pinkie_Pinkey3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "JOINTS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn";
connectAttr "Cube_Poly.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn";
connectAttr "Sphere_Poly.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn";
connectAttr "Cube_PolyShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn";
connectAttr "Cylinder_PolyShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "Circle_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn";
connectAttr "Cube_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn";
connectAttr "Pinkie_Pinkey2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "Ring_Ring2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "Index_Index1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "Index_Index4_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn"
		;
connectAttr "BAKED_DATA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn";
connectAttr "Thumb_Thumb1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "Middle_Middle1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "Arm_Shoulder_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "Cylinder_Poly.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn";
connectAttr "Circle_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn"
		;
connectAttr "Index_Index2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "TEMP_RigRoot.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn";
connectAttr "Thumb_Thumb2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "ArmTwist_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "Ring4_Joint_L_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "Clav_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "Pinkey3_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn"
		;
connectAttr "Middle1_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn"
		;
connectAttr "AT1_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn"
		;
connectAttr "AT1_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "Pinkey2_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn"
		;
connectAttr "Elbow_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "Ring3_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn"
		;
connectAttr "Pinkey4_Joint_L_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn"
		;
connectAttr "Middle_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn"
		;
connectAttr "Elbow_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "Ring2_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "Pinkey1_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "Shoulder_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "Wrist_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "Shoulder_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "Elbow_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn"
		;
connectAttr "Pinkey2_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "Pinkey3_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn"
		;
connectAttr "Arm_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn"
		;
connectAttr "Pinkey3_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn"
		;
connectAttr "Pinkey4_Joint_L_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn"
		;
connectAttr "Pinkey4_Joint_L_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn"
		;
connectAttr "Middle1_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn"
		;
connectAttr "Middle2_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn"
		;
connectAttr "Wrist_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn"
		;
connectAttr "Pinkey1_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn"
		;
connectAttr "Ring4_Joint_L_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn"
		;
connectAttr "Wrist_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn"
		;
connectAttr "Middle2_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn"
		;
connectAttr "Pinkey2_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn"
		;
connectAttr "Ring4_Joint_L_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn"
		;
connectAttr "Pinkey1_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn"
		;
connectAttr "Middle2_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn"
		;
connectAttr "Middle3_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn"
		;
connectAttr "Ring3_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn"
		;
connectAttr "Middle3_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn"
		;
connectAttr "Middle4_Joint_L_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn"
		;
connectAttr "Middle4_Joint_L_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn"
		;
connectAttr "Middle4_Joint_L_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn"
		;
connectAttr "Clav01_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn"
		;
connectAttr "Shoulder_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn"
		;
connectAttr "Pinkie_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn"
		;
connectAttr "Middle1_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn"
		;
connectAttr "Ring2_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn"
		;
connectAttr "Ring3_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[118].dn"
		;
connectAttr "Middle3_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn"
		;
connectAttr "Clav01_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[120].dn"
		;
connectAttr "Clav01_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn"
		;
connectAttr "Index4_Joint_L_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn"
		;
connectAttr "AT2_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[123].dn"
		;
connectAttr "Index3_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[124].dn"
		;
connectAttr "Index4_Joint_L_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[125].dn"
		;
connectAttr "Thumb1_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[126].dn"
		;
connectAttr "Thumb1_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[127].dn"
		;
connectAttr "Thumb3_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[128].dn"
		;
connectAttr "Thumb3_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[129].dn"
		;
connectAttr "Index2_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[130].dn"
		;
connectAttr "AT1_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[131].dn"
		;
connectAttr "Thumb1_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[132].dn"
		;
connectAttr "Thumb3_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[133].dn"
		;
connectAttr "Index1_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[134].dn"
		;
connectAttr "AT3_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[135].dn"
		;
connectAttr "AT2_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[136].dn"
		;
connectAttr "Index_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[137].dn"
		;
connectAttr "Thumb_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[138].dn"
		;
connectAttr "Thumb2_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[139].dn"
		;
connectAttr "Index2_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[140].dn"
		;
connectAttr "Thumb4_Joint_L_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[141].dn"
		;
connectAttr "Thumb4_Joint_L_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[142].dn"
		;
connectAttr "Index1_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[143].dn"
		;
connectAttr "LimbPreset_ArmTwist_2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[144].dn"
		;
connectAttr "AT3_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[145].dn"
		;
connectAttr "LimbPreset_ArmTwist_1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[146].dn"
		;
connectAttr "Index1_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[147].dn"
		;
connectAttr "Index2_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[148].dn"
		;
connectAttr "Thumb2_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[149].dn"
		;
connectAttr "AT3_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[150].dn"
		;
connectAttr "AT2_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[151].dn"
		;
connectAttr "Index3_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[152].dn"
		;
connectAttr "Index3_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[153].dn"
		;
connectAttr "Index4_Joint_L_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[154].dn"
		;
connectAttr "Thumb2_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[155].dn"
		;
connectAttr "Thumb4_Joint_L_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[156].dn"
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
