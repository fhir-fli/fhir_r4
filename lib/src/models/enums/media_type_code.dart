// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Media Type Code
class MediaTypeCode extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MediaTypeCode._(super.value, [super.element]);

  /// Factory constructor to create [MediaTypeCode] from JSON.
  factory MediaTypeCode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MediaTypeCode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MediaTypeCode cannot be constructed from JSON.',
      );
    }
    return MediaTypeCode._(value, element);
  }

  /// ARCHIVE
  static final MediaTypeCode ARCHIVE = MediaTypeCode._(
    'ARCHIVE',
  );

  /// AR
  static final MediaTypeCode AR = MediaTypeCode._(
    'AR',
  );

  /// AS
  static final MediaTypeCode AS = MediaTypeCode._(
    'AS',
  );

  /// AU
  static final MediaTypeCode AU = MediaTypeCode._(
    'AU',
  );

  /// BDUS
  static final MediaTypeCode BDUS = MediaTypeCode._(
    'BDUS',
  );

  /// BI
  static final MediaTypeCode BI = MediaTypeCode._(
    'BI',
  );

  /// BMD
  static final MediaTypeCode BMD = MediaTypeCode._(
    'BMD',
  );

  /// CAD
  static final MediaTypeCode CAD = MediaTypeCode._(
    'CAD',
  );

  /// CAPTURE
  static final MediaTypeCode CAPTURE = MediaTypeCode._(
    'CAPTURE',
  );

  /// CD
  static final MediaTypeCode CD = MediaTypeCode._(
    'CD',
  );

  /// CF
  static final MediaTypeCode CF = MediaTypeCode._(
    'CF',
  );

  /// COMP
  static final MediaTypeCode COMP = MediaTypeCode._(
    'COMP',
  );

  /// CP
  static final MediaTypeCode CP = MediaTypeCode._(
    'CP',
  );

  /// CR
  static final MediaTypeCode CR = MediaTypeCode._(
    'CR',
  );

  /// CS
  static final MediaTypeCode CS = MediaTypeCode._(
    'CS',
  );

  /// CT
  static final MediaTypeCode CT = MediaTypeCode._(
    'CT',
  );

  /// DD
  static final MediaTypeCode DD = MediaTypeCode._(
    'DD',
  );

  /// DF
  static final MediaTypeCode DF = MediaTypeCode._(
    'DF',
  );

  /// DG
  static final MediaTypeCode DG = MediaTypeCode._(
    'DG',
  );

  /// DM
  static final MediaTypeCode DM = MediaTypeCode._(
    'DM',
  );

  /// DOCD
  static final MediaTypeCode DOCD = MediaTypeCode._(
    'DOCD',
  );

  /// DS
  static final MediaTypeCode DS = MediaTypeCode._(
    'DS',
  );

  /// DSS
  static final MediaTypeCode DSS = MediaTypeCode._(
    'DSS',
  );

  /// DX
  static final MediaTypeCode DX = MediaTypeCode._(
    'DX',
  );

  /// EC
  static final MediaTypeCode EC = MediaTypeCode._(
    'EC',
  );

  /// ECG
  static final MediaTypeCode ECG = MediaTypeCode._(
    'ECG',
  );

  /// EPS
  static final MediaTypeCode EPS = MediaTypeCode._(
    'EPS',
  );

  /// ES
  static final MediaTypeCode ES = MediaTypeCode._(
    'ES',
  );

  /// F
  static final MediaTypeCode F = MediaTypeCode._(
    'F',
  );

  /// FA
  static final MediaTypeCode FA = MediaTypeCode._(
    'FA',
  );

  /// FC
  static final MediaTypeCode FC = MediaTypeCode._(
    'FC',
  );

  /// FILMD
  static final MediaTypeCode FILMD = MediaTypeCode._(
    'FILMD',
  );

  /// FP
  static final MediaTypeCode FP = MediaTypeCode._(
    'FP',
  );

  /// FS
  static final MediaTypeCode FS = MediaTypeCode._(
    'FS',
  );

  /// GM
  static final MediaTypeCode GM = MediaTypeCode._(
    'GM',
  );

  /// H
  static final MediaTypeCode H = MediaTypeCode._(
    'H',
  );

  /// HC
  static final MediaTypeCode HC = MediaTypeCode._(
    'HC',
  );

  /// HD
  static final MediaTypeCode HD = MediaTypeCode._(
    'HD',
  );

  /// IO
  static final MediaTypeCode IO = MediaTypeCode._(
    'IO',
  );

  /// IVOCT
  static final MediaTypeCode IVOCT = MediaTypeCode._(
    'IVOCT',
  );

  /// IVUS
  static final MediaTypeCode IVUS = MediaTypeCode._(
    'IVUS',
  );

  /// KER
  static final MediaTypeCode KER = MediaTypeCode._(
    'KER',
  );

  /// KO
  static final MediaTypeCode KO = MediaTypeCode._(
    'KO',
  );

  /// LEN
  static final MediaTypeCode LEN = MediaTypeCode._(
    'LEN',
  );

  /// LOG
  static final MediaTypeCode LOG = MediaTypeCode._(
    'LOG',
  );

  /// LP
  static final MediaTypeCode LP = MediaTypeCode._(
    'LP',
  );

  /// LS
  static final MediaTypeCode LS = MediaTypeCode._(
    'LS',
  );

  /// M
  static final MediaTypeCode M = MediaTypeCode._(
    'M',
  );

  /// MA
  static final MediaTypeCode MA = MediaTypeCode._(
    'MA',
  );

  /// MC
  static final MediaTypeCode MC = MediaTypeCode._(
    'MC',
  );

  /// MCD
  static final MediaTypeCode MCD = MediaTypeCode._(
    'MCD',
  );

  /// MEDIM
  static final MediaTypeCode MEDIM = MediaTypeCode._(
    'MEDIM',
  );

  /// MG
  static final MediaTypeCode MG = MediaTypeCode._(
    'MG',
  );

  /// MP
  static final MediaTypeCode MP = MediaTypeCode._(
    'MP',
  );

  /// MR
  static final MediaTypeCode MR = MediaTypeCode._(
    'MR',
  );

  /// MS
  static final MediaTypeCode MS = MediaTypeCode._(
    'MS',
  );

  /// NEARLINE
  static final MediaTypeCode NEARLINE = MediaTypeCode._(
    'NEARLINE',
  );

  /// NM
  static final MediaTypeCode NM = MediaTypeCode._(
    'NM',
  );

  /// OAM
  static final MediaTypeCode OAM = MediaTypeCode._(
    'OAM',
  );

  /// OCT
  static final MediaTypeCode OCT = MediaTypeCode._(
    'OCT',
  );

  /// OFFLINE
  static final MediaTypeCode OFFLINE = MediaTypeCode._(
    'OFFLINE',
  );

  /// ONLINE
  static final MediaTypeCode ONLINE = MediaTypeCode._(
    'ONLINE',
  );

  /// OP
  static final MediaTypeCode OP = MediaTypeCode._(
    'OP',
  );

  /// OPM
  static final MediaTypeCode OPM = MediaTypeCode._(
    'OPM',
  );

  /// OPR
  static final MediaTypeCode OPR = MediaTypeCode._(
    'OPR',
  );

  /// OPT
  static final MediaTypeCode OPT = MediaTypeCode._(
    'OPT',
  );

  /// OPV
  static final MediaTypeCode OPV = MediaTypeCode._(
    'OPV',
  );

  /// OSS
  static final MediaTypeCode OSS = MediaTypeCode._(
    'OSS',
  );

  /// OT
  static final MediaTypeCode OT = MediaTypeCode._(
    'OT',
  );

  /// PR
  static final MediaTypeCode PR = MediaTypeCode._(
    'PR',
  );

  /// PRINT
  static final MediaTypeCode PRINT = MediaTypeCode._(
    'PRINT',
  );

  /// PT
  static final MediaTypeCode PT = MediaTypeCode._(
    'PT',
  );

  /// PX
  static final MediaTypeCode PX = MediaTypeCode._(
    'PX',
  );

  /// REG
  static final MediaTypeCode REG = MediaTypeCode._(
    'REG',
  );

  /// RF
  static final MediaTypeCode RF = MediaTypeCode._(
    'RF',
  );

  /// RG
  static final MediaTypeCode RG = MediaTypeCode._(
    'RG',
  );

  /// RT
  static final MediaTypeCode RT = MediaTypeCode._(
    'RT',
  );

  /// RTDOSE
  static final MediaTypeCode RTDOSE = MediaTypeCode._(
    'RTDOSE',
  );

  /// RTIMAGE
  static final MediaTypeCode RTIMAGE = MediaTypeCode._(
    'RTIMAGE',
  );

  /// RTPLAN
  static final MediaTypeCode RTPLAN = MediaTypeCode._(
    'RTPLAN',
  );

  /// RTRECORD
  static final MediaTypeCode RTRECORD = MediaTypeCode._(
    'RTRECORD',
  );

  /// RTSTRUCT
  static final MediaTypeCode RTSTRUCT = MediaTypeCode._(
    'RTSTRUCT',
  );

  /// SEG
  static final MediaTypeCode SEG = MediaTypeCode._(
    'SEG',
  );

  /// SM
  static final MediaTypeCode SM = MediaTypeCode._(
    'SM',
  );

  /// SMR
  static final MediaTypeCode SMR = MediaTypeCode._(
    'SMR',
  );

  /// SR
  static final MediaTypeCode SR = MediaTypeCode._(
    'SR',
  );

  /// SRF
  static final MediaTypeCode SRF = MediaTypeCode._(
    'SRF',
  );

  /// ST
  static final MediaTypeCode ST = MediaTypeCode._(
    'ST',
  );

  /// TG
  static final MediaTypeCode TG = MediaTypeCode._(
    'TG',
  );

  /// U
  static final MediaTypeCode U = MediaTypeCode._(
    'U',
  );

  /// UNAVAILABLE
  static final MediaTypeCode UNAVAILABLE = MediaTypeCode._(
    'UNAVAILABLE',
  );

  /// US
  static final MediaTypeCode US = MediaTypeCode._(
    'US',
  );

  /// VA
  static final MediaTypeCode VA = MediaTypeCode._(
    'VA',
  );

  /// VF
  static final MediaTypeCode VF = MediaTypeCode._(
    'VF',
  );

  /// VIDD
  static final MediaTypeCode VIDD = MediaTypeCode._(
    'VIDD',
  );

  /// WSD
  static final MediaTypeCode WSD = MediaTypeCode._(
    'WSD',
  );

  /// XA
  static final MediaTypeCode XA = MediaTypeCode._(
    'XA',
  );

  /// XC
  static final MediaTypeCode XC = MediaTypeCode._(
    'XC',
  );

  /// value109001
  static final MediaTypeCode value109001 = MediaTypeCode._(
    '109001',
  );

  /// value109002
  static final MediaTypeCode value109002 = MediaTypeCode._(
    '109002',
  );

  /// value109003
  static final MediaTypeCode value109003 = MediaTypeCode._(
    '109003',
  );

  /// value109004
  static final MediaTypeCode value109004 = MediaTypeCode._(
    '109004',
  );

  /// value109005
  static final MediaTypeCode value109005 = MediaTypeCode._(
    '109005',
  );

  /// value109006
  static final MediaTypeCode value109006 = MediaTypeCode._(
    '109006',
  );

  /// value109007
  static final MediaTypeCode value109007 = MediaTypeCode._(
    '109007',
  );

  /// value109008
  static final MediaTypeCode value109008 = MediaTypeCode._(
    '109008',
  );

  /// value109009
  static final MediaTypeCode value109009 = MediaTypeCode._(
    '109009',
  );

  /// value109010
  static final MediaTypeCode value109010 = MediaTypeCode._(
    '109010',
  );

  /// value109011
  static final MediaTypeCode value109011 = MediaTypeCode._(
    '109011',
  );

  /// value109012
  static final MediaTypeCode value109012 = MediaTypeCode._(
    '109012',
  );

  /// value109013
  static final MediaTypeCode value109013 = MediaTypeCode._(
    '109013',
  );

  /// value109014
  static final MediaTypeCode value109014 = MediaTypeCode._(
    '109014',
  );

  /// value109015
  static final MediaTypeCode value109015 = MediaTypeCode._(
    '109015',
  );

  /// value109016
  static final MediaTypeCode value109016 = MediaTypeCode._(
    '109016',
  );

  /// value109017
  static final MediaTypeCode value109017 = MediaTypeCode._(
    '109017',
  );

  /// value109018
  static final MediaTypeCode value109018 = MediaTypeCode._(
    '109018',
  );

  /// value109019
  static final MediaTypeCode value109019 = MediaTypeCode._(
    '109019',
  );

  /// value109020
  static final MediaTypeCode value109020 = MediaTypeCode._(
    '109020',
  );

  /// value109021
  static final MediaTypeCode value109021 = MediaTypeCode._(
    '109021',
  );

  /// value109022
  static final MediaTypeCode value109022 = MediaTypeCode._(
    '109022',
  );

  /// value109023
  static final MediaTypeCode value109023 = MediaTypeCode._(
    '109023',
  );

  /// value109024
  static final MediaTypeCode value109024 = MediaTypeCode._(
    '109024',
  );

  /// value109025
  static final MediaTypeCode value109025 = MediaTypeCode._(
    '109025',
  );

  /// value109026
  static final MediaTypeCode value109026 = MediaTypeCode._(
    '109026',
  );

  /// value109027
  static final MediaTypeCode value109027 = MediaTypeCode._(
    '109027',
  );

  /// value109028
  static final MediaTypeCode value109028 = MediaTypeCode._(
    '109028',
  );

  /// value109029
  static final MediaTypeCode value109029 = MediaTypeCode._(
    '109029',
  );

  /// value109030
  static final MediaTypeCode value109030 = MediaTypeCode._(
    '109030',
  );

  /// value109031
  static final MediaTypeCode value109031 = MediaTypeCode._(
    '109031',
  );

  /// value109032
  static final MediaTypeCode value109032 = MediaTypeCode._(
    '109032',
  );

  /// value109033
  static final MediaTypeCode value109033 = MediaTypeCode._(
    '109033',
  );

  /// value109034
  static final MediaTypeCode value109034 = MediaTypeCode._(
    '109034',
  );

  /// value109035
  static final MediaTypeCode value109035 = MediaTypeCode._(
    '109035',
  );

  /// value109036
  static final MediaTypeCode value109036 = MediaTypeCode._(
    '109036',
  );

  /// value109037
  static final MediaTypeCode value109037 = MediaTypeCode._(
    '109037',
  );

  /// value109038
  static final MediaTypeCode value109038 = MediaTypeCode._(
    '109038',
  );

  /// value109039
  static final MediaTypeCode value109039 = MediaTypeCode._(
    '109039',
  );

  /// value109040
  static final MediaTypeCode value109040 = MediaTypeCode._(
    '109040',
  );

  /// value109041
  static final MediaTypeCode value109041 = MediaTypeCode._(
    '109041',
  );

  /// value109042
  static final MediaTypeCode value109042 = MediaTypeCode._(
    '109042',
  );

  /// value109043
  static final MediaTypeCode value109043 = MediaTypeCode._(
    '109043',
  );

  /// value109044
  static final MediaTypeCode value109044 = MediaTypeCode._(
    '109044',
  );

  /// value109045
  static final MediaTypeCode value109045 = MediaTypeCode._(
    '109045',
  );

  /// value109046
  static final MediaTypeCode value109046 = MediaTypeCode._(
    '109046',
  );

  /// value109047
  static final MediaTypeCode value109047 = MediaTypeCode._(
    '109047',
  );

  /// value109048
  static final MediaTypeCode value109048 = MediaTypeCode._(
    '109048',
  );

  /// value109049
  static final MediaTypeCode value109049 = MediaTypeCode._(
    '109049',
  );

  /// value109050
  static final MediaTypeCode value109050 = MediaTypeCode._(
    '109050',
  );

  /// value109051
  static final MediaTypeCode value109051 = MediaTypeCode._(
    '109051',
  );

  /// value109052
  static final MediaTypeCode value109052 = MediaTypeCode._(
    '109052',
  );

  /// value109053
  static final MediaTypeCode value109053 = MediaTypeCode._(
    '109053',
  );

  /// value109054
  static final MediaTypeCode value109054 = MediaTypeCode._(
    '109054',
  );

  /// value109055
  static final MediaTypeCode value109055 = MediaTypeCode._(
    '109055',
  );

  /// value109056
  static final MediaTypeCode value109056 = MediaTypeCode._(
    '109056',
  );

  /// value109057
  static final MediaTypeCode value109057 = MediaTypeCode._(
    '109057',
  );

  /// value109058
  static final MediaTypeCode value109058 = MediaTypeCode._(
    '109058',
  );

  /// value109059
  static final MediaTypeCode value109059 = MediaTypeCode._(
    '109059',
  );

  /// value109060
  static final MediaTypeCode value109060 = MediaTypeCode._(
    '109060',
  );

  /// value109061
  static final MediaTypeCode value109061 = MediaTypeCode._(
    '109061',
  );

  /// value109063
  static final MediaTypeCode value109063 = MediaTypeCode._(
    '109063',
  );

  /// value109070
  static final MediaTypeCode value109070 = MediaTypeCode._(
    '109070',
  );

  /// value109071
  static final MediaTypeCode value109071 = MediaTypeCode._(
    '109071',
  );

  /// value109072
  static final MediaTypeCode value109072 = MediaTypeCode._(
    '109072',
  );

  /// value109073
  static final MediaTypeCode value109073 = MediaTypeCode._(
    '109073',
  );

  /// value109080
  static final MediaTypeCode value109080 = MediaTypeCode._(
    '109080',
  );

  /// value109081
  static final MediaTypeCode value109081 = MediaTypeCode._(
    '109081',
  );

  /// value109082
  static final MediaTypeCode value109082 = MediaTypeCode._(
    '109082',
  );

  /// value109083
  static final MediaTypeCode value109083 = MediaTypeCode._(
    '109083',
  );

  /// value109091
  static final MediaTypeCode value109091 = MediaTypeCode._(
    '109091',
  );

  /// value109092
  static final MediaTypeCode value109092 = MediaTypeCode._(
    '109092',
  );

  /// value109093
  static final MediaTypeCode value109093 = MediaTypeCode._(
    '109093',
  );

  /// value109094
  static final MediaTypeCode value109094 = MediaTypeCode._(
    '109094',
  );

  /// value109095
  static final MediaTypeCode value109095 = MediaTypeCode._(
    '109095',
  );

  /// value109096
  static final MediaTypeCode value109096 = MediaTypeCode._(
    '109096',
  );

  /// value109101
  static final MediaTypeCode value109101 = MediaTypeCode._(
    '109101',
  );

  /// value109102
  static final MediaTypeCode value109102 = MediaTypeCode._(
    '109102',
  );

  /// value109103
  static final MediaTypeCode value109103 = MediaTypeCode._(
    '109103',
  );

  /// value109104
  static final MediaTypeCode value109104 = MediaTypeCode._(
    '109104',
  );

  /// value109105
  static final MediaTypeCode value109105 = MediaTypeCode._(
    '109105',
  );

  /// value109106
  static final MediaTypeCode value109106 = MediaTypeCode._(
    '109106',
  );

  /// value109110
  static final MediaTypeCode value109110 = MediaTypeCode._(
    '109110',
  );

  /// value109111
  static final MediaTypeCode value109111 = MediaTypeCode._(
    '109111',
  );

  /// value109112
  static final MediaTypeCode value109112 = MediaTypeCode._(
    '109112',
  );

  /// value109113
  static final MediaTypeCode value109113 = MediaTypeCode._(
    '109113',
  );

  /// value109114
  static final MediaTypeCode value109114 = MediaTypeCode._(
    '109114',
  );

  /// value109115
  static final MediaTypeCode value109115 = MediaTypeCode._(
    '109115',
  );

  /// value109116
  static final MediaTypeCode value109116 = MediaTypeCode._(
    '109116',
  );

  /// value109117
  static final MediaTypeCode value109117 = MediaTypeCode._(
    '109117',
  );

  /// value109120
  static final MediaTypeCode value109120 = MediaTypeCode._(
    '109120',
  );

  /// value109121
  static final MediaTypeCode value109121 = MediaTypeCode._(
    '109121',
  );

  /// value109122
  static final MediaTypeCode value109122 = MediaTypeCode._(
    '109122',
  );

  /// value109123
  static final MediaTypeCode value109123 = MediaTypeCode._(
    '109123',
  );

  /// value109124
  static final MediaTypeCode value109124 = MediaTypeCode._(
    '109124',
  );

  /// value109125
  static final MediaTypeCode value109125 = MediaTypeCode._(
    '109125',
  );

  /// value109132
  static final MediaTypeCode value109132 = MediaTypeCode._(
    '109132',
  );

  /// value109133
  static final MediaTypeCode value109133 = MediaTypeCode._(
    '109133',
  );

  /// value109134
  static final MediaTypeCode value109134 = MediaTypeCode._(
    '109134',
  );

  /// value109135
  static final MediaTypeCode value109135 = MediaTypeCode._(
    '109135',
  );

  /// value109136
  static final MediaTypeCode value109136 = MediaTypeCode._(
    '109136',
  );

  /// value109200
  static final MediaTypeCode value109200 = MediaTypeCode._(
    '109200',
  );

  /// value109201
  static final MediaTypeCode value109201 = MediaTypeCode._(
    '109201',
  );

  /// value109202
  static final MediaTypeCode value109202 = MediaTypeCode._(
    '109202',
  );

  /// value109203
  static final MediaTypeCode value109203 = MediaTypeCode._(
    '109203',
  );

  /// value109204
  static final MediaTypeCode value109204 = MediaTypeCode._(
    '109204',
  );

  /// value109205
  static final MediaTypeCode value109205 = MediaTypeCode._(
    '109205',
  );

  /// value109206
  static final MediaTypeCode value109206 = MediaTypeCode._(
    '109206',
  );

  /// value109207
  static final MediaTypeCode value109207 = MediaTypeCode._(
    '109207',
  );

  /// value109208
  static final MediaTypeCode value109208 = MediaTypeCode._(
    '109208',
  );

  /// value109209
  static final MediaTypeCode value109209 = MediaTypeCode._(
    '109209',
  );

  /// value109210
  static final MediaTypeCode value109210 = MediaTypeCode._(
    '109210',
  );

  /// value109211
  static final MediaTypeCode value109211 = MediaTypeCode._(
    '109211',
  );

  /// value109212
  static final MediaTypeCode value109212 = MediaTypeCode._(
    '109212',
  );

  /// value109213
  static final MediaTypeCode value109213 = MediaTypeCode._(
    '109213',
  );

  /// value109214
  static final MediaTypeCode value109214 = MediaTypeCode._(
    '109214',
  );

  /// value109215
  static final MediaTypeCode value109215 = MediaTypeCode._(
    '109215',
  );

  /// value109216
  static final MediaTypeCode value109216 = MediaTypeCode._(
    '109216',
  );

  /// value109217
  static final MediaTypeCode value109217 = MediaTypeCode._(
    '109217',
  );

  /// value109218
  static final MediaTypeCode value109218 = MediaTypeCode._(
    '109218',
  );

  /// value109219
  static final MediaTypeCode value109219 = MediaTypeCode._(
    '109219',
  );

  /// value109220
  static final MediaTypeCode value109220 = MediaTypeCode._(
    '109220',
  );

  /// value109221
  static final MediaTypeCode value109221 = MediaTypeCode._(
    '109221',
  );

  /// value109222
  static final MediaTypeCode value109222 = MediaTypeCode._(
    '109222',
  );

  /// value109701
  static final MediaTypeCode value109701 = MediaTypeCode._(
    '109701',
  );

  /// value109702
  static final MediaTypeCode value109702 = MediaTypeCode._(
    '109702',
  );

  /// value109703
  static final MediaTypeCode value109703 = MediaTypeCode._(
    '109703',
  );

  /// value109704
  static final MediaTypeCode value109704 = MediaTypeCode._(
    '109704',
  );

  /// value109705
  static final MediaTypeCode value109705 = MediaTypeCode._(
    '109705',
  );

  /// value109706
  static final MediaTypeCode value109706 = MediaTypeCode._(
    '109706',
  );

  /// value109707
  static final MediaTypeCode value109707 = MediaTypeCode._(
    '109707',
  );

  /// value109708
  static final MediaTypeCode value109708 = MediaTypeCode._(
    '109708',
  );

  /// value109709
  static final MediaTypeCode value109709 = MediaTypeCode._(
    '109709',
  );

  /// value109710
  static final MediaTypeCode value109710 = MediaTypeCode._(
    '109710',
  );

  /// value109801
  static final MediaTypeCode value109801 = MediaTypeCode._(
    '109801',
  );

  /// value109802
  static final MediaTypeCode value109802 = MediaTypeCode._(
    '109802',
  );

  /// value109803
  static final MediaTypeCode value109803 = MediaTypeCode._(
    '109803',
  );

  /// value109804
  static final MediaTypeCode value109804 = MediaTypeCode._(
    '109804',
  );

  /// value109805
  static final MediaTypeCode value109805 = MediaTypeCode._(
    '109805',
  );

  /// value109806
  static final MediaTypeCode value109806 = MediaTypeCode._(
    '109806',
  );

  /// value109807
  static final MediaTypeCode value109807 = MediaTypeCode._(
    '109807',
  );

  /// value109808
  static final MediaTypeCode value109808 = MediaTypeCode._(
    '109808',
  );

  /// value109809
  static final MediaTypeCode value109809 = MediaTypeCode._(
    '109809',
  );

  /// value109810
  static final MediaTypeCode value109810 = MediaTypeCode._(
    '109810',
  );

  /// value109811
  static final MediaTypeCode value109811 = MediaTypeCode._(
    '109811',
  );

  /// value109812
  static final MediaTypeCode value109812 = MediaTypeCode._(
    '109812',
  );

  /// value109813
  static final MediaTypeCode value109813 = MediaTypeCode._(
    '109813',
  );

  /// value109814
  static final MediaTypeCode value109814 = MediaTypeCode._(
    '109814',
  );

  /// value109815
  static final MediaTypeCode value109815 = MediaTypeCode._(
    '109815',
  );

  /// value109816
  static final MediaTypeCode value109816 = MediaTypeCode._(
    '109816',
  );

  /// value109817
  static final MediaTypeCode value109817 = MediaTypeCode._(
    '109817',
  );

  /// value109818
  static final MediaTypeCode value109818 = MediaTypeCode._(
    '109818',
  );

  /// value109819
  static final MediaTypeCode value109819 = MediaTypeCode._(
    '109819',
  );

  /// value109820
  static final MediaTypeCode value109820 = MediaTypeCode._(
    '109820',
  );

  /// value109821
  static final MediaTypeCode value109821 = MediaTypeCode._(
    '109821',
  );

  /// value109822
  static final MediaTypeCode value109822 = MediaTypeCode._(
    '109822',
  );

  /// value109823
  static final MediaTypeCode value109823 = MediaTypeCode._(
    '109823',
  );

  /// value109824
  static final MediaTypeCode value109824 = MediaTypeCode._(
    '109824',
  );

  /// value109825
  static final MediaTypeCode value109825 = MediaTypeCode._(
    '109825',
  );

  /// value109826
  static final MediaTypeCode value109826 = MediaTypeCode._(
    '109826',
  );

  /// value109827
  static final MediaTypeCode value109827 = MediaTypeCode._(
    '109827',
  );

  /// value109828
  static final MediaTypeCode value109828 = MediaTypeCode._(
    '109828',
  );

  /// value109829
  static final MediaTypeCode value109829 = MediaTypeCode._(
    '109829',
  );

  /// value109830
  static final MediaTypeCode value109830 = MediaTypeCode._(
    '109830',
  );

  /// value109831
  static final MediaTypeCode value109831 = MediaTypeCode._(
    '109831',
  );

  /// value109832
  static final MediaTypeCode value109832 = MediaTypeCode._(
    '109832',
  );

  /// value109833
  static final MediaTypeCode value109833 = MediaTypeCode._(
    '109833',
  );

  /// value109834
  static final MediaTypeCode value109834 = MediaTypeCode._(
    '109834',
  );

  /// value109835
  static final MediaTypeCode value109835 = MediaTypeCode._(
    '109835',
  );

  /// value109836
  static final MediaTypeCode value109836 = MediaTypeCode._(
    '109836',
  );

  /// value109837
  static final MediaTypeCode value109837 = MediaTypeCode._(
    '109837',
  );

  /// value109838
  static final MediaTypeCode value109838 = MediaTypeCode._(
    '109838',
  );

  /// value109839
  static final MediaTypeCode value109839 = MediaTypeCode._(
    '109839',
  );

  /// value109840
  static final MediaTypeCode value109840 = MediaTypeCode._(
    '109840',
  );

  /// value109841
  static final MediaTypeCode value109841 = MediaTypeCode._(
    '109841',
  );

  /// value109842
  static final MediaTypeCode value109842 = MediaTypeCode._(
    '109842',
  );

  /// value109843
  static final MediaTypeCode value109843 = MediaTypeCode._(
    '109843',
  );

  /// value109844
  static final MediaTypeCode value109844 = MediaTypeCode._(
    '109844',
  );

  /// value109845
  static final MediaTypeCode value109845 = MediaTypeCode._(
    '109845',
  );

  /// value109846
  static final MediaTypeCode value109846 = MediaTypeCode._(
    '109846',
  );

  /// value109847
  static final MediaTypeCode value109847 = MediaTypeCode._(
    '109847',
  );

  /// value109848
  static final MediaTypeCode value109848 = MediaTypeCode._(
    '109848',
  );

  /// value109849
  static final MediaTypeCode value109849 = MediaTypeCode._(
    '109849',
  );

  /// value109850
  static final MediaTypeCode value109850 = MediaTypeCode._(
    '109850',
  );

  /// value109851
  static final MediaTypeCode value109851 = MediaTypeCode._(
    '109851',
  );

  /// value109852
  static final MediaTypeCode value109852 = MediaTypeCode._(
    '109852',
  );

  /// value109853
  static final MediaTypeCode value109853 = MediaTypeCode._(
    '109853',
  );

  /// value109854
  static final MediaTypeCode value109854 = MediaTypeCode._(
    '109854',
  );

  /// value109855
  static final MediaTypeCode value109855 = MediaTypeCode._(
    '109855',
  );

  /// value109856
  static final MediaTypeCode value109856 = MediaTypeCode._(
    '109856',
  );

  /// value109857
  static final MediaTypeCode value109857 = MediaTypeCode._(
    '109857',
  );

  /// value109858
  static final MediaTypeCode value109858 = MediaTypeCode._(
    '109858',
  );

  /// value109859
  static final MediaTypeCode value109859 = MediaTypeCode._(
    '109859',
  );

  /// value109860
  static final MediaTypeCode value109860 = MediaTypeCode._(
    '109860',
  );

  /// value109861
  static final MediaTypeCode value109861 = MediaTypeCode._(
    '109861',
  );

  /// value109862
  static final MediaTypeCode value109862 = MediaTypeCode._(
    '109862',
  );

  /// value109863
  static final MediaTypeCode value109863 = MediaTypeCode._(
    '109863',
  );

  /// value109864
  static final MediaTypeCode value109864 = MediaTypeCode._(
    '109864',
  );

  /// value109865
  static final MediaTypeCode value109865 = MediaTypeCode._(
    '109865',
  );

  /// value109866
  static final MediaTypeCode value109866 = MediaTypeCode._(
    '109866',
  );

  /// value109867
  static final MediaTypeCode value109867 = MediaTypeCode._(
    '109867',
  );

  /// value109868
  static final MediaTypeCode value109868 = MediaTypeCode._(
    '109868',
  );

  /// value109869
  static final MediaTypeCode value109869 = MediaTypeCode._(
    '109869',
  );

  /// value109870
  static final MediaTypeCode value109870 = MediaTypeCode._(
    '109870',
  );

  /// value109871
  static final MediaTypeCode value109871 = MediaTypeCode._(
    '109871',
  );

  /// value109872
  static final MediaTypeCode value109872 = MediaTypeCode._(
    '109872',
  );

  /// value109873
  static final MediaTypeCode value109873 = MediaTypeCode._(
    '109873',
  );

  /// value109874
  static final MediaTypeCode value109874 = MediaTypeCode._(
    '109874',
  );

  /// value109875
  static final MediaTypeCode value109875 = MediaTypeCode._(
    '109875',
  );

  /// value109876
  static final MediaTypeCode value109876 = MediaTypeCode._(
    '109876',
  );

  /// value109877
  static final MediaTypeCode value109877 = MediaTypeCode._(
    '109877',
  );

  /// value109878
  static final MediaTypeCode value109878 = MediaTypeCode._(
    '109878',
  );

  /// value109879
  static final MediaTypeCode value109879 = MediaTypeCode._(
    '109879',
  );

  /// value109880
  static final MediaTypeCode value109880 = MediaTypeCode._(
    '109880',
  );

  /// value109881
  static final MediaTypeCode value109881 = MediaTypeCode._(
    '109881',
  );

  /// value109901
  static final MediaTypeCode value109901 = MediaTypeCode._(
    '109901',
  );

  /// value109902
  static final MediaTypeCode value109902 = MediaTypeCode._(
    '109902',
  );

  /// value109903
  static final MediaTypeCode value109903 = MediaTypeCode._(
    '109903',
  );

  /// value109904
  static final MediaTypeCode value109904 = MediaTypeCode._(
    '109904',
  );

  /// value109905
  static final MediaTypeCode value109905 = MediaTypeCode._(
    '109905',
  );

  /// value109906
  static final MediaTypeCode value109906 = MediaTypeCode._(
    '109906',
  );

  /// value109907
  static final MediaTypeCode value109907 = MediaTypeCode._(
    '109907',
  );

  /// value109908
  static final MediaTypeCode value109908 = MediaTypeCode._(
    '109908',
  );

  /// value109909
  static final MediaTypeCode value109909 = MediaTypeCode._(
    '109909',
  );

  /// value109910
  static final MediaTypeCode value109910 = MediaTypeCode._(
    '109910',
  );

  /// value109911
  static final MediaTypeCode value109911 = MediaTypeCode._(
    '109911',
  );

  /// value109912
  static final MediaTypeCode value109912 = MediaTypeCode._(
    '109912',
  );

  /// value109913
  static final MediaTypeCode value109913 = MediaTypeCode._(
    '109913',
  );

  /// value109914
  static final MediaTypeCode value109914 = MediaTypeCode._(
    '109914',
  );

  /// value109915
  static final MediaTypeCode value109915 = MediaTypeCode._(
    '109915',
  );

  /// value109916
  static final MediaTypeCode value109916 = MediaTypeCode._(
    '109916',
  );

  /// value109917
  static final MediaTypeCode value109917 = MediaTypeCode._(
    '109917',
  );

  /// value109918
  static final MediaTypeCode value109918 = MediaTypeCode._(
    '109918',
  );

  /// value109919
  static final MediaTypeCode value109919 = MediaTypeCode._(
    '109919',
  );

  /// value109920
  static final MediaTypeCode value109920 = MediaTypeCode._(
    '109920',
  );

  /// value109921
  static final MediaTypeCode value109921 = MediaTypeCode._(
    '109921',
  );

  /// value109931
  static final MediaTypeCode value109931 = MediaTypeCode._(
    '109931',
  );

  /// value109932
  static final MediaTypeCode value109932 = MediaTypeCode._(
    '109932',
  );

  /// value109933
  static final MediaTypeCode value109933 = MediaTypeCode._(
    '109933',
  );

  /// value109941
  static final MediaTypeCode value109941 = MediaTypeCode._(
    '109941',
  );

  /// value109943
  static final MediaTypeCode value109943 = MediaTypeCode._(
    '109943',
  );

  /// value109991
  static final MediaTypeCode value109991 = MediaTypeCode._(
    '109991',
  );

  /// value109992
  static final MediaTypeCode value109992 = MediaTypeCode._(
    '109992',
  );

  /// value109993
  static final MediaTypeCode value109993 = MediaTypeCode._(
    '109993',
  );

  /// value109994
  static final MediaTypeCode value109994 = MediaTypeCode._(
    '109994',
  );

  /// value109995
  static final MediaTypeCode value109995 = MediaTypeCode._(
    '109995',
  );

  /// value109996
  static final MediaTypeCode value109996 = MediaTypeCode._(
    '109996',
  );

  /// value109997
  static final MediaTypeCode value109997 = MediaTypeCode._(
    '109997',
  );

  /// value109998
  static final MediaTypeCode value109998 = MediaTypeCode._(
    '109998',
  );

  /// value109999
  static final MediaTypeCode value109999 = MediaTypeCode._(
    '109999',
  );

  /// value110001
  static final MediaTypeCode value110001 = MediaTypeCode._(
    '110001',
  );

  /// value110002
  static final MediaTypeCode value110002 = MediaTypeCode._(
    '110002',
  );

  /// value110003
  static final MediaTypeCode value110003 = MediaTypeCode._(
    '110003',
  );

  /// value110004
  static final MediaTypeCode value110004 = MediaTypeCode._(
    '110004',
  );

  /// value110005
  static final MediaTypeCode value110005 = MediaTypeCode._(
    '110005',
  );

  /// value110006
  static final MediaTypeCode value110006 = MediaTypeCode._(
    '110006',
  );

  /// value110007
  static final MediaTypeCode value110007 = MediaTypeCode._(
    '110007',
  );

  /// value110008
  static final MediaTypeCode value110008 = MediaTypeCode._(
    '110008',
  );

  /// value110009
  static final MediaTypeCode value110009 = MediaTypeCode._(
    '110009',
  );

  /// value110010
  static final MediaTypeCode value110010 = MediaTypeCode._(
    '110010',
  );

  /// value110011
  static final MediaTypeCode value110011 = MediaTypeCode._(
    '110011',
  );

  /// value110012
  static final MediaTypeCode value110012 = MediaTypeCode._(
    '110012',
  );

  /// value110013
  static final MediaTypeCode value110013 = MediaTypeCode._(
    '110013',
  );

  /// value110020
  static final MediaTypeCode value110020 = MediaTypeCode._(
    '110020',
  );

  /// value110021
  static final MediaTypeCode value110021 = MediaTypeCode._(
    '110021',
  );

  /// value110022
  static final MediaTypeCode value110022 = MediaTypeCode._(
    '110022',
  );

  /// value110023
  static final MediaTypeCode value110023 = MediaTypeCode._(
    '110023',
  );

  /// value110024
  static final MediaTypeCode value110024 = MediaTypeCode._(
    '110024',
  );

  /// value110025
  static final MediaTypeCode value110025 = MediaTypeCode._(
    '110025',
  );

  /// value110026
  static final MediaTypeCode value110026 = MediaTypeCode._(
    '110026',
  );

  /// value110027
  static final MediaTypeCode value110027 = MediaTypeCode._(
    '110027',
  );

  /// value110028
  static final MediaTypeCode value110028 = MediaTypeCode._(
    '110028',
  );

  /// value110030
  static final MediaTypeCode value110030 = MediaTypeCode._(
    '110030',
  );

  /// value110031
  static final MediaTypeCode value110031 = MediaTypeCode._(
    '110031',
  );

  /// value110032
  static final MediaTypeCode value110032 = MediaTypeCode._(
    '110032',
  );

  /// value110033
  static final MediaTypeCode value110033 = MediaTypeCode._(
    '110033',
  );

  /// value110034
  static final MediaTypeCode value110034 = MediaTypeCode._(
    '110034',
  );

  /// value110035
  static final MediaTypeCode value110035 = MediaTypeCode._(
    '110035',
  );

  /// value110036
  static final MediaTypeCode value110036 = MediaTypeCode._(
    '110036',
  );

  /// value110037
  static final MediaTypeCode value110037 = MediaTypeCode._(
    '110037',
  );

  /// value110038
  static final MediaTypeCode value110038 = MediaTypeCode._(
    '110038',
  );

  /// value110100
  static final MediaTypeCode value110100 = MediaTypeCode._(
    '110100',
  );

  /// value110101
  static final MediaTypeCode value110101 = MediaTypeCode._(
    '110101',
  );

  /// value110102
  static final MediaTypeCode value110102 = MediaTypeCode._(
    '110102',
  );

  /// value110103
  static final MediaTypeCode value110103 = MediaTypeCode._(
    '110103',
  );

  /// value110104
  static final MediaTypeCode value110104 = MediaTypeCode._(
    '110104',
  );

  /// value110105
  static final MediaTypeCode value110105 = MediaTypeCode._(
    '110105',
  );

  /// value110106
  static final MediaTypeCode value110106 = MediaTypeCode._(
    '110106',
  );

  /// value110107
  static final MediaTypeCode value110107 = MediaTypeCode._(
    '110107',
  );

  /// value110108
  static final MediaTypeCode value110108 = MediaTypeCode._(
    '110108',
  );

  /// value110109
  static final MediaTypeCode value110109 = MediaTypeCode._(
    '110109',
  );

  /// value110110
  static final MediaTypeCode value110110 = MediaTypeCode._(
    '110110',
  );

  /// value110111
  static final MediaTypeCode value110111 = MediaTypeCode._(
    '110111',
  );

  /// value110112
  static final MediaTypeCode value110112 = MediaTypeCode._(
    '110112',
  );

  /// value110113
  static final MediaTypeCode value110113 = MediaTypeCode._(
    '110113',
  );

  /// value110114
  static final MediaTypeCode value110114 = MediaTypeCode._(
    '110114',
  );

  /// value110120
  static final MediaTypeCode value110120 = MediaTypeCode._(
    '110120',
  );

  /// value110121
  static final MediaTypeCode value110121 = MediaTypeCode._(
    '110121',
  );

  /// value110122
  static final MediaTypeCode value110122 = MediaTypeCode._(
    '110122',
  );

  /// value110123
  static final MediaTypeCode value110123 = MediaTypeCode._(
    '110123',
  );

  /// value110124
  static final MediaTypeCode value110124 = MediaTypeCode._(
    '110124',
  );

  /// value110125
  static final MediaTypeCode value110125 = MediaTypeCode._(
    '110125',
  );

  /// value110126
  static final MediaTypeCode value110126 = MediaTypeCode._(
    '110126',
  );

  /// value110127
  static final MediaTypeCode value110127 = MediaTypeCode._(
    '110127',
  );

  /// value110128
  static final MediaTypeCode value110128 = MediaTypeCode._(
    '110128',
  );

  /// value110129
  static final MediaTypeCode value110129 = MediaTypeCode._(
    '110129',
  );

  /// value110130
  static final MediaTypeCode value110130 = MediaTypeCode._(
    '110130',
  );

  /// value110131
  static final MediaTypeCode value110131 = MediaTypeCode._(
    '110131',
  );

  /// value110132
  static final MediaTypeCode value110132 = MediaTypeCode._(
    '110132',
  );

  /// value110133
  static final MediaTypeCode value110133 = MediaTypeCode._(
    '110133',
  );

  /// value110134
  static final MediaTypeCode value110134 = MediaTypeCode._(
    '110134',
  );

  /// value110135
  static final MediaTypeCode value110135 = MediaTypeCode._(
    '110135',
  );

  /// value110136
  static final MediaTypeCode value110136 = MediaTypeCode._(
    '110136',
  );

  /// value110137
  static final MediaTypeCode value110137 = MediaTypeCode._(
    '110137',
  );

  /// value110138
  static final MediaTypeCode value110138 = MediaTypeCode._(
    '110138',
  );

  /// value110139
  static final MediaTypeCode value110139 = MediaTypeCode._(
    '110139',
  );

  /// value110140
  static final MediaTypeCode value110140 = MediaTypeCode._(
    '110140',
  );

  /// value110141
  static final MediaTypeCode value110141 = MediaTypeCode._(
    '110141',
  );

  /// value110142
  static final MediaTypeCode value110142 = MediaTypeCode._(
    '110142',
  );

  /// value110150
  static final MediaTypeCode value110150 = MediaTypeCode._(
    '110150',
  );

  /// value110151
  static final MediaTypeCode value110151 = MediaTypeCode._(
    '110151',
  );

  /// value110152
  static final MediaTypeCode value110152 = MediaTypeCode._(
    '110152',
  );

  /// value110153
  static final MediaTypeCode value110153 = MediaTypeCode._(
    '110153',
  );

  /// value110154
  static final MediaTypeCode value110154 = MediaTypeCode._(
    '110154',
  );

  /// value110155
  static final MediaTypeCode value110155 = MediaTypeCode._(
    '110155',
  );

  /// value110180
  static final MediaTypeCode value110180 = MediaTypeCode._(
    '110180',
  );

  /// value110181
  static final MediaTypeCode value110181 = MediaTypeCode._(
    '110181',
  );

  /// value110182
  static final MediaTypeCode value110182 = MediaTypeCode._(
    '110182',
  );

  /// value110190
  static final MediaTypeCode value110190 = MediaTypeCode._(
    '110190',
  );

  /// value110500
  static final MediaTypeCode value110500 = MediaTypeCode._(
    '110500',
  );

  /// value110501
  static final MediaTypeCode value110501 = MediaTypeCode._(
    '110501',
  );

  /// value110502
  static final MediaTypeCode value110502 = MediaTypeCode._(
    '110502',
  );

  /// value110503
  static final MediaTypeCode value110503 = MediaTypeCode._(
    '110503',
  );

  /// value110504
  static final MediaTypeCode value110504 = MediaTypeCode._(
    '110504',
  );

  /// value110505
  static final MediaTypeCode value110505 = MediaTypeCode._(
    '110505',
  );

  /// value110506
  static final MediaTypeCode value110506 = MediaTypeCode._(
    '110506',
  );

  /// value110507
  static final MediaTypeCode value110507 = MediaTypeCode._(
    '110507',
  );

  /// value110508
  static final MediaTypeCode value110508 = MediaTypeCode._(
    '110508',
  );

  /// value110509
  static final MediaTypeCode value110509 = MediaTypeCode._(
    '110509',
  );

  /// value110510
  static final MediaTypeCode value110510 = MediaTypeCode._(
    '110510',
  );

  /// value110511
  static final MediaTypeCode value110511 = MediaTypeCode._(
    '110511',
  );

  /// value110512
  static final MediaTypeCode value110512 = MediaTypeCode._(
    '110512',
  );

  /// value110513
  static final MediaTypeCode value110513 = MediaTypeCode._(
    '110513',
  );

  /// value110514
  static final MediaTypeCode value110514 = MediaTypeCode._(
    '110514',
  );

  /// value110515
  static final MediaTypeCode value110515 = MediaTypeCode._(
    '110515',
  );

  /// value110516
  static final MediaTypeCode value110516 = MediaTypeCode._(
    '110516',
  );

  /// value110518
  static final MediaTypeCode value110518 = MediaTypeCode._(
    '110518',
  );

  /// value110519
  static final MediaTypeCode value110519 = MediaTypeCode._(
    '110519',
  );

  /// value110521
  static final MediaTypeCode value110521 = MediaTypeCode._(
    '110521',
  );

  /// value110522
  static final MediaTypeCode value110522 = MediaTypeCode._(
    '110522',
  );

  /// value110523
  static final MediaTypeCode value110523 = MediaTypeCode._(
    '110523',
  );

  /// value110524
  static final MediaTypeCode value110524 = MediaTypeCode._(
    '110524',
  );

  /// value110526
  static final MediaTypeCode value110526 = MediaTypeCode._(
    '110526',
  );

  /// value110527
  static final MediaTypeCode value110527 = MediaTypeCode._(
    '110527',
  );

  /// value110528
  static final MediaTypeCode value110528 = MediaTypeCode._(
    '110528',
  );

  /// value110529
  static final MediaTypeCode value110529 = MediaTypeCode._(
    '110529',
  );

  /// value110700
  static final MediaTypeCode value110700 = MediaTypeCode._(
    '110700',
  );

  /// value110701
  static final MediaTypeCode value110701 = MediaTypeCode._(
    '110701',
  );

  /// value110702
  static final MediaTypeCode value110702 = MediaTypeCode._(
    '110702',
  );

  /// value110703
  static final MediaTypeCode value110703 = MediaTypeCode._(
    '110703',
  );

  /// value110704
  static final MediaTypeCode value110704 = MediaTypeCode._(
    '110704',
  );

  /// value110705
  static final MediaTypeCode value110705 = MediaTypeCode._(
    '110705',
  );

  /// value110706
  static final MediaTypeCode value110706 = MediaTypeCode._(
    '110706',
  );

  /// value110800
  static final MediaTypeCode value110800 = MediaTypeCode._(
    '110800',
  );

  /// value110801
  static final MediaTypeCode value110801 = MediaTypeCode._(
    '110801',
  );

  /// value110802
  static final MediaTypeCode value110802 = MediaTypeCode._(
    '110802',
  );

  /// value110803
  static final MediaTypeCode value110803 = MediaTypeCode._(
    '110803',
  );

  /// value110804
  static final MediaTypeCode value110804 = MediaTypeCode._(
    '110804',
  );

  /// value110805
  static final MediaTypeCode value110805 = MediaTypeCode._(
    '110805',
  );

  /// value110806
  static final MediaTypeCode value110806 = MediaTypeCode._(
    '110806',
  );

  /// value110807
  static final MediaTypeCode value110807 = MediaTypeCode._(
    '110807',
  );

  /// value110808
  static final MediaTypeCode value110808 = MediaTypeCode._(
    '110808',
  );

  /// value110809
  static final MediaTypeCode value110809 = MediaTypeCode._(
    '110809',
  );

  /// value110810
  static final MediaTypeCode value110810 = MediaTypeCode._(
    '110810',
  );

  /// value110811
  static final MediaTypeCode value110811 = MediaTypeCode._(
    '110811',
  );

  /// value110812
  static final MediaTypeCode value110812 = MediaTypeCode._(
    '110812',
  );

  /// value110813
  static final MediaTypeCode value110813 = MediaTypeCode._(
    '110813',
  );

  /// value110814
  static final MediaTypeCode value110814 = MediaTypeCode._(
    '110814',
  );

  /// value110815
  static final MediaTypeCode value110815 = MediaTypeCode._(
    '110815',
  );

  /// value110816
  static final MediaTypeCode value110816 = MediaTypeCode._(
    '110816',
  );

  /// value110817
  static final MediaTypeCode value110817 = MediaTypeCode._(
    '110817',
  );

  /// value110818
  static final MediaTypeCode value110818 = MediaTypeCode._(
    '110818',
  );

  /// value110819
  static final MediaTypeCode value110819 = MediaTypeCode._(
    '110819',
  );

  /// value110820
  static final MediaTypeCode value110820 = MediaTypeCode._(
    '110820',
  );

  /// value110821
  static final MediaTypeCode value110821 = MediaTypeCode._(
    '110821',
  );

  /// value110822
  static final MediaTypeCode value110822 = MediaTypeCode._(
    '110822',
  );

  /// value110823
  static final MediaTypeCode value110823 = MediaTypeCode._(
    '110823',
  );

  /// value110824
  static final MediaTypeCode value110824 = MediaTypeCode._(
    '110824',
  );

  /// value110825
  static final MediaTypeCode value110825 = MediaTypeCode._(
    '110825',
  );

  /// value110826
  static final MediaTypeCode value110826 = MediaTypeCode._(
    '110826',
  );

  /// value110827
  static final MediaTypeCode value110827 = MediaTypeCode._(
    '110827',
  );

  /// value110828
  static final MediaTypeCode value110828 = MediaTypeCode._(
    '110828',
  );

  /// value110829
  static final MediaTypeCode value110829 = MediaTypeCode._(
    '110829',
  );

  /// value110830
  static final MediaTypeCode value110830 = MediaTypeCode._(
    '110830',
  );

  /// value110831
  static final MediaTypeCode value110831 = MediaTypeCode._(
    '110831',
  );

  /// value110832
  static final MediaTypeCode value110832 = MediaTypeCode._(
    '110832',
  );

  /// value110833
  static final MediaTypeCode value110833 = MediaTypeCode._(
    '110833',
  );

  /// value110834
  static final MediaTypeCode value110834 = MediaTypeCode._(
    '110834',
  );

  /// value110835
  static final MediaTypeCode value110835 = MediaTypeCode._(
    '110835',
  );

  /// value110836
  static final MediaTypeCode value110836 = MediaTypeCode._(
    '110836',
  );

  /// value110837
  static final MediaTypeCode value110837 = MediaTypeCode._(
    '110837',
  );

  /// value110838
  static final MediaTypeCode value110838 = MediaTypeCode._(
    '110838',
  );

  /// value110839
  static final MediaTypeCode value110839 = MediaTypeCode._(
    '110839',
  );

  /// value110840
  static final MediaTypeCode value110840 = MediaTypeCode._(
    '110840',
  );

  /// value110841
  static final MediaTypeCode value110841 = MediaTypeCode._(
    '110841',
  );

  /// value110842
  static final MediaTypeCode value110842 = MediaTypeCode._(
    '110842',
  );

  /// value110843
  static final MediaTypeCode value110843 = MediaTypeCode._(
    '110843',
  );

  /// value110844
  static final MediaTypeCode value110844 = MediaTypeCode._(
    '110844',
  );

  /// value110845
  static final MediaTypeCode value110845 = MediaTypeCode._(
    '110845',
  );

  /// value110846
  static final MediaTypeCode value110846 = MediaTypeCode._(
    '110846',
  );

  /// value110847
  static final MediaTypeCode value110847 = MediaTypeCode._(
    '110847',
  );

  /// value110848
  static final MediaTypeCode value110848 = MediaTypeCode._(
    '110848',
  );

  /// value110849
  static final MediaTypeCode value110849 = MediaTypeCode._(
    '110849',
  );

  /// value110850
  static final MediaTypeCode value110850 = MediaTypeCode._(
    '110850',
  );

  /// value110851
  static final MediaTypeCode value110851 = MediaTypeCode._(
    '110851',
  );

  /// value110852
  static final MediaTypeCode value110852 = MediaTypeCode._(
    '110852',
  );

  /// value110853
  static final MediaTypeCode value110853 = MediaTypeCode._(
    '110853',
  );

  /// value110854
  static final MediaTypeCode value110854 = MediaTypeCode._(
    '110854',
  );

  /// value110855
  static final MediaTypeCode value110855 = MediaTypeCode._(
    '110855',
  );

  /// value110856
  static final MediaTypeCode value110856 = MediaTypeCode._(
    '110856',
  );

  /// value110857
  static final MediaTypeCode value110857 = MediaTypeCode._(
    '110857',
  );

  /// value110858
  static final MediaTypeCode value110858 = MediaTypeCode._(
    '110858',
  );

  /// value110859
  static final MediaTypeCode value110859 = MediaTypeCode._(
    '110859',
  );

  /// value110860
  static final MediaTypeCode value110860 = MediaTypeCode._(
    '110860',
  );

  /// value110861
  static final MediaTypeCode value110861 = MediaTypeCode._(
    '110861',
  );

  /// value110862
  static final MediaTypeCode value110862 = MediaTypeCode._(
    '110862',
  );

  /// value110863
  static final MediaTypeCode value110863 = MediaTypeCode._(
    '110863',
  );

  /// value110864
  static final MediaTypeCode value110864 = MediaTypeCode._(
    '110864',
  );

  /// value110865
  static final MediaTypeCode value110865 = MediaTypeCode._(
    '110865',
  );

  /// value110866
  static final MediaTypeCode value110866 = MediaTypeCode._(
    '110866',
  );

  /// value110867
  static final MediaTypeCode value110867 = MediaTypeCode._(
    '110867',
  );

  /// value110868
  static final MediaTypeCode value110868 = MediaTypeCode._(
    '110868',
  );

  /// value110869
  static final MediaTypeCode value110869 = MediaTypeCode._(
    '110869',
  );

  /// value110870
  static final MediaTypeCode value110870 = MediaTypeCode._(
    '110870',
  );

  /// value110871
  static final MediaTypeCode value110871 = MediaTypeCode._(
    '110871',
  );

  /// value110872
  static final MediaTypeCode value110872 = MediaTypeCode._(
    '110872',
  );

  /// value110873
  static final MediaTypeCode value110873 = MediaTypeCode._(
    '110873',
  );

  /// value110874
  static final MediaTypeCode value110874 = MediaTypeCode._(
    '110874',
  );

  /// value110875
  static final MediaTypeCode value110875 = MediaTypeCode._(
    '110875',
  );

  /// value110876
  static final MediaTypeCode value110876 = MediaTypeCode._(
    '110876',
  );

  /// value110877
  static final MediaTypeCode value110877 = MediaTypeCode._(
    '110877',
  );

  /// value110901
  static final MediaTypeCode value110901 = MediaTypeCode._(
    '110901',
  );

  /// value110902
  static final MediaTypeCode value110902 = MediaTypeCode._(
    '110902',
  );

  /// value110903
  static final MediaTypeCode value110903 = MediaTypeCode._(
    '110903',
  );

  /// value110904
  static final MediaTypeCode value110904 = MediaTypeCode._(
    '110904',
  );

  /// value110905
  static final MediaTypeCode value110905 = MediaTypeCode._(
    '110905',
  );

  /// value110906
  static final MediaTypeCode value110906 = MediaTypeCode._(
    '110906',
  );

  /// value110907
  static final MediaTypeCode value110907 = MediaTypeCode._(
    '110907',
  );

  /// value110908
  static final MediaTypeCode value110908 = MediaTypeCode._(
    '110908',
  );

  /// value110909
  static final MediaTypeCode value110909 = MediaTypeCode._(
    '110909',
  );

  /// value110910
  static final MediaTypeCode value110910 = MediaTypeCode._(
    '110910',
  );

  /// value110911
  static final MediaTypeCode value110911 = MediaTypeCode._(
    '110911',
  );

  /// value111001
  static final MediaTypeCode value111001 = MediaTypeCode._(
    '111001',
  );

  /// value111002
  static final MediaTypeCode value111002 = MediaTypeCode._(
    '111002',
  );

  /// value111003
  static final MediaTypeCode value111003 = MediaTypeCode._(
    '111003',
  );

  /// value111004
  static final MediaTypeCode value111004 = MediaTypeCode._(
    '111004',
  );

  /// value111005
  static final MediaTypeCode value111005 = MediaTypeCode._(
    '111005',
  );

  /// value111006
  static final MediaTypeCode value111006 = MediaTypeCode._(
    '111006',
  );

  /// value111007
  static final MediaTypeCode value111007 = MediaTypeCode._(
    '111007',
  );

  /// value111008
  static final MediaTypeCode value111008 = MediaTypeCode._(
    '111008',
  );

  /// value111009
  static final MediaTypeCode value111009 = MediaTypeCode._(
    '111009',
  );

  /// value111010
  static final MediaTypeCode value111010 = MediaTypeCode._(
    '111010',
  );

  /// value111011
  static final MediaTypeCode value111011 = MediaTypeCode._(
    '111011',
  );

  /// value111012
  static final MediaTypeCode value111012 = MediaTypeCode._(
    '111012',
  );

  /// value111013
  static final MediaTypeCode value111013 = MediaTypeCode._(
    '111013',
  );

  /// value111014
  static final MediaTypeCode value111014 = MediaTypeCode._(
    '111014',
  );

  /// value111015
  static final MediaTypeCode value111015 = MediaTypeCode._(
    '111015',
  );

  /// value111016
  static final MediaTypeCode value111016 = MediaTypeCode._(
    '111016',
  );

  /// value111017
  static final MediaTypeCode value111017 = MediaTypeCode._(
    '111017',
  );

  /// value111018
  static final MediaTypeCode value111018 = MediaTypeCode._(
    '111018',
  );

  /// value111019
  static final MediaTypeCode value111019 = MediaTypeCode._(
    '111019',
  );

  /// value111020
  static final MediaTypeCode value111020 = MediaTypeCode._(
    '111020',
  );

  /// value111021
  static final MediaTypeCode value111021 = MediaTypeCode._(
    '111021',
  );

  /// value111022
  static final MediaTypeCode value111022 = MediaTypeCode._(
    '111022',
  );

  /// value111023
  static final MediaTypeCode value111023 = MediaTypeCode._(
    '111023',
  );

  /// value111024
  static final MediaTypeCode value111024 = MediaTypeCode._(
    '111024',
  );

  /// value111025
  static final MediaTypeCode value111025 = MediaTypeCode._(
    '111025',
  );

  /// value111026
  static final MediaTypeCode value111026 = MediaTypeCode._(
    '111026',
  );

  /// value111027
  static final MediaTypeCode value111027 = MediaTypeCode._(
    '111027',
  );

  /// value111028
  static final MediaTypeCode value111028 = MediaTypeCode._(
    '111028',
  );

  /// value111029
  static final MediaTypeCode value111029 = MediaTypeCode._(
    '111029',
  );

  /// value111030
  static final MediaTypeCode value111030 = MediaTypeCode._(
    '111030',
  );

  /// value111031
  static final MediaTypeCode value111031 = MediaTypeCode._(
    '111031',
  );

  /// value111032
  static final MediaTypeCode value111032 = MediaTypeCode._(
    '111032',
  );

  /// value111033
  static final MediaTypeCode value111033 = MediaTypeCode._(
    '111033',
  );

  /// value111034
  static final MediaTypeCode value111034 = MediaTypeCode._(
    '111034',
  );

  /// value111035
  static final MediaTypeCode value111035 = MediaTypeCode._(
    '111035',
  );

  /// value111036
  static final MediaTypeCode value111036 = MediaTypeCode._(
    '111036',
  );

  /// value111037
  static final MediaTypeCode value111037 = MediaTypeCode._(
    '111037',
  );

  /// value111038
  static final MediaTypeCode value111038 = MediaTypeCode._(
    '111038',
  );

  /// value111039
  static final MediaTypeCode value111039 = MediaTypeCode._(
    '111039',
  );

  /// value111040
  static final MediaTypeCode value111040 = MediaTypeCode._(
    '111040',
  );

  /// value111041
  static final MediaTypeCode value111041 = MediaTypeCode._(
    '111041',
  );

  /// value111042
  static final MediaTypeCode value111042 = MediaTypeCode._(
    '111042',
  );

  /// value111043
  static final MediaTypeCode value111043 = MediaTypeCode._(
    '111043',
  );

  /// value111044
  static final MediaTypeCode value111044 = MediaTypeCode._(
    '111044',
  );

  /// value111045
  static final MediaTypeCode value111045 = MediaTypeCode._(
    '111045',
  );

  /// value111046
  static final MediaTypeCode value111046 = MediaTypeCode._(
    '111046',
  );

  /// value111047
  static final MediaTypeCode value111047 = MediaTypeCode._(
    '111047',
  );

  /// value111048
  static final MediaTypeCode value111048 = MediaTypeCode._(
    '111048',
  );

  /// value111049
  static final MediaTypeCode value111049 = MediaTypeCode._(
    '111049',
  );

  /// value111050
  static final MediaTypeCode value111050 = MediaTypeCode._(
    '111050',
  );

  /// value111051
  static final MediaTypeCode value111051 = MediaTypeCode._(
    '111051',
  );

  /// value111052
  static final MediaTypeCode value111052 = MediaTypeCode._(
    '111052',
  );

  /// value111053
  static final MediaTypeCode value111053 = MediaTypeCode._(
    '111053',
  );

  /// value111054
  static final MediaTypeCode value111054 = MediaTypeCode._(
    '111054',
  );

  /// value111055
  static final MediaTypeCode value111055 = MediaTypeCode._(
    '111055',
  );

  /// value111056
  static final MediaTypeCode value111056 = MediaTypeCode._(
    '111056',
  );

  /// value111057
  static final MediaTypeCode value111057 = MediaTypeCode._(
    '111057',
  );

  /// value111058
  static final MediaTypeCode value111058 = MediaTypeCode._(
    '111058',
  );

  /// value111059
  static final MediaTypeCode value111059 = MediaTypeCode._(
    '111059',
  );

  /// value111060
  static final MediaTypeCode value111060 = MediaTypeCode._(
    '111060',
  );

  /// value111061
  static final MediaTypeCode value111061 = MediaTypeCode._(
    '111061',
  );

  /// value111062
  static final MediaTypeCode value111062 = MediaTypeCode._(
    '111062',
  );

  /// value111063
  static final MediaTypeCode value111063 = MediaTypeCode._(
    '111063',
  );

  /// value111064
  static final MediaTypeCode value111064 = MediaTypeCode._(
    '111064',
  );

  /// value111065
  static final MediaTypeCode value111065 = MediaTypeCode._(
    '111065',
  );

  /// value111066
  static final MediaTypeCode value111066 = MediaTypeCode._(
    '111066',
  );

  /// value111069
  static final MediaTypeCode value111069 = MediaTypeCode._(
    '111069',
  );

  /// value111071
  static final MediaTypeCode value111071 = MediaTypeCode._(
    '111071',
  );

  /// value111072
  static final MediaTypeCode value111072 = MediaTypeCode._(
    '111072',
  );

  /// value111081
  static final MediaTypeCode value111081 = MediaTypeCode._(
    '111081',
  );

  /// value111086
  static final MediaTypeCode value111086 = MediaTypeCode._(
    '111086',
  );

  /// value111087
  static final MediaTypeCode value111087 = MediaTypeCode._(
    '111087',
  );

  /// value111088
  static final MediaTypeCode value111088 = MediaTypeCode._(
    '111088',
  );

  /// value111089
  static final MediaTypeCode value111089 = MediaTypeCode._(
    '111089',
  );

  /// value111090
  static final MediaTypeCode value111090 = MediaTypeCode._(
    '111090',
  );

  /// value111091
  static final MediaTypeCode value111091 = MediaTypeCode._(
    '111091',
  );

  /// value111092
  static final MediaTypeCode value111092 = MediaTypeCode._(
    '111092',
  );

  /// value111093
  static final MediaTypeCode value111093 = MediaTypeCode._(
    '111093',
  );

  /// value111099
  static final MediaTypeCode value111099 = MediaTypeCode._(
    '111099',
  );

  /// value111100
  static final MediaTypeCode value111100 = MediaTypeCode._(
    '111100',
  );

  /// value111101
  static final MediaTypeCode value111101 = MediaTypeCode._(
    '111101',
  );

  /// value111102
  static final MediaTypeCode value111102 = MediaTypeCode._(
    '111102',
  );

  /// value111103
  static final MediaTypeCode value111103 = MediaTypeCode._(
    '111103',
  );

  /// value111104
  static final MediaTypeCode value111104 = MediaTypeCode._(
    '111104',
  );

  /// value111105
  static final MediaTypeCode value111105 = MediaTypeCode._(
    '111105',
  );

  /// value111111
  static final MediaTypeCode value111111 = MediaTypeCode._(
    '111111',
  );

  /// value111112
  static final MediaTypeCode value111112 = MediaTypeCode._(
    '111112',
  );

  /// value111113
  static final MediaTypeCode value111113 = MediaTypeCode._(
    '111113',
  );

  /// value111120
  static final MediaTypeCode value111120 = MediaTypeCode._(
    '111120',
  );

  /// value111121
  static final MediaTypeCode value111121 = MediaTypeCode._(
    '111121',
  );

  /// value111122
  static final MediaTypeCode value111122 = MediaTypeCode._(
    '111122',
  );

  /// value111123
  static final MediaTypeCode value111123 = MediaTypeCode._(
    '111123',
  );

  /// value111124
  static final MediaTypeCode value111124 = MediaTypeCode._(
    '111124',
  );

  /// value111125
  static final MediaTypeCode value111125 = MediaTypeCode._(
    '111125',
  );

  /// value111126
  static final MediaTypeCode value111126 = MediaTypeCode._(
    '111126',
  );

  /// value111127
  static final MediaTypeCode value111127 = MediaTypeCode._(
    '111127',
  );

  /// value111128
  static final MediaTypeCode value111128 = MediaTypeCode._(
    '111128',
  );

  /// value111129
  static final MediaTypeCode value111129 = MediaTypeCode._(
    '111129',
  );

  /// value111130
  static final MediaTypeCode value111130 = MediaTypeCode._(
    '111130',
  );

  /// value111135
  static final MediaTypeCode value111135 = MediaTypeCode._(
    '111135',
  );

  /// value111136
  static final MediaTypeCode value111136 = MediaTypeCode._(
    '111136',
  );

  /// value111137
  static final MediaTypeCode value111137 = MediaTypeCode._(
    '111137',
  );

  /// value111138
  static final MediaTypeCode value111138 = MediaTypeCode._(
    '111138',
  );

  /// value111139
  static final MediaTypeCode value111139 = MediaTypeCode._(
    '111139',
  );

  /// value111140
  static final MediaTypeCode value111140 = MediaTypeCode._(
    '111140',
  );

  /// value111141
  static final MediaTypeCode value111141 = MediaTypeCode._(
    '111141',
  );

  /// value111142
  static final MediaTypeCode value111142 = MediaTypeCode._(
    '111142',
  );

  /// value111143
  static final MediaTypeCode value111143 = MediaTypeCode._(
    '111143',
  );

  /// value111144
  static final MediaTypeCode value111144 = MediaTypeCode._(
    '111144',
  );

  /// value111145
  static final MediaTypeCode value111145 = MediaTypeCode._(
    '111145',
  );

  /// value111146
  static final MediaTypeCode value111146 = MediaTypeCode._(
    '111146',
  );

  /// value111147
  static final MediaTypeCode value111147 = MediaTypeCode._(
    '111147',
  );

  /// value111148
  static final MediaTypeCode value111148 = MediaTypeCode._(
    '111148',
  );

  /// value111149
  static final MediaTypeCode value111149 = MediaTypeCode._(
    '111149',
  );

  /// value111150
  static final MediaTypeCode value111150 = MediaTypeCode._(
    '111150',
  );

  /// value111151
  static final MediaTypeCode value111151 = MediaTypeCode._(
    '111151',
  );

  /// value111152
  static final MediaTypeCode value111152 = MediaTypeCode._(
    '111152',
  );

  /// value111153
  static final MediaTypeCode value111153 = MediaTypeCode._(
    '111153',
  );

  /// value111154
  static final MediaTypeCode value111154 = MediaTypeCode._(
    '111154',
  );

  /// value111155
  static final MediaTypeCode value111155 = MediaTypeCode._(
    '111155',
  );

  /// value111156
  static final MediaTypeCode value111156 = MediaTypeCode._(
    '111156',
  );

  /// value111157
  static final MediaTypeCode value111157 = MediaTypeCode._(
    '111157',
  );

  /// value111158
  static final MediaTypeCode value111158 = MediaTypeCode._(
    '111158',
  );

  /// value111159
  static final MediaTypeCode value111159 = MediaTypeCode._(
    '111159',
  );

  /// value111168
  static final MediaTypeCode value111168 = MediaTypeCode._(
    '111168',
  );

  /// value111170
  static final MediaTypeCode value111170 = MediaTypeCode._(
    '111170',
  );

  /// value111171
  static final MediaTypeCode value111171 = MediaTypeCode._(
    '111171',
  );

  /// value111172
  static final MediaTypeCode value111172 = MediaTypeCode._(
    '111172',
  );

  /// value111173
  static final MediaTypeCode value111173 = MediaTypeCode._(
    '111173',
  );

  /// value111174
  static final MediaTypeCode value111174 = MediaTypeCode._(
    '111174',
  );

  /// value111175
  static final MediaTypeCode value111175 = MediaTypeCode._(
    '111175',
  );

  /// value111176
  static final MediaTypeCode value111176 = MediaTypeCode._(
    '111176',
  );

  /// value111177
  static final MediaTypeCode value111177 = MediaTypeCode._(
    '111177',
  );

  /// value111178
  static final MediaTypeCode value111178 = MediaTypeCode._(
    '111178',
  );

  /// value111179
  static final MediaTypeCode value111179 = MediaTypeCode._(
    '111179',
  );

  /// value111180
  static final MediaTypeCode value111180 = MediaTypeCode._(
    '111180',
  );

  /// value111181
  static final MediaTypeCode value111181 = MediaTypeCode._(
    '111181',
  );

  /// value111182
  static final MediaTypeCode value111182 = MediaTypeCode._(
    '111182',
  );

  /// value111183
  static final MediaTypeCode value111183 = MediaTypeCode._(
    '111183',
  );

  /// value111184
  static final MediaTypeCode value111184 = MediaTypeCode._(
    '111184',
  );

  /// value111185
  static final MediaTypeCode value111185 = MediaTypeCode._(
    '111185',
  );

  /// value111186
  static final MediaTypeCode value111186 = MediaTypeCode._(
    '111186',
  );

  /// value111187
  static final MediaTypeCode value111187 = MediaTypeCode._(
    '111187',
  );

  /// value111188
  static final MediaTypeCode value111188 = MediaTypeCode._(
    '111188',
  );

  /// value111189
  static final MediaTypeCode value111189 = MediaTypeCode._(
    '111189',
  );

  /// value111190
  static final MediaTypeCode value111190 = MediaTypeCode._(
    '111190',
  );

  /// value111191
  static final MediaTypeCode value111191 = MediaTypeCode._(
    '111191',
  );

  /// value111192
  static final MediaTypeCode value111192 = MediaTypeCode._(
    '111192',
  );

  /// value111193
  static final MediaTypeCode value111193 = MediaTypeCode._(
    '111193',
  );

  /// value111194
  static final MediaTypeCode value111194 = MediaTypeCode._(
    '111194',
  );

  /// value111195
  static final MediaTypeCode value111195 = MediaTypeCode._(
    '111195',
  );

  /// value111196
  static final MediaTypeCode value111196 = MediaTypeCode._(
    '111196',
  );

  /// value111197
  static final MediaTypeCode value111197 = MediaTypeCode._(
    '111197',
  );

  /// value111198
  static final MediaTypeCode value111198 = MediaTypeCode._(
    '111198',
  );

  /// value111199
  static final MediaTypeCode value111199 = MediaTypeCode._(
    '111199',
  );

  /// value111200
  static final MediaTypeCode value111200 = MediaTypeCode._(
    '111200',
  );

  /// value111201
  static final MediaTypeCode value111201 = MediaTypeCode._(
    '111201',
  );

  /// value111202
  static final MediaTypeCode value111202 = MediaTypeCode._(
    '111202',
  );

  /// value111203
  static final MediaTypeCode value111203 = MediaTypeCode._(
    '111203',
  );

  /// value111204
  static final MediaTypeCode value111204 = MediaTypeCode._(
    '111204',
  );

  /// value111205
  static final MediaTypeCode value111205 = MediaTypeCode._(
    '111205',
  );

  /// value111206
  static final MediaTypeCode value111206 = MediaTypeCode._(
    '111206',
  );

  /// value111207
  static final MediaTypeCode value111207 = MediaTypeCode._(
    '111207',
  );

  /// value111208
  static final MediaTypeCode value111208 = MediaTypeCode._(
    '111208',
  );

  /// value111209
  static final MediaTypeCode value111209 = MediaTypeCode._(
    '111209',
  );

  /// value111210
  static final MediaTypeCode value111210 = MediaTypeCode._(
    '111210',
  );

  /// value111211
  static final MediaTypeCode value111211 = MediaTypeCode._(
    '111211',
  );

  /// value111212
  static final MediaTypeCode value111212 = MediaTypeCode._(
    '111212',
  );

  /// value111213
  static final MediaTypeCode value111213 = MediaTypeCode._(
    '111213',
  );

  /// value111214
  static final MediaTypeCode value111214 = MediaTypeCode._(
    '111214',
  );

  /// value111215
  static final MediaTypeCode value111215 = MediaTypeCode._(
    '111215',
  );

  /// value111216
  static final MediaTypeCode value111216 = MediaTypeCode._(
    '111216',
  );

  /// value111217
  static final MediaTypeCode value111217 = MediaTypeCode._(
    '111217',
  );

  /// value111218
  static final MediaTypeCode value111218 = MediaTypeCode._(
    '111218',
  );

  /// value111219
  static final MediaTypeCode value111219 = MediaTypeCode._(
    '111219',
  );

  /// value111220
  static final MediaTypeCode value111220 = MediaTypeCode._(
    '111220',
  );

  /// value111221
  static final MediaTypeCode value111221 = MediaTypeCode._(
    '111221',
  );

  /// value111222
  static final MediaTypeCode value111222 = MediaTypeCode._(
    '111222',
  );

  /// value111223
  static final MediaTypeCode value111223 = MediaTypeCode._(
    '111223',
  );

  /// value111224
  static final MediaTypeCode value111224 = MediaTypeCode._(
    '111224',
  );

  /// value111225
  static final MediaTypeCode value111225 = MediaTypeCode._(
    '111225',
  );

  /// value111233
  static final MediaTypeCode value111233 = MediaTypeCode._(
    '111233',
  );

  /// value111234
  static final MediaTypeCode value111234 = MediaTypeCode._(
    '111234',
  );

  /// value111235
  static final MediaTypeCode value111235 = MediaTypeCode._(
    '111235',
  );

  /// value111236
  static final MediaTypeCode value111236 = MediaTypeCode._(
    '111236',
  );

  /// value111237
  static final MediaTypeCode value111237 = MediaTypeCode._(
    '111237',
  );

  /// value111238
  static final MediaTypeCode value111238 = MediaTypeCode._(
    '111238',
  );

  /// value111239
  static final MediaTypeCode value111239 = MediaTypeCode._(
    '111239',
  );

  /// value111240
  static final MediaTypeCode value111240 = MediaTypeCode._(
    '111240',
  );

  /// value111241
  static final MediaTypeCode value111241 = MediaTypeCode._(
    '111241',
  );

  /// value111242
  static final MediaTypeCode value111242 = MediaTypeCode._(
    '111242',
  );

  /// value111243
  static final MediaTypeCode value111243 = MediaTypeCode._(
    '111243',
  );

  /// value111244
  static final MediaTypeCode value111244 = MediaTypeCode._(
    '111244',
  );

  /// value111245
  static final MediaTypeCode value111245 = MediaTypeCode._(
    '111245',
  );

  /// value111248
  static final MediaTypeCode value111248 = MediaTypeCode._(
    '111248',
  );

  /// value111249
  static final MediaTypeCode value111249 = MediaTypeCode._(
    '111249',
  );

  /// value111250
  static final MediaTypeCode value111250 = MediaTypeCode._(
    '111250',
  );

  /// value111251
  static final MediaTypeCode value111251 = MediaTypeCode._(
    '111251',
  );

  /// value111252
  static final MediaTypeCode value111252 = MediaTypeCode._(
    '111252',
  );

  /// value111253
  static final MediaTypeCode value111253 = MediaTypeCode._(
    '111253',
  );

  /// value111254
  static final MediaTypeCode value111254 = MediaTypeCode._(
    '111254',
  );

  /// value111255
  static final MediaTypeCode value111255 = MediaTypeCode._(
    '111255',
  );

  /// value111256
  static final MediaTypeCode value111256 = MediaTypeCode._(
    '111256',
  );

  /// value111257
  static final MediaTypeCode value111257 = MediaTypeCode._(
    '111257',
  );

  /// value111258
  static final MediaTypeCode value111258 = MediaTypeCode._(
    '111258',
  );

  /// value111259
  static final MediaTypeCode value111259 = MediaTypeCode._(
    '111259',
  );

  /// value111260
  static final MediaTypeCode value111260 = MediaTypeCode._(
    '111260',
  );

  /// value111262
  static final MediaTypeCode value111262 = MediaTypeCode._(
    '111262',
  );

  /// value111263
  static final MediaTypeCode value111263 = MediaTypeCode._(
    '111263',
  );

  /// value111264
  static final MediaTypeCode value111264 = MediaTypeCode._(
    '111264',
  );

  /// value111265
  static final MediaTypeCode value111265 = MediaTypeCode._(
    '111265',
  );

  /// value111269
  static final MediaTypeCode value111269 = MediaTypeCode._(
    '111269',
  );

  /// value111271
  static final MediaTypeCode value111271 = MediaTypeCode._(
    '111271',
  );

  /// value111273
  static final MediaTypeCode value111273 = MediaTypeCode._(
    '111273',
  );

  /// value111277
  static final MediaTypeCode value111277 = MediaTypeCode._(
    '111277',
  );

  /// value111278
  static final MediaTypeCode value111278 = MediaTypeCode._(
    '111278',
  );

  /// value111279
  static final MediaTypeCode value111279 = MediaTypeCode._(
    '111279',
  );

  /// value111281
  static final MediaTypeCode value111281 = MediaTypeCode._(
    '111281',
  );

  /// value111283
  static final MediaTypeCode value111283 = MediaTypeCode._(
    '111283',
  );

  /// value111284
  static final MediaTypeCode value111284 = MediaTypeCode._(
    '111284',
  );

  /// value111285
  static final MediaTypeCode value111285 = MediaTypeCode._(
    '111285',
  );

  /// value111286
  static final MediaTypeCode value111286 = MediaTypeCode._(
    '111286',
  );

  /// value111287
  static final MediaTypeCode value111287 = MediaTypeCode._(
    '111287',
  );

  /// value111288
  static final MediaTypeCode value111288 = MediaTypeCode._(
    '111288',
  );

  /// value111290
  static final MediaTypeCode value111290 = MediaTypeCode._(
    '111290',
  );

  /// value111291
  static final MediaTypeCode value111291 = MediaTypeCode._(
    '111291',
  );

  /// value111292
  static final MediaTypeCode value111292 = MediaTypeCode._(
    '111292',
  );

  /// value111293
  static final MediaTypeCode value111293 = MediaTypeCode._(
    '111293',
  );

  /// value111294
  static final MediaTypeCode value111294 = MediaTypeCode._(
    '111294',
  );

  /// value111296
  static final MediaTypeCode value111296 = MediaTypeCode._(
    '111296',
  );

  /// value111297
  static final MediaTypeCode value111297 = MediaTypeCode._(
    '111297',
  );

  /// value111298
  static final MediaTypeCode value111298 = MediaTypeCode._(
    '111298',
  );

  /// value111299
  static final MediaTypeCode value111299 = MediaTypeCode._(
    '111299',
  );

  /// value111300
  static final MediaTypeCode value111300 = MediaTypeCode._(
    '111300',
  );

  /// value111301
  static final MediaTypeCode value111301 = MediaTypeCode._(
    '111301',
  );

  /// value111302
  static final MediaTypeCode value111302 = MediaTypeCode._(
    '111302',
  );

  /// value111303
  static final MediaTypeCode value111303 = MediaTypeCode._(
    '111303',
  );

  /// value111304
  static final MediaTypeCode value111304 = MediaTypeCode._(
    '111304',
  );

  /// value111305
  static final MediaTypeCode value111305 = MediaTypeCode._(
    '111305',
  );

  /// value111306
  static final MediaTypeCode value111306 = MediaTypeCode._(
    '111306',
  );

  /// value111307
  static final MediaTypeCode value111307 = MediaTypeCode._(
    '111307',
  );

  /// value111308
  static final MediaTypeCode value111308 = MediaTypeCode._(
    '111308',
  );

  /// value111309
  static final MediaTypeCode value111309 = MediaTypeCode._(
    '111309',
  );

  /// value111310
  static final MediaTypeCode value111310 = MediaTypeCode._(
    '111310',
  );

  /// value111311
  static final MediaTypeCode value111311 = MediaTypeCode._(
    '111311',
  );

  /// value111312
  static final MediaTypeCode value111312 = MediaTypeCode._(
    '111312',
  );

  /// value111313
  static final MediaTypeCode value111313 = MediaTypeCode._(
    '111313',
  );

  /// value111314
  static final MediaTypeCode value111314 = MediaTypeCode._(
    '111314',
  );

  /// value111315
  static final MediaTypeCode value111315 = MediaTypeCode._(
    '111315',
  );

  /// value111316
  static final MediaTypeCode value111316 = MediaTypeCode._(
    '111316',
  );

  /// value111317
  static final MediaTypeCode value111317 = MediaTypeCode._(
    '111317',
  );

  /// value111318
  static final MediaTypeCode value111318 = MediaTypeCode._(
    '111318',
  );

  /// value111320
  static final MediaTypeCode value111320 = MediaTypeCode._(
    '111320',
  );

  /// value111321
  static final MediaTypeCode value111321 = MediaTypeCode._(
    '111321',
  );

  /// value111322
  static final MediaTypeCode value111322 = MediaTypeCode._(
    '111322',
  );

  /// value111323
  static final MediaTypeCode value111323 = MediaTypeCode._(
    '111323',
  );

  /// value111324
  static final MediaTypeCode value111324 = MediaTypeCode._(
    '111324',
  );

  /// value111325
  static final MediaTypeCode value111325 = MediaTypeCode._(
    '111325',
  );

  /// value111326
  static final MediaTypeCode value111326 = MediaTypeCode._(
    '111326',
  );

  /// value111327
  static final MediaTypeCode value111327 = MediaTypeCode._(
    '111327',
  );

  /// value111328
  static final MediaTypeCode value111328 = MediaTypeCode._(
    '111328',
  );

  /// value111329
  static final MediaTypeCode value111329 = MediaTypeCode._(
    '111329',
  );

  /// value111330
  static final MediaTypeCode value111330 = MediaTypeCode._(
    '111330',
  );

  /// value111331
  static final MediaTypeCode value111331 = MediaTypeCode._(
    '111331',
  );

  /// value111332
  static final MediaTypeCode value111332 = MediaTypeCode._(
    '111332',
  );

  /// value111333
  static final MediaTypeCode value111333 = MediaTypeCode._(
    '111333',
  );

  /// value111334
  static final MediaTypeCode value111334 = MediaTypeCode._(
    '111334',
  );

  /// value111335
  static final MediaTypeCode value111335 = MediaTypeCode._(
    '111335',
  );

  /// value111336
  static final MediaTypeCode value111336 = MediaTypeCode._(
    '111336',
  );

  /// value111338
  static final MediaTypeCode value111338 = MediaTypeCode._(
    '111338',
  );

  /// value111340
  static final MediaTypeCode value111340 = MediaTypeCode._(
    '111340',
  );

  /// value111341
  static final MediaTypeCode value111341 = MediaTypeCode._(
    '111341',
  );

  /// value111342
  static final MediaTypeCode value111342 = MediaTypeCode._(
    '111342',
  );

  /// value111343
  static final MediaTypeCode value111343 = MediaTypeCode._(
    '111343',
  );

  /// value111344
  static final MediaTypeCode value111344 = MediaTypeCode._(
    '111344',
  );

  /// value111345
  static final MediaTypeCode value111345 = MediaTypeCode._(
    '111345',
  );

  /// value111346
  static final MediaTypeCode value111346 = MediaTypeCode._(
    '111346',
  );

  /// value111347
  static final MediaTypeCode value111347 = MediaTypeCode._(
    '111347',
  );

  /// value111350
  static final MediaTypeCode value111350 = MediaTypeCode._(
    '111350',
  );

  /// value111351
  static final MediaTypeCode value111351 = MediaTypeCode._(
    '111351',
  );

  /// value111352
  static final MediaTypeCode value111352 = MediaTypeCode._(
    '111352',
  );

  /// value111353
  static final MediaTypeCode value111353 = MediaTypeCode._(
    '111353',
  );

  /// value111354
  static final MediaTypeCode value111354 = MediaTypeCode._(
    '111354',
  );

  /// value111355
  static final MediaTypeCode value111355 = MediaTypeCode._(
    '111355',
  );

  /// value111356
  static final MediaTypeCode value111356 = MediaTypeCode._(
    '111356',
  );

  /// value111357
  static final MediaTypeCode value111357 = MediaTypeCode._(
    '111357',
  );

  /// value111358
  static final MediaTypeCode value111358 = MediaTypeCode._(
    '111358',
  );

  /// value111359
  static final MediaTypeCode value111359 = MediaTypeCode._(
    '111359',
  );

  /// value111360
  static final MediaTypeCode value111360 = MediaTypeCode._(
    '111360',
  );

  /// value111361
  static final MediaTypeCode value111361 = MediaTypeCode._(
    '111361',
  );

  /// value111362
  static final MediaTypeCode value111362 = MediaTypeCode._(
    '111362',
  );

  /// value111363
  static final MediaTypeCode value111363 = MediaTypeCode._(
    '111363',
  );

  /// value111364
  static final MediaTypeCode value111364 = MediaTypeCode._(
    '111364',
  );

  /// value111365
  static final MediaTypeCode value111365 = MediaTypeCode._(
    '111365',
  );

  /// value111366
  static final MediaTypeCode value111366 = MediaTypeCode._(
    '111366',
  );

  /// value111367
  static final MediaTypeCode value111367 = MediaTypeCode._(
    '111367',
  );

  /// value111368
  static final MediaTypeCode value111368 = MediaTypeCode._(
    '111368',
  );

  /// value111369
  static final MediaTypeCode value111369 = MediaTypeCode._(
    '111369',
  );

  /// value111370
  static final MediaTypeCode value111370 = MediaTypeCode._(
    '111370',
  );

  /// value111371
  static final MediaTypeCode value111371 = MediaTypeCode._(
    '111371',
  );

  /// value111372
  static final MediaTypeCode value111372 = MediaTypeCode._(
    '111372',
  );

  /// value111373
  static final MediaTypeCode value111373 = MediaTypeCode._(
    '111373',
  );

  /// value111374
  static final MediaTypeCode value111374 = MediaTypeCode._(
    '111374',
  );

  /// value111375
  static final MediaTypeCode value111375 = MediaTypeCode._(
    '111375',
  );

  /// value111376
  static final MediaTypeCode value111376 = MediaTypeCode._(
    '111376',
  );

  /// value111377
  static final MediaTypeCode value111377 = MediaTypeCode._(
    '111377',
  );

  /// value111380
  static final MediaTypeCode value111380 = MediaTypeCode._(
    '111380',
  );

  /// value111381
  static final MediaTypeCode value111381 = MediaTypeCode._(
    '111381',
  );

  /// value111382
  static final MediaTypeCode value111382 = MediaTypeCode._(
    '111382',
  );

  /// value111383
  static final MediaTypeCode value111383 = MediaTypeCode._(
    '111383',
  );

  /// value111384
  static final MediaTypeCode value111384 = MediaTypeCode._(
    '111384',
  );

  /// value111385
  static final MediaTypeCode value111385 = MediaTypeCode._(
    '111385',
  );

  /// value111386
  static final MediaTypeCode value111386 = MediaTypeCode._(
    '111386',
  );

  /// value111387
  static final MediaTypeCode value111387 = MediaTypeCode._(
    '111387',
  );

  /// value111388
  static final MediaTypeCode value111388 = MediaTypeCode._(
    '111388',
  );

  /// value111389
  static final MediaTypeCode value111389 = MediaTypeCode._(
    '111389',
  );

  /// value111390
  static final MediaTypeCode value111390 = MediaTypeCode._(
    '111390',
  );

  /// value111391
  static final MediaTypeCode value111391 = MediaTypeCode._(
    '111391',
  );

  /// value111392
  static final MediaTypeCode value111392 = MediaTypeCode._(
    '111392',
  );

  /// value111393
  static final MediaTypeCode value111393 = MediaTypeCode._(
    '111393',
  );

  /// value111394
  static final MediaTypeCode value111394 = MediaTypeCode._(
    '111394',
  );

  /// value111395
  static final MediaTypeCode value111395 = MediaTypeCode._(
    '111395',
  );

  /// value111396
  static final MediaTypeCode value111396 = MediaTypeCode._(
    '111396',
  );

  /// value111397
  static final MediaTypeCode value111397 = MediaTypeCode._(
    '111397',
  );

  /// value111398
  static final MediaTypeCode value111398 = MediaTypeCode._(
    '111398',
  );

  /// value111399
  static final MediaTypeCode value111399 = MediaTypeCode._(
    '111399',
  );

  /// value111400
  static final MediaTypeCode value111400 = MediaTypeCode._(
    '111400',
  );

  /// value111401
  static final MediaTypeCode value111401 = MediaTypeCode._(
    '111401',
  );

  /// value111402
  static final MediaTypeCode value111402 = MediaTypeCode._(
    '111402',
  );

  /// value111403
  static final MediaTypeCode value111403 = MediaTypeCode._(
    '111403',
  );

  /// value111404
  static final MediaTypeCode value111404 = MediaTypeCode._(
    '111404',
  );

  /// value111405
  static final MediaTypeCode value111405 = MediaTypeCode._(
    '111405',
  );

  /// value111406
  static final MediaTypeCode value111406 = MediaTypeCode._(
    '111406',
  );

  /// value111407
  static final MediaTypeCode value111407 = MediaTypeCode._(
    '111407',
  );

  /// value111408
  static final MediaTypeCode value111408 = MediaTypeCode._(
    '111408',
  );

  /// value111409
  static final MediaTypeCode value111409 = MediaTypeCode._(
    '111409',
  );

  /// value111410
  static final MediaTypeCode value111410 = MediaTypeCode._(
    '111410',
  );

  /// value111411
  static final MediaTypeCode value111411 = MediaTypeCode._(
    '111411',
  );

  /// value111412
  static final MediaTypeCode value111412 = MediaTypeCode._(
    '111412',
  );

  /// value111413
  static final MediaTypeCode value111413 = MediaTypeCode._(
    '111413',
  );

  /// value111414
  static final MediaTypeCode value111414 = MediaTypeCode._(
    '111414',
  );

  /// value111415
  static final MediaTypeCode value111415 = MediaTypeCode._(
    '111415',
  );

  /// value111416
  static final MediaTypeCode value111416 = MediaTypeCode._(
    '111416',
  );

  /// value111417
  static final MediaTypeCode value111417 = MediaTypeCode._(
    '111417',
  );

  /// value111418
  static final MediaTypeCode value111418 = MediaTypeCode._(
    '111418',
  );

  /// value111419
  static final MediaTypeCode value111419 = MediaTypeCode._(
    '111419',
  );

  /// value111420
  static final MediaTypeCode value111420 = MediaTypeCode._(
    '111420',
  );

  /// value111421
  static final MediaTypeCode value111421 = MediaTypeCode._(
    '111421',
  );

  /// value111423
  static final MediaTypeCode value111423 = MediaTypeCode._(
    '111423',
  );

  /// value111424
  static final MediaTypeCode value111424 = MediaTypeCode._(
    '111424',
  );

  /// value111425
  static final MediaTypeCode value111425 = MediaTypeCode._(
    '111425',
  );

  /// value111426
  static final MediaTypeCode value111426 = MediaTypeCode._(
    '111426',
  );

  /// value111427
  static final MediaTypeCode value111427 = MediaTypeCode._(
    '111427',
  );

  /// value111428
  static final MediaTypeCode value111428 = MediaTypeCode._(
    '111428',
  );

  /// value111429
  static final MediaTypeCode value111429 = MediaTypeCode._(
    '111429',
  );

  /// value111430
  static final MediaTypeCode value111430 = MediaTypeCode._(
    '111430',
  );

  /// value111431
  static final MediaTypeCode value111431 = MediaTypeCode._(
    '111431',
  );

  /// value111432
  static final MediaTypeCode value111432 = MediaTypeCode._(
    '111432',
  );

  /// value111433
  static final MediaTypeCode value111433 = MediaTypeCode._(
    '111433',
  );

  /// value111434
  static final MediaTypeCode value111434 = MediaTypeCode._(
    '111434',
  );

  /// value111435
  static final MediaTypeCode value111435 = MediaTypeCode._(
    '111435',
  );

  /// value111436
  static final MediaTypeCode value111436 = MediaTypeCode._(
    '111436',
  );

  /// value111437
  static final MediaTypeCode value111437 = MediaTypeCode._(
    '111437',
  );

  /// value111438
  static final MediaTypeCode value111438 = MediaTypeCode._(
    '111438',
  );

  /// value111439
  static final MediaTypeCode value111439 = MediaTypeCode._(
    '111439',
  );

  /// value111440
  static final MediaTypeCode value111440 = MediaTypeCode._(
    '111440',
  );

  /// value111441
  static final MediaTypeCode value111441 = MediaTypeCode._(
    '111441',
  );

  /// value111442
  static final MediaTypeCode value111442 = MediaTypeCode._(
    '111442',
  );

  /// value111443
  static final MediaTypeCode value111443 = MediaTypeCode._(
    '111443',
  );

  /// value111444
  static final MediaTypeCode value111444 = MediaTypeCode._(
    '111444',
  );

  /// value111445
  static final MediaTypeCode value111445 = MediaTypeCode._(
    '111445',
  );

  /// value111446
  static final MediaTypeCode value111446 = MediaTypeCode._(
    '111446',
  );

  /// value111447
  static final MediaTypeCode value111447 = MediaTypeCode._(
    '111447',
  );

  /// value111448
  static final MediaTypeCode value111448 = MediaTypeCode._(
    '111448',
  );

  /// value111449
  static final MediaTypeCode value111449 = MediaTypeCode._(
    '111449',
  );

  /// value111450
  static final MediaTypeCode value111450 = MediaTypeCode._(
    '111450',
  );

  /// value111451
  static final MediaTypeCode value111451 = MediaTypeCode._(
    '111451',
  );

  /// value111452
  static final MediaTypeCode value111452 = MediaTypeCode._(
    '111452',
  );

  /// value111453
  static final MediaTypeCode value111453 = MediaTypeCode._(
    '111453',
  );

  /// value111454
  static final MediaTypeCode value111454 = MediaTypeCode._(
    '111454',
  );

  /// value111455
  static final MediaTypeCode value111455 = MediaTypeCode._(
    '111455',
  );

  /// value111456
  static final MediaTypeCode value111456 = MediaTypeCode._(
    '111456',
  );

  /// value111457
  static final MediaTypeCode value111457 = MediaTypeCode._(
    '111457',
  );

  /// value111458
  static final MediaTypeCode value111458 = MediaTypeCode._(
    '111458',
  );

  /// value111459
  static final MediaTypeCode value111459 = MediaTypeCode._(
    '111459',
  );

  /// value111460
  static final MediaTypeCode value111460 = MediaTypeCode._(
    '111460',
  );

  /// value111461
  static final MediaTypeCode value111461 = MediaTypeCode._(
    '111461',
  );

  /// value111462
  static final MediaTypeCode value111462 = MediaTypeCode._(
    '111462',
  );

  /// value111463
  static final MediaTypeCode value111463 = MediaTypeCode._(
    '111463',
  );

  /// value111464
  static final MediaTypeCode value111464 = MediaTypeCode._(
    '111464',
  );

  /// value111465
  static final MediaTypeCode value111465 = MediaTypeCode._(
    '111465',
  );

  /// value111466
  static final MediaTypeCode value111466 = MediaTypeCode._(
    '111466',
  );

  /// value111467
  static final MediaTypeCode value111467 = MediaTypeCode._(
    '111467',
  );

  /// value111468
  static final MediaTypeCode value111468 = MediaTypeCode._(
    '111468',
  );

  /// value111469
  static final MediaTypeCode value111469 = MediaTypeCode._(
    '111469',
  );

  /// value111470
  static final MediaTypeCode value111470 = MediaTypeCode._(
    '111470',
  );

  /// value111471
  static final MediaTypeCode value111471 = MediaTypeCode._(
    '111471',
  );

  /// value111472
  static final MediaTypeCode value111472 = MediaTypeCode._(
    '111472',
  );

  /// value111473
  static final MediaTypeCode value111473 = MediaTypeCode._(
    '111473',
  );

  /// value111474
  static final MediaTypeCode value111474 = MediaTypeCode._(
    '111474',
  );

  /// value111475
  static final MediaTypeCode value111475 = MediaTypeCode._(
    '111475',
  );

  /// value111476
  static final MediaTypeCode value111476 = MediaTypeCode._(
    '111476',
  );

  /// value111477
  static final MediaTypeCode value111477 = MediaTypeCode._(
    '111477',
  );

  /// value111478
  static final MediaTypeCode value111478 = MediaTypeCode._(
    '111478',
  );

  /// value111479
  static final MediaTypeCode value111479 = MediaTypeCode._(
    '111479',
  );

  /// value111480
  static final MediaTypeCode value111480 = MediaTypeCode._(
    '111480',
  );

  /// value111481
  static final MediaTypeCode value111481 = MediaTypeCode._(
    '111481',
  );

  /// value111482
  static final MediaTypeCode value111482 = MediaTypeCode._(
    '111482',
  );

  /// value111483
  static final MediaTypeCode value111483 = MediaTypeCode._(
    '111483',
  );

  /// value111484
  static final MediaTypeCode value111484 = MediaTypeCode._(
    '111484',
  );

  /// value111485
  static final MediaTypeCode value111485 = MediaTypeCode._(
    '111485',
  );

  /// value111486
  static final MediaTypeCode value111486 = MediaTypeCode._(
    '111486',
  );

  /// value111487
  static final MediaTypeCode value111487 = MediaTypeCode._(
    '111487',
  );

  /// value111488
  static final MediaTypeCode value111488 = MediaTypeCode._(
    '111488',
  );

  /// value111489
  static final MediaTypeCode value111489 = MediaTypeCode._(
    '111489',
  );

  /// value111490
  static final MediaTypeCode value111490 = MediaTypeCode._(
    '111490',
  );

  /// value111491
  static final MediaTypeCode value111491 = MediaTypeCode._(
    '111491',
  );

  /// value111492
  static final MediaTypeCode value111492 = MediaTypeCode._(
    '111492',
  );

  /// value111494
  static final MediaTypeCode value111494 = MediaTypeCode._(
    '111494',
  );

  /// value111495
  static final MediaTypeCode value111495 = MediaTypeCode._(
    '111495',
  );

  /// value111496
  static final MediaTypeCode value111496 = MediaTypeCode._(
    '111496',
  );

  /// value111497
  static final MediaTypeCode value111497 = MediaTypeCode._(
    '111497',
  );

  /// value111498
  static final MediaTypeCode value111498 = MediaTypeCode._(
    '111498',
  );

  /// value111499
  static final MediaTypeCode value111499 = MediaTypeCode._(
    '111499',
  );

  /// value111500
  static final MediaTypeCode value111500 = MediaTypeCode._(
    '111500',
  );

  /// value111501
  static final MediaTypeCode value111501 = MediaTypeCode._(
    '111501',
  );

  /// value111502
  static final MediaTypeCode value111502 = MediaTypeCode._(
    '111502',
  );

  /// value111503
  static final MediaTypeCode value111503 = MediaTypeCode._(
    '111503',
  );

  /// value111504
  static final MediaTypeCode value111504 = MediaTypeCode._(
    '111504',
  );

  /// value111505
  static final MediaTypeCode value111505 = MediaTypeCode._(
    '111505',
  );

  /// value111506
  static final MediaTypeCode value111506 = MediaTypeCode._(
    '111506',
  );

  /// value111507
  static final MediaTypeCode value111507 = MediaTypeCode._(
    '111507',
  );

  /// value111508
  static final MediaTypeCode value111508 = MediaTypeCode._(
    '111508',
  );

  /// value111509
  static final MediaTypeCode value111509 = MediaTypeCode._(
    '111509',
  );

  /// value111510
  static final MediaTypeCode value111510 = MediaTypeCode._(
    '111510',
  );

  /// value111511
  static final MediaTypeCode value111511 = MediaTypeCode._(
    '111511',
  );

  /// value111512
  static final MediaTypeCode value111512 = MediaTypeCode._(
    '111512',
  );

  /// value111513
  static final MediaTypeCode value111513 = MediaTypeCode._(
    '111513',
  );

  /// value111514
  static final MediaTypeCode value111514 = MediaTypeCode._(
    '111514',
  );

  /// value111515
  static final MediaTypeCode value111515 = MediaTypeCode._(
    '111515',
  );

  /// value111516
  static final MediaTypeCode value111516 = MediaTypeCode._(
    '111516',
  );

  /// value111517
  static final MediaTypeCode value111517 = MediaTypeCode._(
    '111517',
  );

  /// value111518
  static final MediaTypeCode value111518 = MediaTypeCode._(
    '111518',
  );

  /// value111519
  static final MediaTypeCode value111519 = MediaTypeCode._(
    '111519',
  );

  /// value111520
  static final MediaTypeCode value111520 = MediaTypeCode._(
    '111520',
  );

  /// value111521
  static final MediaTypeCode value111521 = MediaTypeCode._(
    '111521',
  );

  /// value111522
  static final MediaTypeCode value111522 = MediaTypeCode._(
    '111522',
  );

  /// value111523
  static final MediaTypeCode value111523 = MediaTypeCode._(
    '111523',
  );

  /// value111524
  static final MediaTypeCode value111524 = MediaTypeCode._(
    '111524',
  );

  /// value111525
  static final MediaTypeCode value111525 = MediaTypeCode._(
    '111525',
  );

  /// value111526
  static final MediaTypeCode value111526 = MediaTypeCode._(
    '111526',
  );

  /// value111527
  static final MediaTypeCode value111527 = MediaTypeCode._(
    '111527',
  );

  /// value111528
  static final MediaTypeCode value111528 = MediaTypeCode._(
    '111528',
  );

  /// value111529
  static final MediaTypeCode value111529 = MediaTypeCode._(
    '111529',
  );

  /// value111530
  static final MediaTypeCode value111530 = MediaTypeCode._(
    '111530',
  );

  /// value111531
  static final MediaTypeCode value111531 = MediaTypeCode._(
    '111531',
  );

  /// value111532
  static final MediaTypeCode value111532 = MediaTypeCode._(
    '111532',
  );

  /// value111533
  static final MediaTypeCode value111533 = MediaTypeCode._(
    '111533',
  );

  /// value111534
  static final MediaTypeCode value111534 = MediaTypeCode._(
    '111534',
  );

  /// value111535
  static final MediaTypeCode value111535 = MediaTypeCode._(
    '111535',
  );

  /// value111536
  static final MediaTypeCode value111536 = MediaTypeCode._(
    '111536',
  );

  /// value111537
  static final MediaTypeCode value111537 = MediaTypeCode._(
    '111537',
  );

  /// value111538
  static final MediaTypeCode value111538 = MediaTypeCode._(
    '111538',
  );

  /// value111539
  static final MediaTypeCode value111539 = MediaTypeCode._(
    '111539',
  );

  /// value111540
  static final MediaTypeCode value111540 = MediaTypeCode._(
    '111540',
  );

  /// value111541
  static final MediaTypeCode value111541 = MediaTypeCode._(
    '111541',
  );

  /// value111542
  static final MediaTypeCode value111542 = MediaTypeCode._(
    '111542',
  );

  /// value111543
  static final MediaTypeCode value111543 = MediaTypeCode._(
    '111543',
  );

  /// value111544
  static final MediaTypeCode value111544 = MediaTypeCode._(
    '111544',
  );

  /// value111545
  static final MediaTypeCode value111545 = MediaTypeCode._(
    '111545',
  );

  /// value111546
  static final MediaTypeCode value111546 = MediaTypeCode._(
    '111546',
  );

  /// value111547
  static final MediaTypeCode value111547 = MediaTypeCode._(
    '111547',
  );

  /// value111548
  static final MediaTypeCode value111548 = MediaTypeCode._(
    '111548',
  );

  /// value111549
  static final MediaTypeCode value111549 = MediaTypeCode._(
    '111549',
  );

  /// value111550
  static final MediaTypeCode value111550 = MediaTypeCode._(
    '111550',
  );

  /// value111551
  static final MediaTypeCode value111551 = MediaTypeCode._(
    '111551',
  );

  /// value111552
  static final MediaTypeCode value111552 = MediaTypeCode._(
    '111552',
  );

  /// value111553
  static final MediaTypeCode value111553 = MediaTypeCode._(
    '111553',
  );

  /// value111554
  static final MediaTypeCode value111554 = MediaTypeCode._(
    '111554',
  );

  /// value111555
  static final MediaTypeCode value111555 = MediaTypeCode._(
    '111555',
  );

  /// value111556
  static final MediaTypeCode value111556 = MediaTypeCode._(
    '111556',
  );

  /// value111557
  static final MediaTypeCode value111557 = MediaTypeCode._(
    '111557',
  );

  /// value111558
  static final MediaTypeCode value111558 = MediaTypeCode._(
    '111558',
  );

  /// value111559
  static final MediaTypeCode value111559 = MediaTypeCode._(
    '111559',
  );

  /// value111560
  static final MediaTypeCode value111560 = MediaTypeCode._(
    '111560',
  );

  /// value111561
  static final MediaTypeCode value111561 = MediaTypeCode._(
    '111561',
  );

  /// value111562
  static final MediaTypeCode value111562 = MediaTypeCode._(
    '111562',
  );

  /// value111563
  static final MediaTypeCode value111563 = MediaTypeCode._(
    '111563',
  );

  /// value111564
  static final MediaTypeCode value111564 = MediaTypeCode._(
    '111564',
  );

  /// value111565
  static final MediaTypeCode value111565 = MediaTypeCode._(
    '111565',
  );

  /// value111566
  static final MediaTypeCode value111566 = MediaTypeCode._(
    '111566',
  );

  /// value111567
  static final MediaTypeCode value111567 = MediaTypeCode._(
    '111567',
  );

  /// value111568
  static final MediaTypeCode value111568 = MediaTypeCode._(
    '111568',
  );

  /// value111569
  static final MediaTypeCode value111569 = MediaTypeCode._(
    '111569',
  );

  /// value111570
  static final MediaTypeCode value111570 = MediaTypeCode._(
    '111570',
  );

  /// value111571
  static final MediaTypeCode value111571 = MediaTypeCode._(
    '111571',
  );

  /// value111572
  static final MediaTypeCode value111572 = MediaTypeCode._(
    '111572',
  );

  /// value111573
  static final MediaTypeCode value111573 = MediaTypeCode._(
    '111573',
  );

  /// value111574
  static final MediaTypeCode value111574 = MediaTypeCode._(
    '111574',
  );

  /// value111575
  static final MediaTypeCode value111575 = MediaTypeCode._(
    '111575',
  );

  /// value111576
  static final MediaTypeCode value111576 = MediaTypeCode._(
    '111576',
  );

  /// value111577
  static final MediaTypeCode value111577 = MediaTypeCode._(
    '111577',
  );

  /// value111578
  static final MediaTypeCode value111578 = MediaTypeCode._(
    '111578',
  );

  /// value111579
  static final MediaTypeCode value111579 = MediaTypeCode._(
    '111579',
  );

  /// value111580
  static final MediaTypeCode value111580 = MediaTypeCode._(
    '111580',
  );

  /// value111581
  static final MediaTypeCode value111581 = MediaTypeCode._(
    '111581',
  );

  /// value111582
  static final MediaTypeCode value111582 = MediaTypeCode._(
    '111582',
  );

  /// value111583
  static final MediaTypeCode value111583 = MediaTypeCode._(
    '111583',
  );

  /// value111584
  static final MediaTypeCode value111584 = MediaTypeCode._(
    '111584',
  );

  /// value111585
  static final MediaTypeCode value111585 = MediaTypeCode._(
    '111585',
  );

  /// value111586
  static final MediaTypeCode value111586 = MediaTypeCode._(
    '111586',
  );

  /// value111587
  static final MediaTypeCode value111587 = MediaTypeCode._(
    '111587',
  );

  /// value111590
  static final MediaTypeCode value111590 = MediaTypeCode._(
    '111590',
  );

  /// value111591
  static final MediaTypeCode value111591 = MediaTypeCode._(
    '111591',
  );

  /// value111592
  static final MediaTypeCode value111592 = MediaTypeCode._(
    '111592',
  );

  /// value111593
  static final MediaTypeCode value111593 = MediaTypeCode._(
    '111593',
  );

  /// value111601
  static final MediaTypeCode value111601 = MediaTypeCode._(
    '111601',
  );

  /// value111602
  static final MediaTypeCode value111602 = MediaTypeCode._(
    '111602',
  );

  /// value111603
  static final MediaTypeCode value111603 = MediaTypeCode._(
    '111603',
  );

  /// value111604
  static final MediaTypeCode value111604 = MediaTypeCode._(
    '111604',
  );

  /// value111605
  static final MediaTypeCode value111605 = MediaTypeCode._(
    '111605',
  );

  /// value111606
  static final MediaTypeCode value111606 = MediaTypeCode._(
    '111606',
  );

  /// value111607
  static final MediaTypeCode value111607 = MediaTypeCode._(
    '111607',
  );

  /// value111609
  static final MediaTypeCode value111609 = MediaTypeCode._(
    '111609',
  );

  /// value111621
  static final MediaTypeCode value111621 = MediaTypeCode._(
    '111621',
  );

  /// value111622
  static final MediaTypeCode value111622 = MediaTypeCode._(
    '111622',
  );

  /// value111623
  static final MediaTypeCode value111623 = MediaTypeCode._(
    '111623',
  );

  /// value111625
  static final MediaTypeCode value111625 = MediaTypeCode._(
    '111625',
  );

  /// value111626
  static final MediaTypeCode value111626 = MediaTypeCode._(
    '111626',
  );

  /// value111627
  static final MediaTypeCode value111627 = MediaTypeCode._(
    '111627',
  );

  /// value111628
  static final MediaTypeCode value111628 = MediaTypeCode._(
    '111628',
  );

  /// value111629
  static final MediaTypeCode value111629 = MediaTypeCode._(
    '111629',
  );

  /// value111630
  static final MediaTypeCode value111630 = MediaTypeCode._(
    '111630',
  );

  /// value111631
  static final MediaTypeCode value111631 = MediaTypeCode._(
    '111631',
  );

  /// value111632
  static final MediaTypeCode value111632 = MediaTypeCode._(
    '111632',
  );

  /// value111633
  static final MediaTypeCode value111633 = MediaTypeCode._(
    '111633',
  );

  /// value111634
  static final MediaTypeCode value111634 = MediaTypeCode._(
    '111634',
  );

  /// value111635
  static final MediaTypeCode value111635 = MediaTypeCode._(
    '111635',
  );

  /// value111636
  static final MediaTypeCode value111636 = MediaTypeCode._(
    '111636',
  );

  /// value111637
  static final MediaTypeCode value111637 = MediaTypeCode._(
    '111637',
  );

  /// value111638
  static final MediaTypeCode value111638 = MediaTypeCode._(
    '111638',
  );

  /// value111641
  static final MediaTypeCode value111641 = MediaTypeCode._(
    '111641',
  );

  /// value111642
  static final MediaTypeCode value111642 = MediaTypeCode._(
    '111642',
  );

  /// value111643
  static final MediaTypeCode value111643 = MediaTypeCode._(
    '111643',
  );

  /// value111644
  static final MediaTypeCode value111644 = MediaTypeCode._(
    '111644',
  );

  /// value111645
  static final MediaTypeCode value111645 = MediaTypeCode._(
    '111645',
  );

  /// value111646
  static final MediaTypeCode value111646 = MediaTypeCode._(
    '111646',
  );

  /// value111671
  static final MediaTypeCode value111671 = MediaTypeCode._(
    '111671',
  );

  /// value111672
  static final MediaTypeCode value111672 = MediaTypeCode._(
    '111672',
  );

  /// value111673
  static final MediaTypeCode value111673 = MediaTypeCode._(
    '111673',
  );

  /// value111674
  static final MediaTypeCode value111674 = MediaTypeCode._(
    '111674',
  );

  /// value111675
  static final MediaTypeCode value111675 = MediaTypeCode._(
    '111675',
  );

  /// value111676
  static final MediaTypeCode value111676 = MediaTypeCode._(
    '111676',
  );

  /// value111677
  static final MediaTypeCode value111677 = MediaTypeCode._(
    '111677',
  );

  /// value111678
  static final MediaTypeCode value111678 = MediaTypeCode._(
    '111678',
  );

  /// value111679
  static final MediaTypeCode value111679 = MediaTypeCode._(
    '111679',
  );

  /// value111680
  static final MediaTypeCode value111680 = MediaTypeCode._(
    '111680',
  );

  /// value111685
  static final MediaTypeCode value111685 = MediaTypeCode._(
    '111685',
  );

  /// value111686
  static final MediaTypeCode value111686 = MediaTypeCode._(
    '111686',
  );

  /// value111687
  static final MediaTypeCode value111687 = MediaTypeCode._(
    '111687',
  );

  /// value111688
  static final MediaTypeCode value111688 = MediaTypeCode._(
    '111688',
  );

  /// value111689
  static final MediaTypeCode value111689 = MediaTypeCode._(
    '111689',
  );

  /// value111690
  static final MediaTypeCode value111690 = MediaTypeCode._(
    '111690',
  );

  /// value111691
  static final MediaTypeCode value111691 = MediaTypeCode._(
    '111691',
  );

  /// value111692
  static final MediaTypeCode value111692 = MediaTypeCode._(
    '111692',
  );

  /// value111693
  static final MediaTypeCode value111693 = MediaTypeCode._(
    '111693',
  );

  /// value111694
  static final MediaTypeCode value111694 = MediaTypeCode._(
    '111694',
  );

  /// value111695
  static final MediaTypeCode value111695 = MediaTypeCode._(
    '111695',
  );

  /// value111696
  static final MediaTypeCode value111696 = MediaTypeCode._(
    '111696',
  );

  /// value111697
  static final MediaTypeCode value111697 = MediaTypeCode._(
    '111697',
  );

  /// value111698
  static final MediaTypeCode value111698 = MediaTypeCode._(
    '111698',
  );

  /// value111700
  static final MediaTypeCode value111700 = MediaTypeCode._(
    '111700',
  );

  /// value111701
  static final MediaTypeCode value111701 = MediaTypeCode._(
    '111701',
  );

  /// value111702
  static final MediaTypeCode value111702 = MediaTypeCode._(
    '111702',
  );

  /// value111703
  static final MediaTypeCode value111703 = MediaTypeCode._(
    '111703',
  );

  /// value111704
  static final MediaTypeCode value111704 = MediaTypeCode._(
    '111704',
  );

  /// value111705
  static final MediaTypeCode value111705 = MediaTypeCode._(
    '111705',
  );

  /// value111706
  static final MediaTypeCode value111706 = MediaTypeCode._(
    '111706',
  );

  /// value111707
  static final MediaTypeCode value111707 = MediaTypeCode._(
    '111707',
  );

  /// value111708
  static final MediaTypeCode value111708 = MediaTypeCode._(
    '111708',
  );

  /// value111709
  static final MediaTypeCode value111709 = MediaTypeCode._(
    '111709',
  );

  /// value111710
  static final MediaTypeCode value111710 = MediaTypeCode._(
    '111710',
  );

  /// value111711
  static final MediaTypeCode value111711 = MediaTypeCode._(
    '111711',
  );

  /// value111712
  static final MediaTypeCode value111712 = MediaTypeCode._(
    '111712',
  );

  /// value111718
  static final MediaTypeCode value111718 = MediaTypeCode._(
    '111718',
  );

  /// value111719
  static final MediaTypeCode value111719 = MediaTypeCode._(
    '111719',
  );

  /// value111720
  static final MediaTypeCode value111720 = MediaTypeCode._(
    '111720',
  );

  /// value111721
  static final MediaTypeCode value111721 = MediaTypeCode._(
    '111721',
  );

  /// value111723
  static final MediaTypeCode value111723 = MediaTypeCode._(
    '111723',
  );

  /// value111724
  static final MediaTypeCode value111724 = MediaTypeCode._(
    '111724',
  );

  /// value111726
  static final MediaTypeCode value111726 = MediaTypeCode._(
    '111726',
  );

  /// value111727
  static final MediaTypeCode value111727 = MediaTypeCode._(
    '111727',
  );

  /// value111729
  static final MediaTypeCode value111729 = MediaTypeCode._(
    '111729',
  );

  /// value111741
  static final MediaTypeCode value111741 = MediaTypeCode._(
    '111741',
  );

  /// value111742
  static final MediaTypeCode value111742 = MediaTypeCode._(
    '111742',
  );

  /// value111743
  static final MediaTypeCode value111743 = MediaTypeCode._(
    '111743',
  );

  /// value111744
  static final MediaTypeCode value111744 = MediaTypeCode._(
    '111744',
  );

  /// value111745
  static final MediaTypeCode value111745 = MediaTypeCode._(
    '111745',
  );

  /// value111746
  static final MediaTypeCode value111746 = MediaTypeCode._(
    '111746',
  );

  /// value111747
  static final MediaTypeCode value111747 = MediaTypeCode._(
    '111747',
  );

  /// value111748
  static final MediaTypeCode value111748 = MediaTypeCode._(
    '111748',
  );

  /// value111749
  static final MediaTypeCode value111749 = MediaTypeCode._(
    '111749',
  );

  /// value111750
  static final MediaTypeCode value111750 = MediaTypeCode._(
    '111750',
  );

  /// value111751
  static final MediaTypeCode value111751 = MediaTypeCode._(
    '111751',
  );

  /// value111752
  static final MediaTypeCode value111752 = MediaTypeCode._(
    '111752',
  );

  /// value111753
  static final MediaTypeCode value111753 = MediaTypeCode._(
    '111753',
  );

  /// value111754
  static final MediaTypeCode value111754 = MediaTypeCode._(
    '111754',
  );

  /// value111755
  static final MediaTypeCode value111755 = MediaTypeCode._(
    '111755',
  );

  /// value111756
  static final MediaTypeCode value111756 = MediaTypeCode._(
    '111756',
  );

  /// value111760
  static final MediaTypeCode value111760 = MediaTypeCode._(
    '111760',
  );

  /// value111761
  static final MediaTypeCode value111761 = MediaTypeCode._(
    '111761',
  );

  /// value111762
  static final MediaTypeCode value111762 = MediaTypeCode._(
    '111762',
  );

  /// value111763
  static final MediaTypeCode value111763 = MediaTypeCode._(
    '111763',
  );

  /// value111764
  static final MediaTypeCode value111764 = MediaTypeCode._(
    '111764',
  );

  /// value111765
  static final MediaTypeCode value111765 = MediaTypeCode._(
    '111765',
  );

  /// value111766
  static final MediaTypeCode value111766 = MediaTypeCode._(
    '111766',
  );

  /// value111767
  static final MediaTypeCode value111767 = MediaTypeCode._(
    '111767',
  );

  /// value111768
  static final MediaTypeCode value111768 = MediaTypeCode._(
    '111768',
  );

  /// value111769
  static final MediaTypeCode value111769 = MediaTypeCode._(
    '111769',
  );

  /// value111770
  static final MediaTypeCode value111770 = MediaTypeCode._(
    '111770',
  );

  /// value111771
  static final MediaTypeCode value111771 = MediaTypeCode._(
    '111771',
  );

  /// value111772
  static final MediaTypeCode value111772 = MediaTypeCode._(
    '111772',
  );

  /// value111773
  static final MediaTypeCode value111773 = MediaTypeCode._(
    '111773',
  );

  /// value111776
  static final MediaTypeCode value111776 = MediaTypeCode._(
    '111776',
  );

  /// value111777
  static final MediaTypeCode value111777 = MediaTypeCode._(
    '111777',
  );

  /// value111778
  static final MediaTypeCode value111778 = MediaTypeCode._(
    '111778',
  );

  /// value111779
  static final MediaTypeCode value111779 = MediaTypeCode._(
    '111779',
  );

  /// value111780
  static final MediaTypeCode value111780 = MediaTypeCode._(
    '111780',
  );

  /// value111781
  static final MediaTypeCode value111781 = MediaTypeCode._(
    '111781',
  );

  /// value111782
  static final MediaTypeCode value111782 = MediaTypeCode._(
    '111782',
  );

  /// value111783
  static final MediaTypeCode value111783 = MediaTypeCode._(
    '111783',
  );

  /// value111786
  static final MediaTypeCode value111786 = MediaTypeCode._(
    '111786',
  );

  /// value111787
  static final MediaTypeCode value111787 = MediaTypeCode._(
    '111787',
  );

  /// value111791
  static final MediaTypeCode value111791 = MediaTypeCode._(
    '111791',
  );

  /// value111792
  static final MediaTypeCode value111792 = MediaTypeCode._(
    '111792',
  );

  /// value111800
  static final MediaTypeCode value111800 = MediaTypeCode._(
    '111800',
  );

  /// value111801
  static final MediaTypeCode value111801 = MediaTypeCode._(
    '111801',
  );

  /// value111802
  static final MediaTypeCode value111802 = MediaTypeCode._(
    '111802',
  );

  /// value111803
  static final MediaTypeCode value111803 = MediaTypeCode._(
    '111803',
  );

  /// value111804
  static final MediaTypeCode value111804 = MediaTypeCode._(
    '111804',
  );

  /// value111805
  static final MediaTypeCode value111805 = MediaTypeCode._(
    '111805',
  );

  /// value111806
  static final MediaTypeCode value111806 = MediaTypeCode._(
    '111806',
  );

  /// value111807
  static final MediaTypeCode value111807 = MediaTypeCode._(
    '111807',
  );

  /// value111808
  static final MediaTypeCode value111808 = MediaTypeCode._(
    '111808',
  );

  /// value111809
  static final MediaTypeCode value111809 = MediaTypeCode._(
    '111809',
  );

  /// value111810
  static final MediaTypeCode value111810 = MediaTypeCode._(
    '111810',
  );

  /// value111811
  static final MediaTypeCode value111811 = MediaTypeCode._(
    '111811',
  );

  /// value111812
  static final MediaTypeCode value111812 = MediaTypeCode._(
    '111812',
  );

  /// value111813
  static final MediaTypeCode value111813 = MediaTypeCode._(
    '111813',
  );

  /// value111814
  static final MediaTypeCode value111814 = MediaTypeCode._(
    '111814',
  );

  /// value111815
  static final MediaTypeCode value111815 = MediaTypeCode._(
    '111815',
  );

  /// value111816
  static final MediaTypeCode value111816 = MediaTypeCode._(
    '111816',
  );

  /// value111817
  static final MediaTypeCode value111817 = MediaTypeCode._(
    '111817',
  );

  /// value111818
  static final MediaTypeCode value111818 = MediaTypeCode._(
    '111818',
  );

  /// value111819
  static final MediaTypeCode value111819 = MediaTypeCode._(
    '111819',
  );

  /// value111820
  static final MediaTypeCode value111820 = MediaTypeCode._(
    '111820',
  );

  /// value111821
  static final MediaTypeCode value111821 = MediaTypeCode._(
    '111821',
  );

  /// value111822
  static final MediaTypeCode value111822 = MediaTypeCode._(
    '111822',
  );

  /// value111823
  static final MediaTypeCode value111823 = MediaTypeCode._(
    '111823',
  );

  /// value111824
  static final MediaTypeCode value111824 = MediaTypeCode._(
    '111824',
  );

  /// value111825
  static final MediaTypeCode value111825 = MediaTypeCode._(
    '111825',
  );

  /// value111826
  static final MediaTypeCode value111826 = MediaTypeCode._(
    '111826',
  );

  /// value111827
  static final MediaTypeCode value111827 = MediaTypeCode._(
    '111827',
  );

  /// value111828
  static final MediaTypeCode value111828 = MediaTypeCode._(
    '111828',
  );

  /// value111829
  static final MediaTypeCode value111829 = MediaTypeCode._(
    '111829',
  );

  /// value111830
  static final MediaTypeCode value111830 = MediaTypeCode._(
    '111830',
  );

  /// value111831
  static final MediaTypeCode value111831 = MediaTypeCode._(
    '111831',
  );

  /// value111832
  static final MediaTypeCode value111832 = MediaTypeCode._(
    '111832',
  );

  /// value111833
  static final MediaTypeCode value111833 = MediaTypeCode._(
    '111833',
  );

  /// value111834
  static final MediaTypeCode value111834 = MediaTypeCode._(
    '111834',
  );

  /// value111835
  static final MediaTypeCode value111835 = MediaTypeCode._(
    '111835',
  );

  /// value111836
  static final MediaTypeCode value111836 = MediaTypeCode._(
    '111836',
  );

  /// value111837
  static final MediaTypeCode value111837 = MediaTypeCode._(
    '111837',
  );

  /// value111838
  static final MediaTypeCode value111838 = MediaTypeCode._(
    '111838',
  );

  /// value111839
  static final MediaTypeCode value111839 = MediaTypeCode._(
    '111839',
  );

  /// value111840
  static final MediaTypeCode value111840 = MediaTypeCode._(
    '111840',
  );

  /// value111841
  static final MediaTypeCode value111841 = MediaTypeCode._(
    '111841',
  );

  /// value111842
  static final MediaTypeCode value111842 = MediaTypeCode._(
    '111842',
  );

  /// value111843
  static final MediaTypeCode value111843 = MediaTypeCode._(
    '111843',
  );

  /// value111844
  static final MediaTypeCode value111844 = MediaTypeCode._(
    '111844',
  );

  /// value111845
  static final MediaTypeCode value111845 = MediaTypeCode._(
    '111845',
  );

  /// value111846
  static final MediaTypeCode value111846 = MediaTypeCode._(
    '111846',
  );

  /// value111847
  static final MediaTypeCode value111847 = MediaTypeCode._(
    '111847',
  );

  /// value111848
  static final MediaTypeCode value111848 = MediaTypeCode._(
    '111848',
  );

  /// value111849
  static final MediaTypeCode value111849 = MediaTypeCode._(
    '111849',
  );

  /// value111850
  static final MediaTypeCode value111850 = MediaTypeCode._(
    '111850',
  );

  /// value111851
  static final MediaTypeCode value111851 = MediaTypeCode._(
    '111851',
  );

  /// value111852
  static final MediaTypeCode value111852 = MediaTypeCode._(
    '111852',
  );

  /// value111853
  static final MediaTypeCode value111853 = MediaTypeCode._(
    '111853',
  );

  /// value111854
  static final MediaTypeCode value111854 = MediaTypeCode._(
    '111854',
  );

  /// value111855
  static final MediaTypeCode value111855 = MediaTypeCode._(
    '111855',
  );

  /// value111856
  static final MediaTypeCode value111856 = MediaTypeCode._(
    '111856',
  );

  /// value111900
  static final MediaTypeCode value111900 = MediaTypeCode._(
    '111900',
  );

  /// value111901
  static final MediaTypeCode value111901 = MediaTypeCode._(
    '111901',
  );

  /// value111902
  static final MediaTypeCode value111902 = MediaTypeCode._(
    '111902',
  );

  /// value111903
  static final MediaTypeCode value111903 = MediaTypeCode._(
    '111903',
  );

  /// value111904
  static final MediaTypeCode value111904 = MediaTypeCode._(
    '111904',
  );

  /// value111905
  static final MediaTypeCode value111905 = MediaTypeCode._(
    '111905',
  );

  /// value111906
  static final MediaTypeCode value111906 = MediaTypeCode._(
    '111906',
  );

  /// value111907
  static final MediaTypeCode value111907 = MediaTypeCode._(
    '111907',
  );

  /// value111908
  static final MediaTypeCode value111908 = MediaTypeCode._(
    '111908',
  );

  /// value111909
  static final MediaTypeCode value111909 = MediaTypeCode._(
    '111909',
  );

  /// value111910
  static final MediaTypeCode value111910 = MediaTypeCode._(
    '111910',
  );

  /// value111911
  static final MediaTypeCode value111911 = MediaTypeCode._(
    '111911',
  );

  /// value111912
  static final MediaTypeCode value111912 = MediaTypeCode._(
    '111912',
  );

  /// value111913
  static final MediaTypeCode value111913 = MediaTypeCode._(
    '111913',
  );

  /// value111914
  static final MediaTypeCode value111914 = MediaTypeCode._(
    '111914',
  );

  /// value111915
  static final MediaTypeCode value111915 = MediaTypeCode._(
    '111915',
  );

  /// value111916
  static final MediaTypeCode value111916 = MediaTypeCode._(
    '111916',
  );

  /// value111917
  static final MediaTypeCode value111917 = MediaTypeCode._(
    '111917',
  );

  /// value111918
  static final MediaTypeCode value111918 = MediaTypeCode._(
    '111918',
  );

  /// value111919
  static final MediaTypeCode value111919 = MediaTypeCode._(
    '111919',
  );

  /// value111920
  static final MediaTypeCode value111920 = MediaTypeCode._(
    '111920',
  );

  /// value111921
  static final MediaTypeCode value111921 = MediaTypeCode._(
    '111921',
  );

  /// value111922
  static final MediaTypeCode value111922 = MediaTypeCode._(
    '111922',
  );

  /// value111923
  static final MediaTypeCode value111923 = MediaTypeCode._(
    '111923',
  );

  /// value111924
  static final MediaTypeCode value111924 = MediaTypeCode._(
    '111924',
  );

  /// value111925
  static final MediaTypeCode value111925 = MediaTypeCode._(
    '111925',
  );

  /// value111926
  static final MediaTypeCode value111926 = MediaTypeCode._(
    '111926',
  );

  /// value111927
  static final MediaTypeCode value111927 = MediaTypeCode._(
    '111927',
  );

  /// value111928
  static final MediaTypeCode value111928 = MediaTypeCode._(
    '111928',
  );

  /// value111929
  static final MediaTypeCode value111929 = MediaTypeCode._(
    '111929',
  );

  /// value111930
  static final MediaTypeCode value111930 = MediaTypeCode._(
    '111930',
  );

  /// value111931
  static final MediaTypeCode value111931 = MediaTypeCode._(
    '111931',
  );

  /// value111932
  static final MediaTypeCode value111932 = MediaTypeCode._(
    '111932',
  );

  /// value111933
  static final MediaTypeCode value111933 = MediaTypeCode._(
    '111933',
  );

  /// value111934
  static final MediaTypeCode value111934 = MediaTypeCode._(
    '111934',
  );

  /// value111935
  static final MediaTypeCode value111935 = MediaTypeCode._(
    '111935',
  );

  /// value111936
  static final MediaTypeCode value111936 = MediaTypeCode._(
    '111936',
  );

  /// value111937
  static final MediaTypeCode value111937 = MediaTypeCode._(
    '111937',
  );

  /// value111938
  static final MediaTypeCode value111938 = MediaTypeCode._(
    '111938',
  );

  /// value111939
  static final MediaTypeCode value111939 = MediaTypeCode._(
    '111939',
  );

  /// value111940
  static final MediaTypeCode value111940 = MediaTypeCode._(
    '111940',
  );

  /// value111941
  static final MediaTypeCode value111941 = MediaTypeCode._(
    '111941',
  );

  /// value111942
  static final MediaTypeCode value111942 = MediaTypeCode._(
    '111942',
  );

  /// value111943
  static final MediaTypeCode value111943 = MediaTypeCode._(
    '111943',
  );

  /// value111944
  static final MediaTypeCode value111944 = MediaTypeCode._(
    '111944',
  );

  /// value111945
  static final MediaTypeCode value111945 = MediaTypeCode._(
    '111945',
  );

  /// value111946
  static final MediaTypeCode value111946 = MediaTypeCode._(
    '111946',
  );

  /// value111947
  static final MediaTypeCode value111947 = MediaTypeCode._(
    '111947',
  );

  /// value112000
  static final MediaTypeCode value112000 = MediaTypeCode._(
    '112000',
  );

  /// value112001
  static final MediaTypeCode value112001 = MediaTypeCode._(
    '112001',
  );

  /// value112002
  static final MediaTypeCode value112002 = MediaTypeCode._(
    '112002',
  );

  /// value112003
  static final MediaTypeCode value112003 = MediaTypeCode._(
    '112003',
  );

  /// value112004
  static final MediaTypeCode value112004 = MediaTypeCode._(
    '112004',
  );

  /// value112005
  static final MediaTypeCode value112005 = MediaTypeCode._(
    '112005',
  );

  /// value112006
  static final MediaTypeCode value112006 = MediaTypeCode._(
    '112006',
  );

  /// value112007
  static final MediaTypeCode value112007 = MediaTypeCode._(
    '112007',
  );

  /// value112008
  static final MediaTypeCode value112008 = MediaTypeCode._(
    '112008',
  );

  /// value112009
  static final MediaTypeCode value112009 = MediaTypeCode._(
    '112009',
  );

  /// value112010
  static final MediaTypeCode value112010 = MediaTypeCode._(
    '112010',
  );

  /// value112011
  static final MediaTypeCode value112011 = MediaTypeCode._(
    '112011',
  );

  /// value112012
  static final MediaTypeCode value112012 = MediaTypeCode._(
    '112012',
  );

  /// value112013
  static final MediaTypeCode value112013 = MediaTypeCode._(
    '112013',
  );

  /// value112014
  static final MediaTypeCode value112014 = MediaTypeCode._(
    '112014',
  );

  /// value112015
  static final MediaTypeCode value112015 = MediaTypeCode._(
    '112015',
  );

  /// value112016
  static final MediaTypeCode value112016 = MediaTypeCode._(
    '112016',
  );

  /// value112017
  static final MediaTypeCode value112017 = MediaTypeCode._(
    '112017',
  );

  /// value112018
  static final MediaTypeCode value112018 = MediaTypeCode._(
    '112018',
  );

  /// value112019
  static final MediaTypeCode value112019 = MediaTypeCode._(
    '112019',
  );

  /// value112020
  static final MediaTypeCode value112020 = MediaTypeCode._(
    '112020',
  );

  /// value112021
  static final MediaTypeCode value112021 = MediaTypeCode._(
    '112021',
  );

  /// value112022
  static final MediaTypeCode value112022 = MediaTypeCode._(
    '112022',
  );

  /// value112023
  static final MediaTypeCode value112023 = MediaTypeCode._(
    '112023',
  );

  /// value112024
  static final MediaTypeCode value112024 = MediaTypeCode._(
    '112024',
  );

  /// value112025
  static final MediaTypeCode value112025 = MediaTypeCode._(
    '112025',
  );

  /// value112026
  static final MediaTypeCode value112026 = MediaTypeCode._(
    '112026',
  );

  /// value112027
  static final MediaTypeCode value112027 = MediaTypeCode._(
    '112027',
  );

  /// value112028
  static final MediaTypeCode value112028 = MediaTypeCode._(
    '112028',
  );

  /// value112029
  static final MediaTypeCode value112029 = MediaTypeCode._(
    '112029',
  );

  /// value112030
  static final MediaTypeCode value112030 = MediaTypeCode._(
    '112030',
  );

  /// value112031
  static final MediaTypeCode value112031 = MediaTypeCode._(
    '112031',
  );

  /// value112032
  static final MediaTypeCode value112032 = MediaTypeCode._(
    '112032',
  );

  /// value112033
  static final MediaTypeCode value112033 = MediaTypeCode._(
    '112033',
  );

  /// value112034
  static final MediaTypeCode value112034 = MediaTypeCode._(
    '112034',
  );

  /// value112035
  static final MediaTypeCode value112035 = MediaTypeCode._(
    '112035',
  );

  /// value112036
  static final MediaTypeCode value112036 = MediaTypeCode._(
    '112036',
  );

  /// value112037
  static final MediaTypeCode value112037 = MediaTypeCode._(
    '112037',
  );

  /// value112038
  static final MediaTypeCode value112038 = MediaTypeCode._(
    '112038',
  );

  /// value112039
  static final MediaTypeCode value112039 = MediaTypeCode._(
    '112039',
  );

  /// value112040
  static final MediaTypeCode value112040 = MediaTypeCode._(
    '112040',
  );

  /// value112041
  static final MediaTypeCode value112041 = MediaTypeCode._(
    '112041',
  );

  /// value112042
  static final MediaTypeCode value112042 = MediaTypeCode._(
    '112042',
  );

  /// value112043
  static final MediaTypeCode value112043 = MediaTypeCode._(
    '112043',
  );

  /// value112044
  static final MediaTypeCode value112044 = MediaTypeCode._(
    '112044',
  );

  /// value112045
  static final MediaTypeCode value112045 = MediaTypeCode._(
    '112045',
  );

  /// value112046
  static final MediaTypeCode value112046 = MediaTypeCode._(
    '112046',
  );

  /// value112047
  static final MediaTypeCode value112047 = MediaTypeCode._(
    '112047',
  );

  /// value112048
  static final MediaTypeCode value112048 = MediaTypeCode._(
    '112048',
  );

  /// value112049
  static final MediaTypeCode value112049 = MediaTypeCode._(
    '112049',
  );

  /// value112050
  static final MediaTypeCode value112050 = MediaTypeCode._(
    '112050',
  );

  /// value112051
  static final MediaTypeCode value112051 = MediaTypeCode._(
    '112051',
  );

  /// value112052
  static final MediaTypeCode value112052 = MediaTypeCode._(
    '112052',
  );

  /// value112053
  static final MediaTypeCode value112053 = MediaTypeCode._(
    '112053',
  );

  /// value112054
  static final MediaTypeCode value112054 = MediaTypeCode._(
    '112054',
  );

  /// value112055
  static final MediaTypeCode value112055 = MediaTypeCode._(
    '112055',
  );

  /// value112056
  static final MediaTypeCode value112056 = MediaTypeCode._(
    '112056',
  );

  /// value112057
  static final MediaTypeCode value112057 = MediaTypeCode._(
    '112057',
  );

  /// value112058
  static final MediaTypeCode value112058 = MediaTypeCode._(
    '112058',
  );

  /// value112059
  static final MediaTypeCode value112059 = MediaTypeCode._(
    '112059',
  );

  /// value112060
  static final MediaTypeCode value112060 = MediaTypeCode._(
    '112060',
  );

  /// value112061
  static final MediaTypeCode value112061 = MediaTypeCode._(
    '112061',
  );

  /// value112062
  static final MediaTypeCode value112062 = MediaTypeCode._(
    '112062',
  );

  /// value112063
  static final MediaTypeCode value112063 = MediaTypeCode._(
    '112063',
  );

  /// value112064
  static final MediaTypeCode value112064 = MediaTypeCode._(
    '112064',
  );

  /// value112065
  static final MediaTypeCode value112065 = MediaTypeCode._(
    '112065',
  );

  /// value112066
  static final MediaTypeCode value112066 = MediaTypeCode._(
    '112066',
  );

  /// value112067
  static final MediaTypeCode value112067 = MediaTypeCode._(
    '112067',
  );

  /// value112068
  static final MediaTypeCode value112068 = MediaTypeCode._(
    '112068',
  );

  /// value112069
  static final MediaTypeCode value112069 = MediaTypeCode._(
    '112069',
  );

  /// value112070
  static final MediaTypeCode value112070 = MediaTypeCode._(
    '112070',
  );

  /// value112071
  static final MediaTypeCode value112071 = MediaTypeCode._(
    '112071',
  );

  /// value112072
  static final MediaTypeCode value112072 = MediaTypeCode._(
    '112072',
  );

  /// value112073
  static final MediaTypeCode value112073 = MediaTypeCode._(
    '112073',
  );

  /// value112074
  static final MediaTypeCode value112074 = MediaTypeCode._(
    '112074',
  );

  /// value112075
  static final MediaTypeCode value112075 = MediaTypeCode._(
    '112075',
  );

  /// value112076
  static final MediaTypeCode value112076 = MediaTypeCode._(
    '112076',
  );

  /// value112077
  static final MediaTypeCode value112077 = MediaTypeCode._(
    '112077',
  );

  /// value112078
  static final MediaTypeCode value112078 = MediaTypeCode._(
    '112078',
  );

  /// value112079
  static final MediaTypeCode value112079 = MediaTypeCode._(
    '112079',
  );

  /// value112080
  static final MediaTypeCode value112080 = MediaTypeCode._(
    '112080',
  );

  /// value112081
  static final MediaTypeCode value112081 = MediaTypeCode._(
    '112081',
  );

  /// value112082
  static final MediaTypeCode value112082 = MediaTypeCode._(
    '112082',
  );

  /// value112083
  static final MediaTypeCode value112083 = MediaTypeCode._(
    '112083',
  );

  /// value112084
  static final MediaTypeCode value112084 = MediaTypeCode._(
    '112084',
  );

  /// value112085
  static final MediaTypeCode value112085 = MediaTypeCode._(
    '112085',
  );

  /// value112086
  static final MediaTypeCode value112086 = MediaTypeCode._(
    '112086',
  );

  /// value112087
  static final MediaTypeCode value112087 = MediaTypeCode._(
    '112087',
  );

  /// value112088
  static final MediaTypeCode value112088 = MediaTypeCode._(
    '112088',
  );

  /// value112089
  static final MediaTypeCode value112089 = MediaTypeCode._(
    '112089',
  );

  /// value112090
  static final MediaTypeCode value112090 = MediaTypeCode._(
    '112090',
  );

  /// value112091
  static final MediaTypeCode value112091 = MediaTypeCode._(
    '112091',
  );

  /// value112092
  static final MediaTypeCode value112092 = MediaTypeCode._(
    '112092',
  );

  /// value112093
  static final MediaTypeCode value112093 = MediaTypeCode._(
    '112093',
  );

  /// value112094
  static final MediaTypeCode value112094 = MediaTypeCode._(
    '112094',
  );

  /// value112095
  static final MediaTypeCode value112095 = MediaTypeCode._(
    '112095',
  );

  /// value112096
  static final MediaTypeCode value112096 = MediaTypeCode._(
    '112096',
  );

  /// value112097
  static final MediaTypeCode value112097 = MediaTypeCode._(
    '112097',
  );

  /// value112098
  static final MediaTypeCode value112098 = MediaTypeCode._(
    '112098',
  );

  /// value112099
  static final MediaTypeCode value112099 = MediaTypeCode._(
    '112099',
  );

  /// value112100
  static final MediaTypeCode value112100 = MediaTypeCode._(
    '112100',
  );

  /// value112101
  static final MediaTypeCode value112101 = MediaTypeCode._(
    '112101',
  );

  /// value112102
  static final MediaTypeCode value112102 = MediaTypeCode._(
    '112102',
  );

  /// value112103
  static final MediaTypeCode value112103 = MediaTypeCode._(
    '112103',
  );

  /// value112104
  static final MediaTypeCode value112104 = MediaTypeCode._(
    '112104',
  );

  /// value112105
  static final MediaTypeCode value112105 = MediaTypeCode._(
    '112105',
  );

  /// value112106
  static final MediaTypeCode value112106 = MediaTypeCode._(
    '112106',
  );

  /// value112107
  static final MediaTypeCode value112107 = MediaTypeCode._(
    '112107',
  );

  /// value112108
  static final MediaTypeCode value112108 = MediaTypeCode._(
    '112108',
  );

  /// value112109
  static final MediaTypeCode value112109 = MediaTypeCode._(
    '112109',
  );

  /// value112110
  static final MediaTypeCode value112110 = MediaTypeCode._(
    '112110',
  );

  /// value112111
  static final MediaTypeCode value112111 = MediaTypeCode._(
    '112111',
  );

  /// value112112
  static final MediaTypeCode value112112 = MediaTypeCode._(
    '112112',
  );

  /// value112113
  static final MediaTypeCode value112113 = MediaTypeCode._(
    '112113',
  );

  /// value112114
  static final MediaTypeCode value112114 = MediaTypeCode._(
    '112114',
  );

  /// value112115
  static final MediaTypeCode value112115 = MediaTypeCode._(
    '112115',
  );

  /// value112116
  static final MediaTypeCode value112116 = MediaTypeCode._(
    '112116',
  );

  /// value112117
  static final MediaTypeCode value112117 = MediaTypeCode._(
    '112117',
  );

  /// value112118
  static final MediaTypeCode value112118 = MediaTypeCode._(
    '112118',
  );

  /// value112119
  static final MediaTypeCode value112119 = MediaTypeCode._(
    '112119',
  );

  /// value112120
  static final MediaTypeCode value112120 = MediaTypeCode._(
    '112120',
  );

  /// value112121
  static final MediaTypeCode value112121 = MediaTypeCode._(
    '112121',
  );

  /// value112122
  static final MediaTypeCode value112122 = MediaTypeCode._(
    '112122',
  );

  /// value112123
  static final MediaTypeCode value112123 = MediaTypeCode._(
    '112123',
  );

  /// value112124
  static final MediaTypeCode value112124 = MediaTypeCode._(
    '112124',
  );

  /// value112125
  static final MediaTypeCode value112125 = MediaTypeCode._(
    '112125',
  );

  /// value112126
  static final MediaTypeCode value112126 = MediaTypeCode._(
    '112126',
  );

  /// value112127
  static final MediaTypeCode value112127 = MediaTypeCode._(
    '112127',
  );

  /// value112128
  static final MediaTypeCode value112128 = MediaTypeCode._(
    '112128',
  );

  /// value112129
  static final MediaTypeCode value112129 = MediaTypeCode._(
    '112129',
  );

  /// value112130
  static final MediaTypeCode value112130 = MediaTypeCode._(
    '112130',
  );

  /// value112131
  static final MediaTypeCode value112131 = MediaTypeCode._(
    '112131',
  );

  /// value112132
  static final MediaTypeCode value112132 = MediaTypeCode._(
    '112132',
  );

  /// value112133
  static final MediaTypeCode value112133 = MediaTypeCode._(
    '112133',
  );

  /// value112134
  static final MediaTypeCode value112134 = MediaTypeCode._(
    '112134',
  );

  /// value112135
  static final MediaTypeCode value112135 = MediaTypeCode._(
    '112135',
  );

  /// value112136
  static final MediaTypeCode value112136 = MediaTypeCode._(
    '112136',
  );

  /// value112137
  static final MediaTypeCode value112137 = MediaTypeCode._(
    '112137',
  );

  /// value112138
  static final MediaTypeCode value112138 = MediaTypeCode._(
    '112138',
  );

  /// value112139
  static final MediaTypeCode value112139 = MediaTypeCode._(
    '112139',
  );

  /// value112140
  static final MediaTypeCode value112140 = MediaTypeCode._(
    '112140',
  );

  /// value112141
  static final MediaTypeCode value112141 = MediaTypeCode._(
    '112141',
  );

  /// value112142
  static final MediaTypeCode value112142 = MediaTypeCode._(
    '112142',
  );

  /// value112143
  static final MediaTypeCode value112143 = MediaTypeCode._(
    '112143',
  );

  /// value112144
  static final MediaTypeCode value112144 = MediaTypeCode._(
    '112144',
  );

  /// value112145
  static final MediaTypeCode value112145 = MediaTypeCode._(
    '112145',
  );

  /// value112146
  static final MediaTypeCode value112146 = MediaTypeCode._(
    '112146',
  );

  /// value112147
  static final MediaTypeCode value112147 = MediaTypeCode._(
    '112147',
  );

  /// value112148
  static final MediaTypeCode value112148 = MediaTypeCode._(
    '112148',
  );

  /// value112149
  static final MediaTypeCode value112149 = MediaTypeCode._(
    '112149',
  );

  /// value112150
  static final MediaTypeCode value112150 = MediaTypeCode._(
    '112150',
  );

  /// value112151
  static final MediaTypeCode value112151 = MediaTypeCode._(
    '112151',
  );

  /// value112152
  static final MediaTypeCode value112152 = MediaTypeCode._(
    '112152',
  );

  /// value112153
  static final MediaTypeCode value112153 = MediaTypeCode._(
    '112153',
  );

  /// value112154
  static final MediaTypeCode value112154 = MediaTypeCode._(
    '112154',
  );

  /// value112155
  static final MediaTypeCode value112155 = MediaTypeCode._(
    '112155',
  );

  /// value112156
  static final MediaTypeCode value112156 = MediaTypeCode._(
    '112156',
  );

  /// value112157
  static final MediaTypeCode value112157 = MediaTypeCode._(
    '112157',
  );

  /// value112158
  static final MediaTypeCode value112158 = MediaTypeCode._(
    '112158',
  );

  /// value112159
  static final MediaTypeCode value112159 = MediaTypeCode._(
    '112159',
  );

  /// value112160
  static final MediaTypeCode value112160 = MediaTypeCode._(
    '112160',
  );

  /// value112161
  static final MediaTypeCode value112161 = MediaTypeCode._(
    '112161',
  );

  /// value112162
  static final MediaTypeCode value112162 = MediaTypeCode._(
    '112162',
  );

  /// value112163
  static final MediaTypeCode value112163 = MediaTypeCode._(
    '112163',
  );

  /// value112164
  static final MediaTypeCode value112164 = MediaTypeCode._(
    '112164',
  );

  /// value112165
  static final MediaTypeCode value112165 = MediaTypeCode._(
    '112165',
  );

  /// value112166
  static final MediaTypeCode value112166 = MediaTypeCode._(
    '112166',
  );

  /// value112167
  static final MediaTypeCode value112167 = MediaTypeCode._(
    '112167',
  );

  /// value112168
  static final MediaTypeCode value112168 = MediaTypeCode._(
    '112168',
  );

  /// value112169
  static final MediaTypeCode value112169 = MediaTypeCode._(
    '112169',
  );

  /// value112170
  static final MediaTypeCode value112170 = MediaTypeCode._(
    '112170',
  );

  /// value112171
  static final MediaTypeCode value112171 = MediaTypeCode._(
    '112171',
  );

  /// value112172
  static final MediaTypeCode value112172 = MediaTypeCode._(
    '112172',
  );

  /// value112173
  static final MediaTypeCode value112173 = MediaTypeCode._(
    '112173',
  );

  /// value112174
  static final MediaTypeCode value112174 = MediaTypeCode._(
    '112174',
  );

  /// value112175
  static final MediaTypeCode value112175 = MediaTypeCode._(
    '112175',
  );

  /// value112176
  static final MediaTypeCode value112176 = MediaTypeCode._(
    '112176',
  );

  /// value112177
  static final MediaTypeCode value112177 = MediaTypeCode._(
    '112177',
  );

  /// value112178
  static final MediaTypeCode value112178 = MediaTypeCode._(
    '112178',
  );

  /// value112179
  static final MediaTypeCode value112179 = MediaTypeCode._(
    '112179',
  );

  /// value112180
  static final MediaTypeCode value112180 = MediaTypeCode._(
    '112180',
  );

  /// value112181
  static final MediaTypeCode value112181 = MediaTypeCode._(
    '112181',
  );

  /// value112182
  static final MediaTypeCode value112182 = MediaTypeCode._(
    '112182',
  );

  /// value112183
  static final MediaTypeCode value112183 = MediaTypeCode._(
    '112183',
  );

  /// value112184
  static final MediaTypeCode value112184 = MediaTypeCode._(
    '112184',
  );

  /// value112185
  static final MediaTypeCode value112185 = MediaTypeCode._(
    '112185',
  );

  /// value112186
  static final MediaTypeCode value112186 = MediaTypeCode._(
    '112186',
  );

  /// value112187
  static final MediaTypeCode value112187 = MediaTypeCode._(
    '112187',
  );

  /// value112188
  static final MediaTypeCode value112188 = MediaTypeCode._(
    '112188',
  );

  /// value112189
  static final MediaTypeCode value112189 = MediaTypeCode._(
    '112189',
  );

  /// value112191
  static final MediaTypeCode value112191 = MediaTypeCode._(
    '112191',
  );

  /// value112192
  static final MediaTypeCode value112192 = MediaTypeCode._(
    '112192',
  );

  /// value112193
  static final MediaTypeCode value112193 = MediaTypeCode._(
    '112193',
  );

  /// value112194
  static final MediaTypeCode value112194 = MediaTypeCode._(
    '112194',
  );

  /// value112195
  static final MediaTypeCode value112195 = MediaTypeCode._(
    '112195',
  );

  /// value112196
  static final MediaTypeCode value112196 = MediaTypeCode._(
    '112196',
  );

  /// value112197
  static final MediaTypeCode value112197 = MediaTypeCode._(
    '112197',
  );

  /// value112198
  static final MediaTypeCode value112198 = MediaTypeCode._(
    '112198',
  );

  /// value112199
  static final MediaTypeCode value112199 = MediaTypeCode._(
    '112199',
  );

  /// value112200
  static final MediaTypeCode value112200 = MediaTypeCode._(
    '112200',
  );

  /// value112201
  static final MediaTypeCode value112201 = MediaTypeCode._(
    '112201',
  );

  /// value112220
  static final MediaTypeCode value112220 = MediaTypeCode._(
    '112220',
  );

  /// value112222
  static final MediaTypeCode value112222 = MediaTypeCode._(
    '112222',
  );

  /// value112224
  static final MediaTypeCode value112224 = MediaTypeCode._(
    '112224',
  );

  /// value112225
  static final MediaTypeCode value112225 = MediaTypeCode._(
    '112225',
  );

  /// value112226
  static final MediaTypeCode value112226 = MediaTypeCode._(
    '112226',
  );

  /// value112227
  static final MediaTypeCode value112227 = MediaTypeCode._(
    '112227',
  );

  /// value112228
  static final MediaTypeCode value112228 = MediaTypeCode._(
    '112228',
  );

  /// value112229
  static final MediaTypeCode value112229 = MediaTypeCode._(
    '112229',
  );

  /// value112232
  static final MediaTypeCode value112232 = MediaTypeCode._(
    '112232',
  );

  /// value112233
  static final MediaTypeCode value112233 = MediaTypeCode._(
    '112233',
  );

  /// value112238
  static final MediaTypeCode value112238 = MediaTypeCode._(
    '112238',
  );

  /// value112240
  static final MediaTypeCode value112240 = MediaTypeCode._(
    '112240',
  );

  /// value112241
  static final MediaTypeCode value112241 = MediaTypeCode._(
    '112241',
  );

  /// value112242
  static final MediaTypeCode value112242 = MediaTypeCode._(
    '112242',
  );

  /// value112243
  static final MediaTypeCode value112243 = MediaTypeCode._(
    '112243',
  );

  /// value112244
  static final MediaTypeCode value112244 = MediaTypeCode._(
    '112244',
  );

  /// value112248
  static final MediaTypeCode value112248 = MediaTypeCode._(
    '112248',
  );

  /// value112249
  static final MediaTypeCode value112249 = MediaTypeCode._(
    '112249',
  );

  /// value112300
  static final MediaTypeCode value112300 = MediaTypeCode._(
    '112300',
  );

  /// value112301
  static final MediaTypeCode value112301 = MediaTypeCode._(
    '112301',
  );

  /// value112302
  static final MediaTypeCode value112302 = MediaTypeCode._(
    '112302',
  );

  /// value112303
  static final MediaTypeCode value112303 = MediaTypeCode._(
    '112303',
  );

  /// value112304
  static final MediaTypeCode value112304 = MediaTypeCode._(
    '112304',
  );

  /// value112305
  static final MediaTypeCode value112305 = MediaTypeCode._(
    '112305',
  );

  /// value112306
  static final MediaTypeCode value112306 = MediaTypeCode._(
    '112306',
  );

  /// value112307
  static final MediaTypeCode value112307 = MediaTypeCode._(
    '112307',
  );

  /// value112308
  static final MediaTypeCode value112308 = MediaTypeCode._(
    '112308',
  );

  /// value112309
  static final MediaTypeCode value112309 = MediaTypeCode._(
    '112309',
  );

  /// value112310
  static final MediaTypeCode value112310 = MediaTypeCode._(
    '112310',
  );

  /// value112311
  static final MediaTypeCode value112311 = MediaTypeCode._(
    '112311',
  );

  /// value112312
  static final MediaTypeCode value112312 = MediaTypeCode._(
    '112312',
  );

  /// value112313
  static final MediaTypeCode value112313 = MediaTypeCode._(
    '112313',
  );

  /// value112314
  static final MediaTypeCode value112314 = MediaTypeCode._(
    '112314',
  );

  /// value112315
  static final MediaTypeCode value112315 = MediaTypeCode._(
    '112315',
  );

  /// value112316
  static final MediaTypeCode value112316 = MediaTypeCode._(
    '112316',
  );

  /// value112317
  static final MediaTypeCode value112317 = MediaTypeCode._(
    '112317',
  );

  /// value112318
  static final MediaTypeCode value112318 = MediaTypeCode._(
    '112318',
  );

  /// value112319
  static final MediaTypeCode value112319 = MediaTypeCode._(
    '112319',
  );

  /// value112320
  static final MediaTypeCode value112320 = MediaTypeCode._(
    '112320',
  );

  /// value112321
  static final MediaTypeCode value112321 = MediaTypeCode._(
    '112321',
  );

  /// value112325
  static final MediaTypeCode value112325 = MediaTypeCode._(
    '112325',
  );

  /// value112340
  static final MediaTypeCode value112340 = MediaTypeCode._(
    '112340',
  );

  /// value112341
  static final MediaTypeCode value112341 = MediaTypeCode._(
    '112341',
  );

  /// value112342
  static final MediaTypeCode value112342 = MediaTypeCode._(
    '112342',
  );

  /// value112343
  static final MediaTypeCode value112343 = MediaTypeCode._(
    '112343',
  );

  /// value112344
  static final MediaTypeCode value112344 = MediaTypeCode._(
    '112344',
  );

  /// value112345
  static final MediaTypeCode value112345 = MediaTypeCode._(
    '112345',
  );

  /// value112346
  static final MediaTypeCode value112346 = MediaTypeCode._(
    '112346',
  );

  /// value112347
  static final MediaTypeCode value112347 = MediaTypeCode._(
    '112347',
  );

  /// value112348
  static final MediaTypeCode value112348 = MediaTypeCode._(
    '112348',
  );

  /// value112350
  static final MediaTypeCode value112350 = MediaTypeCode._(
    '112350',
  );

  /// value112351
  static final MediaTypeCode value112351 = MediaTypeCode._(
    '112351',
  );

  /// value112352
  static final MediaTypeCode value112352 = MediaTypeCode._(
    '112352',
  );

  /// value112353
  static final MediaTypeCode value112353 = MediaTypeCode._(
    '112353',
  );

  /// value112354
  static final MediaTypeCode value112354 = MediaTypeCode._(
    '112354',
  );

  /// value112355
  static final MediaTypeCode value112355 = MediaTypeCode._(
    '112355',
  );

  /// value112356
  static final MediaTypeCode value112356 = MediaTypeCode._(
    '112356',
  );

  /// value112357
  static final MediaTypeCode value112357 = MediaTypeCode._(
    '112357',
  );

  /// value112358
  static final MediaTypeCode value112358 = MediaTypeCode._(
    '112358',
  );

  /// value112359
  static final MediaTypeCode value112359 = MediaTypeCode._(
    '112359',
  );

  /// value112360
  static final MediaTypeCode value112360 = MediaTypeCode._(
    '112360',
  );

  /// value112361
  static final MediaTypeCode value112361 = MediaTypeCode._(
    '112361',
  );

  /// value112362
  static final MediaTypeCode value112362 = MediaTypeCode._(
    '112362',
  );

  /// value112363
  static final MediaTypeCode value112363 = MediaTypeCode._(
    '112363',
  );

  /// value112364
  static final MediaTypeCode value112364 = MediaTypeCode._(
    '112364',
  );

  /// value112365
  static final MediaTypeCode value112365 = MediaTypeCode._(
    '112365',
  );

  /// value112366
  static final MediaTypeCode value112366 = MediaTypeCode._(
    '112366',
  );

  /// value112367
  static final MediaTypeCode value112367 = MediaTypeCode._(
    '112367',
  );

  /// value112368
  static final MediaTypeCode value112368 = MediaTypeCode._(
    '112368',
  );

  /// value112369
  static final MediaTypeCode value112369 = MediaTypeCode._(
    '112369',
  );

  /// value112370
  static final MediaTypeCode value112370 = MediaTypeCode._(
    '112370',
  );

  /// value112371
  static final MediaTypeCode value112371 = MediaTypeCode._(
    '112371',
  );

  /// value112372
  static final MediaTypeCode value112372 = MediaTypeCode._(
    '112372',
  );

  /// value112373
  static final MediaTypeCode value112373 = MediaTypeCode._(
    '112373',
  );

  /// value112374
  static final MediaTypeCode value112374 = MediaTypeCode._(
    '112374',
  );

  /// value112375
  static final MediaTypeCode value112375 = MediaTypeCode._(
    '112375',
  );

  /// value112376
  static final MediaTypeCode value112376 = MediaTypeCode._(
    '112376',
  );

  /// value112377
  static final MediaTypeCode value112377 = MediaTypeCode._(
    '112377',
  );

  /// value112378
  static final MediaTypeCode value112378 = MediaTypeCode._(
    '112378',
  );

  /// value112379
  static final MediaTypeCode value112379 = MediaTypeCode._(
    '112379',
  );

  /// value112380
  static final MediaTypeCode value112380 = MediaTypeCode._(
    '112380',
  );

  /// value112381
  static final MediaTypeCode value112381 = MediaTypeCode._(
    '112381',
  );

  /// value112700
  static final MediaTypeCode value112700 = MediaTypeCode._(
    '112700',
  );

  /// value112701
  static final MediaTypeCode value112701 = MediaTypeCode._(
    '112701',
  );

  /// value112702
  static final MediaTypeCode value112702 = MediaTypeCode._(
    '112702',
  );

  /// value112703
  static final MediaTypeCode value112703 = MediaTypeCode._(
    '112703',
  );

  /// value112704
  static final MediaTypeCode value112704 = MediaTypeCode._(
    '112704',
  );

  /// value112705
  static final MediaTypeCode value112705 = MediaTypeCode._(
    '112705',
  );

  /// value112706
  static final MediaTypeCode value112706 = MediaTypeCode._(
    '112706',
  );

  /// value112707
  static final MediaTypeCode value112707 = MediaTypeCode._(
    '112707',
  );

  /// value112708
  static final MediaTypeCode value112708 = MediaTypeCode._(
    '112708',
  );

  /// value112709
  static final MediaTypeCode value112709 = MediaTypeCode._(
    '112709',
  );

  /// value112710
  static final MediaTypeCode value112710 = MediaTypeCode._(
    '112710',
  );

  /// value112711
  static final MediaTypeCode value112711 = MediaTypeCode._(
    '112711',
  );

  /// value112712
  static final MediaTypeCode value112712 = MediaTypeCode._(
    '112712',
  );

  /// value112713
  static final MediaTypeCode value112713 = MediaTypeCode._(
    '112713',
  );

  /// value112714
  static final MediaTypeCode value112714 = MediaTypeCode._(
    '112714',
  );

  /// value112715
  static final MediaTypeCode value112715 = MediaTypeCode._(
    '112715',
  );

  /// value112716
  static final MediaTypeCode value112716 = MediaTypeCode._(
    '112716',
  );

  /// value112717
  static final MediaTypeCode value112717 = MediaTypeCode._(
    '112717',
  );

  /// value112718
  static final MediaTypeCode value112718 = MediaTypeCode._(
    '112718',
  );

  /// value112719
  static final MediaTypeCode value112719 = MediaTypeCode._(
    '112719',
  );

  /// value112720
  static final MediaTypeCode value112720 = MediaTypeCode._(
    '112720',
  );

  /// value112721
  static final MediaTypeCode value112721 = MediaTypeCode._(
    '112721',
  );

  /// value113000
  static final MediaTypeCode value113000 = MediaTypeCode._(
    '113000',
  );

  /// value113001
  static final MediaTypeCode value113001 = MediaTypeCode._(
    '113001',
  );

  /// value113002
  static final MediaTypeCode value113002 = MediaTypeCode._(
    '113002',
  );

  /// value113003
  static final MediaTypeCode value113003 = MediaTypeCode._(
    '113003',
  );

  /// value113004
  static final MediaTypeCode value113004 = MediaTypeCode._(
    '113004',
  );

  /// value113005
  static final MediaTypeCode value113005 = MediaTypeCode._(
    '113005',
  );

  /// value113006
  static final MediaTypeCode value113006 = MediaTypeCode._(
    '113006',
  );

  /// value113007
  static final MediaTypeCode value113007 = MediaTypeCode._(
    '113007',
  );

  /// value113008
  static final MediaTypeCode value113008 = MediaTypeCode._(
    '113008',
  );

  /// value113009
  static final MediaTypeCode value113009 = MediaTypeCode._(
    '113009',
  );

  /// value113010
  static final MediaTypeCode value113010 = MediaTypeCode._(
    '113010',
  );

  /// value113011
  static final MediaTypeCode value113011 = MediaTypeCode._(
    '113011',
  );

  /// value113012
  static final MediaTypeCode value113012 = MediaTypeCode._(
    '113012',
  );

  /// value113013
  static final MediaTypeCode value113013 = MediaTypeCode._(
    '113013',
  );

  /// value113014
  static final MediaTypeCode value113014 = MediaTypeCode._(
    '113014',
  );

  /// value113015
  static final MediaTypeCode value113015 = MediaTypeCode._(
    '113015',
  );

  /// value113016
  static final MediaTypeCode value113016 = MediaTypeCode._(
    '113016',
  );

  /// value113017
  static final MediaTypeCode value113017 = MediaTypeCode._(
    '113017',
  );

  /// value113018
  static final MediaTypeCode value113018 = MediaTypeCode._(
    '113018',
  );

  /// value113020
  static final MediaTypeCode value113020 = MediaTypeCode._(
    '113020',
  );

  /// value113021
  static final MediaTypeCode value113021 = MediaTypeCode._(
    '113021',
  );

  /// value113026
  static final MediaTypeCode value113026 = MediaTypeCode._(
    '113026',
  );

  /// value113030
  static final MediaTypeCode value113030 = MediaTypeCode._(
    '113030',
  );

  /// value113031
  static final MediaTypeCode value113031 = MediaTypeCode._(
    '113031',
  );

  /// value113032
  static final MediaTypeCode value113032 = MediaTypeCode._(
    '113032',
  );

  /// value113033
  static final MediaTypeCode value113033 = MediaTypeCode._(
    '113033',
  );

  /// value113034
  static final MediaTypeCode value113034 = MediaTypeCode._(
    '113034',
  );

  /// value113035
  static final MediaTypeCode value113035 = MediaTypeCode._(
    '113035',
  );

  /// value113036
  static final MediaTypeCode value113036 = MediaTypeCode._(
    '113036',
  );

  /// value113037
  static final MediaTypeCode value113037 = MediaTypeCode._(
    '113037',
  );

  /// value113038
  static final MediaTypeCode value113038 = MediaTypeCode._(
    '113038',
  );

  /// value113039
  static final MediaTypeCode value113039 = MediaTypeCode._(
    '113039',
  );

  /// value113040
  static final MediaTypeCode value113040 = MediaTypeCode._(
    '113040',
  );

  /// value113041
  static final MediaTypeCode value113041 = MediaTypeCode._(
    '113041',
  );

  /// value113042
  static final MediaTypeCode value113042 = MediaTypeCode._(
    '113042',
  );

  /// value113043
  static final MediaTypeCode value113043 = MediaTypeCode._(
    '113043',
  );

  /// value113044
  static final MediaTypeCode value113044 = MediaTypeCode._(
    '113044',
  );

  /// value113045
  static final MediaTypeCode value113045 = MediaTypeCode._(
    '113045',
  );

  /// value113046
  static final MediaTypeCode value113046 = MediaTypeCode._(
    '113046',
  );

  /// value113047
  static final MediaTypeCode value113047 = MediaTypeCode._(
    '113047',
  );

  /// value113048
  static final MediaTypeCode value113048 = MediaTypeCode._(
    '113048',
  );

  /// value113049
  static final MediaTypeCode value113049 = MediaTypeCode._(
    '113049',
  );

  /// value113050
  static final MediaTypeCode value113050 = MediaTypeCode._(
    '113050',
  );

  /// value113051
  static final MediaTypeCode value113051 = MediaTypeCode._(
    '113051',
  );

  /// value113052
  static final MediaTypeCode value113052 = MediaTypeCode._(
    '113052',
  );

  /// value113053
  static final MediaTypeCode value113053 = MediaTypeCode._(
    '113053',
  );

  /// value113054
  static final MediaTypeCode value113054 = MediaTypeCode._(
    '113054',
  );

  /// value113055
  static final MediaTypeCode value113055 = MediaTypeCode._(
    '113055',
  );

  /// value113056
  static final MediaTypeCode value113056 = MediaTypeCode._(
    '113056',
  );

  /// value113057
  static final MediaTypeCode value113057 = MediaTypeCode._(
    '113057',
  );

  /// value113058
  static final MediaTypeCode value113058 = MediaTypeCode._(
    '113058',
  );

  /// value113059
  static final MediaTypeCode value113059 = MediaTypeCode._(
    '113059',
  );

  /// value113060
  static final MediaTypeCode value113060 = MediaTypeCode._(
    '113060',
  );

  /// value113061
  static final MediaTypeCode value113061 = MediaTypeCode._(
    '113061',
  );

  /// value113062
  static final MediaTypeCode value113062 = MediaTypeCode._(
    '113062',
  );

  /// value113063
  static final MediaTypeCode value113063 = MediaTypeCode._(
    '113063',
  );

  /// value113064
  static final MediaTypeCode value113064 = MediaTypeCode._(
    '113064',
  );

  /// value113065
  static final MediaTypeCode value113065 = MediaTypeCode._(
    '113065',
  );

  /// value113066
  static final MediaTypeCode value113066 = MediaTypeCode._(
    '113066',
  );

  /// value113067
  static final MediaTypeCode value113067 = MediaTypeCode._(
    '113067',
  );

  /// value113068
  static final MediaTypeCode value113068 = MediaTypeCode._(
    '113068',
  );

  /// value113069
  static final MediaTypeCode value113069 = MediaTypeCode._(
    '113069',
  );

  /// value113070
  static final MediaTypeCode value113070 = MediaTypeCode._(
    '113070',
  );

  /// value113071
  static final MediaTypeCode value113071 = MediaTypeCode._(
    '113071',
  );

  /// value113072
  static final MediaTypeCode value113072 = MediaTypeCode._(
    '113072',
  );

  /// value113073
  static final MediaTypeCode value113073 = MediaTypeCode._(
    '113073',
  );

  /// value113074
  static final MediaTypeCode value113074 = MediaTypeCode._(
    '113074',
  );

  /// value113075
  static final MediaTypeCode value113075 = MediaTypeCode._(
    '113075',
  );

  /// value113076
  static final MediaTypeCode value113076 = MediaTypeCode._(
    '113076',
  );

  /// value113077
  static final MediaTypeCode value113077 = MediaTypeCode._(
    '113077',
  );

  /// value113078
  static final MediaTypeCode value113078 = MediaTypeCode._(
    '113078',
  );

  /// value113079
  static final MediaTypeCode value113079 = MediaTypeCode._(
    '113079',
  );

  /// value113080
  static final MediaTypeCode value113080 = MediaTypeCode._(
    '113080',
  );

  /// value113081
  static final MediaTypeCode value113081 = MediaTypeCode._(
    '113081',
  );

  /// value113082
  static final MediaTypeCode value113082 = MediaTypeCode._(
    '113082',
  );

  /// value113083
  static final MediaTypeCode value113083 = MediaTypeCode._(
    '113083',
  );

  /// value113085
  static final MediaTypeCode value113085 = MediaTypeCode._(
    '113085',
  );

  /// value113086
  static final MediaTypeCode value113086 = MediaTypeCode._(
    '113086',
  );

  /// value113087
  static final MediaTypeCode value113087 = MediaTypeCode._(
    '113087',
  );

  /// value113088
  static final MediaTypeCode value113088 = MediaTypeCode._(
    '113088',
  );

  /// value113089
  static final MediaTypeCode value113089 = MediaTypeCode._(
    '113089',
  );

  /// value113090
  static final MediaTypeCode value113090 = MediaTypeCode._(
    '113090',
  );

  /// value113091
  static final MediaTypeCode value113091 = MediaTypeCode._(
    '113091',
  );

  /// value113092
  static final MediaTypeCode value113092 = MediaTypeCode._(
    '113092',
  );

  /// value113093
  static final MediaTypeCode value113093 = MediaTypeCode._(
    '113093',
  );

  /// value113094
  static final MediaTypeCode value113094 = MediaTypeCode._(
    '113094',
  );

  /// value113095
  static final MediaTypeCode value113095 = MediaTypeCode._(
    '113095',
  );

  /// value113096
  static final MediaTypeCode value113096 = MediaTypeCode._(
    '113096',
  );

  /// value113097
  static final MediaTypeCode value113097 = MediaTypeCode._(
    '113097',
  );

  /// value113100
  static final MediaTypeCode value113100 = MediaTypeCode._(
    '113100',
  );

  /// value113101
  static final MediaTypeCode value113101 = MediaTypeCode._(
    '113101',
  );

  /// value113102
  static final MediaTypeCode value113102 = MediaTypeCode._(
    '113102',
  );

  /// value113103
  static final MediaTypeCode value113103 = MediaTypeCode._(
    '113103',
  );

  /// value113104
  static final MediaTypeCode value113104 = MediaTypeCode._(
    '113104',
  );

  /// value113105
  static final MediaTypeCode value113105 = MediaTypeCode._(
    '113105',
  );

  /// value113106
  static final MediaTypeCode value113106 = MediaTypeCode._(
    '113106',
  );

  /// value113107
  static final MediaTypeCode value113107 = MediaTypeCode._(
    '113107',
  );

  /// value113108
  static final MediaTypeCode value113108 = MediaTypeCode._(
    '113108',
  );

  /// value113109
  static final MediaTypeCode value113109 = MediaTypeCode._(
    '113109',
  );

  /// value113110
  static final MediaTypeCode value113110 = MediaTypeCode._(
    '113110',
  );

  /// value113111
  static final MediaTypeCode value113111 = MediaTypeCode._(
    '113111',
  );

  /// value113500
  static final MediaTypeCode value113500 = MediaTypeCode._(
    '113500',
  );

  /// value113502
  static final MediaTypeCode value113502 = MediaTypeCode._(
    '113502',
  );

  /// value113503
  static final MediaTypeCode value113503 = MediaTypeCode._(
    '113503',
  );

  /// value113505
  static final MediaTypeCode value113505 = MediaTypeCode._(
    '113505',
  );

  /// value113506
  static final MediaTypeCode value113506 = MediaTypeCode._(
    '113506',
  );

  /// value113507
  static final MediaTypeCode value113507 = MediaTypeCode._(
    '113507',
  );

  /// value113508
  static final MediaTypeCode value113508 = MediaTypeCode._(
    '113508',
  );

  /// value113509
  static final MediaTypeCode value113509 = MediaTypeCode._(
    '113509',
  );

  /// value113510
  static final MediaTypeCode value113510 = MediaTypeCode._(
    '113510',
  );

  /// value113511
  static final MediaTypeCode value113511 = MediaTypeCode._(
    '113511',
  );

  /// value113512
  static final MediaTypeCode value113512 = MediaTypeCode._(
    '113512',
  );

  /// value113513
  static final MediaTypeCode value113513 = MediaTypeCode._(
    '113513',
  );

  /// value113514
  static final MediaTypeCode value113514 = MediaTypeCode._(
    '113514',
  );

  /// value113516
  static final MediaTypeCode value113516 = MediaTypeCode._(
    '113516',
  );

  /// value113517
  static final MediaTypeCode value113517 = MediaTypeCode._(
    '113517',
  );

  /// value113518
  static final MediaTypeCode value113518 = MediaTypeCode._(
    '113518',
  );

  /// value113520
  static final MediaTypeCode value113520 = MediaTypeCode._(
    '113520',
  );

  /// value113521
  static final MediaTypeCode value113521 = MediaTypeCode._(
    '113521',
  );

  /// value113522
  static final MediaTypeCode value113522 = MediaTypeCode._(
    '113522',
  );

  /// value113523
  static final MediaTypeCode value113523 = MediaTypeCode._(
    '113523',
  );

  /// value113526
  static final MediaTypeCode value113526 = MediaTypeCode._(
    '113526',
  );

  /// value113527
  static final MediaTypeCode value113527 = MediaTypeCode._(
    '113527',
  );

  /// value113528
  static final MediaTypeCode value113528 = MediaTypeCode._(
    '113528',
  );

  /// value113529
  static final MediaTypeCode value113529 = MediaTypeCode._(
    '113529',
  );

  /// value113530
  static final MediaTypeCode value113530 = MediaTypeCode._(
    '113530',
  );

  /// value113540
  static final MediaTypeCode value113540 = MediaTypeCode._(
    '113540',
  );

  /// value113541
  static final MediaTypeCode value113541 = MediaTypeCode._(
    '113541',
  );

  /// value113542
  static final MediaTypeCode value113542 = MediaTypeCode._(
    '113542',
  );

  /// value113543
  static final MediaTypeCode value113543 = MediaTypeCode._(
    '113543',
  );

  /// value113550
  static final MediaTypeCode value113550 = MediaTypeCode._(
    '113550',
  );

  /// value113551
  static final MediaTypeCode value113551 = MediaTypeCode._(
    '113551',
  );

  /// value113552
  static final MediaTypeCode value113552 = MediaTypeCode._(
    '113552',
  );

  /// value113560
  static final MediaTypeCode value113560 = MediaTypeCode._(
    '113560',
  );

  /// value113561
  static final MediaTypeCode value113561 = MediaTypeCode._(
    '113561',
  );

  /// value113562
  static final MediaTypeCode value113562 = MediaTypeCode._(
    '113562',
  );

  /// value113563
  static final MediaTypeCode value113563 = MediaTypeCode._(
    '113563',
  );

  /// value113568
  static final MediaTypeCode value113568 = MediaTypeCode._(
    '113568',
  );

  /// value113570
  static final MediaTypeCode value113570 = MediaTypeCode._(
    '113570',
  );

  /// value113571
  static final MediaTypeCode value113571 = MediaTypeCode._(
    '113571',
  );

  /// value113572
  static final MediaTypeCode value113572 = MediaTypeCode._(
    '113572',
  );

  /// value113573
  static final MediaTypeCode value113573 = MediaTypeCode._(
    '113573',
  );

  /// value113574
  static final MediaTypeCode value113574 = MediaTypeCode._(
    '113574',
  );

  /// value113575
  static final MediaTypeCode value113575 = MediaTypeCode._(
    '113575',
  );

  /// value113576
  static final MediaTypeCode value113576 = MediaTypeCode._(
    '113576',
  );

  /// value113577
  static final MediaTypeCode value113577 = MediaTypeCode._(
    '113577',
  );

  /// value113601
  static final MediaTypeCode value113601 = MediaTypeCode._(
    '113601',
  );

  /// value113602
  static final MediaTypeCode value113602 = MediaTypeCode._(
    '113602',
  );

  /// value113603
  static final MediaTypeCode value113603 = MediaTypeCode._(
    '113603',
  );

  /// value113605
  static final MediaTypeCode value113605 = MediaTypeCode._(
    '113605',
  );

  /// value113606
  static final MediaTypeCode value113606 = MediaTypeCode._(
    '113606',
  );

  /// value113607
  static final MediaTypeCode value113607 = MediaTypeCode._(
    '113607',
  );

  /// value113608
  static final MediaTypeCode value113608 = MediaTypeCode._(
    '113608',
  );

  /// value113609
  static final MediaTypeCode value113609 = MediaTypeCode._(
    '113609',
  );

  /// value113611
  static final MediaTypeCode value113611 = MediaTypeCode._(
    '113611',
  );

  /// value113612
  static final MediaTypeCode value113612 = MediaTypeCode._(
    '113612',
  );

  /// value113613
  static final MediaTypeCode value113613 = MediaTypeCode._(
    '113613',
  );

  /// value113620
  static final MediaTypeCode value113620 = MediaTypeCode._(
    '113620',
  );

  /// value113621
  static final MediaTypeCode value113621 = MediaTypeCode._(
    '113621',
  );

  /// value113622
  static final MediaTypeCode value113622 = MediaTypeCode._(
    '113622',
  );

  /// value113630
  static final MediaTypeCode value113630 = MediaTypeCode._(
    '113630',
  );

  /// value113631
  static final MediaTypeCode value113631 = MediaTypeCode._(
    '113631',
  );

  /// value113650
  static final MediaTypeCode value113650 = MediaTypeCode._(
    '113650',
  );

  /// value113651
  static final MediaTypeCode value113651 = MediaTypeCode._(
    '113651',
  );

  /// value113652
  static final MediaTypeCode value113652 = MediaTypeCode._(
    '113652',
  );

  /// value113653
  static final MediaTypeCode value113653 = MediaTypeCode._(
    '113653',
  );

  /// value113661
  static final MediaTypeCode value113661 = MediaTypeCode._(
    '113661',
  );

  /// value113662
  static final MediaTypeCode value113662 = MediaTypeCode._(
    '113662',
  );

  /// value113663
  static final MediaTypeCode value113663 = MediaTypeCode._(
    '113663',
  );

  /// value113664
  static final MediaTypeCode value113664 = MediaTypeCode._(
    '113664',
  );

  /// value113665
  static final MediaTypeCode value113665 = MediaTypeCode._(
    '113665',
  );

  /// value113666
  static final MediaTypeCode value113666 = MediaTypeCode._(
    '113666',
  );

  /// value113669
  static final MediaTypeCode value113669 = MediaTypeCode._(
    '113669',
  );

  /// value113670
  static final MediaTypeCode value113670 = MediaTypeCode._(
    '113670',
  );

  /// value113671
  static final MediaTypeCode value113671 = MediaTypeCode._(
    '113671',
  );

  /// value113680
  static final MediaTypeCode value113680 = MediaTypeCode._(
    '113680',
  );

  /// value113681
  static final MediaTypeCode value113681 = MediaTypeCode._(
    '113681',
  );

  /// value113682
  static final MediaTypeCode value113682 = MediaTypeCode._(
    '113682',
  );

  /// value113683
  static final MediaTypeCode value113683 = MediaTypeCode._(
    '113683',
  );

  /// value113684
  static final MediaTypeCode value113684 = MediaTypeCode._(
    '113684',
  );

  /// value113685
  static final MediaTypeCode value113685 = MediaTypeCode._(
    '113685',
  );

  /// value113686
  static final MediaTypeCode value113686 = MediaTypeCode._(
    '113686',
  );

  /// value113687
  static final MediaTypeCode value113687 = MediaTypeCode._(
    '113687',
  );

  /// value113688
  static final MediaTypeCode value113688 = MediaTypeCode._(
    '113688',
  );

  /// value113689
  static final MediaTypeCode value113689 = MediaTypeCode._(
    '113689',
  );

  /// value113690
  static final MediaTypeCode value113690 = MediaTypeCode._(
    '113690',
  );

  /// value113691
  static final MediaTypeCode value113691 = MediaTypeCode._(
    '113691',
  );

  /// value113692
  static final MediaTypeCode value113692 = MediaTypeCode._(
    '113692',
  );

  /// value113701
  static final MediaTypeCode value113701 = MediaTypeCode._(
    '113701',
  );

  /// value113702
  static final MediaTypeCode value113702 = MediaTypeCode._(
    '113702',
  );

  /// value113704
  static final MediaTypeCode value113704 = MediaTypeCode._(
    '113704',
  );

  /// value113705
  static final MediaTypeCode value113705 = MediaTypeCode._(
    '113705',
  );

  /// value113706
  static final MediaTypeCode value113706 = MediaTypeCode._(
    '113706',
  );

  /// value113710
  static final MediaTypeCode value113710 = MediaTypeCode._(
    '113710',
  );

  /// value113711
  static final MediaTypeCode value113711 = MediaTypeCode._(
    '113711',
  );

  /// value113720
  static final MediaTypeCode value113720 = MediaTypeCode._(
    '113720',
  );

  /// value113721
  static final MediaTypeCode value113721 = MediaTypeCode._(
    '113721',
  );

  /// value113722
  static final MediaTypeCode value113722 = MediaTypeCode._(
    '113722',
  );

  /// value113723
  static final MediaTypeCode value113723 = MediaTypeCode._(
    '113723',
  );

  /// value113724
  static final MediaTypeCode value113724 = MediaTypeCode._(
    '113724',
  );

  /// value113725
  static final MediaTypeCode value113725 = MediaTypeCode._(
    '113725',
  );

  /// value113726
  static final MediaTypeCode value113726 = MediaTypeCode._(
    '113726',
  );

  /// value113727
  static final MediaTypeCode value113727 = MediaTypeCode._(
    '113727',
  );

  /// value113728
  static final MediaTypeCode value113728 = MediaTypeCode._(
    '113728',
  );

  /// value113729
  static final MediaTypeCode value113729 = MediaTypeCode._(
    '113729',
  );

  /// value113730
  static final MediaTypeCode value113730 = MediaTypeCode._(
    '113730',
  );

  /// value113731
  static final MediaTypeCode value113731 = MediaTypeCode._(
    '113731',
  );

  /// value113732
  static final MediaTypeCode value113732 = MediaTypeCode._(
    '113732',
  );

  /// value113733
  static final MediaTypeCode value113733 = MediaTypeCode._(
    '113733',
  );

  /// value113734
  static final MediaTypeCode value113734 = MediaTypeCode._(
    '113734',
  );

  /// value113735
  static final MediaTypeCode value113735 = MediaTypeCode._(
    '113735',
  );

  /// value113736
  static final MediaTypeCode value113736 = MediaTypeCode._(
    '113736',
  );

  /// value113737
  static final MediaTypeCode value113737 = MediaTypeCode._(
    '113737',
  );

  /// value113738
  static final MediaTypeCode value113738 = MediaTypeCode._(
    '113738',
  );

  /// value113739
  static final MediaTypeCode value113739 = MediaTypeCode._(
    '113739',
  );

  /// value113740
  static final MediaTypeCode value113740 = MediaTypeCode._(
    '113740',
  );

  /// value113742
  static final MediaTypeCode value113742 = MediaTypeCode._(
    '113742',
  );

  /// value113743
  static final MediaTypeCode value113743 = MediaTypeCode._(
    '113743',
  );

  /// value113744
  static final MediaTypeCode value113744 = MediaTypeCode._(
    '113744',
  );

  /// value113745
  static final MediaTypeCode value113745 = MediaTypeCode._(
    '113745',
  );

  /// value113748
  static final MediaTypeCode value113748 = MediaTypeCode._(
    '113748',
  );

  /// value113750
  static final MediaTypeCode value113750 = MediaTypeCode._(
    '113750',
  );

  /// value113751
  static final MediaTypeCode value113751 = MediaTypeCode._(
    '113751',
  );

  /// value113752
  static final MediaTypeCode value113752 = MediaTypeCode._(
    '113752',
  );

  /// value113753
  static final MediaTypeCode value113753 = MediaTypeCode._(
    '113753',
  );

  /// value113754
  static final MediaTypeCode value113754 = MediaTypeCode._(
    '113754',
  );

  /// value113755
  static final MediaTypeCode value113755 = MediaTypeCode._(
    '113755',
  );

  /// value113756
  static final MediaTypeCode value113756 = MediaTypeCode._(
    '113756',
  );

  /// value113757
  static final MediaTypeCode value113757 = MediaTypeCode._(
    '113757',
  );

  /// value113758
  static final MediaTypeCode value113758 = MediaTypeCode._(
    '113758',
  );

  /// value113759
  static final MediaTypeCode value113759 = MediaTypeCode._(
    '113759',
  );

  /// value113760
  static final MediaTypeCode value113760 = MediaTypeCode._(
    '113760',
  );

  /// value113761
  static final MediaTypeCode value113761 = MediaTypeCode._(
    '113761',
  );

  /// value113763
  static final MediaTypeCode value113763 = MediaTypeCode._(
    '113763',
  );

  /// value113764
  static final MediaTypeCode value113764 = MediaTypeCode._(
    '113764',
  );

  /// value113766
  static final MediaTypeCode value113766 = MediaTypeCode._(
    '113766',
  );

  /// value113767
  static final MediaTypeCode value113767 = MediaTypeCode._(
    '113767',
  );

  /// value113768
  static final MediaTypeCode value113768 = MediaTypeCode._(
    '113768',
  );

  /// value113769
  static final MediaTypeCode value113769 = MediaTypeCode._(
    '113769',
  );

  /// value113770
  static final MediaTypeCode value113770 = MediaTypeCode._(
    '113770',
  );

  /// value113771
  static final MediaTypeCode value113771 = MediaTypeCode._(
    '113771',
  );

  /// value113772
  static final MediaTypeCode value113772 = MediaTypeCode._(
    '113772',
  );

  /// value113773
  static final MediaTypeCode value113773 = MediaTypeCode._(
    '113773',
  );

  /// value113780
  static final MediaTypeCode value113780 = MediaTypeCode._(
    '113780',
  );

  /// value113788
  static final MediaTypeCode value113788 = MediaTypeCode._(
    '113788',
  );

  /// value113789
  static final MediaTypeCode value113789 = MediaTypeCode._(
    '113789',
  );

  /// value113790
  static final MediaTypeCode value113790 = MediaTypeCode._(
    '113790',
  );

  /// value113791
  static final MediaTypeCode value113791 = MediaTypeCode._(
    '113791',
  );

  /// value113792
  static final MediaTypeCode value113792 = MediaTypeCode._(
    '113792',
  );

  /// value113793
  static final MediaTypeCode value113793 = MediaTypeCode._(
    '113793',
  );

  /// value113794
  static final MediaTypeCode value113794 = MediaTypeCode._(
    '113794',
  );

  /// value113795
  static final MediaTypeCode value113795 = MediaTypeCode._(
    '113795',
  );

  /// value113800
  static final MediaTypeCode value113800 = MediaTypeCode._(
    '113800',
  );

  /// value113801
  static final MediaTypeCode value113801 = MediaTypeCode._(
    '113801',
  );

  /// value113802
  static final MediaTypeCode value113802 = MediaTypeCode._(
    '113802',
  );

  /// value113803
  static final MediaTypeCode value113803 = MediaTypeCode._(
    '113803',
  );

  /// value113804
  static final MediaTypeCode value113804 = MediaTypeCode._(
    '113804',
  );

  /// value113805
  static final MediaTypeCode value113805 = MediaTypeCode._(
    '113805',
  );

  /// value113806
  static final MediaTypeCode value113806 = MediaTypeCode._(
    '113806',
  );

  /// value113807
  static final MediaTypeCode value113807 = MediaTypeCode._(
    '113807',
  );

  /// value113808
  static final MediaTypeCode value113808 = MediaTypeCode._(
    '113808',
  );

  /// value113809
  static final MediaTypeCode value113809 = MediaTypeCode._(
    '113809',
  );

  /// value113810
  static final MediaTypeCode value113810 = MediaTypeCode._(
    '113810',
  );

  /// value113811
  static final MediaTypeCode value113811 = MediaTypeCode._(
    '113811',
  );

  /// value113812
  static final MediaTypeCode value113812 = MediaTypeCode._(
    '113812',
  );

  /// value113813
  static final MediaTypeCode value113813 = MediaTypeCode._(
    '113813',
  );

  /// value113814
  static final MediaTypeCode value113814 = MediaTypeCode._(
    '113814',
  );

  /// value113815
  static final MediaTypeCode value113815 = MediaTypeCode._(
    '113815',
  );

  /// value113816
  static final MediaTypeCode value113816 = MediaTypeCode._(
    '113816',
  );

  /// value113817
  static final MediaTypeCode value113817 = MediaTypeCode._(
    '113817',
  );

  /// value113818
  static final MediaTypeCode value113818 = MediaTypeCode._(
    '113818',
  );

  /// value113819
  static final MediaTypeCode value113819 = MediaTypeCode._(
    '113819',
  );

  /// value113820
  static final MediaTypeCode value113820 = MediaTypeCode._(
    '113820',
  );

  /// value113821
  static final MediaTypeCode value113821 = MediaTypeCode._(
    '113821',
  );

  /// value113822
  static final MediaTypeCode value113822 = MediaTypeCode._(
    '113822',
  );

  /// value113823
  static final MediaTypeCode value113823 = MediaTypeCode._(
    '113823',
  );

  /// value113824
  static final MediaTypeCode value113824 = MediaTypeCode._(
    '113824',
  );

  /// value113825
  static final MediaTypeCode value113825 = MediaTypeCode._(
    '113825',
  );

  /// value113826
  static final MediaTypeCode value113826 = MediaTypeCode._(
    '113826',
  );

  /// value113827
  static final MediaTypeCode value113827 = MediaTypeCode._(
    '113827',
  );

  /// value113828
  static final MediaTypeCode value113828 = MediaTypeCode._(
    '113828',
  );

  /// value113829
  static final MediaTypeCode value113829 = MediaTypeCode._(
    '113829',
  );

  /// value113830
  static final MediaTypeCode value113830 = MediaTypeCode._(
    '113830',
  );

  /// value113831
  static final MediaTypeCode value113831 = MediaTypeCode._(
    '113831',
  );

  /// value113832
  static final MediaTypeCode value113832 = MediaTypeCode._(
    '113832',
  );

  /// value113833
  static final MediaTypeCode value113833 = MediaTypeCode._(
    '113833',
  );

  /// value113834
  static final MediaTypeCode value113834 = MediaTypeCode._(
    '113834',
  );

  /// value113835
  static final MediaTypeCode value113835 = MediaTypeCode._(
    '113835',
  );

  /// value113836
  static final MediaTypeCode value113836 = MediaTypeCode._(
    '113836',
  );

  /// value113837
  static final MediaTypeCode value113837 = MediaTypeCode._(
    '113837',
  );

  /// value113838
  static final MediaTypeCode value113838 = MediaTypeCode._(
    '113838',
  );

  /// value113839
  static final MediaTypeCode value113839 = MediaTypeCode._(
    '113839',
  );

  /// value113840
  static final MediaTypeCode value113840 = MediaTypeCode._(
    '113840',
  );

  /// value113841
  static final MediaTypeCode value113841 = MediaTypeCode._(
    '113841',
  );

  /// value113842
  static final MediaTypeCode value113842 = MediaTypeCode._(
    '113842',
  );

  /// value113845
  static final MediaTypeCode value113845 = MediaTypeCode._(
    '113845',
  );

  /// value113846
  static final MediaTypeCode value113846 = MediaTypeCode._(
    '113846',
  );

  /// value113847
  static final MediaTypeCode value113847 = MediaTypeCode._(
    '113847',
  );

  /// value113850
  static final MediaTypeCode value113850 = MediaTypeCode._(
    '113850',
  );

  /// value113851
  static final MediaTypeCode value113851 = MediaTypeCode._(
    '113851',
  );

  /// value113852
  static final MediaTypeCode value113852 = MediaTypeCode._(
    '113852',
  );

  /// value113853
  static final MediaTypeCode value113853 = MediaTypeCode._(
    '113853',
  );

  /// value113854
  static final MediaTypeCode value113854 = MediaTypeCode._(
    '113854',
  );

  /// value113855
  static final MediaTypeCode value113855 = MediaTypeCode._(
    '113855',
  );

  /// value113856
  static final MediaTypeCode value113856 = MediaTypeCode._(
    '113856',
  );

  /// value113857
  static final MediaTypeCode value113857 = MediaTypeCode._(
    '113857',
  );

  /// value113858
  static final MediaTypeCode value113858 = MediaTypeCode._(
    '113858',
  );

  /// value113859
  static final MediaTypeCode value113859 = MediaTypeCode._(
    '113859',
  );

  /// value113860
  static final MediaTypeCode value113860 = MediaTypeCode._(
    '113860',
  );

  /// value113861
  static final MediaTypeCode value113861 = MediaTypeCode._(
    '113861',
  );

  /// value113862
  static final MediaTypeCode value113862 = MediaTypeCode._(
    '113862',
  );

  /// value113863
  static final MediaTypeCode value113863 = MediaTypeCode._(
    '113863',
  );

  /// value113864
  static final MediaTypeCode value113864 = MediaTypeCode._(
    '113864',
  );

  /// value113865
  static final MediaTypeCode value113865 = MediaTypeCode._(
    '113865',
  );

  /// value113866
  static final MediaTypeCode value113866 = MediaTypeCode._(
    '113866',
  );

  /// value113867
  static final MediaTypeCode value113867 = MediaTypeCode._(
    '113867',
  );

  /// value113868
  static final MediaTypeCode value113868 = MediaTypeCode._(
    '113868',
  );

  /// value113870
  static final MediaTypeCode value113870 = MediaTypeCode._(
    '113870',
  );

  /// value113871
  static final MediaTypeCode value113871 = MediaTypeCode._(
    '113871',
  );

  /// value113872
  static final MediaTypeCode value113872 = MediaTypeCode._(
    '113872',
  );

  /// value113873
  static final MediaTypeCode value113873 = MediaTypeCode._(
    '113873',
  );

  /// value113874
  static final MediaTypeCode value113874 = MediaTypeCode._(
    '113874',
  );

  /// value113875
  static final MediaTypeCode value113875 = MediaTypeCode._(
    '113875',
  );

  /// value113876
  static final MediaTypeCode value113876 = MediaTypeCode._(
    '113876',
  );

  /// value113877
  static final MediaTypeCode value113877 = MediaTypeCode._(
    '113877',
  );

  /// value113878
  static final MediaTypeCode value113878 = MediaTypeCode._(
    '113878',
  );

  /// value113879
  static final MediaTypeCode value113879 = MediaTypeCode._(
    '113879',
  );

  /// value113880
  static final MediaTypeCode value113880 = MediaTypeCode._(
    '113880',
  );

  /// value113890
  static final MediaTypeCode value113890 = MediaTypeCode._(
    '113890',
  );

  /// value113893
  static final MediaTypeCode value113893 = MediaTypeCode._(
    '113893',
  );

  /// value113895
  static final MediaTypeCode value113895 = MediaTypeCode._(
    '113895',
  );

  /// value113896
  static final MediaTypeCode value113896 = MediaTypeCode._(
    '113896',
  );

  /// value113897
  static final MediaTypeCode value113897 = MediaTypeCode._(
    '113897',
  );

  /// value113898
  static final MediaTypeCode value113898 = MediaTypeCode._(
    '113898',
  );

  /// value113899
  static final MediaTypeCode value113899 = MediaTypeCode._(
    '113899',
  );

  /// value113900
  static final MediaTypeCode value113900 = MediaTypeCode._(
    '113900',
  );

  /// value113901
  static final MediaTypeCode value113901 = MediaTypeCode._(
    '113901',
  );

  /// value113902
  static final MediaTypeCode value113902 = MediaTypeCode._(
    '113902',
  );

  /// value113903
  static final MediaTypeCode value113903 = MediaTypeCode._(
    '113903',
  );

  /// value113904
  static final MediaTypeCode value113904 = MediaTypeCode._(
    '113904',
  );

  /// value113905
  static final MediaTypeCode value113905 = MediaTypeCode._(
    '113905',
  );

  /// value113906
  static final MediaTypeCode value113906 = MediaTypeCode._(
    '113906',
  );

  /// value113907
  static final MediaTypeCode value113907 = MediaTypeCode._(
    '113907',
  );

  /// value113908
  static final MediaTypeCode value113908 = MediaTypeCode._(
    '113908',
  );

  /// value113909
  static final MediaTypeCode value113909 = MediaTypeCode._(
    '113909',
  );

  /// value113910
  static final MediaTypeCode value113910 = MediaTypeCode._(
    '113910',
  );

  /// value113911
  static final MediaTypeCode value113911 = MediaTypeCode._(
    '113911',
  );

  /// value113912
  static final MediaTypeCode value113912 = MediaTypeCode._(
    '113912',
  );

  /// value113913
  static final MediaTypeCode value113913 = MediaTypeCode._(
    '113913',
  );

  /// value113914
  static final MediaTypeCode value113914 = MediaTypeCode._(
    '113914',
  );

  /// value113921
  static final MediaTypeCode value113921 = MediaTypeCode._(
    '113921',
  );

  /// value113922
  static final MediaTypeCode value113922 = MediaTypeCode._(
    '113922',
  );

  /// value113923
  static final MediaTypeCode value113923 = MediaTypeCode._(
    '113923',
  );

  /// value113930
  static final MediaTypeCode value113930 = MediaTypeCode._(
    '113930',
  );

  /// value113931
  static final MediaTypeCode value113931 = MediaTypeCode._(
    '113931',
  );

  /// value113932
  static final MediaTypeCode value113932 = MediaTypeCode._(
    '113932',
  );

  /// value113933
  static final MediaTypeCode value113933 = MediaTypeCode._(
    '113933',
  );

  /// value113934
  static final MediaTypeCode value113934 = MediaTypeCode._(
    '113934',
  );

  /// value113935
  static final MediaTypeCode value113935 = MediaTypeCode._(
    '113935',
  );

  /// value113936
  static final MediaTypeCode value113936 = MediaTypeCode._(
    '113936',
  );

  /// value113937
  static final MediaTypeCode value113937 = MediaTypeCode._(
    '113937',
  );

  /// value113940
  static final MediaTypeCode value113940 = MediaTypeCode._(
    '113940',
  );

  /// value113941
  static final MediaTypeCode value113941 = MediaTypeCode._(
    '113941',
  );

  /// value113942
  static final MediaTypeCode value113942 = MediaTypeCode._(
    '113942',
  );

  /// value113943
  static final MediaTypeCode value113943 = MediaTypeCode._(
    '113943',
  );

  /// value113944
  static final MediaTypeCode value113944 = MediaTypeCode._(
    '113944',
  );

  /// value113945
  static final MediaTypeCode value113945 = MediaTypeCode._(
    '113945',
  );

  /// value113946
  static final MediaTypeCode value113946 = MediaTypeCode._(
    '113946',
  );

  /// value113947
  static final MediaTypeCode value113947 = MediaTypeCode._(
    '113947',
  );

  /// value113948
  static final MediaTypeCode value113948 = MediaTypeCode._(
    '113948',
  );

  /// value113949
  static final MediaTypeCode value113949 = MediaTypeCode._(
    '113949',
  );

  /// value113950
  static final MediaTypeCode value113950 = MediaTypeCode._(
    '113950',
  );

  /// value113951
  static final MediaTypeCode value113951 = MediaTypeCode._(
    '113951',
  );

  /// value113952
  static final MediaTypeCode value113952 = MediaTypeCode._(
    '113952',
  );

  /// value113953
  static final MediaTypeCode value113953 = MediaTypeCode._(
    '113953',
  );

  /// value113954
  static final MediaTypeCode value113954 = MediaTypeCode._(
    '113954',
  );

  /// value113955
  static final MediaTypeCode value113955 = MediaTypeCode._(
    '113955',
  );

  /// value113956
  static final MediaTypeCode value113956 = MediaTypeCode._(
    '113956',
  );

  /// value113957
  static final MediaTypeCode value113957 = MediaTypeCode._(
    '113957',
  );

  /// value113958
  static final MediaTypeCode value113958 = MediaTypeCode._(
    '113958',
  );

  /// value113959
  static final MediaTypeCode value113959 = MediaTypeCode._(
    '113959',
  );

  /// value113961
  static final MediaTypeCode value113961 = MediaTypeCode._(
    '113961',
  );

  /// value113962
  static final MediaTypeCode value113962 = MediaTypeCode._(
    '113962',
  );

  /// value113963
  static final MediaTypeCode value113963 = MediaTypeCode._(
    '113963',
  );

  /// value113970
  static final MediaTypeCode value113970 = MediaTypeCode._(
    '113970',
  );

  /// value114000
  static final MediaTypeCode value114000 = MediaTypeCode._(
    '114000',
  );

  /// value114001
  static final MediaTypeCode value114001 = MediaTypeCode._(
    '114001',
  );

  /// value114002
  static final MediaTypeCode value114002 = MediaTypeCode._(
    '114002',
  );

  /// value114003
  static final MediaTypeCode value114003 = MediaTypeCode._(
    '114003',
  );

  /// value114004
  static final MediaTypeCode value114004 = MediaTypeCode._(
    '114004',
  );

  /// value114005
  static final MediaTypeCode value114005 = MediaTypeCode._(
    '114005',
  );

  /// value114006
  static final MediaTypeCode value114006 = MediaTypeCode._(
    '114006',
  );

  /// value114007
  static final MediaTypeCode value114007 = MediaTypeCode._(
    '114007',
  );

  /// value114008
  static final MediaTypeCode value114008 = MediaTypeCode._(
    '114008',
  );

  /// value114009
  static final MediaTypeCode value114009 = MediaTypeCode._(
    '114009',
  );

  /// value114010
  static final MediaTypeCode value114010 = MediaTypeCode._(
    '114010',
  );

  /// value114011
  static final MediaTypeCode value114011 = MediaTypeCode._(
    '114011',
  );

  /// value114201
  static final MediaTypeCode value114201 = MediaTypeCode._(
    '114201',
  );

  /// value114202
  static final MediaTypeCode value114202 = MediaTypeCode._(
    '114202',
  );

  /// value114203
  static final MediaTypeCode value114203 = MediaTypeCode._(
    '114203',
  );

  /// value114204
  static final MediaTypeCode value114204 = MediaTypeCode._(
    '114204',
  );

  /// value114205
  static final MediaTypeCode value114205 = MediaTypeCode._(
    '114205',
  );

  /// value114206
  static final MediaTypeCode value114206 = MediaTypeCode._(
    '114206',
  );

  /// value114207
  static final MediaTypeCode value114207 = MediaTypeCode._(
    '114207',
  );

  /// value114208
  static final MediaTypeCode value114208 = MediaTypeCode._(
    '114208',
  );

  /// value114209
  static final MediaTypeCode value114209 = MediaTypeCode._(
    '114209',
  );

  /// value114210
  static final MediaTypeCode value114210 = MediaTypeCode._(
    '114210',
  );

  /// value114211
  static final MediaTypeCode value114211 = MediaTypeCode._(
    '114211',
  );

  /// value114213
  static final MediaTypeCode value114213 = MediaTypeCode._(
    '114213',
  );

  /// value114215
  static final MediaTypeCode value114215 = MediaTypeCode._(
    '114215',
  );

  /// value114216
  static final MediaTypeCode value114216 = MediaTypeCode._(
    '114216',
  );

  /// value121001
  static final MediaTypeCode value121001 = MediaTypeCode._(
    '121001',
  );

  /// value121002
  static final MediaTypeCode value121002 = MediaTypeCode._(
    '121002',
  );

  /// value121003
  static final MediaTypeCode value121003 = MediaTypeCode._(
    '121003',
  );

  /// value121004
  static final MediaTypeCode value121004 = MediaTypeCode._(
    '121004',
  );

  /// value121005
  static final MediaTypeCode value121005 = MediaTypeCode._(
    '121005',
  );

  /// value121006
  static final MediaTypeCode value121006 = MediaTypeCode._(
    '121006',
  );

  /// value121007
  static final MediaTypeCode value121007 = MediaTypeCode._(
    '121007',
  );

  /// value121008
  static final MediaTypeCode value121008 = MediaTypeCode._(
    '121008',
  );

  /// value121009
  static final MediaTypeCode value121009 = MediaTypeCode._(
    '121009',
  );

  /// value121010
  static final MediaTypeCode value121010 = MediaTypeCode._(
    '121010',
  );

  /// value121011
  static final MediaTypeCode value121011 = MediaTypeCode._(
    '121011',
  );

  /// value121012
  static final MediaTypeCode value121012 = MediaTypeCode._(
    '121012',
  );

  /// value121013
  static final MediaTypeCode value121013 = MediaTypeCode._(
    '121013',
  );

  /// value121014
  static final MediaTypeCode value121014 = MediaTypeCode._(
    '121014',
  );

  /// value121015
  static final MediaTypeCode value121015 = MediaTypeCode._(
    '121015',
  );

  /// value121016
  static final MediaTypeCode value121016 = MediaTypeCode._(
    '121016',
  );

  /// value121017
  static final MediaTypeCode value121017 = MediaTypeCode._(
    '121017',
  );

  /// value121018
  static final MediaTypeCode value121018 = MediaTypeCode._(
    '121018',
  );

  /// value121019
  static final MediaTypeCode value121019 = MediaTypeCode._(
    '121019',
  );

  /// value121020
  static final MediaTypeCode value121020 = MediaTypeCode._(
    '121020',
  );

  /// value121021
  static final MediaTypeCode value121021 = MediaTypeCode._(
    '121021',
  );

  /// value121022
  static final MediaTypeCode value121022 = MediaTypeCode._(
    '121022',
  );

  /// value121023
  static final MediaTypeCode value121023 = MediaTypeCode._(
    '121023',
  );

  /// value121024
  static final MediaTypeCode value121024 = MediaTypeCode._(
    '121024',
  );

  /// value121025
  static final MediaTypeCode value121025 = MediaTypeCode._(
    '121025',
  );

  /// value121026
  static final MediaTypeCode value121026 = MediaTypeCode._(
    '121026',
  );

  /// value121027
  static final MediaTypeCode value121027 = MediaTypeCode._(
    '121027',
  );

  /// value121028
  static final MediaTypeCode value121028 = MediaTypeCode._(
    '121028',
  );

  /// value121029
  static final MediaTypeCode value121029 = MediaTypeCode._(
    '121029',
  );

  /// value121030
  static final MediaTypeCode value121030 = MediaTypeCode._(
    '121030',
  );

  /// value121031
  static final MediaTypeCode value121031 = MediaTypeCode._(
    '121031',
  );

  /// value121032
  static final MediaTypeCode value121032 = MediaTypeCode._(
    '121032',
  );

  /// value121033
  static final MediaTypeCode value121033 = MediaTypeCode._(
    '121033',
  );

  /// value121034
  static final MediaTypeCode value121034 = MediaTypeCode._(
    '121034',
  );

  /// value121035
  static final MediaTypeCode value121035 = MediaTypeCode._(
    '121035',
  );

  /// value121036
  static final MediaTypeCode value121036 = MediaTypeCode._(
    '121036',
  );

  /// value121037
  static final MediaTypeCode value121037 = MediaTypeCode._(
    '121037',
  );

  /// value121038
  static final MediaTypeCode value121038 = MediaTypeCode._(
    '121038',
  );

  /// value121039
  static final MediaTypeCode value121039 = MediaTypeCode._(
    '121039',
  );

  /// value121040
  static final MediaTypeCode value121040 = MediaTypeCode._(
    '121040',
  );

  /// value121041
  static final MediaTypeCode value121041 = MediaTypeCode._(
    '121041',
  );

  /// value121042
  static final MediaTypeCode value121042 = MediaTypeCode._(
    '121042',
  );

  /// value121043
  static final MediaTypeCode value121043 = MediaTypeCode._(
    '121043',
  );

  /// value121044
  static final MediaTypeCode value121044 = MediaTypeCode._(
    '121044',
  );

  /// value121045
  static final MediaTypeCode value121045 = MediaTypeCode._(
    '121045',
  );

  /// value121046
  static final MediaTypeCode value121046 = MediaTypeCode._(
    '121046',
  );

  /// value121047
  static final MediaTypeCode value121047 = MediaTypeCode._(
    '121047',
  );

  /// value121048
  static final MediaTypeCode value121048 = MediaTypeCode._(
    '121048',
  );

  /// value121049
  static final MediaTypeCode value121049 = MediaTypeCode._(
    '121049',
  );

  /// value121050
  static final MediaTypeCode value121050 = MediaTypeCode._(
    '121050',
  );

  /// value121051
  static final MediaTypeCode value121051 = MediaTypeCode._(
    '121051',
  );

  /// value121052
  static final MediaTypeCode value121052 = MediaTypeCode._(
    '121052',
  );

  /// value121053
  static final MediaTypeCode value121053 = MediaTypeCode._(
    '121053',
  );

  /// value121054
  static final MediaTypeCode value121054 = MediaTypeCode._(
    '121054',
  );

  /// value121055
  static final MediaTypeCode value121055 = MediaTypeCode._(
    '121055',
  );

  /// value121056
  static final MediaTypeCode value121056 = MediaTypeCode._(
    '121056',
  );

  /// value121057
  static final MediaTypeCode value121057 = MediaTypeCode._(
    '121057',
  );

  /// value121058
  static final MediaTypeCode value121058 = MediaTypeCode._(
    '121058',
  );

  /// value121059
  static final MediaTypeCode value121059 = MediaTypeCode._(
    '121059',
  );

  /// value121060
  static final MediaTypeCode value121060 = MediaTypeCode._(
    '121060',
  );

  /// value121062
  static final MediaTypeCode value121062 = MediaTypeCode._(
    '121062',
  );

  /// value121064
  static final MediaTypeCode value121064 = MediaTypeCode._(
    '121064',
  );

  /// value121065
  static final MediaTypeCode value121065 = MediaTypeCode._(
    '121065',
  );

  /// value121066
  static final MediaTypeCode value121066 = MediaTypeCode._(
    '121066',
  );

  /// value121068
  static final MediaTypeCode value121068 = MediaTypeCode._(
    '121068',
  );

  /// value121069
  static final MediaTypeCode value121069 = MediaTypeCode._(
    '121069',
  );

  /// value121070
  static final MediaTypeCode value121070 = MediaTypeCode._(
    '121070',
  );

  /// value121071
  static final MediaTypeCode value121071 = MediaTypeCode._(
    '121071',
  );

  /// value121072
  static final MediaTypeCode value121072 = MediaTypeCode._(
    '121072',
  );

  /// value121073
  static final MediaTypeCode value121073 = MediaTypeCode._(
    '121073',
  );

  /// value121074
  static final MediaTypeCode value121074 = MediaTypeCode._(
    '121074',
  );

  /// value121075
  static final MediaTypeCode value121075 = MediaTypeCode._(
    '121075',
  );

  /// value121076
  static final MediaTypeCode value121076 = MediaTypeCode._(
    '121076',
  );

  /// value121077
  static final MediaTypeCode value121077 = MediaTypeCode._(
    '121077',
  );

  /// value121078
  static final MediaTypeCode value121078 = MediaTypeCode._(
    '121078',
  );

  /// value121079
  static final MediaTypeCode value121079 = MediaTypeCode._(
    '121079',
  );

  /// value121080
  static final MediaTypeCode value121080 = MediaTypeCode._(
    '121080',
  );

  /// value121081
  static final MediaTypeCode value121081 = MediaTypeCode._(
    '121081',
  );

  /// value121082
  static final MediaTypeCode value121082 = MediaTypeCode._(
    '121082',
  );

  /// value121083
  static final MediaTypeCode value121083 = MediaTypeCode._(
    '121083',
  );

  /// value121084
  static final MediaTypeCode value121084 = MediaTypeCode._(
    '121084',
  );

  /// value121085
  static final MediaTypeCode value121085 = MediaTypeCode._(
    '121085',
  );

  /// value121086
  static final MediaTypeCode value121086 = MediaTypeCode._(
    '121086',
  );

  /// value121087
  static final MediaTypeCode value121087 = MediaTypeCode._(
    '121087',
  );

  /// value121088
  static final MediaTypeCode value121088 = MediaTypeCode._(
    '121088',
  );

  /// value121089
  static final MediaTypeCode value121089 = MediaTypeCode._(
    '121089',
  );

  /// value121090
  static final MediaTypeCode value121090 = MediaTypeCode._(
    '121090',
  );

  /// value121091
  static final MediaTypeCode value121091 = MediaTypeCode._(
    '121091',
  );

  /// value121092
  static final MediaTypeCode value121092 = MediaTypeCode._(
    '121092',
  );

  /// value121093
  static final MediaTypeCode value121093 = MediaTypeCode._(
    '121093',
  );

  /// value121094
  static final MediaTypeCode value121094 = MediaTypeCode._(
    '121094',
  );

  /// value121095
  static final MediaTypeCode value121095 = MediaTypeCode._(
    '121095',
  );

  /// value121096
  static final MediaTypeCode value121096 = MediaTypeCode._(
    '121096',
  );

  /// value121097
  static final MediaTypeCode value121097 = MediaTypeCode._(
    '121097',
  );

  /// value121098
  static final MediaTypeCode value121098 = MediaTypeCode._(
    '121098',
  );

  /// value121099
  static final MediaTypeCode value121099 = MediaTypeCode._(
    '121099',
  );

  /// value121100
  static final MediaTypeCode value121100 = MediaTypeCode._(
    '121100',
  );

  /// value121101
  static final MediaTypeCode value121101 = MediaTypeCode._(
    '121101',
  );

  /// value121102
  static final MediaTypeCode value121102 = MediaTypeCode._(
    '121102',
  );

  /// value121103
  static final MediaTypeCode value121103 = MediaTypeCode._(
    '121103',
  );

  /// value121104
  static final MediaTypeCode value121104 = MediaTypeCode._(
    '121104',
  );

  /// value121105
  static final MediaTypeCode value121105 = MediaTypeCode._(
    '121105',
  );

  /// value121106
  static final MediaTypeCode value121106 = MediaTypeCode._(
    '121106',
  );

  /// value121109
  static final MediaTypeCode value121109 = MediaTypeCode._(
    '121109',
  );

  /// value121110
  static final MediaTypeCode value121110 = MediaTypeCode._(
    '121110',
  );

  /// value121111
  static final MediaTypeCode value121111 = MediaTypeCode._(
    '121111',
  );

  /// value121112
  static final MediaTypeCode value121112 = MediaTypeCode._(
    '121112',
  );

  /// value121113
  static final MediaTypeCode value121113 = MediaTypeCode._(
    '121113',
  );

  /// value121114
  static final MediaTypeCode value121114 = MediaTypeCode._(
    '121114',
  );

  /// value121115
  static final MediaTypeCode value121115 = MediaTypeCode._(
    '121115',
  );

  /// value121116
  static final MediaTypeCode value121116 = MediaTypeCode._(
    '121116',
  );

  /// value121117
  static final MediaTypeCode value121117 = MediaTypeCode._(
    '121117',
  );

  /// value121118
  static final MediaTypeCode value121118 = MediaTypeCode._(
    '121118',
  );

  /// value121120
  static final MediaTypeCode value121120 = MediaTypeCode._(
    '121120',
  );

  /// value121121
  static final MediaTypeCode value121121 = MediaTypeCode._(
    '121121',
  );

  /// value121122
  static final MediaTypeCode value121122 = MediaTypeCode._(
    '121122',
  );

  /// value121123
  static final MediaTypeCode value121123 = MediaTypeCode._(
    '121123',
  );

  /// value121124
  static final MediaTypeCode value121124 = MediaTypeCode._(
    '121124',
  );

  /// value121125
  static final MediaTypeCode value121125 = MediaTypeCode._(
    '121125',
  );

  /// value121126
  static final MediaTypeCode value121126 = MediaTypeCode._(
    '121126',
  );

  /// value121127
  static final MediaTypeCode value121127 = MediaTypeCode._(
    '121127',
  );

  /// value121128
  static final MediaTypeCode value121128 = MediaTypeCode._(
    '121128',
  );

  /// value121130
  static final MediaTypeCode value121130 = MediaTypeCode._(
    '121130',
  );

  /// value121131
  static final MediaTypeCode value121131 = MediaTypeCode._(
    '121131',
  );

  /// value121132
  static final MediaTypeCode value121132 = MediaTypeCode._(
    '121132',
  );

  /// value121133
  static final MediaTypeCode value121133 = MediaTypeCode._(
    '121133',
  );

  /// value121135
  static final MediaTypeCode value121135 = MediaTypeCode._(
    '121135',
  );

  /// value121136
  static final MediaTypeCode value121136 = MediaTypeCode._(
    '121136',
  );

  /// value121137
  static final MediaTypeCode value121137 = MediaTypeCode._(
    '121137',
  );

  /// value121138
  static final MediaTypeCode value121138 = MediaTypeCode._(
    '121138',
  );

  /// value121139
  static final MediaTypeCode value121139 = MediaTypeCode._(
    '121139',
  );

  /// value121140
  static final MediaTypeCode value121140 = MediaTypeCode._(
    '121140',
  );

  /// value121141
  static final MediaTypeCode value121141 = MediaTypeCode._(
    '121141',
  );

  /// value121142
  static final MediaTypeCode value121142 = MediaTypeCode._(
    '121142',
  );

  /// value121143
  static final MediaTypeCode value121143 = MediaTypeCode._(
    '121143',
  );

  /// value121144
  static final MediaTypeCode value121144 = MediaTypeCode._(
    '121144',
  );

  /// value121145
  static final MediaTypeCode value121145 = MediaTypeCode._(
    '121145',
  );

  /// value121146
  static final MediaTypeCode value121146 = MediaTypeCode._(
    '121146',
  );

  /// value121147
  static final MediaTypeCode value121147 = MediaTypeCode._(
    '121147',
  );

  /// value121148
  static final MediaTypeCode value121148 = MediaTypeCode._(
    '121148',
  );

  /// value121149
  static final MediaTypeCode value121149 = MediaTypeCode._(
    '121149',
  );

  /// value121150
  static final MediaTypeCode value121150 = MediaTypeCode._(
    '121150',
  );

  /// value121151
  static final MediaTypeCode value121151 = MediaTypeCode._(
    '121151',
  );

  /// value121152
  static final MediaTypeCode value121152 = MediaTypeCode._(
    '121152',
  );

  /// value121153
  static final MediaTypeCode value121153 = MediaTypeCode._(
    '121153',
  );

  /// value121154
  static final MediaTypeCode value121154 = MediaTypeCode._(
    '121154',
  );

  /// value121155
  static final MediaTypeCode value121155 = MediaTypeCode._(
    '121155',
  );

  /// value121156
  static final MediaTypeCode value121156 = MediaTypeCode._(
    '121156',
  );

  /// value121157
  static final MediaTypeCode value121157 = MediaTypeCode._(
    '121157',
  );

  /// value121158
  static final MediaTypeCode value121158 = MediaTypeCode._(
    '121158',
  );

  /// value121160
  static final MediaTypeCode value121160 = MediaTypeCode._(
    '121160',
  );

  /// value121161
  static final MediaTypeCode value121161 = MediaTypeCode._(
    '121161',
  );

  /// value121162
  static final MediaTypeCode value121162 = MediaTypeCode._(
    '121162',
  );

  /// value121163
  static final MediaTypeCode value121163 = MediaTypeCode._(
    '121163',
  );

  /// value121165
  static final MediaTypeCode value121165 = MediaTypeCode._(
    '121165',
  );

  /// value121166
  static final MediaTypeCode value121166 = MediaTypeCode._(
    '121166',
  );

  /// value121167
  static final MediaTypeCode value121167 = MediaTypeCode._(
    '121167',
  );

  /// value121168
  static final MediaTypeCode value121168 = MediaTypeCode._(
    '121168',
  );

  /// value121169
  static final MediaTypeCode value121169 = MediaTypeCode._(
    '121169',
  );

  /// value121171
  static final MediaTypeCode value121171 = MediaTypeCode._(
    '121171',
  );

  /// value121172
  static final MediaTypeCode value121172 = MediaTypeCode._(
    '121172',
  );

  /// value121173
  static final MediaTypeCode value121173 = MediaTypeCode._(
    '121173',
  );

  /// value121174
  static final MediaTypeCode value121174 = MediaTypeCode._(
    '121174',
  );

  /// value121180
  static final MediaTypeCode value121180 = MediaTypeCode._(
    '121180',
  );

  /// value121181
  static final MediaTypeCode value121181 = MediaTypeCode._(
    '121181',
  );

  /// value121190
  static final MediaTypeCode value121190 = MediaTypeCode._(
    '121190',
  );

  /// value121191
  static final MediaTypeCode value121191 = MediaTypeCode._(
    '121191',
  );

  /// value121192
  static final MediaTypeCode value121192 = MediaTypeCode._(
    '121192',
  );

  /// value121193
  static final MediaTypeCode value121193 = MediaTypeCode._(
    '121193',
  );

  /// value121194
  static final MediaTypeCode value121194 = MediaTypeCode._(
    '121194',
  );

  /// value121195
  static final MediaTypeCode value121195 = MediaTypeCode._(
    '121195',
  );

  /// value121196
  static final MediaTypeCode value121196 = MediaTypeCode._(
    '121196',
  );

  /// value121197
  static final MediaTypeCode value121197 = MediaTypeCode._(
    '121197',
  );

  /// value121198
  static final MediaTypeCode value121198 = MediaTypeCode._(
    '121198',
  );

  /// value121200
  static final MediaTypeCode value121200 = MediaTypeCode._(
    '121200',
  );

  /// value121201
  static final MediaTypeCode value121201 = MediaTypeCode._(
    '121201',
  );

  /// value121202
  static final MediaTypeCode value121202 = MediaTypeCode._(
    '121202',
  );

  /// value121206
  static final MediaTypeCode value121206 = MediaTypeCode._(
    '121206',
  );

  /// value121207
  static final MediaTypeCode value121207 = MediaTypeCode._(
    '121207',
  );

  /// value121208
  static final MediaTypeCode value121208 = MediaTypeCode._(
    '121208',
  );

  /// value121210
  static final MediaTypeCode value121210 = MediaTypeCode._(
    '121210',
  );

  /// value121211
  static final MediaTypeCode value121211 = MediaTypeCode._(
    '121211',
  );

  /// value121213
  static final MediaTypeCode value121213 = MediaTypeCode._(
    '121213',
  );

  /// value121214
  static final MediaTypeCode value121214 = MediaTypeCode._(
    '121214',
  );

  /// value121216
  static final MediaTypeCode value121216 = MediaTypeCode._(
    '121216',
  );

  /// value121217
  static final MediaTypeCode value121217 = MediaTypeCode._(
    '121217',
  );

  /// value121218
  static final MediaTypeCode value121218 = MediaTypeCode._(
    '121218',
  );

  /// value121219
  static final MediaTypeCode value121219 = MediaTypeCode._(
    '121219',
  );

  /// value121220
  static final MediaTypeCode value121220 = MediaTypeCode._(
    '121220',
  );

  /// value121221
  static final MediaTypeCode value121221 = MediaTypeCode._(
    '121221',
  );

  /// value121222
  static final MediaTypeCode value121222 = MediaTypeCode._(
    '121222',
  );

  /// value121230
  static final MediaTypeCode value121230 = MediaTypeCode._(
    '121230',
  );

  /// value121231
  static final MediaTypeCode value121231 = MediaTypeCode._(
    '121231',
  );

  /// value121232
  static final MediaTypeCode value121232 = MediaTypeCode._(
    '121232',
  );

  /// value121233
  static final MediaTypeCode value121233 = MediaTypeCode._(
    '121233',
  );

  /// value121242
  static final MediaTypeCode value121242 = MediaTypeCode._(
    '121242',
  );

  /// value121243
  static final MediaTypeCode value121243 = MediaTypeCode._(
    '121243',
  );

  /// value121244
  static final MediaTypeCode value121244 = MediaTypeCode._(
    '121244',
  );

  /// value121290
  static final MediaTypeCode value121290 = MediaTypeCode._(
    '121290',
  );

  /// value121291
  static final MediaTypeCode value121291 = MediaTypeCode._(
    '121291',
  );

  /// value121301
  static final MediaTypeCode value121301 = MediaTypeCode._(
    '121301',
  );

  /// value121302
  static final MediaTypeCode value121302 = MediaTypeCode._(
    '121302',
  );

  /// value121303
  static final MediaTypeCode value121303 = MediaTypeCode._(
    '121303',
  );

  /// value121304
  static final MediaTypeCode value121304 = MediaTypeCode._(
    '121304',
  );

  /// value121305
  static final MediaTypeCode value121305 = MediaTypeCode._(
    '121305',
  );

  /// value121306
  static final MediaTypeCode value121306 = MediaTypeCode._(
    '121306',
  );

  /// value121307
  static final MediaTypeCode value121307 = MediaTypeCode._(
    '121307',
  );

  /// value121311
  static final MediaTypeCode value121311 = MediaTypeCode._(
    '121311',
  );

  /// value121312
  static final MediaTypeCode value121312 = MediaTypeCode._(
    '121312',
  );

  /// value121313
  static final MediaTypeCode value121313 = MediaTypeCode._(
    '121313',
  );

  /// value121314
  static final MediaTypeCode value121314 = MediaTypeCode._(
    '121314',
  );

  /// value121315
  static final MediaTypeCode value121315 = MediaTypeCode._(
    '121315',
  );

  /// value121316
  static final MediaTypeCode value121316 = MediaTypeCode._(
    '121316',
  );

  /// value121317
  static final MediaTypeCode value121317 = MediaTypeCode._(
    '121317',
  );

  /// value121318
  static final MediaTypeCode value121318 = MediaTypeCode._(
    '121318',
  );

  /// value121320
  static final MediaTypeCode value121320 = MediaTypeCode._(
    '121320',
  );

  /// value121321
  static final MediaTypeCode value121321 = MediaTypeCode._(
    '121321',
  );

  /// value121322
  static final MediaTypeCode value121322 = MediaTypeCode._(
    '121322',
  );

  /// value121323
  static final MediaTypeCode value121323 = MediaTypeCode._(
    '121323',
  );

  /// value121324
  static final MediaTypeCode value121324 = MediaTypeCode._(
    '121324',
  );

  /// value121325
  static final MediaTypeCode value121325 = MediaTypeCode._(
    '121325',
  );

  /// value121326
  static final MediaTypeCode value121326 = MediaTypeCode._(
    '121326',
  );

  /// value121327
  static final MediaTypeCode value121327 = MediaTypeCode._(
    '121327',
  );

  /// value121328
  static final MediaTypeCode value121328 = MediaTypeCode._(
    '121328',
  );

  /// value121329
  static final MediaTypeCode value121329 = MediaTypeCode._(
    '121329',
  );

  /// value121330
  static final MediaTypeCode value121330 = MediaTypeCode._(
    '121330',
  );

  /// value121331
  static final MediaTypeCode value121331 = MediaTypeCode._(
    '121331',
  );

  /// value121332
  static final MediaTypeCode value121332 = MediaTypeCode._(
    '121332',
  );

  /// value121333
  static final MediaTypeCode value121333 = MediaTypeCode._(
    '121333',
  );

  /// value121334
  static final MediaTypeCode value121334 = MediaTypeCode._(
    '121334',
  );

  /// value121335
  static final MediaTypeCode value121335 = MediaTypeCode._(
    '121335',
  );

  /// value121338
  static final MediaTypeCode value121338 = MediaTypeCode._(
    '121338',
  );

  /// value121339
  static final MediaTypeCode value121339 = MediaTypeCode._(
    '121339',
  );

  /// value121340
  static final MediaTypeCode value121340 = MediaTypeCode._(
    '121340',
  );

  /// value121341
  static final MediaTypeCode value121341 = MediaTypeCode._(
    '121341',
  );

  /// value121342
  static final MediaTypeCode value121342 = MediaTypeCode._(
    '121342',
  );

  /// value121346
  static final MediaTypeCode value121346 = MediaTypeCode._(
    '121346',
  );

  /// value121347
  static final MediaTypeCode value121347 = MediaTypeCode._(
    '121347',
  );

  /// value121348
  static final MediaTypeCode value121348 = MediaTypeCode._(
    '121348',
  );

  /// value121349
  static final MediaTypeCode value121349 = MediaTypeCode._(
    '121349',
  );

  /// value121350
  static final MediaTypeCode value121350 = MediaTypeCode._(
    '121350',
  );

  /// value121351
  static final MediaTypeCode value121351 = MediaTypeCode._(
    '121351',
  );

  /// value121352
  static final MediaTypeCode value121352 = MediaTypeCode._(
    '121352',
  );

  /// value121353
  static final MediaTypeCode value121353 = MediaTypeCode._(
    '121353',
  );

  /// value121354
  static final MediaTypeCode value121354 = MediaTypeCode._(
    '121354',
  );

  /// value121358
  static final MediaTypeCode value121358 = MediaTypeCode._(
    '121358',
  );

  /// value121360
  static final MediaTypeCode value121360 = MediaTypeCode._(
    '121360',
  );

  /// value121361
  static final MediaTypeCode value121361 = MediaTypeCode._(
    '121361',
  );

  /// value121362
  static final MediaTypeCode value121362 = MediaTypeCode._(
    '121362',
  );

  /// value121363
  static final MediaTypeCode value121363 = MediaTypeCode._(
    '121363',
  );

  /// value121370
  static final MediaTypeCode value121370 = MediaTypeCode._(
    '121370',
  );

  /// value121371
  static final MediaTypeCode value121371 = MediaTypeCode._(
    '121371',
  );

  /// value121372
  static final MediaTypeCode value121372 = MediaTypeCode._(
    '121372',
  );

  /// value121380
  static final MediaTypeCode value121380 = MediaTypeCode._(
    '121380',
  );

  /// value121381
  static final MediaTypeCode value121381 = MediaTypeCode._(
    '121381',
  );

  /// value121382
  static final MediaTypeCode value121382 = MediaTypeCode._(
    '121382',
  );

  /// value121383
  static final MediaTypeCode value121383 = MediaTypeCode._(
    '121383',
  );

  /// value121401
  static final MediaTypeCode value121401 = MediaTypeCode._(
    '121401',
  );

  /// value121402
  static final MediaTypeCode value121402 = MediaTypeCode._(
    '121402',
  );

  /// value121403
  static final MediaTypeCode value121403 = MediaTypeCode._(
    '121403',
  );

  /// value121404
  static final MediaTypeCode value121404 = MediaTypeCode._(
    '121404',
  );

  /// value121405
  static final MediaTypeCode value121405 = MediaTypeCode._(
    '121405',
  );

  /// value121406
  static final MediaTypeCode value121406 = MediaTypeCode._(
    '121406',
  );

  /// value121407
  static final MediaTypeCode value121407 = MediaTypeCode._(
    '121407',
  );

  /// value121408
  static final MediaTypeCode value121408 = MediaTypeCode._(
    '121408',
  );

  /// value121410
  static final MediaTypeCode value121410 = MediaTypeCode._(
    '121410',
  );

  /// value121411
  static final MediaTypeCode value121411 = MediaTypeCode._(
    '121411',
  );

  /// value121412
  static final MediaTypeCode value121412 = MediaTypeCode._(
    '121412',
  );

  /// value121414
  static final MediaTypeCode value121414 = MediaTypeCode._(
    '121414',
  );

  /// value121415
  static final MediaTypeCode value121415 = MediaTypeCode._(
    '121415',
  );

  /// value121416
  static final MediaTypeCode value121416 = MediaTypeCode._(
    '121416',
  );

  /// value121417
  static final MediaTypeCode value121417 = MediaTypeCode._(
    '121417',
  );

  /// value121420
  static final MediaTypeCode value121420 = MediaTypeCode._(
    '121420',
  );

  /// value121421
  static final MediaTypeCode value121421 = MediaTypeCode._(
    '121421',
  );

  /// value121422
  static final MediaTypeCode value121422 = MediaTypeCode._(
    '121422',
  );

  /// value121423
  static final MediaTypeCode value121423 = MediaTypeCode._(
    '121423',
  );

  /// value121424
  static final MediaTypeCode value121424 = MediaTypeCode._(
    '121424',
  );

  /// value121425
  static final MediaTypeCode value121425 = MediaTypeCode._(
    '121425',
  );

  /// value121427
  static final MediaTypeCode value121427 = MediaTypeCode._(
    '121427',
  );

  /// value121428
  static final MediaTypeCode value121428 = MediaTypeCode._(
    '121428',
  );

  /// value121430
  static final MediaTypeCode value121430 = MediaTypeCode._(
    '121430',
  );

  /// value121431
  static final MediaTypeCode value121431 = MediaTypeCode._(
    '121431',
  );

  /// value121432
  static final MediaTypeCode value121432 = MediaTypeCode._(
    '121432',
  );

  /// value121433
  static final MediaTypeCode value121433 = MediaTypeCode._(
    '121433',
  );

  /// value121434
  static final MediaTypeCode value121434 = MediaTypeCode._(
    '121434',
  );

  /// value121435
  static final MediaTypeCode value121435 = MediaTypeCode._(
    '121435',
  );

  /// value121436
  static final MediaTypeCode value121436 = MediaTypeCode._(
    '121436',
  );

  /// value121437
  static final MediaTypeCode value121437 = MediaTypeCode._(
    '121437',
  );

  /// value121438
  static final MediaTypeCode value121438 = MediaTypeCode._(
    '121438',
  );

  /// value121439
  static final MediaTypeCode value121439 = MediaTypeCode._(
    '121439',
  );

  /// value121701
  static final MediaTypeCode value121701 = MediaTypeCode._(
    '121701',
  );

  /// value121702
  static final MediaTypeCode value121702 = MediaTypeCode._(
    '121702',
  );

  /// value121703
  static final MediaTypeCode value121703 = MediaTypeCode._(
    '121703',
  );

  /// value121704
  static final MediaTypeCode value121704 = MediaTypeCode._(
    '121704',
  );

  /// value121705
  static final MediaTypeCode value121705 = MediaTypeCode._(
    '121705',
  );

  /// value121706
  static final MediaTypeCode value121706 = MediaTypeCode._(
    '121706',
  );

  /// value121707
  static final MediaTypeCode value121707 = MediaTypeCode._(
    '121707',
  );

  /// value121708
  static final MediaTypeCode value121708 = MediaTypeCode._(
    '121708',
  );

  /// value121709
  static final MediaTypeCode value121709 = MediaTypeCode._(
    '121709',
  );

  /// value121710
  static final MediaTypeCode value121710 = MediaTypeCode._(
    '121710',
  );

  /// value121711
  static final MediaTypeCode value121711 = MediaTypeCode._(
    '121711',
  );

  /// value121712
  static final MediaTypeCode value121712 = MediaTypeCode._(
    '121712',
  );

  /// value121713
  static final MediaTypeCode value121713 = MediaTypeCode._(
    '121713',
  );

  /// value121714
  static final MediaTypeCode value121714 = MediaTypeCode._(
    '121714',
  );

  /// value121715
  static final MediaTypeCode value121715 = MediaTypeCode._(
    '121715',
  );

  /// value121716
  static final MediaTypeCode value121716 = MediaTypeCode._(
    '121716',
  );

  /// value121717
  static final MediaTypeCode value121717 = MediaTypeCode._(
    '121717',
  );

  /// value121718
  static final MediaTypeCode value121718 = MediaTypeCode._(
    '121718',
  );

  /// value121719
  static final MediaTypeCode value121719 = MediaTypeCode._(
    '121719',
  );

  /// value121720
  static final MediaTypeCode value121720 = MediaTypeCode._(
    '121720',
  );

  /// value121721
  static final MediaTypeCode value121721 = MediaTypeCode._(
    '121721',
  );

  /// value121722
  static final MediaTypeCode value121722 = MediaTypeCode._(
    '121722',
  );

  /// value121723
  static final MediaTypeCode value121723 = MediaTypeCode._(
    '121723',
  );

  /// value121724
  static final MediaTypeCode value121724 = MediaTypeCode._(
    '121724',
  );

  /// value121725
  static final MediaTypeCode value121725 = MediaTypeCode._(
    '121725',
  );

  /// value121726
  static final MediaTypeCode value121726 = MediaTypeCode._(
    '121726',
  );

  /// value121727
  static final MediaTypeCode value121727 = MediaTypeCode._(
    '121727',
  );

  /// value121728
  static final MediaTypeCode value121728 = MediaTypeCode._(
    '121728',
  );

  /// value121729
  static final MediaTypeCode value121729 = MediaTypeCode._(
    '121729',
  );

  /// value121730
  static final MediaTypeCode value121730 = MediaTypeCode._(
    '121730',
  );

  /// value121731
  static final MediaTypeCode value121731 = MediaTypeCode._(
    '121731',
  );

  /// value121732
  static final MediaTypeCode value121732 = MediaTypeCode._(
    '121732',
  );

  /// value121733
  static final MediaTypeCode value121733 = MediaTypeCode._(
    '121733',
  );

  /// value121734
  static final MediaTypeCode value121734 = MediaTypeCode._(
    '121734',
  );

  /// value121740
  static final MediaTypeCode value121740 = MediaTypeCode._(
    '121740',
  );

  /// value122001
  static final MediaTypeCode value122001 = MediaTypeCode._(
    '122001',
  );

  /// value122002
  static final MediaTypeCode value122002 = MediaTypeCode._(
    '122002',
  );

  /// value122003
  static final MediaTypeCode value122003 = MediaTypeCode._(
    '122003',
  );

  /// value122004
  static final MediaTypeCode value122004 = MediaTypeCode._(
    '122004',
  );

  /// value122005
  static final MediaTypeCode value122005 = MediaTypeCode._(
    '122005',
  );

  /// value122006
  static final MediaTypeCode value122006 = MediaTypeCode._(
    '122006',
  );

  /// value122007
  static final MediaTypeCode value122007 = MediaTypeCode._(
    '122007',
  );

  /// value122008
  static final MediaTypeCode value122008 = MediaTypeCode._(
    '122008',
  );

  /// value122009
  static final MediaTypeCode value122009 = MediaTypeCode._(
    '122009',
  );

  /// value122010
  static final MediaTypeCode value122010 = MediaTypeCode._(
    '122010',
  );

  /// value122011
  static final MediaTypeCode value122011 = MediaTypeCode._(
    '122011',
  );

  /// value122012
  static final MediaTypeCode value122012 = MediaTypeCode._(
    '122012',
  );

  /// value122020
  static final MediaTypeCode value122020 = MediaTypeCode._(
    '122020',
  );

  /// value122021
  static final MediaTypeCode value122021 = MediaTypeCode._(
    '122021',
  );

  /// value122022
  static final MediaTypeCode value122022 = MediaTypeCode._(
    '122022',
  );

  /// value122023
  static final MediaTypeCode value122023 = MediaTypeCode._(
    '122023',
  );

  /// value122024
  static final MediaTypeCode value122024 = MediaTypeCode._(
    '122024',
  );

  /// value122025
  static final MediaTypeCode value122025 = MediaTypeCode._(
    '122025',
  );

  /// value122026
  static final MediaTypeCode value122026 = MediaTypeCode._(
    '122026',
  );

  /// value122027
  static final MediaTypeCode value122027 = MediaTypeCode._(
    '122027',
  );

  /// value122028
  static final MediaTypeCode value122028 = MediaTypeCode._(
    '122028',
  );

  /// value122029
  static final MediaTypeCode value122029 = MediaTypeCode._(
    '122029',
  );

  /// value122030
  static final MediaTypeCode value122030 = MediaTypeCode._(
    '122030',
  );

  /// value122031
  static final MediaTypeCode value122031 = MediaTypeCode._(
    '122031',
  );

  /// value122032
  static final MediaTypeCode value122032 = MediaTypeCode._(
    '122032',
  );

  /// value122033
  static final MediaTypeCode value122033 = MediaTypeCode._(
    '122033',
  );

  /// value122034
  static final MediaTypeCode value122034 = MediaTypeCode._(
    '122034',
  );

  /// value122035
  static final MediaTypeCode value122035 = MediaTypeCode._(
    '122035',
  );

  /// value122036
  static final MediaTypeCode value122036 = MediaTypeCode._(
    '122036',
  );

  /// value122037
  static final MediaTypeCode value122037 = MediaTypeCode._(
    '122037',
  );

  /// value122038
  static final MediaTypeCode value122038 = MediaTypeCode._(
    '122038',
  );

  /// value122039
  static final MediaTypeCode value122039 = MediaTypeCode._(
    '122039',
  );

  /// value122041
  static final MediaTypeCode value122041 = MediaTypeCode._(
    '122041',
  );

  /// value122042
  static final MediaTypeCode value122042 = MediaTypeCode._(
    '122042',
  );

  /// value122043
  static final MediaTypeCode value122043 = MediaTypeCode._(
    '122043',
  );

  /// value122044
  static final MediaTypeCode value122044 = MediaTypeCode._(
    '122044',
  );

  /// value122045
  static final MediaTypeCode value122045 = MediaTypeCode._(
    '122045',
  );

  /// value122046
  static final MediaTypeCode value122046 = MediaTypeCode._(
    '122046',
  );

  /// value122047
  static final MediaTypeCode value122047 = MediaTypeCode._(
    '122047',
  );

  /// value122048
  static final MediaTypeCode value122048 = MediaTypeCode._(
    '122048',
  );

  /// value122049
  static final MediaTypeCode value122049 = MediaTypeCode._(
    '122049',
  );

  /// value122052
  static final MediaTypeCode value122052 = MediaTypeCode._(
    '122052',
  );

  /// value122053
  static final MediaTypeCode value122053 = MediaTypeCode._(
    '122053',
  );

  /// value122054
  static final MediaTypeCode value122054 = MediaTypeCode._(
    '122054',
  );

  /// value122055
  static final MediaTypeCode value122055 = MediaTypeCode._(
    '122055',
  );

  /// value122056
  static final MediaTypeCode value122056 = MediaTypeCode._(
    '122056',
  );

  /// value122057
  static final MediaTypeCode value122057 = MediaTypeCode._(
    '122057',
  );

  /// value122058
  static final MediaTypeCode value122058 = MediaTypeCode._(
    '122058',
  );

  /// value122059
  static final MediaTypeCode value122059 = MediaTypeCode._(
    '122059',
  );

  /// value122060
  static final MediaTypeCode value122060 = MediaTypeCode._(
    '122060',
  );

  /// value122061
  static final MediaTypeCode value122061 = MediaTypeCode._(
    '122061',
  );

  /// value122062
  static final MediaTypeCode value122062 = MediaTypeCode._(
    '122062',
  );

  /// value122072
  static final MediaTypeCode value122072 = MediaTypeCode._(
    '122072',
  );

  /// value122073
  static final MediaTypeCode value122073 = MediaTypeCode._(
    '122073',
  );

  /// value122075
  static final MediaTypeCode value122075 = MediaTypeCode._(
    '122075',
  );

  /// value122076
  static final MediaTypeCode value122076 = MediaTypeCode._(
    '122076',
  );

  /// value122077
  static final MediaTypeCode value122077 = MediaTypeCode._(
    '122077',
  );

  /// value122078
  static final MediaTypeCode value122078 = MediaTypeCode._(
    '122078',
  );

  /// value122079
  static final MediaTypeCode value122079 = MediaTypeCode._(
    '122079',
  );

  /// value122081
  static final MediaTypeCode value122081 = MediaTypeCode._(
    '122081',
  );

  /// value122082
  static final MediaTypeCode value122082 = MediaTypeCode._(
    '122082',
  );

  /// value122083
  static final MediaTypeCode value122083 = MediaTypeCode._(
    '122083',
  );

  /// value122084
  static final MediaTypeCode value122084 = MediaTypeCode._(
    '122084',
  );

  /// value122085
  static final MediaTypeCode value122085 = MediaTypeCode._(
    '122085',
  );

  /// value122086
  static final MediaTypeCode value122086 = MediaTypeCode._(
    '122086',
  );

  /// value122087
  static final MediaTypeCode value122087 = MediaTypeCode._(
    '122087',
  );

  /// value122088
  static final MediaTypeCode value122088 = MediaTypeCode._(
    '122088',
  );

  /// value122089
  static final MediaTypeCode value122089 = MediaTypeCode._(
    '122089',
  );

  /// value122090
  static final MediaTypeCode value122090 = MediaTypeCode._(
    '122090',
  );

  /// value122091
  static final MediaTypeCode value122091 = MediaTypeCode._(
    '122091',
  );

  /// value122092
  static final MediaTypeCode value122092 = MediaTypeCode._(
    '122092',
  );

  /// value122093
  static final MediaTypeCode value122093 = MediaTypeCode._(
    '122093',
  );

  /// value122094
  static final MediaTypeCode value122094 = MediaTypeCode._(
    '122094',
  );

  /// value122095
  static final MediaTypeCode value122095 = MediaTypeCode._(
    '122095',
  );

  /// value122096
  static final MediaTypeCode value122096 = MediaTypeCode._(
    '122096',
  );

  /// value122097
  static final MediaTypeCode value122097 = MediaTypeCode._(
    '122097',
  );

  /// value122098
  static final MediaTypeCode value122098 = MediaTypeCode._(
    '122098',
  );

  /// value122099
  static final MediaTypeCode value122099 = MediaTypeCode._(
    '122099',
  );

  /// value122101
  static final MediaTypeCode value122101 = MediaTypeCode._(
    '122101',
  );

  /// value122102
  static final MediaTypeCode value122102 = MediaTypeCode._(
    '122102',
  );

  /// value122103
  static final MediaTypeCode value122103 = MediaTypeCode._(
    '122103',
  );

  /// value122104
  static final MediaTypeCode value122104 = MediaTypeCode._(
    '122104',
  );

  /// value122105
  static final MediaTypeCode value122105 = MediaTypeCode._(
    '122105',
  );

  /// value122106
  static final MediaTypeCode value122106 = MediaTypeCode._(
    '122106',
  );

  /// value122107
  static final MediaTypeCode value122107 = MediaTypeCode._(
    '122107',
  );

  /// value122108
  static final MediaTypeCode value122108 = MediaTypeCode._(
    '122108',
  );

  /// value122109
  static final MediaTypeCode value122109 = MediaTypeCode._(
    '122109',
  );

  /// value122110
  static final MediaTypeCode value122110 = MediaTypeCode._(
    '122110',
  );

  /// value122111
  static final MediaTypeCode value122111 = MediaTypeCode._(
    '122111',
  );

  /// value122112
  static final MediaTypeCode value122112 = MediaTypeCode._(
    '122112',
  );

  /// value122113
  static final MediaTypeCode value122113 = MediaTypeCode._(
    '122113',
  );

  /// value122114
  static final MediaTypeCode value122114 = MediaTypeCode._(
    '122114',
  );

  /// value122120
  static final MediaTypeCode value122120 = MediaTypeCode._(
    '122120',
  );

  /// value122121
  static final MediaTypeCode value122121 = MediaTypeCode._(
    '122121',
  );

  /// value122122
  static final MediaTypeCode value122122 = MediaTypeCode._(
    '122122',
  );

  /// value122123
  static final MediaTypeCode value122123 = MediaTypeCode._(
    '122123',
  );

  /// value122124
  static final MediaTypeCode value122124 = MediaTypeCode._(
    '122124',
  );

  /// value122125
  static final MediaTypeCode value122125 = MediaTypeCode._(
    '122125',
  );

  /// value122126
  static final MediaTypeCode value122126 = MediaTypeCode._(
    '122126',
  );

  /// value122127
  static final MediaTypeCode value122127 = MediaTypeCode._(
    '122127',
  );

  /// value122128
  static final MediaTypeCode value122128 = MediaTypeCode._(
    '122128',
  );

  /// value122129
  static final MediaTypeCode value122129 = MediaTypeCode._(
    '122129',
  );

  /// value122130
  static final MediaTypeCode value122130 = MediaTypeCode._(
    '122130',
  );

  /// value122131
  static final MediaTypeCode value122131 = MediaTypeCode._(
    '122131',
  );

  /// value122132
  static final MediaTypeCode value122132 = MediaTypeCode._(
    '122132',
  );

  /// value122133
  static final MediaTypeCode value122133 = MediaTypeCode._(
    '122133',
  );

  /// value122134
  static final MediaTypeCode value122134 = MediaTypeCode._(
    '122134',
  );

  /// value122138
  static final MediaTypeCode value122138 = MediaTypeCode._(
    '122138',
  );

  /// value122139
  static final MediaTypeCode value122139 = MediaTypeCode._(
    '122139',
  );

  /// value122140
  static final MediaTypeCode value122140 = MediaTypeCode._(
    '122140',
  );

  /// value122141
  static final MediaTypeCode value122141 = MediaTypeCode._(
    '122141',
  );

  /// value122142
  static final MediaTypeCode value122142 = MediaTypeCode._(
    '122142',
  );

  /// value122143
  static final MediaTypeCode value122143 = MediaTypeCode._(
    '122143',
  );

  /// value122144
  static final MediaTypeCode value122144 = MediaTypeCode._(
    '122144',
  );

  /// value122145
  static final MediaTypeCode value122145 = MediaTypeCode._(
    '122145',
  );

  /// value122146
  static final MediaTypeCode value122146 = MediaTypeCode._(
    '122146',
  );

  /// value122147
  static final MediaTypeCode value122147 = MediaTypeCode._(
    '122147',
  );

  /// value122148
  static final MediaTypeCode value122148 = MediaTypeCode._(
    '122148',
  );

  /// value122149
  static final MediaTypeCode value122149 = MediaTypeCode._(
    '122149',
  );

  /// value122150
  static final MediaTypeCode value122150 = MediaTypeCode._(
    '122150',
  );

  /// value122151
  static final MediaTypeCode value122151 = MediaTypeCode._(
    '122151',
  );

  /// value122152
  static final MediaTypeCode value122152 = MediaTypeCode._(
    '122152',
  );

  /// value122153
  static final MediaTypeCode value122153 = MediaTypeCode._(
    '122153',
  );

  /// value122154
  static final MediaTypeCode value122154 = MediaTypeCode._(
    '122154',
  );

  /// value122157
  static final MediaTypeCode value122157 = MediaTypeCode._(
    '122157',
  );

  /// value122158
  static final MediaTypeCode value122158 = MediaTypeCode._(
    '122158',
  );

  /// value122159
  static final MediaTypeCode value122159 = MediaTypeCode._(
    '122159',
  );

  /// value122160
  static final MediaTypeCode value122160 = MediaTypeCode._(
    '122160',
  );

  /// value122161
  static final MediaTypeCode value122161 = MediaTypeCode._(
    '122161',
  );

  /// value122162
  static final MediaTypeCode value122162 = MediaTypeCode._(
    '122162',
  );

  /// value122163
  static final MediaTypeCode value122163 = MediaTypeCode._(
    '122163',
  );

  /// value122164
  static final MediaTypeCode value122164 = MediaTypeCode._(
    '122164',
  );

  /// value122165
  static final MediaTypeCode value122165 = MediaTypeCode._(
    '122165',
  );

  /// value122166
  static final MediaTypeCode value122166 = MediaTypeCode._(
    '122166',
  );

  /// value122167
  static final MediaTypeCode value122167 = MediaTypeCode._(
    '122167',
  );

  /// value122170
  static final MediaTypeCode value122170 = MediaTypeCode._(
    '122170',
  );

  /// value122171
  static final MediaTypeCode value122171 = MediaTypeCode._(
    '122171',
  );

  /// value122172
  static final MediaTypeCode value122172 = MediaTypeCode._(
    '122172',
  );

  /// value122173
  static final MediaTypeCode value122173 = MediaTypeCode._(
    '122173',
  );

  /// value122175
  static final MediaTypeCode value122175 = MediaTypeCode._(
    '122175',
  );

  /// value122176
  static final MediaTypeCode value122176 = MediaTypeCode._(
    '122176',
  );

  /// value122177
  static final MediaTypeCode value122177 = MediaTypeCode._(
    '122177',
  );

  /// value122178
  static final MediaTypeCode value122178 = MediaTypeCode._(
    '122178',
  );

  /// value122179
  static final MediaTypeCode value122179 = MediaTypeCode._(
    '122179',
  );

  /// value122180
  static final MediaTypeCode value122180 = MediaTypeCode._(
    '122180',
  );

  /// value122181
  static final MediaTypeCode value122181 = MediaTypeCode._(
    '122181',
  );

  /// value122182
  static final MediaTypeCode value122182 = MediaTypeCode._(
    '122182',
  );

  /// value122183
  static final MediaTypeCode value122183 = MediaTypeCode._(
    '122183',
  );

  /// value122185
  static final MediaTypeCode value122185 = MediaTypeCode._(
    '122185',
  );

  /// value122187
  static final MediaTypeCode value122187 = MediaTypeCode._(
    '122187',
  );

  /// value122188
  static final MediaTypeCode value122188 = MediaTypeCode._(
    '122188',
  );

  /// value122189
  static final MediaTypeCode value122189 = MediaTypeCode._(
    '122189',
  );

  /// value122190
  static final MediaTypeCode value122190 = MediaTypeCode._(
    '122190',
  );

  /// value122191
  static final MediaTypeCode value122191 = MediaTypeCode._(
    '122191',
  );

  /// value122192
  static final MediaTypeCode value122192 = MediaTypeCode._(
    '122192',
  );

  /// value122193
  static final MediaTypeCode value122193 = MediaTypeCode._(
    '122193',
  );

  /// value122194
  static final MediaTypeCode value122194 = MediaTypeCode._(
    '122194',
  );

  /// value122195
  static final MediaTypeCode value122195 = MediaTypeCode._(
    '122195',
  );

  /// value122196
  static final MediaTypeCode value122196 = MediaTypeCode._(
    '122196',
  );

  /// value122197
  static final MediaTypeCode value122197 = MediaTypeCode._(
    '122197',
  );

  /// value122198
  static final MediaTypeCode value122198 = MediaTypeCode._(
    '122198',
  );

  /// value122199
  static final MediaTypeCode value122199 = MediaTypeCode._(
    '122199',
  );

  /// value122201
  static final MediaTypeCode value122201 = MediaTypeCode._(
    '122201',
  );

  /// value122202
  static final MediaTypeCode value122202 = MediaTypeCode._(
    '122202',
  );

  /// value122203
  static final MediaTypeCode value122203 = MediaTypeCode._(
    '122203',
  );

  /// value122204
  static final MediaTypeCode value122204 = MediaTypeCode._(
    '122204',
  );

  /// value122205
  static final MediaTypeCode value122205 = MediaTypeCode._(
    '122205',
  );

  /// value122206
  static final MediaTypeCode value122206 = MediaTypeCode._(
    '122206',
  );

  /// value122207
  static final MediaTypeCode value122207 = MediaTypeCode._(
    '122207',
  );

  /// value122208
  static final MediaTypeCode value122208 = MediaTypeCode._(
    '122208',
  );

  /// value122209
  static final MediaTypeCode value122209 = MediaTypeCode._(
    '122209',
  );

  /// value122210
  static final MediaTypeCode value122210 = MediaTypeCode._(
    '122210',
  );

  /// value122211
  static final MediaTypeCode value122211 = MediaTypeCode._(
    '122211',
  );

  /// value122212
  static final MediaTypeCode value122212 = MediaTypeCode._(
    '122212',
  );

  /// value122213
  static final MediaTypeCode value122213 = MediaTypeCode._(
    '122213',
  );

  /// value122214
  static final MediaTypeCode value122214 = MediaTypeCode._(
    '122214',
  );

  /// value122215
  static final MediaTypeCode value122215 = MediaTypeCode._(
    '122215',
  );

  /// value122216
  static final MediaTypeCode value122216 = MediaTypeCode._(
    '122216',
  );

  /// value122217
  static final MediaTypeCode value122217 = MediaTypeCode._(
    '122217',
  );

  /// value122218
  static final MediaTypeCode value122218 = MediaTypeCode._(
    '122218',
  );

  /// value122219
  static final MediaTypeCode value122219 = MediaTypeCode._(
    '122219',
  );

  /// value122220
  static final MediaTypeCode value122220 = MediaTypeCode._(
    '122220',
  );

  /// value122221
  static final MediaTypeCode value122221 = MediaTypeCode._(
    '122221',
  );

  /// value122222
  static final MediaTypeCode value122222 = MediaTypeCode._(
    '122222',
  );

  /// value122223
  static final MediaTypeCode value122223 = MediaTypeCode._(
    '122223',
  );

  /// value122224
  static final MediaTypeCode value122224 = MediaTypeCode._(
    '122224',
  );

  /// value122225
  static final MediaTypeCode value122225 = MediaTypeCode._(
    '122225',
  );

  /// value122227
  static final MediaTypeCode value122227 = MediaTypeCode._(
    '122227',
  );

  /// value122228
  static final MediaTypeCode value122228 = MediaTypeCode._(
    '122228',
  );

  /// value122229
  static final MediaTypeCode value122229 = MediaTypeCode._(
    '122229',
  );

  /// value122230
  static final MediaTypeCode value122230 = MediaTypeCode._(
    '122230',
  );

  /// value122231
  static final MediaTypeCode value122231 = MediaTypeCode._(
    '122231',
  );

  /// value122232
  static final MediaTypeCode value122232 = MediaTypeCode._(
    '122232',
  );

  /// value122233
  static final MediaTypeCode value122233 = MediaTypeCode._(
    '122233',
  );

  /// value122234
  static final MediaTypeCode value122234 = MediaTypeCode._(
    '122234',
  );

  /// value122235
  static final MediaTypeCode value122235 = MediaTypeCode._(
    '122235',
  );

  /// value122236
  static final MediaTypeCode value122236 = MediaTypeCode._(
    '122236',
  );

  /// value122237
  static final MediaTypeCode value122237 = MediaTypeCode._(
    '122237',
  );

  /// value122238
  static final MediaTypeCode value122238 = MediaTypeCode._(
    '122238',
  );

  /// value122239
  static final MediaTypeCode value122239 = MediaTypeCode._(
    '122239',
  );

  /// value122240
  static final MediaTypeCode value122240 = MediaTypeCode._(
    '122240',
  );

  /// value122241
  static final MediaTypeCode value122241 = MediaTypeCode._(
    '122241',
  );

  /// value122242
  static final MediaTypeCode value122242 = MediaTypeCode._(
    '122242',
  );

  /// value122243
  static final MediaTypeCode value122243 = MediaTypeCode._(
    '122243',
  );

  /// value122244
  static final MediaTypeCode value122244 = MediaTypeCode._(
    '122244',
  );

  /// value122245
  static final MediaTypeCode value122245 = MediaTypeCode._(
    '122245',
  );

  /// value122246
  static final MediaTypeCode value122246 = MediaTypeCode._(
    '122246',
  );

  /// value122247
  static final MediaTypeCode value122247 = MediaTypeCode._(
    '122247',
  );

  /// value122248
  static final MediaTypeCode value122248 = MediaTypeCode._(
    '122248',
  );

  /// value122249
  static final MediaTypeCode value122249 = MediaTypeCode._(
    '122249',
  );

  /// value122250
  static final MediaTypeCode value122250 = MediaTypeCode._(
    '122250',
  );

  /// value122251
  static final MediaTypeCode value122251 = MediaTypeCode._(
    '122251',
  );

  /// value122252
  static final MediaTypeCode value122252 = MediaTypeCode._(
    '122252',
  );

  /// value122253
  static final MediaTypeCode value122253 = MediaTypeCode._(
    '122253',
  );

  /// value122254
  static final MediaTypeCode value122254 = MediaTypeCode._(
    '122254',
  );

  /// value122255
  static final MediaTypeCode value122255 = MediaTypeCode._(
    '122255',
  );

  /// value122256
  static final MediaTypeCode value122256 = MediaTypeCode._(
    '122256',
  );

  /// value122257
  static final MediaTypeCode value122257 = MediaTypeCode._(
    '122257',
  );

  /// value122258
  static final MediaTypeCode value122258 = MediaTypeCode._(
    '122258',
  );

  /// value122259
  static final MediaTypeCode value122259 = MediaTypeCode._(
    '122259',
  );

  /// value122260
  static final MediaTypeCode value122260 = MediaTypeCode._(
    '122260',
  );

  /// value122261
  static final MediaTypeCode value122261 = MediaTypeCode._(
    '122261',
  );

  /// value122262
  static final MediaTypeCode value122262 = MediaTypeCode._(
    '122262',
  );

  /// value122263
  static final MediaTypeCode value122263 = MediaTypeCode._(
    '122263',
  );

  /// value122265
  static final MediaTypeCode value122265 = MediaTypeCode._(
    '122265',
  );

  /// value122266
  static final MediaTypeCode value122266 = MediaTypeCode._(
    '122266',
  );

  /// value122267
  static final MediaTypeCode value122267 = MediaTypeCode._(
    '122267',
  );

  /// value122268
  static final MediaTypeCode value122268 = MediaTypeCode._(
    '122268',
  );

  /// value122269
  static final MediaTypeCode value122269 = MediaTypeCode._(
    '122269',
  );

  /// value122270
  static final MediaTypeCode value122270 = MediaTypeCode._(
    '122270',
  );

  /// value122271
  static final MediaTypeCode value122271 = MediaTypeCode._(
    '122271',
  );

  /// value122272
  static final MediaTypeCode value122272 = MediaTypeCode._(
    '122272',
  );

  /// value122273
  static final MediaTypeCode value122273 = MediaTypeCode._(
    '122273',
  );

  /// value122274
  static final MediaTypeCode value122274 = MediaTypeCode._(
    '122274',
  );

  /// value122275
  static final MediaTypeCode value122275 = MediaTypeCode._(
    '122275',
  );

  /// value122276
  static final MediaTypeCode value122276 = MediaTypeCode._(
    '122276',
  );

  /// value122277
  static final MediaTypeCode value122277 = MediaTypeCode._(
    '122277',
  );

  /// value122278
  static final MediaTypeCode value122278 = MediaTypeCode._(
    '122278',
  );

  /// value122279
  static final MediaTypeCode value122279 = MediaTypeCode._(
    '122279',
  );

  /// value122281
  static final MediaTypeCode value122281 = MediaTypeCode._(
    '122281',
  );

  /// value122282
  static final MediaTypeCode value122282 = MediaTypeCode._(
    '122282',
  );

  /// value122283
  static final MediaTypeCode value122283 = MediaTypeCode._(
    '122283',
  );

  /// value122288
  static final MediaTypeCode value122288 = MediaTypeCode._(
    '122288',
  );

  /// value122291
  static final MediaTypeCode value122291 = MediaTypeCode._(
    '122291',
  );

  /// value122292
  static final MediaTypeCode value122292 = MediaTypeCode._(
    '122292',
  );

  /// value122301
  static final MediaTypeCode value122301 = MediaTypeCode._(
    '122301',
  );

  /// value122302
  static final MediaTypeCode value122302 = MediaTypeCode._(
    '122302',
  );

  /// value122303
  static final MediaTypeCode value122303 = MediaTypeCode._(
    '122303',
  );

  /// value122304
  static final MediaTypeCode value122304 = MediaTypeCode._(
    '122304',
  );

  /// value122305
  static final MediaTypeCode value122305 = MediaTypeCode._(
    '122305',
  );

  /// value122306
  static final MediaTypeCode value122306 = MediaTypeCode._(
    '122306',
  );

  /// value122307
  static final MediaTypeCode value122307 = MediaTypeCode._(
    '122307',
  );

  /// value122308
  static final MediaTypeCode value122308 = MediaTypeCode._(
    '122308',
  );

  /// value122309
  static final MediaTypeCode value122309 = MediaTypeCode._(
    '122309',
  );

  /// value122310
  static final MediaTypeCode value122310 = MediaTypeCode._(
    '122310',
  );

  /// value122311
  static final MediaTypeCode value122311 = MediaTypeCode._(
    '122311',
  );

  /// value122312
  static final MediaTypeCode value122312 = MediaTypeCode._(
    '122312',
  );

  /// value122313
  static final MediaTypeCode value122313 = MediaTypeCode._(
    '122313',
  );

  /// value122319
  static final MediaTypeCode value122319 = MediaTypeCode._(
    '122319',
  );

  /// value122320
  static final MediaTypeCode value122320 = MediaTypeCode._(
    '122320',
  );

  /// value122321
  static final MediaTypeCode value122321 = MediaTypeCode._(
    '122321',
  );

  /// value122322
  static final MediaTypeCode value122322 = MediaTypeCode._(
    '122322',
  );

  /// value122325
  static final MediaTypeCode value122325 = MediaTypeCode._(
    '122325',
  );

  /// value122330
  static final MediaTypeCode value122330 = MediaTypeCode._(
    '122330',
  );

  /// value122331
  static final MediaTypeCode value122331 = MediaTypeCode._(
    '122331',
  );

  /// value122332
  static final MediaTypeCode value122332 = MediaTypeCode._(
    '122332',
  );

  /// value122333
  static final MediaTypeCode value122333 = MediaTypeCode._(
    '122333',
  );

  /// value122334
  static final MediaTypeCode value122334 = MediaTypeCode._(
    '122334',
  );

  /// value122335
  static final MediaTypeCode value122335 = MediaTypeCode._(
    '122335',
  );

  /// value122336
  static final MediaTypeCode value122336 = MediaTypeCode._(
    '122336',
  );

  /// value122337
  static final MediaTypeCode value122337 = MediaTypeCode._(
    '122337',
  );

  /// value122339
  static final MediaTypeCode value122339 = MediaTypeCode._(
    '122339',
  );

  /// value122340
  static final MediaTypeCode value122340 = MediaTypeCode._(
    '122340',
  );

  /// value122341
  static final MediaTypeCode value122341 = MediaTypeCode._(
    '122341',
  );

  /// value122343
  static final MediaTypeCode value122343 = MediaTypeCode._(
    '122343',
  );

  /// value122344
  static final MediaTypeCode value122344 = MediaTypeCode._(
    '122344',
  );

  /// value122345
  static final MediaTypeCode value122345 = MediaTypeCode._(
    '122345',
  );

  /// value122346
  static final MediaTypeCode value122346 = MediaTypeCode._(
    '122346',
  );

  /// value122347
  static final MediaTypeCode value122347 = MediaTypeCode._(
    '122347',
  );

  /// value122348
  static final MediaTypeCode value122348 = MediaTypeCode._(
    '122348',
  );

  /// value122350
  static final MediaTypeCode value122350 = MediaTypeCode._(
    '122350',
  );

  /// value122351
  static final MediaTypeCode value122351 = MediaTypeCode._(
    '122351',
  );

  /// value122352
  static final MediaTypeCode value122352 = MediaTypeCode._(
    '122352',
  );

  /// value122354
  static final MediaTypeCode value122354 = MediaTypeCode._(
    '122354',
  );

  /// value122355
  static final MediaTypeCode value122355 = MediaTypeCode._(
    '122355',
  );

  /// value122356
  static final MediaTypeCode value122356 = MediaTypeCode._(
    '122356',
  );

  /// value122357
  static final MediaTypeCode value122357 = MediaTypeCode._(
    '122357',
  );

  /// value122360
  static final MediaTypeCode value122360 = MediaTypeCode._(
    '122360',
  );

  /// value122361
  static final MediaTypeCode value122361 = MediaTypeCode._(
    '122361',
  );

  /// value122363
  static final MediaTypeCode value122363 = MediaTypeCode._(
    '122363',
  );

  /// value122364
  static final MediaTypeCode value122364 = MediaTypeCode._(
    '122364',
  );

  /// value122367
  static final MediaTypeCode value122367 = MediaTypeCode._(
    '122367',
  );

  /// value122368
  static final MediaTypeCode value122368 = MediaTypeCode._(
    '122368',
  );

  /// value122369
  static final MediaTypeCode value122369 = MediaTypeCode._(
    '122369',
  );

  /// value122370
  static final MediaTypeCode value122370 = MediaTypeCode._(
    '122370',
  );

  /// value122371
  static final MediaTypeCode value122371 = MediaTypeCode._(
    '122371',
  );

  /// value122372
  static final MediaTypeCode value122372 = MediaTypeCode._(
    '122372',
  );

  /// value122374
  static final MediaTypeCode value122374 = MediaTypeCode._(
    '122374',
  );

  /// value122375
  static final MediaTypeCode value122375 = MediaTypeCode._(
    '122375',
  );

  /// value122376
  static final MediaTypeCode value122376 = MediaTypeCode._(
    '122376',
  );

  /// value122380
  static final MediaTypeCode value122380 = MediaTypeCode._(
    '122380',
  );

  /// value122381
  static final MediaTypeCode value122381 = MediaTypeCode._(
    '122381',
  );

  /// value122382
  static final MediaTypeCode value122382 = MediaTypeCode._(
    '122382',
  );

  /// value122383
  static final MediaTypeCode value122383 = MediaTypeCode._(
    '122383',
  );

  /// value122384
  static final MediaTypeCode value122384 = MediaTypeCode._(
    '122384',
  );

  /// value122385
  static final MediaTypeCode value122385 = MediaTypeCode._(
    '122385',
  );

  /// value122386
  static final MediaTypeCode value122386 = MediaTypeCode._(
    '122386',
  );

  /// value122387
  static final MediaTypeCode value122387 = MediaTypeCode._(
    '122387',
  );

  /// value122388
  static final MediaTypeCode value122388 = MediaTypeCode._(
    '122388',
  );

  /// value122389
  static final MediaTypeCode value122389 = MediaTypeCode._(
    '122389',
  );

  /// value122390
  static final MediaTypeCode value122390 = MediaTypeCode._(
    '122390',
  );

  /// value122391
  static final MediaTypeCode value122391 = MediaTypeCode._(
    '122391',
  );

  /// value122393
  static final MediaTypeCode value122393 = MediaTypeCode._(
    '122393',
  );

  /// value122394
  static final MediaTypeCode value122394 = MediaTypeCode._(
    '122394',
  );

  /// value122395
  static final MediaTypeCode value122395 = MediaTypeCode._(
    '122395',
  );

  /// value122398
  static final MediaTypeCode value122398 = MediaTypeCode._(
    '122398',
  );

  /// value122399
  static final MediaTypeCode value122399 = MediaTypeCode._(
    '122399',
  );

  /// value122400
  static final MediaTypeCode value122400 = MediaTypeCode._(
    '122400',
  );

  /// value122401
  static final MediaTypeCode value122401 = MediaTypeCode._(
    '122401',
  );

  /// value122402
  static final MediaTypeCode value122402 = MediaTypeCode._(
    '122402',
  );

  /// value122403
  static final MediaTypeCode value122403 = MediaTypeCode._(
    '122403',
  );

  /// value122404
  static final MediaTypeCode value122404 = MediaTypeCode._(
    '122404',
  );

  /// value122405
  static final MediaTypeCode value122405 = MediaTypeCode._(
    '122405',
  );

  /// value122406
  static final MediaTypeCode value122406 = MediaTypeCode._(
    '122406',
  );

  /// value122407
  static final MediaTypeCode value122407 = MediaTypeCode._(
    '122407',
  );

  /// value122408
  static final MediaTypeCode value122408 = MediaTypeCode._(
    '122408',
  );

  /// value122410
  static final MediaTypeCode value122410 = MediaTypeCode._(
    '122410',
  );

  /// value122411
  static final MediaTypeCode value122411 = MediaTypeCode._(
    '122411',
  );

  /// value122417
  static final MediaTypeCode value122417 = MediaTypeCode._(
    '122417',
  );

  /// value122421
  static final MediaTypeCode value122421 = MediaTypeCode._(
    '122421',
  );

  /// value122422
  static final MediaTypeCode value122422 = MediaTypeCode._(
    '122422',
  );

  /// value122423
  static final MediaTypeCode value122423 = MediaTypeCode._(
    '122423',
  );

  /// value122428
  static final MediaTypeCode value122428 = MediaTypeCode._(
    '122428',
  );

  /// value122429
  static final MediaTypeCode value122429 = MediaTypeCode._(
    '122429',
  );

  /// value122430
  static final MediaTypeCode value122430 = MediaTypeCode._(
    '122430',
  );

  /// value122431
  static final MediaTypeCode value122431 = MediaTypeCode._(
    '122431',
  );

  /// value122432
  static final MediaTypeCode value122432 = MediaTypeCode._(
    '122432',
  );

  /// value122433
  static final MediaTypeCode value122433 = MediaTypeCode._(
    '122433',
  );

  /// value122434
  static final MediaTypeCode value122434 = MediaTypeCode._(
    '122434',
  );

  /// value122435
  static final MediaTypeCode value122435 = MediaTypeCode._(
    '122435',
  );

  /// value122438
  static final MediaTypeCode value122438 = MediaTypeCode._(
    '122438',
  );

  /// value122445
  static final MediaTypeCode value122445 = MediaTypeCode._(
    '122445',
  );

  /// value122446
  static final MediaTypeCode value122446 = MediaTypeCode._(
    '122446',
  );

  /// value122447
  static final MediaTypeCode value122447 = MediaTypeCode._(
    '122447',
  );

  /// value122448
  static final MediaTypeCode value122448 = MediaTypeCode._(
    '122448',
  );

  /// value122449
  static final MediaTypeCode value122449 = MediaTypeCode._(
    '122449',
  );

  /// value122450
  static final MediaTypeCode value122450 = MediaTypeCode._(
    '122450',
  );

  /// value122451
  static final MediaTypeCode value122451 = MediaTypeCode._(
    '122451',
  );

  /// value122452
  static final MediaTypeCode value122452 = MediaTypeCode._(
    '122452',
  );

  /// value122453
  static final MediaTypeCode value122453 = MediaTypeCode._(
    '122453',
  );

  /// value122459
  static final MediaTypeCode value122459 = MediaTypeCode._(
    '122459',
  );

  /// value122461
  static final MediaTypeCode value122461 = MediaTypeCode._(
    '122461',
  );

  /// value122464
  static final MediaTypeCode value122464 = MediaTypeCode._(
    '122464',
  );

  /// value122465
  static final MediaTypeCode value122465 = MediaTypeCode._(
    '122465',
  );

  /// value122466
  static final MediaTypeCode value122466 = MediaTypeCode._(
    '122466',
  );

  /// value122467
  static final MediaTypeCode value122467 = MediaTypeCode._(
    '122467',
  );

  /// value122468
  static final MediaTypeCode value122468 = MediaTypeCode._(
    '122468',
  );

  /// value122469
  static final MediaTypeCode value122469 = MediaTypeCode._(
    '122469',
  );

  /// value122470
  static final MediaTypeCode value122470 = MediaTypeCode._(
    '122470',
  );

  /// value122471
  static final MediaTypeCode value122471 = MediaTypeCode._(
    '122471',
  );

  /// value122472
  static final MediaTypeCode value122472 = MediaTypeCode._(
    '122472',
  );

  /// value122473
  static final MediaTypeCode value122473 = MediaTypeCode._(
    '122473',
  );

  /// value122474
  static final MediaTypeCode value122474 = MediaTypeCode._(
    '122474',
  );

  /// value122475
  static final MediaTypeCode value122475 = MediaTypeCode._(
    '122475',
  );

  /// value122476
  static final MediaTypeCode value122476 = MediaTypeCode._(
    '122476',
  );

  /// value122477
  static final MediaTypeCode value122477 = MediaTypeCode._(
    '122477',
  );

  /// value122480
  static final MediaTypeCode value122480 = MediaTypeCode._(
    '122480',
  );

  /// value122481
  static final MediaTypeCode value122481 = MediaTypeCode._(
    '122481',
  );

  /// value122482
  static final MediaTypeCode value122482 = MediaTypeCode._(
    '122482',
  );

  /// value122485
  static final MediaTypeCode value122485 = MediaTypeCode._(
    '122485',
  );

  /// value122486
  static final MediaTypeCode value122486 = MediaTypeCode._(
    '122486',
  );

  /// value122487
  static final MediaTypeCode value122487 = MediaTypeCode._(
    '122487',
  );

  /// value122488
  static final MediaTypeCode value122488 = MediaTypeCode._(
    '122488',
  );

  /// value122489
  static final MediaTypeCode value122489 = MediaTypeCode._(
    '122489',
  );

  /// value122490
  static final MediaTypeCode value122490 = MediaTypeCode._(
    '122490',
  );

  /// value122491
  static final MediaTypeCode value122491 = MediaTypeCode._(
    '122491',
  );

  /// value122493
  static final MediaTypeCode value122493 = MediaTypeCode._(
    '122493',
  );

  /// value122495
  static final MediaTypeCode value122495 = MediaTypeCode._(
    '122495',
  );

  /// value122496
  static final MediaTypeCode value122496 = MediaTypeCode._(
    '122496',
  );

  /// value122497
  static final MediaTypeCode value122497 = MediaTypeCode._(
    '122497',
  );

  /// value122498
  static final MediaTypeCode value122498 = MediaTypeCode._(
    '122498',
  );

  /// value122499
  static final MediaTypeCode value122499 = MediaTypeCode._(
    '122499',
  );

  /// value122501
  static final MediaTypeCode value122501 = MediaTypeCode._(
    '122501',
  );

  /// value122502
  static final MediaTypeCode value122502 = MediaTypeCode._(
    '122502',
  );

  /// value122503
  static final MediaTypeCode value122503 = MediaTypeCode._(
    '122503',
  );

  /// value122505
  static final MediaTypeCode value122505 = MediaTypeCode._(
    '122505',
  );

  /// value122507
  static final MediaTypeCode value122507 = MediaTypeCode._(
    '122507',
  );

  /// value122508
  static final MediaTypeCode value122508 = MediaTypeCode._(
    '122508',
  );

  /// value122509
  static final MediaTypeCode value122509 = MediaTypeCode._(
    '122509',
  );

  /// value122510
  static final MediaTypeCode value122510 = MediaTypeCode._(
    '122510',
  );

  /// value122511
  static final MediaTypeCode value122511 = MediaTypeCode._(
    '122511',
  );

  /// value122516
  static final MediaTypeCode value122516 = MediaTypeCode._(
    '122516',
  );

  /// value122517
  static final MediaTypeCode value122517 = MediaTypeCode._(
    '122517',
  );

  /// value122528
  static final MediaTypeCode value122528 = MediaTypeCode._(
    '122528',
  );

  /// value122529
  static final MediaTypeCode value122529 = MediaTypeCode._(
    '122529',
  );

  /// value122542
  static final MediaTypeCode value122542 = MediaTypeCode._(
    '122542',
  );

  /// value122544
  static final MediaTypeCode value122544 = MediaTypeCode._(
    '122544',
  );

  /// value122545
  static final MediaTypeCode value122545 = MediaTypeCode._(
    '122545',
  );

  /// value122546
  static final MediaTypeCode value122546 = MediaTypeCode._(
    '122546',
  );

  /// value122547
  static final MediaTypeCode value122547 = MediaTypeCode._(
    '122547',
  );

  /// value122548
  static final MediaTypeCode value122548 = MediaTypeCode._(
    '122548',
  );

  /// value122549
  static final MediaTypeCode value122549 = MediaTypeCode._(
    '122549',
  );

  /// value122550
  static final MediaTypeCode value122550 = MediaTypeCode._(
    '122550',
  );

  /// value122551
  static final MediaTypeCode value122551 = MediaTypeCode._(
    '122551',
  );

  /// value122554
  static final MediaTypeCode value122554 = MediaTypeCode._(
    '122554',
  );

  /// value122555
  static final MediaTypeCode value122555 = MediaTypeCode._(
    '122555',
  );

  /// value122558
  static final MediaTypeCode value122558 = MediaTypeCode._(
    '122558',
  );

  /// value122559
  static final MediaTypeCode value122559 = MediaTypeCode._(
    '122559',
  );

  /// value122560
  static final MediaTypeCode value122560 = MediaTypeCode._(
    '122560',
  );

  /// value122562
  static final MediaTypeCode value122562 = MediaTypeCode._(
    '122562',
  );

  /// value122563
  static final MediaTypeCode value122563 = MediaTypeCode._(
    '122563',
  );

  /// value122564
  static final MediaTypeCode value122564 = MediaTypeCode._(
    '122564',
  );

  /// value122565
  static final MediaTypeCode value122565 = MediaTypeCode._(
    '122565',
  );

  /// value122566
  static final MediaTypeCode value122566 = MediaTypeCode._(
    '122566',
  );

  /// value122572
  static final MediaTypeCode value122572 = MediaTypeCode._(
    '122572',
  );

  /// value122574
  static final MediaTypeCode value122574 = MediaTypeCode._(
    '122574',
  );

  /// value122575
  static final MediaTypeCode value122575 = MediaTypeCode._(
    '122575',
  );

  /// value122582
  static final MediaTypeCode value122582 = MediaTypeCode._(
    '122582',
  );

  /// value122600
  static final MediaTypeCode value122600 = MediaTypeCode._(
    '122600',
  );

  /// value122601
  static final MediaTypeCode value122601 = MediaTypeCode._(
    '122601',
  );

  /// value122602
  static final MediaTypeCode value122602 = MediaTypeCode._(
    '122602',
  );

  /// value122603
  static final MediaTypeCode value122603 = MediaTypeCode._(
    '122603',
  );

  /// value122604
  static final MediaTypeCode value122604 = MediaTypeCode._(
    '122604',
  );

  /// value122605
  static final MediaTypeCode value122605 = MediaTypeCode._(
    '122605',
  );

  /// value122606
  static final MediaTypeCode value122606 = MediaTypeCode._(
    '122606',
  );

  /// value122607
  static final MediaTypeCode value122607 = MediaTypeCode._(
    '122607',
  );

  /// value122608
  static final MediaTypeCode value122608 = MediaTypeCode._(
    '122608',
  );

  /// value122609
  static final MediaTypeCode value122609 = MediaTypeCode._(
    '122609',
  );

  /// value122611
  static final MediaTypeCode value122611 = MediaTypeCode._(
    '122611',
  );

  /// value122612
  static final MediaTypeCode value122612 = MediaTypeCode._(
    '122612',
  );

  /// value122616
  static final MediaTypeCode value122616 = MediaTypeCode._(
    '122616',
  );

  /// value122617
  static final MediaTypeCode value122617 = MediaTypeCode._(
    '122617',
  );

  /// value122618
  static final MediaTypeCode value122618 = MediaTypeCode._(
    '122618',
  );

  /// value122619
  static final MediaTypeCode value122619 = MediaTypeCode._(
    '122619',
  );

  /// value122620
  static final MediaTypeCode value122620 = MediaTypeCode._(
    '122620',
  );

  /// value122621
  static final MediaTypeCode value122621 = MediaTypeCode._(
    '122621',
  );

  /// value122624
  static final MediaTypeCode value122624 = MediaTypeCode._(
    '122624',
  );

  /// value122627
  static final MediaTypeCode value122627 = MediaTypeCode._(
    '122627',
  );

  /// value122628
  static final MediaTypeCode value122628 = MediaTypeCode._(
    '122628',
  );

  /// value122631
  static final MediaTypeCode value122631 = MediaTypeCode._(
    '122631',
  );

  /// value122633
  static final MediaTypeCode value122633 = MediaTypeCode._(
    '122633',
  );

  /// value122634
  static final MediaTypeCode value122634 = MediaTypeCode._(
    '122634',
  );

  /// value122635
  static final MediaTypeCode value122635 = MediaTypeCode._(
    '122635',
  );

  /// value122636
  static final MediaTypeCode value122636 = MediaTypeCode._(
    '122636',
  );

  /// value122637
  static final MediaTypeCode value122637 = MediaTypeCode._(
    '122637',
  );

  /// value122638
  static final MediaTypeCode value122638 = MediaTypeCode._(
    '122638',
  );

  /// value122639
  static final MediaTypeCode value122639 = MediaTypeCode._(
    '122639',
  );

  /// value122640
  static final MediaTypeCode value122640 = MediaTypeCode._(
    '122640',
  );

  /// value122642
  static final MediaTypeCode value122642 = MediaTypeCode._(
    '122642',
  );

  /// value122643
  static final MediaTypeCode value122643 = MediaTypeCode._(
    '122643',
  );

  /// value122645
  static final MediaTypeCode value122645 = MediaTypeCode._(
    '122645',
  );

  /// value122650
  static final MediaTypeCode value122650 = MediaTypeCode._(
    '122650',
  );

  /// value122651
  static final MediaTypeCode value122651 = MediaTypeCode._(
    '122651',
  );

  /// value122652
  static final MediaTypeCode value122652 = MediaTypeCode._(
    '122652',
  );

  /// value122655
  static final MediaTypeCode value122655 = MediaTypeCode._(
    '122655',
  );

  /// value122656
  static final MediaTypeCode value122656 = MediaTypeCode._(
    '122656',
  );

  /// value122657
  static final MediaTypeCode value122657 = MediaTypeCode._(
    '122657',
  );

  /// value122658
  static final MediaTypeCode value122658 = MediaTypeCode._(
    '122658',
  );

  /// value122659
  static final MediaTypeCode value122659 = MediaTypeCode._(
    '122659',
  );

  /// value122660
  static final MediaTypeCode value122660 = MediaTypeCode._(
    '122660',
  );

  /// value122661
  static final MediaTypeCode value122661 = MediaTypeCode._(
    '122661',
  );

  /// value122664
  static final MediaTypeCode value122664 = MediaTypeCode._(
    '122664',
  );

  /// value122665
  static final MediaTypeCode value122665 = MediaTypeCode._(
    '122665',
  );

  /// value122666
  static final MediaTypeCode value122666 = MediaTypeCode._(
    '122666',
  );

  /// value122667
  static final MediaTypeCode value122667 = MediaTypeCode._(
    '122667',
  );

  /// value122668
  static final MediaTypeCode value122668 = MediaTypeCode._(
    '122668',
  );

  /// value122670
  static final MediaTypeCode value122670 = MediaTypeCode._(
    '122670',
  );

  /// value122675
  static final MediaTypeCode value122675 = MediaTypeCode._(
    '122675',
  );

  /// value122680
  static final MediaTypeCode value122680 = MediaTypeCode._(
    '122680',
  );

  /// value122683
  static final MediaTypeCode value122683 = MediaTypeCode._(
    '122683',
  );

  /// value122684
  static final MediaTypeCode value122684 = MediaTypeCode._(
    '122684',
  );

  /// value122685
  static final MediaTypeCode value122685 = MediaTypeCode._(
    '122685',
  );

  /// value122686
  static final MediaTypeCode value122686 = MediaTypeCode._(
    '122686',
  );

  /// value122687
  static final MediaTypeCode value122687 = MediaTypeCode._(
    '122687',
  );

  /// value122698
  static final MediaTypeCode value122698 = MediaTypeCode._(
    '122698',
  );

  /// value122699
  static final MediaTypeCode value122699 = MediaTypeCode._(
    '122699',
  );

  /// value122700
  static final MediaTypeCode value122700 = MediaTypeCode._(
    '122700',
  );

  /// value122701
  static final MediaTypeCode value122701 = MediaTypeCode._(
    '122701',
  );

  /// value122702
  static final MediaTypeCode value122702 = MediaTypeCode._(
    '122702',
  );

  /// value122703
  static final MediaTypeCode value122703 = MediaTypeCode._(
    '122703',
  );

  /// value122704
  static final MediaTypeCode value122704 = MediaTypeCode._(
    '122704',
  );

  /// value122705
  static final MediaTypeCode value122705 = MediaTypeCode._(
    '122705',
  );

  /// value122706
  static final MediaTypeCode value122706 = MediaTypeCode._(
    '122706',
  );

  /// value122707
  static final MediaTypeCode value122707 = MediaTypeCode._(
    '122707',
  );

  /// value122708
  static final MediaTypeCode value122708 = MediaTypeCode._(
    '122708',
  );

  /// value122709
  static final MediaTypeCode value122709 = MediaTypeCode._(
    '122709',
  );

  /// value122710
  static final MediaTypeCode value122710 = MediaTypeCode._(
    '122710',
  );

  /// value122711
  static final MediaTypeCode value122711 = MediaTypeCode._(
    '122711',
  );

  /// value122712
  static final MediaTypeCode value122712 = MediaTypeCode._(
    '122712',
  );

  /// value122713
  static final MediaTypeCode value122713 = MediaTypeCode._(
    '122713',
  );

  /// value122715
  static final MediaTypeCode value122715 = MediaTypeCode._(
    '122715',
  );

  /// value122716
  static final MediaTypeCode value122716 = MediaTypeCode._(
    '122716',
  );

  /// value122717
  static final MediaTypeCode value122717 = MediaTypeCode._(
    '122717',
  );

  /// value122718
  static final MediaTypeCode value122718 = MediaTypeCode._(
    '122718',
  );

  /// value122720
  static final MediaTypeCode value122720 = MediaTypeCode._(
    '122720',
  );

  /// value122721
  static final MediaTypeCode value122721 = MediaTypeCode._(
    '122721',
  );

  /// value122726
  static final MediaTypeCode value122726 = MediaTypeCode._(
    '122726',
  );

  /// value122727
  static final MediaTypeCode value122727 = MediaTypeCode._(
    '122727',
  );

  /// value122728
  static final MediaTypeCode value122728 = MediaTypeCode._(
    '122728',
  );

  /// value122729
  static final MediaTypeCode value122729 = MediaTypeCode._(
    '122729',
  );

  /// value122730
  static final MediaTypeCode value122730 = MediaTypeCode._(
    '122730',
  );

  /// value122731
  static final MediaTypeCode value122731 = MediaTypeCode._(
    '122731',
  );

  /// value122732
  static final MediaTypeCode value122732 = MediaTypeCode._(
    '122732',
  );

  /// value122733
  static final MediaTypeCode value122733 = MediaTypeCode._(
    '122733',
  );

  /// value122734
  static final MediaTypeCode value122734 = MediaTypeCode._(
    '122734',
  );

  /// value122735
  static final MediaTypeCode value122735 = MediaTypeCode._(
    '122735',
  );

  /// value122739
  static final MediaTypeCode value122739 = MediaTypeCode._(
    '122739',
  );

  /// value122740
  static final MediaTypeCode value122740 = MediaTypeCode._(
    '122740',
  );

  /// value122741
  static final MediaTypeCode value122741 = MediaTypeCode._(
    '122741',
  );

  /// value122742
  static final MediaTypeCode value122742 = MediaTypeCode._(
    '122742',
  );

  /// value122743
  static final MediaTypeCode value122743 = MediaTypeCode._(
    '122743',
  );

  /// value122744
  static final MediaTypeCode value122744 = MediaTypeCode._(
    '122744',
  );

  /// value122745
  static final MediaTypeCode value122745 = MediaTypeCode._(
    '122745',
  );

  /// value122748
  static final MediaTypeCode value122748 = MediaTypeCode._(
    '122748',
  );

  /// value122750
  static final MediaTypeCode value122750 = MediaTypeCode._(
    '122750',
  );

  /// value122751
  static final MediaTypeCode value122751 = MediaTypeCode._(
    '122751',
  );

  /// value122752
  static final MediaTypeCode value122752 = MediaTypeCode._(
    '122752',
  );

  /// value122753
  static final MediaTypeCode value122753 = MediaTypeCode._(
    '122753',
  );

  /// value122755
  static final MediaTypeCode value122755 = MediaTypeCode._(
    '122755',
  );

  /// value122756
  static final MediaTypeCode value122756 = MediaTypeCode._(
    '122756',
  );

  /// value122757
  static final MediaTypeCode value122757 = MediaTypeCode._(
    '122757',
  );

  /// value122758
  static final MediaTypeCode value122758 = MediaTypeCode._(
    '122758',
  );

  /// value122759
  static final MediaTypeCode value122759 = MediaTypeCode._(
    '122759',
  );

  /// value122760
  static final MediaTypeCode value122760 = MediaTypeCode._(
    '122760',
  );

  /// value122762
  static final MediaTypeCode value122762 = MediaTypeCode._(
    '122762',
  );

  /// value122764
  static final MediaTypeCode value122764 = MediaTypeCode._(
    '122764',
  );

  /// value122768
  static final MediaTypeCode value122768 = MediaTypeCode._(
    '122768',
  );

  /// value122769
  static final MediaTypeCode value122769 = MediaTypeCode._(
    '122769',
  );

  /// value122770
  static final MediaTypeCode value122770 = MediaTypeCode._(
    '122770',
  );

  /// value122771
  static final MediaTypeCode value122771 = MediaTypeCode._(
    '122771',
  );

  /// value122772
  static final MediaTypeCode value122772 = MediaTypeCode._(
    '122772',
  );

  /// value122773
  static final MediaTypeCode value122773 = MediaTypeCode._(
    '122773',
  );

  /// value122775
  static final MediaTypeCode value122775 = MediaTypeCode._(
    '122775',
  );

  /// value122776
  static final MediaTypeCode value122776 = MediaTypeCode._(
    '122776',
  );

  /// value122781
  static final MediaTypeCode value122781 = MediaTypeCode._(
    '122781',
  );

  /// value122782
  static final MediaTypeCode value122782 = MediaTypeCode._(
    '122782',
  );

  /// value122783
  static final MediaTypeCode value122783 = MediaTypeCode._(
    '122783',
  );

  /// value122784
  static final MediaTypeCode value122784 = MediaTypeCode._(
    '122784',
  );

  /// value122785
  static final MediaTypeCode value122785 = MediaTypeCode._(
    '122785',
  );

  /// value122791
  static final MediaTypeCode value122791 = MediaTypeCode._(
    '122791',
  );

  /// value122792
  static final MediaTypeCode value122792 = MediaTypeCode._(
    '122792',
  );

  /// value122793
  static final MediaTypeCode value122793 = MediaTypeCode._(
    '122793',
  );

  /// value122795
  static final MediaTypeCode value122795 = MediaTypeCode._(
    '122795',
  );

  /// value122796
  static final MediaTypeCode value122796 = MediaTypeCode._(
    '122796',
  );

  /// value122797
  static final MediaTypeCode value122797 = MediaTypeCode._(
    '122797',
  );

  /// value122799
  static final MediaTypeCode value122799 = MediaTypeCode._(
    '122799',
  );

  /// value123001
  static final MediaTypeCode value123001 = MediaTypeCode._(
    '123001',
  );

  /// value123003
  static final MediaTypeCode value123003 = MediaTypeCode._(
    '123003',
  );

  /// value123004
  static final MediaTypeCode value123004 = MediaTypeCode._(
    '123004',
  );

  /// value123005
  static final MediaTypeCode value123005 = MediaTypeCode._(
    '123005',
  );

  /// value123006
  static final MediaTypeCode value123006 = MediaTypeCode._(
    '123006',
  );

  /// value123007
  static final MediaTypeCode value123007 = MediaTypeCode._(
    '123007',
  );

  /// value123009
  static final MediaTypeCode value123009 = MediaTypeCode._(
    '123009',
  );

  /// value123010
  static final MediaTypeCode value123010 = MediaTypeCode._(
    '123010',
  );

  /// value123011
  static final MediaTypeCode value123011 = MediaTypeCode._(
    '123011',
  );

  /// value123012
  static final MediaTypeCode value123012 = MediaTypeCode._(
    '123012',
  );

  /// value123014
  static final MediaTypeCode value123014 = MediaTypeCode._(
    '123014',
  );

  /// value123015
  static final MediaTypeCode value123015 = MediaTypeCode._(
    '123015',
  );

  /// value123016
  static final MediaTypeCode value123016 = MediaTypeCode._(
    '123016',
  );

  /// value123019
  static final MediaTypeCode value123019 = MediaTypeCode._(
    '123019',
  );

  /// value123101
  static final MediaTypeCode value123101 = MediaTypeCode._(
    '123101',
  );

  /// value123102
  static final MediaTypeCode value123102 = MediaTypeCode._(
    '123102',
  );

  /// value123103
  static final MediaTypeCode value123103 = MediaTypeCode._(
    '123103',
  );

  /// value123104
  static final MediaTypeCode value123104 = MediaTypeCode._(
    '123104',
  );

  /// value123105
  static final MediaTypeCode value123105 = MediaTypeCode._(
    '123105',
  );

  /// value123106
  static final MediaTypeCode value123106 = MediaTypeCode._(
    '123106',
  );

  /// value123107
  static final MediaTypeCode value123107 = MediaTypeCode._(
    '123107',
  );

  /// value123108
  static final MediaTypeCode value123108 = MediaTypeCode._(
    '123108',
  );

  /// value123109
  static final MediaTypeCode value123109 = MediaTypeCode._(
    '123109',
  );

  /// value123110
  static final MediaTypeCode value123110 = MediaTypeCode._(
    '123110',
  );

  /// value123111
  static final MediaTypeCode value123111 = MediaTypeCode._(
    '123111',
  );

  /// value125000
  static final MediaTypeCode value125000 = MediaTypeCode._(
    '125000',
  );

  /// value125001
  static final MediaTypeCode value125001 = MediaTypeCode._(
    '125001',
  );

  /// value125002
  static final MediaTypeCode value125002 = MediaTypeCode._(
    '125002',
  );

  /// value125003
  static final MediaTypeCode value125003 = MediaTypeCode._(
    '125003',
  );

  /// value125004
  static final MediaTypeCode value125004 = MediaTypeCode._(
    '125004',
  );

  /// value125005
  static final MediaTypeCode value125005 = MediaTypeCode._(
    '125005',
  );

  /// value125006
  static final MediaTypeCode value125006 = MediaTypeCode._(
    '125006',
  );

  /// value125007
  static final MediaTypeCode value125007 = MediaTypeCode._(
    '125007',
  );

  /// value125008
  static final MediaTypeCode value125008 = MediaTypeCode._(
    '125008',
  );

  /// value125009
  static final MediaTypeCode value125009 = MediaTypeCode._(
    '125009',
  );

  /// value125010
  static final MediaTypeCode value125010 = MediaTypeCode._(
    '125010',
  );

  /// value125011
  static final MediaTypeCode value125011 = MediaTypeCode._(
    '125011',
  );

  /// value125012
  static final MediaTypeCode value125012 = MediaTypeCode._(
    '125012',
  );

  /// value125013
  static final MediaTypeCode value125013 = MediaTypeCode._(
    '125013',
  );

  /// value125015
  static final MediaTypeCode value125015 = MediaTypeCode._(
    '125015',
  );

  /// value125016
  static final MediaTypeCode value125016 = MediaTypeCode._(
    '125016',
  );

  /// value125021
  static final MediaTypeCode value125021 = MediaTypeCode._(
    '125021',
  );

  /// value125022
  static final MediaTypeCode value125022 = MediaTypeCode._(
    '125022',
  );

  /// value125023
  static final MediaTypeCode value125023 = MediaTypeCode._(
    '125023',
  );

  /// value125024
  static final MediaTypeCode value125024 = MediaTypeCode._(
    '125024',
  );

  /// value125025
  static final MediaTypeCode value125025 = MediaTypeCode._(
    '125025',
  );

  /// value125030
  static final MediaTypeCode value125030 = MediaTypeCode._(
    '125030',
  );

  /// value125031
  static final MediaTypeCode value125031 = MediaTypeCode._(
    '125031',
  );

  /// value125032
  static final MediaTypeCode value125032 = MediaTypeCode._(
    '125032',
  );

  /// value125033
  static final MediaTypeCode value125033 = MediaTypeCode._(
    '125033',
  );

  /// value125034
  static final MediaTypeCode value125034 = MediaTypeCode._(
    '125034',
  );

  /// value125035
  static final MediaTypeCode value125035 = MediaTypeCode._(
    '125035',
  );

  /// value125036
  static final MediaTypeCode value125036 = MediaTypeCode._(
    '125036',
  );

  /// value125037
  static final MediaTypeCode value125037 = MediaTypeCode._(
    '125037',
  );

  /// value125038
  static final MediaTypeCode value125038 = MediaTypeCode._(
    '125038',
  );

  /// value125040
  static final MediaTypeCode value125040 = MediaTypeCode._(
    '125040',
  );

  /// value125041
  static final MediaTypeCode value125041 = MediaTypeCode._(
    '125041',
  );

  /// value125100
  static final MediaTypeCode value125100 = MediaTypeCode._(
    '125100',
  );

  /// value125101
  static final MediaTypeCode value125101 = MediaTypeCode._(
    '125101',
  );

  /// value125102
  static final MediaTypeCode value125102 = MediaTypeCode._(
    '125102',
  );

  /// value125105
  static final MediaTypeCode value125105 = MediaTypeCode._(
    '125105',
  );

  /// value125106
  static final MediaTypeCode value125106 = MediaTypeCode._(
    '125106',
  );

  /// value125107
  static final MediaTypeCode value125107 = MediaTypeCode._(
    '125107',
  );

  /// value125195
  static final MediaTypeCode value125195 = MediaTypeCode._(
    '125195',
  );

  /// value125196
  static final MediaTypeCode value125196 = MediaTypeCode._(
    '125196',
  );

  /// value125197
  static final MediaTypeCode value125197 = MediaTypeCode._(
    '125197',
  );

  /// value125200
  static final MediaTypeCode value125200 = MediaTypeCode._(
    '125200',
  );

  /// value125201
  static final MediaTypeCode value125201 = MediaTypeCode._(
    '125201',
  );

  /// value125202
  static final MediaTypeCode value125202 = MediaTypeCode._(
    '125202',
  );

  /// value125203
  static final MediaTypeCode value125203 = MediaTypeCode._(
    '125203',
  );

  /// value125204
  static final MediaTypeCode value125204 = MediaTypeCode._(
    '125204',
  );

  /// value125205
  static final MediaTypeCode value125205 = MediaTypeCode._(
    '125205',
  );

  /// value125206
  static final MediaTypeCode value125206 = MediaTypeCode._(
    '125206',
  );

  /// value125207
  static final MediaTypeCode value125207 = MediaTypeCode._(
    '125207',
  );

  /// value125208
  static final MediaTypeCode value125208 = MediaTypeCode._(
    '125208',
  );

  /// value125209
  static final MediaTypeCode value125209 = MediaTypeCode._(
    '125209',
  );

  /// value125210
  static final MediaTypeCode value125210 = MediaTypeCode._(
    '125210',
  );

  /// value125211
  static final MediaTypeCode value125211 = MediaTypeCode._(
    '125211',
  );

  /// value125212
  static final MediaTypeCode value125212 = MediaTypeCode._(
    '125212',
  );

  /// value125213
  static final MediaTypeCode value125213 = MediaTypeCode._(
    '125213',
  );

  /// value125214
  static final MediaTypeCode value125214 = MediaTypeCode._(
    '125214',
  );

  /// value125215
  static final MediaTypeCode value125215 = MediaTypeCode._(
    '125215',
  );

  /// value125216
  static final MediaTypeCode value125216 = MediaTypeCode._(
    '125216',
  );

  /// value125217
  static final MediaTypeCode value125217 = MediaTypeCode._(
    '125217',
  );

  /// value125218
  static final MediaTypeCode value125218 = MediaTypeCode._(
    '125218',
  );

  /// value125219
  static final MediaTypeCode value125219 = MediaTypeCode._(
    '125219',
  );

  /// value125220
  static final MediaTypeCode value125220 = MediaTypeCode._(
    '125220',
  );

  /// value125221
  static final MediaTypeCode value125221 = MediaTypeCode._(
    '125221',
  );

  /// value125222
  static final MediaTypeCode value125222 = MediaTypeCode._(
    '125222',
  );

  /// value125223
  static final MediaTypeCode value125223 = MediaTypeCode._(
    '125223',
  );

  /// value125224
  static final MediaTypeCode value125224 = MediaTypeCode._(
    '125224',
  );

  /// value125225
  static final MediaTypeCode value125225 = MediaTypeCode._(
    '125225',
  );

  /// value125226
  static final MediaTypeCode value125226 = MediaTypeCode._(
    '125226',
  );

  /// value125227
  static final MediaTypeCode value125227 = MediaTypeCode._(
    '125227',
  );

  /// value125228
  static final MediaTypeCode value125228 = MediaTypeCode._(
    '125228',
  );

  /// value125230
  static final MediaTypeCode value125230 = MediaTypeCode._(
    '125230',
  );

  /// value125231
  static final MediaTypeCode value125231 = MediaTypeCode._(
    '125231',
  );

  /// value125233
  static final MediaTypeCode value125233 = MediaTypeCode._(
    '125233',
  );

  /// value125234
  static final MediaTypeCode value125234 = MediaTypeCode._(
    '125234',
  );

  /// value125235
  static final MediaTypeCode value125235 = MediaTypeCode._(
    '125235',
  );

  /// value125236
  static final MediaTypeCode value125236 = MediaTypeCode._(
    '125236',
  );

  /// value125237
  static final MediaTypeCode value125237 = MediaTypeCode._(
    '125237',
  );

  /// value125238
  static final MediaTypeCode value125238 = MediaTypeCode._(
    '125238',
  );

  /// value125239
  static final MediaTypeCode value125239 = MediaTypeCode._(
    '125239',
  );

  /// value125240
  static final MediaTypeCode value125240 = MediaTypeCode._(
    '125240',
  );

  /// value125241
  static final MediaTypeCode value125241 = MediaTypeCode._(
    '125241',
  );

  /// value125242
  static final MediaTypeCode value125242 = MediaTypeCode._(
    '125242',
  );

  /// value125251
  static final MediaTypeCode value125251 = MediaTypeCode._(
    '125251',
  );

  /// value125252
  static final MediaTypeCode value125252 = MediaTypeCode._(
    '125252',
  );

  /// value125253
  static final MediaTypeCode value125253 = MediaTypeCode._(
    '125253',
  );

  /// value125254
  static final MediaTypeCode value125254 = MediaTypeCode._(
    '125254',
  );

  /// value125255
  static final MediaTypeCode value125255 = MediaTypeCode._(
    '125255',
  );

  /// value125256
  static final MediaTypeCode value125256 = MediaTypeCode._(
    '125256',
  );

  /// value125257
  static final MediaTypeCode value125257 = MediaTypeCode._(
    '125257',
  );

  /// value125258
  static final MediaTypeCode value125258 = MediaTypeCode._(
    '125258',
  );

  /// value125259
  static final MediaTypeCode value125259 = MediaTypeCode._(
    '125259',
  );

  /// value125261
  static final MediaTypeCode value125261 = MediaTypeCode._(
    '125261',
  );

  /// value125262
  static final MediaTypeCode value125262 = MediaTypeCode._(
    '125262',
  );

  /// value125263
  static final MediaTypeCode value125263 = MediaTypeCode._(
    '125263',
  );

  /// value125264
  static final MediaTypeCode value125264 = MediaTypeCode._(
    '125264',
  );

  /// value125265
  static final MediaTypeCode value125265 = MediaTypeCode._(
    '125265',
  );

  /// value125270
  static final MediaTypeCode value125270 = MediaTypeCode._(
    '125270',
  );

  /// value125271
  static final MediaTypeCode value125271 = MediaTypeCode._(
    '125271',
  );

  /// value125272
  static final MediaTypeCode value125272 = MediaTypeCode._(
    '125272',
  );

  /// value125273
  static final MediaTypeCode value125273 = MediaTypeCode._(
    '125273',
  );

  /// value125901
  static final MediaTypeCode value125901 = MediaTypeCode._(
    '125901',
  );

  /// value125902
  static final MediaTypeCode value125902 = MediaTypeCode._(
    '125902',
  );

  /// value125903
  static final MediaTypeCode value125903 = MediaTypeCode._(
    '125903',
  );

  /// value125904
  static final MediaTypeCode value125904 = MediaTypeCode._(
    '125904',
  );

  /// value125905
  static final MediaTypeCode value125905 = MediaTypeCode._(
    '125905',
  );

  /// value125906
  static final MediaTypeCode value125906 = MediaTypeCode._(
    '125906',
  );

  /// value125907
  static final MediaTypeCode value125907 = MediaTypeCode._(
    '125907',
  );

  /// value125908
  static final MediaTypeCode value125908 = MediaTypeCode._(
    '125908',
  );

  /// value126000
  static final MediaTypeCode value126000 = MediaTypeCode._(
    '126000',
  );

  /// value126001
  static final MediaTypeCode value126001 = MediaTypeCode._(
    '126001',
  );

  /// value126002
  static final MediaTypeCode value126002 = MediaTypeCode._(
    '126002',
  );

  /// value126003
  static final MediaTypeCode value126003 = MediaTypeCode._(
    '126003',
  );

  /// value126010
  static final MediaTypeCode value126010 = MediaTypeCode._(
    '126010',
  );

  /// value126011
  static final MediaTypeCode value126011 = MediaTypeCode._(
    '126011',
  );

  /// value126020
  static final MediaTypeCode value126020 = MediaTypeCode._(
    '126020',
  );

  /// value126021
  static final MediaTypeCode value126021 = MediaTypeCode._(
    '126021',
  );

  /// value126022
  static final MediaTypeCode value126022 = MediaTypeCode._(
    '126022',
  );

  /// value126030
  static final MediaTypeCode value126030 = MediaTypeCode._(
    '126030',
  );

  /// value126031
  static final MediaTypeCode value126031 = MediaTypeCode._(
    '126031',
  );

  /// value126032
  static final MediaTypeCode value126032 = MediaTypeCode._(
    '126032',
  );

  /// value126033
  static final MediaTypeCode value126033 = MediaTypeCode._(
    '126033',
  );

  /// value126034
  static final MediaTypeCode value126034 = MediaTypeCode._(
    '126034',
  );

  /// value126035
  static final MediaTypeCode value126035 = MediaTypeCode._(
    '126035',
  );

  /// value126036
  static final MediaTypeCode value126036 = MediaTypeCode._(
    '126036',
  );

  /// value126037
  static final MediaTypeCode value126037 = MediaTypeCode._(
    '126037',
  );

  /// value126038
  static final MediaTypeCode value126038 = MediaTypeCode._(
    '126038',
  );

  /// value126039
  static final MediaTypeCode value126039 = MediaTypeCode._(
    '126039',
  );

  /// value126040
  static final MediaTypeCode value126040 = MediaTypeCode._(
    '126040',
  );

  /// value126050
  static final MediaTypeCode value126050 = MediaTypeCode._(
    '126050',
  );

  /// value126051
  static final MediaTypeCode value126051 = MediaTypeCode._(
    '126051',
  );

  /// value126052
  static final MediaTypeCode value126052 = MediaTypeCode._(
    '126052',
  );

  /// value126060
  static final MediaTypeCode value126060 = MediaTypeCode._(
    '126060',
  );

  /// value126061
  static final MediaTypeCode value126061 = MediaTypeCode._(
    '126061',
  );

  /// value126062
  static final MediaTypeCode value126062 = MediaTypeCode._(
    '126062',
  );

  /// value126063
  static final MediaTypeCode value126063 = MediaTypeCode._(
    '126063',
  );

  /// value126064
  static final MediaTypeCode value126064 = MediaTypeCode._(
    '126064',
  );

  /// value126065
  static final MediaTypeCode value126065 = MediaTypeCode._(
    '126065',
  );

  /// value126066
  static final MediaTypeCode value126066 = MediaTypeCode._(
    '126066',
  );

  /// value126067
  static final MediaTypeCode value126067 = MediaTypeCode._(
    '126067',
  );

  /// value126070
  static final MediaTypeCode value126070 = MediaTypeCode._(
    '126070',
  );

  /// value126071
  static final MediaTypeCode value126071 = MediaTypeCode._(
    '126071',
  );

  /// value126072
  static final MediaTypeCode value126072 = MediaTypeCode._(
    '126072',
  );

  /// value126073
  static final MediaTypeCode value126073 = MediaTypeCode._(
    '126073',
  );

  /// value126074
  static final MediaTypeCode value126074 = MediaTypeCode._(
    '126074',
  );

  /// value126075
  static final MediaTypeCode value126075 = MediaTypeCode._(
    '126075',
  );

  /// value126080
  static final MediaTypeCode value126080 = MediaTypeCode._(
    '126080',
  );

  /// value126081
  static final MediaTypeCode value126081 = MediaTypeCode._(
    '126081',
  );

  /// value126100
  static final MediaTypeCode value126100 = MediaTypeCode._(
    '126100',
  );

  /// value126200
  static final MediaTypeCode value126200 = MediaTypeCode._(
    '126200',
  );

  /// value126201
  static final MediaTypeCode value126201 = MediaTypeCode._(
    '126201',
  );

  /// value126202
  static final MediaTypeCode value126202 = MediaTypeCode._(
    '126202',
  );

  /// value126203
  static final MediaTypeCode value126203 = MediaTypeCode._(
    '126203',
  );

  /// value126220
  static final MediaTypeCode value126220 = MediaTypeCode._(
    '126220',
  );

  /// value126300
  static final MediaTypeCode value126300 = MediaTypeCode._(
    '126300',
  );

  /// value126301
  static final MediaTypeCode value126301 = MediaTypeCode._(
    '126301',
  );

  /// value126302
  static final MediaTypeCode value126302 = MediaTypeCode._(
    '126302',
  );

  /// value126303
  static final MediaTypeCode value126303 = MediaTypeCode._(
    '126303',
  );

  /// value126310
  static final MediaTypeCode value126310 = MediaTypeCode._(
    '126310',
  );

  /// value126311
  static final MediaTypeCode value126311 = MediaTypeCode._(
    '126311',
  );

  /// value126312
  static final MediaTypeCode value126312 = MediaTypeCode._(
    '126312',
  );

  /// value126313
  static final MediaTypeCode value126313 = MediaTypeCode._(
    '126313',
  );

  /// value126314
  static final MediaTypeCode value126314 = MediaTypeCode._(
    '126314',
  );

  /// value126320
  static final MediaTypeCode value126320 = MediaTypeCode._(
    '126320',
  );

  /// value126321
  static final MediaTypeCode value126321 = MediaTypeCode._(
    '126321',
  );

  /// value126322
  static final MediaTypeCode value126322 = MediaTypeCode._(
    '126322',
  );

  /// value126330
  static final MediaTypeCode value126330 = MediaTypeCode._(
    '126330',
  );

  /// value126331
  static final MediaTypeCode value126331 = MediaTypeCode._(
    '126331',
  );

  /// value126340
  static final MediaTypeCode value126340 = MediaTypeCode._(
    '126340',
  );

  /// value126341
  static final MediaTypeCode value126341 = MediaTypeCode._(
    '126341',
  );

  /// value126342
  static final MediaTypeCode value126342 = MediaTypeCode._(
    '126342',
  );

  /// value126343
  static final MediaTypeCode value126343 = MediaTypeCode._(
    '126343',
  );

  /// value126344
  static final MediaTypeCode value126344 = MediaTypeCode._(
    '126344',
  );

  /// value126350
  static final MediaTypeCode value126350 = MediaTypeCode._(
    '126350',
  );

  /// value126351
  static final MediaTypeCode value126351 = MediaTypeCode._(
    '126351',
  );

  /// value126352
  static final MediaTypeCode value126352 = MediaTypeCode._(
    '126352',
  );

  /// value126353
  static final MediaTypeCode value126353 = MediaTypeCode._(
    '126353',
  );

  /// value126360
  static final MediaTypeCode value126360 = MediaTypeCode._(
    '126360',
  );

  /// value126361
  static final MediaTypeCode value126361 = MediaTypeCode._(
    '126361',
  );

  /// value126362
  static final MediaTypeCode value126362 = MediaTypeCode._(
    '126362',
  );

  /// value126363
  static final MediaTypeCode value126363 = MediaTypeCode._(
    '126363',
  );

  /// value126364
  static final MediaTypeCode value126364 = MediaTypeCode._(
    '126364',
  );

  /// value126370
  static final MediaTypeCode value126370 = MediaTypeCode._(
    '126370',
  );

  /// value126371
  static final MediaTypeCode value126371 = MediaTypeCode._(
    '126371',
  );

  /// value126372
  static final MediaTypeCode value126372 = MediaTypeCode._(
    '126372',
  );

  /// value126373
  static final MediaTypeCode value126373 = MediaTypeCode._(
    '126373',
  );

  /// value126374
  static final MediaTypeCode value126374 = MediaTypeCode._(
    '126374',
  );

  /// value126375
  static final MediaTypeCode value126375 = MediaTypeCode._(
    '126375',
  );

  /// value126376
  static final MediaTypeCode value126376 = MediaTypeCode._(
    '126376',
  );

  /// value126377
  static final MediaTypeCode value126377 = MediaTypeCode._(
    '126377',
  );

  /// value126380
  static final MediaTypeCode value126380 = MediaTypeCode._(
    '126380',
  );

  /// value126390
  static final MediaTypeCode value126390 = MediaTypeCode._(
    '126390',
  );

  /// value126391
  static final MediaTypeCode value126391 = MediaTypeCode._(
    '126391',
  );

  /// value126392
  static final MediaTypeCode value126392 = MediaTypeCode._(
    '126392',
  );

  /// value126393
  static final MediaTypeCode value126393 = MediaTypeCode._(
    '126393',
  );

  /// value126394
  static final MediaTypeCode value126394 = MediaTypeCode._(
    '126394',
  );

  /// value126400
  static final MediaTypeCode value126400 = MediaTypeCode._(
    '126400',
  );

  /// value126401
  static final MediaTypeCode value126401 = MediaTypeCode._(
    '126401',
  );

  /// value126402
  static final MediaTypeCode value126402 = MediaTypeCode._(
    '126402',
  );

  /// value126403
  static final MediaTypeCode value126403 = MediaTypeCode._(
    '126403',
  );

  /// value126404
  static final MediaTypeCode value126404 = MediaTypeCode._(
    '126404',
  );

  /// value126410
  static final MediaTypeCode value126410 = MediaTypeCode._(
    '126410',
  );

  /// value126411
  static final MediaTypeCode value126411 = MediaTypeCode._(
    '126411',
  );

  /// value126412
  static final MediaTypeCode value126412 = MediaTypeCode._(
    '126412',
  );

  /// value126413
  static final MediaTypeCode value126413 = MediaTypeCode._(
    '126413',
  );

  /// value126500
  static final MediaTypeCode value126500 = MediaTypeCode._(
    '126500',
  );

  /// value126501
  static final MediaTypeCode value126501 = MediaTypeCode._(
    '126501',
  );

  /// value126502
  static final MediaTypeCode value126502 = MediaTypeCode._(
    '126502',
  );

  /// value126503
  static final MediaTypeCode value126503 = MediaTypeCode._(
    '126503',
  );

  /// value126510
  static final MediaTypeCode value126510 = MediaTypeCode._(
    '126510',
  );

  /// value126511
  static final MediaTypeCode value126511 = MediaTypeCode._(
    '126511',
  );

  /// value126512
  static final MediaTypeCode value126512 = MediaTypeCode._(
    '126512',
  );

  /// value126513
  static final MediaTypeCode value126513 = MediaTypeCode._(
    '126513',
  );

  /// value126514
  static final MediaTypeCode value126514 = MediaTypeCode._(
    '126514',
  );

  /// value126515
  static final MediaTypeCode value126515 = MediaTypeCode._(
    '126515',
  );

  /// value126516
  static final MediaTypeCode value126516 = MediaTypeCode._(
    '126516',
  );

  /// value126517
  static final MediaTypeCode value126517 = MediaTypeCode._(
    '126517',
  );

  /// value126518
  static final MediaTypeCode value126518 = MediaTypeCode._(
    '126518',
  );

  /// value126519
  static final MediaTypeCode value126519 = MediaTypeCode._(
    '126519',
  );

  /// value126520
  static final MediaTypeCode value126520 = MediaTypeCode._(
    '126520',
  );

  /// value126600
  static final MediaTypeCode value126600 = MediaTypeCode._(
    '126600',
  );

  /// value126601
  static final MediaTypeCode value126601 = MediaTypeCode._(
    '126601',
  );

  /// value126602
  static final MediaTypeCode value126602 = MediaTypeCode._(
    '126602',
  );

  /// value126603
  static final MediaTypeCode value126603 = MediaTypeCode._(
    '126603',
  );

  /// value126604
  static final MediaTypeCode value126604 = MediaTypeCode._(
    '126604',
  );

  /// value126605
  static final MediaTypeCode value126605 = MediaTypeCode._(
    '126605',
  );

  /// value126606
  static final MediaTypeCode value126606 = MediaTypeCode._(
    '126606',
  );

  /// value126700
  static final MediaTypeCode value126700 = MediaTypeCode._(
    '126700',
  );

  /// value126701
  static final MediaTypeCode value126701 = MediaTypeCode._(
    '126701',
  );

  /// value126702
  static final MediaTypeCode value126702 = MediaTypeCode._(
    '126702',
  );

  /// value126703
  static final MediaTypeCode value126703 = MediaTypeCode._(
    '126703',
  );

  /// value126704
  static final MediaTypeCode value126704 = MediaTypeCode._(
    '126704',
  );

  /// value126705
  static final MediaTypeCode value126705 = MediaTypeCode._(
    '126705',
  );

  /// value126706
  static final MediaTypeCode value126706 = MediaTypeCode._(
    '126706',
  );

  /// value126707
  static final MediaTypeCode value126707 = MediaTypeCode._(
    '126707',
  );

  /// value126708
  static final MediaTypeCode value126708 = MediaTypeCode._(
    '126708',
  );

  /// value126709
  static final MediaTypeCode value126709 = MediaTypeCode._(
    '126709',
  );

  /// value126710
  static final MediaTypeCode value126710 = MediaTypeCode._(
    '126710',
  );

  /// value126711
  static final MediaTypeCode value126711 = MediaTypeCode._(
    '126711',
  );

  /// value126712
  static final MediaTypeCode value126712 = MediaTypeCode._(
    '126712',
  );

  /// value126713
  static final MediaTypeCode value126713 = MediaTypeCode._(
    '126713',
  );

  /// value126714
  static final MediaTypeCode value126714 = MediaTypeCode._(
    '126714',
  );

  /// value126715
  static final MediaTypeCode value126715 = MediaTypeCode._(
    '126715',
  );

  /// value126716
  static final MediaTypeCode value126716 = MediaTypeCode._(
    '126716',
  );

  /// value126801
  static final MediaTypeCode value126801 = MediaTypeCode._(
    '126801',
  );

  /// value126802
  static final MediaTypeCode value126802 = MediaTypeCode._(
    '126802',
  );

  /// value126803
  static final MediaTypeCode value126803 = MediaTypeCode._(
    '126803',
  );

  /// value126804
  static final MediaTypeCode value126804 = MediaTypeCode._(
    '126804',
  );

  /// value126805
  static final MediaTypeCode value126805 = MediaTypeCode._(
    '126805',
  );

  /// value126806
  static final MediaTypeCode value126806 = MediaTypeCode._(
    '126806',
  );

  /// value126807
  static final MediaTypeCode value126807 = MediaTypeCode._(
    '126807',
  );

  /// value126808
  static final MediaTypeCode value126808 = MediaTypeCode._(
    '126808',
  );

  /// value126809
  static final MediaTypeCode value126809 = MediaTypeCode._(
    '126809',
  );

  /// value126810
  static final MediaTypeCode value126810 = MediaTypeCode._(
    '126810',
  );

  /// value126811
  static final MediaTypeCode value126811 = MediaTypeCode._(
    '126811',
  );

  /// For instances where an Element is present but not value

  static final MediaTypeCode elementOnly = MediaTypeCode._('');

  /// List of all enum-like values
  static final List<MediaTypeCode> values = [
    ARCHIVE,
    AR,
    AS,
    AU,
    BDUS,
    BI,
    BMD,
    CAD,
    CAPTURE,
    CD,
    CF,
    COMP,
    CP,
    CR,
    CS,
    CT,
    DD,
    DF,
    DG,
    DM,
    DOCD,
    DS,
    DSS,
    DX,
    EC,
    ECG,
    EPS,
    ES,
    F,
    FA,
    FC,
    FILMD,
    FP,
    FS,
    GM,
    H,
    HC,
    HD,
    IO,
    IVOCT,
    IVUS,
    KER,
    KO,
    LEN,
    LOG,
    LP,
    LS,
    M,
    MA,
    MC,
    MCD,
    MEDIM,
    MG,
    MP,
    MR,
    MS,
    NEARLINE,
    NM,
    OAM,
    OCT,
    OFFLINE,
    ONLINE,
    OP,
    OPM,
    OPR,
    OPT,
    OPV,
    OSS,
    OT,
    PR,
    PRINT,
    PT,
    PX,
    REG,
    RF,
    RG,
    RT,
    RTDOSE,
    RTIMAGE,
    RTPLAN,
    RTRECORD,
    RTSTRUCT,
    SEG,
    SM,
    SMR,
    SR,
    SRF,
    ST,
    TG,
    U,
    UNAVAILABLE,
    US,
    VA,
    VF,
    VIDD,
    WSD,
    XA,
    XC,
    value109001,
    value109002,
    value109003,
    value109004,
    value109005,
    value109006,
    value109007,
    value109008,
    value109009,
    value109010,
    value109011,
    value109012,
    value109013,
    value109014,
    value109015,
    value109016,
    value109017,
    value109018,
    value109019,
    value109020,
    value109021,
    value109022,
    value109023,
    value109024,
    value109025,
    value109026,
    value109027,
    value109028,
    value109029,
    value109030,
    value109031,
    value109032,
    value109033,
    value109034,
    value109035,
    value109036,
    value109037,
    value109038,
    value109039,
    value109040,
    value109041,
    value109042,
    value109043,
    value109044,
    value109045,
    value109046,
    value109047,
    value109048,
    value109049,
    value109050,
    value109051,
    value109052,
    value109053,
    value109054,
    value109055,
    value109056,
    value109057,
    value109058,
    value109059,
    value109060,
    value109061,
    value109063,
    value109070,
    value109071,
    value109072,
    value109073,
    value109080,
    value109081,
    value109082,
    value109083,
    value109091,
    value109092,
    value109093,
    value109094,
    value109095,
    value109096,
    value109101,
    value109102,
    value109103,
    value109104,
    value109105,
    value109106,
    value109110,
    value109111,
    value109112,
    value109113,
    value109114,
    value109115,
    value109116,
    value109117,
    value109120,
    value109121,
    value109122,
    value109123,
    value109124,
    value109125,
    value109132,
    value109133,
    value109134,
    value109135,
    value109136,
    value109200,
    value109201,
    value109202,
    value109203,
    value109204,
    value109205,
    value109206,
    value109207,
    value109208,
    value109209,
    value109210,
    value109211,
    value109212,
    value109213,
    value109214,
    value109215,
    value109216,
    value109217,
    value109218,
    value109219,
    value109220,
    value109221,
    value109222,
    value109701,
    value109702,
    value109703,
    value109704,
    value109705,
    value109706,
    value109707,
    value109708,
    value109709,
    value109710,
    value109801,
    value109802,
    value109803,
    value109804,
    value109805,
    value109806,
    value109807,
    value109808,
    value109809,
    value109810,
    value109811,
    value109812,
    value109813,
    value109814,
    value109815,
    value109816,
    value109817,
    value109818,
    value109819,
    value109820,
    value109821,
    value109822,
    value109823,
    value109824,
    value109825,
    value109826,
    value109827,
    value109828,
    value109829,
    value109830,
    value109831,
    value109832,
    value109833,
    value109834,
    value109835,
    value109836,
    value109837,
    value109838,
    value109839,
    value109840,
    value109841,
    value109842,
    value109843,
    value109844,
    value109845,
    value109846,
    value109847,
    value109848,
    value109849,
    value109850,
    value109851,
    value109852,
    value109853,
    value109854,
    value109855,
    value109856,
    value109857,
    value109858,
    value109859,
    value109860,
    value109861,
    value109862,
    value109863,
    value109864,
    value109865,
    value109866,
    value109867,
    value109868,
    value109869,
    value109870,
    value109871,
    value109872,
    value109873,
    value109874,
    value109875,
    value109876,
    value109877,
    value109878,
    value109879,
    value109880,
    value109881,
    value109901,
    value109902,
    value109903,
    value109904,
    value109905,
    value109906,
    value109907,
    value109908,
    value109909,
    value109910,
    value109911,
    value109912,
    value109913,
    value109914,
    value109915,
    value109916,
    value109917,
    value109918,
    value109919,
    value109920,
    value109921,
    value109931,
    value109932,
    value109933,
    value109941,
    value109943,
    value109991,
    value109992,
    value109993,
    value109994,
    value109995,
    value109996,
    value109997,
    value109998,
    value109999,
    value110001,
    value110002,
    value110003,
    value110004,
    value110005,
    value110006,
    value110007,
    value110008,
    value110009,
    value110010,
    value110011,
    value110012,
    value110013,
    value110020,
    value110021,
    value110022,
    value110023,
    value110024,
    value110025,
    value110026,
    value110027,
    value110028,
    value110030,
    value110031,
    value110032,
    value110033,
    value110034,
    value110035,
    value110036,
    value110037,
    value110038,
    value110100,
    value110101,
    value110102,
    value110103,
    value110104,
    value110105,
    value110106,
    value110107,
    value110108,
    value110109,
    value110110,
    value110111,
    value110112,
    value110113,
    value110114,
    value110120,
    value110121,
    value110122,
    value110123,
    value110124,
    value110125,
    value110126,
    value110127,
    value110128,
    value110129,
    value110130,
    value110131,
    value110132,
    value110133,
    value110134,
    value110135,
    value110136,
    value110137,
    value110138,
    value110139,
    value110140,
    value110141,
    value110142,
    value110150,
    value110151,
    value110152,
    value110153,
    value110154,
    value110155,
    value110180,
    value110181,
    value110182,
    value110190,
    value110500,
    value110501,
    value110502,
    value110503,
    value110504,
    value110505,
    value110506,
    value110507,
    value110508,
    value110509,
    value110510,
    value110511,
    value110512,
    value110513,
    value110514,
    value110515,
    value110516,
    value110518,
    value110519,
    value110521,
    value110522,
    value110523,
    value110524,
    value110526,
    value110527,
    value110528,
    value110529,
    value110700,
    value110701,
    value110702,
    value110703,
    value110704,
    value110705,
    value110706,
    value110800,
    value110801,
    value110802,
    value110803,
    value110804,
    value110805,
    value110806,
    value110807,
    value110808,
    value110809,
    value110810,
    value110811,
    value110812,
    value110813,
    value110814,
    value110815,
    value110816,
    value110817,
    value110818,
    value110819,
    value110820,
    value110821,
    value110822,
    value110823,
    value110824,
    value110825,
    value110826,
    value110827,
    value110828,
    value110829,
    value110830,
    value110831,
    value110832,
    value110833,
    value110834,
    value110835,
    value110836,
    value110837,
    value110838,
    value110839,
    value110840,
    value110841,
    value110842,
    value110843,
    value110844,
    value110845,
    value110846,
    value110847,
    value110848,
    value110849,
    value110850,
    value110851,
    value110852,
    value110853,
    value110854,
    value110855,
    value110856,
    value110857,
    value110858,
    value110859,
    value110860,
    value110861,
    value110862,
    value110863,
    value110864,
    value110865,
    value110866,
    value110867,
    value110868,
    value110869,
    value110870,
    value110871,
    value110872,
    value110873,
    value110874,
    value110875,
    value110876,
    value110877,
    value110901,
    value110902,
    value110903,
    value110904,
    value110905,
    value110906,
    value110907,
    value110908,
    value110909,
    value110910,
    value110911,
    value111001,
    value111002,
    value111003,
    value111004,
    value111005,
    value111006,
    value111007,
    value111008,
    value111009,
    value111010,
    value111011,
    value111012,
    value111013,
    value111014,
    value111015,
    value111016,
    value111017,
    value111018,
    value111019,
    value111020,
    value111021,
    value111022,
    value111023,
    value111024,
    value111025,
    value111026,
    value111027,
    value111028,
    value111029,
    value111030,
    value111031,
    value111032,
    value111033,
    value111034,
    value111035,
    value111036,
    value111037,
    value111038,
    value111039,
    value111040,
    value111041,
    value111042,
    value111043,
    value111044,
    value111045,
    value111046,
    value111047,
    value111048,
    value111049,
    value111050,
    value111051,
    value111052,
    value111053,
    value111054,
    value111055,
    value111056,
    value111057,
    value111058,
    value111059,
    value111060,
    value111061,
    value111062,
    value111063,
    value111064,
    value111065,
    value111066,
    value111069,
    value111071,
    value111072,
    value111081,
    value111086,
    value111087,
    value111088,
    value111089,
    value111090,
    value111091,
    value111092,
    value111093,
    value111099,
    value111100,
    value111101,
    value111102,
    value111103,
    value111104,
    value111105,
    value111111,
    value111112,
    value111113,
    value111120,
    value111121,
    value111122,
    value111123,
    value111124,
    value111125,
    value111126,
    value111127,
    value111128,
    value111129,
    value111130,
    value111135,
    value111136,
    value111137,
    value111138,
    value111139,
    value111140,
    value111141,
    value111142,
    value111143,
    value111144,
    value111145,
    value111146,
    value111147,
    value111148,
    value111149,
    value111150,
    value111151,
    value111152,
    value111153,
    value111154,
    value111155,
    value111156,
    value111157,
    value111158,
    value111159,
    value111168,
    value111170,
    value111171,
    value111172,
    value111173,
    value111174,
    value111175,
    value111176,
    value111177,
    value111178,
    value111179,
    value111180,
    value111181,
    value111182,
    value111183,
    value111184,
    value111185,
    value111186,
    value111187,
    value111188,
    value111189,
    value111190,
    value111191,
    value111192,
    value111193,
    value111194,
    value111195,
    value111196,
    value111197,
    value111198,
    value111199,
    value111200,
    value111201,
    value111202,
    value111203,
    value111204,
    value111205,
    value111206,
    value111207,
    value111208,
    value111209,
    value111210,
    value111211,
    value111212,
    value111213,
    value111214,
    value111215,
    value111216,
    value111217,
    value111218,
    value111219,
    value111220,
    value111221,
    value111222,
    value111223,
    value111224,
    value111225,
    value111233,
    value111234,
    value111235,
    value111236,
    value111237,
    value111238,
    value111239,
    value111240,
    value111241,
    value111242,
    value111243,
    value111244,
    value111245,
    value111248,
    value111249,
    value111250,
    value111251,
    value111252,
    value111253,
    value111254,
    value111255,
    value111256,
    value111257,
    value111258,
    value111259,
    value111260,
    value111262,
    value111263,
    value111264,
    value111265,
    value111269,
    value111271,
    value111273,
    value111277,
    value111278,
    value111279,
    value111281,
    value111283,
    value111284,
    value111285,
    value111286,
    value111287,
    value111288,
    value111290,
    value111291,
    value111292,
    value111293,
    value111294,
    value111296,
    value111297,
    value111298,
    value111299,
    value111300,
    value111301,
    value111302,
    value111303,
    value111304,
    value111305,
    value111306,
    value111307,
    value111308,
    value111309,
    value111310,
    value111311,
    value111312,
    value111313,
    value111314,
    value111315,
    value111316,
    value111317,
    value111318,
    value111320,
    value111321,
    value111322,
    value111323,
    value111324,
    value111325,
    value111326,
    value111327,
    value111328,
    value111329,
    value111330,
    value111331,
    value111332,
    value111333,
    value111334,
    value111335,
    value111336,
    value111338,
    value111340,
    value111341,
    value111342,
    value111343,
    value111344,
    value111345,
    value111346,
    value111347,
    value111350,
    value111351,
    value111352,
    value111353,
    value111354,
    value111355,
    value111356,
    value111357,
    value111358,
    value111359,
    value111360,
    value111361,
    value111362,
    value111363,
    value111364,
    value111365,
    value111366,
    value111367,
    value111368,
    value111369,
    value111370,
    value111371,
    value111372,
    value111373,
    value111374,
    value111375,
    value111376,
    value111377,
    value111380,
    value111381,
    value111382,
    value111383,
    value111384,
    value111385,
    value111386,
    value111387,
    value111388,
    value111389,
    value111390,
    value111391,
    value111392,
    value111393,
    value111394,
    value111395,
    value111396,
    value111397,
    value111398,
    value111399,
    value111400,
    value111401,
    value111402,
    value111403,
    value111404,
    value111405,
    value111406,
    value111407,
    value111408,
    value111409,
    value111410,
    value111411,
    value111412,
    value111413,
    value111414,
    value111415,
    value111416,
    value111417,
    value111418,
    value111419,
    value111420,
    value111421,
    value111423,
    value111424,
    value111425,
    value111426,
    value111427,
    value111428,
    value111429,
    value111430,
    value111431,
    value111432,
    value111433,
    value111434,
    value111435,
    value111436,
    value111437,
    value111438,
    value111439,
    value111440,
    value111441,
    value111442,
    value111443,
    value111444,
    value111445,
    value111446,
    value111447,
    value111448,
    value111449,
    value111450,
    value111451,
    value111452,
    value111453,
    value111454,
    value111455,
    value111456,
    value111457,
    value111458,
    value111459,
    value111460,
    value111461,
    value111462,
    value111463,
    value111464,
    value111465,
    value111466,
    value111467,
    value111468,
    value111469,
    value111470,
    value111471,
    value111472,
    value111473,
    value111474,
    value111475,
    value111476,
    value111477,
    value111478,
    value111479,
    value111480,
    value111481,
    value111482,
    value111483,
    value111484,
    value111485,
    value111486,
    value111487,
    value111488,
    value111489,
    value111490,
    value111491,
    value111492,
    value111494,
    value111495,
    value111496,
    value111497,
    value111498,
    value111499,
    value111500,
    value111501,
    value111502,
    value111503,
    value111504,
    value111505,
    value111506,
    value111507,
    value111508,
    value111509,
    value111510,
    value111511,
    value111512,
    value111513,
    value111514,
    value111515,
    value111516,
    value111517,
    value111518,
    value111519,
    value111520,
    value111521,
    value111522,
    value111523,
    value111524,
    value111525,
    value111526,
    value111527,
    value111528,
    value111529,
    value111530,
    value111531,
    value111532,
    value111533,
    value111534,
    value111535,
    value111536,
    value111537,
    value111538,
    value111539,
    value111540,
    value111541,
    value111542,
    value111543,
    value111544,
    value111545,
    value111546,
    value111547,
    value111548,
    value111549,
    value111550,
    value111551,
    value111552,
    value111553,
    value111554,
    value111555,
    value111556,
    value111557,
    value111558,
    value111559,
    value111560,
    value111561,
    value111562,
    value111563,
    value111564,
    value111565,
    value111566,
    value111567,
    value111568,
    value111569,
    value111570,
    value111571,
    value111572,
    value111573,
    value111574,
    value111575,
    value111576,
    value111577,
    value111578,
    value111579,
    value111580,
    value111581,
    value111582,
    value111583,
    value111584,
    value111585,
    value111586,
    value111587,
    value111590,
    value111591,
    value111592,
    value111593,
    value111601,
    value111602,
    value111603,
    value111604,
    value111605,
    value111606,
    value111607,
    value111609,
    value111621,
    value111622,
    value111623,
    value111625,
    value111626,
    value111627,
    value111628,
    value111629,
    value111630,
    value111631,
    value111632,
    value111633,
    value111634,
    value111635,
    value111636,
    value111637,
    value111638,
    value111641,
    value111642,
    value111643,
    value111644,
    value111645,
    value111646,
    value111671,
    value111672,
    value111673,
    value111674,
    value111675,
    value111676,
    value111677,
    value111678,
    value111679,
    value111680,
    value111685,
    value111686,
    value111687,
    value111688,
    value111689,
    value111690,
    value111691,
    value111692,
    value111693,
    value111694,
    value111695,
    value111696,
    value111697,
    value111698,
    value111700,
    value111701,
    value111702,
    value111703,
    value111704,
    value111705,
    value111706,
    value111707,
    value111708,
    value111709,
    value111710,
    value111711,
    value111712,
    value111718,
    value111719,
    value111720,
    value111721,
    value111723,
    value111724,
    value111726,
    value111727,
    value111729,
    value111741,
    value111742,
    value111743,
    value111744,
    value111745,
    value111746,
    value111747,
    value111748,
    value111749,
    value111750,
    value111751,
    value111752,
    value111753,
    value111754,
    value111755,
    value111756,
    value111760,
    value111761,
    value111762,
    value111763,
    value111764,
    value111765,
    value111766,
    value111767,
    value111768,
    value111769,
    value111770,
    value111771,
    value111772,
    value111773,
    value111776,
    value111777,
    value111778,
    value111779,
    value111780,
    value111781,
    value111782,
    value111783,
    value111786,
    value111787,
    value111791,
    value111792,
    value111800,
    value111801,
    value111802,
    value111803,
    value111804,
    value111805,
    value111806,
    value111807,
    value111808,
    value111809,
    value111810,
    value111811,
    value111812,
    value111813,
    value111814,
    value111815,
    value111816,
    value111817,
    value111818,
    value111819,
    value111820,
    value111821,
    value111822,
    value111823,
    value111824,
    value111825,
    value111826,
    value111827,
    value111828,
    value111829,
    value111830,
    value111831,
    value111832,
    value111833,
    value111834,
    value111835,
    value111836,
    value111837,
    value111838,
    value111839,
    value111840,
    value111841,
    value111842,
    value111843,
    value111844,
    value111845,
    value111846,
    value111847,
    value111848,
    value111849,
    value111850,
    value111851,
    value111852,
    value111853,
    value111854,
    value111855,
    value111856,
    value111900,
    value111901,
    value111902,
    value111903,
    value111904,
    value111905,
    value111906,
    value111907,
    value111908,
    value111909,
    value111910,
    value111911,
    value111912,
    value111913,
    value111914,
    value111915,
    value111916,
    value111917,
    value111918,
    value111919,
    value111920,
    value111921,
    value111922,
    value111923,
    value111924,
    value111925,
    value111926,
    value111927,
    value111928,
    value111929,
    value111930,
    value111931,
    value111932,
    value111933,
    value111934,
    value111935,
    value111936,
    value111937,
    value111938,
    value111939,
    value111940,
    value111941,
    value111942,
    value111943,
    value111944,
    value111945,
    value111946,
    value111947,
    value112000,
    value112001,
    value112002,
    value112003,
    value112004,
    value112005,
    value112006,
    value112007,
    value112008,
    value112009,
    value112010,
    value112011,
    value112012,
    value112013,
    value112014,
    value112015,
    value112016,
    value112017,
    value112018,
    value112019,
    value112020,
    value112021,
    value112022,
    value112023,
    value112024,
    value112025,
    value112026,
    value112027,
    value112028,
    value112029,
    value112030,
    value112031,
    value112032,
    value112033,
    value112034,
    value112035,
    value112036,
    value112037,
    value112038,
    value112039,
    value112040,
    value112041,
    value112042,
    value112043,
    value112044,
    value112045,
    value112046,
    value112047,
    value112048,
    value112049,
    value112050,
    value112051,
    value112052,
    value112053,
    value112054,
    value112055,
    value112056,
    value112057,
    value112058,
    value112059,
    value112060,
    value112061,
    value112062,
    value112063,
    value112064,
    value112065,
    value112066,
    value112067,
    value112068,
    value112069,
    value112070,
    value112071,
    value112072,
    value112073,
    value112074,
    value112075,
    value112076,
    value112077,
    value112078,
    value112079,
    value112080,
    value112081,
    value112082,
    value112083,
    value112084,
    value112085,
    value112086,
    value112087,
    value112088,
    value112089,
    value112090,
    value112091,
    value112092,
    value112093,
    value112094,
    value112095,
    value112096,
    value112097,
    value112098,
    value112099,
    value112100,
    value112101,
    value112102,
    value112103,
    value112104,
    value112105,
    value112106,
    value112107,
    value112108,
    value112109,
    value112110,
    value112111,
    value112112,
    value112113,
    value112114,
    value112115,
    value112116,
    value112117,
    value112118,
    value112119,
    value112120,
    value112121,
    value112122,
    value112123,
    value112124,
    value112125,
    value112126,
    value112127,
    value112128,
    value112129,
    value112130,
    value112131,
    value112132,
    value112133,
    value112134,
    value112135,
    value112136,
    value112137,
    value112138,
    value112139,
    value112140,
    value112141,
    value112142,
    value112143,
    value112144,
    value112145,
    value112146,
    value112147,
    value112148,
    value112149,
    value112150,
    value112151,
    value112152,
    value112153,
    value112154,
    value112155,
    value112156,
    value112157,
    value112158,
    value112159,
    value112160,
    value112161,
    value112162,
    value112163,
    value112164,
    value112165,
    value112166,
    value112167,
    value112168,
    value112169,
    value112170,
    value112171,
    value112172,
    value112173,
    value112174,
    value112175,
    value112176,
    value112177,
    value112178,
    value112179,
    value112180,
    value112181,
    value112182,
    value112183,
    value112184,
    value112185,
    value112186,
    value112187,
    value112188,
    value112189,
    value112191,
    value112192,
    value112193,
    value112194,
    value112195,
    value112196,
    value112197,
    value112198,
    value112199,
    value112200,
    value112201,
    value112220,
    value112222,
    value112224,
    value112225,
    value112226,
    value112227,
    value112228,
    value112229,
    value112232,
    value112233,
    value112238,
    value112240,
    value112241,
    value112242,
    value112243,
    value112244,
    value112248,
    value112249,
    value112300,
    value112301,
    value112302,
    value112303,
    value112304,
    value112305,
    value112306,
    value112307,
    value112308,
    value112309,
    value112310,
    value112311,
    value112312,
    value112313,
    value112314,
    value112315,
    value112316,
    value112317,
    value112318,
    value112319,
    value112320,
    value112321,
    value112325,
    value112340,
    value112341,
    value112342,
    value112343,
    value112344,
    value112345,
    value112346,
    value112347,
    value112348,
    value112350,
    value112351,
    value112352,
    value112353,
    value112354,
    value112355,
    value112356,
    value112357,
    value112358,
    value112359,
    value112360,
    value112361,
    value112362,
    value112363,
    value112364,
    value112365,
    value112366,
    value112367,
    value112368,
    value112369,
    value112370,
    value112371,
    value112372,
    value112373,
    value112374,
    value112375,
    value112376,
    value112377,
    value112378,
    value112379,
    value112380,
    value112381,
    value112700,
    value112701,
    value112702,
    value112703,
    value112704,
    value112705,
    value112706,
    value112707,
    value112708,
    value112709,
    value112710,
    value112711,
    value112712,
    value112713,
    value112714,
    value112715,
    value112716,
    value112717,
    value112718,
    value112719,
    value112720,
    value112721,
    value113000,
    value113001,
    value113002,
    value113003,
    value113004,
    value113005,
    value113006,
    value113007,
    value113008,
    value113009,
    value113010,
    value113011,
    value113012,
    value113013,
    value113014,
    value113015,
    value113016,
    value113017,
    value113018,
    value113020,
    value113021,
    value113026,
    value113030,
    value113031,
    value113032,
    value113033,
    value113034,
    value113035,
    value113036,
    value113037,
    value113038,
    value113039,
    value113040,
    value113041,
    value113042,
    value113043,
    value113044,
    value113045,
    value113046,
    value113047,
    value113048,
    value113049,
    value113050,
    value113051,
    value113052,
    value113053,
    value113054,
    value113055,
    value113056,
    value113057,
    value113058,
    value113059,
    value113060,
    value113061,
    value113062,
    value113063,
    value113064,
    value113065,
    value113066,
    value113067,
    value113068,
    value113069,
    value113070,
    value113071,
    value113072,
    value113073,
    value113074,
    value113075,
    value113076,
    value113077,
    value113078,
    value113079,
    value113080,
    value113081,
    value113082,
    value113083,
    value113085,
    value113086,
    value113087,
    value113088,
    value113089,
    value113090,
    value113091,
    value113092,
    value113093,
    value113094,
    value113095,
    value113096,
    value113097,
    value113100,
    value113101,
    value113102,
    value113103,
    value113104,
    value113105,
    value113106,
    value113107,
    value113108,
    value113109,
    value113110,
    value113111,
    value113500,
    value113502,
    value113503,
    value113505,
    value113506,
    value113507,
    value113508,
    value113509,
    value113510,
    value113511,
    value113512,
    value113513,
    value113514,
    value113516,
    value113517,
    value113518,
    value113520,
    value113521,
    value113522,
    value113523,
    value113526,
    value113527,
    value113528,
    value113529,
    value113530,
    value113540,
    value113541,
    value113542,
    value113543,
    value113550,
    value113551,
    value113552,
    value113560,
    value113561,
    value113562,
    value113563,
    value113568,
    value113570,
    value113571,
    value113572,
    value113573,
    value113574,
    value113575,
    value113576,
    value113577,
    value113601,
    value113602,
    value113603,
    value113605,
    value113606,
    value113607,
    value113608,
    value113609,
    value113611,
    value113612,
    value113613,
    value113620,
    value113621,
    value113622,
    value113630,
    value113631,
    value113650,
    value113651,
    value113652,
    value113653,
    value113661,
    value113662,
    value113663,
    value113664,
    value113665,
    value113666,
    value113669,
    value113670,
    value113671,
    value113680,
    value113681,
    value113682,
    value113683,
    value113684,
    value113685,
    value113686,
    value113687,
    value113688,
    value113689,
    value113690,
    value113691,
    value113692,
    value113701,
    value113702,
    value113704,
    value113705,
    value113706,
    value113710,
    value113711,
    value113720,
    value113721,
    value113722,
    value113723,
    value113724,
    value113725,
    value113726,
    value113727,
    value113728,
    value113729,
    value113730,
    value113731,
    value113732,
    value113733,
    value113734,
    value113735,
    value113736,
    value113737,
    value113738,
    value113739,
    value113740,
    value113742,
    value113743,
    value113744,
    value113745,
    value113748,
    value113750,
    value113751,
    value113752,
    value113753,
    value113754,
    value113755,
    value113756,
    value113757,
    value113758,
    value113759,
    value113760,
    value113761,
    value113763,
    value113764,
    value113766,
    value113767,
    value113768,
    value113769,
    value113770,
    value113771,
    value113772,
    value113773,
    value113780,
    value113788,
    value113789,
    value113790,
    value113791,
    value113792,
    value113793,
    value113794,
    value113795,
    value113800,
    value113801,
    value113802,
    value113803,
    value113804,
    value113805,
    value113806,
    value113807,
    value113808,
    value113809,
    value113810,
    value113811,
    value113812,
    value113813,
    value113814,
    value113815,
    value113816,
    value113817,
    value113818,
    value113819,
    value113820,
    value113821,
    value113822,
    value113823,
    value113824,
    value113825,
    value113826,
    value113827,
    value113828,
    value113829,
    value113830,
    value113831,
    value113832,
    value113833,
    value113834,
    value113835,
    value113836,
    value113837,
    value113838,
    value113839,
    value113840,
    value113841,
    value113842,
    value113845,
    value113846,
    value113847,
    value113850,
    value113851,
    value113852,
    value113853,
    value113854,
    value113855,
    value113856,
    value113857,
    value113858,
    value113859,
    value113860,
    value113861,
    value113862,
    value113863,
    value113864,
    value113865,
    value113866,
    value113867,
    value113868,
    value113870,
    value113871,
    value113872,
    value113873,
    value113874,
    value113875,
    value113876,
    value113877,
    value113878,
    value113879,
    value113880,
    value113890,
    value113893,
    value113895,
    value113896,
    value113897,
    value113898,
    value113899,
    value113900,
    value113901,
    value113902,
    value113903,
    value113904,
    value113905,
    value113906,
    value113907,
    value113908,
    value113909,
    value113910,
    value113911,
    value113912,
    value113913,
    value113914,
    value113921,
    value113922,
    value113923,
    value113930,
    value113931,
    value113932,
    value113933,
    value113934,
    value113935,
    value113936,
    value113937,
    value113940,
    value113941,
    value113942,
    value113943,
    value113944,
    value113945,
    value113946,
    value113947,
    value113948,
    value113949,
    value113950,
    value113951,
    value113952,
    value113953,
    value113954,
    value113955,
    value113956,
    value113957,
    value113958,
    value113959,
    value113961,
    value113962,
    value113963,
    value113970,
    value114000,
    value114001,
    value114002,
    value114003,
    value114004,
    value114005,
    value114006,
    value114007,
    value114008,
    value114009,
    value114010,
    value114011,
    value114201,
    value114202,
    value114203,
    value114204,
    value114205,
    value114206,
    value114207,
    value114208,
    value114209,
    value114210,
    value114211,
    value114213,
    value114215,
    value114216,
    value121001,
    value121002,
    value121003,
    value121004,
    value121005,
    value121006,
    value121007,
    value121008,
    value121009,
    value121010,
    value121011,
    value121012,
    value121013,
    value121014,
    value121015,
    value121016,
    value121017,
    value121018,
    value121019,
    value121020,
    value121021,
    value121022,
    value121023,
    value121024,
    value121025,
    value121026,
    value121027,
    value121028,
    value121029,
    value121030,
    value121031,
    value121032,
    value121033,
    value121034,
    value121035,
    value121036,
    value121037,
    value121038,
    value121039,
    value121040,
    value121041,
    value121042,
    value121043,
    value121044,
    value121045,
    value121046,
    value121047,
    value121048,
    value121049,
    value121050,
    value121051,
    value121052,
    value121053,
    value121054,
    value121055,
    value121056,
    value121057,
    value121058,
    value121059,
    value121060,
    value121062,
    value121064,
    value121065,
    value121066,
    value121068,
    value121069,
    value121070,
    value121071,
    value121072,
    value121073,
    value121074,
    value121075,
    value121076,
    value121077,
    value121078,
    value121079,
    value121080,
    value121081,
    value121082,
    value121083,
    value121084,
    value121085,
    value121086,
    value121087,
    value121088,
    value121089,
    value121090,
    value121091,
    value121092,
    value121093,
    value121094,
    value121095,
    value121096,
    value121097,
    value121098,
    value121099,
    value121100,
    value121101,
    value121102,
    value121103,
    value121104,
    value121105,
    value121106,
    value121109,
    value121110,
    value121111,
    value121112,
    value121113,
    value121114,
    value121115,
    value121116,
    value121117,
    value121118,
    value121120,
    value121121,
    value121122,
    value121123,
    value121124,
    value121125,
    value121126,
    value121127,
    value121128,
    value121130,
    value121131,
    value121132,
    value121133,
    value121135,
    value121136,
    value121137,
    value121138,
    value121139,
    value121140,
    value121141,
    value121142,
    value121143,
    value121144,
    value121145,
    value121146,
    value121147,
    value121148,
    value121149,
    value121150,
    value121151,
    value121152,
    value121153,
    value121154,
    value121155,
    value121156,
    value121157,
    value121158,
    value121160,
    value121161,
    value121162,
    value121163,
    value121165,
    value121166,
    value121167,
    value121168,
    value121169,
    value121171,
    value121172,
    value121173,
    value121174,
    value121180,
    value121181,
    value121190,
    value121191,
    value121192,
    value121193,
    value121194,
    value121195,
    value121196,
    value121197,
    value121198,
    value121200,
    value121201,
    value121202,
    value121206,
    value121207,
    value121208,
    value121210,
    value121211,
    value121213,
    value121214,
    value121216,
    value121217,
    value121218,
    value121219,
    value121220,
    value121221,
    value121222,
    value121230,
    value121231,
    value121232,
    value121233,
    value121242,
    value121243,
    value121244,
    value121290,
    value121291,
    value121301,
    value121302,
    value121303,
    value121304,
    value121305,
    value121306,
    value121307,
    value121311,
    value121312,
    value121313,
    value121314,
    value121315,
    value121316,
    value121317,
    value121318,
    value121320,
    value121321,
    value121322,
    value121323,
    value121324,
    value121325,
    value121326,
    value121327,
    value121328,
    value121329,
    value121330,
    value121331,
    value121332,
    value121333,
    value121334,
    value121335,
    value121338,
    value121339,
    value121340,
    value121341,
    value121342,
    value121346,
    value121347,
    value121348,
    value121349,
    value121350,
    value121351,
    value121352,
    value121353,
    value121354,
    value121358,
    value121360,
    value121361,
    value121362,
    value121363,
    value121370,
    value121371,
    value121372,
    value121380,
    value121381,
    value121382,
    value121383,
    value121401,
    value121402,
    value121403,
    value121404,
    value121405,
    value121406,
    value121407,
    value121408,
    value121410,
    value121411,
    value121412,
    value121414,
    value121415,
    value121416,
    value121417,
    value121420,
    value121421,
    value121422,
    value121423,
    value121424,
    value121425,
    value121427,
    value121428,
    value121430,
    value121431,
    value121432,
    value121433,
    value121434,
    value121435,
    value121436,
    value121437,
    value121438,
    value121439,
    value121701,
    value121702,
    value121703,
    value121704,
    value121705,
    value121706,
    value121707,
    value121708,
    value121709,
    value121710,
    value121711,
    value121712,
    value121713,
    value121714,
    value121715,
    value121716,
    value121717,
    value121718,
    value121719,
    value121720,
    value121721,
    value121722,
    value121723,
    value121724,
    value121725,
    value121726,
    value121727,
    value121728,
    value121729,
    value121730,
    value121731,
    value121732,
    value121733,
    value121734,
    value121740,
    value122001,
    value122002,
    value122003,
    value122004,
    value122005,
    value122006,
    value122007,
    value122008,
    value122009,
    value122010,
    value122011,
    value122012,
    value122020,
    value122021,
    value122022,
    value122023,
    value122024,
    value122025,
    value122026,
    value122027,
    value122028,
    value122029,
    value122030,
    value122031,
    value122032,
    value122033,
    value122034,
    value122035,
    value122036,
    value122037,
    value122038,
    value122039,
    value122041,
    value122042,
    value122043,
    value122044,
    value122045,
    value122046,
    value122047,
    value122048,
    value122049,
    value122052,
    value122053,
    value122054,
    value122055,
    value122056,
    value122057,
    value122058,
    value122059,
    value122060,
    value122061,
    value122062,
    value122072,
    value122073,
    value122075,
    value122076,
    value122077,
    value122078,
    value122079,
    value122081,
    value122082,
    value122083,
    value122084,
    value122085,
    value122086,
    value122087,
    value122088,
    value122089,
    value122090,
    value122091,
    value122092,
    value122093,
    value122094,
    value122095,
    value122096,
    value122097,
    value122098,
    value122099,
    value122101,
    value122102,
    value122103,
    value122104,
    value122105,
    value122106,
    value122107,
    value122108,
    value122109,
    value122110,
    value122111,
    value122112,
    value122113,
    value122114,
    value122120,
    value122121,
    value122122,
    value122123,
    value122124,
    value122125,
    value122126,
    value122127,
    value122128,
    value122129,
    value122130,
    value122131,
    value122132,
    value122133,
    value122134,
    value122138,
    value122139,
    value122140,
    value122141,
    value122142,
    value122143,
    value122144,
    value122145,
    value122146,
    value122147,
    value122148,
    value122149,
    value122150,
    value122151,
    value122152,
    value122153,
    value122154,
    value122157,
    value122158,
    value122159,
    value122160,
    value122161,
    value122162,
    value122163,
    value122164,
    value122165,
    value122166,
    value122167,
    value122170,
    value122171,
    value122172,
    value122173,
    value122175,
    value122176,
    value122177,
    value122178,
    value122179,
    value122180,
    value122181,
    value122182,
    value122183,
    value122185,
    value122187,
    value122188,
    value122189,
    value122190,
    value122191,
    value122192,
    value122193,
    value122194,
    value122195,
    value122196,
    value122197,
    value122198,
    value122199,
    value122201,
    value122202,
    value122203,
    value122204,
    value122205,
    value122206,
    value122207,
    value122208,
    value122209,
    value122210,
    value122211,
    value122212,
    value122213,
    value122214,
    value122215,
    value122216,
    value122217,
    value122218,
    value122219,
    value122220,
    value122221,
    value122222,
    value122223,
    value122224,
    value122225,
    value122227,
    value122228,
    value122229,
    value122230,
    value122231,
    value122232,
    value122233,
    value122234,
    value122235,
    value122236,
    value122237,
    value122238,
    value122239,
    value122240,
    value122241,
    value122242,
    value122243,
    value122244,
    value122245,
    value122246,
    value122247,
    value122248,
    value122249,
    value122250,
    value122251,
    value122252,
    value122253,
    value122254,
    value122255,
    value122256,
    value122257,
    value122258,
    value122259,
    value122260,
    value122261,
    value122262,
    value122263,
    value122265,
    value122266,
    value122267,
    value122268,
    value122269,
    value122270,
    value122271,
    value122272,
    value122273,
    value122274,
    value122275,
    value122276,
    value122277,
    value122278,
    value122279,
    value122281,
    value122282,
    value122283,
    value122288,
    value122291,
    value122292,
    value122301,
    value122302,
    value122303,
    value122304,
    value122305,
    value122306,
    value122307,
    value122308,
    value122309,
    value122310,
    value122311,
    value122312,
    value122313,
    value122319,
    value122320,
    value122321,
    value122322,
    value122325,
    value122330,
    value122331,
    value122332,
    value122333,
    value122334,
    value122335,
    value122336,
    value122337,
    value122339,
    value122340,
    value122341,
    value122343,
    value122344,
    value122345,
    value122346,
    value122347,
    value122348,
    value122350,
    value122351,
    value122352,
    value122354,
    value122355,
    value122356,
    value122357,
    value122360,
    value122361,
    value122363,
    value122364,
    value122367,
    value122368,
    value122369,
    value122370,
    value122371,
    value122372,
    value122374,
    value122375,
    value122376,
    value122380,
    value122381,
    value122382,
    value122383,
    value122384,
    value122385,
    value122386,
    value122387,
    value122388,
    value122389,
    value122390,
    value122391,
    value122393,
    value122394,
    value122395,
    value122398,
    value122399,
    value122400,
    value122401,
    value122402,
    value122403,
    value122404,
    value122405,
    value122406,
    value122407,
    value122408,
    value122410,
    value122411,
    value122417,
    value122421,
    value122422,
    value122423,
    value122428,
    value122429,
    value122430,
    value122431,
    value122432,
    value122433,
    value122434,
    value122435,
    value122438,
    value122445,
    value122446,
    value122447,
    value122448,
    value122449,
    value122450,
    value122451,
    value122452,
    value122453,
    value122459,
    value122461,
    value122464,
    value122465,
    value122466,
    value122467,
    value122468,
    value122469,
    value122470,
    value122471,
    value122472,
    value122473,
    value122474,
    value122475,
    value122476,
    value122477,
    value122480,
    value122481,
    value122482,
    value122485,
    value122486,
    value122487,
    value122488,
    value122489,
    value122490,
    value122491,
    value122493,
    value122495,
    value122496,
    value122497,
    value122498,
    value122499,
    value122501,
    value122502,
    value122503,
    value122505,
    value122507,
    value122508,
    value122509,
    value122510,
    value122511,
    value122516,
    value122517,
    value122528,
    value122529,
    value122542,
    value122544,
    value122545,
    value122546,
    value122547,
    value122548,
    value122549,
    value122550,
    value122551,
    value122554,
    value122555,
    value122558,
    value122559,
    value122560,
    value122562,
    value122563,
    value122564,
    value122565,
    value122566,
    value122572,
    value122574,
    value122575,
    value122582,
    value122600,
    value122601,
    value122602,
    value122603,
    value122604,
    value122605,
    value122606,
    value122607,
    value122608,
    value122609,
    value122611,
    value122612,
    value122616,
    value122617,
    value122618,
    value122619,
    value122620,
    value122621,
    value122624,
    value122627,
    value122628,
    value122631,
    value122633,
    value122634,
    value122635,
    value122636,
    value122637,
    value122638,
    value122639,
    value122640,
    value122642,
    value122643,
    value122645,
    value122650,
    value122651,
    value122652,
    value122655,
    value122656,
    value122657,
    value122658,
    value122659,
    value122660,
    value122661,
    value122664,
    value122665,
    value122666,
    value122667,
    value122668,
    value122670,
    value122675,
    value122680,
    value122683,
    value122684,
    value122685,
    value122686,
    value122687,
    value122698,
    value122699,
    value122700,
    value122701,
    value122702,
    value122703,
    value122704,
    value122705,
    value122706,
    value122707,
    value122708,
    value122709,
    value122710,
    value122711,
    value122712,
    value122713,
    value122715,
    value122716,
    value122717,
    value122718,
    value122720,
    value122721,
    value122726,
    value122727,
    value122728,
    value122729,
    value122730,
    value122731,
    value122732,
    value122733,
    value122734,
    value122735,
    value122739,
    value122740,
    value122741,
    value122742,
    value122743,
    value122744,
    value122745,
    value122748,
    value122750,
    value122751,
    value122752,
    value122753,
    value122755,
    value122756,
    value122757,
    value122758,
    value122759,
    value122760,
    value122762,
    value122764,
    value122768,
    value122769,
    value122770,
    value122771,
    value122772,
    value122773,
    value122775,
    value122776,
    value122781,
    value122782,
    value122783,
    value122784,
    value122785,
    value122791,
    value122792,
    value122793,
    value122795,
    value122796,
    value122797,
    value122799,
    value123001,
    value123003,
    value123004,
    value123005,
    value123006,
    value123007,
    value123009,
    value123010,
    value123011,
    value123012,
    value123014,
    value123015,
    value123016,
    value123019,
    value123101,
    value123102,
    value123103,
    value123104,
    value123105,
    value123106,
    value123107,
    value123108,
    value123109,
    value123110,
    value123111,
    value125000,
    value125001,
    value125002,
    value125003,
    value125004,
    value125005,
    value125006,
    value125007,
    value125008,
    value125009,
    value125010,
    value125011,
    value125012,
    value125013,
    value125015,
    value125016,
    value125021,
    value125022,
    value125023,
    value125024,
    value125025,
    value125030,
    value125031,
    value125032,
    value125033,
    value125034,
    value125035,
    value125036,
    value125037,
    value125038,
    value125040,
    value125041,
    value125100,
    value125101,
    value125102,
    value125105,
    value125106,
    value125107,
    value125195,
    value125196,
    value125197,
    value125200,
    value125201,
    value125202,
    value125203,
    value125204,
    value125205,
    value125206,
    value125207,
    value125208,
    value125209,
    value125210,
    value125211,
    value125212,
    value125213,
    value125214,
    value125215,
    value125216,
    value125217,
    value125218,
    value125219,
    value125220,
    value125221,
    value125222,
    value125223,
    value125224,
    value125225,
    value125226,
    value125227,
    value125228,
    value125230,
    value125231,
    value125233,
    value125234,
    value125235,
    value125236,
    value125237,
    value125238,
    value125239,
    value125240,
    value125241,
    value125242,
    value125251,
    value125252,
    value125253,
    value125254,
    value125255,
    value125256,
    value125257,
    value125258,
    value125259,
    value125261,
    value125262,
    value125263,
    value125264,
    value125265,
    value125270,
    value125271,
    value125272,
    value125273,
    value125901,
    value125902,
    value125903,
    value125904,
    value125905,
    value125906,
    value125907,
    value125908,
    value126000,
    value126001,
    value126002,
    value126003,
    value126010,
    value126011,
    value126020,
    value126021,
    value126022,
    value126030,
    value126031,
    value126032,
    value126033,
    value126034,
    value126035,
    value126036,
    value126037,
    value126038,
    value126039,
    value126040,
    value126050,
    value126051,
    value126052,
    value126060,
    value126061,
    value126062,
    value126063,
    value126064,
    value126065,
    value126066,
    value126067,
    value126070,
    value126071,
    value126072,
    value126073,
    value126074,
    value126075,
    value126080,
    value126081,
    value126100,
    value126200,
    value126201,
    value126202,
    value126203,
    value126220,
    value126300,
    value126301,
    value126302,
    value126303,
    value126310,
    value126311,
    value126312,
    value126313,
    value126314,
    value126320,
    value126321,
    value126322,
    value126330,
    value126331,
    value126340,
    value126341,
    value126342,
    value126343,
    value126344,
    value126350,
    value126351,
    value126352,
    value126353,
    value126360,
    value126361,
    value126362,
    value126363,
    value126364,
    value126370,
    value126371,
    value126372,
    value126373,
    value126374,
    value126375,
    value126376,
    value126377,
    value126380,
    value126390,
    value126391,
    value126392,
    value126393,
    value126394,
    value126400,
    value126401,
    value126402,
    value126403,
    value126404,
    value126410,
    value126411,
    value126412,
    value126413,
    value126500,
    value126501,
    value126502,
    value126503,
    value126510,
    value126511,
    value126512,
    value126513,
    value126514,
    value126515,
    value126516,
    value126517,
    value126518,
    value126519,
    value126520,
    value126600,
    value126601,
    value126602,
    value126603,
    value126604,
    value126605,
    value126606,
    value126700,
    value126701,
    value126702,
    value126703,
    value126704,
    value126705,
    value126706,
    value126707,
    value126708,
    value126709,
    value126710,
    value126711,
    value126712,
    value126713,
    value126714,
    value126715,
    value126716,
    value126801,
    value126802,
    value126803,
    value126804,
    value126805,
    value126806,
    value126807,
    value126808,
    value126809,
    value126810,
    value126811,
  ];

  /// Clones the current instance
  @override
  MediaTypeCode clone() => MediaTypeCode._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  MediaTypeCode setElement(
    String name,
    dynamic elementValue,
  ) {
    return MediaTypeCode._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  MediaTypeCode withElement(Element? newElement) {
    return MediaTypeCode._(value, newElement);
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
  MediaTypeCode copyWith({
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
    return MediaTypeCode._(
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
