//Maya ASCII 2019 scene
//Name: PFX_AnimRig_02.ma
//Last modified: Tue, May 25, 2021 09:25:52 AM
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
	rename -uid "36A3B9B3-4E9B-D524-FCCC-FA9A4C89423F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.318450226901879 180.87102625752939 52.75504721541278 ;
	setAttr ".r" -type "double3" -15.938352729603091 -14.19999999999998 -4.1009979079887588e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "AB7CA2A2-4323-41FA-A170-50BBB38D60D3";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 62.599695672125733;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 153.70184586064528 -2.9061273377013155 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "A7E77E87-4687-757F-65EA-AFAF08CF0316";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "39FE090D-49F0-37C2-8126-358BF1E5C883";
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
	rename -uid "4C95C08A-4C30-5FDD-128B-BE802936DB0A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "C31A64E9-4843-3761-7475-71980F7AFFF1";
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
	rename -uid "787B534F-4528-0FAE-93A2-79B51C76431E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "4C5C5EDC-4CD7-8F8B-50AA-518E579C3F41";
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
	rename -uid "B5BD8CA4-4753-A9BD-0DBD-ABA5AD19B186";
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
	setAttr ".isBuilt" yes;
	setAttr ".pfrsName" -type "string" "TEMP";
	setAttr ".category" -type "string" "Animation";
	setAttr ".operation" -type "string" "Poses";
	setAttr ".nextLimbID" 8;
	setAttr ".nextJointID" 11;
	setAttr ".posesFolderPath" -type "string" "D:/Assets/Programming/Python/Maya/PayneFreeRigSuite/TESTING_FILES/MISC/Poses";
createNode transform -n "JOINTS" -p "TEMP_RigRoot";
	rename -uid "86079C9F-4CC4-27D2-AA5A-35997557D817";
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
	rename -uid "30199B63-4AC6-DD4D-78AC-1D9B7DF25AB3";
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
	rename -uid "4D41F3F0-4A00-3063-06A0-669B4569BF67";
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
	rename -uid "FCC6CE2B-4522-0E8C-0B67-A29EF6E18F30";
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
	rename -uid "4AC2F7D3-43E7-3BB3-1640-86B5455F7279";
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
createNode parentConstraint -n "Head_Head2_M_JNT_parentConstraint1" -p "Head_Head2_M_JNT";
	rename -uid "679B6FB9-4E69-C360-9494-A4882995DB84";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head2_Joint_M_CTR1W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" -1.1289895048410661e-14 0 5.3290705182007514e-15 ;
	setAttr ".tg[0].tor" -type "double3" -2.5444437451708125e-14 1.5845486318126403e-14 
		-2.0160751192793784e-14 ;
	setAttr ".lr" -type "double3" 1.9083328088781097e-14 -2.0673605429512864e-14 1.9083328088781097e-14 ;
	setAttr ".rst" -type "double3" 21.271677892626542 0 -4.4227363108785998e-15 ;
	setAttr ".rsrr" -type "double3" 1.9083328088781097e-14 -2.0673605429512864e-14 1.9083328088781097e-14 ;
	setAttr -k on ".w0";
createNode joint -n "Jaw_Jaw1_M_JNT" -p "Head_Head1_M_JNT";
	rename -uid "BFE15A6E-43C6-460C-7C1E-C1ACE887D268";
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
	rename -uid "5109352B-4E7E-0594-1CB7-2282363962B4";
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
createNode parentConstraint -n "Jaw_Jaw2_M_JNT_parentConstraint1" -p "Jaw_Jaw2_M_JNT";
	rename -uid "00B6C15A-408C-3997-5A23-C9965FBAA512";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Jaw2_Joint_M_CTR1W0" -dv 1 -min 0 
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
	setAttr ".tg[0].tot" -type "double3" -8.5265128291212022e-14 -1.4210854715202004e-14 
		9.0756309989656788e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -3.7769086842379255e-14 ;
	setAttr ".lr" -type "double3" 0 0 2.5444437451708134e-14 ;
	setAttr ".rst" -type "double3" 12.70888835690603 -1.6161898619570252 -4.0706667358299591e-15 ;
	setAttr ".rsrr" -type "double3" 0 0 4.4527765540489235e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Jaw_Jaw1_M_JNT_parentConstraint1" -p "Jaw_Jaw1_M_JNT";
	rename -uid "3B168285-41E7-525F-955B-81A359789ED4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Jaw1_Joint_M_CTR0W0" -dv 1 -min 0 
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
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-14 0 3.4766090903973962e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -1.2722218725854067e-14 ;
	setAttr ".lr" -type "double3" 0 0 6.361109362927032e-15 ;
	setAttr ".rst" -type "double3" 3.6777220281027212 -0.50423227008099047 -9.3377510187605841e-16 ;
	setAttr ".rsrr" -type "double3" 0 0 6.361109362927032e-15 ;
	setAttr -k on ".w0";
createNode joint -n "UpperFace_UF1_M_JNT" -p "Head_Head1_M_JNT";
	rename -uid "223B5E78-4A95-1164-2E14-38A318A33988";
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
	rename -uid "E689C3EC-4BEA-3C65-BB85-D6BD8F538550";
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
createNode parentConstraint -n "FaceBrow_Brow1_L_JNT_parentConstraint1" -p "FaceBrow_Brow1_L_JNT";
	rename -uid "9D7AFEBA-4A64-192A-445A-86851BDF1E7B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Brow1_Joint_L_CTR0W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" -1.0658141036401503e-14 -2.8421709430404007e-14 
		1.0658141036401503e-14 ;
	setAttr ".tg[0].tor" -type "double3" 1.4312496066585827e-14 -3.1805546814635174e-14 
		-2.7432284127622837e-14 ;
	setAttr ".lr" -type "double3" -8.9907048107356609 -72.694829766660433 14.77935174120168 ;
	setAttr ".rst" -type "double3" 6.0219746905668785 6.8527327263817028 -2.1872999668121369 ;
	setAttr ".rsrr" -type "double3" -8.9907048107356786 -72.694829766660405 14.779351741201701 ;
	setAttr -k on ".w0";
createNode joint -n "FaceBrow_Brow2_L_JNT" -p "UpperFace_UF1_M_JNT";
	rename -uid "B7321621-4997-89C7-BB40-7E863AD1B129";
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
createNode parentConstraint -n "FaceBrow_Brow2_L_JNT_parentConstraint1" -p "FaceBrow_Brow2_L_JNT";
	rename -uid "638D0AE9-47F3-235A-1BF2-22B6F4A4692F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Brow2_Joint_L_CTR1W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 -5.6843418860808015e-14 
		3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" 1.033680271475643e-14 -2.8624992133171654e-14 
		-4.5919258213629525e-14 ;
	setAttr ".lr" -type "double3" -16.811872471554349 -71.740513904941878 14.297771913231637 ;
	setAttr ".rst" -type "double3" 5.5850769520826304 6.9728881458823935 -4.2221279680112875 ;
	setAttr ".rsrr" -type "double3" -16.811872471554334 -71.740513904941835 14.297771913231621 ;
	setAttr -k on ".w0";
createNode joint -n "FaceBrow_Brow3_L_JNT" -p "UpperFace_UF1_M_JNT";
	rename -uid "C9725CBD-42B3-51DA-3E93-F98D94D610E2";
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
createNode parentConstraint -n "FaceBrow_Brow3_L_JNT_parentConstraint1" -p "FaceBrow_Brow3_L_JNT";
	rename -uid "D66F9529-4FCA-05B9-B388-D59EC1774371";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Brow3_Joint_L_CTR2W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-15 -8.5265128291212022e-14 
		-7.1054273576010019e-15 ;
	setAttr ".tg[0].tor" -type "double3" 1.8288189418415221e-14 -9.5416640443905503e-15 
		-1.6697912077683464e-14 ;
	setAttr ".lr" -type "double3" -14.145396758642603 -41.134246091602193 1.2667545073205573 ;
	setAttr ".rst" -type "double3" 4.3798145826556834 5.7797861048791788 -5.5333063335860988 ;
	setAttr ".rsrr" -type "double3" -14.145396758642617 -41.134246091602137 1.2667545073205617 ;
	setAttr -k on ".w0";
createNode joint -n "FaceBrow_Brow1_R_JNT" -p "UpperFace_UF1_M_JNT";
	rename -uid "4739A029-479A-3754-935C-C4A9941A554F";
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
	setAttr ".jo" -type "double3" 6.4566055495300452 163.28449887182452 32.911992543765415 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.5;
	setAttr ".ID" 7;
	setAttr ".pfrsName" -type "string" "Brow1";
createNode parentConstraint -n "FaceBrow_Brow1_R_JNT_parentConstraint1" -p "FaceBrow_Brow1_R_JNT";
	rename -uid "7189144E-4353-90DD-AF8B-41AAD5315E33";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Brow1_Joint_R_CTR0W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 -8.5265128291212022e-14 
		3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" -2.5444437451708134e-14 179.99999999999997 
		0 ;
	setAttr ".lr" -type "double3" 4.2738703532166005e-14 -2.2065098102653144e-14 -6.3611093629270422e-15 ;
	setAttr ".rst" -type "double3" 6.0219746905668785 6.8527327263817028 2.1872999668121222 ;
	setAttr ".rsrr" -type "double3" 1.9282112756372567e-14 9.1440947092076103e-15 -1.2722218725854061e-14 ;
	setAttr -k on ".w0";
createNode joint -n "FaceBrow_Brow2_R_JNT" -p "UpperFace_UF1_M_JNT";
	rename -uid "9825F500-4BA5-F73D-C2D0-27883BDF2CE3";
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
	setAttr ".jo" -type "double3" 178.21053916259191 17.674919952550155 -146.97405374210285 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.5;
	setAttr ".ID" 8;
	setAttr ".pfrsName" -type "string" "Brow2";
createNode parentConstraint -n "FaceBrow_Brow2_R_JNT_parentConstraint1" -p "FaceBrow_Brow2_R_JNT";
	rename -uid "C9B5A4E3-4FF7-0EB2-847E-728048A9844F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Brow2_Joint_R_CTR1W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 1.0658141036401503e-14 5.6843418860808015e-14 
		7.1054273576010019e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 179.99999999999994 0 ;
	setAttr ".lr" -type "double3" 1.2722218725854064e-14 -9.1440947092076072e-15 -1.2722218725854064e-14 ;
	setAttr ".rst" -type "double3" 5.5850769520825878 6.9728881458824787 4.2221279680112751 ;
	setAttr ".rsrr" -type "double3" -1.1927080055488187e-14 -1.1927080055488189e-14 
		-1.9083328088781101e-14 ;
	setAttr -k on ".w0";
createNode joint -n "FaceBrow_Brow3_R_JNT" -p "UpperFace_UF1_M_JNT";
	rename -uid "3E1FF22A-4D18-2C8B-606F-6581C313D922";
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
	setAttr ".jo" -type "double3" 167.77986152944268 48.84972412954113 -150.18234940522004 ;
	setAttr ".pa" -type "double3" 0 -1 0 ;
	setAttr ".radi" 0.5;
	setAttr ".ID" 9;
	setAttr ".pfrsName" -type "string" "Brow3";
createNode parentConstraint -n "FaceBrow_Brow3_R_JNT_parentConstraint1" -p "FaceBrow_Brow3_R_JNT";
	rename -uid "8B283F63-489B-A4D0-15CC-3F9132B23880";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Brow3_Joint_R_CTR2W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 1.0658141036401503e-14 2.8421709430404007e-14 
		-1.4210854715202004e-14 ;
	setAttr ".tg[0].tor" -type "double3" 0 179.99999999999997 0 ;
	setAttr ".lr" -type "double3" 2.2263882770244614e-14 2.3059021440610501e-14 -1.2722218725854062e-14 ;
	setAttr ".rst" -type "double3" 4.3798145826556691 5.7797861048792356 5.5333063335860873 ;
	setAttr ".rsrr" -type "double3" 0 2.0673605429512861e-14 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "UpperFace_UF1_M_JNT_parentConstraint1" -p "UpperFace_UF1_M_JNT";
	rename -uid "1E578E37-4716-4A1E-FBCC-0988B1A7C069";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "UF1_Joint_M_CTR0W0" -dv 1 -min 0 
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
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-14 0 5.3053345529058036e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -1.2722218725854067e-14 ;
	setAttr ".lr" -type "double3" 0 0 6.361109362927032e-15 ;
	setAttr ".rst" -type "double3" 7.7956456838605845 -1.0927082562046309 -1.9873301155242291e-15 ;
	setAttr ".rsrr" -type "double3" 0 0 6.361109362927032e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Head_Head1_M_JNT_parentConstraint1" -p "Head_Head1_M_JNT";
	rename -uid "84A22E3F-4DEA-1D2A-8D77-A9B753DCEA0D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head1_Joint_M_CTR0W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 8.5265128291212022e-14 2.8421709430404007e-14 
		1.8433724208890989e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -3.1805546814635168e-15 ;
	setAttr ".lr" -type "double3" 0 0 3.1805546814635168e-15 ;
	setAttr ".rst" -type "double3" 8.3018113478212001 2.8421709430404007e-14 -8.0642531931340231e-16 ;
	setAttr ".rsrr" -type "double3" 0 0 3.1805546814635168e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Neck_Neck_M_JNT_parentConstraint1" -p "Neck_Neck_M_JNT";
	rename -uid "A91377E5-4046-7CEE-50C5-91BAE605D6B8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Neck_Joint_M_CTR0W0" -dv 1 -min 0 
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
	setAttr ".tg[0].tot" -type "double3" -2.8421709430404007e-14 0 -3.1554436208840472e-30 ;
	setAttr ".tg[0].tor" -type "double3" 0 -1.9421187711420696e-30 1.9083328088781101e-14 ;
	setAttr ".lr" -type "double3" -1.4124500153760511e-30 1.4124500153760506e-30 -1.5902773407317584e-14 ;
	setAttr ".rst" -type "double3" 23.879344071911248 -5.3290705182007514e-15 -2.3665827156630354e-30 ;
	setAttr ".rsrr" -type "double3" -1.4124500153760511e-30 1.4124500153760506e-30 -1.5902773407317584e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spine_Spine_M_JNT_parentConstraint1" -p "Spine_Spine_M_JNT";
	rename -uid "1EDEFE1D-46B7-7FEB-9775-35A503E1DAA5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_Joint_M_CTR0W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 0 -3.5527136788005009e-15 -7.8886090522101181e-31 ;
	setAttr ".tg[0].tor" -type "double3" 0 -3.5311250384401269e-31 7.9513867036587919e-16 ;
	setAttr ".lr" -type "double3" 3.1805546814635168e-15 -8.8278125961003172e-32 3.1805546814635168e-15 ;
	setAttr ".rst" -type "double3" 7.8886090522101181e-31 130 0 ;
	setAttr ".rsrr" -type "double3" 3.1805546814635168e-15 -8.8278125961003172e-32 3.1805546814635168e-15 ;
	setAttr -k on ".w0";
