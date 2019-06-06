//Maya ASCII 2017ff05 scene
//Name: newcitybldgs_v08.ma
//Last modified: Thu, Jun 06, 2019 12:44:41 PM
//Codeset: UTF-8
requires maya "2017ff05";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201904300602-1020000";
fileInfo "osv" "Mac OS X 10.10.5";
createNode transform -s -n "persp";
	rename -uid "C3163D40-6A4D-4584-DD6B-93AF78AECF46";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 26.358291089354264 26.944610745044926 10.542564277518562 ;
	setAttr ".r" -type "double3" -43.50526638438 68.200000000000315 -8.5644322878719694e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "220D5CEE-2540-ABAD-0DA4-8D970F350F1C";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 39.13971408810518;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "837C6709-274A-1D6F-755A-16B69DB78132";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "8A91918F-8F43-E257-8E72-B3BBD44F5978";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "178D6950-6C48-D5D6-AD2B-28A85341FC90";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "55962D2D-1A48-F999-2865-3D9EF1FFC763";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "780320DA-AF44-12E8-0780-ED82212F6C1A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "E41EEBFF-074B-91D8-EC0A-1FA0040ED9F7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "building_grp";
	rename -uid "6A9E6BB9-FC4F-809B-17D0-B698BA2F75F6";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -1.1920928955078125e-07 1 -1.7881393432617188e-07 ;
	setAttr ".sp" -type "double3" -1.1920928955078125e-07 1 -1.7881393432617188e-07 ;
createNode transform -n "cube0" -p "building_grp";
	rename -uid "1160F0BF-964D-849D-A5F7-5DAF1E72A8A1";
createNode mesh -n "cube0Shape" -p "cube0";
	rename -uid "F2A339AF-5F4F-F291-3B08-97A10035DE07";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "cylinder0" -p "building_grp";
	rename -uid "9D83DA7C-484A-8909-BD8D-378C8312D319";
createNode mesh -n "cylinder0Shape" -p "cylinder0";
	rename -uid "B4FA0517-ED41-4CFB-A849-DA9E406E15EC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "city_ground";
	rename -uid "0B01152C-0240-7B7B-579D-3E9CA3D687EA";
	setAttr ".t" -type "double3" 22.95305921118176 0 -19.534568991371778 ;
	setAttr ".s" -type "double3" 2.882885430623356 1.3390106616762711 1.9903660638705598 ;
createNode mesh -n "city_groundShape" -p "city_ground";
	rename -uid "0F62C4A9-E04C-F8F1-54CF-668744534C7F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.60000002384185791 0.80000001192092896 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 7 ".pt";
	setAttr ".pt[1]" -type "float3" 0 1.4290535 0.96332556 ;
	setAttr ".pt[14]" -type "float3" 0 1.0852196 0 ;
	setAttr ".pt[15]" -type "float3" 0 1.0852196 0 ;
	setAttr ".pt[20]" -type "float3" 0 3.0566621 0 ;
	setAttr ".pt[21]" -type "float3" 0 3.0566621 0 ;
	setAttr ".pt[27]" -type "float3" 0 0 -0.58325249 ;
	setAttr ".pt[33]" -type "float3" 0 0 -1.1032594 ;
createNode mesh -n "city_groundShape1Orig" -p "city_ground";
	rename -uid "D3C5C918-0B4A-9B03-E476-BBB82DC9E851";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "city_hill";
	rename -uid "00378663-7449-76E1-6DFE-6A89927E0D38";
	setAttr ".t" -type "double3" -1.8065186394113812 0 -0.50322515728235473 ;
createNode nurbsSurface -n "city_hillShape" -p "city_hill";
	rename -uid "E57BC305-BB45-F0DA-CFCF-818583D578CD";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.4974358990740697;
	setAttr ".nvfa" 4.5;
	setAttr ".cvto" 3;
createNode nurbsSurface -n "city_hillShapeOrig" -p "city_hill";
	rename -uid "22935E18-E948-E515-9E96-19AD0ED655B5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode transform -n "citygroundhill_v01_ffd2LatticeGroup";
	rename -uid "9E0138AF-9C45-3ABD-0C11-80B8C833DC66";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.8065186394113812 0 -0.50322515728235473 ;
createNode transform -n "citygroundhill_v01_ffd2Lattice" -p "citygroundhill_v01_ffd2LatticeGroup";
	rename -uid "7B24676F-B346-8CEF-AD98-E68A2F380400";
	setAttr ".s" -type "double3" 17.991793895321216 9.9999999999999998e-13 24.768134456250571 ;
createNode lattice -n "citygroundhill_v01_ffd2LatticeShape" -p "citygroundhill_v01_ffd2Lattice";
	rename -uid "C4169EBA-214E-D406-A813-629CF3A8EDDF";
	setAttr -k off ".v";
	setAttr ".sd" 5;
	setAttr ".ud" 5;
	setAttr ".cc" -type "lattice" 5 5 5 125 -0.5 -0.5 -0.5 -0.25 -0.5
		 -0.5 0 -0.5 -0.5 0.25 -0.5 -0.5 0.5 1720448114469.8862 -0.49860826219532345 -0.5
		 -0.25 -0.5 -0.25 -0.25 -0.5 0 -0.25 -0.5 0.25 -0.25 -0.5 0.5 1720448114470.1362 -0.49860826219532345 -0.5
		 0 -0.5 -0.25 0 -0.5 0 0 -0.5 0.25 0 -0.5 0.5 1720448114470.3862 -0.49860826219532345 -0.5
		 0.25 -0.5 -0.25 0.25 -0.5 0 0.25 -0.5 0.25 0.25 -0.5 0.5 1720448114470.6362 -0.49860826219532345 -0.5
		 0.5 -0.5 -0.25 0.5 -0.5 0 0.5 -0.5 0.25 0.5 -0.5 0.5 1720448114470.8862 -0.49860826219532345 -0.5
		 -0.5 -0.25 -0.25 2533368516979.9141 -0.25 0 -0.5 -0.25 0.25 -0.5 -0.25 0.5 4871785587951.6045
		 -0.25 -0.5 -0.25 -0.25 -0.25 2533368516980.1641 -0.25 0 -0.25 -0.25 0.25 -0.25 -0.25 0.5
		 4871785587951.8545 -0.25 -0.5 0 -0.25 -0.25 2533368516980.4141 -0.25 0 0 -0.25 0.25
		 0 -0.25 0.5 4871785587952.1045 -0.25 -0.5 0.25 -0.25 -0.25 2533368516980.6641 -0.25 0
		 0.25 -0.25 0.25 0.25 -0.25 0.5 4871785587952.3545 -0.25 -0.5 0.5 -0.25 -0.25 2533368516980.9141
		 -0.25 0 0.5 -0.25 0.25 0.5 -0.25 0.5 4871785587952.6045 -0.25 -0.6805412766310619
		 -0.5 0 -0.25 -0.5 0 0 -0.5 0 0.25 -0.5 0 0.5 4871785587951.6045 0 -0.6805412766310619
		 -0.25 0 -0.25 -0.25 0 0 -0.25 0 0.25 -0.25 0 0.5 4871785587951.8545 0 -0.6805412766310619
		 0 0 -0.25 0 0 0 0 0 0.25 0 0 0.5 4871785587952.1045 0 -0.6805412766310619 0.25 0 -0.25
		 0.25 0 0 0.25 0 0.25 0.25 0 0.5 4871785587952.3545 0 -0.6805412766310619 0.5 0 -0.25
		 0.5 0 0 0.5 0 0.25 0.5 0 0.5 4871785587952.6045 0 -0.6805412766310619 -0.5 0.25 -0.25
		 -0.5 0.25 0 -0.5 0.25 0.25 -0.5 0.25 0.5 -0.5 0.25 -0.6805412766310619 -0.25 0.25 -0.25
		 -0.25 0.25 0 -0.25 0.25 0.25 -0.25 0.25 0.5 -0.25 0.25 -0.6805412766310619 0 0.25 -0.25
		 0 0.25 0 0 0.25 0.25 0 0.25 0.5 0 0.25 -0.6805412766310619 0.25 0.25 -0.25 0.25 0.25 0
		 0.25 0.25 0.25 0.25 0.25 0.5 0.25 0.25 -0.6805412766310619 0.5 0.25 -0.25 0.5 0.25 0
		 0.5 0.25 0.25 0.5 0.25 0.5 0.5 0.25 -0.5 -0.5 0.5 -0.25 -0.5 0.5 0 -0.5 0.5 0.25
		 -0.5 0.5 0.5 -0.5 0.5 -0.5 -0.25 0.5 -0.25 -0.25 0.5 0 -0.25 0.5 0.25 -0.25 0.5 0.5
		 -0.25 0.5 -0.5 0 0.5 -0.25 0 0.5 0 0 0.5 0.25 0 0.5 0.5 0 0.5 -0.5 0.25 0.5 -0.25
		 0.25 0.5 0 0.25 0.5 0.25 0.25 0.5 0.5 0.25 0.5 -0.5 0.5 0.5 -0.25 0.5 0.5 0 0.5 0.5 0.25
		 0.5 0.5 0.5 0.5 0.5 ;
