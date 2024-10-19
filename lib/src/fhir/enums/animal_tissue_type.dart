// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// A tissue type of an animal.
@Entity()
class AnimalTissueType extends FhirCode {
  /// Factory constructor to create [AnimalTissueType] from JSON.
  factory AnimalTissueType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AnimalTissueType.elementOnly(element);
    }
    if (values.contains(value)) {
      return AnimalTissueType._(value, element);
    }
    throw ArgumentError(
      'AnimalTissueType.fromJson: JSON value is not a valid value',
    );
  }

  /// value100000072091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000072091([this.element])
      : dbValue = '100000072091',
        super('100000072091', element);

  /// value100000072092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000072092([this.element])
      : dbValue = '100000072092',
        super('100000072092', element);

  /// value100000072093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000072093([this.element])
      : dbValue = '100000072093',
        super('100000072093', element);

  /// value100000072094
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000072094([this.element])
      : dbValue = '100000072094',
        super('100000072094', element);

  /// value100000072095
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000072095([this.element])
      : dbValue = '100000072095',
        super('100000072095', element);

  /// value100000072096
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000072096([this.element])
      : dbValue = '100000072096',
        super('100000072096', element);

  /// value100000072104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000072104([this.element])
      : dbValue = '100000072104',
        super('100000072104', element);

  /// value100000072105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000072105([this.element])
      : dbValue = '100000072105',
        super('100000072105', element);

  /// value100000072106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000072106([this.element])
      : dbValue = '100000072106',
        super('100000072106', element);

  /// value100000072107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000072107([this.element])
      : dbValue = '100000072107',
        super('100000072107', element);

  /// value100000072108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000072108([this.element])
      : dbValue = '100000072108',
        super('100000072108', element);

  /// value100000072109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000072109([this.element])
      : dbValue = '100000072109',
        super('100000072109', element);

  /// value100000111053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111053([this.element])
      : dbValue = '100000111053',
        super('100000111053', element);

  /// value100000111054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111054([this.element])
      : dbValue = '100000111054',
        super('100000111054', element);

  /// value100000111055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111055([this.element])
      : dbValue = '100000111055',
        super('100000111055', element);

  /// value100000111056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111056([this.element])
      : dbValue = '100000111056',
        super('100000111056', element);

  /// value100000111057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111057([this.element])
      : dbValue = '100000111057',
        super('100000111057', element);

  /// value100000111058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111058([this.element])
      : dbValue = '100000111058',
        super('100000111058', element);

  /// value100000111059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111059([this.element])
      : dbValue = '100000111059',
        super('100000111059', element);

  /// value100000111060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111060([this.element])
      : dbValue = '100000111060',
        super('100000111060', element);

  /// value100000111061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111061([this.element])
      : dbValue = '100000111061',
        super('100000111061', element);

  /// value100000111062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111062([this.element])
      : dbValue = '100000111062',
        super('100000111062', element);

  /// value100000111063
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111063([this.element])
      : dbValue = '100000111063',
        super('100000111063', element);

  /// value100000111064
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111064([this.element])
      : dbValue = '100000111064',
        super('100000111064', element);

  /// value100000111065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111065([this.element])
      : dbValue = '100000111065',
        super('100000111065', element);

  /// value100000111066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111066([this.element])
      : dbValue = '100000111066',
        super('100000111066', element);

  /// value100000111067
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111067([this.element])
      : dbValue = '100000111067',
        super('100000111067', element);

  /// value100000111068
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111068([this.element])
      : dbValue = '100000111068',
        super('100000111068', element);

  /// value100000111069
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111069([this.element])
      : dbValue = '100000111069',
        super('100000111069', element);

  /// value100000111070
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111070([this.element])
      : dbValue = '100000111070',
        super('100000111070', element);

  /// value100000111071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111071([this.element])
      : dbValue = '100000111071',
        super('100000111071', element);

  /// value100000111072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111072([this.element])
      : dbValue = '100000111072',
        super('100000111072', element);

  /// value100000111073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111073([this.element])
      : dbValue = '100000111073',
        super('100000111073', element);

  /// value100000111074
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111074([this.element])
      : dbValue = '100000111074',
        super('100000111074', element);

  /// value100000111075
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111075([this.element])
      : dbValue = '100000111075',
        super('100000111075', element);

  /// value100000111076
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111076([this.element])
      : dbValue = '100000111076',
        super('100000111076', element);

  /// value100000111077
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111077([this.element])
      : dbValue = '100000111077',
        super('100000111077', element);

  /// value100000111078
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111078([this.element])
      : dbValue = '100000111078',
        super('100000111078', element);

  /// value100000111079
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111079([this.element])
      : dbValue = '100000111079',
        super('100000111079', element);

  /// value100000111080
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111080([this.element])
      : dbValue = '100000111080',
        super('100000111080', element);

  /// value100000111081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111081([this.element])
      : dbValue = '100000111081',
        super('100000111081', element);

  /// value100000111082
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111082([this.element])
      : dbValue = '100000111082',
        super('100000111082', element);

  /// value100000111083
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111083([this.element])
      : dbValue = '100000111083',
        super('100000111083', element);

  /// value100000111084
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111084([this.element])
      : dbValue = '100000111084',
        super('100000111084', element);

  /// value100000111085
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111085([this.element])
      : dbValue = '100000111085',
        super('100000111085', element);

  /// value100000111086
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111086([this.element])
      : dbValue = '100000111086',
        super('100000111086', element);

  /// value100000111087
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111087([this.element])
      : dbValue = '100000111087',
        super('100000111087', element);

  /// value100000111088
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111088([this.element])
      : dbValue = '100000111088',
        super('100000111088', element);

  /// value100000111089
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111089([this.element])
      : dbValue = '100000111089',
        super('100000111089', element);

  /// value100000111090
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111090([this.element])
      : dbValue = '100000111090',
        super('100000111090', element);

  /// value100000111091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111091([this.element])
      : dbValue = '100000111091',
        super('100000111091', element);

  /// value100000111092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111092([this.element])
      : dbValue = '100000111092',
        super('100000111092', element);

  /// value100000111093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111093([this.element])
      : dbValue = '100000111093',
        super('100000111093', element);

  /// value100000111094
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111094([this.element])
      : dbValue = '100000111094',
        super('100000111094', element);

  /// value100000111095
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111095([this.element])
      : dbValue = '100000111095',
        super('100000111095', element);

  /// value100000111096
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111096([this.element])
      : dbValue = '100000111096',
        super('100000111096', element);

  /// value100000111097
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111097([this.element])
      : dbValue = '100000111097',
        super('100000111097', element);

  /// value100000111098
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111098([this.element])
      : dbValue = '100000111098',
        super('100000111098', element);

  /// value100000111099
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111099([this.element])
      : dbValue = '100000111099',
        super('100000111099', element);

  /// value100000111100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111100([this.element])
      : dbValue = '100000111100',
        super('100000111100', element);

  /// value100000111101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111101([this.element])
      : dbValue = '100000111101',
        super('100000111101', element);

  /// value100000111102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111102([this.element])
      : dbValue = '100000111102',
        super('100000111102', element);

  /// value100000111103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111103([this.element])
      : dbValue = '100000111103',
        super('100000111103', element);

  /// value100000111104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111104([this.element])
      : dbValue = '100000111104',
        super('100000111104', element);

  /// value100000111105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111105([this.element])
      : dbValue = '100000111105',
        super('100000111105', element);

  /// value100000111106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111106([this.element])
      : dbValue = '100000111106',
        super('100000111106', element);

  /// value100000111107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111107([this.element])
      : dbValue = '100000111107',
        super('100000111107', element);

  /// value100000111108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111108([this.element])
      : dbValue = '100000111108',
        super('100000111108', element);

  /// value100000111109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111109([this.element])
      : dbValue = '100000111109',
        super('100000111109', element);

  /// value100000111110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111110([this.element])
      : dbValue = '100000111110',
        super('100000111110', element);

  /// value100000111111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111111([this.element])
      : dbValue = '100000111111',
        super('100000111111', element);

  /// value100000111112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111112([this.element])
      : dbValue = '100000111112',
        super('100000111112', element);

  /// value100000111113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111113([this.element])
      : dbValue = '100000111113',
        super('100000111113', element);

  /// value100000111114
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111114([this.element])
      : dbValue = '100000111114',
        super('100000111114', element);

  /// value100000111115
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111115([this.element])
      : dbValue = '100000111115',
        super('100000111115', element);

  /// value100000111116
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111116([this.element])
      : dbValue = '100000111116',
        super('100000111116', element);

  /// value100000111117
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111117([this.element])
      : dbValue = '100000111117',
        super('100000111117', element);

  /// value100000111118
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111118([this.element])
      : dbValue = '100000111118',
        super('100000111118', element);

  /// value100000111119
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111119([this.element])
      : dbValue = '100000111119',
        super('100000111119', element);

  /// value100000111120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111120([this.element])
      : dbValue = '100000111120',
        super('100000111120', element);

  /// value100000111121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111121([this.element])
      : dbValue = '100000111121',
        super('100000111121', element);

  /// value100000111122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111122([this.element])
      : dbValue = '100000111122',
        super('100000111122', element);

  /// value100000111123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111123([this.element])
      : dbValue = '100000111123',
        super('100000111123', element);

  /// value100000111124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111124([this.element])
      : dbValue = '100000111124',
        super('100000111124', element);

  /// value100000111125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111125([this.element])
      : dbValue = '100000111125',
        super('100000111125', element);

  /// value100000111126
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111126([this.element])
      : dbValue = '100000111126',
        super('100000111126', element);

  /// value100000111127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111127([this.element])
      : dbValue = '100000111127',
        super('100000111127', element);

  /// value100000111128
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111128([this.element])
      : dbValue = '100000111128',
        super('100000111128', element);

  /// value100000111129
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111129([this.element])
      : dbValue = '100000111129',
        super('100000111129', element);

  /// value100000111130
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111130([this.element])
      : dbValue = '100000111130',
        super('100000111130', element);

  /// value100000111131
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111131([this.element])
      : dbValue = '100000111131',
        super('100000111131', element);

  /// value100000111132
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111132([this.element])
      : dbValue = '100000111132',
        super('100000111132', element);

  /// value100000111133
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111133([this.element])
      : dbValue = '100000111133',
        super('100000111133', element);

  /// value100000111134
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111134([this.element])
      : dbValue = '100000111134',
        super('100000111134', element);

  /// value100000111135
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111135([this.element])
      : dbValue = '100000111135',
        super('100000111135', element);

  /// value100000111136
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111136([this.element])
      : dbValue = '100000111136',
        super('100000111136', element);

  /// value100000111137
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111137([this.element])
      : dbValue = '100000111137',
        super('100000111137', element);

  /// value100000111138
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111138([this.element])
      : dbValue = '100000111138',
        super('100000111138', element);

  /// value100000111139
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111139([this.element])
      : dbValue = '100000111139',
        super('100000111139', element);

  /// value100000111140
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111140([this.element])
      : dbValue = '100000111140',
        super('100000111140', element);

  /// value100000111141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111141([this.element])
      : dbValue = '100000111141',
        super('100000111141', element);

  /// value100000111142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111142([this.element])
      : dbValue = '100000111142',
        super('100000111142', element);

  /// value100000111143
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111143([this.element])
      : dbValue = '100000111143',
        super('100000111143', element);

  /// value100000111144
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111144([this.element])
      : dbValue = '100000111144',
        super('100000111144', element);

  /// value100000111145
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111145([this.element])
      : dbValue = '100000111145',
        super('100000111145', element);

  /// value100000111146
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111146([this.element])
      : dbValue = '100000111146',
        super('100000111146', element);

  /// value100000111147
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111147([this.element])
      : dbValue = '100000111147',
        super('100000111147', element);

  /// value100000111148
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111148([this.element])
      : dbValue = '100000111148',
        super('100000111148', element);

  /// value100000111149
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111149([this.element])
      : dbValue = '100000111149',
        super('100000111149', element);

  /// value100000111150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111150([this.element])
      : dbValue = '100000111150',
        super('100000111150', element);

  /// value100000111151
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111151([this.element])
      : dbValue = '100000111151',
        super('100000111151', element);

  /// value100000111152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111152([this.element])
      : dbValue = '100000111152',
        super('100000111152', element);

  /// value100000111153
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111153([this.element])
      : dbValue = '100000111153',
        super('100000111153', element);

  /// value100000111154
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111154([this.element])
      : dbValue = '100000111154',
        super('100000111154', element);

  /// value100000111155
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111155([this.element])
      : dbValue = '100000111155',
        super('100000111155', element);

  /// value100000111156
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111156([this.element])
      : dbValue = '100000111156',
        super('100000111156', element);

  /// value100000111157
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111157([this.element])
      : dbValue = '100000111157',
        super('100000111157', element);

  /// value100000111158
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111158([this.element])
      : dbValue = '100000111158',
        super('100000111158', element);

  /// value100000111159
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111159([this.element])
      : dbValue = '100000111159',
        super('100000111159', element);

  /// value100000111160
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111160([this.element])
      : dbValue = '100000111160',
        super('100000111160', element);

  /// value100000111161
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111161([this.element])
      : dbValue = '100000111161',
        super('100000111161', element);

  /// value100000111162
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111162([this.element])
      : dbValue = '100000111162',
        super('100000111162', element);

  /// value100000111163
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111163([this.element])
      : dbValue = '100000111163',
        super('100000111163', element);

  /// value100000111164
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000111164([this.element])
      : dbValue = '100000111164',
        super('100000111164', element);

  /// value100000125717
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000125717([this.element])
      : dbValue = '100000125717',
        super('100000125717', element);

  /// value100000136180
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136180([this.element])
      : dbValue = '100000136180',
        super('100000136180', element);

  /// value100000136181
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136181([this.element])
      : dbValue = '100000136181',
        super('100000136181', element);

  /// value100000136182
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136182([this.element])
      : dbValue = '100000136182',
        super('100000136182', element);

  /// value100000136183
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136183([this.element])
      : dbValue = '100000136183',
        super('100000136183', element);

  /// value100000136184
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136184([this.element])
      : dbValue = '100000136184',
        super('100000136184', element);

  /// value100000136185
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136185([this.element])
      : dbValue = '100000136185',
        super('100000136185', element);

  /// value100000136186
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136186([this.element])
      : dbValue = '100000136186',
        super('100000136186', element);

  /// value100000136187
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136187([this.element])
      : dbValue = '100000136187',
        super('100000136187', element);

  /// value100000136188
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136188([this.element])
      : dbValue = '100000136188',
        super('100000136188', element);

  /// value100000136189
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136189([this.element])
      : dbValue = '100000136189',
        super('100000136189', element);

  /// value100000136190
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136190([this.element])
      : dbValue = '100000136190',
        super('100000136190', element);

  /// value100000136191
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136191([this.element])
      : dbValue = '100000136191',
        super('100000136191', element);

  /// value100000136192
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136192([this.element])
      : dbValue = '100000136192',
        super('100000136192', element);

  /// value100000136193
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136193([this.element])
      : dbValue = '100000136193',
        super('100000136193', element);

  /// value100000136194
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136194([this.element])
      : dbValue = '100000136194',
        super('100000136194', element);

  /// value100000136195
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136195([this.element])
      : dbValue = '100000136195',
        super('100000136195', element);

  /// value100000136196
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136196([this.element])
      : dbValue = '100000136196',
        super('100000136196', element);

  /// value100000136197
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136197([this.element])
      : dbValue = '100000136197',
        super('100000136197', element);

  /// value100000136198
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136198([this.element])
      : dbValue = '100000136198',
        super('100000136198', element);

  /// value100000136199
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136199([this.element])
      : dbValue = '100000136199',
        super('100000136199', element);

  /// value100000136200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136200([this.element])
      : dbValue = '100000136200',
        super('100000136200', element);

  /// value100000136201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136201([this.element])
      : dbValue = '100000136201',
        super('100000136201', element);

  /// value100000136202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136202([this.element])
      : dbValue = '100000136202',
        super('100000136202', element);

  /// value100000136203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136203([this.element])
      : dbValue = '100000136203',
        super('100000136203', element);

  /// value100000136204
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136204([this.element])
      : dbValue = '100000136204',
        super('100000136204', element);

  /// value100000136205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136205([this.element])
      : dbValue = '100000136205',
        super('100000136205', element);

  /// value100000136206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136206([this.element])
      : dbValue = '100000136206',
        super('100000136206', element);

  /// value100000136207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136207([this.element])
      : dbValue = '100000136207',
        super('100000136207', element);

  /// value100000136208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136208([this.element])
      : dbValue = '100000136208',
        super('100000136208', element);

  /// value100000136209
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136209([this.element])
      : dbValue = '100000136209',
        super('100000136209', element);

  /// value100000136210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136210([this.element])
      : dbValue = '100000136210',
        super('100000136210', element);

  /// value100000136211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136211([this.element])
      : dbValue = '100000136211',
        super('100000136211', element);

  /// value100000136212
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136212([this.element])
      : dbValue = '100000136212',
        super('100000136212', element);

  /// value100000136213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136213([this.element])
      : dbValue = '100000136213',
        super('100000136213', element);

  /// value100000136214
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136214([this.element])
      : dbValue = '100000136214',
        super('100000136214', element);

  /// value100000136215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136215([this.element])
      : dbValue = '100000136215',
        super('100000136215', element);

  /// value100000136216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136216([this.element])
      : dbValue = '100000136216',
        super('100000136216', element);

  /// value100000136217
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136217([this.element])
      : dbValue = '100000136217',
        super('100000136217', element);

  /// value100000136218
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136218([this.element])
      : dbValue = '100000136218',
        super('100000136218', element);

  /// value100000136219
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136219([this.element])
      : dbValue = '100000136219',
        super('100000136219', element);

  /// value100000136220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136220([this.element])
      : dbValue = '100000136220',
        super('100000136220', element);

  /// value100000136221
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136221([this.element])
      : dbValue = '100000136221',
        super('100000136221', element);

  /// value100000136222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136222([this.element])
      : dbValue = '100000136222',
        super('100000136222', element);

  /// value100000136223
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136223([this.element])
      : dbValue = '100000136223',
        super('100000136223', element);

  /// value100000136224
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136224([this.element])
      : dbValue = '100000136224',
        super('100000136224', element);

  /// value100000136225
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136225([this.element])
      : dbValue = '100000136225',
        super('100000136225', element);

  /// value100000136226
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136226([this.element])
      : dbValue = '100000136226',
        super('100000136226', element);

  /// value100000136227
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136227([this.element])
      : dbValue = '100000136227',
        super('100000136227', element);

  /// value100000136228
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136228([this.element])
      : dbValue = '100000136228',
        super('100000136228', element);

  /// value100000136229
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136229([this.element])
      : dbValue = '100000136229',
        super('100000136229', element);

  /// value100000136230
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136230([this.element])
      : dbValue = '100000136230',
        super('100000136230', element);

  /// value100000136231
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136231([this.element])
      : dbValue = '100000136231',
        super('100000136231', element);

  /// value100000136232
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136232([this.element])
      : dbValue = '100000136232',
        super('100000136232', element);

  /// value100000136233
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136233([this.element])
      : dbValue = '100000136233',
        super('100000136233', element);

  /// value100000136234
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136234([this.element])
      : dbValue = '100000136234',
        super('100000136234', element);

  /// value100000136235
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136235([this.element])
      : dbValue = '100000136235',
        super('100000136235', element);

  /// value100000136236
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136236([this.element])
      : dbValue = '100000136236',
        super('100000136236', element);

  /// value100000136237
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136237([this.element])
      : dbValue = '100000136237',
        super('100000136237', element);

  /// value100000136247
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136247([this.element])
      : dbValue = '100000136247',
        super('100000136247', element);

  /// value100000136248
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136248([this.element])
      : dbValue = '100000136248',
        super('100000136248', element);

  /// value100000136554
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136554([this.element])
      : dbValue = '100000136554',
        super('100000136554', element);

  /// value100000136555
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136555([this.element])
      : dbValue = '100000136555',
        super('100000136555', element);

  /// value100000136556
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000136556([this.element])
      : dbValue = '100000136556',
        super('100000136556', element);

  /// value100000142485
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AnimalTissueType.value100000142485([this.element])
      : dbValue = '100000142485',
        super('100000142485', element);

  /// For instances where an Element is present but not value

  AnimalTissueType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  AnimalTissueType._(super.input, [super.element])
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
    '100000072091',
    '100000072092',
    '100000072093',
    '100000072094',
    '100000072095',
    '100000072096',
    '100000072104',
    '100000072105',
    '100000072106',
    '100000072107',
    '100000072108',
    '100000072109',
    '100000111053',
    '100000111054',
    '100000111055',
    '100000111056',
    '100000111057',
    '100000111058',
    '100000111059',
    '100000111060',
    '100000111061',
    '100000111062',
    '100000111063',
    '100000111064',
    '100000111065',
    '100000111066',
    '100000111067',
    '100000111068',
    '100000111069',
    '100000111070',
    '100000111071',
    '100000111072',
    '100000111073',
    '100000111074',
    '100000111075',
    '100000111076',
    '100000111077',
    '100000111078',
    '100000111079',
    '100000111080',
    '100000111081',
    '100000111082',
    '100000111083',
    '100000111084',
    '100000111085',
    '100000111086',
    '100000111087',
    '100000111088',
    '100000111089',
    '100000111090',
    '100000111091',
    '100000111092',
    '100000111093',
    '100000111094',
    '100000111095',
    '100000111096',
    '100000111097',
    '100000111098',
    '100000111099',
    '100000111100',
    '100000111101',
    '100000111102',
    '100000111103',
    '100000111104',
    '100000111105',
    '100000111106',
    '100000111107',
    '100000111108',
    '100000111109',
    '100000111110',
    '100000111111',
    '100000111112',
    '100000111113',
    '100000111114',
    '100000111115',
    '100000111116',
    '100000111117',
    '100000111118',
    '100000111119',
    '100000111120',
    '100000111121',
    '100000111122',
    '100000111123',
    '100000111124',
    '100000111125',
    '100000111126',
    '100000111127',
    '100000111128',
    '100000111129',
    '100000111130',
    '100000111131',
    '100000111132',
    '100000111133',
    '100000111134',
    '100000111135',
    '100000111136',
    '100000111137',
    '100000111138',
    '100000111139',
    '100000111140',
    '100000111141',
    '100000111142',
    '100000111143',
    '100000111144',
    '100000111145',
    '100000111146',
    '100000111147',
    '100000111148',
    '100000111149',
    '100000111150',
    '100000111151',
    '100000111152',
    '100000111153',
    '100000111154',
    '100000111155',
    '100000111156',
    '100000111157',
    '100000111158',
    '100000111159',
    '100000111160',
    '100000111161',
    '100000111162',
    '100000111163',
    '100000111164',
    '100000125717',
    '100000136180',
    '100000136181',
    '100000136182',
    '100000136183',
    '100000136184',
    '100000136185',
    '100000136186',
    '100000136187',
    '100000136188',
    '100000136189',
    '100000136190',
    '100000136191',
    '100000136192',
    '100000136193',
    '100000136194',
    '100000136195',
    '100000136196',
    '100000136197',
    '100000136198',
    '100000136199',
    '100000136200',
    '100000136201',
    '100000136202',
    '100000136203',
    '100000136204',
    '100000136205',
    '100000136206',
    '100000136207',
    '100000136208',
    '100000136209',
    '100000136210',
    '100000136211',
    '100000136212',
    '100000136213',
    '100000136214',
    '100000136215',
    '100000136216',
    '100000136217',
    '100000136218',
    '100000136219',
    '100000136220',
    '100000136221',
    '100000136222',
    '100000136223',
    '100000136224',
    '100000136225',
    '100000136226',
    '100000136227',
    '100000136228',
    '100000136229',
    '100000136230',
    '100000136231',
    '100000136232',
    '100000136233',
    '100000136234',
    '100000136235',
    '100000136236',
    '100000136237',
    '100000136247',
    '100000136248',
    '100000136554',
    '100000136555',
    '100000136556',
    '100000142485',
  ];

  /// Returns the enum value with an element attached
  AnimalTissueType withElement(Element? newElement) {
    return AnimalTissueType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AnimalTissueType.$value';
}
