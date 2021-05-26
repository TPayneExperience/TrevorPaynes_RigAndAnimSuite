//Maya ASCII 2019 scene
//Name: PFX_AnimRig.ma
//Last modified: Tue, May 25, 2021 07:37:58 PM
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
	rename -uid "89123E2C-4D9F-2F34-D78F-5C84B8C86BFE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 296.27713935807333 311.39192320969244 298.04087345208575 ;
	setAttr ".r" -type "double3" -28.538352729602423 35.399999999999928 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "E0250EDE-460F-3E93-46D8-2897BC1DC39F";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 522.87284105617073;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "5DF4497D-4BCF-C994-087F-2C8270EEC128";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "340CD21A-4896-57E0-5E46-11AF6F46B266";
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
	rename -uid "94091805-4D6F-1BEE-93C5-2094E98F4BA0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "381F3BE3-4E39-D873-CBC9-BFBF3663D543";
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
	rename -uid "96DA8EB1-4AF3-276D-BFD3-FBB459E770D4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "EFE56D6F-4FE4-5F65-F211-70ABCA04B8D8";
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
	rename -uid "A3B19C46-4CBE-FED5-0C3C-A289D1E84B50";
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
	setAttr ".rigMode" 1;
	setAttr ".pfrsName" -type "string" "TEMP";
	setAttr ".category" -type "string" "Animation";
	setAttr ".operation" -type "string" "Behavior";
	setAttr ".nextLimbID" 7;
	setAttr ".nextJointID" 11;
	setAttr ".posesFolderPath" -type "string" "D:/Assets/Programming/Python/Maya/PayneFreeRigSuite/TESTING_FILES/MISC\\Poses";
createNode transform -n "JOINTS" -p "TEMP_RigRoot";
	rename -uid "48493F6A-48DC-0968-8E4F-618A1C45C6F3";
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
createNode joint -n "Spine_Spine_M_JNT" -p "JOINTS";
	rename -uid "376706AF-4A3B-8704-C29C-3BB6538DFC78";
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
	setAttr ".jo" -type "double3" 89.999999999999972 6.9902515623534738 90 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.6834143485471333;
	setAttr ".ID" 2;
	setAttr ".pfrsName" -type "string" "Spine";
createNode joint -n "Neck_Neck_M_JNT" -p "Spine_Spine_M_JNT";
	rename -uid "62221AEC-47B5-A40B-134F-B2A687C6EA75";
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
	setAttr ".jo" -type "double3" 180 -5.5656248200911511e-15 20.485984843149424 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.87767989730109608;
	setAttr ".ID" 10;
	setAttr ".pfrsName" -type "string" "Neck";
createNode joint -n "Head_Head1_M_JNT" -p "Neck_Neck_M_JNT";
	rename -uid "A0C2E72B-4B63-AD7E-0486-209F16B095AE";
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
	setAttr ".jo" -type "double3" -1.8383448530397691e-15 1.1912747353157431e-14 -17.545079193587753 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.640282449385709;
	setAttr ".ID" 5;
	setAttr ".pfrsName" -type "string" "Head1";
createNode joint -n "Head_Head2_M_JNT" -p "Head_Head1_M_JNT";
	rename -uid "F47A5C8B-4734-F667-802F-559CD3E16EAC";
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
	setAttr ".jo" -type "double3" 58.959187525616294 89.999999999999972 0 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 1.5485350634117161;
	setAttr ".ID" 6;
	setAttr ".pfrsName" -type "string" "Head2";
createNode joint -n "Jaw_Jaw1_M_JNT" -p "Head_Head1_M_JNT";
	rename -uid "A6B667DB-423F-AC03-1888-CF86CC33BC6A";
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
	setAttr ".jo" -type "double3" -1.8850575836185022e-14 1.975120769384203e-14 -87.326908790938845 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.95617703390454112;
	setAttr ".ID" 3;
	setAttr ".pfrsName" -type "string" "Jaw1";
createNode joint -n "Jaw_Jaw2_M_JNT" -p "Jaw_Jaw1_M_JNT";
	rename -uid "639EF225-4B57-04D5-804D-86B2A97502F7";
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
	setAttr ".jo" -type "double3" 0 0 87.326908790938845 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.95617703390454112;
	setAttr ".ID" 4;
	setAttr ".pfrsName" -type "string" "Jaw2";
createNode joint -n "UpperFace_UF1_M_JNT" -p "Head_Head1_M_JNT";
	rename -uid "8E9B4B23-4470-2621-90F7-479139853362";
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
	setAttr ".jo" -type "double3" 0 0 -87.326908790938845 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.95617703390454112;
	setAttr ".ID" 1;
	setAttr ".pfrsName" -type "string" "UF1";
createNode joint -n "FaceBrow_Brow1_L_JNT" -p "UpperFace_UF1_M_JNT";
	rename -uid "158B77C8-488E-8063-A173-798B8E4B7CA4";
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
	setAttr ".jo" -type "double3" -28.367721265322547 89.999999999999972 0 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.5;
	setAttr ".ID" 7;
	setAttr ".pfrsName" -type "string" "Brow1";
createNode joint -n "FaceBrow_Brow2_L_JNT" -p "UpperFace_UF1_M_JNT";
	rename -uid "A62FFCE9-48F8-46FE-D2A8-A5AEC3BEB8C4";
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
	setAttr ".jo" -type "double3" -28.367721265322547 89.999999999999972 0 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.5;
	setAttr ".ID" 8;
	setAttr ".pfrsName" -type "string" "Brow2";
createNode joint -n "FaceBrow_Brow3_L_JNT" -p "UpperFace_UF1_M_JNT";
	rename -uid "6E125FB7-4A72-05F2-1D63-4E8C40C08A90";
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
	setAttr ".jo" -type "double3" -28.367721265322547 89.999999999999972 0 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.5;
	setAttr ".ID" 9;
	setAttr ".pfrsName" -type "string" "Brow3";
createNode transform -n "LIMBS" -p "TEMP_RigRoot";
	rename -uid "10459EB5-4BFB-7450-B2AB-2C9FF2B32A4E";
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
createNode transform -n "UpperFace_Limb_M_NODE" -p "LIMBS";
	rename -uid "2870943B-4B69-B8C5-A485-BCB848C6CC82";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 1 -en "Head1:Head2" 
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
	setAttr ".pfrsName" -type "string" "UpperFace";
	setAttr ".limbType" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "UF1_Joint_M_GRP0" -p "UpperFace_Limb_M_NODE";
	rename -uid "0ECB8198-49CF-0D10-DF72-6F8123B862B9";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -1.4270190029615336e-15 167.89027931075705 3.987336675532585 ;
	setAttr ".r" -type "double3" 90.000000000000085 -61.632278734677456 -90.000000000000085 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "UF1_Joint_M_CTR0" -p "UF1_Joint_M_GRP0";
	rename -uid "90E50C90-4030-268B-AF4C-47ABCC35CAB6";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "UF1_Joint_M_CTR0Shape" -p "UF1_Joint_M_CTR0";
	rename -uid "DB32C94F-4CE1-DD48-886E-B28E13513310";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Spine_Limb_M_NODE" -p "LIMBS";
	rename -uid "862D0B22-4E9D-37BD-E0AE-3DAE6C25D84B";
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
	setAttr ".ID" 2;
	setAttr ".pfrsName" -type "string" "Spine";
	setAttr ".limbType" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "Spine_Joint_M_GRP0" -p "Spine_Limb_M_NODE";
	rename -uid "FE84A274-466B-8D1E-AC74-F1B45573DEBE";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 0 130 0 ;
	setAttr ".r" -type "double3" 89.999999999999972 6.990251562353472 90 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Spine_Joint_M_CTR0" -p "Spine_Joint_M_GRP0";
	rename -uid "4C2FF7C3-48B8-6B76-85DC-838FE2CA92FD";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Spine_Joint_M_CTR0Shape" -p "Spine_Joint_M_CTR0";
	rename -uid "17FB0902-432D-2000-4630-109B0EBDBF48";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Jaw_Limb_M_NODE" -p "LIMBS";
	rename -uid "8404B0B0-45E9-4747-18E8-5C84C54D1C55";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 1 -en "Head1:Head2" 
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
	setAttr ".pfrsName" -type "string" "Jaw";
	setAttr ".limbType" 3;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Jaw1_Joint_M_GRP0" -p "Jaw_Limb_M_NODE";
	rename -uid "B2982E84-4D8B-685F-D1EF-41A137C0AA9E";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -9.2732957780278464e-16 164.6654882035526 1.3597291066993309 ;
	setAttr ".r" -type "double3" 90.000000000000085 -61.632278734677456 -90.000000000000085 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Jaw1_Joint_M_CTR0" -p "Jaw1_Joint_M_GRP0";
	rename -uid "B38EDAAB-47F5-95FB-CF73-7FBA4FC42EF9";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Jaw1_Joint_M_CTR0Shape" -p "Jaw1_Joint_M_CTR0";
	rename -uid "A63C5B5F-4E36-894C-0F27-13A1BFF85994";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Jaw2_Joint_M_GRP1" -p "Jaw_Limb_M_NODE";
	rename -uid "C0CADA4D-4FA4-9407-5B24-C99DB1FDC383";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -2.4976573994242038e-15 157.20502036323759 11.774590245563381 ;
	setAttr ".r" -type "double3" -90.000000000000043 -31.040812474383703 90.000000000000043 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Jaw2_Joint_M_CTR1" -p "Jaw2_Joint_M_GRP1";
	rename -uid "ACC269C9-4BE9-1E05-32B8-0AA7969AF37D";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Jaw2_Joint_M_CTR1Shape" -p "Jaw2_Joint_M_CTR1";
	rename -uid "0F29EB4A-47BA-2E6D-546C-47812614C445";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Head_Limb_M_NODE" -p "LIMBS";
	rename -uid "B1E201C6-4A07-EA8E-2D2B-41972BCD8CB9";
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
	setAttr ".pfrsName" -type "string" "Head";
	setAttr ".limbType" 3;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Head1_Joint_M_GRP0" -p "Head_Limb_M_NODE";
	rename -uid "148FEEE9-434E-53D8-E668-CBA957129111";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -4.8385519158803786e-16 161.77442179870437 -0.96870911256711745 ;
	setAttr ".r" -type "double3" -90.000000000000043 -31.040812474383703 90.000000000000043 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Head1_Joint_M_CTR0" -p "Head1_Joint_M_GRP0";
	rename -uid "CC7E488B-45A9-3E9C-05AD-918A5FA1A50D";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Head1_Joint_M_CTR0Shape" -p "Head1_Joint_M_CTR0";
	rename -uid "A2246DDB-4212-BC3E-63B8-0B82A52608AA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Head2_Joint_M_GRP1" -p "Head_Limb_M_NODE";
	rename -uid "BA1039DE-4619-5D1C-C5E7-18A9A0AD3478";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -2.6663158514837601e-15 180 10 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Head2_Joint_M_CTR1" -p "Head2_Joint_M_GRP1";
	rename -uid "525457C9-467E-90BF-3C89-7B8F0848CB77";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Head2_Joint_M_CTR1Shape" -p "Head2_Joint_M_CTR1";
	rename -uid "ECB98CC7-4967-0FAD-AC16-0CB19D9DB642";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "FaceBrow_Limb_L_NODE" -p "LIMBS";
	rename -uid "E3952DF1-4937-4F15-8E6D-AFB6FCE92C2D";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "UF1" 
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
	setAttr ".pfrsName" -type "string" "FaceBrow";
	setAttr ".limbType" 2;
	setAttr ".side" 1;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Brow1_Joint_L_GRP0" -p "FaceBrow_Limb_L_NODE";
	rename -uid "7839C833-41E9-524D-78D5-7B8583F4E8DD";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 2.1872999668121307 171.05889892578131 12.542099952697777 ;
	setAttr ".r" -type "double3" -8.9907048107356751 -72.694829766660504 14.779351741201685 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Brow1_Joint_L_CTR0" -p "Brow1_Joint_L_GRP0";
	rename -uid "AE64BF37-450A-7CE6-CCFD-28A909FE71CC";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Brow1_Joint_L_CTR0Shape" -p "Brow1_Joint_L_CTR0";
	rename -uid "991BEA80-4071-60B6-3DCA-0A8164614B44";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Brow2_Joint_L_GRP1" -p "FaceBrow_Limb_L_NODE";
	rename -uid "75A2335A-434B-D501-07DC-CA9ACD60DA6A";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 4.2221279680112822 171.37220824413748 12.214755745846217 ;
	setAttr ".r" -type "double3" -16.811872471554313 -71.740513904941935 14.297771913231593 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000002 1 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Brow2_Joint_L_CTR1" -p "Brow2_Joint_L_GRP1";
	rename -uid "26081391-4994-AFAD-6145-2589885620DB";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Brow2_Joint_L_CTR1Shape" -p "Brow2_Joint_L_CTR1";
	rename -uid "E4B99F6C-4644-FC8F-9E51-AABC879E7B85";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Brow3_Joint_L_GRP2" -p "FaceBrow_Limb_L_NODE";
	rename -uid "FF6E7288-4A6C-C97C-12AF-709FF3B2C73A";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 5.5333063335860952 170.89503278940217 10.587348776216054 ;
	setAttr ".r" -type "double3" -14.145396758642571 -41.134246091602236 1.2667545073205191 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Brow3_Joint_L_CTR2" -p "Brow3_Joint_L_GRP2";
	rename -uid "DE2CDA63-4EB2-B835-52F8-E0B7652FC283";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Brow3_Joint_L_CTR2Shape" -p "Brow3_Joint_L_CTR2";
	rename -uid "14DAFE33-49DD-B117-5598-02AB02625B55";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Neck_Limb_M_NODE" -p "LIMBS";
	rename -uid "5D108547-476A-58FA-9AE0-E484ED7200B4";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "Spine" 
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
	setAttr ".pfrsName" -type "string" "Neck";
	setAttr ".limbType" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "Neck_Joint_M_GRP0" -p "Neck_Limb_M_NODE";
	rename -uid "4C16ED28-4575-8C2A-FECC-AC8C3B113B2E";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 2.9582283945787925e-31 153.70184586064528 -2.906127337701315 ;
	setAttr ".r" -type "double3" -90.000000000000028 -13.495733280795955 90.000000000000014 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Neck_Joint_M_CTR0" -p "Neck_Joint_M_GRP0";
	rename -uid "E90C57CD-4F48-262C-CFA1-2E9B7D5BF549";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Neck_Joint_M_CTR0Shape" -p "Neck_Joint_M_CTR0";
	rename -uid "72649BEF-4B97-D851-94B1-FF92D3625288";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "MESHES" -p "TEMP_RigRoot";
	rename -uid "84AE4695-49A2-31A5-BEA5-A3BF492D4395";
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
	rename -uid "5186CC7B-4D5F-A352-193F-6DA3AF2B3761";
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
	rename -uid "61926528-4A19-CD85-3C5F-F3BB316C33D0";
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
	rename -uid "21263559-4EEA-303C-3E01-CDA7A11DFA90";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Circle_Wire";
createNode nurbsCurve -n "Circle_WireShape" -p "Circle_Wire";
	rename -uid "1C7C3EA2-41D6-FF73-C07A-FC8AE565D65E";
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
	rename -uid "269A3F08-4D40-EC69-D4E8-DEB4C0AAA743";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Cube_PolyShape" -p "Cube_Poly";
	rename -uid "E1AD9F65-4732-5B75-9082-F6AA08ACA8A2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
	rename -uid "A88E024B-43BD-E57C-B678-C7BA3F111DD5";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cube_Wire";
createNode nurbsCurve -n "Cube_WireShape" -p "Cube_Wire";
	rename -uid "3541136F-4BD3-7E2B-A969-458643A7B497";
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
	rename -uid "C8F7C3EC-4924-B8BA-337D-938191A302DF";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cylinder_Poly";
createNode mesh -n "Cylinder_PolyShape" -p "Cylinder_Poly";
	rename -uid "1E0FFE8E-4609-1F75-98DD-CEB339F9BC18";
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
	rename -uid "61F4F4B3-4C61-8E99-4472-959A92B4C04C";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Diamond_Wire";
createNode nurbsCurve -n "Diamond_WireShape" -p "Diamond_Wire";
	rename -uid "EBC71AF3-446B-445B-43D6-49A0D1E2645E";
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
	rename -uid "EF00F46C-4E8C-DF48-6BE5-CF95EE64DF5F";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Pin_Wire";