createNode transform -n "citygroundhill_v01_ffd2Base" -p "citygroundhill_v01_ffd2LatticeGroup";
	rename -uid "9ACD4BBA-8742-67CD-8E8F-56836C94C04A";
	setAttr ".s" -type "double3" 17.991793895321216 9.9999999999999998e-13 24.768134456250571 ;
createNode baseLattice -n "citygroundhill_v01_ffd2BaseShape" -p "citygroundhill_v01_ffd2Base";
	rename -uid "7BCC4E5E-904B-16CE-BD7F-43956627D5AB";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode transform -n "city_grp";
	rename -uid "BE162C2D-1B4C-E0AF-0EC6-688D890DF2D4";
	setAttr ".rp" -type "double3" -3.1806493587835005 2.935892793976052 -0.50319775949702894 ;
	setAttr ".sp" -type "double3" -3.1806493587835005 2.935892793976052 -0.50319775949702894 ;
createNode transform -n "cube1" -p "city_grp";
	rename -uid "E4BD3FD5-3240-DAD2-7FF2-C6BC955156EC";
	setAttr ".t" -type "double3" -10.802415587071989 -7.5830541456745053e-16 11.880842070842931 ;
	setAttr ".r" -type "double3" -28 -1 24.000000000000004 ;
	setAttr ".s" -type "double3" 0.608 3.004 0.69 ;
createNode mesh -n "cube1Shape" -p "cube1";
	rename -uid "FC809A4C-B048-1BAF-7E92-15AF7A29A322";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cylinder1" -p "city_grp";
	rename -uid "62E5B0FF-474A-23F7-8B57-B9B3EE635FAF";
	setAttr ".t" -type "double3" -11.668618637403787 -6.5719802595848303e-16 10.229633107092893 ;
	setAttr ".r" -type "double3" -18 -29.999999999999996 27 ;
	setAttr ".s" -type "double3" 1.406 1.901 1.298 ;
createNode mesh -n "cylinder1Shape" -p "cylinder1";
	rename -uid "164CA459-1D43-4D57-3ADF-96A090C8A761";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cube2" -p "city_grp";
	rename -uid "A995F8A6-9148-B4E9-CFE8-22B41225C0FE";
	setAttr ".t" -type "double3" -13.401024738067379 -4.5498324874049251e-16 6.9272151795928174 ;
	setAttr ".r" -type "double3" 16 -39 -18 ;
	setAttr ".s" -type "double3" 1.171 0.898 0.837 ;
createNode mesh -n "cube2Shape" -p "cube2";
	rename -uid "40FA7BED-3B4E-E33D-1069-0ABFED9FB17B";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cube3" -p "city_grp";
	rename -uid "D370DEA0-A240-59FF-8B9C-22B3FFF8BD8D";
	setAttr ".t" -type "double3" -14.050677025816228 -1.5166108291347901e-16 1.9735882883427021 ;
	setAttr ".r" -type "double3" -4 -2 -11 ;
	setAttr ".s" -type "double3" 1.304 1.136 0.919 ;
createNode mesh -n "cube3Shape" -p "cube3";
	rename -uid "CAC6AB52-074E-C57F-7510-C9BD73ABCE71";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cylinder2" -p "city_grp";
	rename -uid "05C5F659-3548-EA35-8680-5E98E5824118";
	setAttr ".t" -type "double3" -12.751372450318531 1.5166108291353453e-16 -2.9800386029074142 ;
	setAttr ".r" -type "double3" 26 -41 -20 ;
	setAttr ".s" -type "double3" 0.748 3.254 1.259 ;
createNode mesh -n "cylinder2Shape" -p "cylinder2";
	rename -uid "1CEC138A-6747-6886-B501-6AAF2402513E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cylinder3" -p "city_grp";
	rename -uid "CFC9ED1F-F84C-70F4-0497-48A638309448";
	setAttr ".t" -type "double3" -10.802415587071989 4.5498324874049251e-16 -7.933665494157526 ;
	setAttr ".r" -type "double3" -11 -9 10 ;
	setAttr ".s" -type "double3" 1.353 1.422 1.293 ;
createNode mesh -n "cylinder3Shape" -p "cylinder3";
	rename -uid "F70788EA-E546-68A7-A76E-47802EC08A14";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cube4" -p "city_grp";
	rename -uid "B2248EB9-8B43-EE41-5BA7-869B300D762A";
	setAttr ".t" -type "double3" -10.802415587071989 6.5719802595842761e-16 -11.236083421657602 ;
	setAttr ".r" -type "double3" 21 10 -14 ;
	setAttr ".s" -type "double3" 0.926 2.219 0.536 ;
createNode mesh -n "cube4Shape" -p "cube4";
	rename -uid "19AC4D98-8349-01FC-8A7D-DA9F87C154B8";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cube5" -p "city_grp";
	rename -uid "E8767885-0D40-8D7D-A9B0-72B8B5C337CB";
	setAttr ".t" -type "double3" -10.802415587071989 7.5830541456745053e-16 -12.88729238540764 ;
	setAttr ".r" -type "double3" -28 38 5 ;
	setAttr ".s" -type "double3" 0.975 2.646 1.433 ;
createNode mesh -n "cube5Shape" -p "cube5";
	rename -uid "A369FD33-F04A-7250-8BE0-BCB13FCDD8C5";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cylinder4" -p "city_grp";
	rename -uid "BE7D1411-CD41-3177-6E74-5D876151295C";
	setAttr ".t" -type "double3" -9.6029626607172407 -7.5830541456745034e-16 11.880842070842927 ;
	setAttr ".r" -type "double3" -23 7 3.0000000000000004 ;
	setAttr ".s" -type "double3" 0.541 1.62 1.225 ;
createNode mesh -n "cylinder4Shape" -p "cylinder4";
	rename -uid "A4DCD9FD-F241-480C-EC8B-70A2B08BCBF7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cube6" -p "city_grp";
	rename -uid "41907B47-2F43-7B83-929B-04AF1A801C40";
	setAttr ".t" -type "double3" -10.260267478130501 -6.5719802595848293e-16 10.229633107092893 ;
	setAttr ".r" -type "double3" 27 -29.999999999999996 -18 ;
	setAttr ".s" -type "double3" 1.075 0.35 0.519 ;
createNode mesh -n "cube6Shape" -p "cube6";
	rename -uid "D4110C82-A943-C7A8-2CEB-ECA0AD243E14";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cube7" -p "city_grp";
	rename -uid "BBCEF820-974C-8217-91BF-779B827DEE04";
	setAttr ".t" -type "double3" -11.574877112957022 -4.5498324874049241e-16 6.9272151795928147 ;
	setAttr ".r" -type "double3" 14.999999999999998 -14 6.0000000000000009 ;
	setAttr ".s" -type "double3" 1.069 0.318 1.232 ;
