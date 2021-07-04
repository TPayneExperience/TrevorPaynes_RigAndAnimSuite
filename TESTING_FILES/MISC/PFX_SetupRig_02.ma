//Maya ASCII 2019 scene
//Name: PFX_SetupRig_02.ma
//Last modified: Sat, Jul 03, 2021 08:42:20 PM
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
	rename -uid "24B81DE8-4CCC-265D-DA66-B6AFDB33FC6A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 12.439959170974285 186.65670234541869 27.632329460691707 ;
	setAttr ".r" -type "double3" -39.338352729605084 28.200000000000127 -1.804460582794227e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "D4683F78-4EEB-1DEB-39CF-FCA53F1577AC";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 24.691920154016266;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 3.954507715824227 171.08798043174394 11.426126716207044 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "9803C6CC-4E93-6460-144D-95BF47B7A76E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "E5417263-407F-F6E5-24E5-78B730432E32";
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
	rename -uid "59A79895-41A9-B848-F241-B69AE907E6EE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "48C0E109-4192-78EF-8546-B4B3BD149806";
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
	rename -uid "524B43E9-49C1-B5C8-5563-10B2F29AEEA2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "27A0DF9B-4392-F902-C9C3-8FB8E4E6C437";
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
	rename -uid "41B0EA03-4E8E-FBF0-5139-6C83F0A4D58D";
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
	setAttr ".pfrsName" -type "string" "TEMP";
	setAttr ".category" -type "string" "Rigging_Setup";
	setAttr ".operation" -type "string" "Limb Setup";
	setAttr ".nextLimbID" 41;
	setAttr ".nextJointID" 38;
	setAttr ".posesFolderPath" -type "string" "D:/Assets/Programming/Python/Maya/PayneFreeRigSuite/TESTING_FILES/MISC\\Poses";
createNode transform -n "JOINTS" -p "TEMP_RigRoot";
	rename -uid "A9B57FD8-478D-2BDE-2827-4EAEE32817D2";
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
	rename -uid "5200297A-489E-56D2-6930-52961AFC0ADF";
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
	setAttr ".t" -type "double3" 0 130 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999972 6.9902515623534738 90 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 1.6834143485471333;
	setAttr ".ID" 2;
	setAttr ".pfrsName" -type "string" "Spine";
createNode joint -n "Neck_Neck_M_JNT" -p "Spine_Spine_M_JNT";
	rename -uid "E949A6B0-433B-43FD-2C6D-6B982A9A2F73";
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
	setAttr ".t" -type "double3" 23.879344071911241 -1.7763568394002505e-15 -4.9303806576313238e-31 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -5.5656248200911511e-15 20.485984843149424 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.87767989730109608;
	setAttr ".ID" 37;
	setAttr ".pfrsName" -type "string" "Neck";
createNode joint -n "Head_Head1_M_JNT" -p "Neck_Neck_M_JNT";
	rename -uid "3EEBBACB-4EBD-2F32-D33F-7AA7B9B1BF6B";
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
	setAttr ".t" -type "double3" 8.301811347821193 4.6629367034256575e-15 -8.0642531931340448e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.8383448530397691e-15 1.1912747353157431e-14 -17.545079193587753 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.640282449385709;
	setAttr ".ID" 21;
	setAttr ".pfrsName" -type "string" "Head1";
createNode joint -n "Head_Head2_M_JNT" -p "Head_Head1_M_JNT";
	rename -uid "0DFA0496-4A40-64D8-2580-1BB31CA59ADC";
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
	setAttr ".t" -type "double3" 21.271677892626514 5.3290705182007514e-15 -4.4227363108786092e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 58.959187525616294 89.999999999999972 0 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 1.5485350634117161;
	setAttr ".ID" 22;
	setAttr ".pfrsName" -type "string" "Head2";
createNode transform -n "Head2_Joint_M_GRP1" -p "Head_Head2_M_JNT";
	rename -uid "62E1CCC6-4462-8CFD-F427-58AEBBD51C1E";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Head2_Joint_M_CTR1" -p "Head2_Joint_M_GRP1";
	rename -uid "2E2E2646-4A7E-A330-89B8-72B1EFFAC901";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Head2_Joint_M_CTR1Shape" -p "Head2_Joint_M_CTR1";
	rename -uid "A4A4A9A8-4F45-0BA1-D73A-F6BD56C75996";
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
createNode joint -n "Jaw_Jaw1_M_JNT" -p "Head_Head1_M_JNT";
	rename -uid "482307B5-49BF-5C49-42BB-D19FA0EB1A39";
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
	setAttr ".t" -type "double3" 3.6777220281026928 -0.50423227008099047 -9.337751018760592e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.8850575836185022e-14 1.975120769384203e-14 -87.326908790938845 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.95617703390454112;
	setAttr ".ID" 3;
	setAttr ".pfrsName" -type "string" "Jaw1";
createNode joint -n "Jaw_Jaw2_M_JNT" -p "Jaw_Jaw1_M_JNT";
	rename -uid "8799CE8A-4080-77A1-6C0A-FE8E59D037B5";
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
	setAttr ".t" -type "double3" 12.708888356906058 -1.6161898619570245 -4.0706667358299615e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 87.326908790938845 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.95617703390454112;
	setAttr ".ID" 4;
	setAttr ".pfrsName" -type "string" "Jaw2";
createNode transform -n "Jaw2_Joint_M_GRP1" -p "Jaw_Jaw2_M_JNT";
	rename -uid "DCEAE894-4F5F-2123-220B-BEAD80A15E7B";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Jaw2_Joint_M_CTR1" -p "Jaw2_Joint_M_GRP1";
	rename -uid "FCFE8A1D-4D39-A998-DC38-C4B6F69BCEC8";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Jaw2_Joint_M_CTR1Shape" -p "Jaw2_Joint_M_CTR1";
	rename -uid "94283BA9-43DA-33BE-A37A-D2B08A4EA0B7";
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
createNode transform -n "Jaw1_Joint_M_GRP0" -p "Jaw_Jaw1_M_JNT";
	rename -uid "25CF2091-4AEA-F0C7-F814-0BBBD8D5DB4E";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Jaw1_Joint_M_CTR0" -p "Jaw1_Joint_M_GRP0";
	rename -uid "B6978DE1-4CC7-D82C-BF5A-D8B4E07488F3";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Jaw1_Joint_M_CTR0Shape" -p "Jaw1_Joint_M_CTR0";
	rename -uid "1A3B7AE7-4F47-3B8B-0137-6796CEFFC9FE";
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
createNode joint -n "UpperFace_UF1_M_JNT" -p "Head_Head1_M_JNT";
	rename -uid "B491AADA-46F3-0679-B321-B0969CEF6571";
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
	setAttr ".t" -type "double3" 7.7956456838605925 -1.0927082562046342 -1.9873301155242299e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -87.326908790938845 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.95617703390454112;
	setAttr ".ID" 1;
	setAttr ".pfrsName" -type "string" "UF1";
createNode joint -n "FaceBrow_Brow1_L_JNT" -p "UpperFace_UF1_M_JNT";
	rename -uid "59E5708C-4740-FA4C-8688-83A9231BFA94";
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
	setAttr ".t" -type "double3" 6.0219746905668785 6.8527327263816744 -2.1872999668121369 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -163.44127248385874 -7.3925015688501405 120.67979645073697 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.5;
	setAttr ".ID" 23;
	setAttr ".pfrsName" -type "string" "Brow1";
createNode joint -n "FaceBrow_Brow2_L_JNT" -p "UpperFace_UF1_M_JNT";
	rename -uid "E19BBA79-4BEC-8DC1-3CC2-A5B38F9F7309";
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
	setAttr ".t" -type "double3" 5.5850769520825878 6.9728881458824503 -4.2221279680112884 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -162.62531900481184 0.50064827380391874 123.18629094073201 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.5;
	setAttr ".ID" 24;
	setAttr ".pfrsName" -type "string" "Brow2";
createNode joint -n "FaceBrow_Brow3_L_JNT" -p "UpperFace_UF1_M_JNT";
	rename -uid "B69A4A9C-421A-DB28-C3BA-F7801FC5F421";
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
	setAttr ".t" -type "double3" 4.3798145826556691 5.7797861048792072 -5.5333063335861006 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -130.9295727119858 7.1840647365616741 128.11179079718187 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.5;
	setAttr ".ID" 25;
	setAttr ".pfrsName" -type "string" "Brow3";
createNode transform -n "UF1_Joint_M_GRP0" -p "UpperFace_UF1_M_JNT";
	rename -uid "A78858F5-41AF-9E5A-0168-9F95F8915C78";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "UF1_Joint_M_CTR0" -p "UF1_Joint_M_GRP0";
	rename -uid "BA8AB0D1-423C-0AA3-5ED4-8886150C8882";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "UF1_Joint_M_CTR0Shape" -p "UF1_Joint_M_CTR0";
	rename -uid "6DE3B78C-429D-9B49-A797-DCABA1658987";
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
createNode joint -n "FaceBrow_Brow1_R_JNT" -p "UpperFace_UF1_M_JNT";
	rename -uid "7E43E46E-4963-6708-0BA4-D9A202EA8B3C";
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
	setAttr ".t" -type "double3" 6.0219746905668785 6.8527327263817028 2.187299966812124 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -16.558727516141225 7.3925015688501281 120.67979645073697 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.5;
	setAttr ".ID" 23;
	setAttr ".pfrsName" -type "string" "Brow1";
createNode joint -n "FaceBrow_Brow2_R_JNT" -p "UpperFace_UF1_M_JNT";
	rename -uid "9AEDE592-453D-AA35-35D1-0CB814486FA4";
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
	setAttr ".t" -type "double3" 5.5850769520825878 6.9728881458824787 4.222127968011276 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -17.374680995188111 -0.50064827380392174 123.18629094073201 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.5;
	setAttr ".ID" 24;
	setAttr ".pfrsName" -type "string" "Brow2";
createNode joint -n "FaceBrow_Brow3_R_JNT" -p "UpperFace_UF1_M_JNT";
	rename -uid "3828B1BF-45C6-2712-4C66-ABB2F17AC14D";
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
	setAttr ".t" -type "double3" 4.3798145826556691 5.7797861048792356 5.5333063335860899 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -49.070427288014166 -7.1840647365616848 128.11179079718184 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.5;
	setAttr ".ID" 25;
	setAttr ".pfrsName" -type "string" "Brow3";
createNode transform -n "Head1_Joint_M_GRP0" -p "Head_Head1_M_JNT";
	rename -uid "06D90156-4E63-5904-FDA7-00A2EB6AEE56";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Head1_Joint_M_CTR0" -p "Head1_Joint_M_GRP0";
	rename -uid "583C4DA8-4B18-D116-169B-9F80CDAEBCCE";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Head1_Joint_M_CTR0Shape" -p "Head1_Joint_M_CTR0";
	rename -uid "C1CABAB0-4FAB-8FD3-8995-7F9FF8D6260A";
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
	rename -uid "D0B6B6C6-499E-8EDA-0DFE-7E99C6ACE44B";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Neck_Joint_M_CTR0" -p "Neck_Joint_M_GRP0";
	rename -uid "D3054611-43E5-E129-A531-418A151A638E";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Neck_Joint_M_CTR0Shape" -p "Neck_Joint_M_CTR0";
	rename -uid "96C556DF-46DE-3DBB-D966-94801FC73FC2";
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
createNode transform -n "Spine_Joint_M_GRP0" -p "Spine_Spine_M_JNT";
	rename -uid "6A73E4A6-42C7-3639-F423-BC882C331803";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Spine_Joint_M_CTR0" -p "Spine_Joint_M_GRP0";
	rename -uid "93B6C5FE-412F-9C94-EE24-E490081278B4";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Spine_Joint_M_CTR0Shape" -p "Spine_Joint_M_CTR0";
	rename -uid "2C3C4A44-4DAB-9E13-C01E-0C899B6728D6";
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
createNode joint -n "Clav_Clav01_L_JNT" -p "Spine_Spine_M_JNT";
	rename -uid "D51392C9-429D-A322-9D19-0989F7D638E4";
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
	setAttr ".t" -type "double3" 6.9899335621539365 -2.7041199549399497 8.2724914959529539 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000000000000028 0 6.9902515623534631 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.75649287571448476;
	setAttr ".ID" 20;
	setAttr ".pfrsName" -type "string" "Clav01";
createNode joint -n "Arm_Shoulder_L_JNT" -p "Clav_Clav01_L_JNT";
	rename -uid "108750FC-4B60-964E-4340-729EDCD2213E";
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
	setAttr ".t" -type "double3" 2.8421709430404007e-14 5.958861837017448 -4.4408920985006262e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.9049107295002183 7.1562464228343348e-15 -7.1944006104315815e-06 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 1.6370063315610384;
	setAttr ".ID" 9;
	setAttr ".pfrsName" -type "string" "Shoulder";
createNode joint -n "Arm_Elbow_L_JNT" -p "Arm_Shoulder_L_JNT";
	rename -uid "B45AC9E9-4039-F3A9-AB4D-889A05BDA07B";
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
	setAttr ".t" -type "double3" 3.1906495223665843e-09 22.982122410180068 -4.4408920985006262e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.8357849960177099 2.39147932977692e-07 7.1904249334747945e-06 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 1.6210280660764069;
	setAttr ".ID" 10;
	setAttr ".pfrsName" -type "string" "Elbow";
createNode joint -n "ArmTwist_AT1_L_JNT" -p "Arm_Elbow_L_JNT";
	rename -uid "91F8F547-474B-6B25-AC75-D4B1A560E5C4";
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
	setAttr ".t" -type "double3" 2.8421709430404007e-14 8.2590955173458198 8.8817841970012523e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".ID" 26;
	setAttr ".pfrsName" -type "string" "AT1";
createNode joint -n "ArmTwist_AT2_L_JNT" -p "Arm_Elbow_L_JNT";
	rename -uid "FEA09DF1-4448-BE10-1829-E3AF26586FE2";
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
	setAttr ".t" -type "double3" 5.6843418860808015e-14 13.321355045119581 8.8817841970012523e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".ID" 27;
	setAttr ".pfrsName" -type "string" "AT2";
createNode joint -n "ArmTwist_AT3_L_JNT" -p "Arm_Elbow_L_JNT";
	rename -uid "90547526-42EF-B11B-1D95-A1868357A545";
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
	setAttr ".t" -type "double3" 5.6843418860808015e-14 18.524062215656997 8.8817841970012523e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".ID" 28;
	setAttr ".pfrsName" -type "string" "AT3";
createNode joint -n "Arm_Wrist_L_JNT" -p "Arm_Elbow_L_JNT";
	rename -uid "575CE7C4-47FB-6F23-C0E4-6790EEFD8D0F";
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
	setAttr ".t" -type "double3" 8.5265128291212022e-14 22.673209277477198 -1.4210854715202004e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -40.065120139157898 1.26665018297487e-05 3.4739489547952212e-05 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".ID" 11;
	setAttr ".pfrsName" -type "string" "Wrist";
createNode joint -n "Thumb_Thumb1_L_JNT" -p "Arm_Wrist_L_JNT";
	rename -uid "54806AA0-415E-1193-4AAE-49993294B6DF";
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
	setAttr ".t" -type "double3" 2.8421709430404007e-14 4.7621319407476506 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.1881757197993119 -5.1937911513090338 35.669611856112759 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.55172413793103448;
	setAttr ".ID" 33;
	setAttr ".pfrsName" -type "string" "Thumb1";
createNode joint -n "Thumb_Thumb2_L_JNT" -p "Thumb_Thumb1_L_JNT";
	rename -uid "F6B9E874-453B-3AB1-8359-4B85A5B90E37";
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
	setAttr ".t" -type "double3" 2.8421709430404007e-14 1.9999999999999929 1.4210854715202004e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.9695985344500482 -7.1640333689143434 2.3162970584892233 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 34;
	setAttr ".pfrsName" -type "string" "Thumb2";
createNode joint -n "Thumb_Thumb3_L_JNT" -p "Thumb_Thumb2_L_JNT";
	rename -uid "1225B37A-4FA5-428C-E22D-C3AB1ACD1474";
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
	setAttr ".t" -type "double3" -2.8421709430404007e-14 1.9068061047390046 -7.1054273576010019e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 14.700970880049908 -12.404082602798862 0.43322180367424501 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 35;
	setAttr ".pfrsName" -type "string" "Thumb3";
createNode joint -n "Thumb_Thumb4_L_JNT" -p "Thumb_Thumb3_L_JNT";
	rename -uid "DC09FEDB-494A-6AA7-5E86-D6A74137FFB2";
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
	setAttr ".t" -type "double3" -2.8421709430404007e-14 2.1353298302242081 3.7747582837255322e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 36;
	setAttr ".pfrsName" -type "string" "Thumb4";
createNode joint -n "Pinkie_Pinkey1_L_JNT" -p "Arm_Wrist_L_JNT";
	rename -uid "36F75DA1-4383-482D-7AEE-B39250F723D2";
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
	setAttr ".t" -type "double3" -1.039132598634751e-06 0.89548226195621083 5.9043548528036851 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 41.995994405675276 1.2838817583823479e-05 -3.4573661286087401e-05 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.55172413793103448;
	setAttr ".ID" 12;
	setAttr ".pfrsName" -type "string" "Pinkey1";
createNode joint -n "Pinkie_Pinkey2_L_JNT" -p "Pinkie_Pinkey1_L_JNT";
	rename -uid "01EC0B68-425D-CC12-DDE9-918F0716DBD7";
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
	setAttr ".t" -type "double3" 0 2.678815589999175 8.8817841970012523e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.6134378248190441e-13 -2.2183387632639782e-14 6.5114737805200917 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 13;
	setAttr ".pfrsName" -type "string" "Pinkey2";
createNode joint -n "Pinkie_Pinkey3_L_JNT" -p "Pinkie_Pinkey2_L_JNT";
	rename -uid "9CECCDB9-4E16-EAE5-2D45-7E98A52801EA";
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
	setAttr ".t" -type "double3" 0 2.7939882272465013 8.8817841970012523e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 9.6431460058394887 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 14;
	setAttr ".pfrsName" -type "string" "Pinkey3";
createNode joint -n "Pinkie_Pinkey4_L_JNT" -p "Pinkie_Pinkey3_L_JNT";
	rename -uid "5EB05D04-4DF8-2D0E-77A2-D0A014AFD3D9";
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
	setAttr ".t" -type "double3" 2.8421709430404007e-14 2.6498508047635987 -1.7763568394002505e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 15;
	setAttr ".pfrsName" -type "string" "Pinkey4";
createNode joint -n "Index_Index1_L_JNT" -p "Arm_Wrist_L_JNT";
	rename -uid "7826739C-427D-7781-25DC-3DAF16976C76";
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
	setAttr ".t" -type "double3" 4.4000063326166128e-07 4.7228901357504682 2.0979286075327508 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 41.995994405675383 1.2838817589257865e-05 -3.4573661290815126e-05 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.55172413793103448;
	setAttr ".ID" 29;
	setAttr ".pfrsName" -type "string" "Index1";
createNode joint -n "Index_Index2_L_JNT" -p "Index_Index1_L_JNT";
	rename -uid "2DE2DB9D-4DF1-0E70-C92A-35BD8D8BA524";
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
	setAttr ".t" -type "double3" 0 2.678815589999175 2.4424906541753444e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.0643180419982586e-14 -1.042944269911856e-14 6.5114737805200988 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 30;
	setAttr ".pfrsName" -type "string" "Index2";
createNode joint -n "Index_Index3_L_JNT" -p "Index_Index2_L_JNT";
	rename -uid "2536C2BE-43B6-1566-D329-1B93D085A9B6";
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
	setAttr ".t" -type "double3" 0 2.7939882272465013 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 9.6431460058388616 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 31;
	setAttr ".pfrsName" -type "string" "Index3";
createNode joint -n "Index_Index4_L_JNT" -p "Index_Index3_L_JNT";
	rename -uid "4E1CE119-4212-F8F3-ED76-D19F7A39AEBF";
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
	setAttr ".t" -type "double3" -5.6843418860808015e-14 2.6498508047635951 -2.2204460492503131e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 32;
	setAttr ".pfrsName" -type "string" "Index4";
createNode joint -n "Ring_Ring1_L_JNT" -p "Arm_Wrist_L_JNT";
	rename -uid "5171E4E9-4791-E4CA-CF1A-D08C52477AB9";
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
	setAttr ".t" -type "double3" 1.428424241112225e-07 3.094115326499697 5.2208819552604737 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 41.995994405675383 1.2838817589257865e-05 -3.4573661290815126e-05 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.55172413793103448;
	setAttr ".ID" 5;
	setAttr ".pfrsName" -type "string" "Ring1";
createNode joint -n "Ring_Ring2_L_JNT" -p "Ring_Ring1_L_JNT";
	rename -uid "C3A2F6EE-4A25-57CE-AC8E-2EAA0D21633D";
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
	setAttr ".t" -type "double3" 0 2.678815589999175 2.6645352591003757e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.0643180419982586e-14 -1.042944269911856e-14 6.5114737805200988 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 6;
	setAttr ".pfrsName" -type "string" "Ring2";
createNode joint -n "Ring_Ring3_L_JNT" -p "Ring_Ring2_L_JNT";
	rename -uid "F51D08AD-42B3-B80B-365F-59A8B221ADE0";
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
	setAttr ".t" -type "double3" 0 2.7939882272465013 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 9.6431460058395473 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 7;
	setAttr ".pfrsName" -type "string" "Ring3";
createNode joint -n "Ring_Ring4_L_JNT" -p "Ring_Ring3_L_JNT";
	rename -uid "9D6C9EE4-4535-2483-D556-408BBFCE8214";
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
	setAttr ".t" -type "double3" 0 2.6498508047635951 8.8817841970012523e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 8;
	setAttr ".pfrsName" -type "string" "Ring4";
createNode joint -n "Middle_Middle1_L_JNT" -p "Arm_Wrist_L_JNT";
	rename -uid "B3E2BC38-4751-DA9F-0F68-CE96C8E85366";
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
	setAttr ".t" -type "double3" 5.4937163440627046e-07 4.2807261026249321 3.805349532061264 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 41.995994405675489 1.2838817581048366e-05 -3.4573661287152562e-05 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.55172413793103448;
	setAttr ".ID" 16;
	setAttr ".pfrsName" -type "string" "Middle1";
createNode joint -n "Middle_Middle2_L_JNT" -p "Middle_Middle1_L_JNT";
	rename -uid "C826593D-4913-9602-D8E1-F0BA3BE8FEF5";
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
	setAttr ".t" -type "double3" 0 2.678815589999175 -2.2204460492503131e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -5.3224059563900476e-14 5.1001953837729643e-15 6.5114737805201104 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 17;
	setAttr ".pfrsName" -type "string" "Middle2";
createNode joint -n "Middle_Middle3_L_JNT" -p "Middle_Middle2_L_JNT";
	rename -uid "7411CA41-4C6F-F9D9-1E1B-B1B93EE2B98F";
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
	setAttr ".t" -type "double3" 2.8421709430404007e-14 2.79398822724648 -4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 9.6431460058388314 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 18;
	setAttr ".pfrsName" -type "string" "Middle3";
createNode joint -n "Middle_Middle4_L_JNT" -p "Middle_Middle3_L_JNT";
	rename -uid "00C0A539-45BE-97AC-B8AF-C3B2C4AE9ED0";
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
	setAttr ".t" -type "double3" -2.8421709430404007e-14 2.6498508047636022 -8.8817841970012523e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 19;
	setAttr ".pfrsName" -type "string" "Middle4";
createNode joint -n "Clav_Clav001_R_JNT" -p "Spine_Spine_M_JNT";
	rename -uid "A4989990-4343-5ABE-F7E5-B0BEEA1D88C3";
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
	setAttr ".t" -type "double3" 6.9899335621539365 -2.7041199549399444 -8.2724914959529574 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999972 2.2835527958129154e-14 -173.00974843764652 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.75649287571448476;
	setAttr ".ID" 20;
	setAttr ".pfrsName" -type "string" "Clav001";
createNode joint -n "Arm_Shoulder_R_JNT" -p "Clav_Clav001_R_JNT";
	rename -uid "99D99268-4E67-408F-ECF5-91A1AE71579A";
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
	setAttr ".t" -type "double3" -2.8421709430404007e-14 -5.958861837017448 5.773159728050814e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.9049107295002314 1.8235186735060776e-15 -7.1944006160837934e-06 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 1.6370063315610384;
	setAttr ".ID" 9;
	setAttr ".pfrsName" -type "string" "Shoulder";
createNode joint -n "Arm_Elbow_R_JNT" -p "Arm_Shoulder_R_JNT";
	rename -uid "4C57809E-4ED1-6221-DA87-FAB4CECB1BB8";
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
	setAttr ".t" -type "double3" -3.1906779440760147e-09 -22.982122410180072 9.7699626167013776e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.8357849960177313 2.3888367462967574e-07 7.1824798232113428e-06 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 1.6210280660764069;
	setAttr ".ID" 10;
	setAttr ".pfrsName" -type "string" "Elbow";
createNode joint -n "ArmTwist_AT3_R_JNT" -p "Arm_Elbow_R_JNT";
	rename -uid "2E040EA5-4206-48C5-E60F-B6AE07036E85";
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
	setAttr ".t" -type "double3" -2.6037696443381719e-09 -18.524062215656997 -2.6645352591003757e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 2.2644663480886729e-26 -9.1212408107203825e-26 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".ID" 28;
	setAttr ".pfrsName" -type "string" "AT3";
createNode joint -n "Arm_Wrist_R_JNT" -p "Arm_Elbow_R_JNT";
	rename -uid "728FAFEB-4A6E-BDD8-CDE9-7D9C5EE6E14B";
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
	setAttr ".t" -type "double3" -3.1869831218500622e-09 -22.673209277477206 1.0658141036401503e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -40.06512013915804 1.2427621760453534e-05 3.4731436241842986e-05 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".ID" 11;
	setAttr ".pfrsName" -type "string" "Wrist";
createNode joint -n "Middle_Middle001_R_JNT" -p "Arm_Wrist_R_JNT";
	rename -uid "693F375A-4EC9-23FB-05F5-9C97D95E4A12";
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
	setAttr ".t" -type "double3" -5.4937166282797989e-07 -4.280726102624925 -3.8053495320612498 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 41.995994405675447 1.2838817614296957e-05 -3.4573661314518164e-05 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.55172413793103448;
	setAttr ".ID" 16;
	setAttr ".pfrsName" -type "string" "Middle001";
createNode joint -n "Middle_Middle002_R_JNT" -p "Middle_Middle001_R_JNT";
	rename -uid "70556F91-43EC-0DB4-2CCF-588ADEA49D62";
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
	setAttr ".t" -type "double3" 0 -2.678815589999175 -1.0658141036401503e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.1600372798889352e-15 3.606833396400948e-16 6.5114737805201406 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 17;
	setAttr ".pfrsName" -type "string" "Middle002";
createNode joint -n "Middle_Middle003_R_JNT" -p "Middle_Middle002_R_JNT";
	rename -uid "FAA53404-4543-98B9-7F6A-D39EDE2B4CE3";
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
	setAttr ".t" -type "double3" -2.8421709430404007e-14 -2.7939882272464871 -1.7763568394002505e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 9.6431460058388279 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 18;
	setAttr ".pfrsName" -type "string" "Middle003";
createNode joint -n "Middle_Middle004_R_JNT" -p "Middle_Middle003_R_JNT";
	rename -uid "13A534D1-432E-0A8D-6ACF-8F9F42AE6E63";
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
	setAttr ".t" -type "double3" 8.0865447671385482e-09 -2.6498508069538929 -4.3925107995335111e-09 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 6.6427987126766895e-08 2.293243944967187e-07 7.9406904982650287e-09 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 19;
	setAttr ".pfrsName" -type "string" "Middle004";
createNode joint -n "Thumb_Thumb001_R_JNT" -p "Arm_Wrist_R_JNT";
	rename -uid "B955308B-4535-7BC3-F622-6EBDD7993152";
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
	setAttr ".t" -type "double3" -2.8421709430404007e-14 -4.7621319407476292 2.8421709430404007e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.1881757197993643 -5.1937911513090471 35.669611856112759 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.55172413793103448;
	setAttr ".ID" 33;
	setAttr ".pfrsName" -type "string" "Thumb001";
createNode joint -n "Thumb_Thumb002_R_JNT" -p "Thumb_Thumb001_R_JNT";
	rename -uid "C7733BB8-4994-3E03-DBDB-59B373F2850C";
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
	setAttr ".t" -type "double3" -2.8421709430404007e-14 -1.9999999999999787 7.1054273576010019e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 8.9695985344500269 -7.1640333689143052 2.3162970584891878 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 34;
	setAttr ".pfrsName" -type "string" "Thumb002";
createNode joint -n "Thumb_Thumb003_R_JNT" -p "Thumb_Thumb002_R_JNT";
	rename -uid "A46C2410-4E4F-3D3E-F92D-EEA4216E7598";
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
	setAttr ".t" -type "double3" 2.3067826759870513e-08 -1.9068061182537619 -9.0647240824637265e-09 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 14.700971022060498 -12.404082433395715 0.43322186872854646 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 35;
	setAttr ".pfrsName" -type "string" "Thumb003";