createNode nurbsCurve -n "Pin_WireShape" -p "Pin_Wire";
	rename -uid "A2AA32F8-4C77-671A-9835-43A453DD9889";
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
	rename -uid "EBB181EA-488D-667B-119F-8CA3F104B850";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Sphere_Poly";
createNode mesh -n "Sphere_PolyShape" -p "Sphere_Poly";
	rename -uid "5FF7FF93-4C84-C212-F5CB-0B9F95751812";
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
	rename -uid "4CD799C2-4CC2-13BC-E54E-F0BC2AF1015E";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Square_Wire";
createNode nurbsCurve -n "Square_WireShape" -p "Square_Wire";
	rename -uid "B18B2EF3-4774-19D0-AD3C-51B3526202AD";
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
	rename -uid "D5A0C697-490F-9787-AF0A-DDB6C9FCC495";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "C3DBBA29-4336-072E-B75C-379F2E511DE5";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "C76F96F0-4787-5155-BAB3-A9BF6C25936E";
createNode displayLayerManager -n "layerManager";
	rename -uid "5BE9E966-4EF1-F6E9-BCD6-1D83432ECFA6";
	setAttr -s 4 ".dli[1:3]"  1 2 3;
	setAttr -s 4 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "7C1F2876-4CFE-3676-80CA-DDB2489CB830";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "0724627F-45BF-3D28-8D1A-ED9237680529";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "8DB0B9C3-4F8B-AEA9-7C3C-6B8B658803AA";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "A1ABBAD6-4694-4642-76A4-D1920694B151";
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
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1194\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1194\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1194\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 50 -size 100 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "9BC50BB5-4FE9-3F34-5010-B08E5FAC1EB1";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "Control_Disp";
	rename -uid "B39CE6AC-4C51-4B32-8A51-F2B957D3A2CD";
	setAttr ".v" no;
	setAttr ".do" 1;
createNode displayLayer -n "Joint_Disp";
	rename -uid "E63E7B62-4FFD-0E79-56FA-6A8807431D7A";
	setAttr ".do" 2;
createNode displayLayer -n "Meshe_Disp";
	rename -uid "80849250-48A6-1C22-5EFD-CBA76F3199FE";
	setAttr ".dt" 2;
	setAttr ".do" 3;
createNode animLayer -n "BaseAnimation";
	rename -uid "F2EFE77F-4A47-BA7B-7E07-EC9EA6C81DCE";
	setAttr ".ovrd" yes;
createNode animLayer -n "Joint_Anim";
	rename -uid "3D2EE4C8-48CB-E001-9B92-4EAA217D1D20";
	setAttr -s 100 ".dsm";
	setAttr -s 80 ".bnds";
	setAttr ".mt" yes;
	setAttr ".ovrd" yes;
createNode lambert -n "TempMaterial";
	rename -uid "51ABFC41-416C-B44E-61F5-5DBFF7BE1763";
	setAttr ".c" -type "float3" 1 0.92308331 0 ;
	setAttr ".it" -type "float3" 0.69277108 0.69277108 0.69277108 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "E3568A42-4F9E-8695-1D38-A1B8B983850C";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "88311E4C-46E9-25BA-7B46-E2B700610EB8";
createNode surfaceShader -n "LControlsMaterial";
	rename -uid "2AE3F63C-4155-C6FC-04C4-56BC632D65B2";
	setAttr ".oc" -type "float3" 0 0 1 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "LControlsMaterialSG";
	rename -uid "232EBAA3-49A1-BBB8-7B13-BBB715695DD8";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "E63CD006-437E-1152-6F0C-D3A6EBEDACA5";
createNode surfaceShader -n "MControlsMaterial";
	rename -uid "DFDC62F3-4EB6-2B0E-CD59-A4A6D1D90A3A";
	setAttr ".oc" -type "float3" 1 1 0 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "MControlsMaterialSG";
	rename -uid "4C8833F2-483C-947F-72E2-EC85A11D6748";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "2A3FA70B-4A7C-BEA2-70B3-FCBC977F19AD";
createNode surfaceShader -n "RControlsMaterial";
	rename -uid "D0121AE3-4CC5-5804-6168-68B7D01518EB";
	setAttr ".oc" -type "float3" 1 0 0 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "RControlsMaterialSG";
	rename -uid "084BC979-442D-39B9-27E2-728F74AA2597";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "942F9354-4A60-081D-FA9D-38B609B8F17D";
createNode animBlendNodeBoolean -n "FaceBrow_L_Brow1_visibility_Joint_Anim";
	rename -uid "C40B90CD-48AF-A3A0-2A5B-C1B5085127DE";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "FaceBrow_L_Brow1_translateX_Joint_Anim";
	rename -uid "7D2E99FB-47D4-6D02-68B7-9FB8135FE2DC";
	setAttr ".ia" 6.0219746905668785;
	setAttr ".ib" 6.0219746905668785;
	setAttr ".o" 6.0219746905668785;
createNode animBlendNodeAdditiveDL -n "FaceBrow_L_Brow1_translateY_Joint_Anim";
	rename -uid "3B00B795-4559-2801-5DB4-8BBE3946201E";
	setAttr ".ia" 6.8527327263816744;
	setAttr ".ib" 6.8527327263816744;
	setAttr ".o" 6.8527327263816744;
createNode animBlendNodeAdditiveDL -n "FaceBrow_L_Brow1_translateZ_Joint_Anim";
	rename -uid "F8C1754C-42B6-DCC3-45ED-53915DE9CABA";
	setAttr ".ia" -2.1872999668121369;
	setAttr ".ib" -2.1872999668121369;
	setAttr ".o" -2.1872999668121369;
createNode animBlendNodeAdditiveRotation -n "FaceBrow_L_Brow1_rotate_Joint_Anim";
	rename -uid "849CF179-4778-4999-4E4A-C5B1C09D4B72";
	setAttr ".ia" -type "double3" -8.9907048107356484 -72.694829766660433 14.77935174120168 ;
	setAttr ".ib" -type "double3" -8.9907048107356484 -72.694829766660433 14.77935174120168 ;
	setAttr ".o" -type "double3" -8.9907048107356484 -72.694829766660433 14.77935174120168 ;
createNode animBlendNodeAdditiveScale -n "FaceBrow_L_Brow1_scaleX_Joint_Anim";
	rename -uid "458C991D-46F1-900F-B785-0798959257E8";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "FaceBrow_L_Brow1_scaleY_Joint_Anim";
	rename -uid "6F2F2821-4AF8-1047-A53C-8CA1BDECE582";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "FaceBrow_L_Brow1_scaleZ_Joint_Anim";
	rename -uid "D9A7C607-4AC3-7C9C-02DB-5CA7AA2C9A1E";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "FaceBrow_L_Brow2_visibility_Joint_Anim";
	rename -uid "B2126D1C-4A16-B9C8-E875-AFB4D98FBCE6";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "FaceBrow_L_Brow2_translateX_Joint_Anim";
	rename -uid "C8FB98F9-4FDB-BAB7-C943-D696C6E5CAFE";
	setAttr ".ia" 5.5850769520825878;
	setAttr ".ib" 5.5850769520825878;
	setAttr ".o" 5.5850769520825878;
createNode animBlendNodeAdditiveDL -n "FaceBrow_L_Brow2_translateY_Joint_Anim";
	rename -uid "A77BA75B-487D-ED2F-B81E-1195D6E50A27";
	setAttr ".ia" 6.9728881458824503;
	setAttr ".ib" 6.9728881458824503;
	setAttr ".o" 6.9728881458824503;
createNode animBlendNodeAdditiveDL -n "FaceBrow_L_Brow2_translateZ_Joint_Anim";
	rename -uid "254D3A2E-4DDC-47CB-E4C3-3AAB1D5E536B";
	setAttr ".ia" -4.2221279680112884;
	setAttr ".ib" -4.2221279680112884;
	setAttr ".o" -4.2221279680112884;
createNode animBlendNodeAdditiveRotation -n "FaceBrow_L_Brow2_rotate_Joint_Anim";
	rename -uid "08FD5705-48DB-ADE9-F9E2-FFB5B921C3C3";
	setAttr ".ia" -type "double3" -16.811872471554238 -71.740513904941864 14.29777191323153 ;
	setAttr ".ib" -type "double3" -16.811872471554238 -71.740513904941864 14.29777191323153 ;
	setAttr ".o" -type "double3" -16.811872471554238 -71.740513904941864 14.29777191323153 ;
createNode animBlendNodeAdditiveScale -n "FaceBrow_L_Brow2_scaleX_Joint_Anim";
	rename -uid "A0AC992A-44A4-41A8-D16C-82836A30B0A7";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "FaceBrow_L_Brow2_scaleY_Joint_Anim";
	rename -uid "B2E88F71-47E0-DF74-01F5-A196B1C40E1E";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "FaceBrow_L_Brow2_scaleZ_Joint_Anim";
	rename -uid "9272657E-4E88-2B6D-2662-588B20AE5EA9";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "FaceBrow_L_Brow3_visibility_Joint_Anim";
	rename -uid "2692A479-46B2-F0C9-8EE2-A4A4AF706C96";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "FaceBrow_L_Brow3_translateX_Joint_Anim";
	rename -uid "7D67F470-4159-6A69-ECF3-50AF9E74FEC6";
	setAttr ".ia" 4.3798145826556691;
	setAttr ".ib" 4.3798145826556691;
	setAttr ".o" 4.3798145826556691;
createNode animBlendNodeAdditiveDL -n "FaceBrow_L_Brow3_translateY_Joint_Anim";
	rename -uid "0EB41013-45AD-4DE3-9EDD-2CB2025EF087";
	setAttr ".ia" 5.7797861048792072;
	setAttr ".ib" 5.7797861048792072;
	setAttr ".o" 5.7797861048792072;
createNode animBlendNodeAdditiveDL -n "FaceBrow_L_Brow3_translateZ_Joint_Anim";
	rename -uid "820087E8-474E-E3A7-81C8-1FA7707BED73";
	setAttr ".ia" -5.5333063335861006;
	setAttr ".ib" -5.5333063335861006;
	setAttr ".o" -5.5333063335861006;
createNode animBlendNodeAdditiveRotation -n "FaceBrow_L_Brow3_rotate_Joint_Anim";
	rename -uid "FDF70946-4269-0B56-AF95-38887A1CD93F";
	setAttr ".ia" -type "double3" -14.145396758642578 -41.134246091602165 1.2667545073205304 ;
	setAttr ".ib" -type "double3" -14.145396758642578 -41.134246091602165 1.2667545073205304 ;
	setAttr ".o" -type "double3" -14.145396758642578 -41.134246091602165 1.2667545073205304 ;
createNode animBlendNodeAdditiveScale -n "FaceBrow_L_Brow3_scaleX_Joint_Anim";
	rename -uid "88DD1C0E-442D-BC54-1FCE-B6A93D7EAEFC";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "FaceBrow_L_Brow3_scaleY_Joint_Anim";
	rename -uid "BAEE7177-43BF-6551-61D3-FC9898D975FB";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "FaceBrow_L_Brow3_scaleZ_Joint_Anim";
	rename -uid "80F5EE5F-45A3-3B06-CDAF-489762DD3D19";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Head_M_Head1_visibility_Joint_Anim";
	rename -uid "77277D9C-4613-8DF3-0247-01B33FDBFE68";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Head_M_Head1_translateX_Joint_Anim";
	rename -uid "64FEE12E-4B4F-38AB-7ABA-A0BA37D69FBE";
	setAttr ".ia" 8.301811347821193;
	setAttr ".ib" 8.301811347821193;
	setAttr ".o" 8.301811347821193;
createNode animBlendNodeAdditiveDL -n "Head_M_Head1_translateY_Joint_Anim";
	rename -uid "F8C868DB-416C-7C2C-672A-128AD726EB48";
	setAttr ".ia" 4.6629367034256575e-15;
	setAttr ".ib" 4.6629367034256575e-15;
	setAttr ".o" 4.6629367034256575e-15;
createNode animBlendNodeAdditiveDL -n "Head_M_Head1_translateZ_Joint_Anim";
	rename -uid "1848A085-4C1C-CA3B-E0C5-0EA0AC5BEC60";
	setAttr ".ia" -8.0642531931340448e-16;
	setAttr ".ib" -8.0642531931340448e-16;
	setAttr ".o" -8.0642531931340448e-16;
createNode animBlendNodeAdditiveRotation -n "Head_M_Head1_rotate_Joint_Anim";
	rename -uid "95C065D4-45DB-48F1-DE54-FF97323A1B5F";
createNode animBlendNodeAdditiveScale -n "Head_M_Head1_scaleX_Joint_Anim";
	rename -uid "043A6D10-402C-7EE5-BF1B-CE9BF9D8931B";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Head_M_Head1_scaleY_Joint_Anim";
	rename -uid "6462AC8A-4DD5-9A64-1D7D-929F63220346";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Head_M_Head1_scaleZ_Joint_Anim";
	rename -uid "62349661-4082-9263-B21B-339E3F4D9822";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Head_M_Head2_visibility_Joint_Anim";
	rename -uid "E52FAD22-46E0-B2BA-428D-D0899C958F03";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Head_M_Head2_translateX_Joint_Anim";
	rename -uid "BB5B8B2F-463A-5B6F-A7C2-06B6EEB1E02D";
	setAttr ".ia" 21.271677892626514;
	setAttr ".ib" 21.271677892626514;
	setAttr ".o" 21.271677892626514;
createNode animBlendNodeAdditiveDL -n "Head_M_Head2_translateY_Joint_Anim";
	rename -uid "DDB7D2BF-41DB-5920-4CFD-38A2903C5551";
	setAttr ".ia" 5.3290705182007514e-15;
	setAttr ".ib" 5.3290705182007514e-15;
	setAttr ".o" 5.3290705182007514e-15;
createNode animBlendNodeAdditiveDL -n "Head_M_Head2_translateZ_Joint_Anim";
	rename -uid "F7891513-458C-9C3B-A52A-70ABC04CA964";
	setAttr ".ia" -4.4227363108786092e-15;
	setAttr ".ib" -4.4227363108786092e-15;
	setAttr ".o" -4.4227363108786092e-15;
createNode animBlendNodeAdditiveRotation -n "Head_M_Head2_rotate_Joint_Anim";
	rename -uid "B66E8017-4BB1-40A3-0679-C2829FDE2AFA";
createNode animBlendNodeAdditiveScale -n "Head_M_Head2_scaleX_Joint_Anim";
	rename -uid "24067BD5-456D-AD8D-CA54-7ABF863892AE";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Head_M_Head2_scaleY_Joint_Anim";
	rename -uid "A8E22226-4FF5-63E5-A115-29B00DCF98E6";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Head_M_Head2_scaleZ_Joint_Anim";
	rename -uid "0F886EBF-4602-F58A-51B5-9B94BC5AAD57";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Jaw_M_Jaw1_visibility_Joint_Anim";
	rename -uid "BF8CB213-435C-66A7-DAF6-A6B351AD8079";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Jaw_M_Jaw1_translateX_Joint_Anim";
	rename -uid "B7E72724-434D-4AA5-3733-C78B46C97532";
	setAttr ".ia" 3.6777220281026928;
	setAttr ".ib" 3.6777220281026928;
	setAttr ".o" 3.6777220281026928;
createNode animBlendNodeAdditiveDL -n "Jaw_M_Jaw1_translateY_Joint_Anim";
	rename -uid "F002E1A2-4F9A-26BC-68FA-F39FAC5E0F4A";
	setAttr ".ia" -0.50423227008099047;
	setAttr ".ib" -0.50423227008099047;
	setAttr ".o" -0.50423227008099047;
createNode animBlendNodeAdditiveDL -n "Jaw_M_Jaw1_translateZ_Joint_Anim";
	rename -uid "02B9126B-4C78-9EB0-07F9-93B7C323CE86";
	setAttr ".ia" -9.337751018760592e-16;
	setAttr ".ib" -9.337751018760592e-16;
	setAttr ".o" -9.337751018760592e-16;
createNode animBlendNodeAdditiveRotation -n "Jaw_M_Jaw1_rotate_Joint_Anim";
	rename -uid "1DA235F4-47E4-F566-A5FB-AC94515374F6";
