//Maya ASCII 2018ff08 scene
//Name: lookat_control_setup.ma
//Last modified: Mon, Jun 15, 2020 11:23:14 AM
//Codeset: 1252
requires maya "2018ff08";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201806061309-0a45d7000e";
fileInfo "osv" "Microsoft Windows 8 Enterprise Edition, 64-bit  (Build 9200)\n";
createNode transform -n "grp_control_eyes";
	rename -uid "032F4807-46B9-B1CE-FFF5-FF90F3967690";
	setAttr -av ".v";
createNode dagContainer -n "asset_lookat" -p "grp_control_eyes";
	rename -uid "79B956DE-42A1-BCC4-D42D-FCB66C3F0B5F";
	setAttr ".isc" yes;
	setAttr ".bbx" yes;
	setAttr ".ctor" -type "string" "prmorgan";
	setAttr ".cdat" -type "string" "2018/08/09 14:00:09";
createNode transform -n "lookat_sightlines" -p "asset_lookat";
	rename -uid "331C3B65-434A-D432-9BC3-A8A5EF6C589A";
createNode transform -n "left_sightline_extension_target" -p "lookat_sightlines";
	rename -uid "F63FAEDB-4CE9-8407-DD66-80BAF52972C7";
	setAttr ".v" no;
createNode clusterHandle -n "left_sightline_extension_targetShape" -p "left_sightline_extension_target";
	rename -uid "50189D75-456F-9F23-C922-9E8A813C40BD";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode pointConstraint -n "target_clu_pointConstraint1" -p "left_sightline_extension_target";
	rename -uid "3C976C03-41C7-68DB-63E7-FA8984EA4C3E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "sightline_extend_targetW0" -dv 1
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
	setAttr ".rst" -type "double3" 0 0 40 ;
	setAttr -k on ".w0";
createNode transform -n "left_sightline_extension_start" -p "lookat_sightlines";
	rename -uid "A7775C03-461F-432F-AFC3-DA94AA30BB2F";
	setAttr ".v" no;
createNode clusterHandle -n "left_sightline_extension_startShape" -p "left_sightline_extension_start";
	rename -uid "FC5876B3-425B-9730-D037-C996282BABD5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode pointConstraint -n "start_clu_pointConstraint1" -p "left_sightline_extension_start";
	rename -uid "FBF387DE-4D9B-3503-85C9-B2B9F21F8F2D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "sightline_extend_startW0" -dv 1 -min
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
	setAttr ".rst" -type "double3" 0 0 40 ;
	setAttr -k on ".w0";
createNode transform -n "right_sightline_extension_target" -p "lookat_sightlines";
	rename -uid "0736F579-4B93-01E2-6FD0-E19243DB7834";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 0 40 ;
	setAttr ".sp" -type "double3" 0 0 40 ;
createNode clusterHandle -n "right_sightline_extension_targetShape" -p "right_sightline_extension_target";
	rename -uid "DA2EC1E6-477F-DA5A-2507-068B418A9155";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 0 40 ;
createNode pointConstraint -n "right_sightline_extension_target_pointConstraint1"
		-p "right_sightline_extension_target";
	rename -uid "1E8F9259-428C-B344-F154-C39C6848DCCF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_sightline_extend_targetW0" -dv
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
	setAttr -k on ".w0";
createNode transform -n "right_sightline_extension_start" -p "lookat_sightlines";
	rename -uid "5BB8FAA6-4DCE-9EC2-FE79-B5A59DF9C94B";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 0 0 40 ;
	setAttr ".sp" -type "double3" 0 0 40 ;
createNode clusterHandle -n "right_sightline_extension_startShape" -p "right_sightline_extension_start";
	rename -uid "66E83E5F-41F3-D3D7-E2D0-7E9F7A237E19";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 0 40 ;
createNode pointConstraint -n "right_sightline_extension_start_pointConstraint1"
		-p "right_sightline_extension_start";
	rename -uid "44543C54-498D-8CED-56F9-129BBF3CDEA7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_sightline_extend_startW0" -dv 1
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
	setAttr -k on ".w0";
createNode transform -n "left_eye_distance" -p "lookat_sightlines";
	rename -uid "8D23B732-4842-F6F1-1B2C-199D58F9A34A";
createNode nurbsCurve -n "left_eye_distanceShape" -p "left_eye_distance";
	rename -uid "3DFA0CDD-4D27-8BF2-CA4C-3BBC3F535014";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr -s 6 ".iog[0].og";
	setAttr -av ".iog[0].og[0].gid";
	setAttr -av ".iog[0].og[1].gid";
	setAttr -av ".iog[0].og[2].gid";
	setAttr ".tw" yes;
createNode nurbsCurve -n "left_eye_distanceShapeOrig" -p "left_eye_distance";
	rename -uid "65BF4039-4AFE-7370-BEE7-E9B08650D0E9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve"
		1 1 0 no 3
		2 0 1
		2
		-3.1728300875499826e-08 0 -2.0953837776005457e-08
		0 0 0
		;
createNode transform -n "right_eye_distance" -p "lookat_sightlines";
	rename -uid "225B3526-4684-D0DD-A081-4D80B1F9D550";
createNode nurbsCurve -n "right_eye_distanceShape" -p "right_eye_distance";
	rename -uid "A4909BF5-40B8-A05B-4FE3-749BD5DA1E20";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr -s 6 ".iog[0].og";
	setAttr -av ".iog[0].og[0].gid";
	setAttr -av ".iog[0].og[1].gid";
	setAttr -av ".iog[0].og[2].gid";
	setAttr ".tw" yes;
createNode nurbsCurve -n "right_eye_distanceShapeOrig" -p "right_eye_distance";
	rename -uid "6A2CD3E3-4A18-444F-DD37-EB9A8076C5E5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve"
		1 1 0 no 3
		2 0 1
		2
		-3.1728300875499826e-08 0 -2.0953837776005457e-08
		0 0 0
		;
createNode transform -n "eyes_distance_start" -p "lookat_sightlines";
	rename -uid "CFD4DB9C-4E0C-C6BF-7B5D-1CA5861C91E5";
	setAttr ".v" no;
createNode clusterHandle -n "eyes_distance_startShape" -p "eyes_distance_start";
	rename -uid "A4861A44-4D70-282C-B7A1-059895AE0392";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode transform -n "eyes_distance_end" -p "lookat_sightlines";
	rename -uid "D3E7D58A-4A07-3958-F04F-D4945987B097";
	setAttr ".v" no;
createNode clusterHandle -n "eyes_distance_endShape" -p "eyes_distance_end";
	rename -uid "EB9BFF19-46B9-1709-404B-C291A0FD5127";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode pointConstraint -n "eyes_distance_end_pointConstraint1" -p "eyes_distance_end";
	rename -uid "214D9883-4DC3-BA57-E80D-D99F658E02A2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "lookat_ctlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0 0 40.000000000000007 ;
	setAttr -k on ".w0";
createNode transform -n "left_eye_distance_start" -p "lookat_sightlines";
	rename -uid "18D7A265-487E-C383-1EB4-B1ACCF380AD5";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -3.1728300875499826e-08 0 -2.0953837776005457e-08 ;
	setAttr ".sp" -type "double3" -3.1728300875499826e-08 0 -2.0953837776005457e-08 ;
createNode clusterHandle -n "left_eye_distance_startShape" -p "left_eye_distance_start";
	rename -uid "F04189F4-428B-31A3-CD7A-60BA720E4E75";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" -3.1728300875499826e-08 0 -2.0953837776005457e-08 ;
createNode transform -n "right_eye_distance_start" -p "lookat_sightlines";
	rename -uid "79769703-47F5-B8B3-2085-F2B91EA44225";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -3.1728300875499826e-08 0 -2.0953837776005457e-08 ;
	setAttr ".sp" -type "double3" -3.1728300875499826e-08 0 -2.0953837776005457e-08 ;
createNode clusterHandle -n "right_eye_distance_startShape" -p "right_eye_distance_start";
	rename -uid "29F17C08-4098-B8C4-4F25-918AC25F89A4";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" -3.1728300875499826e-08 0 -2.0953837776005457e-08 ;
createNode transform -n "left_eye_distance_end" -p "lookat_sightlines";
	rename -uid "39CDDA52-456A-EA61-0615-F3AB1F84E03D";
	setAttr ".v" no;
createNode clusterHandle -n "left_eye_distance_endShape" -p "left_eye_distance_end";
	rename -uid "9EE92136-4B91-991A-D9FB-C09355DB28B9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode pointConstraint -n "left_eye_distance_end_pointConstraint1" -p "left_eye_distance_end";
	rename -uid "D2D35C58-4C73-9B91-19DE-69AE78389D00";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_lookat_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0 5.6843418860808015e-14 40.000000000000036 ;
	setAttr -k on ".w0";
createNode transform -n "right_eye_distance_end" -p "lookat_sightlines";
	rename -uid "BD8C687F-403A-2BE1-F174-59BC9027BC64";
	setAttr ".v" no;
createNode clusterHandle -n "right_eye_distance_endShape" -p "right_eye_distance_end";
	rename -uid "A46BED0F-4179-AAB1-8837-92B4FFDCDF52";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode pointConstraint -n "right_eye_distance_end_pointConstraint1" -p "right_eye_distance_end";
	rename -uid "7C059B63-4468-2BE0-31B0-34B33590485F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_lookat_ctrlW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -5.773159728050814e-15 1.1368683772161603e-13 40.000000000000043 ;
	setAttr -k on ".w0";
createNode transform -n "lookat_output" -p "asset_lookat";
	rename -uid "09B04909-4ABB-9BF0-8A35-578AE3085D59";
	addAttr -ci true -k true -sn "NL_61" -ln "NL_61" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "NR_61" -ln "NR_61" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "NL_62" -ln "NL_62" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "NR_62" -ln "NR_62" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "NL_63" -ln "NL_63" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "NR_63" -ln "NR_63" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "NL_64" -ln "NL_64" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "NR_64" -ln "NR_64" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "Eyes_TX" -ln "Eyes_TX" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "Eyes_TY" -ln "Eyes_TY" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "LeftEye_TX" -ln "LeftEye_TX" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "LeftEye_TY" -ln "LeftEye_TY" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "RightEye_TX" -ln "RightEye_TX" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "RightEye_TY" -ln "RightEye_TY" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "Eyes_RX" -ln "Eyes_RX" -at "double";
	addAttr -ci true -sn "Eyes_RZ" -ln "Eyes_RZ" -at "double";
	addAttr -ci true -sn "LeftEye_RX" -ln "LeftEye_RX" -at "double";
	addAttr -ci true -sn "LeftEye_RZ" -ln "LeftEye_RZ" -at "double";
	addAttr -ci true -sn "RightEye_RX" -ln "RightEye_RX" -at "double";
	addAttr -ci true -sn "RightEye_RZ" -ln "RightEye_RZ" -at "double";
	addAttr -ci true -sn "RightEye_unoffset_RX" -ln "RightEye_unoffset_RX" -at "double";
	addAttr -ci true -sn "RightEye_unoffset_RZ" -ln "RightEye_unoffset_RZ" -at "double";
	addAttr -ci true -sn "LeftEye_unoffset_RX" -ln "LeftEye_unoffset_RX" -at "double";
	addAttr -ci true -sn "LeftEye_unoffset_RZ" -ln "LeftEye_unoffset_RZ" -at "double";
	addAttr -ci true -sn "LeftEye_convergence_RX" -ln "LeftEye_convergence_RX" -at "double";
	addAttr -ci true -sn "RightEye_convergence_RX" -ln "RightEye_convergence_RX" -at "double";
	addAttr -ci true -sn "LeftEye_convergence_RZ" -ln "LeftEye_convergence_RZ" -at "double";
	addAttr -ci true -sn "RightEye_convergence_RZ" -ln "RightEye_convergence_RZ" -at "double";
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
	setAttr -k on ".NL_61";
	setAttr -k on ".NR_61";
	setAttr -k on ".NL_62";
	setAttr -k on ".NR_62";
	setAttr -k on ".NL_63";
	setAttr -k on ".NR_63";
	setAttr -k on ".NL_64";
	setAttr -k on ".NR_64";
	setAttr -k on ".Eyes_TX";
	setAttr -k on ".Eyes_TY";
	setAttr -k on ".LeftEye_TX";
	setAttr -k on ".LeftEye_TY";
	setAttr -k on ".RightEye_TX";
	setAttr -k on ".RightEye_TY";
	setAttr -k on ".Eyes_RX";
	setAttr -k on ".Eyes_RZ";
	setAttr -k on ".LeftEye_RX";
	setAttr -k on ".LeftEye_RZ";
	setAttr -k on ".RightEye_RX";
	setAttr -k on ".RightEye_RZ";
	setAttr -k on ".RightEye_unoffset_RX";
	setAttr -k on ".RightEye_unoffset_RZ";
	setAttr -k on ".LeftEye_unoffset_RX";
	setAttr -k on ".LeftEye_unoffset_RZ";
	setAttr -k on ".LeftEye_convergence_RX";
	setAttr -k on ".RightEye_convergence_RX";
	setAttr -k on ".LeftEye_convergence_RZ";
	setAttr -k on ".RightEye_convergence_RZ";
createNode transform -n "gaze_output" -p "asset_lookat";
	rename -uid "058872A6-4046-F9E4-BF97-6CBA1199270C";
	addAttr -ci true -sn "NL_61" -ln "NL_61" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "NL_62" -ln "NL_62" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "NL_63" -ln "NL_63" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "NL_64" -ln "NL_64" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "NR_61" -ln "NR_61" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "NR_62" -ln "NR_62" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "NR_63" -ln "NR_63" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "NR_64" -ln "NR_64" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "eyes_aim_val" -ln "eyes_aim_val" -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "Eyes_TX" -ln "Eyes_TX" -min -10 -max 10 -at "double";
	addAttr -ci true -k true -sn "Eyes_TY" -ln "Eyes_TY" -min -10 -max 10 -at "double";
	addAttr -ci true -k true -sn "LeftEye_TX" -ln "LeftEye_TX" -min -10 -max 10 -at "double";
	addAttr -ci true -k true -sn "LeftEye_TY" -ln "LeftEye_TY" -min -10 -max 10 -at "double";
	addAttr -ci true -k true -sn "RightEye_TX" -ln "RightEye_TX" -min -10 -max 10 -at "double";
	addAttr -ci true -k true -sn "RightEye_TY" -ln "RightEye_TY" -min -10 -max 10 -at "double";
	addAttr -ci true -k true -sn "Eyes_RX" -ln "Eyes_RX" -at "double";
	addAttr -ci true -k true -sn "Eyes_RZ" -ln "Eyes_RZ" -at "double";
	addAttr -ci true -k true -sn "LeftEye_RX" -ln "LeftEye_RX" -at "double";
	addAttr -ci true -k true -sn "LeftEye_RZ" -ln "LeftEye_RZ" -at "double";
	addAttr -ci true -k true -sn "RightEye_RX" -ln "RightEye_RX" -at "double";
	addAttr -ci true -k true -sn "RightEye_RZ" -ln "RightEye_RZ" -at "double";
	addAttr -ci true -sn "RightEye_unoffset_RX" -ln "RightEye_unoffset_RX" -at "double";
	addAttr -ci true -sn "RightEye_unoffset_RZ" -ln "RightEye_unoffset_RZ" -at "double";
	addAttr -ci true -sn "LeftEye_unoffset_RX" -ln "LeftEye_unoffset_RX" -at "double";
	addAttr -ci true -sn "LeftEye_unoffset_RZ" -ln "LeftEye_unoffset_RZ" -at "double";
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
	setAttr -k on ".NL_61";
	setAttr -k on ".NL_62";
	setAttr -k on ".NL_63";
	setAttr -k on ".NL_64";
	setAttr -k on ".NR_61";
	setAttr -k on ".NR_62";
	setAttr -k on ".NR_63";
	setAttr -k on ".NR_64";
	setAttr -k on ".eyes_aim_val";
	setAttr -k on ".Eyes_TX";
	setAttr -k on ".Eyes_TY";
	setAttr -k on ".LeftEye_TX";
	setAttr -k on ".LeftEye_TY";
	setAttr -k on ".RightEye_TX";
	setAttr -k on ".RightEye_TY";
	setAttr -k on ".Eyes_RX";
	setAttr -k on ".Eyes_RZ";
	setAttr -k on ".LeftEye_RX";
	setAttr -k on ".LeftEye_RZ";
	setAttr -k on ".RightEye_RX";
	setAttr -k on ".RightEye_RZ";
	setAttr -k on ".RightEye_unoffset_RX";
	setAttr -k on ".RightEye_unoffset_RZ";
	setAttr -k on ".LeftEye_unoffset_RX";
	setAttr -k on ".LeftEye_unoffset_RZ";
createNode transform -n "lookat_custom_range_plug" -p "asset_lookat";
	rename -uid "A16757B7-4D77-C9EA-0F01-DEA106169697";
	addAttr -ci true -sn "NL_61" -ln "NL_61" -at "double";
	addAttr -ci true -sn "NL_61_Min" -ln "NL_61_Min" -at "double";
	addAttr -ci true -sn "NL_61_Max" -ln "NL_61_Max" -at "double";
	addAttr -ci true -sn "NL_62" -ln "NL_62" -at "double";
	addAttr -ci true -sn "NL_62_Min" -ln "NL_62_Min" -at "double";
	addAttr -ci true -sn "NL_62_Max" -ln "NL_62_Max" -at "double";
	addAttr -ci true -sn "NL_63" -ln "NL_63" -at "double";
	addAttr -ci true -sn "NL_63_Min" -ln "NL_63_Min" -at "double";
	addAttr -ci true -sn "NL_63_Max" -ln "NL_63_Max" -at "double";
	addAttr -ci true -sn "NL_64" -ln "NL_64" -at "double";
	addAttr -ci true -sn "NL_64_Min" -ln "NL_64_Min" -at "double";
	addAttr -ci true -sn "NL_64_Max" -ln "NL_64_Max" -at "double";
	addAttr -ci true -sn "NR_61" -ln "NR_61" -at "double";
	addAttr -ci true -sn "NR_61_Min" -ln "NR_61_Min" -at "double";
	addAttr -ci true -sn "NR_61_Max" -ln "NR_61_Max" -at "double";
	addAttr -ci true -sn "NR_62" -ln "NR_62" -at "double";
	addAttr -ci true -sn "NR_62_Min" -ln "NR_62_Min" -at "double";
	addAttr -ci true -sn "NR_62_Max" -ln "NR_62_Max" -at "double";
	addAttr -ci true -sn "NR_63" -ln "NR_63" -at "double";
	addAttr -ci true -sn "NR_63_Min" -ln "NR_63_Min" -at "double";
	addAttr -ci true -sn "NR_63_Max" -ln "NR_63_Max" -at "double";
	addAttr -ci true -sn "NR_64" -ln "NR_64" -at "double";
	addAttr -ci true -sn "NR_64_Min" -ln "NR_64_Min" -at "double";
	addAttr -ci true -sn "NR_64_Max" -ln "NR_64_Max" -at "double";
	addAttr -ci true -sn "Drivers" -ln "Drivers" -at "double";
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
	setAttr -l on -k on ".NL_61";
	setAttr -k on ".NL_61_Min";
	setAttr -k on ".NL_61_Max" 30;
	setAttr -l on -k on ".NL_62";
	setAttr -k on ".NL_62_Min";
	setAttr -k on ".NL_62_Max" -30;
	setAttr -l on -k on ".NL_63";
	setAttr -k on ".NL_63_Min";
	setAttr -k on ".NL_63_Max" -15;
	setAttr -l on -k on ".NL_64";
	setAttr -k on ".NL_64_Min";
	setAttr -k on ".NL_64_Max" 40;
	setAttr -l on -k on ".NR_61";
	setAttr -k on ".NR_61_Min";
	setAttr -k on ".NR_61_Max" 30;
	setAttr -l on -k on ".NR_62";
	setAttr -k on ".NR_62_Min";
	setAttr -k on ".NR_62_Max" -30;
	setAttr -l on -k on ".NR_63";
	setAttr -k on ".NR_63_Min";
	setAttr -k on ".NR_63_Max" -15;
	setAttr -l on -k on ".NR_64";
	setAttr -k on ".NR_64_Min";
	setAttr -k on ".NR_64_Max" 40;
	setAttr -l on -k on ".Drivers";
createNode transform -n "grp_controls_lookat" -p "asset_lookat";
	rename -uid "29124373-4E96-F79E-4D7C-379CE227EB5F";
createNode transform -n "lookat_rig_grp" -p "grp_controls_lookat";
	rename -uid "FD9ADDF8-48F6-81AD-92F0-22AF1E4B4FBE";
createNode transform -n "lookat_ctl_grp" -p "grp_controls_lookat";
	rename -uid "883F8029-45E7-0DE4-8D4F-02ACE6BB8651";
createNode transform -n "lookat_system_orient" -p "lookat_ctl_grp";
	rename -uid "D67B36F0-4253-5285-CF8C-7DAA4C9E02E4";
createNode transform -n "EyeCenter_loc_grp" -p "lookat_system_orient";
	rename -uid "11D6E9ED-484C-C958-6E3C-4BAB1708F514";
createNode transform -n "EyeCenter_loc" -p "EyeCenter_loc_grp";
	rename -uid "AAB01FFF-4121-DB29-10CF-859267CD2124";
	setAttr ".ro" 5;
createNode locator -n "EyeCenter_locShape" -p "EyeCenter_loc";
	rename -uid "C26B7572-44CA-3811-7AF4-EFA67D055D03";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovv" no;
createNode aimConstraint -n "EyeCenter_loc_aimConstraint1" -p "EyeCenter_loc";
	rename -uid "FE138290-4042-2A61-1132-3A885BB72FCD";
	addAttr -dcb 0 -ci true -sn "w0" -ln "lookat_ctlW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".wut" 1;
	setAttr -k on ".w0";
createNode transform -n "EyeCenter_upVec_grp" -p "lookat_system_orient";
	rename -uid "AC12EF8A-455C-BDFE-1546-01B75A092FB4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 20 0 ;
createNode transform -n "EyeCenter_upVec" -p "EyeCenter_upVec_grp";
	rename -uid "829C96FC-4EEB-F332-4824-5FA35BA7F5EF";
createNode locator -n "EyeCenter_upVecShape" -p "EyeCenter_upVec";
	rename -uid "0E87D385-4D18-8C4B-FF98-48B3A9D23392";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovv" no;
createNode transform -n "WorldSpace_parent_loc_placement" -p "lookat_system_orient";
	rename -uid "B61538C2-4CFE-FDE2-551C-FFA2FA64FA2D";
	setAttr ".ro" 5;
createNode transform -n "WorldSpace_parent_loc_grp" -p "WorldSpace_parent_loc_placement";
	rename -uid "36F434CB-4830-E16D-4B80-DDB9E71C6841";
	setAttr ".ro" 5;
createNode transform -n "WorldSpace_parent_loc" -p "WorldSpace_parent_loc_grp";
	rename -uid "9CD525A3-4337-9B09-F538-1087962244B4";
	setAttr ".ro" 5;
createNode locator -n "WorldSpace_parent_locShape" -p "WorldSpace_parent_loc";
	rename -uid "9795893B-45F0-7318-EA49-4E8EB8555B29";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovv" no;
createNode transform -n "LocalSpace_parent_loc_placement" -p "lookat_system_orient";
	rename -uid "860A6FD2-4A51-801F-148C-049820105813";
	setAttr ".ro" 5;
createNode transform -n "LocalSpace_parent_loc_grp" -p "LocalSpace_parent_loc_placement";
	rename -uid "A6C2CD2A-4CFD-EE1C-F0F9-76BD98E04884";
	setAttr ".ro" 5;
createNode transform -n "LocalSpace_parent_loc" -p "LocalSpace_parent_loc_grp";
	rename -uid "069F4BF0-4EBD-8CCE-F865-CEBD761952A0";
	setAttr ".ro" 5;
createNode locator -n "LocalSpace_parent_locShape" -p "LocalSpace_parent_loc";
	rename -uid "458A64F6-4E9C-8257-3561-898DF4762BEF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovv" no;
createNode transform -n "user_defined_distance_loc" -p "LocalSpace_parent_loc";
	rename -uid "46D6D797-4FF9-FC99-DF41-7AA996D96055";
	setAttr ".t" -type "double3" 0 0 40 ;
createNode locator -n "user_defined_distance_locShape" -p "user_defined_distance_loc";
	rename -uid "FBE49A65-4498-22E7-121C-D8946E2E4581";
	setAttr -k off ".v" no;
createNode transform -n "lookat_ctl_parent_grp" -p "lookat_system_orient";
	rename -uid "BE6AA750-4033-5932-A888-2A916C261020";
createNode parentConstraint -n "lookat_ctl_parent_grp_parentConstraint1" -p "lookat_ctl_parent_grp";
	rename -uid "B1969BDD-47E0-E292-0009-F78326773ED6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "WorldSpace_parent_locW0" -dv 1 -min
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "LocalSpace_parent_locW1" -dv 1 -min
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
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" -2.4582281198311016 6.5102531881739303 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "lookat_ctl_placement" -p "lookat_ctl_parent_grp";
	rename -uid "A87777C3-4360-0C2C-92E3-B08D255B837C";
	setAttr ".t" -type "double3" 0 0 40 ;
createNode transform -n "lookat_ctl_unoffset_grp" -p "lookat_ctl_placement";
	rename -uid "61A439BC-480E-B050-EBD2-D9AED9015ABF";
createNode transform -n "lookat_ctl_offset2" -p "lookat_ctl_unoffset_grp";
	rename -uid "A532A12E-4F24-516E-4A76-F7B318CCD5DB";
createNode transform -n "lookat_ctl_offset3" -p "lookat_ctl_offset2";
	rename -uid "65AE1E76-403C-9CFE-23EF-57BCD84442B1";
createNode transform -n "lookat_ctl_offset4" -p "lookat_ctl_offset3";
	rename -uid "785E0C54-4A11-ABB1-63F0-528AA12C5D0C";
	setAttr ".ovc" 17;
createNode transform -n "lookat_ctl" -p "lookat_ctl_offset4";
	rename -uid "E3D74518-485B-EE8B-A8F4-A7B0A5B3FA1B";
	addAttr -ci true -sn "SpaceWorldHead" -ln "SpaceWorldHead" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "extendSightlineVis" -ln "extendSightlineVis" -min 0 -max 1
		-at "double";
	addAttr -ci true -sn "extentSightLineDist" -ln "extentSightLineDist" -dv 40 -min
		0 -at "double";
	addAttr -ci true -sn "convergence_enabled" -ln "convergence_enabled" -min 0 -max
		1 -at "double";
	addAttr -ci true -sn "convergence_offset" -ln "convergence_offset" -min -10 -max
		10 -at "double";
	setAttr -k off ".v";
	setAttr -l on ".ovdt" 1;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0 7.1054273576010019e-15 ;
	setAttr ".sp" -type "double3" 0 0 7.1054273576010019e-15 ;
	setAttr -k on ".SpaceWorldHead";
	setAttr -k on ".extendSightlineVis";
	setAttr -k on ".extentSightLineDist";
	setAttr -k on ".convergence_enabled";
	setAttr -k on ".convergence_offset";
createNode nurbsCurve -n "lookat_ctlShape" -p "lookat_ctl";
	rename -uid "8746A4FB-4FFF-8E78-F249-1D8C74008274";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".clst[0].clam" yes;
	setAttr ".cc" -type "nurbsCurve"
		3 24 0 no 3
		29 0 0 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 24
		 24
		27
		-0.776465163789818 1.8382903772419361 7.1054273576010019e-15
		-1.7781621784251649 2.230812626011188 7.1054273576010019e-15
		-3.3989423871038436 2.7574359110306852 7.1054273576010019e-15
		-5.0197224318120846 2.2308122056155657 7.1054273576010019e-15
		-6.0214194790749502 0.85209423440376086 7.1054273576010019e-15
		-6.0214192575262766 -0.85209464816451508 7.1054273576010019e-15
		-5.0197220318448865 -2.2308124444325665 7.1054273576010019e-15
		-3.3989419521109001 -2.7574355985346473 7.1054273576010019e-15
		-1.7781620910815792 -2.2308121256144955 7.1054273576010019e-15
		-0.77646514934173294 -1.8382901180754225 7.1054273576010019e-15
		-0.77646514934173294 -1.8382901180754225 7.1054273576010019e-15
		-0.77646514934173294 -1.8382901180754225 7.1054273576010019e-15
		0.87216927012161694 -1.8382904047366326 7.1054273576010019e-15
		0.87216927012161694 -1.8382904047366326 7.1054273576010019e-15
		0.87216927012161694 -1.8382904047366326 7.1054273576010019e-15
		1.8738664958030045 -2.2308124444325665 7.1054273576010019e-15
		3.4946465755369958 -2.7574355985346473 7.1054273576010019e-15
		5.1154264365663158 -2.2308121256144955 7.1054273576010019e-15
		6.1171233783061663 -0.85209436150330553 7.1054273576010019e-15
		6.1171233638580818 0.85209441554196041 7.1054273576010019e-15
		5.1154263492227319 2.230812626011188 7.1054273576010019e-15
		3.4946461405440505 2.7574359110306852 7.1054273576010019e-15
		1.8738660958358087 2.2308122056155657 7.1054273576010019e-15
		0.8721690485729422 1.8382901961037625 7.1054273576010019e-15
		0.8721690485729422 1.8382901961037625 7.1054273576010019e-15
		0.8721690485729422 1.8382901961037625 7.1054273576010019e-15
		-0.776465163789818 1.8382903772419361 7.1054273576010019e-15
		;
createNode transform -n "local_text_crv_grp" -p "lookat_ctl";
	rename -uid "B8BF326B-4CBE-AD81-1E0F-75A3DF2063CA";
	setAttr ".t" -type "double3" 0 -4.5 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "local_text_crv" -p "local_text_crv_grp";
	rename -uid "B6567E6E-4833-1B03-4E12-73B4E2F412DC";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -3.1772544664687707e-16 -5.6843418860808015e-14 0 ;
	setAttr ".sp" -type "double3" -7.6181465649693969e-16 -5.6843418860808015e-14 0 ;
createNode nurbsCurve -n "local_text_crvShape" -p "local_text_crv";
	rename -uid "23E8A5B8-4D47-D00A-EAE4-F78D0392F003";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve"
		2 44 1 no 3
		47 0 0 0.10146608655259703 0.10146608655259703 1.0066512285364073 1.0066512285364073
		 3.6066512285364074 3.6066512285364074 3.7066512285364075 3.7066512285364075 3.8379017053808417
		 3.8379017053808417 4.8379017053808422 4.8379017053808422 5.8379017053808422 5.8379017053808422
		 7.8379017053808422 7.8379017053808422 8.8379017053808422 8.8379017053808422 9.8379017053808422
		 9.8379017053808422 9.969152182225276 9.969152182225276 10.069152182225276 10.069152182225276
		 11.569152182225276 11.569152182225276 11.669152182225275 11.669152182225275 12.669152182225275
		 13.669152182225275 14.669152182225275 14.669152182225275 16.700401133167521 16.700401133167521
		 17.700401133167521 17.700401133167521 18.700401133167521 19.700401133167521 19.700401133167521
		 19.925399988740878 19.925399988740878 20.925399988740878 21.925399988740878 22.925399988740878
		 22.925399988740878
		46
		-2.0800005829948041 -0.27947630429585041 -0.017046116227143086
		-2.0600005901602643 -0.28290727114208819 -0.017254495521571215
		-2.0400005973257249 -0.28633823798832597 -0.017462874815999341
		-2.0800009651938476 -0.46257490236780896 -0.02818734914057109
		-2.1200013330619698 -0.63881156674729189 -0.038911823465142839
		-2.640001332962794 -0.63880987199573003 -0.038921837000756208
		-3.1600013328636178 -0.63880817724416827 -0.038931850536369578
		-3.1600012911927959 -0.618845099865449 -0.037717131816034609
		-3.160001249521974 -0.59888202248672984 -0.036502413095699633
		-3.1337511541580936 -0.59888210803940312 -0.036501907602882654
		-3.1075010587942131 -0.5988821935920764 -0.036501402110065667
		-3.0193759348314679 -0.59888248080398321 -0.036499705102243742
		-2.981250848854168 -0.54398391380425759 -0.033158480554837201
		-2.9600010698545005 -0.51279180792570345 -0.031260081462085164
		-2.9600008328518994 -0.39925190052706128 -0.02435137453249862
		-2.9599999994354609 9.6470473234244736e-06 -5.7000125799192003e-05
		-2.9599991660190219 0.39927119462170801 0.024237374280900253
		-2.9599989055762261 0.5240405043929619 0.031829370916848704
		-2.9887486674928607 0.55585723814834198 0.033764804788534553
		-3.0287485776336944 0.59890219247405208 0.036383237582606781
		-3.1074985585448975 0.59890244913107749 0.036381721110032628
		-3.133748653908778 0.59890253468375065 0.036381215617215648
		-3.159998749272658 0.59890262023642404 0.036380710124398669
		-3.1599987076018361 0.61886569761514343 0.037595428844733644
		-3.1599986659310142 0.63882877499386259 0.038810147565068606
		-2.8599986659882313 0.63882779725257688 0.038815924604845564
		-2.5599986660454483 0.63882681951129139 0.038821701644622508
		-2.5599987077162698 0.61886374213257223 0.037606982924287533
		-2.5599987493870922 0.59890066475385284 0.036392264203952557
		-2.6549983665911929 0.59952483005805046 0.036428395354611509
		-2.731873395722566 0.56271820428349772 0.034187280244628623
		-2.7599989433778576 0.50594864686585561 0.030732403709511566
		-2.7599991660571668 0.39927054279418428 0.02424122564075154
		-2.7600000124953001 -0.0062292570368387423 -0.00043273562295163132
		-2.7600008589334335 -0.41172905686786165 -0.025106696886654799
		-2.7600010230122551 -0.49033365500800397 -0.029889650689510029
		-2.7456258648702385 -0.51965430993101625 -0.031673482142347116
		-2.7343757348798459 -0.53961772859262802 -0.032888002755804308
		-2.688750689425774 -0.55895740359944834 -0.034063900879197577
		-2.5693756989854304 -0.5589577926589705 -0.034061602098969981
		-2.5243759278793414 -0.5589579393194174 -0.034060735547411042
		-2.4793761567732524 -0.55895808597986418 -0.034059868995852095
		-2.3368758134724379 -0.55895855040809383 -0.034057124895346652
		-2.2225008068689744 -0.5146657786026696 -0.031359761185218292
		-2.1275003409978921 -0.40112557158877749 -0.024449187784455685
		-2.0800005829948041 -0.27947630429585046 -0.017046116227143086
		;
createNode nurbsCurve -n "curveShape107" -p "local_text_crv";
	rename -uid "E7F808A9-4F9C-2E93-F1DC-79AC907BBB87";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve"
		2 12 1 no 3
		15 0 0 1 2 2 3 4 4 5 6 6 7 7 8 8
		14
		-1.2881230965650572 0.67874882905148559 0.04127563133621294
		-1.0412479917063662 0.67874802445154403 0.041280385360549524
		-0.67999938392297565 0.29508169169980447 0.017941980942253417
		-0.67999998424351205 0.0074884844619601543 0.00044243184741353525
		-0.68000060149180674 -0.28821423747758951 -0.017550567186737507
		-1.0443758730061048 -0.67874122711640328 -0.04132054780064448
		-1.3025011495266465 -0.67874038585060403 -0.041325518467278402
		-1.564375872906929 -0.67873953236484141 -0.04133056133625785
		-1.9200006207888063 -0.29756803145745192 -0.018143853706450483
		-1.9199999892159481 0.0049971030431382735 0.00026671125936618412
		-1.9199993446194874 0.31380140365147124 0.019056918688445237
		-1.7143738512341189 0.50906451746663972 0.030942341798098613
		-1.5362482204972869 0.67874963772541119 0.041270853240509969
		-1.2881230965650572 0.67874882905148559 0.04127563133621294
		;
createNode nurbsCurve -n "curveShape108" -p "local_text_crv";
	rename -uid "D428AB12-4BE0-62BB-FE5E-A2B859EF9825";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve"
		2 14 1 no 3
		17 0 0 1 1 2 2 3 3 4 4 5 6 6 7 7 8 8
		16
		-1.304998520741121 0.59889657453539513 0.036416431491427037
		-1.4643735111738356 0.59889709396042212 0.036413362439229185
		-1.5606234131019321 0.47225714005195063 0.02870566779644311
		-1.679999344665261 0.31380062145844279 0.019061540320266794
		-1.6799999801460903 0.0093633106616809458 0.00053705666588404338
		-1.6800006312524445 -0.30255965914941896 -0.018442916388567557
		-1.5562509256525525 -0.47099866112078204 -0.028689730670630045
		-1.4606259542025348 -0.59888756098468432 -0.036469688566769999
		-1.3043760114536673 -0.59888807022475077 -0.036466679692988072
		-1.1375009065797186 -0.59888861409368288 -0.036463466212591999
		-0.92000066525545332 -0.31878238396555947 -0.019415255241433182
		-0.92000003498355643 -0.016840495918266862 -0.0010426137440197394
		-0.91999935262360877 0.31005501038964867 0.018848412252247759
		-1.0393740070929112 0.47100772985365924 0.028639784313184591
		-1.1356233777200941 0.59889602251849472 0.036419693114555854
		-1.304998520741121 0.59889657453539513 0.036416431491427037
		;
createNode nurbsCurve -n "curveShape109" -p "local_text_crv";
	rename -uid "19E196CC-40FE-2A2D-752E-118736393FB1";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve"
		2 40 1 no 3
		43 0 0 1.1045361017187261 1.1045361017187261 1.2045361017187262 1.2045361017187262
		 2.2045361017187259 3.2045361017187259 3.2045361017187259 4.2045361017187259 5.2045361017187259
		 6.2045361017187259 6.2045361017187259 7.2045361017187259 8.2045361017187268 9.2045361017187268
		 9.2045361017187268 10.204536101718727 11.204536101718727 11.204536101718727 11.304536101718726
		 11.304536101718726 12.304536101718726 13.304536101718726 13.304536101718726 14.304536101718726
		 14.304536101718726 15.304536101718726 15.304536101718726 16.304536101718725 17.304536101718725
		 18.304536101718725 18.304536101718725 19.304536101718725 19.304536101718725 20.304536101718725
		 20.304536101718725 21.304536101718725 21.304536101718725 22.304536101718725 22.304536101718725
		 22.404536101718726 22.404536101718726
		42
		0.52000141670876898 0.67874293612486358 0.041310450027002413
		0.54000095832591288 0.4591490197761996 0.027948929239302839
		0.56000049994305767 0.23955510342753583 0.014587408451603293
		0.54000049994687194 0.23955516861028825 0.014587023315618161
		0.5200004999506862 0.23955523379304067 0.01458663817963303
		0.46687630982749351 0.43107666601887717 0.026239352434108035
		0.26937669830704936 0.59889144342989153 0.036446748918980421
		0.13062641222685212 0.59889189563616863 0.036444077032574088
		0.015001479007124896 0.59889227247373822 0.036441850466445602
		-0.17249860238096293 0.46850948183793029 0.028504635401967696
		-0.27999961839740006 0.18278819202084939 0.011116897810854127
		-0.28000006115028064 -0.02931969551368907 -0.0017895001773421612
		-0.28000042707141048 -0.20462009749355625 -0.012456226350241059
		-0.17687561073858582 -0.46164532138418879 -0.028093760228827553
		0.029999207640276637 -0.5988924191372258 -0.036440983897256259
		0.16249878799190398 -0.59889285097159273 -0.036438432379435372
		0.27812433157250638 -0.59889322781115151 -0.036436205801553295
		0.45437416967846866 -0.50282124484654855 -0.030586962896022599
		0.55999924981839966 -0.35933721793404105 -0.021854153158445858
		0.57999924981458539 -0.35933728311679347 -0.021853768022460727
		0.59999924981077069 -0.35933734829954583 -0.021853382886475599
		0.50624930399034085 -0.52527960942605678 -0.031952506287956553
		0.25687384063905583 -0.67874546806829728 -0.04129548989612148
		0.085623669007721226 -0.67874490994042058 -0.041298787626299849
		-0.22375116880616641 -0.67874390164524812 -0.041304745195447773
		-0.39312581177732975 -0.43918642108371697 -0.026731382174556929
		-0.52000054552757335 -0.2613895736168837 -0.015915219982275439
		-0.52000004157101065 -0.019961078010151012 -0.0012247137205287847
		-0.51999963658288895 0.17405499459073537 0.010580828629639966
		-0.35812392824761519 0.49970226195092105 0.030399050742353398
		-0.074373497345872064 0.67874487327450606 0.041299004268597186
		0.093751626601615179 0.6787443253315899 0.041302241820359631
		0.22437678870381017 0.67874389960621007 0.041304757242884571
		0.35187677550586072 0.61760684517193321 0.03758715378292353
		0.38937669828416288 0.59889105233337747 0.036449059734891195
		0.40500132634252362 0.59889100141056417 0.036449360615217224
		0.42937669827653346 0.59889092196787264 0.036449830006861458
		0.44687638880326297 0.61511111280563324 0.037437141014537587
		0.47000178984635665 0.63819369786951663 0.038842126286781617
		0.4800014167163984 0.67874306649036842 0.04130967975503215
		0.50000141671258325 0.67874300130761589 0.041310064891017267
		0.52000141670876854 0.67874293612486336 0.041310450027002399
		;
createNode nurbsCurve -n "curveShape110" -p "local_text_crv";
	rename -uid "6A32D1B9-4A37-7CC5-2905-04B6543CB8E3";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve"
		2 40 1 no 3
		43 0 0 1.1484382391088734 1.1484382391088734 1.7348144931331668 1.7348144931331668
		 2.7348144931331668 2.7348144931331668 3.7348144931331668 4.7348144931331664 4.7348144931331664
		 4.834814493133166 4.834814493133166 5.8285643977642794 5.8285643977642794 5.928564397764279
		 5.928564397764279 6.928564397764279 6.928564397764279 7.928564397764279 7.928564397764279
		 10.840513152501451 10.840513152501451 10.951450819397003 10.951450819397003 13.828288143206189
		 13.828288143206189 14.828288143206189 15.828288143206189 15.828288143206189 15.928288143206188
		 15.928288143206188 17.217350476310635 17.217350476310635 17.317350476310637 17.317350476310637
		 18.317350476310637 19.317350476310637 19.317350476310637 20.317350476310637 20.317350476310637
		 20.893965060199807 20.893965060199807
		42
		1.5531250884506642 -0.19963583563698228 -0.012117278977271044
		1.3234374406726968 -0.19963508705332866 -0.012121702026196841
		1.0937497928947284 -0.1996343384696751 -0.012126125075122639
		1.0468744640176215 -0.30693553622222636 -0.01865612927677119
		0.99999913514051642 -0.41423673397477767 -0.025186133478419741
		0.96812410937189064 -0.48597881566927192 -0.029552135157698202
		0.96812403514587864 -0.52153798061513923 -0.031715848823671844
		0.96812397654539062 -0.54961148654666836 -0.033424073089576643
		1.0237491251041897 -0.59265710103125058 -0.036042242062408338
		1.1156242932652214 -0.59889595733878298 -0.036420078232910588
		1.1156242515943999 -0.61885903471750225 -0.037634796953245557
		1.1156242099235776 -0.63882211209622142 -0.038849515673580533
		0.91687422903526095 -0.63882146434268183 -0.038853342962065461
		0.71812424814694475 -0.63882081658914225 -0.038857170250550382
		0.71812428981776666 -0.61885773921042309 -0.037642451530215414
		0.71812433148858856 -0.59889466183170381 -0.036427732809880438
		0.79749935058568822 -0.58517009540364029 -0.035591072438291869
		0.82124914689797679 -0.56395907943686185 -0.034299956759845249
		0.86874935248662322 -0.52028994536462947 -0.031641841383552846
		0.92687429475275529 -0.38803516601532367 -0.02359323605250651
		1.1584380845331257 0.14535246732915985 0.0088669836993321149
		1.390001874313497 0.67874010067364332 0.041327203451170746
		1.4121894076883761 0.67874002836141889 0.041327630712047037
		1.4343769410632543 0.67873995604919424 0.041328057972923313
		1.6371880569035255 0.14129584504919945 0.0086294593865337207
		1.8399991727437959 -0.39614826595079505 -0.024069139199855857
		1.8937491234058044 -0.52029328597994273 -0.031622103168722555
		1.9806240733305494 -0.5945317866805061 -0.036137697331265026
		2.0587490355893507 -0.59889903111211051 -0.036401916669070368
		2.0587489939185293 -0.61886210849082979 -0.037616635389405337
		2.0587489522477069 -0.63882518586954895 -0.038831354109740313
		1.8009364856759884 -0.63882434562324042 -0.038836318752655849
		1.5431240191042699 -0.63882350537693189 -0.038841283395571385
		1.5431240607750922 -0.61886042799821261 -0.03762656467523641
		1.5431241024459137 -0.59889735061949334 -0.036411845954901441
		1.6193740517212039 -0.59577832069171377 -0.036220574928848392
		1.6724993314206786 -0.55772390613871592 -0.033903996084588287
		1.6724993887189337 -0.53027425589455413 -0.032233732357925815
		1.6724994655494116 -0.49346737957395226 -0.029994097613467517
		1.6349996677829397 -0.41486265921627358 -0.025211865939849806
		1.5940623781168028 -0.3072492474266279 -0.018664572458560423
		1.5531250884506642 -0.19963583563698228 -0.012117278977271044
		;
createNode nurbsCurve -n "curveShape111" -p "local_text_crv";
	rename -uid "2910EBF2-4C1D-3481-5307-75B0249ABF92";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve"
		1 3 2 no 3
		4 0 1.3640554493623607 2.7533688680683461 3.7424312011727947
		4
		1.5237498069057862 -0.11978343038347694 -0.0072589697730408645
		1.3400011253202484 0.39301923268934913 0.023940610201995741
		1.1281248737394609 -0.11978214098737405 -0.0072665882429611556
		1.5237498069057862 -0.11978343038347694 -0.0072589697730408645
		;
createNode nurbsCurve -n "curveShape112" -p "local_text_crv";
	rename -uid "045E7D0D-4BF7-93A4-D5C3-459C021EAFA7";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve"
		2 44 1 no 3
		47 0 0 0.10146608655259703 0.10146608655259703 1.0066512285364073 1.0066512285364073
		 3.6066512285364074 3.6066512285364074 3.7066512285364075 3.7066512285364075 3.8379017053808417
		 3.8379017053808417 4.8379017053808422 4.8379017053808422 5.8379017053808422 5.8379017053808422
		 7.8379017053808422 7.8379017053808422 8.8379017053808422 8.8379017053808422 9.8379017053808422
		 9.8379017053808422 9.969152182225276 9.969152182225276 10.069152182225276 10.069152182225276
		 11.569152182225276 11.569152182225276 11.669152182225275 11.669152182225275 12.669152182225275
		 13.669152182225275 14.669152182225275 14.669152182225275 16.700401133167521 16.700401133167521
		 17.700401133167521 17.700401133167521 18.700401133167521 19.700401133167521 19.700401133167521
		 19.925399988740878 19.925399988740878 20.925399988740878 21.925399988740878 22.925399988740878
		 22.925399988740878
		46
		3.1199994160134379 -0.27949325181146828 -0.016945980871009375
		3.1399994088479763 -0.28292421865770606 -0.017154360165437504
		3.1599994016825166 -0.2863551855039439 -0.01736273945986563
		3.1199990338143939 -0.46259184988342683 -0.028087213784437376
		3.0799986659462704 -0.63882851426290976 -0.038811688109009125
		2.5599986660454475 -0.6388268195113479 -0.038821701644622494
		2.0399986661446228 -0.63882512475978614 -0.038831715180235871
		2.0399987078154451 -0.61886204738106698 -0.037616996459900895
		2.0399987494862666 -0.59889897000234771 -0.036402277739565926
		2.066248844850147 -0.59889905555502099 -0.03640177224674894
		2.0924989402140275 -0.59889914110769438 -0.03640126675393196
		2.1806240641767731 -0.59889942831960108 -0.036399569746110035
		2.218749150154073 -0.54400086131987546 -0.033058345198703494
		2.2399989291537405 -0.51280875544132143 -0.031159946105951453
		2.2399991661563412 -0.39926884804267915 -0.02425123917636491
		2.2399999995727802 -7.3004682944466381e-06 4.313523033452199e-05
		2.2400008329892191 0.39925424710609003 0.024337509637033961
		2.2400010934320145 0.52402355687734392 0.031929506272982411
		2.2112513315153794 0.55584029063272422 0.03386494014466826
		2.1712514213745466 0.59888524495843432 0.036483372938740488
		2.0925014404633435 0.5988855016154595 0.036481856466166349
		2.0662513450994631 0.59888558716813289 0.036481350973349355
		2.0400012497355826 0.59888567272080606 0.036480845480532376
		2.0400012914064041 0.61884875009952545 0.037695564200867351
		2.0400013330772264 0.63881182747824461 0.038910282921202313
		2.3400013330200098 0.63881084973695912 0.038916059960979271
		2.6400013329627923 0.63880987199567341 0.038921837000756215
		2.6400012912919699 0.61884679461695424 0.03770711828042124
		2.6400012496211485 0.59888371723823486 0.036492399560086264
		2.5450016324170486 0.5995078825424327 0.036528530710745216
		2.4681266032856746 0.56270125676787996 0.034287415600762344
		2.4400010556303835 0.50593169935023763 0.030832539065645287
		2.4400008329510747 0.3992535952785663 0.024341360996885261
		2.4399999865129409 -0.0062462045524566134 -0.00033260026681792426
		2.439999140074808 -0.41174600438347952 -0.025006561530521089
		2.4399989759959864 -0.49035060252362184 -0.029789515333376315
		2.4543741341380017 -0.51967125744663412 -0.031573346786213409
		2.4656242641283947 -0.53963467610824589 -0.0327878673996706
		2.5112493095824657 -0.55897435111506621 -0.033963765523063863
		2.6306243000228102 -0.55897474017458837 -0.033961466742836274
		2.6756240711288992 -0.55897488683503527 -0.033960600191277328
		2.7206238422349882 -0.55897503349548217 -0.033959733639718388
		2.8631241855358027 -0.55897549792371182 -0.033956989539212938
		2.9774991921392662 -0.51468272611828747 -0.031259625829084585
		3.072499658010349 -0.40114251910439536 -0.024349052428321971
		3.1199994160134379 -0.27949325181146834 -0.016945980871009375
		;
createNode transform -n "world_text_crv_grp" -p "lookat_ctl";
	rename -uid "90E32777-44A7-A4B3-3BAA-63BBEBC233FC";
	setAttr ".t" -type "double3" 0 -4.5 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "world_text_crv" -p "world_text_crv_grp";
	rename -uid "B6AE204B-40F2-AFEE-183F-F3A9F14F3344";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 1.2636376320318554e-16 -5.6843418860808015e-14 0 ;
	setAttr ".sp" -type "double3" 1.2636376320318554e-16 -5.6843418860808015e-14 0 ;
createNode nurbsCurve -n "world_text_crvShape" -p "world_text_crv";
	rename -uid "32A3FB98-4854-F25A-CD26-74B9CD9BFC0A";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve"
		2 80 1 no 3
		83 0 0 0.10000000000000009 0.10000000000000009 1.1000000000000001 2.1000000000000001
		 2.1000000000000001 3.1000000000000001 3.1000000000000001 5.8414831269959695 5.8414831269959695
		 5.9836697448337652 5.9836697448337652 7.9764002930214222 7.9764002930214222 10.017342219896381
		 10.017342219896381 10.150155220583038 10.150155220583038 12.940969268794005 12.940969268794005
		 13.940969268794005 13.940969268794005 14.940969268794005 15.940969268794005 15.940969268794005
		 16.040969268794004 16.040969268794004 17.256592981314032 17.256592981314032 17.356592981314034
		 17.356592981314034 17.412842313731826 17.412842313731826 18.412842313731826 19.412842313731826
		 19.412842313731826 20.412842313731826 20.412842313731826 22.348669427005998 22.348669427005998
		 23.966946583593359 23.966946583593359 24.374590883689415 24.374590883689415 24.603858751195474
		 24.603858751195474 25.603858751195474 25.603858751195474 26.603858751195474 26.603858751195474
		 27.603858751195474 27.603858751195474 28.603858751195474 28.603858751195474 28.703858751195476
		 28.703858751195476 29.974170798193263 29.974170798193263 30.074170798193265 30.074170798193265
		 30.158545559771049 30.158545559771049 31.158545559771049 32.158545559771049 32.158545559771049
		 33.158545559771049 33.158545559771049 34.978832660639199 34.978832660639199 36.822528332033137
		 36.822528332033137 37.822528332033137 37.822528332033137 38.822528332033137 39.822528332033137
		 39.822528332033137 40.822528332033137 40.822528332033137 40.922528332033139 40.922528332033139
		 41.87252909498423 41.87252909498423
		82
		-1.6799983610328451 0.63882395146919202 0.038838647633844994
		-1.679998402703667 0.61886087409047286 0.037623928913510032
		-1.6799984443744889 0.59889779671175347 0.036409210193175057
		-1.729373587418402 0.5988979576321396 0.036408259385957029
		-1.7912489967259502 0.56271513865913314 0.034205393659859307
		-1.8193739183935695 0.51343184948790954 0.031206043607403797
		-1.8381242735150058 0.48036755916720453 0.029193773957064809
		-1.8787495434856707 0.35559899103251724 0.021601032084302002
		-2.058125613449878 -0.16156917376133634 -0.0098712457502828053
		-2.2375016834140853 -0.67873733855519003 -0.041343523584867613
		-2.2659390069762209 -0.67873724587403894 -0.041344071196698945
		-2.2943763305383564 -0.67873715319288797 -0.041344618808530277
		-2.4203131332752261 -0.30130953499435054 -0.018381251359374289
		-2.5462499360120963 0.076118083204187004 0.0045821160897817001
		-2.7000006284534392 -0.30130862345431331 -0.018386637245324512
		-2.8537513208947818 -0.67873533011281351 -0.041355390580430723
		-2.8803139210270472 -0.67873524354164416 -0.041355902091089296
		-2.9068765211593122 -0.67873515697047482 -0.041356413601747875
		-3.0981252950493934 -0.15532753200256916 -0.0095116859586290119
		-3.2893740689394741 0.3680800929653365 0.022333041684489852
		-3.3312488266814935 0.49784038471200986 0.030227916255357118
		-3.3424989488597596 0.5215463282637558 0.031670163033429177
		-3.3612485425625573 0.56084868844160063 0.034061278876114834
		-3.4262488445907633 0.59890348798212578 0.036375582999760125
		-3.481248463104726 0.59890366723345156 0.03637452388314702
		-3.4812484214339041 0.61886674461217095 0.037589242603481995
		-3.4812483797630822 0.63882982199089011 0.038803961323816957
		-3.2381236373054461 0.63882902961389565 0.038808643128177639
		-2.9949988948478103 0.63882823723690119 0.038813324932538321
		-2.9949989365186322 0.61886515985818202 0.037598606212203359
		-2.9949989781894542 0.59890208247946264 0.036383887491868383
		-3.0062488446708668 0.59890211914432578 0.036383670855447858
		-3.0174987111522795 0.59890215580918893 0.03638345421902732
		-3.0674988637329625 0.59890231876656719 0.036382491376126092
		-3.1199985521826474 0.5471236862865767 0.033230829786810634
		-3.1199986290131263 0.51031680996597495 0.030991195042352343
		-3.1199987084480707 0.4722622222706383 0.028675639219409382
		-3.0787495836260277 0.336263375689273 0.020401147208682031
		-2.9487501909021452 -0.027751358471315712 -0.0017459904148231856
		-2.8187507981782631 -0.39176609263190448 -0.023893128038328396
		-2.7053127667637353 -0.089201023222376774 -0.0054803600958548485
		-2.5918747353492075 0.21336404618715099 0.012932407846618699
		-2.618124364709411 0.29040909066055365 0.017619954814427921
		-2.6443739940696145 0.36745413513395642 0.02230750178223715
		-2.6590616276797716 0.41081154404122922 0.024945439350185034
		-2.6737492612899287 0.45416895294850224 0.027583376918132937
		-2.6937488571372357 0.50158144113610637 0.030467955699602506
		-2.7174991440062306 0.5377645391750403 0.032669172548857442
		-2.7299986866159855 0.55585639484654514 0.033769787484974861
		-2.747498927602142 0.56833295639560033 0.034528624199853142
		-2.7706236336392114 0.5858009910086035 0.035591073990114117
		-2.7937489708728855 0.59328733462571859 0.03604615514074419
		-2.8112486158227297 0.59890148361174411 0.036387425935710468
		-2.8493735872047923 0.59890160786627256 0.036386691770789764
		-2.8493735455339699 0.61886468524499194 0.03760141049112474
		-2.8493735038631485 0.6388277626237111 0.038816129211459702
		-2.5953110945120463 0.63882693459935513 0.038821021640276135
		-2.3412486851609442 0.63882610657499916 0.038825914069092568
		-2.3412487268317665 0.61886302919628 0.037611195348757592
		-2.341248768502588 0.59889995181756062 0.036396476628422617
		-2.3581237208149264 0.59890000681535271 0.036396151670853416
		-2.3749986731272643 0.59890006181314459 0.036395826713284202
		-2.4274988638550252 0.59890023291849115 0.036394815727650243
		-2.4762490911204056 0.55398400077957777 0.033660792272345919
		-2.4762491705553504 0.51592941308424134 0.031345236449402958
		-2.476249269523791 0.4685169900783952 0.028460272537825071
		-2.434374488341577 0.34998610070433345 0.021248687673319722
		-2.3190624741827506 0.0053106361034160887 0.00027802539822908978
		-2.2037504600239242 -0.33936482849750127 -0.020692636876861539
		-2.0821872108718846 0.0081172146875063689 0.00045340928410199377
		-1.9606239617198455 0.35559925787251401 0.021599455445065537
		-1.9193736978379361 0.47288216495587099 0.02873671995344268
		-1.9193736027761947 0.51842302089961523 0.031507802247293576
		-1.9193735571993096 0.5402573607234018 0.032836384049935996
		-1.9462488878454525 0.57831203600939807 0.035151422338501978
		-1.9668735765711729 0.58579837147655578 0.035606551643618409
		-2.0024984824605356 0.59889884778375979 0.03640299987468025
		-2.0599987494824519 0.59889903518504317 0.036401892603580802
		-2.05999870781163 0.61886211256376256 0.037616611323915777
		-2.0599986661408085 0.63882518994248172 0.038831330044250739
		-1.8699985135868264 0.63882457070583687 0.038834988839047874
		-1.6799983610328451 0.63882395146919202 0.038838647633844994
		;
createNode nurbsCurve -n "curveShape99" -p "world_text_crv";
	rename -uid "A0FC9D18-4995-C2A1-D13F-E188B943DC7B";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve"
		2 12 1 no 3
		15 0 0 1 2 2 3 4 4 5 6 6 7 7 8 8
		14
		-0.96687338273298584 0.67874778205445785 0.041281817577464575
		-0.7199982778742946 0.67874697745451629 0.041286571601801172
		-0.35874967009090453 0.29508064470277673 0.017948167183505059
		-0.35875027041144092 0.0074874374649324116 0.00044861808866517722
		-0.35875088765973562 -0.28821528447461725 -0.017544380945485862
		-0.72312615917403322 -0.67874227411343102 -0.041314361559392832
		-0.9812514356945754 -0.67874143284763178 -0.04131933222602676
		-1.2431261590748579 -0.67874057936186916 -0.041324375095006201
		-1.5987509069567349 -0.29756907845447966 -0.018137667465198837
		-1.5987502753838767 0.0049960560461105308 0.00027289750061783302
		-1.5987496307874161 0.3138003566544435 0.019063104929696886
		-1.3931241374020473 0.50906347046961198 0.030948528039350262
		-1.2149985066652156 0.67874859072838345 0.041277039481761618
		-0.96687338273298584 0.67874778205445785 0.041281817577464575
		;
createNode nurbsCurve -n "curveShape100" -p "world_text_crv";
	rename -uid "C4E54286-41CC-A9F5-1034-889866C1AF70";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve"
		2 14 1 no 3
		17 0 0 1 1 2 2 3 3 4 4 5 6 6 7 7 8 8
		16
		-0.98374880690904964 0.59889552753836739 0.036422617732678686
		-1.1431237973417638 0.59889604696339438 0.036419548680480834
		-1.2393736992698607 0.47225609305492289 0.028711854037694745
		-1.3587496308331897 0.31379957446141493 0.019067726561518436
		-1.358750266314019 0.0093622636646530921 0.00054324290713568535
		-1.3587509174203731 -0.3025607061464467 -0.018436730147315911
		-1.2350012118204816 -0.47099970811780978 -0.028683544429378399
		-1.1393762403704635 -0.59888860798171206 -0.036463502325518357
		-0.98312629762159576 -0.59888911722177851 -0.03646049345173643
		-0.81625119274764701 -0.59888966109071062 -0.036457279971340351
		-0.59875095142338219 -0.31878343096258721 -0.019409069000181536
		-0.5987503211514853 -0.016841542915294605 -0.0010364275027680905
		-0.59874963879153764 0.31005396339262092 0.018854598493499408
		-0.71812429326084004 0.4710066828566315 0.02864597055443624
		-0.81437366388802301 0.59889497552146698 0.036425879355807503
		-0.98374880690904964 0.59889552753836739 0.036422617732678686
		;
createNode nurbsCurve -n "curveShape101" -p "world_text_crv";
	rename -uid "89C11B2F-4C0B-F616-AED7-E1A6EB07AB75";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve"
		2 54 1 no 3
		57 0 0 0.89843747615777803 0.89843747615777803 2.7819080123223934 2.7819080123223934
		 3.7819080123223934 3.7819080123223934 4.7819080123223934 5.7819080123223934 5.7819080123223934
		 6.6819080123223937 6.6819080123223937 7.6819080123223937 7.6819080123223937 8.6819080123223937
		 8.6819080123223937 8.8178445347913037 8.8178445347913037 8.9178445347913033 8.9178445347913033
		 10.417844534791303 10.417844534791303 10.517844534791303 10.517844534791303 10.649095011635737
		 10.649095011635737 11.649095011635737 11.649095011635737 12.649095011635737 12.649095011635737
		 14.649095011635737 14.649095011635737 15.649095011635737 15.649095011635737 16.649095011635737
		 16.649095011635737 16.780345488480172 16.780345488480172 16.880345488480174 16.880345488480174
		 18.094408203060169 18.094408203060169 19.094408203060169 20.094408203060169 21.094408203060169
		 21.094408203060169 22.094408203060169 23.094408203060169 23.094408203060169 24.300297782264558
		 24.300297782264558 25.300297782264558 26.300297782264558 26.300297782264558 26.400297782264559
		 26.400297782264559
		56
		1.0449984374490651 -0.63882188191710965 -0.03885087569990367
		0.86531094225177974 -0.63882129629083428 -0.038854335905928239
		0.68562344705449529 -0.63882071066455892 -0.038857796111952815
		0.45781175812960218 -0.33937380751208784 -0.020641402242927688
		0.2300000692047095 -0.039926904359616766 -0.002425008373902561
		0.19125008438045032 -0.04179773589612823 -0.0025395991213943217
		0.16624970290967056 -0.041797654416444563 -0.0025400805487217279
		0.15625016068223507 -0.041797621826560216 -0.0025402731078990951
		0.13374981996299917 -0.040549837120110288 -0.0024647853140091075
		0.12124963052857129 -0.039926549926970867 -0.0024271025592695963
		0.12124925549117371 -0.21959424633544389 -0.01335957104228434
		0.12124888045377658 -0.39926194274391696 -0.024292039525299083
		0.12124861740778581 -0.52527835465583583 -0.031959920168893097
		0.14999899228976199 -0.55584737703847054 -0.033819432950340692
		0.18874888335578532 -0.59889293652426612 -0.036437926886618385
		0.26687385473021896 -0.5988931911442994 -0.036436422449727425
		0.29406115921881559 -0.59889327975146622 -0.036435898909262465
		0.32124846370741267 -0.59889336835863305 -0.036435375368797505
		0.32124842203659076 -0.61885644573735232 -0.037650094089132474
		0.32124838036576886 -0.63881952311607149 -0.038864812809467443
		0.021248380422985491 -0.63881854537478588 -0.038870589849244387
		-0.27875161951979743 -0.63881756763350017 -0.038876366889021338
		-0.27875157784897553 -0.61885449025478101 -0.037661648168686362
		-0.27875153617815362 -0.59889141287606174 -0.036446929448351394
		-0.25250144081427317 -0.59889149842873501 -0.036446423955534407
		-0.22625134545039316 -0.5988915839814084 -0.036445918462717428
		-0.13812622148764753 -0.59889187119331511 -0.036444221454895502
		-0.10000113551034762 -0.5439933041935896 -0.033102996907488962
		-0.078751357812912648 -0.51342505400240279 -0.031242558353979249
		-0.07875111950807856 -0.39926129091639317 -0.024295890885150377
		-0.078750286091640032 2.566579914153877e-07 -1.5164784509455465e-06
		-0.078749452675201503 0.39926180423237612 0.024292857928248493
		-0.078749189627939309 0.52527882537836468 0.031960775642681613
		-0.10749895414904032 0.55584784775901008 0.033820288435882792
		-0.14749886428987358 0.59889280208472018 0.036438721229955021
		-0.22624884520107713 0.59889305874174537 0.036437204757380881
		-0.25249894056495714 0.59889314429441876 0.036436699264563888
		-0.2787490359288376 0.59889322984709215 0.036436193771746908
		-0.27874899425801569 0.61885630722581153 0.037650912492081884
		-0.27874895258719379 0.63881938460453069 0.038865631212416846
		-0.03593640971750478 0.63881859324503765 0.03887030700481274
		0.20687613315218467 0.63881780188554482 0.038874982797208621
		0.41937632384942924 0.63881710931817914 0.038879074870723632
		0.6206262269886258 0.58329451570911961 0.03550453645105224
		0.76125062008964228 0.43419498504934584 0.026434823837194352
		0.76125040522373144 0.33126001510187819 0.020171409003888294
		0.76125017473229573 0.22083938614007259 0.0134525047705134
		0.60437488387115046 0.058639855637908078 0.0035798919413991964
		0.44000035718584307 0.024952793473117296 0.0015268945672428091
		0.58062465327176849 -0.17062337666145172 -0.010370841149329478
		0.7212489493576939 -0.36619954679602063 -0.022268576865901765
		0.81124882325669034 -0.49970312951329987 -0.030390287936371344
		0.94062378397526114 -0.58704212892798024 -0.035702197937460621
		1.0449985207907089 -0.59889572715967121 -0.036421438259233725
		1.0449984791198874 -0.61885880453839037 -0.037636156979568694
		1.0449984374490651 -0.63882188191710965 -0.03885087569990367
		;
createNode nurbsCurve -n "curveShape102" -p "world_text_crv";
	rename -uid "4F19C80D-44AF-85F0-B096-6A8439EEC76F";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve"
		2 12 1 no 3
		15 0 0 1 2 2 3 4 4 5 6 6 7 7 8.3000000000000007 8.3000000000000007
		14
		0.12124979721185891 0.039925759587906118 0.0024317723220702928
		0.1381250547046351 0.039925704589119593 0.0024320972855162992
		0.16312482321134381 0.038678520970760188 0.0023566946934445512
		0.17124994718934738 0.038678494489862936 0.0023568511573259648
		0.34500015696775987 0.038677928214017832 0.0023601970302370712
		0.52125010706322161 0.18840028182407043 0.011473972168929848
		0.52125034927475511 0.30443561197218183 0.0185345212554857
		0.52125058497512278 0.41735166368345689 0.025405267645829913
		0.37875114763700068 0.55896493220579879 0.034019417681730293
		0.26187619534373496 0.55896531311735265 0.03401716704423545
		0.21000101415274397 0.5589654821857073 0.034016168094284663
		0.12125088065322887 0.55896577143460613 0.034014459050779558
		0.12125033893254411 0.29944576551125612 0.018223115686424922
		0.12124979721185891 0.039925759587906118 0.0024317723220702928
		;
createNode nurbsCurve -n "curveShape103" -p "world_text_crv";
	rename -uid "7D4A2848-497D-E0C1-F054-2C91383BC6F9";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve"
		2 44 1 no 3
		47 0 0 0.10146608655259703 0.10146608655259703 1.0066512285364073 1.0066512285364073
		 3.6066512285364074 3.6066512285364074 3.7066512285364075 3.7066512285364075 3.8379017053808417
		 3.8379017053808417 4.8379017053808422 4.8379017053808422 5.8379017053808422 5.8379017053808422
		 7.8379017053808422 7.8379017053808422 8.8379017053808422 8.8379017053808422 9.8379017053808422
		 9.8379017053808422 9.969152182225276 9.969152182225276 10.069152182225276 10.069152182225276
		 11.569152182225276 11.569152182225276 11.669152182225275 11.669152182225275 12.669152182225275
		 13.669152182225275 14.669152182225275 14.669152182225275 16.700401133167521 16.700401133167521
		 17.700401133167521 17.700401133167521 18.700401133167521 19.700401133167521 19.700401133167521
		 19.925399988740878 19.925399988740878 20.925399988740878 21.925399988740878 22.925399988740878
		 22.925399988740878
		46
		2.081249130104891 -0.27948986638133444 -0.016965983876746544
		2.1012491229394303 -0.28292083322757222 -0.017174363171174673
		2.1212491157739706 -0.28635180007381 -0.017382742465602802
		2.081248747905847 -0.46258846445329294 -0.028107216790174548
		2.0412483800377244 -0.63882512883277587 -0.038831691114746297
		1.5212483801369014 -0.63882343408121411 -0.038841704650359667
		1.0012483802360768 -0.63882173932965236 -0.038851718185973036
		1.0012484219068991 -0.61885866195093309 -0.037636999465638067
		1.0012484635777206 -0.59889558457221381 -0.036422280745303091
		1.027498558941601 -0.5988956701248872 -0.036421775252486112
		1.0537486543054815 -0.59889575567756048 -0.036421269759669132
		1.1418737782682271 -0.59889604288946718 -0.0364195727518472
		1.179998864245527 -0.54399747588974168 -0.033078348204440666
		1.2012486432451945 -0.51280537001118753 -0.031179949111688622
		1.2012488802477952 -0.39926546261254525 -0.024271242182102082
		1.2012497136642342 -3.9150381606622986e-06 2.313222459734976e-05
		1.2012505470806731 0.39925763253622404 0.024317506631296795
		1.2012508075234685 0.52402694230747793 0.031909503267245246
		1.1725010456068334 0.55584367606285801 0.033844937138931094
		1.1325011354660006 0.5988886303885681 0.036463369933003323
		1.0537511545547975 0.59888888704559329 0.036461853460429169
		1.0275010591909171 0.59888897259826668 0.03646134796761219
		1.0012509638270366 0.59888905815094007 0.03646084247479521
		1.0012510054978581 0.61885213552965945 0.037675561195130186
		1.0012510471686804 0.63881521290837862 0.038890279915465148
		1.3012510471114638 0.6388142351670929 0.038896056955242106
		1.6012510470542463 0.63881325742580719 0.03890183399501905
		1.6012510053834239 0.61885018004708803 0.037687115274684074
		1.6012509637126024 0.59888710266836864 0.036472396554349099
		1.5062513465085017 0.59951126797256649 0.036508527705008051
		1.4293763173771277 0.56270464219801375 0.034267412595025165
		1.4012507697218375 0.50593508478037141 0.030812536059908108
		1.4012505470425287 0.39925698070870008 0.024321357991148082
		1.4012497006043949 -0.0062428191223227181 -0.00035260327255508955
		1.401248854166262 -0.41174261895334563 -0.025026564536258261
		1.4012486900874404 -0.49034721709348794 -0.029809518339113487
		1.4156238482294556 -0.51966787201650022 -0.031593349791950581
		1.4268739782198478 -0.539631290678112 -0.032807870405407766
		1.4724990236739197 -0.55897096568493232 -0.033983768528801035
		1.5918740141142642 -0.55897135474445447 -0.03398146974857344
		1.6368737852203532 -0.55897150140490137 -0.0339806031970145
		1.6818735563264422 -0.55897164806534827 -0.03397973664545556
		1.8243738996272567 -0.55897211249357792 -0.03397699254495011
		1.9387489062307202 -0.51467934068815369 -0.031279628834821757
		2.0337493721018021 -0.40113913367426146 -0.024369055434059143
		2.081249130104891 -0.2794898663813345 -0.016965983876746544
		;
createNode nurbsCurve -n "curveShape104" -p "world_text_crv";
	rename -uid "D2E8AE6B-47DB-3200-F878-908E17466238";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve"
		2 29 1 no 3
		32 0 0 0.10000000000000001 0.10000000000000001 0.23125047684443428 0.23125047684443428
		 1.2312504768444343 1.2312504768444343 2.2312504768444343 2.2312504768444343 4.2312504768444343
		 4.2312504768444343 5.2312504768444343 5.2312504768444343 6.2312504768444343 6.2312504768444343
		 6.362500953688869 6.362500953688869 6.4625009536888687 6.4625009536888687 7.7953139543755245
		 7.7953139543755245 8.7953139543755245 9.7953139543755245 10.795313954375525 10.795313954375525
		 11.795313954375525 11.795313954375525 12.795313954375525 12.795313954375525 14.259377431906614
		 14.259377431906614
		31
		2.1612483800148379 -0.63882551992929015 -0.038829380298835516
		2.1612484216856602 -0.61886244255057088 -0.037614661578500547
		2.1612484633564817 -0.59889936517185172 -0.036399942858165571
		2.1874985587203621 -0.598899450724525 -0.036399437365348591
		2.2137486540842426 -0.59889953627719827 -0.036398931872531612
		2.3018737780469882 -0.59889982348910509 -0.036397234864709679
		2.3387488436485162 -0.54462510810276266 -0.033093994927911839
		2.3612486443261886 -0.5121852949234581 -0.031119650685308774
		2.3612488800265563 -0.39926924321218316 -0.024248904294964561
		2.3612497134429953 -7.6956377984549462e-06 4.54701117348702e-05
		2.3612505468594343 0.39925385193658602 0.024339844518434309
		2.3612508073022296 0.52402316170783991 0.031931841154382759
		2.3325010453855954 0.55583989546322021 0.033867275026068608
		2.2925011352447617 0.59888484978893031 0.036485707820140836
		2.2137511543335586 0.5988851064459555 0.036484191347566697
		2.1875010589696782 0.59888519199862889 0.036483685854749717
		2.1612509636057977 0.59888527755130228 0.036483180361932724
		2.1612510052766192 0.61884835493002166 0.0376978990822677
		2.1612510469474415 0.63881143230874082 0.038912617802602661
		2.4278136470339335 0.63881056354454291 0.038917750945082791
		2.6943762471204247 0.63880969478034499 0.038922884087562934
		2.9881264568759507 0.63880873740798561 0.038928540776384815
		3.2950009856833722 0.50904819122465872 0.031038806323752013
		3.4812501416577017 0.20523412910156646 0.012555869783432802
		3.4812497275539487 0.0068510666891088423 0.00048460365856774906
		3.4812491702071027 -0.2601549028656141 -0.015762247641275276
		3.3149993114949989 -0.43919850637380398 -0.026659975553426536
		3.1287484942729771 -0.63882867314530933 -0.038810749343351068
		2.7468737709155819 -0.63882742856303254 -0.038818103028241291
		2.4540610754652104 -0.63882647424616135 -0.038823741663538407
		2.1612483800148379 -0.63882551992929015 -0.038829380298835516
		;
createNode nurbsCurve -n "curveShape105" -p "world_text_crv";
	rename -uid "C7B7247E-4DB1-42DA-8410-0383CD207318";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".cc" -type "nurbsCurve"
		2 11 1 no 3
		14 0 0 1 1 2 3 3 4 5 5 6 6 8.6687495231555651 8.6687495231555651
		13
		2.5612486000133918 -0.53339643088740085 -0.032406420588857551
		2.67624908066567 -0.55897488887202751 -0.033960588155594149
		2.7543740520401032 -0.55897514349206068 -0.033959083718703181
		2.9643735942293956 -0.55897582790946876 -0.03395503979967452
		3.2412491754618094 -0.2576586979231163 -0.015615027116127517
		3.2412497132751596 -1.0563678903063867e-05 6.2416095080577993e-05
		3.2412502549964808 0.25950974686148165 0.015853777994854754
		2.964375927795424 0.55895650529880814 0.034069208539083892
		2.746876271164898 0.55895721416012134 0.034065020191857004
		2.665626252106617 0.55895747896511483 0.03406345557655012
		2.5612508241931149 0.53213263381609122 0.03242917952438433
		2.5612497121032538 -0.00063189853565481791 1.1379467763396323e-05
		2.5612486000133918 -0.53339643088740085 -0.032406420588857551
		;
createNode transform -n "Eyes_world_translate_vals" -p "lookat_ctl_placement";
	rename -uid "20948F58-457B-1638-5C03-F0981BA01A6A";
createNode transform -n "calculate_plot_to_lookat" -p "lookat_system_orient";
	rename -uid "3502FB71-4E93-6899-AAAF-8AA602C78C8F";
	setAttr ".v" no;
createNode transform -n "R_absolute_direction_constrained_grp" -p "calculate_plot_to_lookat";
	rename -uid "9D90A958-4AC8-E403-FC21-178BE0A3DA5A";
createNode transform -n "R_absolute_direction_loc" -p "R_absolute_direction_constrained_grp";
	rename -uid "6B7ACD0A-4505-6FFD-BD55-6EBC4C282616";
	setAttr ".ro" 5;
createNode locator -n "R_absolute_direction_locShape" -p "R_absolute_direction_loc";
	rename -uid "D825288B-4E8A-0C8F-0E0F-42ABE40EDA9C";
	setAttr -k off ".v";
createNode transform -n "R_absolute_position_loc" -p "R_absolute_direction_loc";
	rename -uid "F2883C5D-4DA1-DEC9-CF83-A89466F0B72B";
	setAttr ".ro" 5;
createNode locator -n "R_absolute_position_locShape" -p "R_absolute_position_loc";
	rename -uid "35E169DC-4E6C-D537-B100-FD8E5E9FB746";
	setAttr -k off ".v";
createNode pointConstraint -n "R_absolute_direction_loc_pointConstraint1" -p "R_absolute_direction_loc";
	rename -uid "8B3CBB23-4972-6B1E-6A53-00AC92E4822A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "R_lookat_locW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "L_absolute_direction_constrained_grp" -p "calculate_plot_to_lookat";
	rename -uid "2CFB53A8-4ADA-47A4-4794-4A915EDD5665";
createNode transform -n "L_absolute_direction_loc" -p "L_absolute_direction_constrained_grp";
	rename -uid "2F809683-4593-C1B1-1DA5-508CEC9A85BC";
	setAttr ".ro" 5;
createNode locator -n "L_absolute_direction_locShape" -p "L_absolute_direction_loc";
	rename -uid "AC0709B6-46E7-3490-B162-28B18E8C1B31";
	setAttr -k off ".v";
createNode transform -n "L_absolute_position_loc" -p "L_absolute_direction_loc";
	rename -uid "1C455A63-4C77-AEEA-0D96-179756F5C074";
	setAttr ".ro" 5;
createNode locator -n "L_absolute_position_locShape" -p "L_absolute_position_loc";
	rename -uid "6EFD3116-45E5-A634-E7BB-BCA3D71D176E";
	setAttr -k off ".v";
createNode pointConstraint -n "L_absolute_direction_loc_pointConstraint1" -p "L_absolute_direction_loc";
	rename -uid "8BF477E6-4A85-2C2A-8152-368AC5D1A731";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "L_lookat_locW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "C_absolute_direction_constrained_grp" -p "calculate_plot_to_lookat";
	rename -uid "FAAC83D1-4D9B-4996-EB48-CA8DB9A04DF8";
createNode transform -n "C_absolute_direction_loc" -p "C_absolute_direction_constrained_grp";
	rename -uid "C7DD6B4A-461C-3A8E-21CB-519E59976FAD";
	setAttr ".ro" 5;
createNode locator -n "C_absolute_direction_locShape" -p "C_absolute_direction_loc";
	rename -uid "049B10DB-4F22-F90A-727C-08A5539DA8CC";
	setAttr -k off ".v";
createNode transform -n "C_absolute_position_loc" -p "C_absolute_direction_loc";
	rename -uid "BA484D70-46F7-E1C2-8C53-32A156F83273";
	setAttr ".ro" 5;
createNode locator -n "C_absolute_position_locShape" -p "C_absolute_position_loc";
	rename -uid "17E7CD0D-4E88-13D3-A8EF-0DA5335BBE2E";
	setAttr -k off ".v";
createNode pointConstraint -n "C_absolute_eye_direction_loc_pointConstraint1" -p "C_absolute_direction_loc";
	rename -uid "14F8817D-4658-91DA-8E45-E2BAFB888910";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "EyeCenter_locW0" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".w0";
createNode transform -n "calculate_convergence" -p "lookat_system_orient";
	rename -uid "5053F26A-4D78-6977-6071-39A5D9E83D58";
	setAttr ".v" no;
createNode transform -n "convergence_constrained_grp" -p "calculate_convergence";
	rename -uid "C16EC2FD-423B-0778-C295-35A678CCA8A0";
createNode transform -n "convergence_limit" -p "convergence_constrained_grp";
	rename -uid "2A94DEDF-4F14-BA0A-0304-6D9C60C84E9B";
	setAttr ".t" -type "double3" 0 0 5 ;
createNode transform -n "convergence_distance" -p "convergence_limit";
	rename -uid "A07F9EF6-431E-6A20-62B8-939CB50B60C1";
createNode transform -n "Converge_loc_offset" -p "convergence_distance";
	rename -uid "C82D11EC-4858-210F-DBF5-3FB1FD0098A1";
createNode transform -n "Converge_loc" -p "Converge_loc_offset";
	rename -uid "A8676612-4A68-E207-2055-7693EC812E6A";
createNode locator -n "Converge_locShape" -p "Converge_loc";
	rename -uid "1AA094D7-456D-6DE6-01AC-57BB5D5CE8D2";
	setAttr -k off ".v";
	setAttr ".ovv" no;
createNode transform -n "left_sightline_extension" -p "lookat_ctl_grp";
	rename -uid "E4D64B28-49E5-BBBB-2FFC-12944C7CFB5B";
	setAttr ".it" no;
createNode nurbsCurve -n "left_sightline_extensionShape" -p "left_sightline_extension";
	rename -uid "3D5CFE20-4C9B-AA57-AB6D-588297465FE3";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr -s 6 ".iog[0].og";
	setAttr -av ".iog[0].og[4].gid";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".tw" yes;
createNode nurbsCurve -n "left_sightline_extensionShape113Orig" -p "left_sightline_extension";
	rename -uid "7149E31F-4A6F-8F9A-ACD7-FFB66445CD5A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve"
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "right_sightline_extension" -p "lookat_ctl_grp";
	rename -uid "BA34E516-4ED4-CCCD-6005-42A670D2D531";
	setAttr ".it" no;
createNode nurbsCurve -n "right_sightline_extensionShape" -p "right_sightline_extension";
	rename -uid "44371FF4-46C4-C4AA-3F59-229F70DD5889";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr -s 6 ".iog[0].og";
	setAttr -av ".iog[0].og[4].gid";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr ".tw" yes;
createNode nurbsCurve -n "right_sightline_extensionShape113Orig" -p "right_sightline_extension";
	rename -uid "ED3ADBFF-46B0-B662-894C-4184D6A3F0D6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve"
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode nurbsCurve -n "right_sightline_extensionShapeOrig" -p "right_sightline_extension";
	rename -uid "834D7F3E-4FF9-BB87-D07C-87827D663574";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve"
		1 1 0 no 3
		2 0 1
		2
		0 0 40
		0 0 40
		;
createNode transform -n "R_lookat_system_orient" -p "grp_controls_lookat";
	rename -uid "3A8CB81E-461D-C7FC-7F54-33BA5BAECB3A";
createNode transform -n "R_lookat_loc_grp" -p "R_lookat_system_orient";
	rename -uid "CDACE4BC-4AF4-AA7F-87EC-939F3EEAE44A";
createNode transform -n "R_lookat_unoffset_loc" -p "R_lookat_loc_grp";
	rename -uid "297242B5-4F11-FE35-E90A-888A8FA93CDA";
	setAttr ".ro" 5;
createNode locator -n "R_lookat_unoffset_locShape" -p "R_lookat_unoffset_loc";
	rename -uid "123474AF-4576-D3E1-59DA-DF8C396D2882";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovv" no;
createNode aimConstraint -n "R_lookat_unoffset_loc_aimConstraint1" -p "R_lookat_unoffset_loc";
	rename -uid "C527CC99-4152-EDDE-0E98-8A9A34BEA51D";
	addAttr -dcb 0 -ci true -sn "w0" -ln "R_lookat_ctl_unoffset_grpW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".wut" 1;
	setAttr -k on ".w0";
createNode transform -n "R_lookat_loc" -p "R_lookat_loc_grp";
	rename -uid "E4BFD34D-4248-8808-B935-A387F08A30CB";
	setAttr ".ro" 5;
createNode locator -n "R_lookat_locShape" -p "R_lookat_loc";
	rename -uid "57BE1B6D-4952-9185-5561-9790F764DC9A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovv" no;
createNode aimConstraint -n "R_lookat_loc_aimConstraint1" -p "R_lookat_loc";
	rename -uid "210025EB-4D57-7790-2779-A7A32B439FEC";
	addAttr -dcb 0 -ci true -sn "w0" -ln "r_eye_look_at_ctrlW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".wut" 1;
	setAttr -k on ".w0";
createNode transform -n "R_static_loc" -p "R_lookat_loc_grp";
	rename -uid "36DAB5F7-42E0-9D91-99A2-25988295759E";
	setAttr ".ro" 5;
createNode locator -n "R_static_locShape" -p "R_static_loc";
	rename -uid "23B60B69-4447-367C-699A-EA8BAF6E4C52";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovv" no;
createNode transform -n "R_lookat_convergence_loc" -p "R_lookat_loc_grp";
	rename -uid "097A7CE8-4B36-1E4A-45E0-37B850D6F43A";
	setAttr ".ro" 5;
createNode locator -n "R_lookat_convergence_locShape" -p "R_lookat_convergence_loc";
	rename -uid "56F31BC4-4554-2F34-382B-49AE7533FB8F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovv" no;
createNode aimConstraint -n "R_lookat_convergence_loc_aimConstraint1" -p "R_lookat_convergence_loc";
	rename -uid "424C9314-498C-8ABD-CF74-53BEC33DF763";
	addAttr -dcb 0 -ci true -sn "w0" -ln "Converge_locW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".wut" 1;
	setAttr -k on ".w0";
createNode transform -n "R_Eye_upVec_grp" -p "R_lookat_system_orient";
	rename -uid "D36A06DA-4065-7044-60A5-61A0A2DD1CEB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 20 0 ;
createNode transform -n "R_Eye_upVec" -p "R_Eye_upVec_grp";
	rename -uid "DB704EC2-41CF-4878-87D5-27A9F63B650B";
createNode locator -n "R_Eye_upVecShape" -p "R_Eye_upVec";
	rename -uid "F3655238-4403-45BA-0369-5B97921C02ED";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovv" no;
createNode transform -n "R_lookat_ctl_placement" -p "R_lookat_system_orient";
	rename -uid "0BC95F7B-41FA-D4A2-1F44-6E83625F15CF";
	setAttr ".t" -type "double3" 0 0 40 ;
createNode transform -n "R_lookat_ctl_unoffset_grp" -p "R_lookat_ctl_placement";
	rename -uid "134A4B1D-4DDF-776C-1047-B7B029394C38";
createNode transform -n "R_lookat_ctl_offset2" -p "R_lookat_ctl_unoffset_grp";
	rename -uid "CE23AF3F-4430-883D-2A1A-FD83FCC95277";
createNode transform -n "R_lookat_ctl_offset3" -p "R_lookat_ctl_offset2";
	rename -uid "F8E37FD2-42AB-890C-207A-A89FF788EA4A";
createNode transform -n "R_lookat_ctl_offset4" -p "R_lookat_ctl_offset3";
	rename -uid "CBEE7719-4472-81E3-1A27-078037C82162";
createNode transform -n "R_lookat_ctl" -p "R_lookat_ctl_offset4";
	rename -uid "C7FD0C2E-423A-C323-0EC9-8AB7BA5B050F";
	addAttr -s false -ci true -sn "face_joint_plug" -ln "face_joint_plug" -at "message";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -5.773159728050814e-15 1.1368683772161603e-13 4.2632564145606011e-14 ;
	setAttr ".sp" -type "double3" -6.2172489379008766e-15 1.1368683772161603e-13 4.2632564145606011e-14 ;
createNode nurbsCurve -n "R_lookat_ctlShape" -p "R_lookat_ctl";
	rename -uid "9EF55B4F-40CD-16BA-55D5-F897FB520E51";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve"
		3 16 2 no 3
		21 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		19
		1.3334806280115536 0.81715797981487415 2.2737367544323169e-14
		0.91926263872011593 1.2652564760990572 2.2737367544323169e-14
		0.36509524582010972 1.520731143475655 2.2737367544323169e-14
		-0.24465458865936399 1.5446882797202761 2.2737367544323169e-14
		-0.81715797981481941 1.3334806280116027 2.2737367544323169e-14
		-2.8148292775710204 2.0450931792300024 2.2737367544323169e-14
		-1.5207311434756292 0.36509524582015729 2.2737367544323169e-14
		-1.5446882797202379 -0.24465458865931852 2.2737367544323169e-14
		-1.333480628011563 -0.81715797981478322 2.2737367544323169e-14
		-0.91926263872012448 -1.2652564760989664 2.2737367544323169e-14
		-0.36509524582011754 -1.5207311434755639 2.2737367544323169e-14
		0.24465458865935547 -1.5446882797201853 2.2737367544323169e-14
		0.81715797981481164 -1.3334806280115119 2.2737367544323169e-14
		1.2652564760989933 -0.9192626387200562 2.2737367544323169e-14
		1.5207311434756208 -0.36509524582006636 2.2737367544323169e-14
		1.5446882797202286 0.24465458865940948 2.2737367544323169e-14
		1.3334806280115536 0.81715797981487415 2.2737367544323169e-14
		0.91926263872011593 1.2652564760990572 2.2737367544323169e-14
		0.36509524582010972 1.520731143475655 2.2737367544323169e-14
		;
createNode transform -n "R_sightline_extend_up_vector" -p "R_lookat_ctl";
	rename -uid "8B0895B4-47D4-2285-9654-D19D01346EDA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1 0 ;
createNode locator -n "R_sightline_extend_up_vectorShape" -p "R_sightline_extend_up_vector";
	rename -uid "3B9C9CD9-4ED9-1169-217D-BE99935186A1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "R_sightline_extend_grp" -p "R_lookat_ctl";
	rename -uid "776AF9E1-4958-B9FC-20BC-70B6FEC2AC12";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
createNode transform -n "R_sightline_extend_start" -p "R_sightline_extend_grp";
	rename -uid "B73EE2F3-48F8-8756-F913-3281B644CB2C";
createNode locator -n "R_sightline_extend_startShape" -p "R_sightline_extend_start";
	rename -uid "43397BBE-4CAA-D7FD-BEFB-C99DCF55B6AA";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "R_sightline_extend_target" -p "R_sightline_extend_start";
	rename -uid "EB329853-453B-CC21-A8DB-77BEDFE0CEFD";
createNode locator -n "R_sightline_extend_targetShape" -p "R_sightline_extend_target";
	rename -uid "EAAF4113-4212-1996-C21F-4996080A7403";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode transform -n "L_lookat_system_orient" -p "grp_controls_lookat";
	rename -uid "CA2B7A7A-4FE6-5D5F-DFC9-D89EC455ABFF";
createNode transform -n "L_lookat_loc_grp" -p "L_lookat_system_orient";
	rename -uid "8C6A618B-4FFB-E040-DE3F-E49C67A215B4";
createNode transform -n "L_lookat_unoffset_loc" -p "L_lookat_loc_grp";
	rename -uid "783D9CB7-4779-537E-C1F5-12BB39BA285E";
	setAttr ".ro" 5;
createNode locator -n "L_lookat_unoffset_locShape" -p "L_lookat_unoffset_loc";
	rename -uid "ED1BD90B-4BEB-92B8-F19C-1492C54DA334";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovv" no;
createNode aimConstraint -n "L_lookat_unoffset_loc_aimConstraint1" -p "L_lookat_unoffset_loc";
	rename -uid "BB4768C2-4C73-E661-1E02-A78E3609E6CF";
	addAttr -dcb 0 -ci true -sn "w0" -ln "L_lookat_ctl_unoffset_grpW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".wut" 1;
	setAttr -k on ".w0";
createNode transform -n "L_lookat_loc" -p "L_lookat_loc_grp";
	rename -uid "D9AAB213-413F-08B2-E632-749D4109B1BC";
	setAttr ".ro" 5;
createNode locator -n "L_lookat_locShape" -p "L_lookat_loc";
	rename -uid "7D369586-42EC-F12E-269D-92A1A5312D48";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovv" no;
createNode aimConstraint -n "L_lookat_loc_aimConstraint1" -p "L_lookat_loc";
	rename -uid "E08A4EA5-42BB-FEAB-5FCA-78AC14A9E35B";
	addAttr -dcb 0 -ci true -sn "w0" -ln "l_eye_look_at_ctrlW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".wut" 1;
	setAttr -k on ".w0";
createNode transform -n "L_static_loc" -p "L_lookat_loc_grp";
	rename -uid "FC237ED1-4866-8BF7-3A3B-01B380A2CFCC";
	setAttr ".ro" 5;
createNode locator -n "L_static_locShape" -p "L_static_loc";
	rename -uid "264206F9-4D68-CE36-840D-B0B668064534";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovv" no;
createNode transform -n "L_lookat_convergence_loc" -p "L_lookat_loc_grp";
	rename -uid "CCC8ABB3-4615-BF3D-07C8-CDA8DBAFBC07";
	setAttr ".ro" 5;
createNode locator -n "L_lookat_convergence_locShape" -p "L_lookat_convergence_loc";
	rename -uid "7E562845-4C0E-482A-3955-4E94A5F91F6A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovv" no;
createNode aimConstraint -n "L_lookat_convergence_loc_aimConstraint1" -p "L_lookat_convergence_loc";
	rename -uid "20C21384-4410-6CFC-EF33-51A756A988E5";
	addAttr -dcb 0 -ci true -sn "w0" -ln "Converge_locW0" -dv 1 -at "double";
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
	setAttr ".a" -type "double3" 0 0 1 ;
	setAttr ".wut" 1;
	setAttr -k on ".w0";
createNode transform -n "L_Eye_upVec_grp" -p "L_lookat_system_orient";
	rename -uid "61698BBE-4C74-157A-028F-90B6BC325CAC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 20 0 ;
createNode transform -n "L_Eye_upVec" -p "L_Eye_upVec_grp";
	rename -uid "22433350-4E0F-A7DB-D08D-9494D3502B18";
createNode locator -n "L_Eye_upVecShape" -p "L_Eye_upVec";
	rename -uid "C11421BC-4FF5-74C1-F1CD-07886D7F522E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovv" no;
createNode transform -n "L_lookat_ctl_placement" -p "L_lookat_system_orient";
	rename -uid "B13280CB-440E-FB1C-7585-1E99DF691FC2";
	setAttr ".t" -type "double3" 0 0 40 ;
createNode transform -n "L_lookat_ctl_unoffset_grp" -p "L_lookat_ctl_placement";
	rename -uid "8D177C3E-433B-F2EA-619C-C6A804ADE652";
createNode transform -n "L_lookat_ctl_offset2" -p "L_lookat_ctl_unoffset_grp";
	rename -uid "8E22A76A-4CE0-52C4-0D4E-D0B41DDA5BCC";
createNode transform -n "L_lookat_ctl_offset3" -p "L_lookat_ctl_offset2";
	rename -uid "10E64663-4A4E-E145-1BB0-99A8BA2A06E2";
createNode transform -n "L_lookat_ctl_offset4" -p "L_lookat_ctl_offset3";
	rename -uid "40A87EFA-493F-41B3-A90F-06BDCB9BEA0B";
createNode transform -n "L_lookat_ctl" -p "L_lookat_ctl_offset4";
	rename -uid "71854CFD-4CDF-1C06-DE79-46ABBF570537";
	addAttr -s false -ci true -sn "face_joint_plug" -ln "face_joint_plug" -at "message";
	setAttr -l on -k off ".v";
	setAttr ".ovc" 6;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 5.6843418860808015e-14 3.5527136788005009e-14 ;
	setAttr ".sp" -type "double3" 0 5.6843418860808015e-14 3.5527136788005009e-14 ;
createNode nurbsCurve -n "L_lookat_ctlShape" -p "L_lookat_ctl";
	rename -uid "EC23EB0F-4CEA-999E-8533-19B4563E9A9C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve"
		3 16 2 no 3
		21 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		19
		-1.3334806280115581 0.81715797981487415 2.2737367544323179e-14
		-0.9192626387201206 1.2652564760990572 2.2737367544323179e-14
		-0.36509524582011327 1.520731143475655 2.2737367544323179e-14
		0.24465458865935974 1.5446882797202761 2.2737367544323179e-14
		0.81715797981481586 1.3334806280116027 2.2737367544323179e-14
		2.8148292775710182 2.0450931792300024 2.2737367544323179e-14
		1.520731143475625 0.36509524582015729 2.2737367544323179e-14
		1.5446882797202335 -0.24465458865931852 2.2737367544323179e-14
		1.3334806280115588 -0.81715797981478322 2.2737367544323179e-14
		0.91926263872012015 -1.2652564760989664 2.2737367544323179e-14
		0.36509524582011327 -1.5207311434755639 2.2737367544323179e-14
		-0.24465458865936043 -1.5446882797201853 2.2737367544323179e-14
		-0.81715797981481586 -1.3334806280115119 2.2737367544323179e-14
		-1.2652564760989979 -0.9192626387200562 2.2737367544323179e-14
		-1.5207311434756257 -0.36509524582006636 2.2737367544323179e-14
		-1.5446882797202328 0.24465458865940948 2.2737367544323179e-14
		-1.3334806280115581 0.81715797981487415 2.2737367544323179e-14
		-0.9192626387201206 1.2652564760990572 2.2737367544323179e-14
		-0.36509524582011327 1.520731143475655 2.2737367544323179e-14
		;
createNode transform -n "L_sightline_extend_up_vector" -p "L_lookat_ctl";
	rename -uid "BDDB205C-4426-0E11-6EE4-BCA6673B2684";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1 0 ;
createNode locator -n "L_sightline_extend_up_vectorShape" -p "L_sightline_extend_up_vector";
	rename -uid "F5CB2BD6-431F-9311-5C69-B89E0AC9A8C2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "L_sightline_extend_grp" -p "L_lookat_ctl";
	rename -uid "746EA0DA-42DD-379F-9A41-05BC557948EA";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
createNode transform -n "L_sightline_extend_start" -p "L_sightline_extend_grp";
	rename -uid "2D5EB0CA-4977-8946-4A1E-31829345206B";
createNode locator -n "L_sightline_extend_startShape" -p "L_sightline_extend_start";
	rename -uid "786B43EF-4E40-459C-9CF0-4B9E95ED5E79";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "L_sightline_extend_target" -p "L_sightline_extend_start";
	rename -uid "45A19CC3-4E1D-82F4-F2E7-9BAAE64E1AC7";
createNode locator -n "L_sightline_extend_targetShape" -p "L_sightline_extend_target";
	rename -uid "AC1B271B-496F-A8E2-6281-92B8799E7C79";
	setAttr -k off ".v";
	setAttr ".tmp" yes;
	setAttr ".los" -type "double3" 2 2 2 ;
createNode transform -n "plot_to_au_values" -p "asset_lookat";
	rename -uid "9206A962-485A-2830-6746-1287D5C213D6";
	addAttr -ci true -sn "C_TX" -ln "C_TX" -at "double";
	addAttr -ci true -sn "C_TY" -ln "C_TY" -at "double";
	addAttr -ci true -sn "L_TX" -ln "L_TX" -at "double";
	addAttr -ci true -sn "L_TY" -ln "L_TY" -at "double";
	addAttr -ci true -sn "R_TX" -ln "R_TX" -at "double";
	addAttr -ci true -sn "R_TY" -ln "R_TY" -at "double";
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
	setAttr -k on ".C_TX";
	setAttr -k on ".C_TY";
	setAttr -k on ".L_TX";
	setAttr -k on ".L_TY";
	setAttr -k on ".R_TX";
	setAttr -k on ".R_TY";
createNode transform -n "eyes_distance" -p "asset_lookat";
	rename -uid "9504E584-475A-691F-E5C7-14B5B74DFB80";
	setAttr ".v" no;
createNode nurbsCurve -n "eyes_distanceShape" -p "eyes_distance";
	rename -uid "5655EBBA-4D38-85BA-45E2-03A4C05DE057";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "eyes_distanceShape113Orig" -p "eyes_distance";
	rename -uid "019DE2F1-409F-C414-7DAB-3988DBBC6415";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve"
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode transform -n "eyes_combined_values" -p "asset_lookat";
	rename -uid "A5E504E7-49D6-ADA6-D1CD-40B5FD257A4B";
	addAttr -ci true -k true -sn "NL_61" -ln "NL_61" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "NR_61" -ln "NR_61" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "NL_62" -ln "NL_62" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "NR_62" -ln "NR_62" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "NL_63" -ln "NL_63" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "NR_63" -ln "NR_63" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "NL_64" -ln "NL_64" -min 0 -max 1 -at "double";
	addAttr -ci true -k true -sn "NR_64" -ln "NR_64" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "Eyes_TX" -ln "Eyes_TX" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "Eyes_TY" -ln "Eyes_TY" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "LeftEye_TX" -ln "LeftEye_TX" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "LeftEye_TY" -ln "LeftEye_TY" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "RightEye_TX" -ln "RightEye_TX" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "RightEye_TY" -ln "RightEye_TY" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "Eyes_RX" -ln "Eyes_RX" -at "double";
	addAttr -ci true -sn "Eyes_RZ" -ln "Eyes_RZ" -at "double";
	addAttr -ci true -sn "LeftEye_RX" -ln "LeftEye_RX" -at "double";
	addAttr -ci true -sn "LeftEye_RZ" -ln "LeftEye_RZ" -at "double";
	addAttr -ci true -sn "RightEye_RX" -ln "RightEye_RX" -at "double";
	addAttr -ci true -sn "RightEye_RZ" -ln "RightEye_RZ" -at "double";
	addAttr -ci true -sn "RightEye_unoffset_RX" -ln "RightEye_unoffset_RX" -at "double";
	addAttr -ci true -sn "RightEye_unoffset_RZ" -ln "RightEye_unoffset_RZ" -at "double";
	addAttr -ci true -sn "LeftEye_unoffset_RX" -ln "LeftEye_unoffset_RX" -at "double";
	addAttr -ci true -sn "LeftEye_unoffset_RZ" -ln "LeftEye_unoffset_RZ" -at "double";
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
	setAttr -k on ".NL_61";
	setAttr -k on ".NR_61";
	setAttr -k on ".NL_62";
	setAttr -k on ".NR_62";
	setAttr -k on ".NL_63";
	setAttr -k on ".NR_63";
	setAttr -k on ".NL_64";
	setAttr -k on ".NR_64";
	setAttr -k on ".Eyes_TX";
	setAttr -k on ".Eyes_TY";
	setAttr -k on ".LeftEye_TX";
	setAttr -k on ".LeftEye_TY";
	setAttr -k on ".RightEye_TX";
	setAttr -k on ".RightEye_TY";
	setAttr -k on ".Eyes_RX";
	setAttr -k on ".Eyes_RZ";
	setAttr -k on ".LeftEye_RX";
	setAttr -k on ".LeftEye_RZ";
	setAttr -k on ".RightEye_RX";
	setAttr -k on ".RightEye_RZ";
	setAttr -k on ".RightEye_unoffset_RX";
	setAttr -k on ".RightEye_unoffset_RZ";
	setAttr -k on ".LeftEye_unoffset_RX";
	setAttr -k on ".LeftEye_unoffset_RZ";
createNode transform -n "convergence_output" -p "asset_lookat";
	rename -uid "10A375C1-4262-CF4C-2FE3-6D847FDF7C38";
	addAttr -ci true -sn "NL_61" -ln "NL_61" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "NL_62" -ln "NL_62" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "NL_63" -ln "NL_63" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "NL_64" -ln "NL_64" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "NR_61" -ln "NR_61" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "NR_62" -ln "NR_62" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "NR_63" -ln "NR_63" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "NR_64" -ln "NR_64" -min 0 -max 1 -at "double";
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
	setAttr -k on ".NL_61";
	setAttr -k on ".NL_62";
	setAttr -k on ".NL_63";
	setAttr -k on ".NL_64";
	setAttr -k on ".NR_61";
	setAttr -k on ".NR_62";
	setAttr -k on ".NR_63";
	setAttr -k on ".NR_64";
createNode transform -n "au_eyes_ctl_parent_grp" -p "grp_control_eyes";
	rename -uid "E9F8751A-4C16-4493-3101-77B0E544DA83";
createNode transform -n "au_eyes_ctl_placement_grp" -p "au_eyes_ctl_parent_grp";
	rename -uid "86489A80-4D57-3DF5-512A-AFB26ECFD804";
createNode transform -n "au_eyes_ctl_placement_offset" -p "au_eyes_ctl_placement_grp";
	rename -uid "21FD99D1-4F4A-A254-19C1-E688A406EE5E";
createNode transform -n "au_eyes_ctl_grp" -p "au_eyes_ctl_placement_offset";
	rename -uid "F96231B8-4E35-C4ED-41A2-71896D6AB950";
createNode transform -n "au_eyes_ctl_scale_offset" -p "au_eyes_ctl_grp";
	rename -uid "AD8AE2FC-4D51-44CC-AD65-068FB62CD8A5";
	setAttr ".ove" yes;
	setAttr ".ovc" 3;
	setAttr ".s" -type "double3" 0.5 0.5 0.5 ;
createNode transform -n "au_eyes_ctl_offset" -p "au_eyes_ctl_scale_offset";
	rename -uid "0D89AA2A-4698-9371-BFD6-C18CC01CFDCB";
createNode transform -n "au_eyes_ctl" -p "au_eyes_ctl_offset";
	rename -uid "32ED1DA3-4033-E850-AA61-ED9C1CA5CC84";
	addAttr -ci true -sn "look_at_enabled" -ln "look_at_enabled" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "convergence_enabled" -ln "convergence_enabled" -min 0 -max
		1 -at "double";
	addAttr -ci true -sn "convergenceOffset" -ln "convergenceOffset" -min -10 -max 10
		-at "double";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mntl" -type "double3" -10 -10 -1 ;
	setAttr ".mxtl" -type "double3" 10 10 1 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
	setAttr ".look_at_enabled" 1;
createNode nurbsCurve -n "au_eyes_ctlShape" -p "au_eyes_ctl";
	rename -uid "927BB6D2-451A-536D-3B57-749E46566565";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve"
		3 10 0 no 3
		15 0 0 0 1 1 1 2 2 2 3 3 3 4 4 4
		13
		3.0052740154707749 -0.090118790500925305 -2.7944652164741419e-16
		2.8115910358305669 -0.090118790500925305 -2.7944652164741419e-16
		1.4557927467066136 -0.090118790500925305 -2.7944652164741419e-16
		1.2621097670664057 -0.090118790500925305 -2.7944652164741419e-16
		1.1223330122837893 5.7854480685515242e-05 -2.7944652164741419e-16
		0.14388314877177777 0.63130248533116706 -2.7944652164741419e-16
		0.0041063939891685663 0.72147913031277788 -2.7944652164741419e-16
		-0.13638666760768814 0.63130248533116706 -2.7944652164741419e-16
		-1.1198507432876745 5.7854480685515242e-05 -2.7944652164741419e-16
		-1.2603438048845312 -0.090118790500925305 -2.7944652164741419e-16
		-1.4542348208272315 -0.090118790500925305 -2.7944652164741419e-16
		-2.8114893827920575 -0.090118790500925305 -2.7944652164741419e-16
		-3.0053803987347578 -0.090118790500925305 -2.7944652164741419e-16
		;
createNode nurbsCurve -n "au_eyes_ctlShape2" -p "au_eyes_ctl";
	rename -uid "99650B16-4785-676A-0E1C-64AF2CCB3D64";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve"
		3 10 0 no 3
		15 0 0 0 1 1 1 2 2 2 3 3 3 4 4 4
		13
		6.9990081281024672 0.017720181903615906 0
		6.9990081281024672 -0.23431240876353998 0
		6.7946565163458743 -0.43877040378410159 0
		6.5426239256787184 -0.43877040378410159 0
		6.290378568483618 -0.43877040378410159 0
		6.0861333399909938 -0.23431240876353998 0
		6.0861333399909938 0.017720181903615906 0
		6.0861333399909938 0.26980596420275615 0
		6.290378568483618 0.4742107675913263 0
		6.5426239256787184 0.4742107675913263 0
		6.7946565163458743 0.4742107675913263 0
		6.9990081281024672 0.26980596420275615 0
		6.9990081281024672 0.017720181903615906 0
		;
createNode nurbsCurve -n "au_eyes_ctlShape4" -p "au_eyes_ctl";
	rename -uid "6BF2B91E-4040-9052-0499-4F85995085E0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve"
		3 10 0 no 3
		15 0 0 0 1 1 1 2 2 2 3 3 3 4 4 4
		13
		-6.0861333399910045 0.017720181903615906 0
		-6.0861333399910045 -0.23431240876353998 0
		-6.2904849517476009 -0.43877040378410159 0
		-6.5425175424147568 -0.43877040378410159 0
		-6.7947628996098466 -0.43877040378410159 0
		-6.9990081281024672 -0.23431240876353998 0
		-6.9990081281024672 0.017720181903615906 0
		-6.9990081281024672 0.26980596420275615 0
		-6.7947628996098466 0.4742107675913263 0
		-6.5425175424147568 0.4742107675913263 0
		-6.2904849517476009 0.4742107675913263 0
		-6.0861333399910045 0.26980596420275615 0
		-6.0861333399910045 0.017720181903615906 0
		;
createNode transform -n "R_au_eyes_ctl_placement" -p "au_eyes_ctl";
	rename -uid "3606446E-495F-E467-DD0D-1AA7E08891F6";
	setAttr ".t" -type "double3" -6.5426239256787202 0 0 ;
createNode transform -n "R_au_eyes_ctl_offset" -p "R_au_eyes_ctl_placement";
	rename -uid "A3119EC0-467A-0351-57F5-7ABB63D8BE9A";
createNode transform -n "R_au_eyes_ctl_offset2" -p "R_au_eyes_ctl_offset";
	rename -uid "79299B69-4DEB-71E5-FA0C-8A8D37DF149D";
createNode transform -n "R_au_eyes_ctl" -p "R_au_eyes_ctl_offset2";
	rename -uid "F176D789-44A3-D015-CB96-F8805378EB25";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mntl" -type "double3" -10 -10 -1 ;
	setAttr ".mxtl" -type "double3" 10 10 1 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
createNode nurbsCurve -n "R_au_eyes_ctlShape" -p "R_au_eyes_ctl";
	rename -uid "9B76F552-4B85-052C-C127-4D86CB4FAA24";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve"
		3 16 0 no 3
		21 0 0 0 1 1 1 2 2 2 3 3 3 4 4 4 5 5 5 6 6 6
		19
		0.00010638326396339437 1.0157441344952536 0
		-0.57274621655220948 1.0157441344952536 0
		-1.0369283122248287 0.55150884719064974 0
		-1.0369283122248287 -0.021130986097578575 0
		-1.0369283122248287 -0.45019596633429559 0
		-0.77636378378741888 -0.81828205966440182 0
		-0.40506491588547355 -0.97609099343489136 0
		-0.35990803597680632 -0.93241164408365451 0
		-0.043805812456271909 -0.62665226744428226 0
		0.001351067452395327 -0.58297291809304541 0
		0.046253812105186753 -0.62660616849088457 0
		0.36057706596215233 -0.93204284830756423 0
		0.40547981061494376 -0.9756760987054105 0
		0.77657655031535278 -0.81797354819888257 0
		1.0369283122248287 -0.44999383813275218 0
		1.0369283122248287 -0.021130986097578575 0
		1.0369283122248287 0.55150884719064974 0
		0.57274621655220592 1.0157441344952536 0
		0.00010638326396339437 1.0157441344952536 0
		;
createNode transform -n "L_au_eyes_ctl_placement" -p "au_eyes_ctl";
	rename -uid "1B2DA326-4CD8-933F-254F-19B9CE5F69B8";
	setAttr ".t" -type "double3" 6.5425175424147461 0 0 ;
createNode transform -n "L_au_eyes_ctl_offset" -p "L_au_eyes_ctl_placement";
	rename -uid "4289FA41-4616-F42C-CF63-3693F8183B7F";
createNode transform -n "L_au_eyes_ctl_offset2" -p "L_au_eyes_ctl_offset";
	rename -uid "A50B0499-4105-DD69-0CBD-DEAE7FC6F089";
createNode transform -n "L_au_eyes_ctl" -p "L_au_eyes_ctl_offset2";
	rename -uid "958847A3-4F85-62FC-2D86-0F9205704EFB";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".mntl" -type "double3" -10 -10 -1 ;
	setAttr ".mxtl" -type "double3" 10 10 1 ;
	setAttr ".mtxe" yes;
	setAttr ".mtye" yes;
	setAttr ".xtxe" yes;
	setAttr ".xtye" yes;
createNode nurbsCurve -n "L_au_eyes_ctlShape" -p "L_au_eyes_ctl";
	rename -uid "2407176D-484B-A3FB-66CA-9CBA321148AB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".cc" -type "nurbsCurve"
		3 16 0 no 3
		21 0 0 0 1 1 1 2 2 2 3 3 3 4 4 4 5 5 5 6 6 6
		19
		0.00010638326397227615 1.0157441344952534 0
		-0.57274621655222191 1.0157441344952534 0
		-1.036928312224827 0.55150884719064974 0
		-1.036928312224827 -0.021130986097578575 0
		-1.036928312224827 -0.45019596633429559 0
		-0.77636378378742066 -0.81828205966440182 0
		-0.40506491588547888 -0.97609099343489136 0
		-0.35990803597681165 -0.93241164408365451 0
		-0.04380581245628079 -0.62665226744428226 0
		0.0013510674523935506 -0.58297291809304541 0
		0.046253812105181424 -0.62660616849088457 0
		0.36057706596215766 -0.93204284830756423 0
		0.40547981061494554 -0.9756760987054105 0
		0.776576550315351 -0.81797354819888257 0
		1.036928312224827 -0.44999383813275218 0
		1.036928312224827 -0.021130986097578575 0
		1.036928312224827 0.55150884719064974 0
		0.5727462165522148 1.0157441344952534 0
		0.00010638326397227615 1.0157441344952534 0
		;
createNode transform -n "hlp_control_lookat_output" -p "grp_control_eyes";
	rename -uid "18FF6661-4C8E-C192-73A0-49BD9489F3F8";
	addAttr -ci true -sn "NL_61" -ln "NL_61" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "NL_62" -ln "NL_62" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "NL_63" -ln "NL_63" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "NL_64" -ln "NL_64" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "NR_61" -ln "NR_61" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "NR_62" -ln "NR_62" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "NR_63" -ln "NR_63" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "NR_64" -ln "NR_64" -min 0 -max 1 -at "double";
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
	setAttr -k on ".NL_61";
	setAttr -k on ".NL_62";
	setAttr -k on ".NL_63";
	setAttr -k on ".NL_64";
	setAttr -k on ".NR_61";
	setAttr -k on ".NR_62";
	setAttr -k on ".NR_63";
	setAttr -k on ".NR_64";
createNode transform -s -n "persp";
	rename -uid "A206B2CC-4D2B-2871-0D83-30BE9DAA3F4C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 21.417059916858232 15.465608586305782 114.12471411822642 ;
	setAttr ".r" -type "double3" -6.9383527296325775 7.400000000011123 1.0022710911234643e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "CB594576-46F8-2E0A-8860-55AF7C1E1524";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 117.00193298376462;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 -8.8817841970012523e-16 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "E9432497-4791-3149-5321-2AABF4FC139E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 176.68529388222208 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "D7C4554F-474D-4748-EC6A-92B06D7354C0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 176.68529388222208;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "207B77E1-4D89-D8BD-01FC-B2B8FFD675A9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -1.4988010832439613e-15 176.68529388222208 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "8C54313A-4E4A-E9DC-E6E9-5BAABAF46766";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 176.68529388222208;
	setAttr ".ow" 7.9041395793023588;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 0 -1.4988010832439613e-15 0 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "BA30705B-4CB0-F59A-3480-AC8877EF3E95";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 176.68529388222208 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "8E9BE803-4624-FAB3-3474-F3A90672BE74";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 176.68529388222208;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "326CBAA2-4D4C-F226-A21D-EBA0F7755A22";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "2FE82122-4C88-3BBC-F81E-429FD71FB9D8";
	setAttr -s 4 ".dli[1:3]"  1 2 3;
createNode displayLayer -n "defaultLayer";
	rename -uid "85B8076F-47F4-2DF9-DF14-CE805FC46D9B";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "636E2C6C-4524-D557-C1BA-60B267AD4126";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "00599E00-47FF-474A-D35D-BD844BDC379D";
	setAttr ".g" yes;
createNode blendColors -n "NL_64_blend";
	rename -uid "28FA4098-477F-7C7F-303E-7AA64AFD8F8E";
createNode blendColors -n "NL_61_blend";
	rename -uid "703B0355-44E9-DA69-D172-BB9E68588081";
createNode blendColors -n "NL_62_blend";
	rename -uid "8A32B4F4-4F35-5F86-8EDF-E2AF48D3476F";
createNode blendColors -n "NR_63_blend";
	rename -uid "5A35513F-4881-674B-1C4A-04BA93828F44";
createNode blendColors -n "NR_62_blend";
	rename -uid "C7721F2D-48FF-8A5B-4538-C68F45C6F993";
createNode blendColors -n "NR_64_blend";
	rename -uid "E51AD54E-4210-950E-AFBC-ABA64C0FAB0E";
createNode blendColors -n "NR_61_blend";
	rename -uid "BEF06A11-4F13-DB85-58DF-BC926F2D9C35";
createNode blendColors -n "NL_63_blend";
	rename -uid "FE82A22C-4E7E-09F6-DC67-81BBA195955B";
createNode animCurveUU -n "eye_contol_switch_remap_crv";
	rename -uid "C9D39B1D-4B42-84EB-79F4-87BB0F703443";
	setAttr ".tan" 2;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.0099999997764825821 1 1 1;
	setAttr -s 3 ".ktl[0:2]" no no no;
	setAttr -s 3 ".kwl[0:2]" yes yes yes;
createNode remapValue -n "l_aim_loc_to_NL_63_rmp";
	rename -uid "29427591-4947-E942-9C89-70B84F1966DE";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "l_aim_loc_to_NL_64_rmp";
	rename -uid "A7D75C30-4EA6-216A-82C6-EB9BFB9A9307";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "l_aim_loc_to_NL_62_rmp";
	rename -uid "AA78D4EA-49A1-38ED-F5AE-8BA0F9536F49";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "l_aim_loc_to_NL_61_rmp";
	rename -uid "E16FE2BF-4EA4-A3F2-2C32-9A8A78CAE6E8";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "l_aim_loc_to_NR_62_rmp";
	rename -uid "CD5E8676-4561-D69F-CA68-1285E235A759";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "l_aim_loc_to_NR_64_rmp";
	rename -uid "D27DF9CE-4AA0-C4AE-D47E-96B19B0D493C";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "l_aim_loc_to_NR_61_rmp";
	rename -uid "12D7E3CB-453D-C9FF-41E1-58A991AECD9E";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "l_aim_loc_to_NR_63_rmp";
	rename -uid "CCB9F638-4AC2-96A4-265D-48A56E9ECDDF";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode hyperLayout -n "hyperLayout2";
	rename -uid "5548F184-4519-4C6D-8176-AF8411A7B9AB";
	setAttr ".ihi" 0;
	setAttr -s 487 ".hyp";
createNode cluster -n "left_eye_distance_startCluster";
	rename -uid "0EB15098-4BD7-5E70-C6C8-1283DA7704F4";
	setAttr ".rel" yes;
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ait" 0;
createNode objectSet -n "cluster5Set";
	rename -uid "4883CFB6-4AB0-FC4B-D01C-4192A5863D8D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster5GroupId";
	rename -uid "A50E078B-4BF5-EC8F-2DC2-FDB98A25B23D";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster5GroupParts";
	rename -uid "8476FC80-4F33-9F11-4BE7-96BC7EA261AA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0]";
createNode tweak -n "tweak3";
	rename -uid "36B50C19-4C36-529D-13FE-1D83CDA6E031";
createNode objectSet -n "tweakSet3";
	rename -uid "D71C14C6-4BE0-16D7-4328-75B00570D37B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId6";
	rename -uid "B0D65E77-4791-9327-8B1A-7B9C5FC2CF81";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "22B52AB3-41FC-34F8-4E7A-45AA08F276CA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode cluster -n "right_eye_distance_startCluster";
	rename -uid "B9F474B4-4E6D-06FF-B5E3-B1B1C604D760";
	setAttr ".rel" yes;
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ait" 0;
createNode objectSet -n "cluster7Set";
	rename -uid "6AD58B55-4C2A-D954-6244-37A80B408F19";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster7GroupId";
	rename -uid "2D945FCC-4597-C45B-10E4-B59BAB459918";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster7GroupParts";
	rename -uid "37B5B120-4E15-3CA4-E308-2183A3105869";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0]";
createNode tweak -n "tweak4";
	rename -uid "89FC7CC2-4009-472B-08C0-2EACA88633AC";
createNode objectSet -n "tweakSet4";
	rename -uid "46DE065B-4625-BC92-AB5C-8E88A519C788";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8";
	rename -uid "651937A1-473D-A79E-C3B2-BCA5E6B0D7CF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "010D9ECC-4C56-DBCB-74DC-3DAB4D011A54";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode cluster -n "left_eye_distance_endCluster";
	rename -uid "EC2920B0-419B-9C64-1E80-388E3D749144";
	setAttr ".rel" yes;
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ait" 0;
createNode objectSet -n "cluster6Set";
	rename -uid "186B49EB-409C-E895-F72C-FE9DB20B5AB3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster6GroupId";
	rename -uid "F26C25F8-46DB-D865-1410-D58C0182DF44";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster6GroupParts";
	rename -uid "B2359503-49EF-AAFD-D46A-EAA179703EC3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[1]";
createNode cluster -n "right_eye_distance_endCluster";
	rename -uid "3912224A-4504-D772-AA24-17A2898EF869";
	setAttr ".rel" yes;
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ait" 0;
createNode objectSet -n "cluster8Set";
	rename -uid "9A1FF65C-4445-A93B-8B03-5B8D94482868";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster8GroupId";
	rename -uid "F1C5E5B8-40AD-CEEF-AF4C-AEBDFD3BAA8E";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster8GroupParts";
	rename -uid "1C76923E-4B14-1541-FFA0-2DB2753AA3BD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[1]";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "AF6EA7CC-4589-1F8E-8A38-EEAEA6DCD01B";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "CD714C00-40C3-D556-E11C-129B05E439BA";
createNode tweak -n "tweak5";
	rename -uid "8603903D-4A25-DFED-2451-0DA5E32B0A11";
createNode objectSet -n "tweakSet5";
	rename -uid "0E8363AD-4CF7-8C25-ABEB-B8896FF4CAED";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId10";
	rename -uid "A844A120-4151-572B-7F9B-84A187FB31E6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "6188ED58-4DF9-A8AB-5FDF-378AA9BE230D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode cluster -n "left_sightline_extension_startCluster";
	rename -uid "B93FA8A8-43E7-09D3-5698-20A2F73205C2";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode objectSet -n "cluster9Set";
	rename -uid "215E9A24-4206-735F-4036-019D689111CE";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster9GroupId";
	rename -uid "033DB119-4795-73EB-D59B-B8A896ECC6D9";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster9GroupParts";
	rename -uid "E6CBE4FC-421B-47C7-BF57-8293FA77AC8F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0]";
createNode cluster -n "left_sightline_extension_targetCluster";
	rename -uid "D038EB40-4503-4F0D-A7D6-9D81BDFAECA8";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode objectSet -n "cluster10Set";
	rename -uid "4B7F10EA-4E61-FA13-5725-878C89B7D455";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster10GroupId";
	rename -uid "DCCD26F5-4F52-4696-0A7C-7EAF06DEF8E1";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster10GroupParts";
	rename -uid "2319A85D-4DEC-82EB-E108-DB80A3CACB29";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[1]";
createNode cluster -n "right_sightline_extension_startCluster";
	rename -uid "240D5517-4D24-8D20-6C2C-ABA91E041677";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode tweak -n "tweak6";
	rename -uid "DCEC1EA3-4932-51E0-2AC0-E3A6D3E348A2";
createNode objectSet -n "cluster11Set";
	rename -uid "A83C9B4F-4BF8-9274-C15E-ABA72EEFF9CD";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster11GroupId";
	rename -uid "1AD37701-4339-D7C9-A00E-0281AAA05A27";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster11GroupParts";
	rename -uid "B7FC6B0B-4614-8648-60D4-4F9E1C2E6179";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0]";
createNode objectSet -n "tweakSet6";
	rename -uid "380DA92A-45ED-EA97-CC23-FD9BBCEFFA29";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId12";
	rename -uid "F55B5CDC-40C9-21E4-3277-DDB1B5F386F5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "2A9FD4CD-4DDD-285E-D949-42A42779BB24";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode cluster -n "right_sightline_extension_targetCluster";
	rename -uid "8D478456-411F-1582-373B-C5A6DF1FD3EA";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode objectSet -n "cluster12Set";
	rename -uid "17398180-4DD7-9C4C-9BC2-B6869B6D410A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster12GroupId";
	rename -uid "6A8DEA27-4699-8FA1-E6F3-0CBAD6DB6616";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster12GroupParts";
	rename -uid "B04E8C56-4055-0520-F2FA-CCB4DF69FE2C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[1]";
createNode multiplyDivide -n "royal_blue_md_value";
	rename -uid "04D66330-452B-83E0-F84B-D3B2695E321D";
	setAttr ".i1" -type "float3" 1 0 0 ;
	setAttr ".i2" -type "float3" 6 1 1 ;
createNode multiplyDivide -n "bright_red_md_value";
	rename -uid "8FA13E15-46D6-292F-D8AB-B6AB27CABEE9";
	setAttr ".i1" -type "float3" 1 0 0 ;
	setAttr ".i2" -type "float3" 13 1 1 ;
createNode animCurveUU -n "lookat_world_remap_crv";
	rename -uid "74CE0A6C-4E3D-DA86-C395-C690DE4C732F";
	setAttr ".tan" 2;
	setAttr -s 3 ".ktv[0:2]"  7.0861676526590145e-09 1 0.99000000953674316
		1 1 0;
	setAttr -s 3 ".kwl[0:2]" yes yes yes;
createNode animCurveUU -n "lookat_local_remap_crv";
	rename -uid "9EF0EDC4-421E-22F0-DC08-7882FCDEACC4";
	setAttr ".tan" 2;
	setAttr -s 3 ".ktv[0:2]"  7.0861676526590145e-09 0 0.99000000953674316
		0 1 1;
	setAttr -s 3 ".kwl[0:2]" yes yes yes;
createNode renderLayerManager -n "clashing_renderLayerManager";
	rename -uid "2370731F-4D7D-A2B0-26EF-31AFE2325736";
createNode renderLayer -n "clashing_defaultRenderLayer";
	rename -uid "EC9F0243-4CB6-4FF5-4089-E6B612CC6B78";
	setAttr ".g" yes;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "7A32B2BE-4E1B-8128-39A9-5CAA87438D62";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -622.61902287839052 -444.04760140275278 ;
	setAttr ".tgi[0].vh" -type "double2" 567.85712029252829 486.90474255690577 ;
createNode renderLayerManager -n "fk_eye_setup_renderLayerManager";
	rename -uid "06E4A5A0-46A3-D4FE-80B0-5FB8A24D34FC";
createNode renderLayer -n "fk_eye_setup_defaultRenderLayer";
	rename -uid "B01E6027-42CF-466F-5878-46BF457E383A";
	setAttr ".g" yes;
createNode remapValue -n "L_eye_gaze_pos_x_to_NL_61";
	rename -uid "7D8EADC6-4179-464F-28B7-E5863489024B";
	setAttr ".imx" 10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "L_eye_gaze_neg_x_to_NL_62";
	rename -uid "719C40C4-4883-C2EE-67B9-E49277C7684C";
	setAttr ".imx" -10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "R_eye_gaze_pos_x_to_NR_61";
	rename -uid "A66C4FAD-4F80-42AA-1A8C-70A29B4A1997";
	setAttr ".imx" 10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "R_eye_gaze_neg_x_to_NR_62";
	rename -uid "F8EE38E6-4AB5-EC5E-44D6-458BD373B357";
	setAttr ".imx" -10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "L_eye_gaze_neg_y_to_NL_64";
	rename -uid "AC884299-4CEC-2536-B1C7-CCBA8D78EBBD";
	setAttr ".imx" -10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "L_eye_gaze_pos_y_to_NL_63";
	rename -uid "FC39B01E-405F-80B2-9AFA-13B4D47A6FCC";
	setAttr ".imx" 10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "R_eye_gaze_neg_y_to_NR_64";
	rename -uid "4F71BFDC-4913-BEAA-40DD-4FA359D42A3D";
	setAttr ".imx" -10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "R_eye_gaze_pos_y_to_NR_63";
	rename -uid "634C3326-4C61-E03A-E0E0-86A7421462AB";
	setAttr ".imx" 10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode renderLayerManager -n "fk_eye_setup_renderLayerManager1";
	rename -uid "28D8E53B-48B1-BDAA-96AA-8D82E32B13EF";
createNode renderLayer -n "fk_eye_setup_defaultRenderLayer1";
	rename -uid "921AE754-4237-18FA-FFA7-5F9FB7CD8835";
	setAttr ".g" yes;
createNode nodeGraphEditorInfo -n "fk_eye_setup_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "45706CA9-45DC-7434-BF61-9692E507ED69";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -622.61902287839052 -444.04760140275278 ;
	setAttr ".tgi[0].vh" -type "double2" 567.85712029252829 486.90474255690577 ;
createNode renderLayerManager -n "fk_eye_setup_fk_eye_setup_renderLayerManager";
	rename -uid "C7483637-42AA-9D50-B478-F68CCE5552C9";
createNode renderLayer -n "fk_eye_setup_fk_eye_setup_defaultRenderLayer";
	rename -uid "2F4B0210-45CE-D349-C637-C0AAE37F9CC4";
	setAttr ".g" yes;
createNode plusMinusAverage -n "L_eye_gaze_ctl_tx_sum";
	rename -uid "A179513D-4058-AFA3-57E2-F4B25B99B799";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "L_eye_gaze_ctl_ty_sum";
	rename -uid "55BDBE8C-43B6-FFE6-F4C9-1097A89E14B9";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "R_eye_gaze_ctl_tx_sum";
	rename -uid "9698000D-41DF-2530-A3C7-2A90132D4C81";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "R_eye_gaze_ctl_ty_sum";
	rename -uid "B5084499-4B0E-FB48-BC36-208145928682";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode remapValue -n "L_gaze_ctl_posTX_to_left_eye_posRX";
	rename -uid "C55925DF-471A-5DA8-CACE-8787057B5B7C";
	setAttr ".imx" 10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "L_gaze_ctl_posTY_to_left_eye_negRZ";
	rename -uid "E2CF82AE-4394-137B-769E-49B916180F37";
	setAttr ".imx" 10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "R_gaze_ctl_posTX_to_right_eye_posRX";
	rename -uid "EA7EC468-4891-0F17-2665-BEBC03017A87";
	setAttr ".imx" 10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "R_gaze_ctl_posTY_to_right_eye_negRZ";
	rename -uid "F640A82D-4AE9-A1B8-3291-299271B3365E";
	setAttr ".imx" 10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "gaze_ctl_posTY_to_eyes_negRZ";
	rename -uid "A1E19AFA-43DB-75A7-AEE0-E8871F3FDEB8";
	setAttr ".imx" 10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "gaze_ctl_posTX_to_eyes_posRX";
	rename -uid "E175C40B-458E-CC37-D34E-2696E2110FFC";
	setAttr ".imx" 10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "L_gaze_ctl_negTY_to_left_eye_posRZ";
	rename -uid "7E1C438C-4F6F-182A-0112-34A37D4747D2";
	setAttr ".imx" -10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "L_gaze_ctl_neg_TX_to_left_eyes_neg_RX";
	rename -uid "02C5944F-4324-3044-DCBA-8BAA09E0CA0F";
	setAttr ".imx" -10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode plusMinusAverage -n "L_gaze_ctl_TY_to_left_eye_RZ";
	rename -uid "9521CE5E-4878-928B-73D3-74AA651A8574";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "L_gaze_ctl_TX_to_left_eyes_RX";
	rename -uid "8939DFC7-41F9-2E1C-2340-6390D4956935";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode remapValue -n "R_gaze_ctl_negTY_to_right_eye_posRZ";
	rename -uid "04F52A7A-4CEE-0A59-A158-E8B610A3EA69";
	setAttr ".imx" -10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "R_gaze_ctl_negTX_to_right_eye_negRX";
	rename -uid "0A766D4D-4F44-7B53-06E6-37BE361E411D";
	setAttr ".imx" -10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode plusMinusAverage -n "R_gaze_ctl_TX_to_right_eye_RX";
	rename -uid "71563246-4731-D926-CEAA-9F961F39AF2A";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "R_gaze_ctl_TY_to_right_eye_RZ";
	rename -uid "8606729B-4D15-3134-99D1-FF93A2BCAFE5";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode remapValue -n "gaze_ctl_negTX_to_eyes_negRX";
	rename -uid "7CB72B24-472A-5712-8BA0-659F6A306B09";
	setAttr ".imn" -10;
	setAttr ".imx" 0;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "gaze_ctl_negTY_to_eyes_posRZ";
	rename -uid "6384727D-4210-A1DF-3D6F-D589E4030CA8";
	addAttr -ci true -sn "nts" -ln "notes" -dt "string";
	setAttr ".imn" -10;
	setAttr ".imx" 0;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
	setAttr ".nts" -type "string" "\t";
createNode plusMinusAverage -n "gaze_ctl_TX_to_eyes_RX";
	rename -uid "86ED3ECE-4DC8-B2C7-D7EA-80BB4A5CD132";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "gaze_ctl_TY_to_eyes_RZ";
	rename -uid "170D487C-4B37-768D-FD9A-BBB45C6B384F";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion1";
	rename -uid "68193F36-4B66-138C-F28C-7C84E278B4D7";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion2";
	rename -uid "E38AA0C0-4CDE-B660-A1AB-74BC97797462";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion3";
	rename -uid "B0C9E275-41EA-24C1-F9CC-D0829A6B9230";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion4";
	rename -uid "9BDB8876-419B-20B1-D40B-B09FB0C80D12";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion5";
	rename -uid "8E56E55F-4AE0-81ED-63F8-5F832650986A";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion6";
	rename -uid "DBC71913-4FA3-B4B1-D3B4-1EA92848A1A1";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion7";
	rename -uid "CF5EC33E-4D0F-99CA-0CE9-EAA4DAABC818";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion8";
	rename -uid "838C4777-4CAB-8344-7DE9-1FA4725FEB3E";
	setAttr ".cf" 57.295779513082323;
createNode plusMinusAverage -n "NLNR_61_Max_average";
	rename -uid "3E053298-4A8F-2CC9-FF00-3CA08219CDA8";
	setAttr ".op" 3;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "NLNR_61_Min_average";
	rename -uid "1B18CF1F-47FE-8BD3-3C5C-50B7D7B11C36";
	setAttr ".op" 3;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "NLNR_62_Max_average";
	rename -uid "BB3C5E40-43E7-47D0-451B-7580864B7BD5";
	setAttr ".op" 3;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "NLNR_62_Min_average";
	rename -uid "A4086F6E-40C1-6FDB-F28B-EB94F3726AEF";
	setAttr ".op" 3;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "NLNR_63_Max_average";
	rename -uid "E3CF4C48-4158-A302-C05D-90BA61BCF333";
	setAttr ".op" 3;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "NLNR_63_Min_average";
	rename -uid "829E55EC-4E06-EFBD-7DB1-8D8ED62C75A6";
	setAttr ".op" 3;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "NLNR_64_Max_average";
	rename -uid "4847EA48-4253-3C62-677A-CE897ADECCBE";
	setAttr ".op" 3;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "NLNR_64_Min_average";
	rename -uid "ED2000C4-4DA2-EE07-EC67-5D9D764B7662";
	setAttr ".op" 3;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "L_offset_subtract";
	rename -uid "601C69E4-4D12-B5A8-287D-FFA8EA3D6547";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode unitConversion -n "unitConversion9";
	rename -uid "13C28CEF-4B91-9290-9C46-06B0B54A99D0";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "l_aim_loc_to_NL_64_rmp_offset";
	rename -uid "E065FD78-407B-92D0-893F-B39FABA2E9D9";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "l_aim_loc_to_NL_63_rmp_offset";
	rename -uid "A8B920D5-4499-3CE5-08C9-5EAF498EC507";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "l_aim_loc_to_NL_62_rmp_offset";
	rename -uid "C33712CD-4B36-6B9D-379A-FD80CA4E457B";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "l_aim_loc_to_NL_61_rmp_offset";
	rename -uid "8EC0271D-492C-754C-3617-9EBC5B099C70";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode plusMinusAverage -n "NL_6364_sum";
	rename -uid "0CE483AE-4CEF-51EA-11D4-CEBEE2709ED9";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "NL_6162_sum";
	rename -uid "69E64519-4CD0-61CC-2652-568ACAFCAE17";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode remapValue -n "NL_61_to_pos10_offset";
	rename -uid "1A9E31C6-4918-6097-A24B-F583A659EEE9";
	setAttr ".omx" 10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "NL_63_to_pos10_offset";
	rename -uid "349572C6-4959-2C98-0408-2792A109AADD";
	setAttr ".omx" 10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "NL_64_to_neg10_offset";
	rename -uid "928704E0-4076-09EE-E74C-659BEC0A1FB4";
	setAttr ".omx" -10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "NL_62_to_neg10_offset";
	rename -uid "FE3501D5-44DD-BFDD-2CE4-4FA60115875D";
	setAttr ".omx" -10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "NLNR_64_to_neg11";
	rename -uid "941B7D9A-47E5-5644-99C7-C0A03FBCA03B";
	setAttr ".omx" -10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode plusMinusAverage -n "NLNR_6364_sum";
	rename -uid "08DFB483-4EA3-03F2-46D4-16B2B5CCA783";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode remapValue -n "NLNR_63_to_pos10";
	rename -uid "6BB41525-4B47-9ACF-728A-9697AB90548C";
	setAttr ".omx" 10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode plusMinusAverage -n "NLNR_6162_sum";
	rename -uid "F60DDCC4-4ADD-E750-E855-72876C2169D7";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode remapValue -n "c_aim_loc_to_NLNR_62_rmp";
	rename -uid "C0096E2C-4BAD-E9C1-0820-8BB77D82AE0C";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "NLNR_61_to_pos10";
	rename -uid "8282A8CC-4C2A-6BCA-D988-2E81201063B9";
	setAttr ".omx" 10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "c_aim_loc_to_NLNR_64_rmp";
	rename -uid "4DD53782-455A-ECDA-8FB9-B09968986C63";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "c_aim_loc_to_NLNR_63_rmp";
	rename -uid "DF6796A2-4604-36FF-1D38-6D96280914B1";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "c_aim_loc_to_NLNR_61_rmp";
	rename -uid "D7C291CF-420C-4133-6F98-D1A5F0CC2DD2";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "NLNR_62_to_neg10";
	rename -uid "781B798A-4594-A990-79FB-A8A6176C2E7C";
	setAttr ".omx" -10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode unitConversion -n "unitConversion11";
	rename -uid "30FAC452-4900-FE7C-59A2-079A50A0CD0A";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion12";
	rename -uid "01E359EF-4520-6E6A-7784-32A32EA14F1C";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion13";
	rename -uid "36F90522-4A27-F637-5AD4-DBA6E078BBF4";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion14";
	rename -uid "A6CB4593-49BD-0714-F0B4-DEA096730F62";
	setAttr ".cf" 57.295779513082323;
createNode plusMinusAverage -n "R_offset_subtract";
	rename -uid "15B53703-4CBE-348A-6057-0589C2D499BA";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode remapValue -n "r_aim_loc_to_NR_61_rmp_offset";
	rename -uid "70A08D4D-41EE-EEC7-7A58-85BD3158898D";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "r_aim_loc_to_NR_62_rmp_offset";
	rename -uid "7153B0D7-410A-DEEB-06A8-DE9B095FE938";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "NR_62_to_neg10_offset";
	rename -uid "431E6309-4D3D-6040-61C3-C9A3880B6F3B";
	setAttr ".omx" -10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "NR_61_to_pos10_offset";
	rename -uid "29DA821D-45D0-462E-9365-FBA3746483A2";
	setAttr ".omx" 10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "r_aim_loc_to_NR_63_rmp_offset";
	rename -uid "29069B18-43CD-3E2C-731F-C0BED6D8CE92";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "NR_63_to_pos10_offset";
	rename -uid "2ECAC929-4E62-2220-3A85-ABA887E1FB6E";
	setAttr ".omx" 10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "r_aim_loc_to_NR_64_rmp_offset";
	rename -uid "62F9FF83-4107-E0BF-7ABA-E18F79702E2C";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "NR_64_to_neg10_offset";
	rename -uid "A534B03C-400A-1269-A9FA-FA8401C19A57";
	setAttr ".omx" -10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode plusMinusAverage -n "NR_6364_sum";
	rename -uid "AE36C5EA-4E1E-067A-AEEA-E7937B1EFEE6";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "NR_6162_sum";
	rename -uid "3E3AA921-47BE-F8C0-1D26-3DBC4D082222";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode unitConversion -n "unitConversion15";
	rename -uid "101B9234-496B-4D48-C7B3-BA895F26DEBB";
	setAttr ".cf" 57.295779513082323;
createNode clamp -n "NLNR_6364_clamp";
	rename -uid "DE3C7254-402F-1370-9DBF-64B84223E003";
createNode unitConversion -n "unitConversion17";
	rename -uid "2A6D20CF-4473-DF16-9F45-159FAB9072D8";
	setAttr ".cf" 57.295779513082323;
createNode clamp -n "NLNR_6162_clamp";
	rename -uid "89319B36-4073-70CF-CD84-C79E96F92158";
createNode unitConversion -n "unitConversion18";
	rename -uid "12BBD84A-4734-EFAE-DDE9-A6968FB8CFF1";
	setAttr ".cf" 57.295779513082323;
createNode clamp -n "NL_6162_clamp";
	rename -uid "421B9209-4348-17BC-DD2C-1DB25C430F3E";
createNode clamp -n "NL_6364_clamp";
	rename -uid "1AEE3A79-432C-97D9-DDC3-07B7393364A5";
createNode clamp -n "NR_6364_clamp";
	rename -uid "CC07D8CB-45B4-AEFA-EB83-7EA3599ED239";
createNode clamp -n "NR_6162_clamp";
	rename -uid "77A3E430-4800-A1D8-2A24-26938446D423";
createNode blendColors -n "EyesRX_blend";
	rename -uid "5B40A813-41F8-A981-1714-F7B3D35F0C87";
createNode blendColors -n "EyesTY_blend";
	rename -uid "96D92950-4F2C-20D2-19CE-1D9E1C36346B";
createNode blendColors -n "EyesRZ_blend";
	rename -uid "1E08C599-4A34-8996-3B10-4EAF5B1A3008";
createNode blendColors -n "LeftEyeTX_blend";
	rename -uid "BD12F9FF-4B1B-1C56-420C-97820A381C0F";
createNode blendColors -n "LeftEyeRX_blend";
	rename -uid "5B8F88D6-4D63-16D9-2D11-46BEE6A7BB1C";
createNode blendColors -n "LeftEyeRZ_blend";
	rename -uid "04A90890-4D0F-C34D-6886-92BE7BF0C05C";
createNode blendColors -n "LeftEyeTY_blend";
	rename -uid "C7DD5FC7-49DA-FA42-08EE-E1901989B95A";
createNode blendColors -n "EyesTX_blend";
	rename -uid "C7006ED5-436F-5D11-B28B-66AA7825A96C";
createNode blendColors -n "RightEyeTX_blend";
	rename -uid "7C0BF235-4501-378F-21B5-9DAC18B7E0FC";
createNode blendColors -n "RightEyeTY_blend";
	rename -uid "7089C809-47FA-F038-3A8C-C78F8677D6DD";
createNode blendColors -n "RightEyeRZ_blend";
	rename -uid "7F483BF1-409C-4563-8301-F4BDAEE3BE1E";
createNode blendColors -n "RightEyeRX_blend";
	rename -uid "8886AADE-4942-8E78-1F9F-23A6400C5453";
createNode unitConversion -n "unitConversion19";
	rename -uid "50AA5C4F-4EB1-1618-C5C7-1994216B6273";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion20";
	rename -uid "28331DA1-4D2A-2D8B-C07D-E1B0D6ABAA48";
	setAttr ".cf" 0.017453292519943295;
createNode curveInfo -n "left_eye_distance_info";
	rename -uid "111C8986-4F9B-BA33-EA3D-DA9955808C79";
createNode cluster -n "eyes_distance_endCluster";
	rename -uid "0F61AFB3-4B5F-601B-04B2-BAAFE7A3D516";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode tweak -n "tweak7";
	rename -uid "B094BCFE-4370-73C9-47B0-12A181A44197";
createNode objectSet -n "cluster13Set";
	rename -uid "7AA74042-4E68-5535-13E3-2E8E78C263E2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster13GroupId";
	rename -uid "E8A617E8-4B21-E729-F2D6-B59A361F155E";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster13GroupParts";
	rename -uid "E91985EE-4F10-E6D1-25B8-3CB2AB466005";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0]";
createNode objectSet -n "tweakSet7";
	rename -uid "5D3DA038-4145-B083-42D8-9687CEF96470";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId14";
	rename -uid "2CCDAB5F-4968-1304-FEA8-F19736489DD4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "27047CAA-4A7A-B01E-E551-E6A27F2C2AC8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode cluster -n "eyes_distance_startCluster";
	rename -uid "1E120C08-42FA-A804-F9F0-A1B5948A681D";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode objectSet -n "cluster14Set";
	rename -uid "02D51EC3-45E0-7379-61B8-B6B2FE4D5CCC";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster14GroupId";
	rename -uid "D6576EE7-4482-2516-6CC2-3FA88DFE4F19";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster14GroupParts";
	rename -uid "816F38FD-4504-B5B1-A327-77A519E92826";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[1]";
createNode curveInfo -n "eyes_distance_info";
	rename -uid "06EF8F95-4127-E794-C1E4-F8BF66103963";
createNode curveInfo -n "right_eye_distance_info";
	rename -uid "C1FF7754-4A04-0959-8B43-A1B4ABE664D5";
createNode plusMinusAverage -n "R_direction_offset_sum";
	rename -uid "495374F4-4B26-E034-4D26-B989417185C5";
	setAttr -s 2 ".i3[0:1]" -type "float3"  0 0 0 0 0 0;
	setAttr -s 2 ".i3";
createNode unitConversion -n "unitConversion23";
	rename -uid "78307C35-44EC-01BD-CBFF-A7AE80A8FCB8";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion24";
	rename -uid "B603B758-444E-036A-E679-DDA72E10D1A0";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "L_direction_offset_sum";
	rename -uid "5D2B60C4-43B9-A45D-7370-099C454F609F";
	setAttr -s 2 ".i3[0:1]" -type "float3"  0 0 0 0 0 0;
	setAttr -s 2 ".i3";
createNode unitConversion -n "unitConversion25";
	rename -uid "6340B0C1-4AE2-ED2A-116B-5BA7491F5CA8";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion26";
	rename -uid "7B206477-4A61-09E4-AF9E-9AB2514526BA";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion28";
	rename -uid "442E1540-42EF-E1B7-FAAD-C1BC0937E4DF";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion29";
	rename -uid "3667E8CE-49C0-7454-57A3-94A617830B7A";
	setAttr ".cf" 57.295779513082323;
createNode multiplyDivide -n "NL_6162_reverse";
	rename -uid "F1304875-478D-E016-BA6A-F6A63C6326A3";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "NL_6364_reverse";
	rename -uid "D34A96B9-4BAE-882F-591F-E3BC85B2D26B";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "NR_6162_reverse";
	rename -uid "A95ECE23-432F-009B-227C-0FAC0162A19B";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "NR_6364_reverse";
	rename -uid "4D467D59-4A3E-FD94-5372-53BCCD4C3876";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode unitConversion -n "unitConversion30";
	rename -uid "74B05D4F-4A9D-4FA6-5978-C2A0AE0E711A";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion31";
	rename -uid "47057F50-4F8E-EADA-9CDD-95B70DF31525";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion32";
	rename -uid "89A7A8D6-471E-D0B6-597D-0A8C49498C85";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion33";
	rename -uid "59DE3518-4649-2928-C60D-0E8865BC68E7";
	setAttr ".cf" 57.295779513082323;
createNode blendColors -n "RightEye_unoffset_RX_blend";
	rename -uid "5A3FCC32-485C-EBD5-4568-52BDFDF23902";
createNode blendColors -n "LeftEye_unoffset_RZ_blend";
	rename -uid "ACD0BDB0-4B00-063A-698C-44A830D940F2";
createNode blendColors -n "RightEye_unoffset_RZ_blend";
	rename -uid "D18F8548-4DEF-6A4C-1207-4D97386085DB";
createNode blendColors -n "LeftEye_unoffset_RX_blend";
	rename -uid "F86C7D06-441C-8A4F-6821-2AA6CA7B5692";
createNode clamp -n "L_lookat_unoffset_RZ_clamp";
	rename -uid "8BF3B0F4-4FA8-CB32-1634-648337ACB031";
createNode clamp -n "L_lookat_unoffset_RX_clamp";
	rename -uid "3F8292FD-4657-AC1F-7651-49ABE1DC1F83";
createNode clamp -n "R_lookat_unoffset_RZ_clamp";
	rename -uid "637A24EF-4167-0794-7A85-7790900D4761";
createNode clamp -n "R_lookat_unoffset_RX_clamp";
	rename -uid "AC49E464-4FE4-2C8D-16B4-D497239A853C";
createNode multiplyDivide -n "NL_6162_sum_reverse";
	rename -uid "B5B8673B-4B7B-19F9-B9BA-DEB2AE85A83C";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "NL_6364_sum_reverse";
	rename -uid "8F37ABD0-4EFC-F10D-013F-1488C1EC0F13";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "NR_6162_sum_reverse";
	rename -uid "717AE9B9-408F-6C84-788F-8B98B73188F9";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "NR_6364_sum_reverse";
	rename -uid "2090EFD0-4054-D07B-D856-C3A255C61B7A";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode plusMinusAverage -n "L_convergence_subtract";
	rename -uid "F4D60B4C-406A-B31E-C70D-8E9D2CE3AC52";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode unitConversion -n "unitConversion34";
	rename -uid "92BCF1BE-47BA-908E-DED1-299A837ED619";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion35";
	rename -uid "27F1D078-43C4-6AD4-F53C-B6BA6ED89D30";
	setAttr ".cf" 57.295779513082323;
createNode plusMinusAverage -n "R_convergence_subtract";
	rename -uid "3EEC7239-4D0A-F6B4-ABBD-B9A6BDC8E5C2";
	setAttr ".op" 2;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode unitConversion -n "unitConversion36";
	rename -uid "2E38214C-4C3A-E745-854B-759C593BE0E2";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion37";
	rename -uid "9DA98B4B-4902-DF4E-3D66-22A6341CBB27";
	setAttr ".cf" 57.295779513082323;
createNode remapValue -n "L_convergence_RX_toNL61";
	rename -uid "698A64D7-4912-A5AA-D7C7-9E94EF73FF62";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "L_convergence_RX_toNL62";
	rename -uid "1CC516D6-4524-994F-7E1E-2784712C5D9C";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "L_convergence_RZ_toNL63";
	rename -uid "DC9AF84A-4B7B-3213-5FE4-1CA74F657836";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "L_convergence_RZ_toNL64";
	rename -uid "71088A52-4409-3865-09DE-85B86CE64BB6";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "R_convergence_RZ_toNR63";
	rename -uid "6956034E-4EC4-F877-63BF-A0AF8ED232C8";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "R_convergence_RZ_toNR64";
	rename -uid "C03B09CF-4704-D1C2-880B-6FA9A7F53B26";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "R_convergence_RX_toNR61";
	rename -uid "728B0CE6-45BE-1A0A-EFBC-C885C2149646";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "R_convergence_RX_toNR62";
	rename -uid "7C77E196-4D4B-B347-9902-36BAFCA9C2CA";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode blendColors -n "NR_62_convergence_blend";
	rename -uid "40E86D3C-45DA-E1C0-3231-1482767B5433";
createNode blendColors -n "NL_62_convergence_blend";
	rename -uid "027E3407-4602-D68C-2E5C-60841F5BFF5B";
createNode blendColors -n "NL_63_convergence_blend";
	rename -uid "25CC32A6-4667-73ED-5EBE-709BC929E740";
createNode blendColors -n "NR_61_convergence_blend";
	rename -uid "57F445AA-4862-6059-6548-86B941B97BFB";
createNode blendColors -n "NR_63_convergence_blend";
	rename -uid "2F96FCB2-4C45-6B9B-972D-4DB6BAE47A42";
createNode blendColors -n "NL_64_convergence_blend";
	rename -uid "87374D4E-44B3-C209-7E61-2588664BA2DD";
createNode blendColors -n "NL_61_convergence_blend";
	rename -uid "5FCAF53B-4DF1-019E-093B-DAAD9F818FE7";
createNode blendColors -n "NR_64_convergence_blend";
	rename -uid "40433461-45A4-6B3C-0762-76B698CC3B30";
createNode plusMinusAverage -n "NR63_add_convergence";
	rename -uid "16AE8E4B-4149-1764-13AC-9C92341DE5C6";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "NL63_add_convergence";
	rename -uid "3D1560D2-4451-7D88-0F98-7898E7413AEB";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "NR64_add_convergence";
	rename -uid "4427F31F-497E-499F-A951-A882415CB729";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "NL64_add_convergence";
	rename -uid "86C7F838-4866-057B-6AAB-FD841D9877EB";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "L_convergence_RZ_reverse";
	rename -uid "D60FE3E6-4F2E-2462-E497-B89E612800CF";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "L_convergence_RX_reverse";
	rename -uid "ED028BD8-4941-9D13-E271-84BC5CC05545";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "R_convergence_RZ_reverse";
	rename -uid "DCDD6BF2-4394-432B-C514-2D9C94D24005";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode multiplyDivide -n "R_convergence_RX_reverse";
	rename -uid "4B9DE6FB-41D4-B6FF-6054-D88FA6D3C21F";
	setAttr ".i2" -type "float3" -1 -1 -1 ;
createNode clamp -n "NL61_add_convergence_clamp";
	rename -uid "80785DB5-4115-87A0-B6C2-009771D2FD8A";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "NL62_add_convergence_clamp";
	rename -uid "95A8D8DA-4D49-D794-E55E-E48346C2D330";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "NL63_add_convergence_clamp";
	rename -uid "5DCA1D94-44B7-5E46-21D1-F096BACA34DD";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "NL64_add_convergence_clamp";
	rename -uid "3B83A1C4-4333-4AD4-0954-CF91AD2F820C";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "NR64_add_convergence_clamp";
	rename -uid "187FA169-4BC6-71E4-C2B2-A298804200F1";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "NR63_add_convergence_clamp";
	rename -uid "61F24107-4A07-A964-FEC7-B2BF2B24AB21";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "NR62_add_convergence_clamp";
	rename -uid "D2DACF02-41E1-98F0-188E-D88FCBAD8F39";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode clamp -n "NR61_add_convergence_clamp";
	rename -uid "D80C05F6-480C-5DEF-E359-26BF037F9172";
	setAttr ".mx" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "bright_yellow_md_value";
	rename -uid "3D962C15-4D4D-813B-7844-E2955E53E893";
	setAttr ".i1" -type "float3" 22 0 0 ;
createNode multiplyDivide -n "template_grey_md_value";
	rename -uid "44F4883A-4015-C82F-0B4A-099065F9C669";
	setAttr ".i1" -type "float3" 3 1 0 ;
createNode animCurveUU -n "convergence_enabled_remap_crv";
	rename -uid "2F09E60F-4392-45C1-9102-5BB4B5DB4C31";
	setAttr ".tan" 2;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.0099999997764825821 1 1 1;
	setAttr -s 3 ".ktl[0:2]" no no no;
	setAttr -s 3 ".kwl[0:2]" yes yes yes;
createNode plusMinusAverage -n "AU61_combined_average";
	rename -uid "9F7E7770-4080-8E0F-E364-419D3F070D55";
	setAttr ".op" 3;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "AU62_combined_average";
	rename -uid "742A414C-4089-8D2C-4E0C-A79E659FCB48";
	setAttr ".op" 3;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "AU64_combined_average";
	rename -uid "1798B559-4E28-D59F-F402-A1B97F43B5D6";
	setAttr ".op" 3;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "AU63_combined_average";
	rename -uid "8AA01560-47C1-BDBC-C343-29845BF6EADB";
	setAttr ".op" 3;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "AU6162_average_combined";
	rename -uid "A14662D7-49EB-B6DA-4B19-C9B404DA0595";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "AU6364_average_combined";
	rename -uid "604DED64-4F2A-EED0-5EA8-A5B95E1C0AF5";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode remapValue -n "NR63_remap";
	rename -uid "B2AD5AB4-4CF0-6D31-8C88-22868E4A15C5";
	setAttr ".omx" 10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "NL62_remap";
	rename -uid "EC1EF532-4D98-6357-3B2F-F9B36075DD32";
	setAttr ".omx" -10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "NL64_remap";
	rename -uid "F33E6519-4EFB-70FF-102F-16934E29171B";
	setAttr ".omx" -10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "NL61_remap";
	rename -uid "7E3B93A9-4F87-048B-7438-658C1E98C6A8";
	setAttr ".omx" 10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "NR64_remap";
	rename -uid "0E5EA5DE-4D54-6B70-34A8-0C93AF099789";
	setAttr ".omx" -10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "NR61_remap";
	rename -uid "D8354A56-4B39-DF45-228C-D0829622DD95";
	setAttr ".omx" 10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "NR62_remap";
	rename -uid "8FA96D34-4C69-7EEB-7E93-DAB33073ED7D";
	setAttr ".omx" -10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "NL63_remap";
	rename -uid "E5415771-482B-FD2E-5C71-38800AC58D36";
	setAttr ".omx" 10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode plusMinusAverage -n "NL6162_combined";
	rename -uid "6682EE2B-4E7E-997C-604F-D2B09D8FE008";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "NL6364_combined";
	rename -uid "BCBC70FB-4C0B-44AC-1429-34A64CA629F9";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "NR6162_combined";
	rename -uid "28343E74-4DD7-E387-3B82-BDB1F0918EC1";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "NR6364_combined";
	rename -uid "61BF711F-419A-5353-2E37-889047478EFD";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "AU6162_left_offset";
	rename -uid "BDA80AEF-4345-56E5-0AA8-A488A2F359BD";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "AU6364_left_offset";
	rename -uid "E1B97C79-4D1B-4DB6-0F99-6FB97646BE72";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "AU6162_right_offset";
	rename -uid "0A8038E6-46FC-E222-C6A0-F1A266CFAF13";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "AU6364_right_offset";
	rename -uid "62667F94-4E00-BF14-D045-0B992836B8D3";
	setAttr ".op" 2;
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "AU6364_right_offset_reverse";
	rename -uid "69BFB967-4297-AB4F-10D3-B9B80DF08120";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "AU6364_left_offset_reverse";
	rename -uid "CF094696-4BEB-A684-8E02-DCA24C52CC5C";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode remapValue -n "eyes_distance_remap";
	rename -uid "F2E6299A-4AB6-51B4-BE9C-089D53EF053A";
	setAttr ".imx" 10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "eyes_distance_reverse_remap";
	rename -uid "FF68CA3C-4743-CE6A-174E-E7B512E82E2B";
	setAttr ".imx" -10;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode multiplyDivide -n "eyes_distance_reverse";
	rename -uid "07BB54D5-4726-6068-F0BB-6FA4E7E2160B";
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode plusMinusAverage -n "convergence_normalized";
	rename -uid "E63DA85C-4A70-741D-D8AB-019403750B80";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode multiplyDivide -n "white_md_value";
	rename -uid "583E2234-4D83-2430-D0E2-47A50743F843";
	setAttr ".i1" -type "float3" 16 0 0 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "0F5DDA71-4E31-DDCC-820E-6196BEDC29A4";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 1024\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 1024\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 1024\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 1024\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 835\n            -height 720\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 0\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n"
		+ "                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n"
		+ "                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 1024\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 1024\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 835\\n    -height 720\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 1024\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 835\\n    -height 720\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "B30F0C4F-4DD2-59E6-D9E5-1EBA148616E5";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 30 -ast 0 -aet 200 ";
	setAttr ".st" 6;
createNode reverse -n "lookat_enabled_reverse";
	rename -uid "C6EF39D6-444C-7407-75CF-4BA59C2A4E83";
createNode remapValue -n "NL_61_pos";
	rename -uid "4A675ED3-4781-D397-D330-93A0768D6118";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "NL_62_neg_to_pos";
	rename -uid "41B72CF0-4E7A-E608-4503-19B1BB1DE575";
	setAttr ".imx" -1;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode plusMinusAverage -n "NL_61_62_add_convergence";
	rename -uid "376A920E-41A4-EE5F-1003-2ABD21A91976";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "NR_61_62_main_range";
	rename -uid "375B0FCF-43AC-BC9F-384B-56BC079CB93F";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "NL_61_62_main_range";
	rename -uid "17F4A290-48BA-F54B-F4F5-B8B546DBC9F3";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode plusMinusAverage -n "NL_61_62_convergence_range";
	rename -uid "5CC0C277-46A4-8A40-A648-98BFCE198404";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode remapValue -n "NR_61_pos";
	rename -uid "C2367BE0-4A73-B14F-B754-BE8F232CC16B";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode plusMinusAverage -n "NR_61_62_add_convergence";
	rename -uid "FBB8CC5C-4536-2070-0E2C-4CB1B1444EF2";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode remapValue -n "NL_62_convergence_neg_range";
	rename -uid "F0984291-466F-2B48-3C3E-EFBD0CC38FC3";
	setAttr ".omx" -1;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "NR_62_neg_to_pos";
	rename -uid "37503982-4492-56B6-6F4B-3484CD7E17DD";
	setAttr ".imx" -1;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "NL_61_convergence_pos_range";
	rename -uid "D7C1EE95-4FDF-5BDD-A646-7D807345F9D5";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "NR_61_convergence_pos_range";
	rename -uid "47F4D8AA-49A9-CC94-CB80-D099D60288AA";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode plusMinusAverage -n "NR_61_62_convergence_range";
	rename -uid "A853BD93-4A96-6A85-360E-DF855105823C";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode remapValue -n "NL_61_main_pos_range";
	rename -uid "B17951FC-474F-F72B-9EB8-E89BF23FBCA7";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "NL_62_main_neg_range";
	rename -uid "A2A31923-4FAE-8677-8BF8-7C9C610C6B8F";
	setAttr ".omx" -1;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "NR_62_main_neg_range";
	rename -uid "7097DC93-4B5D-7FA7-737E-7E9A48615996";
	setAttr ".omx" -1;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "NR_61_main_pos_range";
	rename -uid "622685A1-48F0-AD68-8E3A-53BC768270C7";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode remapValue -n "NR_62_convergence_neg_range";
	rename -uid "53C04CB8-407B-2728-D170-AF9DA022C316";
	setAttr ".omx" -1;
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "09C99AD2-4E7D-C44D-8750-AD9670565CE2";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1481.6284195089086 175.0224678071535 ;
	setAttr ".tgi[0].vh" -type "double2" -277.42677261358591 957.37538703921575 ;
	setAttr -s 29 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -3781.967529296875;
	setAttr ".tgi[0].ni[0].y" 1073.447265625;
	setAttr ".tgi[0].ni[0].nvs" 18312;
	setAttr ".tgi[0].ni[1].x" -1996.56640625;
	setAttr ".tgi[0].ni[1].y" 569.15728759765625;
	setAttr ".tgi[0].ni[1].nvs" 18313;
	setAttr ".tgi[0].ni[2].x" -1132.4400634765625;
	setAttr ".tgi[0].ni[2].y" 669.66107177734375;
	setAttr ".tgi[0].ni[2].nvs" 18313;
	setAttr ".tgi[0].ni[3].x" -2781.86767578125;
	setAttr ".tgi[0].ni[3].y" 915.44317626953125;
	setAttr ".tgi[0].ni[3].nvs" 18312;
	setAttr ".tgi[0].ni[4].x" -3783.648193359375;
	setAttr ".tgi[0].ni[4].y" 696.248046875;
	setAttr ".tgi[0].ni[4].nvs" 18312;
	setAttr ".tgi[0].ni[5].x" -1659.91650390625;
	setAttr ".tgi[0].ni[5].y" 849.303955078125;
	setAttr ".tgi[0].ni[5].nvs" 18312;
	setAttr ".tgi[0].ni[6].x" -1989.84375;
	setAttr ".tgi[0].ni[6].y" 1104.3397216796875;
	setAttr ".tgi[0].ni[6].nvs" 18313;
	setAttr ".tgi[0].ni[7].x" -4529.23828125;
	setAttr ".tgi[0].ni[7].y" 714.017578125;
	setAttr ".tgi[0].ni[7].nvs" 18313;
	setAttr ".tgi[0].ni[8].x" -3793.732421875;
	setAttr ".tgi[0].ni[8].y" 602.838134765625;
	setAttr ".tgi[0].ni[8].nvs" 18312;
	setAttr ".tgi[0].ni[9].x" -2724.724609375;
	setAttr ".tgi[0].ni[9].y" 416.1905517578125;
	setAttr ".tgi[0].ni[9].nvs" 18312;
	setAttr ".tgi[0].ni[10].x" -4528.2080078125;
	setAttr ".tgi[0].ni[10].y" 1504.0118408203125;
	setAttr ".tgi[0].ni[10].nvs" 18313;
	setAttr ".tgi[0].ni[11].x" -3792.738525390625;
	setAttr ".tgi[0].ni[11].y" 509.60043334960938;
	setAttr ".tgi[0].ni[11].nvs" 18312;
	setAttr ".tgi[0].ni[12].x" -3076.427978515625;
	setAttr ".tgi[0].ni[12].y" 917.3060302734375;
	setAttr ".tgi[0].ni[12].nvs" 18312;
	setAttr ".tgi[0].ni[13].x" -3760.8056640625;
	setAttr ".tgi[0].ni[13].y" 978.24285888671875;
	setAttr ".tgi[0].ni[13].nvs" 18312;
	setAttr ".tgi[0].ni[14].x" -1659.91650390625;
	setAttr ".tgi[0].ni[14].y" 952.53271484375;
	setAttr ".tgi[0].ni[14].nvs" 18312;
	setAttr ".tgi[0].ni[15].x" -2781.86767578125;
	setAttr ".tgi[0].ni[15].y" 1056.640625;
	setAttr ".tgi[0].ni[15].nvs" 18312;
	setAttr ".tgi[0].ni[16].x" -1988.1630859375;
	setAttr ".tgi[0].ni[16].y" 805.42431640625;
	setAttr ".tgi[0].ni[16].nvs" 18313;
	setAttr ".tgi[0].ni[17].x" -808.811279296875;
	setAttr ".tgi[0].ni[17].y" 609.45068359375;
	setAttr ".tgi[0].ni[17].nvs" 18313;
	setAttr ".tgi[0].ni[18].x" -1659.91650390625;
	setAttr ".tgi[0].ni[18].y" 1053.7374267578125;
	setAttr ".tgi[0].ni[18].nvs" 18312;
	setAttr ".tgi[0].ni[19].x" -3781.967529296875;
	setAttr ".tgi[0].ni[19].y" 1174.6519775390625;
	setAttr ".tgi[0].ni[19].nvs" 18312;
	setAttr ".tgi[0].ni[20].x" -3442.2998046875;
	setAttr ".tgi[0].ni[20].y" 960.72833251953125;
	setAttr ".tgi[0].ni[20].nvs" 18312;
	setAttr ".tgi[0].ni[21].x" -3110.384765625;
	setAttr ".tgi[0].ni[21].y" 534.99267578125;
	setAttr ".tgi[0].ni[21].nvs" 18312;
	setAttr ".tgi[0].ni[22].x" -2711.279296875;
	setAttr ".tgi[0].ni[22].y" 585.23065185546875;
	setAttr ".tgi[0].ni[22].nvs" 18312;
	setAttr ".tgi[0].ni[23].x" -3792.738525390625;
	setAttr ".tgi[0].ni[23].y" 412.44390869140625;
	setAttr ".tgi[0].ni[23].nvs" 18312;
	setAttr ".tgi[0].ni[24].x" -3475.226318359375;
	setAttr ".tgi[0].ni[24].y" 1093.6153564453125;
	setAttr ".tgi[0].ni[24].nvs" 18312;
	setAttr ".tgi[0].ni[25].x" -3470.87109375;
	setAttr ".tgi[0].ni[25].y" 475.98696899414063;
	setAttr ".tgi[0].ni[25].nvs" 18312;
	setAttr ".tgi[0].ni[26].x" -3476.906982421875;
	setAttr ".tgi[0].ni[26].y" 629.72894287109375;
	setAttr ".tgi[0].ni[26].nvs" 18312;
	setAttr ".tgi[0].ni[27].x" -1988.1630859375;
	setAttr ".tgi[0].ni[27].y" 1267.7293701171875;
	setAttr ".tgi[0].ni[27].nvs" 18313;
	setAttr ".tgi[0].ni[28].x" -3760.8056640625;
	setAttr ".tgi[0].ni[28].y" 875.01409912109375;
	setAttr ".tgi[0].ni[28].nvs" 18312;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 0;
	setAttr -av -k on ".unw";
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -k on ".ihi";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -av ".ta";
	setAttr ".etmr" no;
	setAttr ".tmr" 4096;
	setAttr -av ".aoam";
	setAttr -av ".aora";
	setAttr -av ".mbe";
	setAttr -av -k on ".mbsof";
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".st";
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
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 179 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
	setAttr -s 5 ".r";
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
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
	setAttr -k on ".ro" yes;
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -cb on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".macc";
	setAttr -k on ".macd";
	setAttr -k on ".macq";
	setAttr -k on ".mcfr" 30;
	setAttr -k on ".ifg";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr -k on ".ren";
	setAttr -av -k on ".esr";
	setAttr -k on ".ors";
	setAttr -k on ".sdf";
	setAttr -av -k on ".outf";
	setAttr -av -k on ".imfkey";
	setAttr -av -k on ".gama";
	setAttr -av -k on ".an";
	setAttr -k on ".ar";
	setAttr -k on ".fs";
	setAttr -k on ".ef";
	setAttr -av -k on ".bfs";
	setAttr -k on ".me";
	setAttr -k on ".se";
	setAttr -av -k on ".be";
	setAttr -av -cb on ".ep";
	setAttr -k on ".fec";
	setAttr -av -k on ".ofc";
	setAttr -k on ".ofe";
	setAttr -k on ".efe";
	setAttr -k on ".oft";
	setAttr -k on ".umfn";
	setAttr -k on ".ufe";
	setAttr -av -k on ".pff";
	setAttr -av -k on ".peie";
	setAttr -av -k on ".ifp";
	setAttr -k on ".rv";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".soll";
	setAttr -cb on ".sosl";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -k on ".shs";
	setAttr -av -k on ".lpr";
	setAttr -k on ".gv";
	setAttr -k on ".sv";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".itf";
	setAttr -k on ".shp";
	setAttr -k on ".isp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -k on ".mot";
	setAttr -av -k on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -k on ".mbso";
	setAttr -k on ".mbsc";
	setAttr -av -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -k on ".pram";
	setAttr -k on ".poam";
	setAttr -k on ".prlm";
	setAttr -k on ".polm";
	setAttr -k on ".prm";
	setAttr -k on ".pom";
	setAttr -k on ".pfrm";
	setAttr -k on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -av -k on ".bls";
	setAttr -av -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -k on ".mbt";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -k on ".isl";
	setAttr -k on ".ism";
	setAttr -k on ".imb";
	setAttr -av -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
	setAttr -k on ".jfc";
	setAttr -k on ".rsb";
	setAttr -k on ".ope";
	setAttr -k on ".oppf";
	setAttr -av -k on ".rcp";
	setAttr -av -k on ".icp";
	setAttr -av -k on ".ocp";
	setAttr -k on ".hbl";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -k on ".isu";
	setAttr -av -k on ".pdu";
select -ne :defaultColorMgtGlobals;
	setAttr ".cme" no;
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k off -cb on ".ctrs" 256;
	setAttr -av -k off -cb on ".btrs" 512;
	setAttr -k off -cb on ".fbfm";
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
	setAttr -k off -cb on ".enpt";
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
	setAttr -k on ".hwfr" 30;
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "hyperLayout2.msg" "asset_lookat.hl";
connectAttr "eye_contol_switch_remap_crv.o" "lookat_sightlines.v";
connectAttr "target_clu_pointConstraint1.ctx" "left_sightline_extension_target.tx"
		;
connectAttr "target_clu_pointConstraint1.cty" "left_sightline_extension_target.ty"
		;
connectAttr "target_clu_pointConstraint1.ctz" "left_sightline_extension_target.tz"
		;
connectAttr "left_sightline_extension_target.pim" "target_clu_pointConstraint1.cpim"
		;
connectAttr "left_sightline_extension_target.rp" "target_clu_pointConstraint1.crp"
		;
connectAttr "left_sightline_extension_target.rpt" "target_clu_pointConstraint1.crt"
		;
connectAttr "L_sightline_extend_target.t" "target_clu_pointConstraint1.tg[0].tt"
		;
connectAttr "L_sightline_extend_target.rp" "target_clu_pointConstraint1.tg[0].trp"
		;
connectAttr "L_sightline_extend_target.rpt" "target_clu_pointConstraint1.tg[0].trt"
		;
connectAttr "L_sightline_extend_target.pm" "target_clu_pointConstraint1.tg[0].tpm"
		;
connectAttr "target_clu_pointConstraint1.w0" "target_clu_pointConstraint1.tg[0].tw"
		;
connectAttr "start_clu_pointConstraint1.ctx" "left_sightline_extension_start.tx"
		;
connectAttr "start_clu_pointConstraint1.cty" "left_sightline_extension_start.ty"
		;
connectAttr "start_clu_pointConstraint1.ctz" "left_sightline_extension_start.tz"
		;
connectAttr "left_sightline_extension_start.pim" "start_clu_pointConstraint1.cpim"
		;
connectAttr "left_sightline_extension_start.rp" "start_clu_pointConstraint1.crp"
		;
connectAttr "left_sightline_extension_start.rpt" "start_clu_pointConstraint1.crt"
		;
connectAttr "L_sightline_extend_start.t" "start_clu_pointConstraint1.tg[0].tt";
connectAttr "L_sightline_extend_start.rp" "start_clu_pointConstraint1.tg[0].trp"
		;
connectAttr "L_sightline_extend_start.rpt" "start_clu_pointConstraint1.tg[0].trt"
		;
connectAttr "L_sightline_extend_start.pm" "start_clu_pointConstraint1.tg[0].tpm"
		;
connectAttr "start_clu_pointConstraint1.w0" "start_clu_pointConstraint1.tg[0].tw"
		;
connectAttr "right_sightline_extension_target_pointConstraint1.ctx" "right_sightline_extension_target.tx"
		;
connectAttr "right_sightline_extension_target_pointConstraint1.cty" "right_sightline_extension_target.ty"
		;
connectAttr "right_sightline_extension_target_pointConstraint1.ctz" "right_sightline_extension_target.tz"
		;
connectAttr "right_sightline_extension_target.pim" "right_sightline_extension_target_pointConstraint1.cpim"
		;
connectAttr "right_sightline_extension_target.rp" "right_sightline_extension_target_pointConstraint1.crp"
		;
connectAttr "right_sightline_extension_target.rpt" "right_sightline_extension_target_pointConstraint1.crt"
		;
connectAttr "R_sightline_extend_target.t" "right_sightline_extension_target_pointConstraint1.tg[0].tt"
		;
connectAttr "R_sightline_extend_target.rp" "right_sightline_extension_target_pointConstraint1.tg[0].trp"
		;
connectAttr "R_sightline_extend_target.rpt" "right_sightline_extension_target_pointConstraint1.tg[0].trt"
		;
connectAttr "R_sightline_extend_target.pm" "right_sightline_extension_target_pointConstraint1.tg[0].tpm"
		;
connectAttr "right_sightline_extension_target_pointConstraint1.w0" "right_sightline_extension_target_pointConstraint1.tg[0].tw"
		;
connectAttr "right_sightline_extension_start_pointConstraint1.ctx" "right_sightline_extension_start.tx"
		;
connectAttr "right_sightline_extension_start_pointConstraint1.cty" "right_sightline_extension_start.ty"
		;
connectAttr "right_sightline_extension_start_pointConstraint1.ctz" "right_sightline_extension_start.tz"
		;
connectAttr "right_sightline_extension_start.pim" "right_sightline_extension_start_pointConstraint1.cpim"
		;
connectAttr "right_sightline_extension_start.rp" "right_sightline_extension_start_pointConstraint1.crp"
		;
connectAttr "right_sightline_extension_start.rpt" "right_sightline_extension_start_pointConstraint1.crt"
		;
connectAttr "R_sightline_extend_start.t" "right_sightline_extension_start_pointConstraint1.tg[0].tt"
		;
connectAttr "R_sightline_extend_start.rp" "right_sightline_extension_start_pointConstraint1.tg[0].trp"
		;
connectAttr "R_sightline_extend_start.rpt" "right_sightline_extension_start_pointConstraint1.tg[0].trt"
		;
connectAttr "R_sightline_extend_start.pm" "right_sightline_extension_start_pointConstraint1.tg[0].tpm"
		;
connectAttr "right_sightline_extension_start_pointConstraint1.w0" "right_sightline_extension_start_pointConstraint1.tg[0].tw"
		;
connectAttr "cluster5GroupId.id" "left_eye_distanceShape.iog.og[0].gid";
connectAttr "cluster5Set.mwc" "left_eye_distanceShape.iog.og[0].gco";
connectAttr "groupId6.id" "left_eye_distanceShape.iog.og[1].gid";
connectAttr "tweakSet3.mwc" "left_eye_distanceShape.iog.og[1].gco";
connectAttr "cluster6GroupId.id" "left_eye_distanceShape.iog.og[2].gid";
connectAttr "cluster6Set.mwc" "left_eye_distanceShape.iog.og[2].gco";
connectAttr "left_eye_distance_endCluster.og[0]" "left_eye_distanceShape.cr";
connectAttr "tweak3.pl[0].cp[0]" "left_eye_distanceShape.twl";
connectAttr "cluster7GroupId.id" "right_eye_distanceShape.iog.og[0].gid";
connectAttr "cluster7Set.mwc" "right_eye_distanceShape.iog.og[0].gco";
connectAttr "groupId8.id" "right_eye_distanceShape.iog.og[1].gid";
connectAttr "tweakSet4.mwc" "right_eye_distanceShape.iog.og[1].gco";
connectAttr "cluster8GroupId.id" "right_eye_distanceShape.iog.og[2].gid";
connectAttr "cluster8Set.mwc" "right_eye_distanceShape.iog.og[2].gco";
connectAttr "right_eye_distance_endCluster.og[0]" "right_eye_distanceShape.cr";
connectAttr "tweak4.pl[0].cp[0]" "right_eye_distanceShape.twl";
connectAttr "eyes_distance_end_pointConstraint1.ctx" "eyes_distance_end.tx";
connectAttr "eyes_distance_end_pointConstraint1.cty" "eyes_distance_end.ty";
connectAttr "eyes_distance_end_pointConstraint1.ctz" "eyes_distance_end.tz";
connectAttr "eyes_distance_end.pim" "eyes_distance_end_pointConstraint1.cpim";
connectAttr "eyes_distance_end.rp" "eyes_distance_end_pointConstraint1.crp";
connectAttr "eyes_distance_end.rpt" "eyes_distance_end_pointConstraint1.crt";
connectAttr "lookat_ctl.t" "eyes_distance_end_pointConstraint1.tg[0].tt";
connectAttr "lookat_ctl.rp" "eyes_distance_end_pointConstraint1.tg[0].trp";
connectAttr "lookat_ctl.rpt" "eyes_distance_end_pointConstraint1.tg[0].trt";
connectAttr "lookat_ctl.pm" "eyes_distance_end_pointConstraint1.tg[0].tpm";
connectAttr "eyes_distance_end_pointConstraint1.w0" "eyes_distance_end_pointConstraint1.tg[0].tw"
		;
connectAttr "left_eye_distance_end_pointConstraint1.ctx" "left_eye_distance_end.tx"
		;
connectAttr "left_eye_distance_end_pointConstraint1.cty" "left_eye_distance_end.ty"
		;
connectAttr "left_eye_distance_end_pointConstraint1.ctz" "left_eye_distance_end.tz"
		;
connectAttr "left_eye_distance_end.pim" "left_eye_distance_end_pointConstraint1.cpim"
		;
connectAttr "left_eye_distance_end.rp" "left_eye_distance_end_pointConstraint1.crp"
		;
connectAttr "left_eye_distance_end.rpt" "left_eye_distance_end_pointConstraint1.crt"
		;
connectAttr "L_lookat_ctl.t" "left_eye_distance_end_pointConstraint1.tg[0].tt";
connectAttr "L_lookat_ctl.rp" "left_eye_distance_end_pointConstraint1.tg[0].trp"
		;
connectAttr "L_lookat_ctl.rpt" "left_eye_distance_end_pointConstraint1.tg[0].trt"
		;
connectAttr "L_lookat_ctl.pm" "left_eye_distance_end_pointConstraint1.tg[0].tpm"
		;
connectAttr "left_eye_distance_end_pointConstraint1.w0" "left_eye_distance_end_pointConstraint1.tg[0].tw"
		;
connectAttr "right_eye_distance_end_pointConstraint1.ctx" "right_eye_distance_end.tx"
		;
connectAttr "right_eye_distance_end_pointConstraint1.cty" "right_eye_distance_end.ty"
		;
connectAttr "right_eye_distance_end_pointConstraint1.ctz" "right_eye_distance_end.tz"
		;
connectAttr "right_eye_distance_end.pim" "right_eye_distance_end_pointConstraint1.cpim"
		;
connectAttr "right_eye_distance_end.rp" "right_eye_distance_end_pointConstraint1.crp"
		;
connectAttr "right_eye_distance_end.rpt" "right_eye_distance_end_pointConstraint1.crt"
		;
connectAttr "R_lookat_ctl.t" "right_eye_distance_end_pointConstraint1.tg[0].tt";
connectAttr "R_lookat_ctl.rp" "right_eye_distance_end_pointConstraint1.tg[0].trp"
		;
connectAttr "R_lookat_ctl.rpt" "right_eye_distance_end_pointConstraint1.tg[0].trt"
		;
connectAttr "R_lookat_ctl.pm" "right_eye_distance_end_pointConstraint1.tg[0].tpm"
		;
connectAttr "right_eye_distance_end_pointConstraint1.w0" "right_eye_distance_end_pointConstraint1.tg[0].tw"
		;
connectAttr "NLNR_6162_sum.o1" "lookat_output.Eyes_TX";
connectAttr "NLNR_6364_sum.o1" "lookat_output.Eyes_TY";
connectAttr "NL_6162_sum_reverse.ox" "lookat_output.LeftEye_TX";
connectAttr "NL_6364_sum_reverse.ox" "lookat_output.LeftEye_TY";
connectAttr "NR_6162_sum_reverse.ox" "lookat_output.RightEye_TX";
connectAttr "NR_6364_sum_reverse.ox" "lookat_output.RightEye_TY";
connectAttr "NLNR_6162_clamp.opr" "lookat_output.Eyes_RX";
connectAttr "NLNR_6364_clamp.opr" "lookat_output.Eyes_RZ";
connectAttr "NL_6162_reverse.ox" "lookat_output.LeftEye_RX";
connectAttr "NL_6364_reverse.ox" "lookat_output.LeftEye_RZ";
connectAttr "NR_6162_reverse.ox" "lookat_output.RightEye_RX";
connectAttr "NR_6364_reverse.ox" "lookat_output.RightEye_RZ";
connectAttr "R_lookat_unoffset_RX_clamp.opr" "lookat_output.RightEye_unoffset_RX"
		;
connectAttr "R_lookat_unoffset_RZ_clamp.opr" "lookat_output.RightEye_unoffset_RZ"
		;
connectAttr "L_lookat_unoffset_RX_clamp.opr" "lookat_output.LeftEye_unoffset_RX"
		;
connectAttr "L_lookat_unoffset_RZ_clamp.opr" "lookat_output.LeftEye_unoffset_RZ"
		;
connectAttr "L_convergence_RX_reverse.ox" "lookat_output.LeftEye_convergence_RX"
		;
connectAttr "R_convergence_RX_reverse.ox" "lookat_output.RightEye_convergence_RX"
		;
connectAttr "L_convergence_RZ_reverse.ox" "lookat_output.LeftEye_convergence_RZ"
		;
connectAttr "R_convergence_RZ_reverse.ox" "lookat_output.RightEye_convergence_RZ"
		;
connectAttr "l_aim_loc_to_NL_61_rmp.ov" "lookat_output.NL_61";
connectAttr "l_aim_loc_to_NL_62_rmp.ov" "lookat_output.NL_62";
connectAttr "l_aim_loc_to_NL_63_rmp.ov" "lookat_output.NL_63";
connectAttr "l_aim_loc_to_NL_64_rmp.ov" "lookat_output.NL_64";
connectAttr "l_aim_loc_to_NR_63_rmp.ov" "lookat_output.NR_63";
connectAttr "l_aim_loc_to_NR_62_rmp.ov" "lookat_output.NR_62";
connectAttr "l_aim_loc_to_NR_64_rmp.ov" "lookat_output.NR_64";
connectAttr "l_aim_loc_to_NR_61_rmp.ov" "lookat_output.NR_61";
connectAttr "L_eye_gaze_pos_x_to_NL_61.ov" "gaze_output.NL_61";
connectAttr "L_eye_gaze_neg_x_to_NL_62.ov" "gaze_output.NL_62";
connectAttr "au_eyes_ctl.look_at_enabled" "gaze_output.eyes_aim_val";
connectAttr "gaze_ctl_TX_to_eyes_RX.o1" "gaze_output.RightEye_unoffset_RX";
connectAttr "gaze_ctl_TY_to_eyes_RZ.o1" "gaze_output.RightEye_unoffset_RZ";
connectAttr "gaze_ctl_TX_to_eyes_RX.o1" "gaze_output.LeftEye_unoffset_RX";
connectAttr "gaze_ctl_TY_to_eyes_RZ.o1" "gaze_output.LeftEye_unoffset_RZ";
connectAttr "R_eye_gaze_pos_x_to_NR_61.ov" "gaze_output.NR_61";
connectAttr "R_eye_gaze_neg_x_to_NR_62.ov" "gaze_output.NR_62";
connectAttr "L_eye_gaze_pos_y_to_NL_63.ov" "gaze_output.NL_63";
connectAttr "L_eye_gaze_neg_y_to_NL_64.ov" "gaze_output.NL_64";
connectAttr "R_eye_gaze_pos_y_to_NR_63.ov" "gaze_output.NR_63";
connectAttr "R_eye_gaze_neg_y_to_NR_64.ov" "gaze_output.NR_64";
connectAttr "au_eyes_ctl.tx" "gaze_output.Eyes_TX";
connectAttr "au_eyes_ctl.ty" "gaze_output.Eyes_TY";
connectAttr "L_au_eyes_ctl.tx" "gaze_output.LeftEye_TX";
connectAttr "L_au_eyes_ctl.ty" "gaze_output.LeftEye_TY";
connectAttr "R_au_eyes_ctl.tx" "gaze_output.RightEye_TX";
connectAttr "R_au_eyes_ctl.ty" "gaze_output.RightEye_TY";
connectAttr "L_gaze_ctl_TX_to_left_eyes_RX.o1" "gaze_output.LeftEye_RX";
connectAttr "gaze_ctl_TX_to_eyes_RX.o1" "gaze_output.Eyes_RX";
connectAttr "L_gaze_ctl_TY_to_left_eye_RZ.o1" "gaze_output.LeftEye_RZ";
connectAttr "R_gaze_ctl_TX_to_right_eye_RX.o1" "gaze_output.RightEye_RX";
connectAttr "R_gaze_ctl_TY_to_right_eye_RZ.o1" "gaze_output.RightEye_RZ";
connectAttr "gaze_ctl_TY_to_eyes_RZ.o1" "gaze_output.Eyes_RZ";
connectAttr "eye_contol_switch_remap_crv.o" "lookat_ctl_grp.v";
connectAttr "EyeCenter_loc_aimConstraint1.crx" "EyeCenter_loc.rx";
connectAttr "EyeCenter_loc_aimConstraint1.cry" "EyeCenter_loc.ry";
connectAttr "EyeCenter_loc_aimConstraint1.crz" "EyeCenter_loc.rz";
connectAttr "EyeCenter_loc.pim" "EyeCenter_loc_aimConstraint1.cpim";
connectAttr "EyeCenter_loc.t" "EyeCenter_loc_aimConstraint1.ct";
connectAttr "EyeCenter_loc.rp" "EyeCenter_loc_aimConstraint1.crp";
connectAttr "EyeCenter_loc.rpt" "EyeCenter_loc_aimConstraint1.crt";
connectAttr "EyeCenter_loc.ro" "EyeCenter_loc_aimConstraint1.cro";
connectAttr "lookat_ctl.t" "EyeCenter_loc_aimConstraint1.tg[0].tt";
connectAttr "lookat_ctl.rp" "EyeCenter_loc_aimConstraint1.tg[0].trp";
connectAttr "lookat_ctl.rpt" "EyeCenter_loc_aimConstraint1.tg[0].trt";
connectAttr "lookat_ctl.pm" "EyeCenter_loc_aimConstraint1.tg[0].tpm";
connectAttr "EyeCenter_loc_aimConstraint1.w0" "EyeCenter_loc_aimConstraint1.tg[0].tw"
		;
connectAttr "EyeCenter_upVec.wm" "EyeCenter_loc_aimConstraint1.wum";
connectAttr "lookat_ctl_parent_grp_parentConstraint1.ctx" "lookat_ctl_parent_grp.tx"
		;
connectAttr "lookat_ctl_parent_grp_parentConstraint1.cty" "lookat_ctl_parent_grp.ty"
		;
connectAttr "lookat_ctl_parent_grp_parentConstraint1.ctz" "lookat_ctl_parent_grp.tz"
		;
connectAttr "lookat_ctl_parent_grp_parentConstraint1.crx" "lookat_ctl_parent_grp.rx"
		;
connectAttr "lookat_ctl_parent_grp_parentConstraint1.cry" "lookat_ctl_parent_grp.ry"
		;
connectAttr "lookat_ctl_parent_grp_parentConstraint1.crz" "lookat_ctl_parent_grp.rz"
		;
connectAttr "lookat_ctl_parent_grp.ro" "lookat_ctl_parent_grp_parentConstraint1.cro"
		;
connectAttr "lookat_ctl_parent_grp.pim" "lookat_ctl_parent_grp_parentConstraint1.cpim"
		;
connectAttr "lookat_ctl_parent_grp.rp" "lookat_ctl_parent_grp_parentConstraint1.crp"
		;
connectAttr "lookat_ctl_parent_grp.rpt" "lookat_ctl_parent_grp_parentConstraint1.crt"
		;
connectAttr "WorldSpace_parent_loc.t" "lookat_ctl_parent_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "WorldSpace_parent_loc.rp" "lookat_ctl_parent_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "WorldSpace_parent_loc.rpt" "lookat_ctl_parent_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "WorldSpace_parent_loc.r" "lookat_ctl_parent_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "WorldSpace_parent_loc.ro" "lookat_ctl_parent_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "WorldSpace_parent_loc.s" "lookat_ctl_parent_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "WorldSpace_parent_loc.pm" "lookat_ctl_parent_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "lookat_ctl_parent_grp_parentConstraint1.w0" "lookat_ctl_parent_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "LocalSpace_parent_loc.t" "lookat_ctl_parent_grp_parentConstraint1.tg[1].tt"
		;
connectAttr "LocalSpace_parent_loc.rp" "lookat_ctl_parent_grp_parentConstraint1.tg[1].trp"
		;
connectAttr "LocalSpace_parent_loc.rpt" "lookat_ctl_parent_grp_parentConstraint1.tg[1].trt"
		;
connectAttr "LocalSpace_parent_loc.r" "lookat_ctl_parent_grp_parentConstraint1.tg[1].tr"
		;
connectAttr "LocalSpace_parent_loc.ro" "lookat_ctl_parent_grp_parentConstraint1.tg[1].tro"
		;
connectAttr "LocalSpace_parent_loc.s" "lookat_ctl_parent_grp_parentConstraint1.tg[1].ts"
		;
connectAttr "LocalSpace_parent_loc.pm" "lookat_ctl_parent_grp_parentConstraint1.tg[1].tpm"
		;
connectAttr "lookat_ctl_parent_grp_parentConstraint1.w1" "lookat_ctl_parent_grp_parentConstraint1.tg[1].tw"
		;
connectAttr "lookat_world_remap_crv.o" "lookat_ctl_parent_grp_parentConstraint1.w0"
		;
connectAttr "lookat_local_remap_crv.o" "lookat_ctl_parent_grp_parentConstraint1.w1"
		;
connectAttr "bright_yellow_md_value.ox" "lookat_ctlShape.ovc";
connectAttr "lookat_local_remap_crv.o" "local_text_crv_grp.v";
connectAttr "lookat_world_remap_crv.o" "world_text_crv_grp.v";
connectAttr "R_absolute_direction_loc_pointConstraint1.ctx" "R_absolute_direction_loc.tx"
		;
connectAttr "R_absolute_direction_loc_pointConstraint1.cty" "R_absolute_direction_loc.ty"
		;
connectAttr "R_absolute_direction_loc_pointConstraint1.ctz" "R_absolute_direction_loc.tz"
		;
connectAttr "unitConversion24.o" "R_absolute_direction_loc.rx";
connectAttr "unitConversion23.o" "R_absolute_direction_loc.ry";
connectAttr "right_eye_distance_info.al" "R_absolute_position_loc.tz";
connectAttr "R_absolute_direction_loc.pim" "R_absolute_direction_loc_pointConstraint1.cpim"
		;
connectAttr "R_absolute_direction_loc.rp" "R_absolute_direction_loc_pointConstraint1.crp"
		;
connectAttr "R_absolute_direction_loc.rpt" "R_absolute_direction_loc_pointConstraint1.crt"
		;
connectAttr "R_lookat_loc.t" "R_absolute_direction_loc_pointConstraint1.tg[0].tt"
		;
connectAttr "R_lookat_loc.rp" "R_absolute_direction_loc_pointConstraint1.tg[0].trp"
		;
connectAttr "R_lookat_loc.rpt" "R_absolute_direction_loc_pointConstraint1.tg[0].trt"
		;
connectAttr "R_lookat_loc.pm" "R_absolute_direction_loc_pointConstraint1.tg[0].tpm"
		;
connectAttr "R_absolute_direction_loc_pointConstraint1.w0" "R_absolute_direction_loc_pointConstraint1.tg[0].tw"
		;
connectAttr "L_absolute_direction_loc_pointConstraint1.ctx" "L_absolute_direction_loc.tx"
		;
connectAttr "L_absolute_direction_loc_pointConstraint1.cty" "L_absolute_direction_loc.ty"
		;
connectAttr "L_absolute_direction_loc_pointConstraint1.ctz" "L_absolute_direction_loc.tz"
		;
connectAttr "unitConversion26.o" "L_absolute_direction_loc.rx";
connectAttr "unitConversion25.o" "L_absolute_direction_loc.ry";
connectAttr "left_eye_distance_info.al" "L_absolute_position_loc.tz";
connectAttr "L_absolute_direction_loc.pim" "L_absolute_direction_loc_pointConstraint1.cpim"
		;
connectAttr "L_absolute_direction_loc.rp" "L_absolute_direction_loc_pointConstraint1.crp"
		;
connectAttr "L_absolute_direction_loc.rpt" "L_absolute_direction_loc_pointConstraint1.crt"
		;
connectAttr "L_lookat_loc.t" "L_absolute_direction_loc_pointConstraint1.tg[0].tt"
		;
connectAttr "L_lookat_loc.rp" "L_absolute_direction_loc_pointConstraint1.tg[0].trp"
		;
connectAttr "L_lookat_loc.rpt" "L_absolute_direction_loc_pointConstraint1.tg[0].trt"
		;
connectAttr "L_lookat_loc.pm" "L_absolute_direction_loc_pointConstraint1.tg[0].tpm"
		;
connectAttr "L_absolute_direction_loc_pointConstraint1.w0" "L_absolute_direction_loc_pointConstraint1.tg[0].tw"
		;
connectAttr "C_absolute_eye_direction_loc_pointConstraint1.ctx" "C_absolute_direction_loc.tx"
		;
connectAttr "C_absolute_eye_direction_loc_pointConstraint1.cty" "C_absolute_direction_loc.ty"
		;
connectAttr "C_absolute_eye_direction_loc_pointConstraint1.ctz" "C_absolute_direction_loc.tz"
		;
connectAttr "unitConversion19.o" "C_absolute_direction_loc.ry";
connectAttr "unitConversion20.o" "C_absolute_direction_loc.rx";
connectAttr "eyes_distance_info.al" "C_absolute_position_loc.tz";
connectAttr "C_absolute_direction_loc.pim" "C_absolute_eye_direction_loc_pointConstraint1.cpim"
		;
connectAttr "C_absolute_direction_loc.rp" "C_absolute_eye_direction_loc_pointConstraint1.crp"
		;
connectAttr "C_absolute_direction_loc.rpt" "C_absolute_eye_direction_loc_pointConstraint1.crt"
		;
connectAttr "EyeCenter_loc.t" "C_absolute_eye_direction_loc_pointConstraint1.tg[0].tt"
		;
connectAttr "EyeCenter_loc.rp" "C_absolute_eye_direction_loc_pointConstraint1.tg[0].trp"
		;
connectAttr "EyeCenter_loc.rpt" "C_absolute_eye_direction_loc_pointConstraint1.tg[0].trt"
		;
connectAttr "EyeCenter_loc.pm" "C_absolute_eye_direction_loc_pointConstraint1.tg[0].tpm"
		;
connectAttr "C_absolute_eye_direction_loc_pointConstraint1.w0" "C_absolute_eye_direction_loc_pointConstraint1.tg[0].tw"
		;
connectAttr "eyes_distance_info.al" "convergence_distance.tz";
connectAttr "convergence_normalized.o1" "Converge_loc_offset.tz";
connectAttr "lookat_ctl.extendSightlineVis" "left_sightline_extension.v";
connectAttr "groupId10.id" "left_sightline_extensionShape.iog.og[4].gid";
connectAttr "tweakSet5.mwc" "left_sightline_extensionShape.iog.og[4].gco";
connectAttr "cluster9GroupId.id" "left_sightline_extensionShape.iog.og[6].gid";
connectAttr "cluster9Set.mwc" "left_sightline_extensionShape.iog.og[6].gco";
connectAttr "cluster10GroupId.id" "left_sightline_extensionShape.iog.og[7].gid";
connectAttr "cluster10Set.mwc" "left_sightline_extensionShape.iog.og[7].gco";
connectAttr "left_sightline_extension_targetCluster.og[0]" "left_sightline_extensionShape.cr"
		;
connectAttr "tweak5.pl[0].cp[0]" "left_sightline_extensionShape.twl";
connectAttr "lookat_ctl.extendSightlineVis" "right_sightline_extension.v";
connectAttr "cluster11GroupId.id" "right_sightline_extensionShape.iog.og[8].gid"
		;
connectAttr "cluster11Set.mwc" "right_sightline_extensionShape.iog.og[8].gco";
connectAttr "groupId12.id" "right_sightline_extensionShape.iog.og[9].gid";
connectAttr "tweakSet6.mwc" "right_sightline_extensionShape.iog.og[9].gco";
connectAttr "cluster12GroupId.id" "right_sightline_extensionShape.iog.og[10].gid"
		;
connectAttr "cluster12Set.mwc" "right_sightline_extensionShape.iog.og[10].gco";
connectAttr "right_sightline_extension_targetCluster.og[0]" "right_sightline_extensionShape.cr"
		;
connectAttr "tweak6.pl[0].cp[0]" "right_sightline_extensionShape.twl";
connectAttr "R_lookat_unoffset_loc_aimConstraint1.crx" "R_lookat_unoffset_loc.rx"
		;
connectAttr "R_lookat_unoffset_loc_aimConstraint1.cry" "R_lookat_unoffset_loc.ry"
		;
connectAttr "R_lookat_unoffset_loc_aimConstraint1.crz" "R_lookat_unoffset_loc.rz"
		;
connectAttr "R_lookat_unoffset_loc.pim" "R_lookat_unoffset_loc_aimConstraint1.cpim"
		;
connectAttr "R_lookat_unoffset_loc.t" "R_lookat_unoffset_loc_aimConstraint1.ct";
connectAttr "R_lookat_unoffset_loc.rp" "R_lookat_unoffset_loc_aimConstraint1.crp"
		;
connectAttr "R_lookat_unoffset_loc.rpt" "R_lookat_unoffset_loc_aimConstraint1.crt"
		;
connectAttr "R_lookat_unoffset_loc.ro" "R_lookat_unoffset_loc_aimConstraint1.cro"
		;
connectAttr "R_lookat_ctl_unoffset_grp.t" "R_lookat_unoffset_loc_aimConstraint1.tg[0].tt"
		;
connectAttr "R_lookat_ctl_unoffset_grp.rp" "R_lookat_unoffset_loc_aimConstraint1.tg[0].trp"
		;
connectAttr "R_lookat_ctl_unoffset_grp.rpt" "R_lookat_unoffset_loc_aimConstraint1.tg[0].trt"
		;
connectAttr "R_lookat_ctl_unoffset_grp.pm" "R_lookat_unoffset_loc_aimConstraint1.tg[0].tpm"
		;
connectAttr "R_lookat_unoffset_loc_aimConstraint1.w0" "R_lookat_unoffset_loc_aimConstraint1.tg[0].tw"
		;
connectAttr "R_Eye_upVec.wm" "R_lookat_unoffset_loc_aimConstraint1.wum";
connectAttr "R_lookat_loc_aimConstraint1.crx" "R_lookat_loc.rx";
connectAttr "R_lookat_loc_aimConstraint1.cry" "R_lookat_loc.ry";
connectAttr "R_lookat_loc_aimConstraint1.crz" "R_lookat_loc.rz";
connectAttr "R_lookat_loc.pim" "R_lookat_loc_aimConstraint1.cpim";
connectAttr "R_lookat_loc.t" "R_lookat_loc_aimConstraint1.ct";
connectAttr "R_lookat_loc.rp" "R_lookat_loc_aimConstraint1.crp";
connectAttr "R_lookat_loc.rpt" "R_lookat_loc_aimConstraint1.crt";
connectAttr "R_lookat_loc.ro" "R_lookat_loc_aimConstraint1.cro";
connectAttr "R_lookat_ctl.t" "R_lookat_loc_aimConstraint1.tg[0].tt";
connectAttr "R_lookat_ctl.rp" "R_lookat_loc_aimConstraint1.tg[0].trp";
connectAttr "R_lookat_ctl.rpt" "R_lookat_loc_aimConstraint1.tg[0].trt";
connectAttr "R_lookat_ctl.pm" "R_lookat_loc_aimConstraint1.tg[0].tpm";
connectAttr "R_lookat_loc_aimConstraint1.w0" "R_lookat_loc_aimConstraint1.tg[0].tw"
		;
connectAttr "R_Eye_upVec.wm" "R_lookat_loc_aimConstraint1.wum";
connectAttr "R_lookat_convergence_loc_aimConstraint1.crx" "R_lookat_convergence_loc.rx"
		;
connectAttr "R_lookat_convergence_loc_aimConstraint1.cry" "R_lookat_convergence_loc.ry"
		;
connectAttr "R_lookat_convergence_loc_aimConstraint1.crz" "R_lookat_convergence_loc.rz"
		;
connectAttr "R_lookat_convergence_loc.pim" "R_lookat_convergence_loc_aimConstraint1.cpim"
		;
connectAttr "R_lookat_convergence_loc.t" "R_lookat_convergence_loc_aimConstraint1.ct"
		;
connectAttr "R_lookat_convergence_loc.rp" "R_lookat_convergence_loc_aimConstraint1.crp"
		;
connectAttr "R_lookat_convergence_loc.rpt" "R_lookat_convergence_loc_aimConstraint1.crt"
		;
connectAttr "R_lookat_convergence_loc.ro" "R_lookat_convergence_loc_aimConstraint1.cro"
		;
connectAttr "Converge_loc.t" "R_lookat_convergence_loc_aimConstraint1.tg[0].tt";
connectAttr "Converge_loc.rp" "R_lookat_convergence_loc_aimConstraint1.tg[0].trp"
		;
connectAttr "Converge_loc.rpt" "R_lookat_convergence_loc_aimConstraint1.tg[0].trt"
		;
connectAttr "Converge_loc.pm" "R_lookat_convergence_loc_aimConstraint1.tg[0].tpm"
		;
connectAttr "R_lookat_convergence_loc_aimConstraint1.w0" "R_lookat_convergence_loc_aimConstraint1.tg[0].tw"
		;
connectAttr "R_Eye_upVec.wm" "R_lookat_convergence_loc_aimConstraint1.wum";
connectAttr "bright_red_md_value.ox" "R_lookat_ctlShape.ovc";
connectAttr "lookat_ctl.extendSightlineVis" "R_sightline_extend_grp.v";
connectAttr "lookat_ctl.extentSightLineDist" "R_sightline_extend_target.tz";
connectAttr "L_lookat_unoffset_loc_aimConstraint1.crx" "L_lookat_unoffset_loc.rx"
		;
connectAttr "L_lookat_unoffset_loc_aimConstraint1.cry" "L_lookat_unoffset_loc.ry"
		;
connectAttr "L_lookat_unoffset_loc_aimConstraint1.crz" "L_lookat_unoffset_loc.rz"
		;
connectAttr "L_lookat_unoffset_loc.pim" "L_lookat_unoffset_loc_aimConstraint1.cpim"
		;
connectAttr "L_lookat_unoffset_loc.t" "L_lookat_unoffset_loc_aimConstraint1.ct";
connectAttr "L_lookat_unoffset_loc.rp" "L_lookat_unoffset_loc_aimConstraint1.crp"
		;
connectAttr "L_lookat_unoffset_loc.rpt" "L_lookat_unoffset_loc_aimConstraint1.crt"
		;
connectAttr "L_lookat_unoffset_loc.ro" "L_lookat_unoffset_loc_aimConstraint1.cro"
		;
connectAttr "L_lookat_ctl_unoffset_grp.t" "L_lookat_unoffset_loc_aimConstraint1.tg[0].tt"
		;
connectAttr "L_lookat_ctl_unoffset_grp.rp" "L_lookat_unoffset_loc_aimConstraint1.tg[0].trp"
		;
connectAttr "L_lookat_ctl_unoffset_grp.rpt" "L_lookat_unoffset_loc_aimConstraint1.tg[0].trt"
		;
connectAttr "L_lookat_ctl_unoffset_grp.pm" "L_lookat_unoffset_loc_aimConstraint1.tg[0].tpm"
		;
connectAttr "L_lookat_unoffset_loc_aimConstraint1.w0" "L_lookat_unoffset_loc_aimConstraint1.tg[0].tw"
		;
connectAttr "L_Eye_upVec.wm" "L_lookat_unoffset_loc_aimConstraint1.wum";
connectAttr "L_lookat_loc_aimConstraint1.crx" "L_lookat_loc.rx";
connectAttr "L_lookat_loc_aimConstraint1.cry" "L_lookat_loc.ry";
connectAttr "L_lookat_loc_aimConstraint1.crz" "L_lookat_loc.rz";
connectAttr "L_lookat_loc.pim" "L_lookat_loc_aimConstraint1.cpim";
connectAttr "L_lookat_loc.t" "L_lookat_loc_aimConstraint1.ct";
connectAttr "L_lookat_loc.rp" "L_lookat_loc_aimConstraint1.crp";
connectAttr "L_lookat_loc.rpt" "L_lookat_loc_aimConstraint1.crt";
connectAttr "L_lookat_loc.ro" "L_lookat_loc_aimConstraint1.cro";
connectAttr "L_lookat_ctl.t" "L_lookat_loc_aimConstraint1.tg[0].tt";
connectAttr "L_lookat_ctl.rp" "L_lookat_loc_aimConstraint1.tg[0].trp";
connectAttr "L_lookat_ctl.rpt" "L_lookat_loc_aimConstraint1.tg[0].trt";
connectAttr "L_lookat_ctl.pm" "L_lookat_loc_aimConstraint1.tg[0].tpm";
connectAttr "L_lookat_loc_aimConstraint1.w0" "L_lookat_loc_aimConstraint1.tg[0].tw"
		;
connectAttr "L_Eye_upVec.wm" "L_lookat_loc_aimConstraint1.wum";
connectAttr "L_lookat_convergence_loc_aimConstraint1.crx" "L_lookat_convergence_loc.rx"
		;
connectAttr "L_lookat_convergence_loc_aimConstraint1.cry" "L_lookat_convergence_loc.ry"
		;
connectAttr "L_lookat_convergence_loc_aimConstraint1.crz" "L_lookat_convergence_loc.rz"
		;
connectAttr "L_lookat_convergence_loc.pim" "L_lookat_convergence_loc_aimConstraint1.cpim"
		;
connectAttr "L_lookat_convergence_loc.t" "L_lookat_convergence_loc_aimConstraint1.ct"
		;
connectAttr "L_lookat_convergence_loc.rp" "L_lookat_convergence_loc_aimConstraint1.crp"
		;
connectAttr "L_lookat_convergence_loc.rpt" "L_lookat_convergence_loc_aimConstraint1.crt"
		;
connectAttr "L_lookat_convergence_loc.ro" "L_lookat_convergence_loc_aimConstraint1.cro"
		;
connectAttr "Converge_loc.t" "L_lookat_convergence_loc_aimConstraint1.tg[0].tt";
connectAttr "Converge_loc.rp" "L_lookat_convergence_loc_aimConstraint1.tg[0].trp"
		;
connectAttr "Converge_loc.rpt" "L_lookat_convergence_loc_aimConstraint1.tg[0].trt"
		;
connectAttr "Converge_loc.pm" "L_lookat_convergence_loc_aimConstraint1.tg[0].tpm"
		;
connectAttr "L_lookat_convergence_loc_aimConstraint1.w0" "L_lookat_convergence_loc_aimConstraint1.tg[0].tw"
		;
connectAttr "L_Eye_upVec.wm" "L_lookat_convergence_loc_aimConstraint1.wum";
connectAttr "royal_blue_md_value.ox" "L_lookat_ctlShape.ovc";
connectAttr "lookat_ctl.extendSightlineVis" "L_sightline_extend_grp.v";
connectAttr "lookat_ctl.extentSightLineDist" "L_sightline_extend_target.tz";
connectAttr "AU6162_average_combined.o1" "plot_to_au_values.C_TX";
connectAttr "AU6364_average_combined.o1" "plot_to_au_values.C_TY";
connectAttr "AU6162_left_offset.o1" "plot_to_au_values.L_TX";
connectAttr "AU6364_left_offset_reverse.ox" "plot_to_au_values.L_TY";
connectAttr "AU6162_right_offset.o1" "plot_to_au_values.R_TX";
connectAttr "AU6364_right_offset_reverse.ox" "plot_to_au_values.R_TY";
connectAttr "eyes_distance_startCluster.og[0]" "eyes_distanceShape.cr";
connectAttr "tweak7.pl[0].cp[0]" "eyes_distanceShape.twl";
connectAttr "cluster13GroupId.id" "eyes_distanceShape.iog.og[0].gid";
connectAttr "cluster13Set.mwc" "eyes_distanceShape.iog.og[0].gco";
connectAttr "groupId14.id" "eyes_distanceShape.iog.og[1].gid";
connectAttr "tweakSet7.mwc" "eyes_distanceShape.iog.og[1].gco";
connectAttr "cluster14GroupId.id" "eyes_distanceShape.iog.og[2].gid";
connectAttr "cluster14Set.mwc" "eyes_distanceShape.iog.og[2].gco";
connectAttr "EyesTX_blend.opr" "eyes_combined_values.Eyes_TX";
connectAttr "EyesTY_blend.opr" "eyes_combined_values.Eyes_TY";
connectAttr "LeftEyeTX_blend.opr" "eyes_combined_values.LeftEye_TX";
connectAttr "LeftEyeTY_blend.opr" "eyes_combined_values.LeftEye_TY";
connectAttr "RightEyeTX_blend.opr" "eyes_combined_values.RightEye_TX";
connectAttr "RightEyeTY_blend.opr" "eyes_combined_values.RightEye_TY";
connectAttr "EyesRX_blend.opr" "eyes_combined_values.Eyes_RX";
connectAttr "EyesRZ_blend.opr" "eyes_combined_values.Eyes_RZ";
connectAttr "LeftEyeRX_blend.opr" "eyes_combined_values.LeftEye_RX";
connectAttr "LeftEyeRZ_blend.opr" "eyes_combined_values.LeftEye_RZ";
connectAttr "RightEyeRX_blend.opr" "eyes_combined_values.RightEye_RX";
connectAttr "RightEyeRZ_blend.opr" "eyes_combined_values.RightEye_RZ";
connectAttr "RightEye_unoffset_RX_blend.opr" "eyes_combined_values.RightEye_unoffset_RX"
		;
connectAttr "RightEye_unoffset_RZ_blend.opr" "eyes_combined_values.RightEye_unoffset_RZ"
		;
connectAttr "LeftEye_unoffset_RX_blend.opr" "eyes_combined_values.LeftEye_unoffset_RX"
		;
connectAttr "LeftEye_unoffset_RZ_blend.opr" "eyes_combined_values.LeftEye_unoffset_RZ"
		;
connectAttr "NL_61_blend.opr" "eyes_combined_values.NL_61";
connectAttr "NL_62_blend.opr" "eyes_combined_values.NL_62";
connectAttr "NL_64_blend.opr" "eyes_combined_values.NL_64";
connectAttr "NR_61_blend.opr" "eyes_combined_values.NR_61";
connectAttr "NR_62_blend.opr" "eyes_combined_values.NR_62";
connectAttr "NR_63_blend.opr" "eyes_combined_values.NR_63";
connectAttr "NR_64_blend.opr" "eyes_combined_values.NR_64";
connectAttr "NL_63_blend.opr" "eyes_combined_values.NL_63";
connectAttr "L_convergence_RX_toNL61.ov" "convergence_output.NL_61";
connectAttr "L_convergence_RX_toNL62.ov" "convergence_output.NL_62";
connectAttr "L_convergence_RZ_toNL63.ov" "convergence_output.NL_63";
connectAttr "L_convergence_RZ_toNL64.ov" "convergence_output.NL_64";
connectAttr "R_convergence_RX_toNR61.ov" "convergence_output.NR_61";
connectAttr "R_convergence_RX_toNR62.ov" "convergence_output.NR_62";
connectAttr "R_convergence_RZ_toNR63.ov" "convergence_output.NR_63";
connectAttr "R_convergence_RZ_toNR64.ov" "convergence_output.NR_64";
connectAttr "lookat_enabled_reverse.ox" "au_eyes_ctl.v";
connectAttr "lookat_ctl.convergence_enabled" "au_eyes_ctl.convergence_enabled";
connectAttr "lookat_ctl.convergence_offset" "au_eyes_ctl.convergenceOffset";
connectAttr "bright_yellow_md_value.ox" "au_eyes_ctlShape.ovc";
connectAttr "template_grey_md_value.ox" "au_eyes_ctlShape2.ovc";
connectAttr "template_grey_md_value.oy" "au_eyes_ctlShape2.ovdt";
connectAttr "template_grey_md_value.ox" "au_eyes_ctlShape4.ovc";
connectAttr "template_grey_md_value.oy" "au_eyes_ctlShape4.ovdt";
connectAttr "bright_red_md_value.ox" "R_au_eyes_ctlShape.ovc";
connectAttr "royal_blue_md_value.ox" "L_au_eyes_ctlShape.ovc";
connectAttr "NL_61_convergence_blend.opr" "hlp_control_lookat_output.NL_61";
connectAttr "NL_62_convergence_blend.opr" "hlp_control_lookat_output.NL_62";
connectAttr "NL_63_convergence_blend.opr" "hlp_control_lookat_output.NL_63";
connectAttr "NL_64_convergence_blend.opr" "hlp_control_lookat_output.NL_64";
connectAttr "NR_61_convergence_blend.opr" "hlp_control_lookat_output.NR_61";
connectAttr "NR_62_convergence_blend.opr" "hlp_control_lookat_output.NR_62";
connectAttr "NR_63_convergence_blend.opr" "hlp_control_lookat_output.NR_63";
connectAttr "NR_64_convergence_blend.opr" "hlp_control_lookat_output.NR_64";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "lookat_output.NL_64" "NL_64_blend.c1r";
connectAttr "gaze_output.NL_64" "NL_64_blend.c2r";
connectAttr "eye_contol_switch_remap_crv.o" "NL_64_blend.b";
connectAttr "lookat_output.NL_61" "NL_61_blend.c1r";
connectAttr "gaze_output.NL_61" "NL_61_blend.c2r";
connectAttr "eye_contol_switch_remap_crv.o" "NL_61_blend.b";
connectAttr "lookat_output.NL_62" "NL_62_blend.c1r";
connectAttr "gaze_output.NL_62" "NL_62_blend.c2r";
connectAttr "eye_contol_switch_remap_crv.o" "NL_62_blend.b";
connectAttr "lookat_output.NR_63" "NR_63_blend.c1r";
connectAttr "gaze_output.NR_63" "NR_63_blend.c2r";
connectAttr "eye_contol_switch_remap_crv.o" "NR_63_blend.b";
connectAttr "lookat_output.NR_62" "NR_62_blend.c1r";
connectAttr "gaze_output.NR_62" "NR_62_blend.c2r";
connectAttr "eye_contol_switch_remap_crv.o" "NR_62_blend.b";
connectAttr "lookat_output.NR_64" "NR_64_blend.c1r";
connectAttr "gaze_output.NR_64" "NR_64_blend.c2r";
connectAttr "eye_contol_switch_remap_crv.o" "NR_64_blend.b";
connectAttr "lookat_output.NR_61" "NR_61_blend.c1r";
connectAttr "gaze_output.NR_61" "NR_61_blend.c2r";
connectAttr "eye_contol_switch_remap_crv.o" "NR_61_blend.b";
connectAttr "lookat_output.NL_63" "NL_63_blend.c1r";
connectAttr "gaze_output.NL_63" "NL_63_blend.c2r";
connectAttr "eye_contol_switch_remap_crv.o" "NL_63_blend.b";
connectAttr "gaze_output.eyes_aim_val" "eye_contol_switch_remap_crv.i";
connectAttr "lookat_custom_range_plug.NL_63_Max" "l_aim_loc_to_NL_63_rmp.imx";
connectAttr "lookat_custom_range_plug.NL_63_Min" "l_aim_loc_to_NL_63_rmp.imn";
connectAttr "unitConversion3.o" "l_aim_loc_to_NL_63_rmp.i";
connectAttr "lookat_custom_range_plug.NL_64_Max" "l_aim_loc_to_NL_64_rmp.imx";
connectAttr "lookat_custom_range_plug.NL_64_Min" "l_aim_loc_to_NL_64_rmp.imn";
connectAttr "unitConversion4.o" "l_aim_loc_to_NL_64_rmp.i";
connectAttr "lookat_custom_range_plug.NL_62_Max" "l_aim_loc_to_NL_62_rmp.imx";
connectAttr "lookat_custom_range_plug.NL_62_Min" "l_aim_loc_to_NL_62_rmp.imn";
connectAttr "unitConversion2.o" "l_aim_loc_to_NL_62_rmp.i";
connectAttr "lookat_custom_range_plug.NL_61_Max" "l_aim_loc_to_NL_61_rmp.imx";
connectAttr "lookat_custom_range_plug.NL_61_Min" "l_aim_loc_to_NL_61_rmp.imn";
connectAttr "unitConversion1.o" "l_aim_loc_to_NL_61_rmp.i";
connectAttr "lookat_custom_range_plug.NR_62_Max" "l_aim_loc_to_NR_62_rmp.imx";
connectAttr "lookat_custom_range_plug.NR_62_Min" "l_aim_loc_to_NR_62_rmp.imn";
connectAttr "unitConversion6.o" "l_aim_loc_to_NR_62_rmp.i";
connectAttr "lookat_custom_range_plug.NR_64_Max" "l_aim_loc_to_NR_64_rmp.imx";
connectAttr "lookat_custom_range_plug.NR_64_Min" "l_aim_loc_to_NR_64_rmp.imn";
connectAttr "unitConversion8.o" "l_aim_loc_to_NR_64_rmp.i";
connectAttr "lookat_custom_range_plug.NR_61_Max" "l_aim_loc_to_NR_61_rmp.imx";
connectAttr "lookat_custom_range_plug.NR_61_Min" "l_aim_loc_to_NR_61_rmp.imn";
connectAttr "unitConversion5.o" "l_aim_loc_to_NR_61_rmp.i";
connectAttr "lookat_custom_range_plug.NR_63_Max" "l_aim_loc_to_NR_63_rmp.imx";
connectAttr "lookat_custom_range_plug.NR_63_Min" "l_aim_loc_to_NR_63_rmp.imn";
connectAttr "unitConversion7.o" "l_aim_loc_to_NR_63_rmp.i";
connectAttr "cluster14GroupParts.msg" "hyperLayout2.hyp[214].dn";
connectAttr "groupParts14.msg" "hyperLayout2.hyp[223].dn";
connectAttr "cluster13GroupParts.msg" "hyperLayout2.hyp[225].dn";
connectAttr "cluster5Set.msg" "hyperLayout2.hyp[226].dn";
connectAttr "cluster7Set.msg" "hyperLayout2.hyp[227].dn";
connectAttr "cluster8Set.msg" "hyperLayout2.hyp[228].dn";
connectAttr "cluster6Set.msg" "hyperLayout2.hyp[229].dn";
connectAttr "cluster10Set.msg" "hyperLayout2.hyp[230].dn";
connectAttr "cluster12Set.msg" "hyperLayout2.hyp[231].dn";
connectAttr "cluster11Set.msg" "hyperLayout2.hyp[232].dn";
connectAttr "cluster14Set.msg" "hyperLayout2.hyp[233].dn";
connectAttr "cluster13Set.msg" "hyperLayout2.hyp[234].dn";
connectAttr "cluster9Set.msg" "hyperLayout2.hyp[235].dn";
connectAttr "cluster8GroupId.msg" "hyperLayout2.hyp[236].dn";
connectAttr "cluster5GroupId.msg" "hyperLayout2.hyp[237].dn";
connectAttr "unitConversion9.msg" "hyperLayout2.hyp[238].dn";
connectAttr "cluster11GroupId.msg" "hyperLayout2.hyp[239].dn";
connectAttr "cluster10GroupId.msg" "hyperLayout2.hyp[242].dn";
connectAttr "cluster7GroupId.msg" "hyperLayout2.hyp[243].dn";
connectAttr "unitConversion15.msg" "hyperLayout2.hyp[244].dn";
connectAttr "cluster12GroupId.msg" "hyperLayout2.hyp[246].dn";
connectAttr "unitConversion17.msg" "hyperLayout2.hyp[248].dn";
connectAttr "cluster13GroupId.msg" "hyperLayout2.hyp[249].dn";
connectAttr "groupId14.msg" "hyperLayout2.hyp[250].dn";
connectAttr "groupId10.msg" "hyperLayout2.hyp[251].dn";
connectAttr "cluster9GroupId.msg" "hyperLayout2.hyp[253].dn";
connectAttr "groupId8.msg" "hyperLayout2.hyp[254].dn";
connectAttr "groupId6.msg" "hyperLayout2.hyp[255].dn";
connectAttr "cluster6GroupId.msg" "hyperLayout2.hyp[256].dn";
connectAttr "groupId12.msg" "hyperLayout2.hyp[257].dn";
connectAttr "unitConversion18.msg" "hyperLayout2.hyp[258].dn";
connectAttr "cluster14GroupId.msg" "hyperLayout2.hyp[259].dn";
connectAttr "unitConversion30.msg" "hyperLayout2.hyp[260].dn";
connectAttr "unitConversion32.msg" "hyperLayout2.hyp[261].dn";
connectAttr "unitConversion33.msg" "hyperLayout2.hyp[262].dn";
connectAttr "unitConversion28.msg" "hyperLayout2.hyp[263].dn";
connectAttr "unitConversion29.msg" "hyperLayout2.hyp[264].dn";
connectAttr "unitConversion31.msg" "hyperLayout2.hyp[265].dn";
connectAttr "groupParts12.msg" "hyperLayout2.hyp[266].dn";
connectAttr "cluster9GroupParts.msg" "hyperLayout2.hyp[267].dn";
connectAttr "cluster6GroupParts.msg" "hyperLayout2.hyp[268].dn";
connectAttr "groupParts10.msg" "hyperLayout2.hyp[269].dn";
connectAttr "groupParts6.msg" "hyperLayout2.hyp[270].dn";
connectAttr "cluster7GroupParts.msg" "hyperLayout2.hyp[271].dn";
connectAttr "cluster10GroupParts.msg" "hyperLayout2.hyp[272].dn";
connectAttr "cluster12GroupParts.msg" "hyperLayout2.hyp[273].dn";
connectAttr "cluster5GroupParts.msg" "hyperLayout2.hyp[274].dn";
connectAttr "cluster8GroupParts.msg" "hyperLayout2.hyp[276].dn";
connectAttr "cluster11GroupParts.msg" "hyperLayout2.hyp[279].dn";
connectAttr "groupParts8.msg" "hyperLayout2.hyp[281].dn";
connectAttr "unitConversion34.msg" "hyperLayout2.hyp[313].dn";
connectAttr "unitConversion37.msg" "hyperLayout2.hyp[314].dn";
connectAttr "unitConversion35.msg" "hyperLayout2.hyp[315].dn";
connectAttr "unitConversion36.msg" "hyperLayout2.hyp[316].dn";
connectAttr "unitConversion11.msg" "hyperLayout2.hyp[347].dn";
connectAttr "unitConversion12.msg" "hyperLayout2.hyp[348].dn";
connectAttr "unitConversion26.msg" "hyperLayout2.hyp[349].dn";
connectAttr "unitConversion13.msg" "hyperLayout2.hyp[350].dn";
connectAttr "unitConversion14.msg" "hyperLayout2.hyp[351].dn";
connectAttr "unitConversion23.msg" "hyperLayout2.hyp[352].dn";
connectAttr "unitConversion24.msg" "hyperLayout2.hyp[353].dn";
connectAttr "unitConversion25.msg" "hyperLayout2.hyp[354].dn";
connectAttr "unitConversion3.msg" "hyperLayout2.hyp[391].dn";
connectAttr "unitConversion1.msg" "hyperLayout2.hyp[392].dn";
connectAttr "unitConversion8.msg" "hyperLayout2.hyp[393].dn";
connectAttr "unitConversion5.msg" "hyperLayout2.hyp[394].dn";
connectAttr "unitConversion4.msg" "hyperLayout2.hyp[395].dn";
connectAttr "unitConversion7.msg" "hyperLayout2.hyp[396].dn";
connectAttr "unitConversion2.msg" "hyperLayout2.hyp[397].dn";
connectAttr "unitConversion6.msg" "hyperLayout2.hyp[398].dn";
connectAttr "lookat_sightlines.msg" "hyperLayout2.hyp[399].dn";
connectAttr "left_sightline_extension.msg" "hyperLayout2.hyp[400].dn";
connectAttr "left_sightline_extensionShape.msg" "hyperLayout2.hyp[401].dn";
connectAttr "left_sightline_extensionShape113Orig.msg" "hyperLayout2.hyp[402].dn"
		;
connectAttr "right_sightline_extension.msg" "hyperLayout2.hyp[403].dn";
connectAttr "right_sightline_extensionShape.msg" "hyperLayout2.hyp[404].dn";
connectAttr "right_sightline_extensionShape113Orig.msg" "hyperLayout2.hyp[405].dn"
		;
connectAttr "right_sightline_extensionShapeOrig.msg" "hyperLayout2.hyp[406].dn";
connectAttr "left_sightline_extension_target.msg" "hyperLayout2.hyp[407].dn";
connectAttr "left_sightline_extension_targetShape.msg" "hyperLayout2.hyp[408].dn"
		;
connectAttr "target_clu_pointConstraint1.msg" "hyperLayout2.hyp[409].dn";
connectAttr "left_sightline_extension_start.msg" "hyperLayout2.hyp[410].dn";
connectAttr "left_sightline_extension_startShape.msg" "hyperLayout2.hyp[411].dn"
		;
connectAttr "start_clu_pointConstraint1.msg" "hyperLayout2.hyp[412].dn";
connectAttr "right_sightline_extension_target.msg" "hyperLayout2.hyp[413].dn";
connectAttr "right_sightline_extension_targetShape.msg" "hyperLayout2.hyp[414].dn"
		;
connectAttr "right_sightline_extension_target_pointConstraint1.msg" "hyperLayout2.hyp[415].dn"
		;
connectAttr "right_sightline_extension_start.msg" "hyperLayout2.hyp[416].dn";
connectAttr "right_sightline_extension_startShape.msg" "hyperLayout2.hyp[417].dn"
		;
connectAttr "right_sightline_extension_start_pointConstraint1.msg" "hyperLayout2.hyp[418].dn"
		;
connectAttr "eyes_distance.msg" "hyperLayout2.hyp[419].dn";
connectAttr "eyes_distanceShape.msg" "hyperLayout2.hyp[420].dn";
connectAttr "eyes_distanceShape113Orig.msg" "hyperLayout2.hyp[421].dn";
connectAttr "left_eye_distance.msg" "hyperLayout2.hyp[422].dn";
connectAttr "left_eye_distanceShape.msg" "hyperLayout2.hyp[423].dn";
connectAttr "left_eye_distanceShapeOrig.msg" "hyperLayout2.hyp[424].dn";
connectAttr "right_eye_distance.msg" "hyperLayout2.hyp[425].dn";
connectAttr "right_eye_distanceShape.msg" "hyperLayout2.hyp[426].dn";
connectAttr "right_eye_distanceShapeOrig.msg" "hyperLayout2.hyp[427].dn";
connectAttr "eyes_distance_start.msg" "hyperLayout2.hyp[428].dn";
connectAttr "eyes_distance_startShape.msg" "hyperLayout2.hyp[429].dn";
connectAttr "eyes_distance_end.msg" "hyperLayout2.hyp[430].dn";
connectAttr "eyes_distance_endShape.msg" "hyperLayout2.hyp[431].dn";
connectAttr "eyes_distance_end_pointConstraint1.msg" "hyperLayout2.hyp[432].dn";
connectAttr "left_eye_distance_start.msg" "hyperLayout2.hyp[433].dn";
connectAttr "left_eye_distance_startShape.msg" "hyperLayout2.hyp[434].dn";
connectAttr "right_eye_distance_start.msg" "hyperLayout2.hyp[435].dn";
connectAttr "right_eye_distance_startShape.msg" "hyperLayout2.hyp[436].dn";
connectAttr "left_eye_distance_end.msg" "hyperLayout2.hyp[437].dn";
connectAttr "left_eye_distance_endShape.msg" "hyperLayout2.hyp[438].dn";
connectAttr "left_eye_distance_end_pointConstraint1.msg" "hyperLayout2.hyp[439].dn"
		;
connectAttr "right_eye_distance_end.msg" "hyperLayout2.hyp[440].dn";
connectAttr "right_eye_distance_endShape.msg" "hyperLayout2.hyp[441].dn";
connectAttr "right_eye_distance_end_pointConstraint1.msg" "hyperLayout2.hyp[442].dn"
		;
connectAttr "lookat_output.msg" "hyperLayout2.hyp[445].dn";
connectAttr "gaze_output.msg" "hyperLayout2.hyp[446].dn";
connectAttr "lookat_custom_range_plug.msg" "hyperLayout2.hyp[448].dn";
connectAttr "grp_controls_lookat.msg" "hyperLayout2.hyp[449].dn";
connectAttr "lookat_rig_grp.msg" "hyperLayout2.hyp[450].dn";
connectAttr "lookat_ctl_grp.msg" "hyperLayout2.hyp[451].dn";
connectAttr "lookat_system_orient.msg" "hyperLayout2.hyp[452].dn";
connectAttr "EyeCenter_loc_grp.msg" "hyperLayout2.hyp[453].dn";
connectAttr "EyeCenter_loc.msg" "hyperLayout2.hyp[454].dn";
connectAttr "EyeCenter_locShape.msg" "hyperLayout2.hyp[455].dn";
connectAttr "EyeCenter_loc_aimConstraint1.msg" "hyperLayout2.hyp[456].dn";
connectAttr "EyeCenter_upVec_grp.msg" "hyperLayout2.hyp[457].dn";
connectAttr "EyeCenter_upVec.msg" "hyperLayout2.hyp[458].dn";
connectAttr "EyeCenter_upVecShape.msg" "hyperLayout2.hyp[459].dn";
connectAttr "WorldSpace_parent_loc_placement.msg" "hyperLayout2.hyp[460].dn";
connectAttr "WorldSpace_parent_loc_grp.msg" "hyperLayout2.hyp[461].dn";
connectAttr "WorldSpace_parent_loc.msg" "hyperLayout2.hyp[462].dn";
connectAttr "WorldSpace_parent_locShape.msg" "hyperLayout2.hyp[463].dn";
connectAttr "LocalSpace_parent_loc_placement.msg" "hyperLayout2.hyp[464].dn";
connectAttr "LocalSpace_parent_loc_grp.msg" "hyperLayout2.hyp[465].dn";
connectAttr "LocalSpace_parent_loc.msg" "hyperLayout2.hyp[466].dn";
connectAttr "LocalSpace_parent_locShape.msg" "hyperLayout2.hyp[467].dn";
connectAttr "lookat_ctl_parent_grp.msg" "hyperLayout2.hyp[468].dn";
connectAttr "lookat_ctl_parent_grp_parentConstraint1.msg" "hyperLayout2.hyp[469].dn"
		;
connectAttr "lookat_ctl_placement.msg" "hyperLayout2.hyp[470].dn";
connectAttr "lookat_ctl_unoffset_grp.msg" "hyperLayout2.hyp[471].dn";
connectAttr "lookat_ctl_offset2.msg" "hyperLayout2.hyp[472].dn";
connectAttr "lookat_ctl_offset3.msg" "hyperLayout2.hyp[473].dn";
connectAttr "lookat_ctl_offset4.msg" "hyperLayout2.hyp[474].dn";
connectAttr "lookat_ctl.msg" "hyperLayout2.hyp[475].dn";
connectAttr "lookat_ctlShape.msg" "hyperLayout2.hyp[476].dn";
connectAttr "local_text_crv_grp.msg" "hyperLayout2.hyp[477].dn";
connectAttr "local_text_crv.msg" "hyperLayout2.hyp[478].dn";
connectAttr "local_text_crvShape.msg" "hyperLayout2.hyp[479].dn";
connectAttr "curveShape107.msg" "hyperLayout2.hyp[480].dn";
connectAttr "curveShape108.msg" "hyperLayout2.hyp[481].dn";
connectAttr "curveShape109.msg" "hyperLayout2.hyp[482].dn";
connectAttr "curveShape110.msg" "hyperLayout2.hyp[483].dn";
connectAttr "curveShape111.msg" "hyperLayout2.hyp[484].dn";
connectAttr "curveShape112.msg" "hyperLayout2.hyp[485].dn";
connectAttr "world_text_crv_grp.msg" "hyperLayout2.hyp[486].dn";
connectAttr "world_text_crv.msg" "hyperLayout2.hyp[487].dn";
connectAttr "world_text_crvShape.msg" "hyperLayout2.hyp[488].dn";
connectAttr "curveShape99.msg" "hyperLayout2.hyp[489].dn";
connectAttr "curveShape100.msg" "hyperLayout2.hyp[490].dn";
connectAttr "curveShape101.msg" "hyperLayout2.hyp[491].dn";
connectAttr "curveShape102.msg" "hyperLayout2.hyp[492].dn";
connectAttr "curveShape103.msg" "hyperLayout2.hyp[493].dn";
connectAttr "curveShape104.msg" "hyperLayout2.hyp[494].dn";
connectAttr "curveShape105.msg" "hyperLayout2.hyp[495].dn";
connectAttr "Eyes_world_translate_vals.msg" "hyperLayout2.hyp[496].dn";
connectAttr "calculate_plot_to_lookat.msg" "hyperLayout2.hyp[497].dn";
connectAttr "R_absolute_direction_constrained_grp.msg" "hyperLayout2.hyp[498].dn"
		;
connectAttr "R_absolute_direction_loc.msg" "hyperLayout2.hyp[499].dn";
connectAttr "R_absolute_direction_locShape.msg" "hyperLayout2.hyp[500].dn";
connectAttr "R_absolute_position_loc.msg" "hyperLayout2.hyp[501].dn";
connectAttr "R_absolute_position_locShape.msg" "hyperLayout2.hyp[502].dn";
connectAttr "R_absolute_direction_loc_pointConstraint1.msg" "hyperLayout2.hyp[503].dn"
		;
connectAttr "L_absolute_direction_constrained_grp.msg" "hyperLayout2.hyp[504].dn"
		;
connectAttr "L_absolute_direction_loc.msg" "hyperLayout2.hyp[505].dn";
connectAttr "L_absolute_direction_locShape.msg" "hyperLayout2.hyp[506].dn";
connectAttr "L_absolute_position_loc.msg" "hyperLayout2.hyp[507].dn";
connectAttr "L_absolute_position_locShape.msg" "hyperLayout2.hyp[508].dn";
connectAttr "L_absolute_direction_loc_pointConstraint1.msg" "hyperLayout2.hyp[509].dn"
		;
connectAttr "C_absolute_direction_constrained_grp.msg" "hyperLayout2.hyp[510].dn"
		;
connectAttr "C_absolute_direction_loc.msg" "hyperLayout2.hyp[511].dn";
connectAttr "C_absolute_direction_locShape.msg" "hyperLayout2.hyp[512].dn";
connectAttr "C_absolute_position_loc.msg" "hyperLayout2.hyp[513].dn";
connectAttr "C_absolute_position_locShape.msg" "hyperLayout2.hyp[514].dn";
connectAttr "C_absolute_eye_direction_loc_pointConstraint1.msg" "hyperLayout2.hyp[515].dn"
		;
connectAttr "calculate_convergence.msg" "hyperLayout2.hyp[516].dn";
connectAttr "convergence_constrained_grp.msg" "hyperLayout2.hyp[517].dn";
connectAttr "convergence_distance.msg" "hyperLayout2.hyp[518].dn";
connectAttr "Converge_loc_offset.msg" "hyperLayout2.hyp[519].dn";
connectAttr "Converge_loc.msg" "hyperLayout2.hyp[520].dn";
connectAttr "Converge_locShape.msg" "hyperLayout2.hyp[521].dn";
connectAttr "R_lookat_system_orient.msg" "hyperLayout2.hyp[522].dn";
connectAttr "R_lookat_loc_grp.msg" "hyperLayout2.hyp[523].dn";
connectAttr "R_lookat_unoffset_loc.msg" "hyperLayout2.hyp[524].dn";
connectAttr "R_lookat_unoffset_locShape.msg" "hyperLayout2.hyp[525].dn";
connectAttr "R_lookat_unoffset_loc_aimConstraint1.msg" "hyperLayout2.hyp[526].dn"
		;
connectAttr "R_lookat_loc.msg" "hyperLayout2.hyp[527].dn";
connectAttr "R_lookat_locShape.msg" "hyperLayout2.hyp[528].dn";
connectAttr "R_lookat_loc_aimConstraint1.msg" "hyperLayout2.hyp[529].dn";
connectAttr "R_static_loc.msg" "hyperLayout2.hyp[530].dn";
connectAttr "R_static_locShape.msg" "hyperLayout2.hyp[531].dn";
connectAttr "R_lookat_convergence_loc.msg" "hyperLayout2.hyp[532].dn";
connectAttr "R_lookat_convergence_locShape.msg" "hyperLayout2.hyp[533].dn";
connectAttr "R_lookat_convergence_loc_aimConstraint1.msg" "hyperLayout2.hyp[534].dn"
		;
connectAttr "R_Eye_upVec_grp.msg" "hyperLayout2.hyp[535].dn";
connectAttr "R_Eye_upVec.msg" "hyperLayout2.hyp[536].dn";
connectAttr "R_Eye_upVecShape.msg" "hyperLayout2.hyp[537].dn";
connectAttr "R_lookat_ctl_placement.msg" "hyperLayout2.hyp[538].dn";
connectAttr "R_lookat_ctl_unoffset_grp.msg" "hyperLayout2.hyp[539].dn";
connectAttr "R_lookat_ctl_offset2.msg" "hyperLayout2.hyp[540].dn";
connectAttr "R_lookat_ctl_offset3.msg" "hyperLayout2.hyp[541].dn";
connectAttr "R_lookat_ctl_offset4.msg" "hyperLayout2.hyp[542].dn";
connectAttr "R_lookat_ctl.msg" "hyperLayout2.hyp[543].dn";
connectAttr "R_lookat_ctlShape.msg" "hyperLayout2.hyp[544].dn";
connectAttr "R_sightline_extend_up_vector.msg" "hyperLayout2.hyp[545].dn";
connectAttr "R_sightline_extend_up_vectorShape.msg" "hyperLayout2.hyp[546].dn";
connectAttr "R_sightline_extend_grp.msg" "hyperLayout2.hyp[547].dn";
connectAttr "R_sightline_extend_start.msg" "hyperLayout2.hyp[548].dn";
connectAttr "R_sightline_extend_startShape.msg" "hyperLayout2.hyp[549].dn";
connectAttr "R_sightline_extend_target.msg" "hyperLayout2.hyp[550].dn";
connectAttr "R_sightline_extend_targetShape.msg" "hyperLayout2.hyp[551].dn";
connectAttr "L_lookat_system_orient.msg" "hyperLayout2.hyp[552].dn";
connectAttr "L_lookat_loc_grp.msg" "hyperLayout2.hyp[553].dn";
connectAttr "L_lookat_unoffset_loc.msg" "hyperLayout2.hyp[554].dn";
connectAttr "L_lookat_unoffset_locShape.msg" "hyperLayout2.hyp[555].dn";
connectAttr "L_lookat_unoffset_loc_aimConstraint1.msg" "hyperLayout2.hyp[556].dn"
		;
connectAttr "L_lookat_loc.msg" "hyperLayout2.hyp[557].dn";
connectAttr "L_lookat_locShape.msg" "hyperLayout2.hyp[558].dn";
connectAttr "L_lookat_loc_aimConstraint1.msg" "hyperLayout2.hyp[559].dn";
connectAttr "L_static_loc.msg" "hyperLayout2.hyp[560].dn";
connectAttr "L_static_locShape.msg" "hyperLayout2.hyp[561].dn";
connectAttr "L_lookat_convergence_loc.msg" "hyperLayout2.hyp[562].dn";
connectAttr "L_lookat_convergence_locShape.msg" "hyperLayout2.hyp[563].dn";
connectAttr "L_lookat_convergence_loc_aimConstraint1.msg" "hyperLayout2.hyp[564].dn"
		;
connectAttr "L_Eye_upVec_grp.msg" "hyperLayout2.hyp[565].dn";
connectAttr "L_Eye_upVec.msg" "hyperLayout2.hyp[566].dn";
connectAttr "L_Eye_upVecShape.msg" "hyperLayout2.hyp[567].dn";
connectAttr "L_lookat_ctl_placement.msg" "hyperLayout2.hyp[568].dn";
connectAttr "L_lookat_ctl_unoffset_grp.msg" "hyperLayout2.hyp[569].dn";
connectAttr "L_lookat_ctl_offset2.msg" "hyperLayout2.hyp[570].dn";
connectAttr "L_lookat_ctl_offset3.msg" "hyperLayout2.hyp[571].dn";
connectAttr "L_lookat_ctl_offset4.msg" "hyperLayout2.hyp[572].dn";
connectAttr "L_lookat_ctl.msg" "hyperLayout2.hyp[573].dn";
connectAttr "L_lookat_ctlShape.msg" "hyperLayout2.hyp[574].dn";
connectAttr "L_sightline_extend_up_vector.msg" "hyperLayout2.hyp[575].dn";
connectAttr "L_sightline_extend_up_vectorShape.msg" "hyperLayout2.hyp[576].dn";
connectAttr "L_sightline_extend_grp.msg" "hyperLayout2.hyp[577].dn";
connectAttr "L_sightline_extend_start.msg" "hyperLayout2.hyp[578].dn";
connectAttr "L_sightline_extend_startShape.msg" "hyperLayout2.hyp[579].dn";
connectAttr "L_sightline_extend_target.msg" "hyperLayout2.hyp[580].dn";
connectAttr "L_sightline_extend_targetShape.msg" "hyperLayout2.hyp[581].dn";
connectAttr "plot_to_au_values.msg" "hyperLayout2.hyp[582].dn";
connectAttr "convergence_enabled_remap_crv.msg" "hyperLayout2.hyp[583].dn";
connectAttr "eye_contol_switch_remap_crv.msg" "hyperLayout2.hyp[584].dn";
connectAttr "lookat_local_remap_crv.msg" "hyperLayout2.hyp[585].dn";
connectAttr "lookat_world_remap_crv.msg" "hyperLayout2.hyp[586].dn";
connectAttr "EyesRX_blend.msg" "hyperLayout2.hyp[587].dn";
connectAttr "EyesRZ_blend.msg" "hyperLayout2.hyp[588].dn";
connectAttr "EyesTX_blend.msg" "hyperLayout2.hyp[589].dn";
connectAttr "EyesTY_blend.msg" "hyperLayout2.hyp[590].dn";
connectAttr "LeftEye_unoffset_RX_blend.msg" "hyperLayout2.hyp[591].dn";
connectAttr "LeftEye_unoffset_RZ_blend.msg" "hyperLayout2.hyp[592].dn";
connectAttr "LeftEyeRX_blend.msg" "hyperLayout2.hyp[593].dn";
connectAttr "LeftEyeRZ_blend.msg" "hyperLayout2.hyp[594].dn";
connectAttr "LeftEyeTX_blend.msg" "hyperLayout2.hyp[595].dn";
connectAttr "LeftEyeTY_blend.msg" "hyperLayout2.hyp[596].dn";
connectAttr "NL_61_blend.msg" "hyperLayout2.hyp[597].dn";
connectAttr "NL_62_blend.msg" "hyperLayout2.hyp[599].dn";
connectAttr "NL_63_blend.msg" "hyperLayout2.hyp[601].dn";
connectAttr "NL_63_convergence_blend.msg" "hyperLayout2.hyp[602].dn";
connectAttr "NL_64_blend.msg" "hyperLayout2.hyp[603].dn";
connectAttr "NL_64_convergence_blend.msg" "hyperLayout2.hyp[604].dn";
connectAttr "NR_61_blend.msg" "hyperLayout2.hyp[605].dn";
connectAttr "NR_62_blend.msg" "hyperLayout2.hyp[607].dn";
connectAttr "NR_63_blend.msg" "hyperLayout2.hyp[609].dn";
connectAttr "NR_63_convergence_blend.msg" "hyperLayout2.hyp[610].dn";
connectAttr "NR_64_blend.msg" "hyperLayout2.hyp[611].dn";
connectAttr "NR_64_convergence_blend.msg" "hyperLayout2.hyp[612].dn";
connectAttr "RightEye_unoffset_RX_blend.msg" "hyperLayout2.hyp[613].dn";
connectAttr "RightEye_unoffset_RZ_blend.msg" "hyperLayout2.hyp[614].dn";
connectAttr "RightEyeRX_blend.msg" "hyperLayout2.hyp[615].dn";
connectAttr "RightEyeRZ_blend.msg" "hyperLayout2.hyp[616].dn";
connectAttr "RightEyeTX_blend.msg" "hyperLayout2.hyp[617].dn";
connectAttr "RightEyeTY_blend.msg" "hyperLayout2.hyp[618].dn";
connectAttr "eyes_distance_endCluster.msg" "hyperLayout2.hyp[637].dn";
connectAttr "eyes_distance_startCluster.msg" "hyperLayout2.hyp[638].dn";
connectAttr "left_eye_distance_endCluster.msg" "hyperLayout2.hyp[639].dn";
connectAttr "left_eye_distance_startCluster.msg" "hyperLayout2.hyp[640].dn";
connectAttr "left_sightline_extension_startCluster.msg" "hyperLayout2.hyp[641].dn"
		;
connectAttr "left_sightline_extension_targetCluster.msg" "hyperLayout2.hyp[642].dn"
		;
connectAttr "right_eye_distance_endCluster.msg" "hyperLayout2.hyp[643].dn";
connectAttr "right_eye_distance_startCluster.msg" "hyperLayout2.hyp[644].dn";
connectAttr "right_sightline_extension_startCluster.msg" "hyperLayout2.hyp[645].dn"
		;
connectAttr "right_sightline_extension_targetCluster.msg" "hyperLayout2.hyp[646].dn"
		;
connectAttr "eyes_distance_info.msg" "hyperLayout2.hyp[647].dn";
connectAttr "left_eye_distance_info.msg" "hyperLayout2.hyp[648].dn";
connectAttr "right_eye_distance_info.msg" "hyperLayout2.hyp[649].dn";
connectAttr "c_aim_loc_to_NLNR_61_rmp.msg" "hyperLayout2.hyp[723].dn";
connectAttr "c_aim_loc_to_NLNR_62_rmp.msg" "hyperLayout2.hyp[724].dn";
connectAttr "c_aim_loc_to_NLNR_63_rmp.msg" "hyperLayout2.hyp[725].dn";
connectAttr "c_aim_loc_to_NLNR_64_rmp.msg" "hyperLayout2.hyp[726].dn";
connectAttr "eyes_distance_remap.msg" "hyperLayout2.hyp[727].dn";
connectAttr "eyes_distance_reverse_remap.msg" "hyperLayout2.hyp[728].dn";
connectAttr "gaze_ctl_negTX_to_eyes_negRX.msg" "hyperLayout2.hyp[729].dn";
connectAttr "gaze_ctl_negTY_to_eyes_posRZ.msg" "hyperLayout2.hyp[730].dn";
connectAttr "gaze_ctl_posTX_to_eyes_posRX.msg" "hyperLayout2.hyp[731].dn";
connectAttr "gaze_ctl_posTY_to_eyes_negRZ.msg" "hyperLayout2.hyp[732].dn";
connectAttr "l_aim_loc_to_NL_61_rmp.msg" "hyperLayout2.hyp[733].dn";
connectAttr "l_aim_loc_to_NL_61_rmp_offset.msg" "hyperLayout2.hyp[734].dn";
connectAttr "l_aim_loc_to_NL_62_rmp.msg" "hyperLayout2.hyp[735].dn";
connectAttr "l_aim_loc_to_NL_62_rmp_offset.msg" "hyperLayout2.hyp[736].dn";
connectAttr "l_aim_loc_to_NL_63_rmp.msg" "hyperLayout2.hyp[737].dn";
connectAttr "l_aim_loc_to_NL_63_rmp_offset.msg" "hyperLayout2.hyp[738].dn";
connectAttr "l_aim_loc_to_NL_64_rmp.msg" "hyperLayout2.hyp[739].dn";
connectAttr "l_aim_loc_to_NL_64_rmp_offset.msg" "hyperLayout2.hyp[740].dn";
connectAttr "l_aim_loc_to_NR_61_rmp.msg" "hyperLayout2.hyp[741].dn";
connectAttr "l_aim_loc_to_NR_62_rmp.msg" "hyperLayout2.hyp[742].dn";
connectAttr "l_aim_loc_to_NR_63_rmp.msg" "hyperLayout2.hyp[743].dn";
connectAttr "l_aim_loc_to_NR_64_rmp.msg" "hyperLayout2.hyp[744].dn";
connectAttr "L_convergence_RX_toNL61.msg" "hyperLayout2.hyp[745].dn";
connectAttr "L_convergence_RX_toNL62.msg" "hyperLayout2.hyp[746].dn";
connectAttr "L_convergence_RZ_toNL63.msg" "hyperLayout2.hyp[747].dn";
connectAttr "L_convergence_RZ_toNL64.msg" "hyperLayout2.hyp[748].dn";
connectAttr "L_eye_gaze_neg_x_to_NL_62.msg" "hyperLayout2.hyp[749].dn";
connectAttr "L_eye_gaze_neg_y_to_NL_64.msg" "hyperLayout2.hyp[750].dn";
connectAttr "L_eye_gaze_pos_x_to_NL_61.msg" "hyperLayout2.hyp[751].dn";
connectAttr "L_eye_gaze_pos_y_to_NL_63.msg" "hyperLayout2.hyp[752].dn";
connectAttr "L_gaze_ctl_neg_TX_to_left_eyes_neg_RX.msg" "hyperLayout2.hyp[753].dn"
		;
connectAttr "L_gaze_ctl_negTY_to_left_eye_posRZ.msg" "hyperLayout2.hyp[754].dn";
connectAttr "L_gaze_ctl_posTX_to_left_eye_posRX.msg" "hyperLayout2.hyp[755].dn";
connectAttr "L_gaze_ctl_posTY_to_left_eye_negRZ.msg" "hyperLayout2.hyp[756].dn";
connectAttr "NL61_remap.msg" "hyperLayout2.hyp[757].dn";
connectAttr "NL62_remap.msg" "hyperLayout2.hyp[758].dn";
connectAttr "NL63_remap.msg" "hyperLayout2.hyp[759].dn";
connectAttr "NL64_remap.msg" "hyperLayout2.hyp[760].dn";
connectAttr "NL_61_to_pos10_offset.msg" "hyperLayout2.hyp[761].dn";
connectAttr "NL_62_to_neg10_offset.msg" "hyperLayout2.hyp[762].dn";
connectAttr "NL_63_to_pos10_offset.msg" "hyperLayout2.hyp[763].dn";
connectAttr "NL_64_to_neg10_offset.msg" "hyperLayout2.hyp[764].dn";
connectAttr "NLNR_61_to_pos10.msg" "hyperLayout2.hyp[765].dn";
connectAttr "NLNR_62_to_neg10.msg" "hyperLayout2.hyp[766].dn";
connectAttr "NLNR_63_to_pos10.msg" "hyperLayout2.hyp[767].dn";
connectAttr "NLNR_64_to_neg11.msg" "hyperLayout2.hyp[768].dn";
connectAttr "NR61_remap.msg" "hyperLayout2.hyp[769].dn";
connectAttr "NR62_remap.msg" "hyperLayout2.hyp[770].dn";
connectAttr "NR63_remap.msg" "hyperLayout2.hyp[771].dn";
connectAttr "NR64_remap.msg" "hyperLayout2.hyp[772].dn";
connectAttr "NR_61_to_pos10_offset.msg" "hyperLayout2.hyp[773].dn";
connectAttr "NR_62_to_neg10_offset.msg" "hyperLayout2.hyp[774].dn";
connectAttr "NR_63_to_pos10_offset.msg" "hyperLayout2.hyp[775].dn";
connectAttr "NR_64_to_neg10_offset.msg" "hyperLayout2.hyp[776].dn";
connectAttr "r_aim_loc_to_NR_61_rmp_offset.msg" "hyperLayout2.hyp[777].dn";
connectAttr "r_aim_loc_to_NR_62_rmp_offset.msg" "hyperLayout2.hyp[778].dn";
connectAttr "r_aim_loc_to_NR_63_rmp_offset.msg" "hyperLayout2.hyp[779].dn";
connectAttr "r_aim_loc_to_NR_64_rmp_offset.msg" "hyperLayout2.hyp[780].dn";
connectAttr "R_convergence_RX_toNR61.msg" "hyperLayout2.hyp[781].dn";
connectAttr "R_convergence_RX_toNR62.msg" "hyperLayout2.hyp[782].dn";
connectAttr "R_convergence_RZ_toNR63.msg" "hyperLayout2.hyp[783].dn";
connectAttr "R_convergence_RZ_toNR64.msg" "hyperLayout2.hyp[784].dn";
connectAttr "R_eye_gaze_neg_x_to_NR_62.msg" "hyperLayout2.hyp[785].dn";
connectAttr "R_eye_gaze_neg_y_to_NR_64.msg" "hyperLayout2.hyp[786].dn";
connectAttr "R_eye_gaze_pos_x_to_NR_61.msg" "hyperLayout2.hyp[787].dn";
connectAttr "R_eye_gaze_pos_y_to_NR_63.msg" "hyperLayout2.hyp[788].dn";
connectAttr "R_gaze_ctl_negTX_to_right_eye_negRX.msg" "hyperLayout2.hyp[789].dn"
		;
connectAttr "R_gaze_ctl_negTY_to_right_eye_posRZ.msg" "hyperLayout2.hyp[790].dn"
		;
connectAttr "R_gaze_ctl_posTX_to_right_eye_posRX.msg" "hyperLayout2.hyp[791].dn"
		;
connectAttr "R_gaze_ctl_posTY_to_right_eye_negRZ.msg" "hyperLayout2.hyp[792].dn"
		;
connectAttr "lookat_enabled_reverse.msg" "hyperLayout2.hyp[793].dn";
connectAttr "tweak3.msg" "hyperLayout2.hyp[794].dn";
connectAttr "tweak4.msg" "hyperLayout2.hyp[795].dn";
connectAttr "tweak5.msg" "hyperLayout2.hyp[796].dn";
connectAttr "tweak6.msg" "hyperLayout2.hyp[797].dn";
connectAttr "tweak7.msg" "hyperLayout2.hyp[798].dn";
connectAttr "R_offset_subtract.msg" "hyperLayout2.hyp[799].dn";
connectAttr "R_gaze_ctl_TY_to_right_eye_RZ.msg" "hyperLayout2.hyp[800].dn";
connectAttr "R_gaze_ctl_TX_to_right_eye_RX.msg" "hyperLayout2.hyp[801].dn";
connectAttr "R_eye_gaze_ctl_ty_sum.msg" "hyperLayout2.hyp[802].dn";
connectAttr "R_eye_gaze_ctl_tx_sum.msg" "hyperLayout2.hyp[803].dn";
connectAttr "R_direction_offset_sum.msg" "hyperLayout2.hyp[804].dn";
connectAttr "R_convergence_subtract.msg" "hyperLayout2.hyp[805].dn";
connectAttr "NR_6364_sum.msg" "hyperLayout2.hyp[806].dn";
connectAttr "NR_6162_sum.msg" "hyperLayout2.hyp[807].dn";
connectAttr "NR64_add_convergence.msg" "hyperLayout2.hyp[808].dn";
connectAttr "NR63_add_convergence.msg" "hyperLayout2.hyp[809].dn";
connectAttr "NR6364_combined.msg" "hyperLayout2.hyp[810].dn";
connectAttr "NR6162_combined.msg" "hyperLayout2.hyp[811].dn";
connectAttr "NLNR_64_Min_average.msg" "hyperLayout2.hyp[812].dn";
connectAttr "NLNR_64_Max_average.msg" "hyperLayout2.hyp[813].dn";
connectAttr "NLNR_63_Min_average.msg" "hyperLayout2.hyp[814].dn";
connectAttr "NLNR_63_Max_average.msg" "hyperLayout2.hyp[815].dn";
connectAttr "NLNR_6364_sum.msg" "hyperLayout2.hyp[816].dn";
connectAttr "NLNR_62_Min_average.msg" "hyperLayout2.hyp[817].dn";
connectAttr "NLNR_62_Max_average.msg" "hyperLayout2.hyp[818].dn";
connectAttr "NLNR_61_Min_average.msg" "hyperLayout2.hyp[819].dn";
connectAttr "NLNR_61_Max_average.msg" "hyperLayout2.hyp[820].dn";
connectAttr "NLNR_6162_sum.msg" "hyperLayout2.hyp[821].dn";
connectAttr "NL_6364_sum.msg" "hyperLayout2.hyp[822].dn";
connectAttr "NL_6162_sum.msg" "hyperLayout2.hyp[823].dn";
connectAttr "NL64_add_convergence.msg" "hyperLayout2.hyp[824].dn";
connectAttr "NL63_add_convergence.msg" "hyperLayout2.hyp[825].dn";
connectAttr "NL6364_combined.msg" "hyperLayout2.hyp[826].dn";
connectAttr "NL6162_combined.msg" "hyperLayout2.hyp[827].dn";
connectAttr "L_offset_subtract.msg" "hyperLayout2.hyp[828].dn";
connectAttr "L_gaze_ctl_TY_to_left_eye_RZ.msg" "hyperLayout2.hyp[829].dn";
connectAttr "L_gaze_ctl_TX_to_left_eyes_RX.msg" "hyperLayout2.hyp[830].dn";
connectAttr "L_eye_gaze_ctl_ty_sum.msg" "hyperLayout2.hyp[831].dn";
connectAttr "L_eye_gaze_ctl_tx_sum.msg" "hyperLayout2.hyp[832].dn";
connectAttr "L_direction_offset_sum.msg" "hyperLayout2.hyp[833].dn";
connectAttr "L_convergence_subtract.msg" "hyperLayout2.hyp[834].dn";
connectAttr "gaze_ctl_TY_to_eyes_RZ.msg" "hyperLayout2.hyp[835].dn";
connectAttr "gaze_ctl_TX_to_eyes_RX.msg" "hyperLayout2.hyp[836].dn";
connectAttr "convergence_normalized.msg" "hyperLayout2.hyp[837].dn";
connectAttr "AU64_combined_average.msg" "hyperLayout2.hyp[838].dn";
connectAttr "AU63_combined_average.msg" "hyperLayout2.hyp[839].dn";
connectAttr "AU6364_right_offset.msg" "hyperLayout2.hyp[840].dn";
connectAttr "AU6364_left_offset.msg" "hyperLayout2.hyp[841].dn";
connectAttr "AU6364_average_combined.msg" "hyperLayout2.hyp[842].dn";
connectAttr "AU62_combined_average.msg" "hyperLayout2.hyp[843].dn";
connectAttr "AU61_combined_average.msg" "hyperLayout2.hyp[844].dn";
connectAttr "AU6162_right_offset.msg" "hyperLayout2.hyp[845].dn";
connectAttr "AU6162_left_offset.msg" "hyperLayout2.hyp[846].dn";
connectAttr "AU6162_average_combined.msg" "hyperLayout2.hyp[847].dn";
connectAttr "white_md_value.msg" "hyperLayout2.hyp[848].dn";
connectAttr "template_grey_md_value.msg" "hyperLayout2.hyp[849].dn";
connectAttr "royal_blue_md_value.msg" "hyperLayout2.hyp[850].dn";
connectAttr "R_convergence_RZ_reverse.msg" "hyperLayout2.hyp[851].dn";
connectAttr "R_convergence_RX_reverse.msg" "hyperLayout2.hyp[852].dn";
connectAttr "NR_6364_sum_reverse.msg" "hyperLayout2.hyp[853].dn";
connectAttr "NR_6364_reverse.msg" "hyperLayout2.hyp[854].dn";
connectAttr "NR_6162_sum_reverse.msg" "hyperLayout2.hyp[855].dn";
connectAttr "NR_6162_reverse.msg" "hyperLayout2.hyp[856].dn";
connectAttr "NL_6364_sum_reverse.msg" "hyperLayout2.hyp[857].dn";
connectAttr "NL_6364_reverse.msg" "hyperLayout2.hyp[858].dn";
connectAttr "NL_6162_sum_reverse.msg" "hyperLayout2.hyp[859].dn";
connectAttr "NL_6162_reverse.msg" "hyperLayout2.hyp[860].dn";
connectAttr "L_convergence_RZ_reverse.msg" "hyperLayout2.hyp[861].dn";
connectAttr "L_convergence_RX_reverse.msg" "hyperLayout2.hyp[862].dn";
connectAttr "eyes_distance_reverse.msg" "hyperLayout2.hyp[863].dn";
connectAttr "bright_yellow_md_value.msg" "hyperLayout2.hyp[864].dn";
connectAttr "bright_red_md_value.msg" "hyperLayout2.hyp[865].dn";
connectAttr "AU6364_right_offset_reverse.msg" "hyperLayout2.hyp[866].dn";
connectAttr "AU6364_left_offset_reverse.msg" "hyperLayout2.hyp[867].dn";
connectAttr "R_lookat_unoffset_RZ_clamp.msg" "hyperLayout2.hyp[868].dn";
connectAttr "R_lookat_unoffset_RX_clamp.msg" "hyperLayout2.hyp[869].dn";
connectAttr "NR_6364_clamp.msg" "hyperLayout2.hyp[870].dn";
connectAttr "NR_6162_clamp.msg" "hyperLayout2.hyp[871].dn";
connectAttr "NR64_add_convergence_clamp.msg" "hyperLayout2.hyp[872].dn";
connectAttr "NR63_add_convergence_clamp.msg" "hyperLayout2.hyp[873].dn";
connectAttr "NLNR_6364_clamp.msg" "hyperLayout2.hyp[874].dn";
connectAttr "NLNR_6162_clamp.msg" "hyperLayout2.hyp[875].dn";
connectAttr "NL_6364_clamp.msg" "hyperLayout2.hyp[876].dn";
connectAttr "NL_6162_clamp.msg" "hyperLayout2.hyp[877].dn";
connectAttr "NL64_add_convergence_clamp.msg" "hyperLayout2.hyp[878].dn";
connectAttr "NL63_add_convergence_clamp.msg" "hyperLayout2.hyp[879].dn";
connectAttr "L_lookat_unoffset_RZ_clamp.msg" "hyperLayout2.hyp[880].dn";
connectAttr "L_lookat_unoffset_RX_clamp.msg" "hyperLayout2.hyp[881].dn";
connectAttr "NR_62_neg_to_pos.msg" "hyperLayout2.hyp[882].dn";
connectAttr "NR_62_main_neg_range.msg" "hyperLayout2.hyp[883].dn";
connectAttr "NR_62_convergence_neg_range.msg" "hyperLayout2.hyp[884].dn";
connectAttr "NR_61_pos.msg" "hyperLayout2.hyp[885].dn";
connectAttr "NR_61_main_pos_range.msg" "hyperLayout2.hyp[886].dn";
connectAttr "NR_61_convergence_pos_range.msg" "hyperLayout2.hyp[887].dn";
connectAttr "NL_62_neg_to_pos.msg" "hyperLayout2.hyp[888].dn";
connectAttr "NL_62_main_neg_range.msg" "hyperLayout2.hyp[889].dn";
connectAttr "NL_62_convergence_neg_range.msg" "hyperLayout2.hyp[890].dn";
connectAttr "NL_61_pos.msg" "hyperLayout2.hyp[891].dn";
connectAttr "NL_61_main_pos_range.msg" "hyperLayout2.hyp[892].dn";
connectAttr "NL_61_convergence_pos_range.msg" "hyperLayout2.hyp[893].dn";
connectAttr "NR_61_62_main_range.msg" "hyperLayout2.hyp[894].dn";
connectAttr "NR_61_62_convergence_range.msg" "hyperLayout2.hyp[895].dn";
connectAttr "NR_61_62_add_convergence.msg" "hyperLayout2.hyp[896].dn";
connectAttr "NL_61_62_main_range.msg" "hyperLayout2.hyp[897].dn";
connectAttr "NL_61_62_convergence_range.msg" "hyperLayout2.hyp[898].dn";
connectAttr "NL_61_62_add_convergence.msg" "hyperLayout2.hyp[899].dn";
connectAttr "NR62_add_convergence_clamp.msg" "hyperLayout2.hyp[900].dn";
connectAttr "NR61_add_convergence_clamp.msg" "hyperLayout2.hyp[901].dn";
connectAttr "NL62_add_convergence_clamp.msg" "hyperLayout2.hyp[902].dn";
connectAttr "NL61_add_convergence_clamp.msg" "hyperLayout2.hyp[903].dn";
connectAttr "NR_62_convergence_blend.msg" "hyperLayout2.hyp[904].dn";
connectAttr "NR_61_convergence_blend.msg" "hyperLayout2.hyp[905].dn";
connectAttr "NL_62_convergence_blend.msg" "hyperLayout2.hyp[906].dn";
connectAttr "eyes_combined_values.msg" "hyperLayout2.hyp[908].dn";
connectAttr "convergence_output.msg" "hyperLayout2.hyp[909].dn";
connectAttr "convergence_limit.msg" "hyperLayout2.hyp[911].dn";
connectAttr "user_defined_distance_loc.msg" "hyperLayout2.hyp[912].dn";
connectAttr "user_defined_distance_locShape.msg" "hyperLayout2.hyp[913].dn";
connectAttr "NL_61_convergence_blend.msg" "hyperLayout2.hyp[914].dn";
connectAttr "cluster5GroupParts.og" "left_eye_distance_startCluster.ip[0].ig";
connectAttr "cluster5GroupId.id" "left_eye_distance_startCluster.ip[0].gi";
connectAttr "left_eye_distance_start.wm" "left_eye_distance_startCluster.ma";
connectAttr "left_eye_distance_startShape.x" "left_eye_distance_startCluster.x";
connectAttr "cluster5GroupId.msg" "cluster5Set.gn" -na;
connectAttr "left_eye_distanceShape.iog.og[0]" "cluster5Set.dsm" -na;
connectAttr "left_eye_distance_startCluster.msg" "cluster5Set.ub[0]";
connectAttr "tweak3.og[0]" "cluster5GroupParts.ig";
connectAttr "cluster5GroupId.id" "cluster5GroupParts.gi";
connectAttr "groupParts6.og" "tweak3.ip[0].ig";
connectAttr "groupId6.id" "tweak3.ip[0].gi";
connectAttr "groupId6.msg" "tweakSet3.gn" -na;
connectAttr "left_eye_distanceShape.iog.og[1]" "tweakSet3.dsm" -na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "left_eye_distanceShapeOrig.ws" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "cluster7GroupParts.og" "right_eye_distance_startCluster.ip[0].ig";
connectAttr "cluster7GroupId.id" "right_eye_distance_startCluster.ip[0].gi";
connectAttr "right_eye_distance_start.wm" "right_eye_distance_startCluster.ma";
connectAttr "right_eye_distance_startShape.x" "right_eye_distance_startCluster.x"
		;
connectAttr "cluster7GroupId.msg" "cluster7Set.gn" -na;
connectAttr "right_eye_distanceShape.iog.og[0]" "cluster7Set.dsm" -na;
connectAttr "right_eye_distance_startCluster.msg" "cluster7Set.ub[0]";
connectAttr "tweak4.og[0]" "cluster7GroupParts.ig";
connectAttr "cluster7GroupId.id" "cluster7GroupParts.gi";
connectAttr "groupParts8.og" "tweak4.ip[0].ig";
connectAttr "groupId8.id" "tweak4.ip[0].gi";
connectAttr "groupId8.msg" "tweakSet4.gn" -na;
connectAttr "right_eye_distanceShape.iog.og[1]" "tweakSet4.dsm" -na;
connectAttr "tweak4.msg" "tweakSet4.ub[0]";
connectAttr "right_eye_distanceShapeOrig.ws" "groupParts8.ig";
connectAttr "groupId8.id" "groupParts8.gi";
connectAttr "cluster6GroupParts.og" "left_eye_distance_endCluster.ip[0].ig";
connectAttr "cluster6GroupId.id" "left_eye_distance_endCluster.ip[0].gi";
connectAttr "left_eye_distance_end.wm" "left_eye_distance_endCluster.ma";
connectAttr "left_eye_distance_endShape.x" "left_eye_distance_endCluster.x";
connectAttr "cluster6GroupId.msg" "cluster6Set.gn" -na;
connectAttr "left_eye_distanceShape.iog.og[2]" "cluster6Set.dsm" -na;
connectAttr "left_eye_distance_endCluster.msg" "cluster6Set.ub[0]";
connectAttr "left_eye_distance_startCluster.og[0]" "cluster6GroupParts.ig";
connectAttr "cluster6GroupId.id" "cluster6GroupParts.gi";
connectAttr "cluster8GroupParts.og" "right_eye_distance_endCluster.ip[0].ig";
connectAttr "cluster8GroupId.id" "right_eye_distance_endCluster.ip[0].gi";
connectAttr "right_eye_distance_end.wm" "right_eye_distance_endCluster.ma";
connectAttr "right_eye_distance_endShape.x" "right_eye_distance_endCluster.x";
connectAttr "cluster8GroupId.msg" "cluster8Set.gn" -na;
connectAttr "right_eye_distanceShape.iog.og[2]" "cluster8Set.dsm" -na;
connectAttr "right_eye_distance_endCluster.msg" "cluster8Set.ub[0]";
connectAttr "right_eye_distance_startCluster.og[0]" "cluster8GroupParts.ig";
connectAttr "cluster8GroupId.id" "cluster8GroupParts.gi";
connectAttr "groupParts10.og" "tweak5.ip[0].ig";
connectAttr "groupId10.id" "tweak5.ip[0].gi";
connectAttr "groupId10.msg" "tweakSet5.gn" -na;
connectAttr "left_sightline_extensionShape.iog.og[4]" "tweakSet5.dsm" -na;
connectAttr "tweak5.msg" "tweakSet5.ub[0]";
connectAttr "left_sightline_extensionShape113Orig.ws" "groupParts10.ig";
connectAttr "groupId10.id" "groupParts10.gi";
connectAttr "cluster9GroupParts.og" "left_sightline_extension_startCluster.ip[0].ig"
		;
connectAttr "cluster9GroupId.id" "left_sightline_extension_startCluster.ip[0].gi"
		;
connectAttr "left_sightline_extension_start.wm" "left_sightline_extension_startCluster.ma"
		;
connectAttr "left_sightline_extension_startShape.x" "left_sightline_extension_startCluster.x"
		;
connectAttr "cluster9GroupId.msg" "cluster9Set.gn" -na;
connectAttr "left_sightline_extensionShape.iog.og[6]" "cluster9Set.dsm" -na;
connectAttr "left_sightline_extension_startCluster.msg" "cluster9Set.ub[0]";
connectAttr "tweak5.og[0]" "cluster9GroupParts.ig";
connectAttr "cluster9GroupId.id" "cluster9GroupParts.gi";
connectAttr "cluster10GroupParts.og" "left_sightline_extension_targetCluster.ip[0].ig"
		;
connectAttr "cluster10GroupId.id" "left_sightline_extension_targetCluster.ip[0].gi"
		;
connectAttr "left_sightline_extension_target.wm" "left_sightline_extension_targetCluster.ma"
		;
connectAttr "left_sightline_extension_targetShape.x" "left_sightline_extension_targetCluster.x"
		;
connectAttr "cluster10GroupId.msg" "cluster10Set.gn" -na;
connectAttr "left_sightline_extensionShape.iog.og[7]" "cluster10Set.dsm" -na;
connectAttr "left_sightline_extension_targetCluster.msg" "cluster10Set.ub[0]";
connectAttr "left_sightline_extension_startCluster.og[0]" "cluster10GroupParts.ig"
		;
connectAttr "cluster10GroupId.id" "cluster10GroupParts.gi";
connectAttr "cluster11GroupParts.og" "right_sightline_extension_startCluster.ip[0].ig"
		;
connectAttr "cluster11GroupId.id" "right_sightline_extension_startCluster.ip[0].gi"
		;
connectAttr "right_sightline_extension_start.wm" "right_sightline_extension_startCluster.ma"
		;
connectAttr "right_sightline_extension_startShape.x" "right_sightline_extension_startCluster.x"
		;
connectAttr "groupParts12.og" "tweak6.ip[0].ig";
connectAttr "groupId12.id" "tweak6.ip[0].gi";
connectAttr "cluster11GroupId.msg" "cluster11Set.gn" -na;
connectAttr "right_sightline_extensionShape.iog.og[8]" "cluster11Set.dsm" -na;
connectAttr "right_sightline_extension_startCluster.msg" "cluster11Set.ub[0]";
connectAttr "tweak6.og[0]" "cluster11GroupParts.ig";
connectAttr "cluster11GroupId.id" "cluster11GroupParts.gi";
connectAttr "groupId12.msg" "tweakSet6.gn" -na;
connectAttr "right_sightline_extensionShape.iog.og[9]" "tweakSet6.dsm" -na;
connectAttr "tweak6.msg" "tweakSet6.ub[0]";
connectAttr "right_sightline_extensionShapeOrig.ws" "groupParts12.ig";
connectAttr "groupId12.id" "groupParts12.gi";
connectAttr "cluster12GroupParts.og" "right_sightline_extension_targetCluster.ip[0].ig"
		;
connectAttr "cluster12GroupId.id" "right_sightline_extension_targetCluster.ip[0].gi"
		;
connectAttr "right_sightline_extension_target.wm" "right_sightline_extension_targetCluster.ma"
		;
connectAttr "right_sightline_extension_targetShape.x" "right_sightline_extension_targetCluster.x"
		;
connectAttr "cluster12GroupId.msg" "cluster12Set.gn" -na;
connectAttr "right_sightline_extensionShape.iog.og[10]" "cluster12Set.dsm" -na;
connectAttr "right_sightline_extension_targetCluster.msg" "cluster12Set.ub[0]";
connectAttr "right_sightline_extension_startCluster.og[0]" "cluster12GroupParts.ig"
		;
connectAttr "cluster12GroupId.id" "cluster12GroupParts.gi";
connectAttr "lookat_ctl.SpaceWorldHead" "lookat_world_remap_crv.i";
connectAttr "lookat_ctl.SpaceWorldHead" "lookat_local_remap_crv.i";
connectAttr "clashing_renderLayerManager.rlmi[0]" "clashing_defaultRenderLayer.rlid"
		;
connectAttr "fk_eye_setup_renderLayerManager.rlmi[0]" "fk_eye_setup_defaultRenderLayer.rlid"
		;
connectAttr "L_eye_gaze_ctl_tx_sum.o1" "L_eye_gaze_pos_x_to_NL_61.i";
connectAttr "L_eye_gaze_ctl_tx_sum.o1" "L_eye_gaze_neg_x_to_NL_62.i";
connectAttr "R_eye_gaze_ctl_tx_sum.o1" "R_eye_gaze_pos_x_to_NR_61.i";
connectAttr "R_eye_gaze_ctl_tx_sum.o1" "R_eye_gaze_neg_x_to_NR_62.i";
connectAttr "L_eye_gaze_ctl_ty_sum.o1" "L_eye_gaze_neg_y_to_NL_64.i";
connectAttr "L_eye_gaze_ctl_ty_sum.o1" "L_eye_gaze_pos_y_to_NL_63.i";
connectAttr "R_eye_gaze_ctl_ty_sum.o1" "R_eye_gaze_neg_y_to_NR_64.i";
connectAttr "R_eye_gaze_ctl_ty_sum.o1" "R_eye_gaze_pos_y_to_NR_63.i";
connectAttr "fk_eye_setup_renderLayerManager1.rlmi[0]" "fk_eye_setup_defaultRenderLayer1.rlid"
		;
connectAttr "fk_eye_setup_fk_eye_setup_renderLayerManager.rlmi[0]" "fk_eye_setup_fk_eye_setup_defaultRenderLayer.rlid"
		;
connectAttr "au_eyes_ctl.tx" "L_eye_gaze_ctl_tx_sum.i1[0]";
connectAttr "L_au_eyes_ctl.tx" "L_eye_gaze_ctl_tx_sum.i1[1]";
connectAttr "au_eyes_ctl.ty" "L_eye_gaze_ctl_ty_sum.i1[0]";
connectAttr "L_au_eyes_ctl.ty" "L_eye_gaze_ctl_ty_sum.i1[1]";
connectAttr "au_eyes_ctl.tx" "R_eye_gaze_ctl_tx_sum.i1[0]";
connectAttr "R_au_eyes_ctl.tx" "R_eye_gaze_ctl_tx_sum.i1[1]";
connectAttr "au_eyes_ctl.ty" "R_eye_gaze_ctl_ty_sum.i1[0]";
connectAttr "R_au_eyes_ctl.ty" "R_eye_gaze_ctl_ty_sum.i1[1]";
connectAttr "L_au_eyes_ctl.tx" "L_gaze_ctl_posTX_to_left_eye_posRX.i";
connectAttr "lookat_custom_range_plug.NL_61_Max" "L_gaze_ctl_posTX_to_left_eye_posRX.omx"
		;
connectAttr "lookat_custom_range_plug.NL_61_Min" "L_gaze_ctl_posTX_to_left_eye_posRX.omn"
		;
connectAttr "L_au_eyes_ctl.ty" "L_gaze_ctl_posTY_to_left_eye_negRZ.i";
connectAttr "lookat_custom_range_plug.NL_63_Min" "L_gaze_ctl_posTY_to_left_eye_negRZ.omn"
		;
connectAttr "lookat_custom_range_plug.NL_63_Max" "L_gaze_ctl_posTY_to_left_eye_negRZ.omx"
		;
connectAttr "R_au_eyes_ctl.tx" "R_gaze_ctl_posTX_to_right_eye_posRX.i";
connectAttr "lookat_custom_range_plug.NR_61_Min" "R_gaze_ctl_posTX_to_right_eye_posRX.omn"
		;
connectAttr "lookat_custom_range_plug.NR_61_Max" "R_gaze_ctl_posTX_to_right_eye_posRX.omx"
		;
connectAttr "R_au_eyes_ctl.ty" "R_gaze_ctl_posTY_to_right_eye_negRZ.i";
connectAttr "lookat_custom_range_plug.NR_63_Min" "R_gaze_ctl_posTY_to_right_eye_negRZ.omn"
		;
connectAttr "lookat_custom_range_plug.NR_63_Max" "R_gaze_ctl_posTY_to_right_eye_negRZ.omx"
		;
connectAttr "au_eyes_ctl.ty" "gaze_ctl_posTY_to_eyes_negRZ.i";
connectAttr "NLNR_63_Max_average.o1" "gaze_ctl_posTY_to_eyes_negRZ.omx";
connectAttr "NLNR_63_Min_average.o1" "gaze_ctl_posTY_to_eyes_negRZ.omn";
connectAttr "au_eyes_ctl.tx" "gaze_ctl_posTX_to_eyes_posRX.i";
connectAttr "NLNR_61_Max_average.o1" "gaze_ctl_posTX_to_eyes_posRX.omx";
connectAttr "NLNR_61_Min_average.o1" "gaze_ctl_posTX_to_eyes_posRX.omn";
connectAttr "L_au_eyes_ctl.ty" "L_gaze_ctl_negTY_to_left_eye_posRZ.i";
connectAttr "lookat_custom_range_plug.NL_64_Min" "L_gaze_ctl_negTY_to_left_eye_posRZ.omn"
		;
connectAttr "lookat_custom_range_plug.NL_64_Max" "L_gaze_ctl_negTY_to_left_eye_posRZ.omx"
		;
connectAttr "L_au_eyes_ctl.tx" "L_gaze_ctl_neg_TX_to_left_eyes_neg_RX.i";
connectAttr "lookat_custom_range_plug.NL_62_Min" "L_gaze_ctl_neg_TX_to_left_eyes_neg_RX.omn"
		;
connectAttr "lookat_custom_range_plug.NL_62_Max" "L_gaze_ctl_neg_TX_to_left_eyes_neg_RX.omx"
		;
connectAttr "L_gaze_ctl_posTY_to_left_eye_negRZ.ov" "L_gaze_ctl_TY_to_left_eye_RZ.i1[0]"
		;
connectAttr "L_gaze_ctl_negTY_to_left_eye_posRZ.ov" "L_gaze_ctl_TY_to_left_eye_RZ.i1[1]"
		;
connectAttr "L_gaze_ctl_posTX_to_left_eye_posRX.ov" "L_gaze_ctl_TX_to_left_eyes_RX.i1[0]"
		;
connectAttr "L_gaze_ctl_neg_TX_to_left_eyes_neg_RX.ov" "L_gaze_ctl_TX_to_left_eyes_RX.i1[1]"
		;
connectAttr "R_au_eyes_ctl.ty" "R_gaze_ctl_negTY_to_right_eye_posRZ.i";
connectAttr "lookat_custom_range_plug.NR_64_Min" "R_gaze_ctl_negTY_to_right_eye_posRZ.omn"
		;
connectAttr "lookat_custom_range_plug.NR_64_Max" "R_gaze_ctl_negTY_to_right_eye_posRZ.omx"
		;
connectAttr "R_au_eyes_ctl.tx" "R_gaze_ctl_negTX_to_right_eye_negRX.i";
connectAttr "lookat_custom_range_plug.NR_62_Min" "R_gaze_ctl_negTX_to_right_eye_negRX.omn"
		;
connectAttr "lookat_custom_range_plug.NR_62_Max" "R_gaze_ctl_negTX_to_right_eye_negRX.omx"
		;
connectAttr "R_gaze_ctl_posTX_to_right_eye_posRX.ov" "R_gaze_ctl_TX_to_right_eye_RX.i1[0]"
		;
connectAttr "R_gaze_ctl_negTX_to_right_eye_negRX.ov" "R_gaze_ctl_TX_to_right_eye_RX.i1[1]"
		;
connectAttr "R_gaze_ctl_posTY_to_right_eye_negRZ.ov" "R_gaze_ctl_TY_to_right_eye_RZ.i1[0]"
		;
connectAttr "R_gaze_ctl_negTY_to_right_eye_posRZ.ov" "R_gaze_ctl_TY_to_right_eye_RZ.i1[1]"
		;
connectAttr "au_eyes_ctl.tx" "gaze_ctl_negTX_to_eyes_negRX.i";
connectAttr "NLNR_62_Max_average.o1" "gaze_ctl_negTX_to_eyes_negRX.omn";
connectAttr "NLNR_62_Min_average.o1" "gaze_ctl_negTX_to_eyes_negRX.omx";
connectAttr "au_eyes_ctl.ty" "gaze_ctl_negTY_to_eyes_posRZ.i";
connectAttr "NLNR_64_Max_average.o1" "gaze_ctl_negTY_to_eyes_posRZ.omn";
connectAttr "NLNR_64_Min_average.o1" "gaze_ctl_negTY_to_eyes_posRZ.omx";
connectAttr "gaze_ctl_posTX_to_eyes_posRX.ov" "gaze_ctl_TX_to_eyes_RX.i1[0]";
connectAttr "gaze_ctl_negTX_to_eyes_negRX.ov" "gaze_ctl_TX_to_eyes_RX.i1[1]";
connectAttr "gaze_ctl_posTY_to_eyes_negRZ.ov" "gaze_ctl_TY_to_eyes_RZ.i1[0]";
connectAttr "gaze_ctl_negTY_to_eyes_posRZ.ov" "gaze_ctl_TY_to_eyes_RZ.i1[1]";
connectAttr "L_lookat_loc.ry" "unitConversion1.i";
connectAttr "L_lookat_loc.ry" "unitConversion2.i";
connectAttr "L_lookat_loc.rx" "unitConversion3.i";
connectAttr "L_lookat_loc.rx" "unitConversion4.i";
connectAttr "R_lookat_loc.ry" "unitConversion5.i";
connectAttr "R_lookat_loc.ry" "unitConversion6.i";
connectAttr "R_lookat_loc.rx" "unitConversion7.i";
connectAttr "R_lookat_loc.rx" "unitConversion8.i";
connectAttr "lookat_custom_range_plug.NL_61_Max" "NLNR_61_Max_average.i1[0]";
connectAttr "lookat_custom_range_plug.NR_61_Max" "NLNR_61_Max_average.i1[1]";
connectAttr "lookat_custom_range_plug.NL_61_Min" "NLNR_61_Min_average.i1[0]";
connectAttr "lookat_custom_range_plug.NR_61_Min" "NLNR_61_Min_average.i1[1]";
connectAttr "lookat_custom_range_plug.NL_62_Max" "NLNR_62_Max_average.i1[0]";
connectAttr "lookat_custom_range_plug.NR_62_Max" "NLNR_62_Max_average.i1[1]";
connectAttr "lookat_custom_range_plug.NL_62_Min" "NLNR_62_Min_average.i1[0]";
connectAttr "lookat_custom_range_plug.NR_62_Min" "NLNR_62_Min_average.i1[1]";
connectAttr "lookat_custom_range_plug.NL_63_Max" "NLNR_63_Max_average.i1[0]";
connectAttr "lookat_custom_range_plug.NR_63_Max" "NLNR_63_Max_average.i1[1]";
connectAttr "lookat_custom_range_plug.NL_63_Min" "NLNR_63_Min_average.i1[0]";
connectAttr "lookat_custom_range_plug.NR_63_Min" "NLNR_63_Min_average.i1[1]";
connectAttr "lookat_custom_range_plug.NL_64_Max" "NLNR_64_Max_average.i1[0]";
connectAttr "lookat_custom_range_plug.NR_64_Max" "NLNR_64_Max_average.i1[1]";
connectAttr "lookat_custom_range_plug.NL_64_Min" "NLNR_64_Min_average.i1[0]";
connectAttr "lookat_custom_range_plug.NR_64_Min" "NLNR_64_Min_average.i1[1]";
connectAttr "unitConversion9.o" "L_offset_subtract.i3[0]";
connectAttr "unitConversion28.o" "L_offset_subtract.i3[1]";
connectAttr "L_lookat_unoffset_loc.r" "unitConversion9.i";
connectAttr "L_offset_subtract.o3x" "l_aim_loc_to_NL_64_rmp_offset.i";
connectAttr "lookat_custom_range_plug.NL_64_Max" "l_aim_loc_to_NL_64_rmp_offset.imx"
		;
connectAttr "lookat_custom_range_plug.NL_64_Min" "l_aim_loc_to_NL_64_rmp_offset.imn"
		;
connectAttr "L_offset_subtract.o3x" "l_aim_loc_to_NL_63_rmp_offset.i";
connectAttr "lookat_custom_range_plug.NL_63_Max" "l_aim_loc_to_NL_63_rmp_offset.imx"
		;
connectAttr "lookat_custom_range_plug.NL_63_Min" "l_aim_loc_to_NL_63_rmp_offset.imn"
		;
connectAttr "L_offset_subtract.o3y" "l_aim_loc_to_NL_62_rmp_offset.i";
connectAttr "lookat_custom_range_plug.NL_62_Max" "l_aim_loc_to_NL_62_rmp_offset.imx"
		;
connectAttr "lookat_custom_range_plug.NL_62_Min" "l_aim_loc_to_NL_62_rmp_offset.imn"
		;
connectAttr "L_offset_subtract.o3y" "l_aim_loc_to_NL_61_rmp_offset.i";
connectAttr "lookat_custom_range_plug.NL_61_Max" "l_aim_loc_to_NL_61_rmp_offset.imx"
		;
connectAttr "lookat_custom_range_plug.NL_61_Min" "l_aim_loc_to_NL_61_rmp_offset.imn"
		;
connectAttr "NL_63_to_pos10_offset.ov" "NL_6364_sum.i1[0]";
connectAttr "NL_64_to_neg10_offset.ov" "NL_6364_sum.i1[1]";
connectAttr "NL_61_to_pos10_offset.ov" "NL_6162_sum.i1[0]";
connectAttr "NL_62_to_neg10_offset.ov" "NL_6162_sum.i1[1]";
connectAttr "l_aim_loc_to_NL_61_rmp_offset.ov" "NL_61_to_pos10_offset.i";
connectAttr "l_aim_loc_to_NL_63_rmp_offset.ov" "NL_63_to_pos10_offset.i";
connectAttr "l_aim_loc_to_NL_64_rmp_offset.ov" "NL_64_to_neg10_offset.i";
connectAttr "l_aim_loc_to_NL_62_rmp_offset.ov" "NL_62_to_neg10_offset.i";
connectAttr "c_aim_loc_to_NLNR_64_rmp.ov" "NLNR_64_to_neg11.i";
connectAttr "NLNR_63_to_pos10.ov" "NLNR_6364_sum.i1[0]";
connectAttr "NLNR_64_to_neg11.ov" "NLNR_6364_sum.i1[1]";
connectAttr "c_aim_loc_to_NLNR_63_rmp.ov" "NLNR_63_to_pos10.i";
connectAttr "NLNR_61_to_pos10.ov" "NLNR_6162_sum.i1[0]";
connectAttr "NLNR_62_to_neg10.ov" "NLNR_6162_sum.i1[1]";
connectAttr "unitConversion14.o" "c_aim_loc_to_NLNR_62_rmp.i";
connectAttr "NLNR_62_Max_average.o1" "c_aim_loc_to_NLNR_62_rmp.imx";
connectAttr "NLNR_62_Min_average.o1" "c_aim_loc_to_NLNR_62_rmp.imn";
connectAttr "c_aim_loc_to_NLNR_61_rmp.ov" "NLNR_61_to_pos10.i";
connectAttr "NLNR_64_Max_average.o1" "c_aim_loc_to_NLNR_64_rmp.imx";
connectAttr "NLNR_64_Min_average.o1" "c_aim_loc_to_NLNR_64_rmp.imn";
connectAttr "unitConversion12.o" "c_aim_loc_to_NLNR_64_rmp.i";
connectAttr "NLNR_63_Max_average.o1" "c_aim_loc_to_NLNR_63_rmp.imx";
connectAttr "NLNR_63_Min_average.o1" "c_aim_loc_to_NLNR_63_rmp.imn";
connectAttr "unitConversion11.o" "c_aim_loc_to_NLNR_63_rmp.i";
connectAttr "NLNR_61_Max_average.o1" "c_aim_loc_to_NLNR_61_rmp.imx";
connectAttr "NLNR_61_Min_average.o1" "c_aim_loc_to_NLNR_61_rmp.imn";
connectAttr "unitConversion13.o" "c_aim_loc_to_NLNR_61_rmp.i";
connectAttr "c_aim_loc_to_NLNR_62_rmp.ov" "NLNR_62_to_neg10.i";
connectAttr "EyeCenter_loc.rx" "unitConversion11.i";
connectAttr "EyeCenter_loc.rx" "unitConversion12.i";
connectAttr "EyeCenter_loc.ry" "unitConversion13.i";
connectAttr "EyeCenter_loc.ry" "unitConversion14.i";
connectAttr "unitConversion15.o" "R_offset_subtract.i3[0]";
connectAttr "unitConversion29.o" "R_offset_subtract.i3[1]";
connectAttr "R_offset_subtract.o3y" "r_aim_loc_to_NR_61_rmp_offset.i";
connectAttr "lookat_custom_range_plug.NR_61_Max" "r_aim_loc_to_NR_61_rmp_offset.imx"
		;
connectAttr "lookat_custom_range_plug.NR_61_Min" "r_aim_loc_to_NR_61_rmp_offset.imn"
		;
connectAttr "R_offset_subtract.o3y" "r_aim_loc_to_NR_62_rmp_offset.i";
connectAttr "lookat_custom_range_plug.NR_62_Max" "r_aim_loc_to_NR_62_rmp_offset.imx"
		;
connectAttr "lookat_custom_range_plug.NR_62_Min" "r_aim_loc_to_NR_62_rmp_offset.imn"
		;
connectAttr "r_aim_loc_to_NR_62_rmp_offset.ov" "NR_62_to_neg10_offset.i";
connectAttr "r_aim_loc_to_NR_61_rmp_offset.ov" "NR_61_to_pos10_offset.i";
connectAttr "R_offset_subtract.o3x" "r_aim_loc_to_NR_63_rmp_offset.i";
connectAttr "lookat_custom_range_plug.NR_63_Max" "r_aim_loc_to_NR_63_rmp_offset.imx"
		;
connectAttr "lookat_custom_range_plug.NR_63_Min" "r_aim_loc_to_NR_63_rmp_offset.imn"
		;
connectAttr "r_aim_loc_to_NR_63_rmp_offset.ov" "NR_63_to_pos10_offset.i";
connectAttr "R_offset_subtract.o3x" "r_aim_loc_to_NR_64_rmp_offset.i";
connectAttr "lookat_custom_range_plug.NR_64_Max" "r_aim_loc_to_NR_64_rmp_offset.imx"
		;
connectAttr "lookat_custom_range_plug.NR_64_Min" "r_aim_loc_to_NR_64_rmp_offset.imn"
		;
connectAttr "r_aim_loc_to_NR_64_rmp_offset.ov" "NR_64_to_neg10_offset.i";
connectAttr "NR_63_to_pos10_offset.ov" "NR_6364_sum.i1[0]";
connectAttr "NR_64_to_neg10_offset.ov" "NR_6364_sum.i1[1]";
connectAttr "NR_61_to_pos10_offset.ov" "NR_6162_sum.i1[0]";
connectAttr "NR_62_to_neg10_offset.ov" "NR_6162_sum.i1[1]";
connectAttr "R_lookat_unoffset_loc.r" "unitConversion15.i";
connectAttr "unitConversion17.o" "NLNR_6364_clamp.ipr";
connectAttr "NLNR_63_Max_average.o1" "NLNR_6364_clamp.mnr";
connectAttr "NLNR_64_Max_average.o1" "NLNR_6364_clamp.mxr";
connectAttr "EyeCenter_loc.rx" "unitConversion17.i";
connectAttr "unitConversion18.o" "NLNR_6162_clamp.ipr";
connectAttr "NLNR_62_Max_average.o1" "NLNR_6162_clamp.mnr";
connectAttr "NLNR_61_Max_average.o1" "NLNR_6162_clamp.mxr";
connectAttr "EyeCenter_loc.ry" "unitConversion18.i";
connectAttr "L_offset_subtract.o3y" "NL_6162_clamp.ipr";
connectAttr "lookat_custom_range_plug.NL_61_Max" "NL_6162_clamp.mxr";
connectAttr "lookat_custom_range_plug.NL_62_Max" "NL_6162_clamp.mnr";
connectAttr "L_offset_subtract.o3x" "NL_6364_clamp.ipr";
connectAttr "lookat_custom_range_plug.NL_64_Max" "NL_6364_clamp.mxr";
connectAttr "lookat_custom_range_plug.NL_63_Max" "NL_6364_clamp.mnr";
connectAttr "R_offset_subtract.o3x" "NR_6364_clamp.ipr";
connectAttr "lookat_custom_range_plug.NR_64_Max" "NR_6364_clamp.mxr";
connectAttr "lookat_custom_range_plug.NR_63_Max" "NR_6364_clamp.mnr";
connectAttr "R_offset_subtract.o3y" "NR_6162_clamp.ipr";
connectAttr "lookat_custom_range_plug.NR_61_Max" "NR_6162_clamp.mxr";
connectAttr "lookat_custom_range_plug.NR_62_Max" "NR_6162_clamp.mnr";
connectAttr "lookat_output.Eyes_RX" "EyesRX_blend.c1r";
connectAttr "gaze_output.Eyes_RX" "EyesRX_blend.c2r";
connectAttr "eye_contol_switch_remap_crv.o" "EyesRX_blend.b";
connectAttr "lookat_output.Eyes_TY" "EyesTY_blend.c1r";
connectAttr "gaze_output.Eyes_TY" "EyesTY_blend.c2r";
connectAttr "eye_contol_switch_remap_crv.o" "EyesTY_blend.b";
connectAttr "lookat_output.Eyes_RZ" "EyesRZ_blend.c1r";
connectAttr "gaze_output.Eyes_RZ" "EyesRZ_blend.c2r";
connectAttr "eye_contol_switch_remap_crv.o" "EyesRZ_blend.b";
connectAttr "lookat_output.LeftEye_TX" "LeftEyeTX_blend.c1r";
connectAttr "gaze_output.LeftEye_TX" "LeftEyeTX_blend.c2r";
connectAttr "eye_contol_switch_remap_crv.o" "LeftEyeTX_blend.b";
connectAttr "lookat_output.LeftEye_RX" "LeftEyeRX_blend.c1r";
connectAttr "gaze_output.LeftEye_RX" "LeftEyeRX_blend.c2r";
connectAttr "eye_contol_switch_remap_crv.o" "LeftEyeRX_blend.b";
connectAttr "lookat_output.LeftEye_RZ" "LeftEyeRZ_blend.c1r";
connectAttr "gaze_output.LeftEye_RZ" "LeftEyeRZ_blend.c2r";
connectAttr "eye_contol_switch_remap_crv.o" "LeftEyeRZ_blend.b";
connectAttr "lookat_output.LeftEye_TY" "LeftEyeTY_blend.c1r";
connectAttr "gaze_output.LeftEye_TY" "LeftEyeTY_blend.c2r";
connectAttr "eye_contol_switch_remap_crv.o" "LeftEyeTY_blend.b";
connectAttr "lookat_output.Eyes_TX" "EyesTX_blend.c1r";
connectAttr "gaze_output.Eyes_TX" "EyesTX_blend.c2r";
connectAttr "eye_contol_switch_remap_crv.o" "EyesTX_blend.b";
connectAttr "lookat_output.RightEye_TX" "RightEyeTX_blend.c1r";
connectAttr "gaze_output.RightEye_TX" "RightEyeTX_blend.c2r";
connectAttr "eye_contol_switch_remap_crv.o" "RightEyeTX_blend.b";
connectAttr "lookat_output.RightEye_TY" "RightEyeTY_blend.c1r";
connectAttr "gaze_output.RightEye_TY" "RightEyeTY_blend.c2r";
connectAttr "eye_contol_switch_remap_crv.o" "RightEyeTY_blend.b";
connectAttr "lookat_output.RightEye_RZ" "RightEyeRZ_blend.c1r";
connectAttr "gaze_output.RightEye_RZ" "RightEyeRZ_blend.c2r";
connectAttr "eye_contol_switch_remap_crv.o" "RightEyeRZ_blend.b";
connectAttr "lookat_output.RightEye_RX" "RightEyeRX_blend.c1r";
connectAttr "gaze_output.RightEye_RX" "RightEyeRX_blend.c2r";
connectAttr "eye_contol_switch_remap_crv.o" "RightEyeRX_blend.b";
connectAttr "eyes_combined_values.Eyes_RX" "unitConversion19.i";
connectAttr "eyes_combined_values.Eyes_RZ" "unitConversion20.i";
connectAttr "left_eye_distanceShape.ws" "left_eye_distance_info.ic";
connectAttr "cluster13GroupParts.og" "eyes_distance_endCluster.ip[0].ig";
connectAttr "cluster13GroupId.id" "eyes_distance_endCluster.ip[0].gi";
connectAttr "eyes_distance_end.wm" "eyes_distance_endCluster.ma";
connectAttr "eyes_distance_endShape.x" "eyes_distance_endCluster.x";
connectAttr "groupParts14.og" "tweak7.ip[0].ig";
connectAttr "groupId14.id" "tweak7.ip[0].gi";
connectAttr "cluster13GroupId.msg" "cluster13Set.gn" -na;
connectAttr "eyes_distanceShape.iog.og[0]" "cluster13Set.dsm" -na;
connectAttr "eyes_distance_endCluster.msg" "cluster13Set.ub[0]";
connectAttr "tweak7.og[0]" "cluster13GroupParts.ig";
connectAttr "cluster13GroupId.id" "cluster13GroupParts.gi";
connectAttr "groupId14.msg" "tweakSet7.gn" -na;
connectAttr "eyes_distanceShape.iog.og[1]" "tweakSet7.dsm" -na;
connectAttr "tweak7.msg" "tweakSet7.ub[0]";
connectAttr "eyes_distanceShape113Orig.ws" "groupParts14.ig";
connectAttr "groupId14.id" "groupParts14.gi";
connectAttr "cluster14GroupParts.og" "eyes_distance_startCluster.ip[0].ig";
connectAttr "cluster14GroupId.id" "eyes_distance_startCluster.ip[0].gi";
connectAttr "eyes_distance_start.wm" "eyes_distance_startCluster.ma";
connectAttr "eyes_distance_startShape.x" "eyes_distance_startCluster.x";
connectAttr "cluster14GroupId.msg" "cluster14Set.gn" -na;
connectAttr "eyes_distanceShape.iog.og[2]" "cluster14Set.dsm" -na;
connectAttr "eyes_distance_startCluster.msg" "cluster14Set.ub[0]";
connectAttr "eyes_distance_endCluster.og[0]" "cluster14GroupParts.ig";
connectAttr "cluster14GroupId.id" "cluster14GroupParts.gi";
connectAttr "eyes_distanceShape.ws" "eyes_distance_info.ic";
connectAttr "right_eye_distanceShape.ws" "right_eye_distance_info.ic";
connectAttr "eyes_combined_values.RightEye_unoffset_RX" "R_direction_offset_sum.i3[0].i3x"
		;
connectAttr "eyes_combined_values.RightEye_unoffset_RZ" "R_direction_offset_sum.i3[0].i3y"
		;
connectAttr "eyes_combined_values.RightEye_RX" "R_direction_offset_sum.i3[1].i3x"
		;
connectAttr "eyes_combined_values.RightEye_RZ" "R_direction_offset_sum.i3[1].i3y"
		;
connectAttr "R_direction_offset_sum.o3x" "unitConversion23.i";
connectAttr "R_direction_offset_sum.o3y" "unitConversion24.i";
connectAttr "eyes_combined_values.LeftEye_unoffset_RX" "L_direction_offset_sum.i3[0].i3x"
		;
connectAttr "eyes_combined_values.LeftEye_unoffset_RZ" "L_direction_offset_sum.i3[0].i3y"
		;
connectAttr "eyes_combined_values.LeftEye_RX" "L_direction_offset_sum.i3[1].i3x"
		;
connectAttr "eyes_combined_values.LeftEye_RZ" "L_direction_offset_sum.i3[1].i3y"
		;
connectAttr "L_direction_offset_sum.o3x" "unitConversion25.i";
connectAttr "L_direction_offset_sum.o3y" "unitConversion26.i";
connectAttr "L_lookat_loc.r" "unitConversion28.i";
connectAttr "R_lookat_loc.r" "unitConversion29.i";
connectAttr "NL_6162_clamp.opr" "NL_6162_reverse.i1x";
connectAttr "NL_6364_clamp.opr" "NL_6364_reverse.i1x";
connectAttr "NR_6162_clamp.opr" "NR_6162_reverse.i1x";
connectAttr "NR_6364_clamp.opr" "NR_6364_reverse.i1x";
connectAttr "L_lookat_unoffset_loc.ry" "unitConversion30.i";
connectAttr "L_lookat_unoffset_loc.rx" "unitConversion31.i";
connectAttr "R_lookat_unoffset_loc.ry" "unitConversion32.i";
connectAttr "R_lookat_unoffset_loc.rx" "unitConversion33.i";
connectAttr "lookat_output.RightEye_unoffset_RX" "RightEye_unoffset_RX_blend.c1r"
		;
connectAttr "gaze_output.RightEye_unoffset_RX" "RightEye_unoffset_RX_blend.c2r";
connectAttr "eye_contol_switch_remap_crv.o" "RightEye_unoffset_RX_blend.b";
connectAttr "lookat_output.LeftEye_unoffset_RZ" "LeftEye_unoffset_RZ_blend.c1r";
connectAttr "gaze_output.LeftEye_unoffset_RZ" "LeftEye_unoffset_RZ_blend.c2r";
connectAttr "eye_contol_switch_remap_crv.o" "LeftEye_unoffset_RZ_blend.b";
connectAttr "lookat_output.RightEye_unoffset_RZ" "RightEye_unoffset_RZ_blend.c1r"
		;
connectAttr "gaze_output.RightEye_unoffset_RZ" "RightEye_unoffset_RZ_blend.c2r";
connectAttr "eye_contol_switch_remap_crv.o" "RightEye_unoffset_RZ_blend.b";
connectAttr "lookat_output.LeftEye_unoffset_RX" "LeftEye_unoffset_RX_blend.c1r";
connectAttr "gaze_output.LeftEye_unoffset_RX" "LeftEye_unoffset_RX_blend.c2r";
connectAttr "eye_contol_switch_remap_crv.o" "LeftEye_unoffset_RX_blend.b";
connectAttr "unitConversion31.o" "L_lookat_unoffset_RZ_clamp.ipr";
connectAttr "lookat_custom_range_plug.NL_63_Max" "L_lookat_unoffset_RZ_clamp.mnr"
		;
connectAttr "lookat_custom_range_plug.NL_64_Max" "L_lookat_unoffset_RZ_clamp.mxr"
		;
connectAttr "unitConversion30.o" "L_lookat_unoffset_RX_clamp.ipr";
connectAttr "lookat_custom_range_plug.NL_61_Max" "L_lookat_unoffset_RX_clamp.mxr"
		;
connectAttr "lookat_custom_range_plug.NL_62_Max" "L_lookat_unoffset_RX_clamp.mnr"
		;
connectAttr "unitConversion33.o" "R_lookat_unoffset_RZ_clamp.ipr";
connectAttr "lookat_custom_range_plug.NR_64_Max" "R_lookat_unoffset_RZ_clamp.mxr"
		;
connectAttr "lookat_custom_range_plug.NR_63_Max" "R_lookat_unoffset_RZ_clamp.mnr"
		;
connectAttr "unitConversion32.o" "R_lookat_unoffset_RX_clamp.ipr";
connectAttr "lookat_custom_range_plug.NR_62_Max" "R_lookat_unoffset_RX_clamp.mnr"
		;
connectAttr "lookat_custom_range_plug.NR_61_Max" "R_lookat_unoffset_RX_clamp.mxr"
		;
connectAttr "NL_6162_sum.o1" "NL_6162_sum_reverse.i1x";
connectAttr "NL_6364_sum.o1" "NL_6364_sum_reverse.i1x";
connectAttr "NR_6162_sum.o1" "NR_6162_sum_reverse.i1x";
connectAttr "NR_6364_sum.o1" "NR_6364_sum_reverse.i1x";
connectAttr "unitConversion36.o" "L_convergence_subtract.i3[0]";
connectAttr "unitConversion35.o" "L_convergence_subtract.i3[1]";
connectAttr "R_static_loc.r" "unitConversion34.i";
connectAttr "L_lookat_convergence_loc.r" "unitConversion35.i";
connectAttr "unitConversion34.o" "R_convergence_subtract.i3[0]";
connectAttr "unitConversion37.o" "R_convergence_subtract.i3[1]";
connectAttr "L_static_loc.r" "unitConversion36.i";
connectAttr "R_lookat_convergence_loc.r" "unitConversion37.i";
connectAttr "lookat_output.LeftEye_convergence_RX" "L_convergence_RX_toNL61.i";
connectAttr "lookat_custom_range_plug.NL_61_Max" "L_convergence_RX_toNL61.imx";
connectAttr "lookat_custom_range_plug.NL_61_Min" "L_convergence_RX_toNL61.imn";
connectAttr "lookat_output.LeftEye_convergence_RX" "L_convergence_RX_toNL62.i";
connectAttr "lookat_custom_range_plug.NL_62_Max" "L_convergence_RX_toNL62.imx";
connectAttr "lookat_custom_range_plug.NL_62_Min" "L_convergence_RX_toNL62.imn";
connectAttr "lookat_output.LeftEye_convergence_RZ" "L_convergence_RZ_toNL63.i";
connectAttr "lookat_custom_range_plug.NL_63_Max" "L_convergence_RZ_toNL63.imx";
connectAttr "lookat_custom_range_plug.NL_63_Min" "L_convergence_RZ_toNL63.imn";
connectAttr "lookat_output.LeftEye_convergence_RZ" "L_convergence_RZ_toNL64.i";
connectAttr "lookat_custom_range_plug.NL_64_Max" "L_convergence_RZ_toNL64.imx";
connectAttr "lookat_custom_range_plug.NL_64_Min" "L_convergence_RZ_toNL64.imn";
connectAttr "lookat_output.RightEye_convergence_RZ" "R_convergence_RZ_toNR63.i";
connectAttr "lookat_custom_range_plug.NR_63_Max" "R_convergence_RZ_toNR63.imx";
connectAttr "lookat_custom_range_plug.NR_63_Min" "R_convergence_RZ_toNR63.imn";
connectAttr "lookat_output.RightEye_convergence_RZ" "R_convergence_RZ_toNR64.i";
connectAttr "lookat_custom_range_plug.NR_64_Max" "R_convergence_RZ_toNR64.imx";
connectAttr "lookat_custom_range_plug.NR_64_Min" "R_convergence_RZ_toNR64.imn";
connectAttr "lookat_output.RightEye_convergence_RX" "R_convergence_RX_toNR61.i";
connectAttr "lookat_custom_range_plug.NR_61_Max" "R_convergence_RX_toNR61.imx";
connectAttr "lookat_custom_range_plug.NR_61_Min" "R_convergence_RX_toNR61.imn";
connectAttr "lookat_output.RightEye_convergence_RX" "R_convergence_RX_toNR62.i";
connectAttr "lookat_custom_range_plug.NR_62_Max" "R_convergence_RX_toNR62.imx";
connectAttr "lookat_custom_range_plug.NR_62_Min" "R_convergence_RX_toNR62.imn";
connectAttr "convergence_enabled_remap_crv.o" "NR_62_convergence_blend.b";
connectAttr "NR62_add_convergence_clamp.opr" "NR_62_convergence_blend.c1r";
connectAttr "eyes_combined_values.NR_62" "NR_62_convergence_blend.c2r";
connectAttr "convergence_enabled_remap_crv.o" "NL_62_convergence_blend.b";
connectAttr "NL62_add_convergence_clamp.opr" "NL_62_convergence_blend.c1r";
connectAttr "eyes_combined_values.NL_62" "NL_62_convergence_blend.c2r";
connectAttr "convergence_enabled_remap_crv.o" "NL_63_convergence_blend.b";
connectAttr "NL63_add_convergence_clamp.opr" "NL_63_convergence_blend.c1r";
connectAttr "eyes_combined_values.NL_63" "NL_63_convergence_blend.c2r";
connectAttr "convergence_enabled_remap_crv.o" "NR_61_convergence_blend.b";
connectAttr "NR61_add_convergence_clamp.opr" "NR_61_convergence_blend.c1r";
connectAttr "eyes_combined_values.NR_61" "NR_61_convergence_blend.c2r";
connectAttr "convergence_enabled_remap_crv.o" "NR_63_convergence_blend.b";
connectAttr "NR63_add_convergence_clamp.opr" "NR_63_convergence_blend.c1r";
connectAttr "eyes_combined_values.NR_63" "NR_63_convergence_blend.c2r";
connectAttr "convergence_enabled_remap_crv.o" "NL_64_convergence_blend.b";
connectAttr "NL64_add_convergence_clamp.opr" "NL_64_convergence_blend.c1r";
connectAttr "eyes_combined_values.NL_64" "NL_64_convergence_blend.c2r";
connectAttr "NL61_add_convergence_clamp.opr" "NL_61_convergence_blend.c1r";
connectAttr "convergence_enabled_remap_crv.o" "NL_61_convergence_blend.b";
connectAttr "eyes_combined_values.NL_61" "NL_61_convergence_blend.c2r";
connectAttr "convergence_enabled_remap_crv.o" "NR_64_convergence_blend.b";
connectAttr "NR64_add_convergence_clamp.opr" "NR_64_convergence_blend.c1r";
connectAttr "eyes_combined_values.NR_64" "NR_64_convergence_blend.c2r";
connectAttr "convergence_output.NR_63" "NR63_add_convergence.i1[0]";
connectAttr "eyes_combined_values.NR_63" "NR63_add_convergence.i1[1]";
connectAttr "convergence_output.NL_63" "NL63_add_convergence.i1[0]";
connectAttr "eyes_combined_values.NL_63" "NL63_add_convergence.i1[1]";
connectAttr "convergence_output.NR_64" "NR64_add_convergence.i1[0]";
connectAttr "eyes_combined_values.NR_64" "NR64_add_convergence.i1[1]";
connectAttr "convergence_output.NL_64" "NL64_add_convergence.i1[0]";
connectAttr "eyes_combined_values.NL_64" "NL64_add_convergence.i1[1]";
connectAttr "L_convergence_subtract.o3x" "L_convergence_RZ_reverse.i1x";
connectAttr "L_convergence_subtract.o3y" "L_convergence_RX_reverse.i1x";
connectAttr "R_convergence_subtract.o3x" "R_convergence_RZ_reverse.i1x";
connectAttr "R_convergence_subtract.o3y" "R_convergence_RX_reverse.i1x";
connectAttr "NL_61_pos.ov" "NL61_add_convergence_clamp.ipr";
connectAttr "NL_62_neg_to_pos.ov" "NL62_add_convergence_clamp.ipr";
connectAttr "NL63_add_convergence.o1" "NL63_add_convergence_clamp.ipr";
connectAttr "NL64_add_convergence.o1" "NL64_add_convergence_clamp.ipr";
connectAttr "NR64_add_convergence.o1" "NR64_add_convergence_clamp.ipr";
connectAttr "NR63_add_convergence.o1" "NR63_add_convergence_clamp.ipr";
connectAttr "NR_62_neg_to_pos.ov" "NR62_add_convergence_clamp.ipr";
connectAttr "NR_61_pos.ov" "NR61_add_convergence_clamp.ipr";
connectAttr "au_eyes_ctl.convergence_enabled" "convergence_enabled_remap_crv.i";
connectAttr "NL61_remap.ov" "AU61_combined_average.i1[0]";
connectAttr "NR61_remap.ov" "AU61_combined_average.i1[1]";
connectAttr "NL62_remap.ov" "AU62_combined_average.i1[0]";
connectAttr "NR62_remap.ov" "AU62_combined_average.i1[1]";
connectAttr "NL64_remap.ov" "AU64_combined_average.i1[0]";
connectAttr "NR64_remap.ov" "AU64_combined_average.i1[1]";
connectAttr "NL63_remap.ov" "AU63_combined_average.i1[0]";
connectAttr "NR63_remap.ov" "AU63_combined_average.i1[1]";
connectAttr "AU61_combined_average.o1" "AU6162_average_combined.i1[0]";
connectAttr "AU62_combined_average.o1" "AU6162_average_combined.i1[1]";
connectAttr "AU63_combined_average.o1" "AU6364_average_combined.i1[0]";
connectAttr "AU64_combined_average.o1" "AU6364_average_combined.i1[1]";
connectAttr "eyes_combined_values.NR_63" "NR63_remap.i";
connectAttr "eyes_combined_values.NL_62" "NL62_remap.i";
connectAttr "eyes_combined_values.NL_64" "NL64_remap.i";
connectAttr "eyes_combined_values.NL_61" "NL61_remap.i";
connectAttr "eyes_combined_values.NR_64" "NR64_remap.i";
connectAttr "eyes_combined_values.NR_61" "NR61_remap.i";
connectAttr "eyes_combined_values.NR_62" "NR62_remap.i";
connectAttr "eyes_combined_values.NL_63" "NL63_remap.i";
connectAttr "NL61_remap.ov" "NL6162_combined.i1[0]";
connectAttr "NL62_remap.ov" "NL6162_combined.i1[1]";
connectAttr "NL63_remap.ov" "NL6364_combined.i1[0]";
connectAttr "NL64_remap.ov" "NL6364_combined.i1[1]";
connectAttr "NR61_remap.ov" "NR6162_combined.i1[0]";
connectAttr "NR62_remap.ov" "NR6162_combined.i1[1]";
connectAttr "NR63_remap.ov" "NR6364_combined.i1[0]";
connectAttr "NR64_remap.ov" "NR6364_combined.i1[1]";
connectAttr "AU6162_average_combined.o1" "AU6162_left_offset.i1[0]";
connectAttr "NL6162_combined.o1" "AU6162_left_offset.i1[1]";
connectAttr "AU6364_average_combined.o1" "AU6364_left_offset.i1[0]";
connectAttr "NL6364_combined.o1" "AU6364_left_offset.i1[1]";
connectAttr "AU6162_average_combined.o1" "AU6162_right_offset.i1[0]";
connectAttr "NR6162_combined.o1" "AU6162_right_offset.i1[1]";
connectAttr "AU6364_average_combined.o1" "AU6364_right_offset.i1[0]";
connectAttr "NR6364_combined.o1" "AU6364_right_offset.i1[1]";
connectAttr "AU6364_right_offset.o1" "AU6364_right_offset_reverse.i1x";
connectAttr "AU6364_left_offset.o1" "AU6364_left_offset_reverse.i1x";
connectAttr "eyes_distance_info.al" "eyes_distance_remap.omx";
connectAttr "au_eyes_ctl.convergenceOffset" "eyes_distance_remap.i";
connectAttr "eyes_distance_reverse.ox" "eyes_distance_reverse_remap.omx";
connectAttr "au_eyes_ctl.convergenceOffset" "eyes_distance_reverse_remap.i";
connectAttr "eyes_distance_info.al" "eyes_distance_reverse.i1x";
connectAttr "eyes_distance_reverse_remap.ov" "convergence_normalized.i1[0]";
connectAttr "eyes_distance_remap.ov" "convergence_normalized.i1[1]";
connectAttr "NL_61_62_add_convergence.o1" "NL_61_pos.i";
connectAttr "NL_61_62_add_convergence.o1" "NL_62_neg_to_pos.i";
connectAttr "NL_61_62_main_range.o1" "NL_61_62_add_convergence.i1[0]";
connectAttr "NL_61_62_convergence_range.o1" "NL_61_62_add_convergence.i1[1]";
connectAttr "NR_61_main_pos_range.ov" "NR_61_62_main_range.i1[0]";
connectAttr "NR_62_main_neg_range.ov" "NR_61_62_main_range.i1[1]";
connectAttr "NL_61_main_pos_range.ov" "NL_61_62_main_range.i1[0]";
connectAttr "NL_62_main_neg_range.ov" "NL_61_62_main_range.i1[1]";
connectAttr "NL_62_convergence_neg_range.ov" "NL_61_62_convergence_range.i1[0]";
connectAttr "NL_61_convergence_pos_range.ov" "NL_61_62_convergence_range.i1[1]";
connectAttr "NR_61_62_add_convergence.o1" "NR_61_pos.i";
connectAttr "NR_61_62_main_range.o1" "NR_61_62_add_convergence.i1[0]";
connectAttr "NR_61_62_convergence_range.o1" "NR_61_62_add_convergence.i1[1]";
connectAttr "convergence_output.NL_62" "NL_62_convergence_neg_range.i";
connectAttr "NR_61_62_add_convergence.o1" "NR_62_neg_to_pos.i";
connectAttr "convergence_output.NL_61" "NL_61_convergence_pos_range.i";
connectAttr "convergence_output.NR_61" "NR_61_convergence_pos_range.i";
connectAttr "NR_61_convergence_pos_range.ov" "NR_61_62_convergence_range.i1[0]";
connectAttr "NR_62_convergence_neg_range.ov" "NR_61_62_convergence_range.i1[1]";
connectAttr "eyes_combined_values.NL_61" "NL_61_main_pos_range.i";
connectAttr "eyes_combined_values.NL_62" "NL_62_main_neg_range.i";
connectAttr "eyes_combined_values.NR_62" "NR_62_main_neg_range.i";
connectAttr "eyes_combined_values.NR_61" "NR_61_main_pos_range.i";
connectAttr "convergence_output.NR_62" "NR_62_convergence_neg_range.i";
connectAttr "NL_62_main_neg_range.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "NR62_add_convergence_clamp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "NL_61_convergence_blend.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "NL_62_neg_to_pos.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "NL_61_convergence_pos_range.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "NR_61_convergence_blend.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "NL62_add_convergence_clamp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "convergence_output.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "NL_62_convergence_neg_range.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "NR_62_neg_to_pos.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "eyes_combined_values.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "NR_61_convergence_pos_range.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "NL_61_62_add_convergence.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "NR_61_main_pos_range.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "NR_62_convergence_blend.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "NL_61_pos.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn";
connectAttr "NR61_add_convergence_clamp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "hlp_control_lookat_output.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "NL_62_convergence_blend.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "NL_61_main_pos_range.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "NR_61_62_main_range.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "NR_61_62_add_convergence.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "NR_61_pos.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn";
connectAttr "NR_62_convergence_neg_range.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "NL_61_62_main_range.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "NR_61_62_convergence_range.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "NL_61_62_convergence_range.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "NL61_add_convergence_clamp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "NR_62_main_neg_range.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "l_aim_loc_to_NL_63_rmp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "l_aim_loc_to_NL_64_rmp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "l_aim_loc_to_NL_62_rmp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "l_aim_loc_to_NL_61_rmp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "l_aim_loc_to_NR_62_rmp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "l_aim_loc_to_NR_64_rmp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "l_aim_loc_to_NR_61_rmp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "l_aim_loc_to_NR_63_rmp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "royal_blue_md_value.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bright_red_md_value.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_eye_gaze_pos_x_to_NL_61.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_eye_gaze_neg_x_to_NL_62.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_eye_gaze_pos_x_to_NR_61.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_eye_gaze_neg_x_to_NR_62.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_eye_gaze_neg_y_to_NL_64.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_eye_gaze_pos_y_to_NL_63.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_eye_gaze_neg_y_to_NR_64.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_eye_gaze_pos_y_to_NR_63.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_eye_gaze_ctl_tx_sum.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_eye_gaze_ctl_ty_sum.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_eye_gaze_ctl_tx_sum.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_eye_gaze_ctl_ty_sum.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_gaze_ctl_posTX_to_left_eye_posRX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "L_gaze_ctl_posTY_to_left_eye_negRZ.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "R_gaze_ctl_posTX_to_right_eye_posRX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "R_gaze_ctl_posTY_to_right_eye_negRZ.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "gaze_ctl_posTY_to_eyes_negRZ.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "gaze_ctl_posTX_to_eyes_posRX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "L_gaze_ctl_negTY_to_left_eye_posRZ.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "L_gaze_ctl_neg_TX_to_left_eyes_neg_RX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "L_gaze_ctl_TY_to_left_eye_RZ.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "L_gaze_ctl_TX_to_left_eyes_RX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "R_gaze_ctl_negTY_to_right_eye_posRZ.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "R_gaze_ctl_negTX_to_right_eye_negRX.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "R_gaze_ctl_TX_to_right_eye_RX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "R_gaze_ctl_TY_to_right_eye_RZ.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "gaze_ctl_negTX_to_eyes_negRX.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "gaze_ctl_negTY_to_eyes_posRZ.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "gaze_ctl_TX_to_eyes_RX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "gaze_ctl_TY_to_eyes_RZ.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NLNR_61_Max_average.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NLNR_61_Min_average.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NLNR_62_Max_average.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NLNR_62_Min_average.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NLNR_63_Max_average.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NLNR_63_Min_average.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NLNR_64_Max_average.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NLNR_64_Min_average.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_offset_subtract.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "l_aim_loc_to_NL_64_rmp_offset.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "l_aim_loc_to_NL_63_rmp_offset.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "l_aim_loc_to_NL_62_rmp_offset.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "l_aim_loc_to_NL_61_rmp_offset.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "NL_6364_sum.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NL_6162_sum.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NL_61_to_pos10_offset.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NL_63_to_pos10_offset.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NL_64_to_neg10_offset.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NL_62_to_neg10_offset.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NLNR_64_to_neg11.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NLNR_6364_sum.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NLNR_63_to_pos10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NLNR_6162_sum.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "c_aim_loc_to_NLNR_62_rmp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NLNR_61_to_pos10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "c_aim_loc_to_NLNR_64_rmp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "c_aim_loc_to_NLNR_63_rmp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "c_aim_loc_to_NLNR_61_rmp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NLNR_62_to_neg10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_offset_subtract.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "r_aim_loc_to_NR_61_rmp_offset.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "r_aim_loc_to_NR_62_rmp_offset.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "NR_62_to_neg10_offset.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NR_61_to_pos10_offset.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "r_aim_loc_to_NR_63_rmp_offset.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "NR_63_to_pos10_offset.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "r_aim_loc_to_NR_64_rmp_offset.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "NR_64_to_neg10_offset.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NR_6364_sum.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NR_6162_sum.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NLNR_6364_clamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NLNR_6162_clamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NL_6162_clamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NL_6364_clamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NR_6364_clamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NR_6162_clamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "left_eye_distance_info.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "eyes_distance_info.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "right_eye_distance_info.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_direction_offset_sum.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_direction_offset_sum.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NL_6162_reverse.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NL_6364_reverse.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NR_6162_reverse.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NR_6364_reverse.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_lookat_unoffset_RZ_clamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_lookat_unoffset_RX_clamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_lookat_unoffset_RZ_clamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_lookat_unoffset_RX_clamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NL_6162_sum_reverse.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NL_6364_sum_reverse.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NR_6162_sum_reverse.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NR_6364_sum_reverse.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_convergence_subtract.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_convergence_subtract.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_convergence_RX_toNL61.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_convergence_RX_toNL62.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_convergence_RZ_toNL63.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_convergence_RZ_toNL64.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_convergence_RZ_toNR63.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_convergence_RZ_toNR64.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_convergence_RX_toNR61.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_convergence_RX_toNR62.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NR63_add_convergence.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NL63_add_convergence.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NR64_add_convergence.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NL64_add_convergence.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_convergence_RZ_reverse.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_convergence_RX_reverse.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_convergence_RZ_reverse.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_convergence_RX_reverse.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NL61_add_convergence_clamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NL62_add_convergence_clamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NL63_add_convergence_clamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NL64_add_convergence_clamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NR64_add_convergence_clamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NR63_add_convergence_clamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NR62_add_convergence_clamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NR61_add_convergence_clamp.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bright_yellow_md_value.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "template_grey_md_value.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "AU61_combined_average.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "AU62_combined_average.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "AU64_combined_average.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "AU63_combined_average.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "AU6162_average_combined.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "AU6364_average_combined.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NR63_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NL62_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NL64_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NL61_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NR64_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NR61_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NR62_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NL63_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NL6162_combined.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NL6364_combined.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NR6162_combined.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NR6364_combined.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "AU6162_left_offset.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "AU6364_left_offset.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "AU6162_right_offset.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "AU6364_right_offset.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "AU6364_right_offset_reverse.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "AU6364_left_offset_reverse.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "eyes_distance_remap.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "eyes_distance_reverse_remap.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "eyes_distance_reverse.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "convergence_normalized.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "white_md_value.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lookat_enabled_reverse.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NL_62_convergence_neg_range.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "NL_61_convergence_pos_range.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "NR_61_convergence_pos_range.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "NR_62_convergence_neg_range.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "NL_61_62_convergence_range.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NR_61_62_convergence_range.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NR_61_62_main_range.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NR_62_main_neg_range.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NL_61_main_pos_range.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NR_61_main_pos_range.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NL_61_62_main_range.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NL_62_main_neg_range.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NL_61_62_add_convergence.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NR_61_62_add_convergence.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NL_62_neg_to_pos.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NL_61_pos.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NR_61_pos.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NR_62_neg_to_pos.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "clashing_defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "fk_eye_setup_defaultRenderLayer.msg" ":defaultRenderingList1.r" -na
		;
connectAttr "fk_eye_setup_defaultRenderLayer1.msg" ":defaultRenderingList1.r" -na
		;
connectAttr "fk_eye_setup_fk_eye_setup_defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
dataStructure -fmt "raw" -as "name=FameDataStructure:string=value";
// End of lookat_control_setup.ma
