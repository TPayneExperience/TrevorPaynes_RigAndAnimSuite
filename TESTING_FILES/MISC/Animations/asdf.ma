//Maya ASCII 2019 scene
//Name: asdf.ma
//Last modified: Mon, Jul 05, 2021 11:45:48 AM
//Codeset: 1252
requires maya "2019";
requires "stereoCamera" "10.0";
requires "mtoa" "3.1.2";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201812112215-434d8d9c04";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19041)\n";
createNode transform -s -n "persp";
	rename -uid "A14B79D9-4688-9258-44DF-85919FBEF654";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 240.67238989419548 180.33185239484268 239.07872080967249 ;
	setAttr ".r" -type "double3" -27.938352729602379 44.999999999999972 -5.172681101354183e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "2DA63472-4730-85B3-AAA6-3C8D6A377219";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 384.18745424597091;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "C08D2AE2-4488-BEB0-9976-76BC9FAACD0E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "B3731A60-4778-08E3-AD8A-F18F6C05702F";
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
	rename -uid "034437A5-4C17-A2B1-085A-08819AEE4E3E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "39031733-478C-D2CD-9C90-12A9C4B0C4FB";
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
	rename -uid "84470355-4EE0-8D9C-13E2-279E675F0712";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "0A3A8B36-4034-4182-362E-CE9A8B5AB142";
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
	rename -uid "7526FF60-4FEE-AA2F-DA6B-CF984EFC7063";
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
	addAttr -ci true -sn "FKShape" -ln "FKShape" -dt "string";
	addAttr -ci true -sn "EmptyShape" -ln "EmptyShape" -dt "string";
	setAttr ".rigMode" 3;
	setAttr ".pfrsName" -type "string" "TEMP";
	setAttr ".category" -type "string" "Rigging_Setup";
	setAttr ".operation" -type "string" "Limb Setup";
	setAttr ".nextLimbID" 25;
	setAttr ".nextJointID" 68;
	setAttr ".animationFolderPath" -type "string" "D:/Assets/Programming/Python/Maya/PayneFreeRigSuite/TESTING_FILES/MISC\\Animations";
	setAttr ".IKSShape" -type "string" "Cylinder_Poly";
	setAttr ".JointShape" -type "string" "Cube_Poly";
	setAttr ".IKPVShape" -type "string" "Sphere_Poly";
	setAttr ".LookAtShape" -type "string" "Circle_Wire";
	setAttr ".FKRShape" -type "string" "Cube_Poly";
	setAttr ".FKShape" -type "string" "Cube_Poly";
	setAttr ".EmptyShape" -type "string" "Square_Wire";
createNode transform -n "JOINTS" -p "TEMP_RigRoot";
	rename -uid "E3C78F4C-4418-54A0-0EB5-27B5EAB1E7A8";
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
createNode joint -n "Pelvis_Root_M_JNT" -p "JOINTS";
	rename -uid "99BAE8CE-4E63-4881-672C-AC8527642EF3";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -6.9339256286621094 102.87050628662109 -7.5737414360046387 ;
	setAttr ".r" -type "double3" 4.2648882865905762 -4.7960038185119629 0.42177507281303406 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 103.99147000000001 2.0760770000000002 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 43;
	setAttr ".pfrsName" -type "string" "Root";
createNode joint -n "Spine_Spine1_M_JNT" -p "Pelvis_Root_M_JNT";
	rename -uid "4E71CF04-43F2-69C1-3B97-8DA7B3B4BCD0";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.2341524577932432e-06 10.181588172912598 0.13152092695236206 ;
	setAttr ".r" -type "double3" 5.0931086540222168 3.8947541713714595 0.41104915738105774 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 9.2341500000000003e-06 114.173058 2.2075979999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 25;
	setAttr ".pfrsName" -type "string" "Spine1";
createNode joint -n "Spine_Spine2_M_JNT" -p "Spine_Spine1_M_JNT";
	rename -uid "444456FB-4CFC-C4A8-2DAC-9B8B36F47E3E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.519402926282055e-07 10.083451271057129 -1.0008043050765991 ;
	setAttr ".r" -type "double3" 2.9030821323394775 2.9569087028503418 -1.6698881387710571 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 9.4860900000000015e-06 124.25650899999999 1.206793 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 26;
	setAttr ".pfrsName" -type "string" "Spine2";
createNode joint -n "Spine_Spine3_M_JNT" -p "Spine_Spine2_M_JNT";
	rename -uid "7325C1F8-40A0-8B43-A59C-43BAAD52E835";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.457486457136838e-07 9.100010871887207 -1.3734171390533447 ;
	setAttr ".r" -type "double3" 2.832313060760498 2.9276509284973145 -1.8097265958786013 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 9.831839999999999e-06 133.35651999999999 -0.16662399999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 27;
	setAttr ".pfrsName" -type "string" "Spine3";
createNode joint -n "Neck_Neck_M_JNT" -p "Spine_Spine3_M_JNT";
	rename -uid "41B098DA-4BD0-726D-9B33-BAA33AF18168";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 6.3342855582959601e-07 16.671669006347656 -2.5161678791046143 ;
	setAttr ".r" -type "double3" -9.5008821487426758 -0.41168811917304993 0.9639778733253479 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.04653e-05 150.028189 -2.6827920000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 42;
	setAttr ".pfrsName" -type "string" "Neck";
createNode joint -n "Head_Head1_M_JNT" -p "Neck_Neck_M_JNT";
	rename -uid "6A982B81-4079-CF3E-36B0-96A7769ED7E7";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -4.2423187096574111e-07 9.6178750991821289 1.6850075721740723 ;
	setAttr ".r" -type "double3" -20.542137145996094 -0.82360243797302246 5.7174453735351563 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.0040999999999999e-05 159.64606499999999 -0.997784 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 9;
	setAttr ".pfrsName" -type "string" "Head1";
createNode joint -n "Head_Head2_M_JNT" -p "Head_Head1_M_JNT";
	rename -uid "DC7267F2-4166-3B86-456E-1DB97C9A95C7";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -6.508241767733125e-07 17.815155029296875 2.5849854946136475 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 10;
	setAttr ".pfrsName" -type "string" "Head2";
createNode transform -n "Head2_Joint_M_GRP1" -p "Head_Head2_M_JNT";
	rename -uid "2183A753-4589-6BC3-FCCA-32916D8B519C";
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
createNode transform -n "Head2_Joint_M_CTR1" -p "Head2_Joint_M_GRP1";
	rename -uid "42A95748-49EA-4B15-A4F9-A4A4824318D4";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Head2_Joint_M_CTR1Shape" -p "Head2_Joint_M_CTR1";
	rename -uid "40A78136-41ED-CAF7-E51F-F6A920BD75B3";
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
createNode joint -n "Eye_Eye_L_JNT" -p "Head_Head1_M_JNT";
	rename -uid "1D0A81F2-4D74-65C1-F07C-8C8D3E931C5A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.0675606727600098 6.4095077514648438 9.2835540771484375 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 41;
	setAttr ".pfrsName" -type "string" "Eye";
createNode transform -n "Eye_Joint_L_GRP0" -p "Eye_Eye_L_JNT";
	rename -uid "B9AB8AAE-43EF-47AA-7DA9-579D87470254";
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
createNode transform -n "Eye_Joint_L_CTR0" -p "Eye_Joint_L_GRP0";
	rename -uid "79584705-4582-75AB-B42D-6F9A8A906A49";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Eye_Joint_L_CTR0Shape" -p "Eye_Joint_L_CTR0";
	rename -uid "4BDCE3AB-490F-6C65-DA5A-A9B3207BD862";
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
createNode joint -n "Eye_Eye_R_JNT" -p "Head_Head1_M_JNT";
	rename -uid "341CE641-4EA0-CABA-11DB-05B7A9E7D1B9";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.0675504207611084 6.4095001220703125 9.2835474014282227 ;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 36;
	setAttr ".pfrsName" -type "string" "Eye";
createNode transform -n "Eye_Joint_R_GRP0" -p "Eye_Eye_R_JNT";
	rename -uid "8CE4C339-4DB0-463E-39AD-E391732FBD6D";
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
createNode transform -n "Eye_Joint_R_CTR0" -p "Eye_Joint_R_GRP0";
	rename -uid "E41863C2-4846-0A31-1B58-1B9FE57AAEEE";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Eye_Joint_R_CTR0Shape" -p "Eye_Joint_R_CTR0";
	rename -uid "E0662401-43C9-1B34-72CB-3F81C452C5B4";
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
createNode transform -n "Head1_Joint_M_GRP0" -p "Head_Head1_M_JNT";
	rename -uid "C49B4DB2-4A50-4B97-AC8F-49870A138709";
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
createNode transform -n "Head1_Joint_M_CTR0" -p "Head1_Joint_M_GRP0";
	rename -uid "11F4A5F6-4524-648E-91B5-809963E86F7B";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Head1_Joint_M_CTR0Shape" -p "Head1_Joint_M_CTR0";
	rename -uid "87078CAC-4006-8696-46CD-DFAF72C1E72C";
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
createNode transform -n "Neck_Joint_M_GRP0" -p "Neck_Neck_M_JNT";
	rename -uid "A8309C52-4CA9-6D1E-9322-85896E4F3FFA";
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
createNode transform -n "Neck_Joint_M_CTR0" -p "Neck_Joint_M_GRP0";
	rename -uid "64AB0B45-45A7-5883-C77F-72891E47E8CE";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Neck_Joint_M_CTR0Shape" -p "Neck_Joint_M_CTR0";
	rename -uid "D390B857-4536-89DB-A16F-818B7C9346ED";
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
createNode joint -n "Clav_Clav_L_JNT" -p "Spine_Spine3_M_JNT";
	rename -uid "65D1E8AE-413F-2E42-9A9A-A993BF7CF389";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 4.5704464912414551 10.945984840393066 -2.6279881000518799 ;
	setAttr ".r" -type "double3" 0.14892885088920593 2.6420748233795166 -6.7435851097106934 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.5704560000000001 144.302505 -2.7946119999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 51;
	setAttr ".pfrsName" -type "string" "Clav";
createNode joint -n "Arm_Shoulder_L_JNT" -p "Clav_Clav_L_JNT";
	rename -uid "70412859-41F7-811E-C06E-3BB7288DA8A6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 10.59237003326416 -0.52458292245864868 -2.2321200370788574 ;
	setAttr ".r" -type "double3" 55.074554443359375 -16.547760009765625 -60.435337066650398 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 15.162827 143.77792199999999 -5.026732 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 48;
	setAttr ".pfrsName" -type "string" "Shoulder";
createNode joint -n "Arm_Elbow_L_JNT" -p "Arm_Shoulder_L_JNT";
	rename -uid "07E8081A-4A01-0FB1-770E-0A8087E3B1F7";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 27.841520309448242 -8.9428649516776204e-05 3.7458910810528323e-05 ;
	setAttr ".r" -type "double3" 4.6007012315385509e-06 -19.285247802734375 -0.00020767124078702182 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 43.004347000000003 143.77783299999999 -5.026694 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 49;
	setAttr ".pfrsName" -type "string" "Elbow";
createNode joint -n "Arm_Wrist_L_JNT" -p "Arm_Elbow_L_JNT";
	rename -uid "88F649C3-4F4A-7341-ABB9-22AFAB9DC5F2";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 28.328838348388672 -1.7440717783756554e-05 3.7804522435180843e-05 ;
	setAttr ".r" -type "double3" -47.698909759521484 -16.754917144775391 1.3286174535751343 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 71.333185 143.777815 -5.0266570000000002 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 50;
	setAttr ".pfrsName" -type "string" "Wrist";
createNode joint -n "Thumb_Thumb1_L_JNT" -p "Arm_Wrist_L_JNT";
	rename -uid "DA5C5B53-46E8-91D8-F4B5-50A73C96C6A3";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.4661402702331543 -1.5750491619110107 2.6824135780334473 ;
	setAttr ".r" -type "double3" 0.030426900833845135 13.686287879943848 7.4386124610900879 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 73.799324999999996 142.202766 -2.3442430000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 21;
	setAttr ".pfrsName" -type "string" "Thumb1";
createNode joint -n "Thumb_Thumb2_L_JNT" -p "Thumb_Thumb1_L_JNT";
	rename -uid "91A89D4E-4D71-2EE2-292A-A8AA74BBA030";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.2298038005828857 -1.8646906614303589 1.8646812438964844 ;
	setAttr ".r" -type "double3" 5.4549765586853027 17.679571151733398 3.066643238067627 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 77.029128999999998 140.338076 -0.47956199999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 22;
	setAttr ".pfrsName" -type "string" "Thumb2";
createNode joint -n "Thumb_Thumb3_L_JNT" -p "Thumb_Thumb2_L_JNT";
	rename -uid "993C39EE-4896-3D33-26B1-8E9CFD704AF4";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.6525650024414063 -1.5314929485321045 1.5314716100692749 ;
	setAttr ".r" -type "double3" 0.22147476673126221 6.5256986618041992 3.0276777744293213 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 79.681693999999993 138.80658299999999 1.0519099999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 23;
	setAttr ".pfrsName" -type "string" "Thumb3";
createNode joint -n "Thumb_Thumb4_L_JNT" -p "Thumb_Thumb3_L_JNT";
	rename -uid "148E29B5-447D-8525-0A94-2FAAF5B2B6F8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.9545669555664063 -1.1285001039505005 1.1284921169281006 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 24;
	setAttr ".pfrsName" -type "string" "Thumb4";
createNode transform -n "Thumb4_Joint_L_GRP3" -p "Thumb_Thumb4_L_JNT";
	rename -uid "AED1E051-4D78-E886-99A2-4D9E96D389D8";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb4_Joint_L_CTR3" -p "Thumb4_Joint_L_GRP3";
	rename -uid "C9F6EBFA-4243-F3EF-D847-F989E1287F06";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb4_Joint_L_CTR3Shape" -p "Thumb4_Joint_L_CTR3";
	rename -uid "FCA29783-4EEA-46E7-E7D8-A1A3B0E2AA83";
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
createNode transform -n "Thumb3_Joint_L_GRP2" -p "Thumb_Thumb3_L_JNT";
	rename -uid "8B318794-43A0-BF0A-7012-23AA9859DE03";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb3_Joint_L_CTR2" -p "Thumb3_Joint_L_GRP2";
	rename -uid "758FC88F-4A4E-65E7-C72C-2B8FA16272EE";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb3_Joint_L_CTR2Shape" -p "Thumb3_Joint_L_CTR2";
	rename -uid "5778ED72-4E04-199F-A9E0-D2A0FE8221BE";
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
createNode transform -n "Thumb2_Joint_L_GRP1" -p "Thumb_Thumb2_L_JNT";
	rename -uid "AA055AEA-453E-6E70-85C9-9FA27D397DA2";
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
createNode transform -n "Thumb2_Joint_L_CTR1" -p "Thumb2_Joint_L_GRP1";
	rename -uid "3F6CE8DF-48E2-435F-9389-CE965C82D3DC";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb2_Joint_L_CTR1Shape" -p "Thumb2_Joint_L_CTR1";
	rename -uid "9E7900F5-43C1-2810-4E08-B488C3D6D2F5";
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
createNode transform -n "Thumb1_Joint_L_GRP0" -p "Thumb_Thumb1_L_JNT";
	rename -uid "46E4C4D8-4F6E-6209-FF56-968B68A17B8D";
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
createNode transform -n "Thumb1_Joint_L_CTR0" -p "Thumb1_Joint_L_GRP0";
	rename -uid "8DEFA850-4BF4-F159-7583-3BB90698079D";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb1_Joint_L_CTR0Shape" -p "Thumb1_Joint_L_CTR0";
	rename -uid "48E830C0-465B-D353-509B-928B5BC364B0";
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
createNode joint -n "Index_Index1_L_JNT" -p "Arm_Wrist_L_JNT";
	rename -uid "71DF8DF1-4FEA-4187-D4EC-93A48C3DF37F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.1093015670776367 -0.51708340644836426 2.260073184967041 ;
	setAttr ".r" -type "double3" -0.10317488759756088 1.1876639127731323 -9.9299278259277344 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 80.442487 143.26073199999999 -2.7665829999999998 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 56;
	setAttr ".pfrsName" -type "string" "Index1";
createNode joint -n "Index_Index2_L_JNT" -p "Index_Index1_L_JNT";
	rename -uid "5AACEFC6-431B-3FE8-C01D-B897B92A8052";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.6764094829559326 -6.9391385295602959e-06 2.9242517484817654e-05 ;
	setAttr ".r" -type "double3" -0.10317482799291611 1.1876626014709473 -9.9299373626708984 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 84.118896000000007 143.26072500000001 -2.7665540000000002 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 57;
	setAttr ".pfrsName" -type "string" "Index2";
createNode joint -n "Index_Index3_L_JNT" -p "Index_Index2_L_JNT";
	rename -uid "C26392E9-4212-AA37-1BAB-1EB191CDAC31";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.8830626010894775 3.8511967431986704e-05 -4.2764815589180216e-05 ;
	setAttr ".r" -type "double3" -0.025843800976872444 0.5960661768913269 -4.9644393920898438 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 87.001958999999999 143.260763 -2.766597 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 58;
	setAttr ".pfrsName" -type "string" "Index3";
createNode joint -n "Index_Index4_L_JNT" -p "Index_Index3_L_JNT";
	rename -uid "4C5DD2BB-48AD-F000-9D7A-D9AEC7079C65";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.3927199840545654 3.7025907658971846e-05 3.3554435503901914e-05 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 59;
	setAttr ".pfrsName" -type "string" "Index4";
createNode transform -n "Index4_Joint_L_GRP3" -p "Index_Index4_L_JNT";
	rename -uid "1B3A551E-4EC3-6F4C-6DEF-E6AA0E75B75C";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index4_Joint_L_CTR3" -p "Index4_Joint_L_GRP3";
	rename -uid "13773FC1-4C25-37F8-2F06-A5871416A966";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index4_Joint_L_CTR3Shape" -p "Index4_Joint_L_CTR3";
	rename -uid "BE67ECC2-42C0-5BFC-85E0-11A8E4E5D246";
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
createNode transform -n "Index3_Joint_L_GRP2" -p "Index_Index3_L_JNT";
	rename -uid "D8EB5EFF-453C-B3CD-8A84-F2BD5B1FA729";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index3_Joint_L_CTR2" -p "Index3_Joint_L_GRP2";
	rename -uid "8625BEF8-47B0-5F4D-1F0C-2DB41F39389A";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index3_Joint_L_CTR2Shape" -p "Index3_Joint_L_CTR2";
	rename -uid "6023D3A2-44C4-98CC-E7F2-979DE0C6CCB0";
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
createNode transform -n "Index2_Joint_L_GRP1" -p "Index_Index2_L_JNT";
	rename -uid "F3A85C09-4839-013C-ED2F-6BBF200BE3B0";
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
createNode transform -n "Index2_Joint_L_CTR1" -p "Index2_Joint_L_GRP1";
	rename -uid "2245B38B-44B6-BE63-2F0D-47B67CE62BBB";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index2_Joint_L_CTR1Shape" -p "Index2_Joint_L_CTR1";
	rename -uid "E8CEF11F-4754-B854-2AD0-BCB4679B5BCC";
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
createNode transform -n "Index1_Joint_L_GRP0" -p "Index_Index1_L_JNT";
	rename -uid "986F4927-42B5-90DF-65F7-55AC2ED8F507";
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
createNode transform -n "Index1_Joint_L_CTR0" -p "Index1_Joint_L_GRP0";
	rename -uid "852CBAFD-4FEE-C5B0-6C37-3FA13B1F8DBD";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index1_Joint_L_CTR0Shape" -p "Index1_Joint_L_CTR0";
	rename -uid "476317F9-495E-986C-0A82-FA9F7840B302";
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
createNode joint -n "Middle_Middle1_L_JNT" -p "Arm_Wrist_L_JNT";
	rename -uid "4BF5214A-4340-EAED-3F31-DC9DC27FB9AA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.5334014892578125 -3.3924046874744818e-05 1.3937025869381614e-05 ;
	setAttr ".r" -type "double3" -0.10284096747636795 1.1857713460922241 -9.9139289855957049 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 80.866585999999998 143.777781 -5.026643 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 28;
	setAttr ".pfrsName" -type "string" "Middle1";
createNode joint -n "Middle_Middle2_L_JNT" -p "Middle_Middle1_L_JNT";
	rename -uid "71F411E5-40E4-C64C-1441-94AF1B27BF67";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.6982367038726807 1.9613592030509608e-06 1.7916967408382334e-05 ;
	setAttr ".r" -type "double3" -0.1035085991024971 1.189558744430542 -9.9459123611450195 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 84.564823000000004 143.777783 -5.0266250000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 29;
	setAttr ".pfrsName" -type "string" "Middle2";
createNode joint -n "Middle_Middle3_L_JNT" -p "Middle_Middle2_L_JNT";
	rename -uid "F2F9B12A-4D5A-0C12-53CB-28A87E45B763";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.9509215354919434 -3.9376085624098778e-05 1.6447960661025718e-05 ;
	setAttr ".r" -type "double3" -0.02584347128868103 0.59606772661209106 -4.964439868927002 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 87.515743999999998 143.77774400000001 -5.0266080000000004 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 30;
	setAttr ".pfrsName" -type "string" "Middle3";
createNode joint -n "Middle_Middle4_L_JNT" -p "Middle_Middle3_L_JNT";
	rename -uid "A1790E19-449A-A17A-6C7A-A9B883F6EF38";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.8339025974273682 -3.8934820622671396e-05 -9.5042232715059072e-06 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 31;
	setAttr ".pfrsName" -type "string" "Middle4";
createNode transform -n "Middle4_Joint_L_GRP3" -p "Middle_Middle4_L_JNT";
	rename -uid "3CDE8D5B-4BCD-8621-F2ED-39A4FAD97C2A";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle4_Joint_L_CTR3" -p "Middle4_Joint_L_GRP3";
	rename -uid "86ADD8AD-44F6-C011-B7C8-0A9CF6663BB5";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle4_Joint_L_CTR3Shape" -p "Middle4_Joint_L_CTR3";
	rename -uid "61432D5B-41BC-D2A6-555C-A9937E442E5A";
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
createNode transform -n "Middle3_Joint_L_GRP2" -p "Middle_Middle3_L_JNT";
	rename -uid "973CBD5E-4745-5921-0800-4F89AC857DFB";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle3_Joint_L_CTR2" -p "Middle3_Joint_L_GRP2";
	rename -uid "B08C8D7E-49AF-A27D-16E7-46BBA7493638";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle3_Joint_L_CTR2Shape" -p "Middle3_Joint_L_CTR2";
	rename -uid "5B831A7E-4818-10D3-A08F-C5BE3B272DEC";
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
createNode transform -n "Middle2_Joint_L_GRP1" -p "Middle_Middle2_L_JNT";
	rename -uid "F5461E24-4CA4-E293-1CE1-719A6652C0BC";
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
createNode transform -n "Middle2_Joint_L_CTR1" -p "Middle2_Joint_L_GRP1";
	rename -uid "9BCC17CE-4246-55BC-8303-27A6BB667821";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle2_Joint_L_CTR1Shape" -p "Middle2_Joint_L_CTR1";
	rename -uid "67BB95C5-46C9-D5AB-FFE9-DDADBC53B0EA";
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
createNode transform -n "Middle1_Joint_L_GRP0" -p "Middle_Middle1_L_JNT";
	rename -uid "8DF487A1-401A-20A0-61CF-C491848CA0EE";
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
createNode transform -n "Middle1_Joint_L_CTR0" -p "Middle1_Joint_L_GRP0";
	rename -uid "5559E41A-437C-12AA-AB9F-4E9E4EBA1D2B";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle1_Joint_L_CTR0Shape" -p "Middle1_Joint_L_CTR0";
	rename -uid "B1F130E4-49DB-2EF3-0BA0-85B85471BEB0";
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
createNode joint -n "Ring_Ring1_L_JNT" -p "Arm_Wrist_L_JNT";
	rename -uid "6A640C68-425B-7649-23A4-B38695737B5A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.104527473449707 -0.043939504772424698 -1.8650846481323242 ;
	setAttr ".r" -type "double3" -0.10317488759756088 1.1876639127731323 -9.9299278259277344 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 80.437713000000002 143.73387600000001 -6.8917409999999997 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 44;
	setAttr ".pfrsName" -type "string" "Ring1";
createNode joint -n "Ring_Ring2_L_JNT" -p "Ring_Ring1_L_JNT";
	rename -uid "759D937C-4422-78B4-FD8A-CF8C32E83F27";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.1540267467498779 -6.5534677560208365e-06 1.0425744221720379e-05 ;
	setAttr ".r" -type "double3" -0.10317482799291611 1.1876626014709473 -9.9299373626708984 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 83.591739000000004 143.733869 -6.8917310000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 45;
	setAttr ".pfrsName" -type "string" "Ring2";
createNode joint -n "Ring_Ring3_L_JNT" -p "Ring_Ring2_L_JNT";
	rename -uid "0BEA9CF1-4FDC-3639-45A1-679823E0D739";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.9376723766326904 -4.5458618842530996e-05 -6.8647573243652005e-06 ;
	setAttr ".r" -type "double3" -0.025843800976872444 0.5960661768913269 -4.9644393920898438 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 86.529411999999994 143.733824 -6.8917380000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 46;
	setAttr ".pfrsName" -type "string" "Ring3";
createNode joint -n "Ring_Ring4_L_JNT" -p "Ring_Ring3_L_JNT";
	rename -uid "26A68CF7-454C-1828-5095-91A55AB1B1EF";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.6474525928497314 -4.9804413720266894e-05 7.0705155508221651e-08 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 47;
	setAttr ".pfrsName" -type "string" "Ring4";
createNode transform -n "Ring4_Joint_L_GRP3" -p "Ring_Ring4_L_JNT";
	rename -uid "9B2ED809-412C-D34D-D67C-CB9109D865F2";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring4_Joint_L_CTR3" -p "Ring4_Joint_L_GRP3";
	rename -uid "E8612727-4DAA-EA7D-4F55-FABD99E01317";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring4_Joint_L_CTR3Shape" -p "Ring4_Joint_L_CTR3";
	rename -uid "FE3EF826-4605-C366-F534-E3BB907E7EDD";
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
createNode transform -n "Ring3_Joint_L_GRP2" -p "Ring_Ring3_L_JNT";
	rename -uid "3A7FB08C-406A-A8B8-125A-A4B958C771A9";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring3_Joint_L_CTR2" -p "Ring3_Joint_L_GRP2";
	rename -uid "B4ADF494-4D31-233E-9DF4-01B5DDA33716";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring3_Joint_L_CTR2Shape" -p "Ring3_Joint_L_CTR2";
	rename -uid "20B306F7-429A-6D20-31B0-C988A5853A23";
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
createNode transform -n "Ring2_Joint_L_GRP1" -p "Ring_Ring2_L_JNT";
	rename -uid "ADF8FD0A-4E18-EC4F-5305-89ACC1B09FD2";
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
createNode transform -n "Ring2_Joint_L_CTR1" -p "Ring2_Joint_L_GRP1";
	rename -uid "106BE6CF-4087-79E3-5E32-BBA5CC04A03C";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring2_Joint_L_CTR1Shape" -p "Ring2_Joint_L_CTR1";
	rename -uid "099D3D33-44AB-9495-2572-8CA949ABB55E";
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
createNode transform -n "Ring1_Joint_L_GRP0" -p "Ring_Ring1_L_JNT";
	rename -uid "5EF6A53C-436F-E882-7FA4-ABAB9AA7F7D0";
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
createNode transform -n "Ring1_Joint_L_CTR0" -p "Ring1_Joint_L_GRP0";
	rename -uid "DBE58F9C-4FE3-C8C3-32CD-85A3F9044154";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring1_Joint_L_CTR0Shape" -p "Ring1_Joint_L_CTR0";
	rename -uid "8CE5E122-4FEA-BA82-240E-3CA730AB24FD";
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
createNode joint -n "Pinky_Pinky1_L_JNT" -p "Arm_Wrist_L_JNT";
	rename -uid "190EF088-40F6-01D2-8B23-0FA451C37964";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.0777778625488281 -0.48866820335388184 -3.8060669898986816 ;
	setAttr ".r" -type "double3" -0.074961148202419281 5.2430129051208496 -9.4271745681762695 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 79.410962999999995 143.28914700000001 -8.8327240000000007 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 5;
	setAttr ".pfrsName" -type "string" "Pinky1";
createNode joint -n "Pinky_Pinky2_L_JNT" -p "Pinky_Pinky1_L_JNT";
	rename -uid "394BD19E-476F-C102-3AD8-40A3EF374294";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.6000344753265381 -2.2522151539305924e-06 -2.6238794816890731e-05 ;
	setAttr ".r" -type "double3" 0.61400109529495239 -2.8029649257659912 -10.448641777038574 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 83.010997000000003 143.28914499999999 -8.8327500000000008 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 6;
	setAttr ".pfrsName" -type "string" "Pinky2";
createNode joint -n "Pinky_Pinky3_L_JNT" -p "Pinky_Pinky2_L_JNT";
	rename -uid "6917F865-49B1-DD5D-D27C-2AA3D6755BFF";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.1142115592956543 1.9538281776476651e-05 -2.8644151370826876e-06 ;
	setAttr ".r" -type "double3" -0.025845104828476906 0.59606760740280151 -4.9644417762756348 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 85.125208999999998 143.289164 -8.8327530000000003 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 7;
	setAttr ".pfrsName" -type "string" "Pinky3";
createNode joint -n "Pinky_Pinky4_L_JNT" -p "Pinky_Pinky3_L_JNT";
	rename -uid "040ABA28-4E48-207C-0587-A084607B5B76";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.9756826162338257 1.2405656889313832e-05 -4.4301406887825578e-05 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 8;
	setAttr ".pfrsName" -type "string" "Pinky4";
createNode transform -n "Pinky4_Joint_L_GRP3" -p "Pinky_Pinky4_L_JNT";
	rename -uid "7C4D4F0F-422D-CEBF-AD10-0F976EB1EB1E";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinky4_Joint_L_CTR3" -p "Pinky4_Joint_L_GRP3";
	rename -uid "54023CA0-4F96-3FE9-A7AD-07AB5EA827D5";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinky4_Joint_L_CTR3Shape" -p "Pinky4_Joint_L_CTR3";
	rename -uid "6F62E68A-47C3-6B3D-1BC8-9691BA5444C6";
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
createNode transform -n "Pinky3_Joint_L_GRP2" -p "Pinky_Pinky3_L_JNT";
	rename -uid "2EF21BD1-4F7E-9225-0418-D79D13235C69";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinky3_Joint_L_CTR2" -p "Pinky3_Joint_L_GRP2";
	rename -uid "51AA2FBA-409A-067E-DF19-11878DA025A9";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinky3_Joint_L_CTR2Shape" -p "Pinky3_Joint_L_CTR2";
	rename -uid "BF55391C-4F8E-4EA0-3ACE-CAA90DA91ACE";
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
createNode transform -n "Pinky2_Joint_L_GRP1" -p "Pinky_Pinky2_L_JNT";
	rename -uid "1BA27934-4D3C-5AE0-8A55-7186FEF89A59";
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
createNode transform -n "Pinky2_Joint_L_CTR1" -p "Pinky2_Joint_L_GRP1";
	rename -uid "9D6D4C54-41D4-848A-6810-DD8A8DDB3615";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinky2_Joint_L_CTR1Shape" -p "Pinky2_Joint_L_CTR1";
	rename -uid "D6D9C3F5-4992-D073-407E-12BB924529F6";
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
createNode transform -n "Pinky1_Joint_L_GRP0" -p "Pinky_Pinky1_L_JNT";
	rename -uid "E913103B-4075-C203-5767-E083AB307722";
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
createNode transform -n "Pinky1_Joint_L_CTR0" -p "Pinky1_Joint_L_GRP0";
	rename -uid "BA77FDEA-4330-C972-DB81-9C8053BA039E";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinky1_Joint_L_CTR0Shape" -p "Pinky1_Joint_L_CTR0";
	rename -uid "9AD8EE84-4C10-9D0C-F099-9D860A3E4CF3";
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
createNode transform -n "Wrist_Joint_L_GRP2" -p "Arm_Wrist_L_JNT";
	rename -uid "9EB24B1B-4D8E-57FE-6647-A8B5D8EF0029";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Wrist_Joint_L_CTR2" -p "Wrist_Joint_L_GRP2";
	rename -uid "029966CE-48D3-AC72-ED6C-38A54EDB7C20";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Wrist_Joint_L_CTR2Shape" -p "Wrist_Joint_L_CTR2";
	rename -uid "6642E090-430C-61E5-7F1D-7E87CE2B8D96";
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
createNode transform -n "Elbow_Joint_L_GRP1" -p "Arm_Elbow_L_JNT";
	rename -uid "F49F3A1D-4953-5AF6-1979-B58D407B8765";
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
createNode transform -n "Elbow_Joint_L_CTR1" -p "Elbow_Joint_L_GRP1";
	rename -uid "91D3CD70-4FAA-75C4-1B75-DDB486676D24";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Elbow_Joint_L_CTR1Shape" -p "Elbow_Joint_L_CTR1";
	rename -uid "3B1B0F48-4928-C082-651F-308036BAF6E2";
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
createNode transform -n "Shoulder_Joint_L_GRP0" -p "Arm_Shoulder_L_JNT";
	rename -uid "252BCD97-4080-14DE-7FB1-B7B5BECC21DE";
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
createNode transform -n "Shoulder_Joint_L_CTR0" -p "Shoulder_Joint_L_GRP0";
	rename -uid "6F67F376-4616-F86E-BAEC-F0915E610A52";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Shoulder_Joint_L_CTR0Shape" -p "Shoulder_Joint_L_CTR0";
	rename -uid "75E1CEA3-4644-05D3-34ED-6AA1C2BAE14F";
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
createNode transform -n "Clav_Joint_L_GRP0" -p "Clav_Clav_L_JNT";
	rename -uid "4EE01DB7-4FAE-2AF6-89C5-13B9C79C8E2F";
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
createNode transform -n "Clav_Joint_L_CTR0" -p "Clav_Joint_L_GRP0";
	rename -uid "AA99FDED-49C7-DCB1-99A6-53AC202D9895";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Clav_Joint_L_CTR0Shape" -p "Clav_Joint_L_CTR0";
	rename -uid "6702B5A7-4E2C-4B3A-9B36-D48C4B180B7B";
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
createNode joint -n "Clav_Clav_R_JNT" -p "Spine_Spine3_M_JNT";
	rename -uid "79194FE9-43EE-EF35-80CD-89A2A4424C4E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -4.569969654083252 10.946176528930664 -2.6280174255371094 ;
	setAttr ".r" -type "double3" 1.7226957082748413 0.95082920789718617 10.392890930175781 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.56996 144.30269699999999 -2.7946409999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 60;
	setAttr ".pfrsName" -type "string" "Clav";
createNode joint -n "Arm_Shoulder_R_JNT" -p "Clav_Clav_R_JNT";
	rename -uid "B21C592B-4D48-805C-E8C1-008BCAF913D1";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.592844009399414 -0.52479839324951172 -2.2320985794067383 ;
	setAttr ".r" -type "double3" 43.7484130859375 21.621391296386719 59.627582550048828 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -15.162804 143.77789899999999 -5.0267400000000002 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 61;
	setAttr ".pfrsName" -type "string" "Shoulder";
createNode joint -n "Arm_Elbow_R_JNT" -p "Arm_Shoulder_R_JNT";
	rename -uid "1A42060B-45EA-5915-8850-EBBF762F021D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -27.841520309448242 -3.3079217246267945e-05 1.1676310350594576e-05 ;
	setAttr ".r" -type "double3" -4.4723503833665751e-07 29.255735397338864 1.0124829259439139e-06 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -43.004323999999997 143.77786599999999 -5.0267280000000003 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 62;
	setAttr ".pfrsName" -type "string" "Elbow";
createNode joint -n "Arm_Wrist_R_JNT" -p "Arm_Elbow_R_JNT";
	rename -uid "7BF6EFD7-4C9F-C985-284D-D8B31FAE2B5D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -28.328838348388672 -1.5814171661077125e-07 5.5816013627918437e-05 ;
	setAttr ".r" -type "double3" -32.799850463867188 -0.51119619607925415 -2.33371901512146 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -71.333162999999999 143.77786499999999 -5.0266719999999996 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 63;
	setAttr ".pfrsName" -type "string" "Wrist";
createNode joint -n "Pinky_Pinky1_R_JNT" -p "Arm_Wrist_R_JNT";
	rename -uid "B3E5FAD8-4358-F9DB-C7BC-9B9E1EB094DC";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -8.0766744613647461 -0.48845928907394409 -3.8060102462768555 ;
	setAttr ".r" -type "double3" -0.10416682809591293 -1.200680136680603 9.9285879135131836 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -79.409836999999996 143.28940600000001 -8.8326829999999994 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 17;
	setAttr ".pfrsName" -type "string" "Pinky1";
createNode joint -n "Pinky_Pinky2_R_JNT" -p "Pinky_Pinky1_R_JNT";
	rename -uid "207153F9-408A-500D-C946-B49B9F7376F7";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.6000344753265381 3.9676655433140695e-05 5.0814422138500959e-05 ;
	setAttr ".r" -type "double3" -0.10387900471687317 -1.1975173950195313 9.9285802841186523 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -83.009872000000001 143.289446 -8.8326320000000003 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 18;
	setAttr ".pfrsName" -type "string" "Pinky2";
createNode joint -n "Pinky_Pinky3_R_JNT" -p "Pinky_Pinky2_R_JNT";
	rename -uid "F6111A50-4595-6243-B600-94A2B4A2D609";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.1142115592956543 1.5137925402086694e-05 1.4793768968957011e-05 ;
	setAttr ".r" -type "double3" -0.026084566488862041 -0.60179966688156128 4.9637351036071777 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -85.124082999999999 143.28946099999999 -8.8326170000000008 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 19;
	setAttr ".pfrsName" -type "string" "Pinky3";
createNode joint -n "Pinky_Pinky4_R_JNT" -p "Pinky_Pinky3_R_JNT";
	rename -uid "6F12693E-42D7-DEB9-C342-C5B5BCF88228";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.9756826162338257 -1.8521957827033475e-05 -9.8398413683753461e-07 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 20;
	setAttr ".pfrsName" -type "string" "Pinky4";
createNode transform -n "Pinky4_Joint_R_GRP3" -p "Pinky_Pinky4_R_JNT";
	rename -uid "EC97C110-4ADD-B098-072F-429BA105FE04";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinky4_Joint_R_CTR3" -p "Pinky4_Joint_R_GRP3";
	rename -uid "0F60D350-481C-5082-F97A-EEAD567E6A19";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinky4_Joint_R_CTR3Shape" -p "Pinky4_Joint_R_CTR3";
	rename -uid "94E95C10-4808-305F-1A2F-7E954492A47B";
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
createNode transform -n "Pinky3_Joint_R_GRP2" -p "Pinky_Pinky3_R_JNT";
	rename -uid "68DAE58A-473F-2208-357F-90B4128FDB07";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinky3_Joint_R_CTR2" -p "Pinky3_Joint_R_GRP2";
	rename -uid "F5B919CE-465C-C762-8855-AABF53F99300";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinky3_Joint_R_CTR2Shape" -p "Pinky3_Joint_R_CTR2";
	rename -uid "C9378758-4C8E-02E2-872A-4992F0430763";
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
createNode transform -n "Pinky2_Joint_R_GRP1" -p "Pinky_Pinky2_R_JNT";
	rename -uid "97C956E8-4800-629B-6CD8-848A33D47320";
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
createNode transform -n "Pinky2_Joint_R_CTR1" -p "Pinky2_Joint_R_GRP1";
	rename -uid "289231B6-40D7-E686-EA97-DF8946334CB5";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinky2_Joint_R_CTR1Shape" -p "Pinky2_Joint_R_CTR1";
	rename -uid "CF4B2CE6-4B73-C6B5-7D9F-FEB6BEE29963";
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
createNode transform -n "Pinky1_Joint_R_GRP0" -p "Pinky_Pinky1_R_JNT";
	rename -uid "61B032DE-4962-92AB-4C93-F6A65EC456E1";
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
createNode transform -n "Pinky1_Joint_R_CTR0" -p "Pinky1_Joint_R_GRP0";
	rename -uid "ADA642F0-41BD-8B79-8160-2BAAE423C97B";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinky1_Joint_R_CTR0Shape" -p "Pinky1_Joint_R_CTR0";
	rename -uid "E97FF7BE-4A5C-B49C-9DF3-EE94FCACE93C";
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
createNode joint -n "Ring_Ring1_R_JNT" -p "Arm_Wrist_R_JNT";
	rename -uid "B5752377-4D94-9B15-8338-0C8D0F5AC9E2";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -9.1035881042480469 -0.043914347887039185 -1.86507248878479 ;
	setAttr ".r" -type "double3" -0.10416126251220703 -1.1990928649902344 9.9285783767700195 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -80.436751000000001 143.73395099999999 -6.8917450000000002 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 64;
	setAttr ".pfrsName" -type "string" "Ring1";
createNode joint -n "Ring_Ring2_R_JNT" -p "Ring_Ring1_R_JNT";
	rename -uid "8C777DCB-4132-CEDC-4F13-E3A548999E40";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.1540267467498779 2.3997297830646858e-05 4.8851212341105565e-05 ;
	setAttr ".r" -type "double3" -0.10415802150964737 -1.1990797519683838 9.9285926818847656 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -83.590778 143.73397499999999 -6.8916959999999996 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 65;
	setAttr ".pfrsName" -type "string" "Ring2";
createNode joint -n "Ring_Ring3_R_JNT" -p "Ring_Ring2_R_JNT";
	rename -uid "C75B33CB-452F-3E2C-7289-2684F490F791";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.9376723766326904 -4.1600655094953254e-05 -3.9660633774474263e-05 ;
	setAttr ".r" -type "double3" -0.026084566488862041 -0.60179966688156128 4.9637351036071777 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -86.528450000000007 143.733934 -6.8917359999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 66;
	setAttr ".pfrsName" -type "string" "Ring3";
createNode joint -n "Ring_Ring4_R_JNT" -p "Ring_Ring3_R_JNT";
	rename -uid "CFD06484-4E24-F330-6B1E-EB87AFF44C97";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.6474525928497314 2.4608212697785348e-05 -2.294923433510121e-06 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 67;
	setAttr ".pfrsName" -type "string" "Ring4";
createNode transform -n "Ring4_Joint_R_GRP3" -p "Ring_Ring4_R_JNT";
	rename -uid "C93445D5-4B64-7454-8DA2-0DA45F2E31C1";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring4_Joint_R_CTR3" -p "Ring4_Joint_R_GRP3";
	rename -uid "9E12C949-4D35-CABE-8CBD-838F157C303B";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring4_Joint_R_CTR3Shape" -p "Ring4_Joint_R_CTR3";
	rename -uid "FE640862-47E5-97BA-AD25-178C40A49BDE";
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
createNode transform -n "Ring3_Joint_R_GRP2" -p "Ring_Ring3_R_JNT";
	rename -uid "7D5EDE42-4E05-AC35-006C-0EAECA6DD15C";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring3_Joint_R_CTR2" -p "Ring3_Joint_R_GRP2";
	rename -uid "8CAA237E-4872-C1AE-79BB-BBB16FECE446";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring3_Joint_R_CTR2Shape" -p "Ring3_Joint_R_CTR2";
	rename -uid "8FD62194-49DC-1685-E12F-92ADC0B4539A";
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
createNode transform -n "Ring2_Joint_R_GRP1" -p "Ring_Ring2_R_JNT";
	rename -uid "B87886FB-4877-FE16-CB3B-ADBD8168959C";
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
createNode transform -n "Ring2_Joint_R_CTR1" -p "Ring2_Joint_R_GRP1";
	rename -uid "FAE05FA9-44F2-9A5C-CF68-5F9C5B605332";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring2_Joint_R_CTR1Shape" -p "Ring2_Joint_R_CTR1";
	rename -uid "28893453-4A91-8038-8A93-F38CB6A80974";
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
createNode transform -n "Ring1_Joint_R_GRP0" -p "Ring_Ring1_R_JNT";
	rename -uid "49902A4F-415D-E3FE-FBAD-31AEC72204EA";
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
createNode transform -n "Ring1_Joint_R_CTR0" -p "Ring1_Joint_R_GRP0";
	rename -uid "E78CC20E-4143-2ABE-5DB2-07BF17F7CF8C";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring1_Joint_R_CTR0Shape" -p "Ring1_Joint_R_CTR0";
	rename -uid "A0F0BCA6-4A25-30FB-B269-C0AC374561F4";
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
createNode joint -n "Middle_Middle1_R_JNT" -p "Arm_Wrist_R_JNT";
	rename -uid "0300CF57-49DB-76C2-3C24-E98D5F7AEDB8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -9.5325031280517578 -1.6312302250298671e-05 1.6791842426755466e-05 ;
	setAttr ".r" -type "double3" -0.10416126251220703 -1.1990928649902344 9.9285783767700195 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -80.865666000000004 143.777849 -5.026656 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 32;
	setAttr ".pfrsName" -type "string" "Middle1";
createNode joint -n "Middle_Middle2_R_JNT" -p "Middle_Middle1_R_JNT";
	rename -uid "1BE0C7C1-42DA-75E4-58BD-558B2B5DC273";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.6982367038726807 1.5066959349496756e-05 -2.2545524188899435e-05 ;
	setAttr ".r" -type "double3" -0.10415802150964737 -1.1990797519683838 9.9285926818847656 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -84.563901999999999 143.77786399999999 -5.0266780000000004 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 33;
	setAttr ".pfrsName" -type "string" "Middle2";
createNode joint -n "Middle_Middle3_R_JNT" -p "Middle_Middle2_R_JNT";
	rename -uid "B6F356C8-4F8A-680B-F171-8BAA74B45C5D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.9509215354919434 -3.1132449862525391e-07 -3.0340254397742683e-07 ;
	setAttr ".r" -type "double3" -0.026087444275617599 -0.60382097959518433 4.9637393951416016 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -87.514824000000004 143.77786399999999 -5.0266780000000004 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 34;
	setAttr ".pfrsName" -type "string" "Middle3";
createNode joint -n "Middle_Middle4_R_JNT" -p "Middle_Middle3_R_JNT";
	rename -uid "B9FC76F3-4112-55A3-811A-70B7D6E82108";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.8339025974273682 8.0532408901490271e-06 5.3787705837748945e-05 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 35;
	setAttr ".pfrsName" -type "string" "Middle4";
createNode transform -n "Middle4_Joint_R_GRP3" -p "Middle_Middle4_R_JNT";
	rename -uid "1BDED6A3-4035-5BEE-CEB0-1193776D58E9";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle4_Joint_R_CTR3" -p "Middle4_Joint_R_GRP3";
	rename -uid "E681CD3D-478F-BC14-593C-4084D899528C";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle4_Joint_R_CTR3Shape" -p "Middle4_Joint_R_CTR3";
	rename -uid "77D3D45F-4C4A-BF02-72A0-0B943B35613E";
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
createNode transform -n "Middle3_Joint_R_GRP2" -p "Middle_Middle3_R_JNT";
	rename -uid "04674557-4021-E799-2193-0381839FF6C1";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle3_Joint_R_CTR2" -p "Middle3_Joint_R_GRP2";
	rename -uid "AD599D20-4065-F33A-DD6A-8893326D8365";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle3_Joint_R_CTR2Shape" -p "Middle3_Joint_R_CTR2";
	rename -uid "41D27D02-47CE-ECB8-FAD0-45900BEA670F";
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
createNode transform -n "Middle2_Joint_R_GRP1" -p "Middle_Middle2_R_JNT";
	rename -uid "9E956796-4E1C-E417-3C67-4D9B19B8F109";
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
createNode transform -n "Middle2_Joint_R_CTR1" -p "Middle2_Joint_R_GRP1";
	rename -uid "ACC861CB-4B71-6AEF-FF4A-3F9A10F5A6B4";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle2_Joint_R_CTR1Shape" -p "Middle2_Joint_R_CTR1";
	rename -uid "789E9431-42D6-6775-F42A-3494E3A7F9AB";
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
createNode transform -n "Middle1_Joint_R_GRP0" -p "Middle_Middle1_R_JNT";
	rename -uid "A49EE677-440D-81A5-095E-0F902B8B2AFB";
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
createNode transform -n "Middle1_Joint_R_CTR0" -p "Middle1_Joint_R_GRP0";
	rename -uid "46B416FD-4F5F-1269-724C-F2B581B48FE7";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle1_Joint_R_CTR0Shape" -p "Middle1_Joint_R_CTR0";
	rename -uid "727253DC-42CD-D922-F18E-3185FA9DECAA";
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
createNode joint -n "Index_Index1_R_JNT" -p "Arm_Wrist_R_JNT";
	rename -uid "C096E560-4B42-453C-A922-95B7ED811F84";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -9.108281135559082 -0.51678895950317383 2.2601163387298584 ;
	setAttr ".r" -type "double3" -0.10416126251220703 -1.1990928649902344 9.9285783767700195 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -80.441444000000004 143.261076 -2.766556 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 52;
	setAttr ".pfrsName" -type "string" "Index1";
createNode joint -n "Index_Index2_R_JNT" -p "Index_Index1_R_JNT";
	rename -uid "A1543D2C-412B-0576-AD77-779C18199B07";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.6764094829559326 1.9227156371925958e-05 3.2355670555261895e-05 ;
	setAttr ".r" -type "double3" -0.10415802150964737 -1.1990797519683838 9.9285926818847656 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -84.117852999999997 143.26109600000001 -2.766524 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 53;
	setAttr ".pfrsName" -type "string" "Index2";
createNode joint -n "Index_Index3_R_JNT" -p "Index_Index2_R_JNT";
	rename -uid "FB972303-4F91-8FE0-7329-B6BBCB416046";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.8830626010894775 -4.9601214413996786e-05 4.0448976506013423e-05 ;
	setAttr ".r" -type "double3" -0.026084566488862041 -0.60179966688156128 4.9637351036071777 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -87.000916000000004 143.26104599999999 -2.766483 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 54;
	setAttr ".pfrsName" -type "string" "Index3";
createNode joint -n "Index_Index4_R_JNT" -p "Index_Index3_R_JNT";
	rename -uid "C2E002D7-4900-0E5F-048F-BB85CA48FCB8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.3927199840545654 2.6814701413968578e-05 2.8020134777761996e-05 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 55;
	setAttr ".pfrsName" -type "string" "Index4";
createNode transform -n "Index4_Joint_R_GRP3" -p "Index_Index4_R_JNT";
	rename -uid "8CC353E2-46F4-82F6-96AB-76AD06CDF8EF";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index4_Joint_R_CTR3" -p "Index4_Joint_R_GRP3";
	rename -uid "FAC4D67E-4896-0BDD-30C3-B1A29D9CA871";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index4_Joint_R_CTR3Shape" -p "Index4_Joint_R_CTR3";
	rename -uid "30B28C5D-46B0-3CC2-F310-B8BFF8E9A03C";
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
createNode transform -n "Index3_Joint_R_GRP2" -p "Index_Index3_R_JNT";
	rename -uid "DDB2E8C4-47D3-67FF-5BEA-79896406AC89";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index3_Joint_R_CTR2" -p "Index3_Joint_R_GRP2";
	rename -uid "A03D9C75-4465-E3C3-29D3-EEB9EFF7C439";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index3_Joint_R_CTR2Shape" -p "Index3_Joint_R_CTR2";
	rename -uid "6A06826B-4DF0-47F5-D98D-5C940CF7E3F5";
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
createNode transform -n "Index2_Joint_R_GRP1" -p "Index_Index2_R_JNT";
	rename -uid "38ED1097-4471-5150-48B7-B7B8A88F9AAE";
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
createNode transform -n "Index2_Joint_R_CTR1" -p "Index2_Joint_R_GRP1";
	rename -uid "5B108EF6-4B61-B7BC-DD22-D08C770C14D3";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index2_Joint_R_CTR1Shape" -p "Index2_Joint_R_CTR1";
	rename -uid "7E7ECA5D-494C-1218-E39D-9FBE8CAA41BD";
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
createNode transform -n "Index1_Joint_R_GRP0" -p "Index_Index1_R_JNT";
	rename -uid "53B032C3-4490-3162-7C10-ADB73453A129";
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
createNode transform -n "Index1_Joint_R_CTR0" -p "Index1_Joint_R_GRP0";
	rename -uid "15702882-4AD9-4F8A-D1CD-1099A3A6C23C";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index1_Joint_R_CTR0Shape" -p "Index1_Joint_R_CTR0";
	rename -uid "556812CA-45FE-34D4-309E-D2A44EA8ADF7";
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
createNode joint -n "Thumb_Thumb1_R_JNT" -p "Arm_Wrist_R_JNT";
	rename -uid "45190726-42E2-D399-BB5E-7D88C2F0B0B3";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.464806079864502 -1.5727142095565796 2.682626485824585 ;
	setAttr ".r" -type "double3" -0.18460170924663544 -13.611824989318849 -7.8871331214904776 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -73.797967999999997 142.205151 -2.3440460000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 1;
	setAttr ".pfrsName" -type "string" "Thumb1";
createNode joint -n "Thumb_Thumb2_R_JNT" -p "Thumb_Thumb1_R_JNT";
	rename -uid "BDF51D95-40CD-A455-2E08-D5B3A8BF2652";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.2297718524932861 -1.8647087812423706 1.8647184371948242 ;
	setAttr ".r" -type "double3" 6.1195578575134277 -18.37579345703125 -2.780184268951416 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -77.027739999999994 140.340442 -0.47932799999999998 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 2;
	setAttr ".pfrsName" -type "string" "Thumb2";
createNode joint -n "Thumb_Thumb3_R_JNT" -p "Thumb_Thumb2_R_JNT";
	rename -uid "294225D4-4736-C83E-A7F8-B589BD39F0D3";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.6526050567626953 -1.5314493179321289 1.5314456224441528 ;
	setAttr ".r" -type "double3" -0.59679919481277466 -4.8457150459289551 -2.5632243156433105 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -79.680345000000003 138.80899299999999 1.0521180000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 3;
	setAttr ".pfrsName" -type "string" "Thumb3";
createNode joint -n "Thumb_Thumb4_R_JNT" -p "Thumb_Thumb3_R_JNT";
	rename -uid "4E55D818-47A7-5E87-F4F0-158235E6F4C5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.954580545425415 -1.1284617185592651 1.1285070180892944 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 4;
	setAttr ".pfrsName" -type "string" "Thumb4";
createNode transform -n "Thumb4_Joint_R_GRP3" -p "Thumb_Thumb4_R_JNT";
	rename -uid "E34B820F-4CEE-7167-8897-CC832C157E15";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb4_Joint_R_CTR3" -p "Thumb4_Joint_R_GRP3";
	rename -uid "F25352C4-4AF2-10C9-6E6E-88A763B56B1C";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb4_Joint_R_CTR3Shape" -p "Thumb4_Joint_R_CTR3";
	rename -uid "8F9F2BAA-4C79-286A-5B12-B2916DF65F3D";
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
createNode transform -n "Thumb3_Joint_R_GRP2" -p "Thumb_Thumb3_R_JNT";
	rename -uid "8CFF1C79-4DAC-F217-AF84-E2ACE3B8078C";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb3_Joint_R_CTR2" -p "Thumb3_Joint_R_GRP2";
	rename -uid "74464EE5-4A49-38BA-C2CA-B9A83EE0DE48";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb3_Joint_R_CTR2Shape" -p "Thumb3_Joint_R_CTR2";
	rename -uid "02661301-4973-E41C-86E9-BBA4EEEBAFAE";
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
createNode transform -n "Thumb2_Joint_R_GRP1" -p "Thumb_Thumb2_R_JNT";
	rename -uid "892746DB-416F-3F9A-2600-B4A149C4DBBA";
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
createNode transform -n "Thumb2_Joint_R_CTR1" -p "Thumb2_Joint_R_GRP1";
	rename -uid "C57C0071-41D3-CC0A-F2F9-80A7068064BF";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb2_Joint_R_CTR1Shape" -p "Thumb2_Joint_R_CTR1";
	rename -uid "C6D7EFE1-4797-48FC-7273-A5B78252CFF7";
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
createNode transform -n "Thumb1_Joint_R_GRP0" -p "Thumb_Thumb1_R_JNT";
	rename -uid "B6F72003-41F7-7210-EFA0-9E9C5A647297";
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
createNode transform -n "Thumb1_Joint_R_CTR0" -p "Thumb1_Joint_R_GRP0";
	rename -uid "ACC183C0-4E2A-879C-E039-6488DD597F6A";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb1_Joint_R_CTR0Shape" -p "Thumb1_Joint_R_CTR0";
	rename -uid "654F9240-41EF-4C27-3636-A8A9D6F78C14";
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
createNode transform -n "Wrist_Joint_R_GRP2" -p "Arm_Wrist_R_JNT";
	rename -uid "9CFBA2D7-4D73-E67B-559B-D2AA60E7D99C";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Wrist_Joint_R_CTR2" -p "Wrist_Joint_R_GRP2";
	rename -uid "A777ABDD-4548-4E1F-DB1F-DCA7E0805388";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Wrist_Joint_R_CTR2Shape" -p "Wrist_Joint_R_CTR2";
	rename -uid "673BEA3E-4E2F-208E-3127-BDB20CBAB00E";
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
createNode transform -n "Elbow_Joint_R_GRP1" -p "Arm_Elbow_R_JNT";
	rename -uid "C5603E31-4EEE-A924-7438-499037DCA2A9";
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
createNode transform -n "Elbow_Joint_R_CTR1" -p "Elbow_Joint_R_GRP1";
	rename -uid "70936EAB-4AD3-F085-37DF-89A4237145DC";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Elbow_Joint_R_CTR1Shape" -p "Elbow_Joint_R_CTR1";
	rename -uid "DC81D0AA-4072-27FB-C13D-88B0D97065C9";
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
createNode transform -n "Shoulder_Joint_R_GRP0" -p "Arm_Shoulder_R_JNT";
	rename -uid "5C5A6591-4392-652D-4A79-EB82D390EFA0";
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
createNode transform -n "Shoulder_Joint_R_CTR0" -p "Shoulder_Joint_R_GRP0";
	rename -uid "82BC5F27-4684-89D0-261D-B88B2D6E6C4E";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Shoulder_Joint_R_CTR0Shape" -p "Shoulder_Joint_R_CTR0";
	rename -uid "CB7F6CE7-4D55-9A19-EADE-9689AA970E95";
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
createNode transform -n "Clav_Joint_R_GRP0" -p "Clav_Clav_R_JNT";
	rename -uid "12195965-464E-C2F2-4E2C-6CA35F3262E4";
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
createNode transform -n "Clav_Joint_R_CTR0" -p "Clav_Joint_R_GRP0";
	rename -uid "1BA58ED6-4CE3-DA95-496C-46A642635D82";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Clav_Joint_R_CTR0Shape" -p "Clav_Joint_R_CTR0";
	rename -uid "ADB6ABBA-41EF-7516-95B9-3DB24F79FA85";
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
createNode transform -n "Spine3_Joint_M_GRP2" -p "Spine_Spine3_M_JNT";
	rename -uid "3C515DD0-4792-8F17-B5D4-43A12F35C0FD";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Spine3_Joint_M_CTR2" -p "Spine3_Joint_M_GRP2";
	rename -uid "FC590E38-4448-AF8A-A79A-3FBFC0B08648";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Spine3_Joint_M_CTR2Shape" -p "Spine3_Joint_M_CTR2";
	rename -uid "C326ABBC-4E2A-BF8B-984D-4495AF1139E0";
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
createNode transform -n "Spine2_Joint_M_GRP1" -p "Spine_Spine2_M_JNT";
	rename -uid "AC9F3E8D-4115-E2C0-BB10-C084CF0CE6B6";
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
createNode transform -n "Spine2_Joint_M_CTR1" -p "Spine2_Joint_M_GRP1";
	rename -uid "08E07C31-4FFA-2141-BACE-72B72BE83DC0";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Spine2_Joint_M_CTR1Shape" -p "Spine2_Joint_M_CTR1";
	rename -uid "013B70D7-4A3E-9FE5-288A-048540DCA5F7";
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
createNode transform -n "Spine1_Joint_M_GRP0" -p "Spine_Spine1_M_JNT";
	rename -uid "9B15B5E9-4607-190E-4FA2-AC887FC0E475";
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
createNode transform -n "Spine1_Joint_M_CTR0" -p "Spine1_Joint_M_GRP0";
	rename -uid "BA1C2CEC-467C-BA4F-37B9-91A50D1A571A";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Spine1_Joint_M_CTR0Shape" -p "Spine1_Joint_M_CTR0";
	rename -uid "2CFC31F4-4F41-D651-B4B3-0A9C16BE6668";
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
createNode joint -n "Leg_Hip_L_JNT" -p "Pelvis_Root_M_JNT";
	rename -uid "27CA99DB-46C7-7810-75D0-67B4F5C71886";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.2077817916870117 -6.7517142295837402 -1.5995556116104126 ;
	setAttr ".r" -type "double3" -34.154449462890625 18.399024963378906 -3.9356524944305415 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.2077819999999999 97.239755000000002 0.47652099999999997 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 14;
	setAttr ".pfrsName" -type "string" "Hip";
createNode joint -n "Leg_Knee_L_JNT" -p "Leg_Hip_L_JNT";
	rename -uid "F6F32885-4A83-4576-251E-D1BE4DE15849";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -4.1101580450231268e-07 -44.370471954345703 0.28464263677597046 ;
	setAttr ".r" -type "double3" 50.742500305175781 -7.5837006568908691 5.4060053825378418 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.2077810000000007 52.869281999999998 0.76116399999999995 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 15;
	setAttr ".pfrsName" -type "string" "Knee";
createNode joint -n "Leg_Ankle_L_JNT" -p "Leg_Knee_L_JNT";
	rename -uid "808749B6-47B7-AD8B-1E89-23AEE0B85E69";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 4.7163933913907385e-07 -44.427871704101563 -2.9821906089782715 ;
	setAttr ".r" -type "double3" -2.1486692428588867 0.26823329925537109 -7.2738103866577148 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.2077819999999999 8.4414099999999994 -2.2210269999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 16;
	setAttr ".pfrsName" -type "string" "Ankle";
createNode joint -n "Foot_Ball_L_JNT" -p "Leg_Ankle_L_JNT";
	rename -uid "B2D85A9B-438C-57EA-B67A-578D09A50CD0";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.9609880130010424e-06 -8.7286701202392578 10.710559844970703 ;
	setAttr ".r" -type "double3" -5.0488315537222661e-06 1.0016041187554947e-06 3.1761612717673415e-07 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.2077790000000004 -0.28726000000000002 8.4895329999999998 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 37;
	setAttr ".pfrsName" -type "string" "Ball";
createNode joint -n "Foot_Toe_L_JNT" -p "Foot_Ball_L_JNT";
	rename -uid "8C637F00-412B-998F-EDD4-5CB341486C22";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.5080619252548786e-06 -0.00067668297560885549 9.2781362533569336 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 38;
	setAttr ".pfrsName" -type "string" "Toe";
createNode transform -n "Toe_Joint_L_GRP1" -p "Foot_Toe_L_JNT";
	rename -uid "593AF42C-4A6A-224F-C119-859349894D22";
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
createNode transform -n "Toe_Joint_L_CTR1" -p "Toe_Joint_L_GRP1";
	rename -uid "CDC369BD-455B-40AA-DBE2-0CBB76373AEF";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Toe_Joint_L_CTR1Shape" -p "Toe_Joint_L_CTR1";
	rename -uid "ABA1F053-4B8B-ED76-CE63-2BAD57E7586A";
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
createNode transform -n "Ball_Joint_L_GRP0" -p "Foot_Ball_L_JNT";
	rename -uid "EAAC41AC-4F64-14A3-E25C-25988612F93B";
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
createNode transform -n "Ball_Joint_L_CTR0" -p "Ball_Joint_L_GRP0";
	rename -uid "F3EDBF86-4891-D7D1-A183-92B3E2B49CDB";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ball_Joint_L_CTR0Shape" -p "Ball_Joint_L_CTR0";
	rename -uid "D1E85551-49EA-C935-8C0A-7AACF93BD57D";
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
createNode transform -n "Ankle_Joint_L_GRP2" -p "Leg_Ankle_L_JNT";
	rename -uid "5662D089-4712-16C9-0571-4F9FDCF5DD11";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ankle_Joint_L_CTR2" -p "Ankle_Joint_L_GRP2";
	rename -uid "9D55F742-4B1F-39EE-9B83-259DB034B91B";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ankle_Joint_L_CTR2Shape" -p "Ankle_Joint_L_CTR2";
	rename -uid "1FD70253-4E5D-4EE1-6FCF-B0825F5F08DE";
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
createNode transform -n "Knee_Joint_L_GRP1" -p "Leg_Knee_L_JNT";
	rename -uid "E5842FD6-40C4-54D4-3864-19913AE584FE";
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
createNode transform -n "Knee_Joint_L_CTR1" -p "Knee_Joint_L_GRP1";
	rename -uid "BC120CBD-4A65-C672-C56C-9ABE7191DCE9";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Knee_Joint_L_CTR1Shape" -p "Knee_Joint_L_CTR1";
	rename -uid "3B53550F-4214-41D4-7498-5D9C5FBED842";
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
createNode transform -n "Hip_Joint_L_GRP0" -p "Leg_Hip_L_JNT";
	rename -uid "6D36F0F8-44CE-D98F-20DA-8896097B6B20";
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
createNode transform -n "Hip_Joint_L_CTR0" -p "Hip_Joint_L_GRP0";
	rename -uid "044A953F-4A24-1161-44D7-9CAAA44FC633";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Hip_Joint_L_CTR0Shape" -p "Hip_Joint_L_CTR0";
	rename -uid "43E5EC7F-4AD0-0286-7B12-CFAC0E7088AE";
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
createNode joint -n "Leg_Hip_R_JNT" -p "Pelvis_Root_M_JNT";
	rename -uid "102C6085-49D6-95C9-5578-6C86841D4014";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -8.2077960968017578 -6.7516622543334961 -1.5995594263076782 ;
	setAttr ".r" -type "double3" -14.307984352111816 -20.169742584228516 6.3290982246398926 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.2077960000000001 97.239806999999999 0.47651700000000002 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 11;
	setAttr ".pfrsName" -type "string" "Hip";
createNode joint -n "Leg_Knee_R_JNT" -p "Leg_Hip_R_JNT";
	rename -uid "CCACD302-45B9-12D0-0509-25A3992A63B5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.4355725959994743e-08 -44.370536804199219 0.28615638613700867 ;
	setAttr ".r" -type "double3" 23.794734954833984 8.1066608428955078 -0.31181907653808594 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.2077960000000001 52.869270999999998 0.76267399999999996 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 12;
	setAttr ".pfrsName" -type "string" "Knee";
createNode joint -n "Leg_Ankle_R_JNT" -p "Leg_Knee_R_JNT";
	rename -uid "C7ADDD6E-4EC3-ED89-ED34-6CAFC5011A94";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.6445819508517161e-07 -44.427730560302734 -2.9837889671325684 ;
	setAttr ".r" -type "double3" -18.117897033691406 -0.23588545620441437 -1.8236629962921143 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.2077950000000008 8.4415410000000008 -2.2211159999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 13;
	setAttr ".pfrsName" -type "string" "Ankle";
createNode joint -n "Foot_Ball_R_JNT" -p "Leg_Ankle_R_JNT";
	rename -uid "D6AC7A8A-4D95-0D17-2ED1-46A0A6CCFD94";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.3604382022313075e-06 -8.7286691665649414 10.71056079864502 ;
	setAttr ".r" -type "double3" 2.3456013877876107e-06 -4.8960332605929588e-06 -6.7639156497989461e-08 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.2077969999999993 -0.28712799999999999 8.4894449999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 39;
	setAttr ".pfrsName" -type "string" "Ball";
createNode joint -n "Foot_Toe_R_JNT" -p "Foot_Ball_R_JNT";
	rename -uid "E02622F8-49E0-FCAF-00FC-4B8CAF28EDD8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.0942645733157406e-06 -0.00067636941093951464 9.2781200408935547 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".radi" 3;
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 40;
	setAttr ".pfrsName" -type "string" "Toe";
createNode transform -n "Toe_Joint_R_GRP1" -p "Foot_Toe_R_JNT";
	rename -uid "C6D0FE41-4425-ABAF-4CEC-D0BBAAC36D2C";
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
createNode transform -n "Toe_Joint_R_CTR1" -p "Toe_Joint_R_GRP1";
	rename -uid "BE5D3A73-46EC-829C-9C5B-888CE163A6C4";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Toe_Joint_R_CTR1Shape" -p "Toe_Joint_R_CTR1";
	rename -uid "89854B3E-460D-770B-3B91-628B144CCB8B";
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
createNode transform -n "Ball_Joint_R_GRP0" -p "Foot_Ball_R_JNT";
	rename -uid "56DF1E51-472D-1B5B-D91E-4C8A1D55666F";
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
createNode transform -n "Ball_Joint_R_CTR0" -p "Ball_Joint_R_GRP0";
	rename -uid "D37B5CAC-4541-8A63-69D7-44B07976D62B";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ball_Joint_R_CTR0Shape" -p "Ball_Joint_R_CTR0";
	rename -uid "514C3DC1-4496-7AD1-A401-96BA94EDFE82";
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
createNode transform -n "Ankle_Joint_R_GRP2" -p "Leg_Ankle_R_JNT";
	rename -uid "5CC0742E-461F-CF9D-F120-3F9252004B78";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	addAttr -ci true -sn "animJoint" -ln "animJoint" -dt "string";
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ankle_Joint_R_CTR2" -p "Ankle_Joint_R_GRP2";
	rename -uid "6D72EB3F-4F62-6F5B-B8D5-1683F597450E";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ankle_Joint_R_CTR2Shape" -p "Ankle_Joint_R_CTR2";
	rename -uid "52038CE7-429F-E27C-5B11-AFA0053677F9";
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
createNode transform -n "Knee_Joint_R_GRP1" -p "Leg_Knee_R_JNT";
	rename -uid "1328A973-4F4B-D5B8-D546-32B279E29DCD";
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
createNode transform -n "Knee_Joint_R_CTR1" -p "Knee_Joint_R_GRP1";
	rename -uid "8F5D8EE3-4543-FD70-C405-E690FEC5BDDE";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Knee_Joint_R_CTR1Shape" -p "Knee_Joint_R_CTR1";
	rename -uid "C18B0C41-4633-DF0D-D26F-DD86CCEF3D1B";
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
createNode transform -n "Hip_Joint_R_GRP0" -p "Leg_Hip_R_JNT";
	rename -uid "5D56484C-4056-316C-B65C-E681A17C8F1F";
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
createNode transform -n "Hip_Joint_R_CTR0" -p "Hip_Joint_R_GRP0";
	rename -uid "74826769-4A57-56B5-34E1-658ED88147B1";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Hip_Joint_R_CTR0Shape" -p "Hip_Joint_R_CTR0";
	rename -uid "476C0A10-4651-5110-F5C4-83B7A289AFC2";
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
createNode transform -n "Root_Joint_M_GRP0" -p "Pelvis_Root_M_JNT";
	rename -uid "969148ED-4ECE-F9FD-2292-D5A21435FFAB";
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
createNode transform -n "Root_Joint_M_CTR0" -p "Root_Joint_M_GRP0";
	rename -uid "9247BC30-4D1B-A854-EE97-3CA6D5860BB0";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Root_Joint_M_CTR0Shape" -p "Root_Joint_M_CTR0";
	rename -uid "5AD6AD2C-4C67-DEC9-D516-EB84BF0BC6EB";
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
createNode joint -n "Pelvis_Root_M_JNT1" -p "JOINTS";
	rename -uid "415FF854-4EAF-A901-CE2D-F5B32F006642";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 103.99147000000001 2.0760770000000002 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 43;
	setAttr ".pfrsName" -type "string" "Root";
createNode joint -n "Leg_Hip_L_JNT1" -p "Pelvis_Root_M_JNT1";
	rename -uid "09E34E3F-4F76-7734-A9CA-289201B6381E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.2077817916870099 -6.7517142295837687 -1.5995556116104108 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr ".jo" -type "double3" 2.3854160110976384e-15 -7.9513867036587919e-16 1.4908850069360235e-16 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.2077819999999999 97.239755000000002 0.47652099999999997 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 14;
	setAttr ".pfrsName" -type "string" "Hip";
createNode joint -n "Leg_Knee_L_JNT1" -p "Leg_Hip_L_JNT1";
	rename -uid "B1E7E037-4A0E-A596-D57C-E0A83C81C96E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -4.1101580594560261e-07 -44.370471954345703 0.28464263677597756 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.2077810000000007 52.869281999999998 0.76116399999999995 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 15;
	setAttr ".pfrsName" -type "string" "Knee";
createNode joint -n "Leg_Ankle_L_JNT1" -p "Leg_Knee_L_JNT1";
	rename -uid "E4BB6C76-4EDD-31F0-1FDC-4DB8BC34C027";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 4.7163933381000334e-07 -44.427871704101563 -2.9821906089782644 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000004 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.2077819999999999 8.4414099999999994 -2.2210269999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 16;
	setAttr ".pfrsName" -type "string" "Ankle";
createNode joint -n "Foot_Ball_L_JNT1" -p "Leg_Ankle_L_JNT1";
	rename -uid "C5927037-49B9-4F8F-CD5A-52AE5364A546";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.960988012112864e-06 -8.7286701202392329 10.710559844970689 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 0.99999999999999978 ;
	setAttr ".jo" -type "double3" -1.5902773407317584e-14 7.9513867036587919e-15 -7.9513867036587919e-16 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 8.2077790000000004 -0.28726000000000002 8.4895329999999998 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 37;
	setAttr ".pfrsName" -type "string" "Ball";
createNode joint -n "Foot_Toe_L_JNT1" -p "Foot_Ball_L_JNT1";
	rename -uid "C801FB48-41A9-58C0-71DC-D88C7E2F3136";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.5080619252548786e-06 -0.00067668297560707913 9.2781362533569407 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000004 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 38;
	setAttr ".pfrsName" -type "string" "Toe";
createNode joint -n "Leg_Hip_R_JNT1" -p "Pelvis_Root_M_JNT1";
	rename -uid "ECFB0319-4252-D9D2-8CA7-BCAFE9715ED5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -8.2077960968017578 -6.7516622543335245 -1.59955942630768 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr ".jo" -type "double3" 2.3854160110976384e-15 -7.9513867036587919e-16 1.4908850069360235e-16 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.2077960000000001 97.239806999999999 0.47651700000000002 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 11;
	setAttr ".pfrsName" -type "string" "Hip";
createNode joint -n "Leg_Knee_R_JNT1" -p "Leg_Hip_R_JNT1";
	rename -uid "5D8093FC-4FA7-6715-5659-C5A264978CD3";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.4355725959994743e-08 -44.370536804199219 0.28615638613701044 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.2077960000000001 52.869270999999998 0.76267399999999996 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 12;
	setAttr ".pfrsName" -type "string" "Knee";
createNode joint -n "Leg_Ankle_R_JNT1" -p "Leg_Knee_R_JNT1";
	rename -uid "43FBB92F-4317-19EA-8FE2-DA8518134796";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.6445819330881477e-07 -44.427730560302706 -2.9837889671325701 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.2077950000000008 8.4415410000000008 -2.2211159999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 13;
	setAttr ".pfrsName" -type "string" "Ankle";
createNode joint -n "Foot_Ball_R_JNT1" -p "Leg_Ankle_R_JNT1";
	rename -uid "18ABF3F8-4EB3-687E-D39E-10AC71D20683";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.3604382004549507e-06 -8.7286691665649485 10.710560798645016 ;
	setAttr ".jo" -type "double3" 0 6.3611093629270304e-15 -1.3914926731402878e-15 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -8.2077969999999993 -0.28712799999999999 8.4894449999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 39;
	setAttr ".pfrsName" -type "string" "Ball";
createNode joint -n "Foot_Toe_R_JNT1" -p "Foot_Ball_R_JNT1";
	rename -uid "1395F159-40D1-251A-EBB2-D2B335061847";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.0942645733157406e-06 -0.00067636941093729419 9.2781200408935547 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 40;
	setAttr ".pfrsName" -type "string" "Toe";
createNode joint -n "Spine_Spine1_M_JNT1" -p "Pelvis_Root_M_JNT1";
	rename -uid "0272F2FF-4E39-68AC-BB0D-7C854BEA6D4D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.2341524595696001e-06 10.181588172912598 0.13152092695236028 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr ".jo" -type "double3" 2.3854160110976384e-15 -7.9513867036587919e-16 1.4908850069360235e-16 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 9.2341500000000003e-06 114.173058 2.2075979999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 25;
	setAttr ".pfrsName" -type "string" "Spine1";
createNode joint -n "Spine_Spine2_M_JNT1" -p "Spine_Spine1_M_JNT1";
	rename -uid "15E7523A-48D4-4B9D-88D0-159E3EE6FCEB";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.5194029085184866e-07 10.083451271057129 -1.0008043050765956 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 9.4860900000000015e-06 124.25650899999999 1.206793 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 26;
	setAttr ".pfrsName" -type "string" "Spine2";
createNode joint -n "Spine_Spine3_M_JNT1" -p "Spine_Spine2_M_JNT1";
	rename -uid "4EFFEB21-4CA5-340E-FB4D-AB82DC60BB7A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.457486457136838e-07 9.1000108718872212 -1.3734171390533447 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 9.831839999999999e-06 133.35651999999999 -0.16662399999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 27;
	setAttr ".pfrsName" -type "string" "Spine3";
createNode joint -n "Clav_Clav_R_JNT1" -p "Spine_Spine3_M_JNT1";
	rename -uid "F1ED6DF7-4DC0-2BC6-4691-D78E6CD5A052";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -4.5699696540832502 10.946176528930678 -2.6280174255371165 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".jo" -type "double3" -1.5902773407317584e-15 0 -9.9392333795734899e-16 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.56996 144.30269699999999 -2.7946409999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 60;
	setAttr ".pfrsName" -type "string" "Clav";
createNode joint -n "Arm_Shoulder_R_JNT1" -p "Clav_Clav_R_JNT1";
	rename -uid "3AA40FA8-48F4-C1F0-E6E7-2788BF78AE15";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -10.592844009399411 -0.52479839324951172 -2.2320985794067312 ;
	setAttr ".jo" -type "double3" 0 0 -2.7829853462805772e-15 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -15.162804 143.77789899999999 -5.0267400000000002 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 61;
	setAttr ".pfrsName" -type "string" "Shoulder";
createNode joint -n "Arm_Elbow_R_JNT1" -p "Arm_Shoulder_R_JNT1";
	rename -uid "C9D7265B-47CC-A773-D19B-25A2E7B3E1DB";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -27.841520309448228 -3.3079217239162517e-05 1.1676310350594576e-05 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999978 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -43.004323999999997 143.77786599999999 -5.0267280000000003 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 62;
	setAttr ".pfrsName" -type "string" "Elbow";
createNode joint -n "Arm_Wrist_R_JNT1" -p "Arm_Elbow_R_JNT1";
	rename -uid "29585B6C-41A1-8720-F291-D4B4D836B2F0";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -28.328838348388658 -1.5814173082162597e-07 5.5816013618148475e-05 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999956 1 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -71.333162999999999 143.77786499999999 -5.0266719999999996 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 63;
	setAttr ".pfrsName" -type "string" "Wrist";
createNode joint -n "Middle_Middle1_R_JNT1" -p "Arm_Wrist_R_JNT1";
	rename -uid "32B262B7-44F0-E060-335D-5B9B520B302E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -9.5325031280517436 -1.6312302250298671e-05 1.6791842426755466e-05 ;
	setAttr ".r" -type "double3" -0.10416126251220703 -1.1990928649902344 9.9285783767700195 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1.0000000000000002 ;
	setAttr ".jo" -type "double3" 9.5416640443905424e-15 3.1805546814635183e-15 3.1805546814635183e-15 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -80.865666000000004 143.777849 -5.026656 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 32;
	setAttr ".pfrsName" -type "string" "Middle1";
createNode joint -n "Middle_Middle2_R_JNT1" -p "Middle_Middle1_R_JNT1";
	rename -uid "6CA3871B-44C3-EF38-1457-979D2ABCEFCE";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.6982367038726807 1.5066959349496756e-05 -2.2545524199557576e-05 ;
	setAttr ".r" -type "double3" -0.10415802150964736 -1.1990797519683838 9.9285926818847656 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999978 1 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -84.563901999999999 143.77786399999999 -5.0266780000000004 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 33;
	setAttr ".pfrsName" -type "string" "Middle2";
createNode joint -n "Middle_Middle3_R_JNT1" -p "Middle_Middle2_R_JNT1";
	rename -uid "053D07AD-49A6-1672-FCF9-5693F59B1EFD";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.9509215354919576 -3.1132448974346971e-07 -3.0340253687199947e-07 ;
	setAttr ".r" -type "double3" -0.026087444275617606 -0.60382097959518455 4.9637393951416025 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999922 0.99999999999999978 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -87.514824000000004 143.77786399999999 -5.0266780000000004 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 34;
	setAttr ".pfrsName" -type "string" "Middle3";
createNode joint -n "Middle_Middle4_R_JNT1" -p "Middle_Middle3_R_JNT1";
	rename -uid "67717878-45CE-5B6E-C73E-1C8054E147CC";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.8339025974273682 8.0532408865963134e-06 5.3787705830643517e-05 ;
	setAttr ".s" -type "double3" 1.0000000000000009 0.99999999999999911 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 35;
	setAttr ".pfrsName" -type "string" "Middle4";
createNode joint -n "Thumb_Thumb1_R_JNT1" -p "Arm_Wrist_R_JNT1";
	rename -uid "8C0FEBF9-49ED-4B33-89F5-C5A5C983A80F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.4648060798645162 -1.5727142095565796 2.6826264858245708 ;
	setAttr ".r" -type "double3" -0.18460170924663533 -13.611824989318849 -7.8871331214904776 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1.0000000000000002 ;
	setAttr ".jo" -type "double3" 9.5416640443905424e-15 3.1805546814635183e-15 3.1805546814635183e-15 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -73.797967999999997 142.205151 -2.3440460000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 1;
	setAttr ".pfrsName" -type "string" "Thumb1";
createNode joint -n "Thumb_Thumb2_R_JNT1" -p "Thumb_Thumb1_R_JNT1";
	rename -uid "E8AC2D41-4D10-CE33-A71A-6896101D6F8C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.2297718524933003 -1.8647087812423777 1.8647184371948278 ;
	setAttr ".r" -type "double3" 6.1195578575134277 -18.37579345703125 -2.780184268951416 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -77.027739999999994 140.340442 -0.47932799999999998 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 2;
	setAttr ".pfrsName" -type "string" "Thumb2";
createNode joint -n "Thumb_Thumb3_R_JNT1" -p "Thumb_Thumb2_R_JNT1";
	rename -uid "793DEE59-4A08-D09B-655D-CF832D32EEFD";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.6526050567626953 -1.5314493179321218 1.5314456224441475 ;
	setAttr ".r" -type "double3" -0.59679919481277477 -4.8457150459289551 -2.563224315643311 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999967 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -79.680345000000003 138.80899299999999 1.0521180000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 3;
	setAttr ".pfrsName" -type "string" "Thumb3";
createNode joint -n "Thumb_Thumb4_R_JNT1" -p "Thumb_Thumb3_R_JNT1";
	rename -uid "7A870B12-45E0-F80C-FEE5-B89CEF20462A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.9545805454254008 -1.1284617185592651 1.1285070180892998 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000004 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 4;
	setAttr ".pfrsName" -type "string" "Thumb4";
createNode joint -n "Ring_Ring1_R_JNT1" -p "Arm_Wrist_R_JNT1";
	rename -uid "0D77D81E-4365-481F-1F51-87A0C6280179";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -9.1035881042480469 -0.043914347887024974 -1.8650724887847794 ;
	setAttr ".r" -type "double3" -0.10416126251220703 -1.1990928649902344 9.9285783767700195 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1.0000000000000002 ;
	setAttr ".jo" -type "double3" 6.3611093629270264e-15 0 4.7708320221952783e-15 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -80.436751000000001 143.73395099999999 -6.8917450000000002 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 64;
	setAttr ".pfrsName" -type "string" "Ring1";
createNode joint -n "Ring_Ring2_R_JNT1" -p "Ring_Ring1_R_JNT1";
	rename -uid "0F8CCA15-4817-2DA6-796D-9EBC94C3FA61";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.1540267467498779 2.3997297827094144e-05 4.8851212337552852e-05 ;
	setAttr ".r" -type "double3" -0.10415802150964736 -1.1990797519683838 9.9285926818847656 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999978 1 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -83.590778 143.73397499999999 -6.8916959999999996 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 65;
	setAttr ".pfrsName" -type "string" "Ring2";
createNode joint -n "Ring_Ring3_R_JNT1" -p "Ring_Ring2_R_JNT1";
	rename -uid "8BD737A3-4901-B9DA-E53F-C59AB2BD10BC";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.9376723766326904 -4.1600655094953254e-05 -3.9660633767368836e-05 ;
	setAttr ".r" -type "double3" -0.026084566488862048 -0.60179966688156139 4.9637351036071777 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999922 0.99999999999999978 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -86.528450000000007 143.733934 -6.8917359999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 66;
	setAttr ".pfrsName" -type "string" "Ring3";
createNode joint -n "Ring_Ring4_R_JNT1" -p "Ring_Ring3_R_JNT1";
	rename -uid "A954C210-459B-658B-280E-80910BC39C66";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.6474525928497314 2.4608212698673526e-05 -2.2949234370628346e-06 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999922 1 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 67;
	setAttr ".pfrsName" -type "string" "Ring4";
createNode joint -n "Index_Index1_R_JNT1" -p "Arm_Wrist_R_JNT1";
	rename -uid "2AA250E5-4FBD-C4A9-438A-4A92BC6E74BB";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -9.1082811355590536 -0.51678895950316672 2.260116338729862 ;
	setAttr ".r" -type "double3" -0.10416126251220703 -1.1990928649902344 9.9285783767700195 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1.0000000000000002 ;
	setAttr ".jo" -type "double3" 6.3611093629270264e-15 0 4.7708320221952783e-15 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -80.441444000000004 143.261076 -2.766556 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 52;
	setAttr ".pfrsName" -type "string" "Index1";
createNode joint -n "Index_Index2_R_JNT1" -p "Index_Index1_R_JNT1";
	rename -uid "A7492301-411B-FECD-9A8C-978B49D64294";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.6764094829559326 1.9227156375478671e-05 3.2355670562367322e-05 ;
	setAttr ".r" -type "double3" -0.10415802150964736 -1.1990797519683838 9.9285926818847656 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999978 1 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -84.117852999999997 143.26109600000001 -2.766524 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 53;
	setAttr ".pfrsName" -type "string" "Index2";
createNode joint -n "Index_Index3_R_JNT1" -p "Index_Index2_R_JNT1";
	rename -uid "FEF57FBD-498A-9EE7-129A-689057C0FFFC";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.8830626010894633 -4.9601214412220429e-05 4.0448976506013423e-05 ;
	setAttr ".r" -type "double3" -0.026084566488862048 -0.60179966688156139 4.9637351036071777 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999922 0.99999999999999978 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -87.000916000000004 143.26104599999999 -2.766483 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 54;
	setAttr ".pfrsName" -type "string" "Index3";
createNode joint -n "Index_Index4_R_JNT1" -p "Index_Index3_R_JNT1";
	rename -uid "12A7FCCD-4AC6-8A23-A447-41AB9111409C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.3927199840545939 2.6814701413968578e-05 2.8020134781314709e-05 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999922 1 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 55;
	setAttr ".pfrsName" -type "string" "Index4";
createNode joint -n "Pinky_Pinky1_R_JNT1" -p "Arm_Wrist_R_JNT1";
	rename -uid "566C8B1C-41EB-042E-8C81-20B7E27C5A9F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -8.0766744613647319 -0.48845928907394409 -3.8060102462768413 ;
	setAttr ".r" -type "double3" -0.10416682809591293 -1.2006801366806035 9.9285879135131818 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1.0000000000000002 ;
	setAttr ".jo" -type "double3" 6.3611093629270264e-15 0 4.7708320221952775e-15 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -79.409836999999996 143.28940600000001 -8.8326829999999994 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 17;
	setAttr ".pfrsName" -type "string" "Pinky1";
createNode joint -n "Pinky_Pinky2_R_JNT1" -p "Pinky_Pinky1_R_JNT1";
	rename -uid "ABC62613-46E8-D15C-CA8B-99B3CA0A0FE9";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.6000344753265523 3.9676655426035268e-05 5.0814422131395531e-05 ;
	setAttr ".r" -type "double3" -0.10387900471687317 -1.197517395019531 9.9285802841186523 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -83.009872000000001 143.289446 -8.8326320000000003 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 18;
	setAttr ".pfrsName" -type "string" "Pinky2";
createNode joint -n "Pinky_Pinky3_R_JNT1" -p "Pinky_Pinky2_R_JNT1";
	rename -uid "34968953-4225-ED4E-5FFB-D2A1CF0EC566";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -2.1142115592956401 1.5137925402086694e-05 1.4793768968957011e-05 ;
	setAttr ".r" -type "double3" -0.026084566488862048 -0.60179966688156139 4.9637351036071777 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -85.124082999999999 143.28946099999999 -8.8326170000000008 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 19;
	setAttr ".pfrsName" -type "string" "Pinky3";
createNode joint -n "Pinky_Pinky4_R_JNT1" -p "Pinky_Pinky3_R_JNT1";
	rename -uid "39D674DC-48EB-42C3-32AA-08B4ECE4451C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -1.9756826162338257 -1.8521957819928048e-05 -9.8398414039024829e-07 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 20;
	setAttr ".pfrsName" -type "string" "Pinky4";
createNode joint -n "Clav_Clav_L_JNT1" -p "Spine_Spine3_M_JNT1";
	rename -uid "F9BA438A-45B6-4EF9-FD76-7688B248796B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 4.5704464912414569 10.945984840393052 -2.6279881000518941 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".jo" -type "double3" -1.5902773407317584e-15 0 -9.9392333795734899e-16 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 4.5704560000000001 144.302505 -2.7946119999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 51;
	setAttr ".pfrsName" -type "string" "Clav";
createNode joint -n "Arm_Shoulder_L_JNT1" -p "Clav_Clav_L_JNT1";
	rename -uid "FD6B2139-4BF1-1459-69BF-38A82DC4140A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 10.592370033264149 -0.52458292245864868 -2.2321200370788432 ;
	setAttr ".jo" -type "double3" 1.5902773407317584e-15 0 4.3732626870123352e-15 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 15.162827 143.77792199999999 -5.026732 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 48;
	setAttr ".pfrsName" -type "string" "Shoulder";
createNode joint -n "Arm_Elbow_L_JNT1" -p "Arm_Shoulder_L_JNT1";
	rename -uid "D1722E4D-43AA-7E34-A253-ED91017CF280";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 27.841520309448214 -8.942864951322349e-05 3.7458910810528323e-05 ;
	setAttr ".r" -type "double3" 4.600701231538545e-06 -19.285247802734375 -0.00020767124078702179 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999956 0.99999999999999956 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 43.004347000000003 143.77783299999999 -5.026694 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 49;
	setAttr ".pfrsName" -type "string" "Elbow";
createNode joint -n "Arm_Wrist_L_JNT1" -p "Arm_Elbow_L_JNT1";
	rename -uid "CA531F7C-4E85-BBB7-BF08-2A914BAE44D4";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 28.328838348388658 -1.7440717783756554e-05 3.7804522420969988e-05 ;
	setAttr ".s" -type "double3" 1.0000000000000011 0.99999999999999911 1 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 71.333185 143.777815 -5.0266570000000002 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 50;
	setAttr ".pfrsName" -type "string" "Wrist";
createNode joint -n "Ring_Ring1_L_JNT1" -p "Arm_Wrist_L_JNT1";
	rename -uid "7CB5E5B1-4132-138D-2DF2-DB95EBB4802F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.1045274734496786 -0.043939504772422922 -1.8650846481323171 ;
	setAttr ".r" -type "double3" -0.10317488759756087 1.1876639127731323 -9.9299278259277344 ;
	setAttr ".s" -type "double3" 1.0000000000000009 0.999999999999999 1 ;
	setAttr ".jo" -type "double3" 4.7708320221952681e-15 3.1805546814635203e-15 -2.0673605429512883e-14 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 80.437713000000002 143.73387600000001 -6.8917409999999997 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 44;
	setAttr ".pfrsName" -type "string" "Ring1";
createNode joint -n "Ring_Ring2_L_JNT1" -p "Ring_Ring1_L_JNT1";
	rename -uid "4DE4B807-48EA-59B9-A213-76B5F870F529";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.1540267467499064 -6.5534677525791452e-06 1.0425744218167665e-05 ;
	setAttr ".r" -type "double3" -0.10317482799291609 1.187662601470947 -9.9299373626708984 ;
	setAttr ".s" -type "double3" 1.0000000000000016 0.99999999999999822 1 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 83.591739000000004 143.733869 -6.8917310000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 45;
	setAttr ".pfrsName" -type "string" "Ring2";
createNode joint -n "Ring_Ring3_L_JNT1" -p "Ring_Ring2_L_JNT1";
	rename -uid "C2070062-46C1-4497-ED05-D5889A2FC8D1";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.9376723766326762 -4.5458618844307352e-05 -6.8647573243652005e-06 ;
	setAttr ".r" -type "double3" -0.025843800976872448 0.59606617689132679 -4.9644393920898429 ;
	setAttr ".s" -type "double3" 1.0000000000000024 0.99999999999999756 1 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 86.529411999999994 143.733824 -6.8917380000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 46;
	setAttr ".pfrsName" -type "string" "Ring3";
createNode joint -n "Ring_Ring4_L_JNT1" -p "Ring_Ring3_L_JNT1";
	rename -uid "9E071D17-4C8F-617F-2B62-A19FF81C0BC0";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.6474525928496888 -4.9804413723819607e-05 7.0705151955507972e-08 ;
	setAttr ".s" -type "double3" 1.0000000000000036 0.99999999999999623 1 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 47;
	setAttr ".pfrsName" -type "string" "Ring4";
createNode joint -n "Middle_Middle1_L_JNT1" -p "Arm_Wrist_L_JNT1";
	rename -uid "FE83A601-47E2-0E00-8460-EF92DDCC8551";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.5334014892578125 -3.3924046864086677e-05 1.3937025869381614e-05 ;
	setAttr ".r" -type "double3" -0.10284096747636794 1.1857713460922239 -9.9139289855957031 ;
	setAttr ".s" -type "double3" 1.0000000000000009 0.999999999999999 1 ;
	setAttr ".jo" -type "double3" 4.7708320221952688e-15 -3.1805546814635211e-15 -1.2722218725854084e-14 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 80.866585999999998 143.777781 -5.026643 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 28;
	setAttr ".pfrsName" -type "string" "Middle1";
createNode joint -n "Middle_Middle2_L_JNT1" -p "Middle_Middle1_L_JNT1";
	rename -uid "91ABA3C3-4887-46F6-886A-3CA0DB7A6E97";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.6982367038726949 1.9613591959455334e-06 1.7916967408382334e-05 ;
	setAttr ".r" -type "double3" -0.10350859910249709 1.189558744430542 -9.9459123611450178 ;
	setAttr ".s" -type "double3" 1.0000000000000018 0.99999999999999833 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 84.564823000000004 143.777783 -5.0266250000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 29;
	setAttr ".pfrsName" -type "string" "Middle2";
createNode joint -n "Middle_Middle3_L_JNT1" -p "Middle_Middle2_L_JNT1";
	rename -uid "49BE8CBB-4629-FF10-E4FD-0AAB9622544B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.9509215354919007 -3.9376085627651491e-05 1.644796065392029e-05 ;
	setAttr ".r" -type "double3" -0.025843471288681027 0.59606772661209106 -4.9644398689270011 ;
	setAttr ".s" -type "double3" 1.0000000000000024 0.99999999999999745 0.99999999999999978 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 87.515743999999998 143.77774400000001 -5.0266080000000004 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 30;
	setAttr ".pfrsName" -type "string" "Middle3";
createNode joint -n "Middle_Middle4_L_JNT1" -p "Middle_Middle3_L_JNT1";
	rename -uid "FD3A6678-4B55-2799-2245-90BC4BC83267";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.8339025974273682 -3.8934820629776823e-05 -9.5042232608477661e-06 ;
	setAttr ".s" -type "double3" 1.0000000000000033 0.99999999999999611 1 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 31;
	setAttr ".pfrsName" -type "string" "Middle4";
createNode joint -n "Pinky_Pinky1_L_JNT1" -p "Arm_Wrist_L_JNT1";
	rename -uid "509B2502-4353-65FC-8EE3-6F9AE3F4962B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 8.0777778625488139 -0.48866820335387118 -3.8060669898986852 ;
	setAttr ".r" -type "double3" -0.074961148202419309 5.2430129051208496 -9.4271745681762713 ;
	setAttr ".s" -type "double3" 1.0000000000000009 0.999999999999999 1 ;
	setAttr ".jo" -type "double3" 4.7708320221952688e-15 0 -7.1562480332929214e-15 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 79.410962999999995 143.28914700000001 -8.8327240000000007 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 5;
	setAttr ".pfrsName" -type "string" "Pinky1";
createNode joint -n "Pinky_Pinky2_L_JNT1" -p "Pinky_Pinky1_L_JNT1";
	rename -uid "6A6D5884-444E-8325-6056-319FF77ACF76";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.6000344753265523 -2.252215160036819e-06 -2.6238794820443445e-05 ;
	setAttr ".r" -type "double3" 0.61400109529495228 -2.8029649257659912 -10.448641777038574 ;
	setAttr ".s" -type "double3" 1.0000000000000016 0.99999999999999833 1 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 83.010997000000003 143.28914499999999 -8.8327500000000008 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 6;
	setAttr ".pfrsName" -type "string" "Pinky2";
createNode joint -n "Pinky_Pinky3_L_JNT1" -p "Pinky_Pinky2_L_JNT1";
	rename -uid "938BD058-4971-0690-8B4D-F9994D4B49D3";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.1142115592956401 1.9538281772923938e-05 -2.8644151335299739e-06 ;
	setAttr ".r" -type "double3" -0.025845104828476899 0.59606760740280162 -4.9644417762756348 ;
	setAttr ".s" -type "double3" 1.0000000000000027 0.99999999999999734 1 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 85.125208999999998 143.289164 -8.8327530000000003 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 7;
	setAttr ".pfrsName" -type "string" "Pinky3";
createNode joint -n "Pinky_Pinky4_L_JNT1" -p "Pinky_Pinky3_L_JNT1";
	rename -uid "FB59CC00-4EE2-58EB-A9B8-7683E8875A92";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.9756826162338257 1.2405656903524687e-05 -4.4301406898483719e-05 ;
	setAttr ".s" -type "double3" 1.000000000000004 0.99999999999999623 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 8;
	setAttr ".pfrsName" -type "string" "Pinky4";
createNode joint -n "Thumb_Thumb1_L_JNT1" -p "Arm_Wrist_L_JNT1";
	rename -uid "BE896CD7-4AE1-0D30-C555-F8833EB2E898";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.4661402702331685 -1.5750491619110019 2.6824135780334473 ;
	setAttr ".r" -type "double3" 0.030426900833845218 13.686287879943846 7.4386124610900879 ;
	setAttr ".s" -type "double3" 1.0000000000000009 0.999999999999999 1 ;
	setAttr ".jo" -type "double3" 4.7708320221952688e-15 0 -7.1562480332929214e-15 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 73.799324999999996 142.202766 -2.3442430000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 21;
	setAttr ".pfrsName" -type "string" "Thumb1";
createNode joint -n "Thumb_Thumb2_L_JNT1" -p "Thumb_Thumb1_L_JNT1";
	rename -uid "C9ACC6E5-47AC-0BDE-ED6C-DB82BB43030D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.2298038005829 -1.864690661430366 1.8646812438964844 ;
	setAttr ".r" -type "double3" 5.4549765586853018 17.679571151733402 3.0666432380676261 ;
	setAttr ".s" -type "double3" 1.0000000000000018 0.99999999999999811 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 77.029128999999998 140.338076 -0.47956199999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 22;
	setAttr ".pfrsName" -type "string" "Thumb2";
createNode joint -n "Thumb_Thumb3_L_JNT1" -p "Thumb_Thumb2_L_JNT1";
	rename -uid "4B345A38-4945-A177-2277-B4AD51B55A4C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.652565002441392 -1.531492948532108 1.5314716100692749 ;
	setAttr ".r" -type "double3" 0.22147476673126218 6.5256986618041966 3.0276777744293208 ;
	setAttr ".s" -type "double3" 1.0000000000000033 0.99999999999999645 1 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 79.681693999999993 138.80658299999999 1.0519099999999999 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 23;
	setAttr ".pfrsName" -type "string" "Thumb3";
createNode joint -n "Thumb_Thumb4_L_JNT1" -p "Thumb_Thumb3_L_JNT1";
	rename -uid "359D9D53-40FA-A7D1-F74B-6CB6D09790A2";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 1.9545669555664063 -1.128500103950504 1.128492116928097 ;
	setAttr ".s" -type "double3" 1.0000000000000067 0.99999999999999356 1 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 24;
	setAttr ".pfrsName" -type "string" "Thumb4";
createNode joint -n "Index_Index1_L_JNT1" -p "Arm_Wrist_L_JNT1";
	rename -uid "13223703-4C0E-0A6B-2E81-3CA326FD2D46";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 9.1093015670776367 -0.51708340644836071 2.260073184967041 ;
	setAttr ".r" -type "double3" -0.10317488759756087 1.1876639127731323 -9.9299278259277344 ;
	setAttr ".s" -type "double3" 1.0000000000000009 0.999999999999999 1 ;
	setAttr ".jo" -type "double3" 4.7708320221952688e-15 -3.1805546814635203e-15 -1.1927080055488201e-14 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 80.442487 143.26073199999999 -2.7665829999999998 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 56;
	setAttr ".pfrsName" -type "string" "Index1";
createNode joint -n "Index_Index2_L_JNT1" -p "Index_Index1_L_JNT1";
	rename -uid "3911EF32-4C3A-A7D2-976D-3BA00708AD09";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.6764094829559752 -6.9391385253414484e-06 2.9242517484817654e-05 ;
	setAttr ".r" -type "double3" -0.10317482799291609 1.187662601470947 -9.9299373626708984 ;
	setAttr ".s" -type "double3" 1.0000000000000016 0.99999999999999822 1 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 84.118896000000007 143.26072500000001 -2.7665540000000002 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 57;
	setAttr ".pfrsName" -type "string" "Index2";
createNode joint -n "Index_Index3_L_JNT1" -p "Index_Index2_L_JNT1";
	rename -uid "B4587D58-4A66-3806-8263-AE90B3EDCE6B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.8830626010894491 3.8511967426657634e-05 -4.276481559273293e-05 ;
	setAttr ".r" -type "double3" -0.025843800976872448 0.59606617689132679 -4.9644393920898429 ;
	setAttr ".s" -type "double3" 1.0000000000000024 0.99999999999999756 1 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 87.001958999999999 143.260763 -2.766597 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 58;
	setAttr ".pfrsName" -type "string" "Index3";
createNode joint -n "Index_Index4_L_JNT1" -p "Index_Index3_L_JNT1";
	rename -uid "93FACE6A-4DEA-9F6C-9E3C-08B8A6EEE6E4";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 2.3927199840545512 3.7025907648313705e-05 3.3554435503901914e-05 ;
	setAttr ".s" -type "double3" 1.0000000000000036 0.99999999999999623 1 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 59;
	setAttr ".pfrsName" -type "string" "Index4";
createNode joint -n "Neck_Neck_M_JNT1" -p "Spine_Spine3_M_JNT1";
	rename -uid "3FEB0212-479E-2B82-1304-58B6939E8AE1";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 6.3342855582959601e-07 16.671669006347614 -2.5161678791046356 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".jo" -type "double3" -1.5902773407317584e-15 0 -9.9392333795734899e-16 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.04653e-05 150.028189 -2.6827920000000001 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 42;
	setAttr ".pfrsName" -type "string" "Neck";
createNode joint -n "Head_Head1_M_JNT1" -p "Neck_Neck_M_JNT1";
	rename -uid "2C1C2972-4965-BCDC-565F-CB9BED16E0D2";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -4.2423186830120585e-07 9.6178750991821573 1.6850075721740794 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr ".jo" -type "double3" 0 -7.9513867036587899e-16 2.981770013872046e-16 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.0040999999999999e-05 159.64606499999999 -0.997784 1;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 9;
	setAttr ".pfrsName" -type "string" "Head1";
createNode joint -n "Head_Head2_M_JNT1" -p "Head_Head1_M_JNT1";
	rename -uid "F7A158DA-414B-46BB-78DA-0DA45952A34F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -6.5082417854966934e-07 17.815155029296875 2.5849854946136475 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 3;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 10;
	setAttr ".pfrsName" -type "string" "Head2";
createNode joint -n "Eye_Eye_R_JNT1" -p "Head_Head1_M_JNT1";
	rename -uid "4EDD1140-474D-5904-B1D6-19B35F4C6958";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" -3.0675504207611128 6.4095001220702841 9.283547401428244 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".jo" -type "double3" -7.9513867036587903e-15 1.1927080055488184e-15 0 ;
	setAttr ".pa" -type "double3" 1 0 0 ;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 36;
	setAttr ".pfrsName" -type "string" "Eye";
createNode joint -n "Eye_Eye_L_JNT1" -p "Head_Head1_M_JNT1";
	rename -uid "46A9069C-46E1-AC07-BBC1-19B8845E3707";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -h true -k true -sn "filmboxTypeID" -ln "filmboxTypeID" 
		-smn 5 -smx 5 -at "short";
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
	setAttr ".ove" yes;
	setAttr ".t" -type "double3" 3.0675606727600062 6.4095077514648438 9.2835540771484517 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".jo" -type "double3" -7.9513867036587903e-15 1.1927080055488184e-15 0 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr -k on ".liw";
	setAttr -k on ".filmboxTypeID" 5;
	setAttr ".ID" 41;
	setAttr ".pfrsName" -type "string" "Eye";
createNode transform -n "LIMBS" -p "TEMP_RigRoot";
	rename -uid "5F9AF842-4BDB-1237-57C1-BBA5EDCE4554";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".v" no;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "Thumb_Limb_R_NODE" -p "LIMBS";
	rename -uid "38ED2016-4B73-FD3F-CF3B-C4939BEE70B3";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3" 
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
	setAttr ".pfrsName" -type "string" "Thumb";
	setAttr ".limbType" 4;
	setAttr ".side" 2;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Pinky_Limb_L_NODE" -p "LIMBS";
	rename -uid "B8FC57C9-4055-64D5-A93E-47A57ED744BF";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3" 
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
	setAttr ".pfrsName" -type "string" "Pinky";
	setAttr ".limbType" 4;
	setAttr ".side" 1;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Head_Limb_M_NODE" -p "LIMBS";
	rename -uid "51504D48-4139-5CC1-D245-F19F4FA1542D";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 1 -en "Body:Face" 
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
createNode transform -n "Leg_Limb_R_NODE" -p "LIMBS";
	rename -uid "A9CAAA8A-482D-DA37-B705-A3BF9A65D07A";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 1 -en "Body:Face" 
		-at "enum";
	addAttr -ci true -sn "side" -ln "side" -min 0 -max 3 -en "M:L:R:-" -at "enum";
	addAttr -ci true -sn "joints" -ln "joints" -dt "string";
	addAttr -ci true -sn "enableLimb" -ln "enableLimb" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "limbParent" -ln "limbParent" -dt "string";
	addAttr -ci true -sn "limbChildren" -ln "limbChildren" -dt "string";
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "Root" 
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
	setAttr ".pfrsName" -type "string" "Leg";
	setAttr ".limbType" 4;
	setAttr ".side" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Leg_Limb_L_NODE" -p "LIMBS";
	rename -uid "E78C6BA5-45F4-C83A-BF30-BEAD46A6332C";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 1 -en "Body:Face" 
		-at "enum";
	addAttr -ci true -sn "side" -ln "side" -min 0 -max 3 -en "M:L:R:-" -at "enum";
	addAttr -ci true -sn "joints" -ln "joints" -dt "string";
	addAttr -ci true -sn "enableLimb" -ln "enableLimb" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "limbParent" -ln "limbParent" -dt "string";
	addAttr -ci true -sn "limbChildren" -ln "limbChildren" -dt "string";
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "Root" 
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
	setAttr ".pfrsName" -type "string" "Leg";
	setAttr ".limbType" 4;
	setAttr ".side" 1;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Pinky_Limb_R_NODE" -p "LIMBS";
	rename -uid "5F524805-4F22-D2D4-D69F-8BA2F54EB28B";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3" 
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
	setAttr ".ID" 6;
	setAttr ".pfrsName" -type "string" "Pinky";
	setAttr ".limbType" 4;
	setAttr ".side" 2;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Thumb_Limb_L_NODE" -p "LIMBS";
	rename -uid "18585E2E-45FB-E28C-76D0-DE818A0E3F7D";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3" 
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
	setAttr ".pfrsName" -type "string" "Thumb";
	setAttr ".limbType" 4;
	setAttr ".side" 1;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Spine_Limb_M_NODE" -p "LIMBS";
	rename -uid "CE6E1084-4252-150A-04DF-B5ADDED9FF89";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 1 -en "Body:Face" 
		-at "enum";
	addAttr -ci true -sn "side" -ln "side" -min 0 -max 3 -en "M:L:R:-" -at "enum";
	addAttr -ci true -sn "joints" -ln "joints" -dt "string";
	addAttr -ci true -sn "enableLimb" -ln "enableLimb" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "limbParent" -ln "limbParent" -dt "string";
	addAttr -ci true -sn "limbChildren" -ln "limbChildren" -dt "string";
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "Root" 
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
	setAttr ".pfrsName" -type "string" "Spine";
	setAttr ".limbType" 4;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Middle_Limb_L_NODE" -p "LIMBS";
	rename -uid "21BEE0A2-49BB-1B20-F733-3BB7E7E8D974";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3" 
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
	setAttr ".pfrsName" -type "string" "Middle";
	setAttr ".limbType" 4;
	setAttr ".side" 1;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Middle_Limb_R_NODE" -p "LIMBS";
	rename -uid "980BED32-4952-C6A7-B866-DDAD0143E66E";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3" 
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
	setAttr ".ID" 10;
	setAttr ".pfrsName" -type "string" "Middle";
	setAttr ".limbType" 4;
	setAttr ".side" 2;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Eye_Limb_R_NODE" -p "LIMBS";
	rename -uid "6DAC7D72-4FA9-BD13-A731-2CA1B8527D62";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 1 -en "Body:Face" 
		-at "enum";
	addAttr -ci true -sn "side" -ln "side" -min 0 -max 3 -en "M:L:R:-" -at "enum";
	addAttr -ci true -sn "joints" -ln "joints" -dt "string";
	addAttr -ci true -sn "enableLimb" -ln "enableLimb" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "limbParent" -ln "limbParent" -dt "string";
	addAttr -ci true -sn "limbChildren" -ln "limbChildren" -dt "string";
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 1 -en "Head1:Head2" 
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
	setAttr ".pfrsName" -type "string" "Eye";
	setAttr ".limbType" 1;
	setAttr ".side" 2;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "Foot_Limb_L_NODE" -p "LIMBS";
	rename -uid "95C169F9-4D2D-204C-93AD-33B594ED4400";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 1 -en "Body:Face" 
		-at "enum";
	addAttr -ci true -sn "side" -ln "side" -min 0 -max 3 -en "M:L:R:-" -at "enum";
	addAttr -ci true -sn "joints" -ln "joints" -dt "string";
	addAttr -ci true -sn "enableLimb" -ln "enableLimb" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "limbParent" -ln "limbParent" -dt "string";
	addAttr -ci true -sn "limbChildren" -ln "limbChildren" -dt "string";
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 2 -en "Hip:Knee:Ankle" 
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
	setAttr ".ID" 12;
	setAttr ".pfrsName" -type "string" "Foot";
	setAttr ".limbType" 3;
	setAttr ".side" 1;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Foot_Limb_R_NODE" -p "LIMBS";
	rename -uid "210CE5ED-41F5-F1C0-305E-B29B4B682A68";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 1 -en "Body:Face" 
		-at "enum";
	addAttr -ci true -sn "side" -ln "side" -min 0 -max 3 -en "M:L:R:-" -at "enum";
	addAttr -ci true -sn "joints" -ln "joints" -dt "string";
	addAttr -ci true -sn "enableLimb" -ln "enableLimb" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "limbParent" -ln "limbParent" -dt "string";
	addAttr -ci true -sn "limbChildren" -ln "limbChildren" -dt "string";
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 2 -en "Hip:Knee:Ankle" 
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
	setAttr ".ID" 13;
	setAttr ".pfrsName" -type "string" "Foot";
	setAttr ".limbType" 3;
	setAttr ".side" 2;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Eye_Limb_L_NODE" -p "LIMBS";
	rename -uid "16ABE8B1-4940-7D41-2610-4DA56FC65E59";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 1 -en "Body:Face" 
		-at "enum";
	addAttr -ci true -sn "side" -ln "side" -min 0 -max 3 -en "M:L:R:-" -at "enum";
	addAttr -ci true -sn "joints" -ln "joints" -dt "string";
	addAttr -ci true -sn "enableLimb" -ln "enableLimb" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "limbParent" -ln "limbParent" -dt "string";
	addAttr -ci true -sn "limbChildren" -ln "limbChildren" -dt "string";
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 1 -en "Head1:Head2" 
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
	setAttr ".pfrsName" -type "string" "Eye";
	setAttr ".limbType" 1;
	setAttr ".side" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "Neck_Limb_M_NODE" -p "LIMBS";
	rename -uid "134F721C-42B2-EA09-9DBE-9791B9E0D084";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 1 -en "Body:Face" 
		-at "enum";
	addAttr -ci true -sn "side" -ln "side" -min 0 -max 3 -en "M:L:R:-" -at "enum";
	addAttr -ci true -sn "joints" -ln "joints" -dt "string";
	addAttr -ci true -sn "enableLimb" -ln "enableLimb" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "limbParent" -ln "limbParent" -dt "string";
	addAttr -ci true -sn "limbChildren" -ln "limbChildren" -dt "string";
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 2 -en "Spine1:Spine2:Spine3" 
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
	setAttr ".ID" 15;
	setAttr ".pfrsName" -type "string" "Neck";
	setAttr ".limbType" 1;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "Pelvis_Limb_M_NODE" -p "LIMBS";
	rename -uid "EA6301D6-4782-7E86-9A08-28994ADB8521";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3" 
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
	setAttr ".pfrsName" -type "string" "Pelvis";
	setAttr ".limbType" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "Ring_Limb_L_NODE" -p "LIMBS";
	rename -uid "E1B47002-4C3C-E04D-D999-7CB906BC8610";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3" 
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
	setAttr ".ID" 17;
	setAttr ".pfrsName" -type "string" "Ring";
	setAttr ".limbType" 4;
	setAttr ".side" 1;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Arm_Limb_L_NODE" -p "LIMBS";
	rename -uid "4CE65973-45FF-55F7-810C-C3B6D9990E77";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 1 -en "Body:Face" 
		-at "enum";
	addAttr -ci true -sn "side" -ln "side" -min 0 -max 3 -en "M:L:R:-" -at "enum";
	addAttr -ci true -sn "joints" -ln "joints" -dt "string";
	addAttr -ci true -sn "enableLimb" -ln "enableLimb" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "limbParent" -ln "limbParent" -dt "string";
	addAttr -ci true -sn "limbChildren" -ln "limbChildren" -dt "string";
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "Clav" 
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
	setAttr ".ID" 18;
	setAttr ".pfrsName" -type "string" "Arm";
	setAttr ".limbType" 4;
	setAttr ".side" 1;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Clav_Limb_L_NODE" -p "LIMBS";
	rename -uid "DDC0A01C-4324-4199-D59C-79A344B10319";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 1 -en "Body:Face" 
		-at "enum";
	addAttr -ci true -sn "side" -ln "side" -min 0 -max 3 -en "M:L:R:-" -at "enum";
	addAttr -ci true -sn "joints" -ln "joints" -dt "string";
	addAttr -ci true -sn "enableLimb" -ln "enableLimb" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "limbParent" -ln "limbParent" -dt "string";
	addAttr -ci true -sn "limbChildren" -ln "limbChildren" -dt "string";
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 2 -en "Spine1:Spine2:Spine3" 
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
	setAttr ".pfrsName" -type "string" "Clav";
	setAttr ".limbType" 1;
	setAttr ".side" 1;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "Index_Limb_R_NODE" -p "LIMBS";
	rename -uid "990F9CEF-4AF1-9F5B-39F8-7C9BA82C2E78";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3" 
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
	setAttr ".ID" 20;
	setAttr ".pfrsName" -type "string" "Index";
	setAttr ".limbType" 4;
	setAttr ".side" 2;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Index_Limb_L_NODE" -p "LIMBS";
	rename -uid "6AD4EFE1-4A7D-657B-B7C0-7DA93B819486";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3" 
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
	setAttr ".ID" 21;
	setAttr ".pfrsName" -type "string" "Index";
	setAttr ".limbType" 4;
	setAttr ".side" 1;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Clav_Limb_R_NODE" -p "LIMBS";
	rename -uid "6A6B2599-4302-0BF5-AD6E-8EB31E02645A";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 1 -en "Body:Face" 
		-at "enum";
	addAttr -ci true -sn "side" -ln "side" -min 0 -max 3 -en "M:L:R:-" -at "enum";
	addAttr -ci true -sn "joints" -ln "joints" -dt "string";
	addAttr -ci true -sn "enableLimb" -ln "enableLimb" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "limbParent" -ln "limbParent" -dt "string";
	addAttr -ci true -sn "limbChildren" -ln "limbChildren" -dt "string";
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 2 -en "Spine1:Spine2:Spine3" 
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
	setAttr ".pfrsName" -type "string" "Clav";
	setAttr ".limbType" 1;
	setAttr ".side" 2;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "Arm_Limb_R_NODE" -p "LIMBS";
	rename -uid "2113E985-43E1-CD70-D927-67B8E9C0775E";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3" 
		-at "enum";
	addAttr -ci true -sn "limbLocation" -ln "limbLocation" -min 0 -max 1 -en "Body:Face" 
		-at "enum";
	addAttr -ci true -sn "side" -ln "side" -min 0 -max 3 -en "M:L:R:-" -at "enum";
	addAttr -ci true -sn "joints" -ln "joints" -dt "string";
	addAttr -ci true -sn "enableLimb" -ln "enableLimb" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "limbParent" -ln "limbParent" -dt "string";
	addAttr -ci true -sn "limbChildren" -ln "limbChildren" -dt "string";
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "Clav" 
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
	setAttr ".ID" 23;
	setAttr ".pfrsName" -type "string" "Arm";
	setAttr ".limbType" 4;
	setAttr ".side" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Ring_Limb_R_NODE" -p "LIMBS";
	rename -uid "3FD47336-404C-7CC3-73AE-F088492F2051";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "ID" -ln "ID" -at "long";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limbType" -ln "limbType" -min 0 -max 8 -en "Empty:OneJointBranch:TwoJointBranch:TwoJointChain:ThreeJointChain:Custom0:Custom1:Custom2:Custom3" 
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
	setAttr ".ID" 24;
	setAttr ".pfrsName" -type "string" "Ring";
	setAttr ".limbType" 4;
	setAttr ".side" 2;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "04E785EB-4E52-350D-076D-8FB4556DD9CE";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "2BA090B6-4B36-A16C-5B33-A3AACC26AB7E";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "8ED24B08-4D10-740D-E955-848EB86ABA9D";
createNode displayLayerManager -n "layerManager";
	rename -uid "03B0145A-4B42-10C7-7F28-DE9DBD0C8E8E";
	setAttr -s 4 ".dli[1:3]"  1 2 3;
createNode displayLayer -n "defaultLayer";
	rename -uid "074C1840-4E75-54CA-2B33-F296DA9E39E0";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "6029E9E3-4AAA-3661-FDD3-4BB6C37A9540";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "863B2188-411A-3E5E-26CA-2AA8A6A2F865";
	setAttr ".g" yes;
createNode phong -n "Beta_Joints_MAT";
	rename -uid "776B6E5A-4D65-87F6-D04B-50A22B0096AB";
	addAttr -is true -ci true -k true -sn "Emissive" -ln "Emissive" -at "double3" -nc 
		3;
	addAttr -is true -ci true -sn "Emissive0" -ln "Emissive0" -at "double" -p "Emissive";
	addAttr -is true -ci true -sn "Emissive1" -ln "Emissive1" -at "double" -p "Emissive";
	addAttr -is true -ci true -sn "Emissive2" -ln "Emissive2" -at "double" -p "Emissive";
	addAttr -is true -ci true -k true -sn "Ambient" -ln "Ambient" -at "double3" -nc 
		3;
	addAttr -is true -ci true -sn "Ambient0" -ln "Ambient0" -at "double" -p "Ambient";
	addAttr -is true -ci true -sn "Ambient1" -ln "Ambient1" -at "double" -p "Ambient";
	addAttr -is true -ci true -sn "Ambient2" -ln "Ambient2" -at "double" -p "Ambient";
	addAttr -is true -ci true -k true -sn "Diffuse" -ln "Diffuse" -at "double3" -nc 
		3;
	addAttr -is true -ci true -sn "Diffuse0" -ln "Diffuse0" -at "double" -p "Diffuse";
	addAttr -is true -ci true -sn "Diffuse1" -ln "Diffuse1" -at "double" -p "Diffuse";
	addAttr -is true -ci true -sn "Diffuse2" -ln "Diffuse2" -at "double" -p "Diffuse";
	addAttr -is true -ci true -k true -sn "Specular" -ln "Specular" -at "double3" -nc 
		3;
	addAttr -is true -ci true -sn "Specular0" -ln "Specular0" -at "double" -p "Specular";
	addAttr -is true -ci true -sn "Specular1" -ln "Specular1" -at "double" -p "Specular";
	addAttr -is true -ci true -sn "Specular2" -ln "Specular2" -at "double" -p "Specular";
	addAttr -is true -ci true -k true -sn "Shininess" -ln "Shininess" -smn 0 -smx 0 
		-at "double";
	addAttr -is true -ci true -k true -sn "Opacity" -ln "Opacity" -smn 0 -smx 0 -at "double";
	addAttr -is true -ci true -k true -sn "Reflectivity" -ln "Reflectivity" -smn 0 -smx 
		0 -at "double";
	setAttr ".c" -type "float3" 0.33333334 0.12452888 0.10101473 ;
	setAttr ".sc" -type "float3" 0.29913786 0.29913786 0.29913786 ;
	setAttr ".cp" 2;
	setAttr -k on ".Diffuse" -type "double3" 0.26666667858759574 0.099623103434191673 
		0.080811781895336221 ;
	setAttr -k on ".Specular" -type "double3" 0.29913786053657532 0.29913786053657532 
		0.29913786053657532 ;
	setAttr -k on ".Shininess" 2;
	setAttr -k on ".Opacity" 1;
createNode shadingEngine -n "Beta_JointsSG";
	rename -uid "4FDF152C-42C4-7D23-1475-A0BF5741F2E1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "D26F78E9-4C8F-411C-25DC-20AC44ABE804";
createNode phong -n "asdf1:Beta_HighLimbsGeoSG2";
	rename -uid "5E58CDEC-4889-DD2D-53B6-F6A5647C4B53";
	addAttr -is true -ci true -k true -sn "Emissive" -ln "Emissive" -at "double3" -nc 
		3;
	addAttr -is true -ci true -sn "Emissive0" -ln "Emissive0" -at "double" -p "Emissive";
	addAttr -is true -ci true -sn "Emissive1" -ln "Emissive1" -at "double" -p "Emissive";
	addAttr -is true -ci true -sn "Emissive2" -ln "Emissive2" -at "double" -p "Emissive";
	addAttr -is true -ci true -k true -sn "Ambient" -ln "Ambient" -at "double3" -nc 
		3;
	addAttr -is true -ci true -sn "Ambient0" -ln "Ambient0" -at "double" -p "Ambient";
	addAttr -is true -ci true -sn "Ambient1" -ln "Ambient1" -at "double" -p "Ambient";
	addAttr -is true -ci true -sn "Ambient2" -ln "Ambient2" -at "double" -p "Ambient";
	addAttr -is true -ci true -k true -sn "Diffuse" -ln "Diffuse" -at "double3" -nc 
		3;
	addAttr -is true -ci true -sn "Diffuse0" -ln "Diffuse0" -at "double" -p "Diffuse";
	addAttr -is true -ci true -sn "Diffuse1" -ln "Diffuse1" -at "double" -p "Diffuse";
	addAttr -is true -ci true -sn "Diffuse2" -ln "Diffuse2" -at "double" -p "Diffuse";
	addAttr -is true -ci true -k true -sn "Specular" -ln "Specular" -at "double3" -nc 
		3;
	addAttr -is true -ci true -sn "Specular0" -ln "Specular0" -at "double" -p "Specular";
	addAttr -is true -ci true -sn "Specular1" -ln "Specular1" -at "double" -p "Specular";
	addAttr -is true -ci true -sn "Specular2" -ln "Specular2" -at "double" -p "Specular";
	addAttr -is true -ci true -k true -sn "Shininess" -ln "Shininess" -smn 0 -smx 0 
		-at "double";
	addAttr -is true -ci true -k true -sn "Opacity" -ln "Opacity" -smn 0 -smx 0 -at "double";
	addAttr -is true -ci true -k true -sn "Reflectivity" -ln "Reflectivity" -smn 0 -smx 
		0 -at "double";
	setAttr ".c" -type "float3" 0.83700001 0.30230802 0.26365501 ;
	setAttr ".sc" -type "float3" 0.48717478 0.48717478 0.48717478 ;
	setAttr ".rfl" 0;
	setAttr ".cp" 3.6752135753631592;
	setAttr -k on ".Diffuse" -type "double3" 0.66960001989603057 0.24184642198452977 
		0.21092400865143546 ;
	setAttr -k on ".Specular" -type "double3" 0.48717477917671204 0.48717477917671204 
		0.48717477917671204 ;
	setAttr -k on ".Shininess" 3.6752135753631592;
	setAttr -k on ".Opacity" 1;
createNode shadingEngine -n "Beta_SurfaceSG";
	rename -uid "0E0C3CBC-45D6-A504-6713-C2A0C15CDC3A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "940F3AED-45E8-F133-CC0F-668E519B156F";
createNode dagPose -n "bindPose1";
	rename -uid "1A69FC5F-473D-9968-9DB0-3FB82529D548";
	setAttr -s 52 ".wm";
	setAttr -s 52 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0.074436342830745086 -0.083706057571254322
		 0.007361363723426266 0 -6.9339256286621094 102.87050628662109 -7.5737414360046387 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0.088891515174504415 0.067976283846215443
		 0.0071741611838478095 0 9.2341524586814216e-06 10.181588172912612 0.13152092695236384 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0.050668341665141635 0.051607792545613103
		 -0.029145046161554923 0 2.5194029174002708e-07 10.083451271057143 -1.0008043050766027 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0.0494331883575089 0.05109714805134722
		 -0.031585687658990433 0 3.4574864660186222e-07 9.100010871887207 -1.3734171390533447 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 -0.16582167533951334 -0.0071853131709125164
		 0.01682458780590014 0 6.3342855582959601e-07 16.671669006347642 -2.5161678791046214 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -0.35852792859386295 -0.014374574270081614
		 0.099788246571105535 0 -4.2423187185391953e-07 9.6178750991821573 1.6850075721740687 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0.0025992987992283284 0.04611290475202022
		 -0.11769776355291463 0 4.5704464912414551 10.945984840393066 -2.6279881000518799 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0.96123230910549395 -0.28881289600025917
		 -1.0547956163656211 0 10.592370033264162 -0.5245829224586771 -2.2321200370788432 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 8.0297384390905703e-08 -0.33659107122071674
		 -3.6245469134354707e-06 0 27.841520309448256 -8.9428649520328918e-05 3.745891081763375e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 -0.83250302491530659 -0.29242847007517797
		 0.023188749064349 0 28.328838348388658 -1.744071778020384e-05 3.7804522431628129e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0.00053104960072840573 0.23887078588081453
		 0.12982827922590062 0 2.4661402702331543 -1.575049161911009 2.6824135780334437 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0.095207301568168215 0.3085667269383538
		 0.053523021488300397 0 3.2298038005828857 -1.8646906614303589 1.864681243896487 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0.0038654638895469248 0.1138949276414712
		 0.052842945853245837 0 2.6525650024414063 -1.5314929485321009 1.5314716100692749 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 -0.0018007414939524996 0.020728645685009896
		 -0.17330993504784131 0 9.1093015670776367 -0.51708340644836426 2.260073184967041 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 -0.0018007404536551988 0.020728622798469279
		 -0.17331010149540943 0 3.6764094829559326 -6.939138526673716e-06 2.9242517488370368e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 -0.00045105941827655106 0.010403317346528593
		 -0.086645812907673508 0 2.8830626010894917 3.8511967430210348e-05 -4.2764815585627503e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 -0.0017949134883990245 0.020695614165114506
		 -0.17303070260754649 0 9.5334014892578125 -3.3924046874744818e-05 1.3937025869381614e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 -0.001806565858465422 0.020761716736202716
		 -0.17358891781678393 0 3.6982367038726807 1.9613591996092694e-06 1.7916967408382334e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 -0.00045105366413210595 0.010403344394258414
		 -0.08664582123005192 0 2.9509215354919576 -3.9376085620546064e-05 1.6447960664578432e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 -0.0018007414939524996 0.020728645685009896
		 -0.17330993504784131 0 9.104527473449707 -0.043939504772424698 -1.8650846481323242 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 -0.0018007404536551988 0.020728622798469279
		 -0.17331010149540943 0 3.1540267467498921 -6.553467758019238e-06 1.0425744218167665e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 -0.00045105941827655106 0.010403317346528593
		 -0.086645812907673508 0 2.9376723766326904 -4.5458618844307352e-05 -6.8647573172597731e-06 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 -0.0013083188472076451 0.091507837918911886
		 -0.16453523537495054 0 8.0777778625488281 -0.48866820335388184 -3.8060669898986816 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0.010716340723748384 -0.048920966772534991
		 -0.18236320137075437 0 3.6000344753265381 -2.2522151503778787e-06 -2.6238794820443445e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 -0.00045108217478000633 0.010403342313663813
		 -0.086645854519565538 0 2.1142115592956543 1.9538281781805722e-05 -2.8644151335299739e-06 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0.030066712119371706 0.016595100301935568
		 0.18139016553222348 0 -4.569969654083252 10.946176528930664 -2.6280174255371094 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0.7635538508721823 0.3773644669839934
		 1.0406976405030686 0 -10.592844009399405 -0.5247983932494833 -2.2320985794067454 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 -7.8057239492577372e-09 0.51060890777581469
		 1.7671160677947212e-08 0 -27.841520309448256 -3.3079217239162517e-05 1.1676310350594576e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 -0.57246538475627184 -0.0089220567452535128
		 -0.040731080630268812 0 -28.328838348388672 -1.5814172371619861e-07 5.581601362614208e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 -0.0018180541216326162 -0.02095582164837206
		 0.17328654916451905 0 -8.0766744613647461 -0.48845928907394409 -3.8060102462768555 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 -0.0018130306560041568 -0.020900621392996366
		 0.17328641600646455 0 -3.6000344753265239 3.9676655426035268e-05 5.0814422134948245e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 -0.00045526156918601932 -0.010503385624488321
		 0.086633520754767115 0 -2.1142115592956259 1.5137925405639407e-05 1.4793768968957011e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 -0.0018179569838721529 -0.020928118531251434
		 0.17328638271695093 0 -9.1035881042480469 -0.043914347887039185 -1.86507248878479 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 -0.0018179004177064212 -0.020927889665845256
		 0.17328663238830311 0 -3.1540267467498921 2.3997297830646858e-05 4.8851212337552852e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 -0.00045526156918601932 -0.010503385624488321
		 0.086633520754767115 0 -2.9376723766326904 -4.1600655094953254e-05 -3.966063377092155e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 -0.0018179569838721529 -0.020928118531251434
		 0.17328638271695093 0 -9.5325031280517578 -1.6312302250298671e-05 1.6791842426755466e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 -0.0018179004177064212 -0.020927889665845256
		 0.17328663238830311 0 -3.6982367038726807 1.5066959353049469e-05 -2.2545524188899435e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 -0.00045531179604007421 -0.010538664186553463
		 0.086633595656172777 0 -2.9509215354919434 -3.1132449329618339e-07 -3.0340255108285419e-07 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 -0.0018179569838721529 -0.020928118531251434
		 0.17328638271695093 0 -9.108281135559082 -0.51678895950317383 2.2601163387298584 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 -0.0018179004177064212 -0.020927889665845256
		 0.17328663238830311 0 -3.6764094829559326 1.9227156368373244e-05 3.2355670555261895e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 -0.00045526156918601932 -0.010503385624488321
		 0.086633520754767115 0 -2.8830626010894775 -4.9601214412220429e-05 4.0448976509566137e-05 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 -0.0032219076311630493 -0.23757116326885586
		 -0.13765644151310677 0 -2.464806079864502 -1.5727142095565796 2.682626485824585 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 0.10680643337989933 -0.32071809849162647
		 -0.048523369305353767 0 -3.2297718524933003 -1.8647087812423706 1.8647184371948242 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[43]" -type "matrix" "xform" 1 1 1 -0.01041611092273398 -0.084573682164888517
		 -0.044736703775154166 0 -2.6526050567626953 -1.5314493179321289 1.5314456224441475 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[44]" -type "matrix" "xform" 1 1 1 -0.5961075973334502 0.32112356476759102
		 -0.068690094242140745 0 8.2077817916870117 -6.7517142295837402 -1.5995556116104126 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 0.8856237010195448 -0.13236054594840246
		 0.094352593305820909 0 -4.1101580056102094e-07 -44.370471954345739 0.28464263677594914 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[46]" -type "matrix" "xform" 1 1 1 -0.037501352824221228 0.0046815542354934798
		 -0.12695194041293895 0 4.7163933913907385e-07 -44.427871704101563 -2.9821906089782733 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[47]" -type "matrix" "xform" 1 1 1 -8.8118733991034511e-08 1.7481289673819672e-08
		 5.5434471766670529e-09 0 -2.9609880138892208e-06 -8.7286701202392614 10.710559844970703 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[48]" -type "matrix" "xform" 1 1 1 -0.24972143626817889 -0.3520284173744973
		 0.11046360270209382 0 -8.2077960968017578 -6.7516622543334961 -1.5995594263076782 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[49]" -type "matrix" "xform" 1 1 1 0.41529646960123723 0.14148792305102537
		 -0.0054422695561178016 0 8.4355725959994743e-08 -44.370536804199205 0.28615638613700867 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[50]" -type "matrix" "xform" 1 1 1 -0.31621695677522904 -0.004116977868335917
		 -0.031828923732082536 0 9.6445819686152845e-07 -44.427730560302727 -2.9837889671325666 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[51]" -type "matrix" "xform" 1 1 1 4.0938467156242108e-08 -8.545190068450065e-08
		 -1.1805259841616335e-09 0 -2.3604382004549507e-06 -8.7286691665649414 10.710560798645016 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr -s 52 ".m";
	setAttr -s 52 ".p";
	setAttr ".bp" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "6F7CAECA-4831-2EEB-9D66-8EB1EB776DE6";
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
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1253\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 1\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1253\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1253\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 50 -size 100 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "A9D68B8A-4FF9-01D5-4930-E5BD84602B9B";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 136 -ast 0 -aet 136 ";
	setAttr ".st" 6;
createNode materialInfo -n "Control_Shapes_materialInfo1";
	rename -uid "8799D97A-4E65-15DB-8187-2494416023F5";
createNode shadingEngine -n "lambert2SG";
	rename -uid "AFD8E23C-4ED8-827D-4541-5A8B13F2427F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "TempMaterial";
	rename -uid "9D84B948-4EA0-3378-B451-1A8FB4982D90";
	setAttr ".c" -type "float3" 1 0.92308331 0 ;
	setAttr ".it" -type "float3" 0.69277108 0.69277108 0.69277108 ;
createNode surfaceShader -n "LControlsMaterial";
	rename -uid "2EB30457-42A5-AAAF-810B-DA88631C3889";
	setAttr ".oc" -type "float3" 0 0 1 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "LControlsMaterialSG";
	rename -uid "C2092AD7-45FE-2180-9B70-B7A6F567141D";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr -s 30 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "FBD693D4-4288-A4DF-76BD-01B148B89B23";
createNode surfaceShader -n "MControlsMaterial";
	rename -uid "521CBF74-4379-D383-00BF-18AB291F7D19";
	setAttr ".oc" -type "float3" 1 1 0 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "MControlsMaterialSG";
	rename -uid "BCC7D9F6-434C-93A5-639B-DD8F88EBC6F4";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "B0630F25-46B2-635F-78B8-A094198076F6";
createNode surfaceShader -n "RControlsMaterial";
	rename -uid "5CCE0842-4002-6F4F-376C-A0A11EC24D2C";
	setAttr ".oc" -type "float3" 1 0 0 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "RControlsMaterialSG";
	rename -uid "975AD000-4ED7-F4A4-7DEF-E38D3F60129E";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr -s 30 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "9CF35EC4-41E1-91DD-7BFA-CC8C6BD4F4A2";
createNode animCurveTA -n "Leg_Hip_L_JNT1_rotateX";
	rename -uid "B5627F60-420C-9C89-5215-03B5DE805208";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -34.154449462890632 1 -35.738254547119141
		 2 -37.083705902099602 3 -37.425872802734389 4 -36.50550842285157 5 -35.337245941162102
		 6 -35.167362213134773 7 -36.23728179931642 8 -39.922847747802734 9 -40.275722503662102
		 10 -38.836467742919929 11 -36.386875152587898 12 -33.829795837402344 13 -30.766305923461925
		 14 -26.805906295776364 15 -22.45317268371582 16 -18.094484329223636 17 -13.658967971801761
		 18 -9.7378768920898438 19 -6.3999814987182635 20 -3.5738086700439453 21 -1.1412796974182131
		 22 1.7664631605148318 23 4.3058619499206552 24 5.5048475265502939 25 6.9942126274108913
		 26 7.905426502227785 27 6.8146176338195819 28 3.7469029426574698 29 -0.068101160228251995
		 30 -5.2918572425842294 31 -11.42470645904541 32 -17.404890060424808 33 -22.372489929199215
		 34 -25.899526596069336 35 -28.2830810546875 36 -29.265319824218743 37 -28.528942108154297
		 38 -26.634920120239258 39 -26.915153503417972 40 -29.707902908325199 41 -33.012985229492195
		 42 -35.889762878417976 43 -38.977710723876967 44 -42.040554046630859 45 -44.152175903320313
		 46 -44.165554046630859 47 -42.560726165771477 48 -40.729408264160156 49 -39.479404449462891
		 50 -39.892177581787109 51 -40.305217742919908 52 -38.197914123535163 53 -35.134262084960938
		 54 -33.843875885009773 55 -34.90269470214843 56 -39.16229248046875 57 -43.152545928955071
		 58 -46.345199584960952 59 -52.324588775634759 60 -61.258167266845696 61 -69.284614562988267
		 62 -70.189079284667983 63 -67.083572387695298 64 -66.277183532714844 65 -67.212654113769531
		 66 -67.867904663085938 67 -67.406990051269545 68 -65.793952941894517 69 -63.89923095703125
		 70 -62.076221466064439 71 -59.139961242675781 72 -55.69801330566407 73 -52.611927032470703
		 74 -49.425426483154297 75 -45.558139801025398 76 -41.702060699462884 77 -38.158054351806648
		 78 -34.689842224121094 79 -31.264844894409173 80 -27.625833511352539 81 -23.817708969116211
		 82 -20.390306472778317 83 -17.757261276245117 84 -15.754424095153801 85 -13.920904159545897
		 86 -12.402322769165041 87 -11.44568538665771 88 -10.896551132202147 89 -10.794202804565431
		 90 -11.887713432312012 91 -13.483511924743651 92 -15.004852294921873 93 -16.080734252929684
		 94 -16.696691513061523 95 -16.292264938354492 96 -15.523885726928718 97 -15.865318298339842
		 98 -16.72302055358886 99 -17.186500549316406 100 -17.464107513427731 101 -17.548196792602543
		 102 -17.503402709960938 103 -17.395709991455078 104 -17.121784210205075 105 -16.666469573974609
		 106 -16.122882843017582 107 -15.762423515319821 108 -15.625995635986323 109 -15.426843643188477
		 110 -15.026288986206055 111 -14.636184692382813 112 -14.482069969177248 113 -14.475187301635742
		 114 -14.565469741821293 115 -14.702992439270014 116 -14.813821792602539 117 -14.869615554809574
		 118 -14.898320198059082 119 -14.993756294250494 120 -15.045618057250977 121 -15.306906700134276
		 122 -16.085994720458988 123 -16.573783874511722 124 -16.704275131225589 125 -17.177249908447269
		 126 -17.786409378051761 127 -18.177408218383793 128 -18.434656143188484 129 -18.6981086730957
		 130 -18.965112686157223 131 -19.194166183471676 132 -19.431306838989258 133 -19.901144027709961
		 134 -20.345653533935558 135 -20.026178359985352 136 -19.52626800537109;
createNode animCurveTA -n "Leg_Hip_L_JNT1_rotateY";
	rename -uid "30853B3A-4622-1AB7-1E3F-B8BBCA8E0B73";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 18.39902496337891 1 19.081489562988278
		 2 21.594533920288082 3 25.071292877197269 4 28.358131408691406 5 30.102458953857418
		 6 29.474555969238285 7 27.690958023071289 8 26.598848342895511 9 26.056163787841797
		 10 24.968378067016602 11 26.310321807861328 12 27.933378219604482 13 27.249048233032223
		 14 26.021398544311523 15 24.948984146118164 16 24.392179489135749 17 24.132017135620121
		 18 24.953351974487301 19 26.091045379638675 20 26.038997650146481 21 25.546579360961911
		 22 25.780998229980465 23 26.604787826538086 24 27.622173309326168 25 28.51643180847169
		 26 27.634212493896491 27 24.792522430419925 28 23.005826950073239 29 22.057737350463871
		 30 19.804897308349613 31 18.254981994628913 32 19.125986099243168 33 20.757661819458008
		 34 21.95634651184082 35 22.833660125732425 36 23.493148803710938 37 22.992168426513672
		 38 19.074153900146484 39 16.007328033447262 40 17.509141921997077 41 23.164306640625
		 42 32.068202972412124 43 40.666576385498061 44 45.970561981201179 45 48.694595336914055
		 46 50.96833801269532 47 53.00841140747071 48 54.551784515380859 49 55.853656768798835
		 50 57.079715728759759 51 58.390628814697259 52 59.061496734619155 53 58.731628417968736
		 54 58.313293457031236 55 57.538646697998054 56 54.671535491943366 57 49.693470001220703
		 58 44.952850341796868 59 41.946220397949219 60 39.511146545410142 61 35.893840789794922
		 62 32.003376007080092 63 28.582862854003899 64 27.721271514892575 65 28.829883575439453
		 66 29.194381713867195 67 29.010848999023445 68 29.972658157348629 69 32.281822204589844
		 70 33.982738494873047 71 34.349300384521484 72 34.535678863525398 73 35.144775390625
		 74 35.643596649169922 75 35.64862060546875 76 35.547794342041009 77 35.773590087890632
		 78 36.076278686523438 79 36.330978393554688 80 36.36543273925782 81 36.025421142578125
		 82 35.692035675048835 83 35.671745300292969 84 35.491588592529297 85 34.444351196289063
		 86 33.377178192138679 87 32.931686401367188 88 32.348312377929695 89 31.36295318603516
		 90 30.49140548706054 91 30.279146194458008 92 30.840990066528324 93 31.670164108276374
		 94 31.72282791137696 95 30.943906784057621 96 30.235496520996101 97 29.732414245605472
		 98 29.307291030883775 99 29.345737457275391 100 29.518907546997074 101 29.405887603759759
		 102 29.441234588623054 103 29.781465530395511 104 30.188730239868161 105 30.439460754394528
		 106 30.375038146972653 107 30.411163330078132 108 30.688320159912109 109 30.915052413940433
		 110 31.526655197143562 111 32.454841613769538 112 32.812217712402351 113 32.800609588623047
		 114 32.88471984863282 115 32.960514068603516 116 33.122257232666009 117 33.483276367187493
		 118 33.801738739013672 119 33.988945007324219 120 34.02742004394532 121 34.549629211425774
		 122 35.500278472900384 123 35.441738128662109 124 35.058975219726563 125 35.368377685546882
		 126 35.898250579833984 127 35.961593627929702 128 35.743286132812507 129 35.446220397949212
		 130 35.110416412353509 131 34.852329254150398 132 34.698726654052734 133 34.5640869140625
		 134 34.455429077148438 135 34.224143981933601 136 33.77789306640625;
createNode animCurveTA -n "Leg_Hip_L_JNT1_rotateZ";
	rename -uid "13AA362B-416F-1864-E549-6FB846670F0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -3.9356524944305442 1 -5.0184831619262678
		 2 -7.3975253105163556 3 -10.219761848449716 4 -12.148794174194339 5 -12.600871086120605
		 6 -12.536116600036623 7 -12.779970169067385 8 -14.392742156982418 9 -15.199911117553711
		 10 -14.382226943969728 11 -15.878556251525882 12 -17.931337356567386 13 -17.456258773803707
		 14 -15.332514762878414 15 -13.36660003662109 16 -11.959427833557134 17 -10.363097190856935
		 18 -8.9775056838989276 19 -7.7782011032104492 20 -6.6595425605773899 21 -5.9125990867614746
		 22 -5.4003882408142081 23 -4.8533935546875009 24 -3.9423215389251713 25 -2.7647688388824472
		 26 -1.4568151235580447 27 0.85062348842620872 28 3.3768827915191637 29 5.8171210289001474
		 30 7.0804815292358416 31 6.676242351531986 32 4.8218951225280771 33 2.9983344078063987
		 34 1.9911067485809335 35 0.68241703510284646 36 -0.39159086346626287 37 -0.4834885299205795
		 38 -0.60585373640060325 39 -0.45918983221054099 40 -0.74845886230468817 41 -4.4221935272216824
		 42 -6.680087566375736 43 -6.8482027053833052 44 -8.7835683822631889 45 -13.330726623535156
		 46 -17.192602157592777 47 -18.71567344665527 48 -19.803255081176754 49 -21.545360565185547
		 50 -24.448743820190423 51 -26.336799621582031 52 -25.200242996215827 53 -23.130764007568352
		 54 -22.719694137573246 55 -24.291801452636722 56 -27.040315628051751 57 -27.519645690917965
		 58 -25.587854385375984 59 -25.210741043090813 60 -26.993978500366211 61 -29.226634979248047
		 62 -27.419937133789073 63 -22.435157775878896 64 -20.180574417114258 65 -20.458271026611328
		 66 -20.105306625366211 67 -18.676528930664066 68 -18.288385391235352 69 -19.911689758300778
		 70 -20.721582412719727 71 -18.756792068481452 72 -16.029684066772472 73 -14.272348403930668
		 74 -12.65510177612305 75 -10.179507255554205 76 -7.679044246673584 77 -5.7751317024230966
		 78 -4.2477555274963361 79 -2.9128921031951887 80 -1.4759769439697281 81 0.18906033039093217
		 82 1.641578555107118 83 2.5666470527648935 84 3.2242519855499259 85 4.0788998603820845
		 86 4.7999796867370632 87 5.0365986824035662 88 5.0018649101257333 89 4.8851928710937509
		 90 4.4973297119140616 91 3.6641035079956046 92 2.6288208961486808 93 1.7635776996612544
		 94 1.5236763954162589 95 1.9609735012054443 96 2.1573841571807861 97 1.8267277479171755
		 98 1.4389444589614884 99 1.1067948341369636 100 0.89093804359435957 101 0.92215657234191917
		 102 0.87199229001998979 103 0.61068487167358543 104 0.33059743046760637 105 0.13793602585792594
		 106 0.13843153417110454 107 0.1429301202297216 108 0.12590293586254209 109 0.2073060870170596
		 110 0.22076375782489849 111 0.18588288128375982 112 0.18639877438545155 113 0.21674224734306452
		 114 0.25033643841743469 115 0.25131663680076638 116 0.24246776103973461 117 0.28346100449562223
		 118 0.43794667720794739 119 0.62397390604019187 120 0.78910350799560613 121 0.56638836860656694
		 122 -0.25192004442214921 123 -0.5255110859870914 124 -0.23954205214977128 125 -0.34963557124137984
		 126 -0.65704238414764571 127 -0.67225855588913097 128 -0.55346733331680364 129 -0.54141300916671686
		 130 -0.5946971774101244 131 -0.61559146642685059 132 -0.6804051995277407 133 -0.98781591653823952
		 134 -1.0942990779876733 135 -0.049138206988571333 136 1.0255388021469123;
createNode animCurveTA -n "Arm_Shoulder_R_JNT1_rotateX";
	rename -uid "58BC2B73-43CD-7104-6237-EAB793B86CD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 43.7484130859375 1 42.752044677734389
		 2 41.812458038330092 3 40.962776184082031 4 40.271812438964837 5 39.884166717529304
		 6 39.81117248535157 7 40.23481750488282 8 41.180194854736328 9 42.083671569824226
		 10 42.901744842529297 11 44.984104156494148 12 47.542766571044922 13 47.959739685058587
		 14 46.893211364746101 15 44.348785400390625 16 41.670585632324212 17 39.86137771606446
		 18 37.618438720703139 19 35.590099334716797 20 34.537723541259759 21 34.916637420654297
		 22 35.887794494628906 23 36.190223693847656 24 36.588886260986335 25 37.289379119873047
		 26 37.486820220947266 27 35.633293151855469 28 34.587116241455078 29 35.591255187988281
		 30 34.782062530517571 31 34.809516906738281 32 35.863487243652344 33 36.717567443847656
		 34 36.915401458740249 35 37.536205291748054 36 39.746208190917969 37 42.325599670410149
		 38 43.674156188964851 39 41.470291137695313 40 37.440761566162109 41 33.615119934082038
		 42 28.285356521606445 43 22.796203613281254 44 17.846244812011719 45 8.6735982894897496
		 46 1.0627943277359002 47 -2.7614116668701176 48 -1.9599164724349973 49 -0.38999745249748241
		 50 -2.0812015533447266 51 -7.1689352989196777 52 -15.152217864990234 53 -21.006685256958004
		 54 -23.531589508056644 55 -25.894433975219723 56 -27.916025161743164 57 -25.858856201171879
		 58 -21.277616500854492 59 -16.212760925292969 60 -11.439801216125487 61 -7.4622278213500977
		 62 -3.5523459911346436 63 2.0136444568634029 64 7.4987339973449734 65 11.357259750366211
		 66 15.396301269531254 67 18.862493515014652 68 21.072219848632816 69 24.027837753295898
		 70 27.291664123535163 71 28.133165359497067 72 26.240772247314453 73 22.582389831542965
		 74 18.913597106933597 75 16.405115127563477 76 14.342730522155763 77 11.874414443969725
		 78 8.8100824356079102 79 4.9110012054443359 80 0.32158747315406788 81 -4.267941951751709
		 82 -8.7526473999023438 83 -12.621071815490724 84 -15.988112449645994 85 -19.617767333984371
		 86 -22.369897842407227 87 -24.735658645629886 88 -27.173027038574219 89 -28.671194076538093
		 90 -29.777393341064457 91 -30.973249435424812 92 -31.691791534423828 93 -31.331977844238288
		 94 -29.804141998291012 95 -28.180154800415036 96 -27.425348281860348 97 -26.586341857910149
		 98 -24.875511169433601 99 -23.265794754028324 100 -21.924448013305668 101 -20.449634552001953
		 102 -19.106349945068363 103 -17.957967758178711 104 -16.824979782104492 105 -15.814960479736332
		 106 -14.750869750976561 107 -13.366051673889162 108 -11.928555488586428 109 -11.026715278625492
		 110 -10.233530998229982 111 -8.2334012985229492 112 -4.9690160751342765 113 -1.7216451168060303
		 114 -0.030692068859934713 115 0.49806630611419728 116 1.3204356431961066 117 2.4935088157653809
		 118 3.8976807594299321 119 5.0323309898376465 120 5.7642145156860352 121 6.6636962890625
		 122 8.0817451477050781 123 9.4748659133911133 124 10.58754348754883 125 11.820211410522463
		 126 13.939681053161619 127 16.505634307861328 128 18.319362640380856 129 19.648782730102539
		 130 21.062520980834964 131 22.542453765869137 132 23.980604171752933 133 25.251176834106449
		 134 26.243352890014652 135 27.256917953491204 136 28.546642303466797;
createNode animCurveTA -n "Arm_Shoulder_R_JNT1_rotateY";
	rename -uid "3B3C280B-4C26-7EFC-EF17-898239C9521A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 21.621391296386722 1 22.350952148437493
		 2 22.920211791992191 3 23.313623428344727 4 23.577278137207031 5 23.620468139648441
		 6 23.29879379272462 7 22.451807022094723 8 21.105621337890632 9 19.498018264770501
		 10 17.785943984985348 11 16.712060928344727 12 15.998429298400874 13 15.180658340454105
		 14 14.485795021057129 15 13.557220458984382 16 12.601896286010748 17 12.340524673461912
		 18 12.494931221008304 19 12.842394828796387 20 13.585600852966307 21 14.51360607147217
		 22 15.669857978820797 23 16.559913635253913 24 16.478965759277337 25 16.298707962036129
		 26 15.251144409179689 27 13.921010017395021 28 13.376986503601072 29 13.525222778320305
		 30 14.26292037963867 31 14.961569786071777 32 15.406118392944336 33 15.764360427856444
		 34 15.812582969665524 35 17.756534576416019 36 23.44273567199707 37 29.174196243286129
		 38 33.645355224609375 39 38.677490234374993 40 41.714004516601555 41 42.387187957763672
		 42 41.248695373535156 43 39.381851196289063 44 36.838142395019545 45 32.138004302978523
		 46 27.256959915161133 47 22.880554199218757 48 18.487442016601566 49 14.318302154541016
		 50 10.273986816406252 51 5.5319375991821298 52 0.88422071933746305 53 -1.3496711254119869
		 54 -4.0187692642211905 55 -7.4919614791870135 56 -9.5085840225219727 57 -11.034387588500975
		 58 -12.473052024841305 59 -10.845061302185057 60 -6.9644680023193342 61 -2.5881781578063965
		 62 3.2491991519927987 63 10.240607261657713 64 17.185121536254879 65 24.078172683715817
		 66 28.561740875244148 67 29.199512481689453 68 26.816513061523438 69 24.433502197265621
		 70 22.63850212097169 71 20.003339767456055 72 16.481836318969727 73 12.895114898681639
		 74 8.4662923812866229 75 5.0311026573181179 76 2.3853998184204115 77 0.34843391180038408
		 78 -0.59640485048294012 79 -0.8279325366020206 80 -1.1886820793151855 81 -1.675794243812561
		 82 -1.538196563720702 83 -0.45693019032478227 84 0.95006436109542824 85 2.9435760974884038
		 86 5.3198876380920419 87 6.3383536338806126 88 6.0182204246520987 89 5.9565234184265163
		 90 6.1628813743591335 91 6.2229027748107937 92 6.4855141639709464 93 6.7273106575012234
		 94 6.9746365547180176 95 7.0967426300048819 96 6.2914018630981454 97 5.3151769638061532
		 98 5.1170830726623544 99 5.0147476196289054 100 4.8123931884765634 101 4.6323862075805673
		 102 4.3913793563842782 103 4.1463012695312473 104 3.9977593421936026 105 4.1644463539123526
		 106 4.6123504638671866 107 4.8118886947631836 108 4.8013610839843741 109 4.8750576972961452
		 110 5.1224093437194833 111 5.5046758651733398 112 5.882206916809082 113 6.1730003356933603
		 114 6.5552320480346689 115 7.0060110092163068 116 7.3542966842651385 117 7.6124148368835467
		 118 7.8566069602966326 119 7.9847536087036142 120 7.9761500358581543 121 8.1358995437622088
		 122 8.4880914688110334 123 8.5044298171997088 124 8.3686895370483434 125 8.4609737396240234
		 126 8.7217063903808576 127 8.7968387603759748 128 8.7597112655639648 129 8.9142789840698242
		 130 9.1344852447509783 131 9.35797214508057 132 9.686649322509771 133 10.112952232360845
		 134 10.53192138671875 135 11.159868240356445 136 12.007350921630858;
createNode animCurveTA -n "Arm_Shoulder_R_JNT1_rotateZ";
	rename -uid "C2AD0713-432A-A8FE-1DF7-09BDCB71A27F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 59.627582550048814 1 58.626514434814467
		 2 58.289714813232443 3 58.110942840576172 4 57.638442993164063 5 57.440074920654304
		 6 58.346126556396499 7 59.965980529785135 8 61.528018951416001 9 62.839340209960945
		 10 64.278915405273452 11 65.939476013183608 12 67.020942687988295 13 67.349380493164063
		 14 67.270126342773466 15 66.431221008300781 16 65.516578674316392 17 65.298507690429688
		 18 65.018821716308608 19 64.609306335449219 20 64.79628753662108 21 64.965255737304702
		 22 65.502410888671861 23 66.312210083007813 24 66.462287902832031 25 66.48728179931642
		 26 66.625732421875014 27 66.843467712402372 28 66.698577880859375 29 65.606071472167969
		 30 63.871360778808601 31 61.960376739501953 32 60.374145507812486 33 59.71214294433593
		 34 59.020782470703146 35 58.104274749755859 36 57.655696868896477 37 57.146610260009759
		 38 55.92958068847657 39 54.844291687011719 40 53.215690612792983 41 52.56060791015625
		 42 48.953529357910149 43 42.185089111328139 44 37.084949493408203 45 30.76808929443359
		 46 22.840112686157227 47 14.660829544067388 48 7.8472709655761728 49 3.6446378231048588
		 50 2.8479363918304443 51 3.7244088649749751 52 6.0450463294982919 53 9.1302175521850568
		 54 12.262265205383301 55 15.925013542175291 56 20.853374481201172 57 25.128973007202152
		 58 27.205204010009766 59 26.118520736694343 60 23.369350433349609 61 22.761850357055664
		 62 26.69249153137207 63 30.137296676635742 64 30.753334045410163 65 31.985721588134766
		 66 36.424301147460945 67 41.920295715332031 68 46.524677276611321 69 51.040561676025398
		 70 55.294960021972656 71 58.393547058105462 72 60.110504150390632 73 60.806694030761719
		 74 60.800849914550781 75 60.878959655761726 76 60.344085693359375 77 59.213886260986335
		 78 58.013126373291016 79 56.480064392089851 80 54.525516510009759 81 52.648544311523438
		 82 50.663532257080085 83 48.601188659667976 84 47.123790740966797 85 45.936244964599616
		 86 44.553405761718743 87 43.560317993164063 88 43.312416076660149 89 42.904155731201172
		 90 42.377723693847656 91 42.185901641845703 92 41.995304107666016 93 41.974945068359375
		 94 42.16667556762696 95 42.094039916992188 96 42.073234558105469 97 42.563743591308594
		 98 42.934074401855469 99 43.081043243408203 100 43.643653869628906 101 44.357948303222656
		 102 45.058540344238274 103 45.749294281005859 104 46.089885711669915 105 45.996467590332031
		 106 45.804256439208984 107 45.935340881347663 108 46.435771942138672 109 46.796684265136733
		 110 46.817417144775391 111 46.995220184326172 112 47.375457763671875 113 47.488563537597656
		 114 47.708892822265618 115 48.407871246337891 116 49.025177001953125 117 49.324062347412109
		 118 49.611446380615227 119 50.050186157226563 120 51.0059814453125 121 52.443309783935561
		 122 53.24847793579103 123 53.371658325195313 124 53.376636505126953 125 53.489414215087905
		 126 53.803421020507813 127 54.195316314697273 128 54.327384948730469 129 54.300884246826186
		 130 54.375457763671861 131 54.440288543701172 132 54.499862670898452 133 54.803432464599609
		 134 55.210449218750007 135 55.519348144531236 136 56.064834594726577;
createNode animCurveTA -n "Arm_Elbow_L_JNT1_rotateY";
	rename -uid "ED4FF4CF-4982-97EA-3DBA-339C8794AC01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -19.285247802734375 1 -18.420148849487308
		 2 -16.876461029052741 3 -14.157778739929201 4 -10.378100395202638 5 -6.0928010940551758
		 6 -3.2832462787628174 7 -2.0087399482727046 8 -1.1638028621673582 9 -0.62437915802001964
		 10 -0.51029592752456676 11 -0.91860830783844016 12 -2.1497001647949223 13 -5.139193058013916
		 14 -6.7125539779663068 15 -3.4556787014007573 16 -4.2319607734680176 17 -16.288917541503903
		 18 -22.810441970825206 19 -25.879051208496097 20 -29.694486618041985 21 -34.233024597167976
		 22 -36.22874832153321 23 -36.275066375732422 24 -35.686359405517585 25 -33.931201934814453
		 26 -31.722917556762692 27 -28.320108413696286 28 -24.428497314453125 29 -21.517108917236325
		 30 -18.96280479431152 31 -17.583255767822266 32 -17.697214126586918 33 -18.311771392822269
		 34 -19.228647232055664 35 -21.163496017456058 36 -22.318513870239265 37 -19.492601394653327
		 38 -13.478451728820803 39 -2.7562069892883301 40 -7.7080683708190936 41 -31.000825881958015
		 42 -38.349491119384766 43 -36.275253295898438 44 -31.708950042724609 45 -36.273807525634766
		 46 -38.86491394042968 47 -29.407478332519524 48 -24.826303482055657 49 -30.434759140014656
		 50 -35.85597229003907 51 -38.997894287109382 52 -42.377433776855476 53 -44.729717254638672
		 54 -49.651832580566399 55 -57.458133697509773 56 -61.677646636962905 57 -65.186805725097656
		 58 -68.225372314453139 59 -70.421539306640625 60 -70.235260009765625 61 -68.122123718261733
		 62 -64.104118347167983 63 -57.567211151123047 64 -51.338962554931634 65 -46.884807586669936
		 66 -43.880542755126953 67 -42.074569702148452 68 -39.502056121826158 69 -35.663101196289063
		 70 -33.652946472167962 71 -35.509513854980476 72 -42.252639770507813 73 -53.030872344970717
		 74 -63.587265014648438 75 -70.899459838867202 76 -76.085540771484361 77 -79.233207702636719
		 78 -80.079750061035156 79 -79.512664794921889 80 -77.340499877929688 81 -71.094757080078139
		 82 -63.921779632568366 83 -62.98166656494142 84 -64.206657409667983 85 -63.390605926513686
		 86 -62.567634582519531 87 -62.460372924804688 88 -62.480888366699212 89 -62.83195877075196
		 90 -63.730762481689453 91 -64.835601806640625 92 -65.608299255371094 93 -65.5443115234375
		 94 -65.539939880371094 95 -65.88037109375 96 -65.533073425292969 97 -64.481559753417955
		 98 -63.607715606689453 99 -62.896244049072273 100 -62.12865066528321 101 -61.365261077880866
		 102 -60.250053405761705 103 -58.578929901123033 104 -57.184421539306655 105 -56.956695556640639
		 106 -56.756656646728516 107 -55.945922851562493 108 -55.118152618408203 109 -54.16660308837892
		 110 -53.00917053222657 111 -51.733680725097685 112 -50.456371307373047 113 -49.141136169433594
		 114 -47.699771881103516 115 -45.927986145019545 116 -43.909790039062507 117 -42.165206909179688
		 118 -40.481269836425774 119 -38.916080474853516 120 -37.629379272460945 121 -36.709045410156243
		 122 -35.73137283325196 123 -34.457782745361335 124 -33.099796295166023 125 -31.917810440063484
		 126 -30.812362670898445 127 -29.969076156616204 128 -29.234970092773445 129 -28.172250747680661
		 130 -27.003181457519528 131 -25.899812698364251 132 -24.595094680786143 133 -23.356973648071289
		 134 -22.446294784545898 135 -21.542272567749027 136 -21.18317985534668;
createNode animCurveTA -n "Leg_Ankle_R_JNT1_rotateX";
	rename -uid "42AE1D9B-4ED1-CCEB-56DB-428175CD2C20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -18.117897033691403 1 -18.156044006347656
		 2 -18.116132736206055 3 -18.304716110229492 4 -18.932043075561527 5 -19.887119293212891
		 6 -20.240421295166019 7 -19.620054244995117 8 -17.884935379028317 9 -14.138028144836424
		 10 -8.1171131134033221 11 1.0261384248733518 12 9.2205686569213885 13 11.132555961608888
		 14 9.6654052734375 15 8.4567651748657262 16 6.858405113220214 17 4.3852043151855487
		 18 1.9712229967117314 19 -0.037403564900159836 20 -2.0220694541931152 21 -3.1226348876953121
		 22 -2.734888315200807 23 -2.5673284530639648 24 -5.2219510078430176 25 -9.7651233673095685
		 26 -7.9824647903442409 27 -2.3206930160522461 28 -1.8534433841705316 29 -5.4065113067626971
		 30 -8.6498632431030273 31 -11.093822479248049 32 -13.261980056762697 33 -15.139447212219237
		 34 -16.623630523681641 35 -17.116941452026371 36 -17.293537139892571 37 -18.146671295166019
		 38 -18.469516754150394 39 -17.041795730590817 40 -12.309633255004883 41 -4.0323042869567862
		 42 -3.1103308200836173 43 2.5736620426177974 44 1.1150146722793581 45 -9.5203905105590803
		 46 -10.280136108398436 47 -9.3636608123779279 48 -13.521880149841312 49 -14.2830924987793
		 50 -13.434426307678223 51 -11.847250938415531 52 -10.092400550842289 53 -7.2120804786682138
		 54 -2.8214256763458248 55 1.5404813289642334 56 5.5798983573913583 57 6.4311804771423322
		 58 -2.2298529148101816 59 -17.784282684326172 60 -27.109464645385746 61 -27.297060012817383
		 62 -23.88609504699707 63 -22.63413047790527 64 -20.707704544067383 65 -17.153924942016602
		 66 -14.387852668762209 67 -13.816071510314941 68 -13.821283340454105 69 -14.728951454162601
		 70 -16.149114608764648 71 -17.527229309082031 72 -18.592704772949222 73 -19.757383346557614
		 74 -20.756952285766602 75 -21.461967468261726 76 -21.784648895263672 77 -21.894819259643558
		 78 -22.134340286254886 79 -22.47906303405761 80 -22.619461059570313 81 -22.645879745483402
		 82 -22.565702438354496 83 -22.201774597167976 84 -21.630743026733395 85 -21.080766677856442
		 86 -20.728584289550781 87 -20.836339950561527 88 -20.919517517089847 89 -20.982913970947269
		 90 -21.106313705444339 91 -21.327543258666992 92 -21.578619003295898 93 -21.787235260009766
		 94 -21.885696411132813 95 -21.804349899291992 96 -21.595237731933597 97 -21.371820449829098
		 98 -21.184848785400391 99 -21.029054641723636 100 -20.931770324707035 101 -20.825983047485352
		 102 -20.670186996459961 103 -20.495838165283207 104 -20.066030502319339 105 -19.515642166137695
		 106 -18.975440979003906 107 -18.53549957275391 108 -18.173360824584954 109 -17.876470565795898
		 110 -17.572467803955078 111 -17.245098114013672 112 -16.932403564453129 113 -16.661460876464847
		 114 -16.452419281005859 115 -16.159103393554688 116 -15.86588191986084 117 -15.678667068481445
		 118 -15.638609886169441 119 -15.616364479064943 120 -15.665511131286625 121 -15.604454994201658
		 122 -15.432509422302251 123 -15.386065483093265 124 -15.440233230590824 125 -15.521861076354979
		 126 -15.589730262756348 127 -15.651563644409181 128 -15.677803039550774 129 -15.668737411499031
		 130 -15.678348541259769 131 -15.711580276489254 132 -15.70620822906494 133 -15.667198181152347
		 134 -15.638529777526859 135 -15.562766075134279 136 -15.453536033630369;
createNode animCurveTA -n "Leg_Ankle_R_JNT1_rotateY";
	rename -uid "79609A6D-42AD-AEEF-8565-D2B29B887495";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -0.23588545620441426 1 0.094711303710937597
		 2 0.48997542262077326 3 0.22467030584812167 4 0.065972194075584439 5 0.36081558465957642
		 6 1.055829644203186 7 2.5161938667297359 8 4.2697043418884268 9 5.242152214050293
		 10 4.3005075454711932 11 -0.13474151492118838 12 -0.11023877561092374 13 -0.149396762251854
		 14 -0.1048445254564285 15 0.0098332613706589196 16 0.13696394860744476 17 0.27004855871200556
		 18 0.22449621558189389 19 0.11480769515037535 20 0.029540635645389557 21 -0.062571823596954401
		 22 -0.17892105877399447 23 -0.23663009703159335 24 0.055949136614799562 25 -0.01164393965154896
		 26 -0.44395616650581371 27 -0.075915969908237457 28 0.085784733295440688 29 -0.033915728330612196
		 30 -0.10049127042293549 31 -0.097943678498268086 32 -0.063372977077960996 33 -0.011922096833586696
		 34 0.055619489401578882 35 0.23653891682624817 36 0.39547798037528981 37 0.3749781250953676
		 38 3.784149169921875 39 16.881160736083988 40 33.776355743408203 41 34.31731033325196
		 42 33.376483917236342 43 31.911312103271488 44 32.77711486816407 45 35.971996307373054
		 46 34.257465362548828 47 32.072193145751953 48 23.59909820556641 49 20.262786865234379
		 50 22.082956314086911 51 21.623447418212894 52 19.411014556884766 53 16.609014511108406
		 54 14.039155006408691 55 13.434812545776367 56 13.511370658874515 57 8.7018871307373047
		 58 -0.17940708994865423 59 3.10987401008606 60 6.5087747573852539 61 6.4882826805114746
		 62 5.0687608718872079 63 4.1426167488098136 64 3.3779213428497314 65 2.7754406929016122
		 66 6.4267954826354989 67 8.5767717361450195 68 7.9241786003112793 69 6.7622756958007821
		 70 5.3707599639892578 71 3.7028765678405766 72 3.1410202980041513 73 3.2081482410430908
		 74 3.2436113357543945 75 3.1975781917572039 76 3.5963969230651847 77 3.8709454536437988
		 78 3.9705517292022718 79 4.0722355842590323 80 4.212639331817627 81 4.2148089408874521
		 82 3.8249988555908203 83 2.8298032283782972 84 1.9688048362731931 85 1.7270392179489134
		 86 1.5302602052688596 87 1.4406363964080815 88 1.3738516569137573 89 1.3066084384918215
		 90 1.273573160171509 91 1.2907687425613408 92 1.3401594161987307 93 1.4027252197265627
		 94 1.4558280706405642 95 1.453033328056335 96 1.4264603853225715 97 1.4291634559631348
		 98 1.4281800985336301 99 1.4052110910415652 100 1.3662087917327885 101 1.3096665143966673
		 102 1.239250183105469 103 1.214588522911072 104 1.2611736059188847 105 1.1862396001815796
		 106 1.0849192142486574 107 1.0506176948547366 108 1.0247999429702754 109 0.98856848478317239
		 110 0.97338956594467174 111 0.9739134907722472 112 1.2487565279006962 113 1.79302990436554
		 114 2.2524454593658447 115 2.7002801895141606 116 3.0514049530029301 117 3.1837151050567623
		 118 3.1181287765502939 119 2.9126329421997084 120 2.7255072593688969 121 3.4542438983917232
		 122 5.0735206604003906 123 5.7534680366516122 124 5.4642024040222177 125 5.1054015159606942
		 126 4.9277181625366211 127 4.7661814689636257 128 4.5416240692138672 129 4.3646464347839373
		 130 4.1012520790100107 131 3.5848670005798344 132 3.2367024421691899 133 3.2452943325042725
		 134 3.2568204402923584 135 3.1816341876983656 136 3.0881154537200937;
createNode animCurveTA -n "Leg_Ankle_R_JNT1_rotateZ";
	rename -uid "BC582562-4594-ECFB-E07A-E3B74EDEB988";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -1.8236629962921143 1 -1.5169528722763059
		 2 -1.4826934337615965 3 -1.1090160608291626 4 -0.72419875860214245 5 -0.24242880940437322
		 6 0.44769582152366644 7 1.382994532585144 8 3.100058794021606 9 5.2357721328735343
		 10 4.1780104637146005 11 -0.12954613566398623 12 -2.9567952156066895 13 -2.4062461853027339
		 14 -1.530163049697876 15 -1.237513065338135 16 -1.7049442529678345 17 -3.2840242385864258
		 18 -3.6494517326354985 19 -2.6276898384094243 20 -0.86335825920105003 21 2.5691285133361816
		 22 6.1951799392700204 23 7.9221978187561017 24 8.7260932922363281 25 3.6569640636444087
		 26 -5.0443878173828125 27 -6.2744398117065439 28 -5.9645419120788565 29 -4.5914864540100098
		 30 -3.0491967201232906 31 -1.8354445695877073 32 -0.66408848762512229 33 0.40493658185005188
		 34 1.3508996963500977 35 3.0475904941558847 36 4.5452876091003418 37 4.6317501068115252
		 38 4.8212552070617667 39 6.8290891647338867 40 10.439535140991211 41 21.205757141113281
		 42 19.906187057495121 43 24.915069580078121 44 25.985733032226566 45 18.679580688476563
		 46 13.053787231445311 47 6.8322634696960449 48 -2.1332674026489262 49 -5.99796485900879
		 50 -4.6900262832641593 51 -2.7500734329223642 52 -1.8759199380874638 53 -0.76283138990402233
		 54 2.0590803623199467 55 5.9987845420837393 56 10.571089744567873 57 13.26484966278076
		 58 13.188019752502443 59 12.828237533569338 60 12.801614761352537 61 10.19548511505127
		 62 8.7218484878540057 63 6.47216796875 64 6.0043821334838867 65 6.1832551956176784
		 66 4.6984515190124512 67 3.2217552661895756 68 2.9700338840484624 69 2.8875548839569092
		 70 2.806347131729126 71 2.8843855857849126 72 3.0939118862152108 73 3.096121072769165
		 74 2.8657784461975093 75 2.6651549339294438 76 2.7143220901489258 77 2.9701466560363774
		 78 3.357683658599854 79 3.8175220489501953 80 4.3039956092834464 81 4.8239426612854013
		 82 5.4261932373046893 83 6.0891146659851101 84 6.7272133827209473 85 7.2679038047790518
		 86 7.5908102989196786 87 7.6577954292297354 88 7.5950732231140128 89 7.5966444015502947
		 90 7.7774353027343759 91 7.959658622741701 92 8.0125389099121112 93 7.952953815460206
		 94 7.8841609954833967 95 7.8987159729003897 96 8.0386047363281268 97 8.2288818359375018
		 98 8.3557577133178711 99 8.2962026596069354 100 8.0248384475708026 101 7.7974209785461417
		 102 7.6522059440612784 103 7.5758280754089355 104 7.9611139297485369 105 8.3305215835571289
		 106 8.6083841323852539 107 8.9233636856079102 108 9.2502288818359357 109 9.4311466217040998
		 110 9.5620450973510742 111 9.8842792510986346 112 10.230382919311522 113 10.464661598205568
		 114 10.558426856994629 115 10.745229721069338 116 10.932892799377445 117 10.937194824218746
		 118 10.738984107971191 119 10.67642879486084 120 10.424219131469727 121 10.323492050170898
		 122 10.526851654052734 123 10.471772193908691 124 10.176893234252933 125 10.114480972290041
		 126 10.050169944763184 127 9.8315992355346697 128 9.6564235687255859 129 9.5289773941040039
		 130 9.3903207778930682 131 9.302947998046875 132 9.2763700485229492 133 9.2930555343627894
		 134 9.3434972763061541 135 9.4285688400268572 136 9.5562067031860352;
createNode animCurveTA -n "Spine_Spine3_M_JNT1_rotateX";
	rename -uid "12F1A4DD-45DC-4FF2-FC2C-D4B6EB7C533F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 2.8323130607604985 1 2.7040457725524911
		 2 2.4653561115264888 3 2.2620677947998042 4 2.1984934806823726 5 2.1357307434082036
		 6 1.9792844057083132 7 1.7130993604660036 8 1.3433427810668945 9 1.0129909515380859
		 10 0.89995962381362926 11 0.94562691450119019 12 0.92083841562271129 13 0.90486317873001132
		 14 1.1061278581619263 15 1.4725199937820439 16 1.9249945878982548 17 2.4199783802032466
		 18 2.8297662734985356 19 3.0702619552612309 20 3.0743920803070059 21 2.7993156909942631
		 22 2.4666318893432622 23 2.2638559341430673 24 2.1413106918334965 25 2.1554117202758794
		 26 1.9434357881546029 27 1.6098030805587773 28 1.5565100908279419 29 1.8093544244766235
		 30 2.0926537513732906 31 2.2403485774993892 32 2.2701988220214848 33 2.3441083431243892
		 34 2.4677309989929199 35 2.504981517791748 36 2.551438570022583 37 2.7482674121856689
		 38 3.2361235618591317 39 4.2684922218322754 40 5.04001808166504 41 4.4857950210571289
		 42 3.6499195098876949 43 3.6412887573242179 44 3.7364745140075684 45 3.4730079174041735
		 46 3.5200772285461421 47 4.0292277336120605 48 4.1721343994140625 49 3.7762141227722172
		 50 2.9272806644439697 51 2.1208162307739262 52 1.5782191753387447 53 0.98058384656906128
		 54 0.41931024193763733 55 0.22623082995414737 56 0.38608530163764948 57 0.7747962474822998
		 58 1.5915759801864626 59 2.9017515182495122 60 4.0280361175537109 61 5.10304880142212
		 62 6.550870895385744 63 8.1459321975708026 64 9.5959329605102521 65 10.722071647644047
		 66 11.15049457550049 67 11.126951217651373 68 11.132304191589359 69 11.265547752380369
		 70 11.148838043212887 71 10.663412094116213 72 10.018217086791992 73 9.3175659179687482
		 74 8.5526905059814471 75 7.7687039375305149 76 6.9381566047668475 77 6.1339554786682129
		 78 5.409996032714842 79 4.7996301651000985 80 4.3214168548583993 81 3.846278429031373
		 82 3.2964260578155522 83 2.7321007251739502 84 2.28178882598877 85 2.0085916519165035
		 86 1.857178926467896 87 1.7372859716415405 88 1.5986747741699221 89 1.4825459718704221
		 90 1.4759788513183596 91 1.5784739255905156 92 1.7229743003845217 93 1.8789288997650144
		 94 2.060639619827271 95 2.2505450248718271 96 2.4261007308959965 97 2.5722618103027339
		 98 2.6535768508911128 99 2.6657412052154545 100 2.6313035488128658 101 2.5944499969482426
		 102 2.5812602043151855 103 2.5593528747558594 104 2.5494678020477295 105 2.5505337715148917
		 106 2.5252845287322998 107 2.4520375728607178 108 2.372605562210083 109 2.3002381324768071
		 110 2.2295928001403813 111 2.1744914054870605 112 2.0931549072265629 113 1.9777224063873287
		 114 1.8967008590698242 115 1.8498127460479732 116 1.8172621726989748 117 1.8006565570831299
		 118 1.8024090528488161 119 1.8110815286636346 120 1.7876867055892944 121 1.754672169685364
		 122 1.7655236721038823 123 1.7661564350128174 124 1.7269723415374758 125 1.7019513845443726
		 126 1.6981530189514162 127 1.6935968399047852 128 1.6915103197097778 129 1.6920000314712527
		 130 1.6862090826034546 131 1.6882811784744263 132 1.700111031532288 133 1.6847339868545532
		 134 1.7207552194595337 135 1.9787064790725708 136 2.2623703479766846;
createNode animCurveTA -n "Spine_Spine3_M_JNT1_rotateY";
	rename -uid "CBE13616-4285-A4ED-429D-889CB734CB32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 2.9276509284973145 1 3.3584432601928715
		 2 3.6293835639953613 3 3.7231631278991704 4 3.7342267036437971 5 3.6477210521698002
		 6 3.5385763645172124 7 3.6187272071838379 8 3.8900315761566162 9 4.0760478973388672
		 10 4.0770683288574228 11 4.0669908523559561 12 3.9875111579895028 13 3.6161282062530531
		 14 2.969469547271729 15 2.2137024402618413 16 1.3256146907806394 17 0.33382967114448542
		 18 -0.43676945567131031 19 -0.92966574430465732 20 -1.3089811801910403 21 -1.6097891330718999
		 22 -1.9109786748886104 23 -2.2309963703155513 24 -2.4530429840087895 25 -2.5555741786956787
		 26 -2.769329309463501 27 -3.1157431602478036 28 -2.9375295639038081 29 -2.2878818511962882
		 30 -2.0055162906646729 31 -1.7406929731369019 32 -1.0353367328643799 33 -0.25538009405136103
		 34 0.42008012533187861 35 0.45075792074203491 36 -0.5946996808052063 37 -1.8765784502029421
		 38 -2.9137690067291269 39 -3.6129777431488046 40 -3.9562234878540039 41 -4.0984339714050275
		 42 -4.3920612335205087 43 -4.8497638702392569 44 -5.1218028068542463 45 -4.889564037322998
		 46 -4.3682284355163583 47 -3.9390292167663565 48 -3.4583075046539307 49 -2.7193660736083989
		 50 -1.9940820932388308 51 -1.4219644069671635 52 -1.0931669473648071 53 -0.85057628154754628
		 54 -0.48804882168769836 55 -0.15036980807781222 56 0.1593124121427536 57 0.92741650342941284
		 58 2.3171639442443852 59 3.8626952171325692 60 5.0926160812377939 61 5.6853256225585946
		 62 5.2599639892578125 63 4.328770637512207 64 3.8574917316436785 65 3.4361963272094727
		 66 2.6515486240386967 67 2.0261759757995614 68 1.7705916166305546 69 1.5147957801818845
		 70 1.1410325765609739 71 0.83588439226150502 72 0.67171615362167381 73 0.69035798311233521
		 74 0.79994434118270863 75 0.83734184503555287 76 0.90522110462188743 77 1.001747727394104
		 78 1.062511682510376 79 1.19429099559784 80 1.3712415695190432 81 1.5257409811019902
		 82 1.6308633089065552 83 1.5873416662216189 84 1.3802007436752322 85 1.1181515455245974
		 86 1.0555349588394167 87 1.3144477605819704 88 1.617541551589966 89 1.7252737283706665
		 90 1.6520156860351565 91 1.5171958208084109 92 1.406307578086853 93 1.3167769908905034
		 94 1.2063539028167727 95 1.1125414371490481 96 1.0871922969818115 97 1.0670740604400633
		 98 1.0018209218978882 99 0.93702107667923007 100 0.87226629257202148 101 0.80847901105880726
		 102 0.74648332595825218 103 0.72310364246368419 104 0.77678847312927235 105 0.78017061948776234
		 106 0.73115330934524547 107 0.7465418577194215 108 0.77538615465164185 109 0.7533765435218811
		 110 0.79713851213455189 111 0.89864563941955589 112 0.92539513111114524 113 0.94294220209121671
		 114 0.96490019559860241 115 0.95246571302413963 116 0.92719107866287231 117 0.90742057561874379
		 118 0.89966714382171675 119 0.87688678503036499 120 0.81003820896148671 121 0.74619054794311535
		 122 0.71278965473175071 123 0.66623347997665405 124 0.61724096536636353 125 0.64097177982330333
		 126 0.70102989673614524 127 0.73669165372848489 128 0.75923818349838279 129 0.77062857151031527
		 130 0.79207032918930054 131 0.82088440656661998 132 0.84568125009536754 133 0.87836647033691428
		 134 0.89771330356597878 135 0.83330905437469449 136 0.7277551293373109;
createNode animCurveTA -n "Spine_Spine3_M_JNT1_rotateZ";
	rename -uid "73E3A2E1-4584-CFBD-FF08-948D1CEEEC52";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -1.8097265958786013 1 -1.9408054351806643
		 2 -2.01258397102356 3 -2.0595190525054936 4 -2.1369125843048096 5 -2.1342697143554688
		 6 -2.087684154510498 7 -2.1119935512542725 8 -2.3052999973297119 9 -2.6998398303985596
		 10 -2.9765236377716069 11 -2.9816908836364746 12 -2.8721852302551278 13 -2.6316616535186768
		 14 -2.1920275688171382 15 -1.7570822238922121 16 -1.4415724277496336 17 -1.2109599113464355
		 18 -1.0667101144790652 19 -0.94717204570770308 20 -0.81559509038925182 21 -0.69931995868682884
		 22 -0.56508165597915672 23 -0.50122392177581776 24 -0.52888357639312744 25 -0.45022979378700245
		 26 -0.30452448129653931 27 -0.0052575003355741544 28 0.36246848106384266 29 0.57607585191726673
		 30 0.58747929334640503 31 0.34571525454521185 32 -0.062004815787076943 33 -0.31592589616775513
		 34 -0.41327965259552008 35 -0.44049641489982622 36 -0.21273735165596006 37 0.23916725814342493
		 38 0.70715224742889427 39 0.97114789485931419 40 0.46617504954338085 41 -0.71661806106567394
		 42 -1.0876907110214231 43 -0.90703999996185325 44 -0.9717633724212642 45 -1.3819525241851804
		 46 -1.7059683799743657 47 -1.3382408618927002 48 -0.6210286021232605 49 -0.05678043514490129
		 50 0.45340150594711298 51 1.0449392795562744 52 1.2883266210556028 53 1.3054101467132566
		 54 1.09496545791626 55 0.58799898624420166 56 0.028427904471755024 57 -0.31334385275840765
		 58 -0.65585809946060192 59 -1.1309891939163208 60 -1.1273860931396487 61 -1.2455732822418215
		 62 -1.8161454200744633 63 -1.88303542137146 64 -1.8298960924148568 65 -1.9786894321441657
		 66 -1.8667122125625613 67 -1.5952194929122931 68 -1.4406777620315556 69 -1.3204834461212158
		 70 -1.0086481571197508 71 -0.62946653366088878 72 -0.36027199029922496 73 -0.21040958166122425
		 74 -0.06427051872014998 75 0.18563044071197513 76 0.41221103072166448 77 0.5878908634185791
		 78 0.77580201625823964 79 0.95221722126007091 80 1.0962418317794802 81 1.2213108539581301
		 82 1.2422801256179807 83 1.2351815700531006 84 1.3902525901794436 85 1.5776749849319458
		 86 1.6488665342330935 87 1.6367908716201782 88 1.6378166675567629 89 1.664908170700073
		 90 1.7233983278274536 91 1.8215519189834595 92 1.9009727239608765 93 1.9592912197113044
		 94 2.0247094631195064 95 2.0718545913696294 96 2.0443887710571294 97 2.011487483978271
		 98 2.0161433219909672 99 2.008933544158936 100 1.9752074480056763 101 1.9282100200653078
		 102 1.90361499786377 103 1.8817374706268313 104 1.8178404569625854 105 1.7324779033660889
		 106 1.5918569564819343 107 1.4997018575668333 108 1.5089563131332397 109 1.5065139532089233
		 110 1.455747723579407 111 1.3881711959838869 112 1.3326382637023924 113 1.2688578367233276
		 114 1.2330508232116699 115 1.2471820116043089 116 1.2689899206161501 117 1.2713667154312132
		 118 1.2746270895004275 119 1.3315877914428711 120 1.4807542562484741 121 1.6382714509963991
		 122 1.7076098918914802 123 1.7437175512313845 124 1.7469414472579958 125 1.7555328607559209
		 126 1.8187636137008667 127 1.9118593931198111 128 1.9672613143920903 129 1.9751425981521609
		 130 1.9656414985656743 131 1.9388734102249146 132 1.8788368701934814 133 1.787102580070496
		 134 1.739138126373291 135 1.8113147020339959 136 1.8775932788848881;
createNode animCurveTA -n "Leg_Knee_R_JNT1_rotateX";
	rename -uid "E7A63810-43D1-5918-0E78-55894655F17E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 23.794734954833984 1 21.640689849853509
		 2 19.967628479003913 3 18.555549621582035 4 17.843008041381836 5 18.25389289855957
		 6 18.993270874023441 7 19.999361038208011 8 21.749847412109379 9 24.186223983764656
		 10 29.533205032348636 11 37.886486053466804 12 47.495761871337898 13 57.054199218750007
		 14 63.893142700195327 15 67.251602172851563 16 67.799148559570298 17 65.83992767333983
		 18 61.610084533691399 19 54.978794097900384 20 45.143508911132798 21 32.045894622802727
		 22 17.482120513916016 23 4.934718132019043 24 0.76628267765045155 25 10.583075523376463
		 26 19.224205017089844 27 23.603679656982425 28 28.727108001708977 29 33.730041503906236
		 30 36.434452056884766 31 37.545024871826172 32 37.782527923583991 33 36.785346984863281
		 34 35.030174255371094 35 33.344120025634759 36 32.046047210693366 37 31.411821365356445
		 38 31.455667495727543 39 32.729907989501953 40 35.38770675659179 41 39.95745849609375
		 42 37.305549621582017 43 22.915437698364258 44 14.392172813415527 45 23.788995742797844
		 46 32.075046539306634 47 31.277566909790036 48 31.504941940307628 49 35.466449737548821
		 50 42.424961090087891 51 47.451965332031243 52 49.858566284179695 53 50.182346343994148
		 54 48.967563629150391 55 47.243713378906257 56 45.550838470458984 57 42.294700622558601
		 58 37.705150604248047 59 36.331222534179688 60 41.62178039550782 61 52.02105712890625
		 62 57.861061096191435 63 56.740478515625 64 53.21343994140625 65 49.522201538085959
		 66 46.583065032958984 67 45.448974609375 68 45.41400146484375 69 46.493927001953125
		 70 47.921501159667969 71 48.925769805908217 72 49.076076507568374 73 48.713481903076172
		 74 48.015975952148459 75 46.849418640136712 76 45.354404449462891 77 43.900714874267571
		 78 42.553119659423835 79 41.219566345214844 80 39.87847900390625 81 38.56541824340821
		 82 37.213645935058587 83 35.899715423583984 84 34.73625183105468 85 33.723449707031257
		 86 32.989406585693352 87 32.623382568359368 88 32.330745697021491 89 32.070289611816406
		 90 32.106986999511726 91 32.584133148193359 92 33.232536315917969 93 33.762573242187507
		 94 34.029216766357422 95 33.919292449951172 96 33.592872619628906 97 33.30408096313478
		 98 33.101623535156243 99 32.906478881835938 100 32.749969482421875 101 32.512760162353516
		 102 32.144584655761719 103 31.701251983642582 104 31.223373413085941 105 30.364147186279293
		 106 29.369260787963871 107 28.568792343139652 108 27.779661178588874 109 26.912683486938473
		 110 26.117748260498054 111 25.360797882080082 112 24.687004089355472 113 24.137825012207031
		 114 23.750450134277354 115 23.477022171020515 116 23.228902816772472 117 23.073398590087901
		 118 23.0264778137207 119 23.019351959228509 120 23.238777160644528 121 23.414016723632816
		 122 23.48349761962891 123 23.628374099731445 124 23.818542480468754 125 24.051923751831062
		 126 24.272464752197269 127 24.420803070068359 128 24.516962051391605 129 24.589656829833991
		 130 24.655313491821289 131 24.696434020996083 132 24.68730545043946 133 24.724473953247067
		 134 24.698328018188469 135 24.165250778198249 136 23.519115447998043;
createNode animCurveTA -n "Leg_Knee_R_JNT1_rotateY";
	rename -uid "D8158E5F-4053-324C-E8FE-6E998ED06D59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 8.106660842895506 1 7.8952517509460467
		 2 7.5474395751953152 3 7.3920121192932147 4 7.3115310668945321 5 7.4443097114562997
		 6 7.6133909225463876 7 7.6900792121887216 8 8.0399990081787092 9 9.2566595077514648
		 10 10.719696044921879 11 11.487193107604984 12 8.0504741668701172 13 7.235264778137207
		 14 7.9714059829711914 15 8.2676477432250977 16 8.0545349121093732 17 7.9577775001525879
		 18 8.5713939666748047 19 9.716829299926756 20 10.103244781494139 21 9.9140157699584961
		 22 10.779989242553711 23 8.7344989776611346 24 3.6966686248779301 25 1.2087454795837402
		 26 0.54199695587158192 27 0.15515804290771473 28 -0.57255667448043845 29 -1.0637539625167851
		 30 -1.5429915189743046 31 -2.8522739410400395 32 -3.8242325782775879 33 -2.6243531703948983
		 34 -0.62039661407470736 35 1.4194968938827517 36 3.4569251537323002 37 6.6007499694824228
		 38 10.545299530029297 39 11.774809837341309 40 12.876026153564455 41 13.576565742492679
		 42 13.606806755065914 43 12.865634918212891 44 11.883300781249998 45 12.940765380859373
		 46 13.482248306274418 47 13.50124359130859 48 13.557780265808109 49 13.728811264038089
		 50 13.822261810302736 51 13.748088836669924 52 13.666279792785645 53 13.625018119812012
		 54 13.603772163391112 55 13.571621894836428 56 13.529728889465332 57 13.506838798522951
		 58 10.966386795043944 59 2.2944378852844238 60 4.3604769706726092 61 5.2919836044311515
		 62 6.7141180038452175 63 9.015101432800293 64 10.766871452331545 65 12.930523872375488
		 66 13.556607246398931 67 13.489761352539061 68 13.44999313354492 69 13.47032642364502
		 70 13.566266059875485 71 13.665786743164068 72 13.247118949890144 73 12.993194580078129
		 74 13.256776809692385 75 13.696228027343752 76 13.681293487548826 77 13.527145385742188
		 78 13.327516555786131 79 13.056318283081053 80 12.800390243530272 81 12.617893218994141
		 82 12.535425186157228 83 12.532607078552248 84 12.160745620727539 85 11.286547660827638
		 86 10.54851722717285 87 10.065905570983892 88 9.7625465393066406 89 9.2627487182617188
		 90 8.3360528945922869 91 7.4850301742553711 92 7.0450220108032253 93 6.9781785011291522
		 94 7.1027064323425311 95 7.2162852287292489 96 7.2511620521545428 97 7.331898212432864
		 98 7.6621618270874032 99 8.1939535140991193 100 8.6636819839477521 101 8.9052352905273438
		 102 9.0328130722045898 103 9.1325130462646484 104 9.2729711532592756 105 9.6003170013427699
		 106 9.8801231384277362 107 10.011454582214357 108 10.157620429992678 109 10.358717918395996
		 110 10.578027725219732 111 10.927864074707031 112 11.061722755432129 113 10.936870574951172
		 114 10.908743858337404 115 10.945985794067385 116 10.94742107391358 117 10.931218147277837
		 118 10.935373306274414 119 10.923878669738768 120 10.857832908630369 121 11.022745132446293
		 122 11.49587821960449 123 11.651384353637697 124 11.528145790100096 125 11.558300971984867
		 126 11.553269386291504 127 11.415555953979489 128 11.29442691802979 129 11.205804824829105
		 130 11.082508087158201 131 10.950043678283691 132 10.87182712554932 133 10.845083236694338
		 134 10.811645507812496 135 10.80942535400391 136 10.832231521606445;
createNode animCurveTA -n "Leg_Knee_R_JNT1_rotateZ";
	rename -uid "F7D3383A-4455-25D4-9013-6F9615D32D2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -0.31181907653808583 1 0.84349733591079734
		 2 1.889582872390748 3 2.1797721385955806 4 1.9506748914718632 5 1.8695079088211062
		 6 1.542760968208313 7 0.42516705393791238 8 -1.6419645547866824 9 -4.6906838417053223
		 10 -5.0353288650512713 11 -3.2132835388183585 12 -5.6806869506835938 13 -6.9408359527587908
		 14 -6.177527904510498 15 -5.8498797416687029 16 -6.4123888015747044 17 -6.3449149131774929
		 18 -4.8041253089904776 19 -3.0800509452819815 20 -3.5071709156036386 21 -5.0462398529052725
		 22 -5.5837788581848153 23 -3.0318427085876469 24 0.10916583985090254 25 -2.0342273712158208
		 26 -7.8154997825622559 27 -9.7059011459350586 28 -8.3765201568603516 29 -9.0278406143188459
		 30 -10.002635955810547 31 -10.182841300964357 32 -10.10292911529541 33 -9.7053260803222638
		 34 -9.107714653015142 35 -8.230714797973631 36 -6.6608786582946777 37 -3.4068386554718018
		 38 0.22847938537597751 39 -1.7694362401962282 40 -2.5858931541442884 41 -1.0735772848129281
		 42 -1.6963864564895643 43 -5.3067307472229013 44 -7.1397113800048837 45 -5.1927070617675799
		 46 -3.0422253608703613 47 -3.1825239658355717 48 -3.0352938175201425 49 -1.9927345514297499
		 50 -0.32053965330123863 51 0.82948470115661621 52 1.3505846261978147 53 1.3848044872283933
		 54 1.0468413829803467 55 0.57640409469604581 56 0.11075405776500687 57 -0.69431048631668046
		 58 -3.9178493022918697 59 -10.788625717163088 60 -9.5101509094238299 61 -9.4177255630493164
		 62 -8.0339870452880877 63 -4.2756037712097168 64 -1.8818752765655515 65 0.32850897312164429
		 66 0.3503801524639128 67 0.022801222279668659 68 -0.0061343559063972543 69 0.2831929326057433
		 70 0.73007994890213002 71 1.0861033201217669 72 0.60070371627807717 73 0.20891992747783628
		 74 0.37501147389412004 75 0.62045145034790061 76 0.25801602005958457 77 -0.2207001149654387
		 78 -0.69549798965454046 79 -1.208748936653137 80 -1.6836141347885136 81 -2.0696854591369624
		 82 -2.3708231449127224 83 -2.6012308597564697 84 -3.0863447189331046 85 -3.886649608612061
		 86 -4.5020709037780762 87 -4.8677506446838397 88 -5.0931148529052734 89 -5.451465606689454
		 90 -6.0920658111572301 91 -6.6618752479553232 92 -6.9531159400939959 93 -6.9882855415344238
		 94 -6.8925032615661639 95 -6.8064436912536648 96 -6.7769842147827157 97 -6.7280220985412615
		 98 -6.5100626945495614 99 -6.1476268768310547 100 -5.827995777130127 101 -5.6770110130310059
		 102 -5.6168599128723171 103 -5.58200979232788 104 -5.5268807411193865 105 -5.3906993865966806
		 106 -5.3116440773010254 107 -5.3146200180053702 108 -5.3171277046203622 109 -5.243710994720459
		 110 -4.9251360893249521 111 -4.4544668197631845 112 -3.9221887588500981 113 -3.6648516654968271
		 114 -3.6402826309204093 115 -3.6397664546966562 116 -3.5130286216735849 117 -3.2989368438720716
		 118 -3.1254172325134286 119 -2.9267740249633794 120 -2.5656459331512456 121 -2.8464436531066899
		 122 -4.0680508613586426 123 -4.5145082473754892 124 -4.1773686408996582 125 -4.193552017211915
		 126 -4.2342867851257333 127 -3.9910101890563974 128 -3.7375915050506592 129 -3.4873089790344247
		 130 -3.1380496025085449 131 -2.7694356441497798 132 -2.553127050399782 133 -2.5240871906280522
		 134 -2.5640294551849374 135 -2.7602794170379643 136 -2.9688022136688232;
createNode animCurveTA -n "Arm_Shoulder_L_JNT1_rotateX";
	rename -uid "215732D1-4AEA-0AA4-2277-359F20785A56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 55.074554443359361 1 54.091117858886712
		 2 54.228240966796882 3 54.792423248291009 4 54.9190673828125 5 55.369865417480483
		 6 56.330402374267578 7 57.005519866943359 8 56.79588699340821 9 56.165748596191413
		 10 56.185768127441413 11 56.797405242919929 12 57.167320251464858 13 57.907417297363288
		 14 59.642417907714844 15 61.920898437499993 16 62.54273986816407 17 58.227767944335923
		 18 50.779106140136712 19 45.269931793212912 20 40.611877441406243 21 36.329650878906243
		 22 35.082439422607429 23 35.221244812011719 24 36.145954132080078 25 38.600559234619148
		 26 42.099193572998047 27 47.939476013183587 28 54.773574829101555 29 57.81437683105468
		 30 58.679355621337891 31 59.739444732666016 32 60.600982666015639 33 60.370548248291023
		 34 58.898864746093764 35 55.528816223144538 36 50.67845535278321 37 49.270950317382805
		 38 52.31962966918946 39 55.919914245605476 40 60.485073089599609 41 61.697048187255845
		 42 69.108848571777344 43 76.607505798339858 44 78.643936157226563 45 76.643707275390611
		 46 68.981353759765611 47 49.395851135253899 48 30.443960189819325 49 13.749336242675781
		 50 10.054077148437502 51 9.9919137954711914 52 3.5212299823760995 53 -6.3466334342956552
		 54 -13.743439674377443 55 -17.559438705444332 56 -21.215381622314453 57 -25.822105407714837
		 58 -29.18858528137207 59 -30.700204849243168 60 -28.969287872314453 61 -22.337013244628903
		 62 -12.86294460296631 63 -3.8749628067016602 64 2.2326104640960693 65 5.4828701019287136
		 66 7.3437128067016584 67 8.0210990905761701 68 8.9940252304077148 69 11.079824447631836
		 70 13.533225059509274 71 15.828314781188963 72 17.714548110961921 73 17.217967987060547
		 74 14.823551177978516 75 13.10421943664551 76 11.386823654174805 77 8.1546707153320295
		 78 4.9331088066101092 79 3.0547332763671875 80 0.070750720798968394 81 -7.8033308982849121
		 82 -18.552627563476563 83 -27.138969421386715 84 -34.25837326049804 85 -40.424343109130859
		 86 -43.66899490356446 87 -43.95491027832032 88 -42.692829132080078 89 -40.862159729003906
		 90 -39.16588211059571 91 -37.713283538818366 92 -36.205890655517578 93 -34.304027557373061
		 94 -32.230487823486335 95 -30.344566345214844 96 -28.503072738647457 97 -26.499835968017578
		 98 -24.505960464477539 99 -22.671762466430668 100 -21.080282211303704 101 -18.831129074096676
		 102 -15.852366447448732 103 -12.56886672973633 104 -10.006068229675295 105 -8.6504564285278338
		 106 -7.1863193511962873 107 -4.7014036178588867 108 -1.870786190032959 109 0.75535887479782093
		 110 3.5006778240203857 111 6.2544293403625497 112 8.7497396469116193 113 11.065421104431156
		 114 12.897497177124029 115 14.248966217041014 116 15.117544174194336 117 16.55328369140625
		 118 17.995777130126957 119 19.957681655883789 120 22.950584411621104 121 25.826021194458008
		 122 27.467861175537113 123 29.010883331298828 124 31.034332275390625 125 32.88685607910157
		 126 34.825775146484375 127 37.262886047363295 128 39.222923278808587 129 40.429023742675781
		 130 41.633258819580078 131 42.77423095703125 132 43.863285064697266 133 45.016120910644524
		 134 46.059146881103523 135 46.834217071533203 136 47.102230072021491;
createNode animCurveTA -n "Arm_Shoulder_L_JNT1_rotateY";
	rename -uid "A8BF46E8-48EE-D9CB-4400-948FED2B597E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -16.547760009765632 1 -15.768329620361326
		 2 -15.30418682098388 3 -14.771043777465822 4 -14.281159400939945 5 -13.823645591735838
		 6 -13.336946487426758 7 -12.765754699707029 8 -11.96696758270264 9 -11.301961898803707
		 10 -11.017473220825192 11 -11.357253074645993 12 -12.14286518096924 13 -13.116748809814458
		 14 -14.855991363525394 15 -17.458806991577148 16 -19.685010910034176 17 -20.359994888305668
		 18 -21.009769439697266 19 -21.954494476318366 20 -22.616106033325195 21 -22.733114242553707
		 22 -23.322103500366218 23 -24.112672805786136 24 -24.880779266357418 25 -25.889425277709964
		 26 -25.973934173583988 27 -26.065671920776364 28 -26.592901229858395 29 -25.848405838012699
		 30 -24.385782241821289 31 -23.423454284667965 32 -22.702146530151371 33 -21.768014907836921
		 34 -20.589239120483398 35 -18.239795684814457 36 -13.861302375793459 37 -10.084435462951662
		 38 -8.6605262756347638 39 -8.4853267669677699 40 -5.0315976142883292 41 1.8276112079620348
		 42 3.1387095451354932 43 1.8197760581970204 44 2.6222128868103032 45 6.1447906494140643
		 46 9.733576774597168 47 11.306722640991211 48 11.901287078857422 49 14.537635803222656
		 50 14.591248512268066 51 11.542304039001468 52 10.848169326782228 53 11.215370178222662
		 54 11.417582511901855 55 11.009828567504879 56 10.603573799133304 57 11.239301681518558
		 58 10.841392517089846 59 9.8062534332275373 60 8.6980943679809553 61 7.9781579971313477
		 62 6.7473106384277335 63 3.2274494171142578 64 -1.2137070894241335 65 -5.4538731575012225
		 66 -8.7569522857666033 67 -11.593774795532223 68 -16.152177810668942 69 -22.486312866210938
		 70 -28.133523941040043 71 -31.089683532714844 72 -30.817659378051761 73 -28.026691436767585
		 74 -24.605270385742188 75 -22.123983383178707 76 -19.802665710449215 77 -17.007726669311523
		 78 -14.201642036437988 79 -11.71333694458008 80 -9.4955835342407244 81 -7.4154262542724627
		 82 -5.3546566963195792 83 -2.272895336151123 84 0.50847160816192905 85 2.7144777774810809
		 86 4.4590916633605957 87 5.3239517211914071 88 5.3806586265563991 89 5.2559485435485866
		 90 4.9354634284973136 91 4.0416712760925293 92 2.8263337612152135 93 1.7568560838699343
		 94 1.0370366573333734 95 0.6989240646362288 96 0.52617985010147272 97 0.16842317581176847
		 98 -0.11055102199315991 99 -0.18904602527618297 100 -0.13890734314918501 101 -0.12316749989986277
		 102 -0.46062821149826028 103 -1.17154860496521 104 -1.4350502490997323 105 -1.146436929702759
		 106 -1.0539470911025999 107 -1.4902135133743286 108 -2.1010537147521977 109 -2.5269641876220708
		 110 -3.0225915908813468 111 -3.6409730911254892 112 -4.159559726715087 113 -4.5864658355712873
		 114 -4.7500262260436994 115 -4.6951422691345224 116 -4.6055774688720712 117 -4.6505193710327166
		 118 -4.6953568458557138 119 -5.0198411941528303 120 -5.6371326446533176 121 -6.0509686470031765
		 122 -6.1174869537353489 123 -6.2378826141357431 124 -6.483978748321535 125 -6.744877815246582
		 126 -6.9822916984558114 127 -7.1570172309875444 128 -7.1964855194091788 129 -7.1801509857177743
		 130 -7.2336678504943857 131 -7.2951045036315945 132 -7.3997907638549787 133 -7.6089572906494185
		 134 -7.8803086280822727 135 -8.266700744628908 136 -8.5333967208862287;
createNode animCurveTA -n "Arm_Shoulder_L_JNT1_rotateZ";
	rename -uid "74AADBE1-4803-AB14-BB75-2EB2EFC56E83";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -60.435337066650398 1 -60.193271636962884
		 2 -60.440170288085945 3 -61.182849884033196 4 -62.308090209960945 5 -63.788665771484382
		 6 -64.857810974121094 7 -65.532249450683594 8 -66.05002593994142 9 -66.076988220214844
		 10 -66.134658813476563 11 -66.399307250976577 12 -66.286499023437528 13 -65.463813781738281
		 14 -65.00872802734375 15 -65.616439819335938 16 -64.851257324218764 17 -61.169334411621072
		 18 -59.165981292724609 19 -57.987586975097663 20 -57.226955413818359 21 -57.082336425781236
		 22 -57.302036285400405 23 -57.776695251464851 24 -58.355583190917983 25 -59.264297485351563
		 26 -60.145591735839844 27 -61.250793457031257 28 -62.838661193847642 29 -64.277572631835938
		 30 -65.164512634277344 31 -65.288200378417969 32 -64.807464599609375 33 -64.357131958007798
		 34 -63.84861755371093 35 -62.335651397705078 36 -60.526302337646484 37 -61.168983459472663
		 38 -64.096206665039063 39 -68.029144287109375 40 -63.776920318603501 41 -52.876472473144524
		 42 -45.446372985839851 43 -45.021919250488288 44 -45.925346374511719 45 -39.910610198974609
		 46 -31.001670837402344 47 -28.265535354614258 48 -28.221729278564453 49 -26.988290786743164
		 50 -23.630826950073249 51 -19.975475311279297 52 -18.009191513061523 53 -17.702669143676758
		 54 -18.574148178100589 55 -19.58456993103027 56 -20.591629028320316 57 -23.929645538330071
		 58 -28.572341918945309 59 -32.724128723144538 60 -38.198760986328132 61 -43.004322052001953
		 62 -46.50719070434571 63 -50.53962707519532 64 -54.001110076904311 65 -55.810188293457038
		 66 -55.727958679199212 67 -54.470840454101548 68 -52.403690338134773 69 -49.955432891845696
		 70 -48.58769226074218 71 -48.896350860595696 72 -49.44176101684571 73 -49.129100799560554
		 74 -48.82089996337892 75 -48.807006835937507 76 -48.735881805419922 77 -48.2646484375
		 78 -47.693653106689474 79 -47.218368530273438 80 -46.789134979248047 81 -46.448516845703125
		 82 -46.571823120117188 83 -47.354648590087891 84 -47.909515380859368 85 -47.833942413330085
		 86 -47.313430786132813 87 -46.699897766113281 88 -46.278617858886719 89 -46.319011688232415
		 90 -47.000125885009773 91 -48.098598480224609 92 -49.292083740234389 93 -50.296489715576179
		 94 -51.014732360839851 95 -51.578769683837891 96 -52.083370208740213 97 -52.579921722412102
		 98 -53.093437194824226 99 -53.426082611083991 100 -53.662143707275376 101 -53.888710021972649
		 102 -54.03202819824218 103 -54.13128662109375 104 -54.416301727294929 105 -55.009025573730476
		 106 -55.65299987792968 107 -56.11627197265625 108 -56.578445434570313 109 -57.012580871582017
		 110 -57.406391143798828 111 -57.915447235107429 112 -58.456703186035156 113 -58.874584197998061
		 114 -59.426937103271499 115 -60.224292755126946 116 -60.877632141113267 117 -61.374450683593757
		 118 -61.709266662597656 119 -61.925987243652344 120 -61.793834686279297 121 -61.478206634521484
		 122 -61.498020172119141 123 -61.703269958496101 124 -61.875438690185554 125 -62.117752075195305
		 126 -62.436954498291016 127 -62.638294219970703 128 -62.826446533203125 129 -63.193321228027337
		 130 -63.563335418701165 131 -63.807521820068359 132 -64.017303466796875 133 -64.162185668945313
		 134 -64.193328857421889 135 -64.251716613769545 136 -64.204933166503906;
createNode animCurveTL -n "Pelvis_Root_M_JNT1_translateX";
	rename -uid "B740F0F0-45BD-D117-D34D-4EBC56FCCB1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -6.9339256286621094 1 -6.4794912338256836
		 2 -5.9806475639343262 3 -5.5073213577270508 4 -4.9597921371459961 5 -4.1953153610229492
		 6 -3.3335096836090088 7 -2.3973050117492676 8 -1.2850866317749023 9 -0.13057827949523926
		 10 1.0285185575485229 11 2.2240049839019775 12 3.3233928680419922 13 4.097383975982666
		 14 4.5441226959228516 15 4.8902325630187988 16 5.2271518707275391 17 5.5375852584838867
		 18 5.8485517501831055 19 6.1192517280578613 20 6.3021631240844727 21 6.4551258087158203
		 22 6.6127777099609375 23 6.6709237098693848 24 6.5425076484680176 25 6.275698184967041
		 26 5.8251738548278809 27 5.2904229164123535 28 4.7536792755126953 29 4.1338090896606445
		 30 3.4824416637420654 31 3.1181910037994385 32 3.0871672630310059 33 3.1597363948822021
		 34 3.2259869575500488 35 3.254249095916748 36 3.3536467552185059 37 4.1391887664794922
		 38 5.8922438621520996 39 8.1589822769165039 40 10.721145629882813 41 13.152942657470703
		 42 15.910129547119141 43 19.157371520996094 44 21.657720565795898 45 22.995491027832031
		 46 23.895488739013672 47 24.327175140380859 48 24.025947570800781 49 23.562110900878906
		 50 23.559524536132813 51 23.937532424926758 52 24.402551651000977 53 25.00605583190918
		 54 25.942584991455078 55 27.378973007202148 56 29.253810882568359 57 31.003828048706055
		 58 32.537425994873047 59 34.079532623291016 60 35.025978088378906 61 35.526779174804688
		 62 35.861843109130859 63 35.609886169433594 64 35.053676605224609 65 34.635848999023438
		 66 34.524448394775391 67 34.602066040039063 68 34.864833831787109 69 35.349769592285156
		 70 35.981094360351563 71 36.7379150390625 72 37.5599365234375 73 38.337505340576172
		 74 39.069301605224609 75 39.787982940673828 76 40.436153411865234 77 40.995807647705078
		 78 41.482028961181641 79 41.886161804199219 80 42.230331420898438 81 42.538608551025391
		 82 42.800567626953125 83 43.060760498046875 84 43.375438690185547 85 43.744098663330078
		 86 44.141117095947266 87 44.546047210693359 88 44.944141387939453 89 45.297649383544922
		 90 45.545925140380859 91 45.666069030761719 92 45.710269927978516 93 45.730968475341797
		 94 45.712448120117188 95 45.636390686035156 96 45.471431732177734 97 45.222480773925781
		 98 44.917949676513672 99 44.593044281005859 100 44.264606475830078 101 43.929195404052734
		 102 43.580345153808594 103 43.237663269042969 104 42.885334014892578 105 42.502815246582031
		 106 42.156410217285156 107 41.847938537597656 108 41.565471649169922 109 41.318462371826172
		 110 41.077144622802734 111 40.850162506103516 112 40.654739379882813 113 40.483123779296875
		 114 40.343441009521484 115 40.247238159179688 116 40.175148010253906 117 40.135818481445313
		 118 40.155158996582031 119 40.211753845214844 120 40.278621673583984 121 40.362480163574219
		 122 40.452346801757813 123 40.561576843261719 124 40.696929931640625 125 40.784313201904297
		 126 40.851642608642578 127 40.956954956054688 128 41.030014038085938 129 41.031490325927734
		 130 41.015815734863281 131 41.002292633056641 132 40.962577819824219 133 40.882316589355469
		 134 40.833869934082031 135 40.949962615966797 136 41.039577484130859;
createNode animCurveTL -n "Pelvis_Root_M_JNT1_translateY";
	rename -uid "246F9FEA-4D9F-1B73-9C02-C3976F0B0B34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 102.87050628662109 1 103.05113983154297
		 2 103.0699462890625 3 102.93263244628906 4 102.59722900390625 5 101.95168304443359
		 6 101.26174926757813 7 100.68254852294922 8 100.14299011230469 9 99.775482177734375
		 10 99.5408935546875 11 99.740745544433594 12 100.08757781982422 13 100.50464630126953
		 14 101.13571929931641 15 101.83762359619141 16 102.41303253173828 17 102.82107543945313
		 18 103.02399444580078 19 103.03811645507813 20 102.90687561035156 21 102.56377410888672
		 22 102.1070556640625 23 101.54597473144531 24 100.66148376464844 25 99.922225952148438
		 26 99.1663818359375 27 98.750213623046875 28 98.459396362304688 29 98.110008239746094
		 30 98.06512451171875 31 98.366401672363281 32 98.862228393554688 33 99.501602172851563
		 34 100.12150573730469 35 100.60111999511719 36 100.95832824707031 37 101.20500946044922
		 38 101.36181640625 39 100.87606048583984 40 99.726852416992188 41 98.008094787597656
		 42 97.720008850097656 43 99.160247802734375 44 100.06864929199219 45 99.639793395996094
		 46 99.435371398925781 47 100.37492370605469 48 101.16509246826172 49 101.37750244140625
		 50 101.05619812011719 51 100.86512756347656 52 101.11721801757813 53 101.53941345214844
		 54 101.72791290283203 55 101.43428802490234 56 100.53404998779297 57 99.467613220214844
		 58 98.399917602539063 59 96.703414916992188 60 94.924118041992188 61 93.139556884765625
		 62 92.314163208007813 63 92.875808715820313 64 93.742897033691406 65 94.584304809570313
		 66 95.112899780273438 67 95.3428955078125 68 95.469306945800781 69 95.531402587890625
		 70 95.521202087402344 71 95.56475830078125 72 95.759536743164063 73 96.111007690429688
		 74 96.580764770507813 75 97.166793823242188 76 97.745697021484375 77 98.250381469726563
		 78 98.701011657714844 79 99.121597290039063 80 99.517974853515625 81 99.879829406738281
		 82 100.19921875 83 100.44964599609375 84 100.62325286865234 85 100.75630187988281
		 86 100.85471343994141 87 100.9078369140625 88 100.94978332519531 89 100.97592926025391
		 90 100.93374633789063 91 100.81498718261719 92 100.66841125488281 93 100.55165100097656
		 94 100.5054931640625 95 100.55349731445313 96 100.66098022460938 97 100.76348876953125
		 98 100.82916259765625 99 100.88911437988281 100 100.95089721679688 101 101.02273559570313
		 102 101.11147308349609 103 101.20456695556641 104 101.304443359375 105 101.46540832519531
		 106 101.63526916503906 107 101.75575256347656 108 101.85254669189453 109 101.94957733154297
		 110 102.04648590087891 111 102.12959289550781 112 102.18560791015625 113 102.21500396728516
		 114 102.22901916503906 115 102.24079895019531 116 102.25827026367188 117 102.27714538574219
		 118 102.29190063476563 119 102.294921875 120 102.29025268554688 121 102.27346038818359
		 122 102.22290802001953 123 102.19493865966797 124 102.20524597167969 125 102.18003082275391
		 126 102.14974975585938 127 102.14612579345703 128 102.14830780029297 129 102.14786529541016
		 130 102.14875030517578 131 102.14912414550781 132 102.14909362792969 133 102.13819122314453
		 134 102.12155151367188 135 102.14095306396484 136 102.171630859375;
createNode animCurveTL -n "Pelvis_Root_M_JNT1_translateZ";
	rename -uid "088B9B16-4E4A-A928-5253-8A8B8E2F8777";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -7.5737414360046387 1 -4.4558682441711426
		 2 -1.3455438613891602 3 1.9780738353729248 4 5.5895323753356934 5 9.6171197891235352
		 6 13.920615196228027 7 18.496408462524414 8 23.440950393676758 9 28.469392776489258
		 10 33.415363311767578 11 37.971031188964844 12 41.968456268310547 13 45.603652954101563
		 14 49.139034271240234 15 52.632411956787109 16 56.030067443847656 17 59.347763061523438
		 18 62.617168426513672 19 65.8900146484375 20 69.199882507324219 21 72.580352783203125
		 22 76.1612548828125 23 80.113632202148438 24 84.546119689941406 25 89.251632690429688
		 26 94.452751159667969 27 99.538803100585938 28 104.17064666748047 29 108.633056640625
		 30 112.8695068359375 31 116.74774932861328 32 120.34861755371094 33 123.9991455078125
		 34 127.76066589355469 35 131.38526916503906 36 134.64768981933594 37 137.81782531738281
		 38 141.1744384765625 39 143.74897766113281 40 145.56916809082031 41 147.33517456054688
		 42 149.57450866699219 43 152.46771240234375 44 155.73086547851563 45 158.91670227050781
		 46 162.20220947265625 47 166.0941162109375 48 169.58781433105469 49 172.13186645507813
		 50 173.70701599121094 51 174.88624572753906 52 175.97821044921875 53 177.10987854003906
		 54 178.56103515625 55 180.51152038574219 56 183.17135620117188 57 186.5465087890625
		 58 190.5030517578125 59 195.36395263671875 60 200.766357421875 61 206.133544921875
		 62 210.41011047363281 63 213.5927734375 64 216.327392578125 65 218.80342102050781
		 66 220.78182983398438 67 222.17182922363281 68 223.00106811523438 69 223.29730224609375
		 70 223.33604431152344 71 223.19438171386719 72 222.81829833984375 73 222.26620483398438
		 74 221.6287841796875 75 220.93608093261719 76 220.20146179199219 77 219.41647338867188
		 78 218.58123779296875 79 217.71881103515625 80 216.8424072265625 81 215.93746948242188
		 82 215.01289367675781 83 214.18577575683594 84 213.53227233886719 85 213.048828125
		 86 212.7542724609375 87 212.64112854003906 88 212.63664245605469 89 212.70916748046875
		 90 212.87858581542969 91 213.12574768066406 92 213.3753662109375 93 213.55845642089844
		 94 213.63772583007813 95 213.6024169921875 96 213.47332763671875 97 213.30589294433594
		 98 213.10386657714844 99 212.81889343261719 100 212.44316101074219 101 212.01083374023438
		 102 211.55810546875 103 211.06292724609375 104 210.51828002929688 105 209.98210144042969
		 106 209.48600769042969 107 209.03781127929688 108 208.63623046875 109 208.2755126953125
		 110 207.93919372558594 111 207.61886596679688 112 207.37037658691406 113 207.20960998535156
		 114 207.12527465820313 115 207.09298706054688 116 207.09657287597656 117 207.13905334472656
		 118 207.22041320800781 119 207.33357238769531 120 207.47433471679688 121 207.65998840332031
		 122 207.88479614257813 123 208.05793762207031 124 208.19131469726563 125 208.38534545898438
		 126 208.56703186035156 127 208.68287658691406 128 208.78675842285156 129 208.85636901855469
		 130 208.87216186523438 131 208.87733459472656 132 208.87664794921875 133 208.86453247070313
		 134 208.8189697265625 135 208.69842529296875 136 208.53190612792969;
createNode animCurveTA -n "Pelvis_Root_M_JNT1_rotateX";
	rename -uid "5FC46415-4662-C54A-35CA-1E90C9D07E8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 4.2648882865905753 1 4.5207390785217294
		 2 5.1052355766296396 3 5.4926018714904785 4 5.4083915220986567 5 5.0558715463071522
		 6 4.8472671508789071 7 4.8282189369201669 8 4.7850409442951936 9 4.410092153857974
		 10 3.48262403330415 11 2.3613342701474562 12 1.7451266863248378 13 1.5965488382721225
		 14 1.3446086645126343 15 0.95509803295135509 16 0.48136864837567594 17 -0.066807653533753272
		 18 -0.39273889169334392 19 -0.30652477679776657 20 0.22987961733141965 21 1.1432346135522418
		 22 1.9262480796277792 23 2.2362962398277739 24 2.2222118812338252 25 2.0318354284091256
		 26 1.8219921745792493 27 1.8842289866662445 28 1.579512138335734 29 0.58355517729071338
		 30 -0.20688477158546451 31 -0.24221750870800168 32 0.28902568943599199 33 0.56939653124736456
		 34 0.55176320457034655 35 0.82954966588897683 36 1.1991932452798297 37 1.3020454169257687
		 38 1.4230566481514075 39 2.0776542644146279 40 3.5353083253576547 41 1.7597742255064484
		 42 3.0857311176551114 43 146.81855113120622 44 162.26097680421196 45 173.58718872070313
		 46 179.25500701507275 47 178.60228091325041 48 177.78482075075294 49 177.99354566459934
		 50 179.03018271692324 51 179.298370747712 52 178.51087984327114 53 177.76171855006561
		 54 177.57038885835263 55 177.84828108668947 56 178.78349280155413 57 180.11032199115257
		 58 181.75087318592736 59 184.14982341509744 60 187.94770812988278 61 192.37646782698772
		 62 194.96428347775478 63 196.87448712185073 64 199.2490300402194 65 201.96425770832136
		 66 204.55830079035013 67 206.05358871033351 68 205.29614179435603 69 202.36674046679363
		 70 199.21007623549403 71 196.57456138073422 72 194.31708337520485 73 192.42166480109006
		 74 190.73771807897788 75 189.1190490722656 76 187.59046805270717 77 186.04346922488773
		 78 184.38636305614014 79 182.61192959395709 80 180.63716595673537 81 178.59056382986802
		 82 176.71701121934007 83 175.19760075422809 84 174.0633378022616 85 173.27415319572944
		 86 172.80834851072083 87 172.62814344156737 88 172.7135311573864 89 172.98016333393147
		 90 173.2786865234375 91 173.5790255594776 92 173.9629371701806 93 174.38269143949091
		 94 174.69372472070341 95 174.89144854601847 96 175.06028717575745 97 175.29441820970834
		 98 175.64947526238259 99 176.06929073708454 100 176.42355411377739 101 176.62263538801551
		 102 176.7177427652241 103 176.73458873331273 104 176.60247813147606 105 176.48966979980469
		 106 176.45362851242791 107 176.42472835914944 108 176.41766358937889 109 176.43569945388538
		 110 176.42295847707203 111 176.34756477249263 112 176.32185363580095 113 176.35647585728057
		 114 176.44981401787516 115 176.59181243114267 116 176.70413239724169 117 176.77830484634424
		 118 176.85420211328284 119 176.94265740260292 120 177.01437377929688 121 177.08822639786476
		 122 177.20137051902532 123 177.38067688185126 124 177.6445018175398 125 177.94783150047272
		 126 178.20054753485394 127 178.39042793890948 128 178.59603742992041 129 178.8117967882734
		 130 179.05160408090299 131 179.30088714783409 132 179.52915879066788 133 179.84744205216401
		 134 180.13000479652734 135 180.05038452148435 136 179.91352844238284;
createNode animCurveTA -n "Pelvis_Root_M_JNT1_rotateY";
	rename -uid "CFEE7081-4DDE-B283-E299-6C91B19C2CB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -4.796003818511962 1 -5.6041264533996573
		 2 -6.1820664405822789 3 -6.2402467727661151 4 -6.0732813041953344 5 -6.0892638974264779
		 6 -6.2481679916381854 7 -6.6876373291015625 8 -7.5470220388879321 9 -8.1166838649348083
		 10 -7.9940247691360113 11 -7.9702443607966194 12 -8.4348572960758261 13 -8.6513214515199017
		 14 -8.0548954010009766 15 -6.7753915786743173 16 -5.1245293332147561 17 -3.4778847122147578
		 18 -2.3431144177152703 19 -1.8519186322559065 20 -1.730641038833401 21 -1.7534169120992806
		 22 -1.8070003518021915 23 -1.4129613024176604 24 -0.39677341215794237 25 0.47647355038852152
		 26 1.6917145338806423 27 3.7595839935803075 28 4.8189715835562508 29 4.2333209649463663
		 30 4.2899260520935067 31 4.6243225517397786 32 3.4914362095772478 33 1.5795114879479435
		 34 -0.51010937647851229 35 -3.5754518558760315 36 -8.3685679708305472 37 -14.433595497069531
		 38 -22.580773068456999 39 -35.52281455266511 40 -51.794622692251899 41 -67.995853826925043
		 42 -82.590844083546415 43 -84.188383272572025 44 -75.575803129416542 45 -69.857231140136719
		 46 -64.116541578547924 47 -57.97419569796498 48 -52.645415616267307 49 -48.029314991272528
		 50 -43.639947951620542 51 -39.151831445819688 52 -34.911142188473285 53 -30.935924733052016
		 54 -26.893993209268167 55 -23.019141433060486 56 -19.04736420172306 57 -14.359330635701106
		 58 -8.5219961085862561 59 -1.5645253416965799 60 5.7206368446350089 61 12.752811957642511
		 62 18.172427483105803 63 22.044517110514303 64 26.160190011353261 65 30.23086739699405
		 66 32.675881612962755 67 33.770782130691153 68 34.275299167422283 69 34.21839824937414
		 70 33.202145380906018 71 31.604178049483227 72 30.175391771167696 73 29.118307073167266
		 74 28.223891084318904 75 27.284326553344734 76 26.392152088232006 77 25.642576741524536
		 78 24.945959109230404 79 24.275301328202435 80 23.619468232921708 81 23.034039406622512
		 82 22.459701836553801 83 21.63004645716007 84 20.637737848925074 85 19.839041051961221
		 86 19.259368808554655 87 18.665817293966636 88 17.854989917088425 89 16.76441482956972
		 90 15.51251220703125 91 14.331433329751704 92 13.348375559673237 93 12.587702948553785
		 94 12.110893395484624 95 11.941111667172665 96 12.023196014958961 97 12.217221165278643
		 98 12.469098215989039 99 12.804579320895455 100 13.194545708574577 101 13.588350691744369
		 102 13.987991999781324 103 14.486145867938415 104 15.094938751883097 105 15.615080833435062
		 106 16.102943880507041 107 16.697228600492831 108 17.2762942969688 109 17.779920381136044
		 110 18.513574584292428 111 19.424845439747322 112 20.139037804185257 113 20.750208161244846
		 114 21.363224900682148 115 21.921021713520151 116 22.394433503976881 117 22.765452404175427
		 118 23.070685839597601 119 23.28888689359335 120 23.377227783203129 121 23.406888982785045
		 122 23.426603232601096 123 23.318391371395602 124 23.116479410077943 125 23.076093676795459
		 126 23.117799699477647 127 23.055385160535124 128 22.987585418341965 129 22.948986239114088
		 130 22.922897433820832 131 22.908380561530571 132 22.895139629566238 133 22.955165782495698
		 134 22.979332079670765 135 22.697725296020511 136 22.379873275756836;
createNode animCurveTA -n "Pelvis_Root_M_JNT1_rotateZ";
	rename -uid "7B8AC32F-4995-4361-38A5-1697B3CC1461";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.42177507281303395 1 0.58733910322189331
		 2 0.68926644325256337 3 0.75728714466094971 4 0.86479287677957628 5 0.81953579173770019
		 6 0.86607462167739879 7 1.071932315826416 8 1.4456213649142948 9 2.2233470927632033
		 10 3.0106306647955221 11 3.9283404639894215 12 4.9812043349191981 13 5.5730084905450292
		 14 5.4210042953491229 15 5.0337285995483407 16 4.8170797193599517 17 4.6214403577441256
		 18 4.3196799180369654 19 4.0539941347203925 20 3.9052424991417776 21 3.8781993529893057
		 22 3.9714574252355401 23 4.142323123232095 24 4.4706067330270818 25 4.4756807624692012
		 26 4.2648059095013755 27 3.386805729820173 28 1.887038457028626 29 0.1378286381576776
		 30 -1.4658381938934328 31 -2.2204112839378563 32 -1.9872726559726583 33 -1.6175841299195253
		 34 -1.548789726642237 35 -1.4955948299383783 36 -1.3161079766867401 37 -0.8704106513966775
		 38 0.50837752216545551 39 1.7928968707769766 40 2.7567710142178545 41 7.5156502457978416
		 42 7.9741749882128081 43 -134.18616341370381 44 -148.36112012452412 45 -159.99462890625
		 46 -167.207660088616 47 -167.58752423119904 48 -167.42271392409694 49 -168.55749549183759
		 50 -170.94742087071046 51 -172.724958499965 52 -173.40315221852657 53 -173.88822966334965
		 54 -174.78251822829159 55 -176.2386147092727 56 -178.28556785614757 57 -179.82453992748785
		 58 -180.61535789023978 59 -181.52377275499327 60 -181.6463928222656 61 -182.69836574480775
		 62 -185.14380222379566 63 -186.24797133597789 64 -185.69014279119733 65 -184.47180446165129
		 66 -183.37762572733783 67 -182.83801271772077 68 -183.27221713502442 69 -184.42866647954295
		 70 -185.04415956165084 71 -184.96415649141497 72 -184.68367079871092 73 -184.4179386531973
		 74 -184.2438203510298 75 -184.04020690917969 76 -183.85763538973015 77 -183.78544612533244
		 78 -183.81408704350045 79 -183.87911941157489 80 -184.08543333128489 81 -184.41680864973219
		 82 -184.66644280039847 83 -184.74935915646262 84 -184.78688057468071 85 -184.85891736565659
		 86 -184.89749142866003 87 -184.84338402780304 88 -184.72471645163537 89 -184.56625377583683
		 90 -184.45722961425778 91 -184.46839906821609 92 -184.50512703682449 93 -184.55589319545371
		 94 -184.68685860803961 95 -184.86331122425295 96 -185.15154979905586 97 -185.52712999029208
		 98 -185.79440317329426 99 -185.98399381940735 100 -186.18299910201711 101 -186.36441094978295
		 102 -186.50604207760585 103 -186.65595975206318 104 -186.85198962619654 105 -186.93795776367188
		 106 -186.93052674568594 107 -186.96685794464909 108 -186.96658313307734 109 -186.88082902864298
		 110 -186.86590571775901 111 -186.91842646840618 112 -186.92674256098351 113 -186.88421627956828
		 114 -186.79020677007932 115 -186.69726542311295 116 -186.61753811803877 117 -186.50080911206254
		 118 -186.33078037635678 119 -186.13801588291392 120 -186.01127624511716 121 -185.97096248730506
		 122 -185.92399579956538 123 -185.79104572708343 124 -185.62330571432508 125 -185.49830569026869
		 126 -185.37350387508366 127 -185.23223790660248 128 -185.11161871059608 129 -185.02932777877314
		 130 -184.97705105863909 131 -184.91070580530209 132 -184.85218812842186 133 -184.89762879190096
		 134 -184.84411646890305 135 -184.29089355468747 136 -183.7624816894531;
createNode animCurveTA -n "Leg_Hip_R_JNT1_rotateX";
	rename -uid "88A79F57-4621-B0BD-B155-94961A75BAEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -14.307984352111818 1 -11.174675941467287
		 2 -8.7497329711914063 3 -6.2489833831787127 4 -3.468583345413208 5 -0.63968628644943248
		 6 1.9191660881042487 7 4.0424818992614737 8 5.5757756233215332 9 6.4728832244873038
		 10 6.4424219131469727 11 4.1141781806945801 12 -1.154610276222229 13 -7.3280076980590803
		 14 -12.651902198791504 15 -17.260173797607422 16 -21.582084655761722 17 -25.504213333129901
		 18 -29.189880371093743 19 -32.446510314941406 20 -34.842067718505859 21 -36.285652160644524
		 22 -36.416843414306634 23 -34.405483245849602 24 -32.906929016113288 25 -36.643413543701179
		 26 -39.571998596191392 27 -40.245780944824212 28 -39.612480163574219 29 -37.690010070800774
		 30 -35.000740051269538 31 -32.212348937988295 32 -29.658908843994148 33 -26.744205474853519
		 34 -23.238906860351555 35 -20.070339202880863 36 -17.370307922363278 37 -15.168804168701174
		 38 -14.616185188293462 39 -18.809818267822269 40 -27.610382080078129 41 -38.866264343261719
		 42 -45.759181976318381 43 -46.612880706787124 44 -47.740085601806648 45 -52.339839935302741
		 46 -51.160308837890632 47 -45.291137695312507 48 -39.528450012207031 49 -34.73091125488282
		 50 -30.359325408935547 51 -25.187734603881832 52 -18.805871963500977 53 -11.879037857055666
		 54 -5.6962938308715811 55 -0.78358507156372215 56 1.9611985683441169 57 2.7161867618560813
		 58 1.3973013162612924 59 -4.1424689292907706 60 -16.860984802246104 61 -33.926212310791016
		 62 -45.671504974365241 63 -51.782436370849609 64 -55.34539794921875 65 -58.486019134521477
		 66 -62.094535827636712 67 -64.326858520507813 68 -63.814128875732415 69 -61.41917800903321
		 70 -58.273223876953104 71 -54.761634826660163 72 -51.174358367919922 73 -47.816253662109382
		 74 -44.674026489257805 75 -41.303760528564453 76 -37.862052917480469 77 -34.415794372558572
		 78 -30.842113494873043 79 -27.116662979125969 80 -23.249917984008786 81 -19.353662490844734
		 82 -15.593014717102051 83 -12.283640861511234 84 -9.6741399765014648 85 -7.7622666358947754
		 86 -6.5054006576538086 87 -5.7930760383605939 88 -5.4186849594116202 89 -5.2735404968261719
		 90 -5.4294433593749991 91 -5.9584846496582031 92 -6.7317790985107413 93 -7.47933101654053
		 94 -7.9732141494750977 95 -8.1579294204711896 96 -8.2386140823364276 97 -8.454872131347658
		 98 -8.8313093185424822 99 -9.2373151779174805 100 -9.5518074035644513 101 -9.6121616363525373
		 102 -9.465641975402832 103 -9.1859798431396502 104 -8.7370700836181641 105 -8.071467399597168
		 106 -7.4177465438842782 107 -6.9572067260742188 108 -6.5341901779174778 109 -6.0419001579284668
		 110 -5.6140170097351083 111 -5.2101893424987802 112 -4.823306083679201 113 -4.5995678901672363
		 114 -4.6276006698608416 115 -4.8166556358337393 116 -4.9542574882507315 117 -5.0083031654357919
		 118 -5.0518426895141584 119 -5.1205902099609366 120 -5.2843313217163086 121 -5.6289038658142063
		 122 -6.2627339363098153 123 -6.7343788146972647 124 -7.0332231521606445 125 -7.5797667503356907
		 126 -8.057835578918457 127 -8.2506237030029315 128 -8.4402227401733363 129 -8.6587753295898455
		 130 -8.8598146438598633 131 -9.0295257568359375 132 -9.2035999298095721 133 -9.6478643417358398
		 134 -9.9398679733276349 135 -9.1499052047729492 136 -8.2205591201782244;
createNode animCurveTA -n "Leg_Hip_R_JNT1_rotateY";
	rename -uid "E43F4D4D-4CAD-93B9-478B-5D91BC95B7AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -20.169742584228516 1 -19.986358642578121
		 2 -19.68110466003418 3 -19.189594268798828 4 -19.155256271362308 5 -19.614355087280277
		 6 -20.248550415039066 7 -20.992609024047852 8 -21.389854431152344 9 -21.963689804077145
		 10 -22.6218376159668 11 -20.847635269165039 12 -16.8012809753418 13 -13.63397216796875
		 14 -11.972862243652342 15 -11.423748970031737 16 -12.263854980468754 17 -14.31549644470215
		 18 -16.468158721923825 19 -17.902637481689453 20 -19.076082229614254 21 -21.075893402099609
		 22 -23.634109497070316 23 -25.379631042480462 24 -25.541538238525387 25 -24.43690490722657
		 26 -23.613750457763668 27 -25.25890922546386 28 -26.627531051635739 29 -25.756206512451165
		 30 -25.157331466674801 31 -24.203054428100589 32 -22.017406463623054 33 -21.142925262451172
		 34 -20.999370574951172 35 -19.614439010620117 36 -16.411230087280273 37 -13.817050933837891
		 38 -13.812574386596681 39 -14.25513744354248 40 -14.442402839660646 41 -15.266171455383299
		 42 -17.721494674682621 43 -22.508880615234382 44 -28.388664245605465 45 -32.030548095703125
		 46 -30.9199104309082 47 -29.034322738647461 48 -29.632457733154286 49 -29.826288223266598
		 50 -26.626836776733398 51 -23.192398071289066 52 -23.221313476562504 53 -24.241605758666996
		 54 -24.420530319213864 55 -25.369762420654297 56 -26.657077789306644 57 -28.205598831176758
		 58 -31.151025772094727 59 -36.202526092529304 60 -37.993175506591804 61 -30.25573921203614
		 62 -25.751729965209961 63 -26.326213836669925 64 -24.091993331909183 65 -21.928478240966797
		 66 -22.897893905639652 67 -23.08237457275391 68 -22.136037826538089 69 -21.956819534301761
		 70 -22.317716598510746 71 -22.627521514892582 72 -22.925983428955078 73 -23.760894775390632
		 74 -25.246229171752937 75 -26.896394729614261 76 -28.16325759887696 77 -28.944805145263665
		 78 -29.363342285156246 79 -29.583629608154297 80 -29.81864929199218 81 -29.763414382934585
		 82 -29.268587112426758 83 -28.555147171020511 84 -27.818687438964844 85 -27.098018646240224
		 86 -26.564174652099609 87 -26.579538345336903 88 -27.12165641784668 89 -27.704454421997077
		 90 -27.895698547363281 91 -28.059923171997067 92 -28.513143539428707 93 -29.234861373901374
		 94 -29.913167953491211 95 -30.221832275390632 96 -30.148342132568359 97 -30.031391143798839
		 98 -30.168266296386712 99 -30.53099250793457 100 -30.837188720703129 101 -30.837408065795902
		 102 -30.655113220214847 103 -30.367101669311527 104 -29.891452789306641 105 -29.644672393798835
		 106 -29.421243667602532 107 -28.953891754150384 108 -28.501562118530263 109 -28.259031295776374
		 110 -27.861936569213867 111 -27.289781570434574 112 -26.907100677490241 113 -26.695726394653317
		 114 -26.568740844726566 115 -26.519632339477532 116 -26.444522857666019 117 -26.293844223022468
		 118 -26.070299148559567 119 -25.736068725585941 120 -25.511575698852539 121 -26.341655731201172
		 122 -28.187572479248047 123 -29.034883499145511 124 -28.870046615600586 125 -28.616085052490231
		 126 -28.42631912231446 127 -28.254415512084972 128 -28.096176147460941 129 -27.976949691772461
		 130 -27.716001510620121 131 -27.242143630981449 132 -26.932153701782227 133 -26.867382049560547
		 134 -26.862859725952152 135 -27.070507049560554 136 -27.291812896728523;
createNode animCurveTA -n "Leg_Hip_R_JNT1_rotateZ";
	rename -uid "077DF698-4329-4B30-D90C-5E90A965216C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 6.3290982246398926 1 4.1301121711730939
		 2 2.2287459373474117 3 0.80272799730300914 4 -0.58767521381378174 5 -2.2632660865783696
		 6 -4.1053462028503427 7 -5.9620714187622061 8 -7.7904844284057617 9 -9.3831853866577131
		 10 -11.726030349731449 11 -13.32597541809082 12 -13.196928024291992 13 -12.118005752563477
		 14 -9.7378015518188459 15 -6.8619222640991211 16 -4.4086565971374538 17 -2.1541180610656738
		 18 0.17030243575573034 19 2.5779061317443848 20 5.3790755271911594 21 8.8969516754150391
		 22 12.265663146972658 23 12.173447608947754 24 9.8398113250732457 25 10.270443916320808
		 26 12.795482635498043 27 13.82742881774902 28 13.289768218994144 29 13.270607948303217
		 30 13.573233604431151 31 12.637166023254396 32 10.905849456787113 33 9.9239511489868164
		 34 9.3014287948608398 35 8.3058691024780273 36 6.5989837646484375 37 3.6731653213500977
		 38 -0.93753302097320579 39 -3.3887729644775391 40 -4.1644229888916025 41 -4.3803296089172372
		 42 1.8569790124893197 43 14.109134674072269 44 22.585004806518558 45 20.39679145812989
		 46 10.877819061279299 47 3.0126848220825218 48 -2.9457666873931889 49 -9.5068178176879865
		 50 -16.44427490234375 51 -20.511796951293945 52 -22.109664916992188 53 -22.745958328247067
		 54 -22.527963638305664 55 -22.090076446533196 56 -21.175432205200195 57 -18.722671508789066
		 58 -15.591229438781738 59 -13.226166725158695 60 -8.4941539764404297 61 -3.9683816432952921
		 62 -3.0626578330993639 63 -0.5512170791625961 64 2.0346033573150635 65 5.1673331260681152
		 66 10.115747451782228 67 13.079110145568849 68 12.368206977844237 69 10.084055900573734
		 70 8.2317132949829102 71 6.9853215217590359 72 6.0358514785766593 73 5.452228546142579
		 74 5.0639262199401864 75 4.6161718368530309 76 3.9079036712646484 77 2.8507072925567583
		 78 1.4839842319488492 79 -0.066525615751743747 80 -1.8824427127838141 81 -3.8735651969909659
		 82 -5.6781263351440421 83 -6.985590457916258 84 -7.8212995529174822 85 -8.3198614120483381
		 86 -8.4857845306396502 87 -8.4147987365722638 88 -8.1992015838623047 89 -7.8260622024536151
		 90 -7.3682174682617196 91 -7.0289134979248038 92 -6.7630500793457031 93 -6.5923132896423366
		 94 -6.6263861656188983 95 -6.7900395393371573 96 -7.1083321571350115 97 -7.5231451988220224
		 98 -7.8417391777038592 99 -8.1174774169921893 100 -8.4471158981323242 101 -8.8310823440551776
		 102 -9.2333745956420863 103 -9.7000732421875 104 -10.35179615020752 105 -10.942755699157718
		 106 -11.357056617736818 107 -11.712054252624512 108 -11.985848426818846 109 -12.197333335876468
		 110 -12.562514305114746 111 -13.024558067321779 112 -13.504690170288088 113 -13.798505783081053
		 114 -13.803776741027836 115 -13.720396995544432 116 -13.707339286804203 117 -13.68256759643555
		 118 -13.518259048461911 119 -13.298176765441893 120 -13.198159217834476 121 -12.91372776031494
		 122 -12.148849487304688 123 -11.591493606567385 124 -11.306407928466797 125 -10.814315795898439
		 126 -10.379631042480471 127 -10.174337387084963 128 -10.015083312988283 129 -9.9297151565551758
		 130 -9.9336700439453107 131 -9.9307985305786151 132 -9.8887195587158221 133 -9.7980003356933629
		 134 -9.6349382400512731 135 -9.2376413345336914 136 -8.926177978515625;
createNode animCurveTA -n "Clav_Clav_R_JNT1_rotateX";
	rename -uid "C9FB3917-4B9F-E5FC-0AAC-10989FA7774E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1.7226957082748418 1 1.7350234985351563
		 2 1.7174793481826782 3 1.7101074457168581 4 1.74128794670105 5 1.7603927850723269
		 6 1.7356582880020146 7 1.6900328397750857 8 1.6609803438186648 9 1.7030124664306641
		 10 1.74543309211731 11 1.7310018539428715 12 1.712871909141541 13 1.7205893993377688
		 14 1.7406077384948733 15 1.770649313926697 16 1.7981582880020137 17 1.8197463750839229
		 18 1.8758505582809448 19 1.9414324760437021 20 1.9506186246871946 21 1.9170117378234861
		 22 1.8874820470809939 23 1.883078455924988 24 1.8832615613937385 25 1.863562345504761
		 26 1.8405004739761355 27 1.8153591156005862 28 1.780169606208801 29 1.7860291004180913
		 30 1.8311073780059812 31 1.8515192270278933 32 1.8308305740356448 33 1.7162760496139529
		 34 1.4905358552932739 35 1.3918579816818242 36 1.5751409530639648 37 1.6667783260345459
		 38 1.5790624618530276 39 1.5481253862380981 40 1.5494927167892456 41 1.3022946119308474
		 42 0.82322072982788086 43 0.89825731515884433 44 1.2277700901031494 45 1.5092557668685915
		 46 1.6064020395278935 47 1.4710707664489746 48 1.2672833204269409 49 0.99357247352600075
		 50 0.38921728730201727 51 0.0025321368593722608 52 -0.093886032700538663 53 -0.18238352239131919
		 54 -0.25581923127174377 55 -0.25923758745193481 56 -0.12261795252561569 57 0.13255903124809268
		 58 0.50234246253967296 59 0.91451370716094993 60 1.2194950580596922 61 1.3841285705566404
		 62 1.464448213577271 63 1.3776994943618774 64 1.4370334148406982 65 1.6183295249938967
		 66 1.7452309131622314 67 1.8762201070785525 68 1.97105872631073 69 1.9705114364624021
		 70 1.9548320770263672 71 1.9987970590591433 72 2.0135774612426758 73 1.9741494655609131
		 74 1.9193247556686401 75 1.8550547361373908 76 1.8108265399932864 77 1.7865443229675293
		 78 1.7486553192138674 79 1.6859906911849978 80 1.6358662843704221 81 1.6178165674209599
		 82 1.6945511102676398 83 1.8041670322418211 84 1.8179552555084231 85 1.8193764686584473
		 86 1.8626339435577393 87 1.8866117000579836 88 1.8484976291656494 89 1.8127318620681765
		 90 1.8077439069747923 91 1.7921664714813237 92 1.7826200723648071 93 1.7793698310852049
		 94 1.7631309032440179 95 1.76396656036377 96 1.7816592454910278 97 1.7685923576354987
		 98 1.7620126008987425 99 1.7772942781448369 100 1.7656348943710325 101 1.7256968021392822
		 102 1.7018463611602785 103 1.6942913532257082 104 1.7071043252944951 105 1.7870997190475464
		 106 1.9045119285583501 107 1.9496260881423952 108 1.9370229244232176 109 1.9479110240936284
		 110 1.977437376976013 111 1.9983677864074709 112 2.0202317237854004 113 2.0611686706542969
		 114 2.0911610126495357 115 2.0962886810302734 116 2.0983588695526127 117 2.1083171367645259
		 118 2.11637282371521 119 2.1151220798492432 120 2.0944671630859375 121 2.0573775768280029
		 122 2.0432705879211435 123 2.0437579154968262 124 2.0412633419036865 125 2.032084703445435
		 126 2.0054295063018799 127 1.9573141336441036 128 1.9301257133483889 129 1.9372614622116096
		 130 1.939086318016052 131 1.9473257064819331 132 1.9772306680679326 133 1.9982358217239384
		 134 1.9997940063476569 135 2.012509822845459 136 2.0229611396789555;
createNode animCurveTA -n "Clav_Clav_R_JNT1_rotateY";
	rename -uid "198767BF-4F08-BC7F-6A0A-E2A6722CB86F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.95082920789718617 1 0.95884442329406727
		 2 0.96316874027252197 3 0.94835561513900779 4 0.91588443517684925 5 0.92591714859008756
		 6 1.0048789978027344 7 1.0757414102554319 8 1.0677495002746582 9 1.0510073900222776
		 10 1.081906795501709 11 1.1224297285079958 12 1.179706811904907 13 1.3177453279495241
		 14 1.4410130977630617 15 1.4383363723754885 16 1.4513111114501953 17 1.5747030973434446
		 18 1.7024351358413694 19 1.760333299636841 20 1.7406125068664551 21 1.6163185834884641
		 22 1.611859202384949 23 1.6665623188018801 24 1.609812378883362 25 1.5583010911941531
		 26 1.5486069917678837 27 1.5392062664031987 28 1.5243039131164551 29 1.484587550163269
		 30 1.4019795656204221 31 1.3146111965179446 32 1.2632074356079099 33 1.1873451471328735
		 34 0.84316349029541005 35 0.71498113870620728 36 1.4438499212265015 37 2.1126337051391597
		 38 2.4776499271392831 39 3.763859748840332 40 5.7384905815124512 41 7.214908599853513
		 42 7.2146306037902841 43 6.168248176574707 44 5.4265718460083017 45 4.5999021530151367
		 46 3.5913405418395996 47 2.7339580059051514 48 1.9344701766967769 49 0.94566398859024048
		 50 -0.97517263889312733 51 -3.4800729751586914 52 -5.416750431060791 53 -7.0455513000488272
		 54 -7.2567629814147958 55 -6.1368365287780779 56 -4.5412774085998526 57 -2.5098538398742676
		 58 -0.8934171199798584 59 -0.17238777875900277 60 0.23335212469100952 61 0.84459906816482555
		 62 1.901801586151123 63 2.4208190441131592 64 2.2718420028686523 65 2.1399857997894287
		 66 2.3832027912139897 67 2.7852365970611581 68 3.0483567714691175 69 3.2189381122589116
		 70 3.310299396514893 71 3.3989946842193612 72 3.4337735176086421 73 3.2418916225433354
		 74 3.0650448799133314 75 3.0744159221649179 76 3.0093839168548593 77 2.871012926101685
		 78 2.7834289073944096 79 2.5609760284423828 80 2.2494275569915763 81 2.0164370536804199
		 82 1.8825963735580442 83 1.7655110359191895 84 1.6838240623474117 85 1.7436517477035518
		 86 1.8200750350952153 87 1.7689648866653442 88 1.6639145612716668 89 1.5445060729980467
		 90 1.4533933401107788 91 1.3861041069030762 92 1.3033519983291626 93 1.264617919921875
		 94 1.2713344097137449 95 1.2599239349365232 96 1.2367773056030276 97 1.2613921165466311
		 98 1.3149278163909912 99 1.3244731426239014 100 1.2957772016525269 101 1.2154183387756348
		 102 1.1878724098205566 103 1.2081069946289065 104 1.2005935907363892 105 1.2445818185806272
		 106 1.2953124046325684 107 1.2989974021911621 108 1.3248975276947024 109 1.3651789426803589
		 110 1.375612616539001 111 1.3843835592269895 112 1.4231657981872563 113 1.4241979122161865
		 114 1.4216544628143313 115 1.4758031368255617 116 1.5177361965179443 117 1.518975973129272
		 118 1.5051547288894656 119 1.5192729234695437 120 1.6664658784866326 121 1.9032386541366573
		 122 2.0125808715820313 123 1.9896854162216189 124 1.9158833026885993 125 1.8529523611068726
		 126 1.8227142095565798 127 1.7847932577133181 128 1.7321195602416988 129 1.7082036733627322
		 130 1.6879465579986574 131 1.6547474861145022 132 1.6353935003280644 133 1.6419316530227668
		 134 1.6394389867782597 135 1.6182662248611452 136 1.6416209936141972;
createNode animCurveTA -n "Clav_Clav_R_JNT1_rotateZ";
	rename -uid "AD7CDA2D-4E28-CFE3-4580-6DB583363DA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 10.392890930175783 1 10.47330951690674
		 2 10.304648399353029 3 10.29065990447998 4 10.678570747375488 5 10.811050415039064
		 6 10.32101535797119 7 9.6902294158935547 8 9.4640083312988317 9 9.8833017349243164
		 10 10.146816253662109 11 9.8906488418579084 12 9.553652763366701 13 9.1946573257446325
		 14 8.9959907531738299 15 9.2463893890380877 16 9.4293642044067383 17 9.2429704666137678
		 18 9.31732177734375 19 9.6520280838012713 20 9.7766695022583008 21 9.8784551620483398
		 22 9.6636791229248047 23 9.4733829498290998 24 9.6370115280151385 25 9.6332664489746076
		 26 9.4808197021484375 27 9.3101062774658239 28 9.0742292404174805 29 9.2350196838378924
		 30 9.8417367935180646 31 10.278104782104492 32 10.272812843322752 33 9.5584774017333984
		 34 8.6568336486816388 35 8.1381502151489258 36 7.6358876228332537 37 6.73032522201538
		 38 5.358942985534668 39 3.1839292049407959 40 1.2252669334411621 41 -0.78551620244979858
		 42 -2.7617793083190918 43 -2.0582675933837891 44 -0.094587281346321134 45 2.0289940834045415
		 46 3.7569165229797368 47 4.1652903556823739 48 4.0570750236511222 49 3.6616396903991699
		 50 0.68782323598861705 51 -2.9339451789855957 52 -3.9357857704162593 53 -3.8527491092681871
		 54 -3.1406230926513667 55 -1.8650064468383789 56 -1.1248027086257932 57 -0.079467087984085111
		 58 2.3994932174682622 59 5.8956699371337908 60 8.0201930999755859 61 7.6578278541564924
		 62 5.6595935821533203 63 4.0289759635925302 64 4.7222537994384757 65 6.3148298263549805
		 66 6.7115664482116699 67 6.7814373970031756 68 6.8799376487731951 69 6.5597229003906259
		 70 6.3010406494140634 71 6.4110302925109872 72 6.4385881423950186 73 6.5405707359313974
		 74 6.5235633850097665 75 6.1016354560852069 76 5.9372825622558603 77 6.031683921813964
		 78 5.9446892738342294 79 5.9427499771118173 80 6.2122573852539063 81 6.5793571472167995
		 82 7.4682769775390643 83 8.5988636016845685 84 8.9244956970214844 85 8.7733087539672834
		 86 8.8969240188598651 87 9.2154741287231445 88 9.2150678634643555 89 9.2742547988891602
		 90 9.5001220703125 91 9.5755729675292969 92 9.7502622604370117 93 9.8440666198730469
		 94 9.6886253356933576 95 9.7310829162597656 96 9.9508275985717773 97 9.7648983001708984
		 98 9.5452165603637695 99 9.6415834426879901 100 9.6337823867797852 101 9.5502605438232422
		 102 9.4348783493041992 103 9.3081579208374059 104 9.4397201538085938 105 9.9712495803833008
		 106 10.769950866699219 107 11.121475219726561 108 10.935264587402342 109 10.891443252563477
		 110 11.091769218444821 111 11.228302955627441 112 11.273381233215336 113 11.588444709777832
		 114 11.828907012939455 115 11.689753532409672 116 11.569349288940431 117 11.641084671020508
		 118 11.747122764587404 119 11.691779136657711 120 11.072646141052243 121 10.107448577880859
		 122 9.7066717147827148 123 9.7717847824096715 124 9.9554681777954119 125 10.064102172851561
		 126 9.9531946182250994 127 9.7024288177490234 128 9.6462316513061523 129 9.7679958343505877
		 130 9.8397893905639684 131 9.9984998703002965 132 10.28313159942627 133 10.423226356506351
		 134 10.442505836486818 135 10.602616310119629 136 10.611320495605472;
createNode animCurveTA -n "Arm_Wrist_L_JNT1_rotateX";
	rename -uid "3E896AE6-434D-8823-D559-14B7076C9D41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -47.698909759521477 1 -48.478637695312493
		 2 -48.604793548583991 3 -49.635784149169922 4 -50.639972686767571 5 -51.089736938476555
		 6 -50.384387969970696 7 -49.022666931152337 8 -47.755054473876953 9 -47.082538604736335
		 10 -47.26799392700196 11 -47.828063964843743 12 -48.105167388916016 13 -49.186473846435554
		 14 -50.478443145751953 15 -46.345184326171889 16 -42.094470977783203 17 -46.360813140869148
		 18 -44.784202575683594 19 -39.486598968505859 20 -36.559700012207038 21 -35.508262634277337
		 22 -35.216487884521491 23 -35.355548858642578 24 -35.633522033691406 25 -35.638301849365234
		 26 -34.198574066162109 27 -33.11474609375 28 -33.884372711181641 29 -34.891136169433594
		 30 -37.283294677734375 31 -40.712734222412116 32 -42.464855194091804 33 -42.258678436279297
		 34 -42.654331207275391 35 -44.807582855224616 36 -48.66780090332032 37 -56.435459136962898
		 38 -69.700553894042983 39 -74.352180480957017 40 -41.481475830078125 41 -43.481285095214844
		 42 -61.807189941406264 43 -83.023727416992202 44 -99.423591613769517 45 -103.55283355712891
		 46 -101.89058685302734 47 -91.886199951171889 48 -69.446327209472656 49 -48.867958068847656
		 50 -47.76465606689451 51 -45.956123352050788 52 -43.108535766601577 53 -48.294891357421896
		 54 -53.679656982421868 55 -53.699996948242202 56 -46.998245239257813 57 -37.186710357666023
		 58 -28.703182220458984 59 -25.222888946533203 60 -24.774639129638679 61 -24.953344345092766
		 62 -23.648653030395511 63 -20.316699981689457 64 -15.000811576843262 65 -15.031615257263189
		 66 -22.475933074951172 67 -29.104892730712891 68 -29.389572143554702 69 -27.081268310546875
		 70 -26.24495887756348 71 -26.067146301269528 72 -23.038515090942386 73 -16.085275650024418
		 74 -10.28165340423584 75 -10.621753692626953 76 -14.27404880523682 77 -14.514904975891113
		 78 -14.07378578186035 79 -19.862066268920895 80 -30.238063812255863 81 -33.879276275634766
		 82 -31.624185562133778 83 -48.447845458984382 84 -62.5072021484375 85 -66.009735107421861
		 86 -67.417671203613267 87 -68.192283630371108 88 -67.112777709960909 89 -65.908554077148452
		 90 -66.551856994628906 91 -69.148193359375 92 -70.841506958007827 93 -69.45377349853517
		 94 -69.951286315917983 95 -73.49566650390625 96 -74.147163391113281 97 -72.189483642578139
		 98 -71.680442810058594 99 -72.677421569824205 100 -72.347648620605469 101 -72.871520996093778
		 102 -74.986633300781264 103 -75.527519226074219 104 -69.516265869140625 105 -61.501640319824212
		 106 -58.006587982177734 107 -57.759960174560561 108 -57.784652709960923 109 -57.057304382324219
		 110 -56.351360321044936 111 -56.287300109863274 112 -56.759044647216804 113 -57.234058380126953
		 114 -57.140781402587876 115 -56.655986785888679 116 -56.77780914306642 117 -57.031455993652351
		 118 -56.988380432128928 119 -56.8984375 120 -57.577842712402351 121 -58.212848663330092
		 122 -57.764919281005852 123 -56.990837097167983 124 -55.926895141601577 125 -54.484207153320334
		 126 -54.42060852050782 127 -55.046512603759766 128 -54.304477691650405 129 -52.566150665283217
		 130 -50.918056488037116 131 -49.132717132568366 132 -47.122093200683601 133 -45.616325378417969
		 134 -44.402530670166023 135 -43.272476196289063 136 -42.240867614746094;
createNode animCurveTA -n "Arm_Wrist_L_JNT1_rotateY";
	rename -uid "3B0255C2-485B-1581-A561-DAB9192F3F93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -16.754917144775391 1 -18.000339508056641
		 2 -17.529205322265629 3 -17.4207763671875 4 -17.670282363891602 5 -18.362604141235348
		 6 -18.410928726196282 7 -16.850122451782223 8 -15.264323234558105 9 -14.525556564331056
		 10 -13.952119827270513 11 -13.640614509582521 12 -14.038681983947754 13 -13.458224296569828
		 14 -14.273916244506836 15 -22.359926223754883 16 -24.884958267211911 17 -12.216443061828612
		 18 -8.0075664520263654 19 -10.79906177520752 20 -11.036518096923828 21 -7.1217546463012695
		 22 -6.2043271064758327 23 -7.3559751510620135 24 -7.6647205352783221 25 -8.0759515762329102
		 26 -9.3278512954711932 27 -11.309525489807131 28 -12.410309791564943 29 -11.835862159729004
		 30 -10.978611946105955 31 -10.15510082244873 32 -9.4826421737670916 33 -8.9145364761352592
		 34 -7.5865221023559597 35 -5.6461544036865234 36 -5.0737733840942383 37 -5.4365935325622585
		 38 -10.449557304382326 39 -22.170352935791019 40 -20.076353073120117 41 2.8102207183837882
		 42 3.0269343852996831 43 13.266427040100101 44 31.316377639770508 45 30.690109252929684
		 46 8.9858646392822266 47 -13.379923820495609 48 -16.446010589599609 49 -19.091457366943359
		 50 -26.71990776062011 51 -26.036357879638675 52 -28.517063140869144 53 -39.002655029296889
		 54 -36.257339477539055 55 -16.714029312133789 56 -10.723671913146974 57 -14.24127769470215
		 58 -16.38137054443359 59 -17.531991958618157 60 -17.183704376220707 61 -15.04133319854736
		 62 -13.41452789306641 63 -15.584226608276369 64 -17.122114181518555 65 -14.841228485107427
		 66 -10.989414215087887 67 -6.7439947128295907 68 -5.0455446243286133 69 -8.1045455932617205
		 70 -10.206197738647464 71 -10.285914421081541 72 -10.675743103027342 73 -10.403979301452637
		 74 -11.053042411804206 75 -14.701450347900391 76 -17.832639694213867 77 -21.458612442016605
		 78 -25.459840774536133 79 -26.903474807739254 80 -27.922914505004879 81 -38.196033477783196
		 82 -46.894641876220696 83 -39.617774963378906 84 -26.834899902343746 85 -25.610366821289066
		 86 -25.889753341674808 87 -23.571456909179691 88 -22.544952392578125 89 -22.180068969726559
		 90 -21.081205368041989 91 -19.191368103027344 92 -17.174137115478519 93 -16.859073638916016
		 94 -16.173910140991214 95 -14.507717132568352 96 -14.349122047424315 97 -14.854471206665039
		 98 -14.277733802795414 99 -13.803174018859865 100 -13.203222274780272 101 -12.138470649719237
		 102 -11.879721641540524 103 -12.969364166259771 104 -14.640339851379393 105 -12.654648780822761
		 106 -9.4939670562744158 107 -7.6189441680908221 108 -5.682981014251709 109 -4.5367350578308114
		 110 -2.8136680126190194 111 0.085916131734847329 112 3.8168396949768066 113 7.0192894935607892
		 114 7.7130908966064453 115 5.4977617263793945 116 1.2056047916412356 117 -0.25735777616500827
		 118 -2.2377555370330811 119 -3.7933123111724871 120 -5.6028680801391602 121 -8.0101690292358381
		 122 -10.598363876342773 123 -12.905748367309572 124 -13.758676528930662 125 -14.024700164794925
		 126 -14.670796394348141 127 -14.684329986572271 128 -14.556108474731449 129 -15.069773674011238
		 130 -15.760302543640138 131 -16.40493202209473 132 -17.204433441162109 133 -18.028108596801761
		 134 -18.819427490234382 135 -19.343143463134766 136 -19.253189086914063;
createNode animCurveTA -n "Arm_Wrist_L_JNT1_rotateZ";
	rename -uid "F373C44D-4AFB-EB4A-489C-9BA544F02258";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1.3286174535751327 1 0.2366095036268234
		 2 0.59242910146713501 3 1.7762277126312251 4 2.0136380195617667 5 1.0966513156890865
		 6 -1.0545850992202777 7 -4.1009411811828649 8 -6.5644512176513681 9 -7.1604089736938477
		 10 -6.5647120475769052 11 -6.0595173835754386 12 -5.0471305847167987 13 -3.6528525352478032
		 14 -1.2175263166427619 15 5.6714673042297381 16 7.8995585441589364 17 1.6478072404861455
		 18 -0.94148612022399925 19 2.0947630405426025 20 2.7333133220672607 21 0.19552698731422402
		 22 -0.23638702929019856 23 0.37180429697036771 24 -0.060981132090091386 25 -1.2591838836669924
		 26 -2.9991285800933842 27 -3.5613129138946529 28 -2.9502372741699219 29 -2.9494302272796622
		 30 -2.8246300220489489 31 -1.9529482126235962 32 -0.63770896196365268 33 0.57310712337493941
		 34 1.444154620170593 35 1.9598438739776611 36 2.382396936416626 37 2.2889003753662114
		 38 5.793712615966796 39 30.168466567993171 40 24.376029968261712 41 8.9360313415527326
		 42 8.7763452529907209 43 22.366249084472663 44 25.823997497558601 45 22.980819702148434
		 46 19.201885223388672 47 9.9997692108154297 48 -1.9023351669311535 49 -13.584377288818358
		 50 -10.426332473754883 51 1.6023918390274048 52 2.7475483417510995 53 -4.7472343444824237
		 54 -1.7388468980789178 55 13.591545104980469 56 20.827980041503906 57 16.130373001098636
		 58 11.364996910095217 59 6.4610209465026864 60 4.2915968894958505 61 8.6408586502075213
		 62 12.308871269226076 63 9.3190927505493182 64 8.4150714874267578 65 14.645138740539554
		 66 20.590791702270504 67 23.120565414428711 68 24.562271118164073 69 22.221256256103516
		 70 16.576292037963867 71 13.653256416320801 72 13.87936210632324 73 11.578892707824711
		 74 6.3441452980041513 75 1.8729875087738035 76 -3.2500386238098153 77 -11.466826438903807
		 78 -16.440206527709961 79 -13.020513534545898 80 -8.3256416320800763 81 -15.299835205078125
		 82 -23.912242889404304 83 -11.829511642456053 84 -3.7361056804656991 85 -2.6632792949676531
		 86 0.050858620554206042 87 2.9591684341430673 88 3.9440226554870583 89 4.9697270393371573
		 90 6.4990458488464364 91 7.7887907028198216 92 9.5185708999633807 93 11.168590545654297
		 94 11.37686347961426 95 11.007246971130371 96 10.998064994812013 97 11.554697036743166
		 98 12.939019203186039 99 14.79768085479736 100 14.579550743103029 101 16.628007888793945
		 102 22.232526779174808 103 26.599126815795902 104 21.165512084960938 105 9.7593088150024414
		 106 3.7897894382476811 107 3.448033809661867 108 5.1549510955810547 109 6.3964977264404315
		 110 6.8493628501892081 111 7.3480505943298331 112 8.1012392044067383 113 8.7155227661132795
		 114 9.023399353027342 115 9.1533517837524414 116 7.2820715904235831 117 7.2406558990478525
		 118 6.8008203506469735 119 6.691418170928956 120 5.9709362983703604 121 4.1295366287231445
		 122 2.6611690521240225 123 1.9472293853759775 124 1.3506472110748291 125 0.96331119537353593
		 126 1.7197122573852537 127 2.7903366088867201 128 3.0902049541473384 129 2.8629701137542747
		 130 2.4326446056365958 131 1.6005288362503063 132 0.46628248691558838 133 -0.63461720943450917
		 134 -1.807593822479246 135 -2.7057795524597155 136 -3.3028438091278076;
createNode animCurveTA -n "Leg_Knee_L_JNT1_rotateX";
	rename -uid "A91097E7-4E66-7FA2-F81F-4F89BB5CFF47";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 50.742500305175788 1 41.931037902832038
		 2 30.898412704467766 3 18.690319061279304 4 7.6014971733093279 5 1.0453646183013918
		 6 1.0583516359329224 7 6.3316473960876474 8 16.329080581665039 9 21.949331283569336
		 10 27.821701049804695 11 30.264884948730472 12 30.43923187255859 13 30.496067047119137
		 14 29.864648818969727 15 28.254083633422848 16 26.105268478393548 17 23.873517990112308
		 18 21.789142608642578 19 19.79305458068848 20 17.961410522460941 21 16.080596923828129
		 22 13.613574028015138 23 12.966567039489748 24 16.105255126953125 25 19.056413650512695
		 26 23.073467254638683 27 29.456508636474616 28 38.590663909912109 29 49.459030151367202
		 30 59.534553527832031 31 67.116249084472656 32 71.118888854980455 33 71.131340026855483
		 34 67.842590332031264 35 61.688220977783224 36 53.000453948974595 37 42.512947082519524
		 38 33.882236480712905 39 32.069488525390618 40 34.860340118408203 41 39.342182159423835
		 42 41.511264801025391 43 40.00044250488282 44 38.595794677734375 45 39.731826782226563
		 46 39.632789611816413 47 36.070690155029297 48 32.277683258056648 49 29.929620742797855
		 50 29.331838607788089 51 28.752801895141605 52 27.072870254516605 53 24.510917663574219
		 54 22.332574844360359 55 21.84703254699707 56 25.983345031738281 57 31.279167175292965
		 58 35.137687683105476 59 38.725105285644524 60 40.732074737548828 61 41.166110992431648
		 62 39.186870574951179 63 34.643909454345696 64 30.878561019897464 65 28.940608978271491
		 66 28.510395050048835 67 27.613399505615238 68 25.665266036987315 69 24.656448364257809
		 70 25.120302200317386 71 25.748121261596676 72 25.971683502197269 73 25.497793197631839
		 74 24.553676605224613 75 23.357860565185554 76 22.103921890258793 77 20.783004760742188
		 78 19.402441024780277 79 18.118982315063469 80 16.994394302368164 81 16.104837417602539
		 82 15.379734039306642 83 14.618771553039544 84 13.849547386169434 85 13.001259803771973
		 86 11.789255142211916 87 10.240458488464357 88 8.5462350845336896 89 7.213268280029296
		 90 7.6261219978332511 91 8.645048141479494 92 9.2882480621337873 93 9.3541088104248029
		 94 9.7050352096557599 95 9.2890310287475639 96 8.2369775772094744 97 8.7502107620239258
		 98 9.9229879379272496 99 10.386002540588379 100 10.8489990234375 101 11.489515304565433
		 102 11.98000431060791 103 12.339218139648436 104 12.731388092041019 105 12.771080017089846
		 106 12.582979202270504 107 12.696525573730469 108 13.079129219055178 109 13.267572402954096
		 110 13.097754478454588 111 13.048730850219728 112 13.262545585632328 113 13.546772956848143
		 114 13.799939155578617 115 13.930822372436523 116 14.002087593078615 117 14.006852149963379
		 118 13.938673973083494 119 13.957561492919918 120 13.916335105895996 121 13.742047309875488
		 122 13.735848426818853 123 13.729612350463869 124 13.547184944152832 125 13.484184265136719
		 126 13.574105262756346 127 13.712922096252445 128 13.783375740051266 129 13.837014198303224
		 130 13.862394332885742 131 13.844437599182129 132 13.859374046325685 133 13.936896324157717
		 134 14.144437789916994 135 14.590763092041017 136 14.979780197143556;
createNode animCurveTA -n "Leg_Knee_L_JNT1_rotateY";
	rename -uid "69A551C1-4A58-94B6-24C7-DBB12007FDB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -7.5837006568908691 1 -8.63568115234375
		 2 -9.7013483047485334 3 -9.4922962188720703 4 -8.1646108627319371 5 -6.702994346618655
		 6 -5.0944032669067383 7 -3.4036805629730229 8 -3.2253720760345463 9 -3.0791251659393315
		 10 -2.4294779300689702 11 -4.2423024177551278 12 -5.9091124534606925 13 -4.6710367202758789
		 14 -2.7937479019165039 15 -1.9078626632690425 16 -2.2658116817474365 17 -2.7925815582275386
		 18 -3.8996956348419181 19 -4.9000964164733887 20 -4.7252812385559082 21 -4.0632424354553223
		 22 -4.1051573753356942 23 -5.3760919570922852 24 -7.8821010589599609 25 -9.8445377349853498
		 26 -10.399646759033205 27 -9.1407756805419922 28 -8.3201208114624041 29 -8.3194866180419922
		 30 -8.2864341735839879 31 -9.1854133605957031 32 -10.151052474975584 33 -10.426195144653324
		 34 -10.65690803527832 35 -11.776507377624512 36 -13.67640399932861 37 -13.842064857482914
		 38 -12.821697235107427 39 -11.818778038024904 40 -11.26841354370117 41 -10.943662643432619
		 42 -10.101649284362793 43 -7.9836382865905779 44 -4.883448600769043 45 -2.0923357009887695
		 46 0.63741177320480324 47 4.2909226417541504 48 6.4527101516723624 49 6.7329769134521484
		 50 6.5854158401489258 51 6.6162858009338388 52 7.1770539283752433 53 7.8624415397644043
		 54 8.2941427230834961 55 8.1819610595703143 56 6.8534326553344727 57 5.2379665374755859
		 58 3.8584387302398691 59 2.3286354541778564 60 -1.6468389034271238 61 -7.8371028900146484
		 62 -10.584830284118652 63 -8.2553148269653303 64 -6.3536658287048358 65 -6.4746665954589862
		 66 -5.8718776702880868 67 -3.9976012706756601 68 -3.183114051818849 69 -5.4039983749389631
		 70 -8.5479059219360334 71 -9.9847249984741193 72 -10.624050140380863 73 -11.25889778137207
		 74 -11.417263984680176 75 -11.358559608459476 76 -11.177798271179203 77 -10.953638076782225
		 78 -10.841277122497559 79 -10.837941169738766 80 -10.817103385925295 81 -10.713705062866211
		 82 -10.667574882507324 83 -10.725362777709961 84 -10.782810211181641 85 -10.707224845886232
		 86 -10.58361911773682 87 -10.516936302185057 88 -10.432456970214842 89 -10.317085266113281
		 90 -10.305691719055176 91 -8.4804515838623065 92 -7.8633852005004874 93 -8.7614564895629883
		 94 -9.1784763336181605 95 -8.1485099792480504 96 -6.8041095733642569 97 -5.8117809295654297
		 98 -5.0593833923339862 99 -4.6602520942687979 100 -4.3352761268615723 101 -3.7031805515289307
		 102 -3.1480815410614009 103 -2.9518508911132804 104 -2.7830231189727797 105 -2.4951791763305669
		 106 -1.824402332305908 107 -1.1884948015213015 108 -0.92687064409255981 109 -0.7252984046936034
		 110 -0.55413585901260354 111 -0.504533350467682 112 -0.22976472973823553 113 0.27033308148384094
		 114 0.69008016586303711 115 1.0450515747070313 116 1.2578620910644529 117 1.2060608863830566
		 118 1.1278443336486812 119 1.0877788066864009 120 1.1152786016464236 121 0.48626524209976191
		 122 -0.8375614881515504 123 -1.1891080141067512 124 -1.1692752838134768 125 -1.6314939260482788
		 126 -2.2340106964111324 127 -2.4861724376678467 128 -2.3778038024902344 129 -2.1459825038909912
		 130 -1.9025300741195683 131 -1.6695922613143923 132 -1.4906842708587644 133 -1.4302465915679938
		 134 -1.5965654850006101 135 -1.622133851051331 136 -1.2111926078796389;
createNode animCurveTA -n "Leg_Knee_L_JNT1_rotateZ";
	rename -uid "39855FB6-4B71-0587-9650-698056857814";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 5.4060053825378409 1 4.9240827560424805
		 2 5.1966371536254892 3 5.1795554161071795 4 3.3745477199554443 5 1.1745051145553593
		 6 1.1110693216323853 7 3.0277304649353027 8 5.5499544143676767 9 7.2312145233154297
		 10 7.1974420547485369 11 7.3998818397521955 12 8.2805051803588885 13 8.546747207641598
		 14 7.9262881278991726 15 7.2443575859069842 16 6.4246749877929679 17 5.2388134002685556
		 18 4.4334621429443359 19 3.9615664482116699 20 3.2989597320556645 21 2.7838013172149663
		 22 2.8593454360961914 23 3.4677431583404559 24 4.0548224449157715 25 5.1463665962219238
		 26 6.4394197463989276 27 6.2557959556579581 28 6.013996124267579 29 5.4712805747985858
		 30 5.4581956863403311 31 3.745195865631104 32 0.83606028556823841 33 -0.0058972090482724603
		 34 -0.072288617491721996 35 -1.3334035873413095 36 -2.2087304592132551 37 0.27798801660537747
		 38 2.9536361694335938 39 3.994230031967164 40 3.9456367492675777 41 3.6347723007202157
		 42 1.577918887138366 43 0.78883594274520974 44 2.0673303604125977 45 3.8814544677734379
		 46 6.0226230621337891 47 7.9406728744506836 48 8.2821559906005842 49 8.0745840072631836
		 50 8.4659948348999006 51 8.6152410507202131 52 7.9019045829772958 53 6.8559141159057626
		 54 6.1041941642761239 55 6.3708443641662615 56 8.5420074462890625 57 10.202911376953125
		 58 9.3992881774902362 59 8.222529411315918 60 6.7279262542724609 61 4.428694725036622
		 62 2.6205301284790048 63 2.849311351776123 64 3.9596199989318865 65 4.389550209045411
		 66 4.6456861495971697 67 4.908689022064209 68 4.1779813766479501 69 2.9955532550811763
		 70 2.7014343738555908 71 2.7317256927490225 72 2.4321639537811284 73 2.4469518661499019
		 74 2.6763823032379146 75 2.3636960983276376 76 1.8784239292144775 77 1.6595417261123655
		 78 1.703564405441284 79 2.0317463874816899 80 2.2971456050872803 81 2.236592054367065
		 82 2.3047358989715576 83 2.762449979782104 84 3.2638287544250484 85 3.3135197162628165
		 86 3.3128314018249525 87 3.7570509910583496 88 4.2787413597106916 89 4.4302315711975098
		 90 4.0487704277038565 91 3.9711351394653329 92 3.9831962585449219 93 3.8264017105102539
		 94 3.1613144874572758 95 2.2533895969390869 96 1.7199308872222903 97 1.5994999408721926
		 98 1.5031459331512453 99 1.1904333829879761 100 0.68253982067108165 101 0.13614808022975913
		 102 -0.13806276023387901 103 -0.14465770125389099 104 -0.051062118262052543 105 0.14449919760227203
		 106 0.33740308880805969 107 0.43946173787117004 108 0.46644887328147899 109 0.447959154844284
		 110 0.41719383001327509 111 0.38696259260177612 112 0.46341949701309221 113 0.63461941480636586
		 114 0.81985658407211304 115 1.0058363676071167 116 1.1535789966583252 117 1.2164794206619263
		 118 1.2496498823165891 119 1.3130602836608889 120 1.301429271697998 121 1.4558522701263426
		 122 2.234037160873414 123 2.7118878364562993 124 2.4248616695404053 125 2.3043305873870854
		 126 2.4803423881530762 127 2.577601432800293 128 2.550040721893311 129 2.5848393440246578
		 130 2.6429679393768315 131 2.6461269855499272 132 2.6420145034790039 133 2.6380999088287354
		 134 2.4886279106140137 135 2.0334446430206303 136 1.6327750682830811;
createNode animCurveTA -n "Clav_Clav_L_JNT1_rotateX";
	rename -uid "919C1429-4E36-9B7A-75A5-7BA1DFA7410E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.14892885088920602 1 0.096683681011200021
		 2 -0.025879995897412317 3 -0.07636912167072292 4 -0.025733903050422658 5 -0.024090871214866645
		 6 -0.13633207976818085 7 -0.23557502031326299 8 -0.23641215264797213 9 -0.17508858442306521
		 10 -0.056276585906743982 11 -0.017976902425289161 12 -0.076581567525863661 13 -0.1494311839342117
		 14 -0.15270368754863742 15 -0.070595689117908506 16 0.00027301860973240826 17 0.046927481889724759
		 18 0.17521241307258609 19 0.27554124593734741 20 0.24185989797115323 21 0.16182951629161835
		 22 0.051229640841484007 23 -0.0040773442015051981 24 0.028479818254709282 25 -0.0027767447754740728
		 26 -0.068755805492401054 27 -0.12096095830202097 28 -0.17322017252445224 29 -0.12051480263471603
		 30 -0.002157305134460304 31 0.054895836859941469 32 0.011084131896495824 33 -0.1075979471206665
		 34 -0.22462080419063571 35 -0.59697049856185924 36 -1.2898229360580449 37 -1.6789966821670537
		 38 -1.9271036386489873 39 -2.7843320369720463 40 -3.5438094139099117 41 -3.5705928802490234
		 42 -3.5140326023101811 43 -1.8070569038391107 44 0.17741596698760992 45 0.9377450942993163
		 46 1.0713800191879272 47 0.97829812765121471 48 0.86781698465347301 49 0.89051693677902211
		 50 1.0619763135910034 51 0.99241405725479148 52 0.80443280935287487 53 0.71269530057907116
		 54 0.73955225944519054 55 0.81391853094100952 56 0.84479117393493652 57 0.89702612161636364
		 58 0.89441269636154164 59 0.80737954378128074 60 0.73070096969604481 61 0.71158164739608765
		 62 0.73947244882583596 63 0.80944800376892101 64 0.87789750099182118 65 0.83571529388427723
		 66 0.87564629316329978 67 1.0237928628921511 68 1.1099624633789063 69 1.0905662775039675
		 70 0.90935689210891746 71 0.69257545471191406 72 0.57194507122039806 73 0.59356546401977539
		 74 0.67082089185714733 75 0.68400126695632957 76 0.62308096885681152 77 0.54929244518280029
		 78 0.45820039510726929 79 0.35899388790130621 80 0.25134763121604919 81 0.11180017143487925
		 82 0.038720831274986267 83 0.067612387239933069 84 0.047629579901695245 85 -0.02501842007040983
		 86 -0.044561561197042437 87 0.0065122949890792205 88 0.020864699035882957 89 0.0039365845732390837
		 90 -0.025853117927908911 91 -0.10387904942035683 92 -0.18058359622955328 93 -0.23341676592826843
		 94 -0.31259849667549128 95 -0.36603942513465887 96 -0.36611992120742798 97 -0.39881584048271185
		 98 -0.44449731707572931 99 -0.48302865028381353 100 -0.52024686336517334 101 -0.52693319320678722
		 102 -0.55525916814804088 103 -0.64953714609146118 104 -0.70406013727188133 105 -0.68556016683578491
		 106 -0.62568140029907227 107 -0.59446573257446289 108 -0.58662742376327504 109 -0.56249016523361206
		 110 -0.55160444974899314 111 -0.5545526146888734 112 -0.52736258506774891 113 -0.46917149424552912
		 114 -0.38583597540855408 115 -0.32412925362586992 116 -0.28381100296974182 117 -0.21656821668148038
		 118 -0.15967033803462985 119 -0.2009170800447464 120 -0.41693007946014399 121 -0.65028190612792969
		 122 -0.68672752380371083 123 -0.69503706693649314 124 -0.72763073444366466 125 -0.72933197021484408
		 126 -0.7488618493080138 127 -0.83126640319824241 128 -0.87290960550308216 129 -0.82406347990036022
		 130 -0.77513283491134632 131 -0.72265690565109264 132 -0.64151769876480114 133 -0.59631896018981956
		 134 -0.59130823612213124 135 -0.56079590320587169 136 -0.55540126562118541;
createNode animCurveTA -n "Clav_Clav_L_JNT1_rotateY";
	rename -uid "6B417BD2-4D73-1B10-A49E-E48258DF84EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 2.642074823379517 1 2.9226088523864751
		 2 3.5259237289428715 3 3.7567007541656494 4 3.5256378650665288 5 3.5171051025390629
		 6 4.003812313079834 7 4.3886189460754412 8 4.3858656883239755 9 4.1478524208068848
		 10 3.6528704166412349 11 3.4841573238372812 12 3.7367649078369132 13 4.0355715751647949
		 14 4.053046226501464 15 3.7173922061920175 16 3.4025945663452148 17 3.1803784370422368
		 18 2.5231623649597168 19 1.9505169391632076 20 2.1313939094543466 21 2.5671439170837407
		 22 3.1499323844909681 23 3.4235813617706299 24 3.2606415748596187 25 3.4177153110504159
		 26 3.7391700744628902 27 3.9675254821777335 28 4.1773986816406259 29 3.9549233913421626
		 30 3.414284467697144 31 3.1328876018524179 32 3.349951267242433 33 3.9029860496521001
		 34 4.3902716636657715 35 5.8094100952148438 36 7.9663233757019052 37 8.9572782516479474
		 38 9.5572748184204119 39 11.251566886901855 40 12.420833587646483 41 12.138414382934574
		 42 11.490226745605472 43 8.0465059280395472 44 2.8150169849395752 45 -0.75757616758346569
		 46 -2.8314547538757324 47 -3.2017934322357173 48 -2.8245244026184086 49 -3.0918986797332759
		 50 -2.5816698074340816 51 -0.74528837203979481 52 0.24863104522228241 53 0.5360538363456725
		 54 0.18430759012699124 55 -0.63950580358505238 56 -1.2253268957138062 57 -1.9749189615249638
		 58 -2.4167318344116206 59 -2.2126498222351079 60 -1.6668820381164549 61 -1.3893404006958001
		 62 -1.4252510070800781 63 -1.6209305524826054 64 -2.3482718467712402 65 -2.5691184997558594
		 66 -2.7562606334686293 67 -3.8407001495361324 68 -4.4851326942443839 69 -3.7218375205993643
		 70 -2.2623388767242436 71 -1.1802691221237183 72 -0.68000322580337536 73 -1.0721646547317505
		 74 -1.6505130529403684 75 -1.3420791625976563 76 -0.57273328304290771 77 0.18080015480518333
		 78 0.96822494268417347 79 1.634837865829468 80 2.243385791778564 81 2.9241318702697749
		 82 3.2403080463409433 83 3.1068024635314955 84 3.1942620277404781 85 3.5113320350646982
		 86 3.5963196754455562 87 3.3749046325683594 88 3.3103642463684082 89 3.3863346576690665
		 90 3.5168886184692387 91 3.8409328460693377 92 4.1456055641174316 93 4.3479537963867196
		 94 4.6344137191772452 95 4.8227930068969718 96 4.8288664817810067 97 4.9443511962890625
		 98 5.1038308143615723 99 5.2463827133178711 100 5.3880314826965323 101 5.414159297943117
		 102 5.5064368247985831 103 5.8335638046264648 104 6.0332074165344247 105 6.0292830467224148
		 106 5.9604673385620144 107 5.9339895248413095 108 5.8936238288879395 109 5.8225293159484872
		 110 5.8281660079956072 111 5.87487840652466 112 5.7928452491760263 113 5.5863866806030282
		 114 5.2520341873168928 115 4.9820489883422869 116 4.7956128120422354 117 4.4810075759887704
		 118 4.2094626426696795 119 4.4016637802124032 120 5.3149080276489258 121 6.1302957534790048
		 122 6.208765983581543 123 6.2314939498901385 124 6.3629579544067401 125 6.3744072914123562
		 126 6.4142746925353995 127 6.6250243186950701 128 6.7166552543640137 129 6.5672678947448748
		 130 6.4238376617431632 131 6.263944625854494 132 6.0103621482849112 133 5.8730421066284189
		 134 5.8631787300109854 135 5.7704491615295419 136 5.7591152191162109;
createNode animCurveTA -n "Clav_Clav_L_JNT1_rotateZ";
	rename -uid "BBA233A3-4E69-713B-ACD9-0EA58E4D5D80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -6.7435851097106951 1 -6.869213581085206
		 2 -7.1279158592224139 3 -7.2309808731079084 4 -7.1125535964965829 5 -7.1444792747497559
		 6 -7.4792842864990208 7 -7.754263401031495 8 -7.7888894081115749 9 -7.6645116806030273
		 10 -7.4488329887390128 11 -7.39986228942871 12 -7.5424556732177699 13 -7.6922507286071777
		 14 -7.662193775177002 15 -7.4304699897766096 16 -7.2164201736450204 17 -7.0800457000732422
		 18 -6.8232655525207511 19 -6.6050963401794442 20 -6.6166477203369132 21 -6.6954607963562021
		 22 -6.8917255401611337 23 -6.9747323989868173 24 -6.8273797035217276 25 -6.8169994354248065
		 26 -6.9668402671813965 27 -7.1884727478027317 28 -7.4040751457214355 29 -7.2829780578613308
		 30 -6.9882116317749032 31 -6.9094347953796396 32 -6.9796862602233904 33 -7.2112207412719727
		 34 -7.4920368194580078 35 -7.9656295776367188 36 -8.7581596374511754 37 -9.202156066894533
		 38 -9.4462518692016619 39 -10.364441871643065 40 -11.183469772338869 41 -11.505331039428711
		 42 -12.021737098693849 43 -11.057464599609371 44 -9.142824172973631 45 -7.4327845573425302
		 46 -6.2000675201416025 47 -5.6442837715148917 48 -5.4348764419555673 49 -5.3833689689636222
		 50 -6.3298215866088858 51 -7.749410152435301 52 -8.1054935455322266 53 -7.9592247009277353
		 54 -7.5308518409728986 55 -6.8780517578125 56 -6.4424419403076163 57 -6.0774030685424805
		 58 -5.7712311744689933 59 -5.5363888740539569 60 -5.5424017906188956 61 -5.6442322731018049
		 62 -5.7545065879821768 63 -5.942589759826661 64 -5.7464218139648438 65 -5.4474854469299299
		 66 -5.5012707710266131 67 -5.4885921478271502 68 -5.4787726402282706 69 -5.7645769119262704
		 70 -5.9312062263488787 71 -5.7056145668029785 72 -5.4439444541931161 73 -5.2688140869140634
		 74 -5.2732896804809579 75 -5.5420989990234384 76 -5.8363213539123553 77 -6.1576647758483878
		 78 -6.570521354675293 79 -6.9146313667297354 80 -7.2306156158447257 81 -7.6097636222839373
		 82 -7.6953544616699228 83 -7.4855093955993626 84 -7.4773931503295907 85 -7.6041388511657733
		 86 -7.5762391090393066 87 -7.4224705696105939 88 -7.3829808235168448 89 -7.4158267974853516
		 90 -7.5116839408874503 91 -7.7169756889343279 92 -7.8498339653015137 93 -7.9365615844726554
		 94 -8.0916690826416016 95 -8.1815261840820295 96 -8.1580295562744141 97 -8.2029247283935565
		 98 -8.2620124816894549 99 -8.2781677246093786 100 -8.2799339294433594 101 -8.2782354354858398
		 102 -8.3230609893798828 103 -8.3979959487915039 104 -8.4091405868530291 105 -8.2597856521606463
		 106 -7.888796329498291 107 -7.6663336753845233 108 -7.6810927391052219 109 -7.6109719276428214
		 110 -7.4961199760437003 111 -7.4253153800964373 112 -7.3405303955078107 113 -7.2064299583435067
		 114 -7.0615277290344238 115 -6.9817814826965368 116 -6.9471187591552743 117 -6.879199504852294
		 118 -6.8117599487304688 119 -6.8858351707458505 120 -7.2783246040344203 121 -7.7486910820007333
		 122 -7.8928451538085938 123 -7.9150147438049334 124 -7.9181418418884268 125 -7.9096984863281277
		 126 -7.9833202362060538 127 -8.1951532363891602 128 -8.3180961608886737 129 -8.2495336532592791
		 130 -8.1621494293212873 131 -8.0706977844238317 132 -7.9207305908203107 133 -7.8149971961975115
		 134 -7.7906107902526864 135 -7.7109951972961444 136 -7.6847338676452646;
createNode animCurveTA -n "Head_Head1_M_JNT1_rotateX";
	rename -uid "E1B50BBD-47F9-8808-15B1-AFBD3076BB53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -20.54213714599609 1 -21.621177673339844
		 2 -22.903102874755856 3 -23.665578842163086 4 -24.160005569458004 5 -24.506526947021488
		 6 -24.645326614379886 7 -24.66927528381348 8 -24.402191162109375 9 -23.91969108581544
		 10 -23.454986572265636 11 -22.457248687744148 12 -20.977506637573242 13 -20.16905403137207
		 14 -20.321262359619144 15 -20.619977951049805 16 -20.514217376708981 17 -20.465353012084961
		 18 -21.255338668823242 19 -22.546802520751957 20 -23.539773941040039 21 -24.014049530029304
		 22 -23.966320037841797 23 -23.646595001220703 24 -23.591117858886726 25 -23.684186935424805
		 26 -23.0858268737793 27 -21.810901641845703 28 -20.494787216186527 29 -19.374544143676761
		 30 -18.706705093383793 31 -19.021379470825199 32 -19.86229133605957 33 -20.203756332397461
		 34 -19.970504760742191 35 -20.134902954101563 36 -20.092193603515632 37 -19.02069091796875
		 38 -19.788938522338871 39 -24.416049957275391 40 -30.489233016967784 41 -34.639011383056648
		 42 -34.563453674316406 43 -31.291696548461911 44 -26.845230102539063 45 -20.78108024597168
		 46 -13.800539970397951 47 -8.6871395111083967 48 -6.2910323143005362 49 -5.1322894096374529
		 50 -4.355658531188964 51 -3.9509897232055664 52 -3.6453382968902583 53 -3.0558526515960693
		 54 -3.3659799098968497 55 -5.9369673728942898 56 -10.502321243286133 57 -15.573457717895501
		 58 -20.170860290527347 59 -24.653312683105458 60 -29.907930374145497 61 -36.62255859375
		 62 -44.092136383056634 63 -50.50325012207032 64 -55.303180694580092 65 -59.392032623291016
		 66 -61.709541320800781 67 -61.625396728515611 68 -60.69892883300782 69 -58.654418945312486
		 70 -53.763462066650398 71 -49.156669616699226 72 -46.254169464111321 73 -43.705997467041023
		 74 -40.964927673339837 75 -38.265155792236314 76 -35.605895996093757 77 -32.754859924316406
		 78 -29.563108444213874 79 -26.342283248901367 80 -23.101564407348636 81 -19.086137771606445
		 82 -14.111885070800779 83 -9.4433412551879865 84 -6.858980655670166 85 -6.7976202964782724
		 86 -7.8917255401611337 87 -8.7307081222534162 88 -9.2066650390625018 89 -9.7507476806640625
		 90 -10.401825904846193 91 -11.17161273956299 92 -12.385668754577638 93 -13.92517280578614
		 94 -15.246950149536133 95 -16.258821487426761 96 -17.153116226196289 97 -17.961601257324212
		 98 -18.649467468261719 99 -18.964872360229492 100 -18.981208801269535 101 -19.022628784179688
		 102 -19.223035812377933 103 -19.51142692565918 104 -19.605892181396484 105 -19.314496994018558
		 106 -18.996810913085941 107 -18.877664566040043 108 -18.768432617187496 109 -18.68735313415527
		 110 -18.600849151611332 111 -18.386362075805657 112 -18.165813446044922 113 -17.962039947509773
		 114 -17.773042678833011 115 -17.696773529052741 116 -17.782535552978526 117 -17.73209381103516
		 118 -17.46862983703614 119 -17.278009414672852 120 -17.27924919128418 121 -17.370943069458008
		 122 -17.302791595458984 123 -17.063489913940433 124 -17.036882400512702 125 -17.255508422851566
		 126 -17.22435379028321 127 -16.797397613525387 128 -16.456960678100586 129 -16.446390151977546
		 130 -16.498386383056644 131 -16.445650100708004 132 -16.385234832763675 133 -16.475622177124023
		 134 -16.609165191650394 135 -16.648859024047855 136 -16.715118408203121;
createNode animCurveTA -n "Head_Head1_M_JNT1_rotateY";
	rename -uid "59723C87-45D1-BB14-A792-6A8E46BFD7E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -0.82360243797302235 1 -0.90120851993560747
		 2 -1.0140138864517212 3 -0.99393028020858798 4 -0.90680038928985551 5 -0.74273210763931308
		 6 -0.60967320203781139 7 -0.70127040147781405 8 -0.88906413316726696 9 -1.1353050470352173
		 10 -1.5220962762832648 11 -1.7676935195922858 12 -1.5589913129806516 13 -0.81704318523406971
		 14 0.19374354183673864 15 1.0651875734329224 16 1.8582669496536253 17 2.8361103534698486
		 18 3.6570637226104723 19 4.0282311439514169 20 4.1247801780700675 21 4.2093000411987314
		 22 4.3309946060180664 23 4.3062992095947283 24 4.1272568702697754 25 3.9820141792297368
		 26 3.6928527355194101 27 2.9989864826202401 28 2.279686450958252 29 2.0341346263885498
		 30 1.9573202133178709 31 1.5664274692535409 32 1.0304757356643677 33 0.53269869089126576
		 34 0.42670336365699768 35 2.2457623481750488 36 7.2250356674194318 37 13.312652587890625
		 38 19.480037689208977 39 26.454048156738288 40 32.358833312988281 41 33.885654449462884
		 42 29.467933654785163 43 21.657455444335945 44 15.199140548706055 45 11.235617637634279
		 46 7.9538516998291033 47 4.0513920783996582 48 -0.44338104128837597 49 -4.6536965370178223
		 50 -8.3718738555908203 51 -11.22575569152832 52 -12.073156356811522 53 -11.82073497772217
		 54 -11.027099609375 55 -9.7339792251586932 56 -7.9611110687255842 57 -6.3626861572265616
		 58 -4.8567271232604989 59 -2.3138513565063468 60 1.2474051713943481 61 4.6760368347167969
		 62 7.4808497428894025 63 10.211525917053223 64 13.543619155883791 65 17.037542343139652
		 66 19.912908554077156 67 21.691818237304688 68 21.679943084716804 69 21.517063140869144
		 70 23.273183822631829 71 24.252222061157227 72 23.773160934448232 73 23.383523941040043
		 74 23.107297897338867 75 22.768241882324215 76 22.672485351562504 77 22.897392272949215
		 78 23.050838470458988 79 22.952533721923832 80 22.830818176269535 81 23.094249725341797
		 82 24.106779098510742 83 25.197788238525387 84 25.470903396606442 85 25.300178527832031
		 86 24.750446319580078 87 23.533061981201168 88 21.997558593750004 89 20.707082748413082
		 90 19.833248138427738 91 19.297744750976566 92 18.945261001586925 93 18.646575927734375
		 94 18.461042404174805 95 18.341016769409187 96 18.262435913085938 97 18.318218231201168
		 98 18.695722579956058 99 19.311704635620121 100 19.902090072631839 101 20.378021240234371
		 102 20.789564132690426 103 21.14009857177734 104 21.437780380249027 105 21.949424743652344
		 106 22.729099273681648 107 23.26657867431641 108 23.578802108764648 109 24.135246276855469
		 110 24.790184020996104 111 25.32181358337402 112 25.785888671875004 113 26.164806365966808
		 114 26.466676712036133 115 26.737974166870124 116 26.963294982910163 117 27.142192840576179
		 118 27.324205398559577 119 27.486490249633793 120 27.501604080200195 121 27.393976211547859
		 122 27.353279113769521 123 27.292625427246094 124 27.181032180786133 125 27.142021179199222
		 126 27.056270599365241 127 26.818830490112301 128 26.596984863281246 129 26.481828689575202
		 130 26.429697036743171 131 26.409635543823239 132 26.437635421752937 133 26.484535217285163
		 134 26.449943542480472 135 26.444475173950195 136 26.546833038330082;
createNode animCurveTA -n "Head_Head1_M_JNT1_rotateZ";
	rename -uid "12277943-4F31-E4D0-195C-18A878A43FDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 5.7174453735351563 1 5.2418441772460946
		 2 4.6032195091247559 3 4.2575850486755371 4 4.4465551376342773 5 4.4702644348144531
		 6 4.1912770271301287 7 4.1981701850891113 8 4.4854049682617188 9 4.9992628097534197
		 10 5.4175400733947772 11 5.0439686775207537 12 3.9259226322174068 13 2.6896500587463379
		 14 1.7796926498413086 15 1.5314006805419917 16 1.7626496553421023 17 1.8898954391479501
		 18 1.8495200872421269 19 1.843254566192627 20 1.9006624221801753 21 1.8982208967208865
		 22 1.5980983972549441 23 1.3853356838226321 24 1.5662792921066291 25 1.7479203939437864
		 26 2.1245534420013428 27 2.5467851161956783 28 2.3362824916839604 29 2.3296411037445073
		 30 3.1057569980621342 31 4.3550858497619647 32 5.712597370147706 33 6.0782375335693342
		 34 5.4767260551452637 35 5.2995967864990252 36 4.698477268218995 37 2.3384425640106192
		 38 0.19965451955795357 39 -0.1512709707021723 40 1.9714796543121331 41 6.5560665130615225
		 42 9.9073171615600639 43 10.86884880065918 44 11.082835197448732 45 11.32459545135498
		 46 11.256742477416994 47 11.294821739196777 48 11.609541893005371 49 11.071896553039554
		 50 8.911405563354494 51 6.2842531204223633 52 5.1380691528320313 53 4.4154129028320321
		 54 3.6932792663574228 55 3.9318373203277601 56 4.2444953918457031 57 4.3390240669250497
		 58 4.4231758117675781 59 3.475544691085815 60 -0.066072136163711465 61 -5.6932206153869647
		 62 -10.828193664550778 63 -14.518503189086914 64 -17.439599990844734 65 -19.64952278137207
		 66 -20.673952102661136 67 -21.004301071166989 68 -20.998899459838871 69 -19.759738922119144
		 70 -16.659351348876957 71 -13.773745536804201 72 -12.653920173645016 73 -11.939609527587896
		 74 -10.671069145202635 75 -9.2251195907592738 76 -7.9508810043334952 77 -6.8662705421447754
		 78 -5.8032584190368643 79 -4.680727481842041 80 -3.7949490547180176 81 -2.9456751346588135
		 82 -1.1873130798339844 83 1.201741695404053 84 2.2594153881073002 85 1.5097388029098511
		 86 0.47843503952026351 87 0.17668205499649067 88 0.20809906721115093 89 0.2000152319669723
		 90 0.056543163955211403 91 -0.37565323710441595 92 -0.91054636240005493 93 -1.3492956161499023
		 94 -1.7059379816055293 95 -2.0387895107269287 96 -2.3224182128906254 97 -2.6794042587280269
		 98 -3.0487079620361319 99 -3.2685985565185547 100 -3.3818223476409917 101 -3.5653321743011475
		 102 -3.8660376071929932 103 -4.1415858268737811 104 -4.2795691490173349 105 -4.0070939064025879
		 106 -3.3788342475891109 107 -3.1590056419372559 108 -3.3167765140533438 109 -3.2700128555297847
		 110 -3.1139140129089373 111 -2.9945461750030491 112 -2.84299659729004 113 -2.5821747779846205
		 114 -2.3758952617645268 115 -2.3197736740112309 116 -2.4253404140472434 117 -2.46535301208496
		 118 -2.2920362949371351 119 -2.1865439414978014 120 -2.385933637619019 121 -2.7164874076843266
		 122 -2.8319106101989728 123 -2.8032069206237802 124 -2.9254345893859872 125 -3.2364892959594731
		 126 -3.436893463134767 127 -3.4099848270416242 128 -3.2648980617523184 129 -3.1684637069702153
		 130 -3.1547641754150404 131 -3.0910327434539777 132 -2.9889073371887225 133 -2.9904618263244638
		 134 -3.090735912322998 135 -3.1856117248535152 136 -3.3167781829833998;
createNode animCurveTA -n "Neck_Neck_M_JNT1_rotateX";
	rename -uid "E5EB039E-4E91-2F45-422E-E8AACA7EC168";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -9.5008821487426758 1 -9.5805397033691424
		 2 -9.7591695785522425 3 -10.016190528869629 4 -10.282095909118652 5 -10.431282043457033
		 6 -10.433783531188965 7 -10.425257682800293 8 -10.481265068054199 9 -10.419726371765138
		 10 -10.016151428222658 11 -9.5460672378540039 12 -9.326501846313473 13 -9.2396278381347656
		 14 -9.1237955093383771 15 -9.1068153381347674 16 -9.001066207885744 17 -8.6533317565917951
		 18 -8.3235301971435547 19 -8.3039026260375977 20 -8.5761737823486328 21 -8.9062099456787127
		 22 -9.1992416381835938 23 -9.535858154296875 24 -9.9088621139526385 25 -10.139101028442385
		 26 -10.081762313842775 27 -9.9636573791503924 28 -9.8872032165527344 29 -9.9104089736938477
		 30 -10.226866722106937 31 -10.548797607421873 32 -10.674382209777832 33 -10.67846202850342
		 34 -10.620683670043947 35 -10.410068511962894 36 -9.7996072769165057 37 -9.5544757843017596
		 38 -10.848145484924318 39 -12.902300834655763 40 -13.905647277832033 41 -13.018095016479489
		 42 -11.064358711242674 43 -9.5104293823242188 44 -8.0046844482421875 45 -6.2152495384216326
		 46 -5.020613670349122 47 -4.686654567718505 48 -4.696434497833252 49 -5.0791735649108896
		 50 -5.9351963996887216 51 -6.7500543594360378 52 -7.6049604415893572 53 -8.3062591552734393
		 54 -8.273040771484375 55 -7.5230474472045907 56 -6.0370163917541504 57 -4.3618412017822266
		 58 -3.6438822746276864 59 -3.9323847293853773 60 -4.3841781616210938 61 -4.6308002471923837
		 62 -4.487948417663576 63 -4.168832302093505 64 -4.6170368194580087 65 -5.7889604568481445
		 66 -6.5010552406311009 67 -6.339561462402342 68 -5.486180782318117 69 -4.9507436752319336
		 70 -5.4479398727416983 71 -5.673755168914794 72 -5.5308284759521475 73 -5.7046589851379403
		 74 -5.8403010368347168 75 -5.7413973808288583 76 -5.4084320068359366 77 -4.8881802558898926
		 78 -4.2547960281372061 79 -3.5912017822265625 80 -2.8660426139831547 81 -1.9183845520019533
		 82 -0.99330085515975941 83 -0.35144338011741638 84 -0.06177463382482528 85 -0.34044396877288818
		 86 -1.0446299314498901 87 -1.7312310934066772 88 -2.2940754890441903 89 -2.770350694656373
		 90 -3.1207492351531978 91 -3.3092463016510014 92 -3.4156050682067871 93 -3.4144396781921391
		 94 -3.2702677249908447 95 -3.0225789546966562 96 -2.7541720867156982 97 -2.5762343406677255
		 98 -2.4744255542755136 99 -2.4239127635955811 100 -2.3576002120971675 101 -2.1772499084472665
		 102 -1.9906891584396365 103 -1.8719402551651008 104 -1.791714072227478 105 -1.893458366394043
		 106 -2.0845534801483154 107 -2.0722725391387939 108 -2.0057601928710933 109 -2.0563745498657227
		 110 -2.1601581573486328 111 -2.2615151405334473 112 -2.2240617275238037 113 -2.0430152416229252
		 114 -1.9682849645614624 115 -2.0140309333801274 116 -2.0089125633239755 117 -1.9760636091232304
		 118 -2.0153348445892338 119 -2.0954103469848633 120 -2.0456893444061275 121 -1.8467636108398435
		 122 -1.7673389911651614 123 -1.8231086730957029 124 -1.8459641933441164 125 -1.8385179042816164
		 126 -1.8559727668762216 127 -1.8338125944137578 128 -1.7978799343109133 129 -1.8110102415084837
		 130 -1.8944364786148071 131 -1.9770350456237791 132 -2.0055809020996089 133 -2.0500264167785649
		 134 -2.1243929862976074 135 -2.233057022094727 136 -2.2964630126953125;
createNode animCurveTA -n "Neck_Neck_M_JNT1_rotateY";
	rename -uid "B1DA8F05-4AD7-A2F3-6592-38AF53328F08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -0.41168811917304982 1 -0.42757880687713634
		 2 -0.43241718411445618 3 -0.42079052329063404 4 -0.43053287267684942 5 -0.40384584665298456
		 6 -0.34106120467185974 7 -0.32883739471435536 8 -0.37044572830200201 9 -0.46788907051086426
		 10 -0.5831177830696106 11 -0.59678369760513295 12 -0.46906793117523204 13 -0.23391273617744449
		 14 0.018902026116847988 15 0.19049403071403509 16 0.33569803833961487 17 0.52620965242385864
		 18 0.64866465330123912 19 0.67831337451934803 20 0.69454681873321544 21 0.72657310962677013
		 22 0.79665541648864724 23 0.82370501756668091 24 0.77441304922103893 25 0.74077057838439941
		 26 0.69292187690734863 27 0.5650697350502013 28 0.42964369058609009 29 0.34512314200401306
		 30 0.24781924486160278 31 0.086420580744743306 32 -0.076450824737548814 33 -0.15663065016269684
		 34 -0.1293873935937882 35 0.27616828680038458 36 1.3950629234313967 37 2.7734062671661373
		 38 4.0729742050170898 39 5.3575916290283203 40 6.1990270614624032 41 6.2577662467956534
		 42 5.5372223854064933 43 4.2344636917114258 44 3.1232471466064449 45 2.547765731811523
		 46 2.0634756088256831 47 1.3060754537582397 48 0.18032823503017428 49 -1.0517036914825439
		 50 -1.7107793092727659 51 -1.8491357564926154 52 -1.9603190422058108 53 -1.9852365255355837
		 54 -1.944082617759705 55 -1.8702338933944702 56 -1.6028774976730347 57 -1.3207631111145022
		 58 -1.0939306020736697 59 -0.6830674409866333 60 0.10761778056621554 61 1.086963891983032
		 62 2.037418127059937 63 2.9819898605346671 64 4.0140867233276376 65 5.0493898391723633
		 66 5.7957706451416007 67 6.165918827056883 68 6.1459212303161648 69 5.9780220985412607
		 70 6.0041027069091797 71 5.9546689987182626 72 5.7697858810424805 73 5.6253728866577166
		 74 5.5008988380432129 75 5.4005718231201181 76 5.3634834289550763 77 5.4051871299743643
		 78 5.451995849609375 79 5.4318065643310547 80 5.3946542739868173 81 5.4212121963500977
		 82 5.4891085624694824 83 5.5477123260498065 84 5.5962228775024423 85 5.5792827606201172
		 86 5.3968458175659171 87 5.0437254905700684 88 4.6581087112426767 89 4.3351850509643564
		 90 4.1293087005615225 91 4.0312561988830584 92 3.9515702724456787 93 3.8899784088134757
		 94 3.8820867538452153 95 3.859713315963746 96 3.8208107948303236 97 3.8572714328765896
		 98 3.9714372158050546 99 4.1051630973815918 100 4.2238249778747567 101 4.3123426437377939
		 102 4.4016904830932617 103 4.4945430755615234 104 4.5609526634216309 105 4.630047321319581
		 106 4.7010850906372088 107 4.7681431770324716 108 4.863600254058837 109 4.9973583221435547
		 110 5.1270456314086923 111 5.2250995635986319 112 5.3079748153686523 113 5.3454794883728027
		 114 5.3746023178100595 115 5.4409565925598162 116 5.5028934478759783 117 5.5390191078186035
		 118 5.5775337219238299 119 5.6289987564086923 120 5.7102718353271475 121 5.8057193756103525
		 122 5.8548192977905273 123 5.8450107574462891 124 5.7919597625732431 125 5.7593688964843741
		 126 5.7554287910461435 127 5.7559070587158203 128 5.7341389656066912 129 5.6883916854858381
		 130 5.6553740501403809 131 5.6271376609802246 132 5.5922307968139648 133 5.5781416893005371
		 134 5.5712184906005859 135 5.5529026985168484 136 5.5723762512207049;
createNode animCurveTA -n "Neck_Neck_M_JNT1_rotateZ";
	rename -uid "B0B3029D-422F-C1E3-E3AD-F393D51F37DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.96397787332534768 1 1.0227682590484621
		 2 0.95957005023956277 3 0.94658273458480835 4 1.1445343494415283 5 1.1804288625717163
		 6 0.85959511995315563 7 0.49966916441917403 8 0.44663453102111816 9 0.84518539905548073
		 10 1.181243896484375 11 1.014970064163208 12 0.5553358793258667 13 0.0703251957893372
		 14 -0.19751225411891932 15 -0.13674558699131015 16 -0.061339370906352997 17 -0.017185656353831288
		 18 0.35359501838684082 19 0.72834086418151867 20 0.7205857038497927 21 0.54759985208511341
		 22 0.15191771090030667 23 -0.13791185617446902 24 -0.09658452123403552 25 -0.14150702953338623
		 26 -0.33276233077049255 27 -0.46290037035942067 28 -0.38323703408241283 29 0.0049323476850986533
		 30 0.58340585231781017 31 1.0411971807479858 32 1.1876163482666018 33 0.87938690185546886
		 34 0.59243065118789673 35 0.20096947252750405 36 -0.77090972661972057 37 -1.6102629899978635
		 38 -2.4729876518249512 39 -3.91325879096985 40 -4.8420815467834473 41 -5.7141084671020517
		 42 -6.8356876373291007 43 -5.9560890197753906 44 -4.2239270210266122 45 -3.1545770168304452
		 46 -2.4317197799682617 47 -1.7474240064620974 48 -0.36369231343269354 49 1.474780797958374
		 50 0.7757570743560791 51 -1.7462073564529423 52 -2.2647366523742676 53 -1.9689451456069944
		 54 -1.3682695627212522 55 -0.37411570549011236 56 0.057704813778400428 57 0.18336740136146548
		 58 0.50641644001007102 59 1.1387865543365481 60 1.2291479110717773 61 0.83701640367507946
		 62 0.58987808227539074 63 0.29038420319557184 64 0.41260561347007751 65 0.48419696092605569
		 66 -0.45064488053321811 67 -1.3844680786132808 68 -1.7978211641311648 69 -2.6088228225708008
		 70 -3.7840895652771001 71 -4.2206249237060547 72 -4.2078475952148438 73 -4.2486915588378933
		 74 -4.4758405685424796 75 -4.9064316749572754 76 -5.0290927886962891 77 -4.9700922966003427
		 78 -4.9249515533447275 79 -4.6813516616821289 80 -4.3004589080810538 81 -3.7860991954803471
		 82 -2.7079143524169922 83 -1.5889914035797124 84 -1.3810667991638186 85 -1.5801936388015747
		 86 -1.4684615135192869 87 -1.0823435783386233 88 -0.78023993968963656 89 -0.52403712272644065
		 90 -0.41808989644050598 91 -0.51226133108139049 92 -0.50165832042694092 93 -0.50141417980194092
		 94 -0.64969706535339344 95 -0.63922423124313354 96 -0.4861977994441985 97 -0.60255300998687755
		 98 -0.78975665569305431 99 -0.82214927673339844 100 -0.80567437410354603 101 -0.7467695474624636
		 102 -0.76316851377487194 103 -0.86684596538543723 104 -0.89083695411682151 105 -0.70266467332839977
		 106 -0.21764621138572698 107 0.021060278639197346 108 -0.15825781226158139 109 -0.26934745907783508
		 110 -0.24745266139507296 111 -0.19818189740180966 112 -0.13422860205173495 113 0.091717682778835324
		 114 0.26936879754066473 115 0.20908327400684365 116 0.12536428868770599 117 0.12596270442008967
		 118 0.11246131360530855 119 0.0071143242530524453 120 -0.41617915034294112 121 -1.0397984981536863
		 122 -1.3459967374801636 123 -1.3708974123001099 124 -1.2190254926681519 125 -1.0946652889251709
		 126 -1.1789393424987793 127 -1.4510746002197272 128 -1.5753065347671515 129 -1.4552744626998899
		 130 -1.342966675758362 131 -1.2208682298660281 132 -1.004990220069885 133 -0.87989503145217896
		 134 -0.88617032766342174 135 -0.80456560850143466 136 -0.80386340618133556;
createNode animCurveTA -n "Spine_Spine2_M_JNT1_rotateX";
	rename -uid "E860B1E2-4D25-90B0-693F-E4B5CD4489A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 2.9030821323394762 1 2.7920463085174565
		 2 2.5648448467254639 3 2.3646330833435063 4 2.3038377761840825 5 2.241397619247437
		 6 2.0758826732635502 7 1.8007171154022217 8 1.4297697544097898 9 1.104551434516907
		 10 0.99608743190765414 11 1.04367995262146 12 1.0177294015884399 13 0.98930078744888339
		 14 1.1695939302444458 15 1.5169847011566162 16 1.9492298364639282 17 2.4253928661346431
		 18 2.8249409198760986 19 3.061226606369019 20 3.0654256343841553 21 2.7938501834869398
		 22 2.4665281772613521 23 2.2683298587799077 24 2.1486501693725586 25 2.1627478599548344
		 26 1.950194835662842 27 1.6117886304855349 28 1.5509930849075315 29 1.8005996942520148
		 30 2.0824437141418461 31 2.2283768653869629 32 2.259910106658936 33 2.341208934783936
		 34 2.4735898971557622 35 2.5136857032775874 36 2.536603689193726 37 2.6921823024749747
		 38 3.1403763294219966 39 4.1585721969604492 40 4.9686112403869638 41 4.5115704536438006
		 42 3.7645246982574476 43 3.7771837711334229 44 3.8448226451873784 45 3.5409734249114981
		 46 3.5598793029785165 47 4.0437927246093759 48 4.1652479171752939 49 3.7717242240905762
		 50 2.9618582725524902 51 2.1817836761474609 52 1.6343207359313965 53 1.0236097574234013
		 54 0.44300273060798656 55 0.23325049877166742 56 0.38076466321945202 57 0.75017207860946655
		 58 1.5641847848892216 59 2.9106605052948016 60 4.0888476371765128 61 5.159064292907714
		 62 6.5581717491149902 63 8.1395072937011737 64 9.6039123535156268 65 10.745744705200197
		 66 11.169431686401365 67 11.136763572692876 68 11.135663986206051 69 11.263672828674318
		 70 11.146877288818363 71 10.663265228271486 72 10.018628120422363 73 9.3182859420776385
		 74 8.5531158447265625 75 7.7678518295288086 76 6.9367837905883798 77 6.1324806213378906
		 78 5.408210754394533 79 4.7982120513916025 80 4.3209643363952628 81 3.8476867675781246
		 82 3.3053700923919682 83 2.7496380805969252 84 2.298383474349976 85 2.020218133926392
		 86 1.8677104711532593 87 1.7514171600341799 88 1.6164107322692878 89 1.501933932304383
		 90 1.4944496154785154 91 1.5942889451980593 92 1.7373957633972172 93 1.8920565843582149
		 94 2.071218729019165 95 2.2594227790832524 96 2.4350683689117432 97 2.5804619789123531
		 98 2.6604044437408443 99 2.6719062328338627 100 2.6367313861846924 101 2.5990092754364014
		 102 2.5849468708038335 103 2.5624830722808842 104 2.5528323650360107 105 2.5549628734588614
		 106 2.5315670967102051 107 2.4595878124237056 108 2.3798797130584717 109 2.3072931766510019
		 110 2.238178014755249 111 2.1854982376098633 112 2.1052575111389165 113 1.9912571907043459
		 114 1.9115139245986941 115 1.8644427061080937 116 1.8312939405441286 117 1.8142770528793335
		 118 1.8157582283020028 119 1.8236043453216553 120 1.7978787422180174 121 1.7621058225631716
		 122 1.7712961435317995 123 1.7709615230560305 124 1.731370329856873 125 1.7066842317581177
		 126 1.7031073570251469 127 1.6978766918182373 128 1.6954506635665894 129 1.6963307857513434
		 130 1.6911036968231197 131 1.6938961744308463 132 1.7068513631820674 133 1.6926765441894531
		 134 1.7290064096450803 135 1.9856002330780025 136 2.2673921585083008;
createNode animCurveTA -n "Spine_Spine2_M_JNT1_rotateY";
	rename -uid "8AEAD584-4631-C031-18E2-36B2812B15B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 2.9569087028503409 1 3.3924047946929932
		 2 3.6738238334655771 3 3.7796607017517103 4 3.799296379089355 5 3.7196259498596205
		 6 3.6222312450408944 7 3.7208414077758798 8 4.0193638801574698 9 4.2409100532531747
		 10 4.2625107765197763 11 4.2460975646972656 12 4.1545977592468253 13 3.7681610584259033
		 14 3.0908491611480708 15 2.3000645637512211 16 1.3829793930053711 17 0.37229147553443914
		 18 -0.40667578577995311 19 -0.90324020385742165 20 -1.282351970672607 21 -1.5799407958984379
		 22 -1.8793249130249019 23 -2.1962325572967525 24 -2.4131088256835938 25 -2.5176157951354985
		 26 -2.7390482425689702 27 -3.1051115989685067 28 -2.9519662857055669 29 -2.3192734718322758
		 30 -2.0381548404693604 31 -1.7587107419967651 32 -1.034054160118103 33 -0.24445484578609469
		 34 0.42990258336067211 35 0.44802707433700562 36 -0.62814080715179454 37 -1.9496562480926511
		 38 -3.0326073169708261 39 -3.7701194286346436 40 -4.0696706771850577 41 -4.0699315071105966
		 42 -4.2620663642883292 43 -4.718195915222168 44 -5.0187554359436035 45 -4.805348873138426
		 46 -4.2967023849487305 47 -3.9081451892852783 48 -3.4713928699493417 49 -2.7396454811096191
		 50 -1.9653899669647221 51 -1.3554518222808838 52 -1.0326048135757446 53 -0.81537288427352905
		 54 -0.47591179609298723 55 -0.14702674746513364 56 0.16345880925655368 57 0.94062691926956177
		 58 2.3367993831634521 59 3.8611600399017334 60 5.0538702011108398 61 5.656548500061036
		 62 5.2957730293273935 63 4.4011621475219727 64 3.9019889831542978 65 3.4333736896514897
		 66 2.6386666297912593 67 2.0268778800964355 68 1.7953661680221555 69 1.5668591260910039
		 70 1.1866563558578489 71 0.85350376367568992 72 0.67383372783660889 73 0.68462848663330089
		 74 0.79538410902023315 75 0.83784246444702148 76 0.90076255798339833 77 0.9896087050437925
		 78 1.044548034667969 79 1.1667842864990237 80 1.3346554040908813 81 1.4816447496414187
		 82 1.5710514783859253 83 1.5145585536956792 84 1.3085138797760012 85 1.0508935451507568
		 86 0.98838710784912065 87 1.2471178770065308 88 1.5513358116149905 89 1.6582796573638925
		 90 1.5824947357177737 91 1.4437937736511235 92 1.3252967596054079 93 1.2275350093841546
		 94 1.111091136932373 95 1.0108804702758787 96 0.98138546943664584 97 0.96139764785766624
		 98 0.89592742919921875 99 0.8310278058052063 100 0.7683749794960022 101 0.70841610431671143
		 102 0.6498693823814391 103 0.62931042909622192 104 0.68623781204223655 105 0.68844407796859719
		 106 0.63524568080902111 107 0.65140640735626232 108 0.68373310565948475 109 0.66225266456604015
		 110 0.70584601163864125 111 0.80879163742065452 112 0.83876317739486683 113 0.85953116416931141
		 114 0.88273102045059226 115 0.87006688117980968 116 0.8446664810180663 117 0.82573574781417858
		 118 0.81846761703491233 119 0.79340648651123047 120 0.72228944301605214 121 0.65621203184127819
		 122 0.62283796072006226 123 0.5761057734489442 124 0.52745169401168823 125 0.5511244535446167
		 126 0.6105571985244751 127 0.64770132303237915 128 0.67180860042572021 129 0.68229579925537132
		 130 0.70268595218658436 131 0.73149991035461392 132 0.7569826841354369 133 0.79238331317901622
		 134 0.81310522556304932 135 0.74095815420150768 136 0.62824690341949474;
createNode animCurveTA -n "Spine_Spine2_M_JNT1_rotateZ";
	rename -uid "2C54AC63-4FCA-1449-3D03-16A801A0682A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -1.6698881387710567 1 -1.7751138210296629
		 2 -1.8266768455505373 3 -1.860343456268311 4 -1.9277046918869019 5 -1.9180432558059697
		 6 -1.8685345649719243 7 -1.8806660175323486 8 -2.0487241744995117 9 -2.4237546920776385
		 10 -2.6974391937255868 11 -2.7083442211151127 12 -2.6109127998352042 13 -2.3981392383575448
		 14 -2.0015270709991455 15 -1.615934014320374 16 -1.3599261045455935 17 -1.1902118921279909
		 18 -1.0882256031036379 19 -0.99577575922012307 20 -0.8862937092781068 21 -0.79006892442703269
		 22 -0.6771506667137146 23 -0.63729923963546753 24 -0.68715620040893532 25 -0.6179390549659729
		 26 -0.48757791519165056 27 -0.20612873136997228 28 0.18408948183059698 29 0.44314986467361456
		 30 0.47268998622894287 31 0.24632617831230166 32 -0.12049638479948044 33 -0.32970929145812994
		 34 -0.3905426859855653 35 -0.41664272546768183 36 -0.23913593590259552 37 0.16266152262687683
		 38 0.59483224153518699 39 0.85235255956649769 40 0.36415833234786987 41 -0.83659428358078036
		 42 -1.2397389411926272 43 -1.065372228622437 44 -1.1482529640197754 45 -1.5932725667953489
		 46 -1.9121543169021611 47 -1.4952467679977424 48 -0.727952539920807 49 -0.12480882555246355
		 50 0.41022387146949763 51 1.0208545923233032 52 1.2751227617263794 53 1.2986528873443601
		 54 1.0932773351669312 55 0.58803212642669678 56 0.027398739010095603 57 -0.31767535209655756
		 58 -0.65445011854171775 59 -1.1146448850631716 60 -1.0853803157806399 61 -1.1715320348739624
		 62 -1.7013174295425417 63 -1.756850481033325 64 -1.7065267562866213 65 -1.8580164909362795
		 66 -1.7627390623092654 67 -1.5119795799255376 68 -1.3690801858901973 69 -1.2616333961486814
		 70 -0.96689850091934249 71 -0.60055780410766613 72 -0.33727595210075384 73 -0.18696460127830511
		 74 -0.038038156926631914 75 0.21304357051849365 76 0.4424616694450379 77 0.62176829576492298
		 78 0.8120650649070742 79 0.99408203363418601 80 1.1452783346176145 81 1.2746907472610476
		 82 1.2993457317352297 83 1.2907640933990481 84 1.4345754384994511 85 1.611130952835083
		 86 1.6810743808746338 87 1.6780968904495244 88 1.6895768642425544 89 1.7214837074279794
		 90 1.7782155275344844 91 1.8722535371780393 92 1.9504607915878298 93 2.0089592933654785
		 94 2.0724663734436031 95 2.1176779270172119 96 2.090619802474976 97 2.0580153465271001
		 98 2.0607385635375981 99 2.0508756637573247 100 2.014453649520874 101 1.964658141136169
		 102 1.9370470046997068 103 1.9142920970916748 104 1.8535305261611936 105 1.7691366672515869
		 106 1.6270871162414551 107 1.5360946655273435 108 1.5466072559356689 109 1.5430892705917361
		 110 1.4947881698608398 111 1.432622194290162 112 1.3782098293304443 113 1.3147556781768801
		 114 1.2797472476959231 115 1.2931827306747437 116 1.3135842084884644 117 1.3146200180053711
		 118 1.3170914649963377 119 1.3727928400039677 120 1.5184724330902095 121 1.6721740961074834
		 122 1.7392135858535767 123 1.7728728055953979 124 1.7738935947418215 125 1.7835471630096438
		 126 1.8490725755691531 127 1.9426938295364382 128 1.9981110095977783 129 2.006395816802979
		 130 1.9981696605682373 131 1.9728593826293948 132 1.9140278100967409 133 1.824028134346009
		 134 1.777223467826843 135 1.8468905687332149 136 1.9087727069854739;
createNode animCurveTA -n "Foot_Ball_L_JNT1_rotateX";
	rename -uid "93669AF5-405F-3EA1-0BE0-BBACF02189BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -5.048831553722267e-06 1 -5.1954102673334975e-06
		 2 -3.5960758850706038e-06 3 0 4 -2.558479081926635e-06 5 -1.4880514527249034e-06
		 6 1.4608058336307296e-05 7 3.7352810977608901e-06 8 0 9 1.1299600123008416e-29 10 3.7251415960781738e-06
		 11 -1.8171652982346129e-06 12 0 13 3.5276307244203036e-06 14 1.6287679045490224e-06
		 15 2.0264201339159631e-06 16 2.8449478577385894e-06 17 -1.9097712993243476e-06 18 0
		 19 -2.0815941752516673e-06 20 -1.783525362952787e-06 21 4.8691749725549025e-06 22 -5.7193603424821035e-05
		 23 -0.82393872737884533 24 -2.5856459140777597 25 -2.2460799217224126 26 -1.8542195558547978
		 27 -5.8160533905029297 28 -11.336093902587894 29 -8.5331554412841797 30 -8.0719219113234431e-06
		 31 -5.8476498452364492e-06 32 0 33 -1.1573213669180404e-05 34 -7.5774582910526104e-06
		 35 -3.083001502091065e-06 36 3.1967408631317093e-06 37 0 38 4.7890948735584962e-06
		 39 -5.5821624300733674e-06 40 -4.0093870162963867 41 -2.032380342483521 42 0 43 0
		 44 0 45 -4.206965513731121e-06 46 -2.20135825657053e-06 47 -2.4322334866155874e-06
		 48 -2.6795553367264793e-06 49 -4.2573892642394648e-06 50 -3.0165988391672731e-06
		 51 1.7921993276104331e-06 52 1.2386487924231915e-06 53 3.9041533455019825e-06 54 0
		 55 1.4037682376510931e-06 56 -1.0140434503555293 57 -1.9819204807281492 58 -2.2774024009704594
		 59 -2.0209281444549565 60 -2.0399074554443355 61 -2.2541167736053467 62 -2.1833102703094482
		 63 -2.0030720233917236 64 -2.0631294250488277 65 -1.9080843925476074 66 -1.2762353420257571
		 67 -0.69015473127365146 68 -0.23760320246219635 69 -1.0148794899578208e-05 70 -1.3918534023105165e-05
		 71 -8.4287494246382283e-06 72 -1.5121851220101235e-06 73 0 74 -1.6826296587169056e-06
		 75 1.2936865232404673e-06 76 4.7930079745128751e-06 77 -1.2778845075445135e-06 78 0
		 79 3.2061411729955584e-06 80 -1.3623545100927008e-06 81 1.2860858760177509e-06 82 0
		 83 2.2436558992922077e-06 84 2.3468826384487329e-06 85 0 86 0 87 -4.7022149374242872e-06
		 88 -7.7273662100196816e-06 89 -0.0045704576186835766 90 2.7204682737647099e-06 91 -5.6498000615042107e-30
		 92 -1.402577140652284e-06 93 0 94 1.8785218571792941e-06 95 0 96 -5.6498000615042065e-30
		 97 0 98 -3.8728453546355021e-06 99 0 100 0 101 1.8150776668335309e-06 102 0 103 -1.3525702797778649e-06
		 104 -3.1881811537459726e-06 105 1.4874271982989744e-06 106 0 107 2.2002889181749201e-06
		 108 0 109 2.472250798746245e-06 110 5.6498000615042128e-30 111 0 112 -1.5032140936455105e-06
		 113 2.0150475847913189e-06 114 0 115 -2.5422889393666996e-06 116 0 117 2.7194721496925926e-06
		 118 0 119 1.398874246660853e-06 120 0 121 0 122 2.2599200246016902e-29 123 1.7140155250672245e-06
		 124 0 125 -1.3608372455564679e-06 126 2.2599200246016969e-29 127 -2.8401182134984992e-06
		 128 2.0685092749772598e-06 129 1.2402723541526939e-06 130 2.2599200246016882e-29
		 131 1.7056737533494015e-06 132 2.6118523237528279e-06 133 -2.4117575776472226e-06
		 134 1.3938736174168302e-06 135 2.3119469005905557e-06 136 -1.2750113000947751e-06;
createNode animCurveTA -n "Foot_Ball_L_JNT1_rotateY";
	rename -uid "4ED2C579-41CB-8E47-A5A7-5AB795ACC72B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 1.7266041822949772e-06 2 -1.6848817949721708e-06
		 3 -1.3913776228946524e-06 4 -3.2713905966375032e-06 5 6.89073021931108e-06 6 -6.2120402617438248e-06
		 7 -5.6498000615042058e-30 8 0 9 -2.2471888314612447e-06 10 1.1299600123008406e-29
		 11 1.4701213331136391e-06 12 0 13 -3.1429067348653916e-06 14 -9.5765290097915567e-06
		 15 -7.1376011874235675e-06 16 5.6498000615042044e-30 17 -8.0511972555541416e-06 18 3.1681784093962051e-06
		 19 -6.3318807406176339e-06 20 8.243467163993044e-06 21 1.5684229310863888e-06 22 -1.7869628209155053e-05
		 23 -4.6891964302631104e-06 24 -1.0544526958256032e-05 25 -7.6464939411380345e-06
		 26 0.005000464618206025 27 -0.050231594592332819 28 -0.19734151661396032 29 0 30 -5.6061790019157343e-06
		 31 -6.7155474425817391e-06 32 1.5435718978551449e-06 33 0 34 -7.1595609369978783e-06
		 35 0 36 1.1299600123008409e-29 37 0 38 1.1299600123008406e-29 39 -1.6193578630918637e-05
		 40 -3.9170895433926498e-06 41 0 42 -1.7264337657252327e-06 43 9.9939379651914351e-06
		 44 4.2797339119715616e-05 45 -1.7540530734549975e-06 46 0 47 -1.7378506527165882e-06
		 48 -7.6204391916689946e-06 49 1.3570506780524738e-05 50 -1.3611188478535046e-05 51 2.2897011149325408e-05
		 52 2.8942100470885624e-05 53 1.0892363206949087e-05 54 -1.5270723451976664e-05 55 -9.1846141003770771e-06
		 56 -3.8430567656178021e-05 57 -1.500395956099965e-05 58 -1.3445332115225032e-05 59 -1.8815031580743383e-05
		 60 1.0121871127921622e-05 61 1.7171910258184651e-06 62 5.6149751799239311e-06 63 2.4123651201080065e-06
		 64 0 65 0 66 3.8911407500563655e-06 67 0 68 1.7067582120944284e-06 69 0 70 -1.4440770428336691e-06
		 71 3.3483827337477128e-06 72 2.0810482510569273e-06 73 0 74 0 75 1.7922598090081014e-06
		 76 4.0188128878071439e-06 77 -1.8868798861149119e-06 78 0 79 0 80 0 81 0 82 1.326810433965875e-06
		 83 -3.8360362850653482e-06 84 -5.649800061504203e-30 85 0 86 0 87 4.0533359424443924e-06
		 88 2.4538912839489062e-06 89 1.491738885306404e-06 90 -2.5604520033084559e-06 91 2.5320857730548596e-06
		 92 0 93 -1.6663799442540039e-06 94 1.1299600123008409e-29 95 -3.341599267514539e-06
		 96 -1.636365595913958e-06 97 0 98 5.6498000615042044e-30 99 0 100 1.6845101526996586e-06
		 101 -2.4681808099558111e-06 102 4.2038959691126365e-06 103 -2.4228947950177826e-06
		 104 0 105 0 106 0 107 -2.5959548111131876e-06 108 0 109 -4.114342573302566e-06 110 3.3090873330365866e-06
		 111 0 112 3.3480198453617049e-06 113 3.3050544061552505e-06 114 3.5062569168076139e-06
		 115 -5.7790743994701197e-06 116 -6.6905904532177374e-06 117 6.5840181378007409e-06
		 118 -2.514657126084785e-06 119 4.1359780880156904e-06 120 0 121 4.0914378587331166e-06
		 122 -5.1485176300047905e-06 123 -2.3306195089389799e-06 124 -4.0624149733048407e-06
		 125 4.920573701383546e-06 126 6.7178702920500646e-06 127 -4.069831447850448e-06 128 -3.3870562674565012e-06
		 129 -1.5908294699329419e-06 130 -4.3562995415413761e-06 131 4.7927646846801508e-06
		 132 -1.6719969835321537e-06 133 5.6883391152950927e-06 134 2.8249000307521022e-30
		 135 1.7260542790609181e-06 136 -1.6662522739352428e-06;
createNode animCurveTA -n "Foot_Ball_L_JNT1_rotateZ";
	rename -uid "36BB8491-4CA7-ACB6-B90A-A4990835133E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 1.1299600123008409e-29 2 0 3 2.9429036203509904e-06
		 4 0 5 3.1872477848082781e-06 6 2.6173538572038528e-06 7 -1.3694058225155463e-06 8 -3.7711299682996469e-06
		 9 3.1219642551150173e-06 10 1.6845542631926948e-06 11 2.2814874682808299e-06 12 -1.2714633612631587e-06
		 13 -1.5671907931391618e-06 14 -1.693730837359908e-06 15 2.8922127057739995e-06 16 -1.3491006711774391e-06
		 17 -2.2599200246017034e-29 18 0 19 -2.1064468000986385e-06 20 -1.8891663557951686e-06
		 21 2.6171344416070497e-06 22 3.4365968986094231e-06 23 0 24 3.0485989555018031e-06
		 25 -2.3696978997167539e-23 26 0.16282898187637326 27 -0.57695937156677235 28 -1.0425876379013064
		 29 2.3317068098549498e-06 30 3.9379524423566173e-06 31 -1.4389081570698185e-06 32 0
		 33 0 34 6.0947654674237137e-06 35 0 36 -1.8911806591859206e-06 37 0 38 1.7062762935893261e-06
		 39 -9.0396800984070881e-29 40 0 41 0 42 2.2771366730012232e-06 43 0 44 0 45 -1.1299600123008412e-29
		 46 0 47 -4.2610031414369595e-06 48 2.2390188405552185e-06 49 -9.0396800984069793e-29
		 50 4.8852343752514579e-06 51 0 52 -1.2598444527611719e-06 53 3.1138217764237193e-06
		 54 0 55 0 56 1.4430004284804454e-06 57 1.8246735180582616e-06 58 2.4252242383226994e-06
		 59 3.6221022128302147e-06 60 2.209960257459898e-06 61 2.4950968509074301e-06 62 -3.1442714316654015e-06
		 63 -1.8531217165218546e-06 64 0 65 -1.5314136589950071e-06 66 -4.1006546780408826e-06
		 67 0 68 0 69 -2.3464679088647253e-06 70 1.49283334849315e-06 71 0 72 0 73 0 74 2.1303662833815906e-06
		 75 0 76 0 77 -2.824900030752104e-30 78 0 79 0 80 2.7717724151443694e-06 81 0 82 0
		 83 -1.1299600123008434e-29 84 -1.6965036593319383e-06 85 0 86 0 87 0 88 3.8375974327209397e-06
		 89 -4.2553078856144566e-06 90 -2.9884918149036829e-06 91 -2.1050429950264524e-06
		 92 0 93 0 94 -3.2175007618207023e-06 95 0 96 -2.8096269488742114e-06 97 0 98 -1.2315173307797522e-06
		 99 -6.0000215853506225e-06 100 0 101 5.6498000615042079e-30 102 0 103 -2.0510569811449386e-06
		 104 0 105 1.2347459232842084e-06 106 0 107 1.9957262793468548e-06 108 0 109 -1.1299600123008435e-29
		 110 -1.5112836990738288e-06 111 0 112 5.6498000615042128e-30 113 1.1299600123008426e-29
		 114 -3.1523318284598645e-06 115 -2.2599200246016927e-29 116 0 117 0 118 0 119 -1.5758832887513569e-06
		 120 0 121 0 122 2.505444854250527e-06 123 0 124 0 125 0 126 -3.3169410471600717e-06
		 127 -2.1756072783318814e-06 128 -1.1299600123008426e-29 129 1.5086183111634455e-06
		 130 2.70491750598012e-06 131 -1.1299600123008447e-29 132 0 133 0 134 1.7589411527296763e-06
		 135 0 136 -2.8249000307521033e-30;
createNode animCurveTA -n "Arm_Elbow_R_JNT1_rotateY";
	rename -uid "9B974F0E-402B-E40C-32A3-A684FE7F581C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 29.255735397338871 1 31.858234405517578
		 2 33.582302093505866 3 34.923332214355469 4 36.399482727050781 5 37.450389862060547
		 6 37.094406127929688 7 35.328208923339851 8 32.695549011230476 9 29.853519439697262
		 10 26.875423431396488 11 22.54541015625 12 18.87187385559082 13 17.186822891235359
		 14 16.619394302368168 15 18.242681503295898 16 20.758321762084968 17 21.864459991455082
		 18 22.557928085327152 19 22.954376220703129 20 21.664503097534183 21 19.851558685302734
		 22 17.356761932373043 23 14.880501747131349 24 14.701142311096195 25 14.861229896545412
		 26 15.4396915435791 27 15.635704994201667 28 16.434036254882816 29 19.080905914306644
		 30 22.099811553955085 31 25.690238952636722 32 29.895885467529297 33 33.172267913818366
		 34 36.127029418945305 35 37.965625762939453 36 38.477302551269531 37 39.869789123535163
		 38 44.923080444335938 39 53.671581268310547 40 59.80735778808593 41 61.031902313232408
		 42 64.136878967285156 43 67.080039978027358 44 65.52679443359375 45 59.108695983886719
		 46 49.618923187255874 47 38.943946838378906 48 27.392930984497067 49 17.497039794921875
		 50 15.716158866882322 51 20.216041564941406 52 27.543373107910156 53 33.237472534179688
		 54 37.954502105712891 55 41.584728240966797 56 43.708934783935554 57 45.170928955078125
		 58 47.24188232421875 59 48.82574462890625 60 51.31373214721679 61 54.845500946044922
		 62 57.343730926513672 63 57.212593078613267 64 55.686225891113267 65 53.06172180175782
		 66 47.409236907958984 67 39.539791107177734 68 33.641513824462905 69 26.450651168823235
		 70 15.709425926208496 71 7.9814157485961923 72 5.7227587699890154 73 5.3705120086669931
		 74 8.7457351684570295 75 11.644225120544432 76 15.285087585449224 77 20.010801315307617
		 78 24.104969024658203 79 28.028926849365231 80 32.914844512939453 81 38.654464721679688
		 82 45.463218688964844 83 51.747577667236328 84 57.061252593994141 85 61.670646667480455
		 86 64.321983337402344 87 66.481941223144545 88 69.724311828613281 89 72.5015869140625
		 90 74.804183959960938 91 77.146492004394517 92 78.999603271484361 93 79.984741210937472
		 94 80.198616027832045 95 80.22954559326169 96 80.397048950195313 97 79.886604309082031
		 98 78.72013092041017 99 77.642715454101577 100 76.609191894531222 101 75.353866577148423
		 102 73.950439453125014 103 72.427528381347642 104 70.677787780761733 105 68.529548645019531
		 106 66.145393371582031 107 63.917739868164077 108 61.761363983154283 109 59.931510925292955
		 110 58.111934661865234 111 55.848236083984382 112 53.264804840087891 113 50.862892150878906
		 114 49.042228698730483 115 47.42198562622071 116 45.715919494628899 117 44.115653991699212
		 118 42.533805847167976 119 41.191349029541016 120 39.770351409912124 121 37.517402648925774
		 122 35.391468048095696 123 34.413139343261719 124 33.901714324951172 125 33.247489929199219
		 126 32.275886535644524 127 31.252727508544908 128 30.613170623779283 129 30.214111328125007
		 130 29.859663009643565 131 29.578474044799812 132 29.217153549194343 133 28.751150131225586
		 134 28.470075607299808 135 28.174999237060547 136 27.548252105712891;
createNode animCurveTA -n "Spine_Spine1_M_JNT1_rotateX";
	rename -uid "950A8A89-40DE-AB1D-28AE-9DABA18266AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 5.0931086540222159 1 4.9935717582702637
		 2 4.7563619613647452 3 4.5740180015563965 4 4.5829114913940439 5 4.5797514915466317
		 6 4.4348201751708984 7 4.1597023010253906 8 3.7710628509521484 9 3.422918558120728
		 10 3.2927036285400395 11 3.3014063835144043 12 3.2066833972930913 13 3.1292324066162109
		 14 3.3333551883697519 15 3.7515494823455806 16 4.2167305946350098 17 4.7040791511535653
		 18 5.1762070655822772 19 5.5064167976379395 20 5.5496153831481907 21 5.2567996978759783
		 22 4.8875565528869638 23 4.6929631233215323 24 4.6195888519287118 25 4.6768760681152353
		 26 4.4356689453124991 27 3.9950389862060547 28 3.8371562957763681 29 4.0722188949584952
		 30 4.4125733375549334 31 4.6124429702758798 32 4.6402015686035156 33 4.6913886070251483
		 34 4.7684988975524911 35 4.7356357574462891 36 4.6332440376281738 37 4.6524639129638672
		 38 5.141740322113038 39 6.279038906097413 40 7.0882468223571786 41 6.5267434120178214
		 42 5.6954736709594727 43 5.7152366638183612 44 5.9302401542663583 45 5.7798147201538086
		 46 5.9220867156982404 47 6.3321113586425772 48 6.2622232437133807 49 5.6054706573486346
		 50 4.4346590042114258 51 3.2386188507080091 52 2.3893020153045654 53 1.5089374780654909
		 54 0.66777634620666493 55 0.3322427272796632 56 0.48027646541595476 57 0.96042299270629883
		 58 2.0643575191497807 59 3.8576743602752686 60 5.5013098716735858 61 7.1190195083618155
		 62 9.23486328125 63 11.476160049438482 64 13.461179733276367 65 15.02756977081299
		 66 15.642901420593271 67 15.62226486206055 68 15.583810806274416 69 15.679066658020023
		 70 15.458640098571776 71 14.763536453247077 72 13.872381210327152 73 12.924162864685066
		 74 11.900842666625973 75 10.886020660400391 76 9.8461008071899414 77 8.8413686752319336
		 78 7.935646057128908 79 7.1862325668334952 80 6.5884037017822266 81 5.945371150970459
		 82 5.2294607162475595 83 4.4905271530151349 84 3.8043334484100346 85 3.372126579284668
		 86 3.1910753250122079 87 3.0673558712005615 88 2.9129717350006104 89 2.7908015251159668
		 90 2.7906289100646968 91 2.9233219623565683 92 3.161939382553101 93 3.4422554969787598
		 94 3.7369809150695805 95 4.0356578826904288 96 4.3072872161865225 97 4.5369153022766113
		 98 4.6804771423339853 99 4.7130169868469229 100 4.6863346099853525 101 4.6519827842712402
		 102 4.6351351737976065 103 4.6216416358947754 104 4.6350541114807138 105 4.6626672744750985
		 106 4.6565799713134757 107 4.5739607810974139 108 4.4708218574523926 109 4.3798351287841797
		 110 4.2980837821960449 111 4.2385058403015146 112 4.1260809898376465 113 3.9576127529144292
		 114 3.8457593917846684 115 3.7861864566802983 116 3.7417399883270281 117 3.7075548171997075
		 118 3.6951925754547119 119 3.7014350891113277 120 3.6660175323486328 121 3.601270437240601
		 122 3.5892195701599121 123 3.5774896144866939 124 3.5309994220733638 125 3.5011498928070077
		 126 3.4816119670867924 127 3.4341063499450688 128 3.3921051025390629 129 3.389449119567872
		 130 3.3987827301025386 131 3.4110112190246573 132 3.4293880462646475 133 3.4235382080078121
		 134 3.4830710887908936 135 3.8164820671081547 136 4.1806340217590332;
createNode animCurveTA -n "Spine_Spine1_M_JNT1_rotateY";
	rename -uid "D47CA2B1-42A2-81B3-7F30-4D837D00550C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 3.8947541713714595 1 4.4034123420715323
		 2 4.7107329368591317 3 4.7130455970764151 4 4.5273189544677743 5 4.308304786682128
		 6 4.0760712623596183 7 4.0477943420410156 8 4.3223643302917472 9 4.6154451370239258
		 10 4.7236056327819842 11 4.6490612030029297 12 4.5294203758239764 13 4.1446599960327148
		 14 3.4127230644226079 15 2.5543446540832515 16 1.5539489984512331 17 0.41976666450500488
		 18 -0.4280859231948852 19 -0.91649758815765403 20 -1.2777554988861084 21 -1.5897129774093632
		 22 -1.9060233831405644 23 -2.1911249160766597 24 -2.4469261169433598 25 -2.5230393409729008
		 26 -2.7235894203186031 27 -3.0707204341888428 28 -2.9556398391723646 29 -2.3887648582458501
		 30 -2.235915184020997 31 -2.0724215507507329 32 -1.2531218528747561 33 -0.31159231066703802
		 34 0.46930494904518133 35 0.4433387517929076 36 -0.95863306522369385 37 -2.6818401813507076
		 38 -4.115912914276123 39 -5.0437726974487314 40 -5.3749046325683603 41 -5.9805021286010742
		 42 -6.8539586067199725 43 -6.9118690490722665 44 -6.9747214317321795 45 -7.4903588294982919
		 46 -7.2736840248107892 47 -6.1023559570312491 48 -5.020909309387207 49 -3.974216222763062
		 50 -2.966224193572998 51 -1.9621767997741704 52 -1.3088783025741577 53 -0.9632498025894165
		 54 -0.53330701589584351 55 -0.026754748076200482 56 0.51720786094665527 57 1.2809258699417112
		 58 2.5722262859344478 59 4.2814326286315918 60 5.7630748748779297 61 6.6911020278930655
		 62 6.1447710990905753 63 5.0142297744750968 64 4.3795981407165527 65 3.6515984535217285
		 66 2.4467632770538343 67 1.5595608949661255 68 1.2385989427566528 69 1.0282344818115239
		 70 0.71276283264160167 71 0.44466286897659318 72 0.32323279976844793 73 0.40169572830200212
		 74 0.58403956890106179 75 0.67927277088165283 76 0.79144167900085483 77 0.93184220790863037
		 78 1.026990652084351 79 1.2003024816513064 80 1.4229260683059697 81 1.606819152832031
		 82 1.6922386884689331 83 1.5712872743606565 84 1.2688096761703493 85 0.90770435333251942
		 86 0.79858070611953769 87 1.1164340972900391 88 1.5008260011672978 89 1.627225875854492
		 90 1.5101050138473509 91 1.311247706413269 92 1.1406890153884888 93 1.0023659467697146
		 94 0.84398239850997925 95 0.70932620763778687 96 0.67746096849441517 97 0.66316926479339611
		 98 0.58798521757125877 99 0.51240736246109009 100 0.44018566608428961 101 0.36892870068550127
		 102 0.29643455147743225 103 0.27302235364913946 104 0.34925150871276861 105 0.35047170519828802
		 106 0.27898722887039179 107 0.30670675635337824 108 0.35735064744949341 109 0.33281990885734564
		 110 0.39547392725944525 111 0.54057866334915161 112 0.59317749738693248 113 0.63475382328033458
		 114 0.67603290081024137 115 0.66790825128555287 116 0.64235126972198509 117 0.62395501136779796
		 118 0.61775690317153942 119 0.58228254318237282 120 0.48017859458923351 121 0.3980265855789184
		 122 0.37748649716377247 123 0.32418996095657354 124 0.25730273127555847 125 0.29326674342155462
		 126 0.37450745701789862 127 0.42349699139595037 128 0.45807480812072754 129 0.47315314412117021
		 130 0.50062286853790272 131 0.54033368825912464 132 0.576499342918396 133 0.63376903533935536
		 134 0.66782265901565552 135 0.54785656929016113 136 0.37661835551261907;
createNode animCurveTA -n "Spine_Spine1_M_JNT1_rotateZ";
	rename -uid "3F9045F3-417A-771F-0CB6-B6AD6B70623B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.41104915738105779 1 -0.05031950399279591
		 2 -0.30417233705520624 3 -0.63611990213394154 4 -1.0935865640640259 5 -1.0805957317352293
		 6 -0.97720032930374146 7 -1.1328575611114504 8 -1.5036687850952151 9 -2.2533249855041508
		 10 -2.8307213783264173 11 -3.2555711269378662 12 -3.7155382633209237 13 -3.9293355941772452
		 14 -3.825768470764161 15 -3.6950857639312735 16 -3.604597806930542 17 -3.4135408401489267
		 18 -3.174191951751709 19 -2.9857516288757329 20 -2.8447160720825191 21 -2.7651081085205096
		 22 -2.5005590915679932 23 -2.223075151443481 24 -2.3588368892669695 25 -2.1210842132568364
		 26 -1.7249640226364138 27 -0.83112168312072776 28 0.39320459961891191 29 1.4642879962921145
		 30 2.415735244750977 31 2.9226529598236088 32 2.7751841545104989 33 2.6691794395446773
		 34 2.7551956176757813 35 2.6863536834716792 36 2.5835218429565434 37 2.6473677158355713
		 38 2.2885601520538335 39 1.5039283037185671 40 -0.54357218742370594 41 -5.0626316070556641
		 42 -6.4213027954101554 43 -4.268437385559082 44 -3.6285791397094735 45 -6.1881361007690439
		 46 -8.2658185958862287 47 -6.5965414047241202 48 -4.2075333595275888 49 -3.0237991809844984
		 50 -2.5251028537750244 51 -1.5672245025634768 52 -0.81060749292373668 53 -0.19474557042121884
		 54 -0.096981137990951552 55 -0.83955317735671997 56 -1.9385266304016111 57 -2.1508285999298096
		 58 -1.4982700347900393 59 -1.4408897161483769 60 -0.74350619316101108 61 -1.2301079034805296
		 62 -2.7822079658508301 63 -2.8166208267211919 64 -2.7699608802795406 65 -3.4285495281219482
		 66 -3.7339007854461674 67 -3.5050683021545415 68 -3.3076779842376705 69 -3.1043188571929936
		 70 -2.5280547142028804 71 -1.814308762550354 72 -1.2740786075592043 73 -0.94861125946044966
		 74 -0.65719515085220326 75 -0.19573058187961578 76 0.21009723842144018 77 0.55430501699447632
		 78 0.96843916177749645 79 1.3869194984436035 80 1.7588729858398438 81 2.0839903354644775
		 82 2.1986782550811772 83 2.2708091735839844 84 2.6237947940826425 85 3.0378713607788077
		 86 3.2614769935607919 87 3.3279042243957528 88 3.4127671718597408 89 3.5239641666412349
		 90 3.6688621044158927 91 3.8592031002044682 92 3.9976153373718271 93 4.111474037170411
		 94 4.2209525108337411 95 4.2242326736450204 96 4.0993175506591788 97 4.0281181335449228
		 98 4.0424485206604022 99 3.9904129505157475 100 3.8809540271759038 101 3.7580931186676025
		 102 3.6857149600982662 103 3.6382567882537837 104 3.5260868072509775 105 3.365860223770142
		 106 3.0506718158721928 107 2.8419735431671147 108 2.862948179244996 109 2.8401219844818115
		 110 2.723186731338501 111 2.6050348281860356 112 2.518069982528687 113 2.3927891254425049
		 114 2.3015732765197749 115 2.3013725280761714 116 2.3337385654449467 117 2.3537619113922119
		 118 2.3740417957305908 119 2.4693043231964111 120 2.7259657382965092 121 2.9840142726898198
		 122 3.0385475158691397 123 3.0948247909545903 124 3.1711270809173588 125 3.2185292243957528
		 126 3.3489573001861572 127 3.5711739063262939 128 3.7082686424255371 129 3.7280929088592538
		 130 3.7321043014526354 131 3.7091195583343493 132 3.6155924797058097 133 3.4868905544280993
		 134 3.4259021282196049 135 3.4746668338775635 136 3.5128610134124751;
createNode animCurveTA -n "Leg_Ankle_L_JNT1_rotateX";
	rename -uid "107B607C-42C4-BDD7-9085-589E19197401";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -2.1486692428588867 1 -2.7605819702148438
		 2 -2.8889067173004146 3 -3.3340814113616948 4 -4.6123199462890616 5 -7.2310442924499485
		 6 -8.9082098007202131 7 -6.6129822731018058 8 -2.953402042388916 9 -0.084821633994579329
		 10 -2.2047381401062016 11 -5.7229409217834473 12 -8.6344909667968732 13 -10.790091514587404
		 14 -12.244114875793453 15 -13.250315666198732 16 -14.065625190734869 17 -14.778824806213381
		 18 -15.491723060607908 19 -16.266530990600589 20 -17.118572235107418 21 -17.609909057617188
		 22 -18.002119064331058 23 -18.342224121093754 24 -18.744163513183594 25 -18.401067733764652
		 26 -16.249303817749023 27 -11.227797508239748 28 -3.6543166637420654 29 4.7450895309448251
		 30 10.284343719482424 31 8.7936353683471662 32 5.0253520011901864 33 2.6344063282012939
		 34 -0.034189995378255837 35 -1.3660396337509153 36 -2.3772671222686768 37 -5.7719559669494638
		 38 -8.920903205871582 39 -8.4477128982543928 40 -6.5302047729492161 41 -14.144304275512694
		 42 -18.531097412109375 43 -17.887496948242191 44 -17.435300827026367 45 -18.977727890014645
		 46 -20.113483428955078 47 -19.550817489624027 48 -19.034196853637695 49 -19.228136062622074
		 50 -19.601959228515621 51 -19.273195266723636 52 -18.182783126831058 53 -16.359813690185543
		 54 -14.365101814270018 55 -12.682705879211428 56 -10.744723320007326 57 -8.0952596664428693
		 58 -5.3631787300109872 59 -3.0091366767883305 60 1.0224295854568481 61 6.0538754463195801
		 62 9.4196262359619141 63 11.618328094482424 64 13.250155448913578 65 12.859457015991211
		 66 10.496047019958498 67 9.2893638610839844 68 9.5854358673095703 69 9.6641664505004847
		 70 9.3361415863037109 71 8.8903541564941424 72 8.5097131729125994 73 8.2849082946777362
		 74 7.8871312141418439 75 7.2795062065124521 76 6.7945370674133319 77 6.8108763694763157
		 78 7.1314640045165998 79 7.3519816398620614 80 7.3886308670043936 81 7.2286276817321786
		 82 7.049778938293457 83 7.2132558822631836 84 7.4995956420898473 85 7.6446294784545898
		 86 8.2473020553588867 87 9.4905700683593768 88 10.632952690124512 89 11.421388626098633
		 90 11.768125534057619 91 11.936642646789553 92 12.067136764526367 93 12.07559967041016
		 94 11.76657390594483 95 12.048685073852543 96 12.591771125793459 97 11.592858314514158
		 98 10.147412300109863 99 9.592351913452152 100 9.0921287536621094 101 8.3973484039306658
		 102 7.7911143302917507 103 7.2120199203491202 104 6.5974864959716824 105 6.1361799240112305
		 106 5.702782154083252 107 5.0992164611816406 108 4.4393415451049805 109 3.9885973930358904
		 110 3.7548439502716056 111 3.4175882339477539 112 2.9657342433929448 113 2.5872700214385982
		 114 2.3308792114257817 115 2.1569042205810542 116 2.0311269760131836 117 2.0341038703918457
		 118 2.1304445266723633 119 2.1816160678863534 120 2.3176405429840088 121 2.5719809532165523
		 122 2.7108495235443106 123 2.7957518100738512 124 2.9803888797760005 125 3.1780328750610352
		 126 3.208637475967409 127 3.0436933040618896 128 2.9701752662658705 129 2.9840493202209473
		 130 3.0085866451263423 131 3.0759663581848136 132 3.1084566116333012 133 3.0163292884826669
		 134 2.8768353462219243 135 2.5863809585571289 136 2.2065470218658447;
createNode animCurveTA -n "Leg_Ankle_L_JNT1_rotateY";
	rename -uid "D5DD6B2F-452F-B379-C31C-CA8E7CB1BF5B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.26823329925537115 1 0.29484504461288435
		 2 0.34922677278518671 3 0.35197436809539795 4 0.19774009287357341 5 -0.30295166373252852
		 6 -0.68074154853820756 7 -0.074207544326782268 8 0.35308957099914545 9 0.47768139839172352
		 10 0.26186949014663707 11 0.046791508793830885 12 -0.095886915922164861 13 -0.24470323324203491
		 14 -0.3694049715995788 15 -0.47145503759384161 16 -0.56778639554977439 17 -0.61082226037979137
		 18 -0.62296706438064575 19 -0.64433205127716064 20 -0.60492008924484253 21 -0.55380284786224365
		 22 -0.67094224691390969 23 -0.77315104007720925 24 -1.0711956024169924 25 -1.1256750822067267
		 26 -1.0391567945480344 27 -0.69849342107772849 28 -0.0054499316029251307 29 0.40733143687248236
		 30 0.35543006658554088 31 0.22670178115367889 32 0.19419458508491516 33 0.40433433651924128
		 34 0.54294687509536743 35 0.32174053788185125 36 -1.7358609437942509 37 -8.6973066329956072
		 38 -14.261318206787109 39 -15.503543853759764 40 -13.932942390441891 41 -9.0620203018188459
		 42 -3.0268547534942636 43 -0.23861019313335419 44 -0.040178239345550523 45 0.059648770838975872
		 46 0.13258744776248935 47 0.24733065068721768 48 1.7875272035598757 49 4.266779899597168
		 50 6.8644485473632821 51 9.7132701873779315 52 12.934185028076174 53 16.693899154663086
		 54 19.694364547729489 55 19.285871505737301 56 15.003883361816408 57 9.7624597549438477
		 58 5.7777767181396502 59 2.103057861328125 60 0.023747958242893226 61 0.20829866826534271
		 62 0.71351116895675637 63 1.1176434755325313 64 1.3346759080886843 65 1.3784579038619993
		 66 1.2950553894042969 67 1.2619566917419431 68 1.2655810117721555 69 1.2595176696777339
		 70 1.3550550937652592 71 1.4997723102569578 72 1.580139994621278 73 0.97534143924713146
		 74 0.020958177745342234 75 -0.10822654515504837 76 -0.083267882466316126 77 -0.60244709253311146
		 78 -1.3382142782211301 79 -2.1289880275726323 80 -2.6950469017028804 81 -2.7474141120910653
		 82 -2.8301117420196542 83 -3.5751681327819824 84 -4.2469496726989755 85 -3.6810808181762691
		 86 -2.754151582717896 87 -2.4143016338348389 88 -2.0214436054229727 89 -0.62888562679290783
		 90 1.8855255842208862 91 2.2562935352325448 92 2.1067516803741455 93 2.0947771072387709
		 94 2.0340633392333998 95 1.9514125585556035 96 1.8731454610824585 97 1.8847451210021968
		 98 1.8607312440872186 99 1.7617062330245978 100 1.6331335306167603 101 1.5130931138992312
		 102 1.3156281709671025 103 1.1439391374588008 104 0.97924834489822399 105 0.86789929866790794
		 106 0.76651906967163086 107 0.6705862283706665 108 0.61236298084259044 109 0.56985062360763572
		 110 0.49813324213027943 111 0.41280081868171697 112 0.35403615236282354 113 0.30900529026985163
		 114 0.27905350923538208 115 0.26678669452667231 116 0.25689533352851868 117 0.25401842594146729
		 118 0.26327931880950928 119 0.2802848815917971 120 0.28552949428558355 121 0.36360335350036621
		 122 0.54707282781600963 123 0.62488842010498036 124 0.61374604701995839 125 0.64588850736618042
		 126 0.70441788434982333 127 0.74220591783523526 128 0.75625914335250877 129 0.7614206075668335
		 130 0.76629549264907848 131 0.77212291955947865 132 0.78038775920867931 133 0.79118746519088767
		 134 0.80481499433517467 135 0.80434334278106723 136 0.80347061157226574;
createNode animCurveTA -n "Leg_Ankle_L_JNT1_rotateZ";
	rename -uid "751571C0-44F3-56C0-E098-1AB4DC6C95A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -7.2738103866577148 1 -9.4689226150512695
		 2 -12.02656269073486 3 -14.578577995300289 4 -16.156673431396488 5 -16.976558685302734
		 6 -17.493808746337887 7 -15.093863487243651 8 -8.4360780715942365 9 -7.744619369506835
		 10 -7.0842027664184588 11 -5.640794277191163 12 -5.7340426445007306 13 -6.5440764427185041
		 14 -7.0759639739990234 15 -7.5660924911499023 16 -8.0801839828491229 17 -7.9311580657958993
		 18 -7.4762425422668439 19 -7.2329826354980478 20 -6.6645135879516602 21 -6.0904426574707022
		 22 -6.7167506217956543 23 -7.6031103134155273 24 -9.6467218399047852 25 -10.372019767761232
		 26 -11.284003257751463 27 -10.816512107849121 28 -7.7327051162719735 29 -3.4090123176574707
		 30 -1.5448215007781985 31 -1.6366765499114988 32 -2.2895522117614751 33 -5.6445508003234846
		 34 -10.893283843994142 35 -8.572105407714842 36 -3.0586473941802983 37 -2.9367959499359131
		 38 -4.4509854316711426 39 -6.1008210182189959 40 -9.2941541671752912 41 -7.5067276954650852
		 42 -5.9103283882141122 43 -3.7341201305389413 44 -2.0129902362823486 45 -0.8738812208175657
		 46 -0.052986100316047668 47 0.91859549283981334 48 1.6034522056579592 49 1.7805855274200437
		 50 1.8994505405426028 51 2.2550847530364981 52 2.6723024845123295 53 3.4605886936187753
		 54 4.6889677047729483 55 6.2689485549926749 56 6.3071913719177255 57 5.2600317001342773
		 58 4.9559011459350595 59 4.2036976814270028 60 2.4399538040161133 61 -0.91273301839828491
		 62 -4.771681308746337 63 -6.8506460189819354 64 -7.6336688995361328 65 -8.1182956695556641
		 66 -8.6470699310302752 67 -8.9463338851928693 68 -8.5671539306640625 69 -8.2138442993164063
		 70 -9.054838180541994 71 -10.576131820678709 72 -11.584806442260746 73 -12.007255554199217
		 74 -12.121155738830566 75 -12.307841300964355 76 -12.452328681945804 77 -12.464661598205568
		 78 -12.388228416442869 79 -12.499697685241699 80 -12.820815086364744 81 -13.132176399230959
		 82 -13.555262565612797 83 -14.17742919921875 84 -14.829101562500002 85 -15.259778022766117
		 86 -15.68274402618408 87 -16.381086349487312 88 -16.878927230834964 89 -16.756456375122074
		 90 -15.850750923156742 91 -14.283391952514652 92 -13.242495536804201 93 -13.153458595275886
		 94 -12.865166664123539 95 -12.082377433776857 96 -11.228948593139648 97 -11.794218063354489
		 98 -12.417516708374022 99 -11.990120887756353 100 -11.280813217163084 101 -10.714201927185059
		 102 -10.257217407226564 103 -9.7478103637695295 104 -9.3257131576538104 105 -9.049436569213869
		 106 -8.5419425964355451 107 -8.0762710571289063 108 -7.9306821823120108 109 -7.6722269058227566
		 110 -7.0366268157958984 111 -6.5051655769348145 112 -6.2729706764221191 113 -6.0963377952575692
		 114 -5.9044694900512686 115 -5.7489104270935041 116 -5.6970443725585938 117 -5.6703982353210449
		 118 -5.6864423751831046 119 -5.7790026664733904 120 -5.8306159973144522 121 -6.093507766723631
		 122 -6.7459950447082502 123 -7.2342376708984357 124 -7.3716487884521458 125 -7.4859251976013184
		 126 -7.8075037002563503 127 -8.3224601745605487 128 -8.6575231552124041 129 -8.8453092575073242
		 130 -8.9722185134887713 131 -8.9501657485961932 132 -8.8445434570312518 133 -8.8230924606323295
		 134 -8.8616094589233398 135 -8.498932838439945 136 -7.6866269111633319;
createNode animCurveTA -n "Arm_Wrist_R_JNT1_rotateX";
	rename -uid "D89CB65E-40A7-7F23-66BF-FABEFF78B281";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -32.799850463867188 1 -34.234802246093757
		 2 -33.454559326171875 3 -32.144306182861328 4 -31.800004959106452 5 -31.719020843505859
		 6 -31.313652038574219 7 -30.869321823120117 8 -30.172624588012688 9 -29.628181457519524
		 10 -29.927972793579109 11 -31.06512451171875 12 -32.384323120117166 13 -31.107244491577159
		 14 -26.456195831298828 15 -22.340566635131839 16 -22.764595031738281 17 -25.229999542236328
		 18 -26.39140701293946 19 -27.01271820068359 20 -27.742031097412113 21 -29.179985046386712
		 22 -30.411403656005863 23 -30.327810287475586 24 -30.536460876464837 25 -31.163459777832035
		 26 -30.3340549468994 27 -27.352867126464847 28 -26.025230407714844 29 -26.803108215332028
		 30 -24.882837295532234 31 -22.682973861694339 32 -22.917943954467777 33 -25.430978775024414
		 34 -28.601919174194336 35 -30.134260177612308 36 -25.716829299926754 37 -14.869685173034666
		 38 -17.18452262878418 39 -37.489776611328132 40 -27.109455108642575 41 -1.1194508075714109
		 42 -12.595920562744142 43 -28.957317352294922 44 -30.974960327148448 45 -30.72375297546386
		 46 -42.430503845214837 47 -53.743541717529297 48 -51.206962585449219 49 -46.44896316528321
		 50 -48.121368408203132 51 -48.603359222412109 52 -41.066249847412116 53 -35.88804626464843
		 54 -34.942268371582038 55 -32.889156341552727 56 -31.141008377075195 57 -31.273942947387699
		 58 -28.568803787231445 59 -26.555437088012695 60 -25.128902435302727 61 -18.322177886962884
		 62 -8.1310024261474592 63 -1.417817234992981 64 1.7224274873733523 65 -0.44007962942123413
		 66 -4.301682472229003 67 -4.555666446685791 68 -1.5942978858947754 69 -8.5951213836669904
		 70 -12.426230430603027 71 -8.8175468444824183 72 -1.2869211435317995 73 6.2818245887756374
		 74 6.5902400016784668 75 -0.099854215979576166 76 -9.3782033920288086 77 -17.684135437011712
		 78 -23.43757438659669 79 -27.344541549682614 80 -30.109638214111339 81 -34.442562103271477
		 82 -45.267234802246094 83 -54.514862060546875 84 -54.599124908447273 85 -51.635154724121101
		 86 -49.034908294677741 87 -45.775470733642592 88 -42.887519836425795 89 -41.482330322265632
		 90 -40.250160217285156 91 -38.574581146240234 92 -37.213768005371094 93 -36.120220184326179
		 94 -35.668685913085945 95 -36.441955566406243 96 -37.269748687744141 97 -36.994621276855469
		 98 -37.430721282958991 99 -38.811576843261719 100 -39.477935791015625 101 -39.380706787109382
		 102 -39.320034027099609 103 -40.011577606201165 104 -41.023284912109382 105 -41.447273254394531
		 106 -42.234874725341797 107 -43.009063720703139 108 -42.548377990722656 109 -46.176162719726563
		 110 -52.971439361572273 111 -55.715126037597656 112 -56.807033538818366 113 -58.915969848632805
		 114 -60.176631927490249 115 -59.71577072143554 116 -59.125179290771491 117 -59.068954467773438
		 118 -59.027126312255859 119 -58.377952575683601 120 -57.349815368652344 121 -56.954021453857436
		 122 -56.791984558105469 123 -55.359992980957045 124 -53.787803649902337 125 -52.407440185546875
		 126 -51.672695159912124 127 -51.068214416503899 128 -49.592948913574226 129 -47.952247619628906
		 130 -46.208721160888693 131 -43.466949462890632 132 -40.602764129638665 133 -38.313735961914063
		 134 -35.901008605957038 135 -33.895496368408203 136 -32.941230773925795;
createNode animCurveTA -n "Arm_Wrist_R_JNT1_rotateY";
	rename -uid "D2A13F2F-4F3F-25D7-04C0-F392939236ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -0.51119619607925404 1 -1.2320430278778078
		 2 -1.9316853284835818 3 -1.9667958021163938 4 -1.701171398162842 5 -1.7181476354599001
		 6 -1.7126766443252566 7 -1.1147240400314331 8 -0.10658998787403086 9 0.25482416152954085
		 10 -0.26258346438407904 11 -0.87228757143020641 12 -1.7915960550308221 13 -2.6757857799530029
		 14 -4.255549430847168 15 -7.0675477981567383 16 -8.3384542465209961 17 -7.5737786293029785
		 18 -7.1383733749389648 19 -6.9128022193908674 20 -5.6051840782165518 21 -4.7752408981323251
		 22 -4.9296340942382821 23 -4.8689227104187012 24 -5.3407630920410165 25 -6.0783953666687029
		 26 -6.3505463600158683 27 -5.9924044609069833 28 -7.0456886291503915 29 -9.7828330993652326
		 30 -12.377112388610845 31 -13.113298416137699 32 -14.148938179016117 33 -16.801864624023441
		 34 -15.205150604248047 35 -7.7774629592895534 36 -4.1144862174987793 37 -3.1053359508514409
		 38 -3.4612553119659424 39 -7.6422300338745135 40 4.4434366226196298 41 19.701780319213867
		 42 20.140134811401364 43 5.5387463569641131 44 -17.726308822631836 45 -26.831375122070316
		 46 -24.038715362548828 47 -15.722684860229496 48 -6.2541708946228045 49 -6.3359513282775897
		 50 -21.051191329956055 51 -26.66572570800782 52 -23.486948013305661 53 -23.136791229248043
		 54 -23.162927627563477 55 -22.704565048217777 56 -23.784809112548828 57 -24.005859375000004
		 58 -17.544898986816406 59 -10.147787094116213 60 -5.9229207038879386 61 -0.82871687412261963
		 62 -0.68492329120635986 63 -3.1936695575714107 64 -4.2299861907958993 65 -5.1464428901672363
		 66 -0.77184146642684937 67 7.7853264808654812 68 5.4595909118652344 69 3.2942450046539293
		 70 11.34790515899658 71 10.687966346740721 72 1.1757092475891113 73 -2.6818070411682138
		 74 -1.528788089752197 75 2.0002541542053223 76 4.6075739860534668 77 4.882117271423339
		 78 3.4236888885498047 79 1.8031584024429326 80 3.0418860912323011 81 6.3714962005615234
		 82 5.2214207649230948 83 1.8235523700714105 84 -0.56140553951263428 85 -3.9509828090667729
		 86 -5.5083937644958496 87 -4.954437732696535 88 -6.0415096282959011 89 -8.0023326873779279
		 90 -9.5871572494506871 91 -10.214157104492189 92 -10.730855941772461 93 -11.242480278015137
		 94 -11.849956512451174 95 -12.882262229919434 96 -12.509477615356445 97 -11.11310863494873
		 98 -10.803311347961428 99 -10.715893745422367 100 -10.672080039978024 101 -10.676766395568848
		 102 -10.198930740356444 103 -9.7791204452514666 104 -9.7154703140258789 105 -9.3945598602294904
		 106 -9.027427673339842 107 -9.0226449966430664 108 -9.203610420227049 109 -8.6467533111572266
		 110 -6.8646497726440439 111 -5.7517137527465829 112 -4.6836023330688494 113 -3.4008507728576656
		 114 -3.5807387828826913 115 -4.4214568138122559 116 -4.3013825416564941 117 -4.208897590637207
		 118 -4.0576210021972656 119 -3.841318130493165 120 -3.4557383060455322 121 -1.3830128908157351
		 122 0.9242039322853085 123 1.3234649896621706 124 0.82567018270492565 125 0.21841815114021301
		 126 -0.88857251405715965 127 -1.5838533639907837 128 -1.5324652194976807 129 -1.7991071939468393
		 130 -2.3442544937133807 131 -3.0398831367492667 132 -3.5527036190032963 133 -3.9006481170654306
		 134 -4.4560585021972656 135 -4.7231454849243164 136 -4.6388630867004412;
createNode animCurveTA -n "Arm_Wrist_R_JNT1_rotateZ";
	rename -uid "29EDFEE0-4536-8C00-1C45-42969F6C6B5F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -2.33371901512146 1 -3.072046279907227
		 2 -5.0411796569824228 3 -6.9146704673767081 4 -7.4602832794189471 5 -6.2565727233886728
		 6 -4.6681652069091797 7 -3.8920364379882813 8 -3.4259004592895499 9 -2.8812646865844722
		 10 -2.2441635131835942 11 -1.1149835586547852 12 1.0802882909774778 13 2.4850695133209229
		 14 2.1043672561645512 15 1.4116926193237305 16 0.56082314252853449 17 -0.69055414199829079
		 18 -1.2168766260147097 19 -0.99682462215423628 20 -1.1071239709854126 21 -0.52792006731033347
		 22 0.84078884124755859 23 1.7179721593856816 24 2.9882156848907475 25 4.6705870628356934
		 26 4.855252742767334 27 4.5019583702087402 28 5.6569800376892099 29 7.0000162124633789
		 30 7.596323490142824 31 8.0510625839233398 32 6.1110043525695801 33 1.3694033622741701
		 34 1.234694361686707 35 7.1292457580566406 36 16.935173034667965 37 25.777553558349613
		 38 27.32197570800782 39 21.151573181152344 40 21.125820159912109 41 41.428546905517585
		 42 48.678756713867188 43 23.49246788024902 44 -7.0757102966308603 45 -17.930751800537113
		 46 -16.489017486572269 47 -9.9771747589111346 48 -9.2832336425781268 49 -11.244297981262205
		 50 -9.1010494232177752 51 -8.5144147872924805 52 -10.286996841430668 53 -14.395412445068361
		 54 -17.2862663269043 55 -16.535228729248047 56 -17.980756759643555 57 -20.04956245422364
		 58 -15.536280632019043 59 -10.409276962280273 60 -4.1986174583435059 61 3.763173580169676
		 62 6.8611721992492676 63 6.3185992240905771 64 5.6950378417968759 65 6.9445252418518075
		 66 3.9742379188537602 67 -2.1140911579132089 68 -1.2462830543518066 69 0.36115941405296331
		 70 1.8873908519744871 71 8.5272130966186523 72 17.584409713745117 73 23.74569129943848
		 74 25.188041687011712 75 23.939590454101555 76 21.53477668762207 77 17.509859085083008
		 78 12.874215126037605 79 10.578959465026855 80 10.56599044799805 81 9.4686975479126012
		 82 5.5182604789733896 83 0.79843115806579601 84 -2.2977032661437993 85 -3.1327559947967538
		 86 -5.4472503662109393 87 -7.9248833656311053 88 -8.0611658096313494 89 -9.517207145690918
		 90 -11.045468330383303 91 -11.012663841247562 92 -12.270128250122074 93 -15.098633766174316
		 94 -18.815778732299808 95 -20.437494277954098 96 -15.819045066833496 97 -11.146410942077638
		 98 -11.638869285583498 99 -12.519331932067875 100 -12.731249809265133 101 -13.307056427001957
		 102 -13.879010200500485 103 -14.66525077819824 104 -15.764554023742676 105 -16.304559707641598
		 106 -15.764592170715332 107 -15.59768486022949 108 -16.205078124999993 109 -12.859879493713381
		 110 -6.8437371253967294 111 -5.7137613296508798 112 -7.6062889099121094 113 -8.5405616760253888
		 114 -7.486335754394533 115 -6.0069484710693342 116 -5.2060952186584473 117 -4.1451072692871094
		 118 -3.3521330356597887 119 -2.2607357501983647 120 -1.4510314464569087 121 -3.7371981143951429
		 122 -6.7515544891357413 123 -6.6479277610778835 124 -5.0899319648742676 125 -4.5163335800170898
		 126 -5.4069724082946804 127 -6.2889108657836914 128 -6.0573854446411133 129 -5.2499761581420907
		 130 -4.5634016990661639 131 -4.1106014251708984 132 -3.8000080585479732 133 -3.4446420669555673
		 134 -2.9044141769409175 135 -2.2357594966888428 136 -1.5843185186386113;
createNode animCurveTA -n "Foot_Ball_R_JNT1_rotateX";
	rename -uid "53E2DCAA-410D-DD71-D628-9793D86FC715";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 2.3456013877876111e-06 1 -2.2905626337887952e-06
		 2 0 3 0 4 1.3587657576863425e-06 5 -2.0801476239284966e-06 6 0 7 -0.4585921168327331
		 8 -0.19482657313346866 9 -1.3268346786499023 10 -6.3604931831359863 11 -10.050436973571779
		 12 -3.6354832649230957 13 0 14 -1.11817989818519e-05 15 -9.0000758063979447e-06 16 1.0711126378737388e-05
		 17 2.0325119294284377e-06 18 -7.2695042945269961e-06 19 3.0711869385413593e-06 20 1.7762382640285068e-06
		 21 -2.3652062282053525e-06 22 2.9467173590091993e-06 23 5.0082558118447196e-06 24 -7.2315951911150469e-06
		 25 0 26 6.8230883698561246e-06 27 0 28 -2.8850340640929062e-06 29 -1.706296643533278e-06
		 30 0 31 1.9760759641940236e-06 32 -1.1299600123008444e-29 33 1.9571875782276038e-06
		 34 1.7392984545949732e-06 35 -3.2528821520827482e-06 36 -1.4413703866011922e-05 37 -1.7231071979040283e-05
		 38 -3.8186120946193114e-05 39 -0.00011879741941811514 40 -0.00055230443831533183
		 41 7.0678133964538601 42 17.516355514526367 43 8.4857568740844744 44 9.4162244796752965
		 45 16.517812728881829 46 9.2314014434814453 47 1.051283597946167 48 1.2772793525073212e-06
		 49 3.6434237244975512e-06 50 5.4434890444099437e-06 51 -3.6158720393629218e-28 52 -9.3736016424372792e-06
		 53 4.5198400492033904e-29 54 5.6498000615042093e-30 55 -2.1443690911837629e-06 56 -1.0276398825226352e-05
		 57 -5.6309218406677255 58 -13.98810863494873 59 -5.1623754501342773 60 -0.0095020607113838213
		 61 -0.86271601915359508 62 -2.3155596256256108 63 -1.4503717422485352 64 -0.4417976438999176
		 65 -0.18641823530197146 66 -8.0769495980348455e-06 67 3.9398209992214106e-06 68 -7.527523393946467e-06
		 69 5.8346522564534115e-06 70 -3.9548945096612434e-06 71 -1.7943408465725948e-06 72 -2.2599200246017134e-29
		 73 -2.9599123081425209e-06 74 2.2599200246017003e-29 75 0 76 1.2902964954264464e-06
		 77 -3.4068891636707126e-06 78 -5.374291504267604e-06 79 4.2836277316382612e-06 80 5.9747048908320713e-06
		 81 -3.4349848192505314e-06 82 -3.4823356145352578e-06 83 -1.3035789834248139e-06
		 84 -2.8200447559356698e-06 85 0 86 1.5707890952398886e-06 87 0 88 2.2599200246016893e-29
		 89 1.4822174989603809e-06 90 -5.6498000615042093e-30 91 -4.8759607125248303e-06 92 0
		 93 -2.8759538963640803e-06 94 -1.5261816770362204e-06 95 -1.8821328922058454e-06
		 96 0 97 4.5198400492034656e-29 98 1.798435278033139e-06 99 -1.5014539712865371e-05
		 100 -6.5859341702889638e-05 101 -0.00012369095929898319 102 -0.00013689824845641849
		 103 -9.9016382591798902e-05 104 -0.11318104714155193 105 -0.19751137495040891 106 -0.24613946676254272
		 107 -0.28164556622505188 108 -0.28260496258735662 109 -0.23659782111644753 110 -0.18613097071647644
		 111 -0.15020492672920233 112 -0.10901326686143875 113 -0.053381841629743576 114 0
		 115 3.2862735679373149e-06 116 0 117 3.1578756534145209e-06 118 -3.7897148104093499e-06
		 119 -5.6327266975131352e-06 120 2.8677563932433259e-06 121 0 122 3.2444143016618909e-06
		 123 2.2302260731521537e-06 124 -3.2679679407010562e-06 125 1.2076735629307225e-06
		 126 0 127 1.7523612996228626e-06 128 2.3429170141753275e-06 129 -2.0955462787242145e-06
		 130 2.818684606609168e-06 131 5.6498000615042093e-30 132 6.3231682361220018e-06 133 0
		 134 0 135 2.6891559627983948e-06 136 -2.7230801151745258e-06;
createNode animCurveTA -n "Foot_Ball_R_JNT1_rotateY";
	rename -uid "0C270F2D-432B-3750-6DBA-DB8F8E7D07C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -4.8960332605929597e-06 1 -1.6190554106287891e-06
		 2 1.6414192032243591e-06 3 6.5163803810719409e-06 4 8.2302567534497956e-06 5 1.5920045370876326e-06
		 6 -6.5157082644873307e-06 7 1.5441445384567489e-06 8 4.4441480895329741e-06 9 0.013098123483359812
		 10 0.18496093153953552 11 0.25054475665092468 12 0 13 0 14 4.1499961298541174e-06
		 15 0 16 -3.5479934012982994e-06 17 2.2373562842403776e-06 18 -3.6864939829683871e-06
		 19 0 20 0 21 3.2381017263105613e-06 22 3.6966216612199787e-06 23 -1.3962761613584013e-06
		 24 -1.547729198136949e-06 25 -2.9980719773448068e-06 26 7.3759556471486593e-06 27 4.279234872228698e-06
		 28 -1.5796859997863064e-06 29 4.9776317609939716e-06 30 1.5089540283952374e-06 31 -3.056923560507129e-06
		 32 -4.6228815335780382e-06 33 0 34 0 35 1.5406377542603882e-06 36 -3.1126617159316079e-06
		 37 3.1250151550921146e-06 38 -7.8008069976931421e-06 39 -1.5520251963607736e-06 40 1.5547952898486985e-06
		 41 8.5300207501859438e-06 42 2.3696978997167331e-23 43 3.5551551263779402e-05 44 -9.3609851319342902e-06
		 45 3.5261873563285903e-05 46 1.9568820789572786e-05 47 4.1749932279344655e-05 48 1.1156519576616121e-05
		 49 1.3039441910223104e-05 50 -4.758686827699421e-06 51 -2.046983354375698e-05 52 7.8171433415263908e-06
		 53 6.2069357227301242e-06 54 -2.6794807581609348e-06 55 1.0012458005803639e-05 56 3.0287367280834587e-06
		 57 0 58 0.65912479162216198 59 0 60 -7.3966211857623429e-06 61 -1.9383513063075956e-05
		 62 5.3239564294926831e-06 63 -5.2661789595731543e-06 64 -7.4216159191564674e-06 65 4.823191829927965e-06
		 66 1.7030142771545794e-05 67 -7.4198455877194621e-06 68 4.7940125114109833e-06 69 -1.1299600123008409e-29
		 70 -1.0018796274380293e-05 71 7.3977457759610834e-06 72 9.5886671260814182e-06 73 -1.1299600123008409e-29
		 74 7.4967852015106448e-06 75 9.6087269412237253e-06 76 0 77 4.8727679313742556e-06
		 78 7.0599780883640059e-06 79 1.2049624274368396e-05 80 0 81 1.7036301869666207e-05
		 82 -4.8649344535078853e-06 83 -9.6003977887448855e-06 84 -5.6498000615042058e-30
		 85 -4.8085526032082271e-06 86 2.8249000307521022e-30 87 0 88 4.7998282752814711e-06
		 89 4.8000638344092295e-06 90 2.666722821231815e-06 91 -7.467126579285833e-06 92 -4.7997868932725404e-06
		 93 0 94 -2.6686552700994071e-06 95 1.7067617591237649e-05 96 9.5994355433504114e-06
		 97 1.2267469173821157e-05 98 2.6669042654248192e-06 99 2.1351115719880913e-06 100 -4.8010087994043715e-06
		 101 1.7065709471353326e-05 102 -1.4922847185516728e-05 103 -7.4598528954084048e-06
		 104 -4.7961275413399562e-06 105 -2.4548284272896133e-05 106 1.705852264421992e-05
		 107 2.66716360783903e-05 108 1.4418729733733924e-05 109 0 110 -2.883978231693618e-05
		 111 -6.9560865085804852e-06 112 -1.9719353076652624e-05 113 4.7994581109378487e-06
		 114 2.6561976937955478e-06 115 -1.2261556548764931e-05 116 0 117 9.6062240118044445e-06
		 118 0 119 -4.8036640691861976e-06 120 -7.4557742664183007e-06 121 -2.6524260192672951e-06
		 122 2.6517566311667906e-06 123 -1.4410009498533329e-05 124 9.6045705504366214e-06
		 125 1.7065030988305807e-05 126 2.6587974844005657e-06 127 1.2263920325494839e-05
		 128 1.9726119717233818e-05 129 0 130 7.4633917392930033e-06 131 2.6613095087668626e-06
		 132 6.9421139414771477e-06 133 -1.2264974429854194e-05 134 4.8012457227741851e-06
		 135 7.4617682912503386e-06 136 0;
createNode animCurveTA -n "Foot_Ball_R_JNT1_rotateZ";
	rename -uid "3D3EB128-49E9-7805-D316-11AC49DEFB86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -1.1299600123008448e-29 1 -5.6498000615042058e-30
		 2 0 3 0 4 -1.1299600123008527e-29 5 0 6 0 7 7.4053059366147927e-25 8 0 9 1.284460186958313
		 10 2.0451650619506836 11 1.5623037815093996 12 0 13 0 14 -1.3740104805037851e-06
		 15 0 16 0 17 -2.5020183329615971e-06 18 1.7636929214859269e-06 19 0 20 0 21 0 22 -1.4927210258974812e-06
		 23 -3.5072312130068894e-06 24 -4.6056870814936684e-06 25 0 26 -9.0396800984068033e-29
		 27 1.7589812841833914e-06 28 -5.6498000615042058e-30 29 3.4477402550692192e-06 30 0
		 31 1.1299600123008421e-29 32 2.1241714875941402e-06 33 0 34 0 35 5.6498000615042065e-30
		 36 -4.5198400492033686e-29 37 -9.0396800984067394e-29 38 -3.6158720393627236e-28
		 39 -1.8079360196813459e-28 40 0 41 -5.1885513130400804e-06 42 1.2610021258296911e-06
		 43 7.5319421739550299e-06 44 1.4822763887423209e-06 45 1.2931675883010026e-05 46 -2.3868808511906536e-06
		 47 1.4356430710904535e-06 48 0 49 5.7014340200112201e-06 50 4.4615367187361699e-06
		 51 1.3407195183390288e-05 52 -5.9064059314550849e-06 53 4.4219605115358735e-06 54 1.597298137312464e-06
		 55 -2.6758414151117904e-06 56 -4.5198400492033697e-29 57 2.4217331429099435e-06 58 3.0566630363464351
		 59 0 60 -3.6074688978260387e-06 61 -4.7131279643508606e-06 62 -2.3696978997167436e-23
		 63 1.1848489498583712e-23 64 0 65 1.3610000451080855e-06 66 1.2783743841282558e-06
		 67 1.8278919924341608e-06 68 1.2720397535304073e-06 69 -1.22699418625416e-06 70 -4.5198400492034308e-29
		 71 2.2599200246017003e-29 72 1.7205422864208229e-06 73 2.8269382710277577e-06 74 -1.9218409761379003e-06
		 75 0 76 2.5056501726794522e-06 77 -1.3995031622471292e-06 78 -1.469380890739558e-06
		 79 4.8482197598787025e-06 80 -1.4927464917491309e-06 81 0 82 1.6404610505560413e-06
		 83 0 84 1.8140349311579491e-06 85 1.5435078921655079e-06 86 1.2689438335655723e-06
		 87 0 88 3.5208090594096571e-06 89 0 90 1.5689776091676324e-06 91 0 92 2.5177093903039345e-06
		 93 0 94 0 95 0 96 0 97 -2.6371292278781766e-06 98 -5.6498000615042093e-30 99 0 100 -3.6158720393627034e-28
		 101 1.8042064766632399e-06 102 -3.0145399705361338e-06 103 4.9577715799387079e-06
		 104 1.7099104070439357e-06 105 -3.920409199054121e-06 106 0 107 1.184848949858495e-23
		 108 5.9242447492920193e-24 109 0 110 -1.7178333564515928e-06 111 0 112 -2.9621223746460912e-24
		 113 -1.7104803191614339e-06 114 0 115 0 116 -1.2406369478412671e-06 117 0 118 0 119 2.0270811091904766e-06
		 120 1.7123103361882382e-06 121 4.3191980694246013e-06 122 -1.1299600123008419e-29
		 123 3.7287436498445459e-06 124 -1.574496650391666e-06 125 -2.2599200246017821e-29
		 126 0 127 0 128 2.7915498321817726e-06 129 0 130 -2.2599200246017008e-29 131 -1.3397375369095244e-06
		 132 -1.3123971029926908e-06 133 0 134 -2.0800591755687496e-06 135 -4.5592128117277744e-06
		 136 -1.3012266890655157e-06;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "2304CFD6-4410-F72C-BE55-1BBCB9FA791A";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -421.42855468250531 -324.99998708566085 ;
	setAttr ".tgi[0].vh" -type "double2" 421.42855468250531 323.80951094248991 ;
	setAttr -s 314 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 2655.71435546875;
	setAttr ".tgi[0].ni[0].y" 12640;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 2655.71435546875;
	setAttr ".tgi[0].ni[1].y" 16488.572265625;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" -118.57142639160156;
	setAttr ".tgi[0].ni[2].y" 8182.85693359375;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 2981.428466796875;
	setAttr ".tgi[0].ni[3].y" 10318.5712890625;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[4].y" 2140;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 2655.71435546875;
	setAttr ".tgi[0].ni[5].y" 10860;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 188.57142639160156;
	setAttr ".tgi[0].ni[6].y" 157.14285278320313;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 495.71429443359375;
	setAttr ".tgi[0].ni[7].y" -4298.5712890625;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 2981.428466796875;
	setAttr ".tgi[0].ni[8].y" 10622.857421875;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 2655.71435546875;
	setAttr ".tgi[0].ni[9].y" 11164.2861328125;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 802.85711669921875;
	setAttr ".tgi[0].ni[10].y" -4711.4287109375;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 2655.71435546875;
	setAttr ".tgi[0].ni[11].y" 15360;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 495.71429443359375;
	setAttr ".tgi[0].ni[12].y" -5262.85693359375;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 2348.571533203125;
	setAttr ".tgi[0].ni[13].y" -1574.2857666015625;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 2655.71435546875;
	setAttr ".tgi[0].ni[14].y" 12437.142578125;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 2655.71435546875;
	setAttr ".tgi[0].ni[15].y" 13484.2861328125;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 2348.571533203125;
	setAttr ".tgi[0].ni[16].y" -3101.428466796875;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 2655.71435546875;
	setAttr ".tgi[0].ni[17].y" 1088.5714111328125;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 2655.71435546875;
	setAttr ".tgi[0].ni[18].y" 9941.4287109375;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 188.57142639160156;
	setAttr ".tgi[0].ni[19].y" -5047.14306640625;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 2655.71435546875;
	setAttr ".tgi[0].ni[20].y" 12842.857421875;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 2655.71435546875;
	setAttr ".tgi[0].ni[21].y" -13301.4287109375;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[22].y" -4472.85693359375;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[23].y" 1531.4285888671875;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[24].y" 1937.142822265625;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 495.71429443359375;
	setAttr ".tgi[0].ni[25].y" -4501.4287109375;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 495.71429443359375;
	setAttr ".tgi[0].ni[26].y" -6855.71435546875;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[27].y" 1835.7142333984375;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[28].y" -1118.5714111328125;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[29].y" -1524.2857666015625;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" -2268.571533203125;
	setAttr ".tgi[0].ni[30].y" 14822.857421875;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 2348.571533203125;
	setAttr ".tgi[0].ni[31].y" -1971.4285888671875;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 2981.428466796875;
	setAttr ".tgi[0].ni[32].y" 16708.572265625;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 2655.71435546875;
	setAttr ".tgi[0].ni[33].y" 15672.857421875;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 802.85711669921875;
	setAttr ".tgi[0].ni[34].y" -4552.85693359375;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[35].y" -2900;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 2981.428466796875;
	setAttr ".tgi[0].ni[36].y" 11028.5712890625;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 2348.571533203125;
	setAttr ".tgi[0].ni[37].y" -7528.5712890625;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 2981.428466796875;
	setAttr ".tgi[0].ni[38].y" 10420;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 2981.428466796875;
	setAttr ".tgi[0].ni[39].y" 12144.2861328125;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 188.57142639160156;
	setAttr ".tgi[0].ni[40].y" -5434.28564453125;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[41].y" 2647.142822265625;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" -1347.142822265625;
	setAttr ".tgi[0].ni[42].y" 12374.2861328125;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[43].y" 1328.5714111328125;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 2655.71435546875;
	setAttr ".tgi[0].ni[44].y" 13585.7138671875;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 2981.428466796875;
	setAttr ".tgi[0].ni[45].y" 10521.4287109375;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 1110;
	setAttr ".tgi[0].ni[46].y" -9577.142578125;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" -1961.4285888671875;
	setAttr ".tgi[0].ni[47].y" 11312.857421875;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[48].y" -1828.5714111328125;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[49].y" 764.28570556640625;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 2348.571533203125;
	setAttr ".tgi[0].ni[50].y" 4484.28564453125;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 2981.428466796875;
	setAttr ".tgi[0].ni[51].y" 12347.142578125;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" 2655.71435546875;
	setAttr ".tgi[0].ni[52].y" 8197.142578125;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" -2575.71435546875;
	setAttr ".tgi[0].ni[53].y" 15847.142578125;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 2981.428466796875;
	setAttr ".tgi[0].ni[54].y" 10927.142578125;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 2981.428466796875;
	setAttr ".tgi[0].ni[55].y" 13158.5712890625;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" 2981.428466796875;
	setAttr ".tgi[0].ni[56].y" 11535.7138671875;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[57].y" 54.285713195800781;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" 802.85711669921875;
	setAttr ".tgi[0].ni[58].y" -4191.4287109375;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" 2655.71435546875;
	setAttr ".tgi[0].ni[59].y" 13991.4287109375;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" 2981.428466796875;
	setAttr ".tgi[0].ni[60].y" 11637.142578125;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" 2655.71435546875;
	setAttr ".tgi[0].ni[61].y" 10042.857421875;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" 802.85711669921875;
	setAttr ".tgi[0].ni[62].y" -7347.14306640625;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" 188.57142639160156;
	setAttr ".tgi[0].ni[63].y" 44.285713195800781;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[64].y" -2595.71435546875;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" 2655.71435546875;
	setAttr ".tgi[0].ni[65].y" -14088.5712890625;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" -118.57142639160156;
	setAttr ".tgi[0].ni[66].y" 1978.5714111328125;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[67].y" -814.28570556640625;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" 2981.428466796875;
	setAttr ".tgi[0].ni[68].y" 12955.7138671875;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" -732.85711669921875;
	setAttr ".tgi[0].ni[69].y" 6200;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" 2981.428466796875;
	setAttr ".tgi[0].ni[70].y" 11840;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[71].y" 2545.71435546875;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" 2655.71435546875;
	setAttr ".tgi[0].ni[72].y" 11062.857421875;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" -425.71429443359375;
	setAttr ".tgi[0].ni[73].y" 3202.857177734375;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" 2348.571533203125;
	setAttr ".tgi[0].ni[74].y" -5511.4287109375;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" 495.71429443359375;
	setAttr ".tgi[0].ni[75].y" 7028.5712890625;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[76].y" -4777.14306640625;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" -425.71429443359375;
	setAttr ".tgi[0].ni[77].y" 8935.7138671875;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" 2655.71435546875;
	setAttr ".tgi[0].ni[78].y" -1471.4285888671875;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[79].y" -3102.857177734375;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" 2655.71435546875;
	setAttr ".tgi[0].ni[80].y" 9072.857421875;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[81].y" -1017.1428833007813;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" 2981.428466796875;
	setAttr ".tgi[0].ni[82].y" 14274.2861328125;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" 495.71429443359375;
	setAttr ".tgi[0].ni[83].y" -9057.142578125;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" 802.85711669921875;
	setAttr ".tgi[0].ni[84].y" -7905.71435546875;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" 2348.571533203125;
	setAttr ".tgi[0].ni[85].y" 2142.857177734375;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" 2981.428466796875;
	setAttr ".tgi[0].ni[86].y" 14984.2861328125;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[87].y" -2031.4285888671875;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" 495.71429443359375;
	setAttr ".tgi[0].ni[88].y" -5922.85693359375;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" 802.85711669921875;
	setAttr ".tgi[0].ni[89].y" -7074.28564453125;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[90].y" -16300;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" 802.85711669921875;
	setAttr ".tgi[0].ni[91].y" -4394.28564453125;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" 2981.428466796875;
	setAttr ".tgi[0].ni[92].y" 14477.142578125;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" 188.57142639160156;
	setAttr ".tgi[0].ni[93].y" -4457.14306640625;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" 2981.428466796875;
	setAttr ".tgi[0].ni[94].y" 13260;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[95].y" -1321.4285888671875;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[96].y" 2850;
	setAttr ".tgi[0].ni[96].nvs" 18304;
	setAttr ".tgi[0].ni[97].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[97].y" 2444.28564453125;
	setAttr ".tgi[0].ni[97].nvs" 18304;
	setAttr ".tgi[0].ni[98].x" -2268.571533203125;
	setAttr ".tgi[0].ni[98].y" 12554.2861328125;
	setAttr ".tgi[0].ni[98].nvs" 18304;
	setAttr ".tgi[0].ni[99].x" 2655.71435546875;
	setAttr ".tgi[0].ni[99].y" 13382.857421875;
	setAttr ".tgi[0].ni[99].nvs" 18304;
	setAttr ".tgi[0].ni[100].x" 2981.428466796875;
	setAttr ".tgi[0].ni[100].y" 14781.4287109375;
	setAttr ".tgi[0].ni[100].nvs" 18304;
	setAttr ".tgi[0].ni[101].x" 2655.71435546875;
	setAttr ".tgi[0].ni[101].y" 16811.427734375;
	setAttr ".tgi[0].ni[101].nvs" 18304;
	setAttr ".tgi[0].ni[102].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[102].y" -1625.7142333984375;
	setAttr ".tgi[0].ni[102].nvs" 18304;
	setAttr ".tgi[0].ni[103].x" 802.85711669921875;
	setAttr ".tgi[0].ni[103].y" -4292.85693359375;
	setAttr ".tgi[0].ni[103].nvs" 18304;
	setAttr ".tgi[0].ni[104].x" 188.57142639160156;
	setAttr ".tgi[0].ni[104].y" -272.85714721679688;
	setAttr ".tgi[0].ni[104].nvs" 18304;
	setAttr ".tgi[0].ni[105].x" 2655.71435546875;
	setAttr ".tgi[0].ni[105].y" 15774.2861328125;
	setAttr ".tgi[0].ni[105].nvs" 18304;
	setAttr ".tgi[0].ni[106].x" -425.71429443359375;
	setAttr ".tgi[0].ni[106].y" 10225.7138671875;
	setAttr ".tgi[0].ni[106].nvs" 18304;
	setAttr ".tgi[0].ni[107].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[107].y" 865.71429443359375;
	setAttr ".tgi[0].ni[107].nvs" 18304;
	setAttr ".tgi[0].ni[108].x" 495.71429443359375;
	setAttr ".tgi[0].ni[108].y" 8641.4287109375;
	setAttr ".tgi[0].ni[108].nvs" 18304;
	setAttr ".tgi[0].ni[109].x" -1347.142822265625;
	setAttr ".tgi[0].ni[109].y" 9222.857421875;
	setAttr ".tgi[0].ni[109].nvs" 18304;
	setAttr ".tgi[0].ni[110].x" 2981.428466796875;
	setAttr ".tgi[0].ni[110].y" 15998.5712890625;
	setAttr ".tgi[0].ni[110].nvs" 18304;
	setAttr ".tgi[0].ni[111].x" 2981.428466796875;
	setAttr ".tgi[0].ni[111].y" 11941.4287109375;
	setAttr ".tgi[0].ni[111].nvs" 18304;
	setAttr ".tgi[0].ni[112].x" 2981.428466796875;
	setAttr ".tgi[0].ni[112].y" 10825.7138671875;
	setAttr ".tgi[0].ni[112].nvs" 18304;
	setAttr ".tgi[0].ni[113].x" -425.71429443359375;
	setAttr ".tgi[0].ni[113].y" 9951.4287109375;
	setAttr ".tgi[0].ni[113].nvs" 18304;
	setAttr ".tgi[0].ni[114].x" 2655.71435546875;
	setAttr ".tgi[0].ni[114].y" 10758.5712890625;
	setAttr ".tgi[0].ni[114].nvs" 18304;
	setAttr ".tgi[0].ni[115].x" 802.85711669921875;
	setAttr ".tgi[0].ni[115].y" -6744.28564453125;
	setAttr ".tgi[0].ni[115].nvs" 18304;
	setAttr ".tgi[0].ni[116].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[116].y" -3578.571533203125;
	setAttr ".tgi[0].ni[116].nvs" 18304;
	setAttr ".tgi[0].ni[117].x" 2655.71435546875;
	setAttr ".tgi[0].ni[117].y" 11468.5712890625;
	setAttr ".tgi[0].ni[117].nvs" 18304;
	setAttr ".tgi[0].ni[118].x" -425.71429443359375;
	setAttr ".tgi[0].ni[118].y" 10382.857421875;
	setAttr ".tgi[0].ni[118].nvs" 18304;
	setAttr ".tgi[0].ni[119].x" 495.71429443359375;
	setAttr ".tgi[0].ni[119].y" -4140;
	setAttr ".tgi[0].ni[119].nvs" 18304;
	setAttr ".tgi[0].ni[120].x" 2981.428466796875;
	setAttr ".tgi[0].ni[120].y" 15897.142578125;
	setAttr ".tgi[0].ni[120].nvs" 18304;
	setAttr ".tgi[0].ni[121].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[121].y" 155.71427917480469;
	setAttr ".tgi[0].ni[121].nvs" 18304;
	setAttr ".tgi[0].ni[122].x" 802.85711669921875;
	setAttr ".tgi[0].ni[122].y" -2902.857177734375;
	setAttr ".tgi[0].ni[122].nvs" 18304;
	setAttr ".tgi[0].ni[123].x" 495.71429443359375;
	setAttr ".tgi[0].ni[123].y" -4400;
	setAttr ".tgi[0].ni[123].nvs" 18304;
	setAttr ".tgi[0].ni[124].x" 2348.571533203125;
	setAttr ".tgi[0].ni[124].y" -14700;
	setAttr ".tgi[0].ni[124].nvs" 18304;
	setAttr ".tgi[0].ni[125].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[125].y" -2798.571533203125;
	setAttr ".tgi[0].ni[125].nvs" 18304;
	setAttr ".tgi[0].ni[126].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[126].y" -1930;
	setAttr ".tgi[0].ni[126].nvs" 18304;
	setAttr ".tgi[0].ni[127].x" 2348.571533203125;
	setAttr ".tgi[0].ni[127].y" -14427.142578125;
	setAttr ".tgi[0].ni[127].nvs" 18304;
	setAttr ".tgi[0].ni[128].x" -1040;
	setAttr ".tgi[0].ni[128].y" 11355.7138671875;
	setAttr ".tgi[0].ni[128].nvs" 18304;
	setAttr ".tgi[0].ni[129].x" 2981.428466796875;
	setAttr ".tgi[0].ni[129].y" 15085.7138671875;
	setAttr ".tgi[0].ni[129].nvs" 18304;
	setAttr ".tgi[0].ni[130].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[130].y" 460;
	setAttr ".tgi[0].ni[130].nvs" 18304;
	setAttr ".tgi[0].ni[131].x" 2655.71435546875;
	setAttr ".tgi[0].ni[131].y" 8971.4287109375;
	setAttr ".tgi[0].ni[131].nvs" 18304;
	setAttr ".tgi[0].ni[132].x" 2981.428466796875;
	setAttr ".tgi[0].ni[132].y" 12854.2861328125;
	setAttr ".tgi[0].ni[132].nvs" 18304;
	setAttr ".tgi[0].ni[133].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[133].y" 967.14288330078125;
	setAttr ".tgi[0].ni[133].nvs" 18304;
	setAttr ".tgi[0].ni[134].x" 495.71429443359375;
	setAttr ".tgi[0].ni[134].y" -7014.28564453125;
	setAttr ".tgi[0].ni[134].nvs" 18304;
	setAttr ".tgi[0].ni[135].x" 2981.428466796875;
	setAttr ".tgi[0].ni[135].y" 14680;
	setAttr ".tgi[0].ni[135].nvs" 18304;
	setAttr ".tgi[0].ni[136].x" -118.57142639160156;
	setAttr ".tgi[0].ni[136].y" 9938.5712890625;
	setAttr ".tgi[0].ni[136].nvs" 18304;
	setAttr ".tgi[0].ni[137].x" 188.57142639160156;
	setAttr ".tgi[0].ni[137].y" -3911.428466796875;
	setAttr ".tgi[0].ni[137].nvs" 18304;
	setAttr ".tgi[0].ni[138].x" 1724.2857666015625;
	setAttr ".tgi[0].ni[138].y" 2912.857177734375;
	setAttr ".tgi[0].ni[138].nvs" 18304;
	setAttr ".tgi[0].ni[139].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[139].y" 3052.857177734375;
	setAttr ".tgi[0].ni[139].nvs" 18304;
	setAttr ".tgi[0].ni[140].x" 2981.428466796875;
	setAttr ".tgi[0].ni[140].y" 15288.5712890625;
	setAttr ".tgi[0].ni[140].nvs" 18304;
	setAttr ".tgi[0].ni[141].x" 2655.71435546875;
	setAttr ".tgi[0].ni[141].y" 10454.2861328125;
	setAttr ".tgi[0].ni[141].nvs" 18304;
	setAttr ".tgi[0].ni[142].x" 2655.71435546875;
	setAttr ".tgi[0].ni[142].y" 12538.5712890625;
	setAttr ".tgi[0].ni[142].nvs" 18304;
	setAttr ".tgi[0].ni[143].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[143].y" -2190;
	setAttr ".tgi[0].ni[143].nvs" 18304;
	setAttr ".tgi[0].ni[144].x" 2655.71435546875;
	setAttr ".tgi[0].ni[144].y" 12234.2861328125;
	setAttr ".tgi[0].ni[144].nvs" 18304;
	setAttr ".tgi[0].ni[145].x" 2981.428466796875;
	setAttr ".tgi[0].ni[145].y" 10724.2861328125;
	setAttr ".tgi[0].ni[145].nvs" 18304;
	setAttr ".tgi[0].ni[146].x" 2655.71435546875;
	setAttr ".tgi[0].ni[146].y" 16078.5712890625;
	setAttr ".tgi[0].ni[146].nvs" 18304;
	setAttr ".tgi[0].ni[147].x" 2981.428466796875;
	setAttr ".tgi[0].ni[147].y" 14172.857421875;
	setAttr ".tgi[0].ni[147].nvs" 18304;
	setAttr ".tgi[0].ni[148].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[148].y" -4574.28564453125;
	setAttr ".tgi[0].ni[148].nvs" 18304;
	setAttr ".tgi[0].ni[149].x" 2981.428466796875;
	setAttr ".tgi[0].ni[149].y" 16607.142578125;
	setAttr ".tgi[0].ni[149].nvs" 18304;
	setAttr ".tgi[0].ni[150].x" 2981.428466796875;
	setAttr ".tgi[0].ni[150].y" 13564.2861328125;
	setAttr ".tgi[0].ni[150].nvs" 18304;
	setAttr ".tgi[0].ni[151].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[151].y" 2748.571533203125;
	setAttr ".tgi[0].ni[151].nvs" 18304;
	setAttr ".tgi[0].ni[152].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[152].y" 1227.142822265625;
	setAttr ".tgi[0].ni[152].nvs" 18304;
	setAttr ".tgi[0].ni[153].x" 2348.571533203125;
	setAttr ".tgi[0].ni[153].y" 5880;
	setAttr ".tgi[0].ni[153].nvs" 18304;
	setAttr ".tgi[0].ni[154].x" 2981.428466796875;
	setAttr ".tgi[0].ni[154].y" 12651.4287109375;
	setAttr ".tgi[0].ni[154].nvs" 18304;
	setAttr ".tgi[0].ni[155].x" 2981.428466796875;
	setAttr ".tgi[0].ni[155].y" 15592.857421875;
	setAttr ".tgi[0].ni[155].nvs" 18304;
	setAttr ".tgi[0].ni[156].x" 2655.71435546875;
	setAttr ".tgi[0].ni[156].y" 16927.142578125;
	setAttr ".tgi[0].ni[156].nvs" 18304;
	setAttr ".tgi[0].ni[157].x" 2981.428466796875;
	setAttr ".tgi[0].ni[157].y" 11231.4287109375;
	setAttr ".tgi[0].ni[157].nvs" 18304;
	setAttr ".tgi[0].ni[158].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[158].y" -2392.857177734375;
	setAttr ".tgi[0].ni[158].nvs" 18304;
	setAttr ".tgi[0].ni[159].x" 2981.428466796875;
	setAttr ".tgi[0].ni[159].y" 11434.2861328125;
	setAttr ".tgi[0].ni[159].nvs" 18304;
	setAttr ".tgi[0].ni[160].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[160].y" 2951.428466796875;
	setAttr ".tgi[0].ni[160].nvs" 18304;
	setAttr ".tgi[0].ni[161].x" -425.71429443359375;
	setAttr ".tgi[0].ni[161].y" 3361.428466796875;
	setAttr ".tgi[0].ni[161].nvs" 18304;
	setAttr ".tgi[0].ni[162].x" 2655.71435546875;
	setAttr ".tgi[0].ni[162].y" 13788.5712890625;
	setAttr ".tgi[0].ni[162].nvs" 18304;
	setAttr ".tgi[0].ni[163].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[163].y" -4270;
	setAttr ".tgi[0].ni[163].nvs" 18304;
	setAttr ".tgi[0].ni[164].x" 2981.428466796875;
	setAttr ".tgi[0].ni[164].y" 16201.4287109375;
	setAttr ".tgi[0].ni[164].nvs" 18304;
	setAttr ".tgi[0].ni[165].x" 2981.428466796875;
	setAttr ".tgi[0].ni[165].y" 16302.857421875;
	setAttr ".tgi[0].ni[165].nvs" 18304;
	setAttr ".tgi[0].ni[166].x" 2655.71435546875;
	setAttr ".tgi[0].ni[166].y" 13078.5712890625;
	setAttr ".tgi[0].ni[166].nvs" 18304;
	setAttr ".tgi[0].ni[167].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[167].y" -2494.28564453125;
	setAttr ".tgi[0].ni[167].nvs" 18304;
	setAttr ".tgi[0].ni[168].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[168].y" -4067.142822265625;
	setAttr ".tgi[0].ni[168].nvs" 18304;
	setAttr ".tgi[0].ni[169].x" 2981.428466796875;
	setAttr ".tgi[0].ni[169].y" 13665.7138671875;
	setAttr ".tgi[0].ni[169].nvs" 18304;
	setAttr ".tgi[0].ni[170].x" 2655.71435546875;
	setAttr ".tgi[0].ni[170].y" 13180;
	setAttr ".tgi[0].ni[170].nvs" 18304;
	setAttr ".tgi[0].ni[171].x" 2655.71435546875;
	setAttr ".tgi[0].ni[171].y" 15571.4287109375;
	setAttr ".tgi[0].ni[171].nvs" 18304;
	setAttr ".tgi[0].ni[172].x" 2655.71435546875;
	setAttr ".tgi[0].ni[172].y" 14194.2861328125;
	setAttr ".tgi[0].ni[172].nvs" 18304;
	setAttr ".tgi[0].ni[173].x" -425.71429443359375;
	setAttr ".tgi[0].ni[173].y" 8777.142578125;
	setAttr ".tgi[0].ni[173].nvs" 18304;
	setAttr ".tgi[0].ni[174].x" 2348.571533203125;
	setAttr ".tgi[0].ni[174].y" 1145.7142333984375;
	setAttr ".tgi[0].ni[174].nvs" 18304;
	setAttr ".tgi[0].ni[175].x" 802.85711669921875;
	setAttr ".tgi[0].ni[175].y" -6185.71435546875;
	setAttr ".tgi[0].ni[175].nvs" 18304;
	setAttr ".tgi[0].ni[176].x" 2981.428466796875;
	setAttr ".tgi[0].ni[176].y" 14578.5712890625;
	setAttr ".tgi[0].ni[176].nvs" 18304;
	setAttr ".tgi[0].ni[177].x" 802.85711669921875;
	setAttr ".tgi[0].ni[177].y" -4812.85693359375;
	setAttr ".tgi[0].ni[177].nvs" 18304;
	setAttr ".tgi[0].ni[178].x" 2981.428466796875;
	setAttr ".tgi[0].ni[178].y" 12752.857421875;
	setAttr ".tgi[0].ni[178].nvs" 18304;
	setAttr ".tgi[0].ni[179].x" 2655.71435546875;
	setAttr ".tgi[0].ni[179].y" 13890;
	setAttr ".tgi[0].ni[179].nvs" 18304;
	setAttr ".tgi[0].ni[180].x" 2655.71435546875;
	setAttr ".tgi[0].ni[180].y" 8667.142578125;
	setAttr ".tgi[0].ni[180].nvs" 18304;
	setAttr ".tgi[0].ni[181].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[181].y" 1430;
	setAttr ".tgi[0].ni[181].nvs" 18304;
	setAttr ".tgi[0].ni[182].x" 2655.71435546875;
	setAttr ".tgi[0].ni[182].y" 12977.142578125;
	setAttr ".tgi[0].ni[182].nvs" 18304;
	setAttr ".tgi[0].ni[183].x" 2981.428466796875;
	setAttr ".tgi[0].ni[183].y" 13361.4287109375;
	setAttr ".tgi[0].ni[183].nvs" 18304;
	setAttr ".tgi[0].ni[184].x" 2981.428466796875;
	setAttr ".tgi[0].ni[184].y" 13767.142578125;
	setAttr ".tgi[0].ni[184].nvs" 18304;
	setAttr ".tgi[0].ni[185].x" 2655.71435546875;
	setAttr ".tgi[0].ni[185].y" 9840;
	setAttr ".tgi[0].ni[185].nvs" 18304;
	setAttr ".tgi[0].ni[186].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[186].y" -2291.428466796875;
	setAttr ".tgi[0].ni[186].nvs" 18304;
	setAttr ".tgi[0].ni[187].x" 2981.428466796875;
	setAttr ".tgi[0].ni[187].y" 16810;
	setAttr ".tgi[0].ni[187].nvs" 18304;
	setAttr ".tgi[0].ni[188].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[188].y" -3362.857177734375;
	setAttr ".tgi[0].ni[188].nvs" 18304;
	setAttr ".tgi[0].ni[189].x" 2981.428466796875;
	setAttr ".tgi[0].ni[189].y" 11130;
	setAttr ".tgi[0].ni[189].nvs" 18304;
	setAttr ".tgi[0].ni[190].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[190].y" 358.57144165039063;
	setAttr ".tgi[0].ni[190].nvs" 18304;
	setAttr ".tgi[0].ni[191].x" 2981.428466796875;
	setAttr ".tgi[0].ni[191].y" 15694.2861328125;
	setAttr ".tgi[0].ni[191].nvs" 18304;
	setAttr ".tgi[0].ni[192].x" 495.71429443359375;
	setAttr ".tgi[0].ni[192].y" -1907.142822265625;
	setAttr ".tgi[0].ni[192].nvs" 18304;
	setAttr ".tgi[0].ni[193].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[193].y" -1422.857177734375;
	setAttr ".tgi[0].ni[193].nvs" 18304;
	setAttr ".tgi[0].ni[194].x" 2348.571533203125;
	setAttr ".tgi[0].ni[194].y" -7198.5712890625;
	setAttr ".tgi[0].ni[194].nvs" 18304;
	setAttr ".tgi[0].ni[195].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[195].y" -3204.28564453125;
	setAttr ".tgi[0].ni[195].nvs" 18304;
	setAttr ".tgi[0].ni[196].x" -118.57142639160156;
	setAttr ".tgi[0].ni[196].y" 3355.71435546875;
	setAttr ".tgi[0].ni[196].nvs" 18304;
	setAttr ".tgi[0].ni[197].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[197].y" 6068.5712890625;
	setAttr ".tgi[0].ni[197].nvs" 18304;
	setAttr ".tgi[0].ni[198].x" 2655.71435546875;
	setAttr ".tgi[0].ni[198].y" 16180;
	setAttr ".tgi[0].ni[198].nvs" 18304;
	setAttr ".tgi[0].ni[199].x" 2655.71435546875;
	setAttr ".tgi[0].ni[199].y" 11367.142578125;
	setAttr ".tgi[0].ni[199].nvs" 18304;
	setAttr ".tgi[0].ni[200].x" 2655.71435546875;
	setAttr ".tgi[0].ni[200].y" 10657.142578125;
	setAttr ".tgi[0].ni[200].nvs" 18304;
	setAttr ".tgi[0].ni[201].x" 2655.71435546875;
	setAttr ".tgi[0].ni[201].y" 15020;
	setAttr ".tgi[0].ni[201].nvs" 18304;
	setAttr ".tgi[0].ni[202].x" 2655.71435546875;
	setAttr ".tgi[0].ni[202].y" 14867.142578125;
	setAttr ".tgi[0].ni[202].nvs" 18304;
	setAttr ".tgi[0].ni[203].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[203].y" -2697.142822265625;
	setAttr ".tgi[0].ni[203].nvs" 18304;
	setAttr ".tgi[0].ni[204].x" 188.57142639160156;
	setAttr ".tgi[0].ni[204].y" -3524.28564453125;
	setAttr ".tgi[0].ni[204].nvs" 18304;
	setAttr ".tgi[0].ni[205].x" 2655.71435546875;
	setAttr ".tgi[0].ni[205].y" 545.71429443359375;
	setAttr ".tgi[0].ni[205].nvs" 18304;
	setAttr ".tgi[0].ni[206].x" 2981.428466796875;
	setAttr ".tgi[0].ni[206].y" 16911.427734375;
	setAttr ".tgi[0].ni[206].nvs" 18304;
	setAttr ".tgi[0].ni[207].x" 2348.571533203125;
	setAttr ".tgi[0].ni[207].y" -5727.14306640625;
	setAttr ".tgi[0].ni[207].nvs" 18304;
	setAttr ".tgi[0].ni[208].x" 188.57142639160156;
	setAttr ".tgi[0].ni[208].y" -3308.571533203125;
	setAttr ".tgi[0].ni[208].nvs" 18304;
	setAttr ".tgi[0].ni[209].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[209].y" -307.14285278320313;
	setAttr ".tgi[0].ni[209].nvs" 18304;
	setAttr ".tgi[0].ni[210].x" 2981.428466796875;
	setAttr ".tgi[0].ni[210].y" 16404.28515625;
	setAttr ".tgi[0].ni[210].nvs" 18304;
	setAttr ".tgi[0].ni[211].x" -1040;
	setAttr ".tgi[0].ni[211].y" 8188.5712890625;
	setAttr ".tgi[0].ni[211].nvs" 18304;
	setAttr ".tgi[0].ni[212].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[212].y" 1632.857177734375;
	setAttr ".tgi[0].ni[212].nvs" 18304;
	setAttr ".tgi[0].ni[213].x" 2981.428466796875;
	setAttr ".tgi[0].ni[213].y" 12042.857421875;
	setAttr ".tgi[0].ni[213].nvs" 18304;
	setAttr ".tgi[0].ni[214].x" -2882.857177734375;
	setAttr ".tgi[0].ni[214].y" 16052.857421875;
	setAttr ".tgi[0].ni[214].nvs" 18304;
	setAttr ".tgi[0].ni[215].x" 2655.71435546875;
	setAttr ".tgi[0].ni[215].y" 14092.857421875;
	setAttr ".tgi[0].ni[215].nvs" 18304;
	setAttr ".tgi[0].ni[216].x" -732.85711669921875;
	setAttr ".tgi[0].ni[216].y" 10975.7138671875;
	setAttr ".tgi[0].ni[216].nvs" 18304;
	setAttr ".tgi[0].ni[217].x" 2655.71435546875;
	setAttr ".tgi[0].ni[217].y" 8298.5712890625;
	setAttr ".tgi[0].ni[217].nvs" 18304;
	setAttr ".tgi[0].ni[218].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[218].y" 257.14285278320313;
	setAttr ".tgi[0].ni[218].nvs" 18304;
	setAttr ".tgi[0].ni[219].x" -118.57142639160156;
	setAttr ".tgi[0].ni[219].y" 6035.71435546875;
	setAttr ".tgi[0].ni[219].nvs" 18304;
	setAttr ".tgi[0].ni[220].x" 2655.71435546875;
	setAttr ".tgi[0].ni[220].y" 10555.7138671875;
	setAttr ".tgi[0].ni[220].nvs" 18304;
	setAttr ".tgi[0].ni[221].x" 2655.71435546875;
	setAttr ".tgi[0].ni[221].y" 14295.7138671875;
	setAttr ".tgi[0].ni[221].nvs" 18304;
	setAttr ".tgi[0].ni[222].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[222].y" -4371.4287109375;
	setAttr ".tgi[0].ni[222].nvs" 18304;
	setAttr ".tgi[0].ni[223].x" 2981.428466796875;
	setAttr ".tgi[0].ni[223].y" 15795.7138671875;
	setAttr ".tgi[0].ni[223].nvs" 18304;
	setAttr ".tgi[0].ni[224].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[224].y" -205.71427917480469;
	setAttr ".tgi[0].ni[224].nvs" 18304;
	setAttr ".tgi[0].ni[225].x" 2655.71435546875;
	setAttr ".tgi[0].ni[225].y" 15470;
	setAttr ".tgi[0].ni[225].nvs" 18304;
	setAttr ".tgi[0].ni[226].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[226].y" 2342.857177734375;
	setAttr ".tgi[0].ni[226].nvs" 18304;
	setAttr ".tgi[0].ni[227].x" 2655.71435546875;
	setAttr ".tgi[0].ni[227].y" -300;
	setAttr ".tgi[0].ni[227].nvs" 18304;
	setAttr ".tgi[0].ni[228].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[228].y" 2241.428466796875;
	setAttr ".tgi[0].ni[228].nvs" 18304;
	setAttr ".tgi[0].ni[229].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[229].y" -611.4285888671875;
	setAttr ".tgi[0].ni[229].nvs" 18304;
	setAttr ".tgi[0].ni[230].x" 2348.571533203125;
	setAttr ".tgi[0].ni[230].y" 98.571426391601563;
	setAttr ".tgi[0].ni[230].nvs" 18304;
	setAttr ".tgi[0].ni[231].x" -1040;
	setAttr ".tgi[0].ni[231].y" 7478.5712890625;
	setAttr ".tgi[0].ni[231].nvs" 18304;
	setAttr ".tgi[0].ni[232].x" 2655.71435546875;
	setAttr ".tgi[0].ni[232].y" 12335.7138671875;
	setAttr ".tgi[0].ni[232].nvs" 18304;
	setAttr ".tgi[0].ni[233].x" 2655.71435546875;
	setAttr ".tgi[0].ni[233].y" 14765.7138671875;
	setAttr ".tgi[0].ni[233].nvs" 18304;
	setAttr ".tgi[0].ni[234].x" -118.57142639160156;
	setAttr ".tgi[0].ni[234].y" 2194.28564453125;
	setAttr ".tgi[0].ni[234].nvs" 18304;
	setAttr ".tgi[0].ni[235].x" 2655.71435546875;
	setAttr ".tgi[0].ni[235].y" 15875.7138671875;
	setAttr ".tgi[0].ni[235].nvs" 18304;
	setAttr ".tgi[0].ni[236].x" 2655.71435546875;
	setAttr ".tgi[0].ni[236].y" 14498.5712890625;
	setAttr ".tgi[0].ni[236].nvs" 18304;
	setAttr ".tgi[0].ni[237].x" -425.71429443359375;
	setAttr ".tgi[0].ni[237].y" 8402.857421875;
	setAttr ".tgi[0].ni[237].nvs" 18304;
	setAttr ".tgi[0].ni[238].x" 2981.428466796875;
	setAttr ".tgi[0].ni[238].y" 13868.5712890625;
	setAttr ".tgi[0].ni[238].nvs" 18304;
	setAttr ".tgi[0].ni[239].x" 802.85711669921875;
	setAttr ".tgi[0].ni[239].y" -3004.28564453125;
	setAttr ".tgi[0].ni[239].nvs" 18304;
	setAttr ".tgi[0].ni[240].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[240].y" -1727.142822265625;
	setAttr ".tgi[0].ni[240].nvs" 18304;
	setAttr ".tgi[0].ni[241].x" 2655.71435546875;
	setAttr ".tgi[0].ni[241].y" 10245.7138671875;
	setAttr ".tgi[0].ni[241].nvs" 18304;
	setAttr ".tgi[0].ni[242].x" 2655.71435546875;
	setAttr ".tgi[0].ni[242].y" 8768.5712890625;
	setAttr ".tgi[0].ni[242].nvs" 18304;
	setAttr ".tgi[0].ni[243].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[243].y" -4168.5712890625;
	setAttr ".tgi[0].ni[243].nvs" 18304;
	setAttr ".tgi[0].ni[244].x" 2348.571533203125;
	setAttr ".tgi[0].ni[244].y" 9340;
	setAttr ".tgi[0].ni[244].nvs" 18304;
	setAttr ".tgi[0].ni[245].x" 2655.71435546875;
	setAttr ".tgi[0].ni[245].y" 15222.857421875;
	setAttr ".tgi[0].ni[245].nvs" 18304;
	setAttr ".tgi[0].ni[246].x" 2981.428466796875;
	setAttr ".tgi[0].ni[246].y" 13970;
	setAttr ".tgi[0].ni[246].nvs" 18304;
	setAttr ".tgi[0].ni[247].x" 2655.71435546875;
	setAttr ".tgi[0].ni[247].y" 14664.2861328125;
	setAttr ".tgi[0].ni[247].nvs" 18304;
	setAttr ".tgi[0].ni[248].x" 2981.428466796875;
	setAttr ".tgi[0].ni[248].y" 15491.4287109375;
	setAttr ".tgi[0].ni[248].nvs" 18304;
	setAttr ".tgi[0].ni[249].x" 2981.428466796875;
	setAttr ".tgi[0].ni[249].y" 16505.71484375;
	setAttr ".tgi[0].ni[249].nvs" 18304;
	setAttr ".tgi[0].ni[250].x" 2348.571533203125;
	setAttr ".tgi[0].ni[250].y" -117.14286041259766;
	setAttr ".tgi[0].ni[250].nvs" 18304;
	setAttr ".tgi[0].ni[251].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[251].y" 662.85711669921875;
	setAttr ".tgi[0].ni[251].nvs" 18304;
	setAttr ".tgi[0].ni[252].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[252].y" -408.57144165039063;
	setAttr ".tgi[0].ni[252].nvs" 18304;
	setAttr ".tgi[0].ni[253].x" 2981.428466796875;
	setAttr ".tgi[0].ni[253].y" 16100;
	setAttr ".tgi[0].ni[253].nvs" 18304;
	setAttr ".tgi[0].ni[254].x" 2655.71435546875;
	setAttr ".tgi[0].ni[254].y" 16590;
	setAttr ".tgi[0].ni[254].nvs" 18304;
	setAttr ".tgi[0].ni[255].x" 2981.428466796875;
	setAttr ".tgi[0].ni[255].y" 12448.5712890625;
	setAttr ".tgi[0].ni[255].nvs" 18304;
	setAttr ".tgi[0].ni[256].x" 2981.428466796875;
	setAttr ".tgi[0].ni[256].y" 14375.7138671875;
	setAttr ".tgi[0].ni[256].nvs" 18304;
	setAttr ".tgi[0].ni[257].x" 2655.71435546875;
	setAttr ".tgi[0].ni[257].y" 15121.4287109375;
	setAttr ".tgi[0].ni[257].nvs" 18304;
	setAttr ".tgi[0].ni[258].x" 2981.428466796875;
	setAttr ".tgi[0].ni[258].y" 10217.142578125;
	setAttr ".tgi[0].ni[258].nvs" 18304;
	setAttr ".tgi[0].ni[259].x" 2655.71435546875;
	setAttr ".tgi[0].ni[259].y" 135.71427917480469;
	setAttr ".tgi[0].ni[259].nvs" 18304;
	setAttr ".tgi[0].ni[260].x" 2981.428466796875;
	setAttr ".tgi[0].ni[260].y" 11738.5712890625;
	setAttr ".tgi[0].ni[260].nvs" 18304;
	setAttr ".tgi[0].ni[261].x" -1654.2857666015625;
	setAttr ".tgi[0].ni[261].y" 13268.5712890625;
	setAttr ".tgi[0].ni[261].nvs" 18304;
	setAttr ".tgi[0].ni[262].x" 188.57142639160156;
	setAttr ".tgi[0].ni[262].y" -4730;
	setAttr ".tgi[0].ni[262].nvs" 18304;
	setAttr ".tgi[0].ni[263].x" 2981.428466796875;
	setAttr ".tgi[0].ni[263].y" 14882.857421875;
	setAttr ".tgi[0].ni[263].nvs" 18304;
	setAttr ".tgi[0].ni[264].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[264].y" -915.71429443359375;
	setAttr ".tgi[0].ni[264].nvs" 18304;
	setAttr ".tgi[0].ni[265].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[265].y" -14712.857421875;
	setAttr ".tgi[0].ni[265].nvs" 18304;
	setAttr ".tgi[0].ni[266].x" 2655.71435546875;
	setAttr ".tgi[0].ni[266].y" 16701.427734375;
	setAttr ".tgi[0].ni[266].nvs" 18304;
	setAttr ".tgi[0].ni[267].x" -1654.2857666015625;
	setAttr ".tgi[0].ni[267].y" 9860;
	setAttr ".tgi[0].ni[267].nvs" 18304;
	setAttr ".tgi[0].ni[268].x" -118.57142639160156;
	setAttr ".tgi[0].ni[268].y" -474.28570556640625;
	setAttr ".tgi[0].ni[268].nvs" 18304;
	setAttr ".tgi[0].ni[269].x" 2348.571533203125;
	setAttr ".tgi[0].ni[269].y" -3860;
	setAttr ".tgi[0].ni[269].nvs" 18304;
	setAttr ".tgi[0].ni[270].x" 2655.71435546875;
	setAttr ".tgi[0].ni[270].y" 16281.4287109375;
	setAttr ".tgi[0].ni[270].nvs" 18304;
	setAttr ".tgi[0].ni[271].x" 2981.428466796875;
	setAttr ".tgi[0].ni[271].y" 13057.142578125;
	setAttr ".tgi[0].ni[271].nvs" 18304;
	setAttr ".tgi[0].ni[272].x" 2655.71435546875;
	setAttr ".tgi[0].ni[272].y" 15977.142578125;
	setAttr ".tgi[0].ni[272].nvs" 18304;
	setAttr ".tgi[0].ni[273].x" 188.57142639160156;
	setAttr ".tgi[0].ni[273].y" 7430;
	setAttr ".tgi[0].ni[273].nvs" 18304;
	setAttr ".tgi[0].ni[274].x" 2655.71435546875;
	setAttr ".tgi[0].ni[274].y" 11265.7138671875;
	setAttr ".tgi[0].ni[274].nvs" 18304;
	setAttr ".tgi[0].ni[275].x" 495.71429443359375;
	setAttr ".tgi[0].ni[275].y" -7661.4287109375;
	setAttr ".tgi[0].ni[275].nvs" 18304;
	setAttr ".tgi[0].ni[276].x" 2655.71435546875;
	setAttr ".tgi[0].ni[276].y" 13687.142578125;
	setAttr ".tgi[0].ni[276].nvs" 18304;
	setAttr ".tgi[0].ni[277].x" 2655.71435546875;
	setAttr ".tgi[0].ni[277].y" 14397.142578125;
	setAttr ".tgi[0].ni[277].nvs" 18304;
	setAttr ".tgi[0].ni[278].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[278].y" -712.85711669921875;
	setAttr ".tgi[0].ni[278].nvs" 18304;
	setAttr ".tgi[0].ni[279].x" 188.57142639160156;
	setAttr ".tgi[0].ni[279].y" 7588.5712890625;
	setAttr ".tgi[0].ni[279].nvs" 18304;
	setAttr ".tgi[0].ni[280].x" 2981.428466796875;
	setAttr ".tgi[0].ni[280].y" 14071.4287109375;
	setAttr ".tgi[0].ni[280].nvs" 18304;
	setAttr ".tgi[0].ni[281].x" 2981.428466796875;
	setAttr ".tgi[0].ni[281].y" 12550;
	setAttr ".tgi[0].ni[281].nvs" 18304;
	setAttr ".tgi[0].ni[282].x" 2981.428466796875;
	setAttr ".tgi[0].ni[282].y" 12245.7138671875;
	setAttr ".tgi[0].ni[282].nvs" 18304;
	setAttr ".tgi[0].ni[283].x" 2981.428466796875;
	setAttr ".tgi[0].ni[283].y" 15187.142578125;
	setAttr ".tgi[0].ni[283].nvs" 18304;
	setAttr ".tgi[0].ni[284].x" 2655.71435546875;
	setAttr ".tgi[0].ni[284].y" 8087.14306640625;
	setAttr ".tgi[0].ni[284].nvs" 18304;
	setAttr ".tgi[0].ni[285].x" -118.57142639160156;
	setAttr ".tgi[0].ni[285].y" 9567.142578125;
	setAttr ".tgi[0].ni[285].nvs" 18304;
	setAttr ".tgi[0].ni[286].x" 2981.428466796875;
	setAttr ".tgi[0].ni[286].y" 13462.857421875;
	setAttr ".tgi[0].ni[286].nvs" 18304;
	setAttr ".tgi[0].ni[287].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[287].y" -3001.428466796875;
	setAttr ".tgi[0].ni[287].nvs" 18304;
	setAttr ".tgi[0].ni[288].x" 188.57142639160156;
	setAttr ".tgi[0].ni[288].y" -1561.4285888671875;
	setAttr ".tgi[0].ni[288].nvs" 18304;
	setAttr ".tgi[0].ni[289].x" -732.85711669921875;
	setAttr ".tgi[0].ni[289].y" 7685.71435546875;
	setAttr ".tgi[0].ni[289].nvs" 18304;
	setAttr ".tgi[0].ni[290].x" -1347.142822265625;
	setAttr ".tgi[0].ni[290].y" 12875.7138671875;
	setAttr ".tgi[0].ni[290].nvs" 18304;
	setAttr ".tgi[0].ni[291].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[291].y" -1220;
	setAttr ".tgi[0].ni[291].nvs" 18304;
	setAttr ".tgi[0].ni[292].x" 2655.71435546875;
	setAttr ".tgi[0].ni[292].y" -774.28570556640625;
	setAttr ".tgi[0].ni[292].nvs" 18304;
	setAttr ".tgi[0].ni[293].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[293].y" 2038.5714111328125;
	setAttr ".tgi[0].ni[293].nvs" 18304;
	setAttr ".tgi[0].ni[294].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[294].y" -47.142856597900391;
	setAttr ".tgi[0].ni[294].nvs" 18304;
	setAttr ".tgi[0].ni[295].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[295].y" 1068.5714111328125;
	setAttr ".tgi[0].ni[295].nvs" 18304;
	setAttr ".tgi[0].ni[296].x" 2655.71435546875;
	setAttr ".tgi[0].ni[296].y" 16382.857421875;
	setAttr ".tgi[0].ni[296].nvs" 18304;
	setAttr ".tgi[0].ni[297].x" 2655.71435546875;
	setAttr ".tgi[0].ni[297].y" 12741.4287109375;
	setAttr ".tgi[0].ni[297].nvs" 18304;
	setAttr ".tgi[0].ni[298].x" 2655.71435546875;
	setAttr ".tgi[0].ni[298].y" 10961.4287109375;
	setAttr ".tgi[0].ni[298].nvs" 18304;
	setAttr ".tgi[0].ni[299].x" 2348.571533203125;
	setAttr ".tgi[0].ni[299].y" -338.57144165039063;
	setAttr ".tgi[0].ni[299].nvs" 18304;
	setAttr ".tgi[0].ni[300].x" -118.57142639160156;
	setAttr ".tgi[0].ni[300].y" 9397.142578125;
	setAttr ".tgi[0].ni[300].nvs" 18304;
	setAttr ".tgi[0].ni[301].x" 495.71429443359375;
	setAttr ".tgi[0].ni[301].y" -7388.5712890625;
	setAttr ".tgi[0].ni[301].nvs" 18304;
	setAttr ".tgi[0].ni[302].x" 2981.428466796875;
	setAttr ".tgi[0].ni[302].y" 15390;
	setAttr ".tgi[0].ni[302].nvs" 18304;
	setAttr ".tgi[0].ni[303].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[303].y" -3794.28564453125;
	setAttr ".tgi[0].ni[303].nvs" 18304;
	setAttr ".tgi[0].ni[304].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[304].y" 1734.2857666015625;
	setAttr ".tgi[0].ni[304].nvs" 18304;
	setAttr ".tgi[0].ni[305].x" 2981.428466796875;
	setAttr ".tgi[0].ni[305].y" 11332.857421875;
	setAttr ".tgi[0].ni[305].nvs" 18304;
	setAttr ".tgi[0].ni[306].x" 2348.571533203125;
	setAttr ".tgi[0].ni[306].y" -1412.857177734375;
	setAttr ".tgi[0].ni[306].nvs" 18304;
	setAttr ".tgi[0].ni[307].x" 495.71429443359375;
	setAttr ".tgi[0].ni[307].y" -845.71429443359375;
	setAttr ".tgi[0].ni[307].nvs" 18304;
	setAttr ".tgi[0].ni[308].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[308].y" -510;
	setAttr ".tgi[0].ni[308].nvs" 18304;
	setAttr ".tgi[0].ni[309].x" 2031.4285888671875;
	setAttr ".tgi[0].ni[309].y" -4675.71435546875;
	setAttr ".tgi[0].ni[309].nvs" 18304;
	setAttr ".tgi[0].ni[310].x" 2348.571533203125;
	setAttr ".tgi[0].ni[310].y" 4382.85693359375;
	setAttr ".tgi[0].ni[310].nvs" 18304;
	setAttr ".tgi[0].ni[311].x" 188.57142639160156;
	setAttr ".tgi[0].ni[311].y" 1462.857177734375;
	setAttr ".tgi[0].ni[311].nvs" 18304;
	setAttr ".tgi[0].ni[312].x" 2348.571533203125;
	setAttr ".tgi[0].ni[312].y" 9124.2861328125;
	setAttr ".tgi[0].ni[312].nvs" 18304;
	setAttr ".tgi[0].ni[313].x" 2655.71435546875;
	setAttr ".tgi[0].ni[313].y" 10144.2861328125;
	setAttr ".tgi[0].ni[313].nvs" 18304;
select -ne :time1;
	setAttr ".o" 0;
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
connectAttr "TEMP_RigRoot.jointsParentGroup" "JOINTS.rigRoot";
connectAttr "Pelvis_Limb_M_NODE.joints" "Pelvis_Root_M_JNT.limb";
connectAttr "Pelvis_Root_M_JNT.s" "Spine_Spine1_M_JNT.is";
connectAttr "Spine_Limb_M_NODE.joints" "Spine_Spine1_M_JNT.limb";
connectAttr "Spine_Spine1_M_JNT.s" "Spine_Spine2_M_JNT.is";
connectAttr "Spine_Limb_M_NODE.joints" "Spine_Spine2_M_JNT.limb";
connectAttr "Spine_Spine2_M_JNT.s" "Spine_Spine3_M_JNT.is";
connectAttr "Spine_Limb_M_NODE.joints" "Spine_Spine3_M_JNT.limb";
connectAttr "Spine_Spine3_M_JNT.s" "Neck_Neck_M_JNT.is";
connectAttr "Neck_Limb_M_NODE.joints" "Neck_Neck_M_JNT.limb";
connectAttr "Neck_Neck_M_JNT.s" "Head_Head1_M_JNT.is";
connectAttr "Head_Limb_M_NODE.joints" "Head_Head1_M_JNT.limb";
connectAttr "Head_Head1_M_JNT.s" "Head_Head2_M_JNT.is";
connectAttr "Head_Limb_M_NODE.joints" "Head_Head2_M_JNT.limb";
connectAttr "Head_Head2_M_JNT.group" "Head2_Joint_M_GRP1.joint";
connectAttr "Head_Limb_M_NODE.jointGroups" "Head2_Joint_M_GRP1.limb";
connectAttr "Head_Limb_M_NODE.usedGroups" "Head2_Joint_M_GRP1.used";
connectAttr "Head_Head2_M_JNT1.group" "Head2_Joint_M_GRP1.animJoint";
connectAttr "Head2_Joint_M_GRP1.control" "Head2_Joint_M_CTR1.group";
connectAttr "Head_Head1_M_JNT.s" "Eye_Eye_L_JNT.is";
connectAttr "Eye_Limb_L_NODE.joints" "Eye_Eye_L_JNT.limb";
connectAttr "Eye_Eye_L_JNT.group" "Eye_Joint_L_GRP0.joint";
connectAttr "Eye_Limb_L_NODE.jointGroups" "Eye_Joint_L_GRP0.limb";
connectAttr "Eye_Limb_L_NODE.usedGroups" "Eye_Joint_L_GRP0.used";
connectAttr "Eye_Eye_L_JNT1.group" "Eye_Joint_L_GRP0.animJoint";
connectAttr "Eye_Joint_L_GRP0.control" "Eye_Joint_L_CTR0.group";
connectAttr "Head_Head1_M_JNT.s" "Eye_Eye_R_JNT.is";
connectAttr "Eye_Limb_R_NODE.joints" "Eye_Eye_R_JNT.limb";
connectAttr "Eye_Eye_R_JNT.group" "Eye_Joint_R_GRP0.joint";
connectAttr "Eye_Limb_R_NODE.jointGroups" "Eye_Joint_R_GRP0.limb";
connectAttr "Eye_Limb_R_NODE.usedGroups" "Eye_Joint_R_GRP0.used";
connectAttr "Eye_Eye_R_JNT1.group" "Eye_Joint_R_GRP0.animJoint";
connectAttr "Eye_Joint_R_GRP0.control" "Eye_Joint_R_CTR0.group";
connectAttr "Head_Head1_M_JNT.group" "Head1_Joint_M_GRP0.joint";
connectAttr "Head_Limb_M_NODE.jointGroups" "Head1_Joint_M_GRP0.limb";
connectAttr "Head_Limb_M_NODE.usedGroups" "Head1_Joint_M_GRP0.used";
connectAttr "Head_Head1_M_JNT1.group" "Head1_Joint_M_GRP0.animJoint";
connectAttr "Head1_Joint_M_GRP0.control" "Head1_Joint_M_CTR0.group";
connectAttr "Neck_Neck_M_JNT.group" "Neck_Joint_M_GRP0.joint";
connectAttr "Neck_Limb_M_NODE.jointGroups" "Neck_Joint_M_GRP0.limb";
connectAttr "Neck_Limb_M_NODE.usedGroups" "Neck_Joint_M_GRP0.used";
connectAttr "Neck_Neck_M_JNT1.group" "Neck_Joint_M_GRP0.animJoint";
connectAttr "Neck_Joint_M_GRP0.control" "Neck_Joint_M_CTR0.group";
connectAttr "Spine_Spine3_M_JNT.s" "Clav_Clav_L_JNT.is";
connectAttr "Clav_Limb_L_NODE.joints" "Clav_Clav_L_JNT.limb";
connectAttr "Clav_Clav_L_JNT.s" "Arm_Shoulder_L_JNT.is";
connectAttr "Arm_Limb_L_NODE.joints" "Arm_Shoulder_L_JNT.limb";
connectAttr "Arm_Shoulder_L_JNT.s" "Arm_Elbow_L_JNT.is";
connectAttr "Arm_Limb_L_NODE.joints" "Arm_Elbow_L_JNT.limb";
connectAttr "Arm_Elbow_L_JNT.s" "Arm_Wrist_L_JNT.is";
connectAttr "Arm_Limb_L_NODE.joints" "Arm_Wrist_L_JNT.limb";
connectAttr "Arm_Wrist_L_JNT.s" "Thumb_Thumb1_L_JNT.is";
connectAttr "Thumb_Limb_L_NODE.joints" "Thumb_Thumb1_L_JNT.limb";
connectAttr "Thumb_Thumb1_L_JNT.s" "Thumb_Thumb2_L_JNT.is";
connectAttr "Thumb_Limb_L_NODE.joints" "Thumb_Thumb2_L_JNT.limb";
connectAttr "Thumb_Thumb2_L_JNT.s" "Thumb_Thumb3_L_JNT.is";
connectAttr "Thumb_Limb_L_NODE.joints" "Thumb_Thumb3_L_JNT.limb";
connectAttr "Thumb_Thumb3_L_JNT.s" "Thumb_Thumb4_L_JNT.is";
connectAttr "Thumb_Limb_L_NODE.joints" "Thumb_Thumb4_L_JNT.limb";
connectAttr "Thumb_Thumb4_L_JNT.group" "Thumb4_Joint_L_GRP3.joint";
connectAttr "Thumb_Limb_L_NODE.jointGroups" "Thumb4_Joint_L_GRP3.limb";
connectAttr "Thumb_Limb_L_NODE.usedGroups" "Thumb4_Joint_L_GRP3.used";
connectAttr "Thumb_Thumb4_L_JNT1.group" "Thumb4_Joint_L_GRP3.animJoint";
connectAttr "Thumb4_Joint_L_GRP3.control" "Thumb4_Joint_L_CTR3.group";
connectAttr "Thumb_Thumb3_L_JNT.group" "Thumb3_Joint_L_GRP2.joint";
connectAttr "Thumb_Limb_L_NODE.jointGroups" "Thumb3_Joint_L_GRP2.limb";
connectAttr "Thumb_Limb_L_NODE.usedGroups" "Thumb3_Joint_L_GRP2.used";
connectAttr "Thumb_Thumb3_L_JNT1.group" "Thumb3_Joint_L_GRP2.animJoint";
connectAttr "Thumb3_Joint_L_GRP2.control" "Thumb3_Joint_L_CTR2.group";
connectAttr "Thumb_Thumb2_L_JNT.group" "Thumb2_Joint_L_GRP1.joint";
connectAttr "Thumb_Limb_L_NODE.jointGroups" "Thumb2_Joint_L_GRP1.limb";
connectAttr "Thumb_Limb_L_NODE.usedGroups" "Thumb2_Joint_L_GRP1.used";
connectAttr "Thumb_Thumb2_L_JNT1.group" "Thumb2_Joint_L_GRP1.animJoint";
connectAttr "Thumb2_Joint_L_GRP1.control" "Thumb2_Joint_L_CTR1.group";
connectAttr "Thumb_Thumb1_L_JNT.group" "Thumb1_Joint_L_GRP0.joint";
connectAttr "Thumb_Limb_L_NODE.jointGroups" "Thumb1_Joint_L_GRP0.limb";
connectAttr "Thumb_Limb_L_NODE.usedGroups" "Thumb1_Joint_L_GRP0.used";
connectAttr "Thumb_Thumb1_L_JNT1.group" "Thumb1_Joint_L_GRP0.animJoint";
connectAttr "Thumb1_Joint_L_GRP0.control" "Thumb1_Joint_L_CTR0.group";
connectAttr "Arm_Wrist_L_JNT.s" "Index_Index1_L_JNT.is";
connectAttr "Index_Limb_L_NODE.joints" "Index_Index1_L_JNT.limb";
connectAttr "Index_Index1_L_JNT.s" "Index_Index2_L_JNT.is";
connectAttr "Index_Limb_L_NODE.joints" "Index_Index2_L_JNT.limb";
connectAttr "Index_Index2_L_JNT.s" "Index_Index3_L_JNT.is";
connectAttr "Index_Limb_L_NODE.joints" "Index_Index3_L_JNT.limb";
connectAttr "Index_Index3_L_JNT.s" "Index_Index4_L_JNT.is";
connectAttr "Index_Limb_L_NODE.joints" "Index_Index4_L_JNT.limb";
connectAttr "Index_Index4_L_JNT.group" "Index4_Joint_L_GRP3.joint";
connectAttr "Index_Limb_L_NODE.jointGroups" "Index4_Joint_L_GRP3.limb";
connectAttr "Index_Limb_L_NODE.usedGroups" "Index4_Joint_L_GRP3.used";
connectAttr "Index_Index4_L_JNT1.group" "Index4_Joint_L_GRP3.animJoint";
connectAttr "Index4_Joint_L_GRP3.control" "Index4_Joint_L_CTR3.group";
connectAttr "Index_Index3_L_JNT.group" "Index3_Joint_L_GRP2.joint";
connectAttr "Index_Limb_L_NODE.jointGroups" "Index3_Joint_L_GRP2.limb";
connectAttr "Index_Limb_L_NODE.usedGroups" "Index3_Joint_L_GRP2.used";
connectAttr "Index_Index3_L_JNT1.group" "Index3_Joint_L_GRP2.animJoint";
connectAttr "Index3_Joint_L_GRP2.control" "Index3_Joint_L_CTR2.group";
connectAttr "Index_Index2_L_JNT.group" "Index2_Joint_L_GRP1.joint";
connectAttr "Index_Limb_L_NODE.jointGroups" "Index2_Joint_L_GRP1.limb";
connectAttr "Index_Limb_L_NODE.usedGroups" "Index2_Joint_L_GRP1.used";
connectAttr "Index_Index2_L_JNT1.group" "Index2_Joint_L_GRP1.animJoint";
connectAttr "Index2_Joint_L_GRP1.control" "Index2_Joint_L_CTR1.group";
connectAttr "Index_Index1_L_JNT.group" "Index1_Joint_L_GRP0.joint";
connectAttr "Index_Limb_L_NODE.jointGroups" "Index1_Joint_L_GRP0.limb";
connectAttr "Index_Limb_L_NODE.usedGroups" "Index1_Joint_L_GRP0.used";
connectAttr "Index_Index1_L_JNT1.group" "Index1_Joint_L_GRP0.animJoint";
connectAttr "Index1_Joint_L_GRP0.control" "Index1_Joint_L_CTR0.group";
connectAttr "Arm_Wrist_L_JNT.s" "Middle_Middle1_L_JNT.is";
connectAttr "Middle_Limb_L_NODE.joints" "Middle_Middle1_L_JNT.limb";
connectAttr "Middle_Middle1_L_JNT.s" "Middle_Middle2_L_JNT.is";
connectAttr "Middle_Limb_L_NODE.joints" "Middle_Middle2_L_JNT.limb";
connectAttr "Middle_Middle2_L_JNT.s" "Middle_Middle3_L_JNT.is";
connectAttr "Middle_Limb_L_NODE.joints" "Middle_Middle3_L_JNT.limb";
connectAttr "Middle_Middle3_L_JNT.s" "Middle_Middle4_L_JNT.is";
connectAttr "Middle_Limb_L_NODE.joints" "Middle_Middle4_L_JNT.limb";
connectAttr "Middle_Middle4_L_JNT.group" "Middle4_Joint_L_GRP3.joint";
connectAttr "Middle_Limb_L_NODE.jointGroups" "Middle4_Joint_L_GRP3.limb";
connectAttr "Middle_Limb_L_NODE.usedGroups" "Middle4_Joint_L_GRP3.used";
connectAttr "Middle_Middle4_L_JNT1.group" "Middle4_Joint_L_GRP3.animJoint";
connectAttr "Middle4_Joint_L_GRP3.control" "Middle4_Joint_L_CTR3.group";
connectAttr "Middle_Middle3_L_JNT.group" "Middle3_Joint_L_GRP2.joint";
connectAttr "Middle_Limb_L_NODE.jointGroups" "Middle3_Joint_L_GRP2.limb";
connectAttr "Middle_Limb_L_NODE.usedGroups" "Middle3_Joint_L_GRP2.used";
connectAttr "Middle_Middle3_L_JNT1.group" "Middle3_Joint_L_GRP2.animJoint";
connectAttr "Middle3_Joint_L_GRP2.control" "Middle3_Joint_L_CTR2.group";
connectAttr "Middle_Middle2_L_JNT.group" "Middle2_Joint_L_GRP1.joint";
connectAttr "Middle_Limb_L_NODE.jointGroups" "Middle2_Joint_L_GRP1.limb";
connectAttr "Middle_Limb_L_NODE.usedGroups" "Middle2_Joint_L_GRP1.used";
connectAttr "Middle_Middle2_L_JNT1.group" "Middle2_Joint_L_GRP1.animJoint";
connectAttr "Middle2_Joint_L_GRP1.control" "Middle2_Joint_L_CTR1.group";
connectAttr "Middle_Middle1_L_JNT.group" "Middle1_Joint_L_GRP0.joint";
connectAttr "Middle_Limb_L_NODE.jointGroups" "Middle1_Joint_L_GRP0.limb";
connectAttr "Middle_Limb_L_NODE.usedGroups" "Middle1_Joint_L_GRP0.used";
connectAttr "Middle_Middle1_L_JNT1.group" "Middle1_Joint_L_GRP0.animJoint";
connectAttr "Middle1_Joint_L_GRP0.control" "Middle1_Joint_L_CTR0.group";
connectAttr "Arm_Wrist_L_JNT.s" "Ring_Ring1_L_JNT.is";
connectAttr "Ring_Limb_L_NODE.joints" "Ring_Ring1_L_JNT.limb";
connectAttr "Ring_Ring1_L_JNT.s" "Ring_Ring2_L_JNT.is";
connectAttr "Ring_Limb_L_NODE.joints" "Ring_Ring2_L_JNT.limb";
connectAttr "Ring_Ring2_L_JNT.s" "Ring_Ring3_L_JNT.is";
connectAttr "Ring_Limb_L_NODE.joints" "Ring_Ring3_L_JNT.limb";
connectAttr "Ring_Ring3_L_JNT.s" "Ring_Ring4_L_JNT.is";
connectAttr "Ring_Limb_L_NODE.joints" "Ring_Ring4_L_JNT.limb";
connectAttr "Ring_Ring4_L_JNT.group" "Ring4_Joint_L_GRP3.joint";
connectAttr "Ring_Limb_L_NODE.jointGroups" "Ring4_Joint_L_GRP3.limb";
connectAttr "Ring_Limb_L_NODE.usedGroups" "Ring4_Joint_L_GRP3.used";
connectAttr "Ring_Ring4_L_JNT1.group" "Ring4_Joint_L_GRP3.animJoint";
connectAttr "Ring4_Joint_L_GRP3.control" "Ring4_Joint_L_CTR3.group";
connectAttr "Ring_Ring3_L_JNT.group" "Ring3_Joint_L_GRP2.joint";
connectAttr "Ring_Limb_L_NODE.jointGroups" "Ring3_Joint_L_GRP2.limb";
connectAttr "Ring_Limb_L_NODE.usedGroups" "Ring3_Joint_L_GRP2.used";
connectAttr "Ring_Ring3_L_JNT1.group" "Ring3_Joint_L_GRP2.animJoint";
connectAttr "Ring3_Joint_L_GRP2.control" "Ring3_Joint_L_CTR2.group";
connectAttr "Ring_Ring2_L_JNT.group" "Ring2_Joint_L_GRP1.joint";
connectAttr "Ring_Limb_L_NODE.jointGroups" "Ring2_Joint_L_GRP1.limb";
connectAttr "Ring_Limb_L_NODE.usedGroups" "Ring2_Joint_L_GRP1.used";
connectAttr "Ring_Ring2_L_JNT1.group" "Ring2_Joint_L_GRP1.animJoint";
connectAttr "Ring2_Joint_L_GRP1.control" "Ring2_Joint_L_CTR1.group";
connectAttr "Ring_Ring1_L_JNT.group" "Ring1_Joint_L_GRP0.joint";
connectAttr "Ring_Limb_L_NODE.jointGroups" "Ring1_Joint_L_GRP0.limb";
connectAttr "Ring_Limb_L_NODE.usedGroups" "Ring1_Joint_L_GRP0.used";
connectAttr "Ring_Ring1_L_JNT1.group" "Ring1_Joint_L_GRP0.animJoint";
connectAttr "Ring1_Joint_L_GRP0.control" "Ring1_Joint_L_CTR0.group";
connectAttr "Arm_Wrist_L_JNT.s" "Pinky_Pinky1_L_JNT.is";
connectAttr "Pinky_Limb_L_NODE.joints" "Pinky_Pinky1_L_JNT.limb";
connectAttr "Pinky_Pinky1_L_JNT.s" "Pinky_Pinky2_L_JNT.is";
connectAttr "Pinky_Limb_L_NODE.joints" "Pinky_Pinky2_L_JNT.limb";
connectAttr "Pinky_Pinky2_L_JNT.s" "Pinky_Pinky3_L_JNT.is";
connectAttr "Pinky_Limb_L_NODE.joints" "Pinky_Pinky3_L_JNT.limb";
connectAttr "Pinky_Pinky3_L_JNT.s" "Pinky_Pinky4_L_JNT.is";
connectAttr "Pinky_Limb_L_NODE.joints" "Pinky_Pinky4_L_JNT.limb";
connectAttr "Pinky_Pinky4_L_JNT.group" "Pinky4_Joint_L_GRP3.joint";
connectAttr "Pinky_Limb_L_NODE.jointGroups" "Pinky4_Joint_L_GRP3.limb";
connectAttr "Pinky_Limb_L_NODE.usedGroups" "Pinky4_Joint_L_GRP3.used";
connectAttr "Pinky_Pinky4_L_JNT1.group" "Pinky4_Joint_L_GRP3.animJoint";
connectAttr "Pinky4_Joint_L_GRP3.control" "Pinky4_Joint_L_CTR3.group";
connectAttr "Pinky_Pinky3_L_JNT.group" "Pinky3_Joint_L_GRP2.joint";
connectAttr "Pinky_Limb_L_NODE.jointGroups" "Pinky3_Joint_L_GRP2.limb";
connectAttr "Pinky_Limb_L_NODE.usedGroups" "Pinky3_Joint_L_GRP2.used";
connectAttr "Pinky_Pinky3_L_JNT1.group" "Pinky3_Joint_L_GRP2.animJoint";
connectAttr "Pinky3_Joint_L_GRP2.control" "Pinky3_Joint_L_CTR2.group";
connectAttr "Pinky_Pinky2_L_JNT.group" "Pinky2_Joint_L_GRP1.joint";
connectAttr "Pinky_Limb_L_NODE.jointGroups" "Pinky2_Joint_L_GRP1.limb";
connectAttr "Pinky_Limb_L_NODE.usedGroups" "Pinky2_Joint_L_GRP1.used";
connectAttr "Pinky_Pinky2_L_JNT1.group" "Pinky2_Joint_L_GRP1.animJoint";
connectAttr "Pinky2_Joint_L_GRP1.control" "Pinky2_Joint_L_CTR1.group";
connectAttr "Pinky_Pinky1_L_JNT.group" "Pinky1_Joint_L_GRP0.joint";
connectAttr "Pinky_Limb_L_NODE.jointGroups" "Pinky1_Joint_L_GRP0.limb";
connectAttr "Pinky_Limb_L_NODE.usedGroups" "Pinky1_Joint_L_GRP0.used";
connectAttr "Pinky_Pinky1_L_JNT1.group" "Pinky1_Joint_L_GRP0.animJoint";
connectAttr "Pinky1_Joint_L_GRP0.control" "Pinky1_Joint_L_CTR0.group";
connectAttr "Arm_Wrist_L_JNT.group" "Wrist_Joint_L_GRP2.joint";
connectAttr "Arm_Limb_L_NODE.jointGroups" "Wrist_Joint_L_GRP2.limb";
connectAttr "Arm_Limb_L_NODE.usedGroups" "Wrist_Joint_L_GRP2.used";
connectAttr "Arm_Wrist_L_JNT1.group" "Wrist_Joint_L_GRP2.animJoint";
connectAttr "Wrist_Joint_L_GRP2.control" "Wrist_Joint_L_CTR2.group";
connectAttr "Arm_Elbow_L_JNT.group" "Elbow_Joint_L_GRP1.joint";
connectAttr "Arm_Limb_L_NODE.jointGroups" "Elbow_Joint_L_GRP1.limb";
connectAttr "Arm_Limb_L_NODE.usedGroups" "Elbow_Joint_L_GRP1.used";
connectAttr "Arm_Elbow_L_JNT1.group" "Elbow_Joint_L_GRP1.animJoint";
connectAttr "Elbow_Joint_L_GRP1.control" "Elbow_Joint_L_CTR1.group";
connectAttr "Arm_Shoulder_L_JNT.group" "Shoulder_Joint_L_GRP0.joint";
connectAttr "Arm_Limb_L_NODE.jointGroups" "Shoulder_Joint_L_GRP0.limb";
connectAttr "Arm_Limb_L_NODE.usedGroups" "Shoulder_Joint_L_GRP0.used";
connectAttr "Arm_Shoulder_L_JNT1.group" "Shoulder_Joint_L_GRP0.animJoint";
connectAttr "Shoulder_Joint_L_GRP0.control" "Shoulder_Joint_L_CTR0.group";
connectAttr "Clav_Clav_L_JNT.group" "Clav_Joint_L_GRP0.joint";
connectAttr "Clav_Limb_L_NODE.jointGroups" "Clav_Joint_L_GRP0.limb";
connectAttr "Clav_Limb_L_NODE.usedGroups" "Clav_Joint_L_GRP0.used";
connectAttr "Clav_Clav_L_JNT1.group" "Clav_Joint_L_GRP0.animJoint";
connectAttr "Clav_Joint_L_GRP0.control" "Clav_Joint_L_CTR0.group";
connectAttr "Spine_Spine3_M_JNT.s" "Clav_Clav_R_JNT.is";
connectAttr "Clav_Limb_R_NODE.joints" "Clav_Clav_R_JNT.limb";
connectAttr "Clav_Clav_R_JNT.s" "Arm_Shoulder_R_JNT.is";
connectAttr "Arm_Limb_R_NODE.joints" "Arm_Shoulder_R_JNT.limb";
connectAttr "Arm_Shoulder_R_JNT.s" "Arm_Elbow_R_JNT.is";
connectAttr "Arm_Limb_R_NODE.joints" "Arm_Elbow_R_JNT.limb";
connectAttr "Arm_Elbow_R_JNT.s" "Arm_Wrist_R_JNT.is";
connectAttr "Arm_Limb_R_NODE.joints" "Arm_Wrist_R_JNT.limb";
connectAttr "Arm_Wrist_R_JNT.s" "Pinky_Pinky1_R_JNT.is";
connectAttr "Pinky_Limb_R_NODE.joints" "Pinky_Pinky1_R_JNT.limb";
connectAttr "Pinky_Pinky1_R_JNT.s" "Pinky_Pinky2_R_JNT.is";
connectAttr "Pinky_Limb_R_NODE.joints" "Pinky_Pinky2_R_JNT.limb";
connectAttr "Pinky_Pinky2_R_JNT.s" "Pinky_Pinky3_R_JNT.is";
connectAttr "Pinky_Limb_R_NODE.joints" "Pinky_Pinky3_R_JNT.limb";
connectAttr "Pinky_Pinky3_R_JNT.s" "Pinky_Pinky4_R_JNT.is";
connectAttr "Pinky_Limb_R_NODE.joints" "Pinky_Pinky4_R_JNT.limb";
connectAttr "Pinky_Pinky4_R_JNT.group" "Pinky4_Joint_R_GRP3.joint";
connectAttr "Pinky_Limb_R_NODE.jointGroups" "Pinky4_Joint_R_GRP3.limb";
connectAttr "Pinky_Limb_R_NODE.usedGroups" "Pinky4_Joint_R_GRP3.used";
connectAttr "Pinky_Pinky4_R_JNT1.group" "Pinky4_Joint_R_GRP3.animJoint";
connectAttr "Pinky4_Joint_R_GRP3.control" "Pinky4_Joint_R_CTR3.group";
connectAttr "Pinky_Pinky3_R_JNT.group" "Pinky3_Joint_R_GRP2.joint";
connectAttr "Pinky_Limb_R_NODE.jointGroups" "Pinky3_Joint_R_GRP2.limb";
connectAttr "Pinky_Limb_R_NODE.usedGroups" "Pinky3_Joint_R_GRP2.used";
connectAttr "Pinky_Pinky3_R_JNT1.group" "Pinky3_Joint_R_GRP2.animJoint";
connectAttr "Pinky3_Joint_R_GRP2.control" "Pinky3_Joint_R_CTR2.group";
connectAttr "Pinky_Pinky2_R_JNT.group" "Pinky2_Joint_R_GRP1.joint";
connectAttr "Pinky_Limb_R_NODE.jointGroups" "Pinky2_Joint_R_GRP1.limb";
connectAttr "Pinky_Limb_R_NODE.usedGroups" "Pinky2_Joint_R_GRP1.used";
connectAttr "Pinky_Pinky2_R_JNT1.group" "Pinky2_Joint_R_GRP1.animJoint";
connectAttr "Pinky2_Joint_R_GRP1.control" "Pinky2_Joint_R_CTR1.group";
connectAttr "Pinky_Pinky1_R_JNT.group" "Pinky1_Joint_R_GRP0.joint";
connectAttr "Pinky_Limb_R_NODE.jointGroups" "Pinky1_Joint_R_GRP0.limb";
connectAttr "Pinky_Limb_R_NODE.usedGroups" "Pinky1_Joint_R_GRP0.used";
connectAttr "Pinky_Pinky1_R_JNT1.group" "Pinky1_Joint_R_GRP0.animJoint";
connectAttr "Pinky1_Joint_R_GRP0.control" "Pinky1_Joint_R_CTR0.group";
connectAttr "Arm_Wrist_R_JNT.s" "Ring_Ring1_R_JNT.is";
connectAttr "Ring_Limb_R_NODE.joints" "Ring_Ring1_R_JNT.limb";
connectAttr "Ring_Ring1_R_JNT.s" "Ring_Ring2_R_JNT.is";
connectAttr "Ring_Limb_R_NODE.joints" "Ring_Ring2_R_JNT.limb";
connectAttr "Ring_Ring2_R_JNT.s" "Ring_Ring3_R_JNT.is";
connectAttr "Ring_Limb_R_NODE.joints" "Ring_Ring3_R_JNT.limb";
connectAttr "Ring_Ring3_R_JNT.s" "Ring_Ring4_R_JNT.is";
connectAttr "Ring_Limb_R_NODE.joints" "Ring_Ring4_R_JNT.limb";
connectAttr "Ring_Ring4_R_JNT.group" "Ring4_Joint_R_GRP3.joint";
connectAttr "Ring_Limb_R_NODE.jointGroups" "Ring4_Joint_R_GRP3.limb";
connectAttr "Ring_Limb_R_NODE.usedGroups" "Ring4_Joint_R_GRP3.used";
connectAttr "Ring_Ring4_R_JNT1.group" "Ring4_Joint_R_GRP3.animJoint";
connectAttr "Ring4_Joint_R_GRP3.control" "Ring4_Joint_R_CTR3.group";
connectAttr "Ring_Ring3_R_JNT.group" "Ring3_Joint_R_GRP2.joint";
connectAttr "Ring_Limb_R_NODE.jointGroups" "Ring3_Joint_R_GRP2.limb";
connectAttr "Ring_Limb_R_NODE.usedGroups" "Ring3_Joint_R_GRP2.used";
connectAttr "Ring_Ring3_R_JNT1.group" "Ring3_Joint_R_GRP2.animJoint";
connectAttr "Ring3_Joint_R_GRP2.control" "Ring3_Joint_R_CTR2.group";
connectAttr "Ring_Ring2_R_JNT.group" "Ring2_Joint_R_GRP1.joint";
connectAttr "Ring_Limb_R_NODE.jointGroups" "Ring2_Joint_R_GRP1.limb";
connectAttr "Ring_Limb_R_NODE.usedGroups" "Ring2_Joint_R_GRP1.used";
connectAttr "Ring_Ring2_R_JNT1.group" "Ring2_Joint_R_GRP1.animJoint";
connectAttr "Ring2_Joint_R_GRP1.control" "Ring2_Joint_R_CTR1.group";
connectAttr "Ring_Ring1_R_JNT.group" "Ring1_Joint_R_GRP0.joint";
connectAttr "Ring_Limb_R_NODE.jointGroups" "Ring1_Joint_R_GRP0.limb";
connectAttr "Ring_Limb_R_NODE.usedGroups" "Ring1_Joint_R_GRP0.used";
connectAttr "Ring_Ring1_R_JNT1.group" "Ring1_Joint_R_GRP0.animJoint";
connectAttr "Ring1_Joint_R_GRP0.control" "Ring1_Joint_R_CTR0.group";
connectAttr "Arm_Wrist_R_JNT.s" "Middle_Middle1_R_JNT.is";
connectAttr "Middle_Limb_R_NODE.joints" "Middle_Middle1_R_JNT.limb";
connectAttr "Middle_Middle1_R_JNT.s" "Middle_Middle2_R_JNT.is";
connectAttr "Middle_Limb_R_NODE.joints" "Middle_Middle2_R_JNT.limb";
connectAttr "Middle_Middle2_R_JNT.s" "Middle_Middle3_R_JNT.is";
connectAttr "Middle_Limb_R_NODE.joints" "Middle_Middle3_R_JNT.limb";
connectAttr "Middle_Middle3_R_JNT.s" "Middle_Middle4_R_JNT.is";
connectAttr "Middle_Limb_R_NODE.joints" "Middle_Middle4_R_JNT.limb";
connectAttr "Middle_Middle4_R_JNT.group" "Middle4_Joint_R_GRP3.joint";
connectAttr "Middle_Limb_R_NODE.jointGroups" "Middle4_Joint_R_GRP3.limb";
connectAttr "Middle_Limb_R_NODE.usedGroups" "Middle4_Joint_R_GRP3.used";
connectAttr "Middle_Middle4_R_JNT1.group" "Middle4_Joint_R_GRP3.animJoint";
connectAttr "Middle4_Joint_R_GRP3.control" "Middle4_Joint_R_CTR3.group";
connectAttr "Middle_Middle3_R_JNT.group" "Middle3_Joint_R_GRP2.joint";
connectAttr "Middle_Limb_R_NODE.jointGroups" "Middle3_Joint_R_GRP2.limb";
connectAttr "Middle_Limb_R_NODE.usedGroups" "Middle3_Joint_R_GRP2.used";
connectAttr "Middle_Middle3_R_JNT1.group" "Middle3_Joint_R_GRP2.animJoint";
connectAttr "Middle3_Joint_R_GRP2.control" "Middle3_Joint_R_CTR2.group";
connectAttr "Middle_Middle2_R_JNT.group" "Middle2_Joint_R_GRP1.joint";
connectAttr "Middle_Limb_R_NODE.jointGroups" "Middle2_Joint_R_GRP1.limb";
connectAttr "Middle_Limb_R_NODE.usedGroups" "Middle2_Joint_R_GRP1.used";
connectAttr "Middle_Middle2_R_JNT1.group" "Middle2_Joint_R_GRP1.animJoint";
connectAttr "Middle2_Joint_R_GRP1.control" "Middle2_Joint_R_CTR1.group";
connectAttr "Middle_Middle1_R_JNT.group" "Middle1_Joint_R_GRP0.joint";
connectAttr "Middle_Limb_R_NODE.jointGroups" "Middle1_Joint_R_GRP0.limb";
connectAttr "Middle_Limb_R_NODE.usedGroups" "Middle1_Joint_R_GRP0.used";
connectAttr "Middle_Middle1_R_JNT1.group" "Middle1_Joint_R_GRP0.animJoint";
connectAttr "Middle1_Joint_R_GRP0.control" "Middle1_Joint_R_CTR0.group";
connectAttr "Arm_Wrist_R_JNT.s" "Index_Index1_R_JNT.is";
connectAttr "Index_Limb_R_NODE.joints" "Index_Index1_R_JNT.limb";
connectAttr "Index_Index1_R_JNT.s" "Index_Index2_R_JNT.is";
connectAttr "Index_Limb_R_NODE.joints" "Index_Index2_R_JNT.limb";
connectAttr "Index_Index2_R_JNT.s" "Index_Index3_R_JNT.is";
connectAttr "Index_Limb_R_NODE.joints" "Index_Index3_R_JNT.limb";
connectAttr "Index_Index3_R_JNT.s" "Index_Index4_R_JNT.is";
connectAttr "Index_Limb_R_NODE.joints" "Index_Index4_R_JNT.limb";
connectAttr "Index_Index4_R_JNT.group" "Index4_Joint_R_GRP3.joint";
connectAttr "Index_Limb_R_NODE.jointGroups" "Index4_Joint_R_GRP3.limb";
connectAttr "Index_Limb_R_NODE.usedGroups" "Index4_Joint_R_GRP3.used";
connectAttr "Index_Index4_R_JNT1.group" "Index4_Joint_R_GRP3.animJoint";
connectAttr "Index4_Joint_R_GRP3.control" "Index4_Joint_R_CTR3.group";
connectAttr "Index_Index3_R_JNT.group" "Index3_Joint_R_GRP2.joint";
connectAttr "Index_Limb_R_NODE.jointGroups" "Index3_Joint_R_GRP2.limb";
connectAttr "Index_Limb_R_NODE.usedGroups" "Index3_Joint_R_GRP2.used";
connectAttr "Index_Index3_R_JNT1.group" "Index3_Joint_R_GRP2.animJoint";
connectAttr "Index3_Joint_R_GRP2.control" "Index3_Joint_R_CTR2.group";
connectAttr "Index_Index2_R_JNT.group" "Index2_Joint_R_GRP1.joint";
connectAttr "Index_Limb_R_NODE.jointGroups" "Index2_Joint_R_GRP1.limb";
connectAttr "Index_Limb_R_NODE.usedGroups" "Index2_Joint_R_GRP1.used";
connectAttr "Index_Index2_R_JNT1.group" "Index2_Joint_R_GRP1.animJoint";
connectAttr "Index2_Joint_R_GRP1.control" "Index2_Joint_R_CTR1.group";
connectAttr "Index_Index1_R_JNT.group" "Index1_Joint_R_GRP0.joint";
connectAttr "Index_Limb_R_NODE.jointGroups" "Index1_Joint_R_GRP0.limb";
connectAttr "Index_Limb_R_NODE.usedGroups" "Index1_Joint_R_GRP0.used";
connectAttr "Index_Index1_R_JNT1.group" "Index1_Joint_R_GRP0.animJoint";
connectAttr "Index1_Joint_R_GRP0.control" "Index1_Joint_R_CTR0.group";
connectAttr "Arm_Wrist_R_JNT.s" "Thumb_Thumb1_R_JNT.is";
connectAttr "Thumb_Limb_R_NODE.joints" "Thumb_Thumb1_R_JNT.limb";
connectAttr "Thumb_Thumb1_R_JNT.s" "Thumb_Thumb2_R_JNT.is";
connectAttr "Thumb_Limb_R_NODE.joints" "Thumb_Thumb2_R_JNT.limb";
connectAttr "Thumb_Thumb2_R_JNT.s" "Thumb_Thumb3_R_JNT.is";
connectAttr "Thumb_Limb_R_NODE.joints" "Thumb_Thumb3_R_JNT.limb";
connectAttr "Thumb_Thumb3_R_JNT.s" "Thumb_Thumb4_R_JNT.is";
connectAttr "Thumb_Limb_R_NODE.joints" "Thumb_Thumb4_R_JNT.limb";
connectAttr "Thumb_Thumb4_R_JNT.group" "Thumb4_Joint_R_GRP3.joint";
connectAttr "Thumb_Limb_R_NODE.jointGroups" "Thumb4_Joint_R_GRP3.limb";
connectAttr "Thumb_Limb_R_NODE.usedGroups" "Thumb4_Joint_R_GRP3.used";
connectAttr "Thumb_Thumb4_R_JNT1.group" "Thumb4_Joint_R_GRP3.animJoint";
connectAttr "Thumb4_Joint_R_GRP3.control" "Thumb4_Joint_R_CTR3.group";
connectAttr "Thumb_Thumb3_R_JNT.group" "Thumb3_Joint_R_GRP2.joint";
connectAttr "Thumb_Limb_R_NODE.jointGroups" "Thumb3_Joint_R_GRP2.limb";
connectAttr "Thumb_Limb_R_NODE.usedGroups" "Thumb3_Joint_R_GRP2.used";
connectAttr "Thumb_Thumb3_R_JNT1.group" "Thumb3_Joint_R_GRP2.animJoint";
connectAttr "Thumb3_Joint_R_GRP2.control" "Thumb3_Joint_R_CTR2.group";
connectAttr "Thumb_Thumb2_R_JNT.group" "Thumb2_Joint_R_GRP1.joint";
connectAttr "Thumb_Limb_R_NODE.jointGroups" "Thumb2_Joint_R_GRP1.limb";
connectAttr "Thumb_Limb_R_NODE.usedGroups" "Thumb2_Joint_R_GRP1.used";
connectAttr "Thumb_Thumb2_R_JNT1.group" "Thumb2_Joint_R_GRP1.animJoint";
connectAttr "Thumb2_Joint_R_GRP1.control" "Thumb2_Joint_R_CTR1.group";
connectAttr "Thumb_Thumb1_R_JNT.group" "Thumb1_Joint_R_GRP0.joint";
connectAttr "Thumb_Limb_R_NODE.jointGroups" "Thumb1_Joint_R_GRP0.limb";
connectAttr "Thumb_Limb_R_NODE.usedGroups" "Thumb1_Joint_R_GRP0.used";
connectAttr "Thumb_Thumb1_R_JNT1.group" "Thumb1_Joint_R_GRP0.animJoint";
connectAttr "Thumb1_Joint_R_GRP0.control" "Thumb1_Joint_R_CTR0.group";
connectAttr "Arm_Wrist_R_JNT.group" "Wrist_Joint_R_GRP2.joint";
connectAttr "Arm_Limb_R_NODE.jointGroups" "Wrist_Joint_R_GRP2.limb";
connectAttr "Arm_Limb_R_NODE.usedGroups" "Wrist_Joint_R_GRP2.used";
connectAttr "Arm_Wrist_R_JNT1.group" "Wrist_Joint_R_GRP2.animJoint";
connectAttr "Wrist_Joint_R_GRP2.control" "Wrist_Joint_R_CTR2.group";
connectAttr "Arm_Elbow_R_JNT.group" "Elbow_Joint_R_GRP1.joint";
connectAttr "Arm_Limb_R_NODE.jointGroups" "Elbow_Joint_R_GRP1.limb";
connectAttr "Arm_Limb_R_NODE.usedGroups" "Elbow_Joint_R_GRP1.used";
connectAttr "Arm_Elbow_R_JNT1.group" "Elbow_Joint_R_GRP1.animJoint";
connectAttr "Elbow_Joint_R_GRP1.control" "Elbow_Joint_R_CTR1.group";
connectAttr "Arm_Shoulder_R_JNT.group" "Shoulder_Joint_R_GRP0.joint";
connectAttr "Arm_Limb_R_NODE.jointGroups" "Shoulder_Joint_R_GRP0.limb";
connectAttr "Arm_Limb_R_NODE.usedGroups" "Shoulder_Joint_R_GRP0.used";
connectAttr "Arm_Shoulder_R_JNT1.group" "Shoulder_Joint_R_GRP0.animJoint";
connectAttr "Shoulder_Joint_R_GRP0.control" "Shoulder_Joint_R_CTR0.group";
connectAttr "Clav_Clav_R_JNT.group" "Clav_Joint_R_GRP0.joint";
connectAttr "Clav_Limb_R_NODE.jointGroups" "Clav_Joint_R_GRP0.limb";
connectAttr "Clav_Limb_R_NODE.usedGroups" "Clav_Joint_R_GRP0.used";
connectAttr "Clav_Clav_R_JNT1.group" "Clav_Joint_R_GRP0.animJoint";
connectAttr "Clav_Joint_R_GRP0.control" "Clav_Joint_R_CTR0.group";
connectAttr "Spine_Spine3_M_JNT.group" "Spine3_Joint_M_GRP2.joint";
connectAttr "Spine_Limb_M_NODE.jointGroups" "Spine3_Joint_M_GRP2.limb";
connectAttr "Spine_Limb_M_NODE.usedGroups" "Spine3_Joint_M_GRP2.used";
connectAttr "Spine_Spine3_M_JNT1.group" "Spine3_Joint_M_GRP2.animJoint";
connectAttr "Spine3_Joint_M_GRP2.control" "Spine3_Joint_M_CTR2.group";
connectAttr "Spine_Spine2_M_JNT.group" "Spine2_Joint_M_GRP1.joint";
connectAttr "Spine_Limb_M_NODE.jointGroups" "Spine2_Joint_M_GRP1.limb";
connectAttr "Spine_Limb_M_NODE.usedGroups" "Spine2_Joint_M_GRP1.used";
connectAttr "Spine_Spine2_M_JNT1.group" "Spine2_Joint_M_GRP1.animJoint";
connectAttr "Spine2_Joint_M_GRP1.control" "Spine2_Joint_M_CTR1.group";
connectAttr "Spine_Spine1_M_JNT.group" "Spine1_Joint_M_GRP0.joint";
connectAttr "Spine_Limb_M_NODE.jointGroups" "Spine1_Joint_M_GRP0.limb";
connectAttr "Spine_Limb_M_NODE.usedGroups" "Spine1_Joint_M_GRP0.used";
connectAttr "Spine_Spine1_M_JNT1.group" "Spine1_Joint_M_GRP0.animJoint";
connectAttr "Spine1_Joint_M_GRP0.control" "Spine1_Joint_M_CTR0.group";
connectAttr "Pelvis_Root_M_JNT.s" "Leg_Hip_L_JNT.is";
connectAttr "Leg_Limb_L_NODE.joints" "Leg_Hip_L_JNT.limb";
connectAttr "Leg_Hip_L_JNT.s" "Leg_Knee_L_JNT.is";
connectAttr "Leg_Limb_L_NODE.joints" "Leg_Knee_L_JNT.limb";
connectAttr "Leg_Knee_L_JNT.s" "Leg_Ankle_L_JNT.is";
connectAttr "Leg_Limb_L_NODE.joints" "Leg_Ankle_L_JNT.limb";
connectAttr "Leg_Ankle_L_JNT.s" "Foot_Ball_L_JNT.is";
connectAttr "Foot_Limb_L_NODE.joints" "Foot_Ball_L_JNT.limb";
connectAttr "Foot_Ball_L_JNT.s" "Foot_Toe_L_JNT.is";
connectAttr "Foot_Limb_L_NODE.joints" "Foot_Toe_L_JNT.limb";
connectAttr "Foot_Toe_L_JNT.group" "Toe_Joint_L_GRP1.joint";
connectAttr "Foot_Limb_L_NODE.jointGroups" "Toe_Joint_L_GRP1.limb";
connectAttr "Foot_Limb_L_NODE.usedGroups" "Toe_Joint_L_GRP1.used";
connectAttr "Foot_Toe_L_JNT1.group" "Toe_Joint_L_GRP1.animJoint";
connectAttr "Toe_Joint_L_GRP1.control" "Toe_Joint_L_CTR1.group";
connectAttr "Foot_Ball_L_JNT.group" "Ball_Joint_L_GRP0.joint";
connectAttr "Foot_Limb_L_NODE.jointGroups" "Ball_Joint_L_GRP0.limb";
connectAttr "Foot_Limb_L_NODE.usedGroups" "Ball_Joint_L_GRP0.used";
connectAttr "Foot_Ball_L_JNT1.group" "Ball_Joint_L_GRP0.animJoint";
connectAttr "Ball_Joint_L_GRP0.control" "Ball_Joint_L_CTR0.group";
connectAttr "Leg_Ankle_L_JNT.group" "Ankle_Joint_L_GRP2.joint";
connectAttr "Leg_Limb_L_NODE.jointGroups" "Ankle_Joint_L_GRP2.limb";
connectAttr "Leg_Limb_L_NODE.usedGroups" "Ankle_Joint_L_GRP2.used";
connectAttr "Leg_Ankle_L_JNT1.group" "Ankle_Joint_L_GRP2.animJoint";
connectAttr "Ankle_Joint_L_GRP2.control" "Ankle_Joint_L_CTR2.group";
connectAttr "Leg_Knee_L_JNT.group" "Knee_Joint_L_GRP1.joint";
connectAttr "Leg_Limb_L_NODE.jointGroups" "Knee_Joint_L_GRP1.limb";
connectAttr "Leg_Limb_L_NODE.usedGroups" "Knee_Joint_L_GRP1.used";
connectAttr "Leg_Knee_L_JNT1.group" "Knee_Joint_L_GRP1.animJoint";
connectAttr "Knee_Joint_L_GRP1.control" "Knee_Joint_L_CTR1.group";
connectAttr "Leg_Hip_L_JNT.group" "Hip_Joint_L_GRP0.joint";
connectAttr "Leg_Limb_L_NODE.jointGroups" "Hip_Joint_L_GRP0.limb";
connectAttr "Leg_Limb_L_NODE.usedGroups" "Hip_Joint_L_GRP0.used";
connectAttr "Leg_Hip_L_JNT1.group" "Hip_Joint_L_GRP0.animJoint";
connectAttr "Hip_Joint_L_GRP0.control" "Hip_Joint_L_CTR0.group";
connectAttr "Pelvis_Root_M_JNT.s" "Leg_Hip_R_JNT.is";
connectAttr "Leg_Limb_R_NODE.joints" "Leg_Hip_R_JNT.limb";
connectAttr "Leg_Hip_R_JNT.s" "Leg_Knee_R_JNT.is";
connectAttr "Leg_Limb_R_NODE.joints" "Leg_Knee_R_JNT.limb";
connectAttr "Leg_Knee_R_JNT.s" "Leg_Ankle_R_JNT.is";
connectAttr "Leg_Limb_R_NODE.joints" "Leg_Ankle_R_JNT.limb";
connectAttr "Leg_Ankle_R_JNT.s" "Foot_Ball_R_JNT.is";
connectAttr "Foot_Limb_R_NODE.joints" "Foot_Ball_R_JNT.limb";
connectAttr "Foot_Ball_R_JNT.s" "Foot_Toe_R_JNT.is";
connectAttr "Foot_Limb_R_NODE.joints" "Foot_Toe_R_JNT.limb";
connectAttr "Foot_Toe_R_JNT.group" "Toe_Joint_R_GRP1.joint";
connectAttr "Foot_Limb_R_NODE.jointGroups" "Toe_Joint_R_GRP1.limb";
connectAttr "Foot_Limb_R_NODE.usedGroups" "Toe_Joint_R_GRP1.used";
connectAttr "Foot_Toe_R_JNT1.group" "Toe_Joint_R_GRP1.animJoint";
connectAttr "Toe_Joint_R_GRP1.control" "Toe_Joint_R_CTR1.group";
connectAttr "Foot_Ball_R_JNT.group" "Ball_Joint_R_GRP0.joint";
connectAttr "Foot_Limb_R_NODE.jointGroups" "Ball_Joint_R_GRP0.limb";
connectAttr "Foot_Limb_R_NODE.usedGroups" "Ball_Joint_R_GRP0.used";
connectAttr "Foot_Ball_R_JNT1.group" "Ball_Joint_R_GRP0.animJoint";
connectAttr "Ball_Joint_R_GRP0.control" "Ball_Joint_R_CTR0.group";
connectAttr "Leg_Ankle_R_JNT.group" "Ankle_Joint_R_GRP2.joint";
connectAttr "Leg_Limb_R_NODE.jointGroups" "Ankle_Joint_R_GRP2.limb";
connectAttr "Leg_Limb_R_NODE.usedGroups" "Ankle_Joint_R_GRP2.used";
connectAttr "Leg_Ankle_R_JNT1.group" "Ankle_Joint_R_GRP2.animJoint";
connectAttr "Ankle_Joint_R_GRP2.control" "Ankle_Joint_R_CTR2.group";
connectAttr "Leg_Knee_R_JNT.group" "Knee_Joint_R_GRP1.joint";
connectAttr "Leg_Limb_R_NODE.jointGroups" "Knee_Joint_R_GRP1.limb";
connectAttr "Leg_Limb_R_NODE.usedGroups" "Knee_Joint_R_GRP1.used";
connectAttr "Leg_Knee_R_JNT1.group" "Knee_Joint_R_GRP1.animJoint";
connectAttr "Knee_Joint_R_GRP1.control" "Knee_Joint_R_CTR1.group";
connectAttr "Leg_Hip_R_JNT.group" "Hip_Joint_R_GRP0.joint";
connectAttr "Leg_Limb_R_NODE.jointGroups" "Hip_Joint_R_GRP0.limb";
connectAttr "Leg_Limb_R_NODE.usedGroups" "Hip_Joint_R_GRP0.used";
connectAttr "Leg_Hip_R_JNT1.group" "Hip_Joint_R_GRP0.animJoint";
connectAttr "Hip_Joint_R_GRP0.control" "Hip_Joint_R_CTR0.group";
connectAttr "Pelvis_Root_M_JNT.group" "Root_Joint_M_GRP0.joint";
connectAttr "Pelvis_Limb_M_NODE.jointGroups" "Root_Joint_M_GRP0.limb";
connectAttr "Pelvis_Limb_M_NODE.usedGroups" "Root_Joint_M_GRP0.used";
connectAttr "Pelvis_Root_M_JNT1.group" "Root_Joint_M_GRP0.animJoint";
connectAttr "Root_Joint_M_GRP0.control" "Root_Joint_M_CTR0.group";
connectAttr "Pelvis_Root_M_JNT1_translateX.o" "Pelvis_Root_M_JNT1.tx";
connectAttr "Pelvis_Root_M_JNT1_translateY.o" "Pelvis_Root_M_JNT1.ty";
connectAttr "Pelvis_Root_M_JNT1_translateZ.o" "Pelvis_Root_M_JNT1.tz";
connectAttr "Pelvis_Root_M_JNT1_rotateX.o" "Pelvis_Root_M_JNT1.rx";
connectAttr "Pelvis_Root_M_JNT1_rotateY.o" "Pelvis_Root_M_JNT1.ry";
connectAttr "Pelvis_Root_M_JNT1_rotateZ.o" "Pelvis_Root_M_JNT1.rz";
connectAttr "Pelvis_Limb_M_NODE.animJoints" "Pelvis_Root_M_JNT1.limb";
connectAttr "Pelvis_Root_M_JNT1.s" "Leg_Hip_L_JNT1.is";
connectAttr "Leg_Hip_L_JNT1_rotateX.o" "Leg_Hip_L_JNT1.rx";
connectAttr "Leg_Hip_L_JNT1_rotateY.o" "Leg_Hip_L_JNT1.ry";
connectAttr "Leg_Hip_L_JNT1_rotateZ.o" "Leg_Hip_L_JNT1.rz";
connectAttr "Leg_Limb_L_NODE.animJoints" "Leg_Hip_L_JNT1.limb";
connectAttr "Leg_Hip_L_JNT1.s" "Leg_Knee_L_JNT1.is";
connectAttr "Leg_Knee_L_JNT1_rotateX.o" "Leg_Knee_L_JNT1.rx";
connectAttr "Leg_Knee_L_JNT1_rotateY.o" "Leg_Knee_L_JNT1.ry";
connectAttr "Leg_Knee_L_JNT1_rotateZ.o" "Leg_Knee_L_JNT1.rz";
connectAttr "Leg_Limb_L_NODE.animJoints" "Leg_Knee_L_JNT1.limb";
connectAttr "Leg_Knee_L_JNT1.s" "Leg_Ankle_L_JNT1.is";
connectAttr "Leg_Ankle_L_JNT1_rotateX.o" "Leg_Ankle_L_JNT1.rx";
connectAttr "Leg_Ankle_L_JNT1_rotateY.o" "Leg_Ankle_L_JNT1.ry";
connectAttr "Leg_Ankle_L_JNT1_rotateZ.o" "Leg_Ankle_L_JNT1.rz";
connectAttr "Leg_Limb_L_NODE.animJoints" "Leg_Ankle_L_JNT1.limb";
connectAttr "Leg_Ankle_L_JNT1.s" "Foot_Ball_L_JNT1.is";
connectAttr "Foot_Ball_L_JNT1_rotateX.o" "Foot_Ball_L_JNT1.rx";
connectAttr "Foot_Ball_L_JNT1_rotateY.o" "Foot_Ball_L_JNT1.ry";
connectAttr "Foot_Ball_L_JNT1_rotateZ.o" "Foot_Ball_L_JNT1.rz";
connectAttr "Foot_Limb_L_NODE.animJoints" "Foot_Ball_L_JNT1.limb";
connectAttr "Foot_Ball_L_JNT1.s" "Foot_Toe_L_JNT1.is";
connectAttr "Foot_Limb_L_NODE.animJoints" "Foot_Toe_L_JNT1.limb";
connectAttr "Pelvis_Root_M_JNT1.s" "Leg_Hip_R_JNT1.is";
connectAttr "Leg_Hip_R_JNT1_rotateX.o" "Leg_Hip_R_JNT1.rx";
connectAttr "Leg_Hip_R_JNT1_rotateY.o" "Leg_Hip_R_JNT1.ry";
connectAttr "Leg_Hip_R_JNT1_rotateZ.o" "Leg_Hip_R_JNT1.rz";
connectAttr "Leg_Limb_R_NODE.animJoints" "Leg_Hip_R_JNT1.limb";
connectAttr "Leg_Hip_R_JNT1.s" "Leg_Knee_R_JNT1.is";
connectAttr "Leg_Knee_R_JNT1_rotateX.o" "Leg_Knee_R_JNT1.rx";
connectAttr "Leg_Knee_R_JNT1_rotateY.o" "Leg_Knee_R_JNT1.ry";
connectAttr "Leg_Knee_R_JNT1_rotateZ.o" "Leg_Knee_R_JNT1.rz";
connectAttr "Leg_Limb_R_NODE.animJoints" "Leg_Knee_R_JNT1.limb";
connectAttr "Leg_Knee_R_JNT1.s" "Leg_Ankle_R_JNT1.is";
connectAttr "Leg_Ankle_R_JNT1_rotateX.o" "Leg_Ankle_R_JNT1.rx";
connectAttr "Leg_Ankle_R_JNT1_rotateY.o" "Leg_Ankle_R_JNT1.ry";
connectAttr "Leg_Ankle_R_JNT1_rotateZ.o" "Leg_Ankle_R_JNT1.rz";
connectAttr "Leg_Limb_R_NODE.animJoints" "Leg_Ankle_R_JNT1.limb";
connectAttr "Leg_Ankle_R_JNT1.s" "Foot_Ball_R_JNT1.is";
connectAttr "Foot_Ball_R_JNT1_rotateX.o" "Foot_Ball_R_JNT1.rx";
connectAttr "Foot_Ball_R_JNT1_rotateY.o" "Foot_Ball_R_JNT1.ry";
connectAttr "Foot_Ball_R_JNT1_rotateZ.o" "Foot_Ball_R_JNT1.rz";
connectAttr "Foot_Limb_R_NODE.animJoints" "Foot_Ball_R_JNT1.limb";
connectAttr "Foot_Ball_R_JNT1.s" "Foot_Toe_R_JNT1.is";
connectAttr "Foot_Limb_R_NODE.animJoints" "Foot_Toe_R_JNT1.limb";
connectAttr "Pelvis_Root_M_JNT1.s" "Spine_Spine1_M_JNT1.is";
connectAttr "Spine_Spine1_M_JNT1_rotateX.o" "Spine_Spine1_M_JNT1.rx";
connectAttr "Spine_Spine1_M_JNT1_rotateY.o" "Spine_Spine1_M_JNT1.ry";
connectAttr "Spine_Spine1_M_JNT1_rotateZ.o" "Spine_Spine1_M_JNT1.rz";
connectAttr "Spine_Limb_M_NODE.animJoints" "Spine_Spine1_M_JNT1.limb";
connectAttr "Spine_Spine1_M_JNT1.s" "Spine_Spine2_M_JNT1.is";
connectAttr "Spine_Spine2_M_JNT1_rotateX.o" "Spine_Spine2_M_JNT1.rx";
connectAttr "Spine_Spine2_M_JNT1_rotateY.o" "Spine_Spine2_M_JNT1.ry";
connectAttr "Spine_Spine2_M_JNT1_rotateZ.o" "Spine_Spine2_M_JNT1.rz";
connectAttr "Spine_Limb_M_NODE.animJoints" "Spine_Spine2_M_JNT1.limb";
connectAttr "Spine_Spine2_M_JNT1.s" "Spine_Spine3_M_JNT1.is";
connectAttr "Spine_Spine3_M_JNT1_rotateX.o" "Spine_Spine3_M_JNT1.rx";
connectAttr "Spine_Spine3_M_JNT1_rotateY.o" "Spine_Spine3_M_JNT1.ry";
connectAttr "Spine_Spine3_M_JNT1_rotateZ.o" "Spine_Spine3_M_JNT1.rz";
connectAttr "Spine_Limb_M_NODE.animJoints" "Spine_Spine3_M_JNT1.limb";
connectAttr "Spine_Spine3_M_JNT1.s" "Clav_Clav_R_JNT1.is";
connectAttr "Clav_Clav_R_JNT1_rotateX.o" "Clav_Clav_R_JNT1.rx";
connectAttr "Clav_Clav_R_JNT1_rotateY.o" "Clav_Clav_R_JNT1.ry";
connectAttr "Clav_Clav_R_JNT1_rotateZ.o" "Clav_Clav_R_JNT1.rz";
connectAttr "Clav_Limb_R_NODE.animJoints" "Clav_Clav_R_JNT1.limb";
connectAttr "Clav_Clav_R_JNT1.s" "Arm_Shoulder_R_JNT1.is";
connectAttr "Arm_Shoulder_R_JNT1_rotateX.o" "Arm_Shoulder_R_JNT1.rx";
connectAttr "Arm_Shoulder_R_JNT1_rotateY.o" "Arm_Shoulder_R_JNT1.ry";
connectAttr "Arm_Shoulder_R_JNT1_rotateZ.o" "Arm_Shoulder_R_JNT1.rz";
connectAttr "Arm_Limb_R_NODE.animJoints" "Arm_Shoulder_R_JNT1.limb";
connectAttr "Arm_Shoulder_R_JNT1.s" "Arm_Elbow_R_JNT1.is";
connectAttr "Arm_Elbow_R_JNT1_rotateY.o" "Arm_Elbow_R_JNT1.ry";
connectAttr "Arm_Limb_R_NODE.animJoints" "Arm_Elbow_R_JNT1.limb";
connectAttr "Arm_Elbow_R_JNT1.s" "Arm_Wrist_R_JNT1.is";
connectAttr "Arm_Wrist_R_JNT1_rotateX.o" "Arm_Wrist_R_JNT1.rx";
connectAttr "Arm_Wrist_R_JNT1_rotateY.o" "Arm_Wrist_R_JNT1.ry";
connectAttr "Arm_Wrist_R_JNT1_rotateZ.o" "Arm_Wrist_R_JNT1.rz";
connectAttr "Arm_Limb_R_NODE.animJoints" "Arm_Wrist_R_JNT1.limb";
connectAttr "Arm_Wrist_R_JNT1.s" "Middle_Middle1_R_JNT1.is";
connectAttr "Middle_Limb_R_NODE.animJoints" "Middle_Middle1_R_JNT1.limb";
connectAttr "Middle_Middle1_R_JNT1.s" "Middle_Middle2_R_JNT1.is";
connectAttr "Middle_Limb_R_NODE.animJoints" "Middle_Middle2_R_JNT1.limb";
connectAttr "Middle_Middle2_R_JNT1.s" "Middle_Middle3_R_JNT1.is";
connectAttr "Middle_Limb_R_NODE.animJoints" "Middle_Middle3_R_JNT1.limb";
connectAttr "Middle_Middle3_R_JNT1.s" "Middle_Middle4_R_JNT1.is";
connectAttr "Middle_Limb_R_NODE.animJoints" "Middle_Middle4_R_JNT1.limb";
connectAttr "Arm_Wrist_R_JNT1.s" "Thumb_Thumb1_R_JNT1.is";
connectAttr "Thumb_Limb_R_NODE.animJoints" "Thumb_Thumb1_R_JNT1.limb";
connectAttr "Thumb_Thumb1_R_JNT1.s" "Thumb_Thumb2_R_JNT1.is";
connectAttr "Thumb_Limb_R_NODE.animJoints" "Thumb_Thumb2_R_JNT1.limb";
connectAttr "Thumb_Thumb2_R_JNT1.s" "Thumb_Thumb3_R_JNT1.is";
connectAttr "Thumb_Limb_R_NODE.animJoints" "Thumb_Thumb3_R_JNT1.limb";
connectAttr "Thumb_Thumb3_R_JNT1.s" "Thumb_Thumb4_R_JNT1.is";
connectAttr "Thumb_Limb_R_NODE.animJoints" "Thumb_Thumb4_R_JNT1.limb";
connectAttr "Arm_Wrist_R_JNT1.s" "Ring_Ring1_R_JNT1.is";
connectAttr "Ring_Limb_R_NODE.animJoints" "Ring_Ring1_R_JNT1.limb";
connectAttr "Ring_Ring1_R_JNT1.s" "Ring_Ring2_R_JNT1.is";
connectAttr "Ring_Limb_R_NODE.animJoints" "Ring_Ring2_R_JNT1.limb";
connectAttr "Ring_Ring2_R_JNT1.s" "Ring_Ring3_R_JNT1.is";
connectAttr "Ring_Limb_R_NODE.animJoints" "Ring_Ring3_R_JNT1.limb";
connectAttr "Ring_Ring3_R_JNT1.s" "Ring_Ring4_R_JNT1.is";
connectAttr "Ring_Limb_R_NODE.animJoints" "Ring_Ring4_R_JNT1.limb";
connectAttr "Arm_Wrist_R_JNT1.s" "Index_Index1_R_JNT1.is";
connectAttr "Index_Limb_R_NODE.animJoints" "Index_Index1_R_JNT1.limb";
connectAttr "Index_Index1_R_JNT1.s" "Index_Index2_R_JNT1.is";
connectAttr "Index_Limb_R_NODE.animJoints" "Index_Index2_R_JNT1.limb";
connectAttr "Index_Index2_R_JNT1.s" "Index_Index3_R_JNT1.is";
connectAttr "Index_Limb_R_NODE.animJoints" "Index_Index3_R_JNT1.limb";
connectAttr "Index_Index3_R_JNT1.s" "Index_Index4_R_JNT1.is";
connectAttr "Index_Limb_R_NODE.animJoints" "Index_Index4_R_JNT1.limb";
connectAttr "Arm_Wrist_R_JNT1.s" "Pinky_Pinky1_R_JNT1.is";
connectAttr "Pinky_Limb_R_NODE.animJoints" "Pinky_Pinky1_R_JNT1.limb";
connectAttr "Pinky_Pinky1_R_JNT1.s" "Pinky_Pinky2_R_JNT1.is";
connectAttr "Pinky_Limb_R_NODE.animJoints" "Pinky_Pinky2_R_JNT1.limb";
connectAttr "Pinky_Pinky2_R_JNT1.s" "Pinky_Pinky3_R_JNT1.is";
connectAttr "Pinky_Limb_R_NODE.animJoints" "Pinky_Pinky3_R_JNT1.limb";
connectAttr "Pinky_Pinky3_R_JNT1.s" "Pinky_Pinky4_R_JNT1.is";
connectAttr "Pinky_Limb_R_NODE.animJoints" "Pinky_Pinky4_R_JNT1.limb";
connectAttr "Spine_Spine3_M_JNT1.s" "Clav_Clav_L_JNT1.is";
connectAttr "Clav_Clav_L_JNT1_rotateX.o" "Clav_Clav_L_JNT1.rx";
connectAttr "Clav_Clav_L_JNT1_rotateY.o" "Clav_Clav_L_JNT1.ry";
connectAttr "Clav_Clav_L_JNT1_rotateZ.o" "Clav_Clav_L_JNT1.rz";
connectAttr "Clav_Limb_L_NODE.animJoints" "Clav_Clav_L_JNT1.limb";
connectAttr "Clav_Clav_L_JNT1.s" "Arm_Shoulder_L_JNT1.is";
connectAttr "Arm_Shoulder_L_JNT1_rotateX.o" "Arm_Shoulder_L_JNT1.rx";
connectAttr "Arm_Shoulder_L_JNT1_rotateY.o" "Arm_Shoulder_L_JNT1.ry";
connectAttr "Arm_Shoulder_L_JNT1_rotateZ.o" "Arm_Shoulder_L_JNT1.rz";
connectAttr "Arm_Limb_L_NODE.animJoints" "Arm_Shoulder_L_JNT1.limb";
connectAttr "Arm_Shoulder_L_JNT1.s" "Arm_Elbow_L_JNT1.is";
connectAttr "Arm_Elbow_L_JNT1_rotateY.o" "Arm_Elbow_L_JNT1.ry";
connectAttr "Arm_Limb_L_NODE.animJoints" "Arm_Elbow_L_JNT1.limb";
connectAttr "Arm_Elbow_L_JNT1.s" "Arm_Wrist_L_JNT1.is";
connectAttr "Arm_Wrist_L_JNT1_rotateX.o" "Arm_Wrist_L_JNT1.rx";
connectAttr "Arm_Wrist_L_JNT1_rotateY.o" "Arm_Wrist_L_JNT1.ry";
connectAttr "Arm_Wrist_L_JNT1_rotateZ.o" "Arm_Wrist_L_JNT1.rz";
connectAttr "Arm_Limb_L_NODE.animJoints" "Arm_Wrist_L_JNT1.limb";
connectAttr "Arm_Wrist_L_JNT1.s" "Ring_Ring1_L_JNT1.is";
connectAttr "Ring_Limb_L_NODE.animJoints" "Ring_Ring1_L_JNT1.limb";
connectAttr "Ring_Ring1_L_JNT1.s" "Ring_Ring2_L_JNT1.is";
connectAttr "Ring_Limb_L_NODE.animJoints" "Ring_Ring2_L_JNT1.limb";
connectAttr "Ring_Ring2_L_JNT1.s" "Ring_Ring3_L_JNT1.is";
connectAttr "Ring_Limb_L_NODE.animJoints" "Ring_Ring3_L_JNT1.limb";
connectAttr "Ring_Ring3_L_JNT1.s" "Ring_Ring4_L_JNT1.is";
connectAttr "Ring_Limb_L_NODE.animJoints" "Ring_Ring4_L_JNT1.limb";
connectAttr "Arm_Wrist_L_JNT1.s" "Middle_Middle1_L_JNT1.is";
connectAttr "Middle_Limb_L_NODE.animJoints" "Middle_Middle1_L_JNT1.limb";
connectAttr "Middle_Middle1_L_JNT1.s" "Middle_Middle2_L_JNT1.is";
connectAttr "Middle_Limb_L_NODE.animJoints" "Middle_Middle2_L_JNT1.limb";
connectAttr "Middle_Middle2_L_JNT1.s" "Middle_Middle3_L_JNT1.is";
connectAttr "Middle_Limb_L_NODE.animJoints" "Middle_Middle3_L_JNT1.limb";
connectAttr "Middle_Middle3_L_JNT1.s" "Middle_Middle4_L_JNT1.is";
connectAttr "Middle_Limb_L_NODE.animJoints" "Middle_Middle4_L_JNT1.limb";
connectAttr "Arm_Wrist_L_JNT1.s" "Pinky_Pinky1_L_JNT1.is";
connectAttr "Pinky_Limb_L_NODE.animJoints" "Pinky_Pinky1_L_JNT1.limb";
connectAttr "Pinky_Pinky1_L_JNT1.s" "Pinky_Pinky2_L_JNT1.is";
connectAttr "Pinky_Limb_L_NODE.animJoints" "Pinky_Pinky2_L_JNT1.limb";
connectAttr "Pinky_Pinky2_L_JNT1.s" "Pinky_Pinky3_L_JNT1.is";
connectAttr "Pinky_Limb_L_NODE.animJoints" "Pinky_Pinky3_L_JNT1.limb";
connectAttr "Pinky_Pinky3_L_JNT1.s" "Pinky_Pinky4_L_JNT1.is";
connectAttr "Pinky_Limb_L_NODE.animJoints" "Pinky_Pinky4_L_JNT1.limb";
connectAttr "Arm_Wrist_L_JNT1.s" "Thumb_Thumb1_L_JNT1.is";
connectAttr "Thumb_Limb_L_NODE.animJoints" "Thumb_Thumb1_L_JNT1.limb";
connectAttr "Thumb_Thumb1_L_JNT1.s" "Thumb_Thumb2_L_JNT1.is";
connectAttr "Thumb_Limb_L_NODE.animJoints" "Thumb_Thumb2_L_JNT1.limb";
connectAttr "Thumb_Thumb2_L_JNT1.s" "Thumb_Thumb3_L_JNT1.is";
connectAttr "Thumb_Limb_L_NODE.animJoints" "Thumb_Thumb3_L_JNT1.limb";
connectAttr "Thumb_Thumb3_L_JNT1.s" "Thumb_Thumb4_L_JNT1.is";
connectAttr "Thumb_Limb_L_NODE.animJoints" "Thumb_Thumb4_L_JNT1.limb";
connectAttr "Arm_Wrist_L_JNT1.s" "Index_Index1_L_JNT1.is";
connectAttr "Index_Limb_L_NODE.animJoints" "Index_Index1_L_JNT1.limb";
connectAttr "Index_Index1_L_JNT1.s" "Index_Index2_L_JNT1.is";
connectAttr "Index_Limb_L_NODE.animJoints" "Index_Index2_L_JNT1.limb";
connectAttr "Index_Index2_L_JNT1.s" "Index_Index3_L_JNT1.is";
connectAttr "Index_Limb_L_NODE.animJoints" "Index_Index3_L_JNT1.limb";
connectAttr "Index_Index3_L_JNT1.s" "Index_Index4_L_JNT1.is";
connectAttr "Index_Limb_L_NODE.animJoints" "Index_Index4_L_JNT1.limb";
connectAttr "Spine_Spine3_M_JNT1.s" "Neck_Neck_M_JNT1.is";
connectAttr "Neck_Neck_M_JNT1_rotateX.o" "Neck_Neck_M_JNT1.rx";
connectAttr "Neck_Neck_M_JNT1_rotateY.o" "Neck_Neck_M_JNT1.ry";
connectAttr "Neck_Neck_M_JNT1_rotateZ.o" "Neck_Neck_M_JNT1.rz";
connectAttr "Neck_Limb_M_NODE.animJoints" "Neck_Neck_M_JNT1.limb";
connectAttr "Neck_Neck_M_JNT1.s" "Head_Head1_M_JNT1.is";
connectAttr "Head_Head1_M_JNT1_rotateX.o" "Head_Head1_M_JNT1.rx";
connectAttr "Head_Head1_M_JNT1_rotateY.o" "Head_Head1_M_JNT1.ry";
connectAttr "Head_Head1_M_JNT1_rotateZ.o" "Head_Head1_M_JNT1.rz";
connectAttr "Head_Limb_M_NODE.animJoints" "Head_Head1_M_JNT1.limb";
connectAttr "Head_Head1_M_JNT1.s" "Head_Head2_M_JNT1.is";
connectAttr "Head_Limb_M_NODE.animJoints" "Head_Head2_M_JNT1.limb";
connectAttr "Head_Head1_M_JNT1.s" "Eye_Eye_R_JNT1.is";
connectAttr "Eye_Limb_R_NODE.animJoints" "Eye_Eye_R_JNT1.limb";
connectAttr "Head_Head1_M_JNT1.s" "Eye_Eye_L_JNT1.is";
connectAttr "Eye_Limb_L_NODE.animJoints" "Eye_Eye_L_JNT1.limb";
connectAttr "TEMP_RigRoot.limbsParentGroup" "LIMBS.rigRoot";
connectAttr "TEMP_RigRoot.limbs" "Thumb_Limb_R_NODE.rigRoot";
connectAttr "Thumb_Limb_L_NODE.mirrorLimb" "Thumb_Limb_R_NODE.mirrorLimb";
connectAttr "Arm_Limb_R_NODE.limbChildren" "Thumb_Limb_R_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "Pinky_Limb_L_NODE.rigRoot";
connectAttr "Pinky_Limb_R_NODE.mirrorLimb" "Pinky_Limb_L_NODE.mirrorLimb";
connectAttr "Arm_Limb_L_NODE.limbChildren" "Pinky_Limb_L_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "Head_Limb_M_NODE.rigRoot";
connectAttr "Neck_Limb_M_NODE.limbChildren" "Head_Limb_M_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "Leg_Limb_R_NODE.rigRoot";
connectAttr "Leg_Limb_L_NODE.mirrorLimb" "Leg_Limb_R_NODE.mirrorLimb";
connectAttr "Pelvis_Limb_M_NODE.limbChildren" "Leg_Limb_R_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "Leg_Limb_L_NODE.rigRoot";
connectAttr "Pelvis_Limb_M_NODE.limbChildren" "Leg_Limb_L_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "Pinky_Limb_R_NODE.rigRoot";
connectAttr "Arm_Limb_R_NODE.limbChildren" "Pinky_Limb_R_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "Thumb_Limb_L_NODE.rigRoot";
connectAttr "Arm_Limb_L_NODE.limbChildren" "Thumb_Limb_L_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "Spine_Limb_M_NODE.rigRoot";
connectAttr "Pelvis_Limb_M_NODE.limbChildren" "Spine_Limb_M_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "Middle_Limb_L_NODE.rigRoot";
connectAttr "Middle_Limb_R_NODE.mirrorLimb" "Middle_Limb_L_NODE.mirrorLimb";
connectAttr "Arm_Limb_L_NODE.limbChildren" "Middle_Limb_L_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "Middle_Limb_R_NODE.rigRoot";
connectAttr "Arm_Limb_R_NODE.limbChildren" "Middle_Limb_R_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "Eye_Limb_R_NODE.rigRoot";
connectAttr "Eye_Limb_L_NODE.mirrorLimb" "Eye_Limb_R_NODE.mirrorLimb";
connectAttr "Head_Limb_M_NODE.limbChildren" "Eye_Limb_R_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "Foot_Limb_L_NODE.rigRoot";
connectAttr "Foot_Limb_R_NODE.mirrorLimb" "Foot_Limb_L_NODE.mirrorLimb";
connectAttr "Leg_Limb_L_NODE.limbChildren" "Foot_Limb_L_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "Foot_Limb_R_NODE.rigRoot";
connectAttr "Leg_Limb_R_NODE.limbChildren" "Foot_Limb_R_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "Eye_Limb_L_NODE.rigRoot";
connectAttr "Head_Limb_M_NODE.limbChildren" "Eye_Limb_L_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "Neck_Limb_M_NODE.rigRoot";
connectAttr "Spine_Limb_M_NODE.limbChildren" "Neck_Limb_M_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "Pelvis_Limb_M_NODE.rigRoot";
connectAttr "TEMP_RigRoot.limbs" "Ring_Limb_L_NODE.rigRoot";
connectAttr "Ring_Limb_R_NODE.mirrorLimb" "Ring_Limb_L_NODE.mirrorLimb";
connectAttr "Arm_Limb_L_NODE.limbChildren" "Ring_Limb_L_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "Arm_Limb_L_NODE.rigRoot";
connectAttr "Arm_Limb_R_NODE.mirrorLimb" "Arm_Limb_L_NODE.mirrorLimb";
connectAttr "Clav_Limb_L_NODE.limbChildren" "Arm_Limb_L_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "Clav_Limb_L_NODE.rigRoot";
connectAttr "Clav_Limb_R_NODE.mirrorLimb" "Clav_Limb_L_NODE.mirrorLimb";
connectAttr "Spine_Limb_M_NODE.limbChildren" "Clav_Limb_L_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "Index_Limb_R_NODE.rigRoot";
connectAttr "Index_Limb_L_NODE.mirrorLimb" "Index_Limb_R_NODE.mirrorLimb";
connectAttr "Arm_Limb_R_NODE.limbChildren" "Index_Limb_R_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "Index_Limb_L_NODE.rigRoot";
connectAttr "Arm_Limb_L_NODE.limbChildren" "Index_Limb_L_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "Clav_Limb_R_NODE.rigRoot";
connectAttr "Spine_Limb_M_NODE.limbChildren" "Clav_Limb_R_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "Arm_Limb_R_NODE.rigRoot";
connectAttr "Clav_Limb_R_NODE.limbChildren" "Arm_Limb_R_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "Ring_Limb_R_NODE.rigRoot";
connectAttr "Arm_Limb_R_NODE.limbChildren" "Ring_Limb_R_NODE.limbParent";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Beta_JointsSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Beta_SurfaceSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "LControlsMaterialSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "MControlsMaterialSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "RControlsMaterialSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Beta_JointsSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Beta_SurfaceSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "LControlsMaterialSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "MControlsMaterialSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "RControlsMaterialSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Beta_Joints_MAT.oc" "Beta_JointsSG.ss";
connectAttr "Beta_JointsSG.msg" "materialInfo1.sg";
connectAttr "Beta_Joints_MAT.msg" "materialInfo1.m";
connectAttr "asdf1:Beta_HighLimbsGeoSG2.oc" "Beta_SurfaceSG.ss";
connectAttr "Beta_SurfaceSG.msg" "materialInfo2.sg";
connectAttr "asdf1:Beta_HighLimbsGeoSG2.msg" "materialInfo2.m";
connectAttr "Pelvis_Root_M_JNT.msg" "bindPose1.m[0]";
connectAttr "Spine_Spine1_M_JNT.msg" "bindPose1.m[1]";
connectAttr "Spine_Spine2_M_JNT.msg" "bindPose1.m[2]";
connectAttr "Spine_Spine3_M_JNT.msg" "bindPose1.m[3]";
connectAttr "Neck_Neck_M_JNT.msg" "bindPose1.m[4]";
connectAttr "Head_Head1_M_JNT.msg" "bindPose1.m[5]";
connectAttr "Clav_Clav_L_JNT.msg" "bindPose1.m[6]";
connectAttr "Arm_Shoulder_L_JNT.msg" "bindPose1.m[7]";
connectAttr "Arm_Elbow_L_JNT.msg" "bindPose1.m[8]";
connectAttr "Arm_Wrist_L_JNT.msg" "bindPose1.m[9]";
connectAttr "Thumb_Thumb1_L_JNT.msg" "bindPose1.m[10]";
connectAttr "Thumb_Thumb2_L_JNT.msg" "bindPose1.m[11]";
connectAttr "Thumb_Thumb3_L_JNT.msg" "bindPose1.m[12]";
connectAttr "Index_Index1_L_JNT.msg" "bindPose1.m[13]";
connectAttr "Index_Index2_L_JNT.msg" "bindPose1.m[14]";
connectAttr "Index_Index3_L_JNT.msg" "bindPose1.m[15]";
connectAttr "Middle_Middle1_L_JNT.msg" "bindPose1.m[16]";
connectAttr "Middle_Middle2_L_JNT.msg" "bindPose1.m[17]";
connectAttr "Middle_Middle3_L_JNT.msg" "bindPose1.m[18]";
connectAttr "Ring_Ring1_L_JNT.msg" "bindPose1.m[19]";
connectAttr "Ring_Ring2_L_JNT.msg" "bindPose1.m[20]";
connectAttr "Ring_Ring3_L_JNT.msg" "bindPose1.m[21]";
connectAttr "Pinky_Pinky1_L_JNT.msg" "bindPose1.m[22]";
connectAttr "Pinky_Pinky2_L_JNT.msg" "bindPose1.m[23]";
connectAttr "Pinky_Pinky3_L_JNT.msg" "bindPose1.m[24]";
connectAttr "Clav_Clav_R_JNT.msg" "bindPose1.m[25]";
connectAttr "Arm_Shoulder_R_JNT.msg" "bindPose1.m[26]";
connectAttr "Arm_Elbow_R_JNT.msg" "bindPose1.m[27]";
connectAttr "Arm_Wrist_R_JNT.msg" "bindPose1.m[28]";
connectAttr "Pinky_Pinky1_R_JNT.msg" "bindPose1.m[29]";
connectAttr "Pinky_Pinky2_R_JNT.msg" "bindPose1.m[30]";
connectAttr "Pinky_Pinky3_R_JNT.msg" "bindPose1.m[31]";
connectAttr "Ring_Ring1_R_JNT.msg" "bindPose1.m[32]";
connectAttr "Ring_Ring2_R_JNT.msg" "bindPose1.m[33]";
connectAttr "Ring_Ring3_R_JNT.msg" "bindPose1.m[34]";
connectAttr "Middle_Middle1_R_JNT.msg" "bindPose1.m[35]";
connectAttr "Middle_Middle2_R_JNT.msg" "bindPose1.m[36]";
connectAttr "Middle_Middle3_R_JNT.msg" "bindPose1.m[37]";
connectAttr "Index_Index1_R_JNT.msg" "bindPose1.m[38]";
connectAttr "Index_Index2_R_JNT.msg" "bindPose1.m[39]";
connectAttr "Index_Index3_R_JNT.msg" "bindPose1.m[40]";
connectAttr "Thumb_Thumb1_R_JNT.msg" "bindPose1.m[41]";
connectAttr "Thumb_Thumb2_R_JNT.msg" "bindPose1.m[42]";
connectAttr "Thumb_Thumb3_R_JNT.msg" "bindPose1.m[43]";
connectAttr "Leg_Hip_L_JNT.msg" "bindPose1.m[44]";
connectAttr "Leg_Knee_L_JNT.msg" "bindPose1.m[45]";
connectAttr "Leg_Ankle_L_JNT.msg" "bindPose1.m[46]";
connectAttr "Foot_Ball_L_JNT.msg" "bindPose1.m[47]";
connectAttr "Leg_Hip_R_JNT.msg" "bindPose1.m[48]";
connectAttr "Leg_Knee_R_JNT.msg" "bindPose1.m[49]";
connectAttr "Leg_Ankle_R_JNT.msg" "bindPose1.m[50]";
connectAttr "Foot_Ball_R_JNT.msg" "bindPose1.m[51]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[3]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[9]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[9]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[9]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[20]" "bindPose1.p[21]";
connectAttr "bindPose1.m[9]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
connectAttr "bindPose1.m[23]" "bindPose1.p[24]";
connectAttr "bindPose1.m[3]" "bindPose1.p[25]";
connectAttr "bindPose1.m[25]" "bindPose1.p[26]";
connectAttr "bindPose1.m[26]" "bindPose1.p[27]";
connectAttr "bindPose1.m[27]" "bindPose1.p[28]";
connectAttr "bindPose1.m[28]" "bindPose1.p[29]";
connectAttr "bindPose1.m[29]" "bindPose1.p[30]";
connectAttr "bindPose1.m[30]" "bindPose1.p[31]";
connectAttr "bindPose1.m[28]" "bindPose1.p[32]";
connectAttr "bindPose1.m[32]" "bindPose1.p[33]";
connectAttr "bindPose1.m[33]" "bindPose1.p[34]";
connectAttr "bindPose1.m[28]" "bindPose1.p[35]";
connectAttr "bindPose1.m[35]" "bindPose1.p[36]";
connectAttr "bindPose1.m[36]" "bindPose1.p[37]";
connectAttr "bindPose1.m[28]" "bindPose1.p[38]";
connectAttr "bindPose1.m[38]" "bindPose1.p[39]";
connectAttr "bindPose1.m[39]" "bindPose1.p[40]";
connectAttr "bindPose1.m[28]" "bindPose1.p[41]";
connectAttr "bindPose1.m[41]" "bindPose1.p[42]";
connectAttr "bindPose1.m[42]" "bindPose1.p[43]";
connectAttr "bindPose1.m[0]" "bindPose1.p[44]";
connectAttr "bindPose1.m[44]" "bindPose1.p[45]";
connectAttr "bindPose1.m[45]" "bindPose1.p[46]";
connectAttr "bindPose1.m[46]" "bindPose1.p[47]";
connectAttr "bindPose1.m[0]" "bindPose1.p[48]";
connectAttr "bindPose1.m[48]" "bindPose1.p[49]";
connectAttr "bindPose1.m[49]" "bindPose1.p[50]";
connectAttr "bindPose1.m[50]" "bindPose1.p[51]";
connectAttr "Pelvis_Root_M_JNT.bps" "bindPose1.wm[0]";
connectAttr "Spine_Spine1_M_JNT.bps" "bindPose1.wm[1]";
connectAttr "Spine_Spine2_M_JNT.bps" "bindPose1.wm[2]";
connectAttr "Spine_Spine3_M_JNT.bps" "bindPose1.wm[3]";
connectAttr "Neck_Neck_M_JNT.bps" "bindPose1.wm[4]";
connectAttr "Head_Head1_M_JNT.bps" "bindPose1.wm[5]";
connectAttr "Clav_Clav_L_JNT.bps" "bindPose1.wm[6]";
connectAttr "Arm_Shoulder_L_JNT.bps" "bindPose1.wm[7]";
connectAttr "Arm_Elbow_L_JNT.bps" "bindPose1.wm[8]";
connectAttr "Arm_Wrist_L_JNT.bps" "bindPose1.wm[9]";
connectAttr "Thumb_Thumb1_L_JNT.bps" "bindPose1.wm[10]";
connectAttr "Thumb_Thumb2_L_JNT.bps" "bindPose1.wm[11]";
connectAttr "Thumb_Thumb3_L_JNT.bps" "bindPose1.wm[12]";
connectAttr "Index_Index1_L_JNT.bps" "bindPose1.wm[13]";
connectAttr "Index_Index2_L_JNT.bps" "bindPose1.wm[14]";
connectAttr "Index_Index3_L_JNT.bps" "bindPose1.wm[15]";
connectAttr "Middle_Middle1_L_JNT.bps" "bindPose1.wm[16]";
connectAttr "Middle_Middle2_L_JNT.bps" "bindPose1.wm[17]";
connectAttr "Middle_Middle3_L_JNT.bps" "bindPose1.wm[18]";
connectAttr "Ring_Ring1_L_JNT.bps" "bindPose1.wm[19]";
connectAttr "Ring_Ring2_L_JNT.bps" "bindPose1.wm[20]";
connectAttr "Ring_Ring3_L_JNT.bps" "bindPose1.wm[21]";
connectAttr "Pinky_Pinky1_L_JNT.bps" "bindPose1.wm[22]";
connectAttr "Pinky_Pinky2_L_JNT.bps" "bindPose1.wm[23]";
connectAttr "Pinky_Pinky3_L_JNT.bps" "bindPose1.wm[24]";
connectAttr "Clav_Clav_R_JNT.bps" "bindPose1.wm[25]";
connectAttr "Arm_Shoulder_R_JNT.bps" "bindPose1.wm[26]";
connectAttr "Arm_Elbow_R_JNT.bps" "bindPose1.wm[27]";
connectAttr "Arm_Wrist_R_JNT.bps" "bindPose1.wm[28]";
connectAttr "Pinky_Pinky1_R_JNT.bps" "bindPose1.wm[29]";
connectAttr "Pinky_Pinky2_R_JNT.bps" "bindPose1.wm[30]";
connectAttr "Pinky_Pinky3_R_JNT.bps" "bindPose1.wm[31]";
connectAttr "Ring_Ring1_R_JNT.bps" "bindPose1.wm[32]";
connectAttr "Ring_Ring2_R_JNT.bps" "bindPose1.wm[33]";
connectAttr "Ring_Ring3_R_JNT.bps" "bindPose1.wm[34]";
connectAttr "Middle_Middle1_R_JNT.bps" "bindPose1.wm[35]";
connectAttr "Middle_Middle2_R_JNT.bps" "bindPose1.wm[36]";
connectAttr "Middle_Middle3_R_JNT.bps" "bindPose1.wm[37]";
connectAttr "Index_Index1_R_JNT.bps" "bindPose1.wm[38]";
connectAttr "Index_Index2_R_JNT.bps" "bindPose1.wm[39]";
connectAttr "Index_Index3_R_JNT.bps" "bindPose1.wm[40]";
connectAttr "Thumb_Thumb1_R_JNT.bps" "bindPose1.wm[41]";
connectAttr "Thumb_Thumb2_R_JNT.bps" "bindPose1.wm[42]";
connectAttr "Thumb_Thumb3_R_JNT.bps" "bindPose1.wm[43]";
connectAttr "Leg_Hip_L_JNT.bps" "bindPose1.wm[44]";
connectAttr "Leg_Knee_L_JNT.bps" "bindPose1.wm[45]";
connectAttr "Leg_Ankle_L_JNT.bps" "bindPose1.wm[46]";
connectAttr "Foot_Ball_L_JNT.bps" "bindPose1.wm[47]";
connectAttr "Leg_Hip_R_JNT.bps" "bindPose1.wm[48]";
connectAttr "Leg_Knee_R_JNT.bps" "bindPose1.wm[49]";
connectAttr "Leg_Ankle_R_JNT.bps" "bindPose1.wm[50]";
connectAttr "Foot_Ball_R_JNT.bps" "bindPose1.wm[51]";
connectAttr "lambert2SG.msg" "Control_Shapes_materialInfo1.sg";
connectAttr "TempMaterial.msg" "Control_Shapes_materialInfo1.m";
connectAttr "TempMaterial.oc" "lambert2SG.ss";
connectAttr "LControlsMaterial.oc" "LControlsMaterialSG.ss";
connectAttr "TEMP_RigRoot.controlMtrL" "LControlsMaterialSG.rigRoot";
connectAttr "Pinky2_Joint_L_CTR1Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Pinky1_Joint_L_CTR0Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Pinky3_Joint_L_CTR2Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Pinky4_Joint_L_CTR3Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Knee_Joint_L_CTR1Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Hip_Joint_L_CTR0Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Ankle_Joint_L_CTR2Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Thumb2_Joint_L_CTR1Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Thumb1_Joint_L_CTR0Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Thumb3_Joint_L_CTR2Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Thumb4_Joint_L_CTR3Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Middle2_Joint_L_CTR1Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Middle1_Joint_L_CTR0Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Middle3_Joint_L_CTR2Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Middle4_Joint_L_CTR3Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Toe_Joint_L_CTR1Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Ball_Joint_L_CTR0Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Eye_Joint_L_CTR0Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Ring2_Joint_L_CTR1Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Ring1_Joint_L_CTR0Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Ring3_Joint_L_CTR2Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Ring4_Joint_L_CTR3Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Elbow_Joint_L_CTR1Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Shoulder_Joint_L_CTR0Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Wrist_Joint_L_CTR2Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Clav_Joint_L_CTR0Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Index2_Joint_L_CTR1Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Index1_Joint_L_CTR0Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Index3_Joint_L_CTR2Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Index4_Joint_L_CTR3Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "LControlsMaterialSG.msg" "materialInfo3.sg";
connectAttr "LControlsMaterial.msg" "materialInfo3.m";
connectAttr "LControlsMaterial.msg" "materialInfo3.t" -na;
connectAttr "MControlsMaterial.oc" "MControlsMaterialSG.ss";
connectAttr "TEMP_RigRoot.controlMtrM" "MControlsMaterialSG.rigRoot";
connectAttr "Head2_Joint_M_CTR1Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Head1_Joint_M_CTR0Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Spine2_Joint_M_CTR1Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Spine1_Joint_M_CTR0Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Spine3_Joint_M_CTR2Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Neck_Joint_M_CTR0Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Root_Joint_M_CTR0Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "MControlsMaterialSG.msg" "materialInfo4.sg";
connectAttr "MControlsMaterial.msg" "materialInfo4.m";
connectAttr "MControlsMaterial.msg" "materialInfo4.t" -na;
connectAttr "RControlsMaterial.oc" "RControlsMaterialSG.ss";
connectAttr "TEMP_RigRoot.controlMtrR" "RControlsMaterialSG.rigRoot";
connectAttr "Thumb2_Joint_R_CTR1Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Thumb1_Joint_R_CTR0Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Thumb3_Joint_R_CTR2Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Thumb4_Joint_R_CTR3Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Knee_Joint_R_CTR1Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Hip_Joint_R_CTR0Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Ankle_Joint_R_CTR2Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Pinky2_Joint_R_CTR1Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Pinky1_Joint_R_CTR0Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Pinky3_Joint_R_CTR2Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Pinky4_Joint_R_CTR3Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Middle2_Joint_R_CTR1Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Middle1_Joint_R_CTR0Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Middle3_Joint_R_CTR2Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Middle4_Joint_R_CTR3Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Eye_Joint_R_CTR0Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Toe_Joint_R_CTR1Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Ball_Joint_R_CTR0Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Index2_Joint_R_CTR1Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Index1_Joint_R_CTR0Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Index3_Joint_R_CTR2Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Index4_Joint_R_CTR3Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Clav_Joint_R_CTR0Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Elbow_Joint_R_CTR1Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Shoulder_Joint_R_CTR0Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Wrist_Joint_R_CTR2Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Ring2_Joint_R_CTR1Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Ring1_Joint_R_CTR0Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Ring3_Joint_R_CTR2Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Ring4_Joint_R_CTR3Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "RControlsMaterialSG.msg" "materialInfo5.sg";
connectAttr "RControlsMaterial.msg" "materialInfo5.m";
connectAttr "RControlsMaterial.msg" "materialInfo5.t" -na;
connectAttr "Ring2_Joint_R_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "Ankle_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "Ring_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "Spine2_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "Thumb3_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "Ball_Joint_R_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "Index_Index1_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "Thumb_Thumb2_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "Middle2_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "Middle3_Joint_R_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "Foot_Ball_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "Thumb1_Joint_R_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "Leg_Ankle_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "lambert2SG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn";
connectAttr "Wrist_Joint_R_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "Neck_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "Foot_Toe_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn";
connectAttr "materialInfo5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn";
connectAttr "Middle3_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "Index_Index1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "Ring4_Joint_R_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "materialInfo1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn";
connectAttr "Spine3_Joint_M_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "Toe_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "Middle2_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "Neck_Neck_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "Middle_Middle2_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "Middle1_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "Pinky3_Joint_R_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "Middle3_Joint_R_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "Spine_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "Middle_Middle4_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "Hip_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "Hip_Joint_R_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "Pinky_Pinky3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "Wrist_Joint_R_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "Middle3_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "Middle_Middle4_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "Thumb3_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "Middle3_Joint_R_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "Middle_Middle1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "Knee_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "Clav_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "Eye_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "Ring1_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "Thumb2_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "bindPose1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn";
connectAttr "Spine_Spine1_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "Toe_Joint_R_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn"
		;
connectAttr "Elbow_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn"
		;
connectAttr "Thumb_Thumb4_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "Toe_Joint_R_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "Spine2_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "Pelvis_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "Spine1_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "Ring4_Joint_R_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "Spine3_Joint_M_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "Index3_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "Thumb_Thumb3_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "Elbow_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "Thumb4_Joint_L_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "Middle1_Joint_R_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn"
		;
connectAttr "Index_Index3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "Leg_Knee_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn";
connectAttr "Elbow_Joint_R_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "materialInfo2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn";
connectAttr "Leg_Hip_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn";
connectAttr "Ankle_Joint_R_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn"
		;
connectAttr "Ring2_Joint_R_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "Arm_Shoulder_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn"
		;
connectAttr "Ball_Joint_R_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "Hip_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "Middle4_Joint_R_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "Arm_Elbow_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "Thumb_Thumb4_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn"
		;
connectAttr "Foot_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn"
		;
connectAttr "TempMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn";
connectAttr "Middle_Limb_R_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "LIMBS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn";
connectAttr "Ring1_Joint_R_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "Pinky4_Joint_R_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn"
		;
connectAttr "Pinky1_Joint_R_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn"
		;
connectAttr "Ring3_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn"
		;
connectAttr "Thumb_Thumb2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "Middle_Middle3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "Index_Index4_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "Index1_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "Index2_Joint_R_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "Ring_Ring2_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "Thumb_Thumb3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn"
		;
connectAttr "asdf1:Beta_HighLimbsGeoSG2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "Head_Head1_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn"
		;
connectAttr "Index2_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn"
		;
connectAttr "Ring_Ring1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn"
		;
connectAttr "Shoulder_Joint_R_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn"
		;
connectAttr "Middle2_Joint_R_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn"
		;
connectAttr "Pinky3_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn"
		;
connectAttr "Ankle_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn"
		;
connectAttr "Pelvis_Root_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn"
		;
connectAttr "Ring4_Joint_L_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn"
		;
connectAttr "Index1_Joint_R_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn"
		;
connectAttr "Head1_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn"
		;
connectAttr "Middle4_Joint_R_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn"
		;
connectAttr "Ring_Ring3_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn"
		;
connectAttr "Thumb_Thumb1_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn"
		;
connectAttr "Thumb4_Joint_R_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn"
		;
connectAttr "Pinky_Limb_R_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn"
		;
connectAttr "Ring4_Joint_L_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn"
		;
connectAttr "Head_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn"
		;
connectAttr "Spine_Spine3_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn"
		;
connectAttr "Pinky4_Joint_L_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn"
		;
connectAttr "Toe_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn"
		;
connectAttr "Pinky4_Joint_R_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn"
		;
connectAttr "Ring_Limb_R_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn"
		;
connectAttr "Pinky2_Joint_R_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn"
		;
connectAttr "Foot_Ball_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn"
		;
connectAttr "RControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn"
		;
connectAttr "Eye_Joint_R_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn"
		;
connectAttr "Leg_Limb_R_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[118].dn"
		;
connectAttr "Pinky_Pinky2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn"
		;
connectAttr "Pinky3_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[120].dn"
		;
connectAttr "Index1_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn"
		;
connectAttr "Index_Index3_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn"
		;
connectAttr "Index_Index2_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[123].dn"
		;
connectAttr "Beta_SurfaceSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[124].dn"
		;
connectAttr "LControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[125].dn"
		;
connectAttr "Ball_Joint_R_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[126].dn"
		;
connectAttr "Beta_JointsSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[127].dn";
connectAttr "Arm_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[128].dn"
		;
connectAttr "Wrist_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[129].dn"
		;
connectAttr "Wrist_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[130].dn"
		;
connectAttr "Middle1_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[131].dn"
		;
connectAttr "Ring3_Joint_R_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[132].dn"
		;
connectAttr "Ring3_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[133].dn"
		;
connectAttr "Middle_Middle2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[134].dn"
		;
connectAttr "Index4_Joint_R_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[135].dn"
		;
connectAttr "Thumb_Limb_R_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[136].dn"
		;
connectAttr "Middle_Middle1_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[137].dn"
		;
connectAttr "Eye_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[138].dn"
		;
connectAttr "Pinky2_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[139].dn"
		;
connectAttr "Thumb2_Joint_R_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[140].dn"
		;
connectAttr "Pinky3_Joint_R_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[141].dn"
		;
connectAttr "Ring3_Joint_R_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[142].dn"
		;
connectAttr "Index1_Joint_R_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[143].dn"
		;
connectAttr "Clav_Joint_R_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[144].dn"
		;
connectAttr "Middle1_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[145].dn"
		;
connectAttr "Head2_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[146].dn"
		;
connectAttr "Elbow_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[147].dn"
		;
connectAttr "Neck_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[148].dn"
		;
connectAttr "Knee_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[149].dn"
		;
connectAttr "Ring4_Joint_L_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[150].dn"
		;
connectAttr "Pinky4_Joint_L_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[151].dn"
		;
connectAttr "Ring2_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[152].dn"
		;
connectAttr "Foot_Toe_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[153].dn"
		;
connectAttr "Elbow_Joint_R_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[154].dn"
		;
connectAttr "Knee_Joint_R_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[155].dn"
		;
connectAttr "Thumb3_Joint_R_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[156].dn"
		;
connectAttr "Thumb1_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[157].dn"
		;
connectAttr "Index4_Joint_R_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[158].dn"
		;
connectAttr "Pinky3_Joint_R_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[159].dn"
		;
connectAttr "Pinky1_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[160].dn"
		;
connectAttr "Arm_Elbow_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[161].dn"
		;
connectAttr "Ring2_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[162].dn"
		;
connectAttr "Spine2_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[163].dn"
		;
connectAttr "Pinky2_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[164].dn"
		;
connectAttr "Pinky1_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[165].dn"
		;
connectAttr "Index3_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[166].dn"
		;
connectAttr "Clav_Joint_R_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[167].dn"
		;
connectAttr "Head2_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[168].dn"
		;
connectAttr "Neck_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[169].dn"
		;
connectAttr "Index3_Joint_R_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[170].dn"
		;
connectAttr "Knee_Joint_R_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[171].dn"
		;
connectAttr "Index4_Joint_L_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[172].dn"
		;
connectAttr "Index_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[173].dn"
		;
connectAttr "LControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[174].dn"
		;
connectAttr "Ring_Ring3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[175].dn"
		;
connectAttr "Shoulder_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[176].dn"
		;
connectAttr "Pinky_Pinky3_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[177].dn"
		;
connectAttr "Wrist_Joint_R_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[178].dn"
		;
connectAttr "Eye_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[179].dn"
		;
connectAttr "Thumb2_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[180].dn"
		;
connectAttr "Ball_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[181].dn"
		;
connectAttr "Shoulder_Joint_R_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[182].dn"
		;
connectAttr "Index3_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[183].dn"
		;
connectAttr "Ring1_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[184].dn"
		;
connectAttr "Spine1_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[185].dn"
		;
connectAttr "Index3_Joint_R_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[186].dn"
		;
connectAttr "Head1_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[187].dn"
		;
connectAttr "Ring4_Joint_R_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[188].dn"
		;
connectAttr "Middle1_Joint_R_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[189].dn"
		;
connectAttr "Clav_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[190].dn"
		;
connectAttr "Hip_Joint_R_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[191].dn"
		;
connectAttr "Leg_Ankle_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[192].dn"
		;
connectAttr "Middle1_Joint_R_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[193].dn"
		;
connectAttr "Eye_Eye_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[194].dn";
connectAttr "Ring3_Joint_R_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[195].dn"
		;
connectAttr "Leg_Hip_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[196].dn";
connectAttr "Eye_Limb_R_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[197].dn"
		;
connectAttr "Pinky2_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[198].dn"
		;
connectAttr "Toe_Joint_R_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[199].dn"
		;
connectAttr "Thumb4_Joint_L_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[200].dn"
		;
connectAttr "Wrist_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[201].dn"
		;
connectAttr "Index1_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[202].dn"
		;
connectAttr "Shoulder_Joint_R_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[203].dn"
		;
connectAttr "Ring_Ring1_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[204].dn"
		;
connectAttr "materialInfo3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[205].dn";
connectAttr "Thumb3_Joint_R_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[206].dn"
		;
connectAttr "Index_Index4_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[207].dn"
		;
connectAttr "Thumb_Thumb1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[208].dn"
		;
connectAttr "Thumb1_Joint_R_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[209].dn"
		;
connectAttr "Pinky1_Joint_R_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[210].dn"
		;
connectAttr "Clav_Clav_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[211].dn"
		;
connectAttr "Middle4_Joint_L_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[212].dn"
		;
connectAttr "Middle4_Joint_R_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[213].dn"
		;
connectAttr "TEMP_RigRoot.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[214].dn";
connectAttr "Ring3_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[215].dn"
		;
connectAttr "Leg_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[216].dn"
		;
connectAttr "Thumb3_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[217].dn"
		;
connectAttr "Index2_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[218].dn"
		;
connectAttr "Middle_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[219].dn"
		;
connectAttr "Spine3_Joint_M_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[220].dn"
		;
connectAttr "Index2_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[221].dn"
		;
connectAttr "Spine1_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[222].dn"
		;
connectAttr "Thumb4_Joint_R_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[223].dn"
		;
connectAttr "Thumb2_Joint_R_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[224].dn"
		;
connectAttr "Ankle_Joint_R_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[225].dn"
		;
connectAttr "Thumb2_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[226].dn"
		;
connectAttr "Control_Shapes_materialInfo1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[227].dn"
		;
connectAttr "Thumb1_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[228].dn"
		;
connectAttr "Knee_Joint_R_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[229].dn"
		;
connectAttr "RControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[230].dn"
		;
connectAttr "Clav_Clav_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[231].dn"
		;
connectAttr "Elbow_Joint_R_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[232].dn"
		;
connectAttr "Index2_Joint_R_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[233].dn"
		;
connectAttr "Arm_Wrist_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[234].dn"
		;
connectAttr "Pinky3_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[235].dn"
		;
connectAttr "Index4_Joint_R_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[236].dn"
		;
connectAttr "Thumb_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[237].dn"
		;
connectAttr "Root_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[238].dn"
		;
connectAttr "Middle_Middle3_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[239].dn"
		;
connectAttr "Eye_Joint_R_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[240].dn"
		;
connectAttr "Middle4_Joint_L_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[241].dn"
		;
connectAttr "Middle2_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[242].dn"
		;
connectAttr "Head1_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[243].dn"
		;
connectAttr "Ring_Ring4_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[244].dn"
		;
connectAttr "Thumb2_Joint_R_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[245].dn"
		;
connectAttr "Ring2_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[246].dn"
		;
connectAttr "Index1_Joint_R_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[247].dn"
		;
connectAttr "Ankle_Joint_R_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[248].dn"
		;
connectAttr "Ankle_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[249].dn"
		;
connectAttr "Pinky_Pinky4_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[250].dn"
		;
connectAttr "Shoulder_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[251].dn"
		;
connectAttr "Thumb3_Joint_R_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[252].dn"
		;
connectAttr "Head2_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[253].dn"
		;
connectAttr "Knee_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[254].dn"
		;
connectAttr "Eye_Joint_R_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[255].dn"
		;
connectAttr "Index4_Joint_L_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[256].dn"
		;
connectAttr "Clav_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[257].dn"
		;
connectAttr "Middle2_Joint_R_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[258].dn"
		;
connectAttr "JOINTS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[259].dn";
connectAttr "Pinky2_Joint_R_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[260].dn"
		;
connectAttr "Clav_Limb_R_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[261].dn"
		;
connectAttr "Pinky_Pinky1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[262].dn"
		;
connectAttr "Index2_Joint_R_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[263].dn"
		;
connectAttr "Pinky2_Joint_R_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[264].dn"
		;
connectAttr "Beta_Joints_MAT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[265].dn"
		;
connectAttr "Hip_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[266].dn"
		;
connectAttr "Spine_Spine2_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[267].dn"
		;
connectAttr "Arm_Wrist_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[268].dn"
		;
connectAttr "Pinky_Pinky4_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[269].dn"
		;
connectAttr "Pinky1_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[270].dn"
		;
connectAttr "Ring1_Joint_R_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[271].dn"
		;
connectAttr "Pinky4_Joint_L_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[272].dn"
		;
connectAttr "Foot_Limb_R_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[273].dn"
		;
connectAttr "Ball_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[274].dn"
		;
connectAttr "Ring_Ring2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[275].dn"
		;
connectAttr "Root_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[276].dn"
		;
connectAttr "Shoulder_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[277].dn"
		;
connectAttr "Hip_Joint_R_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[278].dn"
		;
connectAttr "Neck_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[279].dn"
		;
connectAttr "Eye_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[280].dn"
		;
connectAttr "Clav_Joint_R_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[281].dn"
		;
connectAttr "Ball_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[282].dn"
		;
connectAttr "Clav_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[283].dn"
		;
connectAttr "Middle2_Joint_R_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[284].dn"
		;
connectAttr "Index_Limb_R_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[285].dn"
		;
connectAttr "Index3_Joint_R_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[286].dn"
		;
connectAttr "Ring2_Joint_R_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[287].dn"
		;
connectAttr "Leg_Knee_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[288].dn"
		;
connectAttr "Arm_Shoulder_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[289].dn"
		;
connectAttr "Arm_Limb_R_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[290].dn"
		;
connectAttr "Pinky4_Joint_R_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[291].dn"
		;
connectAttr "materialInfo4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[292].dn";
connectAttr "Thumb4_Joint_L_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[293].dn"
		;
connectAttr "Index4_Joint_L_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[294].dn"
		;
connectAttr "Ring1_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[295].dn"
		;
connectAttr "Pinky1_Joint_R_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[296].dn"
		;
connectAttr "Ring1_Joint_R_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[297].dn"
		;
connectAttr "Toe_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[298].dn"
		;
connectAttr "Eye_Eye_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[299].dn";
connectAttr "Pinky_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[300].dn"
		;
connectAttr "Index_Index2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[301].dn"
		;
connectAttr "Thumb1_Joint_R_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[302].dn"
		;
connectAttr "MControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[303].dn"
		;
connectAttr "Middle3_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[304].dn"
		;
connectAttr "Middle4_Joint_L_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[305].dn"
		;
connectAttr "MControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[306].dn"
		;
connectAttr "Pinky_Pinky2_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[307].dn"
		;
connectAttr "Thumb4_Joint_R_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[308].dn"
		;
connectAttr "Root_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[309].dn"
		;
connectAttr "Head_Head2_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[310].dn"
		;
connectAttr "Pinky_Pinky1_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[311].dn"
		;
connectAttr "Ring_Ring4_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[312].dn"
		;
connectAttr "Thumb1_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[313].dn"
		;
connectAttr "Beta_JointsSG.pa" ":renderPartition.st" -na;
connectAttr "Beta_SurfaceSG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "LControlsMaterialSG.pa" ":renderPartition.st" -na;
connectAttr "MControlsMaterialSG.pa" ":renderPartition.st" -na;
connectAttr "RControlsMaterialSG.pa" ":renderPartition.st" -na;
connectAttr "Beta_Joints_MAT.msg" ":defaultShaderList1.s" -na;
connectAttr "asdf1:Beta_HighLimbsGeoSG2.msg" ":defaultShaderList1.s" -na;
connectAttr "TempMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "LControlsMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "MControlsMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "RControlsMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of asdf.ma