createNode joint -n "Thumb_Thumb004_R_JNT" -p "Thumb_Thumb003_R_JNT";
	rename -uid "09A8F068-48E0-2D8B-7820-5CB1C3961F31";
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
	setAttr ".t" -type "double3" 2.8421709430404007e-14 -2.1353298302241797 -3.5527136788005009e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 3.975693351829396e-16 -3.975693351829396e-16 4.982040731511212e-15 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 36;
	setAttr ".pfrsName" -type "string" "Thumb004";
createNode joint -n "Ring_Ring001_R_JNT" -p "Arm_Wrist_R_JNT";
	rename -uid "4B6674B2-4256-DA5C-8ADE-2AA179A11EA1";
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
	setAttr ".t" -type "double3" -1.428424241112225e-07 -3.0941153264996899 -5.2208819552604524 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 41.995994405675447 1.2838817614296957e-05 -3.4573661314518164e-05 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.55172413793103448;
	setAttr ".ID" 5;
	setAttr ".pfrsName" -type "string" "Ring001";
createNode joint -n "Ring_Ring002_R_JNT" -p "Ring_Ring001_R_JNT";
	rename -uid "1CC20970-4CAE-06E0-83D1-9BA5C12AC337";
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
	setAttr ".t" -type "double3" 0 -2.678815589999175 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 6.5114737805201282 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 6;
	setAttr ".pfrsName" -type "string" "Ring002";
createNode joint -n "Ring_Ring003_R_JNT" -p "Ring_Ring002_R_JNT";
	rename -uid "9D71C847-4135-DEAE-E1BB-B8A7206B3061";
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
	setAttr ".t" -type "double3" 0 -2.7939882272465013 2.6645352591003757e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 9.6431460058395526 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 7;
	setAttr ".pfrsName" -type "string" "Ring003";
createNode joint -n "Ring_Ring004_R_JNT" -p "Ring_Ring003_R_JNT";
	rename -uid "7B6D9E5F-4099-2E02-5920-70A24172D707";
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
	setAttr ".t" -type "double3" 0 -2.6498508047636022 1.7763568394002505e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 8;
	setAttr ".pfrsName" -type "string" "Ring004";
createNode joint -n "Index_Index001_R_JNT" -p "Arm_Wrist_R_JNT";
	rename -uid "528A3649-497D-B9B5-D36C-4E870023F52E";
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
	setAttr ".t" -type "double3" -4.2632510144358093e-07 -4.722890135750454 -2.0979286075327508 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 41.995994405675496 1.3010942894841988e-05 -3.4408016218599577e-05 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.55172413793103448;
	setAttr ".ID" 29;
	setAttr ".pfrsName" -type "string" "Index001";
createNode joint -n "Index_Index002_R_JNT" -p "Index_Index001_R_JNT";
	rename -uid "83D4E504-4036-4F3C-D4E8-799B51AE1C2F";
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
	setAttr ".t" -type "double3" 0 -2.678815589999175 4.4408920985006262e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 6.5114737805201282 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 30;
	setAttr ".pfrsName" -type "string" "Index002";
createNode joint -n "Index_Index003_R_JNT" -p "Index_Index002_R_JNT";
	rename -uid "3471627F-44C2-6E4C-A8EB-43A181E12808";
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
	setAttr ".t" -type "double3" 0 -2.7939882272465013 3.7747582837255322e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.0549675842555473e-15 8.8493002036122696e-16 9.6431460058388616 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 31;
	setAttr ".pfrsName" -type "string" "Index003";
createNode joint -n "Index_Index004_R_JNT" -p "Index_Index003_R_JNT";
	rename -uid "702CCAE3-4213-82E4-AA79-FFBD3935BC1E";
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
	setAttr ".t" -type "double3" 5.6843418860808015e-14 -2.6498508047636022 2.886579864025407e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 32;
	setAttr ".pfrsName" -type "string" "Index004";
createNode joint -n "Pinkie_Pinkey1_R_JNT" -p "Arm_Wrist_R_JNT";
	rename -uid "ADA1C60B-4AA3-6963-967A-3DB6DFF043B8";
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
	setAttr ".t" -type "double3" 1.0303077715434483e-06 -0.89548226195618241 -5.9043548528036709 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 41.995994405675496 1.3010942894841988e-05 -3.4408016218599577e-05 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.55172413793103448;
	setAttr ".ID" 12;
	setAttr ".pfrsName" -type "string" "Pinkey1";
createNode joint -n "Pinkie_Pinkey2_R_JNT" -p "Pinkie_Pinkey1_R_JNT";
	rename -uid "262A44A6-4659-C2D2-8F06-9BBBDD9331CC";
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
	setAttr ".t" -type "double3" 0 -2.678815589999175 -8.8817841970012523e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 6.5114737805201282 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 13;
	setAttr ".pfrsName" -type "string" "Pinkey2";
createNode joint -n "Pinkie_Pinkey3_R_JNT" -p "Pinkie_Pinkey2_R_JNT";
	rename -uid "C3F0CA71-410F-7B6C-8CB4-268562B8A5BB";
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
	setAttr ".t" -type "double3" 0 -2.7939882272465013 5.3290705182007514e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.054967584255537e-15 8.8493002036126e-16 9.643146005839478 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 14;
	setAttr ".pfrsName" -type "string" "Pinkey3";
createNode joint -n "Pinkie_Pinkey4_R_JNT" -p "Pinkie_Pinkey3_R_JNT";
	rename -uid "755442BE-41A6-9AE8-60C2-D9BDD2D23E7C";
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
	setAttr ".t" -type "double3" -2.8421709430404007e-14 -2.649850804763588 8.8817841970012523e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".radi" 0.60344827586206895;
	setAttr ".ID" 15;
	setAttr ".pfrsName" -type "string" "Pinkey4";
createNode joint -n "ArmTwist_AT1_R_JNT" -p "Arm_Elbow_R_JNT";
	rename -uid "6DA97291-4049-574F-155D-BF9ADCD01033";
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
	setAttr ".t" -type "double3" 1.1426664059399627e-09 -8.2590955173458198 -8.8817841970012523e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.951386703658788e-16 2.3834854683276688e-07 1.5980620366090724e-08 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".ID" 26;
	setAttr ".pfrsName" -type "string" "AT1";
createNode joint -n "ArmTwist_AT2_R_JNT" -p "Arm_Elbow_R_JNT";
	rename -uid "6C561F25-4052-7656-B96E-3E910A90942F";
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
	setAttr ".t" -type "double3" 1.8430057480145479e-09 -13.321355045119589 -2.6645352591003757e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.951386703658788e-16 2.3834854683276688e-07 1.5980620366090724e-08 ;
	setAttr ".pa" -type "double3" -1 0 0 ;
	setAttr ".ID" 27;
	setAttr ".pfrsName" -type "string" "AT2";