createNode transform -n "LIMBS" -p "TEMP_RigRoot";
	rename -uid "E420E566-4CAA-08F1-BBC4-B98634AFDF72";
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
	rename -uid "8152D6F0-478E-9AA2-0E44-5A892556FBC1";
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
	setAttr ".pfrsName" -type "string" "UpperFace";
	setAttr ".limbType" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "UF1_Joint_M_GRP0" -p "UpperFace_Limb_M_NODE";
	rename -uid "E629E411-480C-07B9-3F7B-DDAC0AB54832";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "UF1_Joint_M_CTR0" -p "UF1_Joint_M_GRP0";
	rename -uid "AF18B5BD-40AE-32FF-9AFF-CFB80AF974B4";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 5.6843418860808015e-14 -7.8886090522101181e-31 ;
	setAttr ".r" -type "double3" 0 0 -1.9083328088781101e-14 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "UF1_Joint_M_CTR0Shape" -p "UF1_Joint_M_CTR0";
	rename -uid "A4BC01FE-4B7D-8D5F-B6A2-AAB6BDD1D176";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode parentConstraint -n "UF1_Joint_M_GRP0_parentConstraint1" -p "UF1_Joint_M_GRP0";
	rename -uid "3BD66FE7-4AA9-7EF9-1FD0-079AC8DEEE03";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head1_Joint_M_CTR0W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 7.7956456838605845 -1.0927082562046451 -4.6743818394842874e-15 ;
	setAttr ".tg[0].tor" -type "double3" -2.5954857380637237e-14 -2.6869227173037318e-14 
		-87.326908790938845 ;
	setAttr ".lr" -type "double3" 90.000000000000085 -61.632278734677463 -90.000000000000085 ;
	setAttr ".rst" -type "double3" -1.4270190029615379e-15 167.89027931075705 3.9873366755325903 ;
	setAttr ".rsrr" -type "double3" 90.000000000000114 -61.632278734677456 -90.000000000000057 ;
	setAttr -k on ".w0";
createNode transform -n "Spine_Limb_M_NODE" -p "LIMBS";
	rename -uid "02F1A828-4E93-11FE-06BA-4A892310AEA8";
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
	setAttr ".pfrsName" -type "string" "Spine";
	setAttr ".limbType" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "Spine_Joint_M_GRP0" -p "Spine_Limb_M_NODE";
	rename -uid "06D90668-47AC-70DC-FAAD-7A9BDF099F4D";
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
	rename -uid "A1A2048E-4DC1-368D-DFD4-BE9E96440F01";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 3.5527136788005009e-15 1.5777218104420236e-30 ;
	setAttr ".r" -type "double3" -2.5444437451708134e-14 2.2263882770244614e-14 -9.5416640443905566e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Spine_Joint_M_CTR0Shape" -p "Spine_Joint_M_CTR0";
	rename -uid "26F65719-4075-D965-21A5-D1916EF1AF6F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
	rename -uid "ED80D35E-4EAB-5FDA-CF73-64B6369F97C4";
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
	setAttr ".pfrsName" -type "string" "Jaw";
	setAttr ".limbType" 3;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Jaw1_Joint_M_GRP0" -p "Jaw_Limb_M_NODE";
	rename -uid "7895B79A-4CE6-EF53-1956-B7B423FFE263";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Jaw1_Joint_M_CTR0" -p "Jaw1_Joint_M_GRP0";
	rename -uid "EAF9252E-4AE6-66E5-DEAE-B09AF4118436";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -1.4210854715202004e-14 2.8421709430404007e-14 3.1554436208840472e-30 ;
	setAttr ".r" -type "double3" 0 0 -1.9083328088781101e-14 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Jaw1_Joint_M_CTR0Shape" -p "Jaw1_Joint_M_CTR0";
	rename -uid "2DD13745-43C4-7B3D-54BD-96BD91260015";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Jaw2_Joint_M_GRP1" -p "Jaw1_Joint_M_CTR0";
	rename -uid "B3C1458D-4206-6C55-0BD7-FCA78369035A";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 12.708888356906044 -1.6161898619569683 -9.4034245959013864e-15 ;
	setAttr ".r" -type "double3" 0 0 87.326908790938845 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999978 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Jaw2_Joint_M_CTR1" -p "Jaw2_Joint_M_GRP1";
	rename -uid "E91F8DA7-4633-0413-B035-1F8461EA7BCD";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.8421709430404007e-14 -1.4210854715202004e-14 5.5220263365470826e-30 ;
	setAttr ".r" -type "double3" 0 0 -2.5444437451708134e-14 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Jaw2_Joint_M_CTR1Shape" -p "Jaw2_Joint_M_CTR1";
	rename -uid "B6C543F0-40B8-BFE7-C37F-6C9ADBD70671";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode parentConstraint -n "Jaw1_Joint_M_GRP0_parentConstraint1" -p "Jaw1_Joint_M_GRP0";
	rename -uid "29F59328-450C-5228-4DCF-3BB9C96F4289";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head1_Joint_M_CTR0W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 3.6777220281027212 -0.50423227008100469 -2.2023142146487172e-15 ;
	setAttr ".tg[0].tor" -type "double3" -2.5954857380637237e-14 -2.6869227173037318e-14 
		-87.326908790938845 ;
	setAttr ".lr" -type "double3" 90.000000000000085 -61.632278734677463 -90.000000000000085 ;
	setAttr ".rst" -type "double3" -9.2732957780281106e-16 164.66548820355263 1.359729106699358 ;
	setAttr ".rsrr" -type "double3" 90.000000000000114 -61.632278734677456 -90.000000000000057 ;
	setAttr -k on ".w0";
createNode transform -n "Head_Limb_M_NODE" -p "LIMBS";
	rename -uid "BE87D9A5-41F3-61BC-09DB-FD89DE2387C6";
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
	setAttr ".pfrsName" -type "string" "Head";
	setAttr ".limbType" 3;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Head1_Joint_M_GRP0" -p "Head_Limb_M_NODE";
	rename -uid "6E93F5CD-48F1-6813-B7E6-A49026725B3C";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Head1_Joint_M_CTR0" -p "Head1_Joint_M_GRP0";
	rename -uid "F22EE4AC-4512-FF8D-0A7A-2FA653097A3D";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -8.5265128291212022e-14 0 1.9721522630525295e-31 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Head1_Joint_M_CTR0Shape" -p "Head1_Joint_M_CTR0";
	rename -uid "F73D90EF-4EFE-3669-C39E-DD8012E22C00";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Head2_Joint_M_GRP1" -p "Head1_Joint_M_CTR0";
	rename -uid "BD133632-49AB-1AC5-1AA8-65973C5B8B6C";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 21.271677892626514 0 -1.1987323281386613e-14 ;
	setAttr ".r" -type "double3" 58.959187525616315 89.999999999999943 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Head2_Joint_M_CTR1" -p "Head2_Joint_M_GRP1";
	rename -uid "765DA27F-4152-70C1-D552-5A8F31F537E1";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 5.0487097934144756e-29 5.6843418860808015e-14 4.0856207306205761e-14 ;
	setAttr ".r" -type "double3" -2.5444437451708134e-14 1.2722218725854064e-14 -9.5416640443905535e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Head2_Joint_M_CTR1Shape" -p "Head2_Joint_M_CTR1";
	rename -uid "AB838B72-48EB-7F74-0915-D294CAFCF242";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode parentConstraint -n "Head1_Joint_M_GRP0_parentConstraint1" -p "Head1_Joint_M_GRP0";
	rename -uid "2CE39806-43B7-0E9D-29B2-D79950454F69";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Neck_Joint_M_CTR0W0" -dv 1 -min 0 
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
	setAttr ".tg[0].tot" -type "double3" 8.3018113478212001 7.1054273576010019e-15 -1.3595172293010599e-15 ;
	setAttr ".tg[0].tor" -type "double3" 5.0294766230441358e-15 -2.9537478484820236e-14 
		-17.545079193587735 ;
	setAttr ".lr" -type "double3" -90.000000000000043 -31.040812474383703 90.000000000000014 ;
	setAttr ".rst" -type "double3" -4.8385519158803668e-16 161.77442179870437 -0.96870911256711723 ;
	setAttr ".rsrr" -type "double3" -90.000000000000057 -31.040812474383703 90.000000000000057 ;
	setAttr -k on ".w0";
createNode transform -n "FaceBrow_Limb_L_NODE" -p "LIMBS";
	rename -uid "6F7E82A6-45A2-D1C3-8BB3-C698920881D6";
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
	setAttr ".pfrsName" -type "string" "FaceBrow";
	setAttr ".limbType" 2;
	setAttr ".limbLocation" 1;
	setAttr ".side" 1;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Brow1_Joint_L_GRP0" -p "FaceBrow_Limb_L_NODE";
	rename -uid "56CA44E3-4F28-28F0-FF4D-3ABB79552B42";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1.0000000000000002 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Brow1_Joint_L_CTR0" -p "Brow1_Joint_L_GRP0";
	rename -uid "708555D2-4343-B738-463E-A7A7D61366C3";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Brow1_Joint_L_CTR0Shape" -p "Brow1_Joint_L_CTR0";
	rename -uid "544FE5B9-43E6-BCAB-89CF-68B58AC24AF9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Brow2_Joint_L_GRP1" -p "Brow1_Joint_L_CTR0";
	rename -uid "D5B2098F-4AF4-BFE4-4DDF-079B228EE069";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 0.29650425851945528 0.10721402335377661 -2.0606873443267304 ;
	setAttr ".r" -type "double3" -8.2797555087337873 0.96557480085153391 -1.2425806180668688e-17 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 1 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Brow2_Joint_L_CTR1" -p "Brow2_Joint_L_GRP1";
	rename -uid "565C9728-4306-F71E-BAF1-A1874FFD1EBE";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Brow2_Joint_L_CTR1Shape" -p "Brow2_Joint_L_CTR1";
	rename -uid "E2B677CA-4B54-35F8-EFF9-EDAF5894B53B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode transform -n "Brow3_Joint_L_GRP2" -p "Brow2_Joint_L_CTR1";
	rename -uid "BF2825F5-479E-60B3-96AC-0E979140E050";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -1.1842907835875423 -0.28850996899740267 -1.7633932923352287 ;
	setAttr ".r" -type "double3" -8.9904412206658737 31.255905060956604 -1.3831904597386262 ;
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999956 0.99999999999999956 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Brow3_Joint_L_CTR2" -p "Brow3_Joint_L_GRP2";
	rename -uid "C2ADA48B-4818-0297-3219-858DB0B5F8DC";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.6517529336454064 2.9787331698599004 -1.020388627949359 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Brow3_Joint_L_CTR2Shape" -p "Brow3_Joint_L_CTR2";
	rename -uid "64EBC7C2-4CE3-3E46-BE0C-448729B21013";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode parentConstraint -n "Brow1_Joint_L_GRP0_parentConstraint1" -p "Brow1_Joint_L_GRP0";
	rename -uid "038D574C-4C35-61CE-5F9C-1A96D8C1EC11";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "UF1_Joint_M_CTR0W0" -dv 1 -min 0 
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
	setAttr ".tg[0].tot" -type "double3" 6.0219746905668643 6.8527327263816744 -2.1872999668121369 ;
	setAttr ".tg[0].tor" -type "double3" 6.4566055495300452 16.715501128175536 32.911992543765408 ;
	setAttr ".lr" -type "double3" -8.990704810735755 -72.69482976666049 14.779351741201761 ;
	setAttr ".rst" -type "double3" 2.1872999668121293 171.05889892578131 12.542099952697766 ;
	setAttr ".rsrr" -type "double3" -8.9907048107356857 -72.694829766660504 14.779351741201692 ;
	setAttr -k on ".w0";
createNode transform -n "Neck_Limb_M_NODE" -p "LIMBS";
	rename -uid "D27FCE69-4DD0-51A9-334D-E2A3DF035F69";
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
	setAttr ".pfrsName" -type "string" "Neck";
	setAttr ".limbType" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "Neck_Joint_M_GRP0" -p "Neck_Limb_M_NODE";
	rename -uid "25CBD91A-4F54-C941-D473-46A28FD1EE71";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Neck_Joint_M_CTR0" -p "Neck_Joint_M_GRP0";
	rename -uid "D649246A-4A4C-7B2E-87DB-9B87BE338ACC";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.8421709430404007e-14 7.1054273576010019e-15 6.3108872417680944e-30 ;
	setAttr ".r" -type "double3" -4.4375195265356115e-16 2.4556956467304071e-15 1.2722218725854067e-14 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Neck_Joint_M_CTR0Shape" -p "Neck_Joint_M_CTR0";
	rename -uid "A0EE1555-41E9-D050-2E85-51A9534099FF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
