// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines an example set of codes of service-types.
class ServiceType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ServiceType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ServiceType] from JSON.
  factory ServiceType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ServiceType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ServiceType cannot be constructed from JSON.',
      );
    }
    return ServiceType._(value: value, element: element);
  }

  /// value1
  static final ServiceType value1 = ServiceType._(
    value: '1',
  );

  /// value2
  static final ServiceType value2 = ServiceType._(
    value: '2',
  );

  /// value3
  static final ServiceType value3 = ServiceType._(
    value: '3',
  );

  /// value4
  static final ServiceType value4 = ServiceType._(
    value: '4',
  );

  /// value5
  static final ServiceType value5 = ServiceType._(
    value: '5',
  );

  /// value6
  static final ServiceType value6 = ServiceType._(
    value: '6',
  );

  /// value7
  static final ServiceType value7 = ServiceType._(
    value: '7',
  );

  /// value8
  static final ServiceType value8 = ServiceType._(
    value: '8',
  );

  /// value9
  static final ServiceType value9 = ServiceType._(
    value: '9',
  );

  /// value10
  static final ServiceType value10 = ServiceType._(
    value: '10',
  );

  /// value11
  static final ServiceType value11 = ServiceType._(
    value: '11',
  );

  /// value12
  static final ServiceType value12 = ServiceType._(
    value: '12',
  );

  /// value13
  static final ServiceType value13 = ServiceType._(
    value: '13',
  );

  /// value14
  static final ServiceType value14 = ServiceType._(
    value: '14',
  );

  /// value15
  static final ServiceType value15 = ServiceType._(
    value: '15',
  );

  /// value16
  static final ServiceType value16 = ServiceType._(
    value: '16',
  );

  /// value17
  static final ServiceType value17 = ServiceType._(
    value: '17',
  );

  /// value18
  static final ServiceType value18 = ServiceType._(
    value: '18',
  );

  /// value19
  static final ServiceType value19 = ServiceType._(
    value: '19',
  );

  /// value20
  static final ServiceType value20 = ServiceType._(
    value: '20',
  );

  /// value21
  static final ServiceType value21 = ServiceType._(
    value: '21',
  );

  /// value22
  static final ServiceType value22 = ServiceType._(
    value: '22',
  );

  /// value23
  static final ServiceType value23 = ServiceType._(
    value: '23',
  );

  /// value24
  static final ServiceType value24 = ServiceType._(
    value: '24',
  );

  /// value25
  static final ServiceType value25 = ServiceType._(
    value: '25',
  );

  /// value26
  static final ServiceType value26 = ServiceType._(
    value: '26',
  );

  /// value27
  static final ServiceType value27 = ServiceType._(
    value: '27',
  );

  /// value28
  static final ServiceType value28 = ServiceType._(
    value: '28',
  );

  /// value29
  static final ServiceType value29 = ServiceType._(
    value: '29',
  );

  /// value30
  static final ServiceType value30 = ServiceType._(
    value: '30',
  );

  /// value31
  static final ServiceType value31 = ServiceType._(
    value: '31',
  );

  /// value32
  static final ServiceType value32 = ServiceType._(
    value: '32',
  );

  /// value33
  static final ServiceType value33 = ServiceType._(
    value: '33',
  );

  /// value34
  static final ServiceType value34 = ServiceType._(
    value: '34',
  );

  /// value35
  static final ServiceType value35 = ServiceType._(
    value: '35',
  );

  /// value36
  static final ServiceType value36 = ServiceType._(
    value: '36',
  );

  /// value37
  static final ServiceType value37 = ServiceType._(
    value: '37',
  );

  /// value38
  static final ServiceType value38 = ServiceType._(
    value: '38',
  );

  /// value39
  static final ServiceType value39 = ServiceType._(
    value: '39',
  );

  /// value40
  static final ServiceType value40 = ServiceType._(
    value: '40',
  );

  /// value41
  static final ServiceType value41 = ServiceType._(
    value: '41',
  );

  /// value42
  static final ServiceType value42 = ServiceType._(
    value: '42',
  );

  /// value43
  static final ServiceType value43 = ServiceType._(
    value: '43',
  );

  /// value44
  static final ServiceType value44 = ServiceType._(
    value: '44',
  );

  /// value45
  static final ServiceType value45 = ServiceType._(
    value: '45',
  );

  /// value46
  static final ServiceType value46 = ServiceType._(
    value: '46',
  );

  /// value47
  static final ServiceType value47 = ServiceType._(
    value: '47',
  );

  /// value48
  static final ServiceType value48 = ServiceType._(
    value: '48',
  );

  /// value49
  static final ServiceType value49 = ServiceType._(
    value: '49',
  );

  /// value50
  static final ServiceType value50 = ServiceType._(
    value: '50',
  );

  /// value51
  static final ServiceType value51 = ServiceType._(
    value: '51',
  );

  /// value52
  static final ServiceType value52 = ServiceType._(
    value: '52',
  );

  /// value53
  static final ServiceType value53 = ServiceType._(
    value: '53',
  );

  /// value54
  static final ServiceType value54 = ServiceType._(
    value: '54',
  );

  /// value55
  static final ServiceType value55 = ServiceType._(
    value: '55',
  );

  /// value56
  static final ServiceType value56 = ServiceType._(
    value: '56',
  );

  /// value57
  static final ServiceType value57 = ServiceType._(
    value: '57',
  );

  /// value58
  static final ServiceType value58 = ServiceType._(
    value: '58',
  );

  /// value59
  static final ServiceType value59 = ServiceType._(
    value: '59',
  );

  /// value60
  static final ServiceType value60 = ServiceType._(
    value: '60',
  );

  /// value61
  static final ServiceType value61 = ServiceType._(
    value: '61',
  );

  /// value62
  static final ServiceType value62 = ServiceType._(
    value: '62',
  );

  /// value63
  static final ServiceType value63 = ServiceType._(
    value: '63',
  );

  /// value64
  static final ServiceType value64 = ServiceType._(
    value: '64',
  );

  /// value65
  static final ServiceType value65 = ServiceType._(
    value: '65',
  );

  /// value66
  static final ServiceType value66 = ServiceType._(
    value: '66',
  );

  /// value67
  static final ServiceType value67 = ServiceType._(
    value: '67',
  );

  /// value68
  static final ServiceType value68 = ServiceType._(
    value: '68',
  );

  /// value69
  static final ServiceType value69 = ServiceType._(
    value: '69',
  );

  /// value70
  static final ServiceType value70 = ServiceType._(
    value: '70',
  );

  /// value71
  static final ServiceType value71 = ServiceType._(
    value: '71',
  );

  /// value72
  static final ServiceType value72 = ServiceType._(
    value: '72',
  );

  /// value73
  static final ServiceType value73 = ServiceType._(
    value: '73',
  );

  /// value74
  static final ServiceType value74 = ServiceType._(
    value: '74',
  );

  /// value75
  static final ServiceType value75 = ServiceType._(
    value: '75',
  );

  /// value76
  static final ServiceType value76 = ServiceType._(
    value: '76',
  );

  /// value77
  static final ServiceType value77 = ServiceType._(
    value: '77',
  );

  /// value78
  static final ServiceType value78 = ServiceType._(
    value: '78',
  );

  /// value79
  static final ServiceType value79 = ServiceType._(
    value: '79',
  );

  /// value80
  static final ServiceType value80 = ServiceType._(
    value: '80',
  );

  /// value81
  static final ServiceType value81 = ServiceType._(
    value: '81',
  );

  /// value82
  static final ServiceType value82 = ServiceType._(
    value: '82',
  );

  /// value83
  static final ServiceType value83 = ServiceType._(
    value: '83',
  );

  /// value84
  static final ServiceType value84 = ServiceType._(
    value: '84',
  );

  /// value85
  static final ServiceType value85 = ServiceType._(
    value: '85',
  );

  /// value86
  static final ServiceType value86 = ServiceType._(
    value: '86',
  );

  /// value87
  static final ServiceType value87 = ServiceType._(
    value: '87',
  );

  /// value88
  static final ServiceType value88 = ServiceType._(
    value: '88',
  );

  /// value89
  static final ServiceType value89 = ServiceType._(
    value: '89',
  );

  /// value90
  static final ServiceType value90 = ServiceType._(
    value: '90',
  );

  /// value91
  static final ServiceType value91 = ServiceType._(
    value: '91',
  );

  /// value92
  static final ServiceType value92 = ServiceType._(
    value: '92',
  );

  /// value93
  static final ServiceType value93 = ServiceType._(
    value: '93',
  );

  /// value94
  static final ServiceType value94 = ServiceType._(
    value: '94',
  );

  /// value95
  static final ServiceType value95 = ServiceType._(
    value: '95',
  );

  /// value96
  static final ServiceType value96 = ServiceType._(
    value: '96',
  );

  /// value97
  static final ServiceType value97 = ServiceType._(
    value: '97',
  );

  /// value98
  static final ServiceType value98 = ServiceType._(
    value: '98',
  );

  /// value99
  static final ServiceType value99 = ServiceType._(
    value: '99',
  );

  /// value100
  static final ServiceType value100 = ServiceType._(
    value: '100',
  );

  /// value101
  static final ServiceType value101 = ServiceType._(
    value: '101',
  );

  /// value102
  static final ServiceType value102 = ServiceType._(
    value: '102',
  );

  /// value103
  static final ServiceType value103 = ServiceType._(
    value: '103',
  );

  /// value104
  static final ServiceType value104 = ServiceType._(
    value: '104',
  );

  /// value105
  static final ServiceType value105 = ServiceType._(
    value: '105',
  );

  /// value106
  static final ServiceType value106 = ServiceType._(
    value: '106',
  );

  /// value107
  static final ServiceType value107 = ServiceType._(
    value: '107',
  );

  /// value108
  static final ServiceType value108 = ServiceType._(
    value: '108',
  );

  /// value109
  static final ServiceType value109 = ServiceType._(
    value: '109',
  );

  /// value110
  static final ServiceType value110 = ServiceType._(
    value: '110',
  );

  /// value111
  static final ServiceType value111 = ServiceType._(
    value: '111',
  );

  /// value112
  static final ServiceType value112 = ServiceType._(
    value: '112',
  );

  /// value113
  static final ServiceType value113 = ServiceType._(
    value: '113',
  );

  /// value114
  static final ServiceType value114 = ServiceType._(
    value: '114',
  );

  /// value115
  static final ServiceType value115 = ServiceType._(
    value: '115',
  );

  /// value116
  static final ServiceType value116 = ServiceType._(
    value: '116',
  );

  /// value117
  static final ServiceType value117 = ServiceType._(
    value: '117',
  );

  /// value118
  static final ServiceType value118 = ServiceType._(
    value: '118',
  );

  /// value119
  static final ServiceType value119 = ServiceType._(
    value: '119',
  );

  /// value120
  static final ServiceType value120 = ServiceType._(
    value: '120',
  );

  /// value121
  static final ServiceType value121 = ServiceType._(
    value: '121',
  );

  /// value122
  static final ServiceType value122 = ServiceType._(
    value: '122',
  );

  /// value123
  static final ServiceType value123 = ServiceType._(
    value: '123',
  );

  /// value124
  static final ServiceType value124 = ServiceType._(
    value: '124',
  );

  /// value125
  static final ServiceType value125 = ServiceType._(
    value: '125',
  );

  /// value126
  static final ServiceType value126 = ServiceType._(
    value: '126',
  );

  /// value127
  static final ServiceType value127 = ServiceType._(
    value: '127',
  );

  /// value128
  static final ServiceType value128 = ServiceType._(
    value: '128',
  );

  /// value129
  static final ServiceType value129 = ServiceType._(
    value: '129',
  );

  /// value130
  static final ServiceType value130 = ServiceType._(
    value: '130',
  );

  /// value131
  static final ServiceType value131 = ServiceType._(
    value: '131',
  );

  /// value132
  static final ServiceType value132 = ServiceType._(
    value: '132',
  );

  /// value133
  static final ServiceType value133 = ServiceType._(
    value: '133',
  );

  /// value134
  static final ServiceType value134 = ServiceType._(
    value: '134',
  );

  /// value135
  static final ServiceType value135 = ServiceType._(
    value: '135',
  );

  /// value136
  static final ServiceType value136 = ServiceType._(
    value: '136',
  );

  /// value137
  static final ServiceType value137 = ServiceType._(
    value: '137',
  );

  /// value138
  static final ServiceType value138 = ServiceType._(
    value: '138',
  );

  /// value139
  static final ServiceType value139 = ServiceType._(
    value: '139',
  );

  /// value140
  static final ServiceType value140 = ServiceType._(
    value: '140',
  );

  /// value141
  static final ServiceType value141 = ServiceType._(
    value: '141',
  );

  /// value142
  static final ServiceType value142 = ServiceType._(
    value: '142',
  );

  /// value143
  static final ServiceType value143 = ServiceType._(
    value: '143',
  );

  /// value144
  static final ServiceType value144 = ServiceType._(
    value: '144',
  );

  /// value145
  static final ServiceType value145 = ServiceType._(
    value: '145',
  );

  /// value146
  static final ServiceType value146 = ServiceType._(
    value: '146',
  );

  /// value147
  static final ServiceType value147 = ServiceType._(
    value: '147',
  );

  /// value148
  static final ServiceType value148 = ServiceType._(
    value: '148',
  );

  /// value149
  static final ServiceType value149 = ServiceType._(
    value: '149',
  );

  /// value150
  static final ServiceType value150 = ServiceType._(
    value: '150',
  );

  /// value151
  static final ServiceType value151 = ServiceType._(
    value: '151',
  );

  /// value152
  static final ServiceType value152 = ServiceType._(
    value: '152',
  );

  /// value153
  static final ServiceType value153 = ServiceType._(
    value: '153',
  );

  /// value154
  static final ServiceType value154 = ServiceType._(
    value: '154',
  );

  /// value155
  static final ServiceType value155 = ServiceType._(
    value: '155',
  );

  /// value156
  static final ServiceType value156 = ServiceType._(
    value: '156',
  );

  /// value157
  static final ServiceType value157 = ServiceType._(
    value: '157',
  );

  /// value158
  static final ServiceType value158 = ServiceType._(
    value: '158',
  );

  /// value159
  static final ServiceType value159 = ServiceType._(
    value: '159',
  );

  /// value160
  static final ServiceType value160 = ServiceType._(
    value: '160',
  );

  /// value161
  static final ServiceType value161 = ServiceType._(
    value: '161',
  );

  /// value162
  static final ServiceType value162 = ServiceType._(
    value: '162',
  );

  /// value163
  static final ServiceType value163 = ServiceType._(
    value: '163',
  );

  /// value164
  static final ServiceType value164 = ServiceType._(
    value: '164',
  );

  /// value165
  static final ServiceType value165 = ServiceType._(
    value: '165',
  );

  /// value166
  static final ServiceType value166 = ServiceType._(
    value: '166',
  );

  /// value167
  static final ServiceType value167 = ServiceType._(
    value: '167',
  );

  /// value168
  static final ServiceType value168 = ServiceType._(
    value: '168',
  );

  /// value169
  static final ServiceType value169 = ServiceType._(
    value: '169',
  );

  /// value170
  static final ServiceType value170 = ServiceType._(
    value: '170',
  );

  /// value171
  static final ServiceType value171 = ServiceType._(
    value: '171',
  );

  /// value172
  static final ServiceType value172 = ServiceType._(
    value: '172',
  );

  /// value173
  static final ServiceType value173 = ServiceType._(
    value: '173',
  );

  /// value174
  static final ServiceType value174 = ServiceType._(
    value: '174',
  );

  /// value175
  static final ServiceType value175 = ServiceType._(
    value: '175',
  );

  /// value176
  static final ServiceType value176 = ServiceType._(
    value: '176',
  );

  /// value177
  static final ServiceType value177 = ServiceType._(
    value: '177',
  );

  /// value178
  static final ServiceType value178 = ServiceType._(
    value: '178',
  );

  /// value179
  static final ServiceType value179 = ServiceType._(
    value: '179',
  );

  /// value180
  static final ServiceType value180 = ServiceType._(
    value: '180',
  );

  /// value181
  static final ServiceType value181 = ServiceType._(
    value: '181',
  );

  /// value182
  static final ServiceType value182 = ServiceType._(
    value: '182',
  );

  /// value183
  static final ServiceType value183 = ServiceType._(
    value: '183',
  );

  /// value184
  static final ServiceType value184 = ServiceType._(
    value: '184',
  );

  /// value185
  static final ServiceType value185 = ServiceType._(
    value: '185',
  );

  /// value186
  static final ServiceType value186 = ServiceType._(
    value: '186',
  );

  /// value187
  static final ServiceType value187 = ServiceType._(
    value: '187',
  );

  /// value188
  static final ServiceType value188 = ServiceType._(
    value: '188',
  );

  /// value189
  static final ServiceType value189 = ServiceType._(
    value: '189',
  );

  /// value190
  static final ServiceType value190 = ServiceType._(
    value: '190',
  );

  /// value191
  static final ServiceType value191 = ServiceType._(
    value: '191',
  );

  /// value192
  static final ServiceType value192 = ServiceType._(
    value: '192',
  );

  /// value193
  static final ServiceType value193 = ServiceType._(
    value: '193',
  );

  /// value194
  static final ServiceType value194 = ServiceType._(
    value: '194',
  );

  /// value195
  static final ServiceType value195 = ServiceType._(
    value: '195',
  );

  /// value196
  static final ServiceType value196 = ServiceType._(
    value: '196',
  );

  /// value197
  static final ServiceType value197 = ServiceType._(
    value: '197',
  );

  /// value198
  static final ServiceType value198 = ServiceType._(
    value: '198',
  );

  /// value199
  static final ServiceType value199 = ServiceType._(
    value: '199',
  );

  /// value200
  static final ServiceType value200 = ServiceType._(
    value: '200',
  );

  /// value201
  static final ServiceType value201 = ServiceType._(
    value: '201',
  );

  /// value202
  static final ServiceType value202 = ServiceType._(
    value: '202',
  );

  /// value203
  static final ServiceType value203 = ServiceType._(
    value: '203',
  );

  /// value204
  static final ServiceType value204 = ServiceType._(
    value: '204',
  );

  /// value205
  static final ServiceType value205 = ServiceType._(
    value: '205',
  );

  /// value206
  static final ServiceType value206 = ServiceType._(
    value: '206',
  );

  /// value207
  static final ServiceType value207 = ServiceType._(
    value: '207',
  );

  /// value208
  static final ServiceType value208 = ServiceType._(
    value: '208',
  );

  /// value209
  static final ServiceType value209 = ServiceType._(
    value: '209',
  );

  /// value210
  static final ServiceType value210 = ServiceType._(
    value: '210',
  );

  /// value211
  static final ServiceType value211 = ServiceType._(
    value: '211',
  );

  /// value212
  static final ServiceType value212 = ServiceType._(
    value: '212',
  );

  /// value213
  static final ServiceType value213 = ServiceType._(
    value: '213',
  );

  /// value214
  static final ServiceType value214 = ServiceType._(
    value: '214',
  );

  /// value215
  static final ServiceType value215 = ServiceType._(
    value: '215',
  );

  /// value216
  static final ServiceType value216 = ServiceType._(
    value: '216',
  );

  /// value217
  static final ServiceType value217 = ServiceType._(
    value: '217',
  );

  /// value218
  static final ServiceType value218 = ServiceType._(
    value: '218',
  );

  /// value219
  static final ServiceType value219 = ServiceType._(
    value: '219',
  );

  /// value220
  static final ServiceType value220 = ServiceType._(
    value: '220',
  );

  /// value221
  static final ServiceType value221 = ServiceType._(
    value: '221',
  );

  /// value222
  static final ServiceType value222 = ServiceType._(
    value: '222',
  );

  /// value223
  static final ServiceType value223 = ServiceType._(
    value: '223',
  );

  /// value224
  static final ServiceType value224 = ServiceType._(
    value: '224',
  );

  /// value225
  static final ServiceType value225 = ServiceType._(
    value: '225',
  );

  /// value226
  static final ServiceType value226 = ServiceType._(
    value: '226',
  );

  /// value227
  static final ServiceType value227 = ServiceType._(
    value: '227',
  );

  /// value228
  static final ServiceType value228 = ServiceType._(
    value: '228',
  );

  /// value229
  static final ServiceType value229 = ServiceType._(
    value: '229',
  );

  /// value230
  static final ServiceType value230 = ServiceType._(
    value: '230',
  );

  /// value231
  static final ServiceType value231 = ServiceType._(
    value: '231',
  );

  /// value232
  static final ServiceType value232 = ServiceType._(
    value: '232',
  );

  /// value233
  static final ServiceType value233 = ServiceType._(
    value: '233',
  );

  /// value234
  static final ServiceType value234 = ServiceType._(
    value: '234',
  );

  /// value235
  static final ServiceType value235 = ServiceType._(
    value: '235',
  );

  /// value236
  static final ServiceType value236 = ServiceType._(
    value: '236',
  );

  /// value237
  static final ServiceType value237 = ServiceType._(
    value: '237',
  );

  /// value238
  static final ServiceType value238 = ServiceType._(
    value: '238',
  );

  /// value239
  static final ServiceType value239 = ServiceType._(
    value: '239',
  );

  /// value240
  static final ServiceType value240 = ServiceType._(
    value: '240',
  );

  /// value241
  static final ServiceType value241 = ServiceType._(
    value: '241',
  );

  /// value242
  static final ServiceType value242 = ServiceType._(
    value: '242',
  );

  /// value243
  static final ServiceType value243 = ServiceType._(
    value: '243',
  );

  /// value244
  static final ServiceType value244 = ServiceType._(
    value: '244',
  );

  /// value245
  static final ServiceType value245 = ServiceType._(
    value: '245',
  );

  /// value246
  static final ServiceType value246 = ServiceType._(
    value: '246',
  );

  /// value247
  static final ServiceType value247 = ServiceType._(
    value: '247',
  );

  /// value248
  static final ServiceType value248 = ServiceType._(
    value: '248',
  );

  /// value249
  static final ServiceType value249 = ServiceType._(
    value: '249',
  );

  /// value250
  static final ServiceType value250 = ServiceType._(
    value: '250',
  );

  /// value251
  static final ServiceType value251 = ServiceType._(
    value: '251',
  );

  /// value252
  static final ServiceType value252 = ServiceType._(
    value: '252',
  );

  /// value253
  static final ServiceType value253 = ServiceType._(
    value: '253',
  );

  /// value254
  static final ServiceType value254 = ServiceType._(
    value: '254',
  );

  /// value255
  static final ServiceType value255 = ServiceType._(
    value: '255',
  );

  /// value256
  static final ServiceType value256 = ServiceType._(
    value: '256',
  );

  /// value257
  static final ServiceType value257 = ServiceType._(
    value: '257',
  );

  /// value258
  static final ServiceType value258 = ServiceType._(
    value: '258',
  );

  /// value259
  static final ServiceType value259 = ServiceType._(
    value: '259',
  );

  /// value260
  static final ServiceType value260 = ServiceType._(
    value: '260',
  );

  /// value261
  static final ServiceType value261 = ServiceType._(
    value: '261',
  );

  /// value262
  static final ServiceType value262 = ServiceType._(
    value: '262',
  );

  /// value263
  static final ServiceType value263 = ServiceType._(
    value: '263',
  );

  /// value264
  static final ServiceType value264 = ServiceType._(
    value: '264',
  );

  /// value265
  static final ServiceType value265 = ServiceType._(
    value: '265',
  );

  /// value266
  static final ServiceType value266 = ServiceType._(
    value: '266',
  );

  /// value267
  static final ServiceType value267 = ServiceType._(
    value: '267',
  );

  /// value268
  static final ServiceType value268 = ServiceType._(
    value: '268',
  );

  /// value269
  static final ServiceType value269 = ServiceType._(
    value: '269',
  );

  /// value270
  static final ServiceType value270 = ServiceType._(
    value: '270',
  );

  /// value271
  static final ServiceType value271 = ServiceType._(
    value: '271',
  );

  /// value272
  static final ServiceType value272 = ServiceType._(
    value: '272',
  );

  /// value273
  static final ServiceType value273 = ServiceType._(
    value: '273',
  );

  /// value274
  static final ServiceType value274 = ServiceType._(
    value: '274',
  );

  /// value275
  static final ServiceType value275 = ServiceType._(
    value: '275',
  );

  /// value276
  static final ServiceType value276 = ServiceType._(
    value: '276',
  );

  /// value277
  static final ServiceType value277 = ServiceType._(
    value: '277',
  );

  /// value278
  static final ServiceType value278 = ServiceType._(
    value: '278',
  );

  /// value279
  static final ServiceType value279 = ServiceType._(
    value: '279',
  );

  /// value280
  static final ServiceType value280 = ServiceType._(
    value: '280',
  );

  /// value281
  static final ServiceType value281 = ServiceType._(
    value: '281',
  );

  /// value282
  static final ServiceType value282 = ServiceType._(
    value: '282',
  );

  /// value283
  static final ServiceType value283 = ServiceType._(
    value: '283',
  );

  /// value284
  static final ServiceType value284 = ServiceType._(
    value: '284',
  );

  /// value285
  static final ServiceType value285 = ServiceType._(
    value: '285',
  );

  /// value286
  static final ServiceType value286 = ServiceType._(
    value: '286',
  );

  /// value287
  static final ServiceType value287 = ServiceType._(
    value: '287',
  );

  /// value288
  static final ServiceType value288 = ServiceType._(
    value: '288',
  );

  /// value289
  static final ServiceType value289 = ServiceType._(
    value: '289',
  );

  /// value290
  static final ServiceType value290 = ServiceType._(
    value: '290',
  );

  /// value291
  static final ServiceType value291 = ServiceType._(
    value: '291',
  );

  /// value292
  static final ServiceType value292 = ServiceType._(
    value: '292',
  );

  /// value293
  static final ServiceType value293 = ServiceType._(
    value: '293',
  );

  /// value294
  static final ServiceType value294 = ServiceType._(
    value: '294',
  );

  /// value295
  static final ServiceType value295 = ServiceType._(
    value: '295',
  );

  /// value296
  static final ServiceType value296 = ServiceType._(
    value: '296',
  );

  /// value297
  static final ServiceType value297 = ServiceType._(
    value: '297',
  );

  /// value298
  static final ServiceType value298 = ServiceType._(
    value: '298',
  );

  /// value299
  static final ServiceType value299 = ServiceType._(
    value: '299',
  );

  /// value300
  static final ServiceType value300 = ServiceType._(
    value: '300',
  );

  /// value301
  static final ServiceType value301 = ServiceType._(
    value: '301',
  );

  /// value302
  static final ServiceType value302 = ServiceType._(
    value: '302',
  );

  /// value303
  static final ServiceType value303 = ServiceType._(
    value: '303',
  );

  /// value304
  static final ServiceType value304 = ServiceType._(
    value: '304',
  );

  /// value305
  static final ServiceType value305 = ServiceType._(
    value: '305',
  );

  /// value306
  static final ServiceType value306 = ServiceType._(
    value: '306',
  );

  /// value307
  static final ServiceType value307 = ServiceType._(
    value: '307',
  );

  /// value308
  static final ServiceType value308 = ServiceType._(
    value: '308',
  );

  /// value309
  static final ServiceType value309 = ServiceType._(
    value: '309',
  );

  /// value310
  static final ServiceType value310 = ServiceType._(
    value: '310',
  );

  /// value311
  static final ServiceType value311 = ServiceType._(
    value: '311',
  );

  /// value312
  static final ServiceType value312 = ServiceType._(
    value: '312',
  );

  /// value313
  static final ServiceType value313 = ServiceType._(
    value: '313',
  );

  /// value314
  static final ServiceType value314 = ServiceType._(
    value: '314',
  );

  /// value315
  static final ServiceType value315 = ServiceType._(
    value: '315',
  );

  /// value316
  static final ServiceType value316 = ServiceType._(
    value: '316',
  );

  /// value317
  static final ServiceType value317 = ServiceType._(
    value: '317',
  );

  /// value318
  static final ServiceType value318 = ServiceType._(
    value: '318',
  );

  /// value319
  static final ServiceType value319 = ServiceType._(
    value: '319',
  );

  /// value320
  static final ServiceType value320 = ServiceType._(
    value: '320',
  );

  /// value321
  static final ServiceType value321 = ServiceType._(
    value: '321',
  );

  /// value322
  static final ServiceType value322 = ServiceType._(
    value: '322',
  );

  /// value323
  static final ServiceType value323 = ServiceType._(
    value: '323',
  );

  /// value324
  static final ServiceType value324 = ServiceType._(
    value: '324',
  );

  /// value325
  static final ServiceType value325 = ServiceType._(
    value: '325',
  );

  /// value326
  static final ServiceType value326 = ServiceType._(
    value: '326',
  );

  /// value327
  static final ServiceType value327 = ServiceType._(
    value: '327',
  );

  /// value328
  static final ServiceType value328 = ServiceType._(
    value: '328',
  );

  /// value330
  static final ServiceType value330 = ServiceType._(
    value: '330',
  );

  /// value331
  static final ServiceType value331 = ServiceType._(
    value: '331',
  );

  /// value332
  static final ServiceType value332 = ServiceType._(
    value: '332',
  );

  /// value333
  static final ServiceType value333 = ServiceType._(
    value: '333',
  );

  /// value334
  static final ServiceType value334 = ServiceType._(
    value: '334',
  );

  /// value335
  static final ServiceType value335 = ServiceType._(
    value: '335',
  );

  /// value336
  static final ServiceType value336 = ServiceType._(
    value: '336',
  );

  /// value337
  static final ServiceType value337 = ServiceType._(
    value: '337',
  );

  /// value338
  static final ServiceType value338 = ServiceType._(
    value: '338',
  );

  /// value339
  static final ServiceType value339 = ServiceType._(
    value: '339',
  );

  /// value340
  static final ServiceType value340 = ServiceType._(
    value: '340',
  );

  /// value341
  static final ServiceType value341 = ServiceType._(
    value: '341',
  );

  /// value342
  static final ServiceType value342 = ServiceType._(
    value: '342',
  );

  /// value343
  static final ServiceType value343 = ServiceType._(
    value: '343',
  );

  /// value344
  static final ServiceType value344 = ServiceType._(
    value: '344',
  );

  /// value345
  static final ServiceType value345 = ServiceType._(
    value: '345',
  );

  /// value346
  static final ServiceType value346 = ServiceType._(
    value: '346',
  );

  /// value347
  static final ServiceType value347 = ServiceType._(
    value: '347',
  );

  /// value348
  static final ServiceType value348 = ServiceType._(
    value: '348',
  );

  /// value349
  static final ServiceType value349 = ServiceType._(
    value: '349',
  );

  /// value350
  static final ServiceType value350 = ServiceType._(
    value: '350',
  );

  /// value351
  static final ServiceType value351 = ServiceType._(
    value: '351',
  );

  /// value352
  static final ServiceType value352 = ServiceType._(
    value: '352',
  );

  /// value353
  static final ServiceType value353 = ServiceType._(
    value: '353',
  );

  /// value354
  static final ServiceType value354 = ServiceType._(
    value: '354',
  );

  /// value355
  static final ServiceType value355 = ServiceType._(
    value: '355',
  );

  /// value356
  static final ServiceType value356 = ServiceType._(
    value: '356',
  );

  /// value357
  static final ServiceType value357 = ServiceType._(
    value: '357',
  );

  /// value358
  static final ServiceType value358 = ServiceType._(
    value: '358',
  );

  /// value359
  static final ServiceType value359 = ServiceType._(
    value: '359',
  );

  /// value360
  static final ServiceType value360 = ServiceType._(
    value: '360',
  );

  /// value361
  static final ServiceType value361 = ServiceType._(
    value: '361',
  );

  /// value362
  static final ServiceType value362 = ServiceType._(
    value: '362',
  );

  /// value364
  static final ServiceType value364 = ServiceType._(
    value: '364',
  );

  /// value365
  static final ServiceType value365 = ServiceType._(
    value: '365',
  );

  /// value366
  static final ServiceType value366 = ServiceType._(
    value: '366',
  );

  /// value367
  static final ServiceType value367 = ServiceType._(
    value: '367',
  );

  /// value368
  static final ServiceType value368 = ServiceType._(
    value: '368',
  );

  /// value369
  static final ServiceType value369 = ServiceType._(
    value: '369',
  );

  /// value370
  static final ServiceType value370 = ServiceType._(
    value: '370',
  );

  /// value371
  static final ServiceType value371 = ServiceType._(
    value: '371',
  );

  /// value372
  static final ServiceType value372 = ServiceType._(
    value: '372',
  );

  /// value373
  static final ServiceType value373 = ServiceType._(
    value: '373',
  );

  /// value374
  static final ServiceType value374 = ServiceType._(
    value: '374',
  );

  /// value375
  static final ServiceType value375 = ServiceType._(
    value: '375',
  );

  /// value376
  static final ServiceType value376 = ServiceType._(
    value: '376',
  );

  /// value377
  static final ServiceType value377 = ServiceType._(
    value: '377',
  );

  /// value378
  static final ServiceType value378 = ServiceType._(
    value: '378',
  );

  /// value379
  static final ServiceType value379 = ServiceType._(
    value: '379',
  );

  /// value380
  static final ServiceType value380 = ServiceType._(
    value: '380',
  );

  /// value381
  static final ServiceType value381 = ServiceType._(
    value: '381',
  );

  /// value382
  static final ServiceType value382 = ServiceType._(
    value: '382',
  );

  /// value383
  static final ServiceType value383 = ServiceType._(
    value: '383',
  );

  /// value384
  static final ServiceType value384 = ServiceType._(
    value: '384',
  );

  /// value385
  static final ServiceType value385 = ServiceType._(
    value: '385',
  );

  /// value386
  static final ServiceType value386 = ServiceType._(
    value: '386',
  );

  /// value387
  static final ServiceType value387 = ServiceType._(
    value: '387',
  );

  /// value388
  static final ServiceType value388 = ServiceType._(
    value: '388',
  );

  /// value389
  static final ServiceType value389 = ServiceType._(
    value: '389',
  );

  /// value390
  static final ServiceType value390 = ServiceType._(
    value: '390',
  );

  /// value391
  static final ServiceType value391 = ServiceType._(
    value: '391',
  );

  /// value392
  static final ServiceType value392 = ServiceType._(
    value: '392',
  );

  /// value393
  static final ServiceType value393 = ServiceType._(
    value: '393',
  );

  /// value394
  static final ServiceType value394 = ServiceType._(
    value: '394',
  );

  /// value395
  static final ServiceType value395 = ServiceType._(
    value: '395',
  );

  /// value396
  static final ServiceType value396 = ServiceType._(
    value: '396',
  );

  /// value397
  static final ServiceType value397 = ServiceType._(
    value: '397',
  );

  /// value398
  static final ServiceType value398 = ServiceType._(
    value: '398',
  );

  /// value399
  static final ServiceType value399 = ServiceType._(
    value: '399',
  );

  /// value400
  static final ServiceType value400 = ServiceType._(
    value: '400',
  );

  /// value401
  static final ServiceType value401 = ServiceType._(
    value: '401',
  );

  /// value402
  static final ServiceType value402 = ServiceType._(
    value: '402',
  );

  /// value403
  static final ServiceType value403 = ServiceType._(
    value: '403',
  );

  /// value404
  static final ServiceType value404 = ServiceType._(
    value: '404',
  );

  /// value405
  static final ServiceType value405 = ServiceType._(
    value: '405',
  );

  /// value406
  static final ServiceType value406 = ServiceType._(
    value: '406',
  );

  /// value407
  static final ServiceType value407 = ServiceType._(
    value: '407',
  );

  /// value408
  static final ServiceType value408 = ServiceType._(
    value: '408',
  );

  /// value409
  static final ServiceType value409 = ServiceType._(
    value: '409',
  );

  /// value410
  static final ServiceType value410 = ServiceType._(
    value: '410',
  );

  /// value411
  static final ServiceType value411 = ServiceType._(
    value: '411',
  );

  /// value412
  static final ServiceType value412 = ServiceType._(
    value: '412',
  );

  /// value413
  static final ServiceType value413 = ServiceType._(
    value: '413',
  );

  /// value414
  static final ServiceType value414 = ServiceType._(
    value: '414',
  );

  /// value415
  static final ServiceType value415 = ServiceType._(
    value: '415',
  );

  /// value416
  static final ServiceType value416 = ServiceType._(
    value: '416',
  );

  /// value417
  static final ServiceType value417 = ServiceType._(
    value: '417',
  );

  /// value418
  static final ServiceType value418 = ServiceType._(
    value: '418',
  );

  /// value419
  static final ServiceType value419 = ServiceType._(
    value: '419',
  );

  /// value420
  static final ServiceType value420 = ServiceType._(
    value: '420',
  );

  /// value421
  static final ServiceType value421 = ServiceType._(
    value: '421',
  );

  /// value422
  static final ServiceType value422 = ServiceType._(
    value: '422',
  );

  /// value423
  static final ServiceType value423 = ServiceType._(
    value: '423',
  );

  /// value424
  static final ServiceType value424 = ServiceType._(
    value: '424',
  );

  /// value425
  static final ServiceType value425 = ServiceType._(
    value: '425',
  );

  /// value426
  static final ServiceType value426 = ServiceType._(
    value: '426',
  );

  /// value427
  static final ServiceType value427 = ServiceType._(
    value: '427',
  );

  /// value428
  static final ServiceType value428 = ServiceType._(
    value: '428',
  );

  /// value429
  static final ServiceType value429 = ServiceType._(
    value: '429',
  );

  /// value430
  static final ServiceType value430 = ServiceType._(
    value: '430',
  );

  /// value431
  static final ServiceType value431 = ServiceType._(
    value: '431',
  );

  /// value432
  static final ServiceType value432 = ServiceType._(
    value: '432',
  );

  /// value433
  static final ServiceType value433 = ServiceType._(
    value: '433',
  );

  /// value434
  static final ServiceType value434 = ServiceType._(
    value: '434',
  );

  /// value435
  static final ServiceType value435 = ServiceType._(
    value: '435',
  );

  /// value436
  static final ServiceType value436 = ServiceType._(
    value: '436',
  );

  /// value437
  static final ServiceType value437 = ServiceType._(
    value: '437',
  );

  /// value438
  static final ServiceType value438 = ServiceType._(
    value: '438',
  );

  /// value439
  static final ServiceType value439 = ServiceType._(
    value: '439',
  );

  /// value440
  static final ServiceType value440 = ServiceType._(
    value: '440',
  );

  /// value441
  static final ServiceType value441 = ServiceType._(
    value: '441',
  );

  /// value442
  static final ServiceType value442 = ServiceType._(
    value: '442',
  );

  /// value443
  static final ServiceType value443 = ServiceType._(
    value: '443',
  );

  /// value444
  static final ServiceType value444 = ServiceType._(
    value: '444',
  );

  /// value445
  static final ServiceType value445 = ServiceType._(
    value: '445',
  );

  /// value446
  static final ServiceType value446 = ServiceType._(
    value: '446',
  );

  /// value447
  static final ServiceType value447 = ServiceType._(
    value: '447',
  );

  /// value448
  static final ServiceType value448 = ServiceType._(
    value: '448',
  );

  /// value449
  static final ServiceType value449 = ServiceType._(
    value: '449',
  );

  /// value450
  static final ServiceType value450 = ServiceType._(
    value: '450',
  );

  /// value451
  static final ServiceType value451 = ServiceType._(
    value: '451',
  );

  /// value452
  static final ServiceType value452 = ServiceType._(
    value: '452',
  );

  /// value453
  static final ServiceType value453 = ServiceType._(
    value: '453',
  );

  /// value454
  static final ServiceType value454 = ServiceType._(
    value: '454',
  );

  /// value455
  static final ServiceType value455 = ServiceType._(
    value: '455',
  );

  /// value456
  static final ServiceType value456 = ServiceType._(
    value: '456',
  );

  /// value457
  static final ServiceType value457 = ServiceType._(
    value: '457',
  );

  /// value458
  static final ServiceType value458 = ServiceType._(
    value: '458',
  );

  /// value459
  static final ServiceType value459 = ServiceType._(
    value: '459',
  );

  /// value460
  static final ServiceType value460 = ServiceType._(
    value: '460',
  );

  /// value461
  static final ServiceType value461 = ServiceType._(
    value: '461',
  );

  /// value462
  static final ServiceType value462 = ServiceType._(
    value: '462',
  );

  /// value463
  static final ServiceType value463 = ServiceType._(
    value: '463',
  );

  /// value464
  static final ServiceType value464 = ServiceType._(
    value: '464',
  );

  /// value465
  static final ServiceType value465 = ServiceType._(
    value: '465',
  );

  /// value466
  static final ServiceType value466 = ServiceType._(
    value: '466',
  );

  /// value467
  static final ServiceType value467 = ServiceType._(
    value: '467',
  );

  /// value468
  static final ServiceType value468 = ServiceType._(
    value: '468',
  );

  /// value469
  static final ServiceType value469 = ServiceType._(
    value: '469',
  );

  /// value470
  static final ServiceType value470 = ServiceType._(
    value: '470',
  );

  /// value471
  static final ServiceType value471 = ServiceType._(
    value: '471',
  );

  /// value472
  static final ServiceType value472 = ServiceType._(
    value: '472',
  );

  /// value473
  static final ServiceType value473 = ServiceType._(
    value: '473',
  );

  /// value474
  static final ServiceType value474 = ServiceType._(
    value: '474',
  );

  /// value475
  static final ServiceType value475 = ServiceType._(
    value: '475',
  );

  /// value476
  static final ServiceType value476 = ServiceType._(
    value: '476',
  );

  /// value477
  static final ServiceType value477 = ServiceType._(
    value: '477',
  );

  /// value478
  static final ServiceType value478 = ServiceType._(
    value: '478',
  );

  /// value479
  static final ServiceType value479 = ServiceType._(
    value: '479',
  );

  /// value480
  static final ServiceType value480 = ServiceType._(
    value: '480',
  );

  /// value481
  static final ServiceType value481 = ServiceType._(
    value: '481',
  );

  /// value482
  static final ServiceType value482 = ServiceType._(
    value: '482',
  );

  /// value483
  static final ServiceType value483 = ServiceType._(
    value: '483',
  );

  /// value484
  static final ServiceType value484 = ServiceType._(
    value: '484',
  );

  /// value485
  static final ServiceType value485 = ServiceType._(
    value: '485',
  );

  /// value486
  static final ServiceType value486 = ServiceType._(
    value: '486',
  );

  /// value488
  static final ServiceType value488 = ServiceType._(
    value: '488',
  );

  /// value489
  static final ServiceType value489 = ServiceType._(
    value: '489',
  );

  /// value490
  static final ServiceType value490 = ServiceType._(
    value: '490',
  );

  /// value491
  static final ServiceType value491 = ServiceType._(
    value: '491',
  );

  /// value492
  static final ServiceType value492 = ServiceType._(
    value: '492',
  );

  /// value493
  static final ServiceType value493 = ServiceType._(
    value: '493',
  );

  /// value494
  static final ServiceType value494 = ServiceType._(
    value: '494',
  );

  /// value495
  static final ServiceType value495 = ServiceType._(
    value: '495',
  );

  /// value496
  static final ServiceType value496 = ServiceType._(
    value: '496',
  );

  /// value497
  static final ServiceType value497 = ServiceType._(
    value: '497',
  );

  /// value498
  static final ServiceType value498 = ServiceType._(
    value: '498',
  );

  /// value500
  static final ServiceType value500 = ServiceType._(
    value: '500',
  );

  /// value501
  static final ServiceType value501 = ServiceType._(
    value: '501',
  );

  /// value502
  static final ServiceType value502 = ServiceType._(
    value: '502',
  );

  /// value503
  static final ServiceType value503 = ServiceType._(
    value: '503',
  );

  /// value504
  static final ServiceType value504 = ServiceType._(
    value: '504',
  );

  /// value505
  static final ServiceType value505 = ServiceType._(
    value: '505',
  );

  /// value506
  static final ServiceType value506 = ServiceType._(
    value: '506',
  );

  /// value507
  static final ServiceType value507 = ServiceType._(
    value: '507',
  );

  /// value508
  static final ServiceType value508 = ServiceType._(
    value: '508',
  );

  /// value509
  static final ServiceType value509 = ServiceType._(
    value: '509',
  );

  /// value510
  static final ServiceType value510 = ServiceType._(
    value: '510',
  );

  /// value513
  static final ServiceType value513 = ServiceType._(
    value: '513',
  );

  /// value514
  static final ServiceType value514 = ServiceType._(
    value: '514',
  );

  /// value530
  static final ServiceType value530 = ServiceType._(
    value: '530',
  );

  /// value531
  static final ServiceType value531 = ServiceType._(
    value: '531',
  );

  /// value532
  static final ServiceType value532 = ServiceType._(
    value: '532',
  );

  /// value533
  static final ServiceType value533 = ServiceType._(
    value: '533',
  );

  /// value534
  static final ServiceType value534 = ServiceType._(
    value: '534',
  );

  /// value535
  static final ServiceType value535 = ServiceType._(
    value: '535',
  );

  /// value536
  static final ServiceType value536 = ServiceType._(
    value: '536',
  );

  /// value537
  static final ServiceType value537 = ServiceType._(
    value: '537',
  );

  /// value538
  static final ServiceType value538 = ServiceType._(
    value: '538',
  );

  /// value539
  static final ServiceType value539 = ServiceType._(
    value: '539',
  );

  /// value540
  static final ServiceType value540 = ServiceType._(
    value: '540',
  );

  /// value541
  static final ServiceType value541 = ServiceType._(
    value: '541',
  );

  /// value542
  static final ServiceType value542 = ServiceType._(
    value: '542',
  );

  /// value543
  static final ServiceType value543 = ServiceType._(
    value: '543',
  );

  /// value544
  static final ServiceType value544 = ServiceType._(
    value: '544',
  );

  /// value545
  static final ServiceType value545 = ServiceType._(
    value: '545',
  );

  /// value546
  static final ServiceType value546 = ServiceType._(
    value: '546',
  );

  /// value547
  static final ServiceType value547 = ServiceType._(
    value: '547',
  );

  /// value548
  static final ServiceType value548 = ServiceType._(
    value: '548',
  );

  /// value550
  static final ServiceType value550 = ServiceType._(
    value: '550',
  );

  /// value551
  static final ServiceType value551 = ServiceType._(
    value: '551',
  );

  /// value552
  static final ServiceType value552 = ServiceType._(
    value: '552',
  );

  /// value553
  static final ServiceType value553 = ServiceType._(
    value: '553',
  );

  /// value554
  static final ServiceType value554 = ServiceType._(
    value: '554',
  );

  /// value555
  static final ServiceType value555 = ServiceType._(
    value: '555',
  );

  /// value556
  static final ServiceType value556 = ServiceType._(
    value: '556',
  );

  /// value557
  static final ServiceType value557 = ServiceType._(
    value: '557',
  );

  /// value558
  static final ServiceType value558 = ServiceType._(
    value: '558',
  );

  /// value559
  static final ServiceType value559 = ServiceType._(
    value: '559',
  );

  /// value560
  static final ServiceType value560 = ServiceType._(
    value: '560',
  );

  /// value561
  static final ServiceType value561 = ServiceType._(
    value: '561',
  );

  /// value562
  static final ServiceType value562 = ServiceType._(
    value: '562',
  );

  /// value563
  static final ServiceType value563 = ServiceType._(
    value: '563',
  );

  /// value564
  static final ServiceType value564 = ServiceType._(
    value: '564',
  );

  /// value565
  static final ServiceType value565 = ServiceType._(
    value: '565',
  );

  /// value566
  static final ServiceType value566 = ServiceType._(
    value: '566',
  );

  /// value567
  static final ServiceType value567 = ServiceType._(
    value: '567',
  );

  /// value568
  static final ServiceType value568 = ServiceType._(
    value: '568',
  );

  /// value569
  static final ServiceType value569 = ServiceType._(
    value: '569',
  );

  /// value570
  static final ServiceType value570 = ServiceType._(
    value: '570',
  );

  /// value571
  static final ServiceType value571 = ServiceType._(
    value: '571',
  );

  /// value572
  static final ServiceType value572 = ServiceType._(
    value: '572',
  );

  /// value573
  static final ServiceType value573 = ServiceType._(
    value: '573',
  );

  /// value574
  static final ServiceType value574 = ServiceType._(
    value: '574',
  );

  /// value575
  static final ServiceType value575 = ServiceType._(
    value: '575',
  );

  /// value576
  static final ServiceType value576 = ServiceType._(
    value: '576',
  );

  /// value577
  static final ServiceType value577 = ServiceType._(
    value: '577',
  );

  /// value580
  static final ServiceType value580 = ServiceType._(
    value: '580',
  );

  /// value581
  static final ServiceType value581 = ServiceType._(
    value: '581',
  );

  /// value582
  static final ServiceType value582 = ServiceType._(
    value: '582',
  );

  /// value583
  static final ServiceType value583 = ServiceType._(
    value: '583',
  );

  /// value584
  static final ServiceType value584 = ServiceType._(
    value: '584',
  );

  /// value585
  static final ServiceType value585 = ServiceType._(
    value: '585',
  );

  /// value589
  static final ServiceType value589 = ServiceType._(
    value: '589',
  );

  /// value590
  static final ServiceType value590 = ServiceType._(
    value: '590',
  );

  /// value591
  static final ServiceType value591 = ServiceType._(
    value: '591',
  );

  /// value593
  static final ServiceType value593 = ServiceType._(
    value: '593',
  );

  /// value599
  static final ServiceType value599 = ServiceType._(
    value: '599',
  );

  /// value600
  static final ServiceType value600 = ServiceType._(
    value: '600',
  );

  /// value601
  static final ServiceType value601 = ServiceType._(
    value: '601',
  );

  /// value602
  static final ServiceType value602 = ServiceType._(
    value: '602',
  );

  /// value603
  static final ServiceType value603 = ServiceType._(
    value: '603',
  );

  /// value604
  static final ServiceType value604 = ServiceType._(
    value: '604',
  );

  /// value605
  static final ServiceType value605 = ServiceType._(
    value: '605',
  );

  /// value606
  static final ServiceType value606 = ServiceType._(
    value: '606',
  );

  /// value607
  static final ServiceType value607 = ServiceType._(
    value: '607',
  );

  /// value608
  static final ServiceType value608 = ServiceType._(
    value: '608',
  );

  /// value609
  static final ServiceType value609 = ServiceType._(
    value: '609',
  );

  /// value610
  static final ServiceType value610 = ServiceType._(
    value: '610',
  );

  /// value611
  static final ServiceType value611 = ServiceType._(
    value: '611',
  );

  /// value612
  static final ServiceType value612 = ServiceType._(
    value: '612',
  );

  /// value613
  static final ServiceType value613 = ServiceType._(
    value: '613',
  );

  /// value614
  static final ServiceType value614 = ServiceType._(
    value: '614',
  );

  /// value615
  static final ServiceType value615 = ServiceType._(
    value: '615',
  );

  /// value616
  static final ServiceType value616 = ServiceType._(
    value: '616',
  );

  /// value617
  static final ServiceType value617 = ServiceType._(
    value: '617',
  );

  /// value618
  static final ServiceType value618 = ServiceType._(
    value: '618',
  );

  /// value619
  static final ServiceType value619 = ServiceType._(
    value: '619',
  );

  /// value620
  static final ServiceType value620 = ServiceType._(
    value: '620',
  );

  /// value621
  static final ServiceType value621 = ServiceType._(
    value: '621',
  );

  /// value622
  static final ServiceType value622 = ServiceType._(
    value: '622',
  );

  /// value623
  static final ServiceType value623 = ServiceType._(
    value: '623',
  );

  /// value624
  static final ServiceType value624 = ServiceType._(
    value: '624',
  );

  /// value625
  static final ServiceType value625 = ServiceType._(
    value: '625',
  );

  /// value626
  static final ServiceType value626 = ServiceType._(
    value: '626',
  );

  /// value627
  static final ServiceType value627 = ServiceType._(
    value: '627',
  );

  /// value628
  static final ServiceType value628 = ServiceType._(
    value: '628',
  );

  /// value629
  static final ServiceType value629 = ServiceType._(
    value: '629',
  );

  /// For instances where an Element is present but not value

  static final ServiceType elementOnly = ServiceType._(value: '');

  /// List of all enum-like values
  static final List<ServiceType> values = [
    value1,
    value2,
    value3,
    value4,
    value5,
    value6,
    value7,
    value8,
    value9,
    value10,
    value11,
    value12,
    value13,
    value14,
    value15,
    value16,
    value17,
    value18,
    value19,
    value20,
    value21,
    value22,
    value23,
    value24,
    value25,
    value26,
    value27,
    value28,
    value29,
    value30,
    value31,
    value32,
    value33,
    value34,
    value35,
    value36,
    value37,
    value38,
    value39,
    value40,
    value41,
    value42,
    value43,
    value44,
    value45,
    value46,
    value47,
    value48,
    value49,
    value50,
    value51,
    value52,
    value53,
    value54,
    value55,
    value56,
    value57,
    value58,
    value59,
    value60,
    value61,
    value62,
    value63,
    value64,
    value65,
    value66,
    value67,
    value68,
    value69,
    value70,
    value71,
    value72,
    value73,
    value74,
    value75,
    value76,
    value77,
    value78,
    value79,
    value80,
    value81,
    value82,
    value83,
    value84,
    value85,
    value86,
    value87,
    value88,
    value89,
    value90,
    value91,
    value92,
    value93,
    value94,
    value95,
    value96,
    value97,
    value98,
    value99,
    value100,
    value101,
    value102,
    value103,
    value104,
    value105,
    value106,
    value107,
    value108,
    value109,
    value110,
    value111,
    value112,
    value113,
    value114,
    value115,
    value116,
    value117,
    value118,
    value119,
    value120,
    value121,
    value122,
    value123,
    value124,
    value125,
    value126,
    value127,
    value128,
    value129,
    value130,
    value131,
    value132,
    value133,
    value134,
    value135,
    value136,
    value137,
    value138,
    value139,
    value140,
    value141,
    value142,
    value143,
    value144,
    value145,
    value146,
    value147,
    value148,
    value149,
    value150,
    value151,
    value152,
    value153,
    value154,
    value155,
    value156,
    value157,
    value158,
    value159,
    value160,
    value161,
    value162,
    value163,
    value164,
    value165,
    value166,
    value167,
    value168,
    value169,
    value170,
    value171,
    value172,
    value173,
    value174,
    value175,
    value176,
    value177,
    value178,
    value179,
    value180,
    value181,
    value182,
    value183,
    value184,
    value185,
    value186,
    value187,
    value188,
    value189,
    value190,
    value191,
    value192,
    value193,
    value194,
    value195,
    value196,
    value197,
    value198,
    value199,
    value200,
    value201,
    value202,
    value203,
    value204,
    value205,
    value206,
    value207,
    value208,
    value209,
    value210,
    value211,
    value212,
    value213,
    value214,
    value215,
    value216,
    value217,
    value218,
    value219,
    value220,
    value221,
    value222,
    value223,
    value224,
    value225,
    value226,
    value227,
    value228,
    value229,
    value230,
    value231,
    value232,
    value233,
    value234,
    value235,
    value236,
    value237,
    value238,
    value239,
    value240,
    value241,
    value242,
    value243,
    value244,
    value245,
    value246,
    value247,
    value248,
    value249,
    value250,
    value251,
    value252,
    value253,
    value254,
    value255,
    value256,
    value257,
    value258,
    value259,
    value260,
    value261,
    value262,
    value263,
    value264,
    value265,
    value266,
    value267,
    value268,
    value269,
    value270,
    value271,
    value272,
    value273,
    value274,
    value275,
    value276,
    value277,
    value278,
    value279,
    value280,
    value281,
    value282,
    value283,
    value284,
    value285,
    value286,
    value287,
    value288,
    value289,
    value290,
    value291,
    value292,
    value293,
    value294,
    value295,
    value296,
    value297,
    value298,
    value299,
    value300,
    value301,
    value302,
    value303,
    value304,
    value305,
    value306,
    value307,
    value308,
    value309,
    value310,
    value311,
    value312,
    value313,
    value314,
    value315,
    value316,
    value317,
    value318,
    value319,
    value320,
    value321,
    value322,
    value323,
    value324,
    value325,
    value326,
    value327,
    value328,
    value330,
    value331,
    value332,
    value333,
    value334,
    value335,
    value336,
    value337,
    value338,
    value339,
    value340,
    value341,
    value342,
    value343,
    value344,
    value345,
    value346,
    value347,
    value348,
    value349,
    value350,
    value351,
    value352,
    value353,
    value354,
    value355,
    value356,
    value357,
    value358,
    value359,
    value360,
    value361,
    value362,
    value364,
    value365,
    value366,
    value367,
    value368,
    value369,
    value370,
    value371,
    value372,
    value373,
    value374,
    value375,
    value376,
    value377,
    value378,
    value379,
    value380,
    value381,
    value382,
    value383,
    value384,
    value385,
    value386,
    value387,
    value388,
    value389,
    value390,
    value391,
    value392,
    value393,
    value394,
    value395,
    value396,
    value397,
    value398,
    value399,
    value400,
    value401,
    value402,
    value403,
    value404,
    value405,
    value406,
    value407,
    value408,
    value409,
    value410,
    value411,
    value412,
    value413,
    value414,
    value415,
    value416,
    value417,
    value418,
    value419,
    value420,
    value421,
    value422,
    value423,
    value424,
    value425,
    value426,
    value427,
    value428,
    value429,
    value430,
    value431,
    value432,
    value433,
    value434,
    value435,
    value436,
    value437,
    value438,
    value439,
    value440,
    value441,
    value442,
    value443,
    value444,
    value445,
    value446,
    value447,
    value448,
    value449,
    value450,
    value451,
    value452,
    value453,
    value454,
    value455,
    value456,
    value457,
    value458,
    value459,
    value460,
    value461,
    value462,
    value463,
    value464,
    value465,
    value466,
    value467,
    value468,
    value469,
    value470,
    value471,
    value472,
    value473,
    value474,
    value475,
    value476,
    value477,
    value478,
    value479,
    value480,
    value481,
    value482,
    value483,
    value484,
    value485,
    value486,
    value488,
    value489,
    value490,
    value491,
    value492,
    value493,
    value494,
    value495,
    value496,
    value497,
    value498,
    value500,
    value501,
    value502,
    value503,
    value504,
    value505,
    value506,
    value507,
    value508,
    value509,
    value510,
    value513,
    value514,
    value530,
    value531,
    value532,
    value533,
    value534,
    value535,
    value536,
    value537,
    value538,
    value539,
    value540,
    value541,
    value542,
    value543,
    value544,
    value545,
    value546,
    value547,
    value548,
    value550,
    value551,
    value552,
    value553,
    value554,
    value555,
    value556,
    value557,
    value558,
    value559,
    value560,
    value561,
    value562,
    value563,
    value564,
    value565,
    value566,
    value567,
    value568,
    value569,
    value570,
    value571,
    value572,
    value573,
    value574,
    value575,
    value576,
    value577,
    value580,
    value581,
    value582,
    value583,
    value584,
    value585,
    value589,
    value590,
    value591,
    value593,
    value599,
    value600,
    value601,
    value602,
    value603,
    value604,
    value605,
    value606,
    value607,
    value608,
    value609,
    value610,
    value611,
    value612,
    value613,
    value614,
    value615,
    value616,
    value617,
    value618,
    value619,
    value620,
    value621,
    value622,
    value623,
    value624,
    value625,
    value626,
    value627,
    value628,
    value629,
  ];

  /// Clones the current instance
  @override
  ServiceType clone() => ServiceType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ServiceType withElement(Element? newElement) {
    return ServiceType._(value: value, element: newElement);
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
  ServiceType copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ServiceType._(
      value: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
