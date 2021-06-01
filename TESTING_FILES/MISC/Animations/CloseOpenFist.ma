//Maya ASCII 2019 scene
//Name: aaaa.ma
//Last modified: Mon, May 31, 2021 06:14:20 PM
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
	rename -uid "7125EB5C-4976-88CF-325B-208CD5AD445E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 88.19210877452241 174.52112131950273 25.232988309151303 ;
	setAttr ".r" -type "double3" -37.538352729602607 16.200000000000102 -8.2801613946400136e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "50C813E7-43CB-7FF0-3E8A-219B2041B88D";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 131.07290710207815;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "62C2F9D5-458A-C0C8-1F03-A581DA6FE768";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "22A4BB20-4EF9-BEC2-A2A5-278C258A4E72";
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
	rename -uid "C14E3733-4FCB-5280-258B-D981669677F8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "17A500D2-429F-E6F7-3438-CBA0EE1FB7AF";
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
	rename -uid "D2742794-4E2E-8CC9-D3BE-F7BE1D3D315C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "185097CE-4B35-4BB8-2B94-039C145AD62A";
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
	rename -uid "3FD45FA5-441C-8F86-76FF-4DA5E28AD9A7";
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
	setAttr ".rigMode" 3;
	setAttr ".isBuilt" yes;
	setAttr ".pfrsName" -type "string" "TEMP";
	setAttr ".category" -type "string" "Animation";
	setAttr ".operation" -type "string" "Animations";
	setAttr ".nextLimbID" 25;
	setAttr ".nextJointID" 68;
	setAttr ".posesFolderPath" -type "string" "D:/Assets/Programming/Python/Maya/PayneFreeRigSuite/TESTING_FILES/MISC\\Poses";
	setAttr ".animationFolderPath" -type "string" "D:/Assets/Programming/Python/Maya/PayneFreeRigSuite/TESTING_FILES/MISC\\Animations";
	setAttr ".IKSShape" -type "string" "Cylinder_Poly";
	setAttr ".JointShape" -type "string" "Cube_Poly";
	setAttr ".IKPVShape" -type "string" "Sphere_Poly";
	setAttr ".LookAtShape" -type "string" "Circle_Wire";
	setAttr ".FKRShape" -type "string" "Cube_Poly";
	setAttr ".EmptyShape" -type "string" "Square_Wire";
createNode transform -n "LIMBS" -p "TEMP_RigRoot";
	rename -uid "073E2AB6-41EE-29A2-AD34-8EBFB5E51862";
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
createNode transform -n "Pinky_Limb_L_NODE" -p "LIMBS";
	rename -uid "88E5B294-4BA1-E2BA-8EEE-BF8879A313DA";
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
	setAttr ".ID" 2;
	setAttr ".pfrsName" -type "string" "Pinky";
	setAttr ".limbType" 4;
	setAttr ".side" 1;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "AnimGroup_aaaa_1" -p "Pinky_Limb_L_NODE";
	rename -uid "EB82A6EB-40E5-0DAC-A0D8-A9BD69A98E82";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	setAttr ".t" -type "double3" 64.399259385521816 142.65685165104517 -14.676474826879716 ;
	setAttr ".pfrsName" -type "string" "aaaa";
createNode transform -n "locator1" -p "AnimGroup_aaaa_1";
	rename -uid "9B75CF27-4D6A-950D-8392-0E8301C41E27";
createNode locator -n "locatorShape1" -p "locator1";
	rename -uid "32E94970-4035-7298-DB1F-9AB528E57983";
	setAttr -k off ".v";
createNode transform -n "locator2" -p "AnimGroup_aaaa_1";
	rename -uid "1F7ECBDA-44FA-53D1-7BE6-D28BCABA7F82";
createNode locator -n "locatorShape2" -p "locator2";
	rename -uid "989BE273-4C77-5AB0-ABD4-F986682B3F3C";
	setAttr -k off ".v";
createNode transform -n "locator3" -p "AnimGroup_aaaa_1";
	rename -uid "6743FC6C-4B34-51F2-F57A-AFAE7AFB65D7";
createNode locator -n "locatorShape3" -p "locator3";
	rename -uid "906FBE83-46C9-248B-B53E-31817975AD31";
	setAttr -k off ".v";
createNode transform -n "locator4" -p "AnimGroup_aaaa_1";
	rename -uid "F89F136C-4CE8-A82D-B9BA-89AC40821324";
createNode locator -n "locatorShape4" -p "locator4";
	rename -uid "DF59F245-4E34-724B-9B7B-D591FFB28DBE";
	setAttr -k off ".v";
createNode transform -n "Middle_Limb_L_NODE" -p "LIMBS";
	rename -uid "FB279F1C-4283-FE69-BD04-4EBE2CFC9B68";
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
	setAttr ".ID" 9;
	setAttr ".pfrsName" -type "string" "Middle";
	setAttr ".limbType" 4;
	setAttr ".side" 1;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "AnimGroup_aaaa_2" -p "Middle_Limb_L_NODE";
	rename -uid "B6C35C7A-4A12-B0AC-E3CC-6386B251EFBA";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	setAttr ".t" -type "double3" 64.399259385521816 142.65685165104517 -14.676474826879716 ;
	setAttr ".pfrsName" -type "string" "aaaa";
createNode transform -n "locator5" -p "AnimGroup_aaaa_2";
	rename -uid "D06D5259-459D-FBB8-B906-0E8C5F8BC21F";
createNode locator -n "locatorShape5" -p "locator5";
	rename -uid "C69C5A00-4C9B-51D5-4F6B-41ABD4C915B0";
	setAttr -k off ".v";
createNode transform -n "locator6" -p "AnimGroup_aaaa_2";
	rename -uid "94681445-427F-4251-BC0B-4882CDE24EE4";
createNode locator -n "locatorShape6" -p "locator6";
	rename -uid "8B8A4843-458A-0B2D-5F03-AB9117B589CB";
	setAttr -k off ".v";
createNode transform -n "locator7" -p "AnimGroup_aaaa_2";
	rename -uid "37708ABF-45B4-8F70-856E-A0B1EB9BBD4E";
createNode locator -n "locatorShape7" -p "locator7";
	rename -uid "67495F69-4B94-CDCB-91E6-49AD22EE9730";
	setAttr -k off ".v";
createNode transform -n "locator8" -p "AnimGroup_aaaa_2";
	rename -uid "C0A5682C-49A3-CFE5-8C91-A4B84A701088";
createNode locator -n "locatorShape8" -p "locator8";
	rename -uid "4A170061-4C01-C606-5C6A-1B9BE4E59071";
	setAttr -k off ".v";
createNode transform -n "Ring_Limb_L_NODE" -p "LIMBS";
	rename -uid "D17D88D3-4E11-B5AD-2F6F-BCB750F420D4";
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
	setAttr ".ID" 17;
	setAttr ".pfrsName" -type "string" "Ring";
	setAttr ".limbType" 4;
	setAttr ".side" 1;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "AnimGroup_aaaa_3" -p "Ring_Limb_L_NODE";
	rename -uid "37FCC444-4644-A793-4EF1-A09278D5274D";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	setAttr ".t" -type "double3" 64.399259385521816 142.65685165104517 -14.676474826879716 ;
	setAttr ".pfrsName" -type "string" "aaaa";
createNode transform -n "locator9" -p "AnimGroup_aaaa_3";
	rename -uid "9ECF488D-4876-3416-845F-F3919232A49D";
createNode locator -n "locatorShape9" -p "locator9";
	rename -uid "7C0756A4-4E2B-2DD1-E097-34B59401486A";
	setAttr -k off ".v";
createNode transform -n "locator10" -p "AnimGroup_aaaa_3";
	rename -uid "5F8B64C8-480F-547C-B917-AA81D9FE6479";
createNode locator -n "locatorShape10" -p "locator10";
	rename -uid "F1C38052-4D90-6510-E2E5-3BB38351FE8F";
	setAttr -k off ".v";
createNode transform -n "locator11" -p "AnimGroup_aaaa_3";
	rename -uid "ECDBDE88-4C9F-30DF-A121-3CACA702B8DC";
createNode locator -n "locatorShape11" -p "locator11";
	rename -uid "CC682654-4B0D-4CA8-97D9-FFB008038C02";
	setAttr -k off ".v";
createNode transform -n "locator12" -p "AnimGroup_aaaa_3";
	rename -uid "93A8FB04-4FA6-F7C3-092F-BB8629412CF6";
createNode locator -n "locatorShape12" -p "locator12";
	rename -uid "E31D0CC6-4E12-6109-A581-7FBA24446E35";
	setAttr -k off ".v";
createNode transform -n "Index_Limb_L_NODE" -p "LIMBS";
	rename -uid "318E3E2D-49DD-AA66-51D8-399057DFBFA8";
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
	setAttr ".ID" 21;
	setAttr ".pfrsName" -type "string" "Index";
	setAttr ".limbType" 4;
	setAttr ".side" 1;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "AnimGroup_aaaa_4" -p "Index_Limb_L_NODE";
	rename -uid "BE69EA66-43F7-0819-8705-FF83C2DCCEF1";
	addAttr -ci true -sn "pfrsName" -ln "pfrsName" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	setAttr ".t" -type "double3" 64.399259385521816 142.65685165104517 -14.676474826879716 ;
	setAttr ".pfrsName" -type "string" "aaaa";
createNode transform -n "locator13" -p "AnimGroup_aaaa_4";
	rename -uid "5E26616F-44C9-A29D-AE09-E9A3B6B56B8B";
createNode locator -n "locatorShape13" -p "locator13";
	rename -uid "C23FB5FF-44E6-CC6E-C369-F2AA8EA4798C";
	setAttr -k off ".v";
createNode transform -n "locator14" -p "AnimGroup_aaaa_4";
	rename -uid "8651E1BF-493E-0339-50E9-EE8D5AA52DCE";
createNode locator -n "locatorShape14" -p "locator14";
	rename -uid "3CB2A13A-4045-0EE7-278E-A386A4D51CED";
	setAttr -k off ".v";
createNode transform -n "locator15" -p "AnimGroup_aaaa_4";
	rename -uid "0DBAB766-498C-697D-3D65-F983B7421E6E";
createNode locator -n "locatorShape15" -p "locator15";
	rename -uid "3CA0A380-4740-59F9-462B-EDA13AE90F7C";
	setAttr -k off ".v";
createNode transform -n "locator16" -p "AnimGroup_aaaa_4";
	rename -uid "A2D306BC-4748-E0F4-F1E4-60A6DF295462";
createNode locator -n "locatorShape16" -p "locator16";
	rename -uid "6FDD18C4-45CF-73A8-2E45-8FA44373B27B";
	setAttr -k off ".v";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "0167BCA3-47EA-4757-0B24-369E70EF88F5";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "0ABB7873-4649-520F-BC89-CCBC1155B5CF";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "863C0015-42A0-FF85-1DD4-8C95978A67F1";
createNode displayLayerManager -n "layerManager";
	rename -uid "C9D1B540-40B5-B467-2563-EA8088003246";
	setAttr -s 4 ".dli[1:3]"  1 2 3;
createNode displayLayer -n "defaultLayer";
	rename -uid "0B0A2531-4F90-F7FD-B1CE-4CAB2F7A579A";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "BED87A0A-412C-12BD-82D6-BC87CCE702F4";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "59D8AA42-414F-6081-FE97-B7844F4B3548";
	setAttr ".g" yes;
createNode phong -n "Beta_Joints_MAT";
	rename -uid "8D7D51F9-4695-DA91-8E3A-09B45BF66A4E";
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
	rename -uid "9E2F0294-4B4B-D852-0C70-F2BC60680D83";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "1A541704-4418-9BC7-007E-38B04E37018A";
createNode phong -n "asdf1:Beta_HighLimbsGeoSG2";
	rename -uid "2FFD5E44-4837-0C5C-9770-719BA1133EEA";
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
	rename -uid "46E398CF-4FB6-BFD7-0322-9DBD185FD89E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "05146EEB-4BC7-6349-BC82-A4A53C765019";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "A7B9BB1A-43D2-063E-D6BA-1D9343503D8A";
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1194\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1194\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 50 -size 100 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "8FFA71A0-4740-1709-63CD-32A41F9D25C5";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 136 -ast 0 -aet 136 ";
	setAttr ".st" 6;
createNode lambert -n "TempMaterial";
	rename -uid "F2C5FF7F-4AED-DB5B-F777-369D27B42A6B";
	setAttr ".c" -type "float3" 1 0.92308331 0 ;
	setAttr ".it" -type "float3" 0.69277108 0.69277108 0.69277108 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "E13DD5E5-49CB-E3CC-BA4C-B1A07A2C24DA";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Control_Shapes_materialInfo1";
	rename -uid "D778E06E-4DBD-A3F8-1288-908ABD8C4925";
createNode surfaceShader -n "LControlsMaterial";
	rename -uid "20DF2124-47D6-4C75-95FA-4C8C4F78E518";
	setAttr ".oc" -type "float3" 0 0 1 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "LControlsMaterialSG";
	rename -uid "8B089F0A-4775-CDCA-770A-32B973140ED4";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "DA8FC93E-48D8-D867-D61A-1CBD5B3A5594";
createNode surfaceShader -n "MControlsMaterial";
	rename -uid "11607BEF-4B98-DAB6-B25F-60B81FD3E35A";
	setAttr ".oc" -type "float3" 1 1 0 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "MControlsMaterialSG";
	rename -uid "869E790D-4172-CAFD-B59A-DBB7E079FFD9";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "F48D940F-4B7B-AEB0-42C4-1881D067903F";
createNode surfaceShader -n "RControlsMaterial";
	rename -uid "602C7163-44D9-FA18-D8D2-868C130F6658";
	setAttr ".oc" -type "float3" 1 0 0 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "RControlsMaterialSG";
	rename -uid "19BB94AC-4FF9-AE20-1AEB-FAAFEB767EF5";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "CABB4F7E-4EB4-833B-BC26-3C8A06FFAB30";
createNode controller -n "Pinky1_Joint_L_CTR0_tag";
	rename -uid "3A97E77E-4A03-F126-8036-1691049FEC5C";
createNode controller -n "Pinky2_Joint_L_CTR1_tag";
	rename -uid "5822C4CF-454D-0C7F-AA8C-C7BC71430913";
createNode controller -n "Pinky3_Joint_L_CTR2_tag";
	rename -uid "66A02934-4012-9E93-8E02-7CBFA721C1E6";
createNode controller -n "Pinky4_Joint_L_CTR3_tag";
	rename -uid "C9E3E099-4BD4-E05E-B49E-65A6DF32226F";
createNode controller -n "Shoulder_Joint_L_CTR0_tag";
	rename -uid "3D53E11B-454A-A035-EA7C-74855B688FA1";
	setAttr -s 20 ".child";
createNode controller -n "Thumb1_Joint_R_CTR0_tag";
	rename -uid "F2BCAC9E-4E42-C049-F6F4-9A9DC09C1351";
createNode controller -n "Thumb2_Joint_R_CTR1_tag";
	rename -uid "939C2C2C-40CB-0FD3-051B-299D7ED07216";
createNode controller -n "Thumb3_Joint_R_CTR2_tag";
	rename -uid "6A81E8B3-405D-8A94-003A-408139C59657";
createNode controller -n "Thumb4_Joint_R_CTR3_tag";
	rename -uid "217ABEB4-44DF-DFD4-4FD8-EC987D2758BE";
createNode controller -n "Shoulder_Joint_R_CTR0_tag";
	rename -uid "828F7146-420E-AA1D-5B0A-FFBA72CB8A0B";
	setAttr -s 20 ".child";
createNode controller -n "Head1_Joint_M_CTR0_tag";
	rename -uid "81F54469-4E88-8A05-A418-F1894C87CD53";
	setAttr -s 2 ".child";
createNode controller -n "Head2_Joint_M_CTR1_tag";
	rename -uid "96E6CE3A-4620-F58E-9B55-69A005A8960E";
createNode controller -n "Neck_Joint_M_CTR0_tag";
	rename -uid "A6A0E9C5-4B94-903A-7240-5ABA214FEA0E";
	setAttr -s 2 ".child";
createNode controller -n "Hip_Joint_R_CTR0_tag";
	rename -uid "4FF6A4CD-4343-262B-749A-79BE64DFDDB4";
	setAttr -s 2 ".child";
createNode controller -n "Knee_Joint_R_CTR1_tag";
	rename -uid "69256310-4992-1A5E-77D1-35864CA3F814";
createNode controller -n "Ankle_Joint_R_CTR2_tag";
	rename -uid "3BD20D7C-44BF-8102-C9BD-31A73F1684A6";
createNode controller -n "Root_Joint_M_CTR0_tag";
	rename -uid "F8055DE2-4A9B-F140-D6F5-8F835D64B14B";
	setAttr -s 9 ".child";
createNode controller -n "Hip_Joint_L_CTR0_tag";
	rename -uid "21987135-4DA7-4F15-AA3C-3E89F37DB8D1";
	setAttr -s 2 ".child";
createNode controller -n "Knee_Joint_L_CTR1_tag";
	rename -uid "4B5541F1-4BC0-16F8-917E-9183887A8F3D";
createNode controller -n "Ankle_Joint_L_CTR2_tag";
	rename -uid "E7F21785-4649-7A28-9EA0-FF9808134948";
createNode controller -n "Pinky1_Joint_R_CTR0_tag";
	rename -uid "C5ADC46A-498F-C04F-1F72-29A2ADB0A9A1";
createNode controller -n "Pinky2_Joint_R_CTR1_tag";
	rename -uid "D7CE6D66-472C-D39F-18C5-0A86C6F12912";
createNode controller -n "Pinky3_Joint_R_CTR2_tag";
	rename -uid "8AF77B32-40AC-6C9F-6683-08978F027015";
createNode controller -n "Pinky4_Joint_R_CTR3_tag";
	rename -uid "81C5FF4D-469B-1B12-9F4F-029D394695F2";
createNode controller -n "Thumb1_Joint_L_CTR0_tag";
	rename -uid "EF3C2288-4020-ED04-4A07-C387FFB93D82";
createNode controller -n "Thumb2_Joint_L_CTR1_tag";
	rename -uid "3400F170-4870-5DAD-5F80-5A8B539653AC";
createNode controller -n "Thumb3_Joint_L_CTR2_tag";
	rename -uid "090EF588-41F7-89F6-8722-C799AAC55650";
createNode controller -n "Thumb4_Joint_L_CTR3_tag";
	rename -uid "F325D165-40F6-359C-41E8-2CB8C75663C9";
createNode controller -n "Spine1_Joint_M_CTR0_tag";
	rename -uid "0B392494-4006-2128-A45A-6EA62EBC5ED4";
	setAttr -s 3 ".child";
createNode controller -n "Spine2_Joint_M_CTR1_tag";
	rename -uid "3F62CD27-47DF-E0C9-C92B-DAB1FCC69B16";
createNode controller -n "Spine3_Joint_M_CTR2_tag";
	rename -uid "1C286854-4568-7F2C-4098-05B1FA42E180";
createNode controller -n "Middle1_Joint_L_CTR0_tag";
	rename -uid "4C68932C-4FE6-42D2-D7E1-9889A1798ABC";
createNode controller -n "Middle2_Joint_L_CTR1_tag";
	rename -uid "27FBA765-4F3A-7D32-F137-5ABB01E32516";
createNode controller -n "Middle3_Joint_L_CTR2_tag";
	rename -uid "FA1619F0-46BE-1743-4168-BDA5188F02FA";
createNode controller -n "Middle4_Joint_L_CTR3_tag";
	rename -uid "2E35AF47-47D5-484D-2A4B-4C8A48A5B5B7";
createNode controller -n "Middle1_Joint_R_CTR0_tag";
	rename -uid "A60805E4-483C-D60F-2119-93825E855D29";
createNode controller -n "Middle2_Joint_R_CTR1_tag";
	rename -uid "1AE41E3D-46D3-30C8-80B8-3B85246CBA20";
createNode controller -n "Middle3_Joint_R_CTR2_tag";
	rename -uid "0D9C352B-4DAF-724D-08A4-908D6408B37D";
createNode controller -n "Middle4_Joint_R_CTR3_tag";
	rename -uid "9D7D6E91-43C0-5EF4-5814-B6B342A1F591";
createNode controller -n "Eye_Joint_R_CTR0_tag";
	rename -uid "B69A476F-44ED-6DB3-6B55-CE9ED6EE9A94";
createNode controller -n "Ball_Joint_L_CTR0_tag";
	rename -uid "BDD3714C-44B0-75D0-9CDC-1C91811CF440";
createNode controller -n "Toe_Joint_L_CTR1_tag";
	rename -uid "84922E02-4CE3-C363-0307-858249F59551";
createNode controller -n "Ball_Joint_R_CTR0_tag";
	rename -uid "C46282C0-4AB6-38EB-A68A-5EA302E52612";
createNode controller -n "Toe_Joint_R_CTR1_tag";
	rename -uid "E7F99443-4CD2-935F-10E0-CA8AC1341C4F";
createNode controller -n "Eye_Joint_L_CTR0_tag";
	rename -uid "9CF70448-489A-994E-76EE-6EA128E4255B";
createNode controller -n "controller1";
	rename -uid "B05373AB-467C-1177-ABA4-5692BB868456";
	setAttr ".cwsb" yes;
createNode controller -n "Ring1_Joint_L_CTR0_tag";
	rename -uid "2C2931F5-4436-5C6B-A74B-9795E8132E3D";
createNode controller -n "Ring2_Joint_L_CTR1_tag";
	rename -uid "EAAF4F7A-4AD3-15EC-7D2A-5C9578A5A58B";
createNode controller -n "Ring3_Joint_L_CTR2_tag";
	rename -uid "3511830C-4827-C157-33CB-D79D7334318E";
createNode controller -n "Ring4_Joint_L_CTR3_tag";
	rename -uid "CF0B457F-4AD0-0AEA-EBFD-C8B3A637E4BE";
createNode controller -n "Elbow_Joint_L_CTR1_tag";
	rename -uid "10F994F7-403E-B82A-10C6-CEB75A4D0BF7";
createNode controller -n "Wrist_Joint_L_CTR2_tag";
	rename -uid "13F9D153-4C56-1D19-058F-49ABA71F96B8";
createNode controller -n "Clav_Joint_L_CTR0_tag";
	rename -uid "C5B075DE-4A1C-5AFC-CE66-EFBC15AD4E9D";
	setAttr -s 3 ".child";
createNode controller -n "Index1_Joint_R_CTR0_tag";
	rename -uid "53749CAD-49A0-E7D1-55C2-C4885A0939F5";
createNode controller -n "Index2_Joint_R_CTR1_tag";
	rename -uid "83920E44-476D-2EA7-06F2-58869A2BADE9";
createNode controller -n "Index3_Joint_R_CTR2_tag";
	rename -uid "8D675000-4FA3-CADC-1B74-4AB0E9734A86";
createNode controller -n "Index4_Joint_R_CTR3_tag";
	rename -uid "F7D06C53-48B8-67EF-4447-5EBF231094EF";
createNode controller -n "Index1_Joint_L_CTR0_tag";
	rename -uid "1751E218-4883-DBED-946D-508DAD9E0E2F";
createNode controller -n "Index2_Joint_L_CTR1_tag";
	rename -uid "212C06DA-4F13-9DAA-B4FF-BBB0AEBA9FE7";
createNode controller -n "Index3_Joint_L_CTR2_tag";
	rename -uid "66C30DC4-48C1-7502-4108-D2A3C8F11028";
createNode controller -n "Index4_Joint_L_CTR3_tag";
	rename -uid "F0F2D200-4250-F289-855A-E0AF9B4232B8";
createNode controller -n "Clav_Joint_R_CTR0_tag";
	rename -uid "BDE220B5-4EB8-CD22-8892-6CBA4A72310B";
	setAttr -s 3 ".child";
createNode controller -n "Elbow_Joint_R_CTR1_tag";
	rename -uid "9084FD7E-46BC-D733-2736-61A27596555E";
createNode controller -n "Wrist_Joint_R_CTR2_tag";
	rename -uid "46AFC619-40DA-3053-4619-028F80645496";
createNode controller -n "Ring1_Joint_R_CTR0_tag";
	rename -uid "6318A5C4-4ED1-C9EC-CB62-6B8ADC8B860C";
createNode controller -n "Ring2_Joint_R_CTR1_tag";
	rename -uid "3083060B-43D5-2BA3-F9D9-7285DECB045E";
createNode controller -n "Ring3_Joint_R_CTR2_tag";
	rename -uid "DCF4CF66-4F8E-9429-9194-DA984EF06382";
createNode controller -n "Ring4_Joint_R_CTR3_tag";
	rename -uid "179F6710-462B-9F27-0620-769E6BE86F78";
createNode animCurveTU -n "locator1_visibility";
	rename -uid "46AC0C6F-4F8C-8BC5-BBA6-B08B12F32ACE";
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
	rename -uid "F73E39E7-45F5-149D-D563-789305B163AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 8.0777778625488281 1 8.0777778625488281
		 2 8.0777778625488139 3 8.0777778625488139 4 8.0777778625487997 5 8.0777778625487855
		 6 8.0777778625487713 7 8.0777778625487713 8 8.0777778625487571 9 8.0777778625487571
		 10 8.0777778625487571 11 8.0777778625487571 12 8.0777778625487571 13 8.0777778625487713
		 14 8.0777778625487713 15 8.0777778625487855 16 8.0777778625487997 17 8.0777778625488139
		 18 8.0777778625488139 19 8.0777778625488281 20 8.0777778625488281 21 8.0777778625488281
		 22 8.0777778625488281 23 8.0777778625488281 24 8.0777778625488281 25 8.0777778625488281
		 26 8.0777778625488281 27 8.0777778625488281 28 8.0777778625488281 29 8.0777778625488281
		 30 8.0777778625488281 31 8.0777778625488281 32 8.0777778625488281 33 8.0777778625488281
		 34 8.0777778625488281 35 8.0777778625488281 36 8.0777778625488281 37 8.0777778625488281
		 38 8.0777778625488281 39 8.0777778625488281 40 8.0777778625488281 41 8.0777778625488281
		 42 8.0777778625488281 43 8.0777778625488281 44 8.0777778625488281 45 8.0777778625488281
		 46 8.0777778625488281 47 8.0777778625488281 48 8.0777778625488281 49 8.0777778625488281
		 50 8.0777778625488281 51 8.0777778625488281 52 8.0777778625488281 53 8.0777778625488281
		 54 8.0777778625488281 55 8.0777778625488281 56 8.0777778625488281 57 8.0777778625488281
		 58 8.0777778625488281 59 8.0777778625488281 60 8.0777778625488281 61 8.0777778625488281
		 62 8.0777778625488281 63 8.0777778625488281 64 8.0777778625488281 65 8.0777778625488281
		 66 8.0777778625488281 67 8.0777778625488281 68 8.0777778625488281 69 8.0777778625488281
		 70 8.0777778625488281 71 8.0777778625488281 72 8.0777778625488281 73 8.0777778625488281
		 74 8.0777778625488281 75 8.0777778625488281 76 8.0777778625488281 77 8.0777778625488281
		 78 8.0777778625488281 79 8.0777778625488281 80 8.0777778625488281 81 8.0777778625488281
		 82 8.0777778625488281 83 8.0777778625488281 84 8.0777778625488281 85 8.0777778625488281
		 86 8.0777778625488281 87 8.0777778625488281 88 8.0777778625488281 89 8.0777778625488281
		 90 8.0777778625488281 91 8.0777778625488281 92 8.0777778625488281 93 8.0777778625488281
		 94 8.0777778625488281 95 8.0777778625488281 96 8.0777778625488281 97 8.0777778625488281
		 98 8.0777778625488281 99 8.0777778625488281 100 8.0777778625488281 101 8.0777778625488281
		 102 8.0777778625488281 103 8.0777778625488281 104 8.0777778625488281 105 8.0777778625488281
		 106 8.0777778625488281 107 8.0777778625488281 108 8.0777778625488281 109 8.0777778625488281
		 110 8.0777778625488281 111 8.0777778625488281 112 8.0777778625488281 113 8.0777778625488281
		 114 8.0777778625488281 115 8.0777778625488281 116 8.0777778625488281 117 8.0777778625488281
		 118 8.0777778625488281 119 8.0777778625488281 120 8.0777778625488281 121 8.0777778625488281
		 122 8.0777778625488281 123 8.0777778625488281 124 8.0777778625488281 125 8.0777778625488281
		 126 8.0777778625488281 127 8.0777778625488281 128 8.0777778625488281 129 8.0777778625488281
		 130 8.0777778625488281 131 8.0777778625488281 132 8.0777778625488281 133 8.0777778625488281
		 134 8.0777778625488281 135 8.0777778625488281 136 8.0777778625488281;
createNode animCurveTL -n "locator1_translateY";
	rename -uid "3D44D39B-480D-358B-5619-FE9A6EC86A21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -0.48866820335391026 1 -0.48866820335391026
		 2 -0.48866820335391026 3 -0.48866820335391026 4 -0.48866820335391026 5 -0.48866820335391026
		 6 -0.48866820335391026 7 -0.48866820335388184 8 -0.48866820335388184 9 -0.48866820335388184
		 10 -0.48866820335388184 11 -0.48866820335388184 12 -0.48866820335388184 13 -0.48866820335388184
		 14 -0.48866820335391026 15 -0.48866820335391026 16 -0.48866820335391026 17 -0.48866820335391026
		 18 -0.48866820335391026 19 -0.48866820335391026 20 -0.48866820335391026 21 -0.48866820335391026
		 22 -0.48866820335391026 23 -0.48866820335391026 24 -0.48866820335391026 25 -0.48866820335391026
		 26 -0.48866820335391026 27 -0.48866820335391026 28 -0.48866820335391026 29 -0.48866820335391026
		 30 -0.48866820335391026 31 -0.48866820335391026 32 -0.48866820335391026 33 -0.48866820335391026
		 34 -0.48866820335391026 35 -0.48866820335391026 36 -0.48866820335391026 37 -0.48866820335391026
		 38 -0.48866820335391026 39 -0.48866820335391026 40 -0.48866820335391026 41 -0.48866820335391026
		 42 -0.48866820335391026 43 -0.48866820335391026 44 -0.48866820335391026 45 -0.48866820335391026
		 46 -0.48866820335391026 47 -0.48866820335391026 48 -0.48866820335391026 49 -0.48866820335391026
		 50 -0.48866820335391026 51 -0.48866820335391026 52 -0.48866820335391026 53 -0.48866820335391026
		 54 -0.48866820335391026 55 -0.48866820335391026 56 -0.48866820335391026 57 -0.48866820335391026
		 58 -0.48866820335391026 59 -0.48866820335391026 60 -0.48866820335391026 61 -0.48866820335391026
		 62 -0.48866820335391026 63 -0.48866820335391026 64 -0.48866820335391026 65 -0.48866820335391026
		 66 -0.48866820335391026 67 -0.48866820335391026 68 -0.48866820335391026 69 -0.48866820335391026
		 70 -0.48866820335391026 71 -0.48866820335391026 72 -0.48866820335391026 73 -0.48866820335391026
		 74 -0.48866820335391026 75 -0.48866820335391026 76 -0.48866820335391026 77 -0.48866820335391026
		 78 -0.48866820335391026 79 -0.48866820335391026 80 -0.48866820335391026 81 -0.48866820335391026
		 82 -0.48866820335391026 83 -0.48866820335391026 84 -0.48866820335391026 85 -0.48866820335391026
		 86 -0.48866820335391026 87 -0.48866820335391026 88 -0.48866820335391026 89 -0.48866820335391026
		 90 -0.48866820335391026 91 -0.48866820335391026 92 -0.48866820335391026 93 -0.48866820335391026
		 94 -0.48866820335391026 95 -0.48866820335391026 96 -0.48866820335391026 97 -0.48866820335391026
		 98 -0.48866820335391026 99 -0.48866820335391026 100 -0.48866820335391026 101 -0.48866820335391026
		 102 -0.48866820335391026 103 -0.48866820335391026 104 -0.48866820335391026 105 -0.48866820335391026
		 106 -0.48866820335391026 107 -0.48866820335391026 108 -0.48866820335391026 109 -0.48866820335391026
		 110 -0.48866820335391026 111 -0.48866820335391026 112 -0.48866820335391026 113 -0.48866820335391026
		 114 -0.48866820335391026 115 -0.48866820335391026 116 -0.48866820335391026 117 -0.48866820335391026
		 118 -0.48866820335391026 119 -0.48866820335391026 120 -0.48866820335391026 121 -0.48866820335391026
		 122 -0.48866820335391026 123 -0.48866820335391026 124 -0.48866820335391026 125 -0.48866820335391026
		 126 -0.48866820335391026 127 -0.48866820335391026 128 -0.48866820335391026 129 -0.48866820335391026
		 130 -0.48866820335391026 131 -0.48866820335391026 132 -0.48866820335391026 133 -0.48866820335391026
		 134 -0.48866820335391026 135 -0.48866820335391026 136 -0.48866820335391026;
createNode animCurveTL -n "locator1_translateZ";
	rename -uid "EE11D9B5-4EF2-AE13-E36D-1D94371DD1DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -3.8060669898986816 1 -3.8060669898986816
		 2 -3.8060669898986816 3 -3.8060669898986816 4 -3.8060669898986816 5 -3.8060669898986816
		 6 -3.8060669898986816 7 -3.8060669898986816 8 -3.8060669898986816 9 -3.8060669898986816
		 10 -3.8060669898986816 11 -3.8060669898986816 12 -3.8060669898986816 13 -3.8060669898986816
		 14 -3.8060669898986816 15 -3.8060669898986816 16 -3.8060669898986816 17 -3.8060669898986816
		 18 -3.8060669898986816 19 -3.8060669898986816 20 -3.8060669898986816 21 -3.8060669898986816
		 22 -3.8060669898986816 23 -3.8060669898986816 24 -3.8060669898986816 25 -3.8060669898986816
		 26 -3.8060669898986816 27 -3.8060669898986816 28 -3.8060669898986816 29 -3.8060669898986816
		 30 -3.8060669898986816 31 -3.8060669898986816 32 -3.8060669898986816 33 -3.8060669898986816
		 34 -3.8060669898986816 35 -3.8060669898986816 36 -3.8060669898986816 37 -3.8060669898986816
		 38 -3.8060669898986816 39 -3.8060669898986816 40 -3.8060669898986816 41 -3.8060669898986816
		 42 -3.8060669898986816 43 -3.8060669898986816 44 -3.8060669898986816 45 -3.8060669898986816
		 46 -3.8060669898986816 47 -3.8060669898986816 48 -3.8060669898986816 49 -3.8060669898986816
		 50 -3.8060669898986816 51 -3.8060669898986816 52 -3.8060669898986816 53 -3.8060669898986816
		 54 -3.8060669898986816 55 -3.8060669898986816 56 -3.8060669898986816 57 -3.8060669898986816
		 58 -3.8060669898986816 59 -3.8060669898986816 60 -3.8060669898986816 61 -3.8060669898986816
		 62 -3.8060669898986816 63 -3.8060669898986816 64 -3.8060669898986816 65 -3.8060669898986816
		 66 -3.8060669898986816 67 -3.8060669898986816 68 -3.8060669898986816 69 -3.8060669898986816
		 70 -3.8060669898986816 71 -3.8060669898986816 72 -3.8060669898986816 73 -3.8060669898986816
		 74 -3.8060669898986816 75 -3.8060669898986816 76 -3.8060669898986816 77 -3.8060669898986816
		 78 -3.8060669898986816 79 -3.8060669898986816 80 -3.8060669898986816 81 -3.8060669898986816
		 82 -3.8060669898986816 83 -3.8060669898986816 84 -3.8060669898986816 85 -3.8060669898986816
		 86 -3.8060669898986816 87 -3.8060669898986816 88 -3.8060669898986816 89 -3.8060669898986816
		 90 -3.8060669898986816 91 -3.8060669898986816 92 -3.8060669898986816 93 -3.8060669898986816
		 94 -3.8060669898986816 95 -3.8060669898986816 96 -3.8060669898986816 97 -3.8060669898986816
		 98 -3.8060669898986816 99 -3.8060669898986816 100 -3.8060669898986816 101 -3.8060669898986816
		 102 -3.8060669898986816 103 -3.8060669898986816 104 -3.8060669898986816 105 -3.8060669898986816
		 106 -3.8060669898986816 107 -3.8060669898986816 108 -3.8060669898986816 109 -3.8060669898986816
		 110 -3.8060669898986816 111 -3.8060669898986816 112 -3.8060669898986816 113 -3.8060669898986816
		 114 -3.8060669898986816 115 -3.8060669898986816 116 -3.8060669898986816 117 -3.8060669898986816
		 118 -3.8060669898986816 119 -3.8060669898986816 120 -3.8060669898986816 121 -3.8060669898986816
		 122 -3.8060669898986816 123 -3.8060669898986816 124 -3.8060669898986816 125 -3.8060669898986816
		 126 -3.8060669898986816 127 -3.8060669898986816 128 -3.8060669898986816 129 -3.8060669898986816
		 130 -3.8060669898986816 131 -3.8060669898986816 132 -3.8060669898986816 133 -3.8060669898986816
		 134 -3.8060669898986816 135 -3.8060669898986816 136 -3.8060669898986816;