createNode animBlendNodeAdditiveScale -n "Jaw_M_Jaw1_scaleX_Joint_Anim";
	rename -uid "DFB2C85C-4838-0646-E770-A7BA1516164A";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Jaw_M_Jaw1_scaleY_Joint_Anim";
	rename -uid "6A99D1DF-497D-DDE5-DFD7-24AD0CDC136A";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Jaw_M_Jaw1_scaleZ_Joint_Anim";
	rename -uid "9F2F957F-420B-597E-9F19-34BE5E0EEC71";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Jaw_M_Jaw2_visibility_Joint_Anim";
	rename -uid "96DF5F44-4D1C-9B7D-5D7C-2EAFA6026297";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Jaw_M_Jaw2_translateX_Joint_Anim";
	rename -uid "FCCDF662-4F6D-7BB3-0740-2BA892E44F90";
	setAttr ".ia" 12.708888356906058;
	setAttr ".ib" 12.708888356906058;
	setAttr ".o" 12.708888356906058;
createNode animBlendNodeAdditiveDL -n "Jaw_M_Jaw2_translateY_Joint_Anim";
	rename -uid "DFD92E92-402D-AA76-0FE6-15A1D39213BC";
	setAttr ".ia" -1.6161898619570245;
	setAttr ".ib" -1.6161898619570245;
	setAttr ".o" -1.6161898619570245;
createNode animBlendNodeAdditiveDL -n "Jaw_M_Jaw2_translateZ_Joint_Anim";
	rename -uid "ADF6D7A9-4BA5-FFEB-7AEC-7B9DE92945C4";
	setAttr ".ia" -4.0706667358299615e-15;
	setAttr ".ib" -4.0706667358299615e-15;
	setAttr ".o" -4.0706667358299615e-15;
createNode animBlendNodeAdditiveRotation -n "Jaw_M_Jaw2_rotate_Joint_Anim";
	rename -uid "B1BDB06E-4FF3-12CA-4517-07AEABD10571";
createNode animBlendNodeAdditiveScale -n "Jaw_M_Jaw2_scaleX_Joint_Anim";
	rename -uid "1321D684-439F-D0BB-E41C-F7A27DB224DB";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Jaw_M_Jaw2_scaleY_Joint_Anim";
	rename -uid "031D47A1-4DE5-4DF2-E0A7-8FBD9439B54A";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Jaw_M_Jaw2_scaleZ_Joint_Anim";
	rename -uid "C99DA05B-4C67-9DC1-9038-0EA18F3ACDD5";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Neck_M_Neck_visibility_Joint_Anim";
	rename -uid "0A2C46CC-466E-943F-9A7E-CE87D96B8D20";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Neck_M_Neck_translateX_Joint_Anim";
	rename -uid "FCF41C23-463D-444D-3EAB-779D84C499B8";
	setAttr ".ia" 23.879344071911241;
	setAttr ".ib" 23.879344071911241;
	setAttr ".o" 23.879344071911241;
createNode animBlendNodeAdditiveDL -n "Neck_M_Neck_translateY_Joint_Anim";
	rename -uid "CC148075-4898-963E-5544-32B9C42A5DB7";
	setAttr ".ia" -1.7763568394002505e-15;
	setAttr ".ib" -1.7763568394002505e-15;
	setAttr ".o" -1.7763568394002505e-15;
createNode animBlendNodeAdditiveDL -n "Neck_M_Neck_translateZ_Joint_Anim";
	rename -uid "C6F23351-452F-DE9A-E4DF-DA8A6753B2C7";
	setAttr ".ia" -4.9303806576313238e-31;
	setAttr ".ib" -4.9303806576313238e-31;
	setAttr ".o" -4.9303806576313238e-31;
createNode animBlendNodeAdditiveRotation -n "Neck_M_Neck_rotate_Joint_Anim";
	rename -uid "06288F76-4C00-CCEF-04AE-A5A5229E1E81";
createNode animBlendNodeAdditiveScale -n "Neck_M_Neck_scaleX_Joint_Anim";
	rename -uid "53E039D7-48DB-D78B-D4E8-AA8FAB32D59F";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Neck_M_Neck_scaleY_Joint_Anim";
	rename -uid "7078FC5C-41CA-02E8-0931-48A02AC610BC";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Neck_M_Neck_scaleZ_Joint_Anim";
	rename -uid "75178081-49FD-4C6E-A5CA-5EB225782918";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "Spine_M_Spine_visibility_Joint_Anim";
	rename -uid "B1E263D8-4289-9483-FD39-C0831CB47D5C";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "Spine_M_Spine_translateX_Joint_Anim";
	rename -uid "843DC59E-4C83-8623-7698-ABAA3A3CD485";
createNode animBlendNodeAdditiveDL -n "Spine_M_Spine_translateY_Joint_Anim";
	rename -uid "348C00D7-4C22-1801-FAD0-C1A5D7478241";
	setAttr ".ia" 130;
	setAttr ".ib" 130;
	setAttr ".o" 130;
createNode animBlendNodeAdditiveDL -n "Spine_M_Spine_translateZ_Joint_Anim";
	rename -uid "CC6E803E-4CA3-C9F5-B7B6-C9B01F46F571";
createNode animBlendNodeAdditiveRotation -n "Spine_M_Spine_rotate_Joint_Anim";
	rename -uid "6C74D5E4-4C7D-91F6-21A2-E3BA1B909523";
createNode animBlendNodeAdditiveScale -n "Spine_M_Spine_scaleX_Joint_Anim";
	rename -uid "1E48A4EC-418A-A0B6-96E4-CA862856311A";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Spine_M_Spine_scaleY_Joint_Anim";
	rename -uid "42961806-473B-5F3F-5CF5-13A113A12AED";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "Spine_M_Spine_scaleZ_Joint_Anim";
	rename -uid "CF1D299C-4164-033F-F83B-1EA2239642BE";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeBoolean -n "UpperFace_M_UF1_visibility_Joint_Anim";
	rename -uid "EF272392-424A-45CC-891C-7BA86253F0E6";
	setAttr ".ia" yes;
	setAttr ".ib" yes;
	setAttr ".o" yes;
createNode animBlendNodeAdditiveDL -n "UpperFace_M_UF1_translateX_Joint_Anim";
	rename -uid "B378FDAA-4089-604E-EE81-2DA51A252A4C";
	setAttr ".ia" 7.7956456838605925;
	setAttr ".ib" 7.7956456838605925;
	setAttr ".o" 7.7956456838605925;
createNode animBlendNodeAdditiveDL -n "UpperFace_M_UF1_translateY_Joint_Anim";
	rename -uid "5667BDA6-4ED3-D402-25D8-6BBE6D56765D";
	setAttr ".ia" -1.0927082562046342;
	setAttr ".ib" -1.0927082562046342;
	setAttr ".o" -1.0927082562046342;
createNode animBlendNodeAdditiveDL -n "UpperFace_M_UF1_translateZ_Joint_Anim";
	rename -uid "D73EED10-459D-7470-29BB-B19EFE23077A";
	setAttr ".ia" -1.9873301155242299e-15;
	setAttr ".ib" -1.9873301155242299e-15;
	setAttr ".o" -1.9873301155242299e-15;
createNode animBlendNodeAdditiveRotation -n "UpperFace_M_UF1_rotate_Joint_Anim";
	rename -uid "DC449E16-4278-2C16-C3BE-20BF364DF72B";