createNode parentConstraint -n "Neck_Joint_M_GRP0_parentConstraint1" -p "Neck_Joint_M_GRP0";
	rename -uid "DA8DE5F8-44EE-E0B8-A088-C3A1904C5F45";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Spine_Joint_M_CTR0W0" -dv 1 -min 
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
	setAttr ".tg[0].tot" -type "double3" 23.879344071911248 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 180 3.817219013708269e-15 20.485984843149435 ;
	setAttr ".lr" -type "double3" -90.000000000000028 -13.495733280795964 90.000000000000014 ;
	setAttr ".rst" -type "double3" 0 153.70184586064528 -2.9061273377013137 ;
	setAttr ".rsrr" -type "double3" -90.000000000000028 -13.495733280795964 90.000000000000014 ;
	setAttr -k on ".w0";
createNode transform -n "FaceBrow_Limb_R_NODE" -p "LIMBS";
	rename -uid "3B51BCE5-4A06-E4C3-F599-8CB2F4A833D8";
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
	setAttr ".pfrsName" -type "string" "FaceBrow";
	setAttr ".limbType" 2;
	setAttr ".limbLocation" 1;
	setAttr ".side" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Brow1_Joint_R_GRP0" -p "FaceBrow_Limb_R_NODE";
	rename -uid "484F6F4E-4ED2-A313-073F-858C8DA13E53";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".rp" -type "double3" 0 -2.8421709430404007e-14 1.7763568394002505e-15 ;
	setAttr ".rpt" -type "double3" -4.7514963598815201e-15 3.5512031152930546e-16 -9.7706456401098271e-16 ;
	setAttr ".sp" -type "double3" 0 -2.8421709430404007e-14 1.7763568394002505e-15 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Brow1_Joint_R_CTR0" -p "Brow1_Joint_R_GRP0";
	rename -uid "FF8D4030-4D06-7477-AEAE-488ECF738758";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 7.1054273576010019e-15 0 0 ;
	setAttr ".sp" -type "double3" 7.1054273576010019e-15 0 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Brow1_Joint_R_CTR0Shape" -p "Brow1_Joint_R_CTR0";
	rename -uid "9A777B02-4F72-3816-DED1-0DA177B7E19E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.7763568e-15 1.3433699e-14 
		-2 1.5543122e-15 9.2148511e-15 -2 1.9984014e-15 1.2656542e-14 -2 1.7763568e-15 8.437695e-15 
		-2 -1.5543122e-15 -9.2148511e-15 2 -1.7763568e-15 -1.3433699e-14 2 -1.7763568e-15 
		-8.437695e-15 2 -1.9984014e-15 -1.2656542e-14 2;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 4 1 -6 -1
		mu 0 4 0 2 3 1
		f 4 6 2 -8 -2
		mu 0 4 2 4 5 3
		f 4 8 3 -10 -3
		mu 0 4 4 6 7 5
		f 4 10 0 -12 -4
		mu 0 4 6 8 9 7
		f 4 5 7 9 11
		mu 0 4 1 3 11 10
		f 4 -9 -7 -5 -11
		mu 0 4 12 13 2 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Brow2_Joint_R_GRP1" -p "Brow1_Joint_R_CTR0";
	rename -uid "A31BD34C-42FA-0B5E-DCB0-E088424CF42F";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 0.29650425851945883 0.10721402335371977 2.0606873443267286 ;
	setAttr ".r" -type "double3" 8.2797555087338353 -0.9655748008515086 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 0 2.8421709430404007e-14 0 ;
	setAttr ".rpt" -type "double3" -6.8972378761719619e-17 -2.9624706277146525e-16 4.092331409376559e-15 ;
	setAttr ".sp" -type "double3" 0 2.8421709430404007e-14 0 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Brow2_Joint_R_CTR1" -p "Brow2_Joint_R_GRP1";
	rename -uid "503BF501-4215-DD58-ED3F-54948AF55C6C";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 0 0 -1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" 0 0 -1.7763568394002505e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Brow2_Joint_R_CTR1Shape" -p "Brow2_Joint_R_CTR1";
	rename -uid "B321AE1F-4342-EEFB-5A08-15A12C84B755";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.6645353e-15 -5.9952043e-15 
		-2 3.1086245e-15 -6.4392935e-15 -2 2.6645353e-15 -5.5511151e-15 -2 3.1086245e-15 
		-5.9952043e-15 -2 3.9968029e-15 6.4392935e-15 2 4.4408921e-15 5.9952043e-15 2 3.9968029e-15 
		5.9952043e-15 2 4.4408921e-15 5.5511151e-15 2;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 4 1 -6 -1
		mu 0 4 0 2 3 1
		f 4 6 2 -8 -2
		mu 0 4 2 4 5 3
		f 4 8 3 -10 -3
		mu 0 4 4 6 7 5
		f 4 10 0 -12 -4
		mu 0 4 6 8 9 7
		f 4 5 7 9 11
		mu 0 4 1 3 11 10
		f 4 -9 -7 -5 -11
		mu 0 4 12 13 2 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Brow3_Joint_R_GRP2" -p "Brow2_Joint_R_CTR1";
	rename -uid "A947A64A-49C5-0CB4-074F-A69BDFC08A0C";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -1.1842907835875458 -0.28850996899734582 1.7633932923352269 ;
	setAttr ".r" -type "double3" 8.9904412206658471 -31.255905060956596 -1.3831904597386191 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".rp" -type "double3" -3.5527136788005009e-15 2.8421709430404007e-14 0 ;
	setAttr ".rpt" -type "double3" -1.1096550521081439e-15 -2.2841755548492485e-16 1.9534463142147672e-15 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-15 2.8421709430404007e-14 0 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Brow3_Joint_R_CTR2" -p "Brow3_Joint_R_GRP2";
	rename -uid "85829BCA-4883-A6E7-C90D-EBB2C9E49840";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" -3.5527136788005009e-15 2.8421709430404007e-14 2.1316282072803006e-14 ;
	setAttr ".sp" -type "double3" -3.5527136788005009e-15 2.8421709430404007e-14 2.1316282072803006e-14 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Brow3_Joint_R_CTR2Shape" -p "Brow3_Joint_R_CTR2";
	rename -uid "6210A663-4F59-A5B2-BCF7-D791D31543B0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.220446e-16 1.9984014e-15 
		-2 -2.220446e-16 -4.6629367e-15 -2 2.220446e-16 1.5543122e-15 -2 -2.220446e-16 -4.8849813e-15 
		-2 2.220446e-16 4.6629367e-15 2 -2.220446e-16 -1.9984014e-15 2 2.220446e-16 4.8849813e-15 
		2 -2.220446e-16 -1.5543122e-15 2;
	setAttr -s 8 ".vt[0:7]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 4 1 -6 -1
		mu 0 4 0 2 3 1
		f 4 6 2 -8 -2
		mu 0 4 2 4 5 3
		f 4 8 3 -10 -3
		mu 0 4 4 6 7 5
		f 4 10 0 -12 -4
		mu 0 4 6 8 9 7
		f 4 5 7 9 11
		mu 0 4 1 3 11 10
		f 4 -9 -7 -5 -11
		mu 0 4 12 13 2 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode parentConstraint -n "Brow1_Joint_R_GRP0_parentConstraint1" -p "Brow1_Joint_R_GRP0";
	rename -uid "26C986F2-46E4-7968-2253-C6BC4371A0D4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "UF1_Joint_M_CTR0W0" -dv 1 -min 0 
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
	setAttr ".tg[0].tot" -type "double3" 6.0219746905668785 6.8527327263816504 2.1872999668121258 ;
	setAttr ".tg[0].tor" -type "double3" -6.4566055495300496 -16.715501128175472 32.9119925437654 ;
	setAttr ".lr" -type "double3" 8.9907048107356893 -107.30517023333951 -14.779351741201756 ;
	setAttr ".rst" -type "double3" -2.1872999668121293 171.05889892578131 12.542099952697763 ;
	setAttr ".rsrr" -type "double3" 8.9907048107356129 -107.30517023333951 -14.779351741201655 ;
	setAttr -k on ".w0";
createNode transform -n "MESHES" -p "TEMP_RigRoot";
	rename -uid "4DE06671-4639-1AF7-497F-4D80C275FD26";
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
	rename -uid "3EB5339A-4AE1-00F6-A46E-458EAF230087";
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
	rename -uid "7102D033-4043-59B7-8D77-F0BCE1795E62";
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
	rename -uid "523EF7C8-448B-6C35-1277-E68F9B043241";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Circle_Wire";
createNode nurbsCurve -n "Circle_WireShape" -p "Circle_Wire";
	rename -uid "7024178E-4F06-A79C-8EF8-3AB011AF5C78";
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
	rename -uid "9DEAD2C5-4176-60C5-51A7-789B0DDEB7C9";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Cube_PolyShape" -p "Cube_Poly";
	rename -uid "AD0C34ED-42CA-455D-6140-719D28633B80";
	setAttr -k off ".v";
	setAttr ".vir" yes;
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
	rename -uid "E6D76144-4047-6C81-CA03-789E9FB8B586";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cube_Wire";
createNode nurbsCurve -n "Cube_WireShape" -p "Cube_Wire";
	rename -uid "33B3C8B0-4556-F418-0E37-0296C70FF784";
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
	rename -uid "9E12C89C-42F4-BA42-A294-B79C1EB15300";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cylinder_Poly";
createNode mesh -n "Cylinder_PolyShape" -p "Cylinder_Poly";
	rename -uid "1EC1DF8A-4391-ECEF-AD1C-1EAA7FE1109A";
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
	rename -uid "82F233B2-46E6-8A0F-4CD0-AAB01472F149";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Diamond_Wire";
createNode nurbsCurve -n "Diamond_WireShape" -p "Diamond_Wire";
	rename -uid "070C5F1B-4191-3B90-E3B2-D4902458A67C";
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
	rename -uid "6E77A0E1-4E0C-D968-5492-019ABB34B5F8";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Pin_Wire";
createNode nurbsCurve -n "Pin_WireShape" -p "Pin_Wire";
	rename -uid "9A30FECC-40D8-60EB-CABA-D7A3F5CF427C";
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
	rename -uid "BB13343B-4997-A9A9-C971-C4990CF85FFF";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Sphere_Poly";
createNode mesh -n "Sphere_PolyShape" -p "Sphere_Poly";
	rename -uid "888C7D4B-41DB-3642-FDAA-AB923379673C";
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
	rename -uid "7E2D70FC-4B5A-A6BC-7528-869F7BDC1664";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Square_Wire";
createNode nurbsCurve -n "Square_WireShape" -p "Square_Wire";
	rename -uid "732DB814-4C95-922A-A236-A6B2DBDD7DB7";
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
	rename -uid "7EFA6D3F-4A4B-D6AA-1D9D-CFAAB8E4A68A";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "B9666453-4575-BD93-3009-CEA65814B6B4";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "C46A629F-4246-FA39-8CB6-AB8FA218C8C8";
createNode displayLayerManager -n "layerManager";
	rename -uid "D52C1863-49BF-C41C-90B6-3CA16BCB2B63";
	setAttr -s 4 ".dli[1:3]"  1 2 3;
	setAttr -s 4 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "62CD4BE0-486A-C8EE-44DD-9CAD537956C4";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "2DE61D03-4D86-7093-7EDF-B79A658A1107";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "E1FBFF2C-4025-C209-A52F-668FE819F170";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "23ACBB9E-4EF2-5E57-EFF5-74BC15E7203C";
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
	rename -uid "F4C282F7-4E99-EEAA-2473-4AB146101B49";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "Control_Disp";
	rename -uid "BA9C4039-41CF-0C4C-7B96-8E86129451E6";
	setAttr ".do" 1;
createNode displayLayer -n "Joint_Disp";
	rename -uid "BA983172-4628-3CDD-7841-5E8D6F2C9C58";
	setAttr ".dt" 2;
	setAttr ".do" 2;
createNode displayLayer -n "Meshe_Disp";
	rename -uid "C657633D-460F-8B5B-0F54-61973C8C1E19";
	setAttr ".dt" 2;
	setAttr ".do" 3;
createNode animLayer -n "BaseAnimation";
	rename -uid "6BBABC67-4B77-D962-3FC8-85912A0930B1";
	setAttr ".ovrd" yes;
createNode lambert -n "TempMaterial";
	rename -uid "0ED3F92A-465F-66CA-0060-F4BE318B7EAB";
	setAttr ".c" -type "float3" 1 0.92308331 0 ;
	setAttr ".it" -type "float3" 0.69277108 0.69277108 0.69277108 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "55D14CEE-4C46-4550-5BEA-2EB12C89178A";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "BC7D1E3C-400F-189B-DE87-96BEC52770FF";
createNode surfaceShader -n "LControlsMaterial";
	rename -uid "81C6EF93-4520-ECFB-6E5C-A1818AAD45F5";
	setAttr ".oc" -type "float3" 0 0 1 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "LControlsMaterialSG";
	rename -uid "AA24DB0C-4EC5-C222-4387-A28235F95F4F";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "7C22E8B2-4216-CFDB-AC4E-22B76CDC8F60";
createNode surfaceShader -n "MControlsMaterial";
	rename -uid "8D7D5041-4EDB-66D9-8BC4-05B8B4B638E5";
	setAttr ".oc" -type "float3" 1 1 0 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "MControlsMaterialSG";
	rename -uid "30D2B4BE-4E68-FB72-B31E-BF98CBE0E649";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "490478E9-46E5-F408-B3CE-3C800A2647A9";