createNode animCurveTA -n "locator1_rotateX";
	rename -uid "76979F2F-48BF-1EC9-BE96-19A6C7E07FD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator1_rotateY";
	rename -uid "35B5CEED-4102-4183-ECD9-6386D359F2CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator1_rotateZ";
	rename -uid "26CF1266-4750-B23A-EC30-4EB7E9B6A08B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 -2.4502358467091647 2 -9.1008760020626092
		 3 -18.901819388899266 4 -30.802964930058081 5 -43.754211548377938 6 -56.705458166697831
		 7 -68.606603707856607 8 -78.407547094693257 9 -85.0581872500467 10 -87.508423096755905
		 11 -85.058187250046743 12 -78.407547094693314 13 -68.606603707856621 14 -56.705458166697831
		 15 -43.754211548377945 16 -30.802964930058099 17 -18.901819388899302 18 -9.10087600206265
		 19 -2.4502358467092025 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0
		 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0
		 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0
		 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0
		 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0
		 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0
		 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0
		 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTU -n "locator1_scaleX";
	rename -uid "B7D487DC-4803-9F8A-27B2-4AB729277A46";
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
createNode animCurveTU -n "locator1_scaleY";
	rename -uid "BD936435-4FB7-1FC6-D0AA-E082EE2555E7";
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
createNode animCurveTU -n "locator1_scaleZ";
	rename -uid "29B355C7-4C2A-986A-FFDC-448E88666204";
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
createNode animCurveTU -n "locator2_visibility";
	rename -uid "AA4DCB78-4A8A-DA6E-4BB0-1EA52193877A";
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
	rename -uid "83D3C952-4364-4257-A217-019D90070843";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 11.677812337875366 1 11.674520839127496
		 2 11.632492546374934 3 11.483680010452247 4 11.169966556522667 5 10.678128475601753
		 6 10.053990403434412 7 9.3909584392941809 8 8.8011985813301692 9 8.3878970007526306
		 10 8.2342781689525282 11 8.3878970007526163 12 8.8011985813301976 13 9.3909584392941809
		 14 10.053990403434398 15 10.678128475601739 16 11.169966556522667 17 11.483680010452261
		 18 11.632492546374934 19 11.674520839127496 20 11.677812337875366 21 11.677812337875366
		 22 11.677812337875366 23 11.677812337875366 24 11.677812337875366 25 11.677812337875366
		 26 11.677812337875366 27 11.677812337875366 28 11.677812337875366 29 11.677812337875366
		 30 11.677812337875366 31 11.677812337875366 32 11.677812337875366 33 11.677812337875366
		 34 11.677812337875366 35 11.677812337875366 36 11.677812337875366 37 11.677812337875366
		 38 11.677812337875366 39 11.677812337875366 40 11.677812337875366 41 11.677812337875366
		 42 11.677812337875366 43 11.677812337875366 44 11.677812337875366 45 11.677812337875366
		 46 11.677812337875366 47 11.677812337875366 48 11.677812337875366 49 11.677812337875366
		 50 11.677812337875366 51 11.677812337875366 52 11.677812337875366 53 11.677812337875366
		 54 11.677812337875366 55 11.677812337875366 56 11.677812337875366 57 11.677812337875366
		 58 11.677812337875366 59 11.677812337875366 60 11.677812337875366 61 11.677812337875366
		 62 11.677812337875366 63 11.677812337875366 64 11.677812337875366 65 11.677812337875366
		 66 11.677812337875366 67 11.677812337875366 68 11.677812337875366 69 11.677812337875366
		 70 11.677812337875366 71 11.677812337875366 72 11.677812337875366 73 11.677812337875366
		 74 11.677812337875366 75 11.677812337875366 76 11.677812337875366 77 11.677812337875366
		 78 11.677812337875366 79 11.677812337875366 80 11.677812337875366 81 11.677812337875366
		 82 11.677812337875366 83 11.677812337875366 84 11.677812337875366 85 11.677812337875366
		 86 11.677812337875366 87 11.677812337875366 88 11.677812337875366 89 11.677812337875366
		 90 11.677812337875366 91 11.677812337875366 92 11.677812337875366 93 11.677812337875366
		 94 11.677812337875366 95 11.677812337875366 96 11.677812337875366 97 11.677812337875366
		 98 11.677812337875366 99 11.677812337875366 100 11.677812337875366 101 11.677812337875366
		 102 11.677812337875366 103 11.677812337875366 104 11.677812337875366 105 11.677812337875366
		 106 11.677812337875366 107 11.677812337875366 108 11.677812337875366 109 11.677812337875366
		 110 11.677812337875366 111 11.677812337875366 112 11.677812337875366 113 11.677812337875366
		 114 11.677812337875366 115 11.677812337875366 116 11.677812337875366 117 11.677812337875366
		 118 11.677812337875366 119 11.677812337875366 120 11.677812337875366 121 11.677812337875366
		 122 11.677812337875366 123 11.677812337875366 124 11.677812337875366 125 11.677812337875366
		 126 11.677812337875366 127 11.677812337875366 128 11.677812337875366 129 11.677812337875366
		 130 11.677812337875366 131 11.677812337875366 132 11.677812337875366 133 11.677812337875366
		 134 11.677812337875366 135 11.677812337875366 136 11.677812337875366;
createNode animCurveTL -n "locator2_translateY";
	rename -uid "2BCA069C-49B6-A0CF-3757-F9BF9CF12DC7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -0.48867045556906419 1 -0.64257786509332959
		 2 -1.0580992704161929 3 -1.6548923595311464 4 -2.3322021206998045 5 -2.9783318177282467
		 6 -3.4977930290782808 7 -3.8406534354816984 8 -4.0152686467244791 9 -4.0753204507377916
		 10 -4.0852993878985728 11 -4.0753204507377632 12 -4.0152686467245076 13 -3.8406534354816984
		 14 -3.4977930290782808 15 -2.9783318177282467 16 -2.3322021206998045 17 -1.654892359531118
		 18 -1.0580992704161929 19 -0.64257786509338644 20 -0.48867045556906419 21 -0.48867045556906419
		 22 -0.48867045556906419 23 -0.48867045556906419 24 -0.48867045556906419 25 -0.48867045556906419
		 26 -0.48867045556906419 27 -0.48867045556906419 28 -0.48867045556906419 29 -0.48867045556906419
		 30 -0.48867045556906419 31 -0.48867045556906419 32 -0.48867045556906419 33 -0.48867045556906419
		 34 -0.48867045556906419 35 -0.48867045556906419 36 -0.48867045556906419 37 -0.48867045556906419
		 38 -0.48867045556906419 39 -0.48867045556906419 40 -0.48867045556906419 41 -0.48867045556906419
		 42 -0.48867045556906419 43 -0.48867045556906419 44 -0.48867045556906419 45 -0.48867045556906419
		 46 -0.48867045556906419 47 -0.48867045556906419 48 -0.48867045556906419 49 -0.48867045556906419
		 50 -0.48867045556906419 51 -0.48867045556906419 52 -0.48867045556906419 53 -0.48867045556906419
		 54 -0.48867045556906419 55 -0.48867045556906419 56 -0.48867045556906419 57 -0.48867045556906419
		 58 -0.48867045556906419 59 -0.48867045556906419 60 -0.48867045556906419 61 -0.48867045556906419
		 62 -0.48867045556906419 63 -0.48867045556906419 64 -0.48867045556906419 65 -0.48867045556906419
		 66 -0.48867045556906419 67 -0.48867045556906419 68 -0.48867045556906419 69 -0.48867045556906419
		 70 -0.48867045556906419 71 -0.48867045556906419 72 -0.48867045556906419 73 -0.48867045556906419
		 74 -0.48867045556906419 75 -0.48867045556906419 76 -0.48867045556906419 77 -0.48867045556906419
		 78 -0.48867045556906419 79 -0.48867045556906419 80 -0.48867045556906419 81 -0.48867045556906419
		 82 -0.48867045556906419 83 -0.48867045556906419 84 -0.48867045556906419 85 -0.48867045556906419
		 86 -0.48867045556906419 87 -0.48867045556906419 88 -0.48867045556906419 89 -0.48867045556906419
		 90 -0.48867045556906419 91 -0.48867045556906419 92 -0.48867045556906419 93 -0.48867045556906419
		 94 -0.48867045556906419 95 -0.48867045556906419 96 -0.48867045556906419 97 -0.48867045556906419
		 98 -0.48867045556906419 99 -0.48867045556906419 100 -0.48867045556906419 101 -0.48867045556906419
		 102 -0.48867045556906419 103 -0.48867045556906419 104 -0.48867045556906419 105 -0.48867045556906419
		 106 -0.48867045556906419 107 -0.48867045556906419 108 -0.48867045556906419 109 -0.48867045556906419
		 110 -0.48867045556906419 111 -0.48867045556906419 112 -0.48867045556906419 113 -0.48867045556906419
		 114 -0.48867045556906419 115 -0.48867045556906419 116 -0.48867045556906419 117 -0.48867045556906419
		 118 -0.48867045556906419 119 -0.48867045556906419 120 -0.48867045556906419 121 -0.48867045556906419
		 122 -0.48867045556906419 123 -0.48867045556906419 124 -0.48867045556906419 125 -0.48867045556906419
		 126 -0.48867045556906419 127 -0.48867045556906419 128 -0.48867045556906419 129 -0.48867045556906419
		 130 -0.48867045556906419 131 -0.48867045556906419 132 -0.48867045556906419 133 -0.48867045556906419
		 134 -0.48867045556906419 135 -0.48867045556906419 136 -0.48867045556906419;
createNode animCurveTL -n "locator2_translateZ";
	rename -uid "3006E09B-43DA-917B-A0E7-15B3470CA48D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -3.8060932286935021 1 -3.8060932286934985
		 2 -3.8060932286935021 3 -3.8060932286935021 4 -3.8060932286935021 5 -3.8060932286934985
		 6 -3.8060932286935021 7 -3.8060932286935021 8 -3.8060932286935056 9 -3.8060932286935021
		 10 -3.8060932286935021 11 -3.8060932286935021 12 -3.8060932286935021 13 -3.8060932286935021
		 14 -3.8060932286935021 15 -3.8060932286935021 16 -3.8060932286935021 17 -3.8060932286934985
		 18 -3.8060932286935021 19 -3.8060932286934985 20 -3.8060932286935021 21 -3.8060932286935021
		 22 -3.8060932286935021 23 -3.8060932286935021 24 -3.8060932286935021 25 -3.8060932286935021
		 26 -3.8060932286935021 27 -3.8060932286935021 28 -3.8060932286935021 29 -3.8060932286935021
		 30 -3.8060932286935021 31 -3.8060932286935021 32 -3.8060932286935021 33 -3.8060932286935021
		 34 -3.8060932286935021 35 -3.8060932286935021 36 -3.8060932286935021 37 -3.8060932286935021
		 38 -3.8060932286935021 39 -3.8060932286935021 40 -3.8060932286935021 41 -3.8060932286935021
		 42 -3.8060932286935021 43 -3.8060932286935021 44 -3.8060932286935021 45 -3.8060932286935021
		 46 -3.8060932286935021 47 -3.8060932286935021 48 -3.8060932286935021 49 -3.8060932286935021
		 50 -3.8060932286935021 51 -3.8060932286935021 52 -3.8060932286935021 53 -3.8060932286935021
		 54 -3.8060932286935021 55 -3.8060932286935021 56 -3.8060932286935021 57 -3.8060932286935021
		 58 -3.8060932286935021 59 -3.8060932286935021 60 -3.8060932286935021 61 -3.8060932286935021
		 62 -3.8060932286935021 63 -3.8060932286935021 64 -3.8060932286935021 65 -3.8060932286935021
		 66 -3.8060932286935021 67 -3.8060932286935021 68 -3.8060932286935021 69 -3.8060932286935021
		 70 -3.8060932286935021 71 -3.8060932286935021 72 -3.8060932286935021 73 -3.8060932286935021
		 74 -3.8060932286935021 75 -3.8060932286935021 76 -3.8060932286935021 77 -3.8060932286935021
		 78 -3.8060932286935021 79 -3.8060932286935021 80 -3.8060932286935021 81 -3.8060932286935021
		 82 -3.8060932286935021 83 -3.8060932286935021 84 -3.8060932286935021 85 -3.8060932286935021
		 86 -3.8060932286935021 87 -3.8060932286935021 88 -3.8060932286935021 89 -3.8060932286935021
		 90 -3.8060932286935021 91 -3.8060932286935021 92 -3.8060932286935021 93 -3.8060932286935021
		 94 -3.8060932286935021 95 -3.8060932286935021 96 -3.8060932286935021 97 -3.8060932286935021
		 98 -3.8060932286935021 99 -3.8060932286935021 100 -3.8060932286935021 101 -3.8060932286935021
		 102 -3.8060932286935021 103 -3.8060932286935021 104 -3.8060932286935021 105 -3.8060932286935021
		 106 -3.8060932286935021 107 -3.8060932286935021 108 -3.8060932286935021 109 -3.8060932286935021
		 110 -3.8060932286935021 111 -3.8060932286935021 112 -3.8060932286935021 113 -3.8060932286935021
		 114 -3.8060932286935021 115 -3.8060932286935021 116 -3.8060932286935021 117 -3.8060932286935021
		 118 -3.8060932286935021 119 -3.8060932286935021 120 -3.8060932286935021 121 -3.8060932286935021
		 122 -3.8060932286935021 123 -3.8060932286935021 124 -3.8060932286935021 125 -3.8060932286935021
		 126 -3.8060932286935021 127 -3.8060932286935021 128 -3.8060932286935021 129 -3.8060932286935021
		 130 -3.8060932286935021 131 -3.8060932286935021 132 -3.8060932286935021 133 -3.8060932286935021
		 134 -3.8060932286935021 135 -3.8060932286935021 136 -3.8060932286935021;
createNode animCurveTA -n "locator2_rotateX";
	rename -uid "59F322BA-45BA-D045-777B-A18D36FB3C72";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator2_rotateY";
	rename -uid "D0EAD957-4FE6-9B92-16D7-FBAFACBED3B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator2_rotateZ";
	rename -uid "1DFE4C99-4CB0-4CB1-F2D9-50A96E26123A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 -4.9004716934183286 2 -18.201752004125222
		 3 -37.803638777798533 4 -61.605929860116163 5 -87.508423096755877 6 -113.41091633339566
		 7 -137.21320741571321 8 -156.81509418938651 9 -170.1163745000934 10 -175.01684619351181
		 11 -170.11637450009349 12 -156.81509418938663 13 -137.21320741571324 14 -113.41091633339566
		 15 -87.508423096755891 16 -61.605929860116191 17 -37.803638777798604 18 -18.2017520041253
		 19 -4.9004716934184041 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0
		 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0
		 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0
		 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0
		 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0
		 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0
		 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0
		 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTU -n "locator2_scaleX";
	rename -uid "61C7D04A-4C9B-A46E-F290-EFBDC647C7F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 1 3 1 4 1 5 1
		 6 1 7 1 8 0.99999999999999989 9 1 10 1 11 1.0000000000000002 12 1 13 1 14 0.99999999999999989
		 15 0.99999999999999989 16 1 17 0.99999999999999989 18 1 19 1 20 1 21 1 22 1 23 1
		 24 1 25 1 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1
		 41 1 42 1 43 1 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1
		 58 1 59 1 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1
		 75 1 76 1 77 1 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1
		 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1
		 107 1 108 1 109 1 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1
		 121 1 122 1 123 1 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1
		 135 1 136 1;
createNode animCurveTU -n "locator2_scaleY";
	rename -uid "107B84CC-4D68-C125-B231-3AB49EE80E46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 1 3 1 4 1 5 1
		 6 1 7 1 8 0.99999999999999989 9 1 10 1 11 1.0000000000000002 12 1 13 1 14 0.99999999999999989
		 15 0.99999999999999989 16 1 17 0.99999999999999989 18 1 19 1 20 1 21 1 22 1 23 1
		 24 1 25 1 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1
		 41 1 42 1 43 1 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1
		 58 1 59 1 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1
		 75 1 76 1 77 1 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1
		 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1
		 107 1 108 1 109 1 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1
		 121 1 122 1 123 1 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1
		 135 1 136 1;
createNode animCurveTU -n "locator2_scaleZ";
	rename -uid "BE019C12-414A-6E5E-CACA-708FC9C5CBF4";
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
createNode animCurveTU -n "locator3_visibility";
	rename -uid "8CC5EC58-46F3-A6B1-8A86-AA80DA3824C9";
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
	rename -uid "A6DE3234-4C92-6959-4AFB-9FA5A9E83DEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 13.792023897171021 1 13.781005763651692
		 2 13.64092034873299 3 13.154164548537665 4 12.175361462343048 5 10.770058091345604
		 6 9.2139840046683901 7 7.8393804636204152 8 6.8577403664257872 9 6.3050670322746072
		 10 6.1280594330477385 11 6.305067032274593 12 6.8577403664258014 13 7.839380463620401
		 14 9.2139840046684043 15 10.770058091345604 16 12.17536146234302 17 13.154164548537693
		 18 13.640920348732976 19 13.781005763651677 20 13.792023897171021 21 13.792023897171021
		 22 13.792023897171021 23 13.792023897171021 24 13.792023897171021 25 13.792023897171021
		 26 13.792023897171021 27 13.792023897171021 28 13.792023897171021 29 13.792023897171021
		 30 13.792023897171021 31 13.792023897171021 32 13.792023897171021 33 13.792023897171021
		 34 13.792023897171021 35 13.792023897171021 36 13.792023897171021 37 13.792023897171021
		 38 13.792023897171021 39 13.792023897171021 40 13.792023897171021 41 13.792023897171021
		 42 13.792023897171021 43 13.792023897171021 44 13.792023897171021 45 13.792023897171021
		 46 13.792023897171021 47 13.792023897171021 48 13.792023897171021 49 13.792023897171021
		 50 13.792023897171021 51 13.792023897171021 52 13.792023897171021 53 13.792023897171021
		 54 13.792023897171021 55 13.792023897171021 56 13.792023897171021 57 13.792023897171021
		 58 13.792023897171021 59 13.792023897171021 60 13.792023897171021 61 13.792023897171021
		 62 13.792023897171021 63 13.792023897171021 64 13.792023897171021 65 13.792023897171021
		 66 13.792023897171021 67 13.792023897171021 68 13.792023897171021 69 13.792023897171021
		 70 13.792023897171021 71 13.792023897171021 72 13.792023897171021 73 13.792023897171021
		 74 13.792023897171021 75 13.792023897171021 76 13.792023897171021 77 13.792023897171021
		 78 13.792023897171021 79 13.792023897171021 80 13.792023897171021 81 13.792023897171021
		 82 13.792023897171021 83 13.792023897171021 84 13.792023897171021 85 13.792023897171021
		 86 13.792023897171021 87 13.792023897171021 88 13.792023897171021 89 13.792023897171021
		 90 13.792023897171021 91 13.792023897171021 92 13.792023897171021 93 13.792023897171021
		 94 13.792023897171021 95 13.792023897171021 96 13.792023897171021 97 13.792023897171021
		 98 13.792023897171021 99 13.792023897171021 100 13.792023897171021 101 13.792023897171021
		 102 13.792023897171021 103 13.792023897171021 104 13.792023897171021 105 13.792023897171021
		 106 13.792023897171021 107 13.792023897171021 108 13.792023897171021 109 13.792023897171021
		 110 13.792023897171021 111 13.792023897171021 112 13.792023897171021 113 13.792023897171021
		 114 13.792023897171021 115 13.792023897171021 116 13.792023897171021 117 13.792023897171021
		 118 13.792023897171021 119 13.792023897171021 120 13.792023897171021 121 13.792023897171021
		 122 13.792023897171021 123 13.792023897171021 124 13.792023897171021 125 13.792023897171021
		 126 13.792023897171021 127 13.792023897171021 128 13.792023897171021 129 13.792023897171021
		 130 13.792023897171021 131 13.792023897171021 132 13.792023897171021 133 13.792023897171021
		 134 13.792023897171021 135 13.792023897171021 136 13.792023897171021;
createNode animCurveTL -n "locator3_translateY";
	rename -uid "110FA111-485B-A143-5C18-64BF509EE3CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -0.48865091728728771 1 -0.82316518633541591
		 2 -1.7184842191818746 3 -2.9507981917035977 4 -4.1920600725852069 5 -5.0905438013108721
		 6 -5.4379682190734968 7 -5.2767928100707309 8 -4.8476511818377048 9 -4.438238954331382
		 10 -4.2689652648721221 11 -4.438238954331382 12 -4.8476511818377048 13 -5.2767928100707593
		 14 -5.4379682190734968 15 -5.0905438013108721 16 -4.1920600725852069 17 -2.9507981917035693
		 18 -1.7184842191818746 19 -0.82316518633538749 20 -0.48865091728728771 21 -0.48865091728728771
		 22 -0.48865091728728771 23 -0.48865091728728771 24 -0.48865091728728771 25 -0.48865091728728771
		 26 -0.48865091728728771 27 -0.48865091728728771 28 -0.48865091728728771 29 -0.48865091728728771
		 30 -0.48865091728728771 31 -0.48865091728728771 32 -0.48865091728728771 33 -0.48865091728728771
		 34 -0.48865091728728771 35 -0.48865091728728771 36 -0.48865091728728771 37 -0.48865091728728771
		 38 -0.48865091728728771 39 -0.48865091728728771 40 -0.48865091728728771 41 -0.48865091728728771
		 42 -0.48865091728728771 43 -0.48865091728728771 44 -0.48865091728728771 45 -0.48865091728728771
		 46 -0.48865091728728771 47 -0.48865091728728771 48 -0.48865091728728771 49 -0.48865091728728771
		 50 -0.48865091728728771 51 -0.48865091728728771 52 -0.48865091728728771 53 -0.48865091728728771
		 54 -0.48865091728728771 55 -0.48865091728728771 56 -0.48865091728728771 57 -0.48865091728728771
		 58 -0.48865091728728771 59 -0.48865091728728771 60 -0.48865091728728771 61 -0.48865091728728771
		 62 -0.48865091728728771 63 -0.48865091728728771 64 -0.48865091728728771 65 -0.48865091728728771
		 66 -0.48865091728728771 67 -0.48865091728728771 68 -0.48865091728728771 69 -0.48865091728728771
		 70 -0.48865091728728771 71 -0.48865091728728771 72 -0.48865091728728771 73 -0.48865091728728771
		 74 -0.48865091728728771 75 -0.48865091728728771 76 -0.48865091728728771 77 -0.48865091728728771
		 78 -0.48865091728728771 79 -0.48865091728728771 80 -0.48865091728728771 81 -0.48865091728728771
		 82 -0.48865091728728771 83 -0.48865091728728771 84 -0.48865091728728771 85 -0.48865091728728771
		 86 -0.48865091728728771 87 -0.48865091728728771 88 -0.48865091728728771 89 -0.48865091728728771
		 90 -0.48865091728728771 91 -0.48865091728728771 92 -0.48865091728728771 93 -0.48865091728728771
		 94 -0.48865091728728771 95 -0.48865091728728771 96 -0.48865091728728771 97 -0.48865091728728771
		 98 -0.48865091728728771 99 -0.48865091728728771 100 -0.48865091728728771 101 -0.48865091728728771
		 102 -0.48865091728728771 103 -0.48865091728728771 104 -0.48865091728728771 105 -0.48865091728728771
		 106 -0.48865091728728771 107 -0.48865091728728771 108 -0.48865091728728771 109 -0.48865091728728771
		 110 -0.48865091728728771 111 -0.48865091728728771 112 -0.48865091728728771 113 -0.48865091728728771
		 114 -0.48865091728728771 115 -0.48865091728728771 116 -0.48865091728728771 117 -0.48865091728728771
		 118 -0.48865091728728771 119 -0.48865091728728771 120 -0.48865091728728771 121 -0.48865091728728771
		 122 -0.48865091728728771 123 -0.48865091728728771 124 -0.48865091728728771 125 -0.48865091728728771
		 126 -0.48865091728728771 127 -0.48865091728728771 128 -0.48865091728728771 129 -0.48865091728728771
		 130 -0.48865091728728771 131 -0.48865091728728771 132 -0.48865091728728771 133 -0.48865091728728771
		 134 -0.48865091728728771 135 -0.48865091728728771 136 -0.48865091728728771;
createNode animCurveTL -n "locator3_translateZ";
	rename -uid "CA09313B-4741-303C-3DE6-D2BD7B67F25B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -3.8060960931086427 1 -3.8060960931086463
		 2 -3.8060960931086463 3 -3.8060960931086427 4 -3.8060960931086427 5 -3.8060960931086427
		 6 -3.8060960931086427 7 -3.8060960931086463 8 -3.8060960931086427 9 -3.8060960931086427
		 10 -3.8060960931086427 11 -3.8060960931086392 12 -3.8060960931086427 13 -3.8060960931086392
		 14 -3.8060960931086427 15 -3.8060960931086427 16 -3.8060960931086427 17 -3.8060960931086427
		 18 -3.8060960931086427 19 -3.8060960931086392 20 -3.8060960931086427 21 -3.8060960931086427
		 22 -3.8060960931086427 23 -3.8060960931086427 24 -3.8060960931086427 25 -3.8060960931086427
		 26 -3.8060960931086427 27 -3.8060960931086427 28 -3.8060960931086427 29 -3.8060960931086427
		 30 -3.8060960931086427 31 -3.8060960931086427 32 -3.8060960931086427 33 -3.8060960931086427
		 34 -3.8060960931086427 35 -3.8060960931086427 36 -3.8060960931086427 37 -3.8060960931086427
		 38 -3.8060960931086427 39 -3.8060960931086427 40 -3.8060960931086427 41 -3.8060960931086427
		 42 -3.8060960931086427 43 -3.8060960931086427 44 -3.8060960931086427 45 -3.8060960931086427
		 46 -3.8060960931086427 47 -3.8060960931086427 48 -3.8060960931086427 49 -3.8060960931086427
		 50 -3.8060960931086427 51 -3.8060960931086427 52 -3.8060960931086427 53 -3.8060960931086427
		 54 -3.8060960931086427 55 -3.8060960931086427 56 -3.8060960931086427 57 -3.8060960931086427
		 58 -3.8060960931086427 59 -3.8060960931086427 60 -3.8060960931086427 61 -3.8060960931086427
		 62 -3.8060960931086427 63 -3.8060960931086427 64 -3.8060960931086427 65 -3.8060960931086427
		 66 -3.8060960931086427 67 -3.8060960931086427 68 -3.8060960931086427 69 -3.8060960931086427
		 70 -3.8060960931086427 71 -3.8060960931086427 72 -3.8060960931086427 73 -3.8060960931086427
		 74 -3.8060960931086427 75 -3.8060960931086427 76 -3.8060960931086427 77 -3.8060960931086427
		 78 -3.8060960931086427 79 -3.8060960931086427 80 -3.8060960931086427 81 -3.8060960931086427
		 82 -3.8060960931086427 83 -3.8060960931086427 84 -3.8060960931086427 85 -3.8060960931086427
		 86 -3.8060960931086427 87 -3.8060960931086427 88 -3.8060960931086427 89 -3.8060960931086427
		 90 -3.8060960931086427 91 -3.8060960931086427 92 -3.8060960931086427 93 -3.8060960931086427
		 94 -3.8060960931086427 95 -3.8060960931086427 96 -3.8060960931086427 97 -3.8060960931086427
		 98 -3.8060960931086427 99 -3.8060960931086427 100 -3.8060960931086427 101 -3.8060960931086427
		 102 -3.8060960931086427 103 -3.8060960931086427 104 -3.8060960931086427 105 -3.8060960931086427
		 106 -3.8060960931086427 107 -3.8060960931086427 108 -3.8060960931086427 109 -3.8060960931086427
		 110 -3.8060960931086427 111 -3.8060960931086427 112 -3.8060960931086427 113 -3.8060960931086427
		 114 -3.8060960931086427 115 -3.8060960931086427 116 -3.8060960931086427 117 -3.8060960931086427
		 118 -3.8060960931086427 119 -3.8060960931086427 120 -3.8060960931086427 121 -3.8060960931086427
		 122 -3.8060960931086427 123 -3.8060960931086427 124 -3.8060960931086427 125 -3.8060960931086427
		 126 -3.8060960931086427 127 -3.8060960931086427 128 -3.8060960931086427 129 -3.8060960931086427
		 130 -3.8060960931086427 131 -3.8060960931086427 132 -3.8060960931086427 133 -3.8060960931086427
		 134 -3.8060960931086427 135 -3.8060960931086427 136 -3.8060960931086427;
createNode animCurveTA -n "locator3_rotateX";
	rename -uid "43A52862-45F4-EF77-2DAE-F183E3E256FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator3_rotateY";
	rename -uid "4EC9831A-4F43-CD53-5F24-758509E9B21A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator3_rotateZ";
	rename -uid "87F0810A-4834-9C55-54A0-E8B3A4B00A11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 -7.3507075401274964 2 -27.302628006187827
		 3 -56.705458166697795 4 -92.408894790174216 5 -131.26263464513383 6 -170.11637450009351
		 7 -205.81981112356982 8 -235.22264128407977 9 -255.17456175014013 10 -262.52526929026772
		 11 -255.17456175014024 12 -235.22264128407988 13 -205.81981112356985 14 -170.11637450009349
		 15 -131.26263464513386 16 -92.408894790174301 17 -56.705458166697888 18 -27.302628006187959
		 19 -7.3507075401276074 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0
		 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0
		 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0
		 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0
		 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0
		 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0
		 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0
		 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTU -n "locator3_scaleX";
	rename -uid "D672EE0A-46B7-1899-BD00-B5B0B17A4606";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 1 3 1 4 1 5 1
		 6 1 7 1 8 0.99999999999999978 9 1.0000000000000002 10 1 11 1.0000000000000002 12 1
		 13 1.0000000000000002 14 0.99999999999999978 15 0.99999999999999989 16 1 17 0.99999999999999989
		 18 1 19 0.99999999999999989 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1 29 1 30 1
		 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1 44 1 45 1 46 1 47 1
		 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1 61 1 62 1 63 1 64 1
		 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1 78 1 79 1 80 1 81 1
		 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1
		 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1 110 1 111 1 112 1
		 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1 124 1 125 1 126 1
		 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTU -n "locator3_scaleY";
	rename -uid "1C56C7E4-4EA9-30D7-1A72-ACBD891ED665";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 1 3 1 4 1 5 1
		 6 1 7 1 8 0.99999999999999978 9 1.0000000000000002 10 1 11 1.0000000000000002 12 1
		 13 1.0000000000000002 14 0.99999999999999978 15 0.99999999999999989 16 1 17 0.99999999999999989
		 18 1 19 0.99999999999999989 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1 29 1 30 1
		 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1 44 1 45 1 46 1 47 1
		 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1 61 1 62 1 63 1 64 1
		 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1 78 1 79 1 80 1 81 1
		 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1
		 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1 110 1 111 1 112 1
		 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1 124 1 125 1 126 1
		 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTU -n "locator3_scaleZ";
	rename -uid "86672A74-417E-B022-569B-A4A4574FC23A";
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
createNode animCurveTU -n "locator4_visibility";
	rename -uid "3B4A8B06-457D-EE03-98FA-64992FF0B517";
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
	rename -uid "CE7B0870-4D7F-037D-3BF3-42A3999B4AC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 15.767706513404846 1 15.740453017588905
		 2 15.396510093759815 3 14.23871244362546 4 12.092334414320547 5 9.4670818293008097
		 6 7.2676257667521327 7 6.0609283406499515 8 5.7308224782762949 9 5.7995272814521286
		 10 5.8710327143736691 11 5.7995272814521286 12 5.7308224782762807 13 6.0609283406499657
		 14 7.2676257667521469 15 9.4670818293007954 16 12.092334414320561 17 14.238712443625488
		 18 15.396510093759815 19 15.740453017588891 20 15.767706513404846 21 15.767706513404846
		 22 15.767706513404846 23 15.767706513404846 24 15.767706513404846 25 15.767706513404846
		 26 15.767706513404846 27 15.767706513404846 28 15.767706513404846 29 15.767706513404846
		 30 15.767706513404846 31 15.767706513404846 32 15.767706513404846 33 15.767706513404846
		 34 15.767706513404846 35 15.767706513404846 36 15.767706513404846 37 15.767706513404846
		 38 15.767706513404846 39 15.767706513404846 40 15.767706513404846 41 15.767706513404846
		 42 15.767706513404846 43 15.767706513404846 44 15.767706513404846 45 15.767706513404846
		 46 15.767706513404846 47 15.767706513404846 48 15.767706513404846 49 15.767706513404846
		 50 15.767706513404846 51 15.767706513404846 52 15.767706513404846 53 15.767706513404846
		 54 15.767706513404846 55 15.767706513404846 56 15.767706513404846 57 15.767706513404846
		 58 15.767706513404846 59 15.767706513404846 60 15.767706513404846 61 15.767706513404846
		 62 15.767706513404846 63 15.767706513404846 64 15.767706513404846 65 15.767706513404846
		 66 15.767706513404846 67 15.767706513404846 68 15.767706513404846 69 15.767706513404846
		 70 15.767706513404846 71 15.767706513404846 72 15.767706513404846 73 15.767706513404846
		 74 15.767706513404846 75 15.767706513404846 76 15.767706513404846 77 15.767706513404846
		 78 15.767706513404846 79 15.767706513404846 80 15.767706513404846 81 15.767706513404846
		 82 15.767706513404846 83 15.767706513404846 84 15.767706513404846 85 15.767706513404846
		 86 15.767706513404846 87 15.767706513404846 88 15.767706513404846 89 15.767706513404846
		 90 15.767706513404846 91 15.767706513404846 92 15.767706513404846 93 15.767706513404846
		 94 15.767706513404846 95 15.767706513404846 96 15.767706513404846 97 15.767706513404846
		 98 15.767706513404846 99 15.767706513404846 100 15.767706513404846 101 15.767706513404846
		 102 15.767706513404846 103 15.767706513404846 104 15.767706513404846 105 15.767706513404846
		 106 15.767706513404846 107 15.767706513404846 108 15.767706513404846 109 15.767706513404846
		 110 15.767706513404846 111 15.767706513404846 112 15.767706513404846 113 15.767706513404846
		 114 15.767706513404846 115 15.767706513404846 116 15.767706513404846 117 15.767706513404846
		 118 15.767706513404846 119 15.767706513404846 120 15.767706513404846 121 15.767706513404846
		 122 15.767706513404846 123 15.767706513404846 124 15.767706513404846 125 15.767706513404846
		 126 15.767706513404846 127 15.767706513404846 128 15.767706513404846 129 15.767706513404846
		 130 15.767706513404846 131 15.767706513404846 132 15.767706513404846 133 15.767706513404846
		 134 15.767706513404846 135 15.767706513404846 136 15.767706513404846;
