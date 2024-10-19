// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set defines an example set of codes of service-types.
@collection
class ServiceType {
  /// Constructor for internal use (like enum)
  ServiceType({this.fhirCode, this.element})
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

  /// ServiceType values
  /// value1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value1 = ServiceType(
    fhirCode: '1',
  );

  /// value2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value2 = ServiceType(
    fhirCode: '2',
  );

  /// value3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value3 = ServiceType(
    fhirCode: '3',
  );

  /// value4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value4 = ServiceType(
    fhirCode: '4',
  );

  /// value5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value5 = ServiceType(
    fhirCode: '5',
  );

  /// value6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value6 = ServiceType(
    fhirCode: '6',
  );

  /// value7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value7 = ServiceType(
    fhirCode: '7',
  );

  /// value8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value8 = ServiceType(
    fhirCode: '8',
  );

  /// value9
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value9 = ServiceType(
    fhirCode: '9',
  );

  /// value10
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value10 = ServiceType(
    fhirCode: '10',
  );

  /// value11
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value11 = ServiceType(
    fhirCode: '11',
  );

  /// value12
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value12 = ServiceType(
    fhirCode: '12',
  );

  /// value13
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value13 = ServiceType(
    fhirCode: '13',
  );

  /// value14
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value14 = ServiceType(
    fhirCode: '14',
  );

  /// value15
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value15 = ServiceType(
    fhirCode: '15',
  );

  /// value16
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value16 = ServiceType(
    fhirCode: '16',
  );

  /// value17
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value17 = ServiceType(
    fhirCode: '17',
  );

  /// value18
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value18 = ServiceType(
    fhirCode: '18',
  );

  /// value19
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value19 = ServiceType(
    fhirCode: '19',
  );

  /// value20
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value20 = ServiceType(
    fhirCode: '20',
  );

  /// value21
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value21 = ServiceType(
    fhirCode: '21',
  );

  /// value22
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value22 = ServiceType(
    fhirCode: '22',
  );

  /// value23
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value23 = ServiceType(
    fhirCode: '23',
  );

  /// value24
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value24 = ServiceType(
    fhirCode: '24',
  );

  /// value25
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value25 = ServiceType(
    fhirCode: '25',
  );

  /// value26
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value26 = ServiceType(
    fhirCode: '26',
  );

  /// value27
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value27 = ServiceType(
    fhirCode: '27',
  );

  /// value28
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value28 = ServiceType(
    fhirCode: '28',
  );

  /// value29
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value29 = ServiceType(
    fhirCode: '29',
  );

  /// value30
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value30 = ServiceType(
    fhirCode: '30',
  );

  /// value31
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value31 = ServiceType(
    fhirCode: '31',
  );

  /// value32
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value32 = ServiceType(
    fhirCode: '32',
  );

  /// value33
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value33 = ServiceType(
    fhirCode: '33',
  );

  /// value34
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value34 = ServiceType(
    fhirCode: '34',
  );

  /// value35
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value35 = ServiceType(
    fhirCode: '35',
  );

  /// value36
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value36 = ServiceType(
    fhirCode: '36',
  );

  /// value37
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value37 = ServiceType(
    fhirCode: '37',
  );

  /// value38
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value38 = ServiceType(
    fhirCode: '38',
  );

  /// value39
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value39 = ServiceType(
    fhirCode: '39',
  );

  /// value40
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value40 = ServiceType(
    fhirCode: '40',
  );

  /// value41
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value41 = ServiceType(
    fhirCode: '41',
  );

  /// value42
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value42 = ServiceType(
    fhirCode: '42',
  );

  /// value43
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value43 = ServiceType(
    fhirCode: '43',
  );

  /// value44
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value44 = ServiceType(
    fhirCode: '44',
  );

  /// value45
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value45 = ServiceType(
    fhirCode: '45',
  );

  /// value46
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value46 = ServiceType(
    fhirCode: '46',
  );

  /// value47
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value47 = ServiceType(
    fhirCode: '47',
  );

  /// value48
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value48 = ServiceType(
    fhirCode: '48',
  );

  /// value49
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value49 = ServiceType(
    fhirCode: '49',
  );

  /// value50
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value50 = ServiceType(
    fhirCode: '50',
  );

  /// value51
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value51 = ServiceType(
    fhirCode: '51',
  );

  /// value52
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value52 = ServiceType(
    fhirCode: '52',
  );

  /// value53
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value53 = ServiceType(
    fhirCode: '53',
  );

  /// value54
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value54 = ServiceType(
    fhirCode: '54',
  );

  /// value55
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value55 = ServiceType(
    fhirCode: '55',
  );

  /// value56
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value56 = ServiceType(
    fhirCode: '56',
  );

  /// value57
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value57 = ServiceType(
    fhirCode: '57',
  );

  /// value58
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value58 = ServiceType(
    fhirCode: '58',
  );

  /// value59
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value59 = ServiceType(
    fhirCode: '59',
  );

  /// value60
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value60 = ServiceType(
    fhirCode: '60',
  );

  /// value61
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value61 = ServiceType(
    fhirCode: '61',
  );

  /// value62
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value62 = ServiceType(
    fhirCode: '62',
  );

  /// value63
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value63 = ServiceType(
    fhirCode: '63',
  );

  /// value64
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value64 = ServiceType(
    fhirCode: '64',
  );

  /// value65
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value65 = ServiceType(
    fhirCode: '65',
  );

  /// value66
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value66 = ServiceType(
    fhirCode: '66',
  );

  /// value67
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value67 = ServiceType(
    fhirCode: '67',
  );

  /// value68
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value68 = ServiceType(
    fhirCode: '68',
  );

  /// value69
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value69 = ServiceType(
    fhirCode: '69',
  );

  /// value70
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value70 = ServiceType(
    fhirCode: '70',
  );

  /// value71
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value71 = ServiceType(
    fhirCode: '71',
  );

  /// value72
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value72 = ServiceType(
    fhirCode: '72',
  );

  /// value73
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value73 = ServiceType(
    fhirCode: '73',
  );

  /// value74
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value74 = ServiceType(
    fhirCode: '74',
  );

  /// value75
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value75 = ServiceType(
    fhirCode: '75',
  );

  /// value76
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value76 = ServiceType(
    fhirCode: '76',
  );

  /// value77
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value77 = ServiceType(
    fhirCode: '77',
  );

  /// value78
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value78 = ServiceType(
    fhirCode: '78',
  );

  /// value79
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value79 = ServiceType(
    fhirCode: '79',
  );

  /// value80
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value80 = ServiceType(
    fhirCode: '80',
  );

  /// value81
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value81 = ServiceType(
    fhirCode: '81',
  );

  /// value82
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value82 = ServiceType(
    fhirCode: '82',
  );

  /// value83
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value83 = ServiceType(
    fhirCode: '83',
  );

  /// value84
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value84 = ServiceType(
    fhirCode: '84',
  );

  /// value85
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value85 = ServiceType(
    fhirCode: '85',
  );

  /// value86
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value86 = ServiceType(
    fhirCode: '86',
  );

  /// value87
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value87 = ServiceType(
    fhirCode: '87',
  );

  /// value88
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value88 = ServiceType(
    fhirCode: '88',
  );

  /// value89
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value89 = ServiceType(
    fhirCode: '89',
  );

  /// value90
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value90 = ServiceType(
    fhirCode: '90',
  );

  /// value91
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value91 = ServiceType(
    fhirCode: '91',
  );

  /// value92
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value92 = ServiceType(
    fhirCode: '92',
  );

  /// value93
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value93 = ServiceType(
    fhirCode: '93',
  );

  /// value94
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value94 = ServiceType(
    fhirCode: '94',
  );

  /// value95
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value95 = ServiceType(
    fhirCode: '95',
  );

  /// value96
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value96 = ServiceType(
    fhirCode: '96',
  );

  /// value97
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value97 = ServiceType(
    fhirCode: '97',
  );

  /// value98
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value98 = ServiceType(
    fhirCode: '98',
  );

  /// value99
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value99 = ServiceType(
    fhirCode: '99',
  );

  /// value100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value100 = ServiceType(
    fhirCode: '100',
  );

  /// value101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value101 = ServiceType(
    fhirCode: '101',
  );

  /// value102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value102 = ServiceType(
    fhirCode: '102',
  );

  /// value103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value103 = ServiceType(
    fhirCode: '103',
  );

  /// value104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value104 = ServiceType(
    fhirCode: '104',
  );

  /// value105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value105 = ServiceType(
    fhirCode: '105',
  );

  /// value106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value106 = ServiceType(
    fhirCode: '106',
  );

  /// value107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value107 = ServiceType(
    fhirCode: '107',
  );

  /// value108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value108 = ServiceType(
    fhirCode: '108',
  );

  /// value109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value109 = ServiceType(
    fhirCode: '109',
  );

  /// value110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value110 = ServiceType(
    fhirCode: '110',
  );

  /// value111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value111 = ServiceType(
    fhirCode: '111',
  );

  /// value112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value112 = ServiceType(
    fhirCode: '112',
  );

  /// value113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value113 = ServiceType(
    fhirCode: '113',
  );

  /// value114
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value114 = ServiceType(
    fhirCode: '114',
  );

  /// value115
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value115 = ServiceType(
    fhirCode: '115',
  );

  /// value116
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value116 = ServiceType(
    fhirCode: '116',
  );

  /// value117
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value117 = ServiceType(
    fhirCode: '117',
  );

  /// value118
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value118 = ServiceType(
    fhirCode: '118',
  );

  /// value119
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value119 = ServiceType(
    fhirCode: '119',
  );

  /// value120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value120 = ServiceType(
    fhirCode: '120',
  );

  /// value121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value121 = ServiceType(
    fhirCode: '121',
  );

  /// value122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value122 = ServiceType(
    fhirCode: '122',
  );

  /// value123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value123 = ServiceType(
    fhirCode: '123',
  );

  /// value124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value124 = ServiceType(
    fhirCode: '124',
  );

  /// value125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value125 = ServiceType(
    fhirCode: '125',
  );

  /// value126
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value126 = ServiceType(
    fhirCode: '126',
  );

  /// value127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value127 = ServiceType(
    fhirCode: '127',
  );

  /// value128
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value128 = ServiceType(
    fhirCode: '128',
  );

  /// value129
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value129 = ServiceType(
    fhirCode: '129',
  );

  /// value130
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value130 = ServiceType(
    fhirCode: '130',
  );

  /// value131
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value131 = ServiceType(
    fhirCode: '131',
  );

  /// value132
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value132 = ServiceType(
    fhirCode: '132',
  );

  /// value133
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value133 = ServiceType(
    fhirCode: '133',
  );

  /// value134
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value134 = ServiceType(
    fhirCode: '134',
  );

  /// value135
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value135 = ServiceType(
    fhirCode: '135',
  );

  /// value136
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value136 = ServiceType(
    fhirCode: '136',
  );

  /// value137
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value137 = ServiceType(
    fhirCode: '137',
  );

  /// value138
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value138 = ServiceType(
    fhirCode: '138',
  );

  /// value139
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value139 = ServiceType(
    fhirCode: '139',
  );

  /// value140
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value140 = ServiceType(
    fhirCode: '140',
  );

  /// value141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value141 = ServiceType(
    fhirCode: '141',
  );

  /// value142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value142 = ServiceType(
    fhirCode: '142',
  );

  /// value143
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value143 = ServiceType(
    fhirCode: '143',
  );

  /// value144
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value144 = ServiceType(
    fhirCode: '144',
  );

  /// value145
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value145 = ServiceType(
    fhirCode: '145',
  );

  /// value146
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value146 = ServiceType(
    fhirCode: '146',
  );

  /// value147
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value147 = ServiceType(
    fhirCode: '147',
  );

  /// value148
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value148 = ServiceType(
    fhirCode: '148',
  );

  /// value149
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value149 = ServiceType(
    fhirCode: '149',
  );

  /// value150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value150 = ServiceType(
    fhirCode: '150',
  );

  /// value151
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value151 = ServiceType(
    fhirCode: '151',
  );

  /// value152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value152 = ServiceType(
    fhirCode: '152',
  );

  /// value153
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value153 = ServiceType(
    fhirCode: '153',
  );

  /// value154
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value154 = ServiceType(
    fhirCode: '154',
  );

  /// value155
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value155 = ServiceType(
    fhirCode: '155',
  );

  /// value156
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value156 = ServiceType(
    fhirCode: '156',
  );

  /// value157
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value157 = ServiceType(
    fhirCode: '157',
  );

  /// value158
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value158 = ServiceType(
    fhirCode: '158',
  );

  /// value159
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value159 = ServiceType(
    fhirCode: '159',
  );

  /// value160
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value160 = ServiceType(
    fhirCode: '160',
  );

  /// value161
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value161 = ServiceType(
    fhirCode: '161',
  );

  /// value162
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value162 = ServiceType(
    fhirCode: '162',
  );

  /// value163
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value163 = ServiceType(
    fhirCode: '163',
  );

  /// value164
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value164 = ServiceType(
    fhirCode: '164',
  );

  /// value165
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value165 = ServiceType(
    fhirCode: '165',
  );

  /// value166
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value166 = ServiceType(
    fhirCode: '166',
  );

  /// value167
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value167 = ServiceType(
    fhirCode: '167',
  );

  /// value168
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value168 = ServiceType(
    fhirCode: '168',
  );

  /// value169
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value169 = ServiceType(
    fhirCode: '169',
  );

  /// value170
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value170 = ServiceType(
    fhirCode: '170',
  );

  /// value171
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value171 = ServiceType(
    fhirCode: '171',
  );

  /// value172
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value172 = ServiceType(
    fhirCode: '172',
  );

  /// value173
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value173 = ServiceType(
    fhirCode: '173',
  );

  /// value174
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value174 = ServiceType(
    fhirCode: '174',
  );

  /// value175
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value175 = ServiceType(
    fhirCode: '175',
  );

  /// value176
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value176 = ServiceType(
    fhirCode: '176',
  );

  /// value177
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value177 = ServiceType(
    fhirCode: '177',
  );

  /// value178
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value178 = ServiceType(
    fhirCode: '178',
  );

  /// value179
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value179 = ServiceType(
    fhirCode: '179',
  );

  /// value180
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value180 = ServiceType(
    fhirCode: '180',
  );

  /// value181
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value181 = ServiceType(
    fhirCode: '181',
  );

  /// value182
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value182 = ServiceType(
    fhirCode: '182',
  );

  /// value183
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value183 = ServiceType(
    fhirCode: '183',
  );

  /// value184
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value184 = ServiceType(
    fhirCode: '184',
  );

  /// value185
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value185 = ServiceType(
    fhirCode: '185',
  );

  /// value186
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value186 = ServiceType(
    fhirCode: '186',
  );

  /// value187
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value187 = ServiceType(
    fhirCode: '187',
  );

  /// value188
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value188 = ServiceType(
    fhirCode: '188',
  );

  /// value189
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value189 = ServiceType(
    fhirCode: '189',
  );

  /// value190
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value190 = ServiceType(
    fhirCode: '190',
  );

  /// value191
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value191 = ServiceType(
    fhirCode: '191',
  );

  /// value192
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value192 = ServiceType(
    fhirCode: '192',
  );

  /// value193
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value193 = ServiceType(
    fhirCode: '193',
  );

  /// value194
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value194 = ServiceType(
    fhirCode: '194',
  );

  /// value195
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value195 = ServiceType(
    fhirCode: '195',
  );

  /// value196
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value196 = ServiceType(
    fhirCode: '196',
  );

  /// value197
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value197 = ServiceType(
    fhirCode: '197',
  );

  /// value198
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value198 = ServiceType(
    fhirCode: '198',
  );

  /// value199
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value199 = ServiceType(
    fhirCode: '199',
  );

  /// value200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value200 = ServiceType(
    fhirCode: '200',
  );

  /// value201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value201 = ServiceType(
    fhirCode: '201',
  );

  /// value202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value202 = ServiceType(
    fhirCode: '202',
  );

  /// value203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value203 = ServiceType(
    fhirCode: '203',
  );

  /// value204
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value204 = ServiceType(
    fhirCode: '204',
  );

  /// value205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value205 = ServiceType(
    fhirCode: '205',
  );

  /// value206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value206 = ServiceType(
    fhirCode: '206',
  );

  /// value207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value207 = ServiceType(
    fhirCode: '207',
  );

  /// value208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value208 = ServiceType(
    fhirCode: '208',
  );

  /// value209
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value209 = ServiceType(
    fhirCode: '209',
  );

  /// value210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value210 = ServiceType(
    fhirCode: '210',
  );

  /// value211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value211 = ServiceType(
    fhirCode: '211',
  );

  /// value212
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value212 = ServiceType(
    fhirCode: '212',
  );

  /// value213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value213 = ServiceType(
    fhirCode: '213',
  );

  /// value214
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value214 = ServiceType(
    fhirCode: '214',
  );

  /// value215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value215 = ServiceType(
    fhirCode: '215',
  );

  /// value216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value216 = ServiceType(
    fhirCode: '216',
  );

  /// value217
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value217 = ServiceType(
    fhirCode: '217',
  );

  /// value218
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value218 = ServiceType(
    fhirCode: '218',
  );

  /// value219
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value219 = ServiceType(
    fhirCode: '219',
  );

  /// value220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value220 = ServiceType(
    fhirCode: '220',
  );

  /// value221
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value221 = ServiceType(
    fhirCode: '221',
  );

  /// value222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value222 = ServiceType(
    fhirCode: '222',
  );

  /// value223
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value223 = ServiceType(
    fhirCode: '223',
  );

  /// value224
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value224 = ServiceType(
    fhirCode: '224',
  );

  /// value225
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value225 = ServiceType(
    fhirCode: '225',
  );

  /// value226
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value226 = ServiceType(
    fhirCode: '226',
  );

  /// value227
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value227 = ServiceType(
    fhirCode: '227',
  );

  /// value228
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value228 = ServiceType(
    fhirCode: '228',
  );

  /// value229
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value229 = ServiceType(
    fhirCode: '229',
  );

  /// value230
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value230 = ServiceType(
    fhirCode: '230',
  );

  /// value231
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value231 = ServiceType(
    fhirCode: '231',
  );

  /// value232
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value232 = ServiceType(
    fhirCode: '232',
  );

  /// value233
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value233 = ServiceType(
    fhirCode: '233',
  );

  /// value234
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value234 = ServiceType(
    fhirCode: '234',
  );

  /// value235
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value235 = ServiceType(
    fhirCode: '235',
  );

  /// value236
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value236 = ServiceType(
    fhirCode: '236',
  );

  /// value237
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value237 = ServiceType(
    fhirCode: '237',
  );

  /// value238
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value238 = ServiceType(
    fhirCode: '238',
  );

  /// value239
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value239 = ServiceType(
    fhirCode: '239',
  );

  /// value240
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value240 = ServiceType(
    fhirCode: '240',
  );

  /// value241
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value241 = ServiceType(
    fhirCode: '241',
  );

  /// value242
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value242 = ServiceType(
    fhirCode: '242',
  );

  /// value243
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value243 = ServiceType(
    fhirCode: '243',
  );

  /// value244
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value244 = ServiceType(
    fhirCode: '244',
  );

  /// value245
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value245 = ServiceType(
    fhirCode: '245',
  );

  /// value246
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value246 = ServiceType(
    fhirCode: '246',
  );

  /// value247
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value247 = ServiceType(
    fhirCode: '247',
  );

  /// value248
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value248 = ServiceType(
    fhirCode: '248',
  );

  /// value249
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value249 = ServiceType(
    fhirCode: '249',
  );

  /// value250
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value250 = ServiceType(
    fhirCode: '250',
  );

  /// value251
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value251 = ServiceType(
    fhirCode: '251',
  );

  /// value252
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value252 = ServiceType(
    fhirCode: '252',
  );

  /// value253
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value253 = ServiceType(
    fhirCode: '253',
  );

  /// value254
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value254 = ServiceType(
    fhirCode: '254',
  );

  /// value255
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value255 = ServiceType(
    fhirCode: '255',
  );

  /// value256
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value256 = ServiceType(
    fhirCode: '256',
  );

  /// value257
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value257 = ServiceType(
    fhirCode: '257',
  );

  /// value258
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value258 = ServiceType(
    fhirCode: '258',
  );

  /// value259
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value259 = ServiceType(
    fhirCode: '259',
  );

  /// value260
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value260 = ServiceType(
    fhirCode: '260',
  );

  /// value261
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value261 = ServiceType(
    fhirCode: '261',
  );

  /// value262
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value262 = ServiceType(
    fhirCode: '262',
  );

  /// value263
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value263 = ServiceType(
    fhirCode: '263',
  );

  /// value264
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value264 = ServiceType(
    fhirCode: '264',
  );

  /// value265
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value265 = ServiceType(
    fhirCode: '265',
  );

  /// value266
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value266 = ServiceType(
    fhirCode: '266',
  );

  /// value267
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value267 = ServiceType(
    fhirCode: '267',
  );

  /// value268
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value268 = ServiceType(
    fhirCode: '268',
  );

  /// value269
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value269 = ServiceType(
    fhirCode: '269',
  );

  /// value270
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value270 = ServiceType(
    fhirCode: '270',
  );

  /// value271
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value271 = ServiceType(
    fhirCode: '271',
  );

  /// value272
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value272 = ServiceType(
    fhirCode: '272',
  );

  /// value273
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value273 = ServiceType(
    fhirCode: '273',
  );

  /// value274
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value274 = ServiceType(
    fhirCode: '274',
  );

  /// value275
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value275 = ServiceType(
    fhirCode: '275',
  );

  /// value276
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value276 = ServiceType(
    fhirCode: '276',
  );

  /// value277
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value277 = ServiceType(
    fhirCode: '277',
  );

  /// value278
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value278 = ServiceType(
    fhirCode: '278',
  );

  /// value279
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value279 = ServiceType(
    fhirCode: '279',
  );

  /// value280
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value280 = ServiceType(
    fhirCode: '280',
  );

  /// value281
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value281 = ServiceType(
    fhirCode: '281',
  );

  /// value282
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value282 = ServiceType(
    fhirCode: '282',
  );

  /// value283
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value283 = ServiceType(
    fhirCode: '283',
  );

  /// value284
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value284 = ServiceType(
    fhirCode: '284',
  );

  /// value285
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value285 = ServiceType(
    fhirCode: '285',
  );

  /// value286
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value286 = ServiceType(
    fhirCode: '286',
  );

  /// value287
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value287 = ServiceType(
    fhirCode: '287',
  );

  /// value288
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value288 = ServiceType(
    fhirCode: '288',
  );

  /// value289
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value289 = ServiceType(
    fhirCode: '289',
  );

  /// value290
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value290 = ServiceType(
    fhirCode: '290',
  );

  /// value291
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value291 = ServiceType(
    fhirCode: '291',
  );

  /// value292
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value292 = ServiceType(
    fhirCode: '292',
  );

  /// value293
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value293 = ServiceType(
    fhirCode: '293',
  );

  /// value294
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value294 = ServiceType(
    fhirCode: '294',
  );

  /// value295
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value295 = ServiceType(
    fhirCode: '295',
  );

  /// value296
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value296 = ServiceType(
    fhirCode: '296',
  );

  /// value297
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value297 = ServiceType(
    fhirCode: '297',
  );

  /// value298
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value298 = ServiceType(
    fhirCode: '298',
  );

  /// value299
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value299 = ServiceType(
    fhirCode: '299',
  );

  /// value300
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value300 = ServiceType(
    fhirCode: '300',
  );

  /// value301
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value301 = ServiceType(
    fhirCode: '301',
  );

  /// value302
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value302 = ServiceType(
    fhirCode: '302',
  );

  /// value303
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value303 = ServiceType(
    fhirCode: '303',
  );

  /// value304
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value304 = ServiceType(
    fhirCode: '304',
  );

  /// value305
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value305 = ServiceType(
    fhirCode: '305',
  );

  /// value306
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value306 = ServiceType(
    fhirCode: '306',
  );

  /// value307
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value307 = ServiceType(
    fhirCode: '307',
  );

  /// value308
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value308 = ServiceType(
    fhirCode: '308',
  );

  /// value309
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value309 = ServiceType(
    fhirCode: '309',
  );

  /// value310
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value310 = ServiceType(
    fhirCode: '310',
  );

  /// value311
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value311 = ServiceType(
    fhirCode: '311',
  );

  /// value312
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value312 = ServiceType(
    fhirCode: '312',
  );

  /// value313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value313 = ServiceType(
    fhirCode: '313',
  );

  /// value314
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value314 = ServiceType(
    fhirCode: '314',
  );

  /// value315
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value315 = ServiceType(
    fhirCode: '315',
  );

  /// value316
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value316 = ServiceType(
    fhirCode: '316',
  );

  /// value317
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value317 = ServiceType(
    fhirCode: '317',
  );

  /// value318
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value318 = ServiceType(
    fhirCode: '318',
  );

  /// value319
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value319 = ServiceType(
    fhirCode: '319',
  );

  /// value320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value320 = ServiceType(
    fhirCode: '320',
  );

  /// value321
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value321 = ServiceType(
    fhirCode: '321',
  );

  /// value322
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value322 = ServiceType(
    fhirCode: '322',
  );

  /// value323
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value323 = ServiceType(
    fhirCode: '323',
  );

  /// value324
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value324 = ServiceType(
    fhirCode: '324',
  );

  /// value325
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value325 = ServiceType(
    fhirCode: '325',
  );

  /// value326
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value326 = ServiceType(
    fhirCode: '326',
  );

  /// value327
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value327 = ServiceType(
    fhirCode: '327',
  );

  /// value328
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value328 = ServiceType(
    fhirCode: '328',
  );

  /// value330
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value330 = ServiceType(
    fhirCode: '330',
  );

  /// value331
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value331 = ServiceType(
    fhirCode: '331',
  );

  /// value332
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value332 = ServiceType(
    fhirCode: '332',
  );

  /// value333
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value333 = ServiceType(
    fhirCode: '333',
  );

  /// value334
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value334 = ServiceType(
    fhirCode: '334',
  );

  /// value335
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value335 = ServiceType(
    fhirCode: '335',
  );

  /// value336
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value336 = ServiceType(
    fhirCode: '336',
  );

  /// value337
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value337 = ServiceType(
    fhirCode: '337',
  );

  /// value338
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value338 = ServiceType(
    fhirCode: '338',
  );

  /// value339
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value339 = ServiceType(
    fhirCode: '339',
  );

  /// value340
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value340 = ServiceType(
    fhirCode: '340',
  );

  /// value341
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value341 = ServiceType(
    fhirCode: '341',
  );

  /// value342
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value342 = ServiceType(
    fhirCode: '342',
  );

  /// value343
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value343 = ServiceType(
    fhirCode: '343',
  );

  /// value344
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value344 = ServiceType(
    fhirCode: '344',
  );

  /// value345
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value345 = ServiceType(
    fhirCode: '345',
  );

  /// value346
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value346 = ServiceType(
    fhirCode: '346',
  );

  /// value347
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value347 = ServiceType(
    fhirCode: '347',
  );

  /// value348
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value348 = ServiceType(
    fhirCode: '348',
  );

  /// value349
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value349 = ServiceType(
    fhirCode: '349',
  );

  /// value350
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value350 = ServiceType(
    fhirCode: '350',
  );

  /// value351
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value351 = ServiceType(
    fhirCode: '351',
  );

  /// value352
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value352 = ServiceType(
    fhirCode: '352',
  );

  /// value353
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value353 = ServiceType(
    fhirCode: '353',
  );

  /// value354
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value354 = ServiceType(
    fhirCode: '354',
  );

  /// value355
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value355 = ServiceType(
    fhirCode: '355',
  );

  /// value356
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value356 = ServiceType(
    fhirCode: '356',
  );

  /// value357
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value357 = ServiceType(
    fhirCode: '357',
  );

  /// value358
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value358 = ServiceType(
    fhirCode: '358',
  );

  /// value359
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value359 = ServiceType(
    fhirCode: '359',
  );

  /// value360
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value360 = ServiceType(
    fhirCode: '360',
  );

  /// value361
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value361 = ServiceType(
    fhirCode: '361',
  );

  /// value362
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value362 = ServiceType(
    fhirCode: '362',
  );

  /// value364
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value364 = ServiceType(
    fhirCode: '364',
  );

  /// value365
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value365 = ServiceType(
    fhirCode: '365',
  );

  /// value366
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value366 = ServiceType(
    fhirCode: '366',
  );

  /// value367
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value367 = ServiceType(
    fhirCode: '367',
  );

  /// value368
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value368 = ServiceType(
    fhirCode: '368',
  );

  /// value369
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value369 = ServiceType(
    fhirCode: '369',
  );

  /// value370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value370 = ServiceType(
    fhirCode: '370',
  );

  /// value371
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value371 = ServiceType(
    fhirCode: '371',
  );

  /// value372
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value372 = ServiceType(
    fhirCode: '372',
  );

  /// value373
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value373 = ServiceType(
    fhirCode: '373',
  );

  /// value374
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value374 = ServiceType(
    fhirCode: '374',
  );

  /// value375
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value375 = ServiceType(
    fhirCode: '375',
  );

  /// value376
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value376 = ServiceType(
    fhirCode: '376',
  );

  /// value377
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value377 = ServiceType(
    fhirCode: '377',
  );

  /// value378
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value378 = ServiceType(
    fhirCode: '378',
  );

  /// value379
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value379 = ServiceType(
    fhirCode: '379',
  );

  /// value380
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value380 = ServiceType(
    fhirCode: '380',
  );

  /// value381
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value381 = ServiceType(
    fhirCode: '381',
  );

  /// value382
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value382 = ServiceType(
    fhirCode: '382',
  );

  /// value383
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value383 = ServiceType(
    fhirCode: '383',
  );

  /// value384
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value384 = ServiceType(
    fhirCode: '384',
  );

  /// value385
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value385 = ServiceType(
    fhirCode: '385',
  );

  /// value386
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value386 = ServiceType(
    fhirCode: '386',
  );

  /// value387
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value387 = ServiceType(
    fhirCode: '387',
  );

  /// value388
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value388 = ServiceType(
    fhirCode: '388',
  );

  /// value389
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value389 = ServiceType(
    fhirCode: '389',
  );

  /// value390
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value390 = ServiceType(
    fhirCode: '390',
  );

  /// value391
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value391 = ServiceType(
    fhirCode: '391',
  );

  /// value392
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value392 = ServiceType(
    fhirCode: '392',
  );

  /// value393
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value393 = ServiceType(
    fhirCode: '393',
  );

  /// value394
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value394 = ServiceType(
    fhirCode: '394',
  );

  /// value395
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value395 = ServiceType(
    fhirCode: '395',
  );

  /// value396
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value396 = ServiceType(
    fhirCode: '396',
  );

  /// value397
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value397 = ServiceType(
    fhirCode: '397',
  );

  /// value398
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value398 = ServiceType(
    fhirCode: '398',
  );

  /// value399
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value399 = ServiceType(
    fhirCode: '399',
  );

  /// value400
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value400 = ServiceType(
    fhirCode: '400',
  );

  /// value401
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value401 = ServiceType(
    fhirCode: '401',
  );

  /// value402
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value402 = ServiceType(
    fhirCode: '402',
  );

  /// value403
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value403 = ServiceType(
    fhirCode: '403',
  );

  /// value404
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value404 = ServiceType(
    fhirCode: '404',
  );

  /// value405
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value405 = ServiceType(
    fhirCode: '405',
  );

  /// value406
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value406 = ServiceType(
    fhirCode: '406',
  );

  /// value407
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value407 = ServiceType(
    fhirCode: '407',
  );

  /// value408
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value408 = ServiceType(
    fhirCode: '408',
  );

  /// value409
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value409 = ServiceType(
    fhirCode: '409',
  );

  /// value410
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value410 = ServiceType(
    fhirCode: '410',
  );

  /// value411
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value411 = ServiceType(
    fhirCode: '411',
  );

  /// value412
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value412 = ServiceType(
    fhirCode: '412',
  );

  /// value413
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value413 = ServiceType(
    fhirCode: '413',
  );

  /// value414
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value414 = ServiceType(
    fhirCode: '414',
  );

  /// value415
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value415 = ServiceType(
    fhirCode: '415',
  );

  /// value416
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value416 = ServiceType(
    fhirCode: '416',
  );

  /// value417
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value417 = ServiceType(
    fhirCode: '417',
  );

  /// value418
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value418 = ServiceType(
    fhirCode: '418',
  );

  /// value419
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value419 = ServiceType(
    fhirCode: '419',
  );

  /// value420
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value420 = ServiceType(
    fhirCode: '420',
  );

  /// value421
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value421 = ServiceType(
    fhirCode: '421',
  );

  /// value422
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value422 = ServiceType(
    fhirCode: '422',
  );

  /// value423
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value423 = ServiceType(
    fhirCode: '423',
  );

  /// value424
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value424 = ServiceType(
    fhirCode: '424',
  );

  /// value425
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value425 = ServiceType(
    fhirCode: '425',
  );

  /// value426
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value426 = ServiceType(
    fhirCode: '426',
  );

  /// value427
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value427 = ServiceType(
    fhirCode: '427',
  );

  /// value428
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value428 = ServiceType(
    fhirCode: '428',
  );

  /// value429
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value429 = ServiceType(
    fhirCode: '429',
  );

  /// value430
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value430 = ServiceType(
    fhirCode: '430',
  );

  /// value431
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value431 = ServiceType(
    fhirCode: '431',
  );

  /// value432
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value432 = ServiceType(
    fhirCode: '432',
  );

  /// value433
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value433 = ServiceType(
    fhirCode: '433',
  );

  /// value434
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value434 = ServiceType(
    fhirCode: '434',
  );

  /// value435
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value435 = ServiceType(
    fhirCode: '435',
  );

  /// value436
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value436 = ServiceType(
    fhirCode: '436',
  );

  /// value437
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value437 = ServiceType(
    fhirCode: '437',
  );

  /// value438
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value438 = ServiceType(
    fhirCode: '438',
  );

  /// value439
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value439 = ServiceType(
    fhirCode: '439',
  );

  /// value440
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value440 = ServiceType(
    fhirCode: '440',
  );

  /// value441
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value441 = ServiceType(
    fhirCode: '441',
  );

  /// value442
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value442 = ServiceType(
    fhirCode: '442',
  );

  /// value443
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value443 = ServiceType(
    fhirCode: '443',
  );

  /// value444
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value444 = ServiceType(
    fhirCode: '444',
  );

  /// value445
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value445 = ServiceType(
    fhirCode: '445',
  );

  /// value446
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value446 = ServiceType(
    fhirCode: '446',
  );

  /// value447
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value447 = ServiceType(
    fhirCode: '447',
  );

  /// value448
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value448 = ServiceType(
    fhirCode: '448',
  );

  /// value449
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value449 = ServiceType(
    fhirCode: '449',
  );

  /// value450
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value450 = ServiceType(
    fhirCode: '450',
  );

  /// value451
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value451 = ServiceType(
    fhirCode: '451',
  );

  /// value452
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value452 = ServiceType(
    fhirCode: '452',
  );

  /// value453
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value453 = ServiceType(
    fhirCode: '453',
  );

  /// value454
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value454 = ServiceType(
    fhirCode: '454',
  );

  /// value455
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value455 = ServiceType(
    fhirCode: '455',
  );

  /// value456
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value456 = ServiceType(
    fhirCode: '456',
  );

  /// value457
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value457 = ServiceType(
    fhirCode: '457',
  );

  /// value458
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value458 = ServiceType(
    fhirCode: '458',
  );

  /// value459
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value459 = ServiceType(
    fhirCode: '459',
  );

  /// value460
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value460 = ServiceType(
    fhirCode: '460',
  );

  /// value461
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value461 = ServiceType(
    fhirCode: '461',
  );

  /// value462
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value462 = ServiceType(
    fhirCode: '462',
  );

  /// value463
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value463 = ServiceType(
    fhirCode: '463',
  );

  /// value464
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value464 = ServiceType(
    fhirCode: '464',
  );

  /// value465
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value465 = ServiceType(
    fhirCode: '465',
  );

  /// value466
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value466 = ServiceType(
    fhirCode: '466',
  );

  /// value467
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value467 = ServiceType(
    fhirCode: '467',
  );

  /// value468
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value468 = ServiceType(
    fhirCode: '468',
  );

  /// value469
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value469 = ServiceType(
    fhirCode: '469',
  );

  /// value470
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value470 = ServiceType(
    fhirCode: '470',
  );

  /// value471
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value471 = ServiceType(
    fhirCode: '471',
  );

  /// value472
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value472 = ServiceType(
    fhirCode: '472',
  );

  /// value473
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value473 = ServiceType(
    fhirCode: '473',
  );

  /// value474
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value474 = ServiceType(
    fhirCode: '474',
  );

  /// value475
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value475 = ServiceType(
    fhirCode: '475',
  );

  /// value476
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value476 = ServiceType(
    fhirCode: '476',
  );

  /// value477
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value477 = ServiceType(
    fhirCode: '477',
  );

  /// value478
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value478 = ServiceType(
    fhirCode: '478',
  );

  /// value479
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value479 = ServiceType(
    fhirCode: '479',
  );

  /// value480
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value480 = ServiceType(
    fhirCode: '480',
  );

  /// value481
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value481 = ServiceType(
    fhirCode: '481',
  );

  /// value482
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value482 = ServiceType(
    fhirCode: '482',
  );

  /// value483
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value483 = ServiceType(
    fhirCode: '483',
  );

  /// value484
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value484 = ServiceType(
    fhirCode: '484',
  );

  /// value485
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value485 = ServiceType(
    fhirCode: '485',
  );

  /// value486
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value486 = ServiceType(
    fhirCode: '486',
  );

  /// value488
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value488 = ServiceType(
    fhirCode: '488',
  );

  /// value489
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value489 = ServiceType(
    fhirCode: '489',
  );

  /// value490
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value490 = ServiceType(
    fhirCode: '490',
  );

  /// value491
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value491 = ServiceType(
    fhirCode: '491',
  );

  /// value492
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value492 = ServiceType(
    fhirCode: '492',
  );

  /// value493
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value493 = ServiceType(
    fhirCode: '493',
  );

  /// value494
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value494 = ServiceType(
    fhirCode: '494',
  );

  /// value495
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value495 = ServiceType(
    fhirCode: '495',
  );

  /// value496
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value496 = ServiceType(
    fhirCode: '496',
  );

  /// value497
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value497 = ServiceType(
    fhirCode: '497',
  );

  /// value498
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value498 = ServiceType(
    fhirCode: '498',
  );

  /// value500
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value500 = ServiceType(
    fhirCode: '500',
  );

  /// value501
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value501 = ServiceType(
    fhirCode: '501',
  );

  /// value502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value502 = ServiceType(
    fhirCode: '502',
  );

  /// value503
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value503 = ServiceType(
    fhirCode: '503',
  );

  /// value504
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value504 = ServiceType(
    fhirCode: '504',
  );

  /// value505
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value505 = ServiceType(
    fhirCode: '505',
  );

  /// value506
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value506 = ServiceType(
    fhirCode: '506',
  );

  /// value507
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value507 = ServiceType(
    fhirCode: '507',
  );

  /// value508
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value508 = ServiceType(
    fhirCode: '508',
  );

  /// value509
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value509 = ServiceType(
    fhirCode: '509',
  );

  /// value510
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value510 = ServiceType(
    fhirCode: '510',
  );

  /// value513
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value513 = ServiceType(
    fhirCode: '513',
  );

  /// value514
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value514 = ServiceType(
    fhirCode: '514',
  );

  /// value530
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value530 = ServiceType(
    fhirCode: '530',
  );

  /// value531
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value531 = ServiceType(
    fhirCode: '531',
  );

  /// value532
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value532 = ServiceType(
    fhirCode: '532',
  );

  /// value533
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value533 = ServiceType(
    fhirCode: '533',
  );

  /// value534
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value534 = ServiceType(
    fhirCode: '534',
  );

  /// value535
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value535 = ServiceType(
    fhirCode: '535',
  );

  /// value536
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value536 = ServiceType(
    fhirCode: '536',
  );

  /// value537
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value537 = ServiceType(
    fhirCode: '537',
  );

  /// value538
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value538 = ServiceType(
    fhirCode: '538',
  );

  /// value539
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value539 = ServiceType(
    fhirCode: '539',
  );

  /// value540
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value540 = ServiceType(
    fhirCode: '540',
  );

  /// value541
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value541 = ServiceType(
    fhirCode: '541',
  );

  /// value542
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value542 = ServiceType(
    fhirCode: '542',
  );

  /// value543
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value543 = ServiceType(
    fhirCode: '543',
  );

  /// value544
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value544 = ServiceType(
    fhirCode: '544',
  );

  /// value545
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value545 = ServiceType(
    fhirCode: '545',
  );

  /// value546
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value546 = ServiceType(
    fhirCode: '546',
  );

  /// value547
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value547 = ServiceType(
    fhirCode: '547',
  );

  /// value548
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value548 = ServiceType(
    fhirCode: '548',
  );

  /// value550
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value550 = ServiceType(
    fhirCode: '550',
  );

  /// value551
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value551 = ServiceType(
    fhirCode: '551',
  );

  /// value552
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value552 = ServiceType(
    fhirCode: '552',
  );

  /// value553
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value553 = ServiceType(
    fhirCode: '553',
  );

  /// value554
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value554 = ServiceType(
    fhirCode: '554',
  );

  /// value555
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value555 = ServiceType(
    fhirCode: '555',
  );

  /// value556
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value556 = ServiceType(
    fhirCode: '556',
  );

  /// value557
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value557 = ServiceType(
    fhirCode: '557',
  );

  /// value558
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value558 = ServiceType(
    fhirCode: '558',
  );

  /// value559
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value559 = ServiceType(
    fhirCode: '559',
  );

  /// value560
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value560 = ServiceType(
    fhirCode: '560',
  );

  /// value561
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value561 = ServiceType(
    fhirCode: '561',
  );

  /// value562
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value562 = ServiceType(
    fhirCode: '562',
  );

  /// value563
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value563 = ServiceType(
    fhirCode: '563',
  );

  /// value564
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value564 = ServiceType(
    fhirCode: '564',
  );

  /// value565
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value565 = ServiceType(
    fhirCode: '565',
  );

  /// value566
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value566 = ServiceType(
    fhirCode: '566',
  );

  /// value567
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value567 = ServiceType(
    fhirCode: '567',
  );

  /// value568
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value568 = ServiceType(
    fhirCode: '568',
  );

  /// value569
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value569 = ServiceType(
    fhirCode: '569',
  );

  /// value570
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value570 = ServiceType(
    fhirCode: '570',
  );

  /// value571
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value571 = ServiceType(
    fhirCode: '571',
  );

  /// value572
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value572 = ServiceType(
    fhirCode: '572',
  );

  /// value573
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value573 = ServiceType(
    fhirCode: '573',
  );

  /// value574
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value574 = ServiceType(
    fhirCode: '574',
  );

  /// value575
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value575 = ServiceType(
    fhirCode: '575',
  );

  /// value576
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value576 = ServiceType(
    fhirCode: '576',
  );

  /// value577
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value577 = ServiceType(
    fhirCode: '577',
  );

  /// value580
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value580 = ServiceType(
    fhirCode: '580',
  );

  /// value581
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value581 = ServiceType(
    fhirCode: '581',
  );

  /// value582
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value582 = ServiceType(
    fhirCode: '582',
  );

  /// value583
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value583 = ServiceType(
    fhirCode: '583',
  );

  /// value584
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value584 = ServiceType(
    fhirCode: '584',
  );

  /// value585
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value585 = ServiceType(
    fhirCode: '585',
  );

  /// value589
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value589 = ServiceType(
    fhirCode: '589',
  );

  /// value590
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value590 = ServiceType(
    fhirCode: '590',
  );

  /// value591
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value591 = ServiceType(
    fhirCode: '591',
  );

  /// value593
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value593 = ServiceType(
    fhirCode: '593',
  );

  /// value599
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value599 = ServiceType(
    fhirCode: '599',
  );

  /// value600
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value600 = ServiceType(
    fhirCode: '600',
  );

  /// value601
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value601 = ServiceType(
    fhirCode: '601',
  );

  /// value602
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value602 = ServiceType(
    fhirCode: '602',
  );

  /// value603
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value603 = ServiceType(
    fhirCode: '603',
  );

  /// value604
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value604 = ServiceType(
    fhirCode: '604',
  );

  /// value605
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value605 = ServiceType(
    fhirCode: '605',
  );

  /// value606
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value606 = ServiceType(
    fhirCode: '606',
  );

  /// value607
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value607 = ServiceType(
    fhirCode: '607',
  );

  /// value608
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value608 = ServiceType(
    fhirCode: '608',
  );

  /// value609
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value609 = ServiceType(
    fhirCode: '609',
  );

  /// value610
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value610 = ServiceType(
    fhirCode: '610',
  );

  /// value611
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value611 = ServiceType(
    fhirCode: '611',
  );

  /// value612
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value612 = ServiceType(
    fhirCode: '612',
  );

  /// value613
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value613 = ServiceType(
    fhirCode: '613',
  );

  /// value614
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value614 = ServiceType(
    fhirCode: '614',
  );

  /// value615
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value615 = ServiceType(
    fhirCode: '615',
  );

  /// value616
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value616 = ServiceType(
    fhirCode: '616',
  );

  /// value617
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value617 = ServiceType(
    fhirCode: '617',
  );

  /// value618
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value618 = ServiceType(
    fhirCode: '618',
  );

  /// value619
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value619 = ServiceType(
    fhirCode: '619',
  );

  /// value620
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value620 = ServiceType(
    fhirCode: '620',
  );

  /// value621
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value621 = ServiceType(
    fhirCode: '621',
  );

  /// value622
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value622 = ServiceType(
    fhirCode: '622',
  );

  /// value623
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value623 = ServiceType(
    fhirCode: '623',
  );

  /// value624
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value624 = ServiceType(
    fhirCode: '624',
  );

  /// value625
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value625 = ServiceType(
    fhirCode: '625',
  );

  /// value626
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value626 = ServiceType(
    fhirCode: '626',
  );

  /// value627
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value627 = ServiceType(
    fhirCode: '627',
  );

  /// value628
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value628 = ServiceType(
    fhirCode: '628',
  );

  /// value629
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceType value629 = ServiceType(
    fhirCode: '629',
  );

  /// For instances where an Element is present but not value

  static final ServiceType elementOnly = ServiceType();

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

  /// Returns the enum value with an element attached
  ServiceType withElement(Element? newElement) {
    return ServiceType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ServiceType] from JSON.
  static ServiceType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ServiceType.elementOnly.withElement(element);
    }
    return ServiceType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ServiceType.$fhirCode';
}