createNode animBlendNodeAdditiveScale -n "UpperFace_M_UF1_scaleX_Joint_Anim";
	rename -uid "9B94DF59-4B99-FF53-0C1D-A0B551D888DB";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "UpperFace_M_UF1_scaleY_Joint_Anim";
	rename -uid "B0DE544D-4098-436E-DEA7-5DBED4D9C8ED";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode animBlendNodeAdditiveScale -n "UpperFace_M_UF1_scaleZ_Joint_Anim";
	rename -uid "450894C6-4BA3-89D3-1444-7F9C59F36C42";
	setAttr ".ia" 1;
	setAttr ".ib" 1;
	setAttr ".o" 1;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "AE8AF0E2-4C84-BACF-D8CE-C1A901D92994";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -421.42855468250531 -324.99998708566085 ;
	setAttr ".tgi[0].vh" -type "double2" 421.42855468250531 323.80951094248991 ;
	setAttr -s 167 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1784.2857666015625;
	setAttr ".tgi[0].ni[0].y" 3278.571533203125;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 2398.571533203125;
	setAttr ".tgi[0].ni[1].y" 5502.85693359375;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" -1430;
	setAttr ".tgi[0].ni[2].y" 4460;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 2398.571533203125;
	setAttr ".tgi[0].ni[3].y" -4340;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 2398.571533203125;
	setAttr ".tgi[0].ni[4].y" -4784.28564453125;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 2398.571533203125;
	setAttr ".tgi[0].ni[5].y" -4885.71435546875;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" -778.5714111328125;
	setAttr ".tgi[0].ni[6].y" 4584.28564453125;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 1382.857177734375;
	setAttr ".tgi[0].ni[7].y" 5820;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 1382.857177734375;
	setAttr ".tgi[0].ni[8].y" 5661.4287109375;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 1382.857177734375;
	setAttr ".tgi[0].ni[9].y" 5502.85693359375;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 1382.857177734375;
	setAttr ".tgi[0].ni[10].y" 5401.4287109375;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 1382.857177734375;
	setAttr ".tgi[0].ni[11].y" 5242.85693359375;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 1382.857177734375;
	setAttr ".tgi[0].ni[12].y" 5084.28564453125;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 1382.857177734375;
	setAttr ".tgi[0].ni[13].y" 3551.428466796875;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 1382.857177734375;
	setAttr ".tgi[0].ni[14].y" 4982.85693359375;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 1382.857177734375;
	setAttr ".tgi[0].ni[15].y" 4881.4287109375;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 1382.857177734375;
	setAttr ".tgi[0].ni[16].y" 3424.28564453125;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 2398.571533203125;
	setAttr ".tgi[0].ni[17].y" -4987.14306640625;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 2398.571533203125;
	setAttr ".tgi[0].ni[18].y" -5088.5712890625;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 234.28572082519531;
	setAttr ".tgi[0].ni[19].y" 160;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 234.28572082519531;
	setAttr ".tgi[0].ni[20].y" -380;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 2398.571533203125;
	setAttr ".tgi[0].ni[21].y" -5291.4287109375;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 2398.571533203125;
	setAttr ".tgi[0].ni[22].y" -5392.85693359375;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 234.28572082519531;
	setAttr ".tgi[0].ni[23].y" -120;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 234.28572082519531;
	setAttr ".tgi[0].ni[24].y" -278.57144165039063;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 234.28572082519531;
	setAttr ".tgi[0].ni[25].y" -538.5714111328125;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 2398.571533203125;
	setAttr ".tgi[0].ni[26].y" -5494.28564453125;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" -141.42857360839844;
	setAttr ".tgi[0].ni[27].y" 2408.571533203125;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 234.28572082519531;
	setAttr ".tgi[0].ni[28].y" -925.71429443359375;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 234.28572082519531;
	setAttr ".tgi[0].ni[29].y" -1084.2857666015625;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" -141.42857360839844;
	setAttr ".tgi[0].ni[30].y" 2307.142822265625;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" -141.42857360839844;
	setAttr ".tgi[0].ni[31].y" 2205.71435546875;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" -141.42857360839844;
	setAttr ".tgi[0].ni[32].y" 2047.142822265625;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 1382.857177734375;
	setAttr ".tgi[0].ni[33].y" 2775.71435546875;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 2398.571533203125;
	setAttr ".tgi[0].ni[34].y" 4030;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 1382.857177734375;
	setAttr ".tgi[0].ni[35].y" 2617.142822265625;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 1382.857177734375;
	setAttr ".tgi[0].ni[36].y" 2501.428466796875;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 1382.857177734375;
	setAttr ".tgi[0].ni[37].y" 2241.428466796875;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 1382.857177734375;
	setAttr ".tgi[0].ni[38].y" 2400;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 1382.857177734375;
	setAttr ".tgi[0].ni[39].y" 2140;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 1382.857177734375;
	setAttr ".tgi[0].ni[40].y" 2038.5714111328125;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 1382.857177734375;
	setAttr ".tgi[0].ni[41].y" 1880;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" 1382.857177734375;
	setAttr ".tgi[0].ni[42].y" 1721.4285888671875;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 1382.857177734375;
	setAttr ".tgi[0].ni[43].y" 1307.142822265625;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 1382.857177734375;
	setAttr ".tgi[0].ni[44].y" 1002.8571166992188;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 1784.2857666015625;
	setAttr ".tgi[0].ni[45].y" 3722.857177734375;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 1382.857177734375;
	setAttr ".tgi[0].ni[46].y" 800;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 1382.857177734375;
	setAttr ".tgi[0].ni[47].y" 540;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 1382.857177734375;
	setAttr ".tgi[0].ni[48].y" 698.5714111328125;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 1382.857177734375;
	setAttr ".tgi[0].ni[49].y" 438.57144165039063;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 1382.857177734375;
	setAttr ".tgi[0].ni[50].y" 1522.857177734375;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 1382.857177734375;
	setAttr ".tgi[0].ni[51].y" -81.428573608398438;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" 2091.428466796875;
	setAttr ".tgi[0].ni[52].y" 3815.71435546875;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" 1382.857177734375;
	setAttr ".tgi[0].ni[53].y" 1205.7142333984375;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 1382.857177734375;
	setAttr ".tgi[0].ni[54].y" 1104.2857666015625;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 2398.571533203125;
	setAttr ".tgi[0].ni[55].y" 2785.71435546875;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" 2091.428466796875;
	setAttr ".tgi[0].ni[56].y" 4488.5712890625;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 982.85711669921875;
	setAttr ".tgi[0].ni[57].y" 488.57144165039063;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" 1382.857177734375;
	setAttr ".tgi[0].ni[58].y" 901.4285888671875;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" 1382.857177734375;
	setAttr ".tgi[0].ni[59].y" -557.14288330078125;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" 1382.857177734375;
	setAttr ".tgi[0].ni[60].y" -772.85711669921875;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" 2398.571533203125;
	setAttr ".tgi[0].ni[61].y" -5190;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" 1382.857177734375;
	setAttr ".tgi[0].ni[62].y" -1468.5714111328125;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" 1382.857177734375;
	setAttr ".tgi[0].ni[63].y" -1570;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" 602.85711669921875;
	setAttr ".tgi[0].ni[64].y" -211.42857360839844;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" 1382.857177734375;
	setAttr ".tgi[0].ni[65].y" -182.85714721679688;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" 1382.857177734375;
	setAttr ".tgi[0].ni[66].y" -284.28570556640625;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" 602.85711669921875;
	setAttr ".tgi[0].ni[67].y" -970;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" 602.85711669921875;
	setAttr ".tgi[0].ni[68].y" -1484.2857666015625;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" 2398.571533203125;
	setAttr ".tgi[0].ni[69].y" -5697.14306640625;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" 602.85711669921875;
	setAttr ".tgi[0].ni[70].y" -1757.142822265625;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" 602.85711669921875;
	setAttr ".tgi[0].ni[71].y" -1915.7142333984375;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" 602.85711669921875;
	setAttr ".tgi[0].ni[72].y" -2131.428466796875;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" 1382.857177734375;
	setAttr ".tgi[0].ni[73].y" -1851.4285888671875;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" 1382.857177734375;
	setAttr ".tgi[0].ni[74].y" -874.28570556640625;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" 1382.857177734375;
	setAttr ".tgi[0].ni[75].y" -975.71429443359375;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" 602.85711669921875;
	setAttr ".tgi[0].ni[76].y" -2575.71435546875;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" 2398.571533203125;
	setAttr ".tgi[0].ni[77].y" 1598.5714111328125;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" 1784.2857666015625;
	setAttr ".tgi[0].ni[78].y" 498.57144165039063;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" 1784.2857666015625;
	setAttr ".tgi[0].ni[79].y" -937.14288330078125;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" 1784.2857666015625;
	setAttr ".tgi[0].ni[80].y" -214.28572082519531;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" -2965.71435546875;
	setAttr ".tgi[0].ni[81].y" 4955.71435546875;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" 2398.571533203125;
	setAttr ".tgi[0].ni[82].y" 1268.5714111328125;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" 1784.2857666015625;
	setAttr ".tgi[0].ni[83].y" -575.71429443359375;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" 1382.857177734375;
	setAttr ".tgi[0].ni[84].y" -1952.857177734375;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" 2091.428466796875;
	setAttr ".tgi[0].ni[85].y" -130;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" 1784.2857666015625;
	setAttr ".tgi[0].ni[86].y" 1442.857177734375;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" 2398.571533203125;
	setAttr ".tgi[0].ni[87].y" 938.5714111328125;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" 2091.428466796875;
	setAttr ".tgi[0].ni[88].y" 1314.2857666015625;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" 982.85711669921875;
	setAttr ".tgi[0].ni[89].y" -3344.28564453125;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" 1784.2857666015625;
	setAttr ".tgi[0].ni[90].y" -1785.7142333984375;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" 2398.571533203125;
	setAttr ".tgi[0].ni[91].y" 665.71429443359375;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" -2658.571533203125;
	setAttr ".tgi[0].ni[92].y" 4722.85693359375;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" 2398.571533203125;
	setAttr ".tgi[0].ni[93].y" 507.14285278320313;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" 2091.428466796875;
	setAttr ".tgi[0].ni[94].y" -2747.142822265625;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" 1784.2857666015625;
	setAttr ".tgi[0].ni[95].y" -3155.71435546875;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" 2398.571533203125;
	setAttr ".tgi[0].ni[96].y" 291.42855834960938;
	setAttr ".tgi[0].ni[96].nvs" 18304;
	setAttr ".tgi[0].ni[97].x" 1784.2857666015625;
	setAttr ".tgi[0].ni[97].y" -2102.857177734375;
	setAttr ".tgi[0].ni[97].nvs" 18304;
	setAttr ".tgi[0].ni[98].x" 2398.571533203125;
	setAttr ".tgi[0].ni[98].y" 132.85714721679688;
	setAttr ".tgi[0].ni[98].nvs" 18304;
	setAttr ".tgi[0].ni[99].x" 2398.571533203125;
	setAttr ".tgi[0].ni[99].y" -5595.71435546875;
	setAttr ".tgi[0].ni[99].nvs" 18304;
	setAttr ".tgi[0].ni[100].x" 2398.571533203125;
	setAttr ".tgi[0].ni[100].y" 31.428571701049805;
	setAttr ".tgi[0].ni[100].nvs" 18304;
	setAttr ".tgi[0].ni[101].x" 2398.571533203125;
	setAttr ".tgi[0].ni[101].y" -70;
	setAttr ".tgi[0].ni[101].nvs" 18304;
	setAttr ".tgi[0].ni[102].x" 2398.571533203125;
	setAttr ".tgi[0].ni[102].y" -171.42857360839844;
	setAttr ".tgi[0].ni[102].nvs" 18304;
	setAttr ".tgi[0].ni[103].x" -2965.71435546875;
	setAttr ".tgi[0].ni[103].y" 4837.14306640625;
	setAttr ".tgi[0].ni[103].nvs" 18304;
	setAttr ".tgi[0].ni[104].x" 2398.571533203125;
	setAttr ".tgi[0].ni[104].y" -330;
	setAttr ".tgi[0].ni[104].nvs" 18304;
	setAttr ".tgi[0].ni[105].x" -448.57144165039063;
	setAttr ".tgi[0].ni[105].y" 2264.28564453125;
	setAttr ".tgi[0].ni[105].nvs" 18304;
	setAttr ".tgi[0].ni[106].x" 602.85711669921875;
	setAttr ".tgi[0].ni[106].y" -4734.28564453125;
	setAttr ".tgi[0].ni[106].nvs" 18304;
	setAttr ".tgi[0].ni[107].x" 2398.571533203125;
	setAttr ".tgi[0].ni[107].y" -545.71429443359375;
	setAttr ".tgi[0].ni[107].nvs" 18304;
	setAttr ".tgi[0].ni[108].x" -1430;
	setAttr ".tgi[0].ni[108].y" 2998.571533203125;
	setAttr ".tgi[0].ni[108].nvs" 18304;
	setAttr ".tgi[0].ni[109].x" -2965.71435546875;
	setAttr ".tgi[0].ni[109].y" 4712.85693359375;
	setAttr ".tgi[0].ni[109].nvs" 18304;
	setAttr ".tgi[0].ni[110].x" -2965.71435546875;
	setAttr ".tgi[0].ni[110].y" 4611.4287109375;
	setAttr ".tgi[0].ni[110].nvs" 18304;
	setAttr ".tgi[0].ni[111].x" 2398.571533203125;
	setAttr ".tgi[0].ni[111].y" -818.5714111328125;
	setAttr ".tgi[0].ni[111].nvs" 18304;
	setAttr ".tgi[0].ni[112].x" 1784.2857666015625;
	setAttr ".tgi[0].ni[112].y" -2737.142822265625;
	setAttr ".tgi[0].ni[112].nvs" 18304;
	setAttr ".tgi[0].ni[113].x" 234.28572082519531;
	setAttr ".tgi[0].ni[113].y" -4442.85693359375;
	setAttr ".tgi[0].ni[113].nvs" 18304;
	setAttr ".tgi[0].ni[114].x" -1085.7142333984375;
	setAttr ".tgi[0].ni[114].y" 2561.428466796875;
	setAttr ".tgi[0].ni[114].nvs" 18304;
	setAttr ".tgi[0].ni[115].x" 2398.571533203125;
	setAttr ".tgi[0].ni[115].y" -1091.4285888671875;
	setAttr ".tgi[0].ni[115].nvs" 18304;
	setAttr ".tgi[0].ni[116].x" -2965.71435546875;
	setAttr ".tgi[0].ni[116].y" 4510;
	setAttr ".tgi[0].ni[116].nvs" 18304;
	setAttr ".tgi[0].ni[117].x" 2091.428466796875;
	setAttr ".tgi[0].ni[117].y" -2360;
	setAttr ".tgi[0].ni[117].nvs" 18304;
	setAttr ".tgi[0].ni[118].x" 2398.571533203125;
	setAttr ".tgi[0].ni[118].y" -1307.142822265625;
	setAttr ".tgi[0].ni[118].nvs" 18304;
	setAttr ".tgi[0].ni[119].x" 1784.2857666015625;
	setAttr ".tgi[0].ni[119].y" -2838.571533203125;
	setAttr ".tgi[0].ni[119].nvs" 18304;
	setAttr ".tgi[0].ni[120].x" 1784.2857666015625;
	setAttr ".tgi[0].ni[120].y" -2362.857177734375;
	setAttr ".tgi[0].ni[120].nvs" 18304;
	setAttr ".tgi[0].ni[121].x" 2398.571533203125;
	setAttr ".tgi[0].ni[121].y" -1522.857177734375;
	setAttr ".tgi[0].ni[121].nvs" 18304;
	setAttr ".tgi[0].ni[122].x" 2398.571533203125;
	setAttr ".tgi[0].ni[122].y" -1624.2857666015625;
	setAttr ".tgi[0].ni[122].nvs" 18304;
	setAttr ".tgi[0].ni[123].x" 2398.571533203125;
	setAttr ".tgi[0].ni[123].y" -1725.7142333984375;
	setAttr ".tgi[0].ni[123].nvs" 18304;
	setAttr ".tgi[0].ni[124].x" 1784.2857666015625;
	setAttr ".tgi[0].ni[124].y" -734.28570556640625;
	setAttr ".tgi[0].ni[124].nvs" 18304;
	setAttr ".tgi[0].ni[125].x" 1784.2857666015625;
	setAttr ".tgi[0].ni[125].y" -835.71429443359375;
	setAttr ".tgi[0].ni[125].nvs" 18304;
	setAttr ".tgi[0].ni[126].x" 2398.571533203125;
	setAttr ".tgi[0].ni[126].y" -1941.4285888671875;
	setAttr ".tgi[0].ni[126].nvs" 18304;
	setAttr ".tgi[0].ni[127].x" -2351.428466796875;
	setAttr ".tgi[0].ni[127].y" 4112.85693359375;
	setAttr ".tgi[0].ni[127].nvs" 18304;
	setAttr ".tgi[0].ni[128].x" 1784.2857666015625;
	setAttr ".tgi[0].ni[128].y" -2204.28564453125;
	setAttr ".tgi[0].ni[128].nvs" 18304;
	setAttr ".tgi[0].ni[129].x" 2091.428466796875;
	setAttr ".tgi[0].ni[129].y" -2905.71435546875;
	setAttr ".tgi[0].ni[129].nvs" 18304;
	setAttr ".tgi[0].ni[130].x" 1784.2857666015625;
	setAttr ".tgi[0].ni[130].y" -1252.857177734375;
	setAttr ".tgi[0].ni[130].nvs" 18304;
	setAttr ".tgi[0].ni[131].x" 1784.2857666015625;
	setAttr ".tgi[0].ni[131].y" -1354.2857666015625;
	setAttr ".tgi[0].ni[131].nvs" 18304;
	setAttr ".tgi[0].ni[132].x" 2091.428466796875;
	setAttr ".tgi[0].ni[132].y" -3292.857177734375;
	setAttr ".tgi[0].ni[132].nvs" 18304;
	setAttr ".tgi[0].ni[133].x" -2044.2857666015625;
	setAttr ".tgi[0].ni[133].y" 3435.71435546875;
	setAttr ".tgi[0].ni[133].nvs" 18304;
	setAttr ".tgi[0].ni[134].x" 1784.2857666015625;
	setAttr ".tgi[0].ni[134].y" -1512.857177734375;
	setAttr ".tgi[0].ni[134].nvs" 18304;
	setAttr ".tgi[0].ni[135].x" 2398.571533203125;
	setAttr ".tgi[0].ni[135].y" -2500;
	setAttr ".tgi[0].ni[135].nvs" 18304;
	setAttr ".tgi[0].ni[136].x" 2398.571533203125;
	setAttr ".tgi[0].ni[136].y" -2601.428466796875;
	setAttr ".tgi[0].ni[136].nvs" 18304;
	setAttr ".tgi[0].ni[137].x" -1737.142822265625;
	setAttr ".tgi[0].ni[137].y" 3171.428466796875;
	setAttr ".tgi[0].ni[137].nvs" 18304;
	setAttr ".tgi[0].ni[138].x" 1382.857177734375;
	setAttr ".tgi[0].ni[138].y" -3317.142822265625;
	setAttr ".tgi[0].ni[138].nvs" 18304;
	setAttr ".tgi[0].ni[139].x" 2398.571533203125;
	setAttr ".tgi[0].ni[139].y" -2817.142822265625;
	setAttr ".tgi[0].ni[139].nvs" 18304;
	setAttr ".tgi[0].ni[140].x" 2398.571533203125;
	setAttr ".tgi[0].ni[140].y" -2918.571533203125;
	setAttr ".tgi[0].ni[140].nvs" 18304;
	setAttr ".tgi[0].ni[141].x" 2398.571533203125;
	setAttr ".tgi[0].ni[141].y" -3020;
	setAttr ".tgi[0].ni[141].nvs" 18304;
	setAttr ".tgi[0].ni[142].x" 1784.2857666015625;
	setAttr ".tgi[0].ni[142].y" -2578.571533203125;
	setAttr ".tgi[0].ni[142].nvs" 18304;
	setAttr ".tgi[0].ni[143].x" 2091.428466796875;
	setAttr ".tgi[0].ni[143].y" -4244.28564453125;
	setAttr ".tgi[0].ni[143].nvs" 18304;
	setAttr ".tgi[0].ni[144].x" 2091.428466796875;
	setAttr ".tgi[0].ni[144].y" -3984.28564453125;
	setAttr ".tgi[0].ni[144].nvs" 18304;
	setAttr ".tgi[0].ni[145].x" 1784.2857666015625;
	setAttr ".tgi[0].ni[145].y" -1944.2857666015625;
	setAttr ".tgi[0].ni[145].nvs" 18304;
	setAttr ".tgi[0].ni[146].x" 2091.428466796875;
	setAttr ".tgi[0].ni[146].y" -4402.85693359375;
	setAttr ".tgi[0].ni[146].nvs" 18304;
	setAttr ".tgi[0].ni[147].x" 2398.571533203125;
	setAttr ".tgi[0].ni[147].y" -3407.142822265625;
	setAttr ".tgi[0].ni[147].nvs" 18304;
	setAttr ".tgi[0].ni[148].x" 1784.2857666015625;
	setAttr ".tgi[0].ni[148].y" -2997.142822265625;
	setAttr ".tgi[0].ni[148].nvs" 18304;
	setAttr ".tgi[0].ni[149].x" 2091.428466796875;
	setAttr ".tgi[0].ni[149].y" -3882.857177734375;
	setAttr ".tgi[0].ni[149].nvs" 18304;
	setAttr ".tgi[0].ni[150].x" -1430;
	setAttr ".tgi[0].ni[150].y" 2617.142822265625;
	setAttr ".tgi[0].ni[150].nvs" 18304;
	setAttr ".tgi[0].ni[151].x" 2091.428466796875;
	setAttr ".tgi[0].ni[151].y" -4085.71435546875;
	setAttr ".tgi[0].ni[151].nvs" 18304;
	setAttr ".tgi[0].ni[152].x" 2091.428466796875;
	setAttr ".tgi[0].ni[152].y" -3622.857177734375;
	setAttr ".tgi[0].ni[152].nvs" 18304;
	setAttr ".tgi[0].ni[153].x" 2091.428466796875;
	setAttr ".tgi[0].ni[153].y" -3724.28564453125;
	setAttr ".tgi[0].ni[153].nvs" 18304;
	setAttr ".tgi[0].ni[154].x" 2398.571533203125;
	setAttr ".tgi[0].ni[154].y" -3851.428466796875;
	setAttr ".tgi[0].ni[154].nvs" 18304;
	setAttr ".tgi[0].ni[155].x" 2398.571533203125;
	setAttr ".tgi[0].ni[155].y" -3952.857177734375;
	setAttr ".tgi[0].ni[155].nvs" 18304;
	setAttr ".tgi[0].ni[156].x" 982.85711669921875;
	setAttr ".tgi[0].ni[156].y" -4874.28564453125;
	setAttr ".tgi[0].ni[156].nvs" 18304;
	setAttr ".tgi[0].ni[157].x" 982.85711669921875;
	setAttr ".tgi[0].ni[157].y" -4975.71435546875;
	setAttr ".tgi[0].ni[157].nvs" 18304;
	setAttr ".tgi[0].ni[158].x" 982.85711669921875;
	setAttr ".tgi[0].ni[158].y" -5077.14306640625;
	setAttr ".tgi[0].ni[158].nvs" 18304;
	setAttr ".tgi[0].ni[159].x" 982.85711669921875;
	setAttr ".tgi[0].ni[159].y" -5178.5712890625;
	setAttr ".tgi[0].ni[159].nvs" 18304;
	setAttr ".tgi[0].ni[160].x" 982.85711669921875;
	setAttr ".tgi[0].ni[160].y" -5280;
	setAttr ".tgi[0].ni[160].nvs" 18304;
	setAttr ".tgi[0].ni[161].x" -141.42857360839844;
	setAttr ".tgi[0].ni[161].y" 402.85714721679688;
	setAttr ".tgi[0].ni[161].nvs" 18304;
	setAttr ".tgi[0].ni[162].x" -141.42857360839844;
	setAttr ".tgi[0].ni[162].y" 244.28572082519531;
	setAttr ".tgi[0].ni[162].nvs" 18304;
	setAttr ".tgi[0].ni[163].x" 982.85711669921875;
	setAttr ".tgi[0].ni[163].y" -5495.71435546875;
	setAttr ".tgi[0].ni[163].nvs" 18304;
	setAttr ".tgi[0].ni[164].x" 982.85711669921875;
	setAttr ".tgi[0].ni[164].y" -5654.28564453125;
	setAttr ".tgi[0].ni[164].nvs" 18304;
	setAttr ".tgi[0].ni[165].x" 982.85711669921875;
	setAttr ".tgi[0].ni[165].y" -5755.71435546875;
	setAttr ".tgi[0].ni[165].nvs" 18304;
	setAttr ".tgi[0].ni[166].x" -141.42857360839844;
	setAttr ".tgi[0].ni[166].y" 28.571428298950195;
	setAttr ".tgi[0].ni[166].nvs" 18304;
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
connectAttr "Spine_M_Spine_scaleX_Joint_Anim.o" "Spine_Spine_M_JNT.sx";
connectAttr "Spine_M_Spine_scaleY_Joint_Anim.o" "Spine_Spine_M_JNT.sy";
connectAttr "Spine_M_Spine_scaleZ_Joint_Anim.o" "Spine_Spine_M_JNT.sz";
connectAttr "Spine_M_Spine_visibility_Joint_Anim.o" "Spine_Spine_M_JNT.v";
connectAttr "Spine_M_Spine_translateX_Joint_Anim.o" "Spine_Spine_M_JNT.tx";
connectAttr "Spine_M_Spine_translateY_Joint_Anim.o" "Spine_Spine_M_JNT.ty";
connectAttr "Spine_M_Spine_translateZ_Joint_Anim.o" "Spine_Spine_M_JNT.tz";
connectAttr "Spine_M_Spine_rotate_Joint_Anim.ox" "Spine_Spine_M_JNT.rx";
connectAttr "Spine_M_Spine_rotate_Joint_Anim.oy" "Spine_Spine_M_JNT.ry";
connectAttr "Spine_M_Spine_rotate_Joint_Anim.oz" "Spine_Spine_M_JNT.rz";
connectAttr "Joint_Disp.di" "Spine_Spine_M_JNT.do";
connectAttr "Spine_Limb_M_NODE.joints" "Spine_Spine_M_JNT.limb";
connectAttr "Spine_Spine_M_JNT.s" "Neck_Neck_M_JNT.is";
connectAttr "Neck_M_Neck_scaleX_Joint_Anim.o" "Neck_Neck_M_JNT.sx";
connectAttr "Neck_M_Neck_scaleY_Joint_Anim.o" "Neck_Neck_M_JNT.sy";
connectAttr "Neck_M_Neck_scaleZ_Joint_Anim.o" "Neck_Neck_M_JNT.sz";
connectAttr "Neck_M_Neck_visibility_Joint_Anim.o" "Neck_Neck_M_JNT.v";
connectAttr "Neck_M_Neck_translateX_Joint_Anim.o" "Neck_Neck_M_JNT.tx";
connectAttr "Neck_M_Neck_translateY_Joint_Anim.o" "Neck_Neck_M_JNT.ty";
connectAttr "Neck_M_Neck_translateZ_Joint_Anim.o" "Neck_Neck_M_JNT.tz";
connectAttr "Neck_M_Neck_rotate_Joint_Anim.ox" "Neck_Neck_M_JNT.rx";
connectAttr "Neck_M_Neck_rotate_Joint_Anim.oy" "Neck_Neck_M_JNT.ry";
connectAttr "Neck_M_Neck_rotate_Joint_Anim.oz" "Neck_Neck_M_JNT.rz";
connectAttr "Joint_Disp.di" "Neck_Neck_M_JNT.do";
connectAttr "Neck_Limb_M_NODE.joints" "Neck_Neck_M_JNT.limb";
connectAttr "Neck_Neck_M_JNT.s" "Head_Head1_M_JNT.is";
connectAttr "Head_M_Head1_scaleX_Joint_Anim.o" "Head_Head1_M_JNT.sx";
connectAttr "Head_M_Head1_scaleY_Joint_Anim.o" "Head_Head1_M_JNT.sy";
connectAttr "Head_M_Head1_scaleZ_Joint_Anim.o" "Head_Head1_M_JNT.sz";
connectAttr "Head_M_Head1_visibility_Joint_Anim.o" "Head_Head1_M_JNT.v";
connectAttr "Head_M_Head1_translateX_Joint_Anim.o" "Head_Head1_M_JNT.tx";
connectAttr "Head_M_Head1_translateY_Joint_Anim.o" "Head_Head1_M_JNT.ty";
connectAttr "Head_M_Head1_translateZ_Joint_Anim.o" "Head_Head1_M_JNT.tz";
connectAttr "Head_M_Head1_rotate_Joint_Anim.ox" "Head_Head1_M_JNT.rx";
connectAttr "Head_M_Head1_rotate_Joint_Anim.oy" "Head_Head1_M_JNT.ry";
connectAttr "Head_M_Head1_rotate_Joint_Anim.oz" "Head_Head1_M_JNT.rz";
connectAttr "Joint_Disp.di" "Head_Head1_M_JNT.do";
connectAttr "Head_Limb_M_NODE.joints" "Head_Head1_M_JNT.limb";
connectAttr "Head_Head1_M_JNT.s" "Head_Head2_M_JNT.is";
connectAttr "Head_M_Head2_visibility_Joint_Anim.o" "Head_Head2_M_JNT.v";
connectAttr "Head_M_Head2_translateX_Joint_Anim.o" "Head_Head2_M_JNT.tx";
connectAttr "Head_M_Head2_translateY_Joint_Anim.o" "Head_Head2_M_JNT.ty";
connectAttr "Head_M_Head2_translateZ_Joint_Anim.o" "Head_Head2_M_JNT.tz";
connectAttr "Head_M_Head2_rotate_Joint_Anim.ox" "Head_Head2_M_JNT.rx";
connectAttr "Head_M_Head2_rotate_Joint_Anim.oy" "Head_Head2_M_JNT.ry";
connectAttr "Head_M_Head2_rotate_Joint_Anim.oz" "Head_Head2_M_JNT.rz";
connectAttr "Head_M_Head2_scaleX_Joint_Anim.o" "Head_Head2_M_JNT.sx";
connectAttr "Head_M_Head2_scaleY_Joint_Anim.o" "Head_Head2_M_JNT.sy";
connectAttr "Head_M_Head2_scaleZ_Joint_Anim.o" "Head_Head2_M_JNT.sz";
connectAttr "Joint_Disp.di" "Head_Head2_M_JNT.do";
connectAttr "Head_Limb_M_NODE.joints" "Head_Head2_M_JNT.limb";
connectAttr "Head_Head1_M_JNT.s" "Jaw_Jaw1_M_JNT.is";
connectAttr "Jaw_M_Jaw1_scaleX_Joint_Anim.o" "Jaw_Jaw1_M_JNT.sx";
connectAttr "Jaw_M_Jaw1_scaleY_Joint_Anim.o" "Jaw_Jaw1_M_JNT.sy";
connectAttr "Jaw_M_Jaw1_scaleZ_Joint_Anim.o" "Jaw_Jaw1_M_JNT.sz";
connectAttr "Jaw_M_Jaw1_visibility_Joint_Anim.o" "Jaw_Jaw1_M_JNT.v";
connectAttr "Jaw_M_Jaw1_translateX_Joint_Anim.o" "Jaw_Jaw1_M_JNT.tx";
connectAttr "Jaw_M_Jaw1_translateY_Joint_Anim.o" "Jaw_Jaw1_M_JNT.ty";
connectAttr "Jaw_M_Jaw1_translateZ_Joint_Anim.o" "Jaw_Jaw1_M_JNT.tz";
connectAttr "Jaw_M_Jaw1_rotate_Joint_Anim.ox" "Jaw_Jaw1_M_JNT.rx";
connectAttr "Jaw_M_Jaw1_rotate_Joint_Anim.oy" "Jaw_Jaw1_M_JNT.ry";
connectAttr "Jaw_M_Jaw1_rotate_Joint_Anim.oz" "Jaw_Jaw1_M_JNT.rz";
connectAttr "Joint_Disp.di" "Jaw_Jaw1_M_JNT.do";
connectAttr "Jaw_Limb_M_NODE.joints" "Jaw_Jaw1_M_JNT.limb";
connectAttr "Jaw_Jaw1_M_JNT.s" "Jaw_Jaw2_M_JNT.is";
connectAttr "Jaw_M_Jaw2_visibility_Joint_Anim.o" "Jaw_Jaw2_M_JNT.v";
connectAttr "Jaw_M_Jaw2_translateX_Joint_Anim.o" "Jaw_Jaw2_M_JNT.tx";
connectAttr "Jaw_M_Jaw2_translateY_Joint_Anim.o" "Jaw_Jaw2_M_JNT.ty";
connectAttr "Jaw_M_Jaw2_translateZ_Joint_Anim.o" "Jaw_Jaw2_M_JNT.tz";
connectAttr "Jaw_M_Jaw2_rotate_Joint_Anim.ox" "Jaw_Jaw2_M_JNT.rx";
connectAttr "Jaw_M_Jaw2_rotate_Joint_Anim.oy" "Jaw_Jaw2_M_JNT.ry";
connectAttr "Jaw_M_Jaw2_rotate_Joint_Anim.oz" "Jaw_Jaw2_M_JNT.rz";
connectAttr "Jaw_M_Jaw2_scaleX_Joint_Anim.o" "Jaw_Jaw2_M_JNT.sx";
connectAttr "Jaw_M_Jaw2_scaleY_Joint_Anim.o" "Jaw_Jaw2_M_JNT.sy";
connectAttr "Jaw_M_Jaw2_scaleZ_Joint_Anim.o" "Jaw_Jaw2_M_JNT.sz";
connectAttr "Joint_Disp.di" "Jaw_Jaw2_M_JNT.do";
connectAttr "Jaw_Limb_M_NODE.joints" "Jaw_Jaw2_M_JNT.limb";
connectAttr "Head_Head1_M_JNT.s" "UpperFace_UF1_M_JNT.is";
connectAttr "UpperFace_M_UF1_scaleX_Joint_Anim.o" "UpperFace_UF1_M_JNT.sx";
connectAttr "UpperFace_M_UF1_scaleY_Joint_Anim.o" "UpperFace_UF1_M_JNT.sy";
connectAttr "UpperFace_M_UF1_scaleZ_Joint_Anim.o" "UpperFace_UF1_M_JNT.sz";
connectAttr "UpperFace_M_UF1_visibility_Joint_Anim.o" "UpperFace_UF1_M_JNT.v";
connectAttr "UpperFace_M_UF1_translateX_Joint_Anim.o" "UpperFace_UF1_M_JNT.tx";
connectAttr "UpperFace_M_UF1_translateY_Joint_Anim.o" "UpperFace_UF1_M_JNT.ty";
connectAttr "UpperFace_M_UF1_translateZ_Joint_Anim.o" "UpperFace_UF1_M_JNT.tz";
connectAttr "UpperFace_M_UF1_rotate_Joint_Anim.ox" "UpperFace_UF1_M_JNT.rx";
connectAttr "UpperFace_M_UF1_rotate_Joint_Anim.oy" "UpperFace_UF1_M_JNT.ry";
connectAttr "UpperFace_M_UF1_rotate_Joint_Anim.oz" "UpperFace_UF1_M_JNT.rz";
connectAttr "Joint_Disp.di" "UpperFace_UF1_M_JNT.do";
connectAttr "UpperFace_Limb_M_NODE.joints" "UpperFace_UF1_M_JNT.limb";
connectAttr "UpperFace_UF1_M_JNT.s" "FaceBrow_Brow1_L_JNT.is";
connectAttr "FaceBrow_L_Brow1_visibility_Joint_Anim.o" "FaceBrow_Brow1_L_JNT.v";
connectAttr "FaceBrow_L_Brow1_translateX_Joint_Anim.o" "FaceBrow_Brow1_L_JNT.tx"
		;