createNode animCurveTL -n "locator4_translateY";
	rename -uid "F44B1688-4D79-706A-4394-8F87179163C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -0.4886385116303984 1 -1.07592645567928
		 2 -2.6246996722608174 3 -4.602184779847903 4 -6.1659973333762252 5 -6.5756615275500963
		 6 -5.7771015408478377 7 -4.4163104764089383 8 -3.224882598948966 9 -2.5283302233757752
		 10 -2.3100729589681634 11 -2.5283302233757752 12 -3.224882598948966 13 -4.4163104764089098
		 14 -5.7771015408478661 15 -6.5756615275501247 16 -6.1659973333761968 17 -4.602184779847903
		 18 -2.6246996722608174 19 -1.07592645567928 20 -0.4886385116303984 21 -0.4886385116303984
		 22 -0.4886385116303984 23 -0.4886385116303984 24 -0.4886385116303984 25 -0.4886385116303984
		 26 -0.4886385116303984 27 -0.4886385116303984 28 -0.4886385116303984 29 -0.4886385116303984
		 30 -0.4886385116303984 31 -0.4886385116303984 32 -0.4886385116303984 33 -0.4886385116303984
		 34 -0.4886385116303984 35 -0.4886385116303984 36 -0.4886385116303984 37 -0.4886385116303984
		 38 -0.4886385116303984 39 -0.4886385116303984 40 -0.4886385116303984 41 -0.4886385116303984
		 42 -0.4886385116303984 43 -0.4886385116303984 44 -0.4886385116303984 45 -0.4886385116303984
		 46 -0.4886385116303984 47 -0.4886385116303984 48 -0.4886385116303984 49 -0.4886385116303984
		 50 -0.4886385116303984 51 -0.4886385116303984 52 -0.4886385116303984 53 -0.4886385116303984
		 54 -0.4886385116303984 55 -0.4886385116303984 56 -0.4886385116303984 57 -0.4886385116303984
		 58 -0.4886385116303984 59 -0.4886385116303984 60 -0.4886385116303984 61 -0.4886385116303984
		 62 -0.4886385116303984 63 -0.4886385116303984 64 -0.4886385116303984 65 -0.4886385116303984
		 66 -0.4886385116303984 67 -0.4886385116303984 68 -0.4886385116303984 69 -0.4886385116303984
		 70 -0.4886385116303984 71 -0.4886385116303984 72 -0.4886385116303984 73 -0.4886385116303984
		 74 -0.4886385116303984 75 -0.4886385116303984 76 -0.4886385116303984 77 -0.4886385116303984
		 78 -0.4886385116303984 79 -0.4886385116303984 80 -0.4886385116303984 81 -0.4886385116303984
		 82 -0.4886385116303984 83 -0.4886385116303984 84 -0.4886385116303984 85 -0.4886385116303984
		 86 -0.4886385116303984 87 -0.4886385116303984 88 -0.4886385116303984 89 -0.4886385116303984
		 90 -0.4886385116303984 91 -0.4886385116303984 92 -0.4886385116303984 93 -0.4886385116303984
		 94 -0.4886385116303984 95 -0.4886385116303984 96 -0.4886385116303984 97 -0.4886385116303984
		 98 -0.4886385116303984 99 -0.4886385116303984 100 -0.4886385116303984 101 -0.4886385116303984
		 102 -0.4886385116303984 103 -0.4886385116303984 104 -0.4886385116303984 105 -0.4886385116303984
		 106 -0.4886385116303984 107 -0.4886385116303984 108 -0.4886385116303984 109 -0.4886385116303984
		 110 -0.4886385116303984 111 -0.4886385116303984 112 -0.4886385116303984 113 -0.4886385116303984
		 114 -0.4886385116303984 115 -0.4886385116303984 116 -0.4886385116303984 117 -0.4886385116303984
		 118 -0.4886385116303984 119 -0.4886385116303984 120 -0.4886385116303984 121 -0.4886385116303984
		 122 -0.4886385116303984 123 -0.4886385116303984 124 -0.4886385116303984 125 -0.4886385116303984
		 126 -0.4886385116303984 127 -0.4886385116303984 128 -0.4886385116303984 129 -0.4886385116303984
		 130 -0.4886385116303984 131 -0.4886385116303984 132 -0.4886385116303984 133 -0.4886385116303984
		 134 -0.4886385116303984 135 -0.4886385116303984 136 -0.4886385116303984;
createNode animCurveTL -n "locator4_translateZ";
	rename -uid "1A640AD2-4713-0FB4-DCD9-37A5A00E51CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -3.8061403945155341 1 -3.8061403945155341
		 2 -3.8061403945155341 3 -3.8061403945155377 4 -3.806140394515527 5 -3.8061403945155305
		 6 -3.8061403945155341 7 -3.8061403945155377 8 -3.8061403945155377 9 -3.8061403945155377
		 10 -3.8061403945155305 11 -3.8061403945155341 12 -3.8061403945155377 13 -3.8061403945155377
		 14 -3.8061403945155341 15 -3.8061403945155341 16 -3.8061403945155341 17 -3.8061403945155341
		 18 -3.8061403945155341 19 -3.8061403945155377 20 -3.8061403945155341 21 -3.8061403945155341
		 22 -3.8061403945155341 23 -3.8061403945155341 24 -3.8061403945155341 25 -3.8061403945155341
		 26 -3.8061403945155341 27 -3.8061403945155341 28 -3.8061403945155341 29 -3.8061403945155341
		 30 -3.8061403945155341 31 -3.8061403945155341 32 -3.8061403945155341 33 -3.8061403945155341
		 34 -3.8061403945155341 35 -3.8061403945155341 36 -3.8061403945155341 37 -3.8061403945155341
		 38 -3.8061403945155341 39 -3.8061403945155341 40 -3.8061403945155341 41 -3.8061403945155341
		 42 -3.8061403945155341 43 -3.8061403945155341 44 -3.8061403945155341 45 -3.8061403945155341
		 46 -3.8061403945155341 47 -3.8061403945155341 48 -3.8061403945155341 49 -3.8061403945155341
		 50 -3.8061403945155341 51 -3.8061403945155341 52 -3.8061403945155341 53 -3.8061403945155341
		 54 -3.8061403945155341 55 -3.8061403945155341 56 -3.8061403945155341 57 -3.8061403945155341
		 58 -3.8061403945155341 59 -3.8061403945155341 60 -3.8061403945155341 61 -3.8061403945155341
		 62 -3.8061403945155341 63 -3.8061403945155341 64 -3.8061403945155341 65 -3.8061403945155341
		 66 -3.8061403945155341 67 -3.8061403945155341 68 -3.8061403945155341 69 -3.8061403945155341
		 70 -3.8061403945155341 71 -3.8061403945155341 72 -3.8061403945155341 73 -3.8061403945155341
		 74 -3.8061403945155341 75 -3.8061403945155341 76 -3.8061403945155341 77 -3.8061403945155341
		 78 -3.8061403945155341 79 -3.8061403945155341 80 -3.8061403945155341 81 -3.8061403945155341
		 82 -3.8061403945155341 83 -3.8061403945155341 84 -3.8061403945155341 85 -3.8061403945155341
		 86 -3.8061403945155341 87 -3.8061403945155341 88 -3.8061403945155341 89 -3.8061403945155341
		 90 -3.8061403945155341 91 -3.8061403945155341 92 -3.8061403945155341 93 -3.8061403945155341
		 94 -3.8061403945155341 95 -3.8061403945155341 96 -3.8061403945155341 97 -3.8061403945155341
		 98 -3.8061403945155341 99 -3.8061403945155341 100 -3.8061403945155341 101 -3.8061403945155341
		 102 -3.8061403945155341 103 -3.8061403945155341 104 -3.8061403945155341 105 -3.8061403945155341
		 106 -3.8061403945155341 107 -3.8061403945155341 108 -3.8061403945155341 109 -3.8061403945155341
		 110 -3.8061403945155341 111 -3.8061403945155341 112 -3.8061403945155341 113 -3.8061403945155341
		 114 -3.8061403945155341 115 -3.8061403945155341 116 -3.8061403945155341 117 -3.8061403945155341
		 118 -3.8061403945155341 119 -3.8061403945155341 120 -3.8061403945155341 121 -3.8061403945155341
		 122 -3.8061403945155341 123 -3.8061403945155341 124 -3.8061403945155341 125 -3.8061403945155341
		 126 -3.8061403945155341 127 -3.8061403945155341 128 -3.8061403945155341 129 -3.8061403945155341
		 130 -3.8061403945155341 131 -3.8061403945155341 132 -3.8061403945155341 133 -3.8061403945155341
		 134 -3.8061403945155341 135 -3.8061403945155341 136 -3.8061403945155341;
createNode animCurveTA -n "locator4_rotateX";
	rename -uid "630B065D-4FA9-09C3-04DC-E19E5189F73B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator4_rotateY";
	rename -uid "B0FAE025-456B-9538-6189-5CA1CB5161CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator4_rotateZ";
	rename -uid "47F678BE-4696-5539-B24E-54B43ED60911";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 -9.8009433868366589 2 -36.40350400825043
		 3 -75.607277555597079 4 -123.21185972023233 5 -175.01684619351175 6 -226.82183266679132
		 7 85.57358516857353 8 46.369811621226958 9 19.767250999813172 10 9.9663076129763848
		 11 19.767250999813026 12 46.369811621226788 13 85.573585168573501 14 -226.82183266679129
		 15 -175.01684619351178 16 -123.2118597202324 17 -75.607277555597207 18 -36.403504008250593
		 19 -9.8009433868368099 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0
		 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0
		 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0
		 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0
		 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0
		 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0
		 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0
		 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTU -n "locator4_scaleX";
	rename -uid "85FF0902-4DB9-DCA1-ABA4-F59D4D737945";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 1 3 1 4 1 5 1
		 6 1 7 1 8 0.99999999999999978 9 1.0000000000000004 10 1 11 1.0000000000000004 12 1.0000000000000002
		 13 1.0000000000000004 14 0.99999999999999978 15 0.99999999999999978 16 1 17 0.99999999999999989
		 18 1 19 0.99999999999999989 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1 29 1 30 1
		 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1 44 1 45 1 46 1 47 1
		 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1 61 1 62 1 63 1 64 1
		 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1 78 1 79 1 80 1 81 1
		 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1
		 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1 110 1 111 1 112 1
		 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1 124 1 125 1 126 1
		 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTU -n "locator4_scaleY";
	rename -uid "87BC67AA-4464-296C-BBCD-E28F558C291D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 1 3 1 4 1 5 1
		 6 1 7 1 8 0.99999999999999978 9 1.0000000000000004 10 1 11 1.0000000000000004 12 1.0000000000000002
		 13 1.0000000000000004 14 0.99999999999999978 15 0.99999999999999978 16 1 17 0.99999999999999989
		 18 1 19 0.99999999999999989 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1 29 1 30 1
		 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1 44 1 45 1 46 1 47 1
		 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1 61 1 62 1 63 1 64 1
		 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1 78 1 79 1 80 1 81 1
		 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1
		 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1 110 1 111 1 112 1
		 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1 124 1 125 1 126 1
		 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTU -n "locator4_scaleZ";
	rename -uid "1EEBE919-49B0-72E2-6F80-9E97ECAE6801";
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
createNode animCurveTU -n "locator5_visibility";
	rename -uid "FE74457A-41FE-11E9-CAFA-E3B190A2BF5E";
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
	rename -uid "70D81968-4110-0451-6E46-37A18248B1F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 9.5334014892577983 1 9.5334014892577983
		 2 9.5334014892577841 3 9.5334014892577841 4 9.5334014892577699 5 9.5334014892577557
		 6 9.5334014892577557 7 9.5334014892577414 8 9.5334014892577414 9 9.5334014892577414
		 10 9.5334014892577414 11 9.5334014892577414 12 9.5334014892577414 13 9.5334014892577414
		 14 9.5334014892577557 15 9.5334014892577557 16 9.5334014892577699 17 9.5334014892577841
		 18 9.5334014892577841 19 9.5334014892577983 20 9.5334014892577983 21 9.5334014892577983
		 22 9.5334014892577983 23 9.5334014892577983 24 9.5334014892577983 25 9.5334014892577983
		 26 9.5334014892577983 27 9.5334014892577983 28 9.5334014892577983 29 9.5334014892577983
		 30 9.5334014892577983 31 9.5334014892577983 32 9.5334014892577983 33 9.5334014892577983
		 34 9.5334014892577983 35 9.5334014892577983 36 9.5334014892577983 37 9.5334014892577983
		 38 9.5334014892577983 39 9.5334014892577983 40 9.5334014892577983 41 9.5334014892577983
		 42 9.5334014892577983 43 9.5334014892577983 44 9.5334014892577983 45 9.5334014892577983
		 46 9.5334014892577983 47 9.5334014892577983 48 9.5334014892577983 49 9.5334014892577983
		 50 9.5334014892577983 51 9.5334014892577983 52 9.5334014892577983 53 9.5334014892577983
		 54 9.5334014892577983 55 9.5334014892577983 56 9.5334014892577983 57 9.5334014892577983
		 58 9.5334014892577983 59 9.5334014892577983 60 9.5334014892577983 61 9.5334014892577983
		 62 9.5334014892577983 63 9.5334014892577983 64 9.5334014892577983 65 9.5334014892577983
		 66 9.5334014892577983 67 9.5334014892577983 68 9.5334014892577983 69 9.5334014892577983
		 70 9.5334014892577983 71 9.5334014892577983 72 9.5334014892577983 73 9.5334014892577983
		 74 9.5334014892577983 75 9.5334014892577983 76 9.5334014892577983 77 9.5334014892577983
		 78 9.5334014892577983 79 9.5334014892577983 80 9.5334014892577983 81 9.5334014892577983
		 82 9.5334014892577983 83 9.5334014892577983 84 9.5334014892577983 85 9.5334014892577983
		 86 9.5334014892577983 87 9.5334014892577983 88 9.5334014892577983 89 9.5334014892577983
		 90 9.5334014892577983 91 9.5334014892577983 92 9.5334014892577983 93 9.5334014892577983
		 94 9.5334014892577983 95 9.5334014892577983 96 9.5334014892577983 97 9.5334014892577983
		 98 9.5334014892577983 99 9.5334014892577983 100 9.5334014892577983 101 9.5334014892577983
		 102 9.5334014892577983 103 9.5334014892577983 104 9.5334014892577983 105 9.5334014892577983
		 106 9.5334014892577983 107 9.5334014892577983 108 9.5334014892577983 109 9.5334014892577983
		 110 9.5334014892577983 111 9.5334014892577983 112 9.5334014892577983 113 9.5334014892577983
		 114 9.5334014892577983 115 9.5334014892577983 116 9.5334014892577983 117 9.5334014892577983
		 118 9.5334014892577983 119 9.5334014892577983 120 9.5334014892577983 121 9.5334014892577983
		 122 9.5334014892577983 123 9.5334014892577983 124 9.5334014892577983 125 9.5334014892577983
		 126 9.5334014892577983 127 9.5334014892577983 128 9.5334014892577983 129 9.5334014892577983
		 130 9.5334014892577983 131 9.5334014892577983 132 9.5334014892577983 133 9.5334014892577983
		 134 9.5334014892577983 135 9.5334014892577983 136 9.5334014892577983;
createNode animCurveTL -n "locator5_translateY";
	rename -uid "7C86A4B1-4EB1-9372-4025-35A587AB0C47";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -3.3924046903166527e-05 1 -3.3924046903166527e-05
		 2 -3.3924046903166527e-05 3 -3.3924046903166527e-05 4 -3.3924046903166527e-05 5 -3.3924046874744818e-05
		 6 -3.3924046874744818e-05 7 -3.3924046874744818e-05 8 -3.3924046846323108e-05 9 -3.3924046846323108e-05
		 10 -3.3924046846323108e-05 11 -3.3924046846323108e-05 12 -3.3924046846323108e-05
		 13 -3.3924046874744818e-05 14 -3.3924046874744818e-05 15 -3.3924046874744818e-05
		 16 -3.3924046903166527e-05 17 -3.3924046903166527e-05 18 -3.3924046903166527e-05
		 19 -3.3924046903166527e-05 20 -3.3924046903166527e-05 21 -3.3924046903166527e-05
		 22 -3.3924046903166527e-05 23 -3.3924046903166527e-05 24 -3.3924046903166527e-05
		 25 -3.3924046903166527e-05 26 -3.3924046903166527e-05 27 -3.3924046903166527e-05
		 28 -3.3924046903166527e-05 29 -3.3924046903166527e-05 30 -3.3924046903166527e-05
		 31 -3.3924046903166527e-05 32 -3.3924046903166527e-05 33 -3.3924046903166527e-05
		 34 -3.3924046903166527e-05 35 -3.3924046903166527e-05 36 -3.3924046903166527e-05
		 37 -3.3924046903166527e-05 38 -3.3924046903166527e-05 39 -3.3924046903166527e-05
		 40 -3.3924046903166527e-05 41 -3.3924046903166527e-05 42 -3.3924046903166527e-05
		 43 -3.3924046903166527e-05 44 -3.3924046903166527e-05 45 -3.3924046903166527e-05
		 46 -3.3924046903166527e-05 47 -3.3924046903166527e-05 48 -3.3924046903166527e-05
		 49 -3.3924046903166527e-05 50 -3.3924046903166527e-05 51 -3.3924046903166527e-05
		 52 -3.3924046903166527e-05 53 -3.3924046903166527e-05 54 -3.3924046903166527e-05
		 55 -3.3924046903166527e-05 56 -3.3924046903166527e-05 57 -3.3924046903166527e-05
		 58 -3.3924046903166527e-05 59 -3.3924046903166527e-05 60 -3.3924046903166527e-05
		 61 -3.3924046903166527e-05 62 -3.3924046903166527e-05 63 -3.3924046903166527e-05
		 64 -3.3924046903166527e-05 65 -3.3924046903166527e-05 66 -3.3924046903166527e-05
		 67 -3.3924046903166527e-05 68 -3.3924046903166527e-05 69 -3.3924046903166527e-05
		 70 -3.3924046903166527e-05 71 -3.3924046903166527e-05 72 -3.3924046903166527e-05
		 73 -3.3924046903166527e-05 74 -3.3924046903166527e-05 75 -3.3924046903166527e-05
		 76 -3.3924046903166527e-05 77 -3.3924046903166527e-05 78 -3.3924046903166527e-05
		 79 -3.3924046903166527e-05 80 -3.3924046903166527e-05 81 -3.3924046903166527e-05
		 82 -3.3924046903166527e-05 83 -3.3924046903166527e-05 84 -3.3924046903166527e-05
		 85 -3.3924046903166527e-05 86 -3.3924046903166527e-05 87 -3.3924046903166527e-05
		 88 -3.3924046903166527e-05 89 -3.3924046903166527e-05 90 -3.3924046903166527e-05
		 91 -3.3924046903166527e-05 92 -3.3924046903166527e-05 93 -3.3924046903166527e-05
		 94 -3.3924046903166527e-05 95 -3.3924046903166527e-05 96 -3.3924046903166527e-05
		 97 -3.3924046903166527e-05 98 -3.3924046903166527e-05 99 -3.3924046903166527e-05
		 100 -3.3924046903166527e-05 101 -3.3924046903166527e-05 102 -3.3924046903166527e-05
		 103 -3.3924046903166527e-05 104 -3.3924046903166527e-05 105 -3.3924046903166527e-05
		 106 -3.3924046903166527e-05 107 -3.3924046903166527e-05 108 -3.3924046903166527e-05
		 109 -3.3924046903166527e-05 110 -3.3924046903166527e-05 111 -3.3924046903166527e-05
		 112 -3.3924046903166527e-05 113 -3.3924046903166527e-05 114 -3.3924046903166527e-05
		 115 -3.3924046903166527e-05 116 -3.3924046903166527e-05 117 -3.3924046903166527e-05
		 118 -3.3924046903166527e-05 119 -3.3924046903166527e-05 120 -3.3924046903166527e-05
		 121 -3.3924046903166527e-05 122 -3.3924046903166527e-05 123 -3.3924046903166527e-05
		 124 -3.3924046903166527e-05 125 -3.3924046903166527e-05 126 -3.3924046903166527e-05
		 127 -3.3924046903166527e-05 128 -3.3924046903166527e-05 129 -3.3924046903166527e-05
		 130 -3.3924046903166527e-05 131 -3.3924046903166527e-05 132 -3.3924046903166527e-05
		 133 -3.3924046903166527e-05 134 -3.3924046903166527e-05 135 -3.3924046903166527e-05
		 136 -3.3924046903166527e-05;
createNode animCurveTL -n "locator5_translateZ";
	rename -uid "379D59D1-4015-04AE-8360-76B656C16705";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1.3937025871157971e-05 1 1.3937025871157971e-05
		 2 1.3937025871157971e-05 3 1.3937025871157971e-05 4 1.3937025871157971e-05 5 1.3937025871157971e-05
		 6 1.3937025871157971e-05 7 1.3937025871157971e-05 8 1.3937025871157971e-05 9 1.3937025871157971e-05
		 10 1.3937025871157971e-05 11 1.3937025871157971e-05 12 1.3937025871157971e-05 13 1.3937025871157971e-05
		 14 1.3937025871157971e-05 15 1.3937025871157971e-05 16 1.3937025871157971e-05 17 1.3937025871157971e-05
		 18 1.3937025871157971e-05 19 1.3937025871157971e-05 20 1.3937025871157971e-05 21 1.3937025871157971e-05
		 22 1.3937025871157971e-05 23 1.3937025871157971e-05 24 1.3937025871157971e-05 25 1.3937025871157971e-05
		 26 1.3937025871157971e-05 27 1.3937025871157971e-05 28 1.3937025871157971e-05 29 1.3937025871157971e-05
		 30 1.3937025871157971e-05 31 1.3937025871157971e-05 32 1.3937025871157971e-05 33 1.3937025871157971e-05
		 34 1.3937025871157971e-05 35 1.3937025871157971e-05 36 1.3937025871157971e-05 37 1.3937025871157971e-05
		 38 1.3937025871157971e-05 39 1.3937025871157971e-05 40 1.3937025871157971e-05 41 1.3937025871157971e-05
		 42 1.3937025871157971e-05 43 1.3937025871157971e-05 44 1.3937025871157971e-05 45 1.3937025871157971e-05
		 46 1.3937025871157971e-05 47 1.3937025871157971e-05 48 1.3937025871157971e-05 49 1.3937025871157971e-05
		 50 1.3937025871157971e-05 51 1.3937025871157971e-05 52 1.3937025871157971e-05 53 1.3937025871157971e-05
		 54 1.3937025871157971e-05 55 1.3937025871157971e-05 56 1.3937025871157971e-05 57 1.3937025871157971e-05
		 58 1.3937025871157971e-05 59 1.3937025871157971e-05 60 1.3937025871157971e-05 61 1.3937025871157971e-05
		 62 1.3937025871157971e-05 63 1.3937025871157971e-05 64 1.3937025871157971e-05 65 1.3937025871157971e-05
		 66 1.3937025871157971e-05 67 1.3937025871157971e-05 68 1.3937025871157971e-05 69 1.3937025871157971e-05
		 70 1.3937025871157971e-05 71 1.3937025871157971e-05 72 1.3937025871157971e-05 73 1.3937025871157971e-05
		 74 1.3937025871157971e-05 75 1.3937025871157971e-05 76 1.3937025871157971e-05 77 1.3937025871157971e-05
		 78 1.3937025871157971e-05 79 1.3937025871157971e-05 80 1.3937025871157971e-05 81 1.3937025871157971e-05
		 82 1.3937025871157971e-05 83 1.3937025871157971e-05 84 1.3937025871157971e-05 85 1.3937025871157971e-05
		 86 1.3937025871157971e-05 87 1.3937025871157971e-05 88 1.3937025871157971e-05 89 1.3937025871157971e-05
		 90 1.3937025871157971e-05 91 1.3937025871157971e-05 92 1.3937025871157971e-05 93 1.3937025871157971e-05
		 94 1.3937025871157971e-05 95 1.3937025871157971e-05 96 1.3937025871157971e-05 97 1.3937025871157971e-05
		 98 1.3937025871157971e-05 99 1.3937025871157971e-05 100 1.3937025871157971e-05 101 1.3937025871157971e-05
		 102 1.3937025871157971e-05 103 1.3937025871157971e-05 104 1.3937025871157971e-05
		 105 1.3937025871157971e-05 106 1.3937025871157971e-05 107 1.3937025871157971e-05
		 108 1.3937025871157971e-05 109 1.3937025871157971e-05 110 1.3937025871157971e-05
		 111 1.3937025871157971e-05 112 1.3937025871157971e-05 113 1.3937025871157971e-05
		 114 1.3937025871157971e-05 115 1.3937025871157971e-05 116 1.3937025871157971e-05
		 117 1.3937025871157971e-05 118 1.3937025871157971e-05 119 1.3937025871157971e-05
		 120 1.3937025871157971e-05 121 1.3937025871157971e-05 122 1.3937025871157971e-05
		 123 1.3937025871157971e-05 124 1.3937025871157971e-05 125 1.3937025871157971e-05
		 126 1.3937025871157971e-05 127 1.3937025871157971e-05 128 1.3937025871157971e-05
		 129 1.3937025871157971e-05 130 1.3937025871157971e-05 131 1.3937025871157971e-05
		 132 1.3937025871157971e-05 133 1.3937025871157971e-05 134 1.3937025871157971e-05
		 135 1.3937025871157971e-05 136 1.3937025871157971e-05;
createNode animCurveTA -n "locator5_rotateX";
	rename -uid "362732CD-4A36-5E12-1935-EEB5EA691849";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator5_rotateY";
	rename -uid "0DCA7FEF-4C04-C70B-4419-F0882B8D597A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator5_rotateZ";
	rename -uid "0710F69D-434E-C96E-5AD1-A7B105A9D59A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 -2.4502358467091647 2 -9.1008760020626092
		 3 -18.901819388899266 4 -30.802964930058081 5 -43.754211548377938 6 -56.705458166697831
		 7 -68.606603707856607 8 -78.407547094693257 9 -85.0581872500467 10 -87.508423096755905
		 11 -85.058187250046743 12 -78.407547094693314 13 -68.606603707856621 14 -56.705458166697831
		 15 -43.754211548377945 16 -30.802964930058099 17 -18.901819388899302 18 -9.10087600206265
		 19 -2.4502358467092025 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0
		 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0
		 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0
		 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0
		 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0
		 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0
		 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0
		 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTU -n "locator5_scaleX";
	rename -uid "64061876-4D55-5C78-015A-F5AEF332D238";
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
createNode animCurveTU -n "locator5_scaleY";
	rename -uid "DEAD47B1-4E18-A4BF-6294-319E1951A708";
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
createNode animCurveTU -n "locator5_scaleZ";
	rename -uid "4553A4AF-473A-2544-F0EB-85AA31F0C223";
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
createNode animCurveTU -n "locator6_visibility";
	rename -uid "7EC59900-4063-87AA-15DD-418CF1517616";
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
	rename -uid "BDA0DCCD-4F4E-369E-3D5D-FA8D79B85963";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 13.231638193130479 1 13.228257091197221
		 2 13.18508283840454 3 13.032211682636373 4 12.709941514873961 5 12.20468777536739
		 6 11.563524997096948 7 10.882407164282796 8 10.276559964302379 9 9.85198435848163
		 10 9.6941751032085648 11 9.8519843584816442 12 10.276559964302351 13 10.882407164282824
		 14 11.563524997096948 15 12.20468777536739 16 12.709941514873989 17 13.032211682636387
		 18 13.18508283840454 19 13.228257091197221 20 13.231638193130479 21 13.231638193130479
		 22 13.231638193130479 23 13.231638193130479 24 13.231638193130479 25 13.231638193130479
		 26 13.231638193130479 27 13.231638193130479 28 13.231638193130479 29 13.231638193130479
		 30 13.231638193130479 31 13.231638193130479 32 13.231638193130479 33 13.231638193130479
		 34 13.231638193130479 35 13.231638193130479 36 13.231638193130479 37 13.231638193130479
		 38 13.231638193130479 39 13.231638193130479 40 13.231638193130479 41 13.231638193130479
		 42 13.231638193130479 43 13.231638193130479 44 13.231638193130479 45 13.231638193130479
		 46 13.231638193130479 47 13.231638193130479 48 13.231638193130479 49 13.231638193130479
		 50 13.231638193130479 51 13.231638193130479 52 13.231638193130479 53 13.231638193130479
		 54 13.231638193130479 55 13.231638193130479 56 13.231638193130479 57 13.231638193130479
		 58 13.231638193130479 59 13.231638193130479 60 13.231638193130479 61 13.231638193130479
		 62 13.231638193130479 63 13.231638193130479 64 13.231638193130479 65 13.231638193130479
		 66 13.231638193130479 67 13.231638193130479 68 13.231638193130479 69 13.231638193130479
		 70 13.231638193130479 71 13.231638193130479 72 13.231638193130479 73 13.231638193130479
		 74 13.231638193130479 75 13.231638193130479 76 13.231638193130479 77 13.231638193130479
		 78 13.231638193130479 79 13.231638193130479 80 13.231638193130479 81 13.231638193130479
		 82 13.231638193130479 83 13.231638193130479 84 13.231638193130479 85 13.231638193130479
		 86 13.231638193130479 87 13.231638193130479 88 13.231638193130479 89 13.231638193130479
		 90 13.231638193130479 91 13.231638193130479 92 13.231638193130479 93 13.231638193130479
		 94 13.231638193130479 95 13.231638193130479 96 13.231638193130479 97 13.231638193130479
		 98 13.231638193130479 99 13.231638193130479 100 13.231638193130479 101 13.231638193130479
		 102 13.231638193130479 103 13.231638193130479 104 13.231638193130479 105 13.231638193130479
		 106 13.231638193130479 107 13.231638193130479 108 13.231638193130479 109 13.231638193130479
		 110 13.231638193130479 111 13.231638193130479 112 13.231638193130479 113 13.231638193130479
		 114 13.231638193130479 115 13.231638193130479 116 13.231638193130479 117 13.231638193130479
		 118 13.231638193130479 119 13.231638193130479 120 13.231638193130479 121 13.231638193130479
		 122 13.231638193130479 123 13.231638193130479 124 13.231638193130479 125 13.231638193130479
		 126 13.231638193130479 127 13.231638193130479 128 13.231638193130479 129 13.231638193130479
		 130 13.231638193130479 131 13.231638193130479 132 13.231638193130479 133 13.231638193130479
		 134 13.231638193130479 135 13.231638193130479 136 13.231638193130479;
createNode animCurveTL -n "locator6_translateY";
	rename -uid "F4B8F7CC-421C-B286-DCF8-D4A1B40E3AAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -3.1962687700115566e-05 1 -0.15813768330579592
		 2 -0.58499378777145239 3 -1.1980664564035521 4 -1.8938523376052956 5 -2.5576078321709872
		 6 -3.0912397180362063 7 -3.4434535044385086 8 -3.6228325934244197 9 -3.6845229894820477
		 10 -3.6947743158649189 11 -3.6845229894820477 12 -3.6228325934244197 13 -3.4434535044385086
		 14 -3.0912397180362063 15 -2.5576078321709872 16 -1.8938523376052956 17 -1.1980664564035806
		 18 -0.58499378777142397 19 -0.15813768330579592 20 -3.1962687700115566e-05 21 -3.1962687700115566e-05
		 22 -3.1962687700115566e-05 23 -3.1962687700115566e-05 24 -3.1962687700115566e-05
		 25 -3.1962687700115566e-05 26 -3.1962687700115566e-05 27 -3.1962687700115566e-05
		 28 -3.1962687700115566e-05 29 -3.1962687700115566e-05 30 -3.1962687700115566e-05
		 31 -3.1962687700115566e-05 32 -3.1962687700115566e-05 33 -3.1962687700115566e-05
		 34 -3.1962687700115566e-05 35 -3.1962687700115566e-05 36 -3.1962687700115566e-05
		 37 -3.1962687700115566e-05 38 -3.1962687700115566e-05 39 -3.1962687700115566e-05
		 40 -3.1962687700115566e-05 41 -3.1962687700115566e-05 42 -3.1962687700115566e-05
		 43 -3.1962687700115566e-05 44 -3.1962687700115566e-05 45 -3.1962687700115566e-05
		 46 -3.1962687700115566e-05 47 -3.1962687700115566e-05 48 -3.1962687700115566e-05
		 49 -3.1962687700115566e-05 50 -3.1962687700115566e-05 51 -3.1962687700115566e-05
		 52 -3.1962687700115566e-05 53 -3.1962687700115566e-05 54 -3.1962687700115566e-05
		 55 -3.1962687700115566e-05 56 -3.1962687700115566e-05 57 -3.1962687700115566e-05
		 58 -3.1962687700115566e-05 59 -3.1962687700115566e-05 60 -3.1962687700115566e-05
		 61 -3.1962687700115566e-05 62 -3.1962687700115566e-05 63 -3.1962687700115566e-05
		 64 -3.1962687700115566e-05 65 -3.1962687700115566e-05 66 -3.1962687700115566e-05
		 67 -3.1962687700115566e-05 68 -3.1962687700115566e-05 69 -3.1962687700115566e-05
		 70 -3.1962687700115566e-05 71 -3.1962687700115566e-05 72 -3.1962687700115566e-05
		 73 -3.1962687700115566e-05 74 -3.1962687700115566e-05 75 -3.1962687700115566e-05
		 76 -3.1962687700115566e-05 77 -3.1962687700115566e-05 78 -3.1962687700115566e-05
		 79 -3.1962687700115566e-05 80 -3.1962687700115566e-05 81 -3.1962687700115566e-05
		 82 -3.1962687700115566e-05 83 -3.1962687700115566e-05 84 -3.1962687700115566e-05
		 85 -3.1962687700115566e-05 86 -3.1962687700115566e-05 87 -3.1962687700115566e-05
		 88 -3.1962687700115566e-05 89 -3.1962687700115566e-05 90 -3.1962687700115566e-05
		 91 -3.1962687700115566e-05 92 -3.1962687700115566e-05 93 -3.1962687700115566e-05
		 94 -3.1962687700115566e-05 95 -3.1962687700115566e-05 96 -3.1962687700115566e-05
		 97 -3.1962687700115566e-05 98 -3.1962687700115566e-05 99 -3.1962687700115566e-05
		 100 -3.1962687700115566e-05 101 -3.1962687700115566e-05 102 -3.1962687700115566e-05
		 103 -3.1962687700115566e-05 104 -3.1962687700115566e-05 105 -3.1962687700115566e-05
		 106 -3.1962687700115566e-05 107 -3.1962687700115566e-05 108 -3.1962687700115566e-05
		 109 -3.1962687700115566e-05 110 -3.1962687700115566e-05 111 -3.1962687700115566e-05
		 112 -3.1962687700115566e-05 113 -3.1962687700115566e-05 114 -3.1962687700115566e-05
		 115 -3.1962687700115566e-05 116 -3.1962687700115566e-05 117 -3.1962687700115566e-05
		 118 -3.1962687700115566e-05 119 -3.1962687700115566e-05 120 -3.1962687700115566e-05
		 121 -3.1962687700115566e-05 122 -3.1962687700115566e-05 123 -3.1962687700115566e-05
		 124 -3.1962687700115566e-05 125 -3.1962687700115566e-05 126 -3.1962687700115566e-05
		 127 -3.1962687700115566e-05 128 -3.1962687700115566e-05 129 -3.1962687700115566e-05
		 130 -3.1962687700115566e-05 131 -3.1962687700115566e-05 132 -3.1962687700115566e-05
		 133 -3.1962687700115566e-05 134 -3.1962687700115566e-05 135 -3.1962687700115566e-05
		 136 -3.1962687700115566e-05;
createNode animCurveTL -n "locator6_translateZ";
	rename -uid "746D8DA0-4450-5404-8623-37B653AE5FE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 3.1853993277763948e-05 1 3.1853993281316662e-05
		 2 3.1853993277763948e-05 3 3.1853993275987591e-05 4 3.1853993279540305e-05 5 3.1853993277763948e-05
		 6 3.1853993277763948e-05 7 3.1853993277763948e-05 8 3.1853993279540305e-05 9 3.1853993277763948e-05
		 10 3.1853993279540305e-05 11 3.1853993275987591e-05 12 3.1853993275987591e-05 13 3.1853993279540305e-05
		 14 3.1853993279540305e-05 15 3.1853993279540305e-05 16 3.1853993275987591e-05 17 3.1853993279540305e-05
		 18 3.1853993277763948e-05 19 3.1853993277763948e-05 20 3.1853993277763948e-05 21 3.1853993277763948e-05
		 22 3.1853993277763948e-05 23 3.1853993277763948e-05 24 3.1853993277763948e-05 25 3.1853993277763948e-05
		 26 3.1853993277763948e-05 27 3.1853993277763948e-05 28 3.1853993277763948e-05 29 3.1853993277763948e-05
		 30 3.1853993277763948e-05 31 3.1853993277763948e-05 32 3.1853993277763948e-05 33 3.1853993277763948e-05
		 34 3.1853993277763948e-05 35 3.1853993277763948e-05 36 3.1853993277763948e-05 37 3.1853993277763948e-05
		 38 3.1853993277763948e-05 39 3.1853993277763948e-05 40 3.1853993277763948e-05 41 3.1853993277763948e-05
		 42 3.1853993277763948e-05 43 3.1853993277763948e-05 44 3.1853993277763948e-05 45 3.1853993277763948e-05
		 46 3.1853993277763948e-05 47 3.1853993277763948e-05 48 3.1853993277763948e-05 49 3.1853993277763948e-05
		 50 3.1853993277763948e-05 51 3.1853993277763948e-05 52 3.1853993277763948e-05 53 3.1853993277763948e-05
		 54 3.1853993277763948e-05 55 3.1853993277763948e-05 56 3.1853993277763948e-05 57 3.1853993277763948e-05
		 58 3.1853993277763948e-05 59 3.1853993277763948e-05 60 3.1853993277763948e-05 61 3.1853993277763948e-05
		 62 3.1853993277763948e-05 63 3.1853993277763948e-05 64 3.1853993277763948e-05 65 3.1853993277763948e-05
		 66 3.1853993277763948e-05 67 3.1853993277763948e-05 68 3.1853993277763948e-05 69 3.1853993277763948e-05
		 70 3.1853993277763948e-05 71 3.1853993277763948e-05 72 3.1853993277763948e-05 73 3.1853993277763948e-05
		 74 3.1853993277763948e-05 75 3.1853993277763948e-05 76 3.1853993277763948e-05 77 3.1853993277763948e-05
		 78 3.1853993277763948e-05 79 3.1853993277763948e-05 80 3.1853993277763948e-05 81 3.1853993277763948e-05
		 82 3.1853993277763948e-05 83 3.1853993277763948e-05 84 3.1853993277763948e-05 85 3.1853993277763948e-05
		 86 3.1853993277763948e-05 87 3.1853993277763948e-05 88 3.1853993277763948e-05 89 3.1853993277763948e-05
		 90 3.1853993277763948e-05 91 3.1853993277763948e-05 92 3.1853993277763948e-05 93 3.1853993277763948e-05
		 94 3.1853993277763948e-05 95 3.1853993277763948e-05 96 3.1853993277763948e-05 97 3.1853993277763948e-05
		 98 3.1853993277763948e-05 99 3.1853993277763948e-05 100 3.1853993277763948e-05 101 3.1853993277763948e-05
		 102 3.1853993277763948e-05 103 3.1853993277763948e-05 104 3.1853993277763948e-05
		 105 3.1853993277763948e-05 106 3.1853993277763948e-05 107 3.1853993277763948e-05
		 108 3.1853993277763948e-05 109 3.1853993277763948e-05 110 3.1853993277763948e-05
		 111 3.1853993277763948e-05 112 3.1853993277763948e-05 113 3.1853993277763948e-05
		 114 3.1853993277763948e-05 115 3.1853993277763948e-05 116 3.1853993277763948e-05
		 117 3.1853993277763948e-05 118 3.1853993277763948e-05 119 3.1853993277763948e-05
		 120 3.1853993277763948e-05 121 3.1853993277763948e-05 122 3.1853993277763948e-05
		 123 3.1853993277763948e-05 124 3.1853993277763948e-05 125 3.1853993277763948e-05
		 126 3.1853993277763948e-05 127 3.1853993277763948e-05 128 3.1853993277763948e-05
		 129 3.1853993277763948e-05 130 3.1853993277763948e-05 131 3.1853993277763948e-05
		 132 3.1853993277763948e-05 133 3.1853993277763948e-05 134 3.1853993277763948e-05
		 135 3.1853993277763948e-05 136 3.1853993277763948e-05;