createNode surfaceShader -n "RControlsMaterial";
	rename -uid "0193B968-4590-296B-4BA7-69AAFC3D3E2E";
	setAttr ".oc" -type "float3" 1 0 0 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "RControlsMaterialSG";
	rename -uid "6513D797-4383-2467-CA43-F19447D50797";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "FD22A558-4B28-A33C-A6EC-349BE69D748E";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "82042D94-4821-CCF1-ED54-0CB46AD7796F";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -421.42855468250531 -324.99998708566085 ;
	setAttr ".tgi[0].vh" -type "double2" 421.42855468250531 323.80951094248991 ;
	setAttr -s 118 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[0].y" 3365.71435546875;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 745.71429443359375;
	setAttr ".tgi[0].ni[1].y" 2628.571533203125;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[2].y" 2820;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 745.71429443359375;
	setAttr ".tgi[0].ni[3].y" 3545.71435546875;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 745.71429443359375;
	setAttr ".tgi[0].ni[4].y" 2527.142822265625;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 1438.5714111328125;
	setAttr ".tgi[0].ni[5].y" 664.28570556640625;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 745.71429443359375;
	setAttr ".tgi[0].ni[6].y" 1397.142822265625;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 745.71429443359375;
	setAttr ".tgi[0].ni[7].y" 1670;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 1438.5714111328125;
	setAttr ".tgi[0].ni[8].y" 461.42855834960938;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[9].y" 2978.571533203125;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" -1545.7142333984375;
	setAttr ".tgi[0].ni[10].y" 4192.85693359375;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 1438.5714111328125;
	setAttr ".tgi[0].ni[11].y" -341.42855834960938;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[12].y" 2751.428466796875;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[13].y" -3365.71435546875;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 1438.5714111328125;
	setAttr ".tgi[0].ni[14].y" -601.4285888671875;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" -2467.142822265625;
	setAttr ".tgi[0].ni[15].y" 4950;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[16].y" 2535.71435546875;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[17].y" -3872.857177734375;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[18].y" 2434.28564453125;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[19].y" -438.57144165039063;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[20].y" 2274.28564453125;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" -2467.142822265625;
	setAttr ".tgi[0].ni[21].y" 4848.5712890625;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[22].y" 2172.857177734375;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 1438.5714111328125;
	setAttr ".tgi[0].ni[23].y" -2264.28564453125;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[24].y" -3264.28564453125;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 1438.5714111328125;
	setAttr ".tgi[0].ni[25].y" 562.85711669921875;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[26].y" -3467.142822265625;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[27].y" -3974.28564453125;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[28].y" 411.42855834960938;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[29].y" 2490;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 438.57144165039063;
	setAttr ".tgi[0].ni[30].y" 1005.7142944335938;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 1438.5714111328125;
	setAttr ".tgi[0].ni[31].y" -1090;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[32].y" 1761.4285888671875;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[33].y" 1032.857177734375;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" -550;
	setAttr ".tgi[0].ni[34].y" 4097.14306640625;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[35].y" -4075.71435546875;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" -2160;
	setAttr ".tgi[0].ni[36].y" 4717.14306640625;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 1438.5714111328125;
	setAttr ".tgi[0].ni[37].y" -125.71428680419922;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 438.57144165039063;
	setAttr ".tgi[0].ni[38].y" 1735.7142333984375;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 1438.5714111328125;
	setAttr ".tgi[0].ni[39].y" -760;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 438.57144165039063;
	setAttr ".tgi[0].ni[40].y" 1894.2857666015625;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 745.71429443359375;
	setAttr ".tgi[0].ni[41].y" 930;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" 131.42857360839844;
	setAttr ".tgi[0].ni[42].y" 2247.142822265625;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[43].y" 830;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[44].y" 1640;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 1438.5714111328125;
	setAttr ".tgi[0].ni[45].y" 1421.4285888671875;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[46].y" -4380;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[47].y" -1694.2857666015625;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[48].y" 917.14288330078125;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[49].y" 1305.7142333984375;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[50].y" -20;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[51].y" -1592.857177734375;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" -931.4285888671875;
	setAttr ".tgi[0].ni[52].y" 3214.28564453125;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" 1438.5714111328125;
	setAttr ".tgi[0].ni[53].y" -2752.857177734375;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[54].y" 530;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[55].y" -3568.571533203125;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[56].y" 2014.2857666015625;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 745.71429443359375;
	setAttr ".tgi[0].ni[57].y" 44.285713195800781;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[58].y" -1967.142822265625;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" 745.71429443359375;
	setAttr ".tgi[0].ni[59].y" -171.42857360839844;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[60].y" -4481.4287109375;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[61].y" 200;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[62].y" -3670;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" 1438.5714111328125;
	setAttr ".tgi[0].ni[63].y" -442.85714721679688;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[64].y" -4684.28564453125;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" 1438.5714111328125;
	setAttr ".tgi[0].ni[65].y" -1991.4285888671875;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" -550;
	setAttr ".tgi[0].ni[66].y" 3824.28564453125;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[67].y" -72.857139587402344;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[68].y" 512.85711669921875;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" 131.42857360839844;
	setAttr ".tgi[0].ni[69].y" 2520;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[70].y" -288.57144165039063;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[71].y" 3655.71435546875;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[72].y" -597.14288330078125;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[73].y" -504.28570556640625;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" -550;
	setAttr ".tgi[0].ni[74].y" 3608.571533203125;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[75].y" -662.85711669921875;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" -2467.142822265625;
	setAttr ".tgi[0].ni[76].y" 4747.14306640625;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" -1545.7142333984375;
	setAttr ".tgi[0].ni[77].y" 3852.857177734375;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" -175.71427917480469;
	setAttr ".tgi[0].ni[78].y" 2960;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" 1438.5714111328125;
	setAttr ".tgi[0].ni[79].y" -2480;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[80].y" 931.4285888671875;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[81].y" -1050;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" -2467.142822265625;
	setAttr ".tgi[0].ni[82].y" 4645.71435546875;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[83].y" 252.85714721679688;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[84].y" -1265.7142333984375;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[85].y" -1367.142822265625;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[86].y" -4785.71435546875;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[87].y" -1468.5714111328125;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" -1545.7142333984375;
	setAttr ".tgi[0].ni[88].y" 3954.28564453125;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" 745.71429443359375;
	setAttr ".tgi[0].ni[89].y" -501.42855834960938;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[90].y" 1855.7142333984375;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[91].y" -1741.4285888671875;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" -931.4285888671875;
	setAttr ".tgi[0].ni[92].y" 2884.28564453125;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[93].y" 671.4285888671875;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[94].y" -1957.142822265625;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[95].y" -337.14285278320313;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[96].y" -2115.71435546875;
	setAttr ".tgi[0].ni[96].nvs" 18304;
	setAttr ".tgi[0].ni[97].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[97].y" -121.42857360839844;
	setAttr ".tgi[0].ni[97].nvs" 18304;
	setAttr ".tgi[0].ni[98].x" 1438.5714111328125;
	setAttr ".tgi[0].ni[98].y" -3254.28564453125;
	setAttr ".tgi[0].ni[98].nvs" 18304;
	setAttr ".tgi[0].ni[99].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[99].y" -755.71429443359375;
	setAttr ".tgi[0].ni[99].nvs" 18304;
	setAttr ".tgi[0].ni[100].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[100].y" -1218.5714111328125;
	setAttr ".tgi[0].ni[100].nvs" 18304;
	setAttr ".tgi[0].ni[101].x" -2467.142822265625;
	setAttr ".tgi[0].ni[101].y" 4488.5712890625;
	setAttr ".tgi[0].ni[101].nvs" 18304;
	setAttr ".tgi[0].ni[102].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[102].y" -1060;
	setAttr ".tgi[0].ni[102].nvs" 18304;
	setAttr ".tgi[0].ni[103].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[103].y" -3771.428466796875;
	setAttr ".tgi[0].ni[103].nvs" 18304;
	setAttr ".tgi[0].ni[104].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[104].y" -1434.2857666015625;
	setAttr ".tgi[0].ni[104].nvs" 18304;
	setAttr ".tgi[0].ni[105].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[105].y" -2617.142822265625;
	setAttr ".tgi[0].ni[105].nvs" 18304;
	setAttr ".tgi[0].ni[106].x" -1238.5714111328125;
	setAttr ".tgi[0].ni[106].y" 2982.857177734375;
	setAttr ".tgi[0].ni[106].nvs" 18304;
	setAttr ".tgi[0].ni[107].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[107].y" -4278.5712890625;
	setAttr ".tgi[0].ni[107].nvs" 18304;
	setAttr ".tgi[0].ni[108].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[108].y" -857.14288330078125;
	setAttr ".tgi[0].ni[108].nvs" 18304;
	setAttr ".tgi[0].ni[109].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[109].y" -4887.14306640625;
	setAttr ".tgi[0].ni[109].nvs" 18304;
	setAttr ".tgi[0].ni[110].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[110].y" -2832.857177734375;
	setAttr ".tgi[0].ni[110].nvs" 18304;
	setAttr ".tgi[0].ni[111].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[111].y" -4582.85693359375;
	setAttr ".tgi[0].ni[111].nvs" 18304;
	setAttr ".tgi[0].ni[112].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[112].y" -2934.28564453125;
	setAttr ".tgi[0].ni[112].nvs" 18304;
	setAttr ".tgi[0].ni[113].x" -175.71427917480469;
	setAttr ".tgi[0].ni[113].y" 2572.857177734375;
	setAttr ".tgi[0].ni[113].nvs" 18304;
	setAttr ".tgi[0].ni[114].x" -1852.857177734375;
	setAttr ".tgi[0].ni[114].y" 4394.28564453125;
	setAttr ".tgi[0].ni[114].nvs" 18304;
	setAttr ".tgi[0].ni[115].x" 1131.4285888671875;
	setAttr ".tgi[0].ni[115].y" -958.5714111328125;
	setAttr ".tgi[0].ni[115].nvs" 18304;
	setAttr ".tgi[0].ni[116].x" 1848.5714111328125;
	setAttr ".tgi[0].ni[116].y" -4177.14306640625;
	setAttr ".tgi[0].ni[116].nvs" 18304;
	setAttr ".tgi[0].ni[117].x" -931.4285888671875;
	setAttr ".tgi[0].ni[117].y" 3445.71435546875;
	setAttr ".tgi[0].ni[117].nvs" 18304;
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
connectAttr "Spine_Spine_M_JNT_parentConstraint1.ctx" "Spine_Spine_M_JNT.tx";
connectAttr "Spine_Spine_M_JNT_parentConstraint1.cty" "Spine_Spine_M_JNT.ty";
connectAttr "Spine_Spine_M_JNT_parentConstraint1.ctz" "Spine_Spine_M_JNT.tz";
connectAttr "Spine_Spine_M_JNT_parentConstraint1.crx" "Spine_Spine_M_JNT.rx";
connectAttr "Spine_Spine_M_JNT_parentConstraint1.cry" "Spine_Spine_M_JNT.ry";
connectAttr "Spine_Spine_M_JNT_parentConstraint1.crz" "Spine_Spine_M_JNT.rz";
connectAttr "Joint_Disp.di" "Spine_Spine_M_JNT.do";
connectAttr "Spine_Limb_M_NODE.joints" "Spine_Spine_M_JNT.limb";
connectAttr "Spine_Spine_M_JNT.s" "Neck_Neck_M_JNT.is";
connectAttr "Neck_Neck_M_JNT_parentConstraint1.ctx" "Neck_Neck_M_JNT.tx";
connectAttr "Neck_Neck_M_JNT_parentConstraint1.cty" "Neck_Neck_M_JNT.ty";
connectAttr "Neck_Neck_M_JNT_parentConstraint1.ctz" "Neck_Neck_M_JNT.tz";
connectAttr "Neck_Neck_M_JNT_parentConstraint1.crx" "Neck_Neck_M_JNT.rx";
connectAttr "Neck_Neck_M_JNT_parentConstraint1.cry" "Neck_Neck_M_JNT.ry";
connectAttr "Neck_Neck_M_JNT_parentConstraint1.crz" "Neck_Neck_M_JNT.rz";
connectAttr "Joint_Disp.di" "Neck_Neck_M_JNT.do";
connectAttr "Neck_Limb_M_NODE.joints" "Neck_Neck_M_JNT.limb";
connectAttr "Neck_Neck_M_JNT.s" "Head_Head1_M_JNT.is";
connectAttr "Head_Head1_M_JNT_parentConstraint1.ctx" "Head_Head1_M_JNT.tx";
connectAttr "Head_Head1_M_JNT_parentConstraint1.cty" "Head_Head1_M_JNT.ty";
connectAttr "Head_Head1_M_JNT_parentConstraint1.ctz" "Head_Head1_M_JNT.tz";
connectAttr "Head_Head1_M_JNT_parentConstraint1.crx" "Head_Head1_M_JNT.rx";
connectAttr "Head_Head1_M_JNT_parentConstraint1.cry" "Head_Head1_M_JNT.ry";
connectAttr "Head_Head1_M_JNT_parentConstraint1.crz" "Head_Head1_M_JNT.rz";
connectAttr "Joint_Disp.di" "Head_Head1_M_JNT.do";
connectAttr "Head_Limb_M_NODE.joints" "Head_Head1_M_JNT.limb";
connectAttr "Head_Head1_M_JNT.s" "Head_Head2_M_JNT.is";
connectAttr "Head_Head2_M_JNT_parentConstraint1.ctx" "Head_Head2_M_JNT.tx";
connectAttr "Head_Head2_M_JNT_parentConstraint1.cty" "Head_Head2_M_JNT.ty";
connectAttr "Head_Head2_M_JNT_parentConstraint1.ctz" "Head_Head2_M_JNT.tz";
connectAttr "Head_Head2_M_JNT_parentConstraint1.crx" "Head_Head2_M_JNT.rx";
connectAttr "Head_Head2_M_JNT_parentConstraint1.cry" "Head_Head2_M_JNT.ry";
connectAttr "Head_Head2_M_JNT_parentConstraint1.crz" "Head_Head2_M_JNT.rz";
connectAttr "Joint_Disp.di" "Head_Head2_M_JNT.do";
connectAttr "Head_Limb_M_NODE.joints" "Head_Head2_M_JNT.limb";
connectAttr "Head_Head2_M_JNT.ro" "Head_Head2_M_JNT_parentConstraint1.cro";
connectAttr "Head_Head2_M_JNT.pim" "Head_Head2_M_JNT_parentConstraint1.cpim";
connectAttr "Head_Head2_M_JNT.rp" "Head_Head2_M_JNT_parentConstraint1.crp";
connectAttr "Head_Head2_M_JNT.rpt" "Head_Head2_M_JNT_parentConstraint1.crt";
connectAttr "Head_Head2_M_JNT.jo" "Head_Head2_M_JNT_parentConstraint1.cjo";
connectAttr "Head2_Joint_M_CTR1.t" "Head_Head2_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Head2_Joint_M_CTR1.rp" "Head_Head2_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Head2_Joint_M_CTR1.rpt" "Head_Head2_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Head2_Joint_M_CTR1.r" "Head_Head2_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Head2_Joint_M_CTR1.ro" "Head_Head2_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Head2_Joint_M_CTR1.s" "Head_Head2_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Head2_Joint_M_CTR1.pm" "Head_Head2_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Head_Head2_M_JNT_parentConstraint1.w0" "Head_Head2_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Head_Head1_M_JNT.s" "Jaw_Jaw1_M_JNT.is";
connectAttr "Jaw_Jaw1_M_JNT_parentConstraint1.ctx" "Jaw_Jaw1_M_JNT.tx";
connectAttr "Jaw_Jaw1_M_JNT_parentConstraint1.cty" "Jaw_Jaw1_M_JNT.ty";
connectAttr "Jaw_Jaw1_M_JNT_parentConstraint1.ctz" "Jaw_Jaw1_M_JNT.tz";
connectAttr "Jaw_Jaw1_M_JNT_parentConstraint1.crx" "Jaw_Jaw1_M_JNT.rx";
connectAttr "Jaw_Jaw1_M_JNT_parentConstraint1.cry" "Jaw_Jaw1_M_JNT.ry";
connectAttr "Jaw_Jaw1_M_JNT_parentConstraint1.crz" "Jaw_Jaw1_M_JNT.rz";
connectAttr "Joint_Disp.di" "Jaw_Jaw1_M_JNT.do";
connectAttr "Jaw_Limb_M_NODE.joints" "Jaw_Jaw1_M_JNT.limb";
connectAttr "Jaw_Jaw1_M_JNT.s" "Jaw_Jaw2_M_JNT.is";
connectAttr "Jaw_Jaw2_M_JNT_parentConstraint1.ctx" "Jaw_Jaw2_M_JNT.tx";
connectAttr "Jaw_Jaw2_M_JNT_parentConstraint1.cty" "Jaw_Jaw2_M_JNT.ty";
connectAttr "Jaw_Jaw2_M_JNT_parentConstraint1.ctz" "Jaw_Jaw2_M_JNT.tz";
connectAttr "Jaw_Jaw2_M_JNT_parentConstraint1.crx" "Jaw_Jaw2_M_JNT.rx";
connectAttr "Jaw_Jaw2_M_JNT_parentConstraint1.cry" "Jaw_Jaw2_M_JNT.ry";
connectAttr "Jaw_Jaw2_M_JNT_parentConstraint1.crz" "Jaw_Jaw2_M_JNT.rz";
connectAttr "Joint_Disp.di" "Jaw_Jaw2_M_JNT.do";
connectAttr "Jaw_Limb_M_NODE.joints" "Jaw_Jaw2_M_JNT.limb";
connectAttr "Jaw_Jaw2_M_JNT.ro" "Jaw_Jaw2_M_JNT_parentConstraint1.cro";
connectAttr "Jaw_Jaw2_M_JNT.pim" "Jaw_Jaw2_M_JNT_parentConstraint1.cpim";
connectAttr "Jaw_Jaw2_M_JNT.rp" "Jaw_Jaw2_M_JNT_parentConstraint1.crp";
connectAttr "Jaw_Jaw2_M_JNT.rpt" "Jaw_Jaw2_M_JNT_parentConstraint1.crt";
connectAttr "Jaw_Jaw2_M_JNT.jo" "Jaw_Jaw2_M_JNT_parentConstraint1.cjo";
connectAttr "Jaw2_Joint_M_CTR1.t" "Jaw_Jaw2_M_JNT_parentConstraint1.tg[0].tt";
connectAttr "Jaw2_Joint_M_CTR1.rp" "Jaw_Jaw2_M_JNT_parentConstraint1.tg[0].trp";
connectAttr "Jaw2_Joint_M_CTR1.rpt" "Jaw_Jaw2_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Jaw2_Joint_M_CTR1.r" "Jaw_Jaw2_M_JNT_parentConstraint1.tg[0].tr";
connectAttr "Jaw2_Joint_M_CTR1.ro" "Jaw_Jaw2_M_JNT_parentConstraint1.tg[0].tro";
connectAttr "Jaw2_Joint_M_CTR1.s" "Jaw_Jaw2_M_JNT_parentConstraint1.tg[0].ts";
connectAttr "Jaw2_Joint_M_CTR1.pm" "Jaw_Jaw2_M_JNT_parentConstraint1.tg[0].tpm";
connectAttr "Jaw_Jaw2_M_JNT_parentConstraint1.w0" "Jaw_Jaw2_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Jaw_Jaw1_M_JNT.ro" "Jaw_Jaw1_M_JNT_parentConstraint1.cro";
connectAttr "Jaw_Jaw1_M_JNT.pim" "Jaw_Jaw1_M_JNT_parentConstraint1.cpim";
connectAttr "Jaw_Jaw1_M_JNT.rp" "Jaw_Jaw1_M_JNT_parentConstraint1.crp";
connectAttr "Jaw_Jaw1_M_JNT.rpt" "Jaw_Jaw1_M_JNT_parentConstraint1.crt";
connectAttr "Jaw_Jaw1_M_JNT.jo" "Jaw_Jaw1_M_JNT_parentConstraint1.cjo";
connectAttr "Jaw1_Joint_M_CTR0.t" "Jaw_Jaw1_M_JNT_parentConstraint1.tg[0].tt";
connectAttr "Jaw1_Joint_M_CTR0.rp" "Jaw_Jaw1_M_JNT_parentConstraint1.tg[0].trp";
connectAttr "Jaw1_Joint_M_CTR0.rpt" "Jaw_Jaw1_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Jaw1_Joint_M_CTR0.r" "Jaw_Jaw1_M_JNT_parentConstraint1.tg[0].tr";
connectAttr "Jaw1_Joint_M_CTR0.ro" "Jaw_Jaw1_M_JNT_parentConstraint1.tg[0].tro";
connectAttr "Jaw1_Joint_M_CTR0.s" "Jaw_Jaw1_M_JNT_parentConstraint1.tg[0].ts";
connectAttr "Jaw1_Joint_M_CTR0.pm" "Jaw_Jaw1_M_JNT_parentConstraint1.tg[0].tpm";
connectAttr "Jaw_Jaw1_M_JNT_parentConstraint1.w0" "Jaw_Jaw1_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Head_Head1_M_JNT.s" "UpperFace_UF1_M_JNT.is";
connectAttr "UpperFace_UF1_M_JNT_parentConstraint1.ctx" "UpperFace_UF1_M_JNT.tx"
		;