connectAttr "FaceBrow_L_Brow1_translateY_Joint_Anim.o" "FaceBrow_Brow1_L_JNT.ty"
		;
connectAttr "FaceBrow_L_Brow1_translateZ_Joint_Anim.o" "FaceBrow_Brow1_L_JNT.tz"
		;
connectAttr "FaceBrow_L_Brow1_rotate_Joint_Anim.ox" "FaceBrow_Brow1_L_JNT.rx";
connectAttr "FaceBrow_L_Brow1_rotate_Joint_Anim.oy" "FaceBrow_Brow1_L_JNT.ry";
connectAttr "FaceBrow_L_Brow1_rotate_Joint_Anim.oz" "FaceBrow_Brow1_L_JNT.rz";
connectAttr "FaceBrow_L_Brow1_scaleX_Joint_Anim.o" "FaceBrow_Brow1_L_JNT.sx";
connectAttr "FaceBrow_L_Brow1_scaleY_Joint_Anim.o" "FaceBrow_Brow1_L_JNT.sy";
connectAttr "FaceBrow_L_Brow1_scaleZ_Joint_Anim.o" "FaceBrow_Brow1_L_JNT.sz";
connectAttr "Joint_Disp.di" "FaceBrow_Brow1_L_JNT.do";
connectAttr "FaceBrow_Limb_L_NODE.joints" "FaceBrow_Brow1_L_JNT.limb";
connectAttr "UpperFace_UF1_M_JNT.s" "FaceBrow_Brow2_L_JNT.is";
connectAttr "FaceBrow_L_Brow2_visibility_Joint_Anim.o" "FaceBrow_Brow2_L_JNT.v";
connectAttr "FaceBrow_L_Brow2_translateX_Joint_Anim.o" "FaceBrow_Brow2_L_JNT.tx"
		;
connectAttr "FaceBrow_L_Brow2_translateY_Joint_Anim.o" "FaceBrow_Brow2_L_JNT.ty"
		;
connectAttr "FaceBrow_L_Brow2_translateZ_Joint_Anim.o" "FaceBrow_Brow2_L_JNT.tz"
		;
connectAttr "FaceBrow_L_Brow2_rotate_Joint_Anim.ox" "FaceBrow_Brow2_L_JNT.rx";
connectAttr "FaceBrow_L_Brow2_rotate_Joint_Anim.oy" "FaceBrow_Brow2_L_JNT.ry";
connectAttr "FaceBrow_L_Brow2_rotate_Joint_Anim.oz" "FaceBrow_Brow2_L_JNT.rz";
connectAttr "FaceBrow_L_Brow2_scaleX_Joint_Anim.o" "FaceBrow_Brow2_L_JNT.sx";
connectAttr "FaceBrow_L_Brow2_scaleY_Joint_Anim.o" "FaceBrow_Brow2_L_JNT.sy";
connectAttr "FaceBrow_L_Brow2_scaleZ_Joint_Anim.o" "FaceBrow_Brow2_L_JNT.sz";
connectAttr "Joint_Disp.di" "FaceBrow_Brow2_L_JNT.do";
connectAttr "FaceBrow_Limb_L_NODE.joints" "FaceBrow_Brow2_L_JNT.limb";
connectAttr "UpperFace_UF1_M_JNT.s" "FaceBrow_Brow3_L_JNT.is";
connectAttr "FaceBrow_L_Brow3_visibility_Joint_Anim.o" "FaceBrow_Brow3_L_JNT.v";
connectAttr "FaceBrow_L_Brow3_translateX_Joint_Anim.o" "FaceBrow_Brow3_L_JNT.tx"
		;
connectAttr "FaceBrow_L_Brow3_translateY_Joint_Anim.o" "FaceBrow_Brow3_L_JNT.ty"
		;
connectAttr "FaceBrow_L_Brow3_translateZ_Joint_Anim.o" "FaceBrow_Brow3_L_JNT.tz"
		;