createNode transform -n "LIMBS" -p "TEMP_RigRoot";
	rename -uid "0391C86C-4ADC-3C81-9295-2480869593D3";
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
	rename -uid "FC77AA8D-4E98-6F1D-D7F0-978D8B67BF06";
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
createNode transform -n "Spine_Limb_M_NODE" -p "LIMBS";
	rename -uid "B59D4DC3-44F6-2CA8-F491-E4855319DB53";
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
	setAttr ".ID" 2;
	setAttr ".pfrsName" -type "string" "Spine";
	setAttr ".limbType" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "Jaw_Limb_M_NODE" -p "LIMBS";
	rename -uid "7B45B0B1-412A-3443-4CBA-76B585300327";
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
createNode transform -n "Ring_Limb_L_NODE" -p "LIMBS";
	rename -uid "F56DB041-4C77-8871-CB9D-43B46FEA351D";
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
	setAttr ".pfrsName" -type "string" "Ring";
	setAttr ".limbType" 4;
	setAttr ".side" 1;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Ring2_Joint_L_GRP1" -p "Ring_Limb_L_NODE";
	rename -uid "D9870935-43AA-6D0C-5082-00973C0A4DBA";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 68.332627461968642 136.60888383138146 -5.3446071312574936 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring2_Joint_L_CTR1" -p "Ring2_Joint_L_GRP1";
	rename -uid "C56CF136-4975-06B8-1300-8181932FB66A";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring2_Joint_L_CTR1Shape" -p "Ring2_Joint_L_CTR1";
	rename -uid "6A9BE063-4BAD-7B29-EFBD-F8B1E89947B5";
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
createNode transform -n "Ring1_Joint_L_GRP0" -p "Ring_Limb_L_NODE";
	rename -uid "AD42E168-4764-510B-13EC-0AB20528FCAA";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 65.653811871969495 136.60888383138146 -5.3446071312574963 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring1_Joint_L_CTR0" -p "Ring1_Joint_L_GRP0";
	rename -uid "8EBB1060-4073-2E91-51E0-39820FB3BA9F";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring1_Joint_L_CTR0Shape" -p "Ring1_Joint_L_CTR0";
	rename -uid "F3AD1ACD-42DA-131C-45E5-F1BAE9A06A57";
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
	rename -uid "AF5EEEEE-4EF7-E047-3937-A088F81CD75A";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 71.108592135569353 136.29203947698471 -5.3446071312574945 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 1 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring3_Joint_L_CTR2" -p "Ring3_Joint_L_GRP2";
	rename -uid "7FFE4AB7-4423-1E77-AA4C-B288EB8435CB";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring3_Joint_L_CTR2Shape" -p "Ring3_Joint_L_CTR2";
	rename -uid "CA468643-4C8D-4D29-81DF-07A31CF70286";
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
	rename -uid "58DA641C-45F2-CEB4-7BBC-D6B03C9F448F";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 73.653811871969495 135.55477033959627 -5.3446071312574928 ;
	setAttr ".s" -type "double3" 0.99999999999999967 0.99999999999999978 1 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring4_Joint_L_CTR3" -p "Ring4_Joint_L_GRP3";
	rename -uid "A23ADC96-4F5A-44EA-26F6-87A1EE8E62F6";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring4_Joint_L_CTR3Shape" -p "Ring4_Joint_L_CTR3";
	rename -uid "1FBC0C09-407C-13A3-2B5E-E893F5DF7031";
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
	rename -uid "31EA6AB0-4250-E26B-03FB-0CB7B91F1C67";
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
	setAttr ".ID" 5;
	setAttr ".pfrsName" -type "string" "Arm";
	setAttr ".limbType" 4;
	setAttr ".side" 1;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Elbow_Joint_L_GRP1" -p "Arm_Limb_L_NODE";
	rename -uid "7A795F82-41AE-F22E-50D6-528F1244FDCD";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 37.200775146484368 136.60888671875009 -4.2986431121825994 ;
	setAttr ".r" -type "double3" 178.06912573348248 0 90.000000007949339 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999967 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Elbow_Joint_L_CTR1" -p "Elbow_Joint_L_GRP1";
	rename -uid "F989A1B2-4EA7-9DF9-3DA6-F0A9003C1B78";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 2.8421709430404007e-14 0 -8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 2.8421709430404007e-14 0 -8.8817841970012523e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Elbow_Joint_L_CTR1Shape" -p "Elbow_Joint_L_CTR1";
	rename -uid "2DC547AD-4632-6053-4712-1095C6B4195B";
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
createNode transform -n "Shoulder_Joint_L_GRP0" -p "Arm_Limb_L_NODE";
	rename -uid "C39CD5A4-4AB0-A4F3-C181-93904D202643";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 14.2313533329704 136.60888383138155 -3.5346980687655618 ;
	setAttr ".r" -type "double3" -178.09508927049978 -1.9878466759146977e-16 90.000007194400609 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 0.99999999999999989 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Shoulder_Joint_L_CTR0" -p "Shoulder_Joint_L_GRP0";
	rename -uid "0E9D150A-4702-A363-0DE3-D4AC4C3DC398";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 5.6843418860808015e-14 -3.5527136788005009e-15 0 ;
	setAttr ".sp" -type "double3" 5.6843418860808015e-14 -3.5527136788005009e-15 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Shoulder_Joint_L_CTR0Shape" -p "Shoulder_Joint_L_CTR0";
	rename -uid "A32CD5ED-461C-38C1-5C2E-FAB2363F0874";
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
	rename -uid "E29E44E8-4878-27A2-410F-388D419986FA";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 59.861110687255845 136.60888672508099 -3.5346980094909255 ;
	setAttr ".r" -type "double3" 138.00400559432475 -1.359079723393984e-05 89.999965714966436 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Wrist_Joint_L_CTR2" -p "Wrist_Joint_L_GRP2";
	rename -uid "FDDFBFD0-4EA6-CE90-3827-F2A2D2916394";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rp" -type "double3" 2.8421709430404007e-14 -7.1054273576010019e-15 -1.4210854715202004e-14 ;
	setAttr ".sp" -type "double3" 2.8421709430404007e-14 -7.1054273576010019e-15 -1.4210854715202004e-14 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Wrist_Joint_L_CTR2Shape" -p "Wrist_Joint_L_CTR2";
	rename -uid "87BEC7DD-4C0B-D02C-DBE1-BBA2EB470A8B";
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
	rename -uid "A5978A19-48EF-3279-D3D0-C99CFEE93FA9";
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
	setAttr ".pfrsName" -type "string" "Pinkie";
	setAttr ".limbType" 4;
	setAttr ".side" 1;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Pinkey2_Joint_L_GRP1" -p "Pinkie_Limb_L_NODE";
	rename -uid "3670FC3F-4CFA-4EA4-9E0A-CA8B05CB7E37";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 67.155918954242438 136.60888383138146 -7.3236168942516331 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinkey2_Joint_L_CTR1" -p "Pinkey2_Joint_L_GRP1";
	rename -uid "545E6AEA-455F-C78F-41E3-C0945B3EC89D";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinkey2_Joint_L_CTR1Shape" -p "Pinkey2_Joint_L_CTR1";
	rename -uid "4E4093FB-4180-12CB-4189-238A47DEA53F";
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
createNode transform -n "Pinkey1_Joint_L_GRP0" -p "Pinkie_Limb_L_NODE";
	rename -uid "C0A7C6BE-4098-ACCB-A5D0-56A7D90A1EFE";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 64.477103364243263 136.60888383138146 -7.3236168942516375 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinkey1_Joint_L_CTR0" -p "Pinkey1_Joint_L_GRP0";
	rename -uid "86F081C7-4A68-4ED3-4A30-CBB01ADA1B36";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinkey1_Joint_L_CTR0Shape" -p "Pinkey1_Joint_L_CTR0";
	rename -uid "06F6E112-48E3-09EC-CDD9-64B5DD9E9DE3";
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
	rename -uid "B1AE47E9-48DB-D486-3163-1EB315551D06";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 69.931883627843092 136.29203947698471 -7.3236168942516322 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000007 1 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinkey3_Joint_L_CTR2" -p "Pinkey3_Joint_L_GRP2";
	rename -uid "E9D97D9C-4630-1618-DA38-A7B0DDE4052C";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinkey3_Joint_L_CTR2Shape" -p "Pinkey3_Joint_L_CTR2";
	rename -uid "2DBFE4F1-48E9-7C77-0363-58B001FF7683";
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
	rename -uid "8DEA0E80-4C3B-41AA-B641-60813B91F9C6";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 72.477103364243263 135.55477033959627 -7.3236168942516322 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000007 1 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinkey4_Joint_L_CTR3" -p "Pinkey4_Joint_L_GRP3";
	rename -uid "BD04A7D7-49E3-B5A5-F18C-24AF6B059868";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinkey4_Joint_L_CTR3Shape" -p "Pinkey4_Joint_L_CTR3";
	rename -uid "BF9ADEC0-41DA-1E9D-C852-99913128F016";
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
	rename -uid "3D79E26F-4E7F-05A5-0840-FD87FD0043CE";
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
	setAttr ".side" 1;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Middle2_Joint_L_GRP1" -p "Middle_Limb_L_NODE";
	rename -uid "300D8ED5-4D5B-51D7-7806-AE9229697EF5";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 68.267404102987754 136.60888383138143 -3.4986593831919741 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 1 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle2_Joint_L_CTR1" -p "Middle2_Joint_L_GRP1";
	rename -uid "4661B2BD-4015-C1A4-41C4-6FBC8167EEFB";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle2_Joint_L_CTR1Shape" -p "Middle2_Joint_L_CTR1";
	rename -uid "AF14D2FD-4B0D-6096-E2A8-16A73D8DF641";
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
createNode transform -n "Middle1_Joint_L_GRP0" -p "Middle_Limb_L_NODE";
	rename -uid "2ABDC424-4BA2-989D-EEF7-4683A639A649";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 65.588588512988565 136.60888383138146 -3.498659383191975 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle1_Joint_L_CTR0" -p "Middle1_Joint_L_GRP0";
	rename -uid "BA61E257-433F-4D7B-40C9-5D8AA4852BCD";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle1_Joint_L_CTR0Shape" -p "Middle1_Joint_L_CTR0";
	rename -uid "C7DB3CA9-4739-2BDD-75E9-6D8FDB45EE00";
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
	rename -uid "19188E25-4351-2315-E335-92A137877148";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 71.043368776588409 136.29203947698471 -3.4986593831919732 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle3_Joint_L_CTR2" -p "Middle3_Joint_L_GRP2";
	rename -uid "B9309459-4505-EFE8-1DF3-70905892B532";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle3_Joint_L_CTR2Shape" -p "Middle3_Joint_L_CTR2";
	rename -uid "B94F233E-495F-3848-BFB4-75A08C6A245B";
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
	rename -uid "65F91FF1-4D62-1698-6194-86B4B0C4213F";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 73.588588512988551 135.55477033959627 -3.4986593831919706 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle4_Joint_L_CTR3" -p "Middle4_Joint_L_GRP3";
	rename -uid "F247B7DF-4CC7-97F0-BAB4-24A3C302B1A6";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle4_Joint_L_CTR3Shape" -p "Middle4_Joint_L_CTR3";
	rename -uid "AA76B8F4-4171-ED92-F326-FF9246C8AD48";
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
	rename -uid "9C6AC200-4DF2-9DCA-B3E0-86824F016618";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "Spine" 
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
	setAttr ".ID" 8;
	setAttr ".pfrsName" -type "string" "Clav";
	setAttr ".limbType" 1;
	setAttr ".side" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "Clav01_Joint_L_GRP0" -p "Clav_Limb_L_NODE";
	rename -uid "B3A7E635-454C-1795-966B-AF8E4CFA5FF3";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 8.2724914959529556 136.60888383138146 -3.5346980687655662 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Clav01_Joint_L_CTR0" -p "Clav01_Joint_L_GRP0";
	rename -uid "33A6660B-4895-4DFC-58F4-7597A9177676";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Clav01_Joint_L_CTR0Shape" -p "Clav01_Joint_L_CTR0";
	rename -uid "C52A376B-4264-B29A-FA4F-4298B7E5C0D9";
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
	rename -uid "3F7551E8-45BF-0314-CEDC-BDB7D3987766";
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
	setAttr ".ID" 9;
	setAttr ".pfrsName" -type "string" "Head";
	setAttr ".limbType" 3;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "FaceBrow_Limb_L_NODE" -p "LIMBS";
	rename -uid "149FC154-4FA3-5E52-338B-919EEE733BFE";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "UF1" 
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
	setAttr ".ID" 10;
	setAttr ".pfrsName" -type "string" "FaceBrow";
	setAttr ".limbType" 2;
	setAttr ".limbLocation" 1;
	setAttr ".side" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "Brow2_Joint_L_GRP1" -p "FaceBrow_Limb_L_NODE";
	rename -uid "781B3A30-4D77-71E1-BB89-5BB563242B39";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 4.2221279680112831 171.37220824413748 12.214755745846217 ;
	setAttr ".r" -type "double3" -16.811872471554288 -71.74051390494192 14.29777191323158 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 0.99999999999999978 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Brow2_Joint_L_CTR1" -p "Brow2_Joint_L_GRP1";
	rename -uid "34F46DD0-4427-05EB-2F3F-0F8CA4F34508";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Brow2_Joint_L_CTR1Shape" -p "Brow2_Joint_L_CTR1";
	rename -uid "80EA8401-439B-C5FB-19F4-18BC553F9E79";
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
createNode transform -n "Brow1_Joint_L_GRP0" -p "FaceBrow_Limb_L_NODE";
	rename -uid "C93D0CEA-4C8B-8B09-F6BD-39909BA5085E";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 2.1872999668121311 171.05889892578128 12.542099952697779 ;
	setAttr ".r" -type "double3" -8.9907048107357834 -72.694829766660504 14.779351741201673 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Brow1_Joint_L_CTR0" -p "Brow1_Joint_L_GRP0";
	rename -uid "4C0A5817-47D8-2BDD-40DE-708705B8BDF6";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Brow1_Joint_L_CTR0Shape" -p "Brow1_Joint_L_CTR0";
	rename -uid "4E23C4A7-48CB-41EA-AE5F-04A40C887B09";
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
	rename -uid "16F3D717-42F1-F7A9-3B70-C7A492D79182";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 5.5333063335860846 170.89503278940211 10.58734877621607 ;
	setAttr ".r" -type "double3" -14.145396758642582 -41.134246091602243 1.2667545073205222 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Brow3_Joint_L_CTR2" -p "Brow3_Joint_L_GRP2";
	rename -uid "72CCBB50-4588-41B9-C0D2-0987087AE5D1";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Brow3_Joint_L_CTR2Shape" -p "Brow3_Joint_L_CTR2";
	rename -uid "1805FA25-4DE1-3B19-8AE2-E88D75510A8E";
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
	rename -uid "49B8FAD0-4B05-BA36-B81C-F897A3F98494";
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
	setAttr ".pfrsName" -type "string" "ArmTwist";
	setAttr ".limbType" 2;
	setAttr ".side" 1;
	setAttr ".limbParentJoint" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "AT2_Joint_L_GRP1" -p "ArmTwist_Limb_L_NODE";
	rename -uid "86303CC7-46B0-1C1E-2343-6C8813ED7CE4";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 50.514566391732671 136.60888671875006 -3.8497969068046571 ;
	setAttr ".r" -type "double3" 0 -1.9308742665175058 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999967 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "AT2_Joint_L_CTR1" -p "AT2_Joint_L_GRP1";
	rename -uid "0799543D-4DEE-E085-2AF9-95A231340399";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "AT2_Joint_L_CTR1Shape" -p "AT2_Joint_L_CTR1";
	rename -uid "E003C514-4E9A-030E-4C00-15AAC540788A";
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
	rename -uid "D188A8D5-46CC-F00C-CDE1-82BAE87ABA82";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 45.455181190019189 136.60888671875 -4.0203633373204548 ;
	setAttr ".r" -type "double3" 0 -1.9308742665175058 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999967 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "AT1_Joint_L_CTR0" -p "AT1_Joint_L_GRP0";
	rename -uid "1EAD661C-4072-C296-174F-0D933EBABADA";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "AT1_Joint_L_CTR0Shape" -p "AT1_Joint_L_CTR0";
	rename -uid "57AF234F-4A51-7B37-8CA1-19A74B0E0FA7";
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
	rename -uid "95896DAA-47BA-622A-2129-BB99A90056C2";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 55.714319490729061 136.60888671875 -3.674498270646477 ;
	setAttr ".r" -type "double3" 0 -1.9308742665175058 0 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999967 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "AT3_Joint_L_CTR2" -p "AT3_Joint_L_GRP2";
	rename -uid "0B20F081-4F8A-7C4C-8CAF-BFA3AF45B83A";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "AT3_Joint_L_CTR2Shape" -p "AT3_Joint_L_CTR2";
	rename -uid "B2ECD238-4BFD-4F9B-A3A1-A8B03A63B5C2";
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
	rename -uid "56DB4DD2-4969-5CF9-181F-88A6E42A45B3";
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
	setAttr ".pfrsName" -type "string" "Index";
	setAttr ".limbType" 4;
	setAttr ".side" 1;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Index2_Joint_L_GRP1" -p "Index_Limb_L_NODE";
	rename -uid "23A9D2CF-4315-B3D9-A818-6AB5FD1593D6";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 67.453617810963436 136.60888383138152 -1.9338759743391614 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index2_Joint_L_CTR1" -p "Index2_Joint_L_GRP1";
	rename -uid "2C389F5A-4FE9-8D5C-39A0-AB8D6F757ECA";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index2_Joint_L_CTR1Shape" -p "Index2_Joint_L_CTR1";
	rename -uid "B5D4DF32-4553-F304-E16A-12834DD86486";
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
createNode transform -n "Index1_Joint_L_GRP0" -p "Index_Limb_L_NODE";
	rename -uid "1048700B-454C-5E2A-A9A5-539B4C0FB418";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 64.774802220964276 136.60888383138146 -1.9338759743391625 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index1_Joint_L_CTR0" -p "Index1_Joint_L_GRP0";
	rename -uid "7164CF5C-4404-8E98-40B4-09907D2C9876";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index1_Joint_L_CTR0Shape" -p "Index1_Joint_L_CTR0";
	rename -uid "33911844-49EA-6615-2F1D-1CA64D6CCB70";
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
	rename -uid "B900E558-4E12-3FBB-CD76-AAA2ED2D97A7";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 70.229582484564133 136.29203947698471 -1.9338759743391611 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index3_Joint_L_CTR2" -p "Index3_Joint_L_GRP2";
	rename -uid "F9786797-44F4-144F-CE65-EDAB330E2C20";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index3_Joint_L_CTR2Shape" -p "Index3_Joint_L_CTR2";
	rename -uid "01ADEF6E-4CF0-FFBC-2BC0-00872311B71D";
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
	rename -uid "CB910360-4893-D863-9468-28901F1AEBA2";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 72.774802220964276 135.55477033959627 -1.9338759743391591 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index4_Joint_L_CTR3" -p "Index4_Joint_L_GRP3";
	rename -uid "F30F76F6-4D06-60CE-E6EF-8AA9BA053C82";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index4_Joint_L_CTR3Shape" -p "Index4_Joint_L_CTR3";
	rename -uid "6A4A1CEB-4CA7-896A-4076-1C8396459533";
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
	rename -uid "CF8E7316-4D1B-F55A-4669-1DAF152720AC";
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
	setAttr ".pfrsName" -type "string" "Thumb";
	setAttr ".limbType" 4;
	setAttr ".side" 1;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Thumb2_Joint_L_GRP1" -p "Thumb_Limb_L_NODE";
	rename -uid "038C5148-4C03-9D3E-1832-6DADE7066F0B";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 64.755259656484242 135.43342353024963 0.53604413898928449 ;
	setAttr ".r" -type "double3" 0 -16.710394833383404 -40.942160957263411 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb2_Joint_L_CTR1" -p "Thumb2_Joint_L_GRP1";
	rename -uid "B21C6191-42AA-502A-B479-3FA3CEA3C09A";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb2_Joint_L_CTR1Shape" -p "Thumb2_Joint_L_CTR1";
	rename -uid "A628E00D-4911-51A1-FB62-8CAB7857E120";
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
createNode transform -n "Thumb1_Joint_L_GRP0" -p "Thumb_Limb_L_NODE";
	rename -uid "75603528-4524-70CD-2DE5-319B43FD5DAC";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 63.400287158585201 136.60888383138152 -0.3484571953230125 ;
	setAttr ".r" -type "double3" 0 -26.247570961685803 -40.942160957263596 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb1_Joint_L_CTR0" -p "Thumb1_Joint_L_GRP0";
	rename -uid "04619DB7-42BC-AE6C-1B6D-EA9F1671B3FF";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb1_Joint_L_CTR0Shape" -p "Thumb1_Joint_L_CTR0";
	rename -uid "AB06D260-49CC-ADEC-13B8-25B0910F9EC4";
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
createNode transform -n "Thumb3_Joint_L_GRP2" -p "Thumb_Limb_L_NODE";
	rename -uid "182B303F-4783-4197-F5D9-B4B7CD2EEA86";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 66.134781242273931 134.23666650295604 1.0843162730920781 ;
	setAttr ".r" -type "double3" 0 -16.710394833383504 -40.942160957263503 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb3_Joint_L_CTR2" -p "Thumb3_Joint_L_GRP2";
	rename -uid "A864AB1E-4FAB-D288-E7A6-C5B178219E19";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb3_Joint_L_CTR2Shape" -p "Thumb3_Joint_L_CTR2";
	rename -uid "9F9E7A3D-4573-1E7E-760F-DC80E4B0EA8A";
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
createNode transform -n "Thumb4_Joint_L_GRP3" -p "Thumb_Limb_L_NODE";
	rename -uid "49CC34CC-4016-48B5-BADF-AFA66AC66D8D";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" 67.746851922002563 132.83816941937846 1.1555027509490552 ;
	setAttr ".r" -type "double3" 0 -16.710394833383504 -40.942160957263503 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb4_Joint_L_CTR3" -p "Thumb4_Joint_L_GRP3";
	rename -uid "90E9326B-49E5-86CB-AC45-A0AC78A6C14C";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb4_Joint_L_CTR3Shape" -p "Thumb4_Joint_L_CTR3";
	rename -uid "82E4A24C-4224-C238-07A8-6689CB71A0BD";
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
	rename -uid "71F6A545-4186-1B6C-9B5F-92900B83FD81";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "Spine" 
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
	setAttr ".ID" 14;
	setAttr ".pfrsName" -type "string" "Neck";
	setAttr ".limbType" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "Clav_Limb_R_NODE" -p "LIMBS";
	rename -uid "57CA03ED-4BB1-6C49-C2C0-9EA7D2F4685E";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "Spine" 
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
	setAttr ".ID" 32;
	setAttr ".pfrsName" -type "string" "Clav";
	setAttr ".limbType" 1;
	setAttr ".side" 2;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "Clav001_Joint_R_GRP0" -p "Clav_Limb_R_NODE";
	rename -uid "388585AB-4755-B672-F23F-B88CFBDB555D";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -8.2724914959529556 136.60888383138146 -3.5346980687655662 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Clav001_Joint_R_CTR0" -p "Clav001_Joint_R_GRP0";
	rename -uid "B5DD6FB7-43E1-7135-4DBA-E48BFAA749EF";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Clav001_Joint_R_CTR0Shape" -p "Clav001_Joint_R_CTR0";
	rename -uid "E80258E1-4479-95A2-1989-D18DCA8E1A6C";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.5543122e-15 -1.9984014e-15 
		-2 1.9984014e-15 1.8873791e-15 -2 1.5543122e-15 -1.8873791e-15 -2 1.9984014e-15 1.9984014e-15 
		-2 1.5543122e-15 -1.8873791e-15 2 1.9984014e-15 1.9984014e-15 2 1.5543122e-15 -1.9984014e-15 
		2 1.9984014e-15 1.8873791e-15 2;
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
createNode transform -n "Arm_Limb_R_NODE" -p "LIMBS";
	rename -uid "56AD6D04-4E16-56ED-7374-3ABD8C879714";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "Clav001" 
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
	setAttr ".ID" 33;
	setAttr ".pfrsName" -type "string" "Arm";
	setAttr ".limbType" 4;
	setAttr ".side" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Shoulder_Joint_R_GRP0" -p "Arm_Limb_R_NODE";
	rename -uid "28FEC9AD-46C6-4CEE-6C41-7499036DB56B";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -14.2313533329704 136.60888383138155 -3.5346980687655618 ;
	setAttr ".r" -type "double3" -1.904910729500231 0 89.999992805599391 ;
	setAttr ".rp" -type "double3" 2.8421709430404007e-14 0 0 ;
	setAttr ".rpt" -type "double3" -2.8421705861604265e-14 2.8421709430403783e-14 -1.9721522630525295e-31 ;
	setAttr ".sp" -type "double3" 2.8421709430404007e-14 0 0 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Shoulder_Joint_R_CTR0" -p "Shoulder_Joint_R_GRP0";
	rename -uid "DF4E0451-427F-E577-8025-26B191B19E06";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 2.8421709430404007e-14 0 0 ;
	setAttr ".rp" -type "double3" 8.5265128291212022e-14 -3.5527136788005009e-15 0 ;
	setAttr ".sp" -type "double3" 8.5265128291212022e-14 -3.5527136788005009e-15 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Shoulder_Joint_R_CTR0Shape" -p "Shoulder_Joint_R_CTR0";
	rename -uid "231D1623-4C2A-E71C-0D9E-2194476B66BE";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.110223e-15 3.5527137e-15 
		-2 -1.110223e-15 3.5527137e-15 -2 1.110223e-15 3.5527137e-15 -2 1.110223e-15 3.5527137e-15 
		-2 1.110223e-15 3.5527137e-15 2 1.110223e-15 3.5527137e-15 2 -1.110223e-15 3.5527137e-15 
		2 -1.110223e-15 3.5527137e-15 2;
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
createNode transform -n "Elbow_Joint_R_GRP1" -p "Arm_Limb_R_NODE";
	rename -uid "768FB9C2-4175-A521-A1FD-E8B6091B1737";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -37.200775146484368 136.60888671875009 -4.2986431121825994 ;
	setAttr ".r" -type "double3" 1.9308742665175154 1.987846675914698e-16 89.999999992050661 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Elbow_Joint_R_CTR1" -p "Elbow_Joint_R_GRP1";
	rename -uid "5DF78D66-474D-806A-F28D-4A96C408AE2F";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 0 8.8817841970012523e-16 ;
	setAttr ".rp" -type "double3" 2.8421709430404007e-14 0 -8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 2.8421709430404007e-14 0 -8.8817841970012523e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Elbow_Joint_R_CTR1Shape" -p "Elbow_Joint_R_CTR1";
	rename -uid "BB1899CC-4C49-618E-8BDA-8893065F90FA";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -2.7533531e-14 2.220446e-16 
		-2 -2.7533531e-14 4.4408921e-16 -2 -2.9309888e-14 -4.4408921e-16 -2 -2.9309888e-14 
		-2.220446e-16 -2 -2.9309888e-14 -4.4408921e-16 2 -2.9309888e-14 -2.220446e-16 2 -2.7533531e-14 
		2.220446e-16 2 -2.7533531e-14 4.4408921e-16 2;
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
createNode transform -n "Wrist_Joint_R_GRP2" -p "Arm_Limb_R_NODE";
	rename -uid "80E57A5F-40EA-2DFD-0DF5-0FA00D067F13";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -59.861110687255845 136.60888672508099 -3.5346980094909255 ;
	setAttr ".r" -type "double3" 41.995994405675262 -1.3590797230759285e-05 90.00003428503355 ;
	setAttr ".rp" -type "double3" -2.8421709430404007e-14 0 -7.1054273576010019e-15 ;
	setAttr ".rpt" -type "double3" 2.3667636687317554e-14 -2.8421711022579725e-14 1.8247266670795499e-15 ;
	setAttr ".sp" -type "double3" -2.8421709430404007e-14 0 -7.1054273576010019e-15 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Wrist_Joint_R_CTR2" -p "Wrist_Joint_R_GRP2";
	rename -uid "0CDFB9BE-41DF-00C3-98CF-348CDF1954AA";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -7.1054273576010019e-15 -7.1054273576010019e-15 ;
	setAttr ".rp" -type "double3" 0 -7.1054273576010019e-15 2.1316282072803006e-14 ;
	setAttr ".sp" -type "double3" 0 -7.1054273576010019e-15 2.1316282072803006e-14 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Wrist_Joint_R_CTR2Shape" -p "Wrist_Joint_R_CTR2";
	rename -uid "14E23CDC-46B6-7855-1DBE-01A99B596CF2";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  4.4408921e-16 1.4543922e-14 
		-2 2.220446e-16 1.4543922e-14 -2 1.110223e-16 1.4210855e-14 -2 -2.220446e-16 1.4210855e-14 
		-2 -2.220446e-16 1.3766766e-14 2 -4.4408921e-16 1.3766766e-14 2 2.220446e-16 1.4210855e-14 
		2 -1.110223e-16 1.4210855e-14 2;
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
createNode transform -n "ArmTwist_Limb_R_NODE" -p "LIMBS";
	rename -uid "6B388694-40C5-62F5-2EE7-AE8B496A4514";
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
	setAttr ".ID" 34;
	setAttr ".pfrsName" -type "string" "ArmTwist";
	setAttr ".limbType" 2;
	setAttr ".side" 2;
	setAttr ".limbParentJoint" 1;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "AT1_Joint_R_GRP0" -p "ArmTwist_Limb_R_NODE";
	rename -uid "426DD7EB-4B17-832D-A29C-A4BEAC229488";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -45.455181190019189 136.60888671875 -4.0203633373204548 ;
	setAttr ".r" -type "double3" 0 181.93087426651752 0 ;
	setAttr ".rp" -type "double3" 0 -2.8421709430404007e-14 0 ;
	setAttr ".sp" -type "double3" 0 -2.8421709430404007e-14 0 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "AT1_Joint_R_CTR0" -p "AT1_Joint_R_GRP0";
	rename -uid "FA4F8D1C-4ACF-3E1B-C6F1-0AB1C9B7213D";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 -2.8421709430404007e-14 0 ;
	setAttr ".rp" -type "double3" 0 -2.8421709430404007e-14 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 0 -2.8421709430404007e-14 8.8817841970012523e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "AT1_Joint_R_CTR0Shape" -p "AT1_Joint_R_CTR0";
	rename -uid "FACA3BBA-4516-DDA4-7920-669334BC6CE9";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.4210855e-14 0 -2 1.4210855e-14 
		0 -2 1.4210855e-14 0 -2 1.4210855e-14 0 -2 1.4210855e-14 0 2 1.4210855e-14 0 2 1.4210855e-14 
		0 2 1.4210855e-14 0 2;
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
createNode transform -n "AT2_Joint_R_GRP1" -p "ArmTwist_Limb_R_NODE";
	rename -uid "E67394BD-4208-319A-49AE-43A66F8A4D20";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -50.514566391732671 136.60888671875006 -3.8497969068046571 ;
	setAttr ".r" -type "double3" 0 181.93087426651752 0 ;
	setAttr ".rp" -type "double3" -7.1054273576010019e-15 -2.8421709430404007e-14 8.8817841970012523e-16 ;
	setAttr ".rpt" -type "double3" 1.4176894240281743e-14 0 -2.0152609217891718e-15 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-15 -2.8421709430404007e-14 8.8817841970012523e-16 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "AT2_Joint_R_CTR1" -p "AT2_Joint_R_GRP1";
	rename -uid "028A41E7-4087-E4DE-E982-5FBEEAA08EF5";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -2.8421709430404007e-14 0 ;
	setAttr ".rp" -type "double3" -7.1054273576010019e-15 -2.8421709430404007e-14 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-15 -2.8421709430404007e-14 8.8817841970012523e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "AT2_Joint_R_CTR1Shape" -p "AT2_Joint_R_CTR1";
	rename -uid "5FCE45E2-4611-3E94-9224-5E932AD83057";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.110223e-16 0 -2 -1.110223e-16 
		0 -2 1.110223e-16 0 -2 -1.110223e-16 0 -2 1.110223e-16 0 2 -1.110223e-16 0 2 1.110223e-16 
		0 2 -1.110223e-16 0 2;
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
createNode transform -n "AT3_Joint_R_GRP2" -p "ArmTwist_Limb_R_NODE";
	rename -uid "AE85AECD-49BB-2743-E5D5-05B4A56AFA3B";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -55.714319490729061 136.60888671875 -3.674498270646477 ;
	setAttr ".r" -type "double3" 0 181.93087426651752 0 ;
	setAttr ".rp" -type "double3" 0 -2.8421709430404007e-14 0 ;
	setAttr ".sp" -type "double3" 0 -2.8421709430404007e-14 0 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "AT3_Joint_R_CTR2" -p "AT3_Joint_R_GRP2";
	rename -uid "D369FCC7-4E7E-ECB2-C714-99821A430FEA";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -2.8421709430404007e-14 0 ;
	setAttr ".rp" -type "double3" 0 -2.8421709430404007e-14 0 ;
	setAttr ".sp" -type "double3" 0 -2.8421709430404007e-14 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "AT3_Joint_R_CTR2Shape" -p "AT3_Joint_R_CTR2";
	rename -uid "C76F8901-4DEC-0816-4194-06B988AB690A";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.220446e-16 -2.8421709e-14 
		-2 0 -2.8421709e-14 -2 0 -2.8532732e-14 -2 -2.220446e-16 -2.8532732e-14 -2 0 -2.8532732e-14 
		2 -2.220446e-16 -2.8532732e-14 2 2.220446e-16 -2.8421709e-14 2 0 -2.8421709e-14 2;
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
createNode transform -n "Index_Limb_R_NODE" -p "LIMBS";
	rename -uid "82BA00CF-45D5-5C8D-AA4E-858F687AFE7B";
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
	setAttr ".ID" 35;
	setAttr ".pfrsName" -type "string" "Index";
	setAttr ".limbType" 4;
	setAttr ".side" 2;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Index001_Joint_R_GRP0" -p "Index_Limb_R_NODE";
	rename -uid "BF0C8986-4D22-651D-F622-51B7B4508197";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -64.774802220964276 136.60888383138146 -1.9338759743391625 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index001_Joint_R_CTR0" -p "Index001_Joint_R_GRP0";
	rename -uid "2B762FED-4E8E-8E46-FFD7-B7BB3E231E5E";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index001_Joint_R_CTR0Shape" -p "Index001_Joint_R_CTR0";
	rename -uid "55BF74C7-41B2-B540-B6F9-D58CF02C7B61";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.398881e-14 -2.8199665e-14 
		-2 -1.4210855e-14 -2.8643754e-14 -2 -1.4210855e-14 -2.8199665e-14 -2 -1.4432899e-14 
		-2.8643754e-14 -2 -1.4210855e-14 -2.8199665e-14 2 -1.4432899e-14 -2.8643754e-14 2 
		-1.398881e-14 -2.8199665e-14 2 -1.4210855e-14 -2.8643754e-14 2;
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
createNode transform -n "Index002_Joint_R_GRP1" -p "Index_Limb_R_NODE";
	rename -uid "D1B7A26B-413F-0C8D-9838-45BEB640D5B5";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -67.453617810963436 136.60888383138152 -1.9338759743391614 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index002_Joint_R_CTR1" -p "Index002_Joint_R_GRP1";
	rename -uid "6C5C55B7-425D-E514-4D73-9DA70F62F827";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index002_Joint_R_CTR1Shape" -p "Index002_Joint_R_CTR1";
	rename -uid "55B61219-4A31-939E-66BB-DDB3D3F82D34";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0 -2 0 0 -2 0 0 -2 0 0 
		-2 0 0 2 0 0 2 0 0 2 0 0 2;
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
createNode transform -n "Index003_Joint_R_GRP2" -p "Index_Limb_R_NODE";
	rename -uid "1AFE98F3-4868-5994-8666-49828A3292CD";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -70.229582484564133 136.29203947698471 -1.9338759743391611 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index003_Joint_R_CTR2" -p "Index003_Joint_R_GRP2";
	rename -uid "8CFDA364-4603-1816-D91D-62B1A4711176";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index003_Joint_R_CTR2Shape" -p "Index003_Joint_R_CTR2";
	rename -uid "1B1FCDA1-45E9-D0BD-6F59-619E0EAA1D5C";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 -2.220446e-16 -2 -1.110223e-16 
		2.220446e-16 -2 1.110223e-16 -2.220446e-16 -2 0 2.220446e-16 -2 1.110223e-16 -2.220446e-16 
		2 0 2.220446e-16 2 0 -2.220446e-16 2 -1.110223e-16 2.220446e-16 2;
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
createNode transform -n "Index004_Joint_R_GRP3" -p "Index_Limb_R_NODE";
	rename -uid "88EA7C36-4CDA-F05E-1ACE-EF8236F8BE88";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -72.774802220964276 135.55477033959627 -1.9338759743391591 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Index004_Joint_R_CTR3" -p "Index004_Joint_R_GRP3";
	rename -uid "15A23CF8-4999-08D2-4260-9CB4435C2A87";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Index004_Joint_R_CTR3Shape" -p "Index004_Joint_R_CTR3";
	rename -uid "6DF33071-4356-04D4-3EF7-7999E39A0991";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.4210855e-14 0 -2 -1.4321877e-14 
		0 -2 -1.4210855e-14 0 -2 -1.4321877e-14 0 -2 -1.4210855e-14 0 2 -1.4321877e-14 0 
		2 -1.4210855e-14 0 2 -1.4321877e-14 0 2;
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
createNode transform -n "Middle_Limb_R_NODE" -p "LIMBS";
	rename -uid "5866A2AE-4A44-3DC3-DA01-1EB5FBFAE61A";
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
	setAttr ".ID" 36;
	setAttr ".pfrsName" -type "string" "Middle";
	setAttr ".limbType" 4;
	setAttr ".side" 2;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Middle001_Joint_R_GRP0" -p "Middle_Limb_R_NODE";
	rename -uid "E0D04831-4335-B549-065E-6193BCB2900E";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -65.588588512988565 136.60888383138146 -3.498659383191975 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle001_Joint_R_CTR0" -p "Middle001_Joint_R_GRP0";
	rename -uid "A43C3C4E-4073-3CC8-6EDD-5C9BCC0851AE";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle001_Joint_R_CTR0Shape" -p "Middle001_Joint_R_CTR0";
	rename -uid "0B70B27E-4B90-0462-EB33-E7A6F15ECCC5";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.4210855e-14 0 -2 1.4210855e-14 
		0 -2 1.4210855e-14 0 -2 1.4210855e-14 0 -2 1.4210855e-14 0 2 1.4210855e-14 0 2 1.4210855e-14 
		0 2 1.4210855e-14 0 2;
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
createNode transform -n "Middle002_Joint_R_GRP1" -p "Middle_Limb_R_NODE";
	rename -uid "FD92391E-4850-E0E0-6397-8893C705BEBB";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -68.267404102987754 136.60888383138143 -3.4986593831919741 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle002_Joint_R_CTR1" -p "Middle002_Joint_R_GRP1";
	rename -uid "EC5C6A75-48F6-421F-BFFA-89866E87C886";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 0 -4.4408920985006262e-16 ;
	setAttr ".rp" -type "double3" 0 0 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 0 0 8.8817841970012523e-16 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle002_Joint_R_CTR1Shape" -p "Middle002_Joint_R_CTR1";
	rename -uid "2B2A2380-4AE3-7A36-769B-2785BC5C5F23";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.4210855e-14 -2.8421709e-14 
		-2 -1.3766766e-14 -2.8865799e-14 -2 -1.4654944e-14 -2.797762e-14 -2 -1.4210855e-14 
		-2.8421709e-14 -2 -1.4654944e-14 -2.797762e-14 2 -1.4210855e-14 -2.8421709e-14 2 
		-1.4210855e-14 -2.8421709e-14 2 -1.3766766e-14 -2.8865799e-14 2;
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
createNode transform -n "Middle003_Joint_R_GRP2" -p "Middle_Limb_R_NODE";
	rename -uid "FE74C571-4EE7-94E3-44CC-F6BE4B35269D";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -71.043368776588409 136.29203947698471 -3.4986593831919732 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle003_Joint_R_CTR2" -p "Middle003_Joint_R_GRP2";
	rename -uid "A47B1562-4C8E-FFF8-B865-98ACBB69BEB0";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle003_Joint_R_CTR2Shape" -p "Middle003_Joint_R_CTR2";
	rename -uid "BA235A3E-4C03-8383-5125-88A12155013D";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.220446e-16 2.220446e-16 
		-2 -2.220446e-16 2.220446e-16 -2 2.220446e-16 -2.220446e-16 -2 -2.220446e-16 -2.220446e-16 
		-2 2.220446e-16 -2.220446e-16 2 -2.220446e-16 -2.220446e-16 2 2.220446e-16 2.220446e-16 
		2 -2.220446e-16 2.220446e-16 2;
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
createNode transform -n "Middle004_Joint_R_GRP3" -p "Middle_Limb_R_NODE";
	rename -uid "A6607249-4EEB-96BB-70A8-C883135CEA0E";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -73.588588512988551 135.55477033959627 -3.4986593831919706 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Middle004_Joint_R_CTR3" -p "Middle004_Joint_R_GRP3";
	rename -uid "648086AB-4D58-3B61-2AFC-AAA9D054A6BD";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Middle004_Joint_R_CTR3Shape" -p "Middle004_Joint_R_CTR3";
	rename -uid "06816702-4063-D86A-D6B1-A9A701845BA9";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.4432899e-14 2.220446e-16 
		-2 1.398881e-14 2.220446e-16 -2 1.4432899e-14 -2.220446e-16 -2 1.398881e-14 -2.220446e-16 
		-2 1.4432899e-14 -2.220446e-16 2 1.398881e-14 -2.220446e-16 2 1.4432899e-14 2.220446e-16 
		2 1.398881e-14 2.220446e-16 2;
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
createNode transform -n "Pinkie_Limb_R_NODE" -p "LIMBS";
	rename -uid "EC583B85-4806-B35C-017B-67A0411C5BA0";
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
	setAttr ".ID" 37;
	setAttr ".pfrsName" -type "string" "Pinkie";
	setAttr ".limbType" 4;
	setAttr ".side" 2;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Pinkey1_Joint_R_GRP0" -p "Pinkie_Limb_R_NODE";
	rename -uid "BB83AD86-4B52-7C11-1AAD-98B008E6A1AA";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -64.477103364243263 136.60888383138146 -7.3236168942516375 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinkey1_Joint_R_CTR0" -p "Pinkey1_Joint_R_GRP0";
	rename -uid "4ED63025-430A-C255-A712-61A52CAB4FAF";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinkey1_Joint_R_CTR0Shape" -p "Pinkey1_Joint_R_CTR0";
	rename -uid "62C6926C-4399-448A-FC36-899534D61DCF";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0 -2 0 0 -2 0 0 -2 0 0 
		-2 0 0 2 0 0 2 0 0 2 0 0 2;
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
createNode transform -n "Pinkey2_Joint_R_GRP1" -p "Pinkie_Limb_R_NODE";
	rename -uid "724DD826-4A0C-D4BE-BAE4-17A42766ECF2";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -67.155918954242438 136.60888383138146 -7.3236168942516331 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinkey2_Joint_R_CTR1" -p "Pinkey2_Joint_R_GRP1";
	rename -uid "BB264387-4AB9-D95D-EB0B-648C2FD1BD55";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinkey2_Joint_R_CTR1Shape" -p "Pinkey2_Joint_R_CTR1";
	rename -uid "5AAD6509-4BD7-749E-1F3D-6087AE6A6E58";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0 -2 0 0 -2 0 0 -2 0 0 
		-2 0 0 2 0 0 2 0 0 2 0 0 2;
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
createNode transform -n "Pinkey3_Joint_R_GRP2" -p "Pinkie_Limb_R_NODE";
	rename -uid "3FA9873F-4DA8-9FDA-BF45-DFA9BFBBD2BC";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -69.931883627843092 136.29203947698471 -7.3236168942516322 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinkey3_Joint_R_CTR2" -p "Pinkey3_Joint_R_GRP2";
	rename -uid "558BB5A1-41BA-C741-F862-699955940AD1";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinkey3_Joint_R_CTR2Shape" -p "Pinkey3_Joint_R_CTR2";
	rename -uid "F31A6F62-43C4-D2BF-05DC-A3838C323CFD";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -4.4408921e-16 -8.8817842e-16 
		-2 0 -4.4408921e-16 -2 0 4.4408921e-16 -2 4.4408921e-16 8.8817842e-16 -2 0 4.4408921e-16 
		2 4.4408921e-16 8.8817842e-16 2 -4.4408921e-16 -8.8817842e-16 2 0 -4.4408921e-16 
		2;
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
createNode transform -n "Pinkey4_Joint_R_GRP3" -p "Pinkie_Limb_R_NODE";
	rename -uid "682D2AE1-4B22-FDE0-89A2-B9B02F35BC42";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -72.477103364243263 135.55477033959627 -7.3236168942516322 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Pinkey4_Joint_R_CTR3" -p "Pinkey4_Joint_R_GRP3";
	rename -uid "37719049-40FB-024E-A67E-A590CB7126FB";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 0 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Pinkey4_Joint_R_CTR3Shape" -p "Pinkey4_Joint_R_CTR3";
	rename -uid "E6A08084-405B-B778-62B8-0ABDD108CA4F";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.4210855e-14 -2.8643754e-14 
		-2 -1.4210855e-14 -2.9087843e-14 -2 -1.4210855e-14 -2.7755576e-14 -2 -1.4210855e-14 
		-2.8199665e-14 -2 -1.4210855e-14 -2.7755576e-14 2 -1.4210855e-14 -2.8199665e-14 2 
		-1.4210855e-14 -2.8643754e-14 2 -1.4210855e-14 -2.9087843e-14 2;
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
createNode transform -n "Ring_Limb_R_NODE" -p "LIMBS";
	rename -uid "9E086B79-484C-4A2F-A28D-72B51E4111C2";
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
	setAttr ".ID" 38;
	setAttr ".pfrsName" -type "string" "Ring";
	setAttr ".limbType" 4;
	setAttr ".side" 2;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Ring001_Joint_R_GRP0" -p "Ring_Limb_R_NODE";
	rename -uid "5760A8DD-4066-2308-549A-68939F758F08";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -65.653811871969495 136.60888383138146 -5.3446071312574963 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring001_Joint_R_CTR0" -p "Ring001_Joint_R_GRP0";
	rename -uid "F1ED1129-4BC7-8955-B98B-72A01EF05212";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring001_Joint_R_CTR0Shape" -p "Ring001_Joint_R_CTR0";
	rename -uid "0B6BD2FD-477D-2300-FFFB-CF999EF811AA";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -2.220446e-16 2.8199665e-14 
		-2 2.220446e-16 2.8643754e-14 -2 -2.220446e-16 2.8199665e-14 -2 2.220446e-16 2.8643754e-14 
		-2 -2.220446e-16 2.8199665e-14 2 2.220446e-16 2.8643754e-14 2 -2.220446e-16 2.8199665e-14 
		2 2.220446e-16 2.8643754e-14 2;
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
createNode transform -n "Ring002_Joint_R_GRP1" -p "Ring_Limb_R_NODE";
	rename -uid "7C21BD32-4C0D-11B5-442A-FAA0BD319780";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -68.332627461968642 136.60888383138146 -5.3446071312574936 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring002_Joint_R_CTR1" -p "Ring002_Joint_R_GRP1";
	rename -uid "62744B20-477A-17FF-1008-819120076363";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring002_Joint_R_CTR1Shape" -p "Ring002_Joint_R_CTR1";
	rename -uid "8FAD04E9-4592-6325-C43C-70B8ECE4A2EA";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.398881e-14 2.8199665e-14 
		-2 1.4432899e-14 2.8643754e-14 -2 1.398881e-14 2.8199665e-14 -2 1.4432899e-14 2.8643754e-14 
		-2 1.398881e-14 2.8199665e-14 2 1.4432899e-14 2.8643754e-14 2 1.398881e-14 2.8199665e-14 
		2 1.4432899e-14 2.8643754e-14 2;
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
createNode transform -n "Ring003_Joint_R_GRP2" -p "Ring_Limb_R_NODE";
	rename -uid "3F8C37A4-4E42-C03E-5051-5AAEFB126169";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -71.108592135569353 136.29203947698471 -5.3446071312574945 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring003_Joint_R_CTR2" -p "Ring003_Joint_R_GRP2";
	rename -uid "626AA286-4AB0-5EB5-884A-D5BB5570DA66";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 0 8.8817841970012523e-16 ;
	setAttr ".rp" -type "double3" 0 0 -1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" 0 0 -1.7763568394002505e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring003_Joint_R_CTR2Shape" -p "Ring003_Joint_R_CTR2";
	rename -uid "EFC7CB6F-4E9E-8CC2-2C54-E89F0254663D";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.3766766e-14 -2.797762e-14 
		-2 -1.4543922e-14 -2.8421709e-14 -2 -1.3766766e-14 -2.8532732e-14 -2 -1.4765966e-14 
		-2.8976821e-14 -2 -1.3766766e-14 -2.8532732e-14 2 -1.4765966e-14 -2.8976821e-14 2 
		-1.3766766e-14 -2.797762e-14 2 -1.4543922e-14 -2.8421709e-14 2;
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
createNode transform -n "Ring004_Joint_R_GRP3" -p "Ring_Limb_R_NODE";
	rename -uid "30251FBF-44AB-3BFE-CD40-8E9494ABB0B6";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -73.653811871969495 135.55477033959627 -5.3446071312574928 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Ring004_Joint_R_CTR3" -p "Ring004_Joint_R_GRP3";
	rename -uid "51FA7DFE-4E17-8700-E0E7-DF9415548944";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 0 8.8817841970012523e-16 ;
	setAttr ".rp" -type "double3" 0 0 -1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" 0 0 -1.7763568394002505e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Ring004_Joint_R_CTR3Shape" -p "Ring004_Joint_R_CTR3";
	rename -uid "F848B158-4C1F-1D07-4238-389C5FCA2C01";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -1.3766766e-14 -2.797762e-14 
		-2 -1.4654944e-14 -2.8421709e-14 -2 -1.3766766e-14 -2.8532732e-14 -2 -1.4654944e-14 
		-2.8976821e-14 -2 -1.3766766e-14 -2.8532732e-14 2 -1.4654944e-14 -2.8976821e-14 2 
		-1.3766766e-14 -2.797762e-14 2 -1.4654944e-14 -2.8421709e-14 2;
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
createNode transform -n "Thumb_Limb_R_NODE" -p "LIMBS";
	rename -uid "36EF5962-4918-B05E-DDBA-CB8F3D35D986";
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
	setAttr ".ID" 39;
	setAttr ".pfrsName" -type "string" "Thumb";
	setAttr ".limbType" 4;
	setAttr ".side" 2;
	setAttr ".limbParentJoint" 2;
	setAttr ".bhvType" -type "string" "FK Chain";
	setAttr ".bhvFile" -type "string" "FK_Chain_01";