createNode mesh -n "cube7Shape" -p "cube7";
	rename -uid "657D6FD1-3B45-5E00-D19B-9EAD560E3E92";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cylinder5" -p "city_grp";
	rename -uid "54B9E32A-924C-A0F3-50B4-EAA30E22EDCB";
	setAttr ".t" -type "double3" -12.067855726016969 5.7739681042243437e-05 1.9735882883427012 ;
	setAttr ".r" -type "double3" -28 -36 25 ;
	setAttr ".s" -type "double3" 0.984 2.824 0.676 ;
createNode mesh -n "cylinder5Shape" -p "cylinder5";
	rename -uid "422C86E9-5B41-A4A2-C69B-09A34D08AD76";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cube8" -p "city_grp";
	rename -uid "73D85BB4-9A4D-0C00-8778-83B428F40C61";
	setAttr ".t" -type "double3" -11.081898499897077 0.21979995896372873 -2.9800386029074133 ;
	setAttr ".r" -type "double3" -16 8 -6.0000000000000009 ;
	setAttr ".s" -type "double3" 1.486 1.242 1.23 ;
createNode mesh -n "cube8Shape" -p "cube8";
	rename -uid "DE37C027-594B-797D-5AC7-17A3D13F60EC";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cylinder6" -p "city_grp";
	rename -uid "F8C637C1-004C-8A8D-BBE8-B4AA8E312F9C";
	setAttr ".t" -type "double3" -9.6029626607172425 0.43949123539742962 -7.9336653579767873 ;
	setAttr ".r" -type "double3" 25 29.000000000000004 -1 ;
	setAttr ".s" -type "double3" 1.06 3.662 1.374 ;
createNode mesh -n "cylinder6Shape" -p "cylinder6";
	rename -uid "D835544F-5B4B-7E9D-F97F-97B1872C40AB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cylinder7" -p "city_grp";
	rename -uid "962AF1FF-E64B-1A86-0EE9-A49FEB6A5790";
	setAttr ".t" -type "double3" -9.6029626607172407 0.1465197345726677 -11.236082922328229 ;
	setAttr ".r" -type "double3" -21 -9 -26 ;
	setAttr ".s" -type "double3" 0.7 3.357 1.146 ;
createNode mesh -n "cylinder7Shape" -p "cylinder7";
	rename -uid "96D1F036-FB49-7549-2D04-AB940BE26BDB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cube9" -p "city_grp";
	rename -uid "F6593CA8-B148-5496-6F10-A5850864BD63";
	setAttr ".t" -type "double3" -9.6029626607172407 3.398416028659295e-05 -12.887291704503951 ;
	setAttr ".r" -type "double3" 7 35 23 ;
	setAttr ".s" -type "double3" 1.276 3.768 0.51 ;
createNode mesh -n "cube9Shape" -p "cube9";
	rename -uid "86C5021B-8E4D-9983-D046-E7B6B39F03B3";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cylinder8" -p "city_grp";
	rename -uid "50092ACD-DF4D-E85D-F136-CDBAF5025775";
	setAttr ".t" -type "double3" -7.2040568080077465 -7.5830541456745083e-16 11.880842070842935 ;
	setAttr ".r" -type "double3" -9 7 -8 ;
	setAttr ".s" -type "double3" 1.23 0.701 1.061 ;
createNode mesh -n "cylinder8Shape" -p "cylinder8";
	rename -uid "27F62864-3144-104F-BDF1-FB99DEE09AAF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cube10" -p "city_grp";
	rename -uid "0944FF2E-5649-C644-87DB-C7B00AFB92B6";
	setAttr ".t" -type "double3" -7.5588535774236512 -6.5719802595848323e-16 10.229633107092894 ;
	setAttr ".r" -type "double3" -21 10 14 ;
	setAttr ".s" -type "double3" 0.711 2.484 0.616 ;
createNode mesh -n "cube10Shape" -p "cube10";
	rename -uid "7538182A-6E42-B4E1-41E2-378EA5E4C666";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cylinder9" -p "city_grp";
	rename -uid "2EDC3ECC-EE40-955B-ECA5-DD9C9B939EB8";
	setAttr ".t" -type "double3" -8.2684471162554587 -4.549832487404927e-16 6.927215179592821 ;
	setAttr ".r" -type "double3" -24.000000000000004 39 -12.000000000000002 ;
	setAttr ".s" -type "double3" 0.619 0.505 0.926 ;
createNode mesh -n "cylinder9Shape" -p "cylinder9";
	rename -uid "D93F4029-FB43-CAC4-E0CE-9DB97CD520C1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cube11" -p "city_grp";
	rename -uid "E1AF50F8-D840-95B2-A2CA-D69B50AB8FBD";
	setAttr ".t" -type "double3" -8.5345446933173879 0.0046769141644338649 1.9735882883427025 ;
	setAttr ".r" -type "double3" -4 6.0000000000000009 -25 ;
	setAttr ".s" -type "double3" 0.514 2.064 1.039 ;
createNode mesh -n "cube11Shape" -p "cube11";
	rename -uid "DED6607E-684D-3649-96FC-4FB527EF4FDB";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cylinder10" -p "city_grp";
	rename -uid "DE9D5EB3-EF4E-6945-41A1-4786AD2D1375";
	setAttr ".t" -type "double3" -8.0023495391935313 0.42286195476279492 -2.9800386029074146 ;
	setAttr ".r" -type "double3" -3.0000000000000004 -23 14.999999999999998 ;
	setAttr ".s" -type "double3" 0.658 2.486 0.534 ;
createNode mesh -n "cylinder10Shape" -p "cylinder10";
	rename -uid "FFF79FE7-ED45-B970-0235-DABBFAD2172A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cube12" -p "city_grp";
	rename -uid "E7A750BF-4846-8629-6EC0-13A1E18DB6D7";
	setAttr ".t" -type "double3" -7.2040568080077465 0.83692062459335181 -7.9336544635178248 ;
	setAttr ".r" -type "double3" 0 -2 -1 ;
	setAttr ".s" -type "double3" 1.023 2.503 0.797 ;
createNode mesh -n "cube12Shape" -p "cube12";
	rename -uid "4CEA7805-3546-F450-FE3B-40BB2EF35594";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cylinder11" -p "city_grp";
	rename -uid "F24FA452-9F49-4184-172D-02A22FA066A6";
	setAttr ".t" -type "double3" -7.2040568080077465 0.28080868618655297 -11.236042975978689 ;
	setAttr ".r" -type "double3" -4 -24.000000000000004 -27 ;
	setAttr ".s" -type "double3" 1.107 2.113 1.257 ;
createNode mesh -n "cylinder11Shape" -p "cylinder11";
	rename -uid "37D75470-1847-52AA-E746-4EBD98154B04";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cylinder12" -p "city_grp";
	rename -uid "3A162E7C-044E-A6DF-DC7B-5AA055B6720E";
	setAttr ".t" -type "double3" -7.2040568080077465 0.0027527169831533735 -12.887237232209124 ;
	setAttr ".r" -type "double3" 11 13 -11 ;
	setAttr ".s" -type "double3" 0.571 0.296 0.585 ;
createNode mesh -n "cylinder12Shape" -p "cylinder12";
	rename -uid "060FBD84-C444-0212-4B22-3F9EF1EDC7A3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cylinder13" -p "city_grp";
	rename -uid "4F663FC1-8642-FCE8-F3ED-82B1F11EE5A6";
	setAttr ".t" -type "double3" -3.6056980289435021 -7.5830541456745083e-16 11.880842070842935 ;
	setAttr ".r" -type "double3" 11 -27 -4 ;
	setAttr ".s" -type "double3" 1.339 1.163 0.903 ;
createNode mesh -n "cylinder13Shape" -p "cylinder13";
	rename -uid "201271A4-5C4A-039F-CA8C-31B49D530EE6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cube13" -p "city_grp";
	rename -uid "74ABD27B-7B4C-AC53-2F9D-00B4B4893D87";
	setAttr ".t" -type "double3" -3.7179579442665034 -6.5719802595848323e-16 10.229633107092894 ;
	setAttr ".r" -type "double3" -4 19 11 ;
	setAttr ".s" -type "double3" 0.8 2.868 0.671 ;