connectAttr "FaceBrow_L_Brow3_rotate_Joint_Anim.ox" "FaceBrow_Brow3_L_JNT.rx";
connectAttr "FaceBrow_L_Brow3_rotate_Joint_Anim.oy" "FaceBrow_Brow3_L_JNT.ry";
connectAttr "FaceBrow_L_Brow3_rotate_Joint_Anim.oz" "FaceBrow_Brow3_L_JNT.rz";
connectAttr "FaceBrow_L_Brow3_scaleX_Joint_Anim.o" "FaceBrow_Brow3_L_JNT.sx";
connectAttr "FaceBrow_L_Brow3_scaleY_Joint_Anim.o" "FaceBrow_Brow3_L_JNT.sy";
connectAttr "FaceBrow_L_Brow3_scaleZ_Joint_Anim.o" "FaceBrow_Brow3_L_JNT.sz";
connectAttr "Joint_Disp.di" "FaceBrow_Brow3_L_JNT.do";
connectAttr "FaceBrow_Limb_L_NODE.joints" "FaceBrow_Brow3_L_JNT.limb";
connectAttr "TEMP_RigRoot.limbsParentGroup" "LIMBS.rigRoot";
connectAttr "TEMP_RigRoot.limbs" "UpperFace_Limb_M_NODE.rigRoot";
connectAttr "Head_Limb_M_NODE.limbChildren" "UpperFace_Limb_M_NODE.limbParent";
connectAttr "UpperFace_UF1_M_JNT.group" "UF1_Joint_M_GRP0.joint";
connectAttr "UpperFace_Limb_M_NODE.jointGroups" "UF1_Joint_M_GRP0.limb";
connectAttr "UpperFace_Limb_M_NODE.usedGroups" "UF1_Joint_M_GRP0.used";
connectAttr "Control_Disp.di" "UF1_Joint_M_CTR0.do";
connectAttr "UF1_Joint_M_GRP0.control" "UF1_Joint_M_CTR0.group";
connectAttr "TEMP_RigRoot.limbs" "Spine_Limb_M_NODE.rigRoot";
connectAttr "Spine_Spine_M_JNT.group" "Spine_Joint_M_GRP0.joint";
connectAttr "Spine_Limb_M_NODE.jointGroups" "Spine_Joint_M_GRP0.limb";
connectAttr "Spine_Limb_M_NODE.usedGroups" "Spine_Joint_M_GRP0.used";
connectAttr "Control_Disp.di" "Spine_Joint_M_CTR0.do";
connectAttr "Spine_Joint_M_GRP0.control" "Spine_Joint_M_CTR0.group";
connectAttr "TEMP_RigRoot.limbs" "Jaw_Limb_M_NODE.rigRoot";
connectAttr "Head_Limb_M_NODE.limbChildren" "Jaw_Limb_M_NODE.limbParent";
connectAttr "Jaw_Jaw1_M_JNT.group" "Jaw1_Joint_M_GRP0.joint";
connectAttr "Jaw_Limb_M_NODE.jointGroups" "Jaw1_Joint_M_GRP0.limb";
connectAttr "Jaw_Limb_M_NODE.usedGroups" "Jaw1_Joint_M_GRP0.used";
connectAttr "Control_Disp.di" "Jaw1_Joint_M_CTR0.do";
connectAttr "Jaw1_Joint_M_GRP0.control" "Jaw1_Joint_M_CTR0.group";
connectAttr "Jaw_Jaw2_M_JNT.group" "Jaw2_Joint_M_GRP1.joint";
connectAttr "Jaw_Limb_M_NODE.jointGroups" "Jaw2_Joint_M_GRP1.limb";
connectAttr "Jaw_Limb_M_NODE.usedGroups" "Jaw2_Joint_M_GRP1.used";
connectAttr "Control_Disp.di" "Jaw2_Joint_M_CTR1.do";
connectAttr "Jaw2_Joint_M_GRP1.control" "Jaw2_Joint_M_CTR1.group";
connectAttr "TEMP_RigRoot.limbs" "Head_Limb_M_NODE.rigRoot";
connectAttr "Neck_Limb_M_NODE.limbChildren" "Head_Limb_M_NODE.limbParent";
connectAttr "Head_Head1_M_JNT.group" "Head1_Joint_M_GRP0.joint";
connectAttr "Head_Limb_M_NODE.jointGroups" "Head1_Joint_M_GRP0.limb";
connectAttr "Head_Limb_M_NODE.usedGroups" "Head1_Joint_M_GRP0.used";
connectAttr "Control_Disp.di" "Head1_Joint_M_CTR0.do";
connectAttr "Head1_Joint_M_GRP0.control" "Head1_Joint_M_CTR0.group";
connectAttr "Head_Head2_M_JNT.group" "Head2_Joint_M_GRP1.joint";
connectAttr "Head_Limb_M_NODE.jointGroups" "Head2_Joint_M_GRP1.limb";
connectAttr "Head_Limb_M_NODE.usedGroups" "Head2_Joint_M_GRP1.used";
connectAttr "Control_Disp.di" "Head2_Joint_M_CTR1.do";
connectAttr "Head2_Joint_M_GRP1.control" "Head2_Joint_M_CTR1.group";
connectAttr "TEMP_RigRoot.limbs" "FaceBrow_Limb_L_NODE.rigRoot";
connectAttr "UpperFace_Limb_M_NODE.limbChildren" "FaceBrow_Limb_L_NODE.limbParent"
		;
