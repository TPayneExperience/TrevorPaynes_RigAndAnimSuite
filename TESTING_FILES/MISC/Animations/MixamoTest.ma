//Maya ASCII 2019 scene
//Name: MixamoTest.ma
//Last modified: Thu, Jul 01, 2021 07:28:15 PM
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
	rename -uid "A68D53A5-4BAD-96A1-AB7B-8D93EAD6109C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 87.7449240089135 236.68228802436701 283.21850229435449 ;
	setAttr ".r" -type "double3" -31.538352729602408 14.199999999999916 2.4605987447932557e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "413906F1-4F60-1EDB-D78B-1CAA1ED2957B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 384.18745424597091;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "3D305888-4F24-A42A-016D-F8BA5811C6A1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "FE6D7009-4D7E-B26F-3E8B-538F6C21D8A1";
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
	rename -uid "907603D3-409D-686B-8223-21AD9130C4DB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "E3F39442-4297-0047-647F-BCAC725FE0F3";
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
	rename -uid "815EA53C-4D84-1F93-F749-D8AA2CB02067";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "A09AC8D8-476B-6707-8E7D-BA933703BF62";
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
	rename -uid "802C89A9-424F-6344-7BD4-67BC43B4DFF1";
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
createNode transform -n "LIMBS" -p "TEMP_RigRoot";
	rename -uid "BF2BB798-4307-FFDA-2535-BCBD12B994FF";
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
createNode transform -n "Head_Limb_M_NODE" -p "LIMBS";
	rename -uid "1E67C1B6-4728-E6B9-160F-BF9EC02D694B";
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
createNode transform -n "AnimGroup_MixamoTest_1" -p "Head_Limb_M_NODE";
	rename -uid "E196F382-44DD-6F0B-AB03-D69A3C356F79";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	setAttr ".t" -type "double3" 47.273564500420392 148.02694866229794 210.38830029623858 ;
	setAttr ".r" -type "double3" 3.4732734940414907 164.82603952175089 -11.430913252583442 ;
	setAttr ".pfrsName" -type "string" "MixamoTest";
createNode transform -n "locator1" -p "AnimGroup_MixamoTest_1";
	rename -uid "39478755-4462-8088-1D33-9080A02E472D";
createNode locator -n "locatorShape1" -p "locator1";
	rename -uid "B5EDC4B4-4905-456D-CEAB-88941F4A13C6";
	setAttr -k off ".v";
createNode transform -n "locator2" -p "AnimGroup_MixamoTest_1";
	rename -uid "4AB295BC-44C4-27F0-1144-63A004BDC82A";
createNode locator -n "locatorShape2" -p "locator2";
	rename -uid "CB816B7C-402D-9B2B-9483-568738B1474F";
	setAttr -k off ".v";
createNode transform -n "Leg_Limb_R_NODE" -p "LIMBS";
	rename -uid "B8821911-4C09-4D7B-9F72-A5A08772A03D";
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
createNode transform -n "AnimGroup_MixamoTest_2" -p "Leg_Limb_R_NODE";
	rename -uid "41CAE1B9-4A0E-2D15-40BC-F6B147211EE0";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	setAttr ".t" -type "double3" 41.039577484130859 102.171630859375 208.53190612792969 ;
	setAttr ".r" -type "double3" 179.91352844238281 22.379873275756836 -183.7624816894531 ;
	setAttr ".pfrsName" -type "string" "MixamoTest";
createNode transform -n "locator3" -p "AnimGroup_MixamoTest_2";
	rename -uid "011819DB-4DD0-8302-B0EC-4A8BDCA8731C";
createNode locator -n "locatorShape3" -p "locator3";
	rename -uid "2739761B-43A5-3BAE-76EE-5FAE6E41B7EC";
	setAttr -k off ".v";
createNode transform -n "locator4" -p "AnimGroup_MixamoTest_2";
	rename -uid "E762E0FA-47CF-2FCD-7F72-72B423C1A1D0";
createNode locator -n "locatorShape4" -p "locator4";
	rename -uid "53C30B20-408E-F3F0-34F7-FEB115CAA334";
	setAttr -k off ".v";
createNode transform -n "locator5" -p "AnimGroup_MixamoTest_2";
	rename -uid "47C15B23-4842-9239-9BED-ABB6C971D6DE";
createNode locator -n "locatorShape5" -p "locator5";
	rename -uid "BBAF8748-477B-5E47-5C50-178982498C3F";
	setAttr -k off ".v";
createNode transform -n "Leg_Limb_L_NODE" -p "LIMBS";
	rename -uid "AC10E695-4E73-707D-6D8B-58ABB7368F94";
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
createNode transform -n "AnimGroup_MixamoTest_3" -p "Leg_Limb_L_NODE";
	rename -uid "E14AEFC7-4F22-79F8-99CC-12B7137AE008";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	setAttr ".t" -type "double3" 41.039577484130859 102.171630859375 208.53190612792969 ;
	setAttr ".r" -type "double3" 179.91352844238281 22.379873275756836 -183.7624816894531 ;
	setAttr ".pfrsName" -type "string" "MixamoTest";
createNode transform -n "locator6" -p "AnimGroup_MixamoTest_3";
	rename -uid "9085B6D1-40BE-1AC8-FB43-61BEE7F351A1";
createNode locator -n "locatorShape6" -p "locator6";
	rename -uid "F2AA0AF9-4F2F-F49F-190D-59BAC8F9D182";
	setAttr -k off ".v";
createNode transform -n "locator7" -p "AnimGroup_MixamoTest_3";
	rename -uid "097D2058-440B-15BB-0876-399C92C912F7";
createNode locator -n "locatorShape7" -p "locator7";
	rename -uid "F55B1B5C-4378-116A-3446-018DDD3BD424";
	setAttr -k off ".v";
createNode transform -n "locator8" -p "AnimGroup_MixamoTest_3";
	rename -uid "872D5944-4B40-4B2F-BE58-A8A6D8FDC726";
createNode locator -n "locatorShape8" -p "locator8";
	rename -uid "B1AE0202-4AFF-7482-AF7A-D38A752866D7";
	setAttr -k off ".v";
createNode transform -n "Spine_Limb_M_NODE" -p "LIMBS";
	rename -uid "1A95D16D-48DA-3344-38EB-AFAF35726F0A";
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
createNode transform -n "AnimGroup_MixamoTest_4" -p "Spine_Limb_M_NODE";
	rename -uid "AEA0B237-4FF3-B9CD-F4EB-FC87C61D843F";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	setAttr ".t" -type "double3" 41.039577484130859 102.171630859375 208.53190612792969 ;
	setAttr ".r" -type "double3" 179.91352844238281 22.379873275756836 -183.7624816894531 ;
	setAttr ".pfrsName" -type "string" "MixamoTest";
createNode transform -n "locator9" -p "AnimGroup_MixamoTest_4";
	rename -uid "C030C439-46C5-7FE2-34A0-53A08757C065";
createNode locator -n "locatorShape9" -p "locator9";
	rename -uid "57F4BCAE-482C-8413-ACF1-A7A30F5CD3BF";
	setAttr -k off ".v";
createNode transform -n "locator10" -p "AnimGroup_MixamoTest_4";
	rename -uid "E631874A-4B96-D4CF-E6FE-A49812FBE01D";
createNode locator -n "locatorShape10" -p "locator10";
	rename -uid "697EC5C1-4A71-77F2-4095-C8BC85B2A4E6";
	setAttr -k off ".v";
createNode transform -n "locator11" -p "AnimGroup_MixamoTest_4";
	rename -uid "EE136079-4541-5A2B-361F-BDAE1E37A077";
createNode locator -n "locatorShape11" -p "locator11";
	rename -uid "4FC92DA0-4D40-2075-2041-67BD0CFC705C";
	setAttr -k off ".v";
createNode transform -n "Foot_Limb_L_NODE" -p "LIMBS";
	rename -uid "E1EF8DF7-41E9-86D5-902A-10B37B415846";
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
createNode transform -n "AnimGroup_MixamoTest_5" -p "Foot_Limb_L_NODE";
	rename -uid "AD06FF05-4213-F5AA-3926-27A4A99405F4";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	setAttr ".t" -type "double3" 20.845901716665381 10.532793284231154 191.13334289251839 ;
	setAttr ".r" -type "double3" -3.8508181381261388 -169.1008465835524 1.3022101598993652 ;
	setAttr ".pfrsName" -type "string" "MixamoTest";
createNode transform -n "locator12" -p "AnimGroup_MixamoTest_5";
	rename -uid "498E5DA1-45CE-F823-B150-6F9B9EAD4A8E";
createNode locator -n "locatorShape12" -p "locator12";
	rename -uid "2D24FA99-4A7C-9FBF-2772-1491A7651004";
	setAttr -k off ".v";
createNode transform -n "locator13" -p "AnimGroup_MixamoTest_5";
	rename -uid "FC7E1157-40EF-CEA3-3A21-B49BCAC887FC";
createNode locator -n "locatorShape13" -p "locator13";
	rename -uid "B04F56BB-4CBD-4D15-1F5C-708EEE68CE10";
	setAttr -k off ".v";
createNode transform -n "Foot_Limb_R_NODE" -p "LIMBS";
	rename -uid "5253B1B7-47FE-2A30-672A-32AC9E33FB24";
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
createNode transform -n "AnimGroup_MixamoTest_6" -p "Foot_Limb_R_NODE";
	rename -uid "AC7219E6-4900-C658-A280-50A218690C89";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	setAttr ".t" -type "double3" 52.305537687295114 10.132741978254806 227.49925980477056 ;
	setAttr ".r" -type "double3" 1.3945632824075232e-06 141.12455003641779 -1.1004470860154238e-06 ;
	setAttr ".pfrsName" -type "string" "MixamoTest";
createNode transform -n "locator14" -p "AnimGroup_MixamoTest_6";
	rename -uid "490AEECB-4441-E73A-0F81-1D91F463D3DA";
createNode locator -n "locatorShape14" -p "locator14";
	rename -uid "9736FECB-4FA4-535A-1A23-558DC42AC27C";
	setAttr -k off ".v";
createNode transform -n "locator15" -p "AnimGroup_MixamoTest_6";
	rename -uid "E0C613B6-4927-C26A-9EF1-D188A145BABD";
createNode locator -n "locatorShape15" -p "locator15";
	rename -uid "9A56958A-4E92-A422-5118-B4BBE03263AE";
	setAttr -k off ".v";
createNode transform -n "Neck_Limb_M_NODE" -p "LIMBS";
	rename -uid "58CEA4B6-4223-A77F-525A-4C9C5002572B";
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
createNode transform -n "AnimGroup_MixamoTest_7" -p "Neck_Limb_M_NODE";
	rename -uid "356E06A4-499D-23E8-5DFC-2FA0299EB6A6";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	setAttr ".t" -type "double3" 44.16218066356906 131.475659886004 209.58221176725561 ;
	setAttr ".r" -type "double3" 5.6510756816474021 159.20147556010275 -11.688186442046097 ;
	setAttr ".pfrsName" -type "string" "MixamoTest";
createNode transform -n "locator16" -p "AnimGroup_MixamoTest_7";
	rename -uid "51EB3532-48C0-AFDE-A785-6990338C2DE9";
createNode locator -n "locatorShape16" -p "locator16";
	rename -uid "B4B12978-43D2-8937-CFA1-4A8EAC5D642A";
	setAttr -k off ".v";
createNode transform -n "Pelvis_Limb_M_NODE" -p "LIMBS";
	rename -uid "04AB294C-43DD-1950-4109-EAAE9836B31A";
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
createNode transform -n "AnimGroup_MixamoTest_8" -p "Pelvis_Limb_M_NODE";
	rename -uid "BA5891D9-4B12-65A7-97B6-5AB7523074ED";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	setAttr ".pfrsName" -type "string" "MixamoTest";
createNode transform -n "locator17" -p "AnimGroup_MixamoTest_8";
	rename -uid "D502B8DE-4E3B-E9BD-41FE-74AA31E4C395";
createNode locator -n "locatorShape17" -p "locator17";
	rename -uid "046168E0-4B32-9D64-FC38-A7852F3F31C4";
	setAttr -k off ".v";
createNode transform -n "Arm_Limb_L_NODE" -p "LIMBS";
	rename -uid "D2385BE9-4221-FFB0-0793-ED9C0286C5B5";
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
createNode transform -n "AnimGroup_MixamoTest_9" -p "Arm_Limb_L_NODE";
	rename -uid "C1B319B4-434C-FCD2-EE13-C7B00684C5B6";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	setAttr ".t" -type "double3" 41.702734184642338 143.3721519405637 209.39650629473661 ;
	setAttr ".r" -type "double3" 7.669050310804252 165.84659625469268 -4.4291723610353593 ;
	setAttr ".pfrsName" -type "string" "MixamoTest";
createNode transform -n "locator18" -p "AnimGroup_MixamoTest_9";
	rename -uid "01037170-41EE-BDCC-DBD3-D9AAEAC9476D";
createNode locator -n "locatorShape18" -p "locator18";
	rename -uid "5B57B34F-4165-2C5A-1242-65AF4812FE62";
	setAttr -k off ".v";
createNode transform -n "locator19" -p "AnimGroup_MixamoTest_9";
	rename -uid "CB4218F6-46FC-9CEA-5582-DFA99B785DDA";
createNode locator -n "locatorShape19" -p "locator19";
	rename -uid "5A4A606F-413B-356C-DF2D-26BADCD7B971";
	setAttr -k off ".v";
createNode transform -n "locator20" -p "AnimGroup_MixamoTest_9";
	rename -uid "D82488CD-4386-74D3-14F6-22AC3640B5E6";
createNode locator -n "locatorShape20" -p "locator20";
	rename -uid "F096BC31-44C8-FFCB-D950-DB970BB8B099";
	setAttr -k off ".v";
createNode transform -n "Clav_Limb_L_NODE" -p "LIMBS";
	rename -uid "7E6F0436-4E92-605A-08B0-699B352A2CC1";
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
createNode transform -n "AnimGroup_MixamoTest_10" -p "Clav_Limb_L_NODE";
	rename -uid "71C3F053-4BA5-416B-B080-889FE438FCB4";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	setAttr ".t" -type "double3" 44.16218066356906 131.475659886004 209.58221176725561 ;
	setAttr ".r" -type "double3" 5.6510756816474021 159.20147556010275 -11.688186442046097 ;
	setAttr ".pfrsName" -type "string" "MixamoTest";
createNode transform -n "locator21" -p "AnimGroup_MixamoTest_10";
	rename -uid "BF4930BA-4121-F01D-702C-5F9C06FD984F";
createNode locator -n "locatorShape21" -p "locator21";
	rename -uid "0510362B-4486-BD7B-D0C5-408616FEE94C";
	setAttr -k off ".v";
createNode transform -n "Clav_Limb_R_NODE" -p "LIMBS";
	rename -uid "3FABC31C-4E71-6976-CFC0-87A87C331728";
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
createNode transform -n "AnimGroup_MixamoTest_11" -p "Clav_Limb_R_NODE";
	rename -uid "4A7EED4D-49A2-EE26-A9B8-CCBAED9AFB28";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	setAttr ".t" -type "double3" 44.16218066356906 131.475659886004 209.58221176725561 ;
	setAttr ".r" -type "double3" 5.6510756816474021 159.20147556010275 -11.688186442046097 ;
	setAttr ".pfrsName" -type "string" "MixamoTest";
createNode transform -n "locator22" -p "AnimGroup_MixamoTest_11";
	rename -uid "298420FC-484B-BBE3-4E62-2FB527D5C838";
createNode locator -n "locatorShape22" -p "locator22";
	rename -uid "94D64690-4524-57FB-029F-B7864EFCB659";
	setAttr -k off ".v";
createNode transform -n "Arm_Limb_R_NODE" -p "LIMBS";
	rename -uid "3C49C241-4C2F-F503-57BF-5F9F25F12EE7";
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
createNode transform -n "AnimGroup_MixamoTest_12" -p "Arm_Limb_R_NODE";
	rename -uid "CCC090B1-4F54-0480-1A56-E6A55DDB03B2";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	setAttr ".t" -type "double3" 50.070369721002166 141.6412948697573 212.64212128706163 ;
	setAttr ".r" -type "double3" 3.5513951233865426 160.17424502488186 -23.091570834225028 ;
	setAttr ".pfrsName" -type "string" "MixamoTest";
createNode transform -n "locator23" -p "AnimGroup_MixamoTest_12";
	rename -uid "163476BB-4636-A84A-63AF-FB8AD5BD6A20";
createNode locator -n "locatorShape23" -p "locator23";
	rename -uid "0602A004-446D-3753-E26E-E8B4BF404729";
	setAttr -k off ".v";
createNode transform -n "locator24" -p "AnimGroup_MixamoTest_12";
	rename -uid "DF35B3C6-44AF-A5E1-0571-9DA73EDBCDDD";
createNode locator -n "locatorShape24" -p "locator24";
	rename -uid "143433F4-4304-4E41-F659-C7A859CC3A9E";
	setAttr -k off ".v";
createNode transform -n "locator25" -p "AnimGroup_MixamoTest_12";
	rename -uid "45D3CF2A-4E19-470D-DD25-A58185E7E8A1";
createNode locator -n "locatorShape25" -p "locator25";
	rename -uid "A562A7D2-4CFA-AE18-8E0A-CC93503F9E00";
	setAttr -k off ".v";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "A5AC0A18-4DFB-6E43-D879-E980F912CF67";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "F4810876-47AD-8190-39E9-A395C688A15A";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "2CE05F70-4F51-B7AA-8190-4B8D1D3324F0";
createNode displayLayerManager -n "layerManager";
	rename -uid "D83BFB8A-414B-F724-DEA8-D18E348C17ED";
	setAttr -s 4 ".dli[1:3]"  1 2 3;
createNode displayLayer -n "defaultLayer";
	rename -uid "BF36FEC9-4361-FC90-8F09-A39CD9CA45A1";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "236E8CC8-489D-4303-F8A9-D2BABBA5D576";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "A060D8D0-4299-F167-DC75-F4913B4EFB48";
	setAttr ".g" yes;
createNode phong -n "Beta_Joints_MAT";
	rename -uid "BDF8733E-4076-E48F-A72C-C796F678E9B5";
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
	rename -uid "0B508AE4-4E0A-C757-F4DD-BD8809DA07FD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "EA4B9634-4ADA-2957-1F33-5291C27677FD";
createNode phong -n "asdf1:Beta_HighLimbsGeoSG2";
	rename -uid "30588BF3-435E-9390-D3FF-028CA6BEBF00";
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
	rename -uid "ADB07FAA-4EFE-485F-2D17-DAB8B9F7FA84";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "9D80968D-4482-34AB-AD3A-2694D45BEC6F";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "D5D5F5BC-4230-C49C-822C-67B8D0D171F9";
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
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1114\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1114\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1114\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 50 -size 100 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "974E838A-41E7-9178-F751-92B76BABE5D4";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 136 -ast 0 -aet 136 ";
	setAttr ".st" 6;
createNode lambert -n "TempMaterial";
	rename -uid "D89355E7-487B-DC19-D940-8481812AB586";
	setAttr ".c" -type "float3" 1 0.92308331 0 ;
	setAttr ".it" -type "float3" 0.69277108 0.69277108 0.69277108 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "3799CD02-4686-0219-F62C-2388B7CC090A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Control_Shapes_materialInfo1";
	rename -uid "96AAF703-473D-BEAC-C4CD-7B9896D3FF89";
createNode surfaceShader -n "LControlsMaterial";
	rename -uid "C44763FC-4FCB-6C2A-7F5C-54A37FD438F3";
	setAttr ".oc" -type "float3" 0 0 1 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "LControlsMaterialSG";
	rename -uid "72ACD07F-4BAD-0868-7422-13A3E0C1D096";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "38695ADF-4FC1-50C5-1884-2CBDF5AC4DFD";
createNode surfaceShader -n "MControlsMaterial";
	rename -uid "46637FFE-4506-404D-6BA5-819BA7AF0C5F";
	setAttr ".oc" -type "float3" 1 1 0 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "MControlsMaterialSG";
	rename -uid "18B9BCA8-4576-A865-2842-C5B81384557F";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "004ED78F-4B04-2F07-9759-FF841E6E1412";
createNode surfaceShader -n "RControlsMaterial";
	rename -uid "880EF11A-4CF9-7351-F312-FE82A5A73EB7";
	setAttr ".oc" -type "float3" 1 0 0 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "RControlsMaterialSG";
	rename -uid "B7A56E06-4B4C-834D-5A43-73B5E437E2E1";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "C9F402F1-4E07-87E7-6AAD-399A78067ECD";
createNode animCurveTU -n "locator1_visibility";
	rename -uid "7526E550-46F7-F1B1-1FF4-22BFD6CDB160";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1
		 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1
		 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1
		 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTL -n "locator1_translateX";
	rename -uid "41B0628A-407C-105C-482F-E2B0FE86E390";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -4.2423187007756269e-07 1 -4.2423187007756269e-07
		 2 -4.2423187185391953e-07 3 -4.2423187274209795e-07 4 -4.2423186918938427e-07 5 -4.2423186918938427e-07
		 6 -4.2423187096574111e-07 7 -4.2423187096574111e-07 8 -4.2423187096574111e-07 9 -4.2423187096574111e-07
		 10 -4.2423187274209795e-07 11 -4.2423187274209795e-07 12 -4.2423187185391953e-07
		 13 -4.2423187185391953e-07 14 -4.2423187140983032e-07 15 -4.242318705216519e-07 16 -4.2423187096574111e-07
		 17 -4.242318705216519e-07 18 -4.2423187363027637e-07 19 -4.2423186918938427e-07 20 -4.2423187096574111e-07
		 21 -4.2423186918938427e-07 22 -4.2423187096574111e-07 23 -4.2423187096574111e-07
		 24 -4.2423186741302743e-07 25 -4.2423187096574111e-07 26 -4.2423187274209795e-07
		 27 -4.2423186918938427e-07 28 -4.2423187096574111e-07 29 -4.2423187451845479e-07
		 30 -4.2423187096574111e-07 31 -4.2423187096574111e-07 32 -4.2423187096574111e-07
		 33 -4.2423187096574111e-07 34 -4.2423187185391953e-07 35 -4.2423187274209795e-07
		 36 -4.2423187451845479e-07 37 -4.2423186386031375e-07 38 -4.2423188517659582e-07
		 39 -4.2423187096574111e-07 40 -4.2423187096574111e-07 41 -4.2423187096574111e-07
		 42 -4.2423191359830525e-07 43 -4.2423184254403168e-07 44 -4.2423187096574111e-07
		 45 -4.2423184254403168e-07 46 -4.2423189938745054e-07 47 -4.2423187096574111e-07
		 48 -4.242319064928779e-07 49 -4.2423185675488639e-07 50 -4.2423185675488639e-07 51 -4.2423185675488639e-07
		 52 -4.2423187096574111e-07 53 -4.2423187096574111e-07 54 -4.2423187807116847e-07
		 55 -4.2423187096574111e-07 56 -4.2423186386031375e-07 57 -4.2423186741302743e-07
		 58 -4.2423187807116847e-07 59 -4.2423185853124323e-07 60 -4.2423186386031375e-07
		 61 -4.2423187762707926e-07 62 -4.2423187096574111e-07 63 -4.2423186386031375e-07
		 64 -4.2423187096574111e-07 65 -4.2423187096574111e-07 66 -4.2423188517659582e-07
		 67 -4.2423187096574111e-07 68 -4.2423188517659582e-07 69 -4.2423189938745054e-07
		 70 -4.2423185675488639e-07 71 -4.2423187096574111e-07 72 -4.2423187096574111e-07
		 73 -4.2423185675488639e-07 74 -4.2423188517659582e-07 75 -4.2423188517659582e-07
		 76 -4.2423187096574111e-07 77 -4.2423188517659582e-07 78 -4.2423187096574111e-07
		 79 -4.2423187096574111e-07 80 -4.2423188517659582e-07 81 -4.2423185675488639e-07
		 82 -4.2423185675488639e-07 83 -4.2423187096574111e-07 84 -4.2423188517659582e-07
		 85 -4.2423184254403168e-07 86 -4.2423188517659582e-07 87 -4.2423187096574111e-07
		 88 -4.2423186386031375e-07 89 -4.2423188517659582e-07 90 -4.2423186386031375e-07
		 91 -4.2423185675488639e-07 92 -4.2423187096574111e-07 93 -4.2423187807116847e-07
		 94 -4.2423186386031375e-07 95 -4.2423187807116847e-07 96 -4.2423188517659582e-07
		 97 -4.2423188517659582e-07 98 -4.2423186386031375e-07 99 -4.2423189228202318e-07
		 100 -4.2423185675488639e-07 101 -4.2423187807116847e-07 102 -4.2423189938745054e-07
		 103 -4.2423183543860432e-07 104 -4.2423187807116847e-07 105 -4.2423186386031375e-07
		 106 -4.2423187096574111e-07 107 -4.2423188517659582e-07 108 -4.2423187096574111e-07
		 109 -4.2423186386031375e-07 110 -4.2423187807116847e-07 111 -4.2423187807116847e-07
		 112 -4.2423187807116847e-07 113 -4.2423187096574111e-07 114 -4.2423187096574111e-07
		 115 -4.2423187096574111e-07 116 -4.2423185675488639e-07 117 -4.2423188517659582e-07
		 118 -4.2423187096574111e-07 119 -4.2423187096574111e-07 120 -4.2423187096574111e-07
		 121 -4.2423188517659582e-07 122 -4.2423188517659582e-07 123 -4.2423188517659582e-07
		 124 -4.2423188517659582e-07 125 -4.2423187096574111e-07 126 -4.2423188517659582e-07
		 127 -4.2423188517659582e-07 128 -4.2423185675488639e-07 129 -4.2423185675488639e-07
		 130 -4.2423185675488639e-07 131 -4.2423185675488639e-07 132 -4.2423188517659582e-07
		 133 -4.2423188517659582e-07 134 -4.2423187096574111e-07 135 -4.2423188517659582e-07
		 136 -4.2423188517659582e-07;
createNode animCurveTL -n "locator1_translateY";
	rename -uid "D6C16A92-4F18-D5C8-970F-2C9E42987E40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 9.6178750991821289 1 9.6178750991821005
		 2 9.6178750991821289 3 9.6178750991821573 4 9.6178750991821573 5 9.6178750991821289
		 6 9.6178750991821573 7 9.6178750991821289 8 9.6178750991820721 9 9.6178750991821573
		 10 9.6178750991821857 11 9.6178750991821005 12 9.6178750991821289 13 9.6178750991821005
		 14 9.6178750991821005 15 9.6178750991821005 16 9.6178750991821573 17 9.6178750991821289
		 18 9.6178750991821573 19 9.6178750991821289 20 9.6178750991821005 21 9.6178750991821005
		 22 9.6178750991821005 23 9.6178750991821005 24 9.6178750991821005 25 9.6178750991821289
		 26 9.6178750991821289 27 9.6178750991821005 28 9.6178750991821005 29 9.6178750991821289
		 30 9.6178750991821573 31 9.6178750991821573 32 9.6178750991821289 33 9.6178750991821573
		 34 9.6178750991821573 35 9.6178750991821005 36 9.6178750991821289 37 9.6178750991821005
		 38 9.6178750991821005 39 9.6178750991821005 40 9.6178750991821289 41 9.6178750991821005
		 42 9.6178750991821005 43 9.6178750991821573 44 9.6178750991821573 45 9.6178750991821289
		 46 9.6178750991821573 47 9.6178750991821005 48 9.6178750991821005 49 9.6178750991821289
		 50 9.6178750991821573 51 9.6178750991821289 52 9.6178750991821573 53 9.6178750991821289
		 54 9.6178750991821289 55 9.6178750991821005 56 9.6178750991820721 57 9.6178750991821573
		 58 9.6178750991821289 59 9.6178750991821289 60 9.6178750991821005 61 9.6178750991821289
		 62 9.6178750991821218 63 9.6178750991821467 64 9.6178750991821076 65 9.6178750991821005
		 66 9.6178750991820863 67 9.6178750991821431 68 9.6178750991820863 69 9.6178750991821573
		 70 9.6178750991820721 71 9.6178750991821147 72 9.6178750991821111 73 9.6178750991821396
		 74 9.6178750991821342 75 9.6178750991821218 76 9.6178750991820863 77 9.6178750991821218
		 78 9.6178750991821431 79 9.6178750991821147 80 9.6178750991821147 81 9.6178750991821147
		 82 9.6178750991821147 83 9.6178750991821289 84 9.6178750991821005 85 9.6178750991821573
		 86 9.6178750991821289 87 9.6178750991821289 88 9.6178750991820721 89 9.6178750991821573
		 90 9.6178750991820721 91 9.6178750991821573 92 9.6178750991821289 93 9.6178750991821289
		 94 9.6178750991821573 95 9.6178750991821005 96 9.6178750991821005 97 9.6178750991821573
		 98 9.6178750991821005 99 9.6178750991821005 100 9.6178750991821005 101 9.6178750991821289
		 102 9.6178750991821005 103 9.6178750991821573 104 9.6178750991821573 105 9.6178750991821573
		 106 9.6178750991821573 107 9.6178750991821289 108 9.6178750991821289 109 9.6178750991821289
		 110 9.6178750991821289 111 9.6178750991821289 112 9.6178750991821289 113 9.6178750991821005
		 114 9.6178750991821573 115 9.6178750991821289 116 9.6178750991820721 117 9.6178750991822142
		 118 9.6178750991821005 119 9.6178750991821289 120 9.6178750991821005 121 9.6178750991821289
		 122 9.6178750991821289 123 9.6178750991821005 124 9.6178750991821005 125 9.6178750991821289
		 126 9.6178750991821289 127 9.6178750991821289 128 9.6178750991821289 129 9.6178750991821857
		 130 9.6178750991821289 131 9.6178750991821289 132 9.6178750991821005 133 9.6178750991821573
		 134 9.6178750991821573 135 9.6178750991821005 136 9.6178750991821289;
createNode animCurveTL -n "locator1_translateZ";
	rename -uid "23418FD3-4AE4-EAB9-F757-85A2DDEB0673";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1.6850075721740652 1 1.685007572174074
		 2 1.685007572174074 3 1.685007572174074 4 1.68500757217407 5 1.685007572174074 6 1.6850075721740723
		 7 1.6850075721740758 8 1.6850075721740687 9 1.6850075721740758 10 1.6850075721740652
		 11 1.6850075721740865 12 1.6850075721740723 13 1.6850075721740723 14 1.6850075721740723
		 15 1.6850075721740652 16 1.6850075721740723 17 1.6850075721740794 18 1.6850075721740723
		 19 1.6850075721740794 20 1.6850075721740723 21 1.6850075721740865 22 1.6850075721740723
		 23 1.6850075721740865 24 1.6850075721740865 25 1.6850075721740581 26 1.6850075721740865
		 27 1.6850075721740865 28 1.6850075721740723 29 1.6850075721740723 30 1.6850075721740723
		 31 1.6850075721740865 32 1.6850075721740581 33 1.6850075721740581 34 1.6850075721740723
		 35 1.6850075721740723 36 1.6850075721740723 37 1.6850075721740723 38 1.6850075721740581
		 39 1.6850075721740865 40 1.6850075721740723 41 1.6850075721740705 42 1.6850075721740652
		 43 1.6850075721740865 44 1.6850075721740723 45 1.6850075721741007 46 1.6850075721740723
		 47 1.6850075721740723 48 1.6850075721740438 49 1.6850075721741007 50 1.6850075721740438
		 51 1.6850075721741007 52 1.6850075721740723 53 1.6850075721741291 54 1.6850075721740438
		 55 1.6850075721741007 56 1.6850075721740723 57 1.6850075721740723 58 1.6850075721740723
		 59 1.6850075721740723 60 1.6850075721740438 61 1.6850075721740723 62 1.6850075721741007
		 63 1.6850075721740723 64 1.6850075721741291 65 1.6850075721740723 66 1.6850075721740723
		 67 1.6850075721741291 68 1.6850075721740723 69 1.6850075721740723 70 1.6850075721740723
		 71 1.6850075721741007 72 1.6850075721740723 73 1.6850075721740723 74 1.6850075721741007
		 75 1.6850075721741007 76 1.6850075721741007 77 1.6850075721740723 78 1.6850075721741007
		 79 1.6850075721741291 80 1.6850075721741291 81 1.6850075721740723 82 1.6850075721741007
		 83 1.6850075721740723 84 1.6850075721741291 85 1.6850075721740723 86 1.6850075721740438
		 87 1.6850075721740438 88 1.6850075721740723 89 1.6850075721740723 90 1.6850075721741007
		 91 1.6850075721741007 92 1.6850075721741007 93 1.6850075721740723 94 1.6850075721740723
		 95 1.6850075721740438 96 1.6850075721741007 97 1.6850075721740438 98 1.6850075721740723
		 99 1.6850075721740723 100 1.6850075721740723 101 1.6850075721741007 102 1.6850075721741007
		 103 1.6850075721740723 104 1.6850075721740723 105 1.6850075721740438 106 1.6850075721741007
		 107 1.6850075721741007 108 1.6850075721741007 109 1.6850075721740723 110 1.6850075721740723
		 111 1.6850075721741007 112 1.6850075721740723 113 1.6850075721740723 114 1.6850075721740438
		 115 1.6850075721740438 116 1.6850075721741007 117 1.6850075721740723 118 1.6850075721741007
		 119 1.6850075721741007 120 1.6850075721740723 121 1.6850075721740723 122 1.6850075721740723
		 123 1.6850075721741007 124 1.6850075721740438 125 1.6850075721740723 126 1.6850075721741007
		 127 1.6850075721741007 128 1.6850075721741007 129 1.6850075721741007 130 1.6850075721741007
		 131 1.6850075721740723 132 1.6850075721740723 133 1.6850075721741007 134 1.6850075721740723
		 135 1.6850075721741007 136 1.6850075721740438;
createNode animCurveTA -n "locator1_rotateX";
	rename -uid "1104CF26-49E6-2CD4-67C7-8D94B609AB1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -20.54213714599609 1 -21.621177673339844
		 2 -22.903102874755856 3 -23.665578842163079 4 -24.160005569458004 5 -24.506526947021488
		 6 -24.645326614379886 7 -24.66927528381348 8 -24.402191162109375 9 -23.91969108581544
		 10 -23.454986572265636 11 -22.457248687744148 12 -20.977506637573242 13 -20.16905403137207
		 14 -20.321262359619144 15 -20.619977951049805 16 -20.514217376708981 17 -20.465353012084961
		 18 -21.255338668823242 19 -22.546802520751953 20 -23.539773941040039 21 -24.014049530029304
		 22 -23.966320037841797 23 -23.646595001220703 24 -23.591117858886729 25 -23.684186935424805
		 26 -23.0858268737793 27 -21.810901641845703 28 -20.494787216186527 29 -19.374544143676761
		 30 -18.706705093383793 31 -19.021379470825199 32 -19.86229133605957 33 -20.203756332397461
		 34 -19.970504760742191 35 -20.134902954101563 36 -20.092193603515632 37 -19.02069091796875
		 38 -19.788938522338871 39 -24.416049957275391 40 -30.489233016967784 41 -34.639011383056648
		 42 -34.563453674316406 43 -31.291696548461911 44 -26.845230102539063 45 -20.78108024597168
		 46 -13.800539970397951 47 -8.6871395111083967 48 -6.2910323143005362 49 -5.1322894096374521
		 50 -4.355658531188964 51 -3.9509897232055664 52 -3.6453382968902583 53 -3.0558526515960693
		 54 -3.3659799098968497 55 -5.9369673728942898 56 -10.502321243286133 57 -15.573457717895501
		 58 -20.170860290527347 59 -24.653312683105458 60 -29.907930374145497 61 -36.62255859375
		 62 -44.092136383056634 63 -50.50325012207032 64 -55.303180694580085 65 -59.392032623291016
		 66 -61.709541320800788 67 -61.625396728515611 68 -60.69892883300782 69 -58.654418945312486
		 70 -53.763462066650398 71 -49.156669616699226 72 -46.254169464111321 73 -43.705997467041023
		 74 -40.964927673339837 75 -38.265155792236314 76 -35.605895996093757 77 -32.754859924316406
		 78 -29.563108444213874 79 -26.342283248901367 80 -23.101564407348636 81 -19.086137771606445
		 82 -14.111885070800779 83 -9.4433412551879865 84 -6.858980655670166 85 -6.7976202964782715
		 86 -7.8917255401611337 87 -8.7307081222534162 88 -9.2066650390625018 89 -9.7507476806640625
		 90 -10.401825904846193 91 -11.171612739562988 92 -12.385668754577637 93 -13.925172805786136
		 94 -15.246950149536133 95 -16.258821487426761 96 -17.153116226196289 97 -17.961601257324212
		 98 -18.649467468261719 99 -18.964872360229492 100 -18.981208801269535 101 -19.022628784179688
		 102 -19.223035812377933 103 -19.51142692565918 104 -19.605892181396484 105 -19.314496994018555
		 106 -18.996810913085938 107 -18.877664566040043 108 -18.768432617187496 109 -18.68735313415527
		 110 -18.600849151611332 111 -18.386362075805657 112 -18.165813446044922 113 -17.962039947509773
		 114 -17.773042678833008 115 -17.696773529052741 116 -17.782535552978526 117 -17.73209381103516
		 118 -17.46862983703614 119 -17.278009414672852 120 -17.27924919128418 121 -17.370943069458008
		 122 -17.302791595458984 123 -17.063489913940433 124 -17.036882400512702 125 -17.255508422851566
		 126 -17.22435379028321 127 -16.797397613525387 128 -16.456960678100586 129 -16.446390151977546
		 130 -16.498386383056644 131 -16.445650100708004 132 -16.385234832763675 133 -16.475622177124023
		 134 -16.609165191650394 135 -16.648859024047855 136 -16.715118408203121;
createNode animCurveTA -n "locator1_rotateY";
	rename -uid "DA6BB6C7-4AD2-ED21-A569-4EA9FA0E2E18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -0.82360243797302235 1 -0.90120851993560769
		 2 -1.0140138864517212 3 -0.99393028020858798 4 -0.90680038928985551 5 -0.74273210763931274
		 6 -0.60967320203781128 7 -0.70127040147781405 8 -0.88906413316726696 9 -1.1353050470352173
		 10 -1.5220962762832648 11 -1.7676935195922858 12 -1.5589913129806516 13 -0.81704318523406971
		 14 0.19374354183673864 15 1.0651875734329224 16 1.8582669496536257 17 2.8361103534698486
		 18 3.6570637226104723 19 4.028231143951416 20 4.1247801780700675 21 4.2093000411987314
		 22 4.3309946060180664 23 4.3062992095947283 24 4.1272568702697754 25 3.9820141792297368
		 26 3.6928527355194101 27 2.9989864826202401 28 2.279686450958252 29 2.0341346263885498
		 30 1.9573202133178709 31 1.5664274692535407 32 1.0304757356643677 33 0.53269869089126565
		 34 0.42670336365699768 35 2.2457623481750488 36 7.2250356674194318 37 13.312652587890625
		 38 19.480037689208977 39 26.454048156738288 40 32.358833312988281 41 33.885654449462884
		 42 29.467933654785163 43 21.657455444335938 44 15.199140548706055 45 11.235617637634276
		 46 7.9538516998291033 47 4.0513920783996582 48 -0.44338104128837597 49 -4.6536965370178223
		 50 -8.3718738555908203 51 -11.22575569152832 52 -12.073156356811522 53 -11.82073497772217
		 54 -11.027099609375 55 -9.7339792251586932 56 -7.9611110687255842 57 -6.3626861572265616
		 58 -4.8567271232604989 59 -2.3138513565063468 60 1.2474051713943481 61 4.6760368347167969
		 62 7.4808497428894025 63 10.211525917053223 64 13.543619155883786 65 17.037542343139652
		 66 19.912908554077152 67 21.691818237304688 68 21.679943084716804 69 21.517063140869137
		 70 23.273183822631829 71 24.252222061157227 72 23.773160934448232 73 23.383523941040043
		 74 23.107297897338867 75 22.768241882324215 76 22.672485351562504 77 22.897392272949215
		 78 23.050838470458988 79 22.952533721923832 80 22.830818176269535 81 23.094249725341797
		 82 24.106779098510742 83 25.197788238525387 84 25.470903396606442 85 25.300178527832031
		 86 24.750446319580078 87 23.533061981201168 88 21.997558593750004 89 20.707082748413082
		 90 19.833248138427738 91 19.297744750976566 92 18.945261001586925 93 18.646575927734375
		 94 18.461042404174805 95 18.341016769409187 96 18.262435913085938 97 18.318218231201168
		 98 18.695722579956058 99 19.311704635620121 100 19.902090072631839 101 20.378021240234371
		 102 20.789564132690426 103 21.140098571777344 104 21.437780380249027 105 21.949424743652344
		 106 22.729099273681641 107 23.26657867431641 108 23.578802108764648 109 24.135246276855469
		 110 24.790184020996104 111 25.32181358337402 112 25.785888671875004 113 26.164806365966808
		 114 26.466676712036133 115 26.737974166870124 116 26.963294982910163 117 27.142192840576179
		 118 27.324205398559577 119 27.486490249633793 120 27.501604080200195 121 27.393976211547859
		 122 27.353279113769521 123 27.292625427246094 124 27.181032180786133 125 27.142021179199222
		 126 27.056270599365241 127 26.818830490112301 128 26.596984863281246 129 26.481828689575202
		 130 26.429697036743171 131 26.409635543823239 132 26.437635421752937 133 26.484535217285163
		 134 26.449943542480472 135 26.444475173950195 136 26.546833038330082;
createNode animCurveTA -n "locator1_rotateZ";
	rename -uid "8C012584-421B-5F8B-AC5C-6E98D23FA7CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 5.7174453735351563 1 5.2418441772460946
		 2 4.6032195091247559 3 4.2575850486755362 4 4.4465551376342773 5 4.4702644348144531
		 6 4.1912770271301287 7 4.1981701850891113 8 4.4854049682617188 9 4.9992628097534197
		 10 5.4175400733947772 11 5.0439686775207537 12 3.9259226322174068 13 2.6896500587463379
		 14 1.7796926498413086 15 1.5314006805419917 16 1.7626496553421021 17 1.8898954391479501
		 18 1.8495200872421269 19 1.843254566192627 20 1.9006624221801753 21 1.8982208967208865
		 22 1.5980983972549441 23 1.3853356838226321 24 1.5662792921066286 25 1.7479203939437864
		 26 2.1245534420013428 27 2.5467851161956783 28 2.33628249168396 29 2.3296411037445068
		 30 3.1057569980621342 31 4.3550858497619638 32 5.7125973701477051 33 6.0782375335693342
		 34 5.4767260551452637 35 5.2995967864990243 36 4.698477268218995 37 2.3384425640106192
		 38 0.19965451955795357 39 -0.1512709707021723 40 1.9714796543121331 41 6.5560665130615225
		 42 9.9073171615600639 43 10.868848800659178 44 11.082835197448732 45 11.324595451354977
		 46 11.256742477416994 47 11.294821739196777 48 11.609541893005371 49 11.071896553039554
		 50 8.911405563354494 51 6.2842531204223633 52 5.1380691528320313 53 4.4154129028320321
		 54 3.6932792663574228 55 3.9318373203277601 56 4.2444953918457031 57 4.3390240669250497
		 58 4.4231758117675781 59 3.475544691085815 60 -0.066072136163711465 61 -5.6932206153869647
		 62 -10.828193664550778 63 -14.518503189086914 64 -17.439599990844734 65 -19.64952278137207
		 66 -20.67395210266114 67 -21.004301071166989 68 -20.998899459838871 69 -19.759738922119141
		 70 -16.659351348876957 71 -13.773745536804201 72 -12.653920173645016 73 -11.939609527587896
		 74 -10.671069145202635 75 -9.2251195907592738 76 -7.9508810043334952 77 -6.8662705421447754
		 78 -5.8032584190368643 79 -4.680727481842041 80 -3.7949490547180176 81 -2.9456751346588135
		 82 -1.1873130798339844 83 1.201741695404053 84 2.2594153881072989 85 1.5097388029098513
		 86 0.47843503952026351 87 0.17668205499649067 88 0.20809906721115093 89 0.2000152319669723
		 90 0.056543163955211403 91 -0.37565323710441545 92 -0.91054636240005493 93 -1.3492956161499023
		 94 -1.7059379816055293 95 -2.0387895107269287 96 -2.3224182128906246 97 -2.6794042587280265
		 98 -3.0487079620361319 99 -3.2685985565185547 100 -3.3818223476409917 101 -3.5653321743011466
		 102 -3.8660376071929932 103 -4.1415858268737802 104 -4.2795691490173349 105 -4.0070939064025888
		 106 -3.3788342475891104 107 -3.1590056419372559 108 -3.3167765140533438 109 -3.2700128555297847
		 110 -3.1139140129089373 111 -2.9945461750030491 112 -2.8429965972900391 113 -2.5821747779846205
		 114 -2.3758952617645268 115 -2.3197736740112309 116 -2.4253404140472434 117 -2.46535301208496
		 118 -2.2920362949371351 119 -2.1865439414978014 120 -2.385933637619019 121 -2.7164874076843266
		 122 -2.8319106101989728 123 -2.8032069206237802 124 -2.9254345893859872 125 -3.2364892959594731
		 126 -3.436893463134767 127 -3.4099848270416238 128 -3.2648980617523184 129 -3.1684637069702153
		 130 -3.1547641754150404 131 -3.0910327434539777 132 -2.988907337188722 133 -2.9904618263244638
		 134 -3.090735912322998 135 -3.1856117248535152 136 -3.3167781829833998;
createNode animCurveTU -n "locator1_scaleX";
	rename -uid "6CEFB815-4347-7403-27E0-538789BEC9E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999967 1 0.99999999999999967
		 2 1.0000000000000002 3 1 4 0.99999999999999989 5 0.99999999999999989 6 1 7 1.0000000000000002
		 8 1 9 1 10 0.99999999999999989 11 0.99999999999999989 12 1 13 1 14 0.99999999999999978
		 15 1 16 1 17 1 18 0.99999999999999989 19 0.99999999999999989 20 0.99999999999999978
		 21 0.99999999999999978 22 0.99999999999999989 23 1 24 0.99999999999999978 25 0.99999999999999978
		 26 1 27 1 28 1 29 1.0000000000000002 30 0.99999999999999978 31 0.99999999999999978
		 32 1 33 1 34 1.0000000000000002 35 0.99999999999999978 36 0.99999999999999989 37 0.99999999999999967
		 38 1 39 0.99999999999999967 40 1 41 1.0000000000000002 42 0.99999999999999956 43 1.0000000000000004
		 44 1.0000000000000002 45 0.99999999999999978 46 0.99999999999999978 47 0.99999999999999989
		 48 0.99999999999999978 49 1 50 0.99999999999999989 51 0.99999999999999978 52 1.0000000000000004
		 53 0.99999999999999978 54 0.99999999999999944 55 0.99999999999999978 56 1.0000000000000002
		 57 1 58 1 59 0.99999999999999967 60 1 61 0.99999999999999956 62 0.99999999999999989
		 63 1.0000000000000002 64 0.99999999999999944 65 1 66 0.99999999999999989 67 1.0000000000000002
		 68 1 69 1.0000000000000004 70 0.99999999999999956 71 1 72 0.99999999999999978 73 1.0000000000000002
		 74 1 75 1.0000000000000002 76 1 77 1.0000000000000002 78 0.99999999999999956 79 0.99999999999999944
		 80 0.99999999999999956 81 0.99999999999999967 82 1 83 0.99999999999999989 84 0.99999999999999944
		 85 1.0000000000000004 86 0.99999999999999956 87 1 88 0.99999999999999944 89 0.99999999999999978
		 90 0.99999999999999978 91 0.99999999999999944 92 1 93 0.99999999999999989 94 1.0000000000000002
		 95 1 96 0.99999999999999989 97 0.99999999999999978 98 1.0000000000000002 99 1.0000000000000004
		 100 0.99999999999999978 101 0.99999999999999967 102 1.0000000000000002 103 0.99999999999999967
		 104 0.99999999999999922 105 0.99999999999999956 106 0.99999999999999956 107 1 108 1.0000000000000002
		 109 1.0000000000000004 110 1.0000000000000002 111 1.0000000000000002 112 0.99999999999999989
		 113 0.99999999999999967 114 0.99999999999999978 115 0.99999999999999967 116 1 117 1
		 118 0.99999999999999956 119 1 120 0.99999999999999978 121 0.99999999999999989 122 0.99999999999999933
		 123 1.0000000000000004 124 0.99999999999999989 125 0.99999999999999989 126 1.0000000000000002
		 127 0.99999999999999989 128 0.99999999999999967 129 0.99999999999999944 130 0.99999999999999978
		 131 0.99999999999999944 132 1 133 0.99999999999999956 134 1.0000000000000002 135 0.99999999999999956
		 136 1.0000000000000002;
createNode animCurveTU -n "locator1_scaleY";
	rename -uid "EA521403-406C-E5A0-3CF9-98B8C89525FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 0.99999999999999989
		 3 1.0000000000000002 4 0.99999999999999978 5 0.99999999999999956 6 0.99999999999999989
		 7 0.99999999999999989 8 0.99999999999999989 9 1 10 0.99999999999999989 11 1 12 0.99999999999999967
		 13 0.99999999999999989 14 0.99999999999999989 15 0.99999999999999989 16 1.0000000000000002
		 17 1 18 1.0000000000000002 19 0.99999999999999967 20 0.99999999999999978 21 0.99999999999999989
		 22 0.99999999999999989 23 1 24 0.99999999999999967 25 0.99999999999999978 26 0.99999999999999989
		 27 1.0000000000000002 28 0.99999999999999989 29 1 30 0.99999999999999989 31 1.0000000000000002
		 32 1 33 1 34 1 35 0.99999999999999978 36 1 37 0.99999999999999989 38 0.99999999999999978
		 39 1 40 1.0000000000000002 41 1.0000000000000002 42 1 43 1 44 1.0000000000000002
		 45 1 46 1 47 0.99999999999999989 48 0.99999999999999989 49 1.0000000000000002 50 1.0000000000000002
		 51 0.99999999999999989 52 0.99999999999999989 53 0.99999999999999967 54 0.99999999999999989
		 55 0.99999999999999978 56 0.99999999999999978 57 0.99999999999999978 58 0.99999999999999989
		 59 0.99999999999999978 60 0.99999999999999978 61 0.99999999999999978 62 0.99999999999999978
		 63 1.0000000000000002 64 0.99999999999999989 65 1 66 0.99999999999999978 67 1 68 1
		 69 1.0000000000000002 70 1 71 0.99999999999999989 72 1 73 1 74 1 75 1 76 0.99999999999999967
		 77 1.0000000000000002 78 0.99999999999999978 79 1 80 0.99999999999999978 81 0.99999999999999978
		 82 1 83 0.99999999999999978 84 0.99999999999999967 85 1.0000000000000002 86 1 87 0.99999999999999989
		 88 0.99999999999999989 89 1 90 0.99999999999999989 91 1 92 1 93 0.99999999999999989
		 94 1 95 0.99999999999999989 96 0.99999999999999989 97 1 98 1 99 1 100 0.99999999999999978
		 101 0.99999999999999967 102 0.99999999999999989 103 1 104 0.99999999999999978 105 1
		 106 1 107 1 108 0.99999999999999956 109 1 110 0.99999999999999989 111 1.0000000000000002
		 112 0.99999999999999989 113 0.99999999999999978 114 1 115 0.99999999999999978 116 0.99999999999999978
		 117 1 118 0.99999999999999967 119 0.99999999999999978 120 0.99999999999999989 121 0.99999999999999978
		 122 0.99999999999999978 123 1 124 1 125 1 126 1 127 0.99999999999999978 128 0.99999999999999989
		 129 1 130 0.99999999999999967 131 0.99999999999999978 132 1 133 0.99999999999999989
		 134 0.99999999999999989 135 0.99999999999999989 136 1;
createNode animCurveTU -n "locator1_scaleZ";
	rename -uid "6B7CD6CE-49DA-8326-CC13-71A29E7DD1B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999989 1 0.99999999999999956
		 2 1.0000000000000002 3 1 4 1 5 1 6 0.99999999999999967 7 0.99999999999999978 8 0.99999999999999978
		 9 1 10 0.99999999999999967 11 1 12 0.99999999999999989 13 0.99999999999999989 14 0.99999999999999978
		 15 0.99999999999999989 16 0.99999999999999989 17 1 18 1.0000000000000002 19 1 20 1
		 21 0.99999999999999967 22 0.99999999999999989 23 1 24 0.99999999999999956 25 1 26 0.99999999999999978
		 27 0.99999999999999989 28 1.0000000000000002 29 1.0000000000000002 30 1.0000000000000002
		 31 1 32 0.99999999999999978 33 0.99999999999999978 34 1 35 0.99999999999999978 36 0.99999999999999989
		 37 1 38 1 39 1.0000000000000002 40 0.99999999999999989 41 1.0000000000000004 42 0.99999999999999944
		 43 1.0000000000000002 44 0.99999999999999989 45 1 46 1.0000000000000002 47 1 48 1
		 49 1.0000000000000002 50 0.99999999999999967 51 0.99999999999999967 52 1 53 0.99999999999999967
		 54 0.99999999999999944 55 0.99999999999999978 56 1.0000000000000007 57 0.99999999999999989
		 58 1.0000000000000002 59 0.99999999999999956 60 0.99999999999999989 61 0.99999999999999944
		 62 0.99999999999999978 63 1.0000000000000002 64 0.99999999999999989 65 1.0000000000000002
		 66 0.99999999999999978 67 0.99999999999999989 68 1.0000000000000002 69 1 70 1 71 0.99999999999999989
		 72 0.99999999999999989 73 0.99999999999999989 74 1 75 1.0000000000000002 76 0.99999999999999978
		 77 1.0000000000000002 78 0.99999999999999989 79 0.99999999999999933 80 0.99999999999999978
		 81 1.0000000000000002 82 0.99999999999999978 83 0.99999999999999978 84 0.99999999999999956
		 85 1.0000000000000004 86 0.99999999999999967 87 0.99999999999999989 88 0.99999999999999956
		 89 0.99999999999999978 90 0.99999999999999978 91 1 92 0.99999999999999989 93 1.0000000000000002
		 94 1 95 1.0000000000000002 96 1 97 1 98 1 99 1.0000000000000002 100 0.99999999999999978
		 101 0.99999999999999933 102 0.99999999999999989 103 0.99999999999999989 104 0.99999999999999978
		 105 0.99999999999999967 106 0.99999999999999978 107 1 108 1.0000000000000002 109 1.0000000000000007
		 110 1 111 1.0000000000000004 112 1 113 0.99999999999999967 114 0.99999999999999989
		 115 0.99999999999999978 116 0.99999999999999989 117 1 118 1 119 1 120 0.99999999999999967
		 121 0.99999999999999956 122 0.99999999999999933 123 0.99999999999999978 124 0.99999999999999967
		 125 1 126 1.0000000000000004 127 0.99999999999999967 128 0.99999999999999989 129 0.99999999999999944
		 130 0.99999999999999967 131 0.99999999999999967 132 1.0000000000000002 133 0.99999999999999978
		 134 1.0000000000000004 135 0.99999999999999944 136 1;
createNode animCurveTU -n "locator2_visibility";
	rename -uid "86F632D5-4713-75DB-C04A-D69C43251239";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1
		 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1
		 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1
		 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTL -n "locator2_translateX";
	rename -uid "55BA25C0-43D9-DF31-52E4-459AAB754597";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -1.6975196240570192 1 -1.5349180190548788
		 2 -1.3174800824002713 3 -1.2056681675357943 4 -1.2644026788881693 5 -1.2819268182174177
		 6 -1.2083172969106624 7 -1.2020483244808435 8 -1.2748582016987982 9 -1.4145331339307177
		 10 -1.5153463012221646 11 -1.3986443819829244 12 -1.0946655525329367 13 -0.7736249063206051
		 14 -0.55943942072562391 15 -0.54156579443553376 16 -0.66497564113680807 17 -0.76851897365601296
		 18 -0.8242578764201669 19 -0.87310665313552072 20 -0.91707479777479151 21 -0.93252537589957285
		 22 -0.85124832494755864 23 -0.77824723910833704 24 -0.81704521569574595 25 -0.86171624978615391
		 26 -0.94168667235469705 27 -0.99815180566481132 28 -0.86882400767447443 29 -0.84112949687556871
		 30 -1.070502879063266 31 -1.434597776070289 32 -1.8200374492394111 33 -1.8992983361009959
		 34 -1.7094203678276285 35 -1.7716815583848247 36 -1.9060275784767526 37 -1.4951551337501456
		 38 -1.261678680824545 39 -2.1863133030894346 40 -4.2167162284445965 41 -6.272080982152346
		 42 -6.6427038142138457 43 -5.6768212659840742 44 -4.7563567609081758 45 -4.1966749258359357
		 46 -3.7336471709536454 47 -3.5350578238112575 48 -3.6252346298101727 49 -3.5300324873523223
		 50 -2.9582682088186871 51 -2.2264181878633877 52 -1.9083996012949385 53 -1.713440127331495
		 54 -1.4482712545496312 55 -1.3562292122725523 56 -1.233876836288168 57 -1.097515382478857
		 58 -1.0446986776234013 59 -0.84213133121823525 60 -0.12530107196364781 61 0.87757742173531073
		 62 1.3939279861054104 63 1.2635202478388337 64 0.7324809481848007 65 -0.069422272582585265
		 66 -0.82394377166188804 67 -1.1348720040913349 68 -0.98964987678040472 69 -0.9082882370615124
		 70 -1.2441208278351752 71 -1.4626238489873344 72 -1.2514454268245174 73 -1.0203405570514121
		 74 -0.94682201145434419 75 -0.94021484563116076 76 -0.94556389455968315 77 -0.92522291520558042
		 78 -0.85228760129561465 79 -0.77569684205253964 80 -0.63401068085181578 81 -0.41639373438037808
		 82 -0.37893014263804048 83 -0.53624163547895876 84 -0.52089063116751788 85 -0.27840299209638886
		 86 -0.10239796433602066 87 -0.11505888151580734 88 -0.17724522418253486 89 -0.22885818072563779
		 90 -0.24644183949825305 91 -0.18472439196396095 92 -0.13550383467391214 93 -0.14659125266404516
		 94 -0.16158048242417777 95 -0.15394774753244889 96 -0.15105208583896967 97 -0.12329880216711331
		 98 -0.09782033137959445 99 -0.095908050036406678 100 -0.095068781259193713 101 -0.068971881736999308
		 102 -0.021213321012986341 103 0.011223303708348453 104 0.02584787835314728 105 -0.052905432334853231
		 106 -0.25160952029929007 107 -0.33367554071978844 108 -0.28755581909756245 109 -0.32067368465912693
		 110 -0.39143836637256868 111 -0.42661463748058281 112 -0.46647251956035518 113 -0.53751528853516817
		 114 -0.58938579193821994 115 -0.60862062722365806 116 -0.59840722227109211 117 -0.58702050435120157
		 118 -0.61121948996631659 119 -0.62361345525003742 120 -0.56245081051173429 121 -0.46823556644913822
		 122 -0.42067592036444523 123 -0.39235675459036656 124 -0.34571849030798774 125 -0.27875489262046926
		 126 -0.20818257521293049 127 -0.14527962369854208 128 -0.13303960260158476 129 -0.15698985039935565
		 130 -0.16648726870965902 131 -0.17812511713324852 132 -0.20257374581017018 133 -0.21668165156863495
		 134 -0.20284134752277794 135 -0.17865123383751325 136 -0.1513539619506048;
createNode animCurveTL -n "locator2_translateY";
	rename -uid "51CEBC7F-400A-6F4B-6F40-AFA37F4B332D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 27.125286876667843 1 27.064781192248802
		 2 26.98485438599397 3 26.930719857476134 4 26.88447199683867 5 26.85289328415891
		 6 26.845887081591343 7 26.844223558181369 8 26.862638537841974 9 26.893519996985901
		 10 26.924153034682064 11 27.013859953710039 12 27.143867052113706 13 27.21495666165336
		 14 27.213053493435183 15 27.193887885092437 16 27.197032427117421 17 27.196638835511692
		 18 27.140785788120127 19 27.043472273635018 20 26.962038988188596 21 26.921645545823424
		 22 26.930099410435218 23 26.960289915949289 24 26.962801821525545 25 26.952679353786976
		 26 26.996999992522603 27 27.091077834557808 28 27.189652436432056 29 27.262100896502147
		 30 27.288926743670714 31 27.244727011967399 32 27.157460329050537 33 27.12694242161902
		 34 27.161582515954905 35 27.145371204079908 36 27.139597444432468 37 27.256494092837784
		 38 27.251850230600525 39 26.914144366784029 40 26.145911577602647 41 25.129924092356703
		 42 24.839217804312852 43 25.396783877601308 44 26.072995264106225 45 26.69966182220648
		 46 27.143698985751115 47 27.268569483023526 48 27.239980324092045 49 27.242994432229722
		 50 27.333487509069698 51 27.432141791712297 52 27.462132636002423 53 27.466562297435928
		 54 27.49791338995243 55 27.55407065529468 56 27.563658723571393 57 27.441031897171996
		 58 27.203564092383516 59 26.868091212697166 60 26.349595099523626 61 25.449092259689223
		 62 24.209716478910401 63 23.056027822345474 64 22.245081749022695 65 21.63671725699399
		 66 21.386158819958695 67 21.558890056269576 68 21.751307339176506 69 22.137218088218034
		 70 23.158810056192621 71 23.985808793220727 72 24.437887520900201 73 24.822497423774035
		 74 25.209970205267602 75 25.563352944561849 76 25.894581603300921 77 26.228640281595908
		 78 26.562127032494573 79 26.850906189448395 80 27.098990787422807 81 27.343778029612864
		 82 27.537355282224283 83 27.608439934158781 84 27.607693655953511 85 27.612674751591527
		 86 27.619003102330169 87 27.618707399371459 88 27.616591587059645 89 27.612779690484558
		 90 27.606736790613922 91 27.597889674606307 92 27.577276845011198 93 27.539967442202453
		 94 27.4984946271735 95 27.461052469192367 96 27.423738871937928 97 27.387126932515997
		 98 27.354529676368145 99 27.340377265870558 100 27.341595998082539 101 27.341289377154794
		 102 27.332568027851693 103 27.318777963686586 104 27.31496189655843 105 27.332338859457735
		 106 27.349864142146004 107 27.356491726072647 108 27.363805588551031 109 27.369267208447496
		 110 27.374454400458433 111 27.385498883282565 112 27.396025443143515 113 27.404189308205105
		 114 27.411557450849671 115 27.414994327978945 116 27.412598139058616 117 27.415674986070712
		 118 27.426082827429497 119 27.433645634246915 120 27.435681789284359 121 27.434491518461471
		 122 27.43820513106408 123 27.447849581300005 124 27.449486226919674 125 27.442155760947401
		 126 27.444058959591786 127 27.460166252621235 128 27.472062923655614 129 27.471950215865547
		 130 27.469862102655355 131 27.471593297250877 132 27.473560142001219 133 27.470284515943575
		 134 27.465520323412875 135 27.464311428279188 136 27.462403815889928;
createNode animCurveTL -n "locator2_translateZ";
	rename -uid "2EAEF6F1-478E-3B19-C654-9C8FEAF29018";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -2.1452483128841209 1 -2.4756888217077186
		 2 -2.8662753817857105 3 -3.0976350439132929 4 -3.2473161436319704 5 -3.3521257007469085
		 6 -3.3941136307909563 7 -3.4012384246182243 8 -3.3204664630334335 9 -3.1743225569101234
		 10 -3.0328700881264297 11 -2.7292199645220734 12 -2.2777204083849085 13 -2.0306517730420026
		 14 -2.0777871350692365 15 -2.1688710227686272 16 -2.1350623651239005 17 -2.1174052758398361
		 18 -2.3560441925600841 19 -2.7476155058682963 20 -3.0479462951184075 21 -3.1906282089015292
		 22 -3.1754620690878426 23 -3.0791165806532632 24 -3.0634504439110088 25 -3.0924296085503471
		 26 -2.9129423706825435 27 -2.5283970741241291 28 -2.1280863836851012 29 -1.7842425804648343
		 30 -1.5784042923110064 31 -1.6762304152470477 32 -1.9360853453066937 33 -2.0415360899326629
		 34 -1.9698675633613902 35 -2.0176840132708662 36 -1.978079277531009 37 -1.5869232211802711
		 38 -1.7080718207378425 39 -2.8006366562055831 40 -4.0687057261880142 41 -4.9557183093506314
		 42 -5.2610068714425893 43 -4.8618727244420796 44 -3.8528614657965363 45 -2.1441417069661668
		 46 -0.03757124834703518 47 1.5498940082622426 48 2.3022458747388157 49 2.6627298509522745
		 50 2.8964642914010028 51 3.010475366743691 52 3.1000638487452932 53 3.2820011250661878
		 54 3.1912084378899976 55 2.4029429262439805 56 0.98622446446719891 57 -0.59368534174333831
		 58 -2.0182405857275398 59 -3.3926649554481685 60 -4.9554550851334227 61 -6.8393292974233475
		 62 -8.7647305805716087 63 -10.226393085407466 64 -11.124325821353011 65 -11.716653239748496
		 66 -11.912437568468192 67 -11.738335044964401 68 -11.576301366380221 69 -11.218595145562887
		 70 -10.111481042519387 71 -9.0613924206751904 72 -8.4571330278596974 73 -7.8983250791077637
		 74 -7.2621706315949837 75 -6.6167772870921624 76 -5.9462854917569814 77 -5.1916443836946087
		 78 -4.3339484596885711 79 -3.461139844538792 80 -2.5659363246670353 81 -1.4264037856273433
		 82 0.0085407626866924602 83 1.3474857105040599 84 2.0812403472013159 85 2.0992251540056657
		 86 1.7889502645852815 87 1.5482714134105322 88 1.4080819591646616 89 1.2457677715398177
		 90 1.0509567850728558 91 0.82080178156317629 92 0.45886464293815266 93 6.9620046986074158e-05
		 94 -0.39326957615227798 95 -0.69390400441881184 96 -0.95890948908783002 97 -1.1960313929921824
		 98 -1.3912587362908653 99 -1.4718290413175055 100 -1.4650048453597151 101 -1.4674086431515718
		 102 -1.516726829864723 103 -1.5921574426756138 104 -1.6126202838202346 105 -1.5176278225040392
		 106 -1.4093673514949501 107 -1.3632771596193152 108 -1.325168782562514 109 -1.2894075919217585
		 110 -1.2497098895562146 111 -1.1770623265128108 112 -1.1045574220551941 113 -1.0389607378114079
		 114 -0.97946085164585384 115 -0.95204140912025537 116 -0.97048484231197563 117 -0.95234438330180637
		 118 -0.87547040791415043 119 -0.81925394665864815 120 -0.81925140851603828 121 -0.84695489696014192
		 122 -0.82910626912365615 123 -0.76447506754740857 124 -0.75958285020311678 125 -0.82082832872202971
		 126 -0.81413786019459167 127 -0.70108527500443074 128 -0.61111446959216664 129 -0.61047816577826097
		 130 -0.62599672978717535 131 -0.61171113567209545 132 -0.59432882824521016 133 -0.61856052694813002
		 134 -0.6564266539102448 135 -0.6675852453268476 136 -0.68391321807118288;
createNode animCurveTA -n "locator2_rotateX";
	rename -uid "0B1E2F02-44A8-EB19-AB2E-4E915A03ABE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -20.54213714599609 1 -21.621177673339837
		 2 -22.903102874755856 3 -23.665578842163072 4 -24.160005569458004 5 -24.506526947021499
		 6 -24.645326614379869 7 -24.669275283813491 8 -24.402191162109375 9 -23.919691085815447
		 10 -23.454986572265639 11 -22.457248687744155 12 -20.977506637573235 13 -20.16905403137207
		 14 -20.321262359619141 15 -20.619977951049801 16 -20.514217376708974 17 -20.465353012084957
		 18 -21.255338668823242 19 -22.546802520751964 20 -23.539773941040053 21 -24.014049530029308
		 22 -23.966320037841797 23 -23.646595001220707 24 -23.591117858886733 25 -23.684186935424808
		 26 -23.085826873779297 27 -21.810901641845696 28 -20.494787216186538 29 -19.374544143676776
		 30 -18.706705093383803 31 -19.021379470825199 32 -19.862291336059563 33 -20.203756332397454
		 34 -19.970504760742191 35 -20.134902954101566 36 -20.092193603515636 37 -19.02069091796875
		 38 -19.788938522338881 39 -24.416049957275401 40 -30.489233016967763 41 -34.639011383056648
		 42 -34.56345367431642 43 -31.291696548461854 44 -26.845230102539052 45 -20.781080245971662
		 46 -13.800539970397953 47 -8.6871395111083753 48 -6.2910323143005087 49 -5.1322894096374263
		 50 -4.3556585311889178 51 -3.9509897232055273 52 -3.6453382968902419 53 -3.0558526515960591
		 54 -3.3659799098968821 55 -5.9369673728942862 56 -10.502321243286168 57 -15.573457717895494
		 58 -20.170860290527326 59 -24.653312683105444 60 -29.90793037414549 61 -36.622558593749964
		 62 -44.092136383056619 63 -50.50325012207032 64 -55.303180694580071 65 -59.392032623291001
		 66 -61.709541320800781 67 -61.625396728515589 68 -60.69892883300782 69 -58.654418945312457
		 70 -53.763462066650398 71 -49.15666961669924 72 -46.254169464111335 73 -43.705997467040987
		 74 -40.964927673339837 75 -38.265155792236321 76 -35.605895996093778 77 -32.754859924316413
		 78 -29.563108444213892 79 -26.342283248901349 80 -23.101564407348611 81 -19.086137771606445
		 82 -14.111885070800778 83 -9.4433412551879794 84 -6.8589806556701385 85 -6.7976202964782697
		 86 -7.8917255401611657 87 -8.7307081222534162 88 -9.2066650390624627 89 -9.7507476806640767
		 90 -10.401825904846227 91 -11.171612739562995 92 -12.385668754577623 93 -13.925172805786154
		 94 -15.246950149536135 95 -16.258821487426719 96 -17.153116226196321 97 -17.961601257324222
		 98 -18.649467468261712 99 -18.964872360229474 100 -18.98120880126951 101 -19.02262878417968
		 102 -19.223035812377919 103 -19.511426925659187 104 -19.60589218139647 105 -19.31449699401853
		 106 -18.996810913085909 107 -18.877664566040032 108 -18.768432617187507 109 -18.68735313415527
		 110 -18.600849151611339 111 -18.386362075805636 112 -18.165813446044901 113 -17.962039947509773
		 114 -17.773042678833001 115 -17.696773529052724 116 -17.782535552978512 117 -17.732093811035146
		 118 -17.468629837036143 119 -17.278009414672912 120 -17.279249191284197 121 -17.370943069457969
		 122 -17.302791595458988 123 -17.063489913940412 124 -17.036882400512695 125 -17.255508422851527
		 126 -17.224353790283224 127 -16.797397613525394 128 -16.456960678100607 129 -16.446390151977539
		 130 -16.498386383056634 131 -16.445650100707983 132 -16.38523483276369 133 -16.47562217712402
		 134 -16.60916519165038 135 -16.648859024047827 136 -16.7151184082031;
createNode animCurveTA -n "locator2_rotateY";
	rename -uid "0E6A1039-4285-E542-109F-9892AD16C8C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -0.82360243797302135 1 -0.90120851993560847
		 2 -1.0140138864517201 3 -0.9939302802085862 4 -0.90680038928985607 5 -0.74273210763931063
		 6 -0.60967320203781461 7 -0.70127040147781416 8 -0.8890641331672674 9 -1.1353050470352193
		 10 -1.5220962762832648 11 -1.7676935195922849 12 -1.5589913129806543 13 -0.81704318523406938
		 14 0.19374354183673778 15 1.0651875734329219 16 1.8582669496536266 17 2.8361103534698482
		 18 3.6570637226104732 19 4.0282311439514187 20 4.1247801780700684 21 4.209300041198734
		 22 4.3309946060180673 23 4.3062992095947328 24 4.1272568702697754 25 3.9820141792297337
		 26 3.6928527355194101 27 2.998986482620241 28 2.2796864509582533 29 2.0341346263885498
		 30 1.9573202133178704 31 1.5664274692535411 32 1.0304757356643681 33 0.5326986908912652
		 34 0.42670336365699668 35 2.2457623481750497 36 7.2250356674194318 37 13.312652587890621
		 38 19.480037689208991 39 26.454048156738306 40 32.358833312988295 41 33.885654449462912
		 42 29.467933654785195 43 21.65745544433593 44 15.19914054870608 45 11.235617637634309
		 46 7.9538516998291078 47 4.0513920783996635 48 -0.44338104128834399 49 -4.6536965370178311
		 50 -8.3718738555908079 51 -11.225755691528327 52 -12.073156356811499 53 -11.820734977722157
		 54 -11.027099609374989 55 -9.7339792251587092 56 -7.9611110687255859 57 -6.3626861572265412
		 58 -4.8567271232604838 59 -2.3138513565063623 60 1.2474051713943339 61 4.676036834716788
		 62 7.4808497428894318 63 10.211525917053196 64 13.543619155883807 65 17.037542343139698
		 66 19.912908554077163 67 21.691818237304677 68 21.679943084716843 69 21.517063140869123
		 70 23.27318382263185 71 24.252222061157212 72 23.773160934448235 73 23.383523941040043
		 74 23.107297897338896 75 22.768241882324237 76 22.672485351562504 77 22.897392272949229
		 78 23.050838470458999 79 22.952533721923817 80 22.830818176269549 81 23.094249725341836
		 82 24.106779098510753 83 25.197788238525387 84 25.470903396606449 85 25.300178527832042
		 86 24.750446319580082 87 23.533061981201151 88 21.997558593750004 89 20.7070827484131
		 90 19.833248138427745 91 19.29774475097657 92 18.945261001586932 93 18.646575927734382
		 94 18.461042404174819 95 18.341016769409201 96 18.262435913085934 97 18.318218231201179
		 98 18.695722579956069 99 19.311704635620142 100 19.902090072631843 101 20.378021240234375
		 102 20.789564132690419 103 21.140098571777354 104 21.437780380249045 105 21.949424743652337
		 106 22.729099273681658 107 23.266578674316413 108 23.578802108764673 109 24.135246276855469
		 110 24.790184020996115 111 25.321813583374038 112 25.785888671875018 113 26.164806365966808
		 114 26.466676712036147 115 26.73797416687011 116 26.963294982910163 117 27.142192840576179
		 118 27.324205398559592 119 27.486490249633793 120 27.50160408020021 121 27.393976211547869
		 122 27.353279113769521 123 27.292625427246101 124 27.181032180786147 125 27.142021179199215
		 126 27.056270599365241 127 26.81883049011229 128 26.596984863281264 129 26.481828689575202
		 130 26.429697036743192 131 26.409635543823253 132 26.437635421752962 133 26.484535217285195
		 134 26.44994354248049 135 26.444475173950206 136 26.54683303833011;
createNode animCurveTA -n "locator2_rotateZ";
	rename -uid "6AB2FA53-44BF-6C1C-B0B3-3E9A744FA93F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 5.7174453735351607 1 5.2418441772460964
		 2 4.6032195091247541 3 4.2575850486755353 4 4.4465551376342765 5 4.4702644348144522
		 6 4.1912770271301278 7 4.1981701850891087 8 4.485404968261717 9 4.9992628097534224
		 10 5.4175400733947763 11 5.0439686775207546 12 3.9259226322174068 13 2.6896500587463366
		 14 1.779692649841309 15 1.5314006805419915 16 1.7626496553421023 17 1.8898954391479501
		 18 1.8495200872421287 19 1.8432545661926245 20 1.9006624221801753 21 1.8982208967208865
		 22 1.5980983972549447 23 1.3853356838226314 24 1.5662792921066291 25 1.7479203939437868
		 26 2.1245534420013428 27 2.5467851161956783 28 2.3362824916839569 29 2.3296411037445068
		 30 3.1057569980621365 31 4.3550858497619673 32 5.712597370147706 33 6.0782375335693333
		 34 5.4767260551452646 35 5.2995967864990234 36 4.6984772682189968 37 2.3384425640106206
		 38 0.19965451955795147 39 -0.15127097070217588 40 1.9714796543121371 41 6.5560665130615252
		 42 9.9073171615600373 43 10.868848800659189 44 11.082835197448748 45 11.324595451354961
		 46 11.256742477416999 47 11.294821739196751 48 11.609541893005364 49 11.071896553039542
		 50 8.911405563354462 51 6.2842531204223366 52 5.1380691528320108 53 4.4154129028320241
		 54 3.693279266357433 55 3.931837320327745 56 4.2444953918456827 57 4.3390240669250399
		 58 4.4231758117675604 59 3.4755446910857821 60 -0.066072136163708731 61 -5.6932206153869647
		 62 -10.828193664550756 63 -14.518503189086941 64 -17.439599990844727 65 -19.649522781372049
		 66 -20.673952102661136 67 -21.004301071166967 68 -20.998899459838853 69 -19.759738922119155
		 70 -16.659351348876971 71 -13.77374553680421 72 -12.653920173645005 73 -11.93960952758788
		 74 -10.671069145202623 75 -9.2251195907592933 76 -7.9508810043335165 77 -6.8662705421447718
		 78 -5.8032584190368963 79 -4.6807274818420384 80 -3.7949490547179754 81 -2.9456751346587868
		 82 -1.187313079834011 83 1.2017416954040629 84 2.2594153881073189 85 1.5097388029098346
		 86 0.47843503952027383 87 0.17668205499651127 88 0.20809906721117538 89 0.20001523196696933
		 90 0.056543163955187555 91 -0.37565323710439869 92 -0.91054636240006825 93 -1.3492956161499254
		 94 -1.7059379816055333 95 -2.0387895107269003 96 -2.3224182128906259 97 -2.6794042587280122
		 98 -3.0487079620361279 99 -3.2685985565185218 100 -3.3818223476409703 101 -3.5653321743011048
		 102 -3.8660376071929834 103 -4.1415858268737935 104 -4.2795691490173136 105 -4.0070939064025586
		 106 -3.3788342475891091 107 -3.1590056419372314 108 -3.3167765140533163 109 -3.2700128555297909
		 110 -3.1139140129089591 111 -2.9945461750029905 112 -2.8429965972899938 113 -2.5821747779846116
		 114 -2.375895261764545 115 -2.3197736740112171 116 -2.4253404140472647 117 -2.4653530120849263
		 118 -2.2920362949371453 119 -2.1865439414978258 120 -2.3859336376190381 121 -2.7164874076843191
		 122 -2.8319106101989413 123 -2.8032069206237544 124 -2.9254345893859917 125 -3.2364892959594136
		 126 -3.4368934631347541 127 -3.4099848270416087 128 -3.2648980617523393 129 -3.1684637069701824
		 130 -3.1547641754150271 131 -3.0910327434539582 132 -2.9889073371887278 133 -2.990461826324454
		 134 -3.0907359123229372 135 -3.1856117248534761 136 -3.3167781829833709;
createNode animCurveTU -n "locator2_scaleX";
	rename -uid "1E31A1D0-4641-5C1E-5FD1-78A415F80622";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999978 1 0.99999999999999967
		 2 1 3 0.99999999999999978 4 0.99999999999999989 5 0.99999999999999978 6 1 7 1.0000000000000004
		 8 1 9 1 10 0.99999999999999989 11 0.99999999999999989 12 1 13 1 14 0.99999999999999967
		 15 1 16 1 17 1 18 0.99999999999999978 19 0.99999999999999989 20 0.99999999999999978
		 21 0.99999999999999989 22 0.99999999999999989 23 1.0000000000000002 24 0.99999999999999967
		 25 0.99999999999999956 26 1 27 1 28 1.0000000000000002 29 1.0000000000000002 30 0.99999999999999989
		 31 0.99999999999999967 32 1 33 1 34 1.0000000000000002 35 0.99999999999999989 36 0.99999999999999989
		 37 0.99999999999999956 38 1 39 0.99999999999999978 40 1 41 1.0000000000000002 42 0.99999999999999956
		 43 1.0000000000000004 44 1.0000000000000002 45 0.99999999999999978 46 0.99999999999999989
		 47 0.99999999999999989 48 0.99999999999999978 49 1 50 0.99999999999999989 51 0.99999999999999967
		 52 1.0000000000000004 53 0.99999999999999978 54 0.99999999999999933 55 0.99999999999999956
		 56 1.0000000000000002 57 1 58 1 59 0.99999999999999967 60 1.0000000000000002 61 0.99999999999999944
		 62 0.99999999999999989 63 1.0000000000000002 64 0.99999999999999933 65 1 66 0.99999999999999989
		 67 1.0000000000000004 68 1 69 1.0000000000000004 70 0.99999999999999944 71 1 72 0.99999999999999989
		 73 1.0000000000000002 74 1.0000000000000002 75 1.0000000000000002 76 1 77 1.0000000000000002
		 78 0.99999999999999956 79 0.99999999999999944 80 0.99999999999999978 81 0.99999999999999978
		 82 0.99999999999999978 83 0.99999999999999978 84 0.99999999999999956 85 1.0000000000000004
		 86 0.99999999999999956 87 1 88 0.99999999999999944 89 0.99999999999999967 90 0.99999999999999989
		 91 0.99999999999999956 92 1 93 0.99999999999999989 94 1.0000000000000004 95 1 96 0.99999999999999989
		 97 0.99999999999999978 98 1.0000000000000002 99 1.0000000000000004 100 0.99999999999999978
		 101 0.99999999999999967 102 1.0000000000000002 103 0.99999999999999967 104 0.99999999999999933
		 105 0.99999999999999978 106 0.99999999999999967 107 1.0000000000000002 108 1.0000000000000002
		 109 1.0000000000000002 110 1.0000000000000002 111 1 112 0.99999999999999989 113 0.99999999999999967
		 114 0.99999999999999989 115 0.99999999999999956 116 1 117 1.0000000000000002 118 0.99999999999999956
		 119 1 120 0.99999999999999967 121 0.99999999999999989 122 0.99999999999999933 123 1.0000000000000002
		 124 0.99999999999999978 125 1 126 1 127 0.99999999999999989 128 0.99999999999999956
		 129 0.99999999999999956 130 0.99999999999999978 131 0.99999999999999956 132 1.0000000000000002
		 133 0.99999999999999944 134 1.0000000000000002 135 0.99999999999999933 136 1.0000000000000004;
createNode animCurveTU -n "locator2_scaleY";
	rename -uid "36709143-4172-3D6C-27B8-EFAD974A6406";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999978 2 1 3 1.0000000000000002
		 4 0.99999999999999989 5 0.99999999999999967 6 0.99999999999999989 7 0.99999999999999989
		 8 0.99999999999999978 9 1 10 1 11 1 12 0.99999999999999967 13 1 14 0.99999999999999989
		 15 0.99999999999999989 16 1.0000000000000002 17 1 18 1.0000000000000002 19 0.99999999999999967
		 20 0.99999999999999967 21 1 22 0.99999999999999989 23 1 24 0.99999999999999967 25 0.99999999999999989
		 26 0.99999999999999989 27 1 28 1 29 0.99999999999999989 30 0.99999999999999989 31 1.0000000000000002
		 32 0.99999999999999989 33 1 34 1 35 0.99999999999999978 36 1 37 0.99999999999999989
		 38 0.99999999999999989 39 0.99999999999999989 40 1.0000000000000002 41 1.0000000000000002
		 42 1 43 1 44 1 45 1 46 0.99999999999999989 47 0.99999999999999989 48 1 49 1.0000000000000004
		 50 1 51 1 52 1 53 0.99999999999999967 54 0.99999999999999989 55 0.99999999999999989
		 56 0.99999999999999967 57 0.99999999999999978 58 0.99999999999999989 59 0.99999999999999978
		 60 0.99999999999999978 61 0.99999999999999978 62 0.99999999999999944 63 1.0000000000000002
		 64 0.99999999999999989 65 0.99999999999999989 66 1.0000000000000002 67 0.99999999999999989
		 68 1.0000000000000002 69 0.99999999999999978 70 1 71 0.99999999999999989 72 1 73 0.99999999999999978
		 74 0.99999999999999989 75 0.99999999999999989 76 0.99999999999999967 77 1 78 0.99999999999999989
		 79 0.99999999999999978 80 0.99999999999999989 81 0.99999999999999989 82 1 83 0.99999999999999978
		 84 0.99999999999999967 85 1 86 1 87 1 88 0.99999999999999989 89 1 90 0.99999999999999967
		 91 1 92 0.99999999999999989 93 0.99999999999999989 94 1.0000000000000002 95 0.99999999999999989
		 96 0.99999999999999978 97 1 98 0.99999999999999989 99 1 100 0.99999999999999978 101 0.99999999999999967
		 102 0.99999999999999989 103 1 104 0.99999999999999989 105 1 106 0.99999999999999989
		 107 1.0000000000000002 108 0.99999999999999967 109 0.99999999999999989 110 0.99999999999999989
		 111 1.0000000000000002 112 0.99999999999999989 113 0.99999999999999989 114 1 115 0.99999999999999978
		 116 0.99999999999999978 117 1 118 0.99999999999999978 119 0.99999999999999989 120 0.99999999999999989
		 121 0.99999999999999989 122 0.99999999999999978 123 1 124 1 125 1 126 1.0000000000000002
		 127 0.99999999999999978 128 1 129 1 130 0.99999999999999978 131 0.99999999999999978
		 132 0.99999999999999989 133 1 134 0.99999999999999989 135 1 136 1;
createNode animCurveTU -n "locator2_scaleZ";
	rename -uid "A5BB9C36-41A5-D757-5BC2-ECAD6F931182";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999989 1 0.99999999999999967
		 2 1.0000000000000002 3 1 4 0.99999999999999978 5 1 6 0.99999999999999978 7 0.99999999999999989
		 8 0.99999999999999989 9 0.99999999999999989 10 0.99999999999999967 11 1 12 0.99999999999999978
		 13 0.99999999999999989 14 0.99999999999999989 15 0.99999999999999989 16 1 17 1 18 1.0000000000000002
		 19 0.99999999999999989 20 1 21 0.99999999999999978 22 1 23 1.0000000000000002 24 0.99999999999999956
		 25 0.99999999999999989 26 0.99999999999999989 27 0.99999999999999989 28 1.0000000000000002
		 29 1.0000000000000002 30 1.0000000000000002 31 1 32 0.99999999999999967 33 0.99999999999999978
		 34 1 35 0.99999999999999978 36 0.99999999999999978 37 1 38 1 39 1.0000000000000002
		 40 0.99999999999999989 41 1.0000000000000004 42 0.99999999999999967 43 1 44 0.99999999999999989
		 45 1 46 1.0000000000000002 47 1 48 1.0000000000000002 49 1.0000000000000002 50 0.99999999999999967
		 51 0.99999999999999978 52 1.0000000000000002 53 0.99999999999999967 54 0.99999999999999944
		 55 1 56 1.0000000000000007 57 0.99999999999999989 58 1.0000000000000002 59 0.99999999999999978
		 60 0.99999999999999989 61 0.99999999999999967 62 0.99999999999999978 63 1 64 0.99999999999999956
		 65 1 66 0.99999999999999978 67 0.99999999999999989 68 1 69 1.0000000000000002 70 1
		 71 1 72 0.99999999999999989 73 1 74 1 75 1.0000000000000002 76 1 77 1.0000000000000004
		 78 1 79 0.99999999999999933 80 0.99999999999999956 81 1.0000000000000002 82 1 83 0.99999999999999978
		 84 0.99999999999999944 85 1.0000000000000007 86 0.99999999999999967 87 1 88 0.99999999999999944
		 89 0.99999999999999967 90 0.99999999999999978 91 1 92 0.99999999999999989 93 1.0000000000000002
		 94 1 95 1.0000000000000002 96 1 97 1 98 1.0000000000000002 99 1.0000000000000002
		 100 0.99999999999999978 101 0.99999999999999956 102 1 103 0.99999999999999989 104 0.99999999999999967
		 105 0.99999999999999967 106 0.99999999999999989 107 1 108 1 109 1.0000000000000007
		 110 1.0000000000000002 111 1.0000000000000004 112 0.99999999999999978 113 0.99999999999999967
		 114 0.99999999999999989 115 0.99999999999999978 116 0.99999999999999989 117 1.0000000000000002
		 118 0.99999999999999978 119 0.99999999999999989 120 0.99999999999999967 121 0.99999999999999967
		 122 0.99999999999999933 123 0.99999999999999978 124 0.99999999999999967 125 1 126 1.0000000000000004
		 127 0.99999999999999967 128 0.99999999999999989 129 0.99999999999999944 130 0.99999999999999967
		 131 0.99999999999999956 132 1.0000000000000002 133 0.99999999999999978 134 1.0000000000000002
		 135 0.99999999999999944 136 1.0000000000000002;
createNode animCurveTU -n "locator3_visibility";
	rename -uid "452C4854-4874-F33D-E926-1C891D414D83";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1
		 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1
		 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1
		 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTL -n "locator3_translateX";
	rename -uid "B70B53E8-4B12-CA3C-D470-2689B15F4A5A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -8.2077960968017578 1 -8.2077960968017614
		 2 -8.2077960968017578 3 -8.2077960968017578 4 -8.2077960968017578 5 -8.2077960968017543
		 6 -8.2077960968017578 7 -8.2077960968017578 8 -8.2077960968017578 9 -8.2077960968017596
		 10 -8.2077960968017578 11 -8.2077960968017578 12 -8.2077960968017578 13 -8.2077960968017543
		 14 -8.2077960968017649 15 -8.2077960968017614 16 -8.2077960968017578 17 -8.2077960968017596
		 18 -8.2077960968017578 19 -8.2077960968017578 20 -8.2077960968017578 21 -8.207796096801756
		 22 -8.2077960968017578 23 -8.2077960968017596 24 -8.207796096801756 25 -8.2077960968017614
		 26 -8.2077960968017578 27 -8.2077960968017596 28 -8.2077960968017578 29 -8.2077960968017578
		 30 -8.2077960968017543 31 -8.2077960968017578 32 -8.2077960968017543 33 -8.2077960968017578
		 34 -8.2077960968017578 35 -8.2077960968017596 36 -8.2077960968017543 37 -8.2077960968017543
		 38 -8.2077960968017578 39 -8.2077960968017436 40 -8.2077960968017436 41 -8.2077960968017294
		 42 -8.2077960968017578 43 -8.2077960968017294 44 -8.2077960968017436 45 -8.207796096801772
		 46 -8.2077960968017578 47 -8.2077960968017436 48 -8.2077960968017578 49 -8.2077960968017578
		 50 -8.2077960968017578 51 -8.2077960968017436 52 -8.2077960968017294 53 -8.2077960968017365
		 54 -8.2077960968017578 55 -8.2077960968017578 56 -8.2077960968017507 57 -8.2077960968017543
		 58 -8.2077960968017472 59 -8.2077960968017614 60 -8.2077960968017578 61 -8.207796096801772
		 62 -8.2077960968017436 63 -8.2077960968017294 64 -8.207796096801772 65 -8.2077960968017578
		 66 -8.2077960968017862 67 -8.2077960968017578 68 -8.2077960968017294 69 -8.2077960968017578
		 70 -8.2077960968017862 71 -8.2077960968017578 72 -8.2077960968017578 73 -8.2077960968017578
		 74 -8.2077960968017294 75 -8.2077960968017578 76 -8.2077960968017294 77 -8.2077960968017436
		 78 -8.207796096801772 79 -8.2077960968017578 80 -8.2077960968017862 81 -8.2077960968017578
		 82 -8.2077960968017578 83 -8.2077960968017436 84 -8.2077960968017578 85 -8.2077960968017294
		 86 -8.207796096801772 87 -8.2077960968017436 88 -8.2077960968017578 89 -8.207796096801772
		 90 -8.207796096801772 91 -8.2077960968017436 92 -8.2077960968017578 93 -8.2077960968017578
		 94 -8.207796096801772 95 -8.2077960968017862 96 -8.2077960968017862 97 -8.2077960968017436
		 98 -8.2077960968017294 99 -8.2077960968017578 100 -8.2077960968017578 101 -8.2077960968017436
		 102 -8.207796096801772 103 -8.2077960968017436 104 -8.2077960968017862 105 -8.2077960968017578
		 106 -8.2077960968017578 107 -8.2077960968017578 108 -8.2077960968017436 109 -8.2077960968017436
		 110 -8.2077960968017578 111 -8.2077960968017294 112 -8.2077960968017436 113 -8.2077960968017294
		 114 -8.207796096801772 115 -8.2077960968017578 116 -8.207796096801772 117 -8.2077960968017436
		 118 -8.207796096801772 119 -8.2077960968017436 120 -8.207796096801772 121 -8.207796096801772
		 122 -8.2077960968017578 123 -8.2077960968017578 124 -8.207796096801772 125 -8.2077960968017294
		 126 -8.2077960968017436 127 -8.2077960968017578 128 -8.2077960968017578 129 -8.2077960968017578
		 130 -8.2077960968017436 131 -8.2077960968017578 132 -8.2077960968017294 133 -8.2077960968017578
		 134 -8.2077960968017294 135 -8.2077960968017578 136 -8.2077960968017436;
createNode animCurveTL -n "locator3_translateY";
	rename -uid "A56C44DF-4069-9B9D-20C0-4CA0104FEB37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -6.7516622543335103 1 -6.7516622543335387
		 2 -6.7516622543335103 3 -6.7516622543334961 4 -6.7516622543334961 5 -6.7516622543334961
		 6 -6.7516622543334819 7 -6.7516622543334819 8 -6.7516622543335245 9 -6.7516622543334961
		 10 -6.7516622543334961 11 -6.7516622543334961 12 -6.7516622543334961 13 -6.7516622543334961
		 14 -6.7516622543334961 15 -6.7516622543334961 16 -6.7516622543335103 17 -6.7516622543335103
		 18 -6.7516622543335103 19 -6.7516622543335103 20 -6.7516622543334819 21 -6.7516622543334819
		 22 -6.7516622543335103 23 -6.7516622543335103 24 -6.7516622543334819 25 -6.7516622543334819
		 26 -6.7516622543335103 27 -6.7516622543334819 28 -6.7516622543334819 29 -6.7516622543334819
		 30 -6.7516622543335103 31 -6.7516622543335103 32 -6.7516622543335103 33 -6.7516622543335103
		 34 -6.7516622543334961 35 -6.7516622543335103 36 -6.7516622543334961 37 -6.7516622543334819
		 38 -6.7516622543334961 39 -6.7516622543334961 40 -6.7516622543334961 41 -6.7516622543334677
		 42 -6.7516622543334819 43 -6.7516622543335103 44 -6.7516622543334677 45 -6.7516622543334961
		 46 -6.7516622543334961 47 -6.7516622543335103 48 -6.7516622543335103 49 -6.7516622543334961
		 50 -6.7516622543335103 51 -6.7516622543334677 52 -6.7516622543334961 53 -6.7516622543334961
		 54 -6.7516622543334677 55 -6.7516622543334819 56 -6.7516622543334819 57 -6.7516622543334961
		 58 -6.7516622543335103 59 -6.7516622543334819 60 -6.7516622543335103 61 -6.7516622543334819
		 62 -6.7516622543334961 63 -6.751662254333489 64 -6.751662254333489 65 -6.7516622543334996
		 66 -6.7516622543334748 67 -6.751662254333489 68 -6.751662254333489 69 -6.751662254333489
		 70 -6.7516622543335103 71 -6.751662254333489 72 -6.7516622543335103 73 -6.7516622543335032
		 74 -6.7516622543335032 75 -6.7516622543335032 76 -6.7516622543334961 77 -6.7516622543335103
		 78 -6.7516622543335103 79 -6.7516622543334961 80 -6.7516622543334961 81 -6.7516622543334819
		 82 -6.7516622543334819 83 -6.7516622543335245 84 -6.7516622543335245 85 -6.7516622543334961
		 86 -6.7516622543335245 87 -6.7516622543334677 88 -6.7516622543334961 89 -6.7516622543334961
		 90 -6.7516622543335245 91 -6.7516622543335103 92 -6.7516622543334677 93 -6.7516622543334819
		 94 -6.7516622543334819 95 -6.7516622543334819 96 -6.7516622543334961 97 -6.7516622543334961
		 98 -6.7516622543334961 99 -6.7516622543334819 100 -6.7516622543335103 101 -6.7516622543334961
		 102 -6.7516622543335103 103 -6.7516622543334819 104 -6.7516622543334961 105 -6.7516622543335103
		 106 -6.7516622543335103 107 -6.7516622543334819 108 -6.7516622543335103 109 -6.7516622543334819
		 110 -6.7516622543334819 111 -6.7516622543334961 112 -6.7516622543334961 113 -6.7516622543334819
		 114 -6.7516622543334819 115 -6.7516622543335103 116 -6.7516622543334961 117 -6.7516622543335103
		 118 -6.7516622543334961 119 -6.7516622543335245 120 -6.7516622543335103 121 -6.7516622543334819
		 122 -6.7516622543334961 123 -6.7516622543335103 124 -6.7516622543334961 125 -6.7516622543334961
		 126 -6.7516622543334961 127 -6.7516622543335103 128 -6.7516622543334819 129 -6.7516622543335103
		 130 -6.7516622543334961 131 -6.7516622543334961 132 -6.7516622543335103 133 -6.7516622543334819
		 134 -6.7516622543334961 135 -6.7516622543335103 136 -6.7516622543334961;
createNode animCurveTL -n "locator3_translateZ";
	rename -uid "BEBAC0BE-465E-3A04-FBDC-DAB9687A9770";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -1.59955942630768 1 -1.5995594263076764
		 2 -1.5995594263076782 3 -1.5995594263076818 4 -1.5995594263076782 5 -1.599559426307676
		 6 -1.5995594263076791 7 -1.5995594263076782 8 -1.59955942630768 9 -1.5995594263076782
		 10 -1.5995594263076782 11 -1.5995594263076711 12 -1.5995594263076782 13 -1.5995594263076782
		 14 -1.5995594263076853 15 -1.5995594263076782 16 -1.5995594263076782 17 -1.5995594263076782
		 18 -1.5995594263076782 19 -1.599559426307664 20 -1.5995594263076782 21 -1.5995594263076924
		 22 -1.599559426307664 23 -1.5995594263076924 24 -1.5995594263076782 25 -1.5995594263076782
		 26 -1.5995594263076782 27 -1.5995594263076924 28 -1.5995594263076782 29 -1.5995594263076924
		 30 -1.5995594263076782 31 -1.599559426307664 32 -1.5995594263076782 33 -1.5995594263076782
		 34 -1.5995594263076924 35 -1.5995594263076782 36 -1.5995594263076782 37 -1.5995594263076782
		 38 -1.599559426307664 39 -1.599559426307664 40 -1.5995594263076924 41 -1.5995594263076569
		 42 -1.5995594263076818 43 -1.5995594263076782 44 -1.5995594263076782 45 -1.599559426307664
		 46 -1.5995594263076924 47 -1.5995594263076782 48 -1.5995594263076782 49 -1.5995594263077066
		 50 -1.5995594263076498 51 -1.5995594263076782 52 -1.5995594263077066 53 -1.5995594263077066
		 54 -1.5995594263077066 55 -1.5995594263077066 56 -1.5995594263076498 57 -1.5995594263076782
		 58 -1.5995594263076498 59 -1.5995594263077066 60 -1.5995594263077066 61 -1.5995594263076782
		 62 -1.5995594263076782 63 -1.5995594263076782 64 -1.5995594263076782 65 -1.5995594263076498
		 66 -1.5995594263077351 67 -1.5995594263076782 68 -1.5995594263076498 69 -1.5995594263076498
		 70 -1.5995594263076782 71 -1.5995594263077066 72 -1.5995594263076782 73 -1.5995594263076782
		 74 -1.5995594263076782 75 -1.5995594263076498 76 -1.5995594263077066 77 -1.5995594263076782
		 78 -1.5995594263076782 79 -1.5995594263076782 80 -1.5995594263077066 81 -1.5995594263076498
		 82 -1.5995594263077066 83 -1.5995594263076498 84 -1.5995594263077066 85 -1.5995594263076498
		 86 -1.5995594263077066 87 -1.5995594263077066 88 -1.5995594263076498 89 -1.5995594263076782
		 90 -1.5995594263077066 91 -1.5995594263077066 92 -1.5995594263077066 93 -1.5995594263077066
		 94 -1.5995594263076782 95 -1.5995594263077066 96 -1.5995594263077351 97 -1.5995594263076498
		 98 -1.5995594263077351 99 -1.5995594263076782 100 -1.5995594263076782 101 -1.5995594263076782
		 102 -1.5995594263077066 103 -1.5995594263076782 104 -1.5995594263076782 105 -1.5995594263077066
		 106 -1.5995594263076782 107 -1.5995594263076498 108 -1.5995594263076782 109 -1.5995594263076498
		 110 -1.5995594263077066 111 -1.5995594263076498 112 -1.5995594263076498 113 -1.5995594263076782
		 114 -1.5995594263076782 115 -1.5995594263077066 116 -1.5995594263076498 117 -1.5995594263076782
		 118 -1.5995594263076782 119 -1.5995594263077066 120 -1.5995594263077066 121 -1.5995594263076782
		 122 -1.5995594263077066 123 -1.5995594263076498 124 -1.5995594263076498 125 -1.5995594263076782
		 126 -1.5995594263077066 127 -1.5995594263076498 128 -1.5995594263076782 129 -1.5995594263077351
		 130 -1.5995594263076498 131 -1.5995594263076498 132 -1.5995594263076782 133 -1.5995594263077066
		 134 -1.5995594263076498 135 -1.5995594263076782 136 -1.5995594263076782;
createNode animCurveTA -n "locator3_rotateX";
	rename -uid "D84B5CA1-41D6-E040-537F-D5BB67AB4F66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -14.307984352111818 1 -11.174675941467287
		 2 -8.7497329711914063 3 -6.2489833831787127 4 -3.468583345413208 5 -0.63968628644943248
		 6 1.9191660881042487 7 4.0424818992614737 8 5.5757756233215332 9 6.4728832244873038
		 10 6.4424219131469727 11 4.1141781806945801 12 -1.1546102762222294 13 -7.3280076980590803
		 14 -12.651902198791504 15 -17.260173797607422 16 -21.582084655761722 17 -25.504213333129893
		 18 -29.189880371093743 19 -32.446510314941406 20 -34.842067718505859 21 -36.285652160644524
		 22 -36.416843414306634 23 -34.405483245849602 24 -32.906929016113288 25 -36.643413543701179
		 26 -39.571998596191392 27 -40.245780944824212 28 -39.612480163574219 29 -37.690010070800774
		 30 -35.000740051269538 31 -32.212348937988295 32 -29.658908843994141 33 -26.744205474853512
		 34 -23.238906860351555 35 -20.070339202880863 36 -17.370307922363278 37 -15.168804168701174
		 38 -14.616185188293462 39 -18.809818267822266 40 -27.610382080078129 41 -38.866264343261719
		 42 -45.759181976318381 43 -46.612880706787116 44 -47.740085601806641 45 -52.339839935302749
		 46 -51.160308837890632 47 -45.291137695312507 48 -39.528450012207031 49 -34.73091125488282
		 50 -30.359325408935547 51 -25.187734603881832 52 -18.805871963500969 53 -11.879037857055666
		 54 -5.6962938308715811 55 -0.78358507156372215 56 1.9611985683441164 57 2.7161867618560782
		 58 1.3973013162612924 59 -4.1424689292907706 60 -16.860984802246097 61 -33.926212310791016
		 62 -45.671504974365227 63 -51.782436370849609 64 -55.34539794921875 65 -58.486019134521477
		 66 -62.094535827636712 67 -64.326858520507813 68 -63.814128875732415 69 -61.41917800903321
		 70 -58.273223876953104 71 -54.761634826660163 72 -51.174358367919922 73 -47.816253662109382
		 74 -44.674026489257805 75 -41.303760528564453 76 -37.862052917480469 77 -34.415794372558572
		 78 -30.842113494873043 79 -27.116662979125969 80 -23.249917984008786 81 -19.353662490844734
		 82 -15.593014717102051 83 -12.28364086151123 84 -9.6741399765014648 85 -7.7622666358947754
		 86 -6.5054006576538086 87 -5.7930760383605939 88 -5.4186849594116202 89 -5.2735404968261719
		 90 -5.4294433593749991 91 -5.9584846496582031 92 -6.7317790985107413 93 -7.47933101654053
		 94 -7.9732141494750977 95 -8.1579294204711896 96 -8.2386140823364276 97 -8.454872131347658
		 98 -8.8313093185424822 99 -9.2373151779174805 100 -9.5518074035644513 101 -9.6121616363525373
		 102 -9.465641975402832 103 -9.1859798431396502 104 -8.7370700836181641 105 -8.071467399597168
		 106 -7.4177465438842782 107 -6.9572067260742188 108 -6.5341901779174778 109 -6.0419001579284668
		 110 -5.6140170097351083 111 -5.2101893424987802 112 -4.823306083679201 113 -4.5995678901672363
		 114 -4.6276006698608416 115 -4.8166556358337393 116 -4.9542574882507324 117 -5.0083031654357919
		 118 -5.0518426895141584 119 -5.1205902099609375 120 -5.2843313217163086 121 -5.6289038658142063
		 122 -6.2627339363098153 123 -6.7343788146972647 124 -7.0332231521606445 125 -7.5797667503356907
		 126 -8.057835578918457 127 -8.2506237030029315 128 -8.4402227401733363 129 -8.6587753295898455
		 130 -8.8598146438598633 131 -9.0295257568359375 132 -9.2035999298095721 133 -9.6478643417358398
		 134 -9.9398679733276349 135 -9.1499052047729492 136 -8.2205591201782244;
createNode animCurveTA -n "locator3_rotateY";
	rename -uid "25CF9316-4C70-3B28-9366-88B1F83AF145";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -20.169742584228516 1 -19.986358642578121
		 2 -19.68110466003418 3 -19.189594268798828 4 -19.155256271362308 5 -19.614355087280277
		 6 -20.248550415039066 7 -20.992609024047852 8 -21.389854431152344 9 -21.963689804077145
		 10 -22.6218376159668 11 -20.847635269165039 12 -16.801280975341797 13 -13.63397216796875
		 14 -11.972862243652342 15 -11.423748970031737 16 -12.263854980468754 17 -14.31549644470215
		 18 -16.468158721923825 19 -17.902637481689453 20 -19.076082229614254 21 -21.075893402099609
		 22 -23.634109497070316 23 -25.379631042480462 24 -25.541538238525394 25 -24.43690490722657
		 26 -23.613750457763668 27 -25.25890922546386 28 -26.627531051635742 29 -25.756206512451165
		 30 -25.157331466674805 31 -24.203054428100586 32 -22.017406463623047 33 -21.142925262451172
		 34 -20.999370574951172 35 -19.614439010620117 36 -16.411230087280273 37 -13.817050933837891
		 38 -13.812574386596681 39 -14.25513744354248 40 -14.442402839660646 41 -15.266171455383299
		 42 -17.721494674682621 43 -22.508880615234382 44 -28.388664245605465 45 -32.030548095703125
		 46 -30.9199104309082 47 -29.034322738647461 48 -29.632457733154286 49 -29.826288223266598
		 50 -26.626836776733398 51 -23.192398071289066 52 -23.221313476562504 53 -24.241605758666996
		 54 -24.420530319213864 55 -25.369762420654297 56 -26.657077789306644 57 -28.205598831176754
		 58 -31.151025772094727 59 -36.202526092529304 60 -37.993175506591804 61 -30.25573921203614
		 62 -25.751729965209961 63 -26.326213836669925 64 -24.091993331909183 65 -21.928478240966797
		 66 -22.897893905639648 67 -23.08237457275391 68 -22.136037826538089 69 -21.956819534301761
		 70 -22.317716598510746 71 -22.627521514892582 72 -22.925983428955078 73 -23.760894775390632
		 74 -25.246229171752937 75 -26.896394729614261 76 -28.16325759887696 77 -28.944805145263665
		 78 -29.363342285156246 79 -29.583629608154297 80 -29.81864929199218 81 -29.763414382934585
		 82 -29.268587112426758 83 -28.555147171020508 84 -27.818687438964844 85 -27.098018646240224
		 86 -26.564174652099609 87 -26.579538345336903 88 -27.12165641784668 89 -27.704454421997077
		 90 -27.895698547363281 91 -28.059923171997067 92 -28.513143539428707 93 -29.234861373901374
		 94 -29.913167953491211 95 -30.221832275390632 96 -30.148342132568359 97 -30.031391143798839
		 98 -30.168266296386712 99 -30.53099250793457 100 -30.837188720703129 101 -30.837408065795902
		 102 -30.655113220214847 103 -30.367101669311527 104 -29.891452789306641 105 -29.644672393798835
		 106 -29.421243667602532 107 -28.953891754150384 108 -28.501562118530263 109 -28.259031295776374
		 110 -27.861936569213867 111 -27.289781570434574 112 -26.907100677490241 113 -26.695726394653317
		 114 -26.568740844726566 115 -26.519632339477532 116 -26.444522857666016 117 -26.293844223022468
		 118 -26.070299148559567 119 -25.736068725585934 120 -25.511575698852539 121 -26.341655731201172
		 122 -28.187572479248047 123 -29.034883499145511 124 -28.870046615600586 125 -28.616085052490231
		 126 -28.42631912231446 127 -28.254415512084972 128 -28.096176147460934 129 -27.976949691772461
		 130 -27.716001510620121 131 -27.242143630981445 132 -26.932153701782227 133 -26.867382049560547
		 134 -26.862859725952148 135 -27.070507049560554 136 -27.291812896728523;
createNode animCurveTA -n "locator3_rotateZ";
	rename -uid "9F1A3E9B-4E73-BF37-E221-B6B3D01FC49C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 6.3290982246398926 1 4.1301121711730939
		 2 2.2287459373474117 3 0.80272799730300914 4 -0.58767521381378174 5 -2.2632660865783696
		 6 -4.1053462028503427 7 -5.9620714187622061 8 -7.7904844284057617 9 -9.3831853866577131
		 10 -11.726030349731449 11 -13.32597541809082 12 -13.196928024291992 13 -12.118005752563477
		 14 -9.7378015518188459 15 -6.8619222640991202 16 -4.4086565971374538 17 -2.1541180610656738
		 18 0.17030243575573034 19 2.5779061317443848 20 5.3790755271911594 21 8.8969516754150391
		 22 12.265663146972658 23 12.17344760894775 24 9.839811325073244 25 10.270443916320808
		 26 12.795482635498043 27 13.82742881774902 28 13.289768218994142 29 13.270607948303217
		 30 13.573233604431152 31 12.637166023254396 32 10.905849456787111 33 9.9239511489868182
		 34 9.3014287948608398 35 8.3058691024780273 36 6.5989837646484375 37 3.6731653213500977
		 38 -0.93753302097320579 39 -3.3887729644775395 40 -4.1644229888916025 41 -4.3803296089172372
		 42 1.8569790124893197 43 14.109134674072266 44 22.585004806518555 45 20.39679145812989
		 46 10.877819061279299 47 3.0126848220825218 48 -2.9457666873931889 49 -9.5068178176879865
		 50 -16.44427490234375 51 -20.511796951293945 52 -22.109664916992188 53 -22.745958328247067
		 54 -22.527963638305664 55 -22.090076446533196 56 -21.175432205200199 57 -18.722671508789063
		 58 -15.591229438781738 59 -13.226166725158691 60 -8.4941539764404297 61 -3.9683816432952921
		 62 -3.062657833099363 63 -0.5512170791625961 64 2.0346033573150635 65 5.1673331260681152
		 66 10.115747451782227 67 13.079110145568849 68 12.368206977844237 69 10.084055900573734
		 70 8.2317132949829102 71 6.9853215217590359 72 6.0358514785766593 73 5.452228546142579
		 74 5.0639262199401855 75 4.61617183685303 76 3.9079036712646484 77 2.8507072925567583
		 78 1.4839842319488492 79 -0.066525615751743747 80 -1.8824427127838141 81 -3.8735651969909659
		 82 -5.6781263351440421 83 -6.9855904579162589 84 -7.8212995529174822 85 -8.3198614120483381
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
		 126 -10.379631042480471 127 -10.174337387084963 128 -10.015083312988281 129 -9.9297151565551758
		 130 -9.9336700439453107 131 -9.9307985305786151 132 -9.8887195587158221 133 -9.7980003356933594
		 134 -9.6349382400512695 135 -9.2376413345336914 136 -8.926177978515625;
createNode animCurveTU -n "locator3_scaleX";
	rename -uid "0F036ED9-4757-0589-574E-AB932FED355C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999989 1 1.0000000000000002
		 2 0.99999999999999989 3 0.99999999999999989 4 1 5 1 6 0.99999999999999989 7 1 8 0.99999999999999989
		 9 1 10 1.0000000000000002 11 1 12 0.99999999999999989 13 1 14 1 15 1 16 1 17 0.99999999999999989
		 18 1 19 0.99999999999999989 20 0.99999999999999978 21 0.99999999999999989 22 0.99999999999999989
		 23 1 24 1 25 0.99999999999999989 26 1 27 0.99999999999999989 28 1 29 1 30 1 31 1
		 32 0.99999999999999989 33 1 34 0.99999999999999989 35 0.99999999999999989 36 1 37 1
		 38 1 39 0.99999999999999967 40 1.0000000000000002 41 0.99999999999999978 42 0.99999999999999989
		 43 1.0000000000000002 44 1.0000000000000002 45 1.0000000000000002 46 1 47 0.99999999999999989
		 48 1 49 0.99999999999999989 50 1 51 1 52 0.99999999999999989 53 0.99999999999999978
		 54 1 55 1 56 0.99999999999999978 57 0.99999999999999989 58 0.99999999999999989 59 1
		 60 1 61 0.99999999999999978 62 1 63 1.0000000000000004 64 1 65 1.0000000000000002
		 66 1.0000000000000002 67 1.0000000000000002 68 1 69 1 70 0.99999999999999978 71 0.99999999999999978
		 72 1 73 1 74 1 75 0.99999999999999989 76 1 77 1.0000000000000002 78 0.99999999999999989
		 79 0.99999999999999989 80 1 81 0.99999999999999989 82 0.99999999999999978 83 1 84 0.99999999999999989
		 85 1 86 0.99999999999999956 87 1 88 0.99999999999999978 89 0.99999999999999978 90 1
		 91 0.99999999999999989 92 0.99999999999999956 93 1 94 1 95 1 96 1 97 0.99999999999999989
		 98 1 99 0.99999999999999967 100 1 101 1 102 1 103 0.99999999999999989 104 0.99999999999999944
		 105 1 106 1 107 1 108 0.99999999999999989 109 1 110 1 111 0.99999999999999989 112 0.99999999999999989
		 113 1 114 0.99999999999999944 115 1 116 1 117 1 118 1 119 1.0000000000000002 120 1
		 121 0.99999999999999989 122 0.99999999999999989 123 0.99999999999999956 124 0.99999999999999956
		 125 0.99999999999999989 126 0.99999999999999989 127 0.99999999999999989 128 1.0000000000000002
		 129 0.99999999999999989 130 1.0000000000000002 131 1.0000000000000002 132 0.99999999999999989
		 133 1 134 0.99999999999999989 135 1 136 0.99999999999999989;
createNode animCurveTU -n "locator3_scaleY";
	rename -uid "5A30A1B4-418C-961D-894E-39A31F24EFA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999989 1 1 2 1 3 0.99999999999999989
		 4 1 5 0.99999999999999989 6 1.0000000000000002 7 1 8 0.99999999999999989 9 1.0000000000000002
		 10 1.0000000000000002 11 1 12 1 13 1.0000000000000002 14 1 15 1 16 0.99999999999999989
		 17 0.99999999999999967 18 1.0000000000000002 19 1 20 0.99999999999999978 21 1 22 0.99999999999999978
		 23 1 24 1 25 1.0000000000000002 26 1 27 0.99999999999999989 28 1 29 1 30 1 31 0.99999999999999989
		 32 1 33 1 34 0.99999999999999989 35 1 36 1 37 1 38 0.99999999999999978 39 0.99999999999999978
		 40 0.99999999999999989 41 0.99999999999999967 42 1 43 1 44 1 45 0.99999999999999989
		 46 1 47 0.99999999999999989 48 0.99999999999999989 49 0.99999999999999989 50 1 51 1
		 52 0.99999999999999989 53 0.99999999999999978 54 0.99999999999999989 55 1 56 0.99999999999999989
		 57 0.99999999999999989 58 1 59 1 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 0.99999999999999989
		 68 1.0000000000000002 69 1 70 1 71 0.99999999999999989 72 1 73 0.99999999999999989
		 74 0.99999999999999989 75 0.99999999999999978 76 0.99999999999999989 77 0.99999999999999989
		 78 0.99999999999999989 79 1.0000000000000002 80 1 81 0.99999999999999978 82 0.99999999999999989
		 83 0.99999999999999978 84 0.99999999999999989 85 0.99999999999999989 86 0.99999999999999989
		 87 0.99999999999999989 88 0.99999999999999978 89 0.99999999999999978 90 1 91 0.99999999999999989
		 92 1 93 0.99999999999999989 94 1 95 0.99999999999999989 96 1 97 1 98 1 99 0.99999999999999967
		 100 0.99999999999999978 101 0.99999999999999989 102 1.0000000000000002 103 0.99999999999999978
		 104 0.99999999999999978 105 0.99999999999999989 106 0.99999999999999989 107 1 108 0.99999999999999989
		 109 1 110 1 111 1 112 1 113 1 114 1 115 0.99999999999999978 116 1 117 0.99999999999999978
		 118 1 119 0.99999999999999989 120 0.99999999999999989 121 1 122 1 123 0.99999999999999978
		 124 0.99999999999999989 125 0.99999999999999978 126 1 127 0.99999999999999989 128 1.0000000000000002
		 129 1 130 1 131 0.99999999999999989 132 0.99999999999999989 133 1.0000000000000002
		 134 0.99999999999999978 135 1 136 1;
createNode animCurveTU -n "locator3_scaleZ";
	rename -uid "CFE9AFF8-4CF5-FBB9-4C1C-EC8CF3FF2C86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1.0000000000000002 3 1 4 1 5 0.99999999999999989
		 6 1 7 1 8 0.99999999999999989 9 1.0000000000000002 10 1.0000000000000002 11 0.99999999999999989
		 12 1 13 1 14 1 15 1 16 1 17 0.99999999999999989 18 1 19 1 20 0.99999999999999978
		 21 0.99999999999999978 22 1 23 1 24 1 25 0.99999999999999989 26 1 27 0.99999999999999978
		 28 1 29 1 30 1 31 0.99999999999999989 32 1 33 1 34 1 35 1.0000000000000002 36 1 37 1
		 38 1 39 0.99999999999999978 40 0.99999999999999989 41 1 42 0.99999999999999989 43 1.0000000000000002
		 44 0.99999999999999989 45 1.0000000000000004 46 1 47 0.99999999999999989 48 1 49 0.99999999999999989
		 50 1.0000000000000002 51 1 52 0.99999999999999989 53 1 54 1 55 1 56 0.99999999999999978
		 57 0.99999999999999978 58 0.99999999999999978 59 1 60 0.99999999999999989 61 0.99999999999999989
		 62 1.0000000000000002 63 1.0000000000000004 64 1 65 1.0000000000000002 66 1.0000000000000002
		 67 1.0000000000000002 68 1 69 1 70 0.99999999999999978 71 0.99999999999999978 72 1
		 73 1 74 1 75 0.99999999999999989 76 0.99999999999999989 77 1 78 0.99999999999999989
		 79 1 80 1 81 0.99999999999999978 82 0.99999999999999978 83 0.99999999999999978 84 1
		 85 1 86 0.99999999999999956 87 0.99999999999999989 88 0.99999999999999978 89 1 90 1.0000000000000002
		 91 0.99999999999999978 92 0.99999999999999967 93 1.0000000000000002 94 1 95 1 96 0.99999999999999989
		 97 1 98 1.0000000000000002 99 0.99999999999999956 100 1.0000000000000002 101 1 102 1.0000000000000002
		 103 0.99999999999999978 104 0.99999999999999933 105 1 106 0.99999999999999978 107 1
		 108 1 109 1 110 1 111 1 112 1.0000000000000002 113 0.99999999999999989 114 0.99999999999999944
		 115 0.99999999999999978 116 1 117 0.99999999999999989 118 1.0000000000000002 119 1.0000000000000002
		 120 1 121 1 122 0.99999999999999989 123 0.99999999999999933 124 0.99999999999999933
		 125 0.99999999999999989 126 1 127 0.99999999999999978 128 1.0000000000000004 129 1
		 130 1.0000000000000002 131 1 132 0.99999999999999989 133 1 134 0.99999999999999978
		 135 0.99999999999999989 136 0.99999999999999978;
createNode animCurveTU -n "locator4_visibility";
	rename -uid "0354BF91-4D45-1748-53C2-C98A50F45C3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1
		 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1
		 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1
		 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTL -n "locator4_translateX";
	rename -uid "8658244F-43E8-7765-FB3C-8592D160433B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -7.3288501380529842 1 -8.1039307444107038
		 2 -8.8706575300065289 3 -9.2711370047862776 4 -9.6364057310137845 5 -10.221943405421541
		 6 -10.968980263497199 7 -11.794384360275378 8 -12.742681455748169 9 -13.660058274301782
		 10 -15.406955333334238 11 -17.409627069964685 12 -18.666283750418579 13 -18.808294938414083
		 14 -17.563883141326222 15 -15.902795234535947 16 -14.884233188336509 17 -14.492815984269079
		 18 -14.29835669611793 19 -13.915074001343394 20 -13.134073535821505 21 -12.113665902537599
		 22 -11.067413499932762 23 -11.125458621458488 24 -12.21090564428944 25 -12.763917748498935
		 26 -11.800940505160176 27 -12.126010412207307 28 -12.828124418386166 29 -11.757160450921868
		 30 -10.330151972955726 31 -9.5867422538243865 32 -9.1136631854496599 33 -8.5862381956474181
		 34 -7.9206518480544634 35 -7.3486996083272 36 -7.145538507882863 37 -8.3019312779067036
		 38 -11.648010657956817 39 -14.268256348925149 40 -16.231653335900063 41 -18.200870062872639
		 42 -16.942827626722419 43 -12.873561097247062 44 -11.329657979010932 45 -16.387215454566814
		 46 -20.528488427964817 47 -21.958712365389289 48 -24.010623595847107 49 -26.719375543328596
		 50 -28.750761374710557 51 -29.295001606640795 52 -29.305607376995091 53 -28.537773300671013
		 54 -26.903399380274486 55 -25.245414531556726 56 -23.714061776664565 57 -21.62528851794632
		 58 -19.735129976178392 59 -20.335323726744473 60 -22.469696884789322 61 -23.311866501467506
		 62 -23.710708707414526 63 -24.00747269443093 64 -22.27637310417137 65 -20.265381448551437
		 66 -19.675733526336217 67 -19.235062348455699 68 -18.770354162202409 69 -18.92929810134973
		 70 -19.142275849723461 71 -19.025265379150568 72 -18.766345661418967 73 -18.661430227248957
		 74 -18.780260064762359 75 -18.843106421319504 76 -18.76242347258426 77 -18.631395341656415
		 78 -18.495912151467266 79 -18.363821192808643 80 -18.378628364482523 81 -18.446015121480002
		 82 -18.365224780114232 83 -18.084657856248995 84 -17.731183544077979 85 -17.39263482441271
		 86 -17.057584101587295 87 -16.771865596913685 88 -16.52275408568309 89 -16.229957588573015
		 90 -15.949323955227953 91 -15.887690381679519 92 -15.993332083318009 93 -16.193862856748282
		 94 -16.462956263182193 95 -16.684472562434706 96 -16.946627999018943 97 -17.32577594516863
		 98 -17.715909098770965 99 -18.109397709997523 100 -18.504653230760567 101 -18.812395772282059
		 102 -19.037197314053699 103 -19.250691603897224 104 -19.523349553236173 105 -19.702540491414865
		 106 -19.760443657885261 107 -19.823672639852035 108 -19.845176124364073 109 -19.816879178528666
		 110 -19.916109220192737 111 -20.087508517213394 112 -20.29426505455848 113 -20.427788107523057
		 114 -20.433248962592103 115 -20.428663515024738 116 -20.458002002610243 117 -20.447219084918615
		 118 -20.324773692111421 119 -20.161188276718974 120 -20.122384720738978 121 -20.075239790419744
		 122 -19.849875931199193 123 -19.663955589439396 124 -19.541283662131406 125 -19.339837711277482
		 126 -19.160749911374566 127 -19.055969619232187 128 -18.984950635378539 129 -18.981876772925972
		 130 -19.023358115939899 131 -19.024601308937974 132 -19.014478550364956 133 -19.080818169198011
		 134 -19.051867168684566 135 -18.528866784544078 136 -18.017372029506774;
createNode animCurveTL -n "locator4_translateY";
	rename -uid "AFCEC893-4936-143D-D1A3-1284B3B32F20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -49.840894246730016 1 -50.331209192677228
		 2 -50.621258829689154 3 -50.846638137966728 4 -51.011280175196802 5 -51.071270779829021
		 6 -51.022813928462746 7 -50.89823570071416 8 -50.731273799621398 9 -50.56896636410341
		 10 -50.32026311703418 11 -50.073925054728164 12 -49.858158307722839 13 -49.4493924077223
		 14 -49.008498200416852 15 -48.418250570733719 16 -47.513584261009868 17 -46.46706516750708
		 18 -45.366219765600256 19 -44.336844677466047 20 -43.628614062700443 21 -43.393301009152751
		 22 -43.739440308012213 23 -44.666107923551664 24 -45.095843803199131 25 -43.584765424025939
		 26 -42.453644788846972 27 -42.403571033389859 28 -42.778026675279101 29 -43.484085788221861
		 30 -44.485380048837051 31 -45.377460837789911 32 -46.048576700142782 33 -46.913004560048016
		 34 -47.904078445747849 35 -48.644779265999645 36 -49.172227800658931 37 -49.595456492200142
		 38 -49.563508426442468 39 -48.374824918669425 40 -45.456149450981854 41 -40.454771232841637
		 42 -37.802262564999531 43 -39.137239685641191 44 -40.138186067720795 45 -38.474130779124316
		 46 -37.228179297586642 47 -38.529799346591979 48 -40.024761607350115 49 -40.459451975069904
		 50 -40.456477761566397 51 -41.602139999424523 52 -43.416633483215222 53 -45.24636981342055
		 54 -46.765085989544957 55 -47.713779242818944 56 -48.310883551864073 57 -49.015521869173611
		 58 -49.594199979689947 59 -49.340578857760192 60 -47.471826141171789 61 -42.449012814607691
		 62 -36.766392165873597 63 -33.825892178211184 64 -32.262157971291018 65 -30.884524650514127
		 66 -29.634732703536621 67 -28.783668117121614 68 -28.850217333764185 69 -29.962977020328246
		 70 -31.663594030154066 71 -33.633929940287096 72 -35.617211554024571 73 -37.467123407263415
		 74 -39.162880504948731 75 -40.861432980957787 76 -42.408393314802183 77 -43.757944357546393
		 78 -44.980017679280941 79 -46.102805533330084 80 -47.093659061913947 81 -47.922441692090487
		 82 -48.612657203887821 83 -49.159094728925737 84 -49.545252719863967 85 -49.801008666605426
		 86 -49.971321215466261 87 -50.079905202891439 88 -50.154711953888807 89 -50.220610949823708
		 90 -50.262530316593455 91 -50.239820268049186 92 -50.168008435918679 93 -50.077069285177785
		 94 -49.989818970776909 95 -49.933257258646492 96 -49.873326388512652 97 -49.774456346849448
		 98 -49.656189285280618 99 -49.531351263149716 100 -49.409747911682331 101 -49.32817802577965
		 102 -49.28446195480258 103 -49.254508799928942 104 -49.221825122332802 105 -49.232868181900045
		 106 -49.271530965500588 107 -49.288499110303519 108 -49.312547567156585 109 -49.354580301408333
		 110 -49.354716954597095 111 -49.330985566638603 112 -49.294801752894628 113 -49.268811928873845
		 114 -49.265365060850712 115 -49.255747026224839 116 -49.238966394583898 117 -49.238394515356987
		 118 -49.270189158009799 119 -49.311258870355559 120 -49.311086758020423 121 -49.304252896929057
		 122 -49.329653998442609 123 -49.349368101232869 124 -49.358165970812905 125 -49.364876479309423
		 126 -49.36802501338488 127 -49.37590171431718 128 -49.374909862586982 129 -49.35369865259576
		 130 -49.321128160685667 131 -49.299483869125794 132 -49.281180844694838 133 -49.215751612709525
		 134 -49.190441190322375 135 -49.408487547535316 136 -49.622509943437059;
createNode animCurveTL -n "locator4_translateZ";
	rename -uid "8002DBE1-4271-F1C1-E45F-3E8894473C78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 8.9537321017965628 1 6.7454224434985939
		 2 5.0220365147053219 3 3.2304332968063445 4 1.2060987464492454 5 -0.86339875354096385
		 6 -2.7253539075330897 7 -4.2533980313768787 8 -5.348559943368139 9 -5.974844499290791
		 10 -5.9326353457730754 11 -4.3077459717663906 12 -0.46975600606174339 13 4.1762250076452219
		 14 8.1805158704988159 15 11.57271555229849 16 14.608997691910353 17 17.162415902227139
		 18 19.392044646874893 19 21.282911220681129 20 22.57994920574086 21 23.118064087940041
		 22 22.742857970689656 23 21.265446079010786 24 20.366898573756174 25 22.718966190099536
		 26 24.501861572099713 27 24.523522680490473 28 23.887301003727899 29 23.036947951542558
		 30 21.648850599107959 31 20.194306982762896 32 18.985832035274399 33 17.261771055690986
		 34 14.990275158737276 35 12.99684842084659 36 11.369390003573557 37 9.9428344173084042
		 38 9.5421268409957776 39 12.528765779490328 40 18.559974487480531 41 25.475619975896922
		 42 28.869865679668333 43 28.370949964950903 44 27.459353626603558 45 28.327159595890549
		 46 28.203273847782953 47 26.147309342799332 48 23.139032373748933 49 20.534865352928534
		 50 18.668603070183053 51 15.995905514831293 52 11.794045978539231 53 6.9839094878694539
		 54 2.6697216166247983 55 -0.79274367072568452 56 -2.7010455036199517 57 -3.2006494786587041
		 58 -2.2807030638096251 59 1.2171190966097925 60 8.7586672903052545 61 19.996566197468326
		 62 27.168515078169122 63 29.803986793975469 64 31.868577226827426 65 33.628923507568572
		 66 34.645135629647882 67 35.303239091519259 68 35.39926018035726 69 34.664895393398552
		 70 33.452676301245162 71 32.00330450158242 72 30.402370460634302 73 28.66772326308697
		 74 26.800482104071904 75 24.710897374144395 76 22.608368878483532 77 20.552417583661793
		 78 18.439750225468032 79 16.209682518684929 80 13.824573817735541 81 11.399371816698618
		 82 9.0451653774123315 83 6.9376353394098089 84 5.2444254047426568 85 3.9878310911085464
		 86 3.1510987727059501 87 2.6603112710391201 88 2.3833003742871313 89 2.2633211153228672
		 90 2.3627036462234514 91 2.7161975313214555 92 3.2204753675019617 93 3.6879981466618972
		 94 3.9808129771980987 95 4.0857049255583604 96 4.1433771965327253 97 4.293491882469084
		 98 4.5342623156926436 99 4.7787566189075505 100 4.9646528633166724 101 5.0041662082660423
		 102 4.9205203803883251 103 4.7556680370534821 104 4.4889492343014581 105 4.0612193197943611
		 106 3.637187740076314 107 3.3517377971812436 108 3.0875344764148451 109 2.764725812527189
		 110 2.4896404686721212 111 2.2345090191732311 112 1.9816375117669338 113 1.8341267242839194
		 114 1.8572885130140833 115 1.9892563979182967 116 2.0866125622571587 117 2.1287818225840169
		 118 2.1660939919243845 119 2.2245186383639464 120 2.345613017001142 121 2.5558264225178959
		 122 2.91741056896754 123 3.1981783771168466 124 3.4068686850576455 125 3.787280526764448
		 126 4.1192559838010538 127 4.2585770909933558 128 4.3952821184932986 129 4.5495951558791887
		 130 4.7004891789192413 131 4.8429573651831674 132 4.9793526866547495 133 5.2855642288756144
		 134 5.4844074553445807 135 4.9347483055036889 136 4.2901825212059919;
createNode animCurveTA -n "locator4_rotateX";
	rename -uid "148269E6-4627-5679-330A-FF89110E4624";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 10.169299609124666 1 10.607571698857917
		 2 10.896149360613068 3 11.800153919022422 4 13.843682850743814 5 16.995968481278862
		 6 20.290726118320855 7 23.721078344088248 8 27.698190879317085 9 32.112486381558305
		 10 37.56184094533338 11 42.935516792007974 12 48.041679071557311 13 51.584670192224614
		 14 52.849532881456035 15 51.574177364236448 16 48.168591424845161 17 42.704314419152176
		 18 34.814085479927648 19 24.79082259891841 20 13.024543195026444 21 -0.54515890843835801
		 22 -14.360621048044264 23 -26.216761993637764 24 -31.302685327711554 25 -24.962776150397357
		 26 -17.165311660472888 27 -12.474332896865981 28 -7.3878226256980417 29 -0.35105880370936482
		 30 5.4148551989152107 31 8.9972779186384262 32 11.279416519941178 33 13.308521841461275
		 34 15.243555792158693 35 16.426884962728778 36 16.946160428510574 37 17.408640791436056
		 38 17.187158260121425 39 14.950232229058717 40 9.3973502030083136 41 2.8866514759754596
		 42 -5.6775066446614373 43 -18.513301115197795 44 -25.881859151013469 45 -20.46711273888771
		 46 -12.432796520378375 47 -8.2481541816403166 48 -2.6954541701008985 49 5.1340503915924183
		 50 14.749771027862371 51 23.661579912907754 52 31.798833128543261 53 38.586519346013553
		 54 43.247220234226354 55 46.268162227872097 56 47.299577657166154 57 45.108396238863811
		 58 41.132381773757253 59 40.01506407692726 60 32.840808492294428 61 24.87581678545099
		 62 17.776286625775342 63 9.7935745675377373 64 1.9242442738993211 65 -5.4823685593899754
		 66 -11.468152425244531 67 -14.543285129432588 68 -14.311304234385471 69 -11.125037418743368
		 70 -6.8210020826923632 71 -2.5912308944717255 72 1.0717199112219924 73 4.1002897042299198
		 74 6.5549353479632249 75 8.7334744159161026 76 10.750691012990284 77 12.761241207130933
		 78 14.930278190192894 79 17.23741729811325 80 19.656855081065061 81 22.06287103144216
		 82 24.228915155794017 83 25.97846258885059 84 27.358714104568829 85 28.397271859590109
		 86 29.047818532072338 87 29.509201937331493 88 29.728367991989892 89 29.839920695766637
		 90 30.064336124867381 91 30.347596144043614 92 30.482958844777812 93 30.44310208058176
		 94 30.306878158318533 95 30.029130795093007 96 29.600150126632695 97 29.065953739910718
		 98 28.423339696609503 99 27.722357229860492 100 27.157852379883771 101 26.789243567976836
		 102 26.501522343055491 103 26.260126907221352 104 26.105677224987158 105 25.764361183553135
		 106 25.308462890093896 107 24.877849063617184 108 24.426749758807055 109 23.950497627475421
		 110 23.347992894672821 111 22.677133830037963 112 22.070856658566605 113 21.586983483447455
		 114 21.151064852031904 115 20.698511170639652 116 20.257331814602058 117 19.939715544618952
		 118 19.755125928929605 119 19.56867193413051 120 19.456211811855422 121 19.49946700977377
		 122 19.740605266775393 123 19.772697253619153 124 19.495373220467762 125 19.210434730558887
		 126 18.992881000593854 127 18.81887163091103 128 18.593390660564907 129 18.325178463101256
		 130 18.003596589005635 131 17.661716514419265 132 17.359054670379454 133 16.964071399214934
		 134 16.684328488434183 135 16.995029145648168 136 17.329911623733924;
createNode animCurveTA -n "locator4_rotateY";
	rename -uid "8CD06560-45D2-79A2-6AAA-689E35033FDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -12.376762643566353 1 -12.076750223680035
		 2 -11.933064618444114 3 -11.599144947740561 4 -11.732637969164543 5 -12.140168422113884
		 6 -12.681188642096483 7 -13.348754665662542 8 -13.226287962153911 9 -12.19514870323853
		 10 -11.357757954288864 11 -9.1426563046778551 12 -8.7805052240390022 13 -7.2149742176560645
		 14 -5.4350193148512167 15 -5.1473499908655729 16 -6.9747162909152944 17 -9.6698420614753164
		 18 -11.14464419801679 19 -11.189583462726954 20 -12.568262569792873 21 -15.736335434250904
		 22 -17.821150215569595 23 -19.666232984570751 24 -22.364392985736018 25 -24.658688626052491
		 26 -28.003146863213473 27 -31.147118022197123 28 -32.228323511501586 29 -31.918136292852843
		 30 -31.911045564958307 31 -31.820791670448628 32 -30.150786423138996 33 -27.644173646351994
		 34 -24.923777621983653 35 -20.883873095507695 36 -14.95533805873834 37 -8.2842834042985114
		 38 -3.5421423904442313 39 -3.6218071722884226 40 -4.0945570317116804 41 -5.1981791728675368
		 42 -9.1492812008077244 43 -16.908736100931829 44 -24.772555767627502 45 -27.257054148202069
		 46 -24.080838489807871 47 -21.169799063295734 48 -20.56640344450215 49 -19.29049089241596
		 50 -14.676471208348557 51 -10.330054353359625 52 -9.8282064145432493 53 -10.620962010287414
		 54 -10.780923908631136 55 -11.790994641559424 56 -13.137888507381595 57 -14.681312747083311
		 58 -20.029767795036314 59 -33.946429190889205 60 -35.849975291329066 61 -30.490520268912768
		 62 -26.302139740659268 63 -23.687634455359404 64 -19.150607465324271 65 -14.53967875631689
		 66 -15.803701370612961 67 -16.735032332335575 68 -15.752541617285782 69 -14.853405697779253
		 70 -14.197077131289539 71 -13.536883151569375 72 -13.857883461551465 73 -14.59654439380955
		 74 -15.283129156257319 75 -15.942195393759162 76 -16.953655279754173 77 -17.669813672886079
		 78 -18.05269838617944 79 -18.306825574965128 80 -18.535323932339214 81 -18.38122619994504
		 82 -17.694612172168931 83 -16.748858824875725 84 -16.24253158006341 85 -16.321949460244195
		 86 -16.464297376682062 87 -16.917517461437754 88 -17.734921340057987 89 -18.814024956212574
		 90 -19.970095731809938 91 -21.06581504375351 92 -22.062480356128003 93 -22.940482872431211
		 94 -23.544520449395236 95 -23.754333578238054 96 -23.65504509381655 97 -23.482652344076872
		 98 -23.319083527465683 99 -23.166888656592022 100 -23.009838076497644 101 -22.761892458197384
		 102 -22.43175596732771 103 -22.012240771052848 104 -21.345817122602682 105 -20.691140056419602
		 106 -20.115373732119529 107 -19.472616869681197 108 -18.834044419542302 109 -18.338322644426786
		 110 -17.667216570090609 111 -16.690056430732959 112 -16.119486090049765 113 -16.005483122467837
		 114 -15.907948417236994 115 -15.835443215767128 116 -15.762781887545454 117 -15.621293482654494
		 118 -15.387593295474156 119 -15.058630516666176 120 -14.88795274150651 121 -15.590777848324869
		 122 -17.0848729711063 123 -17.843217933674609 124 -17.80548165648726 125 -17.57250709945091
		 126 -17.43570596731411 127 -17.396589681474783 128 -17.351140601475823 129 -17.312717982322447
		 130 -17.152693341650856 131 -16.781430247749181 132 -16.535575509128599 133 -16.524248211465558
		 134 -16.578603525363786 135 -16.757339471007583 136 -16.912705748494194;
createNode animCurveTA -n "locator4_rotateZ";
	rename -uid "F9E2E74D-43F1-3CAA-B4B4-5CB3414CE1F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 3.9779306507394079 1 3.4084863467156223
		 2 2.9506520701348751 3 2.1768279283248129 4 0.9340319998925154 5 -0.45203664376842573
		 6 -2.2781347612516409 7 -4.9745584612899849 8 -8.6526756331915564 9 -13.023685665398315
		 10 -15.517076325947457 11 -15.67702313002053 12 -19.051647564561438 13 -19.937013114465174
		 14 -17.494293791557141 15 -14.883731810307049 16 -13.355580299702405 17 -11.400328788453752
		 18 -8.3275618303798264 19 -5.3464438254570847 20 -3.4405374921017677 21 -1.3809641413240206
		 22 0.87907521093086016 23 4.3035201935359275 24 7.7681075095025838 25 7.6806211019712114
		 26 5.5836099416223313 27 5.0613363609716853 28 6.1016298141048049 29 5.6338685424330057
		 30 4.9836460842836789 31 4.3230147397578049 32 2.9895968650713969 33 1.4992890401816741
		 34 0.34606868894326126 35 -0.4935267799865955 36 -1.044490680777955 37 -1.3737326225673105
		 38 -3.3715943486395954 39 -8.8170067238890564 40 -12.363646140424063 41 -13.712095490173636
		 42 -9.1568621764923073 43 0.58443304192122159 44 7.6378153088828178 45 5.3235690204707247
		 46 -2.6760460309956144 47 -9.6174024418375108 48 -14.586011458252829 49 -19.44966326804759
		 50 -23.894737731997836 51 -25.668139083271658 52 -25.279447747791682 53 -24.233013979422772
		 54 -22.859013471793794 55 -21.705584006446415 56 -20.593850192009505 57 -18.764200885531388
		 58 -19.400658987946802 59 -26.426793398056734 60 -21.304157798268946 61 -16.479489432273596
		 62 -14.686502670131581 63 -11.164568261782211 64 -8.4571062293851718 65 -6.0224974248515828
		 66 -2.1470320724041585 67 0.40729292557508906 68 -0.15982476349447142 69 -1.9942762166304842
		 70 -3.2516723231718734 71 -3.8244576440967393 72 -4.1757652881362892 73 -4.3177391882067413
		 74 -4.2846099838552458 75 -4.2608782286114222 76 -4.6119343403409214 77 -5.3123557978352256
		 78 -6.2726349886747199 79 -7.4046964698293536 80 -8.7748788107452231 81 -10.265227677730188
		 82 -11.53621995020805 83 -12.345857109757713 84 -13.037390889393684 85 -13.838688978181905
		 86 -14.315818145851882 87 -14.460565028918309 88 -14.413956661298538 89 -14.387366638235786
		 90 -14.596165611406976 91 -14.908072818145516 92 -15.057196289880203 93 -15.056635498217034
		 94 -15.099961520319003 95 -15.222004452555005 96 -15.516623477212798 97 -15.905129365304047
		 98 -16.074829338525475 99 -16.089206316081135 100 -16.188716126377464 101 -16.446628075601854
		 102 -16.765610598531307 103 -17.145980696331911 104 -17.65675805767042 105 -18.011946932101953
		 106 -18.24356067775285 107 -18.510143497224476 108 -18.702187854956215 109 -18.750506331862262
		 110 -18.704633863085306 111 -18.605714797809242 112 -18.462582188178576 113 -18.439258368320175
		 114 -18.420643956904527 115 -18.373982933790106 116 -18.256762313135741 117 -18.020226987603809
		 118 -17.683435520641588 119 -17.267664065569015 120 -16.824411814919429 121 -16.918024866611663
		 122 -17.602362800512957 123 -17.636282764416556 124 -17.051516377725523 125 -16.681126543659836
		 126 -16.377980421634753 127 -15.94330976128437 128 -15.544901803108729 129 -15.233263941315156
		 130 -14.897942134762484 131 -14.523460073304888 132 -14.276979574574577 133 -14.235391250817049
		 134 -14.162753513453177 135 -13.821458941555946 136 -13.555494986843247;
createNode animCurveTU -n "locator4_scaleX";
	rename -uid "49A9EA93-4312-0EF8-9D85-0E8B47A3323B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1.0000000000000002 2 1 3 0.99999999999999989
		 4 1 5 0.99999999999999989 6 1 7 0.99999999999999989 8 0.99999999999999989 9 1 10 1.0000000000000002
		 11 1 12 0.99999999999999989 13 1 14 0.99999999999999989 15 1 16 0.99999999999999989
		 17 0.99999999999999989 18 1 19 1 20 0.99999999999999978 21 0.99999999999999989 22 0.99999999999999989
		 23 1 24 1 25 1 26 1 27 0.99999999999999989 28 1 29 0.99999999999999989 30 1 31 1
		 32 1 33 0.99999999999999989 34 0.99999999999999989 35 1 36 1 37 1 38 1 39 0.99999999999999967
		 40 1.0000000000000002 41 1 42 0.99999999999999989 43 1.0000000000000002 44 1 45 1.0000000000000002
		 46 1 47 1 48 1 49 0.99999999999999989 50 1 51 1 52 0.99999999999999989 53 0.99999999999999978
		 54 1 55 1 56 0.99999999999999956 57 0.99999999999999989 58 0.99999999999999967 59 1.0000000000000002
		 60 1 61 1 62 0.99999999999999989 63 1.0000000000000002 64 1 65 1.0000000000000002
		 66 1.0000000000000002 67 1.0000000000000002 68 1 69 1 70 0.99999999999999989 71 0.99999999999999978
		 72 1.0000000000000002 73 1 74 0.99999999999999978 75 0.99999999999999989 76 1 77 1.0000000000000002
		 78 1 79 0.99999999999999989 80 1 81 0.99999999999999989 82 0.99999999999999978 83 1
		 84 0.99999999999999989 85 1 86 0.99999999999999956 87 0.99999999999999978 88 1 89 1
		 90 1 91 1 92 0.99999999999999978 93 0.99999999999999989 94 0.99999999999999989 95 0.99999999999999978
		 96 0.99999999999999989 97 0.99999999999999989 98 1 99 0.99999999999999989 100 1 101 1
		 102 1 103 0.99999999999999989 104 0.99999999999999967 105 1 106 1 107 1 108 1 109 1
		 110 1 111 0.99999999999999989 112 0.99999999999999989 113 1 114 0.99999999999999944
		 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 0.99999999999999989 123 0.99999999999999956
		 124 0.99999999999999956 125 0.99999999999999989 126 0.99999999999999989 127 1 128 1.0000000000000002
		 129 0.99999999999999989 130 1.0000000000000002 131 1 132 0.99999999999999989 133 1.0000000000000002
		 134 1 135 1.0000000000000002 136 0.99999999999999989;
createNode animCurveTU -n "locator4_scaleY";
	rename -uid "7445D436-437C-74E2-BA65-3EAFCEC73BFC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999989 1 0.99999999999999989
		 2 0.99999999999999989 3 0.99999999999999989 4 0.99999999999999989 5 0.99999999999999989
		 6 1.0000000000000002 7 1.0000000000000002 8 0.99999999999999978 9 1.0000000000000002
		 10 1.0000000000000002 11 0.99999999999999989 12 1 13 1.0000000000000002 14 1 15 0.99999999999999989
		 16 1 17 0.99999999999999967 18 1 19 1 20 0.99999999999999978 21 0.99999999999999989
		 22 0.99999999999999989 23 1 24 1 25 1.0000000000000002 26 0.99999999999999989 27 0.99999999999999978
		 28 1 29 1 30 1 31 0.99999999999999989 32 1 33 1 34 0.99999999999999989 35 1 36 0.99999999999999989
		 37 0.99999999999999989 38 0.99999999999999978 39 0.99999999999999967 40 0.99999999999999989
		 41 0.99999999999999978 42 1.0000000000000002 43 1 44 1 45 1.0000000000000002 46 1
		 47 0.99999999999999978 48 1 49 0.99999999999999989 50 0.99999999999999989 51 1 52 1
		 53 0.99999999999999978 54 0.99999999999999989 55 1.0000000000000002 56 0.99999999999999989
		 57 0.99999999999999989 58 0.99999999999999989 59 0.99999999999999989 60 1 61 0.99999999999999989
		 62 1 63 1 64 0.99999999999999989 65 1.0000000000000002 66 0.99999999999999967 67 1.0000000000000002
		 68 1.0000000000000002 69 1.0000000000000002 70 0.99999999999999989 71 0.99999999999999989
		 72 1 73 1 74 0.99999999999999989 75 0.99999999999999978 76 1 77 0.99999999999999989
		 78 0.99999999999999989 79 1.0000000000000002 80 1 81 0.99999999999999978 82 0.99999999999999989
		 83 0.99999999999999978 84 0.99999999999999989 85 0.99999999999999989 86 0.99999999999999989
		 87 0.99999999999999989 88 0.99999999999999978 89 0.99999999999999978 90 1.0000000000000002
		 91 0.99999999999999989 92 0.99999999999999989 93 0.99999999999999989 94 1 95 0.99999999999999989
		 96 1 97 1 98 1.0000000000000004 99 0.99999999999999967 100 0.99999999999999967 101 1
		 102 1 103 0.99999999999999967 104 0.99999999999999978 105 0.99999999999999989 106 0.99999999999999989
		 107 1 108 0.99999999999999989 109 1 110 1 111 1 112 1 113 1 114 1 115 0.99999999999999978
		 116 0.99999999999999989 117 0.99999999999999989 118 1 119 1 120 0.99999999999999989
		 121 1 122 1 123 0.99999999999999978 124 0.99999999999999989 125 0.99999999999999978
		 126 0.99999999999999989 127 0.99999999999999989 128 1 129 1 130 1 131 1 132 0.99999999999999989
		 133 1 134 0.99999999999999967 135 1 136 1;
createNode animCurveTU -n "locator4_scaleZ";
	rename -uid "7D5D8A45-4740-A9CA-47F3-4FBBDF6BEFF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 1.0000000000000002
		 3 0.99999999999999989 4 1 5 0.99999999999999989 6 1 7 1 8 1 9 1 10 1.0000000000000002
		 11 0.99999999999999989 12 0.99999999999999989 13 1.0000000000000002 14 0.99999999999999989
		 15 1 16 1 17 0.99999999999999989 18 1 19 1 20 0.99999999999999978 21 0.99999999999999978
		 22 1 23 1 24 1 25 1 26 1 27 0.99999999999999967 28 1 29 1.0000000000000002 30 0.99999999999999989
		 31 0.99999999999999989 32 1 33 0.99999999999999989 34 0.99999999999999989 35 1 36 1
		 37 1 38 1 39 0.99999999999999978 40 1 41 1 42 1 43 1.0000000000000002 44 0.99999999999999989
		 45 1.0000000000000002 46 1 47 0.99999999999999989 48 0.99999999999999989 49 0.99999999999999989
		 50 1.0000000000000002 51 1.0000000000000002 52 0.99999999999999989 53 1 54 1 55 0.99999999999999978
		 56 0.99999999999999978 57 0.99999999999999978 58 0.99999999999999967 59 0.99999999999999978
		 60 0.99999999999999989 61 1 62 1.0000000000000002 63 1.0000000000000002 64 1 65 1.0000000000000002
		 66 1.0000000000000002 67 1.0000000000000002 68 1 69 0.99999999999999989 70 0.99999999999999978
		 71 0.99999999999999978 72 1 73 0.99999999999999978 74 0.99999999999999989 75 0.99999999999999989
		 76 0.99999999999999967 77 1 78 0.99999999999999989 79 1 80 1.0000000000000002 81 0.99999999999999978
		 82 0.99999999999999978 83 0.99999999999999967 84 1 85 1 86 0.99999999999999967 87 0.99999999999999989
		 88 0.99999999999999978 89 1 90 1.0000000000000002 91 0.99999999999999967 92 0.99999999999999989
		 93 1.0000000000000002 94 1 95 1 96 0.99999999999999989 97 0.99999999999999989 98 1.0000000000000002
		 99 0.99999999999999956 100 1.0000000000000002 101 1 102 1.0000000000000002 103 1
		 104 0.99999999999999922 105 1.0000000000000002 106 0.99999999999999989 107 1 108 0.99999999999999989
		 109 0.99999999999999989 110 1 111 0.99999999999999978 112 1.0000000000000002 113 0.99999999999999989
		 114 0.99999999999999956 115 0.99999999999999989 116 1 117 1 118 1.0000000000000002
		 119 1.0000000000000002 120 1 121 1 122 0.99999999999999978 123 0.99999999999999933
		 124 0.99999999999999933 125 0.99999999999999989 126 1 127 0.99999999999999978 128 1.0000000000000004
		 129 1 130 1.0000000000000002 131 1 132 0.99999999999999989 133 1 134 0.99999999999999978
		 135 0.99999999999999989 136 1;
createNode animCurveTU -n "locator5_visibility";
	rename -uid "CD395B3A-4761-61C4-FA84-FB923C4DEC1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1
		 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1
		 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1
		 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTL -n "locator5_translateX";
	rename -uid "7B9A3EF9-45FB-043F-9F8F-7EAB07B7BEA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -2.0265478159482546 1 -3.2197342263000364
		 2 -4.3147642864726663 3 -5.2301942948721987 4 -6.1944678185789757 5 -7.2191735829011572
		 6 -8.5908723642495755 7 -10.478144502300015 8 -13.18339504056291 9 -16.402089785459118
		 10 -18.753795439329004 11 -20.685636606919125 12 -22.583158880622307 13 -23.095428251424849
		 14 -21.552773560319189 15 -19.216055003221804 16 -17.068963428129191 17 -15.223783853075757
		 18 -14.015046596072075 19 -13.433989467978869 20 -12.885070281867595 21 -12.490657959265345
		 22 -12.883175805391105 23 -13.723893077307988 24 -14.611626203500329 25 -13.846511762761697
		 26 -12.379980343735991 27 -11.685459133085985 28 -9.5644372826374759 29 -5.9672492306919569
		 30 -2.7402945359547415 31 -1.1117458221995911 32 -1.0452557998069327 33 -1.3827204133815996
		 34 -1.5308925443486356 35 -2.2097887896848825 36 -3.8266593443856785 37 -6.9720995981740401
		 38 -13.106841531463672 39 -19.834177505109125 40 -24.801071855164579 41 -28.223951775302382
		 42 -24.249117702706997 43 -15.714057132055146 44 -12.783139992531815 45 -18.237968488396518
		 46 -25.295022186343971 47 -30.593879453019582 48 -34.918979822120761 49 -39.200416894235254
		 50 -42.55722997847937 51 -43.079198872024847 52 -40.753860198930852 53 -36.978755575436359
		 54 -33.059202461868992 55 -29.320121387436743 56 -26.16290801737162 57 -22.973267389754714
		 58 -20.031155650626566 59 -19.197041464223542 60 -20.929194603454526 61 -23.979355359172175
		 62 -27.174035745839674 63 -28.248746958559153 64 -27.340176762136963 65 -25.253466336365562
		 66 -22.937322914262381 67 -21.304752066579653 68 -21.089030427972887 69 -21.912459484922294
		 70 -22.231159413481095 71 -21.76750674986846 72 -21.085639648438701 73 -20.435472555771412
		 74 -19.940074862152187 75 -19.416508539218427 76 -18.966466065365807 77 -18.736681624078116
		 78 -18.688167842891076 79 -18.729917563493046 80 -19.030111237585174 81 -19.547561078369796
		 82 -19.982694644954535 83 -20.111010785406123 84 -20.037450416579475 85 -19.919297748477774
		 86 -19.662827346567454 87 -19.16196034629165 88 -18.493903734760096 89 -17.722556278933979
		 90 -17.052745923837293 91 -16.67244626404603 92 -16.438933955689905 93 -16.309990843023229
		 94 -16.422554688421982 95 -16.745737832168814 96 -17.399479155567619 97 -18.299735646772717
		 98 -19.099609438585816 99 -19.813184837304121 100 -20.536860758750151 101 -21.241360269677287
		 102 -21.903224001743141 103 -22.608949978244624 104 -23.515899220258774 105 -24.281707093593525
		 106 -24.850152753415273 107 -25.457117525679564 108 -25.971514555949582 109 -26.293394507661816
		 110 -26.768859065186405 111 -27.38800140276453 112 -27.853241287168103 113 -28.146079652432121
		 114 -28.293600156251728 115 -28.407379832786688 116 -28.501073041228665 117 -28.454339237957711
		 118 -28.213157634047207 119 -27.901252176965727 120 -27.628288797359374 121 -27.436006095838593
		 122 -27.202259258186274 123 -26.816260100529789 124 -26.373155679945853 125 -26.058021498283438
		 126 -25.764625874553971 127 -25.410924007268406 128 -25.132244512252583 129 -24.992675712760757
		 130 -24.926937976800261 131 -24.851822795022116 132 -24.810608586590817 133 -24.955941151710988
		 134 -24.935537342896083 135 -24.036164290247143 136 -23.201421272954022;
createNode animCurveTL -n "locator5_translateY";
	rename -uid "9C53ED5E-4C12-8345-034C-668CE58AE12E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -92.779484130417799 1 -93.2359670437598
		 2 -93.50633335715176 3 -93.602654027280138 4 -93.384060095541344 5 -92.71144611679604
		 6 -91.785603607754922 7 -90.635957645189237 8 -89.050880452984316 9 -86.930801481183352
		 10 -84.053142510888833 11 -80.826680229620891 12 -77.583356256862118 13 -74.772840827369777
		 14 -73.389205341063018 15 -73.689418766272212 16 -75.164151763752955 17 -77.560724864632121
		 18 -80.550295119278928 19 -83.634992794462647 20 -86.332840619333453 21 -87.851237504432319
		 22 -87.552041568984095 23 -86.153623851795643 24 -85.300120122582996 25 -85.643420658323379
		 26 -86.046219500047982 27 -86.560303859919273 28 -87.124934771137234 29 -87.573835581260013
		 30 -87.938214180946758 31 -88.275122583299094 32 -88.671778831279084 33 -89.286790849072077
		 34 -89.946370671870739 35 -90.461056663095604 36 -90.868598491392561 37 -91.139302087201003
		 38 -91.111729558413316 39 -90.169684486979747 40 -87.951136704680025 41 -83.527573656444659
		 42 -81.703995793293615 43 -82.244476655682831 44 -81.976484506522155 45 -81.497906021499261
		 46 -81.081716205135848 47 -82.095667996462993 48 -83.187683409624071 49 -82.69628431429868
		 50 -80.50019791941736 51 -78.797165111498813 52 -78.029529446177406 53 -77.489663762109529
		 54 -77.07089390432634 55 -76.827187686607715 56 -77.234330622076641 57 -79.440818020822149
		 58 -82.886080639662438 59 -85.760483012305102 60 -86.400932086899843 61 -82.975080353703547
		 62 -78.652468339093275 63 -77.096297781273933 64 -76.298760738596286 65 -75.114869088895631
		 66 -73.677453385973678 67 -72.552936255756862 68 -72.630487098650661 69 -74.054458446419048
		 70 -76.0274630555827 71 -78.067172510072496 72 -79.930113557350651 73 -81.559365663802382
		 74 -82.99541468050505 75 -84.398716189948956 76 -85.623268052014382 77 -86.603464116937971
		 78 -87.371900863814929 79 -87.952696447087817 80 -88.311675510828024 81 -88.428104991796445
		 82 -88.382325056933752 83 -88.261793831028911 84 -88.106084852331492 85 -87.96726935286938
		 86 -87.895400932604915 87 -87.875138068885036 88 -87.954684981253379 89 -88.090189823606693
		 90 -88.163456485137459 91 -88.146396125005111 92 -88.128870166755846 93 -88.144545025521637
		 94 -88.1688594393394 95 -88.231887028877921 96 -88.30884862208022 97 -88.368009282003513
		 98 -88.441470439903924 99 -88.526507626034345 100 -88.563409302669939 101 -88.560205522924591
		 102 -88.554959685036209 103 -88.532489224678557 104 -88.440850182098444 105 -88.4532004522666
		 106 -88.54000522869319 107 -88.582725156121342 108 -88.641963085698649 109 -88.754887546617312
		 110 -88.850332978895409 111 -88.913185172536501 112 -88.995233291611726 113 -89.085530929537981
		 114 -89.185064601632661 115 -89.286974767589442 116 -89.386870307336864 117 -89.482247051722737
		 118 -89.583301274703501 119 -89.696176765369586 120 -89.767135095892343 121 -89.798322477739646
		 122 -89.810579339996082 123 -89.88668349469674 124 -90.027444847244666 125 -90.123763046092449
		 126 -90.200771532514125 127 -90.29451860668118 128 -90.385049176789707 129 -90.455050229828458
		 130 -90.518362323906956 131 -90.58578902175708 132 -90.643247129896082 133 -90.667867243828667
		 134 -90.713685461448179 135 -90.909938453602834 136 -91.084591858622389;
createNode animCurveTL -n "locator5_translateZ";
	rename -uid "A1747FC2-4D54-014F-13B2-3DAE051E3130";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -1.5766680912021638 1 -4.1197796922964383
		 2 -6.0613049880518908 3 -8.5305244289578575 4 -12.038780436398415 5 -16.349050520219883
		 6 -20.486711392831566 7 -24.301021497491313 8 -28.023210035639579 9 -31.5291875636185
		 10 -34.805074599216866 11 -36.343071005331019 12 -35.091970366709958 13 -32.197799892455784
		 14 -28.865349106399094 15 -24.939153847627512 16 -20.224883945007782 17 -14.702553138294363
		 18 -7.897638682784951 19 0.35086995410624411 20 9.9699027776534024 21 20.653109948388433
		 22 30.48141192710824 23 37.226661565984145 24 39.355814966495743 25 37.300589879594099
		 26 33.561573612387832 27 30.243234211346135 28 26.216748997717374 29 20.735398345648932
		 30 15.568430439891756 31 11.786495639073905 32 8.9414464549194292 33 5.630012528626537
		 34 1.7863787734564625 35 -1.4155344351006818 36 -3.8990071506229071 37 -6.0279727076163425
		 38 -6.406019527488354 39 -1.7868367117638257 40 8.3880836166071475 41 20.279682745478024
		 42 30.277766321229954 43 39.160942663009415 44 42.630721828628189 45 39.652163633003113
		 46 34.275645375258236 47 29.337171015369563 48 22.304655198401264 49 13.977439022112719
		 50 4.9351351923268396 51 -4.2340784693536762 52 -13.771774558291497 53 -22.543129864472917
		 54 -29.367605587626315 55 -34.2372118555094 56 -36.467354170769624 57 -35.684653948318527
		 58 -31.849086351731501 59 -24.376261575037205 60 -12.802357785667397 61 1.5596860985817216
		 62 12.461774175596759 63 20.19098357426725 64 27.642261033334961 65 34.862568251138015
		 66 40.330821946411987 67 43.221180138166631 68 43.186298065687055 69 40.12092445779075
		 70 35.695924562896806 71 31.058155656916171 72 26.699151484576447 73 22.71346546328266
		 74 19.048707034858211 75 15.388750618674152 76 11.877143067485491 77 8.4290273529730655
		 78 4.8155982460903033 79 1.0051159910528327 80 -3.0092293598694368 81 -7.0615078073862776
		 82 -10.916887358565987 83 -14.266115651302101 84 -16.902122807195525 85 -18.80863264859326
		 86 -20.03732774963143 87 -20.760492708191663 88 -21.068839134309826 89 -21.111737909439029
		 90 -20.983141698612741 91 -20.633361444067731 92 -20.049691261958174 93 -19.411353454376098
		 94 -18.93393065985498 95 -18.628551470562286 96 -18.333984654943208 97 -17.894687711187402
		 98 -17.294928655702961 99 -16.650222101466426 100 -16.14428295974912 101 -15.916502740715885
		 102 -15.872270158267327 103 -15.949128358548961 104 -16.215008354939101 105 -16.518455341647098
		 106 -16.729648776749258 107 -16.821371470300448 108 -16.872207298738005 109 -16.943058880681662
		 110 -16.897529870559197 111 -16.809611263111123 112 -16.712314806930209 113 -16.544749818888647
		 114 -16.235768360418461 115 -15.803077085324446 116 -15.41141758457178 117 -15.164124215016557
		 118 -15.01973242378034 119 -14.859861852959511 120 -14.674839274744386 121 -14.437574870946634
		 122 -14.110900628677911 123 -13.781127857553372 124 -13.387818562475871 125 -12.835156472044275
		 126 -12.367158826785243 127 -12.112360135725254 128 -11.825244715129372 129 -11.490212635015098
		 130 -11.131815816450114 131 -10.784286023692857 132 -10.45795888502181 133 -9.8779208251585544
		 134 -9.4798449423113595 135 -10.231842814922345 136 -11.096423213627645;
createNode animCurveTA -n "locator5_rotateX";
	rename -uid "BF042C4B-497A-E4E7-5B91-CFA97BFCD38B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -7.5509688603665062 1 -7.2371855446096216
		 2 -6.9353829943995562 3 -6.2933950592541725 4 -4.9467341683114068 5 -2.8637034243659545
		 6 -0.12440380177866836 7 3.5685584997787791 8 8.6941211639737652 9 16.293878792172844
		 10 28.147339793393204 11 43.991555798900514 12 57.537700879926632 13 62.892293525888128
		 14 62.599085521905913 15 60.093063547816286 16 55.143039364404324 17 47.427744804224595
		 18 37.296779368026961 19 25.191938067599391 20 11.186948574033652 21 -4.3911431446415845
		 22 -18.93956139426535 23 -31.085608974982573 24 -39.195529454739464 25 -36.188614142306456
		 26 -22.553099861575728 27 -10.984813135352949 28 -5.4492369259200295 29 -2.9001657870316273
		 30 -1.3518744045172342 31 -0.96937188030126553 32 -1.5981067958497495 33 -2.0363959657857427
		 34 -1.9980936963219562 35 -1.8580335603051679 36 -1.5962507903751744 37 -1.454849171569532
		 38 -1.6851148620787413 39 -2.4006418432356766 40 -2.7413246741119695 41 -3.1211365284150339
		 42 -12.48314838870157 43 -22.73055434098228 44 -33.006607266949999 45 -36.398162811960887
		 46 -27.14458481697476 47 -19.698674120690743 48 -15.2962456434361 49 -7.4741592836226056
		 50 2.1520536759327329 51 12.352035197525494 52 21.86222829989843 53 30.827539563942246
		 54 38.954871729692087 55 44.890459266354085 56 47.971221390455803 57 46.03220414551798
		 58 34.325268631970602 59 12.793250722850095 60 -5.4452025670288746 61 -9.6758182146324572
		 62 -11.054235309110496 63 -15.920640155919262 64 -20.872694512766792 65 -24.118428787440219
		 66 -26.824731119532959 67 -28.800957984757858 68 -28.519780919338384 69 -26.322753045785607
		 70 -23.52788128822348 71 -20.765208212448577 72 -18.289099689639823 73 -16.510542483184313
		 74 -15.069566770366999 75 -13.607406005361623 76 -12.032985471518224 77 -10.30724428878943
		 78 -8.5776020881952082 79 -6.8399885992701002 80 -4.8056377401828954 81 -2.6330185995264332
		 82 -0.50491434064950858 83 1.6038341895383303 84 3.5190358097714696 85 4.9562105446420137
		 86 5.8637267590949227 87 6.1455180843569845 88 6.1973946732376426 89 6.1014242647220618
		 90 5.970464599113531 91 5.7901193780106945 92 5.4855489389083258 93 5.1084918513460869
		 94 4.7944102469700738 95 4.5550968019210831 96 4.2882247088714687 97 3.912572975253545
		 98 3.4210746625616348 99 2.9291190684320836 100 2.6164695540686722 101 2.5050425809285719
		 102 2.5008769012586343 103 2.534932394531979 104 2.740907801044222 105 2.9123934512405536
		 106 2.9928471901960898 107 2.9892260700017323 108 2.8868260542319644 109 2.7308599343354807
		 110 2.5058418177358868 111 2.2261745439860845 112 1.8917057232197898 113 1.567772796994751
		 114 1.2882673581846746 115 1.0461845213925893 116 0.82775665969250822 117 0.72111295933205144
		 118 0.69961699159786439 119 0.64334560829082199 120 0.6125659422721158 121 0.55001589081051816
		 122 0.45069415251266232 123 0.33112864081096705 124 0.14662341117687952 125 -0.11230136544712549
		 126 -0.32654706486343466 127 -0.45994703492355615 128 -0.61814325220131616 129 -0.80517348361630225
		 130 -1.0303339083770484 131 -1.2609490127872491 132 -1.4731217450128815 133 -1.8256631021813989
		 134 -2.0989282311039426 135 -1.7751729270493399 136 -1.4033583748167318;
createNode animCurveTA -n "locator5_rotateY";
	rename -uid "2973A00C-4EAA-CD8A-1300-CCB06AA99D66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -12.280560752118166 1 -11.700396643424984
		 2 -11.168256707631555 3 -11.150509375868378 4 -11.494448819249635 5 -11.724218641324127
		 6 -11.844921297133853 7 -11.590708614456695 8 -10.839571136874948 9 -10.431305413940738
		 10 -10.428101724663547 11 -9.1530111131320364 12 -6.6502511525102213 13 -5.4198498897184342
		 14 -4.2779428760998019 15 -4.1713273802857511 16 -5.611919787126177 17 -7.2372898568831587
		 18 -8.8635935775950241 19 -9.9744540984028927 20 -12.343561405180919 21 -15.758232555875098
		 22 -16.359108387738246 23 -16.229087338594944 24 -17.603356671008861 25 -23.083133304517816
		 26 -29.810644479780933 27 -32.374409521524981 28 -32.714538378812783 29 -31.86562991040088
		 30 -31.673221619340612 31 -31.612480377478825 32 -30.080815675104049 33 -27.748288433261603
		 34 -25.218204342876092 35 -21.488534660228115 36 -15.85386561052692 37 -9.2845938127731671
		 38 -1.3313093847003175 39 10.99263599373273 40 27.658045901936312 41 28.42436195719467
		 42 26.32073463008448 43 21.364944577874031 44 15.757893288933071 45 12.629775393160017
		 46 12.12468430159573 47 11.517872908420248 48 2.9355329401209618 49 1.4688595869039349
		 50 7.8378590161167647 51 10.553768918638871 52 7.6683041033593797 53 2.9129507385726585
		 54 -1.7895961514929637 55 -6.4500971239278657 56 -10.988735739234786 57 -17.216674798902812
		 58 -28.469236754592306 59 -38.86336443817639 60 -35.944392264843302 61 -28.137997222176129
		 62 -23.714855359026608 63 -20.51606877542525 64 -15.864815242892959 65 -11.109897321430225
		 66 -8.5456447167962839 67 -7.6239224548661202 68 -7.339785072921484 69 -7.6564894185826953
		 70 -8.5212713816563195 71 -9.6922136827774654 72 -10.754148599246866 73 -11.593195371279787
		 74 -12.363358593955539 75 -13.162242819810709 76 -13.89727503394824 77 -14.511656806058383
		 78 -15.029559142114966 79 -15.480430343288624 80 -15.927356880113242 81 -16.178313261041207
		 82 -16.310424983533093 83 -16.746797498314713 84 -17.456052339396301 85 -18.114750922727804
		 86 -18.658816330760978 87 -19.278013936814133 88 -20.147184700940326 89 -21.291283674145383
		 90 -22.577153135164519 91 -23.766996919594767 92 -24.751503650628781 93 -25.532007375189618
		 94 -26.032907969579679 95 -26.212219658102683 96 -26.141355948678541 97 -25.976779125998878
		 98 -25.778820799204446 99 -25.525332625865094 100 -25.21774076858561 101 -24.883989860497888
		 102 -24.526604945764998 103 -24.072553797833983 104 -23.499552252247653 105 -23.015949929122357
		 106 -22.580220051873898 107 -22.030150318276089 108 -21.473499280473721 109 -21.007716761310078
		 110 -20.309231295952159 111 -19.344767725902798 112 -18.533405531487567 113 -17.893315671907413
		 114 -17.309245001187723 115 -16.781460786097831 116 -16.343366063015953 117 -16.016680347067641
		 118 -15.758887689099724 119 -15.580310889949605 120 -15.500714394262253 121 -15.470397470373825
		 122 -15.479984964513745 123 -15.558623150049499 124 -15.666025663394045 125 -15.711808011267161
		 126 -15.690524506422607 127 -15.718052492537081 128 -15.803132173400916 129 -15.855096826183432
		 130 -15.860273180001315 131 -15.913692721935712 132 -15.950787888452602 133 -15.868176478363777
		 134 -15.874671164695652 135 -16.196942943734879 136 -16.529129340784483;
createNode animCurveTA -n "locator5_rotateZ";
	rename -uid "BEA14EE6-4F24-E2C5-57FF-0F9F1229F42D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 2.0982470890718088 1 1.9036291956341715
		 2 1.5610752885748935 3 1.1172074978502853 4 0.23258896913429189 5 -0.58109757802982021
		 6 -1.4750462050525366 7 -2.6498182753955564 8 -3.8426592414796721 9 -5.6900095116059255
		 10 -9.4877060613262216 11 -15.86605593320947 12 -21.124019346454496 13 -21.556217366706051
		 14 -18.504697405198247 15 -15.64712876385787 16 -14.39549438710621 17 -13.647616047686675
		 18 -11.229457743427391 19 -7.7195347087199577 20 -4.2947731985322104 21 1.2890606824662585
		 22 7.1806394170180692 23 11.81244208763276 24 15.553502132284653 25 11.289778400946332
		 26 0.17920678488476943 27 -2.1777931067074259 28 -0.946748354580216 29 0.22569898901667054
		 30 1.4050178163140938 31 2.1761551080749881 32 2.2226408782485128 33 1.9414555680655801
		 34 1.8029352619703625 35 2.7200969293913837 36 3.5954156340822907 37 3.2181487142058027
		 38 2.3473148711928666 39 2.0366919012244318 40 3.315459362554384 41 8.0996918716570576
		 42 5.6130368101451156 43 11.180954223349378 44 13.309743567547905 45 7.5227673819505023
		 46 0.90763572694129069 47 -8.2379824499463457 48 -17.622346714437192 49 -23.272044858184437
		 50 -22.596451151441826 51 -19.417257397761841 52 -16.639354119089102 53 -14.531127288136203
		 54 -11.807597518049185 55 -7.8386044307502782 56 -3.2479742606097579 57 -2.516172352398458
		 58 -8.2649768726688233 59 -11.186624837332513 60 -3.5821624696880048 61 -2.8969824174665062
		 62 -3.9343788308464909 63 -3.6134695854345216 64 -2.1098867768174663 65 -0.028683734713362375
		 66 1.1873140710891241 67 1.3520213557730394 68 0.74418800475099067 69 -0.46987472164360872
		 70 -1.0911140109274007 71 -1.0772924723260597 72 -0.97191292402215212 73 -0.93569196321349146
		 74 -0.99518369758636771 75 -1.0607208674159496 76 -1.178588476515867 77 -1.4427799832835269
		 78 -1.860643383703676 79 -2.3761710122141357 80 -3.0936061342812056 81 -3.9686174516892274
		 82 -4.7494945289625718 83 -5.335864632952096 84 -5.8249613140325414 85 -6.2467406937261218
		 86 -6.5265501346183772 87 -6.6476362130026523 88 -6.6619566677590702 89 -6.6162188980223631
		 90 -6.6138606750278566 91 -6.6878676825406185 92 -6.7023375745884088 93 -6.6672198313653492
		 94 -6.7035005419013327 95 -6.7853681204953356 96 -6.9418361862674631 97 -7.1276769931442328
		 98 -7.1547577565470721 99 -7.2221490188452391 100 -7.6031191536721554 101 -8.1195095130277313
		 102 -8.6272748083379955 103 -9.1133694939543872 104 -9.2530241002863409 105 -9.2973851984156806
		 106 -9.3100877490388001 107 -9.2974979652603267 108 -9.193467737215208 109 -9.0851009314595004
		 110 -8.9297024260942024 111 -8.5394867355768831 112 -7.9652354242849333 113 -7.5165916668399371
		 114 -7.2509170351149637 115 -6.8746902380921417 116 -6.4644568660492361 117 -6.191862034595359
		 118 -6.0849944066736779 119 -5.8093458265019953 120 -5.6802306838873564 121 -5.6249723324756671
		 122 -5.5545845283413966 123 -5.4055128016409268 124 -5.210124149182608 125 -5.0267744504817271
		 126 -4.852647942089753 127 -4.688832725857762 128 -4.5366576738594366 129 -4.4107915629603003
		 130 -4.3022078485230706 131 -4.1777868784384928 132 -4.0655667081599809 133 -4.0117379950181071
		 134 -3.887313387066027 135 -3.4644734976896743 136 -3.0803541947737316;
createNode animCurveTU -n "locator5_scaleX";
	rename -uid "8C0C958F-41E0-E9CE-4032-E3B6BBBFF40A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1.0000000000000002 2 0.99999999999999989
		 3 0.99999999999999978 4 0.99999999999999989 5 0.99999999999999989 6 1 7 1 8 0.99999999999999989
		 9 1.0000000000000002 10 1.0000000000000002 11 1 12 0.99999999999999989 13 1 14 1
		 15 1 16 1 17 1 18 1.0000000000000002 19 1 20 0.99999999999999978 21 0.99999999999999989
		 22 0.99999999999999989 23 1 24 1 25 0.99999999999999989 26 1 27 1 28 0.99999999999999978
		 29 0.99999999999999989 30 0.99999999999999989 31 1 32 0.99999999999999989 33 0.99999999999999989
		 34 0.99999999999999989 35 1 36 1 37 1 38 1 39 0.99999999999999967 40 1.0000000000000002
		 41 0.99999999999999978 42 0.99999999999999989 43 1 44 1 45 1.0000000000000002 46 1.0000000000000002
		 47 0.99999999999999989 48 1 49 0.99999999999999989 50 1 51 0.99999999999999989 52 0.99999999999999989
		 53 0.99999999999999978 54 1 55 1 56 0.99999999999999956 57 0.99999999999999989 58 0.99999999999999967
		 59 1 60 0.99999999999999978 61 0.99999999999999978 62 1 63 1.0000000000000002 64 1
		 65 1.0000000000000002 66 1.0000000000000002 67 1.0000000000000004 68 1 69 1 70 0.99999999999999978
		 71 1 72 1.0000000000000002 73 1 74 0.99999999999999978 75 0.99999999999999989 76 1
		 77 1.0000000000000002 78 1 79 0.99999999999999989 80 1 81 0.99999999999999989 82 0.99999999999999978
		 83 0.99999999999999989 84 1 85 1 86 0.99999999999999978 87 0.99999999999999978 88 1
		 89 1 90 1 91 1 92 0.99999999999999978 93 1 94 0.99999999999999989 95 1 96 0.99999999999999978
		 97 1 98 1 99 0.99999999999999967 100 1 101 1 102 0.99999999999999989 103 1 104 0.99999999999999956
		 105 1 106 1 107 1 108 0.99999999999999989 109 1 110 1 111 0.99999999999999989 112 0.99999999999999989
		 113 0.99999999999999989 114 0.99999999999999944 115 1 116 1 117 0.99999999999999989
		 118 0.99999999999999989 119 1.0000000000000002 120 1.0000000000000002 121 1 122 0.99999999999999978
		 123 0.99999999999999967 124 0.99999999999999967 125 0.99999999999999989 126 0.99999999999999989
		 127 1 128 1.0000000000000002 129 0.99999999999999989 130 1.0000000000000002 131 1
		 132 0.99999999999999989 133 1.0000000000000002 134 1 135 1.0000000000000002 136 0.99999999999999967;
createNode animCurveTU -n "locator5_scaleY";
	rename -uid "D52AC0E2-44BD-A395-2FD0-AFBE04AD7692";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999989 1 0.99999999999999978
		 2 1 3 0.99999999999999989 4 0.99999999999999989 5 1 6 1.0000000000000002 7 1 8 0.99999999999999989
		 9 1.0000000000000002 10 1 11 0.99999999999999978 12 1 13 1.0000000000000002 14 1
		 15 1 16 0.99999999999999967 17 0.99999999999999967 18 1 19 1 20 0.99999999999999978
		 21 0.99999999999999967 22 0.99999999999999989 23 1 24 1 25 1.0000000000000002 26 0.99999999999999989
		 27 0.99999999999999989 28 1 29 0.99999999999999989 30 1 31 0.99999999999999989 32 1
		 33 1 34 0.99999999999999978 35 1 36 1 37 0.99999999999999978 38 0.99999999999999989
		 39 0.99999999999999967 40 1 41 0.99999999999999978 42 1 43 0.99999999999999989 44 1.0000000000000002
		 45 1 46 0.99999999999999989 47 0.99999999999999978 48 1 49 0.99999999999999989 50 1
		 51 1 52 1 53 0.99999999999999978 54 0.99999999999999978 55 1.0000000000000004 56 1
		 57 0.99999999999999989 58 1 59 1 60 0.99999999999999989 61 0.99999999999999989 62 1.0000000000000002
		 63 1 64 1 65 1 66 0.99999999999999989 67 1.0000000000000002 68 1.0000000000000002
		 69 1 70 1 71 0.99999999999999989 72 1 73 0.99999999999999989 74 0.99999999999999978
		 75 0.99999999999999967 76 0.99999999999999989 77 0.99999999999999989 78 1 79 1 80 1
		 81 0.99999999999999978 82 0.99999999999999978 83 0.99999999999999978 84 0.99999999999999978
		 85 0.99999999999999989 86 0.99999999999999978 87 0.99999999999999989 88 0.99999999999999978
		 89 0.99999999999999978 90 1.0000000000000002 91 0.99999999999999978 92 1 93 0.99999999999999989
		 94 0.99999999999999989 95 1 96 1.0000000000000002 97 0.99999999999999989 98 1.0000000000000004
		 99 0.99999999999999967 100 0.99999999999999967 101 1 102 1 103 0.99999999999999967
		 104 0.99999999999999967 105 0.99999999999999978 106 0.99999999999999989 107 1 108 0.99999999999999989
		 109 1.0000000000000002 110 1 111 1 112 1 113 1 114 0.99999999999999989 115 0.99999999999999978
		 116 0.99999999999999989 117 0.99999999999999989 118 1 119 0.99999999999999989 120 0.99999999999999989
		 121 1 122 1 123 0.99999999999999967 124 0.99999999999999989 125 1 126 1 127 0.99999999999999989
		 128 1.0000000000000002 129 0.99999999999999989 130 1 131 0.99999999999999989 132 0.99999999999999989
		 133 1 134 0.99999999999999967 135 1 136 1;
createNode animCurveTU -n "locator5_scaleZ";
	rename -uid "5C779822-44AE-7948-FD1C-44BF42CE05F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1.0000000000000002 3 1 4 1 5 0.99999999999999989
		 6 1 7 1 8 1 9 1.0000000000000002 10 1.0000000000000002 11 1 12 1 13 1.0000000000000002
		 14 1 15 1.0000000000000002 16 0.99999999999999989 17 1 18 0.99999999999999989 19 0.99999999999999989
		 20 0.99999999999999967 21 0.99999999999999978 22 1.0000000000000002 23 1 24 1 25 0.99999999999999989
		 26 0.99999999999999989 27 0.99999999999999967 28 1 29 1 30 1 31 1 32 1.0000000000000002
		 33 1 34 1 35 1 36 1 37 0.99999999999999989 38 1 39 1 40 1 41 1.0000000000000002 42 1
		 43 1.0000000000000002 44 1 45 1.0000000000000002 46 1 47 0.99999999999999978 48 0.99999999999999989
		 49 0.99999999999999989 50 1.0000000000000002 51 1 52 0.99999999999999967 53 0.99999999999999978
		 54 0.99999999999999989 55 0.99999999999999956 56 0.99999999999999978 57 1 58 0.99999999999999967
		 59 0.99999999999999978 60 1 61 1 62 1.0000000000000004 63 1.0000000000000002 64 1
		 65 1.0000000000000004 66 1 67 1.0000000000000004 68 1 69 1 70 0.99999999999999978
		 71 1 72 1 73 1.0000000000000002 74 1 75 1 76 0.99999999999999989 77 1 78 0.99999999999999989
		 79 1 80 1 81 1 82 0.99999999999999956 83 0.99999999999999967 84 1 85 1 86 0.99999999999999978
		 87 0.99999999999999989 88 0.99999999999999978 89 1 90 1.0000000000000004 91 0.99999999999999967
		 92 0.99999999999999967 93 1.0000000000000002 94 1 95 1 96 1 97 0.99999999999999989
		 98 1.0000000000000002 99 0.99999999999999956 100 1.0000000000000002 101 1 102 1.0000000000000002
		 103 0.99999999999999978 104 0.99999999999999933 105 1.0000000000000004 106 1 107 0.99999999999999989
		 108 0.99999999999999989 109 0.99999999999999989 110 1.0000000000000002 111 0.99999999999999978
		 112 1 113 1 114 0.99999999999999956 115 0.99999999999999978 116 1 117 1 118 1.0000000000000004
		 119 1.0000000000000002 120 1 121 1 122 0.99999999999999978 123 0.99999999999999933
		 124 0.99999999999999933 125 0.99999999999999989 126 1 127 0.99999999999999978 128 1.0000000000000002
		 129 1.0000000000000002 130 1 131 1 132 0.99999999999999989 133 1 134 0.99999999999999978
		 135 0.99999999999999989 136 0.99999999999999978;
createNode animCurveTU -n "locator6_visibility";
	rename -uid "EE6ABB38-4222-DD76-E836-90A8DF2EEC51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1
		 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1
		 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1
		 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTL -n "locator6_translateX";
	rename -uid "6A79633E-4D27-16F9-59C3-8C9D901CF4D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 8.2077817916870099 1 8.2077817916870117
		 2 8.2077817916870135 3 8.2077817916870099 4 8.2077817916870117 5 8.2077817916870117
		 6 8.2077817916870117 7 8.2077817916870117 8 8.2077817916870117 9 8.2077817916870135
		 10 8.2077817916870153 11 8.2077817916870135 12 8.2077817916870082 13 8.2077817916870188
		 14 8.2077817916870046 15 8.2077817916870046 16 8.2077817916870153 17 8.2077817916870082
		 18 8.2077817916870153 19 8.207781791687017 20 8.2077817916870135 21 8.2077817916870135
		 22 8.2077817916870082 23 8.2077817916870135 24 8.2077817916870135 25 8.2077817916870099
		 26 8.2077817916870117 27 8.2077817916870153 28 8.2077817916870135 29 8.2077817916870117
		 30 8.2077817916870153 31 8.2077817916870099 32 8.2077817916870135 33 8.2077817916870135
		 34 8.2077817916870135 35 8.2077817916870153 36 8.2077817916870153 37 8.2077817916870188
		 38 8.2077817916870117 39 8.2077817916870259 40 8.2077817916870117 41 8.2077817916870401
		 42 8.2077817916870401 43 8.2077817916870117 44 8.2077817916870117 45 8.2077817916870117
		 46 8.2077817916870117 47 8.2077817916870117 48 8.2077817916869975 49 8.2077817916870117
		 50 8.2077817916870117 51 8.2077817916870259 52 8.2077817916870259 53 8.2077817916870188
		 54 8.2077817916870259 55 8.2077817916869975 56 8.2077817916870188 57 8.2077817916870153
		 58 8.2077817916870117 59 8.2077817916870153 60 8.2077817916870046 61 8.2077817916870117
		 62 8.2077817916870259 63 8.2077817916870259 64 8.2077817916870117 65 8.2077817916870117
		 66 8.2077817916869833 67 8.2077817916870401 68 8.2077817916870117 69 8.2077817916870117
		 70 8.2077817916869833 71 8.2077817916870117 72 8.2077817916870117 73 8.2077817916870117
		 74 8.2077817916870259 75 8.2077817916869975 76 8.2077817916870401 77 8.2077817916870117
		 78 8.2077817916869975 79 8.2077817916870117 80 8.2077817916869833 81 8.2077817916870117
		 82 8.2077817916870117 83 8.2077817916870259 84 8.2077817916870259 85 8.2077817916870401
		 86 8.2077817916869975 87 8.2077817916870259 88 8.2077817916870117 89 8.2077817916869975
		 90 8.2077817916870117 91 8.2077817916870259 92 8.2077817916869975 93 8.2077817916869975
		 94 8.2077817916869975 95 8.2077817916869975 96 8.2077817916869833 97 8.2077817916870259
		 98 8.2077817916870259 99 8.2077817916870259 100 8.2077817916870117 101 8.2077817916870259
		 102 8.2077817916869975 103 8.2077817916870259 104 8.2077817916869833 105 8.2077817916869975
		 106 8.2077817916870117 107 8.2077817916870117 108 8.2077817916870259 109 8.2077817916870117
		 110 8.2077817916870259 111 8.2077817916870401 112 8.2077817916870401 113 8.2077817916870401
		 114 8.2077817916869833 115 8.2077817916870117 116 8.2077817916869975 117 8.2077817916870259
		 118 8.2077817916869975 119 8.2077817916870401 120 8.2077817916869833 121 8.2077817916870117
		 122 8.2077817916870117 123 8.2077817916869975 124 8.2077817916869975 125 8.2077817916870259
		 126 8.2077817916870401 127 8.2077817916870117 128 8.2077817916870117 129 8.2077817916870117
		 130 8.2077817916870117 131 8.2077817916869975 132 8.2077817916870401 133 8.2077817916870117
		 134 8.2077817916870259 135 8.2077817916870117 136 8.2077817916870117;
createNode animCurveTL -n "locator6_translateY";
	rename -uid "28F770EF-4BB5-E9D9-29FC-61A9987237F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -6.7517142295837544 1 -6.7517142295837829
		 2 -6.7517142295837687 3 -6.7517142295837402 4 -6.7517142295837402 5 -6.7517142295837402
		 6 -6.7517142295837402 7 -6.7517142295837402 8 -6.7517142295837544 9 -6.751714229583726
		 10 -6.7517142295837402 11 -6.751714229583726 12 -6.7517142295837402 13 -6.7517142295837402
		 14 -6.7517142295837544 15 -6.751714229583726 16 -6.7517142295837544 17 -6.7517142295837687
		 18 -6.7517142295837402 19 -6.7517142295837544 20 -6.751714229583726 21 -6.7517142295837402
		 22 -6.7517142295837544 23 -6.7517142295837402 24 -6.751714229583726 25 -6.7517142295837402
		 26 -6.7517142295837544 27 -6.7517142295837402 28 -6.751714229583726 29 -6.7517142295837118
		 30 -6.7517142295837402 31 -6.7517142295837544 32 -6.7517142295837402 33 -6.7517142295837544
		 34 -6.751714229583726 35 -6.7517142295837544 36 -6.7517142295837687 37 -6.751714229583726
		 38 -6.751714229583726 39 -6.7517142295837402 40 -6.7517142295837544 41 -6.7517142295837118
		 42 -6.751714229583726 43 -6.7517142295837544 44 -6.751714229583726 45 -6.7517142295837402
		 46 -6.751714229583726 47 -6.7517142295837402 48 -6.7517142295837687 49 -6.7517142295837402
		 50 -6.7517142295837544 51 -6.751714229583726 52 -6.7517142295837544 53 -6.7517142295837544
		 54 -6.7517142295837118 55 -6.7517142295837402 56 -6.751714229583726 57 -6.751714229583726
		 58 -6.7517142295837402 59 -6.7517142295837118 60 -6.7517142295837473 61 -6.751714229583726
		 62 -6.7517142295837402 63 -6.7517142295837331 64 -6.7517142295837118 65 -6.7517142295837438
		 66 -6.7517142295837189 67 -6.7517142295837331 68 -6.7517142295837331 69 -6.7517142295837473
		 70 -6.7517142295837473 71 -6.751714229583726 72 -6.7517142295837544 73 -6.7517142295837402
		 74 -6.7517142295837331 75 -6.751714229583726 76 -6.7517142295837402 77 -6.7517142295837544
		 78 -6.7517142295837402 79 -6.751714229583726 80 -6.7517142295837402 81 -6.751714229583726
		 82 -6.751714229583726 83 -6.7517142295837687 84 -6.7517142295837687 85 -6.751714229583726
		 86 -6.7517142295837544 87 -6.751714229583726 88 -6.751714229583726 89 -6.751714229583726
		 90 -6.7517142295837402 91 -6.7517142295837402 92 -6.7517142295836976 93 -6.751714229583726
		 94 -6.751714229583726 95 -6.751714229583726 96 -6.751714229583726 97 -6.7517142295837402
		 98 -6.751714229583726 99 -6.7517142295837402 100 -6.7517142295837402 101 -6.7517142295837402
		 102 -6.7517142295837544 103 -6.751714229583726 104 -6.7517142295837402 105 -6.7517142295837402
		 106 -6.7517142295837402 107 -6.751714229583726 108 -6.7517142295837544 109 -6.7517142295837118
		 110 -6.751714229583726 111 -6.7517142295837118 112 -6.7517142295837402 113 -6.751714229583726
		 114 -6.7517142295837118 115 -6.7517142295837402 116 -6.7517142295837118 117 -6.7517142295837402
		 118 -6.7517142295837402 119 -6.7517142295837402 120 -6.751714229583726 121 -6.751714229583726
		 122 -6.7517142295837687 123 -6.7517142295837544 124 -6.751714229583726 125 -6.7517142295837402
		 126 -6.7517142295837402 127 -6.7517142295837544 128 -6.751714229583726 129 -6.751714229583726
		 130 -6.7517142295837402 131 -6.751714229583726 132 -6.751714229583726 133 -6.751714229583726
		 134 -6.7517142295837402 135 -6.7517142295837544 136 -6.751714229583726;
createNode animCurveTL -n "locator6_translateZ";
	rename -uid "6BCE6D4C-4CBF-C96A-FD12-FC93CD0833AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -1.5995556116104144 1 -1.5995556116104108
		 2 -1.5995556116104126 3 -1.5995556116104162 4 -1.5995556116104135 5 -1.5995556116104113
		 6 -1.5995556116104126 7 -1.5995556116104126 8 -1.5995556116104108 9 -1.5995556116104162
		 10 -1.5995556116104055 11 -1.599555611610409 12 -1.5995556116104126 13 -1.5995556116104126
		 14 -1.5995556116104197 15 -1.5995556116104055 16 -1.5995556116104126 17 -1.5995556116104126
		 18 -1.5995556116104055 19 -1.5995556116103984 20 -1.5995556116104126 21 -1.5995556116104268
		 22 -1.5995556116103984 23 -1.5995556116104268 24 -1.5995556116104126 25 -1.5995556116104268
		 26 -1.5995556116103984 27 -1.5995556116104268 28 -1.5995556116104268 29 -1.5995556116104126
		 30 -1.5995556116104126 31 -1.5995556116104126 32 -1.5995556116104126 33 -1.5995556116104126
		 34 -1.5995556116104268 35 -1.5995556116103842 36 -1.599555611610441 37 -1.5995556116104126
		 38 -1.5995556116104126 39 -1.5995556116103842 40 -1.5995556116104126 41 -1.5995556116103948
		 42 -1.5995556116104233 43 -1.5995556116104197 44 -1.5995556116104126 45 -1.5995556116104126
		 46 -1.5995556116104268 47 -1.5995556116104126 48 -1.5995556116104126 49 -1.5995556116104126
		 50 -1.5995556116104126 51 -1.5995556116104126 52 -1.599555611610441 53 -1.599555611610441
		 54 -1.599555611610441 55 -1.5995556116104126 56 -1.5995556116103842 57 -1.5995556116104126
		 58 -1.5995556116103842 59 -1.599555611610441 60 -1.599555611610441 61 -1.5995556116104126
		 62 -1.5995556116104126 63 -1.5995556116104126 64 -1.5995556116104126 65 -1.5995556116103842
		 66 -1.599555611610441 67 -1.5995556116104126 68 -1.5995556116104126 69 -1.5995556116103842
		 70 -1.5995556116103842 71 -1.5995556116104126 72 -1.5995556116103842 73 -1.5995556116104126
		 74 -1.5995556116104126 75 -1.5995556116103842 76 -1.599555611610441 77 -1.599555611610441
		 78 -1.5995556116104126 79 -1.5995556116104126 80 -1.5995556116104126 81 -1.5995556116103842
		 82 -1.5995556116104126 83 -1.5995556116103842 84 -1.5995556116104126 85 -1.5995556116104126
		 86 -1.5995556116104126 87 -1.5995556116104126 88 -1.599555611610441 89 -1.5995556116103842
		 90 -1.5995556116103842 91 -1.599555611610441 92 -1.599555611610441 93 -1.599555611610441
		 94 -1.5995556116104126 95 -1.5995556116104126 96 -1.599555611610441 97 -1.5995556116104126
		 98 -1.599555611610441 99 -1.5995556116103842 100 -1.5995556116104126 101 -1.5995556116104126
		 102 -1.599555611610441 103 -1.5995556116104126 104 -1.599555611610441 105 -1.599555611610441
		 106 -1.599555611610441 107 -1.5995556116103842 108 -1.5995556116104126 109 -1.5995556116103842
		 110 -1.599555611610441 111 -1.5995556116104126 112 -1.5995556116104126 113 -1.599555611610441
		 114 -1.5995556116104126 115 -1.599555611610441 116 -1.5995556116103842 117 -1.5995556116104126
		 118 -1.5995556116104126 119 -1.5995556116104694 120 -1.599555611610441 121 -1.5995556116104126
		 122 -1.5995556116104126 123 -1.5995556116103842 124 -1.5995556116103842 125 -1.5995556116104126
		 126 -1.599555611610441 127 -1.5995556116104126 128 -1.5995556116103842 129 -1.599555611610441
		 130 -1.5995556116103558 131 -1.5995556116103842 132 -1.5995556116103842 133 -1.5995556116104126
		 134 -1.5995556116103842 135 -1.5995556116104126 136 -1.599555611610441;
createNode animCurveTA -n "locator6_rotateX";
	rename -uid "BB52C727-4B39-E7AC-CF00-0B85B7A13EB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -34.154449462890632 1 -35.738254547119141
		 2 -37.083705902099602 3 -37.425872802734389 4 -36.50550842285157 5 -35.337245941162102
		 6 -35.167362213134773 7 -36.23728179931642 8 -39.922847747802734 9 -40.275722503662102
		 10 -38.836467742919929 11 -36.386875152587898 12 -33.829795837402344 13 -30.766305923461925
		 14 -26.80590629577636 15 -22.45317268371582 16 -18.094484329223636 17 -13.658967971801761
		 18 -9.7378768920898438 19 -6.3999814987182626 20 -3.5738086700439453 21 -1.1412796974182131
		 22 1.7664631605148313 23 4.3058619499206543 24 5.5048475265502939 25 6.9942126274108913
		 26 7.905426502227785 27 6.8146176338195819 28 3.7469029426574698 29 -0.068101160228252203
		 30 -5.2918572425842285 31 -11.424706459045412 32 -17.404890060424808 33 -22.372489929199215
		 34 -25.899526596069336 35 -28.2830810546875 36 -29.265319824218743 37 -28.528942108154297
		 38 -26.634920120239258 39 -26.915153503417972 40 -29.707902908325199 41 -33.012985229492195
		 42 -35.889762878417976 43 -38.977710723876967 44 -42.040554046630859 45 -44.152175903320305
		 46 -44.165554046630859 47 -42.560726165771484 48 -40.729408264160163 49 -39.479404449462891
		 50 -39.892177581787109 51 -40.305217742919908 52 -38.197914123535149 53 -35.134262084960938
		 54 -33.843875885009773 55 -34.90269470214843 56 -39.16229248046875 57 -43.152545928955071
		 58 -46.345199584960945 59 -52.324588775634759 60 -61.25816726684571 61 -69.284614562988267
		 62 -70.189079284667983 63 -67.083572387695298 64 -66.277183532714844 65 -67.212654113769531
		 66 -67.867904663085938 67 -67.406990051269545 68 -65.793952941894517 69 -63.89923095703125
		 70 -62.076221466064439 71 -59.139961242675781 72 -55.69801330566407 73 -52.611927032470703
		 74 -49.425426483154297 75 -45.558139801025398 76 -41.702060699462884 77 -38.158054351806648
		 78 -34.689842224121094 79 -31.264844894409173 80 -27.625833511352539 81 -23.817708969116211
		 82 -20.390306472778317 83 -17.757261276245117 84 -15.754424095153801 85 -13.920904159545897
		 86 -12.402322769165041 87 -11.445685386657708 88 -10.896551132202147 89 -10.794202804565431
		 90 -11.887713432312012 91 -13.483511924743651 92 -15.004852294921873 93 -16.080734252929684
		 94 -16.696691513061523 95 -16.292264938354492 96 -15.523885726928718 97 -15.865318298339842
		 98 -16.72302055358886 99 -17.186500549316406 100 -17.464107513427731 101 -17.548196792602539
		 102 -17.503402709960938 103 -17.395709991455078 104 -17.121784210205075 105 -16.666469573974609
		 106 -16.122882843017582 107 -15.762423515319821 108 -15.625995635986323 109 -15.426843643188477
		 110 -15.026288986206055 111 -14.636184692382813 112 -14.482069969177248 113 -14.475187301635742
		 114 -14.565469741821293 115 -14.702992439270014 116 -14.813821792602539 117 -14.869615554809574
		 118 -14.898320198059082 119 -14.993756294250494 120 -15.045618057250977 121 -15.306906700134276
		 122 -16.085994720458984 123 -16.573783874511722 124 -16.704275131225589 125 -17.177249908447269
		 126 -17.786409378051761 127 -18.177408218383793 128 -18.434656143188484 129 -18.6981086730957
		 130 -18.965112686157223 131 -19.194166183471676 132 -19.431306838989254 133 -19.901144027709961
		 134 -20.345653533935558 135 -20.026178359985352 136 -19.52626800537109;
createNode animCurveTA -n "locator6_rotateY";
	rename -uid "019B5EA1-48D2-5381-1F6E-62B71B24EF49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 18.39902496337891 1 19.081489562988278
		 2 21.594533920288082 3 25.071292877197269 4 28.358131408691406 5 30.102458953857418
		 6 29.474555969238285 7 27.690958023071289 8 26.598848342895511 9 26.056163787841797
		 10 24.968378067016602 11 26.310321807861328 12 27.933378219604485 13 27.249048233032223
		 14 26.02139854431152 15 24.948984146118164 16 24.392179489135749 17 24.132017135620121
		 18 24.953351974487298 19 26.091045379638675 20 26.038997650146481 21 25.546579360961911
		 22 25.780998229980465 23 26.604787826538086 24 27.622173309326168 25 28.51643180847169
		 26 27.634212493896491 27 24.792522430419925 28 23.005826950073239 29 22.057737350463871
		 30 19.804897308349613 31 18.254981994628913 32 19.125986099243168 33 20.757661819458004
		 34 21.95634651184082 35 22.833660125732422 36 23.493148803710938 37 22.992168426513672
		 38 19.074153900146484 39 16.007328033447262 40 17.509141921997077 41 23.164306640625
		 42 32.068202972412116 43 40.666576385498061 44 45.970561981201165 45 48.694595336914055
		 46 50.96833801269532 47 53.008411407470703 48 54.551784515380874 49 55.853656768798835
		 50 57.079715728759759 51 58.390628814697259 52 59.061496734619155 53 58.731628417968736
		 54 58.313293457031236 55 57.538646697998054 56 54.671535491943366 57 49.693470001220703
		 58 44.952850341796875 59 41.946220397949219 60 39.511146545410156 61 35.893840789794922
		 62 32.003376007080092 63 28.582862854003899 64 27.721271514892575 65 28.829883575439446
		 66 29.194381713867195 67 29.010848999023445 68 29.972658157348629 69 32.281822204589844
		 70 33.982738494873047 71 34.349300384521484 72 34.535678863525398 73 35.144775390625
		 74 35.643596649169922 75 35.64862060546875 76 35.547794342041009 77 35.773590087890639
		 78 36.076278686523445 79 36.330978393554688 80 36.36543273925782 81 36.025421142578125
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
		 122 35.500278472900384 123 35.441738128662109 124 35.058975219726563 125 35.368377685546875
		 126 35.898250579833984 127 35.961593627929702 128 35.743286132812507 129 35.446220397949212
		 130 35.110416412353509 131 34.852329254150398 132 34.698726654052734 133 34.5640869140625
		 134 34.455429077148438 135 34.224143981933601 136 33.77789306640625;
createNode animCurveTA -n "locator6_rotateZ";
	rename -uid "BFA40180-4058-4ADA-DFD6-DF84E189A358";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -3.9356524944305442 1 -5.0184831619262678
		 2 -7.3975253105163556 3 -10.219761848449714 4 -12.148794174194339 5 -12.600871086120605
		 6 -12.536116600036623 7 -12.779970169067385 8 -14.392742156982422 9 -15.199911117553711
		 10 -14.38222694396973 11 -15.878556251525882 12 -17.931337356567383 13 -17.456258773803707
		 14 -15.332514762878414 15 -13.36660003662109 16 -11.959427833557134 17 -10.363097190856935
		 18 -8.977505683898924 19 -7.7782011032104492 20 -6.6595425605773899 21 -5.9125990867614746
		 22 -5.4003882408142081 23 -4.8533935546875 24 -3.9423215389251713 25 -2.7647688388824472
		 26 -1.4568151235580447 27 0.85062348842620872 28 3.3768827915191637 29 5.8171210289001465
		 30 7.0804815292358425 31 6.6762423515319842 32 4.8218951225280771 33 2.9983344078063978
		 34 1.9911067485809326 35 0.68241703510284646 36 -0.39159086346626287 37 -0.4834885299205795
		 38 -0.60585373640060325 39 -0.45918983221054099 40 -0.74845886230468817 41 -4.4221935272216824
		 42 -6.6800875663757333 43 -6.8482027053833052 44 -8.7835683822631836 45 -13.330726623535156
		 46 -17.192602157592777 47 -18.715673446655273 48 -19.803255081176765 49 -21.545360565185547
		 50 -24.448743820190423 51 -26.336799621582031 52 -25.200242996215824 53 -23.130764007568352
		 54 -22.719694137573246 55 -24.291801452636722 56 -27.040315628051751 57 -27.519645690917965
		 58 -25.587854385375984 59 -25.210741043090813 60 -26.993978500366214 61 -29.226634979248047
		 62 -27.419937133789073 63 -22.435157775878896 64 -20.180574417114258 65 -20.458271026611321
		 66 -20.105306625366211 67 -18.676528930664066 68 -18.288385391235352 69 -19.911689758300781
		 70 -20.721582412719727 71 -18.756792068481452 72 -16.029684066772472 73 -14.272348403930668
		 74 -12.65510177612305 75 -10.179507255554205 76 -7.679044246673584 77 -5.7751317024230966
		 78 -4.2477555274963361 79 -2.9128921031951887 80 -1.4759769439697281 81 0.18906033039093217
		 82 1.641578555107118 83 2.5666470527648935 84 3.2242519855499259 85 4.0788998603820819
		 86 4.7999796867370623 87 5.0365986824035636 88 5.0018649101257333 89 4.8851928710937509
		 90 4.4973297119140616 91 3.6641035079956046 92 2.6288208961486808 93 1.7635776996612544
		 94 1.5236763954162589 95 1.9609735012054443 96 2.1573841571807861 97 1.8267277479171755
		 98 1.4389444589614884 99 1.1067948341369636 100 0.89093804359435957 101 0.92215657234191917
		 102 0.87199229001998979 103 0.61068487167358543 104 0.33059743046760637 105 0.13793602585792594
		 106 0.13843153417110454 107 0.1429301202297216 108 0.12590293586254209 109 0.2073060870170596
		 110 0.22076375782489849 111 0.18588288128375982 112 0.18639877438545155 113 0.21674224734306452
		 114 0.25033643841743469 115 0.25131663680076638 116 0.24246776103973461 117 0.28346100449562223
		 118 0.43794667720794739 119 0.62397390604019187 120 0.78910350799560613 121 0.56638836860656694
		 122 -0.25192004442214921 123 -0.5255110859870914 124 -0.23954205214977126 125 -0.34963557124138073
		 126 -0.65704238414764571 127 -0.67225855588913097 128 -0.55346733331680364 129 -0.54141300916671686
		 130 -0.5946971774101244 131 -0.61559146642685059 132 -0.6804051995277407 133 -0.98781591653824052
		 134 -1.0942990779876733 135 -0.049138206988571333 136 1.0255388021469123;
createNode animCurveTU -n "locator6_scaleX";
	rename -uid "FBDAAB03-4746-7580-99EF-A994ADC2EDCD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999989 1 1.0000000000000002
		 2 0.99999999999999989 3 0.99999999999999989 4 1 5 1 6 0.99999999999999989 7 1 8 0.99999999999999989
		 9 1 10 1.0000000000000002 11 1 12 0.99999999999999989 13 1 14 1 15 1 16 1 17 0.99999999999999989
		 18 1 19 0.99999999999999989 20 0.99999999999999978 21 0.99999999999999989 22 0.99999999999999989
		 23 1 24 1 25 0.99999999999999989 26 1 27 0.99999999999999989 28 1 29 1 30 1 31 1
		 32 0.99999999999999989 33 1 34 0.99999999999999989 35 0.99999999999999989 36 1 37 1
		 38 1 39 0.99999999999999967 40 1.0000000000000002 41 0.99999999999999978 42 0.99999999999999989
		 43 1.0000000000000002 44 1.0000000000000002 45 1.0000000000000002 46 1 47 0.99999999999999989
		 48 1 49 0.99999999999999989 50 1 51 1 52 0.99999999999999989 53 0.99999999999999978
		 54 1 55 1 56 0.99999999999999978 57 0.99999999999999989 58 0.99999999999999989 59 1
		 60 1 61 0.99999999999999978 62 1 63 1.0000000000000004 64 1 65 1.0000000000000002
		 66 1.0000000000000002 67 1.0000000000000002 68 1 69 1 70 0.99999999999999978 71 0.99999999999999978
		 72 1 73 1 74 1 75 0.99999999999999989 76 1 77 1.0000000000000002 78 0.99999999999999989
		 79 0.99999999999999989 80 1 81 0.99999999999999989 82 0.99999999999999978 83 1 84 0.99999999999999989
		 85 1 86 0.99999999999999956 87 1 88 0.99999999999999978 89 0.99999999999999978 90 1
		 91 0.99999999999999989 92 0.99999999999999956 93 1 94 1 95 1 96 1 97 0.99999999999999989
		 98 1 99 0.99999999999999967 100 1 101 1 102 1 103 0.99999999999999989 104 0.99999999999999944
		 105 1 106 1 107 1 108 0.99999999999999989 109 1 110 1 111 0.99999999999999989 112 0.99999999999999989
		 113 1 114 0.99999999999999944 115 1 116 1 117 1 118 1 119 1.0000000000000002 120 1
		 121 0.99999999999999989 122 0.99999999999999989 123 0.99999999999999956 124 0.99999999999999956
		 125 0.99999999999999989 126 0.99999999999999989 127 0.99999999999999989 128 1.0000000000000002
		 129 0.99999999999999989 130 1.0000000000000002 131 1.0000000000000002 132 0.99999999999999989
		 133 1 134 0.99999999999999989 135 1 136 0.99999999999999989;
createNode animCurveTU -n "locator6_scaleY";
	rename -uid "C60A7FF6-4758-6C96-890C-7E85DBDCBC6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999989 1 1 2 1 3 0.99999999999999989
		 4 1 5 0.99999999999999989 6 1.0000000000000002 7 1 8 0.99999999999999989 9 1.0000000000000002
		 10 1.0000000000000002 11 1 12 1 13 1.0000000000000002 14 1 15 1 16 0.99999999999999989
		 17 0.99999999999999967 18 1.0000000000000002 19 1 20 0.99999999999999978 21 1 22 0.99999999999999978
		 23 1 24 1 25 1.0000000000000002 26 1 27 0.99999999999999989 28 1 29 1 30 1 31 0.99999999999999989
		 32 1 33 1 34 0.99999999999999989 35 1 36 1 37 1 38 0.99999999999999978 39 0.99999999999999978
		 40 0.99999999999999989 41 0.99999999999999967 42 1 43 1 44 1 45 0.99999999999999989
		 46 1 47 0.99999999999999989 48 0.99999999999999989 49 0.99999999999999989 50 1 51 1
		 52 0.99999999999999989 53 0.99999999999999978 54 0.99999999999999989 55 1 56 0.99999999999999989
		 57 0.99999999999999989 58 1 59 1 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 0.99999999999999989
		 68 1.0000000000000002 69 1 70 1 71 0.99999999999999989 72 1 73 0.99999999999999989
		 74 0.99999999999999989 75 0.99999999999999978 76 0.99999999999999989 77 0.99999999999999989
		 78 0.99999999999999989 79 1.0000000000000002 80 1 81 0.99999999999999978 82 0.99999999999999989
		 83 0.99999999999999978 84 0.99999999999999989 85 0.99999999999999989 86 0.99999999999999989
		 87 0.99999999999999989 88 0.99999999999999978 89 0.99999999999999978 90 1 91 0.99999999999999989
		 92 1 93 0.99999999999999989 94 1 95 0.99999999999999989 96 1 97 1 98 1 99 0.99999999999999967
		 100 0.99999999999999978 101 0.99999999999999989 102 1.0000000000000002 103 0.99999999999999978
		 104 0.99999999999999978 105 0.99999999999999989 106 0.99999999999999989 107 1 108 0.99999999999999989
		 109 1 110 1 111 1 112 1 113 1 114 1 115 0.99999999999999978 116 1 117 0.99999999999999978
		 118 1 119 0.99999999999999989 120 0.99999999999999989 121 1 122 1 123 0.99999999999999978
		 124 0.99999999999999989 125 0.99999999999999978 126 1 127 0.99999999999999989 128 1.0000000000000002
		 129 1 130 1 131 0.99999999999999989 132 0.99999999999999989 133 1.0000000000000002
		 134 0.99999999999999978 135 1 136 1;
createNode animCurveTU -n "locator6_scaleZ";
	rename -uid "A6CB3B38-436B-EBA4-34C5-49B5B5CA5353";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1.0000000000000002 3 1 4 1 5 0.99999999999999989
		 6 1 7 1 8 0.99999999999999989 9 1.0000000000000002 10 1.0000000000000002 11 0.99999999999999989
		 12 1 13 1 14 1 15 1 16 1 17 0.99999999999999989 18 1 19 1 20 0.99999999999999978
		 21 0.99999999999999978 22 1 23 1 24 1 25 0.99999999999999989 26 1 27 0.99999999999999978
		 28 1 29 1 30 1 31 0.99999999999999989 32 1 33 1 34 1 35 1.0000000000000002 36 1 37 1
		 38 1 39 0.99999999999999978 40 0.99999999999999989 41 1 42 0.99999999999999989 43 1.0000000000000002
		 44 0.99999999999999989 45 1.0000000000000004 46 1 47 0.99999999999999989 48 1 49 0.99999999999999989
		 50 1.0000000000000002 51 1 52 0.99999999999999989 53 1 54 1 55 1 56 0.99999999999999978
		 57 0.99999999999999978 58 0.99999999999999978 59 1 60 0.99999999999999989 61 0.99999999999999989
		 62 1.0000000000000002 63 1.0000000000000004 64 1 65 1.0000000000000002 66 1.0000000000000002
		 67 1.0000000000000002 68 1 69 1 70 0.99999999999999978 71 0.99999999999999978 72 1
		 73 1 74 1 75 0.99999999999999989 76 0.99999999999999989 77 1 78 0.99999999999999989
		 79 1 80 1 81 0.99999999999999978 82 0.99999999999999978 83 0.99999999999999978 84 1
		 85 1 86 0.99999999999999956 87 0.99999999999999989 88 0.99999999999999978 89 1 90 1.0000000000000002
		 91 0.99999999999999978 92 0.99999999999999967 93 1.0000000000000002 94 1 95 1 96 0.99999999999999989
		 97 1 98 1.0000000000000002 99 0.99999999999999956 100 1.0000000000000002 101 1 102 1.0000000000000002
		 103 0.99999999999999978 104 0.99999999999999933 105 1 106 0.99999999999999978 107 1
		 108 1 109 1 110 1 111 1 112 1.0000000000000002 113 0.99999999999999989 114 0.99999999999999944
		 115 0.99999999999999978 116 1 117 0.99999999999999989 118 1.0000000000000002 119 1.0000000000000002
		 120 1 121 1 122 0.99999999999999989 123 0.99999999999999933 124 0.99999999999999933
		 125 0.99999999999999989 126 1 127 0.99999999999999978 128 1.0000000000000004 129 1
		 130 1.0000000000000002 131 1 132 0.99999999999999989 133 1 134 0.99999999999999978
		 135 0.99999999999999989 136 0.99999999999999978;
createNode animCurveTU -n "locator7_visibility";
	rename -uid "498840D1-45B9-4400-7813-BBAF80559008";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1
		 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1
		 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1
		 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTL -n "locator7_translateX";
	rename -uid "A2C98188-43B9-07F2-FDA7-9EB19C053060";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 13.616858543331595 1 13.586863118896179
		 2 13.520002180513208 3 13.326165902100625 4 13.100739250176808 5 13.022331314094121
		 6 12.75685519956607 7 12.319045823401456 8 12.238864087660172 9 11.631219261072763
		 10 11.135185452834182 11 9.8004802262324109 12 8.0236855044006354 13 6.8349069385740826
		 14 6.3434928205163885 15 5.8153939485087349 16 5.1633791522163435 17 4.7890813832874954
		 18 4.6354617624497969 19 4.5229157897757677 20 4.4040441075846655 21 4.1397768749522026
		 22 3.5639636983937919 23 3.1026488640868646 24 3.3316668445555226 25 3.6400983679637289
		 26 4.3905385428333759 27 6.7733430831503751 28 9.7964283767805362 29 12.830897928384509
		 30 15.121744231130737 31 16.078706138464245 32 16.181453872671284 33 16.418850941358503
		 34 16.928024577360585 35 16.926735003634132 36 16.689740593746574 37 16.254855830416922
		 38 14.372888902499383 39 13.500248270709079 40 14.395597949723651 41 14.925643290097838
		 42 17.883615512458334 43 22.317203114296291 44 24.467718279850658 45 23.654224733369915
		 46 21.951196560393555 47 20.644496839554066 48 19.234555072982729 49 17.582472376391266
		 50 16.105850309887842 51 15.349474506373213 52 14.903448087409402 53 14.271997005780655
		 54 13.617423059691426 55 13.009026876208985 56 13.171431658764263 57 14.005471299794568
		 58 15.650009383487234 59 18.096205357808177 60 20.769363913239921 61 21.960340227979756
		 62 21.089237671357083 63 19.835944861516523 64 19.925327796665115 65 20.824412268018918
		 66 21.427769335613888 67 21.704511647481155 68 21.832413588922947 69 21.718205835155402
		 70 21.5099778951095 71 21.39565468054515 72 21.426943901066906 73 21.385347666930898
		 74 21.20013583170001 75 21.039557328201298 76 20.936095180732934 77 20.789145231960987
		 78 20.48444081498026 79 20.057202735037279 80 19.543264882318098 81 19.032829889220523
		 82 18.567651271106755 83 18.137457910553238 84 17.747418514569489 85 17.444562168849444
		 86 17.205577431097822 87 16.939974465059422 88 16.621743238407859 89 16.369124686028997
		 90 16.372142246460953 91 16.306009147870114 92 16.193866395572428 93 16.110647354052873
		 94 16.179578554153551 95 16.199557247963327 96 15.927932346210909 97 15.714292768613987
		 98 15.653799686488625 99 15.582273337871442 100 15.558457963539084 101 15.58818443752358
		 102 15.542587441406241 103 15.38152822367806 104 15.157289672904255 105 14.89511161252301
		 106 14.679347301158955 107 14.5541135904719 108 14.541050492819423 109 14.567125172494812
		 110 14.531486140343603 111 14.511093825739366 112 14.509425240455641 113 14.527405334286044
		 114 14.603165737324957 115 14.672442004924719 116 14.738309405230538 117 14.85306458611096
		 118 15.034230571356034 119 15.244328676133421 120 15.395460793285835 121 15.428319861784004
		 122 15.318733623230443 123 15.315646651982703 124 15.512839677700043 125 15.691810041528456
		 126 15.829930449035686 127 16.000966444938527 128 16.155642888490434 129 16.216746016311717
		 130 16.221338199198655 131 16.248042375029684 132 16.267092321051521 133 16.20945135775051
		 134 16.292499637680933 135 16.868473519058 136 17.347658509873327;
createNode animCurveTL -n "locator7_translateY";
	rename -uid "1106C23B-4625-5E92-981A-14BC9443A284";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -43.768231369178245 1 -43.211005323898796
		 2 -42.96221854776401 3 -43.30313844970118 4 -44.113827928266815 5 -44.748356273004639
		 6 -44.752806466958575 7 -44.208985251634218 8 -42.728303321636254 9 -42.570446497667469
		 10 -42.998196824681841 11 -44.165741795998052 12 -45.265669657499735 13 -46.133779441189482
		 14 -47.171422344765006 15 -48.220106972260169 16 -49.128412881167556 17 -49.888802908716741
		 18 -50.41215149174829 19 -50.719766321406112 20 -50.874747500663808 21 -50.923650590740344
		 22 -50.868641933035008 23 -50.744129833884983 24 -50.713639595039439 25 -50.657444004968653
		 26 -50.65680186667737 27 -50.868652562329672 28 -51.029246728754316 29 -50.880489730105097
		 30 -50.387345981020019 31 -49.561874171658651 32 -48.48297126453987 33 -47.300041821872043
		 34 -46.262223072072047 35 -45.58915884317328 36 -45.378698766835136 37 -45.667888356496995
		 38 -46.353440863067789 39 -46.230714662983885 40 -45.233321957160605 41 -44.433526273379016
		 42 -43.909230900395876 43 -43.006920854067218 44 -42.414947847449426 45 -42.925102445111662
		 46 -44.113442056665008 47 -45.267981414652219 48 -46.262281864123551 49 -47.078732871601218
		 50 -47.538658757150117 51 -47.8380091039894 52 -48.245610180400568 53 -48.622504683832624
		 54 -48.797286571632014 55 -48.664171893671991 56 -47.708763164675879 57 -46.052486269823682
		 58 -44.047289735536467 59 -41.131866564602831 60 -36.815252110979301 61 -32.125577831114398
		 62 -30.073995563469708 63 -29.961300035527479 64 -29.799111201120994 65 -29.520423442160972
		 66 -29.111177343816053 67 -29.030435887751182 68 -30.141706691385792 69 -32.135694542932008
		 70 -33.730676709556185 71 -35.008101484795695 72 -36.321762478918359 73 -37.670773525132617
		 74 -39.026162384216754 75 -40.413707738198532 76 -41.70423461860986 77 -42.914309583796246
		 78 -44.084987461720537 79 -45.182678916847294 80 -46.236803033908231 81 -47.192924203410733
		 82 -47.962935196353584 83 -48.518673868242871 84 -48.908275947961499 85 -49.200999787017764
		 86 -49.422341442029662 87 -49.58207634894714 88 -49.698331734288899 89 -49.744960358064873
		 90 -49.603698651602357 91 -49.402486952098613 92 -49.214032733794156 93 -49.084068215688035
		 94 -48.972665264607826 95 -49.011836296927967 96 -49.166765972556718 97 -49.136420233288533
		 98 -48.990057237787298 99 -48.922271199920758 100 -48.882308257304757 101 -48.858198351569442
		 102 -48.875436367867977 103 -48.933638220829963 104 -49.032543330593384 105 -49.160592883302343
		 106 -49.28246462995638 107 -49.36067290159906 108 -49.391789458118964 109 -49.425110255229171
		 110 -49.507180119794526 111 -49.590207046794688 112 -49.620899780011229 113 -49.618940042951749
		 114 -49.597042223170575 115 -49.56906413365617 116 -49.54735866830957 117 -49.53092347126038
		 118 -49.506499286989026 119 -49.463812757221447 120 -49.432311205615107 121 -49.403735464491447
		 122 -49.337753671986178 123 -49.26452034014801 124 -49.198895337477552 125 -49.105467300530279
		 126 -49.004594962485655 127 -48.913424815923229 128 -48.834038201923448 129 -48.766654514405829
		 130 -48.706535651583359 131 -48.650844895861781 132 -48.598850773923722 133 -48.51970322400085
		 134 -48.4170452163752 135 -48.349348441120675 136 -48.318300728957738;
createNode animCurveTL -n "locator7_translateZ";
	rename -uid "10A7615F-4051-5B53-F236-08A55BA18364";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 22.261273175985671 1 23.110874976651729
		 2 23.488279975495111 3 23.030006594432287 4 21.830152669931152 5 20.803460015810785
		 6 20.851340200768838 7 21.828422502692096 8 24.056929254924825 9 24.364232584309558
		 10 23.825680083855673 11 22.201151433312333 12 20.433627289086381 13 18.796227216919931
		 14 16.610096372916118 15 14.003927545332552 16 11.197585742758058 17 8.2149169003626383
		 18 5.4590951495020477 19 3.0963959086678869 20 1.1407577777210065 21 -0.54543181176404687
		 22 -2.5749767549665705 23 -4.3244023911588556 24 -5.119843109317415 25 -6.0987737563076934
		 26 -6.7562732149177265 27 -6.122601114166585 28 -4.007068995708849 29 -1.2868690381218499
		 30 2.5173082337283574 31 7.0119807520894284 32 11.196636896686982 33 14.438875601255603
		 34 16.612991152876177 35 18.007906071542095 36 18.520887805997376 37 18.138625500665768
		 38 17.440258065026725 39 17.95084403213265 40 19.606495429950527 41 20.845291923320669
		 42 20.638182572574422 43 19.73829867224763 44 19.198714417420064 45 18.936100899445918
		 46 17.997373922182604 47 16.584093192428483 48 15.316268905137463 49 14.358719569921021
		 50 13.984586092990469 51 13.557370249012962 52 12.62171207313429 53 11.775122083780417
		 54 11.504849398276065 55 12.152307574024235 56 14.731461668632136 57 18.165461876130962
		 58 21.258114852233376 59 24.65009215135791 60 28.520373796331825 61 32.102877316433791
		 62 33.882257908631743 63 34.385451727836369 64 34.460622027159559 65 34.33408209874176
		 66 34.374131181151739 67 34.321422205810791 68 33.558622155569765 69 32.193073592097193
		 70 31.019564014957979 71 29.967458672810977 72 28.72676633055741 73 27.369105606402229
		 74 25.939117844003135 75 24.304797931540179 76 22.589928872499542 77 20.823552873014904
		 78 18.99972000386839 79 17.148030350204635 80 15.171085046953408 81 13.102371895385744
		 82 11.172608405481753 83 9.6139370467493563 84 8.4323653491074424 85 7.43149343097258
		 86 6.5905023741378841 87 6.0246620348992508 88 5.7225411208628714 89 5.7348204612988809
		 90 6.5165057694813129 91 7.5737808992780629 92 8.4996405360351446 93 9.0932608920232099
		 94 9.4757120130600754 95 9.3106877766771845 96 8.8972278927996911 97 9.1711821911046911
		 98 9.7714162164122058 99 10.065812026353797 100 10.224166711328934 101 10.291342359205146
		 102 10.25845696130915 103 10.149591310965349 104 9.9267462073669606 105 9.6069797175435667
		 106 9.2666264741023099 107 9.0315551708182511 108 8.9139354806083873 109 8.7619030832574936
		 110 8.4403997022270403 111 8.0933074036800292 112 7.9577464642716507 113 7.9546639916638924
		 114 8.0023575410840806 115 8.0804505041758148 116 8.1320850026410199 117 8.1266603083160476
		 118 8.1085726650286745 119 8.1463897089014381 120 8.1740678322105396 121 8.2740818861564662
		 122 8.6319355574061376 123 8.9341700643027764 124 9.0631245466664154 125 9.3077229143515581
		 126 9.5994051660016453 127 9.8230638898929215 128 10.007740195553794 129 10.208115106764325
		 130 10.416919580133623 131 10.592116219773175 132 10.757000531291538 133 11.058571516832956
		 134 11.340975057331718 135 11.185163770866069 136 10.950398302586393;
createNode animCurveTA -n "locator7_rotateX";
	rename -uid "EADD6285-4A4D-4696-7DF4-12B96512D243";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 19.537233197997654 1 9.2786057171875598
		 2 -2.3290509943811233 3 -14.244069988249972 4 -25.051229859078806 5 -31.743690673466904
		 6 -32.076177745518507 7 -27.539663493863817 8 -20.18955865063857 9 -14.247261359321321
		 10 -7.3146788478830338 11 -1.5764869023289283 12 2.3332752558227545 13 5.0943749137498733
		 14 7.4147687137143112 15 9.4545510188263844 16 11.20165575027346 17 12.808879853713247
		 18 14.347970572971469 19 15.507714889185614 20 16.073775928052466 21 16.265047393623835
		 22 16.659518720002591 23 18.749114682237753 24 23.262954776264689 25 28.096459572639564
		 26 33.46614544918264 27 38.551530469231828 28 44.557185634307025 29 51.505960466825591
		 30 56.36161088182137 31 57.341125359496736 32 54.751930228020953 33 49.864809431832967
		 34 43.318291870056647 35 34.610451427523088 36 24.891276112889148 37 16.045234187819315
		 38 9.6103519631586032 39 7.358108105022561 40 7.6657869697844374 41 9.7833576305737733
		 42 9.5132914091630472 43 5.2739898946904251 44 1.3139565741193682 45 0.62544848374214335
		 46 0.91300505830760081 47 -1.64354798161643 48 -4.82164570278852 49 -5.9056564056063472
		 50 -5.903298943524077 51 -6.4628918521434242 52 -7.1812054472871525 53 -8.4927341291303424
		 54 -10.959805804038313 55 -12.337908539878214 56 -9.0383286632155961 57 -6.019984964470857
		 58 -6.7301900389433351 59 -10.239106782694137 60 -16.038493846232019 61 -21.216099872408126
		 62 -24.243040233952112 63 -27.590632326876118 64 -31.196556921825426 65 -33.657741097249271
		 66 -34.903286963947934 67 -36.292902591715567 68 -37.181242367331187 69 -35.188345553706149
		 70 -31.089444643393577 71 -26.853565294904627 72 -23.23157137872867 73 -20.427989171847781
		 74 -18.13045199211038 75 -16.009612514270565 76 -14.138019832223913 77 -12.40628938146666
		 78 -10.599879972531845 79 -8.5396267863579656 80 -6.2124376847459413 81 -3.7846660076669196
		 82 -1.4319730533122244 83 0.47880258903498063 84 1.8195567765770966 85 2.5156478534393361
		 86 2.5420206427173642 87 2.0733572867443959 88 1.1127682112719102 89 -0.16853714147142079
		 90 -1.0792574222604945 91 -1.725628544692388 92 -2.4785356418079854 93 -3.3160760286093622
		 94 -3.8737285187234263 95 -4.6218046137880444 96 -5.4494374719499872 97 -5.4686338825068299
		 98 -5.282634374670339 99 -5.4794389165740833 100 -5.5891868927930837 101 -5.4112529697771707
		 102 -5.1010872304340493 103 -4.663708914628204 104 -3.9724454793229254 105 -3.4191059668512405
		 106 -3.0675215267356446 107 -2.6347446227823439 108 -2.1362527650484839 109 -1.7877149660234799
		 110 -1.5947763824303842 111 -1.2696533386366236 112 -0.89311824697212117 113 -0.57376637856016388
		 114 -0.36087417233838159 115 -0.30790112808053316 116 -0.28692743277648391 117 -0.28131035628007395
		 118 -0.33583563811740591 119 -0.3600515188981479 120 -0.46565284976315352 121 -0.67396174422251864
		 122 -0.64593690357320488 123 -0.74537850350999935 124 -1.2874901807722783 125 -1.7978878878194646
		 126 -2.0359962172302235 127 -2.1600753691100167 128 -2.39884286312873 129 -2.6478144154888223
		 130 -2.9194318408969986 131 -3.2275634617565663 132 -3.4978102762729799 133 -3.9113771771977013
		 134 -4.2171582060762809 135 -3.7643043802079759 136 -3.2486719955422729;
createNode animCurveTA -n "locator7_rotateY";
	rename -uid "3126FD54-4BD1-E737-45FB-2EBF2A2FA951";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 14.927785667658958 1 14.695193026874534
		 2 16.6389860612475 3 20.281065330265204 4 23.540669241657795 5 25.202929407603801
		 6 25.880231400398102 7 26.643069797363065 8 27.500967795154423 9 28.119370584901283
		 10 27.364140064115109 11 26.952809127005338 12 27.129466254127561 13 27.156606078223813
		 14 26.790127263914535 15 25.718999538726191 16 24.045776345070852 17 22.525703966284741
		 18 21.758666137139528 19 21.579963563585586 20 21.475617025316055 21 21.506468301315117
		 22 21.559323609284917 23 20.9448327068129 24 19.342296290662027 25 18.054036331167431
		 26 16.348838390967931 27 14.877552413375668 28 14.207670203803044 29 13.64455137163991
		 30 11.941281390230326 31 9.9103301828527766 32 9.6512774321110282 33 11.072094445595569
		 34 12.278317158791168 35 11.78226678778389 36 10.433666739850233 37 10.82621079813296
		 38 8.744608345521149 39 7.0869450954709556 40 9.4620375256151608 41 15.679608854264183
		 42 24.554145420955461 43 34.74224232100093 44 43.526800624412076 45 49.710886427473085
		 46 55.438870883936872 47 61.41067388569364 48 64.768745565815166 49 66.110480406974077
		 50 67.458138528076532 51 68.895640679736729 52 69.514649486690431 53 69.074445288282575
		 54 68.587376268254161 55 67.878083667888546 56 65.284265652180025 57 60.287784461592508
		 58 54.26856262552554 59 49.783354989642561 60 44.43829957028251 61 36.724320893864572
		 62 30.22977616297219 63 27.618336748409895 64 28.516825877921786 65 30.0589768551209
		 66 31.00587594676108 67 31.837972914603917 68 32.360303669870099 69 32.374680630482146
		 70 31.907560881745507 71 30.99062021637215 72 29.966463773844044 73 29.624579064399683
		 74 29.617342117977106 75 28.836507067937657 76 28.014318050397055 77 27.821824855660772
		 78 27.809249288701842 79 27.813348883459298 80 27.563649981424962 81 26.899737597781648
		 82 26.304672046920697 83 26.106385017785737 84 25.795944628151581 85 24.66928584493737
		 86 23.595401512222548 87 23.199662701653228 88 22.721616380644885 89 21.866442486507847
		 90 21.066744901494822 91 22.796039309266003 92 24.107233211822948 93 24.124960608382679
		 94 23.680331221863419 95 23.659133163564967 96 24.082443417993307 97 24.533183136160869
		 98 24.855201081867715 99 25.215697126895179 100 25.570417661835069 101 25.908902329617337
		 102 26.394345273328344 103 26.918795671363057 104 27.511167907066017 105 28.08694795095289
		 106 28.7126331473102 107 29.383920788851306 108 29.918836007814139 109 30.333017059543831
		 110 31.098035824200405 111 32.063065202267552 112 32.704202720379833 113 33.219298770203281
		 114 33.756609588719719 115 34.223751337876571 116 34.629593911646602 117 34.956701105758889
		 118 35.207941916486838 119 35.373552345797926 120 35.436677887890966 121 35.39306270999014
		 122 35.279199594388352 123 35.021873293490785 124 34.592708313558617 125 34.44581251576863
		 126 34.470793502839861 127 34.33862752222101 128 34.231441751385844 129 34.181523144613358
		 130 34.110706573620476 131 34.089116069556745 132 34.117883349509789 133 34.064177952448198
		 134 33.773750497227624 135 33.360465154252694 136 33.160080881399892;
createNode animCurveTA -n "locator7_rotateZ";
	rename -uid "366D3A7C-49BD-B1D4-3214-D2927BC9022E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 5.0775808309417707 1 4.2974564031074669
		 2 2.9947030347972854 3 0.28012044748787851 4 -3.9133197090315268 5 -7.2665028052752065
		 6 -8.2697197898254142 7 -7.7978583997049506 8 -7.2585236138967186 9 -6.6829910058256052
		 10 -6.3504854089203882 11 -6.3679571678511548 12 -6.5047142497794725 13 -6.5114695381598242
		 14 -5.9897961368845092 15 -5.1220490444538376 16 -4.4999297945153209 17 -4.1403458272795799
		 18 -3.5706274091537762 19 -2.9710997696703458 20 -2.8162830229431255 21 -2.8413767520299325
		 22 -2.4712365255764204 23 -1.5991413827134169 24 -0.50548408585047522 25 1.270288466253328
		 26 3.5913032590024652 27 6.0732051518806971 28 8.9408203341162835 29 11.398545356164549
		 30 13.360318600682543 31 12.200090881997685 32 8.6852719661077167 33 7.0176393311527798
		 34 6.6673185690209662 35 5.1729653325245213 36 4.4447625342358803 37 6.4403091482305266
		 38 7.7949061512446045 39 8.4396497871784248 40 8.31896005813946 41 4.8799827717826361
		 42 1.2052110686304072 43 -0.0012940393777971201 44 -2.154485201942407 45 -6.762434120766927
		 46 -10.358159404791554 47 -12.614231402460483 48 -15.074763041154149 49 -16.853508835207897
		 50 -18.660981111463105 51 -20.127366841959166 52 -20.293147342640559 53 -20.244938529201001
		 54 -21.612422637482183 55 -22.976266174888934 56 -21.690217072211848 57 -19.838526354984388
		 58 -19.316259892598119 59 -20.30827099037084 60 -20.438842251169493 61 -18.10551177253663
		 62 -14.848960597569919 63 -12.596275179156018 64 -11.743336297324234 65 -11.590848288918325
		 66 -11.711379049850187 67 -12.109504301863197 68 -12.821764769930356 69 -12.601539551631893
		 70 -10.327480836646457 71 -7.1199344370868074 72 -4.3211602552443349 73 -2.2844938442429239
		 74 -0.69681669374761224 75 0.93889937015570257 76 2.2992048121746467 77 3.3169136223236886
		 78 4.2730249542357646 79 5.3656688487587347 80 6.4280072808733548 81 7.2841746139300074
		 82 8.1452501281608587 83 9.0795750280852676 84 9.897330489738339 85 10.385496120749247
		 86 10.745748790671977 87 11.24274166978299 88 11.618452709994976 89 11.579976128148008
		 90 10.947405788863946 91 9.953545861325054 92 9.0375554494933308 93 8.4057854173856743
		 94 7.6650435405651445 95 6.7909488615767444 96 5.9522688159754553 97 5.254599907649105
		 98 4.6230924938396667 99 3.8810801726178514 100 3.052083849860542 101 2.3067451880166323
		 102 1.7817393956976229 103 1.4454199538143158 104 1.1991057728019447 105 1.1056259728024529
		 106 1.0854256935968616 107 0.9987263921273849 108 0.93216808850721722 109 0.93111987959734399
		 110 0.8590816000593765 111 0.77809805290866518 112 0.78790995230049932 113 0.87046839061675962
		 114 0.99593965337946455 115 1.1069593412336427 116 1.2066205533369547 117 1.3400512500038211
		 118 1.5607644875666604 119 1.8340414747760982 120 1.9760146207301161 121 2.1314027410692864
		 122 2.6621375442140396 123 3.0630328953687949 124 2.9902953886155057 125 2.9041428439710639
		 126 3.0347997764342085 127 3.2318263913654715 128 3.2811700326650146 129 3.2493531410463268
		 130 3.1708105248896512 131 3.0648388125434907 132 2.9283517836997395 133 2.5945174981225416
		 134 2.3806641968971296 135 2.9031641462718594 136 3.3472961433860555;
createNode animCurveTU -n "locator7_scaleX";
	rename -uid "99275B1F-436F-7E92-72B6-FE87697F699A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999989 1 1.0000000000000002
		 2 0.99999999999999989 3 0.99999999999999978 4 1 5 0.99999999999999989 6 0.99999999999999989
		 7 1 8 0.99999999999999989 9 1.0000000000000002 10 1.0000000000000002 11 1 12 0.99999999999999989
		 13 1.0000000000000002 14 1 15 1 16 0.99999999999999989 17 0.99999999999999989 18 1
		 19 0.99999999999999989 20 1 21 0.99999999999999989 22 0.99999999999999989 23 1 24 1
		 25 0.99999999999999989 26 1 27 1 28 1 29 1 30 0.99999999999999989 31 1 32 0.99999999999999978
		 33 1 34 0.99999999999999989 35 0.99999999999999989 36 1 37 1 38 1 39 0.99999999999999967
		 40 1.0000000000000002 41 0.99999999999999978 42 0.99999999999999989 43 1.0000000000000002
		 44 1 45 1.0000000000000002 46 1 47 0.99999999999999978 48 1 49 0.99999999999999978
		 50 1 51 1 52 1 53 0.99999999999999978 54 1 55 1.0000000000000002 56 0.99999999999999978
		 57 0.99999999999999989 58 0.99999999999999989 59 1 60 0.99999999999999978 61 1 62 1
		 63 1.0000000000000004 64 1.0000000000000002 65 1 66 1.0000000000000002 67 1.0000000000000002
		 68 1 69 0.99999999999999978 70 0.99999999999999967 71 0.99999999999999956 72 1 73 1
		 74 1 75 0.99999999999999989 76 0.99999999999999978 77 1.0000000000000004 78 0.99999999999999989
		 79 0.99999999999999989 80 1 81 0.99999999999999989 82 0.99999999999999978 83 1 84 0.99999999999999989
		 85 1 86 0.99999999999999944 87 1 88 0.99999999999999978 89 0.99999999999999978 90 1
		 91 0.99999999999999989 92 0.99999999999999956 93 1 94 1 95 1.0000000000000002 96 0.99999999999999989
		 97 1 98 0.99999999999999989 99 0.99999999999999967 100 1 101 1 102 0.99999999999999989
		 103 0.99999999999999989 104 0.99999999999999944 105 1.0000000000000002 106 0.99999999999999989
		 107 1 108 1 109 1 110 1 111 0.99999999999999989 112 0.99999999999999989 113 1 114 0.99999999999999944
		 115 1 116 1 117 1 118 1 119 1.0000000000000002 120 1 121 0.99999999999999989 122 0.99999999999999989
		 123 0.99999999999999956 124 0.99999999999999956 125 0.99999999999999989 126 0.99999999999999989
		 127 1 128 1.0000000000000002 129 1 130 1 131 1.0000000000000002 132 0.99999999999999989
		 133 1 134 0.99999999999999989 135 1 136 0.99999999999999989;
createNode animCurveTU -n "locator7_scaleY";
	rename -uid "267B156D-4DC6-3DF9-A75A-3BB4386BF786";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999989 1 1 2 0.99999999999999989
		 3 0.99999999999999989 4 1 5 1 6 1.0000000000000002 7 1 8 0.99999999999999989 9 1
		 10 1.0000000000000002 11 0.99999999999999989 12 1 13 1.0000000000000002 14 0.99999999999999989
		 15 1 16 0.99999999999999989 17 0.99999999999999967 18 1 19 1.0000000000000002 20 0.99999999999999967
		 21 1 22 0.99999999999999989 23 1 24 1 25 1.0000000000000002 26 1 27 0.99999999999999978
		 28 1.0000000000000002 29 1 30 1 31 0.99999999999999989 32 1 33 1 34 0.99999999999999989
		 35 1 36 0.99999999999999989 37 1 38 0.99999999999999989 39 0.99999999999999978 40 1
		 41 0.99999999999999967 42 1 43 1 44 1 45 1 46 1 47 0.99999999999999989 48 0.99999999999999989
		 49 0.99999999999999978 50 1 51 1 52 0.99999999999999989 53 0.99999999999999978 54 1
		 55 1.0000000000000002 56 0.99999999999999989 57 0.99999999999999989 58 1 59 1 60 1
		 61 1 62 1.0000000000000002 63 1 64 0.99999999999999989 65 1 66 1 67 1.0000000000000002
		 68 1.0000000000000002 69 1 70 0.99999999999999989 71 1 72 1 73 0.99999999999999989
		 74 0.99999999999999989 75 0.99999999999999978 76 1 77 1 78 0.99999999999999989 79 1.0000000000000002
		 80 1 81 0.99999999999999978 82 0.99999999999999989 83 0.99999999999999989 84 0.99999999999999989
		 85 1 86 0.99999999999999989 87 0.99999999999999989 88 0.99999999999999978 89 1 90 1.0000000000000002
		 91 0.99999999999999989 92 1 93 0.99999999999999989 94 1 95 1 96 1 97 1 98 1.0000000000000002
		 99 0.99999999999999967 100 0.99999999999999989 101 0.99999999999999989 102 1 103 0.99999999999999978
		 104 0.99999999999999967 105 0.99999999999999989 106 0.99999999999999989 107 1 108 0.99999999999999989
		 109 1 110 1 111 1 112 1 113 1 114 1 115 0.99999999999999978 116 1 117 0.99999999999999978
		 118 1 119 1 120 0.99999999999999989 121 0.99999999999999989 122 1 123 0.99999999999999978
		 124 0.99999999999999978 125 0.99999999999999967 126 0.99999999999999989 127 0.99999999999999989
		 128 1.0000000000000002 129 1 130 1 131 0.99999999999999989 132 0.99999999999999989
		 133 1.0000000000000002 134 0.99999999999999978 135 1 136 0.99999999999999989;
createNode animCurveTU -n "locator7_scaleZ";
	rename -uid "3B138228-4738-E8A8-D2CB-19BEB74ADCD4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1.0000000000000002 3 1.0000000000000002
		 4 1 5 0.99999999999999989 6 1 7 1 8 1 9 1.0000000000000002 10 1.0000000000000002
		 11 1.0000000000000002 12 1 13 1.0000000000000002 14 1 15 1 16 0.99999999999999989
		 17 0.99999999999999989 18 1 19 1 20 0.99999999999999978 21 0.99999999999999989 22 0.99999999999999989
		 23 1 24 1 25 1 26 1 27 0.99999999999999989 28 1 29 1 30 1 31 1 32 1 33 0.99999999999999989
		 34 1 35 1.0000000000000002 36 1.0000000000000002 37 1 38 1 39 0.99999999999999978
		 40 1 41 0.99999999999999989 42 0.99999999999999989 43 1.0000000000000002 44 0.99999999999999989
		 45 1.0000000000000002 46 1.0000000000000004 47 0.99999999999999989 48 1 49 0.99999999999999967
		 50 1.0000000000000002 51 1 52 0.99999999999999989 53 0.99999999999999978 54 1.0000000000000002
		 55 1 56 0.99999999999999956 57 0.99999999999999978 58 0.99999999999999978 59 0.99999999999999978
		 60 0.99999999999999989 61 1 62 1.0000000000000004 63 1.0000000000000002 64 1 65 1
		 66 1.0000000000000004 67 1.0000000000000002 68 1 69 0.99999999999999989 70 0.99999999999999978
		 71 0.99999999999999956 72 1 73 0.99999999999999978 74 1 75 0.99999999999999967 76 0.99999999999999989
		 77 1 78 1 79 1 80 1 81 0.99999999999999978 82 0.99999999999999978 83 0.99999999999999989
		 84 0.99999999999999989 85 1 86 0.99999999999999967 87 0.99999999999999989 88 0.99999999999999978
		 89 1 90 1.0000000000000002 91 0.99999999999999978 92 0.99999999999999967 93 1.0000000000000004
		 94 1 95 1 96 0.99999999999999989 97 0.99999999999999989 98 1 99 0.99999999999999956
		 100 1.0000000000000002 101 1.0000000000000002 102 1.0000000000000002 103 0.99999999999999978
		 104 0.99999999999999922 105 1.0000000000000002 106 0.99999999999999989 107 1 108 1
		 109 1 110 1.0000000000000002 111 1 112 1.0000000000000002 113 0.99999999999999989
		 114 0.99999999999999956 115 0.99999999999999978 116 1 117 1 118 1.0000000000000002
		 119 1.0000000000000002 120 1 121 1 122 0.99999999999999989 123 0.99999999999999933
		 124 0.99999999999999944 125 0.99999999999999989 126 1 127 0.99999999999999978 128 1.0000000000000004
		 129 1 130 1 131 1 132 0.99999999999999989 133 1 134 0.99999999999999978 135 1 136 0.99999999999999978;
createNode animCurveTU -n "locator8_visibility";
	rename -uid "2881C4AB-4855-2D63-C70F-F9B098699263";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1
		 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1
		 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1
		 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTL -n "locator8_translateX";
	rename -uid "EA8179CA-4E04-52F6-ADB3-3BBC0243853E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 12.70082182244753 1 14.279872210822461
		 2 15.509714478195932 3 16.327503578895147 4 16.687189059907258 5 16.847266648292884
		 6 16.214030601831048 7 14.738654648646236 8 12.581926813451766 9 10.299742865809533
		 10 7.4517845431817449 11 4.0733473319883959 12 0.83910472622871879 13 -1.289392506046557
		 14 -2.1094173193221089 15 -2.4792315064075545 16 -2.9046692283765907 17 -3.1657054275772438
		 18 -3.1414006059741038 19 -3.0732808986845086 20 -3.1988030759660617 21 -3.5374743998352187
		 22 -3.9592209721491649 23 -4.1564670958249081 24 -3.7369152919830864 25 -2.8202236349715282
		 26 -0.97251460252016209 27 2.5880471791855424 28 6.3183127453104388 29 9.3646090533567801
		 30 12.456267823203422 31 14.05188808733676 32 13.387234442873815 33 12.798582861375731
		 34 13.547096723549267 35 14.439948716201407 36 15.851021185873623 37 18.124778126432105
		 38 18.686346449468104 39 18.855729728635637 40 19.263802270195356 41 15.782769776460611
		 42 14.522239664021583 43 18.296630549799829 44 20.047558500162324 45 15.80067263787123
		 46 10.98352796671665 47 9.46495793110617 48 8.3216924580582372 49 6.0854298424326316
		 50 3.2703219468095313 51 1.8279226479682222 52 1.7664338180125014 53 2.0797786957006537
		 54 2.119805728264673 55 1.4303404904685522 56 0.18735397883066796 57 0.2886433549349654
		 58 2.6595735888208187 59 6.29211529415673 60 11.743598904731051 61 16.311890455428767
		 62 17.948367529903706 63 19.061355278032693 64 21.440432760941889 65 23.926309151308232
		 66 25.27445887174764 67 26.146145563727586 68 26.349808513803211 69 25.526722394444747
		 70 25.014495468536111 71 25.210036548708885 72 25.625795679662929 73 25.963014172235674
		 74 26.106779218973003 75 26.27947181492155 76 26.429437715233504 77 26.427062939473387
		 78 26.217479343456972 79 25.901808853137425 80 25.371593473042239 81 24.659180314090079
		 82 24.050161214695478 83 23.687151087618687 84 23.48116275634905 85 23.398559191846005
		 86 23.509882043989307 87 23.802655944761327 88 24.101371758422715 89 24.248696339052245
		 90 24.061570093138144 91 23.370403195640833 92 22.759591356270455 93 22.454897500182042
		 94 22.129149789330057 95 21.706403901989788 96 21.051155354526855 97 20.313785838584153
		 98 19.711246231644509 99 19.136369257136998 100 18.51394054987788 101 17.912725449578886
		 102 17.362097964476803 103 16.794261247490581 104 16.136584848376813 105 15.600242749207766
		 106 15.234348553386667 107 14.870518548018183 108 14.604840277944191 109 14.48497536649046
		 110 14.297606681896298 111 14.055139588118962 112 13.88411874964487 113 13.812971108521396
		 114 13.874348973124896 115 13.988365402018303 116 14.106287238370712 117 14.309158434303669
		 118 14.676154080258968 119 15.102850432600547 120 15.40939633514401 121 15.658391347184249
		 122 15.952210583452 123 16.313856213090318 124 16.709012158295934 125 17.049977972644783
		 126 17.393832315133437 127 17.774944890722381 128 18.074405174664975 129 18.220369808537527
		 130 18.28332893516874 131 18.362175463632155 132 18.392807217185222 133 18.256070767759525
		 134 18.304804491375592 135 19.091338000446271 136 19.696406987247727;
createNode animCurveTL -n "locator8_translateY";
	rename -uid "E843113B-48ED-2C73-524F-3F9FB8BE8DFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -84.883256254322049 1 -86.646939442819956
		 2 -87.431359345012908 3 -87.08476316265218 4 -85.967443510709899 5 -84.90557705394589
		 6 -84.896800932006585 7 -85.693531417060029 8 -85.844451389001662 9 -86.509376241810457
		 10 -87.30867000036929 11 -88.295905591509552 12 -89.002947990387881 13 -89.479647474955868
		 14 -90.195748772978888 15 -90.984854503261616 16 -91.628592740160272 17 -92.085728795976209
		 18 -92.312240814144062 19 -92.395166632880205 20 -92.416679751912838 21 -92.408532595326747
		 22 -92.290860346971897 23 -91.669251975852276 24 -90.290969765798707 25 -88.597814041254367
		 26 -86.480831106809944 27 -84.38573758309434 28 -81.504828892853894 29 -77.408069148553025
		 30 -73.763901837205481 31 -71.960233772402049 32 -72.383664125109291 33 -74.302582939418173
		 34 -77.141329048297578 35 -80.828631096286941 36 -84.607363186753474 37 -87.595601966908134
		 38 -89.473348214893875 39 -89.594368894450952 40 -88.618486215122203 41 -87.792812369537145
		 42 -87.313516255821526 43 -86.972498970119503 44 -86.627835992913759 45 -86.697523149210312
		 46 -87.218642219744709 47 -88.361834108451703 48 -89.430939109099839 49 -90.091810612748446
		 50 -90.171988530858243 51 -90.256856686260249 52 -90.781751456635703 53 -91.429221883078995
		 54 -91.767910295965578 55 -91.588798259985367 56 -90.268106865405954 57 -88.406626687151004
		 58 -86.617924076748082 59 -83.946879265887617 60 -79.898155593754609 61 -74.98839835468489
		 62 -72.417526687798585 63 -71.550089366118556 64 -70.507639976737408 65 -69.59380698170601
		 66 -68.862030234696206 67 -68.412655127388547 68 -69.320288058579223 69 -71.953524753326548
		 70 -74.607465635954981 71 -76.787078904710611 72 -78.760668028799955 73 -80.562082284536842
		 74 -82.239081810918435 75 -83.860919267334367 76 -85.32955705929939 77 -86.69256958380214
		 78 -87.998202213417926 79 -89.207200486086464 80 -90.351315566287838 81 -91.363864260909196
		 82 -92.120133004819522 83 -92.596588923521551 84 -92.888058005206091 85 -93.10104049967731
		 86 -93.267644269402695 87 -93.375373414363565 88 -93.450014857619465 89 -93.490114126751948
		 90 -93.416893028448243 91 -93.340277802885183 92 -93.244563954891049 93 -93.156072389951134
		 94 -93.101241912565655 95 -93.194347940305676 96 -93.384166285485321 97 -93.411116703809611
		 98 -93.320993835422541 99 -93.293090422940026 100 -93.295048073193357 101 -93.311768513833613
		 102 -93.357435724904903 103 -93.435411142546315 104 -93.549527891674302 105 -93.681921335660661
		 106 -93.803739126943498 107 -93.879914764354652 108 -93.904801556143113 109 -93.931603329857126
		 110 -94.009347720903463 111 -94.083544547301628 112 -94.10266264516963 113 -94.090433449728494
		 114 -94.062201069067498 115 -94.033834137264677 116 -94.01277650905962 117 -93.997782864650844
		 118 -93.977339227486425 119 -93.936857986670191 120 -93.908919722118526 121 -93.885829645902305
		 122 -93.814999546710425 123 -93.737625154385213 124 -93.680724355842131 125 -93.593355104624493
		 126 -93.489959951659031 127 -93.392860306749839 128 -93.3108873040795 129 -93.242796049818139
		 130 -93.182669295950959 131 -93.126728560178321 132 -93.075384570797937 133 -93.000468650518698
		 134 -92.898733228853189 135 -92.821650976684865 136 -92.782494587916773;
createNode animCurveTL -n "locator8_translateZ";
	rename -uid "B80A4FAB-4489-3A53-AA66-C7A35E06F189";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 5.1895172497669559 1 13.334955040418805
		 2 22.363199217820043 3 30.572589350263257 4 36.599766254035096 5 39.658081036248333
		 6 39.80488582190678 7 37.825521226080667 8 35.174902486750021 9 31.458375840017755
		 10 26.222296379769979 11 20.633402353458834 12 16.171992854062324 13 12.643120041042508
		 14 8.8522042268045809 15 4.7787011439509115 16 0.64436100971707333 17 -3.5693971417532779
		 18 -7.449513275197944 19 -10.621769046346934 20 -12.972846457930352 21 -14.785994402957733
		 22 -17.077761282959862 23 -20.298408091984157 24 -24.261403341391052 25 -28.493456297314864
		 26 -32.652331504677356 27 -35.136693464117407 28 -36.285093228888414 29 -36.881835207752985
		 30 -35.28693910444531 31 -31.418927912262987 32 -26.269060261476966 33 -20.781653599888941
		 34 -15.289663688699989 35 -9.0979002117444594 36 -2.5299478678821288 37 3.2624879981217418
		 38 7.2032214359616233 39 9.3693782463848265 40 10.84536799175973 41 10.747426386373323
		 42 11.284124085761569 43 13.942422365828584 44 16.298377481291354 45 16.69419319147238
		 46 15.904240026681833 47 15.76738346186454 48 15.641393801024776 49 15.008643558367083
		 50 14.599117647307025 51 14.291025561081995 52 13.529889587838881 53 13.0650911870855
		 54 13.519678777207247 55 14.630152984345642 56 16.418244271389398 57 19.004905516184522
		 58 22.569188700607668 59 27.854369003069422 60 35.238129261472722 61 42.761342352054072
		 62 47.294548975481803 63 50.27575877261242 64 52.439759572003595 65 53.497365022143697
		 66 54.066818124395184 67 54.620238449611151 68 54.231337268279475 69 51.757450503672914
		 70 48.326664541290256 71 44.890487242590297 72 41.534505571110145 73 38.419438056426117
		 74 35.494100328335833 75 32.527470945759546 76 29.617280772675343 77 26.68930775023145
		 78 23.635567756620333 79 20.374688824268532 80 16.804980653611835 81 13.063896996630746
		 82 9.4953453352243002 83 6.6026989285566628 84 4.4786086353587393 85 2.9520303089713309
		 86 2.054600224816852 87 1.8080306741169636 88 2.1764692007466522 89 3.088480100880048
		 90 4.5150206029479136 91 6.0591466613367686 92 7.5338138886153843 93 8.721530974660368
		 94 9.4995893508020401 95 9.8670597711343646 96 10.038867309459789 97 10.32233853448767
		 98 10.788486958314564 99 11.218221961746451 100 11.450098892331226 101 11.389456149446374
		 102 11.136158300825912 103 10.720237621571101 104 10.017913812174839 105 9.3182793509074031
		 106 8.7399997008209596 107 8.2153218385552691 108 7.7663598583263251 109 7.3854690703626886
		 110 6.9465375311706907 111 6.4008923294251474 112 6.0313484823499834 113 5.8321412256007648
		 114 5.7556444045746957 115 5.8120782437348169 116 5.861312179901347 117 5.8613067441112605
		 118 5.8847423662937786 119 5.9424212630292743 120 6.0385712495030646 121 6.2691855466697177
		 122 6.6064599775534134 123 6.9654723123940414 124 7.4305488020131634 125 7.9991115948232618
		 126 8.4436553151988392 127 8.7450732240358491 128 9.0817325187055928 129 9.441583433847029
		 130 9.8244879490463859 131 10.197833901827835 132 10.536722115989136 133 11.104408685773961
		 134 11.584502716451937 135 11.135912709758259 136 10.565573605707158;
createNode animCurveTA -n "locator8_rotateX";
	rename -uid "9873148F-4BFB-90A9-74A0-D5ADAACA68D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 15.422445789025819 1 3.9469952029770257
		 2 -8.7288417629914559 3 -22.230018163387875 4 -34.872644073471221 5 -44.171184116194915
		 6 -46.383438858122545 7 -39.655019369523671 8 -27.013485656952724 9 -18.208466395289093
		 10 -13.083169776084263 11 -10.149916493241474 12 -9.2465689774175974 13 -9.0827514950939445
		 14 -8.4564352083523762 15 -7.5188807815739196 16 -6.5731323669381743 17 -5.370120778233674
		 18 -4.2333503474739942 19 -3.7231114074116984 20 -3.7537098035856284 21 -3.8149152545426186
		 22 -4.0909853372183598 23 -2.6306047588052608 24 0.89549948252194966 25 6.0457041976799104
		 26 13.632534604228406 27 24.330902836539806 28 39.202562074666893 29 55.773151834162029
		 30 66.524395398427615 31 66.007352369669462 32 59.561963239457178 33 51.721036834460335
		 34 41.099058085204206 35 31.493592856143685 36 21.832138979230955 37 9.4117228180465933
		 38 -0.10787873921073012 39 -1.8869107664113864 40 -0.59106329250902334 41 -6.7853286144979892
		 42 -11.902019749397727 43 -15.218368310083333 44 -18.033660685835638 45 -19.383683139672588
		 46 -19.274569480290669 47 -19.508074125554209 48 -20.552367507688192 49 -21.500428815104094
		 50 -21.480480301996518 51 -20.385624549907831 52 -18.194357914778674 53 -13.291926205633395
		 54 2.4970218055801663 55 15.093884923477463 56 1.1922188136829766 57 -3.3874344465672981
		 58 -5.1382246807484941 59 -8.5157459072066128 60 -12.683310418341485 61 -15.849199782252192
		 62 -17.407714052241193 63 -19.15378829790939 64 -21.495409767170791 65 -24.685509599174871
		 66 -28.563749644676491 67 -31.329620500720502 68 -31.822685255920927 69 -29.720174255768143
		 70 -26.444875864456854 71 -23.356886764837128 72 -20.512085205636083 73 -18.048715981430533
		 74 -16.141533256433071 75 -14.623333962151978 76 -13.207574787006719 77 -11.440353130640704
		 78 -9.2864306858840457 79 -7.0913108729620067 80 -4.9037835453086478 81 -2.7579902391059292
		 82 -0.75975510634988319 83 0.99851127229213399 84 2.3495571558692308 85 3.2678401454899015
		 86 4.0157322080664191 87 4.6440991175354345 88 4.8300784562814085 89 4.6899703546063742
		 90 4.647512011742422 91 4.2387968641998688 92 3.6967749414107778 93 2.9235550785805184
		 94 2.3173222538352678 95 2.2004572815326635 96 2.1863200252874817 97 0.82258061367051749
		 98 -0.78526686569048509 99 -1.4337879848930468 100 -1.8083226979723044 101 -2.1460319501281528
		 102 -2.3326451286580476 103 -2.3427870899231258 104 -2.1840505637284462 105 -2.0714589028324633
		 106 -2.0112549454055308 107 -2.0582275069159746 108 -2.2403687747228966 109 -2.2729629462967496
		 110 -2.0740531158160831 111 -1.9197457688137589 112 -1.9497629211135163 113 -1.974637900338565
		 114 -1.9732933953591589 115 -2.0591093887233352 116 -2.1878414790294278 117 -2.2088545926452894
		 118 -2.2154813213125419 119 -2.2790983372981399 120 -2.2941746504517599 121 -2.4294668092621201
		 122 -2.7130966281008169 123 -3.0247129941052719 124 -3.3885892542375355 125 -3.7471335176917426
		 126 -4.1773078034607698 127 -4.7841802520841448 128 -5.2922830456502021 129 -5.6356548582918773
		 130 -5.9448984699002221 131 -6.1608527137558946 132 -6.3319865330837084 133 -6.8046444060668536
		 134 -7.2052314525605583 135 -6.7318438257821125 136 -6.0496585658894615;
createNode animCurveTA -n "locator8_rotateY";
	rename -uid "3B0EB917-4E0A-35A1-09C8-08A78E905607";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 17.499679341934868 1 16.307175057728116
		 2 16.12730420545067 3 16.436444829887375 4 16.168946968013735 5 15.319680965922814
		 6 15.283935207459315 7 18.924283405249316 8 24.644003701983273 9 26.415171295131291
		 10 26.500879366619312 11 26.703834292349711 12 27.119782582410934 13 27.301021666069406
		 14 27.114166907978678 15 26.253151278965053 16 24.800418872712378 17 23.45726141541866
		 18 22.810633166047406 19 22.710445226748188 20 22.58606972419474 21 22.552708627909812
		 22 22.685127712842522 23 22.462255450138986 24 21.882329358693408 25 21.648661109112748
		 26 21.407776279095007 27 20.85390696592037 28 19.551642544563794 29 16.558868570478023
		 30 13.423715236167521 31 11.409820389330413 32 11.63100549346683 33 15.626600412132076
		 34 20.013084648400106 35 16.816639770457869 36 10.125756060118064 37 3.2354280790914998
		 38 -4.6318211643175733 39 -7.5761004199281841 40 -3.2848232156713433 41 7.8318574425140746
		 42 22.386788913152134 43 34.762931666070045 44 43.499191176969987 45 49.772211472950751
		 46 55.57225290372336 47 61.670840896005949 48 66.642978075013417 49 70.495487020169946
		 50 74.439775268502871 51 78.747153004585158 52 82.616651224899385 53 86.002526309630284
		 54 88.631640615452554 55 87.39607377397499 56 80.395752848801862 57 70.156042444816421
		 58 60.329606665858037 59 52.444750665380425 60 45.087718903626843 61 36.582635987506997
		 62 28.815207972964874 63 25.249351910472534 64 25.47526304222659 65 26.444926309783625
		 66 26.827814380372651 67 27.250096891387486 68 27.903067598018215 69 28.39115835036425
		 70 28.036927768390211 71 27.061449886816249 72 26.262632628761502 73 25.733522609833127
		 74 25.257346639527714 75 24.716903385639458 76 24.261437064944474 77 23.929171564014244
		 78 23.599568295129767 79 23.223504780275501 80 22.829838313405013 81 22.586660768521316
		 82 22.382149300071003 83 21.817189423681263 84 21.110810101102729 85 20.733564606871795
		 86 20.604384341009272 87 20.382552706846617 88 20.001962692739333 89 20.220577018625743
		 90 21.808170305914611 91 23.867169221152206 92 24.948518453158893 93 24.773841740580682
		 94 24.202837813991795 95 24.068339889274483 96 24.384495015429827 97 24.727734814559781
		 98 24.939432095649224 99 25.23193742855279 100 25.563823512008511 101 25.916171882595716
		 102 26.335949508137762 103 26.844582481348944 104 27.446223517710518 105 28.031836748510628
		 106 28.671749997409048 107 29.361604729914482 108 29.918882707890354 109 30.362205134313619
		 110 31.139041775815269 111 32.099942626321635 112 32.739650383289451 113 33.254628713957935
		 114 33.794936581737467 115 34.263263212879373 116 34.662167890127819 117 34.986538304023618
		 118 35.238568935159797 119 35.410361421747581 120 35.463456470411671 121 35.454309243541722
		 122 35.468095904120602 123 35.231120234644017 124 34.712357652022057 125 34.519800443048872
		 126 34.530687726689401 127 34.352288500003844 128 34.17852471152613 129 34.069054994594381
		 130 33.942809900569145 131 33.882806637185546 132 33.894529099249461 133 33.792438695189823
		 134 33.466785138292934 135 33.189413295161181 136 33.187954305445231;
createNode animCurveTA -n "locator8_rotateZ";
	rename -uid "8317C517-419F-8EC3-DC1A-4A985216173E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -2.0147638836520265 1 -5.3914723551727732
		 2 -9.5367487665661255 3 -14.548877268894936 4 -19.220290814975396 5 -22.01421129236067
		 6 -23.191105203998017 7 -21.888437602033477 8 -16.107303655806309 9 -15.201305480965953
		 10 -14.244146931912466 11 -12.683863617008367 12 -12.948931479391158 13 -13.875488358805583
		 14 -13.931726047261016 15 -13.53587528455683 16 -13.358870732567226 17 -12.723161471251874
		 18 -11.59918534471282 19 -10.7163417600805 20 -9.9359038283499999 21 -9.3418705422765793
		 22 -9.6564520839995325 23 -9.6617996879603716 24 -10.51607863581448 25 -9.1458737850158887
		 26 -7.1305799260948168 27 -3.4338564675544401 28 3.097286876118333 29 9.5184781296057945
		 30 12.78486631278537 31 11.493893489529578 32 7.4984275194278602 33 3.5646507491784805
		 34 -1.3460475031785233 35 -1.9975585661650648 36 0.88461402782605969 37 1.2415088307395847
		 38 1.1530246736286891 39 0.56554867026718025 40 -2.504212637596078 41 -4.057017967340923
		 42 -5.6360377500237702 43 -4.5556899991450548 44 -4.930608412545463 45 -8.11453507503394
		 46 -10.448130353775172 47 -10.693942839532527 48 -11.423578122697887 49 -12.874837632531767
		 50 -14.290795240897349 51 -14.378393880099285 52 -12.644765087380874 53 -8.0210381447284593
		 54 7.1480883992807502 55 18.54075571154906 56 0.9135685018245614 57 -7.5813820730706434
		 58 -10.770292150165826 59 -14.133324765791242 60 -17.125899811488033 61 -19.259027803614927
		 62 -20.150507178415797 63 -19.883872678241829 64 -19.744767967645306 65 -19.993793665663986
		 66 -20.490855014727035 67 -21.062104662449688 68 -21.412310434037124 69 -21.05993370632708
		 70 -19.911023364889466 71 -18.487009806115939 72 -16.902619846787935 73 -15.168614645308875
		 74 -13.451308433103833 75 -12.063247693552219 76 -10.936804283405893 77 -9.8704137437570498
		 78 -8.7515440377941669 79 -7.7397206133541454 80 -7.0790126138762908 81 -6.7101886206318611
		 82 -6.4362214586781503 83 -6.2196823797479448 84 -6.1230274978530019 85 -6.0887004267751417
		 86 -6.1387049257878132 87 -6.336487300441985 88 -6.4086371596525229 89 -6.309716917990305
		 90 -6.1887013865128031 91 -5.75558417702692 92 -5.676464457391095 93 -6.2118438101780082
		 94 -6.5778464816533937 95 -6.5871429013462768 96 -6.5295758247121904 97 -7.8857226835557421
		 98 -9.2228482997765813 99 -9.5185846442141244 100 -9.586723473634402 101 -9.7261001426968914
		 102 -9.7627421112181043 103 -9.5607589604036392 104 -9.3727318794397672 105 -9.1987069847366847
		 106 -8.6936512009823019 107 -8.3030367217658085 108 -8.2474319369661035 109 -7.9858891946180872
		 110 -7.3825455275550222 111 -6.9163715252833251 112 -6.6815846715553509 113 -6.4289035876830463
		 114 -6.1166056039766916 115 -5.8561319954355078 116 -5.7266192245972807 117 -5.5880372502292897
		 118 -5.4089072411138721 119 -5.2646261359561741 120 -5.1914873067636904 121 -5.3609889533099393
		 122 -5.6374017420245481 123 -5.8140668979823635 124 -6.0035903150794363 125 -6.2136511425723215
		 126 -6.4804402520161295 127 -6.8919611633021098 128 -7.2310533465553473 129 -7.4790927019179225
		 130 -7.6973767337619829 131 -7.771208568922602 132 -7.7835136672725964 133 -8.0812402711957994
		 134 -8.3029039127176283 135 -7.3095753104232077 136 -5.8887842447437091;
createNode animCurveTU -n "locator8_scaleX";
	rename -uid "F3004F40-404D-C54C-71AC-51BF95E20BF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999978 1 1 2 0.99999999999999978
		 3 0.99999999999999989 4 0.99999999999999989 5 0.99999999999999989 6 1 7 1 8 0.99999999999999989
		 9 1.0000000000000002 10 1.0000000000000002 11 1 12 0.99999999999999989 13 1.0000000000000002
		 14 0.99999999999999989 15 1 16 0.99999999999999989 17 1 18 1.0000000000000002 19 0.99999999999999989
		 20 1 21 0.99999999999999989 22 0.99999999999999978 23 1 24 1 25 0.99999999999999989
		 26 0.99999999999999989 27 1 28 1 29 0.99999999999999989 30 1 31 1 32 0.99999999999999978
		 33 1 34 0.99999999999999989 35 1 36 1.0000000000000002 37 1 38 0.99999999999999989
		 39 0.99999999999999956 40 1.0000000000000002 41 0.99999999999999978 42 1 43 1.0000000000000002
		 44 1 45 1.0000000000000002 46 1 47 0.99999999999999989 48 1 49 0.99999999999999989
		 50 1 51 1 52 1 53 0.99999999999999978 54 1 55 1.0000000000000002 56 0.99999999999999978
		 57 0.99999999999999989 58 1 59 1 60 1 61 0.99999999999999978 62 1 63 1.0000000000000002
		 64 1.0000000000000002 65 1 66 1.0000000000000002 67 1.0000000000000004 68 1 69 1
		 70 0.99999999999999967 71 0.99999999999999956 72 1 73 1 74 1 75 0.99999999999999967
		 76 0.99999999999999978 77 1.0000000000000004 78 1 79 0.99999999999999989 80 1 81 0.99999999999999978
		 82 0.99999999999999978 83 1 84 0.99999999999999989 85 0.99999999999999978 86 0.99999999999999944
		 87 1 88 0.99999999999999967 89 1 90 1 91 1 92 0.99999999999999956 93 1 94 1 95 1.0000000000000002
		 96 0.99999999999999989 97 1 98 0.99999999999999989 99 0.99999999999999944 100 1 101 1
		 102 0.99999999999999989 103 0.99999999999999978 104 0.99999999999999944 105 1.0000000000000002
		 106 0.99999999999999989 107 1 108 0.99999999999999989 109 1 110 0.99999999999999989
		 111 0.99999999999999989 112 0.99999999999999989 113 0.99999999999999989 114 0.99999999999999956
		 115 0.99999999999999989 116 1 117 0.99999999999999989 118 1 119 1.0000000000000002
		 120 1 121 0.99999999999999989 122 1 123 0.99999999999999944 124 0.99999999999999956
		 125 1 126 0.99999999999999967 127 0.99999999999999989 128 1.0000000000000002 129 1
		 130 1 131 1.0000000000000002 132 0.99999999999999989 133 1 134 1 135 1 136 0.99999999999999989;
createNode animCurveTU -n "locator8_scaleY";
	rename -uid "B1FFA566-4B12-D68E-280A-B38FA258EFBD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999989 1 1.0000000000000002
		 2 0.99999999999999978 3 0.99999999999999989 4 1 5 1 6 1.0000000000000002 7 1 8 0.99999999999999989
		 9 1.0000000000000002 10 1.0000000000000002 11 1 12 1 13 1.0000000000000004 14 0.99999999999999989
		 15 1 16 0.99999999999999978 17 0.99999999999999967 18 1 19 1 20 0.99999999999999978
		 21 1 22 0.99999999999999989 23 1 24 1 25 1.0000000000000002 26 1 27 0.99999999999999989
		 28 1 29 1 30 0.99999999999999989 31 1 32 0.99999999999999989 33 1 34 0.99999999999999989
		 35 1 36 0.99999999999999989 37 1 38 0.99999999999999989 39 0.99999999999999978 40 0.99999999999999989
		 41 0.99999999999999956 42 1 43 1 44 1 45 0.99999999999999989 46 1 47 0.99999999999999989
		 48 0.99999999999999989 49 0.99999999999999978 50 0.99999999999999989 51 1.0000000000000002
		 52 0.99999999999999989 53 0.99999999999999978 54 1 55 1.0000000000000002 56 0.99999999999999989
		 57 0.99999999999999989 58 1.0000000000000002 59 0.99999999999999989 60 1 61 1 62 1.0000000000000002
		 63 1 64 1 65 0.99999999999999989 66 1.0000000000000002 67 1 68 1.0000000000000002
		 69 0.99999999999999989 70 0.99999999999999989 71 0.99999999999999989 72 1 73 0.99999999999999989
		 74 0.99999999999999967 75 0.99999999999999978 76 0.99999999999999989 77 0.99999999999999989
		 78 1 79 1 80 1 81 0.99999999999999978 82 0.99999999999999989 83 0.99999999999999989
		 84 0.99999999999999989 85 0.99999999999999989 86 0.99999999999999989 87 0.99999999999999989
		 88 0.99999999999999967 89 0.99999999999999978 90 1.0000000000000002 91 0.99999999999999989
		 92 0.99999999999999989 93 0.99999999999999989 94 0.99999999999999989 95 0.99999999999999989
		 96 1 97 0.99999999999999989 98 1.0000000000000002 99 0.99999999999999989 100 0.99999999999999978
		 101 0.99999999999999989 102 1 103 0.99999999999999978 104 0.99999999999999967 105 0.99999999999999989
		 106 0.99999999999999989 107 1 108 1 109 0.99999999999999989 110 1 111 1 112 1 113 0.99999999999999989
		 114 1 115 0.99999999999999978 116 0.99999999999999989 117 0.99999999999999989 118 0.99999999999999989
		 119 1 120 1 121 1 122 1 123 0.99999999999999967 124 0.99999999999999989 125 0.99999999999999956
		 126 0.99999999999999989 127 0.99999999999999989 128 1 129 0.99999999999999989 130 0.99999999999999989
		 131 0.99999999999999989 132 0.99999999999999989 133 1 134 0.99999999999999978 135 1
		 136 1;
createNode animCurveTU -n "locator8_scaleZ";
	rename -uid "C093DB2C-4B70-A7E4-F610-E389302D5BA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1.0000000000000002 1 1 2 1 3 1 4 1 5 0.99999999999999989
		 6 1.0000000000000002 7 0.99999999999999989 8 0.99999999999999989 9 1.0000000000000002
		 10 1.0000000000000002 11 1 12 1 13 1.0000000000000002 14 1 15 1 16 1 17 0.99999999999999989
		 18 1 19 1 20 0.99999999999999978 21 0.99999999999999989 22 0.99999999999999989 23 1
		 24 1 25 0.99999999999999989 26 1 27 0.99999999999999978 28 1.0000000000000002 29 1
		 30 1 31 1.0000000000000004 32 0.99999999999999989 33 0.99999999999999989 34 1 35 1.0000000000000002
		 36 1.0000000000000002 37 1 38 1 39 0.99999999999999978 40 1 41 0.99999999999999989
		 42 0.99999999999999978 43 1.0000000000000004 44 0.99999999999999989 45 1.0000000000000004
		 46 1.0000000000000002 47 1 48 1 49 0.99999999999999978 50 1.0000000000000002 51 1
		 52 0.99999999999999989 53 0.99999999999999978 54 1.0000000000000002 55 1 56 0.99999999999999956
		 57 0.99999999999999978 58 1 59 0.99999999999999978 60 0.99999999999999989 61 1 62 1.0000000000000004
		 63 1.0000000000000004 64 1 65 1 66 1.0000000000000004 67 1.0000000000000004 68 1
		 69 1 70 0.99999999999999978 71 0.99999999999999978 72 1.0000000000000002 73 1 74 1.0000000000000002
		 75 0.99999999999999989 76 0.99999999999999989 77 1.0000000000000002 78 0.99999999999999978
		 79 1 80 1 81 0.99999999999999978 82 0.99999999999999978 83 0.99999999999999989 84 1
		 85 1 86 0.99999999999999967 87 0.99999999999999989 88 0.99999999999999967 89 1 90 1.0000000000000002
		 91 0.99999999999999978 92 0.99999999999999967 93 1.0000000000000004 94 1.0000000000000002
		 95 1 96 1 97 0.99999999999999989 98 1.0000000000000002 99 0.99999999999999956 100 1.0000000000000004
		 101 1 102 1 103 1 104 0.99999999999999933 105 1 106 1 107 1 108 1 109 1 110 1.0000000000000002
		 111 1 112 1.0000000000000002 113 0.99999999999999989 114 0.99999999999999956 115 0.99999999999999978
		 116 1 117 0.99999999999999989 118 1.0000000000000002 119 1.0000000000000002 120 1
		 121 1 122 0.99999999999999989 123 0.99999999999999922 124 0.99999999999999944 125 0.99999999999999989
		 126 1 127 1 128 1.0000000000000004 129 0.99999999999999989 130 1 131 1 132 0.99999999999999989
		 133 1 134 0.99999999999999978 135 1 136 1;
createNode animCurveTU -n "locator9_visibility";
	rename -uid "6309BABF-48B8-4B0B-EB47-06A05D5DE54E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1
		 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1
		 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1
		 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTL -n "locator9_translateX";
	rename -uid "0C5DC59C-4046-08BC-1E06-BFBC69CA8E0F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 9.2341524586814216e-06 1 9.2341524569050648e-06
		 2 9.2341524577932432e-06 3 9.2341524582373324e-06 4 9.2341524577932432e-06 5 9.2341524577932432e-06
		 6 9.234152458070799e-06 7 9.2341524577932432e-06 8 9.2341524577932432e-06 9 9.2341524577932432e-06
		 10 9.2341524577932432e-06 11 9.2341524560168864e-06 12 9.2341524542405296e-06 13 9.2341524613459569e-06
		 14 9.2341524506878159e-06 15 9.2341524542405296e-06 16 9.2341524577932432e-06 17 9.2341524577932432e-06
		 18 9.2341524577932432e-06 19 9.2341524595696001e-06 20 9.2341524595696001e-06 21 9.2341524595696001e-06
		 22 9.2341524577932432e-06 23 9.2341524560168864e-06 24 9.2341524577932432e-06 25 9.2341524560168864e-06
		 26 9.2341524560168864e-06 27 9.2341524577932432e-06 28 9.2341524583483547e-06 29 9.2341524577932432e-06
		 30 9.2341524586814216e-06 31 9.2341524560168864e-06 32 9.2341524595696001e-06 33 9.2341524586814216e-06
		 34 9.234152457349154e-06 35 9.2341524577932432e-06 36 9.2341524613459569e-06 37 9.2341524648986706e-06
		 38 9.2341524435823885e-06 39 9.2341524577932432e-06 40 9.2341524577932432e-06 41 9.2341524862149527e-06
		 42 9.2341524577932432e-06 43 9.2341524577932432e-06 44 9.2341524577932432e-06 45 9.2341524577932432e-06
		 46 9.2341524577932432e-06 47 9.2341524435823885e-06 48 9.2341524435823885e-06 49 9.2341524720040979e-06
		 50 9.2341524577932432e-06 51 9.2341524577932432e-06 52 9.2341524720040979e-06 53 9.2341524648986706e-06
		 54 9.2341524577932432e-06 55 9.2341524506878159e-06 56 9.2341524648986706e-06 57 9.2341524577932432e-06
		 58 9.2341524533523511e-06 59 9.2341524471351022e-06 60 9.2341524577932432e-06 61 9.2341524435823885e-06
		 62 9.2341524577932432e-06 63 9.2341524720040979e-06 64 9.2341524435823885e-06 65 9.2341524293715338e-06
		 66 9.2341524293715338e-06 67 9.2341524577932432e-06 68 9.2341524577932432e-06 69 9.2341524577932432e-06
		 70 9.2341524293715338e-06 71 9.2341524293715338e-06 72 9.2341524577932432e-06 73 9.2341524577932432e-06
		 74 9.2341524862149527e-06 75 9.2341524293715338e-06 76 9.2341524862149527e-06 77 9.2341524720040979e-06
		 78 9.2341524435823885e-06 79 9.2341524577932432e-06 80 9.2341524293715338e-06 81 9.2341524577932432e-06
		 82 9.2341524577932432e-06 83 9.2341524720040979e-06 84 9.2341524577932432e-06 85 9.2341524435823885e-06
		 86 9.2341524151606791e-06 87 9.2341524435823885e-06 88 9.2341524435823885e-06 89 9.2341524435823885e-06
		 90 9.2341524435823885e-06 91 9.2341524435823885e-06 92 9.2341524577932432e-06 93 9.2341524293715338e-06
		 94 9.2341524151606791e-06 95 9.2341524293715338e-06 96 9.2341524151606791e-06 97 9.2341524435823885e-06
		 98 9.2341524577932432e-06 99 9.2341524577932432e-06 100 9.2341524577932432e-06 101 9.2341524577932432e-06
		 102 9.2341524435823885e-06 103 9.2341524577932432e-06 104 9.2341524293715338e-06
		 105 9.2341524435823885e-06 106 9.2341524577932432e-06 107 9.2341524577932432e-06
		 108 9.2341524577932432e-06 109 9.2341524577932432e-06 110 9.2341524577932432e-06
		 111 9.2341524720040979e-06 112 9.2341524577932432e-06 113 9.2341524862149527e-06
		 114 9.2341524435823885e-06 115 9.2341524577932432e-06 116 9.2341524435823885e-06
		 117 9.2341524577932432e-06 118 9.2341524293715338e-06 119 9.2341524720040979e-06
		 120 9.2341524293715338e-06 121 9.2341524293715338e-06 122 9.2341524577932432e-06
		 123 9.2341524435823885e-06 124 9.2341524293715338e-06 125 9.2341524720040979e-06
		 126 9.2341524577932432e-06 127 9.2341524435823885e-06 128 9.2341524577932432e-06
		 129 9.2341524577932432e-06 130 9.2341524435823885e-06 131 9.2341524435823885e-06
		 132 9.2341524720040979e-06 133 9.2341524577932432e-06 134 9.2341524577932432e-06
		 135 9.2341524577932432e-06 136 9.2341524577932432e-06;
createNode animCurveTL -n "locator9_translateY";
	rename -uid "3F8D27DF-49E6-3232-9DBC-16B8A6834BF3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 10.181588172912598 1 10.181588172912569
		 2 10.181588172912569 3 10.181588172912598 4 10.181588172912583 5 10.181588172912598
		 6 10.181588172912612 7 10.181588172912612 8 10.181588172912569 9 10.181588172912612
		 10 10.181588172912626 11 10.181588172912598 12 10.181588172912598 13 10.181588172912598
		 14 10.181588172912583 15 10.181588172912626 16 10.181588172912598 17 10.181588172912583
		 18 10.181588172912598 19 10.181588172912598 20 10.181588172912626 21 10.181588172912612
		 22 10.181588172912583 23 10.181588172912598 24 10.181588172912612 25 10.181588172912583
		 26 10.181588172912569 27 10.181588172912598 28 10.181588172912612 29 10.181588172912612
		 30 10.181588172912598 31 10.181588172912569 32 10.181588172912598 33 10.181588172912583
		 34 10.181588172912612 35 10.181588172912583 36 10.181588172912583 37 10.181588172912612
		 38 10.181588172912598 39 10.181588172912598 40 10.181588172912569 41 10.181588172912612
		 42 10.181588172912626 43 10.181588172912598 44 10.181588172912612 45 10.181588172912598
		 46 10.181588172912612 47 10.181588172912598 48 10.181588172912583 49 10.181588172912598
		 50 10.181588172912583 51 10.181588172912612 52 10.181588172912598 53 10.181588172912583
		 54 10.181588172912612 55 10.181588172912612 56 10.181588172912598 57 10.181588172912598
		 58 10.181588172912612 59 10.181588172912626 60 10.181588172912583 61 10.181588172912605
		 62 10.181588172912598 63 10.181588172912591 64 10.181588172912612 65 10.181588172912594
		 66 10.181588172912605 67 10.181588172912605 68 10.181588172912633 69 10.181588172912591
		 70 10.181588172912583 71 10.181588172912598 72 10.181588172912591 73 10.181588172912569
		 74 10.181588172912583 75 10.181588172912612 76 10.181588172912612 77 10.181588172912583
		 78 10.181588172912583 79 10.181588172912612 80 10.181588172912583 81 10.181588172912612
		 82 10.181588172912598 83 10.181588172912569 84 10.181588172912569 85 10.181588172912598
		 86 10.181588172912583 87 10.181588172912626 88 10.181588172912598 89 10.181588172912598
		 90 10.181588172912598 91 10.181588172912569 92 10.18158817291264 93 10.181588172912612
		 94 10.181588172912612 95 10.181588172912612 96 10.181588172912598 97 10.181588172912598
		 98 10.181588172912598 99 10.181588172912583 100 10.181588172912598 101 10.181588172912583
		 102 10.181588172912598 103 10.181588172912598 104 10.181588172912583 105 10.181588172912598
		 106 10.181588172912598 107 10.181588172912612 108 10.181588172912583 109 10.181588172912626
		 110 10.181588172912612 111 10.181588172912626 112 10.181588172912598 113 10.181588172912612
		 114 10.181588172912598 115 10.181588172912583 116 10.181588172912626 117 10.181588172912598
		 118 10.181588172912598 119 10.181588172912598 120 10.181588172912583 121 10.181588172912612
		 122 10.181588172912583 123 10.181588172912583 124 10.181588172912598 125 10.181588172912598
		 126 10.181588172912583 127 10.181588172912569 128 10.181588172912612 129 10.181588172912598
		 130 10.181588172912598 131 10.181588172912598 132 10.181588172912598 133 10.181588172912612
		 134 10.181588172912583 135 10.181588172912583 136 10.181588172912598;
createNode animCurveTL -n "locator9_translateZ";
	rename -uid "283153CC-44F4-034B-C8E0-87A76FF247A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.13152092695236028 1 0.13152092695236384
		 2 0.13152092695236206 3 0.13152092695236028 4 0.13152092695236473 5 0.1315209269523635
		 6 0.13152092695236028 7 0.13152092695236206 8 0.13152092695236206 9 0.13152092695236206
		 10 0.13152092695235851 11 0.13152092695236917 12 0.13152092695235496 13 0.13152092695236206
		 14 0.13152092695236206 15 0.13152092695236206 16 0.13152092695236206 17 0.13152092695236917
		 18 0.13152092695236206 19 0.13152092695237627 20 0.13152092695234785 21 0.13152092695234785
		 22 0.13152092695237627 23 0.13152092695234785 24 0.13152092695236206 25 0.13152092695234785
		 26 0.13152092695237627 27 0.13152092695234785 28 0.13152092695236206 29 0.13152092695236206
		 30 0.13152092695236206 31 0.13152092695234785 32 0.13152092695236206 33 0.13152092695236206
		 34 0.13152092695236206 35 0.13152092695236206 36 0.13152092695233364 37 0.13152092695239048
		 38 0.13152092695233364 39 0.13152092695237627 40 0.13152092695234785 41 0.13152092695237627
		 42 0.13152092695235496 43 0.13152092695236206 44 0.13152092695236206 45 0.13152092695237627
		 46 0.13152092695234785 47 0.13152092695236206 48 0.13152092695236206 49 0.13152092695236206
		 50 0.13152092695236206 51 0.13152092695233364 52 0.13152092695233364 53 0.13152092695233364
		 54 0.13152092695233364 55 0.13152092695239048 56 0.1315209269524189 57 0.13152092695236206
		 58 0.13152092695239048 59 0.13152092695233364 60 0.13152092695233364 61 0.13152092695236206
		 62 0.13152092695233364 63 0.13152092695239048 64 0.13152092695236206 65 0.13152092695239048
		 66 0.13152092695233364 67 0.13152092695233364 68 0.13152092695239048 69 0.1315209269524189
		 70 0.13152092695236206 71 0.13152092695236206 72 0.13152092695236206 73 0.13152092695239048
		 74 0.13152092695236206 75 0.13152092695239048 76 0.13152092695233364 77 0.13152092695236206
		 78 0.13152092695236206 79 0.13152092695236206 80 0.13152092695236206 81 0.1315209269524189
		 82 0.13152092695233364 83 0.13152092695239048 84 0.13152092695233364 85 0.13152092695239048
		 86 0.13152092695233364 87 0.13152092695230522 88 0.13152092695239048 89 0.13152092695239048
		 90 0.13152092695236206 91 0.13152092695233364 92 0.13152092695233364 93 0.13152092695233364
		 94 0.13152092695236206 95 0.13152092695236206 96 0.13152092695233364 97 0.13152092695236206
		 98 0.13152092695233364 99 0.13152092695236206 100 0.13152092695236206 101 0.13152092695233364
		 102 0.13152092695230522 103 0.13152092695239048 104 0.13152092695236206 105 0.13152092695233364
		 106 0.13152092695236206 107 0.1315209269524189 108 0.13152092695239048 109 0.1315209269524189
		 110 0.13152092695233364 111 0.13152092695236206 112 0.13152092695236206 113 0.13152092695236206
		 114 0.13152092695236206 115 0.13152092695236206 116 0.13152092695236206 117 0.13152092695233364
		 118 0.13152092695236206 119 0.13152092695233364 120 0.13152092695233364 121 0.13152092695236206
		 122 0.13152092695236206 123 0.13152092695236206 124 0.13152092695239048 125 0.13152092695239048
		 126 0.13152092695233364 127 0.13152092695236206 128 0.13152092695239048 129 0.13152092695233364
		 130 0.13152092695239048 131 0.1315209269524189 132 0.13152092695236206 133 0.13152092695236206
		 134 0.13152092695239048 135 0.13152092695236206 136 0.13152092695236206;
createNode animCurveTA -n "locator9_rotateX";
	rename -uid "42B5B02E-4BA1-D4BA-0534-ED84FFA2E4F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 5.0931086540222159 1 4.9935717582702637
		 2 4.7563619613647452 3 4.5740180015563965 4 4.5829114913940439 5 4.5797514915466317
		 6 4.4348201751708984 7 4.1597023010253906 8 3.7710628509521484 9 3.4229185581207275
		 10 3.2927036285400391 11 3.3014063835144043 12 3.2066833972930913 13 3.12923240661621
		 14 3.3333551883697519 15 3.7515494823455806 16 4.2167305946350098 17 4.7040791511535653
		 18 5.1762070655822772 19 5.5064167976379395 20 5.5496153831481907 21 5.2567996978759775
		 22 4.8875565528869638 23 4.6929631233215323 24 4.6195888519287118 25 4.6768760681152353
		 26 4.4356689453124991 27 3.9950389862060547 28 3.8371562957763681 29 4.0722188949584952
		 30 4.4125733375549334 31 4.6124429702758798 32 4.6402015686035156 33 4.6913886070251483
		 34 4.7684988975524911 35 4.7356357574462891 36 4.6332440376281738 37 4.6524639129638672
		 38 5.141740322113038 39 6.279038906097413 40 7.0882468223571786 41 6.5267434120178214
		 42 5.6954736709594727 43 5.7152366638183612 44 5.9302401542663583 45 5.7798147201538086
		 46 5.9220867156982404 47 6.3321113586425772 48 6.2622232437133807 49 5.6054706573486346
		 50 4.4346590042114258 51 3.2386188507080091 52 2.3893020153045654 53 1.5089374780654909
		 54 0.66777634620666493 55 0.3322427272796632 56 0.48027646541595476 57 0.96042299270629883
		 58 2.0643575191497807 59 3.8576743602752686 60 5.5013098716735858 61 7.1190195083618137
		 62 9.23486328125 63 11.476160049438482 64 13.461179733276365 65 15.02756977081299
		 66 15.642901420593271 67 15.62226486206055 68 15.583810806274416 69 15.679066658020023
		 70 15.458640098571776 71 14.763536453247077 72 13.872381210327148 73 12.924162864685066
		 74 11.900842666625973 75 10.886020660400391 76 9.8461008071899414 77 8.8413686752319336
		 78 7.935646057128908 79 7.1862325668334952 80 6.5884037017822266 81 5.9453711509704581
		 82 5.2294607162475595 83 4.4905271530151349 84 3.8043334484100346 85 3.3721265792846671
		 86 3.1910753250122075 87 3.0673558712005615 88 2.9129717350006104 89 2.7908015251159668
		 90 2.7906289100646968 91 2.9233219623565683 92 3.161939382553101 93 3.4422554969787589
		 94 3.7369809150695805 95 4.0356578826904288 96 4.3072872161865225 97 4.5369153022766113
		 98 4.6804771423339853 99 4.7130169868469229 100 4.6863346099853525 101 4.6519827842712402
		 102 4.6351351737976065 103 4.6216416358947754 104 4.6350541114807138 105 4.6626672744750985
		 106 4.6565799713134757 107 4.5739607810974139 108 4.4708218574523926 109 4.3798351287841797
		 110 4.2980837821960449 111 4.2385058403015146 112 4.1260809898376465 113 3.9576127529144292
		 114 3.8457593917846684 115 3.7861864566802983 116 3.7417399883270281 117 3.7075548171997075
		 118 3.6951925754547119 119 3.7014350891113277 120 3.6660175323486328 121 3.601270437240601
		 122 3.5892195701599121 123 3.5774896144866939 124 3.5309994220733638 125 3.5011498928070073
		 126 3.4816119670867924 127 3.4341063499450688 128 3.3921051025390629 129 3.389449119567872
		 130 3.3987827301025386 131 3.4110112190246573 132 3.4293880462646475 133 3.4235382080078121
		 134 3.4830710887908936 135 3.8164820671081547 136 4.1806340217590332;
createNode animCurveTA -n "locator9_rotateY";
	rename -uid "CBC93A04-459D-82B7-2639-439DEE64F251";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 3.8947541713714595 1 4.4034123420715323
		 2 4.7107329368591317 3 4.7130455970764151 4 4.5273189544677743 5 4.308304786682128
		 6 4.0760712623596183 7 4.0477943420410156 8 4.3223643302917472 9 4.6154451370239258
		 10 4.7236056327819833 11 4.6490612030029297 12 4.5294203758239764 13 4.144659996032714
		 14 3.4127230644226079 15 2.5543446540832515 16 1.5539489984512331 17 0.41976666450500494
		 18 -0.4280859231948852 19 -0.91649758815765403 20 -1.2777554988861084 21 -1.589712977409363
		 22 -1.9060233831405644 23 -2.1911249160766597 24 -2.4469261169433598 25 -2.5230393409729008
		 26 -2.7235894203186031 27 -3.0707204341888428 28 -2.9556398391723646 29 -2.3887648582458492
		 30 -2.235915184020997 31 -2.0724215507507329 32 -1.2531218528747559 33 -0.31159231066703796
		 34 0.46930494904518133 35 0.4433387517929076 36 -0.95863306522369385 37 -2.6818401813507076
		 38 -4.115912914276123 39 -5.0437726974487314 40 -5.3749046325683585 41 -5.9805021286010742
		 42 -6.8539586067199725 43 -6.9118690490722665 44 -6.9747214317321795 45 -7.4903588294982919
		 46 -7.2736840248107892 47 -6.1023559570312491 48 -5.020909309387207 49 -3.974216222763062
		 50 -2.966224193572998 51 -1.9621767997741704 52 -1.3088783025741577 53 -0.9632498025894165
		 54 -0.53330701589584351 55 -0.026754748076200482 56 0.51720786094665527 57 1.2809258699417112
		 58 2.5722262859344478 59 4.2814326286315918 60 5.7630748748779297 61 6.6911020278930655
		 62 6.1447710990905753 63 5.0142297744750968 64 4.3795981407165527 65 3.6515984535217285
		 66 2.4467632770538343 67 1.5595608949661255 68 1.2385989427566528 69 1.0282344818115239
		 70 0.71276283264160167 71 0.44466286897659307 72 0.32323279976844782 73 0.40169572830200212
		 74 0.58403956890106179 75 0.67927277088165283 76 0.79144167900085483 77 0.93184220790863037
		 78 1.026990652084351 79 1.2003024816513064 80 1.4229260683059697 81 1.606819152832031
		 82 1.6922386884689331 83 1.5712872743606565 84 1.2688096761703493 85 0.90770435333251942
		 86 0.79858070611953769 87 1.1164340972900391 88 1.5008260011672978 89 1.627225875854492
		 90 1.5101050138473509 91 1.311247706413269 92 1.1406890153884888 93 1.0023659467697146
		 94 0.84398239850997925 95 0.70932620763778687 96 0.67746096849441517 97 0.66316926479339611
		 98 0.58798521757125877 99 0.51240736246109009 100 0.44018566608428961 101 0.3689287006855011
		 102 0.29643455147743225 103 0.27302235364913946 104 0.34925150871276861 105 0.35047170519828802
		 106 0.27898722887039179 107 0.30670675635337824 108 0.35735064744949341 109 0.33281990885734553
		 110 0.39547392725944525 111 0.54057866334915161 112 0.59317749738693248 113 0.63475382328033447
		 114 0.67603290081024137 115 0.66790825128555287 116 0.64235126972198509 117 0.62395501136779796
		 118 0.61775690317153942 119 0.58228254318237282 120 0.48017859458923351 121 0.3980265855789184
		 122 0.37748649716377247 123 0.32418996095657354 124 0.25730273127555847 125 0.29326674342155462
		 126 0.37450745701789862 127 0.42349699139595037 128 0.45807480812072754 129 0.47315314412117021
		 130 0.50062286853790272 131 0.54033368825912464 132 0.576499342918396 133 0.63376903533935536
		 134 0.66782265901565552 135 0.54785656929016113 136 0.37661835551261907;
createNode animCurveTA -n "locator9_rotateZ";
	rename -uid "805C4C2B-485A-E713-B5BC-A18DA3291E27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.41104915738105779 1 -0.05031950399279591
		 2 -0.30417233705520624 3 -0.63611990213394154 4 -1.0935865640640259 5 -1.0805957317352293
		 6 -0.97720032930374146 7 -1.1328575611114502 8 -1.5036687850952151 9 -2.2533249855041508
		 10 -2.8307213783264173 11 -3.2555711269378662 12 -3.7155382633209237 13 -3.9293355941772452
		 14 -3.825768470764161 15 -3.6950857639312735 16 -3.604597806930542 17 -3.4135408401489267
		 18 -3.174191951751709 19 -2.9857516288757329 20 -2.8447160720825191 21 -2.7651081085205087
		 22 -2.5005590915679932 23 -2.223075151443481 24 -2.3588368892669687 25 -2.1210842132568364
		 26 -1.7249640226364138 27 -0.83112168312072776 28 0.39320459961891191 29 1.464287996292114
		 30 2.415735244750977 31 2.9226529598236088 32 2.7751841545104989 33 2.6691794395446773
		 34 2.7551956176757813 35 2.6863536834716792 36 2.5835218429565434 37 2.6473677158355713
		 38 2.2885601520538335 39 1.5039283037185671 40 -0.54357218742370594 41 -5.0626316070556641
		 42 -6.4213027954101554 43 -4.268437385559082 44 -3.6285791397094735 45 -6.1881361007690439
		 46 -8.2658185958862287 47 -6.5965414047241202 48 -4.2075333595275888 49 -3.0237991809844984
		 50 -2.5251028537750244 51 -1.5672245025634768 52 -0.81060749292373668 53 -0.19474557042121884
		 54 -0.096981137990951552 55 -0.83955317735671997 56 -1.9385266304016111 57 -2.1508285999298096
		 58 -1.4982700347900393 59 -1.4408897161483767 60 -0.74350619316101108 61 -1.2301079034805298
		 62 -2.7822079658508296 63 -2.8166208267211919 64 -2.7699608802795406 65 -3.4285495281219482
		 66 -3.7339007854461674 67 -3.5050683021545415 68 -3.3076779842376705 69 -3.1043188571929936
		 70 -2.5280547142028804 71 -1.814308762550354 72 -1.2740786075592041 73 -0.94861125946044966
		 74 -0.65719515085220326 75 -0.19573058187961578 76 0.21009723842144018 77 0.55430501699447632
		 78 0.96843916177749645 79 1.3869194984436035 80 1.7588729858398438 81 2.0839903354644775
		 82 2.1986782550811772 83 2.2708091735839844 84 2.6237947940826425 85 3.0378713607788077
		 86 3.2614769935607919 87 3.3279042243957528 88 3.4127671718597408 89 3.5239641666412349
		 90 3.6688621044158927 91 3.8592031002044682 92 3.9976153373718271 93 4.111474037170411
		 94 4.2209525108337411 95 4.2242326736450204 96 4.0993175506591788 97 4.0281181335449228
		 98 4.0424485206604022 99 3.9904129505157475 100 3.8809540271759038 101 3.7580931186676025
		 102 3.6857149600982662 103 3.6382567882537837 104 3.5260868072509775 105 3.365860223770142
		 106 3.0506718158721928 107 2.8419735431671147 108 2.862948179244996 109 2.8401219844818115
		 110 2.723186731338501 111 2.6050348281860356 112 2.5180699825286865 113 2.3927891254425049
		 114 2.3015732765197749 115 2.3013725280761714 116 2.3337385654449467 117 2.3537619113922119
		 118 2.3740417957305908 119 2.4693043231964111 120 2.7259657382965092 121 2.9840142726898193
		 122 3.0385475158691397 123 3.0948247909545903 124 3.1711270809173588 125 3.2185292243957528
		 126 3.3489573001861572 127 3.5711739063262939 128 3.7082686424255371 129 3.7280929088592538
		 130 3.7321043014526354 131 3.7091195583343493 132 3.6155924797058097 133 3.4868905544280993
		 134 3.4259021282196049 135 3.4746668338775635 136 3.5128610134124751;
createNode animCurveTU -n "locator9_scaleX";
	rename -uid "10BDE906-49A5-ED79-83ED-18A1A2DC0310";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999989 1 1.0000000000000002
		 2 0.99999999999999989 3 0.99999999999999989 4 1 5 1 6 0.99999999999999989 7 1 8 0.99999999999999989
		 9 1 10 1.0000000000000002 11 1 12 0.99999999999999989 13 1 14 1 15 1 16 1 17 0.99999999999999989
		 18 1 19 0.99999999999999989 20 0.99999999999999978 21 0.99999999999999989 22 0.99999999999999989
		 23 1 24 1 25 0.99999999999999989 26 1 27 0.99999999999999989 28 1 29 1 30 1 31 1
		 32 0.99999999999999989 33 1 34 0.99999999999999989 35 0.99999999999999989 36 1 37 1
		 38 1 39 0.99999999999999967 40 1.0000000000000002 41 0.99999999999999978 42 0.99999999999999989
		 43 1.0000000000000002 44 1.0000000000000002 45 1.0000000000000002 46 1 47 0.99999999999999989
		 48 1 49 0.99999999999999989 50 1 51 1 52 0.99999999999999989 53 0.99999999999999978
		 54 1 55 1 56 0.99999999999999978 57 0.99999999999999989 58 0.99999999999999989 59 1
		 60 1 61 0.99999999999999978 62 1 63 1.0000000000000004 64 1 65 1.0000000000000002
		 66 1.0000000000000002 67 1.0000000000000002 68 1 69 1 70 0.99999999999999978 71 0.99999999999999978
		 72 1 73 1 74 1 75 0.99999999999999989 76 1 77 1.0000000000000002 78 0.99999999999999989
		 79 0.99999999999999989 80 1 81 0.99999999999999989 82 0.99999999999999978 83 1 84 0.99999999999999989
		 85 1 86 0.99999999999999956 87 1 88 0.99999999999999978 89 0.99999999999999978 90 1
		 91 0.99999999999999989 92 0.99999999999999956 93 1 94 1 95 1 96 1 97 0.99999999999999989
		 98 1 99 0.99999999999999967 100 1 101 1 102 1 103 0.99999999999999989 104 0.99999999999999944
		 105 1 106 1 107 1 108 0.99999999999999989 109 1 110 1 111 0.99999999999999989 112 0.99999999999999989
		 113 1 114 0.99999999999999944 115 1 116 1 117 1 118 1 119 1.0000000000000002 120 1
		 121 0.99999999999999989 122 0.99999999999999989 123 0.99999999999999956 124 0.99999999999999956
		 125 0.99999999999999989 126 0.99999999999999989 127 0.99999999999999989 128 1.0000000000000002
		 129 0.99999999999999989 130 1.0000000000000002 131 1.0000000000000002 132 0.99999999999999989
		 133 1 134 0.99999999999999989 135 1 136 0.99999999999999989;
createNode animCurveTU -n "locator9_scaleY";
	rename -uid "94059911-4F72-15AA-F073-44A25DF05AD9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999989 1 1 2 1 3 0.99999999999999989
		 4 1 5 0.99999999999999989 6 1.0000000000000002 7 1 8 0.99999999999999989 9 1.0000000000000002
		 10 1.0000000000000002 11 1 12 1 13 1.0000000000000002 14 1 15 1 16 0.99999999999999989
		 17 0.99999999999999967 18 1.0000000000000002 19 1 20 0.99999999999999978 21 1 22 0.99999999999999978
		 23 1 24 1 25 1.0000000000000002 26 1 27 0.99999999999999989 28 1 29 1 30 1 31 0.99999999999999989
		 32 1 33 1 34 0.99999999999999989 35 1 36 1 37 1 38 0.99999999999999978 39 0.99999999999999978
		 40 0.99999999999999989 41 0.99999999999999967 42 1 43 1 44 1 45 0.99999999999999989
		 46 1 47 0.99999999999999989 48 0.99999999999999989 49 0.99999999999999989 50 1 51 1
		 52 0.99999999999999989 53 0.99999999999999978 54 0.99999999999999989 55 1 56 0.99999999999999989
		 57 0.99999999999999989 58 1 59 1 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 0.99999999999999989
		 68 1.0000000000000002 69 1 70 1 71 0.99999999999999989 72 1 73 0.99999999999999989
		 74 0.99999999999999989 75 0.99999999999999978 76 0.99999999999999989 77 0.99999999999999989
		 78 0.99999999999999989 79 1.0000000000000002 80 1 81 0.99999999999999978 82 0.99999999999999989
		 83 0.99999999999999978 84 0.99999999999999989 85 0.99999999999999989 86 0.99999999999999989
		 87 0.99999999999999989 88 0.99999999999999978 89 0.99999999999999978 90 1 91 0.99999999999999989
		 92 1 93 0.99999999999999989 94 1 95 0.99999999999999989 96 1 97 1 98 1 99 0.99999999999999967
		 100 0.99999999999999978 101 0.99999999999999989 102 1.0000000000000002 103 0.99999999999999978
		 104 0.99999999999999978 105 0.99999999999999989 106 0.99999999999999989 107 1 108 0.99999999999999989
		 109 1 110 1 111 1 112 1 113 1 114 1 115 0.99999999999999978 116 1 117 0.99999999999999978
		 118 1 119 0.99999999999999989 120 0.99999999999999989 121 1 122 1 123 0.99999999999999978
		 124 0.99999999999999989 125 0.99999999999999978 126 1 127 0.99999999999999989 128 1.0000000000000002
		 129 1 130 1 131 0.99999999999999989 132 0.99999999999999989 133 1.0000000000000002
		 134 0.99999999999999978 135 1 136 1;
createNode animCurveTU -n "locator9_scaleZ";
	rename -uid "1EFB0981-4143-75BD-1E99-4692FD32C607";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1.0000000000000002 3 1 4 1 5 0.99999999999999989
		 6 1 7 1 8 0.99999999999999989 9 1.0000000000000002 10 1.0000000000000002 11 0.99999999999999989
		 12 1 13 1 14 1 15 1 16 1 17 0.99999999999999989 18 1 19 1 20 0.99999999999999978
		 21 0.99999999999999978 22 1 23 1 24 1 25 0.99999999999999989 26 1 27 0.99999999999999978
		 28 1 29 1 30 1 31 0.99999999999999989 32 1 33 1 34 1 35 1.0000000000000002 36 1 37 1
		 38 1 39 0.99999999999999978 40 0.99999999999999989 41 1 42 0.99999999999999989 43 1.0000000000000002
		 44 0.99999999999999989 45 1.0000000000000004 46 1 47 0.99999999999999989 48 1 49 0.99999999999999989
		 50 1.0000000000000002 51 1 52 0.99999999999999989 53 1 54 1 55 1 56 0.99999999999999978
		 57 0.99999999999999978 58 0.99999999999999978 59 1 60 0.99999999999999989 61 0.99999999999999989
		 62 1.0000000000000002 63 1.0000000000000004 64 1 65 1.0000000000000002 66 1.0000000000000002
		 67 1.0000000000000002 68 1 69 1 70 0.99999999999999978 71 0.99999999999999978 72 1
		 73 1 74 1 75 0.99999999999999989 76 0.99999999999999989 77 1 78 0.99999999999999989
		 79 1 80 1 81 0.99999999999999978 82 0.99999999999999978 83 0.99999999999999978 84 1
		 85 1 86 0.99999999999999956 87 0.99999999999999989 88 0.99999999999999978 89 1 90 1.0000000000000002
		 91 0.99999999999999978 92 0.99999999999999967 93 1.0000000000000002 94 1 95 1 96 0.99999999999999989
		 97 1 98 1.0000000000000002 99 0.99999999999999956 100 1.0000000000000002 101 1 102 1.0000000000000002
		 103 0.99999999999999978 104 0.99999999999999933 105 1 106 0.99999999999999978 107 1
		 108 1 109 1 110 1 111 1 112 1.0000000000000002 113 0.99999999999999989 114 0.99999999999999944
		 115 0.99999999999999978 116 1 117 0.99999999999999989 118 1.0000000000000002 119 1.0000000000000002
		 120 1 121 1 122 0.99999999999999989 123 0.99999999999999933 124 0.99999999999999933
		 125 0.99999999999999989 126 1 127 0.99999999999999978 128 1.0000000000000004 129 1
		 130 1.0000000000000002 131 1 132 0.99999999999999989 133 1 134 0.99999999999999978
		 135 0.99999999999999989 136 0.99999999999999978;
createNode animCurveTU -n "locator10_visibility";
	rename -uid "2A9D7B18-4C57-EA05-1E05-EC92953C8BB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1
		 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1
		 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1
		 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTL -n "locator10_translateX";
	rename -uid "4064F351-40F2-246C-A7AA-80BDF9362AD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -0.079589631649271908 1 -0.00025173758544116964
		 2 0.040554093408314174 3 0.096589653769204364 4 0.17822200005283362 5 0.1766144185108669
		 6 0.15728211699168809 7 0.18145191850037845 8 0.24048984330868084 9 0.36619143434656287
		 10 0.46545700054833716 11 0.5411082261553819 12 0.62175634901148769 13 0.66133644907661449
		 14 0.65102970378340785 15 0.63761017626132244 16 0.62992615293056531 17 0.60201894650651155
		 18 0.56171971135123044 19 0.52826788582907902 20 0.50336849098497716 21 0.49084381346361816
		 22 0.44664949435070511 23 0.39960266559223534 24 0.42490210511892812 25 0.38270202796674546
		 26 0.31531190239495643 27 0.1627759519297074 28 -0.052800415358738362 29 -0.24706853051521893
		 30 -0.41833919166272882 31 -0.50981921009811693 32 -0.48655149408699927 33 -0.47086825357922502
		 34 -0.4883121188767261 35 -0.4761209741490795 36 -0.45360880003243764 37 -0.45955282252971585
		 38 -0.3979303284459732 39 -0.27541547069495209 40 0.072589454973083889 41 0.87833361166602231
		 42 1.1326947506609315 43 0.75320292551691637 44 0.63568620778448803 45 1.0897194545778461
		 46 1.4511473151050325 47 1.1515817783667188 48 0.73425061282608794 49 0.53529975452784129
		 50 0.45761324002970127 51 0.29159801339537239 52 0.15636654240189785 53 0.046715189423608194
		 54 0.025316541250340663 55 0.14827920429715391 56 0.33311028847362678 57 0.3604421194073808
		 58 0.23585585898890127 59 0.23079007929310791 60 0.12853446473231145 61 0.24735952009569928
		 62 0.55830518068721346 63 0.58489959181240181 64 0.58997523975271804 65 0.7026992291580143
		 66 0.72469455697964236 67 0.65776519441340042 68 0.61358226529432613 69 0.57196124649667013
		 70 0.46186573676774856 71 0.32921513319070073 72 0.23116662429205803 73 0.17539563732270835
		 74 0.12676049784298016 75 0.045406590422601312 76 -0.026851278660615208 77 -0.08874821177776937
		 78 -0.16393611054910195 79 -0.23954127348896748 80 -0.30692619951935285 81 -0.36709347811860482
		 82 -0.39101852952123295 83 -0.40710860456117359 84 -0.47090191006884652 85 -0.54298982277165919
		 86 -0.58204003487328748 87 -0.59655121107185494 88 -0.61523304331896611 89 -0.63645698572476306
		 90 -0.66096122670164448 91 -0.69228724195683355 92 -0.71453557288036507 93 -0.7328167827865002
		 94 -0.75040094082579856 95 -0.74964800078579685 96 -0.72698723381901686 97 -0.71396416993492551
		 98 -0.71600313622546707 99 -0.70655013390629051 100 -0.68705875189661469 101 -0.66519854686177382
		 102 -0.65221232658544182 103 -0.64377180223615937 104 -0.62421022672732818 105 -0.59590869152354742
		 106 -0.54004534906813717 107 -0.50334214884968276 108 -0.50731251293679236 109 -0.50326700996276941
		 110 -0.48294881730663519 111 -0.46278239554732181 112 -0.4478373934527724 113 -0.42620162427772357
		 114 -0.41051700158351423 115 -0.41054486732303985 116 -0.41619014228786 117 -0.41967439103299853
		 118 -0.4232387292306754 119 -0.43983566042426503 120 -0.48457627987372121 121 -0.52967938825833016
		 122 -0.53918320639728279 123 -0.54878136458951587 124 -0.56183563434944972 125 -0.57045261242190293
		 126 -0.59402196230372795 127 -0.63359272968207847 128 -0.65804894427685667 129 -0.66165306684030156
		 130 -0.66254304881512383 131 -0.65875263359592395 132 -0.64248578491068997 133 -0.62018977695475996
		 134 -0.60956923743877667 135 -0.61692739074712222 136 -0.62238192774962897;
createNode animCurveTL -n "locator10_translateY";
	rename -uid "5C65C3C7-4E22-C1EE-E596-1E9E878D8892";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 20.313763049215538 1 20.313885525712337
		 2 20.313228161547414 3 20.312288261409648 4 20.311209838821597 5 20.311226384272388
		 6 20.311027168815741 7 20.309464445270862 8 20.306205738132618 9 20.300231210287336
		 10 20.295230529515678 11 20.291526784688756 12 20.286182203199232 13 20.283063794887937
		 14 20.285249173977391 15 20.288835070350558 16 20.29173035941912 17 20.295248054994317
		 18 20.298628791279214 19 20.300764201450036 20 20.302052040248 21 20.302427641192921
		 22 20.303795176384909 23 20.305234985695861 24 20.303976301829707 25 20.305839885287611
		 26 20.307336823170459 27 20.308968158759129 28 20.309286029287691 29 20.307645912840286
		 30 20.303512748662428 31 20.300029902310371 32 20.301263347821703 33 20.302163027379933
		 34 20.301559955414064 35 20.302047828073171 36 20.302771029780857 37 20.302566790880391
		 38 20.306341013298493 39 20.310268196934743 40 20.311238821022371 41 20.275315967294617
		 42 20.251076706187135 43 20.286548823992149 44 20.294520341569296 45 20.255800160330878
		 46 20.210038340732453 47 20.248258331596475 48 20.287405082667746 49 20.300429040328254
		 50 20.301901525538781 51 20.301285831881216 52 20.296796118158014 53 20.287796490121295
		 54 20.27599023102853 55 20.269583733357479 56 20.267578611737846 57 20.273981113442716
		 58 20.291836170998479 59 20.30692376223071 60 20.313726054213276 61 20.308358942228161
		 62 20.279760349221206 63 20.245984323439444 64 20.204198787704421 65 20.155517904460236
		 66 20.135351412194034 67 20.140463205830933 68 20.14441583553451 69 20.143951133590186
		 70 20.156344805677243 71 20.181767805238515 72 20.208219044289322 73 20.23190981917422
		 74 20.253898446762463 75 20.272497471880243 76 20.287625830980176 77 20.298662220624507
		 78 20.305324869191907 79 20.308195862277998 80 20.308627285502993 81 20.307813178492069
		 82 20.306739121226585 83 20.304261537630197 84 20.298271395370108 85 20.291879582061256
		 86 20.288370888992191 87 20.286555913452503 88 20.284161696323849 89 20.281785360330417
		 90 20.280208404489514 91 20.279260121758512 92 20.279645854276438 93 20.280386160633398
		 94 20.280989371115297 95 20.282691643259696 96 20.285605614995234 97 20.287419399282669
		 98 20.287745667332473 99 20.288508718331073 100 20.289772476894797 101 20.29112842981948
		 102 20.29192113412482 103 20.292418699839814 104 20.29368838626749 105 20.295482711584725
		 106 20.298600457825685 107 20.300224140805128 108 20.299660687478493 109 20.299513267259201
		 110 20.300167753099998 111 20.300852618433396 112 20.301009088554622 113 20.30109725732035
		 114 20.30113554859355 115 20.300793639728454 116 20.30030158588157 117 20.299952440789184
		 118 20.299728866699979 119 20.299058873066429 120 20.296797365389949 121 20.29412862322728
		 122 20.293549112405657 123 20.292957096418633 124 20.291936306581363 125 20.291255260220268
		 126 20.289766392791762 127 20.287038623862799 128 20.285182718735868 129 20.284928662739304
		 130 20.284936038088972 131 20.285269570070568 132 20.286444843806137 133 20.287797417833971
		 134 20.28885126846869 135 20.290484912884992 136 20.292030175417239;
createNode animCurveTL -n "locator10_translateZ";
	rename -uid "84DB3DB3-4D3C-A305-3916-16B0B6DAD333";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.030056206867820734 1 0.012571024959036947
		 2 -0.029183920289593601 3 -0.061317690332419517 4 -0.059800552396898077 5 -0.060414240905834027
		 6 -0.086032885802135084 7 -0.13456093440369798 8 -0.20297425612331033 9 -0.26417146783483147
		 10 -0.28704263133351304 11 -0.28555453362326588 12 -0.30230945592040115 13 -0.31617915824094212
		 14 -0.28055372226472741 15 -0.20704071543542568 16 -0.12504960312068647 17 -0.038969215417779424
		 18 0.044519438638580766 19 0.10291859758243049 20 0.11055997841575049 21 0.058797712672074454
		 22 -0.0064524388449456183 23 -0.040813319258418801 24 -0.053744851332126586 25 -0.043614114880355714
		 26 -0.086188264500833611 27 -0.16391165537923769 28 -0.19181491043266874 29 -0.15044718951040181
		 30 -0.090349013087163144 31 -0.055055381989689067 32 -0.050225613335214803 33 -0.041215286720770905
		 34 -0.02757706295734863 35 -0.033388702399633985 36 -0.051473744396105303 37 -0.04790405330544445
		 38 0.038661794605857835 39 0.2391359620449407 40 0.38153822962965478 41 0.28253183261583459
		 42 0.13631590226670198 43 0.13978508245405408 44 0.17752668949178485 45 0.15109797733470032
		 46 0.17606634654801212 47 0.24827444732301274 48 0.23617739924929992 49 0.1204596630660717
		 50 -0.08632078462926529 51 -0.29777392245591727 52 -0.44789205999623505 53 -0.60330612465051559
		 54 -0.7516582293666545 55 -0.81079557043133832 56 -0.78468830045116533 57 -0.69991858498357828
		 58 -0.50476562767306632 59 -0.18772536989069977 60 0.1021608816594437 61 0.38633539793687532
		 62 0.75827696126970068 63 1.1530062120253319 64 1.5014900395026416 65 1.7760729248875862
		 66 1.8850965175820988 67 1.8824532409784922 68 1.8759956023762641 69 1.8927119807958661
		 70 1.8544595448238681 71 1.7332792077475858 72 1.5774941020086715 73 1.4113151327181583
		 74 1.2315657702631313 75 1.0529803090716996 76 0.8696809092155604 77 0.69235389829910332
		 78 0.53236506274777184 79 0.3999069415243639 80 0.29421156732450982 81 0.18052631302117561
		 82 0.05396865595830036 83 -0.076656424075679297 84 -0.1979666502610371 85 -0.27438354348100802
		 86 -0.30638382436310962 87 -0.32819789002789435 88 -0.35539173146321446 89 -0.37693390789146974
		 90 -0.37699284976125114 91 -0.35360338237481415 92 -0.31148649447015941 93 -0.2619813283741621
		 94 -0.20991545054005201 95 -0.15713371841127355 96 -0.10911668126956897 97 -0.068519057108545667
		 98 -0.043138101703789289 99 -0.037386565036968022 100 -0.04210640994364212 101 -0.048182147313497126
		 102 -0.05116252051260517 103 -0.053548859310382113 104 -0.051175905450350001 105 -0.046293243798999129
		 106 -0.047370847324174292 107 -0.06197927290608618 108 -0.080214822885494641 109 -0.096302689348021886
		 110 -0.11075493397700598 111 -0.12128291388592061 112 -0.14115566363341259 113 -0.17093400785481094
		 114 -0.19070246444695726 115 -0.20123249973056545 116 -0.20908990390293525 117 -0.21513306502339447
		 118 -0.21731836994450759 119 -0.21621732674802274 120 -0.22248283695577697 121 -0.23393002308290534
		 122 -0.23606071440693199 123 -0.23813589272211289 124 -0.24635438661275089 125 -0.25162846721985943
		 126 -0.25507809741378651 127 -0.26347088012582276 128 -0.27089115071950687 129 -0.27135962472115693
		 130 -0.26970865871444971 131 -0.26754525699209353 132 -0.26429544969349195 133 -0.2653249843678509
		 134 -0.25480224996761081 135 -0.19588508135586835 136 -0.131520036435262;
createNode animCurveTA -n "locator10_rotateX";
	rename -uid "44901955-41B8-884A-6592-0FA0E36B167D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 7.9056313137783674 1 7.6785857663244865
		 2 7.2035217959351145 3 6.8179354900577511 4 6.76595259743935 5 6.7064890918249036
		 6 6.4043634323871315 7 5.8531802068581316 8 5.0727352390088374 9 4.3580095469325704
		 10 4.0908074604605931 11 4.1493693940483363 12 4.0404234462419293 13 3.9633100024819465
		 14 4.3971788518603381 15 5.2049476794548317 16 6.1321119687109702 17 7.1201452638724438
		 18 8.00865795265012 19 8.5845995165055271 20 8.6380331898338749 21 8.0778366239666131
		 22 7.3840260649925202 23 6.9955193414128418 24 6.809476514561263 25 6.8799597516772462
		 26 6.4239371767986118 27 5.6353481486928931 28 5.39398353592793 29 5.8645200840824314
		 30 6.4854480691652663 31 6.8392192401058622 32 6.905299394260461 33 7.0344491556371453
		 34 7.2392369551297984 35 7.2464361669492092 36 7.1749061758424677 37 7.3471627591960669
		 38 8.266086948026695 39 10.412455960269707 40 12.088299773466284 41 11.190117762160769
		 42 9.6748700052815479 43 9.6978405795414613 44 10.001606847682712 45 9.6133609007057945
		 46 9.7965492800875005 47 10.59399672197115 48 10.535404745140571 49 9.4108533208053391
		 50 7.3857407782684357 51 5.3885405945443718 52 3.9953186938535956 53 2.5108530656348882
		 54 1.100557056890753 55 0.56520269302515058 56 0.86130272504896166 57 1.7039581246635724
		 58 3.6044921835303989 59 6.7124351616107525 60 9.5505909238834228 61 12.258077672929955
		 62 15.741614514239901 63 19.573938065756867 64 23.037867103855817 65 25.741043423298425
		 66 26.784721971938136 67 26.742208577969055 68 26.707512111274507 69 26.933005819956314
		 70 26.600338641566577 71 25.425353978007369 72 23.890992722003471 73 22.243181767123254
		 74 20.456385527387734 75 18.659181693099093 76 16.791738729261709 77 14.986852444116165
		 78 13.361099080197102 79 12.008266057850962 80 10.941569136066891 81 9.8331198207412438
		 82 8.5776514137830357 83 7.2789684924337568 84 6.1360185156737606 85 5.4179463986678345
		 86 5.0819659790557958 87 4.8520514348834602 88 4.5753800178611499 89 4.3437166849264992
		 90 4.3335776637234904 91 4.5613684781678367 92 4.9384635242919925 93 5.3692201856284196
		 94 5.8378284990323861 95 6.3198095106251175 96 6.7654492736662641 97 7.139510199308182
		 98 7.3600505024993241 99 7.4010995413944158 100 7.3363275406119026 101 7.261441080279659
		 102 7.227857734263595 103 7.1910302741981571 104 7.1972563092989983 105 7.2267393766725219
		 106 7.1945909384470887 107 7.0405694613330265 108 6.8592332974811683 109 6.6949643861429822
		 110 6.5456798230570596 111 6.4370392397896703 112 6.245343403587877 113 5.9633719707636219
		 114 5.7724508125018632 115 5.6657320676601799 116 5.5876923735311967 117 5.5360336108483352
		 118 5.5250172458813411 119 5.5386991860648482 120 5.4759120037238818 121 5.3738861007551133
		 122 5.3706963064466473 123 5.3570682708259305 124 5.2688651983751207 125 5.2155230876857575
		 126 5.1953406714770747 127 5.1447730872272528 128 5.1019119534211113 129 5.1007348683689102
		 130 5.1057847567624215 131 5.1220605544136317 132 5.154218415490071 133 5.1353855047653969
		 134 5.2319169396851981 135 5.8184100325592567 136 6.4586670521671961;
createNode animCurveTA -n "locator10_rotateY";
	rename -uid "C93DA469-46AD-F2DC-3385-979522FC8E3D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 6.9870391168127606 1 7.9359602281128305
		 2 8.5216785934032337 3 8.6272483208516704 4 8.4666417427049865 5 8.1674474754512865
		 6 7.8303468438833201 7 7.8936229897016768 8 8.465636556952818 9 8.9901315361058831
		 10 9.1296082358676944 11 9.0397073485664148 12 8.8195931214493193 13 8.0350315575989164
		 14 6.6129730292982254 15 4.9543646539470689 16 3.0327983303182808 17 0.88832087456474318
		 18 -0.73484920300080725 19 -1.7198614354023585 20 -2.4681923376806831 21 -3.0904144698634761
		 22 -3.7206185907661533 23 -4.3276297300211297 24 -4.796561632074309 25 -4.98162502004008
		 26 -5.4165168298849045 27 -6.1538350566583917 28 -5.9133021303196802 29 -4.7336213839848318
		 30 -4.3043600492410103 31 -3.8452397956082982 32 -2.2740305427488665 33 -0.52825606173118966
		 34 0.93017616951261939 35 0.92422378702970476 36 -1.5653922852655415 37 -4.6382636076617869
		 38 -7.1895496481307717 39 -8.8843182810841856 40 -9.4583391147294016 41 -9.9273879601812069
		 42 -10.969030243874366 43 -11.497978625020091 44 -11.844960172934314 45 -12.105846374621583
		 46 -11.344007606546029 47 -9.8182941189561799 48 -8.3912293989444233 49 -6.6884666713479337
		 50 -4.9574171975314583 51 -3.3728677924273098 52 -2.3934378258077 53 -1.8122951922552268
		 54 -1.021831372880925 55 -0.177187379257776 56 0.68043119768501725 57 2.2267276176218398
		 58 4.9309550038576369 59 8.2083435539187164 60 10.897344781410542 61 12.448870500931182
		 62 11.644083636437236 63 9.6762139906226174 64 8.5710960076316631 65 7.4486987721887488
		 66 5.4625556801449804 67 3.9184894087961681 68 3.3356025975914965 69 2.8776264516169161
		 70 2.1141587022428325 71 1.4230175498665836 72 1.0582752401403666 73 1.1107963267222372
		 74 1.3701693092134488 75 1.4617890119627572 76 1.6032333391615068 77 1.8140456590846128
		 78 1.9492856794126918 79 2.2333404452253918 80 2.6170123003621382 81 2.9479801798657346
		 82 3.1378018302551554 83 2.9796740307893512 84 2.4788226276783409 85 1.8616384182697008
		 86 1.6915056368863948 87 2.271468106085639 88 2.9635946815477903 89 3.1989306789315317
		 90 3.0033729261832325 91 2.656942589504375 92 2.355697326190755 93 2.1064302158264776
		 94 1.8170783834799407 95 1.5681855774018771 96 1.4986148818350205 97 1.4583438365586743
		 98 1.3124055217694501 99 1.1718062490833283 100 1.0411587925438237 101 0.91547636255611942
		 102 0.78749991259828533 103 0.74591292304368217 104 0.88329922498993307 105 0.89267404647900339
		 106 0.77994424931877948 107 0.83344025935157318 108 0.91832057628824393 109 0.87518327257129769
		 110 0.98717781377572955 111 1.2411052543148271 112 1.3304270964396545 113 1.4013200900694065
		 114 1.470766717140948 115 1.4505062227045193 116 1.3993194352502363 117 1.3627852272679175
		 118 1.3494706693410157 119 1.2852403684473492 120 1.1037322179637765 121 0.94774777168414681
		 122 0.89005990497648158 123 0.78840635412391813 124 0.67439250584343913 125 0.73431543711298097
		 126 0.87146530393440869 127 0.95343794363862522 128 1.0102170568949211 129 1.0353569309264787
		 130 1.0833202646201798 131 1.1528472268519268 132 1.2173192108625843 133 1.3154965588758647
		 134 1.3711335892221428 135 1.1639648975848409 136 0.86385140258158111;
createNode animCurveTA -n "locator10_rotateZ";
	rename -uid "2842BCB0-4186-D41B-7420-8586593162C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -0.99801978515343226 1 -1.5345779299826936
		 2 -1.8331489961764389 3 -2.2029031188843686 4 -2.7251954293997915 5 -2.7080638530140617
		 6 -2.5712538882153466 7 -2.7501079888849866 8 -3.2982006647289941 9 -4.4398210599374419
		 10 -5.3027398869164193 11 -5.7382957706273006 12 -6.1114359118355175 13 -6.1346650068180564
		 14 -5.6534336721342022 15 -5.161228537707129 16 -4.8604999261005428 17 -4.5693192871071728
		 18 -4.2947404249689978 19 -4.0639774590917277 20 -3.851588267131655 21 -3.6976628668489822
		 22 -3.336751734418208 23 -3.0397573982720956 24 -3.2405532000153845 25 -2.9447097372397737
		 26 -2.425421914746869 27 -1.2551218327714695 28 0.3791012828595981 29 1.7422462622105557
		 30 2.7308328383453411 31 3.0268944940883213 32 2.5712926862528249 33 2.3205690258302747
		 34 2.4017073055658633 35 2.3080856788179442 36 2.2943347471607165 37 2.6513028498914197
		 38 2.6110406362639593 39 1.9425263822895928 40 -0.68682499091289984 41 -6.3736486153862364
		 42 -8.1049951614080484 43 -5.8256262310274955 44 -5.3203591001687025 45 -8.2982850455554438
		 46 -10.652269954643472 47 -8.538552511248275 48 -5.3202000003673682 49 -3.4180563965824491
		 50 -2.2673244228205918 51 -0.6232299758965345 52 0.42121806712626841 53 1.0824885969499713
		 54 0.99080971077209246 55 -0.25238267335020043 56 -1.9097567764215586 57 -2.4528785152303163
		 58 -2.0697087071513134 59 -2.2996688432937527 60 -1.3466305327850057 61 -1.6979899059972257
		 62 -3.6227220674593115 63 -3.670383776680286 64 -3.5263547257374896 65 -4.3375119554814878
		 66 -4.7225801563053382 67 -4.4165692159561925 68 -4.1448619898852481 69 -3.8960899622154228
		 70 -3.1438888216199263 71 -2.1775883427108096 72 -1.4399662319316269 73 -0.97771044868880574
		 74 -0.53035804455044866 75 0.17180432627351327 76 0.80025111062991183 77 1.3210833403278615
		 78 1.9173626967874171 79 2.5198217477122431 80 3.050779553463363 81 3.5067770406332497
		 82 3.6375015047219414 83 3.6776632733652064 84 4.1430973313543804 85 4.7086596882289484
		 86 4.9954912600642603 87 5.0713270716194652 88 5.1807704769926302 89 5.3262619233329609
		 90 5.5239142799354815 91 5.8041828805847393 92 6.0194321660767107 93 6.1914985833201701
		 94 6.3621598131228732 95 6.4083361664702974 96 6.2582172652599759 97 6.156177678264287
		 98 6.169771593277976 99 6.102901922100032 100 5.951646548895015 101 5.7738721917952658
		 102 5.6690332070037543 103 5.5971080272481313 104 5.4291295622640039 105 5.1852227689326407
		 106 4.7240337334699252 107 4.4252085497400095 108 4.4582600283236316 109 4.4293792270846541
		 110 4.2668032049843836 111 4.0937388958148366 112 3.9533128940759603 113 3.7640091768718213
		 114 3.6379456278182247 115 3.6494820028983557 116 3.6999225759695924 117 3.7192881463967238
		 118 3.7414014962654849 119 3.8906930121788763 120 4.2876985459393069 121 4.6942454427437132
		 122 4.8134691648360723 123 4.9002882208069405 124 4.9742023115374092 125 5.0324855199576968
		 126 5.2318259462833261 127 5.5493475753064621 128 5.742830524508836 129 5.7715325348828168
		 130 5.7686556310937585 131 5.722277625267429 132 5.5717723279760545 133 5.3553221878260109
		 134 5.2496070907533321 135 5.3670404225799642 136 5.4624850038784922;
createNode animCurveTU -n "locator10_scaleX";
	rename -uid "789B8D8C-4B7B-6D14-0E16-65A07BABDC1D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999989 1 1 2 0.99999999999999989
		 3 0.99999999999999989 4 0.99999999999999989 5 1 6 1 7 1 8 0.99999999999999989 9 1.0000000000000002
		 10 1 11 0.99999999999999989 12 0.99999999999999989 13 1.0000000000000002 14 0.99999999999999989
		 15 1 16 1 17 0.99999999999999989 18 1 19 1 20 0.99999999999999978 21 0.99999999999999978
		 22 0.99999999999999989 23 1 24 0.99999999999999989 25 0.99999999999999978 26 1 27 0.99999999999999989
		 28 1 29 0.99999999999999989 30 0.99999999999999989 31 1 32 0.99999999999999978 33 0.99999999999999989
		 34 1 35 1 36 1.0000000000000002 37 1 38 1 39 0.99999999999999944 40 1 41 0.99999999999999978
		 42 0.99999999999999989 43 1.0000000000000002 44 1 45 1.0000000000000002 46 1.0000000000000002
		 47 0.99999999999999989 48 0.99999999999999989 49 0.99999999999999978 50 0.99999999999999989
		 51 1 52 0.99999999999999989 53 1 54 1 55 1 56 0.99999999999999978 57 0.99999999999999989
		 58 0.99999999999999978 59 1 60 0.99999999999999978 61 0.99999999999999978 62 1 63 1.0000000000000004
		 64 1.0000000000000002 65 1 66 1.0000000000000002 67 1.0000000000000002 68 1 69 1
		 70 0.99999999999999978 71 0.99999999999999978 72 1 73 1 74 0.99999999999999978 75 0.99999999999999989
		 76 1 77 1.0000000000000002 78 0.99999999999999989 79 0.99999999999999989 80 1 81 0.99999999999999989
		 82 0.99999999999999978 83 1 84 0.99999999999999989 85 1 86 0.99999999999999944 87 1
		 88 0.99999999999999978 89 1 90 1 91 0.99999999999999989 92 0.99999999999999956 93 1
		 94 0.99999999999999989 95 1 96 1 97 0.99999999999999989 98 1 99 0.99999999999999967
		 100 1 101 1.0000000000000002 102 1 103 0.99999999999999989 104 0.99999999999999933
		 105 1 106 1 107 1.0000000000000002 108 1 109 1 110 1 111 0.99999999999999989 112 1
		 113 1 114 0.99999999999999944 115 0.99999999999999989 116 1 117 1 118 1 119 1 120 1.0000000000000002
		 121 1 122 1 123 0.99999999999999967 124 0.99999999999999944 125 0.99999999999999989
		 126 0.99999999999999989 127 1 128 1 129 0.99999999999999989 130 1.0000000000000002
		 131 1.0000000000000002 132 0.99999999999999989 133 1 134 0.99999999999999989 135 1
		 136 0.99999999999999989;
createNode animCurveTU -n "locator10_scaleY";
	rename -uid "10088969-4925-5A6F-AC9D-F8820FFDF035";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999989 1 0.99999999999999989
		 2 1.0000000000000002 3 0.99999999999999989 4 0.99999999999999989 5 0.99999999999999978
		 6 1.0000000000000002 7 1 8 0.99999999999999989 9 1.0000000000000002 10 1 11 1 12 0.99999999999999989
		 13 1 14 1 15 1 16 0.99999999999999989 17 0.99999999999999967 18 1.0000000000000002
		 19 1 20 0.99999999999999978 21 1 22 0.99999999999999989 23 1 24 1 25 1 26 0.99999999999999989
		 27 0.99999999999999989 28 0.99999999999999989 29 0.99999999999999989 30 1 31 0.99999999999999989
		 32 0.99999999999999989 33 1 34 0.99999999999999989 35 1 36 0.99999999999999989 37 1
		 38 0.99999999999999978 39 0.99999999999999978 40 1 41 0.99999999999999978 42 1 43 1
		 44 1 45 1 46 1 47 0.99999999999999978 48 0.99999999999999989 49 0.99999999999999989
		 50 1 51 1 52 1 53 0.99999999999999978 54 1 55 1 56 0.99999999999999978 57 0.99999999999999978
		 58 0.99999999999999989 59 0.99999999999999989 60 1 61 1 62 1 63 1 64 1 65 1 66 1
		 67 1 68 1.0000000000000002 69 1 70 1 71 0.99999999999999989 72 1 73 0.99999999999999989
		 74 0.99999999999999989 75 0.99999999999999978 76 0.99999999999999989 77 0.99999999999999989
		 78 0.99999999999999989 79 1.0000000000000002 80 1 81 0.99999999999999978 82 0.99999999999999989
		 83 0.99999999999999989 84 0.99999999999999989 85 0.99999999999999989 86 1 87 0.99999999999999989
		 88 0.99999999999999989 89 0.99999999999999978 90 1 91 0.99999999999999989 92 0.99999999999999989
		 93 0.99999999999999978 94 0.99999999999999989 95 1 96 1 97 0.99999999999999989 98 1.0000000000000002
		 99 0.99999999999999967 100 0.99999999999999989 101 1 102 1.0000000000000002 103 0.99999999999999967
		 104 0.99999999999999967 105 1 106 0.99999999999999989 107 1 108 0.99999999999999978
		 109 0.99999999999999989 110 1 111 1 112 1 113 1 114 1 115 0.99999999999999978 116 0.99999999999999989
		 117 0.99999999999999978 118 1 119 0.99999999999999989 120 0.99999999999999989 121 1
		 122 1 123 0.99999999999999967 124 0.99999999999999989 125 0.99999999999999978 126 1
		 127 0.99999999999999989 128 1 129 1 130 0.99999999999999989 131 0.99999999999999989
		 132 0.99999999999999989 133 1.0000000000000002 134 0.99999999999999956 135 1 136 0.99999999999999989;
createNode animCurveTU -n "locator10_scaleZ";
	rename -uid "55440F40-457A-4765-99E9-5F90A450254D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 1 3 1 4 1 5 0.99999999999999989
		 6 1 7 1 8 0.99999999999999989 9 1.0000000000000002 10 1.0000000000000002 11 0.99999999999999989
		 12 1 13 1.0000000000000002 14 1 15 0.99999999999999989 16 1 17 0.99999999999999989
		 18 1 19 1 20 0.99999999999999978 21 0.99999999999999978 22 1 23 1 24 0.99999999999999989
		 25 0.99999999999999989 26 0.99999999999999989 27 0.99999999999999978 28 1 29 1 30 1
		 31 0.99999999999999989 32 1 33 1 34 0.99999999999999989 35 1 36 1 37 0.99999999999999989
		 38 0.99999999999999989 39 1 40 1 41 1 42 1 43 1.0000000000000002 44 1 45 1.0000000000000004
		 46 1 47 0.99999999999999989 48 0.99999999999999989 49 1 50 1.0000000000000002 51 1
		 52 0.99999999999999989 53 1 54 1 55 1 56 0.99999999999999978 57 0.99999999999999978
		 58 0.99999999999999978 59 1 60 0.99999999999999989 61 0.99999999999999989 62 1.0000000000000002
		 63 1.0000000000000002 64 1.0000000000000002 65 1.0000000000000002 66 1.0000000000000002
		 67 1.0000000000000002 68 1 69 1 70 0.99999999999999978 71 0.99999999999999978 72 0.99999999999999989
		 73 1 74 1.0000000000000002 75 0.99999999999999989 76 0.99999999999999989 77 1 78 1
		 79 0.99999999999999989 80 1.0000000000000002 81 1 82 0.99999999999999978 83 0.99999999999999978
		 84 0.99999999999999989 85 1 86 0.99999999999999967 87 0.99999999999999989 88 0.99999999999999978
		 89 0.99999999999999978 90 1.0000000000000002 91 0.99999999999999978 92 0.99999999999999967
		 93 1.0000000000000004 94 0.99999999999999989 95 1 96 1 97 1 98 1.0000000000000002
		 99 0.99999999999999956 100 1 101 1 102 1.0000000000000002 103 0.99999999999999978
		 104 0.99999999999999933 105 1 106 0.99999999999999978 107 1 108 1 109 1 110 1 111 1
		 112 1 113 0.99999999999999989 114 0.99999999999999944 115 0.99999999999999989 116 1
		 117 0.99999999999999989 118 1.0000000000000002 119 1.0000000000000002 120 1 121 0.99999999999999989
		 122 0.99999999999999989 123 0.99999999999999944 124 0.99999999999999944 125 0.99999999999999989
		 126 1 127 0.99999999999999978 128 1.0000000000000002 129 1 130 1.0000000000000002
		 131 1 132 0.99999999999999989 133 1 134 0.99999999999999978 135 1 136 1;
createNode animCurveTU -n "locator11_visibility";
	rename -uid "B57258C1-428B-400C-A2CC-1EA97E981C36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1
		 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1
		 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1
		 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTL -n "locator11_translateX";
	rename -uid "B2E46125-4675-2CFD-1724-52ADCBE56E5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.067472597835020132 1 0.22613869749048732
		 2 0.30206228177537842 3 0.40769383757358257 4 0.5726627575979899 5 0.56844382749089273
		 6 0.52224283661838533 7 0.56239851269539765 8 0.68616819536250429 9 0.97106196548391388
		 10 1.1995058399161369 11 1.3473131830296818 12 1.487352020238319 13 1.5386289552453007
		 14 1.4782402211748007 15 1.4174311038633292 16 1.3882461921755187 17 1.3313145702842668
		 18 1.2520563674602663 19 1.1804829995363217 20 1.1211769153783653 21 1.0887034382027512
		 22 0.99466219724908456 23 0.90665092047658113 24 0.96865877928047794 25 0.87898928593743797
		 26 0.73719269176707236 27 0.41480868424970208 28 -0.060861495677796085 29 -0.49055829136061924
		 30 -0.83126826492649197 31 -0.976809371847283 32 -0.88856891516203262 33 -0.84107825555514815
		 34 -0.87736372882348457 35 -0.85011184772086779 36 -0.81575251399611659 37 -0.86913589835965155
		 38 -0.81081822229582201 39 -0.63257183995496291 40 0.090230705852505366 41 1.8271902495415588
		 42 2.3969288445234156 43 1.6516279105948968 44 1.4421943411445568 45 2.3833949993394867
		 46 3.1142434221962105 47 2.4626930850906348 48 1.5415104847799057 49 1.0684712962467273
		 50 0.83822381821792646 51 0.42171300223736807 52 0.11966350664644665 53 -0.095392509566018191
		 54 -0.11109996079581208 55 0.19239130500702828 56 0.62235009514665052 57 0.70869158369914231
		 58 0.49837625583024003 59 0.55703081782952069 60 0.37417007963370708 61 0.64661925682732146
		 62 1.3663025430280697 63 1.4575601757288865 64 1.4798497786770355 65 1.7187293944360533
		 66 1.7172151791807266 67 1.5265985710824168 68 1.4119048286822817 69 1.3106069496566306
		 70 1.0467001598713637 71 0.73007634480839556 72 0.4990914365016863 73 0.37011847845261059
		 74 0.25540213798669242 75 0.059313527214442274 76 -0.1173073077418394 77 -0.26711523905713364
		 78 -0.44471911355940108 79 -0.62202171248107163 80 -0.77903572632112628 81 -0.9195692110660616
		 82 -0.97493850337286858 83 -1.0081314972132844 84 -1.1521426224091869 85 -1.3137584312571846
		 86 -1.3984473974972786 87 -1.4319796030265906 88 -1.4773376326283625 89 -1.5262083332406888
		 90 -1.5799847127965876 91 -1.650455493998038 92 -1.7015808129140311 93 -1.7426744754646393
		 94 -1.782934569805505 95 -1.7859153823615088 96 -1.7372903153465984 97 -1.7064427524829995
		 98 -1.7093471518497552 99 -1.6886194893721722 100 -1.6447082574262026 101 -1.5941777662924892
		 102 -1.5640306103756387 103 -1.5440021935832817 104 -1.4981132244103463 105 -1.4307882030343961
		 106 -1.3007798290452826 107 -1.2167638010263602 108 -1.2267914374545086 109 -1.2182528846798988
		 110 -1.1728528658610173 111 -1.1267579210877301 112 -1.0904951679747512 113 -1.0399876943633188
		 114 -1.0053201119170012 115 -1.0074136882057161 116 -1.0209790940739651 117 -1.027425325744673
		 118 -1.0344507568402719 119 -1.0743481714143286 120 -1.1812092611139065 121 -1.2901546479921677
		 122 -1.3182001278841824 123 -1.3407786401373158 124 -1.3647110308984907 125 -1.3832574357907106
		 126 -1.4399799585402633 127 -1.5310953680782831 128 -1.5870431112154506 129 -1.5954713649697823
		 130 -1.5963576421080035 131 -1.5858070164186984 132 -1.5460726146543351 133 -1.4902244389928683
		 134 -1.4629792011555196 135 -1.4857160579817474 136 -1.502975345068208;
createNode animCurveTL -n "locator11_translateY";
	rename -uid "1391ED95-4DF7-55AE-3F03-ABACD2456080";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 29.515023703844719 1 29.513045249827726
		 2 29.509972488565239 3 29.505828325688512 4 29.50129249162849 5 29.501112027106856
		 6 29.500325009921966 7 29.494393380852259 8 29.481568932812976 9 29.458954295639529
		 10 29.441336092500364 11 29.432257215082387 12 29.420104298436726 13 29.414780118535703
		 14 29.426749495657418 15 29.442880549180288 16 29.455082771252222 17 29.466368316040587
		 18 29.475306368298064 19 29.480692733115305 20 29.484356002950562 21 29.485699537601846
		 22 29.488524545504347 23 29.490809390846039 24 29.486583861397875 25 29.491478966737304
		 26 29.494251186347014 27 29.496547782159681 28 29.49825480341093 29 29.497206228920291
		 30 29.491177538716855 31 29.486996506845472 32 29.491606495377127 33 29.494420765815946
		 34 29.493870561870764 35 29.495010543479538 36 29.495934198899533 37 29.494389267048774
		 38 29.500004716741358 39 29.50181925830401 40 29.497534287880441 41 29.420044163062016
		 42 29.365270071765536 43 29.443977157552624 44 29.459467925000837 45 29.366051074820959
		 46 29.259570829033777 47 29.351892479741835 48 29.449749073266872 49 29.487090136965804
		 50 29.495101889424731 51 29.489186386344315 52 29.470362524835323 53 29.438186702201392
		 54 29.399707073918094 55 29.38259400038298 56 29.382630391801271 57 29.40426827278435
		 58 29.456688345603993 59 29.499403093243231 60 29.51224909201899 61 29.484696794834925
		 62 29.378209002117707 63 29.242820673796842 64 29.077990869998814 65 28.897174388044345
		 66 28.825689936786411 67 28.844082961197451 68 28.855915785887824 69 28.848961395233523
		 70 28.889170105204116 71 28.981179485871017 72 29.080819570123694 73 29.172618724834706
		 74 29.259245460473565 75 29.33368854681548 76 29.39601950453428 77 29.442618287767843
		 78 29.472142954208408 79 29.486879276147022 80 29.491785374015507 81 29.492093702121522
		 82 29.491264658560638 83 29.485303170240883 84 29.467695371969683 85 29.448545937583418
		 86 29.437931476236841 87 29.432076545753802 88 29.424224133011876 89 29.416528246199846
		 90 29.411922598669349 91 29.40958190775504 92 29.410945907389376 93 29.413342751862317
		 94 29.415337859523319 95 29.420015685463497 96 29.428398206954569 97 29.433881980839288
		 98 29.434942296940704 99 29.43706152112965 100 29.440692014662147 101 29.444731988983193
		 102 29.447123355697371 103 29.448625157714829 104 29.452469647195358 105 29.458017343884165
		 106 29.467464645545576 107 29.472256780743081 108 29.470388106111344 109 29.469758338382931
		 110 29.471511089009681 111 29.473472416008434 112 29.473941041756518 113 29.474045189801302
		 114 29.473880018376775 115 29.472546132489015 116 29.470887288162984 117 29.469903964837727
		 118 29.469355832673756 119 29.467219480207319 120 29.459903033278806 121 29.451249927620452
		 122 29.449082418128398 123 29.447252577313435 124 29.444472366872901 125 29.442414143193744
		 126 29.437729400649602 127 29.42960357334195 128 29.424184600740872 129 29.423427608540635
		 130 29.42348535624825 131 29.424666872587338 132 29.428504637305778 133 29.432930443540656
		 134 29.436474157369787 135 29.44170256746898 136 29.446522164334212;
createNode animCurveTL -n "locator11_translateZ";
	rename -uid "1DBD02ED-454B-FD04-0D33-C0A30DB5CFBB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -0.077867713296138064 1 -0.13123525943183267
		 2 -0.24822674074594175 3 -0.34151008785535986 4 -0.34836567446856481 5 -0.35864920229483344
		 6 -0.43256047039086454 7 -0.56864922841990762 8 -0.76024758091705635 9 -0.93379493868188135
		 10 -0.99865898757774474 11 -0.98808800093854643 12 -1.0225065111749458 13 -1.0500642646139298
		 14 -0.94776218665329282 15 -0.74722882961531667 16 -0.51798191401281457 17 -0.27381715957876196
		 18 -0.047656778370395614 19 0.10324306782558779 20 0.11945905681581337 21 -0.022156916866634901
		 22 -0.19854876834568813 23 -0.29497354624034244 24 -0.33750459579492542 25 -0.31602213464203999
		 26 -0.43128765530049407 27 -0.63437171938616643 28 -0.70099110143428334 29 -0.5853798737290532
		 30 -0.42617306278948774 31 -0.33440695670698517 32 -0.31938602952756412 33 -0.28984097105671935
		 34 -0.24330157601187352 35 -0.24795767952556957 36 -0.27747237869976971 37 -0.24567608598579227
		 38 -0.011774317661163991 39 0.52948216995784492 40 0.93663902062311877 41 0.6949512945804841
		 42 0.30854817878155671 43 0.31531675538652593 44 0.40058033794196035 45 0.31297560466342134
		 46 0.36723535048967904 47 0.56655882396354684 48 0.54642988252018654 49 0.2525903140845287
		 50 -0.27782839160599337 51 -0.80965867245976142 52 -1.1832863595112997 53 -1.5762587827317702
		 54 -1.9498460339505641 55 -2.0943727991050025 56 -2.0210716905487232 57 -1.8013046230704504
		 58 -1.3004038401677178 59 -0.48498491261037202 60 0.25483561421364698 61 0.96243242427237874
		 62 1.881595651297971 63 2.8827089889432216 64 3.7731435983655217 65 4.4682090901971492
		 66 4.7468078323030625 67 4.744026973016588 68 4.7341282455701901 69 4.7864416461583232
		 70 4.6991394023487203 71 4.3990130410624317 72 4.006825020240484 73 3.584395845829448
		 74 3.1246185950350025 75 2.6626682934133328 76 2.1832466291828894 77 1.7183778512567756
		 78 1.2985762658414046 79 0.94940854121745133 80 0.67261957781218484 81 0.3811112927564011
		 82 0.053178398651368752 83 -0.28574618730800694 84 -0.59045554885832985 85 -0.7821723894919046
		 86 -0.8680710904672253 87 -0.92651575903897765 88 -0.99765868285277293 89 -1.0561153674162256
		 90 -1.057921784475667 91 -0.99828174500856903 92 -0.89592942620720351 93 -0.77750421785430035
		 94 -0.65039757691465638 95 -0.52035784750754033 96 -0.4008422546776842 97 -0.30021069200020634
		 98 -0.23943887148740828 99 -0.2271071537232956 100 -0.2422352289016203 101 -0.26034245897037067
		 102 -0.26872218076667309 103 -0.27702380102368807 104 -0.27364359170877606 105 -0.26402661166736152
		 106 -0.27027231531488383 107 -0.30960662282797102 108 -0.35694790117864272 109 -0.39940834880894727
		 110 -0.43781200080837834 111 -0.46574634725573105 112 -0.51636610203399869 113 -0.59136877624720796
		 114 -0.64174642938849047 115 -0.66939521557736725 116 -0.68977764789136131 117 -0.70411195441235463
		 118 -0.70806644024389698 119 -0.70478406873795052 120 -0.72115057690135131 121 -0.74898274103722429
		 122 -0.7516332409723816 123 -0.75590714559771754 124 -0.77828226611384821 125 -0.79210226306457798
		 126 -0.79876953727568889 127 -0.81525676698578309 128 -0.82953857514223728 129 -0.83019136145233574
		 130 -0.82772225284486467 131 -0.82293667243678215 132 -0.81451911285452638 133 -0.81854658128153801
		 134 -0.79253770778365151 135 -0.63961269648262942 136 -0.47255400034688932;
createNode animCurveTA -n "locator11_rotateX";
	rename -uid "1D132981-4D63-4816-A9DB-0EBB9F395D0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 10.574296442994795 1 10.185645841684794
		 2 9.4470310256129757 3 8.8455536965280874 4 8.7224780897706573 5 8.6070173180986647
		 6 8.159613734535057 7 7.3325003923387397 8 6.1305341722288764 9 4.9959851095259715
		 10 4.5600411728902435 11 4.6684917139366426 12 4.5605097563503012 13 4.5335620270792827
		 14 5.2779340084967776 15 6.5446009283788547 16 7.9886412646275113 17 9.5207857954160424
		 18 10.85145516385508 19 11.686778844069948 20 11.756640213605918 21 10.928998647933033
		 22 9.9066050382042974 23 9.322498642777532 24 9.025148519197181 25 9.1076265756356509
		 26 8.4329673199850266 27 7.2872683136982879 28 6.9487968450883839 29 7.6502625126742645
		 30 8.5549988761406546 31 9.0735632123838421 32 9.1839889307739284 33 9.3816790945286357
		 34 9.7012242391295178 35 9.7453495852206284 36 9.7344443453057874 37 10.0996273633112
		 38 11.477216121527203 39 14.654087384128767 40 17.220553813641708 41 15.967252020791415
		 42 13.705628907451992 43 13.725233658193529 44 14.169409352327609 45 13.592055147278005
		 46 13.831091094412045 47 14.999435757081436 48 14.909754473418586 49 13.256547683624326
		 50 10.300658949510364 51 7.456803322012683 52 5.5227897594454056 53 3.4509916081816647
		 54 1.5003477957723808 55 0.78959214877037653 56 1.2477572674182644 57 2.4678419083804854
		 58 5.1547892056217552 59 9.5310613229560044 60 13.56467520371644 61 17.421304310764331
		 62 22.293601760738824 63 27.722131865258202 64 32.662753937824476 65 36.474442671465454
		 66 37.919924822535329 67 37.850822729005436 68 37.823826621635291 69 38.182924581279714
		 70 37.739750272175918 71 36.086272708635498 72 33.909881646024779 73 31.563724446034769
		 74 29.016251871126556 75 26.440700803153899 76 23.749292484547173 77 21.147759075026169
		 78 18.805426219956658 79 16.854006292178724 80 15.32429747848896 81 13.755164714039742
		 82 11.955528279503421 83 10.085964827350937 84 8.4836931856032809 85 7.4797580662157976
		 86 6.9889549421848232 87 6.6575289955384251 88 6.2650525703173674 89 5.9263745976361362
		 90 5.905976780068956 91 6.2288023972009432 92 6.742833430000311 93 7.3223747571647131
		 94 7.9635149687340183 95 8.626695318054578 96 9.2444273751802299 97 9.7622639375842901
		 98 10.058409935060315 99 10.105996815924129 100 10.001297496465655 101 9.8843004558806076
		 102 9.8326327092837449 103 9.7722234245355981 104 9.7727137162622935 105 9.802603542550786
		 106 9.7401357543015816 107 9.5135019114090955 108 9.2553139926087784 109 9.0174133331287987
		 110 8.8000326165599745 111 8.6422437142368036 112 8.370489542018376 113 7.9734981285817961
		 114 7.7024300841101638 115 7.5486066263310372 116 7.4371924580860407 117 7.3680351201683782
		 118 7.3584961495210734 119 7.3803914262522623 120 7.2920265779786106 121 7.1547807287109197
		 122 7.1615254690684118 123 7.1456879775045419 124 7.0146900540258788 125 6.9383555587655836
		 126 6.9196120605533 127 6.8685352690958021 128 6.8264133372896643 129 6.8267620769487172
		 130 6.827631920932359 131 6.8480653333019648 132 6.8932895918901824 133 6.8607023495336978
		 134 6.9941091996095155 135 7.8329018737547669 136 8.7471781745585133;
createNode animCurveTA -n "locator11_rotateY";
	rename -uid "EDAE9B39-42EC-FA5A-3CA3-328FF93264D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 10.133656300607452 1 11.520887366631944
		 2 12.371582628830293 3 12.565080020689239 4 12.422842947276406 5 12.035766708623724
		 6 11.576239002005465 7 11.70515051933428 8 12.539208664876126 9 13.25155211831532
		 10 13.398361951118948 11 13.301609409961619 12 12.990348415347182 13 11.817332483299907
		 14 9.737825146940482 15 7.3164958260307351 16 4.5040332564682055 17 1.3694830205777457
		 18 -1.0186120635686788 19 -2.4974332486743949 20 -3.639456518954411 21 -4.5855674150727816
		 22 -5.5427538580334197 23 -6.4805753599457754 24 -7.1690950711108776 25 -7.4644215203056703
		 26 -8.134062510598886 27 -9.253897011638232 28 -8.8718793277358561 29 -7.0683005501943637
		 30 -6.3633089694656029 31 -5.6147007238266351 32 -3.2943896370046133 33 -0.74301430003149049
		 34 1.3989677164992742 35 1.4269236527627116 36 -2.1288451064780984 37 -6.5300138536482182
		 38 -10.174601672034765 39 -12.613111666497774 40 -13.424116815582671 41 -13.805258798218384
		 42 -15.110129665519654 43 -16.120228471665754 44 -16.713634546077479 45 -16.68682909224265
		 46 -15.347826842971195 47 -13.437765520536967 48 -11.675625519327527 49 -9.3616641229579027
		 50 -6.9932038779732242 51 -4.8862492101261799 52 -3.5731720007469532 53 -2.7187951234170935
		 54 -1.5306367017455333 55 -0.33334079618458323 56 0.83929818281462132 57 3.1630236262202809
		 58 7.284569600954903 59 12.176143529807797 60 16.10612105712579 61 18.268599689800951
		 62 17.198740275621166 63 14.385037036217739 64 12.836524077855991 65 11.402733617516198
		 66 8.6704193613552203 67 6.4455012645047498 68 5.5645971516514443 69 4.8260837751261443
		 70 3.5859837964782395 71 2.4481787931180001 72 1.8183432532731529 73 1.8294264966102582
		 74 2.14211690259443 75 2.1956830237510885 76 2.3506675210224208 77 2.6295071531244982
		 78 2.8034716780066153 79 3.2029258790941419 80 3.7545566169689812 81 4.2417907854263603
		 82 4.564119728481062 83 4.3968154712940608 84 3.7016463598571887 85 2.8250550038205038
		 86 2.5960797134706972 87 3.4417313096025692 88 4.4439489767982314 89 4.7916036237423256
		 90 4.5189053083838857 91 4.0229790453884595 92 3.5917138022905748 93 3.2327522233030339
		 94 2.8100213644298608 95 2.4448205986399865 96 2.3363931852297881 97 2.2661987191655037
		 98 2.0468528848993768 99 1.8415052410791546 100 1.6534409105583581 101 1.4732374153258936
		 102 1.2881253975746816 103 1.2273892988055035 104 1.425775201504734 105 1.4482972466069723
		 106 1.3056752604441431 107 1.3902388017160141 108 1.5076118774131995 109 1.4474767349172086
		 110 1.6128370813056003 111 1.9780596053370278 112 2.1049614099279599 113 2.2069525024303354
		 114 2.3063750332249087 115 2.2748089448957964 116 2.1981658372566164 117 2.1429540865753482
		 118 2.1218707914829977 119 2.0291350678830655 120 1.7683826735233898 121 1.5368326553725955
		 122 1.4394925183138745 123 1.2885715512516158 124 1.1283003342978968 125 1.2127135210626871
		 126 1.404486964363671 127 1.5151912793554834 128 1.5909088131186913 129 1.6267139751128756
		 130 1.6966744337415773 131 1.7966861053446013 132 1.8901226234658546 133 2.0297113981809947
		 134 2.1058596014619804 135 1.8087605014666741 136 1.3753270253415428;
createNode animCurveTA -n "locator11_rotateZ";
	rename -uid "2A84BB00-4176-D8E2-AF5D-118887138E65";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -2.4075384195400948 1 -3.0362501599574285
		 2 -3.407383161783021 3 -3.8408668753004385 4 -4.4430699889642469 5 -4.435469767452588
		 6 -4.282087761108138 7 -4.5146019637007013 8 -5.2928393670990284 9 -6.8802814969744626
		 10 -8.0479726429911462 11 -8.4839990522024795 12 -8.7562162139168507 13 -8.5561399177160204
		 14 -7.6369437475609159 15 -6.7216078256979381 16 -6.1558080738438763 17 -5.7298636807223806
		 18 -5.4120539298364214 19 -5.1402221559691279 20 -4.8563530300103226 21 -4.6189172493638004
		 22 -4.1461896025476337 23 -3.8134821760214441 24 -4.0624346461171612 25 -3.7037322965624031
		 26 -3.0436340943803937 27 -1.5702545535978261 28 0.4644918913423175 29 2.0837321087086322
		 30 3.0899209292503542 31 3.1633880638531484 32 2.3849690892843181 33 1.9757195262226546
		 34 2.0445627847504362 35 1.927861512594969 36 2.0088009527822006 37 2.6484239485363985
		 38 2.8956676130995644 39 2.2506228520554483 40 -1.0704109003861282 41 -7.9141948605212544
		 42 -9.9764199570824612 43 -7.6025862389625152 44 -7.2434240251272222 45 -10.56742576318347
		 46 -13.161008630598966 47 -10.632138933947468 48 -6.5879107827416119 49 -3.9252557128240926
		 50 -2.0727992684152978 51 0.28653602105242976 52 1.6323542291663755 53 2.3506586607771407
		 54 2.0765452661848744 55 0.33411220645655082 56 -1.8789341051500017 57 -2.738902339869282
		 58 -2.5822258529694593 59 -2.9845500744855102 60 -1.6208478779403663 61 -1.7042982833657263
		 62 -3.9528410686326581 63 -4.0007186454446337 64 -3.7021548954369914 65 -4.6306161211556454
		 66 -5.1978980166116893 67 -4.9318107670521192 68 -4.6377751043741871 69 -4.3885414990648597
		 70 -3.5354374703376132 71 -2.38734658337113 72 -1.4973359868540665 73 -0.91109323915066398
		 74 -0.31084887348958706 75 0.61587715792906128 76 1.4569020616053043 77 2.1488169016944485
		 78 2.9187816576274686 79 3.7013438208062364 80 4.3899626798169269 81 4.974342151358127
		 82 5.1133450687829844 83 5.1077736158030591 84 5.6757424974931938 85 6.3866369688935718
		 86 6.732914722888041 87 6.8161880511135013 88 6.9470993516756039 89 7.1226248484684103
		 90 7.3722917819801816 91 7.7448186491297104 92 8.0378623169869901 93 8.2682612895549408
		 94 8.5012645097214126 95 8.5917370696838855 96 8.4179498021751566 97 8.2860833717243878
		 98 8.2987639707247816 99 8.216691436940522 100 8.0227609056458284 101 7.7893337172905204
		 102 7.6518270384257905 103 7.5549043559532238 104 7.330433425006202 105 7.0025414999405635
		 106 6.3952631772403068 107 6.0054738709772417 108 6.049462905621553 109 6.0138545763157865
		 110 5.8044265402201392 111 5.5746454420563873 112 5.3795252898257164 113 5.1248241498553657
		 114 4.9627094027886463 115 4.9855030994623828 116 5.0540122849895299 117 5.073071767170406
		 118 5.0975190534024186 119 5.3014485849124036 120 5.8396097993840588 121 6.3956999058494803
		 122 6.5807520102007171 123 6.6989541225015028 124 6.7707145048597326 125 6.8393359886658889
		 126 7.1070537511617928 127 7.5201307333456118 128 7.7704605846822385 129 7.8080474995992803
		 130 7.7977280038485111 131 7.7275211593498812 132 7.5198785888792896 133 7.2148654993108128
		 134 7.0644066710227742 135 7.2542888162446291 136 7.4104740263522402;
createNode animCurveTU -n "locator11_scaleX";
	rename -uid "8BD1796A-4EAA-7B0A-1E15-499356D1C018";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999978 1 1 2 1 3 0.99999999999999989
		 4 0.99999999999999989 5 1 6 1 7 1 8 1 9 1 10 1.0000000000000002 11 1 12 0.99999999999999989
		 13 1.0000000000000002 14 0.99999999999999989 15 1.0000000000000002 16 0.99999999999999989
		 17 0.99999999999999989 18 1 19 1 20 0.99999999999999956 21 0.99999999999999967 22 0.99999999999999989
		 23 1 24 0.99999999999999989 25 0.99999999999999978 26 0.99999999999999989 27 1 28 1
		 29 1 30 0.99999999999999989 31 1 32 0.99999999999999978 33 1 34 1 35 1 36 1 37 0.99999999999999989
		 38 1 39 0.99999999999999944 40 1.0000000000000002 41 0.99999999999999978 42 0.99999999999999989
		 43 1.0000000000000002 44 1 45 1 46 1.0000000000000002 47 1 48 0.99999999999999989
		 49 0.99999999999999978 50 0.99999999999999989 51 1.0000000000000002 52 1 53 1 54 1
		 55 1 56 0.99999999999999978 57 0.99999999999999989 58 0.99999999999999978 59 1 60 0.99999999999999978
		 61 0.99999999999999978 62 1 63 1.0000000000000004 64 1.0000000000000002 65 1 66 1.0000000000000002
		 67 1.0000000000000002 68 1 69 1 70 0.99999999999999967 71 0.99999999999999956 72 1
		 73 1 74 0.99999999999999978 75 0.99999999999999989 76 1 77 1.0000000000000002 78 0.99999999999999967
		 79 0.99999999999999978 80 1 81 0.99999999999999978 82 0.99999999999999978 83 1 84 0.99999999999999989
		 85 1 86 0.99999999999999944 87 0.99999999999999978 88 0.99999999999999978 89 0.99999999999999978
		 90 1 91 0.99999999999999978 92 0.99999999999999956 93 1 94 1 95 1 96 1 97 0.99999999999999989
		 98 1 99 0.99999999999999967 100 1 101 1.0000000000000002 102 1 103 0.99999999999999989
		 104 0.99999999999999933 105 1 106 0.99999999999999978 107 1 108 1 109 1.0000000000000002
		 110 1 111 0.99999999999999989 112 0.99999999999999989 113 1 114 0.99999999999999944
		 115 0.99999999999999989 116 1 117 1 118 1 119 1.0000000000000002 120 1.0000000000000002
		 121 1 122 1 123 0.99999999999999967 124 0.99999999999999956 125 0.99999999999999978
		 126 0.99999999999999989 127 1 128 1 129 0.99999999999999978 130 1.0000000000000002
		 131 1.0000000000000002 132 0.99999999999999989 133 1 134 1 135 1 136 0.99999999999999989;
createNode animCurveTU -n "locator11_scaleY";
	rename -uid "314C0ED7-4452-4376-3FED-7F86D143C874";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999989 1 1 2 1 3 0.99999999999999989
		 4 0.99999999999999989 5 0.99999999999999978 6 1 7 1 8 0.99999999999999978 9 1.0000000000000002
		 10 1.0000000000000002 11 1 12 0.99999999999999967 13 1 14 0.99999999999999989 15 0.99999999999999989
		 16 0.99999999999999989 17 0.99999999999999967 18 1.0000000000000002 19 0.99999999999999989
		 20 0.99999999999999978 21 1 22 0.99999999999999989 23 1 24 1 25 1 26 0.99999999999999989
		 27 0.99999999999999989 28 0.99999999999999989 29 0.99999999999999978 30 1 31 0.99999999999999989
		 32 0.99999999999999989 33 1 34 0.99999999999999989 35 1 36 1 37 1 38 0.99999999999999989
		 39 0.99999999999999978 40 1 41 0.99999999999999978 42 1 43 1 44 1.0000000000000002
		 45 0.99999999999999989 46 1 47 0.99999999999999967 48 0.99999999999999989 49 0.99999999999999989
		 50 1 51 1 52 1 53 1 54 1 55 1 56 0.99999999999999967 57 0.99999999999999978 58 0.99999999999999989
		 59 0.99999999999999978 60 1 61 1.0000000000000002 62 1 63 1.0000000000000002 64 1
		 65 1 66 0.99999999999999989 67 1 68 1.0000000000000002 69 1 70 1.0000000000000002
		 71 0.99999999999999989 72 1 73 0.99999999999999989 74 0.99999999999999989 75 0.99999999999999978
		 76 0.99999999999999989 77 0.99999999999999989 78 0.99999999999999989 79 1.0000000000000002
		 80 1 81 0.99999999999999967 82 0.99999999999999989 83 0.99999999999999978 84 0.99999999999999989
		 85 1 86 0.99999999999999989 87 0.99999999999999989 88 0.99999999999999989 89 0.99999999999999978
		 90 1 91 0.99999999999999978 92 0.99999999999999989 93 0.99999999999999989 94 0.99999999999999989
		 95 1 96 1 97 1 98 1.0000000000000002 99 0.99999999999999967 100 0.99999999999999978
		 101 1 102 1.0000000000000002 103 0.99999999999999978 104 0.99999999999999978 105 1
		 106 0.99999999999999989 107 1 108 0.99999999999999978 109 0.99999999999999989 110 1
		 111 1.0000000000000002 112 0.99999999999999989 113 1 114 1.0000000000000002 115 0.99999999999999967
		 116 0.99999999999999989 117 0.99999999999999978 118 0.99999999999999989 119 0.99999999999999989
		 120 1 121 0.99999999999999989 122 1 123 0.99999999999999978 124 0.99999999999999989
		 125 0.99999999999999978 126 1 127 0.99999999999999989 128 1.0000000000000002 129 1
		 130 0.99999999999999989 131 0.99999999999999989 132 0.99999999999999989 133 1.0000000000000002
		 134 0.99999999999999956 135 0.99999999999999989 136 0.99999999999999989;
createNode animCurveTU -n "locator11_scaleZ";
	rename -uid "C892EC73-4C4C-016E-1445-218670F100CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999989 1 0.99999999999999978
		 2 1 3 0.99999999999999989 4 1 5 0.99999999999999989 6 1 7 1 8 0.99999999999999989
		 9 1.0000000000000002 10 1.0000000000000002 11 1 12 1 13 1.0000000000000002 14 0.99999999999999989
		 15 1 16 1 17 0.99999999999999989 18 1 19 1.0000000000000002 20 0.99999999999999978
		 21 0.99999999999999978 22 0.99999999999999989 23 1 24 0.99999999999999989 25 1 26 0.99999999999999978
		 27 0.99999999999999967 28 1 29 0.99999999999999989 30 1 31 0.99999999999999989 32 1
		 33 1 34 1 35 1 36 1.0000000000000002 37 1 38 1 39 1 40 1 41 1 42 0.99999999999999989
		 43 1.0000000000000002 44 0.99999999999999989 45 1.0000000000000004 46 1.0000000000000002
		 47 1 48 1 49 1 50 1 51 1 52 0.99999999999999989 53 0.99999999999999978 54 1 55 0.99999999999999978
		 56 0.99999999999999978 57 0.99999999999999978 58 0.99999999999999978 59 0.99999999999999978
		 60 0.99999999999999989 61 0.99999999999999989 62 1.0000000000000002 63 1.0000000000000002
		 64 1.0000000000000002 65 1 66 1.0000000000000002 67 1 68 1 69 0.99999999999999989
		 70 0.99999999999999978 71 0.99999999999999978 72 0.99999999999999989 73 1 74 1 75 0.99999999999999989
		 76 0.99999999999999989 77 1 78 1 79 0.99999999999999989 80 1.0000000000000002 81 1
		 82 0.99999999999999956 83 0.99999999999999978 84 0.99999999999999989 85 1 86 0.99999999999999956
		 87 0.99999999999999989 88 0.99999999999999967 89 0.99999999999999978 90 1.0000000000000002
		 91 0.99999999999999967 92 0.99999999999999967 93 1.0000000000000004 94 0.99999999999999989
		 95 1 96 1 97 1 98 1.0000000000000002 99 0.99999999999999956 100 1.0000000000000002
		 101 1 102 1.0000000000000002 103 0.99999999999999978 104 0.99999999999999944 105 1
		 106 0.99999999999999978 107 1 108 1 109 0.99999999999999989 110 1.0000000000000002
		 111 1 112 1.0000000000000002 113 0.99999999999999989 114 0.99999999999999944 115 0.99999999999999978
		 116 1 117 0.99999999999999989 118 1.0000000000000002 119 1.0000000000000002 120 1
		 121 0.99999999999999989 122 0.99999999999999978 123 0.99999999999999944 124 0.99999999999999933
		 125 0.99999999999999989 126 1 127 1 128 1.0000000000000004 129 1 130 1.0000000000000002
		 131 1 132 0.99999999999999989 133 1 134 0.99999999999999978 135 1 136 0.99999999999999978;
createNode animCurveTU -n "locator12_visibility";
	rename -uid "BA016ED2-4A0A-C2B5-5DBA-F8852DADDC62";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1
		 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1
		 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1
		 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTL -n "locator12_translateX";
	rename -uid "A4A5C23B-4EB7-C27E-A124-B1894EE27078";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -2.960988012112864e-06 1 -2.9609880138892208e-06
		 2 -2.9609880130010424e-06 3 -2.9609880125569532e-06 4 -2.9609880152214885e-06 5 -2.960988012112864e-06
		 6 -2.9609880147773993e-06 7 -2.9609880103365072e-06 8 -2.9609880112246856e-06 9 -2.9609880130010424e-06
		 10 -2.9609880112246856e-06 11 -2.9609880112246856e-06 12 -2.9609880112246856e-06
		 13 -2.9609880130010424e-06 14 -2.9609880130010424e-06 15 -2.9609880130010424e-06
		 16 -2.9609880112246856e-06 17 -2.9609880041192582e-06 18 -2.9609880130010424e-06
		 19 -2.9609880147773993e-06 20 -2.9609880147773993e-06 21 -2.9609880076719719e-06
		 22 -2.9609880130010424e-06 23 -2.9609880076719719e-06 24 -2.9609880147773993e-06
		 25 -2.9609880165537561e-06 26 -2.9609880130010424e-06 27 -2.9609880094483287e-06
		 28 -2.9609880165537561e-06 29 -2.9609880130010424e-06 30 -2.9609880094483287e-06
		 31 -2.9609880165537561e-06 32 -2.9609880076719719e-06 33 -2.9609880094483287e-06
		 34 -2.9609880130010424e-06 35 -2.9609880165537561e-06 36 -2.9609880094483287e-06
		 37 -2.9609880058956151e-06 38 -2.9609880130010424e-06 39 -2.9609879987901877e-06
		 40 -2.9609880414227518e-06 41 -2.9609880414227518e-06 42 -2.9609880130010424e-06
		 43 -2.9609880414227518e-06 44 -2.9609880130010424e-06 45 -2.9609880414227518e-06
		 46 -2.9609880130010424e-06 47 -2.9609880130010424e-06 48 -2.9609880130010424e-06
		 49 -2.960987984579333e-06 50 -2.9609880130010424e-06 51 -2.960987984579333e-06 52 -2.9609880130010424e-06
		 53 -2.9609880130010424e-06 54 -2.9609880130010424e-06 55 -2.9609880414227518e-06
		 56 -2.960987984579333e-06 57 -2.9609880698444613e-06 58 -2.9609880130010424e-06 59 -2.9609880272118971e-06
		 60 -2.9609879987901877e-06 61 -2.9609880130010424e-06 62 -2.9609880094483287e-06
		 63 -2.9609880156655777e-06 64 -2.9609880112246856e-06 65 -2.9609880130010424e-06
		 66 -2.9609880023429014e-06 67 -2.9609880165537561e-06 68 -2.9609880201064698e-06
		 69 -2.9609880130010424e-06 70 -2.9609880130010424e-06 71 -2.9609880130010424e-06
		 72 -2.9609880130010424e-06 73 -2.9609880094483287e-06 74 -2.9609880094483287e-06
		 75 -2.9609880130010424e-06 76 -2.9609880094483287e-06 77 -2.9609880130010424e-06
		 78 -2.9609880130010424e-06 79 -2.9609880094483287e-06 80 -2.9609880165537561e-06
		 81 -2.9609880130010424e-06 82 -2.9609880236591835e-06 83 -2.9609880130010424e-06
		 84 -2.9609880165537561e-06 85 -2.9609880201064698e-06 86 -2.9609880130010424e-06
		 87 -2.9609880094483287e-06 88 -2.9609880147773993e-06 89 -2.9609880147773993e-06
		 90 -2.9609880145553547e-06 91 -2.9609880147773993e-06 92 -2.9609880147773993e-06
		 93 -2.9609880165537561e-06 94 -2.9609880201064698e-06 95 -2.9609880130010424e-06
		 96 -2.9609880165537561e-06 97 -2.9609880272118971e-06 98 -2.9609880094483287e-06
		 99 -2.9609880130010424e-06 100 -2.9609880201064698e-06 101 -2.9609880094483287e-06
		 102 -2.9609880165537561e-06 103 -2.9609880201064698e-06 104 -2.9609880201064698e-06
		 105 -2.9609880130010424e-06 106 -2.9609880094483287e-06 107 -2.9609880165537561e-06
		 108 -2.9609880201064698e-06 109 -2.9609880130010424e-06 110 -2.9609880165537561e-06
		 111 -2.9609880130010424e-06 112 -2.9609880094483287e-06 113 -2.9609880130010424e-06
		 114 -2.9609880165537561e-06 115 -2.9609880272118971e-06 116 -2.9609880094483287e-06
		 117 -2.9609880165537561e-06 118 -2.9609880165537561e-06 119 -2.9609880094483287e-06
		 120 -2.9609880236591835e-06 121 -2.9609880094483287e-06 122 -2.9609880165537561e-06
		 123 -2.9609880130010424e-06 124 -2.9609880236591835e-06 125 -2.9609880130010424e-06
		 126 -2.9609880165537561e-06 127 -2.9609880165537561e-06 128 -2.9609880058956151e-06
		 129 -2.9609880201064698e-06 130 -2.9609880130010424e-06 131 -2.9609880236591835e-06
		 132 -2.9609880236591835e-06 133 -2.9609880147773993e-06 134 -2.9609880201064698e-06
		 135 -2.9609880147773993e-06 136 -2.9609880112246856e-06;
createNode animCurveTL -n "locator12_translateY";
	rename -uid "3A1D4312-4A06-B0B5-61D0-5680B3DA958F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -8.7286701202392614 1 -8.7286701202392578
		 2 -8.7286701202392578 3 -8.7286701202392543 4 -8.7286701202392578 5 -8.7286701202392631
		 6 -8.7286701202392614 7 -8.7286701202392436 8 -8.7286701202392614 9 -8.7286701202392596
		 10 -8.7286701202392578 11 -8.7286701202392578 12 -8.7286701202392596 13 -8.7286701202392578
		 14 -8.7286701202392578 15 -8.7286701202392614 16 -8.7286701202392596 17 -8.7286701202392614
		 18 -8.7286701202392543 19 -8.7286701202392543 20 -8.7286701202392543 21 -8.7286701202392614
		 22 -8.7286701202392596 23 -8.7286701202392543 24 -8.7286701202392578 25 -8.7286701202392543
		 26 -8.7286701202392614 27 -8.7286701202392543 28 -8.7286701202392578 29 -8.7286701202392578
		 30 -8.728670120239272 31 -8.7286701202392578 32 -8.728670120239272 33 -8.7286701202392578
		 34 -8.728670120239272 35 -8.7286701202392578 36 -8.7286701202392507 37 -8.728670120239272
		 38 -8.7286701202392614 39 -8.7286701202392614 40 -8.728670120239256 41 -8.7286701202392578
		 42 -8.7286701202392596 43 -8.728670120239256 44 -8.7286701202392578 45 -8.7286701202392596
		 46 -8.728670120239256 47 -8.7286701202392596 48 -8.7286701202392543 49 -8.7286701202392614
		 50 -8.728670120239256 51 -8.7286701202392631 52 -8.7286701202392543 53 -8.7286701202392543
		 54 -8.7286701202392543 55 -8.7286701202392507 56 -8.7286701202392543 57 -8.7286701202392614
		 58 -8.7286701202392614 59 -8.7286701202392614 60 -8.7286701202392596 61 -8.7286701202392578
		 62 -8.728670120239256 63 -8.7286701202392631 64 -8.7286701202392578 65 -8.7286701202392543
		 66 -8.728670120239256 67 -8.7286701202392631 68 -8.7286701202392578 69 -8.7286701202392525
		 70 -8.7286701202392543 71 -8.7286701202392614 72 -8.7286701202392614 73 -8.7286701202392525
		 74 -8.7286701202392578 75 -8.7286701202392578 76 -8.7286701202392489 77 -8.7286701202392578
		 78 -8.7286701202392614 79 -8.7286701202392543 80 -8.7286701202392543 81 -8.7286701202392543
		 82 -8.7286701202392543 83 -8.7286701202392614 84 -8.7286701202392507 85 -8.728670120239256
		 86 -8.7286701202392614 87 -8.7286701202392578 88 -8.728670120239256 89 -8.7286701202392543
		 90 -8.7286701202392543 91 -8.7286701202392578 92 -8.7286701202392614 93 -8.7286701202392578
		 94 -8.7286701202392614 95 -8.7286701202392472 96 -8.7286701202392578 97 -8.7286701202392507
		 98 -8.7286701202392596 99 -8.7286701202392543 100 -8.7286701202392578 101 -8.7286701202392543
		 102 -8.7286701202392525 103 -8.7286701202392543 104 -8.728670120239256 105 -8.728670120239256
		 106 -8.7286701202392614 107 -8.7286701202392596 108 -8.7286701202392649 109 -8.7286701202392578
		 110 -8.7286701202392596 111 -8.7286701202392578 112 -8.7286701202392543 113 -8.7286701202392543
		 114 -8.7286701202392578 115 -8.7286701202392578 116 -8.7286701202392507 117 -8.7286701202392489
		 118 -8.7286701202392525 119 -8.7286701202392596 120 -8.728670120239256 121 -8.7286701202392525
		 122 -8.7286701202392543 123 -8.7286701202392489 124 -8.7286701202392614 125 -8.7286701202392489
		 126 -8.7286701202392525 127 -8.7286701202392525 128 -8.7286701202392649 129 -8.7286701202392631
		 130 -8.728670120239256 131 -8.7286701202392489 132 -8.7286701202392578 133 -8.7286701202392543
		 134 -8.7286701202392489 135 -8.7286701202392472 136 -8.728670120239256;
createNode animCurveTL -n "locator12_translateZ";
	rename -uid "B3504636-49DF-337D-E47F-3BAC59CAC8A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 10.710559844970703 1 10.710559844970701
		 2 10.710559844970707 3 10.7105598449707 4 10.710559844970696 5 10.710559844970696
		 6 10.710559844970703 7 10.710559844970703 8 10.710559844970717 9 10.710559844970717
		 10 10.710559844970696 11 10.710559844970717 12 10.71055984497071 13 10.710559844970689
		 14 10.710559844970703 15 10.710559844970703 16 10.710559844970696 17 10.710559844970696
		 18 10.71055984497071 19 10.710559844970696 20 10.71055984497071 21 10.710559844970703
		 22 10.71055984497071 23 10.710559844970703 24 10.710559844970696 25 10.71055984497071
		 26 10.710559844970703 27 10.710559844970696 28 10.71055984497071 29 10.7105598449707
		 30 10.7105598449707 31 10.710559844970714 32 10.710559844970703 33 10.710559844970703
		 34 10.710559844970732 35 10.710559844970703 36 10.710559844970703 37 10.710559844970675
		 38 10.710559844970732 39 10.710559844970717 40 10.710559844970717 41 10.710559844970724
		 42 10.710559844970703 43 10.710559844970746 44 10.710559844970717 45 10.710559844970689
		 46 10.710559844970703 47 10.710559844970696 48 10.710559844970703 49 10.710559844970689
		 50 10.710559844970703 51 10.71055984497071 52 10.710559844970732 53 10.710559844970717
		 54 10.710559844970696 55 10.710559844970732 56 10.710559844970707 57 10.710559844970703
		 58 10.710559844970689 59 10.710559844970703 60 10.710559844970732 61 10.710559844970703
		 62 10.710559844970703 63 10.710559844970646 64 10.710559844970703 65 10.710559844970732
		 66 10.710559844970703 67 10.710559844970703 68 10.710559844970732 69 10.710559844970703
		 70 10.710559844970703 71 10.71055984497076 72 10.710559844970703 73 10.710559844970675
		 74 10.710559844970732 75 10.710559844970703 76 10.710559844970703 77 10.710559844970703
		 78 10.710559844970675 79 10.71055984497076 80 10.710559844970703 81 10.71055984497076
		 82 10.710559844970703 83 10.71055984497076 84 10.710559844970703 85 10.710559844970732
		 86 10.710559844970675 87 10.710559844970732 88 10.710559844970703 89 10.710559844970703
		 90 10.710559844970675 91 10.710559844970703 92 10.710559844970646 93 10.710559844970732
		 94 10.710559844970675 95 10.710559844970675 96 10.710559844970703 97 10.710559844970732
		 98 10.71055984497076 99 10.710559844970732 100 10.710559844970732 101 10.710559844970675
		 102 10.710559844970732 103 10.710559844970703 104 10.710559844970732 105 10.710559844970675
		 106 10.710559844970675 107 10.710559844970732 108 10.710559844970703 109 10.710559844970703
		 110 10.710559844970703 111 10.710559844970675 112 10.710559844970646 113 10.710559844970646
		 114 10.710559844970703 115 10.710559844970732 116 10.710559844970703 117 10.710559844970703
		 118 10.710559844970732 119 10.710559844970732 120 10.710559844970703 121 10.710559844970703
		 122 10.710559844970703 123 10.710559844970703 124 10.710559844970732 125 10.710559844970703
		 126 10.710559844970703 127 10.710559844970703 128 10.710559844970703 129 10.710559844970703
		 130 10.710559844970732 131 10.710559844970732 132 10.710559844970732 133 10.710559844970703
		 134 10.710559844970703 135 10.710559844970675 136 10.710559844970732;
createNode animCurveTA -n "locator12_rotateX";
	rename -uid "0F85A076-4F3E-505C-D694-3E93A6408A6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -5.048831553722267e-06 1 -5.1954102673334975e-06
		 2 -3.5960758850706038e-06 3 0 4 -2.558479081926635e-06 5 -1.4880514527249029e-06
		 6 1.4608058336307296e-05 7 3.7352810977608901e-06 8 0 9 0 10 3.7251415960781738e-06
		 11 -1.8171652982346129e-06 12 0 13 3.5276307244203036e-06 14 1.6287679045490224e-06
		 15 2.0264201339159631e-06 16 2.8449478577385894e-06 17 -1.9097712993243476e-06 18 0
		 19 -2.0815941752516669e-06 20 -1.783525362952787e-06 21 4.8691749725549016e-06 22 -5.7193603424821035e-05
		 23 -0.82393872737884533 24 -2.5856459140777597 25 -2.2460799217224126 26 -1.8542195558547978
		 27 -5.8160533905029279 28 -11.336093902587894 29 -8.5331554412841797 30 -8.0719219113234431e-06
		 31 -5.8476498452364492e-06 32 0 33 -1.1573213669180404e-05 34 -7.5774582910526104e-06
		 35 -3.083001502091065e-06 36 3.1967408631317089e-06 37 0 38 4.7890948735584962e-06
		 39 -5.5821624300733674e-06 40 -4.0093870162963867 41 -2.032380342483521 42 0 43 0
		 44 0 45 -4.206965513731121e-06 46 -2.20135825657053e-06 47 -2.4322334866155874e-06
		 48 -2.6795553367264793e-06 49 -4.2573892642394648e-06 50 -3.0165988391672731e-06
		 51 1.7921993276104331e-06 52 1.2386487924231915e-06 53 3.9041533455019825e-06 54 0
		 55 1.4037682376510931e-06 56 -1.0140434503555293 57 -1.9819204807281492 58 -2.2774024009704594
		 59 -2.0209281444549561 60 -2.0399074554443355 61 -2.2541167736053467 62 -2.1833102703094482
		 63 -2.0030720233917236 64 -2.0631294250488277 65 -1.9080843925476074 66 -1.2762353420257571
		 67 -0.69015473127365146 68 -0.23760320246219635 69 -1.0148794899578208e-05 70 -1.3918534023105165e-05
		 71 -8.4287494246382283e-06 72 -1.5121851220101235e-06 73 0 74 -1.6826296587169056e-06
		 75 1.2936865232404673e-06 76 4.7930079745128751e-06 77 -1.2778845075445135e-06 78 0
		 79 3.2061411729955584e-06 80 -1.3623545100927008e-06 81 1.2860858760177509e-06 82 0
		 83 2.2436558992922077e-06 84 2.3468826384487329e-06 85 0 86 0 87 -4.7022149374242872e-06
		 88 -7.7273662100196816e-06 89 -0.0045704576186835766 90 2.7204682737647099e-06 91 -5.6498000615042107e-30
		 92 -1.402577140652284e-06 93 0 94 1.8785218571792941e-06 95 0 96 -5.6498000615042065e-30
		 97 0 98 -3.8728453546355021e-06 99 0 100 0 101 1.8150776668335309e-06 102 0 103 -1.3525702797778649e-06
		 104 -3.1881811537459726e-06 105 1.4874271982989742e-06 106 0 107 2.2002889181749201e-06
		 108 0 109 2.472250798746245e-06 110 5.6498000615042128e-30 111 0 112 -1.5032140936455105e-06
		 113 2.0150475847913189e-06 114 0 115 -2.5422889393666996e-06 116 0 117 2.7194721496925926e-06
		 118 0 119 1.3988742466608528e-06 120 0 121 0 122 2.2599200246016902e-29 123 1.7140155250672245e-06
		 124 0 125 -1.3608372455564679e-06 126 2.2599200246016969e-29 127 -2.8401182134984992e-06
		 128 2.0685092749772598e-06 129 1.2402723541526939e-06 130 2.2599200246016882e-29
		 131 1.7056737533494015e-06 132 2.6118523237528279e-06 133 -2.4117575776472222e-06
		 134 1.3938736174168302e-06 135 2.3119469005905557e-06 136 -1.2750113000947751e-06;
createNode animCurveTA -n "locator12_rotateY";
	rename -uid "F310D346-4A0E-3DCD-EE13-418743686D1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 1.7266041822949772e-06 2 -1.6848817949721708e-06
		 3 -1.3913776228946524e-06 4 -3.2713905966375032e-06 5 6.89073021931108e-06 6 -6.2120402617438248e-06
		 7 -5.6498000615042058e-30 8 0 9 -2.2471888314612443e-06 10 1.1299600123008406e-29
		 11 1.4701213331136389e-06 12 0 13 -3.1429067348653916e-06 14 -9.5765290097915567e-06
		 15 -7.1376011874235675e-06 16 5.6498000615042044e-30 17 -8.0511972555541416e-06 18 3.1681784093962051e-06
		 19 -6.3318807406176339e-06 20 8.243467163993044e-06 21 1.5684229310863886e-06 22 -1.7869628209155053e-05
		 23 -4.6891964302631104e-06 24 -1.0544526958256032e-05 25 -7.6464939411380345e-06
		 26 0.005000464618206025 27 -0.050231594592332826 28 -0.19734151661396032 29 0 30 -5.6061790019157343e-06
		 31 -6.7155474425817383e-06 32 1.5435718978551449e-06 33 0 34 -7.1595609369978783e-06
		 35 0 36 1.1299600123008409e-29 37 0 38 1.1299600123008406e-29 39 -1.6193578630918637e-05
		 40 -3.9170895433926498e-06 41 0 42 -1.7264337657252327e-06 43 9.9939379651914351e-06
		 44 4.2797339119715616e-05 45 -1.7540530734549975e-06 46 0 47 -1.7378506527165882e-06
		 48 -7.6204391916689946e-06 49 1.3570506780524738e-05 50 -1.3611188478535046e-05 51 2.2897011149325408e-05
		 52 2.8942100470885624e-05 53 1.0892363206949087e-05 54 -1.5270723451976664e-05 55 -9.1846141003770771e-06
		 56 -3.8430567656178014e-05 57 -1.500395956099965e-05 58 -1.3445332115225032e-05 59 -1.8815031580743383e-05
		 60 1.0121871127921622e-05 61 1.7171910258184651e-06 62 5.6149751799239311e-06 63 2.4123651201080065e-06
		 64 0 65 2.9621223746459156e-24 66 3.8911407500563655e-06 67 0 68 1.7067582120944284e-06
		 69 0 70 -1.4440770428336691e-06 71 3.3483827337477128e-06 72 2.0810482510569273e-06
		 73 0 74 0 75 1.7922598090081014e-06 76 4.0188128878071439e-06 77 -1.8868798861149119e-06
		 78 0 79 0 80 0 81 0 82 1.326810433965875e-06 83 -3.8360362850653482e-06 84 0 85 0
		 86 0 87 4.0533359424443924e-06 88 2.4538912839489062e-06 89 1.491738885306404e-06
		 90 -2.5604520033084559e-06 91 2.5320857730548596e-06 92 0 93 -1.6663799442540039e-06
		 94 0 95 -3.341599267514539e-06 96 -1.636365595913958e-06 97 0 98 5.6498000615042044e-30
		 99 0 100 1.6845101526996586e-06 101 -2.4681808099558111e-06 102 4.2038959691126365e-06
		 103 -2.4228947950177826e-06 104 0 105 2.8249000307521022e-30 106 0 107 -2.5959548111131876e-06
		 108 0 109 -4.114342573302566e-06 110 3.3090873330365866e-06 111 0 112 3.3480198453617049e-06
		 113 3.3050544061552505e-06 114 3.5062569168076139e-06 115 -5.7790743994701197e-06
		 116 -6.6905904532177374e-06 117 6.5840181378007409e-06 118 -2.514657126084785e-06
		 119 4.1359780880156904e-06 120 0 121 4.0914378587331166e-06 122 -5.1485176300047905e-06
		 123 -2.3306195089389799e-06 124 -4.0624149733048407e-06 125 4.920573701383546e-06
		 126 6.7178702920500646e-06 127 -4.069831447850448e-06 128 -3.3870562674565012e-06
		 129 -1.5908294699329419e-06 130 -4.3562995415413761e-06 131 4.7927646846801508e-06
		 132 -1.6719969835321537e-06 133 5.6883391152950927e-06 134 2.8249000307521022e-30
		 135 1.7260542790609181e-06 136 -1.6662522739352428e-06;
createNode animCurveTA -n "locator12_rotateZ";
	rename -uid "CF6FEDF0-461F-064C-C3A6-818713AB156E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 1.1299600123008409e-29 2 0 3 2.9429036203509904e-06
		 4 0 5 3.1872477848082772e-06 6 2.6173538572038528e-06 7 -1.3694058225155463e-06 8 -3.7711299682996469e-06
		 9 3.1219642551150173e-06 10 1.6845542631926944e-06 11 2.2814874682808299e-06 12 -1.2714633612631587e-06
		 13 -1.5671907931391618e-06 14 -1.693730837359908e-06 15 2.8922127057739995e-06 16 -1.3491006711774391e-06
		 17 -2.2599200246017034e-29 18 0 19 -2.1064468000986385e-06 20 -1.8891663557951686e-06
		 21 2.6171344416070497e-06 22 3.4365968986094231e-06 23 0 24 3.0485989555018031e-06
		 25 -2.3696978997167539e-23 26 0.16282898187637326 27 -0.57695937156677235 28 -1.0425876379013064
		 29 2.3317068098549498e-06 30 3.9379524423566173e-06 31 -1.4389081570698185e-06 32 0
		 33 0 34 6.0947654674237137e-06 35 0 36 -1.8911806591859206e-06 37 0 38 1.7062762935893261e-06
		 39 -9.0396800984070881e-29 40 0 41 0 42 2.2771366730012232e-06 43 0 44 0 45 -1.1299600123008412e-29
		 46 0 47 -4.2610031414369595e-06 48 2.2390188405552185e-06 49 -9.0396800984069793e-29
		 50 4.8852343752514579e-06 51 0 52 -1.2598444527611719e-06 53 3.1138217764237193e-06
		 54 0 55 0 56 1.4430004284804452e-06 57 1.8246735180582616e-06 58 2.4252242383226994e-06
		 59 3.6221022128302147e-06 60 2.2099602574598975e-06 61 2.4950968509074301e-06 62 -3.1442714316654015e-06
		 63 -1.8531217165218546e-06 64 0 65 -1.5314136589950069e-06 66 -4.1006546780408826e-06
		 67 0 68 0 69 -2.3464679088647253e-06 70 1.49283334849315e-06 71 0 72 0 73 0 74 2.1303662833815906e-06
		 75 0 76 0 77 -2.824900030752104e-30 78 0 79 0 80 2.7717724151443694e-06 81 0 82 0
		 83 -1.1299600123008434e-29 84 -1.6965036593319383e-06 85 0 86 0 87 0 88 3.8375974327209397e-06
		 89 -4.2553078856144566e-06 90 -2.9884918149036829e-06 91 -2.1050429950264524e-06
		 92 0 93 0 94 -3.2175007618207019e-06 95 0 96 -2.8096269488742114e-06 97 0 98 -1.2315173307797522e-06
		 99 -6.0000215853506225e-06 100 0 101 5.6498000615042079e-30 102 0 103 -2.0510569811449386e-06
		 104 0 105 1.2347459232842084e-06 106 0 107 1.9957262793468548e-06 108 0 109 -1.1299600123008435e-29
		 110 -1.5112836990738288e-06 111 0 112 5.6498000615042128e-30 113 1.1299600123008426e-29
		 114 -3.1523318284598645e-06 115 -2.2599200246016927e-29 116 0 117 0 118 0 119 -1.5758832887513565e-06
		 120 0 121 0 122 2.505444854250527e-06 123 0 124 0 125 0 126 -3.3169410471600717e-06
		 127 -2.1756072783318814e-06 128 -1.1299600123008426e-29 129 1.5086183111634455e-06
		 130 2.70491750598012e-06 131 -1.1299600123008447e-29 132 0 133 0 134 1.7589411527296763e-06
		 135 0 136 -2.8249000307521033e-30;
createNode animCurveTU -n "locator12_scaleX";
	rename -uid "E827A7ED-49BB-E7A4-B58B-6FBA11B63E19";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999989 1 0.99999999999999956
		 2 1 3 1 4 0.99999999999999989 5 0.99999999999999989 6 1 7 1 8 1 9 1.0000000000000002
		 10 1 11 1 12 1.0000000000000002 13 1 14 0.99999999999999989 15 1 16 1 17 1.0000000000000002
		 18 1 19 0.99999999999999978 20 1.0000000000000002 21 1.0000000000000002 22 0.99999999999999989
		 23 0.99999999999999989 24 1 25 0.99999999999999989 26 0.99999999999999989 27 1 28 0.99999999999999989
		 29 0.99999999999999978 30 0.99999999999999989 31 1 32 1 33 1 34 1 35 0.99999999999999989
		 36 1 37 0.99999999999999989 38 0.99999999999999989 39 0.99999999999999978 40 1.0000000000000002
		 41 1 42 1 43 1.0000000000000002 44 0.99999999999999967 45 0.99999999999999989 46 0.99999999999999989
		 47 0.99999999999999978 48 1 49 0.99999999999999978 50 0.99999999999999989 51 0.99999999999999978
		 52 1.0000000000000002 53 1 54 0.99999999999999989 55 1.0000000000000004 56 1.0000000000000002
		 57 0.99999999999999989 58 0.99999999999999978 59 1 60 1.0000000000000002 61 0.99999999999999978
		 62 0.99999999999999978 63 0.99999999999999989 64 1 65 0.99999999999999989 66 0.99999999999999978
		 67 0.99999999999999989 68 1.0000000000000002 69 1.0000000000000004 70 1.0000000000000002
		 71 1.0000000000000002 72 0.99999999999999967 73 1.0000000000000002 74 1.0000000000000004
		 75 1.0000000000000002 76 1 77 1 78 0.99999999999999944 79 1 80 1 81 1 82 1 83 1 84 0.99999999999999967
		 85 0.99999999999999989 86 0.99999999999999944 87 0.99999999999999989 88 0.99999999999999956
		 89 0.99999999999999989 90 1 91 0.99999999999999967 92 1 93 1.0000000000000002 94 1
		 95 1 96 0.99999999999999956 97 0.99999999999999978 98 0.99999999999999989 99 0.99999999999999944
		 100 0.99999999999999978 101 0.99999999999999944 102 0.99999999999999956 103 1 104 0.99999999999999967
		 105 0.99999999999999956 106 0.99999999999999956 107 1 108 1.0000000000000002 109 1.0000000000000002
		 110 1.0000000000000002 111 0.99999999999999989 112 0.99999999999999978 113 1 114 0.99999999999999978
		 115 0.99999999999999956 116 0.99999999999999956 117 0.99999999999999956 118 0.99999999999999967
		 119 1.0000000000000002 120 1 121 1.0000000000000002 122 0.99999999999999956 123 0.99999999999999989
		 124 0.99999999999999978 125 0.99999999999999989 126 0.99999999999999978 127 1.0000000000000002
		 128 1.0000000000000004 129 1 130 0.99999999999999967 131 0.99999999999999967 132 1.0000000000000002
		 133 0.99999999999999956 134 0.99999999999999967 135 0.99999999999999944 136 0.99999999999999989;
createNode animCurveTU -n "locator12_scaleY";
	rename -uid "23BDE549-47C7-1382-D6EB-0E8C55EED5EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 0.99999999999999978 3 1 4 1 5 1
		 6 1 7 1 8 0.99999999999999989 9 1 10 1 11 1.0000000000000002 12 1.0000000000000004
		 13 1.0000000000000002 14 0.99999999999999989 15 1.0000000000000004 16 1.0000000000000002
		 17 1.0000000000000004 18 0.99999999999999989 19 0.99999999999999978 20 1 21 1.0000000000000002
		 22 1 23 0.99999999999999967 24 1 25 1 26 1 27 1 28 1 29 0.99999999999999989 30 0.99999999999999989
		 31 1.0000000000000002 32 1 33 1 34 1 35 1 36 0.99999999999999978 37 1.0000000000000002
		 38 1.0000000000000002 39 0.99999999999999989 40 0.99999999999999989 41 0.99999999999999978
		 42 1 43 1 44 0.99999999999999967 45 0.99999999999999989 46 1 47 1.0000000000000002
		 48 0.99999999999999978 49 1 50 0.99999999999999989 51 1.0000000000000002 52 0.99999999999999967
		 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1.0000000000000002 61 0.99999999999999978 62 1
		 63 0.99999999999999989 64 0.99999999999999989 65 0.99999999999999956 66 1 67 0.99999999999999989
		 68 0.99999999999999989 69 0.99999999999999989 70 1 71 1 72 0.99999999999999989 73 0.99999999999999989
		 74 0.99999999999999967 75 1.0000000000000002 76 0.99999999999999989 77 1 78 0.99999999999999989
		 79 1 80 1 81 0.99999999999999989 82 1 83 1 84 0.99999999999999989 85 0.99999999999999967
		 86 0.99999999999999989 87 1 88 0.99999999999999956 89 1 90 1 91 0.99999999999999989
		 92 0.99999999999999978 93 0.99999999999999967 94 0.99999999999999989 95 0.99999999999999989
		 96 1.0000000000000002 97 0.99999999999999967 98 0.99999999999999989 99 0.99999999999999978
		 100 0.99999999999999989 101 0.99999999999999989 102 1 103 1 104 0.99999999999999978
		 105 0.99999999999999978 106 0.99999999999999989 107 1 108 1.0000000000000004 109 1.0000000000000002
		 110 1.0000000000000002 111 0.99999999999999978 112 0.99999999999999989 113 0.99999999999999978
		 114 0.99999999999999978 115 0.99999999999999978 116 0.99999999999999967 117 0.99999999999999978
		 118 0.99999999999999989 119 1 120 0.99999999999999989 121 1.0000000000000002 122 1
		 123 1 124 1 125 0.99999999999999956 126 0.99999999999999967 127 1 128 0.99999999999999978
		 129 1 130 1 131 0.99999999999999989 132 1 133 0.99999999999999978 134 0.99999999999999978
		 135 0.99999999999999989 136 0.99999999999999989;
createNode animCurveTU -n "locator12_scaleZ";
	rename -uid "B46F0401-4D73-8962-325B-738BFEC8914F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999989 1 0.99999999999999978
		 2 1 3 1.0000000000000002 4 1 5 1 6 1 7 1 8 0.99999999999999989 9 1 10 0.99999999999999978
		 11 1.0000000000000002 12 1 13 1 14 1.0000000000000002 15 0.99999999999999989 16 1.0000000000000002
		 17 1.0000000000000002 18 1 19 0.99999999999999967 20 1 21 1.0000000000000002 22 0.99999999999999967
		 23 0.99999999999999978 24 0.99999999999999989 25 0.99999999999999989 26 1 27 0.99999999999999978
		 28 1 29 0.99999999999999989 30 1 31 1.0000000000000004 32 1.0000000000000002 33 0.99999999999999978
		 34 1 35 0.99999999999999989 36 1 37 1.0000000000000002 38 1 39 0.99999999999999989
		 40 1 41 1 42 0.99999999999999978 43 1.0000000000000004 44 0.99999999999999989 45 1
		 46 1.0000000000000002 47 0.99999999999999989 48 1 49 0.99999999999999967 50 0.99999999999999989
		 51 0.99999999999999978 52 1.0000000000000002 53 0.99999999999999989 54 1 55 1.0000000000000002
		 56 0.99999999999999989 57 1 58 0.99999999999999989 59 1.0000000000000002 60 1 61 1.0000000000000002
		 62 1 63 0.99999999999999978 64 0.99999999999999989 65 0.99999999999999978 66 0.99999999999999989
		 67 1 68 1 69 1.0000000000000004 70 1 71 1.0000000000000002 72 1 73 1.0000000000000002
		 74 1.0000000000000009 75 1 76 1 77 1.0000000000000002 78 0.99999999999999933 79 0.99999999999999989
		 80 0.99999999999999978 81 1.0000000000000002 82 1 83 0.99999999999999978 84 0.99999999999999978
		 85 0.99999999999999989 86 0.99999999999999978 87 1 88 0.99999999999999956 89 1 90 1
		 91 0.99999999999999989 92 0.99999999999999989 93 1.0000000000000004 94 1.0000000000000002
		 95 0.99999999999999978 96 0.99999999999999978 97 0.99999999999999978 98 1 99 0.99999999999999944
		 100 0.99999999999999944 101 0.99999999999999967 102 0.99999999999999978 103 1.0000000000000004
		 104 0.99999999999999956 105 0.99999999999999933 106 0.99999999999999978 107 1 108 1.0000000000000007
		 109 1.0000000000000004 110 1.0000000000000007 111 1.0000000000000004 112 0.99999999999999989
		 113 1.0000000000000002 114 0.99999999999999978 115 0.99999999999999967 116 0.99999999999999989
		 117 0.99999999999999967 118 0.99999999999999978 119 1.0000000000000002 120 1 121 1
		 122 0.99999999999999978 123 0.99999999999999989 124 0.99999999999999978 125 0.99999999999999978
		 126 0.99999999999999978 127 1.0000000000000004 128 1.0000000000000002 129 0.99999999999999944
		 130 0.99999999999999967 131 0.99999999999999978 132 1.0000000000000002 133 0.99999999999999978
		 134 0.99999999999999956 135 0.99999999999999967 136 1;
createNode animCurveTU -n "locator13_visibility";
	rename -uid "F327443D-4F17-826F-C2A2-D6ADA5666EC2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1
		 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1
		 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1
		 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTL -n "locator13_translateX";
	rename -uid "67A1C584-4F21-5CF7-5DF6-DC836A1BDB9E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -5.4690499355913857e-06 1 -5.1894539740970913e-06
		 2 -5.7418896313166101e-06 3 -5.6943265582809488e-06 4 -5.9987993936694295e-06 5 -4.3531686220177335e-06
		 6 -6.4749596102586793e-06 7 -5.4690661235312632e-06 8 -5.4690944786273121e-06 9 -5.8329093999276438e-06
		 10 -5.4690300199666808e-06 11 -5.2309603386646586e-06 12 -5.4690649484712139e-06
		 13 -5.9780120018615435e-06 14 -7.0198358521622595e-06 15 -6.6248362617926659e-06
		 16 -5.4690658810585546e-06 17 -6.7728127142174799e-06 18 -4.9560140542581621e-06
		 19 -6.4944217488260847e-06 20 -4.1341744161371707e-06 21 -5.2150379481474829e-06
		 22 -8.3627107478889684e-06 23 -6.2283126691653479e-06 24 -7.1970697561596353e-06
		 25 -6.7063297262137667e-06 26 -4.738984464225382e-05 27 0.0013632786589283796 28 0.0018385034333601169
		 29 -5.5250490635927463e-06 30 -6.3768346514336827e-06 31 -6.5565425444447101e-06
		 32 -5.2190931221218761e-06 33 -5.4690499347032073e-06 34 -6.6283546154011219e-06
		 35 -5.4690499435849915e-06 36 -5.4690722883776743e-06 37 -5.4690499311504936e-06
		 38 -5.4690297730530801e-06 39 -8.0913413000871515e-06 40 -6.1018108681309968e-06
		 41 -5.469049938255921e-06 42 -5.7485914339849842e-06 43 -3.8506913426772371e-06 44 1.4612955112625059e-06
		 45 -5.7530908179614926e-06 46 -5.469049938255921e-06 47 -5.7505173742811166e-06 48 -6.7030319144123496e-06
		 49 -3.2715230986468669e-06 50 -7.6731068361368671e-06 51 -1.7612447038573009e-06
		 52 -7.8235396472337015e-07 53 -3.7051688934752747e-06 54 -7.9418996676849929e-06
		 55 -6.9563514841775032e-06 56 -1.1695418237422928e-05 57 -7.9074515042520943e-06
		 58 -7.6601707235113281e-06 59 -8.5345978959594504e-06 60 -3.8437214726627644e-06
		 61 -5.2070547909011111e-06 62 -4.5410915525678774e-06 63 -5.0681766792237681e-06
		 64 -5.4690499364795642e-06 65 -5.4608109643083935e-06 66 -4.8243557024818529e-06
		 67 -5.469049938255921e-06 68 -5.1926700059823361e-06 69 -5.4690775854737694e-06 70 -5.7028775763967587e-06
		 71 -4.9268328368157199e-06 72 -5.1320574137037056e-06 73 -5.4690499418086347e-06
		 74 -5.4690247779376477e-06 75 -5.1788220929438467e-06 76 -4.8182673815233557e-06
		 77 -5.7745999981761997e-06 78 -5.4690499453613484e-06 79 -5.4690499418086347e-06
		 80 -5.4690172177629393e-06 81 -5.4690499418086347e-06 82 -5.25419418906381e-06 83 -6.0902347378544164e-06
		 84 -5.4690699862192105e-06 85 -5.469049948914062e-06 86 -5.469049938255921e-06 87 -4.8126769272016645e-06
		 88 -5.071636207887309e-06 89 -5.2274819442033049e-06 90 -5.8837095602282119e-06 91 -5.0590439588660274e-06
		 92 -5.4690499400322778e-06 93 -5.7388935594815393e-06 94 -5.4690879593977115e-06
		 95 -6.0101685583902054e-06 96 -5.7340663950355975e-06 97 -5.4690499524667757e-06
		 98 -5.4690644688548673e-06 99 -5.469120804235672e-06 100 -5.1962704326058429e-06
		 101 -5.8687323907236078e-06 102 -4.7882961382583744e-06 103 -5.861423264974519e-06
		 104 -5.4690499418086347e-06 105 -5.4690353508135559e-06 106 -5.4690499311504936e-06
		 107 -5.8893997767484052e-06 108 -5.469049948914062e-06 109 -6.1353019980003864e-06
		 110 -4.9332139582247692e-06 111 -5.469049938255921e-06 112 -4.9268916093581083e-06
		 113 -4.9338491727723977e-06 114 -4.9013048766255451e-06 115 -6.4048787358217396e-06
		 116 -6.5524841872388606e-06 117 -4.4028733761081185e-06 118 -5.8762584913552018e-06
		 119 -4.7993129754786423e-06 120 -5.469049948914062e-06 121 -4.8065069329084054e-06
		 122 -6.3027405374782575e-06 123 -5.8464565491078702e-06 124 -6.1268931617064482e-06
		 125 -4.6722416335853723e-06 126 -4.3812373284879413e-06 127 -6.1281198107110413e-06
		 128 -6.0175295892861413e-06 129 -5.7266415431911355e-06 130 -6.1744511263839286e-06
		 131 -4.692938272654601e-06 132 -5.7398031465538679e-06 133 -4.5479142851689858e-06
		 134 -5.4690291619863274e-06 135 -5.1895430193127368e-06 136 -5.7388728773588582e-06;
createNode animCurveTL -n "locator13_translateY";
	rename -uid "E7D2C281-41A4-9CEF-BBC5-D780B69463DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -8.7293459856372486 1 -8.7293459619011653
		 2 -8.7293462208878196 3 -8.7293468032150034 4 -8.7293463889100487 5 -8.729346562248784
		 6 -8.7293491687567268 7 -8.7293474080839033 8 -8.7293468032147032 9 -8.729346803215023
		 10 -8.7293474064421162 11 -8.7293465089540625 12 -8.7293468032148134 13 -8.7293473744582286
		 14 -8.7293470669676907 15 -8.7293471313614255 16 -8.729347263908668 17 -8.7293464939579142
		 18 -8.7293468032148631 19 -8.7293464661338067 20 -8.7293465144013815 21 -8.729347591700078
		 22 -8.7293375416247248 23 -8.5959276164487814 24 -8.3107841648483323 25 -8.365722668945379
		 26 -8.4291365362569124 27 -7.789109101555141 28 -6.9053190561127948 29 -7.3526336660380665
		 30 -8.7293454960963004 31 -8.7293458562812987 32 -8.7293468032148809 33 -8.7293449291177865
		 34 -8.729345576166935 35 -8.7293463039720223 36 -8.7293473208758954 37 -8.7293468032148809
		 38 -8.7293475787323604 39 -8.7293458992728343 40 -8.0806187133381382 41 -8.4003038589142349
		 42 -8.7293468032149804 43 -8.7293468032148613 44 -8.7293468032148684 45 -8.7293461219640083
		 46 -8.7293464467400597 47 -8.7293464093533011 48 -8.7293463693038227 49 -8.7293461137986892
		 50 -8.7293463147252695 51 -8.729347093432926 52 -8.7293470037942971 53 -8.729347435430169
		 54 -8.7293468032148596 55 -8.7293470305326952 56 -8.5651471311530294 57 -8.4084700347847061
		 58 -8.3606544306147743 59 -8.4021572042080948 60 -8.3990857296456802 61 -8.364422228888202
		 62 -8.3758796469260552 63 -8.4050469425432279 64 -8.3953277030957363 65 -8.4204197499961104
		 66 -8.5226977974603955 67 -8.6175899224537673 68 -8.6908708644949026 69 -8.7293451597795375
		 70 -8.7293445493306816 71 -8.729345438313544 72 -8.729346558340648 73 -8.7293468032148596
		 74 -8.7293465307399636 75 -8.7293470127067323 76 -8.7293475793659336 77 -8.7293465962818821
		 78 -8.7293468032148755 79 -8.7293473223982083 80 -8.7293465826034318 81 -8.7293470114759248
		 82 -8.7293468032148613 83 -8.7293471665391031 84 -8.7293471832549319 85 -8.7293468032148631
		 86 -8.7293468032148738 87 -8.7293460417662718 88 -8.7293455518914875 89 -8.728606690610146
		 90 -8.729347243751084 91 -8.7293468032147903 92 -8.7293465760899132 93 -8.7293468032148667
		 94 -8.7293471074113373 95 -8.7293468032148471 96 -8.7293468032147299 97 -8.729346803214856
		 98 -8.7293461760693773 99 -8.7293468032145949 100 -8.7293468032148667 101 -8.7293470971376959
		 102 -8.7293468032148596 103 -8.7293465841876063 104 -8.7293462869398564 105 -8.7293470440799936
		 106 -8.7293468032148702 107 -8.7293471595166157 108 -8.7293468032148738 109 -8.7293472035563937
		 110 -8.7293468032148169 111 -8.7293468032148631 112 -8.7293465597933526 113 -8.7293471295196277
		 114 -8.7293468032147601 115 -8.7293463915317879 116 -8.729346803214856 117 -8.7293472435899275
		 118 -8.7293468032148631 119 -8.7293470297401576 120 -8.7293468032148613 121 -8.7293468032148542
		 122 -8.7293468032150123 123 -8.7293470807722873 124 -8.7293468032148702 125 -8.7293465828489971
		 126 -8.7293468032147796 127 -8.7293463433029626 128 -8.7293471381769141 129 -8.7293470040572423
		 130 -8.7293468032150177 131 -8.7293470794214691 132 -8.7293472261626306 133 -8.7293464126692459
		 134 -8.729347028930496 135 -8.7293471775977203 136 -8.7293465967471526;
createNode animCurveTL -n "locator13_translateZ";
	rename -uid "39C9719F-4934-20D2-0094-9185A619C124";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 19.98869609838723 1 19.988696098389028
		 2 19.988696098370017 3 19.988696098327576 4 19.988696098357686 5 19.988696098345443
		 6 19.988696098154485 7 19.988696098283491 8 19.988696098327651 9 19.988696098327551
		 10 19.988696098283633 11 19.988696098349166 12 19.98869609832763 13 19.988696098285786
		 14 19.988696098307855 15 19.988696098303308 16 19.988696098294021 17 19.988696098349742
		 18 19.988696098327772 19 19.988696098351859 20 19.98869609834896 21 19.988696098270154
		 22 19.988696098997245 23 19.987746499417142 24 19.979280583132528 25 19.981594411908084
		 26 19.983859819836994 27 19.941000572223153 28 19.807768224452857 29 19.886089065155506
		 30 19.988696098422583 31 19.988696098396307 32 19.988696098327701 33 19.988696098464132
		 34 19.988696098416682 35 19.988696098364031 36 19.988696098289864 37 19.988696098327608
		 38 19.988696098271049 39 19.988696098392452 40 19.966036178891414 41 19.98288363095768
		 42 19.988696098327551 43 19.988696098327978 44 19.988696098326926 45 19.988696098377204
		 46 19.988696098353614 47 19.98869609835625 48 19.988696098358858 49 19.988696098378213
		 50 19.988696098362396 51 19.98869609830674 52 19.988696098313113 53 19.988696098281821
		 54 19.988696098326642 55 19.988696098310562 56 19.987255001421971 57 19.983169224159106
		 58 19.981394610294174 59 19.982949079110753 60 19.982840412513895 61 19.981543410235162
		 62 19.981986470668573 63 19.983050385953476 64 19.98270607045103 65 19.983574160876941
		 66 19.986409574025629 67 19.988031159042009 68 19.988619125338715 69 19.988696098447377
		 70 19.988696098491687 71 19.988696098427255 72 19.988696098345542 73 19.98869609832758
		 74 19.988696098347503 75 19.98869609831246 76 19.988696098271134 77 19.988696098342643
		 78 19.988696098327637 79 19.988696098289807 80 19.988696098343723 81 19.988696098312488
		 82 19.988696098327665 83 19.988696098300977 84 19.988696098299926 85 19.988696098327665
		 86 19.988696098327637 87 19.988696098383315 88 19.988696098418899 89 19.988696122787161
		 90 19.98869609829535 91 19.98869609832775 92 19.988696098344178 93 19.98869609832758
		 94 19.988696098305411 95 19.988696098327438 96 19.988696098327551 97 19.988696098327665
		 98 19.988696098373424 99 19.988696098327694 100 19.988696098327722 101 19.988696098306065
		 102 19.988696098327779 103 19.988696098343524 104 19.988696098365295 105 19.988696098310015
		 106 19.988696098327637 107 19.988696098301546 108 19.988696098327665 109 19.98869609829822
		 110 19.988696098327779 111 19.988696098327637 112 19.988696098345457 113 19.988696098303933
		 114 19.988696098327779 115 19.988696098357366 116 19.988696098327296 117 19.988696098295719
		 118 19.988696098327523 119 19.988696098311266 120 19.988696098327637 121 19.988696098327807
		 122 19.988696098327381 123 19.988696098307287 124 19.988696098327466 125 19.988696098343866
		 126 19.988696098327893 127 19.988696098361004 128 19.988696098303024 129 19.988696098312914
		 130 19.988696098327466 131 19.988696098307685 132 19.988696098296714 133 19.988696098356286
		 134 19.988696098311152 135 19.988696098300352 136 19.988696098342672;
createNode animCurveTA -n "locator13_rotateX";
	rename -uid "8023C52B-4EE6-01EB-6050-E99E6A460DFC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -5.0488315528777353e-06 1 -5.1954102778721951e-06
		 2 -3.5960758842736242e-06 3 0 4 -2.558479087702462e-06 5 -1.4880514507703183e-06
		 6 1.4608058337150199e-05 7 3.7352810852198499e-06 8 0 9 0 10 3.7251415961661436e-06
		 11 -1.8171652980476931e-06 12 0 13 3.5276307280023831e-06 14 1.6287678998272724e-06
		 15 2.0264201337825605e-06 16 2.8449478566406962e-06 17 -1.9097713029932133e-06 18 0
		 19 -2.081594183923237e-06 20 -1.7835253575740166e-06 21 4.8691749657672615e-06 22 -5.7193603422924136e-05
		 23 -0.82393872737884399 24 -2.585645914077765 25 -2.2460799217224063 26 -1.8542195558547956
		 27 -5.8160533905029226 28 -11.336093902587901 29 -8.5331554412841815 30 -8.0719218987412531e-06
		 31 -5.8476498133157526e-06 32 0 33 -1.157321368850304e-05 34 -7.5774582914788484e-06
		 35 -3.0830015129540043e-06 36 3.1967408518346196e-06 37 0 38 4.7890948746193558e-06
		 39 -5.5821624290072291e-06 40 -4.0093870162963876 41 -2.0323803424835112 42 0 43 0
		 44 0 45 -4.2069655080857591e-06 46 -2.2013582563169559e-06 47 -2.4322334927678088e-06
		 48 -2.6795553468450561e-06 49 -4.2573892559735523e-06 50 -3.0165988430021665e-06
		 51 1.7921993455160061e-06 52 1.2386487788421701e-06 53 3.9041533231360877e-06 54 0
		 55 1.4037681882416168e-06 56 -1.0140434503555584 57 -1.981920480728151 58 -2.277402400970443
		 59 -2.0209281444549561 60 -2.0399074554443319 61 -2.2541167736053351 62 -2.1833102703094514
		 63 -2.0030720233916997 64 -2.063129425048833 65 -1.9080843925476041 66 -1.2762353420257626
		 67 -0.69015473127363713 68 -0.23760320246219677 69 -1.0148794928916997e-05 70 -1.391853402387336e-05
		 71 -8.4287494091940614e-06 72 -1.5121851087676749e-06 73 0 74 -1.6826296556905573e-06
		 75 1.2936865008487435e-06 76 4.793007959249255e-06 77 -1.2778845122618183e-06 78 0
		 79 3.206141169444765e-06 80 -1.3623545255439779e-06 81 1.2860858571676159e-06 82 0
		 83 2.2436559017849906e-06 84 2.3468826021779872e-06 85 0 86 0 87 -4.7022149288154882e-06
		 88 -7.7273661933190074e-06 89 -0.0045704576187224335 90 2.7204682407370496e-06 91 -5.6498000615042107e-30
		 92 -1.4025771009147715e-06 93 0 94 1.8785218735804132e-06 95 0 96 -5.6498000615042065e-30
		 97 0 98 -3.8728453461673936e-06 99 0 100 0 101 1.8150776642516347e-06 102 0 103 -1.3525703016652075e-06
		 104 -3.1881811605915387e-06 105 1.4874272040981162e-06 106 0 107 2.2002889259923257e-06
		 108 0 109 2.4722508097229606e-06 110 5.6498000615042128e-30 111 0 112 -1.5032140947907554e-06
		 113 2.0150475766770957e-06 114 0 115 -2.5422889150008728e-06 116 0 117 2.7194721334265103e-06
		 118 0 119 1.3988742384258988e-06 120 0 121 0 122 2.2599200246016902e-29 123 1.7140154907446714e-06
		 124 0 125 -1.3608372789071395e-06 126 0 127 -2.8401182356433456e-06 128 2.0685093036425284e-06
		 129 1.2402723675047796e-06 130 2.2599200246016882e-29 131 1.7056737104347657e-06
		 132 2.6118523216974191e-06 133 -2.411757585222943e-06 134 1.3938736021838702e-06
		 135 2.3119468661567619e-06 136 -1.2750113049160274e-06;
createNode animCurveTA -n "locator13_rotateY";
	rename -uid "0A7336B5-4423-D382-DB02-CD848CB020EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 1.7266041758700703e-06 2 -1.6848817995030375e-06
		 3 -1.3913776213455195e-06 4 -3.2713906011802052e-06 5 6.890730215742703e-06 6 -6.2120402683878326e-06
		 7 -5.6498000615042058e-30 8 0 9 -2.2471888279329764e-06 10 1.1299600123008406e-29
		 11 1.4701213377395958e-06 12 0 13 -3.1429067292267369e-06 14 -9.5765289953783221e-06
		 15 -7.1376011918064125e-06 16 0 17 -8.0511972517701693e-06 18 3.1681784116703662e-06
		 19 -6.3318807460430993e-06 20 8.2434671605826064e-06 21 1.5684229289323152e-06 22 -1.7869628202876638e-05
		 23 -4.6891964230334614e-06 24 -1.054452696739115e-05 25 -7.646493945158927e-06 26 0.0050004646182164811
		 27 -0.050231594592331993 28 -0.19734151661396548 29 0 30 -5.6061790032436041e-06
		 31 -6.715547437796817e-06 32 1.5435719018800234e-06 33 0 34 -7.1595609403963557e-06
		 35 0 36 1.1299600123008409e-29 37 0 38 1.1299600123008406e-29 39 -1.619357863356428e-05
		 40 -3.9170895517406711e-06 41 0 42 -1.7264337760627334e-06 43 9.9939379945532986e-06
		 44 4.27973391123611e-05 45 -1.7540530704445166e-06 46 0 47 -1.7378506728834322e-06
		 48 -7.6204391910693918e-06 49 1.3570506770849474e-05 50 -1.3611188472905291e-05 51 2.2897011131843725e-05
		 52 2.8942100483023955e-05 53 1.0892363234880813e-05 54 -1.5270723441409014e-05 55 -9.1846140916552906e-06
		 56 -3.8430567643251207e-05 57 -1.5003959551711644e-05 58 -1.3445332129278216e-05
		 59 -1.8815031597126803e-05 60 1.0121871128019236e-05 61 1.7171910141861982e-06 62 5.6149751651491261e-06
		 63 2.4123651133094401e-06 64 0 65 0 66 3.8911407690368373e-06 67 0 68 1.7067582078136614e-06
		 69 -4.5198400492033635e-29 70 -1.4440770480725327e-06 71 3.3483827321163129e-06 72 2.0810482510053345e-06
		 73 0 74 0 75 1.7922598259621873e-06 76 4.0188128902082917e-06 77 -1.8868798892304801e-06
		 78 0 79 0 80 0 81 0 82 1.3268104329017488e-06 83 -3.8360362791427744e-06 84 0 85 0
		 86 0 87 4.0533359462778289e-06 88 2.4538912778788352e-06 89 1.491738885680524e-06
		 90 -2.5604520167817774e-06 91 2.5320857826504105e-06 92 0 93 -1.6663799531433399e-06
		 94 1.1299600123008409e-29 95 -3.3415992895449092e-06 96 -1.6363656008989436e-06 97 0
		 98 5.6498000615042044e-30 99 0 100 1.68451013896629e-06 101 -2.4681808105394045e-06
		 102 4.2038959715444512e-06 103 -2.4228947991725762e-06 104 0 105 2.8249000307521022e-30
		 106 0 107 -2.5959548208546234e-06 108 0 109 -4.1143425755169634e-06 110 3.3090873319938556e-06
		 111 0 112 3.3480198450651108e-06 113 3.3050544172827541e-06 114 3.5062569059666929e-06
		 115 -5.7790744192938077e-06 116 -6.6905904521555928e-06 117 6.5840181322567019e-06
		 118 -2.5146571270027192e-06 119 4.1359780697376808e-06 120 0 121 4.0914378427839503e-06
		 122 -5.1485176188496927e-06 123 -2.3306195321570127e-06 124 -4.0624149791629027e-06
		 125 4.9205736975010426e-06 126 6.717870289116776e-06 127 -4.069831455409398e-06 128 -3.3870562620869743e-06
		 129 -1.5908294707119647e-06 130 -4.3562995596117118e-06 131 4.7927646660982258e-06
		 132 -1.67199698287048e-06 133 5.6883390989314173e-06 134 2.8249000307521022e-30 135 1.7260542834100833e-06
		 136 -1.666252284088149e-06;
createNode animCurveTA -n "locator13_rotateZ";
	rename -uid "42985A1A-49EE-D1AB-56C7-EC8E73D534FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 1.1299600123008409e-29 2 -1.1299600123008412e-29
		 3 2.9429036161836683e-06 4 -1.1299600123008428e-29 5 3.1872477795095347e-06 6 2.6173538583278418e-06
		 7 -1.3694058200436147e-06 8 -3.7711299686281411e-06 9 3.1219642603780595e-06 10 1.6845542588256922e-06
		 11 2.2814874640641885e-06 12 -1.2714633635681683e-06 13 -1.5671907947709371e-06 14 -1.6937308351483931e-06
		 15 2.8922127083465249e-06 16 -1.3491006719347156e-06 17 0 18 0 19 -2.1064468018492239e-06
		 20 -1.8891663536134084e-06 21 2.617134443986217e-06 22 3.4365968976744541e-06 23 0
		 24 3.0485989593548764e-06 25 -2.3696978997167539e-23 26 0.16282898187637079 27 -0.57695937156677379
		 28 -1.042587637901305 29 2.3317068111359813e-06 30 3.9379524478820715e-06 31 -1.4389081612830066e-06
		 32 0 33 0 34 6.094765469451115e-06 35 0 36 -1.8911806578328151e-06 37 0 38 1.7062762941005355e-06
		 39 -9.0396800984070881e-29 40 0 41 0 42 2.2771366682431635e-06 43 0 44 0 45 0 46 0
		 47 -4.261003142311538e-06 48 2.2390188383515898e-06 49 0 50 4.8852343724480753e-06
		 51 4.519840049203724e-29 52 -1.2598444546261533e-06 53 3.1138217789606702e-06 54 0
		 55 0 56 1.4430004112298535e-06 57 1.8246735142134861e-06 58 2.4252242338432232e-06
		 59 3.6221022042044991e-06 60 2.2099602443544149e-06 61 2.4950968467108151e-06 62 -3.1442714323859872e-06
		 63 -1.8531217186933588e-06 64 0 65 -1.5314136602532987e-06 66 -4.1006546674933149e-06
		 67 0 68 0 69 -2.3464679126554815e-06 70 1.492833340374855e-06 71 0 72 5.6498000615042065e-30
		 73 0 74 2.1303662899841667e-06 75 -2.8249000307521033e-30 76 0 77 0 78 0 79 0 80 2.7717724040849393e-06
		 81 0 82 0 83 -1.1299600123008434e-29 84 -1.6965036757969336e-06 85 0 86 0 87 0 88 3.8375974286224649e-06
		 89 -4.2553078762955484e-06 90 -2.9884918119762397e-06 91 -2.1050430106047465e-06
		 92 0 93 0 94 -3.2175007594287816e-06 95 0 96 -2.8096269682194643e-06 97 0 98 -1.2315173456764923e-06
		 99 -6.0000215734728853e-06 100 0 101 0 102 0 103 -2.0510569772135792e-06 104 0 105 1.2347459047679407e-06
		 106 0 107 1.9957262725295822e-06 108 0 109 -1.1299600123008435e-29 110 -1.5112837140426492e-06
		 111 0 112 0 113 1.1299600123008426e-29 114 -3.1523318484047253e-06 115 0 116 0 117 0
		 118 0 119 -1.5758832920625891e-06 120 0 121 0 122 2.5054448303673865e-06 123 5.6498000615042079e-30
		 124 0 125 0 126 -3.3169410608593609e-06 127 -2.1756072889212616e-06 128 0 129 1.5086182980989524e-06
		 130 2.7049175220080497e-06 131 0 132 5.6498000615042058e-30 133 0 134 1.7589411402964725e-06
		 135 0 136 -2.8249000307521033e-30;
createNode animCurveTU -n "locator13_scaleX";
	rename -uid "ABB8C6BF-4C95-80D3-300E-F1903A2485F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999989 1 0.99999999999999956
		 2 1 3 1 4 0.99999999999999989 5 0.99999999999999989 6 1 7 1 8 0.99999999999999989
		 9 1.0000000000000002 10 0.99999999999999989 11 1 12 1.0000000000000002 13 1 14 0.99999999999999978
		 15 1.0000000000000002 16 1 17 1.0000000000000002 18 1 19 0.99999999999999967 20 1.0000000000000002
		 21 1.0000000000000002 22 0.99999999999999989 23 0.99999999999999989 24 1 25 0.99999999999999989
		 26 1 27 1 28 1 29 0.99999999999999989 30 0.99999999999999989 31 1 32 1 33 1 34 1
		 35 0.99999999999999989 36 1 37 0.99999999999999989 38 0.99999999999999989 39 0.99999999999999978
		 40 1 41 1 42 1 43 1.0000000000000002 44 0.99999999999999978 45 1 46 0.99999999999999989
		 47 0.99999999999999978 48 1 49 0.99999999999999978 50 0.99999999999999989 51 0.99999999999999978
		 52 1 53 0.99999999999999989 54 0.99999999999999978 55 1.0000000000000004 56 1.0000000000000002
		 57 1 58 0.99999999999999978 59 1 60 1.0000000000000002 61 0.99999999999999978 62 0.99999999999999978
		 63 0.99999999999999989 64 1 65 0.99999999999999989 66 0.99999999999999978 67 0.99999999999999989
		 68 1.0000000000000002 69 1.0000000000000004 70 1 71 1.0000000000000004 72 0.99999999999999978
		 73 1.0000000000000002 74 1.0000000000000004 75 1.0000000000000002 76 1 77 1 78 0.99999999999999944
		 79 1 80 1 81 1 82 1.0000000000000002 83 1 84 0.99999999999999967 85 0.99999999999999989
		 86 0.99999999999999944 87 0.99999999999999989 88 0.99999999999999956 89 1 90 1 91 0.99999999999999956
		 92 1 93 1 94 0.99999999999999989 95 1 96 0.99999999999999933 97 0.99999999999999978
		 98 0.99999999999999989 99 0.99999999999999944 100 0.99999999999999978 101 0.99999999999999956
		 102 0.99999999999999967 103 1 104 0.99999999999999967 105 0.99999999999999956 106 0.99999999999999956
		 107 1 108 1.0000000000000002 109 1.0000000000000002 110 1.0000000000000002 111 0.99999999999999989
		 112 1 113 1 114 1 115 0.99999999999999956 116 0.99999999999999956 117 0.99999999999999944
		 118 0.99999999999999967 119 1.0000000000000004 120 1 121 1.0000000000000002 122 0.99999999999999956
		 123 1 124 0.99999999999999978 125 0.99999999999999989 126 0.99999999999999978 127 1.0000000000000002
		 128 1.0000000000000002 129 1 130 0.99999999999999978 131 0.99999999999999967 132 1.0000000000000002
		 133 0.99999999999999967 134 0.99999999999999944 135 0.99999999999999933 136 0.99999999999999989;
createNode animCurveTU -n "locator13_scaleY";
	rename -uid "131EDD96-4D67-8902-DB21-1E8FE763A122";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 0.99999999999999978 3 1.0000000000000002
		 4 1 5 1 6 1 7 1 8 0.99999999999999989 9 1 10 0.99999999999999989 11 1.0000000000000002
		 12 1.0000000000000002 13 1.0000000000000002 14 0.99999999999999978 15 1.0000000000000004
		 16 1 17 1.0000000000000004 18 0.99999999999999989 19 0.99999999999999978 20 1 21 1.0000000000000002
		 22 1 23 0.99999999999999967 24 1 25 0.99999999999999989 26 1 27 1 28 1 29 0.99999999999999989
		 30 0.99999999999999989 31 1.0000000000000004 32 1 33 1 34 0.99999999999999989 35 0.99999999999999978
		 36 0.99999999999999978 37 1.0000000000000002 38 1 39 1 40 0.99999999999999989 41 0.99999999999999967
		 42 1 43 1 44 0.99999999999999967 45 0.99999999999999989 46 1 47 1.0000000000000002
		 48 0.99999999999999967 49 0.99999999999999989 50 0.99999999999999989 51 1.0000000000000002
		 52 0.99999999999999978 53 1 54 1 55 1 56 0.99999999999999989 57 1.0000000000000002
		 58 0.99999999999999978 59 1 60 1.0000000000000002 61 0.99999999999999978 62 1 63 0.99999999999999978
		 64 0.99999999999999989 65 0.99999999999999944 66 1 67 0.99999999999999989 68 1 69 0.99999999999999978
		 70 0.99999999999999989 71 1.0000000000000002 72 0.99999999999999989 73 0.99999999999999989
		 74 0.99999999999999967 75 1.0000000000000002 76 0.99999999999999978 77 1.0000000000000002
		 78 0.99999999999999989 79 0.99999999999999989 80 1 81 0.99999999999999989 82 1 83 1
		 84 0.99999999999999978 85 0.99999999999999967 86 0.99999999999999989 87 1 88 0.99999999999999967
		 89 1.0000000000000002 90 1 91 1 92 0.99999999999999967 93 0.99999999999999967 94 0.99999999999999978
		 95 0.99999999999999989 96 1.0000000000000002 97 0.99999999999999967 98 0.99999999999999989
		 99 0.99999999999999978 100 0.99999999999999989 101 0.99999999999999978 102 1 103 1
		 104 0.99999999999999989 105 0.99999999999999978 106 0.99999999999999989 107 1 108 1.0000000000000004
		 109 1.0000000000000002 110 1.0000000000000002 111 0.99999999999999978 112 0.99999999999999978
		 113 0.99999999999999978 114 0.99999999999999967 115 0.99999999999999978 116 0.99999999999999967
		 117 0.99999999999999989 118 0.99999999999999989 119 1 120 0.99999999999999989 121 1.0000000000000002
		 122 1 123 1 124 1 125 0.99999999999999956 126 0.99999999999999978 127 1 128 0.99999999999999978
		 129 1 130 1 131 0.99999999999999989 132 0.99999999999999989 133 0.99999999999999967
		 134 0.99999999999999989 135 1 136 0.99999999999999989;
createNode animCurveTU -n "locator13_scaleZ";
	rename -uid "200AEC66-4058-DBC6-298F-268AE4A859A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999967 2 1 3 1 4 1 5 1
		 6 1 7 0.99999999999999989 8 0.99999999999999989 9 1.0000000000000002 10 0.99999999999999989
		 11 1.0000000000000002 12 1 13 1 14 1.0000000000000002 15 1 16 1.0000000000000002
		 17 1 18 1 19 0.99999999999999967 20 1 21 1.0000000000000002 22 0.99999999999999978
		 23 1 24 0.99999999999999978 25 0.99999999999999989 26 1 27 0.99999999999999989 28 1
		 29 0.99999999999999989 30 1 31 1.0000000000000004 32 1 33 0.99999999999999989 34 1
		 35 0.99999999999999989 36 1 37 1.0000000000000002 38 1 39 0.99999999999999989 40 1
		 41 1 42 0.99999999999999989 43 1.0000000000000004 44 0.99999999999999989 45 1 46 1
		 47 0.99999999999999989 48 0.99999999999999989 49 0.99999999999999967 50 0.99999999999999978
		 51 0.99999999999999978 52 1 53 0.99999999999999978 54 1 55 1.0000000000000004 56 0.99999999999999989
		 57 1.0000000000000002 58 0.99999999999999967 59 1.0000000000000002 60 1 61 1.0000000000000002
		 62 1 63 1 64 0.99999999999999989 65 0.99999999999999978 66 0.99999999999999978 67 1.0000000000000002
		 68 1 69 1.0000000000000004 70 1 71 1.0000000000000002 72 1 73 1.0000000000000002
		 74 1.0000000000000009 75 1 76 1 77 1.0000000000000002 78 0.99999999999999933 79 0.99999999999999989
		 80 0.99999999999999978 81 1.0000000000000002 82 1 83 0.99999999999999978 84 0.99999999999999978
		 85 0.99999999999999989 86 0.99999999999999978 87 1 88 0.99999999999999956 89 1 90 1
		 91 0.99999999999999989 92 0.99999999999999967 93 1.0000000000000004 94 1.0000000000000002
		 95 0.99999999999999978 96 0.99999999999999978 97 0.99999999999999978 98 0.99999999999999978
		 99 0.99999999999999944 100 0.99999999999999944 101 0.99999999999999967 102 0.99999999999999989
		 103 1.0000000000000002 104 0.99999999999999944 105 0.99999999999999933 106 0.99999999999999978
		 107 0.99999999999999989 108 1.0000000000000007 109 1.0000000000000002 110 1.0000000000000007
		 111 1.0000000000000004 112 0.99999999999999989 113 1.0000000000000002 114 0.99999999999999978
		 115 0.99999999999999967 116 0.99999999999999989 117 0.99999999999999967 118 0.99999999999999978
		 119 1.0000000000000002 120 1 121 1.0000000000000002 122 0.99999999999999978 123 0.99999999999999989
		 124 0.99999999999999956 125 0.99999999999999978 126 0.99999999999999978 127 1.0000000000000004
		 128 1.0000000000000002 129 0.99999999999999933 130 0.99999999999999967 131 0.99999999999999989
		 132 1.0000000000000002 133 0.99999999999999978 134 0.99999999999999956 135 0.99999999999999978
		 136 1;
createNode animCurveTU -n "locator14_visibility";
	rename -uid "E94EC70F-4456-61FD-2D1E-5AB785665952";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1
		 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1
		 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1
		 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTL -n "locator14_translateX";
	rename -uid "C10AED6B-47D9-AEA0-E069-CD8735489854";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -2.3604382022313075e-06 1 -2.3604381986785938e-06
		 2 -2.3604382022313075e-06 3 -2.3604382040076644e-06 4 -2.3604382057840212e-06 5 -2.3604382040076644e-06
		 6 -2.3604382004549507e-06 7 -2.3604382004549507e-06 8 -2.3604381986785938e-06 9 -2.3604382022313075e-06
		 10 -2.3604382022313075e-06 11 -2.3604382004549507e-06 12 -2.3604382022313075e-06
		 13 -2.3604382022313075e-06 14 -2.3604382004549507e-06 15 -2.3604382066721996e-06
		 16 -2.360438205339932e-06 17 -2.3604382004549507e-06 18 -2.3604382040076644e-06 19 -2.3604382040076644e-06
		 20 -2.3604382057840212e-06 21 -2.3604381986785938e-06 22 -2.3604381880204528e-06
		 23 -2.3604382022313075e-06 24 -2.3604382022313075e-06 25 -2.3604381880204528e-06
		 26 -2.3604382022313075e-06 27 -2.3604382093367349e-06 28 -2.3604381880204528e-06
		 29 -2.3604382022313075e-06 30 -2.3604381951258802e-06 31 -2.3604382093367349e-06
		 32 -2.3604382022313075e-06 33 -2.3604382022313075e-06 34 -2.3604382022313075e-06
		 35 -2.3604382022313075e-06 36 -2.3604382093367349e-06 37 -2.3604382022313075e-06
		 38 -2.3604382093367349e-06 39 -2.3604382093367349e-06 40 -2.3604382093367349e-06
		 41 -2.3604382022313075e-06 42 -2.3604382164421622e-06 43 -2.3604382022313075e-06
		 44 -2.3604382022313075e-06 45 -2.3604381880204528e-06 46 -2.3604382022313075e-06
		 47 -2.3604382022313075e-06 48 -2.3604381880204528e-06 49 -2.3604382022313075e-06
		 50 -2.3604382022313075e-06 51 -2.3604382022313075e-06 52 -2.3604382022313075e-06
		 53 -2.3604382164421622e-06 54 -2.3604382111130917e-06 55 -2.3604381844677391e-06
		 56 -2.3604382022313075e-06 57 -2.3604382022313075e-06 58 -2.3604382306530169e-06
		 59 -2.3604382590747264e-06 60 -2.3604382306530169e-06 61 -2.3604382590747264e-06
		 62 -2.3604382306530169e-06 63 -2.3604382022313075e-06 64 -2.3604381738095981e-06
		 65 -2.3604381738095981e-06 66 -2.3604382022313075e-06 67 -2.3604382022313075e-06
		 68 -2.3604381738095981e-06 69 -2.3604382022313075e-06 70 -2.3604381738095981e-06
		 71 -2.3604382022313075e-06 72 -2.3604382306530169e-06 73 -2.3604382306530169e-06
		 74 -2.3604382306530169e-06 75 -2.3604382306530169e-06 76 -2.3604381738095981e-06
		 77 -2.3604381453878887e-06 78 -2.3604382306530169e-06 79 -2.3604381453878887e-06
		 80 -2.3604381738095981e-06 81 -2.3604381738095981e-06 82 -2.3604382022313075e-06
		 83 -2.3604382306530169e-06 84 -2.3604382022313075e-06 85 -2.3604382022313075e-06
		 86 -2.3604382874964358e-06 87 -2.3604382306530169e-06 88 -2.3604382022313075e-06
		 89 -2.4408707872680679e-06 90 -2.3604382022313075e-06 91 -2.3604382306530169e-06
		 92 -2.2783181918839546e-06 93 -2.3604382306530169e-06 94 -2.3604382022313075e-06
		 95 -2.3604382022313075e-06 96 -2.3604381738095981e-06 97 -2.3604382022313075e-06
		 98 -2.3604382306530169e-06 99 -2.3604382306530169e-06 100 -2.3604382306530169e-06
		 101 -2.3604382022313075e-06 102 -2.3604382022313075e-06 103 -2.3604381738095981e-06
		 104 -2.3604382022313075e-06 105 -2.3604382022313075e-06 106 -2.3604382022313075e-06
		 107 -2.3604382022313075e-06 108 -2.3604382022313075e-06 109 -2.3604381738095981e-06
		 110 -2.3604382306530169e-06 111 -2.3604382306530169e-06 112 -2.3604381738095981e-06
		 113 -2.3604382306530169e-06 114 -2.3604382022313075e-06 115 -2.3604382306530169e-06
		 116 -2.3604381738095981e-06 117 -2.3604382306530169e-06 118 -2.3604382306530169e-06
		 119 -2.3604381738095981e-06 120 -2.3604382022313075e-06 121 -2.3604381738095981e-06
		 122 -2.3604382022313075e-06 123 -2.3604381738095981e-06 124 -2.3604381738095981e-06
		 125 -2.3604382022313075e-06 126 -2.3604381453878887e-06 127 -2.3591028934788483e-06
		 128 -2.3604382022313075e-06 129 -2.3604382022313075e-06 130 -2.3604381738095981e-06
		 131 -2.3604382306530169e-06 132 -2.2575757441245514e-06 133 -2.3604381453878887e-06
		 134 -2.2181546910360339e-06 135 -2.3604382022313075e-06 136 -2.2299233251033002e-06;
createNode animCurveTL -n "locator14_translateY";
	rename -uid "6ACD7FC1-4A63-6CF3-25F3-6DA9FA3A971D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -8.7286691665649414 1 -8.7286691665649432
		 2 -8.7286691665649414 3 -8.7286691665649432 4 -8.7286691665649396 5 -8.7286691665649414
		 6 -8.7286691665649379 7 -8.728669166564945 8 -8.7286691665649396 9 -8.728669166564945
		 10 -8.7286691665649361 11 -8.7286691665649379 12 -8.7286691665649396 13 -8.7286691665649432
		 14 -8.7286691665649379 15 -8.7286691665649414 16 -8.7286691665649343 17 -8.7286691665649414
		 18 -8.7286691665649414 19 -8.7286691665649485 20 -8.7286691665649379 21 -8.7286691665649343
		 22 -8.728669166564945 23 -8.7286691665649414 24 -8.7286691665649414 25 -8.7286691665649414
		 26 -8.7286691665649414 27 -8.7286691665649467 28 -8.7286691665649432 29 -8.7286691665649396
		 30 -8.7286691665649414 31 -8.7286691665649396 32 -8.7286691665649396 33 -8.7286691665649414
		 34 -8.7286691665649414 35 -8.728669166564945 36 -8.7286691665649396 37 -8.7286691665649379
		 38 -8.7286691665649414 39 -8.7286691665649432 40 -8.7286691665649396 41 -8.7286691665649432
		 42 -8.7286691665649396 43 -8.7286691665649414 44 -8.7286691665649379 45 -8.7286691665649396
		 46 -8.7286691665649343 47 -8.7286691665649485 48 -8.7286691665649414 49 -8.7286691665649343
		 50 -8.7286691665649379 51 -8.728669166564945 52 -8.7286691665649414 53 -8.7286691665649272
		 54 -8.7286691665649698 55 -8.7286691665649272 56 -8.7286691665649414 57 -8.7286691665649414
		 58 -8.7286691665649414 59 -8.7286691665649485 60 -8.7286691665649414 61 -8.7286691665649521
		 62 -8.7286691665649521 63 -8.7286691665649325 64 -8.728669166564945 65 -8.728669166564945
		 66 -8.7286691665649343 67 -8.728669166564945 68 -8.7286691665649467 69 -8.7286691665649396
		 70 -8.7286691665649379 71 -8.7286691665649414 72 -8.728669166564945 73 -8.7286691665649503
		 74 -8.7286691665649379 75 -8.7286691665649325 76 -8.7286691665649485 77 -8.7286691665649414
		 78 -8.7286691665649485 79 -8.7286691665649396 80 -8.7286691665649485 81 -8.728669166564945
		 82 -8.7286691665649414 83 -8.728669166564945 84 -8.7286691665649361 85 -8.7286691665649414
		 86 -8.7286691665649379 87 -8.7286691665649361 88 -8.7286691665649432 89 -8.7286690876297417
		 90 -8.7286691665649414 91 -8.7286691925996873 92 -8.7286692470703908 93 -8.7286691665649432
		 94 -8.728669166564945 95 -8.7286691665649379 96 -8.7286691262172251 97 -8.7286691665649485
		 98 -8.7286691209484353 99 -8.7286691665649379 100 -8.7286691665649396 101 -8.728669166564945
		 102 -8.7286691665649379 103 -8.7286691665649343 104 -8.7286691665649432 105 -8.7286691665649379
		 106 -8.728669166564945 107 -8.7286691665649414 108 -8.728669166564945 109 -8.728669166564945
		 110 -8.7286691665649432 111 -8.7286691665649467 112 -8.7286691665649414 113 -8.7286691665649432
		 114 -8.7286691665649467 115 -8.7286691665649379 116 -8.7286691665649379 117 -8.7286691655801576
		 118 -8.7286691665649432 119 -8.7286691665649432 120 -8.7286691665649343 121 -8.7286691665649414
		 122 -8.7286691665649432 123 -8.7286691665649414 124 -8.7286691665649343 125 -8.7286691665649432
		 126 -8.7286691665649432 127 -8.7286693741749133 128 -8.728669166564945 129 -8.7286691665649325
		 130 -8.7286691665649379 131 -8.7286691665649414 132 -8.7286692680976881 133 -8.7286692460533537
		 134 -8.7286693068404819 135 -8.7286691665649379 136 -8.7286692956756493;
createNode animCurveTL -n "locator14_translateZ";
	rename -uid "FEC1910C-430E-C2B7-5676-738017BABDDB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 10.710560798645021 1 10.710560798645016
		 2 10.71056079864502 3 10.71056079864502 4 10.71056079864502 5 10.710560798645018
		 6 10.710560798645012 7 10.710560798645023 8 10.710560798645023 9 10.710560798645023
		 10 10.710560798645023 11 10.710560798645018 12 10.71056079864502 13 10.71056079864502
		 14 10.710560798645023 15 10.710560798645023 16 10.710560798645023 17 10.710560798645025
		 18 10.710560798645012 19 10.71056079864502 20 10.71056079864502 21 10.710560798645034
		 22 10.71056079864502 23 10.710560798645034 24 10.710560798645034 25 10.710560798645034
		 26 10.71056079864502 27 10.710560798645005 28 10.710560798645034 29 10.71056079864502
		 30 10.710560798645034 31 10.710560798645034 32 10.71056079864502 33 10.710560798645034
		 34 10.71056079864502 35 10.710560798645005 36 10.710560798645005 37 10.710560798645034
		 38 10.710560798645034 39 10.710560798644991 40 10.71056079864502 41 10.710560798645034
		 42 10.710560798645034 43 10.710560798645016 44 10.710560798645018 45 10.710560798645023
		 46 10.71056079864503 47 10.71056079864502 48 10.710560798645034 49 10.710560798645034
		 50 10.710560798645048 51 10.71056079864502 52 10.71056079864502 53 10.710560798644991
		 54 10.71056079864502 55 10.71056079864502 56 10.71056079864502 57 10.710560798645048
		 58 10.71056079864502 59 10.710560798645048 60 10.710560798645048 61 10.71056079864502
		 62 10.710560798645048 63 10.710560798645048 64 10.71056079864502 65 10.710560798644991
		 66 10.71056079864502 67 10.710560798645048 68 10.71056079864502 69 10.710560798645034
		 70 10.71056079864502 71 10.710560798644963 72 10.71056079864502 73 10.71056079864502
		 74 10.710560798644991 75 10.71056079864502 76 10.710560798644991 77 10.710560798645076
		 78 10.710560798644991 79 10.710560798644991 80 10.71056079864502 81 10.710560798645048
		 82 10.710560798645048 83 10.710560798644991 84 10.710560798645076 85 10.710560798644991
		 86 10.71056079864502 87 10.710560798645048 88 10.710560798644963 89 10.710560862973949
		 90 10.71056079864502 91 10.710560777427759 92 10.710560733036374 93 10.710560798644991
		 94 10.71056079864502 95 10.710560798645076 96 10.71056083152672 97 10.710560798645048
		 98 10.710560835820615 99 10.710560798645048 100 10.710560798644991 101 10.710560798644991
		 102 10.710560798645048 103 10.710560798644963 104 10.71056079864502 105 10.710560798644991
		 106 10.710560798644991 107 10.71056079864502 108 10.71056079864502 109 10.710560798644991
		 110 10.71056079864502 111 10.71056079864502 112 10.71056079864502 113 10.710560798645048
		 114 10.71056079864502 115 10.710560798644991 116 10.710560798644991 117 10.710560799447592
		 118 10.71056079864502 119 10.710560798645048 120 10.71056079864502 121 10.710560798645048
		 122 10.710560798645048 123 10.710560798645048 124 10.71056079864502 125 10.710560798644991
		 126 10.710560798645048 127 10.710560629451379 128 10.710560798644963 129 10.710560798645048
		 130 10.710560798644963 131 10.710560798644991 132 10.710560715900016 133 10.710560733865179
		 134 10.710560684326197 135 10.710560798644991 136 10.710560693425094;
createNode animCurveTA -n "locator14_rotateX";
	rename -uid "A6DB55FA-4DED-5F67-1B5B-FCA578C6ED2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 2.3456013877876107e-06 1 -2.2905626337887952e-06
		 2 0 3 0 4 1.3587657576863425e-06 5 -2.0801476239284966e-06 6 0 7 -0.4585921168327331
		 8 -0.19482657313346866 9 -1.3268346786499023 10 -6.3604931831359863 11 -10.050436973571779
		 12 -3.6354832649230957 13 0 14 -1.11817989818519e-05 15 -9.0000758063979447e-06 16 1.0711126378737388e-05
		 17 2.0325119294284377e-06 18 -7.2695042945269961e-06 19 3.0711869385413593e-06 20 1.7762382640285068e-06
		 21 -2.3652062282053525e-06 22 2.9467173590091993e-06 23 5.0082558118447196e-06 24 -7.2315951911150469e-06
		 25 0 26 6.8230883698561246e-06 27 0 28 -2.8850340640929062e-06 29 -1.706296643533278e-06
		 30 0 31 1.9760759641940236e-06 32 -1.1299600123008444e-29 33 1.9571875782276038e-06
		 34 1.7392984545949732e-06 35 -3.2528821520827482e-06 36 -1.4413703866011922e-05 37 -1.7231071979040283e-05
		 38 -3.8186120946193114e-05 39 -0.00011879741941811514 40 -0.00055230443831533183
		 41 7.0678133964538583 42 17.516355514526367 43 8.4857568740844744 44 9.4162244796752965
		 45 16.517812728881829 46 9.2314014434814453 47 1.051283597946167 48 1.2772793525073212e-06
		 49 3.6434237244975512e-06 50 5.4434890444099437e-06 51 -3.6158720393629218e-28 52 -9.3736016424372792e-06
		 53 4.5198400492033904e-29 54 5.6498000615042093e-30 55 -2.1443690911837629e-06 56 -1.0276398825226352e-05
		 57 -5.6309218406677255 58 -13.98810863494873 59 -5.1623754501342773 60 -0.0095020607113838196
		 61 -0.86271601915359508 62 -2.3155596256256108 63 -1.4503717422485352 64 -0.4417976438999176
		 65 -0.18641823530197146 66 -8.0769495980348421e-06 67 3.9398209992214106e-06 68 -7.527523393946467e-06
		 69 5.8346522564534115e-06 70 -3.9548945096612434e-06 71 -1.7943408465725948e-06 72 -2.2599200246017134e-29
		 73 -2.9599123081425209e-06 74 2.2599200246017003e-29 75 0 76 1.2902964954264464e-06
		 77 -3.4068891636707126e-06 78 -5.3742915042676032e-06 79 4.2836277316382612e-06 80 5.9747048908320713e-06
		 81 -3.4349848192505314e-06 82 -3.4823356145352578e-06 83 -1.3035789834248139e-06
		 84 -2.8200447559356698e-06 85 0 86 1.5707890952398886e-06 87 0 88 2.2599200246016893e-29
		 89 1.4822174989603809e-06 90 -5.6498000615042093e-30 91 -4.8759607125248294e-06 92 0
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
		 130 2.818684606609168e-06 131 5.6498000615042093e-30 132 6.323168236122001e-06 133 0
		 134 0 135 2.6891559627983948e-06 136 -2.7230801151745258e-06;
createNode animCurveTA -n "locator14_rotateY";
	rename -uid "43540C21-45D0-17D1-5D7E-1A8FB1460EFD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -4.8960332605929588e-06 1 -1.6190554106287891e-06
		 2 1.6414192032243591e-06 3 6.5163803810719409e-06 4 8.2302567534497956e-06 5 1.5920045370876326e-06
		 6 -6.5157082644873307e-06 7 1.5441445384567489e-06 8 4.4441480895329741e-06 9 0.013098123483359812
		 10 0.18496093153953552 11 0.25054475665092468 12 0 13 0 14 4.1499961298541174e-06
		 15 0 16 -3.5479934012982994e-06 17 2.2373562842403776e-06 18 -3.6864939829683871e-06
		 19 0 20 0 21 3.2381017263105609e-06 22 3.6966216612199787e-06 23 -1.3962761613584013e-06
		 24 -1.547729198136949e-06 25 -2.9980719773448068e-06 26 7.3759556471486593e-06 27 4.279234872228698e-06
		 28 -1.5796859997863064e-06 29 4.9776317609939716e-06 30 1.5089540283952374e-06 31 -3.056923560507129e-06
		 32 -4.6228815335780382e-06 33 0 34 0 35 1.5406377542603879e-06 36 -3.1126617159316079e-06
		 37 3.1250151550921146e-06 38 -7.8008069976931421e-06 39 -1.5520251963607736e-06 40 1.5547952898486985e-06
		 41 8.5300207501859421e-06 42 2.3696978997167331e-23 43 3.5551551263779402e-05 44 -9.3609851319342869e-06
		 45 3.5261873563285903e-05 46 1.9568820789572786e-05 47 4.1749932279344655e-05 48 1.1156519576616121e-05
		 49 1.3039441910223104e-05 50 -4.758686827699421e-06 51 -2.046983354375698e-05 52 7.8171433415263908e-06
		 53 6.2069357227301242e-06 54 -2.6794807581609348e-06 55 1.0012458005803639e-05 56 3.0287367280834587e-06
		 57 0 58 0.65912479162216198 59 0 60 -7.3966211857623429e-06 61 -1.9383513063075952e-05
		 62 5.3239564294926831e-06 63 -5.2661789595731543e-06 64 -7.4216159191564674e-06 65 4.823191829927965e-06
		 66 1.7030142771545794e-05 67 -7.4198455877194621e-06 68 4.7940125114109833e-06 69 -1.1299600123008409e-29
		 70 -1.0018796274380293e-05 71 7.3977457759610834e-06 72 9.5886671260814182e-06 73 -1.1299600123008409e-29
		 74 7.4967852015106448e-06 75 9.6087269412237236e-06 76 0 77 4.8727679313742556e-06
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
		 132 6.9421139414771477e-06 133 -1.2264974429854194e-05 134 4.8012457227741842e-06
		 135 7.4617682912503386e-06 136 0;
createNode animCurveTA -n "locator14_rotateZ";
	rename -uid "31A13363-40A2-9D74-DF49-CEB12AB321C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -2.2599200246016896e-29 1 -5.6498000615042058e-30
		 2 0 3 0 4 -1.1299600123008527e-29 5 0 6 0 7 7.4053059366147927e-25 8 0 9 1.284460186958313
		 10 2.0451650619506836 11 1.5623037815093996 12 0 13 0 14 -1.3740104805037851e-06
		 15 0 16 0 17 -2.5020183329615971e-06 18 1.7636929214859269e-06 19 0 20 0 21 0 22 -1.4927210258974812e-06
		 23 -3.5072312130068894e-06 24 -4.6056870814936684e-06 25 0 26 -9.0396800984068033e-29
		 27 1.7589812841833914e-06 28 -5.6498000615042058e-30 29 3.4477402550692192e-06 30 0
		 31 1.1299600123008421e-29 32 2.1241714875941402e-06 33 0 34 0 35 5.6498000615042065e-30
		 36 -4.5198400492033686e-29 37 -9.0396800984067394e-29 38 -3.6158720393627236e-28
		 39 -1.8079360196813459e-28 40 0 41 -5.1885513130400804e-06 42 1.2610021258296911e-06
		 43 7.5319421739550299e-06 44 1.4822763887423209e-06 45 1.2931675883010026e-05 46 -2.3868808511906536e-06
		 47 1.4356430710904533e-06 48 0 49 5.7014340200112201e-06 50 4.4615367187361699e-06
		 51 1.3407195183390288e-05 52 -5.9064059314550849e-06 53 4.4219605115358735e-06 54 1.597298137312464e-06
		 55 -2.6758414151117904e-06 56 -4.5198400492033697e-29 57 2.4217331429099435e-06 58 3.0566630363464351
		 59 0 60 -3.6074688978260387e-06 61 -4.7131279643508606e-06 62 -2.3696978997167436e-23
		 63 1.1848489498583712e-23 64 0 65 1.3610000451080855e-06 66 1.2783743841282558e-06
		 67 1.8278919924341608e-06 68 1.2720397535304073e-06 69 -1.22699418625416e-06 70 -4.5198400492034308e-29
		 71 2.2599200246017003e-29 72 1.7205422864208229e-06 73 2.8269382710277577e-06 74 -1.9218409761379003e-06
		 75 0 76 2.5056501726794522e-06 77 -1.3995031622471292e-06 78 -1.469380890739558e-06
		 79 4.8482197598787025e-06 80 -1.4927464917491309e-06 81 0 82 1.6404610505560413e-06
		 83 0 84 1.8140349311579491e-06 85 1.5435078921655079e-06 86 1.2689438335655723e-06
		 87 0 88 3.5208090594096571e-06 89 0 90 1.5689776091676322e-06 91 0 92 2.5177093903039345e-06
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
createNode animCurveTU -n "locator14_scaleX";
	rename -uid "9AC0CA7C-47B3-2A64-6960-08B0943574DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1.0000000000000002 1 1 2 1 3 0.99999999999999978
		 4 0.99999999999999989 5 0.99999999999999989 6 0.99999999999999989 7 1 8 1.0000000000000002
		 9 1.0000000000000002 10 0.99999999999999989 11 1 12 0.99999999999999978 13 0.99999999999999989
		 14 1 15 1 16 1 17 1.0000000000000002 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 0.99999999999999978
		 26 1 27 1 28 1 29 1 30 0.99999999999999989 31 1 32 1 33 0.99999999999999989 34 1
		 35 1 36 0.99999999999999989 37 1 38 1.0000000000000002 39 1 40 1 41 1.0000000000000002
		 42 0.99999999999999967 43 1.0000000000000004 44 0.99999999999999978 45 0.99999999999999978
		 46 1 47 1 48 1 49 1 50 0.99999999999999989 51 0.99999999999999956 52 1.0000000000000002
		 53 0.99999999999999956 54 1 55 1.0000000000000002 56 1 57 1.0000000000000002 58 0.99999999999999989
		 59 0.99999999999999989 60 1 61 1 62 0.99999999999999967 63 0.99999999999999989 64 0.99999999999999956
		 65 1.0000000000000004 66 0.99999999999999978 67 1.0000000000000002 68 1 69 1.0000000000000002
		 70 0.99999999999999967 71 1.0000000000000004 72 1 73 0.99999999999999989 74 1 75 1.0000000000000007
		 76 1.0000000000000007 77 1 78 1 79 0.99999999999999967 80 1.0000000000000002 81 1
		 82 1 83 1.0000000000000002 84 0.99999999999999989 85 1.0000000000000004 86 0.99999999999999967
		 87 0.99999999999999989 88 1.0000000000000004 89 1 90 0.99999999999999956 91 0.99999999999999967
		 92 1 93 1 94 1 95 1.0000000000000004 96 0.99999999999999989 97 0.99999999999999989
		 98 1 99 1.0000000000000004 100 0.99999999999999967 101 0.99999999999999978 102 0.99999999999999956
		 103 1.0000000000000002 104 0.99999999999999967 105 0.99999999999999956 106 1.0000000000000002
		 107 0.99999999999999989 108 0.99999999999999989 109 1.0000000000000004 110 1.0000000000000004
		 111 1.0000000000000002 112 0.99999999999999978 113 0.99999999999999989 114 1 115 0.99999999999999944
		 116 0.99999999999999989 117 1 118 0.99999999999999989 119 0.99999999999999956 120 1
		 121 1 122 0.99999999999999944 123 1 124 1 125 1 126 0.99999999999999978 127 1.0000000000000002
		 128 1 129 0.99999999999999967 130 0.99999999999999956 131 0.99999999999999956 132 1.0000000000000002
		 133 0.99999999999999944 134 1 135 1 136 1;
createNode animCurveTU -n "locator14_scaleY";
	rename -uid "2E087D38-4457-7B28-64FD-D2A53E140D6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1.0000000000000002 1 0.99999999999999989
		 2 0.99999999999999989 3 1.0000000000000002 4 0.99999999999999989 5 0.99999999999999989
		 6 0.99999999999999967 7 1.0000000000000002 8 0.99999999999999989 9 1.0000000000000002
		 10 0.99999999999999967 11 0.99999999999999978 12 0.99999999999999989 13 1 14 0.99999999999999978
		 15 1 16 1 17 1 18 0.99999999999999989 19 1 20 1 21 0.99999999999999944 22 1 23 1.0000000000000002
		 24 1 25 0.99999999999999978 26 0.99999999999999978 27 1 28 1 29 0.99999999999999978
		 30 0.99999999999999989 31 1 32 0.99999999999999989 33 0.99999999999999989 34 0.99999999999999978
		 35 1.0000000000000002 36 0.99999999999999989 37 0.99999999999999978 38 1 39 0.99999999999999989
		 40 0.99999999999999978 41 1 42 0.99999999999999989 43 0.99999999999999989 44 1 45 0.99999999999999978
		 46 0.99999999999999978 47 0.99999999999999989 48 1.0000000000000004 49 1 50 1 51 1
		 52 1.0000000000000002 53 0.99999999999999989 54 1 55 1.0000000000000002 56 1 57 1.0000000000000002
		 58 1.0000000000000002 59 1 60 0.99999999999999989 61 1 62 1.0000000000000004 63 0.99999999999999989
		 64 1 65 1 66 0.99999999999999989 67 1.0000000000000002 68 1 69 1 70 0.99999999999999989
		 71 1 72 1.0000000000000002 73 1 74 0.99999999999999967 75 1 76 0.99999999999999989
		 77 1 78 0.99999999999999989 79 0.99999999999999978 80 1.0000000000000002 81 1 82 0.99999999999999989
		 83 1 84 0.99999999999999956 85 0.99999999999999978 86 0.99999999999999989 87 1 88 0.99999999999999989
		 89 0.99999999999999989 90 1 91 0.99999999999999989 92 0.99999999999999989 93 0.99999999999999978
		 94 0.99999999999999989 95 1.0000000000000002 96 1 97 0.99999999999999989 98 0.99999999999999989
		 99 1 100 0.99999999999999933 101 1.0000000000000002 102 0.99999999999999978 103 0.99999999999999989
		 104 0.99999999999999989 105 0.99999999999999978 106 0.99999999999999978 107 0.99999999999999989
		 108 0.99999999999999989 109 1 110 0.99999999999999989 111 0.99999999999999989 112 0.99999999999999989
		 113 1 114 1 115 0.99999999999999967 116 0.99999999999999967 117 1 118 0.99999999999999978
		 119 0.99999999999999978 120 1 121 1.0000000000000002 122 0.99999999999999978 123 1
		 124 1 125 1 126 0.99999999999999978 127 0.99999999999999989 128 1.0000000000000002
		 129 0.99999999999999989 130 1 131 1 132 0.99999999999999989 133 1 134 0.99999999999999989
		 135 1 136 0.99999999999999989;
createNode animCurveTU -n "locator14_scaleZ";
	rename -uid "166F5F61-485F-DA6F-D22D-12883AE2B46D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 0.99999999999999989
		 3 0.99999999999999989 4 0.99999999999999989 5 0.99999999999999989 6 0.99999999999999978
		 7 1.0000000000000002 8 1 9 1.0000000000000002 10 0.99999999999999989 11 1 12 0.99999999999999978
		 13 1 14 0.99999999999999989 15 1.0000000000000004 16 1.0000000000000002 17 1.0000000000000002
		 18 0.99999999999999989 19 1 20 0.99999999999999978 21 0.99999999999999989 22 1 23 0.99999999999999989
		 24 1 25 0.99999999999999978 26 0.99999999999999978 27 0.99999999999999978 28 1.0000000000000002
		 29 1 30 0.99999999999999989 31 1 32 1.0000000000000002 33 1 34 0.99999999999999989
		 35 1 36 0.99999999999999989 37 0.99999999999999978 38 1 39 1.0000000000000002 40 1
		 41 1.0000000000000002 42 0.99999999999999978 43 1.0000000000000002 44 0.99999999999999967
		 45 1 46 0.99999999999999978 47 1 48 0.99999999999999989 49 1 50 0.99999999999999989
		 51 1 52 0.99999999999999989 53 0.99999999999999956 54 0.99999999999999989 55 1.0000000000000004
		 56 0.99999999999999989 57 1 58 0.99999999999999989 59 0.99999999999999989 60 1.0000000000000002
		 61 1.0000000000000002 62 1 63 1.0000000000000002 64 0.99999999999999989 65 1.0000000000000004
		 66 0.99999999999999989 67 1.0000000000000004 68 1 69 1 70 0.99999999999999967 71 1.0000000000000004
		 72 1 73 1 74 1 75 1.0000000000000004 76 1.0000000000000004 77 0.99999999999999989
		 78 0.99999999999999978 79 0.99999999999999978 80 1 81 1 82 1 83 1 84 0.99999999999999978
		 85 1.0000000000000002 86 0.99999999999999978 87 1 88 1.0000000000000002 89 0.99999999999999989
		 90 0.99999999999999967 91 0.99999999999999956 92 0.99999999999999989 93 1.0000000000000002
		 94 1 95 1.0000000000000007 96 0.99999999999999989 97 0.99999999999999978 98 1 99 1.0000000000000004
		 100 0.99999999999999967 101 1 102 0.99999999999999956 103 1 104 0.99999999999999956
		 105 1 106 1.0000000000000002 107 1 108 0.99999999999999989 109 1.0000000000000009
		 110 1.0000000000000004 111 1 112 1 113 0.99999999999999989 114 1.0000000000000002
		 115 0.99999999999999944 116 1 117 1.0000000000000002 118 1 119 0.99999999999999978
		 120 0.99999999999999989 121 0.99999999999999978 122 0.99999999999999956 123 0.99999999999999956
		 124 0.99999999999999978 125 1 126 0.99999999999999989 127 1 128 0.99999999999999989
		 129 0.99999999999999978 130 0.99999999999999956 131 1 132 1.0000000000000002 133 0.99999999999999933
		 134 1 135 0.99999999999999967 136 1;
createNode animCurveTU -n "locator15_visibility";
	rename -uid "3097D237-4328-A98B-29B4-BCA7B6E04D63";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1
		 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1
		 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1
		 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTL -n "locator15_translateX";
	rename -uid "EAF8210D-4A1B-3B5E-489F-C2BCF72C3F6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -5.2475357676939893e-06 1 -4.7168824739429738e-06
		 2 -4.1889016184626371e-06 3 -3.3994809101045576e-06 4 -3.1219464968756938e-06 5 -4.1969035233790919e-06
		 6 -5.5098158036059885e-06 7 -4.204661534501497e-06 8 -3.7350492192445017e-06 9 -0.0026852611811225557
		 10 -0.0069138689853982527 11 -0.0041967331376220329 12 -4.4547027755470481e-06 13 -4.4547027755470481e-06
		 14 -3.7826945415986302e-06 15 -4.4547027799879402e-06 16 -5.0292426290177161e-06
		 17 -4.0924288473576098e-06 18 -5.0516497633878998e-06 19 -4.4547027755470481e-06
		 20 -4.4547027790997618e-06 21 -3.930344835367805e-06 22 -3.8561126132208301e-06 23 -4.6808484555072027e-06
		 24 -4.7053866296664637e-06 25 -4.940191779212455e-06 26 -3.2602866610886849e-06 27 -3.7617294950109681e-06
		 28 -4.7105072269459924e-06 29 -3.6486155607917681e-06 30 -4.2103521877834282e-06
		 31 -4.9497218626015638e-06 32 -5.203278213627982e-06 33 -4.4547027755470481e-06 34 -4.4547027684416207e-06
		 35 -4.2052215363241885e-06 36 -4.9587477519708045e-06 37 -3.9486573797375968e-06
		 38 -5.7179166574883311e-06 39 -4.7060280365940343e-06 40 -4.2029289559764038e-06
		 41 -3.1873556878281306e-06 42 -4.3932292470572065e-06 43 1.4192743975627309e-06 44 -5.910831646360748e-06
		 45 1.6151386006413304e-06 46 -1.3889624739249484e-06 47 2.309155291868592e-06 48 -2.6480857968635974e-06
		 49 -2.3431097773141119e-06 50 -5.2252420061904559e-06 51 -7.7693012698887287e-06
		 52 -3.1889130767126517e-06 53 -3.4495382266186425e-06 54 -4.8885822767630316e-06
		 55 -2.8333795434321019e-06 56 -3.9642481013402175e-06 57 -4.4931530993608249e-06
		 58 -0.016137098229961566 59 -4.4547028323904669e-06 60 -5.6524110618738632e-06 61 -7.5817594336058391e-06
		 62 -3.5932760340529057e-06 63 -5.3072031960255117e-06 64 -5.6564777537460031e-06
		 65 -3.6743701912200777e-06 66 -1.6969329692528845e-06 67 -5.6562045358532487e-06
		 68 -3.6783753785130102e-06 69 -4.454717299040567e-06 70 -6.0770839240831265e-06 71 -3.2567581058629003e-06
		 72 -2.9019537350905011e-06 73 -4.4546694653035956e-06 74 -3.2407430126113468e-06
		 75 -2.8987256825985241e-06 76 -4.454673188547531e-06 77 -3.6656536792634142e-06 78 -3.3114714312887372e-06
		 79 -2.5034046871041937e-06 80 -4.4547203970068949e-06 81 -1.695950601288132e-06 82 -5.2424804835027317e-06
		 83 -6.0093311446962616e-06 84 -4.4546813455781376e-06 85 -5.2333514872771048e-06
		 86 -4.4546878541495971e-06 87 -4.4547028323904669e-06 88 -3.6774070508727164e-06
		 89 -3.7578492992906831e-06 90 -4.0228518685125891e-06 91 -5.6638825469690346e-06
		 92 -5.1497941626621468e-06 93 -4.4547027755470481e-06 94 -4.8868481030694966e-06
		 95 -1.6908795714698499e-06 96 -2.9002302426306414e-06 97 -2.4682167065748217e-06
		 98 -4.0228409829978773e-06 99 -4.1089561761964433e-06 100 -5.2321481120998214e-06
		 101 -1.6911678812903119e-06 102 -6.8712497238720971e-06 103 -5.6626474815857364e-06
		 104 -5.2318830512376735e-06 105 -8.4277335474780557e-06 106 -1.6923769692311907e-06
		 107 -1.3571553836300154e-07 108 -2.1198514446041372e-06 109 -4.4547027755470481e-06
		 110 -9.1239297717038426e-06 111 -5.5811242702930031e-06 112 -7.647926054232812e-06
		 113 -3.6772710245713824e-06 114 -4.0245747356948414e-06 115 -6.4402625525872281e-06
		 116 -4.4547174127274047e-06 117 -2.8991309761750017e-06 118 -4.4547027755470481e-06
		 119 -5.2325541162190348e-06 120 -5.6620239661242522e-06 121 -4.8841690443168773e-06
		 122 -4.0252939186302683e-06 123 -6.7881254892654397e-06 124 -2.8994172680540942e-06
		 125 -1.6912983937800163e-06 126 -4.0241536964913394e-06 127 -2.4674248209066718e-06
		 128 -1.2603454138115922e-06 129 -4.4547027471253386e-06 130 -3.2461277896800311e-06
		 131 -4.0237627842998336e-06 132 -3.2276853119128646e-06 133 -6.4408159232698381e-06
		 134 -3.5349491440683778e-06 135 -3.2464445780533424e-06 136 -4.3241931280135759e-06;
createNode animCurveTL -n "locator15_translateY";
	rename -uid "8D4F1311-48CE-BC2B-1AE6-7897EC4E2394";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -8.7293459158078957 1 -8.7293451650565004
		 2 -8.7293455359758827 3 -8.7293455359758827 4 -8.7293457560059053 5 -8.7293451991297903
		 6 -8.7293455359758774 7 -8.6550847691733352 8 -8.697796596618474 9 -8.5145115802107068
		 10 -7.7010691791279502 11 -7.1096763040986097 12 -8.141031709735941 13 -8.7293455359758809
		 14 -8.7293437252652772 15 -8.7293440785599188 16 -8.7293472704686721 17 -8.7293458651080655
		 18 -8.7293443587979169 19 -8.7293460333046866 20 -8.7293458236087886 21 -8.7293451529691737
		 22 -8.7293460131488203 23 -8.7293463469813517 24 -8.7293443649364235 25 -8.7293455359758809
		 26 -8.7293466408641223 27 -8.7293455359759253 28 -8.7293450687915186 29 -8.7293452596689534
		 30 -8.7293455359758827 31 -8.7293458559692549 32 -8.7293455359759839 33 -8.7293458529105905
		 34 -8.7293458176269905 35 -8.7293450092245042 36 -8.7293432019108614 37 -8.7293427456838941
		 38 -8.7293393523543816 39 -8.7293262986650841 40 -8.7292560992508186 41 -9.8709574236375328
		 42 -11.521824493122415 43 -10.098450440345744 44 -10.247286257059809 45 -11.367211655512659
		 46 -10.217752946414869 47 -8.8995741582339107 48 -8.7293457428105015 49 -8.7293461259691227
		 50 -8.7293464174606505 51 -8.7293455359771528 52 -8.7293440180733981 53 -8.7293455359759662
		 54 -8.7293455359759804 55 -8.7293451887301075 56 -8.7293438718801326 57 -7.8189731547938948
		 58 -6.4842807975039989 59 -7.8945106237303548 60 -8.7278068317151778 61 -8.5896479039342566
		 62 -8.3544798102867759 63 -8.49450627632047 64 -8.6578042786356288 65 -8.6991581830302707
		 66 -8.7293442280451714 67 -8.7293461739659541 68 -8.729344317015876 69 -8.7293464808029118
		 70 -8.729344895545001 71 -8.7293452454115474 72 -8.7293455359759022 73 -8.7293450566663218
		 74 -8.7293455359758472 75 -8.7293455359758632 76 -8.7293457449185272 77 -8.7293449842855324
		 78 -8.7293446656967291 79 -8.7293462296397646 80 -8.7293465034821605 81 -8.7293449797359379
		 82 -8.7293449720683221 83 -8.7293453248824608 84 -8.7293450793155376 85 -8.7293455359759591
		 86 -8.7293457903396821 87 -8.729345535975872 88 -8.7293455359759662 89 -8.7293456286833866
		 90 -8.7293455359759253 91 -8.7293447949808911 92 -8.7293456862200411 93 -8.7293450702619069
		 94 -8.7293452888355727 95 -8.7293452311950492 96 -8.7293454606765923 97 -8.729345535975888
		 98 -8.7293457420710219 99 -8.7293431046152623 100 -8.7293348711261594 101 -8.7293255062358348
		 102 -8.7293233675298367 103 -8.7293295018826953 104 -8.7110177159633224 105 -8.6973618390500675
		 106 -8.6894873671532036 107 -8.6837377907099054 108 -8.6835824338934753 109 -8.6910324683105298
		 110 -8.6992047006248114 111 -8.7050223154937978 112 -8.7116926190509592 113 -8.7207012155037429
		 114 -8.7293455359758898 115 -8.7293460681344524 116 -8.7293455359758312 117 -8.729346045504645
		 118 -8.7293449222931798 119 -8.7293446238474708 120 -8.7293460003624936 121 -8.7293455359760728
		 122 -8.7293460613560399 123 -8.7293458971250235 124 -8.7293450067815712 125 -8.7293457315389844
		 126 -8.7293455359758862 127 -8.7293462071962917 128 -8.7293459153731536 129 -8.7293451966362134
		 130 -8.7293459924160217 131 -8.7293455359758418 132 -8.7293467493965515 133 -8.7293456843218475
		 134 -8.7293457977663174 135 -8.7293459714408961 136 -8.7293453359713027;
createNode animCurveTL -n "locator15_translateZ";
	rename -uid "9620FADD-4074-BC44-C492-7B90D6B4A8D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 19.988680839510664 1 19.988680839565539
		 2 19.988680839538631 3 19.988680839538752 4 19.988680839522736 5 19.988680839563173
		 6 19.988680839538269 7 19.988389062154095 8 19.988629500434939 9 19.986208553975167
		 10 19.931596664944408 11 19.846334245334209 12 19.970052910528789 13 19.988680839538578
		 14 19.988680839670526 15 19.988680839644708 16 19.988680839411828 17 19.988680839514657
		 18 19.988680839624145 19 19.988680839502301 20 19.988680839517613 21 19.988680839566598
		 22 19.9886808395039 23 19.988680839479372 24 19.988680839623839 25 19.988680839538461
		 26 19.988680839458169 27 19.988680839538688 28 19.988680839572581 29 19.988680839558867
		 30 19.988680839538645 31 19.988680839515112 32 19.988680839538375 33 19.988680839515482
		 34 19.988680839518011 35 19.988680839577015 36 19.988680839708294 37 19.988680839741662
		 38 19.988680839986941 39 19.988680840920949 40 19.988680845627442 41 19.918095185681779
		 42 19.55826079765211 43 19.887009524197612 44 19.863555613630709 45 19.605593428417233
		 46 19.868406694230821 47 19.987106677069349 48 19.988680839523738 49 19.988680839495785
		 50 19.988680839474085 51 19.988680839537267 52 19.988680839649334 53 19.988680839538688
		 54 19.988680839538461 55 19.988680839564097 56 19.988680839659821 57 19.943976478493624
		 58 19.713114462454598 59 19.951106858057472 60 19.988680824117822 61 19.987639274071427
		 62 19.981132209100664 63 19.985725470581286 64 19.988410232557996 65 19.988633931174178
		 66 19.988680839634043 67 19.988680839491707 68 19.988680839627506 69 19.988680839469666
		 70 19.988680839584703 71 19.988680839559919 72 19.988680839538802 73 19.988680839573533
		 74 19.988680839538745 75 19.988680839538802 76 19.988680839523312 77 19.98868083957899
		 78 19.988680839602154 79 19.988680839488211 80 19.988680839467989 81 19.988680839579359
		 82 19.988680839579459 83 19.988680839553453 84 19.988680839571884 85 19.988680839538347
		 86 19.988680839520043 87 19.988680839538617 88 19.988680839538688 89 19.988680903855141
		 90 19.988680839538659 91 19.988680818376821 92 19.988680773924642 93 19.988680839572481
		 94 19.988680839556451 95 19.988680839561084 96 19.98868087242306 97 19.988680839538816
		 98 19.988680876695909 99 19.988680839715613 100 19.988680840309698 101 19.98868084097731
		 102 19.988680841127305 103 19.988680840693206 104 19.988664073398652 105 19.988628043600571
		 106 19.988598130823874 107 19.988572068425299 108 19.988571314765807 109 19.988604527236177
		 110 19.988634079014787 111 19.988650730152159 112 19.988665332843681 113 19.988677442795648
		 114 19.988680839538674 115 19.988680839499054 116 19.98868083953856 117 19.988680840304127
		 118 19.988680839583296 119 19.988680839604854 120 19.988680839504369 121 19.988680839538489
		 122 19.988680839500333 123 19.988680839511431 124 19.988680839577356 125 19.988680839524534
		 126 19.988680839538688 127 19.988680670311368 128 19.988680839511048 129 19.98868083956333
		 130 19.98868083950542 131 19.988680839538659 132 19.988680756712654 133 19.988680774753078
		 134 19.988680725211054 135 19.988680839506998 136 19.988680734342637;
createNode animCurveTA -n "locator15_rotateX";
	rename -uid "829085A6-4601-3981-6101-76B1B566BA05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 2.3456013906663869e-06 1 -2.2905626357558793e-06
		 2 0 3 0 4 1.358765756807181e-06 5 -2.0801476187530669e-06 6 0 7 -0.4585921168327336
		 8 -0.19482657313348575 9 -1.3268346786498981 10 -6.3604931831360121 11 -10.050436973571786
		 12 -3.6354832649231072 13 0 14 -1.1181798984253689e-05 15 -9.000075799579133e-06
		 16 1.0711126380827913e-05 17 2.0325119113896319e-06 18 -7.2695042968063245e-06 19 3.071186938659262e-06
		 20 1.7762382615211097e-06 21 -2.3652062339087159e-06 22 2.946717365630355e-06 23 5.0082558110011374e-06
		 24 -7.2315951765024132e-06 25 0 26 6.8230883717698481e-06 27 0 28 -2.8850340666240528e-06
		 29 -1.7062966459232908e-06 30 0 31 1.9760759616678016e-06 32 -1.1299600123008444e-29
		 33 1.9571875759377701e-06 34 1.7392984486522159e-06 35 -3.2528821523865582e-06 36 -1.4413703859503024e-05
		 37 -1.7231071981103615e-05 38 -3.8186120945800192e-05 39 -0.00011879741942178735
		 40 -0.000552304438310669 41 7.0678133964538628 42 17.516355514526349 43 8.4857568740844762
		 44 9.4162244796753036 45 16.517812728881804 46 9.2314014434814151 47 1.0512835979462012
		 48 1.2772793266538552e-06 49 3.643423711283977e-06 50 5.4434890361803834e-06 51 -3.6158720393629218e-28
		 52 -9.373601629869892e-06 53 4.5198400492033904e-29 54 0 55 -2.1443690648014357e-06
		 56 -1.027639880659304e-05 57 -5.630921840667698 58 -13.98810863494869 59 -5.1623754501342605
		 60 -0.0095020607114009222 61 -0.86271601915355867 62 -2.3155596256256112 63 -1.4503717422485485
		 64 -0.44179764389990128 65 -0.18641823530195945 66 -8.0769496220036045e-06 67 3.9398209982136133e-06
		 68 -7.5275233833006359e-06 69 5.8346522409506892e-06 70 -3.9548945214022432e-06 71 -1.7943408761094631e-06
		 72 0 73 -2.9599122756099772e-06 74 2.2599200246017003e-29 75 0 76 1.2902965219479247e-06
		 77 -3.4068891815140342e-06 78 -5.374291477358133e-06 79 4.2836277423580544e-06 80 5.9747048992009033e-06
		 81 -3.434984801331023e-06 82 -3.4823356297908404e-06 83 -1.3035789764963934e-06 84 -2.820044767387003e-06
		 85 0 86 1.5707890908302631e-06 87 0 88 0 89 0 90 0 91 -4.7366887286993312e-06 92 -2.2599200246016893e-29
		 93 -2.8759538682029415e-06 94 -1.5261816722629933e-06 95 -1.882132912841817e-06 96 0
		 97 0 98 1.5544113362474517e-06 99 -1.501453970887765e-05 100 -6.5859341697917866e-05
		 101 -0.00012369095929109196 102 -0.00013689824847063232 103 -9.9016382608872714e-05
		 104 -0.11318104714154133 105 -0.19751137495042242 106 -0.24613946676253595 107 -0.28164556622505976
		 108 -0.28260496258735712 109 -0.23659782111645183 110 -0.18613097071647558 111 -0.1502049267291716
		 112 -0.10901326686142795 113 -0.053381841629749391 114 0 115 3.2862735520425659e-06
		 116 0 117 3.1526075922970897e-06 118 -3.7897147959390185e-06 119 -5.6327266765932467e-06
		 120 2.8677563601225678e-06 121 0 122 3.2444143235643842e-06 123 2.230226062880169e-06
		 124 -3.2679679793426205e-06 125 1.2076735735464399e-06 126 0 127 2.8629637646121327e-06
		 128 2.342917027822943e-06 129 -2.0955463215922411e-06 130 2.8186845848647721e-06
		 131 0 132 6.8663140519286785e-06 133 0 134 0 135 2.6891559456250699e-06 136 -2.0324069772871971e-06;
createNode animCurveTA -n "locator15_rotateY";
	rename -uid "94066305-4E32-FAE4-DCFC-DC8B810FDE9A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -4.8960332532036729e-06 1 -1.6190554097811946e-06
		 2 1.6414192033156481e-06 3 6.5163803943798771e-06 4 8.2302567489770381e-06 5 1.5920045314098638e-06
		 6 -6.5157082700229257e-06 7 1.5441445368962608e-06 8 4.444148094045233e-06 9 0.013098123483358997
		 10 0.18496093153953913 11 0.25054475665093107 12 0 13 0 14 4.1499961331108803e-06
		 15 0 16 -3.5479934008159561e-06 17 2.2373562822844993e-06 18 -3.6864939828707606e-06
		 19 0 20 0 21 3.2381017199954466e-06 22 3.6966216625249338e-06 23 -1.3962761637701168e-06
		 24 -1.5477292017236094e-06 25 -2.9980719596141084e-06 26 7.375955639537062e-06 27 4.2792348739367509e-06
		 28 -1.5796859982258443e-06 29 4.9776317607367963e-06 30 1.5089540211507848e-06 31 -3.0569235535375128e-06
		 32 -4.62288152078615e-06 33 0 34 0 35 1.5406377559016748e-06 36 -3.1126617183860074e-06
		 37 3.1250151549771006e-06 38 -7.8008070030833633e-06 39 -1.5520251880638041e-06 40 1.5547952762608511e-06
		 41 8.5300207835391993e-06 42 2.3696978997167331e-23 43 3.5551551302174125e-05 44 -9.360985125227751e-06
		 45 3.5261873571430227e-05 46 1.9568820798439876e-05 47 4.1749932272963102e-05 48 1.1156519582603818e-05
		 49 1.3039441877826493e-05 50 -4.7586868515052837e-06 51 -2.0469833540861886e-05 52 7.8171433497048598e-06
		 53 6.2069357246170756e-06 54 -2.6794807651983204e-06 55 1.0012458003470504e-05 56 3.0287367273394784e-06
		 57 0 58 0.65912479162216508 59 0 60 -7.3966211918021181e-06 61 -1.9383513050672395e-05
		 62 5.3239564505307648e-06 63 -5.2661789744510542e-06 64 -7.4216159338079766e-06 65 4.8231918336666702e-06
		 66 1.7030142740531605e-05 67 -7.4198455766417247e-06 68 4.7940125058386212e-06 69 -1.1299600123008409e-29
		 70 -1.0018796262138329e-05 71 7.3977457723263888e-06 72 9.5886671402230263e-06 73 -1.1299600123008409e-29
		 74 7.4967852140385501e-06 75 9.6087269749323281e-06 76 0 77 4.8727679473475326e-06
		 78 7.0599781136390837e-06 79 1.2049624279740765e-05 80 0 81 1.7036301856047269e-05
		 82 -4.8649344320003669e-06 83 -9.6003977987630491e-06 84 0 85 -4.8085525992176575e-06
		 86 2.8249000307521022e-30 87 0 88 4.7998282900180834e-06 89 4.8000638069116923e-06
		 90 2.6667228097600658e-06 91 -7.4671265893422299e-06 92 -4.7997870382238648e-06 93 0
		 94 -2.6686552511734287e-06 95 1.7067617600621511e-05 96 9.5994355378469487e-06 97 1.2267469162330155e-05
		 98 2.6669042985712987e-06 99 2.1351115928594638e-06 100 -4.801008816499204e-06 101 1.7065709471368136e-05
		 102 -1.4922847175263674e-05 103 -7.4598528675217746e-06 104 -4.7961275428962505e-06
		 105 -2.454828427878476e-05 106 1.7058522655023798e-05 107 2.6671636069681856e-05
		 108 1.4418729754418215e-05 109 0 110 -2.8839782283823968e-05 111 -6.9560864749548603e-06
		 112 -1.9719353070583924e-05 113 4.7994581084392641e-06 114 2.6561977309303841e-06
		 115 -1.2261556523899533e-05 116 0 117 9.6062240247035349e-06 118 0 119 -4.803664073950032e-06
		 120 -7.4557742418787856e-06 121 -2.6524260224530495e-06 122 2.6517566206509088e-06
		 123 -1.4410009490884193e-05 124 9.6045705751857196e-06 125 1.7065030982721268e-05
		 126 2.6587974813409121e-06 127 1.2263920334402674e-05 128 1.9726119703849298e-05
		 129 0 130 7.4633917403131003e-06 131 2.6613094993311057e-06 132 6.9421140660586994e-06
		 133 -1.2264974417932442e-05 134 4.8012456533230027e-06 135 7.4617683025092564e-06
		 136 0;
createNode animCurveTA -n "locator15_rotateZ";
	rename -uid "D3D73FC5-4885-7605-3730-31AAF84D05B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -1.1299600123008448e-29 1 -5.6498000615042058e-30
		 2 0 3 0 4 -1.1299600123008527e-29 5 0 6 0 7 0 8 0 9 1.2844601869583137 10 2.045165061950688
		 11 1.5623037815093965 12 0 13 0 14 -1.3740104855767584e-06 15 0 16 -4.5198400492033703e-29
		 17 -2.5020183358164373e-06 18 1.763692920597344e-06 19 0 20 0 21 0 22 -1.4927210226779742e-06
		 23 -3.5072312180044859e-06 24 -4.6056870875463109e-06 25 0 26 0 27 1.758981282673465e-06
		 28 0 29 3.447740256654374e-06 30 0 31 0 32 2.124171487723278e-06 33 0 34 0 35 5.6498000615042065e-30
		 36 -4.5198400492033686e-29 37 0 38 -3.6158720393627236e-28 39 0 40 0 41 -5.188551320260728e-06
		 42 1.2610021224466385e-06 43 7.5319421717530331e-06 44 1.4822763856421755e-06 45 1.2931675902218592e-05
		 46 -2.3868808481570119e-06 47 1.4356430642779259e-06 48 0 49 5.7014340055133263e-06
		 50 4.4615367192317197e-06 51 1.3407195177096821e-05 52 -5.9064059460709653e-06 53 4.4219605111915495e-06
		 54 1.5972981464342206e-06 55 -2.6758414250457585e-06 56 0 57 2.4217331385491202e-06
		 58 3.0566630363464231 59 0 60 -3.6074689289220865e-06 61 -4.7131279827380197e-06
		 62 0 63 0 64 0 65 1.3610000420039003e-06 66 1.2783743785481999e-06 67 1.8278919893562686e-06
		 68 1.2720397644605457e-06 69 -1.2269941864291126e-06 70 -4.5198400492034308e-29 71 0
		 72 1.7205422629757219e-06 73 2.8269382921613343e-06 74 -1.9218410038914477e-06 75 0
		 76 2.5056501631013087e-06 77 -1.3995031529596567e-06 78 -1.4693808537208877e-06 79 4.8482197788744404e-06
		 80 -1.4927464832169801e-06 81 -9.0396800984071262e-29 82 1.6404610494895669e-06 83 2.2599200246017134e-29
		 84 1.8140349412656292e-06 85 1.5435078832778309e-06 86 1.268943820741194e-06 87 0
		 88 3.5208090582805732e-06 89 0 90 1.5689775994754014e-06 91 0 92 3.0567526219535648e-06
		 93 0 94 0 95 0 96 0 97 -2.6371292267148048e-06 98 -5.6498000615042093e-30 99 0 100 -3.6158720393627034e-28
		 101 1.8042064632981889e-06 102 -3.0145399920332836e-06 103 4.957771564375881e-06
		 104 1.7099104086514979e-06 105 -3.9204092204055329e-06 106 0 107 1.184848949858495e-23
		 108 0 109 0 110 -1.7178333723284559e-06 111 0 112 -2.9621223746460912e-24 113 -1.7104803371647891e-06
		 114 0 115 0 116 -1.240636965340316e-06 117 0 118 0 119 2.0270811006419647e-06 120 1.7123103097525042e-06
		 121 4.3191980585580181e-06 122 0 123 3.7287436436379221e-06 124 -1.5744966599941276e-06
		 125 -4.5198400492035642e-29 126 0 127 -4.5198400492034667e-29 128 2.7915498047888576e-06
		 129 0 130 0 131 -1.3397375435717608e-06 132 0 133 0 134 0 135 -4.5592128112230224e-06
		 136 0;
createNode animCurveTU -n "locator15_scaleX";
	rename -uid "B3D7DCF8-4CDE-F886-D916-9091434B2DAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 0.99999999999999989 3 0.99999999999999989
		 4 0.99999999999999989 5 0.99999999999999989 6 1 7 1 8 1 9 1 10 0.99999999999999989
		 11 0.99999999999999989 12 0.99999999999999978 13 0.99999999999999989 14 1 15 1 16 1
		 17 1.0000000000000002 18 1 19 1 20 1 21 1 22 0.99999999999999989 23 1 24 1 25 0.99999999999999978
		 26 0.99999999999999989 27 1 28 1 29 1 30 0.99999999999999989 31 0.99999999999999989
		 32 1 33 0.99999999999999989 34 1 35 1 36 0.99999999999999978 37 1 38 1.0000000000000002
		 39 1 40 1 41 1.0000000000000002 42 0.99999999999999978 43 1.0000000000000002 44 0.99999999999999967
		 45 0.99999999999999978 46 1 47 1.0000000000000002 48 1 49 1 50 1 51 0.99999999999999956
		 52 1.0000000000000002 53 0.99999999999999956 54 1 55 1.0000000000000004 56 1 57 1
		 58 0.99999999999999989 59 0.99999999999999989 60 1 61 1 62 0.99999999999999967 63 0.99999999999999989
		 64 0.99999999999999944 65 1.0000000000000004 66 0.99999999999999978 67 1.0000000000000002
		 68 0.99999999999999989 69 1.0000000000000002 70 0.99999999999999967 71 1.0000000000000004
		 72 1 73 0.99999999999999989 74 1 75 1.0000000000000004 76 1.0000000000000007 77 1
		 78 1 79 0.99999999999999989 80 1.0000000000000002 81 1 82 1.0000000000000002 83 1.0000000000000002
		 84 0.99999999999999978 85 1.0000000000000002 86 0.99999999999999967 87 0.99999999999999989
		 88 1.0000000000000004 89 0.99999999999999989 90 0.99999999999999944 91 0.99999999999999978
		 92 1 93 1 94 0.99999999999999989 95 1.0000000000000002 96 0.99999999999999989 97 0.99999999999999989
		 98 0.99999999999999978 99 1.0000000000000004 100 0.99999999999999967 101 0.99999999999999978
		 102 0.99999999999999956 103 1.0000000000000002 104 0.99999999999999956 105 0.99999999999999956
		 106 1.0000000000000002 107 0.99999999999999989 108 0.99999999999999989 109 1.0000000000000004
		 110 1.0000000000000004 111 1.0000000000000004 112 0.99999999999999978 113 0.99999999999999978
		 114 1 115 0.99999999999999944 116 0.99999999999999978 117 1 118 0.99999999999999989
		 119 0.99999999999999944 120 1.0000000000000002 121 1.0000000000000002 122 0.99999999999999933
		 123 1 124 1 125 1 126 0.99999999999999978 127 1.0000000000000002 128 1 129 0.99999999999999967
		 130 0.99999999999999967 131 0.99999999999999956 132 1.0000000000000002 133 0.99999999999999944
		 134 1 135 0.99999999999999989 136 1;
createNode animCurveTU -n "locator15_scaleY";
	rename -uid "2CC200A7-4E0B-DB49-AB1F-079B1C64B9B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 0.99999999999999989
		 3 1.0000000000000002 4 0.99999999999999978 5 0.99999999999999989 6 0.99999999999999967
		 7 1.0000000000000002 8 0.99999999999999989 9 1.0000000000000002 10 0.99999999999999978
		 11 0.99999999999999978 12 0.99999999999999989 13 1 14 0.99999999999999978 15 1 16 1
		 17 1 18 0.99999999999999989 19 1 20 1 21 0.99999999999999933 22 1.0000000000000002
		 23 1.0000000000000002 24 0.99999999999999989 25 0.99999999999999978 26 0.99999999999999989
		 27 1 28 1.0000000000000002 29 0.99999999999999989 30 0.99999999999999989 31 1.0000000000000002
		 32 0.99999999999999989 33 1 34 0.99999999999999978 35 1.0000000000000002 36 0.99999999999999978
		 37 0.99999999999999978 38 1 39 0.99999999999999989 40 0.99999999999999978 41 1.0000000000000002
		 42 1 43 0.99999999999999978 44 1 45 0.99999999999999978 46 0.99999999999999978 47 0.99999999999999989
		 48 1.0000000000000004 49 1 50 1 51 1 52 1.0000000000000002 53 0.99999999999999989
		 54 0.99999999999999989 55 1.0000000000000002 56 0.99999999999999978 57 1 58 1 59 1
		 60 0.99999999999999978 61 0.99999999999999989 62 1.0000000000000004 63 1 64 1 65 0.99999999999999989
		 66 0.99999999999999989 67 1.0000000000000002 68 0.99999999999999989 69 1 70 0.99999999999999989
		 71 1.0000000000000002 72 1.0000000000000002 73 1 74 0.99999999999999967 75 1 76 0.99999999999999989
		 77 1 78 0.99999999999999989 79 0.99999999999999978 80 1.0000000000000002 81 1 82 0.99999999999999989
		 83 1.0000000000000002 84 0.99999999999999956 85 0.99999999999999978 86 0.99999999999999989
		 87 1 88 0.99999999999999989 89 0.99999999999999978 90 1 91 0.99999999999999978 92 0.99999999999999978
		 93 0.99999999999999989 94 1 95 1.0000000000000002 96 1 97 0.99999999999999989 98 1
		 99 1.0000000000000002 100 0.99999999999999933 101 1.0000000000000002 102 0.99999999999999978
		 103 1 104 1 105 0.99999999999999967 106 0.99999999999999978 107 0.99999999999999989
		 108 0.99999999999999989 109 1 110 0.99999999999999989 111 1 112 0.99999999999999989
		 113 1 114 1 115 0.99999999999999956 116 0.99999999999999978 117 0.99999999999999989
		 118 0.99999999999999978 119 0.99999999999999978 120 0.99999999999999989 121 1.0000000000000002
		 122 0.99999999999999978 123 1 124 1 125 1 126 0.99999999999999978 127 1 128 1.0000000000000002
		 129 0.99999999999999989 130 1 131 1 132 0.99999999999999989 133 1 134 0.99999999999999989
		 135 1 136 1;
createNode animCurveTU -n "locator15_scaleZ";
	rename -uid "4D87CF2B-411B-A3BB-434F-7EBC9C56523D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 0.99999999999999989
		 3 0.99999999999999989 4 1 5 0.99999999999999989 6 0.99999999999999978 7 1.0000000000000002
		 8 0.99999999999999989 9 1.0000000000000002 10 0.99999999999999989 11 0.99999999999999989
		 12 0.99999999999999978 13 1 14 1 15 1.0000000000000004 16 1 17 1 18 0.99999999999999989
		 19 1 20 0.99999999999999989 21 0.99999999999999978 22 1 23 1 24 1 25 0.99999999999999989
		 26 0.99999999999999967 27 0.99999999999999978 28 1.0000000000000002 29 0.99999999999999989
		 30 0.99999999999999989 31 1 32 1.0000000000000002 33 1 34 0.99999999999999989 35 1
		 36 0.99999999999999989 37 0.99999999999999978 38 1 39 1.0000000000000002 40 1 41 1.0000000000000002
		 42 0.99999999999999978 43 1.0000000000000002 44 0.99999999999999978 45 1 46 0.99999999999999967
		 47 1 48 1 49 0.99999999999999989 50 0.99999999999999989 51 1 52 0.99999999999999989
		 53 0.99999999999999956 54 0.99999999999999989 55 1.0000000000000002 56 0.99999999999999989
		 57 1 58 0.99999999999999989 59 1 60 1.0000000000000002 61 1.0000000000000002 62 1
		 63 1.0000000000000002 64 0.99999999999999989 65 1.0000000000000004 66 0.99999999999999989
		 67 1.0000000000000004 68 0.99999999999999989 69 1 70 0.99999999999999967 71 1.0000000000000007
		 72 1 73 1 74 1 75 1.0000000000000004 76 1.0000000000000004 77 0.99999999999999989
		 78 0.99999999999999978 79 0.99999999999999978 80 1 81 1 82 1 83 0.99999999999999978
		 84 0.99999999999999978 85 1.0000000000000002 86 0.99999999999999978 87 1 88 1.0000000000000002
		 89 0.99999999999999989 90 0.99999999999999956 91 0.99999999999999967 92 0.99999999999999989
		 93 1.0000000000000002 94 1 95 1.0000000000000007 96 0.99999999999999989 97 0.99999999999999989
		 98 1 99 1.0000000000000004 100 0.99999999999999967 101 1 102 0.99999999999999956
		 103 1 104 0.99999999999999956 105 0.99999999999999989 106 1.0000000000000002 107 1
		 108 0.99999999999999989 109 1.0000000000000009 110 1.0000000000000004 111 0.99999999999999989
		 112 1 113 0.99999999999999978 114 1.0000000000000002 115 0.99999999999999944 116 1
		 117 1.0000000000000002 118 0.99999999999999989 119 0.99999999999999978 120 0.99999999999999989
		 121 0.99999999999999978 122 0.99999999999999956 123 0.99999999999999944 124 0.99999999999999967
		 125 1 126 0.99999999999999989 127 1.0000000000000002 128 1 129 0.99999999999999978
		 130 0.99999999999999956 131 1 132 1.0000000000000002 133 0.99999999999999933 134 1
		 135 0.99999999999999967 136 1;
createNode animCurveTU -n "locator16_visibility";
	rename -uid "4B84E5A6-4BCD-14D1-8196-7B9125536AF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1
		 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1
		 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1
		 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTL -n "locator16_translateX";
	rename -uid "E6B168A9-46CD-ED71-CF35-7BA3536F4BED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 6.3342855938230969e-07 1 6.3342855760595285e-07
		 2 6.3342855582959601e-07 3 6.3342855582959601e-07 4 6.3342855405323917e-07 5 6.3342855582959601e-07
		 6 6.3342855405323917e-07 7 6.3342855760595285e-07 8 6.3342855760595285e-07 9 6.3342855760595285e-07
		 10 6.3342855760595285e-07 11 6.3342855405323917e-07 12 6.3342855760595285e-07 13 6.3342855671777443e-07
		 14 6.3342855671777443e-07 15 6.3342855599612946e-07 16 6.3342855760595285e-07 17 6.3342855582959601e-07
		 18 6.3342855671777443e-07 19 6.3342855494141759e-07 20 6.3342855405323917e-07 21 6.3342855582959601e-07
		 22 6.3342855760595285e-07 23 6.3342855582959601e-07 24 6.3342855582959601e-07 25 6.3342855582959601e-07
		 26 6.3342855938230969e-07 27 6.3342855582959601e-07 28 6.3342855760595285e-07 29 6.3342855760595285e-07
		 30 6.3342855582959601e-07 31 6.3342855582959601e-07 32 6.3342855627368522e-07 33 6.3342855627368522e-07
		 34 6.334285553855068e-07 35 6.3342855582959601e-07 36 6.3342855227688233e-07 37 6.3342857004045072e-07
		 38 6.3342852740788658e-07 39 6.3342857004045072e-07 40 6.3342852740788658e-07 41 6.3342855582959601e-07
		 42 6.3342854161874129e-07 43 6.3342854161874129e-07 44 6.3342855582959601e-07 45 6.3342855582959601e-07
		 46 6.3342855582959601e-07 47 6.3342853451331393e-07 48 6.3342852740788658e-07 49 6.3342855582959601e-07
		 50 6.3342855582959601e-07 51 6.3342855582959601e-07 52 6.3342854161874129e-07 53 6.3342856293502336e-07
		 54 6.3342854872416865e-07 55 6.3342856293502336e-07 56 6.3342856293502336e-07 57 6.3342855582959601e-07
		 58 6.3342856293502336e-07 59 6.3342855760595285e-07 60 6.3342853362513551e-07 61 6.3342855582959601e-07
		 62 6.3342854161874129e-07 63 6.3342855582959601e-07 64 6.3342857004045072e-07 65 6.3342854161874129e-07
		 66 6.3342857004045072e-07 67 6.3342854161874129e-07 68 6.3342849898617715e-07 69 6.3342855582959601e-07
		 70 6.3342855582959601e-07 71 6.3342855582959601e-07 72 6.3342855582959601e-07 73 6.3342855582959601e-07
		 74 6.3342855582959601e-07 75 6.3342855582959601e-07 76 6.3342858425130544e-07 77 6.3342857004045072e-07
		 78 6.3342855582959601e-07 79 6.3342857004045072e-07 80 6.3342855582959601e-07 81 6.3342854161874129e-07
		 82 6.3342854161874129e-07 83 6.3342855582959601e-07 84 6.3342855582959601e-07 85 6.3342855582959601e-07
		 86 6.3342854161874129e-07 87 6.3342854161874129e-07 88 6.3342854161874129e-07 89 6.3342854872416865e-07
		 90 6.3342856293502336e-07 91 6.3342857004045072e-07 92 6.3342856293502336e-07 93 6.3342854161874129e-07
		 94 6.3342854872416865e-07 95 6.3342852030245922e-07 96 6.3342854161874129e-07 97 6.3342854872416865e-07
		 98 6.3342854872416865e-07 99 6.3342856293502336e-07 100 6.3342857004045072e-07 101 6.3342854872416865e-07
		 102 6.3342853451331393e-07 103 6.3342854872416865e-07 104 6.3342854161874129e-07
		 105 6.3342855582959601e-07 106 6.3342854161874129e-07 107 6.3342855582959601e-07
		 108 6.3342852740788658e-07 109 6.3342854161874129e-07 110 6.3342855582959601e-07
		 111 6.3342854161874129e-07 112 6.3342854161874129e-07 113 6.3342857004045072e-07
		 114 6.3342855582959601e-07 115 6.3342854161874129e-07 116 6.3342855582959601e-07
		 117 6.3342852740788658e-07 118 6.3342854161874129e-07 119 6.3342855582959601e-07
		 120 6.3342854161874129e-07 121 6.3342855582959601e-07 122 6.3342852740788658e-07
		 123 6.3342855582959601e-07 124 6.3342855582959601e-07 125 6.3342855582959601e-07
		 126 6.3342857004045072e-07 127 6.3342852740788658e-07 128 6.3342857004045072e-07
		 129 6.3342857004045072e-07 130 6.3342858425130544e-07 131 6.3342855582959601e-07
		 132 6.3342855582959601e-07 133 6.3342855582959601e-07 134 6.3342854161874129e-07
		 135 6.3342855582959601e-07 136 6.3342855582959601e-07;
createNode animCurveTL -n "locator16_translateY";
	rename -uid "123AA0B9-48EB-E263-F4D7-64BE19047BD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 16.671669006347656 1 16.67166900634767
		 2 16.67166900634767 3 16.671669006347685 4 16.671669006347656 5 16.671669006347628
		 6 16.671669006347656 7 16.671669006347628 8 16.671669006347628 9 16.671669006347628
		 10 16.671669006347628 11 16.671669006347685 12 16.671669006347656 13 16.671669006347628
		 14 16.671669006347685 15 16.671669006347685 16 16.671669006347656 17 16.671669006347628
		 18 16.671669006347685 19 16.671669006347628 20 16.671669006347656 21 16.671669006347656
		 22 16.671669006347628 23 16.671669006347656 24 16.671669006347628 25 16.671669006347656
		 26 16.671669006347628 27 16.671669006347656 28 16.671669006347685 29 16.671669006347628
		 30 16.671669006347656 31 16.671669006347713 32 16.671669006347685 33 16.671669006347685
		 34 16.671669006347685 35 16.671669006347685 36 16.671669006347685 37 16.671669006347656
		 38 16.671669006347656 39 16.671669006347628 40 16.671669006347628 41 16.671669006347685
		 42 16.671669006347656 43 16.671669006347628 44 16.671669006347685 45 16.671669006347656
		 46 16.671669006347656 47 16.671669006347628 48 16.671669006347656 49 16.671669006347656
		 50 16.67166900634767 51 16.671669006347642 52 16.671669006347699 53 16.671669006347656
		 54 16.671669006347628 55 16.671669006347628 56 16.671669006347656 57 16.671669006347656
		 58 16.671669006347628 59 16.671669006347685 60 16.671669006347656 61 16.671669006347656
		 62 16.671669006347653 63 16.671669006347635 64 16.671669006347642 65 16.67166900634767
		 66 16.671669006347685 67 16.671669006347656 68 16.671669006347642 69 16.671669006347656
		 70 16.67166900634767 71 16.671669006347642 72 16.671669006347699 73 16.671669006347678
		 74 16.671669006347635 75 16.671669006347656 76 16.671669006347692 77 16.671669006347649
		 78 16.671669006347642 79 16.671669006347656 80 16.671669006347628 81 16.671669006347642
		 82 16.67166900634767 83 16.67166900634767 84 16.671669006347685 85 16.671669006347628
		 86 16.671669006347656 87 16.671669006347685 88 16.671669006347685 89 16.671669006347685
		 90 16.671669006347628 91 16.671669006347628 92 16.671669006347628 93 16.671669006347628
		 94 16.671669006347628 95 16.671669006347656 96 16.671669006347656 97 16.671669006347642
		 98 16.671669006347628 99 16.671669006347642 100 16.671669006347642 101 16.671669006347656
		 102 16.671669006347656 103 16.671669006347628 104 16.671669006347685 105 16.671669006347656
		 106 16.671669006347656 107 16.671669006347642 108 16.671669006347628 109 16.671669006347642
		 110 16.671669006347642 111 16.671669006347656 112 16.671669006347628 113 16.671669006347656
		 114 16.671669006347656 115 16.671669006347656 116 16.671669006347656 117 16.671669006347628
		 118 16.671669006347656 119 16.671669006347628 120 16.671669006347685 121 16.671669006347628
		 122 16.671669006347656 123 16.671669006347628 124 16.671669006347656 125 16.671669006347656
		 126 16.671669006347628 127 16.671669006347628 128 16.671669006347656 129 16.671669006347656
		 130 16.671669006347656 131 16.671669006347656 132 16.671669006347642 133 16.67166900634767
		 134 16.671669006347628 135 16.671669006347656 136 16.67166900634767;
createNode animCurveTL -n "locator16_translateZ";
	rename -uid "7E49A2A7-48BC-895E-E334-53ABB944D73F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -2.5161678791046143 1 -2.5161678791046214
		 2 -2.5161678791046072 3 -2.5161678791045965 4 -2.5161678791046178 5 -2.5161678791046072
		 6 -2.516167879104616 7 -2.516167879104616 8 -2.5161678791046103 9 -2.5161678791046169
		 10 -2.5161678791046125 11 -2.5161678791046072 12 -2.5161678791046143 13 -2.5161678791046178
		 14 -2.5161678791046143 15 -2.5161678791046072 16 -2.5161678791046036 17 -2.5161678791046214
		 18 -2.5161678791046072 19 -2.5161678791046072 20 -2.5161678791046072 21 -2.5161678791046072
		 22 -2.5161678791046072 23 -2.5161678791046285 24 -2.5161678791046072 25 -2.5161678791046072
		 26 -2.5161678791046143 27 -2.5161678791046143 28 -2.5161678791046143 29 -2.5161678791046143
		 30 -2.5161678791046285 31 -2.5161678791046143 32 -2.5161678791046 33 -2.5161678791046285
		 34 -2.5161678791046143 35 -2.5161678791046427 36 -2.5161678791046427 37 -2.5161678791046
		 38 -2.5161678791046285 39 -2.5161678791046 40 -2.5161678791046072 41 -2.5161678791046072
		 42 -2.5161678791046 43 -2.5161678791046 44 -2.5161678791046143 45 -2.5161678791045858
		 46 -2.5161678791046143 47 -2.5161678791045574 48 -2.5161678791046427 49 -2.5161678791046143
		 50 -2.5161678791046427 51 -2.5161678791045858 52 -2.5161678791045858 53 -2.5161678791046427
		 54 -2.5161678791046143 55 -2.5161678791045574 56 -2.5161678791045858 57 -2.5161678791046143
		 58 -2.5161678791046143 59 -2.5161678791046143 60 -2.5161678791045858 61 -2.5161678791046427
		 62 -2.5161678791046427 63 -2.5161678791046143 64 -2.5161678791046143 65 -2.5161678791046143
		 66 -2.5161678791045858 67 -2.5161678791046427 68 -2.5161678791046143 69 -2.5161678791046143
		 70 -2.5161678791046427 71 -2.5161678791046143 72 -2.5161678791046143 73 -2.5161678791046427
		 74 -2.5161678791046143 75 -2.5161678791046143 76 -2.5161678791046143 77 -2.5161678791046427
		 78 -2.5161678791046143 79 -2.5161678791045858 80 -2.5161678791046143 81 -2.5161678791046143
		 82 -2.5161678791046427 83 -2.5161678791046143 84 -2.5161678791046427 85 -2.5161678791046427
		 86 -2.5161678791046427 87 -2.5161678791046143 88 -2.5161678791046143 89 -2.5161678791046143
		 90 -2.5161678791046143 91 -2.5161678791045858 92 -2.5161678791046143 93 -2.5161678791046427
		 94 -2.5161678791045858 95 -2.5161678791045858 96 -2.5161678791046427 97 -2.5161678791046143
		 98 -2.5161678791046143 99 -2.5161678791046143 100 -2.5161678791045858 101 -2.5161678791046143
		 102 -2.5161678791046143 103 -2.5161678791046427 104 -2.5161678791046143 105 -2.5161678791046427
		 106 -2.5161678791045858 107 -2.5161678791045858 108 -2.5161678791045858 109 -2.5161678791046143
		 110 -2.5161678791046143 111 -2.5161678791045858 112 -2.5161678791045858 113 -2.5161678791046711
		 114 -2.5161678791046143 115 -2.5161678791045858 116 -2.5161678791045858 117 -2.5161678791046143
		 118 -2.5161678791046143 119 -2.5161678791046427 120 -2.5161678791045858 121 -2.5161678791046143
		 122 -2.5161678791046143 123 -2.5161678791046143 124 -2.5161678791045858 125 -2.5161678791046427
		 126 -2.5161678791046143 127 -2.5161678791046143 128 -2.5161678791046427 129 -2.5161678791046995
		 130 -2.5161678791046427 131 -2.5161678791046427 132 -2.5161678791046143 133 -2.5161678791046143
		 134 -2.5161678791046143 135 -2.5161678791046143 136 -2.5161678791046143;
createNode animCurveTA -n "locator16_rotateX";
	rename -uid "120F5258-47DF-224A-8200-0DA86BD46259";
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
		 34 -10.620683670043945 35 -10.410068511962894 36 -9.7996072769165057 37 -9.554475784301756
		 38 -10.848145484924318 39 -12.902300834655763 40 -13.905647277832033 41 -13.018095016479489
		 42 -11.064358711242674 43 -9.5104293823242188 44 -8.0046844482421875 45 -6.2152495384216317
		 46 -5.020613670349122 47 -4.686654567718505 48 -4.696434497833252 49 -5.0791735649108896
		 50 -5.9351963996887198 51 -6.7500543594360378 52 -7.6049604415893572 53 -8.3062591552734375
		 54 -8.273040771484375 55 -7.5230474472045907 56 -6.0370163917541504 57 -4.3618412017822266
		 58 -3.6438822746276864 59 -3.9323847293853773 60 -4.3841781616210938 61 -4.6308002471923837
		 62 -4.487948417663576 63 -4.168832302093505 64 -4.6170368194580087 65 -5.7889604568481445
		 66 -6.5010552406311009 67 -6.339561462402342 68 -5.486180782318117 69 -4.9507436752319336
		 70 -5.4479398727416983 71 -5.673755168914794 72 -5.5308284759521475 73 -5.7046589851379395
		 74 -5.8403010368347168 75 -5.7413973808288583 76 -5.4084320068359366 77 -4.8881802558898926
		 78 -4.2547960281372061 79 -3.5912017822265625 80 -2.8660426139831547 81 -1.9183845520019533
		 82 -0.99330085515975941 83 -0.35144338011741638 84 -0.06177463382482528 85 -0.34044396877288818
		 86 -1.0446299314498901 87 -1.7312310934066772 88 -2.2940754890441903 89 -2.770350694656373
		 90 -3.1207492351531978 91 -3.3092463016510014 92 -3.4156050682067871 93 -3.4144396781921391
		 94 -3.2702677249908447 95 -3.0225789546966562 96 -2.7541720867156982 97 -2.5762343406677255
		 98 -2.4744255542755136 99 -2.4239127635955811 100 -2.3576002120971675 101 -2.1772499084472665
		 102 -1.9906891584396365 103 -1.8719402551651008 104 -1.791714072227478 105 -1.893458366394043
		 106 -2.0845534801483154 107 -2.0722725391387939 108 -2.0057601928710933 109 -2.0563745498657227
		 110 -2.1601581573486328 111 -2.2615151405334473 112 -2.2240617275238037 113 -2.0430152416229248
		 114 -1.9682849645614624 115 -2.0140309333801274 116 -2.0089125633239755 117 -1.9760636091232304
		 118 -2.0153348445892338 119 -2.0954103469848633 120 -2.0456893444061275 121 -1.8467636108398435
		 122 -1.7673389911651611 123 -1.8231086730957029 124 -1.8459641933441164 125 -1.8385179042816164
		 126 -1.8559727668762216 127 -1.8338125944137578 128 -1.7978799343109133 129 -1.8110102415084837
		 130 -1.8944364786148071 131 -1.9770350456237791 132 -2.0055809020996089 133 -2.0500264167785645
		 134 -2.1243929862976074 135 -2.233057022094727 136 -2.2964630126953125;
createNode animCurveTA -n "locator16_rotateY";
	rename -uid "F881EC15-4653-F500-9AF4-01BA38D2E050";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -0.41168811917304982 1 -0.42757880687713634
		 2 -0.43241718411445618 3 -0.42079052329063404 4 -0.43053287267684942 5 -0.40384584665298456
		 6 -0.34106120467185974 7 -0.32883739471435536 8 -0.3704457283020019 9 -0.46788907051086426
		 10 -0.5831177830696106 11 -0.59678369760513295 12 -0.46906793117523204 13 -0.23391273617744449
		 14 0.018902026116847988 15 0.19049403071403509 16 0.33569803833961481 17 0.52620965242385864
		 18 0.64866465330123912 19 0.67831337451934803 20 0.69454681873321544 21 0.72657310962677013
		 22 0.79665541648864724 23 0.82370501756668091 24 0.77441304922103893 25 0.74077057838439941
		 26 0.69292187690734863 27 0.5650697350502013 28 0.42964369058609009 29 0.34512314200401306
		 30 0.24781924486160278 31 0.086420580744743306 32 -0.076450824737548814 33 -0.15663065016269681
		 34 -0.12938739359378817 35 0.27616828680038458 36 1.3950629234313967 37 2.7734062671661373
		 38 4.0729742050170898 39 5.3575916290283203 40 6.1990270614624023 41 6.2577662467956534
		 42 5.5372223854064933 43 4.2344636917114258 44 3.1232471466064449 45 2.547765731811523
		 46 2.0634756088256831 47 1.3060754537582397 48 0.18032823503017428 49 -1.0517036914825439
		 50 -1.7107793092727659 51 -1.8491357564926154 52 -1.9603190422058108 53 -1.9852365255355839
		 54 -1.944082617759705 55 -1.8702338933944702 56 -1.6028774976730347 57 -1.3207631111145022
		 58 -1.0939306020736697 59 -0.6830674409866333 60 0.10761778056621554 61 1.086963891983032
		 62 2.037418127059937 63 2.9819898605346671 64 4.0140867233276376 65 5.0493898391723633
		 66 5.7957706451416007 67 6.165918827056883 68 6.1459212303161648 69 5.9780220985412607
		 70 6.0041027069091797 71 5.9546689987182626 72 5.7697858810424805 73 5.6253728866577166
		 74 5.5008988380432129 75 5.4005718231201181 76 5.3634834289550763 77 5.4051871299743643
		 78 5.451995849609375 79 5.4318065643310547 80 5.3946542739868173 81 5.4212121963500977
		 82 5.4891085624694824 83 5.5477123260498065 84 5.5962228775024423 85 5.5792827606201163
		 86 5.3968458175659171 87 5.0437254905700684 88 4.6581087112426767 89 4.3351850509643564
		 90 4.1293087005615225 91 4.0312561988830584 92 3.9515702724456787 93 3.8899784088134757
		 94 3.8820867538452153 95 3.859713315963746 96 3.8208107948303236 97 3.8572714328765896
		 98 3.9714372158050546 99 4.1051630973815909 100 4.2238249778747567 101 4.3123426437377939
		 102 4.4016904830932617 103 4.4945430755615234 104 4.5609526634216309 105 4.630047321319581
		 106 4.7010850906372088 107 4.7681431770324716 108 4.863600254058837 109 4.9973583221435547
		 110 5.1270456314086923 111 5.2250995635986319 112 5.3079748153686523 113 5.3454794883728027
		 114 5.3746023178100595 115 5.4409565925598162 116 5.5028934478759783 117 5.5390191078186035
		 118 5.5775337219238299 119 5.6289987564086923 120 5.7102718353271475 121 5.8057193756103525
		 122 5.8548192977905273 123 5.8450107574462891 124 5.7919597625732422 125 5.7593688964843741
		 126 5.7554287910461435 127 5.7559070587158203 128 5.7341389656066912 129 5.6883916854858381
		 130 5.6553740501403809 131 5.6271376609802237 132 5.5922307968139648 133 5.5781416893005371
		 134 5.5712184906005859 135 5.5529026985168484 136 5.5723762512207049;
createNode animCurveTA -n "locator16_rotateZ";
	rename -uid "0F59D62E-4CDF-E77A-EF1B-5BA4D88745B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.96397787332534768 1 1.0227682590484621
		 2 0.95957005023956277 3 0.94658273458480835 4 1.1445343494415283 5 1.1804288625717163
		 6 0.85959511995315552 7 0.49966916441917403 8 0.44663453102111811 9 0.84518539905548073
		 10 1.181243896484375 11 1.014970064163208 12 0.5553358793258667 13 0.0703251957893372
		 14 -0.19751225411891932 15 -0.13674558699131015 16 -0.061339370906353011 17 -0.017185656353831288
		 18 0.35359501838684082 19 0.72834086418151867 20 0.7205857038497927 21 0.54759985208511341
		 22 0.15191771090030667 23 -0.13791185617446902 24 -0.09658452123403552 25 -0.14150702953338623
		 26 -0.3327623307704925 27 -0.46290037035942067 28 -0.38323703408241283 29 0.0049323476850986533
		 30 0.58340585231781017 31 1.0411971807479858 32 1.1876163482666018 33 0.87938690185546875
		 34 0.59243065118789673 35 0.20096947252750405 36 -0.77090972661972057 37 -1.6102629899978635
		 38 -2.4729876518249512 39 -3.91325879096985 40 -4.8420815467834473 41 -5.7141084671020517
		 42 -6.8356876373291007 43 -5.9560890197753906 44 -4.2239270210266122 45 -3.1545770168304452
		 46 -2.4317197799682617 47 -1.7474240064620974 48 -0.36369231343269354 49 1.474780797958374
		 50 0.7757570743560791 51 -1.7462073564529423 52 -2.2647366523742676 53 -1.9689451456069944
		 54 -1.3682695627212522 55 -0.37411570549011236 56 0.057704813778400428 57 0.18336740136146548
		 58 0.50641644001007102 59 1.1387865543365481 60 1.2291479110717773 61 0.83701640367507946
		 62 0.58987808227539074 63 0.29038420319557184 64 0.41260561347007751 65 0.48419696092605569
		 66 -0.45064488053321811 67 -1.3844680786132808 68 -1.7978211641311648 69 -2.6088228225708003
		 70 -3.7840895652771001 71 -4.2206249237060547 72 -4.2078475952148438 73 -4.2486915588378915
		 74 -4.4758405685424796 75 -4.9064316749572754 76 -5.0290927886962891 77 -4.9700922966003427
		 78 -4.9249515533447275 79 -4.6813516616821289 80 -4.3004589080810538 81 -3.7860991954803471
		 82 -2.7079143524169922 83 -1.5889914035797124 84 -1.3810667991638186 85 -1.5801936388015747
		 86 -1.4684615135192869 87 -1.0823435783386233 88 -0.78023993968963656 89 -0.52403712272644065
		 90 -0.41808989644050598 91 -0.51226133108139049 92 -0.50165832042694092 93 -0.50141417980194092
		 94 -0.64969706535339344 95 -0.63922423124313354 96 -0.4861977994441985 97 -0.60255300998687755
		 98 -0.78975665569305409 99 -0.82214927673339844 100 -0.80567437410354603 101 -0.7467695474624636
		 102 -0.76316851377487194 103 -0.86684596538543712 104 -0.8908369541168214 105 -0.70266467332839966
		 106 -0.21764621138572698 107 0.021060278639197346 108 -0.15825781226158139 109 -0.26934745907783508
		 110 -0.24745266139507296 111 -0.19818189740180966 112 -0.13422860205173495 113 0.091717682778835311
		 114 0.26936879754066473 115 0.20908327400684365 116 0.12536428868770599 117 0.12596270442008967
		 118 0.11246131360530855 119 0.0071143242530524453 120 -0.41617915034294112 121 -1.0397984981536863
		 122 -1.3459967374801636 123 -1.3708974123001099 124 -1.2190254926681519 125 -1.0946652889251709
		 126 -1.1789393424987793 127 -1.4510746002197268 128 -1.5753065347671515 129 -1.4552744626998899
		 130 -1.3429666757583618 131 -1.2208682298660281 132 -1.004990220069885 133 -0.87989503145217896
		 134 -0.88617032766342152 135 -0.80456560850143466 136 -0.80386340618133556;
createNode animCurveTU -n "locator16_scaleX";
	rename -uid "45443CB9-4E68-603B-4EC0-078B9971B4D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999978 1 0.99999999999999989
		 2 0.99999999999999989 3 1 4 0.99999999999999989 5 0.99999999999999978 6 1 7 1 8 1
		 9 0.99999999999999989 10 1 11 1 12 1.0000000000000002 13 1 14 0.99999999999999989
		 15 1.0000000000000004 16 0.99999999999999989 17 0.99999999999999989 18 0.99999999999999989
		 19 1 20 0.99999999999999967 21 1 22 0.99999999999999989 23 0.99999999999999989 24 0.99999999999999978
		 25 0.99999999999999967 26 1 27 0.99999999999999978 28 1 29 0.99999999999999989 30 1
		 31 0.99999999999999978 32 1 33 1.0000000000000002 34 1.0000000000000002 35 0.99999999999999989
		 36 0.99999999999999978 37 0.99999999999999989 38 0.99999999999999989 39 0.99999999999999978
		 40 1 41 1 42 0.99999999999999978 43 1.0000000000000002 44 1 45 0.99999999999999978
		 46 0.99999999999999989 47 0.99999999999999989 48 1 49 1 50 0.99999999999999956 51 0.99999999999999989
		 52 1 53 0.99999999999999989 54 1 55 1.0000000000000002 56 0.99999999999999956 57 1.0000000000000004
		 58 1 59 1.0000000000000004 60 1.0000000000000002 61 0.99999999999999967 62 0.99999999999999967
		 63 0.99999999999999978 64 0.99999999999999978 65 0.99999999999999989 66 0.99999999999999967
		 67 1.0000000000000002 68 0.99999999999999967 69 1.0000000000000002 70 1 71 0.99999999999999989
		 72 0.99999999999999989 73 1.0000000000000004 74 1.0000000000000004 75 1.0000000000000004
		 76 1 77 1.0000000000000002 78 0.99999999999999933 79 0.99999999999999967 80 0.99999999999999989
		 81 1 82 1.0000000000000002 83 1.0000000000000002 84 0.99999999999999989 85 1.0000000000000002
		 86 0.99999999999999967 87 1 88 1 89 1.0000000000000004 90 0.99999999999999989 91 0.99999999999999956
		 92 1.0000000000000002 93 0.99999999999999967 94 0.99999999999999978 95 1.0000000000000002
		 96 0.99999999999999989 97 0.99999999999999978 98 1 99 1 100 0.99999999999999978 101 0.99999999999999967
		 102 0.99999999999999989 103 0.99999999999999967 104 0.99999999999999956 105 0.99999999999999944
		 106 0.99999999999999967 107 1 108 1.0000000000000004 109 1.0000000000000007 110 1
		 111 0.99999999999999956 112 1.0000000000000004 113 0.99999999999999989 114 0.99999999999999967
		 115 0.99999999999999956 116 0.99999999999999956 117 1 118 0.99999999999999956 119 1
		 120 0.99999999999999967 121 1 122 1 123 0.99999999999999989 124 0.99999999999999989
		 125 1 126 0.99999999999999978 127 1 128 0.99999999999999978 129 0.99999999999999956
		 130 0.99999999999999989 131 0.99999999999999944 132 1 133 0.99999999999999956 134 0.99999999999999978
		 135 0.99999999999999933 136 1.0000000000000002;
createNode animCurveTU -n "locator16_scaleY";
	rename -uid "22580E88-4A09-C181-7D65-84A775E5D79B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1.0000000000000002 1 1 2 1 3 1.0000000000000002
		 4 1 5 0.99999999999999956 6 1 7 1.0000000000000002 8 1 9 1 10 1 11 1 12 0.99999999999999978
		 13 0.99999999999999989 14 0.99999999999999989 15 1.0000000000000002 16 1 17 0.99999999999999978
		 18 1 19 0.99999999999999956 20 0.99999999999999978 21 0.99999999999999989 22 0.99999999999999978
		 23 1 24 1 25 0.99999999999999956 26 0.99999999999999978 27 0.99999999999999989 28 1
		 29 0.99999999999999967 30 1.0000000000000002 31 1.0000000000000002 32 1 33 1 34 1
		 35 0.99999999999999989 36 0.99999999999999989 37 0.99999999999999989 38 1 39 1.0000000000000002
		 40 0.99999999999999989 41 1.0000000000000002 42 1.0000000000000002 43 1 44 1.0000000000000002
		 45 0.99999999999999967 46 1 47 0.99999999999999967 48 1 49 1.0000000000000002 50 1
		 51 1 52 1 53 0.99999999999999989 54 1 55 0.99999999999999989 56 0.99999999999999978
		 57 0.99999999999999978 58 1 59 0.99999999999999989 60 0.99999999999999967 61 1 62 0.99999999999999978
		 63 1 64 0.99999999999999989 65 1 66 0.99999999999999978 67 1 68 0.99999999999999956
		 69 1 70 1.0000000000000002 71 0.99999999999999989 72 1.0000000000000002 73 1.0000000000000002
		 74 1 75 1.0000000000000002 76 0.99999999999999978 77 1.0000000000000002 78 0.99999999999999978
		 79 1 80 0.99999999999999978 81 1 82 1 83 0.99999999999999989 84 1 85 1 86 1 87 1
		 88 1.0000000000000004 89 1 90 0.99999999999999978 91 0.99999999999999978 92 1.0000000000000002
		 93 0.99999999999999989 94 0.99999999999999978 95 1 96 0.99999999999999989 97 0.99999999999999978
		 98 1 99 0.99999999999999989 100 1 101 0.99999999999999989 102 1 103 0.99999999999999978
		 104 1 105 0.99999999999999989 106 1.0000000000000002 107 0.99999999999999989 108 0.99999999999999967
		 109 1 110 0.99999999999999989 111 0.99999999999999989 112 0.99999999999999978 113 0.99999999999999978
		 114 1.0000000000000002 115 0.99999999999999989 116 0.99999999999999956 117 0.99999999999999989
		 118 0.99999999999999978 119 1 120 0.99999999999999989 121 0.99999999999999989 122 0.99999999999999989
		 123 0.99999999999999989 124 0.99999999999999989 125 0.99999999999999989 126 1 127 0.99999999999999989
		 128 0.99999999999999989 129 1 130 0.99999999999999978 131 0.99999999999999978 132 1
		 133 0.99999999999999989 134 0.99999999999999978 135 0.99999999999999989 136 1;
createNode animCurveTU -n "locator16_scaleZ";
	rename -uid "F18D270F-44D0-3583-54AB-11ACCE2D766B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999978 1 0.99999999999999978
		 2 1 3 0.99999999999999989 4 1 5 0.99999999999999989 6 1 7 1.0000000000000002 8 0.99999999999999967
		 9 1 10 0.99999999999999978 11 0.99999999999999989 12 1 13 1 14 1 15 1 16 1 17 0.99999999999999989
		 18 0.99999999999999989 19 1.0000000000000002 20 1 21 1 22 0.99999999999999989 23 0.99999999999999989
		 24 0.99999999999999978 25 0.99999999999999978 26 0.99999999999999956 27 0.99999999999999956
		 28 1 29 1 30 1 31 1 32 1 33 1 34 0.99999999999999989 35 1 36 1 37 0.99999999999999989
		 38 0.99999999999999989 39 1.0000000000000002 40 1.0000000000000002 41 1 42 0.99999999999999978
		 43 1.0000000000000002 44 1 45 1 46 0.99999999999999989 47 1 48 1.0000000000000002
		 49 1.0000000000000002 50 0.99999999999999967 51 1 52 0.99999999999999956 53 0.99999999999999978
		 54 1 55 1.0000000000000002 56 1 57 1.0000000000000002 58 0.99999999999999978 59 1.0000000000000004
		 60 1 61 0.99999999999999978 62 0.99999999999999978 63 0.99999999999999989 64 0.99999999999999978
		 65 0.99999999999999989 66 0.99999999999999956 67 1 68 0.99999999999999978 69 1 70 1.0000000000000002
		 71 1 72 0.99999999999999989 73 1.0000000000000002 74 1.0000000000000004 75 1.0000000000000004
		 76 0.99999999999999989 77 1.0000000000000004 78 0.99999999999999978 79 0.99999999999999956
		 80 0.99999999999999989 81 1.0000000000000004 82 1.0000000000000002 83 1.0000000000000002
		 84 1 85 1.0000000000000002 86 0.99999999999999956 87 1 88 0.99999999999999989 89 1.0000000000000002
		 90 0.99999999999999978 91 0.99999999999999967 92 1.0000000000000002 93 0.99999999999999978
		 94 1 95 1 96 0.99999999999999978 97 0.99999999999999978 98 1 99 1.0000000000000002
		 100 0.99999999999999978 101 0.99999999999999933 102 0.99999999999999989 103 0.99999999999999978
		 104 0.99999999999999989 105 0.99999999999999944 106 0.99999999999999978 107 1 108 1.0000000000000002
		 109 1.0000000000000004 110 1 111 1 112 1.0000000000000004 113 0.99999999999999989
		 114 0.99999999999999978 115 0.99999999999999956 116 0.99999999999999922 117 0.99999999999999978
		 118 0.99999999999999956 119 1.0000000000000002 120 0.99999999999999967 121 0.99999999999999967
		 122 1 123 0.99999999999999978 124 0.99999999999999967 125 1.0000000000000002 126 0.99999999999999989
		 127 0.99999999999999967 128 1 129 0.99999999999999978 130 0.99999999999999978 131 0.99999999999999967
		 132 1.0000000000000002 133 0.99999999999999989 134 1 135 0.99999999999999944 136 1;
createNode animCurveTU -n "locator17_visibility";
	rename -uid "1914ED7D-49C9-569F-8AC9-8188A201EEF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1
		 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1
		 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1
		 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTL -n "locator17_translateX";
	rename -uid "0E0590E9-47DD-6108-C5D4-08BC3D3DB59A";
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
createNode animCurveTL -n "locator17_translateY";
	rename -uid "432519D5-4280-093A-5D59-96B467D58435";
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
createNode animCurveTL -n "locator17_translateZ";
	rename -uid "91F1B5E7-43D7-FB2D-607E-D8B1F40F185B";
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
createNode animCurveTA -n "locator17_rotateX";
	rename -uid "6DB33330-47BB-1973-B723-80B9D93C25D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 4.2648882865905753 1 4.5207390785217276
		 2 5.1052355766296396 3 5.4926018714904785 4 5.4083915220986567 5 5.0558715463071522
		 6 4.8472671508789071 7 4.8282189369201669 8 4.7850409442951936 9 4.410092153857974
		 10 3.48262403330415 11 2.3613342701474562 12 1.7451266863248376 13 1.5965488382721225
		 14 1.3446086645126343 15 0.9550980329513552 16 0.48136864837567594 17 -0.066807653533753272
		 18 -0.39273889169334386 19 -0.30652477679776657 20 0.22987961733141965 21 1.1432346135522418
		 22 1.9262480796277792 23 2.2362962398277739 24 2.2222118812338252 25 2.0318354284091256
		 26 1.8219921745792493 27 1.8842289866662445 28 1.579512138335734 29 0.58355517729071338
		 30 -0.20688477158546451 31 -0.24221750870800168 32 0.28902568943599199 33 0.56939653124736456
		 34 0.55176320457034655 35 0.82954966588897683 36 1.1991932452798297 37 1.3020454169257687
		 38 1.4230566481514075 39 2.0776542644146279 40 3.5353083253576538 41 1.7597742255064484
		 42 3.0857311176551114 43 146.81855113120614 44 162.26097680421196 45 173.58718872070313
		 46 179.25500701507275 47 178.60228091325041 48 177.78482075075289 49 177.99354566459934
		 50 179.03018271692324 51 179.298370747712 52 178.51087984327114 53 177.76171855006561
		 54 177.57038885835263 55 177.84828108668947 56 178.78349280155413 57 180.11032199115252
		 58 181.75087318592736 59 184.14982341509744 60 187.94770812988278 61 192.37646782698772
		 62 194.96428347775478 63 196.87448712185073 64 199.24903004021931 65 201.96425770832136
		 66 204.55830079035013 67 206.05358871033351 68 205.29614179435603 69 202.36674046679363
		 70 199.21007623549403 71 196.57456138073422 72 194.31708337520485 73 192.42166480109006
		 74 190.73771807897788 75 189.1190490722656 76 187.59046805270717 77 186.04346922488773
		 78 184.38636305614014 79 182.61192959395709 80 180.63716595673537 81 178.59056382986802
		 82 176.71701121934007 83 175.19760075422809 84 174.0633378022616 85 173.27415319572944
		 86 172.8083485107208 87 172.62814344156737 88 172.7135311573864 89 172.98016333393147
		 90 173.2786865234375 91 173.5790255594776 92 173.9629371701806 93 174.38269143949091
		 94 174.69372472070341 95 174.89144854601847 96 175.06028717575745 97 175.29441820970834
		 98 175.64947526238259 99 176.06929073708454 100 176.42355411377739 101 176.62263538801551
		 102 176.7177427652241 103 176.73458873331273 104 176.60247813147606 105 176.48966979980469
		 106 176.45362851242791 107 176.42472835914944 108 176.41766358937889 109 176.43569945388538
		 110 176.42295847707203 111 176.34756477249263 112 176.32185363580095 113 176.35647585728057
		 114 176.44981401787516 115 176.59181243114267 116 176.70413239724169 117 176.77830484634424
		 118 176.85420211328284 119 176.94265740260292 120 177.01437377929688 121 177.08822639786476
		 122 177.20137051902532 123 177.38067688185126 124 177.6445018175398 125 177.94783150047266
		 126 178.20054753485394 127 178.39042793890948 128 178.59603742992041 129 178.8117967882734
		 130 179.05160408090293 131 179.30088714783409 132 179.52915879066788 133 179.84744205216401
		 134 180.13000479652734 135 180.05038452148435 136 179.91352844238281;
createNode animCurveTA -n "locator17_rotateY";
	rename -uid "D3B53704-43C1-3423-3F5F-AAB4D2F209AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -4.796003818511962 1 -5.6041264533996573
		 2 -6.1820664405822772 3 -6.2402467727661142 4 -6.0732813041953344 5 -6.0892638974264779
		 6 -6.2481679916381854 7 -6.6876373291015625 8 -7.5470220388879321 9 -8.1166838649348083
		 10 -7.9940247691360113 11 -7.9702443607966194 12 -8.4348572960758261 13 -8.6513214515199017
		 14 -8.0548954010009766 15 -6.7753915786743173 16 -5.1245293332147561 17 -3.4778847122147578
		 18 -2.3431144177152703 19 -1.8519186322559065 20 -1.730641038833401 21 -1.7534169120992804
		 22 -1.8070003518021915 23 -1.4129613024176604 24 -0.39677341215794237 25 0.47647355038852152
		 26 1.6917145338806423 27 3.7595839935803075 28 4.8189715835562508 29 4.2333209649463663
		 30 4.2899260520935067 31 4.6243225517397786 32 3.4914362095772478 33 1.5795114879479435
		 34 -0.51010937647851229 35 -3.5754518558760315 36 -8.3685679708305472 37 -14.433595497069531
		 38 -22.580773068456999 39 -35.52281455266511 40 -51.79462269225187 41 -67.995853826925043
		 42 -82.590844083546415 43 -84.188383272572025 44 -75.575803129416514 45 -69.857231140136705
		 46 -64.116541578547924 47 -57.97419569796498 48 -52.6454156162673 49 -48.029314991272521
		 50 -43.639947951620542 51 -39.151831445819688 52 -34.911142188473285 53 -30.935924733052016
		 54 -26.893993209268167 55 -23.019141433060483 56 -19.04736420172306 57 -14.359330635701106
		 58 -8.5219961085862561 59 -1.5645253416965799 60 5.7206368446350089 61 12.752811957642511
		 62 18.172427483105803 63 22.044517110514295 64 26.160190011353258 65 30.230867396994046
		 66 32.675881612962755 67 33.770782130691153 68 34.275299167422283 69 34.21839824937414
		 70 33.202145380906018 71 31.604178049483227 72 30.175391771167696 73 29.118307073167266
		 74 28.223891084318904 75 27.284326553344727 76 26.392152088232006 77 25.642576741524529
		 78 24.945959109230404 79 24.275301328202435 80 23.619468232921708 81 23.034039406622512
		 82 22.459701836553801 83 21.63004645716007 84 20.637737848925074 85 19.839041051961221
		 86 19.259368808554651 87 18.665817293966636 88 17.854989917088425 89 16.76441482956972
		 90 15.51251220703125 91 14.331433329751704 92 13.348375559673237 93 12.587702948553785
		 94 12.110893395484624 95 11.941111667172665 96 12.023196014958961 97 12.217221165278643
		 98 12.469098215989039 99 12.804579320895455 100 13.194545708574577 101 13.588350691744369
		 102 13.987991999781324 103 14.486145867938415 104 15.094938751883097 105 15.615080833435062
		 106 16.102943880507041 107 16.697228600492831 108 17.2762942969688 109 17.779920381136041
		 110 18.513574584292428 111 19.424845439747319 112 20.139037804185257 113 20.750208161244846
		 114 21.363224900682148 115 21.921021713520151 116 22.394433503976881 117 22.765452404175427
		 118 23.070685839597601 119 23.28888689359335 120 23.377227783203129 121 23.406888982785045
		 122 23.426603232601096 123 23.318391371395602 124 23.116479410077943 125 23.076093676795459
		 126 23.117799699477647 127 23.055385160535124 128 22.987585418341965 129 22.948986239114088
		 130 22.922897433820829 131 22.908380561530571 132 22.895139629566234 133 22.955165782495694
		 134 22.979332079670765 135 22.697725296020511 136 22.379873275756836;
createNode animCurveTA -n "locator17_rotateZ";
	rename -uid "89BA3FFF-40D8-CA49-52C1-1EA97B4C68F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.42177507281303395 1 0.58733910322189342
		 2 0.68926644325256348 3 0.7572871446609496 4 0.86479287677957628 5 0.81953579173770019
		 6 0.86607462167739879 7 1.071932315826416 8 1.4456213649142948 9 2.2233470927632033
		 10 3.0106306647955221 11 3.9283404639894224 12 4.9812043349191963 13 5.5730084905450292
		 14 5.4210042953491229 15 5.0337285995483398 16 4.8170797193599517 17 4.6214403577441256
		 18 4.3196799180369654 19 4.0539941347203925 20 3.9052424991417776 21 3.8781993529893057
		 22 3.9714574252355401 23 4.142323123232095 24 4.4706067330270818 25 4.4756807624692012
		 26 4.2648059095013755 27 3.3868057298201721 28 1.8870384570286258 29 0.1378286381576776
		 30 -1.4658381938934326 31 -2.2204112839378563 32 -1.9872726559726583 33 -1.6175841299195253
		 34 -1.548789726642237 35 -1.4955948299383783 36 -1.3161079766867398 37 -0.8704106513966775
		 38 0.50837752216545551 39 1.7928968707769766 40 2.7567710142178536 41 7.5156502457978416
		 42 7.9741749882128081 43 -134.18616341370378 44 -148.36112012452415 45 -159.99462890625003
		 46 -167.207660088616 47 -167.58752423119904 48 -167.42271392409688 49 -168.55749549183759
		 50 -170.94742087071046 51 -172.724958499965 52 -173.40315221852657 53 -173.88822966334965
		 54 -174.78251822829159 55 -176.23861470927264 56 -178.28556785614757 57 -179.82453992748785
		 58 -180.61535789023978 59 -181.52377275499327 60 -181.6463928222656 61 -182.69836574480775
		 62 -185.14380222379566 63 -186.24797133597787 64 -185.69014279119736 65 -184.47180446165129
		 66 -183.37762572733783 67 -182.83801271772077 68 -183.27221713502442 69 -184.42866647954295
		 70 -185.04415956165084 71 -184.96415649141497 72 -184.68367079871092 73 -184.4179386531973
		 74 -184.2438203510298 75 -184.04020690917966 76 -183.85763538973015 77 -183.78544612533244
		 78 -183.81408704350045 79 -183.87911941157489 80 -184.08543333128489 81 -184.41680864973219
		 82 -184.66644280039847 83 -184.74935915646262 84 -184.78688057468071 85 -184.85891736565659
		 86 -184.89749142866003 87 -184.84338402780304 88 -184.72471645163537 89 -184.5662537758368
		 90 -184.45722961425778 91 -184.46839906821609 92 -184.50512703682449 93 -184.55589319545371
		 94 -184.68685860803961 95 -184.86331122425295 96 -185.15154979905586 97 -185.52712999029208
		 98 -185.79440317329426 99 -185.98399381940735 100 -186.18299910201711 101 -186.36441094978295
		 102 -186.50604207760585 103 -186.65595975206318 104 -186.85198962619654 105 -186.93795776367188
		 106 -186.93052674568594 107 -186.96685794464909 108 -186.96658313307734 109 -186.88082902864292
		 110 -186.86590571775901 111 -186.91842646840618 112 -186.92674256098348 113 -186.88421627956828
		 114 -186.79020677007932 115 -186.69726542311295 116 -186.61753811803877 117 -186.50080911206254
		 118 -186.33078037635678 119 -186.13801588291392 120 -186.01127624511716 121 -185.97096248730503
		 122 -185.92399579956538 123 -185.79104572708343 124 -185.62330571432508 125 -185.49830569026869
		 126 -185.37350387508366 127 -185.23223790660248 128 -185.11161871059608 129 -185.02932777877314
		 130 -184.97705105863909 131 -184.91070580530209 132 -184.85218812842186 133 -184.89762879190096
		 134 -184.84411646890305 135 -184.29089355468747 136 -183.7624816894531;
createNode animCurveTU -n "locator17_scaleX";
	rename -uid "DA9F5C2E-4DF1-B0AB-336D-E0A86088BA57";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1
		 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1
		 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1
		 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTU -n "locator17_scaleY";
	rename -uid "28B4B59F-4382-801B-CA6C-5DA2D2BE78FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1
		 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1
		 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1
		 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTU -n "locator17_scaleZ";
	rename -uid "4A05FAA4-45BA-CB60-69E6-5098B79AFFF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1
		 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1
		 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1
		 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTU -n "locator18_visibility";
	rename -uid "60BEB9EC-41F4-5CA4-5842-F1A43C012CEC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1
		 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1
		 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1
		 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTL -n "locator18_translateX";
	rename -uid "1C11390C-4667-EC19-DF33-7D8FD8637807";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 10.592370033264153 1 10.592370033264162
		 2 10.592370033264158 3 10.59237003326416 4 10.592370033264169 5 10.592370033264155
		 6 10.592370033264165 7 10.59237003326416 8 10.592370033264162 9 10.592370033264157
		 10 10.59237003326416 11 10.592370033264162 12 10.592370033264148 13 10.592370033264164
		 14 10.592370033264164 15 10.592370033264171 16 10.592370033264164 17 10.592370033264157
		 18 10.592370033264157 19 10.592370033264164 20 10.592370033264153 21 10.59237003326416
		 22 10.59237003326416 23 10.592370033264158 24 10.59237003326416 25 10.592370033264164
		 26 10.59237003326416 27 10.592370033264155 28 10.59237003326416 29 10.592370033264164
		 30 10.592370033264162 31 10.592370033264164 32 10.59237003326416 33 10.59237003326416
		 34 10.592370033264157 35 10.592370033264158 36 10.592370033264153 37 10.59237003326416
		 38 10.592370033264153 39 10.592370033264146 40 10.592370033264146 41 10.59237003326416
		 42 10.59237003326416 43 10.592370033264189 44 10.59237003326416 45 10.59237003326416
		 46 10.592370033264167 47 10.592370033264153 48 10.59237003326416 49 10.592370033264174
		 50 10.59237003326416 51 10.592370033264167 52 10.592370033264167 53 10.592370033264189
		 54 10.592370033264167 55 10.59237003326416 56 10.59237003326416 57 10.592370033264157
		 58 10.592370033264141 59 10.592370033264164 60 10.592370033264173 61 10.592370033264162
		 62 10.592370033264153 63 10.592370033264146 64 10.59237003326416 65 10.59237003326416
		 66 10.592370033264174 67 10.59237003326416 68 10.59237003326416 69 10.592370033264174
		 70 10.592370033264189 71 10.59237003326416 72 10.592370033264146 73 10.592370033264189
		 74 10.59237003326416 75 10.592370033264189 76 10.592370033264146 77 10.592370033264189
		 78 10.59237003326416 79 10.59237003326416 80 10.592370033264146 81 10.59237003326416
		 82 10.59237003326416 83 10.59237003326416 84 10.592370033264174 85 10.592370033264174
		 86 10.592370033264146 87 10.59237003326416 88 10.592370033264167 89 10.59237003326416
		 90 10.592370033264146 91 10.59237003326416 92 10.592370033264181 93 10.592370033264153
		 94 10.592370033264153 95 10.592370033264146 96 10.592370033264153 97 10.59237003326416
		 98 10.59237003326416 99 10.592370033264153 100 10.592370033264153 101 10.592370033264174
		 102 10.59237003326416 103 10.592370033264153 104 10.592370033264146 105 10.59237003326416
		 106 10.592370033264153 107 10.592370033264167 108 10.59237003326416 109 10.59237003326416
		 110 10.592370033264174 111 10.592370033264167 112 10.592370033264174 113 10.592370033264139
		 114 10.59237003326416 115 10.59237003326416 116 10.59237003326416 117 10.592370033264146
		 118 10.592370033264146 119 10.592370033264146 120 10.592370033264146 121 10.59237003326416
		 122 10.59237003326416 123 10.59237003326416 124 10.592370033264174 125 10.592370033264146
		 126 10.59237003326416 127 10.592370033264174 128 10.59237003326416 129 10.592370033264174
		 130 10.592370033264146 131 10.592370033264132 132 10.592370033264174 133 10.59237003326416
		 134 10.592370033264174 135 10.592370033264146 136 10.592370033264189;
createNode animCurveTL -n "locator18_translateY";
	rename -uid "0F731561-4DFB-2B8A-2360-6B991BB06B48";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -0.5245829224586771 1 -0.52458292245862026
		 2 -0.52458292245862026 3 -0.52458292245864868 4 -0.5245829224586771 5 -0.52458292245864868
		 6 -0.5245829224586771 7 -0.52458292245862026 8 -0.52458292245862026 9 -0.52458292245862026
		 10 -0.52458292245864868 11 -0.5245829224586771 12 -0.5245829224586771 13 -0.52458292245862026
		 14 -0.52458292245862026 15 -0.5245829224586771 16 -0.52458292245862026 17 -0.52458292245864868
		 18 -0.5245829224586771 19 -0.5245829224586771 20 -0.52458292245862026 21 -0.52458292245864868
		 22 -0.5245829224586771 23 -0.52458292245864868 24 -0.5245829224586771 25 -0.52458292245870553
		 26 -0.52458292245864868 27 -0.52458292245864868 28 -0.52458292245862026 29 -0.52458292245862026
		 30 -0.52458292245862026 31 -0.52458292245864868 32 -0.52458292245864868 33 -0.5245829224586771
		 34 -0.5245829224586771 35 -0.5245829224586771 36 -0.52458292245862026 37 -0.52458292245862026
		 38 -0.5245829224586771 39 -0.52458292245864868 40 -0.52458292245862026 41 -0.52458292245862026
		 42 -0.5245829224586771 43 -0.52458292245864868 44 -0.5245829224586771 45 -0.52458292245862026
		 46 -0.52458292245866289 47 -0.52458292245864868 48 -0.5245829224586771 49 -0.52458292245864868
		 50 -0.52458292245866289 51 -0.52458292245866289 52 -0.52458292245864868 53 -0.5245829224586771
		 54 -0.5245829224586771 55 -0.52458292245864868 56 -0.52458292245864868 57 -0.52458292245864868
		 58 -0.5245829224586771 59 -0.52458292245864868 60 -0.52458292245865579 61 -0.52458292245868776
		 62 -0.52458292245866645 63 -0.52458292245864158 64 -0.52458292245864868 65 -0.5245829224586771
		 66 -0.52458292245864868 67 -0.52458292245863447 68 -0.5245829224586771 69 -0.52458292245866289
		 70 -0.52458292245862026 71 -0.52458292245863447 72 -0.52458292245862026 73 -0.52458292245864868
		 74 -0.52458292245862381 75 -0.52458292245861993 76 -0.52458292245869487 77 -0.52458292245865579
		 78 -0.52458292245866289 79 -0.52458292245864868 80 -0.5245829224586771 81 -0.52458292245864868
		 82 -0.52458292245864868 83 -0.52458292245862026 84 -0.52458292245864868 85 -0.5245829224586771
		 86 -0.5245829224586771 87 -0.5245829224586771 88 -0.5245829224586771 89 -0.52458292245862026
		 90 -0.52458292245862026 91 -0.52458292245864868 92 -0.52458292245862026 93 -0.52458292245864868
		 94 -0.5245829224586771 95 -0.52458292245864868 96 -0.52458292245864868 97 -0.52458292245864868
		 98 -0.52458292245864868 99 -0.52458292245866289 100 -0.52458292245866289 101 -0.52458292245859184
		 102 -0.52458292245864868 103 -0.52458292245863447 104 -0.52458292245863447 105 -0.52458292245866289
		 106 -0.52458292245864868 107 -0.52458292245862026 108 -0.52458292245866289 109 -0.52458292245864868
		 110 -0.52458292245864868 111 -0.52458292245864868 112 -0.52458292245862026 113 -0.52458292245864868
		 114 -0.52458292245864868 115 -0.5245829224586771 116 -0.52458292245864868 117 -0.52458292245864868
		 118 -0.52458292245864868 119 -0.52458292245862026 120 -0.52458292245862026 121 -0.52458292245862026
		 122 -0.52458292245864868 123 -0.52458292245862026 124 -0.52458292245864868 125 -0.5245829224586771
		 126 -0.52458292245862026 127 -0.52458292245862026 128 -0.52458292245864868 129 -0.52458292245862026
		 130 -0.5245829224586771 131 -0.52458292245864868 132 -0.52458292245863447 133 -0.52458292245864868
		 134 -0.52458292245866289 135 -0.52458292245863447 136 -0.52458292245864868;
createNode animCurveTL -n "locator18_translateZ";
	rename -uid "104CB910-4953-F8BF-8356-9C827A6E94BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -2.2321200370788574 1 -2.2321200370788503
		 2 -2.2321200370788503 3 -2.2321200370788645 4 -2.2321200370788539 5 -2.232120037078861
		 6 -2.2321200370788645 7 -2.2321200370788574 8 -2.2321200370788628 9 -2.2321200370788654
		 10 -2.2321200370788485 11 -2.2321200370788556 12 -2.2321200370788503 13 -2.232120037078861
		 14 -2.232120037078861 15 -2.2321200370788539 16 -2.232120037078861 17 -2.2321200370788716
		 18 -2.2321200370788539 19 -2.2321200370788645 20 -2.2321200370788645 21 -2.2321200370788574
		 22 -2.2321200370788716 23 -2.2321200370788432 24 -2.2321200370788645 25 -2.2321200370788503
		 26 -2.2321200370788574 27 -2.2321200370788716 28 -2.2321200370788574 29 -2.2321200370788432
		 30 -2.2321200370788574 31 -2.2321200370788716 32 -2.2321200370788574 33 -2.2321200370788716
		 34 -2.2321200370788574 35 -2.2321200370788574 36 -2.2321200370788432 37 -2.2321200370788574
		 38 -2.2321200370788432 39 -2.2321200370788574 40 -2.2321200370788254 41 -2.2321200370788841
		 42 -2.2321200370788574 43 -2.2321200370788574 44 -2.2321200370788574 45 -2.2321200370788574
		 46 -2.2321200370788574 47 -2.2321200370788858 48 -2.2321200370788858 49 -2.2321200370788574
		 50 -2.2321200370788574 51 -2.2321200370788574 52 -2.232120037078829 53 -2.2321200370788574
		 54 -2.2321200370788574 55 -2.2321200370788858 56 -2.2321200370788858 57 -2.2321200370788858
		 58 -2.232120037078829 59 -2.2321200370788858 60 -2.232120037078829 61 -2.2321200370788006
		 62 -2.2321200370788574 63 -2.2321200370788574 64 -2.2321200370788574 65 -2.232120037078829
		 66 -2.2321200370788574 67 -2.2321200370788574 68 -2.2321200370788858 69 -2.2321200370788858
		 70 -2.2321200370788574 71 -2.2321200370788858 72 -2.2321200370788574 73 -2.232120037078829
		 74 -2.2321200370788574 75 -2.2321200370788858 76 -2.2321200370788574 77 -2.2321200370788574
		 78 -2.232120037078829 79 -2.2321200370788574 80 -2.2321200370789143 81 -2.2321200370788574
		 82 -2.2321200370788858 83 -2.2321200370788858 84 -2.2321200370788574 85 -2.2321200370788574
		 86 -2.232120037078829 87 -2.232120037078829 88 -2.2321200370788858 89 -2.232120037078829
		 90 -2.2321200370788574 91 -2.2321200370788574 92 -2.2321200370788574 93 -2.232120037078829
		 94 -2.232120037078829 95 -2.2321200370788574 96 -2.2321200370789143 97 -2.232120037078829
		 98 -2.2321200370788858 99 -2.2321200370788858 100 -2.2321200370788574 101 -2.2321200370788858
		 102 -2.2321200370788574 103 -2.2321200370788858 104 -2.232120037078829 105 -2.2321200370788574
		 106 -2.2321200370789143 107 -2.2321200370788858 108 -2.232120037078829 109 -2.2321200370788574
		 110 -2.2321200370788858 111 -2.232120037078829 112 -2.2321200370788574 113 -2.2321200370788858
		 114 -2.2321200370788574 115 -2.2321200370788858 116 -2.2321200370788574 117 -2.2321200370788574
		 118 -2.2321200370788574 119 -2.232120037078829 120 -2.2321200370788574 121 -2.232120037078829
		 122 -2.2321200370788574 123 -2.232120037078829 124 -2.2321200370788574 125 -2.2321200370788858
		 126 -2.232120037078829 127 -2.2321200370789143 128 -2.2321200370788574 129 -2.232120037078829
		 130 -2.2321200370788574 131 -2.232120037078829 132 -2.232120037078829 133 -2.2321200370788574
		 134 -2.232120037078829 135 -2.232120037078829 136 -2.2321200370788574;
createNode animCurveTA -n "locator18_rotateX";
	rename -uid "6813DD46-4E6D-5122-C2E3-4790CDC30569";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 55.074554443359361 1 54.091117858886712
		 2 54.228240966796882 3 54.792423248291009 4 54.9190673828125 5 55.369865417480483
		 6 56.330402374267578 7 57.005519866943366 8 56.79588699340821 9 56.165748596191413
		 10 56.185768127441406 11 56.797405242919929 12 57.167320251464858 13 57.907417297363288
		 14 59.642417907714844 15 61.920898437499993 16 62.54273986816407 17 58.227767944335923
		 18 50.779106140136712 19 45.269931793212912 20 40.611877441406243 21 36.329650878906243
		 22 35.082439422607422 23 35.221244812011719 24 36.145954132080078 25 38.600559234619141
		 26 42.099193572998047 27 47.939476013183587 28 54.773574829101555 29 57.81437683105468
		 30 58.679355621337891 31 59.739444732666016 32 60.600982666015639 33 60.370548248291023
		 34 58.898864746093764 35 55.528816223144538 36 50.67845535278321 37 49.270950317382805
		 38 52.31962966918946 39 55.919914245605476 40 60.485073089599609 41 61.697048187255845
		 42 69.108848571777344 43 76.607505798339858 44 78.643936157226563 45 76.643707275390611
		 46 68.981353759765611 47 49.395851135253899 48 30.443960189819325 49 13.749336242675781
		 50 10.054077148437502 51 9.9919137954711914 52 3.5212299823760995 53 -6.3466334342956552
		 54 -13.743439674377443 55 -17.559438705444332 56 -21.215381622314453 57 -25.822105407714837
		 58 -29.18858528137207 59 -30.700204849243168 60 -28.969287872314453 61 -22.337013244628903
		 62 -12.86294460296631 63 -3.8749628067016597 64 2.2326104640960693 65 5.4828701019287136
		 66 7.3437128067016584 67 8.0210990905761701 68 8.9940252304077131 69 11.079824447631834
		 70 13.533225059509274 71 15.828314781188963 72 17.714548110961921 73 17.217967987060547
		 74 14.823551177978516 75 13.10421943664551 76 11.386823654174805 77 8.1546707153320295
		 78 4.9331088066101092 79 3.0547332763671875 80 0.070750720798968394 81 -7.8033308982849121
		 82 -18.552627563476563 83 -27.138969421386715 84 -34.25837326049804 85 -40.424343109130852
		 86 -43.66899490356446 87 -43.95491027832032 88 -42.692829132080078 89 -40.862159729003906
		 90 -39.16588211059571 91 -37.713283538818366 92 -36.205890655517578 93 -34.304027557373061
		 94 -32.230487823486335 95 -30.344566345214844 96 -28.503072738647457 97 -26.499835968017578
		 98 -24.505960464477539 99 -22.671762466430668 100 -21.080282211303704 101 -18.831129074096676
		 102 -15.852366447448732 103 -12.56886672973633 104 -10.006068229675295 105 -8.6504564285278338
		 106 -7.1863193511962873 107 -4.7014036178588867 108 -1.870786190032959 109 0.75535887479782071
		 110 3.5006778240203857 111 6.2544293403625497 112 8.7497396469116193 113 11.065421104431156
		 114 12.897497177124029 115 14.248966217041014 116 15.117544174194336 117 16.55328369140625
		 118 17.995777130126957 119 19.957681655883789 120 22.950584411621104 121 25.826021194458008
		 122 27.467861175537109 123 29.010883331298828 124 31.034332275390625 125 32.886856079101555
		 126 34.825775146484375 127 37.262886047363288 128 39.222923278808587 129 40.429023742675781
		 130 41.633258819580078 131 42.77423095703125 132 43.863285064697266 133 45.016120910644524
		 134 46.059146881103523 135 46.834217071533203 136 47.102230072021491;
createNode animCurveTA -n "locator18_rotateY";
	rename -uid "2AC5DA57-41ED-EEAF-F73C-3FB1ABB3B408";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -16.547760009765632 1 -15.768329620361326
		 2 -15.30418682098388 3 -14.771043777465822 4 -14.281159400939945 5 -13.823645591735838
		 6 -13.336946487426758 7 -12.765754699707033 8 -11.96696758270264 9 -11.301961898803707
		 10 -11.017473220825192 11 -11.357253074645993 12 -12.14286518096924 13 -13.116748809814458
		 14 -14.855991363525394 15 -17.458806991577148 16 -19.685010910034176 17 -20.359994888305668
		 18 -21.009769439697266 19 -21.954494476318366 20 -22.616106033325195 21 -22.733114242553707
		 22 -23.322103500366222 23 -24.112672805786133 24 -24.880779266357418 25 -25.889425277709964
		 26 -25.973934173583988 27 -26.065671920776364 28 -26.592901229858395 29 -25.848405838012699
		 30 -24.385782241821289 31 -23.423454284667965 32 -22.702146530151371 33 -21.768014907836907
		 34 -20.589239120483398 35 -18.239795684814457 36 -13.861302375793459 37 -10.084435462951662
		 38 -8.6605262756347638 39 -8.4853267669677699 40 -5.0315976142883292 41 1.8276112079620348
		 42 3.1387095451354932 43 1.8197760581970204 44 2.6222128868103032 45 6.1447906494140643
		 46 9.733576774597168 47 11.306722640991209 48 11.901287078857422 49 14.537635803222656
		 50 14.591248512268066 51 11.542304039001468 52 10.848169326782228 53 11.215370178222656
		 54 11.417582511901855 55 11.009828567504879 56 10.603573799133304 57 11.239301681518558
		 58 10.841392517089846 59 9.8062534332275373 60 8.6980943679809553 61 7.9781579971313477
		 62 6.7473106384277335 63 3.2274494171142574 64 -1.2137070894241335 65 -5.4538731575012225
		 66 -8.7569522857666033 67 -11.593774795532223 68 -16.152177810668938 69 -22.486312866210938
		 70 -28.133523941040039 71 -31.089683532714844 72 -30.817659378051761 73 -28.026691436767585
		 74 -24.605270385742188 75 -22.123983383178707 76 -19.802665710449215 77 -17.007726669311523
		 78 -14.20164203643799 79 -11.71333694458008 80 -9.4955835342407244 81 -7.4154262542724627
		 82 -5.3546566963195792 83 -2.272895336151123 84 0.50847160816192905 85 2.7144777774810791
		 86 4.4590916633605957 87 5.3239517211914071 88 5.3806586265563991 89 5.2559485435485866
		 90 4.9354634284973136 91 4.0416712760925293 92 2.8263337612152104 93 1.7568560838699343
		 94 1.0370366573333734 95 0.6989240646362288 96 0.52617985010147272 97 0.16842317581176847
		 98 -0.11055102199315991 99 -0.18904602527618297 100 -0.13890734314918501 101 -0.12316749989986435
		 102 -0.46062821149826028 103 -1.17154860496521 104 -1.4350502490997323 105 -1.146436929702759
		 106 -1.0539470911025999 107 -1.4902135133743286 108 -2.1010537147521973 109 -2.5269641876220708
		 110 -3.0225915908813468 111 -3.6409730911254892 112 -4.159559726715087 113 -4.5864658355712873
		 114 -4.7500262260436994 115 -4.6951422691345224 116 -4.6055774688720712 117 -4.6505193710327166
		 118 -4.6953568458557138 119 -5.0198411941528303 120 -5.6371326446533176 121 -6.0509686470031765
		 122 -6.1174869537353516 123 -6.2378826141357377 124 -6.483978748321535 125 -6.7448778152465856
		 126 -6.9822916984558132 127 -7.1570172309875453 128 -7.1964855194091788 129 -7.1801509857177743
		 130 -7.2336678504943857 131 -7.2951045036315945 132 -7.3997907638549787 133 -7.6089572906494185
		 134 -7.8803086280822727 135 -8.266700744628908 136 -8.5333967208862287;
createNode animCurveTA -n "locator18_rotateZ";
	rename -uid "B7045B9C-4CD4-1A1A-AB9B-569335183595";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -60.435337066650398 1 -60.193271636962884
		 2 -60.440170288085945 3 -61.182849884033196 4 -62.308090209960945 5 -63.788665771484382
		 6 -64.857810974121094 7 -65.532249450683594 8 -66.05002593994142 9 -66.076988220214844
		 10 -66.134658813476577 11 -66.399307250976577 12 -66.286499023437528 13 -65.463813781738281
		 14 -65.00872802734375 15 -65.616439819335938 16 -64.851257324218764 17 -61.169334411621072
		 18 -59.165981292724609 19 -57.987586975097663 20 -57.226955413818359 21 -57.082336425781236
		 22 -57.302036285400405 23 -57.776695251464851 24 -58.355583190917983 25 -59.26429748535157
		 26 -60.145591735839844 27 -61.250793457031257 28 -62.838661193847642 29 -64.277572631835938
		 30 -65.164512634277344 31 -65.288200378417969 32 -64.807464599609375 33 -64.357131958007798
		 34 -63.84861755371093 35 -62.335651397705078 36 -60.526302337646499 37 -61.168983459472663
		 38 -64.096206665039063 39 -68.029144287109375 40 -63.776920318603501 41 -52.876472473144524
		 42 -45.446372985839851 43 -45.021919250488288 44 -45.925346374511719 45 -39.910610198974609
		 46 -31.001670837402344 47 -28.265535354614254 48 -28.221729278564453 49 -26.988290786743164
		 50 -23.630826950073249 51 -19.975475311279297 52 -18.009191513061523 53 -17.702669143676761
		 54 -18.574148178100589 55 -19.58456993103027 56 -20.591629028320316 57 -23.929645538330071
		 58 -28.572341918945309 59 -32.724128723144538 60 -38.198760986328132 61 -43.004322052001953
		 62 -46.50719070434571 63 -50.539627075195313 64 -54.001110076904311 65 -55.810188293457038
		 66 -55.727958679199212 67 -54.470840454101548 68 -52.403690338134759 69 -49.955432891845696
		 70 -48.58769226074218 71 -48.896350860595696 72 -49.44176101684571 73 -49.129100799560554
		 74 -48.82089996337892 75 -48.807006835937507 76 -48.735881805419922 77 -48.2646484375
		 78 -47.693653106689453 79 -47.218368530273438 80 -46.789134979248047 81 -46.448516845703125
		 82 -46.571823120117188 83 -47.354648590087891 84 -47.909515380859368 85 -47.833942413330078
		 86 -47.313430786132813 87 -46.699897766113281 88 -46.278617858886719 89 -46.319011688232415
		 90 -47.000125885009773 91 -48.098598480224609 92 -49.292083740234389 93 -50.296489715576179
		 94 -51.014732360839851 95 -51.578769683837891 96 -52.083370208740213 97 -52.579921722412102
		 98 -53.093437194824226 99 -53.426082611083991 100 -53.662143707275376 101 -53.888710021972642
		 102 -54.03202819824218 103 -54.13128662109375 104 -54.416301727294929 105 -55.009025573730476
		 106 -55.65299987792968 107 -56.11627197265625 108 -56.578445434570313 109 -57.012580871582017
		 110 -57.406391143798828 111 -57.915447235107429 112 -58.456703186035156 113 -58.874584197998061
		 114 -59.426937103271499 115 -60.224292755126946 116 -60.877632141113267 117 -61.374450683593757
		 118 -61.709266662597656 119 -61.925987243652344 120 -61.793834686279297 121 -61.478206634521484
		 122 -61.498020172119141 123 -61.703269958496101 124 -61.875438690185554 125 -62.117752075195305
		 126 -62.43695449829103 127 -62.638294219970703 128 -62.826446533203125 129 -63.193321228027337
		 130 -63.563335418701165 131 -63.807521820068359 132 -64.017303466796875 133 -64.162185668945313
		 134 -64.193328857421889 135 -64.251716613769545 136 -64.204933166503906;
createNode animCurveTU -n "locator18_scaleX";
	rename -uid "EC14EDE1-4D25-EAF4-3489-4FBB4FE4471E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999944 1 0.99999999999999989
		 2 1 3 1 4 1 5 0.99999999999999978 6 1.0000000000000002 7 1.0000000000000002 8 1 9 0.99999999999999989
		 10 0.99999999999999989 11 1 12 1 13 0.99999999999999989 14 1.0000000000000002 15 1.0000000000000002
		 16 1 17 1 18 0.99999999999999978 19 1.0000000000000002 20 0.99999999999999967 21 0.99999999999999978
		 22 0.99999999999999978 23 1 24 0.99999999999999978 25 0.99999999999999989 26 1 27 0.99999999999999989
		 28 1 29 1 30 1 31 0.99999999999999978 32 0.99999999999999989 33 1 34 1 35 1 36 0.99999999999999978
		 37 1 38 1 39 0.99999999999999956 40 1 41 1 42 0.99999999999999989 43 1.0000000000000004
		 44 1 45 1 46 1 47 1 48 0.99999999999999989 49 0.99999999999999978 50 0.99999999999999933
		 51 1.0000000000000002 52 1.0000000000000004 53 1.0000000000000002 54 0.99999999999999933
		 55 0.99999999999999978 56 1 57 1.0000000000000002 58 0.99999999999999944 59 1 60 0.99999999999999967
		 61 0.99999999999999967 62 0.99999999999999978 63 0.99999999999999978 64 0.99999999999999978
		 65 1.0000000000000002 66 0.99999999999999956 67 1.0000000000000002 68 0.99999999999999967
		 69 0.99999999999999989 70 0.99999999999999967 71 1.0000000000000002 72 0.99999999999999967
		 73 1.0000000000000002 74 1 75 1.0000000000000004 76 1 77 1.0000000000000002 78 0.99999999999999956
		 79 0.99999999999999978 80 0.99999999999999989 81 0.99999999999999967 82 1 83 0.99999999999999967
		 84 0.99999999999999956 85 1 86 0.99999999999999933 87 0.99999999999999989 88 0.99999999999999978
		 89 1.0000000000000004 90 1 91 0.99999999999999944 92 1 93 0.99999999999999956 94 0.99999999999999967
		 95 1.0000000000000002 96 0.99999999999999989 97 0.99999999999999989 98 1.0000000000000002
		 99 1.0000000000000002 100 0.99999999999999989 101 1 102 0.99999999999999978 103 0.99999999999999989
		 104 0.99999999999999956 105 0.99999999999999967 106 0.99999999999999989 107 1.0000000000000002
		 108 1.0000000000000007 109 0.99999999999999978 110 1.0000000000000007 111 1 112 0.99999999999999989
		 113 1.0000000000000002 114 0.99999999999999967 115 0.99999999999999956 116 1 117 1
		 118 1.0000000000000002 119 0.99999999999999978 120 0.99999999999999967 121 1 122 0.99999999999999933
		 123 1.0000000000000004 124 1.0000000000000002 125 1 126 1.0000000000000004 127 1.0000000000000002
		 128 0.99999999999999967 129 0.99999999999999922 130 0.99999999999999978 131 1 132 0.99999999999999978
		 133 0.99999999999999944 134 0.99999999999999978 135 0.99999999999999956 136 1.0000000000000002;
createNode animCurveTU -n "locator18_scaleY";
	rename -uid "88079367-4FF5-9F43-4735-88BD5EC9D2AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999978 1 1 2 1 3 1.0000000000000002
		 4 0.99999999999999989 5 0.99999999999999989 6 1 7 1 8 0.99999999999999989 9 1 10 0.99999999999999989
		 11 0.99999999999999989 12 0.99999999999999978 13 0.99999999999999989 14 0.99999999999999989
		 15 1 16 1.0000000000000002 17 0.99999999999999989 18 0.99999999999999978 19 0.99999999999999989
		 20 0.99999999999999978 21 0.99999999999999978 22 0.99999999999999967 23 1 24 1 25 1
		 26 0.99999999999999989 27 0.99999999999999978 28 1 29 0.99999999999999967 30 1.0000000000000004
		 31 1 32 0.99999999999999989 33 1 34 1 35 0.99999999999999989 36 0.99999999999999989
		 37 1 38 1 39 1 40 0.99999999999999978 41 1.0000000000000002 42 1 43 1 44 1 45 1 46 0.99999999999999978
		 47 0.99999999999999978 48 0.99999999999999978 49 1 50 0.99999999999999989 51 0.99999999999999989
		 52 0.99999999999999978 53 1.0000000000000002 54 0.99999999999999989 55 0.99999999999999956
		 56 0.99999999999999978 57 1 58 0.99999999999999978 59 1 60 0.99999999999999978 61 0.99999999999999989
		 62 0.99999999999999989 63 1 64 0.99999999999999978 65 1.0000000000000002 66 0.99999999999999978
		 67 0.99999999999999989 68 0.99999999999999989 69 0.99999999999999978 70 0.99999999999999989
		 71 1 72 1 73 0.99999999999999989 74 1.0000000000000002 75 1 76 0.99999999999999956
		 77 1 78 0.99999999999999967 79 1.0000000000000002 80 1 81 0.99999999999999989 82 0.99999999999999989
		 83 0.99999999999999978 84 0.99999999999999978 85 0.99999999999999978 86 1 87 0.99999999999999989
		 88 0.99999999999999989 89 1 90 0.99999999999999989 91 0.99999999999999989 92 1 93 0.99999999999999989
		 94 0.99999999999999989 95 0.99999999999999978 96 1 97 1 98 0.99999999999999989 99 0.99999999999999989
		 100 0.99999999999999989 101 1 102 1.0000000000000002 103 1 104 0.99999999999999978
		 105 1 106 1.0000000000000007 107 1 108 0.99999999999999978 109 0.99999999999999989
		 110 1.0000000000000002 111 1.0000000000000002 112 0.99999999999999989 113 1 114 1.0000000000000002
		 115 0.99999999999999978 116 0.99999999999999989 117 0.99999999999999967 118 1 119 1
		 120 1 121 0.99999999999999989 122 0.99999999999999978 123 1.0000000000000002 124 1.0000000000000002
		 125 0.99999999999999989 126 1 127 1 128 1 129 0.99999999999999989 130 0.99999999999999978
		 131 0.99999999999999989 132 1 133 1 134 0.99999999999999978 135 1 136 0.99999999999999989;
createNode animCurveTU -n "locator18_scaleZ";
	rename -uid "426AFF1F-4F54-E2A1-BD87-858F176ECE42";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999967 1 0.99999999999999956
		 2 1 3 1 4 1 5 1 6 0.99999999999999989 7 0.99999999999999989 8 0.99999999999999978
		 9 1 10 0.99999999999999967 11 0.99999999999999978 12 1 13 1 14 1.0000000000000002
		 15 0.99999999999999989 16 1 17 0.99999999999999989 18 0.99999999999999978 19 1 20 1.0000000000000002
		 21 0.99999999999999944 22 0.99999999999999978 23 1 24 0.99999999999999978 25 1 26 0.99999999999999989
		 27 0.99999999999999967 28 1.0000000000000002 29 0.99999999999999989 30 1.0000000000000002
		 31 0.99999999999999978 32 1 33 0.99999999999999989 34 1 35 0.99999999999999989 36 0.99999999999999967
		 37 1.0000000000000002 38 1.0000000000000002 39 1.0000000000000002 40 1 41 1.0000000000000002
		 42 0.99999999999999978 43 1.0000000000000002 44 0.99999999999999989 45 1.0000000000000004
		 46 0.99999999999999989 47 1.0000000000000002 48 1.0000000000000002 49 0.99999999999999978
		 50 0.99999999999999956 51 1.0000000000000002 52 1.0000000000000002 53 1.0000000000000002
		 54 0.99999999999999944 55 0.99999999999999967 56 1.0000000000000004 57 1 58 0.99999999999999956
		 59 0.99999999999999967 60 0.99999999999999967 61 0.99999999999999944 62 0.99999999999999978
		 63 1 64 1.0000000000000002 65 1 66 0.99999999999999967 67 1 68 0.99999999999999967
		 69 0.99999999999999978 70 1 71 1 72 0.99999999999999967 73 1 74 1.0000000000000002
		 75 1.0000000000000002 76 1.0000000000000002 77 1.0000000000000002 78 0.99999999999999978
		 79 0.99999999999999956 80 1.0000000000000002 81 1 82 1.0000000000000002 83 0.99999999999999989
		 84 0.99999999999999956 85 1 86 0.99999999999999956 87 0.99999999999999967 88 0.99999999999999956
		 89 1 90 0.99999999999999978 91 0.99999999999999978 92 1.0000000000000004 93 0.99999999999999978
		 94 0.99999999999999967 95 1.0000000000000002 96 0.99999999999999978 97 1 98 1 99 1.0000000000000004
		 100 0.99999999999999967 101 0.99999999999999989 102 1 103 1 104 0.99999999999999967
		 105 1 106 1.0000000000000002 107 1 108 1.0000000000000007 109 1 110 1.0000000000000007
		 111 1.0000000000000004 112 0.99999999999999967 113 1.0000000000000002 114 0.99999999999999989
		 115 0.99999999999999967 116 0.99999999999999989 117 0.99999999999999989 118 1.0000000000000007
		 119 0.99999999999999956 120 0.99999999999999956 121 0.99999999999999967 122 0.99999999999999933
		 123 1 124 1 125 0.99999999999999989 126 1.0000000000000004 127 1.0000000000000002
		 128 0.99999999999999989 129 0.99999999999999944 130 0.99999999999999989 131 0.99999999999999989
		 132 0.99999999999999978 133 0.99999999999999989 134 1 135 0.99999999999999944 136 1;
createNode animCurveTU -n "locator19_visibility";
	rename -uid "2AE744FD-460B-DD23-77E2-06A746413E83";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1
		 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1
		 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1
		 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTL -n "locator19_translateX";
	rename -uid "E59F5BC2-4B2E-3BD2-3F0D-24BD9752FE78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 23.760509020327319 1 23.910855208104191
		 2 23.840348615186024 3 23.568860162207585 4 23.130894179852753 5 22.533260732868857
		 6 22.102198592013139 7 21.83869226231711 8 21.648634154443549 9 21.663344465709095
		 10 21.649044349921247 11 21.520665630531806 12 21.538628893829987 13 21.852343580094871
		 14 21.961615754210747 15 21.556985490525985 16 21.732646930413651 17 23.179345508575565
		 18 23.913857364467177 19 24.280876865054388 20 24.504342077509918 21 24.546927880890969
		 22 24.403688687330071 23 24.142585668785699 24 23.84349724180468 25 23.393435331780598
		 26 23.05184861319616 27 22.621424904394683 28 21.957345549977667 29 21.466906513810294
		 30 21.242891887689492 31 21.2724042062029 32 21.525194074535662 33 21.781859750792812
		 34 22.079498787967886 35 22.869376820121744 36 23.892069514703234 37 23.81083733645773
		 38 22.61649844499329 39 20.894760564375474 40 22.847152542605315 41 27.387105532150954
		 42 30.095975805029013 43 30.261797600703986 44 29.938473600585112 45 31.825365670071221
		 46 34.113209146571045 47 34.638158161517673 48 34.596831140500846 49 34.607560278883
		 50 35.276609618836588 51 36.229726575675421 52 36.596656978707436 53 36.608990414039667
		 54 36.461401857821777 55 36.340389342480485 56 36.210057699005901 57 35.552680408447046
		 58 34.60675825559882 59 33.672732942705842 60 32.220523226645405 61 30.755827966677288
		 62 29.621901945381261 63 28.258761666470065 64 26.953023335515638 65 26.166627708025445
		 66 26.087727351079266 67 26.441374925945979 68 26.907739968309187 69 27.143169852579959
		 70 26.832828338433188 71 26.266819310577901 72 26.139299660898388 73 26.6741023544743
		 74 27.25904774822375 75 27.578561905209284 76 27.868784324329724 77 28.315570224995639
		 78 28.759544367590863 79 29.108634881146855 80 29.393790340356517 81 29.614844193319016
		 82 29.648297428653734 83 29.438954999685158 84 29.25386177187346 85 29.260870268181208
		 86 29.411409156159813 87 29.604236820240793 88 29.750283983585128 89 29.740033112574437
		 90 29.509765724573143 91 29.140076701804475 92 28.728573733368968 93 28.369550081325286
		 94 28.105131087000807 95 27.892819931723928 96 27.700610723078356 97 27.510263276572417
		 98 27.311448199574414 99 27.181855078864537 100 27.089633776426691 101 27.000828168048869
		 102 26.944021433097209 103 26.90207551283364 104 26.787968595280457 105 26.554752907518875
		 106 26.297926187121597 107 26.108956412352505 108 25.916950000697796 109 25.736004689507901
		 110 25.569008996733544 111 25.351025743220852 112 25.119012362551331 113 24.937849756825742
		 114 24.704868590767852 115 24.372155694183938 116 24.098346619467023 117 23.886779995940024
		 118 23.743372897875766 119 23.644575124089336 120 23.687818105558605 121 23.812348197030751
		 122 23.802300588751024 123 23.712082659398241 124 23.632550576299423 125 23.522426194963067
		 126 23.379693808613347 127 23.288724450297323 128 23.206996000231356 129 23.04983867862849
		 130 22.888909295549375 131 22.781729574352525 132 22.68806798936852 133 22.619485612292898
		 134 22.598248720929909 135 22.561486464807935 136 22.573507987711515;
createNode animCurveTL -n "locator19_translateY";
	rename -uid "B481F8F4-4C99-1AD6-876E-7AAB1F18941A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -23.73818921092267 1 -23.773804347220562
		 2 -23.883527055604631 3 -24.112174412567285 4 -24.415324452300212 5 -24.779748780621901
		 6 -25.04860148526403 7 -25.239432915772085 8 -25.416023067109563 9 -25.480791352876679
		 10 -25.516389904751648 11 -25.537839480702942 12 -25.445099024202364 13 -25.191235193152693
		 14 -24.915892511514798 15 -24.714572428397247 16 -24.254130744499491 17 -23.391371376921242
		 18 -22.841615558312668 19 -22.420384969395883 20 -22.134228578740192 21 -22.080644328449551
		 22 -22.039779898283854 23 -22.022740707352227 24 -22.026795262765404 25 -22.053646021788353
		 26 -22.232417608166145 27 -22.451557105943948 28 -22.675364982749443 29 -23.097767509744131
		 30 -23.537167521457832 31 -23.732237145391963 32 -23.766055452361627 33 -23.834255222968892
		 34 -23.919779557171751 35 -23.944406201139515 36 -24.057095542497194 37 -24.538263877090628
		 38 -25.28331922337847 39 -26.061501982582115 40 -25.404459268515467 41 -22.712385391521707
		 42 -20.334569031863396 43 -20.209146702828832 44 -20.505970967755289 45 -18.284879320559611
		 46 -14.658340643898114 47 -13.453352747990905 48 -13.407494437774375 49 -12.754859638672158
		 50 -11.324784862122797 51 -9.8434926865440531 52 -8.9785965337206193 53 -8.8289700138495277
		 54 -9.2175641615648374 55 -9.6853061404789855 56 -10.149441928611623 57 -11.600994627728042
		 58 -13.602686174268257 59 -15.355710663630248 60 -17.543580374058031 61 -19.330249136421937
		 62 -20.582680923382473 63 -21.985990708615525 64 -23.044162349506294 65 -23.45033990837797
		 66 -23.263920780347618 67 -22.720327235628417 68 -21.713499958837616 69 -20.218076065848777
		 70 -18.937936525360286 71 -18.490377942009474 72 -18.690424969098117 73 -19.109054737859154
		 74 -19.576939541626448 75 -19.932687179042262 76 -20.214912415636324 77 -20.392114163520297
		 78 -20.485741488591259 79 -20.533327731860979 80 -20.53858583525539 81 -20.534170214469185
		 82 -20.655926734577974 83 -20.987650480166621 84 -21.184640343593117 85 -21.137661918749842
		 86 -20.928232052583795 87 -20.699469720698175 88 -20.557280405595378 89 -20.574845700071194
		 90 -20.811162474707231 91 -21.195394200155363 92 -21.604049865835037 93 -21.934713283635261
		 94 -22.162503859152466 95 -22.335804789390409 96 -22.488030273350205 97 -22.636309571540465
		 98 -22.787102657908889 99 -22.883715010078504 100 -22.95193178509335 101 -23.017007536802367
		 102 -23.057306308711091 103 -23.081614087538924 104 -23.16009930486193 105 -23.329017338039804
		 106 -23.507695227346673 107 -23.630025660558033 108 -23.746674419326169 109 -23.855114165427864
		 110 -23.948826770973724 111 -24.066167914187432 112 -24.189928609218725 113 -24.281707031911054
		 114 -24.413328039588478 115 -24.609311018356337 116 -24.767954331136764 117 -24.882607001158348
		 118 -24.958315730080656 119 -24.99610375193717 120 -24.941386379941491 121 -24.850886567932932
		 122 -24.852446202967087 123 -24.89406850921921 124 -24.921697625659874 125 -24.963720621449696
		 126 -25.023154087195081 127 -25.058657453346413 128 -25.098086778337176 129 -25.179242490129639
		 130 -25.256256412329122 131 -25.305050374967522 132 -25.343666033436151 133 -25.362225426075483
		 134 -25.352762532178645 135 -25.341233337727644 136 -25.314406882884825;
createNode animCurveTL -n "locator19_translateZ";
	rename -uid "98E9DBA5-4F10-D079-89E7-499578F584AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 5.6974986077483578 1 5.3337182469962983
		 2 5.1164203369220971 3 4.8662237683456482 4 4.6357860871004846 5 4.420121062272834
		 6 4.1902325871706818 7 3.9198454438989696 8 3.5407028736642214 9 3.2242009802827445
		 10 3.0885744632666263 11 3.2505439906552969 12 3.6242907520508254 13 4.0860691522503494
		 14 4.9061235436890342 15 6.1208356510460327 16 7.1462083836543933 17 7.4543802242943613
		 18 7.7497777166372899 19 8.1769570876326725 20 8.4744434452386344 21 8.5269126838122986
		 22 8.7903129646731841 23 9.1420226223705541 24 9.4816643781414029 25 9.9244593518372639
		 26 9.9613847882382203 27 10.00143607776026 28 10.231043236056053 29 9.9064979679671978
		 30 9.2629914218472322 31 8.8354862390969515 32 8.5129982161178361 33 8.0928376022999373
		 34 7.5587379716345708 35 6.4820772926600938 36 4.437894703681124 37 2.642867379763004
		 38 1.96020221563316 39 1.8760142611142783 40 0.20966451617077908 41 -3.1201145568197628
		 42 -3.7566086056133159 43 -3.116326515566243 44 -3.5059574272466705 45 -5.2123920531460897
		 46 -6.9392713229844674 47 -7.690804607593094 48 -7.9737827745206005 49 -9.2207695534303866
		 50 -9.245978268847864 51 -7.8029479357791161 52 -7.4720596808597008 53 -7.6471797920380027
		 54 -7.7435193863723271 55 -7.5491591497679735 56 -7.3552461260014752 57 -7.6585611231617747
		 58 -7.4687818356696027 59 -6.9739288738350638 60 -6.4424606808874216 61 -6.0963321905844339
		 62 -5.503186062379001 63 -3.7995496684488046 64 -1.6423581332228139 65 0.41408812811380358
		 66 2.0065906783192418 67 3.3632558615503001 68 5.5131205569180963 69 8.4162416351692571
		 70 10.895948224603671 71 12.144670366875005 72 12.031309250464659 73 10.850140701889444
		 74 9.3601107384251065 75 8.2533474301285992 76 7.2000953360126516 77 5.9115665052722193
		 78 4.5984127792328877 79 3.4201644909770152 80 2.3609764123153809 81 1.3612274808039615
		 82 0.36612563465922676 83 -1.1278762311320634 84 -2.4791151707611618 85 -3.550576112335591
		 86 -4.3966342589044132 87 -4.8153577542268238 88 -4.8427938527910044 89 -4.782456152323789
		 90 -4.6273410038275813 91 -4.1943615131593219 92 -3.6048697893011763 93 -3.0856073580511065
		 94 -2.7359364351172815 95 -2.571659627083136 96 -2.4877254259523909 97 -2.3138877270839942
		 98 -2.1783292542595518 99 -2.140188753007692 100 -2.1645542688696651 101 -2.1722054486971842
		 102 -2.0082306720101428 103 -1.6628175356640611 104 -1.5348120199246011 105 -1.6750229970786563
		 106 -1.7199600720726664 107 -1.5080232427752946 108 -1.2113514620991452 109 -1.0045637369968006
		 110 -0.76401287681591157 111 -0.4640389125277693 112 -0.21263264817861227 113 -0.0057960041091291714
		 114 0.07341555017222845 115 0.046834292565705482 116 0.0034542391750562729 117 0.025219077146118707
		 118 0.046931935021035542 119 0.20403753382143464 120 0.50269290996382665 121 0.70273625387278571
		 122 0.73487441436910217 123 0.7930354953106189 124 0.91188039464944382 125 1.0378110533092411
		 126 1.1523466419643 127 1.236600848311781 128 1.255626098960704 129 1.2477491706405601
		 130 1.2735470481328264 131 1.3031592961626757 132 1.3536096844566714 133 1.4543767908094196
		 134 1.585029076508107 135 1.7709246997803803 136 1.899128500397552;
createNode animCurveTA -n "locator19_rotateX";
	rename -uid "3B8969BB-4810-D16F-C291-3E88696417B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 61.657503015066851 1 60.021323240816251
		 2 59.394340490164502 3 58.815285659141331 4 57.592985253435081 5 56.775647040992936
		 6 57.026813727803507 7 57.405054681334313 8 57.008224118810553 9 56.271128973318767
		 10 56.269472303817629 11 56.955469607031979 12 57.57614017092186 13 59.037939756587868
		 14 61.376303442989155 15 62.931848181843627 16 63.96679748125382 17 64.729860079992093
		 18 60.744017604152461 19 57.233764839504495 20 55.160335110410699 21 54.004983106178088
		 22 54.808676172049942 23 55.675886713117052 24 56.843749472536587 25 58.82210787500123
		 26 60.781050592726814 27 64.276787236188767 28 68.721025715138779 29 69.415528618600561
		 30 68.048485971025002 31 67.969158879148495 32 68.653816120472968 33 68.415144488692192
		 34 66.968592652004062 35 63.622400189014513 36 57.518155696185509 37 53.745265992534009
		 38 54.769835196477239 39 56.292764075235723 40 61.302308573881191 41 64.34698702694422
		 42 71.440362496174728 43 78.070310062669122 44 78.943020474217406 45 75.593183575906934
		 46 67.486517508988555 47 48.778819700054342 48 30.189877722480592 49 13.783209903208661
		 50 10.407137746547859 51 10.98472317944592 52 4.0544140613064936 53 -7.4477271497531206
		 54 -16.882576580051268 55 -24.023799286923964 56 -30.799001699171384 57 -37.969416024396651
		 58 -44.188772802722092 59 -48.544868584916763 60 -47.7579854660178 61 -38.679917116857879
		 62 -22.699351919558115 63 -6.6156605793056515 64 3.6679675559566496 65 8.8930549777483794
		 66 11.870668290868084 67 13.144331198614154 68 15.137635110396159 69 19.067875886823597
		 70 24.521250614586194 71 32.213060239784845 72 45.028082037296393 73 63.25899710583429
		 74 -94.44469736047175 75 -73.896140510105951 76 -60.047874855254378 77 -50.828567139985218
		 78 -47.920151980975973 79 -67.467053462052164 80 1.2647446929419055 81 -34.456379224588275
		 82 -43.733281147418637 83 -51.036583042362906 84 -56.853069339118974 85 -59.408269484817019
		 86 -59.764010934086841 87 -59.095752999976874 88 -58.03483441878457 89 -56.859030950153503
		 90 -56.33900829470538 91 -56.797451823319868 92 -57.370641484936385 93 -56.72182788753053
		 94 -55.486395737924752 95 -54.242427741496186 96 -52.037988675678648 97 -48.97664438356405
		 98 -45.844149884679034 99 -42.717093166390583 100 -39.646334821319911 101 -35.550064330776976
		 102 -30.145523793509408 103 -23.886748239843254 104 -18.723417455246793 105 -16.064892104729836
		 106 -13.316774173910979 107 -8.6855030654094989 108 -3.4501046563954088 109 1.3740965183525382
		 110 6.2405736329052957 111 10.901261136700672 112 14.863509003020903 113 18.270006053850757
		 114 20.576421585800428 115 21.807314884009614 116 22.182404650375791 117 23.479331654049513
		 118 24.752288105558154 119 26.784601710650801 120 30.235673007008174 121 33.497341180119548
		 122 35.043825283052023 123 36.340293815501589 124 38.174776480251047 125 39.862923013368452
		 126 41.641419041002131 127 44.011662381425914 128 45.826827961583206 129 46.679701188412196
		 130 47.522153639137493 131 48.331738858011512 132 49.039401146396997 133 49.880554215171685
		 134 50.741185928444835 135 51.365396007515585 136 51.607138290992395;
createNode animCurveTA -n "locator19_rotateY";
	rename -uid "8C490E8A-483D-1D2F-A79C-F78EE600261F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -26.748949272855324 1 -25.859880718033079
		 2 -24.59856535212641 3 -22.554845659520151 4 -20.058330961671285 5 -17.22657139143195
		 6 -15.140752639782168 7 -13.853660681785364 8 -12.602330126649465 9 -11.64896422793044
		 10 -11.30097291895321 11 -11.859057427806642 12 -13.301883261148687 13 -15.805322728933495
		 14 -18.163520773827237 15 -19.058658841959765 16 -21.590147900698604 17 -28.190727538738781
		 18 -34.009147946023234 19 -38.409280939878698 20 -42.936871164709807 21 -47.518236332459573
		 22 -49.771897490960242 23 -50.400952498658292 24 -50.270242106226014 25 -49.002310294045323
		 26 -46.324846518331803 27 -42.244024174713317 28 -38.380395663846038 29 -35.550991338798774
		 30 -32.978120190127534 31 -31.240843865579411 32 -30.353663108358933 33 -29.756949779961111
		 34 -29.42593297136683 35 -29.075056360435706 36 -27.081347722648157 37 -22.2978199727145
		 38 -16.694975723101049 39 -10.022374742243869 40 -8.7852819827266337 41 -12.5175609282902
		 42 -10.251921287406139 43 -6.3942271727771196 44 -3.6959629470690829 45 -2.8423858093843006
		 46 -5.1739024397083426 47 -8.1963102176724583 48 -9.6151288017560983 49 -15.061724195310168
		 50 -20.730456080174523 51 -26.853356398367719 52 -31.44528621547105 53 -33.224109581105182
		 54 -36.690359979509658 55 -43.329786044182967 56 -45.998198399758394 57 -46.020285127583506
		 58 -46.592636612871338 59 -47.836132243446514 60 -49.705614008045558 61 -52.970154920885804
		 62 -55.047558188339934 63 -54.150874017224012 64 -52.496854283707201 65 -52.02797679208637
		 66 -52.110071588557375 67 -53.051748881874182 68 -54.898540341017018 69 -57.075296503165845
		 70 -60.18352424352819 71 -64.012330480598663 72 -68.323073762497827 73 -72.987003239791392
		 74 -103.49233100502161 75 -102.62735409903505 76 -102.37983016914346 77 -100.07662284894425
		 78 -96.4490902723158 79 -93.23857287953858 80 -86.835320863501693 81 -76.233366473599744
		 82 -62.725993628569789 83 -54.112843327511946 84 -47.754599880896592 85 -41.197419447582739
		 86 -37.174505846470041 87 -36.346225896043805 88 -37.274997674453033 89 -38.916758724246762
		 90 -40.888904562852133 91 -43.176766753883967 92 -45.530406537176411 93 -47.637911711015612
		 94 -49.673577149338698 95 -51.500643916352935 96 -52.753594952368296 97 -53.742049797202725
		 98 -54.67998441579585 99 -55.375783014821401 100 -55.687109611473645 101 -56.278106962944214
		 102 -57.049768215174481 103 -57.500248539935377 104 -57.240451220452563 105 -57.083880360123814
		 106 -57.110908912583575 107 -57.140702574069302 108 -57.173002624971367 109 -56.686221071809065
		 110 -55.879429949301233 111 -54.907109167916595 112 -53.739647479209118 113 -52.391292559521467
		 114 -50.734646132887725 115 -48.673598103732054 116 -46.48626129305854 117 -44.541575833207325
		 118 -42.658693219326906 119 -41.016149788554358 120 -39.590420552435688 121 -38.283836667406426
		 122 -36.99236458438849 123 -35.553845389876848 124 -34.023633382135586 125 -32.723919098197136
		 126 -31.450919682583802 127 -30.158389519737078 128 -28.991943191325301 129 -27.823365064686872
		 130 -26.669352066434861 131 -25.610698673658945 132 -24.499533003437421 133 -23.53756218006216
		 134 -22.902324173842082 135 -22.477607980662086 136 -22.432996125295105;
createNode animCurveTA -n "locator19_rotateZ";
	rename -uid "2C3EBFAD-40B3-205F-2835-CC9B97A9115A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -78.087731516913664 1 -76.717008030656473
		 2 -75.454168956018037 3 -73.680720869975659 4 -71.337415999094389 5 -69.035073235718443
		 6 -67.688271928963374 7 -67.267529894074187 8 -67.047946895944634 9 -66.606652075912393
		 10 -66.567135410534021 11 -67.184813763673773 12 -68.142602187791027 13 -69.98751423472612
		 14 -71.102322213589332 15 -68.842052685760322 16 -68.88963256613178 17 -76.865987413422431
		 18 -80.40883305520002 19 -81.29866884927975 20 -83.359741419310708 21 -86.652442271919554
		 22 -89.035595193574522 23 -90.144014542677098 24 -90.926012830468849 25 -91.327362821736713
		 26 -90.840775041486651 27 -89.660773809372557 28 -88.366842975954484 29 -86.706406038598004
		 30 -84.489088357670724 31 -83.057447391541857 32 -82.680723214076195 33 -82.693099561371938
		 34 -82.739650286574289 35 -82.246331188856104 36 -79.792506260142275 37 -77.030117852170179
		 38 -75.200007999233208 39 -70.347219627580472 40 -70.559804221596593 41 -80.555696987514608
		 42 -81.537647846550954 43 -80.414744596286511 44 -77.015696970454584 45 -75.104968775693095
		 46 -67.026309396436773 47 -50.391346963971159 48 -40.683003173689372 49 -34.150685257076738
		 50 -29.90814549774888 51 -27.00543771617544 52 -20.790615792766669 53 -12.366719816548684
		 54 -5.5245517517603577 55 0.88012677580551579 56 6.7027022021298261 57 10.775879296781026
		 58 12.655309664003918 59 13.051189443364379 60 6.6148674303095012 61 -7.1572101014884728
		 62 -26.046459500375903 63 -44.950762012691108 64 -56.865345230183372 65 -62.319515546827866
		 66 -64.022961126875941 67 -63.420157787568527 68 -62.362604782015069 69 -61.851741632687599
		 70 -63.705923518706605 71 -70.09269598688131 72 -83.077088115649559 73 -103.05954848177375
		 74 52.037362247148664 75 29.721482467626004 76 14.628457578222156 77 4.5269714853747614
		 78 1.2584130386431109 79 20.836774432323811 80 -48.040479912723555 81 -13.780562081654875
		 82 -7.9891689180776151 83 -3.4682969427166879 84 1.0181738353108802 85 2.5649886443400951
		 86 2.9630602075518926 87 3.1270396793019528 88 2.8088989500135497 89 2.1061926458193545
		 90 1.5164721785071043 91 1.296211477661493 92 0.87706391015892404 93 -0.71168049999431571
		 94 -2.4105458553860455 95 -3.7875672160126421 96 -6.2227976185949716 97 -9.6702615886953183
		 98 -13.102388069174353 99 -16.277649054350615 100 -19.327040975520049 101 -23.204820314121879
		 102 -28.181880075426271 103 -33.911650289450151 104 -38.760606873980272 105 -41.593534654781791
		 106 -44.544386974722137 107 -48.926703312841447 108 -53.747069018352164 109 -58.127844089075133
		 110 -62.394518372792348 111 -66.472101834517858 112 -69.896408277875494 113 -72.63538397202727
		 114 -74.54722587367803 115 -75.757828002778098 116 -76.10774579771261 117 -76.939553474426248
		 118 -77.536391520608632 119 -78.435549774637494 120 -79.789506511298086 121 -80.853202209919914
		 122 -81.20741963214536 123 -81.414560650909792 124 -81.733971817887408 125 -82.070055535442279
		 126 -82.490871483193303 127 -83.113724544024763 128 -83.502077562257739 129 -83.448479227177856
		 130 -83.291686371497633 131 -83.012991770992215 132 -82.495394788577144 133 -81.972608512070522
		 134 -81.558463526671503 135 -81.100095714617765 136 -80.846824047492234;
createNode animCurveTU -n "locator19_scaleX";
	rename -uid "25EC5E18-4B96-05AA-A66F-8298D482F98E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999978 1 1 2 1 3 1 4 1 5 0.99999999999999989
		 6 1 7 1.0000000000000002 8 1 9 1.0000000000000002 10 1 11 1.0000000000000002 12 1
		 13 0.99999999999999967 14 1 15 1 16 1.0000000000000004 17 0.99999999999999989 18 0.99999999999999989
		 19 1 20 0.99999999999999978 21 0.99999999999999989 22 0.99999999999999978 23 1 24 1
		 25 1 26 0.99999999999999989 27 0.99999999999999978 28 0.99999999999999989 29 0.99999999999999989
		 30 1.0000000000000004 31 1 32 1 33 1 34 1 35 1 36 0.99999999999999989 37 1 38 1.0000000000000002
		 39 1 40 1 41 1 42 1 43 1.0000000000000004 44 1 45 0.99999999999999978 46 0.99999999999999967
		 47 0.99999999999999989 48 1 49 0.99999999999999989 50 0.99999999999999956 51 1.0000000000000004
		 52 1.0000000000000002 53 1.0000000000000002 54 0.99999999999999944 55 0.99999999999999978
		 56 1 57 1 58 0.99999999999999956 59 1 60 0.99999999999999967 61 0.99999999999999967
		 62 0.99999999999999978 63 0.99999999999999978 64 0.99999999999999978 65 1.0000000000000002
		 66 0.99999999999999956 67 1 68 0.99999999999999978 69 0.99999999999999967 70 0.99999999999999978
		 71 1 72 0.99999999999999978 73 0.99999999999999978 74 0.99999999999999989 75 1.0000000000000002
		 76 0.99999999999999967 77 1 78 0.99999999999999967 79 1 80 0.99999999999999989 81 0.99999999999999989
		 82 1 83 0.99999999999999967 84 0.99999999999999967 85 0.99999999999999978 86 0.99999999999999967
		 87 0.99999999999999989 88 0.99999999999999978 89 1.0000000000000004 90 0.99999999999999989
		 91 0.99999999999999967 92 0.99999999999999989 93 0.99999999999999978 94 0.99999999999999967
		 95 1 96 0.99999999999999978 97 0.99999999999999978 98 1 99 1.0000000000000002 100 0.99999999999999978
		 101 0.99999999999999967 102 1 103 0.99999999999999989 104 0.99999999999999967 105 1
		 106 1.0000000000000002 107 1 108 1 109 0.99999999999999956 110 1.0000000000000004
		 111 1.0000000000000002 112 0.99999999999999967 113 1.0000000000000002 114 1 115 0.99999999999999956
		 116 0.99999999999999989 117 0.99999999999999989 118 1.0000000000000002 119 0.99999999999999967
		 120 1 121 0.99999999999999978 122 0.99999999999999956 123 1.0000000000000004 124 1.0000000000000002
		 125 1 126 1.0000000000000004 127 1 128 0.99999999999999978 129 0.99999999999999944
		 130 0.99999999999999978 131 1.0000000000000002 132 0.99999999999999956 133 0.99999999999999978
		 134 0.99999999999999978 135 0.99999999999999989 136 1;
createNode animCurveTU -n "locator19_scaleY";
	rename -uid "00FCCCAA-4244-81D1-BB51-13B0A09BB5B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999956 1 0.99999999999999967
		 2 1 3 1 4 1 5 1 6 1 7 1.0000000000000002 8 0.99999999999999989 9 1 10 0.99999999999999989
		 11 0.99999999999999989 12 0.99999999999999989 13 1 14 0.99999999999999989 15 1.0000000000000002
		 16 1.0000000000000004 17 0.99999999999999978 18 1 19 1.0000000000000004 20 0.99999999999999989
		 21 0.99999999999999956 22 0.99999999999999978 23 1 24 0.99999999999999978 25 1 26 1
		 27 0.99999999999999978 28 1.0000000000000002 29 0.99999999999999989 30 1.0000000000000002
		 31 0.99999999999999978 32 1 33 1 34 1 35 0.99999999999999989 36 1 37 1.0000000000000002
		 38 0.99999999999999989 39 1.0000000000000004 40 1 41 1 42 0.99999999999999989 43 1.0000000000000002
		 44 1.0000000000000002 45 1.0000000000000004 46 0.99999999999999978 47 1 48 0.99999999999999989
		 49 0.99999999999999978 50 0.99999999999999978 51 0.99999999999999989 52 0.99999999999999978
		 53 1.0000000000000002 54 0.99999999999999967 55 0.99999999999999967 56 1 57 1 58 0.99999999999999989
		 59 1 60 0.99999999999999989 61 0.99999999999999978 62 0.99999999999999989 63 1 64 0.99999999999999989
		 65 1.0000000000000002 66 0.99999999999999967 67 1 68 0.99999999999999967 69 1.0000000000000002
		 70 0.99999999999999967 71 1.0000000000000002 72 1 73 1 74 1.0000000000000004 75 1.0000000000000002
		 76 0.99999999999999978 77 1.0000000000000002 78 0.99999999999999944 79 1 80 1 81 0.99999999999999978
		 82 1 83 0.99999999999999989 84 0.99999999999999978 85 1 86 0.99999999999999978 87 0.99999999999999989
		 88 0.99999999999999989 89 1 90 0.99999999999999989 91 0.99999999999999978 92 1 93 1
		 94 1 95 1.0000000000000002 96 1 97 1 98 1.0000000000000002 99 1 100 0.99999999999999978
		 101 1.0000000000000002 102 1 103 1.0000000000000002 104 0.99999999999999956 105 0.99999999999999978
		 106 1 107 1 108 1.0000000000000002 109 1 110 1.0000000000000004 111 1.0000000000000002
		 112 1 113 1 114 1 115 0.99999999999999967 116 0.99999999999999989 117 0.99999999999999989
		 118 1.0000000000000002 119 1 120 0.99999999999999989 121 1 122 0.99999999999999967
		 123 1 124 1 125 1 126 1.0000000000000002 127 1.0000000000000002 128 0.99999999999999967
		 129 0.99999999999999956 130 0.99999999999999978 131 0.99999999999999978 132 1 133 0.99999999999999989
		 134 1.0000000000000002 135 0.99999999999999967 136 0.99999999999999989;
createNode animCurveTU -n "locator19_scaleZ";
	rename -uid "6B7E3740-4805-D14A-75D9-9D9DC97FA5CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999933 1 0.99999999999999956
		 2 1 3 1 4 1 5 0.99999999999999967 6 1 7 1 8 1 9 1 10 0.99999999999999978 11 0.99999999999999989
		 12 1 13 0.99999999999999989 14 1.0000000000000002 15 1 16 1 17 0.99999999999999989
		 18 0.99999999999999967 19 1.0000000000000002 20 1 21 0.99999999999999956 22 0.99999999999999978
		 23 1 24 0.99999999999999967 25 0.99999999999999989 26 1 27 0.99999999999999978 28 0.99999999999999989
		 29 0.99999999999999989 30 1.0000000000000002 31 0.99999999999999978 32 1 33 0.99999999999999989
		 34 1 35 0.99999999999999978 36 0.99999999999999956 37 1 38 1.0000000000000002 39 0.99999999999999989
		 40 1 41 1 42 0.99999999999999989 43 1.0000000000000002 44 1 45 1 46 0.99999999999999978
		 47 1 48 1.0000000000000002 49 0.99999999999999978 50 0.99999999999999967 51 1.0000000000000002
		 52 1 53 1.0000000000000002 54 0.99999999999999944 55 0.99999999999999967 56 1.0000000000000004
		 57 1 58 0.99999999999999933 59 0.99999999999999978 60 0.99999999999999967 61 0.99999999999999944
		 62 0.99999999999999967 63 1 64 1.0000000000000002 65 1 66 0.99999999999999956 67 1
		 68 0.99999999999999967 69 0.99999999999999978 70 0.99999999999999978 71 0.99999999999999978
		 72 0.99999999999999967 73 1.0000000000000002 74 1 75 1.0000000000000002 76 1.0000000000000002
		 77 1.0000000000000002 78 0.99999999999999978 79 0.99999999999999956 80 1.0000000000000002
		 81 1.0000000000000002 82 1.0000000000000004 83 1 84 0.99999999999999956 85 1.0000000000000002
		 86 0.99999999999999967 87 0.99999999999999967 88 0.99999999999999967 89 1 90 0.99999999999999978
		 91 0.99999999999999967 92 1.0000000000000004 93 0.99999999999999956 94 0.99999999999999967
		 95 1 96 0.99999999999999978 97 1 98 1 99 1.0000000000000004 100 0.99999999999999967
		 101 0.99999999999999989 102 1 103 1 104 0.99999999999999967 105 1 106 1.0000000000000002
		 107 1 108 1.0000000000000007 109 1 110 1.0000000000000007 111 1.0000000000000004
		 112 0.99999999999999989 113 1.0000000000000002 114 0.99999999999999989 115 0.99999999999999967
		 116 1 117 1 118 1.0000000000000007 119 0.99999999999999956 120 0.99999999999999944
		 121 0.99999999999999978 122 0.99999999999999944 123 1.0000000000000002 124 1.0000000000000002
		 125 0.99999999999999989 126 1.0000000000000004 127 1.0000000000000004 128 0.99999999999999989
		 129 0.99999999999999944 130 0.99999999999999967 131 0.99999999999999978 132 0.99999999999999978
		 133 0.99999999999999978 134 0.99999999999999989 135 0.99999999999999944 136 1.0000000000000002;
createNode animCurveTU -n "locator20_visibility";
	rename -uid "EA720978-4FEF-0D4D-38F9-6399C6156BE3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1
		 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1
		 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1
		 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTL -n "locator20_translateX";
	rename -uid "B761FAD7-41E5-466B-BC3C-EFA866AAC41E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 28.982175452018925 1 29.767897444761214
		 2 30.309516159723991 3 30.920083760528399 4 31.646071672297637 5 32.214490306549479
		 6 32.483742520146777 7 32.467286931494385 8 32.429580147776235 9 32.679357342807563
		 10 32.696229567073573 11 32.270956679255839 12 31.802398134949541 13 31.180602893978868
		 14 30.679504525164781 15 31.221476043617109 16 31.219831533839649 17 28.852876450207503
		 18 27.826500619470984 19 27.63907459637268 20 26.902535432252499 21 25.664057484238313
		 22 24.71158666218837 23 24.097157603098108 24 23.550826163783082 25 22.962887558342917
		 26 22.764744071128021 27 22.745546740747546 28 22.590210070715759 29 22.791045282049009
		 30 23.525077421620459 31 24.2000558779168 32 24.639480789425271 33 24.90970202846453
		 34 25.197734823359099 35 26.209673527493514 36 28.361864913521512 37 29.693456822460014
		 38 29.547901811811251 39 30.276863468745034 40 32.164977307880392 41 31.925013246608231
		 42 34.198236229999907 43 34.949589484382543 44 36.2902357383186 45 39.098266647188268
		 46 45.125103781981728 47 52.51442043503976 48 55.777562615252513 49 57.246084727051695
		 50 58.242892706705604 51 58.747924017688824 52 59.191305524153826 53 59.757128948929576
		 54 59.072081533782658 55 56.944783465585211 56 55.755026501991921 57 54.877409834400936
		 58 53.600825974974761 59 52.197323917756343 60 50.419215866175556 61 47.683365352601449
		 62 44.203062980182914 63 40.000320701315317 64 36.380205267090062 65 34.263568017098208
		 66 33.70823222285361 67 34.060549927729824 68 34.464134198251784 69 34.407095853434328
		 70 33.072480005991181 71 30.493421078295654 72 27.400512551289708 73 24.801118496112196
		 74 23.193160925938585 75 22.20028864023611 76 21.992162332335454 77 23.374439152878267
		 78 25.578368700411758 79 27.612866401925729 80 30.439398191862253 81 36.162111678991806
		 82 42.50385722327399 83 46.01461400850971 84 48.296515169606302 85 50.55537108234455
		 86 51.953595718815407 87 52.387714652307309 88 52.265506753673804 89 51.766639590292186
		 90 50.918283344747209 91 49.793461919787369 92 48.571442780013911 93 47.456408745913265
		 94 46.421647038096097 95 45.489142707563062 96 44.745419251428338 97 44.026456045827217
		 98 43.26315249309728 99 42.632814321258969 100 42.158956636192812 101 41.455614398947525
		 102 40.525725119041986 103 39.533911734828337 104 38.741127586416219 105 38.067623804716938
		 106 37.261451683476693 107 36.20777841717566 108 34.998402414196278 109 33.951457030702564
		 110 32.932408987657666 111 31.852432875359561 112 30.878066605694272 113 30.097477908284375
		 114 29.482091307257612 115 28.97440535341147 116 28.781451377908581 117 28.449517279180817
		 118 28.239531385445375 119 27.929549203947353 120 27.55761195665486 121 27.34716596000689
		 122 27.260930264397658 123 27.152665882303232 124 27.008095084914544 125 26.810389836908186
		 126 26.537895557061859 127 26.225521103873533 128 26.011113639660131 129 25.90834763147236
		 130 25.846034557925641 131 25.889163333538818 132 26.054817643919115 133 26.246321274184723
		 134 26.429056124039661 135 26.611205271795036 136 26.738845891855483;
createNode animCurveTL -n "locator20_translateY";
	rename -uid "A73C397C-41F6-05FF-4A33-7BBE6A4F096A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -48.490704639722395 1 -48.5839107147319
		 2 -48.815817188561226 3 -49.220180971403394 4 -49.626662324514541 5 -50.046547960996008
		 6 -50.346778530369889 7 -50.607621958080443 8 -50.873655963851661 9 -50.945509637272707
		 10 -51.0049105866388 11 -51.092915047658806 12 -51.032095855519586 13 -50.803170764689753
		 14 -50.382258210614253 15 -49.685576500079307 16 -48.827619980388491 17 -47.706705840330159
		 18 -45.996508936801305 19 -44.363168431042681 20 -42.734777024692931 21 -41.1800326666948
		 22 -40.332860217612563 23 -40.079796529313299 24 -40.131293299060673 25 -40.633182664900474
		 26 -41.793321120722041 27 -43.422695483070214 28 -44.873491715505281 29 -46.107998811694287
		 30 -47.191784742686323 31 -47.775659401756528 32 -48.012466151150932 33 -48.227900831083559
		 34 -48.396129545895036 35 -48.47699429227464 36 -48.880777898263347 37 -50.080117216298106
		 38 -51.517803109869703 39 -52.333023253643887 40 -51.804851269762608 41 -49.992989608957757
		 42 -47.90763824951982 43 -47.968722439512447 44 -48.053084655789604 45 -45.628152409795319
		 46 -40.634001430035937 47 -35.05546112632301 48 -31.614913498848281 49 -28.1115485928417
		 50 -24.53535599825635 51 -21.319806734135952 52 -17.557285431044861 53 -13.904337305000865
		 54 -11.404509836409744 55 -9.3687754165254375 56 -7.8524968631926981 57 -7.9230264562337425
		 58 -9.3377388937852857 59 -11.061518566159478 60 -15.433117759803885 61 -21.455841876938177
		 62 -27.7090318455672 63 -33.707404821873901 64 -37.48636479453998 65 -38.885559970796152
		 66 -38.904232684500172 67 -37.948904948172952 68 -36.144658352150202 69 -33.794727447281133
		 70 -31.566270248600361 71 -30.161690047235382 72 -29.078021823370207 73 -27.183358811647537
		 74 -24.78797463577391 75 -23.003037003160244 76 -21.748750169486119 77 -20.783311751367911
		 78 -20.555605946385228 79 -21.102585500142844 80 -21.701529547685979 81 -22.139971128267973
		 82 -22.460166049290336 83 -21.992237065989073 84 -20.84618539701286 85 -20.183699367031124
		 86 -19.761395051531437 87 -19.454753100364854 88 -19.452574069154878 89 -19.764760679964354
		 90 -20.244379822937731 91 -20.72804758424904 92 -21.300255948288537 93 -22.171784517056125
		 94 -22.933549329666945 95 -23.500695658448137 96 -24.346532194615619 97 -25.450634641673886
		 98 -26.499866026876774 99 -27.395336278868797 100 -28.237107811709166 101 -29.213767884174274
		 102 -30.334218286513746 103 -31.573585348871248 104 -32.757168004571213 105 -33.548307900524847
		 106 -34.298241530132387 107 -35.21743751706444 108 -36.130909739656573 109 -37.068133486665999
		 110 -38.030476694487973 111 -38.998554203059086 112 -39.924304902025 113 -40.78189815414747
		 114 -41.694848165640892 115 -42.741218253763165 116 -43.702605967826955 117 -44.551437832637419
		 118 -45.300458044008522 119 -45.936987512025482 120 -46.42641099192906 121 -46.804877963535944
		 122 -47.21322261663947 123 -47.683277205814633 124 -48.156907750688504 125 -48.568448367608241
		 126 -48.982871667755944 127 -49.376198934172805 128 -49.717795279687166 129 -50.06939276452718
		 130 -50.397920408291412 131 -50.66092418537626 132 -50.9011010216703 133 -51.079575071057718
		 134 -51.165713709434996 135 -51.202740723192846 136 -51.166078121026644;
createNode animCurveTL -n "locator20_translateZ";
	rename -uid "43C125B5-4F93-6D12-DE25-C38EC8ED5C53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 18.447802988195384 1 17.689962030673403
		 2 16.908530503369906 3 15.732253421342413 4 14.351920973776405 5 12.809741750433218
		 6 11.589480253898685 7 10.702989423125182 8 9.7215776462533032 9 8.9442241584542401
		 10 8.639979186200387 11 9.0722651541746533 12 10.142244134062796 13 11.801988839704407
		 14 13.737075679663633 15 15.371222679280084 16 17.570220914586724 17 20.837154180308566
		 18 23.594815348677379 19 25.776952659322959 20 27.771830691446162 21 29.419219132002624
		 22 30.418800970970238 23 30.970072317757904 24 31.268462597814271 25 31.305257487381958
		 26 30.450691924529366 27 29.046620012499048 28 27.819838937461313 29 26.377654397437155
		 30 24.682906968851611 31 23.52785786733088 32 22.828579540463949 33 22.15305590795181
		 34 21.476639301504093 35 20.248617222079062 36 17.334747248530832 37 13.391429988418736
		 38 10.098419756763775 39 6.8061661215379701 40 4.536386831617083 41 3.0198454819386544
		 42 1.2852556820203915 43 0.038613158264951153 44 -1.6798338347597905 45 -3.807610819146106
		 46 -4.3846078553265784 47 -3.6520866290863694 48 -3.2420190970134115 49 -1.8592209836370728
		 50 0.78167018709066838 51 4.9934610141730502 52 7.3066762624323758 53 7.874656806777466
		 54 9.1827180979959735 55 11.890023788087973 56 13.022224767797439 57 12.726493817014813
		 58 13.111759904948656 59 14.024226416760513 60 15.164867148731332 61 16.51922474972713
		 62 17.715942852847974 63 19.162752585193374 64 20.831495820572684 65 22.746052247440758
		 66 24.363505295747075 67 26.003080845769006 68 28.689955022385647 69 32.195076730523084
		 70 35.474699547909097 71 37.609143528721546 72 38.35677706794317 73 37.939264485452242
		 74 36.907102584483397 75 35.896976186420432 76 34.870218896975359 77 33.803416037820057
		 78 32.747983335512373 79 31.703758753741624 80 30.646614964652457 81 28.876273802174467
		 82 25.545529619524729 83 21.823407314361191 84 18.491957333853804 85 15.108396868415156
		 86 12.72094146192336 87 11.974130045633785 88 12.314346051469784 89 13.013483033536318
		 90 13.916585573443484 91 15.189713093307603 92 16.611246044959188 93 17.846633461297301
		 94 18.861142405932952 95 19.598941091042235 96 20.063184866348649 97 20.529449003334861
		 98 20.936202981304376 99 21.171529634698857 100 21.234281280932493 101 21.390103402243795
		 102 21.763747773743518 103 22.229570790501242 104 22.288314237486702 105 22.106124710187771
		 106 22.068446796590877 107 22.288379064158931 108 22.593711439790326 109 22.669167388810479
		 110 22.688291022292162 111 22.71523258579515 112 22.629998090678555 113 22.436240722516573
		 114 22.0062741741813 115 21.320675512514924 116 20.547810626989133 117 19.89584071758938
		 118 19.243413047595595 119 18.795472837538142 120 18.556542780370279 121 18.254101082717483
		 122 17.780596491047419 123 17.265358835998029 124 16.762867489685362 125 16.352157441250512
		 126 15.933441910811297 127 15.468799691593205 128 14.98624734286912 129 14.470170584863013
		 130 13.988704297165128 131 13.548427807459944 132 13.101187977732224 133 12.767513954754378
		 134 12.609526721831031 135 12.601681621931959 136 12.709500210482332;
createNode animCurveTA -n "locator20_rotateX";
	rename -uid "26DC243F-44A3-C9B2-9FFF-A99682EA1509";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 23.036069632029943 1 20.950511529481158
		 2 19.446261592408522 3 17.115481736237204 4 14.166695680178956 5 12.229758013474516
		 6 12.298273121580092 7 12.690012680121491 8 12.433131038976455 9 11.870602160886431
		 10 11.543916427357455 11 11.797865818824794 12 12.720203676392364 13 13.704991849621683
		 14 15.837928743185943 15 26.89474661079975 16 35.668385605082022 17 25.078177645281851
		 18 21.289365980276596 19 25.566809850531605 20 27.614090522743574 21 25.434700018322708
		 22 26.328120630145008 23 28.372700964061746 24 29.891106518603156 25 32.483824631337839
		 26 36.768429507216752 27 41.730177165649366 28 44.778783509289504 29 43.048479095622085
		 30 37.969438348639208 31 33.492677327826527 32 31.798719378290407 33 31.260007702683247
		 34 28.435252800260571 35 21.505899136400778 36 10.692620432341041 37 -1.147912677023007
		 38 -12.189212030158149 39 -9.6906343599857276 40 27.776917015962496 41 18.787003858193394
		 42 7.9723959250876648 43 -12.82487813607794 44 -35.37617112554571 45 -39.809159843204235
		 46 -39.410704973090375 47 -40.810829744024566 48 -36.553370106764049 49 -29.751913260234971
		 50 -29.031823301624076 51 -30.946258073674212 52 -39.057181225011917 53 -60.285078072525444
		 54 -93.073424991577511 55 -97.732776536015223 56 -97.50779363609864 57 -94.624729225529521
		 58 -92.731335306829834 59 -94.64985603113827 60 -94.143953497936678 61 -86.749575624206685
		 62 -72.681700961038445 63 -49.905695190721545 64 -27.569769634398508 65 -30.561137222649169
		 66 -42.348648053865105 67 -50.157221136741228 68 -52.280455869559027 69 -48.531390773501954
		 70 -36.062205724052859 71 -21.812846509780542 72 -1.4606925294170912 73 -68.579750763757318
		 74 -45.939687494931562 75 -40.657406479102661 76 -45.496810702034701 77 -50.903272090337623
		 78 -51.761835477208784 79 -51.130687884115957 80 -49.646042180163604 81 -49.669560056253687
		 82 -40.345839788848899 83 -3.5759339872616343 84 -154.96058955841804 85 -151.56581707868162
		 86 -149.37090955756281 87 -145.92308334664602 88 -143.34580073903678 89 -141.63733293889533
		 90 -141.9127309790052 91 -144.56045856143649 92 -146.27377860939239 93 -145.31691497641017
		 94 -145.51647539574265 95 -147.59031622014857 96 -147.15087631702266 97 -144.09638943702615
		 98 -141.38326479019111 99 -140.37496252238401 100 -137.2284743094182 101 -134.67375642441908
		 102 -135.56576400461543 103 -135.45125802304304 104 -125.56565385002315 105 -102.52999391429928
		 106 -83.139358813769647 107 -75.202241216424667 108 -71.111805060923018 109 -66.491354110076983
		 110 -60.582221910217427 111 -55.964889262808242 112 -53.409866897358306 113 -51.386677343031842
		 114 -49.087558692421716 115 -46.499156302492942 116 -42.525139527686839 117 -40.480382485030198
		 118 -37.568480262229137 119 -34.258985548078478 120 -29.403087243552452 121 -23.424153176378724
		 122 -18.608995954075763 123 -14.551446113781285 124 -10.812973821124945 125 -7.4281121474156482
		 126 -5.5050789173181087 127 -4.0957666092918119 128 -1.754355103106747 129 1.0490739346461115
		 130 3.8635340064006276 131 6.7655265019117419 132 9.7911231481008318 133 12.397423964737548
		 134 14.723847363446865 135 16.584756574553005 136 17.769396690749062;
createNode animCurveTA -n "locator20_rotateY";
	rename -uid "93DA9604-4741-9BC2-089C-C2A8A4D3A7CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -34.786531303788443 1 -33.836887836414327
		 2 -32.959858046956221 3 -32.162941789903655 4 -30.394589871190256 5 -27.412997235929208
		 6 -23.550761623273413 7 -18.917044765109949 8 -14.994936160491092 9 -13.417737617932421
		 10 -13.281710845380502 11 -13.903596335640694 12 -16.189182423778661 13 -19.173961830794823
		 14 -23.396535849359747 15 -32.755211057145672 16 -37.338831925279607 17 -34.300710669808439
		 18 -36.759958194463067 19 -45.478091103919184 20 -50.897836726697811 21 -51.522960329483958
		 22 -52.850398225052061 23 -54.446391108476995 24 -53.925949377918755 25 -51.496598125360599
		 26 -47.412687049968639 27 -42.870978654297645 28 -39.049395619645004 29 -36.059574291831218
		 30 -33.765025177542256 31 -32.69553505084221 32 -32.773913444621073 33 -33.214084432567219
		 34 -33.494444624437037 35 -33.241183735268862 36 -31.766929345508618 37 -27.317204212350276
		 38 -27.319773891605777 39 -46.618699036148875 40 -39.020919565149299 41 -19.248033861642785
		 42 -17.532274261140529 43 -24.407176649754909 44 -18.33499048199312 45 -13.721869431535444
		 46 -18.870806692977631 47 -24.411536829008188 48 -22.680723631600642 49 -29.628749186907513
		 50 -44.206288846492065 51 -52.59986649598315 52 -60.076362718076219 53 -72.428995824577257
		 54 -70.232853553496383 55 -49.749616106247508 56 -40.341217460036887 57 -43.601432648877463
		 58 -47.03246447735691 59 -51.461952108453261 60 -55.170826305964532 61 -56.059375120100896
		 62 -58.83814924615271 63 -66.380251428701982 64 -69.117739920243508 65 -66.377357249716766
		 66 -62.056816895741449 67 -58.423912502379594 68 -58.453263599305025 69 -65.256341676577165
		 70 -73.039449852423061 71 -78.491912687361818 72 -85.200631248155545 73 -94.630713247564827
		 74 -102.25507209097853 75 -110.83435836396599 76 -117.6844910692007 77 -123.6425961466548
		 78 -126.21241842280693 79 -122.09431526147262 80 -116.02234236201996 81 -117.68413234239858
		 82 -117.78177626582435 83 -113.38478052131168 84 -59.073279759284475 85 -51.810104422075604
		 86 -45.909956700368916 87 -42.470965110749631 88 -42.583582715188015 89 -43.459408513307451
		 90 -43.719130388140989 91 -43.902716913745692 92 -43.68861278993004 93 -44.151292913944218
		 94 -45.965577825815238 95 -47.856995937787261 96 -49.562669136158561 97 -50.963899801088878
		 98 -51.258056527939765 99 -50.952542638575068 100 -52.114489549760442 101 -51.611699098244017
		 102 -49.09608311669367 103 -48.609382730651596 104 -55.853664640070335 105 -63.733966982459513
		 106 -64.87926953844061 107 -63.806761032426984 108 -62.06338652851867 109 -60.78142116021727
		 110 -58.825532923940855 111 -55.543848105193568 112 -51.242209697866507 113 -47.318686998937544
		 114 -45.460684760484469 115 -45.897190640769786 116 -47.623306992893468 117 -47.269442227347142
		 118 -47.295356712991357 119 -47.262249350406755 120 -47.390585309821923 121 -47.225059638686126
		 122 -47.054942023334931 123 -46.784910089526591 124 -45.236246154143565 125 -43.6056147105501
		 126 -43.035341332740167 127 -42.169873171836471 128 -40.87171564265941 129 -39.711320818928499
		 130 -38.492257771836563 131 -37.003007542547756 132 -35.302912083364134 133 -33.722445180909361
		 134 -32.338892519377993 135 -31.283832774082324 136 -30.633682002359095;
createNode animCurveTA -n "locator20_rotateZ";
	rename -uid "002C1F9B-4A35-1AD5-3E59-A9A89679F732";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -95.31115753831908 1 -95.373823926952696
		 2 -93.090679838098723 3 -90.207751476587887 4 -87.376779899208245 5 -85.633111429383021
		 6 -85.109843148109505 7 -84.553044579570781 8 -83.952268371127687 9 -83.065550249914395
		 10 -82.191931169552419 11 -82.330712772175858 12 -83.26406282477177 13 -84.171969845659987
		 14 -85.376500273619513 15 -89.534533738008719 16 -92.889859650516371 17 -89.405732820550156
		 18 -89.710135667289023 19 -92.659219821993275 20 -95.290163687925556 21 -95.744104110660757
		 22 -97.672207509208178 23 -100.25797517786525 24 -101.91439130525669 25 -103.51752736876405
		 26 -105.09842474502193 27 -105.75028778495637 28 -104.70795071089873 29 -101.74228665447099
		 30 -98.035258378847985 31 -95.130791974987616 32 -93.473092085665741 33 -92.35806724815923
		 34 -90.438924295370171 35 -87.255023803743967 36 -83.323813370153772 37 -80.442812075681957
		 38 -81.071261568967699 39 -74.994843097831435 40 -79.069388697225634 41 -73.781643874760221
		 42 -75.605143981206652 43 -61.107677906722429 44 -39.239009223386809 45 -38.602576993688857
		 46 -50.530894223609195 47 -54.34198786358759 48 -51.293176177511008 49 -53.88384011546102
		 50 -49.486565552443409 51 -32.577403515627083 52 -19.841997822573386 53 -8.985226988586156
		 54 20.491033604535634 55 30.838572985514222 56 37.948128361753291 57 40.918883810465552
		 58 41.819537835282638 59 41.501022515253197 60 34.461197659555971 61 22.404067732936184
		 62 6.8218280169264043 63 -17.307871492032749 64 -37.066474232324097 65 -32.070487071272645
		 66 -24.430587554313533 67 -21.02851566847324 68 -16.302221582194147 69 -14.510839542457148
		 70 -25.12609467220577 71 -39.572788146575391 72 -57.935911401853794 73 13.131495721324388
		 74 -7.3795254184554304 75 -15.529281525737428 76 -16.242688297898081 77 -12.989470939610504
		 78 -13.230924977083019 79 -19.082928791698592 80 -29.672943940155371 81 -36.422791119184431
		 82 -48.791910560578046 83 -96.013005506394407 84 43.360464751090035 85 37.12916241752292
		 86 35.834383800046126 87 33.002519681916922 88 31.98179793686618 89 31.836021910304058
		 90 31.201320324445064 91 29.917780310967657 92 28.374678217262037 93 27.953077382020222
		 94 26.578568651240349 95 23.854831859588778 96 22.236344158898163 97 20.918290861873533
		 98 18.517419943125535 99 16.828787246413231 100 13.670924183029031 101 11.087158875593197
		 102 12.124288316044575 103 13.890676539720117 104 8.4599689155004008 105 -11.849325597243167
		 106 -30.721282953075292 107 -38.623145267982004 108 -42.022043908494098 109 -45.2094821871055
		 110 -49.777185066319056 111 -53.617551845527764 112 -55.751990930918609 113 -57.139279677283227
		 114 -58.603132842943424 115 -60.546300508626913 116 -65.394687041092993 117 -67.283896976190746
		 118 -69.816259411109172 119 -72.177290954086459 120 -76.378538143440963 121 -82.324817898658623
		 122 -86.956365577800256 123 -90.292212578805675 124 -92.28940824018504 125 -93.444560470337905
		 126 -94.060119545052373 127 -94.179956833049204 128 -94.472548072361278 129 -95.153502707699261
		 130 -96.0418018984859 131 -97.010025034998023 132 -98.007876286724894 133 -98.992302066179931
		 134 -100.10002741516359 135 -100.69053641419903 136 -100.70049786836358;
createNode animCurveTU -n "locator20_scaleX";
	rename -uid "D48DA04C-465A-7192-D169-E5AD1D218AE3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 1 3 1 4 1 5 0.99999999999999989
		 6 0.99999999999999989 7 1.0000000000000002 8 1.0000000000000002 9 1 10 0.99999999999999989
		 11 1 12 1 13 0.99999999999999956 14 1 15 1 16 1.0000000000000004 17 0.99999999999999989
		 18 0.99999999999999989 19 1 20 0.99999999999999989 21 0.99999999999999967 22 0.99999999999999978
		 23 1.0000000000000002 24 0.99999999999999989 25 1 26 1 27 0.99999999999999967 28 1
		 29 0.99999999999999989 30 1.0000000000000004 31 1 32 1 33 1 34 1.0000000000000002
		 35 1 36 0.99999999999999989 37 1 38 1.0000000000000004 39 0.99999999999999989 40 1
		 41 1 42 1 43 1.0000000000000004 44 1.0000000000000002 45 0.99999999999999989 46 0.99999999999999956
		 47 0.99999999999999978 48 1 49 0.99999999999999989 50 0.99999999999999967 51 1.0000000000000004
		 52 1.0000000000000002 53 1.0000000000000004 54 0.99999999999999933 55 1 56 1 57 1.0000000000000002
		 58 0.99999999999999956 59 0.99999999999999978 60 0.99999999999999967 61 0.99999999999999989
		 62 0.99999999999999956 63 0.99999999999999956 64 0.99999999999999978 65 1.0000000000000002
		 66 0.99999999999999967 67 0.99999999999999989 68 0.99999999999999978 69 0.99999999999999956
		 70 0.99999999999999989 71 0.99999999999999989 72 0.99999999999999967 73 0.99999999999999989
		 74 1 75 1.0000000000000002 76 1 77 1.0000000000000002 78 0.99999999999999989 79 0.99999999999999956
		 80 1 81 1.0000000000000002 82 1.0000000000000002 83 0.99999999999999978 84 0.99999999999999933
		 85 1.0000000000000002 86 0.99999999999999944 87 0.99999999999999989 88 0.99999999999999967
		 89 1.0000000000000004 90 0.99999999999999989 91 0.99999999999999922 92 0.99999999999999989
		 93 0.99999999999999956 94 0.99999999999999967 95 1 96 0.99999999999999989 97 0.99999999999999978
		 98 1 99 1.0000000000000002 100 0.99999999999999989 101 0.99999999999999978 102 0.99999999999999978
		 103 0.99999999999999989 104 0.99999999999999956 105 0.99999999999999956 106 1 107 1.0000000000000004
		 108 1.0000000000000007 109 0.99999999999999978 110 1.0000000000000007 111 1 112 0.99999999999999989
		 113 1 114 0.99999999999999978 115 0.99999999999999978 116 0.99999999999999978 117 1
		 118 1.0000000000000004 119 0.99999999999999967 120 0.99999999999999978 121 0.99999999999999967
		 122 0.99999999999999956 123 1.0000000000000004 124 1.0000000000000002 125 1 126 1.0000000000000004
		 127 1 128 0.99999999999999989 129 0.99999999999999956 130 1 131 1.0000000000000002
		 132 0.99999999999999956 133 0.99999999999999989 134 0.99999999999999978 135 1 136 0.99999999999999989;
createNode animCurveTU -n "locator20_scaleY";
	rename -uid "BAB76048-4BF0-DB0C-5A47-538E0762C661";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999944 1 0.99999999999999967
		 2 1 3 1 4 1 5 0.99999999999999989 6 1 7 1.0000000000000002 8 1 9 1 10 0.99999999999999978
		 11 0.99999999999999989 12 1 13 1 14 0.99999999999999989 15 1.0000000000000002 16 1.0000000000000004
		 17 0.99999999999999978 18 1 19 1.0000000000000004 20 1 21 0.99999999999999944 22 0.99999999999999978
		 23 1 24 0.99999999999999989 25 1 26 1 27 0.99999999999999967 28 1.0000000000000002
		 29 0.99999999999999989 30 1 31 0.99999999999999978 32 1 33 0.99999999999999989 34 1
		 35 0.99999999999999978 36 1 37 1.0000000000000002 38 0.99999999999999989 39 1.0000000000000004
		 40 0.99999999999999978 41 1.0000000000000002 42 0.99999999999999989 43 1.0000000000000002
		 44 1 45 1.0000000000000004 46 0.99999999999999989 47 1 48 0.99999999999999989 49 1
		 50 0.99999999999999967 51 0.99999999999999989 52 0.99999999999999989 53 1.0000000000000002
		 54 0.99999999999999989 55 0.99999999999999967 56 1 57 1 58 0.99999999999999989 59 1.0000000000000002
		 60 0.99999999999999978 61 0.99999999999999978 62 0.99999999999999989 63 1 64 0.99999999999999989
		 65 1.0000000000000002 66 0.99999999999999967 67 1 68 0.99999999999999967 69 1.0000000000000002
		 70 0.99999999999999956 71 1.0000000000000002 72 1 73 1 74 1.0000000000000004 75 1.0000000000000002
		 76 0.99999999999999978 77 1.0000000000000002 78 0.99999999999999944 79 1 80 1 81 0.99999999999999989
		 82 0.99999999999999989 83 0.99999999999999978 84 0.99999999999999989 85 1 86 0.99999999999999978
		 87 1 88 0.99999999999999989 89 1 90 0.99999999999999989 91 0.99999999999999978 92 1
		 93 1 94 1 95 1.0000000000000002 96 0.99999999999999989 97 1 98 1.0000000000000002
		 99 0.99999999999999989 100 1 101 1.0000000000000002 102 1 103 1 104 0.99999999999999956
		 105 0.99999999999999989 106 1 107 1 108 1.0000000000000002 109 0.99999999999999989
		 110 1.0000000000000004 111 1.0000000000000002 112 1 113 1 114 1.0000000000000002
		 115 0.99999999999999967 116 1 117 0.99999999999999978 118 1 119 1 120 1 121 1.0000000000000002
		 122 0.99999999999999978 123 1 124 1 125 1 126 1.0000000000000002 127 1.0000000000000002
		 128 0.99999999999999978 129 0.99999999999999956 130 1 131 0.99999999999999978 132 1
		 133 0.99999999999999989 134 1.0000000000000002 135 0.99999999999999956 136 0.99999999999999989;
createNode animCurveTU -n "locator20_scaleZ";
	rename -uid "D20DAF83-45E6-0024-CF5D-C3B3F6AB16F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999933 1 0.99999999999999956
		 2 0.99999999999999989 3 1.0000000000000002 4 1 5 0.99999999999999967 6 1.0000000000000002
		 7 1 8 1 9 1 10 0.99999999999999978 11 0.99999999999999989 12 1 13 0.99999999999999978
		 14 1.0000000000000002 15 1 16 1 17 0.99999999999999989 18 0.99999999999999967 19 1
		 20 0.99999999999999978 21 0.99999999999999967 22 0.99999999999999978 23 1 24 0.99999999999999989
		 25 1 26 0.99999999999999989 27 0.99999999999999967 28 0.99999999999999989 29 0.99999999999999978
		 30 1.0000000000000002 31 0.99999999999999978 32 1 33 1 34 1 35 1 36 0.99999999999999956
		 37 1 38 1.0000000000000002 39 0.99999999999999978 40 1 41 1.0000000000000002 42 0.99999999999999978
		 43 1.0000000000000002 44 0.99999999999999978 45 1 46 0.99999999999999989 47 1.0000000000000002
		 48 1.0000000000000002 49 0.99999999999999956 50 0.99999999999999956 51 1.0000000000000002
		 52 1.0000000000000002 53 1.0000000000000002 54 0.99999999999999944 55 0.99999999999999944
		 56 1.0000000000000002 57 1 58 0.99999999999999933 59 0.99999999999999978 60 0.99999999999999989
		 61 0.99999999999999967 62 0.99999999999999978 63 1 64 1 65 1.0000000000000002 66 0.99999999999999956
		 67 1.0000000000000002 68 0.99999999999999989 69 1.0000000000000002 70 0.99999999999999967
		 71 1 72 0.99999999999999978 73 1 74 0.99999999999999989 75 1.0000000000000002 76 1
		 77 1 78 0.99999999999999978 79 1 80 0.99999999999999989 81 0.99999999999999989 82 1
		 83 1 84 0.99999999999999956 85 0.99999999999999978 86 1 87 0.99999999999999967 88 0.99999999999999967
		 89 1.0000000000000002 90 0.99999999999999989 91 0.99999999999999978 92 1 93 0.99999999999999956
		 94 0.99999999999999967 95 1 96 0.99999999999999944 97 1 98 0.99999999999999978 99 1.0000000000000007
		 100 0.99999999999999956 101 1 102 1 103 1.0000000000000002 104 0.99999999999999967
		 105 1.0000000000000002 106 1.0000000000000002 107 1 108 1.0000000000000002 109 0.99999999999999978
		 110 1.0000000000000007 111 1.0000000000000004 112 0.99999999999999967 113 1.0000000000000002
		 114 0.99999999999999989 115 0.99999999999999967 116 0.99999999999999967 117 1 118 1.0000000000000004
		 119 0.99999999999999967 120 0.99999999999999967 121 0.99999999999999989 122 0.99999999999999944
		 123 1 124 1.0000000000000002 125 0.99999999999999989 126 1.0000000000000004 127 1.0000000000000004
		 128 0.99999999999999967 129 0.99999999999999944 130 0.99999999999999967 131 0.99999999999999989
		 132 0.99999999999999978 133 0.99999999999999967 134 0.99999999999999989 135 0.99999999999999944
		 136 1.0000000000000002;
createNode animCurveTU -n "locator21_visibility";
	rename -uid "E22FD138-44A1-1332-E86A-15817517C431";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1
		 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1
		 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1
		 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTL -n "locator21_translateX";
	rename -uid "E18213C2-4287-7780-9672-828AE5D1655D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 4.5704464912414551 1 4.5704464912414551
		 2 4.570446491241456 3 4.5704464912414551 4 4.5704464912414551 5 4.5704464912414542
		 6 4.5704464912414551 7 4.5704464912414586 8 4.5704464912414551 9 4.5704464912414551
		 10 4.5704464912414569 11 4.5704464912414542 12 4.5704464912414569 13 4.5704464912414569
		 14 4.5704464912414569 15 4.5704464912414569 16 4.570446491241456 17 4.5704464912414551
		 18 4.5704464912414542 19 4.5704464912414551 20 4.5704464912414533 21 4.5704464912414569
		 22 4.5704464912414604 23 4.5704464912414551 24 4.5704464912414551 25 4.5704464912414551
		 26 4.5704464912414586 27 4.5704464912414551 28 4.5704464912414569 29 4.5704464912414569
		 30 4.5704464912414551 31 4.5704464912414569 32 4.570446491241456 33 4.5704464912414551
		 34 4.570446491241456 35 4.5704464912414551 36 4.570446491241448 37 4.5704464912414693
		 38 4.5704464912414267 39 4.5704464912414693 40 4.5704464912414267 41 4.5704464912414551
		 42 4.5704464912414409 43 4.5704464912414409 44 4.5704464912414551 45 4.5704464912414693
		 46 4.5704464912414409 47 4.5704464912414551 48 4.5704464912414267 49 4.5704464912414267
		 50 4.5704464912414551 51 4.5704464912414693 52 4.5704464912414409 53 4.5704464912414693
		 54 4.5704464912414551 55 4.5704464912414551 56 4.5704464912414622 57 4.5704464912414622
		 58 4.5704464912414586 59 4.5704464912414569 60 4.57044649124144 61 4.5704464912414586
		 62 4.5704464912414409 63 4.5704464912414622 64 4.5704464912414693 65 4.5704464912414409
		 66 4.5704464912414835 67 4.5704464912414409 68 4.5704464912414267 69 4.5704464912414551
		 70 4.5704464912414551 71 4.5704464912414551 72 4.5704464912414267 73 4.5704464912414409
		 74 4.5704464912414551 75 4.5704464912414551 76 4.5704464912414693 77 4.5704464912414693
		 78 4.5704464912414551 79 4.5704464912414551 80 4.5704464912414551 81 4.5704464912414409
		 82 4.5704464912414409 83 4.5704464912414551 84 4.5704464912414551 85 4.5704464912414551
		 86 4.5704464912414409 87 4.5704464912414409 88 4.570446491241448 89 4.570446491241448
		 90 4.5704464912414551 91 4.570446491241448 92 4.5704464912414693 93 4.5704464912414409
		 94 4.570446491241448 95 4.5704464912414338 96 4.5704464912414409 97 4.5704464912414409
		 98 4.5704464912414551 99 4.5704464912414622 100 4.5704464912414693 101 4.570446491241448
		 102 4.5704464912414409 103 4.5704464912414409 104 4.5704464912414409 105 4.570446491241448
		 106 4.5704464912414551 107 4.5704464912414409 108 4.5704464912414409 109 4.5704464912414693
		 110 4.5704464912414835 111 4.5704464912414409 112 4.5704464912414551 113 4.5704464912414693
		 114 4.5704464912414551 115 4.5704464912414551 116 4.5704464912414409 117 4.5704464912414409
		 118 4.5704464912414409 119 4.5704464912414551 120 4.5704464912414409 121 4.5704464912414551
		 122 4.5704464912414267 123 4.5704464912414551 124 4.5704464912414409 125 4.5704464912414409
		 126 4.5704464912414693 127 4.5704464912414267 128 4.5704464912414693 129 4.5704464912414693
		 130 4.5704464912414835 131 4.5704464912414409 132 4.5704464912414551 133 4.5704464912414693
		 134 4.5704464912414693 135 4.5704464912414551 136 4.5704464912414551;
createNode animCurveTL -n "locator21_translateY";
	rename -uid "E1DEBA7C-4CA6-4C10-3868-BB9ED548008B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 10.945984840393066 1 10.945984840393052
		 2 10.945984840393081 3 10.945984840393066 4 10.945984840393066 5 10.945984840393066
		 6 10.945984840393095 7 10.94598484039301 8 10.945984840393066 9 10.945984840393066
		 10 10.945984840393066 11 10.945984840393066 12 10.945984840393066 13 10.945984840393038
		 14 10.945984840393095 15 10.945984840393095 16 10.945984840393066 17 10.945984840393066
		 18 10.945984840393066 19 10.945984840393038 20 10.945984840393066 21 10.945984840393095
		 22 10.945984840393038 23 10.945984840393066 24 10.945984840393095 25 10.945984840393066
		 26 10.945984840393095 27 10.945984840393066 28 10.945984840393066 29 10.945984840393038
		 30 10.945984840393123 31 10.945984840393095 32 10.945984840393095 33 10.945984840393095
		 34 10.945984840393095 35 10.945984840393066 36 10.945984840393066 37 10.945984840393038
		 38 10.945984840393038 39 10.945984840393095 40 10.945984840393066 41 10.945984840393095
		 42 10.945984840393095 43 10.945984840393066 44 10.945984840393066 45 10.945984840393052
		 46 10.945984840393066 47 10.945984840393066 48 10.945984840393066 49 10.945984840393066
		 50 10.945984840393052 51 10.945984840393038 52 10.945984840393109 53 10.945984840393038
		 54 10.945984840393038 55 10.945984840393038 56 10.945984840393038 57 10.945984840393066
		 58 10.945984840393066 59 10.945984840393052 60 10.945984840393081 61 10.945984840393081
		 62 10.945984840393063 63 10.945984840393059 64 10.945984840393081 65 10.945984840393038
		 66 10.945984840393095 67 10.945984840393081 68 10.945984840393066 69 10.945984840393081
		 70 10.945984840393081 71 10.945984840393081 72 10.945984840393081 73 10.945984840393088
		 74 10.945984840393059 75 10.945984840393095 76 10.945984840393059 77 10.945984840393059
		 78 10.945984840393081 79 10.945984840393066 80 10.945984840393024 81 10.945984840393052
		 82 10.945984840393081 83 10.945984840393052 84 10.945984840393123 85 10.945984840393066
		 86 10.945984840393066 87 10.945984840393066 88 10.945984840393095 89 10.945984840393066
		 90 10.945984840393038 91 10.945984840393038 92 10.945984840393066 93 10.945984840393066
		 94 10.94598484039301 95 10.945984840393095 96 10.945984840393066 97 10.945984840393052
		 98 10.945984840393066 99 10.945984840393052 100 10.945984840393052 101 10.945984840393038
		 102 10.945984840393066 103 10.945984840393038 104 10.945984840393095 105 10.945984840393066
		 106 10.945984840393066 107 10.945984840393052 108 10.945984840393038 109 10.945984840393052
		 110 10.945984840393052 111 10.945984840393066 112 10.945984840393038 113 10.945984840393038
		 114 10.945984840393095 115 10.945984840393066 116 10.94598484039301 117 10.945984840393066
		 118 10.945984840393095 119 10.945984840393095 120 10.945984840393066 121 10.94598484039301
		 122 10.945984840393066 123 10.945984840393038 124 10.945984840393095 125 10.945984840393066
		 126 10.945984840393066 127 10.945984840393066 128 10.945984840393066 129 10.945984840393038
		 130 10.945984840393066 131 10.945984840393038 132 10.945984840393052 133 10.945984840393052
		 134 10.945984840393066 135 10.945984840393066 136 10.945984840393052;
createNode animCurveTL -n "locator21_translateZ";
	rename -uid "AB7BC535-4BAB-2D96-C43D-5A82067D5ED0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -2.627988100051887 1 -2.6279881000518799
		 2 -2.6279881000518728 3 -2.6279881000518621 4 -2.6279881000518834 5 -2.6279881000518799
		 6 -2.6279881000518852 7 -2.6279881000518817 8 -2.627988100051883 9 -2.6279881000518897
		 10 -2.6279881000518852 11 -2.6279881000518834 12 -2.627988100051887 13 -2.627988100051887
		 14 -2.6279881000518763 15 -2.6279881000518728 16 -2.6279881000518763 17 -2.627988100051887
		 18 -2.6279881000518728 19 -2.6279881000518728 20 -2.6279881000518799 21 -2.627988100051887
		 22 -2.6279881000518586 23 -2.6279881000518941 24 -2.6279881000518799 25 -2.6279881000518799
		 26 -2.6279881000518799 27 -2.6279881000518799 28 -2.6279881000518799 29 -2.6279881000518799
		 30 -2.6279881000519083 31 -2.6279881000518799 32 -2.6279881000518799 33 -2.6279881000518941
		 34 -2.6279881000518799 35 -2.6279881000518941 36 -2.6279881000518941 37 -2.6279881000518799
		 38 -2.6279881000519225 39 -2.6279881000518657 40 -2.627988100051887 41 -2.6279881000518657
		 42 -2.6279881000518799 43 -2.6279881000518941 44 -2.6279881000518515 45 -2.6279881000518799
		 46 -2.6279881000518799 47 -2.6279881000518515 48 -2.6279881000519083 49 -2.6279881000518515
		 50 -2.6279881000519083 51 -2.6279881000519083 52 -2.627988100051823 53 -2.6279881000519083
		 54 -2.6279881000518799 55 -2.6279881000518515 56 -2.6279881000518515 57 -2.6279881000518799
		 58 -2.6279881000519083 59 -2.6279881000518515 60 -2.6279881000518515 61 -2.6279881000519083
		 62 -2.6279881000519083 63 -2.6279881000519083 64 -2.6279881000518799 65 -2.6279881000518799
		 66 -2.6279881000518799 67 -2.6279881000519083 68 -2.6279881000519083 69 -2.6279881000518799
		 70 -2.6279881000518799 71 -2.6279881000518799 72 -2.6279881000519083 73 -2.6279881000518799
		 74 -2.6279881000518799 75 -2.6279881000519083 76 -2.6279881000518799 77 -2.6279881000519367
		 78 -2.6279881000518515 79 -2.6279881000518515 80 -2.6279881000518799 81 -2.6279881000518799
		 82 -2.6279881000519367 83 -2.6279881000518515 84 -2.6279881000519367 85 -2.6279881000519083
		 86 -2.6279881000518799 87 -2.6279881000518515 88 -2.6279881000518799 89 -2.6279881000518515
		 90 -2.6279881000519083 91 -2.6279881000518515 92 -2.6279881000518799 93 -2.6279881000518799
		 94 -2.6279881000518799 95 -2.627988100051823 96 -2.6279881000519083 97 -2.6279881000518515
		 98 -2.6279881000518799 99 -2.6279881000518799 100 -2.6279881000518515 101 -2.6279881000519083
		 102 -2.6279881000519083 103 -2.6279881000519083 104 -2.6279881000518799 105 -2.6279881000518799
		 106 -2.6279881000518515 107 -2.6279881000518515 108 -2.6279881000518515 109 -2.6279881000518799
		 110 -2.6279881000518515 111 -2.6279881000518799 112 -2.6279881000518515 113 -2.6279881000519367
		 114 -2.6279881000518515 115 -2.6279881000518799 116 -2.6279881000518799 117 -2.6279881000519083
		 118 -2.6279881000518799 119 -2.6279881000519083 120 -2.6279881000518799 121 -2.6279881000518799
		 122 -2.6279881000519083 123 -2.6279881000518799 124 -2.6279881000518799 125 -2.6279881000519083
		 126 -2.6279881000518799 127 -2.6279881000518799 128 -2.6279881000518799 129 -2.6279881000519651
		 130 -2.6279881000518799 131 -2.6279881000519083 132 -2.6279881000518799 133 -2.6279881000518799
		 134 -2.6279881000518799 135 -2.627988100051823 136 -2.6279881000518799;
createNode animCurveTA -n "locator21_rotateX";
	rename -uid "0F04DCA0-4EB7-D214-922D-1F95492E91EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.14892885088920602 1 0.096683681011200021
		 2 -0.025879995897412317 3 -0.07636912167072292 4 -0.025733903050422634 5 -0.024090871214866645
		 6 -0.13633207976818085 7 -0.23557502031326299 8 -0.23641215264797213 9 -0.17508858442306521
		 10 -0.056276585906743982 11 -0.017976902425289161 12 -0.076581567525863661 13 -0.1494311839342117
		 14 -0.15270368754863742 15 -0.070595689117908506 16 0.00027301860973240826 17 0.046927481889724738
		 18 0.17521241307258609 19 0.27554124593734741 20 0.24185989797115323 21 0.16182951629161829
		 22 0.051229640841484007 23 -0.0040773442015051981 24 0.028479818254709258 25 -0.0027767447754740728
		 26 -0.068755805492401054 27 -0.12096095830202097 28 -0.17322017252445224 29 -0.12051480263471603
		 30 -0.002157305134460304 31 0.054895836859941496 32 0.011084131896495824 33 -0.10759794712066649
		 34 -0.22462080419063571 35 -0.59697049856185902 36 -1.2898229360580449 37 -1.6789966821670534
		 38 -1.9271036386489873 39 -2.7843320369720463 40 -3.5438094139099117 41 -3.5705928802490234
		 42 -3.5140326023101807 43 -1.8070569038391107 44 0.17741596698760992 45 0.9377450942993163
		 46 1.0713800191879275 47 0.97829812765121471 48 0.86781698465347301 49 0.89051693677902211
		 50 1.0619763135910034 51 0.99241405725479148 52 0.80443280935287487 53 0.71269530057907116
		 54 0.73955225944519054 55 0.81391853094100952 56 0.84479117393493652 57 0.89702612161636364
		 58 0.89441269636154164 59 0.80737954378128063 60 0.73070096969604481 61 0.71158164739608765
		 62 0.73947244882583596 63 0.80944800376892101 64 0.87789750099182118 65 0.83571529388427723
		 66 0.87564629316329978 67 1.0237928628921511 68 1.1099624633789063 69 1.0905662775039673
		 70 0.90935689210891746 71 0.69257545471191406 72 0.57194507122039806 73 0.59356546401977539
		 74 0.67082089185714733 75 0.68400126695632957 76 0.62308096885681152 77 0.54929244518280029
		 78 0.45820039510726929 79 0.35899388790130621 80 0.25134763121604919 81 0.11180017143487925
		 82 0.038720831274986267 83 0.067612387239933069 84 0.047629579901695245 85 -0.02501842007040983
		 86 -0.044561561197042437 87 0.0065122949890792205 88 0.020864699035882957 89 0.0039365845732390837
		 90 -0.025853117927908911 91 -0.10387904942035683 92 -0.18058359622955328 93 -0.23341676592826843
		 94 -0.31259849667549128 95 -0.36603942513465887 96 -0.36611992120742798 97 -0.39881584048271185
		 98 -0.44449731707572931 99 -0.48302865028381353 100 -0.52024686336517334 101 -0.52693319320678722
		 102 -0.55525916814804088 103 -0.64953714609146118 104 -0.70406013727188133 105 -0.68556016683578491
		 106 -0.62568140029907227 107 -0.59446573257446289 108 -0.58662742376327492 109 -0.56249016523361206
		 110 -0.55160444974899314 111 -0.5545526146888734 112 -0.52736258506774891 113 -0.46917149424552912
		 114 -0.38583597540855408 115 -0.32412925362586992 116 -0.28381100296974182 117 -0.21656821668148038
		 118 -0.15967033803462985 119 -0.2009170800447464 120 -0.41693007946014399 121 -0.65028190612792969
		 122 -0.68672752380371083 123 -0.69503706693649314 124 -0.72763073444366466 125 -0.72933197021484408
		 126 -0.7488618493080138 127 -0.83126640319824241 128 -0.87290960550308216 129 -0.82406347990036011
		 130 -0.77513283491134632 131 -0.72265690565109264 132 -0.64151769876480091 133 -0.59631896018981956
		 134 -0.59130823612213124 135 -0.56079590320587169 136 -0.55540126562118541;
createNode animCurveTA -n "locator21_rotateY";
	rename -uid "4310E94B-4813-88CE-54DF-94A2DF4AC951";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 2.642074823379517 1 2.9226088523864751
		 2 3.5259237289428715 3 3.7567007541656494 4 3.5256378650665288 5 3.5171051025390629
		 6 4.003812313079834 7 4.3886189460754412 8 4.3858656883239755 9 4.1478524208068848
		 10 3.6528704166412349 11 3.4841573238372812 12 3.7367649078369132 13 4.0355715751647949
		 14 4.053046226501464 15 3.7173922061920175 16 3.4025945663452148 17 3.1803784370422368
		 18 2.5231623649597168 19 1.9505169391632076 20 2.1313939094543461 21 2.5671439170837402
		 22 3.1499323844909672 23 3.4235813617706299 24 3.2606415748596187 25 3.4177153110504159
		 26 3.7391700744628902 27 3.9675254821777335 28 4.1773986816406259 29 3.9549233913421626
		 30 3.414284467697144 31 3.1328876018524174 32 3.349951267242433 33 3.9029860496521001
		 34 4.3902716636657715 35 5.8094100952148438 36 7.9663233757019052 37 8.9572782516479474
		 38 9.5572748184204119 39 11.251566886901855 40 12.420833587646483 41 12.138414382934574
		 42 11.490226745605472 43 8.0465059280395472 44 2.8150169849395752 45 -0.75757616758346569
		 46 -2.831454753875732 47 -3.2017934322357169 48 -2.8245244026184086 49 -3.0918986797332759
		 50 -2.5816698074340816 51 -0.74528837203979481 52 0.24863104522228241 53 0.5360538363456725
		 54 0.18430759012699124 55 -0.63950580358505238 56 -1.2253268957138062 57 -1.9749189615249638
		 58 -2.4167318344116206 59 -2.2126498222351079 60 -1.6668820381164549 61 -1.3893404006958001
		 62 -1.4252510070800781 63 -1.6209305524826054 64 -2.3482718467712402 65 -2.5691184997558594
		 66 -2.7562606334686284 67 -3.8407001495361324 68 -4.4851326942443839 69 -3.7218375205993643
		 70 -2.2623388767242436 71 -1.1802691221237183 72 -0.68000322580337536 73 -1.0721646547317505
		 74 -1.6505130529403684 75 -1.3420791625976563 76 -0.57273328304290771 77 0.18080015480518333
		 78 0.96822494268417347 79 1.634837865829468 80 2.243385791778564 81 2.9241318702697749
		 82 3.2403080463409428 83 3.1068024635314946 84 3.1942620277404781 85 3.5113320350646982
		 86 3.5963196754455562 87 3.3749046325683594 88 3.3103642463684082 89 3.3863346576690665
		 90 3.5168886184692387 91 3.8409328460693377 92 4.1456055641174316 93 4.3479537963867196
		 94 4.6344137191772452 95 4.8227930068969718 96 4.8288664817810067 97 4.9443511962890625
		 98 5.1038308143615723 99 5.2463827133178711 100 5.3880314826965323 101 5.414159297943117
		 102 5.5064368247985831 103 5.8335638046264648 104 6.0332074165344247 105 6.029283046722413
		 106 5.9604673385620144 107 5.9339895248413095 108 5.8936238288879395 109 5.8225293159484872
		 110 5.8281660079956064 111 5.87487840652466 112 5.7928452491760263 113 5.5863866806030282
		 114 5.2520341873168928 115 4.9820489883422869 116 4.7956128120422354 117 4.4810075759887704
		 118 4.2094626426696795 119 4.4016637802124032 120 5.3149080276489258 121 6.1302957534790048
		 122 6.208765983581543 123 6.2314939498901385 124 6.3629579544067401 125 6.3744072914123544
		 126 6.4142746925353995 127 6.6250243186950701 128 6.7166552543640128 129 6.5672678947448748
		 130 6.4238376617431632 131 6.263944625854494 132 6.0103621482849112 133 5.873042106628418
		 134 5.8631787300109854 135 5.7704491615295419 136 5.7591152191162109;
createNode animCurveTA -n "locator21_rotateZ";
	rename -uid "19FF8A35-4EC1-677D-83F5-72B9FB29AE40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -6.7435851097106951 1 -6.869213581085206
		 2 -7.1279158592224139 3 -7.2309808731079084 4 -7.1125535964965829 5 -7.1444792747497559
		 6 -7.4792842864990208 7 -7.754263401031495 8 -7.7888894081115749 9 -7.6645116806030273
		 10 -7.4488329887390128 11 -7.39986228942871 12 -7.5424556732177699 13 -7.6922507286071777
		 14 -7.662193775177002 15 -7.4304699897766096 16 -7.2164201736450204 17 -7.0800457000732413
		 18 -6.8232655525207511 19 -6.6050963401794442 20 -6.6166477203369132 21 -6.6954607963562012
		 22 -6.8917255401611337 23 -6.9747323989868173 24 -6.8273797035217259 25 -6.8169994354248065
		 26 -6.9668402671813965 27 -7.1884727478027317 28 -7.4040751457214355 29 -7.2829780578613308
		 30 -6.9882116317749023 31 -6.9094347953796396 32 -6.9796862602233904 33 -7.2112207412719727
		 34 -7.4920368194580078 35 -7.9656295776367188 36 -8.7581596374511737 37 -9.202156066894533
		 38 -9.4462518692016619 39 -10.364441871643065 40 -11.183469772338869 41 -11.505331039428711
		 42 -12.021737098693848 43 -11.057464599609371 44 -9.142824172973631 45 -7.4327845573425302
		 46 -6.2000675201416025 47 -5.6442837715148926 48 -5.4348764419555673 49 -5.3833689689636222
		 50 -6.3298215866088849 51 -7.749410152435301 52 -8.1054935455322266 53 -7.9592247009277353
		 54 -7.5308518409728986 55 -6.8780517578125 56 -6.4424419403076163 57 -6.0774030685424805
		 58 -5.7712311744689933 59 -5.536388874053956 60 -5.5424017906188956 61 -5.6442322731018049
		 62 -5.7545065879821768 63 -5.942589759826661 64 -5.7464218139648438 65 -5.4474854469299299
		 66 -5.5012707710266131 67 -5.4885921478271502 68 -5.4787726402282706 69 -5.7645769119262686
		 70 -5.9312062263488787 71 -5.7056145668029785 72 -5.4439444541931161 73 -5.2688140869140634
		 74 -5.273289680480957 75 -5.5420989990234384 76 -5.8363213539123553 77 -6.1576647758483878
		 78 -6.570521354675293 79 -6.9146313667297354 80 -7.2306156158447257 81 -7.6097636222839373
		 82 -7.6953544616699228 83 -7.4855093955993626 84 -7.4773931503295907 85 -7.6041388511657733
		 86 -7.5762391090393066 87 -7.4224705696105939 88 -7.3829808235168448 89 -7.4158267974853516
		 90 -7.5116839408874503 91 -7.7169756889343279 92 -7.8498339653015137 93 -7.9365615844726554
		 94 -8.0916690826416016 95 -8.1815261840820295 96 -8.1580295562744141 97 -8.2029247283935565
		 98 -8.2620124816894531 99 -8.2781677246093786 100 -8.2799339294433594 101 -8.2782354354858398
		 102 -8.3230609893798828 103 -8.3979959487915039 104 -8.4091405868530291 105 -8.2597856521606463
		 106 -7.888796329498291 107 -7.6663336753845233 108 -7.6810927391052219 109 -7.6109719276428214
		 110 -7.4961199760437003 111 -7.4253153800964373 112 -7.3405303955078107 113 -7.2064299583435067
		 114 -7.0615277290344229 115 -6.9817814826965368 116 -6.9471187591552743 117 -6.879199504852294
		 118 -6.8117599487304688 119 -6.8858351707458505 120 -7.2783246040344203 121 -7.7486910820007333
		 122 -7.8928451538085938 123 -7.9150147438049334 124 -7.9181418418884268 125 -7.9096984863281277
		 126 -7.9833202362060538 127 -8.1951532363891602 128 -8.3180961608886719 129 -8.2495336532592791
		 130 -8.1621494293212873 131 -8.0706977844238299 132 -7.9207305908203107 133 -7.8149971961975115
		 134 -7.7906107902526864 135 -7.7109951972961444 136 -7.6847338676452646;
createNode animCurveTU -n "locator21_scaleX";
	rename -uid "6BB8347F-4E93-83D4-201B-0AB50DF06324";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999978 1 0.99999999999999989
		 2 0.99999999999999989 3 1 4 0.99999999999999989 5 0.99999999999999978 6 1 7 1 8 1
		 9 0.99999999999999989 10 1 11 1 12 1.0000000000000002 13 1 14 0.99999999999999989
		 15 1.0000000000000004 16 0.99999999999999989 17 0.99999999999999989 18 0.99999999999999989
		 19 1 20 0.99999999999999967 21 1 22 0.99999999999999989 23 0.99999999999999989 24 0.99999999999999978
		 25 0.99999999999999967 26 1 27 0.99999999999999978 28 1 29 0.99999999999999989 30 1
		 31 0.99999999999999978 32 1 33 1.0000000000000002 34 1.0000000000000002 35 0.99999999999999989
		 36 0.99999999999999978 37 0.99999999999999989 38 0.99999999999999989 39 0.99999999999999978
		 40 1 41 1 42 0.99999999999999978 43 1.0000000000000002 44 1 45 0.99999999999999978
		 46 0.99999999999999989 47 0.99999999999999989 48 1 49 1 50 0.99999999999999956 51 0.99999999999999989
		 52 1 53 0.99999999999999989 54 1 55 1.0000000000000002 56 0.99999999999999956 57 1.0000000000000004
		 58 1 59 1.0000000000000004 60 1.0000000000000002 61 0.99999999999999967 62 0.99999999999999967
		 63 0.99999999999999978 64 0.99999999999999978 65 0.99999999999999989 66 0.99999999999999967
		 67 1.0000000000000002 68 0.99999999999999967 69 1.0000000000000002 70 1 71 0.99999999999999989
		 72 0.99999999999999989 73 1.0000000000000004 74 1.0000000000000004 75 1.0000000000000004
		 76 1 77 1.0000000000000002 78 0.99999999999999933 79 0.99999999999999967 80 0.99999999999999989
		 81 1 82 1.0000000000000002 83 1.0000000000000002 84 0.99999999999999989 85 1.0000000000000002
		 86 0.99999999999999967 87 1 88 1 89 1.0000000000000004 90 0.99999999999999989 91 0.99999999999999956
		 92 1.0000000000000002 93 0.99999999999999967 94 0.99999999999999978 95 1.0000000000000002
		 96 0.99999999999999989 97 0.99999999999999978 98 1 99 1 100 0.99999999999999978 101 0.99999999999999967
		 102 0.99999999999999989 103 0.99999999999999967 104 0.99999999999999956 105 0.99999999999999944
		 106 0.99999999999999967 107 1 108 1.0000000000000004 109 1.0000000000000007 110 1
		 111 0.99999999999999956 112 1.0000000000000004 113 0.99999999999999989 114 0.99999999999999967
		 115 0.99999999999999956 116 0.99999999999999956 117 1 118 0.99999999999999956 119 1
		 120 0.99999999999999967 121 1 122 1 123 0.99999999999999989 124 0.99999999999999989
		 125 1 126 0.99999999999999978 127 1 128 0.99999999999999978 129 0.99999999999999956
		 130 0.99999999999999989 131 0.99999999999999944 132 1 133 0.99999999999999956 134 0.99999999999999978
		 135 0.99999999999999933 136 1.0000000000000002;
createNode animCurveTU -n "locator21_scaleY";
	rename -uid "EBBA92B4-4F85-83A7-CB4D-FD80F0959929";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1.0000000000000002 1 1 2 1 3 1.0000000000000002
		 4 1 5 0.99999999999999956 6 1 7 1.0000000000000002 8 1 9 1 10 1 11 1 12 0.99999999999999978
		 13 0.99999999999999989 14 0.99999999999999989 15 1.0000000000000002 16 1 17 0.99999999999999978
		 18 1 19 0.99999999999999956 20 0.99999999999999978 21 0.99999999999999989 22 0.99999999999999978
		 23 1 24 1 25 0.99999999999999956 26 0.99999999999999978 27 0.99999999999999989 28 1
		 29 0.99999999999999967 30 1.0000000000000002 31 1.0000000000000002 32 1 33 1 34 1
		 35 0.99999999999999989 36 0.99999999999999989 37 0.99999999999999989 38 1 39 1.0000000000000002
		 40 0.99999999999999989 41 1.0000000000000002 42 1.0000000000000002 43 1 44 1.0000000000000002
		 45 0.99999999999999967 46 1 47 0.99999999999999967 48 1 49 1.0000000000000002 50 1
		 51 1 52 1 53 0.99999999999999989 54 1 55 0.99999999999999989 56 0.99999999999999978
		 57 0.99999999999999978 58 1 59 0.99999999999999989 60 0.99999999999999967 61 1 62 0.99999999999999978
		 63 1 64 0.99999999999999989 65 1 66 0.99999999999999978 67 1 68 0.99999999999999956
		 69 1 70 1.0000000000000002 71 0.99999999999999989 72 1.0000000000000002 73 1.0000000000000002
		 74 1 75 1.0000000000000002 76 0.99999999999999978 77 1.0000000000000002 78 0.99999999999999978
		 79 1 80 0.99999999999999978 81 1 82 1 83 0.99999999999999989 84 1 85 1 86 1 87 1
		 88 1.0000000000000004 89 1 90 0.99999999999999978 91 0.99999999999999978 92 1.0000000000000002
		 93 0.99999999999999989 94 0.99999999999999978 95 1 96 0.99999999999999989 97 0.99999999999999978
		 98 1 99 0.99999999999999989 100 1 101 0.99999999999999989 102 1 103 0.99999999999999978
		 104 1 105 0.99999999999999989 106 1.0000000000000002 107 0.99999999999999989 108 0.99999999999999967
		 109 1 110 0.99999999999999989 111 0.99999999999999989 112 0.99999999999999978 113 0.99999999999999978
		 114 1.0000000000000002 115 0.99999999999999989 116 0.99999999999999956 117 0.99999999999999989
		 118 0.99999999999999978 119 1 120 0.99999999999999989 121 0.99999999999999989 122 0.99999999999999989
		 123 0.99999999999999989 124 0.99999999999999989 125 0.99999999999999989 126 1 127 0.99999999999999989
		 128 0.99999999999999989 129 1 130 0.99999999999999978 131 0.99999999999999978 132 1
		 133 0.99999999999999989 134 0.99999999999999978 135 0.99999999999999989 136 1;
createNode animCurveTU -n "locator21_scaleZ";
	rename -uid "EF2F7F9C-43BE-5B78-18BE-3A8B99C01773";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999978 1 0.99999999999999978
		 2 1 3 0.99999999999999989 4 1 5 0.99999999999999989 6 1 7 1.0000000000000002 8 0.99999999999999967
		 9 1 10 0.99999999999999978 11 0.99999999999999989 12 1 13 1 14 1 15 1 16 1 17 0.99999999999999989
		 18 0.99999999999999989 19 1.0000000000000002 20 1 21 1 22 0.99999999999999989 23 0.99999999999999989
		 24 0.99999999999999978 25 0.99999999999999978 26 0.99999999999999956 27 0.99999999999999956
		 28 1 29 1 30 1 31 1 32 1 33 1 34 0.99999999999999989 35 1 36 1 37 0.99999999999999989
		 38 0.99999999999999989 39 1.0000000000000002 40 1.0000000000000002 41 1 42 0.99999999999999978
		 43 1.0000000000000002 44 1 45 1 46 0.99999999999999989 47 1 48 1.0000000000000002
		 49 1.0000000000000002 50 0.99999999999999967 51 1 52 0.99999999999999956 53 0.99999999999999978
		 54 1 55 1.0000000000000002 56 1 57 1.0000000000000002 58 0.99999999999999978 59 1.0000000000000004
		 60 1 61 0.99999999999999978 62 0.99999999999999978 63 0.99999999999999989 64 0.99999999999999978
		 65 0.99999999999999989 66 0.99999999999999956 67 1 68 0.99999999999999978 69 1 70 1.0000000000000002
		 71 1 72 0.99999999999999989 73 1.0000000000000002 74 1.0000000000000004 75 1.0000000000000004
		 76 0.99999999999999989 77 1.0000000000000004 78 0.99999999999999978 79 0.99999999999999956
		 80 0.99999999999999989 81 1.0000000000000004 82 1.0000000000000002 83 1.0000000000000002
		 84 1 85 1.0000000000000002 86 0.99999999999999956 87 1 88 0.99999999999999989 89 1.0000000000000002
		 90 0.99999999999999978 91 0.99999999999999967 92 1.0000000000000002 93 0.99999999999999978
		 94 1 95 1 96 0.99999999999999978 97 0.99999999999999978 98 1 99 1.0000000000000002
		 100 0.99999999999999978 101 0.99999999999999933 102 0.99999999999999989 103 0.99999999999999978
		 104 0.99999999999999989 105 0.99999999999999944 106 0.99999999999999978 107 1 108 1.0000000000000002
		 109 1.0000000000000004 110 1 111 1 112 1.0000000000000004 113 0.99999999999999989
		 114 0.99999999999999978 115 0.99999999999999956 116 0.99999999999999922 117 0.99999999999999978
		 118 0.99999999999999956 119 1.0000000000000002 120 0.99999999999999967 121 0.99999999999999967
		 122 1 123 0.99999999999999978 124 0.99999999999999967 125 1.0000000000000002 126 0.99999999999999989
		 127 0.99999999999999967 128 1 129 0.99999999999999978 130 0.99999999999999978 131 0.99999999999999967
		 132 1.0000000000000002 133 0.99999999999999989 134 1 135 0.99999999999999944 136 1;
createNode animCurveTU -n "locator22_visibility";
	rename -uid "5CC16794-4831-D92C-D0B8-D7AA6B284D78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1
		 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1
		 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1
		 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTL -n "locator22_translateX";
	rename -uid "D339CF67-4804-A5C9-94DB-0EB137927866";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -4.5699696540832466 1 -4.5699696540832502
		 2 -4.5699696540832484 3 -4.569969654083252 4 -4.5699696540832537 5 -4.5699696540832502
		 6 -4.569969654083252 7 -4.5699696540832502 8 -4.569969654083252 9 -4.5699696540832502
		 10 -4.5699696540832537 11 -4.569969654083252 12 -4.5699696540832537 13 -4.569969654083252
		 14 -4.5699696540832511 15 -4.5699696540832546 16 -4.5699696540832502 17 -4.569969654083252
		 18 -4.5699696540832511 19 -4.569969654083252 20 -4.5699696540832528 21 -4.569969654083252
		 22 -4.5699696540832484 23 -4.5699696540832484 24 -4.569969654083252 25 -4.569969654083252
		 26 -4.5699696540832502 27 -4.5699696540832502 28 -4.5699696540832502 29 -4.569969654083252
		 30 -4.569969654083252 31 -4.5699696540832511 32 -4.569969654083252 33 -4.5699696540832537
		 34 -4.5699696540832528 35 -4.569969654083252 36 -4.5699696540832555 37 -4.5699696540832377
		 38 -4.5699696540832804 39 -4.5699696540832377 40 -4.5699696540832804 41 -4.569969654083252
		 42 -4.5699696540832235 43 -4.569969654083252 44 -4.569969654083252 45 -4.5699696540832235
		 46 -4.5699696540832662 47 -4.5699696540832591 48 -4.5699696540832804 49 -4.5699696540832662
		 50 -4.569969654083252 51 -4.5699696540832377 52 -4.5699696540832733 53 -4.5699696540832306
		 54 -4.5699696540832448 55 -4.569969654083252 56 -4.5699696540832448 57 -4.569969654083252
		 58 -4.5699696540832448 59 -4.5699696540832431 60 -4.5699696540832671 61 -4.5699696540832555
		 62 -4.5699696540832591 63 -4.5699696540832448 64 -4.5699696540832377 65 -4.5699696540832662
		 66 -4.5699696540832235 67 -4.5699696540832804 68 -4.5699696540833088 69 -4.569969654083252
		 70 -4.569969654083252 71 -4.569969654083252 72 -4.5699696540832804 73 -4.569969654083252
		 74 -4.569969654083252 75 -4.569969654083252 76 -4.5699696540832377 77 -4.569969654083252
		 78 -4.5699696540832377 79 -4.5699696540832377 80 -4.569969654083252 81 -4.5699696540832662
		 82 -4.569969654083252 83 -4.569969654083252 84 -4.569969654083252 85 -4.569969654083252
		 86 -4.5699696540832662 87 -4.5699696540832662 88 -4.5699696540832662 89 -4.5699696540832662
		 90 -4.5699696540832591 91 -4.5699696540832306 92 -4.5699696540832377 93 -4.5699696540832591
		 94 -4.569969654083252 95 -4.5699696540832804 96 -4.5699696540832733 97 -4.5699696540832733
		 98 -4.5699696540832591 99 -4.569969654083252 100 -4.5699696540832448 101 -4.5699696540832591
		 102 -4.5699696540832662 103 -4.5699696540832591 104 -4.5699696540832662 105 -4.569969654083252
		 106 -4.5699696540832662 107 -4.5699696540832662 108 -4.5699696540832804 109 -4.569969654083252
		 110 -4.5699696540832377 111 -4.5699696540832662 112 -4.5699696540832662 113 -4.569969654083252
		 114 -4.569969654083252 115 -4.569969654083252 116 -4.569969654083252 117 -4.5699696540832804
		 118 -4.569969654083252 119 -4.5699696540832377 120 -4.569969654083252 121 -4.569969654083252
		 122 -4.5699696540832804 123 -4.5699696540832662 124 -4.569969654083252 125 -4.5699696540832662
		 126 -4.569969654083252 127 -4.5699696540832662 128 -4.5699696540832377 129 -4.5699696540832377
		 130 -4.5699696540832377 131 -4.569969654083252 132 -4.569969654083252 133 -4.569969654083252
		 134 -4.5699696540832377 135 -4.5699696540832662 136 -4.569969654083252;
createNode animCurveTL -n "locator22_translateY";
	rename -uid "39965F11-441B-8C80-508F-F793C15277C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 10.946176528930692 1 10.946176528930678
		 2 10.946176528930678 3 10.946176528930664 4 10.946176528930664 5 10.946176528930664
		 6 10.946176528930664 7 10.946176528930664 8 10.946176528930636 9 10.946176528930692
		 10 10.946176528930664 11 10.946176528930664 12 10.946176528930664 13 10.946176528930636
		 14 10.946176528930692 15 10.946176528930664 16 10.946176528930692 17 10.946176528930664
		 18 10.946176528930664 19 10.946176528930636 20 10.946176528930692 21 10.946176528930692
		 22 10.946176528930664 23 10.946176528930692 24 10.946176528930692 25 10.946176528930636
		 26 10.946176528930664 27 10.946176528930664 28 10.946176528930692 29 10.946176528930636
		 30 10.946176528930692 31 10.946176528930721 32 10.946176528930664 33 10.946176528930636
		 34 10.946176528930664 35 10.946176528930692 36 10.946176528930692 37 10.946176528930664
		 38 10.946176528930636 39 10.946176528930664 40 10.946176528930664 41 10.946176528930692
		 42 10.946176528930664 43 10.946176528930664 44 10.946176528930692 45 10.946176528930636
		 46 10.946176528930664 47 10.946176528930664 48 10.946176528930664 49 10.946176528930678
		 50 10.94617652893065 51 10.946176528930636 52 10.946176528930692 53 10.946176528930664
		 54 10.946176528930636 55 10.946176528930636 56 10.946176528930664 57 10.946176528930664
		 58 10.946176528930664 59 10.946176528930664 60 10.94617652893065 61 10.946176528930664
		 62 10.946176528930675 63 10.946176528930657 64 10.946176528930664 65 10.946176528930664
		 66 10.946176528930692 67 10.94617652893065 68 10.94617652893065 69 10.946176528930707
		 70 10.946176528930636 71 10.946176528930636 72 10.946176528930707 73 10.946176528930714
		 74 10.946176528930629 75 10.946176528930692 76 10.946176528930671 77 10.946176528930657
		 78 10.946176528930692 79 10.946176528930636 80 10.946176528930678 81 10.946176528930636
		 82 10.946176528930664 83 10.946176528930707 84 10.946176528930692 85 10.946176528930664
		 86 10.946176528930664 87 10.946176528930664 88 10.946176528930721 89 10.946176528930664
		 90 10.946176528930636 91 10.946176528930607 92 10.946176528930692 93 10.946176528930664
		 94 10.946176528930636 95 10.946176528930664 96 10.946176528930636 97 10.94617652893065
		 98 10.946176528930636 99 10.946176528930678 100 10.946176528930678 101 10.946176528930664
		 102 10.946176528930664 103 10.946176528930636 104 10.946176528930664 105 10.946176528930664
		 106 10.946176528930692 107 10.94617652893065 108 10.946176528930636 109 10.94617652893065
		 110 10.946176528930678 111 10.946176528930664 112 10.946176528930664 113 10.946176528930636
		 114 10.946176528930664 115 10.946176528930664 116 10.946176528930636 117 10.946176528930664
		 118 10.946176528930692 119 10.946176528930664 120 10.946176528930692 121 10.946176528930636
		 122 10.946176528930664 123 10.946176528930664 124 10.946176528930692 125 10.946176528930636
		 126 10.946176528930664 127 10.946176528930636 128 10.946176528930692 129 10.946176528930607
		 130 10.946176528930692 131 10.946176528930692 132 10.94617652893065 133 10.94617652893065
		 134 10.946176528930664 135 10.946176528930664 136 10.946176528930621;
createNode animCurveTL -n "locator22_translateZ";
	rename -uid "416B0991-4A44-EA43-540E-ADBE5CEA0501";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -2.6280174255371094 1 -2.6280174255371094
		 2 -2.6280174255371094 3 -2.6280174255370987 4 -2.6280174255371129 5 -2.6280174255371094
		 6 -2.6280174255371147 7 -2.6280174255371147 8 -2.6280174255371054 9 -2.6280174255371156
		 10 -2.6280174255371112 11 -2.6280174255371094 12 -2.6280174255371094 13 -2.62801742553712
		 14 -2.6280174255371058 15 -2.6280174255371023 16 -2.6280174255371058 17 -2.6280174255371165
		 18 -2.6280174255371023 19 -2.6280174255371023 20 -2.6280174255371165 21 -2.6280174255371023
		 22 -2.6280174255371023 23 -2.6280174255371165 24 -2.6280174255371023 25 -2.6280174255371023
		 26 -2.6280174255371236 27 -2.6280174255371094 28 -2.6280174255371094 29 -2.6280174255371094
		 30 -2.6280174255371378 31 -2.6280174255371094 32 -2.6280174255371094 33 -2.6280174255371094
		 34 -2.6280174255371094 35 -2.6280174255371236 36 -2.6280174255371236 37 -2.6280174255371094
		 38 -2.6280174255371236 39 -2.6280174255370881 40 -2.6280174255371165 41 -2.6280174255371023
		 42 -2.6280174255371094 43 -2.6280174255371236 44 -2.6280174255371094 45 -2.6280174255371094
		 46 -2.6280174255371094 47 -2.628017425537081 48 -2.6280174255371378 49 -2.6280174255371094
		 50 -2.6280174255371378 51 -2.6280174255371094 52 -2.628017425537081 53 -2.6280174255371662
		 54 -2.6280174255371094 55 -2.6280174255370525 56 -2.6280174255371094 57 -2.6280174255371378
		 58 -2.6280174255371094 59 -2.6280174255371094 60 -2.628017425537081 61 -2.6280174255371094
		 62 -2.6280174255371378 63 -2.6280174255371378 64 -2.6280174255371094 65 -2.6280174255371094
		 66 -2.6280174255371094 67 -2.6280174255371378 68 -2.6280174255371094 69 -2.6280174255371094
		 70 -2.6280174255371662 71 -2.6280174255371094 72 -2.6280174255371378 73 -2.6280174255371378
		 74 -2.6280174255371094 75 -2.6280174255371094 76 -2.6280174255371094 77 -2.6280174255371094
		 78 -2.6280174255371094 79 -2.628017425537081 80 -2.6280174255371094 81 -2.6280174255371094
		 82 -2.6280174255371094 83 -2.6280174255371094 84 -2.6280174255371378 85 -2.6280174255371378
		 86 -2.6280174255371378 87 -2.628017425537081 88 -2.628017425537081 89 -2.628017425537081
		 90 -2.6280174255371094 91 -2.628017425537081 92 -2.6280174255371378 93 -2.6280174255371094
		 94 -2.6280174255371094 95 -2.6280174255370525 96 -2.6280174255371378 97 -2.6280174255371094
		 98 -2.628017425537081 99 -2.6280174255371378 100 -2.628017425537081 101 -2.6280174255371378
		 102 -2.6280174255371094 103 -2.6280174255371378 104 -2.628017425537081 105 -2.6280174255371094
		 106 -2.6280174255371094 107 -2.628017425537081 108 -2.628017425537081 109 -2.6280174255371094
		 110 -2.628017425537081 111 -2.6280174255371094 112 -2.628017425537081 113 -2.6280174255371378
		 114 -2.628017425537081 115 -2.6280174255371094 116 -2.6280174255371094 117 -2.6280174255371094
		 118 -2.628017425537081 119 -2.6280174255371378 120 -2.628017425537081 121 -2.6280174255371094
		 122 -2.6280174255371094 123 -2.6280174255371094 124 -2.628017425537081 125 -2.6280174255371094
		 126 -2.6280174255371094 127 -2.6280174255371094 128 -2.628017425537081 129 -2.6280174255371946
		 130 -2.6280174255371094 131 -2.6280174255371378 132 -2.628017425537081 133 -2.6280174255371094
		 134 -2.6280174255371094 135 -2.6280174255371094 136 -2.628017425537081;
createNode animCurveTA -n "locator22_rotateX";
	rename -uid "811B1197-41F3-1845-EDF3-FE8122B90034";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1.7226957082748418 1 1.7350234985351563
		 2 1.7174793481826782 3 1.7101074457168581 4 1.74128794670105 5 1.7603927850723269
		 6 1.7356582880020146 7 1.6900328397750857 8 1.6609803438186648 9 1.7030124664306641
		 10 1.7454330921173098 11 1.7310018539428715 12 1.7128719091415407 13 1.7205893993377688
		 14 1.7406077384948733 15 1.770649313926697 16 1.7981582880020137 17 1.8197463750839229
		 18 1.8758505582809448 19 1.9414324760437021 20 1.9506186246871946 21 1.9170117378234861
		 22 1.8874820470809939 23 1.883078455924988 24 1.8832615613937385 25 1.863562345504761
		 26 1.8405004739761355 27 1.8153591156005862 28 1.780169606208801 29 1.786029100418091
		 30 1.8311073780059812 31 1.8515192270278933 32 1.8308305740356448 33 1.7162760496139526
		 34 1.4905358552932739 35 1.3918579816818242 36 1.5751409530639648 37 1.6667783260345459
		 38 1.5790624618530273 39 1.5481253862380981 40 1.5494927167892456 41 1.3022946119308474
		 42 0.82322072982788086 43 0.89825731515884433 44 1.2277700901031494 45 1.5092557668685915
		 46 1.6064020395278933 47 1.4710707664489746 48 1.2672833204269409 49 0.99357247352600075
		 50 0.38921728730201721 51 0.0025321368593722608 52 -0.093886032700538663 53 -0.18238352239131919
		 54 -0.25581923127174377 55 -0.25923758745193481 56 -0.12261795252561569 57 0.13255903124809268
		 58 0.50234246253967296 59 0.91451370716094993 60 1.2194950580596922 61 1.3841285705566404
		 62 1.464448213577271 63 1.3776994943618774 64 1.4370334148406982 65 1.6183295249938967
		 66 1.7452309131622314 67 1.8762201070785525 68 1.97105872631073 69 1.9705114364624021
		 70 1.9548320770263672 71 1.9987970590591433 72 2.0135774612426753 73 1.9741494655609131
		 74 1.9193247556686401 75 1.8550547361373908 76 1.8108265399932864 77 1.7865443229675293
		 78 1.7486553192138674 79 1.6859906911849978 80 1.6358662843704221 81 1.6178165674209599
		 82 1.6945511102676398 83 1.8041670322418211 84 1.8179552555084231 85 1.8193764686584473
		 86 1.8626339435577393 87 1.8866117000579836 88 1.8484976291656494 89 1.8127318620681765
		 90 1.8077439069747923 91 1.7921664714813237 92 1.7826200723648071 93 1.7793698310852049
		 94 1.7631309032440179 95 1.7639665603637698 96 1.7816592454910278 97 1.7685923576354983
		 98 1.7620126008987425 99 1.7772942781448369 100 1.7656348943710325 101 1.7256968021392822
		 102 1.7018463611602785 103 1.6942913532257082 104 1.7071043252944951 105 1.7870997190475464
		 106 1.9045119285583501 107 1.9496260881423952 108 1.937022924423218 109 1.9479110240936284
		 110 1.977437376976013 111 1.9983677864074709 112 2.0202317237854004 113 2.0611686706542969
		 114 2.0911610126495357 115 2.0962886810302734 116 2.0983588695526127 117 2.1083171367645259
		 118 2.11637282371521 119 2.1151220798492432 120 2.0944671630859375 121 2.0573775768280029
		 122 2.0432705879211435 123 2.0437579154968262 124 2.0412633419036865 125 2.0320847034454346
		 126 2.0054295063018799 127 1.9573141336441036 128 1.9301257133483889 129 1.9372614622116096
		 130 1.939086318016052 131 1.9473257064819331 132 1.9772306680679326 133 1.9982358217239384
		 134 1.9997940063476569 135 2.012509822845459 136 2.0229611396789555;
createNode animCurveTA -n "locator22_rotateY";
	rename -uid "DB5D9632-4710-1A82-27FF-EB8BDA522940";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.95082920789718617 1 0.95884442329406727
		 2 0.96316874027252197 3 0.94835561513900779 4 0.91588443517684925 5 0.92591714859008756
		 6 1.0048789978027344 7 1.0757414102554319 8 1.0677495002746582 9 1.0510073900222776
		 10 1.081906795501709 11 1.1224297285079958 12 1.179706811904907 13 1.3177453279495241
		 14 1.4410130977630613 15 1.4383363723754885 16 1.4513111114501953 17 1.5747030973434446
		 18 1.7024351358413694 19 1.760333299636841 20 1.7406125068664551 21 1.6163185834884641
		 22 1.611859202384949 23 1.6665623188018801 24 1.609812378883362 25 1.5583010911941531
		 26 1.5486069917678835 27 1.5392062664031987 28 1.5243039131164551 29 1.4845875501632693
		 30 1.4019795656204221 31 1.3146111965179446 32 1.2632074356079099 33 1.1873451471328735
		 34 0.84316349029541005 35 0.71498113870620728 36 1.4438499212265015 37 2.1126337051391597
		 38 2.4776499271392831 39 3.763859748840332 40 5.7384905815124512 41 7.214908599853513
		 42 7.2146306037902841 43 6.168248176574707 44 5.4265718460083017 45 4.5999021530151367
		 46 3.5913405418395996 47 2.7339580059051514 48 1.9344701766967769 49 0.94566398859024048
		 50 -0.97517263889312733 51 -3.4800729751586914 52 -5.416750431060791 53 -7.0455513000488272
		 54 -7.2567629814147958 55 -6.1368365287780771 56 -4.5412774085998526 57 -2.5098538398742676
		 58 -0.8934171199798584 59 -0.17238777875900277 60 0.23335212469100952 61 0.84459906816482555
		 62 1.901801586151123 63 2.4208190441131592 64 2.2718420028686523 65 2.1399857997894287
		 66 2.3832027912139897 67 2.7852365970611581 68 3.0483567714691175 69 3.2189381122589116
		 70 3.310299396514893 71 3.3989946842193612 72 3.4337735176086421 73 3.2418916225433354
		 74 3.0650448799133305 75 3.0744159221649179 76 3.0093839168548593 77 2.8710129261016846
		 78 2.7834289073944096 79 2.5609760284423828 80 2.2494275569915763 81 2.0164370536804199
		 82 1.8825963735580442 83 1.7655110359191892 84 1.6838240623474117 85 1.7436517477035518
		 86 1.8200750350952153 87 1.7689648866653442 88 1.6639145612716668 89 1.5445060729980467
		 90 1.4533933401107788 91 1.3861041069030762 92 1.3033519983291626 93 1.264617919921875
		 94 1.2713344097137449 95 1.2599239349365234 96 1.2367773056030278 97 1.2613921165466309
		 98 1.3149278163909912 99 1.3244731426239014 100 1.2957772016525269 101 1.2154183387756348
		 102 1.1878724098205566 103 1.2081069946289065 104 1.2005935907363892 105 1.2445818185806272
		 106 1.2953124046325684 107 1.2989974021911621 108 1.3248975276947019 109 1.3651789426803589
		 110 1.375612616539001 111 1.3843835592269895 112 1.4231657981872563 113 1.4241979122161865
		 114 1.4216544628143313 115 1.4758031368255617 116 1.5177361965179443 117 1.518975973129272
		 118 1.5051547288894656 119 1.5192729234695437 120 1.6664658784866326 121 1.9032386541366573
		 122 2.0125808715820313 123 1.9896854162216189 124 1.9158833026885993 125 1.8529523611068726
		 126 1.8227142095565798 127 1.7847932577133181 128 1.7321195602416988 129 1.7082036733627322
		 130 1.6879465579986574 131 1.6547474861145022 132 1.6353935003280644 133 1.6419316530227668
		 134 1.6394389867782597 135 1.618266224861145 136 1.6416209936141972;
createNode animCurveTA -n "locator22_rotateZ";
	rename -uid "78684813-4222-179B-61E9-4698B1B51E31";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 10.392890930175783 1 10.47330951690674
		 2 10.304648399353029 3 10.29065990447998 4 10.678570747375488 5 10.811050415039064
		 6 10.32101535797119 7 9.6902294158935547 8 9.4640083312988317 9 9.8833017349243164
		 10 10.146816253662109 11 9.8906488418579084 12 9.5536527633666992 13 9.1946573257446325
		 14 8.9959907531738299 15 9.2463893890380877 16 9.4293642044067383 17 9.2429704666137678
		 18 9.31732177734375 19 9.6520280838012678 20 9.7766695022583008 21 9.8784551620483398
		 22 9.6636791229248047 23 9.4733829498290998 24 9.6370115280151385 25 9.6332664489746076
		 26 9.4808197021484375 27 9.3101062774658239 28 9.0742292404174805 29 9.2350196838378906
		 30 9.8417367935180646 31 10.278104782104492 32 10.272812843322752 33 9.5584774017333984
		 34 8.6568336486816388 35 8.1381502151489258 36 7.6358876228332537 37 6.73032522201538
		 38 5.358942985534668 39 3.1839292049407959 40 1.2252669334411621 41 -0.78551620244979858
		 42 -2.7617793083190918 43 -2.0582675933837891 44 -0.094587281346321134 45 2.0289940834045415
		 46 3.7569165229797368 47 4.1652903556823739 48 4.0570750236511222 49 3.6616396903991699
		 50 0.68782323598861683 51 -2.9339451789855957 52 -3.9357857704162593 53 -3.8527491092681871
		 54 -3.1406230926513667 55 -1.8650064468383789 56 -1.1248027086257932 57 -0.079467087984085097
		 58 2.3994932174682622 59 5.89566993713379 60 8.0201930999755859 61 7.6578278541564924
		 62 5.6595935821533203 63 4.0289759635925302 64 4.7222537994384757 65 6.3148298263549805
		 66 6.7115664482116699 67 6.7814373970031756 68 6.8799376487731951 69 6.559722900390625
		 70 6.3010406494140634 71 6.4110302925109872 72 6.4385881423950178 73 6.5405707359313974
		 74 6.5235633850097665 75 6.1016354560852069 76 5.9372825622558603 77 6.031683921813964
		 78 5.9446892738342294 79 5.9427499771118173 80 6.2122573852539045 81 6.5793571472167978
		 82 7.4682769775390643 83 8.5988636016845685 84 8.9244956970214844 85 8.7733087539672834
		 86 8.8969240188598651 87 9.2154741287231445 88 9.2150678634643555 89 9.2742547988891602
		 90 9.5001220703125 91 9.5755729675292969 92 9.7502622604370117 93 9.8440666198730469
		 94 9.6886253356933576 95 9.7310829162597656 96 9.9508275985717773 97 9.7648983001708984
		 98 9.5452165603637695 99 9.6415834426879901 100 9.6337823867797852 101 9.5502605438232422
		 102 9.4348783493041992 103 9.3081579208374059 104 9.4397201538085938 105 9.9712495803833008
		 106 10.769950866699219 107 11.121475219726561 108 10.935264587402342 109 10.891443252563477
		 110 11.091769218444821 111 11.228302955627441 112 11.273381233215336 113 11.588444709777832
		 114 11.828907012939455 115 11.689753532409672 116 11.569349288940431 117 11.641084671020506
		 118 11.747122764587404 119 11.691779136657711 120 11.072646141052243 121 10.107448577880859
		 122 9.7066717147827148 123 9.7717847824096715 124 9.9554681777954119 125 10.064102172851561
		 126 9.9531946182250959 127 9.7024288177490234 128 9.6462316513061523 129 9.7679958343505859
		 130 9.8397893905639684 131 9.9984998703002965 132 10.28313159942627 133 10.423226356506351
		 134 10.442505836486818 135 10.602616310119629 136 10.611320495605472;
createNode animCurveTU -n "locator22_scaleX";
	rename -uid "E3B58D11-4C54-6521-4439-4FB167DCCCCF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999978 1 0.99999999999999989
		 2 0.99999999999999989 3 1 4 0.99999999999999989 5 0.99999999999999978 6 1 7 1 8 1
		 9 0.99999999999999989 10 1 11 1 12 1.0000000000000002 13 1 14 0.99999999999999989
		 15 1.0000000000000004 16 0.99999999999999989 17 0.99999999999999989 18 0.99999999999999989
		 19 1 20 0.99999999999999967 21 1 22 0.99999999999999989 23 0.99999999999999989 24 0.99999999999999978
		 25 0.99999999999999967 26 1 27 0.99999999999999978 28 1 29 0.99999999999999989 30 1
		 31 0.99999999999999978 32 1 33 1.0000000000000002 34 1.0000000000000002 35 0.99999999999999989
		 36 0.99999999999999978 37 0.99999999999999989 38 0.99999999999999989 39 0.99999999999999978
		 40 1 41 1 42 0.99999999999999978 43 1.0000000000000002 44 1 45 0.99999999999999978
		 46 0.99999999999999989 47 0.99999999999999989 48 1 49 1 50 0.99999999999999956 51 0.99999999999999989
		 52 1 53 0.99999999999999989 54 1 55 1.0000000000000002 56 0.99999999999999956 57 1.0000000000000004
		 58 1 59 1.0000000000000004 60 1.0000000000000002 61 0.99999999999999967 62 0.99999999999999967
		 63 0.99999999999999978 64 0.99999999999999978 65 0.99999999999999989 66 0.99999999999999967
		 67 1.0000000000000002 68 0.99999999999999967 69 1.0000000000000002 70 1 71 0.99999999999999989
		 72 0.99999999999999989 73 1.0000000000000004 74 1.0000000000000004 75 1.0000000000000004
		 76 1 77 1.0000000000000002 78 0.99999999999999933 79 0.99999999999999967 80 0.99999999999999989
		 81 1 82 1.0000000000000002 83 1.0000000000000002 84 0.99999999999999989 85 1.0000000000000002
		 86 0.99999999999999967 87 1 88 1 89 1.0000000000000004 90 0.99999999999999989 91 0.99999999999999956
		 92 1.0000000000000002 93 0.99999999999999967 94 0.99999999999999978 95 1.0000000000000002
		 96 0.99999999999999989 97 0.99999999999999978 98 1 99 1 100 0.99999999999999978 101 0.99999999999999967
		 102 0.99999999999999989 103 0.99999999999999967 104 0.99999999999999956 105 0.99999999999999944
		 106 0.99999999999999967 107 1 108 1.0000000000000004 109 1.0000000000000007 110 1
		 111 0.99999999999999956 112 1.0000000000000004 113 0.99999999999999989 114 0.99999999999999967
		 115 0.99999999999999956 116 0.99999999999999956 117 1 118 0.99999999999999956 119 1
		 120 0.99999999999999967 121 1 122 1 123 0.99999999999999989 124 0.99999999999999989
		 125 1 126 0.99999999999999978 127 1 128 0.99999999999999978 129 0.99999999999999956
		 130 0.99999999999999989 131 0.99999999999999944 132 1 133 0.99999999999999956 134 0.99999999999999978
		 135 0.99999999999999933 136 1.0000000000000002;
createNode animCurveTU -n "locator22_scaleY";
	rename -uid "2C368FDB-4884-20BE-6919-E1B74D143A09";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1.0000000000000002 1 1 2 1 3 1.0000000000000002
		 4 1 5 0.99999999999999956 6 1 7 1.0000000000000002 8 1 9 1 10 1 11 1 12 0.99999999999999978
		 13 0.99999999999999989 14 0.99999999999999989 15 1.0000000000000002 16 1 17 0.99999999999999978
		 18 1 19 0.99999999999999956 20 0.99999999999999978 21 0.99999999999999989 22 0.99999999999999978
		 23 1 24 1 25 0.99999999999999956 26 0.99999999999999978 27 0.99999999999999989 28 1
		 29 0.99999999999999967 30 1.0000000000000002 31 1.0000000000000002 32 1 33 1 34 1
		 35 0.99999999999999989 36 0.99999999999999989 37 0.99999999999999989 38 1 39 1.0000000000000002
		 40 0.99999999999999989 41 1.0000000000000002 42 1.0000000000000002 43 1 44 1.0000000000000002
		 45 0.99999999999999967 46 1 47 0.99999999999999967 48 1 49 1.0000000000000002 50 1
		 51 1 52 1 53 0.99999999999999989 54 1 55 0.99999999999999989 56 0.99999999999999978
		 57 0.99999999999999978 58 1 59 0.99999999999999989 60 0.99999999999999967 61 1 62 0.99999999999999978
		 63 1 64 0.99999999999999989 65 1 66 0.99999999999999978 67 1 68 0.99999999999999956
		 69 1 70 1.0000000000000002 71 0.99999999999999989 72 1.0000000000000002 73 1.0000000000000002
		 74 1 75 1.0000000000000002 76 0.99999999999999978 77 1.0000000000000002 78 0.99999999999999978
		 79 1 80 0.99999999999999978 81 1 82 1 83 0.99999999999999989 84 1 85 1 86 1 87 1
		 88 1.0000000000000004 89 1 90 0.99999999999999978 91 0.99999999999999978 92 1.0000000000000002
		 93 0.99999999999999989 94 0.99999999999999978 95 1 96 0.99999999999999989 97 0.99999999999999978
		 98 1 99 0.99999999999999989 100 1 101 0.99999999999999989 102 1 103 0.99999999999999978
		 104 1 105 0.99999999999999989 106 1.0000000000000002 107 0.99999999999999989 108 0.99999999999999967
		 109 1 110 0.99999999999999989 111 0.99999999999999989 112 0.99999999999999978 113 0.99999999999999978
		 114 1.0000000000000002 115 0.99999999999999989 116 0.99999999999999956 117 0.99999999999999989
		 118 0.99999999999999978 119 1 120 0.99999999999999989 121 0.99999999999999989 122 0.99999999999999989
		 123 0.99999999999999989 124 0.99999999999999989 125 0.99999999999999989 126 1 127 0.99999999999999989
		 128 0.99999999999999989 129 1 130 0.99999999999999978 131 0.99999999999999978 132 1
		 133 0.99999999999999989 134 0.99999999999999978 135 0.99999999999999989 136 1;
createNode animCurveTU -n "locator22_scaleZ";
	rename -uid "F73E0D67-4D7E-1E68-AC78-2AB7BF1BCB60";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999978 1 0.99999999999999978
		 2 1 3 0.99999999999999989 4 1 5 0.99999999999999989 6 1 7 1.0000000000000002 8 0.99999999999999967
		 9 1 10 0.99999999999999978 11 0.99999999999999989 12 1 13 1 14 1 15 1 16 1 17 0.99999999999999989
		 18 0.99999999999999989 19 1.0000000000000002 20 1 21 1 22 0.99999999999999989 23 0.99999999999999989
		 24 0.99999999999999978 25 0.99999999999999978 26 0.99999999999999956 27 0.99999999999999956
		 28 1 29 1 30 1 31 1 32 1 33 1 34 0.99999999999999989 35 1 36 1 37 0.99999999999999989
		 38 0.99999999999999989 39 1.0000000000000002 40 1.0000000000000002 41 1 42 0.99999999999999978
		 43 1.0000000000000002 44 1 45 1 46 0.99999999999999989 47 1 48 1.0000000000000002
		 49 1.0000000000000002 50 0.99999999999999967 51 1 52 0.99999999999999956 53 0.99999999999999978
		 54 1 55 1.0000000000000002 56 1 57 1.0000000000000002 58 0.99999999999999978 59 1.0000000000000004
		 60 1 61 0.99999999999999978 62 0.99999999999999978 63 0.99999999999999989 64 0.99999999999999978
		 65 0.99999999999999989 66 0.99999999999999956 67 1 68 0.99999999999999978 69 1 70 1.0000000000000002
		 71 1 72 0.99999999999999989 73 1.0000000000000002 74 1.0000000000000004 75 1.0000000000000004
		 76 0.99999999999999989 77 1.0000000000000004 78 0.99999999999999978 79 0.99999999999999956
		 80 0.99999999999999989 81 1.0000000000000004 82 1.0000000000000002 83 1.0000000000000002
		 84 1 85 1.0000000000000002 86 0.99999999999999956 87 1 88 0.99999999999999989 89 1.0000000000000002
		 90 0.99999999999999978 91 0.99999999999999967 92 1.0000000000000002 93 0.99999999999999978
		 94 1 95 1 96 0.99999999999999978 97 0.99999999999999978 98 1 99 1.0000000000000002
		 100 0.99999999999999978 101 0.99999999999999933 102 0.99999999999999989 103 0.99999999999999978
		 104 0.99999999999999989 105 0.99999999999999944 106 0.99999999999999978 107 1 108 1.0000000000000002
		 109 1.0000000000000004 110 1 111 1 112 1.0000000000000004 113 0.99999999999999989
		 114 0.99999999999999978 115 0.99999999999999956 116 0.99999999999999922 117 0.99999999999999978
		 118 0.99999999999999956 119 1.0000000000000002 120 0.99999999999999967 121 0.99999999999999967
		 122 1 123 0.99999999999999978 124 0.99999999999999967 125 1.0000000000000002 126 0.99999999999999989
		 127 0.99999999999999967 128 1 129 0.99999999999999978 130 0.99999999999999978 131 0.99999999999999967
		 132 1.0000000000000002 133 0.99999999999999989 134 1 135 0.99999999999999944 136 1;
createNode animCurveTU -n "locator23_visibility";
	rename -uid "60F01C37-43E8-1700-3E9E-F189457EE154";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1
		 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1
		 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1
		 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTL -n "locator23_translateX";
	rename -uid "DB7D8AF8-4A30-FB4C-1377-E7A633EC6C6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -10.592844009399403 1 -10.592844009399418
		 2 -10.592844009399412 3 -10.592844009399418 4 -10.592844009399411 5 -10.592844009399416
		 6 -10.592844009399412 7 -10.592844009399421 8 -10.592844009399414 9 -10.592844009399416
		 10 -10.592844009399412 11 -10.592844009399414 12 -10.592844009399414 13 -10.592844009399411
		 14 -10.592844009399421 15 -10.592844009399418 16 -10.592844009399414 17 -10.592844009399418
		 18 -10.592844009399418 19 -10.592844009399421 20 -10.592844009399411 21 -10.592844009399414
		 22 -10.592844009399418 23 -10.592844009399421 24 -10.592844009399407 25 -10.592844009399414
		 26 -10.592844009399418 27 -10.592844009399414 28 -10.592844009399414 29 -10.592844009399421
		 30 -10.592844009399411 31 -10.592844009399411 32 -10.592844009399409 33 -10.592844009399421
		 34 -10.592844009399416 35 -10.592844009399414 36 -10.592844009399407 37 -10.592844009399414
		 38 -10.5928440093994 39 -10.592844009399386 40 -10.592844009399414 41 -10.5928440093994
		 42 -10.5928440093994 43 -10.592844009399428 44 -10.592844009399428 45 -10.592844009399442
		 46 -10.592844009399428 47 -10.592844009399428 48 -10.592844009399428 49 -10.592844009399442
		 50 -10.592844009399407 51 -10.592844009399414 52 -10.592844009399407 53 -10.592844009399421
		 54 -10.592844009399403 55 -10.592844009399426 56 -10.592844009399403 57 -10.592844009399419
		 58 -10.592844009399395 59 -10.592844009399418 60 -10.5928440093994 61 -10.592844009399403
		 62 -10.592844009399414 63 -10.592844009399414 64 -10.5928440093994 65 -10.592844009399414
		 66 -10.592844009399442 67 -10.592844009399414 68 -10.592844009399442 69 -10.592844009399414
		 70 -10.592844009399386 71 -10.592844009399386 72 -10.592844009399371 73 -10.592844009399442
		 74 -10.592844009399428 75 -10.592844009399386 76 -10.592844009399428 77 -10.592844009399414
		 78 -10.592844009399414 79 -10.592844009399428 80 -10.592844009399414 81 -10.5928440093994
		 82 -10.592844009399414 83 -10.592844009399428 84 -10.59284400939945 85 -10.592844009399414
		 86 -10.592844009399407 87 -10.592844009399421 88 -10.592844009399414 89 -10.592844009399421
		 90 -10.592844009399407 91 -10.592844009399411 92 -10.592844009399425 93 -10.592844009399396
		 94 -10.592844009399414 95 -10.592844009399411 96 -10.592844009399428 97 -10.592844009399421
		 98 -10.592844009399421 99 -10.592844009399407 100 -10.592844009399421 101 -10.592844009399421
		 102 -10.592844009399407 103 -10.5928440093994 104 -10.592844009399393 105 -10.592844009399386
		 106 -10.592844009399407 107 -10.592844009399407 108 -10.5928440093994 109 -10.592844009399414
		 110 -10.592844009399421 111 -10.592844009399421 112 -10.592844009399414 113 -10.592844009399421
		 114 -10.592844009399393 115 -10.592844009399428 116 -10.592844009399421 117 -10.592844009399407
		 118 -10.592844009399435 119 -10.592844009399428 120 -10.592844009399393 121 -10.592844009399414
		 122 -10.592844009399407 123 -10.592844009399414 124 -10.592844009399407 125 -10.592844009399407
		 126 -10.592844009399393 127 -10.5928440093994 128 -10.592844009399421 129 -10.592844009399414
		 130 -10.592844009399442 131 -10.592844009399435 132 -10.592844009399414 133 -10.592844009399414
		 134 -10.592844009399421 135 -10.592844009399414 136 -10.592844009399421;
createNode animCurveTL -n "locator23_translateY";
	rename -uid "6613546D-4A09-E3F7-78ED-60A93E11D005";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -0.52479839324951172 1 -0.5247983932494833
		 2 -0.52479839324951172 3 -0.5247983932494833 4 -0.52479839324954014 5 -0.52479839324954014
		 6 -0.52479839324951172 7 -0.52479839324951172 8 -0.52479839324951172 9 -0.52479839324954014
		 10 -0.52479839324951172 11 -0.52479839324951172 12 -0.52479839324951172 13 -0.52479839324956856
		 14 -0.52479839324954014 15 -0.5247983932494833 16 -0.52479839324954014 17 -0.5247983932494833
		 18 -0.52479839324951172 19 -0.5247983932494833 20 -0.5247983932494833 21 -0.52479839324951172
		 22 -0.52479839324954014 23 -0.52479839324951172 24 -0.5247983932494833 25 -0.52479839324945488
		 26 -0.5247983932494833 27 -0.52479839324951172 28 -0.5247983932494833 29 -0.52479839324954014
		 30 -0.52479839324945488 31 -0.5247983932494833 32 -0.52479839324954014 33 -0.52479839324951172
		 34 -0.52479839324951172 35 -0.5247983932494833 36 -0.5247983932494833 37 -0.5247983932494833
		 38 -0.52479839324951172 39 -0.52479839324954014 40 -0.5247983932494833 41 -0.52479839324951172
		 42 -0.52479839324951172 43 -0.5247983932494833 44 -0.52479839324951172 45 -0.52479839324949751
		 46 -0.52479839324952593 47 -0.52479839324952593 48 -0.52479839324946909 49 -0.52479839324949751
		 50 -0.52479839324954014 51 -0.52479839324949751 52 -0.52479839324951172 53 -0.5247983932494833
		 54 -0.52479839324951172 55 -0.52479839324954014 56 -0.52479839324956856 57 -0.52479839324951172
		 58 -0.52479839324954014 59 -0.52479839324952593 60 -0.52479839324950461 61 -0.52479839324953836
		 62 -0.52479839324951527 63 -0.5247983932494833 64 -0.52479839324949751 65 -0.5247983932494833
		 66 -0.52479839324949751 67 -0.52479839324949751 68 -0.52479839324951172 69 -0.52479839324951172
		 70 -0.52479839324947619 71 -0.5247983932494833 72 -0.5247983932494833 73 -0.52479839324951705
		 74 -0.52479839324952726 75 -0.52479839324950817 76 -0.52479839324953304 77 -0.52479839324951172
		 78 -0.52479839324951172 79 -0.5247983932494833 80 -0.52479839324949751 81 -0.52479839324954014
		 82 -0.52479839324949751 83 -0.52479839324951172 84 -0.52479839324954014 85 -0.5247983932494833
		 86 -0.52479839324951172 87 -0.52479839324954014 88 -0.52479839324954014 89 -0.52479839324951172
		 90 -0.52479839324951172 91 -0.52479839324954014 92 -0.5247983932494833 93 -0.5247983932494833
		 94 -0.52479839324951172 95 -0.52479839324954014 96 -0.52479839324951172 97 -0.52479839324951172
		 98 -0.52479839324951172 99 -0.5247983932494833 100 -0.52479839324954014 101 -0.52479839324956856
		 102 -0.52479839324951172 103 -0.52479839324951172 104 -0.52479839324951172 105 -0.5247983932494833
		 106 -0.52479839324954014 107 -0.52479839324951172 108 -0.52479839324951172 109 -0.52479839324951172
		 110 -0.52479839324951172 111 -0.52479839324954014 112 -0.52479839324956856 113 -0.52479839324956856
		 114 -0.5247983932494833 115 -0.52479839324954014 116 -0.5247983932494833 117 -0.52479839324951172
		 118 -0.52479839324951172 119 -0.52479839324951172 120 -0.52479839324954014 121 -0.52479839324951172
		 122 -0.52479839324954014 123 -0.52479839324954014 124 -0.52479839324951172 125 -0.52479839324954014
		 126 -0.5247983932494833 127 -0.52479839324956856 128 -0.52479839324951172 129 -0.52479839324951172
		 130 -0.52479839324954014 131 -0.52479839324951172 132 -0.52479839324954014 133 -0.52479839324954014
		 134 -0.52479839324951172 135 -0.52479839324951172 136 -0.52479839324954014;
createNode animCurveTL -n "locator23_translateZ";
	rename -uid "D522E0A5-4A36-E4C0-9BAF-F88C32737C0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -2.2320985794067312 1 -2.2320985794067383
		 2 -2.2320985794067454 3 -2.2320985794067383 4 -2.2320985794067454 5 -2.2320985794067454
		 6 -2.2320985794067312 7 -2.2320985794067383 8 -2.2320985794067401 9 -2.2320985794067361
		 10 -2.2320985794067418 11 -2.2320985794067418 12 -2.2320985794067418 13 -2.2320985794067347
		 14 -2.2320985794067383 15 -2.2320985794067347 16 -2.2320985794067312 17 -2.2320985794067454
		 18 -2.2320985794067489 19 -2.2320985794067383 20 -2.2320985794067383 21 -2.2320985794067454
		 22 -2.2320985794067312 23 -2.2320985794067383 24 -2.2320985794067241 25 -2.2320985794067241
		 26 -2.2320985794067596 27 -2.2320985794067383 28 -2.2320985794067383 29 -2.2320985794067383
		 30 -2.2320985794067525 31 -2.2320985794067383 32 -2.2320985794067525 33 -2.2320985794067383
		 34 -2.2320985794067809 35 -2.2320985794067241 36 -2.2320985794067525 37 -2.2320985794067241
		 38 -2.2320985794067383 39 -2.2320985794067241 40 -2.2320985794067347 41 -2.2320985794067383
		 42 -2.2320985794067241 43 -2.2320985794067241 44 -2.2320985794067383 45 -2.2320985794067383
		 46 -2.2320985794067383 47 -2.2320985794067383 48 -2.2320985794067667 49 -2.2320985794067099
		 50 -2.2320985794067383 51 -2.2320985794067383 52 -2.2320985794067667 53 -2.2320985794067667
		 54 -2.2320985794067667 55 -2.2320985794067667 56 -2.2320985794067667 57 -2.2320985794067099
		 58 -2.2320985794067667 59 -2.2320985794067383 60 -2.2320985794067667 61 -2.2320985794067383
		 62 -2.2320985794067099 63 -2.2320985794067667 64 -2.2320985794067951 65 -2.2320985794067383
		 66 -2.2320985794067383 67 -2.2320985794067667 68 -2.2320985794067099 69 -2.2320985794067383
		 70 -2.2320985794067383 71 -2.2320985794067667 72 -2.2320985794066814 73 -2.2320985794067099
		 74 -2.2320985794067383 75 -2.2320985794067667 76 -2.2320985794067667 77 -2.2320985794067667
		 78 -2.2320985794067383 79 -2.2320985794067383 80 -2.2320985794066814 81 -2.2320985794067099
		 82 -2.2320985794067099 83 -2.2320985794067099 84 -2.2320985794067951 85 -2.2320985794067383
		 86 -2.2320985794067383 87 -2.2320985794067099 88 -2.2320985794067383 89 -2.2320985794067383
		 90 -2.2320985794067383 91 -2.2320985794067099 92 -2.2320985794067667 93 -2.2320985794067667
		 94 -2.2320985794067383 95 -2.2320985794067667 96 -2.2320985794066814 97 -2.2320985794067667
		 98 -2.2320985794067951 99 -2.2320985794067099 100 -2.2320985794067383 101 -2.2320985794067099
		 102 -2.2320985794067951 103 -2.2320985794067667 104 -2.2320985794067667 105 -2.2320985794066814
		 106 -2.2320985794067099 107 -2.2320985794067383 108 -2.2320985794067383 109 -2.2320985794067383
		 110 -2.2320985794067383 111 -2.2320985794066814 112 -2.2320985794067667 113 -2.2320985794067099
		 114 -2.2320985794067383 115 -2.2320985794067383 116 -2.2320985794067383 117 -2.2320985794067383
		 118 -2.2320985794067951 119 -2.2320985794067383 120 -2.2320985794067383 121 -2.2320985794067099
		 122 -2.2320985794067099 123 -2.2320985794067383 124 -2.2320985794067951 125 -2.2320985794067099
		 126 -2.2320985794067667 127 -2.2320985794067667 128 -2.2320985794067383 129 -2.2320985794067099
		 130 -2.2320985794067383 131 -2.2320985794067667 132 -2.2320985794067099 133 -2.2320985794067383
		 134 -2.2320985794067383 135 -2.2320985794067667 136 -2.2320985794067383;
createNode animCurveTA -n "locator23_rotateX";
	rename -uid "9DDAEF2A-41E9-05C1-0320-77A4A4EBC629";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 43.7484130859375 1 42.752044677734389
		 2 41.812458038330078 3 40.962776184082031 4 40.271812438964837 5 39.884166717529304
		 6 39.81117248535157 7 40.23481750488282 8 41.180194854736328 9 42.083671569824226
		 10 42.901744842529297 11 44.984104156494148 12 47.542766571044922 13 47.959739685058587
		 14 46.893211364746101 15 44.348785400390632 16 41.670585632324212 17 39.86137771606446
		 18 37.618438720703139 19 35.590099334716797 20 34.537723541259759 21 34.916637420654297
		 22 35.887794494628906 23 36.190223693847656 24 36.588886260986335 25 37.289379119873047
		 26 37.486820220947266 27 35.633293151855483 28 34.587116241455078 29 35.591255187988281
		 30 34.782062530517571 31 34.809516906738281 32 35.863487243652344 33 36.717567443847656
		 34 36.915401458740249 35 37.53620529174804 36 39.746208190917969 37 42.325599670410149
		 38 43.674156188964851 39 41.470291137695313 40 37.440761566162109 41 33.615119934082038
		 42 28.285356521606445 43 22.796203613281254 44 17.846244812011719 45 8.6735982894897479
		 46 1.0627943277359002 47 -2.7614116668701176 48 -1.9599164724349973 49 -0.38999745249748241
		 50 -2.0812015533447266 51 -7.1689352989196777 52 -15.152217864990234 53 -21.006685256958004
		 54 -23.531589508056644 55 -25.894433975219723 56 -27.916025161743164 57 -25.858856201171879
		 58 -21.277616500854492 59 -16.212760925292969 60 -11.439801216125488 61 -7.4622278213500977
		 62 -3.5523459911346436 63 2.0136444568634029 64 7.4987339973449734 65 11.357259750366211
		 66 15.396301269531254 67 18.862493515014652 68 21.072219848632816 69 24.027837753295898
		 70 27.291664123535163 71 28.133165359497067 72 26.240772247314453 73 22.582389831542965
		 74 18.913597106933597 75 16.405115127563477 76 14.342730522155763 77 11.874414443969725
		 78 8.8100824356079102 79 4.9110012054443359 80 0.32158747315406788 81 -4.267941951751709
		 82 -8.7526473999023438 83 -12.621071815490724 84 -15.988112449645994 85 -19.617767333984371
		 86 -22.369897842407227 87 -24.735658645629886 88 -27.173027038574219 89 -28.671194076538093
		 90 -29.777393341064457 91 -30.973249435424812 92 -31.691791534423828 93 -31.331977844238288
		 94 -29.804141998291012 95 -28.180154800415036 96 -27.425348281860348 97 -26.586341857910149
		 98 -24.875511169433601 99 -23.265794754028324 100 -21.924448013305664 101 -20.449634552001953
		 102 -19.106349945068363 103 -17.957967758178711 104 -16.824979782104492 105 -15.814960479736332
		 106 -14.750869750976561 107 -13.366051673889162 108 -11.928555488586426 109 -11.02671527862549
		 110 -10.233530998229982 111 -8.2334012985229492 112 -4.9690160751342765 113 -1.7216451168060307
		 114 -0.030692068859934713 115 0.49806630611419728 116 1.3204356431961066 117 2.4935088157653809
		 118 3.8976807594299321 119 5.0323309898376465 120 5.7642145156860352 121 6.6636962890625
		 122 8.0817451477050781 123 9.4748659133911133 124 10.58754348754883 125 11.820211410522464
		 126 13.939681053161619 127 16.505634307861328 128 18.319362640380856 129 19.648782730102539
		 130 21.062520980834964 131 22.542453765869137 132 23.980604171752933 133 25.251176834106449
		 134 26.243352890014652 135 27.256917953491204 136 28.546642303466797;
createNode animCurveTA -n "locator23_rotateY";
	rename -uid "1556F37D-435C-8796-8839-91AAFB128834";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 21.621391296386722 1 22.350952148437493
		 2 22.920211791992184 3 23.313623428344727 4 23.577278137207031 5 23.620468139648441
		 6 23.29879379272462 7 22.451807022094723 8 21.105621337890632 9 19.498018264770508
		 10 17.785943984985348 11 16.712060928344727 12 15.998429298400874 13 15.180658340454105
		 14 14.485795021057129 15 13.557220458984373 16 12.601896286010748 17 12.340524673461912
		 18 12.494931221008303 19 12.842394828796387 20 13.585600852966307 21 14.51360607147217
		 22 15.669857978820797 23 16.559913635253913 24 16.478965759277337 25 16.298707962036129
		 26 15.251144409179689 27 13.921010017395018 28 13.376986503601072 29 13.525222778320305
		 30 14.26292037963867 31 14.961569786071777 32 15.406118392944336 33 15.764360427856444
		 34 15.812582969665524 35 17.756534576416019 36 23.44273567199707 37 29.174196243286129
		 38 33.645355224609375 39 38.677490234374993 40 41.714004516601555 41 42.387187957763672
		 42 41.248695373535156 43 39.381851196289063 44 36.838142395019545 45 32.138004302978523
		 46 27.256959915161133 47 22.880554199218757 48 18.487442016601566 49 14.318302154541016
		 50 10.273986816406252 51 5.531937599182128 52 0.88422071933746305 53 -1.3496711254119869
		 54 -4.0187692642211905 55 -7.4919614791870135 56 -9.5085840225219727 57 -11.034387588500975
		 58 -12.473052024841305 59 -10.845061302185057 60 -6.964468002319335 61 -2.5881781578063965
		 62 3.2491991519927987 63 10.240607261657713 64 17.185121536254879 65 24.078172683715817
		 66 28.561740875244148 67 29.199512481689453 68 26.816513061523438 69 24.433502197265625
		 70 22.638502120971687 71 20.003339767456055 72 16.481836318969727 73 12.895114898681639
		 74 8.4662923812866229 75 5.0311026573181179 76 2.3853998184204115 77 0.34843391180038408
		 78 -0.59640485048294012 79 -0.8279325366020206 80 -1.1886820793151855 81 -1.675794243812561
		 82 -1.5381965637207025 83 -0.45693019032478227 84 0.95006436109542824 85 2.9435760974884038
		 86 5.3198876380920419 87 6.3383536338806126 88 6.0182204246520987 89 5.9565234184265163
		 90 6.1628813743591326 91 6.2229027748107928 92 6.4855141639709464 93 6.7273106575012234
		 94 6.9746365547180176 95 7.0967426300048819 96 6.2914018630981445 97 5.3151769638061532
		 98 5.1170830726623544 99 5.0147476196289045 100 4.8123931884765634 101 4.6323862075805664
		 102 4.3913793563842782 103 4.1463012695312473 104 3.9977593421936026 105 4.1644463539123526
		 106 4.6123504638671866 107 4.8118886947631836 108 4.801361083984375 109 4.8750576972961444
		 110 5.1224093437194833 111 5.5046758651733398 112 5.882206916809082 113 6.1730003356933612
		 114 6.5552320480346689 115 7.0060110092163068 116 7.3542966842651385 117 7.6124148368835485
		 118 7.8566069602966326 119 7.9847536087036142 120 7.9761500358581543 121 8.1358995437622088
		 122 8.4880914688110334 123 8.504429817199707 124 8.3686895370483434 125 8.4609737396240234
		 126 8.7217063903808576 127 8.7968387603759748 128 8.7597112655639648 129 8.9142789840698242
		 130 9.1344852447509783 131 9.35797214508057 132 9.686649322509771 133 10.112952232360842
		 134 10.53192138671875 135 11.159868240356445 136 12.007350921630858;
createNode animCurveTA -n "locator23_rotateZ";
	rename -uid "3B64420D-4A95-9D89-6191-A88D46A3DBFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 59.627582550048814 1 58.626514434814467
		 2 58.289714813232443 3 58.110942840576172 4 57.638442993164063 5 57.440074920654304
		 6 58.346126556396499 7 59.965980529785135 8 61.528018951416001 9 62.839340209960945
		 10 64.278915405273452 11 65.939476013183608 12 67.020942687988295 13 67.349380493164063
		 14 67.270126342773438 15 66.431221008300781 16 65.516578674316392 17 65.298507690429688
		 18 65.018821716308608 19 64.609306335449219 20 64.79628753662108 21 64.965255737304702
		 22 65.502410888671861 23 66.312210083007813 24 66.462287902832031 25 66.48728179931642
		 26 66.625732421875014 27 66.843467712402344 28 66.698577880859375 29 65.606071472167969
		 30 63.871360778808601 31 61.960376739501953 32 60.374145507812486 33 59.71214294433593
		 34 59.020782470703146 35 58.104274749755845 36 57.655696868896477 37 57.146610260009759
		 38 55.92958068847657 39 54.844291687011719 40 53.215690612792983 41 52.56060791015625
		 42 48.953529357910149 43 42.185089111328139 44 37.084949493408203 45 30.76808929443359
		 46 22.840112686157227 47 14.660829544067388 48 7.8472709655761728 49 3.6446378231048588
		 50 2.8479363918304443 51 3.7244088649749751 52 6.0450463294982919 53 9.1302175521850568
		 54 12.262265205383301 55 15.925013542175291 56 20.853374481201172 57 25.128973007202152
		 58 27.205204010009766 59 26.118520736694339 60 23.369350433349606 61 22.761850357055664
		 62 26.69249153137207 63 30.137296676635742 64 30.753334045410163 65 31.985721588134766
		 66 36.424301147460945 67 41.920295715332031 68 46.524677276611321 69 51.040561676025398
		 70 55.294960021972656 71 58.393547058105462 72 60.110504150390632 73 60.806694030761719
		 74 60.800849914550781 75 60.878959655761726 76 60.344085693359375 77 59.213886260986335
		 78 58.013126373291016 79 56.480064392089851 80 54.525516510009759 81 52.648544311523438
		 82 50.663532257080078 83 48.601188659667976 84 47.123790740966797 85 45.936244964599616
		 86 44.553405761718743 87 43.560317993164063 88 43.312416076660149 89 42.904155731201172
		 90 42.377723693847656 91 42.185901641845703 92 41.995304107666016 93 41.974945068359375
		 94 42.16667556762696 95 42.094039916992188 96 42.073234558105469 97 42.563743591308594
		 98 42.934074401855469 99 43.081043243408203 100 43.643653869628906 101 44.357948303222656
		 102 45.058540344238274 103 45.749294281005859 104 46.089885711669915 105 45.996467590332031
		 106 45.804256439208984 107 45.935340881347663 108 46.435771942138672 109 46.796684265136733
		 110 46.817417144775391 111 46.995220184326172 112 47.375457763671875 113 47.488563537597656
		 114 47.708892822265618 115 48.407871246337891 116 49.025177001953125 117 49.324062347412102
		 118 49.611446380615227 119 50.050186157226563 120 51.0059814453125 121 52.443309783935561
		 122 53.24847793579103 123 53.371658325195313 124 53.376636505126953 125 53.489414215087905
		 126 53.803421020507813 127 54.195316314697273 128 54.327384948730469 129 54.300884246826186
		 130 54.375457763671861 131 54.440288543701172 132 54.499862670898452 133 54.803432464599609
		 134 55.210449218750007 135 55.519348144531236 136 56.064834594726577;
createNode animCurveTU -n "locator23_scaleX";
	rename -uid "511A0732-4D7C-4888-B5C0-7A802F431EDF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999967 1 1 2 0.99999999999999978
		 3 0.99999999999999989 4 0.99999999999999978 5 1 6 0.99999999999999989 7 1.0000000000000002
		 8 0.99999999999999989 9 1 10 1.0000000000000002 11 0.99999999999999989 12 1 13 0.99999999999999989
		 14 0.99999999999999989 15 1.0000000000000004 16 0.99999999999999989 17 1 18 0.99999999999999989
		 19 1 20 0.99999999999999967 21 1 22 1 23 1 24 1 25 0.99999999999999989 26 1 27 1
		 28 1.0000000000000002 29 1 30 0.99999999999999989 31 1 32 1 33 1.0000000000000002
		 34 1.0000000000000002 35 0.99999999999999989 36 1 37 1 38 0.99999999999999978 39 0.99999999999999978
		 40 1.0000000000000002 41 0.99999999999999989 42 0.99999999999999978 43 1 44 1 45 1
		 46 0.99999999999999978 47 0.99999999999999989 48 0.99999999999999989 49 0.99999999999999956
		 50 0.99999999999999956 51 1 52 1.0000000000000004 53 1 54 0.99999999999999978 55 1
		 56 0.99999999999999967 57 1.0000000000000002 58 0.99999999999999967 59 1.0000000000000002
		 60 1 61 0.99999999999999978 62 0.99999999999999989 63 0.99999999999999978 64 1 65 0.99999999999999978
		 66 0.99999999999999978 67 0.99999999999999989 68 0.99999999999999967 69 1.0000000000000002
		 70 0.99999999999999989 71 1.0000000000000002 72 0.99999999999999989 73 0.99999999999999989
		 74 1 75 0.99999999999999978 76 0.99999999999999989 77 0.99999999999999989 78 0.99999999999999944
		 79 1.0000000000000002 80 1 81 0.99999999999999967 82 0.99999999999999989 83 0.99999999999999978
		 84 0.99999999999999978 85 1.0000000000000004 86 0.99999999999999944 87 1.0000000000000004
		 88 0.99999999999999989 89 1.0000000000000002 90 0.99999999999999944 91 0.99999999999999922
		 92 1.0000000000000007 93 0.99999999999999978 94 0.99999999999999989 95 1 96 1.0000000000000002
		 97 0.99999999999999989 98 0.99999999999999989 99 1.0000000000000002 100 0.99999999999999978
		 101 1 102 0.99999999999999978 103 1 104 0.99999999999999944 105 0.99999999999999944
		 106 0.99999999999999922 107 1.0000000000000004 108 1.0000000000000002 109 1.0000000000000002
		 110 0.99999999999999967 111 0.99999999999999967 112 0.99999999999999978 113 0.99999999999999989
		 114 1 115 0.99999999999999956 116 0.99999999999999978 117 0.99999999999999989 118 1
		 119 1 120 0.99999999999999967 121 1.0000000000000004 122 0.99999999999999978 123 1
		 124 1 125 0.99999999999999967 126 0.99999999999999989 127 1 128 0.99999999999999944
		 129 0.99999999999999978 130 1 131 0.99999999999999978 132 1.0000000000000002 133 0.99999999999999933
		 134 1 135 0.99999999999999967 136 0.99999999999999989;
createNode animCurveTU -n "locator23_scaleY";
	rename -uid "17176A15-48B3-C40E-F4A5-DFB1C6AC0D83";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1.0000000000000002 1 0.99999999999999989
		 2 0.99999999999999978 3 1.0000000000000004 4 0.99999999999999978 5 0.99999999999999956
		 6 1.0000000000000002 7 0.99999999999999978 8 1 9 0.99999999999999989 10 1 11 0.99999999999999989
		 12 0.99999999999999956 13 0.99999999999999989 14 0.99999999999999989 15 1 16 1.0000000000000002
		 17 1.0000000000000002 18 1.0000000000000002 19 1 20 0.99999999999999967 21 0.99999999999999978
		 22 1 23 1 24 1.0000000000000004 25 0.99999999999999967 26 1 27 1.0000000000000002
		 28 0.99999999999999989 29 0.99999999999999956 30 1 31 1.0000000000000004 32 0.99999999999999989
		 33 1.0000000000000002 34 1 35 1 36 0.99999999999999978 37 1 38 0.99999999999999989
		 39 0.99999999999999989 40 1.0000000000000002 41 0.99999999999999989 42 1.0000000000000002
		 43 0.99999999999999989 44 1 45 0.99999999999999989 46 1 47 1 48 0.99999999999999989
		 49 1.0000000000000002 50 1 51 0.99999999999999989 52 0.99999999999999967 53 1 54 1
		 55 0.99999999999999967 56 0.99999999999999978 57 0.99999999999999967 58 0.99999999999999978
		 59 0.99999999999999989 60 0.99999999999999967 61 1 62 0.99999999999999989 63 1 64 1
		 65 0.99999999999999978 66 0.99999999999999989 67 1 68 0.99999999999999978 69 1 70 1.0000000000000002
		 71 1.0000000000000002 72 1 73 1 74 1 75 1 76 0.99999999999999978 77 1 78 0.99999999999999989
		 79 1.0000000000000002 80 1.0000000000000002 81 1 82 0.99999999999999989 83 0.99999999999999989
		 84 0.99999999999999989 85 0.99999999999999978 86 0.99999999999999989 87 0.99999999999999989
		 88 1.0000000000000002 89 1 90 0.99999999999999956 91 0.99999999999999989 92 1.0000000000000002
		 93 1 94 1 95 1 96 1.0000000000000002 97 0.99999999999999989 98 0.99999999999999989
		 99 1 100 0.99999999999999978 101 1 102 0.99999999999999978 103 1 104 0.99999999999999989
		 105 0.99999999999999989 106 1 107 1 108 0.99999999999999978 109 0.99999999999999978
		 110 1 111 1 112 0.99999999999999989 113 1 114 1.0000000000000004 115 0.99999999999999967
		 116 0.99999999999999978 117 0.99999999999999989 118 0.99999999999999989 119 1 120 1
		 121 0.99999999999999989 122 0.99999999999999978 123 0.99999999999999989 124 1.0000000000000002
		 125 0.99999999999999978 126 1 127 1 128 1 129 0.99999999999999978 130 0.99999999999999989
		 131 1 132 1 133 0.99999999999999978 134 0.99999999999999978 135 1 136 0.99999999999999989;
createNode animCurveTU -n "locator23_scaleZ";
	rename -uid "24EC84EF-48A9-C97E-AA3B-ABAE42FA3A51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999989 1 1 2 0.99999999999999978
		 3 1.0000000000000002 4 1 5 1 6 0.99999999999999989 7 1 8 0.99999999999999978 9 1.0000000000000002
		 10 0.99999999999999989 11 0.99999999999999967 12 0.99999999999999989 13 1 14 1 15 1.0000000000000002
		 16 1 17 1.0000000000000002 18 1.0000000000000002 19 1.0000000000000004 20 1 21 0.99999999999999956
		 22 1 23 1.0000000000000002 24 1 25 1 26 0.99999999999999989 27 1 28 1.0000000000000004
		 29 1 30 0.99999999999999989 31 1.0000000000000002 32 0.99999999999999989 33 1.0000000000000002
		 34 0.99999999999999978 35 1 36 0.99999999999999978 37 1.0000000000000002 38 0.99999999999999978
		 39 1.0000000000000002 40 1 41 0.99999999999999978 42 0.99999999999999967 43 1 44 0.99999999999999989
		 45 0.99999999999999978 46 0.99999999999999989 47 1 48 1 49 0.99999999999999956 50 0.99999999999999978
		 51 0.99999999999999989 52 1 53 1 54 0.99999999999999989 55 1 56 1 57 1 58 0.99999999999999967
		 59 1.0000000000000002 60 0.99999999999999989 61 0.99999999999999978 62 0.99999999999999989
		 63 0.99999999999999989 64 1.0000000000000002 65 0.99999999999999978 66 1 67 0.99999999999999967
		 68 0.99999999999999978 69 1 70 1 71 1.0000000000000002 72 0.99999999999999978 73 0.99999999999999989
		 74 1.0000000000000004 75 1 76 0.99999999999999978 77 0.99999999999999967 78 0.99999999999999978
		 79 1 80 1 81 0.99999999999999978 82 0.99999999999999989 83 1 84 0.99999999999999978
		 85 1.0000000000000002 86 0.99999999999999933 87 1.0000000000000004 88 1 89 1 90 0.99999999999999944
		 91 0.99999999999999933 92 1.0000000000000004 93 1 94 1 95 0.99999999999999978 96 1.0000000000000004
		 97 0.99999999999999989 98 0.99999999999999989 99 1.0000000000000004 100 0.99999999999999978
		 101 0.99999999999999978 102 1 103 1 104 0.99999999999999967 105 0.99999999999999933
		 106 0.99999999999999944 107 1.0000000000000002 108 1.0000000000000002 109 1 110 1
		 111 0.99999999999999967 112 1 113 0.99999999999999989 114 1 115 0.99999999999999956
		 116 0.99999999999999956 117 0.99999999999999989 118 1.0000000000000002 119 0.99999999999999978
		 120 0.99999999999999967 121 1 122 0.99999999999999956 123 0.99999999999999989 124 1.0000000000000002
		 125 0.99999999999999978 126 1.0000000000000002 127 1 128 0.99999999999999956 129 0.99999999999999956
		 130 1.0000000000000002 131 1 132 1.0000000000000002 133 0.99999999999999978 134 1.0000000000000002
		 135 0.99999999999999967 136 0.99999999999999967;
createNode animCurveTU -n "locator24_visibility";
	rename -uid "1949EBBA-40D4-6A71-1806-B8A819A50AB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1
		 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1
		 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1
		 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTL -n "locator24_translateX";
	rename -uid "39071B08-4F18-C328-9E46-28A0687F69FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -23.679521235562799 1 -23.998561490510205
		 2 -24.071604037004107 3 -24.099955739426221 4 -24.251239925084704 5 -24.321260546446446
		 6 -24.01222687741711 7 -23.471628518098584 8 -22.975309005125581 9 -22.573273485206741
		 10 -22.098263500247079 11 -21.46439971569734 12 -21.041026125897041 13 -20.940740422957902
		 14 -21.008430710958187 15 -21.415047567064466 16 -21.853210490301116 17 -21.958704604315184
		 18 -22.07237249637426 19 -22.232305292110276 20 -22.117059917061077 21 -21.998474772655836
		 22 -21.708370948352378 23 -21.314272783372139 24 -21.25469011455468 25 -21.253871837096078
		 26 -21.249531272106871 27 -21.219761924732367 28 -21.30723554896732 29 -21.772688122226629
		 30 -22.475942987080156 31 -23.236927699376437 32 -23.861285112992217 33 -24.106388923838761
		 34 -24.381299457369487 35 -24.60277485345151 36 -24.258701190623245 37 -23.780561337413495
		 38 -23.577172330466439 39 -23.10796399028753 40 -23.037779919409019 41 -23.094075385388393
		 42 -24.338769184627466 43 -26.538456266776393 44 -28.368493433354288 45 -30.849818099464258
		 46 -33.402256120714476 47 -35.408541734631157 48 -36.75027746714229 49 -37.514951944195971
		 50 -37.954117466864552 51 -38.246165733770923 52 -38.276248687149895 53 -38.073989383524008
		 54 -37.732278277102779 55 -37.137291351426903 56 -36.253124839123615 57 -35.333270231322132
		 58 -34.769954725303116 59 -35.144843638507652 60 -35.961853615577056 61 -36.239893194509904
		 62 -35.427299003573182 63 -34.287295633953363 64 -33.450988118553099 65 -32.152731880005078
		 66 -30.26895508729487 67 -28.676515065744979 68 -27.688825934990177 69 -26.530936563427417
		 70 -25.223097938463098 71 -24.30380024406557 72 -23.896949845410873 73 -23.830246311172971
		 74 -24.027195354034731 75 -24.089860267770092 76 -24.356586826032597 77 -24.842806018453217
		 78 -25.340364142091005 79 -25.966052514738919 80 -26.746897262386952 81 -27.47711559290903
		 82 -28.234456749161552 83 -29.003730789140789 84 -29.534052216940104 85 -29.929894888208622
		 86 -30.347144544549145 87 -30.644836818695836 88 -30.73933658218975 89 -30.876452116485602
		 90 -31.040980839478955 91 -31.100997960948245 92 -31.152217155561903 93 -31.148742910917502
		 94 -31.076119945556343 95 -31.094228236154112 96 -31.134813097633227 97 -31.010637148223736
		 98 -30.895419141535577 99 -30.850107527798549 100 -30.66921063575036 101 -30.434094922958032
		 102 -30.201890233878061 103 -29.969767109482405 104 -29.854741920411684 105 -29.883335253521693
		 106 -29.9386220140956 107 -29.887510716272672 108 -29.712954823733718 109 -29.583875823625803
		 110 -29.569390291849459 111 -29.494817211182635 112 -29.347580005580056 113 -29.297288576160597
		 114 -29.204832745448371 115 -28.9366756759932 116 -28.699078574365679 117 -28.579434480170143
		 118 -28.463884335681364 119 -28.296992147073439 120 -27.942314266202423 121 -27.392699372401921
		 122 -27.069203210122673 123 -27.021031206425377 124 -27.024884116653304 125 -26.977433782702057
		 126 -26.844706632563522 127 -26.689174135132092 128 -26.63930182751114 129 -26.642906248398447
		 130 -26.604043958506907 131 -26.568603667891573 132 -26.530015460303829 133 -26.390884848025621
		 134 -26.210562391925244 135 -26.056635856986802 136 -25.795408891989503;
createNode animCurveTL -n "locator24_translateY";
	rename -uid "12C57106-4ADA-57E5-9EAC-2182C1035034";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -22.855185798917447 1 -22.509822212460818
		 2 -22.340072224751779 3 -22.234183537942016 4 -22.079000284076244 5 -22.024502116120459
		 6 -22.291870370733307 7 -22.801017240325592 8 -23.357149894664659 9 -23.875686790582947
		 10 -24.408871865882816 11 -24.873536552621104 12 -25.164288429279495 13 -25.322330229581326
		 14 -25.387719985871215 15 -25.332761907690411 16 -25.252454286931439 17 -25.234335038340291
		 18 -25.163934170946206 19 -25.047804585849164 20 -25.01096500399953 21 -24.945658406703956
		 22 -24.918397316921556 23 -24.963127303749928 24 -25.001380528503432 25 -25.028691659556699
		 26 -25.181409460802385 27 -25.371383541343334 28 -25.401723143902785 29 -25.177653195579822
		 30 -24.750640398947155 31 -24.265311581658011 32 -23.857025834531584 33 -23.661780663504828
		 34 -23.491572631897697 35 -23.036500236487001 36 -22.105145738904724 37 -20.946373218023012
		 38 -19.72397199096406 39 -18.295316756563722 40 -17.169844548149683 41 -16.852508851265583
		 42 -16.31185071849913 43 -14.975884100837249 44 -13.96112179348485 45 -12.585132448535532
		 46 -10.13182460467614 47 -7.0169786638892617 48 -4.1299422507212569 49 -2.2396853746973591
		 50 -1.88596804390383 51 -2.3249202447278208 52 -3.4564776477136263 53 -4.9414582876854638
		 54 -6.4234573135132393 55 -8.0987391343655588 56 -10.299613199904883 57 -12.129347569143349
		 58 -12.952951494704791 59 -12.562573294775731 60 -11.486873592821944 61 -11.285770422084651
		 62 -13.011186686833387 63 -14.280644835658734 64 -14.12580599334207 65 -13.989482938768191
		 66 -15.04420759823725 67 -16.761961961156132 68 -18.555802147141549 69 -20.235273690456864
		 70 -21.649658818382726 71 -22.806082629008074 72 -23.671236142339993 73 -24.216912088598356
		 74 -24.563648984878697 75 -24.753280921144377 76 -24.698478861217119 77 -24.442577715836691
		 78 -24.137865130890674 79 -23.733694857692797 80 -23.193350231142986 81 -22.647382638675268
		 82 -22.050718362922282 83 -21.40876859020733 84 -20.924988453915574 85 -20.504401013265152
		 86 -19.973559886852598 87 -19.5936235869477 88 -19.51817008585212 89 -19.376263960700385
		 90 -19.181970411771431 91 -19.111293788172645 92 -19.033519851869585 93 -19.017172675531754
		 94 -19.076232563659175 95 -19.04537901573805 96 -19.068500773486079 97 -19.276123380695751
		 98 -19.413662594447842 99 -19.468678109782047 100 -19.672489202169615 101 -19.926317774450723
		 102 -20.173994430798331 103 -20.415316121473055 104 -20.53384196941677 105 -20.498263619621909
		 106 -20.421497239961539 107 -20.459982301122778 108 -20.628053646082037 109 -20.745892218104501
		 110 -20.745126403707047 111 -20.791338634676265 112 -20.902941769297669 113 -20.928988064588509
		 114 -20.98553487138777 115 -21.191721157492637 116 -21.372183984431246 117 -21.453963039197362
		 118 -21.531753223842912 119 -21.661404650985276 120 -21.954237900828815 121 -22.374056490266867
		 122 -22.588154135106791 123 -22.622584547398517 124 -22.631778692580127 125 -22.658805420441212
		 126 -22.732994001592004 127 -22.839125432312827 128 -22.878405514747996 129 -22.861611053973675
		 130 -22.868839287686924 131 -22.87274676351069 132 -22.867835669685576 133 -22.922858014415766
		 134 -23.004558234764431 135 -23.041101624570061 136 -23.118696799508513;
createNode animCurveTL -n "locator24_translateZ";
	rename -uid "3C226E08-430C-0EB2-07DF-5F8E71E435CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 8.0266991393150988 1 8.3554280263686422
		 2 8.6107381766025952 3 8.786557531690697 4 8.904097135581523 5 8.9233293530732141
		 6 8.7799400198374187 7 8.4007390756274667 8 7.7932961104840945 9 7.0606713937033856
		 10 6.2724066875753373 11 5.7740540367924069 12 5.4413148961937488 13 5.0585603608417031
		 14 4.7321628088604228 15 4.294394319944363 16 3.842227215452592 17 3.718217787351179
		 18 3.7914939522648083 19 3.9562260297781542 20 4.3078055152139711 21 4.7452530842382075
		 22 5.2877182776109279 23 5.7032210896097197 24 5.6655097768491842 25 5.5814763766009747
		 26 5.0916163516187325 27 4.466115752932069 28 4.2092275286101284 29 4.2792829061732505
		 30 4.6272593310879842 31 4.9557685823115492 32 5.1642441960075587 33 5.3319220719380809
		 34 5.3544705116225231 35 6.2588007256553624 36 8.8441466817778007 37 11.33969741431585
		 38 13.193503657076818 39 15.167059506711603 40 16.293998198912401 41 16.536900819224805
		 42 16.124610632745423 43 15.432946700806724 44 14.460467256425446 45 12.578492101994186
		 46 10.518823726520992 47 8.5930108836007548 48 6.5963704732284896 49 4.65335856813806
		 50 2.7336022886077558 51 0.45185597886785445 52 -1.8024297074856861 53 -2.8878557339695874
		 54 -4.1832991621380415 55 -5.8622487276849427 56 -6.8313633443370918 57 -7.5608884912450947
		 58 -8.2452991465233367 59 -7.4705661773885197 60 -5.6079706242619238 61 -3.4893186213249976
		 62 -0.65406002890813397 63 2.717639192150358 64 5.9939632541826313 65 9.1267639622050183
		 66 11.079087030113044 67 11.350449544475765 68 10.328178438623468 69 9.2841778344375712
		 70 8.4845331270767019 71 7.2917821988818616 72 5.6668532861468748 73 3.9812082768748382
		 74 1.866940249986726 75 0.20950737967405075 76 -1.0733020257229668 77 -2.0627818371907836
		 78 -2.5218956156417676 79 -2.6343898877374556 80 -2.8096574205892466 81 -3.0462807095100004
		 82 -2.979442236738862 83 -2.4541119546168488 84 -1.7704382389555633 85 -0.80234489458652547
		 86 0.34928474636532769 87 0.84161956817209216 88 0.68696323970505091 89 0.65714721491596606
		 90 0.75686204132355783 91 0.78585827527552965 92 0.91268423451205649 93 1.0293990669517541
		 94 1.1487223692478494 95 1.2076094511571682 96 0.81894405449804708 97 0.34700740872213487
		 98 0.25114634111631062 99 0.20161240884388576 100 0.10364389633579663 101 0.016470082816653075
		 102 -0.10027907792829183 103 -0.21903901264175829 104 -0.29103774176419961 105 -0.21024607391029804
		 106 0.0067630819987982704 107 0.10339545239807535 108 0.09829705860997251 109 0.13398009639902853
		 110 0.2537170779154394 111 0.43867076000645966 112 0.62121587950633739 113 0.76173682816528299
		 114 0.94632732094348171 115 1.1638396395736947 116 1.33175285319507 117 1.4561101460093937
		 118 1.573689058449844 119 1.6353641246654149 120 1.6312234809392976 121 1.7080833370491746
		 122 1.8774237820904318 123 1.8852750552811699 124 1.820028405431799 125 1.8643882109375909
		 126 1.9896619824972106 127 2.0257434115329715 128 2.0079124219826667 129 2.0821285155221858
		 130 2.1878070576017876 131 2.2949932152099279 132 2.4525043440988554 133 2.6565703611567812
		 134 2.856862329715824 135 3.1565453717523155 136 3.5599674544826314;
createNode animCurveTA -n "locator24_rotateX";
	rename -uid "31F8B011-4129-EF3C-8BB7-7E8B038CB934";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 57.735961186144422 1 59.075858328438564
		 2 59.862891900352359 3 60.398347950588416 4 61.214785875436341 5 61.839610416366611
		 6 61.131544910000812 7 59.276941596300382 8 57.165422981162408 9 55.107009683754107
		 10 53.247148304934854 11 52.720096194557122 12 53.495791222477372 13 53.00346713137187
		 14 51.490950879177191 15 49.186425059882453 16 47.033550133818729 17 45.451620472380341
		 18 43.355653164658072 19 41.409898486295063 20 39.971309019301152 21 39.950037553415406
		 22 40.366809394113687 23 40.002333630099109 24 40.351697673357123 25 41.120792134988214
		 26 41.318888092657069 27 39.139221664722406 28 38.161968067782261 29 40.151899884908048
		 30 40.609212294951689 31 42.450817210595012 32 46.026622115510037 33 49.176653472537396
		 34 51.439047664389157 35 54.902344046711754 36 62.550994529506731 37 72.713474592988888
		 38 86.507478895348328 39 -73.114285169446219 40 -58.593967320875635 41 -54.478995237360159
		 42 -49.482754347040981 43 -44.299557523533345 44 -46.829238311215519 45 -78.177701276208239
		 46 4.1551957265185555 47 -5.3796927777768557 48 -2.6694759167729325 49 -0.44469690701842152
		 50 -2.2781126890520627 51 -7.9152861193752955 52 -17.11790442141632 53 -24.30560882459131
		 54 -27.525208911279218 55 -29.877343280264725 56 -31.820712636035744 57 -29.442758860394299
		 58 -24.53386518774256 59 -19.780030423411453 60 -15.649832060981323 61 -12.060130076320565
		 62 -7.1956762622600507 63 5.1572951264834979 64 23.270308646536439 65 40.323370540582332
		 66 46.526041543091416 67 40.842469991913831 68 35.893797041253571 69 33.492040749874867
		 70 31.694411256528078 71 29.81681443264932 72 27.128385410676888 73 23.156520046031638
		 74 19.55870708496187 75 17.034745676362597 76 15.014446637323244 77 12.641336781407064
		 78 9.5922476734918281 79 5.5173597656101219 80 0.37800122757458055 81 -5.3343516364944419
		 82 -12.0582046486688 83 -19.694732875407411 84 -28.429190564940477 85 -39.886877492476096
		 86 -50.227349353111236 87 -58.087914587554152 88 -65.367483577619765 89 -71.096029134342217
		 90 -76.056397104818984 91 -80.683083981753526 92 -84.479859734877138 93 -86.435702649353303
		 94 -86.871460378334206 95 -86.740683931418531 96 -85.114819424153183 97 -81.681104715363048
		 98 -77.970742958522393 99 -74.318715066069089 100 -70.402017601942589 101 -65.595621931097781
		 102 -60.202881713581782 103 -54.725866822003589 104 -49.095844976308285 105 -43.778437735450595
		 106 -38.744773926268785 107 -33.283686225242342 108 -27.987927823229072 109 -24.58918790314943
		 110 -21.819537042905839 111 -16.749104015526914 112 -9.5781000477456715 113 -3.1437881651165456
		 114 -0.053966750841996119 115 0.84975892419770449 116 2.1790087974101686 117 3.9868780089147449
		 118 6.0449842575204382 119 7.6020482662703763 120 8.4619254796932957 121 9.4026687737957975
		 122 11.038211542677137 123 12.720766951584025 124 14.057153733980915 125 15.532294135223232
		 126 18.062618152276194 127 21.019686172689291 128 23.053986505293395 129 24.586465150887058
		 130 26.234801322850512 131 27.971122032173543 132 29.645460228708203 133 31.100384882482189
		 134 32.286579208420491 135 33.555479686682972 136 35.079427741381537;
createNode animCurveTA -n "locator24_rotateY";
	rename -uid "C7225028-458B-D076-F177-398FB0209F39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 40.516496829137211 1 42.957152889091212
		 2 44.762171380663041 3 46.178286137980088 4 47.469441459133513 5 48.210502175666285
		 6 47.817381748377507 7 46.018458647298758 8 43.025148161516356 9 39.62316937222171
		 10 35.99966400919628 11 31.689911889580006 12 28.078595393624493 13 26.176636674748231
		 14 25.399478587388298 15 26.120018929004853 16 27.541055853371848 17 28.52913101676311
		 18 29.766355068181831 19 30.922836836033493 20 30.9240870200309 21 30.350336526734939
		 22 29.373591977962384 23 28.302018627135894 24 28.019574335855872 25 27.846725800557987
		 26 27.217177034192321 27 26.378740040538805 28 26.647285463228464 29 28.651813717809549
		 30 31.853354692037747 31 35.205896838183371 32 38.296099128884208 33 40.504396691835545
		 34 42.348442944279988 35 44.831178797956206 36 48.621557280922147 37 51.99457087077559
		 38 54.834095914846685 39 122.70283909808867 40 122.12111825733571 41 120.15858893540209
		 42 117.94701436942691 43 115.39132779775113 44 109.65187920734694 45 97.496449482010874
		 46 76.846519451031526 47 61.743011188703861 48 45.85936807136757 49 31.814886917115551
		 50 25.978939576668907 51 25.577060725156034 52 27.385403563763862 53 29.461558392945506
		 54 30.480301603696066 55 29.634497201166919 56 28.867474992454248 57 29.437061211117644
		 58 31.426080315116909 59 35.873401498455401 60 43.128549939612462 61 51.614474589462596
		 62 60.405015714402367 63 67.376985826257723 64 71.603877544864105 65 73.86858070384217
		 66 71.256718063016223 67 64.435043062208251 68 56.817563911858642 69 47.793756592030483
		 70 36.342988932090087 71 26.989132735429518 72 21.596087494904499 73 17.844074677149464
		 74 16.72561093749076 75 16.186378107358795 76 17.177486496320338 77 19.912369952764426
		 78 23.207845183187622 79 27.089928510574179 80 31.725585996081538 81 36.854593501014122
		 82 43.268528766852569 83 49.583668974675277 84 54.656038651372334 85 58.475266348268086
		 86 60.459400086525129 87 60.664594421316707 88 60.024570498877608 89 59.70861385556244
		 90 59.419224496314506 91 58.772012546179376 92 58.370809017487531 93 58.840881016498045
		 94 60.389907614676808 95 62.005496584245044 96 62.645944355169568 97 63.233203706906259
		 98 64.635317196562156 99 65.87700209623614 100 66.737334745431113 101 67.516949293159229
		 102 67.908702406727329 103 67.87247386651066 104 67.5401660798086 105 66.8671295632967
		 106 66.076640369877936 107 65.180701952992038 108 63.966674157239147 109 62.742379895767179
		 110 61.57037218146079 111 60.354098986658663 112 58.813898503565312 113 56.999254476940273
		 114 55.597449830911145 115 54.425276943118313 116 53.05224100732368 117 51.667677284108088
		 118 50.251415152910688 119 48.956257708637303 120 47.474258973226078 121 45.320449931804362
		 122 43.429049493056034 123 42.323849307116234 124 41.547109175242404 125 40.831864139110941
		 126 39.827838093068593 127 38.485910702097534 128 37.506913262359781 129 37.021287991379417
		 130 36.612433917727067 131 36.245448323020796 132 35.907778425651195 133 35.607368146626335
		 134 35.523652790067345 135 35.62055199431051 136 35.579401214422099;
createNode animCurveTA -n "locator24_rotateZ";
	rename -uid "D6FA5985-4C7C-B9FF-6235-94AC29023BED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 86.02072497948879 1 87.938798938371818
		 2 89.57974382783604 3 90.931813674919596 4 92.211362237474376 5 93.251391078572439
		 6 93.450940995375362 7 92.504645764944954 8 90.63963223513106 9 88.505855806823917
		 10 86.635848144889067 11 84.513679046432031 12 82.713256335190209 13 81.503509671202764
		 14 80.635284467228502 15 80.537064450051844 16 80.928401477512551 17 81.062763662077046
		 18 80.668324741145284 19 79.951260378567014 20 78.918062021941623 21 77.982342995065665
		 22 77.078794450552863 23 76.229232252847439 24 76.328818637109592 25 76.608742995256733
		 26 77.123110738662191 27 76.937889233804086 28 77.049819803825571 29 78.12751505876399
		 30 78.506892661996119 31 79.590140920854907 32 82.217334686900287 33 85.194462974153879
		 34 87.650639449483549 35 90.009007144525597 36 94.657071371644051 37 101.65547756508623
		 38 113.78179768364392 39 -44.232385355588647 40 -27.995264473683509 41 -22.035910066669022
		 42 -16.529578951485934 43 -14.144855074197377 44 -18.951775920015912 45 -51.950015565120353
		 46 26.399874944042171 47 10.993473517276517 48 6.5525969407302593 49 3.5066517170220366
		 50 2.2209569394523125 51 0.98408451021575372 52 -1.7785989142050402 53 -3.9118736199946453
		 54 -4.292543293325128 55 -3.555060326086219 56 -0.82595729444512789 57 4.3243220356680379
		 58 9.0107357770017238 59 11.086604575196539 60 11.121997860077299 61 12.915724708325575
		 62 20.629160275099309 63 34.541535423831014 64 50.725383298191801 65 66.492869508740228
		 66 73.889671034746314 67 70.406059353593022 68 67.86692540084502 69 66.703300444489827
		 70 64.161243344146726 71 62.607070964072243 72 62.828317612176662 73 62.970600717667594
		 74 63.750760739094858 75 64.281823309835019 76 64.263527625378771 77 63.50880707838683
		 78 61.915645876745948 79 59.069914042067801 80 54.73096250182094 81 49.318102458919746
		 82 42.096788631902683 83 33.254542307197788 84 23.570632743047003 85 11.518877816141334
		 86 0.47179286294729067 87 -7.9883062704129673 88 -15.713478730758002 89 -22.214635656142001
		 90 -28.019916364229498 91 -33.230891284395234 92 -37.539879740117314 93 -39.782717096134753
		 94 -40.257192537193546 95 -40.429030396911863 96 -39.175510805883611 97 -35.481178740444015
		 98 -31.428538737619803 99 -27.66882110599439 100 -23.238529610156125 101 -17.764486619167911
		 102 -11.705657854782245 103 -5.5428110400423884 104 0.44888279529665231 105 5.7884507753502943
		 106 10.757246303983703 107 16.289194342708186 108 21.923432135983422 109 25.609276290185282
		 110 28.344527789056396 111 33.132857268689506 112 39.671556145615526 113 45.036383445924564
		 114 47.667869316509062 115 49.038293802821478 116 50.5978579201931 117 52.122894455253459
		 118 53.732634062833313 119 55.097429839963624 120 56.460442179779328 121 58.211587219658647
		 122 59.685790875214906 123 60.600397212436832 124 61.247141742829243 125 62.025275599037926
		 126 63.446259686815836 127 65.049362059176786 128 65.967911039188209 129 66.536831998465985
		 130 67.255698501509528 131 68.010765823088093 132 68.677685412602131 133 69.421806718004447
		 134 70.220853361321048 135 70.946753726730293 136 71.833085191464917;
createNode animCurveTU -n "locator24_scaleX";
	rename -uid "58B69DA3-4A79-BE6A-9B40-0EBCE97EBB92";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999989 1 1.0000000000000002
		 2 1 3 1.0000000000000002 4 0.99999999999999978 5 0.99999999999999978 6 1 7 1 8 0.99999999999999978
		 9 1.0000000000000002 10 1 11 1.0000000000000002 12 0.99999999999999989 13 0.99999999999999989
		 14 1 15 1.0000000000000004 16 1 17 1 18 1 19 0.99999999999999989 20 0.99999999999999967
		 21 0.99999999999999989 22 0.99999999999999989 23 0.99999999999999956 24 1.0000000000000004
		 25 0.99999999999999989 26 0.99999999999999989 27 1.0000000000000002 28 1 29 0.99999999999999967
		 30 1 31 1.0000000000000002 32 0.99999999999999989 33 1 34 1 35 0.99999999999999967
		 36 0.99999999999999989 37 1.0000000000000002 38 1 39 0.99999999999999989 40 1.0000000000000004
		 41 0.99999999999999989 42 0.99999999999999978 43 1 44 1 45 1.0000000000000002 46 0.99999999999999989
		 47 0.99999999999999989 48 1 49 0.99999999999999944 50 0.99999999999999956 51 1 52 1.0000000000000004
		 53 1 54 0.99999999999999989 55 1 56 0.99999999999999967 57 0.99999999999999989 58 0.99999999999999956
		 59 1.0000000000000002 60 0.99999999999999967 61 0.99999999999999978 62 0.99999999999999989
		 63 0.99999999999999978 64 1.0000000000000002 65 1 66 0.99999999999999978 67 0.99999999999999989
		 68 0.99999999999999978 69 1 70 1.0000000000000002 71 1.0000000000000002 72 1 73 0.99999999999999989
		 74 1 75 1 76 0.99999999999999944 77 0.99999999999999989 78 0.99999999999999967 79 1.0000000000000002
		 80 1 81 0.99999999999999978 82 0.99999999999999978 83 0.99999999999999978 84 0.99999999999999989
		 85 1 86 0.99999999999999978 87 1.0000000000000002 88 1 89 1 90 0.99999999999999922
		 91 0.99999999999999967 92 1.0000000000000004 93 1 94 0.99999999999999978 95 0.99999999999999978
		 96 1 97 0.99999999999999989 98 0.99999999999999989 99 1 100 0.99999999999999967 101 1
		 102 0.99999999999999967 103 1 104 0.99999999999999956 105 0.99999999999999967 106 0.99999999999999956
		 107 1.0000000000000002 108 0.99999999999999989 109 0.99999999999999978 110 0.99999999999999967
		 111 0.99999999999999989 112 0.99999999999999978 113 1 114 1.0000000000000002 115 0.99999999999999944
		 116 0.99999999999999978 117 0.99999999999999956 118 1 119 1 120 0.99999999999999978
		 121 1.0000000000000002 122 0.99999999999999978 123 0.99999999999999989 124 1.0000000000000002
		 125 0.99999999999999978 126 0.99999999999999989 127 0.99999999999999978 128 0.99999999999999944
		 129 0.99999999999999989 130 0.99999999999999989 131 1.0000000000000002 132 1.0000000000000002
		 133 0.99999999999999956 134 0.99999999999999978 135 0.99999999999999989 136 0.99999999999999967;
createNode animCurveTU -n "locator24_scaleY";
	rename -uid "7D3E8C6D-4D07-F623-73E8-1E954803EAD7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999989 1 0.99999999999999989
		 2 1 3 1 4 0.99999999999999989 5 0.99999999999999978 6 1 7 0.99999999999999989 8 0.99999999999999978
		 9 0.99999999999999989 10 1 11 0.99999999999999989 12 0.99999999999999978 13 0.99999999999999989
		 14 0.99999999999999989 15 1.0000000000000002 16 0.99999999999999989 17 1.0000000000000002
		 18 1.0000000000000002 19 1.0000000000000004 20 0.99999999999999978 21 0.99999999999999956
		 22 1.0000000000000002 23 1.0000000000000002 24 1.0000000000000002 25 1 26 1.0000000000000004
		 27 1.0000000000000002 28 1 29 0.99999999999999978 30 1 31 1.0000000000000002 32 0.99999999999999989
		 33 1.0000000000000002 34 1 35 1 36 0.99999999999999967 37 1.0000000000000002 38 0.99999999999999989
		 39 0.99999999999999989 40 1.0000000000000002 41 1 42 1 43 0.99999999999999989 44 1
		 45 0.99999999999999989 46 1 47 1 48 0.99999999999999978 49 1.0000000000000002 50 1
		 51 0.99999999999999989 52 0.99999999999999967 53 1.0000000000000002 54 1 55 0.99999999999999978
		 56 0.99999999999999989 57 0.99999999999999978 58 0.99999999999999978 59 0.99999999999999989
		 60 0.99999999999999978 61 0.99999999999999989 62 1 63 0.99999999999999989 64 0.99999999999999989
		 65 0.99999999999999978 66 0.99999999999999989 67 1 68 0.99999999999999967 69 1.0000000000000002
		 70 0.99999999999999989 71 1.0000000000000002 72 1 73 1 74 1.0000000000000002 75 0.99999999999999989
		 76 1.0000000000000002 77 0.99999999999999989 78 0.99999999999999956 79 1 80 1 81 0.99999999999999978
		 82 1 83 1 84 0.99999999999999989 85 0.99999999999999989 86 0.99999999999999956 87 1
		 88 1 89 1.0000000000000002 90 0.99999999999999956 91 0.99999999999999944 92 1.0000000000000004
		 93 1 94 1 95 1.0000000000000002 96 1.0000000000000002 97 0.99999999999999967 98 1
		 99 1.0000000000000002 100 0.99999999999999989 101 0.99999999999999989 102 1 103 1
		 104 0.99999999999999956 105 0.99999999999999978 106 0.99999999999999967 107 1 108 1
		 109 1 110 1 111 0.99999999999999989 112 1 113 0.99999999999999989 114 1 115 0.99999999999999967
		 116 0.99999999999999989 117 0.99999999999999978 118 0.99999999999999989 119 1 120 0.99999999999999989
		 121 1 122 0.99999999999999989 123 1 124 1 125 0.99999999999999989 126 1 127 1 128 0.99999999999999967
		 129 0.99999999999999956 130 1 131 0.99999999999999967 132 1 133 0.99999999999999956
		 134 1 135 0.99999999999999967 136 1;
createNode animCurveTU -n "locator24_scaleZ";
	rename -uid "6E4AAFB2-43FC-F45E-0D21-E98D5EF66470";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999989 1 0.99999999999999989
		 2 0.99999999999999978 3 1.0000000000000002 4 1 5 1 6 1 7 1 8 1 9 1.0000000000000002
		 10 1 11 0.99999999999999989 12 1.0000000000000002 13 0.99999999999999989 14 1 15 1.0000000000000004
		 16 1 17 1.0000000000000002 18 1.0000000000000002 19 1.0000000000000002 20 1 21 0.99999999999999967
		 22 1.0000000000000002 23 1.0000000000000004 24 1 25 1 26 0.99999999999999989 27 1
		 28 1.0000000000000002 29 1 30 0.99999999999999989 31 1.0000000000000002 32 1 33 1.0000000000000002
		 34 0.99999999999999989 35 1.0000000000000002 36 0.99999999999999989 37 1 38 0.99999999999999967
		 39 1 40 1 41 0.99999999999999978 42 0.99999999999999967 43 0.99999999999999978 44 0.99999999999999989
		 45 0.99999999999999978 46 0.99999999999999978 47 1 48 0.99999999999999989 49 0.99999999999999956
		 50 0.99999999999999978 51 0.99999999999999989 52 1 53 1 54 0.99999999999999989 55 1
		 56 1 57 0.99999999999999989 58 0.99999999999999967 59 1.0000000000000004 60 0.99999999999999989
		 61 0.99999999999999978 62 0.99999999999999989 63 0.99999999999999989 64 1 65 0.99999999999999978
		 66 1 67 0.99999999999999978 68 0.99999999999999967 69 1.0000000000000002 70 1.0000000000000002
		 71 1.0000000000000002 72 0.99999999999999978 73 0.99999999999999989 74 1.0000000000000004
		 75 1 76 0.99999999999999956 77 0.99999999999999967 78 0.99999999999999989 79 1 80 1
		 81 1 82 0.99999999999999989 83 0.99999999999999989 84 0.99999999999999967 85 1.0000000000000002
		 86 0.99999999999999944 87 1.0000000000000004 88 1 89 1 90 0.99999999999999956 91 0.99999999999999933
		 92 1.0000000000000004 93 1 94 1 95 1 96 1.0000000000000002 97 0.99999999999999989
		 98 0.99999999999999989 99 1.0000000000000002 100 0.99999999999999978 101 0.99999999999999978
		 102 0.99999999999999989 103 1 104 0.99999999999999978 105 0.99999999999999933 106 0.99999999999999944
		 107 1.0000000000000002 108 1.0000000000000002 109 1 110 1 111 0.99999999999999944
		 112 1 113 0.99999999999999978 114 1 115 0.99999999999999956 116 0.99999999999999956
		 117 0.99999999999999989 118 1.0000000000000002 119 0.99999999999999978 120 0.99999999999999967
		 121 1 122 0.99999999999999944 123 0.99999999999999978 124 1.0000000000000002 125 0.99999999999999978
		 126 1.0000000000000002 127 1 128 0.99999999999999944 129 0.99999999999999967 130 1
		 131 1 132 1.0000000000000002 133 0.99999999999999967 134 1.0000000000000002 135 0.99999999999999967
		 136 0.99999999999999989;
createNode animCurveTU -n "locator25_visibility";
	rename -uid "81C8170C-4DC1-1434-BAE7-349AA9171FAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1
		 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1
		 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1
		 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTL -n "locator25_translateX";
	rename -uid "676554E3-4EC5-A177-69F1-C4A51F6111A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -25.173985338058252 1 -24.744210734989103
		 2 -24.219091063038057 3 -23.780912679846466 4 -23.512277232394418 5 -23.250495967537031
		 6 -22.867129420823439 7 -22.611894195794491 8 -22.744067972876046 9 -23.142190305618904
		 10 -23.443122749785712 11 -23.768997692088483 12 -24.211174066564645 13 -24.696969446926662
		 14 -25.172437707948063 15 -25.596878676134466 16 -25.813582553193516 17 -25.825227584332289
		 18 -26.059754548674807 19 -26.472652079576719 20 -26.788145145018653 21 -27.088501909402062
		 22 -27.228586082367471 23 -27.251477414952699 24 -27.165356191322026 25 -27.055020077330795
		 26 -26.863758082391065 27 -26.955592194215157 28 -26.98147573108599 29 -26.887194796229146
		 30 -27.270369276972588 31 -27.419295747480266 32 -26.871941611276824 33 -25.910840286715995
		 34 -25.23950686186565 35 -24.59957079333785 36 -22.738240148342236 37 -20.256548571317012
		 38 -16.997668909700039 39 -12.141230232989145 40 -9.7375336306005948 41 -9.9014444423171426
		 42 -11.610955194449772 43 -14.75934692164715 44 -19.357775587844614 45 -28.571795677842481
		 46 -39.176435540408548 47 -48.574016596417778 48 -56.350182907889348 49 -61.542444789081898
		 50 -63.401317281343289 51 -63.795139554396087 52 -63.418203919551523 53 -62.682015809824783
		 54 -62.077662387539092 55 -61.713234196478069 56 -61.059184682368027 57 -59.934488678913134
		 58 -58.644990394100112 59 -57.671665766224322 60 -56.24851795180772 61 -53.385591010631998
		 62 -48.520824117044455 63 -43.263395697562245 64 -39.110395546996187 65 -35.29210515368392
		 66 -32.794839427970288 67 -32.776098182656227 68 -33.530265582484617 69 -34.057652834995565
		 70 -35.168240440510857 71 -35.918107321181793 72 -35.9253893549418 73 -36.084876949590665
		 74 -36.026298811171287 75 -35.895693694578227 76 -36.109165504699561 77 -36.723685141695569
		 78 -37.597578031641604 79 -38.929401541558349 80 -40.660215795585088 81 -42.253179636707799
		 82 -43.540411394605144 83 -44.362669414327641 84 -44.554528381066767 85 -44.443736052266559
		 86 -44.313895550545034 87 -44.389029937515716 88 -44.364241795575509 89 -44.104806694771007
		 90 -43.763959415835792 91 -43.386129196310463 92 -42.932100181958987 93 -42.412888732364408
		 94 -41.758016505222642 95 -41.216137230531018 96 -41.225551179687486 97 -41.399665632683067
		 98 -41.250460672361449 99 -41.104001982291955 100 -40.949850670562832 101 -40.750750452402421
		 102 -40.634290956039052 103 -40.590445346588425 104 -40.677002986363121 105 -40.955956026876081
		 106 -41.224461775039757 107 -41.301393581677047 108 -41.2471415209559 109 -41.283660123058567
		 110 -41.439178802833467 111 -41.228953624666417 112 -40.638695146166697 113 -40.200490210696728
		 114 -39.983609303198406 115 -39.740644361413473 116 -39.507785572250278 117 -39.366952302139175
		 118 -39.179279745768063 119 -38.940536512528297 120 -38.521832895423096 121 -37.885767271547707
		 122 -37.453299653459105 123 -37.302831357952215 124 -37.223515729913622 125 -37.031938985316764
		 126 -36.570308865130364 127 -36.043264299686868 128 -35.791235032305373 129 -35.648475400728813
		 130 -35.395429695511325 131 -35.12321329906819 132 -34.873206971713273 133 -34.48628658096537
		 134 -34.012622610408577 135 -33.574104953442998 136 -32.978966269886563;
createNode animCurveTL -n "locator25_translateY";
	rename -uid "50BC74F9-405D-99AB-2D81-E18DF0AB996B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -44.339370479632549 1 -43.229233006549123
		 2 -42.45400141422725 3 -41.846928467525444 4 -41.214540187122708 5 -40.87231075256156
		 6 -41.28005040714514 7 -42.454500008837513 8 -44.06575710443532 9 -45.688689855468482
		 10 -47.287969519180919 11 -48.86820994974596 12 -49.957029981536934 13 -50.466683713018767
		 14 -50.637205884995325 15 -50.422349904498731 16 -50.056868887473655 17 -49.821140381537759
		 18 -49.429538379645194 19 -48.97716822922574 20 -48.859664883148781 21 -48.856291112732933
		 22 -48.980158591449211 23 -49.188594859122603 24 -49.30117118876305 25 -49.396015136446437
		 26 -49.740092783288276 27 -50.093849347726149 28 -50.077582118312137 29 -49.505798073135253
		 30 -48.330700778621747 31 -47.031388185956857 32 -45.885214468702543 33 -45.126048358827276
		 34 -44.410715141738791 35 -43.12692667679255 36 -40.769498479477235 37 -38.029764498001668
		 38 -34.654409772134798 39 -28.971992215519521 40 -24.240247093731043 41 -22.192249455837413
		 42 -20.089105191047125 43 -17.944357016275333 44 -17.055237075659463 45 -15.495542369589373
		 46 -12.998141143818515 47 -9.5745262777093529 48 -6.3812949334536313 49 -3.7120694285030567
		 50 -2.8728704190590975 51 -2.7637726475783495 52 -2.675743761242245 53 -3.2587050772099531
		 54 -4.5960792497432976 55 -6.5718755202477723 56 -9.9419630499812968 57 -13.989597684268276
		 58 -16.738948271611292 59 -16.976671877798495 60 -15.475032880591193 61 -15.217600376910296
		 62 -17.940318714229466 63 -20.459339230167657 64 -21.046538968546727 65 -21.20718152494689
		 66 -23.789568142461718 67 -28.278892103891195 68 -32.91783115154864 69 -37.714963089852205
		 70 -42.186777782579576 71 -45.21918253712137 72 -47.104584352849102 73 -48.237549733711511
		 74 -48.896280830718794 75 -49.26412648006982 76 -49.078838624533695 77 -48.281138079132276
		 78 -47.108701748292006 79 -45.368094919961123 80 -42.866369366462656 81 -39.837116844880725
		 82 -35.879135942140991 83 -31.480248801832758 84 -27.478078028527278 85 -23.462219262837976
		 86 -20.088526646751347 87 -17.664815886102048 88 -15.684870604395542 89 -13.973873256033841
		 90 -12.411307417778687 91 -11.062600109492251 92 -9.9813938924102672 93 -9.637922645670443
		 94 -10.030964415992145 95 -10.422039033652595 96 -10.845803192467002 97 -11.870781451079623
		 98 -13.085772614361119 99 -14.092318442963872 100 -15.257958337819503 101 -16.62100103328055
		 102 -18.012424333328653 103 -19.384605575255463 104 -20.618588437812946 105 -21.62068580949061
		 106 -22.565624261092452 107 -23.79526691944848 108 -25.270219192202731 109 -26.353793240887484
		 110 -27.148229727871097 111 -28.450299271193927 112 -30.267529318899591 113 -31.846041695777899
		 114 -32.817918953758991 115 -33.637056397592033 116 -34.529919863982272 117 -35.322575526581261
		 118 -36.136433956869539 119 -36.917122456844695 120 -37.914210007964201 121 -39.305304676397142
		 122 -40.348314405220151 123 -40.870161344747359 124 -41.219258970252753 125 -41.588752658299512
		 126 -42.193841051781988 127 -42.944288547620189 128 -43.40309429467122 129 -43.609524231620242
		 130 -43.839827117136608 131 -44.057678660272444 132 -44.242490750277099 133 -44.485322165169023
		 134 -44.700475431933341 135 -44.807778981812859 136 -45.010310397937474;
createNode animCurveTL -n "locator25_translateZ";
	rename -uid "154DAC90-4617-2B24-58D7-6AB6C9E26852";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 26.431031993932006 1 27.660171115109215
		 2 28.558950685751661 3 29.225773026065369 4 29.780115168960887 5 30.045276587949569
		 6 29.771863535608091 7 28.785158472193796 8 27.122631256543599 9 25.127002319350638
		 10 22.923572602970946 11 20.655840183111479 12 18.775226945157467 13 17.555572547428287
		 14 16.883195264220117 15 16.766280500385498 16 16.941065011994773 17 17.248261587463915
		 18 17.85578628881747 19 18.513976436943519 20 18.866086974221218 21 19.059454057985072
		 22 19.183111449957089 23 19.134505654333076 24 18.973675787564702 25 18.814137025151283
		 26 18.048259935540948 27 17.052736337670865 28 16.914661972301687 29 17.862591430627404
		 30 19.577754681207352 31 21.28784241663061 32 22.720380875783377 33 23.731711466243667
		 34 24.437867454412327 35 26.231227652619538 36 30.100985985085345 37 33.661484049166319
		 38 36.351984707676095 39 39.005315189812997 40 40.28641238908358 41 41.031078520222607
		 42 41.149761618369958 43 41.025207909188666 44 41.139232158524621 45 40.665200882310046
		 46 38.104438885492371 47 33.546012787960024 48 26.926107313236514 49 19.587706727977633
		 50 15.142837860396924 51 12.682163720448727 52 11.228135278833179 53 11.045430282163437
		 54 10.186323104978726 55 8.1454207056259804 56 6.8454258839828697 57 6.3618484011672081
		 58 6.525346824157026 59 9.1300693736325229 60 13.758725474369328 61 18.71628521592325
		 62 23.97897347757754 63 28.866758592229502 64 32.875139657328589 65 36.340221014550252
		 66 37.905597414829572 67 36.905817288398936 68 34.037518115078001 69 30.268269018957085
		 70 25.272742306040442 71 20.148061046185688 72 16.093641707460392 73 12.661996098863
		 74 10.01970823711801 75 8.106584640105126 76 7.2931807708438896 77 7.5855772583585974
		 78 8.6416367525074236 79 10.266284440639225 80 12.087153233620057 81 13.945012692283143
		 82 16.437707446431176 83 19.114183592941657 84 21.337253013142089 85 23.345591001453187
		 86 24.995577188695904 87 25.537771870463928 88 25.226540562551719 89 25.118297882812612
		 90 25.145527870753284 91 25.010167610506329 92 25.033555978102441 93 25.271341438857064
		 94 25.778040106400908 95 26.221766403474589 96 25.98017080564702 97 25.640328270697012
		 98 25.849076051681607 99 26.056505319497603 100 26.12946645575866 101 26.192118729976784
		 102 26.148829708052062 103 26.02332962523144 104 25.889003618568609 105 25.840863687660772
		 106 25.901851851489454 107 25.8156928336482 108 25.552882469656936 109 25.317100944254008
		 110 25.166193283560744 111 25.059260654854171 112 24.856279343011209 113 24.520129372751171
		 114 24.320153388098134 115 24.205345093390065 116 23.971737873731371 117 23.678039159660102
		 118 23.354567921895779 119 23.001250947842948 120 22.508870812132642 121 21.851356236353013
		 122 21.352287848564089 123 20.959697951955434 124 20.608763656011917 125 20.386998849687927
		 126 20.133839436304669 127 19.655448328873916 128 19.256168892551813 129 19.139294317251597
		 130 19.083140391174084 131 19.044333404005386 132 19.066906462801199 133 19.150438697664384
		 134 19.317060247511364 135 19.655711938029896 136 20.04258980736671;
createNode animCurveTA -n "locator25_rotateX";
	rename -uid "534D475A-4E66-8EAC-2C2C-458AA1F1D559";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 23.428832743748718 1 22.225173284603521
		 2 21.771909161184258 3 22.019051249252975 4 22.810641316806404 5 24.329198204632398
		 6 25.220974575583998 7 25.081772675557641 8 25.033943316104022 9 24.215700858627272
		 10 22.138822755725847 11 20.793598292715995 12 20.723401892761192 13 21.666688609653995
		 14 24.257356157384805 15 25.067350609928766 16 21.767824814419235 17 17.357397735256679
		 18 13.932805844075716 19 11.497570046322437 20 9.7425214325662282 21 8.8800279714620807
		 22 8.7026494537436214 23 8.8829902731358725 24 9.4125690155935491 25 9.9901694556686742
		 26 11.017881429800291 27 11.897191930875167 28 12.510924030092887 29 13.536739009486052
		 30 15.50091522072112 31 19.193834565106776 32 20.452652568072921 33 16.418236136422674
		 34 15.183959238713673 35 23.468769515834804 36 40.528908116769912 37 61.759849932825936
		 38 68.751934476050323 39 58.033059555915436 40 -93.083243351705931 41 113.4720952828451
		 42 101.10772992875155 43 -88.457880845373637 44 28.67860416748124 45 -54.368841999421377
		 46 -66.275838203806202 47 -69.698498271835206 48 -62.09694657041792 49 -53.35996749822133
		 50 -54.141187847062945 51 -59.374438404003627 52 -60.912107178161428 53 -63.913599891951108
		 54 -67.039022495168695 55 -66.67599153011362 56 -67.174580960991761 57 -66.077444018332912
		 58 -57.704244349530221 59 -50.559935476623643 60 -42.919315608245796 61 -25.509845879229136
		 62 -3.2803787238265172 63 15.99815451045434 64 33.097824460977485 65 44.565646145485744
		 66 47.633113775423908 67 46.654437605628161 68 38.369119223966074 69 27.392193465622235
		 70 25.979523076290295 71 27.46058760850093 72 30.775089400135403 73 34.178022342769331
		 74 31.089244943959997 75 21.979562554375349 76 11.136295934992747 77 0.83521244032980257
		 78 -8.418528969714167 79 -16.457090287548059 80 -23.040024293764375 81 -32.443713695290747
		 82 -52.809798051015314 83 -74.052176181261245 84 -85.394253598234116 85 -91.442490228293622
		 86 -98.468728359333412 87 -104.15340446510756 88 -105.91622435321577 89 -107.77197121778137
		 90 -109.51886320513385 91 -110.74049524518234 92 -112.31681147197898 93 -113.13298523672138
		 94 -113.38714842858562 95 -113.33731600177975 96 -111.22848153449667 97 -107.47525101063214
		 98 -105.57271582174489 99 -104.87435912549046 100 -103.05450203486512 101 -100.28006493019419
		 102 -97.898024487578525 103 -96.42049112551878 104 -95.08676242492929 105 -93.042380206806968
		 106 -90.490109602108731 107 -87.519835963474122 108 -83.80284728010173 109 -81.787757262362476
		 110 -80.391319718663226 111 -78.025784599025698 112 -75.797515761621284 113 -73.509935609935695
		 114 -70.139513714594528 115 -66.510078182808314 116 -63.444254361088248 117 -60.231392744178237
		 118 -57.175910712504873 119 -53.719550305132763 120 -50.877016744911494 121 -51.466739143422174
		 122 -52.124935078926839 123 -48.585652031303184 124 -44.102945412682281 125 -40.703132425251631
		 126 -38.247454833242692 127 -35.328626040753861 128 -31.451832973619233 129 -27.655191895488461
		 130 -23.858790851826054 131 -19.231794763131614 132 -14.620279194099611 133 -10.741300124922384
		 134 -6.9871090601192138 135 -3.4247022845383595 136 -0.56220917308519636;
createNode animCurveTA -n "locator25_rotateY";
	rename -uid "5BE59B89-4E22-2F0E-FF43-4FBF296CE54D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 42.195068234887387 1 44.899574912147948
		 2 47.983686750983978 3 50.943716887174467 4 52.899939968362048 5 52.692441212125267
		 6 50.929200549437112 7 48.709913544079839 8 45.812939402512434 9 42.11645450238192
		 10 37.624739791765357 11 32.038458184932978 12 26.141827424843761 13 22.580970073157715
		 14 21.090019916290331 15 20.362297809782532 16 21.318360730188157 17 23.556351284738717
		 18 25.253880292069656 19 26.259168104238352 20 27.240952027193153 21 26.970192168988802
		 22 25.044868126210005 23 23.455989393350045 24 22.012597272168414 25 20.201618739898532
		 26 19.248170626402064 27 18.894530425952663 28 17.620788904715234 29 16.682271281829458
		 30 17.538848919182517 31 20.117092991185384 32 23.9542250564255 33 27.694312375513345
		 34 31.135217459230159 35 34.513731214317701 36 31.579037257022403 37 26.313938424361563
		 38 27.352617936987528 39 37.864812648358708 40 142.9081932519511 41 14.904571551357144
		 42 11.04433165281513 43 137.45197245139465 44 81.510641775978229 45 62.733689911580477
		 46 49.867544085417101 47 44.421087657932517 48 38.537895355300918 49 24.76177630906005
		 50 4.3433507552598352 51 -2.0533432514826946 52 1.9529095074562437 53 2.5423038140641436
		 54 2.0554464976779534 55 1.8738997063295606 56 -0.59206065647216533 57 -1.1957257127522398
		 58 8.8865464960089344 59 22.595433648335025 60 36.249830946334406 61 51.426592406363447
		 62 59.857799828619775 63 62.984105710755919 64 65.219370162950753 65 65.378985826100916
		 66 67.738844683057096 67 71.389682362048788 68 61.893108236046565 69 50.295940693167879
		 70 44.580152745364323 71 31.321805728592469 72 13.869268311741703 73 5.0865583454134038
		 74 5.7308638703596406 75 9.9382137394076349 76 14.915769584662355 77 19.877974069784411
		 78 23.799179480474319 79 27.361496725575176 80 34.077599034832652 81 43.514269306519409
		 82 49.356862685292334 83 51.569387007338257 84 53.032212223252586 85 53.436129414734431
		 86 52.749218076207711 87 51.32692064185602 88 50.14473907632842 89 47.937285390654786
		 90 46.010614880456458 91 45.642951270916235 92 44.352718558443115 93 42.231828487274008
		 94 40.10134547746641 95 39.875144892733694 96 44.744408806950965 97 49.684058860791808
		 98 50.315651087400042 99 50.451372754804829 100 50.851072014021355 101 50.857409607060092
		 102 50.821383225487729 103 50.307123092997188 104 49.208648757300899 105 48.520018770891092
		 106 48.68452345221953 107 48.347688927804306 108 47.138688597481696 109 48.786823752322874
		 110 52.477689152399961 111 53.019332024746923 112 52.379573280703745 113 52.299124642717238
		 114 51.361561128547102 115 49.688612070896063 116 48.647812817594165 117 47.558225399469926
		 118 46.431602211744064 119 45.376970134230383 120 44.235773587915752 121 44.432956682203276
		 122 45.270847088471797 123 44.758069504869532 124 43.404080623922468 125 42.108737903283661
		 126 40.441280841523849 127 38.968210122416025 128 38.205923683840368 129 37.364074953355065
		 130 36.353649130693128 131 35.323933852561417 132 34.537674693537269 133 33.893166615491914
		 134 33.164385166614267 135 32.798368323551642 136 32.59894687487332;
createNode animCurveTA -n "locator25_rotateZ";
	rename -uid "61E0C677-4BF2-293B-6715-7D8A4C088989";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 83.755671182337963 1 84.217039159616363
		 2 83.297447564303212 3 82.78630230724616 4 83.773607028411575 5 85.872258416951624
		 6 87.490600053480208 7 88.037584437814715 8 87.846534398312983 9 86.566250429324754
		 10 84.67485097010659 11 82.898167312470306 12 81.824753896073815 13 80.807143957282534
		 14 78.469109405586138 15 75.817255204675902 16 74.795903726678162 17 74.654502260323881
		 18 74.279919239229002 19 74.026949320109225 20 73.918516482646737 21 74.090374019597618
		 22 74.262283835015538 23 74.250330209836989 24 75.048743626763482 25 76.0811395046792
		 26 76.525117317857124 27 76.614012762363913 28 77.117672141364054 29 77.064666904658864
		 30 76.012849912440558 31 76.385841566411912 32 75.667377834019263 33 71.888413603299625
		 34 74.679684240255867 35 87.225291872599414 36 99.38739525345845 37 106.60318962402751
		 38 111.69440007653614 39 118.74362052188079 40 -36.729271152473451 41 152.76615670581802
		 42 151.9313362155477 43 -31.239425496990354 44 87.226191528581495 45 5.3473819680244548
		 46 -0.14482279072437027 47 -0.36257845736150612 48 -4.8847929712835514 49 -8.7607738561762432
		 50 -5.4571885716530861 51 -2.989302697871544 52 -4.0277642122207986 53 -6.5867199798284028
		 54 -7.7626442007219731 55 -5.5837951854012839 56 -2.3947822714580851 57 0.15132404996271229
		 58 2.7841723746989704 59 4.3853803688441895 60 8.1162298009363223 61 19.102764725923901
		 62 34.456533926923285 63 47.833244764506894 64 59.200331312015713 65 71.14135242426228
		 66 79.632307897168133 67 81.414587105180104 68 72.522839882324561 69 70.019886744624529
		 70 74.747431501873905 71 77.435987518129238 72 79.478503383726519 73 83.630500730808876
		 74 86.949899226389704 75 88.111690274505051 76 87.046871316645849 77 82.829120286397739
		 78 76.426406001920213 79 71.137409831872475 80 67.527525057336931 81 61.454588974999083
		 82 48.676934628152345 83 33.474744348463751 84 20.654825283854276 85 11.745094189624032
		 86 1.7334869416294969 87 -7.924130706278091 88 -12.354507575042589 89 -15.472018643060315
		 90 -18.39535623202147 91 -21.298265907559976 92 -24.178188327974549 93 -25.816616753055953
		 94 -26.043352855392911 95 -25.072766929650474 96 -23.395394867784585 97 -20.864343701088494
		 98 -18.57787696079588 99 -16.672828057289731 100 -13.9575949494551 101 -10.917107032866852
		 102 -8.4079635177652694 103 -6.0284844808955684 104 -3.7470071103073965 105 -1.7632665831181669
		 106 1.0716928469664433 107 4.4873916851190527 108 7.6068810769113195 109 13.561294910528202
		 110 22.179774698620381 111 26.836307073759638 112 28.669392250636513 113 31.342573356596827
		 114 35.653266167587503 115 39.655604521277645 116 42.482280987013489 117 45.569737707159952
		 118 48.28321434088425 119 51.189370844445222 120 53.75077801249742 121 52.728657176714592
		 122 50.504865684182917 123 51.867560074406761 124 54.722661548725441 125 56.234963775124292
		 126 56.322460509755224 127 56.757438327879619 128 58.102368938757365 129 59.58291596747047
		 130 60.883324521773311 131 61.812458045340726 132 62.535467676353242 133 63.442613564041324
		 134 64.447521684004428 135 65.628383266941768 136 67.132981128991716;
createNode animCurveTU -n "locator25_scaleX";
	rename -uid "EF60F434-4EB4-F92B-0C39-91919C285EBB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999978 1 1 2 1.0000000000000002
		 3 1.0000000000000002 4 0.99999999999999989 5 0.99999999999999989 6 0.99999999999999989
		 7 0.99999999999999989 8 0.99999999999999978 9 1 10 1.0000000000000002 11 1.0000000000000002
		 12 0.99999999999999989 13 1 14 1 15 1.0000000000000002 16 1 17 1 18 1.0000000000000002
		 19 1 20 0.99999999999999978 21 0.99999999999999989 22 0.99999999999999989 23 0.99999999999999967
		 24 1.0000000000000004 25 0.99999999999999989 26 1 27 1.0000000000000002 28 1.0000000000000002
		 29 0.99999999999999978 30 1 31 1.0000000000000002 32 0.99999999999999989 33 1 34 0.99999999999999989
		 35 0.99999999999999978 36 1 37 1.0000000000000002 38 0.99999999999999978 39 1 40 1.0000000000000002
		 41 0.99999999999999978 42 0.99999999999999989 43 1 44 1 45 1.0000000000000002 46 1
		 47 0.99999999999999978 48 1 49 0.99999999999999956 50 0.99999999999999956 51 1 52 1.0000000000000004
		 53 1 54 0.99999999999999989 55 1 56 0.99999999999999989 57 1 58 0.99999999999999967
		 59 1.0000000000000002 60 0.99999999999999978 61 0.99999999999999967 62 0.99999999999999978
		 63 1 64 1.0000000000000004 65 0.99999999999999978 66 0.99999999999999989 67 0.99999999999999956
		 68 0.99999999999999978 69 0.99999999999999989 70 1.0000000000000004 71 1 72 1 73 0.99999999999999967
		 74 0.99999999999999989 75 0.99999999999999978 76 0.99999999999999933 77 1 78 0.99999999999999978
		 79 1.0000000000000004 80 0.99999999999999989 81 0.99999999999999989 82 0.99999999999999978
		 83 0.99999999999999978 84 0.99999999999999978 85 1.0000000000000004 86 0.99999999999999967
		 87 1.0000000000000004 88 0.99999999999999989 89 1.0000000000000002 90 0.99999999999999944
		 91 0.99999999999999956 92 1.0000000000000007 93 1 94 0.99999999999999989 95 1 96 1.0000000000000002
		 97 0.99999999999999989 98 0.99999999999999967 99 1 100 0.99999999999999978 101 0.99999999999999989
		 102 0.99999999999999967 103 1 104 0.99999999999999967 105 0.99999999999999956 106 0.99999999999999933
		 107 1.0000000000000002 108 1.0000000000000002 109 1 110 0.99999999999999989 111 0.99999999999999967
		 112 1 113 1 114 1.0000000000000002 115 0.99999999999999944 116 0.99999999999999967
		 117 0.99999999999999978 118 1 119 1 120 0.99999999999999956 121 1 122 0.99999999999999978
		 123 0.99999999999999989 124 1 125 0.99999999999999978 126 1 127 1 128 0.99999999999999944
		 129 1 130 0.99999999999999989 131 1.0000000000000002 132 1.0000000000000002 133 0.99999999999999967
		 134 1 135 0.99999999999999989 136 0.99999999999999989;
createNode animCurveTU -n "locator25_scaleY";
	rename -uid "8CEFF925-4044-2874-922A-BFAAF4D3881B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999989 1 0.99999999999999989
		 2 1 3 1 4 0.99999999999999989 5 0.99999999999999978 6 1 7 0.99999999999999989 8 0.99999999999999978
		 9 0.99999999999999989 10 1 11 0.99999999999999989 12 0.99999999999999978 13 0.99999999999999989
		 14 0.99999999999999989 15 1.0000000000000002 16 0.99999999999999989 17 1.0000000000000002
		 18 1.0000000000000002 19 1.0000000000000004 20 0.99999999999999978 21 0.99999999999999956
		 22 1.0000000000000002 23 1.0000000000000002 24 1.0000000000000002 25 1 26 1.0000000000000004
		 27 1.0000000000000002 28 1 29 0.99999999999999978 30 1 31 1.0000000000000002 32 0.99999999999999989
		 33 1.0000000000000002 34 1 35 1 36 0.99999999999999967 37 1.0000000000000002 38 0.99999999999999989
		 39 0.99999999999999989 40 1.0000000000000002 41 1 42 1 43 0.99999999999999989 44 1
		 45 0.99999999999999989 46 1 47 1 48 0.99999999999999978 49 1.0000000000000002 50 1
		 51 0.99999999999999989 52 0.99999999999999967 53 1.0000000000000002 54 1 55 0.99999999999999978
		 56 0.99999999999999989 57 0.99999999999999978 58 0.99999999999999978 59 0.99999999999999989
		 60 0.99999999999999978 61 0.99999999999999989 62 1 63 0.99999999999999989 64 0.99999999999999989
		 65 0.99999999999999978 66 0.99999999999999989 67 1 68 0.99999999999999967 69 1.0000000000000002
		 70 0.99999999999999989 71 1.0000000000000002 72 1 73 1 74 1.0000000000000002 75 0.99999999999999989
		 76 1.0000000000000002 77 0.99999999999999989 78 0.99999999999999956 79 1 80 1 81 0.99999999999999978
		 82 1 83 1 84 0.99999999999999989 85 0.99999999999999989 86 0.99999999999999956 87 1
		 88 1 89 1.0000000000000002 90 0.99999999999999956 91 0.99999999999999944 92 1.0000000000000004
		 93 1 94 1 95 1.0000000000000002 96 1.0000000000000002 97 0.99999999999999967 98 1
		 99 1.0000000000000002 100 0.99999999999999989 101 0.99999999999999989 102 1 103 1
		 104 0.99999999999999956 105 0.99999999999999978 106 0.99999999999999967 107 1 108 1
		 109 1 110 1 111 0.99999999999999989 112 1 113 0.99999999999999989 114 1 115 0.99999999999999967
		 116 0.99999999999999989 117 0.99999999999999978 118 0.99999999999999989 119 1 120 0.99999999999999989
		 121 1 122 0.99999999999999989 123 1 124 1 125 0.99999999999999989 126 1 127 1 128 0.99999999999999967
		 129 0.99999999999999956 130 1 131 0.99999999999999967 132 1 133 0.99999999999999956
		 134 1 135 0.99999999999999967 136 1;
createNode animCurveTU -n "locator25_scaleZ";
	rename -uid "8619B26C-448F-3EBD-91EE-E1987A86EE1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0.99999999999999989 1 1 2 0.99999999999999978
		 3 1.0000000000000002 4 0.99999999999999989 5 0.99999999999999978 6 1 7 1.0000000000000002
		 8 1 9 1.0000000000000002 10 1.0000000000000002 11 0.99999999999999989 12 1 13 0.99999999999999989
		 14 1 15 1.0000000000000004 16 1 17 1.0000000000000002 18 1.0000000000000002 19 1.0000000000000002
		 20 0.99999999999999989 21 0.99999999999999967 22 1.0000000000000002 23 1.0000000000000004
		 24 1 25 0.99999999999999989 26 1 27 1.0000000000000002 28 1.0000000000000002 29 1
		 30 1 31 1.0000000000000002 32 0.99999999999999989 33 1.0000000000000002 34 0.99999999999999989
		 35 1 36 0.99999999999999978 37 1 38 0.99999999999999978 39 0.99999999999999978 40 1
		 41 1 42 0.99999999999999967 43 1 44 1.0000000000000002 45 1 46 0.99999999999999989
		 47 1 48 0.99999999999999978 49 0.99999999999999956 50 0.99999999999999989 51 0.99999999999999989
		 52 1.0000000000000002 53 1 54 0.99999999999999989 55 1 56 1 57 1 58 0.99999999999999967
		 59 1.0000000000000002 60 0.99999999999999989 61 1 62 1 63 1 64 0.99999999999999978
		 65 0.99999999999999978 66 0.99999999999999989 67 0.99999999999999978 68 0.99999999999999967
		 69 1.0000000000000004 70 1 71 1.0000000000000002 72 0.99999999999999978 73 0.99999999999999989
		 74 1.0000000000000007 75 1 76 0.99999999999999956 77 0.99999999999999967 78 1 79 0.99999999999999989
		 80 1 81 0.99999999999999978 82 0.99999999999999989 83 1 84 1 85 0.99999999999999989
		 86 0.99999999999999967 87 1.0000000000000004 88 1 89 0.99999999999999989 90 0.99999999999999922
		 91 0.99999999999999967 92 1.0000000000000002 93 1 94 1 95 0.99999999999999978 96 1
		 97 0.99999999999999989 98 0.99999999999999989 99 1.0000000000000002 100 0.99999999999999956
		 101 1 102 0.99999999999999989 103 1.0000000000000002 104 0.99999999999999978 105 0.99999999999999956
		 106 0.99999999999999967 107 1 108 1 109 0.99999999999999989 110 0.99999999999999978
		 111 0.99999999999999967 112 1 113 0.99999999999999978 114 1 115 0.99999999999999956
		 116 0.99999999999999967 117 0.99999999999999956 118 1 119 0.99999999999999978 120 0.99999999999999967
		 121 1.0000000000000002 122 0.99999999999999956 123 0.99999999999999978 124 1.0000000000000002
		 125 0.99999999999999978 126 1.0000000000000004 127 1 128 0.99999999999999944 129 0.99999999999999967
		 130 1 131 1 132 1.0000000000000002 133 0.99999999999999956 134 1 135 0.99999999999999978
		 136 0.99999999999999989;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "3711F8CD-40CF-3438-51E1-67B8A97585BF";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -421.42855468250531 -324.99998708566085 ;
	setAttr ".tgi[0].vh" -type "double2" 421.42855468250531 323.80951094248991 ;
	setAttr -s 34 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 2664.28564453125;
	setAttr ".tgi[0].ni[0].y" 20245.71484375;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 2040;
	setAttr ".tgi[0].ni[1].y" 19450;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 2347.142822265625;
	setAttr ".tgi[0].ni[2].y" 19351.427734375;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 2664.28564453125;
	setAttr ".tgi[0].ni[3].y" 11651.4287109375;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 2347.142822265625;
	setAttr ".tgi[0].ni[4].y" 10047.142578125;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 2040;
	setAttr ".tgi[0].ni[5].y" 8247.142578125;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 2362.857177734375;
	setAttr ".tgi[0].ni[6].y" -10350;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 2662.857177734375;
	setAttr ".tgi[0].ni[7].y" -10274.2861328125;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" -2874.28564453125;
	setAttr ".tgi[0].ni[8].y" 14057.142578125;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 2055.71435546875;
	setAttr ".tgi[0].ni[9].y" -10514.2861328125;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 2682.857177734375;
	setAttr ".tgi[0].ni[10].y" -10404.2861328125;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 2971.428466796875;
	setAttr ".tgi[0].ni[11].y" -3791.428466796875;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 2347.142822265625;
	setAttr ".tgi[0].ni[12].y" -6657.14306640625;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" -417.14285278320313;
	setAttr ".tgi[0].ni[13].y" 8972.857421875;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 2664.28564453125;
	setAttr ".tgi[0].ni[14].y" -19728.572265625;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 2670;
	setAttr ".tgi[0].ni[15].y" -10362.857421875;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 2347.142822265625;
	setAttr ".tgi[0].ni[16].y" -4165.71435546875;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 2971.428466796875;
	setAttr ".tgi[0].ni[17].y" -4857.14306640625;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 2971.428466796875;
	setAttr ".tgi[0].ni[18].y" -7492.85693359375;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 2347.142822265625;
	setAttr ".tgi[0].ni[19].y" -19777.142578125;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 504.28570556640625;
	setAttr ".tgi[0].ni[20].y" 4835.71435546875;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 2664.28564453125;
	setAttr ".tgi[0].ni[21].y" -4807.14306640625;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 2664.28564453125;
	setAttr ".tgi[0].ni[22].y" -7441.4287109375;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 2971.428466796875;
	setAttr ".tgi[0].ni[23].y" -19778.572265625;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" -724.28570556640625;
	setAttr ".tgi[0].ni[24].y" 11564.2861328125;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" -2260;
	setAttr ".tgi[0].ni[25].y" 14985.7138671875;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" -2567.142822265625;
	setAttr ".tgi[0].ni[26].y" 14948.5712890625;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 504.28570556640625;
	setAttr ".tgi[0].ni[27].y" -10400;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 197.14285278320313;
	setAttr ".tgi[0].ni[28].y" -7012.85693359375;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 197.14285278320313;
	setAttr ".tgi[0].ni[29].y" -1552.857177734375;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" -1031.4285888671875;
	setAttr ".tgi[0].ni[30].y" 9744.2861328125;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" -1645.7142333984375;
	setAttr ".tgi[0].ni[31].y" 12042.857421875;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" -1338.5714111328125;
	setAttr ".tgi[0].ni[32].y" 10817.142578125;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" -1338.5714111328125;
	setAttr ".tgi[0].ni[33].y" 10975.7138671875;
	setAttr ".tgi[0].ni[33].nvs" 18304;
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
connectAttr "TEMP_RigRoot.limbsParentGroup" "LIMBS.rigRoot";
connectAttr "TEMP_RigRoot.limbs" "Head_Limb_M_NODE.rigRoot";
connectAttr "Neck_Limb_M_NODE.limbChildren" "Head_Limb_M_NODE.limbParent";
connectAttr "Head_Limb_M_NODE.animGroups" "AnimGroup_MixamoTest_1.limb";
connectAttr "locator1_translateX.o" "locator1.tx";
connectAttr "locator1_translateY.o" "locator1.ty";
connectAttr "locator1_translateZ.o" "locator1.tz";
connectAttr "locator1_rotateX.o" "locator1.rx";
connectAttr "locator1_rotateY.o" "locator1.ry";
connectAttr "locator1_rotateZ.o" "locator1.rz";
connectAttr "locator1_scaleX.o" "locator1.sx";
connectAttr "locator1_scaleY.o" "locator1.sy";
connectAttr "locator1_scaleZ.o" "locator1.sz";
connectAttr "locator1_visibility.o" "locator1.v";
connectAttr "locator2_translateX.o" "locator2.tx";
connectAttr "locator2_translateY.o" "locator2.ty";
connectAttr "locator2_translateZ.o" "locator2.tz";
connectAttr "locator2_rotateX.o" "locator2.rx";
connectAttr "locator2_rotateY.o" "locator2.ry";
connectAttr "locator2_rotateZ.o" "locator2.rz";
connectAttr "locator2_scaleX.o" "locator2.sx";
connectAttr "locator2_scaleY.o" "locator2.sy";
connectAttr "locator2_scaleZ.o" "locator2.sz";
connectAttr "locator2_visibility.o" "locator2.v";
connectAttr "TEMP_RigRoot.limbs" "Leg_Limb_R_NODE.rigRoot";
connectAttr "Leg_Limb_L_NODE.mirrorLimb" "Leg_Limb_R_NODE.mirrorLimb";
connectAttr "Pelvis_Limb_M_NODE.limbChildren" "Leg_Limb_R_NODE.limbParent";
connectAttr "Leg_Limb_R_NODE.animGroups" "AnimGroup_MixamoTest_2.limb";
connectAttr "locator3_translateX.o" "locator3.tx";
connectAttr "locator3_translateY.o" "locator3.ty";
connectAttr "locator3_translateZ.o" "locator3.tz";
connectAttr "locator3_rotateX.o" "locator3.rx";
connectAttr "locator3_rotateY.o" "locator3.ry";
connectAttr "locator3_rotateZ.o" "locator3.rz";
connectAttr "locator3_scaleX.o" "locator3.sx";
connectAttr "locator3_scaleY.o" "locator3.sy";
connectAttr "locator3_scaleZ.o" "locator3.sz";
connectAttr "locator3_visibility.o" "locator3.v";
connectAttr "locator4_translateX.o" "locator4.tx";
connectAttr "locator4_translateY.o" "locator4.ty";
connectAttr "locator4_translateZ.o" "locator4.tz";
connectAttr "locator4_rotateX.o" "locator4.rx";
connectAttr "locator4_rotateY.o" "locator4.ry";
connectAttr "locator4_rotateZ.o" "locator4.rz";
connectAttr "locator4_scaleX.o" "locator4.sx";
connectAttr "locator4_scaleY.o" "locator4.sy";
connectAttr "locator4_scaleZ.o" "locator4.sz";
connectAttr "locator4_visibility.o" "locator4.v";
connectAttr "locator5_translateX.o" "locator5.tx";
connectAttr "locator5_translateY.o" "locator5.ty";
connectAttr "locator5_translateZ.o" "locator5.tz";
connectAttr "locator5_rotateX.o" "locator5.rx";
connectAttr "locator5_rotateY.o" "locator5.ry";
connectAttr "locator5_rotateZ.o" "locator5.rz";
connectAttr "locator5_scaleX.o" "locator5.sx";
connectAttr "locator5_scaleY.o" "locator5.sy";
connectAttr "locator5_scaleZ.o" "locator5.sz";
connectAttr "locator5_visibility.o" "locator5.v";
connectAttr "TEMP_RigRoot.limbs" "Leg_Limb_L_NODE.rigRoot";
connectAttr "Pelvis_Limb_M_NODE.limbChildren" "Leg_Limb_L_NODE.limbParent";
connectAttr "Leg_Limb_L_NODE.animGroups" "AnimGroup_MixamoTest_3.limb";
connectAttr "locator6_translateX.o" "locator6.tx";
connectAttr "locator6_translateY.o" "locator6.ty";
connectAttr "locator6_translateZ.o" "locator6.tz";
connectAttr "locator6_rotateX.o" "locator6.rx";
connectAttr "locator6_rotateY.o" "locator6.ry";
connectAttr "locator6_rotateZ.o" "locator6.rz";
connectAttr "locator6_scaleX.o" "locator6.sx";
connectAttr "locator6_scaleY.o" "locator6.sy";
connectAttr "locator6_scaleZ.o" "locator6.sz";
connectAttr "locator6_visibility.o" "locator6.v";
connectAttr "locator7_translateX.o" "locator7.tx";
connectAttr "locator7_translateY.o" "locator7.ty";
connectAttr "locator7_translateZ.o" "locator7.tz";
connectAttr "locator7_rotateX.o" "locator7.rx";
connectAttr "locator7_rotateY.o" "locator7.ry";
connectAttr "locator7_rotateZ.o" "locator7.rz";
connectAttr "locator7_scaleX.o" "locator7.sx";
connectAttr "locator7_scaleY.o" "locator7.sy";
connectAttr "locator7_scaleZ.o" "locator7.sz";
connectAttr "locator7_visibility.o" "locator7.v";
connectAttr "locator8_translateX.o" "locator8.tx";
connectAttr "locator8_translateY.o" "locator8.ty";
connectAttr "locator8_translateZ.o" "locator8.tz";
connectAttr "locator8_rotateX.o" "locator8.rx";
connectAttr "locator8_rotateY.o" "locator8.ry";
connectAttr "locator8_rotateZ.o" "locator8.rz";
connectAttr "locator8_scaleX.o" "locator8.sx";
connectAttr "locator8_scaleY.o" "locator8.sy";
connectAttr "locator8_scaleZ.o" "locator8.sz";
connectAttr "locator8_visibility.o" "locator8.v";
connectAttr "TEMP_RigRoot.limbs" "Spine_Limb_M_NODE.rigRoot";
connectAttr "Pelvis_Limb_M_NODE.limbChildren" "Spine_Limb_M_NODE.limbParent";
connectAttr "Spine_Limb_M_NODE.animGroups" "AnimGroup_MixamoTest_4.limb";
connectAttr "locator9_translateX.o" "locator9.tx";
connectAttr "locator9_translateY.o" "locator9.ty";
connectAttr "locator9_translateZ.o" "locator9.tz";
connectAttr "locator9_rotateX.o" "locator9.rx";
connectAttr "locator9_rotateY.o" "locator9.ry";
connectAttr "locator9_rotateZ.o" "locator9.rz";
connectAttr "locator9_scaleX.o" "locator9.sx";
connectAttr "locator9_scaleY.o" "locator9.sy";
connectAttr "locator9_scaleZ.o" "locator9.sz";
connectAttr "locator9_visibility.o" "locator9.v";
connectAttr "locator10_translateX.o" "locator10.tx";
connectAttr "locator10_translateY.o" "locator10.ty";
connectAttr "locator10_translateZ.o" "locator10.tz";
connectAttr "locator10_rotateX.o" "locator10.rx";
connectAttr "locator10_rotateY.o" "locator10.ry";
connectAttr "locator10_rotateZ.o" "locator10.rz";
connectAttr "locator10_scaleX.o" "locator10.sx";
connectAttr "locator10_scaleY.o" "locator10.sy";
connectAttr "locator10_scaleZ.o" "locator10.sz";
connectAttr "locator10_visibility.o" "locator10.v";
connectAttr "locator11_translateX.o" "locator11.tx";
connectAttr "locator11_translateY.o" "locator11.ty";
connectAttr "locator11_translateZ.o" "locator11.tz";
connectAttr "locator11_rotateX.o" "locator11.rx";
connectAttr "locator11_rotateY.o" "locator11.ry";
connectAttr "locator11_rotateZ.o" "locator11.rz";
connectAttr "locator11_scaleX.o" "locator11.sx";
connectAttr "locator11_scaleY.o" "locator11.sy";
connectAttr "locator11_scaleZ.o" "locator11.sz";
connectAttr "locator11_visibility.o" "locator11.v";
connectAttr "TEMP_RigRoot.limbs" "Foot_Limb_L_NODE.rigRoot";
connectAttr "Foot_Limb_R_NODE.mirrorLimb" "Foot_Limb_L_NODE.mirrorLimb";
connectAttr "Leg_Limb_L_NODE.limbChildren" "Foot_Limb_L_NODE.limbParent";
connectAttr "Foot_Limb_L_NODE.animGroups" "AnimGroup_MixamoTest_5.limb";
connectAttr "locator12_translateX.o" "locator12.tx";
connectAttr "locator12_translateY.o" "locator12.ty";
connectAttr "locator12_translateZ.o" "locator12.tz";
connectAttr "locator12_rotateX.o" "locator12.rx";
connectAttr "locator12_rotateY.o" "locator12.ry";
connectAttr "locator12_rotateZ.o" "locator12.rz";
connectAttr "locator12_scaleX.o" "locator12.sx";
connectAttr "locator12_scaleY.o" "locator12.sy";
connectAttr "locator12_scaleZ.o" "locator12.sz";
connectAttr "locator12_visibility.o" "locator12.v";
connectAttr "locator13_translateX.o" "locator13.tx";
connectAttr "locator13_translateY.o" "locator13.ty";
connectAttr "locator13_translateZ.o" "locator13.tz";
connectAttr "locator13_rotateX.o" "locator13.rx";
connectAttr "locator13_rotateY.o" "locator13.ry";
connectAttr "locator13_rotateZ.o" "locator13.rz";
connectAttr "locator13_scaleX.o" "locator13.sx";
connectAttr "locator13_scaleY.o" "locator13.sy";
connectAttr "locator13_scaleZ.o" "locator13.sz";
connectAttr "locator13_visibility.o" "locator13.v";
connectAttr "TEMP_RigRoot.limbs" "Foot_Limb_R_NODE.rigRoot";
connectAttr "Leg_Limb_R_NODE.limbChildren" "Foot_Limb_R_NODE.limbParent";
connectAttr "Foot_Limb_R_NODE.animGroups" "AnimGroup_MixamoTest_6.limb";
connectAttr "locator14_translateX.o" "locator14.tx";
connectAttr "locator14_translateY.o" "locator14.ty";
connectAttr "locator14_translateZ.o" "locator14.tz";
connectAttr "locator14_rotateX.o" "locator14.rx";
connectAttr "locator14_rotateY.o" "locator14.ry";
connectAttr "locator14_rotateZ.o" "locator14.rz";
connectAttr "locator14_scaleX.o" "locator14.sx";
connectAttr "locator14_scaleY.o" "locator14.sy";
connectAttr "locator14_scaleZ.o" "locator14.sz";
connectAttr "locator14_visibility.o" "locator14.v";
connectAttr "locator15_translateX.o" "locator15.tx";
connectAttr "locator15_translateY.o" "locator15.ty";
connectAttr "locator15_translateZ.o" "locator15.tz";
connectAttr "locator15_rotateX.o" "locator15.rx";
connectAttr "locator15_rotateY.o" "locator15.ry";
connectAttr "locator15_rotateZ.o" "locator15.rz";
connectAttr "locator15_scaleX.o" "locator15.sx";
connectAttr "locator15_scaleY.o" "locator15.sy";
connectAttr "locator15_scaleZ.o" "locator15.sz";
connectAttr "locator15_visibility.o" "locator15.v";
connectAttr "TEMP_RigRoot.limbs" "Neck_Limb_M_NODE.rigRoot";
connectAttr "Spine_Limb_M_NODE.limbChildren" "Neck_Limb_M_NODE.limbParent";
connectAttr "Neck_Limb_M_NODE.animGroups" "AnimGroup_MixamoTest_7.limb";
connectAttr "locator16_translateX.o" "locator16.tx";
connectAttr "locator16_translateY.o" "locator16.ty";
connectAttr "locator16_translateZ.o" "locator16.tz";
connectAttr "locator16_rotateX.o" "locator16.rx";
connectAttr "locator16_rotateY.o" "locator16.ry";
connectAttr "locator16_rotateZ.o" "locator16.rz";
connectAttr "locator16_scaleX.o" "locator16.sx";
connectAttr "locator16_scaleY.o" "locator16.sy";
connectAttr "locator16_scaleZ.o" "locator16.sz";
connectAttr "locator16_visibility.o" "locator16.v";
connectAttr "TEMP_RigRoot.limbs" "Pelvis_Limb_M_NODE.rigRoot";
connectAttr "Pelvis_Limb_M_NODE.animGroups" "AnimGroup_MixamoTest_8.limb";
connectAttr "locator17_translateX.o" "locator17.tx";
connectAttr "locator17_translateY.o" "locator17.ty";
connectAttr "locator17_translateZ.o" "locator17.tz";
connectAttr "locator17_rotateX.o" "locator17.rx";
connectAttr "locator17_rotateY.o" "locator17.ry";
connectAttr "locator17_rotateZ.o" "locator17.rz";
connectAttr "locator17_scaleX.o" "locator17.sx";
connectAttr "locator17_scaleY.o" "locator17.sy";
connectAttr "locator17_scaleZ.o" "locator17.sz";
connectAttr "locator17_visibility.o" "locator17.v";
connectAttr "TEMP_RigRoot.limbs" "Arm_Limb_L_NODE.rigRoot";
connectAttr "Arm_Limb_R_NODE.mirrorLimb" "Arm_Limb_L_NODE.mirrorLimb";
connectAttr "Clav_Limb_L_NODE.limbChildren" "Arm_Limb_L_NODE.limbParent";
connectAttr "Arm_Limb_L_NODE.animGroups" "AnimGroup_MixamoTest_9.limb";
connectAttr "locator18_translateX.o" "locator18.tx";
connectAttr "locator18_translateY.o" "locator18.ty";
connectAttr "locator18_translateZ.o" "locator18.tz";
connectAttr "locator18_rotateX.o" "locator18.rx";
connectAttr "locator18_rotateY.o" "locator18.ry";
connectAttr "locator18_rotateZ.o" "locator18.rz";
connectAttr "locator18_scaleX.o" "locator18.sx";
connectAttr "locator18_scaleY.o" "locator18.sy";
connectAttr "locator18_scaleZ.o" "locator18.sz";
connectAttr "locator18_visibility.o" "locator18.v";
connectAttr "locator19_translateX.o" "locator19.tx";
connectAttr "locator19_translateY.o" "locator19.ty";
connectAttr "locator19_translateZ.o" "locator19.tz";
connectAttr "locator19_rotateX.o" "locator19.rx";
connectAttr "locator19_rotateY.o" "locator19.ry";
connectAttr "locator19_rotateZ.o" "locator19.rz";
connectAttr "locator19_scaleX.o" "locator19.sx";
connectAttr "locator19_scaleY.o" "locator19.sy";
connectAttr "locator19_scaleZ.o" "locator19.sz";
connectAttr "locator19_visibility.o" "locator19.v";
connectAttr "locator20_translateX.o" "locator20.tx";
connectAttr "locator20_translateY.o" "locator20.ty";
connectAttr "locator20_translateZ.o" "locator20.tz";
connectAttr "locator20_rotateX.o" "locator20.rx";
connectAttr "locator20_rotateY.o" "locator20.ry";
connectAttr "locator20_rotateZ.o" "locator20.rz";
connectAttr "locator20_scaleX.o" "locator20.sx";
connectAttr "locator20_scaleY.o" "locator20.sy";
connectAttr "locator20_scaleZ.o" "locator20.sz";
connectAttr "locator20_visibility.o" "locator20.v";
connectAttr "TEMP_RigRoot.limbs" "Clav_Limb_L_NODE.rigRoot";
connectAttr "Clav_Limb_R_NODE.mirrorLimb" "Clav_Limb_L_NODE.mirrorLimb";
connectAttr "Spine_Limb_M_NODE.limbChildren" "Clav_Limb_L_NODE.limbParent";
connectAttr "Clav_Limb_L_NODE.animGroups" "AnimGroup_MixamoTest_10.limb";
connectAttr "locator21_translateX.o" "locator21.tx";
connectAttr "locator21_translateY.o" "locator21.ty";
connectAttr "locator21_translateZ.o" "locator21.tz";
connectAttr "locator21_rotateX.o" "locator21.rx";
connectAttr "locator21_rotateY.o" "locator21.ry";
connectAttr "locator21_rotateZ.o" "locator21.rz";
connectAttr "locator21_scaleX.o" "locator21.sx";
connectAttr "locator21_scaleY.o" "locator21.sy";
connectAttr "locator21_scaleZ.o" "locator21.sz";
connectAttr "locator21_visibility.o" "locator21.v";
connectAttr "TEMP_RigRoot.limbs" "Clav_Limb_R_NODE.rigRoot";
connectAttr "Spine_Limb_M_NODE.limbChildren" "Clav_Limb_R_NODE.limbParent";
connectAttr "Clav_Limb_R_NODE.animGroups" "AnimGroup_MixamoTest_11.limb";
connectAttr "locator22_translateX.o" "locator22.tx";
connectAttr "locator22_translateY.o" "locator22.ty";
connectAttr "locator22_translateZ.o" "locator22.tz";
connectAttr "locator22_rotateX.o" "locator22.rx";
connectAttr "locator22_rotateY.o" "locator22.ry";
connectAttr "locator22_rotateZ.o" "locator22.rz";
connectAttr "locator22_scaleX.o" "locator22.sx";
connectAttr "locator22_scaleY.o" "locator22.sy";
connectAttr "locator22_scaleZ.o" "locator22.sz";
connectAttr "locator22_visibility.o" "locator22.v";
connectAttr "TEMP_RigRoot.limbs" "Arm_Limb_R_NODE.rigRoot";
connectAttr "Clav_Limb_R_NODE.limbChildren" "Arm_Limb_R_NODE.limbParent";
connectAttr "Arm_Limb_R_NODE.animGroups" "AnimGroup_MixamoTest_12.limb";
connectAttr "locator23_translateX.o" "locator23.tx";
connectAttr "locator23_translateY.o" "locator23.ty";
connectAttr "locator23_translateZ.o" "locator23.tz";
connectAttr "locator23_rotateX.o" "locator23.rx";
connectAttr "locator23_rotateY.o" "locator23.ry";
connectAttr "locator23_rotateZ.o" "locator23.rz";
connectAttr "locator23_scaleX.o" "locator23.sx";
connectAttr "locator23_scaleY.o" "locator23.sy";
connectAttr "locator23_scaleZ.o" "locator23.sz";
connectAttr "locator23_visibility.o" "locator23.v";
connectAttr "locator24_translateX.o" "locator24.tx";
connectAttr "locator24_translateY.o" "locator24.ty";
connectAttr "locator24_translateZ.o" "locator24.tz";
connectAttr "locator24_rotateX.o" "locator24.rx";
connectAttr "locator24_rotateY.o" "locator24.ry";
connectAttr "locator24_rotateZ.o" "locator24.rz";
connectAttr "locator24_scaleX.o" "locator24.sx";
connectAttr "locator24_scaleY.o" "locator24.sy";
connectAttr "locator24_scaleZ.o" "locator24.sz";
connectAttr "locator24_visibility.o" "locator24.v";
connectAttr "locator25_translateX.o" "locator25.tx";
connectAttr "locator25_translateY.o" "locator25.ty";
connectAttr "locator25_translateZ.o" "locator25.tz";
connectAttr "locator25_rotateX.o" "locator25.rx";
connectAttr "locator25_rotateY.o" "locator25.ry";
connectAttr "locator25_rotateZ.o" "locator25.rz";
connectAttr "locator25_scaleX.o" "locator25.sx";
connectAttr "locator25_scaleY.o" "locator25.sy";
connectAttr "locator25_scaleZ.o" "locator25.sz";
connectAttr "locator25_visibility.o" "locator25.v";
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
connectAttr "TempMaterial.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "Control_Shapes_materialInfo1.sg";
connectAttr "TempMaterial.msg" "Control_Shapes_materialInfo1.m";
connectAttr "LControlsMaterial.oc" "LControlsMaterialSG.ss";
connectAttr "TEMP_RigRoot.controlMtrL" "LControlsMaterialSG.rigRoot";
connectAttr "LControlsMaterialSG.msg" "materialInfo3.sg";
connectAttr "LControlsMaterial.msg" "materialInfo3.m";
connectAttr "LControlsMaterial.msg" "materialInfo3.t" -na;
connectAttr "MControlsMaterial.oc" "MControlsMaterialSG.ss";
connectAttr "TEMP_RigRoot.controlMtrM" "MControlsMaterialSG.rigRoot";
connectAttr "MControlsMaterialSG.msg" "materialInfo4.sg";
connectAttr "MControlsMaterial.msg" "materialInfo4.m";
connectAttr "MControlsMaterial.msg" "materialInfo4.t" -na;
connectAttr "RControlsMaterial.oc" "RControlsMaterialSG.ss";
connectAttr "TEMP_RigRoot.controlMtrR" "RControlsMaterialSG.rigRoot";
connectAttr "RControlsMaterialSG.msg" "materialInfo5.sg";
connectAttr "RControlsMaterial.msg" "materialInfo5.m";
connectAttr "RControlsMaterial.msg" "materialInfo5.t" -na;
connectAttr "materialInfo2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "asdf1:Beta_HighLimbsGeoSG2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "Beta_SurfaceSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "materialInfo1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "Beta_JointsSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "Beta_Joints_MAT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "lambert2SG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "sceneConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "TEMP_RigRoot.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "TempMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "uiConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "LIMBS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn";
connectAttr "LControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "Leg_Limb_R_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "MControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "Control_Shapes_materialInfo1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "RControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "materialInfo5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn";
connectAttr "materialInfo3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn";
connectAttr "MControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "Head_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "RControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "LControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "materialInfo4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn";
connectAttr "Leg_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "Spine_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "Pelvis_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "Foot_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "Foot_Limb_R_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "Neck_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "Arm_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "Clav_Limb_R_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "Clav_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "Arm_Limb_R_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
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
// End of MixamoTest.ma