createNode mesh -n "cube13Shape" -p "cube13";
	rename -uid "0C016E4C-204E-9350-6A22-C48EFCB68852";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cylinder14" -p "city_grp";
	rename -uid "6FF8E271-734F-77E1-FDE0-459386AAF702";
	setAttr ".t" -type "double3" -3.9424777749125051 -4.549832487404927e-16 6.927215179592821 ;
	setAttr ".r" -type "double3" -17 -14.999999999999998 14.999999999999998 ;
	setAttr ".s" -type "double3" 1.454 1.792 1.074 ;
createNode mesh -n "cylinder14Shape" -p "cylinder14";
	rename -uid "24027DFD-6047-A9C7-2CBD-5C93940C0D32";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cylinder15" -p "city_grp";
	rename -uid "6E238525-5140-ECE9-9C4A-9EB5948BE667";
	setAttr ".t" -type "double3" -4.026672711404756 0.074830626630944211 1.9735882883427025 ;
	setAttr ".r" -type "double3" 10 -37 -13 ;
	setAttr ".s" -type "double3" 1.447 1.695 0.607 ;
createNode mesh -n "cylinder15Shape" -p "cylinder15";
	rename -uid "272AC454-134F-CDAD-9315-429ACE0B3A65";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cube14" -p "city_grp";
	rename -uid "18E60CFF-E14D-3114-DEE1-72B4E228FE5F";
	setAttr ".t" -type "double3" -3.8582828384202541 0.47493057483894685 -2.9800386029074146 ;
	setAttr ".r" -type "double3" -22 20 -10 ;
	setAttr ".s" -type "double3" 0.556 2.637 1.269 ;
createNode mesh -n "cube14Shape" -p "cube14";
	rename -uid "756EFB28-CA4E-0BAA-93F8-03812A47A265";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cylinder16" -p "city_grp";
	rename -uid "B0A5B0CF-0B40-7B0F-7061-318094E5B04F";
	setAttr ".t" -type "double3" -3.6056980289435021 0.80900859076209297 -7.9334890039222694 ;
	setAttr ".r" -type "double3" 3.0000000000000004 -14.999999999999998 -1 ;
	setAttr ".s" -type "double3" 0.93 2.357 1.004 ;
createNode mesh -n "cylinder16Shape" -p "cylinder16";
	rename -uid "A9879D2E-1C44-6B05-BEB4-8E95CA055A8E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cube15" -p "city_grp";
	rename -uid "0262F2D1-6D47-8570-04AE-1B8EAD23B004";
	setAttr ".t" -type "double3" -3.6056980289435021 0.29903184474099292 -11.235436290794985 ;
	setAttr ".r" -type "double3" -14.999999999999998 -14 -17 ;
	setAttr ".s" -type "double3" 1.389 1.035 0.975 ;
createNode mesh -n "cube15Shape" -p "cube15";
	rename -uid "DAA86544-6946-7174-89BE-4BB824EBF16B";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cube16" -p "city_grp";
	rename -uid "D933E71D-FE42-E3F5-739F-E3A39C73C192";
	setAttr ".t" -type "double3" -3.6056980289435021 0.044043471730442658 -12.886409934231345 ;
	setAttr ".r" -type "double3" 18 -5 -19 ;
	setAttr ".s" -type "double3" 1.302 1.99 0.54 ;
createNode mesh -n "cube16Shape" -p "cube16";
	rename -uid "BA32144A-1D42-6635-D6F8-19AABD8DCDE0";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cube17" -p "city_grp";
	rename -uid "FE7F6614-AE4B-8033-43B1-538E1134FAF1";
	setAttr ".t" -type "double3" -0.0073392498792579364 -7.5830541456745043e-16 11.880842070842929 ;
	setAttr ".r" -type "double3" 12.000000000000002 -9 -12.000000000000002 ;
	setAttr ".s" -type "double3" 1.086 0.79 1.044 ;
createNode mesh -n "cube17Shape" -p "cube17";
	rename -uid "3254DF14-AD40-BBAE-D467-B08F1497F52E";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cube18" -p "city_grp";
	rename -uid "6D96EEDA-3641-6E1B-5F0B-549126C2B6B8";
	setAttr ".t" -type "double3" -0.029514047967752033 -6.5719802595848293e-16 10.229633107092893 ;
	setAttr ".r" -type "double3" -11 -26 21 ;
	setAttr ".s" -type "double3" 0.896 0.801 1.172 ;
createNode mesh -n "cube18Shape" -p "cube18";
	rename -uid "3C21C725-2C4F-3F94-F322-85ABB4679C6D";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cylinder17" -p "city_grp";
	rename -uid "1E90B55E-224A-6AD3-CA80-F592EB0ABAA4";
	setAttr ".t" -type "double3" -0.073863644144739782 -4.5498324874049251e-16 6.9272151795928165 ;
	setAttr ".r" -type "double3" -20 -20 -6.0000000000000009 ;
	setAttr ".s" -type "double3" 1.358 0.927 1.143 ;
createNode mesh -n "cylinder17Shape" -p "cylinder17";
	rename -uid "8CA260E1-844E-06C4-DDFC-D799FAB12641";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cube19" -p "city_grp";
	rename -uid "2D1A8492-8546-A8E5-7F66-85BCD7EAA7A7";
	setAttr ".t" -type "double3" -0.090494742711110465 0.37883004731915582 1.9735882883427016 ;
	setAttr ".r" -type "double3" -8 -14 -20 ;
	setAttr ".s" -type "double3" 0.573 0.296 1.318 ;
createNode mesh -n "cube19Shape" -p "cube19";
	rename -uid "E9475CD0-1C42-F530-3972-FFB7D903FE1D";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cylinder18" -p "city_grp";
	rename -uid "1B288AEF-6E4E-CE2B-02E6-B7A98FCABAED";
	setAttr ".t" -type "double3" -0.05723254557836932 0.78703357388187001 -2.9800386029074137 ;
	setAttr ".r" -type "double3" 25 -23 -26 ;
	setAttr ".s" -type "double3" 1.376 3.262 0.595 ;
createNode mesh -n "cylinder18Shape" -p "cylinder18";
	rename -uid "8C278B4E-2646-6F34-2B58-9A88A5729D75";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cylinder19" -p "city_grp";
	rename -uid "4018DAA6-E74A-A432-C641-34A5930CD660";
	setAttr ".t" -type "double3" -0.0073392498792579364 0.86100106825250056 -7.9327720123415251 ;
	setAttr ".r" -type "double3" -16 -22 -2 ;
	setAttr ".s" -type "double3" 0.895 2.683 0.529 ;
createNode mesh -n "cylinder19Shape" -p "cylinder19";
	rename -uid "955617C3-6E48-9C01-BB1C-82AFDA94B22F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cube20" -p "city_grp";
	rename -uid "8BB3103E-F74F-9446-3505-A394187EED28";
	setAttr ".t" -type "double3" -0.0073392498792579364 0.43564707317440893 -11.232807321665602 ;
	setAttr ".r" -type "double3" 17 -40 0 ;
	setAttr ".s" -type "double3" 0.725 2.93 1.302 ;
createNode mesh -n "cube20Shape" -p "cube20";
	rename -uid "BBAA0CB4-5544-651E-9DE0-4BBDAFF51C05";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cube21" -p "city_grp";
	rename -uid "B37C0285-9841-7CA4-2A8D-1AA1F4570440";
	setAttr ".t" -type "double3" -0.0073392498792579364 0.22297007563536295 -12.88282497632764 ;
	setAttr ".r" -type "double3" 20 21 -19 ;
	setAttr ".s" -type "double3" 1.354 2.113 1.03 ;