connectAttr "UpperFace_UF1_M_JNT_parentConstraint1.cty" "UpperFace_UF1_M_JNT.ty"
		;
connectAttr "UpperFace_UF1_M_JNT_parentConstraint1.ctz" "UpperFace_UF1_M_JNT.tz"
		;
connectAttr "UpperFace_UF1_M_JNT_parentConstraint1.crx" "UpperFace_UF1_M_JNT.rx"
		;
connectAttr "UpperFace_UF1_M_JNT_parentConstraint1.cry" "UpperFace_UF1_M_JNT.ry"
		;
connectAttr "UpperFace_UF1_M_JNT_parentConstraint1.crz" "UpperFace_UF1_M_JNT.rz"
		;
connectAttr "Joint_Disp.di" "UpperFace_UF1_M_JNT.do";
connectAttr "UpperFace_Limb_M_NODE.joints" "UpperFace_UF1_M_JNT.limb";
connectAttr "UpperFace_UF1_M_JNT.s" "FaceBrow_Brow1_L_JNT.is";
connectAttr "FaceBrow_Brow1_L_JNT_parentConstraint1.ctx" "FaceBrow_Brow1_L_JNT.tx"
		;
connectAttr "FaceBrow_Brow1_L_JNT_parentConstraint1.cty" "FaceBrow_Brow1_L_JNT.ty"
		;
connectAttr "FaceBrow_Brow1_L_JNT_parentConstraint1.ctz" "FaceBrow_Brow1_L_JNT.tz"
		;
connectAttr "FaceBrow_Brow1_L_JNT_parentConstraint1.crx" "FaceBrow_Brow1_L_JNT.rx"
		;
connectAttr "FaceBrow_Brow1_L_JNT_parentConstraint1.cry" "FaceBrow_Brow1_L_JNT.ry"
		;
connectAttr "FaceBrow_Brow1_L_JNT_parentConstraint1.crz" "FaceBrow_Brow1_L_JNT.rz"
		;
connectAttr "Joint_Disp.di" "FaceBrow_Brow1_L_JNT.do";
connectAttr "FaceBrow_Limb_L_NODE.joints" "FaceBrow_Brow1_L_JNT.limb";
connectAttr "FaceBrow_Brow1_L_JNT.ro" "FaceBrow_Brow1_L_JNT_parentConstraint1.cro"
		;
connectAttr "FaceBrow_Brow1_L_JNT.pim" "FaceBrow_Brow1_L_JNT_parentConstraint1.cpim"
		;
connectAttr "FaceBrow_Brow1_L_JNT.rp" "FaceBrow_Brow1_L_JNT_parentConstraint1.crp"
		;
connectAttr "FaceBrow_Brow1_L_JNT.rpt" "FaceBrow_Brow1_L_JNT_parentConstraint1.crt"
		;
connectAttr "FaceBrow_Brow1_L_JNT.jo" "FaceBrow_Brow1_L_JNT_parentConstraint1.cjo"
		;
connectAttr "Brow1_Joint_L_CTR0.t" "FaceBrow_Brow1_L_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Brow1_Joint_L_CTR0.rp" "FaceBrow_Brow1_L_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Brow1_Joint_L_CTR0.rpt" "FaceBrow_Brow1_L_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Brow1_Joint_L_CTR0.r" "FaceBrow_Brow1_L_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Brow1_Joint_L_CTR0.ro" "FaceBrow_Brow1_L_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Brow1_Joint_L_CTR0.s" "FaceBrow_Brow1_L_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Brow1_Joint_L_CTR0.pm" "FaceBrow_Brow1_L_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "FaceBrow_Brow1_L_JNT_parentConstraint1.w0" "FaceBrow_Brow1_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "UpperFace_UF1_M_JNT.s" "FaceBrow_Brow2_L_JNT.is";
connectAttr "FaceBrow_Brow2_L_JNT_parentConstraint1.ctx" "FaceBrow_Brow2_L_JNT.tx"
		;
connectAttr "FaceBrow_Brow2_L_JNT_parentConstraint1.cty" "FaceBrow_Brow2_L_JNT.ty"
		;
connectAttr "FaceBrow_Brow2_L_JNT_parentConstraint1.ctz" "FaceBrow_Brow2_L_JNT.tz"
		;
connectAttr "FaceBrow_Brow2_L_JNT_parentConstraint1.crx" "FaceBrow_Brow2_L_JNT.rx"
		;
connectAttr "FaceBrow_Brow2_L_JNT_parentConstraint1.cry" "FaceBrow_Brow2_L_JNT.ry"
		;
connectAttr "FaceBrow_Brow2_L_JNT_parentConstraint1.crz" "FaceBrow_Brow2_L_JNT.rz"
		;
connectAttr "Joint_Disp.di" "FaceBrow_Brow2_L_JNT.do";
connectAttr "FaceBrow_Limb_L_NODE.joints" "FaceBrow_Brow2_L_JNT.limb";
connectAttr "FaceBrow_Brow2_L_JNT.ro" "FaceBrow_Brow2_L_JNT_parentConstraint1.cro"
		;
connectAttr "FaceBrow_Brow2_L_JNT.pim" "FaceBrow_Brow2_L_JNT_parentConstraint1.cpim"
		;
connectAttr "FaceBrow_Brow2_L_JNT.rp" "FaceBrow_Brow2_L_JNT_parentConstraint1.crp"
		;
connectAttr "FaceBrow_Brow2_L_JNT.rpt" "FaceBrow_Brow2_L_JNT_parentConstraint1.crt"
		;
connectAttr "FaceBrow_Brow2_L_JNT.jo" "FaceBrow_Brow2_L_JNT_parentConstraint1.cjo"
		;
connectAttr "Brow2_Joint_L_CTR1.t" "FaceBrow_Brow2_L_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Brow2_Joint_L_CTR1.rp" "FaceBrow_Brow2_L_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Brow2_Joint_L_CTR1.rpt" "FaceBrow_Brow2_L_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Brow2_Joint_L_CTR1.r" "FaceBrow_Brow2_L_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Brow2_Joint_L_CTR1.ro" "FaceBrow_Brow2_L_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Brow2_Joint_L_CTR1.s" "FaceBrow_Brow2_L_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Brow2_Joint_L_CTR1.pm" "FaceBrow_Brow2_L_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "FaceBrow_Brow2_L_JNT_parentConstraint1.w0" "FaceBrow_Brow2_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "UpperFace_UF1_M_JNT.s" "FaceBrow_Brow3_L_JNT.is";
connectAttr "FaceBrow_Brow3_L_JNT_parentConstraint1.ctx" "FaceBrow_Brow3_L_JNT.tx"
		;
