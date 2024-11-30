// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// More detailed code concerning the type of the audit event - defined by DICOM with some FHIR specific additions.
class AuditEventSubType {
  // Private constructor for internal use (like enum)
  AuditEventSubType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AuditEventSubType values
  /// ARCHIVE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType ARCHIVE = AuditEventSubType._(
    'ARCHIVE',
  );

  /// AR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType AR = AuditEventSubType._(
    'AR',
  );

  /// AS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType AS = AuditEventSubType._(
    'AS',
  );

  /// AU
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType AU = AuditEventSubType._(
    'AU',
  );

  /// BDUS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType BDUS = AuditEventSubType._(
    'BDUS',
  );

  /// BI
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType BI = AuditEventSubType._(
    'BI',
  );

  /// BMD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType BMD = AuditEventSubType._(
    'BMD',
  );

  /// CAD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType CAD = AuditEventSubType._(
    'CAD',
  );

  /// CAPTURE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType CAPTURE = AuditEventSubType._(
    'CAPTURE',
  );

  /// CD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType CD = AuditEventSubType._(
    'CD',
  );

  /// CF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType CF = AuditEventSubType._(
    'CF',
  );

  /// COMP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType COMP = AuditEventSubType._(
    'COMP',
  );

  /// CP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType CP = AuditEventSubType._(
    'CP',
  );

  /// CR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType CR = AuditEventSubType._(
    'CR',
  );

  /// CS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType CS = AuditEventSubType._(
    'CS',
  );

  /// CT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType CT = AuditEventSubType._(
    'CT',
  );

  /// DD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType DD = AuditEventSubType._(
    'DD',
  );

  /// DF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType DF = AuditEventSubType._(
    'DF',
  );

  /// DG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType DG = AuditEventSubType._(
    'DG',
  );

  /// DM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType DM = AuditEventSubType._(
    'DM',
  );

  /// DOCD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType DOCD = AuditEventSubType._(
    'DOCD',
  );

  /// DS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType DS = AuditEventSubType._(
    'DS',
  );

  /// DSS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType DSS = AuditEventSubType._(
    'DSS',
  );

  /// DX
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType DX = AuditEventSubType._(
    'DX',
  );

  /// EC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType EC = AuditEventSubType._(
    'EC',
  );

  /// ECG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType ECG = AuditEventSubType._(
    'ECG',
  );

  /// EPS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType EPS = AuditEventSubType._(
    'EPS',
  );

  /// ES
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType ES = AuditEventSubType._(
    'ES',
  );

  /// F
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType F = AuditEventSubType._(
    'F',
  );

  /// FA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType FA = AuditEventSubType._(
    'FA',
  );

  /// FC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType FC = AuditEventSubType._(
    'FC',
  );

  /// FILMD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType FILMD = AuditEventSubType._(
    'FILMD',
  );

  /// FP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType FP = AuditEventSubType._(
    'FP',
  );

  /// FS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType FS = AuditEventSubType._(
    'FS',
  );

  /// GM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType GM = AuditEventSubType._(
    'GM',
  );

  /// H
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType H = AuditEventSubType._(
    'H',
  );

  /// HC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType HC = AuditEventSubType._(
    'HC',
  );

  /// HD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType HD = AuditEventSubType._(
    'HD',
  );

  /// IO
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType IO = AuditEventSubType._(
    'IO',
  );

  /// IVOCT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType IVOCT = AuditEventSubType._(
    'IVOCT',
  );

  /// IVUS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType IVUS = AuditEventSubType._(
    'IVUS',
  );

  /// KER
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType KER = AuditEventSubType._(
    'KER',
  );

  /// KO
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType KO = AuditEventSubType._(
    'KO',
  );

  /// LEN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType LEN = AuditEventSubType._(
    'LEN',
  );

  /// LOG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType LOG = AuditEventSubType._(
    'LOG',
  );

  /// LP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType LP = AuditEventSubType._(
    'LP',
  );

  /// LS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType LS = AuditEventSubType._(
    'LS',
  );

  /// M
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType M = AuditEventSubType._(
    'M',
  );

  /// MA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType MA = AuditEventSubType._(
    'MA',
  );

  /// MC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType MC = AuditEventSubType._(
    'MC',
  );

  /// MCD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType MCD = AuditEventSubType._(
    'MCD',
  );

  /// MEDIM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType MEDIM = AuditEventSubType._(
    'MEDIM',
  );

  /// MG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType MG = AuditEventSubType._(
    'MG',
  );

  /// MP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType MP = AuditEventSubType._(
    'MP',
  );

  /// MR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType MR = AuditEventSubType._(
    'MR',
  );

  /// MS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType MS = AuditEventSubType._(
    'MS',
  );

  /// NEARLINE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType NEARLINE = AuditEventSubType._(
    'NEARLINE',
  );

  /// NM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType NM = AuditEventSubType._(
    'NM',
  );

  /// OAM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType OAM = AuditEventSubType._(
    'OAM',
  );

  /// OCT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType OCT = AuditEventSubType._(
    'OCT',
  );

  /// OFFLINE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType OFFLINE = AuditEventSubType._(
    'OFFLINE',
  );

  /// ONLINE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType ONLINE = AuditEventSubType._(
    'ONLINE',
  );

  /// OP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType OP = AuditEventSubType._(
    'OP',
  );

  /// OPM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType OPM = AuditEventSubType._(
    'OPM',
  );

  /// OPR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType OPR = AuditEventSubType._(
    'OPR',
  );

  /// OPT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType OPT = AuditEventSubType._(
    'OPT',
  );

  /// OPV
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType OPV = AuditEventSubType._(
    'OPV',
  );

  /// OSS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType OSS = AuditEventSubType._(
    'OSS',
  );

  /// OT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType OT = AuditEventSubType._(
    'OT',
  );

  /// PR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType PR = AuditEventSubType._(
    'PR',
  );

  /// PRINT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType PRINT = AuditEventSubType._(
    'PRINT',
  );

  /// PT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType PT = AuditEventSubType._(
    'PT',
  );

  /// PX
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType PX = AuditEventSubType._(
    'PX',
  );

  /// REG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType REG = AuditEventSubType._(
    'REG',
  );

  /// RF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType RF = AuditEventSubType._(
    'RF',
  );

  /// RG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType RG = AuditEventSubType._(
    'RG',
  );

  /// RT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType RT = AuditEventSubType._(
    'RT',
  );

  /// RTDOSE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType RTDOSE = AuditEventSubType._(
    'RTDOSE',
  );

  /// RTIMAGE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType RTIMAGE = AuditEventSubType._(
    'RTIMAGE',
  );

  /// RTPLAN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType RTPLAN = AuditEventSubType._(
    'RTPLAN',
  );

  /// RTRECORD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType RTRECORD = AuditEventSubType._(
    'RTRECORD',
  );

  /// RTSTRUCT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType RTSTRUCT = AuditEventSubType._(
    'RTSTRUCT',
  );

  /// SEG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType SEG = AuditEventSubType._(
    'SEG',
  );

  /// SM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType SM = AuditEventSubType._(
    'SM',
  );

  /// SMR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType SMR = AuditEventSubType._(
    'SMR',
  );

  /// SR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType SR = AuditEventSubType._(
    'SR',
  );

  /// SRF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType SRF = AuditEventSubType._(
    'SRF',
  );

  /// ST
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType ST = AuditEventSubType._(
    'ST',
  );

  /// TG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType TG = AuditEventSubType._(
    'TG',
  );

  /// U
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType U = AuditEventSubType._(
    'U',
  );

  /// UNAVAILABLE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType UNAVAILABLE = AuditEventSubType._(
    'UNAVAILABLE',
  );

  /// US
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType US = AuditEventSubType._(
    'US',
  );

  /// VA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType VA = AuditEventSubType._(
    'VA',
  );

  /// VF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType VF = AuditEventSubType._(
    'VF',
  );

  /// VIDD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType VIDD = AuditEventSubType._(
    'VIDD',
  );

  /// WSD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType WSD = AuditEventSubType._(
    'WSD',
  );

  /// XA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType XA = AuditEventSubType._(
    'XA',
  );

  /// XC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType XC = AuditEventSubType._(
    'XC',
  );

  /// value109001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109001 = AuditEventSubType._(
    '109001',
  );

  /// value109002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109002 = AuditEventSubType._(
    '109002',
  );

  /// value109003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109003 = AuditEventSubType._(
    '109003',
  );

  /// value109004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109004 = AuditEventSubType._(
    '109004',
  );

  /// value109005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109005 = AuditEventSubType._(
    '109005',
  );

  /// value109006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109006 = AuditEventSubType._(
    '109006',
  );

  /// value109007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109007 = AuditEventSubType._(
    '109007',
  );

  /// value109008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109008 = AuditEventSubType._(
    '109008',
  );

  /// value109009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109009 = AuditEventSubType._(
    '109009',
  );

  /// value109010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109010 = AuditEventSubType._(
    '109010',
  );

  /// value109011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109011 = AuditEventSubType._(
    '109011',
  );

  /// value109012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109012 = AuditEventSubType._(
    '109012',
  );

  /// value109013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109013 = AuditEventSubType._(
    '109013',
  );

  /// value109014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109014 = AuditEventSubType._(
    '109014',
  );

  /// value109015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109015 = AuditEventSubType._(
    '109015',
  );

  /// value109016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109016 = AuditEventSubType._(
    '109016',
  );

  /// value109017
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109017 = AuditEventSubType._(
    '109017',
  );

  /// value109018
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109018 = AuditEventSubType._(
    '109018',
  );

  /// value109019
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109019 = AuditEventSubType._(
    '109019',
  );

  /// value109020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109020 = AuditEventSubType._(
    '109020',
  );

  /// value109021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109021 = AuditEventSubType._(
    '109021',
  );

  /// value109022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109022 = AuditEventSubType._(
    '109022',
  );

  /// value109023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109023 = AuditEventSubType._(
    '109023',
  );

  /// value109024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109024 = AuditEventSubType._(
    '109024',
  );

  /// value109025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109025 = AuditEventSubType._(
    '109025',
  );

  /// value109026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109026 = AuditEventSubType._(
    '109026',
  );

  /// value109027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109027 = AuditEventSubType._(
    '109027',
  );

  /// value109028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109028 = AuditEventSubType._(
    '109028',
  );

  /// value109029
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109029 = AuditEventSubType._(
    '109029',
  );

  /// value109030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109030 = AuditEventSubType._(
    '109030',
  );

  /// value109031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109031 = AuditEventSubType._(
    '109031',
  );

  /// value109032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109032 = AuditEventSubType._(
    '109032',
  );

  /// value109033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109033 = AuditEventSubType._(
    '109033',
  );

  /// value109034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109034 = AuditEventSubType._(
    '109034',
  );

  /// value109035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109035 = AuditEventSubType._(
    '109035',
  );

  /// value109036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109036 = AuditEventSubType._(
    '109036',
  );

  /// value109037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109037 = AuditEventSubType._(
    '109037',
  );

  /// value109038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109038 = AuditEventSubType._(
    '109038',
  );

  /// value109039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109039 = AuditEventSubType._(
    '109039',
  );

  /// value109040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109040 = AuditEventSubType._(
    '109040',
  );

  /// value109041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109041 = AuditEventSubType._(
    '109041',
  );

  /// value109042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109042 = AuditEventSubType._(
    '109042',
  );

  /// value109043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109043 = AuditEventSubType._(
    '109043',
  );

  /// value109044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109044 = AuditEventSubType._(
    '109044',
  );

  /// value109045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109045 = AuditEventSubType._(
    '109045',
  );

  /// value109046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109046 = AuditEventSubType._(
    '109046',
  );

  /// value109047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109047 = AuditEventSubType._(
    '109047',
  );

  /// value109048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109048 = AuditEventSubType._(
    '109048',
  );

  /// value109049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109049 = AuditEventSubType._(
    '109049',
  );

  /// value109050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109050 = AuditEventSubType._(
    '109050',
  );

  /// value109051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109051 = AuditEventSubType._(
    '109051',
  );

  /// value109052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109052 = AuditEventSubType._(
    '109052',
  );

  /// value109053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109053 = AuditEventSubType._(
    '109053',
  );

  /// value109054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109054 = AuditEventSubType._(
    '109054',
  );

  /// value109055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109055 = AuditEventSubType._(
    '109055',
  );

  /// value109056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109056 = AuditEventSubType._(
    '109056',
  );

  /// value109057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109057 = AuditEventSubType._(
    '109057',
  );

  /// value109058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109058 = AuditEventSubType._(
    '109058',
  );

  /// value109059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109059 = AuditEventSubType._(
    '109059',
  );

  /// value109060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109060 = AuditEventSubType._(
    '109060',
  );

  /// value109061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109061 = AuditEventSubType._(
    '109061',
  );

  /// value109063
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109063 = AuditEventSubType._(
    '109063',
  );

  /// value109070
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109070 = AuditEventSubType._(
    '109070',
  );

  /// value109071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109071 = AuditEventSubType._(
    '109071',
  );

  /// value109072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109072 = AuditEventSubType._(
    '109072',
  );

  /// value109073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109073 = AuditEventSubType._(
    '109073',
  );

  /// value109080
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109080 = AuditEventSubType._(
    '109080',
  );

  /// value109081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109081 = AuditEventSubType._(
    '109081',
  );

  /// value109082
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109082 = AuditEventSubType._(
    '109082',
  );

  /// value109083
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109083 = AuditEventSubType._(
    '109083',
  );

  /// value109091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109091 = AuditEventSubType._(
    '109091',
  );

  /// value109092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109092 = AuditEventSubType._(
    '109092',
  );

  /// value109093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109093 = AuditEventSubType._(
    '109093',
  );

  /// value109094
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109094 = AuditEventSubType._(
    '109094',
  );

  /// value109095
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109095 = AuditEventSubType._(
    '109095',
  );

  /// value109096
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109096 = AuditEventSubType._(
    '109096',
  );

  /// value109101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109101 = AuditEventSubType._(
    '109101',
  );

  /// value109102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109102 = AuditEventSubType._(
    '109102',
  );

  /// value109103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109103 = AuditEventSubType._(
    '109103',
  );

  /// value109104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109104 = AuditEventSubType._(
    '109104',
  );

  /// value109105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109105 = AuditEventSubType._(
    '109105',
  );

  /// value109106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109106 = AuditEventSubType._(
    '109106',
  );

  /// value109110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109110 = AuditEventSubType._(
    '109110',
  );

  /// value109111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109111 = AuditEventSubType._(
    '109111',
  );

  /// value109112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109112 = AuditEventSubType._(
    '109112',
  );

  /// value109113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109113 = AuditEventSubType._(
    '109113',
  );

  /// value109114
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109114 = AuditEventSubType._(
    '109114',
  );

  /// value109115
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109115 = AuditEventSubType._(
    '109115',
  );

  /// value109116
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109116 = AuditEventSubType._(
    '109116',
  );

  /// value109117
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109117 = AuditEventSubType._(
    '109117',
  );

  /// value109120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109120 = AuditEventSubType._(
    '109120',
  );

  /// value109121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109121 = AuditEventSubType._(
    '109121',
  );

  /// value109122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109122 = AuditEventSubType._(
    '109122',
  );

  /// value109123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109123 = AuditEventSubType._(
    '109123',
  );

  /// value109124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109124 = AuditEventSubType._(
    '109124',
  );

  /// value109125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109125 = AuditEventSubType._(
    '109125',
  );

  /// value109132
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109132 = AuditEventSubType._(
    '109132',
  );

  /// value109133
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109133 = AuditEventSubType._(
    '109133',
  );

  /// value109134
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109134 = AuditEventSubType._(
    '109134',
  );

  /// value109135
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109135 = AuditEventSubType._(
    '109135',
  );

  /// value109136
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109136 = AuditEventSubType._(
    '109136',
  );

  /// value109200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109200 = AuditEventSubType._(
    '109200',
  );

  /// value109201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109201 = AuditEventSubType._(
    '109201',
  );

  /// value109202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109202 = AuditEventSubType._(
    '109202',
  );

  /// value109203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109203 = AuditEventSubType._(
    '109203',
  );

  /// value109204
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109204 = AuditEventSubType._(
    '109204',
  );

  /// value109205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109205 = AuditEventSubType._(
    '109205',
  );

  /// value109206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109206 = AuditEventSubType._(
    '109206',
  );

  /// value109207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109207 = AuditEventSubType._(
    '109207',
  );

  /// value109208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109208 = AuditEventSubType._(
    '109208',
  );

  /// value109209
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109209 = AuditEventSubType._(
    '109209',
  );

  /// value109210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109210 = AuditEventSubType._(
    '109210',
  );

  /// value109211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109211 = AuditEventSubType._(
    '109211',
  );

  /// value109212
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109212 = AuditEventSubType._(
    '109212',
  );

  /// value109213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109213 = AuditEventSubType._(
    '109213',
  );

  /// value109214
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109214 = AuditEventSubType._(
    '109214',
  );

  /// value109215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109215 = AuditEventSubType._(
    '109215',
  );

  /// value109216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109216 = AuditEventSubType._(
    '109216',
  );

  /// value109217
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109217 = AuditEventSubType._(
    '109217',
  );

  /// value109218
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109218 = AuditEventSubType._(
    '109218',
  );

  /// value109219
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109219 = AuditEventSubType._(
    '109219',
  );

  /// value109220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109220 = AuditEventSubType._(
    '109220',
  );

  /// value109221
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109221 = AuditEventSubType._(
    '109221',
  );

  /// value109222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109222 = AuditEventSubType._(
    '109222',
  );

  /// value109701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109701 = AuditEventSubType._(
    '109701',
  );

  /// value109702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109702 = AuditEventSubType._(
    '109702',
  );

  /// value109703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109703 = AuditEventSubType._(
    '109703',
  );

  /// value109704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109704 = AuditEventSubType._(
    '109704',
  );

  /// value109705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109705 = AuditEventSubType._(
    '109705',
  );

  /// value109706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109706 = AuditEventSubType._(
    '109706',
  );

  /// value109707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109707 = AuditEventSubType._(
    '109707',
  );

  /// value109708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109708 = AuditEventSubType._(
    '109708',
  );

  /// value109709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109709 = AuditEventSubType._(
    '109709',
  );

  /// value109710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109710 = AuditEventSubType._(
    '109710',
  );

  /// value109801
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109801 = AuditEventSubType._(
    '109801',
  );

  /// value109802
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109802 = AuditEventSubType._(
    '109802',
  );

  /// value109803
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109803 = AuditEventSubType._(
    '109803',
  );

  /// value109804
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109804 = AuditEventSubType._(
    '109804',
  );

  /// value109805
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109805 = AuditEventSubType._(
    '109805',
  );

  /// value109806
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109806 = AuditEventSubType._(
    '109806',
  );

  /// value109807
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109807 = AuditEventSubType._(
    '109807',
  );

  /// value109808
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109808 = AuditEventSubType._(
    '109808',
  );

  /// value109809
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109809 = AuditEventSubType._(
    '109809',
  );

  /// value109810
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109810 = AuditEventSubType._(
    '109810',
  );

  /// value109811
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109811 = AuditEventSubType._(
    '109811',
  );

  /// value109812
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109812 = AuditEventSubType._(
    '109812',
  );

  /// value109813
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109813 = AuditEventSubType._(
    '109813',
  );

  /// value109814
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109814 = AuditEventSubType._(
    '109814',
  );

  /// value109815
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109815 = AuditEventSubType._(
    '109815',
  );

  /// value109816
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109816 = AuditEventSubType._(
    '109816',
  );

  /// value109817
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109817 = AuditEventSubType._(
    '109817',
  );

  /// value109818
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109818 = AuditEventSubType._(
    '109818',
  );

  /// value109819
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109819 = AuditEventSubType._(
    '109819',
  );

  /// value109820
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109820 = AuditEventSubType._(
    '109820',
  );

  /// value109821
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109821 = AuditEventSubType._(
    '109821',
  );

  /// value109822
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109822 = AuditEventSubType._(
    '109822',
  );

  /// value109823
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109823 = AuditEventSubType._(
    '109823',
  );

  /// value109824
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109824 = AuditEventSubType._(
    '109824',
  );

  /// value109825
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109825 = AuditEventSubType._(
    '109825',
  );

  /// value109826
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109826 = AuditEventSubType._(
    '109826',
  );

  /// value109827
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109827 = AuditEventSubType._(
    '109827',
  );

  /// value109828
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109828 = AuditEventSubType._(
    '109828',
  );

  /// value109829
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109829 = AuditEventSubType._(
    '109829',
  );

  /// value109830
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109830 = AuditEventSubType._(
    '109830',
  );

  /// value109831
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109831 = AuditEventSubType._(
    '109831',
  );

  /// value109832
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109832 = AuditEventSubType._(
    '109832',
  );

  /// value109833
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109833 = AuditEventSubType._(
    '109833',
  );

  /// value109834
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109834 = AuditEventSubType._(
    '109834',
  );

  /// value109835
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109835 = AuditEventSubType._(
    '109835',
  );

  /// value109836
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109836 = AuditEventSubType._(
    '109836',
  );

  /// value109837
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109837 = AuditEventSubType._(
    '109837',
  );

  /// value109838
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109838 = AuditEventSubType._(
    '109838',
  );

  /// value109839
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109839 = AuditEventSubType._(
    '109839',
  );

  /// value109840
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109840 = AuditEventSubType._(
    '109840',
  );

  /// value109841
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109841 = AuditEventSubType._(
    '109841',
  );

  /// value109842
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109842 = AuditEventSubType._(
    '109842',
  );

  /// value109843
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109843 = AuditEventSubType._(
    '109843',
  );

  /// value109844
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109844 = AuditEventSubType._(
    '109844',
  );

  /// value109845
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109845 = AuditEventSubType._(
    '109845',
  );

  /// value109846
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109846 = AuditEventSubType._(
    '109846',
  );

  /// value109847
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109847 = AuditEventSubType._(
    '109847',
  );

  /// value109848
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109848 = AuditEventSubType._(
    '109848',
  );

  /// value109849
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109849 = AuditEventSubType._(
    '109849',
  );

  /// value109850
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109850 = AuditEventSubType._(
    '109850',
  );

  /// value109851
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109851 = AuditEventSubType._(
    '109851',
  );

  /// value109852
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109852 = AuditEventSubType._(
    '109852',
  );

  /// value109853
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109853 = AuditEventSubType._(
    '109853',
  );

  /// value109854
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109854 = AuditEventSubType._(
    '109854',
  );

  /// value109855
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109855 = AuditEventSubType._(
    '109855',
  );

  /// value109856
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109856 = AuditEventSubType._(
    '109856',
  );

  /// value109857
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109857 = AuditEventSubType._(
    '109857',
  );

  /// value109858
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109858 = AuditEventSubType._(
    '109858',
  );

  /// value109859
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109859 = AuditEventSubType._(
    '109859',
  );

  /// value109860
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109860 = AuditEventSubType._(
    '109860',
  );

  /// value109861
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109861 = AuditEventSubType._(
    '109861',
  );

  /// value109862
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109862 = AuditEventSubType._(
    '109862',
  );

  /// value109863
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109863 = AuditEventSubType._(
    '109863',
  );

  /// value109864
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109864 = AuditEventSubType._(
    '109864',
  );

  /// value109865
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109865 = AuditEventSubType._(
    '109865',
  );

  /// value109866
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109866 = AuditEventSubType._(
    '109866',
  );

  /// value109867
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109867 = AuditEventSubType._(
    '109867',
  );

  /// value109868
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109868 = AuditEventSubType._(
    '109868',
  );

  /// value109869
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109869 = AuditEventSubType._(
    '109869',
  );

  /// value109870
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109870 = AuditEventSubType._(
    '109870',
  );

  /// value109871
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109871 = AuditEventSubType._(
    '109871',
  );

  /// value109872
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109872 = AuditEventSubType._(
    '109872',
  );

  /// value109873
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109873 = AuditEventSubType._(
    '109873',
  );

  /// value109874
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109874 = AuditEventSubType._(
    '109874',
  );

  /// value109875
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109875 = AuditEventSubType._(
    '109875',
  );

  /// value109876
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109876 = AuditEventSubType._(
    '109876',
  );

  /// value109877
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109877 = AuditEventSubType._(
    '109877',
  );

  /// value109878
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109878 = AuditEventSubType._(
    '109878',
  );

  /// value109879
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109879 = AuditEventSubType._(
    '109879',
  );

  /// value109880
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109880 = AuditEventSubType._(
    '109880',
  );

  /// value109881
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109881 = AuditEventSubType._(
    '109881',
  );

  /// value109901
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109901 = AuditEventSubType._(
    '109901',
  );

  /// value109902
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109902 = AuditEventSubType._(
    '109902',
  );

  /// value109903
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109903 = AuditEventSubType._(
    '109903',
  );

  /// value109904
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109904 = AuditEventSubType._(
    '109904',
  );

  /// value109905
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109905 = AuditEventSubType._(
    '109905',
  );

  /// value109906
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109906 = AuditEventSubType._(
    '109906',
  );

  /// value109907
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109907 = AuditEventSubType._(
    '109907',
  );

  /// value109908
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109908 = AuditEventSubType._(
    '109908',
  );

  /// value109909
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109909 = AuditEventSubType._(
    '109909',
  );

  /// value109910
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109910 = AuditEventSubType._(
    '109910',
  );

  /// value109911
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109911 = AuditEventSubType._(
    '109911',
  );

  /// value109912
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109912 = AuditEventSubType._(
    '109912',
  );

  /// value109913
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109913 = AuditEventSubType._(
    '109913',
  );

  /// value109914
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109914 = AuditEventSubType._(
    '109914',
  );

  /// value109915
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109915 = AuditEventSubType._(
    '109915',
  );

  /// value109916
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109916 = AuditEventSubType._(
    '109916',
  );

  /// value109917
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109917 = AuditEventSubType._(
    '109917',
  );

  /// value109918
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109918 = AuditEventSubType._(
    '109918',
  );

  /// value109919
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109919 = AuditEventSubType._(
    '109919',
  );

  /// value109920
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109920 = AuditEventSubType._(
    '109920',
  );

  /// value109921
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109921 = AuditEventSubType._(
    '109921',
  );

  /// value109931
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109931 = AuditEventSubType._(
    '109931',
  );

  /// value109932
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109932 = AuditEventSubType._(
    '109932',
  );

  /// value109933
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109933 = AuditEventSubType._(
    '109933',
  );

  /// value109941
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109941 = AuditEventSubType._(
    '109941',
  );

  /// value109943
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109943 = AuditEventSubType._(
    '109943',
  );

  /// value109991
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109991 = AuditEventSubType._(
    '109991',
  );

  /// value109992
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109992 = AuditEventSubType._(
    '109992',
  );

  /// value109993
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109993 = AuditEventSubType._(
    '109993',
  );

  /// value109994
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109994 = AuditEventSubType._(
    '109994',
  );

  /// value109995
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109995 = AuditEventSubType._(
    '109995',
  );

  /// value109996
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109996 = AuditEventSubType._(
    '109996',
  );

  /// value109997
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109997 = AuditEventSubType._(
    '109997',
  );

  /// value109998
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109998 = AuditEventSubType._(
    '109998',
  );

  /// value109999
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value109999 = AuditEventSubType._(
    '109999',
  );

  /// value110001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110001 = AuditEventSubType._(
    '110001',
  );

  /// value110002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110002 = AuditEventSubType._(
    '110002',
  );

  /// value110003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110003 = AuditEventSubType._(
    '110003',
  );

  /// value110004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110004 = AuditEventSubType._(
    '110004',
  );

  /// value110005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110005 = AuditEventSubType._(
    '110005',
  );

  /// value110006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110006 = AuditEventSubType._(
    '110006',
  );

  /// value110007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110007 = AuditEventSubType._(
    '110007',
  );

  /// value110008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110008 = AuditEventSubType._(
    '110008',
  );

  /// value110009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110009 = AuditEventSubType._(
    '110009',
  );

  /// value110010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110010 = AuditEventSubType._(
    '110010',
  );

  /// value110011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110011 = AuditEventSubType._(
    '110011',
  );

  /// value110012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110012 = AuditEventSubType._(
    '110012',
  );

  /// value110013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110013 = AuditEventSubType._(
    '110013',
  );

  /// value110020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110020 = AuditEventSubType._(
    '110020',
  );

  /// value110021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110021 = AuditEventSubType._(
    '110021',
  );

  /// value110022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110022 = AuditEventSubType._(
    '110022',
  );

  /// value110023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110023 = AuditEventSubType._(
    '110023',
  );

  /// value110024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110024 = AuditEventSubType._(
    '110024',
  );

  /// value110025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110025 = AuditEventSubType._(
    '110025',
  );

  /// value110026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110026 = AuditEventSubType._(
    '110026',
  );

  /// value110027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110027 = AuditEventSubType._(
    '110027',
  );

  /// value110028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110028 = AuditEventSubType._(
    '110028',
  );

  /// value110030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110030 = AuditEventSubType._(
    '110030',
  );

  /// value110031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110031 = AuditEventSubType._(
    '110031',
  );

  /// value110032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110032 = AuditEventSubType._(
    '110032',
  );

  /// value110033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110033 = AuditEventSubType._(
    '110033',
  );

  /// value110034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110034 = AuditEventSubType._(
    '110034',
  );

  /// value110035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110035 = AuditEventSubType._(
    '110035',
  );

  /// value110036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110036 = AuditEventSubType._(
    '110036',
  );

  /// value110037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110037 = AuditEventSubType._(
    '110037',
  );

  /// value110038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110038 = AuditEventSubType._(
    '110038',
  );

  /// value110100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110100 = AuditEventSubType._(
    '110100',
  );

  /// value110101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110101 = AuditEventSubType._(
    '110101',
  );

  /// value110102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110102 = AuditEventSubType._(
    '110102',
  );

  /// value110103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110103 = AuditEventSubType._(
    '110103',
  );

  /// value110104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110104 = AuditEventSubType._(
    '110104',
  );

  /// value110105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110105 = AuditEventSubType._(
    '110105',
  );

  /// value110106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110106 = AuditEventSubType._(
    '110106',
  );

  /// value110107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110107 = AuditEventSubType._(
    '110107',
  );

  /// value110108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110108 = AuditEventSubType._(
    '110108',
  );

  /// value110109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110109 = AuditEventSubType._(
    '110109',
  );

  /// value110110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110110 = AuditEventSubType._(
    '110110',
  );

  /// value110111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110111 = AuditEventSubType._(
    '110111',
  );

  /// value110112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110112 = AuditEventSubType._(
    '110112',
  );

  /// value110113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110113 = AuditEventSubType._(
    '110113',
  );

  /// value110114
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110114 = AuditEventSubType._(
    '110114',
  );

  /// value110120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110120 = AuditEventSubType._(
    '110120',
  );

  /// value110121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110121 = AuditEventSubType._(
    '110121',
  );

  /// value110122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110122 = AuditEventSubType._(
    '110122',
  );

  /// value110123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110123 = AuditEventSubType._(
    '110123',
  );

  /// value110124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110124 = AuditEventSubType._(
    '110124',
  );

  /// value110125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110125 = AuditEventSubType._(
    '110125',
  );

  /// value110126
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110126 = AuditEventSubType._(
    '110126',
  );

  /// value110127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110127 = AuditEventSubType._(
    '110127',
  );

  /// value110128
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110128 = AuditEventSubType._(
    '110128',
  );

  /// value110129
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110129 = AuditEventSubType._(
    '110129',
  );

  /// value110130
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110130 = AuditEventSubType._(
    '110130',
  );

  /// value110131
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110131 = AuditEventSubType._(
    '110131',
  );

  /// value110132
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110132 = AuditEventSubType._(
    '110132',
  );

  /// value110133
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110133 = AuditEventSubType._(
    '110133',
  );

  /// value110134
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110134 = AuditEventSubType._(
    '110134',
  );

  /// value110135
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110135 = AuditEventSubType._(
    '110135',
  );

  /// value110136
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110136 = AuditEventSubType._(
    '110136',
  );

  /// value110137
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110137 = AuditEventSubType._(
    '110137',
  );

  /// value110138
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110138 = AuditEventSubType._(
    '110138',
  );

  /// value110139
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110139 = AuditEventSubType._(
    '110139',
  );

  /// value110140
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110140 = AuditEventSubType._(
    '110140',
  );

  /// value110141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110141 = AuditEventSubType._(
    '110141',
  );

  /// value110142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110142 = AuditEventSubType._(
    '110142',
  );

  /// value110150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110150 = AuditEventSubType._(
    '110150',
  );

  /// value110151
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110151 = AuditEventSubType._(
    '110151',
  );

  /// value110152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110152 = AuditEventSubType._(
    '110152',
  );

  /// value110153
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110153 = AuditEventSubType._(
    '110153',
  );

  /// value110154
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110154 = AuditEventSubType._(
    '110154',
  );

  /// value110155
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110155 = AuditEventSubType._(
    '110155',
  );

  /// value110180
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110180 = AuditEventSubType._(
    '110180',
  );

  /// value110181
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110181 = AuditEventSubType._(
    '110181',
  );

  /// value110182
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110182 = AuditEventSubType._(
    '110182',
  );

  /// value110190
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110190 = AuditEventSubType._(
    '110190',
  );

  /// value110500
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110500 = AuditEventSubType._(
    '110500',
  );

  /// value110501
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110501 = AuditEventSubType._(
    '110501',
  );

  /// value110502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110502 = AuditEventSubType._(
    '110502',
  );

  /// value110503
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110503 = AuditEventSubType._(
    '110503',
  );

  /// value110504
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110504 = AuditEventSubType._(
    '110504',
  );

  /// value110505
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110505 = AuditEventSubType._(
    '110505',
  );

  /// value110506
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110506 = AuditEventSubType._(
    '110506',
  );

  /// value110507
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110507 = AuditEventSubType._(
    '110507',
  );

  /// value110508
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110508 = AuditEventSubType._(
    '110508',
  );

  /// value110509
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110509 = AuditEventSubType._(
    '110509',
  );

  /// value110510
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110510 = AuditEventSubType._(
    '110510',
  );

  /// value110511
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110511 = AuditEventSubType._(
    '110511',
  );

  /// value110512
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110512 = AuditEventSubType._(
    '110512',
  );

  /// value110513
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110513 = AuditEventSubType._(
    '110513',
  );

  /// value110514
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110514 = AuditEventSubType._(
    '110514',
  );

  /// value110515
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110515 = AuditEventSubType._(
    '110515',
  );

  /// value110516
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110516 = AuditEventSubType._(
    '110516',
  );

  /// value110518
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110518 = AuditEventSubType._(
    '110518',
  );

  /// value110519
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110519 = AuditEventSubType._(
    '110519',
  );

  /// value110521
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110521 = AuditEventSubType._(
    '110521',
  );

  /// value110522
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110522 = AuditEventSubType._(
    '110522',
  );

  /// value110523
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110523 = AuditEventSubType._(
    '110523',
  );

  /// value110524
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110524 = AuditEventSubType._(
    '110524',
  );

  /// value110526
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110526 = AuditEventSubType._(
    '110526',
  );

  /// value110527
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110527 = AuditEventSubType._(
    '110527',
  );

  /// value110528
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110528 = AuditEventSubType._(
    '110528',
  );

  /// value110529
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110529 = AuditEventSubType._(
    '110529',
  );

  /// value110700
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110700 = AuditEventSubType._(
    '110700',
  );

  /// value110701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110701 = AuditEventSubType._(
    '110701',
  );

  /// value110702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110702 = AuditEventSubType._(
    '110702',
  );

  /// value110703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110703 = AuditEventSubType._(
    '110703',
  );

  /// value110704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110704 = AuditEventSubType._(
    '110704',
  );

  /// value110705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110705 = AuditEventSubType._(
    '110705',
  );

  /// value110706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110706 = AuditEventSubType._(
    '110706',
  );

  /// value110800
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110800 = AuditEventSubType._(
    '110800',
  );

  /// value110801
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110801 = AuditEventSubType._(
    '110801',
  );

  /// value110802
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110802 = AuditEventSubType._(
    '110802',
  );

  /// value110803
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110803 = AuditEventSubType._(
    '110803',
  );

  /// value110804
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110804 = AuditEventSubType._(
    '110804',
  );

  /// value110805
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110805 = AuditEventSubType._(
    '110805',
  );

  /// value110806
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110806 = AuditEventSubType._(
    '110806',
  );

  /// value110807
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110807 = AuditEventSubType._(
    '110807',
  );

  /// value110808
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110808 = AuditEventSubType._(
    '110808',
  );

  /// value110809
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110809 = AuditEventSubType._(
    '110809',
  );

  /// value110810
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110810 = AuditEventSubType._(
    '110810',
  );

  /// value110811
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110811 = AuditEventSubType._(
    '110811',
  );

  /// value110812
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110812 = AuditEventSubType._(
    '110812',
  );

  /// value110813
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110813 = AuditEventSubType._(
    '110813',
  );

  /// value110814
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110814 = AuditEventSubType._(
    '110814',
  );

  /// value110815
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110815 = AuditEventSubType._(
    '110815',
  );

  /// value110816
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110816 = AuditEventSubType._(
    '110816',
  );

  /// value110817
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110817 = AuditEventSubType._(
    '110817',
  );

  /// value110818
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110818 = AuditEventSubType._(
    '110818',
  );

  /// value110819
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110819 = AuditEventSubType._(
    '110819',
  );

  /// value110820
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110820 = AuditEventSubType._(
    '110820',
  );

  /// value110821
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110821 = AuditEventSubType._(
    '110821',
  );

  /// value110822
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110822 = AuditEventSubType._(
    '110822',
  );

  /// value110823
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110823 = AuditEventSubType._(
    '110823',
  );

  /// value110824
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110824 = AuditEventSubType._(
    '110824',
  );

  /// value110825
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110825 = AuditEventSubType._(
    '110825',
  );

  /// value110826
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110826 = AuditEventSubType._(
    '110826',
  );

  /// value110827
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110827 = AuditEventSubType._(
    '110827',
  );

  /// value110828
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110828 = AuditEventSubType._(
    '110828',
  );

  /// value110829
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110829 = AuditEventSubType._(
    '110829',
  );

  /// value110830
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110830 = AuditEventSubType._(
    '110830',
  );

  /// value110831
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110831 = AuditEventSubType._(
    '110831',
  );

  /// value110832
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110832 = AuditEventSubType._(
    '110832',
  );

  /// value110833
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110833 = AuditEventSubType._(
    '110833',
  );

  /// value110834
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110834 = AuditEventSubType._(
    '110834',
  );

  /// value110835
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110835 = AuditEventSubType._(
    '110835',
  );

  /// value110836
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110836 = AuditEventSubType._(
    '110836',
  );

  /// value110837
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110837 = AuditEventSubType._(
    '110837',
  );

  /// value110838
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110838 = AuditEventSubType._(
    '110838',
  );

  /// value110839
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110839 = AuditEventSubType._(
    '110839',
  );

  /// value110840
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110840 = AuditEventSubType._(
    '110840',
  );

  /// value110841
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110841 = AuditEventSubType._(
    '110841',
  );

  /// value110842
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110842 = AuditEventSubType._(
    '110842',
  );

  /// value110843
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110843 = AuditEventSubType._(
    '110843',
  );

  /// value110844
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110844 = AuditEventSubType._(
    '110844',
  );

  /// value110845
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110845 = AuditEventSubType._(
    '110845',
  );

  /// value110846
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110846 = AuditEventSubType._(
    '110846',
  );

  /// value110847
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110847 = AuditEventSubType._(
    '110847',
  );

  /// value110848
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110848 = AuditEventSubType._(
    '110848',
  );

  /// value110849
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110849 = AuditEventSubType._(
    '110849',
  );

  /// value110850
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110850 = AuditEventSubType._(
    '110850',
  );

  /// value110851
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110851 = AuditEventSubType._(
    '110851',
  );

  /// value110852
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110852 = AuditEventSubType._(
    '110852',
  );

  /// value110853
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110853 = AuditEventSubType._(
    '110853',
  );

  /// value110854
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110854 = AuditEventSubType._(
    '110854',
  );

  /// value110855
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110855 = AuditEventSubType._(
    '110855',
  );

  /// value110856
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110856 = AuditEventSubType._(
    '110856',
  );

  /// value110857
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110857 = AuditEventSubType._(
    '110857',
  );

  /// value110858
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110858 = AuditEventSubType._(
    '110858',
  );

  /// value110859
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110859 = AuditEventSubType._(
    '110859',
  );

  /// value110860
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110860 = AuditEventSubType._(
    '110860',
  );

  /// value110861
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110861 = AuditEventSubType._(
    '110861',
  );

  /// value110862
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110862 = AuditEventSubType._(
    '110862',
  );

  /// value110863
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110863 = AuditEventSubType._(
    '110863',
  );

  /// value110864
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110864 = AuditEventSubType._(
    '110864',
  );

  /// value110865
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110865 = AuditEventSubType._(
    '110865',
  );

  /// value110866
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110866 = AuditEventSubType._(
    '110866',
  );

  /// value110867
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110867 = AuditEventSubType._(
    '110867',
  );

  /// value110868
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110868 = AuditEventSubType._(
    '110868',
  );

  /// value110869
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110869 = AuditEventSubType._(
    '110869',
  );

  /// value110870
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110870 = AuditEventSubType._(
    '110870',
  );

  /// value110871
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110871 = AuditEventSubType._(
    '110871',
  );

  /// value110872
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110872 = AuditEventSubType._(
    '110872',
  );

  /// value110873
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110873 = AuditEventSubType._(
    '110873',
  );

  /// value110874
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110874 = AuditEventSubType._(
    '110874',
  );

  /// value110875
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110875 = AuditEventSubType._(
    '110875',
  );

  /// value110876
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110876 = AuditEventSubType._(
    '110876',
  );

  /// value110877
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110877 = AuditEventSubType._(
    '110877',
  );

  /// value110901
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110901 = AuditEventSubType._(
    '110901',
  );

  /// value110902
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110902 = AuditEventSubType._(
    '110902',
  );

  /// value110903
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110903 = AuditEventSubType._(
    '110903',
  );

  /// value110904
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110904 = AuditEventSubType._(
    '110904',
  );

  /// value110905
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110905 = AuditEventSubType._(
    '110905',
  );

  /// value110906
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110906 = AuditEventSubType._(
    '110906',
  );

  /// value110907
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110907 = AuditEventSubType._(
    '110907',
  );

  /// value110908
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110908 = AuditEventSubType._(
    '110908',
  );

  /// value110909
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110909 = AuditEventSubType._(
    '110909',
  );

  /// value110910
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110910 = AuditEventSubType._(
    '110910',
  );

  /// value110911
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value110911 = AuditEventSubType._(
    '110911',
  );

  /// value111001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111001 = AuditEventSubType._(
    '111001',
  );

  /// value111002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111002 = AuditEventSubType._(
    '111002',
  );

  /// value111003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111003 = AuditEventSubType._(
    '111003',
  );

  /// value111004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111004 = AuditEventSubType._(
    '111004',
  );

  /// value111005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111005 = AuditEventSubType._(
    '111005',
  );

  /// value111006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111006 = AuditEventSubType._(
    '111006',
  );

  /// value111007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111007 = AuditEventSubType._(
    '111007',
  );

  /// value111008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111008 = AuditEventSubType._(
    '111008',
  );

  /// value111009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111009 = AuditEventSubType._(
    '111009',
  );

  /// value111010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111010 = AuditEventSubType._(
    '111010',
  );

  /// value111011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111011 = AuditEventSubType._(
    '111011',
  );

  /// value111012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111012 = AuditEventSubType._(
    '111012',
  );

  /// value111013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111013 = AuditEventSubType._(
    '111013',
  );

  /// value111014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111014 = AuditEventSubType._(
    '111014',
  );

  /// value111015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111015 = AuditEventSubType._(
    '111015',
  );

  /// value111016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111016 = AuditEventSubType._(
    '111016',
  );

  /// value111017
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111017 = AuditEventSubType._(
    '111017',
  );

  /// value111018
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111018 = AuditEventSubType._(
    '111018',
  );

  /// value111019
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111019 = AuditEventSubType._(
    '111019',
  );

  /// value111020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111020 = AuditEventSubType._(
    '111020',
  );

  /// value111021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111021 = AuditEventSubType._(
    '111021',
  );

  /// value111022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111022 = AuditEventSubType._(
    '111022',
  );

  /// value111023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111023 = AuditEventSubType._(
    '111023',
  );

  /// value111024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111024 = AuditEventSubType._(
    '111024',
  );

  /// value111025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111025 = AuditEventSubType._(
    '111025',
  );

  /// value111026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111026 = AuditEventSubType._(
    '111026',
  );

  /// value111027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111027 = AuditEventSubType._(
    '111027',
  );

  /// value111028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111028 = AuditEventSubType._(
    '111028',
  );

  /// value111029
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111029 = AuditEventSubType._(
    '111029',
  );

  /// value111030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111030 = AuditEventSubType._(
    '111030',
  );

  /// value111031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111031 = AuditEventSubType._(
    '111031',
  );

  /// value111032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111032 = AuditEventSubType._(
    '111032',
  );

  /// value111033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111033 = AuditEventSubType._(
    '111033',
  );

  /// value111034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111034 = AuditEventSubType._(
    '111034',
  );

  /// value111035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111035 = AuditEventSubType._(
    '111035',
  );

  /// value111036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111036 = AuditEventSubType._(
    '111036',
  );

  /// value111037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111037 = AuditEventSubType._(
    '111037',
  );

  /// value111038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111038 = AuditEventSubType._(
    '111038',
  );

  /// value111039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111039 = AuditEventSubType._(
    '111039',
  );

  /// value111040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111040 = AuditEventSubType._(
    '111040',
  );

  /// value111041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111041 = AuditEventSubType._(
    '111041',
  );

  /// value111042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111042 = AuditEventSubType._(
    '111042',
  );

  /// value111043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111043 = AuditEventSubType._(
    '111043',
  );

  /// value111044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111044 = AuditEventSubType._(
    '111044',
  );

  /// value111045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111045 = AuditEventSubType._(
    '111045',
  );

  /// value111046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111046 = AuditEventSubType._(
    '111046',
  );

  /// value111047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111047 = AuditEventSubType._(
    '111047',
  );

  /// value111048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111048 = AuditEventSubType._(
    '111048',
  );

  /// value111049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111049 = AuditEventSubType._(
    '111049',
  );

  /// value111050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111050 = AuditEventSubType._(
    '111050',
  );

  /// value111051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111051 = AuditEventSubType._(
    '111051',
  );

  /// value111052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111052 = AuditEventSubType._(
    '111052',
  );

  /// value111053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111053 = AuditEventSubType._(
    '111053',
  );

  /// value111054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111054 = AuditEventSubType._(
    '111054',
  );

  /// value111055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111055 = AuditEventSubType._(
    '111055',
  );

  /// value111056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111056 = AuditEventSubType._(
    '111056',
  );

  /// value111057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111057 = AuditEventSubType._(
    '111057',
  );

  /// value111058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111058 = AuditEventSubType._(
    '111058',
  );

  /// value111059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111059 = AuditEventSubType._(
    '111059',
  );

  /// value111060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111060 = AuditEventSubType._(
    '111060',
  );

  /// value111061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111061 = AuditEventSubType._(
    '111061',
  );

  /// value111062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111062 = AuditEventSubType._(
    '111062',
  );

  /// value111063
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111063 = AuditEventSubType._(
    '111063',
  );

  /// value111064
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111064 = AuditEventSubType._(
    '111064',
  );

  /// value111065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111065 = AuditEventSubType._(
    '111065',
  );

  /// value111066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111066 = AuditEventSubType._(
    '111066',
  );

  /// value111069
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111069 = AuditEventSubType._(
    '111069',
  );

  /// value111071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111071 = AuditEventSubType._(
    '111071',
  );

  /// value111072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111072 = AuditEventSubType._(
    '111072',
  );

  /// value111081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111081 = AuditEventSubType._(
    '111081',
  );

  /// value111086
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111086 = AuditEventSubType._(
    '111086',
  );

  /// value111087
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111087 = AuditEventSubType._(
    '111087',
  );

  /// value111088
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111088 = AuditEventSubType._(
    '111088',
  );

  /// value111089
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111089 = AuditEventSubType._(
    '111089',
  );

  /// value111090
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111090 = AuditEventSubType._(
    '111090',
  );

  /// value111091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111091 = AuditEventSubType._(
    '111091',
  );

  /// value111092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111092 = AuditEventSubType._(
    '111092',
  );

  /// value111093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111093 = AuditEventSubType._(
    '111093',
  );

  /// value111099
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111099 = AuditEventSubType._(
    '111099',
  );

  /// value111100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111100 = AuditEventSubType._(
    '111100',
  );

  /// value111101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111101 = AuditEventSubType._(
    '111101',
  );

  /// value111102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111102 = AuditEventSubType._(
    '111102',
  );

  /// value111103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111103 = AuditEventSubType._(
    '111103',
  );

  /// value111104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111104 = AuditEventSubType._(
    '111104',
  );

  /// value111105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111105 = AuditEventSubType._(
    '111105',
  );

  /// value111111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111111 = AuditEventSubType._(
    '111111',
  );

  /// value111112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111112 = AuditEventSubType._(
    '111112',
  );

  /// value111113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111113 = AuditEventSubType._(
    '111113',
  );

  /// value111120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111120 = AuditEventSubType._(
    '111120',
  );

  /// value111121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111121 = AuditEventSubType._(
    '111121',
  );

  /// value111122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111122 = AuditEventSubType._(
    '111122',
  );

  /// value111123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111123 = AuditEventSubType._(
    '111123',
  );

  /// value111124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111124 = AuditEventSubType._(
    '111124',
  );

  /// value111125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111125 = AuditEventSubType._(
    '111125',
  );

  /// value111126
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111126 = AuditEventSubType._(
    '111126',
  );

  /// value111127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111127 = AuditEventSubType._(
    '111127',
  );

  /// value111128
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111128 = AuditEventSubType._(
    '111128',
  );

  /// value111129
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111129 = AuditEventSubType._(
    '111129',
  );

  /// value111130
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111130 = AuditEventSubType._(
    '111130',
  );

  /// value111135
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111135 = AuditEventSubType._(
    '111135',
  );

  /// value111136
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111136 = AuditEventSubType._(
    '111136',
  );

  /// value111137
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111137 = AuditEventSubType._(
    '111137',
  );

  /// value111138
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111138 = AuditEventSubType._(
    '111138',
  );

  /// value111139
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111139 = AuditEventSubType._(
    '111139',
  );

  /// value111140
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111140 = AuditEventSubType._(
    '111140',
  );

  /// value111141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111141 = AuditEventSubType._(
    '111141',
  );

  /// value111142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111142 = AuditEventSubType._(
    '111142',
  );

  /// value111143
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111143 = AuditEventSubType._(
    '111143',
  );

  /// value111144
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111144 = AuditEventSubType._(
    '111144',
  );

  /// value111145
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111145 = AuditEventSubType._(
    '111145',
  );

  /// value111146
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111146 = AuditEventSubType._(
    '111146',
  );

  /// value111147
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111147 = AuditEventSubType._(
    '111147',
  );

  /// value111148
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111148 = AuditEventSubType._(
    '111148',
  );

  /// value111149
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111149 = AuditEventSubType._(
    '111149',
  );

  /// value111150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111150 = AuditEventSubType._(
    '111150',
  );

  /// value111151
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111151 = AuditEventSubType._(
    '111151',
  );

  /// value111152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111152 = AuditEventSubType._(
    '111152',
  );

  /// value111153
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111153 = AuditEventSubType._(
    '111153',
  );

  /// value111154
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111154 = AuditEventSubType._(
    '111154',
  );

  /// value111155
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111155 = AuditEventSubType._(
    '111155',
  );

  /// value111156
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111156 = AuditEventSubType._(
    '111156',
  );

  /// value111157
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111157 = AuditEventSubType._(
    '111157',
  );

  /// value111158
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111158 = AuditEventSubType._(
    '111158',
  );

  /// value111159
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111159 = AuditEventSubType._(
    '111159',
  );

  /// value111168
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111168 = AuditEventSubType._(
    '111168',
  );

  /// value111170
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111170 = AuditEventSubType._(
    '111170',
  );

  /// value111171
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111171 = AuditEventSubType._(
    '111171',
  );

  /// value111172
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111172 = AuditEventSubType._(
    '111172',
  );

  /// value111173
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111173 = AuditEventSubType._(
    '111173',
  );

  /// value111174
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111174 = AuditEventSubType._(
    '111174',
  );

  /// value111175
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111175 = AuditEventSubType._(
    '111175',
  );

  /// value111176
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111176 = AuditEventSubType._(
    '111176',
  );

  /// value111177
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111177 = AuditEventSubType._(
    '111177',
  );

  /// value111178
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111178 = AuditEventSubType._(
    '111178',
  );

  /// value111179
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111179 = AuditEventSubType._(
    '111179',
  );

  /// value111180
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111180 = AuditEventSubType._(
    '111180',
  );

  /// value111181
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111181 = AuditEventSubType._(
    '111181',
  );

  /// value111182
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111182 = AuditEventSubType._(
    '111182',
  );

  /// value111183
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111183 = AuditEventSubType._(
    '111183',
  );

  /// value111184
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111184 = AuditEventSubType._(
    '111184',
  );

  /// value111185
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111185 = AuditEventSubType._(
    '111185',
  );

  /// value111186
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111186 = AuditEventSubType._(
    '111186',
  );

  /// value111187
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111187 = AuditEventSubType._(
    '111187',
  );

  /// value111188
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111188 = AuditEventSubType._(
    '111188',
  );

  /// value111189
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111189 = AuditEventSubType._(
    '111189',
  );

  /// value111190
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111190 = AuditEventSubType._(
    '111190',
  );

  /// value111191
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111191 = AuditEventSubType._(
    '111191',
  );

  /// value111192
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111192 = AuditEventSubType._(
    '111192',
  );

  /// value111193
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111193 = AuditEventSubType._(
    '111193',
  );

  /// value111194
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111194 = AuditEventSubType._(
    '111194',
  );

  /// value111195
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111195 = AuditEventSubType._(
    '111195',
  );

  /// value111196
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111196 = AuditEventSubType._(
    '111196',
  );

  /// value111197
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111197 = AuditEventSubType._(
    '111197',
  );

  /// value111198
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111198 = AuditEventSubType._(
    '111198',
  );

  /// value111199
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111199 = AuditEventSubType._(
    '111199',
  );

  /// value111200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111200 = AuditEventSubType._(
    '111200',
  );

  /// value111201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111201 = AuditEventSubType._(
    '111201',
  );

  /// value111202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111202 = AuditEventSubType._(
    '111202',
  );

  /// value111203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111203 = AuditEventSubType._(
    '111203',
  );

  /// value111204
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111204 = AuditEventSubType._(
    '111204',
  );

  /// value111205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111205 = AuditEventSubType._(
    '111205',
  );

  /// value111206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111206 = AuditEventSubType._(
    '111206',
  );

  /// value111207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111207 = AuditEventSubType._(
    '111207',
  );

  /// value111208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111208 = AuditEventSubType._(
    '111208',
  );

  /// value111209
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111209 = AuditEventSubType._(
    '111209',
  );

  /// value111210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111210 = AuditEventSubType._(
    '111210',
  );

  /// value111211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111211 = AuditEventSubType._(
    '111211',
  );

  /// value111212
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111212 = AuditEventSubType._(
    '111212',
  );

  /// value111213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111213 = AuditEventSubType._(
    '111213',
  );

  /// value111214
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111214 = AuditEventSubType._(
    '111214',
  );

  /// value111215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111215 = AuditEventSubType._(
    '111215',
  );

  /// value111216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111216 = AuditEventSubType._(
    '111216',
  );

  /// value111217
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111217 = AuditEventSubType._(
    '111217',
  );

  /// value111218
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111218 = AuditEventSubType._(
    '111218',
  );

  /// value111219
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111219 = AuditEventSubType._(
    '111219',
  );

  /// value111220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111220 = AuditEventSubType._(
    '111220',
  );

  /// value111221
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111221 = AuditEventSubType._(
    '111221',
  );

  /// value111222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111222 = AuditEventSubType._(
    '111222',
  );

  /// value111223
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111223 = AuditEventSubType._(
    '111223',
  );

  /// value111224
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111224 = AuditEventSubType._(
    '111224',
  );

  /// value111225
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111225 = AuditEventSubType._(
    '111225',
  );

  /// value111233
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111233 = AuditEventSubType._(
    '111233',
  );

  /// value111234
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111234 = AuditEventSubType._(
    '111234',
  );

  /// value111235
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111235 = AuditEventSubType._(
    '111235',
  );

  /// value111236
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111236 = AuditEventSubType._(
    '111236',
  );

  /// value111237
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111237 = AuditEventSubType._(
    '111237',
  );

  /// value111238
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111238 = AuditEventSubType._(
    '111238',
  );

  /// value111239
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111239 = AuditEventSubType._(
    '111239',
  );

  /// value111240
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111240 = AuditEventSubType._(
    '111240',
  );

  /// value111241
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111241 = AuditEventSubType._(
    '111241',
  );

  /// value111242
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111242 = AuditEventSubType._(
    '111242',
  );

  /// value111243
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111243 = AuditEventSubType._(
    '111243',
  );

  /// value111244
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111244 = AuditEventSubType._(
    '111244',
  );

  /// value111245
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111245 = AuditEventSubType._(
    '111245',
  );

  /// value111248
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111248 = AuditEventSubType._(
    '111248',
  );

  /// value111249
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111249 = AuditEventSubType._(
    '111249',
  );

  /// value111250
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111250 = AuditEventSubType._(
    '111250',
  );

  /// value111251
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111251 = AuditEventSubType._(
    '111251',
  );

  /// value111252
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111252 = AuditEventSubType._(
    '111252',
  );

  /// value111253
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111253 = AuditEventSubType._(
    '111253',
  );

  /// value111254
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111254 = AuditEventSubType._(
    '111254',
  );

  /// value111255
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111255 = AuditEventSubType._(
    '111255',
  );

  /// value111256
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111256 = AuditEventSubType._(
    '111256',
  );

  /// value111257
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111257 = AuditEventSubType._(
    '111257',
  );

  /// value111258
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111258 = AuditEventSubType._(
    '111258',
  );

  /// value111259
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111259 = AuditEventSubType._(
    '111259',
  );

  /// value111260
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111260 = AuditEventSubType._(
    '111260',
  );

  /// value111262
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111262 = AuditEventSubType._(
    '111262',
  );

  /// value111263
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111263 = AuditEventSubType._(
    '111263',
  );

  /// value111264
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111264 = AuditEventSubType._(
    '111264',
  );

  /// value111265
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111265 = AuditEventSubType._(
    '111265',
  );

  /// value111269
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111269 = AuditEventSubType._(
    '111269',
  );

  /// value111271
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111271 = AuditEventSubType._(
    '111271',
  );

  /// value111273
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111273 = AuditEventSubType._(
    '111273',
  );

  /// value111277
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111277 = AuditEventSubType._(
    '111277',
  );

  /// value111278
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111278 = AuditEventSubType._(
    '111278',
  );

  /// value111279
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111279 = AuditEventSubType._(
    '111279',
  );

  /// value111281
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111281 = AuditEventSubType._(
    '111281',
  );

  /// value111283
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111283 = AuditEventSubType._(
    '111283',
  );

  /// value111284
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111284 = AuditEventSubType._(
    '111284',
  );

  /// value111285
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111285 = AuditEventSubType._(
    '111285',
  );

  /// value111286
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111286 = AuditEventSubType._(
    '111286',
  );

  /// value111287
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111287 = AuditEventSubType._(
    '111287',
  );

  /// value111288
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111288 = AuditEventSubType._(
    '111288',
  );

  /// value111290
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111290 = AuditEventSubType._(
    '111290',
  );

  /// value111291
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111291 = AuditEventSubType._(
    '111291',
  );

  /// value111292
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111292 = AuditEventSubType._(
    '111292',
  );

  /// value111293
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111293 = AuditEventSubType._(
    '111293',
  );

  /// value111294
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111294 = AuditEventSubType._(
    '111294',
  );

  /// value111296
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111296 = AuditEventSubType._(
    '111296',
  );

  /// value111297
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111297 = AuditEventSubType._(
    '111297',
  );

  /// value111298
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111298 = AuditEventSubType._(
    '111298',
  );

  /// value111299
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111299 = AuditEventSubType._(
    '111299',
  );

  /// value111300
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111300 = AuditEventSubType._(
    '111300',
  );

  /// value111301
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111301 = AuditEventSubType._(
    '111301',
  );

  /// value111302
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111302 = AuditEventSubType._(
    '111302',
  );

  /// value111303
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111303 = AuditEventSubType._(
    '111303',
  );

  /// value111304
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111304 = AuditEventSubType._(
    '111304',
  );

  /// value111305
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111305 = AuditEventSubType._(
    '111305',
  );

  /// value111306
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111306 = AuditEventSubType._(
    '111306',
  );

  /// value111307
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111307 = AuditEventSubType._(
    '111307',
  );

  /// value111308
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111308 = AuditEventSubType._(
    '111308',
  );

  /// value111309
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111309 = AuditEventSubType._(
    '111309',
  );

  /// value111310
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111310 = AuditEventSubType._(
    '111310',
  );

  /// value111311
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111311 = AuditEventSubType._(
    '111311',
  );

  /// value111312
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111312 = AuditEventSubType._(
    '111312',
  );

  /// value111313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111313 = AuditEventSubType._(
    '111313',
  );

  /// value111314
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111314 = AuditEventSubType._(
    '111314',
  );

  /// value111315
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111315 = AuditEventSubType._(
    '111315',
  );

  /// value111316
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111316 = AuditEventSubType._(
    '111316',
  );

  /// value111317
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111317 = AuditEventSubType._(
    '111317',
  );

  /// value111318
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111318 = AuditEventSubType._(
    '111318',
  );

  /// value111320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111320 = AuditEventSubType._(
    '111320',
  );

  /// value111321
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111321 = AuditEventSubType._(
    '111321',
  );

  /// value111322
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111322 = AuditEventSubType._(
    '111322',
  );

  /// value111323
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111323 = AuditEventSubType._(
    '111323',
  );

  /// value111324
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111324 = AuditEventSubType._(
    '111324',
  );

  /// value111325
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111325 = AuditEventSubType._(
    '111325',
  );

  /// value111326
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111326 = AuditEventSubType._(
    '111326',
  );

  /// value111327
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111327 = AuditEventSubType._(
    '111327',
  );

  /// value111328
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111328 = AuditEventSubType._(
    '111328',
  );

  /// value111329
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111329 = AuditEventSubType._(
    '111329',
  );

  /// value111330
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111330 = AuditEventSubType._(
    '111330',
  );

  /// value111331
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111331 = AuditEventSubType._(
    '111331',
  );

  /// value111332
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111332 = AuditEventSubType._(
    '111332',
  );

  /// value111333
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111333 = AuditEventSubType._(
    '111333',
  );

  /// value111334
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111334 = AuditEventSubType._(
    '111334',
  );

  /// value111335
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111335 = AuditEventSubType._(
    '111335',
  );

  /// value111336
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111336 = AuditEventSubType._(
    '111336',
  );

  /// value111338
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111338 = AuditEventSubType._(
    '111338',
  );

  /// value111340
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111340 = AuditEventSubType._(
    '111340',
  );

  /// value111341
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111341 = AuditEventSubType._(
    '111341',
  );

  /// value111342
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111342 = AuditEventSubType._(
    '111342',
  );

  /// value111343
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111343 = AuditEventSubType._(
    '111343',
  );

  /// value111344
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111344 = AuditEventSubType._(
    '111344',
  );

  /// value111345
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111345 = AuditEventSubType._(
    '111345',
  );

  /// value111346
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111346 = AuditEventSubType._(
    '111346',
  );

  /// value111347
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111347 = AuditEventSubType._(
    '111347',
  );

  /// value111350
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111350 = AuditEventSubType._(
    '111350',
  );

  /// value111351
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111351 = AuditEventSubType._(
    '111351',
  );

  /// value111352
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111352 = AuditEventSubType._(
    '111352',
  );

  /// value111353
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111353 = AuditEventSubType._(
    '111353',
  );

  /// value111354
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111354 = AuditEventSubType._(
    '111354',
  );

  /// value111355
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111355 = AuditEventSubType._(
    '111355',
  );

  /// value111356
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111356 = AuditEventSubType._(
    '111356',
  );

  /// value111357
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111357 = AuditEventSubType._(
    '111357',
  );

  /// value111358
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111358 = AuditEventSubType._(
    '111358',
  );

  /// value111359
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111359 = AuditEventSubType._(
    '111359',
  );

  /// value111360
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111360 = AuditEventSubType._(
    '111360',
  );

  /// value111361
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111361 = AuditEventSubType._(
    '111361',
  );

  /// value111362
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111362 = AuditEventSubType._(
    '111362',
  );

  /// value111363
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111363 = AuditEventSubType._(
    '111363',
  );

  /// value111364
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111364 = AuditEventSubType._(
    '111364',
  );

  /// value111365
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111365 = AuditEventSubType._(
    '111365',
  );

  /// value111366
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111366 = AuditEventSubType._(
    '111366',
  );

  /// value111367
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111367 = AuditEventSubType._(
    '111367',
  );

  /// value111368
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111368 = AuditEventSubType._(
    '111368',
  );

  /// value111369
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111369 = AuditEventSubType._(
    '111369',
  );

  /// value111370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111370 = AuditEventSubType._(
    '111370',
  );

  /// value111371
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111371 = AuditEventSubType._(
    '111371',
  );

  /// value111372
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111372 = AuditEventSubType._(
    '111372',
  );

  /// value111373
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111373 = AuditEventSubType._(
    '111373',
  );

  /// value111374
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111374 = AuditEventSubType._(
    '111374',
  );

  /// value111375
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111375 = AuditEventSubType._(
    '111375',
  );

  /// value111376
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111376 = AuditEventSubType._(
    '111376',
  );

  /// value111377
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111377 = AuditEventSubType._(
    '111377',
  );

  /// value111380
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111380 = AuditEventSubType._(
    '111380',
  );

  /// value111381
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111381 = AuditEventSubType._(
    '111381',
  );

  /// value111382
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111382 = AuditEventSubType._(
    '111382',
  );

  /// value111383
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111383 = AuditEventSubType._(
    '111383',
  );

  /// value111384
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111384 = AuditEventSubType._(
    '111384',
  );

  /// value111385
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111385 = AuditEventSubType._(
    '111385',
  );

  /// value111386
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111386 = AuditEventSubType._(
    '111386',
  );

  /// value111387
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111387 = AuditEventSubType._(
    '111387',
  );

  /// value111388
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111388 = AuditEventSubType._(
    '111388',
  );

  /// value111389
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111389 = AuditEventSubType._(
    '111389',
  );

  /// value111390
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111390 = AuditEventSubType._(
    '111390',
  );

  /// value111391
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111391 = AuditEventSubType._(
    '111391',
  );

  /// value111392
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111392 = AuditEventSubType._(
    '111392',
  );

  /// value111393
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111393 = AuditEventSubType._(
    '111393',
  );

  /// value111394
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111394 = AuditEventSubType._(
    '111394',
  );

  /// value111395
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111395 = AuditEventSubType._(
    '111395',
  );

  /// value111396
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111396 = AuditEventSubType._(
    '111396',
  );

  /// value111397
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111397 = AuditEventSubType._(
    '111397',
  );

  /// value111398
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111398 = AuditEventSubType._(
    '111398',
  );

  /// value111399
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111399 = AuditEventSubType._(
    '111399',
  );

  /// value111400
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111400 = AuditEventSubType._(
    '111400',
  );

  /// value111401
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111401 = AuditEventSubType._(
    '111401',
  );

  /// value111402
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111402 = AuditEventSubType._(
    '111402',
  );

  /// value111403
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111403 = AuditEventSubType._(
    '111403',
  );

  /// value111404
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111404 = AuditEventSubType._(
    '111404',
  );

  /// value111405
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111405 = AuditEventSubType._(
    '111405',
  );

  /// value111406
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111406 = AuditEventSubType._(
    '111406',
  );

  /// value111407
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111407 = AuditEventSubType._(
    '111407',
  );

  /// value111408
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111408 = AuditEventSubType._(
    '111408',
  );

  /// value111409
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111409 = AuditEventSubType._(
    '111409',
  );

  /// value111410
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111410 = AuditEventSubType._(
    '111410',
  );

  /// value111411
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111411 = AuditEventSubType._(
    '111411',
  );

  /// value111412
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111412 = AuditEventSubType._(
    '111412',
  );

  /// value111413
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111413 = AuditEventSubType._(
    '111413',
  );

  /// value111414
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111414 = AuditEventSubType._(
    '111414',
  );

  /// value111415
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111415 = AuditEventSubType._(
    '111415',
  );

  /// value111416
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111416 = AuditEventSubType._(
    '111416',
  );

  /// value111417
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111417 = AuditEventSubType._(
    '111417',
  );

  /// value111418
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111418 = AuditEventSubType._(
    '111418',
  );

  /// value111419
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111419 = AuditEventSubType._(
    '111419',
  );

  /// value111420
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111420 = AuditEventSubType._(
    '111420',
  );

  /// value111421
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111421 = AuditEventSubType._(
    '111421',
  );

  /// value111423
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111423 = AuditEventSubType._(
    '111423',
  );

  /// value111424
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111424 = AuditEventSubType._(
    '111424',
  );

  /// value111425
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111425 = AuditEventSubType._(
    '111425',
  );

  /// value111426
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111426 = AuditEventSubType._(
    '111426',
  );

  /// value111427
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111427 = AuditEventSubType._(
    '111427',
  );

  /// value111428
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111428 = AuditEventSubType._(
    '111428',
  );

  /// value111429
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111429 = AuditEventSubType._(
    '111429',
  );

  /// value111430
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111430 = AuditEventSubType._(
    '111430',
  );

  /// value111431
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111431 = AuditEventSubType._(
    '111431',
  );

  /// value111432
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111432 = AuditEventSubType._(
    '111432',
  );

  /// value111433
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111433 = AuditEventSubType._(
    '111433',
  );

  /// value111434
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111434 = AuditEventSubType._(
    '111434',
  );

  /// value111435
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111435 = AuditEventSubType._(
    '111435',
  );

  /// value111436
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111436 = AuditEventSubType._(
    '111436',
  );

  /// value111437
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111437 = AuditEventSubType._(
    '111437',
  );

  /// value111438
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111438 = AuditEventSubType._(
    '111438',
  );

  /// value111439
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111439 = AuditEventSubType._(
    '111439',
  );

  /// value111440
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111440 = AuditEventSubType._(
    '111440',
  );

  /// value111441
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111441 = AuditEventSubType._(
    '111441',
  );

  /// value111442
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111442 = AuditEventSubType._(
    '111442',
  );

  /// value111443
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111443 = AuditEventSubType._(
    '111443',
  );

  /// value111444
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111444 = AuditEventSubType._(
    '111444',
  );

  /// value111445
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111445 = AuditEventSubType._(
    '111445',
  );

  /// value111446
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111446 = AuditEventSubType._(
    '111446',
  );

  /// value111447
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111447 = AuditEventSubType._(
    '111447',
  );

  /// value111448
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111448 = AuditEventSubType._(
    '111448',
  );

  /// value111449
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111449 = AuditEventSubType._(
    '111449',
  );

  /// value111450
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111450 = AuditEventSubType._(
    '111450',
  );

  /// value111451
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111451 = AuditEventSubType._(
    '111451',
  );

  /// value111452
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111452 = AuditEventSubType._(
    '111452',
  );

  /// value111453
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111453 = AuditEventSubType._(
    '111453',
  );

  /// value111454
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111454 = AuditEventSubType._(
    '111454',
  );

  /// value111455
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111455 = AuditEventSubType._(
    '111455',
  );

  /// value111456
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111456 = AuditEventSubType._(
    '111456',
  );

  /// value111457
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111457 = AuditEventSubType._(
    '111457',
  );

  /// value111458
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111458 = AuditEventSubType._(
    '111458',
  );

  /// value111459
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111459 = AuditEventSubType._(
    '111459',
  );

  /// value111460
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111460 = AuditEventSubType._(
    '111460',
  );

  /// value111461
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111461 = AuditEventSubType._(
    '111461',
  );

  /// value111462
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111462 = AuditEventSubType._(
    '111462',
  );

  /// value111463
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111463 = AuditEventSubType._(
    '111463',
  );

  /// value111464
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111464 = AuditEventSubType._(
    '111464',
  );

  /// value111465
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111465 = AuditEventSubType._(
    '111465',
  );

  /// value111466
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111466 = AuditEventSubType._(
    '111466',
  );

  /// value111467
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111467 = AuditEventSubType._(
    '111467',
  );

  /// value111468
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111468 = AuditEventSubType._(
    '111468',
  );

  /// value111469
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111469 = AuditEventSubType._(
    '111469',
  );

  /// value111470
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111470 = AuditEventSubType._(
    '111470',
  );

  /// value111471
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111471 = AuditEventSubType._(
    '111471',
  );

  /// value111472
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111472 = AuditEventSubType._(
    '111472',
  );

  /// value111473
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111473 = AuditEventSubType._(
    '111473',
  );

  /// value111474
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111474 = AuditEventSubType._(
    '111474',
  );

  /// value111475
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111475 = AuditEventSubType._(
    '111475',
  );

  /// value111476
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111476 = AuditEventSubType._(
    '111476',
  );

  /// value111477
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111477 = AuditEventSubType._(
    '111477',
  );

  /// value111478
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111478 = AuditEventSubType._(
    '111478',
  );

  /// value111479
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111479 = AuditEventSubType._(
    '111479',
  );

  /// value111480
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111480 = AuditEventSubType._(
    '111480',
  );

  /// value111481
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111481 = AuditEventSubType._(
    '111481',
  );

  /// value111482
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111482 = AuditEventSubType._(
    '111482',
  );

  /// value111483
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111483 = AuditEventSubType._(
    '111483',
  );

  /// value111484
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111484 = AuditEventSubType._(
    '111484',
  );

  /// value111485
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111485 = AuditEventSubType._(
    '111485',
  );

  /// value111486
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111486 = AuditEventSubType._(
    '111486',
  );

  /// value111487
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111487 = AuditEventSubType._(
    '111487',
  );

  /// value111488
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111488 = AuditEventSubType._(
    '111488',
  );

  /// value111489
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111489 = AuditEventSubType._(
    '111489',
  );

  /// value111490
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111490 = AuditEventSubType._(
    '111490',
  );

  /// value111491
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111491 = AuditEventSubType._(
    '111491',
  );

  /// value111492
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111492 = AuditEventSubType._(
    '111492',
  );

  /// value111494
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111494 = AuditEventSubType._(
    '111494',
  );

  /// value111495
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111495 = AuditEventSubType._(
    '111495',
  );

  /// value111496
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111496 = AuditEventSubType._(
    '111496',
  );

  /// value111497
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111497 = AuditEventSubType._(
    '111497',
  );

  /// value111498
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111498 = AuditEventSubType._(
    '111498',
  );

  /// value111499
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111499 = AuditEventSubType._(
    '111499',
  );

  /// value111500
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111500 = AuditEventSubType._(
    '111500',
  );

  /// value111501
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111501 = AuditEventSubType._(
    '111501',
  );

  /// value111502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111502 = AuditEventSubType._(
    '111502',
  );

  /// value111503
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111503 = AuditEventSubType._(
    '111503',
  );

  /// value111504
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111504 = AuditEventSubType._(
    '111504',
  );

  /// value111505
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111505 = AuditEventSubType._(
    '111505',
  );

  /// value111506
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111506 = AuditEventSubType._(
    '111506',
  );

  /// value111507
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111507 = AuditEventSubType._(
    '111507',
  );

  /// value111508
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111508 = AuditEventSubType._(
    '111508',
  );

  /// value111509
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111509 = AuditEventSubType._(
    '111509',
  );

  /// value111510
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111510 = AuditEventSubType._(
    '111510',
  );

  /// value111511
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111511 = AuditEventSubType._(
    '111511',
  );

  /// value111512
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111512 = AuditEventSubType._(
    '111512',
  );

  /// value111513
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111513 = AuditEventSubType._(
    '111513',
  );

  /// value111514
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111514 = AuditEventSubType._(
    '111514',
  );

  /// value111515
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111515 = AuditEventSubType._(
    '111515',
  );

  /// value111516
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111516 = AuditEventSubType._(
    '111516',
  );

  /// value111517
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111517 = AuditEventSubType._(
    '111517',
  );

  /// value111518
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111518 = AuditEventSubType._(
    '111518',
  );

  /// value111519
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111519 = AuditEventSubType._(
    '111519',
  );

  /// value111520
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111520 = AuditEventSubType._(
    '111520',
  );

  /// value111521
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111521 = AuditEventSubType._(
    '111521',
  );

  /// value111522
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111522 = AuditEventSubType._(
    '111522',
  );

  /// value111523
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111523 = AuditEventSubType._(
    '111523',
  );

  /// value111524
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111524 = AuditEventSubType._(
    '111524',
  );

  /// value111525
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111525 = AuditEventSubType._(
    '111525',
  );

  /// value111526
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111526 = AuditEventSubType._(
    '111526',
  );

  /// value111527
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111527 = AuditEventSubType._(
    '111527',
  );

  /// value111528
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111528 = AuditEventSubType._(
    '111528',
  );

  /// value111529
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111529 = AuditEventSubType._(
    '111529',
  );

  /// value111530
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111530 = AuditEventSubType._(
    '111530',
  );

  /// value111531
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111531 = AuditEventSubType._(
    '111531',
  );

  /// value111532
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111532 = AuditEventSubType._(
    '111532',
  );

  /// value111533
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111533 = AuditEventSubType._(
    '111533',
  );

  /// value111534
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111534 = AuditEventSubType._(
    '111534',
  );

  /// value111535
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111535 = AuditEventSubType._(
    '111535',
  );

  /// value111536
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111536 = AuditEventSubType._(
    '111536',
  );

  /// value111537
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111537 = AuditEventSubType._(
    '111537',
  );

  /// value111538
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111538 = AuditEventSubType._(
    '111538',
  );

  /// value111539
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111539 = AuditEventSubType._(
    '111539',
  );

  /// value111540
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111540 = AuditEventSubType._(
    '111540',
  );

  /// value111541
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111541 = AuditEventSubType._(
    '111541',
  );

  /// value111542
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111542 = AuditEventSubType._(
    '111542',
  );

  /// value111543
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111543 = AuditEventSubType._(
    '111543',
  );

  /// value111544
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111544 = AuditEventSubType._(
    '111544',
  );

  /// value111545
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111545 = AuditEventSubType._(
    '111545',
  );

  /// value111546
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111546 = AuditEventSubType._(
    '111546',
  );

  /// value111547
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111547 = AuditEventSubType._(
    '111547',
  );

  /// value111548
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111548 = AuditEventSubType._(
    '111548',
  );

  /// value111549
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111549 = AuditEventSubType._(
    '111549',
  );

  /// value111550
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111550 = AuditEventSubType._(
    '111550',
  );

  /// value111551
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111551 = AuditEventSubType._(
    '111551',
  );

  /// value111552
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111552 = AuditEventSubType._(
    '111552',
  );

  /// value111553
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111553 = AuditEventSubType._(
    '111553',
  );

  /// value111554
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111554 = AuditEventSubType._(
    '111554',
  );

  /// value111555
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111555 = AuditEventSubType._(
    '111555',
  );

  /// value111556
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111556 = AuditEventSubType._(
    '111556',
  );

  /// value111557
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111557 = AuditEventSubType._(
    '111557',
  );

  /// value111558
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111558 = AuditEventSubType._(
    '111558',
  );

  /// value111559
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111559 = AuditEventSubType._(
    '111559',
  );

  /// value111560
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111560 = AuditEventSubType._(
    '111560',
  );

  /// value111561
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111561 = AuditEventSubType._(
    '111561',
  );

  /// value111562
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111562 = AuditEventSubType._(
    '111562',
  );

  /// value111563
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111563 = AuditEventSubType._(
    '111563',
  );

  /// value111564
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111564 = AuditEventSubType._(
    '111564',
  );

  /// value111565
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111565 = AuditEventSubType._(
    '111565',
  );

  /// value111566
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111566 = AuditEventSubType._(
    '111566',
  );

  /// value111567
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111567 = AuditEventSubType._(
    '111567',
  );

  /// value111568
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111568 = AuditEventSubType._(
    '111568',
  );

  /// value111569
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111569 = AuditEventSubType._(
    '111569',
  );

  /// value111570
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111570 = AuditEventSubType._(
    '111570',
  );

  /// value111571
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111571 = AuditEventSubType._(
    '111571',
  );

  /// value111572
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111572 = AuditEventSubType._(
    '111572',
  );

  /// value111573
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111573 = AuditEventSubType._(
    '111573',
  );

  /// value111574
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111574 = AuditEventSubType._(
    '111574',
  );

  /// value111575
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111575 = AuditEventSubType._(
    '111575',
  );

  /// value111576
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111576 = AuditEventSubType._(
    '111576',
  );

  /// value111577
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111577 = AuditEventSubType._(
    '111577',
  );

  /// value111578
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111578 = AuditEventSubType._(
    '111578',
  );

  /// value111579
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111579 = AuditEventSubType._(
    '111579',
  );

  /// value111580
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111580 = AuditEventSubType._(
    '111580',
  );

  /// value111581
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111581 = AuditEventSubType._(
    '111581',
  );

  /// value111582
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111582 = AuditEventSubType._(
    '111582',
  );

  /// value111583
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111583 = AuditEventSubType._(
    '111583',
  );

  /// value111584
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111584 = AuditEventSubType._(
    '111584',
  );

  /// value111585
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111585 = AuditEventSubType._(
    '111585',
  );

  /// value111586
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111586 = AuditEventSubType._(
    '111586',
  );

  /// value111587
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111587 = AuditEventSubType._(
    '111587',
  );

  /// value111590
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111590 = AuditEventSubType._(
    '111590',
  );

  /// value111591
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111591 = AuditEventSubType._(
    '111591',
  );

  /// value111592
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111592 = AuditEventSubType._(
    '111592',
  );

  /// value111593
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111593 = AuditEventSubType._(
    '111593',
  );

  /// value111601
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111601 = AuditEventSubType._(
    '111601',
  );

  /// value111602
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111602 = AuditEventSubType._(
    '111602',
  );

  /// value111603
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111603 = AuditEventSubType._(
    '111603',
  );

  /// value111604
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111604 = AuditEventSubType._(
    '111604',
  );

  /// value111605
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111605 = AuditEventSubType._(
    '111605',
  );

  /// value111606
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111606 = AuditEventSubType._(
    '111606',
  );

  /// value111607
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111607 = AuditEventSubType._(
    '111607',
  );

  /// value111609
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111609 = AuditEventSubType._(
    '111609',
  );

  /// value111621
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111621 = AuditEventSubType._(
    '111621',
  );

  /// value111622
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111622 = AuditEventSubType._(
    '111622',
  );

  /// value111623
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111623 = AuditEventSubType._(
    '111623',
  );

  /// value111625
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111625 = AuditEventSubType._(
    '111625',
  );

  /// value111626
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111626 = AuditEventSubType._(
    '111626',
  );

  /// value111627
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111627 = AuditEventSubType._(
    '111627',
  );

  /// value111628
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111628 = AuditEventSubType._(
    '111628',
  );

  /// value111629
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111629 = AuditEventSubType._(
    '111629',
  );

  /// value111630
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111630 = AuditEventSubType._(
    '111630',
  );

  /// value111631
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111631 = AuditEventSubType._(
    '111631',
  );

  /// value111632
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111632 = AuditEventSubType._(
    '111632',
  );

  /// value111633
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111633 = AuditEventSubType._(
    '111633',
  );

  /// value111634
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111634 = AuditEventSubType._(
    '111634',
  );

  /// value111635
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111635 = AuditEventSubType._(
    '111635',
  );

  /// value111636
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111636 = AuditEventSubType._(
    '111636',
  );

  /// value111637
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111637 = AuditEventSubType._(
    '111637',
  );

  /// value111638
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111638 = AuditEventSubType._(
    '111638',
  );

  /// value111641
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111641 = AuditEventSubType._(
    '111641',
  );

  /// value111642
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111642 = AuditEventSubType._(
    '111642',
  );

  /// value111643
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111643 = AuditEventSubType._(
    '111643',
  );

  /// value111644
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111644 = AuditEventSubType._(
    '111644',
  );

  /// value111645
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111645 = AuditEventSubType._(
    '111645',
  );

  /// value111646
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111646 = AuditEventSubType._(
    '111646',
  );

  /// value111671
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111671 = AuditEventSubType._(
    '111671',
  );

  /// value111672
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111672 = AuditEventSubType._(
    '111672',
  );

  /// value111673
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111673 = AuditEventSubType._(
    '111673',
  );

  /// value111674
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111674 = AuditEventSubType._(
    '111674',
  );

  /// value111675
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111675 = AuditEventSubType._(
    '111675',
  );

  /// value111676
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111676 = AuditEventSubType._(
    '111676',
  );

  /// value111677
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111677 = AuditEventSubType._(
    '111677',
  );

  /// value111678
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111678 = AuditEventSubType._(
    '111678',
  );

  /// value111679
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111679 = AuditEventSubType._(
    '111679',
  );

  /// value111680
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111680 = AuditEventSubType._(
    '111680',
  );

  /// value111685
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111685 = AuditEventSubType._(
    '111685',
  );

  /// value111686
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111686 = AuditEventSubType._(
    '111686',
  );

  /// value111687
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111687 = AuditEventSubType._(
    '111687',
  );

  /// value111688
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111688 = AuditEventSubType._(
    '111688',
  );

  /// value111689
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111689 = AuditEventSubType._(
    '111689',
  );

  /// value111690
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111690 = AuditEventSubType._(
    '111690',
  );

  /// value111691
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111691 = AuditEventSubType._(
    '111691',
  );

  /// value111692
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111692 = AuditEventSubType._(
    '111692',
  );

  /// value111693
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111693 = AuditEventSubType._(
    '111693',
  );

  /// value111694
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111694 = AuditEventSubType._(
    '111694',
  );

  /// value111695
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111695 = AuditEventSubType._(
    '111695',
  );

  /// value111696
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111696 = AuditEventSubType._(
    '111696',
  );

  /// value111697
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111697 = AuditEventSubType._(
    '111697',
  );

  /// value111698
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111698 = AuditEventSubType._(
    '111698',
  );

  /// value111700
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111700 = AuditEventSubType._(
    '111700',
  );

  /// value111701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111701 = AuditEventSubType._(
    '111701',
  );

  /// value111702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111702 = AuditEventSubType._(
    '111702',
  );

  /// value111703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111703 = AuditEventSubType._(
    '111703',
  );

  /// value111704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111704 = AuditEventSubType._(
    '111704',
  );

  /// value111705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111705 = AuditEventSubType._(
    '111705',
  );

  /// value111706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111706 = AuditEventSubType._(
    '111706',
  );

  /// value111707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111707 = AuditEventSubType._(
    '111707',
  );

  /// value111708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111708 = AuditEventSubType._(
    '111708',
  );

  /// value111709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111709 = AuditEventSubType._(
    '111709',
  );

  /// value111710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111710 = AuditEventSubType._(
    '111710',
  );

  /// value111711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111711 = AuditEventSubType._(
    '111711',
  );

  /// value111712
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111712 = AuditEventSubType._(
    '111712',
  );

  /// value111718
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111718 = AuditEventSubType._(
    '111718',
  );

  /// value111719
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111719 = AuditEventSubType._(
    '111719',
  );

  /// value111720
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111720 = AuditEventSubType._(
    '111720',
  );

  /// value111721
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111721 = AuditEventSubType._(
    '111721',
  );

  /// value111723
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111723 = AuditEventSubType._(
    '111723',
  );

  /// value111724
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111724 = AuditEventSubType._(
    '111724',
  );

  /// value111726
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111726 = AuditEventSubType._(
    '111726',
  );

  /// value111727
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111727 = AuditEventSubType._(
    '111727',
  );

  /// value111729
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111729 = AuditEventSubType._(
    '111729',
  );

  /// value111741
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111741 = AuditEventSubType._(
    '111741',
  );

  /// value111742
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111742 = AuditEventSubType._(
    '111742',
  );

  /// value111743
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111743 = AuditEventSubType._(
    '111743',
  );

  /// value111744
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111744 = AuditEventSubType._(
    '111744',
  );

  /// value111745
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111745 = AuditEventSubType._(
    '111745',
  );

  /// value111746
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111746 = AuditEventSubType._(
    '111746',
  );

  /// value111747
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111747 = AuditEventSubType._(
    '111747',
  );

  /// value111748
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111748 = AuditEventSubType._(
    '111748',
  );

  /// value111749
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111749 = AuditEventSubType._(
    '111749',
  );

  /// value111750
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111750 = AuditEventSubType._(
    '111750',
  );

  /// value111751
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111751 = AuditEventSubType._(
    '111751',
  );

  /// value111752
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111752 = AuditEventSubType._(
    '111752',
  );

  /// value111753
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111753 = AuditEventSubType._(
    '111753',
  );

  /// value111754
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111754 = AuditEventSubType._(
    '111754',
  );

  /// value111755
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111755 = AuditEventSubType._(
    '111755',
  );

  /// value111756
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111756 = AuditEventSubType._(
    '111756',
  );

  /// value111760
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111760 = AuditEventSubType._(
    '111760',
  );

  /// value111761
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111761 = AuditEventSubType._(
    '111761',
  );

  /// value111762
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111762 = AuditEventSubType._(
    '111762',
  );

  /// value111763
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111763 = AuditEventSubType._(
    '111763',
  );

  /// value111764
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111764 = AuditEventSubType._(
    '111764',
  );

  /// value111765
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111765 = AuditEventSubType._(
    '111765',
  );

  /// value111766
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111766 = AuditEventSubType._(
    '111766',
  );

  /// value111767
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111767 = AuditEventSubType._(
    '111767',
  );

  /// value111768
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111768 = AuditEventSubType._(
    '111768',
  );

  /// value111769
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111769 = AuditEventSubType._(
    '111769',
  );

  /// value111770
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111770 = AuditEventSubType._(
    '111770',
  );

  /// value111771
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111771 = AuditEventSubType._(
    '111771',
  );

  /// value111772
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111772 = AuditEventSubType._(
    '111772',
  );

  /// value111773
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111773 = AuditEventSubType._(
    '111773',
  );

  /// value111776
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111776 = AuditEventSubType._(
    '111776',
  );

  /// value111777
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111777 = AuditEventSubType._(
    '111777',
  );

  /// value111778
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111778 = AuditEventSubType._(
    '111778',
  );

  /// value111779
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111779 = AuditEventSubType._(
    '111779',
  );

  /// value111780
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111780 = AuditEventSubType._(
    '111780',
  );

  /// value111781
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111781 = AuditEventSubType._(
    '111781',
  );

  /// value111782
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111782 = AuditEventSubType._(
    '111782',
  );

  /// value111783
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111783 = AuditEventSubType._(
    '111783',
  );

  /// value111786
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111786 = AuditEventSubType._(
    '111786',
  );

  /// value111787
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111787 = AuditEventSubType._(
    '111787',
  );

  /// value111791
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111791 = AuditEventSubType._(
    '111791',
  );

  /// value111792
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111792 = AuditEventSubType._(
    '111792',
  );

  /// value111800
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111800 = AuditEventSubType._(
    '111800',
  );

  /// value111801
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111801 = AuditEventSubType._(
    '111801',
  );

  /// value111802
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111802 = AuditEventSubType._(
    '111802',
  );

  /// value111803
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111803 = AuditEventSubType._(
    '111803',
  );

  /// value111804
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111804 = AuditEventSubType._(
    '111804',
  );

  /// value111805
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111805 = AuditEventSubType._(
    '111805',
  );

  /// value111806
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111806 = AuditEventSubType._(
    '111806',
  );

  /// value111807
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111807 = AuditEventSubType._(
    '111807',
  );

  /// value111808
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111808 = AuditEventSubType._(
    '111808',
  );

  /// value111809
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111809 = AuditEventSubType._(
    '111809',
  );

  /// value111810
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111810 = AuditEventSubType._(
    '111810',
  );

  /// value111811
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111811 = AuditEventSubType._(
    '111811',
  );

  /// value111812
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111812 = AuditEventSubType._(
    '111812',
  );

  /// value111813
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111813 = AuditEventSubType._(
    '111813',
  );

  /// value111814
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111814 = AuditEventSubType._(
    '111814',
  );

  /// value111815
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111815 = AuditEventSubType._(
    '111815',
  );

  /// value111816
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111816 = AuditEventSubType._(
    '111816',
  );

  /// value111817
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111817 = AuditEventSubType._(
    '111817',
  );

  /// value111818
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111818 = AuditEventSubType._(
    '111818',
  );

  /// value111819
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111819 = AuditEventSubType._(
    '111819',
  );

  /// value111820
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111820 = AuditEventSubType._(
    '111820',
  );

  /// value111821
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111821 = AuditEventSubType._(
    '111821',
  );

  /// value111822
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111822 = AuditEventSubType._(
    '111822',
  );

  /// value111823
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111823 = AuditEventSubType._(
    '111823',
  );

  /// value111824
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111824 = AuditEventSubType._(
    '111824',
  );

  /// value111825
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111825 = AuditEventSubType._(
    '111825',
  );

  /// value111826
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111826 = AuditEventSubType._(
    '111826',
  );

  /// value111827
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111827 = AuditEventSubType._(
    '111827',
  );

  /// value111828
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111828 = AuditEventSubType._(
    '111828',
  );

  /// value111829
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111829 = AuditEventSubType._(
    '111829',
  );

  /// value111830
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111830 = AuditEventSubType._(
    '111830',
  );

  /// value111831
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111831 = AuditEventSubType._(
    '111831',
  );

  /// value111832
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111832 = AuditEventSubType._(
    '111832',
  );

  /// value111833
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111833 = AuditEventSubType._(
    '111833',
  );

  /// value111834
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111834 = AuditEventSubType._(
    '111834',
  );

  /// value111835
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111835 = AuditEventSubType._(
    '111835',
  );

  /// value111836
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111836 = AuditEventSubType._(
    '111836',
  );

  /// value111837
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111837 = AuditEventSubType._(
    '111837',
  );

  /// value111838
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111838 = AuditEventSubType._(
    '111838',
  );

  /// value111839
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111839 = AuditEventSubType._(
    '111839',
  );

  /// value111840
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111840 = AuditEventSubType._(
    '111840',
  );

  /// value111841
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111841 = AuditEventSubType._(
    '111841',
  );

  /// value111842
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111842 = AuditEventSubType._(
    '111842',
  );

  /// value111843
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111843 = AuditEventSubType._(
    '111843',
  );

  /// value111844
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111844 = AuditEventSubType._(
    '111844',
  );

  /// value111845
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111845 = AuditEventSubType._(
    '111845',
  );

  /// value111846
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111846 = AuditEventSubType._(
    '111846',
  );

  /// value111847
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111847 = AuditEventSubType._(
    '111847',
  );

  /// value111848
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111848 = AuditEventSubType._(
    '111848',
  );

  /// value111849
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111849 = AuditEventSubType._(
    '111849',
  );

  /// value111850
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111850 = AuditEventSubType._(
    '111850',
  );

  /// value111851
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111851 = AuditEventSubType._(
    '111851',
  );

  /// value111852
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111852 = AuditEventSubType._(
    '111852',
  );

  /// value111853
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111853 = AuditEventSubType._(
    '111853',
  );

  /// value111854
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111854 = AuditEventSubType._(
    '111854',
  );

  /// value111855
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111855 = AuditEventSubType._(
    '111855',
  );

  /// value111856
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111856 = AuditEventSubType._(
    '111856',
  );

  /// value111900
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111900 = AuditEventSubType._(
    '111900',
  );

  /// value111901
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111901 = AuditEventSubType._(
    '111901',
  );

  /// value111902
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111902 = AuditEventSubType._(
    '111902',
  );

  /// value111903
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111903 = AuditEventSubType._(
    '111903',
  );

  /// value111904
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111904 = AuditEventSubType._(
    '111904',
  );

  /// value111905
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111905 = AuditEventSubType._(
    '111905',
  );

  /// value111906
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111906 = AuditEventSubType._(
    '111906',
  );

  /// value111907
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111907 = AuditEventSubType._(
    '111907',
  );

  /// value111908
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111908 = AuditEventSubType._(
    '111908',
  );

  /// value111909
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111909 = AuditEventSubType._(
    '111909',
  );

  /// value111910
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111910 = AuditEventSubType._(
    '111910',
  );

  /// value111911
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111911 = AuditEventSubType._(
    '111911',
  );

  /// value111912
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111912 = AuditEventSubType._(
    '111912',
  );

  /// value111913
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111913 = AuditEventSubType._(
    '111913',
  );

  /// value111914
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111914 = AuditEventSubType._(
    '111914',
  );

  /// value111915
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111915 = AuditEventSubType._(
    '111915',
  );

  /// value111916
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111916 = AuditEventSubType._(
    '111916',
  );

  /// value111917
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111917 = AuditEventSubType._(
    '111917',
  );

  /// value111918
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111918 = AuditEventSubType._(
    '111918',
  );

  /// value111919
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111919 = AuditEventSubType._(
    '111919',
  );

  /// value111920
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111920 = AuditEventSubType._(
    '111920',
  );

  /// value111921
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111921 = AuditEventSubType._(
    '111921',
  );

  /// value111922
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111922 = AuditEventSubType._(
    '111922',
  );

  /// value111923
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111923 = AuditEventSubType._(
    '111923',
  );

  /// value111924
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111924 = AuditEventSubType._(
    '111924',
  );

  /// value111925
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111925 = AuditEventSubType._(
    '111925',
  );

  /// value111926
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111926 = AuditEventSubType._(
    '111926',
  );

  /// value111927
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111927 = AuditEventSubType._(
    '111927',
  );

  /// value111928
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111928 = AuditEventSubType._(
    '111928',
  );

  /// value111929
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111929 = AuditEventSubType._(
    '111929',
  );

  /// value111930
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111930 = AuditEventSubType._(
    '111930',
  );

  /// value111931
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111931 = AuditEventSubType._(
    '111931',
  );

  /// value111932
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111932 = AuditEventSubType._(
    '111932',
  );

  /// value111933
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111933 = AuditEventSubType._(
    '111933',
  );

  /// value111934
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111934 = AuditEventSubType._(
    '111934',
  );

  /// value111935
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111935 = AuditEventSubType._(
    '111935',
  );

  /// value111936
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111936 = AuditEventSubType._(
    '111936',
  );

  /// value111937
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111937 = AuditEventSubType._(
    '111937',
  );

  /// value111938
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111938 = AuditEventSubType._(
    '111938',
  );

  /// value111939
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111939 = AuditEventSubType._(
    '111939',
  );

  /// value111940
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111940 = AuditEventSubType._(
    '111940',
  );

  /// value111941
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111941 = AuditEventSubType._(
    '111941',
  );

  /// value111942
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111942 = AuditEventSubType._(
    '111942',
  );

  /// value111943
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111943 = AuditEventSubType._(
    '111943',
  );

  /// value111944
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111944 = AuditEventSubType._(
    '111944',
  );

  /// value111945
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111945 = AuditEventSubType._(
    '111945',
  );

  /// value111946
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111946 = AuditEventSubType._(
    '111946',
  );

  /// value111947
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value111947 = AuditEventSubType._(
    '111947',
  );

  /// value112000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112000 = AuditEventSubType._(
    '112000',
  );

  /// value112001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112001 = AuditEventSubType._(
    '112001',
  );

  /// value112002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112002 = AuditEventSubType._(
    '112002',
  );

  /// value112003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112003 = AuditEventSubType._(
    '112003',
  );

  /// value112004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112004 = AuditEventSubType._(
    '112004',
  );

  /// value112005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112005 = AuditEventSubType._(
    '112005',
  );

  /// value112006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112006 = AuditEventSubType._(
    '112006',
  );

  /// value112007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112007 = AuditEventSubType._(
    '112007',
  );

  /// value112008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112008 = AuditEventSubType._(
    '112008',
  );

  /// value112009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112009 = AuditEventSubType._(
    '112009',
  );

  /// value112010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112010 = AuditEventSubType._(
    '112010',
  );

  /// value112011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112011 = AuditEventSubType._(
    '112011',
  );

  /// value112012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112012 = AuditEventSubType._(
    '112012',
  );

  /// value112013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112013 = AuditEventSubType._(
    '112013',
  );

  /// value112014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112014 = AuditEventSubType._(
    '112014',
  );

  /// value112015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112015 = AuditEventSubType._(
    '112015',
  );

  /// value112016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112016 = AuditEventSubType._(
    '112016',
  );

  /// value112017
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112017 = AuditEventSubType._(
    '112017',
  );

  /// value112018
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112018 = AuditEventSubType._(
    '112018',
  );

  /// value112019
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112019 = AuditEventSubType._(
    '112019',
  );

  /// value112020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112020 = AuditEventSubType._(
    '112020',
  );

  /// value112021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112021 = AuditEventSubType._(
    '112021',
  );

  /// value112022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112022 = AuditEventSubType._(
    '112022',
  );

  /// value112023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112023 = AuditEventSubType._(
    '112023',
  );

  /// value112024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112024 = AuditEventSubType._(
    '112024',
  );

  /// value112025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112025 = AuditEventSubType._(
    '112025',
  );

  /// value112026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112026 = AuditEventSubType._(
    '112026',
  );

  /// value112027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112027 = AuditEventSubType._(
    '112027',
  );

  /// value112028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112028 = AuditEventSubType._(
    '112028',
  );

  /// value112029
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112029 = AuditEventSubType._(
    '112029',
  );

  /// value112030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112030 = AuditEventSubType._(
    '112030',
  );

  /// value112031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112031 = AuditEventSubType._(
    '112031',
  );

  /// value112032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112032 = AuditEventSubType._(
    '112032',
  );

  /// value112033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112033 = AuditEventSubType._(
    '112033',
  );

  /// value112034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112034 = AuditEventSubType._(
    '112034',
  );

  /// value112035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112035 = AuditEventSubType._(
    '112035',
  );

  /// value112036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112036 = AuditEventSubType._(
    '112036',
  );

  /// value112037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112037 = AuditEventSubType._(
    '112037',
  );

  /// value112038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112038 = AuditEventSubType._(
    '112038',
  );

  /// value112039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112039 = AuditEventSubType._(
    '112039',
  );

  /// value112040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112040 = AuditEventSubType._(
    '112040',
  );

  /// value112041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112041 = AuditEventSubType._(
    '112041',
  );

  /// value112042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112042 = AuditEventSubType._(
    '112042',
  );

  /// value112043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112043 = AuditEventSubType._(
    '112043',
  );

  /// value112044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112044 = AuditEventSubType._(
    '112044',
  );

  /// value112045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112045 = AuditEventSubType._(
    '112045',
  );

  /// value112046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112046 = AuditEventSubType._(
    '112046',
  );

  /// value112047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112047 = AuditEventSubType._(
    '112047',
  );

  /// value112048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112048 = AuditEventSubType._(
    '112048',
  );

  /// value112049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112049 = AuditEventSubType._(
    '112049',
  );

  /// value112050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112050 = AuditEventSubType._(
    '112050',
  );

  /// value112051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112051 = AuditEventSubType._(
    '112051',
  );

  /// value112052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112052 = AuditEventSubType._(
    '112052',
  );

  /// value112053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112053 = AuditEventSubType._(
    '112053',
  );

  /// value112054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112054 = AuditEventSubType._(
    '112054',
  );

  /// value112055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112055 = AuditEventSubType._(
    '112055',
  );

  /// value112056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112056 = AuditEventSubType._(
    '112056',
  );

  /// value112057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112057 = AuditEventSubType._(
    '112057',
  );

  /// value112058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112058 = AuditEventSubType._(
    '112058',
  );

  /// value112059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112059 = AuditEventSubType._(
    '112059',
  );

  /// value112060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112060 = AuditEventSubType._(
    '112060',
  );

  /// value112061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112061 = AuditEventSubType._(
    '112061',
  );

  /// value112062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112062 = AuditEventSubType._(
    '112062',
  );

  /// value112063
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112063 = AuditEventSubType._(
    '112063',
  );

  /// value112064
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112064 = AuditEventSubType._(
    '112064',
  );

  /// value112065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112065 = AuditEventSubType._(
    '112065',
  );

  /// value112066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112066 = AuditEventSubType._(
    '112066',
  );

  /// value112067
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112067 = AuditEventSubType._(
    '112067',
  );

  /// value112068
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112068 = AuditEventSubType._(
    '112068',
  );

  /// value112069
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112069 = AuditEventSubType._(
    '112069',
  );

  /// value112070
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112070 = AuditEventSubType._(
    '112070',
  );

  /// value112071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112071 = AuditEventSubType._(
    '112071',
  );

  /// value112072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112072 = AuditEventSubType._(
    '112072',
  );

  /// value112073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112073 = AuditEventSubType._(
    '112073',
  );

  /// value112074
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112074 = AuditEventSubType._(
    '112074',
  );

  /// value112075
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112075 = AuditEventSubType._(
    '112075',
  );

  /// value112076
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112076 = AuditEventSubType._(
    '112076',
  );

  /// value112077
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112077 = AuditEventSubType._(
    '112077',
  );

  /// value112078
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112078 = AuditEventSubType._(
    '112078',
  );

  /// value112079
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112079 = AuditEventSubType._(
    '112079',
  );

  /// value112080
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112080 = AuditEventSubType._(
    '112080',
  );

  /// value112081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112081 = AuditEventSubType._(
    '112081',
  );

  /// value112082
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112082 = AuditEventSubType._(
    '112082',
  );

  /// value112083
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112083 = AuditEventSubType._(
    '112083',
  );

  /// value112084
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112084 = AuditEventSubType._(
    '112084',
  );

  /// value112085
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112085 = AuditEventSubType._(
    '112085',
  );

  /// value112086
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112086 = AuditEventSubType._(
    '112086',
  );

  /// value112087
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112087 = AuditEventSubType._(
    '112087',
  );

  /// value112088
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112088 = AuditEventSubType._(
    '112088',
  );

  /// value112089
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112089 = AuditEventSubType._(
    '112089',
  );

  /// value112090
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112090 = AuditEventSubType._(
    '112090',
  );

  /// value112091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112091 = AuditEventSubType._(
    '112091',
  );

  /// value112092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112092 = AuditEventSubType._(
    '112092',
  );

  /// value112093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112093 = AuditEventSubType._(
    '112093',
  );

  /// value112094
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112094 = AuditEventSubType._(
    '112094',
  );

  /// value112095
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112095 = AuditEventSubType._(
    '112095',
  );

  /// value112096
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112096 = AuditEventSubType._(
    '112096',
  );

  /// value112097
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112097 = AuditEventSubType._(
    '112097',
  );

  /// value112098
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112098 = AuditEventSubType._(
    '112098',
  );

  /// value112099
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112099 = AuditEventSubType._(
    '112099',
  );

  /// value112100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112100 = AuditEventSubType._(
    '112100',
  );

  /// value112101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112101 = AuditEventSubType._(
    '112101',
  );

  /// value112102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112102 = AuditEventSubType._(
    '112102',
  );

  /// value112103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112103 = AuditEventSubType._(
    '112103',
  );

  /// value112104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112104 = AuditEventSubType._(
    '112104',
  );

  /// value112105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112105 = AuditEventSubType._(
    '112105',
  );

  /// value112106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112106 = AuditEventSubType._(
    '112106',
  );

  /// value112107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112107 = AuditEventSubType._(
    '112107',
  );

  /// value112108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112108 = AuditEventSubType._(
    '112108',
  );

  /// value112109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112109 = AuditEventSubType._(
    '112109',
  );

  /// value112110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112110 = AuditEventSubType._(
    '112110',
  );

  /// value112111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112111 = AuditEventSubType._(
    '112111',
  );

  /// value112112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112112 = AuditEventSubType._(
    '112112',
  );

  /// value112113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112113 = AuditEventSubType._(
    '112113',
  );

  /// value112114
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112114 = AuditEventSubType._(
    '112114',
  );

  /// value112115
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112115 = AuditEventSubType._(
    '112115',
  );

  /// value112116
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112116 = AuditEventSubType._(
    '112116',
  );

  /// value112117
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112117 = AuditEventSubType._(
    '112117',
  );

  /// value112118
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112118 = AuditEventSubType._(
    '112118',
  );

  /// value112119
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112119 = AuditEventSubType._(
    '112119',
  );

  /// value112120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112120 = AuditEventSubType._(
    '112120',
  );

  /// value112121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112121 = AuditEventSubType._(
    '112121',
  );

  /// value112122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112122 = AuditEventSubType._(
    '112122',
  );

  /// value112123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112123 = AuditEventSubType._(
    '112123',
  );

  /// value112124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112124 = AuditEventSubType._(
    '112124',
  );

  /// value112125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112125 = AuditEventSubType._(
    '112125',
  );

  /// value112126
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112126 = AuditEventSubType._(
    '112126',
  );

  /// value112127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112127 = AuditEventSubType._(
    '112127',
  );

  /// value112128
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112128 = AuditEventSubType._(
    '112128',
  );

  /// value112129
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112129 = AuditEventSubType._(
    '112129',
  );

  /// value112130
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112130 = AuditEventSubType._(
    '112130',
  );

  /// value112131
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112131 = AuditEventSubType._(
    '112131',
  );

  /// value112132
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112132 = AuditEventSubType._(
    '112132',
  );

  /// value112133
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112133 = AuditEventSubType._(
    '112133',
  );

  /// value112134
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112134 = AuditEventSubType._(
    '112134',
  );

  /// value112135
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112135 = AuditEventSubType._(
    '112135',
  );

  /// value112136
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112136 = AuditEventSubType._(
    '112136',
  );

  /// value112137
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112137 = AuditEventSubType._(
    '112137',
  );

  /// value112138
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112138 = AuditEventSubType._(
    '112138',
  );

  /// value112139
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112139 = AuditEventSubType._(
    '112139',
  );

  /// value112140
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112140 = AuditEventSubType._(
    '112140',
  );

  /// value112141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112141 = AuditEventSubType._(
    '112141',
  );

  /// value112142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112142 = AuditEventSubType._(
    '112142',
  );

  /// value112143
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112143 = AuditEventSubType._(
    '112143',
  );

  /// value112144
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112144 = AuditEventSubType._(
    '112144',
  );

  /// value112145
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112145 = AuditEventSubType._(
    '112145',
  );

  /// value112146
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112146 = AuditEventSubType._(
    '112146',
  );

  /// value112147
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112147 = AuditEventSubType._(
    '112147',
  );

  /// value112148
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112148 = AuditEventSubType._(
    '112148',
  );

  /// value112149
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112149 = AuditEventSubType._(
    '112149',
  );

  /// value112150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112150 = AuditEventSubType._(
    '112150',
  );

  /// value112151
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112151 = AuditEventSubType._(
    '112151',
  );

  /// value112152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112152 = AuditEventSubType._(
    '112152',
  );

  /// value112153
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112153 = AuditEventSubType._(
    '112153',
  );

  /// value112154
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112154 = AuditEventSubType._(
    '112154',
  );

  /// value112155
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112155 = AuditEventSubType._(
    '112155',
  );

  /// value112156
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112156 = AuditEventSubType._(
    '112156',
  );

  /// value112157
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112157 = AuditEventSubType._(
    '112157',
  );

  /// value112158
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112158 = AuditEventSubType._(
    '112158',
  );

  /// value112159
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112159 = AuditEventSubType._(
    '112159',
  );

  /// value112160
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112160 = AuditEventSubType._(
    '112160',
  );

  /// value112161
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112161 = AuditEventSubType._(
    '112161',
  );

  /// value112162
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112162 = AuditEventSubType._(
    '112162',
  );

  /// value112163
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112163 = AuditEventSubType._(
    '112163',
  );

  /// value112164
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112164 = AuditEventSubType._(
    '112164',
  );

  /// value112165
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112165 = AuditEventSubType._(
    '112165',
  );

  /// value112166
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112166 = AuditEventSubType._(
    '112166',
  );

  /// value112167
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112167 = AuditEventSubType._(
    '112167',
  );

  /// value112168
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112168 = AuditEventSubType._(
    '112168',
  );

  /// value112169
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112169 = AuditEventSubType._(
    '112169',
  );

  /// value112170
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112170 = AuditEventSubType._(
    '112170',
  );

  /// value112171
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112171 = AuditEventSubType._(
    '112171',
  );

  /// value112172
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112172 = AuditEventSubType._(
    '112172',
  );

  /// value112173
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112173 = AuditEventSubType._(
    '112173',
  );

  /// value112174
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112174 = AuditEventSubType._(
    '112174',
  );

  /// value112175
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112175 = AuditEventSubType._(
    '112175',
  );

  /// value112176
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112176 = AuditEventSubType._(
    '112176',
  );

  /// value112177
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112177 = AuditEventSubType._(
    '112177',
  );

  /// value112178
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112178 = AuditEventSubType._(
    '112178',
  );

  /// value112179
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112179 = AuditEventSubType._(
    '112179',
  );

  /// value112180
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112180 = AuditEventSubType._(
    '112180',
  );

  /// value112181
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112181 = AuditEventSubType._(
    '112181',
  );

  /// value112182
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112182 = AuditEventSubType._(
    '112182',
  );

  /// value112183
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112183 = AuditEventSubType._(
    '112183',
  );

  /// value112184
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112184 = AuditEventSubType._(
    '112184',
  );

  /// value112185
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112185 = AuditEventSubType._(
    '112185',
  );

  /// value112186
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112186 = AuditEventSubType._(
    '112186',
  );

  /// value112187
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112187 = AuditEventSubType._(
    '112187',
  );

  /// value112188
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112188 = AuditEventSubType._(
    '112188',
  );

  /// value112189
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112189 = AuditEventSubType._(
    '112189',
  );

  /// value112191
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112191 = AuditEventSubType._(
    '112191',
  );

  /// value112192
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112192 = AuditEventSubType._(
    '112192',
  );

  /// value112193
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112193 = AuditEventSubType._(
    '112193',
  );

  /// value112194
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112194 = AuditEventSubType._(
    '112194',
  );

  /// value112195
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112195 = AuditEventSubType._(
    '112195',
  );

  /// value112196
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112196 = AuditEventSubType._(
    '112196',
  );

  /// value112197
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112197 = AuditEventSubType._(
    '112197',
  );

  /// value112198
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112198 = AuditEventSubType._(
    '112198',
  );

  /// value112199
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112199 = AuditEventSubType._(
    '112199',
  );

  /// value112200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112200 = AuditEventSubType._(
    '112200',
  );

  /// value112201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112201 = AuditEventSubType._(
    '112201',
  );

  /// value112220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112220 = AuditEventSubType._(
    '112220',
  );

  /// value112222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112222 = AuditEventSubType._(
    '112222',
  );

  /// value112224
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112224 = AuditEventSubType._(
    '112224',
  );

  /// value112225
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112225 = AuditEventSubType._(
    '112225',
  );

  /// value112226
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112226 = AuditEventSubType._(
    '112226',
  );

  /// value112227
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112227 = AuditEventSubType._(
    '112227',
  );

  /// value112228
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112228 = AuditEventSubType._(
    '112228',
  );

  /// value112229
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112229 = AuditEventSubType._(
    '112229',
  );

  /// value112232
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112232 = AuditEventSubType._(
    '112232',
  );

  /// value112233
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112233 = AuditEventSubType._(
    '112233',
  );

  /// value112238
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112238 = AuditEventSubType._(
    '112238',
  );

  /// value112240
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112240 = AuditEventSubType._(
    '112240',
  );

  /// value112241
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112241 = AuditEventSubType._(
    '112241',
  );

  /// value112242
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112242 = AuditEventSubType._(
    '112242',
  );

  /// value112243
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112243 = AuditEventSubType._(
    '112243',
  );

  /// value112244
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112244 = AuditEventSubType._(
    '112244',
  );

  /// value112248
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112248 = AuditEventSubType._(
    '112248',
  );

  /// value112249
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112249 = AuditEventSubType._(
    '112249',
  );

  /// value112300
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112300 = AuditEventSubType._(
    '112300',
  );

  /// value112301
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112301 = AuditEventSubType._(
    '112301',
  );

  /// value112302
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112302 = AuditEventSubType._(
    '112302',
  );

  /// value112303
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112303 = AuditEventSubType._(
    '112303',
  );

  /// value112304
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112304 = AuditEventSubType._(
    '112304',
  );

  /// value112305
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112305 = AuditEventSubType._(
    '112305',
  );

  /// value112306
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112306 = AuditEventSubType._(
    '112306',
  );

  /// value112307
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112307 = AuditEventSubType._(
    '112307',
  );

  /// value112308
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112308 = AuditEventSubType._(
    '112308',
  );

  /// value112309
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112309 = AuditEventSubType._(
    '112309',
  );

  /// value112310
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112310 = AuditEventSubType._(
    '112310',
  );

  /// value112311
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112311 = AuditEventSubType._(
    '112311',
  );

  /// value112312
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112312 = AuditEventSubType._(
    '112312',
  );

  /// value112313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112313 = AuditEventSubType._(
    '112313',
  );

  /// value112314
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112314 = AuditEventSubType._(
    '112314',
  );

  /// value112315
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112315 = AuditEventSubType._(
    '112315',
  );

  /// value112316
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112316 = AuditEventSubType._(
    '112316',
  );

  /// value112317
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112317 = AuditEventSubType._(
    '112317',
  );

  /// value112318
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112318 = AuditEventSubType._(
    '112318',
  );

  /// value112319
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112319 = AuditEventSubType._(
    '112319',
  );

  /// value112320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112320 = AuditEventSubType._(
    '112320',
  );

  /// value112321
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112321 = AuditEventSubType._(
    '112321',
  );

  /// value112325
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112325 = AuditEventSubType._(
    '112325',
  );

  /// value112340
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112340 = AuditEventSubType._(
    '112340',
  );

  /// value112341
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112341 = AuditEventSubType._(
    '112341',
  );

  /// value112342
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112342 = AuditEventSubType._(
    '112342',
  );

  /// value112343
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112343 = AuditEventSubType._(
    '112343',
  );

  /// value112344
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112344 = AuditEventSubType._(
    '112344',
  );

  /// value112345
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112345 = AuditEventSubType._(
    '112345',
  );

  /// value112346
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112346 = AuditEventSubType._(
    '112346',
  );

  /// value112347
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112347 = AuditEventSubType._(
    '112347',
  );

  /// value112348
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112348 = AuditEventSubType._(
    '112348',
  );

  /// value112350
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112350 = AuditEventSubType._(
    '112350',
  );

  /// value112351
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112351 = AuditEventSubType._(
    '112351',
  );

  /// value112352
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112352 = AuditEventSubType._(
    '112352',
  );

  /// value112353
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112353 = AuditEventSubType._(
    '112353',
  );

  /// value112354
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112354 = AuditEventSubType._(
    '112354',
  );

  /// value112355
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112355 = AuditEventSubType._(
    '112355',
  );

  /// value112356
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112356 = AuditEventSubType._(
    '112356',
  );

  /// value112357
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112357 = AuditEventSubType._(
    '112357',
  );

  /// value112358
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112358 = AuditEventSubType._(
    '112358',
  );

  /// value112359
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112359 = AuditEventSubType._(
    '112359',
  );

  /// value112360
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112360 = AuditEventSubType._(
    '112360',
  );

  /// value112361
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112361 = AuditEventSubType._(
    '112361',
  );

  /// value112362
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112362 = AuditEventSubType._(
    '112362',
  );

  /// value112363
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112363 = AuditEventSubType._(
    '112363',
  );

  /// value112364
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112364 = AuditEventSubType._(
    '112364',
  );

  /// value112365
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112365 = AuditEventSubType._(
    '112365',
  );

  /// value112366
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112366 = AuditEventSubType._(
    '112366',
  );

  /// value112367
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112367 = AuditEventSubType._(
    '112367',
  );

  /// value112368
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112368 = AuditEventSubType._(
    '112368',
  );

  /// value112369
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112369 = AuditEventSubType._(
    '112369',
  );

  /// value112370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112370 = AuditEventSubType._(
    '112370',
  );

  /// value112371
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112371 = AuditEventSubType._(
    '112371',
  );

  /// value112372
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112372 = AuditEventSubType._(
    '112372',
  );

  /// value112373
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112373 = AuditEventSubType._(
    '112373',
  );

  /// value112374
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112374 = AuditEventSubType._(
    '112374',
  );

  /// value112375
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112375 = AuditEventSubType._(
    '112375',
  );

  /// value112376
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112376 = AuditEventSubType._(
    '112376',
  );

  /// value112377
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112377 = AuditEventSubType._(
    '112377',
  );

  /// value112378
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112378 = AuditEventSubType._(
    '112378',
  );

  /// value112379
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112379 = AuditEventSubType._(
    '112379',
  );

  /// value112380
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112380 = AuditEventSubType._(
    '112380',
  );

  /// value112381
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112381 = AuditEventSubType._(
    '112381',
  );

  /// value112700
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112700 = AuditEventSubType._(
    '112700',
  );

  /// value112701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112701 = AuditEventSubType._(
    '112701',
  );

  /// value112702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112702 = AuditEventSubType._(
    '112702',
  );

  /// value112703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112703 = AuditEventSubType._(
    '112703',
  );

  /// value112704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112704 = AuditEventSubType._(
    '112704',
  );

  /// value112705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112705 = AuditEventSubType._(
    '112705',
  );

  /// value112706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112706 = AuditEventSubType._(
    '112706',
  );

  /// value112707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112707 = AuditEventSubType._(
    '112707',
  );

  /// value112708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112708 = AuditEventSubType._(
    '112708',
  );

  /// value112709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112709 = AuditEventSubType._(
    '112709',
  );

  /// value112710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112710 = AuditEventSubType._(
    '112710',
  );

  /// value112711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112711 = AuditEventSubType._(
    '112711',
  );

  /// value112712
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112712 = AuditEventSubType._(
    '112712',
  );

  /// value112713
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112713 = AuditEventSubType._(
    '112713',
  );

  /// value112714
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112714 = AuditEventSubType._(
    '112714',
  );

  /// value112715
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112715 = AuditEventSubType._(
    '112715',
  );

  /// value112716
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112716 = AuditEventSubType._(
    '112716',
  );

  /// value112717
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112717 = AuditEventSubType._(
    '112717',
  );

  /// value112718
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112718 = AuditEventSubType._(
    '112718',
  );

  /// value112719
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112719 = AuditEventSubType._(
    '112719',
  );

  /// value112720
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112720 = AuditEventSubType._(
    '112720',
  );

  /// value112721
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value112721 = AuditEventSubType._(
    '112721',
  );

  /// value113000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113000 = AuditEventSubType._(
    '113000',
  );

  /// value113001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113001 = AuditEventSubType._(
    '113001',
  );

  /// value113002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113002 = AuditEventSubType._(
    '113002',
  );

  /// value113003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113003 = AuditEventSubType._(
    '113003',
  );

  /// value113004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113004 = AuditEventSubType._(
    '113004',
  );

  /// value113005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113005 = AuditEventSubType._(
    '113005',
  );

  /// value113006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113006 = AuditEventSubType._(
    '113006',
  );

  /// value113007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113007 = AuditEventSubType._(
    '113007',
  );

  /// value113008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113008 = AuditEventSubType._(
    '113008',
  );

  /// value113009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113009 = AuditEventSubType._(
    '113009',
  );

  /// value113010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113010 = AuditEventSubType._(
    '113010',
  );

  /// value113011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113011 = AuditEventSubType._(
    '113011',
  );

  /// value113012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113012 = AuditEventSubType._(
    '113012',
  );

  /// value113013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113013 = AuditEventSubType._(
    '113013',
  );

  /// value113014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113014 = AuditEventSubType._(
    '113014',
  );

  /// value113015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113015 = AuditEventSubType._(
    '113015',
  );

  /// value113016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113016 = AuditEventSubType._(
    '113016',
  );

  /// value113017
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113017 = AuditEventSubType._(
    '113017',
  );

  /// value113018
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113018 = AuditEventSubType._(
    '113018',
  );

  /// value113020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113020 = AuditEventSubType._(
    '113020',
  );

  /// value113021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113021 = AuditEventSubType._(
    '113021',
  );

  /// value113026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113026 = AuditEventSubType._(
    '113026',
  );

  /// value113030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113030 = AuditEventSubType._(
    '113030',
  );

  /// value113031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113031 = AuditEventSubType._(
    '113031',
  );

  /// value113032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113032 = AuditEventSubType._(
    '113032',
  );

  /// value113033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113033 = AuditEventSubType._(
    '113033',
  );

  /// value113034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113034 = AuditEventSubType._(
    '113034',
  );

  /// value113035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113035 = AuditEventSubType._(
    '113035',
  );

  /// value113036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113036 = AuditEventSubType._(
    '113036',
  );

  /// value113037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113037 = AuditEventSubType._(
    '113037',
  );

  /// value113038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113038 = AuditEventSubType._(
    '113038',
  );

  /// value113039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113039 = AuditEventSubType._(
    '113039',
  );

  /// value113040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113040 = AuditEventSubType._(
    '113040',
  );

  /// value113041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113041 = AuditEventSubType._(
    '113041',
  );

  /// value113042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113042 = AuditEventSubType._(
    '113042',
  );

  /// value113043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113043 = AuditEventSubType._(
    '113043',
  );

  /// value113044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113044 = AuditEventSubType._(
    '113044',
  );

  /// value113045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113045 = AuditEventSubType._(
    '113045',
  );

  /// value113046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113046 = AuditEventSubType._(
    '113046',
  );

  /// value113047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113047 = AuditEventSubType._(
    '113047',
  );

  /// value113048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113048 = AuditEventSubType._(
    '113048',
  );

  /// value113049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113049 = AuditEventSubType._(
    '113049',
  );

  /// value113050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113050 = AuditEventSubType._(
    '113050',
  );

  /// value113051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113051 = AuditEventSubType._(
    '113051',
  );

  /// value113052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113052 = AuditEventSubType._(
    '113052',
  );

  /// value113053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113053 = AuditEventSubType._(
    '113053',
  );

  /// value113054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113054 = AuditEventSubType._(
    '113054',
  );

  /// value113055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113055 = AuditEventSubType._(
    '113055',
  );

  /// value113056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113056 = AuditEventSubType._(
    '113056',
  );

  /// value113057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113057 = AuditEventSubType._(
    '113057',
  );

  /// value113058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113058 = AuditEventSubType._(
    '113058',
  );

  /// value113059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113059 = AuditEventSubType._(
    '113059',
  );

  /// value113060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113060 = AuditEventSubType._(
    '113060',
  );

  /// value113061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113061 = AuditEventSubType._(
    '113061',
  );

  /// value113062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113062 = AuditEventSubType._(
    '113062',
  );

  /// value113063
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113063 = AuditEventSubType._(
    '113063',
  );

  /// value113064
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113064 = AuditEventSubType._(
    '113064',
  );

  /// value113065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113065 = AuditEventSubType._(
    '113065',
  );

  /// value113066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113066 = AuditEventSubType._(
    '113066',
  );

  /// value113067
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113067 = AuditEventSubType._(
    '113067',
  );

  /// value113068
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113068 = AuditEventSubType._(
    '113068',
  );

  /// value113069
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113069 = AuditEventSubType._(
    '113069',
  );

  /// value113070
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113070 = AuditEventSubType._(
    '113070',
  );

  /// value113071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113071 = AuditEventSubType._(
    '113071',
  );

  /// value113072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113072 = AuditEventSubType._(
    '113072',
  );

  /// value113073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113073 = AuditEventSubType._(
    '113073',
  );

  /// value113074
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113074 = AuditEventSubType._(
    '113074',
  );

  /// value113075
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113075 = AuditEventSubType._(
    '113075',
  );

  /// value113076
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113076 = AuditEventSubType._(
    '113076',
  );

  /// value113077
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113077 = AuditEventSubType._(
    '113077',
  );

  /// value113078
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113078 = AuditEventSubType._(
    '113078',
  );

  /// value113079
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113079 = AuditEventSubType._(
    '113079',
  );

  /// value113080
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113080 = AuditEventSubType._(
    '113080',
  );

  /// value113081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113081 = AuditEventSubType._(
    '113081',
  );

  /// value113082
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113082 = AuditEventSubType._(
    '113082',
  );

  /// value113083
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113083 = AuditEventSubType._(
    '113083',
  );

  /// value113085
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113085 = AuditEventSubType._(
    '113085',
  );

  /// value113086
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113086 = AuditEventSubType._(
    '113086',
  );

  /// value113087
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113087 = AuditEventSubType._(
    '113087',
  );

  /// value113088
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113088 = AuditEventSubType._(
    '113088',
  );

  /// value113089
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113089 = AuditEventSubType._(
    '113089',
  );

  /// value113090
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113090 = AuditEventSubType._(
    '113090',
  );

  /// value113091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113091 = AuditEventSubType._(
    '113091',
  );

  /// value113092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113092 = AuditEventSubType._(
    '113092',
  );

  /// value113093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113093 = AuditEventSubType._(
    '113093',
  );

  /// value113094
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113094 = AuditEventSubType._(
    '113094',
  );

  /// value113095
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113095 = AuditEventSubType._(
    '113095',
  );

  /// value113096
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113096 = AuditEventSubType._(
    '113096',
  );

  /// value113097
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113097 = AuditEventSubType._(
    '113097',
  );

  /// value113100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113100 = AuditEventSubType._(
    '113100',
  );

  /// value113101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113101 = AuditEventSubType._(
    '113101',
  );

  /// value113102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113102 = AuditEventSubType._(
    '113102',
  );

  /// value113103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113103 = AuditEventSubType._(
    '113103',
  );

  /// value113104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113104 = AuditEventSubType._(
    '113104',
  );

  /// value113105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113105 = AuditEventSubType._(
    '113105',
  );

  /// value113106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113106 = AuditEventSubType._(
    '113106',
  );

  /// value113107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113107 = AuditEventSubType._(
    '113107',
  );

  /// value113108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113108 = AuditEventSubType._(
    '113108',
  );

  /// value113109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113109 = AuditEventSubType._(
    '113109',
  );

  /// value113110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113110 = AuditEventSubType._(
    '113110',
  );

  /// value113111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113111 = AuditEventSubType._(
    '113111',
  );

  /// value113500
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113500 = AuditEventSubType._(
    '113500',
  );

  /// value113502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113502 = AuditEventSubType._(
    '113502',
  );

  /// value113503
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113503 = AuditEventSubType._(
    '113503',
  );

  /// value113505
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113505 = AuditEventSubType._(
    '113505',
  );

  /// value113506
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113506 = AuditEventSubType._(
    '113506',
  );

  /// value113507
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113507 = AuditEventSubType._(
    '113507',
  );

  /// value113508
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113508 = AuditEventSubType._(
    '113508',
  );

  /// value113509
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113509 = AuditEventSubType._(
    '113509',
  );

  /// value113510
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113510 = AuditEventSubType._(
    '113510',
  );

  /// value113511
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113511 = AuditEventSubType._(
    '113511',
  );

  /// value113512
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113512 = AuditEventSubType._(
    '113512',
  );

  /// value113513
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113513 = AuditEventSubType._(
    '113513',
  );

  /// value113514
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113514 = AuditEventSubType._(
    '113514',
  );

  /// value113516
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113516 = AuditEventSubType._(
    '113516',
  );

  /// value113517
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113517 = AuditEventSubType._(
    '113517',
  );

  /// value113518
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113518 = AuditEventSubType._(
    '113518',
  );

  /// value113520
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113520 = AuditEventSubType._(
    '113520',
  );

  /// value113521
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113521 = AuditEventSubType._(
    '113521',
  );

  /// value113522
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113522 = AuditEventSubType._(
    '113522',
  );

  /// value113523
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113523 = AuditEventSubType._(
    '113523',
  );

  /// value113526
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113526 = AuditEventSubType._(
    '113526',
  );

  /// value113527
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113527 = AuditEventSubType._(
    '113527',
  );

  /// value113528
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113528 = AuditEventSubType._(
    '113528',
  );

  /// value113529
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113529 = AuditEventSubType._(
    '113529',
  );

  /// value113530
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113530 = AuditEventSubType._(
    '113530',
  );

  /// value113540
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113540 = AuditEventSubType._(
    '113540',
  );

  /// value113541
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113541 = AuditEventSubType._(
    '113541',
  );

  /// value113542
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113542 = AuditEventSubType._(
    '113542',
  );

  /// value113543
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113543 = AuditEventSubType._(
    '113543',
  );

  /// value113550
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113550 = AuditEventSubType._(
    '113550',
  );

  /// value113551
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113551 = AuditEventSubType._(
    '113551',
  );

  /// value113552
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113552 = AuditEventSubType._(
    '113552',
  );

  /// value113560
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113560 = AuditEventSubType._(
    '113560',
  );

  /// value113561
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113561 = AuditEventSubType._(
    '113561',
  );

  /// value113562
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113562 = AuditEventSubType._(
    '113562',
  );

  /// value113563
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113563 = AuditEventSubType._(
    '113563',
  );

  /// value113568
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113568 = AuditEventSubType._(
    '113568',
  );

  /// value113570
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113570 = AuditEventSubType._(
    '113570',
  );

  /// value113571
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113571 = AuditEventSubType._(
    '113571',
  );

  /// value113572
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113572 = AuditEventSubType._(
    '113572',
  );

  /// value113573
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113573 = AuditEventSubType._(
    '113573',
  );

  /// value113574
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113574 = AuditEventSubType._(
    '113574',
  );

  /// value113575
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113575 = AuditEventSubType._(
    '113575',
  );

  /// value113576
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113576 = AuditEventSubType._(
    '113576',
  );

  /// value113577
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113577 = AuditEventSubType._(
    '113577',
  );

  /// value113601
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113601 = AuditEventSubType._(
    '113601',
  );

  /// value113602
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113602 = AuditEventSubType._(
    '113602',
  );

  /// value113603
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113603 = AuditEventSubType._(
    '113603',
  );

  /// value113605
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113605 = AuditEventSubType._(
    '113605',
  );

  /// value113606
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113606 = AuditEventSubType._(
    '113606',
  );

  /// value113607
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113607 = AuditEventSubType._(
    '113607',
  );

  /// value113608
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113608 = AuditEventSubType._(
    '113608',
  );

  /// value113609
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113609 = AuditEventSubType._(
    '113609',
  );

  /// value113611
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113611 = AuditEventSubType._(
    '113611',
  );

  /// value113612
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113612 = AuditEventSubType._(
    '113612',
  );

  /// value113613
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113613 = AuditEventSubType._(
    '113613',
  );

  /// value113620
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113620 = AuditEventSubType._(
    '113620',
  );

  /// value113621
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113621 = AuditEventSubType._(
    '113621',
  );

  /// value113622
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113622 = AuditEventSubType._(
    '113622',
  );

  /// value113630
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113630 = AuditEventSubType._(
    '113630',
  );

  /// value113631
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113631 = AuditEventSubType._(
    '113631',
  );

  /// value113650
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113650 = AuditEventSubType._(
    '113650',
  );

  /// value113651
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113651 = AuditEventSubType._(
    '113651',
  );

  /// value113652
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113652 = AuditEventSubType._(
    '113652',
  );

  /// value113653
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113653 = AuditEventSubType._(
    '113653',
  );

  /// value113661
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113661 = AuditEventSubType._(
    '113661',
  );

  /// value113662
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113662 = AuditEventSubType._(
    '113662',
  );

  /// value113663
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113663 = AuditEventSubType._(
    '113663',
  );

  /// value113664
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113664 = AuditEventSubType._(
    '113664',
  );

  /// value113665
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113665 = AuditEventSubType._(
    '113665',
  );

  /// value113666
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113666 = AuditEventSubType._(
    '113666',
  );

  /// value113669
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113669 = AuditEventSubType._(
    '113669',
  );

  /// value113670
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113670 = AuditEventSubType._(
    '113670',
  );

  /// value113671
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113671 = AuditEventSubType._(
    '113671',
  );

  /// value113680
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113680 = AuditEventSubType._(
    '113680',
  );

  /// value113681
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113681 = AuditEventSubType._(
    '113681',
  );

  /// value113682
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113682 = AuditEventSubType._(
    '113682',
  );

  /// value113683
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113683 = AuditEventSubType._(
    '113683',
  );

  /// value113684
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113684 = AuditEventSubType._(
    '113684',
  );

  /// value113685
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113685 = AuditEventSubType._(
    '113685',
  );

  /// value113686
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113686 = AuditEventSubType._(
    '113686',
  );

  /// value113687
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113687 = AuditEventSubType._(
    '113687',
  );

  /// value113688
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113688 = AuditEventSubType._(
    '113688',
  );

  /// value113689
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113689 = AuditEventSubType._(
    '113689',
  );

  /// value113690
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113690 = AuditEventSubType._(
    '113690',
  );

  /// value113691
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113691 = AuditEventSubType._(
    '113691',
  );

  /// value113692
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113692 = AuditEventSubType._(
    '113692',
  );

  /// value113701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113701 = AuditEventSubType._(
    '113701',
  );

  /// value113702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113702 = AuditEventSubType._(
    '113702',
  );

  /// value113704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113704 = AuditEventSubType._(
    '113704',
  );

  /// value113705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113705 = AuditEventSubType._(
    '113705',
  );

  /// value113706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113706 = AuditEventSubType._(
    '113706',
  );

  /// value113710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113710 = AuditEventSubType._(
    '113710',
  );

  /// value113711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113711 = AuditEventSubType._(
    '113711',
  );

  /// value113720
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113720 = AuditEventSubType._(
    '113720',
  );

  /// value113721
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113721 = AuditEventSubType._(
    '113721',
  );

  /// value113722
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113722 = AuditEventSubType._(
    '113722',
  );

  /// value113723
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113723 = AuditEventSubType._(
    '113723',
  );

  /// value113724
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113724 = AuditEventSubType._(
    '113724',
  );

  /// value113725
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113725 = AuditEventSubType._(
    '113725',
  );

  /// value113726
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113726 = AuditEventSubType._(
    '113726',
  );

  /// value113727
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113727 = AuditEventSubType._(
    '113727',
  );

  /// value113728
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113728 = AuditEventSubType._(
    '113728',
  );

  /// value113729
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113729 = AuditEventSubType._(
    '113729',
  );

  /// value113730
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113730 = AuditEventSubType._(
    '113730',
  );

  /// value113731
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113731 = AuditEventSubType._(
    '113731',
  );

  /// value113732
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113732 = AuditEventSubType._(
    '113732',
  );

  /// value113733
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113733 = AuditEventSubType._(
    '113733',
  );

  /// value113734
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113734 = AuditEventSubType._(
    '113734',
  );

  /// value113735
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113735 = AuditEventSubType._(
    '113735',
  );

  /// value113736
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113736 = AuditEventSubType._(
    '113736',
  );

  /// value113737
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113737 = AuditEventSubType._(
    '113737',
  );

  /// value113738
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113738 = AuditEventSubType._(
    '113738',
  );

  /// value113739
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113739 = AuditEventSubType._(
    '113739',
  );

  /// value113740
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113740 = AuditEventSubType._(
    '113740',
  );

  /// value113742
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113742 = AuditEventSubType._(
    '113742',
  );

  /// value113743
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113743 = AuditEventSubType._(
    '113743',
  );

  /// value113744
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113744 = AuditEventSubType._(
    '113744',
  );

  /// value113745
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113745 = AuditEventSubType._(
    '113745',
  );

  /// value113748
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113748 = AuditEventSubType._(
    '113748',
  );

  /// value113750
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113750 = AuditEventSubType._(
    '113750',
  );

  /// value113751
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113751 = AuditEventSubType._(
    '113751',
  );

  /// value113752
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113752 = AuditEventSubType._(
    '113752',
  );

  /// value113753
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113753 = AuditEventSubType._(
    '113753',
  );

  /// value113754
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113754 = AuditEventSubType._(
    '113754',
  );

  /// value113755
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113755 = AuditEventSubType._(
    '113755',
  );

  /// value113756
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113756 = AuditEventSubType._(
    '113756',
  );

  /// value113757
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113757 = AuditEventSubType._(
    '113757',
  );

  /// value113758
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113758 = AuditEventSubType._(
    '113758',
  );

  /// value113759
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113759 = AuditEventSubType._(
    '113759',
  );

  /// value113760
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113760 = AuditEventSubType._(
    '113760',
  );

  /// value113761
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113761 = AuditEventSubType._(
    '113761',
  );

  /// value113763
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113763 = AuditEventSubType._(
    '113763',
  );

  /// value113764
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113764 = AuditEventSubType._(
    '113764',
  );

  /// value113766
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113766 = AuditEventSubType._(
    '113766',
  );

  /// value113767
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113767 = AuditEventSubType._(
    '113767',
  );

  /// value113768
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113768 = AuditEventSubType._(
    '113768',
  );

  /// value113769
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113769 = AuditEventSubType._(
    '113769',
  );

  /// value113770
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113770 = AuditEventSubType._(
    '113770',
  );

  /// value113771
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113771 = AuditEventSubType._(
    '113771',
  );

  /// value113772
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113772 = AuditEventSubType._(
    '113772',
  );

  /// value113773
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113773 = AuditEventSubType._(
    '113773',
  );

  /// value113780
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113780 = AuditEventSubType._(
    '113780',
  );

  /// value113788
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113788 = AuditEventSubType._(
    '113788',
  );

  /// value113789
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113789 = AuditEventSubType._(
    '113789',
  );

  /// value113790
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113790 = AuditEventSubType._(
    '113790',
  );

  /// value113791
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113791 = AuditEventSubType._(
    '113791',
  );

  /// value113792
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113792 = AuditEventSubType._(
    '113792',
  );

  /// value113793
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113793 = AuditEventSubType._(
    '113793',
  );

  /// value113794
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113794 = AuditEventSubType._(
    '113794',
  );

  /// value113795
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113795 = AuditEventSubType._(
    '113795',
  );

  /// value113800
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113800 = AuditEventSubType._(
    '113800',
  );

  /// value113801
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113801 = AuditEventSubType._(
    '113801',
  );

  /// value113802
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113802 = AuditEventSubType._(
    '113802',
  );

  /// value113803
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113803 = AuditEventSubType._(
    '113803',
  );

  /// value113804
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113804 = AuditEventSubType._(
    '113804',
  );

  /// value113805
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113805 = AuditEventSubType._(
    '113805',
  );

  /// value113806
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113806 = AuditEventSubType._(
    '113806',
  );

  /// value113807
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113807 = AuditEventSubType._(
    '113807',
  );

  /// value113808
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113808 = AuditEventSubType._(
    '113808',
  );

  /// value113809
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113809 = AuditEventSubType._(
    '113809',
  );

  /// value113810
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113810 = AuditEventSubType._(
    '113810',
  );

  /// value113811
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113811 = AuditEventSubType._(
    '113811',
  );

  /// value113812
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113812 = AuditEventSubType._(
    '113812',
  );

  /// value113813
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113813 = AuditEventSubType._(
    '113813',
  );

  /// value113814
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113814 = AuditEventSubType._(
    '113814',
  );

  /// value113815
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113815 = AuditEventSubType._(
    '113815',
  );

  /// value113816
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113816 = AuditEventSubType._(
    '113816',
  );

  /// value113817
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113817 = AuditEventSubType._(
    '113817',
  );

  /// value113818
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113818 = AuditEventSubType._(
    '113818',
  );

  /// value113819
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113819 = AuditEventSubType._(
    '113819',
  );

  /// value113820
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113820 = AuditEventSubType._(
    '113820',
  );

  /// value113821
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113821 = AuditEventSubType._(
    '113821',
  );

  /// value113822
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113822 = AuditEventSubType._(
    '113822',
  );

  /// value113823
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113823 = AuditEventSubType._(
    '113823',
  );

  /// value113824
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113824 = AuditEventSubType._(
    '113824',
  );

  /// value113825
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113825 = AuditEventSubType._(
    '113825',
  );

  /// value113826
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113826 = AuditEventSubType._(
    '113826',
  );

  /// value113827
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113827 = AuditEventSubType._(
    '113827',
  );

  /// value113828
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113828 = AuditEventSubType._(
    '113828',
  );

  /// value113829
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113829 = AuditEventSubType._(
    '113829',
  );

  /// value113830
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113830 = AuditEventSubType._(
    '113830',
  );

  /// value113831
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113831 = AuditEventSubType._(
    '113831',
  );

  /// value113832
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113832 = AuditEventSubType._(
    '113832',
  );

  /// value113833
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113833 = AuditEventSubType._(
    '113833',
  );

  /// value113834
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113834 = AuditEventSubType._(
    '113834',
  );

  /// value113835
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113835 = AuditEventSubType._(
    '113835',
  );

  /// value113836
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113836 = AuditEventSubType._(
    '113836',
  );

  /// value113837
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113837 = AuditEventSubType._(
    '113837',
  );

  /// value113838
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113838 = AuditEventSubType._(
    '113838',
  );

  /// value113839
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113839 = AuditEventSubType._(
    '113839',
  );

  /// value113840
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113840 = AuditEventSubType._(
    '113840',
  );

  /// value113841
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113841 = AuditEventSubType._(
    '113841',
  );

  /// value113842
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113842 = AuditEventSubType._(
    '113842',
  );

  /// value113845
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113845 = AuditEventSubType._(
    '113845',
  );

  /// value113846
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113846 = AuditEventSubType._(
    '113846',
  );

  /// value113847
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113847 = AuditEventSubType._(
    '113847',
  );

  /// value113850
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113850 = AuditEventSubType._(
    '113850',
  );

  /// value113851
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113851 = AuditEventSubType._(
    '113851',
  );

  /// value113852
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113852 = AuditEventSubType._(
    '113852',
  );

  /// value113853
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113853 = AuditEventSubType._(
    '113853',
  );

  /// value113854
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113854 = AuditEventSubType._(
    '113854',
  );

  /// value113855
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113855 = AuditEventSubType._(
    '113855',
  );

  /// value113856
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113856 = AuditEventSubType._(
    '113856',
  );

  /// value113857
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113857 = AuditEventSubType._(
    '113857',
  );

  /// value113858
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113858 = AuditEventSubType._(
    '113858',
  );

  /// value113859
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113859 = AuditEventSubType._(
    '113859',
  );

  /// value113860
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113860 = AuditEventSubType._(
    '113860',
  );

  /// value113861
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113861 = AuditEventSubType._(
    '113861',
  );

  /// value113862
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113862 = AuditEventSubType._(
    '113862',
  );

  /// value113863
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113863 = AuditEventSubType._(
    '113863',
  );

  /// value113864
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113864 = AuditEventSubType._(
    '113864',
  );

  /// value113865
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113865 = AuditEventSubType._(
    '113865',
  );

  /// value113866
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113866 = AuditEventSubType._(
    '113866',
  );

  /// value113867
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113867 = AuditEventSubType._(
    '113867',
  );

  /// value113868
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113868 = AuditEventSubType._(
    '113868',
  );

  /// value113870
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113870 = AuditEventSubType._(
    '113870',
  );

  /// value113871
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113871 = AuditEventSubType._(
    '113871',
  );

  /// value113872
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113872 = AuditEventSubType._(
    '113872',
  );

  /// value113873
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113873 = AuditEventSubType._(
    '113873',
  );

  /// value113874
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113874 = AuditEventSubType._(
    '113874',
  );

  /// value113875
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113875 = AuditEventSubType._(
    '113875',
  );

  /// value113876
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113876 = AuditEventSubType._(
    '113876',
  );

  /// value113877
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113877 = AuditEventSubType._(
    '113877',
  );

  /// value113878
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113878 = AuditEventSubType._(
    '113878',
  );

  /// value113879
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113879 = AuditEventSubType._(
    '113879',
  );

  /// value113880
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113880 = AuditEventSubType._(
    '113880',
  );

  /// value113890
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113890 = AuditEventSubType._(
    '113890',
  );

  /// value113893
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113893 = AuditEventSubType._(
    '113893',
  );

  /// value113895
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113895 = AuditEventSubType._(
    '113895',
  );

  /// value113896
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113896 = AuditEventSubType._(
    '113896',
  );

  /// value113897
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113897 = AuditEventSubType._(
    '113897',
  );

  /// value113898
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113898 = AuditEventSubType._(
    '113898',
  );

  /// value113899
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113899 = AuditEventSubType._(
    '113899',
  );

  /// value113900
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113900 = AuditEventSubType._(
    '113900',
  );

  /// value113901
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113901 = AuditEventSubType._(
    '113901',
  );

  /// value113902
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113902 = AuditEventSubType._(
    '113902',
  );

  /// value113903
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113903 = AuditEventSubType._(
    '113903',
  );

  /// value113904
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113904 = AuditEventSubType._(
    '113904',
  );

  /// value113905
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113905 = AuditEventSubType._(
    '113905',
  );

  /// value113906
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113906 = AuditEventSubType._(
    '113906',
  );

  /// value113907
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113907 = AuditEventSubType._(
    '113907',
  );

  /// value113908
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113908 = AuditEventSubType._(
    '113908',
  );

  /// value113909
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113909 = AuditEventSubType._(
    '113909',
  );

  /// value113910
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113910 = AuditEventSubType._(
    '113910',
  );

  /// value113911
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113911 = AuditEventSubType._(
    '113911',
  );

  /// value113912
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113912 = AuditEventSubType._(
    '113912',
  );

  /// value113913
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113913 = AuditEventSubType._(
    '113913',
  );

  /// value113914
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113914 = AuditEventSubType._(
    '113914',
  );

  /// value113921
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113921 = AuditEventSubType._(
    '113921',
  );

  /// value113922
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113922 = AuditEventSubType._(
    '113922',
  );

  /// value113923
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113923 = AuditEventSubType._(
    '113923',
  );

  /// value113930
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113930 = AuditEventSubType._(
    '113930',
  );

  /// value113931
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113931 = AuditEventSubType._(
    '113931',
  );

  /// value113932
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113932 = AuditEventSubType._(
    '113932',
  );

  /// value113933
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113933 = AuditEventSubType._(
    '113933',
  );

  /// value113934
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113934 = AuditEventSubType._(
    '113934',
  );

  /// value113935
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113935 = AuditEventSubType._(
    '113935',
  );

  /// value113936
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113936 = AuditEventSubType._(
    '113936',
  );

  /// value113937
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113937 = AuditEventSubType._(
    '113937',
  );

  /// value113940
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113940 = AuditEventSubType._(
    '113940',
  );

  /// value113941
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113941 = AuditEventSubType._(
    '113941',
  );

  /// value113942
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113942 = AuditEventSubType._(
    '113942',
  );

  /// value113943
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113943 = AuditEventSubType._(
    '113943',
  );

  /// value113944
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113944 = AuditEventSubType._(
    '113944',
  );

  /// value113945
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113945 = AuditEventSubType._(
    '113945',
  );

  /// value113946
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113946 = AuditEventSubType._(
    '113946',
  );

  /// value113947
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113947 = AuditEventSubType._(
    '113947',
  );

  /// value113948
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113948 = AuditEventSubType._(
    '113948',
  );

  /// value113949
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113949 = AuditEventSubType._(
    '113949',
  );

  /// value113950
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113950 = AuditEventSubType._(
    '113950',
  );

  /// value113951
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113951 = AuditEventSubType._(
    '113951',
  );

  /// value113952
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113952 = AuditEventSubType._(
    '113952',
  );

  /// value113953
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113953 = AuditEventSubType._(
    '113953',
  );

  /// value113954
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113954 = AuditEventSubType._(
    '113954',
  );

  /// value113955
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113955 = AuditEventSubType._(
    '113955',
  );

  /// value113956
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113956 = AuditEventSubType._(
    '113956',
  );

  /// value113957
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113957 = AuditEventSubType._(
    '113957',
  );

  /// value113958
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113958 = AuditEventSubType._(
    '113958',
  );

  /// value113959
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113959 = AuditEventSubType._(
    '113959',
  );

  /// value113961
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113961 = AuditEventSubType._(
    '113961',
  );

  /// value113962
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113962 = AuditEventSubType._(
    '113962',
  );

  /// value113963
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113963 = AuditEventSubType._(
    '113963',
  );

  /// value113970
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value113970 = AuditEventSubType._(
    '113970',
  );

  /// value114000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value114000 = AuditEventSubType._(
    '114000',
  );

  /// value114001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value114001 = AuditEventSubType._(
    '114001',
  );

  /// value114002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value114002 = AuditEventSubType._(
    '114002',
  );

  /// value114003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value114003 = AuditEventSubType._(
    '114003',
  );

  /// value114004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value114004 = AuditEventSubType._(
    '114004',
  );

  /// value114005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value114005 = AuditEventSubType._(
    '114005',
  );

  /// value114006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value114006 = AuditEventSubType._(
    '114006',
  );

  /// value114007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value114007 = AuditEventSubType._(
    '114007',
  );

  /// value114008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value114008 = AuditEventSubType._(
    '114008',
  );

  /// value114009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value114009 = AuditEventSubType._(
    '114009',
  );

  /// value114010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value114010 = AuditEventSubType._(
    '114010',
  );

  /// value114011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value114011 = AuditEventSubType._(
    '114011',
  );

  /// value114201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value114201 = AuditEventSubType._(
    '114201',
  );

  /// value114202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value114202 = AuditEventSubType._(
    '114202',
  );

  /// value114203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value114203 = AuditEventSubType._(
    '114203',
  );

  /// value114204
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value114204 = AuditEventSubType._(
    '114204',
  );

  /// value114205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value114205 = AuditEventSubType._(
    '114205',
  );

  /// value114206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value114206 = AuditEventSubType._(
    '114206',
  );

  /// value114207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value114207 = AuditEventSubType._(
    '114207',
  );

  /// value114208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value114208 = AuditEventSubType._(
    '114208',
  );

  /// value114209
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value114209 = AuditEventSubType._(
    '114209',
  );

  /// value114210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value114210 = AuditEventSubType._(
    '114210',
  );

  /// value114211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value114211 = AuditEventSubType._(
    '114211',
  );

  /// value114213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value114213 = AuditEventSubType._(
    '114213',
  );

  /// value114215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value114215 = AuditEventSubType._(
    '114215',
  );

  /// value114216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value114216 = AuditEventSubType._(
    '114216',
  );

  /// value121001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121001 = AuditEventSubType._(
    '121001',
  );

  /// value121002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121002 = AuditEventSubType._(
    '121002',
  );

  /// value121003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121003 = AuditEventSubType._(
    '121003',
  );

  /// value121004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121004 = AuditEventSubType._(
    '121004',
  );

  /// value121005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121005 = AuditEventSubType._(
    '121005',
  );

  /// value121006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121006 = AuditEventSubType._(
    '121006',
  );

  /// value121007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121007 = AuditEventSubType._(
    '121007',
  );

  /// value121008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121008 = AuditEventSubType._(
    '121008',
  );

  /// value121009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121009 = AuditEventSubType._(
    '121009',
  );

  /// value121010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121010 = AuditEventSubType._(
    '121010',
  );

  /// value121011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121011 = AuditEventSubType._(
    '121011',
  );

  /// value121012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121012 = AuditEventSubType._(
    '121012',
  );

  /// value121013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121013 = AuditEventSubType._(
    '121013',
  );

  /// value121014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121014 = AuditEventSubType._(
    '121014',
  );

  /// value121015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121015 = AuditEventSubType._(
    '121015',
  );

  /// value121016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121016 = AuditEventSubType._(
    '121016',
  );

  /// value121017
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121017 = AuditEventSubType._(
    '121017',
  );

  /// value121018
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121018 = AuditEventSubType._(
    '121018',
  );

  /// value121019
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121019 = AuditEventSubType._(
    '121019',
  );

  /// value121020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121020 = AuditEventSubType._(
    '121020',
  );

  /// value121021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121021 = AuditEventSubType._(
    '121021',
  );

  /// value121022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121022 = AuditEventSubType._(
    '121022',
  );

  /// value121023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121023 = AuditEventSubType._(
    '121023',
  );

  /// value121024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121024 = AuditEventSubType._(
    '121024',
  );

  /// value121025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121025 = AuditEventSubType._(
    '121025',
  );

  /// value121026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121026 = AuditEventSubType._(
    '121026',
  );

  /// value121027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121027 = AuditEventSubType._(
    '121027',
  );

  /// value121028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121028 = AuditEventSubType._(
    '121028',
  );

  /// value121029
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121029 = AuditEventSubType._(
    '121029',
  );

  /// value121030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121030 = AuditEventSubType._(
    '121030',
  );

  /// value121031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121031 = AuditEventSubType._(
    '121031',
  );

  /// value121032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121032 = AuditEventSubType._(
    '121032',
  );

  /// value121033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121033 = AuditEventSubType._(
    '121033',
  );

  /// value121034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121034 = AuditEventSubType._(
    '121034',
  );

  /// value121035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121035 = AuditEventSubType._(
    '121035',
  );

  /// value121036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121036 = AuditEventSubType._(
    '121036',
  );

  /// value121037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121037 = AuditEventSubType._(
    '121037',
  );

  /// value121038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121038 = AuditEventSubType._(
    '121038',
  );

  /// value121039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121039 = AuditEventSubType._(
    '121039',
  );

  /// value121040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121040 = AuditEventSubType._(
    '121040',
  );

  /// value121041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121041 = AuditEventSubType._(
    '121041',
  );

  /// value121042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121042 = AuditEventSubType._(
    '121042',
  );

  /// value121043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121043 = AuditEventSubType._(
    '121043',
  );

  /// value121044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121044 = AuditEventSubType._(
    '121044',
  );

  /// value121045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121045 = AuditEventSubType._(
    '121045',
  );

  /// value121046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121046 = AuditEventSubType._(
    '121046',
  );

  /// value121047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121047 = AuditEventSubType._(
    '121047',
  );

  /// value121048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121048 = AuditEventSubType._(
    '121048',
  );

  /// value121049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121049 = AuditEventSubType._(
    '121049',
  );

  /// value121050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121050 = AuditEventSubType._(
    '121050',
  );

  /// value121051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121051 = AuditEventSubType._(
    '121051',
  );

  /// value121052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121052 = AuditEventSubType._(
    '121052',
  );

  /// value121053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121053 = AuditEventSubType._(
    '121053',
  );

  /// value121054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121054 = AuditEventSubType._(
    '121054',
  );

  /// value121055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121055 = AuditEventSubType._(
    '121055',
  );

  /// value121056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121056 = AuditEventSubType._(
    '121056',
  );

  /// value121057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121057 = AuditEventSubType._(
    '121057',
  );

  /// value121058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121058 = AuditEventSubType._(
    '121058',
  );

  /// value121059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121059 = AuditEventSubType._(
    '121059',
  );

  /// value121060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121060 = AuditEventSubType._(
    '121060',
  );

  /// value121062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121062 = AuditEventSubType._(
    '121062',
  );

  /// value121064
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121064 = AuditEventSubType._(
    '121064',
  );

  /// value121065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121065 = AuditEventSubType._(
    '121065',
  );

  /// value121066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121066 = AuditEventSubType._(
    '121066',
  );

  /// value121068
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121068 = AuditEventSubType._(
    '121068',
  );

  /// value121069
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121069 = AuditEventSubType._(
    '121069',
  );

  /// value121070
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121070 = AuditEventSubType._(
    '121070',
  );

  /// value121071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121071 = AuditEventSubType._(
    '121071',
  );

  /// value121072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121072 = AuditEventSubType._(
    '121072',
  );

  /// value121073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121073 = AuditEventSubType._(
    '121073',
  );

  /// value121074
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121074 = AuditEventSubType._(
    '121074',
  );

  /// value121075
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121075 = AuditEventSubType._(
    '121075',
  );

  /// value121076
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121076 = AuditEventSubType._(
    '121076',
  );

  /// value121077
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121077 = AuditEventSubType._(
    '121077',
  );

  /// value121078
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121078 = AuditEventSubType._(
    '121078',
  );

  /// value121079
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121079 = AuditEventSubType._(
    '121079',
  );

  /// value121080
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121080 = AuditEventSubType._(
    '121080',
  );

  /// value121081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121081 = AuditEventSubType._(
    '121081',
  );

  /// value121082
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121082 = AuditEventSubType._(
    '121082',
  );

  /// value121083
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121083 = AuditEventSubType._(
    '121083',
  );

  /// value121084
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121084 = AuditEventSubType._(
    '121084',
  );

  /// value121085
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121085 = AuditEventSubType._(
    '121085',
  );

  /// value121086
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121086 = AuditEventSubType._(
    '121086',
  );

  /// value121087
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121087 = AuditEventSubType._(
    '121087',
  );

  /// value121088
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121088 = AuditEventSubType._(
    '121088',
  );

  /// value121089
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121089 = AuditEventSubType._(
    '121089',
  );

  /// value121090
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121090 = AuditEventSubType._(
    '121090',
  );

  /// value121091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121091 = AuditEventSubType._(
    '121091',
  );

  /// value121092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121092 = AuditEventSubType._(
    '121092',
  );

  /// value121093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121093 = AuditEventSubType._(
    '121093',
  );

  /// value121094
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121094 = AuditEventSubType._(
    '121094',
  );

  /// value121095
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121095 = AuditEventSubType._(
    '121095',
  );

  /// value121096
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121096 = AuditEventSubType._(
    '121096',
  );

  /// value121097
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121097 = AuditEventSubType._(
    '121097',
  );

  /// value121098
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121098 = AuditEventSubType._(
    '121098',
  );

  /// value121099
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121099 = AuditEventSubType._(
    '121099',
  );

  /// value121100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121100 = AuditEventSubType._(
    '121100',
  );

  /// value121101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121101 = AuditEventSubType._(
    '121101',
  );

  /// value121102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121102 = AuditEventSubType._(
    '121102',
  );

  /// value121103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121103 = AuditEventSubType._(
    '121103',
  );

  /// value121104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121104 = AuditEventSubType._(
    '121104',
  );

  /// value121105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121105 = AuditEventSubType._(
    '121105',
  );

  /// value121106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121106 = AuditEventSubType._(
    '121106',
  );

  /// value121109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121109 = AuditEventSubType._(
    '121109',
  );

  /// value121110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121110 = AuditEventSubType._(
    '121110',
  );

  /// value121111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121111 = AuditEventSubType._(
    '121111',
  );

  /// value121112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121112 = AuditEventSubType._(
    '121112',
  );

  /// value121113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121113 = AuditEventSubType._(
    '121113',
  );

  /// value121114
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121114 = AuditEventSubType._(
    '121114',
  );

  /// value121115
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121115 = AuditEventSubType._(
    '121115',
  );

  /// value121116
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121116 = AuditEventSubType._(
    '121116',
  );

  /// value121117
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121117 = AuditEventSubType._(
    '121117',
  );

  /// value121118
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121118 = AuditEventSubType._(
    '121118',
  );

  /// value121120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121120 = AuditEventSubType._(
    '121120',
  );

  /// value121121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121121 = AuditEventSubType._(
    '121121',
  );

  /// value121122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121122 = AuditEventSubType._(
    '121122',
  );

  /// value121123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121123 = AuditEventSubType._(
    '121123',
  );

  /// value121124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121124 = AuditEventSubType._(
    '121124',
  );

  /// value121125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121125 = AuditEventSubType._(
    '121125',
  );

  /// value121126
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121126 = AuditEventSubType._(
    '121126',
  );

  /// value121127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121127 = AuditEventSubType._(
    '121127',
  );

  /// value121128
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121128 = AuditEventSubType._(
    '121128',
  );

  /// value121130
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121130 = AuditEventSubType._(
    '121130',
  );

  /// value121131
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121131 = AuditEventSubType._(
    '121131',
  );

  /// value121132
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121132 = AuditEventSubType._(
    '121132',
  );

  /// value121133
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121133 = AuditEventSubType._(
    '121133',
  );

  /// value121135
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121135 = AuditEventSubType._(
    '121135',
  );

  /// value121136
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121136 = AuditEventSubType._(
    '121136',
  );

  /// value121137
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121137 = AuditEventSubType._(
    '121137',
  );

  /// value121138
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121138 = AuditEventSubType._(
    '121138',
  );

  /// value121139
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121139 = AuditEventSubType._(
    '121139',
  );

  /// value121140
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121140 = AuditEventSubType._(
    '121140',
  );

  /// value121141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121141 = AuditEventSubType._(
    '121141',
  );

  /// value121142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121142 = AuditEventSubType._(
    '121142',
  );

  /// value121143
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121143 = AuditEventSubType._(
    '121143',
  );

  /// value121144
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121144 = AuditEventSubType._(
    '121144',
  );

  /// value121145
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121145 = AuditEventSubType._(
    '121145',
  );

  /// value121146
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121146 = AuditEventSubType._(
    '121146',
  );

  /// value121147
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121147 = AuditEventSubType._(
    '121147',
  );

  /// value121148
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121148 = AuditEventSubType._(
    '121148',
  );

  /// value121149
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121149 = AuditEventSubType._(
    '121149',
  );

  /// value121150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121150 = AuditEventSubType._(
    '121150',
  );

  /// value121151
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121151 = AuditEventSubType._(
    '121151',
  );

  /// value121152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121152 = AuditEventSubType._(
    '121152',
  );

  /// value121153
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121153 = AuditEventSubType._(
    '121153',
  );

  /// value121154
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121154 = AuditEventSubType._(
    '121154',
  );

  /// value121155
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121155 = AuditEventSubType._(
    '121155',
  );

  /// value121156
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121156 = AuditEventSubType._(
    '121156',
  );

  /// value121157
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121157 = AuditEventSubType._(
    '121157',
  );

  /// value121158
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121158 = AuditEventSubType._(
    '121158',
  );

  /// value121160
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121160 = AuditEventSubType._(
    '121160',
  );

  /// value121161
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121161 = AuditEventSubType._(
    '121161',
  );

  /// value121162
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121162 = AuditEventSubType._(
    '121162',
  );

  /// value121163
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121163 = AuditEventSubType._(
    '121163',
  );

  /// value121165
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121165 = AuditEventSubType._(
    '121165',
  );

  /// value121166
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121166 = AuditEventSubType._(
    '121166',
  );

  /// value121167
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121167 = AuditEventSubType._(
    '121167',
  );

  /// value121168
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121168 = AuditEventSubType._(
    '121168',
  );

  /// value121169
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121169 = AuditEventSubType._(
    '121169',
  );

  /// value121171
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121171 = AuditEventSubType._(
    '121171',
  );

  /// value121172
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121172 = AuditEventSubType._(
    '121172',
  );

  /// value121173
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121173 = AuditEventSubType._(
    '121173',
  );

  /// value121174
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121174 = AuditEventSubType._(
    '121174',
  );

  /// value121180
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121180 = AuditEventSubType._(
    '121180',
  );

  /// value121181
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121181 = AuditEventSubType._(
    '121181',
  );

  /// value121190
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121190 = AuditEventSubType._(
    '121190',
  );

  /// value121191
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121191 = AuditEventSubType._(
    '121191',
  );

  /// value121192
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121192 = AuditEventSubType._(
    '121192',
  );

  /// value121193
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121193 = AuditEventSubType._(
    '121193',
  );

  /// value121194
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121194 = AuditEventSubType._(
    '121194',
  );

  /// value121195
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121195 = AuditEventSubType._(
    '121195',
  );

  /// value121196
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121196 = AuditEventSubType._(
    '121196',
  );

  /// value121197
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121197 = AuditEventSubType._(
    '121197',
  );

  /// value121198
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121198 = AuditEventSubType._(
    '121198',
  );

  /// value121200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121200 = AuditEventSubType._(
    '121200',
  );

  /// value121201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121201 = AuditEventSubType._(
    '121201',
  );

  /// value121202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121202 = AuditEventSubType._(
    '121202',
  );

  /// value121206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121206 = AuditEventSubType._(
    '121206',
  );

  /// value121207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121207 = AuditEventSubType._(
    '121207',
  );

  /// value121208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121208 = AuditEventSubType._(
    '121208',
  );

  /// value121210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121210 = AuditEventSubType._(
    '121210',
  );

  /// value121211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121211 = AuditEventSubType._(
    '121211',
  );

  /// value121213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121213 = AuditEventSubType._(
    '121213',
  );

  /// value121214
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121214 = AuditEventSubType._(
    '121214',
  );

  /// value121216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121216 = AuditEventSubType._(
    '121216',
  );

  /// value121217
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121217 = AuditEventSubType._(
    '121217',
  );

  /// value121218
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121218 = AuditEventSubType._(
    '121218',
  );

  /// value121219
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121219 = AuditEventSubType._(
    '121219',
  );

  /// value121220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121220 = AuditEventSubType._(
    '121220',
  );

  /// value121221
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121221 = AuditEventSubType._(
    '121221',
  );

  /// value121222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121222 = AuditEventSubType._(
    '121222',
  );

  /// value121230
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121230 = AuditEventSubType._(
    '121230',
  );

  /// value121231
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121231 = AuditEventSubType._(
    '121231',
  );

  /// value121232
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121232 = AuditEventSubType._(
    '121232',
  );

  /// value121233
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121233 = AuditEventSubType._(
    '121233',
  );

  /// value121242
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121242 = AuditEventSubType._(
    '121242',
  );

  /// value121243
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121243 = AuditEventSubType._(
    '121243',
  );

  /// value121244
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121244 = AuditEventSubType._(
    '121244',
  );

  /// value121290
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121290 = AuditEventSubType._(
    '121290',
  );

  /// value121291
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121291 = AuditEventSubType._(
    '121291',
  );

  /// value121301
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121301 = AuditEventSubType._(
    '121301',
  );

  /// value121302
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121302 = AuditEventSubType._(
    '121302',
  );

  /// value121303
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121303 = AuditEventSubType._(
    '121303',
  );

  /// value121304
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121304 = AuditEventSubType._(
    '121304',
  );

  /// value121305
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121305 = AuditEventSubType._(
    '121305',
  );

  /// value121306
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121306 = AuditEventSubType._(
    '121306',
  );

  /// value121307
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121307 = AuditEventSubType._(
    '121307',
  );

  /// value121311
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121311 = AuditEventSubType._(
    '121311',
  );

  /// value121312
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121312 = AuditEventSubType._(
    '121312',
  );

  /// value121313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121313 = AuditEventSubType._(
    '121313',
  );

  /// value121314
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121314 = AuditEventSubType._(
    '121314',
  );

  /// value121315
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121315 = AuditEventSubType._(
    '121315',
  );

  /// value121316
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121316 = AuditEventSubType._(
    '121316',
  );

  /// value121317
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121317 = AuditEventSubType._(
    '121317',
  );

  /// value121318
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121318 = AuditEventSubType._(
    '121318',
  );

  /// value121320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121320 = AuditEventSubType._(
    '121320',
  );

  /// value121321
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121321 = AuditEventSubType._(
    '121321',
  );

  /// value121322
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121322 = AuditEventSubType._(
    '121322',
  );

  /// value121323
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121323 = AuditEventSubType._(
    '121323',
  );

  /// value121324
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121324 = AuditEventSubType._(
    '121324',
  );

  /// value121325
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121325 = AuditEventSubType._(
    '121325',
  );

  /// value121326
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121326 = AuditEventSubType._(
    '121326',
  );

  /// value121327
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121327 = AuditEventSubType._(
    '121327',
  );

  /// value121328
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121328 = AuditEventSubType._(
    '121328',
  );

  /// value121329
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121329 = AuditEventSubType._(
    '121329',
  );

  /// value121330
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121330 = AuditEventSubType._(
    '121330',
  );

  /// value121331
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121331 = AuditEventSubType._(
    '121331',
  );

  /// value121332
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121332 = AuditEventSubType._(
    '121332',
  );

  /// value121333
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121333 = AuditEventSubType._(
    '121333',
  );

  /// value121334
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121334 = AuditEventSubType._(
    '121334',
  );

  /// value121335
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121335 = AuditEventSubType._(
    '121335',
  );

  /// value121338
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121338 = AuditEventSubType._(
    '121338',
  );

  /// value121339
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121339 = AuditEventSubType._(
    '121339',
  );

  /// value121340
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121340 = AuditEventSubType._(
    '121340',
  );

  /// value121341
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121341 = AuditEventSubType._(
    '121341',
  );

  /// value121342
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121342 = AuditEventSubType._(
    '121342',
  );

  /// value121346
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121346 = AuditEventSubType._(
    '121346',
  );

  /// value121347
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121347 = AuditEventSubType._(
    '121347',
  );

  /// value121348
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121348 = AuditEventSubType._(
    '121348',
  );

  /// value121349
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121349 = AuditEventSubType._(
    '121349',
  );

  /// value121350
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121350 = AuditEventSubType._(
    '121350',
  );

  /// value121351
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121351 = AuditEventSubType._(
    '121351',
  );

  /// value121352
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121352 = AuditEventSubType._(
    '121352',
  );

  /// value121353
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121353 = AuditEventSubType._(
    '121353',
  );

  /// value121354
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121354 = AuditEventSubType._(
    '121354',
  );

  /// value121358
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121358 = AuditEventSubType._(
    '121358',
  );

  /// value121360
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121360 = AuditEventSubType._(
    '121360',
  );

  /// value121361
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121361 = AuditEventSubType._(
    '121361',
  );

  /// value121362
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121362 = AuditEventSubType._(
    '121362',
  );

  /// value121363
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121363 = AuditEventSubType._(
    '121363',
  );

  /// value121370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121370 = AuditEventSubType._(
    '121370',
  );

  /// value121371
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121371 = AuditEventSubType._(
    '121371',
  );

  /// value121372
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121372 = AuditEventSubType._(
    '121372',
  );

  /// value121380
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121380 = AuditEventSubType._(
    '121380',
  );

  /// value121381
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121381 = AuditEventSubType._(
    '121381',
  );

  /// value121382
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121382 = AuditEventSubType._(
    '121382',
  );

  /// value121383
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121383 = AuditEventSubType._(
    '121383',
  );

  /// value121401
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121401 = AuditEventSubType._(
    '121401',
  );

  /// value121402
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121402 = AuditEventSubType._(
    '121402',
  );

  /// value121403
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121403 = AuditEventSubType._(
    '121403',
  );

  /// value121404
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121404 = AuditEventSubType._(
    '121404',
  );

  /// value121405
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121405 = AuditEventSubType._(
    '121405',
  );

  /// value121406
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121406 = AuditEventSubType._(
    '121406',
  );

  /// value121407
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121407 = AuditEventSubType._(
    '121407',
  );

  /// value121408
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121408 = AuditEventSubType._(
    '121408',
  );

  /// value121410
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121410 = AuditEventSubType._(
    '121410',
  );

  /// value121411
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121411 = AuditEventSubType._(
    '121411',
  );

  /// value121412
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121412 = AuditEventSubType._(
    '121412',
  );

  /// value121414
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121414 = AuditEventSubType._(
    '121414',
  );

  /// value121415
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121415 = AuditEventSubType._(
    '121415',
  );

  /// value121416
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121416 = AuditEventSubType._(
    '121416',
  );

  /// value121417
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121417 = AuditEventSubType._(
    '121417',
  );

  /// value121420
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121420 = AuditEventSubType._(
    '121420',
  );

  /// value121421
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121421 = AuditEventSubType._(
    '121421',
  );

  /// value121422
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121422 = AuditEventSubType._(
    '121422',
  );

  /// value121423
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121423 = AuditEventSubType._(
    '121423',
  );

  /// value121424
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121424 = AuditEventSubType._(
    '121424',
  );

  /// value121425
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121425 = AuditEventSubType._(
    '121425',
  );

  /// value121427
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121427 = AuditEventSubType._(
    '121427',
  );

  /// value121428
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121428 = AuditEventSubType._(
    '121428',
  );

  /// value121430
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121430 = AuditEventSubType._(
    '121430',
  );

  /// value121431
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121431 = AuditEventSubType._(
    '121431',
  );

  /// value121432
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121432 = AuditEventSubType._(
    '121432',
  );

  /// value121433
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121433 = AuditEventSubType._(
    '121433',
  );

  /// value121434
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121434 = AuditEventSubType._(
    '121434',
  );

  /// value121435
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121435 = AuditEventSubType._(
    '121435',
  );

  /// value121436
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121436 = AuditEventSubType._(
    '121436',
  );

  /// value121437
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121437 = AuditEventSubType._(
    '121437',
  );

  /// value121438
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121438 = AuditEventSubType._(
    '121438',
  );

  /// value121439
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121439 = AuditEventSubType._(
    '121439',
  );

  /// value121701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121701 = AuditEventSubType._(
    '121701',
  );

  /// value121702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121702 = AuditEventSubType._(
    '121702',
  );

  /// value121703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121703 = AuditEventSubType._(
    '121703',
  );

  /// value121704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121704 = AuditEventSubType._(
    '121704',
  );

  /// value121705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121705 = AuditEventSubType._(
    '121705',
  );

  /// value121706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121706 = AuditEventSubType._(
    '121706',
  );

  /// value121707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121707 = AuditEventSubType._(
    '121707',
  );

  /// value121708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121708 = AuditEventSubType._(
    '121708',
  );

  /// value121709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121709 = AuditEventSubType._(
    '121709',
  );

  /// value121710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121710 = AuditEventSubType._(
    '121710',
  );

  /// value121711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121711 = AuditEventSubType._(
    '121711',
  );

  /// value121712
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121712 = AuditEventSubType._(
    '121712',
  );

  /// value121713
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121713 = AuditEventSubType._(
    '121713',
  );

  /// value121714
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121714 = AuditEventSubType._(
    '121714',
  );

  /// value121715
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121715 = AuditEventSubType._(
    '121715',
  );

  /// value121716
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121716 = AuditEventSubType._(
    '121716',
  );

  /// value121717
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121717 = AuditEventSubType._(
    '121717',
  );

  /// value121718
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121718 = AuditEventSubType._(
    '121718',
  );

  /// value121719
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121719 = AuditEventSubType._(
    '121719',
  );

  /// value121720
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121720 = AuditEventSubType._(
    '121720',
  );

  /// value121721
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121721 = AuditEventSubType._(
    '121721',
  );

  /// value121722
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121722 = AuditEventSubType._(
    '121722',
  );

  /// value121723
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121723 = AuditEventSubType._(
    '121723',
  );

  /// value121724
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121724 = AuditEventSubType._(
    '121724',
  );

  /// value121725
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121725 = AuditEventSubType._(
    '121725',
  );

  /// value121726
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121726 = AuditEventSubType._(
    '121726',
  );

  /// value121727
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121727 = AuditEventSubType._(
    '121727',
  );

  /// value121728
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121728 = AuditEventSubType._(
    '121728',
  );

  /// value121729
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121729 = AuditEventSubType._(
    '121729',
  );

  /// value121730
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121730 = AuditEventSubType._(
    '121730',
  );

  /// value121731
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121731 = AuditEventSubType._(
    '121731',
  );

  /// value121732
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121732 = AuditEventSubType._(
    '121732',
  );

  /// value121733
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121733 = AuditEventSubType._(
    '121733',
  );

  /// value121734
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121734 = AuditEventSubType._(
    '121734',
  );

  /// value121740
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value121740 = AuditEventSubType._(
    '121740',
  );

  /// value122001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122001 = AuditEventSubType._(
    '122001',
  );

  /// value122002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122002 = AuditEventSubType._(
    '122002',
  );

  /// value122003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122003 = AuditEventSubType._(
    '122003',
  );

  /// value122004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122004 = AuditEventSubType._(
    '122004',
  );

  /// value122005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122005 = AuditEventSubType._(
    '122005',
  );

  /// value122006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122006 = AuditEventSubType._(
    '122006',
  );

  /// value122007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122007 = AuditEventSubType._(
    '122007',
  );

  /// value122008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122008 = AuditEventSubType._(
    '122008',
  );

  /// value122009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122009 = AuditEventSubType._(
    '122009',
  );

  /// value122010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122010 = AuditEventSubType._(
    '122010',
  );

  /// value122011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122011 = AuditEventSubType._(
    '122011',
  );

  /// value122012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122012 = AuditEventSubType._(
    '122012',
  );

  /// value122020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122020 = AuditEventSubType._(
    '122020',
  );

  /// value122021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122021 = AuditEventSubType._(
    '122021',
  );

  /// value122022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122022 = AuditEventSubType._(
    '122022',
  );

  /// value122023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122023 = AuditEventSubType._(
    '122023',
  );

  /// value122024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122024 = AuditEventSubType._(
    '122024',
  );

  /// value122025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122025 = AuditEventSubType._(
    '122025',
  );

  /// value122026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122026 = AuditEventSubType._(
    '122026',
  );

  /// value122027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122027 = AuditEventSubType._(
    '122027',
  );

  /// value122028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122028 = AuditEventSubType._(
    '122028',
  );

  /// value122029
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122029 = AuditEventSubType._(
    '122029',
  );

  /// value122030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122030 = AuditEventSubType._(
    '122030',
  );

  /// value122031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122031 = AuditEventSubType._(
    '122031',
  );

  /// value122032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122032 = AuditEventSubType._(
    '122032',
  );

  /// value122033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122033 = AuditEventSubType._(
    '122033',
  );

  /// value122034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122034 = AuditEventSubType._(
    '122034',
  );

  /// value122035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122035 = AuditEventSubType._(
    '122035',
  );

  /// value122036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122036 = AuditEventSubType._(
    '122036',
  );

  /// value122037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122037 = AuditEventSubType._(
    '122037',
  );

  /// value122038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122038 = AuditEventSubType._(
    '122038',
  );

  /// value122039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122039 = AuditEventSubType._(
    '122039',
  );

  /// value122041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122041 = AuditEventSubType._(
    '122041',
  );

  /// value122042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122042 = AuditEventSubType._(
    '122042',
  );

  /// value122043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122043 = AuditEventSubType._(
    '122043',
  );

  /// value122044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122044 = AuditEventSubType._(
    '122044',
  );

  /// value122045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122045 = AuditEventSubType._(
    '122045',
  );

  /// value122046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122046 = AuditEventSubType._(
    '122046',
  );

  /// value122047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122047 = AuditEventSubType._(
    '122047',
  );

  /// value122048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122048 = AuditEventSubType._(
    '122048',
  );

  /// value122049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122049 = AuditEventSubType._(
    '122049',
  );

  /// value122052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122052 = AuditEventSubType._(
    '122052',
  );

  /// value122053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122053 = AuditEventSubType._(
    '122053',
  );

  /// value122054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122054 = AuditEventSubType._(
    '122054',
  );

  /// value122055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122055 = AuditEventSubType._(
    '122055',
  );

  /// value122056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122056 = AuditEventSubType._(
    '122056',
  );

  /// value122057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122057 = AuditEventSubType._(
    '122057',
  );

  /// value122058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122058 = AuditEventSubType._(
    '122058',
  );

  /// value122059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122059 = AuditEventSubType._(
    '122059',
  );

  /// value122060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122060 = AuditEventSubType._(
    '122060',
  );

  /// value122061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122061 = AuditEventSubType._(
    '122061',
  );

  /// value122062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122062 = AuditEventSubType._(
    '122062',
  );

  /// value122072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122072 = AuditEventSubType._(
    '122072',
  );

  /// value122073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122073 = AuditEventSubType._(
    '122073',
  );

  /// value122075
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122075 = AuditEventSubType._(
    '122075',
  );

  /// value122076
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122076 = AuditEventSubType._(
    '122076',
  );

  /// value122077
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122077 = AuditEventSubType._(
    '122077',
  );

  /// value122078
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122078 = AuditEventSubType._(
    '122078',
  );

  /// value122079
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122079 = AuditEventSubType._(
    '122079',
  );

  /// value122081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122081 = AuditEventSubType._(
    '122081',
  );

  /// value122082
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122082 = AuditEventSubType._(
    '122082',
  );

  /// value122083
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122083 = AuditEventSubType._(
    '122083',
  );

  /// value122084
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122084 = AuditEventSubType._(
    '122084',
  );

  /// value122085
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122085 = AuditEventSubType._(
    '122085',
  );

  /// value122086
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122086 = AuditEventSubType._(
    '122086',
  );

  /// value122087
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122087 = AuditEventSubType._(
    '122087',
  );

  /// value122088
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122088 = AuditEventSubType._(
    '122088',
  );

  /// value122089
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122089 = AuditEventSubType._(
    '122089',
  );

  /// value122090
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122090 = AuditEventSubType._(
    '122090',
  );

  /// value122091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122091 = AuditEventSubType._(
    '122091',
  );

  /// value122092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122092 = AuditEventSubType._(
    '122092',
  );

  /// value122093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122093 = AuditEventSubType._(
    '122093',
  );

  /// value122094
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122094 = AuditEventSubType._(
    '122094',
  );

  /// value122095
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122095 = AuditEventSubType._(
    '122095',
  );

  /// value122096
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122096 = AuditEventSubType._(
    '122096',
  );

  /// value122097
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122097 = AuditEventSubType._(
    '122097',
  );

  /// value122098
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122098 = AuditEventSubType._(
    '122098',
  );

  /// value122099
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122099 = AuditEventSubType._(
    '122099',
  );

  /// value122101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122101 = AuditEventSubType._(
    '122101',
  );

  /// value122102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122102 = AuditEventSubType._(
    '122102',
  );

  /// value122103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122103 = AuditEventSubType._(
    '122103',
  );

  /// value122104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122104 = AuditEventSubType._(
    '122104',
  );

  /// value122105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122105 = AuditEventSubType._(
    '122105',
  );

  /// value122106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122106 = AuditEventSubType._(
    '122106',
  );

  /// value122107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122107 = AuditEventSubType._(
    '122107',
  );

  /// value122108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122108 = AuditEventSubType._(
    '122108',
  );

  /// value122109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122109 = AuditEventSubType._(
    '122109',
  );

  /// value122110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122110 = AuditEventSubType._(
    '122110',
  );

  /// value122111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122111 = AuditEventSubType._(
    '122111',
  );

  /// value122112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122112 = AuditEventSubType._(
    '122112',
  );

  /// value122113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122113 = AuditEventSubType._(
    '122113',
  );

  /// value122114
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122114 = AuditEventSubType._(
    '122114',
  );

  /// value122120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122120 = AuditEventSubType._(
    '122120',
  );

  /// value122121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122121 = AuditEventSubType._(
    '122121',
  );

  /// value122122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122122 = AuditEventSubType._(
    '122122',
  );

  /// value122123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122123 = AuditEventSubType._(
    '122123',
  );

  /// value122124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122124 = AuditEventSubType._(
    '122124',
  );

  /// value122125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122125 = AuditEventSubType._(
    '122125',
  );

  /// value122126
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122126 = AuditEventSubType._(
    '122126',
  );

  /// value122127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122127 = AuditEventSubType._(
    '122127',
  );

  /// value122128
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122128 = AuditEventSubType._(
    '122128',
  );

  /// value122129
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122129 = AuditEventSubType._(
    '122129',
  );

  /// value122130
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122130 = AuditEventSubType._(
    '122130',
  );

  /// value122131
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122131 = AuditEventSubType._(
    '122131',
  );

  /// value122132
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122132 = AuditEventSubType._(
    '122132',
  );

  /// value122133
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122133 = AuditEventSubType._(
    '122133',
  );

  /// value122134
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122134 = AuditEventSubType._(
    '122134',
  );

  /// value122138
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122138 = AuditEventSubType._(
    '122138',
  );

  /// value122139
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122139 = AuditEventSubType._(
    '122139',
  );

  /// value122140
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122140 = AuditEventSubType._(
    '122140',
  );

  /// value122141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122141 = AuditEventSubType._(
    '122141',
  );

  /// value122142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122142 = AuditEventSubType._(
    '122142',
  );

  /// value122143
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122143 = AuditEventSubType._(
    '122143',
  );

  /// value122144
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122144 = AuditEventSubType._(
    '122144',
  );

  /// value122145
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122145 = AuditEventSubType._(
    '122145',
  );

  /// value122146
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122146 = AuditEventSubType._(
    '122146',
  );

  /// value122147
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122147 = AuditEventSubType._(
    '122147',
  );

  /// value122148
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122148 = AuditEventSubType._(
    '122148',
  );

  /// value122149
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122149 = AuditEventSubType._(
    '122149',
  );

  /// value122150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122150 = AuditEventSubType._(
    '122150',
  );

  /// value122151
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122151 = AuditEventSubType._(
    '122151',
  );

  /// value122152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122152 = AuditEventSubType._(
    '122152',
  );

  /// value122153
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122153 = AuditEventSubType._(
    '122153',
  );

  /// value122154
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122154 = AuditEventSubType._(
    '122154',
  );

  /// value122157
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122157 = AuditEventSubType._(
    '122157',
  );

  /// value122158
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122158 = AuditEventSubType._(
    '122158',
  );

  /// value122159
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122159 = AuditEventSubType._(
    '122159',
  );

  /// value122160
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122160 = AuditEventSubType._(
    '122160',
  );

  /// value122161
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122161 = AuditEventSubType._(
    '122161',
  );

  /// value122162
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122162 = AuditEventSubType._(
    '122162',
  );

  /// value122163
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122163 = AuditEventSubType._(
    '122163',
  );

  /// value122164
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122164 = AuditEventSubType._(
    '122164',
  );

  /// value122165
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122165 = AuditEventSubType._(
    '122165',
  );

  /// value122166
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122166 = AuditEventSubType._(
    '122166',
  );

  /// value122167
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122167 = AuditEventSubType._(
    '122167',
  );

  /// value122170
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122170 = AuditEventSubType._(
    '122170',
  );

  /// value122171
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122171 = AuditEventSubType._(
    '122171',
  );

  /// value122172
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122172 = AuditEventSubType._(
    '122172',
  );

  /// value122173
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122173 = AuditEventSubType._(
    '122173',
  );

  /// value122175
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122175 = AuditEventSubType._(
    '122175',
  );

  /// value122176
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122176 = AuditEventSubType._(
    '122176',
  );

  /// value122177
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122177 = AuditEventSubType._(
    '122177',
  );

  /// value122178
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122178 = AuditEventSubType._(
    '122178',
  );

  /// value122179
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122179 = AuditEventSubType._(
    '122179',
  );

  /// value122180
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122180 = AuditEventSubType._(
    '122180',
  );

  /// value122181
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122181 = AuditEventSubType._(
    '122181',
  );

  /// value122182
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122182 = AuditEventSubType._(
    '122182',
  );

  /// value122183
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122183 = AuditEventSubType._(
    '122183',
  );

  /// value122185
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122185 = AuditEventSubType._(
    '122185',
  );

  /// value122187
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122187 = AuditEventSubType._(
    '122187',
  );

  /// value122188
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122188 = AuditEventSubType._(
    '122188',
  );

  /// value122189
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122189 = AuditEventSubType._(
    '122189',
  );

  /// value122190
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122190 = AuditEventSubType._(
    '122190',
  );

  /// value122191
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122191 = AuditEventSubType._(
    '122191',
  );

  /// value122192
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122192 = AuditEventSubType._(
    '122192',
  );

  /// value122193
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122193 = AuditEventSubType._(
    '122193',
  );

  /// value122194
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122194 = AuditEventSubType._(
    '122194',
  );

  /// value122195
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122195 = AuditEventSubType._(
    '122195',
  );

  /// value122196
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122196 = AuditEventSubType._(
    '122196',
  );

  /// value122197
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122197 = AuditEventSubType._(
    '122197',
  );

  /// value122198
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122198 = AuditEventSubType._(
    '122198',
  );

  /// value122199
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122199 = AuditEventSubType._(
    '122199',
  );

  /// value122201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122201 = AuditEventSubType._(
    '122201',
  );

  /// value122202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122202 = AuditEventSubType._(
    '122202',
  );

  /// value122203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122203 = AuditEventSubType._(
    '122203',
  );

  /// value122204
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122204 = AuditEventSubType._(
    '122204',
  );

  /// value122205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122205 = AuditEventSubType._(
    '122205',
  );

  /// value122206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122206 = AuditEventSubType._(
    '122206',
  );

  /// value122207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122207 = AuditEventSubType._(
    '122207',
  );

  /// value122208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122208 = AuditEventSubType._(
    '122208',
  );

  /// value122209
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122209 = AuditEventSubType._(
    '122209',
  );

  /// value122210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122210 = AuditEventSubType._(
    '122210',
  );

  /// value122211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122211 = AuditEventSubType._(
    '122211',
  );

  /// value122212
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122212 = AuditEventSubType._(
    '122212',
  );

  /// value122213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122213 = AuditEventSubType._(
    '122213',
  );

  /// value122214
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122214 = AuditEventSubType._(
    '122214',
  );

  /// value122215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122215 = AuditEventSubType._(
    '122215',
  );

  /// value122216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122216 = AuditEventSubType._(
    '122216',
  );

  /// value122217
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122217 = AuditEventSubType._(
    '122217',
  );

  /// value122218
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122218 = AuditEventSubType._(
    '122218',
  );

  /// value122219
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122219 = AuditEventSubType._(
    '122219',
  );

  /// value122220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122220 = AuditEventSubType._(
    '122220',
  );

  /// value122221
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122221 = AuditEventSubType._(
    '122221',
  );

  /// value122222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122222 = AuditEventSubType._(
    '122222',
  );

  /// value122223
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122223 = AuditEventSubType._(
    '122223',
  );

  /// value122224
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122224 = AuditEventSubType._(
    '122224',
  );

  /// value122225
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122225 = AuditEventSubType._(
    '122225',
  );

  /// value122227
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122227 = AuditEventSubType._(
    '122227',
  );

  /// value122228
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122228 = AuditEventSubType._(
    '122228',
  );

  /// value122229
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122229 = AuditEventSubType._(
    '122229',
  );

  /// value122230
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122230 = AuditEventSubType._(
    '122230',
  );

  /// value122231
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122231 = AuditEventSubType._(
    '122231',
  );

  /// value122232
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122232 = AuditEventSubType._(
    '122232',
  );

  /// value122233
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122233 = AuditEventSubType._(
    '122233',
  );

  /// value122234
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122234 = AuditEventSubType._(
    '122234',
  );

  /// value122235
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122235 = AuditEventSubType._(
    '122235',
  );

  /// value122236
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122236 = AuditEventSubType._(
    '122236',
  );

  /// value122237
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122237 = AuditEventSubType._(
    '122237',
  );

  /// value122238
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122238 = AuditEventSubType._(
    '122238',
  );

  /// value122239
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122239 = AuditEventSubType._(
    '122239',
  );

  /// value122240
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122240 = AuditEventSubType._(
    '122240',
  );

  /// value122241
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122241 = AuditEventSubType._(
    '122241',
  );

  /// value122242
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122242 = AuditEventSubType._(
    '122242',
  );

  /// value122243
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122243 = AuditEventSubType._(
    '122243',
  );

  /// value122244
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122244 = AuditEventSubType._(
    '122244',
  );

  /// value122245
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122245 = AuditEventSubType._(
    '122245',
  );

  /// value122246
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122246 = AuditEventSubType._(
    '122246',
  );

  /// value122247
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122247 = AuditEventSubType._(
    '122247',
  );

  /// value122248
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122248 = AuditEventSubType._(
    '122248',
  );

  /// value122249
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122249 = AuditEventSubType._(
    '122249',
  );

  /// value122250
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122250 = AuditEventSubType._(
    '122250',
  );

  /// value122251
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122251 = AuditEventSubType._(
    '122251',
  );

  /// value122252
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122252 = AuditEventSubType._(
    '122252',
  );

  /// value122253
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122253 = AuditEventSubType._(
    '122253',
  );

  /// value122254
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122254 = AuditEventSubType._(
    '122254',
  );

  /// value122255
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122255 = AuditEventSubType._(
    '122255',
  );

  /// value122256
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122256 = AuditEventSubType._(
    '122256',
  );

  /// value122257
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122257 = AuditEventSubType._(
    '122257',
  );

  /// value122258
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122258 = AuditEventSubType._(
    '122258',
  );

  /// value122259
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122259 = AuditEventSubType._(
    '122259',
  );

  /// value122260
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122260 = AuditEventSubType._(
    '122260',
  );

  /// value122261
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122261 = AuditEventSubType._(
    '122261',
  );

  /// value122262
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122262 = AuditEventSubType._(
    '122262',
  );

  /// value122263
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122263 = AuditEventSubType._(
    '122263',
  );

  /// value122265
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122265 = AuditEventSubType._(
    '122265',
  );

  /// value122266
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122266 = AuditEventSubType._(
    '122266',
  );

  /// value122267
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122267 = AuditEventSubType._(
    '122267',
  );

  /// value122268
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122268 = AuditEventSubType._(
    '122268',
  );

  /// value122269
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122269 = AuditEventSubType._(
    '122269',
  );

  /// value122270
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122270 = AuditEventSubType._(
    '122270',
  );

  /// value122271
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122271 = AuditEventSubType._(
    '122271',
  );

  /// value122272
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122272 = AuditEventSubType._(
    '122272',
  );

  /// value122273
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122273 = AuditEventSubType._(
    '122273',
  );

  /// value122274
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122274 = AuditEventSubType._(
    '122274',
  );

  /// value122275
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122275 = AuditEventSubType._(
    '122275',
  );

  /// value122276
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122276 = AuditEventSubType._(
    '122276',
  );

  /// value122277
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122277 = AuditEventSubType._(
    '122277',
  );

  /// value122278
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122278 = AuditEventSubType._(
    '122278',
  );

  /// value122279
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122279 = AuditEventSubType._(
    '122279',
  );

  /// value122281
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122281 = AuditEventSubType._(
    '122281',
  );

  /// value122282
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122282 = AuditEventSubType._(
    '122282',
  );

  /// value122283
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122283 = AuditEventSubType._(
    '122283',
  );

  /// value122288
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122288 = AuditEventSubType._(
    '122288',
  );

  /// value122291
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122291 = AuditEventSubType._(
    '122291',
  );

  /// value122292
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122292 = AuditEventSubType._(
    '122292',
  );

  /// value122301
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122301 = AuditEventSubType._(
    '122301',
  );

  /// value122302
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122302 = AuditEventSubType._(
    '122302',
  );

  /// value122303
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122303 = AuditEventSubType._(
    '122303',
  );

  /// value122304
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122304 = AuditEventSubType._(
    '122304',
  );

  /// value122305
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122305 = AuditEventSubType._(
    '122305',
  );

  /// value122306
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122306 = AuditEventSubType._(
    '122306',
  );

  /// value122307
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122307 = AuditEventSubType._(
    '122307',
  );

  /// value122308
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122308 = AuditEventSubType._(
    '122308',
  );

  /// value122309
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122309 = AuditEventSubType._(
    '122309',
  );

  /// value122310
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122310 = AuditEventSubType._(
    '122310',
  );

  /// value122311
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122311 = AuditEventSubType._(
    '122311',
  );

  /// value122312
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122312 = AuditEventSubType._(
    '122312',
  );

  /// value122313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122313 = AuditEventSubType._(
    '122313',
  );

  /// value122319
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122319 = AuditEventSubType._(
    '122319',
  );

  /// value122320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122320 = AuditEventSubType._(
    '122320',
  );

  /// value122321
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122321 = AuditEventSubType._(
    '122321',
  );

  /// value122322
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122322 = AuditEventSubType._(
    '122322',
  );

  /// value122325
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122325 = AuditEventSubType._(
    '122325',
  );

  /// value122330
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122330 = AuditEventSubType._(
    '122330',
  );

  /// value122331
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122331 = AuditEventSubType._(
    '122331',
  );

  /// value122332
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122332 = AuditEventSubType._(
    '122332',
  );

  /// value122333
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122333 = AuditEventSubType._(
    '122333',
  );

  /// value122334
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122334 = AuditEventSubType._(
    '122334',
  );

  /// value122335
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122335 = AuditEventSubType._(
    '122335',
  );

  /// value122336
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122336 = AuditEventSubType._(
    '122336',
  );

  /// value122337
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122337 = AuditEventSubType._(
    '122337',
  );

  /// value122339
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122339 = AuditEventSubType._(
    '122339',
  );

  /// value122340
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122340 = AuditEventSubType._(
    '122340',
  );

  /// value122341
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122341 = AuditEventSubType._(
    '122341',
  );

  /// value122343
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122343 = AuditEventSubType._(
    '122343',
  );

  /// value122344
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122344 = AuditEventSubType._(
    '122344',
  );

  /// value122345
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122345 = AuditEventSubType._(
    '122345',
  );

  /// value122346
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122346 = AuditEventSubType._(
    '122346',
  );

  /// value122347
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122347 = AuditEventSubType._(
    '122347',
  );

  /// value122348
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122348 = AuditEventSubType._(
    '122348',
  );

  /// value122350
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122350 = AuditEventSubType._(
    '122350',
  );

  /// value122351
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122351 = AuditEventSubType._(
    '122351',
  );

  /// value122352
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122352 = AuditEventSubType._(
    '122352',
  );

  /// value122354
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122354 = AuditEventSubType._(
    '122354',
  );

  /// value122355
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122355 = AuditEventSubType._(
    '122355',
  );

  /// value122356
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122356 = AuditEventSubType._(
    '122356',
  );

  /// value122357
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122357 = AuditEventSubType._(
    '122357',
  );

  /// value122360
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122360 = AuditEventSubType._(
    '122360',
  );

  /// value122361
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122361 = AuditEventSubType._(
    '122361',
  );

  /// value122363
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122363 = AuditEventSubType._(
    '122363',
  );

  /// value122364
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122364 = AuditEventSubType._(
    '122364',
  );

  /// value122367
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122367 = AuditEventSubType._(
    '122367',
  );

  /// value122368
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122368 = AuditEventSubType._(
    '122368',
  );

  /// value122369
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122369 = AuditEventSubType._(
    '122369',
  );

  /// value122370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122370 = AuditEventSubType._(
    '122370',
  );

  /// value122371
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122371 = AuditEventSubType._(
    '122371',
  );

  /// value122372
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122372 = AuditEventSubType._(
    '122372',
  );

  /// value122374
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122374 = AuditEventSubType._(
    '122374',
  );

  /// value122375
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122375 = AuditEventSubType._(
    '122375',
  );

  /// value122376
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122376 = AuditEventSubType._(
    '122376',
  );

  /// value122380
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122380 = AuditEventSubType._(
    '122380',
  );

  /// value122381
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122381 = AuditEventSubType._(
    '122381',
  );

  /// value122382
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122382 = AuditEventSubType._(
    '122382',
  );

  /// value122383
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122383 = AuditEventSubType._(
    '122383',
  );

  /// value122384
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122384 = AuditEventSubType._(
    '122384',
  );

  /// value122385
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122385 = AuditEventSubType._(
    '122385',
  );

  /// value122386
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122386 = AuditEventSubType._(
    '122386',
  );

  /// value122387
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122387 = AuditEventSubType._(
    '122387',
  );

  /// value122388
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122388 = AuditEventSubType._(
    '122388',
  );

  /// value122389
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122389 = AuditEventSubType._(
    '122389',
  );

  /// value122390
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122390 = AuditEventSubType._(
    '122390',
  );

  /// value122391
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122391 = AuditEventSubType._(
    '122391',
  );

  /// value122393
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122393 = AuditEventSubType._(
    '122393',
  );

  /// value122394
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122394 = AuditEventSubType._(
    '122394',
  );

  /// value122395
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122395 = AuditEventSubType._(
    '122395',
  );

  /// value122398
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122398 = AuditEventSubType._(
    '122398',
  );

  /// value122399
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122399 = AuditEventSubType._(
    '122399',
  );

  /// value122400
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122400 = AuditEventSubType._(
    '122400',
  );

  /// value122401
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122401 = AuditEventSubType._(
    '122401',
  );

  /// value122402
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122402 = AuditEventSubType._(
    '122402',
  );

  /// value122403
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122403 = AuditEventSubType._(
    '122403',
  );

  /// value122404
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122404 = AuditEventSubType._(
    '122404',
  );

  /// value122405
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122405 = AuditEventSubType._(
    '122405',
  );

  /// value122406
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122406 = AuditEventSubType._(
    '122406',
  );

  /// value122407
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122407 = AuditEventSubType._(
    '122407',
  );

  /// value122408
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122408 = AuditEventSubType._(
    '122408',
  );

  /// value122410
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122410 = AuditEventSubType._(
    '122410',
  );

  /// value122411
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122411 = AuditEventSubType._(
    '122411',
  );

  /// value122417
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122417 = AuditEventSubType._(
    '122417',
  );

  /// value122421
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122421 = AuditEventSubType._(
    '122421',
  );

  /// value122422
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122422 = AuditEventSubType._(
    '122422',
  );

  /// value122423
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122423 = AuditEventSubType._(
    '122423',
  );

  /// value122428
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122428 = AuditEventSubType._(
    '122428',
  );

  /// value122429
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122429 = AuditEventSubType._(
    '122429',
  );

  /// value122430
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122430 = AuditEventSubType._(
    '122430',
  );

  /// value122431
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122431 = AuditEventSubType._(
    '122431',
  );

  /// value122432
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122432 = AuditEventSubType._(
    '122432',
  );

  /// value122433
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122433 = AuditEventSubType._(
    '122433',
  );

  /// value122434
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122434 = AuditEventSubType._(
    '122434',
  );

  /// value122435
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122435 = AuditEventSubType._(
    '122435',
  );

  /// value122438
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122438 = AuditEventSubType._(
    '122438',
  );

  /// value122445
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122445 = AuditEventSubType._(
    '122445',
  );

  /// value122446
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122446 = AuditEventSubType._(
    '122446',
  );

  /// value122447
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122447 = AuditEventSubType._(
    '122447',
  );

  /// value122448
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122448 = AuditEventSubType._(
    '122448',
  );

  /// value122449
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122449 = AuditEventSubType._(
    '122449',
  );

  /// value122450
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122450 = AuditEventSubType._(
    '122450',
  );

  /// value122451
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122451 = AuditEventSubType._(
    '122451',
  );

  /// value122452
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122452 = AuditEventSubType._(
    '122452',
  );

  /// value122453
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122453 = AuditEventSubType._(
    '122453',
  );

  /// value122459
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122459 = AuditEventSubType._(
    '122459',
  );

  /// value122461
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122461 = AuditEventSubType._(
    '122461',
  );

  /// value122464
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122464 = AuditEventSubType._(
    '122464',
  );

  /// value122465
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122465 = AuditEventSubType._(
    '122465',
  );

  /// value122466
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122466 = AuditEventSubType._(
    '122466',
  );

  /// value122467
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122467 = AuditEventSubType._(
    '122467',
  );

  /// value122468
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122468 = AuditEventSubType._(
    '122468',
  );

  /// value122469
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122469 = AuditEventSubType._(
    '122469',
  );

  /// value122470
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122470 = AuditEventSubType._(
    '122470',
  );

  /// value122471
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122471 = AuditEventSubType._(
    '122471',
  );

  /// value122472
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122472 = AuditEventSubType._(
    '122472',
  );

  /// value122473
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122473 = AuditEventSubType._(
    '122473',
  );

  /// value122474
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122474 = AuditEventSubType._(
    '122474',
  );

  /// value122475
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122475 = AuditEventSubType._(
    '122475',
  );

  /// value122476
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122476 = AuditEventSubType._(
    '122476',
  );

  /// value122477
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122477 = AuditEventSubType._(
    '122477',
  );

  /// value122480
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122480 = AuditEventSubType._(
    '122480',
  );

  /// value122481
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122481 = AuditEventSubType._(
    '122481',
  );

  /// value122482
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122482 = AuditEventSubType._(
    '122482',
  );

  /// value122485
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122485 = AuditEventSubType._(
    '122485',
  );

  /// value122486
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122486 = AuditEventSubType._(
    '122486',
  );

  /// value122487
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122487 = AuditEventSubType._(
    '122487',
  );

  /// value122488
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122488 = AuditEventSubType._(
    '122488',
  );

  /// value122489
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122489 = AuditEventSubType._(
    '122489',
  );

  /// value122490
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122490 = AuditEventSubType._(
    '122490',
  );

  /// value122491
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122491 = AuditEventSubType._(
    '122491',
  );

  /// value122493
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122493 = AuditEventSubType._(
    '122493',
  );

  /// value122495
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122495 = AuditEventSubType._(
    '122495',
  );

  /// value122496
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122496 = AuditEventSubType._(
    '122496',
  );

  /// value122497
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122497 = AuditEventSubType._(
    '122497',
  );

  /// value122498
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122498 = AuditEventSubType._(
    '122498',
  );

  /// value122499
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122499 = AuditEventSubType._(
    '122499',
  );

  /// value122501
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122501 = AuditEventSubType._(
    '122501',
  );

  /// value122502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122502 = AuditEventSubType._(
    '122502',
  );

  /// value122503
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122503 = AuditEventSubType._(
    '122503',
  );

  /// value122505
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122505 = AuditEventSubType._(
    '122505',
  );

  /// value122507
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122507 = AuditEventSubType._(
    '122507',
  );

  /// value122508
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122508 = AuditEventSubType._(
    '122508',
  );

  /// value122509
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122509 = AuditEventSubType._(
    '122509',
  );

  /// value122510
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122510 = AuditEventSubType._(
    '122510',
  );

  /// value122511
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122511 = AuditEventSubType._(
    '122511',
  );

  /// value122516
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122516 = AuditEventSubType._(
    '122516',
  );

  /// value122517
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122517 = AuditEventSubType._(
    '122517',
  );

  /// value122528
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122528 = AuditEventSubType._(
    '122528',
  );

  /// value122529
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122529 = AuditEventSubType._(
    '122529',
  );

  /// value122542
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122542 = AuditEventSubType._(
    '122542',
  );

  /// value122544
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122544 = AuditEventSubType._(
    '122544',
  );

  /// value122545
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122545 = AuditEventSubType._(
    '122545',
  );

  /// value122546
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122546 = AuditEventSubType._(
    '122546',
  );

  /// value122547
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122547 = AuditEventSubType._(
    '122547',
  );

  /// value122548
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122548 = AuditEventSubType._(
    '122548',
  );

  /// value122549
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122549 = AuditEventSubType._(
    '122549',
  );

  /// value122550
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122550 = AuditEventSubType._(
    '122550',
  );

  /// value122551
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122551 = AuditEventSubType._(
    '122551',
  );

  /// value122554
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122554 = AuditEventSubType._(
    '122554',
  );

  /// value122555
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122555 = AuditEventSubType._(
    '122555',
  );

  /// value122558
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122558 = AuditEventSubType._(
    '122558',
  );

  /// value122559
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122559 = AuditEventSubType._(
    '122559',
  );

  /// value122560
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122560 = AuditEventSubType._(
    '122560',
  );

  /// value122562
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122562 = AuditEventSubType._(
    '122562',
  );

  /// value122563
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122563 = AuditEventSubType._(
    '122563',
  );

  /// value122564
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122564 = AuditEventSubType._(
    '122564',
  );

  /// value122565
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122565 = AuditEventSubType._(
    '122565',
  );

  /// value122566
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122566 = AuditEventSubType._(
    '122566',
  );

  /// value122572
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122572 = AuditEventSubType._(
    '122572',
  );

  /// value122574
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122574 = AuditEventSubType._(
    '122574',
  );

  /// value122575
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122575 = AuditEventSubType._(
    '122575',
  );

  /// value122582
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122582 = AuditEventSubType._(
    '122582',
  );

  /// value122600
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122600 = AuditEventSubType._(
    '122600',
  );

  /// value122601
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122601 = AuditEventSubType._(
    '122601',
  );

  /// value122602
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122602 = AuditEventSubType._(
    '122602',
  );

  /// value122603
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122603 = AuditEventSubType._(
    '122603',
  );

  /// value122604
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122604 = AuditEventSubType._(
    '122604',
  );

  /// value122605
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122605 = AuditEventSubType._(
    '122605',
  );

  /// value122606
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122606 = AuditEventSubType._(
    '122606',
  );

  /// value122607
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122607 = AuditEventSubType._(
    '122607',
  );

  /// value122608
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122608 = AuditEventSubType._(
    '122608',
  );

  /// value122609
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122609 = AuditEventSubType._(
    '122609',
  );

  /// value122611
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122611 = AuditEventSubType._(
    '122611',
  );

  /// value122612
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122612 = AuditEventSubType._(
    '122612',
  );

  /// value122616
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122616 = AuditEventSubType._(
    '122616',
  );

  /// value122617
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122617 = AuditEventSubType._(
    '122617',
  );

  /// value122618
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122618 = AuditEventSubType._(
    '122618',
  );

  /// value122619
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122619 = AuditEventSubType._(
    '122619',
  );

  /// value122620
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122620 = AuditEventSubType._(
    '122620',
  );

  /// value122621
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122621 = AuditEventSubType._(
    '122621',
  );

  /// value122624
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122624 = AuditEventSubType._(
    '122624',
  );

  /// value122627
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122627 = AuditEventSubType._(
    '122627',
  );

  /// value122628
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122628 = AuditEventSubType._(
    '122628',
  );

  /// value122631
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122631 = AuditEventSubType._(
    '122631',
  );

  /// value122633
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122633 = AuditEventSubType._(
    '122633',
  );

  /// value122634
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122634 = AuditEventSubType._(
    '122634',
  );

  /// value122635
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122635 = AuditEventSubType._(
    '122635',
  );

  /// value122636
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122636 = AuditEventSubType._(
    '122636',
  );

  /// value122637
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122637 = AuditEventSubType._(
    '122637',
  );

  /// value122638
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122638 = AuditEventSubType._(
    '122638',
  );

  /// value122639
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122639 = AuditEventSubType._(
    '122639',
  );

  /// value122640
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122640 = AuditEventSubType._(
    '122640',
  );

  /// value122642
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122642 = AuditEventSubType._(
    '122642',
  );

  /// value122643
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122643 = AuditEventSubType._(
    '122643',
  );

  /// value122645
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122645 = AuditEventSubType._(
    '122645',
  );

  /// value122650
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122650 = AuditEventSubType._(
    '122650',
  );

  /// value122651
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122651 = AuditEventSubType._(
    '122651',
  );

  /// value122652
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122652 = AuditEventSubType._(
    '122652',
  );

  /// value122655
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122655 = AuditEventSubType._(
    '122655',
  );

  /// value122656
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122656 = AuditEventSubType._(
    '122656',
  );

  /// value122657
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122657 = AuditEventSubType._(
    '122657',
  );

  /// value122658
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122658 = AuditEventSubType._(
    '122658',
  );

  /// value122659
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122659 = AuditEventSubType._(
    '122659',
  );

  /// value122660
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122660 = AuditEventSubType._(
    '122660',
  );

  /// value122661
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122661 = AuditEventSubType._(
    '122661',
  );

  /// value122664
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122664 = AuditEventSubType._(
    '122664',
  );

  /// value122665
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122665 = AuditEventSubType._(
    '122665',
  );

  /// value122666
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122666 = AuditEventSubType._(
    '122666',
  );

  /// value122667
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122667 = AuditEventSubType._(
    '122667',
  );

  /// value122668
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122668 = AuditEventSubType._(
    '122668',
  );

  /// value122670
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122670 = AuditEventSubType._(
    '122670',
  );

  /// value122675
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122675 = AuditEventSubType._(
    '122675',
  );

  /// value122680
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122680 = AuditEventSubType._(
    '122680',
  );

  /// value122683
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122683 = AuditEventSubType._(
    '122683',
  );

  /// value122684
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122684 = AuditEventSubType._(
    '122684',
  );

  /// value122685
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122685 = AuditEventSubType._(
    '122685',
  );

  /// value122686
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122686 = AuditEventSubType._(
    '122686',
  );

  /// value122687
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122687 = AuditEventSubType._(
    '122687',
  );

  /// value122698
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122698 = AuditEventSubType._(
    '122698',
  );

  /// value122699
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122699 = AuditEventSubType._(
    '122699',
  );

  /// value122700
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122700 = AuditEventSubType._(
    '122700',
  );

  /// value122701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122701 = AuditEventSubType._(
    '122701',
  );

  /// value122702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122702 = AuditEventSubType._(
    '122702',
  );

  /// value122703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122703 = AuditEventSubType._(
    '122703',
  );

  /// value122704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122704 = AuditEventSubType._(
    '122704',
  );

  /// value122705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122705 = AuditEventSubType._(
    '122705',
  );

  /// value122706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122706 = AuditEventSubType._(
    '122706',
  );

  /// value122707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122707 = AuditEventSubType._(
    '122707',
  );

  /// value122708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122708 = AuditEventSubType._(
    '122708',
  );

  /// value122709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122709 = AuditEventSubType._(
    '122709',
  );

  /// value122710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122710 = AuditEventSubType._(
    '122710',
  );

  /// value122711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122711 = AuditEventSubType._(
    '122711',
  );

  /// value122712
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122712 = AuditEventSubType._(
    '122712',
  );

  /// value122713
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122713 = AuditEventSubType._(
    '122713',
  );

  /// value122715
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122715 = AuditEventSubType._(
    '122715',
  );

  /// value122716
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122716 = AuditEventSubType._(
    '122716',
  );

  /// value122717
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122717 = AuditEventSubType._(
    '122717',
  );

  /// value122718
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122718 = AuditEventSubType._(
    '122718',
  );

  /// value122720
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122720 = AuditEventSubType._(
    '122720',
  );

  /// value122721
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122721 = AuditEventSubType._(
    '122721',
  );

  /// value122726
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122726 = AuditEventSubType._(
    '122726',
  );

  /// value122727
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122727 = AuditEventSubType._(
    '122727',
  );

  /// value122728
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122728 = AuditEventSubType._(
    '122728',
  );

  /// value122729
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122729 = AuditEventSubType._(
    '122729',
  );

  /// value122730
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122730 = AuditEventSubType._(
    '122730',
  );

  /// value122731
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122731 = AuditEventSubType._(
    '122731',
  );

  /// value122732
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122732 = AuditEventSubType._(
    '122732',
  );

  /// value122733
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122733 = AuditEventSubType._(
    '122733',
  );

  /// value122734
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122734 = AuditEventSubType._(
    '122734',
  );

  /// value122735
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122735 = AuditEventSubType._(
    '122735',
  );

  /// value122739
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122739 = AuditEventSubType._(
    '122739',
  );

  /// value122740
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122740 = AuditEventSubType._(
    '122740',
  );

  /// value122741
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122741 = AuditEventSubType._(
    '122741',
  );

  /// value122742
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122742 = AuditEventSubType._(
    '122742',
  );

  /// value122743
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122743 = AuditEventSubType._(
    '122743',
  );

  /// value122744
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122744 = AuditEventSubType._(
    '122744',
  );

  /// value122745
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122745 = AuditEventSubType._(
    '122745',
  );

  /// value122748
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122748 = AuditEventSubType._(
    '122748',
  );

  /// value122750
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122750 = AuditEventSubType._(
    '122750',
  );

  /// value122751
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122751 = AuditEventSubType._(
    '122751',
  );

  /// value122752
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122752 = AuditEventSubType._(
    '122752',
  );

  /// value122753
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122753 = AuditEventSubType._(
    '122753',
  );

  /// value122755
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122755 = AuditEventSubType._(
    '122755',
  );

  /// value122756
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122756 = AuditEventSubType._(
    '122756',
  );

  /// value122757
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122757 = AuditEventSubType._(
    '122757',
  );

  /// value122758
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122758 = AuditEventSubType._(
    '122758',
  );

  /// value122759
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122759 = AuditEventSubType._(
    '122759',
  );

  /// value122760
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122760 = AuditEventSubType._(
    '122760',
  );

  /// value122762
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122762 = AuditEventSubType._(
    '122762',
  );

  /// value122764
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122764 = AuditEventSubType._(
    '122764',
  );

  /// value122768
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122768 = AuditEventSubType._(
    '122768',
  );

  /// value122769
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122769 = AuditEventSubType._(
    '122769',
  );

  /// value122770
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122770 = AuditEventSubType._(
    '122770',
  );

  /// value122771
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122771 = AuditEventSubType._(
    '122771',
  );

  /// value122772
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122772 = AuditEventSubType._(
    '122772',
  );

  /// value122773
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122773 = AuditEventSubType._(
    '122773',
  );

  /// value122775
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122775 = AuditEventSubType._(
    '122775',
  );

  /// value122776
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122776 = AuditEventSubType._(
    '122776',
  );

  /// value122781
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122781 = AuditEventSubType._(
    '122781',
  );

  /// value122782
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122782 = AuditEventSubType._(
    '122782',
  );

  /// value122783
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122783 = AuditEventSubType._(
    '122783',
  );

  /// value122784
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122784 = AuditEventSubType._(
    '122784',
  );

  /// value122785
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122785 = AuditEventSubType._(
    '122785',
  );

  /// value122791
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122791 = AuditEventSubType._(
    '122791',
  );

  /// value122792
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122792 = AuditEventSubType._(
    '122792',
  );

  /// value122793
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122793 = AuditEventSubType._(
    '122793',
  );

  /// value122795
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122795 = AuditEventSubType._(
    '122795',
  );

  /// value122796
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122796 = AuditEventSubType._(
    '122796',
  );

  /// value122797
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122797 = AuditEventSubType._(
    '122797',
  );

  /// value122799
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value122799 = AuditEventSubType._(
    '122799',
  );

  /// value123001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value123001 = AuditEventSubType._(
    '123001',
  );

  /// value123003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value123003 = AuditEventSubType._(
    '123003',
  );

  /// value123004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value123004 = AuditEventSubType._(
    '123004',
  );

  /// value123005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value123005 = AuditEventSubType._(
    '123005',
  );

  /// value123006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value123006 = AuditEventSubType._(
    '123006',
  );

  /// value123007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value123007 = AuditEventSubType._(
    '123007',
  );

  /// value123009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value123009 = AuditEventSubType._(
    '123009',
  );

  /// value123010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value123010 = AuditEventSubType._(
    '123010',
  );

  /// value123011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value123011 = AuditEventSubType._(
    '123011',
  );

  /// value123012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value123012 = AuditEventSubType._(
    '123012',
  );

  /// value123014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value123014 = AuditEventSubType._(
    '123014',
  );

  /// value123015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value123015 = AuditEventSubType._(
    '123015',
  );

  /// value123016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value123016 = AuditEventSubType._(
    '123016',
  );

  /// value123019
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value123019 = AuditEventSubType._(
    '123019',
  );

  /// value123101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value123101 = AuditEventSubType._(
    '123101',
  );

  /// value123102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value123102 = AuditEventSubType._(
    '123102',
  );

  /// value123103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value123103 = AuditEventSubType._(
    '123103',
  );

  /// value123104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value123104 = AuditEventSubType._(
    '123104',
  );

  /// value123105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value123105 = AuditEventSubType._(
    '123105',
  );

  /// value123106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value123106 = AuditEventSubType._(
    '123106',
  );

  /// value123107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value123107 = AuditEventSubType._(
    '123107',
  );

  /// value123108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value123108 = AuditEventSubType._(
    '123108',
  );

  /// value123109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value123109 = AuditEventSubType._(
    '123109',
  );

  /// value123110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value123110 = AuditEventSubType._(
    '123110',
  );

  /// value123111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value123111 = AuditEventSubType._(
    '123111',
  );

  /// value125000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125000 = AuditEventSubType._(
    '125000',
  );

  /// value125001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125001 = AuditEventSubType._(
    '125001',
  );

  /// value125002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125002 = AuditEventSubType._(
    '125002',
  );

  /// value125003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125003 = AuditEventSubType._(
    '125003',
  );

  /// value125004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125004 = AuditEventSubType._(
    '125004',
  );

  /// value125005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125005 = AuditEventSubType._(
    '125005',
  );

  /// value125006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125006 = AuditEventSubType._(
    '125006',
  );

  /// value125007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125007 = AuditEventSubType._(
    '125007',
  );

  /// value125008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125008 = AuditEventSubType._(
    '125008',
  );

  /// value125009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125009 = AuditEventSubType._(
    '125009',
  );

  /// value125010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125010 = AuditEventSubType._(
    '125010',
  );

  /// value125011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125011 = AuditEventSubType._(
    '125011',
  );

  /// value125012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125012 = AuditEventSubType._(
    '125012',
  );

  /// value125013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125013 = AuditEventSubType._(
    '125013',
  );

  /// value125015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125015 = AuditEventSubType._(
    '125015',
  );

  /// value125016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125016 = AuditEventSubType._(
    '125016',
  );

  /// value125021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125021 = AuditEventSubType._(
    '125021',
  );

  /// value125022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125022 = AuditEventSubType._(
    '125022',
  );

  /// value125023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125023 = AuditEventSubType._(
    '125023',
  );

  /// value125024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125024 = AuditEventSubType._(
    '125024',
  );

  /// value125025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125025 = AuditEventSubType._(
    '125025',
  );

  /// value125030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125030 = AuditEventSubType._(
    '125030',
  );

  /// value125031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125031 = AuditEventSubType._(
    '125031',
  );

  /// value125032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125032 = AuditEventSubType._(
    '125032',
  );

  /// value125033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125033 = AuditEventSubType._(
    '125033',
  );

  /// value125034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125034 = AuditEventSubType._(
    '125034',
  );

  /// value125035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125035 = AuditEventSubType._(
    '125035',
  );

  /// value125036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125036 = AuditEventSubType._(
    '125036',
  );

  /// value125037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125037 = AuditEventSubType._(
    '125037',
  );

  /// value125038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125038 = AuditEventSubType._(
    '125038',
  );

  /// value125040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125040 = AuditEventSubType._(
    '125040',
  );

  /// value125041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125041 = AuditEventSubType._(
    '125041',
  );

  /// value125100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125100 = AuditEventSubType._(
    '125100',
  );

  /// value125101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125101 = AuditEventSubType._(
    '125101',
  );

  /// value125102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125102 = AuditEventSubType._(
    '125102',
  );

  /// value125105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125105 = AuditEventSubType._(
    '125105',
  );

  /// value125106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125106 = AuditEventSubType._(
    '125106',
  );

  /// value125107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125107 = AuditEventSubType._(
    '125107',
  );

  /// value125195
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125195 = AuditEventSubType._(
    '125195',
  );

  /// value125196
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125196 = AuditEventSubType._(
    '125196',
  );

  /// value125197
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125197 = AuditEventSubType._(
    '125197',
  );

  /// value125200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125200 = AuditEventSubType._(
    '125200',
  );

  /// value125201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125201 = AuditEventSubType._(
    '125201',
  );

  /// value125202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125202 = AuditEventSubType._(
    '125202',
  );

  /// value125203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125203 = AuditEventSubType._(
    '125203',
  );

  /// value125204
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125204 = AuditEventSubType._(
    '125204',
  );

  /// value125205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125205 = AuditEventSubType._(
    '125205',
  );

  /// value125206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125206 = AuditEventSubType._(
    '125206',
  );

  /// value125207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125207 = AuditEventSubType._(
    '125207',
  );

  /// value125208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125208 = AuditEventSubType._(
    '125208',
  );

  /// value125209
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125209 = AuditEventSubType._(
    '125209',
  );

  /// value125210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125210 = AuditEventSubType._(
    '125210',
  );

  /// value125211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125211 = AuditEventSubType._(
    '125211',
  );

  /// value125212
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125212 = AuditEventSubType._(
    '125212',
  );

  /// value125213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125213 = AuditEventSubType._(
    '125213',
  );

  /// value125214
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125214 = AuditEventSubType._(
    '125214',
  );

  /// value125215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125215 = AuditEventSubType._(
    '125215',
  );

  /// value125216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125216 = AuditEventSubType._(
    '125216',
  );

  /// value125217
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125217 = AuditEventSubType._(
    '125217',
  );

  /// value125218
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125218 = AuditEventSubType._(
    '125218',
  );

  /// value125219
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125219 = AuditEventSubType._(
    '125219',
  );

  /// value125220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125220 = AuditEventSubType._(
    '125220',
  );

  /// value125221
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125221 = AuditEventSubType._(
    '125221',
  );

  /// value125222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125222 = AuditEventSubType._(
    '125222',
  );

  /// value125223
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125223 = AuditEventSubType._(
    '125223',
  );

  /// value125224
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125224 = AuditEventSubType._(
    '125224',
  );

  /// value125225
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125225 = AuditEventSubType._(
    '125225',
  );

  /// value125226
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125226 = AuditEventSubType._(
    '125226',
  );

  /// value125227
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125227 = AuditEventSubType._(
    '125227',
  );

  /// value125228
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125228 = AuditEventSubType._(
    '125228',
  );

  /// value125230
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125230 = AuditEventSubType._(
    '125230',
  );

  /// value125231
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125231 = AuditEventSubType._(
    '125231',
  );

  /// value125233
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125233 = AuditEventSubType._(
    '125233',
  );

  /// value125234
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125234 = AuditEventSubType._(
    '125234',
  );

  /// value125235
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125235 = AuditEventSubType._(
    '125235',
  );

  /// value125236
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125236 = AuditEventSubType._(
    '125236',
  );

  /// value125237
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125237 = AuditEventSubType._(
    '125237',
  );

  /// value125238
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125238 = AuditEventSubType._(
    '125238',
  );

  /// value125239
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125239 = AuditEventSubType._(
    '125239',
  );

  /// value125240
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125240 = AuditEventSubType._(
    '125240',
  );

  /// value125241
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125241 = AuditEventSubType._(
    '125241',
  );

  /// value125242
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125242 = AuditEventSubType._(
    '125242',
  );

  /// value125251
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125251 = AuditEventSubType._(
    '125251',
  );

  /// value125252
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125252 = AuditEventSubType._(
    '125252',
  );

  /// value125253
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125253 = AuditEventSubType._(
    '125253',
  );

  /// value125254
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125254 = AuditEventSubType._(
    '125254',
  );

  /// value125255
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125255 = AuditEventSubType._(
    '125255',
  );

  /// value125256
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125256 = AuditEventSubType._(
    '125256',
  );

  /// value125257
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125257 = AuditEventSubType._(
    '125257',
  );

  /// value125258
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125258 = AuditEventSubType._(
    '125258',
  );

  /// value125259
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125259 = AuditEventSubType._(
    '125259',
  );

  /// value125261
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125261 = AuditEventSubType._(
    '125261',
  );

  /// value125262
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125262 = AuditEventSubType._(
    '125262',
  );

  /// value125263
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125263 = AuditEventSubType._(
    '125263',
  );

  /// value125264
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125264 = AuditEventSubType._(
    '125264',
  );

  /// value125265
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125265 = AuditEventSubType._(
    '125265',
  );

  /// value125270
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125270 = AuditEventSubType._(
    '125270',
  );

  /// value125271
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125271 = AuditEventSubType._(
    '125271',
  );

  /// value125272
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125272 = AuditEventSubType._(
    '125272',
  );

  /// value125273
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125273 = AuditEventSubType._(
    '125273',
  );

  /// value125901
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125901 = AuditEventSubType._(
    '125901',
  );

  /// value125902
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125902 = AuditEventSubType._(
    '125902',
  );

  /// value125903
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125903 = AuditEventSubType._(
    '125903',
  );

  /// value125904
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125904 = AuditEventSubType._(
    '125904',
  );

  /// value125905
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125905 = AuditEventSubType._(
    '125905',
  );

  /// value125906
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125906 = AuditEventSubType._(
    '125906',
  );

  /// value125907
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125907 = AuditEventSubType._(
    '125907',
  );

  /// value125908
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value125908 = AuditEventSubType._(
    '125908',
  );

  /// value126000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126000 = AuditEventSubType._(
    '126000',
  );

  /// value126001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126001 = AuditEventSubType._(
    '126001',
  );

  /// value126002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126002 = AuditEventSubType._(
    '126002',
  );

  /// value126003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126003 = AuditEventSubType._(
    '126003',
  );

  /// value126010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126010 = AuditEventSubType._(
    '126010',
  );

  /// value126011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126011 = AuditEventSubType._(
    '126011',
  );

  /// value126020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126020 = AuditEventSubType._(
    '126020',
  );

  /// value126021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126021 = AuditEventSubType._(
    '126021',
  );

  /// value126022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126022 = AuditEventSubType._(
    '126022',
  );

  /// value126030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126030 = AuditEventSubType._(
    '126030',
  );

  /// value126031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126031 = AuditEventSubType._(
    '126031',
  );

  /// value126032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126032 = AuditEventSubType._(
    '126032',
  );

  /// value126033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126033 = AuditEventSubType._(
    '126033',
  );

  /// value126034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126034 = AuditEventSubType._(
    '126034',
  );

  /// value126035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126035 = AuditEventSubType._(
    '126035',
  );

  /// value126036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126036 = AuditEventSubType._(
    '126036',
  );

  /// value126037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126037 = AuditEventSubType._(
    '126037',
  );

  /// value126038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126038 = AuditEventSubType._(
    '126038',
  );

  /// value126039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126039 = AuditEventSubType._(
    '126039',
  );

  /// value126040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126040 = AuditEventSubType._(
    '126040',
  );

  /// value126050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126050 = AuditEventSubType._(
    '126050',
  );

  /// value126051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126051 = AuditEventSubType._(
    '126051',
  );

  /// value126052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126052 = AuditEventSubType._(
    '126052',
  );

  /// value126060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126060 = AuditEventSubType._(
    '126060',
  );

  /// value126061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126061 = AuditEventSubType._(
    '126061',
  );

  /// value126062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126062 = AuditEventSubType._(
    '126062',
  );

  /// value126063
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126063 = AuditEventSubType._(
    '126063',
  );

  /// value126064
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126064 = AuditEventSubType._(
    '126064',
  );

  /// value126065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126065 = AuditEventSubType._(
    '126065',
  );

  /// value126066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126066 = AuditEventSubType._(
    '126066',
  );

  /// value126067
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126067 = AuditEventSubType._(
    '126067',
  );

  /// value126070
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126070 = AuditEventSubType._(
    '126070',
  );

  /// value126071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126071 = AuditEventSubType._(
    '126071',
  );

  /// value126072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126072 = AuditEventSubType._(
    '126072',
  );

  /// value126073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126073 = AuditEventSubType._(
    '126073',
  );

  /// value126074
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126074 = AuditEventSubType._(
    '126074',
  );

  /// value126075
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126075 = AuditEventSubType._(
    '126075',
  );

  /// value126080
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126080 = AuditEventSubType._(
    '126080',
  );

  /// value126081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126081 = AuditEventSubType._(
    '126081',
  );

  /// value126100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126100 = AuditEventSubType._(
    '126100',
  );

  /// value126200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126200 = AuditEventSubType._(
    '126200',
  );

  /// value126201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126201 = AuditEventSubType._(
    '126201',
  );

  /// value126202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126202 = AuditEventSubType._(
    '126202',
  );

  /// value126203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126203 = AuditEventSubType._(
    '126203',
  );

  /// value126220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126220 = AuditEventSubType._(
    '126220',
  );

  /// value126300
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126300 = AuditEventSubType._(
    '126300',
  );

  /// value126301
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126301 = AuditEventSubType._(
    '126301',
  );

  /// value126302
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126302 = AuditEventSubType._(
    '126302',
  );

  /// value126303
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126303 = AuditEventSubType._(
    '126303',
  );

  /// value126310
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126310 = AuditEventSubType._(
    '126310',
  );

  /// value126311
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126311 = AuditEventSubType._(
    '126311',
  );

  /// value126312
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126312 = AuditEventSubType._(
    '126312',
  );

  /// value126313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126313 = AuditEventSubType._(
    '126313',
  );

  /// value126314
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126314 = AuditEventSubType._(
    '126314',
  );

  /// value126320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126320 = AuditEventSubType._(
    '126320',
  );

  /// value126321
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126321 = AuditEventSubType._(
    '126321',
  );

  /// value126322
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126322 = AuditEventSubType._(
    '126322',
  );

  /// value126330
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126330 = AuditEventSubType._(
    '126330',
  );

  /// value126331
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126331 = AuditEventSubType._(
    '126331',
  );

  /// value126340
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126340 = AuditEventSubType._(
    '126340',
  );

  /// value126341
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126341 = AuditEventSubType._(
    '126341',
  );

  /// value126342
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126342 = AuditEventSubType._(
    '126342',
  );

  /// value126343
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126343 = AuditEventSubType._(
    '126343',
  );

  /// value126344
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126344 = AuditEventSubType._(
    '126344',
  );

  /// value126350
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126350 = AuditEventSubType._(
    '126350',
  );

  /// value126351
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126351 = AuditEventSubType._(
    '126351',
  );

  /// value126352
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126352 = AuditEventSubType._(
    '126352',
  );

  /// value126353
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126353 = AuditEventSubType._(
    '126353',
  );

  /// value126360
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126360 = AuditEventSubType._(
    '126360',
  );

  /// value126361
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126361 = AuditEventSubType._(
    '126361',
  );

  /// value126362
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126362 = AuditEventSubType._(
    '126362',
  );

  /// value126363
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126363 = AuditEventSubType._(
    '126363',
  );

  /// value126364
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126364 = AuditEventSubType._(
    '126364',
  );

  /// value126370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126370 = AuditEventSubType._(
    '126370',
  );

  /// value126371
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126371 = AuditEventSubType._(
    '126371',
  );

  /// value126372
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126372 = AuditEventSubType._(
    '126372',
  );

  /// value126373
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126373 = AuditEventSubType._(
    '126373',
  );

  /// value126374
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126374 = AuditEventSubType._(
    '126374',
  );

  /// value126375
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126375 = AuditEventSubType._(
    '126375',
  );

  /// value126376
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126376 = AuditEventSubType._(
    '126376',
  );

  /// value126377
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126377 = AuditEventSubType._(
    '126377',
  );

  /// value126380
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126380 = AuditEventSubType._(
    '126380',
  );

  /// value126390
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126390 = AuditEventSubType._(
    '126390',
  );

  /// value126391
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126391 = AuditEventSubType._(
    '126391',
  );

  /// value126392
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126392 = AuditEventSubType._(
    '126392',
  );

  /// value126393
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126393 = AuditEventSubType._(
    '126393',
  );

  /// value126394
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126394 = AuditEventSubType._(
    '126394',
  );

  /// value126400
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126400 = AuditEventSubType._(
    '126400',
  );

  /// value126401
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126401 = AuditEventSubType._(
    '126401',
  );

  /// value126402
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126402 = AuditEventSubType._(
    '126402',
  );

  /// value126403
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126403 = AuditEventSubType._(
    '126403',
  );

  /// value126404
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126404 = AuditEventSubType._(
    '126404',
  );

  /// value126410
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126410 = AuditEventSubType._(
    '126410',
  );

  /// value126411
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126411 = AuditEventSubType._(
    '126411',
  );

  /// value126412
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126412 = AuditEventSubType._(
    '126412',
  );

  /// value126413
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126413 = AuditEventSubType._(
    '126413',
  );

  /// value126500
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126500 = AuditEventSubType._(
    '126500',
  );

  /// value126501
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126501 = AuditEventSubType._(
    '126501',
  );

  /// value126502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126502 = AuditEventSubType._(
    '126502',
  );

  /// value126503
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126503 = AuditEventSubType._(
    '126503',
  );

  /// value126510
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126510 = AuditEventSubType._(
    '126510',
  );

  /// value126511
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126511 = AuditEventSubType._(
    '126511',
  );

  /// value126512
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126512 = AuditEventSubType._(
    '126512',
  );

  /// value126513
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126513 = AuditEventSubType._(
    '126513',
  );

  /// value126514
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126514 = AuditEventSubType._(
    '126514',
  );

  /// value126515
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126515 = AuditEventSubType._(
    '126515',
  );

  /// value126516
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126516 = AuditEventSubType._(
    '126516',
  );

  /// value126517
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126517 = AuditEventSubType._(
    '126517',
  );

  /// value126518
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126518 = AuditEventSubType._(
    '126518',
  );

  /// value126519
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126519 = AuditEventSubType._(
    '126519',
  );

  /// value126520
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126520 = AuditEventSubType._(
    '126520',
  );

  /// value126600
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126600 = AuditEventSubType._(
    '126600',
  );

  /// value126601
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126601 = AuditEventSubType._(
    '126601',
  );

  /// value126602
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126602 = AuditEventSubType._(
    '126602',
  );

  /// value126603
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126603 = AuditEventSubType._(
    '126603',
  );

  /// value126604
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126604 = AuditEventSubType._(
    '126604',
  );

  /// value126605
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126605 = AuditEventSubType._(
    '126605',
  );

  /// value126606
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126606 = AuditEventSubType._(
    '126606',
  );

  /// value126700
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126700 = AuditEventSubType._(
    '126700',
  );

  /// value126701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126701 = AuditEventSubType._(
    '126701',
  );

  /// value126702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126702 = AuditEventSubType._(
    '126702',
  );

  /// value126703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126703 = AuditEventSubType._(
    '126703',
  );

  /// value126704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126704 = AuditEventSubType._(
    '126704',
  );

  /// value126705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126705 = AuditEventSubType._(
    '126705',
  );

  /// value126706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126706 = AuditEventSubType._(
    '126706',
  );

  /// value126707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126707 = AuditEventSubType._(
    '126707',
  );

  /// value126708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126708 = AuditEventSubType._(
    '126708',
  );

  /// value126709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126709 = AuditEventSubType._(
    '126709',
  );

  /// value126710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126710 = AuditEventSubType._(
    '126710',
  );

  /// value126711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126711 = AuditEventSubType._(
    '126711',
  );

  /// value126712
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126712 = AuditEventSubType._(
    '126712',
  );

  /// value126713
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126713 = AuditEventSubType._(
    '126713',
  );

  /// value126714
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126714 = AuditEventSubType._(
    '126714',
  );

  /// value126715
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126715 = AuditEventSubType._(
    '126715',
  );

  /// value126716
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126716 = AuditEventSubType._(
    '126716',
  );

  /// value126801
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126801 = AuditEventSubType._(
    '126801',
  );

  /// value126802
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126802 = AuditEventSubType._(
    '126802',
  );

  /// value126803
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126803 = AuditEventSubType._(
    '126803',
  );

  /// value126804
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126804 = AuditEventSubType._(
    '126804',
  );

  /// value126805
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126805 = AuditEventSubType._(
    '126805',
  );

  /// value126806
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126806 = AuditEventSubType._(
    '126806',
  );

  /// value126807
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126807 = AuditEventSubType._(
    '126807',
  );

  /// value126808
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126808 = AuditEventSubType._(
    '126808',
  );

  /// value126809
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126809 = AuditEventSubType._(
    '126809',
  );

  /// value126810
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126810 = AuditEventSubType._(
    '126810',
  );

  /// value126811
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType value126811 = AuditEventSubType._(
    '126811',
  );

  /// read
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType read = AuditEventSubType._(
    'read',
  );

  /// vread
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType vread = AuditEventSubType._(
    'vread',
  );

  /// update
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType update = AuditEventSubType._(
    'update',
  );

  /// patch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType patch = AuditEventSubType._(
    'patch',
  );

  /// delete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType delete = AuditEventSubType._(
    'delete',
  );

  /// history
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType history = AuditEventSubType._(
    'history',
  );

  /// history_instance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType history_instance = AuditEventSubType._(
    'history-instance',
  );

  /// history_type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType history_type = AuditEventSubType._(
    'history-type',
  );

  /// history_system
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType history_system = AuditEventSubType._(
    'history-system',
  );

  /// create
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType create = AuditEventSubType._(
    'create',
  );

  /// search
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType search = AuditEventSubType._(
    'search',
  );

  /// search_type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType search_type = AuditEventSubType._(
    'search-type',
  );

  /// search_system
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType search_system = AuditEventSubType._(
    'search-system',
  );

  /// capabilities
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType capabilities = AuditEventSubType._(
    'capabilities',
  );

  /// transaction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType transaction = AuditEventSubType._(
    'transaction',
  );

  /// batch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType batch = AuditEventSubType._(
    'batch',
  );

  /// operation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventSubType operation = AuditEventSubType._(
    'operation',
  );

  /// For instances where an Element is present but not value

  static final AuditEventSubType elementOnly = AuditEventSubType._('');

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

  /// Returns the enum value with an element attached
  AuditEventSubType withElement(Element? newElement) {
    return AuditEventSubType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AuditEventSubType] from JSON.
  static AuditEventSubType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventSubType.elementOnly.withElement(element);
    }
    return AuditEventSubType._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
