// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// More detailed code concerning the type of the audit event - defined by DICOM with some FHIR specific additions.
class AuditEventSubType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AuditEventSubType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [AuditEventSubType] from JSON.
  factory AuditEventSubType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventSubType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AuditEventSubType cannot be constructed from JSON.',
      );
    }
    return AuditEventSubType._(value: value, element: element);
  }

  /// ARCHIVE
  static final AuditEventSubType ARCHIVE = AuditEventSubType._(
    value: 'ARCHIVE',
  );

  /// AR
  static final AuditEventSubType AR = AuditEventSubType._(
    value: 'AR',
  );

  /// AS
  static final AuditEventSubType AS = AuditEventSubType._(
    value: 'AS',
  );

  /// AU
  static final AuditEventSubType AU = AuditEventSubType._(
    value: 'AU',
  );

  /// BDUS
  static final AuditEventSubType BDUS = AuditEventSubType._(
    value: 'BDUS',
  );

  /// BI
  static final AuditEventSubType BI = AuditEventSubType._(
    value: 'BI',
  );

  /// BMD
  static final AuditEventSubType BMD = AuditEventSubType._(
    value: 'BMD',
  );

  /// CAD
  static final AuditEventSubType CAD = AuditEventSubType._(
    value: 'CAD',
  );

  /// CAPTURE
  static final AuditEventSubType CAPTURE = AuditEventSubType._(
    value: 'CAPTURE',
  );

  /// CD
  static final AuditEventSubType CD = AuditEventSubType._(
    value: 'CD',
  );

  /// CF
  static final AuditEventSubType CF = AuditEventSubType._(
    value: 'CF',
  );

  /// COMP
  static final AuditEventSubType COMP = AuditEventSubType._(
    value: 'COMP',
  );

  /// CP
  static final AuditEventSubType CP = AuditEventSubType._(
    value: 'CP',
  );

  /// CR
  static final AuditEventSubType CR = AuditEventSubType._(
    value: 'CR',
  );

  /// CS
  static final AuditEventSubType CS = AuditEventSubType._(
    value: 'CS',
  );

  /// CT
  static final AuditEventSubType CT = AuditEventSubType._(
    value: 'CT',
  );

  /// DD
  static final AuditEventSubType DD = AuditEventSubType._(
    value: 'DD',
  );

  /// DF
  static final AuditEventSubType DF = AuditEventSubType._(
    value: 'DF',
  );

  /// DG
  static final AuditEventSubType DG = AuditEventSubType._(
    value: 'DG',
  );

  /// DM
  static final AuditEventSubType DM = AuditEventSubType._(
    value: 'DM',
  );

  /// DOCD
  static final AuditEventSubType DOCD = AuditEventSubType._(
    value: 'DOCD',
  );

  /// DS
  static final AuditEventSubType DS = AuditEventSubType._(
    value: 'DS',
  );

  /// DSS
  static final AuditEventSubType DSS = AuditEventSubType._(
    value: 'DSS',
  );

  /// DX
  static final AuditEventSubType DX = AuditEventSubType._(
    value: 'DX',
  );

  /// EC
  static final AuditEventSubType EC = AuditEventSubType._(
    value: 'EC',
  );

  /// ECG
  static final AuditEventSubType ECG = AuditEventSubType._(
    value: 'ECG',
  );

  /// EPS
  static final AuditEventSubType EPS = AuditEventSubType._(
    value: 'EPS',
  );

  /// ES
  static final AuditEventSubType ES = AuditEventSubType._(
    value: 'ES',
  );

  /// F
  static final AuditEventSubType F = AuditEventSubType._(
    value: 'F',
  );

  /// FA
  static final AuditEventSubType FA = AuditEventSubType._(
    value: 'FA',
  );

  /// FC
  static final AuditEventSubType FC = AuditEventSubType._(
    value: 'FC',
  );

  /// FILMD
  static final AuditEventSubType FILMD = AuditEventSubType._(
    value: 'FILMD',
  );

  /// FP
  static final AuditEventSubType FP = AuditEventSubType._(
    value: 'FP',
  );

  /// FS
  static final AuditEventSubType FS = AuditEventSubType._(
    value: 'FS',
  );

  /// GM
  static final AuditEventSubType GM = AuditEventSubType._(
    value: 'GM',
  );

  /// H
  static final AuditEventSubType H = AuditEventSubType._(
    value: 'H',
  );

  /// HC
  static final AuditEventSubType HC = AuditEventSubType._(
    value: 'HC',
  );

  /// HD
  static final AuditEventSubType HD = AuditEventSubType._(
    value: 'HD',
  );

  /// IO
  static final AuditEventSubType IO = AuditEventSubType._(
    value: 'IO',
  );

  /// IVOCT
  static final AuditEventSubType IVOCT = AuditEventSubType._(
    value: 'IVOCT',
  );

  /// IVUS
  static final AuditEventSubType IVUS = AuditEventSubType._(
    value: 'IVUS',
  );

  /// KER
  static final AuditEventSubType KER = AuditEventSubType._(
    value: 'KER',
  );

  /// KO
  static final AuditEventSubType KO = AuditEventSubType._(
    value: 'KO',
  );

  /// LEN
  static final AuditEventSubType LEN = AuditEventSubType._(
    value: 'LEN',
  );

  /// LOG
  static final AuditEventSubType LOG = AuditEventSubType._(
    value: 'LOG',
  );

  /// LP
  static final AuditEventSubType LP = AuditEventSubType._(
    value: 'LP',
  );

  /// LS
  static final AuditEventSubType LS = AuditEventSubType._(
    value: 'LS',
  );

  /// M
  static final AuditEventSubType M = AuditEventSubType._(
    value: 'M',
  );

  /// MA
  static final AuditEventSubType MA = AuditEventSubType._(
    value: 'MA',
  );

  /// MC
  static final AuditEventSubType MC = AuditEventSubType._(
    value: 'MC',
  );

  /// MCD
  static final AuditEventSubType MCD = AuditEventSubType._(
    value: 'MCD',
  );

  /// MEDIM
  static final AuditEventSubType MEDIM = AuditEventSubType._(
    value: 'MEDIM',
  );

  /// MG
  static final AuditEventSubType MG = AuditEventSubType._(
    value: 'MG',
  );

  /// MP
  static final AuditEventSubType MP = AuditEventSubType._(
    value: 'MP',
  );

  /// MR
  static final AuditEventSubType MR = AuditEventSubType._(
    value: 'MR',
  );

  /// MS
  static final AuditEventSubType MS = AuditEventSubType._(
    value: 'MS',
  );

  /// NEARLINE
  static final AuditEventSubType NEARLINE = AuditEventSubType._(
    value: 'NEARLINE',
  );

  /// NM
  static final AuditEventSubType NM = AuditEventSubType._(
    value: 'NM',
  );

  /// OAM
  static final AuditEventSubType OAM = AuditEventSubType._(
    value: 'OAM',
  );

  /// OCT
  static final AuditEventSubType OCT = AuditEventSubType._(
    value: 'OCT',
  );

  /// OFFLINE
  static final AuditEventSubType OFFLINE = AuditEventSubType._(
    value: 'OFFLINE',
  );

  /// ONLINE
  static final AuditEventSubType ONLINE = AuditEventSubType._(
    value: 'ONLINE',
  );

  /// OP
  static final AuditEventSubType OP = AuditEventSubType._(
    value: 'OP',
  );

  /// OPM
  static final AuditEventSubType OPM = AuditEventSubType._(
    value: 'OPM',
  );

  /// OPR
  static final AuditEventSubType OPR = AuditEventSubType._(
    value: 'OPR',
  );

  /// OPT
  static final AuditEventSubType OPT = AuditEventSubType._(
    value: 'OPT',
  );

  /// OPV
  static final AuditEventSubType OPV = AuditEventSubType._(
    value: 'OPV',
  );

  /// OSS
  static final AuditEventSubType OSS = AuditEventSubType._(
    value: 'OSS',
  );

  /// OT
  static final AuditEventSubType OT = AuditEventSubType._(
    value: 'OT',
  );

  /// PR
  static final AuditEventSubType PR = AuditEventSubType._(
    value: 'PR',
  );

  /// PRINT
  static final AuditEventSubType PRINT = AuditEventSubType._(
    value: 'PRINT',
  );

  /// PT
  static final AuditEventSubType PT = AuditEventSubType._(
    value: 'PT',
  );

  /// PX
  static final AuditEventSubType PX = AuditEventSubType._(
    value: 'PX',
  );

  /// REG
  static final AuditEventSubType REG = AuditEventSubType._(
    value: 'REG',
  );

  /// RF
  static final AuditEventSubType RF = AuditEventSubType._(
    value: 'RF',
  );

  /// RG
  static final AuditEventSubType RG = AuditEventSubType._(
    value: 'RG',
  );

  /// RT
  static final AuditEventSubType RT = AuditEventSubType._(
    value: 'RT',
  );

  /// RTDOSE
  static final AuditEventSubType RTDOSE = AuditEventSubType._(
    value: 'RTDOSE',
  );

  /// RTIMAGE
  static final AuditEventSubType RTIMAGE = AuditEventSubType._(
    value: 'RTIMAGE',
  );

  /// RTPLAN
  static final AuditEventSubType RTPLAN = AuditEventSubType._(
    value: 'RTPLAN',
  );

  /// RTRECORD
  static final AuditEventSubType RTRECORD = AuditEventSubType._(
    value: 'RTRECORD',
  );

  /// RTSTRUCT
  static final AuditEventSubType RTSTRUCT = AuditEventSubType._(
    value: 'RTSTRUCT',
  );

  /// SEG
  static final AuditEventSubType SEG = AuditEventSubType._(
    value: 'SEG',
  );

  /// SM
  static final AuditEventSubType SM = AuditEventSubType._(
    value: 'SM',
  );

  /// SMR
  static final AuditEventSubType SMR = AuditEventSubType._(
    value: 'SMR',
  );

  /// SR
  static final AuditEventSubType SR = AuditEventSubType._(
    value: 'SR',
  );

  /// SRF
  static final AuditEventSubType SRF = AuditEventSubType._(
    value: 'SRF',
  );

  /// ST
  static final AuditEventSubType ST = AuditEventSubType._(
    value: 'ST',
  );

  /// TG
  static final AuditEventSubType TG = AuditEventSubType._(
    value: 'TG',
  );

  /// U
  static final AuditEventSubType U = AuditEventSubType._(
    value: 'U',
  );

  /// UNAVAILABLE
  static final AuditEventSubType UNAVAILABLE = AuditEventSubType._(
    value: 'UNAVAILABLE',
  );

  /// US
  static final AuditEventSubType US = AuditEventSubType._(
    value: 'US',
  );

  /// VA
  static final AuditEventSubType VA = AuditEventSubType._(
    value: 'VA',
  );

  /// VF
  static final AuditEventSubType VF = AuditEventSubType._(
    value: 'VF',
  );

  /// VIDD
  static final AuditEventSubType VIDD = AuditEventSubType._(
    value: 'VIDD',
  );

  /// WSD
  static final AuditEventSubType WSD = AuditEventSubType._(
    value: 'WSD',
  );

  /// XA
  static final AuditEventSubType XA = AuditEventSubType._(
    value: 'XA',
  );

  /// XC
  static final AuditEventSubType XC = AuditEventSubType._(
    value: 'XC',
  );

  /// value109001
  static final AuditEventSubType value109001 = AuditEventSubType._(
    value: '109001',
  );

  /// value109002
  static final AuditEventSubType value109002 = AuditEventSubType._(
    value: '109002',
  );

  /// value109003
  static final AuditEventSubType value109003 = AuditEventSubType._(
    value: '109003',
  );

  /// value109004
  static final AuditEventSubType value109004 = AuditEventSubType._(
    value: '109004',
  );

  /// value109005
  static final AuditEventSubType value109005 = AuditEventSubType._(
    value: '109005',
  );

  /// value109006
  static final AuditEventSubType value109006 = AuditEventSubType._(
    value: '109006',
  );

  /// value109007
  static final AuditEventSubType value109007 = AuditEventSubType._(
    value: '109007',
  );

  /// value109008
  static final AuditEventSubType value109008 = AuditEventSubType._(
    value: '109008',
  );

  /// value109009
  static final AuditEventSubType value109009 = AuditEventSubType._(
    value: '109009',
  );

  /// value109010
  static final AuditEventSubType value109010 = AuditEventSubType._(
    value: '109010',
  );

  /// value109011
  static final AuditEventSubType value109011 = AuditEventSubType._(
    value: '109011',
  );

  /// value109012
  static final AuditEventSubType value109012 = AuditEventSubType._(
    value: '109012',
  );

  /// value109013
  static final AuditEventSubType value109013 = AuditEventSubType._(
    value: '109013',
  );

  /// value109014
  static final AuditEventSubType value109014 = AuditEventSubType._(
    value: '109014',
  );

  /// value109015
  static final AuditEventSubType value109015 = AuditEventSubType._(
    value: '109015',
  );

  /// value109016
  static final AuditEventSubType value109016 = AuditEventSubType._(
    value: '109016',
  );

  /// value109017
  static final AuditEventSubType value109017 = AuditEventSubType._(
    value: '109017',
  );

  /// value109018
  static final AuditEventSubType value109018 = AuditEventSubType._(
    value: '109018',
  );

  /// value109019
  static final AuditEventSubType value109019 = AuditEventSubType._(
    value: '109019',
  );

  /// value109020
  static final AuditEventSubType value109020 = AuditEventSubType._(
    value: '109020',
  );

  /// value109021
  static final AuditEventSubType value109021 = AuditEventSubType._(
    value: '109021',
  );

  /// value109022
  static final AuditEventSubType value109022 = AuditEventSubType._(
    value: '109022',
  );

  /// value109023
  static final AuditEventSubType value109023 = AuditEventSubType._(
    value: '109023',
  );

  /// value109024
  static final AuditEventSubType value109024 = AuditEventSubType._(
    value: '109024',
  );

  /// value109025
  static final AuditEventSubType value109025 = AuditEventSubType._(
    value: '109025',
  );

  /// value109026
  static final AuditEventSubType value109026 = AuditEventSubType._(
    value: '109026',
  );

  /// value109027
  static final AuditEventSubType value109027 = AuditEventSubType._(
    value: '109027',
  );

  /// value109028
  static final AuditEventSubType value109028 = AuditEventSubType._(
    value: '109028',
  );

  /// value109029
  static final AuditEventSubType value109029 = AuditEventSubType._(
    value: '109029',
  );

  /// value109030
  static final AuditEventSubType value109030 = AuditEventSubType._(
    value: '109030',
  );

  /// value109031
  static final AuditEventSubType value109031 = AuditEventSubType._(
    value: '109031',
  );

  /// value109032
  static final AuditEventSubType value109032 = AuditEventSubType._(
    value: '109032',
  );

  /// value109033
  static final AuditEventSubType value109033 = AuditEventSubType._(
    value: '109033',
  );

  /// value109034
  static final AuditEventSubType value109034 = AuditEventSubType._(
    value: '109034',
  );

  /// value109035
  static final AuditEventSubType value109035 = AuditEventSubType._(
    value: '109035',
  );

  /// value109036
  static final AuditEventSubType value109036 = AuditEventSubType._(
    value: '109036',
  );

  /// value109037
  static final AuditEventSubType value109037 = AuditEventSubType._(
    value: '109037',
  );

  /// value109038
  static final AuditEventSubType value109038 = AuditEventSubType._(
    value: '109038',
  );

  /// value109039
  static final AuditEventSubType value109039 = AuditEventSubType._(
    value: '109039',
  );

  /// value109040
  static final AuditEventSubType value109040 = AuditEventSubType._(
    value: '109040',
  );

  /// value109041
  static final AuditEventSubType value109041 = AuditEventSubType._(
    value: '109041',
  );

  /// value109042
  static final AuditEventSubType value109042 = AuditEventSubType._(
    value: '109042',
  );

  /// value109043
  static final AuditEventSubType value109043 = AuditEventSubType._(
    value: '109043',
  );

  /// value109044
  static final AuditEventSubType value109044 = AuditEventSubType._(
    value: '109044',
  );

  /// value109045
  static final AuditEventSubType value109045 = AuditEventSubType._(
    value: '109045',
  );

  /// value109046
  static final AuditEventSubType value109046 = AuditEventSubType._(
    value: '109046',
  );

  /// value109047
  static final AuditEventSubType value109047 = AuditEventSubType._(
    value: '109047',
  );

  /// value109048
  static final AuditEventSubType value109048 = AuditEventSubType._(
    value: '109048',
  );

  /// value109049
  static final AuditEventSubType value109049 = AuditEventSubType._(
    value: '109049',
  );

  /// value109050
  static final AuditEventSubType value109050 = AuditEventSubType._(
    value: '109050',
  );

  /// value109051
  static final AuditEventSubType value109051 = AuditEventSubType._(
    value: '109051',
  );

  /// value109052
  static final AuditEventSubType value109052 = AuditEventSubType._(
    value: '109052',
  );

  /// value109053
  static final AuditEventSubType value109053 = AuditEventSubType._(
    value: '109053',
  );

  /// value109054
  static final AuditEventSubType value109054 = AuditEventSubType._(
    value: '109054',
  );

  /// value109055
  static final AuditEventSubType value109055 = AuditEventSubType._(
    value: '109055',
  );

  /// value109056
  static final AuditEventSubType value109056 = AuditEventSubType._(
    value: '109056',
  );

  /// value109057
  static final AuditEventSubType value109057 = AuditEventSubType._(
    value: '109057',
  );

  /// value109058
  static final AuditEventSubType value109058 = AuditEventSubType._(
    value: '109058',
  );

  /// value109059
  static final AuditEventSubType value109059 = AuditEventSubType._(
    value: '109059',
  );

  /// value109060
  static final AuditEventSubType value109060 = AuditEventSubType._(
    value: '109060',
  );

  /// value109061
  static final AuditEventSubType value109061 = AuditEventSubType._(
    value: '109061',
  );

  /// value109063
  static final AuditEventSubType value109063 = AuditEventSubType._(
    value: '109063',
  );

  /// value109070
  static final AuditEventSubType value109070 = AuditEventSubType._(
    value: '109070',
  );

  /// value109071
  static final AuditEventSubType value109071 = AuditEventSubType._(
    value: '109071',
  );

  /// value109072
  static final AuditEventSubType value109072 = AuditEventSubType._(
    value: '109072',
  );

  /// value109073
  static final AuditEventSubType value109073 = AuditEventSubType._(
    value: '109073',
  );

  /// value109080
  static final AuditEventSubType value109080 = AuditEventSubType._(
    value: '109080',
  );

  /// value109081
  static final AuditEventSubType value109081 = AuditEventSubType._(
    value: '109081',
  );

  /// value109082
  static final AuditEventSubType value109082 = AuditEventSubType._(
    value: '109082',
  );

  /// value109083
  static final AuditEventSubType value109083 = AuditEventSubType._(
    value: '109083',
  );

  /// value109091
  static final AuditEventSubType value109091 = AuditEventSubType._(
    value: '109091',
  );

  /// value109092
  static final AuditEventSubType value109092 = AuditEventSubType._(
    value: '109092',
  );

  /// value109093
  static final AuditEventSubType value109093 = AuditEventSubType._(
    value: '109093',
  );

  /// value109094
  static final AuditEventSubType value109094 = AuditEventSubType._(
    value: '109094',
  );

  /// value109095
  static final AuditEventSubType value109095 = AuditEventSubType._(
    value: '109095',
  );

  /// value109096
  static final AuditEventSubType value109096 = AuditEventSubType._(
    value: '109096',
  );

  /// value109101
  static final AuditEventSubType value109101 = AuditEventSubType._(
    value: '109101',
  );

  /// value109102
  static final AuditEventSubType value109102 = AuditEventSubType._(
    value: '109102',
  );

  /// value109103
  static final AuditEventSubType value109103 = AuditEventSubType._(
    value: '109103',
  );

  /// value109104
  static final AuditEventSubType value109104 = AuditEventSubType._(
    value: '109104',
  );

  /// value109105
  static final AuditEventSubType value109105 = AuditEventSubType._(
    value: '109105',
  );

  /// value109106
  static final AuditEventSubType value109106 = AuditEventSubType._(
    value: '109106',
  );

  /// value109110
  static final AuditEventSubType value109110 = AuditEventSubType._(
    value: '109110',
  );

  /// value109111
  static final AuditEventSubType value109111 = AuditEventSubType._(
    value: '109111',
  );

  /// value109112
  static final AuditEventSubType value109112 = AuditEventSubType._(
    value: '109112',
  );

  /// value109113
  static final AuditEventSubType value109113 = AuditEventSubType._(
    value: '109113',
  );

  /// value109114
  static final AuditEventSubType value109114 = AuditEventSubType._(
    value: '109114',
  );

  /// value109115
  static final AuditEventSubType value109115 = AuditEventSubType._(
    value: '109115',
  );

  /// value109116
  static final AuditEventSubType value109116 = AuditEventSubType._(
    value: '109116',
  );

  /// value109117
  static final AuditEventSubType value109117 = AuditEventSubType._(
    value: '109117',
  );

  /// value109120
  static final AuditEventSubType value109120 = AuditEventSubType._(
    value: '109120',
  );

  /// value109121
  static final AuditEventSubType value109121 = AuditEventSubType._(
    value: '109121',
  );

  /// value109122
  static final AuditEventSubType value109122 = AuditEventSubType._(
    value: '109122',
  );

  /// value109123
  static final AuditEventSubType value109123 = AuditEventSubType._(
    value: '109123',
  );

  /// value109124
  static final AuditEventSubType value109124 = AuditEventSubType._(
    value: '109124',
  );

  /// value109125
  static final AuditEventSubType value109125 = AuditEventSubType._(
    value: '109125',
  );

  /// value109132
  static final AuditEventSubType value109132 = AuditEventSubType._(
    value: '109132',
  );

  /// value109133
  static final AuditEventSubType value109133 = AuditEventSubType._(
    value: '109133',
  );

  /// value109134
  static final AuditEventSubType value109134 = AuditEventSubType._(
    value: '109134',
  );

  /// value109135
  static final AuditEventSubType value109135 = AuditEventSubType._(
    value: '109135',
  );

  /// value109136
  static final AuditEventSubType value109136 = AuditEventSubType._(
    value: '109136',
  );

  /// value109200
  static final AuditEventSubType value109200 = AuditEventSubType._(
    value: '109200',
  );

  /// value109201
  static final AuditEventSubType value109201 = AuditEventSubType._(
    value: '109201',
  );

  /// value109202
  static final AuditEventSubType value109202 = AuditEventSubType._(
    value: '109202',
  );

  /// value109203
  static final AuditEventSubType value109203 = AuditEventSubType._(
    value: '109203',
  );

  /// value109204
  static final AuditEventSubType value109204 = AuditEventSubType._(
    value: '109204',
  );

  /// value109205
  static final AuditEventSubType value109205 = AuditEventSubType._(
    value: '109205',
  );

  /// value109206
  static final AuditEventSubType value109206 = AuditEventSubType._(
    value: '109206',
  );

  /// value109207
  static final AuditEventSubType value109207 = AuditEventSubType._(
    value: '109207',
  );

  /// value109208
  static final AuditEventSubType value109208 = AuditEventSubType._(
    value: '109208',
  );

  /// value109209
  static final AuditEventSubType value109209 = AuditEventSubType._(
    value: '109209',
  );

  /// value109210
  static final AuditEventSubType value109210 = AuditEventSubType._(
    value: '109210',
  );

  /// value109211
  static final AuditEventSubType value109211 = AuditEventSubType._(
    value: '109211',
  );

  /// value109212
  static final AuditEventSubType value109212 = AuditEventSubType._(
    value: '109212',
  );

  /// value109213
  static final AuditEventSubType value109213 = AuditEventSubType._(
    value: '109213',
  );

  /// value109214
  static final AuditEventSubType value109214 = AuditEventSubType._(
    value: '109214',
  );

  /// value109215
  static final AuditEventSubType value109215 = AuditEventSubType._(
    value: '109215',
  );

  /// value109216
  static final AuditEventSubType value109216 = AuditEventSubType._(
    value: '109216',
  );

  /// value109217
  static final AuditEventSubType value109217 = AuditEventSubType._(
    value: '109217',
  );

  /// value109218
  static final AuditEventSubType value109218 = AuditEventSubType._(
    value: '109218',
  );

  /// value109219
  static final AuditEventSubType value109219 = AuditEventSubType._(
    value: '109219',
  );

  /// value109220
  static final AuditEventSubType value109220 = AuditEventSubType._(
    value: '109220',
  );

  /// value109221
  static final AuditEventSubType value109221 = AuditEventSubType._(
    value: '109221',
  );

  /// value109222
  static final AuditEventSubType value109222 = AuditEventSubType._(
    value: '109222',
  );

  /// value109701
  static final AuditEventSubType value109701 = AuditEventSubType._(
    value: '109701',
  );

  /// value109702
  static final AuditEventSubType value109702 = AuditEventSubType._(
    value: '109702',
  );

  /// value109703
  static final AuditEventSubType value109703 = AuditEventSubType._(
    value: '109703',
  );

  /// value109704
  static final AuditEventSubType value109704 = AuditEventSubType._(
    value: '109704',
  );

  /// value109705
  static final AuditEventSubType value109705 = AuditEventSubType._(
    value: '109705',
  );

  /// value109706
  static final AuditEventSubType value109706 = AuditEventSubType._(
    value: '109706',
  );

  /// value109707
  static final AuditEventSubType value109707 = AuditEventSubType._(
    value: '109707',
  );

  /// value109708
  static final AuditEventSubType value109708 = AuditEventSubType._(
    value: '109708',
  );

  /// value109709
  static final AuditEventSubType value109709 = AuditEventSubType._(
    value: '109709',
  );

  /// value109710
  static final AuditEventSubType value109710 = AuditEventSubType._(
    value: '109710',
  );

  /// value109801
  static final AuditEventSubType value109801 = AuditEventSubType._(
    value: '109801',
  );

  /// value109802
  static final AuditEventSubType value109802 = AuditEventSubType._(
    value: '109802',
  );

  /// value109803
  static final AuditEventSubType value109803 = AuditEventSubType._(
    value: '109803',
  );

  /// value109804
  static final AuditEventSubType value109804 = AuditEventSubType._(
    value: '109804',
  );

  /// value109805
  static final AuditEventSubType value109805 = AuditEventSubType._(
    value: '109805',
  );

  /// value109806
  static final AuditEventSubType value109806 = AuditEventSubType._(
    value: '109806',
  );

  /// value109807
  static final AuditEventSubType value109807 = AuditEventSubType._(
    value: '109807',
  );

  /// value109808
  static final AuditEventSubType value109808 = AuditEventSubType._(
    value: '109808',
  );

  /// value109809
  static final AuditEventSubType value109809 = AuditEventSubType._(
    value: '109809',
  );

  /// value109810
  static final AuditEventSubType value109810 = AuditEventSubType._(
    value: '109810',
  );

  /// value109811
  static final AuditEventSubType value109811 = AuditEventSubType._(
    value: '109811',
  );

  /// value109812
  static final AuditEventSubType value109812 = AuditEventSubType._(
    value: '109812',
  );

  /// value109813
  static final AuditEventSubType value109813 = AuditEventSubType._(
    value: '109813',
  );

  /// value109814
  static final AuditEventSubType value109814 = AuditEventSubType._(
    value: '109814',
  );

  /// value109815
  static final AuditEventSubType value109815 = AuditEventSubType._(
    value: '109815',
  );

  /// value109816
  static final AuditEventSubType value109816 = AuditEventSubType._(
    value: '109816',
  );

  /// value109817
  static final AuditEventSubType value109817 = AuditEventSubType._(
    value: '109817',
  );

  /// value109818
  static final AuditEventSubType value109818 = AuditEventSubType._(
    value: '109818',
  );

  /// value109819
  static final AuditEventSubType value109819 = AuditEventSubType._(
    value: '109819',
  );

  /// value109820
  static final AuditEventSubType value109820 = AuditEventSubType._(
    value: '109820',
  );

  /// value109821
  static final AuditEventSubType value109821 = AuditEventSubType._(
    value: '109821',
  );

  /// value109822
  static final AuditEventSubType value109822 = AuditEventSubType._(
    value: '109822',
  );

  /// value109823
  static final AuditEventSubType value109823 = AuditEventSubType._(
    value: '109823',
  );

  /// value109824
  static final AuditEventSubType value109824 = AuditEventSubType._(
    value: '109824',
  );

  /// value109825
  static final AuditEventSubType value109825 = AuditEventSubType._(
    value: '109825',
  );

  /// value109826
  static final AuditEventSubType value109826 = AuditEventSubType._(
    value: '109826',
  );

  /// value109827
  static final AuditEventSubType value109827 = AuditEventSubType._(
    value: '109827',
  );

  /// value109828
  static final AuditEventSubType value109828 = AuditEventSubType._(
    value: '109828',
  );

  /// value109829
  static final AuditEventSubType value109829 = AuditEventSubType._(
    value: '109829',
  );

  /// value109830
  static final AuditEventSubType value109830 = AuditEventSubType._(
    value: '109830',
  );

  /// value109831
  static final AuditEventSubType value109831 = AuditEventSubType._(
    value: '109831',
  );

  /// value109832
  static final AuditEventSubType value109832 = AuditEventSubType._(
    value: '109832',
  );

  /// value109833
  static final AuditEventSubType value109833 = AuditEventSubType._(
    value: '109833',
  );

  /// value109834
  static final AuditEventSubType value109834 = AuditEventSubType._(
    value: '109834',
  );

  /// value109835
  static final AuditEventSubType value109835 = AuditEventSubType._(
    value: '109835',
  );

  /// value109836
  static final AuditEventSubType value109836 = AuditEventSubType._(
    value: '109836',
  );

  /// value109837
  static final AuditEventSubType value109837 = AuditEventSubType._(
    value: '109837',
  );

  /// value109838
  static final AuditEventSubType value109838 = AuditEventSubType._(
    value: '109838',
  );

  /// value109839
  static final AuditEventSubType value109839 = AuditEventSubType._(
    value: '109839',
  );

  /// value109840
  static final AuditEventSubType value109840 = AuditEventSubType._(
    value: '109840',
  );

  /// value109841
  static final AuditEventSubType value109841 = AuditEventSubType._(
    value: '109841',
  );

  /// value109842
  static final AuditEventSubType value109842 = AuditEventSubType._(
    value: '109842',
  );

  /// value109843
  static final AuditEventSubType value109843 = AuditEventSubType._(
    value: '109843',
  );

  /// value109844
  static final AuditEventSubType value109844 = AuditEventSubType._(
    value: '109844',
  );

  /// value109845
  static final AuditEventSubType value109845 = AuditEventSubType._(
    value: '109845',
  );

  /// value109846
  static final AuditEventSubType value109846 = AuditEventSubType._(
    value: '109846',
  );

  /// value109847
  static final AuditEventSubType value109847 = AuditEventSubType._(
    value: '109847',
  );

  /// value109848
  static final AuditEventSubType value109848 = AuditEventSubType._(
    value: '109848',
  );

  /// value109849
  static final AuditEventSubType value109849 = AuditEventSubType._(
    value: '109849',
  );

  /// value109850
  static final AuditEventSubType value109850 = AuditEventSubType._(
    value: '109850',
  );

  /// value109851
  static final AuditEventSubType value109851 = AuditEventSubType._(
    value: '109851',
  );

  /// value109852
  static final AuditEventSubType value109852 = AuditEventSubType._(
    value: '109852',
  );

  /// value109853
  static final AuditEventSubType value109853 = AuditEventSubType._(
    value: '109853',
  );

  /// value109854
  static final AuditEventSubType value109854 = AuditEventSubType._(
    value: '109854',
  );

  /// value109855
  static final AuditEventSubType value109855 = AuditEventSubType._(
    value: '109855',
  );

  /// value109856
  static final AuditEventSubType value109856 = AuditEventSubType._(
    value: '109856',
  );

  /// value109857
  static final AuditEventSubType value109857 = AuditEventSubType._(
    value: '109857',
  );

  /// value109858
  static final AuditEventSubType value109858 = AuditEventSubType._(
    value: '109858',
  );

  /// value109859
  static final AuditEventSubType value109859 = AuditEventSubType._(
    value: '109859',
  );

  /// value109860
  static final AuditEventSubType value109860 = AuditEventSubType._(
    value: '109860',
  );

  /// value109861
  static final AuditEventSubType value109861 = AuditEventSubType._(
    value: '109861',
  );

  /// value109862
  static final AuditEventSubType value109862 = AuditEventSubType._(
    value: '109862',
  );

  /// value109863
  static final AuditEventSubType value109863 = AuditEventSubType._(
    value: '109863',
  );

  /// value109864
  static final AuditEventSubType value109864 = AuditEventSubType._(
    value: '109864',
  );

  /// value109865
  static final AuditEventSubType value109865 = AuditEventSubType._(
    value: '109865',
  );

  /// value109866
  static final AuditEventSubType value109866 = AuditEventSubType._(
    value: '109866',
  );

  /// value109867
  static final AuditEventSubType value109867 = AuditEventSubType._(
    value: '109867',
  );

  /// value109868
  static final AuditEventSubType value109868 = AuditEventSubType._(
    value: '109868',
  );

  /// value109869
  static final AuditEventSubType value109869 = AuditEventSubType._(
    value: '109869',
  );

  /// value109870
  static final AuditEventSubType value109870 = AuditEventSubType._(
    value: '109870',
  );

  /// value109871
  static final AuditEventSubType value109871 = AuditEventSubType._(
    value: '109871',
  );

  /// value109872
  static final AuditEventSubType value109872 = AuditEventSubType._(
    value: '109872',
  );

  /// value109873
  static final AuditEventSubType value109873 = AuditEventSubType._(
    value: '109873',
  );

  /// value109874
  static final AuditEventSubType value109874 = AuditEventSubType._(
    value: '109874',
  );

  /// value109875
  static final AuditEventSubType value109875 = AuditEventSubType._(
    value: '109875',
  );

  /// value109876
  static final AuditEventSubType value109876 = AuditEventSubType._(
    value: '109876',
  );

  /// value109877
  static final AuditEventSubType value109877 = AuditEventSubType._(
    value: '109877',
  );

  /// value109878
  static final AuditEventSubType value109878 = AuditEventSubType._(
    value: '109878',
  );

  /// value109879
  static final AuditEventSubType value109879 = AuditEventSubType._(
    value: '109879',
  );

  /// value109880
  static final AuditEventSubType value109880 = AuditEventSubType._(
    value: '109880',
  );

  /// value109881
  static final AuditEventSubType value109881 = AuditEventSubType._(
    value: '109881',
  );

  /// value109901
  static final AuditEventSubType value109901 = AuditEventSubType._(
    value: '109901',
  );

  /// value109902
  static final AuditEventSubType value109902 = AuditEventSubType._(
    value: '109902',
  );

  /// value109903
  static final AuditEventSubType value109903 = AuditEventSubType._(
    value: '109903',
  );

  /// value109904
  static final AuditEventSubType value109904 = AuditEventSubType._(
    value: '109904',
  );

  /// value109905
  static final AuditEventSubType value109905 = AuditEventSubType._(
    value: '109905',
  );

  /// value109906
  static final AuditEventSubType value109906 = AuditEventSubType._(
    value: '109906',
  );

  /// value109907
  static final AuditEventSubType value109907 = AuditEventSubType._(
    value: '109907',
  );

  /// value109908
  static final AuditEventSubType value109908 = AuditEventSubType._(
    value: '109908',
  );

  /// value109909
  static final AuditEventSubType value109909 = AuditEventSubType._(
    value: '109909',
  );

  /// value109910
  static final AuditEventSubType value109910 = AuditEventSubType._(
    value: '109910',
  );

  /// value109911
  static final AuditEventSubType value109911 = AuditEventSubType._(
    value: '109911',
  );

  /// value109912
  static final AuditEventSubType value109912 = AuditEventSubType._(
    value: '109912',
  );

  /// value109913
  static final AuditEventSubType value109913 = AuditEventSubType._(
    value: '109913',
  );

  /// value109914
  static final AuditEventSubType value109914 = AuditEventSubType._(
    value: '109914',
  );

  /// value109915
  static final AuditEventSubType value109915 = AuditEventSubType._(
    value: '109915',
  );

  /// value109916
  static final AuditEventSubType value109916 = AuditEventSubType._(
    value: '109916',
  );

  /// value109917
  static final AuditEventSubType value109917 = AuditEventSubType._(
    value: '109917',
  );

  /// value109918
  static final AuditEventSubType value109918 = AuditEventSubType._(
    value: '109918',
  );

  /// value109919
  static final AuditEventSubType value109919 = AuditEventSubType._(
    value: '109919',
  );

  /// value109920
  static final AuditEventSubType value109920 = AuditEventSubType._(
    value: '109920',
  );

  /// value109921
  static final AuditEventSubType value109921 = AuditEventSubType._(
    value: '109921',
  );

  /// value109931
  static final AuditEventSubType value109931 = AuditEventSubType._(
    value: '109931',
  );

  /// value109932
  static final AuditEventSubType value109932 = AuditEventSubType._(
    value: '109932',
  );

  /// value109933
  static final AuditEventSubType value109933 = AuditEventSubType._(
    value: '109933',
  );

  /// value109941
  static final AuditEventSubType value109941 = AuditEventSubType._(
    value: '109941',
  );

  /// value109943
  static final AuditEventSubType value109943 = AuditEventSubType._(
    value: '109943',
  );

  /// value109991
  static final AuditEventSubType value109991 = AuditEventSubType._(
    value: '109991',
  );

  /// value109992
  static final AuditEventSubType value109992 = AuditEventSubType._(
    value: '109992',
  );

  /// value109993
  static final AuditEventSubType value109993 = AuditEventSubType._(
    value: '109993',
  );

  /// value109994
  static final AuditEventSubType value109994 = AuditEventSubType._(
    value: '109994',
  );

  /// value109995
  static final AuditEventSubType value109995 = AuditEventSubType._(
    value: '109995',
  );

  /// value109996
  static final AuditEventSubType value109996 = AuditEventSubType._(
    value: '109996',
  );

  /// value109997
  static final AuditEventSubType value109997 = AuditEventSubType._(
    value: '109997',
  );

  /// value109998
  static final AuditEventSubType value109998 = AuditEventSubType._(
    value: '109998',
  );

  /// value109999
  static final AuditEventSubType value109999 = AuditEventSubType._(
    value: '109999',
  );

  /// value110001
  static final AuditEventSubType value110001 = AuditEventSubType._(
    value: '110001',
  );

  /// value110002
  static final AuditEventSubType value110002 = AuditEventSubType._(
    value: '110002',
  );

  /// value110003
  static final AuditEventSubType value110003 = AuditEventSubType._(
    value: '110003',
  );

  /// value110004
  static final AuditEventSubType value110004 = AuditEventSubType._(
    value: '110004',
  );

  /// value110005
  static final AuditEventSubType value110005 = AuditEventSubType._(
    value: '110005',
  );

  /// value110006
  static final AuditEventSubType value110006 = AuditEventSubType._(
    value: '110006',
  );

  /// value110007
  static final AuditEventSubType value110007 = AuditEventSubType._(
    value: '110007',
  );

  /// value110008
  static final AuditEventSubType value110008 = AuditEventSubType._(
    value: '110008',
  );

  /// value110009
  static final AuditEventSubType value110009 = AuditEventSubType._(
    value: '110009',
  );

  /// value110010
  static final AuditEventSubType value110010 = AuditEventSubType._(
    value: '110010',
  );

  /// value110011
  static final AuditEventSubType value110011 = AuditEventSubType._(
    value: '110011',
  );

  /// value110012
  static final AuditEventSubType value110012 = AuditEventSubType._(
    value: '110012',
  );

  /// value110013
  static final AuditEventSubType value110013 = AuditEventSubType._(
    value: '110013',
  );

  /// value110020
  static final AuditEventSubType value110020 = AuditEventSubType._(
    value: '110020',
  );

  /// value110021
  static final AuditEventSubType value110021 = AuditEventSubType._(
    value: '110021',
  );

  /// value110022
  static final AuditEventSubType value110022 = AuditEventSubType._(
    value: '110022',
  );

  /// value110023
  static final AuditEventSubType value110023 = AuditEventSubType._(
    value: '110023',
  );

  /// value110024
  static final AuditEventSubType value110024 = AuditEventSubType._(
    value: '110024',
  );

  /// value110025
  static final AuditEventSubType value110025 = AuditEventSubType._(
    value: '110025',
  );

  /// value110026
  static final AuditEventSubType value110026 = AuditEventSubType._(
    value: '110026',
  );

  /// value110027
  static final AuditEventSubType value110027 = AuditEventSubType._(
    value: '110027',
  );

  /// value110028
  static final AuditEventSubType value110028 = AuditEventSubType._(
    value: '110028',
  );

  /// value110030
  static final AuditEventSubType value110030 = AuditEventSubType._(
    value: '110030',
  );

  /// value110031
  static final AuditEventSubType value110031 = AuditEventSubType._(
    value: '110031',
  );

  /// value110032
  static final AuditEventSubType value110032 = AuditEventSubType._(
    value: '110032',
  );

  /// value110033
  static final AuditEventSubType value110033 = AuditEventSubType._(
    value: '110033',
  );

  /// value110034
  static final AuditEventSubType value110034 = AuditEventSubType._(
    value: '110034',
  );

  /// value110035
  static final AuditEventSubType value110035 = AuditEventSubType._(
    value: '110035',
  );

  /// value110036
  static final AuditEventSubType value110036 = AuditEventSubType._(
    value: '110036',
  );

  /// value110037
  static final AuditEventSubType value110037 = AuditEventSubType._(
    value: '110037',
  );

  /// value110038
  static final AuditEventSubType value110038 = AuditEventSubType._(
    value: '110038',
  );

  /// value110100
  static final AuditEventSubType value110100 = AuditEventSubType._(
    value: '110100',
  );

  /// value110101
  static final AuditEventSubType value110101 = AuditEventSubType._(
    value: '110101',
  );

  /// value110102
  static final AuditEventSubType value110102 = AuditEventSubType._(
    value: '110102',
  );

  /// value110103
  static final AuditEventSubType value110103 = AuditEventSubType._(
    value: '110103',
  );

  /// value110104
  static final AuditEventSubType value110104 = AuditEventSubType._(
    value: '110104',
  );

  /// value110105
  static final AuditEventSubType value110105 = AuditEventSubType._(
    value: '110105',
  );

  /// value110106
  static final AuditEventSubType value110106 = AuditEventSubType._(
    value: '110106',
  );

  /// value110107
  static final AuditEventSubType value110107 = AuditEventSubType._(
    value: '110107',
  );

  /// value110108
  static final AuditEventSubType value110108 = AuditEventSubType._(
    value: '110108',
  );

  /// value110109
  static final AuditEventSubType value110109 = AuditEventSubType._(
    value: '110109',
  );

  /// value110110
  static final AuditEventSubType value110110 = AuditEventSubType._(
    value: '110110',
  );

  /// value110111
  static final AuditEventSubType value110111 = AuditEventSubType._(
    value: '110111',
  );

  /// value110112
  static final AuditEventSubType value110112 = AuditEventSubType._(
    value: '110112',
  );

  /// value110113
  static final AuditEventSubType value110113 = AuditEventSubType._(
    value: '110113',
  );

  /// value110114
  static final AuditEventSubType value110114 = AuditEventSubType._(
    value: '110114',
  );

  /// value110120
  static final AuditEventSubType value110120 = AuditEventSubType._(
    value: '110120',
  );

  /// value110121
  static final AuditEventSubType value110121 = AuditEventSubType._(
    value: '110121',
  );

  /// value110122
  static final AuditEventSubType value110122 = AuditEventSubType._(
    value: '110122',
  );

  /// value110123
  static final AuditEventSubType value110123 = AuditEventSubType._(
    value: '110123',
  );

  /// value110124
  static final AuditEventSubType value110124 = AuditEventSubType._(
    value: '110124',
  );

  /// value110125
  static final AuditEventSubType value110125 = AuditEventSubType._(
    value: '110125',
  );

  /// value110126
  static final AuditEventSubType value110126 = AuditEventSubType._(
    value: '110126',
  );

  /// value110127
  static final AuditEventSubType value110127 = AuditEventSubType._(
    value: '110127',
  );

  /// value110128
  static final AuditEventSubType value110128 = AuditEventSubType._(
    value: '110128',
  );

  /// value110129
  static final AuditEventSubType value110129 = AuditEventSubType._(
    value: '110129',
  );

  /// value110130
  static final AuditEventSubType value110130 = AuditEventSubType._(
    value: '110130',
  );

  /// value110131
  static final AuditEventSubType value110131 = AuditEventSubType._(
    value: '110131',
  );

  /// value110132
  static final AuditEventSubType value110132 = AuditEventSubType._(
    value: '110132',
  );

  /// value110133
  static final AuditEventSubType value110133 = AuditEventSubType._(
    value: '110133',
  );

  /// value110134
  static final AuditEventSubType value110134 = AuditEventSubType._(
    value: '110134',
  );

  /// value110135
  static final AuditEventSubType value110135 = AuditEventSubType._(
    value: '110135',
  );

  /// value110136
  static final AuditEventSubType value110136 = AuditEventSubType._(
    value: '110136',
  );

  /// value110137
  static final AuditEventSubType value110137 = AuditEventSubType._(
    value: '110137',
  );

  /// value110138
  static final AuditEventSubType value110138 = AuditEventSubType._(
    value: '110138',
  );

  /// value110139
  static final AuditEventSubType value110139 = AuditEventSubType._(
    value: '110139',
  );

  /// value110140
  static final AuditEventSubType value110140 = AuditEventSubType._(
    value: '110140',
  );

  /// value110141
  static final AuditEventSubType value110141 = AuditEventSubType._(
    value: '110141',
  );

  /// value110142
  static final AuditEventSubType value110142 = AuditEventSubType._(
    value: '110142',
  );

  /// value110150
  static final AuditEventSubType value110150 = AuditEventSubType._(
    value: '110150',
  );

  /// value110151
  static final AuditEventSubType value110151 = AuditEventSubType._(
    value: '110151',
  );

  /// value110152
  static final AuditEventSubType value110152 = AuditEventSubType._(
    value: '110152',
  );

  /// value110153
  static final AuditEventSubType value110153 = AuditEventSubType._(
    value: '110153',
  );

  /// value110154
  static final AuditEventSubType value110154 = AuditEventSubType._(
    value: '110154',
  );

  /// value110155
  static final AuditEventSubType value110155 = AuditEventSubType._(
    value: '110155',
  );

  /// value110180
  static final AuditEventSubType value110180 = AuditEventSubType._(
    value: '110180',
  );

  /// value110181
  static final AuditEventSubType value110181 = AuditEventSubType._(
    value: '110181',
  );

  /// value110182
  static final AuditEventSubType value110182 = AuditEventSubType._(
    value: '110182',
  );

  /// value110190
  static final AuditEventSubType value110190 = AuditEventSubType._(
    value: '110190',
  );

  /// value110500
  static final AuditEventSubType value110500 = AuditEventSubType._(
    value: '110500',
  );

  /// value110501
  static final AuditEventSubType value110501 = AuditEventSubType._(
    value: '110501',
  );

  /// value110502
  static final AuditEventSubType value110502 = AuditEventSubType._(
    value: '110502',
  );

  /// value110503
  static final AuditEventSubType value110503 = AuditEventSubType._(
    value: '110503',
  );

  /// value110504
  static final AuditEventSubType value110504 = AuditEventSubType._(
    value: '110504',
  );

  /// value110505
  static final AuditEventSubType value110505 = AuditEventSubType._(
    value: '110505',
  );

  /// value110506
  static final AuditEventSubType value110506 = AuditEventSubType._(
    value: '110506',
  );

  /// value110507
  static final AuditEventSubType value110507 = AuditEventSubType._(
    value: '110507',
  );

  /// value110508
  static final AuditEventSubType value110508 = AuditEventSubType._(
    value: '110508',
  );

  /// value110509
  static final AuditEventSubType value110509 = AuditEventSubType._(
    value: '110509',
  );

  /// value110510
  static final AuditEventSubType value110510 = AuditEventSubType._(
    value: '110510',
  );

  /// value110511
  static final AuditEventSubType value110511 = AuditEventSubType._(
    value: '110511',
  );

  /// value110512
  static final AuditEventSubType value110512 = AuditEventSubType._(
    value: '110512',
  );

  /// value110513
  static final AuditEventSubType value110513 = AuditEventSubType._(
    value: '110513',
  );

  /// value110514
  static final AuditEventSubType value110514 = AuditEventSubType._(
    value: '110514',
  );

  /// value110515
  static final AuditEventSubType value110515 = AuditEventSubType._(
    value: '110515',
  );

  /// value110516
  static final AuditEventSubType value110516 = AuditEventSubType._(
    value: '110516',
  );

  /// value110518
  static final AuditEventSubType value110518 = AuditEventSubType._(
    value: '110518',
  );

  /// value110519
  static final AuditEventSubType value110519 = AuditEventSubType._(
    value: '110519',
  );

  /// value110521
  static final AuditEventSubType value110521 = AuditEventSubType._(
    value: '110521',
  );

  /// value110522
  static final AuditEventSubType value110522 = AuditEventSubType._(
    value: '110522',
  );

  /// value110523
  static final AuditEventSubType value110523 = AuditEventSubType._(
    value: '110523',
  );

  /// value110524
  static final AuditEventSubType value110524 = AuditEventSubType._(
    value: '110524',
  );

  /// value110526
  static final AuditEventSubType value110526 = AuditEventSubType._(
    value: '110526',
  );

  /// value110527
  static final AuditEventSubType value110527 = AuditEventSubType._(
    value: '110527',
  );

  /// value110528
  static final AuditEventSubType value110528 = AuditEventSubType._(
    value: '110528',
  );

  /// value110529
  static final AuditEventSubType value110529 = AuditEventSubType._(
    value: '110529',
  );

  /// value110700
  static final AuditEventSubType value110700 = AuditEventSubType._(
    value: '110700',
  );

  /// value110701
  static final AuditEventSubType value110701 = AuditEventSubType._(
    value: '110701',
  );

  /// value110702
  static final AuditEventSubType value110702 = AuditEventSubType._(
    value: '110702',
  );

  /// value110703
  static final AuditEventSubType value110703 = AuditEventSubType._(
    value: '110703',
  );

  /// value110704
  static final AuditEventSubType value110704 = AuditEventSubType._(
    value: '110704',
  );

  /// value110705
  static final AuditEventSubType value110705 = AuditEventSubType._(
    value: '110705',
  );

  /// value110706
  static final AuditEventSubType value110706 = AuditEventSubType._(
    value: '110706',
  );

  /// value110800
  static final AuditEventSubType value110800 = AuditEventSubType._(
    value: '110800',
  );

  /// value110801
  static final AuditEventSubType value110801 = AuditEventSubType._(
    value: '110801',
  );

  /// value110802
  static final AuditEventSubType value110802 = AuditEventSubType._(
    value: '110802',
  );

  /// value110803
  static final AuditEventSubType value110803 = AuditEventSubType._(
    value: '110803',
  );

  /// value110804
  static final AuditEventSubType value110804 = AuditEventSubType._(
    value: '110804',
  );

  /// value110805
  static final AuditEventSubType value110805 = AuditEventSubType._(
    value: '110805',
  );

  /// value110806
  static final AuditEventSubType value110806 = AuditEventSubType._(
    value: '110806',
  );

  /// value110807
  static final AuditEventSubType value110807 = AuditEventSubType._(
    value: '110807',
  );

  /// value110808
  static final AuditEventSubType value110808 = AuditEventSubType._(
    value: '110808',
  );

  /// value110809
  static final AuditEventSubType value110809 = AuditEventSubType._(
    value: '110809',
  );

  /// value110810
  static final AuditEventSubType value110810 = AuditEventSubType._(
    value: '110810',
  );

  /// value110811
  static final AuditEventSubType value110811 = AuditEventSubType._(
    value: '110811',
  );

  /// value110812
  static final AuditEventSubType value110812 = AuditEventSubType._(
    value: '110812',
  );

  /// value110813
  static final AuditEventSubType value110813 = AuditEventSubType._(
    value: '110813',
  );

  /// value110814
  static final AuditEventSubType value110814 = AuditEventSubType._(
    value: '110814',
  );

  /// value110815
  static final AuditEventSubType value110815 = AuditEventSubType._(
    value: '110815',
  );

  /// value110816
  static final AuditEventSubType value110816 = AuditEventSubType._(
    value: '110816',
  );

  /// value110817
  static final AuditEventSubType value110817 = AuditEventSubType._(
    value: '110817',
  );

  /// value110818
  static final AuditEventSubType value110818 = AuditEventSubType._(
    value: '110818',
  );

  /// value110819
  static final AuditEventSubType value110819 = AuditEventSubType._(
    value: '110819',
  );

  /// value110820
  static final AuditEventSubType value110820 = AuditEventSubType._(
    value: '110820',
  );

  /// value110821
  static final AuditEventSubType value110821 = AuditEventSubType._(
    value: '110821',
  );

  /// value110822
  static final AuditEventSubType value110822 = AuditEventSubType._(
    value: '110822',
  );

  /// value110823
  static final AuditEventSubType value110823 = AuditEventSubType._(
    value: '110823',
  );

  /// value110824
  static final AuditEventSubType value110824 = AuditEventSubType._(
    value: '110824',
  );

  /// value110825
  static final AuditEventSubType value110825 = AuditEventSubType._(
    value: '110825',
  );

  /// value110826
  static final AuditEventSubType value110826 = AuditEventSubType._(
    value: '110826',
  );

  /// value110827
  static final AuditEventSubType value110827 = AuditEventSubType._(
    value: '110827',
  );

  /// value110828
  static final AuditEventSubType value110828 = AuditEventSubType._(
    value: '110828',
  );

  /// value110829
  static final AuditEventSubType value110829 = AuditEventSubType._(
    value: '110829',
  );

  /// value110830
  static final AuditEventSubType value110830 = AuditEventSubType._(
    value: '110830',
  );

  /// value110831
  static final AuditEventSubType value110831 = AuditEventSubType._(
    value: '110831',
  );

  /// value110832
  static final AuditEventSubType value110832 = AuditEventSubType._(
    value: '110832',
  );

  /// value110833
  static final AuditEventSubType value110833 = AuditEventSubType._(
    value: '110833',
  );

  /// value110834
  static final AuditEventSubType value110834 = AuditEventSubType._(
    value: '110834',
  );

  /// value110835
  static final AuditEventSubType value110835 = AuditEventSubType._(
    value: '110835',
  );

  /// value110836
  static final AuditEventSubType value110836 = AuditEventSubType._(
    value: '110836',
  );

  /// value110837
  static final AuditEventSubType value110837 = AuditEventSubType._(
    value: '110837',
  );

  /// value110838
  static final AuditEventSubType value110838 = AuditEventSubType._(
    value: '110838',
  );

  /// value110839
  static final AuditEventSubType value110839 = AuditEventSubType._(
    value: '110839',
  );

  /// value110840
  static final AuditEventSubType value110840 = AuditEventSubType._(
    value: '110840',
  );

  /// value110841
  static final AuditEventSubType value110841 = AuditEventSubType._(
    value: '110841',
  );

  /// value110842
  static final AuditEventSubType value110842 = AuditEventSubType._(
    value: '110842',
  );

  /// value110843
  static final AuditEventSubType value110843 = AuditEventSubType._(
    value: '110843',
  );

  /// value110844
  static final AuditEventSubType value110844 = AuditEventSubType._(
    value: '110844',
  );

  /// value110845
  static final AuditEventSubType value110845 = AuditEventSubType._(
    value: '110845',
  );

  /// value110846
  static final AuditEventSubType value110846 = AuditEventSubType._(
    value: '110846',
  );

  /// value110847
  static final AuditEventSubType value110847 = AuditEventSubType._(
    value: '110847',
  );

  /// value110848
  static final AuditEventSubType value110848 = AuditEventSubType._(
    value: '110848',
  );

  /// value110849
  static final AuditEventSubType value110849 = AuditEventSubType._(
    value: '110849',
  );

  /// value110850
  static final AuditEventSubType value110850 = AuditEventSubType._(
    value: '110850',
  );

  /// value110851
  static final AuditEventSubType value110851 = AuditEventSubType._(
    value: '110851',
  );

  /// value110852
  static final AuditEventSubType value110852 = AuditEventSubType._(
    value: '110852',
  );

  /// value110853
  static final AuditEventSubType value110853 = AuditEventSubType._(
    value: '110853',
  );

  /// value110854
  static final AuditEventSubType value110854 = AuditEventSubType._(
    value: '110854',
  );

  /// value110855
  static final AuditEventSubType value110855 = AuditEventSubType._(
    value: '110855',
  );

  /// value110856
  static final AuditEventSubType value110856 = AuditEventSubType._(
    value: '110856',
  );

  /// value110857
  static final AuditEventSubType value110857 = AuditEventSubType._(
    value: '110857',
  );

  /// value110858
  static final AuditEventSubType value110858 = AuditEventSubType._(
    value: '110858',
  );

  /// value110859
  static final AuditEventSubType value110859 = AuditEventSubType._(
    value: '110859',
  );

  /// value110860
  static final AuditEventSubType value110860 = AuditEventSubType._(
    value: '110860',
  );

  /// value110861
  static final AuditEventSubType value110861 = AuditEventSubType._(
    value: '110861',
  );

  /// value110862
  static final AuditEventSubType value110862 = AuditEventSubType._(
    value: '110862',
  );

  /// value110863
  static final AuditEventSubType value110863 = AuditEventSubType._(
    value: '110863',
  );

  /// value110864
  static final AuditEventSubType value110864 = AuditEventSubType._(
    value: '110864',
  );

  /// value110865
  static final AuditEventSubType value110865 = AuditEventSubType._(
    value: '110865',
  );

  /// value110866
  static final AuditEventSubType value110866 = AuditEventSubType._(
    value: '110866',
  );

  /// value110867
  static final AuditEventSubType value110867 = AuditEventSubType._(
    value: '110867',
  );

  /// value110868
  static final AuditEventSubType value110868 = AuditEventSubType._(
    value: '110868',
  );

  /// value110869
  static final AuditEventSubType value110869 = AuditEventSubType._(
    value: '110869',
  );

  /// value110870
  static final AuditEventSubType value110870 = AuditEventSubType._(
    value: '110870',
  );

  /// value110871
  static final AuditEventSubType value110871 = AuditEventSubType._(
    value: '110871',
  );

  /// value110872
  static final AuditEventSubType value110872 = AuditEventSubType._(
    value: '110872',
  );

  /// value110873
  static final AuditEventSubType value110873 = AuditEventSubType._(
    value: '110873',
  );

  /// value110874
  static final AuditEventSubType value110874 = AuditEventSubType._(
    value: '110874',
  );

  /// value110875
  static final AuditEventSubType value110875 = AuditEventSubType._(
    value: '110875',
  );

  /// value110876
  static final AuditEventSubType value110876 = AuditEventSubType._(
    value: '110876',
  );

  /// value110877
  static final AuditEventSubType value110877 = AuditEventSubType._(
    value: '110877',
  );

  /// value110901
  static final AuditEventSubType value110901 = AuditEventSubType._(
    value: '110901',
  );

  /// value110902
  static final AuditEventSubType value110902 = AuditEventSubType._(
    value: '110902',
  );

  /// value110903
  static final AuditEventSubType value110903 = AuditEventSubType._(
    value: '110903',
  );

  /// value110904
  static final AuditEventSubType value110904 = AuditEventSubType._(
    value: '110904',
  );

  /// value110905
  static final AuditEventSubType value110905 = AuditEventSubType._(
    value: '110905',
  );

  /// value110906
  static final AuditEventSubType value110906 = AuditEventSubType._(
    value: '110906',
  );

  /// value110907
  static final AuditEventSubType value110907 = AuditEventSubType._(
    value: '110907',
  );

  /// value110908
  static final AuditEventSubType value110908 = AuditEventSubType._(
    value: '110908',
  );

  /// value110909
  static final AuditEventSubType value110909 = AuditEventSubType._(
    value: '110909',
  );

  /// value110910
  static final AuditEventSubType value110910 = AuditEventSubType._(
    value: '110910',
  );

  /// value110911
  static final AuditEventSubType value110911 = AuditEventSubType._(
    value: '110911',
  );

  /// value111001
  static final AuditEventSubType value111001 = AuditEventSubType._(
    value: '111001',
  );

  /// value111002
  static final AuditEventSubType value111002 = AuditEventSubType._(
    value: '111002',
  );

  /// value111003
  static final AuditEventSubType value111003 = AuditEventSubType._(
    value: '111003',
  );

  /// value111004
  static final AuditEventSubType value111004 = AuditEventSubType._(
    value: '111004',
  );

  /// value111005
  static final AuditEventSubType value111005 = AuditEventSubType._(
    value: '111005',
  );

  /// value111006
  static final AuditEventSubType value111006 = AuditEventSubType._(
    value: '111006',
  );

  /// value111007
  static final AuditEventSubType value111007 = AuditEventSubType._(
    value: '111007',
  );

  /// value111008
  static final AuditEventSubType value111008 = AuditEventSubType._(
    value: '111008',
  );

  /// value111009
  static final AuditEventSubType value111009 = AuditEventSubType._(
    value: '111009',
  );

  /// value111010
  static final AuditEventSubType value111010 = AuditEventSubType._(
    value: '111010',
  );

  /// value111011
  static final AuditEventSubType value111011 = AuditEventSubType._(
    value: '111011',
  );

  /// value111012
  static final AuditEventSubType value111012 = AuditEventSubType._(
    value: '111012',
  );

  /// value111013
  static final AuditEventSubType value111013 = AuditEventSubType._(
    value: '111013',
  );

  /// value111014
  static final AuditEventSubType value111014 = AuditEventSubType._(
    value: '111014',
  );

  /// value111015
  static final AuditEventSubType value111015 = AuditEventSubType._(
    value: '111015',
  );

  /// value111016
  static final AuditEventSubType value111016 = AuditEventSubType._(
    value: '111016',
  );

  /// value111017
  static final AuditEventSubType value111017 = AuditEventSubType._(
    value: '111017',
  );

  /// value111018
  static final AuditEventSubType value111018 = AuditEventSubType._(
    value: '111018',
  );

  /// value111019
  static final AuditEventSubType value111019 = AuditEventSubType._(
    value: '111019',
  );

  /// value111020
  static final AuditEventSubType value111020 = AuditEventSubType._(
    value: '111020',
  );

  /// value111021
  static final AuditEventSubType value111021 = AuditEventSubType._(
    value: '111021',
  );

  /// value111022
  static final AuditEventSubType value111022 = AuditEventSubType._(
    value: '111022',
  );

  /// value111023
  static final AuditEventSubType value111023 = AuditEventSubType._(
    value: '111023',
  );

  /// value111024
  static final AuditEventSubType value111024 = AuditEventSubType._(
    value: '111024',
  );

  /// value111025
  static final AuditEventSubType value111025 = AuditEventSubType._(
    value: '111025',
  );

  /// value111026
  static final AuditEventSubType value111026 = AuditEventSubType._(
    value: '111026',
  );

  /// value111027
  static final AuditEventSubType value111027 = AuditEventSubType._(
    value: '111027',
  );

  /// value111028
  static final AuditEventSubType value111028 = AuditEventSubType._(
    value: '111028',
  );

  /// value111029
  static final AuditEventSubType value111029 = AuditEventSubType._(
    value: '111029',
  );

  /// value111030
  static final AuditEventSubType value111030 = AuditEventSubType._(
    value: '111030',
  );

  /// value111031
  static final AuditEventSubType value111031 = AuditEventSubType._(
    value: '111031',
  );

  /// value111032
  static final AuditEventSubType value111032 = AuditEventSubType._(
    value: '111032',
  );

  /// value111033
  static final AuditEventSubType value111033 = AuditEventSubType._(
    value: '111033',
  );

  /// value111034
  static final AuditEventSubType value111034 = AuditEventSubType._(
    value: '111034',
  );

  /// value111035
  static final AuditEventSubType value111035 = AuditEventSubType._(
    value: '111035',
  );

  /// value111036
  static final AuditEventSubType value111036 = AuditEventSubType._(
    value: '111036',
  );

  /// value111037
  static final AuditEventSubType value111037 = AuditEventSubType._(
    value: '111037',
  );

  /// value111038
  static final AuditEventSubType value111038 = AuditEventSubType._(
    value: '111038',
  );

  /// value111039
  static final AuditEventSubType value111039 = AuditEventSubType._(
    value: '111039',
  );

  /// value111040
  static final AuditEventSubType value111040 = AuditEventSubType._(
    value: '111040',
  );

  /// value111041
  static final AuditEventSubType value111041 = AuditEventSubType._(
    value: '111041',
  );

  /// value111042
  static final AuditEventSubType value111042 = AuditEventSubType._(
    value: '111042',
  );

  /// value111043
  static final AuditEventSubType value111043 = AuditEventSubType._(
    value: '111043',
  );

  /// value111044
  static final AuditEventSubType value111044 = AuditEventSubType._(
    value: '111044',
  );

  /// value111045
  static final AuditEventSubType value111045 = AuditEventSubType._(
    value: '111045',
  );

  /// value111046
  static final AuditEventSubType value111046 = AuditEventSubType._(
    value: '111046',
  );

  /// value111047
  static final AuditEventSubType value111047 = AuditEventSubType._(
    value: '111047',
  );

  /// value111048
  static final AuditEventSubType value111048 = AuditEventSubType._(
    value: '111048',
  );

  /// value111049
  static final AuditEventSubType value111049 = AuditEventSubType._(
    value: '111049',
  );

  /// value111050
  static final AuditEventSubType value111050 = AuditEventSubType._(
    value: '111050',
  );

  /// value111051
  static final AuditEventSubType value111051 = AuditEventSubType._(
    value: '111051',
  );

  /// value111052
  static final AuditEventSubType value111052 = AuditEventSubType._(
    value: '111052',
  );

  /// value111053
  static final AuditEventSubType value111053 = AuditEventSubType._(
    value: '111053',
  );

  /// value111054
  static final AuditEventSubType value111054 = AuditEventSubType._(
    value: '111054',
  );

  /// value111055
  static final AuditEventSubType value111055 = AuditEventSubType._(
    value: '111055',
  );

  /// value111056
  static final AuditEventSubType value111056 = AuditEventSubType._(
    value: '111056',
  );

  /// value111057
  static final AuditEventSubType value111057 = AuditEventSubType._(
    value: '111057',
  );

  /// value111058
  static final AuditEventSubType value111058 = AuditEventSubType._(
    value: '111058',
  );

  /// value111059
  static final AuditEventSubType value111059 = AuditEventSubType._(
    value: '111059',
  );

  /// value111060
  static final AuditEventSubType value111060 = AuditEventSubType._(
    value: '111060',
  );

  /// value111061
  static final AuditEventSubType value111061 = AuditEventSubType._(
    value: '111061',
  );

  /// value111062
  static final AuditEventSubType value111062 = AuditEventSubType._(
    value: '111062',
  );

  /// value111063
  static final AuditEventSubType value111063 = AuditEventSubType._(
    value: '111063',
  );

  /// value111064
  static final AuditEventSubType value111064 = AuditEventSubType._(
    value: '111064',
  );

  /// value111065
  static final AuditEventSubType value111065 = AuditEventSubType._(
    value: '111065',
  );

  /// value111066
  static final AuditEventSubType value111066 = AuditEventSubType._(
    value: '111066',
  );

  /// value111069
  static final AuditEventSubType value111069 = AuditEventSubType._(
    value: '111069',
  );

  /// value111071
  static final AuditEventSubType value111071 = AuditEventSubType._(
    value: '111071',
  );

  /// value111072
  static final AuditEventSubType value111072 = AuditEventSubType._(
    value: '111072',
  );

  /// value111081
  static final AuditEventSubType value111081 = AuditEventSubType._(
    value: '111081',
  );

  /// value111086
  static final AuditEventSubType value111086 = AuditEventSubType._(
    value: '111086',
  );

  /// value111087
  static final AuditEventSubType value111087 = AuditEventSubType._(
    value: '111087',
  );

  /// value111088
  static final AuditEventSubType value111088 = AuditEventSubType._(
    value: '111088',
  );

  /// value111089
  static final AuditEventSubType value111089 = AuditEventSubType._(
    value: '111089',
  );

  /// value111090
  static final AuditEventSubType value111090 = AuditEventSubType._(
    value: '111090',
  );

  /// value111091
  static final AuditEventSubType value111091 = AuditEventSubType._(
    value: '111091',
  );

  /// value111092
  static final AuditEventSubType value111092 = AuditEventSubType._(
    value: '111092',
  );

  /// value111093
  static final AuditEventSubType value111093 = AuditEventSubType._(
    value: '111093',
  );

  /// value111099
  static final AuditEventSubType value111099 = AuditEventSubType._(
    value: '111099',
  );

  /// value111100
  static final AuditEventSubType value111100 = AuditEventSubType._(
    value: '111100',
  );

  /// value111101
  static final AuditEventSubType value111101 = AuditEventSubType._(
    value: '111101',
  );

  /// value111102
  static final AuditEventSubType value111102 = AuditEventSubType._(
    value: '111102',
  );

  /// value111103
  static final AuditEventSubType value111103 = AuditEventSubType._(
    value: '111103',
  );

  /// value111104
  static final AuditEventSubType value111104 = AuditEventSubType._(
    value: '111104',
  );

  /// value111105
  static final AuditEventSubType value111105 = AuditEventSubType._(
    value: '111105',
  );

  /// value111111
  static final AuditEventSubType value111111 = AuditEventSubType._(
    value: '111111',
  );

  /// value111112
  static final AuditEventSubType value111112 = AuditEventSubType._(
    value: '111112',
  );

  /// value111113
  static final AuditEventSubType value111113 = AuditEventSubType._(
    value: '111113',
  );

  /// value111120
  static final AuditEventSubType value111120 = AuditEventSubType._(
    value: '111120',
  );

  /// value111121
  static final AuditEventSubType value111121 = AuditEventSubType._(
    value: '111121',
  );

  /// value111122
  static final AuditEventSubType value111122 = AuditEventSubType._(
    value: '111122',
  );

  /// value111123
  static final AuditEventSubType value111123 = AuditEventSubType._(
    value: '111123',
  );

  /// value111124
  static final AuditEventSubType value111124 = AuditEventSubType._(
    value: '111124',
  );

  /// value111125
  static final AuditEventSubType value111125 = AuditEventSubType._(
    value: '111125',
  );

  /// value111126
  static final AuditEventSubType value111126 = AuditEventSubType._(
    value: '111126',
  );

  /// value111127
  static final AuditEventSubType value111127 = AuditEventSubType._(
    value: '111127',
  );

  /// value111128
  static final AuditEventSubType value111128 = AuditEventSubType._(
    value: '111128',
  );

  /// value111129
  static final AuditEventSubType value111129 = AuditEventSubType._(
    value: '111129',
  );

  /// value111130
  static final AuditEventSubType value111130 = AuditEventSubType._(
    value: '111130',
  );

  /// value111135
  static final AuditEventSubType value111135 = AuditEventSubType._(
    value: '111135',
  );

  /// value111136
  static final AuditEventSubType value111136 = AuditEventSubType._(
    value: '111136',
  );

  /// value111137
  static final AuditEventSubType value111137 = AuditEventSubType._(
    value: '111137',
  );

  /// value111138
  static final AuditEventSubType value111138 = AuditEventSubType._(
    value: '111138',
  );

  /// value111139
  static final AuditEventSubType value111139 = AuditEventSubType._(
    value: '111139',
  );

  /// value111140
  static final AuditEventSubType value111140 = AuditEventSubType._(
    value: '111140',
  );

  /// value111141
  static final AuditEventSubType value111141 = AuditEventSubType._(
    value: '111141',
  );

  /// value111142
  static final AuditEventSubType value111142 = AuditEventSubType._(
    value: '111142',
  );

  /// value111143
  static final AuditEventSubType value111143 = AuditEventSubType._(
    value: '111143',
  );

  /// value111144
  static final AuditEventSubType value111144 = AuditEventSubType._(
    value: '111144',
  );

  /// value111145
  static final AuditEventSubType value111145 = AuditEventSubType._(
    value: '111145',
  );

  /// value111146
  static final AuditEventSubType value111146 = AuditEventSubType._(
    value: '111146',
  );

  /// value111147
  static final AuditEventSubType value111147 = AuditEventSubType._(
    value: '111147',
  );

  /// value111148
  static final AuditEventSubType value111148 = AuditEventSubType._(
    value: '111148',
  );

  /// value111149
  static final AuditEventSubType value111149 = AuditEventSubType._(
    value: '111149',
  );

  /// value111150
  static final AuditEventSubType value111150 = AuditEventSubType._(
    value: '111150',
  );

  /// value111151
  static final AuditEventSubType value111151 = AuditEventSubType._(
    value: '111151',
  );

  /// value111152
  static final AuditEventSubType value111152 = AuditEventSubType._(
    value: '111152',
  );

  /// value111153
  static final AuditEventSubType value111153 = AuditEventSubType._(
    value: '111153',
  );

  /// value111154
  static final AuditEventSubType value111154 = AuditEventSubType._(
    value: '111154',
  );

  /// value111155
  static final AuditEventSubType value111155 = AuditEventSubType._(
    value: '111155',
  );

  /// value111156
  static final AuditEventSubType value111156 = AuditEventSubType._(
    value: '111156',
  );

  /// value111157
  static final AuditEventSubType value111157 = AuditEventSubType._(
    value: '111157',
  );

  /// value111158
  static final AuditEventSubType value111158 = AuditEventSubType._(
    value: '111158',
  );

  /// value111159
  static final AuditEventSubType value111159 = AuditEventSubType._(
    value: '111159',
  );

  /// value111168
  static final AuditEventSubType value111168 = AuditEventSubType._(
    value: '111168',
  );

  /// value111170
  static final AuditEventSubType value111170 = AuditEventSubType._(
    value: '111170',
  );

  /// value111171
  static final AuditEventSubType value111171 = AuditEventSubType._(
    value: '111171',
  );

  /// value111172
  static final AuditEventSubType value111172 = AuditEventSubType._(
    value: '111172',
  );

  /// value111173
  static final AuditEventSubType value111173 = AuditEventSubType._(
    value: '111173',
  );

  /// value111174
  static final AuditEventSubType value111174 = AuditEventSubType._(
    value: '111174',
  );

  /// value111175
  static final AuditEventSubType value111175 = AuditEventSubType._(
    value: '111175',
  );

  /// value111176
  static final AuditEventSubType value111176 = AuditEventSubType._(
    value: '111176',
  );

  /// value111177
  static final AuditEventSubType value111177 = AuditEventSubType._(
    value: '111177',
  );

  /// value111178
  static final AuditEventSubType value111178 = AuditEventSubType._(
    value: '111178',
  );

  /// value111179
  static final AuditEventSubType value111179 = AuditEventSubType._(
    value: '111179',
  );

  /// value111180
  static final AuditEventSubType value111180 = AuditEventSubType._(
    value: '111180',
  );

  /// value111181
  static final AuditEventSubType value111181 = AuditEventSubType._(
    value: '111181',
  );

  /// value111182
  static final AuditEventSubType value111182 = AuditEventSubType._(
    value: '111182',
  );

  /// value111183
  static final AuditEventSubType value111183 = AuditEventSubType._(
    value: '111183',
  );

  /// value111184
  static final AuditEventSubType value111184 = AuditEventSubType._(
    value: '111184',
  );

  /// value111185
  static final AuditEventSubType value111185 = AuditEventSubType._(
    value: '111185',
  );

  /// value111186
  static final AuditEventSubType value111186 = AuditEventSubType._(
    value: '111186',
  );

  /// value111187
  static final AuditEventSubType value111187 = AuditEventSubType._(
    value: '111187',
  );

  /// value111188
  static final AuditEventSubType value111188 = AuditEventSubType._(
    value: '111188',
  );

  /// value111189
  static final AuditEventSubType value111189 = AuditEventSubType._(
    value: '111189',
  );

  /// value111190
  static final AuditEventSubType value111190 = AuditEventSubType._(
    value: '111190',
  );

  /// value111191
  static final AuditEventSubType value111191 = AuditEventSubType._(
    value: '111191',
  );

  /// value111192
  static final AuditEventSubType value111192 = AuditEventSubType._(
    value: '111192',
  );

  /// value111193
  static final AuditEventSubType value111193 = AuditEventSubType._(
    value: '111193',
  );

  /// value111194
  static final AuditEventSubType value111194 = AuditEventSubType._(
    value: '111194',
  );

  /// value111195
  static final AuditEventSubType value111195 = AuditEventSubType._(
    value: '111195',
  );

  /// value111196
  static final AuditEventSubType value111196 = AuditEventSubType._(
    value: '111196',
  );

  /// value111197
  static final AuditEventSubType value111197 = AuditEventSubType._(
    value: '111197',
  );

  /// value111198
  static final AuditEventSubType value111198 = AuditEventSubType._(
    value: '111198',
  );

  /// value111199
  static final AuditEventSubType value111199 = AuditEventSubType._(
    value: '111199',
  );

  /// value111200
  static final AuditEventSubType value111200 = AuditEventSubType._(
    value: '111200',
  );

  /// value111201
  static final AuditEventSubType value111201 = AuditEventSubType._(
    value: '111201',
  );

  /// value111202
  static final AuditEventSubType value111202 = AuditEventSubType._(
    value: '111202',
  );

  /// value111203
  static final AuditEventSubType value111203 = AuditEventSubType._(
    value: '111203',
  );

  /// value111204
  static final AuditEventSubType value111204 = AuditEventSubType._(
    value: '111204',
  );

  /// value111205
  static final AuditEventSubType value111205 = AuditEventSubType._(
    value: '111205',
  );

  /// value111206
  static final AuditEventSubType value111206 = AuditEventSubType._(
    value: '111206',
  );

  /// value111207
  static final AuditEventSubType value111207 = AuditEventSubType._(
    value: '111207',
  );

  /// value111208
  static final AuditEventSubType value111208 = AuditEventSubType._(
    value: '111208',
  );

  /// value111209
  static final AuditEventSubType value111209 = AuditEventSubType._(
    value: '111209',
  );

  /// value111210
  static final AuditEventSubType value111210 = AuditEventSubType._(
    value: '111210',
  );

  /// value111211
  static final AuditEventSubType value111211 = AuditEventSubType._(
    value: '111211',
  );

  /// value111212
  static final AuditEventSubType value111212 = AuditEventSubType._(
    value: '111212',
  );

  /// value111213
  static final AuditEventSubType value111213 = AuditEventSubType._(
    value: '111213',
  );

  /// value111214
  static final AuditEventSubType value111214 = AuditEventSubType._(
    value: '111214',
  );

  /// value111215
  static final AuditEventSubType value111215 = AuditEventSubType._(
    value: '111215',
  );

  /// value111216
  static final AuditEventSubType value111216 = AuditEventSubType._(
    value: '111216',
  );

  /// value111217
  static final AuditEventSubType value111217 = AuditEventSubType._(
    value: '111217',
  );

  /// value111218
  static final AuditEventSubType value111218 = AuditEventSubType._(
    value: '111218',
  );

  /// value111219
  static final AuditEventSubType value111219 = AuditEventSubType._(
    value: '111219',
  );

  /// value111220
  static final AuditEventSubType value111220 = AuditEventSubType._(
    value: '111220',
  );

  /// value111221
  static final AuditEventSubType value111221 = AuditEventSubType._(
    value: '111221',
  );

  /// value111222
  static final AuditEventSubType value111222 = AuditEventSubType._(
    value: '111222',
  );

  /// value111223
  static final AuditEventSubType value111223 = AuditEventSubType._(
    value: '111223',
  );

  /// value111224
  static final AuditEventSubType value111224 = AuditEventSubType._(
    value: '111224',
  );

  /// value111225
  static final AuditEventSubType value111225 = AuditEventSubType._(
    value: '111225',
  );

  /// value111233
  static final AuditEventSubType value111233 = AuditEventSubType._(
    value: '111233',
  );

  /// value111234
  static final AuditEventSubType value111234 = AuditEventSubType._(
    value: '111234',
  );

  /// value111235
  static final AuditEventSubType value111235 = AuditEventSubType._(
    value: '111235',
  );

  /// value111236
  static final AuditEventSubType value111236 = AuditEventSubType._(
    value: '111236',
  );

  /// value111237
  static final AuditEventSubType value111237 = AuditEventSubType._(
    value: '111237',
  );

  /// value111238
  static final AuditEventSubType value111238 = AuditEventSubType._(
    value: '111238',
  );

  /// value111239
  static final AuditEventSubType value111239 = AuditEventSubType._(
    value: '111239',
  );

  /// value111240
  static final AuditEventSubType value111240 = AuditEventSubType._(
    value: '111240',
  );

  /// value111241
  static final AuditEventSubType value111241 = AuditEventSubType._(
    value: '111241',
  );

  /// value111242
  static final AuditEventSubType value111242 = AuditEventSubType._(
    value: '111242',
  );

  /// value111243
  static final AuditEventSubType value111243 = AuditEventSubType._(
    value: '111243',
  );

  /// value111244
  static final AuditEventSubType value111244 = AuditEventSubType._(
    value: '111244',
  );

  /// value111245
  static final AuditEventSubType value111245 = AuditEventSubType._(
    value: '111245',
  );

  /// value111248
  static final AuditEventSubType value111248 = AuditEventSubType._(
    value: '111248',
  );

  /// value111249
  static final AuditEventSubType value111249 = AuditEventSubType._(
    value: '111249',
  );

  /// value111250
  static final AuditEventSubType value111250 = AuditEventSubType._(
    value: '111250',
  );

  /// value111251
  static final AuditEventSubType value111251 = AuditEventSubType._(
    value: '111251',
  );

  /// value111252
  static final AuditEventSubType value111252 = AuditEventSubType._(
    value: '111252',
  );

  /// value111253
  static final AuditEventSubType value111253 = AuditEventSubType._(
    value: '111253',
  );

  /// value111254
  static final AuditEventSubType value111254 = AuditEventSubType._(
    value: '111254',
  );

  /// value111255
  static final AuditEventSubType value111255 = AuditEventSubType._(
    value: '111255',
  );

  /// value111256
  static final AuditEventSubType value111256 = AuditEventSubType._(
    value: '111256',
  );

  /// value111257
  static final AuditEventSubType value111257 = AuditEventSubType._(
    value: '111257',
  );

  /// value111258
  static final AuditEventSubType value111258 = AuditEventSubType._(
    value: '111258',
  );

  /// value111259
  static final AuditEventSubType value111259 = AuditEventSubType._(
    value: '111259',
  );

  /// value111260
  static final AuditEventSubType value111260 = AuditEventSubType._(
    value: '111260',
  );

  /// value111262
  static final AuditEventSubType value111262 = AuditEventSubType._(
    value: '111262',
  );

  /// value111263
  static final AuditEventSubType value111263 = AuditEventSubType._(
    value: '111263',
  );

  /// value111264
  static final AuditEventSubType value111264 = AuditEventSubType._(
    value: '111264',
  );

  /// value111265
  static final AuditEventSubType value111265 = AuditEventSubType._(
    value: '111265',
  );

  /// value111269
  static final AuditEventSubType value111269 = AuditEventSubType._(
    value: '111269',
  );

  /// value111271
  static final AuditEventSubType value111271 = AuditEventSubType._(
    value: '111271',
  );

  /// value111273
  static final AuditEventSubType value111273 = AuditEventSubType._(
    value: '111273',
  );

  /// value111277
  static final AuditEventSubType value111277 = AuditEventSubType._(
    value: '111277',
  );

  /// value111278
  static final AuditEventSubType value111278 = AuditEventSubType._(
    value: '111278',
  );

  /// value111279
  static final AuditEventSubType value111279 = AuditEventSubType._(
    value: '111279',
  );

  /// value111281
  static final AuditEventSubType value111281 = AuditEventSubType._(
    value: '111281',
  );

  /// value111283
  static final AuditEventSubType value111283 = AuditEventSubType._(
    value: '111283',
  );

  /// value111284
  static final AuditEventSubType value111284 = AuditEventSubType._(
    value: '111284',
  );

  /// value111285
  static final AuditEventSubType value111285 = AuditEventSubType._(
    value: '111285',
  );

  /// value111286
  static final AuditEventSubType value111286 = AuditEventSubType._(
    value: '111286',
  );

  /// value111287
  static final AuditEventSubType value111287 = AuditEventSubType._(
    value: '111287',
  );

  /// value111288
  static final AuditEventSubType value111288 = AuditEventSubType._(
    value: '111288',
  );

  /// value111290
  static final AuditEventSubType value111290 = AuditEventSubType._(
    value: '111290',
  );

  /// value111291
  static final AuditEventSubType value111291 = AuditEventSubType._(
    value: '111291',
  );

  /// value111292
  static final AuditEventSubType value111292 = AuditEventSubType._(
    value: '111292',
  );

  /// value111293
  static final AuditEventSubType value111293 = AuditEventSubType._(
    value: '111293',
  );

  /// value111294
  static final AuditEventSubType value111294 = AuditEventSubType._(
    value: '111294',
  );

  /// value111296
  static final AuditEventSubType value111296 = AuditEventSubType._(
    value: '111296',
  );

  /// value111297
  static final AuditEventSubType value111297 = AuditEventSubType._(
    value: '111297',
  );

  /// value111298
  static final AuditEventSubType value111298 = AuditEventSubType._(
    value: '111298',
  );

  /// value111299
  static final AuditEventSubType value111299 = AuditEventSubType._(
    value: '111299',
  );

  /// value111300
  static final AuditEventSubType value111300 = AuditEventSubType._(
    value: '111300',
  );

  /// value111301
  static final AuditEventSubType value111301 = AuditEventSubType._(
    value: '111301',
  );

  /// value111302
  static final AuditEventSubType value111302 = AuditEventSubType._(
    value: '111302',
  );

  /// value111303
  static final AuditEventSubType value111303 = AuditEventSubType._(
    value: '111303',
  );

  /// value111304
  static final AuditEventSubType value111304 = AuditEventSubType._(
    value: '111304',
  );

  /// value111305
  static final AuditEventSubType value111305 = AuditEventSubType._(
    value: '111305',
  );

  /// value111306
  static final AuditEventSubType value111306 = AuditEventSubType._(
    value: '111306',
  );

  /// value111307
  static final AuditEventSubType value111307 = AuditEventSubType._(
    value: '111307',
  );

  /// value111308
  static final AuditEventSubType value111308 = AuditEventSubType._(
    value: '111308',
  );

  /// value111309
  static final AuditEventSubType value111309 = AuditEventSubType._(
    value: '111309',
  );

  /// value111310
  static final AuditEventSubType value111310 = AuditEventSubType._(
    value: '111310',
  );

  /// value111311
  static final AuditEventSubType value111311 = AuditEventSubType._(
    value: '111311',
  );

  /// value111312
  static final AuditEventSubType value111312 = AuditEventSubType._(
    value: '111312',
  );

  /// value111313
  static final AuditEventSubType value111313 = AuditEventSubType._(
    value: '111313',
  );

  /// value111314
  static final AuditEventSubType value111314 = AuditEventSubType._(
    value: '111314',
  );

  /// value111315
  static final AuditEventSubType value111315 = AuditEventSubType._(
    value: '111315',
  );

  /// value111316
  static final AuditEventSubType value111316 = AuditEventSubType._(
    value: '111316',
  );

  /// value111317
  static final AuditEventSubType value111317 = AuditEventSubType._(
    value: '111317',
  );

  /// value111318
  static final AuditEventSubType value111318 = AuditEventSubType._(
    value: '111318',
  );

  /// value111320
  static final AuditEventSubType value111320 = AuditEventSubType._(
    value: '111320',
  );

  /// value111321
  static final AuditEventSubType value111321 = AuditEventSubType._(
    value: '111321',
  );

  /// value111322
  static final AuditEventSubType value111322 = AuditEventSubType._(
    value: '111322',
  );

  /// value111323
  static final AuditEventSubType value111323 = AuditEventSubType._(
    value: '111323',
  );

  /// value111324
  static final AuditEventSubType value111324 = AuditEventSubType._(
    value: '111324',
  );

  /// value111325
  static final AuditEventSubType value111325 = AuditEventSubType._(
    value: '111325',
  );

  /// value111326
  static final AuditEventSubType value111326 = AuditEventSubType._(
    value: '111326',
  );

  /// value111327
  static final AuditEventSubType value111327 = AuditEventSubType._(
    value: '111327',
  );

  /// value111328
  static final AuditEventSubType value111328 = AuditEventSubType._(
    value: '111328',
  );

  /// value111329
  static final AuditEventSubType value111329 = AuditEventSubType._(
    value: '111329',
  );

  /// value111330
  static final AuditEventSubType value111330 = AuditEventSubType._(
    value: '111330',
  );

  /// value111331
  static final AuditEventSubType value111331 = AuditEventSubType._(
    value: '111331',
  );

  /// value111332
  static final AuditEventSubType value111332 = AuditEventSubType._(
    value: '111332',
  );

  /// value111333
  static final AuditEventSubType value111333 = AuditEventSubType._(
    value: '111333',
  );

  /// value111334
  static final AuditEventSubType value111334 = AuditEventSubType._(
    value: '111334',
  );

  /// value111335
  static final AuditEventSubType value111335 = AuditEventSubType._(
    value: '111335',
  );

  /// value111336
  static final AuditEventSubType value111336 = AuditEventSubType._(
    value: '111336',
  );

  /// value111338
  static final AuditEventSubType value111338 = AuditEventSubType._(
    value: '111338',
  );

  /// value111340
  static final AuditEventSubType value111340 = AuditEventSubType._(
    value: '111340',
  );

  /// value111341
  static final AuditEventSubType value111341 = AuditEventSubType._(
    value: '111341',
  );

  /// value111342
  static final AuditEventSubType value111342 = AuditEventSubType._(
    value: '111342',
  );

  /// value111343
  static final AuditEventSubType value111343 = AuditEventSubType._(
    value: '111343',
  );

  /// value111344
  static final AuditEventSubType value111344 = AuditEventSubType._(
    value: '111344',
  );

  /// value111345
  static final AuditEventSubType value111345 = AuditEventSubType._(
    value: '111345',
  );

  /// value111346
  static final AuditEventSubType value111346 = AuditEventSubType._(
    value: '111346',
  );

  /// value111347
  static final AuditEventSubType value111347 = AuditEventSubType._(
    value: '111347',
  );

  /// value111350
  static final AuditEventSubType value111350 = AuditEventSubType._(
    value: '111350',
  );

  /// value111351
  static final AuditEventSubType value111351 = AuditEventSubType._(
    value: '111351',
  );

  /// value111352
  static final AuditEventSubType value111352 = AuditEventSubType._(
    value: '111352',
  );

  /// value111353
  static final AuditEventSubType value111353 = AuditEventSubType._(
    value: '111353',
  );

  /// value111354
  static final AuditEventSubType value111354 = AuditEventSubType._(
    value: '111354',
  );

  /// value111355
  static final AuditEventSubType value111355 = AuditEventSubType._(
    value: '111355',
  );

  /// value111356
  static final AuditEventSubType value111356 = AuditEventSubType._(
    value: '111356',
  );

  /// value111357
  static final AuditEventSubType value111357 = AuditEventSubType._(
    value: '111357',
  );

  /// value111358
  static final AuditEventSubType value111358 = AuditEventSubType._(
    value: '111358',
  );

  /// value111359
  static final AuditEventSubType value111359 = AuditEventSubType._(
    value: '111359',
  );

  /// value111360
  static final AuditEventSubType value111360 = AuditEventSubType._(
    value: '111360',
  );

  /// value111361
  static final AuditEventSubType value111361 = AuditEventSubType._(
    value: '111361',
  );

  /// value111362
  static final AuditEventSubType value111362 = AuditEventSubType._(
    value: '111362',
  );

  /// value111363
  static final AuditEventSubType value111363 = AuditEventSubType._(
    value: '111363',
  );

  /// value111364
  static final AuditEventSubType value111364 = AuditEventSubType._(
    value: '111364',
  );

  /// value111365
  static final AuditEventSubType value111365 = AuditEventSubType._(
    value: '111365',
  );

  /// value111366
  static final AuditEventSubType value111366 = AuditEventSubType._(
    value: '111366',
  );

  /// value111367
  static final AuditEventSubType value111367 = AuditEventSubType._(
    value: '111367',
  );

  /// value111368
  static final AuditEventSubType value111368 = AuditEventSubType._(
    value: '111368',
  );

  /// value111369
  static final AuditEventSubType value111369 = AuditEventSubType._(
    value: '111369',
  );

  /// value111370
  static final AuditEventSubType value111370 = AuditEventSubType._(
    value: '111370',
  );

  /// value111371
  static final AuditEventSubType value111371 = AuditEventSubType._(
    value: '111371',
  );

  /// value111372
  static final AuditEventSubType value111372 = AuditEventSubType._(
    value: '111372',
  );

  /// value111373
  static final AuditEventSubType value111373 = AuditEventSubType._(
    value: '111373',
  );

  /// value111374
  static final AuditEventSubType value111374 = AuditEventSubType._(
    value: '111374',
  );

  /// value111375
  static final AuditEventSubType value111375 = AuditEventSubType._(
    value: '111375',
  );

  /// value111376
  static final AuditEventSubType value111376 = AuditEventSubType._(
    value: '111376',
  );

  /// value111377
  static final AuditEventSubType value111377 = AuditEventSubType._(
    value: '111377',
  );

  /// value111380
  static final AuditEventSubType value111380 = AuditEventSubType._(
    value: '111380',
  );

  /// value111381
  static final AuditEventSubType value111381 = AuditEventSubType._(
    value: '111381',
  );

  /// value111382
  static final AuditEventSubType value111382 = AuditEventSubType._(
    value: '111382',
  );

  /// value111383
  static final AuditEventSubType value111383 = AuditEventSubType._(
    value: '111383',
  );

  /// value111384
  static final AuditEventSubType value111384 = AuditEventSubType._(
    value: '111384',
  );

  /// value111385
  static final AuditEventSubType value111385 = AuditEventSubType._(
    value: '111385',
  );

  /// value111386
  static final AuditEventSubType value111386 = AuditEventSubType._(
    value: '111386',
  );

  /// value111387
  static final AuditEventSubType value111387 = AuditEventSubType._(
    value: '111387',
  );

  /// value111388
  static final AuditEventSubType value111388 = AuditEventSubType._(
    value: '111388',
  );

  /// value111389
  static final AuditEventSubType value111389 = AuditEventSubType._(
    value: '111389',
  );

  /// value111390
  static final AuditEventSubType value111390 = AuditEventSubType._(
    value: '111390',
  );

  /// value111391
  static final AuditEventSubType value111391 = AuditEventSubType._(
    value: '111391',
  );

  /// value111392
  static final AuditEventSubType value111392 = AuditEventSubType._(
    value: '111392',
  );

  /// value111393
  static final AuditEventSubType value111393 = AuditEventSubType._(
    value: '111393',
  );

  /// value111394
  static final AuditEventSubType value111394 = AuditEventSubType._(
    value: '111394',
  );

  /// value111395
  static final AuditEventSubType value111395 = AuditEventSubType._(
    value: '111395',
  );

  /// value111396
  static final AuditEventSubType value111396 = AuditEventSubType._(
    value: '111396',
  );

  /// value111397
  static final AuditEventSubType value111397 = AuditEventSubType._(
    value: '111397',
  );

  /// value111398
  static final AuditEventSubType value111398 = AuditEventSubType._(
    value: '111398',
  );

  /// value111399
  static final AuditEventSubType value111399 = AuditEventSubType._(
    value: '111399',
  );

  /// value111400
  static final AuditEventSubType value111400 = AuditEventSubType._(
    value: '111400',
  );

  /// value111401
  static final AuditEventSubType value111401 = AuditEventSubType._(
    value: '111401',
  );

  /// value111402
  static final AuditEventSubType value111402 = AuditEventSubType._(
    value: '111402',
  );

  /// value111403
  static final AuditEventSubType value111403 = AuditEventSubType._(
    value: '111403',
  );

  /// value111404
  static final AuditEventSubType value111404 = AuditEventSubType._(
    value: '111404',
  );

  /// value111405
  static final AuditEventSubType value111405 = AuditEventSubType._(
    value: '111405',
  );

  /// value111406
  static final AuditEventSubType value111406 = AuditEventSubType._(
    value: '111406',
  );

  /// value111407
  static final AuditEventSubType value111407 = AuditEventSubType._(
    value: '111407',
  );

  /// value111408
  static final AuditEventSubType value111408 = AuditEventSubType._(
    value: '111408',
  );

  /// value111409
  static final AuditEventSubType value111409 = AuditEventSubType._(
    value: '111409',
  );

  /// value111410
  static final AuditEventSubType value111410 = AuditEventSubType._(
    value: '111410',
  );

  /// value111411
  static final AuditEventSubType value111411 = AuditEventSubType._(
    value: '111411',
  );

  /// value111412
  static final AuditEventSubType value111412 = AuditEventSubType._(
    value: '111412',
  );

  /// value111413
  static final AuditEventSubType value111413 = AuditEventSubType._(
    value: '111413',
  );

  /// value111414
  static final AuditEventSubType value111414 = AuditEventSubType._(
    value: '111414',
  );

  /// value111415
  static final AuditEventSubType value111415 = AuditEventSubType._(
    value: '111415',
  );

  /// value111416
  static final AuditEventSubType value111416 = AuditEventSubType._(
    value: '111416',
  );

  /// value111417
  static final AuditEventSubType value111417 = AuditEventSubType._(
    value: '111417',
  );

  /// value111418
  static final AuditEventSubType value111418 = AuditEventSubType._(
    value: '111418',
  );

  /// value111419
  static final AuditEventSubType value111419 = AuditEventSubType._(
    value: '111419',
  );

  /// value111420
  static final AuditEventSubType value111420 = AuditEventSubType._(
    value: '111420',
  );

  /// value111421
  static final AuditEventSubType value111421 = AuditEventSubType._(
    value: '111421',
  );

  /// value111423
  static final AuditEventSubType value111423 = AuditEventSubType._(
    value: '111423',
  );

  /// value111424
  static final AuditEventSubType value111424 = AuditEventSubType._(
    value: '111424',
  );

  /// value111425
  static final AuditEventSubType value111425 = AuditEventSubType._(
    value: '111425',
  );

  /// value111426
  static final AuditEventSubType value111426 = AuditEventSubType._(
    value: '111426',
  );

  /// value111427
  static final AuditEventSubType value111427 = AuditEventSubType._(
    value: '111427',
  );

  /// value111428
  static final AuditEventSubType value111428 = AuditEventSubType._(
    value: '111428',
  );

  /// value111429
  static final AuditEventSubType value111429 = AuditEventSubType._(
    value: '111429',
  );

  /// value111430
  static final AuditEventSubType value111430 = AuditEventSubType._(
    value: '111430',
  );

  /// value111431
  static final AuditEventSubType value111431 = AuditEventSubType._(
    value: '111431',
  );

  /// value111432
  static final AuditEventSubType value111432 = AuditEventSubType._(
    value: '111432',
  );

  /// value111433
  static final AuditEventSubType value111433 = AuditEventSubType._(
    value: '111433',
  );

  /// value111434
  static final AuditEventSubType value111434 = AuditEventSubType._(
    value: '111434',
  );

  /// value111435
  static final AuditEventSubType value111435 = AuditEventSubType._(
    value: '111435',
  );

  /// value111436
  static final AuditEventSubType value111436 = AuditEventSubType._(
    value: '111436',
  );

  /// value111437
  static final AuditEventSubType value111437 = AuditEventSubType._(
    value: '111437',
  );

  /// value111438
  static final AuditEventSubType value111438 = AuditEventSubType._(
    value: '111438',
  );

  /// value111439
  static final AuditEventSubType value111439 = AuditEventSubType._(
    value: '111439',
  );

  /// value111440
  static final AuditEventSubType value111440 = AuditEventSubType._(
    value: '111440',
  );

  /// value111441
  static final AuditEventSubType value111441 = AuditEventSubType._(
    value: '111441',
  );

  /// value111442
  static final AuditEventSubType value111442 = AuditEventSubType._(
    value: '111442',
  );

  /// value111443
  static final AuditEventSubType value111443 = AuditEventSubType._(
    value: '111443',
  );

  /// value111444
  static final AuditEventSubType value111444 = AuditEventSubType._(
    value: '111444',
  );

  /// value111445
  static final AuditEventSubType value111445 = AuditEventSubType._(
    value: '111445',
  );

  /// value111446
  static final AuditEventSubType value111446 = AuditEventSubType._(
    value: '111446',
  );

  /// value111447
  static final AuditEventSubType value111447 = AuditEventSubType._(
    value: '111447',
  );

  /// value111448
  static final AuditEventSubType value111448 = AuditEventSubType._(
    value: '111448',
  );

  /// value111449
  static final AuditEventSubType value111449 = AuditEventSubType._(
    value: '111449',
  );

  /// value111450
  static final AuditEventSubType value111450 = AuditEventSubType._(
    value: '111450',
  );

  /// value111451
  static final AuditEventSubType value111451 = AuditEventSubType._(
    value: '111451',
  );

  /// value111452
  static final AuditEventSubType value111452 = AuditEventSubType._(
    value: '111452',
  );

  /// value111453
  static final AuditEventSubType value111453 = AuditEventSubType._(
    value: '111453',
  );

  /// value111454
  static final AuditEventSubType value111454 = AuditEventSubType._(
    value: '111454',
  );

  /// value111455
  static final AuditEventSubType value111455 = AuditEventSubType._(
    value: '111455',
  );

  /// value111456
  static final AuditEventSubType value111456 = AuditEventSubType._(
    value: '111456',
  );

  /// value111457
  static final AuditEventSubType value111457 = AuditEventSubType._(
    value: '111457',
  );

  /// value111458
  static final AuditEventSubType value111458 = AuditEventSubType._(
    value: '111458',
  );

  /// value111459
  static final AuditEventSubType value111459 = AuditEventSubType._(
    value: '111459',
  );

  /// value111460
  static final AuditEventSubType value111460 = AuditEventSubType._(
    value: '111460',
  );

  /// value111461
  static final AuditEventSubType value111461 = AuditEventSubType._(
    value: '111461',
  );

  /// value111462
  static final AuditEventSubType value111462 = AuditEventSubType._(
    value: '111462',
  );

  /// value111463
  static final AuditEventSubType value111463 = AuditEventSubType._(
    value: '111463',
  );

  /// value111464
  static final AuditEventSubType value111464 = AuditEventSubType._(
    value: '111464',
  );

  /// value111465
  static final AuditEventSubType value111465 = AuditEventSubType._(
    value: '111465',
  );

  /// value111466
  static final AuditEventSubType value111466 = AuditEventSubType._(
    value: '111466',
  );

  /// value111467
  static final AuditEventSubType value111467 = AuditEventSubType._(
    value: '111467',
  );

  /// value111468
  static final AuditEventSubType value111468 = AuditEventSubType._(
    value: '111468',
  );

  /// value111469
  static final AuditEventSubType value111469 = AuditEventSubType._(
    value: '111469',
  );

  /// value111470
  static final AuditEventSubType value111470 = AuditEventSubType._(
    value: '111470',
  );

  /// value111471
  static final AuditEventSubType value111471 = AuditEventSubType._(
    value: '111471',
  );

  /// value111472
  static final AuditEventSubType value111472 = AuditEventSubType._(
    value: '111472',
  );

  /// value111473
  static final AuditEventSubType value111473 = AuditEventSubType._(
    value: '111473',
  );

  /// value111474
  static final AuditEventSubType value111474 = AuditEventSubType._(
    value: '111474',
  );

  /// value111475
  static final AuditEventSubType value111475 = AuditEventSubType._(
    value: '111475',
  );

  /// value111476
  static final AuditEventSubType value111476 = AuditEventSubType._(
    value: '111476',
  );

  /// value111477
  static final AuditEventSubType value111477 = AuditEventSubType._(
    value: '111477',
  );

  /// value111478
  static final AuditEventSubType value111478 = AuditEventSubType._(
    value: '111478',
  );

  /// value111479
  static final AuditEventSubType value111479 = AuditEventSubType._(
    value: '111479',
  );

  /// value111480
  static final AuditEventSubType value111480 = AuditEventSubType._(
    value: '111480',
  );

  /// value111481
  static final AuditEventSubType value111481 = AuditEventSubType._(
    value: '111481',
  );

  /// value111482
  static final AuditEventSubType value111482 = AuditEventSubType._(
    value: '111482',
  );

  /// value111483
  static final AuditEventSubType value111483 = AuditEventSubType._(
    value: '111483',
  );

  /// value111484
  static final AuditEventSubType value111484 = AuditEventSubType._(
    value: '111484',
  );

  /// value111485
  static final AuditEventSubType value111485 = AuditEventSubType._(
    value: '111485',
  );

  /// value111486
  static final AuditEventSubType value111486 = AuditEventSubType._(
    value: '111486',
  );

  /// value111487
  static final AuditEventSubType value111487 = AuditEventSubType._(
    value: '111487',
  );

  /// value111488
  static final AuditEventSubType value111488 = AuditEventSubType._(
    value: '111488',
  );

  /// value111489
  static final AuditEventSubType value111489 = AuditEventSubType._(
    value: '111489',
  );

  /// value111490
  static final AuditEventSubType value111490 = AuditEventSubType._(
    value: '111490',
  );

  /// value111491
  static final AuditEventSubType value111491 = AuditEventSubType._(
    value: '111491',
  );

  /// value111492
  static final AuditEventSubType value111492 = AuditEventSubType._(
    value: '111492',
  );

  /// value111494
  static final AuditEventSubType value111494 = AuditEventSubType._(
    value: '111494',
  );

  /// value111495
  static final AuditEventSubType value111495 = AuditEventSubType._(
    value: '111495',
  );

  /// value111496
  static final AuditEventSubType value111496 = AuditEventSubType._(
    value: '111496',
  );

  /// value111497
  static final AuditEventSubType value111497 = AuditEventSubType._(
    value: '111497',
  );

  /// value111498
  static final AuditEventSubType value111498 = AuditEventSubType._(
    value: '111498',
  );

  /// value111499
  static final AuditEventSubType value111499 = AuditEventSubType._(
    value: '111499',
  );

  /// value111500
  static final AuditEventSubType value111500 = AuditEventSubType._(
    value: '111500',
  );

  /// value111501
  static final AuditEventSubType value111501 = AuditEventSubType._(
    value: '111501',
  );

  /// value111502
  static final AuditEventSubType value111502 = AuditEventSubType._(
    value: '111502',
  );

  /// value111503
  static final AuditEventSubType value111503 = AuditEventSubType._(
    value: '111503',
  );

  /// value111504
  static final AuditEventSubType value111504 = AuditEventSubType._(
    value: '111504',
  );

  /// value111505
  static final AuditEventSubType value111505 = AuditEventSubType._(
    value: '111505',
  );

  /// value111506
  static final AuditEventSubType value111506 = AuditEventSubType._(
    value: '111506',
  );

  /// value111507
  static final AuditEventSubType value111507 = AuditEventSubType._(
    value: '111507',
  );

  /// value111508
  static final AuditEventSubType value111508 = AuditEventSubType._(
    value: '111508',
  );

  /// value111509
  static final AuditEventSubType value111509 = AuditEventSubType._(
    value: '111509',
  );

  /// value111510
  static final AuditEventSubType value111510 = AuditEventSubType._(
    value: '111510',
  );

  /// value111511
  static final AuditEventSubType value111511 = AuditEventSubType._(
    value: '111511',
  );

  /// value111512
  static final AuditEventSubType value111512 = AuditEventSubType._(
    value: '111512',
  );

  /// value111513
  static final AuditEventSubType value111513 = AuditEventSubType._(
    value: '111513',
  );

  /// value111514
  static final AuditEventSubType value111514 = AuditEventSubType._(
    value: '111514',
  );

  /// value111515
  static final AuditEventSubType value111515 = AuditEventSubType._(
    value: '111515',
  );

  /// value111516
  static final AuditEventSubType value111516 = AuditEventSubType._(
    value: '111516',
  );

  /// value111517
  static final AuditEventSubType value111517 = AuditEventSubType._(
    value: '111517',
  );

  /// value111518
  static final AuditEventSubType value111518 = AuditEventSubType._(
    value: '111518',
  );

  /// value111519
  static final AuditEventSubType value111519 = AuditEventSubType._(
    value: '111519',
  );

  /// value111520
  static final AuditEventSubType value111520 = AuditEventSubType._(
    value: '111520',
  );

  /// value111521
  static final AuditEventSubType value111521 = AuditEventSubType._(
    value: '111521',
  );

  /// value111522
  static final AuditEventSubType value111522 = AuditEventSubType._(
    value: '111522',
  );

  /// value111523
  static final AuditEventSubType value111523 = AuditEventSubType._(
    value: '111523',
  );

  /// value111524
  static final AuditEventSubType value111524 = AuditEventSubType._(
    value: '111524',
  );

  /// value111525
  static final AuditEventSubType value111525 = AuditEventSubType._(
    value: '111525',
  );

  /// value111526
  static final AuditEventSubType value111526 = AuditEventSubType._(
    value: '111526',
  );

  /// value111527
  static final AuditEventSubType value111527 = AuditEventSubType._(
    value: '111527',
  );

  /// value111528
  static final AuditEventSubType value111528 = AuditEventSubType._(
    value: '111528',
  );

  /// value111529
  static final AuditEventSubType value111529 = AuditEventSubType._(
    value: '111529',
  );

  /// value111530
  static final AuditEventSubType value111530 = AuditEventSubType._(
    value: '111530',
  );

  /// value111531
  static final AuditEventSubType value111531 = AuditEventSubType._(
    value: '111531',
  );

  /// value111532
  static final AuditEventSubType value111532 = AuditEventSubType._(
    value: '111532',
  );

  /// value111533
  static final AuditEventSubType value111533 = AuditEventSubType._(
    value: '111533',
  );

  /// value111534
  static final AuditEventSubType value111534 = AuditEventSubType._(
    value: '111534',
  );

  /// value111535
  static final AuditEventSubType value111535 = AuditEventSubType._(
    value: '111535',
  );

  /// value111536
  static final AuditEventSubType value111536 = AuditEventSubType._(
    value: '111536',
  );

  /// value111537
  static final AuditEventSubType value111537 = AuditEventSubType._(
    value: '111537',
  );

  /// value111538
  static final AuditEventSubType value111538 = AuditEventSubType._(
    value: '111538',
  );

  /// value111539
  static final AuditEventSubType value111539 = AuditEventSubType._(
    value: '111539',
  );

  /// value111540
  static final AuditEventSubType value111540 = AuditEventSubType._(
    value: '111540',
  );

  /// value111541
  static final AuditEventSubType value111541 = AuditEventSubType._(
    value: '111541',
  );

  /// value111542
  static final AuditEventSubType value111542 = AuditEventSubType._(
    value: '111542',
  );

  /// value111543
  static final AuditEventSubType value111543 = AuditEventSubType._(
    value: '111543',
  );

  /// value111544
  static final AuditEventSubType value111544 = AuditEventSubType._(
    value: '111544',
  );

  /// value111545
  static final AuditEventSubType value111545 = AuditEventSubType._(
    value: '111545',
  );

  /// value111546
  static final AuditEventSubType value111546 = AuditEventSubType._(
    value: '111546',
  );

  /// value111547
  static final AuditEventSubType value111547 = AuditEventSubType._(
    value: '111547',
  );

  /// value111548
  static final AuditEventSubType value111548 = AuditEventSubType._(
    value: '111548',
  );

  /// value111549
  static final AuditEventSubType value111549 = AuditEventSubType._(
    value: '111549',
  );

  /// value111550
  static final AuditEventSubType value111550 = AuditEventSubType._(
    value: '111550',
  );

  /// value111551
  static final AuditEventSubType value111551 = AuditEventSubType._(
    value: '111551',
  );

  /// value111552
  static final AuditEventSubType value111552 = AuditEventSubType._(
    value: '111552',
  );

  /// value111553
  static final AuditEventSubType value111553 = AuditEventSubType._(
    value: '111553',
  );

  /// value111554
  static final AuditEventSubType value111554 = AuditEventSubType._(
    value: '111554',
  );

  /// value111555
  static final AuditEventSubType value111555 = AuditEventSubType._(
    value: '111555',
  );

  /// value111556
  static final AuditEventSubType value111556 = AuditEventSubType._(
    value: '111556',
  );

  /// value111557
  static final AuditEventSubType value111557 = AuditEventSubType._(
    value: '111557',
  );

  /// value111558
  static final AuditEventSubType value111558 = AuditEventSubType._(
    value: '111558',
  );

  /// value111559
  static final AuditEventSubType value111559 = AuditEventSubType._(
    value: '111559',
  );

  /// value111560
  static final AuditEventSubType value111560 = AuditEventSubType._(
    value: '111560',
  );

  /// value111561
  static final AuditEventSubType value111561 = AuditEventSubType._(
    value: '111561',
  );

  /// value111562
  static final AuditEventSubType value111562 = AuditEventSubType._(
    value: '111562',
  );

  /// value111563
  static final AuditEventSubType value111563 = AuditEventSubType._(
    value: '111563',
  );

  /// value111564
  static final AuditEventSubType value111564 = AuditEventSubType._(
    value: '111564',
  );

  /// value111565
  static final AuditEventSubType value111565 = AuditEventSubType._(
    value: '111565',
  );

  /// value111566
  static final AuditEventSubType value111566 = AuditEventSubType._(
    value: '111566',
  );

  /// value111567
  static final AuditEventSubType value111567 = AuditEventSubType._(
    value: '111567',
  );

  /// value111568
  static final AuditEventSubType value111568 = AuditEventSubType._(
    value: '111568',
  );

  /// value111569
  static final AuditEventSubType value111569 = AuditEventSubType._(
    value: '111569',
  );

  /// value111570
  static final AuditEventSubType value111570 = AuditEventSubType._(
    value: '111570',
  );

  /// value111571
  static final AuditEventSubType value111571 = AuditEventSubType._(
    value: '111571',
  );

  /// value111572
  static final AuditEventSubType value111572 = AuditEventSubType._(
    value: '111572',
  );

  /// value111573
  static final AuditEventSubType value111573 = AuditEventSubType._(
    value: '111573',
  );

  /// value111574
  static final AuditEventSubType value111574 = AuditEventSubType._(
    value: '111574',
  );

  /// value111575
  static final AuditEventSubType value111575 = AuditEventSubType._(
    value: '111575',
  );

  /// value111576
  static final AuditEventSubType value111576 = AuditEventSubType._(
    value: '111576',
  );

  /// value111577
  static final AuditEventSubType value111577 = AuditEventSubType._(
    value: '111577',
  );

  /// value111578
  static final AuditEventSubType value111578 = AuditEventSubType._(
    value: '111578',
  );

  /// value111579
  static final AuditEventSubType value111579 = AuditEventSubType._(
    value: '111579',
  );

  /// value111580
  static final AuditEventSubType value111580 = AuditEventSubType._(
    value: '111580',
  );

  /// value111581
  static final AuditEventSubType value111581 = AuditEventSubType._(
    value: '111581',
  );

  /// value111582
  static final AuditEventSubType value111582 = AuditEventSubType._(
    value: '111582',
  );

  /// value111583
  static final AuditEventSubType value111583 = AuditEventSubType._(
    value: '111583',
  );

  /// value111584
  static final AuditEventSubType value111584 = AuditEventSubType._(
    value: '111584',
  );

  /// value111585
  static final AuditEventSubType value111585 = AuditEventSubType._(
    value: '111585',
  );

  /// value111586
  static final AuditEventSubType value111586 = AuditEventSubType._(
    value: '111586',
  );

  /// value111587
  static final AuditEventSubType value111587 = AuditEventSubType._(
    value: '111587',
  );

  /// value111590
  static final AuditEventSubType value111590 = AuditEventSubType._(
    value: '111590',
  );

  /// value111591
  static final AuditEventSubType value111591 = AuditEventSubType._(
    value: '111591',
  );

  /// value111592
  static final AuditEventSubType value111592 = AuditEventSubType._(
    value: '111592',
  );

  /// value111593
  static final AuditEventSubType value111593 = AuditEventSubType._(
    value: '111593',
  );

  /// value111601
  static final AuditEventSubType value111601 = AuditEventSubType._(
    value: '111601',
  );

  /// value111602
  static final AuditEventSubType value111602 = AuditEventSubType._(
    value: '111602',
  );

  /// value111603
  static final AuditEventSubType value111603 = AuditEventSubType._(
    value: '111603',
  );

  /// value111604
  static final AuditEventSubType value111604 = AuditEventSubType._(
    value: '111604',
  );

  /// value111605
  static final AuditEventSubType value111605 = AuditEventSubType._(
    value: '111605',
  );

  /// value111606
  static final AuditEventSubType value111606 = AuditEventSubType._(
    value: '111606',
  );

  /// value111607
  static final AuditEventSubType value111607 = AuditEventSubType._(
    value: '111607',
  );

  /// value111609
  static final AuditEventSubType value111609 = AuditEventSubType._(
    value: '111609',
  );

  /// value111621
  static final AuditEventSubType value111621 = AuditEventSubType._(
    value: '111621',
  );

  /// value111622
  static final AuditEventSubType value111622 = AuditEventSubType._(
    value: '111622',
  );

  /// value111623
  static final AuditEventSubType value111623 = AuditEventSubType._(
    value: '111623',
  );

  /// value111625
  static final AuditEventSubType value111625 = AuditEventSubType._(
    value: '111625',
  );

  /// value111626
  static final AuditEventSubType value111626 = AuditEventSubType._(
    value: '111626',
  );

  /// value111627
  static final AuditEventSubType value111627 = AuditEventSubType._(
    value: '111627',
  );

  /// value111628
  static final AuditEventSubType value111628 = AuditEventSubType._(
    value: '111628',
  );

  /// value111629
  static final AuditEventSubType value111629 = AuditEventSubType._(
    value: '111629',
  );

  /// value111630
  static final AuditEventSubType value111630 = AuditEventSubType._(
    value: '111630',
  );

  /// value111631
  static final AuditEventSubType value111631 = AuditEventSubType._(
    value: '111631',
  );

  /// value111632
  static final AuditEventSubType value111632 = AuditEventSubType._(
    value: '111632',
  );

  /// value111633
  static final AuditEventSubType value111633 = AuditEventSubType._(
    value: '111633',
  );

  /// value111634
  static final AuditEventSubType value111634 = AuditEventSubType._(
    value: '111634',
  );

  /// value111635
  static final AuditEventSubType value111635 = AuditEventSubType._(
    value: '111635',
  );

  /// value111636
  static final AuditEventSubType value111636 = AuditEventSubType._(
    value: '111636',
  );

  /// value111637
  static final AuditEventSubType value111637 = AuditEventSubType._(
    value: '111637',
  );

  /// value111638
  static final AuditEventSubType value111638 = AuditEventSubType._(
    value: '111638',
  );

  /// value111641
  static final AuditEventSubType value111641 = AuditEventSubType._(
    value: '111641',
  );

  /// value111642
  static final AuditEventSubType value111642 = AuditEventSubType._(
    value: '111642',
  );

  /// value111643
  static final AuditEventSubType value111643 = AuditEventSubType._(
    value: '111643',
  );

  /// value111644
  static final AuditEventSubType value111644 = AuditEventSubType._(
    value: '111644',
  );

  /// value111645
  static final AuditEventSubType value111645 = AuditEventSubType._(
    value: '111645',
  );

  /// value111646
  static final AuditEventSubType value111646 = AuditEventSubType._(
    value: '111646',
  );

  /// value111671
  static final AuditEventSubType value111671 = AuditEventSubType._(
    value: '111671',
  );

  /// value111672
  static final AuditEventSubType value111672 = AuditEventSubType._(
    value: '111672',
  );

  /// value111673
  static final AuditEventSubType value111673 = AuditEventSubType._(
    value: '111673',
  );

  /// value111674
  static final AuditEventSubType value111674 = AuditEventSubType._(
    value: '111674',
  );

  /// value111675
  static final AuditEventSubType value111675 = AuditEventSubType._(
    value: '111675',
  );

  /// value111676
  static final AuditEventSubType value111676 = AuditEventSubType._(
    value: '111676',
  );

  /// value111677
  static final AuditEventSubType value111677 = AuditEventSubType._(
    value: '111677',
  );

  /// value111678
  static final AuditEventSubType value111678 = AuditEventSubType._(
    value: '111678',
  );

  /// value111679
  static final AuditEventSubType value111679 = AuditEventSubType._(
    value: '111679',
  );

  /// value111680
  static final AuditEventSubType value111680 = AuditEventSubType._(
    value: '111680',
  );

  /// value111685
  static final AuditEventSubType value111685 = AuditEventSubType._(
    value: '111685',
  );

  /// value111686
  static final AuditEventSubType value111686 = AuditEventSubType._(
    value: '111686',
  );

  /// value111687
  static final AuditEventSubType value111687 = AuditEventSubType._(
    value: '111687',
  );

  /// value111688
  static final AuditEventSubType value111688 = AuditEventSubType._(
    value: '111688',
  );

  /// value111689
  static final AuditEventSubType value111689 = AuditEventSubType._(
    value: '111689',
  );

  /// value111690
  static final AuditEventSubType value111690 = AuditEventSubType._(
    value: '111690',
  );

  /// value111691
  static final AuditEventSubType value111691 = AuditEventSubType._(
    value: '111691',
  );

  /// value111692
  static final AuditEventSubType value111692 = AuditEventSubType._(
    value: '111692',
  );

  /// value111693
  static final AuditEventSubType value111693 = AuditEventSubType._(
    value: '111693',
  );

  /// value111694
  static final AuditEventSubType value111694 = AuditEventSubType._(
    value: '111694',
  );

  /// value111695
  static final AuditEventSubType value111695 = AuditEventSubType._(
    value: '111695',
  );

  /// value111696
  static final AuditEventSubType value111696 = AuditEventSubType._(
    value: '111696',
  );

  /// value111697
  static final AuditEventSubType value111697 = AuditEventSubType._(
    value: '111697',
  );

  /// value111698
  static final AuditEventSubType value111698 = AuditEventSubType._(
    value: '111698',
  );

  /// value111700
  static final AuditEventSubType value111700 = AuditEventSubType._(
    value: '111700',
  );

  /// value111701
  static final AuditEventSubType value111701 = AuditEventSubType._(
    value: '111701',
  );

  /// value111702
  static final AuditEventSubType value111702 = AuditEventSubType._(
    value: '111702',
  );

  /// value111703
  static final AuditEventSubType value111703 = AuditEventSubType._(
    value: '111703',
  );

  /// value111704
  static final AuditEventSubType value111704 = AuditEventSubType._(
    value: '111704',
  );

  /// value111705
  static final AuditEventSubType value111705 = AuditEventSubType._(
    value: '111705',
  );

  /// value111706
  static final AuditEventSubType value111706 = AuditEventSubType._(
    value: '111706',
  );

  /// value111707
  static final AuditEventSubType value111707 = AuditEventSubType._(
    value: '111707',
  );

  /// value111708
  static final AuditEventSubType value111708 = AuditEventSubType._(
    value: '111708',
  );

  /// value111709
  static final AuditEventSubType value111709 = AuditEventSubType._(
    value: '111709',
  );

  /// value111710
  static final AuditEventSubType value111710 = AuditEventSubType._(
    value: '111710',
  );

  /// value111711
  static final AuditEventSubType value111711 = AuditEventSubType._(
    value: '111711',
  );

  /// value111712
  static final AuditEventSubType value111712 = AuditEventSubType._(
    value: '111712',
  );

  /// value111718
  static final AuditEventSubType value111718 = AuditEventSubType._(
    value: '111718',
  );

  /// value111719
  static final AuditEventSubType value111719 = AuditEventSubType._(
    value: '111719',
  );

  /// value111720
  static final AuditEventSubType value111720 = AuditEventSubType._(
    value: '111720',
  );

  /// value111721
  static final AuditEventSubType value111721 = AuditEventSubType._(
    value: '111721',
  );

  /// value111723
  static final AuditEventSubType value111723 = AuditEventSubType._(
    value: '111723',
  );

  /// value111724
  static final AuditEventSubType value111724 = AuditEventSubType._(
    value: '111724',
  );

  /// value111726
  static final AuditEventSubType value111726 = AuditEventSubType._(
    value: '111726',
  );

  /// value111727
  static final AuditEventSubType value111727 = AuditEventSubType._(
    value: '111727',
  );

  /// value111729
  static final AuditEventSubType value111729 = AuditEventSubType._(
    value: '111729',
  );

  /// value111741
  static final AuditEventSubType value111741 = AuditEventSubType._(
    value: '111741',
  );

  /// value111742
  static final AuditEventSubType value111742 = AuditEventSubType._(
    value: '111742',
  );

  /// value111743
  static final AuditEventSubType value111743 = AuditEventSubType._(
    value: '111743',
  );

  /// value111744
  static final AuditEventSubType value111744 = AuditEventSubType._(
    value: '111744',
  );

  /// value111745
  static final AuditEventSubType value111745 = AuditEventSubType._(
    value: '111745',
  );

  /// value111746
  static final AuditEventSubType value111746 = AuditEventSubType._(
    value: '111746',
  );

  /// value111747
  static final AuditEventSubType value111747 = AuditEventSubType._(
    value: '111747',
  );

  /// value111748
  static final AuditEventSubType value111748 = AuditEventSubType._(
    value: '111748',
  );

  /// value111749
  static final AuditEventSubType value111749 = AuditEventSubType._(
    value: '111749',
  );

  /// value111750
  static final AuditEventSubType value111750 = AuditEventSubType._(
    value: '111750',
  );

  /// value111751
  static final AuditEventSubType value111751 = AuditEventSubType._(
    value: '111751',
  );

  /// value111752
  static final AuditEventSubType value111752 = AuditEventSubType._(
    value: '111752',
  );

  /// value111753
  static final AuditEventSubType value111753 = AuditEventSubType._(
    value: '111753',
  );

  /// value111754
  static final AuditEventSubType value111754 = AuditEventSubType._(
    value: '111754',
  );

  /// value111755
  static final AuditEventSubType value111755 = AuditEventSubType._(
    value: '111755',
  );

  /// value111756
  static final AuditEventSubType value111756 = AuditEventSubType._(
    value: '111756',
  );

  /// value111760
  static final AuditEventSubType value111760 = AuditEventSubType._(
    value: '111760',
  );

  /// value111761
  static final AuditEventSubType value111761 = AuditEventSubType._(
    value: '111761',
  );

  /// value111762
  static final AuditEventSubType value111762 = AuditEventSubType._(
    value: '111762',
  );

  /// value111763
  static final AuditEventSubType value111763 = AuditEventSubType._(
    value: '111763',
  );

  /// value111764
  static final AuditEventSubType value111764 = AuditEventSubType._(
    value: '111764',
  );

  /// value111765
  static final AuditEventSubType value111765 = AuditEventSubType._(
    value: '111765',
  );

  /// value111766
  static final AuditEventSubType value111766 = AuditEventSubType._(
    value: '111766',
  );

  /// value111767
  static final AuditEventSubType value111767 = AuditEventSubType._(
    value: '111767',
  );

  /// value111768
  static final AuditEventSubType value111768 = AuditEventSubType._(
    value: '111768',
  );

  /// value111769
  static final AuditEventSubType value111769 = AuditEventSubType._(
    value: '111769',
  );

  /// value111770
  static final AuditEventSubType value111770 = AuditEventSubType._(
    value: '111770',
  );

  /// value111771
  static final AuditEventSubType value111771 = AuditEventSubType._(
    value: '111771',
  );

  /// value111772
  static final AuditEventSubType value111772 = AuditEventSubType._(
    value: '111772',
  );

  /// value111773
  static final AuditEventSubType value111773 = AuditEventSubType._(
    value: '111773',
  );

  /// value111776
  static final AuditEventSubType value111776 = AuditEventSubType._(
    value: '111776',
  );

  /// value111777
  static final AuditEventSubType value111777 = AuditEventSubType._(
    value: '111777',
  );

  /// value111778
  static final AuditEventSubType value111778 = AuditEventSubType._(
    value: '111778',
  );

  /// value111779
  static final AuditEventSubType value111779 = AuditEventSubType._(
    value: '111779',
  );

  /// value111780
  static final AuditEventSubType value111780 = AuditEventSubType._(
    value: '111780',
  );

  /// value111781
  static final AuditEventSubType value111781 = AuditEventSubType._(
    value: '111781',
  );

  /// value111782
  static final AuditEventSubType value111782 = AuditEventSubType._(
    value: '111782',
  );

  /// value111783
  static final AuditEventSubType value111783 = AuditEventSubType._(
    value: '111783',
  );

  /// value111786
  static final AuditEventSubType value111786 = AuditEventSubType._(
    value: '111786',
  );

  /// value111787
  static final AuditEventSubType value111787 = AuditEventSubType._(
    value: '111787',
  );

  /// value111791
  static final AuditEventSubType value111791 = AuditEventSubType._(
    value: '111791',
  );

  /// value111792
  static final AuditEventSubType value111792 = AuditEventSubType._(
    value: '111792',
  );

  /// value111800
  static final AuditEventSubType value111800 = AuditEventSubType._(
    value: '111800',
  );

  /// value111801
  static final AuditEventSubType value111801 = AuditEventSubType._(
    value: '111801',
  );

  /// value111802
  static final AuditEventSubType value111802 = AuditEventSubType._(
    value: '111802',
  );

  /// value111803
  static final AuditEventSubType value111803 = AuditEventSubType._(
    value: '111803',
  );

  /// value111804
  static final AuditEventSubType value111804 = AuditEventSubType._(
    value: '111804',
  );

  /// value111805
  static final AuditEventSubType value111805 = AuditEventSubType._(
    value: '111805',
  );

  /// value111806
  static final AuditEventSubType value111806 = AuditEventSubType._(
    value: '111806',
  );

  /// value111807
  static final AuditEventSubType value111807 = AuditEventSubType._(
    value: '111807',
  );

  /// value111808
  static final AuditEventSubType value111808 = AuditEventSubType._(
    value: '111808',
  );

  /// value111809
  static final AuditEventSubType value111809 = AuditEventSubType._(
    value: '111809',
  );

  /// value111810
  static final AuditEventSubType value111810 = AuditEventSubType._(
    value: '111810',
  );

  /// value111811
  static final AuditEventSubType value111811 = AuditEventSubType._(
    value: '111811',
  );

  /// value111812
  static final AuditEventSubType value111812 = AuditEventSubType._(
    value: '111812',
  );

  /// value111813
  static final AuditEventSubType value111813 = AuditEventSubType._(
    value: '111813',
  );

  /// value111814
  static final AuditEventSubType value111814 = AuditEventSubType._(
    value: '111814',
  );

  /// value111815
  static final AuditEventSubType value111815 = AuditEventSubType._(
    value: '111815',
  );

  /// value111816
  static final AuditEventSubType value111816 = AuditEventSubType._(
    value: '111816',
  );

  /// value111817
  static final AuditEventSubType value111817 = AuditEventSubType._(
    value: '111817',
  );

  /// value111818
  static final AuditEventSubType value111818 = AuditEventSubType._(
    value: '111818',
  );

  /// value111819
  static final AuditEventSubType value111819 = AuditEventSubType._(
    value: '111819',
  );

  /// value111820
  static final AuditEventSubType value111820 = AuditEventSubType._(
    value: '111820',
  );

  /// value111821
  static final AuditEventSubType value111821 = AuditEventSubType._(
    value: '111821',
  );

  /// value111822
  static final AuditEventSubType value111822 = AuditEventSubType._(
    value: '111822',
  );

  /// value111823
  static final AuditEventSubType value111823 = AuditEventSubType._(
    value: '111823',
  );

  /// value111824
  static final AuditEventSubType value111824 = AuditEventSubType._(
    value: '111824',
  );

  /// value111825
  static final AuditEventSubType value111825 = AuditEventSubType._(
    value: '111825',
  );

  /// value111826
  static final AuditEventSubType value111826 = AuditEventSubType._(
    value: '111826',
  );

  /// value111827
  static final AuditEventSubType value111827 = AuditEventSubType._(
    value: '111827',
  );

  /// value111828
  static final AuditEventSubType value111828 = AuditEventSubType._(
    value: '111828',
  );

  /// value111829
  static final AuditEventSubType value111829 = AuditEventSubType._(
    value: '111829',
  );

  /// value111830
  static final AuditEventSubType value111830 = AuditEventSubType._(
    value: '111830',
  );

  /// value111831
  static final AuditEventSubType value111831 = AuditEventSubType._(
    value: '111831',
  );

  /// value111832
  static final AuditEventSubType value111832 = AuditEventSubType._(
    value: '111832',
  );

  /// value111833
  static final AuditEventSubType value111833 = AuditEventSubType._(
    value: '111833',
  );

  /// value111834
  static final AuditEventSubType value111834 = AuditEventSubType._(
    value: '111834',
  );

  /// value111835
  static final AuditEventSubType value111835 = AuditEventSubType._(
    value: '111835',
  );

  /// value111836
  static final AuditEventSubType value111836 = AuditEventSubType._(
    value: '111836',
  );

  /// value111837
  static final AuditEventSubType value111837 = AuditEventSubType._(
    value: '111837',
  );

  /// value111838
  static final AuditEventSubType value111838 = AuditEventSubType._(
    value: '111838',
  );

  /// value111839
  static final AuditEventSubType value111839 = AuditEventSubType._(
    value: '111839',
  );

  /// value111840
  static final AuditEventSubType value111840 = AuditEventSubType._(
    value: '111840',
  );

  /// value111841
  static final AuditEventSubType value111841 = AuditEventSubType._(
    value: '111841',
  );

  /// value111842
  static final AuditEventSubType value111842 = AuditEventSubType._(
    value: '111842',
  );

  /// value111843
  static final AuditEventSubType value111843 = AuditEventSubType._(
    value: '111843',
  );

  /// value111844
  static final AuditEventSubType value111844 = AuditEventSubType._(
    value: '111844',
  );

  /// value111845
  static final AuditEventSubType value111845 = AuditEventSubType._(
    value: '111845',
  );

  /// value111846
  static final AuditEventSubType value111846 = AuditEventSubType._(
    value: '111846',
  );

  /// value111847
  static final AuditEventSubType value111847 = AuditEventSubType._(
    value: '111847',
  );

  /// value111848
  static final AuditEventSubType value111848 = AuditEventSubType._(
    value: '111848',
  );

  /// value111849
  static final AuditEventSubType value111849 = AuditEventSubType._(
    value: '111849',
  );

  /// value111850
  static final AuditEventSubType value111850 = AuditEventSubType._(
    value: '111850',
  );

  /// value111851
  static final AuditEventSubType value111851 = AuditEventSubType._(
    value: '111851',
  );

  /// value111852
  static final AuditEventSubType value111852 = AuditEventSubType._(
    value: '111852',
  );

  /// value111853
  static final AuditEventSubType value111853 = AuditEventSubType._(
    value: '111853',
  );

  /// value111854
  static final AuditEventSubType value111854 = AuditEventSubType._(
    value: '111854',
  );

  /// value111855
  static final AuditEventSubType value111855 = AuditEventSubType._(
    value: '111855',
  );

  /// value111856
  static final AuditEventSubType value111856 = AuditEventSubType._(
    value: '111856',
  );

  /// value111900
  static final AuditEventSubType value111900 = AuditEventSubType._(
    value: '111900',
  );

  /// value111901
  static final AuditEventSubType value111901 = AuditEventSubType._(
    value: '111901',
  );

  /// value111902
  static final AuditEventSubType value111902 = AuditEventSubType._(
    value: '111902',
  );

  /// value111903
  static final AuditEventSubType value111903 = AuditEventSubType._(
    value: '111903',
  );

  /// value111904
  static final AuditEventSubType value111904 = AuditEventSubType._(
    value: '111904',
  );

  /// value111905
  static final AuditEventSubType value111905 = AuditEventSubType._(
    value: '111905',
  );

  /// value111906
  static final AuditEventSubType value111906 = AuditEventSubType._(
    value: '111906',
  );

  /// value111907
  static final AuditEventSubType value111907 = AuditEventSubType._(
    value: '111907',
  );

  /// value111908
  static final AuditEventSubType value111908 = AuditEventSubType._(
    value: '111908',
  );

  /// value111909
  static final AuditEventSubType value111909 = AuditEventSubType._(
    value: '111909',
  );

  /// value111910
  static final AuditEventSubType value111910 = AuditEventSubType._(
    value: '111910',
  );

  /// value111911
  static final AuditEventSubType value111911 = AuditEventSubType._(
    value: '111911',
  );

  /// value111912
  static final AuditEventSubType value111912 = AuditEventSubType._(
    value: '111912',
  );

  /// value111913
  static final AuditEventSubType value111913 = AuditEventSubType._(
    value: '111913',
  );

  /// value111914
  static final AuditEventSubType value111914 = AuditEventSubType._(
    value: '111914',
  );

  /// value111915
  static final AuditEventSubType value111915 = AuditEventSubType._(
    value: '111915',
  );

  /// value111916
  static final AuditEventSubType value111916 = AuditEventSubType._(
    value: '111916',
  );

  /// value111917
  static final AuditEventSubType value111917 = AuditEventSubType._(
    value: '111917',
  );

  /// value111918
  static final AuditEventSubType value111918 = AuditEventSubType._(
    value: '111918',
  );

  /// value111919
  static final AuditEventSubType value111919 = AuditEventSubType._(
    value: '111919',
  );

  /// value111920
  static final AuditEventSubType value111920 = AuditEventSubType._(
    value: '111920',
  );

  /// value111921
  static final AuditEventSubType value111921 = AuditEventSubType._(
    value: '111921',
  );

  /// value111922
  static final AuditEventSubType value111922 = AuditEventSubType._(
    value: '111922',
  );

  /// value111923
  static final AuditEventSubType value111923 = AuditEventSubType._(
    value: '111923',
  );

  /// value111924
  static final AuditEventSubType value111924 = AuditEventSubType._(
    value: '111924',
  );

  /// value111925
  static final AuditEventSubType value111925 = AuditEventSubType._(
    value: '111925',
  );

  /// value111926
  static final AuditEventSubType value111926 = AuditEventSubType._(
    value: '111926',
  );

  /// value111927
  static final AuditEventSubType value111927 = AuditEventSubType._(
    value: '111927',
  );

  /// value111928
  static final AuditEventSubType value111928 = AuditEventSubType._(
    value: '111928',
  );

  /// value111929
  static final AuditEventSubType value111929 = AuditEventSubType._(
    value: '111929',
  );

  /// value111930
  static final AuditEventSubType value111930 = AuditEventSubType._(
    value: '111930',
  );

  /// value111931
  static final AuditEventSubType value111931 = AuditEventSubType._(
    value: '111931',
  );

  /// value111932
  static final AuditEventSubType value111932 = AuditEventSubType._(
    value: '111932',
  );

  /// value111933
  static final AuditEventSubType value111933 = AuditEventSubType._(
    value: '111933',
  );

  /// value111934
  static final AuditEventSubType value111934 = AuditEventSubType._(
    value: '111934',
  );

  /// value111935
  static final AuditEventSubType value111935 = AuditEventSubType._(
    value: '111935',
  );

  /// value111936
  static final AuditEventSubType value111936 = AuditEventSubType._(
    value: '111936',
  );

  /// value111937
  static final AuditEventSubType value111937 = AuditEventSubType._(
    value: '111937',
  );

  /// value111938
  static final AuditEventSubType value111938 = AuditEventSubType._(
    value: '111938',
  );

  /// value111939
  static final AuditEventSubType value111939 = AuditEventSubType._(
    value: '111939',
  );

  /// value111940
  static final AuditEventSubType value111940 = AuditEventSubType._(
    value: '111940',
  );

  /// value111941
  static final AuditEventSubType value111941 = AuditEventSubType._(
    value: '111941',
  );

  /// value111942
  static final AuditEventSubType value111942 = AuditEventSubType._(
    value: '111942',
  );

  /// value111943
  static final AuditEventSubType value111943 = AuditEventSubType._(
    value: '111943',
  );

  /// value111944
  static final AuditEventSubType value111944 = AuditEventSubType._(
    value: '111944',
  );

  /// value111945
  static final AuditEventSubType value111945 = AuditEventSubType._(
    value: '111945',
  );

  /// value111946
  static final AuditEventSubType value111946 = AuditEventSubType._(
    value: '111946',
  );

  /// value111947
  static final AuditEventSubType value111947 = AuditEventSubType._(
    value: '111947',
  );

  /// value112000
  static final AuditEventSubType value112000 = AuditEventSubType._(
    value: '112000',
  );

  /// value112001
  static final AuditEventSubType value112001 = AuditEventSubType._(
    value: '112001',
  );

  /// value112002
  static final AuditEventSubType value112002 = AuditEventSubType._(
    value: '112002',
  );

  /// value112003
  static final AuditEventSubType value112003 = AuditEventSubType._(
    value: '112003',
  );

  /// value112004
  static final AuditEventSubType value112004 = AuditEventSubType._(
    value: '112004',
  );

  /// value112005
  static final AuditEventSubType value112005 = AuditEventSubType._(
    value: '112005',
  );

  /// value112006
  static final AuditEventSubType value112006 = AuditEventSubType._(
    value: '112006',
  );

  /// value112007
  static final AuditEventSubType value112007 = AuditEventSubType._(
    value: '112007',
  );

  /// value112008
  static final AuditEventSubType value112008 = AuditEventSubType._(
    value: '112008',
  );

  /// value112009
  static final AuditEventSubType value112009 = AuditEventSubType._(
    value: '112009',
  );

  /// value112010
  static final AuditEventSubType value112010 = AuditEventSubType._(
    value: '112010',
  );

  /// value112011
  static final AuditEventSubType value112011 = AuditEventSubType._(
    value: '112011',
  );

  /// value112012
  static final AuditEventSubType value112012 = AuditEventSubType._(
    value: '112012',
  );

  /// value112013
  static final AuditEventSubType value112013 = AuditEventSubType._(
    value: '112013',
  );

  /// value112014
  static final AuditEventSubType value112014 = AuditEventSubType._(
    value: '112014',
  );

  /// value112015
  static final AuditEventSubType value112015 = AuditEventSubType._(
    value: '112015',
  );

  /// value112016
  static final AuditEventSubType value112016 = AuditEventSubType._(
    value: '112016',
  );

  /// value112017
  static final AuditEventSubType value112017 = AuditEventSubType._(
    value: '112017',
  );

  /// value112018
  static final AuditEventSubType value112018 = AuditEventSubType._(
    value: '112018',
  );

  /// value112019
  static final AuditEventSubType value112019 = AuditEventSubType._(
    value: '112019',
  );

  /// value112020
  static final AuditEventSubType value112020 = AuditEventSubType._(
    value: '112020',
  );

  /// value112021
  static final AuditEventSubType value112021 = AuditEventSubType._(
    value: '112021',
  );

  /// value112022
  static final AuditEventSubType value112022 = AuditEventSubType._(
    value: '112022',
  );

  /// value112023
  static final AuditEventSubType value112023 = AuditEventSubType._(
    value: '112023',
  );

  /// value112024
  static final AuditEventSubType value112024 = AuditEventSubType._(
    value: '112024',
  );

  /// value112025
  static final AuditEventSubType value112025 = AuditEventSubType._(
    value: '112025',
  );

  /// value112026
  static final AuditEventSubType value112026 = AuditEventSubType._(
    value: '112026',
  );

  /// value112027
  static final AuditEventSubType value112027 = AuditEventSubType._(
    value: '112027',
  );

  /// value112028
  static final AuditEventSubType value112028 = AuditEventSubType._(
    value: '112028',
  );

  /// value112029
  static final AuditEventSubType value112029 = AuditEventSubType._(
    value: '112029',
  );

  /// value112030
  static final AuditEventSubType value112030 = AuditEventSubType._(
    value: '112030',
  );

  /// value112031
  static final AuditEventSubType value112031 = AuditEventSubType._(
    value: '112031',
  );

  /// value112032
  static final AuditEventSubType value112032 = AuditEventSubType._(
    value: '112032',
  );

  /// value112033
  static final AuditEventSubType value112033 = AuditEventSubType._(
    value: '112033',
  );

  /// value112034
  static final AuditEventSubType value112034 = AuditEventSubType._(
    value: '112034',
  );

  /// value112035
  static final AuditEventSubType value112035 = AuditEventSubType._(
    value: '112035',
  );

  /// value112036
  static final AuditEventSubType value112036 = AuditEventSubType._(
    value: '112036',
  );

  /// value112037
  static final AuditEventSubType value112037 = AuditEventSubType._(
    value: '112037',
  );

  /// value112038
  static final AuditEventSubType value112038 = AuditEventSubType._(
    value: '112038',
  );

  /// value112039
  static final AuditEventSubType value112039 = AuditEventSubType._(
    value: '112039',
  );

  /// value112040
  static final AuditEventSubType value112040 = AuditEventSubType._(
    value: '112040',
  );

  /// value112041
  static final AuditEventSubType value112041 = AuditEventSubType._(
    value: '112041',
  );

  /// value112042
  static final AuditEventSubType value112042 = AuditEventSubType._(
    value: '112042',
  );

  /// value112043
  static final AuditEventSubType value112043 = AuditEventSubType._(
    value: '112043',
  );

  /// value112044
  static final AuditEventSubType value112044 = AuditEventSubType._(
    value: '112044',
  );

  /// value112045
  static final AuditEventSubType value112045 = AuditEventSubType._(
    value: '112045',
  );

  /// value112046
  static final AuditEventSubType value112046 = AuditEventSubType._(
    value: '112046',
  );

  /// value112047
  static final AuditEventSubType value112047 = AuditEventSubType._(
    value: '112047',
  );

  /// value112048
  static final AuditEventSubType value112048 = AuditEventSubType._(
    value: '112048',
  );

  /// value112049
  static final AuditEventSubType value112049 = AuditEventSubType._(
    value: '112049',
  );

  /// value112050
  static final AuditEventSubType value112050 = AuditEventSubType._(
    value: '112050',
  );

  /// value112051
  static final AuditEventSubType value112051 = AuditEventSubType._(
    value: '112051',
  );

  /// value112052
  static final AuditEventSubType value112052 = AuditEventSubType._(
    value: '112052',
  );

  /// value112053
  static final AuditEventSubType value112053 = AuditEventSubType._(
    value: '112053',
  );

  /// value112054
  static final AuditEventSubType value112054 = AuditEventSubType._(
    value: '112054',
  );

  /// value112055
  static final AuditEventSubType value112055 = AuditEventSubType._(
    value: '112055',
  );

  /// value112056
  static final AuditEventSubType value112056 = AuditEventSubType._(
    value: '112056',
  );

  /// value112057
  static final AuditEventSubType value112057 = AuditEventSubType._(
    value: '112057',
  );

  /// value112058
  static final AuditEventSubType value112058 = AuditEventSubType._(
    value: '112058',
  );

  /// value112059
  static final AuditEventSubType value112059 = AuditEventSubType._(
    value: '112059',
  );

  /// value112060
  static final AuditEventSubType value112060 = AuditEventSubType._(
    value: '112060',
  );

  /// value112061
  static final AuditEventSubType value112061 = AuditEventSubType._(
    value: '112061',
  );

  /// value112062
  static final AuditEventSubType value112062 = AuditEventSubType._(
    value: '112062',
  );

  /// value112063
  static final AuditEventSubType value112063 = AuditEventSubType._(
    value: '112063',
  );

  /// value112064
  static final AuditEventSubType value112064 = AuditEventSubType._(
    value: '112064',
  );

  /// value112065
  static final AuditEventSubType value112065 = AuditEventSubType._(
    value: '112065',
  );

  /// value112066
  static final AuditEventSubType value112066 = AuditEventSubType._(
    value: '112066',
  );

  /// value112067
  static final AuditEventSubType value112067 = AuditEventSubType._(
    value: '112067',
  );

  /// value112068
  static final AuditEventSubType value112068 = AuditEventSubType._(
    value: '112068',
  );

  /// value112069
  static final AuditEventSubType value112069 = AuditEventSubType._(
    value: '112069',
  );

  /// value112070
  static final AuditEventSubType value112070 = AuditEventSubType._(
    value: '112070',
  );

  /// value112071
  static final AuditEventSubType value112071 = AuditEventSubType._(
    value: '112071',
  );

  /// value112072
  static final AuditEventSubType value112072 = AuditEventSubType._(
    value: '112072',
  );

  /// value112073
  static final AuditEventSubType value112073 = AuditEventSubType._(
    value: '112073',
  );

  /// value112074
  static final AuditEventSubType value112074 = AuditEventSubType._(
    value: '112074',
  );

  /// value112075
  static final AuditEventSubType value112075 = AuditEventSubType._(
    value: '112075',
  );

  /// value112076
  static final AuditEventSubType value112076 = AuditEventSubType._(
    value: '112076',
  );

  /// value112077
  static final AuditEventSubType value112077 = AuditEventSubType._(
    value: '112077',
  );

  /// value112078
  static final AuditEventSubType value112078 = AuditEventSubType._(
    value: '112078',
  );

  /// value112079
  static final AuditEventSubType value112079 = AuditEventSubType._(
    value: '112079',
  );

  /// value112080
  static final AuditEventSubType value112080 = AuditEventSubType._(
    value: '112080',
  );

  /// value112081
  static final AuditEventSubType value112081 = AuditEventSubType._(
    value: '112081',
  );

  /// value112082
  static final AuditEventSubType value112082 = AuditEventSubType._(
    value: '112082',
  );

  /// value112083
  static final AuditEventSubType value112083 = AuditEventSubType._(
    value: '112083',
  );

  /// value112084
  static final AuditEventSubType value112084 = AuditEventSubType._(
    value: '112084',
  );

  /// value112085
  static final AuditEventSubType value112085 = AuditEventSubType._(
    value: '112085',
  );

  /// value112086
  static final AuditEventSubType value112086 = AuditEventSubType._(
    value: '112086',
  );

  /// value112087
  static final AuditEventSubType value112087 = AuditEventSubType._(
    value: '112087',
  );

  /// value112088
  static final AuditEventSubType value112088 = AuditEventSubType._(
    value: '112088',
  );

  /// value112089
  static final AuditEventSubType value112089 = AuditEventSubType._(
    value: '112089',
  );

  /// value112090
  static final AuditEventSubType value112090 = AuditEventSubType._(
    value: '112090',
  );

  /// value112091
  static final AuditEventSubType value112091 = AuditEventSubType._(
    value: '112091',
  );

  /// value112092
  static final AuditEventSubType value112092 = AuditEventSubType._(
    value: '112092',
  );

  /// value112093
  static final AuditEventSubType value112093 = AuditEventSubType._(
    value: '112093',
  );

  /// value112094
  static final AuditEventSubType value112094 = AuditEventSubType._(
    value: '112094',
  );

  /// value112095
  static final AuditEventSubType value112095 = AuditEventSubType._(
    value: '112095',
  );

  /// value112096
  static final AuditEventSubType value112096 = AuditEventSubType._(
    value: '112096',
  );

  /// value112097
  static final AuditEventSubType value112097 = AuditEventSubType._(
    value: '112097',
  );

  /// value112098
  static final AuditEventSubType value112098 = AuditEventSubType._(
    value: '112098',
  );

  /// value112099
  static final AuditEventSubType value112099 = AuditEventSubType._(
    value: '112099',
  );

  /// value112100
  static final AuditEventSubType value112100 = AuditEventSubType._(
    value: '112100',
  );

  /// value112101
  static final AuditEventSubType value112101 = AuditEventSubType._(
    value: '112101',
  );

  /// value112102
  static final AuditEventSubType value112102 = AuditEventSubType._(
    value: '112102',
  );

  /// value112103
  static final AuditEventSubType value112103 = AuditEventSubType._(
    value: '112103',
  );

  /// value112104
  static final AuditEventSubType value112104 = AuditEventSubType._(
    value: '112104',
  );

  /// value112105
  static final AuditEventSubType value112105 = AuditEventSubType._(
    value: '112105',
  );

  /// value112106
  static final AuditEventSubType value112106 = AuditEventSubType._(
    value: '112106',
  );

  /// value112107
  static final AuditEventSubType value112107 = AuditEventSubType._(
    value: '112107',
  );

  /// value112108
  static final AuditEventSubType value112108 = AuditEventSubType._(
    value: '112108',
  );

  /// value112109
  static final AuditEventSubType value112109 = AuditEventSubType._(
    value: '112109',
  );

  /// value112110
  static final AuditEventSubType value112110 = AuditEventSubType._(
    value: '112110',
  );

  /// value112111
  static final AuditEventSubType value112111 = AuditEventSubType._(
    value: '112111',
  );

  /// value112112
  static final AuditEventSubType value112112 = AuditEventSubType._(
    value: '112112',
  );

  /// value112113
  static final AuditEventSubType value112113 = AuditEventSubType._(
    value: '112113',
  );

  /// value112114
  static final AuditEventSubType value112114 = AuditEventSubType._(
    value: '112114',
  );

  /// value112115
  static final AuditEventSubType value112115 = AuditEventSubType._(
    value: '112115',
  );

  /// value112116
  static final AuditEventSubType value112116 = AuditEventSubType._(
    value: '112116',
  );

  /// value112117
  static final AuditEventSubType value112117 = AuditEventSubType._(
    value: '112117',
  );

  /// value112118
  static final AuditEventSubType value112118 = AuditEventSubType._(
    value: '112118',
  );

  /// value112119
  static final AuditEventSubType value112119 = AuditEventSubType._(
    value: '112119',
  );

  /// value112120
  static final AuditEventSubType value112120 = AuditEventSubType._(
    value: '112120',
  );

  /// value112121
  static final AuditEventSubType value112121 = AuditEventSubType._(
    value: '112121',
  );

  /// value112122
  static final AuditEventSubType value112122 = AuditEventSubType._(
    value: '112122',
  );

  /// value112123
  static final AuditEventSubType value112123 = AuditEventSubType._(
    value: '112123',
  );

  /// value112124
  static final AuditEventSubType value112124 = AuditEventSubType._(
    value: '112124',
  );

  /// value112125
  static final AuditEventSubType value112125 = AuditEventSubType._(
    value: '112125',
  );

  /// value112126
  static final AuditEventSubType value112126 = AuditEventSubType._(
    value: '112126',
  );

  /// value112127
  static final AuditEventSubType value112127 = AuditEventSubType._(
    value: '112127',
  );

  /// value112128
  static final AuditEventSubType value112128 = AuditEventSubType._(
    value: '112128',
  );

  /// value112129
  static final AuditEventSubType value112129 = AuditEventSubType._(
    value: '112129',
  );

  /// value112130
  static final AuditEventSubType value112130 = AuditEventSubType._(
    value: '112130',
  );

  /// value112131
  static final AuditEventSubType value112131 = AuditEventSubType._(
    value: '112131',
  );

  /// value112132
  static final AuditEventSubType value112132 = AuditEventSubType._(
    value: '112132',
  );

  /// value112133
  static final AuditEventSubType value112133 = AuditEventSubType._(
    value: '112133',
  );

  /// value112134
  static final AuditEventSubType value112134 = AuditEventSubType._(
    value: '112134',
  );

  /// value112135
  static final AuditEventSubType value112135 = AuditEventSubType._(
    value: '112135',
  );

  /// value112136
  static final AuditEventSubType value112136 = AuditEventSubType._(
    value: '112136',
  );

  /// value112137
  static final AuditEventSubType value112137 = AuditEventSubType._(
    value: '112137',
  );

  /// value112138
  static final AuditEventSubType value112138 = AuditEventSubType._(
    value: '112138',
  );

  /// value112139
  static final AuditEventSubType value112139 = AuditEventSubType._(
    value: '112139',
  );

  /// value112140
  static final AuditEventSubType value112140 = AuditEventSubType._(
    value: '112140',
  );

  /// value112141
  static final AuditEventSubType value112141 = AuditEventSubType._(
    value: '112141',
  );

  /// value112142
  static final AuditEventSubType value112142 = AuditEventSubType._(
    value: '112142',
  );

  /// value112143
  static final AuditEventSubType value112143 = AuditEventSubType._(
    value: '112143',
  );

  /// value112144
  static final AuditEventSubType value112144 = AuditEventSubType._(
    value: '112144',
  );

  /// value112145
  static final AuditEventSubType value112145 = AuditEventSubType._(
    value: '112145',
  );

  /// value112146
  static final AuditEventSubType value112146 = AuditEventSubType._(
    value: '112146',
  );

  /// value112147
  static final AuditEventSubType value112147 = AuditEventSubType._(
    value: '112147',
  );

  /// value112148
  static final AuditEventSubType value112148 = AuditEventSubType._(
    value: '112148',
  );

  /// value112149
  static final AuditEventSubType value112149 = AuditEventSubType._(
    value: '112149',
  );

  /// value112150
  static final AuditEventSubType value112150 = AuditEventSubType._(
    value: '112150',
  );

  /// value112151
  static final AuditEventSubType value112151 = AuditEventSubType._(
    value: '112151',
  );

  /// value112152
  static final AuditEventSubType value112152 = AuditEventSubType._(
    value: '112152',
  );

  /// value112153
  static final AuditEventSubType value112153 = AuditEventSubType._(
    value: '112153',
  );

  /// value112154
  static final AuditEventSubType value112154 = AuditEventSubType._(
    value: '112154',
  );

  /// value112155
  static final AuditEventSubType value112155 = AuditEventSubType._(
    value: '112155',
  );

  /// value112156
  static final AuditEventSubType value112156 = AuditEventSubType._(
    value: '112156',
  );

  /// value112157
  static final AuditEventSubType value112157 = AuditEventSubType._(
    value: '112157',
  );

  /// value112158
  static final AuditEventSubType value112158 = AuditEventSubType._(
    value: '112158',
  );

  /// value112159
  static final AuditEventSubType value112159 = AuditEventSubType._(
    value: '112159',
  );

  /// value112160
  static final AuditEventSubType value112160 = AuditEventSubType._(
    value: '112160',
  );

  /// value112161
  static final AuditEventSubType value112161 = AuditEventSubType._(
    value: '112161',
  );

  /// value112162
  static final AuditEventSubType value112162 = AuditEventSubType._(
    value: '112162',
  );

  /// value112163
  static final AuditEventSubType value112163 = AuditEventSubType._(
    value: '112163',
  );

  /// value112164
  static final AuditEventSubType value112164 = AuditEventSubType._(
    value: '112164',
  );

  /// value112165
  static final AuditEventSubType value112165 = AuditEventSubType._(
    value: '112165',
  );

  /// value112166
  static final AuditEventSubType value112166 = AuditEventSubType._(
    value: '112166',
  );

  /// value112167
  static final AuditEventSubType value112167 = AuditEventSubType._(
    value: '112167',
  );

  /// value112168
  static final AuditEventSubType value112168 = AuditEventSubType._(
    value: '112168',
  );

  /// value112169
  static final AuditEventSubType value112169 = AuditEventSubType._(
    value: '112169',
  );

  /// value112170
  static final AuditEventSubType value112170 = AuditEventSubType._(
    value: '112170',
  );

  /// value112171
  static final AuditEventSubType value112171 = AuditEventSubType._(
    value: '112171',
  );

  /// value112172
  static final AuditEventSubType value112172 = AuditEventSubType._(
    value: '112172',
  );

  /// value112173
  static final AuditEventSubType value112173 = AuditEventSubType._(
    value: '112173',
  );

  /// value112174
  static final AuditEventSubType value112174 = AuditEventSubType._(
    value: '112174',
  );

  /// value112175
  static final AuditEventSubType value112175 = AuditEventSubType._(
    value: '112175',
  );

  /// value112176
  static final AuditEventSubType value112176 = AuditEventSubType._(
    value: '112176',
  );

  /// value112177
  static final AuditEventSubType value112177 = AuditEventSubType._(
    value: '112177',
  );

  /// value112178
  static final AuditEventSubType value112178 = AuditEventSubType._(
    value: '112178',
  );

  /// value112179
  static final AuditEventSubType value112179 = AuditEventSubType._(
    value: '112179',
  );

  /// value112180
  static final AuditEventSubType value112180 = AuditEventSubType._(
    value: '112180',
  );

  /// value112181
  static final AuditEventSubType value112181 = AuditEventSubType._(
    value: '112181',
  );

  /// value112182
  static final AuditEventSubType value112182 = AuditEventSubType._(
    value: '112182',
  );

  /// value112183
  static final AuditEventSubType value112183 = AuditEventSubType._(
    value: '112183',
  );

  /// value112184
  static final AuditEventSubType value112184 = AuditEventSubType._(
    value: '112184',
  );

  /// value112185
  static final AuditEventSubType value112185 = AuditEventSubType._(
    value: '112185',
  );

  /// value112186
  static final AuditEventSubType value112186 = AuditEventSubType._(
    value: '112186',
  );

  /// value112187
  static final AuditEventSubType value112187 = AuditEventSubType._(
    value: '112187',
  );

  /// value112188
  static final AuditEventSubType value112188 = AuditEventSubType._(
    value: '112188',
  );

  /// value112189
  static final AuditEventSubType value112189 = AuditEventSubType._(
    value: '112189',
  );

  /// value112191
  static final AuditEventSubType value112191 = AuditEventSubType._(
    value: '112191',
  );

  /// value112192
  static final AuditEventSubType value112192 = AuditEventSubType._(
    value: '112192',
  );

  /// value112193
  static final AuditEventSubType value112193 = AuditEventSubType._(
    value: '112193',
  );

  /// value112194
  static final AuditEventSubType value112194 = AuditEventSubType._(
    value: '112194',
  );

  /// value112195
  static final AuditEventSubType value112195 = AuditEventSubType._(
    value: '112195',
  );

  /// value112196
  static final AuditEventSubType value112196 = AuditEventSubType._(
    value: '112196',
  );

  /// value112197
  static final AuditEventSubType value112197 = AuditEventSubType._(
    value: '112197',
  );

  /// value112198
  static final AuditEventSubType value112198 = AuditEventSubType._(
    value: '112198',
  );

  /// value112199
  static final AuditEventSubType value112199 = AuditEventSubType._(
    value: '112199',
  );

  /// value112200
  static final AuditEventSubType value112200 = AuditEventSubType._(
    value: '112200',
  );

  /// value112201
  static final AuditEventSubType value112201 = AuditEventSubType._(
    value: '112201',
  );

  /// value112220
  static final AuditEventSubType value112220 = AuditEventSubType._(
    value: '112220',
  );

  /// value112222
  static final AuditEventSubType value112222 = AuditEventSubType._(
    value: '112222',
  );

  /// value112224
  static final AuditEventSubType value112224 = AuditEventSubType._(
    value: '112224',
  );

  /// value112225
  static final AuditEventSubType value112225 = AuditEventSubType._(
    value: '112225',
  );

  /// value112226
  static final AuditEventSubType value112226 = AuditEventSubType._(
    value: '112226',
  );

  /// value112227
  static final AuditEventSubType value112227 = AuditEventSubType._(
    value: '112227',
  );

  /// value112228
  static final AuditEventSubType value112228 = AuditEventSubType._(
    value: '112228',
  );

  /// value112229
  static final AuditEventSubType value112229 = AuditEventSubType._(
    value: '112229',
  );

  /// value112232
  static final AuditEventSubType value112232 = AuditEventSubType._(
    value: '112232',
  );

  /// value112233
  static final AuditEventSubType value112233 = AuditEventSubType._(
    value: '112233',
  );

  /// value112238
  static final AuditEventSubType value112238 = AuditEventSubType._(
    value: '112238',
  );

  /// value112240
  static final AuditEventSubType value112240 = AuditEventSubType._(
    value: '112240',
  );

  /// value112241
  static final AuditEventSubType value112241 = AuditEventSubType._(
    value: '112241',
  );

  /// value112242
  static final AuditEventSubType value112242 = AuditEventSubType._(
    value: '112242',
  );

  /// value112243
  static final AuditEventSubType value112243 = AuditEventSubType._(
    value: '112243',
  );

  /// value112244
  static final AuditEventSubType value112244 = AuditEventSubType._(
    value: '112244',
  );

  /// value112248
  static final AuditEventSubType value112248 = AuditEventSubType._(
    value: '112248',
  );

  /// value112249
  static final AuditEventSubType value112249 = AuditEventSubType._(
    value: '112249',
  );

  /// value112300
  static final AuditEventSubType value112300 = AuditEventSubType._(
    value: '112300',
  );

  /// value112301
  static final AuditEventSubType value112301 = AuditEventSubType._(
    value: '112301',
  );

  /// value112302
  static final AuditEventSubType value112302 = AuditEventSubType._(
    value: '112302',
  );

  /// value112303
  static final AuditEventSubType value112303 = AuditEventSubType._(
    value: '112303',
  );

  /// value112304
  static final AuditEventSubType value112304 = AuditEventSubType._(
    value: '112304',
  );

  /// value112305
  static final AuditEventSubType value112305 = AuditEventSubType._(
    value: '112305',
  );

  /// value112306
  static final AuditEventSubType value112306 = AuditEventSubType._(
    value: '112306',
  );

  /// value112307
  static final AuditEventSubType value112307 = AuditEventSubType._(
    value: '112307',
  );

  /// value112308
  static final AuditEventSubType value112308 = AuditEventSubType._(
    value: '112308',
  );

  /// value112309
  static final AuditEventSubType value112309 = AuditEventSubType._(
    value: '112309',
  );

  /// value112310
  static final AuditEventSubType value112310 = AuditEventSubType._(
    value: '112310',
  );

  /// value112311
  static final AuditEventSubType value112311 = AuditEventSubType._(
    value: '112311',
  );

  /// value112312
  static final AuditEventSubType value112312 = AuditEventSubType._(
    value: '112312',
  );

  /// value112313
  static final AuditEventSubType value112313 = AuditEventSubType._(
    value: '112313',
  );

  /// value112314
  static final AuditEventSubType value112314 = AuditEventSubType._(
    value: '112314',
  );

  /// value112315
  static final AuditEventSubType value112315 = AuditEventSubType._(
    value: '112315',
  );

  /// value112316
  static final AuditEventSubType value112316 = AuditEventSubType._(
    value: '112316',
  );

  /// value112317
  static final AuditEventSubType value112317 = AuditEventSubType._(
    value: '112317',
  );

  /// value112318
  static final AuditEventSubType value112318 = AuditEventSubType._(
    value: '112318',
  );

  /// value112319
  static final AuditEventSubType value112319 = AuditEventSubType._(
    value: '112319',
  );

  /// value112320
  static final AuditEventSubType value112320 = AuditEventSubType._(
    value: '112320',
  );

  /// value112321
  static final AuditEventSubType value112321 = AuditEventSubType._(
    value: '112321',
  );

  /// value112325
  static final AuditEventSubType value112325 = AuditEventSubType._(
    value: '112325',
  );

  /// value112340
  static final AuditEventSubType value112340 = AuditEventSubType._(
    value: '112340',
  );

  /// value112341
  static final AuditEventSubType value112341 = AuditEventSubType._(
    value: '112341',
  );

  /// value112342
  static final AuditEventSubType value112342 = AuditEventSubType._(
    value: '112342',
  );

  /// value112343
  static final AuditEventSubType value112343 = AuditEventSubType._(
    value: '112343',
  );

  /// value112344
  static final AuditEventSubType value112344 = AuditEventSubType._(
    value: '112344',
  );

  /// value112345
  static final AuditEventSubType value112345 = AuditEventSubType._(
    value: '112345',
  );

  /// value112346
  static final AuditEventSubType value112346 = AuditEventSubType._(
    value: '112346',
  );

  /// value112347
  static final AuditEventSubType value112347 = AuditEventSubType._(
    value: '112347',
  );

  /// value112348
  static final AuditEventSubType value112348 = AuditEventSubType._(
    value: '112348',
  );

  /// value112350
  static final AuditEventSubType value112350 = AuditEventSubType._(
    value: '112350',
  );

  /// value112351
  static final AuditEventSubType value112351 = AuditEventSubType._(
    value: '112351',
  );

  /// value112352
  static final AuditEventSubType value112352 = AuditEventSubType._(
    value: '112352',
  );

  /// value112353
  static final AuditEventSubType value112353 = AuditEventSubType._(
    value: '112353',
  );

  /// value112354
  static final AuditEventSubType value112354 = AuditEventSubType._(
    value: '112354',
  );

  /// value112355
  static final AuditEventSubType value112355 = AuditEventSubType._(
    value: '112355',
  );

  /// value112356
  static final AuditEventSubType value112356 = AuditEventSubType._(
    value: '112356',
  );

  /// value112357
  static final AuditEventSubType value112357 = AuditEventSubType._(
    value: '112357',
  );

  /// value112358
  static final AuditEventSubType value112358 = AuditEventSubType._(
    value: '112358',
  );

  /// value112359
  static final AuditEventSubType value112359 = AuditEventSubType._(
    value: '112359',
  );

  /// value112360
  static final AuditEventSubType value112360 = AuditEventSubType._(
    value: '112360',
  );

  /// value112361
  static final AuditEventSubType value112361 = AuditEventSubType._(
    value: '112361',
  );

  /// value112362
  static final AuditEventSubType value112362 = AuditEventSubType._(
    value: '112362',
  );

  /// value112363
  static final AuditEventSubType value112363 = AuditEventSubType._(
    value: '112363',
  );

  /// value112364
  static final AuditEventSubType value112364 = AuditEventSubType._(
    value: '112364',
  );

  /// value112365
  static final AuditEventSubType value112365 = AuditEventSubType._(
    value: '112365',
  );

  /// value112366
  static final AuditEventSubType value112366 = AuditEventSubType._(
    value: '112366',
  );

  /// value112367
  static final AuditEventSubType value112367 = AuditEventSubType._(
    value: '112367',
  );

  /// value112368
  static final AuditEventSubType value112368 = AuditEventSubType._(
    value: '112368',
  );

  /// value112369
  static final AuditEventSubType value112369 = AuditEventSubType._(
    value: '112369',
  );

  /// value112370
  static final AuditEventSubType value112370 = AuditEventSubType._(
    value: '112370',
  );

  /// value112371
  static final AuditEventSubType value112371 = AuditEventSubType._(
    value: '112371',
  );

  /// value112372
  static final AuditEventSubType value112372 = AuditEventSubType._(
    value: '112372',
  );

  /// value112373
  static final AuditEventSubType value112373 = AuditEventSubType._(
    value: '112373',
  );

  /// value112374
  static final AuditEventSubType value112374 = AuditEventSubType._(
    value: '112374',
  );

  /// value112375
  static final AuditEventSubType value112375 = AuditEventSubType._(
    value: '112375',
  );

  /// value112376
  static final AuditEventSubType value112376 = AuditEventSubType._(
    value: '112376',
  );

  /// value112377
  static final AuditEventSubType value112377 = AuditEventSubType._(
    value: '112377',
  );

  /// value112378
  static final AuditEventSubType value112378 = AuditEventSubType._(
    value: '112378',
  );

  /// value112379
  static final AuditEventSubType value112379 = AuditEventSubType._(
    value: '112379',
  );

  /// value112380
  static final AuditEventSubType value112380 = AuditEventSubType._(
    value: '112380',
  );

  /// value112381
  static final AuditEventSubType value112381 = AuditEventSubType._(
    value: '112381',
  );

  /// value112700
  static final AuditEventSubType value112700 = AuditEventSubType._(
    value: '112700',
  );

  /// value112701
  static final AuditEventSubType value112701 = AuditEventSubType._(
    value: '112701',
  );

  /// value112702
  static final AuditEventSubType value112702 = AuditEventSubType._(
    value: '112702',
  );

  /// value112703
  static final AuditEventSubType value112703 = AuditEventSubType._(
    value: '112703',
  );

  /// value112704
  static final AuditEventSubType value112704 = AuditEventSubType._(
    value: '112704',
  );

  /// value112705
  static final AuditEventSubType value112705 = AuditEventSubType._(
    value: '112705',
  );

  /// value112706
  static final AuditEventSubType value112706 = AuditEventSubType._(
    value: '112706',
  );

  /// value112707
  static final AuditEventSubType value112707 = AuditEventSubType._(
    value: '112707',
  );

  /// value112708
  static final AuditEventSubType value112708 = AuditEventSubType._(
    value: '112708',
  );

  /// value112709
  static final AuditEventSubType value112709 = AuditEventSubType._(
    value: '112709',
  );

  /// value112710
  static final AuditEventSubType value112710 = AuditEventSubType._(
    value: '112710',
  );

  /// value112711
  static final AuditEventSubType value112711 = AuditEventSubType._(
    value: '112711',
  );

  /// value112712
  static final AuditEventSubType value112712 = AuditEventSubType._(
    value: '112712',
  );

  /// value112713
  static final AuditEventSubType value112713 = AuditEventSubType._(
    value: '112713',
  );

  /// value112714
  static final AuditEventSubType value112714 = AuditEventSubType._(
    value: '112714',
  );

  /// value112715
  static final AuditEventSubType value112715 = AuditEventSubType._(
    value: '112715',
  );

  /// value112716
  static final AuditEventSubType value112716 = AuditEventSubType._(
    value: '112716',
  );

  /// value112717
  static final AuditEventSubType value112717 = AuditEventSubType._(
    value: '112717',
  );

  /// value112718
  static final AuditEventSubType value112718 = AuditEventSubType._(
    value: '112718',
  );

  /// value112719
  static final AuditEventSubType value112719 = AuditEventSubType._(
    value: '112719',
  );

  /// value112720
  static final AuditEventSubType value112720 = AuditEventSubType._(
    value: '112720',
  );

  /// value112721
  static final AuditEventSubType value112721 = AuditEventSubType._(
    value: '112721',
  );

  /// value113000
  static final AuditEventSubType value113000 = AuditEventSubType._(
    value: '113000',
  );

  /// value113001
  static final AuditEventSubType value113001 = AuditEventSubType._(
    value: '113001',
  );

  /// value113002
  static final AuditEventSubType value113002 = AuditEventSubType._(
    value: '113002',
  );

  /// value113003
  static final AuditEventSubType value113003 = AuditEventSubType._(
    value: '113003',
  );

  /// value113004
  static final AuditEventSubType value113004 = AuditEventSubType._(
    value: '113004',
  );

  /// value113005
  static final AuditEventSubType value113005 = AuditEventSubType._(
    value: '113005',
  );

  /// value113006
  static final AuditEventSubType value113006 = AuditEventSubType._(
    value: '113006',
  );

  /// value113007
  static final AuditEventSubType value113007 = AuditEventSubType._(
    value: '113007',
  );

  /// value113008
  static final AuditEventSubType value113008 = AuditEventSubType._(
    value: '113008',
  );

  /// value113009
  static final AuditEventSubType value113009 = AuditEventSubType._(
    value: '113009',
  );

  /// value113010
  static final AuditEventSubType value113010 = AuditEventSubType._(
    value: '113010',
  );

  /// value113011
  static final AuditEventSubType value113011 = AuditEventSubType._(
    value: '113011',
  );

  /// value113012
  static final AuditEventSubType value113012 = AuditEventSubType._(
    value: '113012',
  );

  /// value113013
  static final AuditEventSubType value113013 = AuditEventSubType._(
    value: '113013',
  );

  /// value113014
  static final AuditEventSubType value113014 = AuditEventSubType._(
    value: '113014',
  );

  /// value113015
  static final AuditEventSubType value113015 = AuditEventSubType._(
    value: '113015',
  );

  /// value113016
  static final AuditEventSubType value113016 = AuditEventSubType._(
    value: '113016',
  );

  /// value113017
  static final AuditEventSubType value113017 = AuditEventSubType._(
    value: '113017',
  );

  /// value113018
  static final AuditEventSubType value113018 = AuditEventSubType._(
    value: '113018',
  );

  /// value113020
  static final AuditEventSubType value113020 = AuditEventSubType._(
    value: '113020',
  );

  /// value113021
  static final AuditEventSubType value113021 = AuditEventSubType._(
    value: '113021',
  );

  /// value113026
  static final AuditEventSubType value113026 = AuditEventSubType._(
    value: '113026',
  );

  /// value113030
  static final AuditEventSubType value113030 = AuditEventSubType._(
    value: '113030',
  );

  /// value113031
  static final AuditEventSubType value113031 = AuditEventSubType._(
    value: '113031',
  );

  /// value113032
  static final AuditEventSubType value113032 = AuditEventSubType._(
    value: '113032',
  );

  /// value113033
  static final AuditEventSubType value113033 = AuditEventSubType._(
    value: '113033',
  );

  /// value113034
  static final AuditEventSubType value113034 = AuditEventSubType._(
    value: '113034',
  );

  /// value113035
  static final AuditEventSubType value113035 = AuditEventSubType._(
    value: '113035',
  );

  /// value113036
  static final AuditEventSubType value113036 = AuditEventSubType._(
    value: '113036',
  );

  /// value113037
  static final AuditEventSubType value113037 = AuditEventSubType._(
    value: '113037',
  );

  /// value113038
  static final AuditEventSubType value113038 = AuditEventSubType._(
    value: '113038',
  );

  /// value113039
  static final AuditEventSubType value113039 = AuditEventSubType._(
    value: '113039',
  );

  /// value113040
  static final AuditEventSubType value113040 = AuditEventSubType._(
    value: '113040',
  );

  /// value113041
  static final AuditEventSubType value113041 = AuditEventSubType._(
    value: '113041',
  );

  /// value113042
  static final AuditEventSubType value113042 = AuditEventSubType._(
    value: '113042',
  );

  /// value113043
  static final AuditEventSubType value113043 = AuditEventSubType._(
    value: '113043',
  );

  /// value113044
  static final AuditEventSubType value113044 = AuditEventSubType._(
    value: '113044',
  );

  /// value113045
  static final AuditEventSubType value113045 = AuditEventSubType._(
    value: '113045',
  );

  /// value113046
  static final AuditEventSubType value113046 = AuditEventSubType._(
    value: '113046',
  );

  /// value113047
  static final AuditEventSubType value113047 = AuditEventSubType._(
    value: '113047',
  );

  /// value113048
  static final AuditEventSubType value113048 = AuditEventSubType._(
    value: '113048',
  );

  /// value113049
  static final AuditEventSubType value113049 = AuditEventSubType._(
    value: '113049',
  );

  /// value113050
  static final AuditEventSubType value113050 = AuditEventSubType._(
    value: '113050',
  );

  /// value113051
  static final AuditEventSubType value113051 = AuditEventSubType._(
    value: '113051',
  );

  /// value113052
  static final AuditEventSubType value113052 = AuditEventSubType._(
    value: '113052',
  );

  /// value113053
  static final AuditEventSubType value113053 = AuditEventSubType._(
    value: '113053',
  );

  /// value113054
  static final AuditEventSubType value113054 = AuditEventSubType._(
    value: '113054',
  );

  /// value113055
  static final AuditEventSubType value113055 = AuditEventSubType._(
    value: '113055',
  );

  /// value113056
  static final AuditEventSubType value113056 = AuditEventSubType._(
    value: '113056',
  );

  /// value113057
  static final AuditEventSubType value113057 = AuditEventSubType._(
    value: '113057',
  );

  /// value113058
  static final AuditEventSubType value113058 = AuditEventSubType._(
    value: '113058',
  );

  /// value113059
  static final AuditEventSubType value113059 = AuditEventSubType._(
    value: '113059',
  );

  /// value113060
  static final AuditEventSubType value113060 = AuditEventSubType._(
    value: '113060',
  );

  /// value113061
  static final AuditEventSubType value113061 = AuditEventSubType._(
    value: '113061',
  );

  /// value113062
  static final AuditEventSubType value113062 = AuditEventSubType._(
    value: '113062',
  );

  /// value113063
  static final AuditEventSubType value113063 = AuditEventSubType._(
    value: '113063',
  );

  /// value113064
  static final AuditEventSubType value113064 = AuditEventSubType._(
    value: '113064',
  );

  /// value113065
  static final AuditEventSubType value113065 = AuditEventSubType._(
    value: '113065',
  );

  /// value113066
  static final AuditEventSubType value113066 = AuditEventSubType._(
    value: '113066',
  );

  /// value113067
  static final AuditEventSubType value113067 = AuditEventSubType._(
    value: '113067',
  );

  /// value113068
  static final AuditEventSubType value113068 = AuditEventSubType._(
    value: '113068',
  );

  /// value113069
  static final AuditEventSubType value113069 = AuditEventSubType._(
    value: '113069',
  );

  /// value113070
  static final AuditEventSubType value113070 = AuditEventSubType._(
    value: '113070',
  );

  /// value113071
  static final AuditEventSubType value113071 = AuditEventSubType._(
    value: '113071',
  );

  /// value113072
  static final AuditEventSubType value113072 = AuditEventSubType._(
    value: '113072',
  );

  /// value113073
  static final AuditEventSubType value113073 = AuditEventSubType._(
    value: '113073',
  );

  /// value113074
  static final AuditEventSubType value113074 = AuditEventSubType._(
    value: '113074',
  );

  /// value113075
  static final AuditEventSubType value113075 = AuditEventSubType._(
    value: '113075',
  );

  /// value113076
  static final AuditEventSubType value113076 = AuditEventSubType._(
    value: '113076',
  );

  /// value113077
  static final AuditEventSubType value113077 = AuditEventSubType._(
    value: '113077',
  );

  /// value113078
  static final AuditEventSubType value113078 = AuditEventSubType._(
    value: '113078',
  );

  /// value113079
  static final AuditEventSubType value113079 = AuditEventSubType._(
    value: '113079',
  );

  /// value113080
  static final AuditEventSubType value113080 = AuditEventSubType._(
    value: '113080',
  );

  /// value113081
  static final AuditEventSubType value113081 = AuditEventSubType._(
    value: '113081',
  );

  /// value113082
  static final AuditEventSubType value113082 = AuditEventSubType._(
    value: '113082',
  );

  /// value113083
  static final AuditEventSubType value113083 = AuditEventSubType._(
    value: '113083',
  );

  /// value113085
  static final AuditEventSubType value113085 = AuditEventSubType._(
    value: '113085',
  );

  /// value113086
  static final AuditEventSubType value113086 = AuditEventSubType._(
    value: '113086',
  );

  /// value113087
  static final AuditEventSubType value113087 = AuditEventSubType._(
    value: '113087',
  );

  /// value113088
  static final AuditEventSubType value113088 = AuditEventSubType._(
    value: '113088',
  );

  /// value113089
  static final AuditEventSubType value113089 = AuditEventSubType._(
    value: '113089',
  );

  /// value113090
  static final AuditEventSubType value113090 = AuditEventSubType._(
    value: '113090',
  );

  /// value113091
  static final AuditEventSubType value113091 = AuditEventSubType._(
    value: '113091',
  );

  /// value113092
  static final AuditEventSubType value113092 = AuditEventSubType._(
    value: '113092',
  );

  /// value113093
  static final AuditEventSubType value113093 = AuditEventSubType._(
    value: '113093',
  );

  /// value113094
  static final AuditEventSubType value113094 = AuditEventSubType._(
    value: '113094',
  );

  /// value113095
  static final AuditEventSubType value113095 = AuditEventSubType._(
    value: '113095',
  );

  /// value113096
  static final AuditEventSubType value113096 = AuditEventSubType._(
    value: '113096',
  );

  /// value113097
  static final AuditEventSubType value113097 = AuditEventSubType._(
    value: '113097',
  );

  /// value113100
  static final AuditEventSubType value113100 = AuditEventSubType._(
    value: '113100',
  );

  /// value113101
  static final AuditEventSubType value113101 = AuditEventSubType._(
    value: '113101',
  );

  /// value113102
  static final AuditEventSubType value113102 = AuditEventSubType._(
    value: '113102',
  );

  /// value113103
  static final AuditEventSubType value113103 = AuditEventSubType._(
    value: '113103',
  );

  /// value113104
  static final AuditEventSubType value113104 = AuditEventSubType._(
    value: '113104',
  );

  /// value113105
  static final AuditEventSubType value113105 = AuditEventSubType._(
    value: '113105',
  );

  /// value113106
  static final AuditEventSubType value113106 = AuditEventSubType._(
    value: '113106',
  );

  /// value113107
  static final AuditEventSubType value113107 = AuditEventSubType._(
    value: '113107',
  );

  /// value113108
  static final AuditEventSubType value113108 = AuditEventSubType._(
    value: '113108',
  );

  /// value113109
  static final AuditEventSubType value113109 = AuditEventSubType._(
    value: '113109',
  );

  /// value113110
  static final AuditEventSubType value113110 = AuditEventSubType._(
    value: '113110',
  );

  /// value113111
  static final AuditEventSubType value113111 = AuditEventSubType._(
    value: '113111',
  );

  /// value113500
  static final AuditEventSubType value113500 = AuditEventSubType._(
    value: '113500',
  );

  /// value113502
  static final AuditEventSubType value113502 = AuditEventSubType._(
    value: '113502',
  );

  /// value113503
  static final AuditEventSubType value113503 = AuditEventSubType._(
    value: '113503',
  );

  /// value113505
  static final AuditEventSubType value113505 = AuditEventSubType._(
    value: '113505',
  );

  /// value113506
  static final AuditEventSubType value113506 = AuditEventSubType._(
    value: '113506',
  );

  /// value113507
  static final AuditEventSubType value113507 = AuditEventSubType._(
    value: '113507',
  );

  /// value113508
  static final AuditEventSubType value113508 = AuditEventSubType._(
    value: '113508',
  );

  /// value113509
  static final AuditEventSubType value113509 = AuditEventSubType._(
    value: '113509',
  );

  /// value113510
  static final AuditEventSubType value113510 = AuditEventSubType._(
    value: '113510',
  );

  /// value113511
  static final AuditEventSubType value113511 = AuditEventSubType._(
    value: '113511',
  );

  /// value113512
  static final AuditEventSubType value113512 = AuditEventSubType._(
    value: '113512',
  );

  /// value113513
  static final AuditEventSubType value113513 = AuditEventSubType._(
    value: '113513',
  );

  /// value113514
  static final AuditEventSubType value113514 = AuditEventSubType._(
    value: '113514',
  );

  /// value113516
  static final AuditEventSubType value113516 = AuditEventSubType._(
    value: '113516',
  );

  /// value113517
  static final AuditEventSubType value113517 = AuditEventSubType._(
    value: '113517',
  );

  /// value113518
  static final AuditEventSubType value113518 = AuditEventSubType._(
    value: '113518',
  );

  /// value113520
  static final AuditEventSubType value113520 = AuditEventSubType._(
    value: '113520',
  );

  /// value113521
  static final AuditEventSubType value113521 = AuditEventSubType._(
    value: '113521',
  );

  /// value113522
  static final AuditEventSubType value113522 = AuditEventSubType._(
    value: '113522',
  );

  /// value113523
  static final AuditEventSubType value113523 = AuditEventSubType._(
    value: '113523',
  );

  /// value113526
  static final AuditEventSubType value113526 = AuditEventSubType._(
    value: '113526',
  );

  /// value113527
  static final AuditEventSubType value113527 = AuditEventSubType._(
    value: '113527',
  );

  /// value113528
  static final AuditEventSubType value113528 = AuditEventSubType._(
    value: '113528',
  );

  /// value113529
  static final AuditEventSubType value113529 = AuditEventSubType._(
    value: '113529',
  );

  /// value113530
  static final AuditEventSubType value113530 = AuditEventSubType._(
    value: '113530',
  );

  /// value113540
  static final AuditEventSubType value113540 = AuditEventSubType._(
    value: '113540',
  );

  /// value113541
  static final AuditEventSubType value113541 = AuditEventSubType._(
    value: '113541',
  );

  /// value113542
  static final AuditEventSubType value113542 = AuditEventSubType._(
    value: '113542',
  );

  /// value113543
  static final AuditEventSubType value113543 = AuditEventSubType._(
    value: '113543',
  );

  /// value113550
  static final AuditEventSubType value113550 = AuditEventSubType._(
    value: '113550',
  );

  /// value113551
  static final AuditEventSubType value113551 = AuditEventSubType._(
    value: '113551',
  );

  /// value113552
  static final AuditEventSubType value113552 = AuditEventSubType._(
    value: '113552',
  );

  /// value113560
  static final AuditEventSubType value113560 = AuditEventSubType._(
    value: '113560',
  );

  /// value113561
  static final AuditEventSubType value113561 = AuditEventSubType._(
    value: '113561',
  );

  /// value113562
  static final AuditEventSubType value113562 = AuditEventSubType._(
    value: '113562',
  );

  /// value113563
  static final AuditEventSubType value113563 = AuditEventSubType._(
    value: '113563',
  );

  /// value113568
  static final AuditEventSubType value113568 = AuditEventSubType._(
    value: '113568',
  );

  /// value113570
  static final AuditEventSubType value113570 = AuditEventSubType._(
    value: '113570',
  );

  /// value113571
  static final AuditEventSubType value113571 = AuditEventSubType._(
    value: '113571',
  );

  /// value113572
  static final AuditEventSubType value113572 = AuditEventSubType._(
    value: '113572',
  );

  /// value113573
  static final AuditEventSubType value113573 = AuditEventSubType._(
    value: '113573',
  );

  /// value113574
  static final AuditEventSubType value113574 = AuditEventSubType._(
    value: '113574',
  );

  /// value113575
  static final AuditEventSubType value113575 = AuditEventSubType._(
    value: '113575',
  );

  /// value113576
  static final AuditEventSubType value113576 = AuditEventSubType._(
    value: '113576',
  );

  /// value113577
  static final AuditEventSubType value113577 = AuditEventSubType._(
    value: '113577',
  );

  /// value113601
  static final AuditEventSubType value113601 = AuditEventSubType._(
    value: '113601',
  );

  /// value113602
  static final AuditEventSubType value113602 = AuditEventSubType._(
    value: '113602',
  );

  /// value113603
  static final AuditEventSubType value113603 = AuditEventSubType._(
    value: '113603',
  );

  /// value113605
  static final AuditEventSubType value113605 = AuditEventSubType._(
    value: '113605',
  );

  /// value113606
  static final AuditEventSubType value113606 = AuditEventSubType._(
    value: '113606',
  );

  /// value113607
  static final AuditEventSubType value113607 = AuditEventSubType._(
    value: '113607',
  );

  /// value113608
  static final AuditEventSubType value113608 = AuditEventSubType._(
    value: '113608',
  );

  /// value113609
  static final AuditEventSubType value113609 = AuditEventSubType._(
    value: '113609',
  );

  /// value113611
  static final AuditEventSubType value113611 = AuditEventSubType._(
    value: '113611',
  );

  /// value113612
  static final AuditEventSubType value113612 = AuditEventSubType._(
    value: '113612',
  );

  /// value113613
  static final AuditEventSubType value113613 = AuditEventSubType._(
    value: '113613',
  );

  /// value113620
  static final AuditEventSubType value113620 = AuditEventSubType._(
    value: '113620',
  );

  /// value113621
  static final AuditEventSubType value113621 = AuditEventSubType._(
    value: '113621',
  );

  /// value113622
  static final AuditEventSubType value113622 = AuditEventSubType._(
    value: '113622',
  );

  /// value113630
  static final AuditEventSubType value113630 = AuditEventSubType._(
    value: '113630',
  );

  /// value113631
  static final AuditEventSubType value113631 = AuditEventSubType._(
    value: '113631',
  );

  /// value113650
  static final AuditEventSubType value113650 = AuditEventSubType._(
    value: '113650',
  );

  /// value113651
  static final AuditEventSubType value113651 = AuditEventSubType._(
    value: '113651',
  );

  /// value113652
  static final AuditEventSubType value113652 = AuditEventSubType._(
    value: '113652',
  );

  /// value113653
  static final AuditEventSubType value113653 = AuditEventSubType._(
    value: '113653',
  );

  /// value113661
  static final AuditEventSubType value113661 = AuditEventSubType._(
    value: '113661',
  );

  /// value113662
  static final AuditEventSubType value113662 = AuditEventSubType._(
    value: '113662',
  );

  /// value113663
  static final AuditEventSubType value113663 = AuditEventSubType._(
    value: '113663',
  );

  /// value113664
  static final AuditEventSubType value113664 = AuditEventSubType._(
    value: '113664',
  );

  /// value113665
  static final AuditEventSubType value113665 = AuditEventSubType._(
    value: '113665',
  );

  /// value113666
  static final AuditEventSubType value113666 = AuditEventSubType._(
    value: '113666',
  );

  /// value113669
  static final AuditEventSubType value113669 = AuditEventSubType._(
    value: '113669',
  );

  /// value113670
  static final AuditEventSubType value113670 = AuditEventSubType._(
    value: '113670',
  );

  /// value113671
  static final AuditEventSubType value113671 = AuditEventSubType._(
    value: '113671',
  );

  /// value113680
  static final AuditEventSubType value113680 = AuditEventSubType._(
    value: '113680',
  );

  /// value113681
  static final AuditEventSubType value113681 = AuditEventSubType._(
    value: '113681',
  );

  /// value113682
  static final AuditEventSubType value113682 = AuditEventSubType._(
    value: '113682',
  );

  /// value113683
  static final AuditEventSubType value113683 = AuditEventSubType._(
    value: '113683',
  );

  /// value113684
  static final AuditEventSubType value113684 = AuditEventSubType._(
    value: '113684',
  );

  /// value113685
  static final AuditEventSubType value113685 = AuditEventSubType._(
    value: '113685',
  );

  /// value113686
  static final AuditEventSubType value113686 = AuditEventSubType._(
    value: '113686',
  );

  /// value113687
  static final AuditEventSubType value113687 = AuditEventSubType._(
    value: '113687',
  );

  /// value113688
  static final AuditEventSubType value113688 = AuditEventSubType._(
    value: '113688',
  );

  /// value113689
  static final AuditEventSubType value113689 = AuditEventSubType._(
    value: '113689',
  );

  /// value113690
  static final AuditEventSubType value113690 = AuditEventSubType._(
    value: '113690',
  );

  /// value113691
  static final AuditEventSubType value113691 = AuditEventSubType._(
    value: '113691',
  );

  /// value113692
  static final AuditEventSubType value113692 = AuditEventSubType._(
    value: '113692',
  );

  /// value113701
  static final AuditEventSubType value113701 = AuditEventSubType._(
    value: '113701',
  );

  /// value113702
  static final AuditEventSubType value113702 = AuditEventSubType._(
    value: '113702',
  );

  /// value113704
  static final AuditEventSubType value113704 = AuditEventSubType._(
    value: '113704',
  );

  /// value113705
  static final AuditEventSubType value113705 = AuditEventSubType._(
    value: '113705',
  );

  /// value113706
  static final AuditEventSubType value113706 = AuditEventSubType._(
    value: '113706',
  );

  /// value113710
  static final AuditEventSubType value113710 = AuditEventSubType._(
    value: '113710',
  );

  /// value113711
  static final AuditEventSubType value113711 = AuditEventSubType._(
    value: '113711',
  );

  /// value113720
  static final AuditEventSubType value113720 = AuditEventSubType._(
    value: '113720',
  );

  /// value113721
  static final AuditEventSubType value113721 = AuditEventSubType._(
    value: '113721',
  );

  /// value113722
  static final AuditEventSubType value113722 = AuditEventSubType._(
    value: '113722',
  );

  /// value113723
  static final AuditEventSubType value113723 = AuditEventSubType._(
    value: '113723',
  );

  /// value113724
  static final AuditEventSubType value113724 = AuditEventSubType._(
    value: '113724',
  );

  /// value113725
  static final AuditEventSubType value113725 = AuditEventSubType._(
    value: '113725',
  );

  /// value113726
  static final AuditEventSubType value113726 = AuditEventSubType._(
    value: '113726',
  );

  /// value113727
  static final AuditEventSubType value113727 = AuditEventSubType._(
    value: '113727',
  );

  /// value113728
  static final AuditEventSubType value113728 = AuditEventSubType._(
    value: '113728',
  );

  /// value113729
  static final AuditEventSubType value113729 = AuditEventSubType._(
    value: '113729',
  );

  /// value113730
  static final AuditEventSubType value113730 = AuditEventSubType._(
    value: '113730',
  );

  /// value113731
  static final AuditEventSubType value113731 = AuditEventSubType._(
    value: '113731',
  );

  /// value113732
  static final AuditEventSubType value113732 = AuditEventSubType._(
    value: '113732',
  );

  /// value113733
  static final AuditEventSubType value113733 = AuditEventSubType._(
    value: '113733',
  );

  /// value113734
  static final AuditEventSubType value113734 = AuditEventSubType._(
    value: '113734',
  );

  /// value113735
  static final AuditEventSubType value113735 = AuditEventSubType._(
    value: '113735',
  );

  /// value113736
  static final AuditEventSubType value113736 = AuditEventSubType._(
    value: '113736',
  );

  /// value113737
  static final AuditEventSubType value113737 = AuditEventSubType._(
    value: '113737',
  );

  /// value113738
  static final AuditEventSubType value113738 = AuditEventSubType._(
    value: '113738',
  );

  /// value113739
  static final AuditEventSubType value113739 = AuditEventSubType._(
    value: '113739',
  );

  /// value113740
  static final AuditEventSubType value113740 = AuditEventSubType._(
    value: '113740',
  );

  /// value113742
  static final AuditEventSubType value113742 = AuditEventSubType._(
    value: '113742',
  );

  /// value113743
  static final AuditEventSubType value113743 = AuditEventSubType._(
    value: '113743',
  );

  /// value113744
  static final AuditEventSubType value113744 = AuditEventSubType._(
    value: '113744',
  );

  /// value113745
  static final AuditEventSubType value113745 = AuditEventSubType._(
    value: '113745',
  );

  /// value113748
  static final AuditEventSubType value113748 = AuditEventSubType._(
    value: '113748',
  );

  /// value113750
  static final AuditEventSubType value113750 = AuditEventSubType._(
    value: '113750',
  );

  /// value113751
  static final AuditEventSubType value113751 = AuditEventSubType._(
    value: '113751',
  );

  /// value113752
  static final AuditEventSubType value113752 = AuditEventSubType._(
    value: '113752',
  );

  /// value113753
  static final AuditEventSubType value113753 = AuditEventSubType._(
    value: '113753',
  );

  /// value113754
  static final AuditEventSubType value113754 = AuditEventSubType._(
    value: '113754',
  );

  /// value113755
  static final AuditEventSubType value113755 = AuditEventSubType._(
    value: '113755',
  );

  /// value113756
  static final AuditEventSubType value113756 = AuditEventSubType._(
    value: '113756',
  );

  /// value113757
  static final AuditEventSubType value113757 = AuditEventSubType._(
    value: '113757',
  );

  /// value113758
  static final AuditEventSubType value113758 = AuditEventSubType._(
    value: '113758',
  );

  /// value113759
  static final AuditEventSubType value113759 = AuditEventSubType._(
    value: '113759',
  );

  /// value113760
  static final AuditEventSubType value113760 = AuditEventSubType._(
    value: '113760',
  );

  /// value113761
  static final AuditEventSubType value113761 = AuditEventSubType._(
    value: '113761',
  );

  /// value113763
  static final AuditEventSubType value113763 = AuditEventSubType._(
    value: '113763',
  );

  /// value113764
  static final AuditEventSubType value113764 = AuditEventSubType._(
    value: '113764',
  );

  /// value113766
  static final AuditEventSubType value113766 = AuditEventSubType._(
    value: '113766',
  );

  /// value113767
  static final AuditEventSubType value113767 = AuditEventSubType._(
    value: '113767',
  );

  /// value113768
  static final AuditEventSubType value113768 = AuditEventSubType._(
    value: '113768',
  );

  /// value113769
  static final AuditEventSubType value113769 = AuditEventSubType._(
    value: '113769',
  );

  /// value113770
  static final AuditEventSubType value113770 = AuditEventSubType._(
    value: '113770',
  );

  /// value113771
  static final AuditEventSubType value113771 = AuditEventSubType._(
    value: '113771',
  );

  /// value113772
  static final AuditEventSubType value113772 = AuditEventSubType._(
    value: '113772',
  );

  /// value113773
  static final AuditEventSubType value113773 = AuditEventSubType._(
    value: '113773',
  );

  /// value113780
  static final AuditEventSubType value113780 = AuditEventSubType._(
    value: '113780',
  );

  /// value113788
  static final AuditEventSubType value113788 = AuditEventSubType._(
    value: '113788',
  );

  /// value113789
  static final AuditEventSubType value113789 = AuditEventSubType._(
    value: '113789',
  );

  /// value113790
  static final AuditEventSubType value113790 = AuditEventSubType._(
    value: '113790',
  );

  /// value113791
  static final AuditEventSubType value113791 = AuditEventSubType._(
    value: '113791',
  );

  /// value113792
  static final AuditEventSubType value113792 = AuditEventSubType._(
    value: '113792',
  );

  /// value113793
  static final AuditEventSubType value113793 = AuditEventSubType._(
    value: '113793',
  );

  /// value113794
  static final AuditEventSubType value113794 = AuditEventSubType._(
    value: '113794',
  );

  /// value113795
  static final AuditEventSubType value113795 = AuditEventSubType._(
    value: '113795',
  );

  /// value113800
  static final AuditEventSubType value113800 = AuditEventSubType._(
    value: '113800',
  );

  /// value113801
  static final AuditEventSubType value113801 = AuditEventSubType._(
    value: '113801',
  );

  /// value113802
  static final AuditEventSubType value113802 = AuditEventSubType._(
    value: '113802',
  );

  /// value113803
  static final AuditEventSubType value113803 = AuditEventSubType._(
    value: '113803',
  );

  /// value113804
  static final AuditEventSubType value113804 = AuditEventSubType._(
    value: '113804',
  );

  /// value113805
  static final AuditEventSubType value113805 = AuditEventSubType._(
    value: '113805',
  );

  /// value113806
  static final AuditEventSubType value113806 = AuditEventSubType._(
    value: '113806',
  );

  /// value113807
  static final AuditEventSubType value113807 = AuditEventSubType._(
    value: '113807',
  );

  /// value113808
  static final AuditEventSubType value113808 = AuditEventSubType._(
    value: '113808',
  );

  /// value113809
  static final AuditEventSubType value113809 = AuditEventSubType._(
    value: '113809',
  );

  /// value113810
  static final AuditEventSubType value113810 = AuditEventSubType._(
    value: '113810',
  );

  /// value113811
  static final AuditEventSubType value113811 = AuditEventSubType._(
    value: '113811',
  );

  /// value113812
  static final AuditEventSubType value113812 = AuditEventSubType._(
    value: '113812',
  );

  /// value113813
  static final AuditEventSubType value113813 = AuditEventSubType._(
    value: '113813',
  );

  /// value113814
  static final AuditEventSubType value113814 = AuditEventSubType._(
    value: '113814',
  );

  /// value113815
  static final AuditEventSubType value113815 = AuditEventSubType._(
    value: '113815',
  );

  /// value113816
  static final AuditEventSubType value113816 = AuditEventSubType._(
    value: '113816',
  );

  /// value113817
  static final AuditEventSubType value113817 = AuditEventSubType._(
    value: '113817',
  );

  /// value113818
  static final AuditEventSubType value113818 = AuditEventSubType._(
    value: '113818',
  );

  /// value113819
  static final AuditEventSubType value113819 = AuditEventSubType._(
    value: '113819',
  );

  /// value113820
  static final AuditEventSubType value113820 = AuditEventSubType._(
    value: '113820',
  );

  /// value113821
  static final AuditEventSubType value113821 = AuditEventSubType._(
    value: '113821',
  );

  /// value113822
  static final AuditEventSubType value113822 = AuditEventSubType._(
    value: '113822',
  );

  /// value113823
  static final AuditEventSubType value113823 = AuditEventSubType._(
    value: '113823',
  );

  /// value113824
  static final AuditEventSubType value113824 = AuditEventSubType._(
    value: '113824',
  );

  /// value113825
  static final AuditEventSubType value113825 = AuditEventSubType._(
    value: '113825',
  );

  /// value113826
  static final AuditEventSubType value113826 = AuditEventSubType._(
    value: '113826',
  );

  /// value113827
  static final AuditEventSubType value113827 = AuditEventSubType._(
    value: '113827',
  );

  /// value113828
  static final AuditEventSubType value113828 = AuditEventSubType._(
    value: '113828',
  );

  /// value113829
  static final AuditEventSubType value113829 = AuditEventSubType._(
    value: '113829',
  );

  /// value113830
  static final AuditEventSubType value113830 = AuditEventSubType._(
    value: '113830',
  );

  /// value113831
  static final AuditEventSubType value113831 = AuditEventSubType._(
    value: '113831',
  );

  /// value113832
  static final AuditEventSubType value113832 = AuditEventSubType._(
    value: '113832',
  );

  /// value113833
  static final AuditEventSubType value113833 = AuditEventSubType._(
    value: '113833',
  );

  /// value113834
  static final AuditEventSubType value113834 = AuditEventSubType._(
    value: '113834',
  );

  /// value113835
  static final AuditEventSubType value113835 = AuditEventSubType._(
    value: '113835',
  );

  /// value113836
  static final AuditEventSubType value113836 = AuditEventSubType._(
    value: '113836',
  );

  /// value113837
  static final AuditEventSubType value113837 = AuditEventSubType._(
    value: '113837',
  );

  /// value113838
  static final AuditEventSubType value113838 = AuditEventSubType._(
    value: '113838',
  );

  /// value113839
  static final AuditEventSubType value113839 = AuditEventSubType._(
    value: '113839',
  );

  /// value113840
  static final AuditEventSubType value113840 = AuditEventSubType._(
    value: '113840',
  );

  /// value113841
  static final AuditEventSubType value113841 = AuditEventSubType._(
    value: '113841',
  );

  /// value113842
  static final AuditEventSubType value113842 = AuditEventSubType._(
    value: '113842',
  );

  /// value113845
  static final AuditEventSubType value113845 = AuditEventSubType._(
    value: '113845',
  );

  /// value113846
  static final AuditEventSubType value113846 = AuditEventSubType._(
    value: '113846',
  );

  /// value113847
  static final AuditEventSubType value113847 = AuditEventSubType._(
    value: '113847',
  );

  /// value113850
  static final AuditEventSubType value113850 = AuditEventSubType._(
    value: '113850',
  );

  /// value113851
  static final AuditEventSubType value113851 = AuditEventSubType._(
    value: '113851',
  );

  /// value113852
  static final AuditEventSubType value113852 = AuditEventSubType._(
    value: '113852',
  );

  /// value113853
  static final AuditEventSubType value113853 = AuditEventSubType._(
    value: '113853',
  );

  /// value113854
  static final AuditEventSubType value113854 = AuditEventSubType._(
    value: '113854',
  );

  /// value113855
  static final AuditEventSubType value113855 = AuditEventSubType._(
    value: '113855',
  );

  /// value113856
  static final AuditEventSubType value113856 = AuditEventSubType._(
    value: '113856',
  );

  /// value113857
  static final AuditEventSubType value113857 = AuditEventSubType._(
    value: '113857',
  );

  /// value113858
  static final AuditEventSubType value113858 = AuditEventSubType._(
    value: '113858',
  );

  /// value113859
  static final AuditEventSubType value113859 = AuditEventSubType._(
    value: '113859',
  );

  /// value113860
  static final AuditEventSubType value113860 = AuditEventSubType._(
    value: '113860',
  );

  /// value113861
  static final AuditEventSubType value113861 = AuditEventSubType._(
    value: '113861',
  );

  /// value113862
  static final AuditEventSubType value113862 = AuditEventSubType._(
    value: '113862',
  );

  /// value113863
  static final AuditEventSubType value113863 = AuditEventSubType._(
    value: '113863',
  );

  /// value113864
  static final AuditEventSubType value113864 = AuditEventSubType._(
    value: '113864',
  );

  /// value113865
  static final AuditEventSubType value113865 = AuditEventSubType._(
    value: '113865',
  );

  /// value113866
  static final AuditEventSubType value113866 = AuditEventSubType._(
    value: '113866',
  );

  /// value113867
  static final AuditEventSubType value113867 = AuditEventSubType._(
    value: '113867',
  );

  /// value113868
  static final AuditEventSubType value113868 = AuditEventSubType._(
    value: '113868',
  );

  /// value113870
  static final AuditEventSubType value113870 = AuditEventSubType._(
    value: '113870',
  );

  /// value113871
  static final AuditEventSubType value113871 = AuditEventSubType._(
    value: '113871',
  );

  /// value113872
  static final AuditEventSubType value113872 = AuditEventSubType._(
    value: '113872',
  );

  /// value113873
  static final AuditEventSubType value113873 = AuditEventSubType._(
    value: '113873',
  );

  /// value113874
  static final AuditEventSubType value113874 = AuditEventSubType._(
    value: '113874',
  );

  /// value113875
  static final AuditEventSubType value113875 = AuditEventSubType._(
    value: '113875',
  );

  /// value113876
  static final AuditEventSubType value113876 = AuditEventSubType._(
    value: '113876',
  );

  /// value113877
  static final AuditEventSubType value113877 = AuditEventSubType._(
    value: '113877',
  );

  /// value113878
  static final AuditEventSubType value113878 = AuditEventSubType._(
    value: '113878',
  );

  /// value113879
  static final AuditEventSubType value113879 = AuditEventSubType._(
    value: '113879',
  );

  /// value113880
  static final AuditEventSubType value113880 = AuditEventSubType._(
    value: '113880',
  );

  /// value113890
  static final AuditEventSubType value113890 = AuditEventSubType._(
    value: '113890',
  );

  /// value113893
  static final AuditEventSubType value113893 = AuditEventSubType._(
    value: '113893',
  );

  /// value113895
  static final AuditEventSubType value113895 = AuditEventSubType._(
    value: '113895',
  );

  /// value113896
  static final AuditEventSubType value113896 = AuditEventSubType._(
    value: '113896',
  );

  /// value113897
  static final AuditEventSubType value113897 = AuditEventSubType._(
    value: '113897',
  );

  /// value113898
  static final AuditEventSubType value113898 = AuditEventSubType._(
    value: '113898',
  );

  /// value113899
  static final AuditEventSubType value113899 = AuditEventSubType._(
    value: '113899',
  );

  /// value113900
  static final AuditEventSubType value113900 = AuditEventSubType._(
    value: '113900',
  );

  /// value113901
  static final AuditEventSubType value113901 = AuditEventSubType._(
    value: '113901',
  );

  /// value113902
  static final AuditEventSubType value113902 = AuditEventSubType._(
    value: '113902',
  );

  /// value113903
  static final AuditEventSubType value113903 = AuditEventSubType._(
    value: '113903',
  );

  /// value113904
  static final AuditEventSubType value113904 = AuditEventSubType._(
    value: '113904',
  );

  /// value113905
  static final AuditEventSubType value113905 = AuditEventSubType._(
    value: '113905',
  );

  /// value113906
  static final AuditEventSubType value113906 = AuditEventSubType._(
    value: '113906',
  );

  /// value113907
  static final AuditEventSubType value113907 = AuditEventSubType._(
    value: '113907',
  );

  /// value113908
  static final AuditEventSubType value113908 = AuditEventSubType._(
    value: '113908',
  );

  /// value113909
  static final AuditEventSubType value113909 = AuditEventSubType._(
    value: '113909',
  );

  /// value113910
  static final AuditEventSubType value113910 = AuditEventSubType._(
    value: '113910',
  );

  /// value113911
  static final AuditEventSubType value113911 = AuditEventSubType._(
    value: '113911',
  );

  /// value113912
  static final AuditEventSubType value113912 = AuditEventSubType._(
    value: '113912',
  );

  /// value113913
  static final AuditEventSubType value113913 = AuditEventSubType._(
    value: '113913',
  );

  /// value113914
  static final AuditEventSubType value113914 = AuditEventSubType._(
    value: '113914',
  );

  /// value113921
  static final AuditEventSubType value113921 = AuditEventSubType._(
    value: '113921',
  );

  /// value113922
  static final AuditEventSubType value113922 = AuditEventSubType._(
    value: '113922',
  );

  /// value113923
  static final AuditEventSubType value113923 = AuditEventSubType._(
    value: '113923',
  );

  /// value113930
  static final AuditEventSubType value113930 = AuditEventSubType._(
    value: '113930',
  );

  /// value113931
  static final AuditEventSubType value113931 = AuditEventSubType._(
    value: '113931',
  );

  /// value113932
  static final AuditEventSubType value113932 = AuditEventSubType._(
    value: '113932',
  );

  /// value113933
  static final AuditEventSubType value113933 = AuditEventSubType._(
    value: '113933',
  );

  /// value113934
  static final AuditEventSubType value113934 = AuditEventSubType._(
    value: '113934',
  );

  /// value113935
  static final AuditEventSubType value113935 = AuditEventSubType._(
    value: '113935',
  );

  /// value113936
  static final AuditEventSubType value113936 = AuditEventSubType._(
    value: '113936',
  );

  /// value113937
  static final AuditEventSubType value113937 = AuditEventSubType._(
    value: '113937',
  );

  /// value113940
  static final AuditEventSubType value113940 = AuditEventSubType._(
    value: '113940',
  );

  /// value113941
  static final AuditEventSubType value113941 = AuditEventSubType._(
    value: '113941',
  );

  /// value113942
  static final AuditEventSubType value113942 = AuditEventSubType._(
    value: '113942',
  );

  /// value113943
  static final AuditEventSubType value113943 = AuditEventSubType._(
    value: '113943',
  );

  /// value113944
  static final AuditEventSubType value113944 = AuditEventSubType._(
    value: '113944',
  );

  /// value113945
  static final AuditEventSubType value113945 = AuditEventSubType._(
    value: '113945',
  );

  /// value113946
  static final AuditEventSubType value113946 = AuditEventSubType._(
    value: '113946',
  );

  /// value113947
  static final AuditEventSubType value113947 = AuditEventSubType._(
    value: '113947',
  );

  /// value113948
  static final AuditEventSubType value113948 = AuditEventSubType._(
    value: '113948',
  );

  /// value113949
  static final AuditEventSubType value113949 = AuditEventSubType._(
    value: '113949',
  );

  /// value113950
  static final AuditEventSubType value113950 = AuditEventSubType._(
    value: '113950',
  );

  /// value113951
  static final AuditEventSubType value113951 = AuditEventSubType._(
    value: '113951',
  );

  /// value113952
  static final AuditEventSubType value113952 = AuditEventSubType._(
    value: '113952',
  );

  /// value113953
  static final AuditEventSubType value113953 = AuditEventSubType._(
    value: '113953',
  );

  /// value113954
  static final AuditEventSubType value113954 = AuditEventSubType._(
    value: '113954',
  );

  /// value113955
  static final AuditEventSubType value113955 = AuditEventSubType._(
    value: '113955',
  );

  /// value113956
  static final AuditEventSubType value113956 = AuditEventSubType._(
    value: '113956',
  );

  /// value113957
  static final AuditEventSubType value113957 = AuditEventSubType._(
    value: '113957',
  );

  /// value113958
  static final AuditEventSubType value113958 = AuditEventSubType._(
    value: '113958',
  );

  /// value113959
  static final AuditEventSubType value113959 = AuditEventSubType._(
    value: '113959',
  );

  /// value113961
  static final AuditEventSubType value113961 = AuditEventSubType._(
    value: '113961',
  );

  /// value113962
  static final AuditEventSubType value113962 = AuditEventSubType._(
    value: '113962',
  );

  /// value113963
  static final AuditEventSubType value113963 = AuditEventSubType._(
    value: '113963',
  );

  /// value113970
  static final AuditEventSubType value113970 = AuditEventSubType._(
    value: '113970',
  );

  /// value114000
  static final AuditEventSubType value114000 = AuditEventSubType._(
    value: '114000',
  );

  /// value114001
  static final AuditEventSubType value114001 = AuditEventSubType._(
    value: '114001',
  );

  /// value114002
  static final AuditEventSubType value114002 = AuditEventSubType._(
    value: '114002',
  );

  /// value114003
  static final AuditEventSubType value114003 = AuditEventSubType._(
    value: '114003',
  );

  /// value114004
  static final AuditEventSubType value114004 = AuditEventSubType._(
    value: '114004',
  );

  /// value114005
  static final AuditEventSubType value114005 = AuditEventSubType._(
    value: '114005',
  );

  /// value114006
  static final AuditEventSubType value114006 = AuditEventSubType._(
    value: '114006',
  );

  /// value114007
  static final AuditEventSubType value114007 = AuditEventSubType._(
    value: '114007',
  );

  /// value114008
  static final AuditEventSubType value114008 = AuditEventSubType._(
    value: '114008',
  );

  /// value114009
  static final AuditEventSubType value114009 = AuditEventSubType._(
    value: '114009',
  );

  /// value114010
  static final AuditEventSubType value114010 = AuditEventSubType._(
    value: '114010',
  );

  /// value114011
  static final AuditEventSubType value114011 = AuditEventSubType._(
    value: '114011',
  );

  /// value114201
  static final AuditEventSubType value114201 = AuditEventSubType._(
    value: '114201',
  );

  /// value114202
  static final AuditEventSubType value114202 = AuditEventSubType._(
    value: '114202',
  );

  /// value114203
  static final AuditEventSubType value114203 = AuditEventSubType._(
    value: '114203',
  );

  /// value114204
  static final AuditEventSubType value114204 = AuditEventSubType._(
    value: '114204',
  );

  /// value114205
  static final AuditEventSubType value114205 = AuditEventSubType._(
    value: '114205',
  );

  /// value114206
  static final AuditEventSubType value114206 = AuditEventSubType._(
    value: '114206',
  );

  /// value114207
  static final AuditEventSubType value114207 = AuditEventSubType._(
    value: '114207',
  );

  /// value114208
  static final AuditEventSubType value114208 = AuditEventSubType._(
    value: '114208',
  );

  /// value114209
  static final AuditEventSubType value114209 = AuditEventSubType._(
    value: '114209',
  );

  /// value114210
  static final AuditEventSubType value114210 = AuditEventSubType._(
    value: '114210',
  );

  /// value114211
  static final AuditEventSubType value114211 = AuditEventSubType._(
    value: '114211',
  );

  /// value114213
  static final AuditEventSubType value114213 = AuditEventSubType._(
    value: '114213',
  );

  /// value114215
  static final AuditEventSubType value114215 = AuditEventSubType._(
    value: '114215',
  );

  /// value114216
  static final AuditEventSubType value114216 = AuditEventSubType._(
    value: '114216',
  );

  /// value121001
  static final AuditEventSubType value121001 = AuditEventSubType._(
    value: '121001',
  );

  /// value121002
  static final AuditEventSubType value121002 = AuditEventSubType._(
    value: '121002',
  );

  /// value121003
  static final AuditEventSubType value121003 = AuditEventSubType._(
    value: '121003',
  );

  /// value121004
  static final AuditEventSubType value121004 = AuditEventSubType._(
    value: '121004',
  );

  /// value121005
  static final AuditEventSubType value121005 = AuditEventSubType._(
    value: '121005',
  );

  /// value121006
  static final AuditEventSubType value121006 = AuditEventSubType._(
    value: '121006',
  );

  /// value121007
  static final AuditEventSubType value121007 = AuditEventSubType._(
    value: '121007',
  );

  /// value121008
  static final AuditEventSubType value121008 = AuditEventSubType._(
    value: '121008',
  );

  /// value121009
  static final AuditEventSubType value121009 = AuditEventSubType._(
    value: '121009',
  );

  /// value121010
  static final AuditEventSubType value121010 = AuditEventSubType._(
    value: '121010',
  );

  /// value121011
  static final AuditEventSubType value121011 = AuditEventSubType._(
    value: '121011',
  );

  /// value121012
  static final AuditEventSubType value121012 = AuditEventSubType._(
    value: '121012',
  );

  /// value121013
  static final AuditEventSubType value121013 = AuditEventSubType._(
    value: '121013',
  );

  /// value121014
  static final AuditEventSubType value121014 = AuditEventSubType._(
    value: '121014',
  );

  /// value121015
  static final AuditEventSubType value121015 = AuditEventSubType._(
    value: '121015',
  );

  /// value121016
  static final AuditEventSubType value121016 = AuditEventSubType._(
    value: '121016',
  );

  /// value121017
  static final AuditEventSubType value121017 = AuditEventSubType._(
    value: '121017',
  );

  /// value121018
  static final AuditEventSubType value121018 = AuditEventSubType._(
    value: '121018',
  );

  /// value121019
  static final AuditEventSubType value121019 = AuditEventSubType._(
    value: '121019',
  );

  /// value121020
  static final AuditEventSubType value121020 = AuditEventSubType._(
    value: '121020',
  );

  /// value121021
  static final AuditEventSubType value121021 = AuditEventSubType._(
    value: '121021',
  );

  /// value121022
  static final AuditEventSubType value121022 = AuditEventSubType._(
    value: '121022',
  );

  /// value121023
  static final AuditEventSubType value121023 = AuditEventSubType._(
    value: '121023',
  );

  /// value121024
  static final AuditEventSubType value121024 = AuditEventSubType._(
    value: '121024',
  );

  /// value121025
  static final AuditEventSubType value121025 = AuditEventSubType._(
    value: '121025',
  );

  /// value121026
  static final AuditEventSubType value121026 = AuditEventSubType._(
    value: '121026',
  );

  /// value121027
  static final AuditEventSubType value121027 = AuditEventSubType._(
    value: '121027',
  );

  /// value121028
  static final AuditEventSubType value121028 = AuditEventSubType._(
    value: '121028',
  );

  /// value121029
  static final AuditEventSubType value121029 = AuditEventSubType._(
    value: '121029',
  );

  /// value121030
  static final AuditEventSubType value121030 = AuditEventSubType._(
    value: '121030',
  );

  /// value121031
  static final AuditEventSubType value121031 = AuditEventSubType._(
    value: '121031',
  );

  /// value121032
  static final AuditEventSubType value121032 = AuditEventSubType._(
    value: '121032',
  );

  /// value121033
  static final AuditEventSubType value121033 = AuditEventSubType._(
    value: '121033',
  );

  /// value121034
  static final AuditEventSubType value121034 = AuditEventSubType._(
    value: '121034',
  );

  /// value121035
  static final AuditEventSubType value121035 = AuditEventSubType._(
    value: '121035',
  );

  /// value121036
  static final AuditEventSubType value121036 = AuditEventSubType._(
    value: '121036',
  );

  /// value121037
  static final AuditEventSubType value121037 = AuditEventSubType._(
    value: '121037',
  );

  /// value121038
  static final AuditEventSubType value121038 = AuditEventSubType._(
    value: '121038',
  );

  /// value121039
  static final AuditEventSubType value121039 = AuditEventSubType._(
    value: '121039',
  );

  /// value121040
  static final AuditEventSubType value121040 = AuditEventSubType._(
    value: '121040',
  );

  /// value121041
  static final AuditEventSubType value121041 = AuditEventSubType._(
    value: '121041',
  );

  /// value121042
  static final AuditEventSubType value121042 = AuditEventSubType._(
    value: '121042',
  );

  /// value121043
  static final AuditEventSubType value121043 = AuditEventSubType._(
    value: '121043',
  );

  /// value121044
  static final AuditEventSubType value121044 = AuditEventSubType._(
    value: '121044',
  );

  /// value121045
  static final AuditEventSubType value121045 = AuditEventSubType._(
    value: '121045',
  );

  /// value121046
  static final AuditEventSubType value121046 = AuditEventSubType._(
    value: '121046',
  );

  /// value121047
  static final AuditEventSubType value121047 = AuditEventSubType._(
    value: '121047',
  );

  /// value121048
  static final AuditEventSubType value121048 = AuditEventSubType._(
    value: '121048',
  );

  /// value121049
  static final AuditEventSubType value121049 = AuditEventSubType._(
    value: '121049',
  );

  /// value121050
  static final AuditEventSubType value121050 = AuditEventSubType._(
    value: '121050',
  );

  /// value121051
  static final AuditEventSubType value121051 = AuditEventSubType._(
    value: '121051',
  );

  /// value121052
  static final AuditEventSubType value121052 = AuditEventSubType._(
    value: '121052',
  );

  /// value121053
  static final AuditEventSubType value121053 = AuditEventSubType._(
    value: '121053',
  );

  /// value121054
  static final AuditEventSubType value121054 = AuditEventSubType._(
    value: '121054',
  );

  /// value121055
  static final AuditEventSubType value121055 = AuditEventSubType._(
    value: '121055',
  );

  /// value121056
  static final AuditEventSubType value121056 = AuditEventSubType._(
    value: '121056',
  );

  /// value121057
  static final AuditEventSubType value121057 = AuditEventSubType._(
    value: '121057',
  );

  /// value121058
  static final AuditEventSubType value121058 = AuditEventSubType._(
    value: '121058',
  );

  /// value121059
  static final AuditEventSubType value121059 = AuditEventSubType._(
    value: '121059',
  );

  /// value121060
  static final AuditEventSubType value121060 = AuditEventSubType._(
    value: '121060',
  );

  /// value121062
  static final AuditEventSubType value121062 = AuditEventSubType._(
    value: '121062',
  );

  /// value121064
  static final AuditEventSubType value121064 = AuditEventSubType._(
    value: '121064',
  );

  /// value121065
  static final AuditEventSubType value121065 = AuditEventSubType._(
    value: '121065',
  );

  /// value121066
  static final AuditEventSubType value121066 = AuditEventSubType._(
    value: '121066',
  );

  /// value121068
  static final AuditEventSubType value121068 = AuditEventSubType._(
    value: '121068',
  );

  /// value121069
  static final AuditEventSubType value121069 = AuditEventSubType._(
    value: '121069',
  );

  /// value121070
  static final AuditEventSubType value121070 = AuditEventSubType._(
    value: '121070',
  );

  /// value121071
  static final AuditEventSubType value121071 = AuditEventSubType._(
    value: '121071',
  );

  /// value121072
  static final AuditEventSubType value121072 = AuditEventSubType._(
    value: '121072',
  );

  /// value121073
  static final AuditEventSubType value121073 = AuditEventSubType._(
    value: '121073',
  );

  /// value121074
  static final AuditEventSubType value121074 = AuditEventSubType._(
    value: '121074',
  );

  /// value121075
  static final AuditEventSubType value121075 = AuditEventSubType._(
    value: '121075',
  );

  /// value121076
  static final AuditEventSubType value121076 = AuditEventSubType._(
    value: '121076',
  );

  /// value121077
  static final AuditEventSubType value121077 = AuditEventSubType._(
    value: '121077',
  );

  /// value121078
  static final AuditEventSubType value121078 = AuditEventSubType._(
    value: '121078',
  );

  /// value121079
  static final AuditEventSubType value121079 = AuditEventSubType._(
    value: '121079',
  );

  /// value121080
  static final AuditEventSubType value121080 = AuditEventSubType._(
    value: '121080',
  );

  /// value121081
  static final AuditEventSubType value121081 = AuditEventSubType._(
    value: '121081',
  );

  /// value121082
  static final AuditEventSubType value121082 = AuditEventSubType._(
    value: '121082',
  );

  /// value121083
  static final AuditEventSubType value121083 = AuditEventSubType._(
    value: '121083',
  );

  /// value121084
  static final AuditEventSubType value121084 = AuditEventSubType._(
    value: '121084',
  );

  /// value121085
  static final AuditEventSubType value121085 = AuditEventSubType._(
    value: '121085',
  );

  /// value121086
  static final AuditEventSubType value121086 = AuditEventSubType._(
    value: '121086',
  );

  /// value121087
  static final AuditEventSubType value121087 = AuditEventSubType._(
    value: '121087',
  );

  /// value121088
  static final AuditEventSubType value121088 = AuditEventSubType._(
    value: '121088',
  );

  /// value121089
  static final AuditEventSubType value121089 = AuditEventSubType._(
    value: '121089',
  );

  /// value121090
  static final AuditEventSubType value121090 = AuditEventSubType._(
    value: '121090',
  );

  /// value121091
  static final AuditEventSubType value121091 = AuditEventSubType._(
    value: '121091',
  );

  /// value121092
  static final AuditEventSubType value121092 = AuditEventSubType._(
    value: '121092',
  );

  /// value121093
  static final AuditEventSubType value121093 = AuditEventSubType._(
    value: '121093',
  );

  /// value121094
  static final AuditEventSubType value121094 = AuditEventSubType._(
    value: '121094',
  );

  /// value121095
  static final AuditEventSubType value121095 = AuditEventSubType._(
    value: '121095',
  );

  /// value121096
  static final AuditEventSubType value121096 = AuditEventSubType._(
    value: '121096',
  );

  /// value121097
  static final AuditEventSubType value121097 = AuditEventSubType._(
    value: '121097',
  );

  /// value121098
  static final AuditEventSubType value121098 = AuditEventSubType._(
    value: '121098',
  );

  /// value121099
  static final AuditEventSubType value121099 = AuditEventSubType._(
    value: '121099',
  );

  /// value121100
  static final AuditEventSubType value121100 = AuditEventSubType._(
    value: '121100',
  );

  /// value121101
  static final AuditEventSubType value121101 = AuditEventSubType._(
    value: '121101',
  );

  /// value121102
  static final AuditEventSubType value121102 = AuditEventSubType._(
    value: '121102',
  );

  /// value121103
  static final AuditEventSubType value121103 = AuditEventSubType._(
    value: '121103',
  );

  /// value121104
  static final AuditEventSubType value121104 = AuditEventSubType._(
    value: '121104',
  );

  /// value121105
  static final AuditEventSubType value121105 = AuditEventSubType._(
    value: '121105',
  );

  /// value121106
  static final AuditEventSubType value121106 = AuditEventSubType._(
    value: '121106',
  );

  /// value121109
  static final AuditEventSubType value121109 = AuditEventSubType._(
    value: '121109',
  );

  /// value121110
  static final AuditEventSubType value121110 = AuditEventSubType._(
    value: '121110',
  );

  /// value121111
  static final AuditEventSubType value121111 = AuditEventSubType._(
    value: '121111',
  );

  /// value121112
  static final AuditEventSubType value121112 = AuditEventSubType._(
    value: '121112',
  );

  /// value121113
  static final AuditEventSubType value121113 = AuditEventSubType._(
    value: '121113',
  );

  /// value121114
  static final AuditEventSubType value121114 = AuditEventSubType._(
    value: '121114',
  );

  /// value121115
  static final AuditEventSubType value121115 = AuditEventSubType._(
    value: '121115',
  );

  /// value121116
  static final AuditEventSubType value121116 = AuditEventSubType._(
    value: '121116',
  );

  /// value121117
  static final AuditEventSubType value121117 = AuditEventSubType._(
    value: '121117',
  );

  /// value121118
  static final AuditEventSubType value121118 = AuditEventSubType._(
    value: '121118',
  );

  /// value121120
  static final AuditEventSubType value121120 = AuditEventSubType._(
    value: '121120',
  );

  /// value121121
  static final AuditEventSubType value121121 = AuditEventSubType._(
    value: '121121',
  );

  /// value121122
  static final AuditEventSubType value121122 = AuditEventSubType._(
    value: '121122',
  );

  /// value121123
  static final AuditEventSubType value121123 = AuditEventSubType._(
    value: '121123',
  );

  /// value121124
  static final AuditEventSubType value121124 = AuditEventSubType._(
    value: '121124',
  );

  /// value121125
  static final AuditEventSubType value121125 = AuditEventSubType._(
    value: '121125',
  );

  /// value121126
  static final AuditEventSubType value121126 = AuditEventSubType._(
    value: '121126',
  );

  /// value121127
  static final AuditEventSubType value121127 = AuditEventSubType._(
    value: '121127',
  );

  /// value121128
  static final AuditEventSubType value121128 = AuditEventSubType._(
    value: '121128',
  );

  /// value121130
  static final AuditEventSubType value121130 = AuditEventSubType._(
    value: '121130',
  );

  /// value121131
  static final AuditEventSubType value121131 = AuditEventSubType._(
    value: '121131',
  );

  /// value121132
  static final AuditEventSubType value121132 = AuditEventSubType._(
    value: '121132',
  );

  /// value121133
  static final AuditEventSubType value121133 = AuditEventSubType._(
    value: '121133',
  );

  /// value121135
  static final AuditEventSubType value121135 = AuditEventSubType._(
    value: '121135',
  );

  /// value121136
  static final AuditEventSubType value121136 = AuditEventSubType._(
    value: '121136',
  );

  /// value121137
  static final AuditEventSubType value121137 = AuditEventSubType._(
    value: '121137',
  );

  /// value121138
  static final AuditEventSubType value121138 = AuditEventSubType._(
    value: '121138',
  );

  /// value121139
  static final AuditEventSubType value121139 = AuditEventSubType._(
    value: '121139',
  );

  /// value121140
  static final AuditEventSubType value121140 = AuditEventSubType._(
    value: '121140',
  );

  /// value121141
  static final AuditEventSubType value121141 = AuditEventSubType._(
    value: '121141',
  );

  /// value121142
  static final AuditEventSubType value121142 = AuditEventSubType._(
    value: '121142',
  );

  /// value121143
  static final AuditEventSubType value121143 = AuditEventSubType._(
    value: '121143',
  );

  /// value121144
  static final AuditEventSubType value121144 = AuditEventSubType._(
    value: '121144',
  );

  /// value121145
  static final AuditEventSubType value121145 = AuditEventSubType._(
    value: '121145',
  );

  /// value121146
  static final AuditEventSubType value121146 = AuditEventSubType._(
    value: '121146',
  );

  /// value121147
  static final AuditEventSubType value121147 = AuditEventSubType._(
    value: '121147',
  );

  /// value121148
  static final AuditEventSubType value121148 = AuditEventSubType._(
    value: '121148',
  );

  /// value121149
  static final AuditEventSubType value121149 = AuditEventSubType._(
    value: '121149',
  );

  /// value121150
  static final AuditEventSubType value121150 = AuditEventSubType._(
    value: '121150',
  );

  /// value121151
  static final AuditEventSubType value121151 = AuditEventSubType._(
    value: '121151',
  );

  /// value121152
  static final AuditEventSubType value121152 = AuditEventSubType._(
    value: '121152',
  );

  /// value121153
  static final AuditEventSubType value121153 = AuditEventSubType._(
    value: '121153',
  );

  /// value121154
  static final AuditEventSubType value121154 = AuditEventSubType._(
    value: '121154',
  );

  /// value121155
  static final AuditEventSubType value121155 = AuditEventSubType._(
    value: '121155',
  );

  /// value121156
  static final AuditEventSubType value121156 = AuditEventSubType._(
    value: '121156',
  );

  /// value121157
  static final AuditEventSubType value121157 = AuditEventSubType._(
    value: '121157',
  );

  /// value121158
  static final AuditEventSubType value121158 = AuditEventSubType._(
    value: '121158',
  );

  /// value121160
  static final AuditEventSubType value121160 = AuditEventSubType._(
    value: '121160',
  );

  /// value121161
  static final AuditEventSubType value121161 = AuditEventSubType._(
    value: '121161',
  );

  /// value121162
  static final AuditEventSubType value121162 = AuditEventSubType._(
    value: '121162',
  );

  /// value121163
  static final AuditEventSubType value121163 = AuditEventSubType._(
    value: '121163',
  );

  /// value121165
  static final AuditEventSubType value121165 = AuditEventSubType._(
    value: '121165',
  );

  /// value121166
  static final AuditEventSubType value121166 = AuditEventSubType._(
    value: '121166',
  );

  /// value121167
  static final AuditEventSubType value121167 = AuditEventSubType._(
    value: '121167',
  );

  /// value121168
  static final AuditEventSubType value121168 = AuditEventSubType._(
    value: '121168',
  );

  /// value121169
  static final AuditEventSubType value121169 = AuditEventSubType._(
    value: '121169',
  );

  /// value121171
  static final AuditEventSubType value121171 = AuditEventSubType._(
    value: '121171',
  );

  /// value121172
  static final AuditEventSubType value121172 = AuditEventSubType._(
    value: '121172',
  );

  /// value121173
  static final AuditEventSubType value121173 = AuditEventSubType._(
    value: '121173',
  );

  /// value121174
  static final AuditEventSubType value121174 = AuditEventSubType._(
    value: '121174',
  );

  /// value121180
  static final AuditEventSubType value121180 = AuditEventSubType._(
    value: '121180',
  );

  /// value121181
  static final AuditEventSubType value121181 = AuditEventSubType._(
    value: '121181',
  );

  /// value121190
  static final AuditEventSubType value121190 = AuditEventSubType._(
    value: '121190',
  );

  /// value121191
  static final AuditEventSubType value121191 = AuditEventSubType._(
    value: '121191',
  );

  /// value121192
  static final AuditEventSubType value121192 = AuditEventSubType._(
    value: '121192',
  );

  /// value121193
  static final AuditEventSubType value121193 = AuditEventSubType._(
    value: '121193',
  );

  /// value121194
  static final AuditEventSubType value121194 = AuditEventSubType._(
    value: '121194',
  );

  /// value121195
  static final AuditEventSubType value121195 = AuditEventSubType._(
    value: '121195',
  );

  /// value121196
  static final AuditEventSubType value121196 = AuditEventSubType._(
    value: '121196',
  );

  /// value121197
  static final AuditEventSubType value121197 = AuditEventSubType._(
    value: '121197',
  );

  /// value121198
  static final AuditEventSubType value121198 = AuditEventSubType._(
    value: '121198',
  );

  /// value121200
  static final AuditEventSubType value121200 = AuditEventSubType._(
    value: '121200',
  );

  /// value121201
  static final AuditEventSubType value121201 = AuditEventSubType._(
    value: '121201',
  );

  /// value121202
  static final AuditEventSubType value121202 = AuditEventSubType._(
    value: '121202',
  );

  /// value121206
  static final AuditEventSubType value121206 = AuditEventSubType._(
    value: '121206',
  );

  /// value121207
  static final AuditEventSubType value121207 = AuditEventSubType._(
    value: '121207',
  );

  /// value121208
  static final AuditEventSubType value121208 = AuditEventSubType._(
    value: '121208',
  );

  /// value121210
  static final AuditEventSubType value121210 = AuditEventSubType._(
    value: '121210',
  );

  /// value121211
  static final AuditEventSubType value121211 = AuditEventSubType._(
    value: '121211',
  );

  /// value121213
  static final AuditEventSubType value121213 = AuditEventSubType._(
    value: '121213',
  );

  /// value121214
  static final AuditEventSubType value121214 = AuditEventSubType._(
    value: '121214',
  );

  /// value121216
  static final AuditEventSubType value121216 = AuditEventSubType._(
    value: '121216',
  );

  /// value121217
  static final AuditEventSubType value121217 = AuditEventSubType._(
    value: '121217',
  );

  /// value121218
  static final AuditEventSubType value121218 = AuditEventSubType._(
    value: '121218',
  );

  /// value121219
  static final AuditEventSubType value121219 = AuditEventSubType._(
    value: '121219',
  );

  /// value121220
  static final AuditEventSubType value121220 = AuditEventSubType._(
    value: '121220',
  );

  /// value121221
  static final AuditEventSubType value121221 = AuditEventSubType._(
    value: '121221',
  );

  /// value121222
  static final AuditEventSubType value121222 = AuditEventSubType._(
    value: '121222',
  );

  /// value121230
  static final AuditEventSubType value121230 = AuditEventSubType._(
    value: '121230',
  );

  /// value121231
  static final AuditEventSubType value121231 = AuditEventSubType._(
    value: '121231',
  );

  /// value121232
  static final AuditEventSubType value121232 = AuditEventSubType._(
    value: '121232',
  );

  /// value121233
  static final AuditEventSubType value121233 = AuditEventSubType._(
    value: '121233',
  );

  /// value121242
  static final AuditEventSubType value121242 = AuditEventSubType._(
    value: '121242',
  );

  /// value121243
  static final AuditEventSubType value121243 = AuditEventSubType._(
    value: '121243',
  );

  /// value121244
  static final AuditEventSubType value121244 = AuditEventSubType._(
    value: '121244',
  );

  /// value121290
  static final AuditEventSubType value121290 = AuditEventSubType._(
    value: '121290',
  );

  /// value121291
  static final AuditEventSubType value121291 = AuditEventSubType._(
    value: '121291',
  );

  /// value121301
  static final AuditEventSubType value121301 = AuditEventSubType._(
    value: '121301',
  );

  /// value121302
  static final AuditEventSubType value121302 = AuditEventSubType._(
    value: '121302',
  );

  /// value121303
  static final AuditEventSubType value121303 = AuditEventSubType._(
    value: '121303',
  );

  /// value121304
  static final AuditEventSubType value121304 = AuditEventSubType._(
    value: '121304',
  );

  /// value121305
  static final AuditEventSubType value121305 = AuditEventSubType._(
    value: '121305',
  );

  /// value121306
  static final AuditEventSubType value121306 = AuditEventSubType._(
    value: '121306',
  );

  /// value121307
  static final AuditEventSubType value121307 = AuditEventSubType._(
    value: '121307',
  );

  /// value121311
  static final AuditEventSubType value121311 = AuditEventSubType._(
    value: '121311',
  );

  /// value121312
  static final AuditEventSubType value121312 = AuditEventSubType._(
    value: '121312',
  );

  /// value121313
  static final AuditEventSubType value121313 = AuditEventSubType._(
    value: '121313',
  );

  /// value121314
  static final AuditEventSubType value121314 = AuditEventSubType._(
    value: '121314',
  );

  /// value121315
  static final AuditEventSubType value121315 = AuditEventSubType._(
    value: '121315',
  );

  /// value121316
  static final AuditEventSubType value121316 = AuditEventSubType._(
    value: '121316',
  );

  /// value121317
  static final AuditEventSubType value121317 = AuditEventSubType._(
    value: '121317',
  );

  /// value121318
  static final AuditEventSubType value121318 = AuditEventSubType._(
    value: '121318',
  );

  /// value121320
  static final AuditEventSubType value121320 = AuditEventSubType._(
    value: '121320',
  );

  /// value121321
  static final AuditEventSubType value121321 = AuditEventSubType._(
    value: '121321',
  );

  /// value121322
  static final AuditEventSubType value121322 = AuditEventSubType._(
    value: '121322',
  );

  /// value121323
  static final AuditEventSubType value121323 = AuditEventSubType._(
    value: '121323',
  );

  /// value121324
  static final AuditEventSubType value121324 = AuditEventSubType._(
    value: '121324',
  );

  /// value121325
  static final AuditEventSubType value121325 = AuditEventSubType._(
    value: '121325',
  );

  /// value121326
  static final AuditEventSubType value121326 = AuditEventSubType._(
    value: '121326',
  );

  /// value121327
  static final AuditEventSubType value121327 = AuditEventSubType._(
    value: '121327',
  );

  /// value121328
  static final AuditEventSubType value121328 = AuditEventSubType._(
    value: '121328',
  );

  /// value121329
  static final AuditEventSubType value121329 = AuditEventSubType._(
    value: '121329',
  );

  /// value121330
  static final AuditEventSubType value121330 = AuditEventSubType._(
    value: '121330',
  );

  /// value121331
  static final AuditEventSubType value121331 = AuditEventSubType._(
    value: '121331',
  );

  /// value121332
  static final AuditEventSubType value121332 = AuditEventSubType._(
    value: '121332',
  );

  /// value121333
  static final AuditEventSubType value121333 = AuditEventSubType._(
    value: '121333',
  );

  /// value121334
  static final AuditEventSubType value121334 = AuditEventSubType._(
    value: '121334',
  );

  /// value121335
  static final AuditEventSubType value121335 = AuditEventSubType._(
    value: '121335',
  );

  /// value121338
  static final AuditEventSubType value121338 = AuditEventSubType._(
    value: '121338',
  );

  /// value121339
  static final AuditEventSubType value121339 = AuditEventSubType._(
    value: '121339',
  );

  /// value121340
  static final AuditEventSubType value121340 = AuditEventSubType._(
    value: '121340',
  );

  /// value121341
  static final AuditEventSubType value121341 = AuditEventSubType._(
    value: '121341',
  );

  /// value121342
  static final AuditEventSubType value121342 = AuditEventSubType._(
    value: '121342',
  );

  /// value121346
  static final AuditEventSubType value121346 = AuditEventSubType._(
    value: '121346',
  );

  /// value121347
  static final AuditEventSubType value121347 = AuditEventSubType._(
    value: '121347',
  );

  /// value121348
  static final AuditEventSubType value121348 = AuditEventSubType._(
    value: '121348',
  );

  /// value121349
  static final AuditEventSubType value121349 = AuditEventSubType._(
    value: '121349',
  );

  /// value121350
  static final AuditEventSubType value121350 = AuditEventSubType._(
    value: '121350',
  );

  /// value121351
  static final AuditEventSubType value121351 = AuditEventSubType._(
    value: '121351',
  );

  /// value121352
  static final AuditEventSubType value121352 = AuditEventSubType._(
    value: '121352',
  );

  /// value121353
  static final AuditEventSubType value121353 = AuditEventSubType._(
    value: '121353',
  );

  /// value121354
  static final AuditEventSubType value121354 = AuditEventSubType._(
    value: '121354',
  );

  /// value121358
  static final AuditEventSubType value121358 = AuditEventSubType._(
    value: '121358',
  );

  /// value121360
  static final AuditEventSubType value121360 = AuditEventSubType._(
    value: '121360',
  );

  /// value121361
  static final AuditEventSubType value121361 = AuditEventSubType._(
    value: '121361',
  );

  /// value121362
  static final AuditEventSubType value121362 = AuditEventSubType._(
    value: '121362',
  );

  /// value121363
  static final AuditEventSubType value121363 = AuditEventSubType._(
    value: '121363',
  );

  /// value121370
  static final AuditEventSubType value121370 = AuditEventSubType._(
    value: '121370',
  );

  /// value121371
  static final AuditEventSubType value121371 = AuditEventSubType._(
    value: '121371',
  );

  /// value121372
  static final AuditEventSubType value121372 = AuditEventSubType._(
    value: '121372',
  );

  /// value121380
  static final AuditEventSubType value121380 = AuditEventSubType._(
    value: '121380',
  );

  /// value121381
  static final AuditEventSubType value121381 = AuditEventSubType._(
    value: '121381',
  );

  /// value121382
  static final AuditEventSubType value121382 = AuditEventSubType._(
    value: '121382',
  );

  /// value121383
  static final AuditEventSubType value121383 = AuditEventSubType._(
    value: '121383',
  );

  /// value121401
  static final AuditEventSubType value121401 = AuditEventSubType._(
    value: '121401',
  );

  /// value121402
  static final AuditEventSubType value121402 = AuditEventSubType._(
    value: '121402',
  );

  /// value121403
  static final AuditEventSubType value121403 = AuditEventSubType._(
    value: '121403',
  );

  /// value121404
  static final AuditEventSubType value121404 = AuditEventSubType._(
    value: '121404',
  );

  /// value121405
  static final AuditEventSubType value121405 = AuditEventSubType._(
    value: '121405',
  );

  /// value121406
  static final AuditEventSubType value121406 = AuditEventSubType._(
    value: '121406',
  );

  /// value121407
  static final AuditEventSubType value121407 = AuditEventSubType._(
    value: '121407',
  );

  /// value121408
  static final AuditEventSubType value121408 = AuditEventSubType._(
    value: '121408',
  );

  /// value121410
  static final AuditEventSubType value121410 = AuditEventSubType._(
    value: '121410',
  );

  /// value121411
  static final AuditEventSubType value121411 = AuditEventSubType._(
    value: '121411',
  );

  /// value121412
  static final AuditEventSubType value121412 = AuditEventSubType._(
    value: '121412',
  );

  /// value121414
  static final AuditEventSubType value121414 = AuditEventSubType._(
    value: '121414',
  );

  /// value121415
  static final AuditEventSubType value121415 = AuditEventSubType._(
    value: '121415',
  );

  /// value121416
  static final AuditEventSubType value121416 = AuditEventSubType._(
    value: '121416',
  );

  /// value121417
  static final AuditEventSubType value121417 = AuditEventSubType._(
    value: '121417',
  );

  /// value121420
  static final AuditEventSubType value121420 = AuditEventSubType._(
    value: '121420',
  );

  /// value121421
  static final AuditEventSubType value121421 = AuditEventSubType._(
    value: '121421',
  );

  /// value121422
  static final AuditEventSubType value121422 = AuditEventSubType._(
    value: '121422',
  );

  /// value121423
  static final AuditEventSubType value121423 = AuditEventSubType._(
    value: '121423',
  );

  /// value121424
  static final AuditEventSubType value121424 = AuditEventSubType._(
    value: '121424',
  );

  /// value121425
  static final AuditEventSubType value121425 = AuditEventSubType._(
    value: '121425',
  );

  /// value121427
  static final AuditEventSubType value121427 = AuditEventSubType._(
    value: '121427',
  );

  /// value121428
  static final AuditEventSubType value121428 = AuditEventSubType._(
    value: '121428',
  );

  /// value121430
  static final AuditEventSubType value121430 = AuditEventSubType._(
    value: '121430',
  );

  /// value121431
  static final AuditEventSubType value121431 = AuditEventSubType._(
    value: '121431',
  );

  /// value121432
  static final AuditEventSubType value121432 = AuditEventSubType._(
    value: '121432',
  );

  /// value121433
  static final AuditEventSubType value121433 = AuditEventSubType._(
    value: '121433',
  );

  /// value121434
  static final AuditEventSubType value121434 = AuditEventSubType._(
    value: '121434',
  );

  /// value121435
  static final AuditEventSubType value121435 = AuditEventSubType._(
    value: '121435',
  );

  /// value121436
  static final AuditEventSubType value121436 = AuditEventSubType._(
    value: '121436',
  );

  /// value121437
  static final AuditEventSubType value121437 = AuditEventSubType._(
    value: '121437',
  );

  /// value121438
  static final AuditEventSubType value121438 = AuditEventSubType._(
    value: '121438',
  );

  /// value121439
  static final AuditEventSubType value121439 = AuditEventSubType._(
    value: '121439',
  );

  /// value121701
  static final AuditEventSubType value121701 = AuditEventSubType._(
    value: '121701',
  );

  /// value121702
  static final AuditEventSubType value121702 = AuditEventSubType._(
    value: '121702',
  );

  /// value121703
  static final AuditEventSubType value121703 = AuditEventSubType._(
    value: '121703',
  );

  /// value121704
  static final AuditEventSubType value121704 = AuditEventSubType._(
    value: '121704',
  );

  /// value121705
  static final AuditEventSubType value121705 = AuditEventSubType._(
    value: '121705',
  );

  /// value121706
  static final AuditEventSubType value121706 = AuditEventSubType._(
    value: '121706',
  );

  /// value121707
  static final AuditEventSubType value121707 = AuditEventSubType._(
    value: '121707',
  );

  /// value121708
  static final AuditEventSubType value121708 = AuditEventSubType._(
    value: '121708',
  );

  /// value121709
  static final AuditEventSubType value121709 = AuditEventSubType._(
    value: '121709',
  );

  /// value121710
  static final AuditEventSubType value121710 = AuditEventSubType._(
    value: '121710',
  );

  /// value121711
  static final AuditEventSubType value121711 = AuditEventSubType._(
    value: '121711',
  );

  /// value121712
  static final AuditEventSubType value121712 = AuditEventSubType._(
    value: '121712',
  );

  /// value121713
  static final AuditEventSubType value121713 = AuditEventSubType._(
    value: '121713',
  );

  /// value121714
  static final AuditEventSubType value121714 = AuditEventSubType._(
    value: '121714',
  );

  /// value121715
  static final AuditEventSubType value121715 = AuditEventSubType._(
    value: '121715',
  );

  /// value121716
  static final AuditEventSubType value121716 = AuditEventSubType._(
    value: '121716',
  );

  /// value121717
  static final AuditEventSubType value121717 = AuditEventSubType._(
    value: '121717',
  );

  /// value121718
  static final AuditEventSubType value121718 = AuditEventSubType._(
    value: '121718',
  );

  /// value121719
  static final AuditEventSubType value121719 = AuditEventSubType._(
    value: '121719',
  );

  /// value121720
  static final AuditEventSubType value121720 = AuditEventSubType._(
    value: '121720',
  );

  /// value121721
  static final AuditEventSubType value121721 = AuditEventSubType._(
    value: '121721',
  );

  /// value121722
  static final AuditEventSubType value121722 = AuditEventSubType._(
    value: '121722',
  );

  /// value121723
  static final AuditEventSubType value121723 = AuditEventSubType._(
    value: '121723',
  );

  /// value121724
  static final AuditEventSubType value121724 = AuditEventSubType._(
    value: '121724',
  );

  /// value121725
  static final AuditEventSubType value121725 = AuditEventSubType._(
    value: '121725',
  );

  /// value121726
  static final AuditEventSubType value121726 = AuditEventSubType._(
    value: '121726',
  );

  /// value121727
  static final AuditEventSubType value121727 = AuditEventSubType._(
    value: '121727',
  );

  /// value121728
  static final AuditEventSubType value121728 = AuditEventSubType._(
    value: '121728',
  );

  /// value121729
  static final AuditEventSubType value121729 = AuditEventSubType._(
    value: '121729',
  );

  /// value121730
  static final AuditEventSubType value121730 = AuditEventSubType._(
    value: '121730',
  );

  /// value121731
  static final AuditEventSubType value121731 = AuditEventSubType._(
    value: '121731',
  );

  /// value121732
  static final AuditEventSubType value121732 = AuditEventSubType._(
    value: '121732',
  );

  /// value121733
  static final AuditEventSubType value121733 = AuditEventSubType._(
    value: '121733',
  );

  /// value121734
  static final AuditEventSubType value121734 = AuditEventSubType._(
    value: '121734',
  );

  /// value121740
  static final AuditEventSubType value121740 = AuditEventSubType._(
    value: '121740',
  );

  /// value122001
  static final AuditEventSubType value122001 = AuditEventSubType._(
    value: '122001',
  );

  /// value122002
  static final AuditEventSubType value122002 = AuditEventSubType._(
    value: '122002',
  );

  /// value122003
  static final AuditEventSubType value122003 = AuditEventSubType._(
    value: '122003',
  );

  /// value122004
  static final AuditEventSubType value122004 = AuditEventSubType._(
    value: '122004',
  );

  /// value122005
  static final AuditEventSubType value122005 = AuditEventSubType._(
    value: '122005',
  );

  /// value122006
  static final AuditEventSubType value122006 = AuditEventSubType._(
    value: '122006',
  );

  /// value122007
  static final AuditEventSubType value122007 = AuditEventSubType._(
    value: '122007',
  );

  /// value122008
  static final AuditEventSubType value122008 = AuditEventSubType._(
    value: '122008',
  );

  /// value122009
  static final AuditEventSubType value122009 = AuditEventSubType._(
    value: '122009',
  );

  /// value122010
  static final AuditEventSubType value122010 = AuditEventSubType._(
    value: '122010',
  );

  /// value122011
  static final AuditEventSubType value122011 = AuditEventSubType._(
    value: '122011',
  );

  /// value122012
  static final AuditEventSubType value122012 = AuditEventSubType._(
    value: '122012',
  );

  /// value122020
  static final AuditEventSubType value122020 = AuditEventSubType._(
    value: '122020',
  );

  /// value122021
  static final AuditEventSubType value122021 = AuditEventSubType._(
    value: '122021',
  );

  /// value122022
  static final AuditEventSubType value122022 = AuditEventSubType._(
    value: '122022',
  );

  /// value122023
  static final AuditEventSubType value122023 = AuditEventSubType._(
    value: '122023',
  );

  /// value122024
  static final AuditEventSubType value122024 = AuditEventSubType._(
    value: '122024',
  );

  /// value122025
  static final AuditEventSubType value122025 = AuditEventSubType._(
    value: '122025',
  );

  /// value122026
  static final AuditEventSubType value122026 = AuditEventSubType._(
    value: '122026',
  );

  /// value122027
  static final AuditEventSubType value122027 = AuditEventSubType._(
    value: '122027',
  );

  /// value122028
  static final AuditEventSubType value122028 = AuditEventSubType._(
    value: '122028',
  );

  /// value122029
  static final AuditEventSubType value122029 = AuditEventSubType._(
    value: '122029',
  );

  /// value122030
  static final AuditEventSubType value122030 = AuditEventSubType._(
    value: '122030',
  );

  /// value122031
  static final AuditEventSubType value122031 = AuditEventSubType._(
    value: '122031',
  );

  /// value122032
  static final AuditEventSubType value122032 = AuditEventSubType._(
    value: '122032',
  );

  /// value122033
  static final AuditEventSubType value122033 = AuditEventSubType._(
    value: '122033',
  );

  /// value122034
  static final AuditEventSubType value122034 = AuditEventSubType._(
    value: '122034',
  );

  /// value122035
  static final AuditEventSubType value122035 = AuditEventSubType._(
    value: '122035',
  );

  /// value122036
  static final AuditEventSubType value122036 = AuditEventSubType._(
    value: '122036',
  );

  /// value122037
  static final AuditEventSubType value122037 = AuditEventSubType._(
    value: '122037',
  );

  /// value122038
  static final AuditEventSubType value122038 = AuditEventSubType._(
    value: '122038',
  );

  /// value122039
  static final AuditEventSubType value122039 = AuditEventSubType._(
    value: '122039',
  );

  /// value122041
  static final AuditEventSubType value122041 = AuditEventSubType._(
    value: '122041',
  );

  /// value122042
  static final AuditEventSubType value122042 = AuditEventSubType._(
    value: '122042',
  );

  /// value122043
  static final AuditEventSubType value122043 = AuditEventSubType._(
    value: '122043',
  );

  /// value122044
  static final AuditEventSubType value122044 = AuditEventSubType._(
    value: '122044',
  );

  /// value122045
  static final AuditEventSubType value122045 = AuditEventSubType._(
    value: '122045',
  );

  /// value122046
  static final AuditEventSubType value122046 = AuditEventSubType._(
    value: '122046',
  );

  /// value122047
  static final AuditEventSubType value122047 = AuditEventSubType._(
    value: '122047',
  );

  /// value122048
  static final AuditEventSubType value122048 = AuditEventSubType._(
    value: '122048',
  );

  /// value122049
  static final AuditEventSubType value122049 = AuditEventSubType._(
    value: '122049',
  );

  /// value122052
  static final AuditEventSubType value122052 = AuditEventSubType._(
    value: '122052',
  );

  /// value122053
  static final AuditEventSubType value122053 = AuditEventSubType._(
    value: '122053',
  );

  /// value122054
  static final AuditEventSubType value122054 = AuditEventSubType._(
    value: '122054',
  );

  /// value122055
  static final AuditEventSubType value122055 = AuditEventSubType._(
    value: '122055',
  );

  /// value122056
  static final AuditEventSubType value122056 = AuditEventSubType._(
    value: '122056',
  );

  /// value122057
  static final AuditEventSubType value122057 = AuditEventSubType._(
    value: '122057',
  );

  /// value122058
  static final AuditEventSubType value122058 = AuditEventSubType._(
    value: '122058',
  );

  /// value122059
  static final AuditEventSubType value122059 = AuditEventSubType._(
    value: '122059',
  );

  /// value122060
  static final AuditEventSubType value122060 = AuditEventSubType._(
    value: '122060',
  );

  /// value122061
  static final AuditEventSubType value122061 = AuditEventSubType._(
    value: '122061',
  );

  /// value122062
  static final AuditEventSubType value122062 = AuditEventSubType._(
    value: '122062',
  );

  /// value122072
  static final AuditEventSubType value122072 = AuditEventSubType._(
    value: '122072',
  );

  /// value122073
  static final AuditEventSubType value122073 = AuditEventSubType._(
    value: '122073',
  );

  /// value122075
  static final AuditEventSubType value122075 = AuditEventSubType._(
    value: '122075',
  );

  /// value122076
  static final AuditEventSubType value122076 = AuditEventSubType._(
    value: '122076',
  );

  /// value122077
  static final AuditEventSubType value122077 = AuditEventSubType._(
    value: '122077',
  );

  /// value122078
  static final AuditEventSubType value122078 = AuditEventSubType._(
    value: '122078',
  );

  /// value122079
  static final AuditEventSubType value122079 = AuditEventSubType._(
    value: '122079',
  );

  /// value122081
  static final AuditEventSubType value122081 = AuditEventSubType._(
    value: '122081',
  );

  /// value122082
  static final AuditEventSubType value122082 = AuditEventSubType._(
    value: '122082',
  );

  /// value122083
  static final AuditEventSubType value122083 = AuditEventSubType._(
    value: '122083',
  );

  /// value122084
  static final AuditEventSubType value122084 = AuditEventSubType._(
    value: '122084',
  );

  /// value122085
  static final AuditEventSubType value122085 = AuditEventSubType._(
    value: '122085',
  );

  /// value122086
  static final AuditEventSubType value122086 = AuditEventSubType._(
    value: '122086',
  );

  /// value122087
  static final AuditEventSubType value122087 = AuditEventSubType._(
    value: '122087',
  );

  /// value122088
  static final AuditEventSubType value122088 = AuditEventSubType._(
    value: '122088',
  );

  /// value122089
  static final AuditEventSubType value122089 = AuditEventSubType._(
    value: '122089',
  );

  /// value122090
  static final AuditEventSubType value122090 = AuditEventSubType._(
    value: '122090',
  );

  /// value122091
  static final AuditEventSubType value122091 = AuditEventSubType._(
    value: '122091',
  );

  /// value122092
  static final AuditEventSubType value122092 = AuditEventSubType._(
    value: '122092',
  );

  /// value122093
  static final AuditEventSubType value122093 = AuditEventSubType._(
    value: '122093',
  );

  /// value122094
  static final AuditEventSubType value122094 = AuditEventSubType._(
    value: '122094',
  );

  /// value122095
  static final AuditEventSubType value122095 = AuditEventSubType._(
    value: '122095',
  );

  /// value122096
  static final AuditEventSubType value122096 = AuditEventSubType._(
    value: '122096',
  );

  /// value122097
  static final AuditEventSubType value122097 = AuditEventSubType._(
    value: '122097',
  );

  /// value122098
  static final AuditEventSubType value122098 = AuditEventSubType._(
    value: '122098',
  );

  /// value122099
  static final AuditEventSubType value122099 = AuditEventSubType._(
    value: '122099',
  );

  /// value122101
  static final AuditEventSubType value122101 = AuditEventSubType._(
    value: '122101',
  );

  /// value122102
  static final AuditEventSubType value122102 = AuditEventSubType._(
    value: '122102',
  );

  /// value122103
  static final AuditEventSubType value122103 = AuditEventSubType._(
    value: '122103',
  );

  /// value122104
  static final AuditEventSubType value122104 = AuditEventSubType._(
    value: '122104',
  );

  /// value122105
  static final AuditEventSubType value122105 = AuditEventSubType._(
    value: '122105',
  );

  /// value122106
  static final AuditEventSubType value122106 = AuditEventSubType._(
    value: '122106',
  );

  /// value122107
  static final AuditEventSubType value122107 = AuditEventSubType._(
    value: '122107',
  );

  /// value122108
  static final AuditEventSubType value122108 = AuditEventSubType._(
    value: '122108',
  );

  /// value122109
  static final AuditEventSubType value122109 = AuditEventSubType._(
    value: '122109',
  );

  /// value122110
  static final AuditEventSubType value122110 = AuditEventSubType._(
    value: '122110',
  );

  /// value122111
  static final AuditEventSubType value122111 = AuditEventSubType._(
    value: '122111',
  );

  /// value122112
  static final AuditEventSubType value122112 = AuditEventSubType._(
    value: '122112',
  );

  /// value122113
  static final AuditEventSubType value122113 = AuditEventSubType._(
    value: '122113',
  );

  /// value122114
  static final AuditEventSubType value122114 = AuditEventSubType._(
    value: '122114',
  );

  /// value122120
  static final AuditEventSubType value122120 = AuditEventSubType._(
    value: '122120',
  );

  /// value122121
  static final AuditEventSubType value122121 = AuditEventSubType._(
    value: '122121',
  );

  /// value122122
  static final AuditEventSubType value122122 = AuditEventSubType._(
    value: '122122',
  );

  /// value122123
  static final AuditEventSubType value122123 = AuditEventSubType._(
    value: '122123',
  );

  /// value122124
  static final AuditEventSubType value122124 = AuditEventSubType._(
    value: '122124',
  );

  /// value122125
  static final AuditEventSubType value122125 = AuditEventSubType._(
    value: '122125',
  );

  /// value122126
  static final AuditEventSubType value122126 = AuditEventSubType._(
    value: '122126',
  );

  /// value122127
  static final AuditEventSubType value122127 = AuditEventSubType._(
    value: '122127',
  );

  /// value122128
  static final AuditEventSubType value122128 = AuditEventSubType._(
    value: '122128',
  );

  /// value122129
  static final AuditEventSubType value122129 = AuditEventSubType._(
    value: '122129',
  );

  /// value122130
  static final AuditEventSubType value122130 = AuditEventSubType._(
    value: '122130',
  );

  /// value122131
  static final AuditEventSubType value122131 = AuditEventSubType._(
    value: '122131',
  );

  /// value122132
  static final AuditEventSubType value122132 = AuditEventSubType._(
    value: '122132',
  );

  /// value122133
  static final AuditEventSubType value122133 = AuditEventSubType._(
    value: '122133',
  );

  /// value122134
  static final AuditEventSubType value122134 = AuditEventSubType._(
    value: '122134',
  );

  /// value122138
  static final AuditEventSubType value122138 = AuditEventSubType._(
    value: '122138',
  );

  /// value122139
  static final AuditEventSubType value122139 = AuditEventSubType._(
    value: '122139',
  );

  /// value122140
  static final AuditEventSubType value122140 = AuditEventSubType._(
    value: '122140',
  );

  /// value122141
  static final AuditEventSubType value122141 = AuditEventSubType._(
    value: '122141',
  );

  /// value122142
  static final AuditEventSubType value122142 = AuditEventSubType._(
    value: '122142',
  );

  /// value122143
  static final AuditEventSubType value122143 = AuditEventSubType._(
    value: '122143',
  );

  /// value122144
  static final AuditEventSubType value122144 = AuditEventSubType._(
    value: '122144',
  );

  /// value122145
  static final AuditEventSubType value122145 = AuditEventSubType._(
    value: '122145',
  );

  /// value122146
  static final AuditEventSubType value122146 = AuditEventSubType._(
    value: '122146',
  );

  /// value122147
  static final AuditEventSubType value122147 = AuditEventSubType._(
    value: '122147',
  );

  /// value122148
  static final AuditEventSubType value122148 = AuditEventSubType._(
    value: '122148',
  );

  /// value122149
  static final AuditEventSubType value122149 = AuditEventSubType._(
    value: '122149',
  );

  /// value122150
  static final AuditEventSubType value122150 = AuditEventSubType._(
    value: '122150',
  );

  /// value122151
  static final AuditEventSubType value122151 = AuditEventSubType._(
    value: '122151',
  );

  /// value122152
  static final AuditEventSubType value122152 = AuditEventSubType._(
    value: '122152',
  );

  /// value122153
  static final AuditEventSubType value122153 = AuditEventSubType._(
    value: '122153',
  );

  /// value122154
  static final AuditEventSubType value122154 = AuditEventSubType._(
    value: '122154',
  );

  /// value122157
  static final AuditEventSubType value122157 = AuditEventSubType._(
    value: '122157',
  );

  /// value122158
  static final AuditEventSubType value122158 = AuditEventSubType._(
    value: '122158',
  );

  /// value122159
  static final AuditEventSubType value122159 = AuditEventSubType._(
    value: '122159',
  );

  /// value122160
  static final AuditEventSubType value122160 = AuditEventSubType._(
    value: '122160',
  );

  /// value122161
  static final AuditEventSubType value122161 = AuditEventSubType._(
    value: '122161',
  );

  /// value122162
  static final AuditEventSubType value122162 = AuditEventSubType._(
    value: '122162',
  );

  /// value122163
  static final AuditEventSubType value122163 = AuditEventSubType._(
    value: '122163',
  );

  /// value122164
  static final AuditEventSubType value122164 = AuditEventSubType._(
    value: '122164',
  );

  /// value122165
  static final AuditEventSubType value122165 = AuditEventSubType._(
    value: '122165',
  );

  /// value122166
  static final AuditEventSubType value122166 = AuditEventSubType._(
    value: '122166',
  );

  /// value122167
  static final AuditEventSubType value122167 = AuditEventSubType._(
    value: '122167',
  );

  /// value122170
  static final AuditEventSubType value122170 = AuditEventSubType._(
    value: '122170',
  );

  /// value122171
  static final AuditEventSubType value122171 = AuditEventSubType._(
    value: '122171',
  );

  /// value122172
  static final AuditEventSubType value122172 = AuditEventSubType._(
    value: '122172',
  );

  /// value122173
  static final AuditEventSubType value122173 = AuditEventSubType._(
    value: '122173',
  );

  /// value122175
  static final AuditEventSubType value122175 = AuditEventSubType._(
    value: '122175',
  );

  /// value122176
  static final AuditEventSubType value122176 = AuditEventSubType._(
    value: '122176',
  );

  /// value122177
  static final AuditEventSubType value122177 = AuditEventSubType._(
    value: '122177',
  );

  /// value122178
  static final AuditEventSubType value122178 = AuditEventSubType._(
    value: '122178',
  );

  /// value122179
  static final AuditEventSubType value122179 = AuditEventSubType._(
    value: '122179',
  );

  /// value122180
  static final AuditEventSubType value122180 = AuditEventSubType._(
    value: '122180',
  );

  /// value122181
  static final AuditEventSubType value122181 = AuditEventSubType._(
    value: '122181',
  );

  /// value122182
  static final AuditEventSubType value122182 = AuditEventSubType._(
    value: '122182',
  );

  /// value122183
  static final AuditEventSubType value122183 = AuditEventSubType._(
    value: '122183',
  );

  /// value122185
  static final AuditEventSubType value122185 = AuditEventSubType._(
    value: '122185',
  );

  /// value122187
  static final AuditEventSubType value122187 = AuditEventSubType._(
    value: '122187',
  );

  /// value122188
  static final AuditEventSubType value122188 = AuditEventSubType._(
    value: '122188',
  );

  /// value122189
  static final AuditEventSubType value122189 = AuditEventSubType._(
    value: '122189',
  );

  /// value122190
  static final AuditEventSubType value122190 = AuditEventSubType._(
    value: '122190',
  );

  /// value122191
  static final AuditEventSubType value122191 = AuditEventSubType._(
    value: '122191',
  );

  /// value122192
  static final AuditEventSubType value122192 = AuditEventSubType._(
    value: '122192',
  );

  /// value122193
  static final AuditEventSubType value122193 = AuditEventSubType._(
    value: '122193',
  );

  /// value122194
  static final AuditEventSubType value122194 = AuditEventSubType._(
    value: '122194',
  );

  /// value122195
  static final AuditEventSubType value122195 = AuditEventSubType._(
    value: '122195',
  );

  /// value122196
  static final AuditEventSubType value122196 = AuditEventSubType._(
    value: '122196',
  );

  /// value122197
  static final AuditEventSubType value122197 = AuditEventSubType._(
    value: '122197',
  );

  /// value122198
  static final AuditEventSubType value122198 = AuditEventSubType._(
    value: '122198',
  );

  /// value122199
  static final AuditEventSubType value122199 = AuditEventSubType._(
    value: '122199',
  );

  /// value122201
  static final AuditEventSubType value122201 = AuditEventSubType._(
    value: '122201',
  );

  /// value122202
  static final AuditEventSubType value122202 = AuditEventSubType._(
    value: '122202',
  );

  /// value122203
  static final AuditEventSubType value122203 = AuditEventSubType._(
    value: '122203',
  );

  /// value122204
  static final AuditEventSubType value122204 = AuditEventSubType._(
    value: '122204',
  );

  /// value122205
  static final AuditEventSubType value122205 = AuditEventSubType._(
    value: '122205',
  );

  /// value122206
  static final AuditEventSubType value122206 = AuditEventSubType._(
    value: '122206',
  );

  /// value122207
  static final AuditEventSubType value122207 = AuditEventSubType._(
    value: '122207',
  );

  /// value122208
  static final AuditEventSubType value122208 = AuditEventSubType._(
    value: '122208',
  );

  /// value122209
  static final AuditEventSubType value122209 = AuditEventSubType._(
    value: '122209',
  );

  /// value122210
  static final AuditEventSubType value122210 = AuditEventSubType._(
    value: '122210',
  );

  /// value122211
  static final AuditEventSubType value122211 = AuditEventSubType._(
    value: '122211',
  );

  /// value122212
  static final AuditEventSubType value122212 = AuditEventSubType._(
    value: '122212',
  );

  /// value122213
  static final AuditEventSubType value122213 = AuditEventSubType._(
    value: '122213',
  );

  /// value122214
  static final AuditEventSubType value122214 = AuditEventSubType._(
    value: '122214',
  );

  /// value122215
  static final AuditEventSubType value122215 = AuditEventSubType._(
    value: '122215',
  );

  /// value122216
  static final AuditEventSubType value122216 = AuditEventSubType._(
    value: '122216',
  );

  /// value122217
  static final AuditEventSubType value122217 = AuditEventSubType._(
    value: '122217',
  );

  /// value122218
  static final AuditEventSubType value122218 = AuditEventSubType._(
    value: '122218',
  );

  /// value122219
  static final AuditEventSubType value122219 = AuditEventSubType._(
    value: '122219',
  );

  /// value122220
  static final AuditEventSubType value122220 = AuditEventSubType._(
    value: '122220',
  );

  /// value122221
  static final AuditEventSubType value122221 = AuditEventSubType._(
    value: '122221',
  );

  /// value122222
  static final AuditEventSubType value122222 = AuditEventSubType._(
    value: '122222',
  );

  /// value122223
  static final AuditEventSubType value122223 = AuditEventSubType._(
    value: '122223',
  );

  /// value122224
  static final AuditEventSubType value122224 = AuditEventSubType._(
    value: '122224',
  );

  /// value122225
  static final AuditEventSubType value122225 = AuditEventSubType._(
    value: '122225',
  );

  /// value122227
  static final AuditEventSubType value122227 = AuditEventSubType._(
    value: '122227',
  );

  /// value122228
  static final AuditEventSubType value122228 = AuditEventSubType._(
    value: '122228',
  );

  /// value122229
  static final AuditEventSubType value122229 = AuditEventSubType._(
    value: '122229',
  );

  /// value122230
  static final AuditEventSubType value122230 = AuditEventSubType._(
    value: '122230',
  );

  /// value122231
  static final AuditEventSubType value122231 = AuditEventSubType._(
    value: '122231',
  );

  /// value122232
  static final AuditEventSubType value122232 = AuditEventSubType._(
    value: '122232',
  );

  /// value122233
  static final AuditEventSubType value122233 = AuditEventSubType._(
    value: '122233',
  );

  /// value122234
  static final AuditEventSubType value122234 = AuditEventSubType._(
    value: '122234',
  );

  /// value122235
  static final AuditEventSubType value122235 = AuditEventSubType._(
    value: '122235',
  );

  /// value122236
  static final AuditEventSubType value122236 = AuditEventSubType._(
    value: '122236',
  );

  /// value122237
  static final AuditEventSubType value122237 = AuditEventSubType._(
    value: '122237',
  );

  /// value122238
  static final AuditEventSubType value122238 = AuditEventSubType._(
    value: '122238',
  );

  /// value122239
  static final AuditEventSubType value122239 = AuditEventSubType._(
    value: '122239',
  );

  /// value122240
  static final AuditEventSubType value122240 = AuditEventSubType._(
    value: '122240',
  );

  /// value122241
  static final AuditEventSubType value122241 = AuditEventSubType._(
    value: '122241',
  );

  /// value122242
  static final AuditEventSubType value122242 = AuditEventSubType._(
    value: '122242',
  );

  /// value122243
  static final AuditEventSubType value122243 = AuditEventSubType._(
    value: '122243',
  );

  /// value122244
  static final AuditEventSubType value122244 = AuditEventSubType._(
    value: '122244',
  );

  /// value122245
  static final AuditEventSubType value122245 = AuditEventSubType._(
    value: '122245',
  );

  /// value122246
  static final AuditEventSubType value122246 = AuditEventSubType._(
    value: '122246',
  );

  /// value122247
  static final AuditEventSubType value122247 = AuditEventSubType._(
    value: '122247',
  );

  /// value122248
  static final AuditEventSubType value122248 = AuditEventSubType._(
    value: '122248',
  );

  /// value122249
  static final AuditEventSubType value122249 = AuditEventSubType._(
    value: '122249',
  );

  /// value122250
  static final AuditEventSubType value122250 = AuditEventSubType._(
    value: '122250',
  );

  /// value122251
  static final AuditEventSubType value122251 = AuditEventSubType._(
    value: '122251',
  );

  /// value122252
  static final AuditEventSubType value122252 = AuditEventSubType._(
    value: '122252',
  );

  /// value122253
  static final AuditEventSubType value122253 = AuditEventSubType._(
    value: '122253',
  );

  /// value122254
  static final AuditEventSubType value122254 = AuditEventSubType._(
    value: '122254',
  );

  /// value122255
  static final AuditEventSubType value122255 = AuditEventSubType._(
    value: '122255',
  );

  /// value122256
  static final AuditEventSubType value122256 = AuditEventSubType._(
    value: '122256',
  );

  /// value122257
  static final AuditEventSubType value122257 = AuditEventSubType._(
    value: '122257',
  );

  /// value122258
  static final AuditEventSubType value122258 = AuditEventSubType._(
    value: '122258',
  );

  /// value122259
  static final AuditEventSubType value122259 = AuditEventSubType._(
    value: '122259',
  );

  /// value122260
  static final AuditEventSubType value122260 = AuditEventSubType._(
    value: '122260',
  );

  /// value122261
  static final AuditEventSubType value122261 = AuditEventSubType._(
    value: '122261',
  );

  /// value122262
  static final AuditEventSubType value122262 = AuditEventSubType._(
    value: '122262',
  );

  /// value122263
  static final AuditEventSubType value122263 = AuditEventSubType._(
    value: '122263',
  );

  /// value122265
  static final AuditEventSubType value122265 = AuditEventSubType._(
    value: '122265',
  );

  /// value122266
  static final AuditEventSubType value122266 = AuditEventSubType._(
    value: '122266',
  );

  /// value122267
  static final AuditEventSubType value122267 = AuditEventSubType._(
    value: '122267',
  );

  /// value122268
  static final AuditEventSubType value122268 = AuditEventSubType._(
    value: '122268',
  );

  /// value122269
  static final AuditEventSubType value122269 = AuditEventSubType._(
    value: '122269',
  );

  /// value122270
  static final AuditEventSubType value122270 = AuditEventSubType._(
    value: '122270',
  );

  /// value122271
  static final AuditEventSubType value122271 = AuditEventSubType._(
    value: '122271',
  );

  /// value122272
  static final AuditEventSubType value122272 = AuditEventSubType._(
    value: '122272',
  );

  /// value122273
  static final AuditEventSubType value122273 = AuditEventSubType._(
    value: '122273',
  );

  /// value122274
  static final AuditEventSubType value122274 = AuditEventSubType._(
    value: '122274',
  );

  /// value122275
  static final AuditEventSubType value122275 = AuditEventSubType._(
    value: '122275',
  );

  /// value122276
  static final AuditEventSubType value122276 = AuditEventSubType._(
    value: '122276',
  );

  /// value122277
  static final AuditEventSubType value122277 = AuditEventSubType._(
    value: '122277',
  );

  /// value122278
  static final AuditEventSubType value122278 = AuditEventSubType._(
    value: '122278',
  );

  /// value122279
  static final AuditEventSubType value122279 = AuditEventSubType._(
    value: '122279',
  );

  /// value122281
  static final AuditEventSubType value122281 = AuditEventSubType._(
    value: '122281',
  );

  /// value122282
  static final AuditEventSubType value122282 = AuditEventSubType._(
    value: '122282',
  );

  /// value122283
  static final AuditEventSubType value122283 = AuditEventSubType._(
    value: '122283',
  );

  /// value122288
  static final AuditEventSubType value122288 = AuditEventSubType._(
    value: '122288',
  );

  /// value122291
  static final AuditEventSubType value122291 = AuditEventSubType._(
    value: '122291',
  );

  /// value122292
  static final AuditEventSubType value122292 = AuditEventSubType._(
    value: '122292',
  );

  /// value122301
  static final AuditEventSubType value122301 = AuditEventSubType._(
    value: '122301',
  );

  /// value122302
  static final AuditEventSubType value122302 = AuditEventSubType._(
    value: '122302',
  );

  /// value122303
  static final AuditEventSubType value122303 = AuditEventSubType._(
    value: '122303',
  );

  /// value122304
  static final AuditEventSubType value122304 = AuditEventSubType._(
    value: '122304',
  );

  /// value122305
  static final AuditEventSubType value122305 = AuditEventSubType._(
    value: '122305',
  );

  /// value122306
  static final AuditEventSubType value122306 = AuditEventSubType._(
    value: '122306',
  );

  /// value122307
  static final AuditEventSubType value122307 = AuditEventSubType._(
    value: '122307',
  );

  /// value122308
  static final AuditEventSubType value122308 = AuditEventSubType._(
    value: '122308',
  );

  /// value122309
  static final AuditEventSubType value122309 = AuditEventSubType._(
    value: '122309',
  );

  /// value122310
  static final AuditEventSubType value122310 = AuditEventSubType._(
    value: '122310',
  );

  /// value122311
  static final AuditEventSubType value122311 = AuditEventSubType._(
    value: '122311',
  );

  /// value122312
  static final AuditEventSubType value122312 = AuditEventSubType._(
    value: '122312',
  );

  /// value122313
  static final AuditEventSubType value122313 = AuditEventSubType._(
    value: '122313',
  );

  /// value122319
  static final AuditEventSubType value122319 = AuditEventSubType._(
    value: '122319',
  );

  /// value122320
  static final AuditEventSubType value122320 = AuditEventSubType._(
    value: '122320',
  );

  /// value122321
  static final AuditEventSubType value122321 = AuditEventSubType._(
    value: '122321',
  );

  /// value122322
  static final AuditEventSubType value122322 = AuditEventSubType._(
    value: '122322',
  );

  /// value122325
  static final AuditEventSubType value122325 = AuditEventSubType._(
    value: '122325',
  );

  /// value122330
  static final AuditEventSubType value122330 = AuditEventSubType._(
    value: '122330',
  );

  /// value122331
  static final AuditEventSubType value122331 = AuditEventSubType._(
    value: '122331',
  );

  /// value122332
  static final AuditEventSubType value122332 = AuditEventSubType._(
    value: '122332',
  );

  /// value122333
  static final AuditEventSubType value122333 = AuditEventSubType._(
    value: '122333',
  );

  /// value122334
  static final AuditEventSubType value122334 = AuditEventSubType._(
    value: '122334',
  );

  /// value122335
  static final AuditEventSubType value122335 = AuditEventSubType._(
    value: '122335',
  );

  /// value122336
  static final AuditEventSubType value122336 = AuditEventSubType._(
    value: '122336',
  );

  /// value122337
  static final AuditEventSubType value122337 = AuditEventSubType._(
    value: '122337',
  );

  /// value122339
  static final AuditEventSubType value122339 = AuditEventSubType._(
    value: '122339',
  );

  /// value122340
  static final AuditEventSubType value122340 = AuditEventSubType._(
    value: '122340',
  );

  /// value122341
  static final AuditEventSubType value122341 = AuditEventSubType._(
    value: '122341',
  );

  /// value122343
  static final AuditEventSubType value122343 = AuditEventSubType._(
    value: '122343',
  );

  /// value122344
  static final AuditEventSubType value122344 = AuditEventSubType._(
    value: '122344',
  );

  /// value122345
  static final AuditEventSubType value122345 = AuditEventSubType._(
    value: '122345',
  );

  /// value122346
  static final AuditEventSubType value122346 = AuditEventSubType._(
    value: '122346',
  );

  /// value122347
  static final AuditEventSubType value122347 = AuditEventSubType._(
    value: '122347',
  );

  /// value122348
  static final AuditEventSubType value122348 = AuditEventSubType._(
    value: '122348',
  );

  /// value122350
  static final AuditEventSubType value122350 = AuditEventSubType._(
    value: '122350',
  );

  /// value122351
  static final AuditEventSubType value122351 = AuditEventSubType._(
    value: '122351',
  );

  /// value122352
  static final AuditEventSubType value122352 = AuditEventSubType._(
    value: '122352',
  );

  /// value122354
  static final AuditEventSubType value122354 = AuditEventSubType._(
    value: '122354',
  );

  /// value122355
  static final AuditEventSubType value122355 = AuditEventSubType._(
    value: '122355',
  );

  /// value122356
  static final AuditEventSubType value122356 = AuditEventSubType._(
    value: '122356',
  );

  /// value122357
  static final AuditEventSubType value122357 = AuditEventSubType._(
    value: '122357',
  );

  /// value122360
  static final AuditEventSubType value122360 = AuditEventSubType._(
    value: '122360',
  );

  /// value122361
  static final AuditEventSubType value122361 = AuditEventSubType._(
    value: '122361',
  );

  /// value122363
  static final AuditEventSubType value122363 = AuditEventSubType._(
    value: '122363',
  );

  /// value122364
  static final AuditEventSubType value122364 = AuditEventSubType._(
    value: '122364',
  );

  /// value122367
  static final AuditEventSubType value122367 = AuditEventSubType._(
    value: '122367',
  );

  /// value122368
  static final AuditEventSubType value122368 = AuditEventSubType._(
    value: '122368',
  );

  /// value122369
  static final AuditEventSubType value122369 = AuditEventSubType._(
    value: '122369',
  );

  /// value122370
  static final AuditEventSubType value122370 = AuditEventSubType._(
    value: '122370',
  );

  /// value122371
  static final AuditEventSubType value122371 = AuditEventSubType._(
    value: '122371',
  );

  /// value122372
  static final AuditEventSubType value122372 = AuditEventSubType._(
    value: '122372',
  );

  /// value122374
  static final AuditEventSubType value122374 = AuditEventSubType._(
    value: '122374',
  );

  /// value122375
  static final AuditEventSubType value122375 = AuditEventSubType._(
    value: '122375',
  );

  /// value122376
  static final AuditEventSubType value122376 = AuditEventSubType._(
    value: '122376',
  );

  /// value122380
  static final AuditEventSubType value122380 = AuditEventSubType._(
    value: '122380',
  );

  /// value122381
  static final AuditEventSubType value122381 = AuditEventSubType._(
    value: '122381',
  );

  /// value122382
  static final AuditEventSubType value122382 = AuditEventSubType._(
    value: '122382',
  );

  /// value122383
  static final AuditEventSubType value122383 = AuditEventSubType._(
    value: '122383',
  );

  /// value122384
  static final AuditEventSubType value122384 = AuditEventSubType._(
    value: '122384',
  );

  /// value122385
  static final AuditEventSubType value122385 = AuditEventSubType._(
    value: '122385',
  );

  /// value122386
  static final AuditEventSubType value122386 = AuditEventSubType._(
    value: '122386',
  );

  /// value122387
  static final AuditEventSubType value122387 = AuditEventSubType._(
    value: '122387',
  );

  /// value122388
  static final AuditEventSubType value122388 = AuditEventSubType._(
    value: '122388',
  );

  /// value122389
  static final AuditEventSubType value122389 = AuditEventSubType._(
    value: '122389',
  );

  /// value122390
  static final AuditEventSubType value122390 = AuditEventSubType._(
    value: '122390',
  );

  /// value122391
  static final AuditEventSubType value122391 = AuditEventSubType._(
    value: '122391',
  );

  /// value122393
  static final AuditEventSubType value122393 = AuditEventSubType._(
    value: '122393',
  );

  /// value122394
  static final AuditEventSubType value122394 = AuditEventSubType._(
    value: '122394',
  );

  /// value122395
  static final AuditEventSubType value122395 = AuditEventSubType._(
    value: '122395',
  );

  /// value122398
  static final AuditEventSubType value122398 = AuditEventSubType._(
    value: '122398',
  );

  /// value122399
  static final AuditEventSubType value122399 = AuditEventSubType._(
    value: '122399',
  );

  /// value122400
  static final AuditEventSubType value122400 = AuditEventSubType._(
    value: '122400',
  );

  /// value122401
  static final AuditEventSubType value122401 = AuditEventSubType._(
    value: '122401',
  );

  /// value122402
  static final AuditEventSubType value122402 = AuditEventSubType._(
    value: '122402',
  );

  /// value122403
  static final AuditEventSubType value122403 = AuditEventSubType._(
    value: '122403',
  );

  /// value122404
  static final AuditEventSubType value122404 = AuditEventSubType._(
    value: '122404',
  );

  /// value122405
  static final AuditEventSubType value122405 = AuditEventSubType._(
    value: '122405',
  );

  /// value122406
  static final AuditEventSubType value122406 = AuditEventSubType._(
    value: '122406',
  );

  /// value122407
  static final AuditEventSubType value122407 = AuditEventSubType._(
    value: '122407',
  );

  /// value122408
  static final AuditEventSubType value122408 = AuditEventSubType._(
    value: '122408',
  );

  /// value122410
  static final AuditEventSubType value122410 = AuditEventSubType._(
    value: '122410',
  );

  /// value122411
  static final AuditEventSubType value122411 = AuditEventSubType._(
    value: '122411',
  );

  /// value122417
  static final AuditEventSubType value122417 = AuditEventSubType._(
    value: '122417',
  );

  /// value122421
  static final AuditEventSubType value122421 = AuditEventSubType._(
    value: '122421',
  );

  /// value122422
  static final AuditEventSubType value122422 = AuditEventSubType._(
    value: '122422',
  );

  /// value122423
  static final AuditEventSubType value122423 = AuditEventSubType._(
    value: '122423',
  );

  /// value122428
  static final AuditEventSubType value122428 = AuditEventSubType._(
    value: '122428',
  );

  /// value122429
  static final AuditEventSubType value122429 = AuditEventSubType._(
    value: '122429',
  );

  /// value122430
  static final AuditEventSubType value122430 = AuditEventSubType._(
    value: '122430',
  );

  /// value122431
  static final AuditEventSubType value122431 = AuditEventSubType._(
    value: '122431',
  );

  /// value122432
  static final AuditEventSubType value122432 = AuditEventSubType._(
    value: '122432',
  );

  /// value122433
  static final AuditEventSubType value122433 = AuditEventSubType._(
    value: '122433',
  );

  /// value122434
  static final AuditEventSubType value122434 = AuditEventSubType._(
    value: '122434',
  );

  /// value122435
  static final AuditEventSubType value122435 = AuditEventSubType._(
    value: '122435',
  );

  /// value122438
  static final AuditEventSubType value122438 = AuditEventSubType._(
    value: '122438',
  );

  /// value122445
  static final AuditEventSubType value122445 = AuditEventSubType._(
    value: '122445',
  );

  /// value122446
  static final AuditEventSubType value122446 = AuditEventSubType._(
    value: '122446',
  );

  /// value122447
  static final AuditEventSubType value122447 = AuditEventSubType._(
    value: '122447',
  );

  /// value122448
  static final AuditEventSubType value122448 = AuditEventSubType._(
    value: '122448',
  );

  /// value122449
  static final AuditEventSubType value122449 = AuditEventSubType._(
    value: '122449',
  );

  /// value122450
  static final AuditEventSubType value122450 = AuditEventSubType._(
    value: '122450',
  );

  /// value122451
  static final AuditEventSubType value122451 = AuditEventSubType._(
    value: '122451',
  );

  /// value122452
  static final AuditEventSubType value122452 = AuditEventSubType._(
    value: '122452',
  );

  /// value122453
  static final AuditEventSubType value122453 = AuditEventSubType._(
    value: '122453',
  );

  /// value122459
  static final AuditEventSubType value122459 = AuditEventSubType._(
    value: '122459',
  );

  /// value122461
  static final AuditEventSubType value122461 = AuditEventSubType._(
    value: '122461',
  );

  /// value122464
  static final AuditEventSubType value122464 = AuditEventSubType._(
    value: '122464',
  );

  /// value122465
  static final AuditEventSubType value122465 = AuditEventSubType._(
    value: '122465',
  );

  /// value122466
  static final AuditEventSubType value122466 = AuditEventSubType._(
    value: '122466',
  );

  /// value122467
  static final AuditEventSubType value122467 = AuditEventSubType._(
    value: '122467',
  );

  /// value122468
  static final AuditEventSubType value122468 = AuditEventSubType._(
    value: '122468',
  );

  /// value122469
  static final AuditEventSubType value122469 = AuditEventSubType._(
    value: '122469',
  );

  /// value122470
  static final AuditEventSubType value122470 = AuditEventSubType._(
    value: '122470',
  );

  /// value122471
  static final AuditEventSubType value122471 = AuditEventSubType._(
    value: '122471',
  );

  /// value122472
  static final AuditEventSubType value122472 = AuditEventSubType._(
    value: '122472',
  );

  /// value122473
  static final AuditEventSubType value122473 = AuditEventSubType._(
    value: '122473',
  );

  /// value122474
  static final AuditEventSubType value122474 = AuditEventSubType._(
    value: '122474',
  );

  /// value122475
  static final AuditEventSubType value122475 = AuditEventSubType._(
    value: '122475',
  );

  /// value122476
  static final AuditEventSubType value122476 = AuditEventSubType._(
    value: '122476',
  );

  /// value122477
  static final AuditEventSubType value122477 = AuditEventSubType._(
    value: '122477',
  );

  /// value122480
  static final AuditEventSubType value122480 = AuditEventSubType._(
    value: '122480',
  );

  /// value122481
  static final AuditEventSubType value122481 = AuditEventSubType._(
    value: '122481',
  );

  /// value122482
  static final AuditEventSubType value122482 = AuditEventSubType._(
    value: '122482',
  );

  /// value122485
  static final AuditEventSubType value122485 = AuditEventSubType._(
    value: '122485',
  );

  /// value122486
  static final AuditEventSubType value122486 = AuditEventSubType._(
    value: '122486',
  );

  /// value122487
  static final AuditEventSubType value122487 = AuditEventSubType._(
    value: '122487',
  );

  /// value122488
  static final AuditEventSubType value122488 = AuditEventSubType._(
    value: '122488',
  );

  /// value122489
  static final AuditEventSubType value122489 = AuditEventSubType._(
    value: '122489',
  );

  /// value122490
  static final AuditEventSubType value122490 = AuditEventSubType._(
    value: '122490',
  );

  /// value122491
  static final AuditEventSubType value122491 = AuditEventSubType._(
    value: '122491',
  );

  /// value122493
  static final AuditEventSubType value122493 = AuditEventSubType._(
    value: '122493',
  );

  /// value122495
  static final AuditEventSubType value122495 = AuditEventSubType._(
    value: '122495',
  );

  /// value122496
  static final AuditEventSubType value122496 = AuditEventSubType._(
    value: '122496',
  );

  /// value122497
  static final AuditEventSubType value122497 = AuditEventSubType._(
    value: '122497',
  );

  /// value122498
  static final AuditEventSubType value122498 = AuditEventSubType._(
    value: '122498',
  );

  /// value122499
  static final AuditEventSubType value122499 = AuditEventSubType._(
    value: '122499',
  );

  /// value122501
  static final AuditEventSubType value122501 = AuditEventSubType._(
    value: '122501',
  );

  /// value122502
  static final AuditEventSubType value122502 = AuditEventSubType._(
    value: '122502',
  );

  /// value122503
  static final AuditEventSubType value122503 = AuditEventSubType._(
    value: '122503',
  );

  /// value122505
  static final AuditEventSubType value122505 = AuditEventSubType._(
    value: '122505',
  );

  /// value122507
  static final AuditEventSubType value122507 = AuditEventSubType._(
    value: '122507',
  );

  /// value122508
  static final AuditEventSubType value122508 = AuditEventSubType._(
    value: '122508',
  );

  /// value122509
  static final AuditEventSubType value122509 = AuditEventSubType._(
    value: '122509',
  );

  /// value122510
  static final AuditEventSubType value122510 = AuditEventSubType._(
    value: '122510',
  );

  /// value122511
  static final AuditEventSubType value122511 = AuditEventSubType._(
    value: '122511',
  );

  /// value122516
  static final AuditEventSubType value122516 = AuditEventSubType._(
    value: '122516',
  );

  /// value122517
  static final AuditEventSubType value122517 = AuditEventSubType._(
    value: '122517',
  );

  /// value122528
  static final AuditEventSubType value122528 = AuditEventSubType._(
    value: '122528',
  );

  /// value122529
  static final AuditEventSubType value122529 = AuditEventSubType._(
    value: '122529',
  );

  /// value122542
  static final AuditEventSubType value122542 = AuditEventSubType._(
    value: '122542',
  );

  /// value122544
  static final AuditEventSubType value122544 = AuditEventSubType._(
    value: '122544',
  );

  /// value122545
  static final AuditEventSubType value122545 = AuditEventSubType._(
    value: '122545',
  );

  /// value122546
  static final AuditEventSubType value122546 = AuditEventSubType._(
    value: '122546',
  );

  /// value122547
  static final AuditEventSubType value122547 = AuditEventSubType._(
    value: '122547',
  );

  /// value122548
  static final AuditEventSubType value122548 = AuditEventSubType._(
    value: '122548',
  );

  /// value122549
  static final AuditEventSubType value122549 = AuditEventSubType._(
    value: '122549',
  );

  /// value122550
  static final AuditEventSubType value122550 = AuditEventSubType._(
    value: '122550',
  );

  /// value122551
  static final AuditEventSubType value122551 = AuditEventSubType._(
    value: '122551',
  );

  /// value122554
  static final AuditEventSubType value122554 = AuditEventSubType._(
    value: '122554',
  );

  /// value122555
  static final AuditEventSubType value122555 = AuditEventSubType._(
    value: '122555',
  );

  /// value122558
  static final AuditEventSubType value122558 = AuditEventSubType._(
    value: '122558',
  );

  /// value122559
  static final AuditEventSubType value122559 = AuditEventSubType._(
    value: '122559',
  );

  /// value122560
  static final AuditEventSubType value122560 = AuditEventSubType._(
    value: '122560',
  );

  /// value122562
  static final AuditEventSubType value122562 = AuditEventSubType._(
    value: '122562',
  );

  /// value122563
  static final AuditEventSubType value122563 = AuditEventSubType._(
    value: '122563',
  );

  /// value122564
  static final AuditEventSubType value122564 = AuditEventSubType._(
    value: '122564',
  );

  /// value122565
  static final AuditEventSubType value122565 = AuditEventSubType._(
    value: '122565',
  );

  /// value122566
  static final AuditEventSubType value122566 = AuditEventSubType._(
    value: '122566',
  );

  /// value122572
  static final AuditEventSubType value122572 = AuditEventSubType._(
    value: '122572',
  );

  /// value122574
  static final AuditEventSubType value122574 = AuditEventSubType._(
    value: '122574',
  );

  /// value122575
  static final AuditEventSubType value122575 = AuditEventSubType._(
    value: '122575',
  );

  /// value122582
  static final AuditEventSubType value122582 = AuditEventSubType._(
    value: '122582',
  );

  /// value122600
  static final AuditEventSubType value122600 = AuditEventSubType._(
    value: '122600',
  );

  /// value122601
  static final AuditEventSubType value122601 = AuditEventSubType._(
    value: '122601',
  );

  /// value122602
  static final AuditEventSubType value122602 = AuditEventSubType._(
    value: '122602',
  );

  /// value122603
  static final AuditEventSubType value122603 = AuditEventSubType._(
    value: '122603',
  );

  /// value122604
  static final AuditEventSubType value122604 = AuditEventSubType._(
    value: '122604',
  );

  /// value122605
  static final AuditEventSubType value122605 = AuditEventSubType._(
    value: '122605',
  );

  /// value122606
  static final AuditEventSubType value122606 = AuditEventSubType._(
    value: '122606',
  );

  /// value122607
  static final AuditEventSubType value122607 = AuditEventSubType._(
    value: '122607',
  );

  /// value122608
  static final AuditEventSubType value122608 = AuditEventSubType._(
    value: '122608',
  );

  /// value122609
  static final AuditEventSubType value122609 = AuditEventSubType._(
    value: '122609',
  );

  /// value122611
  static final AuditEventSubType value122611 = AuditEventSubType._(
    value: '122611',
  );

  /// value122612
  static final AuditEventSubType value122612 = AuditEventSubType._(
    value: '122612',
  );

  /// value122616
  static final AuditEventSubType value122616 = AuditEventSubType._(
    value: '122616',
  );

  /// value122617
  static final AuditEventSubType value122617 = AuditEventSubType._(
    value: '122617',
  );

  /// value122618
  static final AuditEventSubType value122618 = AuditEventSubType._(
    value: '122618',
  );

  /// value122619
  static final AuditEventSubType value122619 = AuditEventSubType._(
    value: '122619',
  );

  /// value122620
  static final AuditEventSubType value122620 = AuditEventSubType._(
    value: '122620',
  );

  /// value122621
  static final AuditEventSubType value122621 = AuditEventSubType._(
    value: '122621',
  );

  /// value122624
  static final AuditEventSubType value122624 = AuditEventSubType._(
    value: '122624',
  );

  /// value122627
  static final AuditEventSubType value122627 = AuditEventSubType._(
    value: '122627',
  );

  /// value122628
  static final AuditEventSubType value122628 = AuditEventSubType._(
    value: '122628',
  );

  /// value122631
  static final AuditEventSubType value122631 = AuditEventSubType._(
    value: '122631',
  );

  /// value122633
  static final AuditEventSubType value122633 = AuditEventSubType._(
    value: '122633',
  );

  /// value122634
  static final AuditEventSubType value122634 = AuditEventSubType._(
    value: '122634',
  );

  /// value122635
  static final AuditEventSubType value122635 = AuditEventSubType._(
    value: '122635',
  );

  /// value122636
  static final AuditEventSubType value122636 = AuditEventSubType._(
    value: '122636',
  );

  /// value122637
  static final AuditEventSubType value122637 = AuditEventSubType._(
    value: '122637',
  );

  /// value122638
  static final AuditEventSubType value122638 = AuditEventSubType._(
    value: '122638',
  );

  /// value122639
  static final AuditEventSubType value122639 = AuditEventSubType._(
    value: '122639',
  );

  /// value122640
  static final AuditEventSubType value122640 = AuditEventSubType._(
    value: '122640',
  );

  /// value122642
  static final AuditEventSubType value122642 = AuditEventSubType._(
    value: '122642',
  );

  /// value122643
  static final AuditEventSubType value122643 = AuditEventSubType._(
    value: '122643',
  );

  /// value122645
  static final AuditEventSubType value122645 = AuditEventSubType._(
    value: '122645',
  );

  /// value122650
  static final AuditEventSubType value122650 = AuditEventSubType._(
    value: '122650',
  );

  /// value122651
  static final AuditEventSubType value122651 = AuditEventSubType._(
    value: '122651',
  );

  /// value122652
  static final AuditEventSubType value122652 = AuditEventSubType._(
    value: '122652',
  );

  /// value122655
  static final AuditEventSubType value122655 = AuditEventSubType._(
    value: '122655',
  );

  /// value122656
  static final AuditEventSubType value122656 = AuditEventSubType._(
    value: '122656',
  );

  /// value122657
  static final AuditEventSubType value122657 = AuditEventSubType._(
    value: '122657',
  );

  /// value122658
  static final AuditEventSubType value122658 = AuditEventSubType._(
    value: '122658',
  );

  /// value122659
  static final AuditEventSubType value122659 = AuditEventSubType._(
    value: '122659',
  );

  /// value122660
  static final AuditEventSubType value122660 = AuditEventSubType._(
    value: '122660',
  );

  /// value122661
  static final AuditEventSubType value122661 = AuditEventSubType._(
    value: '122661',
  );

  /// value122664
  static final AuditEventSubType value122664 = AuditEventSubType._(
    value: '122664',
  );

  /// value122665
  static final AuditEventSubType value122665 = AuditEventSubType._(
    value: '122665',
  );

  /// value122666
  static final AuditEventSubType value122666 = AuditEventSubType._(
    value: '122666',
  );

  /// value122667
  static final AuditEventSubType value122667 = AuditEventSubType._(
    value: '122667',
  );

  /// value122668
  static final AuditEventSubType value122668 = AuditEventSubType._(
    value: '122668',
  );

  /// value122670
  static final AuditEventSubType value122670 = AuditEventSubType._(
    value: '122670',
  );

  /// value122675
  static final AuditEventSubType value122675 = AuditEventSubType._(
    value: '122675',
  );

  /// value122680
  static final AuditEventSubType value122680 = AuditEventSubType._(
    value: '122680',
  );

  /// value122683
  static final AuditEventSubType value122683 = AuditEventSubType._(
    value: '122683',
  );

  /// value122684
  static final AuditEventSubType value122684 = AuditEventSubType._(
    value: '122684',
  );

  /// value122685
  static final AuditEventSubType value122685 = AuditEventSubType._(
    value: '122685',
  );

  /// value122686
  static final AuditEventSubType value122686 = AuditEventSubType._(
    value: '122686',
  );

  /// value122687
  static final AuditEventSubType value122687 = AuditEventSubType._(
    value: '122687',
  );

  /// value122698
  static final AuditEventSubType value122698 = AuditEventSubType._(
    value: '122698',
  );

  /// value122699
  static final AuditEventSubType value122699 = AuditEventSubType._(
    value: '122699',
  );

  /// value122700
  static final AuditEventSubType value122700 = AuditEventSubType._(
    value: '122700',
  );

  /// value122701
  static final AuditEventSubType value122701 = AuditEventSubType._(
    value: '122701',
  );

  /// value122702
  static final AuditEventSubType value122702 = AuditEventSubType._(
    value: '122702',
  );

  /// value122703
  static final AuditEventSubType value122703 = AuditEventSubType._(
    value: '122703',
  );

  /// value122704
  static final AuditEventSubType value122704 = AuditEventSubType._(
    value: '122704',
  );

  /// value122705
  static final AuditEventSubType value122705 = AuditEventSubType._(
    value: '122705',
  );

  /// value122706
  static final AuditEventSubType value122706 = AuditEventSubType._(
    value: '122706',
  );

  /// value122707
  static final AuditEventSubType value122707 = AuditEventSubType._(
    value: '122707',
  );

  /// value122708
  static final AuditEventSubType value122708 = AuditEventSubType._(
    value: '122708',
  );

  /// value122709
  static final AuditEventSubType value122709 = AuditEventSubType._(
    value: '122709',
  );

  /// value122710
  static final AuditEventSubType value122710 = AuditEventSubType._(
    value: '122710',
  );

  /// value122711
  static final AuditEventSubType value122711 = AuditEventSubType._(
    value: '122711',
  );

  /// value122712
  static final AuditEventSubType value122712 = AuditEventSubType._(
    value: '122712',
  );

  /// value122713
  static final AuditEventSubType value122713 = AuditEventSubType._(
    value: '122713',
  );

  /// value122715
  static final AuditEventSubType value122715 = AuditEventSubType._(
    value: '122715',
  );

  /// value122716
  static final AuditEventSubType value122716 = AuditEventSubType._(
    value: '122716',
  );

  /// value122717
  static final AuditEventSubType value122717 = AuditEventSubType._(
    value: '122717',
  );

  /// value122718
  static final AuditEventSubType value122718 = AuditEventSubType._(
    value: '122718',
  );

  /// value122720
  static final AuditEventSubType value122720 = AuditEventSubType._(
    value: '122720',
  );

  /// value122721
  static final AuditEventSubType value122721 = AuditEventSubType._(
    value: '122721',
  );

  /// value122726
  static final AuditEventSubType value122726 = AuditEventSubType._(
    value: '122726',
  );

  /// value122727
  static final AuditEventSubType value122727 = AuditEventSubType._(
    value: '122727',
  );

  /// value122728
  static final AuditEventSubType value122728 = AuditEventSubType._(
    value: '122728',
  );

  /// value122729
  static final AuditEventSubType value122729 = AuditEventSubType._(
    value: '122729',
  );

  /// value122730
  static final AuditEventSubType value122730 = AuditEventSubType._(
    value: '122730',
  );

  /// value122731
  static final AuditEventSubType value122731 = AuditEventSubType._(
    value: '122731',
  );

  /// value122732
  static final AuditEventSubType value122732 = AuditEventSubType._(
    value: '122732',
  );

  /// value122733
  static final AuditEventSubType value122733 = AuditEventSubType._(
    value: '122733',
  );

  /// value122734
  static final AuditEventSubType value122734 = AuditEventSubType._(
    value: '122734',
  );

  /// value122735
  static final AuditEventSubType value122735 = AuditEventSubType._(
    value: '122735',
  );

  /// value122739
  static final AuditEventSubType value122739 = AuditEventSubType._(
    value: '122739',
  );

  /// value122740
  static final AuditEventSubType value122740 = AuditEventSubType._(
    value: '122740',
  );

  /// value122741
  static final AuditEventSubType value122741 = AuditEventSubType._(
    value: '122741',
  );

  /// value122742
  static final AuditEventSubType value122742 = AuditEventSubType._(
    value: '122742',
  );

  /// value122743
  static final AuditEventSubType value122743 = AuditEventSubType._(
    value: '122743',
  );

  /// value122744
  static final AuditEventSubType value122744 = AuditEventSubType._(
    value: '122744',
  );

  /// value122745
  static final AuditEventSubType value122745 = AuditEventSubType._(
    value: '122745',
  );

  /// value122748
  static final AuditEventSubType value122748 = AuditEventSubType._(
    value: '122748',
  );

  /// value122750
  static final AuditEventSubType value122750 = AuditEventSubType._(
    value: '122750',
  );

  /// value122751
  static final AuditEventSubType value122751 = AuditEventSubType._(
    value: '122751',
  );

  /// value122752
  static final AuditEventSubType value122752 = AuditEventSubType._(
    value: '122752',
  );

  /// value122753
  static final AuditEventSubType value122753 = AuditEventSubType._(
    value: '122753',
  );

  /// value122755
  static final AuditEventSubType value122755 = AuditEventSubType._(
    value: '122755',
  );

  /// value122756
  static final AuditEventSubType value122756 = AuditEventSubType._(
    value: '122756',
  );

  /// value122757
  static final AuditEventSubType value122757 = AuditEventSubType._(
    value: '122757',
  );

  /// value122758
  static final AuditEventSubType value122758 = AuditEventSubType._(
    value: '122758',
  );

  /// value122759
  static final AuditEventSubType value122759 = AuditEventSubType._(
    value: '122759',
  );

  /// value122760
  static final AuditEventSubType value122760 = AuditEventSubType._(
    value: '122760',
  );

  /// value122762
  static final AuditEventSubType value122762 = AuditEventSubType._(
    value: '122762',
  );

  /// value122764
  static final AuditEventSubType value122764 = AuditEventSubType._(
    value: '122764',
  );

  /// value122768
  static final AuditEventSubType value122768 = AuditEventSubType._(
    value: '122768',
  );

  /// value122769
  static final AuditEventSubType value122769 = AuditEventSubType._(
    value: '122769',
  );

  /// value122770
  static final AuditEventSubType value122770 = AuditEventSubType._(
    value: '122770',
  );

  /// value122771
  static final AuditEventSubType value122771 = AuditEventSubType._(
    value: '122771',
  );

  /// value122772
  static final AuditEventSubType value122772 = AuditEventSubType._(
    value: '122772',
  );

  /// value122773
  static final AuditEventSubType value122773 = AuditEventSubType._(
    value: '122773',
  );

  /// value122775
  static final AuditEventSubType value122775 = AuditEventSubType._(
    value: '122775',
  );

  /// value122776
  static final AuditEventSubType value122776 = AuditEventSubType._(
    value: '122776',
  );

  /// value122781
  static final AuditEventSubType value122781 = AuditEventSubType._(
    value: '122781',
  );

  /// value122782
  static final AuditEventSubType value122782 = AuditEventSubType._(
    value: '122782',
  );

  /// value122783
  static final AuditEventSubType value122783 = AuditEventSubType._(
    value: '122783',
  );

  /// value122784
  static final AuditEventSubType value122784 = AuditEventSubType._(
    value: '122784',
  );

  /// value122785
  static final AuditEventSubType value122785 = AuditEventSubType._(
    value: '122785',
  );

  /// value122791
  static final AuditEventSubType value122791 = AuditEventSubType._(
    value: '122791',
  );

  /// value122792
  static final AuditEventSubType value122792 = AuditEventSubType._(
    value: '122792',
  );

  /// value122793
  static final AuditEventSubType value122793 = AuditEventSubType._(
    value: '122793',
  );

  /// value122795
  static final AuditEventSubType value122795 = AuditEventSubType._(
    value: '122795',
  );

  /// value122796
  static final AuditEventSubType value122796 = AuditEventSubType._(
    value: '122796',
  );

  /// value122797
  static final AuditEventSubType value122797 = AuditEventSubType._(
    value: '122797',
  );

  /// value122799
  static final AuditEventSubType value122799 = AuditEventSubType._(
    value: '122799',
  );

  /// value123001
  static final AuditEventSubType value123001 = AuditEventSubType._(
    value: '123001',
  );

  /// value123003
  static final AuditEventSubType value123003 = AuditEventSubType._(
    value: '123003',
  );

  /// value123004
  static final AuditEventSubType value123004 = AuditEventSubType._(
    value: '123004',
  );

  /// value123005
  static final AuditEventSubType value123005 = AuditEventSubType._(
    value: '123005',
  );

  /// value123006
  static final AuditEventSubType value123006 = AuditEventSubType._(
    value: '123006',
  );

  /// value123007
  static final AuditEventSubType value123007 = AuditEventSubType._(
    value: '123007',
  );

  /// value123009
  static final AuditEventSubType value123009 = AuditEventSubType._(
    value: '123009',
  );

  /// value123010
  static final AuditEventSubType value123010 = AuditEventSubType._(
    value: '123010',
  );

  /// value123011
  static final AuditEventSubType value123011 = AuditEventSubType._(
    value: '123011',
  );

  /// value123012
  static final AuditEventSubType value123012 = AuditEventSubType._(
    value: '123012',
  );

  /// value123014
  static final AuditEventSubType value123014 = AuditEventSubType._(
    value: '123014',
  );

  /// value123015
  static final AuditEventSubType value123015 = AuditEventSubType._(
    value: '123015',
  );

  /// value123016
  static final AuditEventSubType value123016 = AuditEventSubType._(
    value: '123016',
  );

  /// value123019
  static final AuditEventSubType value123019 = AuditEventSubType._(
    value: '123019',
  );

  /// value123101
  static final AuditEventSubType value123101 = AuditEventSubType._(
    value: '123101',
  );

  /// value123102
  static final AuditEventSubType value123102 = AuditEventSubType._(
    value: '123102',
  );

  /// value123103
  static final AuditEventSubType value123103 = AuditEventSubType._(
    value: '123103',
  );

  /// value123104
  static final AuditEventSubType value123104 = AuditEventSubType._(
    value: '123104',
  );

  /// value123105
  static final AuditEventSubType value123105 = AuditEventSubType._(
    value: '123105',
  );

  /// value123106
  static final AuditEventSubType value123106 = AuditEventSubType._(
    value: '123106',
  );

  /// value123107
  static final AuditEventSubType value123107 = AuditEventSubType._(
    value: '123107',
  );

  /// value123108
  static final AuditEventSubType value123108 = AuditEventSubType._(
    value: '123108',
  );

  /// value123109
  static final AuditEventSubType value123109 = AuditEventSubType._(
    value: '123109',
  );

  /// value123110
  static final AuditEventSubType value123110 = AuditEventSubType._(
    value: '123110',
  );

  /// value123111
  static final AuditEventSubType value123111 = AuditEventSubType._(
    value: '123111',
  );

  /// value125000
  static final AuditEventSubType value125000 = AuditEventSubType._(
    value: '125000',
  );

  /// value125001
  static final AuditEventSubType value125001 = AuditEventSubType._(
    value: '125001',
  );

  /// value125002
  static final AuditEventSubType value125002 = AuditEventSubType._(
    value: '125002',
  );

  /// value125003
  static final AuditEventSubType value125003 = AuditEventSubType._(
    value: '125003',
  );

  /// value125004
  static final AuditEventSubType value125004 = AuditEventSubType._(
    value: '125004',
  );

  /// value125005
  static final AuditEventSubType value125005 = AuditEventSubType._(
    value: '125005',
  );

  /// value125006
  static final AuditEventSubType value125006 = AuditEventSubType._(
    value: '125006',
  );

  /// value125007
  static final AuditEventSubType value125007 = AuditEventSubType._(
    value: '125007',
  );

  /// value125008
  static final AuditEventSubType value125008 = AuditEventSubType._(
    value: '125008',
  );

  /// value125009
  static final AuditEventSubType value125009 = AuditEventSubType._(
    value: '125009',
  );

  /// value125010
  static final AuditEventSubType value125010 = AuditEventSubType._(
    value: '125010',
  );

  /// value125011
  static final AuditEventSubType value125011 = AuditEventSubType._(
    value: '125011',
  );

  /// value125012
  static final AuditEventSubType value125012 = AuditEventSubType._(
    value: '125012',
  );

  /// value125013
  static final AuditEventSubType value125013 = AuditEventSubType._(
    value: '125013',
  );

  /// value125015
  static final AuditEventSubType value125015 = AuditEventSubType._(
    value: '125015',
  );

  /// value125016
  static final AuditEventSubType value125016 = AuditEventSubType._(
    value: '125016',
  );

  /// value125021
  static final AuditEventSubType value125021 = AuditEventSubType._(
    value: '125021',
  );

  /// value125022
  static final AuditEventSubType value125022 = AuditEventSubType._(
    value: '125022',
  );

  /// value125023
  static final AuditEventSubType value125023 = AuditEventSubType._(
    value: '125023',
  );

  /// value125024
  static final AuditEventSubType value125024 = AuditEventSubType._(
    value: '125024',
  );

  /// value125025
  static final AuditEventSubType value125025 = AuditEventSubType._(
    value: '125025',
  );

  /// value125030
  static final AuditEventSubType value125030 = AuditEventSubType._(
    value: '125030',
  );

  /// value125031
  static final AuditEventSubType value125031 = AuditEventSubType._(
    value: '125031',
  );

  /// value125032
  static final AuditEventSubType value125032 = AuditEventSubType._(
    value: '125032',
  );

  /// value125033
  static final AuditEventSubType value125033 = AuditEventSubType._(
    value: '125033',
  );

  /// value125034
  static final AuditEventSubType value125034 = AuditEventSubType._(
    value: '125034',
  );

  /// value125035
  static final AuditEventSubType value125035 = AuditEventSubType._(
    value: '125035',
  );

  /// value125036
  static final AuditEventSubType value125036 = AuditEventSubType._(
    value: '125036',
  );

  /// value125037
  static final AuditEventSubType value125037 = AuditEventSubType._(
    value: '125037',
  );

  /// value125038
  static final AuditEventSubType value125038 = AuditEventSubType._(
    value: '125038',
  );

  /// value125040
  static final AuditEventSubType value125040 = AuditEventSubType._(
    value: '125040',
  );

  /// value125041
  static final AuditEventSubType value125041 = AuditEventSubType._(
    value: '125041',
  );

  /// value125100
  static final AuditEventSubType value125100 = AuditEventSubType._(
    value: '125100',
  );

  /// value125101
  static final AuditEventSubType value125101 = AuditEventSubType._(
    value: '125101',
  );

  /// value125102
  static final AuditEventSubType value125102 = AuditEventSubType._(
    value: '125102',
  );

  /// value125105
  static final AuditEventSubType value125105 = AuditEventSubType._(
    value: '125105',
  );

  /// value125106
  static final AuditEventSubType value125106 = AuditEventSubType._(
    value: '125106',
  );

  /// value125107
  static final AuditEventSubType value125107 = AuditEventSubType._(
    value: '125107',
  );

  /// value125195
  static final AuditEventSubType value125195 = AuditEventSubType._(
    value: '125195',
  );

  /// value125196
  static final AuditEventSubType value125196 = AuditEventSubType._(
    value: '125196',
  );

  /// value125197
  static final AuditEventSubType value125197 = AuditEventSubType._(
    value: '125197',
  );

  /// value125200
  static final AuditEventSubType value125200 = AuditEventSubType._(
    value: '125200',
  );

  /// value125201
  static final AuditEventSubType value125201 = AuditEventSubType._(
    value: '125201',
  );

  /// value125202
  static final AuditEventSubType value125202 = AuditEventSubType._(
    value: '125202',
  );

  /// value125203
  static final AuditEventSubType value125203 = AuditEventSubType._(
    value: '125203',
  );

  /// value125204
  static final AuditEventSubType value125204 = AuditEventSubType._(
    value: '125204',
  );

  /// value125205
  static final AuditEventSubType value125205 = AuditEventSubType._(
    value: '125205',
  );

  /// value125206
  static final AuditEventSubType value125206 = AuditEventSubType._(
    value: '125206',
  );

  /// value125207
  static final AuditEventSubType value125207 = AuditEventSubType._(
    value: '125207',
  );

  /// value125208
  static final AuditEventSubType value125208 = AuditEventSubType._(
    value: '125208',
  );

  /// value125209
  static final AuditEventSubType value125209 = AuditEventSubType._(
    value: '125209',
  );

  /// value125210
  static final AuditEventSubType value125210 = AuditEventSubType._(
    value: '125210',
  );

  /// value125211
  static final AuditEventSubType value125211 = AuditEventSubType._(
    value: '125211',
  );

  /// value125212
  static final AuditEventSubType value125212 = AuditEventSubType._(
    value: '125212',
  );

  /// value125213
  static final AuditEventSubType value125213 = AuditEventSubType._(
    value: '125213',
  );

  /// value125214
  static final AuditEventSubType value125214 = AuditEventSubType._(
    value: '125214',
  );

  /// value125215
  static final AuditEventSubType value125215 = AuditEventSubType._(
    value: '125215',
  );

  /// value125216
  static final AuditEventSubType value125216 = AuditEventSubType._(
    value: '125216',
  );

  /// value125217
  static final AuditEventSubType value125217 = AuditEventSubType._(
    value: '125217',
  );

  /// value125218
  static final AuditEventSubType value125218 = AuditEventSubType._(
    value: '125218',
  );

  /// value125219
  static final AuditEventSubType value125219 = AuditEventSubType._(
    value: '125219',
  );

  /// value125220
  static final AuditEventSubType value125220 = AuditEventSubType._(
    value: '125220',
  );

  /// value125221
  static final AuditEventSubType value125221 = AuditEventSubType._(
    value: '125221',
  );

  /// value125222
  static final AuditEventSubType value125222 = AuditEventSubType._(
    value: '125222',
  );

  /// value125223
  static final AuditEventSubType value125223 = AuditEventSubType._(
    value: '125223',
  );

  /// value125224
  static final AuditEventSubType value125224 = AuditEventSubType._(
    value: '125224',
  );

  /// value125225
  static final AuditEventSubType value125225 = AuditEventSubType._(
    value: '125225',
  );

  /// value125226
  static final AuditEventSubType value125226 = AuditEventSubType._(
    value: '125226',
  );

  /// value125227
  static final AuditEventSubType value125227 = AuditEventSubType._(
    value: '125227',
  );

  /// value125228
  static final AuditEventSubType value125228 = AuditEventSubType._(
    value: '125228',
  );

  /// value125230
  static final AuditEventSubType value125230 = AuditEventSubType._(
    value: '125230',
  );

  /// value125231
  static final AuditEventSubType value125231 = AuditEventSubType._(
    value: '125231',
  );

  /// value125233
  static final AuditEventSubType value125233 = AuditEventSubType._(
    value: '125233',
  );

  /// value125234
  static final AuditEventSubType value125234 = AuditEventSubType._(
    value: '125234',
  );

  /// value125235
  static final AuditEventSubType value125235 = AuditEventSubType._(
    value: '125235',
  );

  /// value125236
  static final AuditEventSubType value125236 = AuditEventSubType._(
    value: '125236',
  );

  /// value125237
  static final AuditEventSubType value125237 = AuditEventSubType._(
    value: '125237',
  );

  /// value125238
  static final AuditEventSubType value125238 = AuditEventSubType._(
    value: '125238',
  );

  /// value125239
  static final AuditEventSubType value125239 = AuditEventSubType._(
    value: '125239',
  );

  /// value125240
  static final AuditEventSubType value125240 = AuditEventSubType._(
    value: '125240',
  );

  /// value125241
  static final AuditEventSubType value125241 = AuditEventSubType._(
    value: '125241',
  );

  /// value125242
  static final AuditEventSubType value125242 = AuditEventSubType._(
    value: '125242',
  );

  /// value125251
  static final AuditEventSubType value125251 = AuditEventSubType._(
    value: '125251',
  );

  /// value125252
  static final AuditEventSubType value125252 = AuditEventSubType._(
    value: '125252',
  );

  /// value125253
  static final AuditEventSubType value125253 = AuditEventSubType._(
    value: '125253',
  );

  /// value125254
  static final AuditEventSubType value125254 = AuditEventSubType._(
    value: '125254',
  );

  /// value125255
  static final AuditEventSubType value125255 = AuditEventSubType._(
    value: '125255',
  );

  /// value125256
  static final AuditEventSubType value125256 = AuditEventSubType._(
    value: '125256',
  );

  /// value125257
  static final AuditEventSubType value125257 = AuditEventSubType._(
    value: '125257',
  );

  /// value125258
  static final AuditEventSubType value125258 = AuditEventSubType._(
    value: '125258',
  );

  /// value125259
  static final AuditEventSubType value125259 = AuditEventSubType._(
    value: '125259',
  );

  /// value125261
  static final AuditEventSubType value125261 = AuditEventSubType._(
    value: '125261',
  );

  /// value125262
  static final AuditEventSubType value125262 = AuditEventSubType._(
    value: '125262',
  );

  /// value125263
  static final AuditEventSubType value125263 = AuditEventSubType._(
    value: '125263',
  );

  /// value125264
  static final AuditEventSubType value125264 = AuditEventSubType._(
    value: '125264',
  );

  /// value125265
  static final AuditEventSubType value125265 = AuditEventSubType._(
    value: '125265',
  );

  /// value125270
  static final AuditEventSubType value125270 = AuditEventSubType._(
    value: '125270',
  );

  /// value125271
  static final AuditEventSubType value125271 = AuditEventSubType._(
    value: '125271',
  );

  /// value125272
  static final AuditEventSubType value125272 = AuditEventSubType._(
    value: '125272',
  );

  /// value125273
  static final AuditEventSubType value125273 = AuditEventSubType._(
    value: '125273',
  );

  /// value125901
  static final AuditEventSubType value125901 = AuditEventSubType._(
    value: '125901',
  );

  /// value125902
  static final AuditEventSubType value125902 = AuditEventSubType._(
    value: '125902',
  );

  /// value125903
  static final AuditEventSubType value125903 = AuditEventSubType._(
    value: '125903',
  );

  /// value125904
  static final AuditEventSubType value125904 = AuditEventSubType._(
    value: '125904',
  );

  /// value125905
  static final AuditEventSubType value125905 = AuditEventSubType._(
    value: '125905',
  );

  /// value125906
  static final AuditEventSubType value125906 = AuditEventSubType._(
    value: '125906',
  );

  /// value125907
  static final AuditEventSubType value125907 = AuditEventSubType._(
    value: '125907',
  );

  /// value125908
  static final AuditEventSubType value125908 = AuditEventSubType._(
    value: '125908',
  );

  /// value126000
  static final AuditEventSubType value126000 = AuditEventSubType._(
    value: '126000',
  );

  /// value126001
  static final AuditEventSubType value126001 = AuditEventSubType._(
    value: '126001',
  );

  /// value126002
  static final AuditEventSubType value126002 = AuditEventSubType._(
    value: '126002',
  );

  /// value126003
  static final AuditEventSubType value126003 = AuditEventSubType._(
    value: '126003',
  );

  /// value126010
  static final AuditEventSubType value126010 = AuditEventSubType._(
    value: '126010',
  );

  /// value126011
  static final AuditEventSubType value126011 = AuditEventSubType._(
    value: '126011',
  );

  /// value126020
  static final AuditEventSubType value126020 = AuditEventSubType._(
    value: '126020',
  );

  /// value126021
  static final AuditEventSubType value126021 = AuditEventSubType._(
    value: '126021',
  );

  /// value126022
  static final AuditEventSubType value126022 = AuditEventSubType._(
    value: '126022',
  );

  /// value126030
  static final AuditEventSubType value126030 = AuditEventSubType._(
    value: '126030',
  );

  /// value126031
  static final AuditEventSubType value126031 = AuditEventSubType._(
    value: '126031',
  );

  /// value126032
  static final AuditEventSubType value126032 = AuditEventSubType._(
    value: '126032',
  );

  /// value126033
  static final AuditEventSubType value126033 = AuditEventSubType._(
    value: '126033',
  );

  /// value126034
  static final AuditEventSubType value126034 = AuditEventSubType._(
    value: '126034',
  );

  /// value126035
  static final AuditEventSubType value126035 = AuditEventSubType._(
    value: '126035',
  );

  /// value126036
  static final AuditEventSubType value126036 = AuditEventSubType._(
    value: '126036',
  );

  /// value126037
  static final AuditEventSubType value126037 = AuditEventSubType._(
    value: '126037',
  );

  /// value126038
  static final AuditEventSubType value126038 = AuditEventSubType._(
    value: '126038',
  );

  /// value126039
  static final AuditEventSubType value126039 = AuditEventSubType._(
    value: '126039',
  );

  /// value126040
  static final AuditEventSubType value126040 = AuditEventSubType._(
    value: '126040',
  );

  /// value126050
  static final AuditEventSubType value126050 = AuditEventSubType._(
    value: '126050',
  );

  /// value126051
  static final AuditEventSubType value126051 = AuditEventSubType._(
    value: '126051',
  );

  /// value126052
  static final AuditEventSubType value126052 = AuditEventSubType._(
    value: '126052',
  );

  /// value126060
  static final AuditEventSubType value126060 = AuditEventSubType._(
    value: '126060',
  );

  /// value126061
  static final AuditEventSubType value126061 = AuditEventSubType._(
    value: '126061',
  );

  /// value126062
  static final AuditEventSubType value126062 = AuditEventSubType._(
    value: '126062',
  );

  /// value126063
  static final AuditEventSubType value126063 = AuditEventSubType._(
    value: '126063',
  );

  /// value126064
  static final AuditEventSubType value126064 = AuditEventSubType._(
    value: '126064',
  );

  /// value126065
  static final AuditEventSubType value126065 = AuditEventSubType._(
    value: '126065',
  );

  /// value126066
  static final AuditEventSubType value126066 = AuditEventSubType._(
    value: '126066',
  );

  /// value126067
  static final AuditEventSubType value126067 = AuditEventSubType._(
    value: '126067',
  );

  /// value126070
  static final AuditEventSubType value126070 = AuditEventSubType._(
    value: '126070',
  );

  /// value126071
  static final AuditEventSubType value126071 = AuditEventSubType._(
    value: '126071',
  );

  /// value126072
  static final AuditEventSubType value126072 = AuditEventSubType._(
    value: '126072',
  );

  /// value126073
  static final AuditEventSubType value126073 = AuditEventSubType._(
    value: '126073',
  );

  /// value126074
  static final AuditEventSubType value126074 = AuditEventSubType._(
    value: '126074',
  );

  /// value126075
  static final AuditEventSubType value126075 = AuditEventSubType._(
    value: '126075',
  );

  /// value126080
  static final AuditEventSubType value126080 = AuditEventSubType._(
    value: '126080',
  );

  /// value126081
  static final AuditEventSubType value126081 = AuditEventSubType._(
    value: '126081',
  );

  /// value126100
  static final AuditEventSubType value126100 = AuditEventSubType._(
    value: '126100',
  );

  /// value126200
  static final AuditEventSubType value126200 = AuditEventSubType._(
    value: '126200',
  );

  /// value126201
  static final AuditEventSubType value126201 = AuditEventSubType._(
    value: '126201',
  );

  /// value126202
  static final AuditEventSubType value126202 = AuditEventSubType._(
    value: '126202',
  );

  /// value126203
  static final AuditEventSubType value126203 = AuditEventSubType._(
    value: '126203',
  );

  /// value126220
  static final AuditEventSubType value126220 = AuditEventSubType._(
    value: '126220',
  );

  /// value126300
  static final AuditEventSubType value126300 = AuditEventSubType._(
    value: '126300',
  );

  /// value126301
  static final AuditEventSubType value126301 = AuditEventSubType._(
    value: '126301',
  );

  /// value126302
  static final AuditEventSubType value126302 = AuditEventSubType._(
    value: '126302',
  );

  /// value126303
  static final AuditEventSubType value126303 = AuditEventSubType._(
    value: '126303',
  );

  /// value126310
  static final AuditEventSubType value126310 = AuditEventSubType._(
    value: '126310',
  );

  /// value126311
  static final AuditEventSubType value126311 = AuditEventSubType._(
    value: '126311',
  );

  /// value126312
  static final AuditEventSubType value126312 = AuditEventSubType._(
    value: '126312',
  );

  /// value126313
  static final AuditEventSubType value126313 = AuditEventSubType._(
    value: '126313',
  );

  /// value126314
  static final AuditEventSubType value126314 = AuditEventSubType._(
    value: '126314',
  );

  /// value126320
  static final AuditEventSubType value126320 = AuditEventSubType._(
    value: '126320',
  );

  /// value126321
  static final AuditEventSubType value126321 = AuditEventSubType._(
    value: '126321',
  );

  /// value126322
  static final AuditEventSubType value126322 = AuditEventSubType._(
    value: '126322',
  );

  /// value126330
  static final AuditEventSubType value126330 = AuditEventSubType._(
    value: '126330',
  );

  /// value126331
  static final AuditEventSubType value126331 = AuditEventSubType._(
    value: '126331',
  );

  /// value126340
  static final AuditEventSubType value126340 = AuditEventSubType._(
    value: '126340',
  );

  /// value126341
  static final AuditEventSubType value126341 = AuditEventSubType._(
    value: '126341',
  );

  /// value126342
  static final AuditEventSubType value126342 = AuditEventSubType._(
    value: '126342',
  );

  /// value126343
  static final AuditEventSubType value126343 = AuditEventSubType._(
    value: '126343',
  );

  /// value126344
  static final AuditEventSubType value126344 = AuditEventSubType._(
    value: '126344',
  );

  /// value126350
  static final AuditEventSubType value126350 = AuditEventSubType._(
    value: '126350',
  );

  /// value126351
  static final AuditEventSubType value126351 = AuditEventSubType._(
    value: '126351',
  );

  /// value126352
  static final AuditEventSubType value126352 = AuditEventSubType._(
    value: '126352',
  );

  /// value126353
  static final AuditEventSubType value126353 = AuditEventSubType._(
    value: '126353',
  );

  /// value126360
  static final AuditEventSubType value126360 = AuditEventSubType._(
    value: '126360',
  );

  /// value126361
  static final AuditEventSubType value126361 = AuditEventSubType._(
    value: '126361',
  );

  /// value126362
  static final AuditEventSubType value126362 = AuditEventSubType._(
    value: '126362',
  );

  /// value126363
  static final AuditEventSubType value126363 = AuditEventSubType._(
    value: '126363',
  );

  /// value126364
  static final AuditEventSubType value126364 = AuditEventSubType._(
    value: '126364',
  );

  /// value126370
  static final AuditEventSubType value126370 = AuditEventSubType._(
    value: '126370',
  );

  /// value126371
  static final AuditEventSubType value126371 = AuditEventSubType._(
    value: '126371',
  );

  /// value126372
  static final AuditEventSubType value126372 = AuditEventSubType._(
    value: '126372',
  );

  /// value126373
  static final AuditEventSubType value126373 = AuditEventSubType._(
    value: '126373',
  );

  /// value126374
  static final AuditEventSubType value126374 = AuditEventSubType._(
    value: '126374',
  );

  /// value126375
  static final AuditEventSubType value126375 = AuditEventSubType._(
    value: '126375',
  );

  /// value126376
  static final AuditEventSubType value126376 = AuditEventSubType._(
    value: '126376',
  );

  /// value126377
  static final AuditEventSubType value126377 = AuditEventSubType._(
    value: '126377',
  );

  /// value126380
  static final AuditEventSubType value126380 = AuditEventSubType._(
    value: '126380',
  );

  /// value126390
  static final AuditEventSubType value126390 = AuditEventSubType._(
    value: '126390',
  );

  /// value126391
  static final AuditEventSubType value126391 = AuditEventSubType._(
    value: '126391',
  );

  /// value126392
  static final AuditEventSubType value126392 = AuditEventSubType._(
    value: '126392',
  );

  /// value126393
  static final AuditEventSubType value126393 = AuditEventSubType._(
    value: '126393',
  );

  /// value126394
  static final AuditEventSubType value126394 = AuditEventSubType._(
    value: '126394',
  );

  /// value126400
  static final AuditEventSubType value126400 = AuditEventSubType._(
    value: '126400',
  );

  /// value126401
  static final AuditEventSubType value126401 = AuditEventSubType._(
    value: '126401',
  );

  /// value126402
  static final AuditEventSubType value126402 = AuditEventSubType._(
    value: '126402',
  );

  /// value126403
  static final AuditEventSubType value126403 = AuditEventSubType._(
    value: '126403',
  );

  /// value126404
  static final AuditEventSubType value126404 = AuditEventSubType._(
    value: '126404',
  );

  /// value126410
  static final AuditEventSubType value126410 = AuditEventSubType._(
    value: '126410',
  );

  /// value126411
  static final AuditEventSubType value126411 = AuditEventSubType._(
    value: '126411',
  );

  /// value126412
  static final AuditEventSubType value126412 = AuditEventSubType._(
    value: '126412',
  );

  /// value126413
  static final AuditEventSubType value126413 = AuditEventSubType._(
    value: '126413',
  );

  /// value126500
  static final AuditEventSubType value126500 = AuditEventSubType._(
    value: '126500',
  );

  /// value126501
  static final AuditEventSubType value126501 = AuditEventSubType._(
    value: '126501',
  );

  /// value126502
  static final AuditEventSubType value126502 = AuditEventSubType._(
    value: '126502',
  );

  /// value126503
  static final AuditEventSubType value126503 = AuditEventSubType._(
    value: '126503',
  );

  /// value126510
  static final AuditEventSubType value126510 = AuditEventSubType._(
    value: '126510',
  );

  /// value126511
  static final AuditEventSubType value126511 = AuditEventSubType._(
    value: '126511',
  );

  /// value126512
  static final AuditEventSubType value126512 = AuditEventSubType._(
    value: '126512',
  );

  /// value126513
  static final AuditEventSubType value126513 = AuditEventSubType._(
    value: '126513',
  );

  /// value126514
  static final AuditEventSubType value126514 = AuditEventSubType._(
    value: '126514',
  );

  /// value126515
  static final AuditEventSubType value126515 = AuditEventSubType._(
    value: '126515',
  );

  /// value126516
  static final AuditEventSubType value126516 = AuditEventSubType._(
    value: '126516',
  );

  /// value126517
  static final AuditEventSubType value126517 = AuditEventSubType._(
    value: '126517',
  );

  /// value126518
  static final AuditEventSubType value126518 = AuditEventSubType._(
    value: '126518',
  );

  /// value126519
  static final AuditEventSubType value126519 = AuditEventSubType._(
    value: '126519',
  );

  /// value126520
  static final AuditEventSubType value126520 = AuditEventSubType._(
    value: '126520',
  );

  /// value126600
  static final AuditEventSubType value126600 = AuditEventSubType._(
    value: '126600',
  );

  /// value126601
  static final AuditEventSubType value126601 = AuditEventSubType._(
    value: '126601',
  );

  /// value126602
  static final AuditEventSubType value126602 = AuditEventSubType._(
    value: '126602',
  );

  /// value126603
  static final AuditEventSubType value126603 = AuditEventSubType._(
    value: '126603',
  );

  /// value126604
  static final AuditEventSubType value126604 = AuditEventSubType._(
    value: '126604',
  );

  /// value126605
  static final AuditEventSubType value126605 = AuditEventSubType._(
    value: '126605',
  );

  /// value126606
  static final AuditEventSubType value126606 = AuditEventSubType._(
    value: '126606',
  );

  /// value126700
  static final AuditEventSubType value126700 = AuditEventSubType._(
    value: '126700',
  );

  /// value126701
  static final AuditEventSubType value126701 = AuditEventSubType._(
    value: '126701',
  );

  /// value126702
  static final AuditEventSubType value126702 = AuditEventSubType._(
    value: '126702',
  );

  /// value126703
  static final AuditEventSubType value126703 = AuditEventSubType._(
    value: '126703',
  );

  /// value126704
  static final AuditEventSubType value126704 = AuditEventSubType._(
    value: '126704',
  );

  /// value126705
  static final AuditEventSubType value126705 = AuditEventSubType._(
    value: '126705',
  );

  /// value126706
  static final AuditEventSubType value126706 = AuditEventSubType._(
    value: '126706',
  );

  /// value126707
  static final AuditEventSubType value126707 = AuditEventSubType._(
    value: '126707',
  );

  /// value126708
  static final AuditEventSubType value126708 = AuditEventSubType._(
    value: '126708',
  );

  /// value126709
  static final AuditEventSubType value126709 = AuditEventSubType._(
    value: '126709',
  );

  /// value126710
  static final AuditEventSubType value126710 = AuditEventSubType._(
    value: '126710',
  );

  /// value126711
  static final AuditEventSubType value126711 = AuditEventSubType._(
    value: '126711',
  );

  /// value126712
  static final AuditEventSubType value126712 = AuditEventSubType._(
    value: '126712',
  );

  /// value126713
  static final AuditEventSubType value126713 = AuditEventSubType._(
    value: '126713',
  );

  /// value126714
  static final AuditEventSubType value126714 = AuditEventSubType._(
    value: '126714',
  );

  /// value126715
  static final AuditEventSubType value126715 = AuditEventSubType._(
    value: '126715',
  );

  /// value126716
  static final AuditEventSubType value126716 = AuditEventSubType._(
    value: '126716',
  );

  /// value126801
  static final AuditEventSubType value126801 = AuditEventSubType._(
    value: '126801',
  );

  /// value126802
  static final AuditEventSubType value126802 = AuditEventSubType._(
    value: '126802',
  );

  /// value126803
  static final AuditEventSubType value126803 = AuditEventSubType._(
    value: '126803',
  );

  /// value126804
  static final AuditEventSubType value126804 = AuditEventSubType._(
    value: '126804',
  );

  /// value126805
  static final AuditEventSubType value126805 = AuditEventSubType._(
    value: '126805',
  );

  /// value126806
  static final AuditEventSubType value126806 = AuditEventSubType._(
    value: '126806',
  );

  /// value126807
  static final AuditEventSubType value126807 = AuditEventSubType._(
    value: '126807',
  );

  /// value126808
  static final AuditEventSubType value126808 = AuditEventSubType._(
    value: '126808',
  );

  /// value126809
  static final AuditEventSubType value126809 = AuditEventSubType._(
    value: '126809',
  );

  /// value126810
  static final AuditEventSubType value126810 = AuditEventSubType._(
    value: '126810',
  );

  /// value126811
  static final AuditEventSubType value126811 = AuditEventSubType._(
    value: '126811',
  );

  /// read
  static final AuditEventSubType read = AuditEventSubType._(
    value: 'read',
  );

  /// vread
  static final AuditEventSubType vread = AuditEventSubType._(
    value: 'vread',
  );

  /// update
  static final AuditEventSubType update = AuditEventSubType._(
    value: 'update',
  );

  /// patch
  static final AuditEventSubType patch = AuditEventSubType._(
    value: 'patch',
  );

  /// delete
  static final AuditEventSubType delete = AuditEventSubType._(
    value: 'delete',
  );

  /// history
  static final AuditEventSubType history = AuditEventSubType._(
    value: 'history',
  );

  /// history_instance
  static final AuditEventSubType history_instance = AuditEventSubType._(
    value: 'history-instance',
  );

  /// history_type
  static final AuditEventSubType history_type = AuditEventSubType._(
    value: 'history-type',
  );

  /// history_system
  static final AuditEventSubType history_system = AuditEventSubType._(
    value: 'history-system',
  );

  /// create
  static final AuditEventSubType create = AuditEventSubType._(
    value: 'create',
  );

  /// search
  static final AuditEventSubType search = AuditEventSubType._(
    value: 'search',
  );

  /// search_type
  static final AuditEventSubType search_type = AuditEventSubType._(
    value: 'search-type',
  );

  /// search_system
  static final AuditEventSubType search_system = AuditEventSubType._(
    value: 'search-system',
  );

  /// capabilities
  static final AuditEventSubType capabilities = AuditEventSubType._(
    value: 'capabilities',
  );

  /// transaction
  static final AuditEventSubType transaction = AuditEventSubType._(
    value: 'transaction',
  );

  /// batch
  static final AuditEventSubType batch = AuditEventSubType._(
    value: 'batch',
  );

  /// operation
  static final AuditEventSubType operation = AuditEventSubType._(
    value: 'operation',
  );

  /// For instances where an Element is present but not value

  static final AuditEventSubType elementOnly = AuditEventSubType._(value: '');

  /// List of all enum-like values
  static final List<AuditEventSubType> values = [
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
    read,
    vread,
    update,
    patch,
    delete,
    history,
    history_instance,
    history_type,
    history_system,
    create,
    search,
    search_type,
    search_system,
    capabilities,
    transaction,
    batch,
    operation,
  ];

  /// Clones the current instance
  @override
  AuditEventSubType clone() => AuditEventSubType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AuditEventSubType withElement(Element? newElement) {
    return AuditEventSubType._(value: value, element: newElement);
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
  AuditEventSubType copyWith({
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
    return AuditEventSubType._(
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
