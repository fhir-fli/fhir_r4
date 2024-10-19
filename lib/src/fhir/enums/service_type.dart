// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set defines an example set of codes of service-types.
@Entity()
class ServiceType extends FhirCode {
  /// Factory constructor to create [ServiceType] from JSON.
  factory ServiceType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ServiceType.elementOnly(element);
    }
    if (values.contains(value)) {
      return ServiceType._(value, element);
    }
    throw ArgumentError(
      'ServiceType.fromJson: JSON value is not a valid value',
    );
  }

  /// value1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value1([this.element])
      : dbValue = '1',
        super('1', element);

  /// value2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value2([this.element])
      : dbValue = '2',
        super('2', element);

  /// value3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value3([this.element])
      : dbValue = '3',
        super('3', element);

  /// value4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value4([this.element])
      : dbValue = '4',
        super('4', element);

  /// value5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value5([this.element])
      : dbValue = '5',
        super('5', element);

  /// value6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value6([this.element])
      : dbValue = '6',
        super('6', element);

  /// value7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value7([this.element])
      : dbValue = '7',
        super('7', element);

  /// value8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value8([this.element])
      : dbValue = '8',
        super('8', element);

  /// value9
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value9([this.element])
      : dbValue = '9',
        super('9', element);

  /// value10
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value10([this.element])
      : dbValue = '10',
        super('10', element);

  /// value11
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value11([this.element])
      : dbValue = '11',
        super('11', element);

  /// value12
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value12([this.element])
      : dbValue = '12',
        super('12', element);

  /// value13
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value13([this.element])
      : dbValue = '13',
        super('13', element);

  /// value14
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value14([this.element])
      : dbValue = '14',
        super('14', element);

  /// value15
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value15([this.element])
      : dbValue = '15',
        super('15', element);

  /// value16
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value16([this.element])
      : dbValue = '16',
        super('16', element);

  /// value17
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value17([this.element])
      : dbValue = '17',
        super('17', element);

  /// value18
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value18([this.element])
      : dbValue = '18',
        super('18', element);

  /// value19
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value19([this.element])
      : dbValue = '19',
        super('19', element);

  /// value20
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value20([this.element])
      : dbValue = '20',
        super('20', element);

  /// value21
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value21([this.element])
      : dbValue = '21',
        super('21', element);

  /// value22
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value22([this.element])
      : dbValue = '22',
        super('22', element);

  /// value23
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value23([this.element])
      : dbValue = '23',
        super('23', element);

  /// value24
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value24([this.element])
      : dbValue = '24',
        super('24', element);

  /// value25
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value25([this.element])
      : dbValue = '25',
        super('25', element);

  /// value26
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value26([this.element])
      : dbValue = '26',
        super('26', element);

  /// value27
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value27([this.element])
      : dbValue = '27',
        super('27', element);

  /// value28
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value28([this.element])
      : dbValue = '28',
        super('28', element);

  /// value29
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value29([this.element])
      : dbValue = '29',
        super('29', element);

  /// value30
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value30([this.element])
      : dbValue = '30',
        super('30', element);

  /// value31
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value31([this.element])
      : dbValue = '31',
        super('31', element);

  /// value32
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value32([this.element])
      : dbValue = '32',
        super('32', element);

  /// value33
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value33([this.element])
      : dbValue = '33',
        super('33', element);

  /// value34
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value34([this.element])
      : dbValue = '34',
        super('34', element);

  /// value35
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value35([this.element])
      : dbValue = '35',
        super('35', element);

  /// value36
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value36([this.element])
      : dbValue = '36',
        super('36', element);

  /// value37
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value37([this.element])
      : dbValue = '37',
        super('37', element);

  /// value38
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value38([this.element])
      : dbValue = '38',
        super('38', element);

  /// value39
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value39([this.element])
      : dbValue = '39',
        super('39', element);

  /// value40
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value40([this.element])
      : dbValue = '40',
        super('40', element);

  /// value41
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value41([this.element])
      : dbValue = '41',
        super('41', element);

  /// value42
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value42([this.element])
      : dbValue = '42',
        super('42', element);

  /// value43
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value43([this.element])
      : dbValue = '43',
        super('43', element);

  /// value44
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value44([this.element])
      : dbValue = '44',
        super('44', element);

  /// value45
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value45([this.element])
      : dbValue = '45',
        super('45', element);

  /// value46
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value46([this.element])
      : dbValue = '46',
        super('46', element);

  /// value47
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value47([this.element])
      : dbValue = '47',
        super('47', element);

  /// value48
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value48([this.element])
      : dbValue = '48',
        super('48', element);

  /// value49
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value49([this.element])
      : dbValue = '49',
        super('49', element);

  /// value50
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value50([this.element])
      : dbValue = '50',
        super('50', element);

  /// value51
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value51([this.element])
      : dbValue = '51',
        super('51', element);

  /// value52
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value52([this.element])
      : dbValue = '52',
        super('52', element);

  /// value53
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value53([this.element])
      : dbValue = '53',
        super('53', element);

  /// value54
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value54([this.element])
      : dbValue = '54',
        super('54', element);

  /// value55
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value55([this.element])
      : dbValue = '55',
        super('55', element);

  /// value56
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value56([this.element])
      : dbValue = '56',
        super('56', element);

  /// value57
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value57([this.element])
      : dbValue = '57',
        super('57', element);

  /// value58
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value58([this.element])
      : dbValue = '58',
        super('58', element);

  /// value59
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value59([this.element])
      : dbValue = '59',
        super('59', element);

  /// value60
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value60([this.element])
      : dbValue = '60',
        super('60', element);

  /// value61
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value61([this.element])
      : dbValue = '61',
        super('61', element);

  /// value62
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value62([this.element])
      : dbValue = '62',
        super('62', element);

  /// value63
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value63([this.element])
      : dbValue = '63',
        super('63', element);

  /// value64
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value64([this.element])
      : dbValue = '64',
        super('64', element);

  /// value65
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value65([this.element])
      : dbValue = '65',
        super('65', element);

  /// value66
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value66([this.element])
      : dbValue = '66',
        super('66', element);

  /// value67
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value67([this.element])
      : dbValue = '67',
        super('67', element);

  /// value68
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value68([this.element])
      : dbValue = '68',
        super('68', element);

  /// value69
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value69([this.element])
      : dbValue = '69',
        super('69', element);

  /// value70
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value70([this.element])
      : dbValue = '70',
        super('70', element);

  /// value71
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value71([this.element])
      : dbValue = '71',
        super('71', element);

  /// value72
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value72([this.element])
      : dbValue = '72',
        super('72', element);

  /// value73
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value73([this.element])
      : dbValue = '73',
        super('73', element);

  /// value74
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value74([this.element])
      : dbValue = '74',
        super('74', element);

  /// value75
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value75([this.element])
      : dbValue = '75',
        super('75', element);

  /// value76
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value76([this.element])
      : dbValue = '76',
        super('76', element);

  /// value77
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value77([this.element])
      : dbValue = '77',
        super('77', element);

  /// value78
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value78([this.element])
      : dbValue = '78',
        super('78', element);

  /// value79
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value79([this.element])
      : dbValue = '79',
        super('79', element);

  /// value80
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value80([this.element])
      : dbValue = '80',
        super('80', element);

  /// value81
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value81([this.element])
      : dbValue = '81',
        super('81', element);

  /// value82
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value82([this.element])
      : dbValue = '82',
        super('82', element);

  /// value83
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value83([this.element])
      : dbValue = '83',
        super('83', element);

  /// value84
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value84([this.element])
      : dbValue = '84',
        super('84', element);

  /// value85
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value85([this.element])
      : dbValue = '85',
        super('85', element);

  /// value86
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value86([this.element])
      : dbValue = '86',
        super('86', element);

  /// value87
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value87([this.element])
      : dbValue = '87',
        super('87', element);

  /// value88
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value88([this.element])
      : dbValue = '88',
        super('88', element);

  /// value89
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value89([this.element])
      : dbValue = '89',
        super('89', element);

  /// value90
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value90([this.element])
      : dbValue = '90',
        super('90', element);

  /// value91
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value91([this.element])
      : dbValue = '91',
        super('91', element);

  /// value92
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value92([this.element])
      : dbValue = '92',
        super('92', element);

  /// value93
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value93([this.element])
      : dbValue = '93',
        super('93', element);

  /// value94
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value94([this.element])
      : dbValue = '94',
        super('94', element);

  /// value95
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value95([this.element])
      : dbValue = '95',
        super('95', element);

  /// value96
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value96([this.element])
      : dbValue = '96',
        super('96', element);

  /// value97
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value97([this.element])
      : dbValue = '97',
        super('97', element);

  /// value98
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value98([this.element])
      : dbValue = '98',
        super('98', element);

  /// value99
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value99([this.element])
      : dbValue = '99',
        super('99', element);

  /// value100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value100([this.element])
      : dbValue = '100',
        super('100', element);

  /// value101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value101([this.element])
      : dbValue = '101',
        super('101', element);

  /// value102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value102([this.element])
      : dbValue = '102',
        super('102', element);

  /// value103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value103([this.element])
      : dbValue = '103',
        super('103', element);

  /// value104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value104([this.element])
      : dbValue = '104',
        super('104', element);

  /// value105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value105([this.element])
      : dbValue = '105',
        super('105', element);

  /// value106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value106([this.element])
      : dbValue = '106',
        super('106', element);

  /// value107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value107([this.element])
      : dbValue = '107',
        super('107', element);

  /// value108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value108([this.element])
      : dbValue = '108',
        super('108', element);

  /// value109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value109([this.element])
      : dbValue = '109',
        super('109', element);

  /// value110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value110([this.element])
      : dbValue = '110',
        super('110', element);

  /// value111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value111([this.element])
      : dbValue = '111',
        super('111', element);

  /// value112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value112([this.element])
      : dbValue = '112',
        super('112', element);

  /// value113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value113([this.element])
      : dbValue = '113',
        super('113', element);

  /// value114
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value114([this.element])
      : dbValue = '114',
        super('114', element);

  /// value115
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value115([this.element])
      : dbValue = '115',
        super('115', element);

  /// value116
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value116([this.element])
      : dbValue = '116',
        super('116', element);

  /// value117
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value117([this.element])
      : dbValue = '117',
        super('117', element);

  /// value118
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value118([this.element])
      : dbValue = '118',
        super('118', element);

  /// value119
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value119([this.element])
      : dbValue = '119',
        super('119', element);

  /// value120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value120([this.element])
      : dbValue = '120',
        super('120', element);

  /// value121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value121([this.element])
      : dbValue = '121',
        super('121', element);

  /// value122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value122([this.element])
      : dbValue = '122',
        super('122', element);

  /// value123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value123([this.element])
      : dbValue = '123',
        super('123', element);

  /// value124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value124([this.element])
      : dbValue = '124',
        super('124', element);

  /// value125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value125([this.element])
      : dbValue = '125',
        super('125', element);

  /// value126
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value126([this.element])
      : dbValue = '126',
        super('126', element);

  /// value127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value127([this.element])
      : dbValue = '127',
        super('127', element);

  /// value128
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value128([this.element])
      : dbValue = '128',
        super('128', element);

  /// value129
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value129([this.element])
      : dbValue = '129',
        super('129', element);

  /// value130
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value130([this.element])
      : dbValue = '130',
        super('130', element);

  /// value131
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value131([this.element])
      : dbValue = '131',
        super('131', element);

  /// value132
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value132([this.element])
      : dbValue = '132',
        super('132', element);

  /// value133
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value133([this.element])
      : dbValue = '133',
        super('133', element);

  /// value134
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value134([this.element])
      : dbValue = '134',
        super('134', element);

  /// value135
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value135([this.element])
      : dbValue = '135',
        super('135', element);

  /// value136
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value136([this.element])
      : dbValue = '136',
        super('136', element);

  /// value137
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value137([this.element])
      : dbValue = '137',
        super('137', element);

  /// value138
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value138([this.element])
      : dbValue = '138',
        super('138', element);

  /// value139
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value139([this.element])
      : dbValue = '139',
        super('139', element);

  /// value140
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value140([this.element])
      : dbValue = '140',
        super('140', element);

  /// value141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value141([this.element])
      : dbValue = '141',
        super('141', element);

  /// value142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value142([this.element])
      : dbValue = '142',
        super('142', element);

  /// value143
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value143([this.element])
      : dbValue = '143',
        super('143', element);

  /// value144
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value144([this.element])
      : dbValue = '144',
        super('144', element);

  /// value145
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value145([this.element])
      : dbValue = '145',
        super('145', element);

  /// value146
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value146([this.element])
      : dbValue = '146',
        super('146', element);

  /// value147
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value147([this.element])
      : dbValue = '147',
        super('147', element);

  /// value148
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value148([this.element])
      : dbValue = '148',
        super('148', element);

  /// value149
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value149([this.element])
      : dbValue = '149',
        super('149', element);

  /// value150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value150([this.element])
      : dbValue = '150',
        super('150', element);

  /// value151
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value151([this.element])
      : dbValue = '151',
        super('151', element);

  /// value152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value152([this.element])
      : dbValue = '152',
        super('152', element);

  /// value153
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value153([this.element])
      : dbValue = '153',
        super('153', element);

  /// value154
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value154([this.element])
      : dbValue = '154',
        super('154', element);

  /// value155
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value155([this.element])
      : dbValue = '155',
        super('155', element);

  /// value156
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value156([this.element])
      : dbValue = '156',
        super('156', element);

  /// value157
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value157([this.element])
      : dbValue = '157',
        super('157', element);

  /// value158
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value158([this.element])
      : dbValue = '158',
        super('158', element);

  /// value159
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value159([this.element])
      : dbValue = '159',
        super('159', element);

  /// value160
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value160([this.element])
      : dbValue = '160',
        super('160', element);

  /// value161
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value161([this.element])
      : dbValue = '161',
        super('161', element);

  /// value162
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value162([this.element])
      : dbValue = '162',
        super('162', element);

  /// value163
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value163([this.element])
      : dbValue = '163',
        super('163', element);

  /// value164
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value164([this.element])
      : dbValue = '164',
        super('164', element);

  /// value165
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value165([this.element])
      : dbValue = '165',
        super('165', element);

  /// value166
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value166([this.element])
      : dbValue = '166',
        super('166', element);

  /// value167
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value167([this.element])
      : dbValue = '167',
        super('167', element);

  /// value168
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value168([this.element])
      : dbValue = '168',
        super('168', element);

  /// value169
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value169([this.element])
      : dbValue = '169',
        super('169', element);

  /// value170
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value170([this.element])
      : dbValue = '170',
        super('170', element);

  /// value171
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value171([this.element])
      : dbValue = '171',
        super('171', element);

  /// value172
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value172([this.element])
      : dbValue = '172',
        super('172', element);

  /// value173
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value173([this.element])
      : dbValue = '173',
        super('173', element);

  /// value174
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value174([this.element])
      : dbValue = '174',
        super('174', element);

  /// value175
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value175([this.element])
      : dbValue = '175',
        super('175', element);

  /// value176
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value176([this.element])
      : dbValue = '176',
        super('176', element);

  /// value177
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value177([this.element])
      : dbValue = '177',
        super('177', element);

  /// value178
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value178([this.element])
      : dbValue = '178',
        super('178', element);

  /// value179
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value179([this.element])
      : dbValue = '179',
        super('179', element);

  /// value180
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value180([this.element])
      : dbValue = '180',
        super('180', element);

  /// value181
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value181([this.element])
      : dbValue = '181',
        super('181', element);

  /// value182
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value182([this.element])
      : dbValue = '182',
        super('182', element);

  /// value183
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value183([this.element])
      : dbValue = '183',
        super('183', element);

  /// value184
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value184([this.element])
      : dbValue = '184',
        super('184', element);

  /// value185
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value185([this.element])
      : dbValue = '185',
        super('185', element);

  /// value186
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value186([this.element])
      : dbValue = '186',
        super('186', element);

  /// value187
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value187([this.element])
      : dbValue = '187',
        super('187', element);

  /// value188
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value188([this.element])
      : dbValue = '188',
        super('188', element);

  /// value189
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value189([this.element])
      : dbValue = '189',
        super('189', element);

  /// value190
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value190([this.element])
      : dbValue = '190',
        super('190', element);

  /// value191
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value191([this.element])
      : dbValue = '191',
        super('191', element);

  /// value192
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value192([this.element])
      : dbValue = '192',
        super('192', element);

  /// value193
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value193([this.element])
      : dbValue = '193',
        super('193', element);

  /// value194
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value194([this.element])
      : dbValue = '194',
        super('194', element);

  /// value195
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value195([this.element])
      : dbValue = '195',
        super('195', element);

  /// value196
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value196([this.element])
      : dbValue = '196',
        super('196', element);

  /// value197
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value197([this.element])
      : dbValue = '197',
        super('197', element);

  /// value198
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value198([this.element])
      : dbValue = '198',
        super('198', element);

  /// value199
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value199([this.element])
      : dbValue = '199',
        super('199', element);

  /// value200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value200([this.element])
      : dbValue = '200',
        super('200', element);

  /// value201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value201([this.element])
      : dbValue = '201',
        super('201', element);

  /// value202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value202([this.element])
      : dbValue = '202',
        super('202', element);

  /// value203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value203([this.element])
      : dbValue = '203',
        super('203', element);

  /// value204
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value204([this.element])
      : dbValue = '204',
        super('204', element);

  /// value205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value205([this.element])
      : dbValue = '205',
        super('205', element);

  /// value206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value206([this.element])
      : dbValue = '206',
        super('206', element);

  /// value207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value207([this.element])
      : dbValue = '207',
        super('207', element);

  /// value208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value208([this.element])
      : dbValue = '208',
        super('208', element);

  /// value209
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value209([this.element])
      : dbValue = '209',
        super('209', element);

  /// value210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value210([this.element])
      : dbValue = '210',
        super('210', element);

  /// value211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value211([this.element])
      : dbValue = '211',
        super('211', element);

  /// value212
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value212([this.element])
      : dbValue = '212',
        super('212', element);

  /// value213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value213([this.element])
      : dbValue = '213',
        super('213', element);

  /// value214
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value214([this.element])
      : dbValue = '214',
        super('214', element);

  /// value215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value215([this.element])
      : dbValue = '215',
        super('215', element);

  /// value216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value216([this.element])
      : dbValue = '216',
        super('216', element);

  /// value217
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value217([this.element])
      : dbValue = '217',
        super('217', element);

  /// value218
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value218([this.element])
      : dbValue = '218',
        super('218', element);

  /// value219
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value219([this.element])
      : dbValue = '219',
        super('219', element);

  /// value220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value220([this.element])
      : dbValue = '220',
        super('220', element);

  /// value221
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value221([this.element])
      : dbValue = '221',
        super('221', element);

  /// value222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value222([this.element])
      : dbValue = '222',
        super('222', element);

  /// value223
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value223([this.element])
      : dbValue = '223',
        super('223', element);

  /// value224
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value224([this.element])
      : dbValue = '224',
        super('224', element);

  /// value225
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value225([this.element])
      : dbValue = '225',
        super('225', element);

  /// value226
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value226([this.element])
      : dbValue = '226',
        super('226', element);

  /// value227
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value227([this.element])
      : dbValue = '227',
        super('227', element);

  /// value228
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value228([this.element])
      : dbValue = '228',
        super('228', element);

  /// value229
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value229([this.element])
      : dbValue = '229',
        super('229', element);

  /// value230
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value230([this.element])
      : dbValue = '230',
        super('230', element);

  /// value231
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value231([this.element])
      : dbValue = '231',
        super('231', element);

  /// value232
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value232([this.element])
      : dbValue = '232',
        super('232', element);

  /// value233
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value233([this.element])
      : dbValue = '233',
        super('233', element);

  /// value234
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value234([this.element])
      : dbValue = '234',
        super('234', element);

  /// value235
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value235([this.element])
      : dbValue = '235',
        super('235', element);

  /// value236
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value236([this.element])
      : dbValue = '236',
        super('236', element);

  /// value237
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value237([this.element])
      : dbValue = '237',
        super('237', element);

  /// value238
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value238([this.element])
      : dbValue = '238',
        super('238', element);

  /// value239
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value239([this.element])
      : dbValue = '239',
        super('239', element);

  /// value240
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value240([this.element])
      : dbValue = '240',
        super('240', element);

  /// value241
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value241([this.element])
      : dbValue = '241',
        super('241', element);

  /// value242
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value242([this.element])
      : dbValue = '242',
        super('242', element);

  /// value243
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value243([this.element])
      : dbValue = '243',
        super('243', element);

  /// value244
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value244([this.element])
      : dbValue = '244',
        super('244', element);

  /// value245
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value245([this.element])
      : dbValue = '245',
        super('245', element);

  /// value246
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value246([this.element])
      : dbValue = '246',
        super('246', element);

  /// value247
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value247([this.element])
      : dbValue = '247',
        super('247', element);

  /// value248
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value248([this.element])
      : dbValue = '248',
        super('248', element);

  /// value249
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value249([this.element])
      : dbValue = '249',
        super('249', element);

  /// value250
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value250([this.element])
      : dbValue = '250',
        super('250', element);

  /// value251
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value251([this.element])
      : dbValue = '251',
        super('251', element);

  /// value252
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value252([this.element])
      : dbValue = '252',
        super('252', element);

  /// value253
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value253([this.element])
      : dbValue = '253',
        super('253', element);

  /// value254
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value254([this.element])
      : dbValue = '254',
        super('254', element);

  /// value255
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value255([this.element])
      : dbValue = '255',
        super('255', element);

  /// value256
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value256([this.element])
      : dbValue = '256',
        super('256', element);

  /// value257
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value257([this.element])
      : dbValue = '257',
        super('257', element);

  /// value258
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value258([this.element])
      : dbValue = '258',
        super('258', element);

  /// value259
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value259([this.element])
      : dbValue = '259',
        super('259', element);

  /// value260
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value260([this.element])
      : dbValue = '260',
        super('260', element);

  /// value261
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value261([this.element])
      : dbValue = '261',
        super('261', element);

  /// value262
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value262([this.element])
      : dbValue = '262',
        super('262', element);

  /// value263
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value263([this.element])
      : dbValue = '263',
        super('263', element);

  /// value264
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value264([this.element])
      : dbValue = '264',
        super('264', element);

  /// value265
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value265([this.element])
      : dbValue = '265',
        super('265', element);

  /// value266
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value266([this.element])
      : dbValue = '266',
        super('266', element);

  /// value267
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value267([this.element])
      : dbValue = '267',
        super('267', element);

  /// value268
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value268([this.element])
      : dbValue = '268',
        super('268', element);

  /// value269
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value269([this.element])
      : dbValue = '269',
        super('269', element);

  /// value270
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value270([this.element])
      : dbValue = '270',
        super('270', element);

  /// value271
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value271([this.element])
      : dbValue = '271',
        super('271', element);

  /// value272
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value272([this.element])
      : dbValue = '272',
        super('272', element);

  /// value273
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value273([this.element])
      : dbValue = '273',
        super('273', element);

  /// value274
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value274([this.element])
      : dbValue = '274',
        super('274', element);

  /// value275
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value275([this.element])
      : dbValue = '275',
        super('275', element);

  /// value276
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value276([this.element])
      : dbValue = '276',
        super('276', element);

  /// value277
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value277([this.element])
      : dbValue = '277',
        super('277', element);

  /// value278
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value278([this.element])
      : dbValue = '278',
        super('278', element);

  /// value279
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value279([this.element])
      : dbValue = '279',
        super('279', element);

  /// value280
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value280([this.element])
      : dbValue = '280',
        super('280', element);

  /// value281
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value281([this.element])
      : dbValue = '281',
        super('281', element);

  /// value282
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value282([this.element])
      : dbValue = '282',
        super('282', element);

  /// value283
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value283([this.element])
      : dbValue = '283',
        super('283', element);

  /// value284
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value284([this.element])
      : dbValue = '284',
        super('284', element);

  /// value285
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value285([this.element])
      : dbValue = '285',
        super('285', element);

  /// value286
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value286([this.element])
      : dbValue = '286',
        super('286', element);

  /// value287
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value287([this.element])
      : dbValue = '287',
        super('287', element);

  /// value288
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value288([this.element])
      : dbValue = '288',
        super('288', element);

  /// value289
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value289([this.element])
      : dbValue = '289',
        super('289', element);

  /// value290
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value290([this.element])
      : dbValue = '290',
        super('290', element);

  /// value291
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value291([this.element])
      : dbValue = '291',
        super('291', element);

  /// value292
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value292([this.element])
      : dbValue = '292',
        super('292', element);

  /// value293
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value293([this.element])
      : dbValue = '293',
        super('293', element);

  /// value294
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value294([this.element])
      : dbValue = '294',
        super('294', element);

  /// value295
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value295([this.element])
      : dbValue = '295',
        super('295', element);

  /// value296
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value296([this.element])
      : dbValue = '296',
        super('296', element);

  /// value297
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value297([this.element])
      : dbValue = '297',
        super('297', element);

  /// value298
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value298([this.element])
      : dbValue = '298',
        super('298', element);

  /// value299
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value299([this.element])
      : dbValue = '299',
        super('299', element);

  /// value300
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value300([this.element])
      : dbValue = '300',
        super('300', element);

  /// value301
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value301([this.element])
      : dbValue = '301',
        super('301', element);

  /// value302
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value302([this.element])
      : dbValue = '302',
        super('302', element);

  /// value303
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value303([this.element])
      : dbValue = '303',
        super('303', element);

  /// value304
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value304([this.element])
      : dbValue = '304',
        super('304', element);

  /// value305
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value305([this.element])
      : dbValue = '305',
        super('305', element);

  /// value306
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value306([this.element])
      : dbValue = '306',
        super('306', element);

  /// value307
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value307([this.element])
      : dbValue = '307',
        super('307', element);

  /// value308
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value308([this.element])
      : dbValue = '308',
        super('308', element);

  /// value309
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value309([this.element])
      : dbValue = '309',
        super('309', element);

  /// value310
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value310([this.element])
      : dbValue = '310',
        super('310', element);

  /// value311
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value311([this.element])
      : dbValue = '311',
        super('311', element);

  /// value312
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value312([this.element])
      : dbValue = '312',
        super('312', element);

  /// value313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value313([this.element])
      : dbValue = '313',
        super('313', element);

  /// value314
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value314([this.element])
      : dbValue = '314',
        super('314', element);

  /// value315
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value315([this.element])
      : dbValue = '315',
        super('315', element);

  /// value316
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value316([this.element])
      : dbValue = '316',
        super('316', element);

  /// value317
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value317([this.element])
      : dbValue = '317',
        super('317', element);

  /// value318
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value318([this.element])
      : dbValue = '318',
        super('318', element);

  /// value319
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value319([this.element])
      : dbValue = '319',
        super('319', element);

  /// value320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value320([this.element])
      : dbValue = '320',
        super('320', element);

  /// value321
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value321([this.element])
      : dbValue = '321',
        super('321', element);

  /// value322
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value322([this.element])
      : dbValue = '322',
        super('322', element);

  /// value323
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value323([this.element])
      : dbValue = '323',
        super('323', element);

  /// value324
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value324([this.element])
      : dbValue = '324',
        super('324', element);

  /// value325
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value325([this.element])
      : dbValue = '325',
        super('325', element);

  /// value326
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value326([this.element])
      : dbValue = '326',
        super('326', element);

  /// value327
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value327([this.element])
      : dbValue = '327',
        super('327', element);

  /// value328
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value328([this.element])
      : dbValue = '328',
        super('328', element);

  /// value330
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value330([this.element])
      : dbValue = '330',
        super('330', element);

  /// value331
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value331([this.element])
      : dbValue = '331',
        super('331', element);

  /// value332
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value332([this.element])
      : dbValue = '332',
        super('332', element);

  /// value333
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value333([this.element])
      : dbValue = '333',
        super('333', element);

  /// value334
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value334([this.element])
      : dbValue = '334',
        super('334', element);

  /// value335
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value335([this.element])
      : dbValue = '335',
        super('335', element);

  /// value336
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value336([this.element])
      : dbValue = '336',
        super('336', element);

  /// value337
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value337([this.element])
      : dbValue = '337',
        super('337', element);

  /// value338
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value338([this.element])
      : dbValue = '338',
        super('338', element);

  /// value339
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value339([this.element])
      : dbValue = '339',
        super('339', element);

  /// value340
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value340([this.element])
      : dbValue = '340',
        super('340', element);

  /// value341
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value341([this.element])
      : dbValue = '341',
        super('341', element);

  /// value342
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value342([this.element])
      : dbValue = '342',
        super('342', element);

  /// value343
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value343([this.element])
      : dbValue = '343',
        super('343', element);

  /// value344
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value344([this.element])
      : dbValue = '344',
        super('344', element);

  /// value345
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value345([this.element])
      : dbValue = '345',
        super('345', element);

  /// value346
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value346([this.element])
      : dbValue = '346',
        super('346', element);

  /// value347
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value347([this.element])
      : dbValue = '347',
        super('347', element);

  /// value348
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value348([this.element])
      : dbValue = '348',
        super('348', element);

  /// value349
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value349([this.element])
      : dbValue = '349',
        super('349', element);

  /// value350
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value350([this.element])
      : dbValue = '350',
        super('350', element);

  /// value351
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value351([this.element])
      : dbValue = '351',
        super('351', element);

  /// value352
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value352([this.element])
      : dbValue = '352',
        super('352', element);

  /// value353
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value353([this.element])
      : dbValue = '353',
        super('353', element);

  /// value354
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value354([this.element])
      : dbValue = '354',
        super('354', element);

  /// value355
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value355([this.element])
      : dbValue = '355',
        super('355', element);

  /// value356
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value356([this.element])
      : dbValue = '356',
        super('356', element);

  /// value357
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value357([this.element])
      : dbValue = '357',
        super('357', element);

  /// value358
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value358([this.element])
      : dbValue = '358',
        super('358', element);

  /// value359
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value359([this.element])
      : dbValue = '359',
        super('359', element);

  /// value360
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value360([this.element])
      : dbValue = '360',
        super('360', element);

  /// value361
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value361([this.element])
      : dbValue = '361',
        super('361', element);

  /// value362
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value362([this.element])
      : dbValue = '362',
        super('362', element);

  /// value364
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value364([this.element])
      : dbValue = '364',
        super('364', element);

  /// value365
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value365([this.element])
      : dbValue = '365',
        super('365', element);

  /// value366
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value366([this.element])
      : dbValue = '366',
        super('366', element);

  /// value367
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value367([this.element])
      : dbValue = '367',
        super('367', element);

  /// value368
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value368([this.element])
      : dbValue = '368',
        super('368', element);

  /// value369
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value369([this.element])
      : dbValue = '369',
        super('369', element);

  /// value370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value370([this.element])
      : dbValue = '370',
        super('370', element);

  /// value371
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value371([this.element])
      : dbValue = '371',
        super('371', element);

  /// value372
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value372([this.element])
      : dbValue = '372',
        super('372', element);

  /// value373
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value373([this.element])
      : dbValue = '373',
        super('373', element);

  /// value374
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value374([this.element])
      : dbValue = '374',
        super('374', element);

  /// value375
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value375([this.element])
      : dbValue = '375',
        super('375', element);

  /// value376
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value376([this.element])
      : dbValue = '376',
        super('376', element);

  /// value377
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value377([this.element])
      : dbValue = '377',
        super('377', element);

  /// value378
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value378([this.element])
      : dbValue = '378',
        super('378', element);

  /// value379
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value379([this.element])
      : dbValue = '379',
        super('379', element);

  /// value380
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value380([this.element])
      : dbValue = '380',
        super('380', element);

  /// value381
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value381([this.element])
      : dbValue = '381',
        super('381', element);

  /// value382
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value382([this.element])
      : dbValue = '382',
        super('382', element);

  /// value383
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value383([this.element])
      : dbValue = '383',
        super('383', element);

  /// value384
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value384([this.element])
      : dbValue = '384',
        super('384', element);

  /// value385
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value385([this.element])
      : dbValue = '385',
        super('385', element);

  /// value386
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value386([this.element])
      : dbValue = '386',
        super('386', element);

  /// value387
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value387([this.element])
      : dbValue = '387',
        super('387', element);

  /// value388
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value388([this.element])
      : dbValue = '388',
        super('388', element);

  /// value389
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value389([this.element])
      : dbValue = '389',
        super('389', element);

  /// value390
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value390([this.element])
      : dbValue = '390',
        super('390', element);

  /// value391
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value391([this.element])
      : dbValue = '391',
        super('391', element);

  /// value392
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value392([this.element])
      : dbValue = '392',
        super('392', element);

  /// value393
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value393([this.element])
      : dbValue = '393',
        super('393', element);

  /// value394
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value394([this.element])
      : dbValue = '394',
        super('394', element);

  /// value395
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value395([this.element])
      : dbValue = '395',
        super('395', element);

  /// value396
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value396([this.element])
      : dbValue = '396',
        super('396', element);

  /// value397
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value397([this.element])
      : dbValue = '397',
        super('397', element);

  /// value398
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value398([this.element])
      : dbValue = '398',
        super('398', element);

  /// value399
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value399([this.element])
      : dbValue = '399',
        super('399', element);

  /// value400
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value400([this.element])
      : dbValue = '400',
        super('400', element);

  /// value401
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value401([this.element])
      : dbValue = '401',
        super('401', element);

  /// value402
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value402([this.element])
      : dbValue = '402',
        super('402', element);

  /// value403
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value403([this.element])
      : dbValue = '403',
        super('403', element);

  /// value404
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value404([this.element])
      : dbValue = '404',
        super('404', element);

  /// value405
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value405([this.element])
      : dbValue = '405',
        super('405', element);

  /// value406
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value406([this.element])
      : dbValue = '406',
        super('406', element);

  /// value407
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value407([this.element])
      : dbValue = '407',
        super('407', element);

  /// value408
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value408([this.element])
      : dbValue = '408',
        super('408', element);

  /// value409
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value409([this.element])
      : dbValue = '409',
        super('409', element);

  /// value410
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value410([this.element])
      : dbValue = '410',
        super('410', element);

  /// value411
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value411([this.element])
      : dbValue = '411',
        super('411', element);

  /// value412
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value412([this.element])
      : dbValue = '412',
        super('412', element);

  /// value413
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value413([this.element])
      : dbValue = '413',
        super('413', element);

  /// value414
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value414([this.element])
      : dbValue = '414',
        super('414', element);

  /// value415
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value415([this.element])
      : dbValue = '415',
        super('415', element);

  /// value416
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value416([this.element])
      : dbValue = '416',
        super('416', element);

  /// value417
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value417([this.element])
      : dbValue = '417',
        super('417', element);

  /// value418
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value418([this.element])
      : dbValue = '418',
        super('418', element);

  /// value419
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value419([this.element])
      : dbValue = '419',
        super('419', element);

  /// value420
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value420([this.element])
      : dbValue = '420',
        super('420', element);

  /// value421
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value421([this.element])
      : dbValue = '421',
        super('421', element);

  /// value422
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value422([this.element])
      : dbValue = '422',
        super('422', element);

  /// value423
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value423([this.element])
      : dbValue = '423',
        super('423', element);

  /// value424
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value424([this.element])
      : dbValue = '424',
        super('424', element);

  /// value425
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value425([this.element])
      : dbValue = '425',
        super('425', element);

  /// value426
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value426([this.element])
      : dbValue = '426',
        super('426', element);

  /// value427
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value427([this.element])
      : dbValue = '427',
        super('427', element);

  /// value428
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value428([this.element])
      : dbValue = '428',
        super('428', element);

  /// value429
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value429([this.element])
      : dbValue = '429',
        super('429', element);

  /// value430
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value430([this.element])
      : dbValue = '430',
        super('430', element);

  /// value431
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value431([this.element])
      : dbValue = '431',
        super('431', element);

  /// value432
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value432([this.element])
      : dbValue = '432',
        super('432', element);

  /// value433
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value433([this.element])
      : dbValue = '433',
        super('433', element);

  /// value434
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value434([this.element])
      : dbValue = '434',
        super('434', element);

  /// value435
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value435([this.element])
      : dbValue = '435',
        super('435', element);

  /// value436
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value436([this.element])
      : dbValue = '436',
        super('436', element);

  /// value437
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value437([this.element])
      : dbValue = '437',
        super('437', element);

  /// value438
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value438([this.element])
      : dbValue = '438',
        super('438', element);

  /// value439
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value439([this.element])
      : dbValue = '439',
        super('439', element);

  /// value440
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value440([this.element])
      : dbValue = '440',
        super('440', element);

  /// value441
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value441([this.element])
      : dbValue = '441',
        super('441', element);

  /// value442
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value442([this.element])
      : dbValue = '442',
        super('442', element);

  /// value443
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value443([this.element])
      : dbValue = '443',
        super('443', element);

  /// value444
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value444([this.element])
      : dbValue = '444',
        super('444', element);

  /// value445
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value445([this.element])
      : dbValue = '445',
        super('445', element);

  /// value446
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value446([this.element])
      : dbValue = '446',
        super('446', element);

  /// value447
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value447([this.element])
      : dbValue = '447',
        super('447', element);

  /// value448
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value448([this.element])
      : dbValue = '448',
        super('448', element);

  /// value449
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value449([this.element])
      : dbValue = '449',
        super('449', element);

  /// value450
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value450([this.element])
      : dbValue = '450',
        super('450', element);

  /// value451
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value451([this.element])
      : dbValue = '451',
        super('451', element);

  /// value452
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value452([this.element])
      : dbValue = '452',
        super('452', element);

  /// value453
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value453([this.element])
      : dbValue = '453',
        super('453', element);

  /// value454
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value454([this.element])
      : dbValue = '454',
        super('454', element);

  /// value455
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value455([this.element])
      : dbValue = '455',
        super('455', element);

  /// value456
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value456([this.element])
      : dbValue = '456',
        super('456', element);

  /// value457
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value457([this.element])
      : dbValue = '457',
        super('457', element);

  /// value458
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value458([this.element])
      : dbValue = '458',
        super('458', element);

  /// value459
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value459([this.element])
      : dbValue = '459',
        super('459', element);

  /// value460
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value460([this.element])
      : dbValue = '460',
        super('460', element);

  /// value461
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value461([this.element])
      : dbValue = '461',
        super('461', element);

  /// value462
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value462([this.element])
      : dbValue = '462',
        super('462', element);

  /// value463
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value463([this.element])
      : dbValue = '463',
        super('463', element);

  /// value464
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value464([this.element])
      : dbValue = '464',
        super('464', element);

  /// value465
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value465([this.element])
      : dbValue = '465',
        super('465', element);

  /// value466
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value466([this.element])
      : dbValue = '466',
        super('466', element);

  /// value467
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value467([this.element])
      : dbValue = '467',
        super('467', element);

  /// value468
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value468([this.element])
      : dbValue = '468',
        super('468', element);

  /// value469
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value469([this.element])
      : dbValue = '469',
        super('469', element);

  /// value470
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value470([this.element])
      : dbValue = '470',
        super('470', element);

  /// value471
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value471([this.element])
      : dbValue = '471',
        super('471', element);

  /// value472
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value472([this.element])
      : dbValue = '472',
        super('472', element);

  /// value473
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value473([this.element])
      : dbValue = '473',
        super('473', element);

  /// value474
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value474([this.element])
      : dbValue = '474',
        super('474', element);

  /// value475
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value475([this.element])
      : dbValue = '475',
        super('475', element);

  /// value476
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value476([this.element])
      : dbValue = '476',
        super('476', element);

  /// value477
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value477([this.element])
      : dbValue = '477',
        super('477', element);

  /// value478
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value478([this.element])
      : dbValue = '478',
        super('478', element);

  /// value479
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value479([this.element])
      : dbValue = '479',
        super('479', element);

  /// value480
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value480([this.element])
      : dbValue = '480',
        super('480', element);

  /// value481
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value481([this.element])
      : dbValue = '481',
        super('481', element);

  /// value482
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value482([this.element])
      : dbValue = '482',
        super('482', element);

  /// value483
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value483([this.element])
      : dbValue = '483',
        super('483', element);

  /// value484
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value484([this.element])
      : dbValue = '484',
        super('484', element);

  /// value485
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value485([this.element])
      : dbValue = '485',
        super('485', element);

  /// value486
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value486([this.element])
      : dbValue = '486',
        super('486', element);

  /// value488
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value488([this.element])
      : dbValue = '488',
        super('488', element);

  /// value489
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value489([this.element])
      : dbValue = '489',
        super('489', element);

  /// value490
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value490([this.element])
      : dbValue = '490',
        super('490', element);

  /// value491
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value491([this.element])
      : dbValue = '491',
        super('491', element);

  /// value492
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value492([this.element])
      : dbValue = '492',
        super('492', element);

  /// value493
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value493([this.element])
      : dbValue = '493',
        super('493', element);

  /// value494
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value494([this.element])
      : dbValue = '494',
        super('494', element);

  /// value495
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value495([this.element])
      : dbValue = '495',
        super('495', element);

  /// value496
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value496([this.element])
      : dbValue = '496',
        super('496', element);

  /// value497
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value497([this.element])
      : dbValue = '497',
        super('497', element);

  /// value498
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value498([this.element])
      : dbValue = '498',
        super('498', element);

  /// value500
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value500([this.element])
      : dbValue = '500',
        super('500', element);

  /// value501
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value501([this.element])
      : dbValue = '501',
        super('501', element);

  /// value502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value502([this.element])
      : dbValue = '502',
        super('502', element);

  /// value503
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value503([this.element])
      : dbValue = '503',
        super('503', element);

  /// value504
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value504([this.element])
      : dbValue = '504',
        super('504', element);

  /// value505
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value505([this.element])
      : dbValue = '505',
        super('505', element);

  /// value506
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value506([this.element])
      : dbValue = '506',
        super('506', element);

  /// value507
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value507([this.element])
      : dbValue = '507',
        super('507', element);

  /// value508
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value508([this.element])
      : dbValue = '508',
        super('508', element);

  /// value509
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value509([this.element])
      : dbValue = '509',
        super('509', element);

  /// value510
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value510([this.element])
      : dbValue = '510',
        super('510', element);

  /// value513
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value513([this.element])
      : dbValue = '513',
        super('513', element);

  /// value514
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value514([this.element])
      : dbValue = '514',
        super('514', element);

  /// value530
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value530([this.element])
      : dbValue = '530',
        super('530', element);

  /// value531
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value531([this.element])
      : dbValue = '531',
        super('531', element);

  /// value532
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value532([this.element])
      : dbValue = '532',
        super('532', element);

  /// value533
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value533([this.element])
      : dbValue = '533',
        super('533', element);

  /// value534
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value534([this.element])
      : dbValue = '534',
        super('534', element);

  /// value535
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value535([this.element])
      : dbValue = '535',
        super('535', element);

  /// value536
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value536([this.element])
      : dbValue = '536',
        super('536', element);

  /// value537
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value537([this.element])
      : dbValue = '537',
        super('537', element);

  /// value538
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value538([this.element])
      : dbValue = '538',
        super('538', element);

  /// value539
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value539([this.element])
      : dbValue = '539',
        super('539', element);

  /// value540
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value540([this.element])
      : dbValue = '540',
        super('540', element);

  /// value541
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value541([this.element])
      : dbValue = '541',
        super('541', element);

  /// value542
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value542([this.element])
      : dbValue = '542',
        super('542', element);

  /// value543
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value543([this.element])
      : dbValue = '543',
        super('543', element);

  /// value544
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value544([this.element])
      : dbValue = '544',
        super('544', element);

  /// value545
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value545([this.element])
      : dbValue = '545',
        super('545', element);

  /// value546
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value546([this.element])
      : dbValue = '546',
        super('546', element);

  /// value547
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value547([this.element])
      : dbValue = '547',
        super('547', element);

  /// value548
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value548([this.element])
      : dbValue = '548',
        super('548', element);

  /// value550
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value550([this.element])
      : dbValue = '550',
        super('550', element);

  /// value551
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value551([this.element])
      : dbValue = '551',
        super('551', element);

  /// value552
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value552([this.element])
      : dbValue = '552',
        super('552', element);

  /// value553
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value553([this.element])
      : dbValue = '553',
        super('553', element);

  /// value554
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value554([this.element])
      : dbValue = '554',
        super('554', element);

  /// value555
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value555([this.element])
      : dbValue = '555',
        super('555', element);

  /// value556
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value556([this.element])
      : dbValue = '556',
        super('556', element);

  /// value557
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value557([this.element])
      : dbValue = '557',
        super('557', element);

  /// value558
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value558([this.element])
      : dbValue = '558',
        super('558', element);

  /// value559
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value559([this.element])
      : dbValue = '559',
        super('559', element);

  /// value560
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value560([this.element])
      : dbValue = '560',
        super('560', element);

  /// value561
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value561([this.element])
      : dbValue = '561',
        super('561', element);

  /// value562
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value562([this.element])
      : dbValue = '562',
        super('562', element);

  /// value563
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value563([this.element])
      : dbValue = '563',
        super('563', element);

  /// value564
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value564([this.element])
      : dbValue = '564',
        super('564', element);

  /// value565
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value565([this.element])
      : dbValue = '565',
        super('565', element);

  /// value566
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value566([this.element])
      : dbValue = '566',
        super('566', element);

  /// value567
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value567([this.element])
      : dbValue = '567',
        super('567', element);

  /// value568
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value568([this.element])
      : dbValue = '568',
        super('568', element);

  /// value569
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value569([this.element])
      : dbValue = '569',
        super('569', element);

  /// value570
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value570([this.element])
      : dbValue = '570',
        super('570', element);

  /// value571
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value571([this.element])
      : dbValue = '571',
        super('571', element);

  /// value572
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value572([this.element])
      : dbValue = '572',
        super('572', element);

  /// value573
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value573([this.element])
      : dbValue = '573',
        super('573', element);

  /// value574
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value574([this.element])
      : dbValue = '574',
        super('574', element);

  /// value575
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value575([this.element])
      : dbValue = '575',
        super('575', element);

  /// value576
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value576([this.element])
      : dbValue = '576',
        super('576', element);

  /// value577
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value577([this.element])
      : dbValue = '577',
        super('577', element);

  /// value580
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value580([this.element])
      : dbValue = '580',
        super('580', element);

  /// value581
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value581([this.element])
      : dbValue = '581',
        super('581', element);

  /// value582
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value582([this.element])
      : dbValue = '582',
        super('582', element);

  /// value583
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value583([this.element])
      : dbValue = '583',
        super('583', element);

  /// value584
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value584([this.element])
      : dbValue = '584',
        super('584', element);

  /// value585
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value585([this.element])
      : dbValue = '585',
        super('585', element);

  /// value589
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value589([this.element])
      : dbValue = '589',
        super('589', element);

  /// value590
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value590([this.element])
      : dbValue = '590',
        super('590', element);

  /// value591
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value591([this.element])
      : dbValue = '591',
        super('591', element);

  /// value593
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value593([this.element])
      : dbValue = '593',
        super('593', element);

  /// value599
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value599([this.element])
      : dbValue = '599',
        super('599', element);

  /// value600
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value600([this.element])
      : dbValue = '600',
        super('600', element);

  /// value601
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value601([this.element])
      : dbValue = '601',
        super('601', element);

  /// value602
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value602([this.element])
      : dbValue = '602',
        super('602', element);

  /// value603
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value603([this.element])
      : dbValue = '603',
        super('603', element);

  /// value604
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value604([this.element])
      : dbValue = '604',
        super('604', element);

  /// value605
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value605([this.element])
      : dbValue = '605',
        super('605', element);

  /// value606
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value606([this.element])
      : dbValue = '606',
        super('606', element);

  /// value607
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value607([this.element])
      : dbValue = '607',
        super('607', element);

  /// value608
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value608([this.element])
      : dbValue = '608',
        super('608', element);

  /// value609
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value609([this.element])
      : dbValue = '609',
        super('609', element);

  /// value610
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value610([this.element])
      : dbValue = '610',
        super('610', element);

  /// value611
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value611([this.element])
      : dbValue = '611',
        super('611', element);

  /// value612
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value612([this.element])
      : dbValue = '612',
        super('612', element);

  /// value613
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value613([this.element])
      : dbValue = '613',
        super('613', element);

  /// value614
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value614([this.element])
      : dbValue = '614',
        super('614', element);

  /// value615
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value615([this.element])
      : dbValue = '615',
        super('615', element);

  /// value616
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value616([this.element])
      : dbValue = '616',
        super('616', element);

  /// value617
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value617([this.element])
      : dbValue = '617',
        super('617', element);

  /// value618
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value618([this.element])
      : dbValue = '618',
        super('618', element);

  /// value619
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value619([this.element])
      : dbValue = '619',
        super('619', element);

  /// value620
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value620([this.element])
      : dbValue = '620',
        super('620', element);

  /// value621
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value621([this.element])
      : dbValue = '621',
        super('621', element);

  /// value622
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value622([this.element])
      : dbValue = '622',
        super('622', element);

  /// value623
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value623([this.element])
      : dbValue = '623',
        super('623', element);

  /// value624
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value624([this.element])
      : dbValue = '624',
        super('624', element);

  /// value625
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value625([this.element])
      : dbValue = '625',
        super('625', element);

  /// value626
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value626([this.element])
      : dbValue = '626',
        super('626', element);

  /// value627
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value627([this.element])
      : dbValue = '627',
        super('627', element);

  /// value628
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value628([this.element])
      : dbValue = '628',
        super('628', element);

  /// value629
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceType.value629([this.element])
      : dbValue = '629',
        super('629', element);

  /// For instances where an Element is present but not value

  ServiceType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ServiceType._(super.input, [super.element])
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
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30',
    '31',
    '32',
    '33',
    '34',
    '35',
    '36',
    '37',
    '38',
    '39',
    '40',
    '41',
    '42',
    '43',
    '44',
    '45',
    '46',
    '47',
    '48',
    '49',
    '50',
    '51',
    '52',
    '53',
    '54',
    '55',
    '56',
    '57',
    '58',
    '59',
    '60',
    '61',
    '62',
    '63',
    '64',
    '65',
    '66',
    '67',
    '68',
    '69',
    '70',
    '71',
    '72',
    '73',
    '74',
    '75',
    '76',
    '77',
    '78',
    '79',
    '80',
    '81',
    '82',
    '83',
    '84',
    '85',
    '86',
    '87',
    '88',
    '89',
    '90',
    '91',
    '92',
    '93',
    '94',
    '95',
    '96',
    '97',
    '98',
    '99',
    '100',
    '101',
    '102',
    '103',
    '104',
    '105',
    '106',
    '107',
    '108',
    '109',
    '110',
    '111',
    '112',
    '113',
    '114',
    '115',
    '116',
    '117',
    '118',
    '119',
    '120',
    '121',
    '122',
    '123',
    '124',
    '125',
    '126',
    '127',
    '128',
    '129',
    '130',
    '131',
    '132',
    '133',
    '134',
    '135',
    '136',
    '137',
    '138',
    '139',
    '140',
    '141',
    '142',
    '143',
    '144',
    '145',
    '146',
    '147',
    '148',
    '149',
    '150',
    '151',
    '152',
    '153',
    '154',
    '155',
    '156',
    '157',
    '158',
    '159',
    '160',
    '161',
    '162',
    '163',
    '164',
    '165',
    '166',
    '167',
    '168',
    '169',
    '170',
    '171',
    '172',
    '173',
    '174',
    '175',
    '176',
    '177',
    '178',
    '179',
    '180',
    '181',
    '182',
    '183',
    '184',
    '185',
    '186',
    '187',
    '188',
    '189',
    '190',
    '191',
    '192',
    '193',
    '194',
    '195',
    '196',
    '197',
    '198',
    '199',
    '200',
    '201',
    '202',
    '203',
    '204',
    '205',
    '206',
    '207',
    '208',
    '209',
    '210',
    '211',
    '212',
    '213',
    '214',
    '215',
    '216',
    '217',
    '218',
    '219',
    '220',
    '221',
    '222',
    '223',
    '224',
    '225',
    '226',
    '227',
    '228',
    '229',
    '230',
    '231',
    '232',
    '233',
    '234',
    '235',
    '236',
    '237',
    '238',
    '239',
    '240',
    '241',
    '242',
    '243',
    '244',
    '245',
    '246',
    '247',
    '248',
    '249',
    '250',
    '251',
    '252',
    '253',
    '254',
    '255',
    '256',
    '257',
    '258',
    '259',
    '260',
    '261',
    '262',
    '263',
    '264',
    '265',
    '266',
    '267',
    '268',
    '269',
    '270',
    '271',
    '272',
    '273',
    '274',
    '275',
    '276',
    '277',
    '278',
    '279',
    '280',
    '281',
    '282',
    '283',
    '284',
    '285',
    '286',
    '287',
    '288',
    '289',
    '290',
    '291',
    '292',
    '293',
    '294',
    '295',
    '296',
    '297',
    '298',
    '299',
    '300',
    '301',
    '302',
    '303',
    '304',
    '305',
    '306',
    '307',
    '308',
    '309',
    '310',
    '311',
    '312',
    '313',
    '314',
    '315',
    '316',
    '317',
    '318',
    '319',
    '320',
    '321',
    '322',
    '323',
    '324',
    '325',
    '326',
    '327',
    '328',
    '330',
    '331',
    '332',
    '333',
    '334',
    '335',
    '336',
    '337',
    '338',
    '339',
    '340',
    '341',
    '342',
    '343',
    '344',
    '345',
    '346',
    '347',
    '348',
    '349',
    '350',
    '351',
    '352',
    '353',
    '354',
    '355',
    '356',
    '357',
    '358',
    '359',
    '360',
    '361',
    '362',
    '364',
    '365',
    '366',
    '367',
    '368',
    '369',
    '370',
    '371',
    '372',
    '373',
    '374',
    '375',
    '376',
    '377',
    '378',
    '379',
    '380',
    '381',
    '382',
    '383',
    '384',
    '385',
    '386',
    '387',
    '388',
    '389',
    '390',
    '391',
    '392',
    '393',
    '394',
    '395',
    '396',
    '397',
    '398',
    '399',
    '400',
    '401',
    '402',
    '403',
    '404',
    '405',
    '406',
    '407',
    '408',
    '409',
    '410',
    '411',
    '412',
    '413',
    '414',
    '415',
    '416',
    '417',
    '418',
    '419',
    '420',
    '421',
    '422',
    '423',
    '424',
    '425',
    '426',
    '427',
    '428',
    '429',
    '430',
    '431',
    '432',
    '433',
    '434',
    '435',
    '436',
    '437',
    '438',
    '439',
    '440',
    '441',
    '442',
    '443',
    '444',
    '445',
    '446',
    '447',
    '448',
    '449',
    '450',
    '451',
    '452',
    '453',
    '454',
    '455',
    '456',
    '457',
    '458',
    '459',
    '460',
    '461',
    '462',
    '463',
    '464',
    '465',
    '466',
    '467',
    '468',
    '469',
    '470',
    '471',
    '472',
    '473',
    '474',
    '475',
    '476',
    '477',
    '478',
    '479',
    '480',
    '481',
    '482',
    '483',
    '484',
    '485',
    '486',
    '488',
    '489',
    '490',
    '491',
    '492',
    '493',
    '494',
    '495',
    '496',
    '497',
    '498',
    '500',
    '501',
    '502',
    '503',
    '504',
    '505',
    '506',
    '507',
    '508',
    '509',
    '510',
    '513',
    '514',
    '530',
    '531',
    '532',
    '533',
    '534',
    '535',
    '536',
    '537',
    '538',
    '539',
    '540',
    '541',
    '542',
    '543',
    '544',
    '545',
    '546',
    '547',
    '548',
    '550',
    '551',
    '552',
    '553',
    '554',
    '555',
    '556',
    '557',
    '558',
    '559',
    '560',
    '561',
    '562',
    '563',
    '564',
    '565',
    '566',
    '567',
    '568',
    '569',
    '570',
    '571',
    '572',
    '573',
    '574',
    '575',
    '576',
    '577',
    '580',
    '581',
    '582',
    '583',
    '584',
    '585',
    '589',
    '590',
    '591',
    '593',
    '599',
    '600',
    '601',
    '602',
    '603',
    '604',
    '605',
    '606',
    '607',
    '608',
    '609',
    '610',
    '611',
    '612',
    '613',
    '614',
    '615',
    '616',
    '617',
    '618',
    '619',
    '620',
    '621',
    '622',
    '623',
    '624',
    '625',
    '626',
    '627',
    '628',
    '629',
  ];

  /// Returns the enum value with an element attached
  ServiceType withElement(Element? newElement) {
    return ServiceType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ServiceType.$value';
}