createNode mesh -n "cube21Shape" -p "cube21";
	rename -uid "14467F81-3247-BEBE-5F92-7BB2E9976F36";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cube22" -p "city_grp";
	rename -uid "FDEBC1BB-DB42-D85A-6206-14ADF8CF85E1";
	setAttr ".t" -type "double3" 3.591019529184984 -7.5830541456745083e-16 11.880842070842935 ;
	setAttr ".r" -type "double3" 2 14 -8 ;
	setAttr ".s" -type "double3" 0.651 3.56 0.8 ;
createNode mesh -n "cube22Shape" -p "cube22";
	rename -uid "BBF5B81E-0B46-9946-C5A9-E3913D57EA6B";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cylinder20" -p "city_grp";
	rename -uid "852D197A-FD40-DF33-351F-EBA027DDC169";
	setAttr ".t" -type "double3" 3.5896336043044537 -6.5719802595848323e-16 10.229633107092894 ;
	setAttr ".r" -type "double3" -2 -22 9 ;
	setAttr ".s" -type "double3" 1.052 3.414 1.062 ;
createNode mesh -n "cylinder20Shape" -p "cylinder20";
	rename -uid "26AEA648-B348-59BE-AE85-DAA1CEC1AF05";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cylinder21" -p "city_grp";
	rename -uid "6F852D1E-4B4A-A17D-969F-F58779A942E7";
	setAttr ".t" -type "double3" 3.5868617545433921 -4.549832487404927e-16 6.927215179592821 ;
	setAttr ".r" -type "double3" 20 6.0000000000000009 25 ;
	setAttr ".s" -type "double3" 0.699 3.456 1.256 ;
createNode mesh -n "cylinder21Shape" -p "cylinder21";
	rename -uid "5DEE8439-004A-F2E4-4C45-7C9FB984C994";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cylinder22" -p "city_grp";
	rename -uid "082A6214-F348-A241-2DE1-EAB4FCE93E7D";
	setAttr ".t" -type "double3" 3.5858223108829934 1.1972900260951096 1.9735882883427025 ;
	setAttr ".r" -type "double3" 9 -40 -14 ;
	setAttr ".s" -type "double3" 0.727 3.766 1.391 ;
createNode mesh -n "cylinder22Shape" -p "cylinder22";
	rename -uid "E6955DB2-6745-CEF4-7267-15ADE1A256F5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cube23" -p "city_grp";
	rename -uid "999628AF-6042-C952-4574-2B989CF044FB";
	setAttr ".t" -type "double3" 3.5879011982037898 2.0214250704390619 -2.9800386029074142 ;
	setAttr ".r" -type "double3" 17 4 -4 ;
	setAttr ".s" -type "double3" 0.719 2.414 0.998 ;
createNode mesh -n "cube23Shape" -p "cube23";
	rename -uid "7703C272-DF49-0EBB-9758-829B6BBCE9C7";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cylinder23" -p "city_grp";
	rename -uid "54C17546-A743-C130-0E62-A99E531B7833";
	setAttr ".t" -type "double3" 3.591019529184984 1.7892091982253193 -7.9308416503933774 ;
	setAttr ".r" -type "double3" 3.0000000000000004 0 -25 ;
	setAttr ".s" -type "double3" 0.715 2.811 1.002 ;
createNode mesh -n "cylinder23Shape" -p "cylinder23";
	rename -uid "04CC267F-134E-8A37-1BFA-389ABFC9D292";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cube24" -p "city_grp";
	rename -uid "38A5FD35-4B47-3E5C-4F1D-30A7DB2C3F9F";
	setAttr ".t" -type "double3" 3.591019529184984 1.0662000978664874 -11.225729327855726 ;
	setAttr ".r" -type "double3" 4 -18 -2 ;
	setAttr ".s" -type "double3" 0.61 0.962 1.456 ;
createNode mesh -n "cube24Shape" -p "cube24";
	rename -uid "4C2DEB66-8043-49DC-03AA-2E833857545D";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cylinder24" -p "city_grp";
	rename -uid "D6A57025-BC47-F394-625C-4291179C6337";
	setAttr ".t" -type "double3" 3.591019529184984 0.7046955476870711 -12.873173166586902 ;
	setAttr ".r" -type "double3" 3.0000000000000004 39 13 ;
	setAttr ".s" -type "double3" 0.814 0.725 1.499 ;
createNode mesh -n "cylinder24Shape" -p "cylinder24";
	rename -uid "B495ED17-7947-D857-83C7-57B585ECDF0B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cube25" -p "city_grp";
	rename -uid "1BEF2647-6F48-6F55-EF87-2EBBF4A081D3";
	setAttr ".t" -type "double3" 5.9899253818944791 -7.5830541456745053e-16 11.880842070842931 ;
	setAttr ".r" -type "double3" 7 31 -4 ;
	setAttr ".s" -type "double3" 0.572 1.965 0.902 ;
createNode mesh -n "cube25Shape" -p "cube25";
	rename -uid "10D75B25-8C47-ACEB-6D4D-29ABA611A97F";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cube26" -p "city_grp";
	rename -uid "0130A647-8741-7F33-F1F5-00860FA3DCC7";
	setAttr ".t" -type "double3" 5.9899082717107692 -6.5719802595848303e-16 10.229633107092893 ;
	setAttr ".r" -type "double3" -5 -44 28 ;
	setAttr ".s" -type "double3" 0.954 3.548 1.12 ;
createNode mesh -n "cube26Shape" -p "cube26";
	rename -uid "9BB433E4-9044-641F-8F91-1CA447B3EE1B";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cylinder25" -p "city_grp";
	rename -uid "7A12A277-FF4E-A504-9DED-ACA2A4546E67";
	setAttr ".t" -type "double3" 5.9898740513433495 -4.5498324874049251e-16 6.9272151795928174 ;
	setAttr ".r" -type "double3" -21 -36 7 ;
	setAttr ".s" -type "double3" 0.968 2.953 1.296 ;
createNode mesh -n "cylinder25Shape" -p "cylinder25";
	rename -uid "3505C1FC-584D-917D-D4DD-FD85CAA41C8A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cylinder26" -p "city_grp";
	rename -uid "F5092844-824F-1CFC-DE8B-0F84360D183F";
	setAttr ".t" -type "double3" 5.989861218705566 2.2181275869246582 1.9735882883427021 ;
	setAttr ".r" -type "double3" -11 -33 -19 ;
	setAttr ".s" -type "double3" 1.374 2.143 0.633 ;
createNode mesh -n "cylinder26Shape" -p "cylinder26";
	rename -uid "CC85538A-B64E-EA3C-FE17-CDA360F14BBD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cube27" -p "city_grp";
	rename -uid "E7D0CB71-254D-8233-3D87-D2928A67C815";
	setAttr ".t" -type "double3" 5.9898868839811312 3.6980002489194743 -2.9800386029074142 ;
	setAttr ".r" -type "double3" 17 -2 -3.0000000000000004 ;
	setAttr ".s" -type "double3" 0.906 1.811 0.916 ;
createNode mesh -n "cube27Shape" -p "cube27";
	rename -uid "75F8BC44-2F4E-F66C-43CB-E584160320AA";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cylinder27" -p "city_grp";
	rename -uid "02F78EFC-024B-B243-E1F2-6B9EC65E5C96";
	setAttr ".t" -type "double3" 5.9899253818944791 3.2208524242977594 -7.9284339749617541 ;
	setAttr ".r" -type "double3" 7 -6.0000000000000009 0 ;
	setAttr ".s" -type "double3" 0.729 0.618 0.821 ;
createNode mesh -n "cylinder27Shape" -p "cylinder27";
	rename -uid "7A512148-2245-743C-602A-A89AEBF31157";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cube28" -p "city_grp";
	rename -uid "C8523AE0-0040-9515-2830-99A40BA8CD6E";
	setAttr ".t" -type "double3" 5.9899253818944791 1.9439744757930069 -11.216901184606439 ;
	setAttr ".r" -type "double3" 22 -24.000000000000004 0 ;
	setAttr ".s" -type "double3" 1.328 0.854 1.203 ;