createNode transform -n "Thumb001_Joint_R_GRP0" -p "Thumb_Limb_R_NODE";
	rename -uid "B2FE7B35-45F7-3192-6001-179F40441EDA";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -63.400287158585201 136.60888383138152 -0.3484571953230125 ;
	setAttr ".r" -type "double3" 0 206.2475709616858 40.942160957263567 ;
	setAttr ".rp" -type "double3" -1.4210854715202004e-14 0 0 ;
	setAttr ".rpt" -type "double3" 2.3838513370570754e-14 8.3521477814360994e-15 -6.2847599786574416e-15 ;
	setAttr ".sp" -type "double3" -1.4210854715202004e-14 0 0 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb001_Joint_R_CTR0" -p "Thumb001_Joint_R_GRP0";
	rename -uid "D35C5519-452A-9132-44B0-2F9CDDD4924B";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 2.8421709430404007e-14 -3.5527136788005009e-15 ;
	setAttr ".rp" -type "double3" 7.1054273576010019e-15 0 0 ;
	setAttr ".sp" -type "double3" 7.1054273576010019e-15 0 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb001_Joint_R_CTR0Shape" -p "Thumb001_Joint_R_CTR0";
	rename -uid "F8D10FC8-4090-1455-9957-95A4B726B2E1";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  7.1054274e-15 0 -2 7.1054274e-15 
		2.220446e-16 -2 7.1054274e-15 -4.4408921e-16 -2 7.1054274e-15 0 -2 7.1054274e-15 
		-2.220446e-16 2 7.1054274e-15 0 2 7.1054274e-15 0 2 7.1054274e-15 4.4408921e-16 2;
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
createNode transform -n "Thumb002_Joint_R_GRP1" -p "Thumb_Limb_R_NODE";
	rename -uid "B9344E4A-4CB4-2E7C-CF29-5B94E2E537C3";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -64.755259656484242 135.43342353024963 0.53604413898928449 ;
	setAttr ".r" -type "double3" 0 196.71039483338339 40.942160957263411 ;
	setAttr ".rp" -type "double3" -7.1054273576010019e-15 -5.6843418860808015e-14 1.7763568394002505e-15 ;
	setAttr ".rpt" -type "double3" 4.9109503899107296e-14 1.8030355819730224e-14 -5.5207527325844061e-15 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-15 -5.6843418860808015e-14 1.7763568394002505e-15 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb002_Joint_R_CTR1" -p "Thumb002_Joint_R_GRP1";
	rename -uid "822C6381-4C64-C13C-4075-4D8088CDF768";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 0 -5.3290705182007514e-15 ;
	setAttr ".rp" -type "double3" -7.1054273576010019e-15 -5.6843418860808015e-14 1.5987211554602254e-14 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-15 -5.6843418860808015e-14 1.5987211554602254e-14 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb002_Joint_R_CTR1Shape" -p "Thumb002_Joint_R_CTR1";
	rename -uid "F0F88E0A-4031-B55D-F70E-D6A78A4D2A44";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -7.327472e-15 -2.8199665e-14 
		-2 -6.8833828e-15 -2.9087843e-14 -2 -7.327472e-15 -2.7755576e-14 -2 -6.8833828e-15 
		-2.8643754e-14 -2 -7.327472e-15 -2.7755576e-14 2 -6.8833828e-15 -2.8643754e-14 2 
		-7.327472e-15 -2.8199665e-14 2 -6.8833828e-15 -2.9087843e-14 2;
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
createNode transform -n "Thumb003_Joint_R_GRP2" -p "Thumb_Limb_R_NODE";
	rename -uid "D7DF4804-45B9-DA89-3382-448D7B52D356";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -66.134781242273931 134.23666650295604 1.0843162730920781 ;
	setAttr ".r" -type "double3" 0 196.7103948333835 40.942160957263489 ;
	setAttr ".rp" -type "double3" 7.1054273576010019e-15 2.8421709430404007e-14 -1.7763568394002505e-15 ;
	setAttr ".rpt" -type "double3" -3.0484847825901861e-14 -1.1077594968637878e-14 5.5207527325844171e-15 ;
	setAttr ".sp" -type "double3" 7.1054273576010019e-15 2.8421709430404007e-14 -1.7763568394002505e-15 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb003_Joint_R_CTR2" -p "Thumb003_Joint_R_GRP2";
	rename -uid "91F7EDC5-4D45-52EB-AC09-B6A3D349937F";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0 1.7763568394002505e-15 ;
	setAttr ".rp" -type "double3" 0 2.8421709430404007e-14 -5.3290705182007514e-15 ;
	setAttr ".sp" -type "double3" 0 2.8421709430404007e-14 -5.3290705182007514e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb003_Joint_R_CTR2Shape" -p "Thumb003_Joint_R_CTR2";
	rename -uid "2637BA58-4F20-3CCD-E0CB-09B1F3C49935";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.4321877e-14 1.110223e-16 
		-2 1.4210855e-14 3.3306691e-16 -2 1.4321877e-14 -3.3306691e-16 -2 1.4210855e-14 -1.110223e-16 
		-2 1.4321877e-14 -3.3306691e-16 2 1.4210855e-14 -1.110223e-16 2 1.4321877e-14 1.110223e-16 
		2 1.4210855e-14 3.3306691e-16 2;
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
createNode transform -n "Thumb004_Joint_R_GRP3" -p "Thumb_Limb_R_NODE";
	rename -uid "35CD7B26-4A80-F704-D470-5BBE94D92060";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -67.746851922002563 132.83816941937846 1.1555027509490552 ;
	setAttr ".r" -type "double3" 0 196.7103948333835 40.942160957263489 ;
	setAttr ".rp" -type "double3" 1.4210854715202004e-14 2.8421709430404007e-14 0 ;
	setAttr ".rpt" -type "double3" -4.3116671931860861e-14 -1.5871832487164237e-14 4.0861079806511668e-15 ;
	setAttr ".sp" -type "double3" 1.4210854715202004e-14 2.8421709430404007e-14 0 ;
	setAttr ".groupIndex" 3;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Thumb004_Joint_R_CTR3" -p "Thumb004_Joint_R_GRP3";
	rename -uid "92796437-47D2-51BA-7D3F-CBA81CE1CEB1";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 0 0 ;
	setAttr ".rp" -type "double3" -1.4210854715202004e-14 2.8421709430404007e-14 -1.0658141036401503e-14 ;
	setAttr ".sp" -type "double3" -1.4210854715202004e-14 2.8421709430404007e-14 -1.0658141036401503e-14 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Thumb004_Joint_R_CTR3Shape" -p "Thumb004_Joint_R_CTR3";
	rename -uid "D0AE5351-4098-CE3B-C6BD-F4B71ABDC4CC";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  2.220446e-16 2.220446e-16 
		-2 0 2.220446e-16 -2 2.220446e-16 -2.220446e-16 -2 0 -2.220446e-16 -2 0 -2.220446e-16 
		2 -2.220446e-16 -2.220446e-16 2 0 2.220446e-16 2 -2.220446e-16 2.220446e-16 2;
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
createNode transform -n "FaceBrow_Limb_R_NODE" -p "LIMBS";
	rename -uid "A7DC6E7D-44B9-4355-27F2-C2862300E9B9";
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
	addAttr -ci true -sn "limbParentJoint" -ln "limbParentJoint" -min 0 -max 0 -en "UF1" 
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
	setAttr ".ID" 40;
	setAttr ".pfrsName" -type "string" "FaceBrow";
	setAttr ".limbType" 2;
	setAttr ".limbLocation" 1;
	setAttr ".side" 2;
	setAttr ".bhvType" -type "string" "FK Branch";
	setAttr ".bhvFile" -type "string" "FK_Branch_01";
createNode transform -n "Brow1_Joint_R_GRP0" -p "FaceBrow_Limb_R_NODE";
	rename -uid "6181BA5E-47B8-615A-7C91-BB99A2406143";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -2.1872999668121311 171.05889892578128 12.542099952697779 ;
	setAttr ".r" -type "double3" -171.00929518926426 -72.694829766660504 165.22064825879838 ;
	setAttr ".rp" -type "double3" 0 2.8421709430404007e-14 -1.7763568394002505e-15 ;
	setAttr ".rpt" -type "double3" 4.7514963598814617e-15 -3.5512031152929589e-16 9.7706456401097364e-16 ;
	setAttr ".sp" -type "double3" 0 2.8421709430404007e-14 -1.7763568394002505e-15 ;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Brow1_Joint_R_CTR0" -p "Brow1_Joint_R_GRP0";
	rename -uid "9776EBAE-4F9F-C971-81F6-858F7434DE78";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 0 -3.5527136788005009e-15 ;
	setAttr ".rp" -type "double3" 0 2.8421709430404007e-14 5.3290705182007514e-15 ;
	setAttr ".sp" -type "double3" 0 2.8421709430404007e-14 5.3290705182007514e-15 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Brow1_Joint_R_CTR0Shape" -p "Brow1_Joint_R_CTR0";
	rename -uid "6AB6AD47-4119-980F-45D5-D6865BF29C9F";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  3.1086245e-15 4.773959e-15 
		-2 3.5527137e-15 5.4400928e-15 -2 3.1086245e-15 2.8865799e-15 -2 3.5527137e-15 3.5527137e-15 
		-2 3.5527137e-15 -5.4400928e-15 2 3.9968029e-15 -4.773959e-15 2 3.5527137e-15 -3.5527137e-15 
		2 3.9968029e-15 -2.8865799e-15 2;
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
createNode transform -n "Brow2_Joint_R_GRP1" -p "FaceBrow_Limb_R_NODE";
	rename -uid "AF5EABAA-408F-95BC-CAD3-4C85EDAB8027";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -4.2221279680112831 171.37220824413748 12.214755745846217 ;
	setAttr ".r" -type "double3" -163.18812752844573 -71.740513904941935 165.70222808676843 ;
	setAttr ".groupIndex" 1;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Brow2_Joint_R_CTR1" -p "Brow2_Joint_R_GRP1";
	rename -uid "FF5DC8D2-496E-5B0A-401F-E6A54FA528B2";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 5.6843418860808015e-14 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Brow2_Joint_R_CTR1Shape" -p "Brow2_Joint_R_CTR1";
	rename -uid "A89F3E90-4A84-68A8-60FB-B1973F1EA9AF";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -4.4408921e-16 -2.4868996e-14 
		-2 0 -2.6645353e-14 -2 -4.4408921e-16 -2.4868996e-14 -2 0 -2.6867397e-14 -2 0 -3.0198066e-14 
		2 4.4408921e-16 -3.2085445e-14 2 0 -2.9976022e-14 2 4.4408921e-16 -3.1974423e-14 
		2;
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
createNode transform -n "Brow3_Joint_R_GRP2" -p "FaceBrow_Limb_R_NODE";
	rename -uid "42AB1973-443E-8F7F-5426-239C8269A5BA";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "groupIndex" -ln "groupIndex" -at "long";
	addAttr -ci true -sn "control" -ln "control" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -dt "string";
	addAttr -ci true -sn "limb" -ln "limb" -dt "string";
	addAttr -ci true -sn "constraintGroups" -ln "constraintGroups" -dt "string";
	addAttr -ci true -sn "used" -ln "used" -dt "string";
	addAttr -ci true -sn "groupType" -ln "groupType" -dt "string";
	setAttr ".t" -type "double3" -5.5333063335860846 170.89503278940211 10.58734877621607 ;
	setAttr ".r" -type "double3" -165.85460324135744 -41.134246091602229 178.73324549267949 ;
	setAttr ".rp" -type "double3" -1.7763568394002505e-15 2.8421709430404007e-14 7.1054273576010019e-15 ;
	setAttr ".rpt" -type "double3" -5.4144869853497745e-15 -2.432910683950945e-15 -1.8694655688502029e-14 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-15 2.8421709430404007e-14 7.1054273576010019e-15 ;
	setAttr ".groupIndex" 2;
	setAttr ".groupType" -type "string" "Joint";
createNode transform -n "Brow3_Joint_R_CTR2" -p "Brow3_Joint_R_GRP2";
	rename -uid "DADB3989-48C7-CDAA-F050-96888768D66B";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	addAttr -ci true -sn "pfrsVersion" -ln "pfrsVersion" -dv 100 -at "short";
	addAttr -ci true -sn "group" -ln "group" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -5.3290705182007514e-15 2.8421709430404007e-14 0 ;
	setAttr ".rp" -type "double3" -7.1054273576010019e-15 2.8421709430404007e-14 0 ;
	setAttr ".sp" -type "double3" -7.1054273576010019e-15 2.8421709430404007e-14 0 ;
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Brow3_Joint_R_CTR2Shape" -p "Brow3_Joint_R_CTR2";
	rename -uid "860ECD1A-46B1-BACC-FF78-36ABC8B2DE61";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  -2.220446e-16 -1.9984014e-15 
		-2 2.220446e-16 -1.7763568e-15 -2 -2.220446e-16 -2.3314684e-15 -2 2.220446e-16 -1.9984014e-15 
		-2 -2.220446e-16 1.7763568e-15 2 2.220446e-16 1.9984014e-15 2 -2.220446e-16 1.9984014e-15 
		2 2.220446e-16 2.3314684e-15 2;
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
createNode transform -n "MESHES" -p "TEMP_RigRoot";
	rename -uid "55C9537D-4B33-E52F-447C-7098A77679A7";
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
	rename -uid "040DE6A1-428A-2F15-5096-86A75F396728";
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
	rename -uid "0CCF2784-4826-AA42-7447-A4BADC32851B";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Circle_Wire";
createNode nurbsCurve -n "Circle_WireShape" -p "Circle_Wire";
	rename -uid "AC9C70C3-4C59-3257-251C-48A28000ABEB";
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
	rename -uid "2B095C59-43CC-65AC-E575-DDAC6854740A";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cube_Poly";
createNode mesh -n "Cube_PolyShape" -p "Cube_Poly";
	rename -uid "ADB1CC9E-4B7E-4367-E327-D0AEE01E7006";
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
	rename -uid "B9877E41-4B01-76DC-4823-B999C07B30EC";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cube_Wire";
createNode nurbsCurve -n "Cube_WireShape" -p "Cube_Wire";
	rename -uid "702D850C-4364-B51A-2537-F095CA4F5BC3";
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
	rename -uid "A62CF1D0-4AA2-D2C1-FA2C-36B08DEF4164";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Cylinder_Poly";
createNode mesh -n "Cylinder_PolyShape" -p "Cylinder_Poly";
	rename -uid "C9CBDC1C-40A0-1C11-81C0-C1BAF69B72BE";
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
	rename -uid "8AE93B2A-43DB-CAA1-9368-0ABF087309BF";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Diamond_Wire";
createNode nurbsCurve -n "Diamond_WireShape" -p "Diamond_Wire";
	rename -uid "A24BCB12-4145-0EA1-F504-2786850C3E16";
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
	rename -uid "1BF7C2B7-4574-E92D-A9E3-BA8B3B8A98AF";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Pin_Wire";
createNode nurbsCurve -n "Pin_WireShape" -p "Pin_Wire";
	rename -uid "FE89A29C-4608-4C43-4E95-2AAB02069CBF";
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
	rename -uid "BED4756C-4FAD-69E3-795F-3085EB3CF0DE";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Sphere_Poly";
createNode mesh -n "Sphere_PolyShape" -p "Sphere_Poly";
	rename -uid "86ECDC72-4FDE-CBF1-2777-E5907499F621";
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
	rename -uid "C0BC4BA7-4BE2-0BA0-B7D6-53A2554A39CB";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".rigRoot" -type "string" "Square_Wire";
createNode nurbsCurve -n "Square_WireShape" -p "Square_Wire";
	rename -uid "5C0BF9FF-4CFD-21A3-1C34-589CEF451EF3";
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
	rename -uid "472E087A-4F1D-F9BB-7335-F09DA7708847";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "100812AF-422C-D74D-2FC6-E9BB225B867A";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "EC37410C-4974-1E7E-04D1-9999B9960847";
createNode displayLayerManager -n "layerManager";
	rename -uid "13CD35AE-44D1-781E-BF24-4A9156A2F5E9";
	setAttr -s 4 ".dli[1:3]"  1 2 3;
	setAttr -s 4 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "59019C57-4371-ECEC-B423-38808FC7D024";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "D8DA1A2A-4E17-BEB6-67B7-00B5248C781C";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "9A05E3B8-437D-44C8-BED4-6DA65C42613F";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "D01791FD-456D-2A2D-B47D-2EBA9883527D";
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
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1282\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1282\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1282\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 50 -size 100 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "70317E39-421E-26D6-72F1-6F9B66A6EDBD";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "Control_Disp";
	rename -uid "7CB83747-4528-2DBC-000A-EB8DEB6EA329";
	setAttr ".v" no;
	setAttr ".do" 1;
createNode displayLayer -n "Joint_Disp";
	rename -uid "AE60C739-47D7-4091-4277-BD9A35D4E1B4";
	setAttr ".do" 2;
createNode displayLayer -n "Meshes_Disp";
	rename -uid "6FF52081-4626-9328-72A3-1D9C269A049D";
	setAttr ".dt" 2;
	setAttr ".do" 3;
createNode materialInfo -n "materialInfo1";
	rename -uid "E670CB78-4373-6E85-6426-BF81DDC0EA9A";
createNode shadingEngine -n "lambert2SG";
	rename -uid "7729C53D-4BEA-09B7-EDAF-11B56029857D";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode lambert -n "TempMaterial";
	rename -uid "FF491AB6-4C04-524D-7EEF-A9970EDF1362";
	setAttr ".c" -type "float3" 1 0.92308331 0 ;
	setAttr ".it" -type "float3" 0.69277108 0.69277108 0.69277108 ;
createNode surfaceShader -n "LControlsMaterial";
	rename -uid "C5872586-478E-291A-216C-D697703FA66C";
	setAttr ".oc" -type "float3" 0 0 1 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "LControlsMaterialSG";
	rename -uid "38C5971D-4660-D143-9F8F-37A7AE20686D";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr -s 30 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "37CC2722-4D50-5094-A8BD-1CAC53372BD4";
createNode surfaceShader -n "MControlsMaterial";
	rename -uid "D1A37C31-4C10-520E-EF74-539613AA56B4";
	setAttr ".oc" -type "float3" 1 1 0 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "MControlsMaterialSG";
	rename -uid "A9118EB3-4553-44D0-A797-CC943480D097";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "CC695F64-4807-F081-6B9D-EFAB7121ED93";
createNode surfaceShader -n "RControlsMaterial";
	rename -uid "C11949DB-4598-0162-253C-BBBAD10D3DDF";
	setAttr ".oc" -type "float3" 1 0 0 ;
	setAttr ".ot" -type "float3" 0.80000001 0.80000001 0.80000001 ;