connectAttr "FaceBrow_Brow3_L_JNT_parentConstraint1.cty" "FaceBrow_Brow3_L_JNT.ty"
		;
connectAttr "FaceBrow_Brow3_L_JNT_parentConstraint1.ctz" "FaceBrow_Brow3_L_JNT.tz"
		;
connectAttr "FaceBrow_Brow3_L_JNT_parentConstraint1.crx" "FaceBrow_Brow3_L_JNT.rx"
		;
connectAttr "FaceBrow_Brow3_L_JNT_parentConstraint1.cry" "FaceBrow_Brow3_L_JNT.ry"
		;
connectAttr "FaceBrow_Brow3_L_JNT_parentConstraint1.crz" "FaceBrow_Brow3_L_JNT.rz"
		;
connectAttr "Joint_Disp.di" "FaceBrow_Brow3_L_JNT.do";
connectAttr "FaceBrow_Limb_L_NODE.joints" "FaceBrow_Brow3_L_JNT.limb";
connectAttr "FaceBrow_Brow3_L_JNT.ro" "FaceBrow_Brow3_L_JNT_parentConstraint1.cro"
		;
connectAttr "FaceBrow_Brow3_L_JNT.pim" "FaceBrow_Brow3_L_JNT_parentConstraint1.cpim"
		;
connectAttr "FaceBrow_Brow3_L_JNT.rp" "FaceBrow_Brow3_L_JNT_parentConstraint1.crp"
		;
connectAttr "FaceBrow_Brow3_L_JNT.rpt" "FaceBrow_Brow3_L_JNT_parentConstraint1.crt"
		;
connectAttr "FaceBrow_Brow3_L_JNT.jo" "FaceBrow_Brow3_L_JNT_parentConstraint1.cjo"
		;
connectAttr "Brow3_Joint_L_CTR2.t" "FaceBrow_Brow3_L_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Brow3_Joint_L_CTR2.rp" "FaceBrow_Brow3_L_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Brow3_Joint_L_CTR2.rpt" "FaceBrow_Brow3_L_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Brow3_Joint_L_CTR2.r" "FaceBrow_Brow3_L_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Brow3_Joint_L_CTR2.ro" "FaceBrow_Brow3_L_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Brow3_Joint_L_CTR2.s" "FaceBrow_Brow3_L_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Brow3_Joint_L_CTR2.pm" "FaceBrow_Brow3_L_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "FaceBrow_Brow3_L_JNT_parentConstraint1.w0" "FaceBrow_Brow3_L_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "UpperFace_UF1_M_JNT.s" "FaceBrow_Brow1_R_JNT.is";
connectAttr "Joint_Disp.di" "FaceBrow_Brow1_R_JNT.do";
connectAttr "FaceBrow_Limb_R_NODE.joints" "FaceBrow_Brow1_R_JNT.limb";
connectAttr "FaceBrow_Brow1_R_JNT_parentConstraint1.ctx" "FaceBrow_Brow1_R_JNT.tx"
		;
connectAttr "FaceBrow_Brow1_R_JNT_parentConstraint1.cty" "FaceBrow_Brow1_R_JNT.ty"
		;
connectAttr "FaceBrow_Brow1_R_JNT_parentConstraint1.ctz" "FaceBrow_Brow1_R_JNT.tz"
		;
connectAttr "FaceBrow_Brow1_R_JNT_parentConstraint1.crx" "FaceBrow_Brow1_R_JNT.rx"
		;
connectAttr "FaceBrow_Brow1_R_JNT_parentConstraint1.cry" "FaceBrow_Brow1_R_JNT.ry"
		;
connectAttr "FaceBrow_Brow1_R_JNT_parentConstraint1.crz" "FaceBrow_Brow1_R_JNT.rz"
		;
connectAttr "FaceBrow_Brow1_R_JNT.ro" "FaceBrow_Brow1_R_JNT_parentConstraint1.cro"
		;
connectAttr "FaceBrow_Brow1_R_JNT.pim" "FaceBrow_Brow1_R_JNT_parentConstraint1.cpim"
		;
connectAttr "FaceBrow_Brow1_R_JNT.rp" "FaceBrow_Brow1_R_JNT_parentConstraint1.crp"
		;
connectAttr "FaceBrow_Brow1_R_JNT.rpt" "FaceBrow_Brow1_R_JNT_parentConstraint1.crt"
		;
connectAttr "FaceBrow_Brow1_R_JNT.jo" "FaceBrow_Brow1_R_JNT_parentConstraint1.cjo"
		;
connectAttr "Brow1_Joint_R_CTR0.t" "FaceBrow_Brow1_R_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Brow1_Joint_R_CTR0.rp" "FaceBrow_Brow1_R_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Brow1_Joint_R_CTR0.rpt" "FaceBrow_Brow1_R_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Brow1_Joint_R_CTR0.r" "FaceBrow_Brow1_R_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Brow1_Joint_R_CTR0.ro" "FaceBrow_Brow1_R_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Brow1_Joint_R_CTR0.s" "FaceBrow_Brow1_R_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Brow1_Joint_R_CTR0.pm" "FaceBrow_Brow1_R_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "FaceBrow_Brow1_R_JNT_parentConstraint1.w0" "FaceBrow_Brow1_R_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "UpperFace_UF1_M_JNT.s" "FaceBrow_Brow2_R_JNT.is";
connectAttr "Joint_Disp.di" "FaceBrow_Brow2_R_JNT.do";
connectAttr "FaceBrow_Limb_R_NODE.joints" "FaceBrow_Brow2_R_JNT.limb";
connectAttr "FaceBrow_Brow2_R_JNT_parentConstraint1.ctx" "FaceBrow_Brow2_R_JNT.tx"
		;
connectAttr "FaceBrow_Brow2_R_JNT_parentConstraint1.cty" "FaceBrow_Brow2_R_JNT.ty"
		;
connectAttr "FaceBrow_Brow2_R_JNT_parentConstraint1.ctz" "FaceBrow_Brow2_R_JNT.tz"
		;
connectAttr "FaceBrow_Brow2_R_JNT_parentConstraint1.crx" "FaceBrow_Brow2_R_JNT.rx"
		;
connectAttr "FaceBrow_Brow2_R_JNT_parentConstraint1.cry" "FaceBrow_Brow2_R_JNT.ry"
		;
connectAttr "FaceBrow_Brow2_R_JNT_parentConstraint1.crz" "FaceBrow_Brow2_R_JNT.rz"
		;
connectAttr "FaceBrow_Brow2_R_JNT.ro" "FaceBrow_Brow2_R_JNT_parentConstraint1.cro"
		;
connectAttr "FaceBrow_Brow2_R_JNT.pim" "FaceBrow_Brow2_R_JNT_parentConstraint1.cpim"
		;
connectAttr "FaceBrow_Brow2_R_JNT.rp" "FaceBrow_Brow2_R_JNT_parentConstraint1.crp"
		;
connectAttr "FaceBrow_Brow2_R_JNT.rpt" "FaceBrow_Brow2_R_JNT_parentConstraint1.crt"
		;
connectAttr "FaceBrow_Brow2_R_JNT.jo" "FaceBrow_Brow2_R_JNT_parentConstraint1.cjo"
		;
connectAttr "Brow2_Joint_R_CTR1.t" "FaceBrow_Brow2_R_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Brow2_Joint_R_CTR1.rp" "FaceBrow_Brow2_R_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Brow2_Joint_R_CTR1.rpt" "FaceBrow_Brow2_R_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Brow2_Joint_R_CTR1.r" "FaceBrow_Brow2_R_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Brow2_Joint_R_CTR1.ro" "FaceBrow_Brow2_R_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Brow2_Joint_R_CTR1.s" "FaceBrow_Brow2_R_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Brow2_Joint_R_CTR1.pm" "FaceBrow_Brow2_R_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "FaceBrow_Brow2_R_JNT_parentConstraint1.w0" "FaceBrow_Brow2_R_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "UpperFace_UF1_M_JNT.s" "FaceBrow_Brow3_R_JNT.is";
connectAttr "Joint_Disp.di" "FaceBrow_Brow3_R_JNT.do";
connectAttr "FaceBrow_Limb_R_NODE.joints" "FaceBrow_Brow3_R_JNT.limb";
connectAttr "FaceBrow_Brow3_R_JNT_parentConstraint1.ctx" "FaceBrow_Brow3_R_JNT.tx"
		;
connectAttr "FaceBrow_Brow3_R_JNT_parentConstraint1.cty" "FaceBrow_Brow3_R_JNT.ty"
		;
connectAttr "FaceBrow_Brow3_R_JNT_parentConstraint1.ctz" "FaceBrow_Brow3_R_JNT.tz"
		;
connectAttr "FaceBrow_Brow3_R_JNT_parentConstraint1.crx" "FaceBrow_Brow3_R_JNT.rx"
		;
connectAttr "FaceBrow_Brow3_R_JNT_parentConstraint1.cry" "FaceBrow_Brow3_R_JNT.ry"
		;
connectAttr "FaceBrow_Brow3_R_JNT_parentConstraint1.crz" "FaceBrow_Brow3_R_JNT.rz"
		;
connectAttr "FaceBrow_Brow3_R_JNT.ro" "FaceBrow_Brow3_R_JNT_parentConstraint1.cro"
		;
connectAttr "FaceBrow_Brow3_R_JNT.pim" "FaceBrow_Brow3_R_JNT_parentConstraint1.cpim"
		;
connectAttr "FaceBrow_Brow3_R_JNT.rp" "FaceBrow_Brow3_R_JNT_parentConstraint1.crp"
		;
connectAttr "FaceBrow_Brow3_R_JNT.rpt" "FaceBrow_Brow3_R_JNT_parentConstraint1.crt"
		;
connectAttr "FaceBrow_Brow3_R_JNT.jo" "FaceBrow_Brow3_R_JNT_parentConstraint1.cjo"
		;
connectAttr "Brow3_Joint_R_CTR2.t" "FaceBrow_Brow3_R_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Brow3_Joint_R_CTR2.rp" "FaceBrow_Brow3_R_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Brow3_Joint_R_CTR2.rpt" "FaceBrow_Brow3_R_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Brow3_Joint_R_CTR2.r" "FaceBrow_Brow3_R_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Brow3_Joint_R_CTR2.ro" "FaceBrow_Brow3_R_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Brow3_Joint_R_CTR2.s" "FaceBrow_Brow3_R_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Brow3_Joint_R_CTR2.pm" "FaceBrow_Brow3_R_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "FaceBrow_Brow3_R_JNT_parentConstraint1.w0" "FaceBrow_Brow3_R_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "UpperFace_UF1_M_JNT.ro" "UpperFace_UF1_M_JNT_parentConstraint1.cro"
		;
connectAttr "UpperFace_UF1_M_JNT.pim" "UpperFace_UF1_M_JNT_parentConstraint1.cpim"
		;
connectAttr "UpperFace_UF1_M_JNT.rp" "UpperFace_UF1_M_JNT_parentConstraint1.crp"
		;
connectAttr "UpperFace_UF1_M_JNT.rpt" "UpperFace_UF1_M_JNT_parentConstraint1.crt"
		;
connectAttr "UpperFace_UF1_M_JNT.jo" "UpperFace_UF1_M_JNT_parentConstraint1.cjo"
		;
connectAttr "UF1_Joint_M_CTR0.t" "UpperFace_UF1_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "UF1_Joint_M_CTR0.rp" "UpperFace_UF1_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "UF1_Joint_M_CTR0.rpt" "UpperFace_UF1_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "UF1_Joint_M_CTR0.r" "UpperFace_UF1_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "UF1_Joint_M_CTR0.ro" "UpperFace_UF1_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "UF1_Joint_M_CTR0.s" "UpperFace_UF1_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "UF1_Joint_M_CTR0.pm" "UpperFace_UF1_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "UpperFace_UF1_M_JNT_parentConstraint1.w0" "UpperFace_UF1_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Head_Head1_M_JNT.ro" "Head_Head1_M_JNT_parentConstraint1.cro";
connectAttr "Head_Head1_M_JNT.pim" "Head_Head1_M_JNT_parentConstraint1.cpim";
connectAttr "Head_Head1_M_JNT.rp" "Head_Head1_M_JNT_parentConstraint1.crp";
connectAttr "Head_Head1_M_JNT.rpt" "Head_Head1_M_JNT_parentConstraint1.crt";
connectAttr "Head_Head1_M_JNT.jo" "Head_Head1_M_JNT_parentConstraint1.cjo";
connectAttr "Head1_Joint_M_CTR0.t" "Head_Head1_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Head1_Joint_M_CTR0.rp" "Head_Head1_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Head1_Joint_M_CTR0.rpt" "Head_Head1_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Head1_Joint_M_CTR0.r" "Head_Head1_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Head1_Joint_M_CTR0.ro" "Head_Head1_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Head1_Joint_M_CTR0.s" "Head_Head1_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Head1_Joint_M_CTR0.pm" "Head_Head1_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Head_Head1_M_JNT_parentConstraint1.w0" "Head_Head1_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Neck_Neck_M_JNT.ro" "Neck_Neck_M_JNT_parentConstraint1.cro";
connectAttr "Neck_Neck_M_JNT.pim" "Neck_Neck_M_JNT_parentConstraint1.cpim";
connectAttr "Neck_Neck_M_JNT.rp" "Neck_Neck_M_JNT_parentConstraint1.crp";
connectAttr "Neck_Neck_M_JNT.rpt" "Neck_Neck_M_JNT_parentConstraint1.crt";
connectAttr "Neck_Neck_M_JNT.jo" "Neck_Neck_M_JNT_parentConstraint1.cjo";
connectAttr "Neck_Joint_M_CTR0.t" "Neck_Neck_M_JNT_parentConstraint1.tg[0].tt";
connectAttr "Neck_Joint_M_CTR0.rp" "Neck_Neck_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Neck_Joint_M_CTR0.rpt" "Neck_Neck_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Neck_Joint_M_CTR0.r" "Neck_Neck_M_JNT_parentConstraint1.tg[0].tr";
connectAttr "Neck_Joint_M_CTR0.ro" "Neck_Neck_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Neck_Joint_M_CTR0.s" "Neck_Neck_M_JNT_parentConstraint1.tg[0].ts";
connectAttr "Neck_Joint_M_CTR0.pm" "Neck_Neck_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Neck_Neck_M_JNT_parentConstraint1.w0" "Neck_Neck_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Spine_Spine_M_JNT.ro" "Spine_Spine_M_JNT_parentConstraint1.cro";
connectAttr "Spine_Spine_M_JNT.pim" "Spine_Spine_M_JNT_parentConstraint1.cpim";
connectAttr "Spine_Spine_M_JNT.rp" "Spine_Spine_M_JNT_parentConstraint1.crp";
connectAttr "Spine_Spine_M_JNT.rpt" "Spine_Spine_M_JNT_parentConstraint1.crt";
connectAttr "Spine_Spine_M_JNT.jo" "Spine_Spine_M_JNT_parentConstraint1.cjo";
connectAttr "Spine_Joint_M_CTR0.t" "Spine_Spine_M_JNT_parentConstraint1.tg[0].tt"
		;
