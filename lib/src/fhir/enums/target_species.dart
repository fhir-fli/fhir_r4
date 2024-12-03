// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A species for which a medicinal product is intended.
class TargetSpecies extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  TargetSpecies._(super.value, [super.element]);

  /// Factory constructor to create [TargetSpecies] from JSON.
  factory TargetSpecies.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TargetSpecies.elementOnly.withElement(element);
    }
    return TargetSpecies._(value, element);
  }

  /// value100000108874
  static final TargetSpecies value100000108874 = TargetSpecies._(
    '100000108874',
  );

  /// value100000108875
  static final TargetSpecies value100000108875 = TargetSpecies._(
    '100000108875',
  );

  /// value100000108876
  static final TargetSpecies value100000108876 = TargetSpecies._(
    '100000108876',
  );

  /// value100000108877
  static final TargetSpecies value100000108877 = TargetSpecies._(
    '100000108877',
  );

  /// value100000108878
  static final TargetSpecies value100000108878 = TargetSpecies._(
    '100000108878',
  );

  /// value100000108879
  static final TargetSpecies value100000108879 = TargetSpecies._(
    '100000108879',
  );

  /// value100000108880
  static final TargetSpecies value100000108880 = TargetSpecies._(
    '100000108880',
  );

  /// value100000108881
  static final TargetSpecies value100000108881 = TargetSpecies._(
    '100000108881',
  );

  /// value100000108882
  static final TargetSpecies value100000108882 = TargetSpecies._(
    '100000108882',
  );

  /// value100000108883
  static final TargetSpecies value100000108883 = TargetSpecies._(
    '100000108883',
  );

  /// value100000108884
  static final TargetSpecies value100000108884 = TargetSpecies._(
    '100000108884',
  );

  /// value100000108885
  static final TargetSpecies value100000108885 = TargetSpecies._(
    '100000108885',
  );

  /// value100000108886
  static final TargetSpecies value100000108886 = TargetSpecies._(
    '100000108886',
  );

  /// value100000108887
  static final TargetSpecies value100000108887 = TargetSpecies._(
    '100000108887',
  );

  /// value100000108888
  static final TargetSpecies value100000108888 = TargetSpecies._(
    '100000108888',
  );

  /// value100000108889
  static final TargetSpecies value100000108889 = TargetSpecies._(
    '100000108889',
  );

  /// value100000108890
  static final TargetSpecies value100000108890 = TargetSpecies._(
    '100000108890',
  );

  /// value100000108891
  static final TargetSpecies value100000108891 = TargetSpecies._(
    '100000108891',
  );

  /// value100000108892
  static final TargetSpecies value100000108892 = TargetSpecies._(
    '100000108892',
  );

  /// value100000108893
  static final TargetSpecies value100000108893 = TargetSpecies._(
    '100000108893',
  );

  /// value100000108894
  static final TargetSpecies value100000108894 = TargetSpecies._(
    '100000108894',
  );

  /// value100000108895
  static final TargetSpecies value100000108895 = TargetSpecies._(
    '100000108895',
  );

  /// value100000108896
  static final TargetSpecies value100000108896 = TargetSpecies._(
    '100000108896',
  );

  /// value100000108897
  static final TargetSpecies value100000108897 = TargetSpecies._(
    '100000108897',
  );

  /// value100000108898
  static final TargetSpecies value100000108898 = TargetSpecies._(
    '100000108898',
  );

  /// value100000108899
  static final TargetSpecies value100000108899 = TargetSpecies._(
    '100000108899',
  );

  /// value100000108900
  static final TargetSpecies value100000108900 = TargetSpecies._(
    '100000108900',
  );

  /// value100000108901
  static final TargetSpecies value100000108901 = TargetSpecies._(
    '100000108901',
  );

  /// value100000108902
  static final TargetSpecies value100000108902 = TargetSpecies._(
    '100000108902',
  );

  /// value100000108903
  static final TargetSpecies value100000108903 = TargetSpecies._(
    '100000108903',
  );

  /// value100000108904
  static final TargetSpecies value100000108904 = TargetSpecies._(
    '100000108904',
  );

  /// value100000108905
  static final TargetSpecies value100000108905 = TargetSpecies._(
    '100000108905',
  );

  /// value100000108906
  static final TargetSpecies value100000108906 = TargetSpecies._(
    '100000108906',
  );

  /// value100000108907
  static final TargetSpecies value100000108907 = TargetSpecies._(
    '100000108907',
  );

  /// value100000108908
  static final TargetSpecies value100000108908 = TargetSpecies._(
    '100000108908',
  );

  /// value100000108909
  static final TargetSpecies value100000108909 = TargetSpecies._(
    '100000108909',
  );

  /// value100000108910
  static final TargetSpecies value100000108910 = TargetSpecies._(
    '100000108910',
  );

  /// value100000108911
  static final TargetSpecies value100000108911 = TargetSpecies._(
    '100000108911',
  );

  /// value100000108912
  static final TargetSpecies value100000108912 = TargetSpecies._(
    '100000108912',
  );

  /// value100000108913
  static final TargetSpecies value100000108913 = TargetSpecies._(
    '100000108913',
  );

  /// value100000108914
  static final TargetSpecies value100000108914 = TargetSpecies._(
    '100000108914',
  );

  /// value100000108915
  static final TargetSpecies value100000108915 = TargetSpecies._(
    '100000108915',
  );

  /// value100000108916
  static final TargetSpecies value100000108916 = TargetSpecies._(
    '100000108916',
  );

  /// value100000108917
  static final TargetSpecies value100000108917 = TargetSpecies._(
    '100000108917',
  );

  /// value100000108918
  static final TargetSpecies value100000108918 = TargetSpecies._(
    '100000108918',
  );

  /// value100000108919
  static final TargetSpecies value100000108919 = TargetSpecies._(
    '100000108919',
  );

  /// value100000108920
  static final TargetSpecies value100000108920 = TargetSpecies._(
    '100000108920',
  );

  /// value100000108921
  static final TargetSpecies value100000108921 = TargetSpecies._(
    '100000108921',
  );

  /// value100000108922
  static final TargetSpecies value100000108922 = TargetSpecies._(
    '100000108922',
  );

  /// value100000108923
  static final TargetSpecies value100000108923 = TargetSpecies._(
    '100000108923',
  );

  /// value100000108924
  static final TargetSpecies value100000108924 = TargetSpecies._(
    '100000108924',
  );

  /// value100000108925
  static final TargetSpecies value100000108925 = TargetSpecies._(
    '100000108925',
  );

  /// value100000108926
  static final TargetSpecies value100000108926 = TargetSpecies._(
    '100000108926',
  );

  /// value100000108927
  static final TargetSpecies value100000108927 = TargetSpecies._(
    '100000108927',
  );

  /// value100000108928
  static final TargetSpecies value100000108928 = TargetSpecies._(
    '100000108928',
  );

  /// value100000108929
  static final TargetSpecies value100000108929 = TargetSpecies._(
    '100000108929',
  );

  /// value100000108930
  static final TargetSpecies value100000108930 = TargetSpecies._(
    '100000108930',
  );

  /// value100000108931
  static final TargetSpecies value100000108931 = TargetSpecies._(
    '100000108931',
  );

  /// value100000108932
  static final TargetSpecies value100000108932 = TargetSpecies._(
    '100000108932',
  );

  /// value100000108933
  static final TargetSpecies value100000108933 = TargetSpecies._(
    '100000108933',
  );

  /// value100000108934
  static final TargetSpecies value100000108934 = TargetSpecies._(
    '100000108934',
  );

  /// value100000108935
  static final TargetSpecies value100000108935 = TargetSpecies._(
    '100000108935',
  );

  /// value100000108936
  static final TargetSpecies value100000108936 = TargetSpecies._(
    '100000108936',
  );

  /// value100000108937
  static final TargetSpecies value100000108937 = TargetSpecies._(
    '100000108937',
  );

  /// value100000108938
  static final TargetSpecies value100000108938 = TargetSpecies._(
    '100000108938',
  );

  /// value100000108939
  static final TargetSpecies value100000108939 = TargetSpecies._(
    '100000108939',
  );

  /// value100000108940
  static final TargetSpecies value100000108940 = TargetSpecies._(
    '100000108940',
  );

  /// value100000108941
  static final TargetSpecies value100000108941 = TargetSpecies._(
    '100000108941',
  );

  /// value100000108942
  static final TargetSpecies value100000108942 = TargetSpecies._(
    '100000108942',
  );

  /// value100000108943
  static final TargetSpecies value100000108943 = TargetSpecies._(
    '100000108943',
  );

  /// value100000108944
  static final TargetSpecies value100000108944 = TargetSpecies._(
    '100000108944',
  );

  /// value100000108945
  static final TargetSpecies value100000108945 = TargetSpecies._(
    '100000108945',
  );

  /// value100000108946
  static final TargetSpecies value100000108946 = TargetSpecies._(
    '100000108946',
  );

  /// value100000108947
  static final TargetSpecies value100000108947 = TargetSpecies._(
    '100000108947',
  );

  /// value100000108948
  static final TargetSpecies value100000108948 = TargetSpecies._(
    '100000108948',
  );

  /// value100000108949
  static final TargetSpecies value100000108949 = TargetSpecies._(
    '100000108949',
  );

  /// value100000108950
  static final TargetSpecies value100000108950 = TargetSpecies._(
    '100000108950',
  );

  /// value100000108951
  static final TargetSpecies value100000108951 = TargetSpecies._(
    '100000108951',
  );

  /// value100000108952
  static final TargetSpecies value100000108952 = TargetSpecies._(
    '100000108952',
  );

  /// value100000108953
  static final TargetSpecies value100000108953 = TargetSpecies._(
    '100000108953',
  );

  /// value100000108954
  static final TargetSpecies value100000108954 = TargetSpecies._(
    '100000108954',
  );

  /// value100000108955
  static final TargetSpecies value100000108955 = TargetSpecies._(
    '100000108955',
  );

  /// value100000108956
  static final TargetSpecies value100000108956 = TargetSpecies._(
    '100000108956',
  );

  /// value100000108957
  static final TargetSpecies value100000108957 = TargetSpecies._(
    '100000108957',
  );

  /// value100000108958
  static final TargetSpecies value100000108958 = TargetSpecies._(
    '100000108958',
  );

  /// value100000108959
  static final TargetSpecies value100000108959 = TargetSpecies._(
    '100000108959',
  );

  /// value100000108960
  static final TargetSpecies value100000108960 = TargetSpecies._(
    '100000108960',
  );

  /// value100000108961
  static final TargetSpecies value100000108961 = TargetSpecies._(
    '100000108961',
  );

  /// value100000108962
  static final TargetSpecies value100000108962 = TargetSpecies._(
    '100000108962',
  );

  /// value100000108963
  static final TargetSpecies value100000108963 = TargetSpecies._(
    '100000108963',
  );

  /// value100000108964
  static final TargetSpecies value100000108964 = TargetSpecies._(
    '100000108964',
  );

  /// value100000108965
  static final TargetSpecies value100000108965 = TargetSpecies._(
    '100000108965',
  );

  /// value100000108966
  static final TargetSpecies value100000108966 = TargetSpecies._(
    '100000108966',
  );

  /// value100000108967
  static final TargetSpecies value100000108967 = TargetSpecies._(
    '100000108967',
  );

  /// value100000108968
  static final TargetSpecies value100000108968 = TargetSpecies._(
    '100000108968',
  );

  /// value100000108969
  static final TargetSpecies value100000108969 = TargetSpecies._(
    '100000108969',
  );

  /// value100000108970
  static final TargetSpecies value100000108970 = TargetSpecies._(
    '100000108970',
  );

  /// value100000108971
  static final TargetSpecies value100000108971 = TargetSpecies._(
    '100000108971',
  );

  /// value100000108972
  static final TargetSpecies value100000108972 = TargetSpecies._(
    '100000108972',
  );

  /// value100000108973
  static final TargetSpecies value100000108973 = TargetSpecies._(
    '100000108973',
  );

  /// value100000108974
  static final TargetSpecies value100000108974 = TargetSpecies._(
    '100000108974',
  );

  /// value100000108975
  static final TargetSpecies value100000108975 = TargetSpecies._(
    '100000108975',
  );

  /// value100000108976
  static final TargetSpecies value100000108976 = TargetSpecies._(
    '100000108976',
  );

  /// value100000108977
  static final TargetSpecies value100000108977 = TargetSpecies._(
    '100000108977',
  );

  /// value100000108978
  static final TargetSpecies value100000108978 = TargetSpecies._(
    '100000108978',
  );

  /// value100000108979
  static final TargetSpecies value100000108979 = TargetSpecies._(
    '100000108979',
  );

  /// value100000108980
  static final TargetSpecies value100000108980 = TargetSpecies._(
    '100000108980',
  );

  /// value100000108981
  static final TargetSpecies value100000108981 = TargetSpecies._(
    '100000108981',
  );

  /// value100000108982
  static final TargetSpecies value100000108982 = TargetSpecies._(
    '100000108982',
  );

  /// value100000108983
  static final TargetSpecies value100000108983 = TargetSpecies._(
    '100000108983',
  );

  /// value100000108984
  static final TargetSpecies value100000108984 = TargetSpecies._(
    '100000108984',
  );

  /// value100000108985
  static final TargetSpecies value100000108985 = TargetSpecies._(
    '100000108985',
  );

  /// value100000108986
  static final TargetSpecies value100000108986 = TargetSpecies._(
    '100000108986',
  );

  /// value100000108987
  static final TargetSpecies value100000108987 = TargetSpecies._(
    '100000108987',
  );

  /// value100000108988
  static final TargetSpecies value100000108988 = TargetSpecies._(
    '100000108988',
  );

  /// value100000108989
  static final TargetSpecies value100000108989 = TargetSpecies._(
    '100000108989',
  );

  /// value100000108990
  static final TargetSpecies value100000108990 = TargetSpecies._(
    '100000108990',
  );

  /// value100000108991
  static final TargetSpecies value100000108991 = TargetSpecies._(
    '100000108991',
  );

  /// value100000108992
  static final TargetSpecies value100000108992 = TargetSpecies._(
    '100000108992',
  );

  /// value100000108993
  static final TargetSpecies value100000108993 = TargetSpecies._(
    '100000108993',
  );

  /// value100000108994
  static final TargetSpecies value100000108994 = TargetSpecies._(
    '100000108994',
  );

  /// value100000108995
  static final TargetSpecies value100000108995 = TargetSpecies._(
    '100000108995',
  );

  /// value100000108996
  static final TargetSpecies value100000108996 = TargetSpecies._(
    '100000108996',
  );

  /// value100000108997
  static final TargetSpecies value100000108997 = TargetSpecies._(
    '100000108997',
  );

  /// value100000108998
  static final TargetSpecies value100000108998 = TargetSpecies._(
    '100000108998',
  );

  /// value100000108999
  static final TargetSpecies value100000108999 = TargetSpecies._(
    '100000108999',
  );

  /// value100000109000
  static final TargetSpecies value100000109000 = TargetSpecies._(
    '100000109000',
  );

  /// value100000109001
  static final TargetSpecies value100000109001 = TargetSpecies._(
    '100000109001',
  );

  /// value100000109002
  static final TargetSpecies value100000109002 = TargetSpecies._(
    '100000109002',
  );

  /// value100000109003
  static final TargetSpecies value100000109003 = TargetSpecies._(
    '100000109003',
  );

  /// value100000109004
  static final TargetSpecies value100000109004 = TargetSpecies._(
    '100000109004',
  );

  /// value100000109005
  static final TargetSpecies value100000109005 = TargetSpecies._(
    '100000109005',
  );

  /// value100000109006
  static final TargetSpecies value100000109006 = TargetSpecies._(
    '100000109006',
  );

  /// value100000109007
  static final TargetSpecies value100000109007 = TargetSpecies._(
    '100000109007',
  );

  /// value100000109008
  static final TargetSpecies value100000109008 = TargetSpecies._(
    '100000109008',
  );

  /// value100000109009
  static final TargetSpecies value100000109009 = TargetSpecies._(
    '100000109009',
  );

  /// value100000109010
  static final TargetSpecies value100000109010 = TargetSpecies._(
    '100000109010',
  );

  /// value100000109011
  static final TargetSpecies value100000109011 = TargetSpecies._(
    '100000109011',
  );

  /// value100000109012
  static final TargetSpecies value100000109012 = TargetSpecies._(
    '100000109012',
  );

  /// value100000109013
  static final TargetSpecies value100000109013 = TargetSpecies._(
    '100000109013',
  );

  /// value100000109014
  static final TargetSpecies value100000109014 = TargetSpecies._(
    '100000109014',
  );

  /// value100000109015
  static final TargetSpecies value100000109015 = TargetSpecies._(
    '100000109015',
  );

  /// value100000109016
  static final TargetSpecies value100000109016 = TargetSpecies._(
    '100000109016',
  );

  /// value100000109017
  static final TargetSpecies value100000109017 = TargetSpecies._(
    '100000109017',
  );

  /// value100000109018
  static final TargetSpecies value100000109018 = TargetSpecies._(
    '100000109018',
  );

  /// value100000109019
  static final TargetSpecies value100000109019 = TargetSpecies._(
    '100000109019',
  );

  /// value100000109020
  static final TargetSpecies value100000109020 = TargetSpecies._(
    '100000109020',
  );

  /// value100000109021
  static final TargetSpecies value100000109021 = TargetSpecies._(
    '100000109021',
  );

  /// value100000109022
  static final TargetSpecies value100000109022 = TargetSpecies._(
    '100000109022',
  );

  /// value100000109023
  static final TargetSpecies value100000109023 = TargetSpecies._(
    '100000109023',
  );

  /// value100000109024
  static final TargetSpecies value100000109024 = TargetSpecies._(
    '100000109024',
  );

  /// value100000109025
  static final TargetSpecies value100000109025 = TargetSpecies._(
    '100000109025',
  );

  /// value100000109026
  static final TargetSpecies value100000109026 = TargetSpecies._(
    '100000109026',
  );

  /// value100000109027
  static final TargetSpecies value100000109027 = TargetSpecies._(
    '100000109027',
  );

  /// value100000109028
  static final TargetSpecies value100000109028 = TargetSpecies._(
    '100000109028',
  );

  /// value100000109029
  static final TargetSpecies value100000109029 = TargetSpecies._(
    '100000109029',
  );

  /// value100000109030
  static final TargetSpecies value100000109030 = TargetSpecies._(
    '100000109030',
  );

  /// value100000109031
  static final TargetSpecies value100000109031 = TargetSpecies._(
    '100000109031',
  );

  /// value100000109032
  static final TargetSpecies value100000109032 = TargetSpecies._(
    '100000109032',
  );

  /// value100000109033
  static final TargetSpecies value100000109033 = TargetSpecies._(
    '100000109033',
  );

  /// value100000109034
  static final TargetSpecies value100000109034 = TargetSpecies._(
    '100000109034',
  );

  /// value100000109035
  static final TargetSpecies value100000109035 = TargetSpecies._(
    '100000109035',
  );

  /// value100000109036
  static final TargetSpecies value100000109036 = TargetSpecies._(
    '100000109036',
  );

  /// value100000109037
  static final TargetSpecies value100000109037 = TargetSpecies._(
    '100000109037',
  );

  /// value100000109038
  static final TargetSpecies value100000109038 = TargetSpecies._(
    '100000109038',
  );

  /// value100000109039
  static final TargetSpecies value100000109039 = TargetSpecies._(
    '100000109039',
  );

  /// value100000109040
  static final TargetSpecies value100000109040 = TargetSpecies._(
    '100000109040',
  );

  /// value100000109041
  static final TargetSpecies value100000109041 = TargetSpecies._(
    '100000109041',
  );

  /// value100000109042
  static final TargetSpecies value100000109042 = TargetSpecies._(
    '100000109042',
  );

  /// value100000109043
  static final TargetSpecies value100000109043 = TargetSpecies._(
    '100000109043',
  );

  /// value100000109044
  static final TargetSpecies value100000109044 = TargetSpecies._(
    '100000109044',
  );

  /// value100000109045
  static final TargetSpecies value100000109045 = TargetSpecies._(
    '100000109045',
  );

  /// value100000109046
  static final TargetSpecies value100000109046 = TargetSpecies._(
    '100000109046',
  );

  /// value100000109047
  static final TargetSpecies value100000109047 = TargetSpecies._(
    '100000109047',
  );

  /// value100000109048
  static final TargetSpecies value100000109048 = TargetSpecies._(
    '100000109048',
  );

  /// value100000109049
  static final TargetSpecies value100000109049 = TargetSpecies._(
    '100000109049',
  );

  /// value100000109050
  static final TargetSpecies value100000109050 = TargetSpecies._(
    '100000109050',
  );

  /// value100000109051
  static final TargetSpecies value100000109051 = TargetSpecies._(
    '100000109051',
  );

  /// value100000109052
  static final TargetSpecies value100000109052 = TargetSpecies._(
    '100000109052',
  );

  /// value100000109053
  static final TargetSpecies value100000109053 = TargetSpecies._(
    '100000109053',
  );

  /// value100000109054
  static final TargetSpecies value100000109054 = TargetSpecies._(
    '100000109054',
  );

  /// value100000109055
  static final TargetSpecies value100000109055 = TargetSpecies._(
    '100000109055',
  );

  /// value100000109056
  static final TargetSpecies value100000109056 = TargetSpecies._(
    '100000109056',
  );

  /// value100000109057
  static final TargetSpecies value100000109057 = TargetSpecies._(
    '100000109057',
  );

  /// value100000109058
  static final TargetSpecies value100000109058 = TargetSpecies._(
    '100000109058',
  );

  /// value100000109059
  static final TargetSpecies value100000109059 = TargetSpecies._(
    '100000109059',
  );

  /// value100000109060
  static final TargetSpecies value100000109060 = TargetSpecies._(
    '100000109060',
  );

  /// value100000109061
  static final TargetSpecies value100000109061 = TargetSpecies._(
    '100000109061',
  );

  /// value100000109062
  static final TargetSpecies value100000109062 = TargetSpecies._(
    '100000109062',
  );

  /// value100000109063
  static final TargetSpecies value100000109063 = TargetSpecies._(
    '100000109063',
  );

  /// value100000109064
  static final TargetSpecies value100000109064 = TargetSpecies._(
    '100000109064',
  );

  /// value100000109065
  static final TargetSpecies value100000109065 = TargetSpecies._(
    '100000109065',
  );

  /// value100000109066
  static final TargetSpecies value100000109066 = TargetSpecies._(
    '100000109066',
  );

  /// value100000109067
  static final TargetSpecies value100000109067 = TargetSpecies._(
    '100000109067',
  );

  /// value100000109068
  static final TargetSpecies value100000109068 = TargetSpecies._(
    '100000109068',
  );

  /// value100000109069
  static final TargetSpecies value100000109069 = TargetSpecies._(
    '100000109069',
  );

  /// value100000109070
  static final TargetSpecies value100000109070 = TargetSpecies._(
    '100000109070',
  );

  /// value100000109071
  static final TargetSpecies value100000109071 = TargetSpecies._(
    '100000109071',
  );

  /// value100000109072
  static final TargetSpecies value100000109072 = TargetSpecies._(
    '100000109072',
  );

  /// value100000109073
  static final TargetSpecies value100000109073 = TargetSpecies._(
    '100000109073',
  );

  /// For instances where an Element is present but not value

  static final TargetSpecies elementOnly = TargetSpecies._('');

  /// List of all enum-like values
  static final List<TargetSpecies> values = [
    value100000108874,
    value100000108875,
    value100000108876,
    value100000108877,
    value100000108878,
    value100000108879,
    value100000108880,
    value100000108881,
    value100000108882,
    value100000108883,
    value100000108884,
    value100000108885,
    value100000108886,
    value100000108887,
    value100000108888,
    value100000108889,
    value100000108890,
    value100000108891,
    value100000108892,
    value100000108893,
    value100000108894,
    value100000108895,
    value100000108896,
    value100000108897,
    value100000108898,
    value100000108899,
    value100000108900,
    value100000108901,
    value100000108902,
    value100000108903,
    value100000108904,
    value100000108905,
    value100000108906,
    value100000108907,
    value100000108908,
    value100000108909,
    value100000108910,
    value100000108911,
    value100000108912,
    value100000108913,
    value100000108914,
    value100000108915,
    value100000108916,
    value100000108917,
    value100000108918,
    value100000108919,
    value100000108920,
    value100000108921,
    value100000108922,
    value100000108923,
    value100000108924,
    value100000108925,
    value100000108926,
    value100000108927,
    value100000108928,
    value100000108929,
    value100000108930,
    value100000108931,
    value100000108932,
    value100000108933,
    value100000108934,
    value100000108935,
    value100000108936,
    value100000108937,
    value100000108938,
    value100000108939,
    value100000108940,
    value100000108941,
    value100000108942,
    value100000108943,
    value100000108944,
    value100000108945,
    value100000108946,
    value100000108947,
    value100000108948,
    value100000108949,
    value100000108950,
    value100000108951,
    value100000108952,
    value100000108953,
    value100000108954,
    value100000108955,
    value100000108956,
    value100000108957,
    value100000108958,
    value100000108959,
    value100000108960,
    value100000108961,
    value100000108962,
    value100000108963,
    value100000108964,
    value100000108965,
    value100000108966,
    value100000108967,
    value100000108968,
    value100000108969,
    value100000108970,
    value100000108971,
    value100000108972,
    value100000108973,
    value100000108974,
    value100000108975,
    value100000108976,
    value100000108977,
    value100000108978,
    value100000108979,
    value100000108980,
    value100000108981,
    value100000108982,
    value100000108983,
    value100000108984,
    value100000108985,
    value100000108986,
    value100000108987,
    value100000108988,
    value100000108989,
    value100000108990,
    value100000108991,
    value100000108992,
    value100000108993,
    value100000108994,
    value100000108995,
    value100000108996,
    value100000108997,
    value100000108998,
    value100000108999,
    value100000109000,
    value100000109001,
    value100000109002,
    value100000109003,
    value100000109004,
    value100000109005,
    value100000109006,
    value100000109007,
    value100000109008,
    value100000109009,
    value100000109010,
    value100000109011,
    value100000109012,
    value100000109013,
    value100000109014,
    value100000109015,
    value100000109016,
    value100000109017,
    value100000109018,
    value100000109019,
    value100000109020,
    value100000109021,
    value100000109022,
    value100000109023,
    value100000109024,
    value100000109025,
    value100000109026,
    value100000109027,
    value100000109028,
    value100000109029,
    value100000109030,
    value100000109031,
    value100000109032,
    value100000109033,
    value100000109034,
    value100000109035,
    value100000109036,
    value100000109037,
    value100000109038,
    value100000109039,
    value100000109040,
    value100000109041,
    value100000109042,
    value100000109043,
    value100000109044,
    value100000109045,
    value100000109046,
    value100000109047,
    value100000109048,
    value100000109049,
    value100000109050,
    value100000109051,
    value100000109052,
    value100000109053,
    value100000109054,
    value100000109055,
    value100000109056,
    value100000109057,
    value100000109058,
    value100000109059,
    value100000109060,
    value100000109061,
    value100000109062,
    value100000109063,
    value100000109064,
    value100000109065,
    value100000109066,
    value100000109067,
    value100000109068,
    value100000109069,
    value100000109070,
    value100000109071,
    value100000109072,
    value100000109073,
  ];

  /// Clones the current instance
  @override
  TargetSpecies clone() => TargetSpecies._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  TargetSpecies setElement(String name, dynamic elementValue) {
    return TargetSpecies._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  TargetSpecies withElement(Element? newElement) {
    return TargetSpecies._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  TargetSpecies copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return TargetSpecies._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
