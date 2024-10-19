// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// A species for which a medicinal product is intended.
@collection
class TargetSpecies {
  /// Constructor for internal use (like enum)
  TargetSpecies({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// TargetSpecies values
  /// value100000108874
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108874 = TargetSpecies(
    fhirCode: '100000108874',
  );

  /// value100000108875
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108875 = TargetSpecies(
    fhirCode: '100000108875',
  );

  /// value100000108876
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108876 = TargetSpecies(
    fhirCode: '100000108876',
  );

  /// value100000108877
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108877 = TargetSpecies(
    fhirCode: '100000108877',
  );

  /// value100000108878
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108878 = TargetSpecies(
    fhirCode: '100000108878',
  );

  /// value100000108879
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108879 = TargetSpecies(
    fhirCode: '100000108879',
  );

  /// value100000108880
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108880 = TargetSpecies(
    fhirCode: '100000108880',
  );

  /// value100000108881
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108881 = TargetSpecies(
    fhirCode: '100000108881',
  );

  /// value100000108882
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108882 = TargetSpecies(
    fhirCode: '100000108882',
  );

  /// value100000108883
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108883 = TargetSpecies(
    fhirCode: '100000108883',
  );

  /// value100000108884
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108884 = TargetSpecies(
    fhirCode: '100000108884',
  );

  /// value100000108885
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108885 = TargetSpecies(
    fhirCode: '100000108885',
  );

  /// value100000108886
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108886 = TargetSpecies(
    fhirCode: '100000108886',
  );

  /// value100000108887
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108887 = TargetSpecies(
    fhirCode: '100000108887',
  );

  /// value100000108888
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108888 = TargetSpecies(
    fhirCode: '100000108888',
  );

  /// value100000108889
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108889 = TargetSpecies(
    fhirCode: '100000108889',
  );

  /// value100000108890
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108890 = TargetSpecies(
    fhirCode: '100000108890',
  );

  /// value100000108891
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108891 = TargetSpecies(
    fhirCode: '100000108891',
  );

  /// value100000108892
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108892 = TargetSpecies(
    fhirCode: '100000108892',
  );

  /// value100000108893
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108893 = TargetSpecies(
    fhirCode: '100000108893',
  );

  /// value100000108894
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108894 = TargetSpecies(
    fhirCode: '100000108894',
  );

  /// value100000108895
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108895 = TargetSpecies(
    fhirCode: '100000108895',
  );

  /// value100000108896
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108896 = TargetSpecies(
    fhirCode: '100000108896',
  );

  /// value100000108897
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108897 = TargetSpecies(
    fhirCode: '100000108897',
  );

  /// value100000108898
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108898 = TargetSpecies(
    fhirCode: '100000108898',
  );

  /// value100000108899
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108899 = TargetSpecies(
    fhirCode: '100000108899',
  );

  /// value100000108900
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108900 = TargetSpecies(
    fhirCode: '100000108900',
  );

  /// value100000108901
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108901 = TargetSpecies(
    fhirCode: '100000108901',
  );

  /// value100000108902
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108902 = TargetSpecies(
    fhirCode: '100000108902',
  );

  /// value100000108903
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108903 = TargetSpecies(
    fhirCode: '100000108903',
  );

  /// value100000108904
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108904 = TargetSpecies(
    fhirCode: '100000108904',
  );

  /// value100000108905
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108905 = TargetSpecies(
    fhirCode: '100000108905',
  );

  /// value100000108906
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108906 = TargetSpecies(
    fhirCode: '100000108906',
  );

  /// value100000108907
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108907 = TargetSpecies(
    fhirCode: '100000108907',
  );

  /// value100000108908
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108908 = TargetSpecies(
    fhirCode: '100000108908',
  );

  /// value100000108909
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108909 = TargetSpecies(
    fhirCode: '100000108909',
  );

  /// value100000108910
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108910 = TargetSpecies(
    fhirCode: '100000108910',
  );

  /// value100000108911
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108911 = TargetSpecies(
    fhirCode: '100000108911',
  );

  /// value100000108912
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108912 = TargetSpecies(
    fhirCode: '100000108912',
  );

  /// value100000108913
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108913 = TargetSpecies(
    fhirCode: '100000108913',
  );

  /// value100000108914
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108914 = TargetSpecies(
    fhirCode: '100000108914',
  );

  /// value100000108915
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108915 = TargetSpecies(
    fhirCode: '100000108915',
  );

  /// value100000108916
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108916 = TargetSpecies(
    fhirCode: '100000108916',
  );

  /// value100000108917
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108917 = TargetSpecies(
    fhirCode: '100000108917',
  );

  /// value100000108918
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108918 = TargetSpecies(
    fhirCode: '100000108918',
  );

  /// value100000108919
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108919 = TargetSpecies(
    fhirCode: '100000108919',
  );

  /// value100000108920
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108920 = TargetSpecies(
    fhirCode: '100000108920',
  );

  /// value100000108921
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108921 = TargetSpecies(
    fhirCode: '100000108921',
  );

  /// value100000108922
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108922 = TargetSpecies(
    fhirCode: '100000108922',
  );

  /// value100000108923
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108923 = TargetSpecies(
    fhirCode: '100000108923',
  );

  /// value100000108924
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108924 = TargetSpecies(
    fhirCode: '100000108924',
  );

  /// value100000108925
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108925 = TargetSpecies(
    fhirCode: '100000108925',
  );

  /// value100000108926
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108926 = TargetSpecies(
    fhirCode: '100000108926',
  );

  /// value100000108927
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108927 = TargetSpecies(
    fhirCode: '100000108927',
  );

  /// value100000108928
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108928 = TargetSpecies(
    fhirCode: '100000108928',
  );

  /// value100000108929
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108929 = TargetSpecies(
    fhirCode: '100000108929',
  );

  /// value100000108930
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108930 = TargetSpecies(
    fhirCode: '100000108930',
  );

  /// value100000108931
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108931 = TargetSpecies(
    fhirCode: '100000108931',
  );

  /// value100000108932
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108932 = TargetSpecies(
    fhirCode: '100000108932',
  );

  /// value100000108933
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108933 = TargetSpecies(
    fhirCode: '100000108933',
  );

  /// value100000108934
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108934 = TargetSpecies(
    fhirCode: '100000108934',
  );

  /// value100000108935
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108935 = TargetSpecies(
    fhirCode: '100000108935',
  );

  /// value100000108936
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108936 = TargetSpecies(
    fhirCode: '100000108936',
  );

  /// value100000108937
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108937 = TargetSpecies(
    fhirCode: '100000108937',
  );

  /// value100000108938
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108938 = TargetSpecies(
    fhirCode: '100000108938',
  );

  /// value100000108939
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108939 = TargetSpecies(
    fhirCode: '100000108939',
  );

  /// value100000108940
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108940 = TargetSpecies(
    fhirCode: '100000108940',
  );

  /// value100000108941
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108941 = TargetSpecies(
    fhirCode: '100000108941',
  );

  /// value100000108942
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108942 = TargetSpecies(
    fhirCode: '100000108942',
  );

  /// value100000108943
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108943 = TargetSpecies(
    fhirCode: '100000108943',
  );

  /// value100000108944
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108944 = TargetSpecies(
    fhirCode: '100000108944',
  );

  /// value100000108945
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108945 = TargetSpecies(
    fhirCode: '100000108945',
  );

  /// value100000108946
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108946 = TargetSpecies(
    fhirCode: '100000108946',
  );

  /// value100000108947
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108947 = TargetSpecies(
    fhirCode: '100000108947',
  );

  /// value100000108948
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108948 = TargetSpecies(
    fhirCode: '100000108948',
  );

  /// value100000108949
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108949 = TargetSpecies(
    fhirCode: '100000108949',
  );

  /// value100000108950
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108950 = TargetSpecies(
    fhirCode: '100000108950',
  );

  /// value100000108951
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108951 = TargetSpecies(
    fhirCode: '100000108951',
  );

  /// value100000108952
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108952 = TargetSpecies(
    fhirCode: '100000108952',
  );

  /// value100000108953
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108953 = TargetSpecies(
    fhirCode: '100000108953',
  );

  /// value100000108954
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108954 = TargetSpecies(
    fhirCode: '100000108954',
  );

  /// value100000108955
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108955 = TargetSpecies(
    fhirCode: '100000108955',
  );

  /// value100000108956
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108956 = TargetSpecies(
    fhirCode: '100000108956',
  );

  /// value100000108957
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108957 = TargetSpecies(
    fhirCode: '100000108957',
  );

  /// value100000108958
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108958 = TargetSpecies(
    fhirCode: '100000108958',
  );

  /// value100000108959
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108959 = TargetSpecies(
    fhirCode: '100000108959',
  );

  /// value100000108960
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108960 = TargetSpecies(
    fhirCode: '100000108960',
  );

  /// value100000108961
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108961 = TargetSpecies(
    fhirCode: '100000108961',
  );

  /// value100000108962
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108962 = TargetSpecies(
    fhirCode: '100000108962',
  );

  /// value100000108963
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108963 = TargetSpecies(
    fhirCode: '100000108963',
  );

  /// value100000108964
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108964 = TargetSpecies(
    fhirCode: '100000108964',
  );

  /// value100000108965
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108965 = TargetSpecies(
    fhirCode: '100000108965',
  );

  /// value100000108966
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108966 = TargetSpecies(
    fhirCode: '100000108966',
  );

  /// value100000108967
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108967 = TargetSpecies(
    fhirCode: '100000108967',
  );

  /// value100000108968
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108968 = TargetSpecies(
    fhirCode: '100000108968',
  );

  /// value100000108969
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108969 = TargetSpecies(
    fhirCode: '100000108969',
  );

  /// value100000108970
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108970 = TargetSpecies(
    fhirCode: '100000108970',
  );

  /// value100000108971
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108971 = TargetSpecies(
    fhirCode: '100000108971',
  );

  /// value100000108972
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108972 = TargetSpecies(
    fhirCode: '100000108972',
  );

  /// value100000108973
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108973 = TargetSpecies(
    fhirCode: '100000108973',
  );

  /// value100000108974
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108974 = TargetSpecies(
    fhirCode: '100000108974',
  );

  /// value100000108975
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108975 = TargetSpecies(
    fhirCode: '100000108975',
  );

  /// value100000108976
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108976 = TargetSpecies(
    fhirCode: '100000108976',
  );

  /// value100000108977
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108977 = TargetSpecies(
    fhirCode: '100000108977',
  );

  /// value100000108978
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108978 = TargetSpecies(
    fhirCode: '100000108978',
  );

  /// value100000108979
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108979 = TargetSpecies(
    fhirCode: '100000108979',
  );

  /// value100000108980
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108980 = TargetSpecies(
    fhirCode: '100000108980',
  );

  /// value100000108981
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108981 = TargetSpecies(
    fhirCode: '100000108981',
  );

  /// value100000108982
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108982 = TargetSpecies(
    fhirCode: '100000108982',
  );

  /// value100000108983
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108983 = TargetSpecies(
    fhirCode: '100000108983',
  );

  /// value100000108984
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108984 = TargetSpecies(
    fhirCode: '100000108984',
  );

  /// value100000108985
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108985 = TargetSpecies(
    fhirCode: '100000108985',
  );

  /// value100000108986
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108986 = TargetSpecies(
    fhirCode: '100000108986',
  );

  /// value100000108987
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108987 = TargetSpecies(
    fhirCode: '100000108987',
  );

  /// value100000108988
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108988 = TargetSpecies(
    fhirCode: '100000108988',
  );

  /// value100000108989
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108989 = TargetSpecies(
    fhirCode: '100000108989',
  );

  /// value100000108990
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108990 = TargetSpecies(
    fhirCode: '100000108990',
  );

  /// value100000108991
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108991 = TargetSpecies(
    fhirCode: '100000108991',
  );

  /// value100000108992
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108992 = TargetSpecies(
    fhirCode: '100000108992',
  );

  /// value100000108993
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108993 = TargetSpecies(
    fhirCode: '100000108993',
  );

  /// value100000108994
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108994 = TargetSpecies(
    fhirCode: '100000108994',
  );

  /// value100000108995
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108995 = TargetSpecies(
    fhirCode: '100000108995',
  );

  /// value100000108996
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108996 = TargetSpecies(
    fhirCode: '100000108996',
  );

  /// value100000108997
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108997 = TargetSpecies(
    fhirCode: '100000108997',
  );

  /// value100000108998
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108998 = TargetSpecies(
    fhirCode: '100000108998',
  );

  /// value100000108999
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000108999 = TargetSpecies(
    fhirCode: '100000108999',
  );

  /// value100000109000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109000 = TargetSpecies(
    fhirCode: '100000109000',
  );

  /// value100000109001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109001 = TargetSpecies(
    fhirCode: '100000109001',
  );

