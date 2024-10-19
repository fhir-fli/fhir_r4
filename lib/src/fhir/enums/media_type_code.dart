// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Media Type Code
@collection
class MediaTypeCode {
  /// Constructor for internal use (like enum)
  MediaTypeCode({this.fhirCode, this.element})
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

  /// MediaTypeCode values
  /// ARCHIVE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode ARCHIVE = MediaTypeCode(
    fhirCode: 'ARCHIVE',
  );

  /// AR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode AR = MediaTypeCode(
    fhirCode: 'AR',
  );

  /// AS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode AS = MediaTypeCode(
    fhirCode: 'AS',
  );

  /// AU
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode AU = MediaTypeCode(
    fhirCode: 'AU',
  );

  /// BDUS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode BDUS = MediaTypeCode(
    fhirCode: 'BDUS',
  );

  /// BI
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode BI = MediaTypeCode(
    fhirCode: 'BI',
  );

  /// BMD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode BMD = MediaTypeCode(
    fhirCode: 'BMD',
  );

  /// CAD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode CAD = MediaTypeCode(
    fhirCode: 'CAD',
  );

  /// CAPTURE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode CAPTURE = MediaTypeCode(
    fhirCode: 'CAPTURE',
  );

  /// CD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode CD = MediaTypeCode(
    fhirCode: 'CD',
  );

  /// CF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode CF = MediaTypeCode(
    fhirCode: 'CF',
  );

  /// COMP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode COMP = MediaTypeCode(
    fhirCode: 'COMP',
  );

  /// CP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode CP = MediaTypeCode(
    fhirCode: 'CP',
  );

  /// CR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode CR = MediaTypeCode(
    fhirCode: 'CR',
  );

  /// CS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode CS = MediaTypeCode(
    fhirCode: 'CS',
  );

  /// CT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode CT = MediaTypeCode(
    fhirCode: 'CT',
  );

  /// DD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode DD = MediaTypeCode(
    fhirCode: 'DD',
  );

  /// DF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode DF = MediaTypeCode(
    fhirCode: 'DF',
  );

  /// DG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode DG = MediaTypeCode(
    fhirCode: 'DG',
  );

  /// DM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode DM = MediaTypeCode(
    fhirCode: 'DM',
  );

  /// DOCD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode DOCD = MediaTypeCode(
    fhirCode: 'DOCD',
  );

  /// DS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode DS = MediaTypeCode(
    fhirCode: 'DS',
  );

  /// DSS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode DSS = MediaTypeCode(
    fhirCode: 'DSS',
  );

  /// DX
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode DX = MediaTypeCode(
    fhirCode: 'DX',
  );

  /// EC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode EC = MediaTypeCode(
    fhirCode: 'EC',
  );

  /// ECG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode ECG = MediaTypeCode(
    fhirCode: 'ECG',
  );

  /// EPS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode EPS = MediaTypeCode(
    fhirCode: 'EPS',
  );

  /// ES
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode ES = MediaTypeCode(
    fhirCode: 'ES',
  );

  /// F
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode F = MediaTypeCode(
    fhirCode: 'F',
  );

  /// FA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode FA = MediaTypeCode(
    fhirCode: 'FA',
  );

  /// FC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode FC = MediaTypeCode(
    fhirCode: 'FC',
  );

  /// FILMD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode FILMD = MediaTypeCode(
    fhirCode: 'FILMD',
  );

  /// FP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode FP = MediaTypeCode(
    fhirCode: 'FP',
  );

  /// FS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode FS = MediaTypeCode(
    fhirCode: 'FS',
  );

  /// GM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode GM = MediaTypeCode(
    fhirCode: 'GM',
  );

  /// H
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode H = MediaTypeCode(
    fhirCode: 'H',
  );

  /// HC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode HC = MediaTypeCode(
    fhirCode: 'HC',
  );

  /// HD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode HD = MediaTypeCode(
    fhirCode: 'HD',
  );

  /// IO
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode IO = MediaTypeCode(
    fhirCode: 'IO',
  );

  /// IVOCT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode IVOCT = MediaTypeCode(
    fhirCode: 'IVOCT',
  );

  /// IVUS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode IVUS = MediaTypeCode(
    fhirCode: 'IVUS',
  );

  /// KER
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode KER = MediaTypeCode(
    fhirCode: 'KER',
  );

  /// KO
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode KO = MediaTypeCode(
    fhirCode: 'KO',
  );

  /// LEN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode LEN = MediaTypeCode(
    fhirCode: 'LEN',
  );

  /// LOG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode LOG = MediaTypeCode(
    fhirCode: 'LOG',
  );

  /// LP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode LP = MediaTypeCode(
    fhirCode: 'LP',
  );

  /// LS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode LS = MediaTypeCode(
    fhirCode: 'LS',
  );

  /// M
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode M = MediaTypeCode(
    fhirCode: 'M',
  );

  /// MA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode MA = MediaTypeCode(
    fhirCode: 'MA',
  );

  /// MC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode MC = MediaTypeCode(
    fhirCode: 'MC',
  );

  /// MCD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode MCD = MediaTypeCode(
    fhirCode: 'MCD',
  );

  /// MEDIM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode MEDIM = MediaTypeCode(
    fhirCode: 'MEDIM',
  );

  /// MG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode MG = MediaTypeCode(
    fhirCode: 'MG',
  );

  /// MP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode MP = MediaTypeCode(
    fhirCode: 'MP',
  );

  /// MR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode MR = MediaTypeCode(
    fhirCode: 'MR',
  );

  /// MS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode MS = MediaTypeCode(
    fhirCode: 'MS',
  );

  /// NEARLINE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode NEARLINE = MediaTypeCode(
    fhirCode: 'NEARLINE',
  );

  /// NM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode NM = MediaTypeCode(
    fhirCode: 'NM',
  );

  /// OAM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode OAM = MediaTypeCode(
    fhirCode: 'OAM',
  );

  /// OCT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode OCT = MediaTypeCode(
    fhirCode: 'OCT',
  );

  /// OFFLINE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode OFFLINE = MediaTypeCode(
    fhirCode: 'OFFLINE',
  );

  /// ONLINE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode ONLINE = MediaTypeCode(
    fhirCode: 'ONLINE',
  );

  /// OP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode OP = MediaTypeCode(
    fhirCode: 'OP',
  );

  /// OPM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode OPM = MediaTypeCode(
    fhirCode: 'OPM',
  );

  /// OPR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode OPR = MediaTypeCode(
    fhirCode: 'OPR',
  );

  /// OPT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode OPT = MediaTypeCode(
    fhirCode: 'OPT',
  );

  /// OPV
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode OPV = MediaTypeCode(
    fhirCode: 'OPV',
  );

  /// OSS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode OSS = MediaTypeCode(
    fhirCode: 'OSS',
  );

  /// OT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode OT = MediaTypeCode(
    fhirCode: 'OT',
  );

  /// PR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode PR = MediaTypeCode(
    fhirCode: 'PR',
  );

  /// PRINT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode PRINT = MediaTypeCode(
    fhirCode: 'PRINT',
  );

  /// PT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode PT = MediaTypeCode(
    fhirCode: 'PT',
  );

  /// PX
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode PX = MediaTypeCode(
    fhirCode: 'PX',
  );

  /// REG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode REG = MediaTypeCode(
    fhirCode: 'REG',
  );

  /// RF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode RF = MediaTypeCode(
    fhirCode: 'RF',
  );

  /// RG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode RG = MediaTypeCode(
    fhirCode: 'RG',
  );

  /// RT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode RT = MediaTypeCode(
    fhirCode: 'RT',
  );

  /// RTDOSE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode RTDOSE = MediaTypeCode(
    fhirCode: 'RTDOSE',
  );

  /// RTIMAGE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode RTIMAGE = MediaTypeCode(
    fhirCode: 'RTIMAGE',
  );

  /// RTPLAN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode RTPLAN = MediaTypeCode(
    fhirCode: 'RTPLAN',
  );

  /// RTRECORD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode RTRECORD = MediaTypeCode(
    fhirCode: 'RTRECORD',
  );

  /// RTSTRUCT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode RTSTRUCT = MediaTypeCode(
    fhirCode: 'RTSTRUCT',
  );

  /// SEG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode SEG = MediaTypeCode(
    fhirCode: 'SEG',
  );

  /// SM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode SM = MediaTypeCode(
    fhirCode: 'SM',
  );

  /// SMR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode SMR = MediaTypeCode(
    fhirCode: 'SMR',
  );

  /// SR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode SR = MediaTypeCode(
    fhirCode: 'SR',
  );

  /// SRF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode SRF = MediaTypeCode(
    fhirCode: 'SRF',
  );

  /// ST
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode ST = MediaTypeCode(
    fhirCode: 'ST',
  );

  /// TG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode TG = MediaTypeCode(
    fhirCode: 'TG',
  );

  /// U
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode U = MediaTypeCode(
    fhirCode: 'U',
  );

  /// UNAVAILABLE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode UNAVAILABLE = MediaTypeCode(
    fhirCode: 'UNAVAILABLE',
  );

  /// US
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode US = MediaTypeCode(
    fhirCode: 'US',
  );

  /// VA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode VA = MediaTypeCode(
    fhirCode: 'VA',
  );

  /// VF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode VF = MediaTypeCode(
    fhirCode: 'VF',
  );

  /// VIDD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode VIDD = MediaTypeCode(
    fhirCode: 'VIDD',
  );

  /// WSD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode WSD = MediaTypeCode(
    fhirCode: 'WSD',
  );

  /// XA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode XA = MediaTypeCode(
    fhirCode: 'XA',
  );

  /// XC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode XC = MediaTypeCode(
    fhirCode: 'XC',
  );

  /// value109001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109001 = MediaTypeCode(
    fhirCode: '109001',
  );

  /// value109002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109002 = MediaTypeCode(
    fhirCode: '109002',
  );

  /// value109003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109003 = MediaTypeCode(
    fhirCode: '109003',
  );

  /// value109004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109004 = MediaTypeCode(
    fhirCode: '109004',
  );

  /// value109005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109005 = MediaTypeCode(
    fhirCode: '109005',
  );

  /// value109006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109006 = MediaTypeCode(
    fhirCode: '109006',
  );

  /// value109007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109007 = MediaTypeCode(
    fhirCode: '109007',
  );

  /// value109008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109008 = MediaTypeCode(
    fhirCode: '109008',
  );

  /// value109009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109009 = MediaTypeCode(
    fhirCode: '109009',
  );

  /// value109010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109010 = MediaTypeCode(
    fhirCode: '109010',
  );

  /// value109011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109011 = MediaTypeCode(
    fhirCode: '109011',
  );

  /// value109012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109012 = MediaTypeCode(
    fhirCode: '109012',
  );

  /// value109013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109013 = MediaTypeCode(
    fhirCode: '109013',
  );

  /// value109014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109014 = MediaTypeCode(
    fhirCode: '109014',
  );

  /// value109015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109015 = MediaTypeCode(
    fhirCode: '109015',
  );

  /// value109016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109016 = MediaTypeCode(
    fhirCode: '109016',
  );

  /// value109017
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109017 = MediaTypeCode(
    fhirCode: '109017',
  );

  /// value109018
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109018 = MediaTypeCode(
    fhirCode: '109018',
  );

  /// value109019
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109019 = MediaTypeCode(
    fhirCode: '109019',
  );

  /// value109020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109020 = MediaTypeCode(
    fhirCode: '109020',
  );

  /// value109021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109021 = MediaTypeCode(
    fhirCode: '109021',
  );

  /// value109022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109022 = MediaTypeCode(
    fhirCode: '109022',
  );

  /// value109023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109023 = MediaTypeCode(
    fhirCode: '109023',
  );

  /// value109024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109024 = MediaTypeCode(
    fhirCode: '109024',
  );

  /// value109025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109025 = MediaTypeCode(
    fhirCode: '109025',
  );

  /// value109026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109026 = MediaTypeCode(
    fhirCode: '109026',
  );

  /// value109027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109027 = MediaTypeCode(
    fhirCode: '109027',
  );

  /// value109028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109028 = MediaTypeCode(
    fhirCode: '109028',
  );

  /// value109029
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109029 = MediaTypeCode(
    fhirCode: '109029',
  );

  /// value109030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109030 = MediaTypeCode(
    fhirCode: '109030',
  );

  /// value109031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109031 = MediaTypeCode(
    fhirCode: '109031',
  );

  /// value109032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109032 = MediaTypeCode(
    fhirCode: '109032',
  );

  /// value109033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109033 = MediaTypeCode(
    fhirCode: '109033',
  );

  /// value109034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109034 = MediaTypeCode(
    fhirCode: '109034',
  );

  /// value109035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109035 = MediaTypeCode(
    fhirCode: '109035',
  );

  /// value109036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109036 = MediaTypeCode(
    fhirCode: '109036',
  );

  /// value109037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109037 = MediaTypeCode(
    fhirCode: '109037',
  );

  /// value109038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109038 = MediaTypeCode(
    fhirCode: '109038',
  );

  /// value109039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109039 = MediaTypeCode(
    fhirCode: '109039',
  );

  /// value109040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109040 = MediaTypeCode(
    fhirCode: '109040',
  );

  /// value109041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109041 = MediaTypeCode(
    fhirCode: '109041',
  );

  /// value109042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109042 = MediaTypeCode(
    fhirCode: '109042',
  );

  /// value109043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109043 = MediaTypeCode(
    fhirCode: '109043',
  );

  /// value109044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109044 = MediaTypeCode(
    fhirCode: '109044',
  );

  /// value109045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109045 = MediaTypeCode(
    fhirCode: '109045',
  );

  /// value109046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109046 = MediaTypeCode(
    fhirCode: '109046',
  );

  /// value109047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109047 = MediaTypeCode(
    fhirCode: '109047',
  );

  /// value109048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109048 = MediaTypeCode(
    fhirCode: '109048',
  );

  /// value109049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109049 = MediaTypeCode(
    fhirCode: '109049',
  );

  /// value109050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109050 = MediaTypeCode(
    fhirCode: '109050',
  );

  /// value109051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109051 = MediaTypeCode(
    fhirCode: '109051',
  );

  /// value109052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109052 = MediaTypeCode(
    fhirCode: '109052',
  );

  /// value109053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109053 = MediaTypeCode(
    fhirCode: '109053',
  );

  /// value109054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109054 = MediaTypeCode(
    fhirCode: '109054',
  );

  /// value109055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109055 = MediaTypeCode(
    fhirCode: '109055',
  );

  /// value109056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109056 = MediaTypeCode(
    fhirCode: '109056',
  );

  /// value109057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109057 = MediaTypeCode(
    fhirCode: '109057',
  );

  /// value109058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109058 = MediaTypeCode(
    fhirCode: '109058',
  );

  /// value109059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109059 = MediaTypeCode(
    fhirCode: '109059',
  );

  /// value109060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109060 = MediaTypeCode(
    fhirCode: '109060',
  );

  /// value109061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109061 = MediaTypeCode(
    fhirCode: '109061',
  );

  /// value109063
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109063 = MediaTypeCode(
    fhirCode: '109063',
  );

  /// value109070
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109070 = MediaTypeCode(
    fhirCode: '109070',
  );

  /// value109071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109071 = MediaTypeCode(
    fhirCode: '109071',
  );

  /// value109072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109072 = MediaTypeCode(
    fhirCode: '109072',
  );

  /// value109073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109073 = MediaTypeCode(
    fhirCode: '109073',
  );

  /// value109080
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109080 = MediaTypeCode(
    fhirCode: '109080',
  );

  /// value109081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109081 = MediaTypeCode(
    fhirCode: '109081',
  );

  /// value109082
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109082 = MediaTypeCode(
    fhirCode: '109082',
  );

  /// value109083
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109083 = MediaTypeCode(
    fhirCode: '109083',
  );

  /// value109091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109091 = MediaTypeCode(
    fhirCode: '109091',
  );

  /// value109092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109092 = MediaTypeCode(
    fhirCode: '109092',
  );

  /// value109093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109093 = MediaTypeCode(
    fhirCode: '109093',
  );

  /// value109094
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109094 = MediaTypeCode(
    fhirCode: '109094',
  );

  /// value109095
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109095 = MediaTypeCode(
    fhirCode: '109095',
  );

  /// value109096
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109096 = MediaTypeCode(
    fhirCode: '109096',
  );

  /// value109101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109101 = MediaTypeCode(
    fhirCode: '109101',
  );

  /// value109102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109102 = MediaTypeCode(
    fhirCode: '109102',
  );

  /// value109103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109103 = MediaTypeCode(
    fhirCode: '109103',
  );

  /// value109104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109104 = MediaTypeCode(
    fhirCode: '109104',
  );

  /// value109105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109105 = MediaTypeCode(
    fhirCode: '109105',
  );

  /// value109106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109106 = MediaTypeCode(
    fhirCode: '109106',
  );

  /// value109110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109110 = MediaTypeCode(
    fhirCode: '109110',
  );

  /// value109111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109111 = MediaTypeCode(
    fhirCode: '109111',
  );

  /// value109112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109112 = MediaTypeCode(
    fhirCode: '109112',
  );

  /// value109113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109113 = MediaTypeCode(
    fhirCode: '109113',
  );

  /// value109114
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109114 = MediaTypeCode(
    fhirCode: '109114',
  );

  /// value109115
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109115 = MediaTypeCode(
    fhirCode: '109115',
  );

  /// value109116
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109116 = MediaTypeCode(
    fhirCode: '109116',
  );

  /// value109117
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109117 = MediaTypeCode(
    fhirCode: '109117',
  );

  /// value109120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109120 = MediaTypeCode(
    fhirCode: '109120',
  );

  /// value109121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109121 = MediaTypeCode(
    fhirCode: '109121',
  );

  /// value109122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109122 = MediaTypeCode(
    fhirCode: '109122',
  );

  /// value109123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109123 = MediaTypeCode(
    fhirCode: '109123',
  );

  /// value109124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109124 = MediaTypeCode(
    fhirCode: '109124',
  );

  /// value109125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109125 = MediaTypeCode(
    fhirCode: '109125',
  );

  /// value109132
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109132 = MediaTypeCode(
    fhirCode: '109132',
  );

  /// value109133
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109133 = MediaTypeCode(
    fhirCode: '109133',
  );

  /// value109134
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109134 = MediaTypeCode(
    fhirCode: '109134',
  );

  /// value109135
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109135 = MediaTypeCode(
    fhirCode: '109135',
  );

  /// value109136
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109136 = MediaTypeCode(
    fhirCode: '109136',
  );

  /// value109200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109200 = MediaTypeCode(
    fhirCode: '109200',
  );

  /// value109201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109201 = MediaTypeCode(
    fhirCode: '109201',
  );

  /// value109202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109202 = MediaTypeCode(
    fhirCode: '109202',
  );

  /// value109203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109203 = MediaTypeCode(
    fhirCode: '109203',
  );

  /// value109204
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109204 = MediaTypeCode(
    fhirCode: '109204',
  );

  /// value109205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109205 = MediaTypeCode(
    fhirCode: '109205',
  );

  /// value109206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109206 = MediaTypeCode(
    fhirCode: '109206',
  );

  /// value109207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109207 = MediaTypeCode(
    fhirCode: '109207',
  );

  /// value109208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109208 = MediaTypeCode(
    fhirCode: '109208',
  );

  /// value109209
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109209 = MediaTypeCode(
    fhirCode: '109209',
  );

  /// value109210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109210 = MediaTypeCode(
    fhirCode: '109210',
  );

  /// value109211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109211 = MediaTypeCode(
    fhirCode: '109211',
  );

  /// value109212
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109212 = MediaTypeCode(
    fhirCode: '109212',
  );

  /// value109213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109213 = MediaTypeCode(
    fhirCode: '109213',
  );

  /// value109214
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109214 = MediaTypeCode(
    fhirCode: '109214',
  );

  /// value109215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109215 = MediaTypeCode(
    fhirCode: '109215',
  );

  /// value109216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109216 = MediaTypeCode(
    fhirCode: '109216',
  );

  /// value109217
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109217 = MediaTypeCode(
    fhirCode: '109217',
  );

  /// value109218
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109218 = MediaTypeCode(
    fhirCode: '109218',
  );

  /// value109219
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109219 = MediaTypeCode(
    fhirCode: '109219',
  );

  /// value109220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109220 = MediaTypeCode(
    fhirCode: '109220',
  );

  /// value109221
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109221 = MediaTypeCode(
    fhirCode: '109221',
  );

  /// value109222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109222 = MediaTypeCode(
    fhirCode: '109222',
  );

  /// value109701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109701 = MediaTypeCode(
    fhirCode: '109701',
  );

  /// value109702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109702 = MediaTypeCode(
    fhirCode: '109702',
  );

  /// value109703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109703 = MediaTypeCode(
    fhirCode: '109703',
  );

  /// value109704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109704 = MediaTypeCode(
    fhirCode: '109704',
  );

  /// value109705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109705 = MediaTypeCode(
    fhirCode: '109705',
  );

  /// value109706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109706 = MediaTypeCode(
    fhirCode: '109706',
  );

  /// value109707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109707 = MediaTypeCode(
    fhirCode: '109707',
  );

  /// value109708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109708 = MediaTypeCode(
    fhirCode: '109708',
  );

  /// value109709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109709 = MediaTypeCode(
    fhirCode: '109709',
  );

  /// value109710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109710 = MediaTypeCode(
    fhirCode: '109710',
  );

  /// value109801
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109801 = MediaTypeCode(
    fhirCode: '109801',
  );

  /// value109802
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109802 = MediaTypeCode(
    fhirCode: '109802',
  );

  /// value109803
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109803 = MediaTypeCode(
    fhirCode: '109803',
  );

  /// value109804
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109804 = MediaTypeCode(
    fhirCode: '109804',
  );

  /// value109805
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109805 = MediaTypeCode(
    fhirCode: '109805',
  );

  /// value109806
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109806 = MediaTypeCode(
    fhirCode: '109806',
  );

  /// value109807
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109807 = MediaTypeCode(
    fhirCode: '109807',
  );

  /// value109808
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109808 = MediaTypeCode(
    fhirCode: '109808',
  );

  /// value109809
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109809 = MediaTypeCode(
    fhirCode: '109809',
  );

  /// value109810
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109810 = MediaTypeCode(
    fhirCode: '109810',
  );

  /// value109811
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109811 = MediaTypeCode(
    fhirCode: '109811',
  );

  /// value109812
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109812 = MediaTypeCode(
    fhirCode: '109812',
  );

  /// value109813
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109813 = MediaTypeCode(
    fhirCode: '109813',
  );

  /// value109814
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109814 = MediaTypeCode(
    fhirCode: '109814',
  );

  /// value109815
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109815 = MediaTypeCode(
    fhirCode: '109815',
  );

  /// value109816
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109816 = MediaTypeCode(
    fhirCode: '109816',
  );

  /// value109817
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109817 = MediaTypeCode(
    fhirCode: '109817',
  );

  /// value109818
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109818 = MediaTypeCode(
    fhirCode: '109818',
  );

  /// value109819
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109819 = MediaTypeCode(
    fhirCode: '109819',
  );

  /// value109820
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109820 = MediaTypeCode(
    fhirCode: '109820',
  );

  /// value109821
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109821 = MediaTypeCode(
    fhirCode: '109821',
  );

  /// value109822
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109822 = MediaTypeCode(
    fhirCode: '109822',
  );

  /// value109823
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109823 = MediaTypeCode(
    fhirCode: '109823',
  );

  /// value109824
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109824 = MediaTypeCode(
    fhirCode: '109824',
  );

  /// value109825
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109825 = MediaTypeCode(
    fhirCode: '109825',
  );

  /// value109826
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109826 = MediaTypeCode(
    fhirCode: '109826',
  );

  /// value109827
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109827 = MediaTypeCode(
    fhirCode: '109827',
  );

  /// value109828
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109828 = MediaTypeCode(
    fhirCode: '109828',
  );

  /// value109829
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109829 = MediaTypeCode(
    fhirCode: '109829',
  );

  /// value109830
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109830 = MediaTypeCode(
    fhirCode: '109830',
  );

  /// value109831
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109831 = MediaTypeCode(
    fhirCode: '109831',
  );

  /// value109832
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109832 = MediaTypeCode(
    fhirCode: '109832',
  );

  /// value109833
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109833 = MediaTypeCode(
    fhirCode: '109833',
  );

  /// value109834
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109834 = MediaTypeCode(
    fhirCode: '109834',
  );

  /// value109835
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109835 = MediaTypeCode(
    fhirCode: '109835',
  );

  /// value109836
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109836 = MediaTypeCode(
    fhirCode: '109836',
  );

  /// value109837
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109837 = MediaTypeCode(
    fhirCode: '109837',
  );

  /// value109838
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109838 = MediaTypeCode(
    fhirCode: '109838',
  );

  /// value109839
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109839 = MediaTypeCode(
    fhirCode: '109839',
  );

  /// value109840
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109840 = MediaTypeCode(
    fhirCode: '109840',
  );

  /// value109841
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109841 = MediaTypeCode(
    fhirCode: '109841',
  );

  /// value109842
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109842 = MediaTypeCode(
    fhirCode: '109842',
  );

  /// value109843
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109843 = MediaTypeCode(
    fhirCode: '109843',
  );

  /// value109844
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109844 = MediaTypeCode(
    fhirCode: '109844',
  );

  /// value109845
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109845 = MediaTypeCode(
    fhirCode: '109845',
  );

  /// value109846
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109846 = MediaTypeCode(
    fhirCode: '109846',
  );

  /// value109847
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109847 = MediaTypeCode(
    fhirCode: '109847',
  );

  /// value109848
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109848 = MediaTypeCode(
    fhirCode: '109848',
  );

  /// value109849
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109849 = MediaTypeCode(
    fhirCode: '109849',
  );

  /// value109850
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109850 = MediaTypeCode(
    fhirCode: '109850',
  );

  /// value109851
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109851 = MediaTypeCode(
    fhirCode: '109851',
  );

  /// value109852
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109852 = MediaTypeCode(
    fhirCode: '109852',
  );

  /// value109853
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109853 = MediaTypeCode(
    fhirCode: '109853',
  );

  /// value109854
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109854 = MediaTypeCode(
    fhirCode: '109854',
  );

  /// value109855
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109855 = MediaTypeCode(
    fhirCode: '109855',
  );

  /// value109856
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109856 = MediaTypeCode(
    fhirCode: '109856',
  );

  /// value109857
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109857 = MediaTypeCode(
    fhirCode: '109857',
  );

  /// value109858
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109858 = MediaTypeCode(
    fhirCode: '109858',
  );

  /// value109859
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109859 = MediaTypeCode(
    fhirCode: '109859',
  );

  /// value109860
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109860 = MediaTypeCode(
    fhirCode: '109860',
  );

  /// value109861
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109861 = MediaTypeCode(
    fhirCode: '109861',
  );

  /// value109862
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109862 = MediaTypeCode(
    fhirCode: '109862',
  );

  /// value109863
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109863 = MediaTypeCode(
    fhirCode: '109863',
  );

  /// value109864
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109864 = MediaTypeCode(
    fhirCode: '109864',
  );

  /// value109865
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109865 = MediaTypeCode(
    fhirCode: '109865',
  );

  /// value109866
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109866 = MediaTypeCode(
    fhirCode: '109866',
  );

  /// value109867
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109867 = MediaTypeCode(
    fhirCode: '109867',
  );

  /// value109868
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109868 = MediaTypeCode(
    fhirCode: '109868',
  );

  /// value109869
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109869 = MediaTypeCode(
    fhirCode: '109869',
  );

  /// value109870
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109870 = MediaTypeCode(
    fhirCode: '109870',
  );

  /// value109871
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109871 = MediaTypeCode(
    fhirCode: '109871',
  );

  /// value109872
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109872 = MediaTypeCode(
    fhirCode: '109872',
  );

  /// value109873
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109873 = MediaTypeCode(
    fhirCode: '109873',
  );

  /// value109874
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109874 = MediaTypeCode(
    fhirCode: '109874',
  );

  /// value109875
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109875 = MediaTypeCode(
    fhirCode: '109875',
  );

  /// value109876
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109876 = MediaTypeCode(
    fhirCode: '109876',
  );

  /// value109877
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109877 = MediaTypeCode(
    fhirCode: '109877',
  );

  /// value109878
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109878 = MediaTypeCode(
    fhirCode: '109878',
  );

  /// value109879
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109879 = MediaTypeCode(
    fhirCode: '109879',
  );

  /// value109880
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109880 = MediaTypeCode(
    fhirCode: '109880',
  );

  /// value109881
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109881 = MediaTypeCode(
    fhirCode: '109881',
  );

  /// value109901
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109901 = MediaTypeCode(
    fhirCode: '109901',
  );

  /// value109902
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109902 = MediaTypeCode(
    fhirCode: '109902',
  );

  /// value109903
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109903 = MediaTypeCode(
    fhirCode: '109903',
  );

  /// value109904
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109904 = MediaTypeCode(
    fhirCode: '109904',
  );

  /// value109905
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109905 = MediaTypeCode(
    fhirCode: '109905',
  );

  /// value109906
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109906 = MediaTypeCode(
    fhirCode: '109906',
  );

  /// value109907
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109907 = MediaTypeCode(
    fhirCode: '109907',
  );

  /// value109908
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109908 = MediaTypeCode(
    fhirCode: '109908',
  );

  /// value109909
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109909 = MediaTypeCode(
    fhirCode: '109909',
  );

  /// value109910
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109910 = MediaTypeCode(
    fhirCode: '109910',
  );

  /// value109911
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109911 = MediaTypeCode(
    fhirCode: '109911',
  );

  /// value109912
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109912 = MediaTypeCode(
    fhirCode: '109912',
  );

  /// value109913
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109913 = MediaTypeCode(
    fhirCode: '109913',
  );

  /// value109914
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109914 = MediaTypeCode(
    fhirCode: '109914',
  );

  /// value109915
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109915 = MediaTypeCode(
    fhirCode: '109915',
  );

  /// value109916
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109916 = MediaTypeCode(
    fhirCode: '109916',
  );

  /// value109917
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109917 = MediaTypeCode(
    fhirCode: '109917',
  );

  /// value109918
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109918 = MediaTypeCode(
    fhirCode: '109918',
  );

  /// value109919
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109919 = MediaTypeCode(
    fhirCode: '109919',
  );

  /// value109920
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109920 = MediaTypeCode(
    fhirCode: '109920',
  );

  /// value109921
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109921 = MediaTypeCode(
    fhirCode: '109921',
  );

  /// value109931
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109931 = MediaTypeCode(
    fhirCode: '109931',
  );

  /// value109932
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109932 = MediaTypeCode(
    fhirCode: '109932',
  );

  /// value109933
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109933 = MediaTypeCode(
    fhirCode: '109933',
  );

  /// value109941
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109941 = MediaTypeCode(
    fhirCode: '109941',
  );

  /// value109943
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109943 = MediaTypeCode(
    fhirCode: '109943',
  );

  /// value109991
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109991 = MediaTypeCode(
    fhirCode: '109991',
  );

  /// value109992
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109992 = MediaTypeCode(
    fhirCode: '109992',
  );

  /// value109993
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109993 = MediaTypeCode(
    fhirCode: '109993',
  );

  /// value109994
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109994 = MediaTypeCode(
    fhirCode: '109994',
  );

  /// value109995
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109995 = MediaTypeCode(
    fhirCode: '109995',
  );

  /// value109996
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109996 = MediaTypeCode(
    fhirCode: '109996',
  );

  /// value109997
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109997 = MediaTypeCode(
    fhirCode: '109997',
  );

  /// value109998
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109998 = MediaTypeCode(
    fhirCode: '109998',
  );

  /// value109999
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value109999 = MediaTypeCode(
    fhirCode: '109999',
  );

  /// value110001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110001 = MediaTypeCode(
    fhirCode: '110001',
  );

  /// value110002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110002 = MediaTypeCode(
    fhirCode: '110002',
  );

  /// value110003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110003 = MediaTypeCode(
    fhirCode: '110003',
  );

  /// value110004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110004 = MediaTypeCode(
    fhirCode: '110004',
  );

  /// value110005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110005 = MediaTypeCode(
    fhirCode: '110005',
  );

  /// value110006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110006 = MediaTypeCode(
    fhirCode: '110006',
  );

  /// value110007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110007 = MediaTypeCode(
    fhirCode: '110007',
  );

  /// value110008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110008 = MediaTypeCode(
    fhirCode: '110008',
  );

  /// value110009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110009 = MediaTypeCode(
    fhirCode: '110009',
  );

  /// value110010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110010 = MediaTypeCode(
    fhirCode: '110010',
  );

  /// value110011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110011 = MediaTypeCode(
    fhirCode: '110011',
  );

  /// value110012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110012 = MediaTypeCode(
    fhirCode: '110012',
  );

  /// value110013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110013 = MediaTypeCode(
    fhirCode: '110013',
  );

  /// value110020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110020 = MediaTypeCode(
    fhirCode: '110020',
  );

  /// value110021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110021 = MediaTypeCode(
    fhirCode: '110021',
  );

  /// value110022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110022 = MediaTypeCode(
    fhirCode: '110022',
  );

  /// value110023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110023 = MediaTypeCode(
    fhirCode: '110023',
  );

  /// value110024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110024 = MediaTypeCode(
    fhirCode: '110024',
  );

  /// value110025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110025 = MediaTypeCode(
    fhirCode: '110025',
  );

  /// value110026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110026 = MediaTypeCode(
    fhirCode: '110026',
  );

  /// value110027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110027 = MediaTypeCode(
    fhirCode: '110027',
  );

  /// value110028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110028 = MediaTypeCode(
    fhirCode: '110028',
  );

  /// value110030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110030 = MediaTypeCode(
    fhirCode: '110030',
  );

  /// value110031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110031 = MediaTypeCode(
    fhirCode: '110031',
  );

  /// value110032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110032 = MediaTypeCode(
    fhirCode: '110032',
  );

  /// value110033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110033 = MediaTypeCode(
    fhirCode: '110033',
  );

  /// value110034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110034 = MediaTypeCode(
    fhirCode: '110034',
  );

  /// value110035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110035 = MediaTypeCode(
    fhirCode: '110035',
  );

  /// value110036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110036 = MediaTypeCode(
    fhirCode: '110036',
  );

  /// value110037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110037 = MediaTypeCode(
    fhirCode: '110037',
  );

  /// value110038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110038 = MediaTypeCode(
    fhirCode: '110038',
  );

  /// value110100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110100 = MediaTypeCode(
    fhirCode: '110100',
  );

  /// value110101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110101 = MediaTypeCode(
    fhirCode: '110101',
  );

  /// value110102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110102 = MediaTypeCode(
    fhirCode: '110102',
  );

  /// value110103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110103 = MediaTypeCode(
    fhirCode: '110103',
  );

  /// value110104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110104 = MediaTypeCode(
    fhirCode: '110104',
  );

  /// value110105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110105 = MediaTypeCode(
    fhirCode: '110105',
  );

  /// value110106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110106 = MediaTypeCode(
    fhirCode: '110106',
  );

  /// value110107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110107 = MediaTypeCode(
    fhirCode: '110107',
  );

  /// value110108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110108 = MediaTypeCode(
    fhirCode: '110108',
  );

  /// value110109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110109 = MediaTypeCode(
    fhirCode: '110109',
  );

  /// value110110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110110 = MediaTypeCode(
    fhirCode: '110110',
  );

  /// value110111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110111 = MediaTypeCode(
    fhirCode: '110111',
  );

  /// value110112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110112 = MediaTypeCode(
    fhirCode: '110112',
  );

  /// value110113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110113 = MediaTypeCode(
    fhirCode: '110113',
  );

  /// value110114
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110114 = MediaTypeCode(
    fhirCode: '110114',
  );

  /// value110120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110120 = MediaTypeCode(
    fhirCode: '110120',
  );

  /// value110121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110121 = MediaTypeCode(
    fhirCode: '110121',
  );

  /// value110122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110122 = MediaTypeCode(
    fhirCode: '110122',
  );

  /// value110123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110123 = MediaTypeCode(
    fhirCode: '110123',
  );

  /// value110124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110124 = MediaTypeCode(
    fhirCode: '110124',
  );

  /// value110125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110125 = MediaTypeCode(
    fhirCode: '110125',
  );

  /// value110126
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110126 = MediaTypeCode(
    fhirCode: '110126',
  );

  /// value110127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110127 = MediaTypeCode(
    fhirCode: '110127',
  );

  /// value110128
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110128 = MediaTypeCode(
    fhirCode: '110128',
  );

  /// value110129
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110129 = MediaTypeCode(
    fhirCode: '110129',
  );

  /// value110130
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110130 = MediaTypeCode(
    fhirCode: '110130',
  );

  /// value110131
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110131 = MediaTypeCode(
    fhirCode: '110131',
  );

  /// value110132
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110132 = MediaTypeCode(
    fhirCode: '110132',
  );

  /// value110133
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110133 = MediaTypeCode(
    fhirCode: '110133',
  );

  /// value110134
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110134 = MediaTypeCode(
    fhirCode: '110134',
  );

  /// value110135
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110135 = MediaTypeCode(
    fhirCode: '110135',
  );

  /// value110136
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110136 = MediaTypeCode(
    fhirCode: '110136',
  );

  /// value110137
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110137 = MediaTypeCode(
    fhirCode: '110137',
  );

  /// value110138
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110138 = MediaTypeCode(
    fhirCode: '110138',
  );

  /// value110139
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110139 = MediaTypeCode(
    fhirCode: '110139',
  );

  /// value110140
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110140 = MediaTypeCode(
    fhirCode: '110140',
  );

  /// value110141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110141 = MediaTypeCode(
    fhirCode: '110141',
  );

  /// value110142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110142 = MediaTypeCode(
    fhirCode: '110142',
  );

  /// value110150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110150 = MediaTypeCode(
    fhirCode: '110150',
  );

  /// value110151
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110151 = MediaTypeCode(
    fhirCode: '110151',
  );

  /// value110152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110152 = MediaTypeCode(
    fhirCode: '110152',
  );

  /// value110153
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110153 = MediaTypeCode(
    fhirCode: '110153',
  );

  /// value110154
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110154 = MediaTypeCode(
    fhirCode: '110154',
  );

  /// value110155
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110155 = MediaTypeCode(
    fhirCode: '110155',
  );

  /// value110180
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110180 = MediaTypeCode(
    fhirCode: '110180',
  );

  /// value110181
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110181 = MediaTypeCode(
    fhirCode: '110181',
  );

  /// value110182
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110182 = MediaTypeCode(
    fhirCode: '110182',
  );

  /// value110190
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110190 = MediaTypeCode(
    fhirCode: '110190',
  );

  /// value110500
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110500 = MediaTypeCode(
    fhirCode: '110500',
  );

  /// value110501
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110501 = MediaTypeCode(
    fhirCode: '110501',
  );

  /// value110502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110502 = MediaTypeCode(
    fhirCode: '110502',
  );

  /// value110503
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110503 = MediaTypeCode(
    fhirCode: '110503',
  );

  /// value110504
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110504 = MediaTypeCode(
    fhirCode: '110504',
  );

  /// value110505
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110505 = MediaTypeCode(
    fhirCode: '110505',
  );

  /// value110506
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110506 = MediaTypeCode(
    fhirCode: '110506',
  );

  /// value110507
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110507 = MediaTypeCode(
    fhirCode: '110507',
  );

  /// value110508
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110508 = MediaTypeCode(
    fhirCode: '110508',
  );

  /// value110509
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110509 = MediaTypeCode(
    fhirCode: '110509',
  );

  /// value110510
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110510 = MediaTypeCode(
    fhirCode: '110510',
  );

  /// value110511
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110511 = MediaTypeCode(
    fhirCode: '110511',
  );

  /// value110512
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110512 = MediaTypeCode(
    fhirCode: '110512',
  );

  /// value110513
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110513 = MediaTypeCode(
    fhirCode: '110513',
  );

  /// value110514
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110514 = MediaTypeCode(
    fhirCode: '110514',
  );

  /// value110515
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110515 = MediaTypeCode(
    fhirCode: '110515',
  );

  /// value110516
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110516 = MediaTypeCode(
    fhirCode: '110516',
  );

  /// value110518
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110518 = MediaTypeCode(
    fhirCode: '110518',
  );

  /// value110519
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110519 = MediaTypeCode(
    fhirCode: '110519',
  );

  /// value110521
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110521 = MediaTypeCode(
    fhirCode: '110521',
  );

  /// value110522
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110522 = MediaTypeCode(
    fhirCode: '110522',
  );

  /// value110523
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110523 = MediaTypeCode(
    fhirCode: '110523',
  );

  /// value110524
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110524 = MediaTypeCode(
    fhirCode: '110524',
  );

  /// value110526
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110526 = MediaTypeCode(
    fhirCode: '110526',
  );

  /// value110527
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110527 = MediaTypeCode(
    fhirCode: '110527',
  );

  /// value110528
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110528 = MediaTypeCode(
    fhirCode: '110528',
  );

  /// value110529
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110529 = MediaTypeCode(
    fhirCode: '110529',
  );

  /// value110700
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110700 = MediaTypeCode(
    fhirCode: '110700',
  );

  /// value110701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110701 = MediaTypeCode(
    fhirCode: '110701',
  );

  /// value110702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110702 = MediaTypeCode(
    fhirCode: '110702',
  );

  /// value110703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110703 = MediaTypeCode(
    fhirCode: '110703',
  );

  /// value110704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110704 = MediaTypeCode(
    fhirCode: '110704',
  );

  /// value110705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110705 = MediaTypeCode(
    fhirCode: '110705',
  );

  /// value110706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110706 = MediaTypeCode(
    fhirCode: '110706',
  );

  /// value110800
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110800 = MediaTypeCode(
    fhirCode: '110800',
  );

  /// value110801
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110801 = MediaTypeCode(
    fhirCode: '110801',
  );

  /// value110802
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110802 = MediaTypeCode(
    fhirCode: '110802',
  );

  /// value110803
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110803 = MediaTypeCode(
    fhirCode: '110803',
  );

  /// value110804
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110804 = MediaTypeCode(
    fhirCode: '110804',
  );

  /// value110805
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110805 = MediaTypeCode(
    fhirCode: '110805',
  );

  /// value110806
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110806 = MediaTypeCode(
    fhirCode: '110806',
  );

  /// value110807
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110807 = MediaTypeCode(
    fhirCode: '110807',
  );

  /// value110808
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110808 = MediaTypeCode(
    fhirCode: '110808',
  );

  /// value110809
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110809 = MediaTypeCode(
    fhirCode: '110809',
  );

  /// value110810
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110810 = MediaTypeCode(
    fhirCode: '110810',
  );

  /// value110811
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110811 = MediaTypeCode(
    fhirCode: '110811',
  );

  /// value110812
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110812 = MediaTypeCode(
    fhirCode: '110812',
  );

  /// value110813
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110813 = MediaTypeCode(
    fhirCode: '110813',
  );

  /// value110814
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110814 = MediaTypeCode(
    fhirCode: '110814',
  );

  /// value110815
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110815 = MediaTypeCode(
    fhirCode: '110815',
  );

  /// value110816
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110816 = MediaTypeCode(
    fhirCode: '110816',
  );

  /// value110817
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110817 = MediaTypeCode(
    fhirCode: '110817',
  );

  /// value110818
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110818 = MediaTypeCode(
    fhirCode: '110818',
  );

  /// value110819
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110819 = MediaTypeCode(
    fhirCode: '110819',
  );

  /// value110820
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110820 = MediaTypeCode(
    fhirCode: '110820',
  );

  /// value110821
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110821 = MediaTypeCode(
    fhirCode: '110821',
  );

  /// value110822
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110822 = MediaTypeCode(
    fhirCode: '110822',
  );

  /// value110823
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110823 = MediaTypeCode(
    fhirCode: '110823',
  );

  /// value110824
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110824 = MediaTypeCode(
    fhirCode: '110824',
  );

  /// value110825
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110825 = MediaTypeCode(
    fhirCode: '110825',
  );

  /// value110826
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110826 = MediaTypeCode(
    fhirCode: '110826',
  );

  /// value110827
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110827 = MediaTypeCode(
    fhirCode: '110827',
  );

  /// value110828
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110828 = MediaTypeCode(
    fhirCode: '110828',
  );

  /// value110829
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110829 = MediaTypeCode(
    fhirCode: '110829',
  );

  /// value110830
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110830 = MediaTypeCode(
    fhirCode: '110830',
  );

  /// value110831
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110831 = MediaTypeCode(
    fhirCode: '110831',
  );

  /// value110832
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110832 = MediaTypeCode(
    fhirCode: '110832',
  );

  /// value110833
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110833 = MediaTypeCode(
    fhirCode: '110833',
  );

  /// value110834
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110834 = MediaTypeCode(
    fhirCode: '110834',
  );

  /// value110835
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110835 = MediaTypeCode(
    fhirCode: '110835',
  );

  /// value110836
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110836 = MediaTypeCode(
    fhirCode: '110836',
  );

  /// value110837
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110837 = MediaTypeCode(
    fhirCode: '110837',
  );

  /// value110838
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110838 = MediaTypeCode(
    fhirCode: '110838',
  );

  /// value110839
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110839 = MediaTypeCode(
    fhirCode: '110839',
  );

  /// value110840
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110840 = MediaTypeCode(
    fhirCode: '110840',
  );

  /// value110841
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110841 = MediaTypeCode(
    fhirCode: '110841',
  );

  /// value110842
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110842 = MediaTypeCode(
    fhirCode: '110842',
  );

  /// value110843
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110843 = MediaTypeCode(
    fhirCode: '110843',
  );

  /// value110844
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110844 = MediaTypeCode(
    fhirCode: '110844',
  );

  /// value110845
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110845 = MediaTypeCode(
    fhirCode: '110845',
  );

  /// value110846
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110846 = MediaTypeCode(
    fhirCode: '110846',
  );

  /// value110847
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110847 = MediaTypeCode(
    fhirCode: '110847',
  );

  /// value110848
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110848 = MediaTypeCode(
    fhirCode: '110848',
  );

  /// value110849
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110849 = MediaTypeCode(
    fhirCode: '110849',
  );

  /// value110850
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110850 = MediaTypeCode(
    fhirCode: '110850',
  );

  /// value110851
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110851 = MediaTypeCode(
    fhirCode: '110851',
  );

  /// value110852
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110852 = MediaTypeCode(
    fhirCode: '110852',
  );

  /// value110853
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110853 = MediaTypeCode(
    fhirCode: '110853',
  );

  /// value110854
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110854 = MediaTypeCode(
    fhirCode: '110854',
  );

  /// value110855
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110855 = MediaTypeCode(
    fhirCode: '110855',
  );

  /// value110856
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110856 = MediaTypeCode(
    fhirCode: '110856',
  );

  /// value110857
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110857 = MediaTypeCode(
    fhirCode: '110857',
  );

  /// value110858
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110858 = MediaTypeCode(
    fhirCode: '110858',
  );

  /// value110859
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110859 = MediaTypeCode(
    fhirCode: '110859',
  );

  /// value110860
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110860 = MediaTypeCode(
    fhirCode: '110860',
  );

  /// value110861
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110861 = MediaTypeCode(
    fhirCode: '110861',
  );

  /// value110862
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110862 = MediaTypeCode(
    fhirCode: '110862',
  );

  /// value110863
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110863 = MediaTypeCode(
    fhirCode: '110863',
  );

  /// value110864
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110864 = MediaTypeCode(
    fhirCode: '110864',
  );

  /// value110865
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110865 = MediaTypeCode(
    fhirCode: '110865',
  );

  /// value110866
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110866 = MediaTypeCode(
    fhirCode: '110866',
  );

  /// value110867
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110867 = MediaTypeCode(
    fhirCode: '110867',
  );

  /// value110868
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110868 = MediaTypeCode(
    fhirCode: '110868',
  );

  /// value110869
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110869 = MediaTypeCode(
    fhirCode: '110869',
  );

  /// value110870
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110870 = MediaTypeCode(
    fhirCode: '110870',
  );

  /// value110871
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110871 = MediaTypeCode(
    fhirCode: '110871',
  );

  /// value110872
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110872 = MediaTypeCode(
    fhirCode: '110872',
  );

  /// value110873
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110873 = MediaTypeCode(
    fhirCode: '110873',
  );

  /// value110874
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110874 = MediaTypeCode(
    fhirCode: '110874',
  );

  /// value110875
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110875 = MediaTypeCode(
    fhirCode: '110875',
  );

  /// value110876
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110876 = MediaTypeCode(
    fhirCode: '110876',
  );

  /// value110877
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110877 = MediaTypeCode(
    fhirCode: '110877',
  );

  /// value110901
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110901 = MediaTypeCode(
    fhirCode: '110901',
  );

  /// value110902
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110902 = MediaTypeCode(
    fhirCode: '110902',
  );

  /// value110903
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110903 = MediaTypeCode(
    fhirCode: '110903',
  );

  /// value110904
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110904 = MediaTypeCode(
    fhirCode: '110904',
  );

  /// value110905
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110905 = MediaTypeCode(
    fhirCode: '110905',
  );

  /// value110906
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110906 = MediaTypeCode(
    fhirCode: '110906',
  );

  /// value110907
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110907 = MediaTypeCode(
    fhirCode: '110907',
  );

  /// value110908
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110908 = MediaTypeCode(
    fhirCode: '110908',
  );

  /// value110909
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110909 = MediaTypeCode(
    fhirCode: '110909',
  );

  /// value110910
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110910 = MediaTypeCode(
    fhirCode: '110910',
  );

  /// value110911
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value110911 = MediaTypeCode(
    fhirCode: '110911',
  );

  /// value111001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111001 = MediaTypeCode(
    fhirCode: '111001',
  );

  /// value111002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111002 = MediaTypeCode(
    fhirCode: '111002',
  );

  /// value111003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111003 = MediaTypeCode(
    fhirCode: '111003',
  );

  /// value111004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111004 = MediaTypeCode(
    fhirCode: '111004',
  );

  /// value111005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111005 = MediaTypeCode(
    fhirCode: '111005',
  );

  /// value111006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111006 = MediaTypeCode(
    fhirCode: '111006',
  );

  /// value111007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111007 = MediaTypeCode(
    fhirCode: '111007',
  );

  /// value111008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111008 = MediaTypeCode(
    fhirCode: '111008',
  );

  /// value111009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111009 = MediaTypeCode(
    fhirCode: '111009',
  );

  /// value111010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111010 = MediaTypeCode(
    fhirCode: '111010',
  );

  /// value111011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111011 = MediaTypeCode(
    fhirCode: '111011',
  );

  /// value111012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111012 = MediaTypeCode(
    fhirCode: '111012',
  );

  /// value111013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111013 = MediaTypeCode(
    fhirCode: '111013',
  );

  /// value111014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111014 = MediaTypeCode(
    fhirCode: '111014',
  );

  /// value111015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111015 = MediaTypeCode(
    fhirCode: '111015',
  );

  /// value111016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111016 = MediaTypeCode(
    fhirCode: '111016',
  );

  /// value111017
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111017 = MediaTypeCode(
    fhirCode: '111017',
  );

  /// value111018
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111018 = MediaTypeCode(
    fhirCode: '111018',
  );

  /// value111019
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111019 = MediaTypeCode(
    fhirCode: '111019',
  );

  /// value111020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111020 = MediaTypeCode(
    fhirCode: '111020',
  );

  /// value111021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111021 = MediaTypeCode(
    fhirCode: '111021',
  );

  /// value111022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111022 = MediaTypeCode(
    fhirCode: '111022',
  );

  /// value111023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111023 = MediaTypeCode(
    fhirCode: '111023',
  );

  /// value111024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111024 = MediaTypeCode(
    fhirCode: '111024',
  );

  /// value111025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111025 = MediaTypeCode(
    fhirCode: '111025',
  );

  /// value111026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111026 = MediaTypeCode(
    fhirCode: '111026',
  );

  /// value111027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111027 = MediaTypeCode(
    fhirCode: '111027',
  );

  /// value111028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111028 = MediaTypeCode(
    fhirCode: '111028',
  );

  /// value111029
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111029 = MediaTypeCode(
    fhirCode: '111029',
  );

  /// value111030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111030 = MediaTypeCode(
    fhirCode: '111030',
  );

  /// value111031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111031 = MediaTypeCode(
    fhirCode: '111031',
  );

  /// value111032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111032 = MediaTypeCode(
    fhirCode: '111032',
  );

  /// value111033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111033 = MediaTypeCode(
    fhirCode: '111033',
  );

  /// value111034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111034 = MediaTypeCode(
    fhirCode: '111034',
  );

  /// value111035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111035 = MediaTypeCode(
    fhirCode: '111035',
  );

  /// value111036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111036 = MediaTypeCode(
    fhirCode: '111036',
  );

  /// value111037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111037 = MediaTypeCode(
    fhirCode: '111037',
  );

  /// value111038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111038 = MediaTypeCode(
    fhirCode: '111038',
  );

  /// value111039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111039 = MediaTypeCode(
    fhirCode: '111039',
  );

  /// value111040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111040 = MediaTypeCode(
    fhirCode: '111040',
  );

  /// value111041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111041 = MediaTypeCode(
    fhirCode: '111041',
  );

  /// value111042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111042 = MediaTypeCode(
    fhirCode: '111042',
  );

  /// value111043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111043 = MediaTypeCode(
    fhirCode: '111043',
  );

  /// value111044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111044 = MediaTypeCode(
    fhirCode: '111044',
  );

  /// value111045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111045 = MediaTypeCode(
    fhirCode: '111045',
  );

  /// value111046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111046 = MediaTypeCode(
    fhirCode: '111046',
  );

  /// value111047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111047 = MediaTypeCode(
    fhirCode: '111047',
  );

  /// value111048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111048 = MediaTypeCode(
    fhirCode: '111048',
  );

  /// value111049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111049 = MediaTypeCode(
    fhirCode: '111049',
  );

  /// value111050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111050 = MediaTypeCode(
    fhirCode: '111050',
  );

  /// value111051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111051 = MediaTypeCode(
    fhirCode: '111051',
  );

  /// value111052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111052 = MediaTypeCode(
    fhirCode: '111052',
  );

  /// value111053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111053 = MediaTypeCode(
    fhirCode: '111053',
  );

  /// value111054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111054 = MediaTypeCode(
    fhirCode: '111054',
  );

  /// value111055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111055 = MediaTypeCode(
    fhirCode: '111055',
  );

  /// value111056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111056 = MediaTypeCode(
    fhirCode: '111056',
  );

  /// value111057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111057 = MediaTypeCode(
    fhirCode: '111057',
  );

  /// value111058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111058 = MediaTypeCode(
    fhirCode: '111058',
  );

  /// value111059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111059 = MediaTypeCode(
    fhirCode: '111059',
  );

  /// value111060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111060 = MediaTypeCode(
    fhirCode: '111060',
  );

  /// value111061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111061 = MediaTypeCode(
    fhirCode: '111061',
  );

  /// value111062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111062 = MediaTypeCode(
    fhirCode: '111062',
  );

  /// value111063
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111063 = MediaTypeCode(
    fhirCode: '111063',
  );

  /// value111064
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111064 = MediaTypeCode(
    fhirCode: '111064',
  );

  /// value111065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111065 = MediaTypeCode(
    fhirCode: '111065',
  );

  /// value111066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111066 = MediaTypeCode(
    fhirCode: '111066',
  );

  /// value111069
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111069 = MediaTypeCode(
    fhirCode: '111069',
  );

  /// value111071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111071 = MediaTypeCode(
    fhirCode: '111071',
  );

  /// value111072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111072 = MediaTypeCode(
    fhirCode: '111072',
  );

  /// value111081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111081 = MediaTypeCode(
    fhirCode: '111081',
  );

  /// value111086
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111086 = MediaTypeCode(
    fhirCode: '111086',
  );

  /// value111087
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111087 = MediaTypeCode(
    fhirCode: '111087',
  );

  /// value111088
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111088 = MediaTypeCode(
    fhirCode: '111088',
  );

  /// value111089
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111089 = MediaTypeCode(
    fhirCode: '111089',
  );

  /// value111090
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111090 = MediaTypeCode(
    fhirCode: '111090',
  );

  /// value111091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111091 = MediaTypeCode(
    fhirCode: '111091',
  );

  /// value111092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111092 = MediaTypeCode(
    fhirCode: '111092',
  );

  /// value111093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111093 = MediaTypeCode(
    fhirCode: '111093',
  );

  /// value111099
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111099 = MediaTypeCode(
    fhirCode: '111099',
  );

  /// value111100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111100 = MediaTypeCode(
    fhirCode: '111100',
  );

  /// value111101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111101 = MediaTypeCode(
    fhirCode: '111101',
  );

  /// value111102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111102 = MediaTypeCode(
    fhirCode: '111102',
  );

  /// value111103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111103 = MediaTypeCode(
    fhirCode: '111103',
  );

  /// value111104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111104 = MediaTypeCode(
    fhirCode: '111104',
  );

  /// value111105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111105 = MediaTypeCode(
    fhirCode: '111105',
  );

  /// value111111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111111 = MediaTypeCode(
    fhirCode: '111111',
  );

  /// value111112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111112 = MediaTypeCode(
    fhirCode: '111112',
  );

  /// value111113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111113 = MediaTypeCode(
    fhirCode: '111113',
  );

  /// value111120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111120 = MediaTypeCode(
    fhirCode: '111120',
  );

  /// value111121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111121 = MediaTypeCode(
    fhirCode: '111121',
  );

  /// value111122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111122 = MediaTypeCode(
    fhirCode: '111122',
  );

  /// value111123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111123 = MediaTypeCode(
    fhirCode: '111123',
  );

  /// value111124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111124 = MediaTypeCode(
    fhirCode: '111124',
  );

  /// value111125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111125 = MediaTypeCode(
    fhirCode: '111125',
  );

  /// value111126
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111126 = MediaTypeCode(
    fhirCode: '111126',
  );

  /// value111127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111127 = MediaTypeCode(
    fhirCode: '111127',
  );

  /// value111128
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111128 = MediaTypeCode(
    fhirCode: '111128',
  );

  /// value111129
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111129 = MediaTypeCode(
    fhirCode: '111129',
  );

  /// value111130
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111130 = MediaTypeCode(
    fhirCode: '111130',
  );

  /// value111135
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111135 = MediaTypeCode(
    fhirCode: '111135',
  );

  /// value111136
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111136 = MediaTypeCode(
    fhirCode: '111136',
  );

  /// value111137
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111137 = MediaTypeCode(
    fhirCode: '111137',
  );

  /// value111138
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111138 = MediaTypeCode(
    fhirCode: '111138',
  );

  /// value111139
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111139 = MediaTypeCode(
    fhirCode: '111139',
  );

  /// value111140
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111140 = MediaTypeCode(
    fhirCode: '111140',
  );

  /// value111141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111141 = MediaTypeCode(
    fhirCode: '111141',
  );

  /// value111142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111142 = MediaTypeCode(
    fhirCode: '111142',
  );

  /// value111143
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111143 = MediaTypeCode(
    fhirCode: '111143',
  );

  /// value111144
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111144 = MediaTypeCode(
    fhirCode: '111144',
  );

  /// value111145
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111145 = MediaTypeCode(
    fhirCode: '111145',
  );

  /// value111146
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111146 = MediaTypeCode(
    fhirCode: '111146',
  );

  /// value111147
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111147 = MediaTypeCode(
    fhirCode: '111147',
  );

  /// value111148
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111148 = MediaTypeCode(
    fhirCode: '111148',
  );

  /// value111149
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111149 = MediaTypeCode(
    fhirCode: '111149',
  );

  /// value111150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111150 = MediaTypeCode(
    fhirCode: '111150',
  );

  /// value111151
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111151 = MediaTypeCode(
    fhirCode: '111151',
  );

  /// value111152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111152 = MediaTypeCode(
    fhirCode: '111152',
  );

  /// value111153
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111153 = MediaTypeCode(
    fhirCode: '111153',
  );

  /// value111154
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111154 = MediaTypeCode(
    fhirCode: '111154',
  );

  /// value111155
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111155 = MediaTypeCode(
    fhirCode: '111155',
  );

  /// value111156
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111156 = MediaTypeCode(
    fhirCode: '111156',
  );

  /// value111157
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111157 = MediaTypeCode(
    fhirCode: '111157',
  );

  /// value111158
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111158 = MediaTypeCode(
    fhirCode: '111158',
  );

  /// value111159
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111159 = MediaTypeCode(
    fhirCode: '111159',
  );

  /// value111168
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111168 = MediaTypeCode(
    fhirCode: '111168',
  );

  /// value111170
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111170 = MediaTypeCode(
    fhirCode: '111170',
  );

  /// value111171
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111171 = MediaTypeCode(
    fhirCode: '111171',
  );

  /// value111172
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111172 = MediaTypeCode(
    fhirCode: '111172',
  );

  /// value111173
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111173 = MediaTypeCode(
    fhirCode: '111173',
  );

  /// value111174
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111174 = MediaTypeCode(
    fhirCode: '111174',
  );

  /// value111175
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111175 = MediaTypeCode(
    fhirCode: '111175',
  );

  /// value111176
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111176 = MediaTypeCode(
    fhirCode: '111176',
  );

  /// value111177
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111177 = MediaTypeCode(
    fhirCode: '111177',
  );

  /// value111178
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111178 = MediaTypeCode(
    fhirCode: '111178',
  );

  /// value111179
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111179 = MediaTypeCode(
    fhirCode: '111179',
  );

  /// value111180
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111180 = MediaTypeCode(
    fhirCode: '111180',
  );

  /// value111181
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111181 = MediaTypeCode(
    fhirCode: '111181',
  );

  /// value111182
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111182 = MediaTypeCode(
    fhirCode: '111182',
  );

  /// value111183
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111183 = MediaTypeCode(
    fhirCode: '111183',
  );

  /// value111184
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111184 = MediaTypeCode(
    fhirCode: '111184',
  );

  /// value111185
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111185 = MediaTypeCode(
    fhirCode: '111185',
  );

  /// value111186
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111186 = MediaTypeCode(
    fhirCode: '111186',
  );

  /// value111187
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111187 = MediaTypeCode(
    fhirCode: '111187',
  );

  /// value111188
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111188 = MediaTypeCode(
    fhirCode: '111188',
  );

  /// value111189
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111189 = MediaTypeCode(
    fhirCode: '111189',
  );

  /// value111190
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111190 = MediaTypeCode(
    fhirCode: '111190',
  );

  /// value111191
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111191 = MediaTypeCode(
    fhirCode: '111191',
  );

  /// value111192
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111192 = MediaTypeCode(
    fhirCode: '111192',
  );

  /// value111193
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111193 = MediaTypeCode(
    fhirCode: '111193',
  );

  /// value111194
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111194 = MediaTypeCode(
    fhirCode: '111194',
  );

  /// value111195
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111195 = MediaTypeCode(
    fhirCode: '111195',
  );

  /// value111196
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111196 = MediaTypeCode(
    fhirCode: '111196',
  );

  /// value111197
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111197 = MediaTypeCode(
    fhirCode: '111197',
  );

  /// value111198
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111198 = MediaTypeCode(
    fhirCode: '111198',
  );

  /// value111199
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111199 = MediaTypeCode(
    fhirCode: '111199',
  );

  /// value111200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111200 = MediaTypeCode(
    fhirCode: '111200',
  );

  /// value111201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111201 = MediaTypeCode(
    fhirCode: '111201',
  );

  /// value111202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111202 = MediaTypeCode(
    fhirCode: '111202',
  );

  /// value111203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111203 = MediaTypeCode(
    fhirCode: '111203',
  );

  /// value111204
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111204 = MediaTypeCode(
    fhirCode: '111204',
  );

  /// value111205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111205 = MediaTypeCode(
    fhirCode: '111205',
  );

  /// value111206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111206 = MediaTypeCode(
    fhirCode: '111206',
  );

  /// value111207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111207 = MediaTypeCode(
    fhirCode: '111207',
  );

  /// value111208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111208 = MediaTypeCode(
    fhirCode: '111208',
  );

  /// value111209
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111209 = MediaTypeCode(
    fhirCode: '111209',
  );

  /// value111210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111210 = MediaTypeCode(
    fhirCode: '111210',
  );

  /// value111211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111211 = MediaTypeCode(
    fhirCode: '111211',
  );

  /// value111212
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111212 = MediaTypeCode(
    fhirCode: '111212',
  );

  /// value111213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111213 = MediaTypeCode(
    fhirCode: '111213',
  );

  /// value111214
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111214 = MediaTypeCode(
    fhirCode: '111214',
  );

  /// value111215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111215 = MediaTypeCode(
    fhirCode: '111215',
  );

  /// value111216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111216 = MediaTypeCode(
    fhirCode: '111216',
  );

  /// value111217
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111217 = MediaTypeCode(
    fhirCode: '111217',
  );

  /// value111218
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111218 = MediaTypeCode(
    fhirCode: '111218',
  );

  /// value111219
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111219 = MediaTypeCode(
    fhirCode: '111219',
  );

  /// value111220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111220 = MediaTypeCode(
    fhirCode: '111220',
  );

  /// value111221
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111221 = MediaTypeCode(
    fhirCode: '111221',
  );

  /// value111222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111222 = MediaTypeCode(
    fhirCode: '111222',
  );

  /// value111223
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111223 = MediaTypeCode(
    fhirCode: '111223',
  );

  /// value111224
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111224 = MediaTypeCode(
    fhirCode: '111224',
  );

  /// value111225
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111225 = MediaTypeCode(
    fhirCode: '111225',
  );

  /// value111233
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111233 = MediaTypeCode(
    fhirCode: '111233',
  );

  /// value111234
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111234 = MediaTypeCode(
    fhirCode: '111234',
  );

  /// value111235
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111235 = MediaTypeCode(
    fhirCode: '111235',
  );

  /// value111236
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111236 = MediaTypeCode(
    fhirCode: '111236',
  );

  /// value111237
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111237 = MediaTypeCode(
    fhirCode: '111237',
  );

  /// value111238
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111238 = MediaTypeCode(
    fhirCode: '111238',
  );

  /// value111239
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111239 = MediaTypeCode(
    fhirCode: '111239',
  );

  /// value111240
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111240 = MediaTypeCode(
    fhirCode: '111240',
  );

  /// value111241
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111241 = MediaTypeCode(
    fhirCode: '111241',
  );

  /// value111242
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111242 = MediaTypeCode(
    fhirCode: '111242',
  );

  /// value111243
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111243 = MediaTypeCode(
    fhirCode: '111243',
  );

  /// value111244
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111244 = MediaTypeCode(
    fhirCode: '111244',
  );

  /// value111245
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111245 = MediaTypeCode(
    fhirCode: '111245',
  );

  /// value111248
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111248 = MediaTypeCode(
    fhirCode: '111248',
  );

  /// value111249
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111249 = MediaTypeCode(
    fhirCode: '111249',
  );

  /// value111250
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111250 = MediaTypeCode(
    fhirCode: '111250',
  );

  /// value111251
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111251 = MediaTypeCode(
    fhirCode: '111251',
  );

  /// value111252
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111252 = MediaTypeCode(
    fhirCode: '111252',
  );

  /// value111253
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111253 = MediaTypeCode(
    fhirCode: '111253',
  );

  /// value111254
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111254 = MediaTypeCode(
    fhirCode: '111254',
  );

  /// value111255
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111255 = MediaTypeCode(
    fhirCode: '111255',
  );

  /// value111256
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111256 = MediaTypeCode(
    fhirCode: '111256',
  );

  /// value111257
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111257 = MediaTypeCode(
    fhirCode: '111257',
  );

  /// value111258
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111258 = MediaTypeCode(
    fhirCode: '111258',
  );

  /// value111259
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111259 = MediaTypeCode(
    fhirCode: '111259',
  );

  /// value111260
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111260 = MediaTypeCode(
    fhirCode: '111260',
  );

  /// value111262
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111262 = MediaTypeCode(
    fhirCode: '111262',
  );

  /// value111263
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111263 = MediaTypeCode(
    fhirCode: '111263',
  );

  /// value111264
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111264 = MediaTypeCode(
    fhirCode: '111264',
  );

  /// value111265
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111265 = MediaTypeCode(
    fhirCode: '111265',
  );

  /// value111269
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111269 = MediaTypeCode(
    fhirCode: '111269',
  );

  /// value111271
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111271 = MediaTypeCode(
    fhirCode: '111271',
  );

  /// value111273
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111273 = MediaTypeCode(
    fhirCode: '111273',
  );

  /// value111277
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111277 = MediaTypeCode(
    fhirCode: '111277',
  );

  /// value111278
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111278 = MediaTypeCode(
    fhirCode: '111278',
  );

  /// value111279
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111279 = MediaTypeCode(
    fhirCode: '111279',
  );

  /// value111281
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111281 = MediaTypeCode(
    fhirCode: '111281',
  );

  /// value111283
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111283 = MediaTypeCode(
    fhirCode: '111283',
  );

  /// value111284
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111284 = MediaTypeCode(
    fhirCode: '111284',
  );

  /// value111285
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111285 = MediaTypeCode(
    fhirCode: '111285',
  );

  /// value111286
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111286 = MediaTypeCode(
    fhirCode: '111286',
  );

  /// value111287
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111287 = MediaTypeCode(
    fhirCode: '111287',
  );

  /// value111288
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111288 = MediaTypeCode(
    fhirCode: '111288',
  );

  /// value111290
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111290 = MediaTypeCode(
    fhirCode: '111290',
  );

  /// value111291
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111291 = MediaTypeCode(
    fhirCode: '111291',
  );

  /// value111292
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111292 = MediaTypeCode(
    fhirCode: '111292',
  );

  /// value111293
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111293 = MediaTypeCode(
    fhirCode: '111293',
  );

  /// value111294
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111294 = MediaTypeCode(
    fhirCode: '111294',
  );

  /// value111296
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111296 = MediaTypeCode(
    fhirCode: '111296',
  );

  /// value111297
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111297 = MediaTypeCode(
    fhirCode: '111297',
  );

  /// value111298
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111298 = MediaTypeCode(
    fhirCode: '111298',
  );

  /// value111299
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111299 = MediaTypeCode(
    fhirCode: '111299',
  );

  /// value111300
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111300 = MediaTypeCode(
    fhirCode: '111300',
  );

  /// value111301
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111301 = MediaTypeCode(
    fhirCode: '111301',
  );

  /// value111302
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111302 = MediaTypeCode(
    fhirCode: '111302',
  );

  /// value111303
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111303 = MediaTypeCode(
    fhirCode: '111303',
  );

  /// value111304
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111304 = MediaTypeCode(
    fhirCode: '111304',
  );

  /// value111305
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111305 = MediaTypeCode(
    fhirCode: '111305',
  );

  /// value111306
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111306 = MediaTypeCode(
    fhirCode: '111306',
  );

  /// value111307
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111307 = MediaTypeCode(
    fhirCode: '111307',
  );

  /// value111308
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111308 = MediaTypeCode(
    fhirCode: '111308',
  );

  /// value111309
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111309 = MediaTypeCode(
    fhirCode: '111309',
  );

  /// value111310
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111310 = MediaTypeCode(
    fhirCode: '111310',
  );

  /// value111311
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111311 = MediaTypeCode(
    fhirCode: '111311',
  );

  /// value111312
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111312 = MediaTypeCode(
    fhirCode: '111312',
  );

  /// value111313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111313 = MediaTypeCode(
    fhirCode: '111313',
  );

  /// value111314
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111314 = MediaTypeCode(
    fhirCode: '111314',
  );

  /// value111315
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111315 = MediaTypeCode(
    fhirCode: '111315',
  );

  /// value111316
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111316 = MediaTypeCode(
    fhirCode: '111316',
  );

  /// value111317
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111317 = MediaTypeCode(
    fhirCode: '111317',
  );

  /// value111318
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111318 = MediaTypeCode(
    fhirCode: '111318',
  );

  /// value111320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111320 = MediaTypeCode(
    fhirCode: '111320',
  );

  /// value111321
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111321 = MediaTypeCode(
    fhirCode: '111321',
  );

  /// value111322
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111322 = MediaTypeCode(
    fhirCode: '111322',
  );

  /// value111323
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111323 = MediaTypeCode(
    fhirCode: '111323',
  );

  /// value111324
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111324 = MediaTypeCode(
    fhirCode: '111324',
  );

  /// value111325
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111325 = MediaTypeCode(
    fhirCode: '111325',
  );

  /// value111326
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111326 = MediaTypeCode(
    fhirCode: '111326',
  );

  /// value111327
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111327 = MediaTypeCode(
    fhirCode: '111327',
  );

  /// value111328
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111328 = MediaTypeCode(
    fhirCode: '111328',
  );

  /// value111329
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111329 = MediaTypeCode(
    fhirCode: '111329',
  );

  /// value111330
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111330 = MediaTypeCode(
    fhirCode: '111330',
  );

  /// value111331
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111331 = MediaTypeCode(
    fhirCode: '111331',
  );

  /// value111332
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111332 = MediaTypeCode(
    fhirCode: '111332',
  );

  /// value111333
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111333 = MediaTypeCode(
    fhirCode: '111333',
  );

  /// value111334
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111334 = MediaTypeCode(
    fhirCode: '111334',
  );

  /// value111335
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111335 = MediaTypeCode(
    fhirCode: '111335',
  );

  /// value111336
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111336 = MediaTypeCode(
    fhirCode: '111336',
  );

  /// value111338
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111338 = MediaTypeCode(
    fhirCode: '111338',
  );

  /// value111340
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111340 = MediaTypeCode(
    fhirCode: '111340',
  );

  /// value111341
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111341 = MediaTypeCode(
    fhirCode: '111341',
  );

  /// value111342
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111342 = MediaTypeCode(
    fhirCode: '111342',
  );

  /// value111343
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111343 = MediaTypeCode(
    fhirCode: '111343',
  );

  /// value111344
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111344 = MediaTypeCode(
    fhirCode: '111344',
  );

  /// value111345
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111345 = MediaTypeCode(
    fhirCode: '111345',
  );

  /// value111346
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111346 = MediaTypeCode(
    fhirCode: '111346',
  );

  /// value111347
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111347 = MediaTypeCode(
    fhirCode: '111347',
  );

  /// value111350
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111350 = MediaTypeCode(
    fhirCode: '111350',
  );

  /// value111351
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111351 = MediaTypeCode(
    fhirCode: '111351',
  );

  /// value111352
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111352 = MediaTypeCode(
    fhirCode: '111352',
  );

  /// value111353
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111353 = MediaTypeCode(
    fhirCode: '111353',
  );

  /// value111354
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111354 = MediaTypeCode(
    fhirCode: '111354',
  );

  /// value111355
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111355 = MediaTypeCode(
    fhirCode: '111355',
  );

  /// value111356
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111356 = MediaTypeCode(
    fhirCode: '111356',
  );

  /// value111357
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111357 = MediaTypeCode(
    fhirCode: '111357',
  );

  /// value111358
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111358 = MediaTypeCode(
    fhirCode: '111358',
  );

  /// value111359
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111359 = MediaTypeCode(
    fhirCode: '111359',
  );

  /// value111360
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111360 = MediaTypeCode(
    fhirCode: '111360',
  );

  /// value111361
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111361 = MediaTypeCode(
    fhirCode: '111361',
  );

  /// value111362
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111362 = MediaTypeCode(
    fhirCode: '111362',
  );

  /// value111363
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111363 = MediaTypeCode(
    fhirCode: '111363',
  );

  /// value111364
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111364 = MediaTypeCode(
    fhirCode: '111364',
  );

  /// value111365
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111365 = MediaTypeCode(
    fhirCode: '111365',
  );

  /// value111366
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111366 = MediaTypeCode(
    fhirCode: '111366',
  );

  /// value111367
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111367 = MediaTypeCode(
    fhirCode: '111367',
  );

  /// value111368
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111368 = MediaTypeCode(
    fhirCode: '111368',
  );

  /// value111369
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111369 = MediaTypeCode(
    fhirCode: '111369',
  );

  /// value111370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111370 = MediaTypeCode(
    fhirCode: '111370',
  );

  /// value111371
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111371 = MediaTypeCode(
    fhirCode: '111371',
  );

  /// value111372
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111372 = MediaTypeCode(
    fhirCode: '111372',
  );

  /// value111373
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111373 = MediaTypeCode(
    fhirCode: '111373',
  );

  /// value111374
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111374 = MediaTypeCode(
    fhirCode: '111374',
  );

  /// value111375
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111375 = MediaTypeCode(
    fhirCode: '111375',
  );

  /// value111376
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111376 = MediaTypeCode(
    fhirCode: '111376',
  );

  /// value111377
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111377 = MediaTypeCode(
    fhirCode: '111377',
  );

  /// value111380
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111380 = MediaTypeCode(
    fhirCode: '111380',
  );

  /// value111381
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111381 = MediaTypeCode(
    fhirCode: '111381',
  );

  /// value111382
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111382 = MediaTypeCode(
    fhirCode: '111382',
  );

  /// value111383
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111383 = MediaTypeCode(
    fhirCode: '111383',
  );

  /// value111384
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111384 = MediaTypeCode(
    fhirCode: '111384',
  );

  /// value111385
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111385 = MediaTypeCode(
    fhirCode: '111385',
  );

  /// value111386
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111386 = MediaTypeCode(
    fhirCode: '111386',
  );

  /// value111387
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111387 = MediaTypeCode(
    fhirCode: '111387',
  );

  /// value111388
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111388 = MediaTypeCode(
    fhirCode: '111388',
  );

  /// value111389
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111389 = MediaTypeCode(
    fhirCode: '111389',
  );

  /// value111390
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111390 = MediaTypeCode(
    fhirCode: '111390',
  );

  /// value111391
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111391 = MediaTypeCode(
    fhirCode: '111391',
  );

  /// value111392
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111392 = MediaTypeCode(
    fhirCode: '111392',
  );

  /// value111393
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111393 = MediaTypeCode(
    fhirCode: '111393',
  );

  /// value111394
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111394 = MediaTypeCode(
    fhirCode: '111394',
  );

  /// value111395
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111395 = MediaTypeCode(
    fhirCode: '111395',
  );

  /// value111396
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111396 = MediaTypeCode(
    fhirCode: '111396',
  );

  /// value111397
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111397 = MediaTypeCode(
    fhirCode: '111397',
  );

  /// value111398
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111398 = MediaTypeCode(
    fhirCode: '111398',
  );

  /// value111399
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111399 = MediaTypeCode(
    fhirCode: '111399',
  );

  /// value111400
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111400 = MediaTypeCode(
    fhirCode: '111400',
  );

  /// value111401
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111401 = MediaTypeCode(
    fhirCode: '111401',
  );

  /// value111402
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111402 = MediaTypeCode(
    fhirCode: '111402',
  );

  /// value111403
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111403 = MediaTypeCode(
    fhirCode: '111403',
  );

  /// value111404
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111404 = MediaTypeCode(
    fhirCode: '111404',
  );

  /// value111405
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111405 = MediaTypeCode(
    fhirCode: '111405',
  );

  /// value111406
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111406 = MediaTypeCode(
    fhirCode: '111406',
  );

  /// value111407
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111407 = MediaTypeCode(
    fhirCode: '111407',
  );

  /// value111408
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111408 = MediaTypeCode(
    fhirCode: '111408',
  );

  /// value111409
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111409 = MediaTypeCode(
    fhirCode: '111409',
  );

  /// value111410
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111410 = MediaTypeCode(
    fhirCode: '111410',
  );

  /// value111411
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111411 = MediaTypeCode(
    fhirCode: '111411',
  );

  /// value111412
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111412 = MediaTypeCode(
    fhirCode: '111412',
  );

  /// value111413
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111413 = MediaTypeCode(
    fhirCode: '111413',
  );

  /// value111414
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111414 = MediaTypeCode(
    fhirCode: '111414',
  );

  /// value111415
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111415 = MediaTypeCode(
    fhirCode: '111415',
  );

  /// value111416
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111416 = MediaTypeCode(
    fhirCode: '111416',
  );

  /// value111417
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111417 = MediaTypeCode(
    fhirCode: '111417',
  );

  /// value111418
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111418 = MediaTypeCode(
    fhirCode: '111418',
  );

  /// value111419
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111419 = MediaTypeCode(
    fhirCode: '111419',
  );

  /// value111420
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111420 = MediaTypeCode(
    fhirCode: '111420',
  );

  /// value111421
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111421 = MediaTypeCode(
    fhirCode: '111421',
  );

  /// value111423
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111423 = MediaTypeCode(
    fhirCode: '111423',
  );

  /// value111424
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111424 = MediaTypeCode(
    fhirCode: '111424',
  );

  /// value111425
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111425 = MediaTypeCode(
    fhirCode: '111425',
  );

  /// value111426
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111426 = MediaTypeCode(
    fhirCode: '111426',
  );

  /// value111427
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111427 = MediaTypeCode(
    fhirCode: '111427',
  );

  /// value111428
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111428 = MediaTypeCode(
    fhirCode: '111428',
  );

  /// value111429
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111429 = MediaTypeCode(
    fhirCode: '111429',
  );

  /// value111430
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111430 = MediaTypeCode(
    fhirCode: '111430',
  );

  /// value111431
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111431 = MediaTypeCode(
    fhirCode: '111431',
  );

  /// value111432
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111432 = MediaTypeCode(
    fhirCode: '111432',
  );

  /// value111433
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111433 = MediaTypeCode(
    fhirCode: '111433',
  );

  /// value111434
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111434 = MediaTypeCode(
    fhirCode: '111434',
  );

  /// value111435
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111435 = MediaTypeCode(
    fhirCode: '111435',
  );

  /// value111436
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111436 = MediaTypeCode(
    fhirCode: '111436',
  );

  /// value111437
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111437 = MediaTypeCode(
    fhirCode: '111437',
  );

  /// value111438
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111438 = MediaTypeCode(
    fhirCode: '111438',
  );

  /// value111439
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111439 = MediaTypeCode(
    fhirCode: '111439',
  );

  /// value111440
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111440 = MediaTypeCode(
    fhirCode: '111440',
  );

  /// value111441
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111441 = MediaTypeCode(
    fhirCode: '111441',
  );

  /// value111442
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111442 = MediaTypeCode(
    fhirCode: '111442',
  );

  /// value111443
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111443 = MediaTypeCode(
    fhirCode: '111443',
  );

  /// value111444
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111444 = MediaTypeCode(
    fhirCode: '111444',
  );

  /// value111445
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111445 = MediaTypeCode(
    fhirCode: '111445',
  );

  /// value111446
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111446 = MediaTypeCode(
    fhirCode: '111446',
  );

  /// value111447
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111447 = MediaTypeCode(
    fhirCode: '111447',
  );

  /// value111448
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111448 = MediaTypeCode(
    fhirCode: '111448',
  );

  /// value111449
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111449 = MediaTypeCode(
    fhirCode: '111449',
  );

  /// value111450
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111450 = MediaTypeCode(
    fhirCode: '111450',
  );

  /// value111451
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111451 = MediaTypeCode(
    fhirCode: '111451',
  );

  /// value111452
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111452 = MediaTypeCode(
    fhirCode: '111452',
  );

  /// value111453
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111453 = MediaTypeCode(
    fhirCode: '111453',
  );

  /// value111454
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111454 = MediaTypeCode(
    fhirCode: '111454',
  );

  /// value111455
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111455 = MediaTypeCode(
    fhirCode: '111455',
  );

  /// value111456
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111456 = MediaTypeCode(
    fhirCode: '111456',
  );

  /// value111457
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111457 = MediaTypeCode(
    fhirCode: '111457',
  );

  /// value111458
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111458 = MediaTypeCode(
    fhirCode: '111458',
  );

  /// value111459
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111459 = MediaTypeCode(
    fhirCode: '111459',
  );

  /// value111460
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111460 = MediaTypeCode(
    fhirCode: '111460',
  );

  /// value111461
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111461 = MediaTypeCode(
    fhirCode: '111461',
  );

  /// value111462
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111462 = MediaTypeCode(
    fhirCode: '111462',
  );

  /// value111463
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111463 = MediaTypeCode(
    fhirCode: '111463',
  );

  /// value111464
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111464 = MediaTypeCode(
    fhirCode: '111464',
  );

  /// value111465
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111465 = MediaTypeCode(
    fhirCode: '111465',
  );

  /// value111466
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111466 = MediaTypeCode(
    fhirCode: '111466',
  );

  /// value111467
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111467 = MediaTypeCode(
    fhirCode: '111467',
  );

  /// value111468
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111468 = MediaTypeCode(
    fhirCode: '111468',
  );

  /// value111469
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111469 = MediaTypeCode(
    fhirCode: '111469',
  );

  /// value111470
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111470 = MediaTypeCode(
    fhirCode: '111470',
  );

  /// value111471
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111471 = MediaTypeCode(
    fhirCode: '111471',
  );

  /// value111472
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111472 = MediaTypeCode(
    fhirCode: '111472',
  );

  /// value111473
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111473 = MediaTypeCode(
    fhirCode: '111473',
  );

  /// value111474
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111474 = MediaTypeCode(
    fhirCode: '111474',
  );

  /// value111475
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111475 = MediaTypeCode(
    fhirCode: '111475',
  );

  /// value111476
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111476 = MediaTypeCode(
    fhirCode: '111476',
  );

  /// value111477
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111477 = MediaTypeCode(
    fhirCode: '111477',
  );

  /// value111478
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111478 = MediaTypeCode(
    fhirCode: '111478',
  );

  /// value111479
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111479 = MediaTypeCode(
    fhirCode: '111479',
  );

  /// value111480
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111480 = MediaTypeCode(
    fhirCode: '111480',
  );

  /// value111481
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111481 = MediaTypeCode(
    fhirCode: '111481',
  );

  /// value111482
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111482 = MediaTypeCode(
    fhirCode: '111482',
  );

  /// value111483
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111483 = MediaTypeCode(
    fhirCode: '111483',
  );

  /// value111484
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111484 = MediaTypeCode(
    fhirCode: '111484',
  );

  /// value111485
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111485 = MediaTypeCode(
    fhirCode: '111485',
  );

  /// value111486
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111486 = MediaTypeCode(
    fhirCode: '111486',
  );

  /// value111487
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111487 = MediaTypeCode(
    fhirCode: '111487',
  );

  /// value111488
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111488 = MediaTypeCode(
    fhirCode: '111488',
  );

  /// value111489
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111489 = MediaTypeCode(
    fhirCode: '111489',
  );

  /// value111490
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111490 = MediaTypeCode(
    fhirCode: '111490',
  );

  /// value111491
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111491 = MediaTypeCode(
    fhirCode: '111491',
  );

  /// value111492
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111492 = MediaTypeCode(
    fhirCode: '111492',
  );

  /// value111494
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111494 = MediaTypeCode(
    fhirCode: '111494',
  );

  /// value111495
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111495 = MediaTypeCode(
    fhirCode: '111495',
  );

  /// value111496
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111496 = MediaTypeCode(
    fhirCode: '111496',
  );

  /// value111497
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111497 = MediaTypeCode(
    fhirCode: '111497',
  );

  /// value111498
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111498 = MediaTypeCode(
    fhirCode: '111498',
  );

  /// value111499
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111499 = MediaTypeCode(
    fhirCode: '111499',
  );

  /// value111500
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111500 = MediaTypeCode(
    fhirCode: '111500',
  );

  /// value111501
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111501 = MediaTypeCode(
    fhirCode: '111501',
  );

  /// value111502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111502 = MediaTypeCode(
    fhirCode: '111502',
  );

  /// value111503
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111503 = MediaTypeCode(
    fhirCode: '111503',
  );

  /// value111504
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111504 = MediaTypeCode(
    fhirCode: '111504',
  );

  /// value111505
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111505 = MediaTypeCode(
    fhirCode: '111505',
  );

  /// value111506
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111506 = MediaTypeCode(
    fhirCode: '111506',
  );

  /// value111507
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111507 = MediaTypeCode(
    fhirCode: '111507',
  );

  /// value111508
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111508 = MediaTypeCode(
    fhirCode: '111508',
  );

  /// value111509
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111509 = MediaTypeCode(
    fhirCode: '111509',
  );

  /// value111510
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111510 = MediaTypeCode(
    fhirCode: '111510',
  );

  /// value111511
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111511 = MediaTypeCode(
    fhirCode: '111511',
  );

  /// value111512
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111512 = MediaTypeCode(
    fhirCode: '111512',
  );

  /// value111513
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111513 = MediaTypeCode(
    fhirCode: '111513',
  );

  /// value111514
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111514 = MediaTypeCode(
    fhirCode: '111514',
  );

  /// value111515
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111515 = MediaTypeCode(
    fhirCode: '111515',
  );

  /// value111516
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111516 = MediaTypeCode(
    fhirCode: '111516',
  );

  /// value111517
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111517 = MediaTypeCode(
    fhirCode: '111517',
  );

  /// value111518
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111518 = MediaTypeCode(
    fhirCode: '111518',
  );

  /// value111519
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111519 = MediaTypeCode(
    fhirCode: '111519',
  );

  /// value111520
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111520 = MediaTypeCode(
    fhirCode: '111520',
  );

  /// value111521
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111521 = MediaTypeCode(
    fhirCode: '111521',
  );

  /// value111522
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111522 = MediaTypeCode(
    fhirCode: '111522',
  );

  /// value111523
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111523 = MediaTypeCode(
    fhirCode: '111523',
  );

  /// value111524
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111524 = MediaTypeCode(
    fhirCode: '111524',
  );

  /// value111525
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111525 = MediaTypeCode(
    fhirCode: '111525',
  );

  /// value111526
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111526 = MediaTypeCode(
    fhirCode: '111526',
  );

  /// value111527
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111527 = MediaTypeCode(
    fhirCode: '111527',
  );

  /// value111528
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111528 = MediaTypeCode(
    fhirCode: '111528',
  );

  /// value111529
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111529 = MediaTypeCode(
    fhirCode: '111529',
  );

  /// value111530
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111530 = MediaTypeCode(
    fhirCode: '111530',
  );

  /// value111531
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111531 = MediaTypeCode(
    fhirCode: '111531',
  );

  /// value111532
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111532 = MediaTypeCode(
    fhirCode: '111532',
  );

  /// value111533
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111533 = MediaTypeCode(
    fhirCode: '111533',
  );

  /// value111534
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111534 = MediaTypeCode(
    fhirCode: '111534',
  );

  /// value111535
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111535 = MediaTypeCode(
    fhirCode: '111535',
  );

  /// value111536
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111536 = MediaTypeCode(
    fhirCode: '111536',
  );

  /// value111537
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111537 = MediaTypeCode(
    fhirCode: '111537',
  );

  /// value111538
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111538 = MediaTypeCode(
    fhirCode: '111538',
  );

  /// value111539
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111539 = MediaTypeCode(
    fhirCode: '111539',
  );

  /// value111540
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111540 = MediaTypeCode(
    fhirCode: '111540',
  );

  /// value111541
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111541 = MediaTypeCode(
    fhirCode: '111541',
  );

  /// value111542
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111542 = MediaTypeCode(
    fhirCode: '111542',
  );

  /// value111543
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111543 = MediaTypeCode(
    fhirCode: '111543',
  );

  /// value111544
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111544 = MediaTypeCode(
    fhirCode: '111544',
  );

  /// value111545
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111545 = MediaTypeCode(
    fhirCode: '111545',
  );

  /// value111546
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111546 = MediaTypeCode(
    fhirCode: '111546',
  );

  /// value111547
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111547 = MediaTypeCode(
    fhirCode: '111547',
  );

  /// value111548
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111548 = MediaTypeCode(
    fhirCode: '111548',
  );

  /// value111549
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111549 = MediaTypeCode(
    fhirCode: '111549',
  );

  /// value111550
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111550 = MediaTypeCode(
    fhirCode: '111550',
  );

  /// value111551
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111551 = MediaTypeCode(
    fhirCode: '111551',
  );

  /// value111552
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111552 = MediaTypeCode(
    fhirCode: '111552',
  );

  /// value111553
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111553 = MediaTypeCode(
    fhirCode: '111553',
  );

  /// value111554
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111554 = MediaTypeCode(
    fhirCode: '111554',
  );

  /// value111555
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111555 = MediaTypeCode(
    fhirCode: '111555',
  );

  /// value111556
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111556 = MediaTypeCode(
    fhirCode: '111556',
  );

  /// value111557
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111557 = MediaTypeCode(
    fhirCode: '111557',
  );

  /// value111558
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111558 = MediaTypeCode(
    fhirCode: '111558',
  );

  /// value111559
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111559 = MediaTypeCode(
    fhirCode: '111559',
  );

  /// value111560
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111560 = MediaTypeCode(
    fhirCode: '111560',
  );

  /// value111561
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111561 = MediaTypeCode(
    fhirCode: '111561',
  );

  /// value111562
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111562 = MediaTypeCode(
    fhirCode: '111562',
  );

  /// value111563
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111563 = MediaTypeCode(
    fhirCode: '111563',
  );

  /// value111564
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111564 = MediaTypeCode(
    fhirCode: '111564',
  );

  /// value111565
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111565 = MediaTypeCode(
    fhirCode: '111565',
  );

  /// value111566
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111566 = MediaTypeCode(
    fhirCode: '111566',
  );

  /// value111567
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111567 = MediaTypeCode(
    fhirCode: '111567',
  );

  /// value111568
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111568 = MediaTypeCode(
    fhirCode: '111568',
  );

  /// value111569
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111569 = MediaTypeCode(
    fhirCode: '111569',
  );

  /// value111570
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111570 = MediaTypeCode(
    fhirCode: '111570',
  );

  /// value111571
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111571 = MediaTypeCode(
    fhirCode: '111571',
  );

  /// value111572
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111572 = MediaTypeCode(
    fhirCode: '111572',
  );

  /// value111573
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111573 = MediaTypeCode(
    fhirCode: '111573',
  );

  /// value111574
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111574 = MediaTypeCode(
    fhirCode: '111574',
  );

  /// value111575
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111575 = MediaTypeCode(
    fhirCode: '111575',
  );

  /// value111576
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111576 = MediaTypeCode(
    fhirCode: '111576',
  );

  /// value111577
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111577 = MediaTypeCode(
    fhirCode: '111577',
  );

  /// value111578
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111578 = MediaTypeCode(
    fhirCode: '111578',
  );

  /// value111579
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111579 = MediaTypeCode(
    fhirCode: '111579',
  );

  /// value111580
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111580 = MediaTypeCode(
    fhirCode: '111580',
  );

  /// value111581
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111581 = MediaTypeCode(
    fhirCode: '111581',
  );

  /// value111582
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111582 = MediaTypeCode(
    fhirCode: '111582',
  );

  /// value111583
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111583 = MediaTypeCode(
    fhirCode: '111583',
  );

  /// value111584
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111584 = MediaTypeCode(
    fhirCode: '111584',
  );

  /// value111585
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111585 = MediaTypeCode(
    fhirCode: '111585',
  );

  /// value111586
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111586 = MediaTypeCode(
    fhirCode: '111586',
  );

  /// value111587
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111587 = MediaTypeCode(
    fhirCode: '111587',
  );

  /// value111590
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111590 = MediaTypeCode(
    fhirCode: '111590',
  );

  /// value111591
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111591 = MediaTypeCode(
    fhirCode: '111591',
  );

  /// value111592
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111592 = MediaTypeCode(
    fhirCode: '111592',
  );

  /// value111593
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111593 = MediaTypeCode(
    fhirCode: '111593',
  );

  /// value111601
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111601 = MediaTypeCode(
    fhirCode: '111601',
  );

  /// value111602
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111602 = MediaTypeCode(
    fhirCode: '111602',
  );

  /// value111603
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111603 = MediaTypeCode(
    fhirCode: '111603',
  );

  /// value111604
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111604 = MediaTypeCode(
    fhirCode: '111604',
  );

  /// value111605
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111605 = MediaTypeCode(
    fhirCode: '111605',
  );

  /// value111606
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111606 = MediaTypeCode(
    fhirCode: '111606',
  );

  /// value111607
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111607 = MediaTypeCode(
    fhirCode: '111607',
  );

  /// value111609
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111609 = MediaTypeCode(
    fhirCode: '111609',
  );

  /// value111621
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111621 = MediaTypeCode(
    fhirCode: '111621',
  );

  /// value111622
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111622 = MediaTypeCode(
    fhirCode: '111622',
  );

  /// value111623
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111623 = MediaTypeCode(
    fhirCode: '111623',
  );

  /// value111625
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111625 = MediaTypeCode(
    fhirCode: '111625',
  );

  /// value111626
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111626 = MediaTypeCode(
    fhirCode: '111626',
  );

  /// value111627
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111627 = MediaTypeCode(
    fhirCode: '111627',
  );

  /// value111628
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111628 = MediaTypeCode(
    fhirCode: '111628',
  );

  /// value111629
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111629 = MediaTypeCode(
    fhirCode: '111629',
  );

  /// value111630
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111630 = MediaTypeCode(
    fhirCode: '111630',
  );

  /// value111631
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111631 = MediaTypeCode(
    fhirCode: '111631',
  );

  /// value111632
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111632 = MediaTypeCode(
    fhirCode: '111632',
  );

  /// value111633
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111633 = MediaTypeCode(
    fhirCode: '111633',
  );

  /// value111634
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111634 = MediaTypeCode(
    fhirCode: '111634',
  );

  /// value111635
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111635 = MediaTypeCode(
    fhirCode: '111635',
  );

  /// value111636
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111636 = MediaTypeCode(
    fhirCode: '111636',
  );

  /// value111637
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111637 = MediaTypeCode(
    fhirCode: '111637',
  );

  /// value111638
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111638 = MediaTypeCode(
    fhirCode: '111638',
  );

  /// value111641
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111641 = MediaTypeCode(
    fhirCode: '111641',
  );

  /// value111642
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111642 = MediaTypeCode(
    fhirCode: '111642',
  );

  /// value111643
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111643 = MediaTypeCode(
    fhirCode: '111643',
  );

  /// value111644
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111644 = MediaTypeCode(
    fhirCode: '111644',
  );

  /// value111645
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111645 = MediaTypeCode(
    fhirCode: '111645',
  );

  /// value111646
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111646 = MediaTypeCode(
    fhirCode: '111646',
  );

  /// value111671
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111671 = MediaTypeCode(
    fhirCode: '111671',
  );

  /// value111672
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111672 = MediaTypeCode(
    fhirCode: '111672',
  );

  /// value111673
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111673 = MediaTypeCode(
    fhirCode: '111673',
  );

  /// value111674
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111674 = MediaTypeCode(
    fhirCode: '111674',
  );

  /// value111675
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111675 = MediaTypeCode(
    fhirCode: '111675',
  );

  /// value111676
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111676 = MediaTypeCode(
    fhirCode: '111676',
  );

  /// value111677
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111677 = MediaTypeCode(
    fhirCode: '111677',
  );

  /// value111678
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111678 = MediaTypeCode(
    fhirCode: '111678',
  );

  /// value111679
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111679 = MediaTypeCode(
    fhirCode: '111679',
  );

  /// value111680
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111680 = MediaTypeCode(
    fhirCode: '111680',
  );

  /// value111685
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111685 = MediaTypeCode(
    fhirCode: '111685',
  );

  /// value111686
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111686 = MediaTypeCode(
    fhirCode: '111686',
  );

  /// value111687
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111687 = MediaTypeCode(
    fhirCode: '111687',
  );

  /// value111688
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111688 = MediaTypeCode(
    fhirCode: '111688',
  );

  /// value111689
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111689 = MediaTypeCode(
    fhirCode: '111689',
  );

  /// value111690
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111690 = MediaTypeCode(
    fhirCode: '111690',
  );

  /// value111691
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111691 = MediaTypeCode(
    fhirCode: '111691',
  );

  /// value111692
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111692 = MediaTypeCode(
    fhirCode: '111692',
  );

  /// value111693
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111693 = MediaTypeCode(
    fhirCode: '111693',
  );

  /// value111694
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111694 = MediaTypeCode(
    fhirCode: '111694',
  );

  /// value111695
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111695 = MediaTypeCode(
    fhirCode: '111695',
  );

  /// value111696
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111696 = MediaTypeCode(
    fhirCode: '111696',
  );

  /// value111697
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111697 = MediaTypeCode(
    fhirCode: '111697',
  );

  /// value111698
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111698 = MediaTypeCode(
    fhirCode: '111698',
  );

  /// value111700
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111700 = MediaTypeCode(
    fhirCode: '111700',
  );

  /// value111701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111701 = MediaTypeCode(
    fhirCode: '111701',
  );

  /// value111702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111702 = MediaTypeCode(
    fhirCode: '111702',
  );

  /// value111703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111703 = MediaTypeCode(
    fhirCode: '111703',
  );

  /// value111704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111704 = MediaTypeCode(
    fhirCode: '111704',
  );

  /// value111705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111705 = MediaTypeCode(
    fhirCode: '111705',
  );

  /// value111706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111706 = MediaTypeCode(
    fhirCode: '111706',
  );

  /// value111707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111707 = MediaTypeCode(
    fhirCode: '111707',
  );

  /// value111708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111708 = MediaTypeCode(
    fhirCode: '111708',
  );

  /// value111709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111709 = MediaTypeCode(
    fhirCode: '111709',
  );

  /// value111710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111710 = MediaTypeCode(
    fhirCode: '111710',
  );

  /// value111711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111711 = MediaTypeCode(
    fhirCode: '111711',
  );

  /// value111712
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111712 = MediaTypeCode(
    fhirCode: '111712',
  );

  /// value111718
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111718 = MediaTypeCode(
    fhirCode: '111718',
  );

  /// value111719
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111719 = MediaTypeCode(
    fhirCode: '111719',
  );

  /// value111720
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111720 = MediaTypeCode(
    fhirCode: '111720',
  );

  /// value111721
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111721 = MediaTypeCode(
    fhirCode: '111721',
  );

  /// value111723
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111723 = MediaTypeCode(
    fhirCode: '111723',
  );

  /// value111724
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111724 = MediaTypeCode(
    fhirCode: '111724',
  );

  /// value111726
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111726 = MediaTypeCode(
    fhirCode: '111726',
  );

  /// value111727
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111727 = MediaTypeCode(
    fhirCode: '111727',
  );

  /// value111729
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111729 = MediaTypeCode(
    fhirCode: '111729',
  );

  /// value111741
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111741 = MediaTypeCode(
    fhirCode: '111741',
  );

  /// value111742
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111742 = MediaTypeCode(
    fhirCode: '111742',
  );

  /// value111743
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111743 = MediaTypeCode(
    fhirCode: '111743',
  );

  /// value111744
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111744 = MediaTypeCode(
    fhirCode: '111744',
  );

  /// value111745
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111745 = MediaTypeCode(
    fhirCode: '111745',
  );

  /// value111746
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111746 = MediaTypeCode(
    fhirCode: '111746',
  );

  /// value111747
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111747 = MediaTypeCode(
    fhirCode: '111747',
  );

  /// value111748
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111748 = MediaTypeCode(
    fhirCode: '111748',
  );

  /// value111749
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111749 = MediaTypeCode(
    fhirCode: '111749',
  );

  /// value111750
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111750 = MediaTypeCode(
    fhirCode: '111750',
  );

  /// value111751
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111751 = MediaTypeCode(
    fhirCode: '111751',
  );

  /// value111752
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111752 = MediaTypeCode(
    fhirCode: '111752',
  );

  /// value111753
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111753 = MediaTypeCode(
    fhirCode: '111753',
  );

  /// value111754
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111754 = MediaTypeCode(
    fhirCode: '111754',
  );

  /// value111755
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111755 = MediaTypeCode(
    fhirCode: '111755',
  );

  /// value111756
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111756 = MediaTypeCode(
    fhirCode: '111756',
  );

  /// value111760
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111760 = MediaTypeCode(
    fhirCode: '111760',
  );

  /// value111761
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111761 = MediaTypeCode(
    fhirCode: '111761',
  );

  /// value111762
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111762 = MediaTypeCode(
    fhirCode: '111762',
  );

  /// value111763
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111763 = MediaTypeCode(
    fhirCode: '111763',
  );

  /// value111764
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111764 = MediaTypeCode(
    fhirCode: '111764',
  );

  /// value111765
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111765 = MediaTypeCode(
    fhirCode: '111765',
  );

  /// value111766
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111766 = MediaTypeCode(
    fhirCode: '111766',
  );

  /// value111767
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111767 = MediaTypeCode(
    fhirCode: '111767',
  );

  /// value111768
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111768 = MediaTypeCode(
    fhirCode: '111768',
  );

  /// value111769
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111769 = MediaTypeCode(
    fhirCode: '111769',
  );

  /// value111770
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111770 = MediaTypeCode(
    fhirCode: '111770',
  );

  /// value111771
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111771 = MediaTypeCode(
    fhirCode: '111771',
  );

  /// value111772
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111772 = MediaTypeCode(
    fhirCode: '111772',
  );

  /// value111773
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111773 = MediaTypeCode(
    fhirCode: '111773',
  );

  /// value111776
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111776 = MediaTypeCode(
    fhirCode: '111776',
  );

  /// value111777
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111777 = MediaTypeCode(
    fhirCode: '111777',
  );

  /// value111778
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111778 = MediaTypeCode(
    fhirCode: '111778',
  );

  /// value111779
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111779 = MediaTypeCode(
    fhirCode: '111779',
  );

  /// value111780
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111780 = MediaTypeCode(
    fhirCode: '111780',
  );

  /// value111781
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111781 = MediaTypeCode(
    fhirCode: '111781',
  );

  /// value111782
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111782 = MediaTypeCode(
    fhirCode: '111782',
  );

  /// value111783
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111783 = MediaTypeCode(
    fhirCode: '111783',
  );

  /// value111786
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111786 = MediaTypeCode(
    fhirCode: '111786',
  );

  /// value111787
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111787 = MediaTypeCode(
    fhirCode: '111787',
  );

  /// value111791
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111791 = MediaTypeCode(
    fhirCode: '111791',
  );

  /// value111792
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111792 = MediaTypeCode(
    fhirCode: '111792',
  );

  /// value111800
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111800 = MediaTypeCode(
    fhirCode: '111800',
  );

  /// value111801
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111801 = MediaTypeCode(
    fhirCode: '111801',
  );

  /// value111802
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111802 = MediaTypeCode(
    fhirCode: '111802',
  );

  /// value111803
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111803 = MediaTypeCode(
    fhirCode: '111803',
  );

  /// value111804
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111804 = MediaTypeCode(
    fhirCode: '111804',
  );

  /// value111805
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111805 = MediaTypeCode(
    fhirCode: '111805',
  );

  /// value111806
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111806 = MediaTypeCode(
    fhirCode: '111806',
  );

  /// value111807
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111807 = MediaTypeCode(
    fhirCode: '111807',
  );

  /// value111808
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111808 = MediaTypeCode(
    fhirCode: '111808',
  );

  /// value111809
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111809 = MediaTypeCode(
    fhirCode: '111809',
  );

  /// value111810
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111810 = MediaTypeCode(
    fhirCode: '111810',
  );

  /// value111811
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111811 = MediaTypeCode(
    fhirCode: '111811',
  );

  /// value111812
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111812 = MediaTypeCode(
    fhirCode: '111812',
  );

  /// value111813
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111813 = MediaTypeCode(
    fhirCode: '111813',
  );

  /// value111814
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111814 = MediaTypeCode(
    fhirCode: '111814',
  );

  /// value111815
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111815 = MediaTypeCode(
    fhirCode: '111815',
  );

  /// value111816
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111816 = MediaTypeCode(
    fhirCode: '111816',
  );

  /// value111817
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111817 = MediaTypeCode(
    fhirCode: '111817',
  );

  /// value111818
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111818 = MediaTypeCode(
    fhirCode: '111818',
  );

  /// value111819
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111819 = MediaTypeCode(
    fhirCode: '111819',
  );

  /// value111820
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111820 = MediaTypeCode(
    fhirCode: '111820',
  );

  /// value111821
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111821 = MediaTypeCode(
    fhirCode: '111821',
  );

  /// value111822
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111822 = MediaTypeCode(
    fhirCode: '111822',
  );

  /// value111823
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111823 = MediaTypeCode(
    fhirCode: '111823',
  );

  /// value111824
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111824 = MediaTypeCode(
    fhirCode: '111824',
  );

  /// value111825
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111825 = MediaTypeCode(
    fhirCode: '111825',
  );

  /// value111826
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111826 = MediaTypeCode(
    fhirCode: '111826',
  );

  /// value111827
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111827 = MediaTypeCode(
    fhirCode: '111827',
  );

  /// value111828
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111828 = MediaTypeCode(
    fhirCode: '111828',
  );

  /// value111829
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111829 = MediaTypeCode(
    fhirCode: '111829',
  );

  /// value111830
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111830 = MediaTypeCode(
    fhirCode: '111830',
  );

  /// value111831
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111831 = MediaTypeCode(
    fhirCode: '111831',
  );

  /// value111832
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111832 = MediaTypeCode(
    fhirCode: '111832',
  );

  /// value111833
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111833 = MediaTypeCode(
    fhirCode: '111833',
  );

  /// value111834
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111834 = MediaTypeCode(
    fhirCode: '111834',
  );

  /// value111835
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111835 = MediaTypeCode(
    fhirCode: '111835',
  );

  /// value111836
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111836 = MediaTypeCode(
    fhirCode: '111836',
  );

  /// value111837
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111837 = MediaTypeCode(
    fhirCode: '111837',
  );

  /// value111838
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111838 = MediaTypeCode(
    fhirCode: '111838',
  );

  /// value111839
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111839 = MediaTypeCode(
    fhirCode: '111839',
  );

  /// value111840
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111840 = MediaTypeCode(
    fhirCode: '111840',
  );

  /// value111841
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111841 = MediaTypeCode(
    fhirCode: '111841',
  );

  /// value111842
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111842 = MediaTypeCode(
    fhirCode: '111842',
  );

  /// value111843
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111843 = MediaTypeCode(
    fhirCode: '111843',
  );

  /// value111844
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111844 = MediaTypeCode(
    fhirCode: '111844',
  );

  /// value111845
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111845 = MediaTypeCode(
    fhirCode: '111845',
  );

  /// value111846
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111846 = MediaTypeCode(
    fhirCode: '111846',
  );

  /// value111847
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111847 = MediaTypeCode(
    fhirCode: '111847',
  );

  /// value111848
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111848 = MediaTypeCode(
    fhirCode: '111848',
  );

  /// value111849
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111849 = MediaTypeCode(
    fhirCode: '111849',
  );

  /// value111850
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111850 = MediaTypeCode(
    fhirCode: '111850',
  );

  /// value111851
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111851 = MediaTypeCode(
    fhirCode: '111851',
  );

  /// value111852
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111852 = MediaTypeCode(
    fhirCode: '111852',
  );

  /// value111853
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111853 = MediaTypeCode(
    fhirCode: '111853',
  );

  /// value111854
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111854 = MediaTypeCode(
    fhirCode: '111854',
  );

  /// value111855
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111855 = MediaTypeCode(
    fhirCode: '111855',
  );

  /// value111856
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111856 = MediaTypeCode(
    fhirCode: '111856',
  );

  /// value111900
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111900 = MediaTypeCode(
    fhirCode: '111900',
  );

  /// value111901
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111901 = MediaTypeCode(
    fhirCode: '111901',
  );

  /// value111902
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111902 = MediaTypeCode(
    fhirCode: '111902',
  );

  /// value111903
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111903 = MediaTypeCode(
    fhirCode: '111903',
  );

  /// value111904
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111904 = MediaTypeCode(
    fhirCode: '111904',
  );

  /// value111905
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111905 = MediaTypeCode(
    fhirCode: '111905',
  );

  /// value111906
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111906 = MediaTypeCode(
    fhirCode: '111906',
  );

  /// value111907
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111907 = MediaTypeCode(
    fhirCode: '111907',
  );

  /// value111908
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111908 = MediaTypeCode(
    fhirCode: '111908',
  );

  /// value111909
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111909 = MediaTypeCode(
    fhirCode: '111909',
  );

  /// value111910
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111910 = MediaTypeCode(
    fhirCode: '111910',
  );

  /// value111911
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111911 = MediaTypeCode(
    fhirCode: '111911',
  );

  /// value111912
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111912 = MediaTypeCode(
    fhirCode: '111912',
  );

  /// value111913
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111913 = MediaTypeCode(
    fhirCode: '111913',
  );

  /// value111914
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111914 = MediaTypeCode(
    fhirCode: '111914',
  );

  /// value111915
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111915 = MediaTypeCode(
    fhirCode: '111915',
  );

  /// value111916
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111916 = MediaTypeCode(
    fhirCode: '111916',
  );

  /// value111917
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111917 = MediaTypeCode(
    fhirCode: '111917',
  );

  /// value111918
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111918 = MediaTypeCode(
    fhirCode: '111918',
  );

  /// value111919
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111919 = MediaTypeCode(
    fhirCode: '111919',
  );

  /// value111920
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111920 = MediaTypeCode(
    fhirCode: '111920',
  );

  /// value111921
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111921 = MediaTypeCode(
    fhirCode: '111921',
  );

  /// value111922
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111922 = MediaTypeCode(
    fhirCode: '111922',
  );

  /// value111923
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111923 = MediaTypeCode(
    fhirCode: '111923',
  );

  /// value111924
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111924 = MediaTypeCode(
    fhirCode: '111924',
  );

  /// value111925
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111925 = MediaTypeCode(
    fhirCode: '111925',
  );

  /// value111926
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111926 = MediaTypeCode(
    fhirCode: '111926',
  );

  /// value111927
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111927 = MediaTypeCode(
    fhirCode: '111927',
  );

  /// value111928
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111928 = MediaTypeCode(
    fhirCode: '111928',
  );

  /// value111929
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111929 = MediaTypeCode(
    fhirCode: '111929',
  );

  /// value111930
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111930 = MediaTypeCode(
    fhirCode: '111930',
  );

  /// value111931
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111931 = MediaTypeCode(
    fhirCode: '111931',
  );

  /// value111932
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111932 = MediaTypeCode(
    fhirCode: '111932',
  );

  /// value111933
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111933 = MediaTypeCode(
    fhirCode: '111933',
  );

  /// value111934
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111934 = MediaTypeCode(
    fhirCode: '111934',
  );

  /// value111935
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111935 = MediaTypeCode(
    fhirCode: '111935',
  );

  /// value111936
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111936 = MediaTypeCode(
    fhirCode: '111936',
  );

  /// value111937
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111937 = MediaTypeCode(
    fhirCode: '111937',
  );

  /// value111938
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111938 = MediaTypeCode(
    fhirCode: '111938',
  );

  /// value111939
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111939 = MediaTypeCode(
    fhirCode: '111939',
  );

  /// value111940
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111940 = MediaTypeCode(
    fhirCode: '111940',
  );

  /// value111941
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111941 = MediaTypeCode(
    fhirCode: '111941',
  );

  /// value111942
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111942 = MediaTypeCode(
    fhirCode: '111942',
  );

  /// value111943
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111943 = MediaTypeCode(
    fhirCode: '111943',
  );

  /// value111944
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111944 = MediaTypeCode(
    fhirCode: '111944',
  );

  /// value111945
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111945 = MediaTypeCode(
    fhirCode: '111945',
  );

  /// value111946
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111946 = MediaTypeCode(
    fhirCode: '111946',
  );

  /// value111947
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value111947 = MediaTypeCode(
    fhirCode: '111947',
  );

  /// value112000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112000 = MediaTypeCode(
    fhirCode: '112000',
  );

  /// value112001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112001 = MediaTypeCode(
    fhirCode: '112001',
  );

  /// value112002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112002 = MediaTypeCode(
    fhirCode: '112002',
  );

  /// value112003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112003 = MediaTypeCode(
    fhirCode: '112003',
  );

  /// value112004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112004 = MediaTypeCode(
    fhirCode: '112004',
  );

  /// value112005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112005 = MediaTypeCode(
    fhirCode: '112005',
  );

  /// value112006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112006 = MediaTypeCode(
    fhirCode: '112006',
  );

  /// value112007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112007 = MediaTypeCode(
    fhirCode: '112007',
  );

  /// value112008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112008 = MediaTypeCode(
    fhirCode: '112008',
  );

  /// value112009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112009 = MediaTypeCode(
    fhirCode: '112009',
  );

  /// value112010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112010 = MediaTypeCode(
    fhirCode: '112010',
  );

  /// value112011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112011 = MediaTypeCode(
    fhirCode: '112011',
  );

  /// value112012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112012 = MediaTypeCode(
    fhirCode: '112012',
  );

  /// value112013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112013 = MediaTypeCode(
    fhirCode: '112013',
  );

  /// value112014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112014 = MediaTypeCode(
    fhirCode: '112014',
  );

  /// value112015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112015 = MediaTypeCode(
    fhirCode: '112015',
  );

  /// value112016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112016 = MediaTypeCode(
    fhirCode: '112016',
  );

  /// value112017
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112017 = MediaTypeCode(
    fhirCode: '112017',
  );

  /// value112018
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112018 = MediaTypeCode(
    fhirCode: '112018',
  );

  /// value112019
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112019 = MediaTypeCode(
    fhirCode: '112019',
  );

  /// value112020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112020 = MediaTypeCode(
    fhirCode: '112020',
  );

  /// value112021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112021 = MediaTypeCode(
    fhirCode: '112021',
  );

  /// value112022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112022 = MediaTypeCode(
    fhirCode: '112022',
  );

  /// value112023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112023 = MediaTypeCode(
    fhirCode: '112023',
  );

  /// value112024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112024 = MediaTypeCode(
    fhirCode: '112024',
  );

  /// value112025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112025 = MediaTypeCode(
    fhirCode: '112025',
  );

  /// value112026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112026 = MediaTypeCode(
    fhirCode: '112026',
  );

  /// value112027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112027 = MediaTypeCode(
    fhirCode: '112027',
  );

  /// value112028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112028 = MediaTypeCode(
    fhirCode: '112028',
  );

  /// value112029
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112029 = MediaTypeCode(
    fhirCode: '112029',
  );

  /// value112030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112030 = MediaTypeCode(
    fhirCode: '112030',
  );

  /// value112031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112031 = MediaTypeCode(
    fhirCode: '112031',
  );

  /// value112032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112032 = MediaTypeCode(
    fhirCode: '112032',
  );

  /// value112033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112033 = MediaTypeCode(
    fhirCode: '112033',
  );

  /// value112034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112034 = MediaTypeCode(
    fhirCode: '112034',
  );

  /// value112035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112035 = MediaTypeCode(
    fhirCode: '112035',
  );

  /// value112036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112036 = MediaTypeCode(
    fhirCode: '112036',
  );

  /// value112037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112037 = MediaTypeCode(
    fhirCode: '112037',
  );

  /// value112038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112038 = MediaTypeCode(
    fhirCode: '112038',
  );

  /// value112039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112039 = MediaTypeCode(
    fhirCode: '112039',
  );

  /// value112040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112040 = MediaTypeCode(
    fhirCode: '112040',
  );

  /// value112041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112041 = MediaTypeCode(
    fhirCode: '112041',
  );

  /// value112042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112042 = MediaTypeCode(
    fhirCode: '112042',
  );

  /// value112043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112043 = MediaTypeCode(
    fhirCode: '112043',
  );

  /// value112044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112044 = MediaTypeCode(
    fhirCode: '112044',
  );

  /// value112045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112045 = MediaTypeCode(
    fhirCode: '112045',
  );

  /// value112046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112046 = MediaTypeCode(
    fhirCode: '112046',
  );

  /// value112047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112047 = MediaTypeCode(
    fhirCode: '112047',
  );

  /// value112048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112048 = MediaTypeCode(
    fhirCode: '112048',
  );

  /// value112049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112049 = MediaTypeCode(
    fhirCode: '112049',
  );

  /// value112050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112050 = MediaTypeCode(
    fhirCode: '112050',
  );

  /// value112051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112051 = MediaTypeCode(
    fhirCode: '112051',
  );

  /// value112052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112052 = MediaTypeCode(
    fhirCode: '112052',
  );

  /// value112053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112053 = MediaTypeCode(
    fhirCode: '112053',
  );

  /// value112054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112054 = MediaTypeCode(
    fhirCode: '112054',
  );

  /// value112055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112055 = MediaTypeCode(
    fhirCode: '112055',
  );

  /// value112056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112056 = MediaTypeCode(
    fhirCode: '112056',
  );

  /// value112057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112057 = MediaTypeCode(
    fhirCode: '112057',
  );

  /// value112058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112058 = MediaTypeCode(
    fhirCode: '112058',
  );

  /// value112059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112059 = MediaTypeCode(
    fhirCode: '112059',
  );

  /// value112060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112060 = MediaTypeCode(
    fhirCode: '112060',
  );

  /// value112061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112061 = MediaTypeCode(
    fhirCode: '112061',
  );

  /// value112062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112062 = MediaTypeCode(
    fhirCode: '112062',
  );

  /// value112063
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112063 = MediaTypeCode(
    fhirCode: '112063',
  );

  /// value112064
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112064 = MediaTypeCode(
    fhirCode: '112064',
  );

  /// value112065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112065 = MediaTypeCode(
    fhirCode: '112065',
  );

  /// value112066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112066 = MediaTypeCode(
    fhirCode: '112066',
  );

  /// value112067
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112067 = MediaTypeCode(
    fhirCode: '112067',
  );

  /// value112068
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112068 = MediaTypeCode(
    fhirCode: '112068',
  );

  /// value112069
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112069 = MediaTypeCode(
    fhirCode: '112069',
  );

  /// value112070
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112070 = MediaTypeCode(
    fhirCode: '112070',
  );

  /// value112071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112071 = MediaTypeCode(
    fhirCode: '112071',
  );

  /// value112072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112072 = MediaTypeCode(
    fhirCode: '112072',
  );

  /// value112073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112073 = MediaTypeCode(
    fhirCode: '112073',
  );

  /// value112074
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112074 = MediaTypeCode(
    fhirCode: '112074',
  );

  /// value112075
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112075 = MediaTypeCode(
    fhirCode: '112075',
  );

  /// value112076
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112076 = MediaTypeCode(
    fhirCode: '112076',
  );

  /// value112077
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112077 = MediaTypeCode(
    fhirCode: '112077',
  );

  /// value112078
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112078 = MediaTypeCode(
    fhirCode: '112078',
  );

  /// value112079
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112079 = MediaTypeCode(
    fhirCode: '112079',
  );

  /// value112080
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112080 = MediaTypeCode(
    fhirCode: '112080',
  );

  /// value112081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112081 = MediaTypeCode(
    fhirCode: '112081',
  );

  /// value112082
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112082 = MediaTypeCode(
    fhirCode: '112082',
  );

  /// value112083
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112083 = MediaTypeCode(
    fhirCode: '112083',
  );

  /// value112084
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112084 = MediaTypeCode(
    fhirCode: '112084',
  );

  /// value112085
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112085 = MediaTypeCode(
    fhirCode: '112085',
  );

  /// value112086
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112086 = MediaTypeCode(
    fhirCode: '112086',
  );

  /// value112087
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112087 = MediaTypeCode(
    fhirCode: '112087',
  );

  /// value112088
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112088 = MediaTypeCode(
    fhirCode: '112088',
  );

  /// value112089
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112089 = MediaTypeCode(
    fhirCode: '112089',
  );

  /// value112090
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112090 = MediaTypeCode(
    fhirCode: '112090',
  );

  /// value112091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112091 = MediaTypeCode(
    fhirCode: '112091',
  );

  /// value112092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112092 = MediaTypeCode(
    fhirCode: '112092',
  );

  /// value112093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112093 = MediaTypeCode(
    fhirCode: '112093',
  );

  /// value112094
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112094 = MediaTypeCode(
    fhirCode: '112094',
  );

  /// value112095
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112095 = MediaTypeCode(
    fhirCode: '112095',
  );

  /// value112096
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112096 = MediaTypeCode(
    fhirCode: '112096',
  );

  /// value112097
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112097 = MediaTypeCode(
    fhirCode: '112097',
  );

  /// value112098
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112098 = MediaTypeCode(
    fhirCode: '112098',
  );

  /// value112099
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112099 = MediaTypeCode(
    fhirCode: '112099',
  );

  /// value112100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112100 = MediaTypeCode(
    fhirCode: '112100',
  );

  /// value112101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112101 = MediaTypeCode(
    fhirCode: '112101',
  );

  /// value112102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112102 = MediaTypeCode(
    fhirCode: '112102',
  );

  /// value112103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112103 = MediaTypeCode(
    fhirCode: '112103',
  );

  /// value112104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112104 = MediaTypeCode(
    fhirCode: '112104',
  );

  /// value112105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112105 = MediaTypeCode(
    fhirCode: '112105',
  );

  /// value112106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112106 = MediaTypeCode(
    fhirCode: '112106',
  );

  /// value112107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112107 = MediaTypeCode(
    fhirCode: '112107',
  );

  /// value112108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112108 = MediaTypeCode(
    fhirCode: '112108',
  );

  /// value112109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112109 = MediaTypeCode(
    fhirCode: '112109',
  );

  /// value112110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112110 = MediaTypeCode(
    fhirCode: '112110',
  );

  /// value112111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112111 = MediaTypeCode(
    fhirCode: '112111',
  );

  /// value112112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112112 = MediaTypeCode(
    fhirCode: '112112',
  );

  /// value112113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112113 = MediaTypeCode(
    fhirCode: '112113',
  );

  /// value112114
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112114 = MediaTypeCode(
    fhirCode: '112114',
  );

  /// value112115
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112115 = MediaTypeCode(
    fhirCode: '112115',
  );

  /// value112116
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112116 = MediaTypeCode(
    fhirCode: '112116',
  );

  /// value112117
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112117 = MediaTypeCode(
    fhirCode: '112117',
  );

  /// value112118
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112118 = MediaTypeCode(
    fhirCode: '112118',
  );

  /// value112119
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112119 = MediaTypeCode(
    fhirCode: '112119',
  );

  /// value112120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112120 = MediaTypeCode(
    fhirCode: '112120',
  );

  /// value112121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112121 = MediaTypeCode(
    fhirCode: '112121',
  );

  /// value112122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112122 = MediaTypeCode(
    fhirCode: '112122',
  );

  /// value112123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112123 = MediaTypeCode(
    fhirCode: '112123',
  );

  /// value112124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112124 = MediaTypeCode(
    fhirCode: '112124',
  );

  /// value112125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112125 = MediaTypeCode(
    fhirCode: '112125',
  );

  /// value112126
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112126 = MediaTypeCode(
    fhirCode: '112126',
  );

  /// value112127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112127 = MediaTypeCode(
    fhirCode: '112127',
  );

  /// value112128
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112128 = MediaTypeCode(
    fhirCode: '112128',
  );

  /// value112129
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112129 = MediaTypeCode(
    fhirCode: '112129',
  );

  /// value112130
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112130 = MediaTypeCode(
    fhirCode: '112130',
  );

  /// value112131
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112131 = MediaTypeCode(
    fhirCode: '112131',
  );

  /// value112132
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112132 = MediaTypeCode(
    fhirCode: '112132',
  );

  /// value112133
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112133 = MediaTypeCode(
    fhirCode: '112133',
  );

  /// value112134
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112134 = MediaTypeCode(
    fhirCode: '112134',
  );

  /// value112135
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112135 = MediaTypeCode(
    fhirCode: '112135',
  );

  /// value112136
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112136 = MediaTypeCode(
    fhirCode: '112136',
  );

  /// value112137
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112137 = MediaTypeCode(
    fhirCode: '112137',
  );

  /// value112138
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112138 = MediaTypeCode(
    fhirCode: '112138',
  );

  /// value112139
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112139 = MediaTypeCode(
    fhirCode: '112139',
  );

  /// value112140
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112140 = MediaTypeCode(
    fhirCode: '112140',
  );

  /// value112141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112141 = MediaTypeCode(
    fhirCode: '112141',
  );

  /// value112142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112142 = MediaTypeCode(
    fhirCode: '112142',
  );

  /// value112143
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112143 = MediaTypeCode(
    fhirCode: '112143',
  );

  /// value112144
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112144 = MediaTypeCode(
    fhirCode: '112144',
  );

  /// value112145
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112145 = MediaTypeCode(
    fhirCode: '112145',
  );

  /// value112146
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112146 = MediaTypeCode(
    fhirCode: '112146',
  );

  /// value112147
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112147 = MediaTypeCode(
    fhirCode: '112147',
  );

  /// value112148
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112148 = MediaTypeCode(
    fhirCode: '112148',
  );

  /// value112149
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112149 = MediaTypeCode(
    fhirCode: '112149',
  );

  /// value112150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112150 = MediaTypeCode(
    fhirCode: '112150',
  );

  /// value112151
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112151 = MediaTypeCode(
    fhirCode: '112151',
  );

  /// value112152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112152 = MediaTypeCode(
    fhirCode: '112152',
  );

  /// value112153
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112153 = MediaTypeCode(
    fhirCode: '112153',
  );

  /// value112154
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112154 = MediaTypeCode(
    fhirCode: '112154',
  );

  /// value112155
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112155 = MediaTypeCode(
    fhirCode: '112155',
  );

  /// value112156
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112156 = MediaTypeCode(
    fhirCode: '112156',
  );

  /// value112157
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112157 = MediaTypeCode(
    fhirCode: '112157',
  );

  /// value112158
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112158 = MediaTypeCode(
    fhirCode: '112158',
  );

  /// value112159
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112159 = MediaTypeCode(
    fhirCode: '112159',
  );

  /// value112160
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112160 = MediaTypeCode(
    fhirCode: '112160',
  );

  /// value112161
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112161 = MediaTypeCode(
    fhirCode: '112161',
  );

  /// value112162
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112162 = MediaTypeCode(
    fhirCode: '112162',
  );

  /// value112163
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112163 = MediaTypeCode(
    fhirCode: '112163',
  );

  /// value112164
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112164 = MediaTypeCode(
    fhirCode: '112164',
  );

  /// value112165
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112165 = MediaTypeCode(
    fhirCode: '112165',
  );

  /// value112166
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112166 = MediaTypeCode(
    fhirCode: '112166',
  );

  /// value112167
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112167 = MediaTypeCode(
    fhirCode: '112167',
  );

  /// value112168
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112168 = MediaTypeCode(
    fhirCode: '112168',
  );

  /// value112169
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112169 = MediaTypeCode(
    fhirCode: '112169',
  );

  /// value112170
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112170 = MediaTypeCode(
    fhirCode: '112170',
  );

  /// value112171
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112171 = MediaTypeCode(
    fhirCode: '112171',
  );

  /// value112172
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112172 = MediaTypeCode(
    fhirCode: '112172',
  );

  /// value112173
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112173 = MediaTypeCode(
    fhirCode: '112173',
  );

  /// value112174
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112174 = MediaTypeCode(
    fhirCode: '112174',
  );

  /// value112175
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112175 = MediaTypeCode(
    fhirCode: '112175',
  );

  /// value112176
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112176 = MediaTypeCode(
    fhirCode: '112176',
  );

  /// value112177
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112177 = MediaTypeCode(
    fhirCode: '112177',
  );

  /// value112178
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112178 = MediaTypeCode(
    fhirCode: '112178',
  );

  /// value112179
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112179 = MediaTypeCode(
    fhirCode: '112179',
  );

  /// value112180
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112180 = MediaTypeCode(
    fhirCode: '112180',
  );

  /// value112181
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112181 = MediaTypeCode(
    fhirCode: '112181',
  );

  /// value112182
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112182 = MediaTypeCode(
    fhirCode: '112182',
  );

  /// value112183
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112183 = MediaTypeCode(
    fhirCode: '112183',
  );

  /// value112184
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112184 = MediaTypeCode(
    fhirCode: '112184',
  );

  /// value112185
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112185 = MediaTypeCode(
    fhirCode: '112185',
  );

  /// value112186
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112186 = MediaTypeCode(
    fhirCode: '112186',
  );

  /// value112187
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112187 = MediaTypeCode(
    fhirCode: '112187',
  );

  /// value112188
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112188 = MediaTypeCode(
    fhirCode: '112188',
  );

  /// value112189
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112189 = MediaTypeCode(
    fhirCode: '112189',
  );

  /// value112191
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112191 = MediaTypeCode(
    fhirCode: '112191',
  );

  /// value112192
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112192 = MediaTypeCode(
    fhirCode: '112192',
  );

  /// value112193
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112193 = MediaTypeCode(
    fhirCode: '112193',
  );

  /// value112194
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112194 = MediaTypeCode(
    fhirCode: '112194',
  );

  /// value112195
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112195 = MediaTypeCode(
    fhirCode: '112195',
  );

  /// value112196
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112196 = MediaTypeCode(
    fhirCode: '112196',
  );

  /// value112197
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112197 = MediaTypeCode(
    fhirCode: '112197',
  );

  /// value112198
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112198 = MediaTypeCode(
    fhirCode: '112198',
  );

  /// value112199
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112199 = MediaTypeCode(
    fhirCode: '112199',
  );

  /// value112200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112200 = MediaTypeCode(
    fhirCode: '112200',
  );

  /// value112201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112201 = MediaTypeCode(
    fhirCode: '112201',
  );

  /// value112220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112220 = MediaTypeCode(
    fhirCode: '112220',
  );

  /// value112222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112222 = MediaTypeCode(
    fhirCode: '112222',
  );

  /// value112224
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112224 = MediaTypeCode(
    fhirCode: '112224',
  );

  /// value112225
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112225 = MediaTypeCode(
    fhirCode: '112225',
  );

  /// value112226
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112226 = MediaTypeCode(
    fhirCode: '112226',
  );

  /// value112227
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112227 = MediaTypeCode(
    fhirCode: '112227',
  );

  /// value112228
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112228 = MediaTypeCode(
    fhirCode: '112228',
  );

  /// value112229
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112229 = MediaTypeCode(
    fhirCode: '112229',
  );

  /// value112232
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112232 = MediaTypeCode(
    fhirCode: '112232',
  );

  /// value112233
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112233 = MediaTypeCode(
    fhirCode: '112233',
  );

  /// value112238
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112238 = MediaTypeCode(
    fhirCode: '112238',
  );

  /// value112240
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112240 = MediaTypeCode(
    fhirCode: '112240',
  );

  /// value112241
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112241 = MediaTypeCode(
    fhirCode: '112241',
  );

  /// value112242
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112242 = MediaTypeCode(
    fhirCode: '112242',
  );

  /// value112243
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112243 = MediaTypeCode(
    fhirCode: '112243',
  );

  /// value112244
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112244 = MediaTypeCode(
    fhirCode: '112244',
  );

  /// value112248
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112248 = MediaTypeCode(
    fhirCode: '112248',
  );

  /// value112249
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112249 = MediaTypeCode(
    fhirCode: '112249',
  );

  /// value112300
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112300 = MediaTypeCode(
    fhirCode: '112300',
  );

  /// value112301
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112301 = MediaTypeCode(
    fhirCode: '112301',
  );

  /// value112302
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112302 = MediaTypeCode(
    fhirCode: '112302',
  );

  /// value112303
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112303 = MediaTypeCode(
    fhirCode: '112303',
  );

  /// value112304
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112304 = MediaTypeCode(
    fhirCode: '112304',
  );

  /// value112305
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112305 = MediaTypeCode(
    fhirCode: '112305',
  );

  /// value112306
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112306 = MediaTypeCode(
    fhirCode: '112306',
  );

  /// value112307
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112307 = MediaTypeCode(
    fhirCode: '112307',
  );

  /// value112308
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112308 = MediaTypeCode(
    fhirCode: '112308',
  );

  /// value112309
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112309 = MediaTypeCode(
    fhirCode: '112309',
  );

  /// value112310
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112310 = MediaTypeCode(
    fhirCode: '112310',
  );

  /// value112311
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112311 = MediaTypeCode(
    fhirCode: '112311',
  );

  /// value112312
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112312 = MediaTypeCode(
    fhirCode: '112312',
  );

  /// value112313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112313 = MediaTypeCode(
    fhirCode: '112313',
  );

  /// value112314
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112314 = MediaTypeCode(
    fhirCode: '112314',
  );

  /// value112315
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112315 = MediaTypeCode(
    fhirCode: '112315',
  );

  /// value112316
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112316 = MediaTypeCode(
    fhirCode: '112316',
  );

  /// value112317
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112317 = MediaTypeCode(
    fhirCode: '112317',
  );

  /// value112318
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112318 = MediaTypeCode(
    fhirCode: '112318',
  );

  /// value112319
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112319 = MediaTypeCode(
    fhirCode: '112319',
  );

  /// value112320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112320 = MediaTypeCode(
    fhirCode: '112320',
  );

  /// value112321
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112321 = MediaTypeCode(
    fhirCode: '112321',
  );

  /// value112325
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112325 = MediaTypeCode(
    fhirCode: '112325',
  );

  /// value112340
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112340 = MediaTypeCode(
    fhirCode: '112340',
  );

  /// value112341
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112341 = MediaTypeCode(
    fhirCode: '112341',
  );

  /// value112342
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112342 = MediaTypeCode(
    fhirCode: '112342',
  );

  /// value112343
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112343 = MediaTypeCode(
    fhirCode: '112343',
  );

  /// value112344
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112344 = MediaTypeCode(
    fhirCode: '112344',
  );

  /// value112345
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112345 = MediaTypeCode(
    fhirCode: '112345',
  );

  /// value112346
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112346 = MediaTypeCode(
    fhirCode: '112346',
  );

  /// value112347
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112347 = MediaTypeCode(
    fhirCode: '112347',
  );

  /// value112348
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112348 = MediaTypeCode(
    fhirCode: '112348',
  );

  /// value112350
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112350 = MediaTypeCode(
    fhirCode: '112350',
  );

  /// value112351
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112351 = MediaTypeCode(
    fhirCode: '112351',
  );

  /// value112352
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112352 = MediaTypeCode(
    fhirCode: '112352',
  );

  /// value112353
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112353 = MediaTypeCode(
    fhirCode: '112353',
  );

  /// value112354
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112354 = MediaTypeCode(
    fhirCode: '112354',
  );

  /// value112355
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112355 = MediaTypeCode(
    fhirCode: '112355',
  );

  /// value112356
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112356 = MediaTypeCode(
    fhirCode: '112356',
  );

  /// value112357
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112357 = MediaTypeCode(
    fhirCode: '112357',
  );

  /// value112358
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112358 = MediaTypeCode(
    fhirCode: '112358',
  );

  /// value112359
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112359 = MediaTypeCode(
    fhirCode: '112359',
  );

  /// value112360
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112360 = MediaTypeCode(
    fhirCode: '112360',
  );

  /// value112361
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112361 = MediaTypeCode(
    fhirCode: '112361',
  );

  /// value112362
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112362 = MediaTypeCode(
    fhirCode: '112362',
  );

  /// value112363
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112363 = MediaTypeCode(
    fhirCode: '112363',
  );

  /// value112364
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112364 = MediaTypeCode(
    fhirCode: '112364',
  );

  /// value112365
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112365 = MediaTypeCode(
    fhirCode: '112365',
  );

  /// value112366
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112366 = MediaTypeCode(
    fhirCode: '112366',
  );

  /// value112367
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112367 = MediaTypeCode(
    fhirCode: '112367',
  );

  /// value112368
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112368 = MediaTypeCode(
    fhirCode: '112368',
  );

  /// value112369
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112369 = MediaTypeCode(
    fhirCode: '112369',
  );

  /// value112370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112370 = MediaTypeCode(
    fhirCode: '112370',
  );

  /// value112371
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112371 = MediaTypeCode(
    fhirCode: '112371',
  );

  /// value112372
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112372 = MediaTypeCode(
    fhirCode: '112372',
  );

  /// value112373
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112373 = MediaTypeCode(
    fhirCode: '112373',
  );

  /// value112374
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112374 = MediaTypeCode(
    fhirCode: '112374',
  );

  /// value112375
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112375 = MediaTypeCode(
    fhirCode: '112375',
  );

  /// value112376
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112376 = MediaTypeCode(
    fhirCode: '112376',
  );

  /// value112377
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112377 = MediaTypeCode(
    fhirCode: '112377',
  );

  /// value112378
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112378 = MediaTypeCode(
    fhirCode: '112378',
  );

  /// value112379
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112379 = MediaTypeCode(
    fhirCode: '112379',
  );

  /// value112380
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112380 = MediaTypeCode(
    fhirCode: '112380',
  );

  /// value112381
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112381 = MediaTypeCode(
    fhirCode: '112381',
  );

  /// value112700
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112700 = MediaTypeCode(
    fhirCode: '112700',
  );

  /// value112701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112701 = MediaTypeCode(
    fhirCode: '112701',
  );

  /// value112702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112702 = MediaTypeCode(
    fhirCode: '112702',
  );

  /// value112703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112703 = MediaTypeCode(
    fhirCode: '112703',
  );

  /// value112704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112704 = MediaTypeCode(
    fhirCode: '112704',
  );

  /// value112705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112705 = MediaTypeCode(
    fhirCode: '112705',
  );

  /// value112706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112706 = MediaTypeCode(
    fhirCode: '112706',
  );

  /// value112707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112707 = MediaTypeCode(
    fhirCode: '112707',
  );

  /// value112708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112708 = MediaTypeCode(
    fhirCode: '112708',
  );

  /// value112709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112709 = MediaTypeCode(
    fhirCode: '112709',
  );

  /// value112710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112710 = MediaTypeCode(
    fhirCode: '112710',
  );

  /// value112711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112711 = MediaTypeCode(
    fhirCode: '112711',
  );

  /// value112712
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112712 = MediaTypeCode(
    fhirCode: '112712',
  );

  /// value112713
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112713 = MediaTypeCode(
    fhirCode: '112713',
  );

  /// value112714
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112714 = MediaTypeCode(
    fhirCode: '112714',
  );

  /// value112715
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112715 = MediaTypeCode(
    fhirCode: '112715',
  );

  /// value112716
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112716 = MediaTypeCode(
    fhirCode: '112716',
  );

  /// value112717
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112717 = MediaTypeCode(
    fhirCode: '112717',
  );

  /// value112718
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112718 = MediaTypeCode(
    fhirCode: '112718',
  );

  /// value112719
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112719 = MediaTypeCode(
    fhirCode: '112719',
  );

  /// value112720
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112720 = MediaTypeCode(
    fhirCode: '112720',
  );

  /// value112721
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value112721 = MediaTypeCode(
    fhirCode: '112721',
  );

  /// value113000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113000 = MediaTypeCode(
    fhirCode: '113000',
  );

  /// value113001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113001 = MediaTypeCode(
    fhirCode: '113001',
  );

  /// value113002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113002 = MediaTypeCode(
    fhirCode: '113002',
  );

  /// value113003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113003 = MediaTypeCode(
    fhirCode: '113003',
  );

  /// value113004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113004 = MediaTypeCode(
    fhirCode: '113004',
  );

  /// value113005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113005 = MediaTypeCode(
    fhirCode: '113005',
  );

  /// value113006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113006 = MediaTypeCode(
    fhirCode: '113006',
  );

  /// value113007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113007 = MediaTypeCode(
    fhirCode: '113007',
  );

  /// value113008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113008 = MediaTypeCode(
    fhirCode: '113008',
  );

  /// value113009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113009 = MediaTypeCode(
    fhirCode: '113009',
  );

  /// value113010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113010 = MediaTypeCode(
    fhirCode: '113010',
  );

  /// value113011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113011 = MediaTypeCode(
    fhirCode: '113011',
  );

  /// value113012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113012 = MediaTypeCode(
    fhirCode: '113012',
  );

  /// value113013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113013 = MediaTypeCode(
    fhirCode: '113013',
  );

  /// value113014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113014 = MediaTypeCode(
    fhirCode: '113014',
  );

  /// value113015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113015 = MediaTypeCode(
    fhirCode: '113015',
  );

  /// value113016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113016 = MediaTypeCode(
    fhirCode: '113016',
  );

  /// value113017
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113017 = MediaTypeCode(
    fhirCode: '113017',
  );

  /// value113018
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113018 = MediaTypeCode(
    fhirCode: '113018',
  );

  /// value113020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113020 = MediaTypeCode(
    fhirCode: '113020',
  );

  /// value113021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113021 = MediaTypeCode(
    fhirCode: '113021',
  );

  /// value113026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113026 = MediaTypeCode(
    fhirCode: '113026',
  );

  /// value113030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113030 = MediaTypeCode(
    fhirCode: '113030',
  );

  /// value113031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113031 = MediaTypeCode(
    fhirCode: '113031',
  );

  /// value113032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113032 = MediaTypeCode(
    fhirCode: '113032',
  );

  /// value113033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113033 = MediaTypeCode(
    fhirCode: '113033',
  );

  /// value113034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113034 = MediaTypeCode(
    fhirCode: '113034',
  );

  /// value113035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113035 = MediaTypeCode(
    fhirCode: '113035',
  );

  /// value113036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113036 = MediaTypeCode(
    fhirCode: '113036',
  );

  /// value113037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113037 = MediaTypeCode(
    fhirCode: '113037',
  );

  /// value113038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113038 = MediaTypeCode(
    fhirCode: '113038',
  );

  /// value113039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113039 = MediaTypeCode(
    fhirCode: '113039',
  );

  /// value113040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113040 = MediaTypeCode(
    fhirCode: '113040',
  );

  /// value113041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113041 = MediaTypeCode(
    fhirCode: '113041',
  );

  /// value113042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113042 = MediaTypeCode(
    fhirCode: '113042',
  );

  /// value113043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113043 = MediaTypeCode(
    fhirCode: '113043',
  );

  /// value113044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113044 = MediaTypeCode(
    fhirCode: '113044',
  );

  /// value113045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113045 = MediaTypeCode(
    fhirCode: '113045',
  );

  /// value113046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113046 = MediaTypeCode(
    fhirCode: '113046',
  );

  /// value113047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113047 = MediaTypeCode(
    fhirCode: '113047',
  );

  /// value113048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113048 = MediaTypeCode(
    fhirCode: '113048',
  );

  /// value113049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113049 = MediaTypeCode(
    fhirCode: '113049',
  );

  /// value113050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113050 = MediaTypeCode(
    fhirCode: '113050',
  );

  /// value113051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113051 = MediaTypeCode(
    fhirCode: '113051',
  );

  /// value113052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113052 = MediaTypeCode(
    fhirCode: '113052',
  );

  /// value113053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113053 = MediaTypeCode(
    fhirCode: '113053',
  );

  /// value113054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113054 = MediaTypeCode(
    fhirCode: '113054',
  );

  /// value113055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113055 = MediaTypeCode(
    fhirCode: '113055',
  );

  /// value113056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113056 = MediaTypeCode(
    fhirCode: '113056',
  );

  /// value113057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113057 = MediaTypeCode(
    fhirCode: '113057',
  );

  /// value113058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113058 = MediaTypeCode(
    fhirCode: '113058',
  );

  /// value113059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113059 = MediaTypeCode(
    fhirCode: '113059',
  );

  /// value113060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113060 = MediaTypeCode(
    fhirCode: '113060',
  );

  /// value113061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113061 = MediaTypeCode(
    fhirCode: '113061',
  );

  /// value113062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113062 = MediaTypeCode(
    fhirCode: '113062',
  );

  /// value113063
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113063 = MediaTypeCode(
    fhirCode: '113063',
  );

  /// value113064
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113064 = MediaTypeCode(
    fhirCode: '113064',
  );

  /// value113065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113065 = MediaTypeCode(
    fhirCode: '113065',
  );

  /// value113066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113066 = MediaTypeCode(
    fhirCode: '113066',
  );

  /// value113067
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113067 = MediaTypeCode(
    fhirCode: '113067',
  );

  /// value113068
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113068 = MediaTypeCode(
    fhirCode: '113068',
  );

  /// value113069
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113069 = MediaTypeCode(
    fhirCode: '113069',
  );

  /// value113070
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113070 = MediaTypeCode(
    fhirCode: '113070',
  );

  /// value113071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113071 = MediaTypeCode(
    fhirCode: '113071',
  );

  /// value113072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113072 = MediaTypeCode(
    fhirCode: '113072',
  );

  /// value113073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113073 = MediaTypeCode(
    fhirCode: '113073',
  );

  /// value113074
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113074 = MediaTypeCode(
    fhirCode: '113074',
  );

  /// value113075
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113075 = MediaTypeCode(
    fhirCode: '113075',
  );

  /// value113076
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113076 = MediaTypeCode(
    fhirCode: '113076',
  );

  /// value113077
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113077 = MediaTypeCode(
    fhirCode: '113077',
  );

  /// value113078
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113078 = MediaTypeCode(
    fhirCode: '113078',
  );

  /// value113079
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113079 = MediaTypeCode(
    fhirCode: '113079',
  );

  /// value113080
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113080 = MediaTypeCode(
    fhirCode: '113080',
  );

  /// value113081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113081 = MediaTypeCode(
    fhirCode: '113081',
  );

  /// value113082
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113082 = MediaTypeCode(
    fhirCode: '113082',
  );

  /// value113083
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113083 = MediaTypeCode(
    fhirCode: '113083',
  );

  /// value113085
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113085 = MediaTypeCode(
    fhirCode: '113085',
  );

  /// value113086
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113086 = MediaTypeCode(
    fhirCode: '113086',
  );

  /// value113087
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113087 = MediaTypeCode(
    fhirCode: '113087',
  );

  /// value113088
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113088 = MediaTypeCode(
    fhirCode: '113088',
  );

  /// value113089
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113089 = MediaTypeCode(
    fhirCode: '113089',
  );

  /// value113090
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113090 = MediaTypeCode(
    fhirCode: '113090',
  );

  /// value113091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113091 = MediaTypeCode(
    fhirCode: '113091',
  );

  /// value113092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113092 = MediaTypeCode(
    fhirCode: '113092',
  );

  /// value113093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113093 = MediaTypeCode(
    fhirCode: '113093',
  );

  /// value113094
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113094 = MediaTypeCode(
    fhirCode: '113094',
  );

  /// value113095
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113095 = MediaTypeCode(
    fhirCode: '113095',
  );

  /// value113096
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113096 = MediaTypeCode(
    fhirCode: '113096',
  );

  /// value113097
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113097 = MediaTypeCode(
    fhirCode: '113097',
  );

  /// value113100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113100 = MediaTypeCode(
    fhirCode: '113100',
  );

  /// value113101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113101 = MediaTypeCode(
    fhirCode: '113101',
  );

  /// value113102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113102 = MediaTypeCode(
    fhirCode: '113102',
  );

  /// value113103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113103 = MediaTypeCode(
    fhirCode: '113103',
  );

  /// value113104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113104 = MediaTypeCode(
    fhirCode: '113104',
  );

  /// value113105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113105 = MediaTypeCode(
    fhirCode: '113105',
  );

  /// value113106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113106 = MediaTypeCode(
    fhirCode: '113106',
  );

  /// value113107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113107 = MediaTypeCode(
    fhirCode: '113107',
  );

  /// value113108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113108 = MediaTypeCode(
    fhirCode: '113108',
  );

  /// value113109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113109 = MediaTypeCode(
    fhirCode: '113109',
  );

  /// value113110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113110 = MediaTypeCode(
    fhirCode: '113110',
  );

  /// value113111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113111 = MediaTypeCode(
    fhirCode: '113111',
  );

  /// value113500
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113500 = MediaTypeCode(
    fhirCode: '113500',
  );

  /// value113502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113502 = MediaTypeCode(
    fhirCode: '113502',
  );

  /// value113503
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113503 = MediaTypeCode(
    fhirCode: '113503',
  );

  /// value113505
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113505 = MediaTypeCode(
    fhirCode: '113505',
  );

  /// value113506
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113506 = MediaTypeCode(
    fhirCode: '113506',
  );

  /// value113507
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113507 = MediaTypeCode(
    fhirCode: '113507',
  );

  /// value113508
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113508 = MediaTypeCode(
    fhirCode: '113508',
  );

  /// value113509
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113509 = MediaTypeCode(
    fhirCode: '113509',
  );

  /// value113510
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113510 = MediaTypeCode(
    fhirCode: '113510',
  );

  /// value113511
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113511 = MediaTypeCode(
    fhirCode: '113511',
  );

  /// value113512
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113512 = MediaTypeCode(
    fhirCode: '113512',
  );

  /// value113513
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113513 = MediaTypeCode(
    fhirCode: '113513',
  );

  /// value113514
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113514 = MediaTypeCode(
    fhirCode: '113514',
  );

  /// value113516
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113516 = MediaTypeCode(
    fhirCode: '113516',
  );

  /// value113517
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113517 = MediaTypeCode(
    fhirCode: '113517',
  );

  /// value113518
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113518 = MediaTypeCode(
    fhirCode: '113518',
  );

  /// value113520
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113520 = MediaTypeCode(
    fhirCode: '113520',
  );

  /// value113521
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113521 = MediaTypeCode(
    fhirCode: '113521',
  );

  /// value113522
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113522 = MediaTypeCode(
    fhirCode: '113522',
  );

  /// value113523
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113523 = MediaTypeCode(
    fhirCode: '113523',
  );

  /// value113526
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113526 = MediaTypeCode(
    fhirCode: '113526',
  );

  /// value113527
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113527 = MediaTypeCode(
    fhirCode: '113527',
  );

  /// value113528
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113528 = MediaTypeCode(
    fhirCode: '113528',
  );

  /// value113529
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113529 = MediaTypeCode(
    fhirCode: '113529',
  );

  /// value113530
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113530 = MediaTypeCode(
    fhirCode: '113530',
  );

  /// value113540
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113540 = MediaTypeCode(
    fhirCode: '113540',
  );

  /// value113541
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113541 = MediaTypeCode(
    fhirCode: '113541',
  );

  /// value113542
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113542 = MediaTypeCode(
    fhirCode: '113542',
  );

  /// value113543
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113543 = MediaTypeCode(
    fhirCode: '113543',
  );

  /// value113550
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113550 = MediaTypeCode(
    fhirCode: '113550',
  );

  /// value113551
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113551 = MediaTypeCode(
    fhirCode: '113551',
  );

  /// value113552
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113552 = MediaTypeCode(
    fhirCode: '113552',
  );

  /// value113560
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113560 = MediaTypeCode(
    fhirCode: '113560',
  );

  /// value113561
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113561 = MediaTypeCode(
    fhirCode: '113561',
  );

  /// value113562
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113562 = MediaTypeCode(
    fhirCode: '113562',
  );

  /// value113563
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113563 = MediaTypeCode(
    fhirCode: '113563',
  );

  /// value113568
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113568 = MediaTypeCode(
    fhirCode: '113568',
  );

  /// value113570
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113570 = MediaTypeCode(
    fhirCode: '113570',
  );

  /// value113571
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113571 = MediaTypeCode(
    fhirCode: '113571',
  );

  /// value113572
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113572 = MediaTypeCode(
    fhirCode: '113572',
  );

  /// value113573
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113573 = MediaTypeCode(
    fhirCode: '113573',
  );

  /// value113574
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113574 = MediaTypeCode(
    fhirCode: '113574',
  );

  /// value113575
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113575 = MediaTypeCode(
    fhirCode: '113575',
  );

  /// value113576
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113576 = MediaTypeCode(
    fhirCode: '113576',
  );

  /// value113577
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113577 = MediaTypeCode(
    fhirCode: '113577',
  );

  /// value113601
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113601 = MediaTypeCode(
    fhirCode: '113601',
  );

  /// value113602
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113602 = MediaTypeCode(
    fhirCode: '113602',
  );

  /// value113603
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113603 = MediaTypeCode(
    fhirCode: '113603',
  );

  /// value113605
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113605 = MediaTypeCode(
    fhirCode: '113605',
  );

  /// value113606
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113606 = MediaTypeCode(
    fhirCode: '113606',
  );

  /// value113607
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113607 = MediaTypeCode(
    fhirCode: '113607',
  );

  /// value113608
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113608 = MediaTypeCode(
    fhirCode: '113608',
  );

  /// value113609
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113609 = MediaTypeCode(
    fhirCode: '113609',
  );

  /// value113611
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113611 = MediaTypeCode(
    fhirCode: '113611',
  );

  /// value113612
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113612 = MediaTypeCode(
    fhirCode: '113612',
  );

  /// value113613
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113613 = MediaTypeCode(
    fhirCode: '113613',
  );

  /// value113620
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113620 = MediaTypeCode(
    fhirCode: '113620',
  );

  /// value113621
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113621 = MediaTypeCode(
    fhirCode: '113621',
  );

  /// value113622
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113622 = MediaTypeCode(
    fhirCode: '113622',
  );

  /// value113630
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113630 = MediaTypeCode(
    fhirCode: '113630',
  );

  /// value113631
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113631 = MediaTypeCode(
    fhirCode: '113631',
  );

  /// value113650
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113650 = MediaTypeCode(
    fhirCode: '113650',
  );

  /// value113651
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113651 = MediaTypeCode(
    fhirCode: '113651',
  );

  /// value113652
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113652 = MediaTypeCode(
    fhirCode: '113652',
  );

  /// value113653
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113653 = MediaTypeCode(
    fhirCode: '113653',
  );

  /// value113661
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113661 = MediaTypeCode(
    fhirCode: '113661',
  );

  /// value113662
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113662 = MediaTypeCode(
    fhirCode: '113662',
  );

  /// value113663
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113663 = MediaTypeCode(
    fhirCode: '113663',
  );

  /// value113664
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113664 = MediaTypeCode(
    fhirCode: '113664',
  );

  /// value113665
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113665 = MediaTypeCode(
    fhirCode: '113665',
  );

  /// value113666
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113666 = MediaTypeCode(
    fhirCode: '113666',
  );

  /// value113669
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113669 = MediaTypeCode(
    fhirCode: '113669',
  );

  /// value113670
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113670 = MediaTypeCode(
    fhirCode: '113670',
  );

  /// value113671
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113671 = MediaTypeCode(
    fhirCode: '113671',
  );

  /// value113680
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113680 = MediaTypeCode(
    fhirCode: '113680',
  );

  /// value113681
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113681 = MediaTypeCode(
    fhirCode: '113681',
  );

  /// value113682
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113682 = MediaTypeCode(
    fhirCode: '113682',
  );

  /// value113683
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113683 = MediaTypeCode(
    fhirCode: '113683',
  );

  /// value113684
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113684 = MediaTypeCode(
    fhirCode: '113684',
  );

  /// value113685
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113685 = MediaTypeCode(
    fhirCode: '113685',
  );

  /// value113686
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113686 = MediaTypeCode(
    fhirCode: '113686',
  );

  /// value113687
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113687 = MediaTypeCode(
    fhirCode: '113687',
  );

  /// value113688
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113688 = MediaTypeCode(
    fhirCode: '113688',
  );

  /// value113689
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113689 = MediaTypeCode(
    fhirCode: '113689',
  );

  /// value113690
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113690 = MediaTypeCode(
    fhirCode: '113690',
  );

  /// value113691
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113691 = MediaTypeCode(
    fhirCode: '113691',
  );

  /// value113692
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113692 = MediaTypeCode(
    fhirCode: '113692',
  );

  /// value113701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113701 = MediaTypeCode(
    fhirCode: '113701',
  );

  /// value113702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113702 = MediaTypeCode(
    fhirCode: '113702',
  );

  /// value113704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113704 = MediaTypeCode(
    fhirCode: '113704',
  );

  /// value113705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113705 = MediaTypeCode(
    fhirCode: '113705',
  );

  /// value113706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113706 = MediaTypeCode(
    fhirCode: '113706',
  );

  /// value113710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113710 = MediaTypeCode(
    fhirCode: '113710',
  );

  /// value113711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113711 = MediaTypeCode(
    fhirCode: '113711',
  );

  /// value113720
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113720 = MediaTypeCode(
    fhirCode: '113720',
  );

  /// value113721
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113721 = MediaTypeCode(
    fhirCode: '113721',
  );

  /// value113722
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113722 = MediaTypeCode(
    fhirCode: '113722',
  );

  /// value113723
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113723 = MediaTypeCode(
    fhirCode: '113723',
  );

  /// value113724
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113724 = MediaTypeCode(
    fhirCode: '113724',
  );

  /// value113725
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113725 = MediaTypeCode(
    fhirCode: '113725',
  );

  /// value113726
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113726 = MediaTypeCode(
    fhirCode: '113726',
  );

  /// value113727
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113727 = MediaTypeCode(
    fhirCode: '113727',
  );

  /// value113728
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113728 = MediaTypeCode(
    fhirCode: '113728',
  );

  /// value113729
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113729 = MediaTypeCode(
    fhirCode: '113729',
  );

  /// value113730
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113730 = MediaTypeCode(
    fhirCode: '113730',
  );

  /// value113731
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113731 = MediaTypeCode(
    fhirCode: '113731',
  );

  /// value113732
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113732 = MediaTypeCode(
    fhirCode: '113732',
  );

  /// value113733
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113733 = MediaTypeCode(
    fhirCode: '113733',
  );

  /// value113734
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113734 = MediaTypeCode(
    fhirCode: '113734',
  );

  /// value113735
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113735 = MediaTypeCode(
    fhirCode: '113735',
  );

  /// value113736
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113736 = MediaTypeCode(
    fhirCode: '113736',
  );

  /// value113737
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113737 = MediaTypeCode(
    fhirCode: '113737',
  );

  /// value113738
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113738 = MediaTypeCode(
    fhirCode: '113738',
  );

  /// value113739
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113739 = MediaTypeCode(
    fhirCode: '113739',
  );

  /// value113740
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113740 = MediaTypeCode(
    fhirCode: '113740',
  );

  /// value113742
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113742 = MediaTypeCode(
    fhirCode: '113742',
  );

  /// value113743
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113743 = MediaTypeCode(
    fhirCode: '113743',
  );

  /// value113744
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113744 = MediaTypeCode(
    fhirCode: '113744',
  );

  /// value113745
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113745 = MediaTypeCode(
    fhirCode: '113745',
  );

  /// value113748
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113748 = MediaTypeCode(
    fhirCode: '113748',
  );

  /// value113750
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113750 = MediaTypeCode(
    fhirCode: '113750',
  );

  /// value113751
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113751 = MediaTypeCode(
    fhirCode: '113751',
  );

  /// value113752
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113752 = MediaTypeCode(
    fhirCode: '113752',
  );

  /// value113753
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113753 = MediaTypeCode(
    fhirCode: '113753',
  );

  /// value113754
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113754 = MediaTypeCode(
    fhirCode: '113754',
  );

  /// value113755
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113755 = MediaTypeCode(
    fhirCode: '113755',
  );

  /// value113756
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113756 = MediaTypeCode(
    fhirCode: '113756',
  );

  /// value113757
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113757 = MediaTypeCode(
    fhirCode: '113757',
  );

  /// value113758
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113758 = MediaTypeCode(
    fhirCode: '113758',
  );

  /// value113759
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113759 = MediaTypeCode(
    fhirCode: '113759',
  );

  /// value113760
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113760 = MediaTypeCode(
    fhirCode: '113760',
  );

  /// value113761
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113761 = MediaTypeCode(
    fhirCode: '113761',
  );

  /// value113763
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113763 = MediaTypeCode(
    fhirCode: '113763',
  );

  /// value113764
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113764 = MediaTypeCode(
    fhirCode: '113764',
  );

  /// value113766
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113766 = MediaTypeCode(
    fhirCode: '113766',
  );

  /// value113767
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113767 = MediaTypeCode(
    fhirCode: '113767',
  );

  /// value113768
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113768 = MediaTypeCode(
    fhirCode: '113768',
  );

  /// value113769
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113769 = MediaTypeCode(
    fhirCode: '113769',
  );

  /// value113770
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113770 = MediaTypeCode(
    fhirCode: '113770',
  );

  /// value113771
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113771 = MediaTypeCode(
    fhirCode: '113771',
  );

  /// value113772
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113772 = MediaTypeCode(
    fhirCode: '113772',
  );

  /// value113773
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113773 = MediaTypeCode(
    fhirCode: '113773',
  );

  /// value113780
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113780 = MediaTypeCode(
    fhirCode: '113780',
  );

  /// value113788
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113788 = MediaTypeCode(
    fhirCode: '113788',
  );

  /// value113789
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113789 = MediaTypeCode(
    fhirCode: '113789',
  );

  /// value113790
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113790 = MediaTypeCode(
    fhirCode: '113790',
  );

  /// value113791
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113791 = MediaTypeCode(
    fhirCode: '113791',
  );

  /// value113792
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113792 = MediaTypeCode(
    fhirCode: '113792',
  );

  /// value113793
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113793 = MediaTypeCode(
    fhirCode: '113793',
  );

  /// value113794
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113794 = MediaTypeCode(
    fhirCode: '113794',
  );

  /// value113795
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113795 = MediaTypeCode(
    fhirCode: '113795',
  );

  /// value113800
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113800 = MediaTypeCode(
    fhirCode: '113800',
  );

  /// value113801
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113801 = MediaTypeCode(
    fhirCode: '113801',
  );

  /// value113802
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113802 = MediaTypeCode(
    fhirCode: '113802',
  );

  /// value113803
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113803 = MediaTypeCode(
    fhirCode: '113803',
  );

  /// value113804
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113804 = MediaTypeCode(
    fhirCode: '113804',
  );

  /// value113805
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113805 = MediaTypeCode(
    fhirCode: '113805',
  );

  /// value113806
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113806 = MediaTypeCode(
    fhirCode: '113806',
  );

  /// value113807
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113807 = MediaTypeCode(
    fhirCode: '113807',
  );

  /// value113808
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113808 = MediaTypeCode(
    fhirCode: '113808',
  );

  /// value113809
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113809 = MediaTypeCode(
    fhirCode: '113809',
  );

  /// value113810
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113810 = MediaTypeCode(
    fhirCode: '113810',
  );

  /// value113811
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113811 = MediaTypeCode(
    fhirCode: '113811',
  );

  /// value113812
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113812 = MediaTypeCode(
    fhirCode: '113812',
  );

  /// value113813
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113813 = MediaTypeCode(
    fhirCode: '113813',
  );

  /// value113814
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113814 = MediaTypeCode(
    fhirCode: '113814',
  );

  /// value113815
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113815 = MediaTypeCode(
    fhirCode: '113815',
  );

  /// value113816
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113816 = MediaTypeCode(
    fhirCode: '113816',
  );

  /// value113817
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113817 = MediaTypeCode(
    fhirCode: '113817',
  );

  /// value113818
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113818 = MediaTypeCode(
    fhirCode: '113818',
  );

  /// value113819
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113819 = MediaTypeCode(
    fhirCode: '113819',
  );

  /// value113820
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113820 = MediaTypeCode(
    fhirCode: '113820',
  );

  /// value113821
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113821 = MediaTypeCode(
    fhirCode: '113821',
  );

  /// value113822
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113822 = MediaTypeCode(
    fhirCode: '113822',
  );

  /// value113823
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113823 = MediaTypeCode(
    fhirCode: '113823',
  );

  /// value113824
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113824 = MediaTypeCode(
    fhirCode: '113824',
  );

  /// value113825
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113825 = MediaTypeCode(
    fhirCode: '113825',
  );

  /// value113826
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113826 = MediaTypeCode(
    fhirCode: '113826',
  );

  /// value113827
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113827 = MediaTypeCode(
    fhirCode: '113827',
  );

  /// value113828
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113828 = MediaTypeCode(
    fhirCode: '113828',
  );

  /// value113829
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113829 = MediaTypeCode(
    fhirCode: '113829',
  );

  /// value113830
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113830 = MediaTypeCode(
    fhirCode: '113830',
  );

  /// value113831
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113831 = MediaTypeCode(
    fhirCode: '113831',
  );

  /// value113832
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113832 = MediaTypeCode(
    fhirCode: '113832',
  );

  /// value113833
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113833 = MediaTypeCode(
    fhirCode: '113833',
  );

  /// value113834
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113834 = MediaTypeCode(
    fhirCode: '113834',
  );

  /// value113835
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113835 = MediaTypeCode(
    fhirCode: '113835',
  );

  /// value113836
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113836 = MediaTypeCode(
    fhirCode: '113836',
  );

  /// value113837
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113837 = MediaTypeCode(
    fhirCode: '113837',
  );

  /// value113838
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113838 = MediaTypeCode(
    fhirCode: '113838',
  );

  /// value113839
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113839 = MediaTypeCode(
    fhirCode: '113839',
  );

  /// value113840
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113840 = MediaTypeCode(
    fhirCode: '113840',
  );

  /// value113841
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113841 = MediaTypeCode(
    fhirCode: '113841',
  );

  /// value113842
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113842 = MediaTypeCode(
    fhirCode: '113842',
  );

  /// value113845
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113845 = MediaTypeCode(
    fhirCode: '113845',
  );

  /// value113846
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113846 = MediaTypeCode(
    fhirCode: '113846',
  );

  /// value113847
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113847 = MediaTypeCode(
    fhirCode: '113847',
  );

  /// value113850
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113850 = MediaTypeCode(
    fhirCode: '113850',
  );

  /// value113851
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113851 = MediaTypeCode(
    fhirCode: '113851',
  );

  /// value113852
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113852 = MediaTypeCode(
    fhirCode: '113852',
  );

  /// value113853
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113853 = MediaTypeCode(
    fhirCode: '113853',
  );

  /// value113854
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113854 = MediaTypeCode(
    fhirCode: '113854',
  );

  /// value113855
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113855 = MediaTypeCode(
    fhirCode: '113855',
  );

  /// value113856
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113856 = MediaTypeCode(
    fhirCode: '113856',
  );

  /// value113857
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113857 = MediaTypeCode(
    fhirCode: '113857',
  );

  /// value113858
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113858 = MediaTypeCode(
    fhirCode: '113858',
  );

  /// value113859
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113859 = MediaTypeCode(
    fhirCode: '113859',
  );

  /// value113860
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113860 = MediaTypeCode(
    fhirCode: '113860',
  );

  /// value113861
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113861 = MediaTypeCode(
    fhirCode: '113861',
  );

  /// value113862
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113862 = MediaTypeCode(
    fhirCode: '113862',
  );

  /// value113863
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113863 = MediaTypeCode(
    fhirCode: '113863',
  );

  /// value113864
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113864 = MediaTypeCode(
    fhirCode: '113864',
  );

  /// value113865
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113865 = MediaTypeCode(
    fhirCode: '113865',
  );

  /// value113866
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113866 = MediaTypeCode(
    fhirCode: '113866',
  );

  /// value113867
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113867 = MediaTypeCode(
    fhirCode: '113867',
  );

  /// value113868
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113868 = MediaTypeCode(
    fhirCode: '113868',
  );

  /// value113870
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113870 = MediaTypeCode(
    fhirCode: '113870',
  );

  /// value113871
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113871 = MediaTypeCode(
    fhirCode: '113871',
  );

  /// value113872
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113872 = MediaTypeCode(
    fhirCode: '113872',
  );

  /// value113873
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113873 = MediaTypeCode(
    fhirCode: '113873',
  );

  /// value113874
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113874 = MediaTypeCode(
    fhirCode: '113874',
  );

  /// value113875
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113875 = MediaTypeCode(
    fhirCode: '113875',
  );

  /// value113876
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113876 = MediaTypeCode(
    fhirCode: '113876',
  );

  /// value113877
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113877 = MediaTypeCode(
    fhirCode: '113877',
  );

  /// value113878
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113878 = MediaTypeCode(
    fhirCode: '113878',
  );

  /// value113879
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113879 = MediaTypeCode(
    fhirCode: '113879',
  );

  /// value113880
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113880 = MediaTypeCode(
    fhirCode: '113880',
  );

  /// value113890
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113890 = MediaTypeCode(
    fhirCode: '113890',
  );

  /// value113893
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113893 = MediaTypeCode(
    fhirCode: '113893',
  );

  /// value113895
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113895 = MediaTypeCode(
    fhirCode: '113895',
  );

  /// value113896
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113896 = MediaTypeCode(
    fhirCode: '113896',
  );

  /// value113897
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113897 = MediaTypeCode(
    fhirCode: '113897',
  );

  /// value113898
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113898 = MediaTypeCode(
    fhirCode: '113898',
  );

  /// value113899
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113899 = MediaTypeCode(
    fhirCode: '113899',
  );

  /// value113900
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113900 = MediaTypeCode(
    fhirCode: '113900',
  );

  /// value113901
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113901 = MediaTypeCode(
    fhirCode: '113901',
  );

  /// value113902
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113902 = MediaTypeCode(
    fhirCode: '113902',
  );

  /// value113903
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113903 = MediaTypeCode(
    fhirCode: '113903',
  );

  /// value113904
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113904 = MediaTypeCode(
    fhirCode: '113904',
  );

  /// value113905
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113905 = MediaTypeCode(
    fhirCode: '113905',
  );

  /// value113906
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113906 = MediaTypeCode(
    fhirCode: '113906',
  );

  /// value113907
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113907 = MediaTypeCode(
    fhirCode: '113907',
  );

  /// value113908
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113908 = MediaTypeCode(
    fhirCode: '113908',
  );

  /// value113909
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113909 = MediaTypeCode(
    fhirCode: '113909',
  );

  /// value113910
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113910 = MediaTypeCode(
    fhirCode: '113910',
  );

  /// value113911
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113911 = MediaTypeCode(
    fhirCode: '113911',
  );

  /// value113912
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113912 = MediaTypeCode(
    fhirCode: '113912',
  );

  /// value113913
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113913 = MediaTypeCode(
    fhirCode: '113913',
  );

  /// value113914
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113914 = MediaTypeCode(
    fhirCode: '113914',
  );

  /// value113921
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113921 = MediaTypeCode(
    fhirCode: '113921',
  );

  /// value113922
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113922 = MediaTypeCode(
    fhirCode: '113922',
  );

  /// value113923
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113923 = MediaTypeCode(
    fhirCode: '113923',
  );

  /// value113930
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113930 = MediaTypeCode(
    fhirCode: '113930',
  );

  /// value113931
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113931 = MediaTypeCode(
    fhirCode: '113931',
  );

  /// value113932
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113932 = MediaTypeCode(
    fhirCode: '113932',
  );

  /// value113933
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113933 = MediaTypeCode(
    fhirCode: '113933',
  );

  /// value113934
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113934 = MediaTypeCode(
    fhirCode: '113934',
  );

  /// value113935
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113935 = MediaTypeCode(
    fhirCode: '113935',
  );

  /// value113936
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113936 = MediaTypeCode(
    fhirCode: '113936',
  );

  /// value113937
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113937 = MediaTypeCode(
    fhirCode: '113937',
  );

  /// value113940
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113940 = MediaTypeCode(
    fhirCode: '113940',
  );

  /// value113941
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113941 = MediaTypeCode(
    fhirCode: '113941',
  );

  /// value113942
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113942 = MediaTypeCode(
    fhirCode: '113942',
  );

  /// value113943
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113943 = MediaTypeCode(
    fhirCode: '113943',
  );

  /// value113944
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113944 = MediaTypeCode(
    fhirCode: '113944',
  );

  /// value113945
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113945 = MediaTypeCode(
    fhirCode: '113945',
  );

  /// value113946
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113946 = MediaTypeCode(
    fhirCode: '113946',
  );

  /// value113947
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113947 = MediaTypeCode(
    fhirCode: '113947',
  );

  /// value113948
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113948 = MediaTypeCode(
    fhirCode: '113948',
  );

  /// value113949
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113949 = MediaTypeCode(
    fhirCode: '113949',
  );

  /// value113950
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113950 = MediaTypeCode(
    fhirCode: '113950',
  );

  /// value113951
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113951 = MediaTypeCode(
    fhirCode: '113951',
  );

  /// value113952
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113952 = MediaTypeCode(
    fhirCode: '113952',
  );

  /// value113953
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113953 = MediaTypeCode(
    fhirCode: '113953',
  );

  /// value113954
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113954 = MediaTypeCode(
    fhirCode: '113954',
  );

  /// value113955
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113955 = MediaTypeCode(
    fhirCode: '113955',
  );

  /// value113956
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113956 = MediaTypeCode(
    fhirCode: '113956',
  );

  /// value113957
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113957 = MediaTypeCode(
    fhirCode: '113957',
  );

  /// value113958
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113958 = MediaTypeCode(
    fhirCode: '113958',
  );

  /// value113959
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113959 = MediaTypeCode(
    fhirCode: '113959',
  );

  /// value113961
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113961 = MediaTypeCode(
    fhirCode: '113961',
  );

  /// value113962
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113962 = MediaTypeCode(
    fhirCode: '113962',
  );

  /// value113963
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113963 = MediaTypeCode(
    fhirCode: '113963',
  );

  /// value113970
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value113970 = MediaTypeCode(
    fhirCode: '113970',
  );

  /// value114000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value114000 = MediaTypeCode(
    fhirCode: '114000',
  );

  /// value114001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value114001 = MediaTypeCode(
    fhirCode: '114001',
  );

  /// value114002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value114002 = MediaTypeCode(
    fhirCode: '114002',
  );

  /// value114003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value114003 = MediaTypeCode(
    fhirCode: '114003',
  );

  /// value114004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value114004 = MediaTypeCode(
    fhirCode: '114004',
  );

  /// value114005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value114005 = MediaTypeCode(
    fhirCode: '114005',
  );

  /// value114006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value114006 = MediaTypeCode(
    fhirCode: '114006',
  );

  /// value114007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value114007 = MediaTypeCode(
    fhirCode: '114007',
  );

  /// value114008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value114008 = MediaTypeCode(
    fhirCode: '114008',
  );

  /// value114009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value114009 = MediaTypeCode(
    fhirCode: '114009',
  );

  /// value114010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value114010 = MediaTypeCode(
    fhirCode: '114010',
  );

  /// value114011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value114011 = MediaTypeCode(
    fhirCode: '114011',
  );

  /// value114201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value114201 = MediaTypeCode(
    fhirCode: '114201',
  );

  /// value114202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value114202 = MediaTypeCode(
    fhirCode: '114202',
  );

  /// value114203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value114203 = MediaTypeCode(
    fhirCode: '114203',
  );

  /// value114204
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value114204 = MediaTypeCode(
    fhirCode: '114204',
  );

  /// value114205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value114205 = MediaTypeCode(
    fhirCode: '114205',
  );

  /// value114206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value114206 = MediaTypeCode(
    fhirCode: '114206',
  );

  /// value114207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value114207 = MediaTypeCode(
    fhirCode: '114207',
  );

  /// value114208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value114208 = MediaTypeCode(
    fhirCode: '114208',
  );

  /// value114209
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value114209 = MediaTypeCode(
    fhirCode: '114209',
  );

  /// value114210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value114210 = MediaTypeCode(
    fhirCode: '114210',
  );

  /// value114211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value114211 = MediaTypeCode(
    fhirCode: '114211',
  );

  /// value114213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value114213 = MediaTypeCode(
    fhirCode: '114213',
  );

  /// value114215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value114215 = MediaTypeCode(
    fhirCode: '114215',
  );

  /// value114216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value114216 = MediaTypeCode(
    fhirCode: '114216',
  );

  /// value121001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121001 = MediaTypeCode(
    fhirCode: '121001',
  );

  /// value121002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121002 = MediaTypeCode(
    fhirCode: '121002',
  );

  /// value121003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121003 = MediaTypeCode(
    fhirCode: '121003',
  );

  /// value121004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121004 = MediaTypeCode(
    fhirCode: '121004',
  );

  /// value121005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121005 = MediaTypeCode(
    fhirCode: '121005',
  );

  /// value121006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121006 = MediaTypeCode(
    fhirCode: '121006',
  );

  /// value121007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121007 = MediaTypeCode(
    fhirCode: '121007',
  );

  /// value121008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121008 = MediaTypeCode(
    fhirCode: '121008',
  );

  /// value121009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121009 = MediaTypeCode(
    fhirCode: '121009',
  );

  /// value121010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121010 = MediaTypeCode(
    fhirCode: '121010',
  );

  /// value121011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121011 = MediaTypeCode(
    fhirCode: '121011',
  );

  /// value121012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121012 = MediaTypeCode(
    fhirCode: '121012',
  );

  /// value121013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121013 = MediaTypeCode(
    fhirCode: '121013',
  );

  /// value121014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121014 = MediaTypeCode(
    fhirCode: '121014',
  );

  /// value121015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121015 = MediaTypeCode(
    fhirCode: '121015',
  );

  /// value121016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121016 = MediaTypeCode(
    fhirCode: '121016',
  );

  /// value121017
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121017 = MediaTypeCode(
    fhirCode: '121017',
  );

  /// value121018
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121018 = MediaTypeCode(
    fhirCode: '121018',
  );

  /// value121019
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121019 = MediaTypeCode(
    fhirCode: '121019',
  );

  /// value121020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121020 = MediaTypeCode(
    fhirCode: '121020',
  );

  /// value121021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121021 = MediaTypeCode(
    fhirCode: '121021',
  );

  /// value121022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121022 = MediaTypeCode(
    fhirCode: '121022',
  );

  /// value121023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121023 = MediaTypeCode(
    fhirCode: '121023',
  );

  /// value121024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121024 = MediaTypeCode(
    fhirCode: '121024',
  );

  /// value121025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121025 = MediaTypeCode(
    fhirCode: '121025',
  );

  /// value121026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121026 = MediaTypeCode(
    fhirCode: '121026',
  );

  /// value121027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121027 = MediaTypeCode(
    fhirCode: '121027',
  );

  /// value121028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121028 = MediaTypeCode(
    fhirCode: '121028',
  );

  /// value121029
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121029 = MediaTypeCode(
    fhirCode: '121029',
  );

  /// value121030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121030 = MediaTypeCode(
    fhirCode: '121030',
  );

  /// value121031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121031 = MediaTypeCode(
    fhirCode: '121031',
  );

  /// value121032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121032 = MediaTypeCode(
    fhirCode: '121032',
  );

  /// value121033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121033 = MediaTypeCode(
    fhirCode: '121033',
  );

  /// value121034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121034 = MediaTypeCode(
    fhirCode: '121034',
  );

  /// value121035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121035 = MediaTypeCode(
    fhirCode: '121035',
  );

  /// value121036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121036 = MediaTypeCode(
    fhirCode: '121036',
  );

  /// value121037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121037 = MediaTypeCode(
    fhirCode: '121037',
  );

  /// value121038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121038 = MediaTypeCode(
    fhirCode: '121038',
  );

  /// value121039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121039 = MediaTypeCode(
    fhirCode: '121039',
  );

  /// value121040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121040 = MediaTypeCode(
    fhirCode: '121040',
  );

  /// value121041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121041 = MediaTypeCode(
    fhirCode: '121041',
  );

  /// value121042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121042 = MediaTypeCode(
    fhirCode: '121042',
  );

  /// value121043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121043 = MediaTypeCode(
    fhirCode: '121043',
  );

  /// value121044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121044 = MediaTypeCode(
    fhirCode: '121044',
  );

  /// value121045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121045 = MediaTypeCode(
    fhirCode: '121045',
  );

  /// value121046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121046 = MediaTypeCode(
    fhirCode: '121046',
  );

  /// value121047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121047 = MediaTypeCode(
    fhirCode: '121047',
  );

  /// value121048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121048 = MediaTypeCode(
    fhirCode: '121048',
  );

  /// value121049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121049 = MediaTypeCode(
    fhirCode: '121049',
  );

  /// value121050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121050 = MediaTypeCode(
    fhirCode: '121050',
  );

  /// value121051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121051 = MediaTypeCode(
    fhirCode: '121051',
  );

  /// value121052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121052 = MediaTypeCode(
    fhirCode: '121052',
  );

  /// value121053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121053 = MediaTypeCode(
    fhirCode: '121053',
  );

  /// value121054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121054 = MediaTypeCode(
    fhirCode: '121054',
  );

  /// value121055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121055 = MediaTypeCode(
    fhirCode: '121055',
  );

  /// value121056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121056 = MediaTypeCode(
    fhirCode: '121056',
  );

  /// value121057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121057 = MediaTypeCode(
    fhirCode: '121057',
  );

  /// value121058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121058 = MediaTypeCode(
    fhirCode: '121058',
  );

  /// value121059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121059 = MediaTypeCode(
    fhirCode: '121059',
  );

  /// value121060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121060 = MediaTypeCode(
    fhirCode: '121060',
  );

  /// value121062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121062 = MediaTypeCode(
    fhirCode: '121062',
  );

  /// value121064
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121064 = MediaTypeCode(
    fhirCode: '121064',
  );

  /// value121065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121065 = MediaTypeCode(
    fhirCode: '121065',
  );

  /// value121066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121066 = MediaTypeCode(
    fhirCode: '121066',
  );

  /// value121068
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121068 = MediaTypeCode(
    fhirCode: '121068',
  );

  /// value121069
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121069 = MediaTypeCode(
    fhirCode: '121069',
  );

  /// value121070
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121070 = MediaTypeCode(
    fhirCode: '121070',
  );

  /// value121071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121071 = MediaTypeCode(
    fhirCode: '121071',
  );

  /// value121072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121072 = MediaTypeCode(
    fhirCode: '121072',
  );

  /// value121073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121073 = MediaTypeCode(
    fhirCode: '121073',
  );

  /// value121074
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121074 = MediaTypeCode(
    fhirCode: '121074',
  );

  /// value121075
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121075 = MediaTypeCode(
    fhirCode: '121075',
  );

  /// value121076
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121076 = MediaTypeCode(
    fhirCode: '121076',
  );

  /// value121077
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121077 = MediaTypeCode(
    fhirCode: '121077',
  );

  /// value121078
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121078 = MediaTypeCode(
    fhirCode: '121078',
  );

  /// value121079
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121079 = MediaTypeCode(
    fhirCode: '121079',
  );

  /// value121080
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121080 = MediaTypeCode(
    fhirCode: '121080',
  );

  /// value121081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121081 = MediaTypeCode(
    fhirCode: '121081',
  );

  /// value121082
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121082 = MediaTypeCode(
    fhirCode: '121082',
  );

  /// value121083
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121083 = MediaTypeCode(
    fhirCode: '121083',
  );

  /// value121084
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121084 = MediaTypeCode(
    fhirCode: '121084',
  );

  /// value121085
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121085 = MediaTypeCode(
    fhirCode: '121085',
  );

  /// value121086
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121086 = MediaTypeCode(
    fhirCode: '121086',
  );

  /// value121087
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121087 = MediaTypeCode(
    fhirCode: '121087',
  );

  /// value121088
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121088 = MediaTypeCode(
    fhirCode: '121088',
  );

  /// value121089
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121089 = MediaTypeCode(
    fhirCode: '121089',
  );

  /// value121090
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121090 = MediaTypeCode(
    fhirCode: '121090',
  );

  /// value121091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121091 = MediaTypeCode(
    fhirCode: '121091',
  );

  /// value121092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121092 = MediaTypeCode(
    fhirCode: '121092',
  );

  /// value121093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121093 = MediaTypeCode(
    fhirCode: '121093',
  );

  /// value121094
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121094 = MediaTypeCode(
    fhirCode: '121094',
  );

  /// value121095
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121095 = MediaTypeCode(
    fhirCode: '121095',
  );

  /// value121096
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121096 = MediaTypeCode(
    fhirCode: '121096',
  );

  /// value121097
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121097 = MediaTypeCode(
    fhirCode: '121097',
  );

  /// value121098
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121098 = MediaTypeCode(
    fhirCode: '121098',
  );

  /// value121099
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121099 = MediaTypeCode(
    fhirCode: '121099',
  );

  /// value121100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121100 = MediaTypeCode(
    fhirCode: '121100',
  );

  /// value121101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121101 = MediaTypeCode(
    fhirCode: '121101',
  );

  /// value121102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121102 = MediaTypeCode(
    fhirCode: '121102',
  );

  /// value121103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121103 = MediaTypeCode(
    fhirCode: '121103',
  );

  /// value121104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121104 = MediaTypeCode(
    fhirCode: '121104',
  );

  /// value121105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121105 = MediaTypeCode(
    fhirCode: '121105',
  );

  /// value121106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121106 = MediaTypeCode(
    fhirCode: '121106',
  );

  /// value121109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121109 = MediaTypeCode(
    fhirCode: '121109',
  );

  /// value121110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121110 = MediaTypeCode(
    fhirCode: '121110',
  );

  /// value121111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121111 = MediaTypeCode(
    fhirCode: '121111',
  );

  /// value121112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121112 = MediaTypeCode(
    fhirCode: '121112',
  );

  /// value121113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121113 = MediaTypeCode(
    fhirCode: '121113',
  );

  /// value121114
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121114 = MediaTypeCode(
    fhirCode: '121114',
  );

  /// value121115
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121115 = MediaTypeCode(
    fhirCode: '121115',
  );

  /// value121116
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121116 = MediaTypeCode(
    fhirCode: '121116',
  );

  /// value121117
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121117 = MediaTypeCode(
    fhirCode: '121117',
  );

  /// value121118
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121118 = MediaTypeCode(
    fhirCode: '121118',
  );

  /// value121120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121120 = MediaTypeCode(
    fhirCode: '121120',
  );

  /// value121121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121121 = MediaTypeCode(
    fhirCode: '121121',
  );

  /// value121122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121122 = MediaTypeCode(
    fhirCode: '121122',
  );

  /// value121123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121123 = MediaTypeCode(
    fhirCode: '121123',
  );

  /// value121124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121124 = MediaTypeCode(
    fhirCode: '121124',
  );

  /// value121125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121125 = MediaTypeCode(
    fhirCode: '121125',
  );

  /// value121126
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121126 = MediaTypeCode(
    fhirCode: '121126',
  );

  /// value121127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121127 = MediaTypeCode(
    fhirCode: '121127',
  );

  /// value121128
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121128 = MediaTypeCode(
    fhirCode: '121128',
  );

  /// value121130
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121130 = MediaTypeCode(
    fhirCode: '121130',
  );

  /// value121131
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121131 = MediaTypeCode(
    fhirCode: '121131',
  );

  /// value121132
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121132 = MediaTypeCode(
    fhirCode: '121132',
  );

  /// value121133
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121133 = MediaTypeCode(
    fhirCode: '121133',
  );

  /// value121135
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121135 = MediaTypeCode(
    fhirCode: '121135',
  );

  /// value121136
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121136 = MediaTypeCode(
    fhirCode: '121136',
  );

  /// value121137
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121137 = MediaTypeCode(
    fhirCode: '121137',
  );

  /// value121138
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121138 = MediaTypeCode(
    fhirCode: '121138',
  );

  /// value121139
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121139 = MediaTypeCode(
    fhirCode: '121139',
  );

  /// value121140
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121140 = MediaTypeCode(
    fhirCode: '121140',
  );

  /// value121141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121141 = MediaTypeCode(
    fhirCode: '121141',
  );

  /// value121142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121142 = MediaTypeCode(
    fhirCode: '121142',
  );

  /// value121143
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121143 = MediaTypeCode(
    fhirCode: '121143',
  );

  /// value121144
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121144 = MediaTypeCode(
    fhirCode: '121144',
  );

  /// value121145
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121145 = MediaTypeCode(
    fhirCode: '121145',
  );

  /// value121146
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121146 = MediaTypeCode(
    fhirCode: '121146',
  );

  /// value121147
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121147 = MediaTypeCode(
    fhirCode: '121147',
  );

  /// value121148
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121148 = MediaTypeCode(
    fhirCode: '121148',
  );

  /// value121149
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121149 = MediaTypeCode(
    fhirCode: '121149',
  );

  /// value121150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121150 = MediaTypeCode(
    fhirCode: '121150',
  );

  /// value121151
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121151 = MediaTypeCode(
    fhirCode: '121151',
  );

  /// value121152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121152 = MediaTypeCode(
    fhirCode: '121152',
  );

  /// value121153
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121153 = MediaTypeCode(
    fhirCode: '121153',
  );

  /// value121154
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121154 = MediaTypeCode(
    fhirCode: '121154',
  );

  /// value121155
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121155 = MediaTypeCode(
    fhirCode: '121155',
  );

  /// value121156
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121156 = MediaTypeCode(
    fhirCode: '121156',
  );

  /// value121157
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121157 = MediaTypeCode(
    fhirCode: '121157',
  );

  /// value121158
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121158 = MediaTypeCode(
    fhirCode: '121158',
  );

  /// value121160
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121160 = MediaTypeCode(
    fhirCode: '121160',
  );

  /// value121161
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121161 = MediaTypeCode(
    fhirCode: '121161',
  );

  /// value121162
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121162 = MediaTypeCode(
    fhirCode: '121162',
  );

  /// value121163
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121163 = MediaTypeCode(
    fhirCode: '121163',
  );

  /// value121165
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121165 = MediaTypeCode(
    fhirCode: '121165',
  );

  /// value121166
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121166 = MediaTypeCode(
    fhirCode: '121166',
  );

  /// value121167
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121167 = MediaTypeCode(
    fhirCode: '121167',
  );

  /// value121168
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121168 = MediaTypeCode(
    fhirCode: '121168',
  );

  /// value121169
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121169 = MediaTypeCode(
    fhirCode: '121169',
  );

  /// value121171
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121171 = MediaTypeCode(
    fhirCode: '121171',
  );

  /// value121172
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121172 = MediaTypeCode(
    fhirCode: '121172',
  );

  /// value121173
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121173 = MediaTypeCode(
    fhirCode: '121173',
  );

  /// value121174
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121174 = MediaTypeCode(
    fhirCode: '121174',
  );

  /// value121180
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121180 = MediaTypeCode(
    fhirCode: '121180',
  );

  /// value121181
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121181 = MediaTypeCode(
    fhirCode: '121181',
  );

  /// value121190
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121190 = MediaTypeCode(
    fhirCode: '121190',
  );

  /// value121191
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121191 = MediaTypeCode(
    fhirCode: '121191',
  );

  /// value121192
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121192 = MediaTypeCode(
    fhirCode: '121192',
  );

  /// value121193
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121193 = MediaTypeCode(
    fhirCode: '121193',
  );

  /// value121194
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121194 = MediaTypeCode(
    fhirCode: '121194',
  );

  /// value121195
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121195 = MediaTypeCode(
    fhirCode: '121195',
  );

  /// value121196
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121196 = MediaTypeCode(
    fhirCode: '121196',
  );

  /// value121197
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121197 = MediaTypeCode(
    fhirCode: '121197',
  );

  /// value121198
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121198 = MediaTypeCode(
    fhirCode: '121198',
  );

  /// value121200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121200 = MediaTypeCode(
    fhirCode: '121200',
  );

  /// value121201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121201 = MediaTypeCode(
    fhirCode: '121201',
  );

  /// value121202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121202 = MediaTypeCode(
    fhirCode: '121202',
  );

  /// value121206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121206 = MediaTypeCode(
    fhirCode: '121206',
  );

  /// value121207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121207 = MediaTypeCode(
    fhirCode: '121207',
  );

  /// value121208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121208 = MediaTypeCode(
    fhirCode: '121208',
  );

  /// value121210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121210 = MediaTypeCode(
    fhirCode: '121210',
  );

  /// value121211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121211 = MediaTypeCode(
    fhirCode: '121211',
  );

  /// value121213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121213 = MediaTypeCode(
    fhirCode: '121213',
  );

  /// value121214
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121214 = MediaTypeCode(
    fhirCode: '121214',
  );

  /// value121216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121216 = MediaTypeCode(
    fhirCode: '121216',
  );

  /// value121217
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121217 = MediaTypeCode(
    fhirCode: '121217',
  );

  /// value121218
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121218 = MediaTypeCode(
    fhirCode: '121218',
  );

  /// value121219
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121219 = MediaTypeCode(
    fhirCode: '121219',
  );

  /// value121220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121220 = MediaTypeCode(
    fhirCode: '121220',
  );

  /// value121221
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121221 = MediaTypeCode(
    fhirCode: '121221',
  );

  /// value121222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121222 = MediaTypeCode(
    fhirCode: '121222',
  );

  /// value121230
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121230 = MediaTypeCode(
    fhirCode: '121230',
  );

  /// value121231
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121231 = MediaTypeCode(
    fhirCode: '121231',
  );

  /// value121232
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121232 = MediaTypeCode(
    fhirCode: '121232',
  );

  /// value121233
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121233 = MediaTypeCode(
    fhirCode: '121233',
  );

  /// value121242
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121242 = MediaTypeCode(
    fhirCode: '121242',
  );

  /// value121243
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121243 = MediaTypeCode(
    fhirCode: '121243',
  );

  /// value121244
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121244 = MediaTypeCode(
    fhirCode: '121244',
  );

  /// value121290
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121290 = MediaTypeCode(
    fhirCode: '121290',
  );

  /// value121291
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121291 = MediaTypeCode(
    fhirCode: '121291',
  );

  /// value121301
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121301 = MediaTypeCode(
    fhirCode: '121301',
  );

  /// value121302
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121302 = MediaTypeCode(
    fhirCode: '121302',
  );

  /// value121303
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121303 = MediaTypeCode(
    fhirCode: '121303',
  );

  /// value121304
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121304 = MediaTypeCode(
    fhirCode: '121304',
  );

  /// value121305
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121305 = MediaTypeCode(
    fhirCode: '121305',
  );

  /// value121306
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121306 = MediaTypeCode(
    fhirCode: '121306',
  );

  /// value121307
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121307 = MediaTypeCode(
    fhirCode: '121307',
  );

  /// value121311
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121311 = MediaTypeCode(
    fhirCode: '121311',
  );

  /// value121312
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121312 = MediaTypeCode(
    fhirCode: '121312',
  );

  /// value121313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121313 = MediaTypeCode(
    fhirCode: '121313',
  );

  /// value121314
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121314 = MediaTypeCode(
    fhirCode: '121314',
  );

  /// value121315
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121315 = MediaTypeCode(
    fhirCode: '121315',
  );

  /// value121316
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121316 = MediaTypeCode(
    fhirCode: '121316',
  );

  /// value121317
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121317 = MediaTypeCode(
    fhirCode: '121317',
  );

  /// value121318
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121318 = MediaTypeCode(
    fhirCode: '121318',
  );

  /// value121320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121320 = MediaTypeCode(
    fhirCode: '121320',
  );

  /// value121321
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121321 = MediaTypeCode(
    fhirCode: '121321',
  );

  /// value121322
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121322 = MediaTypeCode(
    fhirCode: '121322',
  );

  /// value121323
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121323 = MediaTypeCode(
    fhirCode: '121323',
  );

  /// value121324
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121324 = MediaTypeCode(
    fhirCode: '121324',
  );

  /// value121325
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121325 = MediaTypeCode(
    fhirCode: '121325',
  );

  /// value121326
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121326 = MediaTypeCode(
    fhirCode: '121326',
  );

  /// value121327
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121327 = MediaTypeCode(
    fhirCode: '121327',
  );

  /// value121328
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121328 = MediaTypeCode(
    fhirCode: '121328',
  );

  /// value121329
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121329 = MediaTypeCode(
    fhirCode: '121329',
  );

  /// value121330
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121330 = MediaTypeCode(
    fhirCode: '121330',
  );

  /// value121331
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121331 = MediaTypeCode(
    fhirCode: '121331',
  );

  /// value121332
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121332 = MediaTypeCode(
    fhirCode: '121332',
  );

  /// value121333
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121333 = MediaTypeCode(
    fhirCode: '121333',
  );

  /// value121334
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121334 = MediaTypeCode(
    fhirCode: '121334',
  );

  /// value121335
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121335 = MediaTypeCode(
    fhirCode: '121335',
  );

  /// value121338
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121338 = MediaTypeCode(
    fhirCode: '121338',
  );

  /// value121339
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121339 = MediaTypeCode(
    fhirCode: '121339',
  );

  /// value121340
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121340 = MediaTypeCode(
    fhirCode: '121340',
  );

  /// value121341
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121341 = MediaTypeCode(
    fhirCode: '121341',
  );

  /// value121342
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121342 = MediaTypeCode(
    fhirCode: '121342',
  );

  /// value121346
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121346 = MediaTypeCode(
    fhirCode: '121346',
  );

  /// value121347
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121347 = MediaTypeCode(
    fhirCode: '121347',
  );

  /// value121348
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121348 = MediaTypeCode(
    fhirCode: '121348',
  );

  /// value121349
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121349 = MediaTypeCode(
    fhirCode: '121349',
  );

  /// value121350
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121350 = MediaTypeCode(
    fhirCode: '121350',
  );

  /// value121351
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121351 = MediaTypeCode(
    fhirCode: '121351',
  );

  /// value121352
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121352 = MediaTypeCode(
    fhirCode: '121352',
  );

  /// value121353
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121353 = MediaTypeCode(
    fhirCode: '121353',
  );

  /// value121354
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121354 = MediaTypeCode(
    fhirCode: '121354',
  );

  /// value121358
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121358 = MediaTypeCode(
    fhirCode: '121358',
  );

  /// value121360
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121360 = MediaTypeCode(
    fhirCode: '121360',
  );

  /// value121361
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121361 = MediaTypeCode(
    fhirCode: '121361',
  );

  /// value121362
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121362 = MediaTypeCode(
    fhirCode: '121362',
  );

  /// value121363
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121363 = MediaTypeCode(
    fhirCode: '121363',
  );

  /// value121370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121370 = MediaTypeCode(
    fhirCode: '121370',
  );

  /// value121371
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121371 = MediaTypeCode(
    fhirCode: '121371',
  );

  /// value121372
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121372 = MediaTypeCode(
    fhirCode: '121372',
  );

  /// value121380
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121380 = MediaTypeCode(
    fhirCode: '121380',
  );

  /// value121381
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121381 = MediaTypeCode(
    fhirCode: '121381',
  );

  /// value121382
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121382 = MediaTypeCode(
    fhirCode: '121382',
  );

  /// value121383
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121383 = MediaTypeCode(
    fhirCode: '121383',
  );

  /// value121401
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121401 = MediaTypeCode(
    fhirCode: '121401',
  );

  /// value121402
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121402 = MediaTypeCode(
    fhirCode: '121402',
  );

  /// value121403
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121403 = MediaTypeCode(
    fhirCode: '121403',
  );

  /// value121404
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121404 = MediaTypeCode(
    fhirCode: '121404',
  );

  /// value121405
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121405 = MediaTypeCode(
    fhirCode: '121405',
  );

  /// value121406
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121406 = MediaTypeCode(
    fhirCode: '121406',
  );

  /// value121407
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121407 = MediaTypeCode(
    fhirCode: '121407',
  );

  /// value121408
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121408 = MediaTypeCode(
    fhirCode: '121408',
  );

  /// value121410
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121410 = MediaTypeCode(
    fhirCode: '121410',
  );

  /// value121411
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121411 = MediaTypeCode(
    fhirCode: '121411',
  );

  /// value121412
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121412 = MediaTypeCode(
    fhirCode: '121412',
  );

  /// value121414
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121414 = MediaTypeCode(
    fhirCode: '121414',
  );

  /// value121415
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121415 = MediaTypeCode(
    fhirCode: '121415',
  );

  /// value121416
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121416 = MediaTypeCode(
    fhirCode: '121416',
  );

  /// value121417
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121417 = MediaTypeCode(
    fhirCode: '121417',
  );

  /// value121420
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121420 = MediaTypeCode(
    fhirCode: '121420',
  );

  /// value121421
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121421 = MediaTypeCode(
    fhirCode: '121421',
  );

  /// value121422
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121422 = MediaTypeCode(
    fhirCode: '121422',
  );

  /// value121423
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121423 = MediaTypeCode(
    fhirCode: '121423',
  );

  /// value121424
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121424 = MediaTypeCode(
    fhirCode: '121424',
  );

  /// value121425
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121425 = MediaTypeCode(
    fhirCode: '121425',
  );

  /// value121427
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121427 = MediaTypeCode(
    fhirCode: '121427',
  );

  /// value121428
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121428 = MediaTypeCode(
    fhirCode: '121428',
  );

  /// value121430
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121430 = MediaTypeCode(
    fhirCode: '121430',
  );

  /// value121431
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121431 = MediaTypeCode(
    fhirCode: '121431',
  );

  /// value121432
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121432 = MediaTypeCode(
    fhirCode: '121432',
  );

  /// value121433
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121433 = MediaTypeCode(
    fhirCode: '121433',
  );

  /// value121434
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121434 = MediaTypeCode(
    fhirCode: '121434',
  );

  /// value121435
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121435 = MediaTypeCode(
    fhirCode: '121435',
  );

  /// value121436
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121436 = MediaTypeCode(
    fhirCode: '121436',
  );

  /// value121437
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121437 = MediaTypeCode(
    fhirCode: '121437',
  );

  /// value121438
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121438 = MediaTypeCode(
    fhirCode: '121438',
  );

  /// value121439
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121439 = MediaTypeCode(
    fhirCode: '121439',
  );

  /// value121701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121701 = MediaTypeCode(
    fhirCode: '121701',
  );

  /// value121702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121702 = MediaTypeCode(
    fhirCode: '121702',
  );

  /// value121703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121703 = MediaTypeCode(
    fhirCode: '121703',
  );

  /// value121704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121704 = MediaTypeCode(
    fhirCode: '121704',
  );

  /// value121705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121705 = MediaTypeCode(
    fhirCode: '121705',
  );

  /// value121706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121706 = MediaTypeCode(
    fhirCode: '121706',
  );

  /// value121707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121707 = MediaTypeCode(
    fhirCode: '121707',
  );

  /// value121708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121708 = MediaTypeCode(
    fhirCode: '121708',
  );

  /// value121709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121709 = MediaTypeCode(
    fhirCode: '121709',
  );

  /// value121710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121710 = MediaTypeCode(
    fhirCode: '121710',
  );

  /// value121711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121711 = MediaTypeCode(
    fhirCode: '121711',
  );

  /// value121712
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121712 = MediaTypeCode(
    fhirCode: '121712',
  );

  /// value121713
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121713 = MediaTypeCode(
    fhirCode: '121713',
  );

  /// value121714
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121714 = MediaTypeCode(
    fhirCode: '121714',
  );

  /// value121715
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121715 = MediaTypeCode(
    fhirCode: '121715',
  );

  /// value121716
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121716 = MediaTypeCode(
    fhirCode: '121716',
  );

  /// value121717
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121717 = MediaTypeCode(
    fhirCode: '121717',
  );

  /// value121718
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121718 = MediaTypeCode(
    fhirCode: '121718',
  );

  /// value121719
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121719 = MediaTypeCode(
    fhirCode: '121719',
  );

  /// value121720
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121720 = MediaTypeCode(
    fhirCode: '121720',
  );

  /// value121721
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121721 = MediaTypeCode(
    fhirCode: '121721',
  );

  /// value121722
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121722 = MediaTypeCode(
    fhirCode: '121722',
  );

  /// value121723
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121723 = MediaTypeCode(
    fhirCode: '121723',
  );

  /// value121724
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121724 = MediaTypeCode(
    fhirCode: '121724',
  );

  /// value121725
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121725 = MediaTypeCode(
    fhirCode: '121725',
  );

  /// value121726
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121726 = MediaTypeCode(
    fhirCode: '121726',
  );

  /// value121727
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121727 = MediaTypeCode(
    fhirCode: '121727',
  );

  /// value121728
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121728 = MediaTypeCode(
    fhirCode: '121728',
  );

  /// value121729
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121729 = MediaTypeCode(
    fhirCode: '121729',
  );

  /// value121730
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121730 = MediaTypeCode(
    fhirCode: '121730',
  );

  /// value121731
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121731 = MediaTypeCode(
    fhirCode: '121731',
  );

  /// value121732
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121732 = MediaTypeCode(
    fhirCode: '121732',
  );

  /// value121733
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121733 = MediaTypeCode(
    fhirCode: '121733',
  );

  /// value121734
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121734 = MediaTypeCode(
    fhirCode: '121734',
  );

  /// value121740
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value121740 = MediaTypeCode(
    fhirCode: '121740',
  );

  /// value122001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122001 = MediaTypeCode(
    fhirCode: '122001',
  );

  /// value122002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122002 = MediaTypeCode(
    fhirCode: '122002',
  );

  /// value122003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122003 = MediaTypeCode(
    fhirCode: '122003',
  );

  /// value122004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122004 = MediaTypeCode(
    fhirCode: '122004',
  );

  /// value122005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122005 = MediaTypeCode(
    fhirCode: '122005',
  );

  /// value122006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122006 = MediaTypeCode(
    fhirCode: '122006',
  );

  /// value122007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122007 = MediaTypeCode(
    fhirCode: '122007',
  );

  /// value122008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122008 = MediaTypeCode(
    fhirCode: '122008',
  );

  /// value122009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122009 = MediaTypeCode(
    fhirCode: '122009',
  );

  /// value122010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122010 = MediaTypeCode(
    fhirCode: '122010',
  );

  /// value122011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122011 = MediaTypeCode(
    fhirCode: '122011',
  );

  /// value122012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122012 = MediaTypeCode(
    fhirCode: '122012',
  );

  /// value122020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122020 = MediaTypeCode(
    fhirCode: '122020',
  );

  /// value122021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122021 = MediaTypeCode(
    fhirCode: '122021',
  );

  /// value122022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122022 = MediaTypeCode(
    fhirCode: '122022',
  );

  /// value122023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122023 = MediaTypeCode(
    fhirCode: '122023',
  );

  /// value122024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122024 = MediaTypeCode(
    fhirCode: '122024',
  );

  /// value122025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122025 = MediaTypeCode(
    fhirCode: '122025',
  );

  /// value122026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122026 = MediaTypeCode(
    fhirCode: '122026',
  );

  /// value122027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122027 = MediaTypeCode(
    fhirCode: '122027',
  );

  /// value122028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122028 = MediaTypeCode(
    fhirCode: '122028',
  );

  /// value122029
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122029 = MediaTypeCode(
    fhirCode: '122029',
  );

  /// value122030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122030 = MediaTypeCode(
    fhirCode: '122030',
  );

  /// value122031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122031 = MediaTypeCode(
    fhirCode: '122031',
  );

  /// value122032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122032 = MediaTypeCode(
    fhirCode: '122032',
  );

  /// value122033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122033 = MediaTypeCode(
    fhirCode: '122033',
  );

  /// value122034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122034 = MediaTypeCode(
    fhirCode: '122034',
  );

  /// value122035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122035 = MediaTypeCode(
    fhirCode: '122035',
  );

  /// value122036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122036 = MediaTypeCode(
    fhirCode: '122036',
  );

  /// value122037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122037 = MediaTypeCode(
    fhirCode: '122037',
  );

  /// value122038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122038 = MediaTypeCode(
    fhirCode: '122038',
  );

  /// value122039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122039 = MediaTypeCode(
    fhirCode: '122039',
  );

  /// value122041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122041 = MediaTypeCode(
    fhirCode: '122041',
  );

  /// value122042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122042 = MediaTypeCode(
    fhirCode: '122042',
  );

  /// value122043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122043 = MediaTypeCode(
    fhirCode: '122043',
  );

  /// value122044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122044 = MediaTypeCode(
    fhirCode: '122044',
  );

  /// value122045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122045 = MediaTypeCode(
    fhirCode: '122045',
  );

  /// value122046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122046 = MediaTypeCode(
    fhirCode: '122046',
  );

  /// value122047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122047 = MediaTypeCode(
    fhirCode: '122047',
  );

  /// value122048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122048 = MediaTypeCode(
    fhirCode: '122048',
  );

  /// value122049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122049 = MediaTypeCode(
    fhirCode: '122049',
  );

  /// value122052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122052 = MediaTypeCode(
    fhirCode: '122052',
  );

  /// value122053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122053 = MediaTypeCode(
    fhirCode: '122053',
  );

  /// value122054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122054 = MediaTypeCode(
    fhirCode: '122054',
  );

  /// value122055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122055 = MediaTypeCode(
    fhirCode: '122055',
  );

  /// value122056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122056 = MediaTypeCode(
    fhirCode: '122056',
  );

  /// value122057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122057 = MediaTypeCode(
    fhirCode: '122057',
  );

  /// value122058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122058 = MediaTypeCode(
    fhirCode: '122058',
  );

  /// value122059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122059 = MediaTypeCode(
    fhirCode: '122059',
  );

  /// value122060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122060 = MediaTypeCode(
    fhirCode: '122060',
  );

  /// value122061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122061 = MediaTypeCode(
    fhirCode: '122061',
  );

  /// value122062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122062 = MediaTypeCode(
    fhirCode: '122062',
  );

  /// value122072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122072 = MediaTypeCode(
    fhirCode: '122072',
  );

  /// value122073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122073 = MediaTypeCode(
    fhirCode: '122073',
  );

  /// value122075
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122075 = MediaTypeCode(
    fhirCode: '122075',
  );

  /// value122076
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122076 = MediaTypeCode(
    fhirCode: '122076',
  );

  /// value122077
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122077 = MediaTypeCode(
    fhirCode: '122077',
  );

  /// value122078
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122078 = MediaTypeCode(
    fhirCode: '122078',
  );

  /// value122079
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122079 = MediaTypeCode(
    fhirCode: '122079',
  );

  /// value122081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122081 = MediaTypeCode(
    fhirCode: '122081',
  );

  /// value122082
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122082 = MediaTypeCode(
    fhirCode: '122082',
  );

  /// value122083
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122083 = MediaTypeCode(
    fhirCode: '122083',
  );

  /// value122084
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122084 = MediaTypeCode(
    fhirCode: '122084',
  );

  /// value122085
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122085 = MediaTypeCode(
    fhirCode: '122085',
  );

  /// value122086
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122086 = MediaTypeCode(
    fhirCode: '122086',
  );

  /// value122087
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122087 = MediaTypeCode(
    fhirCode: '122087',
  );

  /// value122088
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122088 = MediaTypeCode(
    fhirCode: '122088',
  );

  /// value122089
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122089 = MediaTypeCode(
    fhirCode: '122089',
  );

  /// value122090
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122090 = MediaTypeCode(
    fhirCode: '122090',
  );

  /// value122091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122091 = MediaTypeCode(
    fhirCode: '122091',
  );

  /// value122092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122092 = MediaTypeCode(
    fhirCode: '122092',
  );

  /// value122093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122093 = MediaTypeCode(
    fhirCode: '122093',
  );

  /// value122094
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122094 = MediaTypeCode(
    fhirCode: '122094',
  );

  /// value122095
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122095 = MediaTypeCode(
    fhirCode: '122095',
  );

  /// value122096
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122096 = MediaTypeCode(
    fhirCode: '122096',
  );

  /// value122097
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122097 = MediaTypeCode(
    fhirCode: '122097',
  );

  /// value122098
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122098 = MediaTypeCode(
    fhirCode: '122098',
  );

  /// value122099
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122099 = MediaTypeCode(
    fhirCode: '122099',
  );

  /// value122101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122101 = MediaTypeCode(
    fhirCode: '122101',
  );

  /// value122102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122102 = MediaTypeCode(
    fhirCode: '122102',
  );

  /// value122103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122103 = MediaTypeCode(
    fhirCode: '122103',
  );

  /// value122104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122104 = MediaTypeCode(
    fhirCode: '122104',
  );

  /// value122105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122105 = MediaTypeCode(
    fhirCode: '122105',
  );

  /// value122106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122106 = MediaTypeCode(
    fhirCode: '122106',
  );

  /// value122107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122107 = MediaTypeCode(
    fhirCode: '122107',
  );

  /// value122108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122108 = MediaTypeCode(
    fhirCode: '122108',
  );

  /// value122109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122109 = MediaTypeCode(
    fhirCode: '122109',
  );

  /// value122110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122110 = MediaTypeCode(
    fhirCode: '122110',
  );

  /// value122111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122111 = MediaTypeCode(
    fhirCode: '122111',
  );

  /// value122112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122112 = MediaTypeCode(
    fhirCode: '122112',
  );

  /// value122113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122113 = MediaTypeCode(
    fhirCode: '122113',
  );

  /// value122114
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122114 = MediaTypeCode(
    fhirCode: '122114',
  );

  /// value122120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122120 = MediaTypeCode(
    fhirCode: '122120',
  );

  /// value122121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122121 = MediaTypeCode(
    fhirCode: '122121',
  );

  /// value122122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122122 = MediaTypeCode(
    fhirCode: '122122',
  );

  /// value122123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122123 = MediaTypeCode(
    fhirCode: '122123',
  );

  /// value122124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122124 = MediaTypeCode(
    fhirCode: '122124',
  );

  /// value122125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122125 = MediaTypeCode(
    fhirCode: '122125',
  );

  /// value122126
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122126 = MediaTypeCode(
    fhirCode: '122126',
  );

  /// value122127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122127 = MediaTypeCode(
    fhirCode: '122127',
  );

  /// value122128
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122128 = MediaTypeCode(
    fhirCode: '122128',
  );

  /// value122129
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122129 = MediaTypeCode(
    fhirCode: '122129',
  );

  /// value122130
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122130 = MediaTypeCode(
    fhirCode: '122130',
  );

  /// value122131
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122131 = MediaTypeCode(
    fhirCode: '122131',
  );

  /// value122132
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122132 = MediaTypeCode(
    fhirCode: '122132',
  );

  /// value122133
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122133 = MediaTypeCode(
    fhirCode: '122133',
  );

  /// value122134
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122134 = MediaTypeCode(
    fhirCode: '122134',
  );

  /// value122138
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122138 = MediaTypeCode(
    fhirCode: '122138',
  );

  /// value122139
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122139 = MediaTypeCode(
    fhirCode: '122139',
  );

  /// value122140
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122140 = MediaTypeCode(
    fhirCode: '122140',
  );

  /// value122141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122141 = MediaTypeCode(
    fhirCode: '122141',
  );

  /// value122142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122142 = MediaTypeCode(
    fhirCode: '122142',
  );

  /// value122143
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122143 = MediaTypeCode(
    fhirCode: '122143',
  );

  /// value122144
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122144 = MediaTypeCode(
    fhirCode: '122144',
  );

  /// value122145
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122145 = MediaTypeCode(
    fhirCode: '122145',
  );

  /// value122146
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122146 = MediaTypeCode(
    fhirCode: '122146',
  );

  /// value122147
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122147 = MediaTypeCode(
    fhirCode: '122147',
  );

  /// value122148
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122148 = MediaTypeCode(
    fhirCode: '122148',
  );

  /// value122149
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122149 = MediaTypeCode(
    fhirCode: '122149',
  );

  /// value122150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122150 = MediaTypeCode(
    fhirCode: '122150',
  );

  /// value122151
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122151 = MediaTypeCode(
    fhirCode: '122151',
  );

  /// value122152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122152 = MediaTypeCode(
    fhirCode: '122152',
  );

  /// value122153
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122153 = MediaTypeCode(
    fhirCode: '122153',
  );

  /// value122154
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122154 = MediaTypeCode(
    fhirCode: '122154',
  );

  /// value122157
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122157 = MediaTypeCode(
    fhirCode: '122157',
  );

  /// value122158
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122158 = MediaTypeCode(
    fhirCode: '122158',
  );

  /// value122159
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122159 = MediaTypeCode(
    fhirCode: '122159',
  );

  /// value122160
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122160 = MediaTypeCode(
    fhirCode: '122160',
  );

  /// value122161
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122161 = MediaTypeCode(
    fhirCode: '122161',
  );

  /// value122162
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122162 = MediaTypeCode(
    fhirCode: '122162',
  );

  /// value122163
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122163 = MediaTypeCode(
    fhirCode: '122163',
  );

  /// value122164
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122164 = MediaTypeCode(
    fhirCode: '122164',
  );

  /// value122165
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122165 = MediaTypeCode(
    fhirCode: '122165',
  );

  /// value122166
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122166 = MediaTypeCode(
    fhirCode: '122166',
  );

  /// value122167
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122167 = MediaTypeCode(
    fhirCode: '122167',
  );

  /// value122170
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122170 = MediaTypeCode(
    fhirCode: '122170',
  );

  /// value122171
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122171 = MediaTypeCode(
    fhirCode: '122171',
  );

  /// value122172
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122172 = MediaTypeCode(
    fhirCode: '122172',
  );

  /// value122173
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122173 = MediaTypeCode(
    fhirCode: '122173',
  );

  /// value122175
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122175 = MediaTypeCode(
    fhirCode: '122175',
  );

  /// value122176
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122176 = MediaTypeCode(
    fhirCode: '122176',
  );

  /// value122177
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122177 = MediaTypeCode(
    fhirCode: '122177',
  );

  /// value122178
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122178 = MediaTypeCode(
    fhirCode: '122178',
  );

  /// value122179
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122179 = MediaTypeCode(
    fhirCode: '122179',
  );

  /// value122180
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122180 = MediaTypeCode(
    fhirCode: '122180',
  );

  /// value122181
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122181 = MediaTypeCode(
    fhirCode: '122181',
  );

  /// value122182
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122182 = MediaTypeCode(
    fhirCode: '122182',
  );

  /// value122183
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122183 = MediaTypeCode(
    fhirCode: '122183',
  );

  /// value122185
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122185 = MediaTypeCode(
    fhirCode: '122185',
  );

  /// value122187
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122187 = MediaTypeCode(
    fhirCode: '122187',
  );

  /// value122188
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122188 = MediaTypeCode(
    fhirCode: '122188',
  );

  /// value122189
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122189 = MediaTypeCode(
    fhirCode: '122189',
  );

  /// value122190
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122190 = MediaTypeCode(
    fhirCode: '122190',
  );

  /// value122191
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122191 = MediaTypeCode(
    fhirCode: '122191',
  );

  /// value122192
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122192 = MediaTypeCode(
    fhirCode: '122192',
  );

  /// value122193
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122193 = MediaTypeCode(
    fhirCode: '122193',
  );

  /// value122194
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122194 = MediaTypeCode(
    fhirCode: '122194',
  );

  /// value122195
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122195 = MediaTypeCode(
    fhirCode: '122195',
  );

  /// value122196
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122196 = MediaTypeCode(
    fhirCode: '122196',
  );

  /// value122197
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122197 = MediaTypeCode(
    fhirCode: '122197',
  );

  /// value122198
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122198 = MediaTypeCode(
    fhirCode: '122198',
  );

  /// value122199
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122199 = MediaTypeCode(
    fhirCode: '122199',
  );

  /// value122201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122201 = MediaTypeCode(
    fhirCode: '122201',
  );

  /// value122202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122202 = MediaTypeCode(
    fhirCode: '122202',
  );

  /// value122203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122203 = MediaTypeCode(
    fhirCode: '122203',
  );

  /// value122204
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122204 = MediaTypeCode(
    fhirCode: '122204',
  );

  /// value122205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122205 = MediaTypeCode(
    fhirCode: '122205',
  );

  /// value122206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122206 = MediaTypeCode(
    fhirCode: '122206',
  );

  /// value122207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122207 = MediaTypeCode(
    fhirCode: '122207',
  );

  /// value122208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122208 = MediaTypeCode(
    fhirCode: '122208',
  );

  /// value122209
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122209 = MediaTypeCode(
    fhirCode: '122209',
  );

  /// value122210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122210 = MediaTypeCode(
    fhirCode: '122210',
  );

  /// value122211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122211 = MediaTypeCode(
    fhirCode: '122211',
  );

  /// value122212
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122212 = MediaTypeCode(
    fhirCode: '122212',
  );

  /// value122213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122213 = MediaTypeCode(
    fhirCode: '122213',
  );

  /// value122214
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122214 = MediaTypeCode(
    fhirCode: '122214',
  );

  /// value122215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122215 = MediaTypeCode(
    fhirCode: '122215',
  );

  /// value122216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122216 = MediaTypeCode(
    fhirCode: '122216',
  );

  /// value122217
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122217 = MediaTypeCode(
    fhirCode: '122217',
  );

  /// value122218
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122218 = MediaTypeCode(
    fhirCode: '122218',
  );

  /// value122219
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122219 = MediaTypeCode(
    fhirCode: '122219',
  );

  /// value122220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122220 = MediaTypeCode(
    fhirCode: '122220',
  );

  /// value122221
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122221 = MediaTypeCode(
    fhirCode: '122221',
  );

  /// value122222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122222 = MediaTypeCode(
    fhirCode: '122222',
  );

  /// value122223
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122223 = MediaTypeCode(
    fhirCode: '122223',
  );

  /// value122224
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122224 = MediaTypeCode(
    fhirCode: '122224',
  );

  /// value122225
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122225 = MediaTypeCode(
    fhirCode: '122225',
  );

  /// value122227
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122227 = MediaTypeCode(
    fhirCode: '122227',
  );

  /// value122228
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122228 = MediaTypeCode(
    fhirCode: '122228',
  );

  /// value122229
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122229 = MediaTypeCode(
    fhirCode: '122229',
  );

  /// value122230
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122230 = MediaTypeCode(
    fhirCode: '122230',
  );

  /// value122231
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122231 = MediaTypeCode(
    fhirCode: '122231',
  );

  /// value122232
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122232 = MediaTypeCode(
    fhirCode: '122232',
  );

  /// value122233
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122233 = MediaTypeCode(
    fhirCode: '122233',
  );

  /// value122234
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122234 = MediaTypeCode(
    fhirCode: '122234',
  );

  /// value122235
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122235 = MediaTypeCode(
    fhirCode: '122235',
  );

  /// value122236
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122236 = MediaTypeCode(
    fhirCode: '122236',
  );

  /// value122237
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122237 = MediaTypeCode(
    fhirCode: '122237',
  );

  /// value122238
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122238 = MediaTypeCode(
    fhirCode: '122238',
  );

  /// value122239
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122239 = MediaTypeCode(
    fhirCode: '122239',
  );

  /// value122240
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122240 = MediaTypeCode(
    fhirCode: '122240',
  );

  /// value122241
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122241 = MediaTypeCode(
    fhirCode: '122241',
  );

  /// value122242
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122242 = MediaTypeCode(
    fhirCode: '122242',
  );

  /// value122243
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122243 = MediaTypeCode(
    fhirCode: '122243',
  );

  /// value122244
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122244 = MediaTypeCode(
    fhirCode: '122244',
  );

  /// value122245
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122245 = MediaTypeCode(
    fhirCode: '122245',
  );

  /// value122246
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122246 = MediaTypeCode(
    fhirCode: '122246',
  );

  /// value122247
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122247 = MediaTypeCode(
    fhirCode: '122247',
  );

  /// value122248
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122248 = MediaTypeCode(
    fhirCode: '122248',
  );

  /// value122249
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122249 = MediaTypeCode(
    fhirCode: '122249',
  );

  /// value122250
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122250 = MediaTypeCode(
    fhirCode: '122250',
  );

  /// value122251
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122251 = MediaTypeCode(
    fhirCode: '122251',
  );

  /// value122252
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122252 = MediaTypeCode(
    fhirCode: '122252',
  );

  /// value122253
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122253 = MediaTypeCode(
    fhirCode: '122253',
  );

  /// value122254
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122254 = MediaTypeCode(
    fhirCode: '122254',
  );

  /// value122255
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122255 = MediaTypeCode(
    fhirCode: '122255',
  );

  /// value122256
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122256 = MediaTypeCode(
    fhirCode: '122256',
  );

  /// value122257
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122257 = MediaTypeCode(
    fhirCode: '122257',
  );

  /// value122258
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122258 = MediaTypeCode(
    fhirCode: '122258',
  );

  /// value122259
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122259 = MediaTypeCode(
    fhirCode: '122259',
  );

  /// value122260
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122260 = MediaTypeCode(
    fhirCode: '122260',
  );

  /// value122261
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122261 = MediaTypeCode(
    fhirCode: '122261',
  );

  /// value122262
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122262 = MediaTypeCode(
    fhirCode: '122262',
  );

  /// value122263
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122263 = MediaTypeCode(
    fhirCode: '122263',
  );

  /// value122265
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122265 = MediaTypeCode(
    fhirCode: '122265',
  );

  /// value122266
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122266 = MediaTypeCode(
    fhirCode: '122266',
  );

  /// value122267
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122267 = MediaTypeCode(
    fhirCode: '122267',
  );

  /// value122268
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122268 = MediaTypeCode(
    fhirCode: '122268',
  );

  /// value122269
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122269 = MediaTypeCode(
    fhirCode: '122269',
  );

  /// value122270
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122270 = MediaTypeCode(
    fhirCode: '122270',
  );

  /// value122271
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122271 = MediaTypeCode(
    fhirCode: '122271',
  );

  /// value122272
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122272 = MediaTypeCode(
    fhirCode: '122272',
  );

  /// value122273
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122273 = MediaTypeCode(
    fhirCode: '122273',
  );

  /// value122274
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122274 = MediaTypeCode(
    fhirCode: '122274',
  );

  /// value122275
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122275 = MediaTypeCode(
    fhirCode: '122275',
  );

  /// value122276
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122276 = MediaTypeCode(
    fhirCode: '122276',
  );

  /// value122277
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122277 = MediaTypeCode(
    fhirCode: '122277',
  );

  /// value122278
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122278 = MediaTypeCode(
    fhirCode: '122278',
  );

  /// value122279
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122279 = MediaTypeCode(
    fhirCode: '122279',
  );

  /// value122281
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122281 = MediaTypeCode(
    fhirCode: '122281',
  );

  /// value122282
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122282 = MediaTypeCode(
    fhirCode: '122282',
  );

  /// value122283
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122283 = MediaTypeCode(
    fhirCode: '122283',
  );

  /// value122288
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122288 = MediaTypeCode(
    fhirCode: '122288',
  );

  /// value122291
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122291 = MediaTypeCode(
    fhirCode: '122291',
  );

  /// value122292
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122292 = MediaTypeCode(
    fhirCode: '122292',
  );

  /// value122301
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122301 = MediaTypeCode(
    fhirCode: '122301',
  );

  /// value122302
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122302 = MediaTypeCode(
    fhirCode: '122302',
  );

  /// value122303
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122303 = MediaTypeCode(
    fhirCode: '122303',
  );

  /// value122304
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122304 = MediaTypeCode(
    fhirCode: '122304',
  );

  /// value122305
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122305 = MediaTypeCode(
    fhirCode: '122305',
  );

  /// value122306
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122306 = MediaTypeCode(
    fhirCode: '122306',
  );

  /// value122307
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122307 = MediaTypeCode(
    fhirCode: '122307',
  );

  /// value122308
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122308 = MediaTypeCode(
    fhirCode: '122308',
  );

  /// value122309
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122309 = MediaTypeCode(
    fhirCode: '122309',
  );

  /// value122310
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122310 = MediaTypeCode(
    fhirCode: '122310',
  );

  /// value122311
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122311 = MediaTypeCode(
    fhirCode: '122311',
  );

  /// value122312
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122312 = MediaTypeCode(
    fhirCode: '122312',
  );

  /// value122313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122313 = MediaTypeCode(
    fhirCode: '122313',
  );

  /// value122319
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122319 = MediaTypeCode(
    fhirCode: '122319',
  );

  /// value122320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122320 = MediaTypeCode(
    fhirCode: '122320',
  );

  /// value122321
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122321 = MediaTypeCode(
    fhirCode: '122321',
  );

  /// value122322
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122322 = MediaTypeCode(
    fhirCode: '122322',
  );

  /// value122325
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122325 = MediaTypeCode(
    fhirCode: '122325',
  );

  /// value122330
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122330 = MediaTypeCode(
    fhirCode: '122330',
  );

  /// value122331
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122331 = MediaTypeCode(
    fhirCode: '122331',
  );

  /// value122332
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122332 = MediaTypeCode(
    fhirCode: '122332',
  );

  /// value122333
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122333 = MediaTypeCode(
    fhirCode: '122333',
  );

  /// value122334
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122334 = MediaTypeCode(
    fhirCode: '122334',
  );

  /// value122335
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122335 = MediaTypeCode(
    fhirCode: '122335',
  );

  /// value122336
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122336 = MediaTypeCode(
    fhirCode: '122336',
  );

  /// value122337
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122337 = MediaTypeCode(
    fhirCode: '122337',
  );

  /// value122339
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122339 = MediaTypeCode(
    fhirCode: '122339',
  );

  /// value122340
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122340 = MediaTypeCode(
    fhirCode: '122340',
  );

  /// value122341
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122341 = MediaTypeCode(
    fhirCode: '122341',
  );

  /// value122343
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122343 = MediaTypeCode(
    fhirCode: '122343',
  );

  /// value122344
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122344 = MediaTypeCode(
    fhirCode: '122344',
  );

  /// value122345
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122345 = MediaTypeCode(
    fhirCode: '122345',
  );

  /// value122346
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122346 = MediaTypeCode(
    fhirCode: '122346',
  );

  /// value122347
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122347 = MediaTypeCode(
    fhirCode: '122347',
  );

  /// value122348
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122348 = MediaTypeCode(
    fhirCode: '122348',
  );

  /// value122350
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122350 = MediaTypeCode(
    fhirCode: '122350',
  );

  /// value122351
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122351 = MediaTypeCode(
    fhirCode: '122351',
  );

  /// value122352
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122352 = MediaTypeCode(
    fhirCode: '122352',
  );

  /// value122354
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122354 = MediaTypeCode(
    fhirCode: '122354',
  );

  /// value122355
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122355 = MediaTypeCode(
    fhirCode: '122355',
  );

  /// value122356
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122356 = MediaTypeCode(
    fhirCode: '122356',
  );

  /// value122357
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122357 = MediaTypeCode(
    fhirCode: '122357',
  );

  /// value122360
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122360 = MediaTypeCode(
    fhirCode: '122360',
  );

  /// value122361
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122361 = MediaTypeCode(
    fhirCode: '122361',
  );

  /// value122363
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122363 = MediaTypeCode(
    fhirCode: '122363',
  );

  /// value122364
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122364 = MediaTypeCode(
    fhirCode: '122364',
  );

  /// value122367
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122367 = MediaTypeCode(
    fhirCode: '122367',
  );

  /// value122368
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122368 = MediaTypeCode(
    fhirCode: '122368',
  );

  /// value122369
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122369 = MediaTypeCode(
    fhirCode: '122369',
  );

  /// value122370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122370 = MediaTypeCode(
    fhirCode: '122370',
  );

  /// value122371
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122371 = MediaTypeCode(
    fhirCode: '122371',
  );

  /// value122372
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122372 = MediaTypeCode(
    fhirCode: '122372',
  );

  /// value122374
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122374 = MediaTypeCode(
    fhirCode: '122374',
  );

  /// value122375
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122375 = MediaTypeCode(
    fhirCode: '122375',
  );

  /// value122376
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122376 = MediaTypeCode(
    fhirCode: '122376',
  );

  /// value122380
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122380 = MediaTypeCode(
    fhirCode: '122380',
  );

  /// value122381
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122381 = MediaTypeCode(
    fhirCode: '122381',
  );

  /// value122382
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122382 = MediaTypeCode(
    fhirCode: '122382',
  );

  /// value122383
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122383 = MediaTypeCode(
    fhirCode: '122383',
  );

  /// value122384
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122384 = MediaTypeCode(
    fhirCode: '122384',
  );

  /// value122385
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122385 = MediaTypeCode(
    fhirCode: '122385',
  );

  /// value122386
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122386 = MediaTypeCode(
    fhirCode: '122386',
  );

  /// value122387
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122387 = MediaTypeCode(
    fhirCode: '122387',
  );

  /// value122388
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122388 = MediaTypeCode(
    fhirCode: '122388',
  );

  /// value122389
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122389 = MediaTypeCode(
    fhirCode: '122389',
  );

  /// value122390
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122390 = MediaTypeCode(
    fhirCode: '122390',
  );

  /// value122391
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122391 = MediaTypeCode(
    fhirCode: '122391',
  );

  /// value122393
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122393 = MediaTypeCode(
    fhirCode: '122393',
  );

  /// value122394
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122394 = MediaTypeCode(
    fhirCode: '122394',
  );

  /// value122395
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122395 = MediaTypeCode(
    fhirCode: '122395',
  );

  /// value122398
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122398 = MediaTypeCode(
    fhirCode: '122398',
  );

  /// value122399
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122399 = MediaTypeCode(
    fhirCode: '122399',
  );

  /// value122400
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122400 = MediaTypeCode(
    fhirCode: '122400',
  );

  /// value122401
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122401 = MediaTypeCode(
    fhirCode: '122401',
  );

  /// value122402
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122402 = MediaTypeCode(
    fhirCode: '122402',
  );

  /// value122403
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122403 = MediaTypeCode(
    fhirCode: '122403',
  );

  /// value122404
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122404 = MediaTypeCode(
    fhirCode: '122404',
  );

  /// value122405
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122405 = MediaTypeCode(
    fhirCode: '122405',
  );

  /// value122406
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122406 = MediaTypeCode(
    fhirCode: '122406',
  );

  /// value122407
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122407 = MediaTypeCode(
    fhirCode: '122407',
  );

  /// value122408
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122408 = MediaTypeCode(
    fhirCode: '122408',
  );

  /// value122410
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122410 = MediaTypeCode(
    fhirCode: '122410',
  );

  /// value122411
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122411 = MediaTypeCode(
    fhirCode: '122411',
  );

  /// value122417
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122417 = MediaTypeCode(
    fhirCode: '122417',
  );

  /// value122421
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122421 = MediaTypeCode(
    fhirCode: '122421',
  );

  /// value122422
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122422 = MediaTypeCode(
    fhirCode: '122422',
  );

  /// value122423
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122423 = MediaTypeCode(
    fhirCode: '122423',
  );

  /// value122428
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122428 = MediaTypeCode(
    fhirCode: '122428',
  );

  /// value122429
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122429 = MediaTypeCode(
    fhirCode: '122429',
  );

  /// value122430
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122430 = MediaTypeCode(
    fhirCode: '122430',
  );

  /// value122431
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122431 = MediaTypeCode(
    fhirCode: '122431',
  );

  /// value122432
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122432 = MediaTypeCode(
    fhirCode: '122432',
  );

  /// value122433
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122433 = MediaTypeCode(
    fhirCode: '122433',
  );

  /// value122434
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122434 = MediaTypeCode(
    fhirCode: '122434',
  );

  /// value122435
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122435 = MediaTypeCode(
    fhirCode: '122435',
  );

  /// value122438
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122438 = MediaTypeCode(
    fhirCode: '122438',
  );

  /// value122445
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122445 = MediaTypeCode(
    fhirCode: '122445',
  );

  /// value122446
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122446 = MediaTypeCode(
    fhirCode: '122446',
  );

  /// value122447
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122447 = MediaTypeCode(
    fhirCode: '122447',
  );

  /// value122448
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122448 = MediaTypeCode(
    fhirCode: '122448',
  );

  /// value122449
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122449 = MediaTypeCode(
    fhirCode: '122449',
  );

  /// value122450
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122450 = MediaTypeCode(
    fhirCode: '122450',
  );

  /// value122451
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122451 = MediaTypeCode(
    fhirCode: '122451',
  );

  /// value122452
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122452 = MediaTypeCode(
    fhirCode: '122452',
  );

  /// value122453
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122453 = MediaTypeCode(
    fhirCode: '122453',
  );

  /// value122459
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122459 = MediaTypeCode(
    fhirCode: '122459',
  );

  /// value122461
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122461 = MediaTypeCode(
    fhirCode: '122461',
  );

  /// value122464
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122464 = MediaTypeCode(
    fhirCode: '122464',
  );

  /// value122465
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122465 = MediaTypeCode(
    fhirCode: '122465',
  );

  /// value122466
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122466 = MediaTypeCode(
    fhirCode: '122466',
  );

  /// value122467
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122467 = MediaTypeCode(
    fhirCode: '122467',
  );

  /// value122468
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122468 = MediaTypeCode(
    fhirCode: '122468',
  );

  /// value122469
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122469 = MediaTypeCode(
    fhirCode: '122469',
  );

  /// value122470
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122470 = MediaTypeCode(
    fhirCode: '122470',
  );

  /// value122471
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122471 = MediaTypeCode(
    fhirCode: '122471',
  );

  /// value122472
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122472 = MediaTypeCode(
    fhirCode: '122472',
  );

  /// value122473
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122473 = MediaTypeCode(
    fhirCode: '122473',
  );

  /// value122474
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122474 = MediaTypeCode(
    fhirCode: '122474',
  );

  /// value122475
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122475 = MediaTypeCode(
    fhirCode: '122475',
  );

  /// value122476
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122476 = MediaTypeCode(
    fhirCode: '122476',
  );

  /// value122477
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122477 = MediaTypeCode(
    fhirCode: '122477',
  );

  /// value122480
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122480 = MediaTypeCode(
    fhirCode: '122480',
  );

  /// value122481
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122481 = MediaTypeCode(
    fhirCode: '122481',
  );

  /// value122482
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122482 = MediaTypeCode(
    fhirCode: '122482',
  );

  /// value122485
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122485 = MediaTypeCode(
    fhirCode: '122485',
  );

  /// value122486
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122486 = MediaTypeCode(
    fhirCode: '122486',
  );

  /// value122487
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122487 = MediaTypeCode(
    fhirCode: '122487',
  );

  /// value122488
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122488 = MediaTypeCode(
    fhirCode: '122488',
  );

  /// value122489
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122489 = MediaTypeCode(
    fhirCode: '122489',
  );

  /// value122490
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122490 = MediaTypeCode(
    fhirCode: '122490',
  );

  /// value122491
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122491 = MediaTypeCode(
    fhirCode: '122491',
  );

  /// value122493
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122493 = MediaTypeCode(
    fhirCode: '122493',
  );

  /// value122495
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122495 = MediaTypeCode(
    fhirCode: '122495',
  );

  /// value122496
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122496 = MediaTypeCode(
    fhirCode: '122496',
  );

  /// value122497
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122497 = MediaTypeCode(
    fhirCode: '122497',
  );

  /// value122498
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122498 = MediaTypeCode(
    fhirCode: '122498',
  );

  /// value122499
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122499 = MediaTypeCode(
    fhirCode: '122499',
  );

  /// value122501
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122501 = MediaTypeCode(
    fhirCode: '122501',
  );

  /// value122502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122502 = MediaTypeCode(
    fhirCode: '122502',
  );

  /// value122503
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122503 = MediaTypeCode(
    fhirCode: '122503',
  );

  /// value122505
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122505 = MediaTypeCode(
    fhirCode: '122505',
  );

  /// value122507
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122507 = MediaTypeCode(
    fhirCode: '122507',
  );

  /// value122508
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122508 = MediaTypeCode(
    fhirCode: '122508',
  );

  /// value122509
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122509 = MediaTypeCode(
    fhirCode: '122509',
  );

  /// value122510
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122510 = MediaTypeCode(
    fhirCode: '122510',
  );

  /// value122511
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122511 = MediaTypeCode(
    fhirCode: '122511',
  );

  /// value122516
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122516 = MediaTypeCode(
    fhirCode: '122516',
  );

  /// value122517
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122517 = MediaTypeCode(
    fhirCode: '122517',
  );

  /// value122528
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122528 = MediaTypeCode(
    fhirCode: '122528',
  );

  /// value122529
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122529 = MediaTypeCode(
    fhirCode: '122529',
  );

  /// value122542
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122542 = MediaTypeCode(
    fhirCode: '122542',
  );

  /// value122544
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122544 = MediaTypeCode(
    fhirCode: '122544',
  );

  /// value122545
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122545 = MediaTypeCode(
    fhirCode: '122545',
  );

  /// value122546
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122546 = MediaTypeCode(
    fhirCode: '122546',
  );

  /// value122547
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122547 = MediaTypeCode(
    fhirCode: '122547',
  );

  /// value122548
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122548 = MediaTypeCode(
    fhirCode: '122548',
  );

  /// value122549
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122549 = MediaTypeCode(
    fhirCode: '122549',
  );

  /// value122550
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122550 = MediaTypeCode(
    fhirCode: '122550',
  );

  /// value122551
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122551 = MediaTypeCode(
    fhirCode: '122551',
  );

  /// value122554
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122554 = MediaTypeCode(
    fhirCode: '122554',
  );

  /// value122555
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122555 = MediaTypeCode(
    fhirCode: '122555',
  );

  /// value122558
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122558 = MediaTypeCode(
    fhirCode: '122558',
  );

  /// value122559
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122559 = MediaTypeCode(
    fhirCode: '122559',
  );

  /// value122560
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122560 = MediaTypeCode(
    fhirCode: '122560',
  );

  /// value122562
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122562 = MediaTypeCode(
    fhirCode: '122562',
  );

  /// value122563
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122563 = MediaTypeCode(
    fhirCode: '122563',
  );

  /// value122564
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122564 = MediaTypeCode(
    fhirCode: '122564',
  );

  /// value122565
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122565 = MediaTypeCode(
    fhirCode: '122565',
  );

  /// value122566
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122566 = MediaTypeCode(
    fhirCode: '122566',
  );

  /// value122572
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122572 = MediaTypeCode(
    fhirCode: '122572',
  );

  /// value122574
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122574 = MediaTypeCode(
    fhirCode: '122574',
  );

  /// value122575
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122575 = MediaTypeCode(
    fhirCode: '122575',
  );

  /// value122582
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122582 = MediaTypeCode(
    fhirCode: '122582',
  );

  /// value122600
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122600 = MediaTypeCode(
    fhirCode: '122600',
  );

  /// value122601
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122601 = MediaTypeCode(
    fhirCode: '122601',
  );

  /// value122602
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122602 = MediaTypeCode(
    fhirCode: '122602',
  );

  /// value122603
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122603 = MediaTypeCode(
    fhirCode: '122603',
  );

  /// value122604
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122604 = MediaTypeCode(
    fhirCode: '122604',
  );

  /// value122605
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122605 = MediaTypeCode(
    fhirCode: '122605',
  );

  /// value122606
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122606 = MediaTypeCode(
    fhirCode: '122606',
  );

  /// value122607
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122607 = MediaTypeCode(
    fhirCode: '122607',
  );

  /// value122608
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122608 = MediaTypeCode(
    fhirCode: '122608',
  );

  /// value122609
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122609 = MediaTypeCode(
    fhirCode: '122609',
  );

  /// value122611
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122611 = MediaTypeCode(
    fhirCode: '122611',
  );

  /// value122612
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122612 = MediaTypeCode(
    fhirCode: '122612',
  );

  /// value122616
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122616 = MediaTypeCode(
    fhirCode: '122616',
  );

  /// value122617
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122617 = MediaTypeCode(
    fhirCode: '122617',
  );

  /// value122618
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122618 = MediaTypeCode(
    fhirCode: '122618',
  );

  /// value122619
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122619 = MediaTypeCode(
    fhirCode: '122619',
  );

  /// value122620
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122620 = MediaTypeCode(
    fhirCode: '122620',
  );

  /// value122621
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122621 = MediaTypeCode(
    fhirCode: '122621',
  );

  /// value122624
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122624 = MediaTypeCode(
    fhirCode: '122624',
  );

  /// value122627
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122627 = MediaTypeCode(
    fhirCode: '122627',
  );

  /// value122628
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122628 = MediaTypeCode(
    fhirCode: '122628',
  );

  /// value122631
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122631 = MediaTypeCode(
    fhirCode: '122631',
  );

  /// value122633
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122633 = MediaTypeCode(
    fhirCode: '122633',
  );

  /// value122634
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122634 = MediaTypeCode(
    fhirCode: '122634',
  );

  /// value122635
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122635 = MediaTypeCode(
    fhirCode: '122635',
  );

  /// value122636
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122636 = MediaTypeCode(
    fhirCode: '122636',
  );

  /// value122637
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122637 = MediaTypeCode(
    fhirCode: '122637',
  );

  /// value122638
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122638 = MediaTypeCode(
    fhirCode: '122638',
  );

  /// value122639
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122639 = MediaTypeCode(
    fhirCode: '122639',
  );

  /// value122640
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122640 = MediaTypeCode(
    fhirCode: '122640',
  );

  /// value122642
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122642 = MediaTypeCode(
    fhirCode: '122642',
  );

  /// value122643
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122643 = MediaTypeCode(
    fhirCode: '122643',
  );

  /// value122645
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122645 = MediaTypeCode(
    fhirCode: '122645',
  );

  /// value122650
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122650 = MediaTypeCode(
    fhirCode: '122650',
  );

  /// value122651
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122651 = MediaTypeCode(
    fhirCode: '122651',
  );

  /// value122652
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122652 = MediaTypeCode(
    fhirCode: '122652',
  );

  /// value122655
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122655 = MediaTypeCode(
    fhirCode: '122655',
  );

  /// value122656
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122656 = MediaTypeCode(
    fhirCode: '122656',
  );

  /// value122657
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122657 = MediaTypeCode(
    fhirCode: '122657',
  );

  /// value122658
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122658 = MediaTypeCode(
    fhirCode: '122658',
  );

  /// value122659
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122659 = MediaTypeCode(
    fhirCode: '122659',
  );

  /// value122660
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122660 = MediaTypeCode(
    fhirCode: '122660',
  );

  /// value122661
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122661 = MediaTypeCode(
    fhirCode: '122661',
  );

  /// value122664
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122664 = MediaTypeCode(
    fhirCode: '122664',
  );

  /// value122665
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122665 = MediaTypeCode(
    fhirCode: '122665',
  );

  /// value122666
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122666 = MediaTypeCode(
    fhirCode: '122666',
  );

  /// value122667
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122667 = MediaTypeCode(
    fhirCode: '122667',
  );

  /// value122668
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122668 = MediaTypeCode(
    fhirCode: '122668',
  );

  /// value122670
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122670 = MediaTypeCode(
    fhirCode: '122670',
  );

  /// value122675
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122675 = MediaTypeCode(
    fhirCode: '122675',
  );

  /// value122680
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122680 = MediaTypeCode(
    fhirCode: '122680',
  );

  /// value122683
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122683 = MediaTypeCode(
    fhirCode: '122683',
  );

  /// value122684
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122684 = MediaTypeCode(
    fhirCode: '122684',
  );

  /// value122685
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122685 = MediaTypeCode(
    fhirCode: '122685',
  );

  /// value122686
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122686 = MediaTypeCode(
    fhirCode: '122686',
  );

  /// value122687
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122687 = MediaTypeCode(
    fhirCode: '122687',
  );

  /// value122698
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122698 = MediaTypeCode(
    fhirCode: '122698',
  );

  /// value122699
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122699 = MediaTypeCode(
    fhirCode: '122699',
  );

  /// value122700
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122700 = MediaTypeCode(
    fhirCode: '122700',
  );

  /// value122701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122701 = MediaTypeCode(
    fhirCode: '122701',
  );

  /// value122702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122702 = MediaTypeCode(
    fhirCode: '122702',
  );

  /// value122703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122703 = MediaTypeCode(
    fhirCode: '122703',
  );

  /// value122704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122704 = MediaTypeCode(
    fhirCode: '122704',
  );

  /// value122705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122705 = MediaTypeCode(
    fhirCode: '122705',
  );

  /// value122706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122706 = MediaTypeCode(
    fhirCode: '122706',
  );

  /// value122707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122707 = MediaTypeCode(
    fhirCode: '122707',
  );

  /// value122708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122708 = MediaTypeCode(
    fhirCode: '122708',
  );

  /// value122709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122709 = MediaTypeCode(
    fhirCode: '122709',
  );

  /// value122710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122710 = MediaTypeCode(
    fhirCode: '122710',
  );

  /// value122711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122711 = MediaTypeCode(
    fhirCode: '122711',
  );

  /// value122712
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122712 = MediaTypeCode(
    fhirCode: '122712',
  );

  /// value122713
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122713 = MediaTypeCode(
    fhirCode: '122713',
  );

  /// value122715
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122715 = MediaTypeCode(
    fhirCode: '122715',
  );

  /// value122716
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122716 = MediaTypeCode(
    fhirCode: '122716',
  );

  /// value122717
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122717 = MediaTypeCode(
    fhirCode: '122717',
  );

  /// value122718
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122718 = MediaTypeCode(
    fhirCode: '122718',
  );

  /// value122720
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122720 = MediaTypeCode(
    fhirCode: '122720',
  );

  /// value122721
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122721 = MediaTypeCode(
    fhirCode: '122721',
  );

  /// value122726
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122726 = MediaTypeCode(
    fhirCode: '122726',
  );

  /// value122727
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122727 = MediaTypeCode(
    fhirCode: '122727',
  );

  /// value122728
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122728 = MediaTypeCode(
    fhirCode: '122728',
  );

  /// value122729
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122729 = MediaTypeCode(
    fhirCode: '122729',
  );

  /// value122730
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122730 = MediaTypeCode(
    fhirCode: '122730',
  );

  /// value122731
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122731 = MediaTypeCode(
    fhirCode: '122731',
  );

  /// value122732
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122732 = MediaTypeCode(
    fhirCode: '122732',
  );

  /// value122733
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122733 = MediaTypeCode(
    fhirCode: '122733',
  );

  /// value122734
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122734 = MediaTypeCode(
    fhirCode: '122734',
  );

  /// value122735
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122735 = MediaTypeCode(
    fhirCode: '122735',
  );

  /// value122739
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122739 = MediaTypeCode(
    fhirCode: '122739',
  );

  /// value122740
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122740 = MediaTypeCode(
    fhirCode: '122740',
  );

  /// value122741
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122741 = MediaTypeCode(
    fhirCode: '122741',
  );

  /// value122742
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122742 = MediaTypeCode(
    fhirCode: '122742',
  );

  /// value122743
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122743 = MediaTypeCode(
    fhirCode: '122743',
  );

  /// value122744
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122744 = MediaTypeCode(
    fhirCode: '122744',
  );

  /// value122745
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122745 = MediaTypeCode(
    fhirCode: '122745',
  );

  /// value122748
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122748 = MediaTypeCode(
    fhirCode: '122748',
  );

  /// value122750
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122750 = MediaTypeCode(
    fhirCode: '122750',
  );

  /// value122751
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122751 = MediaTypeCode(
    fhirCode: '122751',
  );

  /// value122752
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122752 = MediaTypeCode(
    fhirCode: '122752',
  );

  /// value122753
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122753 = MediaTypeCode(
    fhirCode: '122753',
  );

  /// value122755
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122755 = MediaTypeCode(
    fhirCode: '122755',
  );

  /// value122756
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122756 = MediaTypeCode(
    fhirCode: '122756',
  );

  /// value122757
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122757 = MediaTypeCode(
    fhirCode: '122757',
  );

  /// value122758
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122758 = MediaTypeCode(
    fhirCode: '122758',
  );

  /// value122759
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122759 = MediaTypeCode(
    fhirCode: '122759',
  );

  /// value122760
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122760 = MediaTypeCode(
    fhirCode: '122760',
  );

  /// value122762
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122762 = MediaTypeCode(
    fhirCode: '122762',
  );

  /// value122764
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122764 = MediaTypeCode(
    fhirCode: '122764',
  );

  /// value122768
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122768 = MediaTypeCode(
    fhirCode: '122768',
  );

  /// value122769
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122769 = MediaTypeCode(
    fhirCode: '122769',
  );

  /// value122770
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122770 = MediaTypeCode(
    fhirCode: '122770',
  );

  /// value122771
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122771 = MediaTypeCode(
    fhirCode: '122771',
  );

  /// value122772
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122772 = MediaTypeCode(
    fhirCode: '122772',
  );

  /// value122773
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122773 = MediaTypeCode(
    fhirCode: '122773',
  );

  /// value122775
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122775 = MediaTypeCode(
    fhirCode: '122775',
  );

  /// value122776
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122776 = MediaTypeCode(
    fhirCode: '122776',
  );

  /// value122781
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122781 = MediaTypeCode(
    fhirCode: '122781',
  );

  /// value122782
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122782 = MediaTypeCode(
    fhirCode: '122782',
  );

  /// value122783
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122783 = MediaTypeCode(
    fhirCode: '122783',
  );

  /// value122784
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122784 = MediaTypeCode(
    fhirCode: '122784',
  );

  /// value122785
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122785 = MediaTypeCode(
    fhirCode: '122785',
  );

  /// value122791
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122791 = MediaTypeCode(
    fhirCode: '122791',
  );

  /// value122792
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122792 = MediaTypeCode(
    fhirCode: '122792',
  );

  /// value122793
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122793 = MediaTypeCode(
    fhirCode: '122793',
  );

  /// value122795
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122795 = MediaTypeCode(
    fhirCode: '122795',
  );

  /// value122796
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122796 = MediaTypeCode(
    fhirCode: '122796',
  );

  /// value122797
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122797 = MediaTypeCode(
    fhirCode: '122797',
  );

  /// value122799
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value122799 = MediaTypeCode(
    fhirCode: '122799',
  );

  /// value123001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value123001 = MediaTypeCode(
    fhirCode: '123001',
  );

  /// value123003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value123003 = MediaTypeCode(
    fhirCode: '123003',
  );

  /// value123004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value123004 = MediaTypeCode(
    fhirCode: '123004',
  );

  /// value123005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value123005 = MediaTypeCode(
    fhirCode: '123005',
  );

  /// value123006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value123006 = MediaTypeCode(
    fhirCode: '123006',
  );

  /// value123007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value123007 = MediaTypeCode(
    fhirCode: '123007',
  );

  /// value123009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value123009 = MediaTypeCode(
    fhirCode: '123009',
  );

  /// value123010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value123010 = MediaTypeCode(
    fhirCode: '123010',
  );

  /// value123011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value123011 = MediaTypeCode(
    fhirCode: '123011',
  );

  /// value123012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value123012 = MediaTypeCode(
    fhirCode: '123012',
  );

  /// value123014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value123014 = MediaTypeCode(
    fhirCode: '123014',
  );

  /// value123015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value123015 = MediaTypeCode(
    fhirCode: '123015',
  );

  /// value123016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value123016 = MediaTypeCode(
    fhirCode: '123016',
  );

  /// value123019
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value123019 = MediaTypeCode(
    fhirCode: '123019',
  );

  /// value123101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value123101 = MediaTypeCode(
    fhirCode: '123101',
  );

  /// value123102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value123102 = MediaTypeCode(
    fhirCode: '123102',
  );

  /// value123103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value123103 = MediaTypeCode(
    fhirCode: '123103',
  );

  /// value123104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value123104 = MediaTypeCode(
    fhirCode: '123104',
  );

  /// value123105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value123105 = MediaTypeCode(
    fhirCode: '123105',
  );

  /// value123106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value123106 = MediaTypeCode(
    fhirCode: '123106',
  );

  /// value123107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value123107 = MediaTypeCode(
    fhirCode: '123107',
  );

  /// value123108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value123108 = MediaTypeCode(
    fhirCode: '123108',
  );

  /// value123109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value123109 = MediaTypeCode(
    fhirCode: '123109',
  );

  /// value123110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value123110 = MediaTypeCode(
    fhirCode: '123110',
  );

  /// value123111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value123111 = MediaTypeCode(
    fhirCode: '123111',
  );

  /// value125000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125000 = MediaTypeCode(
    fhirCode: '125000',
  );

  /// value125001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125001 = MediaTypeCode(
    fhirCode: '125001',
  );

  /// value125002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125002 = MediaTypeCode(
    fhirCode: '125002',
  );

  /// value125003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125003 = MediaTypeCode(
    fhirCode: '125003',
  );

  /// value125004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125004 = MediaTypeCode(
    fhirCode: '125004',
  );

  /// value125005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125005 = MediaTypeCode(
    fhirCode: '125005',
  );

  /// value125006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125006 = MediaTypeCode(
    fhirCode: '125006',
  );

  /// value125007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125007 = MediaTypeCode(
    fhirCode: '125007',
  );

  /// value125008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125008 = MediaTypeCode(
    fhirCode: '125008',
  );

  /// value125009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125009 = MediaTypeCode(
    fhirCode: '125009',
  );

  /// value125010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125010 = MediaTypeCode(
    fhirCode: '125010',
  );

  /// value125011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125011 = MediaTypeCode(
    fhirCode: '125011',
  );

  /// value125012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125012 = MediaTypeCode(
    fhirCode: '125012',
  );

  /// value125013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125013 = MediaTypeCode(
    fhirCode: '125013',
  );

  /// value125015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125015 = MediaTypeCode(
    fhirCode: '125015',
  );

  /// value125016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125016 = MediaTypeCode(
    fhirCode: '125016',
  );

  /// value125021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125021 = MediaTypeCode(
    fhirCode: '125021',
  );

  /// value125022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125022 = MediaTypeCode(
    fhirCode: '125022',
  );

  /// value125023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125023 = MediaTypeCode(
    fhirCode: '125023',
  );

  /// value125024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125024 = MediaTypeCode(
    fhirCode: '125024',
  );

  /// value125025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125025 = MediaTypeCode(
    fhirCode: '125025',
  );

  /// value125030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125030 = MediaTypeCode(
    fhirCode: '125030',
  );

  /// value125031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125031 = MediaTypeCode(
    fhirCode: '125031',
  );

  /// value125032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125032 = MediaTypeCode(
    fhirCode: '125032',
  );

  /// value125033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125033 = MediaTypeCode(
    fhirCode: '125033',
  );

  /// value125034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125034 = MediaTypeCode(
    fhirCode: '125034',
  );

  /// value125035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125035 = MediaTypeCode(
    fhirCode: '125035',
  );

  /// value125036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125036 = MediaTypeCode(
    fhirCode: '125036',
  );

  /// value125037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125037 = MediaTypeCode(
    fhirCode: '125037',
  );

  /// value125038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125038 = MediaTypeCode(
    fhirCode: '125038',
  );

  /// value125040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125040 = MediaTypeCode(
    fhirCode: '125040',
  );

  /// value125041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125041 = MediaTypeCode(
    fhirCode: '125041',
  );

  /// value125100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125100 = MediaTypeCode(
    fhirCode: '125100',
  );

  /// value125101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125101 = MediaTypeCode(
    fhirCode: '125101',
  );

  /// value125102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125102 = MediaTypeCode(
    fhirCode: '125102',
  );

  /// value125105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125105 = MediaTypeCode(
    fhirCode: '125105',
  );

  /// value125106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125106 = MediaTypeCode(
    fhirCode: '125106',
  );

  /// value125107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125107 = MediaTypeCode(
    fhirCode: '125107',
  );

  /// value125195
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125195 = MediaTypeCode(
    fhirCode: '125195',
  );

  /// value125196
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125196 = MediaTypeCode(
    fhirCode: '125196',
  );

  /// value125197
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125197 = MediaTypeCode(
    fhirCode: '125197',
  );

  /// value125200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125200 = MediaTypeCode(
    fhirCode: '125200',
  );

  /// value125201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125201 = MediaTypeCode(
    fhirCode: '125201',
  );

  /// value125202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125202 = MediaTypeCode(
    fhirCode: '125202',
  );

  /// value125203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125203 = MediaTypeCode(
    fhirCode: '125203',
  );

  /// value125204
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125204 = MediaTypeCode(
    fhirCode: '125204',
  );

  /// value125205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125205 = MediaTypeCode(
    fhirCode: '125205',
  );

  /// value125206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125206 = MediaTypeCode(
    fhirCode: '125206',
  );

  /// value125207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125207 = MediaTypeCode(
    fhirCode: '125207',
  );

  /// value125208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125208 = MediaTypeCode(
    fhirCode: '125208',
  );

  /// value125209
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125209 = MediaTypeCode(
    fhirCode: '125209',
  );

  /// value125210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125210 = MediaTypeCode(
    fhirCode: '125210',
  );

  /// value125211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125211 = MediaTypeCode(
    fhirCode: '125211',
  );

  /// value125212
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125212 = MediaTypeCode(
    fhirCode: '125212',
  );

  /// value125213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125213 = MediaTypeCode(
    fhirCode: '125213',
  );

  /// value125214
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125214 = MediaTypeCode(
    fhirCode: '125214',
  );

  /// value125215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125215 = MediaTypeCode(
    fhirCode: '125215',
  );

  /// value125216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125216 = MediaTypeCode(
    fhirCode: '125216',
  );

  /// value125217
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125217 = MediaTypeCode(
    fhirCode: '125217',
  );

  /// value125218
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125218 = MediaTypeCode(
    fhirCode: '125218',
  );

  /// value125219
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125219 = MediaTypeCode(
    fhirCode: '125219',
  );

  /// value125220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125220 = MediaTypeCode(
    fhirCode: '125220',
  );

  /// value125221
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125221 = MediaTypeCode(
    fhirCode: '125221',
  );

  /// value125222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125222 = MediaTypeCode(
    fhirCode: '125222',
  );

  /// value125223
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125223 = MediaTypeCode(
    fhirCode: '125223',
  );

  /// value125224
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125224 = MediaTypeCode(
    fhirCode: '125224',
  );

  /// value125225
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125225 = MediaTypeCode(
    fhirCode: '125225',
  );

  /// value125226
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125226 = MediaTypeCode(
    fhirCode: '125226',
  );

  /// value125227
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125227 = MediaTypeCode(
    fhirCode: '125227',
  );

  /// value125228
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125228 = MediaTypeCode(
    fhirCode: '125228',
  );

  /// value125230
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125230 = MediaTypeCode(
    fhirCode: '125230',
  );

  /// value125231
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125231 = MediaTypeCode(
    fhirCode: '125231',
  );

  /// value125233
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125233 = MediaTypeCode(
    fhirCode: '125233',
  );

  /// value125234
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125234 = MediaTypeCode(
    fhirCode: '125234',
  );

  /// value125235
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125235 = MediaTypeCode(
    fhirCode: '125235',
  );

  /// value125236
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125236 = MediaTypeCode(
    fhirCode: '125236',
  );

  /// value125237
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125237 = MediaTypeCode(
    fhirCode: '125237',
  );

  /// value125238
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125238 = MediaTypeCode(
    fhirCode: '125238',
  );

  /// value125239
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125239 = MediaTypeCode(
    fhirCode: '125239',
  );

  /// value125240
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125240 = MediaTypeCode(
    fhirCode: '125240',
  );

  /// value125241
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125241 = MediaTypeCode(
    fhirCode: '125241',
  );

  /// value125242
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125242 = MediaTypeCode(
    fhirCode: '125242',
  );

  /// value125251
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125251 = MediaTypeCode(
    fhirCode: '125251',
  );

  /// value125252
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125252 = MediaTypeCode(
    fhirCode: '125252',
  );

  /// value125253
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125253 = MediaTypeCode(
    fhirCode: '125253',
  );

  /// value125254
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125254 = MediaTypeCode(
    fhirCode: '125254',
  );

  /// value125255
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125255 = MediaTypeCode(
    fhirCode: '125255',
  );

  /// value125256
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125256 = MediaTypeCode(
    fhirCode: '125256',
  );

  /// value125257
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125257 = MediaTypeCode(
    fhirCode: '125257',
  );

  /// value125258
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125258 = MediaTypeCode(
    fhirCode: '125258',
  );

  /// value125259
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125259 = MediaTypeCode(
    fhirCode: '125259',
  );

  /// value125261
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125261 = MediaTypeCode(
    fhirCode: '125261',
  );

  /// value125262
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125262 = MediaTypeCode(
    fhirCode: '125262',
  );

  /// value125263
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125263 = MediaTypeCode(
    fhirCode: '125263',
  );

  /// value125264
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125264 = MediaTypeCode(
    fhirCode: '125264',
  );

  /// value125265
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125265 = MediaTypeCode(
    fhirCode: '125265',
  );

  /// value125270
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125270 = MediaTypeCode(
    fhirCode: '125270',
  );

  /// value125271
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125271 = MediaTypeCode(
    fhirCode: '125271',
  );

  /// value125272
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125272 = MediaTypeCode(
    fhirCode: '125272',
  );

  /// value125273
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125273 = MediaTypeCode(
    fhirCode: '125273',
  );

  /// value125901
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125901 = MediaTypeCode(
    fhirCode: '125901',
  );

  /// value125902
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125902 = MediaTypeCode(
    fhirCode: '125902',
  );

  /// value125903
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125903 = MediaTypeCode(
    fhirCode: '125903',
  );

  /// value125904
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125904 = MediaTypeCode(
    fhirCode: '125904',
  );

  /// value125905
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125905 = MediaTypeCode(
    fhirCode: '125905',
  );

  /// value125906
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125906 = MediaTypeCode(
    fhirCode: '125906',
  );

  /// value125907
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125907 = MediaTypeCode(
    fhirCode: '125907',
  );

  /// value125908
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value125908 = MediaTypeCode(
    fhirCode: '125908',
  );

  /// value126000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126000 = MediaTypeCode(
    fhirCode: '126000',
  );

  /// value126001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126001 = MediaTypeCode(
    fhirCode: '126001',
  );

  /// value126002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126002 = MediaTypeCode(
    fhirCode: '126002',
  );

  /// value126003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126003 = MediaTypeCode(
    fhirCode: '126003',
  );

  /// value126010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126010 = MediaTypeCode(
    fhirCode: '126010',
  );

  /// value126011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126011 = MediaTypeCode(
    fhirCode: '126011',
  );

  /// value126020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126020 = MediaTypeCode(
    fhirCode: '126020',
  );

  /// value126021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126021 = MediaTypeCode(
    fhirCode: '126021',
  );

  /// value126022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126022 = MediaTypeCode(
    fhirCode: '126022',
  );

  /// value126030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126030 = MediaTypeCode(
    fhirCode: '126030',
  );

  /// value126031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126031 = MediaTypeCode(
    fhirCode: '126031',
  );

  /// value126032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126032 = MediaTypeCode(
    fhirCode: '126032',
  );

  /// value126033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126033 = MediaTypeCode(
    fhirCode: '126033',
  );

  /// value126034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126034 = MediaTypeCode(
    fhirCode: '126034',
  );

  /// value126035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126035 = MediaTypeCode(
    fhirCode: '126035',
  );

  /// value126036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126036 = MediaTypeCode(
    fhirCode: '126036',
  );

  /// value126037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126037 = MediaTypeCode(
    fhirCode: '126037',
  );

  /// value126038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126038 = MediaTypeCode(
    fhirCode: '126038',
  );

  /// value126039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126039 = MediaTypeCode(
    fhirCode: '126039',
  );

  /// value126040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126040 = MediaTypeCode(
    fhirCode: '126040',
  );

  /// value126050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126050 = MediaTypeCode(
    fhirCode: '126050',
  );

  /// value126051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126051 = MediaTypeCode(
    fhirCode: '126051',
  );

  /// value126052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126052 = MediaTypeCode(
    fhirCode: '126052',
  );

  /// value126060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126060 = MediaTypeCode(
    fhirCode: '126060',
  );

  /// value126061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126061 = MediaTypeCode(
    fhirCode: '126061',
  );

  /// value126062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126062 = MediaTypeCode(
    fhirCode: '126062',
  );

  /// value126063
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126063 = MediaTypeCode(
    fhirCode: '126063',
  );

  /// value126064
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126064 = MediaTypeCode(
    fhirCode: '126064',
  );

  /// value126065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126065 = MediaTypeCode(
    fhirCode: '126065',
  );

  /// value126066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126066 = MediaTypeCode(
    fhirCode: '126066',
  );

  /// value126067
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126067 = MediaTypeCode(
    fhirCode: '126067',
  );

  /// value126070
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126070 = MediaTypeCode(
    fhirCode: '126070',
  );

  /// value126071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126071 = MediaTypeCode(
    fhirCode: '126071',
  );

  /// value126072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126072 = MediaTypeCode(
    fhirCode: '126072',
  );

  /// value126073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126073 = MediaTypeCode(
    fhirCode: '126073',
  );

  /// value126074
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126074 = MediaTypeCode(
    fhirCode: '126074',
  );

  /// value126075
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126075 = MediaTypeCode(
    fhirCode: '126075',
  );

  /// value126080
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126080 = MediaTypeCode(
    fhirCode: '126080',
  );

  /// value126081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126081 = MediaTypeCode(
    fhirCode: '126081',
  );

  /// value126100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126100 = MediaTypeCode(
    fhirCode: '126100',
  );

  /// value126200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126200 = MediaTypeCode(
    fhirCode: '126200',
  );

  /// value126201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126201 = MediaTypeCode(
    fhirCode: '126201',
  );

  /// value126202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126202 = MediaTypeCode(
    fhirCode: '126202',
  );

  /// value126203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126203 = MediaTypeCode(
    fhirCode: '126203',
  );

  /// value126220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126220 = MediaTypeCode(
    fhirCode: '126220',
  );

  /// value126300
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126300 = MediaTypeCode(
    fhirCode: '126300',
  );

  /// value126301
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126301 = MediaTypeCode(
    fhirCode: '126301',
  );

  /// value126302
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126302 = MediaTypeCode(
    fhirCode: '126302',
  );

  /// value126303
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126303 = MediaTypeCode(
    fhirCode: '126303',
  );

  /// value126310
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126310 = MediaTypeCode(
    fhirCode: '126310',
  );

  /// value126311
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126311 = MediaTypeCode(
    fhirCode: '126311',
  );

  /// value126312
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126312 = MediaTypeCode(
    fhirCode: '126312',
  );

  /// value126313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126313 = MediaTypeCode(
    fhirCode: '126313',
  );

  /// value126314
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126314 = MediaTypeCode(
    fhirCode: '126314',
  );

  /// value126320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126320 = MediaTypeCode(
    fhirCode: '126320',
  );

  /// value126321
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126321 = MediaTypeCode(
    fhirCode: '126321',
  );

  /// value126322
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126322 = MediaTypeCode(
    fhirCode: '126322',
  );

  /// value126330
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126330 = MediaTypeCode(
    fhirCode: '126330',
  );

  /// value126331
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126331 = MediaTypeCode(
    fhirCode: '126331',
  );

  /// value126340
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126340 = MediaTypeCode(
    fhirCode: '126340',
  );

  /// value126341
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126341 = MediaTypeCode(
    fhirCode: '126341',
  );

  /// value126342
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126342 = MediaTypeCode(
    fhirCode: '126342',
  );

  /// value126343
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126343 = MediaTypeCode(
    fhirCode: '126343',
  );

  /// value126344
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126344 = MediaTypeCode(
    fhirCode: '126344',
  );

  /// value126350
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126350 = MediaTypeCode(
    fhirCode: '126350',
  );

  /// value126351
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126351 = MediaTypeCode(
    fhirCode: '126351',
  );

  /// value126352
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126352 = MediaTypeCode(
    fhirCode: '126352',
  );

  /// value126353
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126353 = MediaTypeCode(
    fhirCode: '126353',
  );

  /// value126360
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126360 = MediaTypeCode(
    fhirCode: '126360',
  );

  /// value126361
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126361 = MediaTypeCode(
    fhirCode: '126361',
  );

  /// value126362
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126362 = MediaTypeCode(
    fhirCode: '126362',
  );

  /// value126363
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126363 = MediaTypeCode(
    fhirCode: '126363',
  );

  /// value126364
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126364 = MediaTypeCode(
    fhirCode: '126364',
  );

  /// value126370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126370 = MediaTypeCode(
    fhirCode: '126370',
  );

  /// value126371
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126371 = MediaTypeCode(
    fhirCode: '126371',
  );

  /// value126372
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126372 = MediaTypeCode(
    fhirCode: '126372',
  );

  /// value126373
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126373 = MediaTypeCode(
    fhirCode: '126373',
  );

  /// value126374
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126374 = MediaTypeCode(
    fhirCode: '126374',
  );

  /// value126375
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126375 = MediaTypeCode(
    fhirCode: '126375',
  );

  /// value126376
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126376 = MediaTypeCode(
    fhirCode: '126376',
  );

  /// value126377
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126377 = MediaTypeCode(
    fhirCode: '126377',
  );

  /// value126380
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126380 = MediaTypeCode(
    fhirCode: '126380',
  );

  /// value126390
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126390 = MediaTypeCode(
    fhirCode: '126390',
  );

  /// value126391
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126391 = MediaTypeCode(
    fhirCode: '126391',
  );

  /// value126392
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126392 = MediaTypeCode(
    fhirCode: '126392',
  );

  /// value126393
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126393 = MediaTypeCode(
    fhirCode: '126393',
  );

  /// value126394
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126394 = MediaTypeCode(
    fhirCode: '126394',
  );

  /// value126400
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126400 = MediaTypeCode(
    fhirCode: '126400',
  );

  /// value126401
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126401 = MediaTypeCode(
    fhirCode: '126401',
  );

  /// value126402
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126402 = MediaTypeCode(
    fhirCode: '126402',
  );

  /// value126403
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126403 = MediaTypeCode(
    fhirCode: '126403',
  );

  /// value126404
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126404 = MediaTypeCode(
    fhirCode: '126404',
  );

  /// value126410
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126410 = MediaTypeCode(
    fhirCode: '126410',
  );

  /// value126411
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126411 = MediaTypeCode(
    fhirCode: '126411',
  );

  /// value126412
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126412 = MediaTypeCode(
    fhirCode: '126412',
  );

  /// value126413
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126413 = MediaTypeCode(
    fhirCode: '126413',
  );

  /// value126500
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126500 = MediaTypeCode(
    fhirCode: '126500',
  );

  /// value126501
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126501 = MediaTypeCode(
    fhirCode: '126501',
  );

  /// value126502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126502 = MediaTypeCode(
    fhirCode: '126502',
  );

  /// value126503
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126503 = MediaTypeCode(
    fhirCode: '126503',
  );

  /// value126510
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126510 = MediaTypeCode(
    fhirCode: '126510',
  );

  /// value126511
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126511 = MediaTypeCode(
    fhirCode: '126511',
  );

  /// value126512
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126512 = MediaTypeCode(
    fhirCode: '126512',
  );

  /// value126513
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126513 = MediaTypeCode(
    fhirCode: '126513',
  );

  /// value126514
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126514 = MediaTypeCode(
    fhirCode: '126514',
  );

  /// value126515
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126515 = MediaTypeCode(
    fhirCode: '126515',
  );

  /// value126516
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126516 = MediaTypeCode(
    fhirCode: '126516',
  );

  /// value126517
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126517 = MediaTypeCode(
    fhirCode: '126517',
  );

  /// value126518
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126518 = MediaTypeCode(
    fhirCode: '126518',
  );

  /// value126519
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126519 = MediaTypeCode(
    fhirCode: '126519',
  );

  /// value126520
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126520 = MediaTypeCode(
    fhirCode: '126520',
  );

  /// value126600
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126600 = MediaTypeCode(
    fhirCode: '126600',
  );

  /// value126601
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126601 = MediaTypeCode(
    fhirCode: '126601',
  );

  /// value126602
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126602 = MediaTypeCode(
    fhirCode: '126602',
  );

  /// value126603
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126603 = MediaTypeCode(
    fhirCode: '126603',
  );

  /// value126604
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126604 = MediaTypeCode(
    fhirCode: '126604',
  );

  /// value126605
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126605 = MediaTypeCode(
    fhirCode: '126605',
  );

  /// value126606
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126606 = MediaTypeCode(
    fhirCode: '126606',
  );

  /// value126700
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126700 = MediaTypeCode(
    fhirCode: '126700',
  );

  /// value126701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126701 = MediaTypeCode(
    fhirCode: '126701',
  );

  /// value126702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126702 = MediaTypeCode(
    fhirCode: '126702',
  );

  /// value126703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126703 = MediaTypeCode(
    fhirCode: '126703',
  );

  /// value126704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126704 = MediaTypeCode(
    fhirCode: '126704',
  );

  /// value126705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126705 = MediaTypeCode(
    fhirCode: '126705',
  );

  /// value126706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126706 = MediaTypeCode(
    fhirCode: '126706',
  );

  /// value126707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126707 = MediaTypeCode(
    fhirCode: '126707',
  );

  /// value126708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126708 = MediaTypeCode(
    fhirCode: '126708',
  );

  /// value126709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126709 = MediaTypeCode(
    fhirCode: '126709',
  );

  /// value126710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126710 = MediaTypeCode(
    fhirCode: '126710',
  );

  /// value126711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126711 = MediaTypeCode(
    fhirCode: '126711',
  );

  /// value126712
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126712 = MediaTypeCode(
    fhirCode: '126712',
  );

  /// value126713
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126713 = MediaTypeCode(
    fhirCode: '126713',
  );

  /// value126714
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126714 = MediaTypeCode(
    fhirCode: '126714',
  );

  /// value126715
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126715 = MediaTypeCode(
    fhirCode: '126715',
  );

  /// value126716
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126716 = MediaTypeCode(
    fhirCode: '126716',
  );

  /// value126801
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126801 = MediaTypeCode(
    fhirCode: '126801',
  );

  /// value126802
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126802 = MediaTypeCode(
    fhirCode: '126802',
  );

  /// value126803
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126803 = MediaTypeCode(
    fhirCode: '126803',
  );

  /// value126804
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126804 = MediaTypeCode(
    fhirCode: '126804',
  );

  /// value126805
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126805 = MediaTypeCode(
    fhirCode: '126805',
  );

  /// value126806
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126806 = MediaTypeCode(
    fhirCode: '126806',
  );

  /// value126807
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126807 = MediaTypeCode(
    fhirCode: '126807',
  );

  /// value126808
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126808 = MediaTypeCode(
    fhirCode: '126808',
  );

  /// value126809
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126809 = MediaTypeCode(
    fhirCode: '126809',
  );

  /// value126810
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126810 = MediaTypeCode(
    fhirCode: '126810',
  );

  /// value126811
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MediaTypeCode value126811 = MediaTypeCode(
    fhirCode: '126811',
  );

  /// For instances where an Element is present but not value

  static final MediaTypeCode elementOnly = MediaTypeCode();

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

  /// Returns the enum value with an element attached
  MediaTypeCode withElement(Element? newElement) {
    return MediaTypeCode(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MediaTypeCode] from JSON.
  static MediaTypeCode fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MediaTypeCode.elementOnly.withElement(element);
    }
    return MediaTypeCode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MediaTypeCode.$fhirCode';
}