connectAttr "FaceBrow_Brow1_L_JNT.group" "Brow1_Joint_L_GRP0.joint";
connectAttr "FaceBrow_Limb_L_NODE.jointGroups" "Brow1_Joint_L_GRP0.limb";
connectAttr "FaceBrow_Limb_L_NODE.usedGroups" "Brow1_Joint_L_GRP0.used";
connectAttr "Control_Disp.di" "Brow1_Joint_L_CTR0.do";
connectAttr "Brow1_Joint_L_GRP0.control" "Brow1_Joint_L_CTR0.group";
connectAttr "FaceBrow_Brow2_L_JNT.group" "Brow2_Joint_L_GRP1.joint";
connectAttr "FaceBrow_Limb_L_NODE.jointGroups" "Brow2_Joint_L_GRP1.limb";
connectAttr "FaceBrow_Limb_L_NODE.usedGroups" "Brow2_Joint_L_GRP1.used";
connectAttr "Control_Disp.di" "Brow2_Joint_L_CTR1.do";
connectAttr "Brow2_Joint_L_GRP1.control" "Brow2_Joint_L_CTR1.group";
connectAttr "FaceBrow_Brow3_L_JNT.group" "Brow3_Joint_L_GRP2.joint";
connectAttr "FaceBrow_Limb_L_NODE.jointGroups" "Brow3_Joint_L_GRP2.limb";
connectAttr "FaceBrow_Limb_L_NODE.usedGroups" "Brow3_Joint_L_GRP2.used";
connectAttr "Control_Disp.di" "Brow3_Joint_L_CTR2.do";
connectAttr "Brow3_Joint_L_GRP2.control" "Brow3_Joint_L_CTR2.group";
connectAttr "TEMP_RigRoot.limbs" "Neck_Limb_M_NODE.rigRoot";
connectAttr "Spine_Limb_M_NODE.limbChildren" "Neck_Limb_M_NODE.limbParent";
connectAttr "Neck_Neck_M_JNT.group" "Neck_Joint_M_GRP0.joint";
connectAttr "Neck_Limb_M_NODE.jointGroups" "Neck_Joint_M_GRP0.limb";
connectAttr "Neck_Limb_M_NODE.usedGroups" "Neck_Joint_M_GRP0.used";
connectAttr "Control_Disp.di" "Neck_Joint_M_CTR0.do";
connectAttr "Neck_Joint_M_GRP0.control" "Neck_Joint_M_CTR0.group";
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
connectAttr "layerManager.dli[1]" "Control_Disp.id";
connectAttr "layerManager.dli[2]" "Joint_Disp.id";
connectAttr "layerManager.dli[3]" "Meshe_Disp.id";
connectAttr "Joint_Anim.sl" "BaseAnimation.chsl[0]";
connectAttr "Joint_Anim.play" "BaseAnimation.cdly[0]";
connectAttr "BaseAnimation.csol" "Joint_Anim.sslo";
connectAttr "BaseAnimation.fgwt" "Joint_Anim.pwth";
connectAttr "BaseAnimation.omte" "Joint_Anim.pmte";
connectAttr "FaceBrow_Brow1_L_JNT.v" "Joint_Anim.dsm" -na;
connectAttr "FaceBrow_Brow1_L_JNT.tx" "Joint_Anim.dsm" -na;
connectAttr "FaceBrow_Brow1_L_JNT.ty" "Joint_Anim.dsm" -na;
connectAttr "FaceBrow_Brow1_L_JNT.tz" "Joint_Anim.dsm" -na;
connectAttr "FaceBrow_Brow1_L_JNT.rx" "Joint_Anim.dsm" -na;
connectAttr "FaceBrow_Brow1_L_JNT.ry" "Joint_Anim.dsm" -na;
connectAttr "FaceBrow_Brow1_L_JNT.rz" "Joint_Anim.dsm" -na;
connectAttr "FaceBrow_Brow1_L_JNT.sx" "Joint_Anim.dsm" -na;
connectAttr "FaceBrow_Brow1_L_JNT.sy" "Joint_Anim.dsm" -na;
connectAttr "FaceBrow_Brow1_L_JNT.sz" "Joint_Anim.dsm" -na;
connectAttr "FaceBrow_Brow2_L_JNT.v" "Joint_Anim.dsm" -na;
connectAttr "FaceBrow_Brow2_L_JNT.tx" "Joint_Anim.dsm" -na;
connectAttr "FaceBrow_Brow2_L_JNT.ty" "Joint_Anim.dsm" -na;
connectAttr "FaceBrow_Brow2_L_JNT.tz" "Joint_Anim.dsm" -na;
connectAttr "FaceBrow_Brow2_L_JNT.rx" "Joint_Anim.dsm" -na;
connectAttr "FaceBrow_Brow2_L_JNT.ry" "Joint_Anim.dsm" -na;
connectAttr "FaceBrow_Brow2_L_JNT.rz" "Joint_Anim.dsm" -na;
connectAttr "FaceBrow_Brow2_L_JNT.sx" "Joint_Anim.dsm" -na;
connectAttr "FaceBrow_Brow2_L_JNT.sy" "Joint_Anim.dsm" -na;
connectAttr "FaceBrow_Brow2_L_JNT.sz" "Joint_Anim.dsm" -na;
connectAttr "FaceBrow_Brow3_L_JNT.v" "Joint_Anim.dsm" -na;
connectAttr "FaceBrow_Brow3_L_JNT.tx" "Joint_Anim.dsm" -na;
connectAttr "FaceBrow_Brow3_L_JNT.ty" "Joint_Anim.dsm" -na;
connectAttr "FaceBrow_Brow3_L_JNT.tz" "Joint_Anim.dsm" -na;
connectAttr "FaceBrow_Brow3_L_JNT.rx" "Joint_Anim.dsm" -na;
connectAttr "FaceBrow_Brow3_L_JNT.ry" "Joint_Anim.dsm" -na;
connectAttr "FaceBrow_Brow3_L_JNT.rz" "Joint_Anim.dsm" -na;
connectAttr "FaceBrow_Brow3_L_JNT.sx" "Joint_Anim.dsm" -na;
connectAttr "FaceBrow_Brow3_L_JNT.sy" "Joint_Anim.dsm" -na;
connectAttr "FaceBrow_Brow3_L_JNT.sz" "Joint_Anim.dsm" -na;
connectAttr "Head_Head1_M_JNT.v" "Joint_Anim.dsm" -na;
connectAttr "Head_Head1_M_JNT.tx" "Joint_Anim.dsm" -na;
connectAttr "Head_Head1_M_JNT.ty" "Joint_Anim.dsm" -na;
connectAttr "Head_Head1_M_JNT.tz" "Joint_Anim.dsm" -na;
connectAttr "Head_Head1_M_JNT.rx" "Joint_Anim.dsm" -na;
connectAttr "Head_Head1_M_JNT.ry" "Joint_Anim.dsm" -na;
connectAttr "Head_Head1_M_JNT.rz" "Joint_Anim.dsm" -na;
connectAttr "Head_Head1_M_JNT.sx" "Joint_Anim.dsm" -na;
connectAttr "Head_Head1_M_JNT.sy" "Joint_Anim.dsm" -na;
connectAttr "Head_Head1_M_JNT.sz" "Joint_Anim.dsm" -na;
connectAttr "Head_Head2_M_JNT.v" "Joint_Anim.dsm" -na;
connectAttr "Head_Head2_M_JNT.tx" "Joint_Anim.dsm" -na;
connectAttr "Head_Head2_M_JNT.ty" "Joint_Anim.dsm" -na;
connectAttr "Head_Head2_M_JNT.tz" "Joint_Anim.dsm" -na;
connectAttr "Head_Head2_M_JNT.rx" "Joint_Anim.dsm" -na;
connectAttr "Head_Head2_M_JNT.ry" "Joint_Anim.dsm" -na;
connectAttr "Head_Head2_M_JNT.rz" "Joint_Anim.dsm" -na;
connectAttr "Head_Head2_M_JNT.sx" "Joint_Anim.dsm" -na;
connectAttr "Head_Head2_M_JNT.sy" "Joint_Anim.dsm" -na;
connectAttr "Head_Head2_M_JNT.sz" "Joint_Anim.dsm" -na;
connectAttr "Jaw_Jaw1_M_JNT.v" "Joint_Anim.dsm" -na;
connectAttr "Jaw_Jaw1_M_JNT.tx" "Joint_Anim.dsm" -na;
connectAttr "Jaw_Jaw1_M_JNT.ty" "Joint_Anim.dsm" -na;
connectAttr "Jaw_Jaw1_M_JNT.tz" "Joint_Anim.dsm" -na;
connectAttr "Jaw_Jaw1_M_JNT.rx" "Joint_Anim.dsm" -na;
connectAttr "Jaw_Jaw1_M_JNT.ry" "Joint_Anim.dsm" -na;
connectAttr "Jaw_Jaw1_M_JNT.rz" "Joint_Anim.dsm" -na;
connectAttr "Jaw_Jaw1_M_JNT.sx" "Joint_Anim.dsm" -na;
connectAttr "Jaw_Jaw1_M_JNT.sy" "Joint_Anim.dsm" -na;
connectAttr "Jaw_Jaw1_M_JNT.sz" "Joint_Anim.dsm" -na;
connectAttr "Jaw_Jaw2_M_JNT.v" "Joint_Anim.dsm" -na;
connectAttr "Jaw_Jaw2_M_JNT.tx" "Joint_Anim.dsm" -na;
connectAttr "Jaw_Jaw2_M_JNT.ty" "Joint_Anim.dsm" -na;
connectAttr "Jaw_Jaw2_M_JNT.tz" "Joint_Anim.dsm" -na;
connectAttr "Jaw_Jaw2_M_JNT.rx" "Joint_Anim.dsm" -na;
connectAttr "Jaw_Jaw2_M_JNT.ry" "Joint_Anim.dsm" -na;
connectAttr "Jaw_Jaw2_M_JNT.rz" "Joint_Anim.dsm" -na;
connectAttr "Jaw_Jaw2_M_JNT.sx" "Joint_Anim.dsm" -na;
connectAttr "Jaw_Jaw2_M_JNT.sy" "Joint_Anim.dsm" -na;
connectAttr "Jaw_Jaw2_M_JNT.sz" "Joint_Anim.dsm" -na;
connectAttr "Neck_Neck_M_JNT.v" "Joint_Anim.dsm" -na;
connectAttr "Neck_Neck_M_JNT.tx" "Joint_Anim.dsm" -na;
connectAttr "Neck_Neck_M_JNT.ty" "Joint_Anim.dsm" -na;
connectAttr "Neck_Neck_M_JNT.tz" "Joint_Anim.dsm" -na;
connectAttr "Neck_Neck_M_JNT.rx" "Joint_Anim.dsm" -na;
connectAttr "Neck_Neck_M_JNT.ry" "Joint_Anim.dsm" -na;
connectAttr "Neck_Neck_M_JNT.rz" "Joint_Anim.dsm" -na;
connectAttr "Neck_Neck_M_JNT.sx" "Joint_Anim.dsm" -na;
connectAttr "Neck_Neck_M_JNT.sy" "Joint_Anim.dsm" -na;
connectAttr "Neck_Neck_M_JNT.sz" "Joint_Anim.dsm" -na;
connectAttr "Spine_Spine_M_JNT.v" "Joint_Anim.dsm" -na;
connectAttr "Spine_Spine_M_JNT.tx" "Joint_Anim.dsm" -na;
connectAttr "Spine_Spine_M_JNT.ty" "Joint_Anim.dsm" -na;
connectAttr "Spine_Spine_M_JNT.tz" "Joint_Anim.dsm" -na;
connectAttr "Spine_Spine_M_JNT.rx" "Joint_Anim.dsm" -na;
connectAttr "Spine_Spine_M_JNT.ry" "Joint_Anim.dsm" -na;
connectAttr "Spine_Spine_M_JNT.rz" "Joint_Anim.dsm" -na;
connectAttr "Spine_Spine_M_JNT.sx" "Joint_Anim.dsm" -na;
connectAttr "Spine_Spine_M_JNT.sy" "Joint_Anim.dsm" -na;
connectAttr "Spine_Spine_M_JNT.sz" "Joint_Anim.dsm" -na;
connectAttr "UpperFace_UF1_M_JNT.v" "Joint_Anim.dsm" -na;
connectAttr "UpperFace_UF1_M_JNT.tx" "Joint_Anim.dsm" -na;
connectAttr "UpperFace_UF1_M_JNT.ty" "Joint_Anim.dsm" -na;
connectAttr "UpperFace_UF1_M_JNT.tz" "Joint_Anim.dsm" -na;
connectAttr "UpperFace_UF1_M_JNT.rx" "Joint_Anim.dsm" -na;
connectAttr "UpperFace_UF1_M_JNT.ry" "Joint_Anim.dsm" -na;
connectAttr "UpperFace_UF1_M_JNT.rz" "Joint_Anim.dsm" -na;
connectAttr "UpperFace_UF1_M_JNT.sx" "Joint_Anim.dsm" -na;
connectAttr "UpperFace_UF1_M_JNT.sy" "Joint_Anim.dsm" -na;
connectAttr "UpperFace_UF1_M_JNT.sz" "Joint_Anim.dsm" -na;
connectAttr "FaceBrow_L_Brow1_visibility_Joint_Anim.msg" "Joint_Anim.bnds[0]";
connectAttr "FaceBrow_L_Brow1_translateX_Joint_Anim.msg" "Joint_Anim.bnds[1]";
connectAttr "FaceBrow_L_Brow1_translateY_Joint_Anim.msg" "Joint_Anim.bnds[2]";
connectAttr "FaceBrow_L_Brow1_translateZ_Joint_Anim.msg" "Joint_Anim.bnds[3]";
connectAttr "FaceBrow_L_Brow1_rotate_Joint_Anim.msg" "Joint_Anim.bnds[7]";
connectAttr "FaceBrow_L_Brow1_scaleX_Joint_Anim.msg" "Joint_Anim.bnds[8]";
connectAttr "FaceBrow_L_Brow1_scaleY_Joint_Anim.msg" "Joint_Anim.bnds[9]";
connectAttr "FaceBrow_L_Brow1_scaleZ_Joint_Anim.msg" "Joint_Anim.bnds[10]";
connectAttr "FaceBrow_L_Brow2_visibility_Joint_Anim.msg" "Joint_Anim.bnds[11]";
connectAttr "FaceBrow_L_Brow2_translateX_Joint_Anim.msg" "Joint_Anim.bnds[12]";
connectAttr "FaceBrow_L_Brow2_translateY_Joint_Anim.msg" "Joint_Anim.bnds[13]";
connectAttr "FaceBrow_L_Brow2_translateZ_Joint_Anim.msg" "Joint_Anim.bnds[14]";
connectAttr "FaceBrow_L_Brow2_rotate_Joint_Anim.msg" "Joint_Anim.bnds[18]";
connectAttr "FaceBrow_L_Brow2_scaleX_Joint_Anim.msg" "Joint_Anim.bnds[19]";
connectAttr "FaceBrow_L_Brow2_scaleY_Joint_Anim.msg" "Joint_Anim.bnds[20]";
connectAttr "FaceBrow_L_Brow2_scaleZ_Joint_Anim.msg" "Joint_Anim.bnds[21]";
connectAttr "FaceBrow_L_Brow3_visibility_Joint_Anim.msg" "Joint_Anim.bnds[22]";
connectAttr "FaceBrow_L_Brow3_translateX_Joint_Anim.msg" "Joint_Anim.bnds[23]";
connectAttr "FaceBrow_L_Brow3_translateY_Joint_Anim.msg" "Joint_Anim.bnds[24]";
connectAttr "FaceBrow_L_Brow3_translateZ_Joint_Anim.msg" "Joint_Anim.bnds[25]";
connectAttr "FaceBrow_L_Brow3_rotate_Joint_Anim.msg" "Joint_Anim.bnds[29]";
connectAttr "FaceBrow_L_Brow3_scaleX_Joint_Anim.msg" "Joint_Anim.bnds[30]";
connectAttr "FaceBrow_L_Brow3_scaleY_Joint_Anim.msg" "Joint_Anim.bnds[31]";
connectAttr "FaceBrow_L_Brow3_scaleZ_Joint_Anim.msg" "Joint_Anim.bnds[32]";
connectAttr "Head_M_Head1_visibility_Joint_Anim.msg" "Joint_Anim.bnds[33]";
connectAttr "Head_M_Head1_translateX_Joint_Anim.msg" "Joint_Anim.bnds[34]";
connectAttr "Head_M_Head1_translateY_Joint_Anim.msg" "Joint_Anim.bnds[35]";
connectAttr "Head_M_Head1_translateZ_Joint_Anim.msg" "Joint_Anim.bnds[36]";
connectAttr "Head_M_Head1_rotate_Joint_Anim.msg" "Joint_Anim.bnds[40]";
connectAttr "Head_M_Head1_scaleX_Joint_Anim.msg" "Joint_Anim.bnds[41]";
connectAttr "Head_M_Head1_scaleY_Joint_Anim.msg" "Joint_Anim.bnds[42]";
connectAttr "Head_M_Head1_scaleZ_Joint_Anim.msg" "Joint_Anim.bnds[43]";
connectAttr "Head_M_Head2_visibility_Joint_Anim.msg" "Joint_Anim.bnds[44]";
connectAttr "Head_M_Head2_translateX_Joint_Anim.msg" "Joint_Anim.bnds[45]";
connectAttr "Head_M_Head2_translateY_Joint_Anim.msg" "Joint_Anim.bnds[46]";
connectAttr "Head_M_Head2_translateZ_Joint_Anim.msg" "Joint_Anim.bnds[47]";
connectAttr "Head_M_Head2_rotate_Joint_Anim.msg" "Joint_Anim.bnds[51]";
connectAttr "Head_M_Head2_scaleX_Joint_Anim.msg" "Joint_Anim.bnds[52]";
connectAttr "Head_M_Head2_scaleY_Joint_Anim.msg" "Joint_Anim.bnds[53]";
connectAttr "Head_M_Head2_scaleZ_Joint_Anim.msg" "Joint_Anim.bnds[54]";
connectAttr "Jaw_M_Jaw1_visibility_Joint_Anim.msg" "Joint_Anim.bnds[55]";
connectAttr "Jaw_M_Jaw1_translateX_Joint_Anim.msg" "Joint_Anim.bnds[56]";
connectAttr "Jaw_M_Jaw1_translateY_Joint_Anim.msg" "Joint_Anim.bnds[57]";
connectAttr "Jaw_M_Jaw1_translateZ_Joint_Anim.msg" "Joint_Anim.bnds[58]";
connectAttr "Jaw_M_Jaw1_rotate_Joint_Anim.msg" "Joint_Anim.bnds[62]";
connectAttr "Jaw_M_Jaw1_scaleX_Joint_Anim.msg" "Joint_Anim.bnds[63]";
connectAttr "Jaw_M_Jaw1_scaleY_Joint_Anim.msg" "Joint_Anim.bnds[64]";
connectAttr "Jaw_M_Jaw1_scaleZ_Joint_Anim.msg" "Joint_Anim.bnds[65]";
connectAttr "Jaw_M_Jaw2_visibility_Joint_Anim.msg" "Joint_Anim.bnds[66]";
connectAttr "Jaw_M_Jaw2_translateX_Joint_Anim.msg" "Joint_Anim.bnds[67]";
connectAttr "Jaw_M_Jaw2_translateY_Joint_Anim.msg" "Joint_Anim.bnds[68]";
connectAttr "Jaw_M_Jaw2_translateZ_Joint_Anim.msg" "Joint_Anim.bnds[69]";
connectAttr "Jaw_M_Jaw2_rotate_Joint_Anim.msg" "Joint_Anim.bnds[73]";
connectAttr "Jaw_M_Jaw2_scaleX_Joint_Anim.msg" "Joint_Anim.bnds[74]";
connectAttr "Jaw_M_Jaw2_scaleY_Joint_Anim.msg" "Joint_Anim.bnds[75]";
connectAttr "Jaw_M_Jaw2_scaleZ_Joint_Anim.msg" "Joint_Anim.bnds[76]";
connectAttr "Neck_M_Neck_visibility_Joint_Anim.msg" "Joint_Anim.bnds[77]";
connectAttr "Neck_M_Neck_translateX_Joint_Anim.msg" "Joint_Anim.bnds[78]";
connectAttr "Neck_M_Neck_translateY_Joint_Anim.msg" "Joint_Anim.bnds[79]";
connectAttr "Neck_M_Neck_translateZ_Joint_Anim.msg" "Joint_Anim.bnds[80]";
connectAttr "Neck_M_Neck_rotate_Joint_Anim.msg" "Joint_Anim.bnds[84]";
connectAttr "Neck_M_Neck_scaleX_Joint_Anim.msg" "Joint_Anim.bnds[85]";
connectAttr "Neck_M_Neck_scaleY_Joint_Anim.msg" "Joint_Anim.bnds[86]";
connectAttr "Neck_M_Neck_scaleZ_Joint_Anim.msg" "Joint_Anim.bnds[87]";
connectAttr "Spine_M_Spine_visibility_Joint_Anim.msg" "Joint_Anim.bnds[88]";
connectAttr "Spine_M_Spine_translateX_Joint_Anim.msg" "Joint_Anim.bnds[89]";
connectAttr "Spine_M_Spine_translateY_Joint_Anim.msg" "Joint_Anim.bnds[90]";
connectAttr "Spine_M_Spine_translateZ_Joint_Anim.msg" "Joint_Anim.bnds[91]";
connectAttr "Spine_M_Spine_rotate_Joint_Anim.msg" "Joint_Anim.bnds[95]";
connectAttr "Spine_M_Spine_scaleX_Joint_Anim.msg" "Joint_Anim.bnds[96]";
connectAttr "Spine_M_Spine_scaleY_Joint_Anim.msg" "Joint_Anim.bnds[97]";
connectAttr "Spine_M_Spine_scaleZ_Joint_Anim.msg" "Joint_Anim.bnds[98]";
connectAttr "UpperFace_M_UF1_visibility_Joint_Anim.msg" "Joint_Anim.bnds[99]";
connectAttr "UpperFace_M_UF1_translateX_Joint_Anim.msg" "Joint_Anim.bnds[100]";
connectAttr "UpperFace_M_UF1_translateY_Joint_Anim.msg" "Joint_Anim.bnds[101]";
connectAttr "UpperFace_M_UF1_translateZ_Joint_Anim.msg" "Joint_Anim.bnds[102]";
connectAttr "UpperFace_M_UF1_rotate_Joint_Anim.msg" "Joint_Anim.bnds[106]";
connectAttr "UpperFace_M_UF1_scaleX_Joint_Anim.msg" "Joint_Anim.bnds[107]";
connectAttr "UpperFace_M_UF1_scaleY_Joint_Anim.msg" "Joint_Anim.bnds[108]";
connectAttr "UpperFace_M_UF1_scaleZ_Joint_Anim.msg" "Joint_Anim.bnds[109]";
connectAttr "TempMaterial.oc" "lambert2SG.ss";
connectAttr "Cylinder_PolyShape.iog" "lambert2SG.dsm" -na;
connectAttr "Cube_PolyShape.iog" "lambert2SG.dsm" -na;
connectAttr "Sphere_PolyShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "TempMaterial.msg" "materialInfo1.m";
connectAttr "LControlsMaterial.oc" "LControlsMaterialSG.ss";
connectAttr "TEMP_RigRoot.controlMtrL" "LControlsMaterialSG.rigRoot";
connectAttr "Brow2_Joint_L_CTR1Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Brow1_Joint_L_CTR0Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Brow3_Joint_L_CTR2Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "LControlsMaterialSG.msg" "materialInfo2.sg";
connectAttr "LControlsMaterial.msg" "materialInfo2.m";
connectAttr "LControlsMaterial.msg" "materialInfo2.t" -na;
connectAttr "MControlsMaterial.oc" "MControlsMaterialSG.ss";
connectAttr "TEMP_RigRoot.controlMtrM" "MControlsMaterialSG.rigRoot";
connectAttr "UF1_Joint_M_CTR0Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Spine_Joint_M_CTR0Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Jaw2_Joint_M_CTR1Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Jaw1_Joint_M_CTR0Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Head2_Joint_M_CTR1Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Head1_Joint_M_CTR0Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "Neck_Joint_M_CTR0Shape.iog" "MControlsMaterialSG.dsm" -na;
connectAttr "MControlsMaterialSG.msg" "materialInfo3.sg";
connectAttr "MControlsMaterial.msg" "materialInfo3.m";
connectAttr "MControlsMaterial.msg" "materialInfo3.t" -na;
connectAttr "RControlsMaterial.oc" "RControlsMaterialSG.ss";
connectAttr "TEMP_RigRoot.controlMtrR" "RControlsMaterialSG.rigRoot";
connectAttr "RControlsMaterialSG.msg" "materialInfo4.sg";
connectAttr "RControlsMaterial.msg" "materialInfo4.m";
connectAttr "RControlsMaterial.msg" "materialInfo4.t" -na;
connectAttr "Joint_Anim.bgwt" "FaceBrow_L_Brow1_visibility_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "FaceBrow_L_Brow1_visibility_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "FaceBrow_L_Brow1_translateX_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "FaceBrow_L_Brow1_translateX_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "FaceBrow_L_Brow1_translateY_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "FaceBrow_L_Brow1_translateY_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "FaceBrow_L_Brow1_translateZ_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "FaceBrow_L_Brow1_translateZ_Joint_Anim.wb";
connectAttr "FaceBrow_Brow1_L_JNT.ro" "FaceBrow_L_Brow1_rotate_Joint_Anim.ro";
connectAttr "Joint_Anim.oram" "FaceBrow_L_Brow1_rotate_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "FaceBrow_L_Brow1_rotate_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "FaceBrow_L_Brow1_rotate_Joint_Anim.wb";
connectAttr "Joint_Anim.sam" "FaceBrow_L_Brow1_scaleX_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "FaceBrow_L_Brow1_scaleX_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "FaceBrow_L_Brow1_scaleX_Joint_Anim.wb";
connectAttr "Joint_Anim.sam" "FaceBrow_L_Brow1_scaleY_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "FaceBrow_L_Brow1_scaleY_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "FaceBrow_L_Brow1_scaleY_Joint_Anim.wb";
connectAttr "Joint_Anim.sam" "FaceBrow_L_Brow1_scaleZ_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "FaceBrow_L_Brow1_scaleZ_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "FaceBrow_L_Brow1_scaleZ_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "FaceBrow_L_Brow2_visibility_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "FaceBrow_L_Brow2_visibility_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "FaceBrow_L_Brow2_translateX_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "FaceBrow_L_Brow2_translateX_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "FaceBrow_L_Brow2_translateY_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "FaceBrow_L_Brow2_translateY_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "FaceBrow_L_Brow2_translateZ_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "FaceBrow_L_Brow2_translateZ_Joint_Anim.wb";
connectAttr "FaceBrow_Brow2_L_JNT.ro" "FaceBrow_L_Brow2_rotate_Joint_Anim.ro";
connectAttr "Joint_Anim.oram" "FaceBrow_L_Brow2_rotate_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "FaceBrow_L_Brow2_rotate_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "FaceBrow_L_Brow2_rotate_Joint_Anim.wb";
connectAttr "Joint_Anim.sam" "FaceBrow_L_Brow2_scaleX_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "FaceBrow_L_Brow2_scaleX_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "FaceBrow_L_Brow2_scaleX_Joint_Anim.wb";
connectAttr "Joint_Anim.sam" "FaceBrow_L_Brow2_scaleY_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "FaceBrow_L_Brow2_scaleY_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "FaceBrow_L_Brow2_scaleY_Joint_Anim.wb";
connectAttr "Joint_Anim.sam" "FaceBrow_L_Brow2_scaleZ_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "FaceBrow_L_Brow2_scaleZ_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "FaceBrow_L_Brow2_scaleZ_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "FaceBrow_L_Brow3_visibility_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "FaceBrow_L_Brow3_visibility_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "FaceBrow_L_Brow3_translateX_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "FaceBrow_L_Brow3_translateX_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "FaceBrow_L_Brow3_translateY_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "FaceBrow_L_Brow3_translateY_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "FaceBrow_L_Brow3_translateZ_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "FaceBrow_L_Brow3_translateZ_Joint_Anim.wb";
connectAttr "FaceBrow_Brow3_L_JNT.ro" "FaceBrow_L_Brow3_rotate_Joint_Anim.ro";
connectAttr "Joint_Anim.oram" "FaceBrow_L_Brow3_rotate_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "FaceBrow_L_Brow3_rotate_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "FaceBrow_L_Brow3_rotate_Joint_Anim.wb";
connectAttr "Joint_Anim.sam" "FaceBrow_L_Brow3_scaleX_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "FaceBrow_L_Brow3_scaleX_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "FaceBrow_L_Brow3_scaleX_Joint_Anim.wb";
connectAttr "Joint_Anim.sam" "FaceBrow_L_Brow3_scaleY_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "FaceBrow_L_Brow3_scaleY_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "FaceBrow_L_Brow3_scaleY_Joint_Anim.wb";
connectAttr "Joint_Anim.sam" "FaceBrow_L_Brow3_scaleZ_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "FaceBrow_L_Brow3_scaleZ_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "FaceBrow_L_Brow3_scaleZ_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "Head_M_Head1_visibility_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Head_M_Head1_visibility_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "Head_M_Head1_translateX_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Head_M_Head1_translateX_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "Head_M_Head1_translateY_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Head_M_Head1_translateY_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "Head_M_Head1_translateZ_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Head_M_Head1_translateZ_Joint_Anim.wb";
connectAttr "Head_Head1_M_JNT.ro" "Head_M_Head1_rotate_Joint_Anim.ro";
connectAttr "Joint_Anim.oram" "Head_M_Head1_rotate_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "Head_M_Head1_rotate_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Head_M_Head1_rotate_Joint_Anim.wb";
connectAttr "Joint_Anim.sam" "Head_M_Head1_scaleX_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "Head_M_Head1_scaleX_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Head_M_Head1_scaleX_Joint_Anim.wb";
connectAttr "Joint_Anim.sam" "Head_M_Head1_scaleY_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "Head_M_Head1_scaleY_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Head_M_Head1_scaleY_Joint_Anim.wb";
connectAttr "Joint_Anim.sam" "Head_M_Head1_scaleZ_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "Head_M_Head1_scaleZ_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Head_M_Head1_scaleZ_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "Head_M_Head2_visibility_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Head_M_Head2_visibility_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "Head_M_Head2_translateX_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Head_M_Head2_translateX_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "Head_M_Head2_translateY_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Head_M_Head2_translateY_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "Head_M_Head2_translateZ_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Head_M_Head2_translateZ_Joint_Anim.wb";
connectAttr "Head_Head2_M_JNT.ro" "Head_M_Head2_rotate_Joint_Anim.ro";
connectAttr "Joint_Anim.oram" "Head_M_Head2_rotate_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "Head_M_Head2_rotate_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Head_M_Head2_rotate_Joint_Anim.wb";
connectAttr "Joint_Anim.sam" "Head_M_Head2_scaleX_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "Head_M_Head2_scaleX_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Head_M_Head2_scaleX_Joint_Anim.wb";
connectAttr "Joint_Anim.sam" "Head_M_Head2_scaleY_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "Head_M_Head2_scaleY_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Head_M_Head2_scaleY_Joint_Anim.wb";
connectAttr "Joint_Anim.sam" "Head_M_Head2_scaleZ_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "Head_M_Head2_scaleZ_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Head_M_Head2_scaleZ_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "Jaw_M_Jaw1_visibility_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Jaw_M_Jaw1_visibility_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "Jaw_M_Jaw1_translateX_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Jaw_M_Jaw1_translateX_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "Jaw_M_Jaw1_translateY_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Jaw_M_Jaw1_translateY_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "Jaw_M_Jaw1_translateZ_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Jaw_M_Jaw1_translateZ_Joint_Anim.wb";
connectAttr "Jaw_Jaw1_M_JNT.ro" "Jaw_M_Jaw1_rotate_Joint_Anim.ro";
connectAttr "Joint_Anim.oram" "Jaw_M_Jaw1_rotate_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "Jaw_M_Jaw1_rotate_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Jaw_M_Jaw1_rotate_Joint_Anim.wb";
connectAttr "Joint_Anim.sam" "Jaw_M_Jaw1_scaleX_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "Jaw_M_Jaw1_scaleX_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Jaw_M_Jaw1_scaleX_Joint_Anim.wb";
connectAttr "Joint_Anim.sam" "Jaw_M_Jaw1_scaleY_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "Jaw_M_Jaw1_scaleY_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Jaw_M_Jaw1_scaleY_Joint_Anim.wb";
connectAttr "Joint_Anim.sam" "Jaw_M_Jaw1_scaleZ_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "Jaw_M_Jaw1_scaleZ_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Jaw_M_Jaw1_scaleZ_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "Jaw_M_Jaw2_visibility_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Jaw_M_Jaw2_visibility_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "Jaw_M_Jaw2_translateX_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Jaw_M_Jaw2_translateX_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "Jaw_M_Jaw2_translateY_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Jaw_M_Jaw2_translateY_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "Jaw_M_Jaw2_translateZ_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Jaw_M_Jaw2_translateZ_Joint_Anim.wb";
connectAttr "Jaw_Jaw2_M_JNT.ro" "Jaw_M_Jaw2_rotate_Joint_Anim.ro";
connectAttr "Joint_Anim.oram" "Jaw_M_Jaw2_rotate_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "Jaw_M_Jaw2_rotate_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Jaw_M_Jaw2_rotate_Joint_Anim.wb";
connectAttr "Joint_Anim.sam" "Jaw_M_Jaw2_scaleX_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "Jaw_M_Jaw2_scaleX_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Jaw_M_Jaw2_scaleX_Joint_Anim.wb";
connectAttr "Joint_Anim.sam" "Jaw_M_Jaw2_scaleY_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "Jaw_M_Jaw2_scaleY_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Jaw_M_Jaw2_scaleY_Joint_Anim.wb";
connectAttr "Joint_Anim.sam" "Jaw_M_Jaw2_scaleZ_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "Jaw_M_Jaw2_scaleZ_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Jaw_M_Jaw2_scaleZ_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "Neck_M_Neck_visibility_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Neck_M_Neck_visibility_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "Neck_M_Neck_translateX_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Neck_M_Neck_translateX_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "Neck_M_Neck_translateY_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Neck_M_Neck_translateY_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "Neck_M_Neck_translateZ_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Neck_M_Neck_translateZ_Joint_Anim.wb";
connectAttr "Neck_Neck_M_JNT.ro" "Neck_M_Neck_rotate_Joint_Anim.ro";
connectAttr "Joint_Anim.oram" "Neck_M_Neck_rotate_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "Neck_M_Neck_rotate_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Neck_M_Neck_rotate_Joint_Anim.wb";
connectAttr "Joint_Anim.sam" "Neck_M_Neck_scaleX_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "Neck_M_Neck_scaleX_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Neck_M_Neck_scaleX_Joint_Anim.wb";
connectAttr "Joint_Anim.sam" "Neck_M_Neck_scaleY_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "Neck_M_Neck_scaleY_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Neck_M_Neck_scaleY_Joint_Anim.wb";
connectAttr "Joint_Anim.sam" "Neck_M_Neck_scaleZ_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "Neck_M_Neck_scaleZ_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Neck_M_Neck_scaleZ_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "Spine_M_Spine_visibility_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Spine_M_Spine_visibility_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "Spine_M_Spine_translateX_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Spine_M_Spine_translateX_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "Spine_M_Spine_translateY_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Spine_M_Spine_translateY_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "Spine_M_Spine_translateZ_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Spine_M_Spine_translateZ_Joint_Anim.wb";
connectAttr "Spine_Spine_M_JNT.ro" "Spine_M_Spine_rotate_Joint_Anim.ro";
connectAttr "Joint_Anim.oram" "Spine_M_Spine_rotate_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "Spine_M_Spine_rotate_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Spine_M_Spine_rotate_Joint_Anim.wb";
connectAttr "Joint_Anim.sam" "Spine_M_Spine_scaleX_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "Spine_M_Spine_scaleX_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Spine_M_Spine_scaleX_Joint_Anim.wb";
connectAttr "Joint_Anim.sam" "Spine_M_Spine_scaleY_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "Spine_M_Spine_scaleY_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Spine_M_Spine_scaleY_Joint_Anim.wb";
connectAttr "Joint_Anim.sam" "Spine_M_Spine_scaleZ_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "Spine_M_Spine_scaleZ_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "Spine_M_Spine_scaleZ_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "UpperFace_M_UF1_visibility_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "UpperFace_M_UF1_visibility_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "UpperFace_M_UF1_translateX_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "UpperFace_M_UF1_translateX_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "UpperFace_M_UF1_translateY_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "UpperFace_M_UF1_translateY_Joint_Anim.wb";
connectAttr "Joint_Anim.bgwt" "UpperFace_M_UF1_translateZ_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "UpperFace_M_UF1_translateZ_Joint_Anim.wb";
connectAttr "UpperFace_UF1_M_JNT.ro" "UpperFace_M_UF1_rotate_Joint_Anim.ro";
connectAttr "Joint_Anim.oram" "UpperFace_M_UF1_rotate_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "UpperFace_M_UF1_rotate_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "UpperFace_M_UF1_rotate_Joint_Anim.wb";
connectAttr "Joint_Anim.sam" "UpperFace_M_UF1_scaleX_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "UpperFace_M_UF1_scaleX_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "UpperFace_M_UF1_scaleX_Joint_Anim.wb";
connectAttr "Joint_Anim.sam" "UpperFace_M_UF1_scaleY_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "UpperFace_M_UF1_scaleY_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "UpperFace_M_UF1_scaleY_Joint_Anim.wb";
connectAttr "Joint_Anim.sam" "UpperFace_M_UF1_scaleZ_Joint_Anim.acm";
connectAttr "Joint_Anim.bgwt" "UpperFace_M_UF1_scaleZ_Joint_Anim.wa";
connectAttr "Joint_Anim.fgwt" "UpperFace_M_UF1_scaleZ_Joint_Anim.wb";
connectAttr "UF1_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "UF1_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "Jaw_M_Jaw2_visibility_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "Jaw_M_Jaw2_translateX_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "Jaw_M_Jaw2_translateY_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "Jaw_M_Jaw2_translateZ_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "Jaw_M_Jaw2_rotate_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "Jaw_M_Jaw1_visibility_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "Jaw_M_Jaw1_translateX_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "Jaw_M_Jaw1_translateZ_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "Jaw_M_Jaw1_rotate_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "Jaw_M_Jaw1_translateY_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "Jaw_M_Jaw1_scaleY_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "Head_M_Head2_scaleZ_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "Jaw_M_Jaw1_scaleX_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "Jaw_M_Jaw1_scaleZ_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "Head_M_Head2_scaleY_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "Neck_M_Neck_rotate_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "Jaw_M_Jaw2_scaleY_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "Neck_M_Neck_translateX_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "Neck_M_Neck_scaleX_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "Jaw_M_Jaw2_scaleX_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "Jaw_M_Jaw2_scaleZ_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "Neck_M_Neck_visibility_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "Neck_M_Neck_translateY_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "Neck_M_Neck_translateZ_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "Spine_M_Spine_rotate_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "Spine_M_Spine_translateX_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "Neck_M_Neck_scaleY_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "Neck_M_Neck_scaleZ_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "Spine_M_Spine_visibility_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "Spine_M_Spine_translateY_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "Spine_M_Spine_translateZ_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "FaceBrow_L_Brow2_rotate_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "materialInfo4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn";
connectAttr "FaceBrow_L_Brow1_visibility_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "FaceBrow_L_Brow1_rotate_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "FaceBrow_L_Brow1_scaleX_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "FaceBrow_L_Brow2_translateY_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "FaceBrow_L_Brow2_scaleX_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "FaceBrow_L_Brow2_visibility_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "FaceBrow_L_Brow2_translateX_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "FaceBrow_L_Brow2_translateZ_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "FaceBrow_L_Brow1_translateX_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "FaceBrow_L_Brow1_translateY_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "RControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "FaceBrow_L_Brow1_translateZ_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "FaceBrow_L_Brow1_scaleY_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "FaceBrow_L_Brow2_scaleY_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn"
		;