  /// value100000109002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109002 = TargetSpecies(
    fhirCode: '100000109002',
  );

  /// value100000109003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109003 = TargetSpecies(
    fhirCode: '100000109003',
  );

  /// value100000109004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109004 = TargetSpecies(
    fhirCode: '100000109004',
  );

  /// value100000109005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109005 = TargetSpecies(
    fhirCode: '100000109005',
  );

  /// value100000109006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109006 = TargetSpecies(
    fhirCode: '100000109006',
  );

  /// value100000109007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109007 = TargetSpecies(
    fhirCode: '100000109007',
  );

  /// value100000109008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109008 = TargetSpecies(
    fhirCode: '100000109008',
  );

  /// value100000109009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109009 = TargetSpecies(
    fhirCode: '100000109009',
  );

  /// value100000109010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109010 = TargetSpecies(
    fhirCode: '100000109010',
  );

  /// value100000109011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109011 = TargetSpecies(
    fhirCode: '100000109011',
  );

  /// value100000109012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109012 = TargetSpecies(
    fhirCode: '100000109012',
  );

  /// value100000109013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109013 = TargetSpecies(
    fhirCode: '100000109013',
  );

  /// value100000109014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109014 = TargetSpecies(
    fhirCode: '100000109014',
  );

  /// value100000109015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109015 = TargetSpecies(
    fhirCode: '100000109015',
  );

  /// value100000109016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109016 = TargetSpecies(
    fhirCode: '100000109016',
  );

  /// value100000109017
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109017 = TargetSpecies(
    fhirCode: '100000109017',
  );

  /// value100000109018
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109018 = TargetSpecies(
    fhirCode: '100000109018',
  );

  /// value100000109019
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109019 = TargetSpecies(
    fhirCode: '100000109019',
  );

  /// value100000109020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109020 = TargetSpecies(
    fhirCode: '100000109020',
  );

  /// value100000109021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109021 = TargetSpecies(
    fhirCode: '100000109021',
  );

  /// value100000109022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109022 = TargetSpecies(
    fhirCode: '100000109022',
  );

  /// value100000109023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109023 = TargetSpecies(
    fhirCode: '100000109023',
  );

  /// value100000109024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109024 = TargetSpecies(
    fhirCode: '100000109024',
  );

  /// value100000109025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109025 = TargetSpecies(
    fhirCode: '100000109025',
  );

  /// value100000109026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109026 = TargetSpecies(
    fhirCode: '100000109026',
  );

  /// value100000109027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109027 = TargetSpecies(
    fhirCode: '100000109027',
  );

  /// value100000109028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109028 = TargetSpecies(
    fhirCode: '100000109028',
  );

  /// value100000109029
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109029 = TargetSpecies(
    fhirCode: '100000109029',
  );

  /// value100000109030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109030 = TargetSpecies(
    fhirCode: '100000109030',
  );

  /// value100000109031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109031 = TargetSpecies(
    fhirCode: '100000109031',
  );

  /// value100000109032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109032 = TargetSpecies(
    fhirCode: '100000109032',
  );

  /// value100000109033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109033 = TargetSpecies(
    fhirCode: '100000109033',
  );

  /// value100000109034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109034 = TargetSpecies(
    fhirCode: '100000109034',
  );

  /// value100000109035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109035 = TargetSpecies(
    fhirCode: '100000109035',
  );

  /// value100000109036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109036 = TargetSpecies(
    fhirCode: '100000109036',
  );

  /// value100000109037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109037 = TargetSpecies(
    fhirCode: '100000109037',
  );

  /// value100000109038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109038 = TargetSpecies(
    fhirCode: '100000109038',
  );

  /// value100000109039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109039 = TargetSpecies(
    fhirCode: '100000109039',
  );

  /// value100000109040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109040 = TargetSpecies(
    fhirCode: '100000109040',
  );

  /// value100000109041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109041 = TargetSpecies(
    fhirCode: '100000109041',
  );

  /// value100000109042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109042 = TargetSpecies(
    fhirCode: '100000109042',
  );

  /// value100000109043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109043 = TargetSpecies(
    fhirCode: '100000109043',
  );

  /// value100000109044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109044 = TargetSpecies(
    fhirCode: '100000109044',
  );

  /// value100000109045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109045 = TargetSpecies(
    fhirCode: '100000109045',
  );

  /// value100000109046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109046 = TargetSpecies(
    fhirCode: '100000109046',
  );

  /// value100000109047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109047 = TargetSpecies(
    fhirCode: '100000109047',
  );

  /// value100000109048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109048 = TargetSpecies(
    fhirCode: '100000109048',
  );

  /// value100000109049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109049 = TargetSpecies(
    fhirCode: '100000109049',
  );

  /// value100000109050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109050 = TargetSpecies(
    fhirCode: '100000109050',
  );

  /// value100000109051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109051 = TargetSpecies(
    fhirCode: '100000109051',
  );

  /// value100000109052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109052 = TargetSpecies(
    fhirCode: '100000109052',
  );

  /// value100000109053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109053 = TargetSpecies(
    fhirCode: '100000109053',
  );

  /// value100000109054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109054 = TargetSpecies(
    fhirCode: '100000109054',
  );

  /// value100000109055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109055 = TargetSpecies(
    fhirCode: '100000109055',
  );

  /// value100000109056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109056 = TargetSpecies(
    fhirCode: '100000109056',
  );

  /// value100000109057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109057 = TargetSpecies(
    fhirCode: '100000109057',
  );

  /// value100000109058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109058 = TargetSpecies(
    fhirCode: '100000109058',
  );

  /// value100000109059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109059 = TargetSpecies(
    fhirCode: '100000109059',
  );

  /// value100000109060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109060 = TargetSpecies(
    fhirCode: '100000109060',
  );

  /// value100000109061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109061 = TargetSpecies(
    fhirCode: '100000109061',
  );

  /// value100000109062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109062 = TargetSpecies(
    fhirCode: '100000109062',
  );

  /// value100000109063
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109063 = TargetSpecies(
    fhirCode: '100000109063',
  );

  /// value100000109064
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109064 = TargetSpecies(
    fhirCode: '100000109064',
  );

  /// value100000109065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109065 = TargetSpecies(
    fhirCode: '100000109065',
  );

  /// value100000109066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109066 = TargetSpecies(
    fhirCode: '100000109066',
  );

  /// value100000109067
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109067 = TargetSpecies(
    fhirCode: '100000109067',
  );

  /// value100000109068
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109068 = TargetSpecies(
    fhirCode: '100000109068',
  );

  /// value100000109069
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109069 = TargetSpecies(
    fhirCode: '100000109069',
  );

  /// value100000109070
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109070 = TargetSpecies(
    fhirCode: '100000109070',
  );

  /// value100000109071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109071 = TargetSpecies(
    fhirCode: '100000109071',
  );

  /// value100000109072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109072 = TargetSpecies(
    fhirCode: '100000109072',
  );

  /// value100000109073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TargetSpecies value100000109073 = TargetSpecies(
    fhirCode: '100000109073',
  );

  /// For instances where an Element is present but not value

  static final TargetSpecies elementOnly = TargetSpecies();

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

  /// Returns the enum value with an element attached
  TargetSpecies withElement(Element? newElement) {
    return TargetSpecies(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [TargetSpecies] from JSON.
  static TargetSpecies fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TargetSpecies.elementOnly.withElement(element);
    }
    return TargetSpecies.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TargetSpecies.$fhirCode';
}