createNode animCurveTA -n "locator6_rotateX";
	rename -uid "0FFA82E2-4D80-0964-E59F-13A092F7E8FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator6_rotateY";
	rename -uid "213D1C31-412B-3DD7-0764-3C876FAA672D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator6_rotateZ";
	rename -uid "B65E4779-41F0-5AA0-A0D9-2AA6D476571F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 -4.9004716934183286 2 -18.201752004125222
		 3 -37.803638777798533 4 -61.605929860116163 5 -87.508423096755877 6 -113.41091633339566
		 7 -137.21320741571321 8 -156.81509418938651 9 -170.1163745000934 10 -175.01684619351181
		 11 -170.11637450009349 12 -156.81509418938663 13 -137.21320741571324 14 -113.41091633339566
		 15 -87.508423096755891 16 -61.605929860116191 17 -37.803638777798604 18 -18.2017520041253
		 19 -4.9004716934184041 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0
		 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0
		 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0
		 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0
		 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0
		 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0
		 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0
		 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTU -n "locator6_scaleX";
	rename -uid "46E55D7A-4130-AA66-4D56-F28E722DE7F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 1 3 1 4 1 5 1
		 6 1 7 1 8 0.99999999999999989 9 1 10 1 11 1.0000000000000002 12 1 13 1 14 0.99999999999999989
		 15 0.99999999999999989 16 1 17 0.99999999999999989 18 1 19 1 20 1 21 1 22 1 23 1
		 24 1 25 1 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1
		 41 1 42 1 43 1 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1
		 58 1 59 1 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1
		 75 1 76 1 77 1 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1
		 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1
		 107 1 108 1 109 1 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1
		 121 1 122 1 123 1 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1
		 135 1 136 1;
createNode animCurveTU -n "locator6_scaleY";
	rename -uid "1597A21D-4D50-63D8-C0FC-B88B7001FF97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 1 3 1 4 1 5 1
		 6 1 7 1 8 0.99999999999999989 9 1 10 1 11 1.0000000000000002 12 1 13 1 14 0.99999999999999989
		 15 0.99999999999999989 16 1 17 0.99999999999999989 18 1 19 1 20 1 21 1 22 1 23 1
		 24 1 25 1 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1
		 41 1 42 1 43 1 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1
		 58 1 59 1 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1
		 75 1 76 1 77 1 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1
		 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1
		 107 1 108 1 109 1 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1
		 121 1 122 1 123 1 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1
		 135 1 136 1;
createNode animCurveTU -n "locator6_scaleZ";
	rename -uid "0793E286-437A-0F0F-AEF2-EEA4C5D8C419";
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
createNode animCurveTU -n "locator7_visibility";
	rename -uid "CCA4E82D-4D32-9467-9404-4ABD332BD1FE";
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
	rename -uid "704BDE76-4A65-CB08-AC81-EAA15C326801";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 16.182559728622422 1 16.168388443607597
		 2 15.988335339157786 3 15.363758120143586 4 14.113167938513314 5 12.332932420304985
		 6 10.391020633941821 7 8.7167390430705325 8 7.5639420387870615 9 6.9448523982105854
		 10 6.7544038024860384 11 6.9448523982105996 12 7.5639420387870615 13 8.7167390430705041
		 14 10.391020633941835 15 12.332932420304999 16 14.113167938513342 17 15.363758120143615
		 18 15.988335339157786 19 16.168388443607583 20 16.182559728622422 21 16.182559728622422
		 22 16.182559728622422 23 16.182559728622422 24 16.182559728622422 25 16.182559728622422
		 26 16.182559728622422 27 16.182559728622422 28 16.182559728622422 29 16.182559728622422
		 30 16.182559728622422 31 16.182559728622422 32 16.182559728622422 33 16.182559728622422
		 34 16.182559728622422 35 16.182559728622422 36 16.182559728622422 37 16.182559728622422
		 38 16.182559728622422 39 16.182559728622422 40 16.182559728622422 41 16.182559728622422
		 42 16.182559728622422 43 16.182559728622422 44 16.182559728622422 45 16.182559728622422
		 46 16.182559728622422 47 16.182559728622422 48 16.182559728622422 49 16.182559728622422
		 50 16.182559728622422 51 16.182559728622422 52 16.182559728622422 53 16.182559728622422
		 54 16.182559728622422 55 16.182559728622422 56 16.182559728622422 57 16.182559728622422
		 58 16.182559728622422 59 16.182559728622422 60 16.182559728622422 61 16.182559728622422
		 62 16.182559728622422 63 16.182559728622422 64 16.182559728622422 65 16.182559728622422
		 66 16.182559728622422 67 16.182559728622422 68 16.182559728622422 69 16.182559728622422
		 70 16.182559728622422 71 16.182559728622422 72 16.182559728622422 73 16.182559728622422
		 74 16.182559728622422 75 16.182559728622422 76 16.182559728622422 77 16.182559728622422
		 78 16.182559728622422 79 16.182559728622422 80 16.182559728622422 81 16.182559728622422
		 82 16.182559728622422 83 16.182559728622422 84 16.182559728622422 85 16.182559728622422
		 86 16.182559728622422 87 16.182559728622422 88 16.182559728622422 89 16.182559728622422
		 90 16.182559728622422 91 16.182559728622422 92 16.182559728622422 93 16.182559728622422
		 94 16.182559728622422 95 16.182559728622422 96 16.182559728622422 97 16.182559728622422
		 98 16.182559728622422 99 16.182559728622422 100 16.182559728622422 101 16.182559728622422
		 102 16.182559728622422 103 16.182559728622422 104 16.182559728622422 105 16.182559728622422
		 106 16.182559728622422 107 16.182559728622422 108 16.182559728622422 109 16.182559728622422
		 110 16.182559728622422 111 16.182559728622422 112 16.182559728622422 113 16.182559728622422
		 114 16.182559728622422 115 16.182559728622422 116 16.182559728622422 117 16.182559728622422
		 118 16.182559728622422 119 16.182559728622422 120 16.182559728622422 121 16.182559728622422
		 122 16.182559728622422 123 16.182559728622422 124 16.182559728622422 125 16.182559728622422
		 126 16.182559728622422 127 16.182559728622422 128 16.182559728622422 129 16.182559728622422
		 130 16.182559728622422 131 16.182559728622422 132 16.182559728622422 133 16.182559728622422
		 134 16.182559728622422 135 16.182559728622422 136 16.182559728622422;
createNode animCurveTL -n "locator7_translateY";
	rename -uid "5CE5082D-4A7F-10B0-FBE7-1B94EE99AA21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -7.1338773324214344e-05 1 -0.41025975840835827
		 2 -1.5067927502362579 3 -3.0068862705165884 4 -4.4897902248015384 5 -5.5057413469944265
		 6 -5.7992226257671007 7 -5.4479034287182913 8 -4.7845734855141018 9 -4.1910026788585526
		 10 -3.9510605028288523 11 -4.1910026788585526 12 -4.7845734855141302 13 -5.4479034287183197
		 14 -5.7992226257670438 15 -5.5057413469943981 16 -4.4897902248014816 17 -3.0068862705165884
		 18 -1.5067927502362295 19 -0.41025975840835827 20 -7.1338773324214344e-05 21 -7.1338773324214344e-05
		 22 -7.1338773324214344e-05 23 -7.1338773324214344e-05 24 -7.1338773324214344e-05
		 25 -7.1338773324214344e-05 26 -7.1338773324214344e-05 27 -7.1338773324214344e-05
		 28 -7.1338773324214344e-05 29 -7.1338773324214344e-05 30 -7.1338773324214344e-05
		 31 -7.1338773324214344e-05 32 -7.1338773324214344e-05 33 -7.1338773324214344e-05
		 34 -7.1338773324214344e-05 35 -7.1338773324214344e-05 36 -7.1338773324214344e-05
		 37 -7.1338773324214344e-05 38 -7.1338773324214344e-05 39 -7.1338773324214344e-05
		 40 -7.1338773324214344e-05 41 -7.1338773324214344e-05 42 -7.1338773324214344e-05
		 43 -7.1338773324214344e-05 44 -7.1338773324214344e-05 45 -7.1338773324214344e-05
		 46 -7.1338773324214344e-05 47 -7.1338773324214344e-05 48 -7.1338773324214344e-05
		 49 -7.1338773324214344e-05 50 -7.1338773324214344e-05 51 -7.1338773324214344e-05
		 52 -7.1338773324214344e-05 53 -7.1338773324214344e-05 54 -7.1338773324214344e-05
		 55 -7.1338773324214344e-05 56 -7.1338773324214344e-05 57 -7.1338773324214344e-05
		 58 -7.1338773324214344e-05 59 -7.1338773324214344e-05 60 -7.1338773324214344e-05
		 61 -7.1338773324214344e-05 62 -7.1338773324214344e-05 63 -7.1338773324214344e-05
		 64 -7.1338773324214344e-05 65 -7.1338773324214344e-05 66 -7.1338773324214344e-05
		 67 -7.1338773324214344e-05 68 -7.1338773324214344e-05 69 -7.1338773324214344e-05
		 70 -7.1338773324214344e-05 71 -7.1338773324214344e-05 72 -7.1338773324214344e-05
		 73 -7.1338773324214344e-05 74 -7.1338773324214344e-05 75 -7.1338773324214344e-05
		 76 -7.1338773324214344e-05 77 -7.1338773324214344e-05 78 -7.1338773324214344e-05
		 79 -7.1338773324214344e-05 80 -7.1338773324214344e-05 81 -7.1338773324214344e-05
		 82 -7.1338773324214344e-05 83 -7.1338773324214344e-05 84 -7.1338773324214344e-05
		 85 -7.1338773324214344e-05 86 -7.1338773324214344e-05 87 -7.1338773324214344e-05
		 88 -7.1338773324214344e-05 89 -7.1338773324214344e-05 90 -7.1338773324214344e-05
		 91 -7.1338773324214344e-05 92 -7.1338773324214344e-05 93 -7.1338773324214344e-05
		 94 -7.1338773324214344e-05 95 -7.1338773324214344e-05 96 -7.1338773324214344e-05
		 97 -7.1338773324214344e-05 98 -7.1338773324214344e-05 99 -7.1338773324214344e-05
		 100 -7.1338773324214344e-05 101 -7.1338773324214344e-05 102 -7.1338773324214344e-05
		 103 -7.1338773324214344e-05 104 -7.1338773324214344e-05 105 -7.1338773324214344e-05
		 106 -7.1338773324214344e-05 107 -7.1338773324214344e-05 108 -7.1338773324214344e-05
		 109 -7.1338773324214344e-05 110 -7.1338773324214344e-05 111 -7.1338773324214344e-05
		 112 -7.1338773324214344e-05 113 -7.1338773324214344e-05 114 -7.1338773324214344e-05
		 115 -7.1338773324214344e-05 116 -7.1338773324214344e-05 117 -7.1338773324214344e-05
		 118 -7.1338773324214344e-05 119 -7.1338773324214344e-05 120 -7.1338773324214344e-05
		 121 -7.1338773324214344e-05 122 -7.1338773324214344e-05 123 -7.1338773324214344e-05
		 124 -7.1338773324214344e-05 125 -7.1338773324214344e-05 126 -7.1338773324214344e-05
		 127 -7.1338773324214344e-05 128 -7.1338773324214344e-05 129 -7.1338773324214344e-05
		 130 -7.1338773324214344e-05 131 -7.1338773324214344e-05 132 -7.1338773324214344e-05
		 133 -7.1338773324214344e-05 134 -7.1338773324214344e-05 135 -7.1338773324214344e-05
		 136 -7.1338773324214344e-05;
createNode animCurveTL -n "locator7_translateZ";
	rename -uid "9560F9B6-4AB1-0530-A1C3-1F8E1E3F982A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 4.8301953935236952e-05 1 4.8301953937013309e-05
		 2 4.8301953933460595e-05 3 4.8301953933460595e-05 4 4.8301953937013309e-05 5 4.8301953933460595e-05
		 6 4.8301953935236952e-05 7 4.8301953935236952e-05 8 4.8301953937013309e-05 9 4.8301953935236952e-05
		 10 4.8301953937013309e-05 11 4.8301953935236952e-05 12 4.8301953935236952e-05 13 4.8301953937013309e-05
		 14 4.8301953937013309e-05 15 4.8301953937013309e-05 16 4.8301953933460595e-05 17 4.8301953937013309e-05
		 18 4.8301953935236952e-05 19 4.8301953937013309e-05 20 4.8301953935236952e-05 21 4.8301953935236952e-05
		 22 4.8301953935236952e-05 23 4.8301953935236952e-05 24 4.8301953935236952e-05 25 4.8301953935236952e-05
		 26 4.8301953935236952e-05 27 4.8301953935236952e-05 28 4.8301953935236952e-05 29 4.8301953935236952e-05
		 30 4.8301953935236952e-05 31 4.8301953935236952e-05 32 4.8301953935236952e-05 33 4.8301953935236952e-05
		 34 4.8301953935236952e-05 35 4.8301953935236952e-05 36 4.8301953935236952e-05 37 4.8301953935236952e-05
		 38 4.8301953935236952e-05 39 4.8301953935236952e-05 40 4.8301953935236952e-05 41 4.8301953935236952e-05
		 42 4.8301953935236952e-05 43 4.8301953935236952e-05 44 4.8301953935236952e-05 45 4.8301953935236952e-05
		 46 4.8301953935236952e-05 47 4.8301953935236952e-05 48 4.8301953935236952e-05 49 4.8301953935236952e-05
		 50 4.8301953935236952e-05 51 4.8301953935236952e-05 52 4.8301953935236952e-05 53 4.8301953935236952e-05
		 54 4.8301953935236952e-05 55 4.8301953935236952e-05 56 4.8301953935236952e-05 57 4.8301953935236952e-05
		 58 4.8301953935236952e-05 59 4.8301953935236952e-05 60 4.8301953935236952e-05 61 4.8301953935236952e-05
		 62 4.8301953935236952e-05 63 4.8301953935236952e-05 64 4.8301953935236952e-05 65 4.8301953935236952e-05
		 66 4.8301953935236952e-05 67 4.8301953935236952e-05 68 4.8301953935236952e-05 69 4.8301953935236952e-05
		 70 4.8301953935236952e-05 71 4.8301953935236952e-05 72 4.8301953935236952e-05 73 4.8301953935236952e-05
		 74 4.8301953935236952e-05 75 4.8301953935236952e-05 76 4.8301953935236952e-05 77 4.8301953935236952e-05
		 78 4.8301953935236952e-05 79 4.8301953935236952e-05 80 4.8301953935236952e-05 81 4.8301953935236952e-05
		 82 4.8301953935236952e-05 83 4.8301953935236952e-05 84 4.8301953935236952e-05 85 4.8301953935236952e-05
		 86 4.8301953935236952e-05 87 4.8301953935236952e-05 88 4.8301953935236952e-05 89 4.8301953935236952e-05
		 90 4.8301953935236952e-05 91 4.8301953935236952e-05 92 4.8301953935236952e-05 93 4.8301953935236952e-05
		 94 4.8301953935236952e-05 95 4.8301953935236952e-05 96 4.8301953935236952e-05 97 4.8301953935236952e-05
		 98 4.8301953935236952e-05 99 4.8301953935236952e-05 100 4.8301953935236952e-05 101 4.8301953935236952e-05
		 102 4.8301953935236952e-05 103 4.8301953935236952e-05 104 4.8301953935236952e-05
		 105 4.8301953935236952e-05 106 4.8301953935236952e-05 107 4.8301953935236952e-05
		 108 4.8301953935236952e-05 109 4.8301953935236952e-05 110 4.8301953935236952e-05
		 111 4.8301953935236952e-05 112 4.8301953935236952e-05 113 4.8301953935236952e-05
		 114 4.8301953935236952e-05 115 4.8301953935236952e-05 116 4.8301953935236952e-05
		 117 4.8301953935236952e-05 118 4.8301953935236952e-05 119 4.8301953935236952e-05
		 120 4.8301953935236952e-05 121 4.8301953935236952e-05 122 4.8301953935236952e-05
		 123 4.8301953935236952e-05 124 4.8301953935236952e-05 125 4.8301953935236952e-05
		 126 4.8301953935236952e-05 127 4.8301953935236952e-05 128 4.8301953935236952e-05
		 129 4.8301953935236952e-05 130 4.8301953935236952e-05 131 4.8301953935236952e-05
		 132 4.8301953935236952e-05 133 4.8301953935236952e-05 134 4.8301953935236952e-05
		 135 4.8301953935236952e-05 136 4.8301953935236952e-05;
createNode animCurveTA -n "locator7_rotateX";
	rename -uid "13A57B1D-4E83-4943-BC18-C4A5366A77D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator7_rotateY";
	rename -uid "C805202F-470C-DF78-098E-09900BD56C1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator7_rotateZ";
	rename -uid "C83530A2-4994-7B92-2668-19B2EF7248A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 -7.3507075401274964 2 -27.302628006187827
		 3 -56.705458166697795 4 -92.408894790174216 5 -131.26263464513383 6 -170.11637450009351
		 7 -205.81981112356982 8 -235.22264128407977 9 -255.17456175014013 10 -262.52526929026772
		 11 -255.17456175014024 12 -235.22264128407988 13 -205.81981112356985 14 -170.11637450009349
		 15 -131.26263464513386 16 -92.408894790174301 17 -56.705458166697888 18 -27.302628006187959
		 19 -7.3507075401276074 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0
		 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0
		 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0
		 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0
		 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0
		 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0
		 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0
		 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTU -n "locator7_scaleX";
	rename -uid "1BD07EBD-46B7-29A5-FD56-C48A1533A7A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 1 3 1 4 1 5 1
		 6 1 7 1 8 0.99999999999999978 9 1.0000000000000002 10 1 11 1.0000000000000002 12 1
		 13 1.0000000000000002 14 0.99999999999999978 15 0.99999999999999989 16 1 17 0.99999999999999989
		 18 1 19 0.99999999999999989 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1 29 1 30 1
		 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1 44 1 45 1 46 1 47 1
		 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1 61 1 62 1 63 1 64 1
		 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1 78 1 79 1 80 1 81 1
		 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1
		 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1 110 1 111 1 112 1
		 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1 124 1 125 1 126 1
		 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTU -n "locator7_scaleY";
	rename -uid "EAC2D82A-49A1-D2AA-6B66-EF9AC8A94F31";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 1 3 1 4 1 5 1
		 6 1 7 1 8 0.99999999999999978 9 1.0000000000000002 10 1 11 1.0000000000000002 12 1
		 13 1.0000000000000002 14 0.99999999999999978 15 0.99999999999999989 16 1 17 0.99999999999999989
		 18 1 19 0.99999999999999989 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1 29 1 30 1
		 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1 44 1 45 1 46 1 47 1
		 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1 61 1 62 1 63 1 64 1
		 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1 78 1 79 1 80 1 81 1
		 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1
		 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1 110 1 111 1 112 1
		 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1 124 1 125 1 126 1
		 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTU -n "locator7_scaleZ";
	rename -uid "D48CA344-4ED8-60B2-6CE6-D188DF7E9FF5";
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
createNode animCurveTU -n "locator8_visibility";
	rename -uid "8DD87743-4E94-CE64-1BFF-6093B554A0CC";
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
	rename -uid "5FB8333A-4FC6-33D9-0140-16BD9043E8E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 19.01646232604979 1 18.978995915241356
		 2 18.5065125442881 3 16.919377119434444 4 13.994017956961414 5 10.463911539919863
		 6 7.5991709417057649 7 6.1657669213330308 8 5.9475470545931302 9 6.2197652546337991
		 10 6.3857830772665096 11 6.2197652546337849 12 5.9475470545931017 13 6.1657669213330166
		 14 7.5991709417057507 15 10.463911539919849 16 13.994017956961386 17 16.919377119434429
		 18 18.5065125442881 19 18.978995915241356 20 19.01646232604979 21 19.01646232604979
		 22 19.01646232604979 23 19.01646232604979 24 19.01646232604979 25 19.01646232604979
		 26 19.01646232604979 27 19.01646232604979 28 19.01646232604979 29 19.01646232604979
		 30 19.01646232604979 31 19.01646232604979 32 19.01646232604979 33 19.01646232604979
		 34 19.01646232604979 35 19.01646232604979 36 19.01646232604979 37 19.01646232604979
		 38 19.01646232604979 39 19.01646232604979 40 19.01646232604979 41 19.01646232604979
		 42 19.01646232604979 43 19.01646232604979 44 19.01646232604979 45 19.01646232604979
		 46 19.01646232604979 47 19.01646232604979 48 19.01646232604979 49 19.01646232604979
		 50 19.01646232604979 51 19.01646232604979 52 19.01646232604979 53 19.01646232604979
		 54 19.01646232604979 55 19.01646232604979 56 19.01646232604979 57 19.01646232604979
		 58 19.01646232604979 59 19.01646232604979 60 19.01646232604979 61 19.01646232604979
		 62 19.01646232604979 63 19.01646232604979 64 19.01646232604979 65 19.01646232604979
		 66 19.01646232604979 67 19.01646232604979 68 19.01646232604979 69 19.01646232604979
		 70 19.01646232604979 71 19.01646232604979 72 19.01646232604979 73 19.01646232604979
		 74 19.01646232604979 75 19.01646232604979 76 19.01646232604979 77 19.01646232604979
		 78 19.01646232604979 79 19.01646232604979 80 19.01646232604979 81 19.01646232604979
		 82 19.01646232604979 83 19.01646232604979 84 19.01646232604979 85 19.01646232604979
		 86 19.01646232604979 87 19.01646232604979 88 19.01646232604979 89 19.01646232604979
		 90 19.01646232604979 91 19.01646232604979 92 19.01646232604979 93 19.01646232604979
		 94 19.01646232604979 95 19.01646232604979 96 19.01646232604979 97 19.01646232604979
		 98 19.01646232604979 99 19.01646232604979 100 19.01646232604979 101 19.01646232604979
		 102 19.01646232604979 103 19.01646232604979 104 19.01646232604979 105 19.01646232604979
		 106 19.01646232604979 107 19.01646232604979 108 19.01646232604979 109 19.01646232604979
		 110 19.01646232604979 111 19.01646232604979 112 19.01646232604979 113 19.01646232604979
		 114 19.01646232604979 115 19.01646232604979 116 19.01646232604979 117 19.01646232604979
		 118 19.01646232604979 119 19.01646232604979 120 19.01646232604979 121 19.01646232604979
		 122 19.01646232604979 123 19.01646232604979 124 19.01646232604979 125 19.01646232604979
		 126 19.01646232604979 127 19.01646232604979 128 19.01646232604979 129 19.01646232604979
		 130 19.01646232604979 131 19.01646232604979 132 19.01646232604979 133 19.01646232604979
		 134 19.01646232604979 135 19.01646232604979 136 19.01646232604979;
createNode animCurveTL -n "locator8_translateY";
	rename -uid "64ED60DF-41EA-F2C0-5F8D-C6AEB836CCA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -0.00011027359397530745 1 -0.77287466932338589
		 2 -2.8067110156604542 3 -5.3756525026017243 4 -7.3211869146203981 5 -7.6359443612411155
		 6 -6.2856167346772054 7 -4.2135837102745484 8 -2.4568554638685214 9 -1.4514310759541047
		 10 -1.1412344060463795 11 -1.4514310759540763 12 -2.4568554638685498 13 -4.2135837102745484
		 14 -6.2856167346772054 15 -7.6359443612410303 16 -7.3211869146203981 17 -5.3756525026016959
		 18 -2.8067110156604542 19 -0.77287466932335747 20 -0.00011027359397530745 21 -0.00011027359397530745
		 22 -0.00011027359397530745 23 -0.00011027359397530745 24 -0.00011027359397530745
		 25 -0.00011027359397530745 26 -0.00011027359397530745 27 -0.00011027359397530745
		 28 -0.00011027359397530745 29 -0.00011027359397530745 30 -0.00011027359397530745
		 31 -0.00011027359397530745 32 -0.00011027359397530745 33 -0.00011027359397530745
		 34 -0.00011027359397530745 35 -0.00011027359397530745 36 -0.00011027359397530745
		 37 -0.00011027359397530745 38 -0.00011027359397530745 39 -0.00011027359397530745
		 40 -0.00011027359397530745 41 -0.00011027359397530745 42 -0.00011027359397530745
		 43 -0.00011027359397530745 44 -0.00011027359397530745 45 -0.00011027359397530745
		 46 -0.00011027359397530745 47 -0.00011027359397530745 48 -0.00011027359397530745
		 49 -0.00011027359397530745 50 -0.00011027359397530745 51 -0.00011027359397530745
		 52 -0.00011027359397530745 53 -0.00011027359397530745 54 -0.00011027359397530745
		 55 -0.00011027359397530745 56 -0.00011027359397530745 57 -0.00011027359397530745
		 58 -0.00011027359397530745 59 -0.00011027359397530745 60 -0.00011027359397530745
		 61 -0.00011027359397530745 62 -0.00011027359397530745 63 -0.00011027359397530745
		 64 -0.00011027359397530745 65 -0.00011027359397530745 66 -0.00011027359397530745
		 67 -0.00011027359397530745 68 -0.00011027359397530745 69 -0.00011027359397530745
		 70 -0.00011027359397530745 71 -0.00011027359397530745 72 -0.00011027359397530745
		 73 -0.00011027359397530745 74 -0.00011027359397530745 75 -0.00011027359397530745
		 76 -0.00011027359397530745 77 -0.00011027359397530745 78 -0.00011027359397530745
		 79 -0.00011027359397530745 80 -0.00011027359397530745 81 -0.00011027359397530745
		 82 -0.00011027359397530745 83 -0.00011027359397530745 84 -0.00011027359397530745
		 85 -0.00011027359397530745 86 -0.00011027359397530745 87 -0.00011027359397530745
		 88 -0.00011027359397530745 89 -0.00011027359397530745 90 -0.00011027359397530745
		 91 -0.00011027359397530745 92 -0.00011027359397530745 93 -0.00011027359397530745
		 94 -0.00011027359397530745 95 -0.00011027359397530745 96 -0.00011027359397530745
		 97 -0.00011027359397530745 98 -0.00011027359397530745 99 -0.00011027359397530745
		 100 -0.00011027359397530745 101 -0.00011027359397530745 102 -0.00011027359397530745
		 103 -0.00011027359397530745 104 -0.00011027359397530745 105 -0.00011027359397530745
		 106 -0.00011027359397530745 107 -0.00011027359397530745 108 -0.00011027359397530745
		 109 -0.00011027359397530745 110 -0.00011027359397530745 111 -0.00011027359397530745
		 112 -0.00011027359397530745 113 -0.00011027359397530745 114 -0.00011027359397530745
		 115 -0.00011027359397530745 116 -0.00011027359397530745 117 -0.00011027359397530745
		 118 -0.00011027359397530745 119 -0.00011027359397530745 120 -0.00011027359397530745
		 121 -0.00011027359397530745 122 -0.00011027359397530745 123 -0.00011027359397530745
		 124 -0.00011027359397530745 125 -0.00011027359397530745 126 -0.00011027359397530745
		 127 -0.00011027359397530745 128 -0.00011027359397530745 129 -0.00011027359397530745
		 130 -0.00011027359397530745 131 -0.00011027359397530745 132 -0.00011027359397530745
		 133 -0.00011027359397530745 134 -0.00011027359397530745 135 -0.00011027359397530745
		 136 -0.00011027359397530745;
createNode animCurveTL -n "locator8_translateZ";
	rename -uid "81C108D4-46A5-AF26-FA67-6795AFC85733";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 3.8797730665507402e-05 1 3.8797730663731045e-05
		 2 3.8797730665507402e-05 3 3.8797730663731045e-05 4 3.8797730667283759e-05 5 3.8797730667283759e-05
		 6 3.8797730665507402e-05 7 3.8797730661954688e-05 8 3.8797730663731045e-05 9 3.8797730667283759e-05
		 10 3.8797730665507402e-05 11 3.8797730665507402e-05 12 3.8797730663731045e-05 13 3.8797730663731045e-05
		 14 3.8797730665507402e-05 15 3.8797730667283759e-05 16 3.8797730665507402e-05 17 3.8797730665507402e-05
		 18 3.8797730665507402e-05 19 3.8797730667283759e-05 20 3.8797730665507402e-05 21 3.8797730665507402e-05
		 22 3.8797730665507402e-05 23 3.8797730665507402e-05 24 3.8797730665507402e-05 25 3.8797730665507402e-05
		 26 3.8797730665507402e-05 27 3.8797730665507402e-05 28 3.8797730665507402e-05 29 3.8797730665507402e-05
		 30 3.8797730665507402e-05 31 3.8797730665507402e-05 32 3.8797730665507402e-05 33 3.8797730665507402e-05
		 34 3.8797730665507402e-05 35 3.8797730665507402e-05 36 3.8797730665507402e-05 37 3.8797730665507402e-05
		 38 3.8797730665507402e-05 39 3.8797730665507402e-05 40 3.8797730665507402e-05 41 3.8797730665507402e-05
		 42 3.8797730665507402e-05 43 3.8797730665507402e-05 44 3.8797730665507402e-05 45 3.8797730665507402e-05
		 46 3.8797730665507402e-05 47 3.8797730665507402e-05 48 3.8797730665507402e-05 49 3.8797730665507402e-05
		 50 3.8797730665507402e-05 51 3.8797730665507402e-05 52 3.8797730665507402e-05 53 3.8797730665507402e-05
		 54 3.8797730665507402e-05 55 3.8797730665507402e-05 56 3.8797730665507402e-05 57 3.8797730665507402e-05
		 58 3.8797730665507402e-05 59 3.8797730665507402e-05 60 3.8797730665507402e-05 61 3.8797730665507402e-05
		 62 3.8797730665507402e-05 63 3.8797730665507402e-05 64 3.8797730665507402e-05 65 3.8797730665507402e-05
		 66 3.8797730665507402e-05 67 3.8797730665507402e-05 68 3.8797730665507402e-05 69 3.8797730665507402e-05
		 70 3.8797730665507402e-05 71 3.8797730665507402e-05 72 3.8797730665507402e-05 73 3.8797730665507402e-05
		 74 3.8797730665507402e-05 75 3.8797730665507402e-05 76 3.8797730665507402e-05 77 3.8797730665507402e-05
		 78 3.8797730665507402e-05 79 3.8797730665507402e-05 80 3.8797730665507402e-05 81 3.8797730665507402e-05
		 82 3.8797730665507402e-05 83 3.8797730665507402e-05 84 3.8797730665507402e-05 85 3.8797730665507402e-05
		 86 3.8797730665507402e-05 87 3.8797730665507402e-05 88 3.8797730665507402e-05 89 3.8797730665507402e-05
		 90 3.8797730665507402e-05 91 3.8797730665507402e-05 92 3.8797730665507402e-05 93 3.8797730665507402e-05
		 94 3.8797730665507402e-05 95 3.8797730665507402e-05 96 3.8797730665507402e-05 97 3.8797730665507402e-05
		 98 3.8797730665507402e-05 99 3.8797730665507402e-05 100 3.8797730665507402e-05 101 3.8797730665507402e-05
		 102 3.8797730665507402e-05 103 3.8797730665507402e-05 104 3.8797730665507402e-05
		 105 3.8797730665507402e-05 106 3.8797730665507402e-05 107 3.8797730665507402e-05
		 108 3.8797730665507402e-05 109 3.8797730665507402e-05 110 3.8797730665507402e-05
		 111 3.8797730665507402e-05 112 3.8797730665507402e-05 113 3.8797730665507402e-05
		 114 3.8797730665507402e-05 115 3.8797730665507402e-05 116 3.8797730665507402e-05
		 117 3.8797730665507402e-05 118 3.8797730665507402e-05 119 3.8797730665507402e-05
		 120 3.8797730665507402e-05 121 3.8797730665507402e-05 122 3.8797730665507402e-05
		 123 3.8797730665507402e-05 124 3.8797730665507402e-05 125 3.8797730665507402e-05
		 126 3.8797730665507402e-05 127 3.8797730665507402e-05 128 3.8797730665507402e-05
		 129 3.8797730665507402e-05 130 3.8797730665507402e-05 131 3.8797730665507402e-05
		 132 3.8797730665507402e-05 133 3.8797730665507402e-05 134 3.8797730665507402e-05
		 135 3.8797730665507402e-05 136 3.8797730665507402e-05;