connectAttr "FaceBrow_L_Brow2_scaleZ_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn"
		;
connectAttr "FaceBrow_L_Brow3_translateX_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "FaceBrow_L_Brow1_scaleZ_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "RControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "FaceBrow_L_Brow3_translateY_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "FaceBrow_L_Brow3_visibility_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "materialInfo3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn";
connectAttr "UF1_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "UpperFace_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "FaceBrow_L_Brow3_translateZ_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "Head_M_Head2_translateY_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "Head_M_Head2_translateZ_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "Head_M_Head2_rotate_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn"
		;
connectAttr "Head_M_Head2_scaleX_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "Head_M_Head2_visibility_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "Head_M_Head1_visibility_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "FaceBrow_L_Brow3_scaleZ_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "FaceBrow_L_Brow3_rotate_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "Head_M_Head1_translateY_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn"
		;
connectAttr "Head_M_Head1_translateZ_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "Head_M_Head1_rotate_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn"
		;
connectAttr "Head_M_Head1_scaleX_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "Head_M_Head1_scaleY_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "Head_M_Head1_scaleZ_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "Head_M_Head2_translateX_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "FaceBrow_L_Brow3_scaleY_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn"
		;
connectAttr "FaceBrow_L_Brow3_scaleX_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn"
		;
connectAttr "Head_M_Head1_translateX_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn"
		;
connectAttr "CONTROL_SHAPE_TEMPLATES.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "Jaw_Jaw1_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn";
connectAttr "Cube_PolyShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn";
connectAttr "LControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn"
		;
connectAttr "Sphere_Poly.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn";
connectAttr "Cube_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn";
connectAttr "FaceBrow_Brow3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "UpperFace_UF1_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "LControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "MControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "materialInfo2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn";
connectAttr "MControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "Head_Head1_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn"
		;
connectAttr "Cylinder_PolyShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "Pin_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn";
connectAttr "TEMP_RigRoot.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn";
connectAttr "BAKED_DATA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn";
connectAttr "Control_Disp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn";
connectAttr "Head_Head2_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn"
		;
connectAttr "uiConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn"
		;
connectAttr "Sphere_PolyShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn"
		;
connectAttr "Cube_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn";
connectAttr "BaseAnimation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn";
connectAttr "Circle_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn"
		;
connectAttr "Pin_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn";
connectAttr "Diamond_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn";
connectAttr "Square_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn";
connectAttr "LIMBS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn";
connectAttr "Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn";
connectAttr "Neck_Neck_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn"
		;
connectAttr "JOINTS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn";
connectAttr "Joint_Disp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn";
connectAttr "Cube_Poly.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn";
connectAttr "Cylinder_Poly.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn";
connectAttr "Square_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn"
		;
connectAttr "TempMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn";
connectAttr "Spine_Spine_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn"
		;
connectAttr "Jaw_Jaw2_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn"
		;
connectAttr "MESHES.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn";
connectAttr "Circle_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn";
connectAttr "lambert2SG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn";
connectAttr "materialInfo1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[118].dn";
connectAttr "FaceBrow_Brow1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn"
		;
connectAttr "FaceBrow_Brow2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[120].dn"
		;
connectAttr "sceneConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn"
		;
connectAttr "Meshe_Disp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn";
connectAttr "Diamond_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[123].dn"
		;
connectAttr "Jaw1_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[124].dn"
		;
connectAttr "Head1_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[125].dn"
		;
connectAttr "Brow2_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[126].dn"
		;
connectAttr "Spine_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[127].dn"
		;
connectAttr "Brow3_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[128].dn"
		;
connectAttr "Brow2_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[129].dn"
		;
connectAttr "Head2_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[130].dn"
		;
connectAttr "Neck_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[131].dn"
		;
connectAttr "Jaw2_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[132].dn"
		;
connectAttr "Neck_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[133].dn"
		;
connectAttr "Spine_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[134].dn"
		;
connectAttr "Spine_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[135].dn"
		;
connectAttr "Head2_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[136].dn"
		;
connectAttr "Head_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[137].dn"
		;
connectAttr "FaceBrow_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[138].dn"
		;
connectAttr "Jaw2_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[139].dn"
		;
connectAttr "Brow1_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[140].dn"
		;
connectAttr "Head1_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[141].dn"
		;
connectAttr "Brow2_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[142].dn"
		;
connectAttr "Brow3_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[143].dn"
		;
connectAttr "Neck_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[144].dn"
		;
connectAttr "Jaw2_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[145].dn"
		;
connectAttr "Jaw1_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[146].dn"
		;
connectAttr "Neck_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[147].dn"
		;
connectAttr "Brow1_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[148].dn"
		;
connectAttr "Head1_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[149].dn"
		;
connectAttr "Jaw_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[150].dn"
		;
connectAttr "Brow1_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[151].dn"
		;
connectAttr "Head2_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[152].dn"
		;
connectAttr "Spine_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[153].dn"
		;
connectAttr "Jaw1_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[154].dn"
		;
connectAttr "Brow3_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[155].dn"
		;
connectAttr "UpperFace_M_UF1_scaleX_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[156].dn"
		;
connectAttr "UpperFace_M_UF1_scaleY_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[157].dn"
		;
connectAttr "UpperFace_M_UF1_rotate_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[158].dn"
		;
connectAttr "UpperFace_M_UF1_scaleZ_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[159].dn"
		;
connectAttr "UpperFace_M_UF1_translateZ_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[160].dn"
		;
connectAttr "Spine_M_Spine_scaleZ_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[161].dn"
		;
connectAttr "Spine_M_Spine_scaleX_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[162].dn"
		;
connectAttr "UpperFace_M_UF1_visibility_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[163].dn"
		;
connectAttr "UpperFace_M_UF1_translateX_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[164].dn"
		;
connectAttr "UpperFace_M_UF1_translateY_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[165].dn"
		;
connectAttr "Spine_M_Spine_scaleY_Joint_Anim.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[166].dn"
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
// End of PFX_AnimRig.ma
