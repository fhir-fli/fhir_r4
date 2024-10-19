// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// A species for which a medicinal product is intended.
@Entity()
class TargetSpecies extends FhirCode {
  /// Factory constructor to create [TargetSpecies] from JSON.
  factory TargetSpecies.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TargetSpecies.elementOnly(element);
    }
    if (values.contains(value)) {
      return TargetSpecies._(value, element);
    }
    throw ArgumentError(
      'TargetSpecies.fromJson: JSON value is not a valid value',
    );
  }

  /// value100000108874
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108874([this.element])
      : dbValue = '100000108874',
        super('100000108874', element);

  /// value100000108875
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108875([this.element])
      : dbValue = '100000108875',
        super('100000108875', element);

  /// value100000108876
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108876([this.element])
      : dbValue = '100000108876',
        super('100000108876', element);

  /// value100000108877
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108877([this.element])
      : dbValue = '100000108877',
        super('100000108877', element);

  /// value100000108878
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108878([this.element])
      : dbValue = '100000108878',
        super('100000108878', element);

  /// value100000108879
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108879([this.element])
      : dbValue = '100000108879',
        super('100000108879', element);

  /// value100000108880
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108880([this.element])
      : dbValue = '100000108880',
        super('100000108880', element);

  /// value100000108881
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108881([this.element])
      : dbValue = '100000108881',
        super('100000108881', element);

  /// value100000108882
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108882([this.element])
      : dbValue = '100000108882',
        super('100000108882', element);

  /// value100000108883
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108883([this.element])
      : dbValue = '100000108883',
        super('100000108883', element);

  /// value100000108884
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108884([this.element])
      : dbValue = '100000108884',
        super('100000108884', element);

  /// value100000108885
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108885([this.element])
      : dbValue = '100000108885',
        super('100000108885', element);

  /// value100000108886
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108886([this.element])
      : dbValue = '100000108886',
        super('100000108886', element);

  /// value100000108887
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108887([this.element])
      : dbValue = '100000108887',
        super('100000108887', element);

  /// value100000108888
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108888([this.element])
      : dbValue = '100000108888',
        super('100000108888', element);

  /// value100000108889
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108889([this.element])
      : dbValue = '100000108889',
        super('100000108889', element);

  /// value100000108890
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108890([this.element])
      : dbValue = '100000108890',
        super('100000108890', element);

  /// value100000108891
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108891([this.element])
      : dbValue = '100000108891',
        super('100000108891', element);

  /// value100000108892
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108892([this.element])
      : dbValue = '100000108892',
        super('100000108892', element);

  /// value100000108893
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108893([this.element])
      : dbValue = '100000108893',
        super('100000108893', element);

  /// value100000108894
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108894([this.element])
      : dbValue = '100000108894',
        super('100000108894', element);

  /// value100000108895
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108895([this.element])
      : dbValue = '100000108895',
        super('100000108895', element);

  /// value100000108896
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108896([this.element])
      : dbValue = '100000108896',
        super('100000108896', element);

  /// value100000108897
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108897([this.element])
      : dbValue = '100000108897',
        super('100000108897', element);

  /// value100000108898
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108898([this.element])
      : dbValue = '100000108898',
        super('100000108898', element);

  /// value100000108899
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108899([this.element])
      : dbValue = '100000108899',
        super('100000108899', element);

  /// value100000108900
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108900([this.element])
      : dbValue = '100000108900',
        super('100000108900', element);

  /// value100000108901
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108901([this.element])
      : dbValue = '100000108901',
        super('100000108901', element);

  /// value100000108902
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108902([this.element])
      : dbValue = '100000108902',
        super('100000108902', element);

  /// value100000108903
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108903([this.element])
      : dbValue = '100000108903',
        super('100000108903', element);

  /// value100000108904
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108904([this.element])
      : dbValue = '100000108904',
        super('100000108904', element);

  /// value100000108905
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108905([this.element])
      : dbValue = '100000108905',
        super('100000108905', element);

  /// value100000108906
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108906([this.element])
      : dbValue = '100000108906',
        super('100000108906', element);

  /// value100000108907
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108907([this.element])
      : dbValue = '100000108907',
        super('100000108907', element);

  /// value100000108908
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108908([this.element])
      : dbValue = '100000108908',
        super('100000108908', element);

  /// value100000108909
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108909([this.element])
      : dbValue = '100000108909',
        super('100000108909', element);

  /// value100000108910
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108910([this.element])
      : dbValue = '100000108910',
        super('100000108910', element);

  /// value100000108911
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108911([this.element])
      : dbValue = '100000108911',
        super('100000108911', element);

  /// value100000108912
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108912([this.element])
      : dbValue = '100000108912',
        super('100000108912', element);

  /// value100000108913
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108913([this.element])
      : dbValue = '100000108913',
        super('100000108913', element);

  /// value100000108914
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108914([this.element])
      : dbValue = '100000108914',
        super('100000108914', element);

  /// value100000108915
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108915([this.element])
      : dbValue = '100000108915',
        super('100000108915', element);

  /// value100000108916
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108916([this.element])
      : dbValue = '100000108916',
        super('100000108916', element);

  /// value100000108917
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108917([this.element])
      : dbValue = '100000108917',
        super('100000108917', element);

  /// value100000108918
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108918([this.element])
      : dbValue = '100000108918',
        super('100000108918', element);

  /// value100000108919
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108919([this.element])
      : dbValue = '100000108919',
        super('100000108919', element);

  /// value100000108920
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108920([this.element])
      : dbValue = '100000108920',
        super('100000108920', element);

  /// value100000108921
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108921([this.element])
      : dbValue = '100000108921',
        super('100000108921', element);

  /// value100000108922
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108922([this.element])
      : dbValue = '100000108922',
        super('100000108922', element);

  /// value100000108923
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108923([this.element])
      : dbValue = '100000108923',
        super('100000108923', element);

  /// value100000108924
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108924([this.element])
      : dbValue = '100000108924',
        super('100000108924', element);

  /// value100000108925
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108925([this.element])
      : dbValue = '100000108925',
        super('100000108925', element);

  /// value100000108926
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108926([this.element])
      : dbValue = '100000108926',
        super('100000108926', element);

  /// value100000108927
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108927([this.element])
      : dbValue = '100000108927',
        super('100000108927', element);

  /// value100000108928
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108928([this.element])
      : dbValue = '100000108928',
        super('100000108928', element);

  /// value100000108929
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108929([this.element])
      : dbValue = '100000108929',
        super('100000108929', element);

  /// value100000108930
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108930([this.element])
      : dbValue = '100000108930',
        super('100000108930', element);

  /// value100000108931
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108931([this.element])
      : dbValue = '100000108931',
        super('100000108931', element);

  /// value100000108932
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108932([this.element])
      : dbValue = '100000108932',
        super('100000108932', element);

  /// value100000108933
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108933([this.element])
      : dbValue = '100000108933',
        super('100000108933', element);

  /// value100000108934
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108934([this.element])
      : dbValue = '100000108934',
        super('100000108934', element);

  /// value100000108935
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108935([this.element])
      : dbValue = '100000108935',
        super('100000108935', element);

  /// value100000108936
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108936([this.element])
      : dbValue = '100000108936',
        super('100000108936', element);

  /// value100000108937
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108937([this.element])
      : dbValue = '100000108937',
        super('100000108937', element);

  /// value100000108938
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108938([this.element])
      : dbValue = '100000108938',
        super('100000108938', element);

  /// value100000108939
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108939([this.element])
      : dbValue = '100000108939',
        super('100000108939', element);

  /// value100000108940
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108940([this.element])
      : dbValue = '100000108940',
        super('100000108940', element);

  /// value100000108941
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108941([this.element])
      : dbValue = '100000108941',
        super('100000108941', element);

  /// value100000108942
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108942([this.element])
      : dbValue = '100000108942',
        super('100000108942', element);

  /// value100000108943
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108943([this.element])
      : dbValue = '100000108943',
        super('100000108943', element);

  /// value100000108944
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108944([this.element])
      : dbValue = '100000108944',
        super('100000108944', element);

  /// value100000108945
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108945([this.element])
      : dbValue = '100000108945',
        super('100000108945', element);

  /// value100000108946
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108946([this.element])
      : dbValue = '100000108946',
        super('100000108946', element);

  /// value100000108947
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108947([this.element])
      : dbValue = '100000108947',
        super('100000108947', element);

  /// value100000108948
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108948([this.element])
      : dbValue = '100000108948',
        super('100000108948', element);

  /// value100000108949
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108949([this.element])
      : dbValue = '100000108949',
        super('100000108949', element);

  /// value100000108950
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108950([this.element])
      : dbValue = '100000108950',
        super('100000108950', element);

  /// value100000108951
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108951([this.element])
      : dbValue = '100000108951',
        super('100000108951', element);

  /// value100000108952
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108952([this.element])
      : dbValue = '100000108952',
        super('100000108952', element);

  /// value100000108953
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108953([this.element])
      : dbValue = '100000108953',
        super('100000108953', element);

  /// value100000108954
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108954([this.element])
      : dbValue = '100000108954',
        super('100000108954', element);

  /// value100000108955
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108955([this.element])
      : dbValue = '100000108955',
        super('100000108955', element);

  /// value100000108956
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108956([this.element])
      : dbValue = '100000108956',
        super('100000108956', element);

  /// value100000108957
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108957([this.element])
      : dbValue = '100000108957',
        super('100000108957', element);

  /// value100000108958
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108958([this.element])
      : dbValue = '100000108958',
        super('100000108958', element);

  /// value100000108959
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108959([this.element])
      : dbValue = '100000108959',
        super('100000108959', element);

  /// value100000108960
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108960([this.element])
      : dbValue = '100000108960',
        super('100000108960', element);

  /// value100000108961
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108961([this.element])
      : dbValue = '100000108961',
        super('100000108961', element);

  /// value100000108962
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108962([this.element])
      : dbValue = '100000108962',
        super('100000108962', element);

  /// value100000108963
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108963([this.element])
      : dbValue = '100000108963',
        super('100000108963', element);

  /// value100000108964
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108964([this.element])
      : dbValue = '100000108964',
        super('100000108964', element);

  /// value100000108965
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108965([this.element])
      : dbValue = '100000108965',
        super('100000108965', element);

  /// value100000108966
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108966([this.element])
      : dbValue = '100000108966',
        super('100000108966', element);

  /// value100000108967
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108967([this.element])
      : dbValue = '100000108967',
        super('100000108967', element);

  /// value100000108968
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108968([this.element])
      : dbValue = '100000108968',
        super('100000108968', element);

  /// value100000108969
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108969([this.element])
      : dbValue = '100000108969',
        super('100000108969', element);

  /// value100000108970
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108970([this.element])
      : dbValue = '100000108970',
        super('100000108970', element);

  /// value100000108971
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108971([this.element])
      : dbValue = '100000108971',
        super('100000108971', element);

  /// value100000108972
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108972([this.element])
      : dbValue = '100000108972',
        super('100000108972', element);

  /// value100000108973
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108973([this.element])
      : dbValue = '100000108973',
        super('100000108973', element);

  /// value100000108974
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108974([this.element])
      : dbValue = '100000108974',
        super('100000108974', element);

  /// value100000108975
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108975([this.element])
      : dbValue = '100000108975',
        super('100000108975', element);

  /// value100000108976
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108976([this.element])
      : dbValue = '100000108976',
        super('100000108976', element);

  /// value100000108977
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108977([this.element])
      : dbValue = '100000108977',
        super('100000108977', element);

  /// value100000108978
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108978([this.element])
      : dbValue = '100000108978',
        super('100000108978', element);

  /// value100000108979
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108979([this.element])
      : dbValue = '100000108979',
        super('100000108979', element);

  /// value100000108980
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108980([this.element])
      : dbValue = '100000108980',
        super('100000108980', element);

  /// value100000108981
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108981([this.element])
      : dbValue = '100000108981',
        super('100000108981', element);

  /// value100000108982
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108982([this.element])
      : dbValue = '100000108982',
        super('100000108982', element);

  /// value100000108983
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108983([this.element])
      : dbValue = '100000108983',
        super('100000108983', element);

  /// value100000108984
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108984([this.element])
      : dbValue = '100000108984',
        super('100000108984', element);

  /// value100000108985
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108985([this.element])
      : dbValue = '100000108985',
        super('100000108985', element);

  /// value100000108986
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108986([this.element])
      : dbValue = '100000108986',
        super('100000108986', element);

  /// value100000108987
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108987([this.element])
      : dbValue = '100000108987',
        super('100000108987', element);

  /// value100000108988
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108988([this.element])
      : dbValue = '100000108988',
        super('100000108988', element);

  /// value100000108989
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108989([this.element])
      : dbValue = '100000108989',
        super('100000108989', element);

  /// value100000108990
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108990([this.element])
      : dbValue = '100000108990',
        super('100000108990', element);

  /// value100000108991
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108991([this.element])
      : dbValue = '100000108991',
        super('100000108991', element);

  /// value100000108992
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108992([this.element])
      : dbValue = '100000108992',
        super('100000108992', element);

  /// value100000108993
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108993([this.element])
      : dbValue = '100000108993',
        super('100000108993', element);

  /// value100000108994
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108994([this.element])
      : dbValue = '100000108994',
        super('100000108994', element);

  /// value100000108995
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108995([this.element])
      : dbValue = '100000108995',
        super('100000108995', element);

  /// value100000108996
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108996([this.element])
      : dbValue = '100000108996',
        super('100000108996', element);

  /// value100000108997
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108997([this.element])
      : dbValue = '100000108997',
        super('100000108997', element);

  /// value100000108998
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108998([this.element])
      : dbValue = '100000108998',
        super('100000108998', element);

  /// value100000108999
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000108999([this.element])
      : dbValue = '100000108999',
        super('100000108999', element);

  /// value100000109000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109000([this.element])
      : dbValue = '100000109000',
        super('100000109000', element);

  /// value100000109001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109001([this.element])
      : dbValue = '100000109001',
        super('100000109001', element);

  /// value100000109002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109002([this.element])
      : dbValue = '100000109002',
        super('100000109002', element);

  /// value100000109003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109003([this.element])
      : dbValue = '100000109003',
        super('100000109003', element);

  /// value100000109004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109004([this.element])
      : dbValue = '100000109004',
        super('100000109004', element);

  /// value100000109005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109005([this.element])
      : dbValue = '100000109005',
        super('100000109005', element);

  /// value100000109006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109006([this.element])
      : dbValue = '100000109006',
        super('100000109006', element);

  /// value100000109007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109007([this.element])
      : dbValue = '100000109007',
        super('100000109007', element);

  /// value100000109008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109008([this.element])
      : dbValue = '100000109008',
        super('100000109008', element);

  /// value100000109009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109009([this.element])
      : dbValue = '100000109009',
        super('100000109009', element);

  /// value100000109010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109010([this.element])
      : dbValue = '100000109010',
        super('100000109010', element);

  /// value100000109011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109011([this.element])
      : dbValue = '100000109011',
        super('100000109011', element);

  /// value100000109012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109012([this.element])
      : dbValue = '100000109012',
        super('100000109012', element);

  /// value100000109013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109013([this.element])
      : dbValue = '100000109013',
        super('100000109013', element);

  /// value100000109014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109014([this.element])
      : dbValue = '100000109014',
        super('100000109014', element);

  /// value100000109015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109015([this.element])
      : dbValue = '100000109015',
        super('100000109015', element);

  /// value100000109016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109016([this.element])
      : dbValue = '100000109016',
        super('100000109016', element);

  /// value100000109017
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109017([this.element])
      : dbValue = '100000109017',
        super('100000109017', element);

  /// value100000109018
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109018([this.element])
      : dbValue = '100000109018',
        super('100000109018', element);

  /// value100000109019
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109019([this.element])
      : dbValue = '100000109019',
        super('100000109019', element);

  /// value100000109020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109020([this.element])
      : dbValue = '100000109020',
        super('100000109020', element);

  /// value100000109021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109021([this.element])
      : dbValue = '100000109021',
        super('100000109021', element);

  /// value100000109022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109022([this.element])
      : dbValue = '100000109022',
        super('100000109022', element);

  /// value100000109023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109023([this.element])
      : dbValue = '100000109023',
        super('100000109023', element);

  /// value100000109024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109024([this.element])
      : dbValue = '100000109024',
        super('100000109024', element);

  /// value100000109025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109025([this.element])
      : dbValue = '100000109025',
        super('100000109025', element);

  /// value100000109026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109026([this.element])
      : dbValue = '100000109026',
        super('100000109026', element);

  /// value100000109027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109027([this.element])
      : dbValue = '100000109027',
        super('100000109027', element);

  /// value100000109028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109028([this.element])
      : dbValue = '100000109028',
        super('100000109028', element);

  /// value100000109029
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109029([this.element])
      : dbValue = '100000109029',
        super('100000109029', element);

  /// value100000109030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109030([this.element])
      : dbValue = '100000109030',
        super('100000109030', element);

  /// value100000109031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109031([this.element])
      : dbValue = '100000109031',
        super('100000109031', element);

  /// value100000109032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109032([this.element])
      : dbValue = '100000109032',
        super('100000109032', element);

  /// value100000109033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109033([this.element])
      : dbValue = '100000109033',
        super('100000109033', element);

  /// value100000109034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109034([this.element])
      : dbValue = '100000109034',
        super('100000109034', element);

  /// value100000109035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109035([this.element])
      : dbValue = '100000109035',
        super('100000109035', element);

  /// value100000109036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109036([this.element])
      : dbValue = '100000109036',
        super('100000109036', element);

  /// value100000109037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109037([this.element])
      : dbValue = '100000109037',
        super('100000109037', element);

  /// value100000109038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109038([this.element])
      : dbValue = '100000109038',
        super('100000109038', element);

  /// value100000109039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109039([this.element])
      : dbValue = '100000109039',
        super('100000109039', element);

  /// value100000109040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109040([this.element])
      : dbValue = '100000109040',
        super('100000109040', element);

  /// value100000109041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109041([this.element])
      : dbValue = '100000109041',
        super('100000109041', element);

  /// value100000109042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109042([this.element])
      : dbValue = '100000109042',
        super('100000109042', element);

  /// value100000109043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109043([this.element])
      : dbValue = '100000109043',
        super('100000109043', element);

  /// value100000109044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109044([this.element])
      : dbValue = '100000109044',
        super('100000109044', element);

  /// value100000109045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109045([this.element])
      : dbValue = '100000109045',
        super('100000109045', element);

  /// value100000109046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109046([this.element])
      : dbValue = '100000109046',
        super('100000109046', element);

  /// value100000109047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109047([this.element])
      : dbValue = '100000109047',
        super('100000109047', element);

  /// value100000109048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109048([this.element])
      : dbValue = '100000109048',
        super('100000109048', element);

  /// value100000109049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109049([this.element])
      : dbValue = '100000109049',
        super('100000109049', element);

  /// value100000109050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109050([this.element])
      : dbValue = '100000109050',
        super('100000109050', element);

  /// value100000109051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109051([this.element])
      : dbValue = '100000109051',
        super('100000109051', element);

  /// value100000109052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109052([this.element])
      : dbValue = '100000109052',
        super('100000109052', element);

  /// value100000109053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109053([this.element])
      : dbValue = '100000109053',
        super('100000109053', element);

  /// value100000109054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109054([this.element])
      : dbValue = '100000109054',
        super('100000109054', element);

  /// value100000109055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109055([this.element])
      : dbValue = '100000109055',
        super('100000109055', element);

  /// value100000109056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109056([this.element])
      : dbValue = '100000109056',
        super('100000109056', element);

  /// value100000109057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109057([this.element])
      : dbValue = '100000109057',
        super('100000109057', element);

  /// value100000109058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109058([this.element])
      : dbValue = '100000109058',
        super('100000109058', element);

  /// value100000109059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109059([this.element])
      : dbValue = '100000109059',
        super('100000109059', element);

  /// value100000109060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109060([this.element])
      : dbValue = '100000109060',
        super('100000109060', element);

  /// value100000109061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109061([this.element])
      : dbValue = '100000109061',
        super('100000109061', element);

  /// value100000109062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109062([this.element])
      : dbValue = '100000109062',
        super('100000109062', element);

  /// value100000109063
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109063([this.element])
      : dbValue = '100000109063',
        super('100000109063', element);

  /// value100000109064
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109064([this.element])
      : dbValue = '100000109064',
        super('100000109064', element);

  /// value100000109065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109065([this.element])
      : dbValue = '100000109065',
        super('100000109065', element);

  /// value100000109066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109066([this.element])
      : dbValue = '100000109066',
        super('100000109066', element);

  /// value100000109067
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109067([this.element])
      : dbValue = '100000109067',
        super('100000109067', element);

  /// value100000109068
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109068([this.element])
      : dbValue = '100000109068',
        super('100000109068', element);

  /// value100000109069
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109069([this.element])
      : dbValue = '100000109069',
        super('100000109069', element);

  /// value100000109070
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109070([this.element])
      : dbValue = '100000109070',
        super('100000109070', element);

  /// value100000109071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109071([this.element])
      : dbValue = '100000109071',
        super('100000109071', element);

  /// value100000109072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109072([this.element])
      : dbValue = '100000109072',
        super('100000109072', element);

  /// value100000109073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  TargetSpecies.value100000109073([this.element])
      : dbValue = '100000109073',
        super('100000109073', element);

  /// For instances where an Element is present but not value

  TargetSpecies.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  TargetSpecies._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    '100000108874',
    '100000108875',
    '100000108876',
    '100000108877',
    '100000108878',
    '100000108879',
    '100000108880',
    '100000108881',
    '100000108882',
    '100000108883',
    '100000108884',
    '100000108885',
    '100000108886',
    '100000108887',
    '100000108888',
    '100000108889',
    '100000108890',
    '100000108891',
    '100000108892',
    '100000108893',
    '100000108894',
    '100000108895',
    '100000108896',
    '100000108897',
    '100000108898',
    '100000108899',
    '100000108900',
    '100000108901',
    '100000108902',
    '100000108903',
    '100000108904',
    '100000108905',
    '100000108906',
    '100000108907',
    '100000108908',
    '100000108909',
    '100000108910',
    '100000108911',
    '100000108912',
    '100000108913',
    '100000108914',
    '100000108915',
    '100000108916',
    '100000108917',
    '100000108918',
    '100000108919',
    '100000108920',
    '100000108921',
    '100000108922',
    '100000108923',
    '100000108924',
    '100000108925',
    '100000108926',
    '100000108927',
    '100000108928',
    '100000108929',
    '100000108930',
    '100000108931',
    '100000108932',
    '100000108933',
    '100000108934',
    '100000108935',
    '100000108936',
    '100000108937',
    '100000108938',
    '100000108939',
    '100000108940',
    '100000108941',
    '100000108942',
    '100000108943',
    '100000108944',
    '100000108945',
    '100000108946',
    '100000108947',
    '100000108948',
    '100000108949',
    '100000108950',
    '100000108951',
    '100000108952',
    '100000108953',
    '100000108954',
    '100000108955',
    '100000108956',
    '100000108957',
    '100000108958',
    '100000108959',
    '100000108960',
    '100000108961',
    '100000108962',
    '100000108963',
    '100000108964',
    '100000108965',
    '100000108966',
    '100000108967',
    '100000108968',
    '100000108969',
    '100000108970',
    '100000108971',
    '100000108972',
    '100000108973',
    '100000108974',
    '100000108975',
    '100000108976',
    '100000108977',
    '100000108978',
    '100000108979',
    '100000108980',
    '100000108981',
    '100000108982',
    '100000108983',
    '100000108984',
    '100000108985',
    '100000108986',
    '100000108987',
    '100000108988',
    '100000108989',
    '100000108990',
    '100000108991',
    '100000108992',
    '100000108993',
    '100000108994',
    '100000108995',
    '100000108996',
    '100000108997',
    '100000108998',
    '100000108999',
    '100000109000',
    '100000109001',
    '100000109002',
    '100000109003',
    '100000109004',
    '100000109005',
    '100000109006',
    '100000109007',
    '100000109008',
    '100000109009',
    '100000109010',
    '100000109011',
    '100000109012',
    '100000109013',
    '100000109014',
    '100000109015',
    '100000109016',
    '100000109017',
    '100000109018',
    '100000109019',
    '100000109020',
    '100000109021',
    '100000109022',
    '100000109023',
    '100000109024',
    '100000109025',
    '100000109026',
    '100000109027',
    '100000109028',
    '100000109029',
    '100000109030',
    '100000109031',
    '100000109032',
    '100000109033',
    '100000109034',
    '100000109035',
    '100000109036',
    '100000109037',
    '100000109038',
    '100000109039',
    '100000109040',
    '100000109041',
    '100000109042',
    '100000109043',
    '100000109044',
    '100000109045',
    '100000109046',
    '100000109047',
    '100000109048',
    '100000109049',
    '100000109050',
    '100000109051',
    '100000109052',
    '100000109053',
    '100000109054',
    '100000109055',
    '100000109056',
    '100000109057',
    '100000109058',
    '100000109059',
    '100000109060',
    '100000109061',
    '100000109062',
    '100000109063',
    '100000109064',
    '100000109065',
    '100000109066',
    '100000109067',
    '100000109068',
    '100000109069',
    '100000109070',
    '100000109071',
    '100000109072',
    '100000109073',
  ];

  /// Returns the enum value with an element attached
  TargetSpecies withElement(Element? newElement) {
    return TargetSpecies._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'TargetSpecies.$value';
}