createNode mesh -n "cube28Shape" -p "cube28";
	rename -uid "7596F89C-6B48-3A38-86BC-B791983176E9";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cylinder28" -p "city_grp";
	rename -uid "6EBA17C6-0B4A-95FC-3E25-CFAF8101E88C";
	setAttr ".t" -type "double3" 5.9899253818944791 1.30553550154063 -12.861134789428782 ;
	setAttr ".r" -type "double3" 5 -22 -21 ;
	setAttr ".s" -type "double3" 0.885 1.719 1.238 ;
createNode mesh -n "cylinder28Shape" -p "cylinder28";
	rename -uid "7EC9136E-904A-4411-4990-0D8289511722";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cylinder29" -p "city_grp";
	rename -uid "74857800-CC45-5645-30D7-9AACA146EE00";
	setAttr ".t" -type "double3" 7.1893783082492266 -7.5830541456745053e-16 11.880842070842931 ;
	setAttr ".r" -type "double3" -10 9 -1 ;
	setAttr ".s" -type "double3" 1.127 1.442 1.178 ;
createNode mesh -n "cylinder29Shape" -p "cylinder29";
	rename -uid "858A0118-664E-C15B-DC68-029D6A200908";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cylinder30" -p "city_grp";
	rename -uid "8B98F1AC-F247-EEF1-6A69-D8A3E167263B";
	setAttr ".t" -type "double3" 7.1893783082492266 -6.5719802595848303e-16 10.229633107092893 ;
	setAttr ".r" -type "double3" -17 16 -7 ;
	setAttr ".s" -type "double3" 1.034 1.195 1.137 ;
createNode mesh -n "cylinder30Shape" -p "cylinder30";
	rename -uid "3FAB4E2B-434D-7995-6609-6DBFBEC8F711";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cube29" -p "city_grp";
	rename -uid "C5A3BDC8-F14E-0BA9-B960-01BB93E55B96";
	setAttr ".t" -type "double3" 7.1893783082492266 -4.5498324874049251e-16 6.9272151795928174 ;
	setAttr ".r" -type "double3" 14.999999999999998 0 21 ;
	setAttr ".s" -type "double3" 0.694 2.289 0.86 ;
createNode mesh -n "cube29Shape" -p "cube29";
	rename -uid "C13945AC-7441-3BEE-F159-4A99F19F523A";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cube30" -p "city_grp";
	rename -uid "C4EAFBF5-F94A-8D4D-1632-1C9D532D833B";
	setAttr ".t" -type "double3" 7.1893783082492266 2.9230713527712626 1.9735882883427021 ;
	setAttr ".r" -type "double3" -7 -12.000000000000002 9 ;
	setAttr ".s" -type "double3" 0.786 3.503 1.3 ;
createNode mesh -n "cube30Shape" -p "cube30";
	rename -uid "8CD54512-BA48-C75C-72DE-898DFA9CAA40";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cube31" -p "city_grp";
	rename -uid "044F5AC8-B746-127D-D1ED-B08C24CC2670";
	setAttr ".t" -type "double3" 7.1893783082492266 4.8717855879521048 -2.9800386029074142 ;
	setAttr ".r" -type "double3" -20 29.000000000000004 11 ;
	setAttr ".s" -type "double3" 1.21 0.741 0.889 ;
createNode mesh -n "cube31Shape" -p "cube31";
	rename -uid "C1462798-7C40-F064-B464-38848B651958";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cube32" -p "city_grp";
	rename -uid "03484033-0144-1A1C-A773-18998AE423D2";
	setAttr ".t" -type "double3" 7.1893783082492266 4.2415180932557606 -7.9267713443427104 ;
	setAttr ".r" -type "double3" 16 -42 -20 ;
	setAttr ".s" -type "double3" 1.109 1.745 0.842 ;
createNode mesh -n "cube32Shape" -p "cube32";
	rename -uid "538F7260-1040-9640-3C9F-7797B03164A9";
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
	setAttr -s 8 ".vt[0:7]"  -0.5 0 0.5 0.5 0 0.5 -0.5 1 0.5 0.5 1 0.5
		 -0.5 1 -0.5 0.5 1 -0.5 -0.5 0 -0.5 0.5 0 -0.5;
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
createNode transform -n "cylinder31" -p "city_grp";
	rename -uid "C97005D6-874B-CCCD-8EDF-38B2D1197EFF";
	setAttr ".t" -type "double3" 7.1893783082492266 2.5608047740655122 -11.210804872336611 ;
	setAttr ".r" -type "double3" 21 -39 3.0000000000000004 ;
	setAttr ".s" -type "double3" 0.908 3.613 0.618 ;
createNode mesh -n "cylinder31Shape" -p "cylinder31";
	rename -uid "74A86F1C-9340-0447-AE5C-01840AE42165";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cylinder32" -p "city_grp";
	rename -uid "D25D1F4E-0C44-E9F1-7734-9EB308455787";
	setAttr ".t" -type "double3" 7.1893783082492266 1.7204481144703869 -12.852821636333564 ;
	setAttr ".r" -type "double3" 8 -35 19 ;
	setAttr ".s" -type "double3" 0.613 3.4 0.562 ;
createNode mesh -n "cylinder32Shape" -p "cylinder32";
	rename -uid "E90FBEA8-B945-014B-70E1-E0B6D9C9944B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.9755286 -0.65450859
		 0.90450877 -0.7938928 0.7938928 -0.90450871 0.65450859 -0.97552848 0.5 -1.000000238419
		 0.34549141 -0.97552848 0.20610726 -0.90450865 0.095491379 -0.79389274 0.024471611
		 -0.65450853 -1.1920929e-07 -0.5 0.024471611 -0.34549147 0.095491409 -0.20610732 0.20610732
		 -0.095491439 0.34549147 -0.02447167 0.5 5.9604645e-08 0.65450847 -0.0244717 0.79389262
		 -0.095491469 0.90450847 -0.20610735 0.97552824 -0.3454915 1 -0.5 0 0 0.050000001
		 0 0.1 0 0.15000001 0 0.2 0 0.25 0 0.30000001 0 0.35000002 0 0.40000004 0 0.45000005
		 0 0.50000006 0 0.55000007 0 0.60000008 0 0.6500001 0 0.70000011 0 0.75000012 0 0.80000013
		 0 0.85000014 0 0.90000015 0 0.95000017 0 1.000000119209 0 0 1 0.050000001 1 0.1 1
		 0.15000001 1 0.2 1 0.25 1 0.30000001 1 0.35000002 1 0.40000004 1 0.45000005 1 0.50000006
		 1 0.55000007 1 0.60000008 1 0.6500001 1 0.70000011 1 0.75000012 1 0.80000013 1 0.85000014
		 1 0.90000015 1 0.95000017 1 1.000000119209 1 0.9755286 1.34549141 0.90450877 1.20610714
		 0.7938928 1.09549129 0.65450859 1.024471521 0.5 0.99999976 0.34549141 1.024471521
		 0.20610726 1.095491409 0.095491379 1.20610726 0.024471611 1.34549141 -1.1920929e-07
		 1.5 0.024471611 1.65450859 0.095491409 1.79389262 0.20610732 1.90450859 0.34549147
		 1.97552836 0.5 2 0.65450847 1.97552824 0.79389262 1.90450859 0.90450847 1.79389262
		 0.97552824 1.65450847 1 1.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 0 -0.30901718 0.80901754 0 -0.5877856
		 0.5877856 0 -0.80901748 0.30901715 0 -0.95105702 0 0 -1.000000476837 -0.30901715 0 -0.95105696
		 -0.58778548 0 -0.8090173 -0.80901724 0 -0.58778542 -0.95105678 0 -0.30901706 -1.000000238419 0 0
		 -0.95105678 0 0.30901706 -0.80901718 0 0.58778536 -0.58778536 0 0.80901712 -0.30901706 0 0.95105666
		 -2.9802322e-08 0 1.000000119209 0.30901697 0 0.9510566 0.58778524 0 0.80901706 0.809017 0 0.5877853
		 0.95105654 0 0.309017 1 0 0 0.95105714 2 -0.30901718 0.80901754 2 -0.5877856 0.5877856 2 -0.80901748
		 0.30901715 2 -0.95105702 0 2 -1.000000476837 -0.30901715 2 -0.95105696 -0.58778548 2 -0.8090173
		 -0.80901724 2 -0.58778542 -0.95105678 2 -0.30901706 -1.000000238419 2 0 -0.95105678 2 0.30901706
		 -0.80901718 2 0.58778536 -0.58778536 2 0.80901712 -0.30901706 2 0.95105666 -2.9802322e-08 2 1.000000119209
		 0.30901697 2 0.9510566 0.58778524 2 0.80901706 0.809017 2 0.5877853 0.95105654 2 0.309017
		 1 2 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "5D8469BF-F342-A90F-D0FA-38B11F2C7B92";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "242CC25E-C14D-D453-4B9E-C2845C4DC6DB";