createNode animCurveTA -n "locator8_rotateX";
	rename -uid "4D3D5FA6-4E92-C275-6084-65B1833FD359";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator8_rotateY";
	rename -uid "53A540DF-4116-6102-F54C-5BB673937526";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator8_rotateZ";
	rename -uid "FE769CE8-4050-20A9-05A8-A19BC3A4E7E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 -9.8009433868366589 2 -36.40350400825043
		 3 -75.607277555597079 4 -123.21185972023233 5 -175.01684619351175 6 -226.82183266679132
		 7 85.57358516857353 8 46.369811621226958 9 19.767250999813172 10 9.9663076129763848
		 11 19.767250999813026 12 46.369811621226788 13 85.573585168573501 14 -226.82183266679129
		 15 -175.01684619351178 16 -123.2118597202324 17 -75.607277555597207 18 -36.403504008250593
		 19 -9.8009433868368099 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0
		 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0
		 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0
		 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0
		 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0
		 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0
		 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0
		 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTU -n "locator8_scaleX";
	rename -uid "14D1F842-4B36-518F-C483-BFA4C5A21101";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 1 3 1 4 1 5 1
		 6 1 7 1 8 0.99999999999999978 9 1.0000000000000004 10 1 11 1.0000000000000004 12 1.0000000000000002
		 13 1.0000000000000004 14 0.99999999999999978 15 0.99999999999999978 16 1 17 0.99999999999999989
		 18 1 19 0.99999999999999989 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1 29 1 30 1
		 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1 44 1 45 1 46 1 47 1
		 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1 61 1 62 1 63 1 64 1
		 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1 78 1 79 1 80 1 81 1
		 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1
		 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1 110 1 111 1 112 1
		 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1 124 1 125 1 126 1
		 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTU -n "locator8_scaleY";
	rename -uid "AA0709EC-4AE4-BF6B-BE1D-77A5BDEB10EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 1 3 1 4 1 5 1
		 6 1 7 1 8 0.99999999999999978 9 1.0000000000000004 10 1 11 1.0000000000000004 12 1.0000000000000002
		 13 1.0000000000000004 14 0.99999999999999978 15 0.99999999999999978 16 1 17 0.99999999999999989
		 18 1 19 0.99999999999999989 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1 29 1 30 1
		 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1 44 1 45 1 46 1 47 1
		 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1 61 1 62 1 63 1 64 1
		 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1 78 1 79 1 80 1 81 1
		 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1
		 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1 110 1 111 1 112 1
		 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1 124 1 125 1 126 1
		 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTU -n "locator8_scaleZ";
	rename -uid "32016560-45CE-98CB-0CE9-078A6D149148";
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
createNode animCurveTU -n "locator9_visibility";
	rename -uid "7F78B3FC-471B-890D-4B60-F4A6C4522754";
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
	rename -uid "EB7C9568-49FF-8A7F-32F7-7FA189212BAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 9.1045274734496928 1 9.1045274734496928
		 2 9.1045274734496786 3 9.1045274734496644 4 9.1045274734496502 5 9.104527473449636
		 6 9.1045274734496218 7 9.1045274734496076 8 9.1045274734496076 9 9.1045274734496076
		 10 9.1045274734496076 11 9.1045274734496076 12 9.1045274734496076 13 9.1045274734496076
		 14 9.1045274734496218 15 9.104527473449636 16 9.1045274734496502 17 9.1045274734496644
		 18 9.1045274734496786 19 9.1045274734496928 20 9.1045274734496928 21 9.1045274734496928
		 22 9.1045274734496928 23 9.1045274734496928 24 9.1045274734496928 25 9.1045274734496928
		 26 9.1045274734496928 27 9.1045274734496928 28 9.1045274734496928 29 9.1045274734496928
		 30 9.1045274734496928 31 9.1045274734496928 32 9.1045274734496928 33 9.1045274734496928
		 34 9.1045274734496928 35 9.1045274734496928 36 9.1045274734496928 37 9.1045274734496928
		 38 9.1045274734496928 39 9.1045274734496928 40 9.1045274734496928 41 9.1045274734496928
		 42 9.1045274734496928 43 9.1045274734496928 44 9.1045274734496928 45 9.1045274734496928
		 46 9.1045274734496928 47 9.1045274734496928 48 9.1045274734496928 49 9.1045274734496928
		 50 9.1045274734496928 51 9.1045274734496928 52 9.1045274734496928 53 9.1045274734496928
		 54 9.1045274734496928 55 9.1045274734496928 56 9.1045274734496928 57 9.1045274734496928
		 58 9.1045274734496928 59 9.1045274734496928 60 9.1045274734496928 61 9.1045274734496928
		 62 9.1045274734496928 63 9.1045274734496928 64 9.1045274734496928 65 9.1045274734496928
		 66 9.1045274734496928 67 9.1045274734496928 68 9.1045274734496928 69 9.1045274734496928
		 70 9.1045274734496928 71 9.1045274734496928 72 9.1045274734496928 73 9.1045274734496928
		 74 9.1045274734496928 75 9.1045274734496928 76 9.1045274734496928 77 9.1045274734496928
		 78 9.1045274734496928 79 9.1045274734496928 80 9.1045274734496928 81 9.1045274734496928
		 82 9.1045274734496928 83 9.1045274734496928 84 9.1045274734496928 85 9.1045274734496928
		 86 9.1045274734496928 87 9.1045274734496928 88 9.1045274734496928 89 9.1045274734496928
		 90 9.1045274734496928 91 9.1045274734496928 92 9.1045274734496928 93 9.1045274734496928
		 94 9.1045274734496928 95 9.1045274734496928 96 9.1045274734496928 97 9.1045274734496928
		 98 9.1045274734496928 99 9.1045274734496928 100 9.1045274734496928 101 9.1045274734496928
		 102 9.1045274734496928 103 9.1045274734496928 104 9.1045274734496928 105 9.1045274734496928
		 106 9.1045274734496928 107 9.1045274734496928 108 9.1045274734496928 109 9.1045274734496928
		 110 9.1045274734496928 111 9.1045274734496928 112 9.1045274734496928 113 9.1045274734496928
		 114 9.1045274734496928 115 9.1045274734496928 116 9.1045274734496928 117 9.1045274734496928
		 118 9.1045274734496928 119 9.1045274734496928 120 9.1045274734496928 121 9.1045274734496928
		 122 9.1045274734496928 123 9.1045274734496928 124 9.1045274734496928 125 9.1045274734496928
		 126 9.1045274734496928 127 9.1045274734496928 128 9.1045274734496928 129 9.1045274734496928
		 130 9.1045274734496928 131 9.1045274734496928 132 9.1045274734496928 133 9.1045274734496928
		 134 9.1045274734496928 135 9.1045274734496928 136 9.1045274734496928;
createNode animCurveTL -n "locator9_translateY";
	rename -uid "A7843685-411A-5A53-8993-FA8D437E67F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -0.043939504772481541 1 -0.043939504772481541
		 2 -0.043939504772481541 3 -0.043939504772481541 4 -0.043939504772481541 5 -0.04393950477245312
		 6 -0.04393950477245312 7 -0.043939504772424698 8 -0.043939504772424698 9 -0.043939504772396276
		 10 -0.043939504772396276 11 -0.043939504772396276 12 -0.043939504772424698 13 -0.043939504772424698
		 14 -0.04393950477245312 15 -0.04393950477245312 16 -0.043939504772481541 17 -0.043939504772481541
		 18 -0.043939504772481541 19 -0.043939504772481541 20 -0.043939504772481541 21 -0.043939504772481541
		 22 -0.043939504772481541 23 -0.043939504772481541 24 -0.043939504772481541 25 -0.043939504772481541
		 26 -0.043939504772481541 27 -0.043939504772481541 28 -0.043939504772481541 29 -0.043939504772481541
		 30 -0.043939504772481541 31 -0.043939504772481541 32 -0.043939504772481541 33 -0.043939504772481541
		 34 -0.043939504772481541 35 -0.043939504772481541 36 -0.043939504772481541 37 -0.043939504772481541
		 38 -0.043939504772481541 39 -0.043939504772481541 40 -0.043939504772481541 41 -0.043939504772481541
		 42 -0.043939504772481541 43 -0.043939504772481541 44 -0.043939504772481541 45 -0.043939504772481541
		 46 -0.043939504772481541 47 -0.043939504772481541 48 -0.043939504772481541 49 -0.043939504772481541
		 50 -0.043939504772481541 51 -0.043939504772481541 52 -0.043939504772481541 53 -0.043939504772481541
		 54 -0.043939504772481541 55 -0.043939504772481541 56 -0.043939504772481541 57 -0.043939504772481541
		 58 -0.043939504772481541 59 -0.043939504772481541 60 -0.043939504772481541 61 -0.043939504772481541
		 62 -0.043939504772481541 63 -0.043939504772481541 64 -0.043939504772481541 65 -0.043939504772481541
		 66 -0.043939504772481541 67 -0.043939504772481541 68 -0.043939504772481541 69 -0.043939504772481541
		 70 -0.043939504772481541 71 -0.043939504772481541 72 -0.043939504772481541 73 -0.043939504772481541
		 74 -0.043939504772481541 75 -0.043939504772481541 76 -0.043939504772481541 77 -0.043939504772481541
		 78 -0.043939504772481541 79 -0.043939504772481541 80 -0.043939504772481541 81 -0.043939504772481541
		 82 -0.043939504772481541 83 -0.043939504772481541 84 -0.043939504772481541 85 -0.043939504772481541
		 86 -0.043939504772481541 87 -0.043939504772481541 88 -0.043939504772481541 89 -0.043939504772481541
		 90 -0.043939504772481541 91 -0.043939504772481541 92 -0.043939504772481541 93 -0.043939504772481541
		 94 -0.043939504772481541 95 -0.043939504772481541 96 -0.043939504772481541 97 -0.043939504772481541
		 98 -0.043939504772481541 99 -0.043939504772481541 100 -0.043939504772481541 101 -0.043939504772481541
		 102 -0.043939504772481541 103 -0.043939504772481541 104 -0.043939504772481541 105 -0.043939504772481541
		 106 -0.043939504772481541 107 -0.043939504772481541 108 -0.043939504772481541 109 -0.043939504772481541
		 110 -0.043939504772481541 111 -0.043939504772481541 112 -0.043939504772481541 113 -0.043939504772481541
		 114 -0.043939504772481541 115 -0.043939504772481541 116 -0.043939504772481541 117 -0.043939504772481541
		 118 -0.043939504772481541 119 -0.043939504772481541 120 -0.043939504772481541 121 -0.043939504772481541
		 122 -0.043939504772481541 123 -0.043939504772481541 124 -0.043939504772481541 125 -0.043939504772481541
		 126 -0.043939504772481541 127 -0.043939504772481541 128 -0.043939504772481541 129 -0.043939504772481541
		 130 -0.043939504772481541 131 -0.043939504772481541 132 -0.043939504772481541 133 -0.043939504772481541
		 134 -0.043939504772481541 135 -0.043939504772481541 136 -0.043939504772481541;
createNode animCurveTL -n "locator9_translateZ";
	rename -uid "FAFE7DFD-4835-F22D-3DCD-F089D8015F0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -1.8650846481323207 1 -1.8650846481323207
		 2 -1.8650846481323207 3 -1.8650846481323207 4 -1.8650846481323207 5 -1.8650846481323207
		 6 -1.8650846481323207 7 -1.8650846481323207 8 -1.8650846481323207 9 -1.8650846481323207
		 10 -1.8650846481323207 11 -1.8650846481323207 12 -1.8650846481323207 13 -1.8650846481323207
		 14 -1.8650846481323207 15 -1.8650846481323207 16 -1.8650846481323207 17 -1.8650846481323207
		 18 -1.8650846481323207 19 -1.8650846481323207 20 -1.8650846481323207 21 -1.8650846481323207
		 22 -1.8650846481323207 23 -1.8650846481323207 24 -1.8650846481323207 25 -1.8650846481323207
		 26 -1.8650846481323207 27 -1.8650846481323207 28 -1.8650846481323207 29 -1.8650846481323207
		 30 -1.8650846481323207 31 -1.8650846481323207 32 -1.8650846481323207 33 -1.8650846481323207
		 34 -1.8650846481323207 35 -1.8650846481323207 36 -1.8650846481323207 37 -1.8650846481323207
		 38 -1.8650846481323207 39 -1.8650846481323207 40 -1.8650846481323207 41 -1.8650846481323207
		 42 -1.8650846481323207 43 -1.8650846481323207 44 -1.8650846481323207 45 -1.8650846481323207
		 46 -1.8650846481323207 47 -1.8650846481323207 48 -1.8650846481323207 49 -1.8650846481323207
		 50 -1.8650846481323207 51 -1.8650846481323207 52 -1.8650846481323207 53 -1.8650846481323207
		 54 -1.8650846481323207 55 -1.8650846481323207 56 -1.8650846481323207 57 -1.8650846481323207
		 58 -1.8650846481323207 59 -1.8650846481323207 60 -1.8650846481323207 61 -1.8650846481323207
		 62 -1.8650846481323207 63 -1.8650846481323207 64 -1.8650846481323207 65 -1.8650846481323207
		 66 -1.8650846481323207 67 -1.8650846481323207 68 -1.8650846481323207 69 -1.8650846481323207
		 70 -1.8650846481323207 71 -1.8650846481323207 72 -1.8650846481323207 73 -1.8650846481323207
		 74 -1.8650846481323207 75 -1.8650846481323207 76 -1.8650846481323207 77 -1.8650846481323207
		 78 -1.8650846481323207 79 -1.8650846481323207 80 -1.8650846481323207 81 -1.8650846481323207
		 82 -1.8650846481323207 83 -1.8650846481323207 84 -1.8650846481323207 85 -1.8650846481323207
		 86 -1.8650846481323207 87 -1.8650846481323207 88 -1.8650846481323207 89 -1.8650846481323207
		 90 -1.8650846481323207 91 -1.8650846481323207 92 -1.8650846481323207 93 -1.8650846481323207
		 94 -1.8650846481323207 95 -1.8650846481323207 96 -1.8650846481323207 97 -1.8650846481323207
		 98 -1.8650846481323207 99 -1.8650846481323207 100 -1.8650846481323207 101 -1.8650846481323207
		 102 -1.8650846481323207 103 -1.8650846481323207 104 -1.8650846481323207 105 -1.8650846481323207
		 106 -1.8650846481323207 107 -1.8650846481323207 108 -1.8650846481323207 109 -1.8650846481323207
		 110 -1.8650846481323207 111 -1.8650846481323207 112 -1.8650846481323207 113 -1.8650846481323207
		 114 -1.8650846481323207 115 -1.8650846481323207 116 -1.8650846481323207 117 -1.8650846481323207
		 118 -1.8650846481323207 119 -1.8650846481323207 120 -1.8650846481323207 121 -1.8650846481323207
		 122 -1.8650846481323207 123 -1.8650846481323207 124 -1.8650846481323207 125 -1.8650846481323207
		 126 -1.8650846481323207 127 -1.8650846481323207 128 -1.8650846481323207 129 -1.8650846481323207
		 130 -1.8650846481323207 131 -1.8650846481323207 132 -1.8650846481323207 133 -1.8650846481323207
		 134 -1.8650846481323207 135 -1.8650846481323207 136 -1.8650846481323207;
createNode animCurveTA -n "locator9_rotateX";
	rename -uid "280E6665-42B1-D07C-B2EE-2F8DE2AAF470";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator9_rotateY";
	rename -uid "030E4048-4F16-1688-6AA3-688DEA214447";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator9_rotateZ";
	rename -uid "6A34722D-4840-ED8B-2815-C395A3978559";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 -2.4502358467091647 2 -9.1008760020626092
		 3 -18.901819388899266 4 -30.802964930058081 5 -43.754211548377938 6 -56.705458166697831
		 7 -68.606603707856607 8 -78.407547094693257 9 -85.0581872500467 10 -87.508423096755905
		 11 -85.058187250046743 12 -78.407547094693314 13 -68.606603707856621 14 -56.705458166697831
		 15 -43.754211548377945 16 -30.802964930058099 17 -18.901819388899302 18 -9.10087600206265
		 19 -2.4502358467092025 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0
		 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0
		 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0
		 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0
		 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0
		 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0
		 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0
		 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTU -n "locator9_scaleX";
	rename -uid "AEA07556-4DA7-46A3-2715-019F287E9EF9";
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
createNode animCurveTU -n "locator9_scaleY";
	rename -uid "98694DF9-48A3-ADA2-5321-DB8EB9F0BEBA";
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
createNode animCurveTU -n "locator9_scaleZ";
	rename -uid "AD074473-4F87-022A-265A-0A8D94AEE95E";
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
createNode animCurveTU -n "locator10_visibility";
	rename -uid "1E8CCC59-4046-13D6-5C01-4FB691121A16";
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
	rename -uid "CD7BACE8-4859-563D-51F1-6A9E73F20F1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 12.258554220199571 1 12.255670308920998
		 2 12.218848366360575 3 12.088471433792805 4 11.813623030656842 5 11.382717873391712
		 6 10.83590351201498 7 10.255014041767083 8 9.7383192215606158 9 9.3762214351074817
		 10 9.2416344045305578 11 9.3762214351075102 12 9.7383192215606442 13 10.255014041767097
		 14 10.835903512014994 15 11.382717873391712 16 11.813623030656856 17 12.088471433792819
		 18 12.218848366360575 19 12.255670308920998 20 12.258554220199571 21 12.258554220199571
		 22 12.258554220199571 23 12.258554220199571 24 12.258554220199571 25 12.258554220199571
		 26 12.258554220199571 27 12.258554220199571 28 12.258554220199571 29 12.258554220199571
		 30 12.258554220199571 31 12.258554220199571 32 12.258554220199571 33 12.258554220199571
		 34 12.258554220199571 35 12.258554220199571 36 12.258554220199571 37 12.258554220199571
		 38 12.258554220199571 39 12.258554220199571 40 12.258554220199571 41 12.258554220199571
		 42 12.258554220199571 43 12.258554220199571 44 12.258554220199571 45 12.258554220199571
		 46 12.258554220199571 47 12.258554220199571 48 12.258554220199571 49 12.258554220199571
		 50 12.258554220199571 51 12.258554220199571 52 12.258554220199571 53 12.258554220199571
		 54 12.258554220199571 55 12.258554220199571 56 12.258554220199571 57 12.258554220199571
		 58 12.258554220199571 59 12.258554220199571 60 12.258554220199571 61 12.258554220199571
		 62 12.258554220199571 63 12.258554220199571 64 12.258554220199571 65 12.258554220199571
		 66 12.258554220199571 67 12.258554220199571 68 12.258554220199571 69 12.258554220199571
		 70 12.258554220199571 71 12.258554220199571 72 12.258554220199571 73 12.258554220199571
		 74 12.258554220199571 75 12.258554220199571 76 12.258554220199571 77 12.258554220199571
		 78 12.258554220199571 79 12.258554220199571 80 12.258554220199571 81 12.258554220199571
		 82 12.258554220199571 83 12.258554220199571 84 12.258554220199571 85 12.258554220199571
		 86 12.258554220199571 87 12.258554220199571 88 12.258554220199571 89 12.258554220199571
		 90 12.258554220199571 91 12.258554220199571 92 12.258554220199571 93 12.258554220199571
		 94 12.258554220199571 95 12.258554220199571 96 12.258554220199571 97 12.258554220199571
		 98 12.258554220199571 99 12.258554220199571 100 12.258554220199571 101 12.258554220199571
		 102 12.258554220199571 103 12.258554220199571 104 12.258554220199571 105 12.258554220199571
		 106 12.258554220199571 107 12.258554220199571 108 12.258554220199571 109 12.258554220199571
		 110 12.258554220199571 111 12.258554220199571 112 12.258554220199571 113 12.258554220199571
		 114 12.258554220199571 115 12.258554220199571 116 12.258554220199571 117 12.258554220199571
		 118 12.258554220199571 119 12.258554220199571 120 12.258554220199571 121 12.258554220199571
		 122 12.258554220199571 123 12.258554220199571 124 12.258554220199571 125 12.258554220199571
		 126 12.258554220199571 127 12.258554220199571 128 12.258554220199571 129 12.258554220199571
		 130 12.258554220199571 131 12.258554220199571 132 12.258554220199571 133 12.258554220199571
		 134 12.258554220199571 135 12.258554220199571 136 12.258554220199571;
createNode animCurveTL -n "locator10_translateY";
	rename -uid "E2F3D7C6-413B-8A24-0A74-44A961ED3A9A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -0.043946058240237562 1 -0.17878589780679022
		 2 -0.54282836537683465 3 -1.0656846592938791 4 -1.6590822170974491 5 -2.2251623775820804
		 6 -2.6802668236647378 7 -2.9806494624252764 8 -3.133630871119891 9 -3.1862423403461548
		 10 -3.1949847930387136 11 -3.1862423403461548 12 -3.1336308711199194 13 -2.9806494624252764
		 14 -2.6802668236647378 15 -2.2251623775821088 16 -1.6590822170974491 17 -1.0656846592938507
		 18 -0.54282836537686308 19 -0.1787858978067618 20 -0.043946058240237562 21 -0.043946058240237562
		 22 -0.043946058240237562 23 -0.043946058240237562 24 -0.043946058240237562 25 -0.043946058240237562
		 26 -0.043946058240237562 27 -0.043946058240237562 28 -0.043946058240237562 29 -0.043946058240237562
		 30 -0.043946058240237562 31 -0.043946058240237562 32 -0.043946058240237562 33 -0.043946058240237562
		 34 -0.043946058240237562 35 -0.043946058240237562 36 -0.043946058240237562 37 -0.043946058240237562
		 38 -0.043946058240237562 39 -0.043946058240237562 40 -0.043946058240237562 41 -0.043946058240237562
		 42 -0.043946058240237562 43 -0.043946058240237562 44 -0.043946058240237562 45 -0.043946058240237562
		 46 -0.043946058240237562 47 -0.043946058240237562 48 -0.043946058240237562 49 -0.043946058240237562
		 50 -0.043946058240237562 51 -0.043946058240237562 52 -0.043946058240237562 53 -0.043946058240237562
		 54 -0.043946058240237562 55 -0.043946058240237562 56 -0.043946058240237562 57 -0.043946058240237562
		 58 -0.043946058240237562 59 -0.043946058240237562 60 -0.043946058240237562 61 -0.043946058240237562
		 62 -0.043946058240237562 63 -0.043946058240237562 64 -0.043946058240237562 65 -0.043946058240237562
		 66 -0.043946058240237562 67 -0.043946058240237562 68 -0.043946058240237562 69 -0.043946058240237562
		 70 -0.043946058240237562 71 -0.043946058240237562 72 -0.043946058240237562 73 -0.043946058240237562
		 74 -0.043946058240237562 75 -0.043946058240237562 76 -0.043946058240237562 77 -0.043946058240237562
		 78 -0.043946058240237562 79 -0.043946058240237562 80 -0.043946058240237562 81 -0.043946058240237562
		 82 -0.043946058240237562 83 -0.043946058240237562 84 -0.043946058240237562 85 -0.043946058240237562
		 86 -0.043946058240237562 87 -0.043946058240237562 88 -0.043946058240237562 89 -0.043946058240237562
		 90 -0.043946058240237562 91 -0.043946058240237562 92 -0.043946058240237562 93 -0.043946058240237562
		 94 -0.043946058240237562 95 -0.043946058240237562 96 -0.043946058240237562 97 -0.043946058240237562
		 98 -0.043946058240237562 99 -0.043946058240237562 100 -0.043946058240237562 101 -0.043946058240237562
		 102 -0.043946058240237562 103 -0.043946058240237562 104 -0.043946058240237562 105 -0.043946058240237562
		 106 -0.043946058240237562 107 -0.043946058240237562 108 -0.043946058240237562 109 -0.043946058240237562
		 110 -0.043946058240237562 111 -0.043946058240237562 112 -0.043946058240237562 113 -0.043946058240237562
		 114 -0.043946058240237562 115 -0.043946058240237562 116 -0.043946058240237562 117 -0.043946058240237562
		 118 -0.043946058240237562 119 -0.043946058240237562 120 -0.043946058240237562 121 -0.043946058240237562
		 122 -0.043946058240237562 123 -0.043946058240237562 124 -0.043946058240237562 125 -0.043946058240237562
		 126 -0.043946058240237562 127 -0.043946058240237562 128 -0.043946058240237562 129 -0.043946058240237562
		 130 -0.043946058240237562 131 -0.043946058240237562 132 -0.043946058240237562 133 -0.043946058240237562
		 134 -0.043946058240237562 135 -0.043946058240237562 136 -0.043946058240237562;
createNode animCurveTL -n "locator10_translateZ";
	rename -uid "FF28EA7D-4B22-462C-2DA5-83AFA64AB6BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -1.8650742223880918 1 -1.8650742223880918
		 2 -1.8650742223880918 3 -1.8650742223880918 4 -1.8650742223880918 5 -1.8650742223880918
		 6 -1.8650742223880918 7 -1.8650742223880918 8 -1.8650742223880918 9 -1.8650742223880918
		 10 -1.8650742223880918 11 -1.8650742223880918 12 -1.8650742223880918 13 -1.8650742223880918
		 14 -1.8650742223880883 15 -1.8650742223880883 16 -1.8650742223880918 17 -1.8650742223880883
		 18 -1.8650742223880918 19 -1.8650742223880918 20 -1.8650742223880918 21 -1.8650742223880918
		 22 -1.8650742223880918 23 -1.8650742223880918 24 -1.8650742223880918 25 -1.8650742223880918
		 26 -1.8650742223880918 27 -1.8650742223880918 28 -1.8650742223880918 29 -1.8650742223880918
		 30 -1.8650742223880918 31 -1.8650742223880918 32 -1.8650742223880918 33 -1.8650742223880918
		 34 -1.8650742223880918 35 -1.8650742223880918 36 -1.8650742223880918 37 -1.8650742223880918
		 38 -1.8650742223880918 39 -1.8650742223880918 40 -1.8650742223880918 41 -1.8650742223880918
		 42 -1.8650742223880918 43 -1.8650742223880918 44 -1.8650742223880918 45 -1.8650742223880918
		 46 -1.8650742223880918 47 -1.8650742223880918 48 -1.8650742223880918 49 -1.8650742223880918
		 50 -1.8650742223880918 51 -1.8650742223880918 52 -1.8650742223880918 53 -1.8650742223880918
		 54 -1.8650742223880918 55 -1.8650742223880918 56 -1.8650742223880918 57 -1.8650742223880918
		 58 -1.8650742223880918 59 -1.8650742223880918 60 -1.8650742223880918 61 -1.8650742223880918
		 62 -1.8650742223880918 63 -1.8650742223880918 64 -1.8650742223880918 65 -1.8650742223880918
		 66 -1.8650742223880918 67 -1.8650742223880918 68 -1.8650742223880918 69 -1.8650742223880918
		 70 -1.8650742223880918 71 -1.8650742223880918 72 -1.8650742223880918 73 -1.8650742223880918
		 74 -1.8650742223880918 75 -1.8650742223880918 76 -1.8650742223880918 77 -1.8650742223880918
		 78 -1.8650742223880918 79 -1.8650742223880918 80 -1.8650742223880918 81 -1.8650742223880918
		 82 -1.8650742223880918 83 -1.8650742223880918 84 -1.8650742223880918 85 -1.8650742223880918
		 86 -1.8650742223880918 87 -1.8650742223880918 88 -1.8650742223880918 89 -1.8650742223880918
		 90 -1.8650742223880918 91 -1.8650742223880918 92 -1.8650742223880918 93 -1.8650742223880918
		 94 -1.8650742223880918 95 -1.8650742223880918 96 -1.8650742223880918 97 -1.8650742223880918
		 98 -1.8650742223880918 99 -1.8650742223880918 100 -1.8650742223880918 101 -1.8650742223880918
		 102 -1.8650742223880918 103 -1.8650742223880918 104 -1.8650742223880918 105 -1.8650742223880918
		 106 -1.8650742223880918 107 -1.8650742223880918 108 -1.8650742223880918 109 -1.8650742223880918
		 110 -1.8650742223880918 111 -1.8650742223880918 112 -1.8650742223880918 113 -1.8650742223880918
		 114 -1.8650742223880918 115 -1.8650742223880918 116 -1.8650742223880918 117 -1.8650742223880918
		 118 -1.8650742223880918 119 -1.8650742223880918 120 -1.8650742223880918 121 -1.8650742223880918
		 122 -1.8650742223880918 123 -1.8650742223880918 124 -1.8650742223880918 125 -1.8650742223880918
		 126 -1.8650742223880918 127 -1.8650742223880918 128 -1.8650742223880918 129 -1.8650742223880918
		 130 -1.8650742223880918 131 -1.8650742223880918 132 -1.8650742223880918 133 -1.8650742223880918
		 134 -1.8650742223880918 135 -1.8650742223880918 136 -1.8650742223880918;
createNode animCurveTA -n "locator10_rotateX";
	rename -uid "91921062-4894-08E5-5C4B-DDB99F98AF2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator10_rotateY";
	rename -uid "8E8F10E7-43B6-7739-7673-CBB0EFC91B46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator10_rotateZ";
	rename -uid "79944FE7-4F06-A28B-4CEF-CC9C339F2BF8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 -4.9004716934183286 2 -18.201752004125222
		 3 -37.803638777798533 4 -61.605929860116163 5 -87.508423096755877 6 -113.41091633339566
		 7 -137.21320741571321 8 -156.81509418938651 9 -170.1163745000934 10 -175.01684619351181
		 11 -170.11637450009349 12 -156.81509418938663 13 -137.21320741571324 14 -113.41091633339566
		 15 -87.508423096755891 16 -61.605929860116191 17 -37.803638777798604 18 -18.2017520041253
		 19 -4.9004716934184041 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0
		 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0
		 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0
		 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0
		 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0
		 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0
		 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0
		 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTU -n "locator10_scaleX";
	rename -uid "787E3B05-4C0D-B0B5-A1E8-77981B5BDC27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 1 3 1 4 1 5 1
		 6 1 7 1 8 0.99999999999999989 9 1 10 1 11 1.0000000000000002 12 1 13 1 14 0.99999999999999989
		 15 0.99999999999999989 16 1 17 0.99999999999999989 18 1 19 1 20 1 21 1 22 1 23 1
		 24 1 25 1 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1
		 41 1 42 1 43 1 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1
		 58 1 59 1 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1
		 75 1 76 1 77 1 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1
		 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1
		 107 1 108 1 109 1 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1
		 121 1 122 1 123 1 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1
		 135 1 136 1;
createNode animCurveTU -n "locator10_scaleY";
	rename -uid "A5392B8C-4F81-EC7B-8BE6-74AC457F6B6C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 1 3 1 4 1 5 1
		 6 1 7 1 8 0.99999999999999989 9 1 10 1 11 1.0000000000000002 12 1 13 1 14 0.99999999999999989
		 15 0.99999999999999989 16 1 17 0.99999999999999989 18 1 19 1 20 1 21 1 22 1 23 1
		 24 1 25 1 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1
		 41 1 42 1 43 1 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1
		 58 1 59 1 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1
		 75 1 76 1 77 1 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1
		 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1
		 107 1 108 1 109 1 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1
		 121 1 122 1 123 1 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1
		 135 1 136 1;
createNode animCurveTU -n "locator10_scaleZ";
	rename -uid "F8EBE33C-421B-CABB-7EAD-CFA6B8FFBB78";
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
createNode animCurveTU -n "locator11_visibility";
	rename -uid "3F57B449-48CF-6151-CF47-DC9611B2A59C";
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
	rename -uid "1398DDEE-41C1-3116-F6DF-B0A012D473A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 15.196226596832261 1 15.182600413939625
		 2 15.009512763071115 3 14.409545769428235 4 13.210543689035617 5 11.510380467275297
		 6 9.668657759141368 7 8.0990651672186686 8 7.0378780460695509 9 6.4821409512106243
		 10 6.3150616562197541 11 6.4821409512106243 12 7.0378780460695651 13 8.0990651672186544
		 14 9.6686577591413965 15 11.510380467275311 16 13.210543689035603 17 14.409545769428235
		 18 15.0095127630711 19 15.182600413939625 20 15.196226596832261 21 15.196226596832261
		 22 15.196226596832261 23 15.196226596832261 24 15.196226596832261 25 15.196226596832261
		 26 15.196226596832261 27 15.196226596832261 28 15.196226596832261 29 15.196226596832261
		 30 15.196226596832261 31 15.196226596832261 32 15.196226596832261 33 15.196226596832261
		 34 15.196226596832261 35 15.196226596832261 36 15.196226596832261 37 15.196226596832261
		 38 15.196226596832261 39 15.196226596832261 40 15.196226596832261 41 15.196226596832261
		 42 15.196226596832261 43 15.196226596832261 44 15.196226596832261 45 15.196226596832261
		 46 15.196226596832261 47 15.196226596832261 48 15.196226596832261 49 15.196226596832261
		 50 15.196226596832261 51 15.196226596832261 52 15.196226596832261 53 15.196226596832261
		 54 15.196226596832261 55 15.196226596832261 56 15.196226596832261 57 15.196226596832261
		 58 15.196226596832261 59 15.196226596832261 60 15.196226596832261 61 15.196226596832261
		 62 15.196226596832261 63 15.196226596832261 64 15.196226596832261 65 15.196226596832261
		 66 15.196226596832261 67 15.196226596832261 68 15.196226596832261 69 15.196226596832261
		 70 15.196226596832261 71 15.196226596832261 72 15.196226596832261 73 15.196226596832261
		 74 15.196226596832261 75 15.196226596832261 76 15.196226596832261 77 15.196226596832261
		 78 15.196226596832261 79 15.196226596832261 80 15.196226596832261 81 15.196226596832261
		 82 15.196226596832261 83 15.196226596832261 84 15.196226596832261 85 15.196226596832261
		 86 15.196226596832261 87 15.196226596832261 88 15.196226596832261 89 15.196226596832261
		 90 15.196226596832261 91 15.196226596832261 92 15.196226596832261 93 15.196226596832261
		 94 15.196226596832261 95 15.196226596832261 96 15.196226596832261 97 15.196226596832261
		 98 15.196226596832261 99 15.196226596832261 100 15.196226596832261 101 15.196226596832261
		 102 15.196226596832261 103 15.196226596832261 104 15.196226596832261 105 15.196226596832261
		 106 15.196226596832261 107 15.196226596832261 108 15.196226596832261 109 15.196226596832261
		 110 15.196226596832261 111 15.196226596832261 112 15.196226596832261 113 15.196226596832261
		 114 15.196226596832261 115 15.196226596832261 116 15.196226596832261 117 15.196226596832261
		 118 15.196226596832261 119 15.196226596832261 120 15.196226596832261 121 15.196226596832261
		 122 15.196226596832261 123 15.196226596832261 124 15.196226596832261 125 15.196226596832261
		 126 15.196226596832261 127 15.196226596832261 128 15.196226596832261 129 15.196226596832261
		 130 15.196226596832261 131 15.196226596832261 132 15.196226596832261 133 15.196226596832261
		 134 15.196226596832261 135 15.196226596832261 136 15.196226596832261;
createNode animCurveTL -n "locator11_translateY";
	rename -uid "27D5A60B-42B0-3FD0-37F1-AB8A2ED3E823";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -0.043991516859080093 1 -0.429782222148134
		 2 -1.4604945462015735 3 -2.8663881115457457 4 -4.2433677409302675 5 -5.1600595234152706
		 6 -5.3760888405818719 7 -4.9760951381654195 8 -4.2901499812989243 9 -3.6904418516747342
		 10 -3.4501140609428944 11 -3.6904418516747626 12 -4.2901499812989243 13 -4.9760951381654195
		 14 -5.3760888405818434 15 -5.1600595234152991 16 -4.2433677409302391 17 -2.8663881115457457
		 18 -1.4604945462015735 19 -0.429782222148134 20 -0.043991516859080093 21 -0.043991516859080093
		 22 -0.043991516859080093 23 -0.043991516859080093 24 -0.043991516859080093 25 -0.043991516859080093
		 26 -0.043991516859080093 27 -0.043991516859080093 28 -0.043991516859080093 29 -0.043991516859080093
		 30 -0.043991516859080093 31 -0.043991516859080093 32 -0.043991516859080093 33 -0.043991516859080093
		 34 -0.043991516859080093 35 -0.043991516859080093 36 -0.043991516859080093 37 -0.043991516859080093
		 38 -0.043991516859080093 39 -0.043991516859080093 40 -0.043991516859080093 41 -0.043991516859080093
		 42 -0.043991516859080093 43 -0.043991516859080093 44 -0.043991516859080093 45 -0.043991516859080093
		 46 -0.043991516859080093 47 -0.043991516859080093 48 -0.043991516859080093 49 -0.043991516859080093
		 50 -0.043991516859080093 51 -0.043991516859080093 52 -0.043991516859080093 53 -0.043991516859080093
		 54 -0.043991516859080093 55 -0.043991516859080093 56 -0.043991516859080093 57 -0.043991516859080093
		 58 -0.043991516859080093 59 -0.043991516859080093 60 -0.043991516859080093 61 -0.043991516859080093
		 62 -0.043991516859080093 63 -0.043991516859080093 64 -0.043991516859080093 65 -0.043991516859080093
		 66 -0.043991516859080093 67 -0.043991516859080093 68 -0.043991516859080093 69 -0.043991516859080093
		 70 -0.043991516859080093 71 -0.043991516859080093 72 -0.043991516859080093 73 -0.043991516859080093
		 74 -0.043991516859080093 75 -0.043991516859080093 76 -0.043991516859080093 77 -0.043991516859080093
		 78 -0.043991516859080093 79 -0.043991516859080093 80 -0.043991516859080093 81 -0.043991516859080093
		 82 -0.043991516859080093 83 -0.043991516859080093 84 -0.043991516859080093 85 -0.043991516859080093
		 86 -0.043991516859080093 87 -0.043991516859080093 88 -0.043991516859080093 89 -0.043991516859080093
		 90 -0.043991516859080093 91 -0.043991516859080093 92 -0.043991516859080093 93 -0.043991516859080093
		 94 -0.043991516859080093 95 -0.043991516859080093 96 -0.043991516859080093 97 -0.043991516859080093
		 98 -0.043991516859080093 99 -0.043991516859080093 100 -0.043991516859080093 101 -0.043991516859080093
		 102 -0.043991516859080093 103 -0.043991516859080093 104 -0.043991516859080093 105 -0.043991516859080093
		 106 -0.043991516859080093 107 -0.043991516859080093 108 -0.043991516859080093 109 -0.043991516859080093
		 110 -0.043991516859080093 111 -0.043991516859080093 112 -0.043991516859080093 113 -0.043991516859080093
		 114 -0.043991516859080093 115 -0.043991516859080093 116 -0.043991516859080093 117 -0.043991516859080093
		 118 -0.043991516859080093 119 -0.043991516859080093 120 -0.043991516859080093 121 -0.043991516859080093
		 122 -0.043991516859080093 123 -0.043991516859080093 124 -0.043991516859080093 125 -0.043991516859080093
		 126 -0.043991516859080093 127 -0.043991516859080093 128 -0.043991516859080093 129 -0.043991516859080093
		 130 -0.043991516859080093 131 -0.043991516859080093 132 -0.043991516859080093 133 -0.043991516859080093
		 134 -0.043991516859080093 135 -0.043991516859080093 136 -0.043991516859080093;
