// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A tissue type of an animal.
class AnimalTissueType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AnimalTissueType._(super.value, [super.element]);

  /// Factory constructor to create [AnimalTissueType] from JSON.
  factory AnimalTissueType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AnimalTissueType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AnimalTissueType cannot be constructed from JSON.',
      );
    }
    return AnimalTissueType._(value, element);
  }

  /// value100000072091
  static final AnimalTissueType value100000072091 = AnimalTissueType._(
    '100000072091',
  );

  /// value100000072092
  static final AnimalTissueType value100000072092 = AnimalTissueType._(
    '100000072092',
  );

  /// value100000072093
  static final AnimalTissueType value100000072093 = AnimalTissueType._(
    '100000072093',
  );

  /// value100000072094
  static final AnimalTissueType value100000072094 = AnimalTissueType._(
    '100000072094',
  );

  /// value100000072095
  static final AnimalTissueType value100000072095 = AnimalTissueType._(
    '100000072095',
  );

  /// value100000072096
  static final AnimalTissueType value100000072096 = AnimalTissueType._(
    '100000072096',
  );

  /// value100000072104
  static final AnimalTissueType value100000072104 = AnimalTissueType._(
    '100000072104',
  );

  /// value100000072105
  static final AnimalTissueType value100000072105 = AnimalTissueType._(
    '100000072105',
  );

  /// value100000072106
  static final AnimalTissueType value100000072106 = AnimalTissueType._(
    '100000072106',
  );

  /// value100000072107
  static final AnimalTissueType value100000072107 = AnimalTissueType._(
    '100000072107',
  );

  /// value100000072108
  static final AnimalTissueType value100000072108 = AnimalTissueType._(
    '100000072108',
  );

  /// value100000072109
  static final AnimalTissueType value100000072109 = AnimalTissueType._(
    '100000072109',
  );

  /// value100000111053
  static final AnimalTissueType value100000111053 = AnimalTissueType._(
    '100000111053',
  );

  /// value100000111054
  static final AnimalTissueType value100000111054 = AnimalTissueType._(
    '100000111054',
  );

  /// value100000111055
  static final AnimalTissueType value100000111055 = AnimalTissueType._(
    '100000111055',
  );

  /// value100000111056
  static final AnimalTissueType value100000111056 = AnimalTissueType._(
    '100000111056',
  );

  /// value100000111057
  static final AnimalTissueType value100000111057 = AnimalTissueType._(
    '100000111057',
  );

  /// value100000111058
  static final AnimalTissueType value100000111058 = AnimalTissueType._(
    '100000111058',
  );

  /// value100000111059
  static final AnimalTissueType value100000111059 = AnimalTissueType._(
    '100000111059',
  );

  /// value100000111060
  static final AnimalTissueType value100000111060 = AnimalTissueType._(
    '100000111060',
  );

  /// value100000111061
  static final AnimalTissueType value100000111061 = AnimalTissueType._(
    '100000111061',
  );

  /// value100000111062
  static final AnimalTissueType value100000111062 = AnimalTissueType._(
    '100000111062',
  );

  /// value100000111063
  static final AnimalTissueType value100000111063 = AnimalTissueType._(
    '100000111063',
  );

  /// value100000111064
  static final AnimalTissueType value100000111064 = AnimalTissueType._(
    '100000111064',
  );

  /// value100000111065
  static final AnimalTissueType value100000111065 = AnimalTissueType._(
    '100000111065',
  );

  /// value100000111066
  static final AnimalTissueType value100000111066 = AnimalTissueType._(
    '100000111066',
  );

  /// value100000111067
  static final AnimalTissueType value100000111067 = AnimalTissueType._(
    '100000111067',
  );

  /// value100000111068
  static final AnimalTissueType value100000111068 = AnimalTissueType._(
    '100000111068',
  );

  /// value100000111069
  static final AnimalTissueType value100000111069 = AnimalTissueType._(
    '100000111069',
  );

  /// value100000111070
  static final AnimalTissueType value100000111070 = AnimalTissueType._(
    '100000111070',
  );

  /// value100000111071
  static final AnimalTissueType value100000111071 = AnimalTissueType._(
    '100000111071',
  );

  /// value100000111072
  static final AnimalTissueType value100000111072 = AnimalTissueType._(
    '100000111072',
  );

  /// value100000111073
  static final AnimalTissueType value100000111073 = AnimalTissueType._(
    '100000111073',
  );

  /// value100000111074
  static final AnimalTissueType value100000111074 = AnimalTissueType._(
    '100000111074',
  );

  /// value100000111075
  static final AnimalTissueType value100000111075 = AnimalTissueType._(
    '100000111075',
  );

  /// value100000111076
  static final AnimalTissueType value100000111076 = AnimalTissueType._(
    '100000111076',
  );

  /// value100000111077
  static final AnimalTissueType value100000111077 = AnimalTissueType._(
    '100000111077',
  );

  /// value100000111078
  static final AnimalTissueType value100000111078 = AnimalTissueType._(
    '100000111078',
  );

  /// value100000111079
  static final AnimalTissueType value100000111079 = AnimalTissueType._(
    '100000111079',
  );

  /// value100000111080
  static final AnimalTissueType value100000111080 = AnimalTissueType._(
    '100000111080',
  );

  /// value100000111081
  static final AnimalTissueType value100000111081 = AnimalTissueType._(
    '100000111081',
  );

  /// value100000111082
  static final AnimalTissueType value100000111082 = AnimalTissueType._(
    '100000111082',
  );

  /// value100000111083
  static final AnimalTissueType value100000111083 = AnimalTissueType._(
    '100000111083',
  );

  /// value100000111084
  static final AnimalTissueType value100000111084 = AnimalTissueType._(
    '100000111084',
  );

  /// value100000111085
  static final AnimalTissueType value100000111085 = AnimalTissueType._(
    '100000111085',
  );

  /// value100000111086
  static final AnimalTissueType value100000111086 = AnimalTissueType._(
    '100000111086',
  );

  /// value100000111087
  static final AnimalTissueType value100000111087 = AnimalTissueType._(
    '100000111087',
  );

  /// value100000111088
  static final AnimalTissueType value100000111088 = AnimalTissueType._(
    '100000111088',
  );

  /// value100000111089
  static final AnimalTissueType value100000111089 = AnimalTissueType._(
    '100000111089',
  );

  /// value100000111090
  static final AnimalTissueType value100000111090 = AnimalTissueType._(
    '100000111090',
  );

  /// value100000111091
  static final AnimalTissueType value100000111091 = AnimalTissueType._(
    '100000111091',
  );

  /// value100000111092
  static final AnimalTissueType value100000111092 = AnimalTissueType._(
    '100000111092',
  );

  /// value100000111093
  static final AnimalTissueType value100000111093 = AnimalTissueType._(
    '100000111093',
  );

  /// value100000111094
  static final AnimalTissueType value100000111094 = AnimalTissueType._(
    '100000111094',
  );

  /// value100000111095
  static final AnimalTissueType value100000111095 = AnimalTissueType._(
    '100000111095',
  );

  /// value100000111096
  static final AnimalTissueType value100000111096 = AnimalTissueType._(
    '100000111096',
  );

  /// value100000111097
  static final AnimalTissueType value100000111097 = AnimalTissueType._(
    '100000111097',
  );

  /// value100000111098
  static final AnimalTissueType value100000111098 = AnimalTissueType._(
    '100000111098',
  );

  /// value100000111099
  static final AnimalTissueType value100000111099 = AnimalTissueType._(
    '100000111099',
  );

  /// value100000111100
  static final AnimalTissueType value100000111100 = AnimalTissueType._(
    '100000111100',
  );

  /// value100000111101
  static final AnimalTissueType value100000111101 = AnimalTissueType._(
    '100000111101',
  );

  /// value100000111102
  static final AnimalTissueType value100000111102 = AnimalTissueType._(
    '100000111102',
  );

  /// value100000111103
  static final AnimalTissueType value100000111103 = AnimalTissueType._(
    '100000111103',
  );

  /// value100000111104
  static final AnimalTissueType value100000111104 = AnimalTissueType._(
    '100000111104',
  );

  /// value100000111105
  static final AnimalTissueType value100000111105 = AnimalTissueType._(
    '100000111105',
  );

  /// value100000111106
  static final AnimalTissueType value100000111106 = AnimalTissueType._(
    '100000111106',
  );

  /// value100000111107
  static final AnimalTissueType value100000111107 = AnimalTissueType._(
    '100000111107',
  );

  /// value100000111108
  static final AnimalTissueType value100000111108 = AnimalTissueType._(
    '100000111108',
  );

  /// value100000111109
  static final AnimalTissueType value100000111109 = AnimalTissueType._(
    '100000111109',
  );

  /// value100000111110
  static final AnimalTissueType value100000111110 = AnimalTissueType._(
    '100000111110',
  );

  /// value100000111111
  static final AnimalTissueType value100000111111 = AnimalTissueType._(
    '100000111111',
  );

  /// value100000111112
  static final AnimalTissueType value100000111112 = AnimalTissueType._(
    '100000111112',
  );

  /// value100000111113
  static final AnimalTissueType value100000111113 = AnimalTissueType._(
    '100000111113',
  );

  /// value100000111114
  static final AnimalTissueType value100000111114 = AnimalTissueType._(
    '100000111114',
  );

  /// value100000111115
  static final AnimalTissueType value100000111115 = AnimalTissueType._(
    '100000111115',
  );

  /// value100000111116
  static final AnimalTissueType value100000111116 = AnimalTissueType._(
    '100000111116',
  );

  /// value100000111117
  static final AnimalTissueType value100000111117 = AnimalTissueType._(
    '100000111117',
  );

  /// value100000111118
  static final AnimalTissueType value100000111118 = AnimalTissueType._(
    '100000111118',
  );

  /// value100000111119
  static final AnimalTissueType value100000111119 = AnimalTissueType._(
    '100000111119',
  );

  /// value100000111120
  static final AnimalTissueType value100000111120 = AnimalTissueType._(
    '100000111120',
  );

  /// value100000111121
  static final AnimalTissueType value100000111121 = AnimalTissueType._(
    '100000111121',
  );

  /// value100000111122
  static final AnimalTissueType value100000111122 = AnimalTissueType._(
    '100000111122',
  );

  /// value100000111123
  static final AnimalTissueType value100000111123 = AnimalTissueType._(
    '100000111123',
  );

  /// value100000111124
  static final AnimalTissueType value100000111124 = AnimalTissueType._(
    '100000111124',
  );

  /// value100000111125
  static final AnimalTissueType value100000111125 = AnimalTissueType._(
    '100000111125',
  );

  /// value100000111126
  static final AnimalTissueType value100000111126 = AnimalTissueType._(
    '100000111126',
  );

  /// value100000111127
  static final AnimalTissueType value100000111127 = AnimalTissueType._(
    '100000111127',
  );

  /// value100000111128
  static final AnimalTissueType value100000111128 = AnimalTissueType._(
    '100000111128',
  );

  /// value100000111129
  static final AnimalTissueType value100000111129 = AnimalTissueType._(
    '100000111129',
  );

  /// value100000111130
  static final AnimalTissueType value100000111130 = AnimalTissueType._(
    '100000111130',
  );

  /// value100000111131
  static final AnimalTissueType value100000111131 = AnimalTissueType._(
    '100000111131',
  );

  /// value100000111132
  static final AnimalTissueType value100000111132 = AnimalTissueType._(
    '100000111132',
  );

  /// value100000111133
  static final AnimalTissueType value100000111133 = AnimalTissueType._(
    '100000111133',
  );

  /// value100000111134
  static final AnimalTissueType value100000111134 = AnimalTissueType._(
    '100000111134',
  );

  /// value100000111135
  static final AnimalTissueType value100000111135 = AnimalTissueType._(
    '100000111135',
  );

  /// value100000111136
  static final AnimalTissueType value100000111136 = AnimalTissueType._(
    '100000111136',
  );

  /// value100000111137
  static final AnimalTissueType value100000111137 = AnimalTissueType._(
    '100000111137',
  );

  /// value100000111138
  static final AnimalTissueType value100000111138 = AnimalTissueType._(
    '100000111138',
  );

  /// value100000111139
  static final AnimalTissueType value100000111139 = AnimalTissueType._(
    '100000111139',
  );

  /// value100000111140
  static final AnimalTissueType value100000111140 = AnimalTissueType._(
    '100000111140',
  );

  /// value100000111141
  static final AnimalTissueType value100000111141 = AnimalTissueType._(
    '100000111141',
  );

  /// value100000111142
  static final AnimalTissueType value100000111142 = AnimalTissueType._(
    '100000111142',
  );

  /// value100000111143
  static final AnimalTissueType value100000111143 = AnimalTissueType._(
    '100000111143',
  );

  /// value100000111144
  static final AnimalTissueType value100000111144 = AnimalTissueType._(
    '100000111144',
  );

  /// value100000111145
  static final AnimalTissueType value100000111145 = AnimalTissueType._(
    '100000111145',
  );

  /// value100000111146
  static final AnimalTissueType value100000111146 = AnimalTissueType._(
    '100000111146',
  );

  /// value100000111147
  static final AnimalTissueType value100000111147 = AnimalTissueType._(
    '100000111147',
  );

  /// value100000111148
  static final AnimalTissueType value100000111148 = AnimalTissueType._(
    '100000111148',
  );

  /// value100000111149
  static final AnimalTissueType value100000111149 = AnimalTissueType._(
    '100000111149',
  );

  /// value100000111150
  static final AnimalTissueType value100000111150 = AnimalTissueType._(
    '100000111150',
  );

  /// value100000111151
  static final AnimalTissueType value100000111151 = AnimalTissueType._(
    '100000111151',
  );

  /// value100000111152
  static final AnimalTissueType value100000111152 = AnimalTissueType._(
    '100000111152',
  );

  /// value100000111153
  static final AnimalTissueType value100000111153 = AnimalTissueType._(
    '100000111153',
  );

  /// value100000111154
  static final AnimalTissueType value100000111154 = AnimalTissueType._(
    '100000111154',
  );

  /// value100000111155
  static final AnimalTissueType value100000111155 = AnimalTissueType._(
    '100000111155',
  );

  /// value100000111156
  static final AnimalTissueType value100000111156 = AnimalTissueType._(
    '100000111156',
  );

  /// value100000111157
  static final AnimalTissueType value100000111157 = AnimalTissueType._(
    '100000111157',
  );

  /// value100000111158
  static final AnimalTissueType value100000111158 = AnimalTissueType._(
    '100000111158',
  );

  /// value100000111159
  static final AnimalTissueType value100000111159 = AnimalTissueType._(
    '100000111159',
  );

  /// value100000111160
  static final AnimalTissueType value100000111160 = AnimalTissueType._(
    '100000111160',
  );

  /// value100000111161
  static final AnimalTissueType value100000111161 = AnimalTissueType._(
    '100000111161',
  );

  /// value100000111162
  static final AnimalTissueType value100000111162 = AnimalTissueType._(
    '100000111162',
  );

  /// value100000111163
  static final AnimalTissueType value100000111163 = AnimalTissueType._(
    '100000111163',
  );

  /// value100000111164
  static final AnimalTissueType value100000111164 = AnimalTissueType._(
    '100000111164',
  );

  /// value100000125717
  static final AnimalTissueType value100000125717 = AnimalTissueType._(
    '100000125717',
  );

  /// value100000136180
  static final AnimalTissueType value100000136180 = AnimalTissueType._(
    '100000136180',
  );

  /// value100000136181
  static final AnimalTissueType value100000136181 = AnimalTissueType._(
    '100000136181',
  );

  /// value100000136182
  static final AnimalTissueType value100000136182 = AnimalTissueType._(
    '100000136182',
  );

  /// value100000136183
  static final AnimalTissueType value100000136183 = AnimalTissueType._(
    '100000136183',
  );

  /// value100000136184
  static final AnimalTissueType value100000136184 = AnimalTissueType._(
    '100000136184',
  );

  /// value100000136185
  static final AnimalTissueType value100000136185 = AnimalTissueType._(
    '100000136185',
  );

  /// value100000136186
  static final AnimalTissueType value100000136186 = AnimalTissueType._(
    '100000136186',
  );

  /// value100000136187
  static final AnimalTissueType value100000136187 = AnimalTissueType._(
    '100000136187',
  );

  /// value100000136188
  static final AnimalTissueType value100000136188 = AnimalTissueType._(
    '100000136188',
  );

  /// value100000136189
  static final AnimalTissueType value100000136189 = AnimalTissueType._(
    '100000136189',
  );

  /// value100000136190
  static final AnimalTissueType value100000136190 = AnimalTissueType._(
    '100000136190',
  );

  /// value100000136191
  static final AnimalTissueType value100000136191 = AnimalTissueType._(
    '100000136191',
  );

  /// value100000136192
  static final AnimalTissueType value100000136192 = AnimalTissueType._(
    '100000136192',
  );

  /// value100000136193
  static final AnimalTissueType value100000136193 = AnimalTissueType._(
    '100000136193',
  );

  /// value100000136194
  static final AnimalTissueType value100000136194 = AnimalTissueType._(
    '100000136194',
  );

  /// value100000136195
  static final AnimalTissueType value100000136195 = AnimalTissueType._(
    '100000136195',
  );

  /// value100000136196
  static final AnimalTissueType value100000136196 = AnimalTissueType._(
    '100000136196',
  );

  /// value100000136197
  static final AnimalTissueType value100000136197 = AnimalTissueType._(
    '100000136197',
  );

  /// value100000136198
  static final AnimalTissueType value100000136198 = AnimalTissueType._(
    '100000136198',
  );

  /// value100000136199
  static final AnimalTissueType value100000136199 = AnimalTissueType._(
    '100000136199',
  );

  /// value100000136200
  static final AnimalTissueType value100000136200 = AnimalTissueType._(
    '100000136200',
  );

  /// value100000136201
  static final AnimalTissueType value100000136201 = AnimalTissueType._(
    '100000136201',
  );

  /// value100000136202
  static final AnimalTissueType value100000136202 = AnimalTissueType._(
    '100000136202',
  );

  /// value100000136203
  static final AnimalTissueType value100000136203 = AnimalTissueType._(
    '100000136203',
  );

  /// value100000136204
  static final AnimalTissueType value100000136204 = AnimalTissueType._(
    '100000136204',
  );

  /// value100000136205
  static final AnimalTissueType value100000136205 = AnimalTissueType._(
    '100000136205',
  );

  /// value100000136206
  static final AnimalTissueType value100000136206 = AnimalTissueType._(
    '100000136206',
  );

  /// value100000136207
  static final AnimalTissueType value100000136207 = AnimalTissueType._(
    '100000136207',
  );

  /// value100000136208
  static final AnimalTissueType value100000136208 = AnimalTissueType._(
    '100000136208',
  );

  /// value100000136209
  static final AnimalTissueType value100000136209 = AnimalTissueType._(
    '100000136209',
  );

  /// value100000136210
  static final AnimalTissueType value100000136210 = AnimalTissueType._(
    '100000136210',
  );

  /// value100000136211
  static final AnimalTissueType value100000136211 = AnimalTissueType._(
    '100000136211',
  );

  /// value100000136212
  static final AnimalTissueType value100000136212 = AnimalTissueType._(
    '100000136212',
  );

  /// value100000136213
  static final AnimalTissueType value100000136213 = AnimalTissueType._(
    '100000136213',
  );

  /// value100000136214
  static final AnimalTissueType value100000136214 = AnimalTissueType._(
    '100000136214',
  );

  /// value100000136215
  static final AnimalTissueType value100000136215 = AnimalTissueType._(
    '100000136215',
  );

  /// value100000136216
  static final AnimalTissueType value100000136216 = AnimalTissueType._(
    '100000136216',
  );

  /// value100000136217
  static final AnimalTissueType value100000136217 = AnimalTissueType._(
    '100000136217',
  );

  /// value100000136218
  static final AnimalTissueType value100000136218 = AnimalTissueType._(
    '100000136218',
  );

  /// value100000136219
  static final AnimalTissueType value100000136219 = AnimalTissueType._(
    '100000136219',
  );

  /// value100000136220
  static final AnimalTissueType value100000136220 = AnimalTissueType._(
    '100000136220',
  );

  /// value100000136221
  static final AnimalTissueType value100000136221 = AnimalTissueType._(
    '100000136221',
  );

  /// value100000136222
  static final AnimalTissueType value100000136222 = AnimalTissueType._(
    '100000136222',
  );

  /// value100000136223
  static final AnimalTissueType value100000136223 = AnimalTissueType._(
    '100000136223',
  );

  /// value100000136224
  static final AnimalTissueType value100000136224 = AnimalTissueType._(
    '100000136224',
  );

  /// value100000136225
  static final AnimalTissueType value100000136225 = AnimalTissueType._(
    '100000136225',
  );

  /// value100000136226
  static final AnimalTissueType value100000136226 = AnimalTissueType._(
    '100000136226',
  );

  /// value100000136227
  static final AnimalTissueType value100000136227 = AnimalTissueType._(
    '100000136227',
  );

  /// value100000136228
  static final AnimalTissueType value100000136228 = AnimalTissueType._(
    '100000136228',
  );

  /// value100000136229
  static final AnimalTissueType value100000136229 = AnimalTissueType._(
    '100000136229',
  );

  /// value100000136230
  static final AnimalTissueType value100000136230 = AnimalTissueType._(
    '100000136230',
  );

  /// value100000136231
  static final AnimalTissueType value100000136231 = AnimalTissueType._(
    '100000136231',
  );

  /// value100000136232
  static final AnimalTissueType value100000136232 = AnimalTissueType._(
    '100000136232',
  );

  /// value100000136233
  static final AnimalTissueType value100000136233 = AnimalTissueType._(
    '100000136233',
  );

  /// value100000136234
  static final AnimalTissueType value100000136234 = AnimalTissueType._(
    '100000136234',
  );

  /// value100000136235
  static final AnimalTissueType value100000136235 = AnimalTissueType._(
    '100000136235',
  );

  /// value100000136236
  static final AnimalTissueType value100000136236 = AnimalTissueType._(
    '100000136236',
  );

  /// value100000136237
  static final AnimalTissueType value100000136237 = AnimalTissueType._(
    '100000136237',
  );

  /// value100000136247
  static final AnimalTissueType value100000136247 = AnimalTissueType._(
    '100000136247',
  );

  /// value100000136248
  static final AnimalTissueType value100000136248 = AnimalTissueType._(
    '100000136248',
  );

  /// value100000136554
  static final AnimalTissueType value100000136554 = AnimalTissueType._(
    '100000136554',
  );

  /// value100000136555
  static final AnimalTissueType value100000136555 = AnimalTissueType._(
    '100000136555',
  );

  /// value100000136556
  static final AnimalTissueType value100000136556 = AnimalTissueType._(
    '100000136556',
  );

  /// value100000142485
  static final AnimalTissueType value100000142485 = AnimalTissueType._(
    '100000142485',
  );

  /// For instances where an Element is present but not value

  static final AnimalTissueType elementOnly = AnimalTissueType._('');

  /// List of all enum-like values
  static final List<AnimalTissueType> values = [
    value100000072091,
    value100000072092,
    value100000072093,
    value100000072094,
    value100000072095,
    value100000072096,
    value100000072104,
    value100000072105,
    value100000072106,
    value100000072107,
    value100000072108,
    value100000072109,
    value100000111053,
    value100000111054,
    value100000111055,
    value100000111056,
    value100000111057,
    value100000111058,
    value100000111059,
    value100000111060,
    value100000111061,
    value100000111062,
    value100000111063,
    value100000111064,
    value100000111065,
    value100000111066,
    value100000111067,
    value100000111068,
    value100000111069,
    value100000111070,
    value100000111071,
    value100000111072,
    value100000111073,
    value100000111074,
    value100000111075,
    value100000111076,
    value100000111077,
    value100000111078,
    value100000111079,
    value100000111080,
    value100000111081,
    value100000111082,
    value100000111083,
    value100000111084,
    value100000111085,
    value100000111086,
    value100000111087,
    value100000111088,
    value100000111089,
    value100000111090,
    value100000111091,
    value100000111092,
    value100000111093,
    value100000111094,
    value100000111095,
    value100000111096,
    value100000111097,
    value100000111098,
    value100000111099,
    value100000111100,
    value100000111101,
    value100000111102,
    value100000111103,
    value100000111104,
    value100000111105,
    value100000111106,
    value100000111107,
    value100000111108,
    value100000111109,
    value100000111110,
    value100000111111,
    value100000111112,
    value100000111113,
    value100000111114,
    value100000111115,
    value100000111116,
    value100000111117,
    value100000111118,
    value100000111119,
    value100000111120,
    value100000111121,
    value100000111122,
    value100000111123,
    value100000111124,
    value100000111125,
    value100000111126,
    value100000111127,
    value100000111128,
    value100000111129,
    value100000111130,
    value100000111131,
    value100000111132,
    value100000111133,
    value100000111134,
    value100000111135,
    value100000111136,
    value100000111137,
    value100000111138,
    value100000111139,
    value100000111140,
    value100000111141,
    value100000111142,
    value100000111143,
    value100000111144,
    value100000111145,
    value100000111146,
    value100000111147,
    value100000111148,
    value100000111149,
    value100000111150,
    value100000111151,
    value100000111152,
    value100000111153,
    value100000111154,
    value100000111155,
    value100000111156,
    value100000111157,
    value100000111158,
    value100000111159,
    value100000111160,
    value100000111161,
    value100000111162,
    value100000111163,
    value100000111164,
    value100000125717,
    value100000136180,
    value100000136181,
    value100000136182,
    value100000136183,
    value100000136184,
    value100000136185,
    value100000136186,
    value100000136187,
    value100000136188,
    value100000136189,
    value100000136190,
    value100000136191,
    value100000136192,
    value100000136193,
    value100000136194,
    value100000136195,
    value100000136196,
    value100000136197,
    value100000136198,
    value100000136199,
    value100000136200,
    value100000136201,
    value100000136202,
    value100000136203,
    value100000136204,
    value100000136205,
    value100000136206,
    value100000136207,
    value100000136208,
    value100000136209,
    value100000136210,
    value100000136211,
    value100000136212,
    value100000136213,
    value100000136214,
    value100000136215,
    value100000136216,
    value100000136217,
    value100000136218,
    value100000136219,
    value100000136220,
    value100000136221,
    value100000136222,
    value100000136223,
    value100000136224,
    value100000136225,
    value100000136226,
    value100000136227,
    value100000136228,
    value100000136229,
    value100000136230,
    value100000136231,
    value100000136232,
    value100000136233,
    value100000136234,
    value100000136235,
    value100000136236,
    value100000136237,
    value100000136247,
    value100000136248,
    value100000136554,
    value100000136555,
    value100000136556,
    value100000142485,
  ];

  /// Clones the current instance
  @override
  AnimalTissueType clone() => AnimalTissueType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  AnimalTissueType setElement(
    String name,
    dynamic elementValue,
  ) {
    return AnimalTissueType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  AnimalTissueType withElement(Element? newElement) {
    return AnimalTissueType._(value, newElement);
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
  AnimalTissueType copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return AnimalTissueType._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