connectAttr "Spine_Joint_M_CTR0.rp" "Spine_Spine_M_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Spine_Joint_M_CTR0.rpt" "Spine_Spine_M_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Spine_Joint_M_CTR0.r" "Spine_Spine_M_JNT_parentConstraint1.tg[0].tr"
		;
connectAttr "Spine_Joint_M_CTR0.ro" "Spine_Spine_M_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Spine_Joint_M_CTR0.s" "Spine_Spine_M_JNT_parentConstraint1.tg[0].ts"
		;
connectAttr "Spine_Joint_M_CTR0.pm" "Spine_Spine_M_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Spine_Spine_M_JNT_parentConstraint1.w0" "Spine_Spine_M_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "TEMP_RigRoot.limbsParentGroup" "LIMBS.rigRoot";
connectAttr "TEMP_RigRoot.limbs" "UpperFace_Limb_M_NODE.rigRoot";
connectAttr "Head_Limb_M_NODE.limbChildren" "UpperFace_Limb_M_NODE.limbParent";
connectAttr "UpperFace_UF1_M_JNT.group" "UF1_Joint_M_GRP0.joint";
connectAttr "UpperFace_Limb_M_NODE.jointGroups" "UF1_Joint_M_GRP0.limb";
connectAttr "UpperFace_Limb_M_NODE.usedGroups" "UF1_Joint_M_GRP0.used";
connectAttr "UF1_Joint_M_GRP0_parentConstraint1.ctx" "UF1_Joint_M_GRP0.tx";
connectAttr "UF1_Joint_M_GRP0_parentConstraint1.cty" "UF1_Joint_M_GRP0.ty";
connectAttr "UF1_Joint_M_GRP0_parentConstraint1.ctz" "UF1_Joint_M_GRP0.tz";
connectAttr "UF1_Joint_M_GRP0_parentConstraint1.crx" "UF1_Joint_M_GRP0.rx";
connectAttr "UF1_Joint_M_GRP0_parentConstraint1.cry" "UF1_Joint_M_GRP0.ry";
connectAttr "UF1_Joint_M_GRP0_parentConstraint1.crz" "UF1_Joint_M_GRP0.rz";
connectAttr "Control_Disp.di" "UF1_Joint_M_CTR0.do";
connectAttr "UF1_Joint_M_GRP0.control" "UF1_Joint_M_CTR0.group";
connectAttr "UF1_Joint_M_GRP0.ro" "UF1_Joint_M_GRP0_parentConstraint1.cro";
connectAttr "UF1_Joint_M_GRP0.pim" "UF1_Joint_M_GRP0_parentConstraint1.cpim";
connectAttr "UF1_Joint_M_GRP0.rp" "UF1_Joint_M_GRP0_parentConstraint1.crp";
connectAttr "UF1_Joint_M_GRP0.rpt" "UF1_Joint_M_GRP0_parentConstraint1.crt";
connectAttr "Head1_Joint_M_CTR0.t" "UF1_Joint_M_GRP0_parentConstraint1.tg[0].tt"
		;
connectAttr "Head1_Joint_M_CTR0.rp" "UF1_Joint_M_GRP0_parentConstraint1.tg[0].trp"
		;
connectAttr "Head1_Joint_M_CTR0.rpt" "UF1_Joint_M_GRP0_parentConstraint1.tg[0].trt"
		;
connectAttr "Head1_Joint_M_CTR0.r" "UF1_Joint_M_GRP0_parentConstraint1.tg[0].tr"
		;
connectAttr "Head1_Joint_M_CTR0.ro" "UF1_Joint_M_GRP0_parentConstraint1.tg[0].tro"
		;
connectAttr "Head1_Joint_M_CTR0.s" "UF1_Joint_M_GRP0_parentConstraint1.tg[0].ts"
		;
connectAttr "Head1_Joint_M_CTR0.pm" "UF1_Joint_M_GRP0_parentConstraint1.tg[0].tpm"
		;
connectAttr "UF1_Joint_M_GRP0_parentConstraint1.w0" "UF1_Joint_M_GRP0_parentConstraint1.tg[0].tw"
		;
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
connectAttr "Jaw1_Joint_M_GRP0_parentConstraint1.ctx" "Jaw1_Joint_M_GRP0.tx";
connectAttr "Jaw1_Joint_M_GRP0_parentConstraint1.cty" "Jaw1_Joint_M_GRP0.ty";
connectAttr "Jaw1_Joint_M_GRP0_parentConstraint1.ctz" "Jaw1_Joint_M_GRP0.tz";
connectAttr "Jaw1_Joint_M_GRP0_parentConstraint1.crx" "Jaw1_Joint_M_GRP0.rx";
connectAttr "Jaw1_Joint_M_GRP0_parentConstraint1.cry" "Jaw1_Joint_M_GRP0.ry";
connectAttr "Jaw1_Joint_M_GRP0_parentConstraint1.crz" "Jaw1_Joint_M_GRP0.rz";
connectAttr "Control_Disp.di" "Jaw1_Joint_M_CTR0.do";
connectAttr "Jaw1_Joint_M_GRP0.control" "Jaw1_Joint_M_CTR0.group";
connectAttr "Jaw_Jaw2_M_JNT.group" "Jaw2_Joint_M_GRP1.joint";
connectAttr "Jaw_Limb_M_NODE.jointGroups" "Jaw2_Joint_M_GRP1.limb";
connectAttr "Jaw_Limb_M_NODE.usedGroups" "Jaw2_Joint_M_GRP1.used";
connectAttr "Control_Disp.di" "Jaw2_Joint_M_CTR1.do";
connectAttr "Jaw2_Joint_M_GRP1.control" "Jaw2_Joint_M_CTR1.group";
connectAttr "Jaw1_Joint_M_GRP0.ro" "Jaw1_Joint_M_GRP0_parentConstraint1.cro";
connectAttr "Jaw1_Joint_M_GRP0.pim" "Jaw1_Joint_M_GRP0_parentConstraint1.cpim";
connectAttr "Jaw1_Joint_M_GRP0.rp" "Jaw1_Joint_M_GRP0_parentConstraint1.crp";
connectAttr "Jaw1_Joint_M_GRP0.rpt" "Jaw1_Joint_M_GRP0_parentConstraint1.crt";
connectAttr "Head1_Joint_M_CTR0.t" "Jaw1_Joint_M_GRP0_parentConstraint1.tg[0].tt"
		;
connectAttr "Head1_Joint_M_CTR0.rp" "Jaw1_Joint_M_GRP0_parentConstraint1.tg[0].trp"
		;
connectAttr "Head1_Joint_M_CTR0.rpt" "Jaw1_Joint_M_GRP0_parentConstraint1.tg[0].trt"
		;
connectAttr "Head1_Joint_M_CTR0.r" "Jaw1_Joint_M_GRP0_parentConstraint1.tg[0].tr"
		;
connectAttr "Head1_Joint_M_CTR0.ro" "Jaw1_Joint_M_GRP0_parentConstraint1.tg[0].tro"
		;
connectAttr "Head1_Joint_M_CTR0.s" "Jaw1_Joint_M_GRP0_parentConstraint1.tg[0].ts"
		;
connectAttr "Head1_Joint_M_CTR0.pm" "Jaw1_Joint_M_GRP0_parentConstraint1.tg[0].tpm"
		;
connectAttr "Jaw1_Joint_M_GRP0_parentConstraint1.w0" "Jaw1_Joint_M_GRP0_parentConstraint1.tg[0].tw"
		;
connectAttr "TEMP_RigRoot.limbs" "Head_Limb_M_NODE.rigRoot";
connectAttr "Neck_Limb_M_NODE.limbChildren" "Head_Limb_M_NODE.limbParent";
connectAttr "Head_Head1_M_JNT.group" "Head1_Joint_M_GRP0.joint";
connectAttr "Head_Limb_M_NODE.jointGroups" "Head1_Joint_M_GRP0.limb";
connectAttr "Head_Limb_M_NODE.usedGroups" "Head1_Joint_M_GRP0.used";
connectAttr "Head1_Joint_M_GRP0_parentConstraint1.ctx" "Head1_Joint_M_GRP0.tx";
connectAttr "Head1_Joint_M_GRP0_parentConstraint1.cty" "Head1_Joint_M_GRP0.ty";
connectAttr "Head1_Joint_M_GRP0_parentConstraint1.ctz" "Head1_Joint_M_GRP0.tz";
connectAttr "Head1_Joint_M_GRP0_parentConstraint1.crx" "Head1_Joint_M_GRP0.rx";
connectAttr "Head1_Joint_M_GRP0_parentConstraint1.cry" "Head1_Joint_M_GRP0.ry";
connectAttr "Head1_Joint_M_GRP0_parentConstraint1.crz" "Head1_Joint_M_GRP0.rz";
connectAttr "Control_Disp.di" "Head1_Joint_M_CTR0.do";
connectAttr "Head1_Joint_M_GRP0.control" "Head1_Joint_M_CTR0.group";
connectAttr "Head_Head2_M_JNT.group" "Head2_Joint_M_GRP1.joint";
connectAttr "Head_Limb_M_NODE.jointGroups" "Head2_Joint_M_GRP1.limb";
connectAttr "Head_Limb_M_NODE.usedGroups" "Head2_Joint_M_GRP1.used";
connectAttr "Control_Disp.di" "Head2_Joint_M_CTR1.do";
connectAttr "Head2_Joint_M_GRP1.control" "Head2_Joint_M_CTR1.group";
connectAttr "Head1_Joint_M_GRP0.ro" "Head1_Joint_M_GRP0_parentConstraint1.cro";
connectAttr "Head1_Joint_M_GRP0.pim" "Head1_Joint_M_GRP0_parentConstraint1.cpim"
		;
connectAttr "Head1_Joint_M_GRP0.rp" "Head1_Joint_M_GRP0_parentConstraint1.crp";
connectAttr "Head1_Joint_M_GRP0.rpt" "Head1_Joint_M_GRP0_parentConstraint1.crt";
connectAttr "Neck_Joint_M_CTR0.t" "Head1_Joint_M_GRP0_parentConstraint1.tg[0].tt"
		;
connectAttr "Neck_Joint_M_CTR0.rp" "Head1_Joint_M_GRP0_parentConstraint1.tg[0].trp"
		;
connectAttr "Neck_Joint_M_CTR0.rpt" "Head1_Joint_M_GRP0_parentConstraint1.tg[0].trt"
		;
connectAttr "Neck_Joint_M_CTR0.r" "Head1_Joint_M_GRP0_parentConstraint1.tg[0].tr"
		;
connectAttr "Neck_Joint_M_CTR0.ro" "Head1_Joint_M_GRP0_parentConstraint1.tg[0].tro"
		;
connectAttr "Neck_Joint_M_CTR0.s" "Head1_Joint_M_GRP0_parentConstraint1.tg[0].ts"
		;
connectAttr "Neck_Joint_M_CTR0.pm" "Head1_Joint_M_GRP0_parentConstraint1.tg[0].tpm"
		;
connectAttr "Head1_Joint_M_GRP0_parentConstraint1.w0" "Head1_Joint_M_GRP0_parentConstraint1.tg[0].tw"
		;
connectAttr "TEMP_RigRoot.limbs" "FaceBrow_Limb_L_NODE.rigRoot";
connectAttr "UpperFace_Limb_M_NODE.limbChildren" "FaceBrow_Limb_L_NODE.limbParent"
		;
connectAttr "FaceBrow_Limb_R_NODE.mirrorLimb" "FaceBrow_Limb_L_NODE.mirrorLimb";
connectAttr "FaceBrow_Brow1_L_JNT.group" "Brow1_Joint_L_GRP0.joint";
connectAttr "FaceBrow_Limb_L_NODE.jointGroups" "Brow1_Joint_L_GRP0.limb";
connectAttr "FaceBrow_Limb_L_NODE.usedGroups" "Brow1_Joint_L_GRP0.used";
connectAttr "Brow1_Joint_L_GRP0_parentConstraint1.ctx" "Brow1_Joint_L_GRP0.tx";
connectAttr "Brow1_Joint_L_GRP0_parentConstraint1.cty" "Brow1_Joint_L_GRP0.ty";
connectAttr "Brow1_Joint_L_GRP0_parentConstraint1.ctz" "Brow1_Joint_L_GRP0.tz";
connectAttr "Brow1_Joint_L_GRP0_parentConstraint1.crx" "Brow1_Joint_L_GRP0.rx";
connectAttr "Brow1_Joint_L_GRP0_parentConstraint1.cry" "Brow1_Joint_L_GRP0.ry";
connectAttr "Brow1_Joint_L_GRP0_parentConstraint1.crz" "Brow1_Joint_L_GRP0.rz";
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
connectAttr "Brow1_Joint_L_GRP0.ro" "Brow1_Joint_L_GRP0_parentConstraint1.cro";
connectAttr "Brow1_Joint_L_GRP0.pim" "Brow1_Joint_L_GRP0_parentConstraint1.cpim"
		;