createNode animCurveTL -n "locator11_translateZ";
	rename -uid "AC07EF72-412D-D06A-2826-F2B040775DCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -1.8650810871454198 1 -1.8650810871454198
		 2 -1.8650810871454198 3 -1.8650810871454198 4 -1.8650810871454162 5 -1.8650810871454198
		 6 -1.8650810871454198 7 -1.8650810871454198 8 -1.8650810871454198 9 -1.8650810871454198
		 10 -1.8650810871454198 11 -1.8650810871454198 12 -1.8650810871454198 13 -1.8650810871454162
		 14 -1.8650810871454162 15 -1.8650810871454198 16 -1.8650810871454198 17 -1.8650810871454198
		 18 -1.8650810871454198 19 -1.8650810871454198 20 -1.8650810871454198 21 -1.8650810871454198
		 22 -1.8650810871454198 23 -1.8650810871454198 24 -1.8650810871454198 25 -1.8650810871454198
		 26 -1.8650810871454198 27 -1.8650810871454198 28 -1.8650810871454198 29 -1.8650810871454198
		 30 -1.8650810871454198 31 -1.8650810871454198 32 -1.8650810871454198 33 -1.8650810871454198
		 34 -1.8650810871454198 35 -1.8650810871454198 36 -1.8650810871454198 37 -1.8650810871454198
		 38 -1.8650810871454198 39 -1.8650810871454198 40 -1.8650810871454198 41 -1.8650810871454198
		 42 -1.8650810871454198 43 -1.8650810871454198 44 -1.8650810871454198 45 -1.8650810871454198
		 46 -1.8650810871454198 47 -1.8650810871454198 48 -1.8650810871454198 49 -1.8650810871454198
		 50 -1.8650810871454198 51 -1.8650810871454198 52 -1.8650810871454198 53 -1.8650810871454198
		 54 -1.8650810871454198 55 -1.8650810871454198 56 -1.8650810871454198 57 -1.8650810871454198
		 58 -1.8650810871454198 59 -1.8650810871454198 60 -1.8650810871454198 61 -1.8650810871454198
		 62 -1.8650810871454198 63 -1.8650810871454198 64 -1.8650810871454198 65 -1.8650810871454198
		 66 -1.8650810871454198 67 -1.8650810871454198 68 -1.8650810871454198 69 -1.8650810871454198
		 70 -1.8650810871454198 71 -1.8650810871454198 72 -1.8650810871454198 73 -1.8650810871454198
		 74 -1.8650810871454198 75 -1.8650810871454198 76 -1.8650810871454198 77 -1.8650810871454198
		 78 -1.8650810871454198 79 -1.8650810871454198 80 -1.8650810871454198 81 -1.8650810871454198
		 82 -1.8650810871454198 83 -1.8650810871454198 84 -1.8650810871454198 85 -1.8650810871454198
		 86 -1.8650810871454198 87 -1.8650810871454198 88 -1.8650810871454198 89 -1.8650810871454198
		 90 -1.8650810871454198 91 -1.8650810871454198 92 -1.8650810871454198 93 -1.8650810871454198
		 94 -1.8650810871454198 95 -1.8650810871454198 96 -1.8650810871454198 97 -1.8650810871454198
		 98 -1.8650810871454198 99 -1.8650810871454198 100 -1.8650810871454198 101 -1.8650810871454198
		 102 -1.8650810871454198 103 -1.8650810871454198 104 -1.8650810871454198 105 -1.8650810871454198
		 106 -1.8650810871454198 107 -1.8650810871454198 108 -1.8650810871454198 109 -1.8650810871454198
		 110 -1.8650810871454198 111 -1.8650810871454198 112 -1.8650810871454198 113 -1.8650810871454198
		 114 -1.8650810871454198 115 -1.8650810871454198 116 -1.8650810871454198 117 -1.8650810871454198
		 118 -1.8650810871454198 119 -1.8650810871454198 120 -1.8650810871454198 121 -1.8650810871454198
		 122 -1.8650810871454198 123 -1.8650810871454198 124 -1.8650810871454198 125 -1.8650810871454198
		 126 -1.8650810871454198 127 -1.8650810871454198 128 -1.8650810871454198 129 -1.8650810871454198
		 130 -1.8650810871454198 131 -1.8650810871454198 132 -1.8650810871454198 133 -1.8650810871454198
		 134 -1.8650810871454198 135 -1.8650810871454198 136 -1.8650810871454198;
createNode animCurveTA -n "locator11_rotateX";
	rename -uid "8F70042D-426D-FDBD-891C-1EB1F83A5BAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator11_rotateY";
	rename -uid "8DF0EA5B-42FB-10E7-4400-AC86BAE0B2C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator11_rotateZ";
	rename -uid "18C49791-40C7-F83F-6FD7-9DAFC4709DC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 -7.3507075401274964 2 -27.302628006187827
		 3 -56.705458166697795 4 -92.408894790174216 5 -131.26263464513383 6 -170.11637450009351
		 7 -205.81981112356982 8 -235.22264128407977 9 -255.17456175014013 10 -262.52526929026772
		 11 -255.17456175014024 12 -235.22264128407988 13 -205.81981112356985 14 -170.11637450009349
		 15 -131.26263464513386 16 -92.408894790174301 17 -56.705458166697888 18 -27.302628006187959
		 19 -7.3507075401276074 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0
		 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0
		 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0
		 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0
		 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0
		 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0
		 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0
		 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTU -n "locator11_scaleX";
	rename -uid "8F78B5B5-447E-13B3-F48A-2991F0B75749";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 1 3 1 4 1 5 1
		 6 1 7 1 8 0.99999999999999978 9 1.0000000000000002 10 1 11 1.0000000000000002 12 1
		 13 1.0000000000000002 14 0.99999999999999978 15 0.99999999999999989 16 1 17 0.99999999999999989
		 18 1 19 0.99999999999999989 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1 29 1 30 1
		 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1 44 1 45 1 46 1 47 1
		 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1 61 1 62 1 63 1 64 1
		 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1 78 1 79 1 80 1 81 1
		 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1
		 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1 110 1 111 1 112 1
		 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1 124 1 125 1 126 1
		 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTU -n "locator11_scaleY";
	rename -uid "0BFA0216-4C83-5A15-F378-1E974C315B23";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 1 3 1 4 1 5 1
		 6 1 7 1 8 0.99999999999999978 9 1.0000000000000002 10 1 11 1.0000000000000002 12 1
		 13 1.0000000000000002 14 0.99999999999999978 15 0.99999999999999989 16 1 17 0.99999999999999989
		 18 1 19 0.99999999999999989 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1 29 1 30 1
		 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1 44 1 45 1 46 1 47 1
		 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1 61 1 62 1 63 1 64 1
		 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1 78 1 79 1 80 1 81 1
		 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1
		 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1 110 1 111 1 112 1
		 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1 124 1 125 1 126 1
		 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTU -n "locator11_scaleZ";
	rename -uid "EDB06F84-4DCF-3CA1-8DA8-1FA08A126E80";
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
createNode animCurveTU -n "locator12_visibility";
	rename -uid "066D90B3-46C2-A4AC-52F2-0A902FCDFF09";
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
	rename -uid "3546D05B-47C3-56FE-6C67-A496F737B18E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 17.843679189681993 1 17.808288810983726
		 2 17.362006217859445 3 15.862805222229227 4 13.09921948296936 5 9.7643173556054421
		 6 7.0604889933384243 7 5.7159341498841343 8 5.52784102783653 9 5.8047722073463888
		 10 5.9707067880158604 11 5.8047722073463746 12 5.5278410278365584 13 5.7159341498841343
		 14 7.0604889933384243 15 9.7643173556054279 16 13.099219482969346 17 15.862805222229269
		 18 17.362006217859445 19 17.808288810983711 20 17.843679189681993 21 17.843679189681993
		 22 17.843679189681993 23 17.843679189681993 24 17.843679189681993 25 17.843679189681993
		 26 17.843679189681993 27 17.843679189681993 28 17.843679189681993 29 17.843679189681993
		 30 17.843679189681993 31 17.843679189681993 32 17.843679189681993 33 17.843679189681993
		 34 17.843679189681993 35 17.843679189681993 36 17.843679189681993 37 17.843679189681993
		 38 17.843679189681993 39 17.843679189681993 40 17.843679189681993 41 17.843679189681993
		 42 17.843679189681993 43 17.843679189681993 44 17.843679189681993 45 17.843679189681993
		 46 17.843679189681993 47 17.843679189681993 48 17.843679189681993 49 17.843679189681993
		 50 17.843679189681993 51 17.843679189681993 52 17.843679189681993 53 17.843679189681993
		 54 17.843679189681993 55 17.843679189681993 56 17.843679189681993 57 17.843679189681993
		 58 17.843679189681993 59 17.843679189681993 60 17.843679189681993 61 17.843679189681993
		 62 17.843679189681993 63 17.843679189681993 64 17.843679189681993 65 17.843679189681993
		 66 17.843679189681993 67 17.843679189681993 68 17.843679189681993 69 17.843679189681993
		 70 17.843679189681993 71 17.843679189681993 72 17.843679189681993 73 17.843679189681993
		 74 17.843679189681993 75 17.843679189681993 76 17.843679189681993 77 17.843679189681993
		 78 17.843679189681993 79 17.843679189681993 80 17.843679189681993 81 17.843679189681993
		 82 17.843679189681993 83 17.843679189681993 84 17.843679189681993 85 17.843679189681993
		 86 17.843679189681993 87 17.843679189681993 88 17.843679189681993 89 17.843679189681993
		 90 17.843679189681993 91 17.843679189681993 92 17.843679189681993 93 17.843679189681993
		 94 17.843679189681993 95 17.843679189681993 96 17.843679189681993 97 17.843679189681993
		 98 17.843679189681993 99 17.843679189681993 100 17.843679189681993 101 17.843679189681993
		 102 17.843679189681993 103 17.843679189681993 104 17.843679189681993 105 17.843679189681993
		 106 17.843679189681993 107 17.843679189681993 108 17.843679189681993 109 17.843679189681993
		 110 17.843679189681993 111 17.843679189681993 112 17.843679189681993 113 17.843679189681993
		 114 17.843679189681993 115 17.843679189681993 116 17.843679189681993 117 17.843679189681993
		 118 17.843679189681993 119 17.843679189681993 120 17.843679189681993 121 17.843679189681993
		 122 17.843679189681993 123 17.843679189681993 124 17.843679189681993 125 17.843679189681993
		 126 17.843679189681993 127 17.843679189681993 128 17.843679189681993 129 17.843679189681993
		 130 17.843679189681993 131 17.843679189681993 132 17.843679189681993 133 17.843679189681993
		 134 17.843679189681993 135 17.843679189681993 136 17.843679189681993;
createNode animCurveTL -n "locator12_translateY";
	rename -uid "FE0298DD-4187-BB22-5312-68A986003544";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -0.04404132127280036 1 -0.76855305249705452
		 2 -2.6748996594340326 3 -5.0793142731497767 4 -6.8884787319872203 5 -7.150101946061767
		 6 -5.8304685528895277 7 -3.8229725132530064 8 -2.1155710709273876 9 -1.1311105291019032
		 10 -0.82515216434106264 11 -1.1311105291019032 12 -2.1155710709273876 13 -3.8229725132530064
		 14 -5.8304685528895277 15 -7.1501019460617954 16 -6.8884787319872487 17 -5.0793142731497483
		 18 -2.674899659434061 19 -0.76855305249708294 20 -0.04404132127280036 21 -0.04404132127280036
		 22 -0.04404132127280036 23 -0.04404132127280036 24 -0.04404132127280036 25 -0.04404132127280036
		 26 -0.04404132127280036 27 -0.04404132127280036 28 -0.04404132127280036 29 -0.04404132127280036
		 30 -0.04404132127280036 31 -0.04404132127280036 32 -0.04404132127280036 33 -0.04404132127280036
		 34 -0.04404132127280036 35 -0.04404132127280036 36 -0.04404132127280036 37 -0.04404132127280036
		 38 -0.04404132127280036 39 -0.04404132127280036 40 -0.04404132127280036 41 -0.04404132127280036
		 42 -0.04404132127280036 43 -0.04404132127280036 44 -0.04404132127280036 45 -0.04404132127280036
		 46 -0.04404132127280036 47 -0.04404132127280036 48 -0.04404132127280036 49 -0.04404132127280036
		 50 -0.04404132127280036 51 -0.04404132127280036 52 -0.04404132127280036 53 -0.04404132127280036
		 54 -0.04404132127280036 55 -0.04404132127280036 56 -0.04404132127280036 57 -0.04404132127280036
		 58 -0.04404132127280036 59 -0.04404132127280036 60 -0.04404132127280036 61 -0.04404132127280036
		 62 -0.04404132127280036 63 -0.04404132127280036 64 -0.04404132127280036 65 -0.04404132127280036
		 66 -0.04404132127280036 67 -0.04404132127280036 68 -0.04404132127280036 69 -0.04404132127280036
		 70 -0.04404132127280036 71 -0.04404132127280036 72 -0.04404132127280036 73 -0.04404132127280036
		 74 -0.04404132127280036 75 -0.04404132127280036 76 -0.04404132127280036 77 -0.04404132127280036
		 78 -0.04404132127280036 79 -0.04404132127280036 80 -0.04404132127280036 81 -0.04404132127280036
		 82 -0.04404132127280036 83 -0.04404132127280036 84 -0.04404132127280036 85 -0.04404132127280036
		 86 -0.04404132127280036 87 -0.04404132127280036 88 -0.04404132127280036 89 -0.04404132127280036
		 90 -0.04404132127280036 91 -0.04404132127280036 92 -0.04404132127280036 93 -0.04404132127280036
		 94 -0.04404132127280036 95 -0.04404132127280036 96 -0.04404132127280036 97 -0.04404132127280036
		 98 -0.04404132127280036 99 -0.04404132127280036 100 -0.04404132127280036 101 -0.04404132127280036
		 102 -0.04404132127280036 103 -0.04404132127280036 104 -0.04404132127280036 105 -0.04404132127280036
		 106 -0.04404132127280036 107 -0.04404132127280036 108 -0.04404132127280036 109 -0.04404132127280036
		 110 -0.04404132127280036 111 -0.04404132127280036 112 -0.04404132127280036 113 -0.04404132127280036
		 114 -0.04404132127280036 115 -0.04404132127280036 116 -0.04404132127280036 117 -0.04404132127280036
		 118 -0.04404132127280036 119 -0.04404132127280036 120 -0.04404132127280036 121 -0.04404132127280036
		 122 -0.04404132127280036 123 -0.04404132127280036 124 -0.04404132127280036 125 -0.04404132127280036
		 126 -0.04404132127280036 127 -0.04404132127280036 128 -0.04404132127280036 129 -0.04404132127280036
		 130 -0.04404132127280036 131 -0.04404132127280036 132 -0.04404132127280036 133 -0.04404132127280036
		 134 -0.04404132127280036 135 -0.04404132127280036 136 -0.04404132127280036;
createNode animCurveTL -n "locator12_translateZ";
	rename -uid "CFE19A04-4A13-53CE-1E72-2BB0DCE9739A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -1.8650810164402642 1 -1.8650810164402642
		 2 -1.8650810164402642 3 -1.8650810164402642 4 -1.8650810164402642 5 -1.8650810164402607
		 6 -1.8650810164402642 7 -1.8650810164402642 8 -1.8650810164402678 9 -1.8650810164402642
		 10 -1.8650810164402642 11 -1.8650810164402642 12 -1.8650810164402678 13 -1.8650810164402642
		 14 -1.8650810164402642 15 -1.8650810164402607 16 -1.8650810164402642 17 -1.8650810164402642
		 18 -1.8650810164402642 19 -1.8650810164402642 20 -1.8650810164402642 21 -1.8650810164402642
		 22 -1.8650810164402642 23 -1.8650810164402642 24 -1.8650810164402642 25 -1.8650810164402642
		 26 -1.8650810164402642 27 -1.8650810164402642 28 -1.8650810164402642 29 -1.8650810164402642
		 30 -1.8650810164402642 31 -1.8650810164402642 32 -1.8650810164402642 33 -1.8650810164402642
		 34 -1.8650810164402642 35 -1.8650810164402642 36 -1.8650810164402642 37 -1.8650810164402642
		 38 -1.8650810164402642 39 -1.8650810164402642 40 -1.8650810164402642 41 -1.8650810164402642
		 42 -1.8650810164402642 43 -1.8650810164402642 44 -1.8650810164402642 45 -1.8650810164402642
		 46 -1.8650810164402642 47 -1.8650810164402642 48 -1.8650810164402642 49 -1.8650810164402642
		 50 -1.8650810164402642 51 -1.8650810164402642 52 -1.8650810164402642 53 -1.8650810164402642
		 54 -1.8650810164402642 55 -1.8650810164402642 56 -1.8650810164402642 57 -1.8650810164402642
		 58 -1.8650810164402642 59 -1.8650810164402642 60 -1.8650810164402642 61 -1.8650810164402642
		 62 -1.8650810164402642 63 -1.8650810164402642 64 -1.8650810164402642 65 -1.8650810164402642
		 66 -1.8650810164402642 67 -1.8650810164402642 68 -1.8650810164402642 69 -1.8650810164402642
		 70 -1.8650810164402642 71 -1.8650810164402642 72 -1.8650810164402642 73 -1.8650810164402642
		 74 -1.8650810164402642 75 -1.8650810164402642 76 -1.8650810164402642 77 -1.8650810164402642
		 78 -1.8650810164402642 79 -1.8650810164402642 80 -1.8650810164402642 81 -1.8650810164402642
		 82 -1.8650810164402642 83 -1.8650810164402642 84 -1.8650810164402642 85 -1.8650810164402642
		 86 -1.8650810164402642 87 -1.8650810164402642 88 -1.8650810164402642 89 -1.8650810164402642
		 90 -1.8650810164402642 91 -1.8650810164402642 92 -1.8650810164402642 93 -1.8650810164402642
		 94 -1.8650810164402642 95 -1.8650810164402642 96 -1.8650810164402642 97 -1.8650810164402642
		 98 -1.8650810164402642 99 -1.8650810164402642 100 -1.8650810164402642 101 -1.8650810164402642
		 102 -1.8650810164402642 103 -1.8650810164402642 104 -1.8650810164402642 105 -1.8650810164402642
		 106 -1.8650810164402642 107 -1.8650810164402642 108 -1.8650810164402642 109 -1.8650810164402642
		 110 -1.8650810164402642 111 -1.8650810164402642 112 -1.8650810164402642 113 -1.8650810164402642
		 114 -1.8650810164402642 115 -1.8650810164402642 116 -1.8650810164402642 117 -1.8650810164402642
		 118 -1.8650810164402642 119 -1.8650810164402642 120 -1.8650810164402642 121 -1.8650810164402642
		 122 -1.8650810164402642 123 -1.8650810164402642 124 -1.8650810164402642 125 -1.8650810164402642
		 126 -1.8650810164402642 127 -1.8650810164402642 128 -1.8650810164402642 129 -1.8650810164402642
		 130 -1.8650810164402642 131 -1.8650810164402642 132 -1.8650810164402642 133 -1.8650810164402642
		 134 -1.8650810164402642 135 -1.8650810164402642 136 -1.8650810164402642;
createNode animCurveTA -n "locator12_rotateX";
	rename -uid "F8582608-42F9-50CD-6216-AC84E6C194BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator12_rotateY";
	rename -uid "5B8C9E9C-4293-C31C-1B37-388A141B8AC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator12_rotateZ";
	rename -uid "046446DB-4E8B-0F88-EF60-C4A8CFCE0606";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 -9.8009433868366589 2 -36.40350400825043
		 3 -75.607277555597079 4 -123.21185972023233 5 -175.01684619351175 6 -226.82183266679132
		 7 85.57358516857353 8 46.369811621226958 9 19.767250999813172 10 9.9663076129763848
		 11 19.767250999813026 12 46.369811621226788 13 85.573585168573501 14 -226.82183266679129
		 15 -175.01684619351178 16 -123.2118597202324 17 -75.607277555597207 18 -36.403504008250593
		 19 -9.8009433868368099 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0
		 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0
		 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0
		 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0
		 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0
		 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0
		 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0
		 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTU -n "locator12_scaleX";
	rename -uid "754DF3DB-4164-5628-DB6A-4BB94857B108";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 1 3 1 4 1 5 1
		 6 1 7 1 8 0.99999999999999978 9 1.0000000000000004 10 1 11 1.0000000000000004 12 1.0000000000000002
		 13 1.0000000000000004 14 0.99999999999999978 15 0.99999999999999978 16 1 17 0.99999999999999989
		 18 1 19 0.99999999999999989 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1 29 1 30 1
		 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1 44 1 45 1 46 1 47 1
		 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1 61 1 62 1 63 1 64 1
		 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1 78 1 79 1 80 1 81 1
		 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1
		 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1 110 1 111 1 112 1
		 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1 124 1 125 1 126 1
		 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTU -n "locator12_scaleY";
	rename -uid "79073473-4C94-28E7-1E74-AF874CA6E5E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 1 3 1 4 1 5 1
		 6 1 7 1 8 0.99999999999999978 9 1.0000000000000004 10 1 11 1.0000000000000004 12 1.0000000000000002
		 13 1.0000000000000004 14 0.99999999999999978 15 0.99999999999999978 16 1 17 0.99999999999999989
		 18 1 19 0.99999999999999989 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1 29 1 30 1
		 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1 44 1 45 1 46 1 47 1
		 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1 61 1 62 1 63 1 64 1
		 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1 78 1 79 1 80 1 81 1
		 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1
		 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1 110 1 111 1 112 1
		 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1 124 1 125 1 126 1
		 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTU -n "locator12_scaleZ";
	rename -uid "87F78DF7-44C1-2146-9FAD-7299FFA0A205";
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
createNode animCurveTU -n "locator13_visibility";
	rename -uid "90137F58-49C8-7D68-42E8-75AA903DBEE4";
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
	rename -uid "5BBC53D2-4A1D-7F8A-FCE6-B08F3BCF96C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 9.1093015670776367 1 9.1093015670776367
		 2 9.1093015670776367 3 9.1093015670776509 4 9.1093015670776509 5 9.1093015670776509
		 6 9.1093015670776651 7 9.1093015670776651 8 9.1093015670776651 9 9.1093015670776651
		 10 9.1093015670776651 11 9.1093015670776651 12 9.1093015670776651 13 9.1093015670776651
		 14 9.1093015670776651 15 9.1093015670776509 16 9.1093015670776509 17 9.1093015670776509
		 18 9.1093015670776367 19 9.1093015670776367 20 9.1093015670776367 21 9.1093015670776367
		 22 9.1093015670776367 23 9.1093015670776367 24 9.1093015670776367 25 9.1093015670776367
		 26 9.1093015670776367 27 9.1093015670776367 28 9.1093015670776367 29 9.1093015670776367
		 30 9.1093015670776367 31 9.1093015670776367 32 9.1093015670776367 33 9.1093015670776367
		 34 9.1093015670776367 35 9.1093015670776367 36 9.1093015670776367 37 9.1093015670776367
		 38 9.1093015670776367 39 9.1093015670776367 40 9.1093015670776367 41 9.1093015670776367
		 42 9.1093015670776367 43 9.1093015670776367 44 9.1093015670776367 45 9.1093015670776367
		 46 9.1093015670776367 47 9.1093015670776367 48 9.1093015670776367 49 9.1093015670776367
		 50 9.1093015670776367 51 9.1093015670776367 52 9.1093015670776367 53 9.1093015670776367
		 54 9.1093015670776367 55 9.1093015670776367 56 9.1093015670776367 57 9.1093015670776367
		 58 9.1093015670776367 59 9.1093015670776367 60 9.1093015670776367 61 9.1093015670776367
		 62 9.1093015670776367 63 9.1093015670776367 64 9.1093015670776367 65 9.1093015670776367
		 66 9.1093015670776367 67 9.1093015670776367 68 9.1093015670776367 69 9.1093015670776367
		 70 9.1093015670776367 71 9.1093015670776367 72 9.1093015670776367 73 9.1093015670776367
		 74 9.1093015670776367 75 9.1093015670776367 76 9.1093015670776367 77 9.1093015670776367
		 78 9.1093015670776367 79 9.1093015670776367 80 9.1093015670776367 81 9.1093015670776367
		 82 9.1093015670776367 83 9.1093015670776367 84 9.1093015670776367 85 9.1093015670776367
		 86 9.1093015670776367 87 9.1093015670776367 88 9.1093015670776367 89 9.1093015670776367
		 90 9.1093015670776367 91 9.1093015670776367 92 9.1093015670776367 93 9.1093015670776367
		 94 9.1093015670776367 95 9.1093015670776367 96 9.1093015670776367 97 9.1093015670776367
		 98 9.1093015670776367 99 9.1093015670776367 100 9.1093015670776367 101 9.1093015670776367
		 102 9.1093015670776367 103 9.1093015670776367 104 9.1093015670776367 105 9.1093015670776367
		 106 9.1093015670776367 107 9.1093015670776367 108 9.1093015670776367 109 9.1093015670776367
		 110 9.1093015670776367 111 9.1093015670776367 112 9.1093015670776367 113 9.1093015670776367
		 114 9.1093015670776367 115 9.1093015670776367 116 9.1093015670776367 117 9.1093015670776367
		 118 9.1093015670776367 119 9.1093015670776367 120 9.1093015670776367 121 9.1093015670776367
		 122 9.1093015670776367 123 9.1093015670776367 124 9.1093015670776367 125 9.1093015670776367
		 126 9.1093015670776367 127 9.1093015670776367 128 9.1093015670776367 129 9.1093015670776367
		 130 9.1093015670776367 131 9.1093015670776367 132 9.1093015670776367 133 9.1093015670776367
		 134 9.1093015670776367 135 9.1093015670776367 136 9.1093015670776367;
createNode animCurveTL -n "locator13_translateY";
	rename -uid "7D96B340-49F9-6BFC-B272-5A8D29BA3C13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -0.51708340644836426 1 -0.51708340644836426
		 2 -0.51708340644836426 3 -0.51708340644836426 4 -0.51708340644836426 5 -0.51708340644836426
		 6 -0.51708340644836426 7 -0.51708340644839268 8 -0.51708340644839268 9 -0.51708340644839268
		 10 -0.51708340644839268 11 -0.51708340644839268 12 -0.51708340644839268 13 -0.51708340644839268
		 14 -0.51708340644836426 15 -0.51708340644836426 16 -0.51708340644836426 17 -0.51708340644836426
		 18 -0.51708340644836426 19 -0.51708340644836426 20 -0.51708340644836426 21 -0.51708340644836426
		 22 -0.51708340644836426 23 -0.51708340644836426 24 -0.51708340644836426 25 -0.51708340644836426
		 26 -0.51708340644836426 27 -0.51708340644836426 28 -0.51708340644836426 29 -0.51708340644836426
		 30 -0.51708340644836426 31 -0.51708340644836426 32 -0.51708340644836426 33 -0.51708340644836426
		 34 -0.51708340644836426 35 -0.51708340644836426 36 -0.51708340644836426 37 -0.51708340644836426
		 38 -0.51708340644836426 39 -0.51708340644836426 40 -0.51708340644836426 41 -0.51708340644836426
		 42 -0.51708340644836426 43 -0.51708340644836426 44 -0.51708340644836426 45 -0.51708340644836426
		 46 -0.51708340644836426 47 -0.51708340644836426 48 -0.51708340644836426 49 -0.51708340644836426
		 50 -0.51708340644836426 51 -0.51708340644836426 52 -0.51708340644836426 53 -0.51708340644836426
		 54 -0.51708340644836426 55 -0.51708340644836426 56 -0.51708340644836426 57 -0.51708340644836426
		 58 -0.51708340644836426 59 -0.51708340644836426 60 -0.51708340644836426 61 -0.51708340644836426
		 62 -0.51708340644836426 63 -0.51708340644836426 64 -0.51708340644836426 65 -0.51708340644836426
		 66 -0.51708340644836426 67 -0.51708340644836426 68 -0.51708340644836426 69 -0.51708340644836426
		 70 -0.51708340644836426 71 -0.51708340644836426 72 -0.51708340644836426 73 -0.51708340644836426
		 74 -0.51708340644836426 75 -0.51708340644836426 76 -0.51708340644836426 77 -0.51708340644836426
		 78 -0.51708340644836426 79 -0.51708340644836426 80 -0.51708340644836426 81 -0.51708340644836426
		 82 -0.51708340644836426 83 -0.51708340644836426 84 -0.51708340644836426 85 -0.51708340644836426
		 86 -0.51708340644836426 87 -0.51708340644836426 88 -0.51708340644836426 89 -0.51708340644836426
		 90 -0.51708340644836426 91 -0.51708340644836426 92 -0.51708340644836426 93 -0.51708340644836426
		 94 -0.51708340644836426 95 -0.51708340644836426 96 -0.51708340644836426 97 -0.51708340644836426
		 98 -0.51708340644836426 99 -0.51708340644836426 100 -0.51708340644836426 101 -0.51708340644836426
		 102 -0.51708340644836426 103 -0.51708340644836426 104 -0.51708340644836426 105 -0.51708340644836426
		 106 -0.51708340644836426 107 -0.51708340644836426 108 -0.51708340644836426 109 -0.51708340644836426
		 110 -0.51708340644836426 111 -0.51708340644836426 112 -0.51708340644836426 113 -0.51708340644836426
		 114 -0.51708340644836426 115 -0.51708340644836426 116 -0.51708340644836426 117 -0.51708340644836426
		 118 -0.51708340644836426 119 -0.51708340644836426 120 -0.51708340644836426 121 -0.51708340644836426
		 122 -0.51708340644836426 123 -0.51708340644836426 124 -0.51708340644836426 125 -0.51708340644836426
		 126 -0.51708340644836426 127 -0.51708340644836426 128 -0.51708340644836426 129 -0.51708340644836426
		 130 -0.51708340644836426 131 -0.51708340644836426 132 -0.51708340644836426 133 -0.51708340644836426
		 134 -0.51708340644836426 135 -0.51708340644836426 136 -0.51708340644836426;
createNode animCurveTL -n "locator13_translateZ";
	rename -uid "DFC9A50D-4A81-0ABC-A735-C0A72F12B915";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 2.260073184967041 1 2.260073184967041
		 2 2.260073184967041 3 2.260073184967041 4 2.260073184967041 5 2.260073184967041 6 2.260073184967041
		 7 2.260073184967041 8 2.260073184967041 9 2.260073184967041 10 2.260073184967041
		 11 2.260073184967041 12 2.260073184967041 13 2.260073184967041 14 2.260073184967041
		 15 2.260073184967041 16 2.260073184967041 17 2.260073184967041 18 2.260073184967041
		 19 2.260073184967041 20 2.260073184967041 21 2.260073184967041 22 2.260073184967041
		 23 2.260073184967041 24 2.260073184967041 25 2.260073184967041 26 2.260073184967041
		 27 2.260073184967041 28 2.260073184967041 29 2.260073184967041 30 2.260073184967041
		 31 2.260073184967041 32 2.260073184967041 33 2.260073184967041 34 2.260073184967041
		 35 2.260073184967041 36 2.260073184967041 37 2.260073184967041 38 2.260073184967041
		 39 2.260073184967041 40 2.260073184967041 41 2.260073184967041 42 2.260073184967041
		 43 2.260073184967041 44 2.260073184967041 45 2.260073184967041 46 2.260073184967041
		 47 2.260073184967041 48 2.260073184967041 49 2.260073184967041 50 2.260073184967041
		 51 2.260073184967041 52 2.260073184967041 53 2.260073184967041 54 2.260073184967041
		 55 2.260073184967041 56 2.260073184967041 57 2.260073184967041 58 2.260073184967041
		 59 2.260073184967041 60 2.260073184967041 61 2.260073184967041 62 2.260073184967041
		 63 2.260073184967041 64 2.260073184967041 65 2.260073184967041 66 2.260073184967041
		 67 2.260073184967041 68 2.260073184967041 69 2.260073184967041 70 2.260073184967041
		 71 2.260073184967041 72 2.260073184967041 73 2.260073184967041 74 2.260073184967041
		 75 2.260073184967041 76 2.260073184967041 77 2.260073184967041 78 2.260073184967041
		 79 2.260073184967041 80 2.260073184967041 81 2.260073184967041 82 2.260073184967041
		 83 2.260073184967041 84 2.260073184967041 85 2.260073184967041 86 2.260073184967041
		 87 2.260073184967041 88 2.260073184967041 89 2.260073184967041 90 2.260073184967041
		 91 2.260073184967041 92 2.260073184967041 93 2.260073184967041 94 2.260073184967041
		 95 2.260073184967041 96 2.260073184967041 97 2.260073184967041 98 2.260073184967041
		 99 2.260073184967041 100 2.260073184967041 101 2.260073184967041 102 2.260073184967041
		 103 2.260073184967041 104 2.260073184967041 105 2.260073184967041 106 2.260073184967041
		 107 2.260073184967041 108 2.260073184967041 109 2.260073184967041 110 2.260073184967041
		 111 2.260073184967041 112 2.260073184967041 113 2.260073184967041 114 2.260073184967041
		 115 2.260073184967041 116 2.260073184967041 117 2.260073184967041 118 2.260073184967041
		 119 2.260073184967041 120 2.260073184967041 121 2.260073184967041 122 2.260073184967041
		 123 2.260073184967041 124 2.260073184967041 125 2.260073184967041 126 2.260073184967041
		 127 2.260073184967041 128 2.260073184967041 129 2.260073184967041 130 2.260073184967041
		 131 2.260073184967041 132 2.260073184967041 133 2.260073184967041 134 2.260073184967041
		 135 2.260073184967041 136 2.260073184967041;
createNode animCurveTA -n "locator13_rotateX";
	rename -uid "48E555FC-4C8B-7866-D20D-10AA98F5C086";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator13_rotateY";
	rename -uid "CE8EE784-41C3-02D6-9660-44A91E18ADD4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator13_rotateZ";
	rename -uid "0DD412EC-48B6-06C4-4AAA-DCAD5E14BB68";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 -2.4502358467091647 2 -9.1008760020626092
		 3 -18.901819388899266 4 -30.802964930058081 5 -43.754211548377938 6 -56.705458166697831
		 7 -68.606603707856607 8 -78.407547094693257 9 -85.0581872500467 10 -87.508423096755905
		 11 -85.058187250046743 12 -78.407547094693314 13 -68.606603707856621 14 -56.705458166697831
		 15 -43.754211548377945 16 -30.802964930058099 17 -18.901819388899302 18 -9.10087600206265
		 19 -2.4502358467092025 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0
		 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0
		 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0
		 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0
		 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0
		 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0
		 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0
		 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTU -n "locator13_scaleX";
	rename -uid "B74E977C-4455-3446-8E8F-98AF8D0DD051";
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
createNode animCurveTU -n "locator13_scaleY";
	rename -uid "F1A46CD5-4DC7-F6C8-B9D6-318B7711017F";
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
createNode animCurveTU -n "locator13_scaleZ";
	rename -uid "252A9AD3-4AE9-5D98-3215-B38D68B166C4";
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
createNode animCurveTU -n "locator14_visibility";
	rename -uid "B845352E-4F18-A4F1-6603-358C50857A65";
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
	rename -uid "67ED17FD-495C-B2FE-4E02-9DAB8BCD3891";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 12.785711050033569 1 12.782349523556221
		 2 12.739429061891187 3 12.587458687549784 4 12.267088905815854 5 11.764815609640948
		 6 11.127435730983521 7 10.450337051025116 8 9.848065167405025 9 9.4259952846969668
		 10 9.2691174047334641 11 9.4259952846969526 12 9.8480651674050392 13 10.450337051025116
		 14 11.127435730983521 15 11.764815609640948 16 12.267088905815882 17 12.587458687549798
		 18 12.739429061891173 19 12.782349523556221 20 12.785711050033569 21 12.785711050033569
		 22 12.785711050033569 23 12.785711050033569 24 12.785711050033569 25 12.785711050033569
		 26 12.785711050033569 27 12.785711050033569 28 12.785711050033569 29 12.785711050033569
		 30 12.785711050033569 31 12.785711050033569 32 12.785711050033569 33 12.785711050033569
		 34 12.785711050033569 35 12.785711050033569 36 12.785711050033569 37 12.785711050033569
		 38 12.785711050033569 39 12.785711050033569 40 12.785711050033569 41 12.785711050033569
		 42 12.785711050033569 43 12.785711050033569 44 12.785711050033569 45 12.785711050033569
		 46 12.785711050033569 47 12.785711050033569 48 12.785711050033569 49 12.785711050033569
		 50 12.785711050033569 51 12.785711050033569 52 12.785711050033569 53 12.785711050033569
		 54 12.785711050033569 55 12.785711050033569 56 12.785711050033569 57 12.785711050033569
		 58 12.785711050033569 59 12.785711050033569 60 12.785711050033569 61 12.785711050033569
		 62 12.785711050033569 63 12.785711050033569 64 12.785711050033569 65 12.785711050033569
		 66 12.785711050033569 67 12.785711050033569 68 12.785711050033569 69 12.785711050033569
		 70 12.785711050033569 71 12.785711050033569 72 12.785711050033569 73 12.785711050033569
		 74 12.785711050033569 75 12.785711050033569 76 12.785711050033569 77 12.785711050033569
		 78 12.785711050033569 79 12.785711050033569 80 12.785711050033569 81 12.785711050033569
		 82 12.785711050033569 83 12.785711050033569 84 12.785711050033569 85 12.785711050033569
		 86 12.785711050033569 87 12.785711050033569 88 12.785711050033569 89 12.785711050033569
		 90 12.785711050033569 91 12.785711050033569 92 12.785711050033569 93 12.785711050033569
		 94 12.785711050033569 95 12.785711050033569 96 12.785711050033569 97 12.785711050033569
		 98 12.785711050033569 99 12.785711050033569 100 12.785711050033569 101 12.785711050033569
		 102 12.785711050033569 103 12.785711050033569 104 12.785711050033569 105 12.785711050033569
		 106 12.785711050033569 107 12.785711050033569 108 12.785711050033569 109 12.785711050033569
		 110 12.785711050033569 111 12.785711050033569 112 12.785711050033569 113 12.785711050033569
		 114 12.785711050033569 115 12.785711050033569 116 12.785711050033569 117 12.785711050033569
		 118 12.785711050033569 119 12.785711050033569 120 12.785711050033569 121 12.785711050033569
		 122 12.785711050033569 123 12.785711050033569 124 12.785711050033569 125 12.785711050033569
		 126 12.785711050033569 127 12.785711050033569 128 12.785711050033569 129 12.785711050033569
		 130 12.785711050033569 131 12.785711050033569 132 12.785711050033569 133 12.785711050033569
		 134 12.785711050033569 135 12.785711050033569 136 12.785711050033569;