createNode displayLayer -n "defaultLayer";
	rename -uid "1E3B923B-1B40-CB66-5974-46B12433342E";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "01F7288B-034C-46AE-7E68-0EB9FC6ED520";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "063B7828-E748-7F71-A3C6-5B967277AAF5";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "7CD15DA8-604C-E947-C237-93AAB9AFEE22";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "79FDFE97-C943-7101-DA9F-8E8BB886F2E7";
createNode polyCube -n "polyCube1";
	rename -uid "61017AD4-8340-B4F6-CAE4-D6BB4AD72D77";
	setAttr ".cuv" 4;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "0832084D-FB4F-3B91-ED40-D383DBD2902D";
	setAttr ".cuv" 4;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "AF8FAD0F-6E47-324C-AB51-0C9E2F6E6C67";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.5 0 1;
createNode transformGeometry -n "transformGeometry2";
	rename -uid "C25DC445-9C40-2AE8-7116-63AAD91AA4B3";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1 0 1;
createNode renderLayerManager -n "citygroundhill_v01_renderLayerManager";
	rename -uid "AF308316-0A4A-ECA9-F6A8-05BC33DE3D73";
createNode renderLayer -n "citygroundhill_v01_defaultRenderLayer";
	rename -uid "97D5FFE6-6E4B-DC30-1A5A-6D8DC2166892";
	setAttr ".g" yes;
createNode script -n "citygroundhill_v01_uiConfigurationScriptNode";
	rename -uid "6D5844E2-9043-5921-0464-FF832A81A6BB";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n"
		+ "            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 737\n            -height 586\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n"
		+ "            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n"
		+ "            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n"
		+ "            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 1\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n"
		+ "                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n"
		+ "                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n"
		+ "                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n"
		+ "\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap true\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 737\\n    -height 586\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 737\\n    -height 586\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 100 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels yes -displayAxesBold yes -perspectiveLabelPosition edge -orthographicLabelPosition axis;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "citygroundhill_v01_sceneConfigurationScriptNode";
	rename -uid "17C58F51-2E40-6ACE-6940-2090F43D075F";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyPlane -n "citygroundhill_v01_polyPlane1";
	rename -uid "88AF40C7-764E-A053-2A45-278B3C4F2BEB";
	setAttr ".w" 10;
	setAttr ".h" 10;
	setAttr ".sw" 5;
	setAttr ".sh" 5;
	setAttr ".cuv" 2;
createNode lambert -n "citygroundhill_v01_ground_mtl";
	rename -uid "AA28FA0E-E448-BFEA-020B-92A5A13A11AF";
	setAttr ".c" -type "float3" 0.12 0.072514586 0.025679998 ;
createNode shadingEngine -n "citygroundhill_v01_lambert2SG";
	rename -uid "BE7535CA-7546-8570-81FC-FFAE7380CFF8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "citygroundhill_v01_materialInfo1";
	rename -uid "4B75F505-B041-81D9-0178-B882146990CC";
createNode lambert -n "citygroundhill_v01_cube_mtl";
	rename -uid "43CE0FB2-E649-2CB9-A400-EEA784B6BB3C";
	setAttr ".c" -type "float3" 0.17414005 0.058080997 0.241 ;
createNode shadingEngine -n "citygroundhill_v01_lambert3SG";
	rename -uid "54794D88-A540-6254-9D2B-8B8EC4D26E9D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "citygroundhill_v01_materialInfo2";
	rename -uid "C0B48920-B64F-AB78-FC5C-97B3504097B8";
createNode lambert -n "citygroundhill_v01_cylinder_mtl";
	rename -uid "DDB18DC4-6C42-ADA1-223F-139337931A2E";
	setAttr ".c" -type "float3" 0.01743 0.105 0.099564828 ;
createNode shadingEngine -n "citygroundhill_v01_lambert4SG";
	rename -uid "6E7F1DA1-2647-FF64-946B-38BFCD875993";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "citygroundhill_v01_materialInfo3";
	rename -uid "BA0910AE-9E4E-8A3D-5752-C784DCC21744";
createNode lambert -n "citygroundhill_v01_torus_mtl";
	rename -uid "A78C2B49-3A43-15C5-1ACA-4482182BF548";
	setAttr ".c" -type "float3" 0.10614701 0.27265072 0.59299999 ;
createNode shadingEngine -n "citygroundhill_v01_lambert5SG";
	rename -uid "FD38233B-4F47-8310-B8A3-C0BF2157E2BD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "citygroundhill_v01_materialInfo4";
	rename -uid "194FD475-2142-F529-2BD4-47906EA27BEA";
createNode makeNurbPlane -n "citygroundhill_v01_makeNurbPlane1";
	rename -uid "DFA5AC4A-C245-00BF-A904-F0BD3B317FF1";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 17.991793895321216;
	setAttr ".lr" 1.3766350704301671;
	setAttr ".u" 5;
	setAttr ".v" 5;
createNode ffd -n "citygroundhill_v01_ffd2";
	rename -uid "6FF3C1AD-074C-8896-8F45-848E96E7ABE8";
	setAttr ".lis" 13;
	setAttr ".lo" yes;
createNode tweak -n "citygroundhill_v01_tweak2";
	rename -uid "F1B208EA-3B41-1A4A-884E-9DAC531422D5";
createNode objectSet -n "citygroundhill_v01_ffd2Set";
	rename -uid "61646571-084C-DC0E-C54A-F9B38948946A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "citygroundhill_v01_ffd2GroupId";
	rename -uid "6A887348-6946-4012-1F64-EFBB98C2ADF5";
	setAttr ".ihi" 0;
createNode groupParts -n "citygroundhill_v01_ffd2GroupParts";
	rename -uid "BD1EB306-E04A-DEC8-86F9-0BB57E58E854";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode objectSet -n "citygroundhill_v01_tweakSet2";
	rename -uid "981DF0A3-4D4F-CB09-DDE2-44AEE37F2568";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "citygroundhill_v01_groupId4";
	rename -uid "A0D62612-9448-3B26-177B-5F9E9AA4EE7C";
	setAttr ".ihi" 0;
createNode groupParts -n "citygroundhill_v01_groupParts4";
	rename -uid "972CECE0-4B4A-EE8A-CDDF-2DB2B01DAAFC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode lambert -n "citygroundhill_v01_hill_mtl";
	rename -uid "14BD1DC2-7A45-430F-F116-F496276520DD";
	setAttr ".c" -type "float3" 0.12 0.025599999 0.041999999 ;
createNode shadingEngine -n "citygroundhill_v01_hill_mtlSG";
	rename -uid "795A2575-4746-01D6-13AA-8CA0B87CCCF6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "citygroundhill_v01_materialInfo5";
	rename -uid "A675994E-794A-8F19-115F-17BC5FD9BB2D";