connectAttr "Brow1_Joint_L_GRP0.rp" "Brow1_Joint_L_GRP0_parentConstraint1.crp";
connectAttr "Brow1_Joint_L_GRP0.rpt" "Brow1_Joint_L_GRP0_parentConstraint1.crt";
connectAttr "UF1_Joint_M_CTR0.t" "Brow1_Joint_L_GRP0_parentConstraint1.tg[0].tt"
		;
connectAttr "UF1_Joint_M_CTR0.rp" "Brow1_Joint_L_GRP0_parentConstraint1.tg[0].trp"
		;
connectAttr "UF1_Joint_M_CTR0.rpt" "Brow1_Joint_L_GRP0_parentConstraint1.tg[0].trt"
		;
connectAttr "UF1_Joint_M_CTR0.r" "Brow1_Joint_L_GRP0_parentConstraint1.tg[0].tr"
		;
connectAttr "UF1_Joint_M_CTR0.ro" "Brow1_Joint_L_GRP0_parentConstraint1.tg[0].tro"
		;
connectAttr "UF1_Joint_M_CTR0.s" "Brow1_Joint_L_GRP0_parentConstraint1.tg[0].ts"
		;
connectAttr "UF1_Joint_M_CTR0.pm" "Brow1_Joint_L_GRP0_parentConstraint1.tg[0].tpm"
		;
connectAttr "Brow1_Joint_L_GRP0_parentConstraint1.w0" "Brow1_Joint_L_GRP0_parentConstraint1.tg[0].tw"
		;
connectAttr "TEMP_RigRoot.limbs" "Neck_Limb_M_NODE.rigRoot";
connectAttr "Spine_Limb_M_NODE.limbChildren" "Neck_Limb_M_NODE.limbParent";
connectAttr "Neck_Neck_M_JNT.group" "Neck_Joint_M_GRP0.joint";
connectAttr "Neck_Limb_M_NODE.jointGroups" "Neck_Joint_M_GRP0.limb";
connectAttr "Neck_Limb_M_NODE.usedGroups" "Neck_Joint_M_GRP0.used";
connectAttr "Neck_Joint_M_GRP0_parentConstraint1.ctx" "Neck_Joint_M_GRP0.tx";
connectAttr "Neck_Joint_M_GRP0_parentConstraint1.cty" "Neck_Joint_M_GRP0.ty";
connectAttr "Neck_Joint_M_GRP0_parentConstraint1.ctz" "Neck_Joint_M_GRP0.tz";
connectAttr "Neck_Joint_M_GRP0_parentConstraint1.crx" "Neck_Joint_M_GRP0.rx";
connectAttr "Neck_Joint_M_GRP0_parentConstraint1.cry" "Neck_Joint_M_GRP0.ry";
connectAttr "Neck_Joint_M_GRP0_parentConstraint1.crz" "Neck_Joint_M_GRP0.rz";
connectAttr "Control_Disp.di" "Neck_Joint_M_CTR0.do";
connectAttr "Neck_Joint_M_GRP0.control" "Neck_Joint_M_CTR0.group";
connectAttr "Neck_Joint_M_GRP0.ro" "Neck_Joint_M_GRP0_parentConstraint1.cro";
connectAttr "Neck_Joint_M_GRP0.pim" "Neck_Joint_M_GRP0_parentConstraint1.cpim";
connectAttr "Neck_Joint_M_GRP0.rp" "Neck_Joint_M_GRP0_parentConstraint1.crp";
connectAttr "Neck_Joint_M_GRP0.rpt" "Neck_Joint_M_GRP0_parentConstraint1.crt";
connectAttr "Spine_Joint_M_CTR0.t" "Neck_Joint_M_GRP0_parentConstraint1.tg[0].tt"
		;
connectAttr "Spine_Joint_M_CTR0.rp" "Neck_Joint_M_GRP0_parentConstraint1.tg[0].trp"
		;
connectAttr "Spine_Joint_M_CTR0.rpt" "Neck_Joint_M_GRP0_parentConstraint1.tg[0].trt"
		;
connectAttr "Spine_Joint_M_CTR0.r" "Neck_Joint_M_GRP0_parentConstraint1.tg[0].tr"
		;
connectAttr "Spine_Joint_M_CTR0.ro" "Neck_Joint_M_GRP0_parentConstraint1.tg[0].tro"
		;
connectAttr "Spine_Joint_M_CTR0.s" "Neck_Joint_M_GRP0_parentConstraint1.tg[0].ts"
		;
connectAttr "Spine_Joint_M_CTR0.pm" "Neck_Joint_M_GRP0_parentConstraint1.tg[0].tpm"
		;
connectAttr "Neck_Joint_M_GRP0_parentConstraint1.w0" "Neck_Joint_M_GRP0_parentConstraint1.tg[0].tw"
		;
connectAttr "TEMP_RigRoot.limbs" "FaceBrow_Limb_R_NODE.rigRoot";
connectAttr "UpperFace_Limb_M_NODE.limbChildren" "FaceBrow_Limb_R_NODE.limbParent"
		;
connectAttr "FaceBrow_Brow1_R_JNT.group" "Brow1_Joint_R_GRP0.joint";
connectAttr "FaceBrow_Limb_R_NODE.jointGroups" "Brow1_Joint_R_GRP0.limb";
connectAttr "FaceBrow_Limb_R_NODE.usedGroups" "Brow1_Joint_R_GRP0.used";
connectAttr "Brow1_Joint_R_GRP0_parentConstraint1.ctx" "Brow1_Joint_R_GRP0.tx";
connectAttr "Brow1_Joint_R_GRP0_parentConstraint1.cty" "Brow1_Joint_R_GRP0.ty";
connectAttr "Brow1_Joint_R_GRP0_parentConstraint1.ctz" "Brow1_Joint_R_GRP0.tz";
connectAttr "Brow1_Joint_R_GRP0_parentConstraint1.crx" "Brow1_Joint_R_GRP0.rx";
connectAttr "Brow1_Joint_R_GRP0_parentConstraint1.cry" "Brow1_Joint_R_GRP0.ry";
connectAttr "Brow1_Joint_R_GRP0_parentConstraint1.crz" "Brow1_Joint_R_GRP0.rz";
connectAttr "Control_Disp.di" "Brow1_Joint_R_CTR0.do";
connectAttr "Brow1_Joint_R_GRP0.control" "Brow1_Joint_R_CTR0.group";
connectAttr "FaceBrow_Brow2_R_JNT.group" "Brow2_Joint_R_GRP1.joint";
connectAttr "FaceBrow_Limb_R_NODE.jointGroups" "Brow2_Joint_R_GRP1.limb";
connectAttr "FaceBrow_Limb_R_NODE.usedGroups" "Brow2_Joint_R_GRP1.used";
connectAttr "Control_Disp.di" "Brow2_Joint_R_CTR1.do";
connectAttr "Brow2_Joint_R_GRP1.control" "Brow2_Joint_R_CTR1.group";
connectAttr "FaceBrow_Brow3_R_JNT.group" "Brow3_Joint_R_GRP2.joint";
connectAttr "FaceBrow_Limb_R_NODE.jointGroups" "Brow3_Joint_R_GRP2.limb";
connectAttr "FaceBrow_Limb_R_NODE.usedGroups" "Brow3_Joint_R_GRP2.used";
connectAttr "Control_Disp.di" "Brow3_Joint_R_CTR2.do";
connectAttr "Brow3_Joint_R_GRP2.control" "Brow3_Joint_R_CTR2.group";
connectAttr "Brow1_Joint_R_GRP0.ro" "Brow1_Joint_R_GRP0_parentConstraint1.cro";
connectAttr "Brow1_Joint_R_GRP0.pim" "Brow1_Joint_R_GRP0_parentConstraint1.cpim"
		;
connectAttr "Brow1_Joint_R_GRP0.rp" "Brow1_Joint_R_GRP0_parentConstraint1.crp";
connectAttr "Brow1_Joint_R_GRP0.rpt" "Brow1_Joint_R_GRP0_parentConstraint1.crt";
connectAttr "UF1_Joint_M_CTR0.t" "Brow1_Joint_R_GRP0_parentConstraint1.tg[0].tt"
		;
connectAttr "UF1_Joint_M_CTR0.rp" "Brow1_Joint_R_GRP0_parentConstraint1.tg[0].trp"
		;
connectAttr "UF1_Joint_M_CTR0.rpt" "Brow1_Joint_R_GRP0_parentConstraint1.tg[0].trt"
		;
connectAttr "UF1_Joint_M_CTR0.r" "Brow1_Joint_R_GRP0_parentConstraint1.tg[0].tr"
		;
connectAttr "UF1_Joint_M_CTR0.ro" "Brow1_Joint_R_GRP0_parentConstraint1.tg[0].tro"
		;
connectAttr "UF1_Joint_M_CTR0.s" "Brow1_Joint_R_GRP0_parentConstraint1.tg[0].ts"
		;
connectAttr "UF1_Joint_M_CTR0.pm" "Brow1_Joint_R_GRP0_parentConstraint1.tg[0].tpm"
		;
connectAttr "Brow1_Joint_R_GRP0_parentConstraint1.w0" "Brow1_Joint_R_GRP0_parentConstraint1.tg[0].tw"
		;
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
connectAttr "Brow2_Joint_R_CTR1Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Brow1_Joint_R_CTR0Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Brow3_Joint_R_CTR2Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "RControlsMaterialSG.msg" "materialInfo4.sg";
connectAttr "RControlsMaterial.msg" "materialInfo4.m";
connectAttr "RControlsMaterial.msg" "materialInfo4.t" -na;
connectAttr "Neck_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "Brow3_Joint_R_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "Cube_PolyShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "Head_Head2_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "Jaw2_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "RControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "Brow1_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "FaceBrow_Brow2_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "FaceBrow_Brow3_R_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "Brow1_Joint_R_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "Neck_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "Head2_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "Pin_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn";
connectAttr "UpperFace_UF1_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "Brow2_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "Square_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn";
connectAttr "JOINTS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn";
connectAttr "Neck_Joint_M_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "sceneConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "Jaw1_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "Brow3_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "Cylinder_Poly.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn";
connectAttr "Brow2_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "UF1_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "Jaw_Jaw2_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn";
connectAttr "LControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "Head1_Joint_M_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "FaceBrow_Brow2_R_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "Brow2_Joint_R_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "Head2_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "UpperFace_UF1_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "Jaw1_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "Cube_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn";
connectAttr "TempMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn";
connectAttr "Spine_Spine_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "Head_Head1_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "TEMP_RigRoot.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn";
connectAttr "Jaw_Jaw2_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "FaceBrow_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "FaceBrow_Brow1_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "Jaw_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "FaceBrow_Brow2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "Head_Head1_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "LControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "Cylinder_PolyShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "MControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "FaceBrow_Brow1_R_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "Head1_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "Pin_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn";
connectAttr "Brow2_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn"
		;
connectAttr "Brow3_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "UF1_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "Joint_Disp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn";
connectAttr "Head1_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "materialInfo3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn";
connectAttr "Brow1_Joint_R_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "UF1_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "Jaw_Jaw1_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn";
connectAttr "Brow1_Joint_R_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "FaceBrow_Brow1_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "FaceBrow_Brow3_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "Diamond_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn";
connectAttr "UF1_Joint_M_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "lambert2SG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn";
connectAttr "Brow1_Joint_L_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "Brow3_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "Neck_Neck_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "Diamond_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn"
		;
connectAttr "Brow1_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "FaceBrow_Limb_R_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn"
		;
connectAttr "Meshe_Disp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn";
connectAttr "Spine_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "RControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "uiConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "Head_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn"
		;
connectAttr "Cube_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn";
connectAttr "Cube_Poly.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn";
connectAttr "Control_Disp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn";
connectAttr "UpperFace_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn"
		;
connectAttr "Brow2_Joint_R_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "Head1_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn"
		;
connectAttr "Square_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn"
		;
connectAttr "Circle_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn";
connectAttr "Brow1_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "materialInfo1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn";
connectAttr "LIMBS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn";
connectAttr "FaceBrow_Brow2_L_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "Circle_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "Spine_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "FaceBrow_Brow3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn"
		;
connectAttr "Head_Head2_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "materialInfo2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn";
connectAttr "Neck_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn"
		;
connectAttr "MControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn"
		;
connectAttr "BAKED_DATA.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn";
connectAttr "Brow2_Joint_R_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn"
		;
connectAttr "CONTROL_SHAPE_TEMPLATES.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn"
		;
connectAttr "Jaw2_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn"
		;
connectAttr "Brow1_Joint_R_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn"
		;
connectAttr "Brow3_Joint_R_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn"
		;
connectAttr "Jaw2_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn"
		;
connectAttr "Sphere_Poly.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn";
connectAttr "Brow3_Joint_R_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn"
		;
connectAttr "Jaw1_Joint_M_GRP0_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn"
		;
connectAttr "Sphere_PolyShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn"
		;
connectAttr "BaseAnimation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn";
connectAttr "Neck_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn"
		;
connectAttr "FaceBrow_Brow1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn"
		;
connectAttr "Spine_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn"
		;
connectAttr "Jaw_Jaw1_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn"
		;
connectAttr "materialInfo4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn";
connectAttr "Head2_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn"
		;
connectAttr "MESHES.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn";
connectAttr "Neck_Neck_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn"
		;
connectAttr "Spine_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn"
		;
connectAttr "Jaw1_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn"
		;
connectAttr "FaceBrow_Brow3_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn"
		;
connectAttr "Spine_Spine_M_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn"
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
// End of PFX_AnimRig_02.ma