createNode animCurveTL -n "locator14_translateY";
	rename -uid "3C4E2461-4985-890A-45C9-6AB6B616DBB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -0.51709034558689382 1 -0.67426290837238412
		 2 -1.0985995780336282 3 -1.7080534865618802 4 -2.3997320220219649 5 -3.0595687763503747
		 6 -3.5900495928703151 7 -3.9401829546956151 8 -4.1185018810564031 9 -4.1798271561034426
		 10 -4.1900175992227844 11 -4.1798271561034426 12 -4.1185018810564031 13 -3.9401829546956151
		 14 -3.5900495928703151 15 -3.0595687763503747 16 -2.3997320220219649 17 -1.7080534865618233
		 18 -1.0985995780336566 19 -0.67426290837238412 20 -0.51709034558689382 21 -0.51709034558689382
		 22 -0.51709034558689382 23 -0.51709034558689382 24 -0.51709034558689382 25 -0.51709034558689382
		 26 -0.51709034558689382 27 -0.51709034558689382 28 -0.51709034558689382 29 -0.51709034558689382
		 30 -0.51709034558689382 31 -0.51709034558689382 32 -0.51709034558689382 33 -0.51709034558689382
		 34 -0.51709034558689382 35 -0.51709034558689382 36 -0.51709034558689382 37 -0.51709034558689382
		 38 -0.51709034558689382 39 -0.51709034558689382 40 -0.51709034558689382 41 -0.51709034558689382
		 42 -0.51709034558689382 43 -0.51709034558689382 44 -0.51709034558689382 45 -0.51709034558689382
		 46 -0.51709034558689382 47 -0.51709034558689382 48 -0.51709034558689382 49 -0.51709034558689382
		 50 -0.51709034558689382 51 -0.51709034558689382 52 -0.51709034558689382 53 -0.51709034558689382
		 54 -0.51709034558689382 55 -0.51709034558689382 56 -0.51709034558689382 57 -0.51709034558689382
		 58 -0.51709034558689382 59 -0.51709034558689382 60 -0.51709034558689382 61 -0.51709034558689382
		 62 -0.51709034558689382 63 -0.51709034558689382 64 -0.51709034558689382 65 -0.51709034558689382
		 66 -0.51709034558689382 67 -0.51709034558689382 68 -0.51709034558689382 69 -0.51709034558689382
		 70 -0.51709034558689382 71 -0.51709034558689382 72 -0.51709034558689382 73 -0.51709034558689382
		 74 -0.51709034558689382 75 -0.51709034558689382 76 -0.51709034558689382 77 -0.51709034558689382
		 78 -0.51709034558689382 79 -0.51709034558689382 80 -0.51709034558689382 81 -0.51709034558689382
		 82 -0.51709034558689382 83 -0.51709034558689382 84 -0.51709034558689382 85 -0.51709034558689382
		 86 -0.51709034558689382 87 -0.51709034558689382 88 -0.51709034558689382 89 -0.51709034558689382
		 90 -0.51709034558689382 91 -0.51709034558689382 92 -0.51709034558689382 93 -0.51709034558689382
		 94 -0.51709034558689382 95 -0.51709034558689382 96 -0.51709034558689382 97 -0.51709034558689382
		 98 -0.51709034558689382 99 -0.51709034558689382 100 -0.51709034558689382 101 -0.51709034558689382
		 102 -0.51709034558689382 103 -0.51709034558689382 104 -0.51709034558689382 105 -0.51709034558689382
		 106 -0.51709034558689382 107 -0.51709034558689382 108 -0.51709034558689382 109 -0.51709034558689382
		 110 -0.51709034558689382 111 -0.51709034558689382 112 -0.51709034558689382 113 -0.51709034558689382
		 114 -0.51709034558689382 115 -0.51709034558689382 116 -0.51709034558689382 117 -0.51709034558689382
		 118 -0.51709034558689382 119 -0.51709034558689382 120 -0.51709034558689382 121 -0.51709034558689382
		 122 -0.51709034558689382 123 -0.51709034558689382 124 -0.51709034558689382 125 -0.51709034558689382
		 126 -0.51709034558689382 127 -0.51709034558689382 128 -0.51709034558689382 129 -0.51709034558689382
		 130 -0.51709034558689382 131 -0.51709034558689382 132 -0.51709034558689382 133 -0.51709034558689382
		 134 -0.51709034558689382 135 -0.51709034558689382 136 -0.51709034558689382;
createNode animCurveTL -n "locator14_translateZ";
	rename -uid "F1F888E9-4CAE-9780-DA92-BB9B2AAC7C0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 2.2601024274845276 1 2.2601024274845294
		 2 2.2601024274845276 3 2.2601024274845276 4 2.2601024274845276 5 2.2601024274845276
		 6 2.2601024274845276 7 2.2601024274845294 8 2.2601024274845312 9 2.2601024274845258
		 10 2.2601024274845276 11 2.2601024274845276 12 2.2601024274845276 13 2.2601024274845276
		 14 2.2601024274845294 15 2.2601024274845312 16 2.2601024274845276 17 2.2601024274845312
		 18 2.2601024274845294 19 2.2601024274845276 20 2.2601024274845276 21 2.2601024274845276
		 22 2.2601024274845276 23 2.2601024274845276 24 2.2601024274845276 25 2.2601024274845276
		 26 2.2601024274845276 27 2.2601024274845276 28 2.2601024274845276 29 2.2601024274845276
		 30 2.2601024274845276 31 2.2601024274845276 32 2.2601024274845276 33 2.2601024274845276
		 34 2.2601024274845276 35 2.2601024274845276 36 2.2601024274845276 37 2.2601024274845276
		 38 2.2601024274845276 39 2.2601024274845276 40 2.2601024274845276 41 2.2601024274845276
		 42 2.2601024274845276 43 2.2601024274845276 44 2.2601024274845276 45 2.2601024274845276
		 46 2.2601024274845276 47 2.2601024274845276 48 2.2601024274845276 49 2.2601024274845276
		 50 2.2601024274845276 51 2.2601024274845276 52 2.2601024274845276 53 2.2601024274845276
		 54 2.2601024274845276 55 2.2601024274845276 56 2.2601024274845276 57 2.2601024274845276
		 58 2.2601024274845276 59 2.2601024274845276 60 2.2601024274845276 61 2.2601024274845276
		 62 2.2601024274845276 63 2.2601024274845276 64 2.2601024274845276 65 2.2601024274845276
		 66 2.2601024274845276 67 2.2601024274845276 68 2.2601024274845276 69 2.2601024274845276
		 70 2.2601024274845276 71 2.2601024274845276 72 2.2601024274845276 73 2.2601024274845276
		 74 2.2601024274845276 75 2.2601024274845276 76 2.2601024274845276 77 2.2601024274845276
		 78 2.2601024274845276 79 2.2601024274845276 80 2.2601024274845276 81 2.2601024274845276
		 82 2.2601024274845276 83 2.2601024274845276 84 2.2601024274845276 85 2.2601024274845276
		 86 2.2601024274845276 87 2.2601024274845276 88 2.2601024274845276 89 2.2601024274845276
		 90 2.2601024274845276 91 2.2601024274845276 92 2.2601024274845276 93 2.2601024274845276
		 94 2.2601024274845276 95 2.2601024274845276 96 2.2601024274845276 97 2.2601024274845276
		 98 2.2601024274845276 99 2.2601024274845276 100 2.2601024274845276 101 2.2601024274845276
		 102 2.2601024274845276 103 2.2601024274845276 104 2.2601024274845276 105 2.2601024274845276
		 106 2.2601024274845276 107 2.2601024274845276 108 2.2601024274845276 109 2.2601024274845276
		 110 2.2601024274845276 111 2.2601024274845276 112 2.2601024274845276 113 2.2601024274845276
		 114 2.2601024274845276 115 2.2601024274845276 116 2.2601024274845276 117 2.2601024274845276
		 118 2.2601024274845276 119 2.2601024274845276 120 2.2601024274845276 121 2.2601024274845276
		 122 2.2601024274845276 123 2.2601024274845276 124 2.2601024274845276 125 2.2601024274845276
		 126 2.2601024274845276 127 2.2601024274845276 128 2.2601024274845276 129 2.2601024274845276
		 130 2.2601024274845276 131 2.2601024274845276 132 2.2601024274845276 133 2.2601024274845276
		 134 2.2601024274845276 135 2.2601024274845276 136 2.2601024274845276;
createNode animCurveTA -n "locator14_rotateX";
	rename -uid "4DAFD98E-43EF-5267-0624-D095E9767EDE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator14_rotateY";
	rename -uid "4E4F1A8E-424A-3A4E-32FF-8695982C49FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator14_rotateZ";
	rename -uid "88676035-441E-7EBA-48FE-19B27A25A582";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 -4.9004716934183286 2 -18.201752004125222
		 3 -37.803638777798533 4 -61.605929860116163 5 -87.508423096755877 6 -113.41091633339566
		 7 -137.21320741571321 8 -156.81509418938651 9 -170.1163745000934 10 -175.01684619351181
		 11 -170.11637450009349 12 -156.81509418938663 13 -137.21320741571324 14 -113.41091633339566
		 15 -87.508423096755891 16 -61.605929860116191 17 -37.803638777798604 18 -18.2017520041253
		 19 -4.9004716934184041 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0
		 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0
		 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0
		 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0
		 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0
		 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0
		 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0
		 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTU -n "locator14_scaleX";
	rename -uid "5398EBEE-43CC-CC5D-FAA5-E9BF07916652";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 1 3 1 4 1 5 1
		 6 1 7 1 8 0.99999999999999989 9 1 10 1 11 1.0000000000000002 12 1 13 1 14 0.99999999999999989
		 15 0.99999999999999989 16 1 17 0.99999999999999989 18 1 19 1 20 1 21 1 22 1 23 1
		 24 1 25 1 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1
		 41 1 42 1 43 1 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1
		 58 1 59 1 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1
		 75 1 76 1 77 1 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1
		 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1
		 107 1 108 1 109 1 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1
		 121 1 122 1 123 1 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1
		 135 1 136 1;
createNode animCurveTU -n "locator14_scaleY";
	rename -uid "F29EA65D-428A-2A55-EA91-3D92ED781629";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 1 3 1 4 1 5 1
		 6 1 7 1 8 0.99999999999999989 9 1 10 1 11 1.0000000000000002 12 1 13 1 14 0.99999999999999989
		 15 0.99999999999999989 16 1 17 0.99999999999999989 18 1 19 1 20 1 21 1 22 1 23 1
		 24 1 25 1 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1
		 41 1 42 1 43 1 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1
		 58 1 59 1 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1
		 75 1 76 1 77 1 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1
		 92 1 93 1 94 1 95 1 96 1 97 1 98 1 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1
		 107 1 108 1 109 1 110 1 111 1 112 1 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1
		 121 1 122 1 123 1 124 1 125 1 126 1 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1
		 135 1 136 1;
createNode animCurveTU -n "locator14_scaleZ";
	rename -uid "AAE80F1A-4617-733A-C6A6-BBACEB89EBEE";
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
createNode animCurveTU -n "locator15_visibility";
	rename -uid "1B01919C-4669-50D0-1CBF-FDBC2F9C88EC";
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
	rename -uid "257BB57C-4366-93AB-ECF1-8DBBED45F3BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 15.668773651123047 1 15.65487664718782
		 2 15.478242449064297 3 14.865436431460495 4 13.63811467343281 5 11.890188070383488
		 6 9.9819647417712503 7 8.334522590484525 8 7.1978564914185057 9 6.5857284944111711
		 10 6.3969553162663146 11 6.5857284944111711 12 7.1978564914185199 13 8.3345225904844966
		 14 9.9819647417712503 15 11.890188070383502 16 13.638114673432781 17 14.865436431460509
		 18 15.478242449064311 19 15.654876647187848 20 15.668773651123047 21 15.668773651123047
		 22 15.668773651123047 23 15.668773651123047 24 15.668773651123047 25 15.668773651123047
		 26 15.668773651123047 27 15.668773651123047 28 15.668773651123047 29 15.668773651123047
		 30 15.668773651123047 31 15.668773651123047 32 15.668773651123047 33 15.668773651123047
		 34 15.668773651123047 35 15.668773651123047 36 15.668773651123047 37 15.668773651123047
		 38 15.668773651123047 39 15.668773651123047 40 15.668773651123047 41 15.668773651123047
		 42 15.668773651123047 43 15.668773651123047 44 15.668773651123047 45 15.668773651123047
		 46 15.668773651123047 47 15.668773651123047 48 15.668773651123047 49 15.668773651123047
		 50 15.668773651123047 51 15.668773651123047 52 15.668773651123047 53 15.668773651123047
		 54 15.668773651123047 55 15.668773651123047 56 15.668773651123047 57 15.668773651123047
		 58 15.668773651123047 59 15.668773651123047 60 15.668773651123047 61 15.668773651123047
		 62 15.668773651123047 63 15.668773651123047 64 15.668773651123047 65 15.668773651123047
		 66 15.668773651123047 67 15.668773651123047 68 15.668773651123047 69 15.668773651123047
		 70 15.668773651123047 71 15.668773651123047 72 15.668773651123047 73 15.668773651123047
		 74 15.668773651123047 75 15.668773651123047 76 15.668773651123047 77 15.668773651123047
		 78 15.668773651123047 79 15.668773651123047 80 15.668773651123047 81 15.668773651123047
		 82 15.668773651123047 83 15.668773651123047 84 15.668773651123047 85 15.668773651123047
		 86 15.668773651123047 87 15.668773651123047 88 15.668773651123047 89 15.668773651123047
		 90 15.668773651123047 91 15.668773651123047 92 15.668773651123047 93 15.668773651123047
		 94 15.668773651123047 95 15.668773651123047 96 15.668773651123047 97 15.668773651123047
		 98 15.668773651123047 99 15.668773651123047 100 15.668773651123047 101 15.668773651123047
		 102 15.668773651123047 103 15.668773651123047 104 15.668773651123047 105 15.668773651123047
		 106 15.668773651123047 107 15.668773651123047 108 15.668773651123047 109 15.668773651123047
		 110 15.668773651123047 111 15.668773651123047 112 15.668773651123047 113 15.668773651123047
		 114 15.668773651123047 115 15.668773651123047 116 15.668773651123047 117 15.668773651123047
		 118 15.668773651123047 119 15.668773651123047 120 15.668773651123047 121 15.668773651123047
		 122 15.668773651123047 123 15.668773651123047 124 15.668773651123047 125 15.668773651123047
		 126 15.668773651123047 127 15.668773651123047 128 15.668773651123047 129 15.668773651123047
		 130 15.668773651123047 131 15.668773651123047 132 15.668773651123047 133 15.668773651123047
		 134 15.668773651123047 135 15.668773651123047 136 15.668773651123047;
createNode animCurveTL -n "locator15_translateY";
	rename -uid "86EFAA84-471D-E87F-D2E1-57AB6FF36975";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -0.51705183361946183 1 -0.92051052213659545
		 2 -1.9991278638333085 3 -3.4752171353311212 4 -4.9359375160256604 5 -5.9399041230368539
		 6 -6.2357907321651282 7 -5.8985953555579727 8 -5.2535983249808567 9 -4.6747357570428392
		 10 -4.4404869603353632 11 -4.6747357570428676 12 -5.2535983249808851 13 -5.8985953555580011
		 14 -6.2357907321651567 15 -5.9399041230368539 16 -4.9359375160256604 17 -3.4752171353311212
		 18 -1.9991278638333085 19 -0.92051052213656703 20 -0.51705183361946183 21 -0.51705183361946183
		 22 -0.51705183361946183 23 -0.51705183361946183 24 -0.51705183361946183 25 -0.51705183361946183
		 26 -0.51705183361946183 27 -0.51705183361946183 28 -0.51705183361946183 29 -0.51705183361946183
		 30 -0.51705183361946183 31 -0.51705183361946183 32 -0.51705183361946183 33 -0.51705183361946183
		 34 -0.51705183361946183 35 -0.51705183361946183 36 -0.51705183361946183 37 -0.51705183361946183
		 38 -0.51705183361946183 39 -0.51705183361946183 40 -0.51705183361946183 41 -0.51705183361946183
		 42 -0.51705183361946183 43 -0.51705183361946183 44 -0.51705183361946183 45 -0.51705183361946183
		 46 -0.51705183361946183 47 -0.51705183361946183 48 -0.51705183361946183 49 -0.51705183361946183
		 50 -0.51705183361946183 51 -0.51705183361946183 52 -0.51705183361946183 53 -0.51705183361946183
		 54 -0.51705183361946183 55 -0.51705183361946183 56 -0.51705183361946183 57 -0.51705183361946183
		 58 -0.51705183361946183 59 -0.51705183361946183 60 -0.51705183361946183 61 -0.51705183361946183
		 62 -0.51705183361946183 63 -0.51705183361946183 64 -0.51705183361946183 65 -0.51705183361946183
		 66 -0.51705183361946183 67 -0.51705183361946183 68 -0.51705183361946183 69 -0.51705183361946183
		 70 -0.51705183361946183 71 -0.51705183361946183 72 -0.51705183361946183 73 -0.51705183361946183
		 74 -0.51705183361946183 75 -0.51705183361946183 76 -0.51705183361946183 77 -0.51705183361946183
		 78 -0.51705183361946183 79 -0.51705183361946183 80 -0.51705183361946183 81 -0.51705183361946183
		 82 -0.51705183361946183 83 -0.51705183361946183 84 -0.51705183361946183 85 -0.51705183361946183
		 86 -0.51705183361946183 87 -0.51705183361946183 88 -0.51705183361946183 89 -0.51705183361946183
		 90 -0.51705183361946183 91 -0.51705183361946183 92 -0.51705183361946183 93 -0.51705183361946183
		 94 -0.51705183361946183 95 -0.51705183361946183 96 -0.51705183361946183 97 -0.51705183361946183
		 98 -0.51705183361946183 99 -0.51705183361946183 100 -0.51705183361946183 101 -0.51705183361946183
		 102 -0.51705183361946183 103 -0.51705183361946183 104 -0.51705183361946183 105 -0.51705183361946183
		 106 -0.51705183361946183 107 -0.51705183361946183 108 -0.51705183361946183 109 -0.51705183361946183
		 110 -0.51705183361946183 111 -0.51705183361946183 112 -0.51705183361946183 113 -0.51705183361946183
		 114 -0.51705183361946183 115 -0.51705183361946183 116 -0.51705183361946183 117 -0.51705183361946183
		 118 -0.51705183361946183 119 -0.51705183361946183 120 -0.51705183361946183 121 -0.51705183361946183
		 122 -0.51705183361946183 123 -0.51705183361946183 124 -0.51705183361946183 125 -0.51705183361946183
		 126 -0.51705183361946183 127 -0.51705183361946183 128 -0.51705183361946183 129 -0.51705183361946183
		 130 -0.51705183361946183 131 -0.51705183361946183 132 -0.51705183361946183 133 -0.51705183361946183
		 134 -0.51705183361946183 135 -0.51705183361946183 136 -0.51705183361946183;
createNode animCurveTL -n "locator15_translateZ";
	rename -uid "69E9566C-4259-A50C-7BAA-5AA74A9ED086";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 2.2600596626689367 1 2.2600596626689384
		 2 2.2600596626689349 3 2.2600596626689367 4 2.2600596626689384 5 2.2600596626689331
		 6 2.2600596626689349 7 2.2600596626689367 8 2.2600596626689384 9 2.2600596626689367
		 10 2.2600596626689367 11 2.2600596626689367 12 2.2600596626689367 13 2.2600596626689384
		 14 2.2600596626689402 15 2.2600596626689384 16 2.2600596626689367 17 2.2600596626689384
		 18 2.2600596626689367 19 2.2600596626689402 20 2.2600596626689367 21 2.2600596626689367
		 22 2.2600596626689367 23 2.2600596626689367 24 2.2600596626689367 25 2.2600596626689367
		 26 2.2600596626689367 27 2.2600596626689367 28 2.2600596626689367 29 2.2600596626689367
		 30 2.2600596626689367 31 2.2600596626689367 32 2.2600596626689367 33 2.2600596626689367
		 34 2.2600596626689367 35 2.2600596626689367 36 2.2600596626689367 37 2.2600596626689367
		 38 2.2600596626689367 39 2.2600596626689367 40 2.2600596626689367 41 2.2600596626689367
		 42 2.2600596626689367 43 2.2600596626689367 44 2.2600596626689367 45 2.2600596626689367
		 46 2.2600596626689367 47 2.2600596626689367 48 2.2600596626689367 49 2.2600596626689367
		 50 2.2600596626689367 51 2.2600596626689367 52 2.2600596626689367 53 2.2600596626689367
		 54 2.2600596626689367 55 2.2600596626689367 56 2.2600596626689367 57 2.2600596626689367
		 58 2.2600596626689367 59 2.2600596626689367 60 2.2600596626689367 61 2.2600596626689367
		 62 2.2600596626689367 63 2.2600596626689367 64 2.2600596626689367 65 2.2600596626689367
		 66 2.2600596626689367 67 2.2600596626689367 68 2.2600596626689367 69 2.2600596626689367
		 70 2.2600596626689367 71 2.2600596626689367 72 2.2600596626689367 73 2.2600596626689367
		 74 2.2600596626689367 75 2.2600596626689367 76 2.2600596626689367 77 2.2600596626689367
		 78 2.2600596626689367 79 2.2600596626689367 80 2.2600596626689367 81 2.2600596626689367
		 82 2.2600596626689367 83 2.2600596626689367 84 2.2600596626689367 85 2.2600596626689367
		 86 2.2600596626689367 87 2.2600596626689367 88 2.2600596626689367 89 2.2600596626689367
		 90 2.2600596626689367 91 2.2600596626689367 92 2.2600596626689367 93 2.2600596626689367
		 94 2.2600596626689367 95 2.2600596626689367 96 2.2600596626689367 97 2.2600596626689367
		 98 2.2600596626689367 99 2.2600596626689367 100 2.2600596626689367 101 2.2600596626689367
		 102 2.2600596626689367 103 2.2600596626689367 104 2.2600596626689367 105 2.2600596626689367
		 106 2.2600596626689367 107 2.2600596626689367 108 2.2600596626689367 109 2.2600596626689367
		 110 2.2600596626689367 111 2.2600596626689367 112 2.2600596626689367 113 2.2600596626689367
		 114 2.2600596626689367 115 2.2600596626689367 116 2.2600596626689367 117 2.2600596626689367
		 118 2.2600596626689367 119 2.2600596626689367 120 2.2600596626689367 121 2.2600596626689367
		 122 2.2600596626689367 123 2.2600596626689367 124 2.2600596626689367 125 2.2600596626689367
		 126 2.2600596626689367 127 2.2600596626689367 128 2.2600596626689367 129 2.2600596626689367
		 130 2.2600596626689367 131 2.2600596626689367 132 2.2600596626689367 133 2.2600596626689367
		 134 2.2600596626689367 135 2.2600596626689367 136 2.2600596626689367;
createNode animCurveTA -n "locator15_rotateX";
	rename -uid "664CA2FA-449E-8411-8B8F-A6996894A499";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator15_rotateY";
	rename -uid "3CB2A31D-4E14-A38B-F8B9-2EB665080019";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator15_rotateZ";
	rename -uid "D13FB653-4969-E70E-ADDC-E2B3DF6DB57A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 -7.3507075401274964 2 -27.302628006187827
		 3 -56.705458166697795 4 -92.408894790174216 5 -131.26263464513383 6 -170.11637450009351
		 7 -205.81981112356982 8 -235.22264128407977 9 -255.17456175014013 10 -262.52526929026772
		 11 -255.17456175014024 12 -235.22264128407988 13 -205.81981112356985 14 -170.11637450009349
		 15 -131.26263464513386 16 -92.408894790174301 17 -56.705458166697888 18 -27.302628006187959
		 19 -7.3507075401276074 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0
		 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0
		 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0
		 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0
		 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0
		 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0
		 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0
		 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTU -n "locator15_scaleX";
	rename -uid "285C27C5-4026-7F66-EB7A-65823B2055AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 1 3 1 4 1 5 1
		 6 1 7 1 8 0.99999999999999978 9 1.0000000000000002 10 1 11 1.0000000000000002 12 1
		 13 1.0000000000000002 14 0.99999999999999978 15 0.99999999999999989 16 1 17 0.99999999999999989
		 18 1 19 0.99999999999999989 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1 29 1 30 1
		 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1 44 1 45 1 46 1 47 1
		 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1 61 1 62 1 63 1 64 1
		 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1 78 1 79 1 80 1 81 1
		 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1
		 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1 110 1 111 1 112 1
		 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1 124 1 125 1 126 1
		 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTU -n "locator15_scaleY";
	rename -uid "58AE8DF6-475D-2215-3F88-0585E46C0D9C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 1 3 1 4 1 5 1
		 6 1 7 1 8 0.99999999999999978 9 1.0000000000000002 10 1 11 1.0000000000000002 12 1
		 13 1.0000000000000002 14 0.99999999999999978 15 0.99999999999999989 16 1 17 0.99999999999999989
		 18 1 19 0.99999999999999989 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1 29 1 30 1
		 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1 44 1 45 1 46 1 47 1
		 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1 61 1 62 1 63 1 64 1
		 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1 78 1 79 1 80 1 81 1
		 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1
		 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1 110 1 111 1 112 1
		 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1 124 1 125 1 126 1
		 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTU -n "locator15_scaleZ";
	rename -uid "D3C70477-47D0-3290-F232-F084D911EAFC";
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
createNode animCurveTU -n "locator16_visibility";
	rename -uid "5033583E-45D6-74CA-344A-FF907E48955E";
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
	rename -uid "A8517603-4C44-44BD-5E35-919D167314ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 18.061493635177612 1 18.027937039123103
		 2 17.604421305244728 3 16.178934730334547 4 13.537583826209911 5 10.312189336912795
		 6 7.6247628549305091 7 6.1806559559429814 8 5.8330448395524712 9 5.9734555130601592
		 10 6.0856522456443258 11 5.9734555130601734 12 5.833044839552457 13 6.1806559559430099
		 14 7.6247628549305091 15 10.312189336912795 16 13.537583826209868 17 16.178934730334589
		 18 17.604421305244728 19 18.027937039123088 20 18.061493635177612 21 18.061493635177612
		 22 18.061493635177612 23 18.061493635177612 24 18.061493635177612 25 18.061493635177612
		 26 18.061493635177612 27 18.061493635177612 28 18.061493635177612 29 18.061493635177612
		 30 18.061493635177612 31 18.061493635177612 32 18.061493635177612 33 18.061493635177612
		 34 18.061493635177612 35 18.061493635177612 36 18.061493635177612 37 18.061493635177612
		 38 18.061493635177612 39 18.061493635177612 40 18.061493635177612 41 18.061493635177612
		 42 18.061493635177612 43 18.061493635177612 44 18.061493635177612 45 18.061493635177612
		 46 18.061493635177612 47 18.061493635177612 48 18.061493635177612 49 18.061493635177612
		 50 18.061493635177612 51 18.061493635177612 52 18.061493635177612 53 18.061493635177612
		 54 18.061493635177612 55 18.061493635177612 56 18.061493635177612 57 18.061493635177612
		 58 18.061493635177612 59 18.061493635177612 60 18.061493635177612 61 18.061493635177612
		 62 18.061493635177612 63 18.061493635177612 64 18.061493635177612 65 18.061493635177612
		 66 18.061493635177612 67 18.061493635177612 68 18.061493635177612 69 18.061493635177612
		 70 18.061493635177612 71 18.061493635177612 72 18.061493635177612 73 18.061493635177612
		 74 18.061493635177612 75 18.061493635177612 76 18.061493635177612 77 18.061493635177612
		 78 18.061493635177612 79 18.061493635177612 80 18.061493635177612 81 18.061493635177612
		 82 18.061493635177612 83 18.061493635177612 84 18.061493635177612 85 18.061493635177612
		 86 18.061493635177612 87 18.061493635177612 88 18.061493635177612 89 18.061493635177612
		 90 18.061493635177612 91 18.061493635177612 92 18.061493635177612 93 18.061493635177612
		 94 18.061493635177612 95 18.061493635177612 96 18.061493635177612 97 18.061493635177612
		 98 18.061493635177612 99 18.061493635177612 100 18.061493635177612 101 18.061493635177612
		 102 18.061493635177612 103 18.061493635177612 104 18.061493635177612 105 18.061493635177612
		 106 18.061493635177612 107 18.061493635177612 108 18.061493635177612 109 18.061493635177612
		 110 18.061493635177612 111 18.061493635177612 112 18.061493635177612 113 18.061493635177612
		 114 18.061493635177612 115 18.061493635177612 116 18.061493635177612 117 18.061493635177612
		 118 18.061493635177612 119 18.061493635177612 120 18.061493635177612 121 18.061493635177612
		 122 18.061493635177612 123 18.061493635177612 124 18.061493635177612 125 18.061493635177612
		 126 18.061493635177612 127 18.061493635177612 128 18.061493635177612 129 18.061493635177612
		 130 18.061493635177612 131 18.061493635177612 132 18.061493635177612 133 18.061493635177612
		 134 18.061493635177612 135 18.061493635177612 136 18.061493635177612;
createNode animCurveTL -n "locator16_translateY";
	rename -uid "FFADA108-47D2-7427-D6C4-D3934DF7D35B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 -0.51701480771180286 1 -1.2266041347669443
		 2 -3.0966124400330841 3 -5.4751749204656335 4 -7.3265446506719627 5 -7.7385227375935699
		 6 -6.6465317553654302 7 -4.8564977382140739 8 -3.2882998544182556 9 -2.3616791819084142
		 10 -2.0681043348538708 11 -2.3616791819084142 12 -3.288299854418284 13 -4.8564977382140171
		 14 -6.6465317553654302 15 -7.7385227375935415 16 -7.3265446506719343 17 -5.4751749204656051
		 18 -3.0966124400330273 19 -1.2266041347669727 20 -0.51701480771180286 21 -0.51701480771180286
		 22 -0.51701480771180286 23 -0.51701480771180286 24 -0.51701480771180286 25 -0.51701480771180286
		 26 -0.51701480771180286 27 -0.51701480771180286 28 -0.51701480771180286 29 -0.51701480771180286
		 30 -0.51701480771180286 31 -0.51701480771180286 32 -0.51701480771180286 33 -0.51701480771180286
		 34 -0.51701480771180286 35 -0.51701480771180286 36 -0.51701480771180286 37 -0.51701480771180286
		 38 -0.51701480771180286 39 -0.51701480771180286 40 -0.51701480771180286 41 -0.51701480771180286
		 42 -0.51701480771180286 43 -0.51701480771180286 44 -0.51701480771180286 45 -0.51701480771180286
		 46 -0.51701480771180286 47 -0.51701480771180286 48 -0.51701480771180286 49 -0.51701480771180286
		 50 -0.51701480771180286 51 -0.51701480771180286 52 -0.51701480771180286 53 -0.51701480771180286
		 54 -0.51701480771180286 55 -0.51701480771180286 56 -0.51701480771180286 57 -0.51701480771180286
		 58 -0.51701480771180286 59 -0.51701480771180286 60 -0.51701480771180286 61 -0.51701480771180286
		 62 -0.51701480771180286 63 -0.51701480771180286 64 -0.51701480771180286 65 -0.51701480771180286
		 66 -0.51701480771180286 67 -0.51701480771180286 68 -0.51701480771180286 69 -0.51701480771180286
		 70 -0.51701480771180286 71 -0.51701480771180286 72 -0.51701480771180286 73 -0.51701480771180286
		 74 -0.51701480771180286 75 -0.51701480771180286 76 -0.51701480771180286 77 -0.51701480771180286
		 78 -0.51701480771180286 79 -0.51701480771180286 80 -0.51701480771180286 81 -0.51701480771180286
		 82 -0.51701480771180286 83 -0.51701480771180286 84 -0.51701480771180286 85 -0.51701480771180286
		 86 -0.51701480771180286 87 -0.51701480771180286 88 -0.51701480771180286 89 -0.51701480771180286
		 90 -0.51701480771180286 91 -0.51701480771180286 92 -0.51701480771180286 93 -0.51701480771180286
		 94 -0.51701480771180286 95 -0.51701480771180286 96 -0.51701480771180286 97 -0.51701480771180286
		 98 -0.51701480771180286 99 -0.51701480771180286 100 -0.51701480771180286 101 -0.51701480771180286
		 102 -0.51701480771180286 103 -0.51701480771180286 104 -0.51701480771180286 105 -0.51701480771180286
		 106 -0.51701480771180286 107 -0.51701480771180286 108 -0.51701480771180286 109 -0.51701480771180286
		 110 -0.51701480771180286 111 -0.51701480771180286 112 -0.51701480771180286 113 -0.51701480771180286
		 114 -0.51701480771180286 115 -0.51701480771180286 116 -0.51701480771180286 117 -0.51701480771180286
		 118 -0.51701480771180286 119 -0.51701480771180286 120 -0.51701480771180286 121 -0.51701480771180286
		 122 -0.51701480771180286 123 -0.51701480771180286 124 -0.51701480771180286 125 -0.51701480771180286
		 126 -0.51701480771180286 127 -0.51701480771180286 128 -0.51701480771180286 129 -0.51701480771180286
		 130 -0.51701480771180286 131 -0.51701480771180286 132 -0.51701480771180286 133 -0.51701480771180286
		 134 -0.51701480771180286 135 -0.51701480771180286 136 -0.51701480771180286;