createNode shadingEngine -n "RControlsMaterialSG";
	rename -uid "321481AE-4F78-76E3-446A-5FB1C02D7F12";
	addAttr -ci true -sn "rigRoot" -ln "rigRoot" -dt "string";
	setAttr ".ihi" 0;
	setAttr -s 30 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "F10744D3-4DF9-F55C-F4D9-B4B59CFD2E14";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "597C877A-46B0-C03B-8975-F0B6BADB300A";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -421.42855468250531 -324.99998708566085 ;
	setAttr ".tgi[0].vh" -type "double2" 421.42855468250531 323.80951094248991 ;
	setAttr -s 329 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1257.142822265625;
	setAttr ".tgi[0].ni[0].y" 711.4285888671875;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 642.85711669921875;
	setAttr ".tgi[0].ni[1].y" 3232.857177734375;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[2].y" -3227.142822265625;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 1257.142822265625;
	setAttr ".tgi[0].ni[3].y" 3162.857177734375;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[4].y" -4838.5712890625;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[5].y" 3965.71435546875;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 1257.142822265625;
	setAttr ".tgi[0].ni[6].y" -3744.28564453125;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[7].y" 7087.14306640625;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 335.71429443359375;
	setAttr ".tgi[0].ni[8].y" 7687.14306640625;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 335.71429443359375;
	setAttr ".tgi[0].ni[9].y" 8625.7138671875;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" -1507.142822265625;
	setAttr ".tgi[0].ni[10].y" 11615.7138671875;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 1257.142822265625;
	setAttr ".tgi[0].ni[11].y" -268.57144165039063;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" -585.71429443359375;
	setAttr ".tgi[0].ni[12].y" 10247.142578125;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 1892.857177734375;
	setAttr ".tgi[0].ni[13].y" 1937.142822265625;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 1892.857177734375;
	setAttr ".tgi[0].ni[14].y" 4000;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[15].y" 9661.4287109375;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 1892.857177734375;
	setAttr ".tgi[0].ni[16].y" -5512.85693359375;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 335.71429443359375;
	setAttr ".tgi[0].ni[17].y" 5064.28564453125;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[18].y" -1801.4285888671875;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[19].y" 9560;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 335.71429443359375;
	setAttr ".tgi[0].ni[20].y" 6124.28564453125;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 642.85711669921875;
	setAttr ".tgi[0].ni[21].y" 8115.71435546875;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" -1200;
	setAttr ".tgi[0].ni[22].y" 10684.2861328125;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 1257.142822265625;
	setAttr ".tgi[0].ni[23].y" 5381.4287109375;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 1892.857177734375;
	setAttr ".tgi[0].ni[24].y" 680;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 1892.857177734375;
	setAttr ".tgi[0].ni[25].y" 7655.71435546875;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[26].y" 5304.28564453125;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 1892.857177734375;
	setAttr ".tgi[0].ni[27].y" 5155.71435546875;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 1257.142822265625;
	setAttr ".tgi[0].ni[28].y" 3321.428466796875;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 1892.857177734375;
	setAttr ".tgi[0].ni[29].y" 9058.5712890625;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[30].y" -7777.14306640625;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 1257.142822265625;
	setAttr ".tgi[0].ni[31].y" -687.14288330078125;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 1257.142822265625;
	setAttr ".tgi[0].ni[32].y" -4537.14306640625;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" -2428.571533203125;
	setAttr ".tgi[0].ni[33].y" 11440;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[34].y" -4521.4287109375;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 1892.857177734375;
	setAttr ".tgi[0].ni[35].y" 3368.571533203125;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[36].y" -3430;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 1257.142822265625;
	setAttr ".tgi[0].ni[37].y" -6707.14306640625;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[38].y" -7104.28564453125;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 1892.857177734375;
	setAttr ".tgi[0].ni[39].y" 10020;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 642.85711669921875;
	setAttr ".tgi[0].ni[40].y" 5842.85693359375;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 642.85711669921875;
	setAttr ".tgi[0].ni[41].y" 7341.4287109375;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" 1257.142822265625;
	setAttr ".tgi[0].ni[42].y" -2075.71435546875;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 1892.857177734375;
	setAttr ".tgi[0].ni[43].y" 5257.14306640625;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 1892.857177734375;
	setAttr ".tgi[0].ni[44].y" 4997.14306640625;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 1257.142822265625;
	setAttr ".tgi[0].ni[45].y" -8444.2861328125;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 1257.142822265625;
	setAttr ".tgi[0].ni[46].y" 812.85711669921875;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 28.571428298950195;
	setAttr ".tgi[0].ni[47].y" 9704.2861328125;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" -2428.571533203125;
	setAttr ".tgi[0].ni[48].y" 12094.2861328125;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 1257.142822265625;
	setAttr ".tgi[0].ni[49].y" 5482.85693359375;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 1892.857177734375;
	setAttr ".tgi[0].ni[50].y" 1340;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 1892.857177734375;
	setAttr ".tgi[0].ni[51].y" -1121.4285888671875;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" 950;
	setAttr ".tgi[0].ni[52].y" 5338.5712890625;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[53].y" 61.428569793701172;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 1892.857177734375;
	setAttr ".tgi[0].ni[54].y" -6648.5712890625;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 1257.142822265625;
	setAttr ".tgi[0].ni[55].y" -2780;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" 1257.142822265625;
	setAttr ".tgi[0].ni[56].y" 8631.4287109375;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[57].y" -8840;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" 1257.142822265625;
	setAttr ".tgi[0].ni[58].y" 9930;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" 950;
	setAttr ".tgi[0].ni[59].y" 6147.14306640625;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" 1257.142822265625;
	setAttr ".tgi[0].ni[60].y" -4061.428466796875;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" 1892.857177734375;
	setAttr ".tgi[0].ni[61].y" 4500;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" 1257.142822265625;
	setAttr ".tgi[0].ni[62].y" 6430;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[63].y" -4680;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" 1257.142822265625;
	setAttr ".tgi[0].ni[64].y" -6060;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" 335.71429443359375;
	setAttr ".tgi[0].ni[65].y" 7114.28564453125;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" 1257.142822265625;
	setAttr ".tgi[0].ni[66].y" -4924.28564453125;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" 1257.142822265625;
	setAttr ".tgi[0].ni[67].y" -3154.28564453125;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" 1892.857177734375;
	setAttr ".tgi[0].ni[68].y" -8254.2861328125;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[69].y" -4940;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" 642.85711669921875;
	setAttr ".tgi[0].ni[70].y" -621.4285888671875;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[71].y" 6404.28564453125;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" 335.71429443359375;
	setAttr ".tgi[0].ni[72].y" 6898.5712890625;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" 1257.142822265625;
	setAttr ".tgi[0].ni[73].y" -7500;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" 1892.857177734375;
	setAttr ".tgi[0].ni[74].y" 10485.7138671875;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" 1257.142822265625;
	setAttr ".tgi[0].ni[75].y" -890;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" 1257.142822265625;
	setAttr ".tgi[0].ni[76].y" -4435.71435546875;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" 1257.142822265625;
	setAttr ".tgi[0].ni[77].y" -7068.5712890625;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" 1257.142822265625;
	setAttr ".tgi[0].ni[78].y" 4360;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" 950;
	setAttr ".tgi[0].ni[79].y" 9648.5712890625;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" 1892.857177734375;
	setAttr ".tgi[0].ni[80].y" -4447.14306640625;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" 1892.857177734375;
	setAttr ".tgi[0].ni[81].y" -1768.5714111328125;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" 1257.142822265625;
	setAttr ".tgi[0].ni[82].y" 7071.4287109375;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" 335.71429443359375;
	setAttr ".tgi[0].ni[83].y" 7788.5712890625;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" 1892.857177734375;
	setAttr ".tgi[0].ni[84].y" 7180;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" -278.57144165039063;
	setAttr ".tgi[0].ni[85].y" 9871.4287109375;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" 1257.142822265625;
	setAttr ".tgi[0].ni[86].y" 4042.857177734375;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" 1892.857177734375;
	setAttr ".tgi[0].ni[87].y" 8188.5712890625;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" 1257.142822265625;
	setAttr ".tgi[0].ni[88].y" 9714.2861328125;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" 1257.142822265625;
	setAttr ".tgi[0].ni[89].y" 7401.4287109375;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" 1892.857177734375;
	setAttr ".tgi[0].ni[90].y" -9301.4287109375;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" 1892.857177734375;
	setAttr ".tgi[0].ni[91].y" 6145.71435546875;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" 1257.142822265625;
	setAttr ".tgi[0].ni[92].y" -1568.5714111328125;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[93].y" 2597.142822265625;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" 950;
	setAttr ".tgi[0].ni[94].y" 1865.7142333984375;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" 1257.142822265625;
	setAttr ".tgi[0].ni[95].y" 8847.142578125;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" 1892.857177734375;
	setAttr ".tgi[0].ni[96].y" -848.5714111328125;
	setAttr ".tgi[0].ni[96].nvs" 18304;
	setAttr ".tgi[0].ni[97].x" 1257.142822265625;
	setAttr ".tgi[0].ni[97].y" -2335.71435546875;
	setAttr ".tgi[0].ni[97].nvs" 18304;
	setAttr ".tgi[0].ni[98].x" 1892.857177734375;
	setAttr ".tgi[0].ni[98].y" -518.5714111328125;
	setAttr ".tgi[0].ni[98].nvs" 18304;
	setAttr ".tgi[0].ni[99].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[99].y" 2438.571533203125;
	setAttr ".tgi[0].ni[99].nvs" 18304;
	setAttr ".tgi[0].ni[100].x" 1892.857177734375;
	setAttr ".tgi[0].ni[100].y" -4852.85693359375;
	setAttr ".tgi[0].ni[100].nvs" 18304;
	setAttr ".tgi[0].ni[101].x" 1257.142822265625;
	setAttr ".tgi[0].ni[101].y" -1467.142822265625;
	setAttr ".tgi[0].ni[101].nvs" 18304;
	setAttr ".tgi[0].ni[102].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[102].y" -7992.85693359375;
	setAttr ".tgi[0].ni[102].nvs" 18304;
	setAttr ".tgi[0].ni[103].x" 1892.857177734375;
	setAttr ".tgi[0].ni[103].y" -10970;
	setAttr ".tgi[0].ni[103].nvs" 18304;
	setAttr ".tgi[0].ni[104].x" 28.571428298950195;
	setAttr ".tgi[0].ni[104].y" 8180;
	setAttr ".tgi[0].ni[104].nvs" 18304;
	setAttr ".tgi[0].ni[105].x" 1892.857177734375;
	setAttr ".tgi[0].ni[105].y" -10278.5712890625;
	setAttr ".tgi[0].ni[105].nvs" 18304;
	setAttr ".tgi[0].ni[106].x" 1257.142822265625;
	setAttr ".tgi[0].ni[106].y" -167.14285278320313;
	setAttr ".tgi[0].ni[106].nvs" 18304;
	setAttr ".tgi[0].ni[107].x" 950;
	setAttr ".tgi[0].ni[107].y" 7454.28564453125;
	setAttr ".tgi[0].ni[107].nvs" 18304;
	setAttr ".tgi[0].ni[108].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[108].y" -5541.4287109375;
	setAttr ".tgi[0].ni[108].nvs" 18304;
	setAttr ".tgi[0].ni[109].x" 1257.142822265625;
	setAttr ".tgi[0].ni[109].y" -7284.28564453125;
	setAttr ".tgi[0].ni[109].nvs" 18304;
	setAttr ".tgi[0].ni[110].x" 1257.142822265625;
	setAttr ".tgi[0].ni[110].y" 2845.71435546875;
	setAttr ".tgi[0].ni[110].nvs" 18304;
	setAttr ".tgi[0].ni[111].x" 1892.857177734375;
	setAttr ".tgi[0].ni[111].y" -4650;
	setAttr ".tgi[0].ni[111].nvs" 18304;
	setAttr ".tgi[0].ni[112].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[112].y" 4384.28564453125;
	setAttr ".tgi[0].ni[112].nvs" 18304;
	setAttr ".tgi[0].ni[113].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[113].y" -1960;
	setAttr ".tgi[0].ni[113].nvs" 18304;
	setAttr ".tgi[0].ni[114].x" 1892.857177734375;
	setAttr ".tgi[0].ni[114].y" -9142.857421875;
	setAttr ".tgi[0].ni[114].nvs" 18304;
	setAttr ".tgi[0].ni[115].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[115].y" 1518.5714111328125;
	setAttr ".tgi[0].ni[115].nvs" 18304;
	setAttr ".tgi[0].ni[116].x" 1257.142822265625;
	setAttr ".tgi[0].ni[116].y" -1872.857177734375;
	setAttr ".tgi[0].ni[116].nvs" 18304;
	setAttr ".tgi[0].ni[117].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[117].y" -432.85714721679688;
	setAttr ".tgi[0].ni[117].nvs" 18304;
	setAttr ".tgi[0].ni[118].x" 950;
	setAttr ".tgi[0].ni[118].y" 2684.28564453125;
	setAttr ".tgi[0].ni[118].nvs" 18304;
	setAttr ".tgi[0].ni[119].x" 1892.857177734375;
	setAttr ".tgi[0].ni[119].y" 1124.2857666015625;
	setAttr ".tgi[0].ni[119].nvs" 18304;
	setAttr ".tgi[0].ni[120].x" 1257.142822265625;
	setAttr ".tgi[0].ni[120].y" 10431.4287109375;
	setAttr ".tgi[0].ni[120].nvs" 18304;
	setAttr ".tgi[0].ni[121].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[121].y" 6821.4287109375;
	setAttr ".tgi[0].ni[121].nvs" 18304;
	setAttr ".tgi[0].ni[122].x" 1892.857177734375;
	setAttr ".tgi[0].ni[122].y" -6921.4287109375;
	setAttr ".tgi[0].ni[122].nvs" 18304;
	setAttr ".tgi[0].ni[123].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[123].y" 1905.7142333984375;
	setAttr ".tgi[0].ni[123].nvs" 18304;
	setAttr ".tgi[0].ni[124].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[124].y" -3531.428466796875;
	setAttr ".tgi[0].ni[124].nvs" 18304;
	setAttr ".tgi[0].ni[125].x" 642.85711669921875;
	setAttr ".tgi[0].ni[125].y" 7021.4287109375;
	setAttr ".tgi[0].ni[125].nvs" 18304;
	setAttr ".tgi[0].ni[126].x" 1892.857177734375;
	setAttr ".tgi[0].ni[126].y" 9477.142578125;
	setAttr ".tgi[0].ni[126].nvs" 18304;
	setAttr ".tgi[0].ni[127].x" -278.57144165039063;
	setAttr ".tgi[0].ni[127].y" 11162.857421875;
	setAttr ".tgi[0].ni[127].nvs" 18304;
	setAttr ".tgi[0].ni[128].x" 1257.142822265625;
	setAttr ".tgi[0].ni[128].y" -5298.5712890625;
	setAttr ".tgi[0].ni[128].nvs" 18304;
	setAttr ".tgi[0].ni[129].x" 1892.857177734375;
	setAttr ".tgi[0].ni[129].y" 3051.428466796875;
	setAttr ".tgi[0].ni[129].nvs" 18304;
	setAttr ".tgi[0].ni[130].x" 1892.857177734375;
	setAttr ".tgi[0].ni[130].y" -11071.4287109375;
	setAttr ".tgi[0].ni[130].nvs" 18304;
	setAttr ".tgi[0].ni[131].x" 28.571428298950195;
	setAttr ".tgi[0].ni[131].y" 9041.4287109375;
	setAttr ".tgi[0].ni[131].nvs" 18304;
	setAttr ".tgi[0].ni[132].x" 642.85711669921875;
	setAttr ".tgi[0].ni[132].y" 5080;
	setAttr ".tgi[0].ni[132].nvs" 18304;
	setAttr ".tgi[0].ni[133].x" 1892.857177734375;
	setAttr ".tgi[0].ni[133].y" -12175.7138671875;
	setAttr ".tgi[0].ni[133].nvs" 18304;
	setAttr ".tgi[0].ni[134].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[134].y" 7910;
	setAttr ".tgi[0].ni[134].nvs" 18304;
	setAttr ".tgi[0].ni[135].x" 1257.142822265625;
	setAttr ".tgi[0].ni[135].y" 6531.4287109375;
	setAttr ".tgi[0].ni[135].nvs" 18304;
	setAttr ".tgi[0].ni[136].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[136].y" 4542.85693359375;
	setAttr ".tgi[0].ni[136].nvs" 18304;
	setAttr ".tgi[0].ni[137].x" 1257.142822265625;
	setAttr ".tgi[0].ni[137].y" 6741.4287109375;
	setAttr ".tgi[0].ni[137].nvs" 18304;
	setAttr ".tgi[0].ni[138].x" 1892.857177734375;
	setAttr ".tgi[0].ni[138].y" -3057.142822265625;
	setAttr ".tgi[0].ni[138].nvs" 18304;
	setAttr ".tgi[0].ni[139].x" 1257.142822265625;
	setAttr ".tgi[0].ni[139].y" -4220;
	setAttr ".tgi[0].ni[139].nvs" 18304;
	setAttr ".tgi[0].ni[140].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[140].y" 4067.142822265625;
	setAttr ".tgi[0].ni[140].nvs" 18304;
	setAttr ".tgi[0].ni[141].x" 28.571428298950195;
	setAttr ".tgi[0].ni[141].y" 9257.142578125;
	setAttr ".tgi[0].ni[141].nvs" 18304;
	setAttr ".tgi[0].ni[142].x" 1892.857177734375;
	setAttr ".tgi[0].ni[142].y" 7281.4287109375;
	setAttr ".tgi[0].ni[142].nvs" 18304;
	setAttr ".tgi[0].ni[143].x" 1257.142822265625;
	setAttr ".tgi[0].ni[143].y" 2642.857177734375;
	setAttr ".tgi[0].ni[143].nvs" 18304;
	setAttr ".tgi[0].ni[144].x" 1892.857177734375;
	setAttr ".tgi[0].ni[144].y" -5957.14306640625;
	setAttr ".tgi[0].ni[144].nvs" 18304;
	setAttr ".tgi[0].ni[145].x" 1257.142822265625;
	setAttr ".tgi[0].ni[145].y" 194.28572082519531;
	setAttr ".tgi[0].ni[145].nvs" 18304;
	setAttr ".tgi[0].ni[146].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[146].y" -2662.857177734375;
	setAttr ".tgi[0].ni[146].nvs" 18304;
	setAttr ".tgi[0].ni[147].x" 1257.142822265625;
	setAttr ".tgi[0].ni[147].y" 6842.85693359375;
	setAttr ".tgi[0].ni[147].nvs" 18304;
	setAttr ".tgi[0].ni[148].x" 1257.142822265625;
	setAttr ".tgi[0].ni[148].y" 4620;
	setAttr ".tgi[0].ni[148].nvs" 18304;
	setAttr ".tgi[0].ni[149].x" 1892.857177734375;
	setAttr ".tgi[0].ni[149].y" 3571.428466796875;
	setAttr ".tgi[0].ni[149].nvs" 18304;
	setAttr ".tgi[0].ni[150].x" 1257.142822265625;
	setAttr ".tgi[0].ni[150].y" 6271.4287109375;
	setAttr ".tgi[0].ni[150].nvs" 18304;
	setAttr ".tgi[0].ni[151].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[151].y" 2337.142822265625;
	setAttr ".tgi[0].ni[151].nvs" 18304;
	setAttr ".tgi[0].ni[152].x" 1892.857177734375;
	setAttr ".tgi[0].ni[152].y" -7765.71435546875;
	setAttr ".tgi[0].ni[152].nvs" 18304;
	setAttr ".tgi[0].ni[153].x" 1257.142822265625;
	setAttr ".tgi[0].ni[153].y" 6112.85693359375;
	setAttr ".tgi[0].ni[153].nvs" 18304;
	setAttr ".tgi[0].ni[154].x" 1892.857177734375;
	setAttr ".tgi[0].ni[154].y" -12848.5712890625;
	setAttr ".tgi[0].ni[154].nvs" 18304;
	setAttr ".tgi[0].ni[155].x" 335.71429443359375;
	setAttr ".tgi[0].ni[155].y" 5565.71435546875;
	setAttr ".tgi[0].ni[155].nvs" 18304;
	setAttr ".tgi[0].ni[156].x" 28.571428298950195;
	setAttr ".tgi[0].ni[156].y" 7118.5712890625;
	setAttr ".tgi[0].ni[156].nvs" 18304;
	setAttr ".tgi[0].ni[157].x" 1257.142822265625;
	setAttr ".tgi[0].ni[157].y" 4201.4287109375;
	setAttr ".tgi[0].ni[157].nvs" 18304;
	setAttr ".tgi[0].ni[158].x" 1257.142822265625;
	setAttr ".tgi[0].ni[158].y" 7502.85693359375;
	setAttr ".tgi[0].ni[158].nvs" 18304;
	setAttr ".tgi[0].ni[159].x" 1892.857177734375;
	setAttr ".tgi[0].ni[159].y" -4751.4287109375;
	setAttr ".tgi[0].ni[159].nvs" 18304;
	setAttr ".tgi[0].ni[160].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[160].y" -2865.71435546875;
	setAttr ".tgi[0].ni[160].nvs" 18304;
	setAttr ".tgi[0].ni[161].x" 950;
	setAttr ".tgi[0].ni[161].y" 271.42855834960938;
	setAttr ".tgi[0].ni[161].nvs" 18304;
	setAttr ".tgi[0].ni[162].x" -2428.571533203125;
	setAttr ".tgi[0].ni[162].y" 11664.2861328125;
	setAttr ".tgi[0].ni[162].nvs" 18304;
	setAttr ".tgi[0].ni[163].x" 950;
	setAttr ".tgi[0].ni[163].y" 170;
	setAttr ".tgi[0].ni[163].nvs" 18304;
	setAttr ".tgi[0].ni[164].x" 1892.857177734375;
	setAttr ".tgi[0].ni[164].y" 11185.7138671875;
	setAttr ".tgi[0].ni[164].nvs" 18304;
	setAttr ".tgi[0].ni[165].x" 642.85711669921875;
	setAttr ".tgi[0].ni[165].y" 4978.5712890625;
	setAttr ".tgi[0].ni[165].nvs" 18304;
	setAttr ".tgi[0].ni[166].x" 1892.857177734375;
	setAttr ".tgi[0].ni[166].y" -4548.5712890625;
	setAttr ".tgi[0].ni[166].nvs" 18304;
	setAttr ".tgi[0].ni[167].x" 1257.142822265625;
	setAttr ".tgi[0].ni[167].y" -6967.14306640625;
	setAttr ".tgi[0].ni[167].nvs" 18304;
	setAttr ".tgi[0].ni[168].x" 1257.142822265625;
	setAttr ".tgi[0].ni[168].y" 6632.85693359375;
	setAttr ".tgi[0].ni[168].nvs" 18304;
	setAttr ".tgi[0].ni[169].x" 1892.857177734375;
	setAttr ".tgi[0].ni[169].y" 4222.85693359375;
	setAttr ".tgi[0].ni[169].nvs" 18304;
	setAttr ".tgi[0].ni[170].x" 1892.857177734375;
	setAttr ".tgi[0].ni[170].y" -7924.28564453125;
	setAttr ".tgi[0].ni[170].nvs" 18304;
	setAttr ".tgi[0].ni[171].x" 1257.142822265625;
	setAttr ".tgi[0].ni[171].y" -3642.857177734375;
	setAttr ".tgi[0].ni[171].nvs" 18304;
	setAttr ".tgi[0].ni[172].x" -1200;
	setAttr ".tgi[0].ni[172].y" 12315.7138671875;
	setAttr ".tgi[0].ni[172].nvs" 18304;
	setAttr ".tgi[0].ni[173].x" 1257.142822265625;
	setAttr ".tgi[0].ni[173].y" -8228.5712890625;
	setAttr ".tgi[0].ni[173].nvs" 18304;
	setAttr ".tgi[0].ni[174].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[174].y" -4020;
	setAttr ".tgi[0].ni[174].nvs" 18304;
	setAttr ".tgi[0].ni[175].x" -278.57144165039063;
	setAttr ".tgi[0].ni[175].y" 8794.2861328125;
	setAttr ".tgi[0].ni[175].nvs" 18304;
	setAttr ".tgi[0].ni[176].x" 1257.142822265625;
	setAttr ".tgi[0].ni[176].y" -6491.4287109375;
	setAttr ".tgi[0].ni[176].nvs" 18304;
	setAttr ".tgi[0].ni[177].x" 1892.857177734375;
	setAttr ".tgi[0].ni[177].y" -8412.857421875;
	setAttr ".tgi[0].ni[177].nvs" 18304;
	setAttr ".tgi[0].ni[178].x" 1892.857177734375;
	setAttr ".tgi[0].ni[178].y" -5068.5712890625;
	setAttr ".tgi[0].ni[178].nvs" 18304;
	setAttr ".tgi[0].ni[179].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[179].y" 7351.4287109375;
	setAttr ".tgi[0].ni[179].nvs" 18304;
	setAttr ".tgi[0].ni[180].x" 1892.857177734375;
	setAttr ".tgi[0].ni[180].y" -6274.28564453125;
	setAttr ".tgi[0].ni[180].nvs" 18304;
	setAttr ".tgi[0].ni[181].x" 1257.142822265625;
	setAttr ".tgi[0].ni[181].y" 3004.28564453125;
	setAttr ".tgi[0].ni[181].nvs" 18304;
	setAttr ".tgi[0].ni[182].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[182].y" 4168.5712890625;
	setAttr ".tgi[0].ni[182].nvs" 18304;
	setAttr ".tgi[0].ni[183].x" 1257.142822265625;
	setAttr ".tgi[0].ni[183].y" -5800;
	setAttr ".tgi[0].ni[183].nvs" 18304;
	setAttr ".tgi[0].ni[184].x" 1257.142822265625;
	setAttr ".tgi[0].ni[184].y" 4721.4287109375;
	setAttr ".tgi[0].ni[184].nvs" 18304;
	setAttr ".tgi[0].ni[185].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[185].y" 6928.5712890625;
	setAttr ".tgi[0].ni[185].nvs" 18304;
	setAttr ".tgi[0].ni[186].x" 1257.142822265625;
	setAttr ".tgi[0].ni[186].y" -2234.28564453125;
	setAttr ".tgi[0].ni[186].nvs" 18304;
	setAttr ".tgi[0].ni[187].x" 1257.142822265625;
	setAttr ".tgi[0].ni[187].y" 8061.4287109375;
	setAttr ".tgi[0].ni[187].nvs" 18304;
	setAttr ".tgi[0].ni[188].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[188].y" 8717.142578125;
	setAttr ".tgi[0].ni[188].nvs" 18304;
	setAttr ".tgi[0].ni[189].x" 1892.857177734375;
	setAttr ".tgi[0].ni[189].y" 8404.2861328125;
	setAttr ".tgi[0].ni[189].nvs" 18304;
	setAttr ".tgi[0].ni[190].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[190].y" 6505.71435546875;
	setAttr ".tgi[0].ni[190].nvs" 18304;
	setAttr ".tgi[0].ni[191].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[191].y" 9252.857421875;
	setAttr ".tgi[0].ni[191].nvs" 18304;
	setAttr ".tgi[0].ni[192].x" 1257.142822265625;
	setAttr ".tgi[0].ni[192].y" -3845.71435546875;
	setAttr ".tgi[0].ni[192].nvs" 18304;
	setAttr ".tgi[0].ni[193].x" 1257.142822265625;
	setAttr ".tgi[0].ni[193].y" 92.857139587402344;
	setAttr ".tgi[0].ni[193].nvs" 18304;
	setAttr ".tgi[0].ni[194].x" 1892.857177734375;
	setAttr ".tgi[0].ni[194].y" -10177.142578125;
	setAttr ".tgi[0].ni[194].nvs" 18304;
	setAttr ".tgi[0].ni[195].x" 1257.142822265625;
	setAttr ".tgi[0].ni[195].y" -1771.4285888671875;
	setAttr ".tgi[0].ni[195].nvs" 18304;
	setAttr ".tgi[0].ni[196].x" 1257.142822265625;
	setAttr ".tgi[0].ni[196].y" -8.5714282989501953;
	setAttr ".tgi[0].ni[196].nvs" 18304;
	setAttr ".tgi[0].ni[197].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[197].y" -6474.28564453125;
	setAttr ".tgi[0].ni[197].nvs" 18304;
	setAttr ".tgi[0].ni[198].x" -2428.571533203125;
	setAttr ".tgi[0].ni[198].y" 12217.142578125;
	setAttr ".tgi[0].ni[198].nvs" 18304;
	setAttr ".tgi[0].ni[199].x" 1257.142822265625;
	setAttr ".tgi[0].ni[199].y" -6808.5712890625;
	setAttr ".tgi[0].ni[199].nvs" 18304;
	setAttr ".tgi[0].ni[200].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[200].y" -2764.28564453125;
	setAttr ".tgi[0].ni[200].nvs" 18304;
	setAttr ".tgi[0].ni[201].x" 642.85711669921875;
	setAttr ".tgi[0].ni[201].y" 8617.142578125;
	setAttr ".tgi[0].ni[201].nvs" 18304;
	setAttr ".tgi[0].ni[202].x" 642.85711669921875;
	setAttr ".tgi[0].ni[202].y" 2344.28564453125;
	setAttr ".tgi[0].ni[202].nvs" 18304;
	setAttr ".tgi[0].ni[203].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[203].y" 8385.7138671875;
	setAttr ".tgi[0].ni[203].nvs" 18304;
	setAttr ".tgi[0].ni[204].x" 1257.142822265625;
	setAttr ".tgi[0].ni[204].y" -9161.4287109375;
	setAttr ".tgi[0].ni[204].nvs" 18304;
	setAttr ".tgi[0].ni[205].x" 1892.857177734375;
	setAttr ".tgi[0].ni[205].y" 3672.857177734375;
	setAttr ".tgi[0].ni[205].nvs" 18304;
	setAttr ".tgi[0].ni[206].x" 950;
	setAttr ".tgi[0].ni[206].y" 4144.28564453125;
	setAttr ".tgi[0].ni[206].nvs" 18304;
	setAttr ".tgi[0].ni[207].x" -1507.142822265625;
	setAttr ".tgi[0].ni[207].y" 12037.142578125;
	setAttr ".tgi[0].ni[207].nvs" 18304;
	setAttr ".tgi[0].ni[208].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[208].y" 220;
	setAttr ".tgi[0].ni[208].nvs" 18304;
	setAttr ".tgi[0].ni[209].x" 1257.142822265625;
	setAttr ".tgi[0].ni[209].y" -1974.2857666015625;
	setAttr ".tgi[0].ni[209].nvs" 18304;
	setAttr ".tgi[0].ni[210].x" 1892.857177734375;
	setAttr ".tgi[0].ni[210].y" 6418.5712890625;
	setAttr ".tgi[0].ni[210].nvs" 18304;
	setAttr ".tgi[0].ni[211].x" 1257.142822265625;
	setAttr ".tgi[0].ni[211].y" 3827.142822265625;
	setAttr ".tgi[0].ni[211].nvs" 18304;
	setAttr ".tgi[0].ni[212].x" 1892.857177734375;
	setAttr ".tgi[0].ni[212].y" -11845.7138671875;
	setAttr ".tgi[0].ni[212].nvs" 18304;
	setAttr ".tgi[0].ni[213].x" 1892.857177734375;
	setAttr ".tgi[0].ni[213].y" 3210;
	setAttr ".tgi[0].ni[213].nvs" 18304;
	setAttr ".tgi[0].ni[214].x" 642.85711669921875;
	setAttr ".tgi[0].ni[214].y" 3905.71435546875;
	setAttr ".tgi[0].ni[214].nvs" 18304;
	setAttr ".tgi[0].ni[215].x" -2428.571533203125;
	setAttr ".tgi[0].ni[215].y" 12540;
	setAttr ".tgi[0].ni[215].nvs" 18304;
	setAttr ".tgi[0].ni[216].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[216].y" -3068.571533203125;
	setAttr ".tgi[0].ni[216].nvs" 18304;
	setAttr ".tgi[0].ni[217].x" 28.571428298950195;
	setAttr ".tgi[0].ni[217].y" 8510;
	setAttr ".tgi[0].ni[217].nvs" 18304;
	setAttr ".tgi[0].ni[218].x" 1257.142822265625;
	setAttr ".tgi[0].ni[218].y" -471.42855834960938;
	setAttr ".tgi[0].ni[218].nvs" 18304;
	setAttr ".tgi[0].ni[219].x" 1892.857177734375;
	setAttr ".tgi[0].ni[219].y" 578.5714111328125;
	setAttr ".tgi[0].ni[219].nvs" 18304;
	setAttr ".tgi[0].ni[220].x" -892.85711669921875;
	setAttr ".tgi[0].ni[220].y" 12181.4287109375;
	setAttr ".tgi[0].ni[220].nvs" 18304;
	setAttr ".tgi[0].ni[221].x" 1892.857177734375;
	setAttr ".tgi[0].ni[221].y" 8087.14306640625;
	setAttr ".tgi[0].ni[221].nvs" 18304;
	setAttr ".tgi[0].ni[222].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[222].y" -8624.2861328125;
	setAttr ".tgi[0].ni[222].nvs" 18304;
	setAttr ".tgi[0].ni[223].x" 28.571428298950195;
	setAttr ".tgi[0].ni[223].y" 6110;
	setAttr ".tgi[0].ni[223].nvs" 18304;
	setAttr ".tgi[0].ni[224].x" 1892.857177734375;
	setAttr ".tgi[0].ni[224].y" 2038.5714111328125;
	setAttr ".tgi[0].ni[224].nvs" 18304;
	setAttr ".tgi[0].ni[225].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[225].y" -1700;
	setAttr ".tgi[0].ni[225].nvs" 18304;
	setAttr ".tgi[0].ni[226].x" 1257.142822265625;
	setAttr ".tgi[0].ni[226].y" 4822.85693359375;
	setAttr ".tgi[0].ni[226].nvs" 18304;
	setAttr ".tgi[0].ni[227].x" -1200;
	setAttr ".tgi[0].ni[227].y" 11814.2861328125;
	setAttr ".tgi[0].ni[227].nvs" 18304;
	setAttr ".tgi[0].ni[228].x" 950;
	setAttr ".tgi[0].ni[228].y" 2468.571533203125;
	setAttr ".tgi[0].ni[228].nvs" 18304;
	setAttr ".tgi[0].ni[229].x" 1892.857177734375;
	setAttr ".tgi[0].ni[229].y" -10494.2861328125;
	setAttr ".tgi[0].ni[229].nvs" 18304;
	setAttr ".tgi[0].ni[230].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[230].y" 5202.85693359375;
	setAttr ".tgi[0].ni[230].nvs" 18304;
	setAttr ".tgi[0].ni[231].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[231].y" 1302.857177734375;
	setAttr ".tgi[0].ni[231].nvs" 18304;
	setAttr ".tgi[0].ni[232].x" 1892.857177734375;
	setAttr ".tgi[0].ni[232].y" 11530;
	setAttr ".tgi[0].ni[232].nvs" 18304;
	setAttr ".tgi[0].ni[233].x" 1892.857177734375;
	setAttr ".tgi[0].ni[233].y" -6547.14306640625;
	setAttr ".tgi[0].ni[233].nvs" 18304;
	setAttr ".tgi[0].ni[234].x" 1892.857177734375;
	setAttr ".tgi[0].ni[234].y" 6907.14306640625;
	setAttr ".tgi[0].ni[234].nvs" 18304;
	setAttr ".tgi[0].ni[235].x" 1892.857177734375;
	setAttr ".tgi[0].ni[235].y" 7382.85693359375;
	setAttr ".tgi[0].ni[235].nvs" 18304;
	setAttr ".tgi[0].ni[236].x" 642.85711669921875;
	setAttr ".tgi[0].ni[236].y" 7842.85693359375;
	setAttr ".tgi[0].ni[236].nvs" 18304;
	setAttr ".tgi[0].ni[237].x" 1257.142822265625;
	setAttr ".tgi[0].ni[237].y" 5038.5712890625;
	setAttr ".tgi[0].ni[237].nvs" 18304;
	setAttr ".tgi[0].ni[238].x" -278.57144165039063;
	setAttr ".tgi[0].ni[238].y" 6480;
	setAttr ".tgi[0].ni[238].nvs" 18304;
	setAttr ".tgi[0].ni[239].x" 642.85711669921875;
	setAttr ".tgi[0].ni[239].y" 10844.2861328125;
	setAttr ".tgi[0].ni[239].nvs" 18304;
	setAttr ".tgi[0].ni[240].x" 335.71429443359375;
	setAttr ".tgi[0].ni[240].y" 10560;
	setAttr ".tgi[0].ni[240].nvs" 18304;
	setAttr ".tgi[0].ni[241].x" 1257.142822265625;
	setAttr ".tgi[0].ni[241].y" -1365.7142333984375;
	setAttr ".tgi[0].ni[241].nvs" 18304;
	setAttr ".tgi[0].ni[242].x" 1257.142822265625;
	setAttr ".tgi[0].ni[242].y" 9138.5712890625;
	setAttr ".tgi[0].ni[242].nvs" 18304;
	setAttr ".tgi[0].ni[243].x" 1257.142822265625;
	setAttr ".tgi[0].ni[243].y" 2088.571533203125;
	setAttr ".tgi[0].ni[243].nvs" 18304;
	setAttr ".tgi[0].ni[244].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[244].y" -6201.4287109375;
	setAttr ".tgi[0].ni[244].nvs" 18304;
	setAttr ".tgi[0].ni[245].x" 1892.857177734375;
	setAttr ".tgi[0].ni[245].y" 2321.428466796875;
	setAttr ".tgi[0].ni[245].nvs" 18304;
	setAttr ".tgi[0].ni[246].x" 1892.857177734375;
	setAttr ".tgi[0].ni[246].y" -1280;
	setAttr ".tgi[0].ni[246].nvs" 18304;
	setAttr ".tgi[0].ni[247].x" 1892.857177734375;
	setAttr ".tgi[0].ni[247].y" -10754.2861328125;
	setAttr ".tgi[0].ni[247].nvs" 18304;
	setAttr ".tgi[0].ni[248].x" 1257.142822265625;
	setAttr ".tgi[0].ni[248].y" 9037.142578125;
	setAttr ".tgi[0].ni[248].nvs" 18304;
	setAttr ".tgi[0].ni[249].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[249].y" -5757.14306640625;
	setAttr ".tgi[0].ni[249].nvs" 18304;
	setAttr ".tgi[0].ni[250].x" -278.57144165039063;
	setAttr ".tgi[0].ni[250].y" 9972.857421875;
	setAttr ".tgi[0].ni[250].nvs" 18304;
	setAttr ".tgi[0].ni[251].x" 1257.142822265625;
	setAttr ".tgi[0].ni[251].y" 2744.28564453125;
	setAttr ".tgi[0].ni[251].nvs" 18304;
	setAttr ".tgi[0].ni[252].x" 1257.142822265625;
	setAttr ".tgi[0].ni[252].y" -2881.428466796875;
	setAttr ".tgi[0].ni[252].nvs" 18304;
	setAttr ".tgi[0].ni[253].x" 1257.142822265625;
	setAttr ".tgi[0].ni[253].y" 4518.5712890625;
	setAttr ".tgi[0].ni[253].nvs" 18304;
	setAttr ".tgi[0].ni[254].x" 1892.857177734375;
	setAttr ".tgi[0].ni[254].y" 4838.5712890625;
	setAttr ".tgi[0].ni[254].nvs" 18304;
	setAttr ".tgi[0].ni[255].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[255].y" -2967.142822265625;
	setAttr ".tgi[0].ni[255].nvs" 18304;
	setAttr ".tgi[0].ni[256].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[256].y" 4644.28564453125;
	setAttr ".tgi[0].ni[256].nvs" 18304;
	setAttr ".tgi[0].ni[257].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[257].y" 8227.142578125;
	setAttr ".tgi[0].ni[257].nvs" 18304;
	setAttr ".tgi[0].ni[258].x" 1257.142822265625;
	setAttr ".tgi[0].ni[258].y" -8945.7138671875;
	setAttr ".tgi[0].ni[258].nvs" 18304;
	setAttr ".tgi[0].ni[259].x" 1257.142822265625;
	setAttr ".tgi[0].ni[259].y" 971.4285888671875;
	setAttr ".tgi[0].ni[259].nvs" 18304;
	setAttr ".tgi[0].ni[260].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[260].y" -3328.571533203125;
	setAttr ".tgi[0].ni[260].nvs" 18304;
	setAttr ".tgi[0].ni[261].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[261].y" 5915.71435546875;
	setAttr ".tgi[0].ni[261].nvs" 18304;
	setAttr ".tgi[0].ni[262].x" 335.71429443359375;
	setAttr ".tgi[0].ni[262].y" 7558.5712890625;
	setAttr ".tgi[0].ni[262].nvs" 18304;
	setAttr ".tgi[0].ni[263].x" 1257.142822265625;
	setAttr ".tgi[0].ni[263].y" -5901.4287109375;
	setAttr ".tgi[0].ni[263].nvs" 18304;
	setAttr ".tgi[0].ni[264].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[264].y" 8010;
	setAttr ".tgi[0].ni[264].nvs" 18304;
	setAttr ".tgi[0].ni[265].x" 1892.857177734375;
	setAttr ".tgi[0].ni[265].y" 3774.28564453125;
	setAttr ".tgi[0].ni[265].nvs" 18304;
	setAttr ".tgi[0].ni[266].x" 1257.142822265625;
	setAttr ".tgi[0].ni[266].y" -8127.14306640625;
	setAttr ".tgi[0].ni[266].nvs" 18304;
	setAttr ".tgi[0].ni[267].x" 1257.142822265625;
	setAttr ".tgi[0].ni[267].y" 9354.2861328125;
	setAttr ".tgi[0].ni[267].nvs" 18304;
	setAttr ".tgi[0].ni[268].x" 1892.857177734375;
	setAttr ".tgi[0].ni[268].y" -2327.142822265625;
	setAttr ".tgi[0].ni[268].nvs" 18304;
	setAttr ".tgi[0].ni[269].x" -2121.428466796875;
	setAttr ".tgi[0].ni[269].y" 11917.142578125;
	setAttr ".tgi[0].ni[269].nvs" 18304;
	setAttr ".tgi[0].ni[270].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[270].y" 3275.71435546875;
	setAttr ".tgi[0].ni[270].nvs" 18304;
	setAttr ".tgi[0].ni[271].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[271].y" 3434.28564453125;
	setAttr ".tgi[0].ni[271].nvs" 18304;
	setAttr ".tgi[0].ni[272].x" 335.71429443359375;
	setAttr ".tgi[0].ni[272].y" 3591.428466796875;
	setAttr ".tgi[0].ni[272].nvs" 18304;
	setAttr ".tgi[0].ni[273].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[273].y" -9157.142578125;
	setAttr ".tgi[0].ni[273].nvs" 18304;
	setAttr ".tgi[0].ni[274].x" 1892.857177734375;
	setAttr ".tgi[0].ni[274].y" 3470;
	setAttr ".tgi[0].ni[274].nvs" 18304;
	setAttr ".tgi[0].ni[275].x" 1257.142822265625;
	setAttr ".tgi[0].ni[275].y" -1048.5714111328125;
	setAttr ".tgi[0].ni[275].nvs" 18304;
	setAttr ".tgi[0].ni[276].x" 1892.857177734375;
	setAttr ".tgi[0].ni[276].y" -4130;
	setAttr ".tgi[0].ni[276].nvs" 18304;
	setAttr ".tgi[0].ni[277].x" 1892.857177734375;
	setAttr ".tgi[0].ni[277].y" 9621.4287109375;
	setAttr ".tgi[0].ni[277].nvs" 18304;
	setAttr ".tgi[0].ni[278].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[278].y" -3861.428466796875;
	setAttr ".tgi[0].ni[278].nvs" 18304;
	setAttr ".tgi[0].ni[279].x" -278.57144165039063;
	setAttr ".tgi[0].ni[279].y" 6878.5712890625;
	setAttr ".tgi[0].ni[279].nvs" 18304;
	setAttr ".tgi[0].ni[280].x" 335.71429443359375;
	setAttr ".tgi[0].ni[280].y" 6797.14306640625;
	setAttr ".tgi[0].ni[280].nvs" 18304;
	setAttr ".tgi[0].ni[281].x" 1892.857177734375;
	setAttr ".tgi[0].ni[281].y" -9847.142578125;
	setAttr ".tgi[0].ni[281].nvs" 18304;
	setAttr ".tgi[0].ni[282].x" -585.71429443359375;
	setAttr ".tgi[0].ni[282].y" 12748.5712890625;
	setAttr ".tgi[0].ni[282].nvs" 18304;
	setAttr ".tgi[0].ni[283].x" 1257.142822265625;
	setAttr ".tgi[0].ni[283].y" -5082.85693359375;
	setAttr ".tgi[0].ni[283].nvs" 18304;
	setAttr ".tgi[0].ni[284].x" 1892.857177734375;
	setAttr ".tgi[0].ni[284].y" -1495.7142333984375;
	setAttr ".tgi[0].ni[284].nvs" 18304;
	setAttr ".tgi[0].ni[285].x" 1257.142822265625;
	setAttr ".tgi[0].ni[285].y" 2190;
	setAttr ".tgi[0].ni[285].nvs" 18304;
	setAttr ".tgi[0].ni[286].x" 1257.142822265625;
	setAttr ".tgi[0].ni[286].y" -788.5714111328125;
	setAttr ".tgi[0].ni[286].nvs" 18304;
	setAttr ".tgi[0].ni[287].x" 1257.142822265625;
	setAttr ".tgi[0].ni[287].y" -9320;
	setAttr ".tgi[0].ni[287].nvs" 18304;
	setAttr ".tgi[0].ni[288].x" 950;
	setAttr ".tgi[0].ni[288].y" 2024.2857666015625;
	setAttr ".tgi[0].ni[288].nvs" 18304;
	setAttr ".tgi[0].ni[289].x" 1257.142822265625;
	setAttr ".tgi[0].ni[289].y" -3370;
	setAttr ".tgi[0].ni[289].nvs" 18304;
	setAttr ".tgi[0].ni[290].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[290].y" 2064.28564453125;
	setAttr ".tgi[0].ni[290].nvs" 18304;
	setAttr ".tgi[0].ni[291].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[291].y" 7588.5712890625;
	setAttr ".tgi[0].ni[291].nvs" 18304;
	setAttr ".tgi[0].ni[292].x" -892.85711669921875;
	setAttr ".tgi[0].ni[292].y" 10758.5712890625;
	setAttr ".tgi[0].ni[292].nvs" 18304;
	setAttr ".tgi[0].ni[293].x" -892.85711669921875;
	setAttr ".tgi[0].ni[293].y" 12911.4287109375;
	setAttr ".tgi[0].ni[293].nvs" 18304;
	setAttr ".tgi[0].ni[294].x" 1892.857177734375;
	setAttr ".tgi[0].ni[294].y" -6058.5712890625;
	setAttr ".tgi[0].ni[294].nvs" 18304;
	setAttr ".tgi[0].ni[295].x" 642.85711669921875;
	setAttr ".tgi[0].ni[295].y" 3074.28564453125;
	setAttr ".tgi[0].ni[295].nvs" 18304;
	setAttr ".tgi[0].ni[296].x" 1892.857177734375;
	setAttr ".tgi[0].ni[296].y" 362.85714721679688;
	setAttr ".tgi[0].ni[296].nvs" 18304;
	setAttr ".tgi[0].ni[297].x" -278.57144165039063;
	setAttr ".tgi[0].ni[297].y" 9370;
	setAttr ".tgi[0].ni[297].nvs" 18304;
	setAttr ".tgi[0].ni[298].x" 950;
	setAttr ".tgi[0].ni[298].y" -102.85713958740234;
	setAttr ".tgi[0].ni[298].nvs" 18304;
	setAttr ".tgi[0].ni[299].x" 1892.857177734375;
	setAttr ".tgi[0].ni[299].y" 5694.28564453125;
	setAttr ".tgi[0].ni[299].nvs" 18304;
	setAttr ".tgi[0].ni[300].x" 1257.142822265625;
	setAttr ".tgi[0].ni[300].y" -7715.71435546875;
	setAttr ".tgi[0].ni[300].nvs" 18304;
	setAttr ".tgi[0].ni[301].x" 1892.857177734375;
	setAttr ".tgi[0].ni[301].y" 7814.28564453125;
	setAttr ".tgi[0].ni[301].nvs" 18304;
	setAttr ".tgi[0].ni[302].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[302].y" 7750;
	setAttr ".tgi[0].ni[302].nvs" 18304;
	setAttr ".tgi[0].ni[303].x" 1892.857177734375;
	setAttr ".tgi[0].ni[303].y" 6634.28564453125;
	setAttr ".tgi[0].ni[303].nvs" 18304;
	setAttr ".tgi[0].ni[304].x" 1892.857177734375;
	setAttr ".tgi[0].ni[304].y" -4231.4287109375;
	setAttr ".tgi[0].ni[304].nvs" 18304;
	setAttr ".tgi[0].ni[305].x" 1892.857177734375;
	setAttr ".tgi[0].ni[305].y" 11041.4287109375;
	setAttr ".tgi[0].ni[305].nvs" 18304;
	setAttr ".tgi[0].ni[306].x" -1814.2857666015625;
	setAttr ".tgi[0].ni[306].y" 12032.857421875;
	setAttr ".tgi[0].ni[306].nvs" 18304;
	setAttr ".tgi[0].ni[307].x" 28.571428298950195;
	setAttr ".tgi[0].ni[307].y" 10437.142578125;
	setAttr ".tgi[0].ni[307].nvs" 18304;
	setAttr ".tgi[0].ni[308].x" 1257.142822265625;
	setAttr ".tgi[0].ni[308].y" -1207.142822265625;
	setAttr ".tgi[0].ni[308].nvs" 18304;
	setAttr ".tgi[0].ni[309].x" -278.57144165039063;
	setAttr ".tgi[0].ni[309].y" 7765.71435546875;
	setAttr ".tgi[0].ni[309].nvs" 18304;
	setAttr ".tgi[0].ni[310].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[310].y" 5814.28564453125;
	setAttr ".tgi[0].ni[310].nvs" 18304;
	setAttr ".tgi[0].ni[311].x" 1257.142822265625;
	setAttr ".tgi[0].ni[311].y" -1670;
	setAttr ".tgi[0].ni[311].nvs" 18304;
	setAttr ".tgi[0].ni[312].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[312].y" -2332.857177734375;
	setAttr ".tgi[0].ni[312].nvs" 18304;
	setAttr ".tgi[0].ni[313].x" 1257.142822265625;
	setAttr ".tgi[0].ni[313].y" -6218.5712890625;
	setAttr ".tgi[0].ni[313].nvs" 18304;
	setAttr ".tgi[0].ni[314].x" 950;
	setAttr ".tgi[0].ni[314].y" 2785.71435546875;
	setAttr ".tgi[0].ni[314].nvs" 18304;
	setAttr ".tgi[0].ni[315].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[315].y" 6607.14306640625;
	setAttr ".tgi[0].ni[315].nvs" 18304;
	setAttr ".tgi[0].ni[316].x" 1892.857177734375;
	setAttr ".tgi[0].ni[316].y" -11230;
	setAttr ".tgi[0].ni[316].nvs" 18304;
	setAttr ".tgi[0].ni[317].x" 1257.142822265625;
	setAttr ".tgi[0].ni[317].y" -370;
	setAttr ".tgi[0].ni[317].nvs" 18304;
	setAttr ".tgi[0].ni[318].x" 1892.857177734375;
	setAttr ".tgi[0].ni[318].y" 5421.4287109375;
	setAttr ".tgi[0].ni[318].nvs" 18304;
	setAttr ".tgi[0].ni[319].x" 1892.857177734375;
	setAttr ".tgi[0].ni[319].y" -9745.7138671875;
	setAttr ".tgi[0].ni[319].nvs" 18304;
	setAttr ".tgi[0].ni[320].x" 950;
	setAttr ".tgi[0].ni[320].y" 3240;
	setAttr ".tgi[0].ni[320].nvs" 18304;
	setAttr ".tgi[0].ni[321].x" 1892.857177734375;
	setAttr ".tgi[0].ni[321].y" -10652.857421875;
	setAttr ".tgi[0].ni[321].nvs" 18304;
	setAttr ".tgi[0].ni[322].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[322].y" -8522.857421875;
	setAttr ".tgi[0].ni[322].nvs" 18304;
	setAttr ".tgi[0].ni[323].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[323].y" 5405.71435546875;
	setAttr ".tgi[0].ni[323].nvs" 18304;
	setAttr ".tgi[0].ni[324].x" 1257.142822265625;
	setAttr ".tgi[0].ni[324].y" -9592.857421875;
	setAttr ".tgi[0].ni[324].nvs" 18304;
	setAttr ".tgi[0].ni[325].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[325].y" 6245.71435546875;
	setAttr ".tgi[0].ni[325].nvs" 18304;
	setAttr ".tgi[0].ni[326].x" 1257.142822265625;
	setAttr ".tgi[0].ni[326].y" 3581.428466796875;
	setAttr ".tgi[0].ni[326].nvs" 18304;
	setAttr ".tgi[0].ni[327].x" 1257.142822265625;
	setAttr ".tgi[0].ni[327].y" 3480;
	setAttr ".tgi[0].ni[327].nvs" 18304;
	setAttr ".tgi[0].ni[328].x" 1585.7142333984375;
	setAttr ".tgi[0].ni[328].y" -9055.7138671875;
	setAttr ".tgi[0].ni[328].nvs" 18304;
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
connectAttr "Cube_Poly.rigRoot" "TEMP_RigRoot.FKShape";
connectAttr "Square_Wire.rigRoot" "TEMP_RigRoot.EmptyShape";
connectAttr "TEMP_RigRoot.jointsParentGroup" "JOINTS.rigRoot";
connectAttr "Joint_Disp.di" "Spine_Spine_M_JNT.do";
connectAttr "Spine_Limb_M_NODE.joints" "Spine_Spine_M_JNT.limb";
connectAttr "Spine_Spine_M_JNT.s" "Neck_Neck_M_JNT.is";
connectAttr "Joint_Disp.di" "Neck_Neck_M_JNT.do";
connectAttr "Neck_Limb_M_NODE.joints" "Neck_Neck_M_JNT.limb";
connectAttr "Neck_Neck_M_JNT.s" "Head_Head1_M_JNT.is";
connectAttr "Joint_Disp.di" "Head_Head1_M_JNT.do";
connectAttr "Head_Limb_M_NODE.joints" "Head_Head1_M_JNT.limb";
connectAttr "Head_Head1_M_JNT.s" "Head_Head2_M_JNT.is";
connectAttr "Joint_Disp.di" "Head_Head2_M_JNT.do";
connectAttr "Head_Limb_M_NODE.joints" "Head_Head2_M_JNT.limb";
connectAttr "Head_Head2_M_JNT.group" "Head2_Joint_M_GRP1.joint";
connectAttr "Head_Limb_M_NODE.jointGroups" "Head2_Joint_M_GRP1.limb";
connectAttr "Head_Limb_M_NODE.usedGroups" "Head2_Joint_M_GRP1.used";
connectAttr "Control_Disp.di" "Head2_Joint_M_CTR1.do";
connectAttr "Head2_Joint_M_GRP1.control" "Head2_Joint_M_CTR1.group";
connectAttr "Head_Head1_M_JNT.s" "Jaw_Jaw1_M_JNT.is";
connectAttr "Joint_Disp.di" "Jaw_Jaw1_M_JNT.do";
connectAttr "Jaw_Limb_M_NODE.joints" "Jaw_Jaw1_M_JNT.limb";
connectAttr "Jaw_Jaw1_M_JNT.s" "Jaw_Jaw2_M_JNT.is";
connectAttr "Joint_Disp.di" "Jaw_Jaw2_M_JNT.do";
connectAttr "Jaw_Limb_M_NODE.joints" "Jaw_Jaw2_M_JNT.limb";
connectAttr "Jaw_Jaw2_M_JNT.group" "Jaw2_Joint_M_GRP1.joint";
connectAttr "Jaw_Limb_M_NODE.jointGroups" "Jaw2_Joint_M_GRP1.limb";
connectAttr "Jaw_Limb_M_NODE.usedGroups" "Jaw2_Joint_M_GRP1.used";
connectAttr "Control_Disp.di" "Jaw2_Joint_M_CTR1.do";
connectAttr "Jaw2_Joint_M_GRP1.control" "Jaw2_Joint_M_CTR1.group";
connectAttr "Jaw_Jaw1_M_JNT.group" "Jaw1_Joint_M_GRP0.joint";
connectAttr "Jaw_Limb_M_NODE.jointGroups" "Jaw1_Joint_M_GRP0.limb";
connectAttr "Jaw_Limb_M_NODE.usedGroups" "Jaw1_Joint_M_GRP0.used";
connectAttr "Control_Disp.di" "Jaw1_Joint_M_CTR0.do";
connectAttr "Jaw1_Joint_M_GRP0.control" "Jaw1_Joint_M_CTR0.group";
connectAttr "Head_Head1_M_JNT.s" "UpperFace_UF1_M_JNT.is";
connectAttr "Joint_Disp.di" "UpperFace_UF1_M_JNT.do";
connectAttr "UpperFace_Limb_M_NODE.joints" "UpperFace_UF1_M_JNT.limb";
connectAttr "UpperFace_UF1_M_JNT.s" "FaceBrow_Brow1_L_JNT.is";
connectAttr "Joint_Disp.di" "FaceBrow_Brow1_L_JNT.do";
connectAttr "FaceBrow_Limb_L_NODE.joints" "FaceBrow_Brow1_L_JNT.limb";
connectAttr "UpperFace_UF1_M_JNT.s" "FaceBrow_Brow2_L_JNT.is";
connectAttr "Joint_Disp.di" "FaceBrow_Brow2_L_JNT.do";
connectAttr "FaceBrow_Limb_L_NODE.joints" "FaceBrow_Brow2_L_JNT.limb";
connectAttr "UpperFace_UF1_M_JNT.s" "FaceBrow_Brow3_L_JNT.is";
connectAttr "Joint_Disp.di" "FaceBrow_Brow3_L_JNT.do";
connectAttr "FaceBrow_Limb_L_NODE.joints" "FaceBrow_Brow3_L_JNT.limb";
connectAttr "UpperFace_UF1_M_JNT.group" "UF1_Joint_M_GRP0.joint";
connectAttr "UpperFace_Limb_M_NODE.jointGroups" "UF1_Joint_M_GRP0.limb";
connectAttr "UpperFace_Limb_M_NODE.usedGroups" "UF1_Joint_M_GRP0.used";
connectAttr "Control_Disp.di" "UF1_Joint_M_CTR0.do";
connectAttr "UF1_Joint_M_GRP0.control" "UF1_Joint_M_CTR0.group";
connectAttr "UpperFace_UF1_M_JNT.s" "FaceBrow_Brow1_R_JNT.is";
connectAttr "Joint_Disp.di" "FaceBrow_Brow1_R_JNT.do";
connectAttr "FaceBrow_Limb_R_NODE.joints" "FaceBrow_Brow1_R_JNT.limb";
connectAttr "UpperFace_UF1_M_JNT.s" "FaceBrow_Brow2_R_JNT.is";
connectAttr "Joint_Disp.di" "FaceBrow_Brow2_R_JNT.do";
connectAttr "FaceBrow_Limb_R_NODE.joints" "FaceBrow_Brow2_R_JNT.limb";
connectAttr "UpperFace_UF1_M_JNT.s" "FaceBrow_Brow3_R_JNT.is";
connectAttr "Joint_Disp.di" "FaceBrow_Brow3_R_JNT.do";
connectAttr "FaceBrow_Limb_R_NODE.joints" "FaceBrow_Brow3_R_JNT.limb";
connectAttr "Head_Head1_M_JNT.group" "Head1_Joint_M_GRP0.joint";
connectAttr "Head_Limb_M_NODE.jointGroups" "Head1_Joint_M_GRP0.limb";
connectAttr "Head_Limb_M_NODE.usedGroups" "Head1_Joint_M_GRP0.used";
connectAttr "Control_Disp.di" "Head1_Joint_M_CTR0.do";
connectAttr "Head1_Joint_M_GRP0.control" "Head1_Joint_M_CTR0.group";
connectAttr "Neck_Neck_M_JNT.group" "Neck_Joint_M_GRP0.joint";
connectAttr "Neck_Limb_M_NODE.jointGroups" "Neck_Joint_M_GRP0.limb";
connectAttr "Neck_Limb_M_NODE.usedGroups" "Neck_Joint_M_GRP0.used";
connectAttr "Control_Disp.di" "Neck_Joint_M_CTR0.do";
connectAttr "Neck_Joint_M_GRP0.control" "Neck_Joint_M_CTR0.group";
connectAttr "Spine_Spine_M_JNT.group" "Spine_Joint_M_GRP0.joint";
connectAttr "Spine_Limb_M_NODE.jointGroups" "Spine_Joint_M_GRP0.limb";
connectAttr "Spine_Limb_M_NODE.usedGroups" "Spine_Joint_M_GRP0.used";
connectAttr "Control_Disp.di" "Spine_Joint_M_CTR0.do";
connectAttr "Spine_Joint_M_GRP0.control" "Spine_Joint_M_CTR0.group";
connectAttr "Joint_Disp.di" "Clav_Clav01_L_JNT.do";
connectAttr "Clav_Limb_L_NODE.joints" "Clav_Clav01_L_JNT.limb";
connectAttr "Spine_Spine_M_JNT.s" "Clav_Clav01_L_JNT.is";
connectAttr "Clav_Clav01_L_JNT.s" "Arm_Shoulder_L_JNT.is";
connectAttr "Joint_Disp.di" "Arm_Shoulder_L_JNT.do";
connectAttr "Arm_Limb_L_NODE.joints" "Arm_Shoulder_L_JNT.limb";
connectAttr "Arm_Shoulder_L_JNT.s" "Arm_Elbow_L_JNT.is";
connectAttr "Joint_Disp.di" "Arm_Elbow_L_JNT.do";
connectAttr "Arm_Limb_L_NODE.joints" "Arm_Elbow_L_JNT.limb";
connectAttr "Arm_Elbow_L_JNT.s" "ArmTwist_AT1_L_JNT.is";
connectAttr "Joint_Disp.di" "ArmTwist_AT1_L_JNT.do";
connectAttr "ArmTwist_Limb_L_NODE.joints" "ArmTwist_AT1_L_JNT.limb";
connectAttr "Arm_Elbow_L_JNT.s" "ArmTwist_AT2_L_JNT.is";
connectAttr "Joint_Disp.di" "ArmTwist_AT2_L_JNT.do";
connectAttr "ArmTwist_Limb_L_NODE.joints" "ArmTwist_AT2_L_JNT.limb";
connectAttr "Arm_Elbow_L_JNT.s" "ArmTwist_AT3_L_JNT.is";
connectAttr "Joint_Disp.di" "ArmTwist_AT3_L_JNT.do";
connectAttr "ArmTwist_Limb_L_NODE.joints" "ArmTwist_AT3_L_JNT.limb";
connectAttr "Arm_Elbow_L_JNT.s" "Arm_Wrist_L_JNT.is";
connectAttr "Joint_Disp.di" "Arm_Wrist_L_JNT.do";
connectAttr "Arm_Limb_L_NODE.joints" "Arm_Wrist_L_JNT.limb";
connectAttr "Arm_Wrist_L_JNT.s" "Thumb_Thumb1_L_JNT.is";
connectAttr "Joint_Disp.di" "Thumb_Thumb1_L_JNT.do";
connectAttr "Thumb_Limb_L_NODE.joints" "Thumb_Thumb1_L_JNT.limb";
connectAttr "Thumb_Thumb1_L_JNT.s" "Thumb_Thumb2_L_JNT.is";
connectAttr "Joint_Disp.di" "Thumb_Thumb2_L_JNT.do";
connectAttr "Thumb_Limb_L_NODE.joints" "Thumb_Thumb2_L_JNT.limb";
connectAttr "Thumb_Thumb2_L_JNT.s" "Thumb_Thumb3_L_JNT.is";
connectAttr "Joint_Disp.di" "Thumb_Thumb3_L_JNT.do";
connectAttr "Thumb_Limb_L_NODE.joints" "Thumb_Thumb3_L_JNT.limb";
connectAttr "Thumb_Thumb3_L_JNT.s" "Thumb_Thumb4_L_JNT.is";
connectAttr "Joint_Disp.di" "Thumb_Thumb4_L_JNT.do";
connectAttr "Thumb_Limb_L_NODE.joints" "Thumb_Thumb4_L_JNT.limb";
connectAttr "Arm_Wrist_L_JNT.s" "Pinkie_Pinkey1_L_JNT.is";
connectAttr "Joint_Disp.di" "Pinkie_Pinkey1_L_JNT.do";
connectAttr "Pinkie_Limb_L_NODE.joints" "Pinkie_Pinkey1_L_JNT.limb";
connectAttr "Pinkie_Pinkey1_L_JNT.s" "Pinkie_Pinkey2_L_JNT.is";
connectAttr "Joint_Disp.di" "Pinkie_Pinkey2_L_JNT.do";
connectAttr "Pinkie_Limb_L_NODE.joints" "Pinkie_Pinkey2_L_JNT.limb";
connectAttr "Pinkie_Pinkey2_L_JNT.s" "Pinkie_Pinkey3_L_JNT.is";
connectAttr "Joint_Disp.di" "Pinkie_Pinkey3_L_JNT.do";
connectAttr "Pinkie_Limb_L_NODE.joints" "Pinkie_Pinkey3_L_JNT.limb";
connectAttr "Pinkie_Pinkey3_L_JNT.s" "Pinkie_Pinkey4_L_JNT.is";
connectAttr "Joint_Disp.di" "Pinkie_Pinkey4_L_JNT.do";
connectAttr "Pinkie_Limb_L_NODE.joints" "Pinkie_Pinkey4_L_JNT.limb";
connectAttr "Arm_Wrist_L_JNT.s" "Index_Index1_L_JNT.is";
connectAttr "Joint_Disp.di" "Index_Index1_L_JNT.do";
connectAttr "Index_Limb_L_NODE.joints" "Index_Index1_L_JNT.limb";
connectAttr "Index_Index1_L_JNT.s" "Index_Index2_L_JNT.is";
connectAttr "Joint_Disp.di" "Index_Index2_L_JNT.do";
connectAttr "Index_Limb_L_NODE.joints" "Index_Index2_L_JNT.limb";
connectAttr "Index_Index2_L_JNT.s" "Index_Index3_L_JNT.is";
connectAttr "Joint_Disp.di" "Index_Index3_L_JNT.do";
connectAttr "Index_Limb_L_NODE.joints" "Index_Index3_L_JNT.limb";
connectAttr "Index_Index3_L_JNT.s" "Index_Index4_L_JNT.is";
connectAttr "Joint_Disp.di" "Index_Index4_L_JNT.do";
connectAttr "Index_Limb_L_NODE.joints" "Index_Index4_L_JNT.limb";
connectAttr "Arm_Wrist_L_JNT.s" "Ring_Ring1_L_JNT.is";
connectAttr "Joint_Disp.di" "Ring_Ring1_L_JNT.do";
connectAttr "Ring_Limb_L_NODE.joints" "Ring_Ring1_L_JNT.limb";
connectAttr "Ring_Ring1_L_JNT.s" "Ring_Ring2_L_JNT.is";
connectAttr "Joint_Disp.di" "Ring_Ring2_L_JNT.do";
connectAttr "Ring_Limb_L_NODE.joints" "Ring_Ring2_L_JNT.limb";
connectAttr "Ring_Ring2_L_JNT.s" "Ring_Ring3_L_JNT.is";
connectAttr "Joint_Disp.di" "Ring_Ring3_L_JNT.do";
connectAttr "Ring_Limb_L_NODE.joints" "Ring_Ring3_L_JNT.limb";
connectAttr "Ring_Ring3_L_JNT.s" "Ring_Ring4_L_JNT.is";
connectAttr "Joint_Disp.di" "Ring_Ring4_L_JNT.do";
connectAttr "Ring_Limb_L_NODE.joints" "Ring_Ring4_L_JNT.limb";
connectAttr "Arm_Wrist_L_JNT.s" "Middle_Middle1_L_JNT.is";
connectAttr "Joint_Disp.di" "Middle_Middle1_L_JNT.do";
connectAttr "Middle_Limb_L_NODE.joints" "Middle_Middle1_L_JNT.limb";
connectAttr "Middle_Middle1_L_JNT.s" "Middle_Middle2_L_JNT.is";
connectAttr "Joint_Disp.di" "Middle_Middle2_L_JNT.do";
connectAttr "Middle_Limb_L_NODE.joints" "Middle_Middle2_L_JNT.limb";
connectAttr "Middle_Middle2_L_JNT.s" "Middle_Middle3_L_JNT.is";
connectAttr "Joint_Disp.di" "Middle_Middle3_L_JNT.do";
connectAttr "Middle_Limb_L_NODE.joints" "Middle_Middle3_L_JNT.limb";
connectAttr "Middle_Middle3_L_JNT.s" "Middle_Middle4_L_JNT.is";
connectAttr "Joint_Disp.di" "Middle_Middle4_L_JNT.do";
connectAttr "Middle_Limb_L_NODE.joints" "Middle_Middle4_L_JNT.limb";
connectAttr "Joint_Disp.di" "Clav_Clav001_R_JNT.do";
connectAttr "Clav_Limb_R_NODE.joints" "Clav_Clav001_R_JNT.limb";
connectAttr "Spine_Spine_M_JNT.s" "Clav_Clav001_R_JNT.is";
connectAttr "Clav_Clav001_R_JNT.s" "Arm_Shoulder_R_JNT.is";
connectAttr "Joint_Disp.di" "Arm_Shoulder_R_JNT.do";
connectAttr "Arm_Limb_R_NODE.joints" "Arm_Shoulder_R_JNT.limb";
connectAttr "Arm_Shoulder_R_JNT.s" "Arm_Elbow_R_JNT.is";
connectAttr "Joint_Disp.di" "Arm_Elbow_R_JNT.do";
connectAttr "Arm_Limb_R_NODE.joints" "Arm_Elbow_R_JNT.limb";
connectAttr "Arm_Elbow_R_JNT.s" "ArmTwist_AT3_R_JNT.is";
connectAttr "Joint_Disp.di" "ArmTwist_AT3_R_JNT.do";
connectAttr "ArmTwist_Limb_R_NODE.joints" "ArmTwist_AT3_R_JNT.limb";
connectAttr "Arm_Elbow_R_JNT.s" "Arm_Wrist_R_JNT.is";
connectAttr "Joint_Disp.di" "Arm_Wrist_R_JNT.do";
connectAttr "Arm_Limb_R_NODE.joints" "Arm_Wrist_R_JNT.limb";
connectAttr "Arm_Wrist_R_JNT.s" "Middle_Middle001_R_JNT.is";
connectAttr "Joint_Disp.di" "Middle_Middle001_R_JNT.do";
connectAttr "Middle_Limb_R_NODE.joints" "Middle_Middle001_R_JNT.limb";
connectAttr "Middle_Middle001_R_JNT.s" "Middle_Middle002_R_JNT.is";
connectAttr "Joint_Disp.di" "Middle_Middle002_R_JNT.do";
connectAttr "Middle_Limb_R_NODE.joints" "Middle_Middle002_R_JNT.limb";
connectAttr "Middle_Middle002_R_JNT.s" "Middle_Middle003_R_JNT.is";
connectAttr "Joint_Disp.di" "Middle_Middle003_R_JNT.do";
connectAttr "Middle_Limb_R_NODE.joints" "Middle_Middle003_R_JNT.limb";
connectAttr "Middle_Middle003_R_JNT.s" "Middle_Middle004_R_JNT.is";
connectAttr "Joint_Disp.di" "Middle_Middle004_R_JNT.do";
connectAttr "Middle_Limb_R_NODE.joints" "Middle_Middle004_R_JNT.limb";
connectAttr "Arm_Wrist_R_JNT.s" "Thumb_Thumb001_R_JNT.is";
connectAttr "Joint_Disp.di" "Thumb_Thumb001_R_JNT.do";
connectAttr "Thumb_Limb_R_NODE.joints" "Thumb_Thumb001_R_JNT.limb";
connectAttr "Thumb_Thumb001_R_JNT.s" "Thumb_Thumb002_R_JNT.is";
connectAttr "Joint_Disp.di" "Thumb_Thumb002_R_JNT.do";
connectAttr "Thumb_Limb_R_NODE.joints" "Thumb_Thumb002_R_JNT.limb";
connectAttr "Thumb_Thumb002_R_JNT.s" "Thumb_Thumb003_R_JNT.is";
connectAttr "Joint_Disp.di" "Thumb_Thumb003_R_JNT.do";
connectAttr "Thumb_Limb_R_NODE.joints" "Thumb_Thumb003_R_JNT.limb";
connectAttr "Thumb_Thumb003_R_JNT.s" "Thumb_Thumb004_R_JNT.is";
connectAttr "Joint_Disp.di" "Thumb_Thumb004_R_JNT.do";
connectAttr "Thumb_Limb_R_NODE.joints" "Thumb_Thumb004_R_JNT.limb";
connectAttr "Arm_Wrist_R_JNT.s" "Ring_Ring001_R_JNT.is";
connectAttr "Joint_Disp.di" "Ring_Ring001_R_JNT.do";
connectAttr "Ring_Limb_R_NODE.joints" "Ring_Ring001_R_JNT.limb";
connectAttr "Ring_Ring001_R_JNT.s" "Ring_Ring002_R_JNT.is";
connectAttr "Joint_Disp.di" "Ring_Ring002_R_JNT.do";
connectAttr "Ring_Limb_R_NODE.joints" "Ring_Ring002_R_JNT.limb";
connectAttr "Ring_Ring002_R_JNT.s" "Ring_Ring003_R_JNT.is";
connectAttr "Joint_Disp.di" "Ring_Ring003_R_JNT.do";
connectAttr "Ring_Limb_R_NODE.joints" "Ring_Ring003_R_JNT.limb";
connectAttr "Ring_Ring003_R_JNT.s" "Ring_Ring004_R_JNT.is";
connectAttr "Joint_Disp.di" "Ring_Ring004_R_JNT.do";
connectAttr "Ring_Limb_R_NODE.joints" "Ring_Ring004_R_JNT.limb";
connectAttr "Arm_Wrist_R_JNT.s" "Index_Index001_R_JNT.is";
connectAttr "Joint_Disp.di" "Index_Index001_R_JNT.do";
connectAttr "Index_Limb_R_NODE.joints" "Index_Index001_R_JNT.limb";
connectAttr "Index_Index001_R_JNT.s" "Index_Index002_R_JNT.is";
connectAttr "Joint_Disp.di" "Index_Index002_R_JNT.do";
connectAttr "Index_Limb_R_NODE.joints" "Index_Index002_R_JNT.limb";
connectAttr "Index_Index002_R_JNT.s" "Index_Index003_R_JNT.is";
connectAttr "Joint_Disp.di" "Index_Index003_R_JNT.do";
connectAttr "Index_Limb_R_NODE.joints" "Index_Index003_R_JNT.limb";
connectAttr "Index_Index003_R_JNT.s" "Index_Index004_R_JNT.is";
connectAttr "Joint_Disp.di" "Index_Index004_R_JNT.do";
connectAttr "Index_Limb_R_NODE.joints" "Index_Index004_R_JNT.limb";
connectAttr "Arm_Wrist_R_JNT.s" "Pinkie_Pinkey1_R_JNT.is";
connectAttr "Joint_Disp.di" "Pinkie_Pinkey1_R_JNT.do";
connectAttr "Pinkie_Limb_R_NODE.joints" "Pinkie_Pinkey1_R_JNT.limb";
connectAttr "Pinkie_Pinkey1_R_JNT.s" "Pinkie_Pinkey2_R_JNT.is";
connectAttr "Joint_Disp.di" "Pinkie_Pinkey2_R_JNT.do";
connectAttr "Pinkie_Limb_R_NODE.joints" "Pinkie_Pinkey2_R_JNT.limb";
connectAttr "Pinkie_Pinkey2_R_JNT.s" "Pinkie_Pinkey3_R_JNT.is";
connectAttr "Joint_Disp.di" "Pinkie_Pinkey3_R_JNT.do";
connectAttr "Pinkie_Limb_R_NODE.joints" "Pinkie_Pinkey3_R_JNT.limb";
connectAttr "Pinkie_Pinkey3_R_JNT.s" "Pinkie_Pinkey4_R_JNT.is";
connectAttr "Joint_Disp.di" "Pinkie_Pinkey4_R_JNT.do";
connectAttr "Pinkie_Limb_R_NODE.joints" "Pinkie_Pinkey4_R_JNT.limb";
connectAttr "Arm_Elbow_R_JNT.s" "ArmTwist_AT1_R_JNT.is";
connectAttr "Joint_Disp.di" "ArmTwist_AT1_R_JNT.do";
connectAttr "ArmTwist_Limb_R_NODE.joints" "ArmTwist_AT1_R_JNT.limb";
connectAttr "Arm_Elbow_R_JNT.s" "ArmTwist_AT2_R_JNT.is";
connectAttr "Joint_Disp.di" "ArmTwist_AT2_R_JNT.do";
connectAttr "ArmTwist_Limb_R_NODE.joints" "ArmTwist_AT2_R_JNT.limb";
connectAttr "TEMP_RigRoot.limbsParentGroup" "LIMBS.rigRoot";
connectAttr "TEMP_RigRoot.limbs" "UpperFace_Limb_M_NODE.rigRoot";
connectAttr "Head_Limb_M_NODE.limbChildren" "UpperFace_Limb_M_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "Spine_Limb_M_NODE.rigRoot";
connectAttr "TEMP_RigRoot.limbs" "Jaw_Limb_M_NODE.rigRoot";
connectAttr "Head_Limb_M_NODE.limbChildren" "Jaw_Limb_M_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "Ring_Limb_L_NODE.rigRoot";
connectAttr "Arm_Limb_L_NODE.limbChildren" "Ring_Limb_L_NODE.limbParent";
connectAttr "Ring_Limb_R_NODE.mirrorLimb" "Ring_Limb_L_NODE.mirrorLimb";
connectAttr "Ring_Ring2_L_JNT.group" "Ring2_Joint_L_GRP1.joint";
connectAttr "Ring_Limb_L_NODE.jointGroups" "Ring2_Joint_L_GRP1.limb";
connectAttr "Ring_Limb_L_NODE.usedGroups" "Ring2_Joint_L_GRP1.used";
connectAttr "Control_Disp.di" "Ring2_Joint_L_CTR1.do";
connectAttr "Ring2_Joint_L_GRP1.control" "Ring2_Joint_L_CTR1.group";
connectAttr "Ring_Ring1_L_JNT.group" "Ring1_Joint_L_GRP0.joint";
connectAttr "Ring_Limb_L_NODE.jointGroups" "Ring1_Joint_L_GRP0.limb";
connectAttr "Ring_Limb_L_NODE.usedGroups" "Ring1_Joint_L_GRP0.used";
connectAttr "Control_Disp.di" "Ring1_Joint_L_CTR0.do";
connectAttr "Ring1_Joint_L_GRP0.control" "Ring1_Joint_L_CTR0.group";
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
connectAttr "TEMP_RigRoot.limbs" "Arm_Limb_L_NODE.rigRoot";
connectAttr "Clav_Limb_L_NODE.limbChildren" "Arm_Limb_L_NODE.limbParent";
connectAttr "Arm_Limb_R_NODE.mirrorLimb" "Arm_Limb_L_NODE.mirrorLimb";
connectAttr "Arm_Elbow_L_JNT.group" "Elbow_Joint_L_GRP1.joint";
connectAttr "Arm_Limb_L_NODE.jointGroups" "Elbow_Joint_L_GRP1.limb";
connectAttr "Arm_Limb_L_NODE.usedGroups" "Elbow_Joint_L_GRP1.used";
connectAttr "Control_Disp.di" "Elbow_Joint_L_CTR1.do";
connectAttr "Elbow_Joint_L_GRP1.control" "Elbow_Joint_L_CTR1.group";
connectAttr "Arm_Shoulder_L_JNT.group" "Shoulder_Joint_L_GRP0.joint";
connectAttr "Arm_Limb_L_NODE.jointGroups" "Shoulder_Joint_L_GRP0.limb";
connectAttr "Arm_Limb_L_NODE.usedGroups" "Shoulder_Joint_L_GRP0.used";
connectAttr "Control_Disp.di" "Shoulder_Joint_L_CTR0.do";
connectAttr "Shoulder_Joint_L_GRP0.control" "Shoulder_Joint_L_CTR0.group";
connectAttr "Arm_Wrist_L_JNT.group" "Wrist_Joint_L_GRP2.joint";
connectAttr "Arm_Limb_L_NODE.jointGroups" "Wrist_Joint_L_GRP2.limb";
connectAttr "Arm_Limb_L_NODE.usedGroups" "Wrist_Joint_L_GRP2.used";
connectAttr "Control_Disp.di" "Wrist_Joint_L_CTR2.do";
connectAttr "Wrist_Joint_L_GRP2.control" "Wrist_Joint_L_CTR2.group";
connectAttr "TEMP_RigRoot.limbs" "Pinkie_Limb_L_NODE.rigRoot";
connectAttr "Arm_Limb_L_NODE.limbChildren" "Pinkie_Limb_L_NODE.limbParent";
connectAttr "Pinkie_Limb_R_NODE.mirrorLimb" "Pinkie_Limb_L_NODE.mirrorLimb";
connectAttr "Pinkie_Pinkey2_L_JNT.group" "Pinkey2_Joint_L_GRP1.joint";
connectAttr "Pinkie_Limb_L_NODE.jointGroups" "Pinkey2_Joint_L_GRP1.limb";
connectAttr "Pinkie_Limb_L_NODE.usedGroups" "Pinkey2_Joint_L_GRP1.used";
connectAttr "Control_Disp.di" "Pinkey2_Joint_L_CTR1.do";
connectAttr "Pinkey2_Joint_L_GRP1.control" "Pinkey2_Joint_L_CTR1.group";
connectAttr "Pinkie_Pinkey1_L_JNT.group" "Pinkey1_Joint_L_GRP0.joint";
connectAttr "Pinkie_Limb_L_NODE.jointGroups" "Pinkey1_Joint_L_GRP0.limb";
connectAttr "Pinkie_Limb_L_NODE.usedGroups" "Pinkey1_Joint_L_GRP0.used";
connectAttr "Control_Disp.di" "Pinkey1_Joint_L_CTR0.do";
connectAttr "Pinkey1_Joint_L_GRP0.control" "Pinkey1_Joint_L_CTR0.group";
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
connectAttr "TEMP_RigRoot.limbs" "Middle_Limb_L_NODE.rigRoot";
connectAttr "Arm_Limb_L_NODE.limbChildren" "Middle_Limb_L_NODE.limbParent";
connectAttr "Middle_Limb_R_NODE.mirrorLimb" "Middle_Limb_L_NODE.mirrorLimb";
connectAttr "Middle_Middle2_L_JNT.group" "Middle2_Joint_L_GRP1.joint";
connectAttr "Middle_Limb_L_NODE.jointGroups" "Middle2_Joint_L_GRP1.limb";
connectAttr "Middle_Limb_L_NODE.usedGroups" "Middle2_Joint_L_GRP1.used";
connectAttr "Control_Disp.di" "Middle2_Joint_L_CTR1.do";
connectAttr "Middle2_Joint_L_GRP1.control" "Middle2_Joint_L_CTR1.group";
connectAttr "Middle_Middle1_L_JNT.group" "Middle1_Joint_L_GRP0.joint";
connectAttr "Middle_Limb_L_NODE.jointGroups" "Middle1_Joint_L_GRP0.limb";
connectAttr "Middle_Limb_L_NODE.usedGroups" "Middle1_Joint_L_GRP0.used";
connectAttr "Control_Disp.di" "Middle1_Joint_L_CTR0.do";
connectAttr "Middle1_Joint_L_GRP0.control" "Middle1_Joint_L_CTR0.group";
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
connectAttr "TEMP_RigRoot.limbs" "Clav_Limb_L_NODE.rigRoot";
connectAttr "Spine_Limb_M_NODE.limbChildren" "Clav_Limb_L_NODE.limbParent";
connectAttr "Clav_Limb_R_NODE.mirrorLimb" "Clav_Limb_L_NODE.mirrorLimb";
connectAttr "Clav_Clav01_L_JNT.group" "Clav01_Joint_L_GRP0.joint";
connectAttr "Clav_Limb_L_NODE.jointGroups" "Clav01_Joint_L_GRP0.limb";
connectAttr "Clav_Limb_L_NODE.usedGroups" "Clav01_Joint_L_GRP0.used";
connectAttr "Control_Disp.di" "Clav01_Joint_L_CTR0.do";
connectAttr "Clav01_Joint_L_GRP0.control" "Clav01_Joint_L_CTR0.group";
connectAttr "TEMP_RigRoot.limbs" "Head_Limb_M_NODE.rigRoot";
connectAttr "Neck_Limb_M_NODE.limbChildren" "Head_Limb_M_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "FaceBrow_Limb_L_NODE.rigRoot";
connectAttr "UpperFace_Limb_M_NODE.limbChildren" "FaceBrow_Limb_L_NODE.limbParent"
		;