createNode nodeGraphEditorInfo -n "citygroundhill_v01_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "B0BB5FBA-7B42-A86B-539D-60BE63D59C63";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -148.51231944933176 -202.16623712469999 ;
	setAttr ".tgi[0].vh" -type "double2" 373.33640540900404 260.01862386094365 ;
	setAttr -s 2 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 171.42857360839844;
	setAttr ".tgi[0].ni[0].y" 157.14285278320312;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -135.71427917480469;
	setAttr ".tgi[0].ni[1].y" 157.14285278320312;
	setAttr ".tgi[0].ni[1].nvs" 1923;
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
	setAttr -s 7 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 9 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :initialShadingGroup;
	setAttr -s 66 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "transformGeometry1.og" "cube0Shape.i";
connectAttr "transformGeometry2.og" "cylinder0Shape.i";
connectAttr "city_groundShape1Orig.w" "city_groundShape.i";
connectAttr "citygroundhill_v01_polyPlane1.out" "city_groundShape1Orig.i";
connectAttr "citygroundhill_v01_ffd2GroupId.id" "city_hillShape.iog.og[0].gid";
connectAttr "citygroundhill_v01_ffd2Set.mwc" "city_hillShape.iog.og[0].gco";
connectAttr "citygroundhill_v01_groupId4.id" "city_hillShape.iog.og[1].gid";
connectAttr "citygroundhill_v01_tweakSet2.mwc" "city_hillShape.iog.og[1].gco";
connectAttr "citygroundhill_v01_ffd2.og[0]" "city_hillShape.cr";
connectAttr "citygroundhill_v01_tweak2.pl[0].cp[0]" "city_hillShape.twl";
connectAttr "citygroundhill_v01_makeNurbPlane1.os" "city_hillShapeOrig.cr";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "citygroundhill_v01_lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "citygroundhill_v01_lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "citygroundhill_v01_lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "citygroundhill_v01_lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "citygroundhill_v01_hill_mtlSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "citygroundhill_v01_lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "citygroundhill_v01_lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "citygroundhill_v01_lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "citygroundhill_v01_lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "citygroundhill_v01_hill_mtlSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "transformGeometry1.ig";
connectAttr "polyCylinder1.out" "transformGeometry2.ig";
connectAttr "citygroundhill_v01_renderLayerManager.rlmi[0]" "citygroundhill_v01_defaultRenderLayer.rlid"
		;
connectAttr "citygroundhill_v01_ground_mtl.oc" "citygroundhill_v01_lambert2SG.ss"
		;
connectAttr "city_groundShape.iog" "citygroundhill_v01_lambert2SG.dsm" -na;
connectAttr "citygroundhill_v01_lambert2SG.msg" "citygroundhill_v01_materialInfo1.sg"
		;
connectAttr "citygroundhill_v01_ground_mtl.msg" "citygroundhill_v01_materialInfo1.m"
		;
connectAttr "citygroundhill_v01_cube_mtl.oc" "citygroundhill_v01_lambert3SG.ss";
connectAttr "citygroundhill_v01_lambert3SG.msg" "citygroundhill_v01_materialInfo2.sg"
		;
connectAttr "citygroundhill_v01_cube_mtl.msg" "citygroundhill_v01_materialInfo2.m"
		;
connectAttr "citygroundhill_v01_cylinder_mtl.oc" "citygroundhill_v01_lambert4SG.ss"
		;
connectAttr "citygroundhill_v01_lambert4SG.msg" "citygroundhill_v01_materialInfo3.sg"
		;
connectAttr "citygroundhill_v01_cylinder_mtl.msg" "citygroundhill_v01_materialInfo3.m"
		;
connectAttr "citygroundhill_v01_torus_mtl.oc" "citygroundhill_v01_lambert5SG.ss"
		;
connectAttr "citygroundhill_v01_lambert5SG.msg" "citygroundhill_v01_materialInfo4.sg"
		;
connectAttr "citygroundhill_v01_torus_mtl.msg" "citygroundhill_v01_materialInfo4.m"
		;
connectAttr "citygroundhill_v01_ffd2GroupParts.og" "citygroundhill_v01_ffd2.ip[0].ig"
		;
connectAttr "citygroundhill_v01_ffd2GroupId.id" "citygroundhill_v01_ffd2.ip[0].gi"
		;
connectAttr "citygroundhill_v01_ffd2LatticeShape.wm" "citygroundhill_v01_ffd2.dlm"
		;
connectAttr "citygroundhill_v01_ffd2LatticeShape.lo" "citygroundhill_v01_ffd2.dlp"
		;
connectAttr "citygroundhill_v01_ffd2BaseShape.wm" "citygroundhill_v01_ffd2.blm";
connectAttr "citygroundhill_v01_groupParts4.og" "citygroundhill_v01_tweak2.ip[0].ig"
		;
connectAttr "citygroundhill_v01_groupId4.id" "citygroundhill_v01_tweak2.ip[0].gi"
		;
connectAttr "citygroundhill_v01_ffd2GroupId.msg" "citygroundhill_v01_ffd2Set.gn"
		 -na;
connectAttr "city_hillShape.iog.og[0]" "citygroundhill_v01_ffd2Set.dsm" -na;
connectAttr "citygroundhill_v01_ffd2.msg" "citygroundhill_v01_ffd2Set.ub[0]";
connectAttr "citygroundhill_v01_tweak2.og[0]" "citygroundhill_v01_ffd2GroupParts.ig"
		;
connectAttr "citygroundhill_v01_ffd2GroupId.id" "citygroundhill_v01_ffd2GroupParts.gi"
		;
connectAttr "citygroundhill_v01_groupId4.msg" "citygroundhill_v01_tweakSet2.gn" 
		-na;
connectAttr "city_hillShape.iog.og[1]" "citygroundhill_v01_tweakSet2.dsm" -na;
connectAttr "citygroundhill_v01_tweak2.msg" "citygroundhill_v01_tweakSet2.ub[0]"
		;
connectAttr "city_hillShapeOrig.ws" "citygroundhill_v01_groupParts4.ig";
connectAttr "citygroundhill_v01_groupId4.id" "citygroundhill_v01_groupParts4.gi"
		;
connectAttr "citygroundhill_v01_hill_mtl.oc" "citygroundhill_v01_hill_mtlSG.ss";
connectAttr "city_hillShape.iog" "citygroundhill_v01_hill_mtlSG.dsm" -na;
connectAttr "citygroundhill_v01_hill_mtlSG.msg" "citygroundhill_v01_materialInfo5.sg"
		;
connectAttr "citygroundhill_v01_hill_mtl.msg" "citygroundhill_v01_materialInfo5.m"
		;
connectAttr "citygroundhill_v01_hill_mtlSG.msg" "citygroundhill_v01_hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "citygroundhill_v01_hill_mtl.msg" "citygroundhill_v01_hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "citygroundhill_v01_lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "citygroundhill_v01_lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "citygroundhill_v01_lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "citygroundhill_v01_lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "citygroundhill_v01_hill_mtlSG.pa" ":renderPartition.st" -na;
connectAttr "citygroundhill_v01_ground_mtl.msg" ":defaultShaderList1.s" -na;
connectAttr "citygroundhill_v01_cube_mtl.msg" ":defaultShaderList1.s" -na;
connectAttr "citygroundhill_v01_cylinder_mtl.msg" ":defaultShaderList1.s" -na;
connectAttr "citygroundhill_v01_torus_mtl.msg" ":defaultShaderList1.s" -na;
connectAttr "citygroundhill_v01_hill_mtl.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "citygroundhill_v01_defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "cube0Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder0Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube2Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder2Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube4Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube5Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder4Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube6Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube7Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder5Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube8Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder6Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder7Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube9Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder8Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube10Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder9Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube11Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder10Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube12Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder11Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder12Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder13Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube13Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder14Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder15Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube14Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder16Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube15Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube16Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube17Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube18Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder17Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube19Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder18Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder19Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube20Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube21Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube22Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder20Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder21Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder22Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube23Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder23Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube24Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder24Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube25Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube26Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder25Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder26Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube27Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder27Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube28Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder28Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder29Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder30Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube29Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube30Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube31Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cube32Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder31Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "cylinder32Shape.iog" ":initialShadingGroup.dsm" -na;
// End of newcitybldgs_v08.ma