createNode animCurveTL -n "locator16_translateZ";
	rename -uid "DDA504CD-40B1-4A4B-269A-84A6AF4ABCDA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 2.2600932171044388 1 2.2600932171044388
		 2 2.260093217104437 3 2.2600932171044388 4 2.2600932171044406 5 2.2600932171044423
		 6 2.2600932171044388 7 2.260093217104437 8 2.2600932171044388 9 2.260093217104437
		 10 2.2600932171044388 11 2.2600932171044388 12 2.260093217104437 13 2.260093217104437
		 14 2.260093217104437 15 2.2600932171044406 16 2.260093217104437 17 2.2600932171044388
		 18 2.260093217104437 19 2.2600932171044388 20 2.2600932171044388 21 2.2600932171044388
		 22 2.2600932171044388 23 2.2600932171044388 24 2.2600932171044388 25 2.2600932171044388
		 26 2.2600932171044388 27 2.2600932171044388 28 2.2600932171044388 29 2.2600932171044388
		 30 2.2600932171044388 31 2.2600932171044388 32 2.2600932171044388 33 2.2600932171044388
		 34 2.2600932171044388 35 2.2600932171044388 36 2.2600932171044388 37 2.2600932171044388
		 38 2.2600932171044388 39 2.2600932171044388 40 2.2600932171044388 41 2.2600932171044388
		 42 2.2600932171044388 43 2.2600932171044388 44 2.2600932171044388 45 2.2600932171044388
		 46 2.2600932171044388 47 2.2600932171044388 48 2.2600932171044388 49 2.2600932171044388
		 50 2.2600932171044388 51 2.2600932171044388 52 2.2600932171044388 53 2.2600932171044388
		 54 2.2600932171044388 55 2.2600932171044388 56 2.2600932171044388 57 2.2600932171044388
		 58 2.2600932171044388 59 2.2600932171044388 60 2.2600932171044388 61 2.2600932171044388
		 62 2.2600932171044388 63 2.2600932171044388 64 2.2600932171044388 65 2.2600932171044388
		 66 2.2600932171044388 67 2.2600932171044388 68 2.2600932171044388 69 2.2600932171044388
		 70 2.2600932171044388 71 2.2600932171044388 72 2.2600932171044388 73 2.2600932171044388
		 74 2.2600932171044388 75 2.2600932171044388 76 2.2600932171044388 77 2.2600932171044388
		 78 2.2600932171044388 79 2.2600932171044388 80 2.2600932171044388 81 2.2600932171044388
		 82 2.2600932171044388 83 2.2600932171044388 84 2.2600932171044388 85 2.2600932171044388
		 86 2.2600932171044388 87 2.2600932171044388 88 2.2600932171044388 89 2.2600932171044388
		 90 2.2600932171044388 91 2.2600932171044388 92 2.2600932171044388 93 2.2600932171044388
		 94 2.2600932171044388 95 2.2600932171044388 96 2.2600932171044388 97 2.2600932171044388
		 98 2.2600932171044388 99 2.2600932171044388 100 2.2600932171044388 101 2.2600932171044388
		 102 2.2600932171044388 103 2.2600932171044388 104 2.2600932171044388 105 2.2600932171044388
		 106 2.2600932171044388 107 2.2600932171044388 108 2.2600932171044388 109 2.2600932171044388
		 110 2.2600932171044388 111 2.2600932171044388 112 2.2600932171044388 113 2.2600932171044388
		 114 2.2600932171044388 115 2.2600932171044388 116 2.2600932171044388 117 2.2600932171044388
		 118 2.2600932171044388 119 2.2600932171044388 120 2.2600932171044388 121 2.2600932171044388
		 122 2.2600932171044388 123 2.2600932171044388 124 2.2600932171044388 125 2.2600932171044388
		 126 2.2600932171044388 127 2.2600932171044388 128 2.2600932171044388 129 2.2600932171044388
		 130 2.2600932171044388 131 2.2600932171044388 132 2.2600932171044388 133 2.2600932171044388
		 134 2.2600932171044388 135 2.2600932171044388 136 2.2600932171044388;
createNode animCurveTA -n "locator16_rotateX";
	rename -uid "AE3F23B4-4A0E-F439-0E70-4CB468DDFF91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator16_rotateY";
	rename -uid "3C788F92-42F7-A682-D4C3-24A979756CB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0
		 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0
		 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0
		 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0
		 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0
		 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0
		 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0
		 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0
		 124 0 125 0 126 0 127 0 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTA -n "locator16_rotateZ";
	rename -uid "5111B268-4FF4-D07B-918E-62A7D15EBFCD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 0 1 -9.8009433868366589 2 -36.40350400825043
		 3 -75.607277555597079 4 -123.21185972023233 5 -175.01684619351175 6 -226.82183266679132
		 7 85.57358516857353 8 46.369811621226958 9 19.767250999813172 10 9.9663076129763848
		 11 19.767250999813026 12 46.369811621226788 13 85.573585168573501 14 -226.82183266679129
		 15 -175.01684619351178 16 -123.2118597202324 17 -75.607277555597207 18 -36.403504008250593
		 19 -9.8009433868368099 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0
		 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0
		 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0
		 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0
		 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0
		 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0
		 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0
		 128 0 129 0 130 0 131 0 132 0 133 0 134 0 135 0 136 0;
createNode animCurveTU -n "locator16_scaleX";
	rename -uid "10322DB3-4B9F-E353-19E7-5E9788102C78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 1 3 1 4 1 5 1
		 6 1 7 1 8 0.99999999999999978 9 1.0000000000000004 10 1 11 1.0000000000000004 12 1.0000000000000002
		 13 1.0000000000000004 14 0.99999999999999978 15 0.99999999999999978 16 1 17 0.99999999999999989
		 18 1 19 0.99999999999999989 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1 29 1 30 1
		 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1 44 1 45 1 46 1 47 1
		 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1 61 1 62 1 63 1 64 1
		 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1 78 1 79 1 80 1 81 1
		 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1
		 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1 110 1 111 1 112 1
		 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1 124 1 125 1 126 1
		 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTU -n "locator16_scaleY";
	rename -uid "D89DC23A-4E0E-FCC8-A31A-09800B4BAD18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 137 ".ktv[0:136]"  0 1 1 0.99999999999999989 2 1 3 1 4 1 5 1
		 6 1 7 1 8 0.99999999999999978 9 1.0000000000000004 10 1 11 1.0000000000000004 12 1.0000000000000002
		 13 1.0000000000000004 14 0.99999999999999978 15 0.99999999999999978 16 1 17 0.99999999999999989
		 18 1 19 0.99999999999999989 20 1 21 1 22 1 23 1 24 1 25 1 26 1 27 1 28 1 29 1 30 1
		 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1 44 1 45 1 46 1 47 1
		 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1 61 1 62 1 63 1 64 1
		 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1 78 1 79 1 80 1 81 1
		 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1 95 1 96 1 97 1 98 1
		 99 1 100 1 101 1 102 1 103 1 104 1 105 1 106 1 107 1 108 1 109 1 110 1 111 1 112 1
		 113 1 114 1 115 1 116 1 117 1 118 1 119 1 120 1 121 1 122 1 123 1 124 1 125 1 126 1
		 127 1 128 1 129 1 130 1 131 1 132 1 133 1 134 1 135 1 136 1;
createNode animCurveTU -n "locator16_scaleZ";
	rename -uid "DF537A78-49FA-C190-338E-5590C86FCC9F";
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
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "9EBF106D-42AC-FB08-9621-1CA9C22ACB79";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -421.42855468250531 -324.99998708566085 ;
	setAttr ".tgi[0].vh" -type "double2" 421.42855468250531 323.80951094248991 ;
	setAttr -s 94 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 6371.4287109375;
	setAttr ".tgi[0].ni[0].y" -8101.4287109375;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 6371.4287109375;
	setAttr ".tgi[0].ni[1].y" 18271.427734375;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 6371.4287109375;
	setAttr ".tgi[0].ni[2].y" 10028.5712890625;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 1682.857177734375;
	setAttr ".tgi[0].ni[3].y" 11732.857421875;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 3170;
	setAttr ".tgi[0].ni[4].y" 4232.85693359375;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 6371.4287109375;
	setAttr ".tgi[0].ni[5].y" -6667.14306640625;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 4998.5712890625;
	setAttr ".tgi[0].ni[6].y" -3504.28564453125;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 6371.4287109375;
	setAttr ".tgi[0].ni[7].y" -13571.4287109375;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 6371.4287109375;
	setAttr ".tgi[0].ni[8].y" -13977.142578125;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" -6681.4287109375;
	setAttr ".tgi[0].ni[9].y" 23844.28515625;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 6371.4287109375;
	setAttr ".tgi[0].ni[10].y" 13394.2861328125;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 6371.4287109375;
	setAttr ".tgi[0].ni[11].y" -8260;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 6371.4287109375;
	setAttr ".tgi[0].ni[12].y" -6565.71435546875;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 6371.4287109375;
	setAttr ".tgi[0].ni[13].y" 16827.142578125;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 6371.4287109375;
	setAttr ".tgi[0].ni[14].y" 2680;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 6371.4287109375;
	setAttr ".tgi[0].ni[15].y" 13150;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 6015.71435546875;
	setAttr ".tgi[0].ni[16].y" 7414.28564453125;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 2051.428466796875;
	setAttr ".tgi[0].ni[17].y" 11088.5712890625;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 6371.4287109375;
	setAttr ".tgi[0].ni[18].y" -9224.2861328125;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 6371.4287109375;
	setAttr ".tgi[0].ni[19].y" 9684.2861328125;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 6371.4287109375;
	setAttr ".tgi[0].ni[20].y" -14991.4287109375;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 5674.28564453125;
	setAttr ".tgi[0].ni[21].y" -8010;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 4384.28564453125;
	setAttr ".tgi[0].ni[22].y" 3751.428466796875;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 6371.4287109375;
	setAttr ".tgi[0].ni[23].y" 8351.4287109375;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 6371.4287109375;
	setAttr ".tgi[0].ni[24].y" -14078.5712890625;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 5674.28564453125;
	setAttr ".tgi[0].ni[25].y" 8658.5712890625;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 6371.4287109375;
	setAttr ".tgi[0].ni[26].y" 4438.5712890625;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 6015.71435546875;
	setAttr ".tgi[0].ni[27].y" -2785.71435546875;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 6371.4287109375;
	setAttr ".tgi[0].ni[28].y" -13774.2861328125;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 6371.4287109375;
	setAttr ".tgi[0].ni[29].y" -13165.7138671875;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 5674.28564453125;
	setAttr ".tgi[0].ni[30].y" 12314.2861328125;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 5674.28564453125;
	setAttr ".tgi[0].ni[31].y" 11161.4287109375;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 6371.4287109375;
	setAttr ".tgi[0].ni[32].y" 7332.85693359375;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 6371.4287109375;
	setAttr ".tgi[0].ni[33].y" 10717.142578125;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 6371.4287109375;
	setAttr ".tgi[0].ni[34].y" 9140;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 6371.4287109375;
	setAttr ".tgi[0].ni[35].y" -20265.71484375;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 6371.4287109375;
	setAttr ".tgi[0].ni[36].y" -8361.4287109375;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 6371.4287109375;
	setAttr ".tgi[0].ni[37].y" -20164.28515625;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 4691.4287109375;
	setAttr ".tgi[0].ni[38].y" -12358.5712890625;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 6371.4287109375;
	setAttr ".tgi[0].ni[39].y" -13267.142578125;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 6371.4287109375;
	setAttr ".tgi[0].ni[40].y" -14788.5712890625;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 6371.4287109375;
	setAttr ".tgi[0].ni[41].y" -8735.7138671875;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" 6371.4287109375;
	setAttr ".tgi[0].ni[42].y" 6140;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 6371.4287109375;
	setAttr ".tgi[0].ni[43].y" -6407.14306640625;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 6371.4287109375;
	setAttr ".tgi[0].ni[44].y" -14687.142578125;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 6371.4287109375;
	setAttr ".tgi[0].ni[45].y" -9008.5712890625;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 3170;
	setAttr ".tgi[0].ni[46].y" 3287.142822265625;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 6371.4287109375;
	setAttr ".tgi[0].ni[47].y" 11361.4287109375;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 6371.4287109375;
	setAttr ".tgi[0].ni[48].y" -14585.7138671875;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 6371.4287109375;
	setAttr ".tgi[0].ni[49].y" 6241.4287109375;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 6371.4287109375;
	setAttr ".tgi[0].ni[50].y" 7962.85693359375;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 5674.28564453125;
	setAttr ".tgi[0].ni[51].y" 14944.2861328125;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" 6371.4287109375;
	setAttr ".tgi[0].ni[52].y" -14281.4287109375;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" 6371.4287109375;
	setAttr ".tgi[0].ni[53].y" -12962.857421875;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 5674.28564453125;
	setAttr ".tgi[0].ni[54].y" 8557.142578125;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 6371.4287109375;
	setAttr ".tgi[0].ni[55].y" -15397.142578125;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" 6015.71435546875;
	setAttr ".tgi[0].ni[56].y" -4461.4287109375;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 6371.4287109375;
	setAttr ".tgi[0].ni[57].y" 13005.7138671875;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" 5367.14306640625;
	setAttr ".tgi[0].ni[58].y" 14527.142578125;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" 6371.4287109375;
	setAttr ".tgi[0].ni[59].y" -14382.857421875;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" 6371.4287109375;
	setAttr ".tgi[0].ni[60].y" -8577.142578125;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" 6015.71435546875;
	setAttr ".tgi[0].ni[61].y" -584.28570556640625;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" 6015.71435546875;
	setAttr ".tgi[0].ni[62].y" -425.71429443359375;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" 6371.4287109375;
	setAttr ".tgi[0].ni[63].y" -13875.7138671875;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" 6371.4287109375;
	setAttr ".tgi[0].ni[64].y" -7784.28564453125;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" 6015.71435546875;
	setAttr ".tgi[0].ni[65].y" -11830;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" 6371.4287109375;
	setAttr ".tgi[0].ni[66].y" 6844.28564453125;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" 6371.4287109375;
	setAttr ".tgi[0].ni[67].y" -15600;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" 5674.28564453125;
	setAttr ".tgi[0].ni[68].y" 3708.571533203125;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" 6371.4287109375;
	setAttr ".tgi[0].ni[69].y" 8895.7138671875;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" 6371.4287109375;
	setAttr ".tgi[0].ni[70].y" -12290;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" 6015.71435546875;
	setAttr ".tgi[0].ni[71].y" 5797.14306640625;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" 5674.28564453125;
	setAttr ".tgi[0].ni[72].y" 7777.14306640625;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" 6371.4287109375;
	setAttr ".tgi[0].ni[73].y" -7397.14306640625;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" 6371.4287109375;
	setAttr ".tgi[0].ni[74].y" -14890;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" 6371.4287109375;
	setAttr ".tgi[0].ni[75].y" 13638.5712890625;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" 6371.4287109375;
	setAttr ".tgi[0].ni[76].y" -7942.85693359375;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" 6015.71435546875;
	setAttr ".tgi[0].ni[77].y" -10548.5712890625;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" 6371.4287109375;
	setAttr ".tgi[0].ni[78].y" -9382.857421875;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" 6371.4287109375;
	setAttr ".tgi[0].ni[79].y" -20367.142578125;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" 6015.71435546875;
	setAttr ".tgi[0].ni[80].y" 9915.7138671875;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" 6371.4287109375;
	setAttr ".tgi[0].ni[81].y" -15295.7138671875;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" 5674.28564453125;
	setAttr ".tgi[0].ni[82].y" 12212.857421875;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" 6371.4287109375;
	setAttr ".tgi[0].ni[83].y" 10272.857421875;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" 6371.4287109375;
	setAttr ".tgi[0].ni[84].y" 7088.5712890625;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" 6371.4287109375;
	setAttr ".tgi[0].ni[85].y" -13470;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" 6371.4287109375;
	setAttr ".tgi[0].ni[86].y" -13064.2861328125;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" 6371.4287109375;
	setAttr ".tgi[0].ni[87].y" -5290;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" 6015.71435546875;
	setAttr ".tgi[0].ni[88].y" 7255.71435546875;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" 6371.4287109375;
	setAttr ".tgi[0].ni[89].y" -13672.857421875;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" 6371.4287109375;
	setAttr ".tgi[0].ni[90].y" -20468.572265625;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" 6371.4287109375;
	setAttr ".tgi[0].ni[91].y" 8107.14306640625;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" 6371.4287109375;
	setAttr ".tgi[0].ni[92].y" 22115.71484375;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" 6371.4287109375;
	setAttr ".tgi[0].ni[93].y" -5962.85693359375;
	setAttr ".tgi[0].ni[93].nvs" 18304;
select -ne :time1;
	setAttr ".o" 2;
	setAttr ".unw" 2;
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
connectAttr "TEMP_RigRoot.limbs" "Pinky_Limb_L_NODE.rigRoot";
connectAttr "Pinky_Limb_L_NODE.animGroups" "AnimGroup_aaaa_1.limb";
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
connectAttr "TEMP_RigRoot.limbs" "Middle_Limb_L_NODE.rigRoot";
connectAttr "Middle_Limb_L_NODE.animGroups" "AnimGroup_aaaa_2.limb";
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
connectAttr "TEMP_RigRoot.limbs" "Ring_Limb_L_NODE.rigRoot";
connectAttr "Ring_Limb_L_NODE.animGroups" "AnimGroup_aaaa_3.limb";
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
connectAttr "TEMP_RigRoot.limbs" "Index_Limb_L_NODE.rigRoot";
connectAttr "Index_Limb_L_NODE.animGroups" "AnimGroup_aaaa_4.limb";
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
connectAttr "Shoulder_Joint_L_CTR0_tag.prep" "Pinky1_Joint_L_CTR0_tag.prep";
connectAttr "Shoulder_Joint_L_CTR0_tag.prep" "Pinky2_Joint_L_CTR1_tag.prep";
connectAttr "Shoulder_Joint_L_CTR0_tag.prep" "Pinky3_Joint_L_CTR2_tag.prep";
connectAttr "Shoulder_Joint_L_CTR0_tag.prep" "Pinky4_Joint_L_CTR3_tag.prep";
connectAttr "Clav_Joint_L_CTR0_tag.prep" "Shoulder_Joint_L_CTR0_tag.prep";
connectAttr "Pinky1_Joint_L_CTR0_tag.pare" "Shoulder_Joint_L_CTR0_tag.child[0]";
connectAttr "Pinky2_Joint_L_CTR1_tag.pare" "Shoulder_Joint_L_CTR0_tag.child[1]";
connectAttr "Pinky3_Joint_L_CTR2_tag.pare" "Shoulder_Joint_L_CTR0_tag.child[2]";
connectAttr "Pinky4_Joint_L_CTR3_tag.pare" "Shoulder_Joint_L_CTR0_tag.child[3]";
connectAttr "Thumb1_Joint_L_CTR0_tag.pare" "Shoulder_Joint_L_CTR0_tag.child[4]";
connectAttr "Thumb2_Joint_L_CTR1_tag.pare" "Shoulder_Joint_L_CTR0_tag.child[5]";
connectAttr "Thumb3_Joint_L_CTR2_tag.pare" "Shoulder_Joint_L_CTR0_tag.child[6]";
connectAttr "Thumb4_Joint_L_CTR3_tag.pare" "Shoulder_Joint_L_CTR0_tag.child[7]";
connectAttr "Middle1_Joint_L_CTR0_tag.pare" "Shoulder_Joint_L_CTR0_tag.child[8]"
		;
connectAttr "Middle2_Joint_L_CTR1_tag.pare" "Shoulder_Joint_L_CTR0_tag.child[9]"
		;
connectAttr "Middle3_Joint_L_CTR2_tag.pare" "Shoulder_Joint_L_CTR0_tag.child[10]"
		;
connectAttr "Middle4_Joint_L_CTR3_tag.pare" "Shoulder_Joint_L_CTR0_tag.child[11]"
		;
connectAttr "Ring1_Joint_L_CTR0_tag.pare" "Shoulder_Joint_L_CTR0_tag.child[12]";
connectAttr "Ring2_Joint_L_CTR1_tag.pare" "Shoulder_Joint_L_CTR0_tag.child[13]";
connectAttr "Ring3_Joint_L_CTR2_tag.pare" "Shoulder_Joint_L_CTR0_tag.child[14]";
connectAttr "Ring4_Joint_L_CTR3_tag.pare" "Shoulder_Joint_L_CTR0_tag.child[15]";
connectAttr "Index1_Joint_L_CTR0_tag.pare" "Shoulder_Joint_L_CTR0_tag.child[16]"
		;
connectAttr "Index2_Joint_L_CTR1_tag.pare" "Shoulder_Joint_L_CTR0_tag.child[17]"
		;
connectAttr "Index3_Joint_L_CTR2_tag.pare" "Shoulder_Joint_L_CTR0_tag.child[18]"
		;
connectAttr "Index4_Joint_L_CTR3_tag.pare" "Shoulder_Joint_L_CTR0_tag.child[19]"
		;
connectAttr "Shoulder_Joint_R_CTR0_tag.prep" "Thumb1_Joint_R_CTR0_tag.prep";
connectAttr "Shoulder_Joint_R_CTR0_tag.prep" "Thumb2_Joint_R_CTR1_tag.prep";
connectAttr "Shoulder_Joint_R_CTR0_tag.prep" "Thumb3_Joint_R_CTR2_tag.prep";
connectAttr "Shoulder_Joint_R_CTR0_tag.prep" "Thumb4_Joint_R_CTR3_tag.prep";
connectAttr "Clav_Joint_R_CTR0_tag.prep" "Shoulder_Joint_R_CTR0_tag.prep";
connectAttr "Thumb1_Joint_R_CTR0_tag.pare" "Shoulder_Joint_R_CTR0_tag.child[0]";
connectAttr "Thumb2_Joint_R_CTR1_tag.pare" "Shoulder_Joint_R_CTR0_tag.child[1]";
connectAttr "Thumb3_Joint_R_CTR2_tag.pare" "Shoulder_Joint_R_CTR0_tag.child[2]";
connectAttr "Thumb4_Joint_R_CTR3_tag.pare" "Shoulder_Joint_R_CTR0_tag.child[3]";
connectAttr "Pinky1_Joint_R_CTR0_tag.pare" "Shoulder_Joint_R_CTR0_tag.child[4]";
connectAttr "Pinky2_Joint_R_CTR1_tag.pare" "Shoulder_Joint_R_CTR0_tag.child[5]";
connectAttr "Pinky3_Joint_R_CTR2_tag.pare" "Shoulder_Joint_R_CTR0_tag.child[6]";
connectAttr "Pinky4_Joint_R_CTR3_tag.pare" "Shoulder_Joint_R_CTR0_tag.child[7]";
connectAttr "Middle1_Joint_R_CTR0_tag.pare" "Shoulder_Joint_R_CTR0_tag.child[8]"
		;
connectAttr "Middle2_Joint_R_CTR1_tag.pare" "Shoulder_Joint_R_CTR0_tag.child[9]"
		;
connectAttr "Middle3_Joint_R_CTR2_tag.pare" "Shoulder_Joint_R_CTR0_tag.child[10]"
		;
connectAttr "Middle4_Joint_R_CTR3_tag.pare" "Shoulder_Joint_R_CTR0_tag.child[11]"
		;
connectAttr "Index1_Joint_R_CTR0_tag.pare" "Shoulder_Joint_R_CTR0_tag.child[12]"
		;
connectAttr "Index2_Joint_R_CTR1_tag.pare" "Shoulder_Joint_R_CTR0_tag.child[13]"
		;
connectAttr "Index3_Joint_R_CTR2_tag.pare" "Shoulder_Joint_R_CTR0_tag.child[14]"
		;
connectAttr "Index4_Joint_R_CTR3_tag.pare" "Shoulder_Joint_R_CTR0_tag.child[15]"
		;
connectAttr "Ring1_Joint_R_CTR0_tag.pare" "Shoulder_Joint_R_CTR0_tag.child[16]";
connectAttr "Ring2_Joint_R_CTR1_tag.pare" "Shoulder_Joint_R_CTR0_tag.child[17]";
connectAttr "Ring3_Joint_R_CTR2_tag.pare" "Shoulder_Joint_R_CTR0_tag.child[18]";
connectAttr "Ring4_Joint_R_CTR3_tag.pare" "Shoulder_Joint_R_CTR0_tag.child[19]";
connectAttr "Neck_Joint_M_CTR0_tag.prep" "Head1_Joint_M_CTR0_tag.prep";
connectAttr "Eye_Joint_R_CTR0_tag.pare" "Head1_Joint_M_CTR0_tag.child[0]";
connectAttr "Eye_Joint_L_CTR0_tag.pare" "Head1_Joint_M_CTR0_tag.child[1]";
connectAttr "Neck_Joint_M_CTR0_tag.prep" "Head2_Joint_M_CTR1_tag.prep";
connectAttr "Spine1_Joint_M_CTR0_tag.prep" "Neck_Joint_M_CTR0_tag.prep";
connectAttr "Head1_Joint_M_CTR0_tag.pare" "Neck_Joint_M_CTR0_tag.child[0]";
connectAttr "Head2_Joint_M_CTR1_tag.pare" "Neck_Joint_M_CTR0_tag.child[1]";
connectAttr "Root_Joint_M_CTR0_tag.prep" "Hip_Joint_R_CTR0_tag.prep";
connectAttr "Ball_Joint_R_CTR0_tag.pare" "Hip_Joint_R_CTR0_tag.child[0]";
connectAttr "Toe_Joint_R_CTR1_tag.pare" "Hip_Joint_R_CTR0_tag.child[1]";
connectAttr "Root_Joint_M_CTR0_tag.prep" "Knee_Joint_R_CTR1_tag.prep";
connectAttr "Root_Joint_M_CTR0_tag.prep" "Ankle_Joint_R_CTR2_tag.prep";
connectAttr "controller1.prep" "Root_Joint_M_CTR0_tag.prep";
connectAttr "Hip_Joint_R_CTR0_tag.pare" "Root_Joint_M_CTR0_tag.child[0]";
connectAttr "Knee_Joint_R_CTR1_tag.pare" "Root_Joint_M_CTR0_tag.child[1]";
connectAttr "Ankle_Joint_R_CTR2_tag.pare" "Root_Joint_M_CTR0_tag.child[2]";
connectAttr "Hip_Joint_L_CTR0_tag.pare" "Root_Joint_M_CTR0_tag.child[3]";
connectAttr "Knee_Joint_L_CTR1_tag.pare" "Root_Joint_M_CTR0_tag.child[4]";
connectAttr "Ankle_Joint_L_CTR2_tag.pare" "Root_Joint_M_CTR0_tag.child[5]";
connectAttr "Spine1_Joint_M_CTR0_tag.pare" "Root_Joint_M_CTR0_tag.child[6]";
connectAttr "Spine2_Joint_M_CTR1_tag.pare" "Root_Joint_M_CTR0_tag.child[7]";
connectAttr "Spine3_Joint_M_CTR2_tag.pare" "Root_Joint_M_CTR0_tag.child[8]";
connectAttr "Root_Joint_M_CTR0_tag.prep" "Hip_Joint_L_CTR0_tag.prep";
connectAttr "Ball_Joint_L_CTR0_tag.pare" "Hip_Joint_L_CTR0_tag.child[0]";
connectAttr "Toe_Joint_L_CTR1_tag.pare" "Hip_Joint_L_CTR0_tag.child[1]";
connectAttr "Root_Joint_M_CTR0_tag.prep" "Knee_Joint_L_CTR1_tag.prep";
connectAttr "Root_Joint_M_CTR0_tag.prep" "Ankle_Joint_L_CTR2_tag.prep";
connectAttr "Shoulder_Joint_R_CTR0_tag.prep" "Pinky1_Joint_R_CTR0_tag.prep";
connectAttr "Shoulder_Joint_R_CTR0_tag.prep" "Pinky2_Joint_R_CTR1_tag.prep";
connectAttr "Shoulder_Joint_R_CTR0_tag.prep" "Pinky3_Joint_R_CTR2_tag.prep";
connectAttr "Shoulder_Joint_R_CTR0_tag.prep" "Pinky4_Joint_R_CTR3_tag.prep";
connectAttr "Shoulder_Joint_L_CTR0_tag.prep" "Thumb1_Joint_L_CTR0_tag.prep";
connectAttr "Shoulder_Joint_L_CTR0_tag.prep" "Thumb2_Joint_L_CTR1_tag.prep";
connectAttr "Shoulder_Joint_L_CTR0_tag.prep" "Thumb3_Joint_L_CTR2_tag.prep";
connectAttr "Shoulder_Joint_L_CTR0_tag.prep" "Thumb4_Joint_L_CTR3_tag.prep";
connectAttr "Root_Joint_M_CTR0_tag.prep" "Spine1_Joint_M_CTR0_tag.prep";
connectAttr "Neck_Joint_M_CTR0_tag.pare" "Spine1_Joint_M_CTR0_tag.child[0]";
connectAttr "Clav_Joint_L_CTR0_tag.pare" "Spine1_Joint_M_CTR0_tag.child[1]";
connectAttr "Clav_Joint_R_CTR0_tag.pare" "Spine1_Joint_M_CTR0_tag.child[2]";
connectAttr "Root_Joint_M_CTR0_tag.prep" "Spine2_Joint_M_CTR1_tag.prep";
connectAttr "Root_Joint_M_CTR0_tag.prep" "Spine3_Joint_M_CTR2_tag.prep";
connectAttr "Shoulder_Joint_L_CTR0_tag.prep" "Middle1_Joint_L_CTR0_tag.prep";
connectAttr "Shoulder_Joint_L_CTR0_tag.prep" "Middle2_Joint_L_CTR1_tag.prep";
connectAttr "Shoulder_Joint_L_CTR0_tag.prep" "Middle3_Joint_L_CTR2_tag.prep";
connectAttr "Shoulder_Joint_L_CTR0_tag.prep" "Middle4_Joint_L_CTR3_tag.prep";
connectAttr "Shoulder_Joint_R_CTR0_tag.prep" "Middle1_Joint_R_CTR0_tag.prep";
connectAttr "Shoulder_Joint_R_CTR0_tag.prep" "Middle2_Joint_R_CTR1_tag.prep";
connectAttr "Shoulder_Joint_R_CTR0_tag.prep" "Middle3_Joint_R_CTR2_tag.prep";
connectAttr "Shoulder_Joint_R_CTR0_tag.prep" "Middle4_Joint_R_CTR3_tag.prep";
connectAttr "Head1_Joint_M_CTR0_tag.prep" "Eye_Joint_R_CTR0_tag.prep";
connectAttr "Hip_Joint_L_CTR0_tag.prep" "Ball_Joint_L_CTR0_tag.prep";
connectAttr "Hip_Joint_L_CTR0_tag.prep" "Toe_Joint_L_CTR1_tag.prep";
connectAttr "Hip_Joint_R_CTR0_tag.prep" "Ball_Joint_R_CTR0_tag.prep";
connectAttr "Hip_Joint_R_CTR0_tag.prep" "Toe_Joint_R_CTR1_tag.prep";
connectAttr "Head1_Joint_M_CTR0_tag.prep" "Eye_Joint_L_CTR0_tag.prep";
connectAttr "Root_Joint_M_CTR0_tag.pare" "controller1.child[0]";
connectAttr "Shoulder_Joint_L_CTR0_tag.prep" "Ring1_Joint_L_CTR0_tag.prep";
connectAttr "Shoulder_Joint_L_CTR0_tag.prep" "Ring2_Joint_L_CTR1_tag.prep";
connectAttr "Shoulder_Joint_L_CTR0_tag.prep" "Ring3_Joint_L_CTR2_tag.prep";
connectAttr "Shoulder_Joint_L_CTR0_tag.prep" "Ring4_Joint_L_CTR3_tag.prep";
connectAttr "Clav_Joint_L_CTR0_tag.prep" "Elbow_Joint_L_CTR1_tag.prep";
connectAttr "Clav_Joint_L_CTR0_tag.prep" "Wrist_Joint_L_CTR2_tag.prep";
connectAttr "Spine1_Joint_M_CTR0_tag.prep" "Clav_Joint_L_CTR0_tag.prep";
connectAttr "Shoulder_Joint_L_CTR0_tag.pare" "Clav_Joint_L_CTR0_tag.child[0]";
connectAttr "Elbow_Joint_L_CTR1_tag.pare" "Clav_Joint_L_CTR0_tag.child[1]";
connectAttr "Wrist_Joint_L_CTR2_tag.pare" "Clav_Joint_L_CTR0_tag.child[2]";
connectAttr "Shoulder_Joint_R_CTR0_tag.prep" "Index1_Joint_R_CTR0_tag.prep";
connectAttr "Shoulder_Joint_R_CTR0_tag.prep" "Index2_Joint_R_CTR1_tag.prep";
connectAttr "Shoulder_Joint_R_CTR0_tag.prep" "Index3_Joint_R_CTR2_tag.prep";
connectAttr "Shoulder_Joint_R_CTR0_tag.prep" "Index4_Joint_R_CTR3_tag.prep";
connectAttr "Shoulder_Joint_L_CTR0_tag.prep" "Index1_Joint_L_CTR0_tag.prep";
connectAttr "Shoulder_Joint_L_CTR0_tag.prep" "Index2_Joint_L_CTR1_tag.prep";
connectAttr "Shoulder_Joint_L_CTR0_tag.prep" "Index3_Joint_L_CTR2_tag.prep";
connectAttr "Shoulder_Joint_L_CTR0_tag.prep" "Index4_Joint_L_CTR3_tag.prep";
connectAttr "Spine1_Joint_M_CTR0_tag.prep" "Clav_Joint_R_CTR0_tag.prep";
connectAttr "Shoulder_Joint_R_CTR0_tag.pare" "Clav_Joint_R_CTR0_tag.child[0]";
connectAttr "Elbow_Joint_R_CTR1_tag.pare" "Clav_Joint_R_CTR0_tag.child[1]";
connectAttr "Wrist_Joint_R_CTR2_tag.pare" "Clav_Joint_R_CTR0_tag.child[2]";
connectAttr "Clav_Joint_R_CTR0_tag.prep" "Elbow_Joint_R_CTR1_tag.prep";
connectAttr "Clav_Joint_R_CTR0_tag.prep" "Wrist_Joint_R_CTR2_tag.prep";
connectAttr "Shoulder_Joint_R_CTR0_tag.prep" "Ring1_Joint_R_CTR0_tag.prep";
connectAttr "Shoulder_Joint_R_CTR0_tag.prep" "Ring2_Joint_R_CTR1_tag.prep";
connectAttr "Shoulder_Joint_R_CTR0_tag.prep" "Ring3_Joint_R_CTR2_tag.prep";
connectAttr "Shoulder_Joint_R_CTR0_tag.prep" "Ring4_Joint_R_CTR3_tag.prep";
connectAttr "Index4_Joint_R_CTR3_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "materialInfo3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "Head2_Joint_M_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "Index_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "Pinky_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "Middle4_Joint_R_CTR3_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "Clav_Joint_L_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "Ring1_Joint_L_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "Thumb4_Joint_L_CTR3_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "TEMP_RigRoot.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "Elbow_Joint_R_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "Index2_Joint_R_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "Middle1_Joint_R_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "sceneConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "materialInfo4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn";
connectAttr "Spine2_Joint_M_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "LControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "Ring_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "Pinky2_Joint_R_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "materialInfo1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn";
connectAttr "Index4_Joint_L_CTR3_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "asdf1:Beta_HighLimbsGeoSG2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "Ring3_Joint_L_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "Toe_Joint_L_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "Middle4_Joint_L_CTR3_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "TempMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn";
connectAttr "Control_Shapes_materialInfo1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "MControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "Middle2_Joint_L_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "Thumb3_Joint_R_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "Clav_Joint_R_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "LControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "Toe_Joint_R_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "Ball_Joint_L_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "controller1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn";
connectAttr "Pinky1_Joint_L_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "Ring1_Joint_R_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "Pinky3_Joint_L_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "Shoulder_Joint_L_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "Thumb4_Joint_R_CTR3_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "Ring4_Joint_L_CTR3_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "Ring4_Joint_R_CTR3_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "Eye_Joint_R_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "Middle3_Joint_R_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "Ring2_Joint_L_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "Pinky1_Joint_R_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "Middle_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "Spine3_Joint_M_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "Thumb2_Joint_L_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn"
		;
connectAttr "materialInfo5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn";
connectAttr "Ankle_Joint_R_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "Neck_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "Thumb3_Joint_L_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "Thumb1_Joint_R_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "RControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "Index2_Joint_L_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "RControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "Wrist_Joint_R_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "Spine1_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "Middle1_Joint_L_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "Ring2_Joint_R_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "lambert2SG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn";
connectAttr "Beta_JointsSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn";
connectAttr "Middle3_Joint_L_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "Ring3_Joint_R_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "Beta_SurfaceSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn";
connectAttr "Knee_Joint_L_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "Index3_Joint_L_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn"
		;
connectAttr "MControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "Eye_Joint_L_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn"
		;
connectAttr "materialInfo2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn";
connectAttr "Hip_Joint_R_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "Beta_Joints_MAT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "Index1_Joint_R_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "Wrist_Joint_L_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn"
		;
connectAttr "uiConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn"
		;
connectAttr "Index3_Joint_R_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn"
		;
connectAttr "Shoulder_Joint_R_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "Pinky3_Joint_R_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn"
		;
connectAttr "Pinky4_Joint_L_CTR3_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "Head1_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn"
		;
connectAttr "Index1_Joint_L_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn"
		;
connectAttr "Root_Joint_M_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn"
		;
connectAttr "Knee_Joint_R_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "Ball_Joint_R_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "Thumb1_Joint_L_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "Thumb2_Joint_R_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "Pinky4_Joint_R_CTR3_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "Hip_Joint_L_CTR0_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "Elbow_Joint_L_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn"
		;
connectAttr "Pinky2_Joint_L_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "Ankle_Joint_L_CTR2_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn"
		;
connectAttr "LIMBS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn";
connectAttr "Middle2_Joint_R_CTR1_tag.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn"
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
// End of aaaa.ma