connectAttr "FaceBrow_Limb_R_NODE.mirrorLimb" "FaceBrow_Limb_L_NODE.mirrorLimb";
connectAttr "FaceBrow_Brow2_L_JNT.group" "Brow2_Joint_L_GRP1.joint";
connectAttr "FaceBrow_Limb_L_NODE.jointGroups" "Brow2_Joint_L_GRP1.limb";
connectAttr "FaceBrow_Limb_L_NODE.usedGroups" "Brow2_Joint_L_GRP1.used";
connectAttr "Control_Disp.di" "Brow2_Joint_L_CTR1.do";
connectAttr "Brow2_Joint_L_GRP1.control" "Brow2_Joint_L_CTR1.group";
connectAttr "FaceBrow_Brow1_L_JNT.group" "Brow1_Joint_L_GRP0.joint";
connectAttr "FaceBrow_Limb_L_NODE.jointGroups" "Brow1_Joint_L_GRP0.limb";
connectAttr "FaceBrow_Limb_L_NODE.usedGroups" "Brow1_Joint_L_GRP0.used";
connectAttr "Control_Disp.di" "Brow1_Joint_L_CTR0.do";
connectAttr "Brow1_Joint_L_GRP0.control" "Brow1_Joint_L_CTR0.group";
connectAttr "FaceBrow_Brow3_L_JNT.group" "Brow3_Joint_L_GRP2.joint";
connectAttr "FaceBrow_Limb_L_NODE.jointGroups" "Brow3_Joint_L_GRP2.limb";
connectAttr "FaceBrow_Limb_L_NODE.usedGroups" "Brow3_Joint_L_GRP2.used";
connectAttr "Control_Disp.di" "Brow3_Joint_L_CTR2.do";
connectAttr "Brow3_Joint_L_GRP2.control" "Brow3_Joint_L_CTR2.group";
connectAttr "TEMP_RigRoot.limbs" "ArmTwist_Limb_L_NODE.rigRoot";
connectAttr "Arm_Limb_L_NODE.limbChildren" "ArmTwist_Limb_L_NODE.limbParent";
connectAttr "ArmTwist_Limb_R_NODE.mirrorLimb" "ArmTwist_Limb_L_NODE.mirrorLimb";
connectAttr "ArmTwist_AT2_L_JNT.group" "AT2_Joint_L_GRP1.joint";
connectAttr "ArmTwist_Limb_L_NODE.jointGroups" "AT2_Joint_L_GRP1.limb";
connectAttr "ArmTwist_Limb_L_NODE.usedGroups" "AT2_Joint_L_GRP1.used";
connectAttr "Control_Disp.di" "AT2_Joint_L_CTR1.do";
connectAttr "AT2_Joint_L_GRP1.control" "AT2_Joint_L_CTR1.group";
connectAttr "ArmTwist_AT1_L_JNT.group" "AT1_Joint_L_GRP0.joint";
connectAttr "ArmTwist_Limb_L_NODE.jointGroups" "AT1_Joint_L_GRP0.limb";
connectAttr "ArmTwist_Limb_L_NODE.usedGroups" "AT1_Joint_L_GRP0.used";
connectAttr "Control_Disp.di" "AT1_Joint_L_CTR0.do";
connectAttr "AT1_Joint_L_GRP0.control" "AT1_Joint_L_CTR0.group";
connectAttr "ArmTwist_AT3_L_JNT.group" "AT3_Joint_L_GRP2.joint";
connectAttr "ArmTwist_Limb_L_NODE.jointGroups" "AT3_Joint_L_GRP2.limb";
connectAttr "ArmTwist_Limb_L_NODE.usedGroups" "AT3_Joint_L_GRP2.used";
connectAttr "Control_Disp.di" "AT3_Joint_L_CTR2.do";
connectAttr "AT3_Joint_L_GRP2.control" "AT3_Joint_L_CTR2.group";
connectAttr "TEMP_RigRoot.limbs" "Index_Limb_L_NODE.rigRoot";
connectAttr "Arm_Limb_L_NODE.limbChildren" "Index_Limb_L_NODE.limbParent";
connectAttr "Index_Limb_R_NODE.mirrorLimb" "Index_Limb_L_NODE.mirrorLimb";
connectAttr "Index_Index2_L_JNT.group" "Index2_Joint_L_GRP1.joint";
connectAttr "Index_Limb_L_NODE.jointGroups" "Index2_Joint_L_GRP1.limb";
connectAttr "Index_Limb_L_NODE.usedGroups" "Index2_Joint_L_GRP1.used";
connectAttr "Control_Disp.di" "Index2_Joint_L_CTR1.do";
connectAttr "Index2_Joint_L_GRP1.control" "Index2_Joint_L_CTR1.group";
connectAttr "Index_Index1_L_JNT.group" "Index1_Joint_L_GRP0.joint";
connectAttr "Index_Limb_L_NODE.jointGroups" "Index1_Joint_L_GRP0.limb";
connectAttr "Index_Limb_L_NODE.usedGroups" "Index1_Joint_L_GRP0.used";
connectAttr "Control_Disp.di" "Index1_Joint_L_CTR0.do";
connectAttr "Index1_Joint_L_GRP0.control" "Index1_Joint_L_CTR0.group";
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
connectAttr "TEMP_RigRoot.limbs" "Thumb_Limb_L_NODE.rigRoot";
connectAttr "Arm_Limb_L_NODE.limbChildren" "Thumb_Limb_L_NODE.limbParent";
connectAttr "Thumb_Limb_R_NODE.mirrorLimb" "Thumb_Limb_L_NODE.mirrorLimb";
connectAttr "Thumb_Thumb2_L_JNT.group" "Thumb2_Joint_L_GRP1.joint";
connectAttr "Thumb_Limb_L_NODE.jointGroups" "Thumb2_Joint_L_GRP1.limb";
connectAttr "Thumb_Limb_L_NODE.usedGroups" "Thumb2_Joint_L_GRP1.used";
connectAttr "Control_Disp.di" "Thumb2_Joint_L_CTR1.do";
connectAttr "Thumb2_Joint_L_GRP1.control" "Thumb2_Joint_L_CTR1.group";
connectAttr "Thumb_Thumb1_L_JNT.group" "Thumb1_Joint_L_GRP0.joint";
connectAttr "Thumb_Limb_L_NODE.jointGroups" "Thumb1_Joint_L_GRP0.limb";
connectAttr "Thumb_Limb_L_NODE.usedGroups" "Thumb1_Joint_L_GRP0.used";
connectAttr "Control_Disp.di" "Thumb1_Joint_L_CTR0.do";
connectAttr "Thumb1_Joint_L_GRP0.control" "Thumb1_Joint_L_CTR0.group";
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
connectAttr "TEMP_RigRoot.limbs" "Neck_Limb_M_NODE.rigRoot";
connectAttr "Spine_Limb_M_NODE.limbChildren" "Neck_Limb_M_NODE.limbParent";
connectAttr "TEMP_RigRoot.limbs" "Clav_Limb_R_NODE.rigRoot";
connectAttr "Spine_Limb_M_NODE.limbChildren" "Clav_Limb_R_NODE.limbParent";
connectAttr "Clav_Clav001_R_JNT.group" "Clav001_Joint_R_GRP0.joint";
connectAttr "Clav_Limb_R_NODE.jointGroups" "Clav001_Joint_R_GRP0.limb";
connectAttr "Clav_Limb_R_NODE.usedGroups" "Clav001_Joint_R_GRP0.used";
connectAttr "Control_Disp.di" "Clav001_Joint_R_CTR0.do";
connectAttr "Clav001_Joint_R_GRP0.control" "Clav001_Joint_R_CTR0.group";
connectAttr "TEMP_RigRoot.limbs" "Arm_Limb_R_NODE.rigRoot";
connectAttr "Clav_Limb_R_NODE.limbChildren" "Arm_Limb_R_NODE.limbParent";
connectAttr "Arm_Shoulder_R_JNT.group" "Shoulder_Joint_R_GRP0.joint";
connectAttr "Arm_Limb_R_NODE.jointGroups" "Shoulder_Joint_R_GRP0.limb";
connectAttr "Arm_Limb_R_NODE.usedGroups" "Shoulder_Joint_R_GRP0.used";
connectAttr "Control_Disp.di" "Shoulder_Joint_R_CTR0.do";
connectAttr "Shoulder_Joint_R_GRP0.control" "Shoulder_Joint_R_CTR0.group";
connectAttr "Arm_Elbow_R_JNT.group" "Elbow_Joint_R_GRP1.joint";
connectAttr "Arm_Limb_R_NODE.jointGroups" "Elbow_Joint_R_GRP1.limb";
connectAttr "Arm_Limb_R_NODE.usedGroups" "Elbow_Joint_R_GRP1.used";
connectAttr "Control_Disp.di" "Elbow_Joint_R_CTR1.do";
connectAttr "Elbow_Joint_R_GRP1.control" "Elbow_Joint_R_CTR1.group";
connectAttr "Arm_Wrist_R_JNT.group" "Wrist_Joint_R_GRP2.joint";
connectAttr "Arm_Limb_R_NODE.jointGroups" "Wrist_Joint_R_GRP2.limb";
connectAttr "Arm_Limb_R_NODE.usedGroups" "Wrist_Joint_R_GRP2.used";
connectAttr "Control_Disp.di" "Wrist_Joint_R_CTR2.do";
connectAttr "Wrist_Joint_R_GRP2.control" "Wrist_Joint_R_CTR2.group";
connectAttr "TEMP_RigRoot.limbs" "ArmTwist_Limb_R_NODE.rigRoot";
connectAttr "Arm_Limb_R_NODE.limbChildren" "ArmTwist_Limb_R_NODE.limbParent";
connectAttr "ArmTwist_AT1_R_JNT.group" "AT1_Joint_R_GRP0.joint";
connectAttr "ArmTwist_Limb_R_NODE.jointGroups" "AT1_Joint_R_GRP0.limb";
connectAttr "ArmTwist_Limb_R_NODE.usedGroups" "AT1_Joint_R_GRP0.used";
connectAttr "Control_Disp.di" "AT1_Joint_R_CTR0.do";
connectAttr "AT1_Joint_R_GRP0.control" "AT1_Joint_R_CTR0.group";
connectAttr "ArmTwist_AT2_R_JNT.group" "AT2_Joint_R_GRP1.joint";
connectAttr "ArmTwist_Limb_R_NODE.jointGroups" "AT2_Joint_R_GRP1.limb";
connectAttr "ArmTwist_Limb_R_NODE.usedGroups" "AT2_Joint_R_GRP1.used";
connectAttr "Control_Disp.di" "AT2_Joint_R_CTR1.do";
connectAttr "AT2_Joint_R_GRP1.control" "AT2_Joint_R_CTR1.group";
connectAttr "ArmTwist_AT3_R_JNT.group" "AT3_Joint_R_GRP2.joint";
connectAttr "ArmTwist_Limb_R_NODE.jointGroups" "AT3_Joint_R_GRP2.limb";
connectAttr "ArmTwist_Limb_R_NODE.usedGroups" "AT3_Joint_R_GRP2.used";
connectAttr "Control_Disp.di" "AT3_Joint_R_CTR2.do";
connectAttr "AT3_Joint_R_GRP2.control" "AT3_Joint_R_CTR2.group";
connectAttr "TEMP_RigRoot.limbs" "Index_Limb_R_NODE.rigRoot";
connectAttr "Arm_Limb_R_NODE.limbChildren" "Index_Limb_R_NODE.limbParent";
connectAttr "Index_Index001_R_JNT.group" "Index001_Joint_R_GRP0.joint";
connectAttr "Index_Limb_R_NODE.jointGroups" "Index001_Joint_R_GRP0.limb";
connectAttr "Index_Limb_R_NODE.usedGroups" "Index001_Joint_R_GRP0.used";
connectAttr "Control_Disp.di" "Index001_Joint_R_CTR0.do";
connectAttr "Index001_Joint_R_GRP0.control" "Index001_Joint_R_CTR0.group";
connectAttr "Index_Index002_R_JNT.group" "Index002_Joint_R_GRP1.joint";
connectAttr "Index_Limb_R_NODE.jointGroups" "Index002_Joint_R_GRP1.limb";
connectAttr "Index_Limb_R_NODE.usedGroups" "Index002_Joint_R_GRP1.used";
connectAttr "Control_Disp.di" "Index002_Joint_R_CTR1.do";
connectAttr "Index002_Joint_R_GRP1.control" "Index002_Joint_R_CTR1.group";
connectAttr "Index_Index003_R_JNT.group" "Index003_Joint_R_GRP2.joint";
connectAttr "Index_Limb_R_NODE.jointGroups" "Index003_Joint_R_GRP2.limb";
connectAttr "Index_Limb_R_NODE.usedGroups" "Index003_Joint_R_GRP2.used";
connectAttr "Control_Disp.di" "Index003_Joint_R_CTR2.do";
connectAttr "Index003_Joint_R_GRP2.control" "Index003_Joint_R_CTR2.group";
connectAttr "Index_Index004_R_JNT.group" "Index004_Joint_R_GRP3.joint";
connectAttr "Index_Limb_R_NODE.jointGroups" "Index004_Joint_R_GRP3.limb";
connectAttr "Index_Limb_R_NODE.usedGroups" "Index004_Joint_R_GRP3.used";
connectAttr "Control_Disp.di" "Index004_Joint_R_CTR3.do";
connectAttr "Index004_Joint_R_GRP3.control" "Index004_Joint_R_CTR3.group";
connectAttr "TEMP_RigRoot.limbs" "Middle_Limb_R_NODE.rigRoot";
connectAttr "Arm_Limb_R_NODE.limbChildren" "Middle_Limb_R_NODE.limbParent";
connectAttr "Middle_Middle001_R_JNT.group" "Middle001_Joint_R_GRP0.joint";
connectAttr "Middle_Limb_R_NODE.jointGroups" "Middle001_Joint_R_GRP0.limb";
connectAttr "Middle_Limb_R_NODE.usedGroups" "Middle001_Joint_R_GRP0.used";
connectAttr "Control_Disp.di" "Middle001_Joint_R_CTR0.do";
connectAttr "Middle001_Joint_R_GRP0.control" "Middle001_Joint_R_CTR0.group";
connectAttr "Middle_Middle002_R_JNT.group" "Middle002_Joint_R_GRP1.joint";
connectAttr "Middle_Limb_R_NODE.jointGroups" "Middle002_Joint_R_GRP1.limb";
connectAttr "Middle_Limb_R_NODE.usedGroups" "Middle002_Joint_R_GRP1.used";
connectAttr "Control_Disp.di" "Middle002_Joint_R_CTR1.do";
connectAttr "Middle002_Joint_R_GRP1.control" "Middle002_Joint_R_CTR1.group";
connectAttr "Middle_Middle003_R_JNT.group" "Middle003_Joint_R_GRP2.joint";
connectAttr "Middle_Limb_R_NODE.jointGroups" "Middle003_Joint_R_GRP2.limb";
connectAttr "Middle_Limb_R_NODE.usedGroups" "Middle003_Joint_R_GRP2.used";
connectAttr "Control_Disp.di" "Middle003_Joint_R_CTR2.do";
connectAttr "Middle003_Joint_R_GRP2.control" "Middle003_Joint_R_CTR2.group";
connectAttr "Middle_Middle004_R_JNT.group" "Middle004_Joint_R_GRP3.joint";
connectAttr "Middle_Limb_R_NODE.jointGroups" "Middle004_Joint_R_GRP3.limb";
connectAttr "Middle_Limb_R_NODE.usedGroups" "Middle004_Joint_R_GRP3.used";
connectAttr "Control_Disp.di" "Middle004_Joint_R_CTR3.do";
connectAttr "Middle004_Joint_R_GRP3.control" "Middle004_Joint_R_CTR3.group";
connectAttr "TEMP_RigRoot.limbs" "Pinkie_Limb_R_NODE.rigRoot";
connectAttr "Arm_Limb_R_NODE.limbChildren" "Pinkie_Limb_R_NODE.limbParent";
connectAttr "Pinkie_Pinkey1_R_JNT.group" "Pinkey1_Joint_R_GRP0.joint";
connectAttr "Pinkie_Limb_R_NODE.jointGroups" "Pinkey1_Joint_R_GRP0.limb";
connectAttr "Pinkie_Limb_R_NODE.usedGroups" "Pinkey1_Joint_R_GRP0.used";
connectAttr "Control_Disp.di" "Pinkey1_Joint_R_CTR0.do";
connectAttr "Pinkey1_Joint_R_GRP0.control" "Pinkey1_Joint_R_CTR0.group";
connectAttr "Pinkie_Pinkey2_R_JNT.group" "Pinkey2_Joint_R_GRP1.joint";
connectAttr "Pinkie_Limb_R_NODE.jointGroups" "Pinkey2_Joint_R_GRP1.limb";
connectAttr "Pinkie_Limb_R_NODE.usedGroups" "Pinkey2_Joint_R_GRP1.used";
connectAttr "Control_Disp.di" "Pinkey2_Joint_R_CTR1.do";
connectAttr "Pinkey2_Joint_R_GRP1.control" "Pinkey2_Joint_R_CTR1.group";
connectAttr "Pinkie_Pinkey3_R_JNT.group" "Pinkey3_Joint_R_GRP2.joint";
connectAttr "Pinkie_Limb_R_NODE.jointGroups" "Pinkey3_Joint_R_GRP2.limb";
connectAttr "Pinkie_Limb_R_NODE.usedGroups" "Pinkey3_Joint_R_GRP2.used";
connectAttr "Control_Disp.di" "Pinkey3_Joint_R_CTR2.do";
connectAttr "Pinkey3_Joint_R_GRP2.control" "Pinkey3_Joint_R_CTR2.group";
connectAttr "Pinkie_Pinkey4_R_JNT.group" "Pinkey4_Joint_R_GRP3.joint";
connectAttr "Pinkie_Limb_R_NODE.jointGroups" "Pinkey4_Joint_R_GRP3.limb";
connectAttr "Pinkie_Limb_R_NODE.usedGroups" "Pinkey4_Joint_R_GRP3.used";
connectAttr "Control_Disp.di" "Pinkey4_Joint_R_CTR3.do";
connectAttr "Pinkey4_Joint_R_GRP3.control" "Pinkey4_Joint_R_CTR3.group";
connectAttr "TEMP_RigRoot.limbs" "Ring_Limb_R_NODE.rigRoot";
connectAttr "Arm_Limb_R_NODE.limbChildren" "Ring_Limb_R_NODE.limbParent";
connectAttr "Ring_Ring001_R_JNT.group" "Ring001_Joint_R_GRP0.joint";
connectAttr "Ring_Limb_R_NODE.jointGroups" "Ring001_Joint_R_GRP0.limb";
connectAttr "Ring_Limb_R_NODE.usedGroups" "Ring001_Joint_R_GRP0.used";
connectAttr "Control_Disp.di" "Ring001_Joint_R_CTR0.do";
connectAttr "Ring001_Joint_R_GRP0.control" "Ring001_Joint_R_CTR0.group";
connectAttr "Ring_Ring002_R_JNT.group" "Ring002_Joint_R_GRP1.joint";
connectAttr "Ring_Limb_R_NODE.jointGroups" "Ring002_Joint_R_GRP1.limb";
connectAttr "Ring_Limb_R_NODE.usedGroups" "Ring002_Joint_R_GRP1.used";
connectAttr "Control_Disp.di" "Ring002_Joint_R_CTR1.do";
connectAttr "Ring002_Joint_R_GRP1.control" "Ring002_Joint_R_CTR1.group";
connectAttr "Ring_Ring003_R_JNT.group" "Ring003_Joint_R_GRP2.joint";
connectAttr "Ring_Limb_R_NODE.jointGroups" "Ring003_Joint_R_GRP2.limb";
connectAttr "Ring_Limb_R_NODE.usedGroups" "Ring003_Joint_R_GRP2.used";
connectAttr "Control_Disp.di" "Ring003_Joint_R_CTR2.do";
connectAttr "Ring003_Joint_R_GRP2.control" "Ring003_Joint_R_CTR2.group";
connectAttr "Ring_Ring004_R_JNT.group" "Ring004_Joint_R_GRP3.joint";
connectAttr "Ring_Limb_R_NODE.jointGroups" "Ring004_Joint_R_GRP3.limb";
connectAttr "Ring_Limb_R_NODE.usedGroups" "Ring004_Joint_R_GRP3.used";
connectAttr "Control_Disp.di" "Ring004_Joint_R_CTR3.do";
connectAttr "Ring004_Joint_R_GRP3.control" "Ring004_Joint_R_CTR3.group";
connectAttr "TEMP_RigRoot.limbs" "Thumb_Limb_R_NODE.rigRoot";
connectAttr "Arm_Limb_R_NODE.limbChildren" "Thumb_Limb_R_NODE.limbParent";
connectAttr "Thumb_Thumb001_R_JNT.group" "Thumb001_Joint_R_GRP0.joint";
connectAttr "Thumb_Limb_R_NODE.jointGroups" "Thumb001_Joint_R_GRP0.limb";
connectAttr "Thumb_Limb_R_NODE.usedGroups" "Thumb001_Joint_R_GRP0.used";
connectAttr "Control_Disp.di" "Thumb001_Joint_R_CTR0.do";
connectAttr "Thumb001_Joint_R_GRP0.control" "Thumb001_Joint_R_CTR0.group";
connectAttr "Thumb_Thumb002_R_JNT.group" "Thumb002_Joint_R_GRP1.joint";
connectAttr "Thumb_Limb_R_NODE.jointGroups" "Thumb002_Joint_R_GRP1.limb";
connectAttr "Thumb_Limb_R_NODE.usedGroups" "Thumb002_Joint_R_GRP1.used";
connectAttr "Control_Disp.di" "Thumb002_Joint_R_CTR1.do";
connectAttr "Thumb002_Joint_R_GRP1.control" "Thumb002_Joint_R_CTR1.group";
connectAttr "Thumb_Thumb003_R_JNT.group" "Thumb003_Joint_R_GRP2.joint";
connectAttr "Thumb_Limb_R_NODE.jointGroups" "Thumb003_Joint_R_GRP2.limb";
connectAttr "Thumb_Limb_R_NODE.usedGroups" "Thumb003_Joint_R_GRP2.used";
connectAttr "Control_Disp.di" "Thumb003_Joint_R_CTR2.do";
connectAttr "Thumb003_Joint_R_GRP2.control" "Thumb003_Joint_R_CTR2.group";
connectAttr "Thumb_Thumb004_R_JNT.group" "Thumb004_Joint_R_GRP3.joint";
connectAttr "Thumb_Limb_R_NODE.jointGroups" "Thumb004_Joint_R_GRP3.limb";
connectAttr "Thumb_Limb_R_NODE.usedGroups" "Thumb004_Joint_R_GRP3.used";
connectAttr "Control_Disp.di" "Thumb004_Joint_R_CTR3.do";
connectAttr "Thumb004_Joint_R_GRP3.control" "Thumb004_Joint_R_CTR3.group";
connectAttr "TEMP_RigRoot.limbs" "FaceBrow_Limb_R_NODE.rigRoot";
connectAttr "UpperFace_Limb_M_NODE.limbChildren" "FaceBrow_Limb_R_NODE.limbParent"
		;
connectAttr "FaceBrow_Brow1_R_JNT.group" "Brow1_Joint_R_GRP0.joint";
connectAttr "FaceBrow_Limb_R_NODE.jointGroups" "Brow1_Joint_R_GRP0.limb";
connectAttr "FaceBrow_Limb_R_NODE.usedGroups" "Brow1_Joint_R_GRP0.used";
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
connectAttr "Brow1_Joint_L_CTR0Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Brow2_Joint_L_CTR1Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "Brow3_Joint_L_CTR2Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "AT1_Joint_L_CTR0Shape.iog" "LControlsMaterialSG.dsm" -na;
connectAttr "AT2_Joint_L_CTR1Shape.iog" "LControlsMaterialSG.dsm" -na;
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
connectAttr "Clav001_Joint_R_CTR0Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Elbow_Joint_R_CTR1Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Shoulder_Joint_R_CTR0Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Wrist_Joint_R_CTR2Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "AT2_Joint_R_CTR1Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "AT1_Joint_R_CTR0Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "AT3_Joint_R_CTR2Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Index002_Joint_R_CTR1Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Index001_Joint_R_CTR0Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Index003_Joint_R_CTR2Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Index004_Joint_R_CTR3Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Middle002_Joint_R_CTR1Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Middle001_Joint_R_CTR0Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Middle003_Joint_R_CTR2Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Middle004_Joint_R_CTR3Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Pinkey2_Joint_R_CTR1Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Pinkey1_Joint_R_CTR0Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Pinkey3_Joint_R_CTR2Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Pinkey4_Joint_R_CTR3Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Ring002_Joint_R_CTR1Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Ring001_Joint_R_CTR0Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Ring003_Joint_R_CTR2Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Ring004_Joint_R_CTR3Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Thumb002_Joint_R_CTR1Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Thumb001_Joint_R_CTR0Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Thumb003_Joint_R_CTR2Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Thumb004_Joint_R_CTR3Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Brow2_Joint_R_CTR1Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Brow1_Joint_R_CTR0Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "Brow3_Joint_R_CTR2Shape.iog" "RControlsMaterialSG.dsm" -na;
connectAttr "RControlsMaterialSG.msg" "materialInfo4.sg";
connectAttr "RControlsMaterial.msg" "materialInfo4.m";
connectAttr "RControlsMaterial.msg" "materialInfo4.t" -na;
connectAttr "Cube_PolyShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "Pinkie_Pinkey2_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "Index1_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "Pinkey1_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "Clav01_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "Index2_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "Clav01_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "Thumb3_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "Middle_Middle1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "Ring_Ring1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "Clav_Limb_R_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "Pinkey1_Joint_R_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "Arm_Shoulder_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "Ring1_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "Thumb003_Joint_R_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "Middle004_Joint_R_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "Elbow_Joint_R_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "Pinkie_Pinkey1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "Ring004_Joint_R_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "Elbow_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "Thumb_Thumb1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "Ring_Ring2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "Clav_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "Spine_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "Ring004_Joint_R_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "Middle3_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "Ring3_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "Middle2_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "Index002_Joint_R_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "Pinkey4_Joint_R_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "Middle003_Joint_R_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "FaceBrow_Brow1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "Head_Head2_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "Circle_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn";
connectAttr "Wrist_Joint_R_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "Meshes_Disp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn";
connectAttr "Index002_Joint_R_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "AT1_Joint_R_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "Middle002_Joint_R_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "Shoulder_Joint_R_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "Index_Index002_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "Thumb_Thumb002_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "Jaw2_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "Index001_Joint_R_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "Ring2_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "Pinkey4_Joint_R_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "MControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "Middle_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "Sphere_Poly.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn";
connectAttr "Index4_Joint_L_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn"
		;
connectAttr "Brow3_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "Wrist_Joint_R_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "Index_Index3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "Clav001_Joint_R_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "Pinkey3_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "Wrist_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "Index2_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "RControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "Middle2_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "ArmTwist_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "Brow1_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "Jaw1_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn"
		;
connectAttr "Middle1_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "Pinkey2_Joint_R_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "Brow3_Joint_R_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "Index_Index001_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "Shoulder_Joint_R_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "Pinkey2_Joint_R_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn"
		;
connectAttr "MESHES.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn";
connectAttr "MControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn"
		;
connectAttr "Middle_Middle002_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "Middle3_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "Ring_Ring001_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "Clav001_Joint_R_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "Elbow_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn"
		;
connectAttr "Pinkey3_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn"
		;
connectAttr "Thumb_Thumb4_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn"
		;
connectAttr "Ring_Ring4_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "ArmTwist_AT3_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn"
		;
connectAttr "Jaw_Jaw1_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn";
connectAttr "Brow3_Joint_R_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn"
		;
connectAttr "Index002_Joint_R_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn"
		;
connectAttr "Jaw_Jaw2_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn";
connectAttr "Index_Index1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "Index2_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "Thumb_Limb_R_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "ArmTwist_AT2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "Thumb3_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "Thumb3_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "Index_Index4_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn"
		;
connectAttr "Ring4_Joint_L_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "materialInfo2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn";
connectAttr "FaceBrow_Brow2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn"
		;
connectAttr "Head2_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn"
		;
connectAttr "Thumb_Thumb3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn"
		;
connectAttr "Elbow_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn"
		;
connectAttr "Index004_Joint_R_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn"
		;
connectAttr "FaceBrow_Brow1_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn"
		;
connectAttr "materialInfo3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn";
connectAttr "Control_Disp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn";
connectAttr "UF1_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn"
		;
connectAttr "Pinkie_Pinkey4_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn"
		;
connectAttr "Ring4_Joint_L_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn"
		;
connectAttr "Pin_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn";
connectAttr "Thumb_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn"
		;
connectAttr "materialInfo1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn";
connectAttr "Index_Index004_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn"
		;
connectAttr "Middle_Middle3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn"
		;
connectAttr "Ring001_Joint_R_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn"
		;
connectAttr "Thumb004_Joint_R_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn"
		;
connectAttr "Thumb003_Joint_R_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn"
		;
connectAttr "Spine_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn"
		;
connectAttr "LControlsMaterialSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn"
		;
connectAttr "AT2_Joint_R_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn"
		;
connectAttr "Ring003_Joint_R_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn"
		;
connectAttr "Brow3_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn"
		;
connectAttr "Pinkey4_Joint_L_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn"
		;
connectAttr "Head1_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn"
		;
connectAttr "Pinkie_Pinkey3_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[118].dn"
		;
connectAttr "AT1_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn"
		;
connectAttr "ArmTwist_AT3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[120].dn"
		;
connectAttr "Pinkey1_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn"
		;
connectAttr "Diamond_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn";
connectAttr "Pinkey4_Joint_R_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[123].dn"
		;
connectAttr "Brow1_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[124].dn"
		;
connectAttr "Head_Head1_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[125].dn"
		;
connectAttr "AT3_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[126].dn"
		;
connectAttr "Neck_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[127].dn"
		;
connectAttr "Index001_Joint_R_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[128].dn"
		;
connectAttr "Pinkey2_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[129].dn"
		;
connectAttr "Clav001_Joint_R_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[130].dn"
		;
connectAttr "Head_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[131].dn"
		;
connectAttr "ArmTwist_Limb_R_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[132].dn"
		;
connectAttr "CONTROL_SHAPE_TEMPLATES.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[133].dn"
		;
connectAttr "AT2_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[134].dn"
		;
connectAttr "Thumb2_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[135].dn"
		;
connectAttr "Pinkey4_Joint_L_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[136].dn"
		;
connectAttr "ArmTwist_AT1_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[137].dn"
		;
connectAttr "Square_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[138].dn"
		;
connectAttr "AT3_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[139].dn"
		;
connectAttr "Middle1_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[140].dn"
		;
connectAttr "Arm_Wrist_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[141].dn"
		;
connectAttr "Brow2_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[142].dn"
		;
connectAttr "Pinkey3_Joint_R_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[143].dn"
		;
connectAttr "JOINTS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[144].dn";
connectAttr "Ring004_Joint_R_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[145].dn"
		;
connectAttr "Brow2_Joint_R_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[146].dn"
		;
connectAttr "Index3_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[147].dn"
		;
connectAttr "Pinkie_Pinkey4_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[148].dn"
		;
connectAttr "sceneConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[149].dn"
		;
connectAttr "Brow2_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[150].dn"
		;
connectAttr "Spine_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[151].dn"
		;
connectAttr "Index1_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[152].dn"
		;
connectAttr "Brow3_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[153].dn"
		;
connectAttr "Pinkey3_Joint_R_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[154].dn"
		;
connectAttr "UpperFace_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[155].dn"
		;
connectAttr "Pinkie_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[156].dn"
		;
connectAttr "Head2_Joint_M_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[157].dn"
		;
connectAttr "LControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[158].dn"
		;
connectAttr "Middle001_Joint_R_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[159].dn"
		;
connectAttr "Pinkey3_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[160].dn"
		;
connectAttr "Index_Index003_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[161].dn"
		;
connectAttr "Square_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[162].dn";
connectAttr "Middle_Middle003_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[163].dn"
		;
connectAttr "Pin_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[164].dn";
connectAttr "Ring_Ring002_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[165].dn"
		;
connectAttr "Index003_Joint_R_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[166].dn"
		;
connectAttr "Cylinder_PolyShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[167].dn"
		;
connectAttr "Middle_Middle004_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[168].dn"
		;
connectAttr "Thumb4_Joint_L_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[169].dn"
		;
connectAttr "Clav01_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[170].dn"
		;
connectAttr "Elbow_Joint_R_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[171].dn"
		;
connectAttr "Spine_Spine_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[172].dn"
		;
connectAttr "AT3_Joint_R_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[173].dn"
		;
connectAttr "Elbow_Joint_R_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[174].dn"
		;
connectAttr "Index_Limb_R_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[175].dn"
		;
connectAttr "UF1_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[176].dn"
		;
connectAttr "materialInfo4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[177].dn";
connectAttr "Ring001_Joint_R_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[178].dn"
		;
connectAttr "Ring1_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[179].dn"
		;
connectAttr "LIMBS.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[180].dn";
connectAttr "Thumb_Thumb004_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[181].dn"
		;
connectAttr "Thumb4_Joint_L_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[182].dn"
		;
connectAttr "Brow2_Joint_R_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[183].dn"
		;
connectAttr "Middle_Middle4_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[184].dn"
		;
connectAttr "Thumb002_Joint_R_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[185].dn"
		;
connectAttr "Thumb4_Joint_L_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[186].dn"
		;
connectAttr "Ring2_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[187].dn"
		;
connectAttr "Middle2_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[188].dn"
		;
connectAttr "Pinkey4_Joint_L_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[189].dn"
		;
connectAttr "Index001_Joint_R_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[190].dn"
		;
connectAttr "Shoulder_Joint_R_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[191].dn"
		;
connectAttr "FaceBrow_Brow3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[192].dn"
		;
connectAttr "Index1_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[193].dn"
		;
connectAttr "Middle003_Joint_R_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[194].dn"
		;
connectAttr "Thumb001_Joint_R_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[195].dn"
		;
connectAttr "Jaw1_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[196].dn"
		;
connectAttr "AT3_Joint_R_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[197].dn"
		;
connectAttr "Cylinder_Poly.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[198].dn";
connectAttr "ArmTwist_AT1_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[199].dn"
		;
connectAttr "Thumb003_Joint_R_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[200].dn"
		;
connectAttr "Jaw_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[201].dn"
		;
connectAttr "Pinkie_Pinkey2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[202].dn"
		;
connectAttr "Thumb004_Joint_R_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[203].dn"
		;
connectAttr "Ring001_Joint_R_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[204].dn"
		;
connectAttr "Head2_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[205].dn"
		;
connectAttr "Ring_Ring3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[206].dn"
		;
connectAttr "Joint_Disp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[207].dn";
connectAttr "Pinkey1_Joint_R_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[208].dn"
		;
connectAttr "FaceBrow_Brow3_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[209].dn"
		;
connectAttr "Neck_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[210].dn"
		;
connectAttr "Ring3_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[211].dn"
		;
connectAttr "Middle002_Joint_R_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[212].dn"
		;
connectAttr "Shoulder_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[213].dn"
		;
connectAttr "Index_Index2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[214].dn"
		;
connectAttr "Cube_Poly.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[215].dn";
connectAttr "Brow1_Joint_R_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[216].dn"
		;
connectAttr "Ring_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[217].dn"
		;
connectAttr "Ring_Ring004_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[218].dn"
		;
connectAttr "Cube_Wire.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[219].dn";
connectAttr "Arm_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[220].dn"
		;
connectAttr "Thumb2_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[221].dn"
		;
connectAttr "Ring002_Joint_R_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[222].dn"
		;
connectAttr "Arm_Wrist_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[223].dn"
		;
connectAttr "uiConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[224].dn"
		;
connectAttr "UF1_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[225].dn"
		;
connectAttr "Middle3_Joint_L_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[226].dn"
		;
connectAttr "Arm_Limb_R_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[227].dn"
		;
connectAttr "UpperFace_UF1_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[228].dn"
		;
connectAttr "Pinkey2_Joint_R_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[229].dn"
		;
connectAttr "Wrist_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[230].dn"
		;
connectAttr "Index003_Joint_R_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[231].dn"
		;
connectAttr "Index4_Joint_L_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[232].dn"
		;
connectAttr "Cube_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[233].dn"
		;
connectAttr "Index3_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[234].dn"
		;
connectAttr "Wrist_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[235].dn"
		;
connectAttr "Thumb_Thumb2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[236].dn"
		;
connectAttr "Shoulder_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[237].dn"
		;
connectAttr "Ring_Limb_R_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[238].dn"
		;
connectAttr "Middle_Middle2_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[239].dn"
		;
connectAttr "Thumb_Thumb001_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[240].dn"
		;
connectAttr "FaceBrow_Brow2_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[241].dn"
		;
connectAttr "AT1_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[242].dn"
		;
connectAttr "Index003_Joint_R_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[243].dn"
		;
connectAttr "Middle4_Joint_L_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[244].dn"
		;
connectAttr "AT2_Joint_L_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[245].dn"
		;
connectAttr "Circle_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[246].dn"
		;
connectAttr "Thumb1_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[247].dn"
		;
connectAttr "Thumb1_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[248].dn"
		;
connectAttr "Middle001_Joint_R_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[249].dn"
		;
connectAttr "Arm_Elbow_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[250].dn"
		;
connectAttr "Middle004_Joint_R_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[251].dn"
		;
connectAttr "Middle003_Joint_R_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[252].dn"
		;
connectAttr "AT2_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[253].dn"
		;
connectAttr "Pinkey1_Joint_R_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[254].dn"
		;
connectAttr "Brow3_Joint_R_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[255].dn"
		;
connectAttr "Brow2_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[256].dn"
		;
connectAttr "AT3_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[257].dn"
		;
connectAttr "Sphere_PolyShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[258].dn"
		;
connectAttr "AT2_Joint_R_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[259].dn"
		;
connectAttr "Pinkey2_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[260].dn"
		;
connectAttr "AT1_Joint_R_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[261].dn"
		;
connectAttr "Pinkie_Pinkey1_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[262].dn"
		;
connectAttr "Neck_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[263].dn"
		;
connectAttr "Jaw1_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[264].dn"
		;
connectAttr "Pinkey1_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[265].dn"
		;
connectAttr "RControlsMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[266].dn"
		;
connectAttr "Pinkey2_Joint_L_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[267].dn"
		;
connectAttr "AT2_Joint_R_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[268].dn"
		;
connectAttr "TEMP_RigRoot.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[269].dn";
connectAttr "Thumb001_Joint_R_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[270].dn"
		;
connectAttr "Neck_Joint_M_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[271].dn"
		;
connectAttr "Middle_Middle001_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[272].dn"
		;
connectAttr "Pinkey3_Joint_R_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[273].dn"
		;
connectAttr "Head1_Joint_M_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[274].dn"
		;
connectAttr "Middle002_Joint_R_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[275].dn"
		;
connectAttr "Brow1_Joint_R_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[276].dn"
		;
connectAttr "Ring3_Joint_L_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[277].dn"
		;
connectAttr "Thumb1_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[278].dn"
		;
connectAttr "Pinkie_Limb_R_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[279].dn"
		;
connectAttr "Neck_Neck_M_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[280].dn"
		;
connectAttr "Brow1_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[281].dn"
		;
connectAttr "Arm_Shoulder_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[282].dn"
		;
connectAttr "TempMaterial.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[283].dn";
connectAttr "AT1_Joint_R_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[284].dn"
		;
connectAttr "Middle001_Joint_R_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[285].dn"
		;
connectAttr "Ring4_Joint_L_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[286].dn"
		;
connectAttr "Wrist_Joint_R_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[287].dn"
		;
connectAttr "FaceBrow_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[288].dn"
		;
connectAttr "Index004_Joint_R_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[289].dn"
		;
connectAttr "Ring2_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[290].dn"
		;
connectAttr "Index3_Joint_L_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[291].dn"
		;
connectAttr "Clav_Clav01_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[292].dn"
		;
connectAttr "Clav_Clav001_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[293].dn"
		;
connectAttr "Ring002_Joint_R_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[294].dn"
		;
connectAttr "FaceBrow_Limb_R_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[295].dn"
		;
connectAttr "Thumb002_Joint_R_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[296].dn"
		;
connectAttr "Arm_Elbow_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[297].dn"
		;
connectAttr "Thumb_Thumb003_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[298].dn"
		;
connectAttr "Middle1_Joint_L_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[299].dn"
		;
connectAttr "Ring002_Joint_R_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[300].dn"
		;
connectAttr "Middle004_Joint_R_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[301].dn"
		;
connectAttr "Jaw2_Joint_M_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[302].dn"
		;
connectAttr "Thumb004_Joint_R_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[303].dn"
		;
connectAttr "Brow2_Joint_R_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[304].dn"
		;
connectAttr "Thumb001_Joint_R_CTR0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[305].dn"
		;
connectAttr "Spine_Limb_M_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[306].dn"
		;
connectAttr "Index_Limb_L_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[307].dn"
		;
connectAttr "Ring003_Joint_R_CTR2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[308].dn"
		;
connectAttr "Middle_Limb_R_NODE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[309].dn"
		;
connectAttr "Shoulder_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[310].dn"
		;
connectAttr "Head1_Joint_M_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[311].dn"
		;
connectAttr "AT1_Joint_L_GRP0.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[312].dn"
		;
connectAttr "Brow1_Joint_R_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[313].dn"
		;
connectAttr "Pinkie_Pinkey3_L_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[314].dn"
		;
connectAttr "Thumb2_Joint_L_GRP1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[315].dn"
		;
connectAttr "Diamond_WireShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[316].dn"
		;
connectAttr "Middle4_Joint_L_CTR3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[317].dn"
		;
connectAttr "Jaw2_Joint_M_CTR1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[318].dn"
		;
connectAttr "Middle4_Joint_L_CTR3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[319].dn"
		;
connectAttr "Ring_Ring003_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[320].dn"
		;
connectAttr "AT3_Joint_R_CTR2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[321].dn"
		;
connectAttr "Ring003_Joint_R_GRP2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[322].dn"
		;
connectAttr "Index004_Joint_R_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[323].dn"
		;
connectAttr "Thumb002_Joint_R_CTR1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[324].dn"
		;
connectAttr "Index4_Joint_L_GRP3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[325].dn"
		;
connectAttr "ArmTwist_AT2_R_JNT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[326].dn"
		;
connectAttr "Ring1_Joint_L_CTR0Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[327].dn"
		;
connectAttr "lambert2SG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[328].dn";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "LControlsMaterialSG.pa" ":renderPartition.st" -na;
connectAttr "MControlsMaterialSG.pa" ":renderPartition.st" -na;
connectAttr "RControlsMaterialSG.pa" ":renderPartition.st" -na;
connectAttr "TempMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "LControlsMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "MControlsMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "RControlsMaterial.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of PFX_SetupRig_02.ma
