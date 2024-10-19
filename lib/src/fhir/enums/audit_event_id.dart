// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Event Types for Audit Events - defined by DICOM with some FHIR specific additions.
@collection
class AuditEventID {
  /// Constructor for internal use (like enum)
  AuditEventID({this.fhirCode, this.element})
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

  /// AuditEventID values
  /// ARCHIVE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID ARCHIVE = AuditEventID(
    fhirCode: 'ARCHIVE',
  );

  /// AR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID AR = AuditEventID(
    fhirCode: 'AR',
  );

  /// AS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID AS = AuditEventID(
    fhirCode: 'AS',
  );

  /// AU
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID AU = AuditEventID(
    fhirCode: 'AU',
  );

  /// BDUS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID BDUS = AuditEventID(
    fhirCode: 'BDUS',
  );

  /// BI
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID BI = AuditEventID(
    fhirCode: 'BI',
  );

  /// BMD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID BMD = AuditEventID(
    fhirCode: 'BMD',
  );

  /// CAD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID CAD = AuditEventID(
    fhirCode: 'CAD',
  );

  /// CAPTURE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID CAPTURE = AuditEventID(
    fhirCode: 'CAPTURE',
  );

  /// CD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID CD = AuditEventID(
    fhirCode: 'CD',
  );

  /// CF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID CF = AuditEventID(
    fhirCode: 'CF',
  );

  /// COMP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID COMP = AuditEventID(
    fhirCode: 'COMP',
  );

  /// CP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID CP = AuditEventID(
    fhirCode: 'CP',
  );

  /// CR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID CR = AuditEventID(
    fhirCode: 'CR',
  );

  /// CS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID CS = AuditEventID(
    fhirCode: 'CS',
  );

  /// CT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID CT = AuditEventID(
    fhirCode: 'CT',
  );

  /// DD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID DD = AuditEventID(
    fhirCode: 'DD',
  );

  /// DF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID DF = AuditEventID(
    fhirCode: 'DF',
  );

  /// DG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID DG = AuditEventID(
    fhirCode: 'DG',
  );

  /// DM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID DM = AuditEventID(
    fhirCode: 'DM',
  );

  /// DOCD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID DOCD = AuditEventID(
    fhirCode: 'DOCD',
  );

  /// DS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID DS = AuditEventID(
    fhirCode: 'DS',
  );

  /// DSS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID DSS = AuditEventID(
    fhirCode: 'DSS',
  );

  /// DX
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID DX = AuditEventID(
    fhirCode: 'DX',
  );

  /// EC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID EC = AuditEventID(
    fhirCode: 'EC',
  );

  /// ECG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID ECG = AuditEventID(
    fhirCode: 'ECG',
  );

  /// EPS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID EPS = AuditEventID(
    fhirCode: 'EPS',
  );

  /// ES
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID ES = AuditEventID(
    fhirCode: 'ES',
  );

  /// F
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID F = AuditEventID(
    fhirCode: 'F',
  );

  /// FA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID FA = AuditEventID(
    fhirCode: 'FA',
  );

  /// FC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID FC = AuditEventID(
    fhirCode: 'FC',
  );

  /// FILMD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID FILMD = AuditEventID(
    fhirCode: 'FILMD',
  );

  /// FP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID FP = AuditEventID(
    fhirCode: 'FP',
  );

  /// FS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID FS = AuditEventID(
    fhirCode: 'FS',
  );

  /// GM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID GM = AuditEventID(
    fhirCode: 'GM',
  );

  /// H
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID H = AuditEventID(
    fhirCode: 'H',
  );

  /// HC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID HC = AuditEventID(
    fhirCode: 'HC',
  );

  /// HD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID HD = AuditEventID(
    fhirCode: 'HD',
  );

  /// IO
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID IO = AuditEventID(
    fhirCode: 'IO',
  );

  /// IVOCT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID IVOCT = AuditEventID(
    fhirCode: 'IVOCT',
  );

  /// IVUS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID IVUS = AuditEventID(
    fhirCode: 'IVUS',
  );

  /// KER
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID KER = AuditEventID(
    fhirCode: 'KER',
  );

  /// KO
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID KO = AuditEventID(
    fhirCode: 'KO',
  );

  /// LEN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID LEN = AuditEventID(
    fhirCode: 'LEN',
  );

  /// LOG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID LOG = AuditEventID(
    fhirCode: 'LOG',
  );

  /// LP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID LP = AuditEventID(
    fhirCode: 'LP',
  );

  /// LS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID LS = AuditEventID(
    fhirCode: 'LS',
  );

  /// M
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID M = AuditEventID(
    fhirCode: 'M',
  );

  /// MA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID MA = AuditEventID(
    fhirCode: 'MA',
  );

  /// MC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID MC = AuditEventID(
    fhirCode: 'MC',
  );

  /// MCD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID MCD = AuditEventID(
    fhirCode: 'MCD',
  );

  /// MEDIM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID MEDIM = AuditEventID(
    fhirCode: 'MEDIM',
  );

  /// MG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID MG = AuditEventID(
    fhirCode: 'MG',
  );

  /// MP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID MP = AuditEventID(
    fhirCode: 'MP',
  );

  /// MR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID MR = AuditEventID(
    fhirCode: 'MR',
  );

  /// MS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID MS = AuditEventID(
    fhirCode: 'MS',
  );

  /// NEARLINE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID NEARLINE = AuditEventID(
    fhirCode: 'NEARLINE',
  );

  /// NM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID NM = AuditEventID(
    fhirCode: 'NM',
  );

  /// OAM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID OAM = AuditEventID(
    fhirCode: 'OAM',
  );

  /// OCT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID OCT = AuditEventID(
    fhirCode: 'OCT',
  );

  /// OFFLINE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID OFFLINE = AuditEventID(
    fhirCode: 'OFFLINE',
  );

  /// ONLINE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID ONLINE = AuditEventID(
    fhirCode: 'ONLINE',
  );

  /// OP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID OP = AuditEventID(
    fhirCode: 'OP',
  );

  /// OPM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID OPM = AuditEventID(
    fhirCode: 'OPM',
  );

  /// OPR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID OPR = AuditEventID(
    fhirCode: 'OPR',
  );

  /// OPT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID OPT = AuditEventID(
    fhirCode: 'OPT',
  );

  /// OPV
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID OPV = AuditEventID(
    fhirCode: 'OPV',
  );

  /// OSS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID OSS = AuditEventID(
    fhirCode: 'OSS',
  );

  /// OT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID OT = AuditEventID(
    fhirCode: 'OT',
  );

  /// PR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID PR = AuditEventID(
    fhirCode: 'PR',
  );

  /// PRINT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID PRINT = AuditEventID(
    fhirCode: 'PRINT',
  );

  /// PT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID PT = AuditEventID(
    fhirCode: 'PT',
  );

  /// PX
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID PX = AuditEventID(
    fhirCode: 'PX',
  );

  /// REG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID REG = AuditEventID(
    fhirCode: 'REG',
  );

  /// RF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID RF = AuditEventID(
    fhirCode: 'RF',
  );

  /// RG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID RG = AuditEventID(
    fhirCode: 'RG',
  );

  /// RT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID RT = AuditEventID(
    fhirCode: 'RT',
  );

  /// RTDOSE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID RTDOSE = AuditEventID(
    fhirCode: 'RTDOSE',
  );

  /// RTIMAGE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID RTIMAGE = AuditEventID(
    fhirCode: 'RTIMAGE',
  );

  /// RTPLAN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID RTPLAN = AuditEventID(
    fhirCode: 'RTPLAN',
  );

  /// RTRECORD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID RTRECORD = AuditEventID(
    fhirCode: 'RTRECORD',
  );

  /// RTSTRUCT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID RTSTRUCT = AuditEventID(
    fhirCode: 'RTSTRUCT',
  );

  /// SEG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID SEG = AuditEventID(
    fhirCode: 'SEG',
  );

  /// SM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID SM = AuditEventID(
    fhirCode: 'SM',
  );

  /// SMR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID SMR = AuditEventID(
    fhirCode: 'SMR',
  );

  /// SR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID SR = AuditEventID(
    fhirCode: 'SR',
  );

  /// SRF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID SRF = AuditEventID(
    fhirCode: 'SRF',
  );

  /// ST
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID ST = AuditEventID(
    fhirCode: 'ST',
  );

  /// TG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID TG = AuditEventID(
    fhirCode: 'TG',
  );

  /// U
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID U = AuditEventID(
    fhirCode: 'U',
  );

  /// UNAVAILABLE
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID UNAVAILABLE = AuditEventID(
    fhirCode: 'UNAVAILABLE',
  );

  /// US
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID US = AuditEventID(
    fhirCode: 'US',
  );

  /// VA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID VA = AuditEventID(
    fhirCode: 'VA',
  );

  /// VF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID VF = AuditEventID(
    fhirCode: 'VF',
  );

  /// VIDD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID VIDD = AuditEventID(
    fhirCode: 'VIDD',
  );

  /// WSD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID WSD = AuditEventID(
    fhirCode: 'WSD',
  );

  /// XA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID XA = AuditEventID(
    fhirCode: 'XA',
  );

  /// XC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID XC = AuditEventID(
    fhirCode: 'XC',
  );

  /// value109001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109001 = AuditEventID(
    fhirCode: '109001',
  );

  /// value109002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109002 = AuditEventID(
    fhirCode: '109002',
  );

  /// value109003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109003 = AuditEventID(
    fhirCode: '109003',
  );

  /// value109004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109004 = AuditEventID(
    fhirCode: '109004',
  );

  /// value109005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109005 = AuditEventID(
    fhirCode: '109005',
  );

  /// value109006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109006 = AuditEventID(
    fhirCode: '109006',
  );

  /// value109007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109007 = AuditEventID(
    fhirCode: '109007',
  );

  /// value109008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109008 = AuditEventID(
    fhirCode: '109008',
  );

  /// value109009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109009 = AuditEventID(
    fhirCode: '109009',
  );

  /// value109010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109010 = AuditEventID(
    fhirCode: '109010',
  );

  /// value109011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109011 = AuditEventID(
    fhirCode: '109011',
  );

  /// value109012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109012 = AuditEventID(
    fhirCode: '109012',
  );

  /// value109013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109013 = AuditEventID(
    fhirCode: '109013',
  );

  /// value109014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109014 = AuditEventID(
    fhirCode: '109014',
  );

  /// value109015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109015 = AuditEventID(
    fhirCode: '109015',
  );

  /// value109016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109016 = AuditEventID(
    fhirCode: '109016',
  );

  /// value109017
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109017 = AuditEventID(
    fhirCode: '109017',
  );

  /// value109018
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109018 = AuditEventID(
    fhirCode: '109018',
  );

  /// value109019
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109019 = AuditEventID(
    fhirCode: '109019',
  );

  /// value109020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109020 = AuditEventID(
    fhirCode: '109020',
  );

  /// value109021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109021 = AuditEventID(
    fhirCode: '109021',
  );

  /// value109022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109022 = AuditEventID(
    fhirCode: '109022',
  );

  /// value109023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109023 = AuditEventID(
    fhirCode: '109023',
  );

  /// value109024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109024 = AuditEventID(
    fhirCode: '109024',
  );

  /// value109025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109025 = AuditEventID(
    fhirCode: '109025',
  );

  /// value109026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109026 = AuditEventID(
    fhirCode: '109026',
  );

  /// value109027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109027 = AuditEventID(
    fhirCode: '109027',
  );

  /// value109028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109028 = AuditEventID(
    fhirCode: '109028',
  );

  /// value109029
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109029 = AuditEventID(
    fhirCode: '109029',
  );

  /// value109030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109030 = AuditEventID(
    fhirCode: '109030',
  );

  /// value109031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109031 = AuditEventID(
    fhirCode: '109031',
  );

  /// value109032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109032 = AuditEventID(
    fhirCode: '109032',
  );

  /// value109033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109033 = AuditEventID(
    fhirCode: '109033',
  );

  /// value109034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109034 = AuditEventID(
    fhirCode: '109034',
  );

  /// value109035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109035 = AuditEventID(
    fhirCode: '109035',
  );

  /// value109036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109036 = AuditEventID(
    fhirCode: '109036',
  );

  /// value109037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109037 = AuditEventID(
    fhirCode: '109037',
  );

  /// value109038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109038 = AuditEventID(
    fhirCode: '109038',
  );

  /// value109039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109039 = AuditEventID(
    fhirCode: '109039',
  );

  /// value109040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109040 = AuditEventID(
    fhirCode: '109040',
  );

  /// value109041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109041 = AuditEventID(
    fhirCode: '109041',
  );

  /// value109042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109042 = AuditEventID(
    fhirCode: '109042',
  );

  /// value109043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109043 = AuditEventID(
    fhirCode: '109043',
  );

  /// value109044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109044 = AuditEventID(
    fhirCode: '109044',
  );

  /// value109045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109045 = AuditEventID(
    fhirCode: '109045',
  );

  /// value109046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109046 = AuditEventID(
    fhirCode: '109046',
  );

  /// value109047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109047 = AuditEventID(
    fhirCode: '109047',
  );

  /// value109048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109048 = AuditEventID(
    fhirCode: '109048',
  );

  /// value109049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109049 = AuditEventID(
    fhirCode: '109049',
  );

  /// value109050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109050 = AuditEventID(
    fhirCode: '109050',
  );

  /// value109051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109051 = AuditEventID(
    fhirCode: '109051',
  );

  /// value109052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109052 = AuditEventID(
    fhirCode: '109052',
  );

  /// value109053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109053 = AuditEventID(
    fhirCode: '109053',
  );

  /// value109054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109054 = AuditEventID(
    fhirCode: '109054',
  );

  /// value109055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109055 = AuditEventID(
    fhirCode: '109055',
  );

  /// value109056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109056 = AuditEventID(
    fhirCode: '109056',
  );

  /// value109057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109057 = AuditEventID(
    fhirCode: '109057',
  );

  /// value109058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109058 = AuditEventID(
    fhirCode: '109058',
  );

  /// value109059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109059 = AuditEventID(
    fhirCode: '109059',
  );

  /// value109060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109060 = AuditEventID(
    fhirCode: '109060',
  );

  /// value109061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109061 = AuditEventID(
    fhirCode: '109061',
  );

  /// value109063
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109063 = AuditEventID(
    fhirCode: '109063',
  );

  /// value109070
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109070 = AuditEventID(
    fhirCode: '109070',
  );

  /// value109071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109071 = AuditEventID(
    fhirCode: '109071',
  );

  /// value109072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109072 = AuditEventID(
    fhirCode: '109072',
  );

  /// value109073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109073 = AuditEventID(
    fhirCode: '109073',
  );

  /// value109080
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109080 = AuditEventID(
    fhirCode: '109080',
  );

  /// value109081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109081 = AuditEventID(
    fhirCode: '109081',
  );

  /// value109082
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109082 = AuditEventID(
    fhirCode: '109082',
  );

  /// value109083
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109083 = AuditEventID(
    fhirCode: '109083',
  );

  /// value109091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109091 = AuditEventID(
    fhirCode: '109091',
  );

  /// value109092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109092 = AuditEventID(
    fhirCode: '109092',
  );

  /// value109093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109093 = AuditEventID(
    fhirCode: '109093',
  );

  /// value109094
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109094 = AuditEventID(
    fhirCode: '109094',
  );

  /// value109095
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109095 = AuditEventID(
    fhirCode: '109095',
  );

  /// value109096
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109096 = AuditEventID(
    fhirCode: '109096',
  );

  /// value109101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109101 = AuditEventID(
    fhirCode: '109101',
  );

  /// value109102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109102 = AuditEventID(
    fhirCode: '109102',
  );

  /// value109103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109103 = AuditEventID(
    fhirCode: '109103',
  );

  /// value109104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109104 = AuditEventID(
    fhirCode: '109104',
  );

  /// value109105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109105 = AuditEventID(
    fhirCode: '109105',
  );

  /// value109106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109106 = AuditEventID(
    fhirCode: '109106',
  );

  /// value109110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109110 = AuditEventID(
    fhirCode: '109110',
  );

  /// value109111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109111 = AuditEventID(
    fhirCode: '109111',
  );

  /// value109112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109112 = AuditEventID(
    fhirCode: '109112',
  );

  /// value109113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109113 = AuditEventID(
    fhirCode: '109113',
  );

  /// value109114
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109114 = AuditEventID(
    fhirCode: '109114',
  );

  /// value109115
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109115 = AuditEventID(
    fhirCode: '109115',
  );

  /// value109116
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109116 = AuditEventID(
    fhirCode: '109116',
  );

  /// value109117
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109117 = AuditEventID(
    fhirCode: '109117',
  );

  /// value109120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109120 = AuditEventID(
    fhirCode: '109120',
  );

  /// value109121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109121 = AuditEventID(
    fhirCode: '109121',
  );

  /// value109122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109122 = AuditEventID(
    fhirCode: '109122',
  );

  /// value109123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109123 = AuditEventID(
    fhirCode: '109123',
  );

  /// value109124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109124 = AuditEventID(
    fhirCode: '109124',
  );

  /// value109125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109125 = AuditEventID(
    fhirCode: '109125',
  );

  /// value109132
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109132 = AuditEventID(
    fhirCode: '109132',
  );

  /// value109133
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109133 = AuditEventID(
    fhirCode: '109133',
  );

  /// value109134
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109134 = AuditEventID(
    fhirCode: '109134',
  );

  /// value109135
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109135 = AuditEventID(
    fhirCode: '109135',
  );

  /// value109136
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109136 = AuditEventID(
    fhirCode: '109136',
  );

  /// value109200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109200 = AuditEventID(
    fhirCode: '109200',
  );

  /// value109201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109201 = AuditEventID(
    fhirCode: '109201',
  );

  /// value109202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109202 = AuditEventID(
    fhirCode: '109202',
  );

  /// value109203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109203 = AuditEventID(
    fhirCode: '109203',
  );

  /// value109204
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109204 = AuditEventID(
    fhirCode: '109204',
  );

  /// value109205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109205 = AuditEventID(
    fhirCode: '109205',
  );

  /// value109206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109206 = AuditEventID(
    fhirCode: '109206',
  );

  /// value109207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109207 = AuditEventID(
    fhirCode: '109207',
  );

  /// value109208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109208 = AuditEventID(
    fhirCode: '109208',
  );

  /// value109209
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109209 = AuditEventID(
    fhirCode: '109209',
  );

  /// value109210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109210 = AuditEventID(
    fhirCode: '109210',
  );

  /// value109211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109211 = AuditEventID(
    fhirCode: '109211',
  );

  /// value109212
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109212 = AuditEventID(
    fhirCode: '109212',
  );

  /// value109213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109213 = AuditEventID(
    fhirCode: '109213',
  );

  /// value109214
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109214 = AuditEventID(
    fhirCode: '109214',
  );

  /// value109215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109215 = AuditEventID(
    fhirCode: '109215',
  );

  /// value109216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109216 = AuditEventID(
    fhirCode: '109216',
  );

  /// value109217
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109217 = AuditEventID(
    fhirCode: '109217',
  );

  /// value109218
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109218 = AuditEventID(
    fhirCode: '109218',
  );

  /// value109219
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109219 = AuditEventID(
    fhirCode: '109219',
  );

  /// value109220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109220 = AuditEventID(
    fhirCode: '109220',
  );

  /// value109221
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109221 = AuditEventID(
    fhirCode: '109221',
  );

  /// value109222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109222 = AuditEventID(
    fhirCode: '109222',
  );

  /// value109701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109701 = AuditEventID(
    fhirCode: '109701',
  );

  /// value109702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109702 = AuditEventID(
    fhirCode: '109702',
  );

  /// value109703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109703 = AuditEventID(
    fhirCode: '109703',
  );

  /// value109704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109704 = AuditEventID(
    fhirCode: '109704',
  );

  /// value109705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109705 = AuditEventID(
    fhirCode: '109705',
  );

  /// value109706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109706 = AuditEventID(
    fhirCode: '109706',
  );

  /// value109707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109707 = AuditEventID(
    fhirCode: '109707',
  );

  /// value109708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109708 = AuditEventID(
    fhirCode: '109708',
  );

  /// value109709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109709 = AuditEventID(
    fhirCode: '109709',
  );

  /// value109710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109710 = AuditEventID(
    fhirCode: '109710',
  );

  /// value109801
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109801 = AuditEventID(
    fhirCode: '109801',
  );

  /// value109802
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109802 = AuditEventID(
    fhirCode: '109802',
  );

  /// value109803
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109803 = AuditEventID(
    fhirCode: '109803',
  );

  /// value109804
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109804 = AuditEventID(
    fhirCode: '109804',
  );

  /// value109805
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109805 = AuditEventID(
    fhirCode: '109805',
  );

  /// value109806
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109806 = AuditEventID(
    fhirCode: '109806',
  );

  /// value109807
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109807 = AuditEventID(
    fhirCode: '109807',
  );

  /// value109808
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109808 = AuditEventID(
    fhirCode: '109808',
  );

  /// value109809
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109809 = AuditEventID(
    fhirCode: '109809',
  );

  /// value109810
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109810 = AuditEventID(
    fhirCode: '109810',
  );

  /// value109811
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109811 = AuditEventID(
    fhirCode: '109811',
  );

  /// value109812
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109812 = AuditEventID(
    fhirCode: '109812',
  );

  /// value109813
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109813 = AuditEventID(
    fhirCode: '109813',
  );

  /// value109814
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109814 = AuditEventID(
    fhirCode: '109814',
  );

  /// value109815
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109815 = AuditEventID(
    fhirCode: '109815',
  );

  /// value109816
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109816 = AuditEventID(
    fhirCode: '109816',
  );

  /// value109817
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109817 = AuditEventID(
    fhirCode: '109817',
  );

  /// value109818
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109818 = AuditEventID(
    fhirCode: '109818',
  );

  /// value109819
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109819 = AuditEventID(
    fhirCode: '109819',
  );

  /// value109820
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109820 = AuditEventID(
    fhirCode: '109820',
  );

  /// value109821
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109821 = AuditEventID(
    fhirCode: '109821',
  );

  /// value109822
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109822 = AuditEventID(
    fhirCode: '109822',
  );

  /// value109823
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109823 = AuditEventID(
    fhirCode: '109823',
  );

  /// value109824
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109824 = AuditEventID(
    fhirCode: '109824',
  );

  /// value109825
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109825 = AuditEventID(
    fhirCode: '109825',
  );

  /// value109826
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109826 = AuditEventID(
    fhirCode: '109826',
  );

  /// value109827
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109827 = AuditEventID(
    fhirCode: '109827',
  );

  /// value109828
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109828 = AuditEventID(
    fhirCode: '109828',
  );

  /// value109829
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109829 = AuditEventID(
    fhirCode: '109829',
  );

  /// value109830
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109830 = AuditEventID(
    fhirCode: '109830',
  );

  /// value109831
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109831 = AuditEventID(
    fhirCode: '109831',
  );

  /// value109832
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109832 = AuditEventID(
    fhirCode: '109832',
  );

  /// value109833
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109833 = AuditEventID(
    fhirCode: '109833',
  );

  /// value109834
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109834 = AuditEventID(
    fhirCode: '109834',
  );

  /// value109835
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109835 = AuditEventID(
    fhirCode: '109835',
  );

  /// value109836
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109836 = AuditEventID(
    fhirCode: '109836',
  );

  /// value109837
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109837 = AuditEventID(
    fhirCode: '109837',
  );

  /// value109838
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109838 = AuditEventID(
    fhirCode: '109838',
  );

  /// value109839
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109839 = AuditEventID(
    fhirCode: '109839',
  );

  /// value109840
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109840 = AuditEventID(
    fhirCode: '109840',
  );

  /// value109841
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109841 = AuditEventID(
    fhirCode: '109841',
  );

  /// value109842
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109842 = AuditEventID(
    fhirCode: '109842',
  );

  /// value109843
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109843 = AuditEventID(
    fhirCode: '109843',
  );

  /// value109844
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109844 = AuditEventID(
    fhirCode: '109844',
  );

  /// value109845
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109845 = AuditEventID(
    fhirCode: '109845',
  );

  /// value109846
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109846 = AuditEventID(
    fhirCode: '109846',
  );

  /// value109847
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109847 = AuditEventID(
    fhirCode: '109847',
  );

  /// value109848
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109848 = AuditEventID(
    fhirCode: '109848',
  );

  /// value109849
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109849 = AuditEventID(
    fhirCode: '109849',
  );

  /// value109850
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109850 = AuditEventID(
    fhirCode: '109850',
  );

  /// value109851
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109851 = AuditEventID(
    fhirCode: '109851',
  );

  /// value109852
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109852 = AuditEventID(
    fhirCode: '109852',
  );

  /// value109853
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109853 = AuditEventID(
    fhirCode: '109853',
  );

  /// value109854
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109854 = AuditEventID(
    fhirCode: '109854',
  );

  /// value109855
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109855 = AuditEventID(
    fhirCode: '109855',
  );

  /// value109856
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109856 = AuditEventID(
    fhirCode: '109856',
  );

  /// value109857
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109857 = AuditEventID(
    fhirCode: '109857',
  );

  /// value109858
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109858 = AuditEventID(
    fhirCode: '109858',
  );

  /// value109859
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109859 = AuditEventID(
    fhirCode: '109859',
  );

  /// value109860
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109860 = AuditEventID(
    fhirCode: '109860',
  );

  /// value109861
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109861 = AuditEventID(
    fhirCode: '109861',
  );

  /// value109862
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109862 = AuditEventID(
    fhirCode: '109862',
  );

  /// value109863
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109863 = AuditEventID(
    fhirCode: '109863',
  );

  /// value109864
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109864 = AuditEventID(
    fhirCode: '109864',
  );

  /// value109865
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109865 = AuditEventID(
    fhirCode: '109865',
  );

  /// value109866
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109866 = AuditEventID(
    fhirCode: '109866',
  );

  /// value109867
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109867 = AuditEventID(
    fhirCode: '109867',
  );

  /// value109868
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109868 = AuditEventID(
    fhirCode: '109868',
  );

  /// value109869
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109869 = AuditEventID(
    fhirCode: '109869',
  );

  /// value109870
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109870 = AuditEventID(
    fhirCode: '109870',
  );

  /// value109871
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109871 = AuditEventID(
    fhirCode: '109871',
  );

  /// value109872
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109872 = AuditEventID(
    fhirCode: '109872',
  );

  /// value109873
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109873 = AuditEventID(
    fhirCode: '109873',
  );

  /// value109874
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109874 = AuditEventID(
    fhirCode: '109874',
  );

  /// value109875
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109875 = AuditEventID(
    fhirCode: '109875',
  );

  /// value109876
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109876 = AuditEventID(
    fhirCode: '109876',
  );

  /// value109877
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109877 = AuditEventID(
    fhirCode: '109877',
  );

  /// value109878
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109878 = AuditEventID(
    fhirCode: '109878',
  );

  /// value109879
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109879 = AuditEventID(
    fhirCode: '109879',
  );

  /// value109880
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109880 = AuditEventID(
    fhirCode: '109880',
  );

  /// value109881
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109881 = AuditEventID(
    fhirCode: '109881',
  );

  /// value109901
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109901 = AuditEventID(
    fhirCode: '109901',
  );

  /// value109902
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109902 = AuditEventID(
    fhirCode: '109902',
  );

  /// value109903
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109903 = AuditEventID(
    fhirCode: '109903',
  );

  /// value109904
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109904 = AuditEventID(
    fhirCode: '109904',
  );

  /// value109905
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109905 = AuditEventID(
    fhirCode: '109905',
  );

  /// value109906
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109906 = AuditEventID(
    fhirCode: '109906',
  );

  /// value109907
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109907 = AuditEventID(
    fhirCode: '109907',
  );

  /// value109908
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109908 = AuditEventID(
    fhirCode: '109908',
  );

  /// value109909
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109909 = AuditEventID(
    fhirCode: '109909',
  );

  /// value109910
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109910 = AuditEventID(
    fhirCode: '109910',
  );

  /// value109911
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109911 = AuditEventID(
    fhirCode: '109911',
  );

  /// value109912
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109912 = AuditEventID(
    fhirCode: '109912',
  );

  /// value109913
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109913 = AuditEventID(
    fhirCode: '109913',
  );

  /// value109914
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109914 = AuditEventID(
    fhirCode: '109914',
  );

  /// value109915
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109915 = AuditEventID(
    fhirCode: '109915',
  );

  /// value109916
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109916 = AuditEventID(
    fhirCode: '109916',
  );

  /// value109917
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109917 = AuditEventID(
    fhirCode: '109917',
  );

  /// value109918
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109918 = AuditEventID(
    fhirCode: '109918',
  );

  /// value109919
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109919 = AuditEventID(
    fhirCode: '109919',
  );

  /// value109920
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109920 = AuditEventID(
    fhirCode: '109920',
  );

  /// value109921
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109921 = AuditEventID(
    fhirCode: '109921',
  );

  /// value109931
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109931 = AuditEventID(
    fhirCode: '109931',
  );

  /// value109932
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109932 = AuditEventID(
    fhirCode: '109932',
  );

  /// value109933
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109933 = AuditEventID(
    fhirCode: '109933',
  );

  /// value109941
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109941 = AuditEventID(
    fhirCode: '109941',
  );

  /// value109943
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109943 = AuditEventID(
    fhirCode: '109943',
  );

  /// value109991
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109991 = AuditEventID(
    fhirCode: '109991',
  );

  /// value109992
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109992 = AuditEventID(
    fhirCode: '109992',
  );

  /// value109993
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109993 = AuditEventID(
    fhirCode: '109993',
  );

  /// value109994
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109994 = AuditEventID(
    fhirCode: '109994',
  );

  /// value109995
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109995 = AuditEventID(
    fhirCode: '109995',
  );

  /// value109996
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109996 = AuditEventID(
    fhirCode: '109996',
  );

  /// value109997
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109997 = AuditEventID(
    fhirCode: '109997',
  );

  /// value109998
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109998 = AuditEventID(
    fhirCode: '109998',
  );

  /// value109999
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value109999 = AuditEventID(
    fhirCode: '109999',
  );

  /// value110001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110001 = AuditEventID(
    fhirCode: '110001',
  );

  /// value110002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110002 = AuditEventID(
    fhirCode: '110002',
  );

  /// value110003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110003 = AuditEventID(
    fhirCode: '110003',
  );

  /// value110004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110004 = AuditEventID(
    fhirCode: '110004',
  );

  /// value110005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110005 = AuditEventID(
    fhirCode: '110005',
  );

  /// value110006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110006 = AuditEventID(
    fhirCode: '110006',
  );

  /// value110007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110007 = AuditEventID(
    fhirCode: '110007',
  );

  /// value110008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110008 = AuditEventID(
    fhirCode: '110008',
  );

  /// value110009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110009 = AuditEventID(
    fhirCode: '110009',
  );

  /// value110010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110010 = AuditEventID(
    fhirCode: '110010',
  );

  /// value110011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110011 = AuditEventID(
    fhirCode: '110011',
  );

  /// value110012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110012 = AuditEventID(
    fhirCode: '110012',
  );

  /// value110013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110013 = AuditEventID(
    fhirCode: '110013',
  );

  /// value110020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110020 = AuditEventID(
    fhirCode: '110020',
  );

  /// value110021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110021 = AuditEventID(
    fhirCode: '110021',
  );

  /// value110022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110022 = AuditEventID(
    fhirCode: '110022',
  );

  /// value110023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110023 = AuditEventID(
    fhirCode: '110023',
  );

  /// value110024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110024 = AuditEventID(
    fhirCode: '110024',
  );

  /// value110025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110025 = AuditEventID(
    fhirCode: '110025',
  );

  /// value110026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110026 = AuditEventID(
    fhirCode: '110026',
  );

  /// value110027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110027 = AuditEventID(
    fhirCode: '110027',
  );

  /// value110028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110028 = AuditEventID(
    fhirCode: '110028',
  );

  /// value110030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110030 = AuditEventID(
    fhirCode: '110030',
  );

  /// value110031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110031 = AuditEventID(
    fhirCode: '110031',
  );

  /// value110032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110032 = AuditEventID(
    fhirCode: '110032',
  );

  /// value110033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110033 = AuditEventID(
    fhirCode: '110033',
  );

  /// value110034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110034 = AuditEventID(
    fhirCode: '110034',
  );

  /// value110035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110035 = AuditEventID(
    fhirCode: '110035',
  );

  /// value110036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110036 = AuditEventID(
    fhirCode: '110036',
  );

  /// value110037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110037 = AuditEventID(
    fhirCode: '110037',
  );

  /// value110038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110038 = AuditEventID(
    fhirCode: '110038',
  );

  /// value110100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110100 = AuditEventID(
    fhirCode: '110100',
  );

  /// value110101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110101 = AuditEventID(
    fhirCode: '110101',
  );

  /// value110102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110102 = AuditEventID(
    fhirCode: '110102',
  );

  /// value110103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110103 = AuditEventID(
    fhirCode: '110103',
  );

  /// value110104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110104 = AuditEventID(
    fhirCode: '110104',
  );

  /// value110105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110105 = AuditEventID(
    fhirCode: '110105',
  );

  /// value110106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110106 = AuditEventID(
    fhirCode: '110106',
  );

  /// value110107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110107 = AuditEventID(
    fhirCode: '110107',
  );

  /// value110108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110108 = AuditEventID(
    fhirCode: '110108',
  );

  /// value110109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110109 = AuditEventID(
    fhirCode: '110109',
  );

  /// value110110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110110 = AuditEventID(
    fhirCode: '110110',
  );

  /// value110111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110111 = AuditEventID(
    fhirCode: '110111',
  );

  /// value110112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110112 = AuditEventID(
    fhirCode: '110112',
  );

  /// value110113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110113 = AuditEventID(
    fhirCode: '110113',
  );

  /// value110114
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110114 = AuditEventID(
    fhirCode: '110114',
  );

  /// value110120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110120 = AuditEventID(
    fhirCode: '110120',
  );

  /// value110121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110121 = AuditEventID(
    fhirCode: '110121',
  );

  /// value110122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110122 = AuditEventID(
    fhirCode: '110122',
  );

  /// value110123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110123 = AuditEventID(
    fhirCode: '110123',
  );

  /// value110124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110124 = AuditEventID(
    fhirCode: '110124',
  );

  /// value110125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110125 = AuditEventID(
    fhirCode: '110125',
  );

  /// value110126
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110126 = AuditEventID(
    fhirCode: '110126',
  );

  /// value110127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110127 = AuditEventID(
    fhirCode: '110127',
  );

  /// value110128
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110128 = AuditEventID(
    fhirCode: '110128',
  );

  /// value110129
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110129 = AuditEventID(
    fhirCode: '110129',
  );

  /// value110130
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110130 = AuditEventID(
    fhirCode: '110130',
  );

  /// value110131
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110131 = AuditEventID(
    fhirCode: '110131',
  );

  /// value110132
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110132 = AuditEventID(
    fhirCode: '110132',
  );

  /// value110133
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110133 = AuditEventID(
    fhirCode: '110133',
  );

  /// value110134
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110134 = AuditEventID(
    fhirCode: '110134',
  );

  /// value110135
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110135 = AuditEventID(
    fhirCode: '110135',
  );

  /// value110136
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110136 = AuditEventID(
    fhirCode: '110136',
  );

  /// value110137
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110137 = AuditEventID(
    fhirCode: '110137',
  );

  /// value110138
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110138 = AuditEventID(
    fhirCode: '110138',
  );

  /// value110139
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110139 = AuditEventID(
    fhirCode: '110139',
  );

  /// value110140
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110140 = AuditEventID(
    fhirCode: '110140',
  );

  /// value110141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110141 = AuditEventID(
    fhirCode: '110141',
  );

  /// value110142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110142 = AuditEventID(
    fhirCode: '110142',
  );

  /// value110150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110150 = AuditEventID(
    fhirCode: '110150',
  );

  /// value110151
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110151 = AuditEventID(
    fhirCode: '110151',
  );

  /// value110152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110152 = AuditEventID(
    fhirCode: '110152',
  );

  /// value110153
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110153 = AuditEventID(
    fhirCode: '110153',
  );

  /// value110154
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110154 = AuditEventID(
    fhirCode: '110154',
  );

  /// value110155
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110155 = AuditEventID(
    fhirCode: '110155',
  );

  /// value110180
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110180 = AuditEventID(
    fhirCode: '110180',
  );

  /// value110181
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110181 = AuditEventID(
    fhirCode: '110181',
  );

  /// value110182
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110182 = AuditEventID(
    fhirCode: '110182',
  );

  /// value110190
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110190 = AuditEventID(
    fhirCode: '110190',
  );

  /// value110500
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110500 = AuditEventID(
    fhirCode: '110500',
  );

  /// value110501
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110501 = AuditEventID(
    fhirCode: '110501',
  );

  /// value110502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110502 = AuditEventID(
    fhirCode: '110502',
  );

  /// value110503
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110503 = AuditEventID(
    fhirCode: '110503',
  );

  /// value110504
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110504 = AuditEventID(
    fhirCode: '110504',
  );

  /// value110505
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110505 = AuditEventID(
    fhirCode: '110505',
  );

  /// value110506
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110506 = AuditEventID(
    fhirCode: '110506',
  );

  /// value110507
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110507 = AuditEventID(
    fhirCode: '110507',
  );

  /// value110508
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110508 = AuditEventID(
    fhirCode: '110508',
  );

  /// value110509
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110509 = AuditEventID(
    fhirCode: '110509',
  );

  /// value110510
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110510 = AuditEventID(
    fhirCode: '110510',
  );

  /// value110511
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110511 = AuditEventID(
    fhirCode: '110511',
  );

  /// value110512
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110512 = AuditEventID(
    fhirCode: '110512',
  );

  /// value110513
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110513 = AuditEventID(
    fhirCode: '110513',
  );

  /// value110514
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110514 = AuditEventID(
    fhirCode: '110514',
  );

  /// value110515
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110515 = AuditEventID(
    fhirCode: '110515',
  );

  /// value110516
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110516 = AuditEventID(
    fhirCode: '110516',
  );

  /// value110518
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110518 = AuditEventID(
    fhirCode: '110518',
  );

  /// value110519
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110519 = AuditEventID(
    fhirCode: '110519',
  );

  /// value110521
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110521 = AuditEventID(
    fhirCode: '110521',
  );

  /// value110522
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110522 = AuditEventID(
    fhirCode: '110522',
  );

  /// value110523
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110523 = AuditEventID(
    fhirCode: '110523',
  );

  /// value110524
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110524 = AuditEventID(
    fhirCode: '110524',
  );

  /// value110526
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110526 = AuditEventID(
    fhirCode: '110526',
  );

  /// value110527
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110527 = AuditEventID(
    fhirCode: '110527',
  );

  /// value110528
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110528 = AuditEventID(
    fhirCode: '110528',
  );

  /// value110529
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110529 = AuditEventID(
    fhirCode: '110529',
  );

  /// value110700
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110700 = AuditEventID(
    fhirCode: '110700',
  );

  /// value110701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110701 = AuditEventID(
    fhirCode: '110701',
  );

  /// value110702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110702 = AuditEventID(
    fhirCode: '110702',
  );

  /// value110703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110703 = AuditEventID(
    fhirCode: '110703',
  );

  /// value110704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110704 = AuditEventID(
    fhirCode: '110704',
  );

  /// value110705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110705 = AuditEventID(
    fhirCode: '110705',
  );

  /// value110706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110706 = AuditEventID(
    fhirCode: '110706',
  );

  /// value110800
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110800 = AuditEventID(
    fhirCode: '110800',
  );

  /// value110801
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110801 = AuditEventID(
    fhirCode: '110801',
  );

  /// value110802
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110802 = AuditEventID(
    fhirCode: '110802',
  );

  /// value110803
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110803 = AuditEventID(
    fhirCode: '110803',
  );

  /// value110804
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110804 = AuditEventID(
    fhirCode: '110804',
  );

  /// value110805
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110805 = AuditEventID(
    fhirCode: '110805',
  );

  /// value110806
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110806 = AuditEventID(
    fhirCode: '110806',
  );

  /// value110807
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110807 = AuditEventID(
    fhirCode: '110807',
  );

  /// value110808
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110808 = AuditEventID(
    fhirCode: '110808',
  );

  /// value110809
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110809 = AuditEventID(
    fhirCode: '110809',
  );

  /// value110810
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110810 = AuditEventID(
    fhirCode: '110810',
  );

  /// value110811
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110811 = AuditEventID(
    fhirCode: '110811',
  );

  /// value110812
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110812 = AuditEventID(
    fhirCode: '110812',
  );

  /// value110813
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110813 = AuditEventID(
    fhirCode: '110813',
  );

  /// value110814
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110814 = AuditEventID(
    fhirCode: '110814',
  );

  /// value110815
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110815 = AuditEventID(
    fhirCode: '110815',
  );

  /// value110816
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110816 = AuditEventID(
    fhirCode: '110816',
  );

  /// value110817
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110817 = AuditEventID(
    fhirCode: '110817',
  );

  /// value110818
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110818 = AuditEventID(
    fhirCode: '110818',
  );

  /// value110819
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110819 = AuditEventID(
    fhirCode: '110819',
  );

  /// value110820
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110820 = AuditEventID(
    fhirCode: '110820',
  );

  /// value110821
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110821 = AuditEventID(
    fhirCode: '110821',
  );

  /// value110822
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110822 = AuditEventID(
    fhirCode: '110822',
  );

  /// value110823
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110823 = AuditEventID(
    fhirCode: '110823',
  );

  /// value110824
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110824 = AuditEventID(
    fhirCode: '110824',
  );

  /// value110825
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110825 = AuditEventID(
    fhirCode: '110825',
  );

  /// value110826
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110826 = AuditEventID(
    fhirCode: '110826',
  );

  /// value110827
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110827 = AuditEventID(
    fhirCode: '110827',
  );

  /// value110828
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110828 = AuditEventID(
    fhirCode: '110828',
  );

  /// value110829
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110829 = AuditEventID(
    fhirCode: '110829',
  );

  /// value110830
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110830 = AuditEventID(
    fhirCode: '110830',
  );

  /// value110831
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110831 = AuditEventID(
    fhirCode: '110831',
  );

  /// value110832
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110832 = AuditEventID(
    fhirCode: '110832',
  );

  /// value110833
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110833 = AuditEventID(
    fhirCode: '110833',
  );

  /// value110834
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110834 = AuditEventID(
    fhirCode: '110834',
  );

  /// value110835
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110835 = AuditEventID(
    fhirCode: '110835',
  );

  /// value110836
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110836 = AuditEventID(
    fhirCode: '110836',
  );

  /// value110837
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110837 = AuditEventID(
    fhirCode: '110837',
  );

  /// value110838
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110838 = AuditEventID(
    fhirCode: '110838',
  );

  /// value110839
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110839 = AuditEventID(
    fhirCode: '110839',
  );

  /// value110840
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110840 = AuditEventID(
    fhirCode: '110840',
  );

  /// value110841
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110841 = AuditEventID(
    fhirCode: '110841',
  );

  /// value110842
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110842 = AuditEventID(
    fhirCode: '110842',
  );

  /// value110843
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110843 = AuditEventID(
    fhirCode: '110843',
  );

  /// value110844
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110844 = AuditEventID(
    fhirCode: '110844',
  );

  /// value110845
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110845 = AuditEventID(
    fhirCode: '110845',
  );

  /// value110846
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110846 = AuditEventID(
    fhirCode: '110846',
  );

  /// value110847
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110847 = AuditEventID(
    fhirCode: '110847',
  );

  /// value110848
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110848 = AuditEventID(
    fhirCode: '110848',
  );

  /// value110849
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110849 = AuditEventID(
    fhirCode: '110849',
  );

  /// value110850
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110850 = AuditEventID(
    fhirCode: '110850',
  );

  /// value110851
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110851 = AuditEventID(
    fhirCode: '110851',
  );

  /// value110852
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110852 = AuditEventID(
    fhirCode: '110852',
  );

  /// value110853
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110853 = AuditEventID(
    fhirCode: '110853',
  );

  /// value110854
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110854 = AuditEventID(
    fhirCode: '110854',
  );

  /// value110855
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110855 = AuditEventID(
    fhirCode: '110855',
  );

  /// value110856
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110856 = AuditEventID(
    fhirCode: '110856',
  );

  /// value110857
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110857 = AuditEventID(
    fhirCode: '110857',
  );

  /// value110858
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110858 = AuditEventID(
    fhirCode: '110858',
  );

  /// value110859
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110859 = AuditEventID(
    fhirCode: '110859',
  );

  /// value110860
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110860 = AuditEventID(
    fhirCode: '110860',
  );

  /// value110861
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110861 = AuditEventID(
    fhirCode: '110861',
  );

  /// value110862
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110862 = AuditEventID(
    fhirCode: '110862',
  );

  /// value110863
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110863 = AuditEventID(
    fhirCode: '110863',
  );

  /// value110864
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110864 = AuditEventID(
    fhirCode: '110864',
  );

  /// value110865
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110865 = AuditEventID(
    fhirCode: '110865',
  );

  /// value110866
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110866 = AuditEventID(
    fhirCode: '110866',
  );

  /// value110867
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110867 = AuditEventID(
    fhirCode: '110867',
  );

  /// value110868
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110868 = AuditEventID(
    fhirCode: '110868',
  );

  /// value110869
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110869 = AuditEventID(
    fhirCode: '110869',
  );

  /// value110870
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110870 = AuditEventID(
    fhirCode: '110870',
  );

  /// value110871
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110871 = AuditEventID(
    fhirCode: '110871',
  );

  /// value110872
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110872 = AuditEventID(
    fhirCode: '110872',
  );

  /// value110873
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110873 = AuditEventID(
    fhirCode: '110873',
  );

  /// value110874
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110874 = AuditEventID(
    fhirCode: '110874',
  );

  /// value110875
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110875 = AuditEventID(
    fhirCode: '110875',
  );

  /// value110876
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110876 = AuditEventID(
    fhirCode: '110876',
  );

  /// value110877
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110877 = AuditEventID(
    fhirCode: '110877',
  );

  /// value110901
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110901 = AuditEventID(
    fhirCode: '110901',
  );

  /// value110902
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110902 = AuditEventID(
    fhirCode: '110902',
  );

  /// value110903
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110903 = AuditEventID(
    fhirCode: '110903',
  );

  /// value110904
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110904 = AuditEventID(
    fhirCode: '110904',
  );

  /// value110905
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110905 = AuditEventID(
    fhirCode: '110905',
  );

  /// value110906
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110906 = AuditEventID(
    fhirCode: '110906',
  );

  /// value110907
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110907 = AuditEventID(
    fhirCode: '110907',
  );

  /// value110908
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110908 = AuditEventID(
    fhirCode: '110908',
  );

  /// value110909
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110909 = AuditEventID(
    fhirCode: '110909',
  );

  /// value110910
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110910 = AuditEventID(
    fhirCode: '110910',
  );

  /// value110911
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value110911 = AuditEventID(
    fhirCode: '110911',
  );

  /// value111001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111001 = AuditEventID(
    fhirCode: '111001',
  );

  /// value111002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111002 = AuditEventID(
    fhirCode: '111002',
  );

  /// value111003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111003 = AuditEventID(
    fhirCode: '111003',
  );

  /// value111004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111004 = AuditEventID(
    fhirCode: '111004',
  );

  /// value111005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111005 = AuditEventID(
    fhirCode: '111005',
  );

  /// value111006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111006 = AuditEventID(
    fhirCode: '111006',
  );

  /// value111007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111007 = AuditEventID(
    fhirCode: '111007',
  );

  /// value111008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111008 = AuditEventID(
    fhirCode: '111008',
  );

  /// value111009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111009 = AuditEventID(
    fhirCode: '111009',
  );

  /// value111010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111010 = AuditEventID(
    fhirCode: '111010',
  );

  /// value111011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111011 = AuditEventID(
    fhirCode: '111011',
  );

  /// value111012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111012 = AuditEventID(
    fhirCode: '111012',
  );

  /// value111013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111013 = AuditEventID(
    fhirCode: '111013',
  );

  /// value111014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111014 = AuditEventID(
    fhirCode: '111014',
  );

  /// value111015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111015 = AuditEventID(
    fhirCode: '111015',
  );

  /// value111016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111016 = AuditEventID(
    fhirCode: '111016',
  );

  /// value111017
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111017 = AuditEventID(
    fhirCode: '111017',
  );

  /// value111018
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111018 = AuditEventID(
    fhirCode: '111018',
  );

  /// value111019
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111019 = AuditEventID(
    fhirCode: '111019',
  );

  /// value111020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111020 = AuditEventID(
    fhirCode: '111020',
  );

  /// value111021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111021 = AuditEventID(
    fhirCode: '111021',
  );

  /// value111022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111022 = AuditEventID(
    fhirCode: '111022',
  );

  /// value111023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111023 = AuditEventID(
    fhirCode: '111023',
  );

  /// value111024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111024 = AuditEventID(
    fhirCode: '111024',
  );

  /// value111025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111025 = AuditEventID(
    fhirCode: '111025',
  );

  /// value111026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111026 = AuditEventID(
    fhirCode: '111026',
  );

  /// value111027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111027 = AuditEventID(
    fhirCode: '111027',
  );

  /// value111028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111028 = AuditEventID(
    fhirCode: '111028',
  );

  /// value111029
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111029 = AuditEventID(
    fhirCode: '111029',
  );

  /// value111030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111030 = AuditEventID(
    fhirCode: '111030',
  );

  /// value111031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111031 = AuditEventID(
    fhirCode: '111031',
  );

  /// value111032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111032 = AuditEventID(
    fhirCode: '111032',
  );

  /// value111033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111033 = AuditEventID(
    fhirCode: '111033',
  );

  /// value111034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111034 = AuditEventID(
    fhirCode: '111034',
  );

  /// value111035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111035 = AuditEventID(
    fhirCode: '111035',
  );

  /// value111036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111036 = AuditEventID(
    fhirCode: '111036',
  );

  /// value111037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111037 = AuditEventID(
    fhirCode: '111037',
  );

  /// value111038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111038 = AuditEventID(
    fhirCode: '111038',
  );

  /// value111039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111039 = AuditEventID(
    fhirCode: '111039',
  );

  /// value111040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111040 = AuditEventID(
    fhirCode: '111040',
  );

  /// value111041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111041 = AuditEventID(
    fhirCode: '111041',
  );

  /// value111042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111042 = AuditEventID(
    fhirCode: '111042',
  );

  /// value111043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111043 = AuditEventID(
    fhirCode: '111043',
  );

  /// value111044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111044 = AuditEventID(
    fhirCode: '111044',
  );

  /// value111045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111045 = AuditEventID(
    fhirCode: '111045',
  );

  /// value111046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111046 = AuditEventID(
    fhirCode: '111046',
  );

  /// value111047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111047 = AuditEventID(
    fhirCode: '111047',
  );

  /// value111048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111048 = AuditEventID(
    fhirCode: '111048',
  );

  /// value111049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111049 = AuditEventID(
    fhirCode: '111049',
  );

  /// value111050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111050 = AuditEventID(
    fhirCode: '111050',
  );

  /// value111051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111051 = AuditEventID(
    fhirCode: '111051',
  );

  /// value111052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111052 = AuditEventID(
    fhirCode: '111052',
  );

  /// value111053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111053 = AuditEventID(
    fhirCode: '111053',
  );

  /// value111054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111054 = AuditEventID(
    fhirCode: '111054',
  );

  /// value111055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111055 = AuditEventID(
    fhirCode: '111055',
  );

  /// value111056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111056 = AuditEventID(
    fhirCode: '111056',
  );

  /// value111057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111057 = AuditEventID(
    fhirCode: '111057',
  );

  /// value111058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111058 = AuditEventID(
    fhirCode: '111058',
  );

  /// value111059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111059 = AuditEventID(
    fhirCode: '111059',
  );

  /// value111060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111060 = AuditEventID(
    fhirCode: '111060',
  );

  /// value111061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111061 = AuditEventID(
    fhirCode: '111061',
  );

  /// value111062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111062 = AuditEventID(
    fhirCode: '111062',
  );

  /// value111063
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111063 = AuditEventID(
    fhirCode: '111063',
  );

  /// value111064
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111064 = AuditEventID(
    fhirCode: '111064',
  );

  /// value111065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111065 = AuditEventID(
    fhirCode: '111065',
  );

  /// value111066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111066 = AuditEventID(
    fhirCode: '111066',
  );

  /// value111069
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111069 = AuditEventID(
    fhirCode: '111069',
  );

  /// value111071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111071 = AuditEventID(
    fhirCode: '111071',
  );

  /// value111072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111072 = AuditEventID(
    fhirCode: '111072',
  );

  /// value111081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111081 = AuditEventID(
    fhirCode: '111081',
  );

  /// value111086
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111086 = AuditEventID(
    fhirCode: '111086',
  );

  /// value111087
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111087 = AuditEventID(
    fhirCode: '111087',
  );

  /// value111088
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111088 = AuditEventID(
    fhirCode: '111088',
  );

  /// value111089
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111089 = AuditEventID(
    fhirCode: '111089',
  );

  /// value111090
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111090 = AuditEventID(
    fhirCode: '111090',
  );

  /// value111091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111091 = AuditEventID(
    fhirCode: '111091',
  );

  /// value111092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111092 = AuditEventID(
    fhirCode: '111092',
  );

  /// value111093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111093 = AuditEventID(
    fhirCode: '111093',
  );

  /// value111099
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111099 = AuditEventID(
    fhirCode: '111099',
  );

  /// value111100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111100 = AuditEventID(
    fhirCode: '111100',
  );

  /// value111101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111101 = AuditEventID(
    fhirCode: '111101',
  );

  /// value111102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111102 = AuditEventID(
    fhirCode: '111102',
  );

  /// value111103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111103 = AuditEventID(
    fhirCode: '111103',
  );

  /// value111104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111104 = AuditEventID(
    fhirCode: '111104',
  );

  /// value111105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111105 = AuditEventID(
    fhirCode: '111105',
  );

  /// value111111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111111 = AuditEventID(
    fhirCode: '111111',
  );

  /// value111112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111112 = AuditEventID(
    fhirCode: '111112',
  );

  /// value111113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111113 = AuditEventID(
    fhirCode: '111113',
  );

  /// value111120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111120 = AuditEventID(
    fhirCode: '111120',
  );

  /// value111121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111121 = AuditEventID(
    fhirCode: '111121',
  );

  /// value111122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111122 = AuditEventID(
    fhirCode: '111122',
  );

  /// value111123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111123 = AuditEventID(
    fhirCode: '111123',
  );

  /// value111124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111124 = AuditEventID(
    fhirCode: '111124',
  );

  /// value111125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111125 = AuditEventID(
    fhirCode: '111125',
  );

  /// value111126
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111126 = AuditEventID(
    fhirCode: '111126',
  );

  /// value111127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111127 = AuditEventID(
    fhirCode: '111127',
  );

  /// value111128
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111128 = AuditEventID(
    fhirCode: '111128',
  );

  /// value111129
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111129 = AuditEventID(
    fhirCode: '111129',
  );

  /// value111130
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111130 = AuditEventID(
    fhirCode: '111130',
  );

  /// value111135
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111135 = AuditEventID(
    fhirCode: '111135',
  );

  /// value111136
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111136 = AuditEventID(
    fhirCode: '111136',
  );

  /// value111137
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111137 = AuditEventID(
    fhirCode: '111137',
  );

  /// value111138
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111138 = AuditEventID(
    fhirCode: '111138',
  );

  /// value111139
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111139 = AuditEventID(
    fhirCode: '111139',
  );

  /// value111140
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111140 = AuditEventID(
    fhirCode: '111140',
  );

  /// value111141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111141 = AuditEventID(
    fhirCode: '111141',
  );

  /// value111142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111142 = AuditEventID(
    fhirCode: '111142',
  );

  /// value111143
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111143 = AuditEventID(
    fhirCode: '111143',
  );

  /// value111144
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111144 = AuditEventID(
    fhirCode: '111144',
  );

  /// value111145
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111145 = AuditEventID(
    fhirCode: '111145',
  );

  /// value111146
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111146 = AuditEventID(
    fhirCode: '111146',
  );

  /// value111147
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111147 = AuditEventID(
    fhirCode: '111147',
  );

  /// value111148
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111148 = AuditEventID(
    fhirCode: '111148',
  );

  /// value111149
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111149 = AuditEventID(
    fhirCode: '111149',
  );

  /// value111150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111150 = AuditEventID(
    fhirCode: '111150',
  );

  /// value111151
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111151 = AuditEventID(
    fhirCode: '111151',
  );

  /// value111152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111152 = AuditEventID(
    fhirCode: '111152',
  );

  /// value111153
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111153 = AuditEventID(
    fhirCode: '111153',
  );

  /// value111154
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111154 = AuditEventID(
    fhirCode: '111154',
  );

  /// value111155
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111155 = AuditEventID(
    fhirCode: '111155',
  );

  /// value111156
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111156 = AuditEventID(
    fhirCode: '111156',
  );

  /// value111157
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111157 = AuditEventID(
    fhirCode: '111157',
  );

  /// value111158
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111158 = AuditEventID(
    fhirCode: '111158',
  );

  /// value111159
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111159 = AuditEventID(
    fhirCode: '111159',
  );

  /// value111168
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111168 = AuditEventID(
    fhirCode: '111168',
  );

  /// value111170
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111170 = AuditEventID(
    fhirCode: '111170',
  );

  /// value111171
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111171 = AuditEventID(
    fhirCode: '111171',
  );

  /// value111172
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111172 = AuditEventID(
    fhirCode: '111172',
  );

  /// value111173
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111173 = AuditEventID(
    fhirCode: '111173',
  );

  /// value111174
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111174 = AuditEventID(
    fhirCode: '111174',
  );

  /// value111175
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111175 = AuditEventID(
    fhirCode: '111175',
  );

  /// value111176
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111176 = AuditEventID(
    fhirCode: '111176',
  );

  /// value111177
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111177 = AuditEventID(
    fhirCode: '111177',
  );

  /// value111178
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111178 = AuditEventID(
    fhirCode: '111178',
  );

  /// value111179
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111179 = AuditEventID(
    fhirCode: '111179',
  );

  /// value111180
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111180 = AuditEventID(
    fhirCode: '111180',
  );

  /// value111181
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111181 = AuditEventID(
    fhirCode: '111181',
  );

  /// value111182
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111182 = AuditEventID(
    fhirCode: '111182',
  );

  /// value111183
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111183 = AuditEventID(
    fhirCode: '111183',
  );

  /// value111184
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111184 = AuditEventID(
    fhirCode: '111184',
  );

  /// value111185
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111185 = AuditEventID(
    fhirCode: '111185',
  );

  /// value111186
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111186 = AuditEventID(
    fhirCode: '111186',
  );

  /// value111187
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111187 = AuditEventID(
    fhirCode: '111187',
  );

  /// value111188
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111188 = AuditEventID(
    fhirCode: '111188',
  );

  /// value111189
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111189 = AuditEventID(
    fhirCode: '111189',
  );

  /// value111190
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111190 = AuditEventID(
    fhirCode: '111190',
  );

  /// value111191
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111191 = AuditEventID(
    fhirCode: '111191',
  );

  /// value111192
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111192 = AuditEventID(
    fhirCode: '111192',
  );

  /// value111193
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111193 = AuditEventID(
    fhirCode: '111193',
  );

  /// value111194
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111194 = AuditEventID(
    fhirCode: '111194',
  );

  /// value111195
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111195 = AuditEventID(
    fhirCode: '111195',
  );

  /// value111196
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111196 = AuditEventID(
    fhirCode: '111196',
  );

  /// value111197
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111197 = AuditEventID(
    fhirCode: '111197',
  );

  /// value111198
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111198 = AuditEventID(
    fhirCode: '111198',
  );

  /// value111199
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111199 = AuditEventID(
    fhirCode: '111199',
  );

  /// value111200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111200 = AuditEventID(
    fhirCode: '111200',
  );

  /// value111201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111201 = AuditEventID(
    fhirCode: '111201',
  );

  /// value111202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111202 = AuditEventID(
    fhirCode: '111202',
  );

  /// value111203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111203 = AuditEventID(
    fhirCode: '111203',
  );

  /// value111204
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111204 = AuditEventID(
    fhirCode: '111204',
  );

  /// value111205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111205 = AuditEventID(
    fhirCode: '111205',
  );

  /// value111206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111206 = AuditEventID(
    fhirCode: '111206',
  );

  /// value111207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111207 = AuditEventID(
    fhirCode: '111207',
  );

  /// value111208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111208 = AuditEventID(
    fhirCode: '111208',
  );

  /// value111209
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111209 = AuditEventID(
    fhirCode: '111209',
  );

  /// value111210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111210 = AuditEventID(
    fhirCode: '111210',
  );

  /// value111211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111211 = AuditEventID(
    fhirCode: '111211',
  );

  /// value111212
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111212 = AuditEventID(
    fhirCode: '111212',
  );

  /// value111213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111213 = AuditEventID(
    fhirCode: '111213',
  );

  /// value111214
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111214 = AuditEventID(
    fhirCode: '111214',
  );

  /// value111215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111215 = AuditEventID(
    fhirCode: '111215',
  );

  /// value111216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111216 = AuditEventID(
    fhirCode: '111216',
  );

  /// value111217
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111217 = AuditEventID(
    fhirCode: '111217',
  );

  /// value111218
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111218 = AuditEventID(
    fhirCode: '111218',
  );

  /// value111219
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111219 = AuditEventID(
    fhirCode: '111219',
  );

  /// value111220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111220 = AuditEventID(
    fhirCode: '111220',
  );

  /// value111221
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111221 = AuditEventID(
    fhirCode: '111221',
  );

  /// value111222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111222 = AuditEventID(
    fhirCode: '111222',
  );

  /// value111223
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111223 = AuditEventID(
    fhirCode: '111223',
  );

  /// value111224
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111224 = AuditEventID(
    fhirCode: '111224',
  );

  /// value111225
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111225 = AuditEventID(
    fhirCode: '111225',
  );

  /// value111233
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111233 = AuditEventID(
    fhirCode: '111233',
  );

  /// value111234
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111234 = AuditEventID(
    fhirCode: '111234',
  );

  /// value111235
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111235 = AuditEventID(
    fhirCode: '111235',
  );

  /// value111236
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111236 = AuditEventID(
    fhirCode: '111236',
  );

  /// value111237
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111237 = AuditEventID(
    fhirCode: '111237',
  );

  /// value111238
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111238 = AuditEventID(
    fhirCode: '111238',
  );

  /// value111239
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111239 = AuditEventID(
    fhirCode: '111239',
  );

  /// value111240
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111240 = AuditEventID(
    fhirCode: '111240',
  );

  /// value111241
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111241 = AuditEventID(
    fhirCode: '111241',
  );

  /// value111242
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111242 = AuditEventID(
    fhirCode: '111242',
  );

  /// value111243
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111243 = AuditEventID(
    fhirCode: '111243',
  );

  /// value111244
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111244 = AuditEventID(
    fhirCode: '111244',
  );

  /// value111245
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111245 = AuditEventID(
    fhirCode: '111245',
  );

  /// value111248
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111248 = AuditEventID(
    fhirCode: '111248',
  );

  /// value111249
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111249 = AuditEventID(
    fhirCode: '111249',
  );

  /// value111250
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111250 = AuditEventID(
    fhirCode: '111250',
  );

  /// value111251
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111251 = AuditEventID(
    fhirCode: '111251',
  );

  /// value111252
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111252 = AuditEventID(
    fhirCode: '111252',
  );

  /// value111253
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111253 = AuditEventID(
    fhirCode: '111253',
  );

  /// value111254
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111254 = AuditEventID(
    fhirCode: '111254',
  );

  /// value111255
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111255 = AuditEventID(
    fhirCode: '111255',
  );

  /// value111256
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111256 = AuditEventID(
    fhirCode: '111256',
  );

  /// value111257
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111257 = AuditEventID(
    fhirCode: '111257',
  );

  /// value111258
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111258 = AuditEventID(
    fhirCode: '111258',
  );

  /// value111259
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111259 = AuditEventID(
    fhirCode: '111259',
  );

  /// value111260
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111260 = AuditEventID(
    fhirCode: '111260',
  );

  /// value111262
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111262 = AuditEventID(
    fhirCode: '111262',
  );

  /// value111263
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111263 = AuditEventID(
    fhirCode: '111263',
  );

  /// value111264
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111264 = AuditEventID(
    fhirCode: '111264',
  );

  /// value111265
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111265 = AuditEventID(
    fhirCode: '111265',
  );

  /// value111269
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111269 = AuditEventID(
    fhirCode: '111269',
  );

  /// value111271
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111271 = AuditEventID(
    fhirCode: '111271',
  );

  /// value111273
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111273 = AuditEventID(
    fhirCode: '111273',
  );

  /// value111277
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111277 = AuditEventID(
    fhirCode: '111277',
  );

  /// value111278
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111278 = AuditEventID(
    fhirCode: '111278',
  );

  /// value111279
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111279 = AuditEventID(
    fhirCode: '111279',
  );

  /// value111281
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111281 = AuditEventID(
    fhirCode: '111281',
  );

  /// value111283
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111283 = AuditEventID(
    fhirCode: '111283',
  );

  /// value111284
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111284 = AuditEventID(
    fhirCode: '111284',
  );

  /// value111285
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111285 = AuditEventID(
    fhirCode: '111285',
  );

  /// value111286
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111286 = AuditEventID(
    fhirCode: '111286',
  );

  /// value111287
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111287 = AuditEventID(
    fhirCode: '111287',
  );

  /// value111288
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111288 = AuditEventID(
    fhirCode: '111288',
  );

  /// value111290
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111290 = AuditEventID(
    fhirCode: '111290',
  );

  /// value111291
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111291 = AuditEventID(
    fhirCode: '111291',
  );

  /// value111292
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111292 = AuditEventID(
    fhirCode: '111292',
  );

  /// value111293
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111293 = AuditEventID(
    fhirCode: '111293',
  );

  /// value111294
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111294 = AuditEventID(
    fhirCode: '111294',
  );

  /// value111296
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111296 = AuditEventID(
    fhirCode: '111296',
  );

  /// value111297
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111297 = AuditEventID(
    fhirCode: '111297',
  );

  /// value111298
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111298 = AuditEventID(
    fhirCode: '111298',
  );

  /// value111299
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111299 = AuditEventID(
    fhirCode: '111299',
  );

  /// value111300
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111300 = AuditEventID(
    fhirCode: '111300',
  );

  /// value111301
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111301 = AuditEventID(
    fhirCode: '111301',
  );

  /// value111302
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111302 = AuditEventID(
    fhirCode: '111302',
  );

  /// value111303
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111303 = AuditEventID(
    fhirCode: '111303',
  );

  /// value111304
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111304 = AuditEventID(
    fhirCode: '111304',
  );

  /// value111305
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111305 = AuditEventID(
    fhirCode: '111305',
  );

  /// value111306
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111306 = AuditEventID(
    fhirCode: '111306',
  );

  /// value111307
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111307 = AuditEventID(
    fhirCode: '111307',
  );

  /// value111308
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111308 = AuditEventID(
    fhirCode: '111308',
  );

  /// value111309
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111309 = AuditEventID(
    fhirCode: '111309',
  );

  /// value111310
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111310 = AuditEventID(
    fhirCode: '111310',
  );

  /// value111311
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111311 = AuditEventID(
    fhirCode: '111311',
  );

  /// value111312
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111312 = AuditEventID(
    fhirCode: '111312',
  );

  /// value111313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111313 = AuditEventID(
    fhirCode: '111313',
  );

  /// value111314
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111314 = AuditEventID(
    fhirCode: '111314',
  );

  /// value111315
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111315 = AuditEventID(
    fhirCode: '111315',
  );

  /// value111316
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111316 = AuditEventID(
    fhirCode: '111316',
  );

  /// value111317
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111317 = AuditEventID(
    fhirCode: '111317',
  );

  /// value111318
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111318 = AuditEventID(
    fhirCode: '111318',
  );

  /// value111320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111320 = AuditEventID(
    fhirCode: '111320',
  );

  /// value111321
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111321 = AuditEventID(
    fhirCode: '111321',
  );

  /// value111322
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111322 = AuditEventID(
    fhirCode: '111322',
  );

  /// value111323
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111323 = AuditEventID(
    fhirCode: '111323',
  );

  /// value111324
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111324 = AuditEventID(
    fhirCode: '111324',
  );

  /// value111325
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111325 = AuditEventID(
    fhirCode: '111325',
  );

  /// value111326
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111326 = AuditEventID(
    fhirCode: '111326',
  );

  /// value111327
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111327 = AuditEventID(
    fhirCode: '111327',
  );

  /// value111328
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111328 = AuditEventID(
    fhirCode: '111328',
  );

  /// value111329
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111329 = AuditEventID(
    fhirCode: '111329',
  );

  /// value111330
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111330 = AuditEventID(
    fhirCode: '111330',
  );

  /// value111331
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111331 = AuditEventID(
    fhirCode: '111331',
  );

  /// value111332
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111332 = AuditEventID(
    fhirCode: '111332',
  );

  /// value111333
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111333 = AuditEventID(
    fhirCode: '111333',
  );

  /// value111334
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111334 = AuditEventID(
    fhirCode: '111334',
  );

  /// value111335
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111335 = AuditEventID(
    fhirCode: '111335',
  );

  /// value111336
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111336 = AuditEventID(
    fhirCode: '111336',
  );

  /// value111338
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111338 = AuditEventID(
    fhirCode: '111338',
  );

  /// value111340
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111340 = AuditEventID(
    fhirCode: '111340',
  );

  /// value111341
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111341 = AuditEventID(
    fhirCode: '111341',
  );

  /// value111342
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111342 = AuditEventID(
    fhirCode: '111342',
  );

  /// value111343
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111343 = AuditEventID(
    fhirCode: '111343',
  );

  /// value111344
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111344 = AuditEventID(
    fhirCode: '111344',
  );

  /// value111345
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111345 = AuditEventID(
    fhirCode: '111345',
  );

  /// value111346
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111346 = AuditEventID(
    fhirCode: '111346',
  );

  /// value111347
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111347 = AuditEventID(
    fhirCode: '111347',
  );

  /// value111350
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111350 = AuditEventID(
    fhirCode: '111350',
  );

  /// value111351
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111351 = AuditEventID(
    fhirCode: '111351',
  );

  /// value111352
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111352 = AuditEventID(
    fhirCode: '111352',
  );

  /// value111353
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111353 = AuditEventID(
    fhirCode: '111353',
  );

  /// value111354
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111354 = AuditEventID(
    fhirCode: '111354',
  );

  /// value111355
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111355 = AuditEventID(
    fhirCode: '111355',
  );

  /// value111356
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111356 = AuditEventID(
    fhirCode: '111356',
  );

  /// value111357
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111357 = AuditEventID(
    fhirCode: '111357',
  );

  /// value111358
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111358 = AuditEventID(
    fhirCode: '111358',
  );

  /// value111359
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111359 = AuditEventID(
    fhirCode: '111359',
  );

  /// value111360
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111360 = AuditEventID(
    fhirCode: '111360',
  );

  /// value111361
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111361 = AuditEventID(
    fhirCode: '111361',
  );

  /// value111362
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111362 = AuditEventID(
    fhirCode: '111362',
  );

  /// value111363
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111363 = AuditEventID(
    fhirCode: '111363',
  );

  /// value111364
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111364 = AuditEventID(
    fhirCode: '111364',
  );

  /// value111365
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111365 = AuditEventID(
    fhirCode: '111365',
  );

  /// value111366
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111366 = AuditEventID(
    fhirCode: '111366',
  );

  /// value111367
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111367 = AuditEventID(
    fhirCode: '111367',
  );

  /// value111368
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111368 = AuditEventID(
    fhirCode: '111368',
  );

  /// value111369
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111369 = AuditEventID(
    fhirCode: '111369',
  );

  /// value111370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111370 = AuditEventID(
    fhirCode: '111370',
  );

  /// value111371
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111371 = AuditEventID(
    fhirCode: '111371',
  );

  /// value111372
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111372 = AuditEventID(
    fhirCode: '111372',
  );

  /// value111373
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111373 = AuditEventID(
    fhirCode: '111373',
  );

  /// value111374
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111374 = AuditEventID(
    fhirCode: '111374',
  );

  /// value111375
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111375 = AuditEventID(
    fhirCode: '111375',
  );

  /// value111376
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111376 = AuditEventID(
    fhirCode: '111376',
  );

  /// value111377
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111377 = AuditEventID(
    fhirCode: '111377',
  );

  /// value111380
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111380 = AuditEventID(
    fhirCode: '111380',
  );

  /// value111381
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111381 = AuditEventID(
    fhirCode: '111381',
  );

  /// value111382
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111382 = AuditEventID(
    fhirCode: '111382',
  );

  /// value111383
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111383 = AuditEventID(
    fhirCode: '111383',
  );

  /// value111384
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111384 = AuditEventID(
    fhirCode: '111384',
  );

  /// value111385
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111385 = AuditEventID(
    fhirCode: '111385',
  );

  /// value111386
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111386 = AuditEventID(
    fhirCode: '111386',
  );

  /// value111387
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111387 = AuditEventID(
    fhirCode: '111387',
  );

  /// value111388
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111388 = AuditEventID(
    fhirCode: '111388',
  );

  /// value111389
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111389 = AuditEventID(
    fhirCode: '111389',
  );

  /// value111390
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111390 = AuditEventID(
    fhirCode: '111390',
  );

  /// value111391
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111391 = AuditEventID(
    fhirCode: '111391',
  );

  /// value111392
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111392 = AuditEventID(
    fhirCode: '111392',
  );

  /// value111393
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111393 = AuditEventID(
    fhirCode: '111393',
  );

  /// value111394
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111394 = AuditEventID(
    fhirCode: '111394',
  );

  /// value111395
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111395 = AuditEventID(
    fhirCode: '111395',
  );

  /// value111396
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111396 = AuditEventID(
    fhirCode: '111396',
  );

  /// value111397
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111397 = AuditEventID(
    fhirCode: '111397',
  );

  /// value111398
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111398 = AuditEventID(
    fhirCode: '111398',
  );

  /// value111399
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111399 = AuditEventID(
    fhirCode: '111399',
  );

  /// value111400
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111400 = AuditEventID(
    fhirCode: '111400',
  );

  /// value111401
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111401 = AuditEventID(
    fhirCode: '111401',
  );

  /// value111402
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111402 = AuditEventID(
    fhirCode: '111402',
  );

  /// value111403
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111403 = AuditEventID(
    fhirCode: '111403',
  );

  /// value111404
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111404 = AuditEventID(
    fhirCode: '111404',
  );

  /// value111405
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111405 = AuditEventID(
    fhirCode: '111405',
  );

  /// value111406
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111406 = AuditEventID(
    fhirCode: '111406',
  );

  /// value111407
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111407 = AuditEventID(
    fhirCode: '111407',
  );

  /// value111408
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111408 = AuditEventID(
    fhirCode: '111408',
  );

  /// value111409
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111409 = AuditEventID(
    fhirCode: '111409',
  );

  /// value111410
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111410 = AuditEventID(
    fhirCode: '111410',
  );

  /// value111411
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111411 = AuditEventID(
    fhirCode: '111411',
  );

  /// value111412
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111412 = AuditEventID(
    fhirCode: '111412',
  );

  /// value111413
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111413 = AuditEventID(
    fhirCode: '111413',
  );

  /// value111414
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111414 = AuditEventID(
    fhirCode: '111414',
  );

  /// value111415
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111415 = AuditEventID(
    fhirCode: '111415',
  );

  /// value111416
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111416 = AuditEventID(
    fhirCode: '111416',
  );

  /// value111417
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111417 = AuditEventID(
    fhirCode: '111417',
  );

  /// value111418
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111418 = AuditEventID(
    fhirCode: '111418',
  );

  /// value111419
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111419 = AuditEventID(
    fhirCode: '111419',
  );

  /// value111420
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111420 = AuditEventID(
    fhirCode: '111420',
  );

  /// value111421
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111421 = AuditEventID(
    fhirCode: '111421',
  );

  /// value111423
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111423 = AuditEventID(
    fhirCode: '111423',
  );

  /// value111424
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111424 = AuditEventID(
    fhirCode: '111424',
  );

  /// value111425
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111425 = AuditEventID(
    fhirCode: '111425',
  );

  /// value111426
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111426 = AuditEventID(
    fhirCode: '111426',
  );

  /// value111427
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111427 = AuditEventID(
    fhirCode: '111427',
  );

  /// value111428
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111428 = AuditEventID(
    fhirCode: '111428',
  );

  /// value111429
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111429 = AuditEventID(
    fhirCode: '111429',
  );

  /// value111430
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111430 = AuditEventID(
    fhirCode: '111430',
  );

  /// value111431
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111431 = AuditEventID(
    fhirCode: '111431',
  );

  /// value111432
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111432 = AuditEventID(
    fhirCode: '111432',
  );

  /// value111433
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111433 = AuditEventID(
    fhirCode: '111433',
  );

  /// value111434
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111434 = AuditEventID(
    fhirCode: '111434',
  );

  /// value111435
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111435 = AuditEventID(
    fhirCode: '111435',
  );

  /// value111436
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111436 = AuditEventID(
    fhirCode: '111436',
  );

  /// value111437
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111437 = AuditEventID(
    fhirCode: '111437',
  );

  /// value111438
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111438 = AuditEventID(
    fhirCode: '111438',
  );

  /// value111439
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111439 = AuditEventID(
    fhirCode: '111439',
  );

  /// value111440
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111440 = AuditEventID(
    fhirCode: '111440',
  );

  /// value111441
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111441 = AuditEventID(
    fhirCode: '111441',
  );

  /// value111442
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111442 = AuditEventID(
    fhirCode: '111442',
  );

  /// value111443
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111443 = AuditEventID(
    fhirCode: '111443',
  );

  /// value111444
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111444 = AuditEventID(
    fhirCode: '111444',
  );

  /// value111445
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111445 = AuditEventID(
    fhirCode: '111445',
  );

  /// value111446
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111446 = AuditEventID(
    fhirCode: '111446',
  );

  /// value111447
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111447 = AuditEventID(
    fhirCode: '111447',
  );

  /// value111448
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111448 = AuditEventID(
    fhirCode: '111448',
  );

  /// value111449
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111449 = AuditEventID(
    fhirCode: '111449',
  );

  /// value111450
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111450 = AuditEventID(
    fhirCode: '111450',
  );

  /// value111451
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111451 = AuditEventID(
    fhirCode: '111451',
  );

  /// value111452
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111452 = AuditEventID(
    fhirCode: '111452',
  );

  /// value111453
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111453 = AuditEventID(
    fhirCode: '111453',
  );

  /// value111454
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111454 = AuditEventID(
    fhirCode: '111454',
  );

  /// value111455
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111455 = AuditEventID(
    fhirCode: '111455',
  );

  /// value111456
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111456 = AuditEventID(
    fhirCode: '111456',
  );

  /// value111457
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111457 = AuditEventID(
    fhirCode: '111457',
  );

  /// value111458
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111458 = AuditEventID(
    fhirCode: '111458',
  );

  /// value111459
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111459 = AuditEventID(
    fhirCode: '111459',
  );

  /// value111460
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111460 = AuditEventID(
    fhirCode: '111460',
  );

  /// value111461
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111461 = AuditEventID(
    fhirCode: '111461',
  );

  /// value111462
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111462 = AuditEventID(
    fhirCode: '111462',
  );

  /// value111463
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111463 = AuditEventID(
    fhirCode: '111463',
  );

  /// value111464
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111464 = AuditEventID(
    fhirCode: '111464',
  );

  /// value111465
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111465 = AuditEventID(
    fhirCode: '111465',
  );

  /// value111466
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111466 = AuditEventID(
    fhirCode: '111466',
  );

  /// value111467
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111467 = AuditEventID(
    fhirCode: '111467',
  );

  /// value111468
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111468 = AuditEventID(
    fhirCode: '111468',
  );

  /// value111469
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111469 = AuditEventID(
    fhirCode: '111469',
  );

  /// value111470
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111470 = AuditEventID(
    fhirCode: '111470',
  );

  /// value111471
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111471 = AuditEventID(
    fhirCode: '111471',
  );

  /// value111472
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111472 = AuditEventID(
    fhirCode: '111472',
  );

  /// value111473
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111473 = AuditEventID(
    fhirCode: '111473',
  );

  /// value111474
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111474 = AuditEventID(
    fhirCode: '111474',
  );

  /// value111475
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111475 = AuditEventID(
    fhirCode: '111475',
  );

  /// value111476
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111476 = AuditEventID(
    fhirCode: '111476',
  );

  /// value111477
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111477 = AuditEventID(
    fhirCode: '111477',
  );

  /// value111478
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111478 = AuditEventID(
    fhirCode: '111478',
  );

  /// value111479
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111479 = AuditEventID(
    fhirCode: '111479',
  );

  /// value111480
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111480 = AuditEventID(
    fhirCode: '111480',
  );

  /// value111481
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111481 = AuditEventID(
    fhirCode: '111481',
  );

  /// value111482
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111482 = AuditEventID(
    fhirCode: '111482',
  );

  /// value111483
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111483 = AuditEventID(
    fhirCode: '111483',
  );

  /// value111484
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111484 = AuditEventID(
    fhirCode: '111484',
  );

  /// value111485
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111485 = AuditEventID(
    fhirCode: '111485',
  );

  /// value111486
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111486 = AuditEventID(
    fhirCode: '111486',
  );

  /// value111487
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111487 = AuditEventID(
    fhirCode: '111487',
  );

  /// value111488
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111488 = AuditEventID(
    fhirCode: '111488',
  );

  /// value111489
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111489 = AuditEventID(
    fhirCode: '111489',
  );

  /// value111490
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111490 = AuditEventID(
    fhirCode: '111490',
  );

  /// value111491
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111491 = AuditEventID(
    fhirCode: '111491',
  );

  /// value111492
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111492 = AuditEventID(
    fhirCode: '111492',
  );

  /// value111494
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111494 = AuditEventID(
    fhirCode: '111494',
  );

  /// value111495
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111495 = AuditEventID(
    fhirCode: '111495',
  );

  /// value111496
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111496 = AuditEventID(
    fhirCode: '111496',
  );

  /// value111497
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111497 = AuditEventID(
    fhirCode: '111497',
  );

  /// value111498
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111498 = AuditEventID(
    fhirCode: '111498',
  );

  /// value111499
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111499 = AuditEventID(
    fhirCode: '111499',
  );

  /// value111500
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111500 = AuditEventID(
    fhirCode: '111500',
  );

  /// value111501
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111501 = AuditEventID(
    fhirCode: '111501',
  );

  /// value111502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111502 = AuditEventID(
    fhirCode: '111502',
  );

  /// value111503
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111503 = AuditEventID(
    fhirCode: '111503',
  );

  /// value111504
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111504 = AuditEventID(
    fhirCode: '111504',
  );

  /// value111505
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111505 = AuditEventID(
    fhirCode: '111505',
  );

  /// value111506
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111506 = AuditEventID(
    fhirCode: '111506',
  );

  /// value111507
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111507 = AuditEventID(
    fhirCode: '111507',
  );

  /// value111508
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111508 = AuditEventID(
    fhirCode: '111508',
  );

  /// value111509
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111509 = AuditEventID(
    fhirCode: '111509',
  );

  /// value111510
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111510 = AuditEventID(
    fhirCode: '111510',
  );

  /// value111511
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111511 = AuditEventID(
    fhirCode: '111511',
  );

  /// value111512
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111512 = AuditEventID(
    fhirCode: '111512',
  );

  /// value111513
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111513 = AuditEventID(
    fhirCode: '111513',
  );

  /// value111514
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111514 = AuditEventID(
    fhirCode: '111514',
  );

  /// value111515
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111515 = AuditEventID(
    fhirCode: '111515',
  );

  /// value111516
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111516 = AuditEventID(
    fhirCode: '111516',
  );

  /// value111517
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111517 = AuditEventID(
    fhirCode: '111517',
  );

  /// value111518
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111518 = AuditEventID(
    fhirCode: '111518',
  );

  /// value111519
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111519 = AuditEventID(
    fhirCode: '111519',
  );

  /// value111520
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111520 = AuditEventID(
    fhirCode: '111520',
  );

  /// value111521
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111521 = AuditEventID(
    fhirCode: '111521',
  );

  /// value111522
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111522 = AuditEventID(
    fhirCode: '111522',
  );

  /// value111523
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111523 = AuditEventID(
    fhirCode: '111523',
  );

  /// value111524
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111524 = AuditEventID(
    fhirCode: '111524',
  );

  /// value111525
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111525 = AuditEventID(
    fhirCode: '111525',
  );

  /// value111526
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111526 = AuditEventID(
    fhirCode: '111526',
  );

  /// value111527
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111527 = AuditEventID(
    fhirCode: '111527',
  );

  /// value111528
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111528 = AuditEventID(
    fhirCode: '111528',
  );

  /// value111529
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111529 = AuditEventID(
    fhirCode: '111529',
  );

  /// value111530
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111530 = AuditEventID(
    fhirCode: '111530',
  );

  /// value111531
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111531 = AuditEventID(
    fhirCode: '111531',
  );

  /// value111532
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111532 = AuditEventID(
    fhirCode: '111532',
  );

  /// value111533
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111533 = AuditEventID(
    fhirCode: '111533',
  );

  /// value111534
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111534 = AuditEventID(
    fhirCode: '111534',
  );

  /// value111535
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111535 = AuditEventID(
    fhirCode: '111535',
  );

  /// value111536
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111536 = AuditEventID(
    fhirCode: '111536',
  );

  /// value111537
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111537 = AuditEventID(
    fhirCode: '111537',
  );

  /// value111538
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111538 = AuditEventID(
    fhirCode: '111538',
  );

  /// value111539
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111539 = AuditEventID(
    fhirCode: '111539',
  );

  /// value111540
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111540 = AuditEventID(
    fhirCode: '111540',
  );

  /// value111541
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111541 = AuditEventID(
    fhirCode: '111541',
  );

  /// value111542
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111542 = AuditEventID(
    fhirCode: '111542',
  );

  /// value111543
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111543 = AuditEventID(
    fhirCode: '111543',
  );

  /// value111544
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111544 = AuditEventID(
    fhirCode: '111544',
  );

  /// value111545
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111545 = AuditEventID(
    fhirCode: '111545',
  );

  /// value111546
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111546 = AuditEventID(
    fhirCode: '111546',
  );

  /// value111547
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111547 = AuditEventID(
    fhirCode: '111547',
  );

  /// value111548
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111548 = AuditEventID(
    fhirCode: '111548',
  );

  /// value111549
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111549 = AuditEventID(
    fhirCode: '111549',
  );

  /// value111550
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111550 = AuditEventID(
    fhirCode: '111550',
  );

  /// value111551
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111551 = AuditEventID(
    fhirCode: '111551',
  );

  /// value111552
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111552 = AuditEventID(
    fhirCode: '111552',
  );

  /// value111553
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111553 = AuditEventID(
    fhirCode: '111553',
  );

  /// value111554
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111554 = AuditEventID(
    fhirCode: '111554',
  );

  /// value111555
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111555 = AuditEventID(
    fhirCode: '111555',
  );

  /// value111556
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111556 = AuditEventID(
    fhirCode: '111556',
  );

  /// value111557
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111557 = AuditEventID(
    fhirCode: '111557',
  );

  /// value111558
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111558 = AuditEventID(
    fhirCode: '111558',
  );

  /// value111559
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111559 = AuditEventID(
    fhirCode: '111559',
  );

  /// value111560
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111560 = AuditEventID(
    fhirCode: '111560',
  );

  /// value111561
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111561 = AuditEventID(
    fhirCode: '111561',
  );

  /// value111562
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111562 = AuditEventID(
    fhirCode: '111562',
  );

  /// value111563
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111563 = AuditEventID(
    fhirCode: '111563',
  );

  /// value111564
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111564 = AuditEventID(
    fhirCode: '111564',
  );

  /// value111565
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111565 = AuditEventID(
    fhirCode: '111565',
  );

  /// value111566
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111566 = AuditEventID(
    fhirCode: '111566',
  );

  /// value111567
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111567 = AuditEventID(
    fhirCode: '111567',
  );

  /// value111568
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111568 = AuditEventID(
    fhirCode: '111568',
  );

  /// value111569
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111569 = AuditEventID(
    fhirCode: '111569',
  );

  /// value111570
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111570 = AuditEventID(
    fhirCode: '111570',
  );

  /// value111571
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111571 = AuditEventID(
    fhirCode: '111571',
  );

  /// value111572
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111572 = AuditEventID(
    fhirCode: '111572',
  );

  /// value111573
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111573 = AuditEventID(
    fhirCode: '111573',
  );

  /// value111574
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111574 = AuditEventID(
    fhirCode: '111574',
  );

  /// value111575
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111575 = AuditEventID(
    fhirCode: '111575',
  );

  /// value111576
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111576 = AuditEventID(
    fhirCode: '111576',
  );

  /// value111577
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111577 = AuditEventID(
    fhirCode: '111577',
  );

  /// value111578
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111578 = AuditEventID(
    fhirCode: '111578',
  );

  /// value111579
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111579 = AuditEventID(
    fhirCode: '111579',
  );

  /// value111580
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111580 = AuditEventID(
    fhirCode: '111580',
  );

  /// value111581
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111581 = AuditEventID(
    fhirCode: '111581',
  );

  /// value111582
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111582 = AuditEventID(
    fhirCode: '111582',
  );

  /// value111583
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111583 = AuditEventID(
    fhirCode: '111583',
  );

  /// value111584
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111584 = AuditEventID(
    fhirCode: '111584',
  );

  /// value111585
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111585 = AuditEventID(
    fhirCode: '111585',
  );

  /// value111586
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111586 = AuditEventID(
    fhirCode: '111586',
  );

  /// value111587
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111587 = AuditEventID(
    fhirCode: '111587',
  );

  /// value111590
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111590 = AuditEventID(
    fhirCode: '111590',
  );

  /// value111591
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111591 = AuditEventID(
    fhirCode: '111591',
  );

  /// value111592
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111592 = AuditEventID(
    fhirCode: '111592',
  );

  /// value111593
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111593 = AuditEventID(
    fhirCode: '111593',
  );

  /// value111601
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111601 = AuditEventID(
    fhirCode: '111601',
  );

  /// value111602
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111602 = AuditEventID(
    fhirCode: '111602',
  );

  /// value111603
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111603 = AuditEventID(
    fhirCode: '111603',
  );

  /// value111604
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111604 = AuditEventID(
    fhirCode: '111604',
  );

  /// value111605
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111605 = AuditEventID(
    fhirCode: '111605',
  );

  /// value111606
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111606 = AuditEventID(
    fhirCode: '111606',
  );

  /// value111607
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111607 = AuditEventID(
    fhirCode: '111607',
  );

  /// value111609
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111609 = AuditEventID(
    fhirCode: '111609',
  );

  /// value111621
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111621 = AuditEventID(
    fhirCode: '111621',
  );

  /// value111622
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111622 = AuditEventID(
    fhirCode: '111622',
  );

  /// value111623
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111623 = AuditEventID(
    fhirCode: '111623',
  );

  /// value111625
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111625 = AuditEventID(
    fhirCode: '111625',
  );

  /// value111626
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111626 = AuditEventID(
    fhirCode: '111626',
  );

  /// value111627
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111627 = AuditEventID(
    fhirCode: '111627',
  );

  /// value111628
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111628 = AuditEventID(
    fhirCode: '111628',
  );

  /// value111629
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111629 = AuditEventID(
    fhirCode: '111629',
  );

  /// value111630
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111630 = AuditEventID(
    fhirCode: '111630',
  );

  /// value111631
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111631 = AuditEventID(
    fhirCode: '111631',
  );

  /// value111632
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111632 = AuditEventID(
    fhirCode: '111632',
  );

  /// value111633
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111633 = AuditEventID(
    fhirCode: '111633',
  );

  /// value111634
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111634 = AuditEventID(
    fhirCode: '111634',
  );

  /// value111635
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111635 = AuditEventID(
    fhirCode: '111635',
  );

  /// value111636
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111636 = AuditEventID(
    fhirCode: '111636',
  );

  /// value111637
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111637 = AuditEventID(
    fhirCode: '111637',
  );

  /// value111638
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111638 = AuditEventID(
    fhirCode: '111638',
  );

  /// value111641
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111641 = AuditEventID(
    fhirCode: '111641',
  );

  /// value111642
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111642 = AuditEventID(
    fhirCode: '111642',
  );

  /// value111643
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111643 = AuditEventID(
    fhirCode: '111643',
  );

  /// value111644
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111644 = AuditEventID(
    fhirCode: '111644',
  );

  /// value111645
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111645 = AuditEventID(
    fhirCode: '111645',
  );

  /// value111646
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111646 = AuditEventID(
    fhirCode: '111646',
  );

  /// value111671
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111671 = AuditEventID(
    fhirCode: '111671',
  );

  /// value111672
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111672 = AuditEventID(
    fhirCode: '111672',
  );

  /// value111673
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111673 = AuditEventID(
    fhirCode: '111673',
  );

  /// value111674
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111674 = AuditEventID(
    fhirCode: '111674',
  );

  /// value111675
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111675 = AuditEventID(
    fhirCode: '111675',
  );

  /// value111676
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111676 = AuditEventID(
    fhirCode: '111676',
  );

  /// value111677
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111677 = AuditEventID(
    fhirCode: '111677',
  );

  /// value111678
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111678 = AuditEventID(
    fhirCode: '111678',
  );

  /// value111679
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111679 = AuditEventID(
    fhirCode: '111679',
  );

  /// value111680
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111680 = AuditEventID(
    fhirCode: '111680',
  );

  /// value111685
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111685 = AuditEventID(
    fhirCode: '111685',
  );

  /// value111686
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111686 = AuditEventID(
    fhirCode: '111686',
  );

  /// value111687
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111687 = AuditEventID(
    fhirCode: '111687',
  );

  /// value111688
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111688 = AuditEventID(
    fhirCode: '111688',
  );

  /// value111689
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111689 = AuditEventID(
    fhirCode: '111689',
  );

  /// value111690
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111690 = AuditEventID(
    fhirCode: '111690',
  );

  /// value111691
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111691 = AuditEventID(
    fhirCode: '111691',
  );

  /// value111692
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111692 = AuditEventID(
    fhirCode: '111692',
  );

  /// value111693
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111693 = AuditEventID(
    fhirCode: '111693',
  );

  /// value111694
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111694 = AuditEventID(
    fhirCode: '111694',
  );

  /// value111695
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111695 = AuditEventID(
    fhirCode: '111695',
  );

  /// value111696
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111696 = AuditEventID(
    fhirCode: '111696',
  );

  /// value111697
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111697 = AuditEventID(
    fhirCode: '111697',
  );

  /// value111698
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111698 = AuditEventID(
    fhirCode: '111698',
  );

  /// value111700
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111700 = AuditEventID(
    fhirCode: '111700',
  );

  /// value111701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111701 = AuditEventID(
    fhirCode: '111701',
  );

  /// value111702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111702 = AuditEventID(
    fhirCode: '111702',
  );

  /// value111703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111703 = AuditEventID(
    fhirCode: '111703',
  );

  /// value111704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111704 = AuditEventID(
    fhirCode: '111704',
  );

  /// value111705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111705 = AuditEventID(
    fhirCode: '111705',
  );

  /// value111706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111706 = AuditEventID(
    fhirCode: '111706',
  );

  /// value111707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111707 = AuditEventID(
    fhirCode: '111707',
  );

  /// value111708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111708 = AuditEventID(
    fhirCode: '111708',
  );

  /// value111709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111709 = AuditEventID(
    fhirCode: '111709',
  );

  /// value111710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111710 = AuditEventID(
    fhirCode: '111710',
  );

  /// value111711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111711 = AuditEventID(
    fhirCode: '111711',
  );

  /// value111712
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111712 = AuditEventID(
    fhirCode: '111712',
  );

  /// value111718
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111718 = AuditEventID(
    fhirCode: '111718',
  );

  /// value111719
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111719 = AuditEventID(
    fhirCode: '111719',
  );

  /// value111720
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111720 = AuditEventID(
    fhirCode: '111720',
  );

  /// value111721
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111721 = AuditEventID(
    fhirCode: '111721',
  );

  /// value111723
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111723 = AuditEventID(
    fhirCode: '111723',
  );

  /// value111724
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111724 = AuditEventID(
    fhirCode: '111724',
  );

  /// value111726
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111726 = AuditEventID(
    fhirCode: '111726',
  );

  /// value111727
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111727 = AuditEventID(
    fhirCode: '111727',
  );

  /// value111729
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111729 = AuditEventID(
    fhirCode: '111729',
  );

  /// value111741
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111741 = AuditEventID(
    fhirCode: '111741',
  );

  /// value111742
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111742 = AuditEventID(
    fhirCode: '111742',
  );

  /// value111743
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111743 = AuditEventID(
    fhirCode: '111743',
  );

  /// value111744
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111744 = AuditEventID(
    fhirCode: '111744',
  );

  /// value111745
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111745 = AuditEventID(
    fhirCode: '111745',
  );

  /// value111746
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111746 = AuditEventID(
    fhirCode: '111746',
  );

  /// value111747
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111747 = AuditEventID(
    fhirCode: '111747',
  );

  /// value111748
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111748 = AuditEventID(
    fhirCode: '111748',
  );

  /// value111749
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111749 = AuditEventID(
    fhirCode: '111749',
  );

  /// value111750
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111750 = AuditEventID(
    fhirCode: '111750',
  );

  /// value111751
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111751 = AuditEventID(
    fhirCode: '111751',
  );

  /// value111752
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111752 = AuditEventID(
    fhirCode: '111752',
  );

  /// value111753
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111753 = AuditEventID(
    fhirCode: '111753',
  );

  /// value111754
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111754 = AuditEventID(
    fhirCode: '111754',
  );

  /// value111755
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111755 = AuditEventID(
    fhirCode: '111755',
  );

  /// value111756
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111756 = AuditEventID(
    fhirCode: '111756',
  );

  /// value111760
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111760 = AuditEventID(
    fhirCode: '111760',
  );

  /// value111761
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111761 = AuditEventID(
    fhirCode: '111761',
  );

  /// value111762
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111762 = AuditEventID(
    fhirCode: '111762',
  );

  /// value111763
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111763 = AuditEventID(
    fhirCode: '111763',
  );

  /// value111764
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111764 = AuditEventID(
    fhirCode: '111764',
  );

  /// value111765
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111765 = AuditEventID(
    fhirCode: '111765',
  );

  /// value111766
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111766 = AuditEventID(
    fhirCode: '111766',
  );

  /// value111767
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111767 = AuditEventID(
    fhirCode: '111767',
  );

  /// value111768
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111768 = AuditEventID(
    fhirCode: '111768',
  );

  /// value111769
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111769 = AuditEventID(
    fhirCode: '111769',
  );

  /// value111770
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111770 = AuditEventID(
    fhirCode: '111770',
  );

  /// value111771
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111771 = AuditEventID(
    fhirCode: '111771',
  );

  /// value111772
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111772 = AuditEventID(
    fhirCode: '111772',
  );

  /// value111773
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111773 = AuditEventID(
    fhirCode: '111773',
  );

  /// value111776
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111776 = AuditEventID(
    fhirCode: '111776',
  );

  /// value111777
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111777 = AuditEventID(
    fhirCode: '111777',
  );

  /// value111778
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111778 = AuditEventID(
    fhirCode: '111778',
  );

  /// value111779
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111779 = AuditEventID(
    fhirCode: '111779',
  );

  /// value111780
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111780 = AuditEventID(
    fhirCode: '111780',
  );

  /// value111781
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111781 = AuditEventID(
    fhirCode: '111781',
  );

  /// value111782
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111782 = AuditEventID(
    fhirCode: '111782',
  );

  /// value111783
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111783 = AuditEventID(
    fhirCode: '111783',
  );

  /// value111786
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111786 = AuditEventID(
    fhirCode: '111786',
  );

  /// value111787
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111787 = AuditEventID(
    fhirCode: '111787',
  );

  /// value111791
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111791 = AuditEventID(
    fhirCode: '111791',
  );

  /// value111792
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111792 = AuditEventID(
    fhirCode: '111792',
  );

  /// value111800
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111800 = AuditEventID(
    fhirCode: '111800',
  );

  /// value111801
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111801 = AuditEventID(
    fhirCode: '111801',
  );

  /// value111802
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111802 = AuditEventID(
    fhirCode: '111802',
  );

  /// value111803
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111803 = AuditEventID(
    fhirCode: '111803',
  );

  /// value111804
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111804 = AuditEventID(
    fhirCode: '111804',
  );

  /// value111805
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111805 = AuditEventID(
    fhirCode: '111805',
  );

  /// value111806
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111806 = AuditEventID(
    fhirCode: '111806',
  );

  /// value111807
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111807 = AuditEventID(
    fhirCode: '111807',
  );

  /// value111808
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111808 = AuditEventID(
    fhirCode: '111808',
  );

  /// value111809
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111809 = AuditEventID(
    fhirCode: '111809',
  );

  /// value111810
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111810 = AuditEventID(
    fhirCode: '111810',
  );

  /// value111811
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111811 = AuditEventID(
    fhirCode: '111811',
  );

  /// value111812
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111812 = AuditEventID(
    fhirCode: '111812',
  );

  /// value111813
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111813 = AuditEventID(
    fhirCode: '111813',
  );

  /// value111814
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111814 = AuditEventID(
    fhirCode: '111814',
  );

  /// value111815
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111815 = AuditEventID(
    fhirCode: '111815',
  );

  /// value111816
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111816 = AuditEventID(
    fhirCode: '111816',
  );

  /// value111817
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111817 = AuditEventID(
    fhirCode: '111817',
  );

  /// value111818
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111818 = AuditEventID(
    fhirCode: '111818',
  );

  /// value111819
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111819 = AuditEventID(
    fhirCode: '111819',
  );

  /// value111820
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111820 = AuditEventID(
    fhirCode: '111820',
  );

  /// value111821
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111821 = AuditEventID(
    fhirCode: '111821',
  );

  /// value111822
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111822 = AuditEventID(
    fhirCode: '111822',
  );

  /// value111823
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111823 = AuditEventID(
    fhirCode: '111823',
  );

  /// value111824
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111824 = AuditEventID(
    fhirCode: '111824',
  );

  /// value111825
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111825 = AuditEventID(
    fhirCode: '111825',
  );

  /// value111826
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111826 = AuditEventID(
    fhirCode: '111826',
  );

  /// value111827
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111827 = AuditEventID(
    fhirCode: '111827',
  );

  /// value111828
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111828 = AuditEventID(
    fhirCode: '111828',
  );

  /// value111829
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111829 = AuditEventID(
    fhirCode: '111829',
  );

  /// value111830
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111830 = AuditEventID(
    fhirCode: '111830',
  );

  /// value111831
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111831 = AuditEventID(
    fhirCode: '111831',
  );

  /// value111832
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111832 = AuditEventID(
    fhirCode: '111832',
  );

  /// value111833
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111833 = AuditEventID(
    fhirCode: '111833',
  );

  /// value111834
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111834 = AuditEventID(
    fhirCode: '111834',
  );

  /// value111835
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111835 = AuditEventID(
    fhirCode: '111835',
  );

  /// value111836
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111836 = AuditEventID(
    fhirCode: '111836',
  );

  /// value111837
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111837 = AuditEventID(
    fhirCode: '111837',
  );

  /// value111838
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111838 = AuditEventID(
    fhirCode: '111838',
  );

  /// value111839
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111839 = AuditEventID(
    fhirCode: '111839',
  );

  /// value111840
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111840 = AuditEventID(
    fhirCode: '111840',
  );

  /// value111841
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111841 = AuditEventID(
    fhirCode: '111841',
  );

  /// value111842
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111842 = AuditEventID(
    fhirCode: '111842',
  );

  /// value111843
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111843 = AuditEventID(
    fhirCode: '111843',
  );

  /// value111844
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111844 = AuditEventID(
    fhirCode: '111844',
  );

  /// value111845
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111845 = AuditEventID(
    fhirCode: '111845',
  );

  /// value111846
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111846 = AuditEventID(
    fhirCode: '111846',
  );

  /// value111847
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111847 = AuditEventID(
    fhirCode: '111847',
  );

  /// value111848
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111848 = AuditEventID(
    fhirCode: '111848',
  );

  /// value111849
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111849 = AuditEventID(
    fhirCode: '111849',
  );

  /// value111850
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111850 = AuditEventID(
    fhirCode: '111850',
  );

  /// value111851
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111851 = AuditEventID(
    fhirCode: '111851',
  );

  /// value111852
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111852 = AuditEventID(
    fhirCode: '111852',
  );

  /// value111853
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111853 = AuditEventID(
    fhirCode: '111853',
  );

  /// value111854
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111854 = AuditEventID(
    fhirCode: '111854',
  );

  /// value111855
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111855 = AuditEventID(
    fhirCode: '111855',
  );

  /// value111856
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111856 = AuditEventID(
    fhirCode: '111856',
  );

  /// value111900
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111900 = AuditEventID(
    fhirCode: '111900',
  );

  /// value111901
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111901 = AuditEventID(
    fhirCode: '111901',
  );

  /// value111902
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111902 = AuditEventID(
    fhirCode: '111902',
  );

  /// value111903
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111903 = AuditEventID(
    fhirCode: '111903',
  );

  /// value111904
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111904 = AuditEventID(
    fhirCode: '111904',
  );

  /// value111905
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111905 = AuditEventID(
    fhirCode: '111905',
  );

  /// value111906
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111906 = AuditEventID(
    fhirCode: '111906',
  );

  /// value111907
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111907 = AuditEventID(
    fhirCode: '111907',
  );

  /// value111908
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111908 = AuditEventID(
    fhirCode: '111908',
  );

  /// value111909
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111909 = AuditEventID(
    fhirCode: '111909',
  );

  /// value111910
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111910 = AuditEventID(
    fhirCode: '111910',
  );

  /// value111911
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111911 = AuditEventID(
    fhirCode: '111911',
  );

  /// value111912
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111912 = AuditEventID(
    fhirCode: '111912',
  );

  /// value111913
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111913 = AuditEventID(
    fhirCode: '111913',
  );

  /// value111914
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111914 = AuditEventID(
    fhirCode: '111914',
  );

  /// value111915
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111915 = AuditEventID(
    fhirCode: '111915',
  );

  /// value111916
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111916 = AuditEventID(
    fhirCode: '111916',
  );

  /// value111917
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111917 = AuditEventID(
    fhirCode: '111917',
  );

  /// value111918
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111918 = AuditEventID(
    fhirCode: '111918',
  );

  /// value111919
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111919 = AuditEventID(
    fhirCode: '111919',
  );

  /// value111920
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111920 = AuditEventID(
    fhirCode: '111920',
  );

  /// value111921
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111921 = AuditEventID(
    fhirCode: '111921',
  );

  /// value111922
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111922 = AuditEventID(
    fhirCode: '111922',
  );

  /// value111923
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111923 = AuditEventID(
    fhirCode: '111923',
  );

  /// value111924
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111924 = AuditEventID(
    fhirCode: '111924',
  );

  /// value111925
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111925 = AuditEventID(
    fhirCode: '111925',
  );

  /// value111926
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111926 = AuditEventID(
    fhirCode: '111926',
  );

  /// value111927
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111927 = AuditEventID(
    fhirCode: '111927',
  );

  /// value111928
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111928 = AuditEventID(
    fhirCode: '111928',
  );

  /// value111929
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111929 = AuditEventID(
    fhirCode: '111929',
  );

  /// value111930
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111930 = AuditEventID(
    fhirCode: '111930',
  );

  /// value111931
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111931 = AuditEventID(
    fhirCode: '111931',
  );

  /// value111932
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111932 = AuditEventID(
    fhirCode: '111932',
  );

  /// value111933
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111933 = AuditEventID(
    fhirCode: '111933',
  );

  /// value111934
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111934 = AuditEventID(
    fhirCode: '111934',
  );

  /// value111935
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111935 = AuditEventID(
    fhirCode: '111935',
  );

  /// value111936
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111936 = AuditEventID(
    fhirCode: '111936',
  );

  /// value111937
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111937 = AuditEventID(
    fhirCode: '111937',
  );

  /// value111938
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111938 = AuditEventID(
    fhirCode: '111938',
  );

  /// value111939
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111939 = AuditEventID(
    fhirCode: '111939',
  );

  /// value111940
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111940 = AuditEventID(
    fhirCode: '111940',
  );

  /// value111941
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111941 = AuditEventID(
    fhirCode: '111941',
  );

  /// value111942
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111942 = AuditEventID(
    fhirCode: '111942',
  );

  /// value111943
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111943 = AuditEventID(
    fhirCode: '111943',
  );

  /// value111944
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111944 = AuditEventID(
    fhirCode: '111944',
  );

  /// value111945
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111945 = AuditEventID(
    fhirCode: '111945',
  );

  /// value111946
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111946 = AuditEventID(
    fhirCode: '111946',
  );

  /// value111947
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value111947 = AuditEventID(
    fhirCode: '111947',
  );

  /// value112000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112000 = AuditEventID(
    fhirCode: '112000',
  );

  /// value112001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112001 = AuditEventID(
    fhirCode: '112001',
  );

  /// value112002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112002 = AuditEventID(
    fhirCode: '112002',
  );

  /// value112003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112003 = AuditEventID(
    fhirCode: '112003',
  );

  /// value112004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112004 = AuditEventID(
    fhirCode: '112004',
  );

  /// value112005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112005 = AuditEventID(
    fhirCode: '112005',
  );

  /// value112006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112006 = AuditEventID(
    fhirCode: '112006',
  );

  /// value112007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112007 = AuditEventID(
    fhirCode: '112007',
  );

  /// value112008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112008 = AuditEventID(
    fhirCode: '112008',
  );

  /// value112009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112009 = AuditEventID(
    fhirCode: '112009',
  );

  /// value112010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112010 = AuditEventID(
    fhirCode: '112010',
  );

  /// value112011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112011 = AuditEventID(
    fhirCode: '112011',
  );

  /// value112012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112012 = AuditEventID(
    fhirCode: '112012',
  );

  /// value112013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112013 = AuditEventID(
    fhirCode: '112013',
  );

  /// value112014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112014 = AuditEventID(
    fhirCode: '112014',
  );

  /// value112015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112015 = AuditEventID(
    fhirCode: '112015',
  );

  /// value112016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112016 = AuditEventID(
    fhirCode: '112016',
  );

  /// value112017
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112017 = AuditEventID(
    fhirCode: '112017',
  );

  /// value112018
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112018 = AuditEventID(
    fhirCode: '112018',
  );

  /// value112019
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112019 = AuditEventID(
    fhirCode: '112019',
  );

  /// value112020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112020 = AuditEventID(
    fhirCode: '112020',
  );

  /// value112021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112021 = AuditEventID(
    fhirCode: '112021',
  );

  /// value112022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112022 = AuditEventID(
    fhirCode: '112022',
  );

  /// value112023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112023 = AuditEventID(
    fhirCode: '112023',
  );

  /// value112024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112024 = AuditEventID(
    fhirCode: '112024',
  );

  /// value112025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112025 = AuditEventID(
    fhirCode: '112025',
  );

  /// value112026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112026 = AuditEventID(
    fhirCode: '112026',
  );

  /// value112027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112027 = AuditEventID(
    fhirCode: '112027',
  );

  /// value112028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112028 = AuditEventID(
    fhirCode: '112028',
  );

  /// value112029
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112029 = AuditEventID(
    fhirCode: '112029',
  );

  /// value112030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112030 = AuditEventID(
    fhirCode: '112030',
  );

  /// value112031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112031 = AuditEventID(
    fhirCode: '112031',
  );

  /// value112032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112032 = AuditEventID(
    fhirCode: '112032',
  );

  /// value112033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112033 = AuditEventID(
    fhirCode: '112033',
  );

  /// value112034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112034 = AuditEventID(
    fhirCode: '112034',
  );

  /// value112035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112035 = AuditEventID(
    fhirCode: '112035',
  );

  /// value112036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112036 = AuditEventID(
    fhirCode: '112036',
  );

  /// value112037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112037 = AuditEventID(
    fhirCode: '112037',
  );

  /// value112038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112038 = AuditEventID(
    fhirCode: '112038',
  );

  /// value112039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112039 = AuditEventID(
    fhirCode: '112039',
  );

  /// value112040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112040 = AuditEventID(
    fhirCode: '112040',
  );

  /// value112041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112041 = AuditEventID(
    fhirCode: '112041',
  );

  /// value112042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112042 = AuditEventID(
    fhirCode: '112042',
  );

  /// value112043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112043 = AuditEventID(
    fhirCode: '112043',
  );

  /// value112044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112044 = AuditEventID(
    fhirCode: '112044',
  );

  /// value112045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112045 = AuditEventID(
    fhirCode: '112045',
  );

  /// value112046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112046 = AuditEventID(
    fhirCode: '112046',
  );

  /// value112047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112047 = AuditEventID(
    fhirCode: '112047',
  );

  /// value112048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112048 = AuditEventID(
    fhirCode: '112048',
  );

  /// value112049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112049 = AuditEventID(
    fhirCode: '112049',
  );

  /// value112050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112050 = AuditEventID(
    fhirCode: '112050',
  );

  /// value112051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112051 = AuditEventID(
    fhirCode: '112051',
  );

  /// value112052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112052 = AuditEventID(
    fhirCode: '112052',
  );

  /// value112053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112053 = AuditEventID(
    fhirCode: '112053',
  );

  /// value112054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112054 = AuditEventID(
    fhirCode: '112054',
  );

  /// value112055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112055 = AuditEventID(
    fhirCode: '112055',
  );

  /// value112056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112056 = AuditEventID(
    fhirCode: '112056',
  );

  /// value112057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112057 = AuditEventID(
    fhirCode: '112057',
  );

  /// value112058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112058 = AuditEventID(
    fhirCode: '112058',
  );

  /// value112059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112059 = AuditEventID(
    fhirCode: '112059',
  );

  /// value112060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112060 = AuditEventID(
    fhirCode: '112060',
  );

  /// value112061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112061 = AuditEventID(
    fhirCode: '112061',
  );

  /// value112062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112062 = AuditEventID(
    fhirCode: '112062',
  );

  /// value112063
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112063 = AuditEventID(
    fhirCode: '112063',
  );

  /// value112064
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112064 = AuditEventID(
    fhirCode: '112064',
  );

  /// value112065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112065 = AuditEventID(
    fhirCode: '112065',
  );

  /// value112066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112066 = AuditEventID(
    fhirCode: '112066',
  );

  /// value112067
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112067 = AuditEventID(
    fhirCode: '112067',
  );

  /// value112068
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112068 = AuditEventID(
    fhirCode: '112068',
  );

  /// value112069
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112069 = AuditEventID(
    fhirCode: '112069',
  );

  /// value112070
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112070 = AuditEventID(
    fhirCode: '112070',
  );

  /// value112071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112071 = AuditEventID(
    fhirCode: '112071',
  );

  /// value112072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112072 = AuditEventID(
    fhirCode: '112072',
  );

  /// value112073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112073 = AuditEventID(
    fhirCode: '112073',
  );

  /// value112074
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112074 = AuditEventID(
    fhirCode: '112074',
  );

  /// value112075
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112075 = AuditEventID(
    fhirCode: '112075',
  );

  /// value112076
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112076 = AuditEventID(
    fhirCode: '112076',
  );

  /// value112077
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112077 = AuditEventID(
    fhirCode: '112077',
  );

  /// value112078
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112078 = AuditEventID(
    fhirCode: '112078',
  );

  /// value112079
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112079 = AuditEventID(
    fhirCode: '112079',
  );

  /// value112080
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112080 = AuditEventID(
    fhirCode: '112080',
  );

  /// value112081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112081 = AuditEventID(
    fhirCode: '112081',
  );

  /// value112082
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112082 = AuditEventID(
    fhirCode: '112082',
  );

  /// value112083
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112083 = AuditEventID(
    fhirCode: '112083',
  );

  /// value112084
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112084 = AuditEventID(
    fhirCode: '112084',
  );

  /// value112085
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112085 = AuditEventID(
    fhirCode: '112085',
  );

  /// value112086
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112086 = AuditEventID(
    fhirCode: '112086',
  );

  /// value112087
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112087 = AuditEventID(
    fhirCode: '112087',
  );

  /// value112088
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112088 = AuditEventID(
    fhirCode: '112088',
  );

  /// value112089
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112089 = AuditEventID(
    fhirCode: '112089',
  );

  /// value112090
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112090 = AuditEventID(
    fhirCode: '112090',
  );

  /// value112091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112091 = AuditEventID(
    fhirCode: '112091',
  );

  /// value112092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112092 = AuditEventID(
    fhirCode: '112092',
  );

  /// value112093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112093 = AuditEventID(
    fhirCode: '112093',
  );

  /// value112094
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112094 = AuditEventID(
    fhirCode: '112094',
  );

  /// value112095
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112095 = AuditEventID(
    fhirCode: '112095',
  );

  /// value112096
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112096 = AuditEventID(
    fhirCode: '112096',
  );

  /// value112097
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112097 = AuditEventID(
    fhirCode: '112097',
  );

  /// value112098
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112098 = AuditEventID(
    fhirCode: '112098',
  );

  /// value112099
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112099 = AuditEventID(
    fhirCode: '112099',
  );

  /// value112100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112100 = AuditEventID(
    fhirCode: '112100',
  );

  /// value112101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112101 = AuditEventID(
    fhirCode: '112101',
  );

  /// value112102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112102 = AuditEventID(
    fhirCode: '112102',
  );

  /// value112103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112103 = AuditEventID(
    fhirCode: '112103',
  );

  /// value112104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112104 = AuditEventID(
    fhirCode: '112104',
  );

  /// value112105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112105 = AuditEventID(
    fhirCode: '112105',
  );

  /// value112106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112106 = AuditEventID(
    fhirCode: '112106',
  );

  /// value112107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112107 = AuditEventID(
    fhirCode: '112107',
  );

  /// value112108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112108 = AuditEventID(
    fhirCode: '112108',
  );

  /// value112109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112109 = AuditEventID(
    fhirCode: '112109',
  );

  /// value112110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112110 = AuditEventID(
    fhirCode: '112110',
  );

  /// value112111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112111 = AuditEventID(
    fhirCode: '112111',
  );

  /// value112112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112112 = AuditEventID(
    fhirCode: '112112',
  );

  /// value112113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112113 = AuditEventID(
    fhirCode: '112113',
  );

  /// value112114
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112114 = AuditEventID(
    fhirCode: '112114',
  );

  /// value112115
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112115 = AuditEventID(
    fhirCode: '112115',
  );

  /// value112116
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112116 = AuditEventID(
    fhirCode: '112116',
  );

  /// value112117
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112117 = AuditEventID(
    fhirCode: '112117',
  );

  /// value112118
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112118 = AuditEventID(
    fhirCode: '112118',
  );

  /// value112119
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112119 = AuditEventID(
    fhirCode: '112119',
  );

  /// value112120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112120 = AuditEventID(
    fhirCode: '112120',
  );

  /// value112121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112121 = AuditEventID(
    fhirCode: '112121',
  );

  /// value112122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112122 = AuditEventID(
    fhirCode: '112122',
  );

  /// value112123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112123 = AuditEventID(
    fhirCode: '112123',
  );

  /// value112124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112124 = AuditEventID(
    fhirCode: '112124',
  );

  /// value112125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112125 = AuditEventID(
    fhirCode: '112125',
  );

  /// value112126
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112126 = AuditEventID(
    fhirCode: '112126',
  );

  /// value112127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112127 = AuditEventID(
    fhirCode: '112127',
  );

  /// value112128
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112128 = AuditEventID(
    fhirCode: '112128',
  );

  /// value112129
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112129 = AuditEventID(
    fhirCode: '112129',
  );

  /// value112130
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112130 = AuditEventID(
    fhirCode: '112130',
  );

  /// value112131
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112131 = AuditEventID(
    fhirCode: '112131',
  );

  /// value112132
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112132 = AuditEventID(
    fhirCode: '112132',
  );

  /// value112133
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112133 = AuditEventID(
    fhirCode: '112133',
  );

  /// value112134
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112134 = AuditEventID(
    fhirCode: '112134',
  );

  /// value112135
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112135 = AuditEventID(
    fhirCode: '112135',
  );

  /// value112136
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112136 = AuditEventID(
    fhirCode: '112136',
  );

  /// value112137
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112137 = AuditEventID(
    fhirCode: '112137',
  );

  /// value112138
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112138 = AuditEventID(
    fhirCode: '112138',
  );

  /// value112139
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112139 = AuditEventID(
    fhirCode: '112139',
  );

  /// value112140
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112140 = AuditEventID(
    fhirCode: '112140',
  );

  /// value112141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112141 = AuditEventID(
    fhirCode: '112141',
  );

  /// value112142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112142 = AuditEventID(
    fhirCode: '112142',
  );

  /// value112143
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112143 = AuditEventID(
    fhirCode: '112143',
  );

  /// value112144
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112144 = AuditEventID(
    fhirCode: '112144',
  );

  /// value112145
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112145 = AuditEventID(
    fhirCode: '112145',
  );

  /// value112146
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112146 = AuditEventID(
    fhirCode: '112146',
  );

  /// value112147
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112147 = AuditEventID(
    fhirCode: '112147',
  );

  /// value112148
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112148 = AuditEventID(
    fhirCode: '112148',
  );

  /// value112149
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112149 = AuditEventID(
    fhirCode: '112149',
  );

  /// value112150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112150 = AuditEventID(
    fhirCode: '112150',
  );

  /// value112151
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112151 = AuditEventID(
    fhirCode: '112151',
  );

  /// value112152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112152 = AuditEventID(
    fhirCode: '112152',
  );

  /// value112153
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112153 = AuditEventID(
    fhirCode: '112153',
  );

  /// value112154
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112154 = AuditEventID(
    fhirCode: '112154',
  );

  /// value112155
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112155 = AuditEventID(
    fhirCode: '112155',
  );

  /// value112156
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112156 = AuditEventID(
    fhirCode: '112156',
  );

  /// value112157
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112157 = AuditEventID(
    fhirCode: '112157',
  );

  /// value112158
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112158 = AuditEventID(
    fhirCode: '112158',
  );

  /// value112159
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112159 = AuditEventID(
    fhirCode: '112159',
  );

  /// value112160
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112160 = AuditEventID(
    fhirCode: '112160',
  );

  /// value112161
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112161 = AuditEventID(
    fhirCode: '112161',
  );

  /// value112162
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112162 = AuditEventID(
    fhirCode: '112162',
  );

  /// value112163
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112163 = AuditEventID(
    fhirCode: '112163',
  );

  /// value112164
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112164 = AuditEventID(
    fhirCode: '112164',
  );

  /// value112165
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112165 = AuditEventID(
    fhirCode: '112165',
  );

  /// value112166
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112166 = AuditEventID(
    fhirCode: '112166',
  );

  /// value112167
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112167 = AuditEventID(
    fhirCode: '112167',
  );

  /// value112168
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112168 = AuditEventID(
    fhirCode: '112168',
  );

  /// value112169
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112169 = AuditEventID(
    fhirCode: '112169',
  );

  /// value112170
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112170 = AuditEventID(
    fhirCode: '112170',
  );

  /// value112171
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112171 = AuditEventID(
    fhirCode: '112171',
  );

  /// value112172
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112172 = AuditEventID(
    fhirCode: '112172',
  );

  /// value112173
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112173 = AuditEventID(
    fhirCode: '112173',
  );

  /// value112174
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112174 = AuditEventID(
    fhirCode: '112174',
  );

  /// value112175
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112175 = AuditEventID(
    fhirCode: '112175',
  );

  /// value112176
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112176 = AuditEventID(
    fhirCode: '112176',
  );

  /// value112177
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112177 = AuditEventID(
    fhirCode: '112177',
  );

  /// value112178
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112178 = AuditEventID(
    fhirCode: '112178',
  );

  /// value112179
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112179 = AuditEventID(
    fhirCode: '112179',
  );

  /// value112180
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112180 = AuditEventID(
    fhirCode: '112180',
  );

  /// value112181
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112181 = AuditEventID(
    fhirCode: '112181',
  );

  /// value112182
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112182 = AuditEventID(
    fhirCode: '112182',
  );

  /// value112183
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112183 = AuditEventID(
    fhirCode: '112183',
  );

  /// value112184
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112184 = AuditEventID(
    fhirCode: '112184',
  );

  /// value112185
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112185 = AuditEventID(
    fhirCode: '112185',
  );

  /// value112186
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112186 = AuditEventID(
    fhirCode: '112186',
  );

  /// value112187
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112187 = AuditEventID(
    fhirCode: '112187',
  );

  /// value112188
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112188 = AuditEventID(
    fhirCode: '112188',
  );

  /// value112189
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112189 = AuditEventID(
    fhirCode: '112189',
  );

  /// value112191
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112191 = AuditEventID(
    fhirCode: '112191',
  );

  /// value112192
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112192 = AuditEventID(
    fhirCode: '112192',
  );

  /// value112193
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112193 = AuditEventID(
    fhirCode: '112193',
  );

  /// value112194
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112194 = AuditEventID(
    fhirCode: '112194',
  );

  /// value112195
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112195 = AuditEventID(
    fhirCode: '112195',
  );

  /// value112196
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112196 = AuditEventID(
    fhirCode: '112196',
  );

  /// value112197
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112197 = AuditEventID(
    fhirCode: '112197',
  );

  /// value112198
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112198 = AuditEventID(
    fhirCode: '112198',
  );

  /// value112199
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112199 = AuditEventID(
    fhirCode: '112199',
  );

  /// value112200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112200 = AuditEventID(
    fhirCode: '112200',
  );

  /// value112201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112201 = AuditEventID(
    fhirCode: '112201',
  );

  /// value112220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112220 = AuditEventID(
    fhirCode: '112220',
  );

  /// value112222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112222 = AuditEventID(
    fhirCode: '112222',
  );

  /// value112224
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112224 = AuditEventID(
    fhirCode: '112224',
  );

  /// value112225
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112225 = AuditEventID(
    fhirCode: '112225',
  );

  /// value112226
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112226 = AuditEventID(
    fhirCode: '112226',
  );

  /// value112227
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112227 = AuditEventID(
    fhirCode: '112227',
  );

  /// value112228
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112228 = AuditEventID(
    fhirCode: '112228',
  );

  /// value112229
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112229 = AuditEventID(
    fhirCode: '112229',
  );

  /// value112232
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112232 = AuditEventID(
    fhirCode: '112232',
  );

  /// value112233
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112233 = AuditEventID(
    fhirCode: '112233',
  );

  /// value112238
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112238 = AuditEventID(
    fhirCode: '112238',
  );

  /// value112240
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112240 = AuditEventID(
    fhirCode: '112240',
  );

  /// value112241
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112241 = AuditEventID(
    fhirCode: '112241',
  );

  /// value112242
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112242 = AuditEventID(
    fhirCode: '112242',
  );

  /// value112243
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112243 = AuditEventID(
    fhirCode: '112243',
  );

  /// value112244
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112244 = AuditEventID(
    fhirCode: '112244',
  );

  /// value112248
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112248 = AuditEventID(
    fhirCode: '112248',
  );

  /// value112249
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112249 = AuditEventID(
    fhirCode: '112249',
  );

  /// value112300
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112300 = AuditEventID(
    fhirCode: '112300',
  );

  /// value112301
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112301 = AuditEventID(
    fhirCode: '112301',
  );

  /// value112302
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112302 = AuditEventID(
    fhirCode: '112302',
  );

  /// value112303
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112303 = AuditEventID(
    fhirCode: '112303',
  );

  /// value112304
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112304 = AuditEventID(
    fhirCode: '112304',
  );

  /// value112305
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112305 = AuditEventID(
    fhirCode: '112305',
  );

  /// value112306
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112306 = AuditEventID(
    fhirCode: '112306',
  );

  /// value112307
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112307 = AuditEventID(
    fhirCode: '112307',
  );

  /// value112308
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112308 = AuditEventID(
    fhirCode: '112308',
  );

  /// value112309
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112309 = AuditEventID(
    fhirCode: '112309',
  );

  /// value112310
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112310 = AuditEventID(
    fhirCode: '112310',
  );

  /// value112311
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112311 = AuditEventID(
    fhirCode: '112311',
  );

  /// value112312
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112312 = AuditEventID(
    fhirCode: '112312',
  );

  /// value112313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112313 = AuditEventID(
    fhirCode: '112313',
  );

  /// value112314
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112314 = AuditEventID(
    fhirCode: '112314',
  );

  /// value112315
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112315 = AuditEventID(
    fhirCode: '112315',
  );

  /// value112316
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112316 = AuditEventID(
    fhirCode: '112316',
  );

  /// value112317
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112317 = AuditEventID(
    fhirCode: '112317',
  );

  /// value112318
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112318 = AuditEventID(
    fhirCode: '112318',
  );

  /// value112319
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112319 = AuditEventID(
    fhirCode: '112319',
  );

  /// value112320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112320 = AuditEventID(
    fhirCode: '112320',
  );

  /// value112321
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112321 = AuditEventID(
    fhirCode: '112321',
  );

  /// value112325
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112325 = AuditEventID(
    fhirCode: '112325',
  );

  /// value112340
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112340 = AuditEventID(
    fhirCode: '112340',
  );

  /// value112341
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112341 = AuditEventID(
    fhirCode: '112341',
  );

  /// value112342
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112342 = AuditEventID(
    fhirCode: '112342',
  );

  /// value112343
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112343 = AuditEventID(
    fhirCode: '112343',
  );

  /// value112344
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112344 = AuditEventID(
    fhirCode: '112344',
  );

  /// value112345
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112345 = AuditEventID(
    fhirCode: '112345',
  );

  /// value112346
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112346 = AuditEventID(
    fhirCode: '112346',
  );

  /// value112347
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112347 = AuditEventID(
    fhirCode: '112347',
  );

  /// value112348
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112348 = AuditEventID(
    fhirCode: '112348',
  );

  /// value112350
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112350 = AuditEventID(
    fhirCode: '112350',
  );

  /// value112351
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112351 = AuditEventID(
    fhirCode: '112351',
  );

  /// value112352
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112352 = AuditEventID(
    fhirCode: '112352',
  );

  /// value112353
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112353 = AuditEventID(
    fhirCode: '112353',
  );

  /// value112354
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112354 = AuditEventID(
    fhirCode: '112354',
  );

  /// value112355
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112355 = AuditEventID(
    fhirCode: '112355',
  );

  /// value112356
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112356 = AuditEventID(
    fhirCode: '112356',
  );

  /// value112357
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112357 = AuditEventID(
    fhirCode: '112357',
  );

  /// value112358
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112358 = AuditEventID(
    fhirCode: '112358',
  );

  /// value112359
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112359 = AuditEventID(
    fhirCode: '112359',
  );

  /// value112360
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112360 = AuditEventID(
    fhirCode: '112360',
  );

  /// value112361
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112361 = AuditEventID(
    fhirCode: '112361',
  );

  /// value112362
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112362 = AuditEventID(
    fhirCode: '112362',
  );

  /// value112363
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112363 = AuditEventID(
    fhirCode: '112363',
  );

  /// value112364
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112364 = AuditEventID(
    fhirCode: '112364',
  );

  /// value112365
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112365 = AuditEventID(
    fhirCode: '112365',
  );

  /// value112366
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112366 = AuditEventID(
    fhirCode: '112366',
  );

  /// value112367
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112367 = AuditEventID(
    fhirCode: '112367',
  );

  /// value112368
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112368 = AuditEventID(
    fhirCode: '112368',
  );

  /// value112369
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112369 = AuditEventID(
    fhirCode: '112369',
  );

  /// value112370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112370 = AuditEventID(
    fhirCode: '112370',
  );

  /// value112371
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112371 = AuditEventID(
    fhirCode: '112371',
  );

  /// value112372
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112372 = AuditEventID(
    fhirCode: '112372',
  );

  /// value112373
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112373 = AuditEventID(
    fhirCode: '112373',
  );

  /// value112374
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112374 = AuditEventID(
    fhirCode: '112374',
  );

  /// value112375
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112375 = AuditEventID(
    fhirCode: '112375',
  );

  /// value112376
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112376 = AuditEventID(
    fhirCode: '112376',
  );

  /// value112377
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112377 = AuditEventID(
    fhirCode: '112377',
  );

  /// value112378
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112378 = AuditEventID(
    fhirCode: '112378',
  );

  /// value112379
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112379 = AuditEventID(
    fhirCode: '112379',
  );

  /// value112380
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112380 = AuditEventID(
    fhirCode: '112380',
  );

  /// value112381
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112381 = AuditEventID(
    fhirCode: '112381',
  );

  /// value112700
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112700 = AuditEventID(
    fhirCode: '112700',
  );

  /// value112701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112701 = AuditEventID(
    fhirCode: '112701',
  );

  /// value112702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112702 = AuditEventID(
    fhirCode: '112702',
  );

  /// value112703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112703 = AuditEventID(
    fhirCode: '112703',
  );

  /// value112704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112704 = AuditEventID(
    fhirCode: '112704',
  );

  /// value112705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112705 = AuditEventID(
    fhirCode: '112705',
  );

  /// value112706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112706 = AuditEventID(
    fhirCode: '112706',
  );

  /// value112707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112707 = AuditEventID(
    fhirCode: '112707',
  );

  /// value112708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112708 = AuditEventID(
    fhirCode: '112708',
  );

  /// value112709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112709 = AuditEventID(
    fhirCode: '112709',
  );

  /// value112710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112710 = AuditEventID(
    fhirCode: '112710',
  );

  /// value112711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112711 = AuditEventID(
    fhirCode: '112711',
  );

  /// value112712
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112712 = AuditEventID(
    fhirCode: '112712',
  );

  /// value112713
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112713 = AuditEventID(
    fhirCode: '112713',
  );

  /// value112714
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112714 = AuditEventID(
    fhirCode: '112714',
  );

  /// value112715
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112715 = AuditEventID(
    fhirCode: '112715',
  );

  /// value112716
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112716 = AuditEventID(
    fhirCode: '112716',
  );

  /// value112717
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112717 = AuditEventID(
    fhirCode: '112717',
  );

  /// value112718
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112718 = AuditEventID(
    fhirCode: '112718',
  );

  /// value112719
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112719 = AuditEventID(
    fhirCode: '112719',
  );

  /// value112720
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112720 = AuditEventID(
    fhirCode: '112720',
  );

  /// value112721
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value112721 = AuditEventID(
    fhirCode: '112721',
  );

  /// value113000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113000 = AuditEventID(
    fhirCode: '113000',
  );

  /// value113001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113001 = AuditEventID(
    fhirCode: '113001',
  );

  /// value113002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113002 = AuditEventID(
    fhirCode: '113002',
  );

  /// value113003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113003 = AuditEventID(
    fhirCode: '113003',
  );

  /// value113004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113004 = AuditEventID(
    fhirCode: '113004',
  );

  /// value113005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113005 = AuditEventID(
    fhirCode: '113005',
  );

  /// value113006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113006 = AuditEventID(
    fhirCode: '113006',
  );

  /// value113007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113007 = AuditEventID(
    fhirCode: '113007',
  );

  /// value113008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113008 = AuditEventID(
    fhirCode: '113008',
  );

  /// value113009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113009 = AuditEventID(
    fhirCode: '113009',
  );

  /// value113010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113010 = AuditEventID(
    fhirCode: '113010',
  );

  /// value113011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113011 = AuditEventID(
    fhirCode: '113011',
  );

  /// value113012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113012 = AuditEventID(
    fhirCode: '113012',
  );

  /// value113013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113013 = AuditEventID(
    fhirCode: '113013',
  );

  /// value113014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113014 = AuditEventID(
    fhirCode: '113014',
  );

  /// value113015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113015 = AuditEventID(
    fhirCode: '113015',
  );

  /// value113016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113016 = AuditEventID(
    fhirCode: '113016',
  );

  /// value113017
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113017 = AuditEventID(
    fhirCode: '113017',
  );

  /// value113018
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113018 = AuditEventID(
    fhirCode: '113018',
  );

  /// value113020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113020 = AuditEventID(
    fhirCode: '113020',
  );

  /// value113021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113021 = AuditEventID(
    fhirCode: '113021',
  );

  /// value113026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113026 = AuditEventID(
    fhirCode: '113026',
  );

  /// value113030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113030 = AuditEventID(
    fhirCode: '113030',
  );

  /// value113031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113031 = AuditEventID(
    fhirCode: '113031',
  );

  /// value113032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113032 = AuditEventID(
    fhirCode: '113032',
  );

  /// value113033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113033 = AuditEventID(
    fhirCode: '113033',
  );

  /// value113034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113034 = AuditEventID(
    fhirCode: '113034',
  );

  /// value113035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113035 = AuditEventID(
    fhirCode: '113035',
  );

  /// value113036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113036 = AuditEventID(
    fhirCode: '113036',
  );

  /// value113037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113037 = AuditEventID(
    fhirCode: '113037',
  );

  /// value113038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113038 = AuditEventID(
    fhirCode: '113038',
  );

  /// value113039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113039 = AuditEventID(
    fhirCode: '113039',
  );

  /// value113040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113040 = AuditEventID(
    fhirCode: '113040',
  );

  /// value113041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113041 = AuditEventID(
    fhirCode: '113041',
  );

  /// value113042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113042 = AuditEventID(
    fhirCode: '113042',
  );

  /// value113043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113043 = AuditEventID(
    fhirCode: '113043',
  );

  /// value113044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113044 = AuditEventID(
    fhirCode: '113044',
  );

  /// value113045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113045 = AuditEventID(
    fhirCode: '113045',
  );

  /// value113046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113046 = AuditEventID(
    fhirCode: '113046',
  );

  /// value113047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113047 = AuditEventID(
    fhirCode: '113047',
  );

  /// value113048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113048 = AuditEventID(
    fhirCode: '113048',
  );

  /// value113049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113049 = AuditEventID(
    fhirCode: '113049',
  );

  /// value113050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113050 = AuditEventID(
    fhirCode: '113050',
  );

  /// value113051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113051 = AuditEventID(
    fhirCode: '113051',
  );

  /// value113052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113052 = AuditEventID(
    fhirCode: '113052',
  );

  /// value113053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113053 = AuditEventID(
    fhirCode: '113053',
  );

  /// value113054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113054 = AuditEventID(
    fhirCode: '113054',
  );

  /// value113055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113055 = AuditEventID(
    fhirCode: '113055',
  );

  /// value113056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113056 = AuditEventID(
    fhirCode: '113056',
  );

  /// value113057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113057 = AuditEventID(
    fhirCode: '113057',
  );

  /// value113058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113058 = AuditEventID(
    fhirCode: '113058',
  );

  /// value113059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113059 = AuditEventID(
    fhirCode: '113059',
  );

  /// value113060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113060 = AuditEventID(
    fhirCode: '113060',
  );

  /// value113061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113061 = AuditEventID(
    fhirCode: '113061',
  );

  /// value113062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113062 = AuditEventID(
    fhirCode: '113062',
  );

  /// value113063
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113063 = AuditEventID(
    fhirCode: '113063',
  );

  /// value113064
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113064 = AuditEventID(
    fhirCode: '113064',
  );

  /// value113065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113065 = AuditEventID(
    fhirCode: '113065',
  );

  /// value113066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113066 = AuditEventID(
    fhirCode: '113066',
  );

  /// value113067
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113067 = AuditEventID(
    fhirCode: '113067',
  );

  /// value113068
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113068 = AuditEventID(
    fhirCode: '113068',
  );

  /// value113069
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113069 = AuditEventID(
    fhirCode: '113069',
  );

  /// value113070
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113070 = AuditEventID(
    fhirCode: '113070',
  );

  /// value113071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113071 = AuditEventID(
    fhirCode: '113071',
  );

  /// value113072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113072 = AuditEventID(
    fhirCode: '113072',
  );

  /// value113073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113073 = AuditEventID(
    fhirCode: '113073',
  );

  /// value113074
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113074 = AuditEventID(
    fhirCode: '113074',
  );

  /// value113075
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113075 = AuditEventID(
    fhirCode: '113075',
  );

  /// value113076
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113076 = AuditEventID(
    fhirCode: '113076',
  );

  /// value113077
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113077 = AuditEventID(
    fhirCode: '113077',
  );

  /// value113078
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113078 = AuditEventID(
    fhirCode: '113078',
  );

  /// value113079
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113079 = AuditEventID(
    fhirCode: '113079',
  );

  /// value113080
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113080 = AuditEventID(
    fhirCode: '113080',
  );

  /// value113081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113081 = AuditEventID(
    fhirCode: '113081',
  );

  /// value113082
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113082 = AuditEventID(
    fhirCode: '113082',
  );

  /// value113083
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113083 = AuditEventID(
    fhirCode: '113083',
  );

  /// value113085
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113085 = AuditEventID(
    fhirCode: '113085',
  );

  /// value113086
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113086 = AuditEventID(
    fhirCode: '113086',
  );

  /// value113087
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113087 = AuditEventID(
    fhirCode: '113087',
  );

  /// value113088
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113088 = AuditEventID(
    fhirCode: '113088',
  );

  /// value113089
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113089 = AuditEventID(
    fhirCode: '113089',
  );

  /// value113090
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113090 = AuditEventID(
    fhirCode: '113090',
  );

  /// value113091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113091 = AuditEventID(
    fhirCode: '113091',
  );

  /// value113092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113092 = AuditEventID(
    fhirCode: '113092',
  );

  /// value113093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113093 = AuditEventID(
    fhirCode: '113093',
  );

  /// value113094
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113094 = AuditEventID(
    fhirCode: '113094',
  );

  /// value113095
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113095 = AuditEventID(
    fhirCode: '113095',
  );

  /// value113096
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113096 = AuditEventID(
    fhirCode: '113096',
  );

  /// value113097
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113097 = AuditEventID(
    fhirCode: '113097',
  );

  /// value113100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113100 = AuditEventID(
    fhirCode: '113100',
  );

  /// value113101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113101 = AuditEventID(
    fhirCode: '113101',
  );

  /// value113102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113102 = AuditEventID(
    fhirCode: '113102',
  );

  /// value113103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113103 = AuditEventID(
    fhirCode: '113103',
  );

  /// value113104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113104 = AuditEventID(
    fhirCode: '113104',
  );

  /// value113105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113105 = AuditEventID(
    fhirCode: '113105',
  );

  /// value113106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113106 = AuditEventID(
    fhirCode: '113106',
  );

  /// value113107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113107 = AuditEventID(
    fhirCode: '113107',
  );

  /// value113108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113108 = AuditEventID(
    fhirCode: '113108',
  );

  /// value113109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113109 = AuditEventID(
    fhirCode: '113109',
  );

  /// value113110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113110 = AuditEventID(
    fhirCode: '113110',
  );

  /// value113111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113111 = AuditEventID(
    fhirCode: '113111',
  );

  /// value113500
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113500 = AuditEventID(
    fhirCode: '113500',
  );

  /// value113502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113502 = AuditEventID(
    fhirCode: '113502',
  );

  /// value113503
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113503 = AuditEventID(
    fhirCode: '113503',
  );

  /// value113505
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113505 = AuditEventID(
    fhirCode: '113505',
  );

  /// value113506
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113506 = AuditEventID(
    fhirCode: '113506',
  );

  /// value113507
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113507 = AuditEventID(
    fhirCode: '113507',
  );

  /// value113508
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113508 = AuditEventID(
    fhirCode: '113508',
  );

  /// value113509
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113509 = AuditEventID(
    fhirCode: '113509',
  );

  /// value113510
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113510 = AuditEventID(
    fhirCode: '113510',
  );

  /// value113511
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113511 = AuditEventID(
    fhirCode: '113511',
  );

  /// value113512
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113512 = AuditEventID(
    fhirCode: '113512',
  );

  /// value113513
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113513 = AuditEventID(
    fhirCode: '113513',
  );

  /// value113514
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113514 = AuditEventID(
    fhirCode: '113514',
  );

  /// value113516
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113516 = AuditEventID(
    fhirCode: '113516',
  );

  /// value113517
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113517 = AuditEventID(
    fhirCode: '113517',
  );

  /// value113518
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113518 = AuditEventID(
    fhirCode: '113518',
  );

  /// value113520
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113520 = AuditEventID(
    fhirCode: '113520',
  );

  /// value113521
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113521 = AuditEventID(
    fhirCode: '113521',
  );

  /// value113522
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113522 = AuditEventID(
    fhirCode: '113522',
  );

  /// value113523
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113523 = AuditEventID(
    fhirCode: '113523',
  );

  /// value113526
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113526 = AuditEventID(
    fhirCode: '113526',
  );

  /// value113527
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113527 = AuditEventID(
    fhirCode: '113527',
  );

  /// value113528
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113528 = AuditEventID(
    fhirCode: '113528',
  );

  /// value113529
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113529 = AuditEventID(
    fhirCode: '113529',
  );

  /// value113530
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113530 = AuditEventID(
    fhirCode: '113530',
  );

  /// value113540
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113540 = AuditEventID(
    fhirCode: '113540',
  );

  /// value113541
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113541 = AuditEventID(
    fhirCode: '113541',
  );

  /// value113542
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113542 = AuditEventID(
    fhirCode: '113542',
  );

  /// value113543
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113543 = AuditEventID(
    fhirCode: '113543',
  );

  /// value113550
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113550 = AuditEventID(
    fhirCode: '113550',
  );

  /// value113551
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113551 = AuditEventID(
    fhirCode: '113551',
  );

  /// value113552
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113552 = AuditEventID(
    fhirCode: '113552',
  );

  /// value113560
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113560 = AuditEventID(
    fhirCode: '113560',
  );

  /// value113561
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113561 = AuditEventID(
    fhirCode: '113561',
  );

  /// value113562
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113562 = AuditEventID(
    fhirCode: '113562',
  );

  /// value113563
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113563 = AuditEventID(
    fhirCode: '113563',
  );

  /// value113568
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113568 = AuditEventID(
    fhirCode: '113568',
  );

  /// value113570
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113570 = AuditEventID(
    fhirCode: '113570',
  );

  /// value113571
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113571 = AuditEventID(
    fhirCode: '113571',
  );

  /// value113572
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113572 = AuditEventID(
    fhirCode: '113572',
  );

  /// value113573
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113573 = AuditEventID(
    fhirCode: '113573',
  );

  /// value113574
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113574 = AuditEventID(
    fhirCode: '113574',
  );

  /// value113575
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113575 = AuditEventID(
    fhirCode: '113575',
  );

  /// value113576
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113576 = AuditEventID(
    fhirCode: '113576',
  );

  /// value113577
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113577 = AuditEventID(
    fhirCode: '113577',
  );

  /// value113601
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113601 = AuditEventID(
    fhirCode: '113601',
  );

  /// value113602
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113602 = AuditEventID(
    fhirCode: '113602',
  );

  /// value113603
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113603 = AuditEventID(
    fhirCode: '113603',
  );

  /// value113605
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113605 = AuditEventID(
    fhirCode: '113605',
  );

  /// value113606
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113606 = AuditEventID(
    fhirCode: '113606',
  );

  /// value113607
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113607 = AuditEventID(
    fhirCode: '113607',
  );

  /// value113608
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113608 = AuditEventID(
    fhirCode: '113608',
  );

  /// value113609
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113609 = AuditEventID(
    fhirCode: '113609',
  );

  /// value113611
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113611 = AuditEventID(
    fhirCode: '113611',
  );

  /// value113612
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113612 = AuditEventID(
    fhirCode: '113612',
  );

  /// value113613
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113613 = AuditEventID(
    fhirCode: '113613',
  );

  /// value113620
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113620 = AuditEventID(
    fhirCode: '113620',
  );

  /// value113621
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113621 = AuditEventID(
    fhirCode: '113621',
  );

  /// value113622
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113622 = AuditEventID(
    fhirCode: '113622',
  );

  /// value113630
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113630 = AuditEventID(
    fhirCode: '113630',
  );

  /// value113631
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113631 = AuditEventID(
    fhirCode: '113631',
  );

  /// value113650
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113650 = AuditEventID(
    fhirCode: '113650',
  );

  /// value113651
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113651 = AuditEventID(
    fhirCode: '113651',
  );

  /// value113652
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113652 = AuditEventID(
    fhirCode: '113652',
  );

  /// value113653
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113653 = AuditEventID(
    fhirCode: '113653',
  );

  /// value113661
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113661 = AuditEventID(
    fhirCode: '113661',
  );

  /// value113662
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113662 = AuditEventID(
    fhirCode: '113662',
  );

  /// value113663
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113663 = AuditEventID(
    fhirCode: '113663',
  );

  /// value113664
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113664 = AuditEventID(
    fhirCode: '113664',
  );

  /// value113665
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113665 = AuditEventID(
    fhirCode: '113665',
  );

  /// value113666
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113666 = AuditEventID(
    fhirCode: '113666',
  );

  /// value113669
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113669 = AuditEventID(
    fhirCode: '113669',
  );

  /// value113670
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113670 = AuditEventID(
    fhirCode: '113670',
  );

  /// value113671
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113671 = AuditEventID(
    fhirCode: '113671',
  );

  /// value113680
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113680 = AuditEventID(
    fhirCode: '113680',
  );

  /// value113681
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113681 = AuditEventID(
    fhirCode: '113681',
  );

  /// value113682
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113682 = AuditEventID(
    fhirCode: '113682',
  );

  /// value113683
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113683 = AuditEventID(
    fhirCode: '113683',
  );

  /// value113684
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113684 = AuditEventID(
    fhirCode: '113684',
  );

  /// value113685
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113685 = AuditEventID(
    fhirCode: '113685',
  );

  /// value113686
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113686 = AuditEventID(
    fhirCode: '113686',
  );

  /// value113687
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113687 = AuditEventID(
    fhirCode: '113687',
  );

  /// value113688
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113688 = AuditEventID(
    fhirCode: '113688',
  );

  /// value113689
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113689 = AuditEventID(
    fhirCode: '113689',
  );

  /// value113690
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113690 = AuditEventID(
    fhirCode: '113690',
  );

  /// value113691
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113691 = AuditEventID(
    fhirCode: '113691',
  );

  /// value113692
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113692 = AuditEventID(
    fhirCode: '113692',
  );

  /// value113701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113701 = AuditEventID(
    fhirCode: '113701',
  );

  /// value113702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113702 = AuditEventID(
    fhirCode: '113702',
  );

  /// value113704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113704 = AuditEventID(
    fhirCode: '113704',
  );

  /// value113705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113705 = AuditEventID(
    fhirCode: '113705',
  );

  /// value113706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113706 = AuditEventID(
    fhirCode: '113706',
  );

  /// value113710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113710 = AuditEventID(
    fhirCode: '113710',
  );

  /// value113711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113711 = AuditEventID(
    fhirCode: '113711',
  );

  /// value113720
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113720 = AuditEventID(
    fhirCode: '113720',
  );

  /// value113721
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113721 = AuditEventID(
    fhirCode: '113721',
  );

  /// value113722
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113722 = AuditEventID(
    fhirCode: '113722',
  );

  /// value113723
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113723 = AuditEventID(
    fhirCode: '113723',
  );

  /// value113724
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113724 = AuditEventID(
    fhirCode: '113724',
  );

  /// value113725
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113725 = AuditEventID(
    fhirCode: '113725',
  );

  /// value113726
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113726 = AuditEventID(
    fhirCode: '113726',
  );

  /// value113727
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113727 = AuditEventID(
    fhirCode: '113727',
  );

  /// value113728
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113728 = AuditEventID(
    fhirCode: '113728',
  );

  /// value113729
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113729 = AuditEventID(
    fhirCode: '113729',
  );

  /// value113730
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113730 = AuditEventID(
    fhirCode: '113730',
  );

  /// value113731
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113731 = AuditEventID(
    fhirCode: '113731',
  );

  /// value113732
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113732 = AuditEventID(
    fhirCode: '113732',
  );

  /// value113733
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113733 = AuditEventID(
    fhirCode: '113733',
  );

  /// value113734
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113734 = AuditEventID(
    fhirCode: '113734',
  );

  /// value113735
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113735 = AuditEventID(
    fhirCode: '113735',
  );

  /// value113736
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113736 = AuditEventID(
    fhirCode: '113736',
  );

  /// value113737
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113737 = AuditEventID(
    fhirCode: '113737',
  );

  /// value113738
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113738 = AuditEventID(
    fhirCode: '113738',
  );

  /// value113739
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113739 = AuditEventID(
    fhirCode: '113739',
  );

  /// value113740
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113740 = AuditEventID(
    fhirCode: '113740',
  );

  /// value113742
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113742 = AuditEventID(
    fhirCode: '113742',
  );

  /// value113743
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113743 = AuditEventID(
    fhirCode: '113743',
  );

  /// value113744
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113744 = AuditEventID(
    fhirCode: '113744',
  );

  /// value113745
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113745 = AuditEventID(
    fhirCode: '113745',
  );

  /// value113748
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113748 = AuditEventID(
    fhirCode: '113748',
  );

  /// value113750
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113750 = AuditEventID(
    fhirCode: '113750',
  );

  /// value113751
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113751 = AuditEventID(
    fhirCode: '113751',
  );

  /// value113752
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113752 = AuditEventID(
    fhirCode: '113752',
  );

  /// value113753
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113753 = AuditEventID(
    fhirCode: '113753',
  );

  /// value113754
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113754 = AuditEventID(
    fhirCode: '113754',
  );

  /// value113755
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113755 = AuditEventID(
    fhirCode: '113755',
  );

  /// value113756
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113756 = AuditEventID(
    fhirCode: '113756',
  );

  /// value113757
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113757 = AuditEventID(
    fhirCode: '113757',
  );

  /// value113758
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113758 = AuditEventID(
    fhirCode: '113758',
  );

  /// value113759
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113759 = AuditEventID(
    fhirCode: '113759',
  );

  /// value113760
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113760 = AuditEventID(
    fhirCode: '113760',
  );

  /// value113761
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113761 = AuditEventID(
    fhirCode: '113761',
  );

  /// value113763
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113763 = AuditEventID(
    fhirCode: '113763',
  );

  /// value113764
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113764 = AuditEventID(
    fhirCode: '113764',
  );

  /// value113766
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113766 = AuditEventID(
    fhirCode: '113766',
  );

  /// value113767
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113767 = AuditEventID(
    fhirCode: '113767',
  );

  /// value113768
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113768 = AuditEventID(
    fhirCode: '113768',
  );

  /// value113769
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113769 = AuditEventID(
    fhirCode: '113769',
  );

  /// value113770
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113770 = AuditEventID(
    fhirCode: '113770',
  );

  /// value113771
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113771 = AuditEventID(
    fhirCode: '113771',
  );

  /// value113772
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113772 = AuditEventID(
    fhirCode: '113772',
  );

  /// value113773
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113773 = AuditEventID(
    fhirCode: '113773',
  );

  /// value113780
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113780 = AuditEventID(
    fhirCode: '113780',
  );

  /// value113788
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113788 = AuditEventID(
    fhirCode: '113788',
  );

  /// value113789
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113789 = AuditEventID(
    fhirCode: '113789',
  );

  /// value113790
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113790 = AuditEventID(
    fhirCode: '113790',
  );

  /// value113791
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113791 = AuditEventID(
    fhirCode: '113791',
  );

  /// value113792
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113792 = AuditEventID(
    fhirCode: '113792',
  );

  /// value113793
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113793 = AuditEventID(
    fhirCode: '113793',
  );

  /// value113794
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113794 = AuditEventID(
    fhirCode: '113794',
  );

  /// value113795
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113795 = AuditEventID(
    fhirCode: '113795',
  );

  /// value113800
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113800 = AuditEventID(
    fhirCode: '113800',
  );

  /// value113801
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113801 = AuditEventID(
    fhirCode: '113801',
  );

  /// value113802
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113802 = AuditEventID(
    fhirCode: '113802',
  );

  /// value113803
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113803 = AuditEventID(
    fhirCode: '113803',
  );

  /// value113804
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113804 = AuditEventID(
    fhirCode: '113804',
  );

  /// value113805
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113805 = AuditEventID(
    fhirCode: '113805',
  );

  /// value113806
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113806 = AuditEventID(
    fhirCode: '113806',
  );

  /// value113807
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113807 = AuditEventID(
    fhirCode: '113807',
  );

  /// value113808
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113808 = AuditEventID(
    fhirCode: '113808',
  );

  /// value113809
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113809 = AuditEventID(
    fhirCode: '113809',
  );

  /// value113810
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113810 = AuditEventID(
    fhirCode: '113810',
  );

  /// value113811
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113811 = AuditEventID(
    fhirCode: '113811',
  );

  /// value113812
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113812 = AuditEventID(
    fhirCode: '113812',
  );

  /// value113813
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113813 = AuditEventID(
    fhirCode: '113813',
  );

  /// value113814
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113814 = AuditEventID(
    fhirCode: '113814',
  );

  /// value113815
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113815 = AuditEventID(
    fhirCode: '113815',
  );

  /// value113816
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113816 = AuditEventID(
    fhirCode: '113816',
  );

  /// value113817
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113817 = AuditEventID(
    fhirCode: '113817',
  );

  /// value113818
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113818 = AuditEventID(
    fhirCode: '113818',
  );

  /// value113819
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113819 = AuditEventID(
    fhirCode: '113819',
  );

  /// value113820
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113820 = AuditEventID(
    fhirCode: '113820',
  );

  /// value113821
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113821 = AuditEventID(
    fhirCode: '113821',
  );

  /// value113822
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113822 = AuditEventID(
    fhirCode: '113822',
  );

  /// value113823
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113823 = AuditEventID(
    fhirCode: '113823',
  );

  /// value113824
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113824 = AuditEventID(
    fhirCode: '113824',
  );

  /// value113825
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113825 = AuditEventID(
    fhirCode: '113825',
  );

  /// value113826
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113826 = AuditEventID(
    fhirCode: '113826',
  );

  /// value113827
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113827 = AuditEventID(
    fhirCode: '113827',
  );

  /// value113828
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113828 = AuditEventID(
    fhirCode: '113828',
  );

  /// value113829
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113829 = AuditEventID(
    fhirCode: '113829',
  );

  /// value113830
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113830 = AuditEventID(
    fhirCode: '113830',
  );

  /// value113831
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113831 = AuditEventID(
    fhirCode: '113831',
  );

  /// value113832
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113832 = AuditEventID(
    fhirCode: '113832',
  );

  /// value113833
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113833 = AuditEventID(
    fhirCode: '113833',
  );

  /// value113834
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113834 = AuditEventID(
    fhirCode: '113834',
  );

  /// value113835
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113835 = AuditEventID(
    fhirCode: '113835',
  );

  /// value113836
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113836 = AuditEventID(
    fhirCode: '113836',
  );

  /// value113837
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113837 = AuditEventID(
    fhirCode: '113837',
  );

  /// value113838
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113838 = AuditEventID(
    fhirCode: '113838',
  );

  /// value113839
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113839 = AuditEventID(
    fhirCode: '113839',
  );

  /// value113840
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113840 = AuditEventID(
    fhirCode: '113840',
  );

  /// value113841
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113841 = AuditEventID(
    fhirCode: '113841',
  );

  /// value113842
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113842 = AuditEventID(
    fhirCode: '113842',
  );

  /// value113845
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113845 = AuditEventID(
    fhirCode: '113845',
  );

  /// value113846
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113846 = AuditEventID(
    fhirCode: '113846',
  );

  /// value113847
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113847 = AuditEventID(
    fhirCode: '113847',
  );

  /// value113850
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113850 = AuditEventID(
    fhirCode: '113850',
  );

  /// value113851
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113851 = AuditEventID(
    fhirCode: '113851',
  );

  /// value113852
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113852 = AuditEventID(
    fhirCode: '113852',
  );

  /// value113853
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113853 = AuditEventID(
    fhirCode: '113853',
  );

  /// value113854
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113854 = AuditEventID(
    fhirCode: '113854',
  );

  /// value113855
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113855 = AuditEventID(
    fhirCode: '113855',
  );

  /// value113856
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113856 = AuditEventID(
    fhirCode: '113856',
  );

  /// value113857
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113857 = AuditEventID(
    fhirCode: '113857',
  );

  /// value113858
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113858 = AuditEventID(
    fhirCode: '113858',
  );

  /// value113859
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113859 = AuditEventID(
    fhirCode: '113859',
  );

  /// value113860
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113860 = AuditEventID(
    fhirCode: '113860',
  );

  /// value113861
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113861 = AuditEventID(
    fhirCode: '113861',
  );

  /// value113862
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113862 = AuditEventID(
    fhirCode: '113862',
  );

  /// value113863
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113863 = AuditEventID(
    fhirCode: '113863',
  );

  /// value113864
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113864 = AuditEventID(
    fhirCode: '113864',
  );

  /// value113865
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113865 = AuditEventID(
    fhirCode: '113865',
  );

  /// value113866
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113866 = AuditEventID(
    fhirCode: '113866',
  );

  /// value113867
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113867 = AuditEventID(
    fhirCode: '113867',
  );

  /// value113868
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113868 = AuditEventID(
    fhirCode: '113868',
  );

  /// value113870
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113870 = AuditEventID(
    fhirCode: '113870',
  );

  /// value113871
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113871 = AuditEventID(
    fhirCode: '113871',
  );

  /// value113872
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113872 = AuditEventID(
    fhirCode: '113872',
  );

  /// value113873
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113873 = AuditEventID(
    fhirCode: '113873',
  );

  /// value113874
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113874 = AuditEventID(
    fhirCode: '113874',
  );

  /// value113875
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113875 = AuditEventID(
    fhirCode: '113875',
  );

  /// value113876
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113876 = AuditEventID(
    fhirCode: '113876',
  );

  /// value113877
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113877 = AuditEventID(
    fhirCode: '113877',
  );

  /// value113878
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113878 = AuditEventID(
    fhirCode: '113878',
  );

  /// value113879
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113879 = AuditEventID(
    fhirCode: '113879',
  );

  /// value113880
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113880 = AuditEventID(
    fhirCode: '113880',
  );

  /// value113890
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113890 = AuditEventID(
    fhirCode: '113890',
  );

  /// value113893
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113893 = AuditEventID(
    fhirCode: '113893',
  );

  /// value113895
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113895 = AuditEventID(
    fhirCode: '113895',
  );

  /// value113896
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113896 = AuditEventID(
    fhirCode: '113896',
  );

  /// value113897
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113897 = AuditEventID(
    fhirCode: '113897',
  );

  /// value113898
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113898 = AuditEventID(
    fhirCode: '113898',
  );

  /// value113899
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113899 = AuditEventID(
    fhirCode: '113899',
  );

  /// value113900
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113900 = AuditEventID(
    fhirCode: '113900',
  );

  /// value113901
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113901 = AuditEventID(
    fhirCode: '113901',
  );

  /// value113902
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113902 = AuditEventID(
    fhirCode: '113902',
  );

  /// value113903
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113903 = AuditEventID(
    fhirCode: '113903',
  );

  /// value113904
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113904 = AuditEventID(
    fhirCode: '113904',
  );

  /// value113905
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113905 = AuditEventID(
    fhirCode: '113905',
  );

  /// value113906
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113906 = AuditEventID(
    fhirCode: '113906',
  );

  /// value113907
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113907 = AuditEventID(
    fhirCode: '113907',
  );

  /// value113908
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113908 = AuditEventID(
    fhirCode: '113908',
  );

  /// value113909
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113909 = AuditEventID(
    fhirCode: '113909',
  );

  /// value113910
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113910 = AuditEventID(
    fhirCode: '113910',
  );

  /// value113911
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113911 = AuditEventID(
    fhirCode: '113911',
  );

  /// value113912
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113912 = AuditEventID(
    fhirCode: '113912',
  );

  /// value113913
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113913 = AuditEventID(
    fhirCode: '113913',
  );

  /// value113914
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113914 = AuditEventID(
    fhirCode: '113914',
  );

  /// value113921
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113921 = AuditEventID(
    fhirCode: '113921',
  );

  /// value113922
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113922 = AuditEventID(
    fhirCode: '113922',
  );

  /// value113923
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113923 = AuditEventID(
    fhirCode: '113923',
  );

  /// value113930
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113930 = AuditEventID(
    fhirCode: '113930',
  );

  /// value113931
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113931 = AuditEventID(
    fhirCode: '113931',
  );

  /// value113932
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113932 = AuditEventID(
    fhirCode: '113932',
  );

  /// value113933
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113933 = AuditEventID(
    fhirCode: '113933',
  );

  /// value113934
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113934 = AuditEventID(
    fhirCode: '113934',
  );

  /// value113935
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113935 = AuditEventID(
    fhirCode: '113935',
  );

  /// value113936
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113936 = AuditEventID(
    fhirCode: '113936',
  );

  /// value113937
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113937 = AuditEventID(
    fhirCode: '113937',
  );

  /// value113940
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113940 = AuditEventID(
    fhirCode: '113940',
  );

  /// value113941
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113941 = AuditEventID(
    fhirCode: '113941',
  );

  /// value113942
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113942 = AuditEventID(
    fhirCode: '113942',
  );

  /// value113943
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113943 = AuditEventID(
    fhirCode: '113943',
  );

  /// value113944
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113944 = AuditEventID(
    fhirCode: '113944',
  );

  /// value113945
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113945 = AuditEventID(
    fhirCode: '113945',
  );

  /// value113946
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113946 = AuditEventID(
    fhirCode: '113946',
  );

  /// value113947
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113947 = AuditEventID(
    fhirCode: '113947',
  );

  /// value113948
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113948 = AuditEventID(
    fhirCode: '113948',
  );

  /// value113949
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113949 = AuditEventID(
    fhirCode: '113949',
  );

  /// value113950
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113950 = AuditEventID(
    fhirCode: '113950',
  );

  /// value113951
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113951 = AuditEventID(
    fhirCode: '113951',
  );

  /// value113952
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113952 = AuditEventID(
    fhirCode: '113952',
  );

  /// value113953
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113953 = AuditEventID(
    fhirCode: '113953',
  );

  /// value113954
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113954 = AuditEventID(
    fhirCode: '113954',
  );

  /// value113955
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113955 = AuditEventID(
    fhirCode: '113955',
  );

  /// value113956
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113956 = AuditEventID(
    fhirCode: '113956',
  );

  /// value113957
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113957 = AuditEventID(
    fhirCode: '113957',
  );

  /// value113958
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113958 = AuditEventID(
    fhirCode: '113958',
  );

  /// value113959
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113959 = AuditEventID(
    fhirCode: '113959',
  );

  /// value113961
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113961 = AuditEventID(
    fhirCode: '113961',
  );

  /// value113962
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113962 = AuditEventID(
    fhirCode: '113962',
  );

  /// value113963
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113963 = AuditEventID(
    fhirCode: '113963',
  );

  /// value113970
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value113970 = AuditEventID(
    fhirCode: '113970',
  );

  /// value114000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value114000 = AuditEventID(
    fhirCode: '114000',
  );

  /// value114001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value114001 = AuditEventID(
    fhirCode: '114001',
  );

  /// value114002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value114002 = AuditEventID(
    fhirCode: '114002',
  );

  /// value114003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value114003 = AuditEventID(
    fhirCode: '114003',
  );

  /// value114004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value114004 = AuditEventID(
    fhirCode: '114004',
  );

  /// value114005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value114005 = AuditEventID(
    fhirCode: '114005',
  );

  /// value114006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value114006 = AuditEventID(
    fhirCode: '114006',
  );

  /// value114007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value114007 = AuditEventID(
    fhirCode: '114007',
  );

  /// value114008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value114008 = AuditEventID(
    fhirCode: '114008',
  );

  /// value114009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value114009 = AuditEventID(
    fhirCode: '114009',
  );

  /// value114010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value114010 = AuditEventID(
    fhirCode: '114010',
  );

  /// value114011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value114011 = AuditEventID(
    fhirCode: '114011',
  );

  /// value114201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value114201 = AuditEventID(
    fhirCode: '114201',
  );

  /// value114202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value114202 = AuditEventID(
    fhirCode: '114202',
  );

  /// value114203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value114203 = AuditEventID(
    fhirCode: '114203',
  );

  /// value114204
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value114204 = AuditEventID(
    fhirCode: '114204',
  );

  /// value114205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value114205 = AuditEventID(
    fhirCode: '114205',
  );

  /// value114206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value114206 = AuditEventID(
    fhirCode: '114206',
  );

  /// value114207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value114207 = AuditEventID(
    fhirCode: '114207',
  );

  /// value114208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value114208 = AuditEventID(
    fhirCode: '114208',
  );

  /// value114209
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value114209 = AuditEventID(
    fhirCode: '114209',
  );

  /// value114210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value114210 = AuditEventID(
    fhirCode: '114210',
  );

  /// value114211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value114211 = AuditEventID(
    fhirCode: '114211',
  );

  /// value114213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value114213 = AuditEventID(
    fhirCode: '114213',
  );

  /// value114215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value114215 = AuditEventID(
    fhirCode: '114215',
  );

  /// value114216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value114216 = AuditEventID(
    fhirCode: '114216',
  );

  /// value121001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121001 = AuditEventID(
    fhirCode: '121001',
  );

  /// value121002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121002 = AuditEventID(
    fhirCode: '121002',
  );

  /// value121003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121003 = AuditEventID(
    fhirCode: '121003',
  );

  /// value121004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121004 = AuditEventID(
    fhirCode: '121004',
  );

  /// value121005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121005 = AuditEventID(
    fhirCode: '121005',
  );

  /// value121006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121006 = AuditEventID(
    fhirCode: '121006',
  );

  /// value121007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121007 = AuditEventID(
    fhirCode: '121007',
  );

  /// value121008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121008 = AuditEventID(
    fhirCode: '121008',
  );

  /// value121009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121009 = AuditEventID(
    fhirCode: '121009',
  );

  /// value121010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121010 = AuditEventID(
    fhirCode: '121010',
  );

  /// value121011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121011 = AuditEventID(
    fhirCode: '121011',
  );

  /// value121012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121012 = AuditEventID(
    fhirCode: '121012',
  );

  /// value121013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121013 = AuditEventID(
    fhirCode: '121013',
  );

  /// value121014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121014 = AuditEventID(
    fhirCode: '121014',
  );

  /// value121015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121015 = AuditEventID(
    fhirCode: '121015',
  );

  /// value121016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121016 = AuditEventID(
    fhirCode: '121016',
  );

  /// value121017
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121017 = AuditEventID(
    fhirCode: '121017',
  );

  /// value121018
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121018 = AuditEventID(
    fhirCode: '121018',
  );

  /// value121019
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121019 = AuditEventID(
    fhirCode: '121019',
  );

  /// value121020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121020 = AuditEventID(
    fhirCode: '121020',
  );

  /// value121021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121021 = AuditEventID(
    fhirCode: '121021',
  );

  /// value121022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121022 = AuditEventID(
    fhirCode: '121022',
  );

  /// value121023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121023 = AuditEventID(
    fhirCode: '121023',
  );

  /// value121024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121024 = AuditEventID(
    fhirCode: '121024',
  );

  /// value121025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121025 = AuditEventID(
    fhirCode: '121025',
  );

  /// value121026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121026 = AuditEventID(
    fhirCode: '121026',
  );

  /// value121027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121027 = AuditEventID(
    fhirCode: '121027',
  );

  /// value121028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121028 = AuditEventID(
    fhirCode: '121028',
  );

  /// value121029
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121029 = AuditEventID(
    fhirCode: '121029',
  );

  /// value121030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121030 = AuditEventID(
    fhirCode: '121030',
  );

  /// value121031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121031 = AuditEventID(
    fhirCode: '121031',
  );

  /// value121032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121032 = AuditEventID(
    fhirCode: '121032',
  );

  /// value121033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121033 = AuditEventID(
    fhirCode: '121033',
  );

  /// value121034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121034 = AuditEventID(
    fhirCode: '121034',
  );

  /// value121035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121035 = AuditEventID(
    fhirCode: '121035',
  );

  /// value121036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121036 = AuditEventID(
    fhirCode: '121036',
  );

  /// value121037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121037 = AuditEventID(
    fhirCode: '121037',
  );

  /// value121038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121038 = AuditEventID(
    fhirCode: '121038',
  );

  /// value121039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121039 = AuditEventID(
    fhirCode: '121039',
  );

  /// value121040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121040 = AuditEventID(
    fhirCode: '121040',
  );

  /// value121041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121041 = AuditEventID(
    fhirCode: '121041',
  );

  /// value121042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121042 = AuditEventID(
    fhirCode: '121042',
  );

  /// value121043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121043 = AuditEventID(
    fhirCode: '121043',
  );

  /// value121044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121044 = AuditEventID(
    fhirCode: '121044',
  );

  /// value121045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121045 = AuditEventID(
    fhirCode: '121045',
  );

  /// value121046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121046 = AuditEventID(
    fhirCode: '121046',
  );

  /// value121047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121047 = AuditEventID(
    fhirCode: '121047',
  );

  /// value121048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121048 = AuditEventID(
    fhirCode: '121048',
  );

  /// value121049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121049 = AuditEventID(
    fhirCode: '121049',
  );

  /// value121050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121050 = AuditEventID(
    fhirCode: '121050',
  );

  /// value121051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121051 = AuditEventID(
    fhirCode: '121051',
  );

  /// value121052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121052 = AuditEventID(
    fhirCode: '121052',
  );

  /// value121053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121053 = AuditEventID(
    fhirCode: '121053',
  );

  /// value121054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121054 = AuditEventID(
    fhirCode: '121054',
  );

  /// value121055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121055 = AuditEventID(
    fhirCode: '121055',
  );

  /// value121056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121056 = AuditEventID(
    fhirCode: '121056',
  );

  /// value121057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121057 = AuditEventID(
    fhirCode: '121057',
  );

  /// value121058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121058 = AuditEventID(
    fhirCode: '121058',
  );

  /// value121059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121059 = AuditEventID(
    fhirCode: '121059',
  );

  /// value121060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121060 = AuditEventID(
    fhirCode: '121060',
  );

  /// value121062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121062 = AuditEventID(
    fhirCode: '121062',
  );

  /// value121064
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121064 = AuditEventID(
    fhirCode: '121064',
  );

  /// value121065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121065 = AuditEventID(
    fhirCode: '121065',
  );

  /// value121066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121066 = AuditEventID(
    fhirCode: '121066',
  );

  /// value121068
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121068 = AuditEventID(
    fhirCode: '121068',
  );

  /// value121069
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121069 = AuditEventID(
    fhirCode: '121069',
  );

  /// value121070
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121070 = AuditEventID(
    fhirCode: '121070',
  );

  /// value121071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121071 = AuditEventID(
    fhirCode: '121071',
  );

  /// value121072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121072 = AuditEventID(
    fhirCode: '121072',
  );

  /// value121073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121073 = AuditEventID(
    fhirCode: '121073',
  );

  /// value121074
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121074 = AuditEventID(
    fhirCode: '121074',
  );

  /// value121075
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121075 = AuditEventID(
    fhirCode: '121075',
  );

  /// value121076
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121076 = AuditEventID(
    fhirCode: '121076',
  );

  /// value121077
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121077 = AuditEventID(
    fhirCode: '121077',
  );

  /// value121078
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121078 = AuditEventID(
    fhirCode: '121078',
  );

  /// value121079
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121079 = AuditEventID(
    fhirCode: '121079',
  );

  /// value121080
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121080 = AuditEventID(
    fhirCode: '121080',
  );

  /// value121081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121081 = AuditEventID(
    fhirCode: '121081',
  );

  /// value121082
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121082 = AuditEventID(
    fhirCode: '121082',
  );

  /// value121083
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121083 = AuditEventID(
    fhirCode: '121083',
  );

  /// value121084
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121084 = AuditEventID(
    fhirCode: '121084',
  );

  /// value121085
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121085 = AuditEventID(
    fhirCode: '121085',
  );

  /// value121086
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121086 = AuditEventID(
    fhirCode: '121086',
  );

  /// value121087
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121087 = AuditEventID(
    fhirCode: '121087',
  );

  /// value121088
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121088 = AuditEventID(
    fhirCode: '121088',
  );

  /// value121089
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121089 = AuditEventID(
    fhirCode: '121089',
  );

  /// value121090
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121090 = AuditEventID(
    fhirCode: '121090',
  );

  /// value121091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121091 = AuditEventID(
    fhirCode: '121091',
  );

  /// value121092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121092 = AuditEventID(
    fhirCode: '121092',
  );

  /// value121093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121093 = AuditEventID(
    fhirCode: '121093',
  );

  /// value121094
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121094 = AuditEventID(
    fhirCode: '121094',
  );

  /// value121095
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121095 = AuditEventID(
    fhirCode: '121095',
  );

  /// value121096
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121096 = AuditEventID(
    fhirCode: '121096',
  );

  /// value121097
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121097 = AuditEventID(
    fhirCode: '121097',
  );

  /// value121098
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121098 = AuditEventID(
    fhirCode: '121098',
  );

  /// value121099
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121099 = AuditEventID(
    fhirCode: '121099',
  );

  /// value121100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121100 = AuditEventID(
    fhirCode: '121100',
  );

  /// value121101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121101 = AuditEventID(
    fhirCode: '121101',
  );

  /// value121102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121102 = AuditEventID(
    fhirCode: '121102',
  );

  /// value121103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121103 = AuditEventID(
    fhirCode: '121103',
  );

  /// value121104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121104 = AuditEventID(
    fhirCode: '121104',
  );

  /// value121105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121105 = AuditEventID(
    fhirCode: '121105',
  );

  /// value121106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121106 = AuditEventID(
    fhirCode: '121106',
  );

  /// value121109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121109 = AuditEventID(
    fhirCode: '121109',
  );

  /// value121110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121110 = AuditEventID(
    fhirCode: '121110',
  );

  /// value121111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121111 = AuditEventID(
    fhirCode: '121111',
  );

  /// value121112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121112 = AuditEventID(
    fhirCode: '121112',
  );

  /// value121113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121113 = AuditEventID(
    fhirCode: '121113',
  );

  /// value121114
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121114 = AuditEventID(
    fhirCode: '121114',
  );

  /// value121115
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121115 = AuditEventID(
    fhirCode: '121115',
  );

  /// value121116
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121116 = AuditEventID(
    fhirCode: '121116',
  );

  /// value121117
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121117 = AuditEventID(
    fhirCode: '121117',
  );

  /// value121118
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121118 = AuditEventID(
    fhirCode: '121118',
  );

  /// value121120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121120 = AuditEventID(
    fhirCode: '121120',
  );

  /// value121121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121121 = AuditEventID(
    fhirCode: '121121',
  );

  /// value121122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121122 = AuditEventID(
    fhirCode: '121122',
  );

  /// value121123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121123 = AuditEventID(
    fhirCode: '121123',
  );

  /// value121124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121124 = AuditEventID(
    fhirCode: '121124',
  );

  /// value121125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121125 = AuditEventID(
    fhirCode: '121125',
  );

  /// value121126
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121126 = AuditEventID(
    fhirCode: '121126',
  );

  /// value121127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121127 = AuditEventID(
    fhirCode: '121127',
  );

  /// value121128
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121128 = AuditEventID(
    fhirCode: '121128',
  );

  /// value121130
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121130 = AuditEventID(
    fhirCode: '121130',
  );

  /// value121131
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121131 = AuditEventID(
    fhirCode: '121131',
  );

  /// value121132
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121132 = AuditEventID(
    fhirCode: '121132',
  );

  /// value121133
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121133 = AuditEventID(
    fhirCode: '121133',
  );

  /// value121135
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121135 = AuditEventID(
    fhirCode: '121135',
  );

  /// value121136
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121136 = AuditEventID(
    fhirCode: '121136',
  );

  /// value121137
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121137 = AuditEventID(
    fhirCode: '121137',
  );

  /// value121138
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121138 = AuditEventID(
    fhirCode: '121138',
  );

  /// value121139
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121139 = AuditEventID(
    fhirCode: '121139',
  );

  /// value121140
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121140 = AuditEventID(
    fhirCode: '121140',
  );

  /// value121141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121141 = AuditEventID(
    fhirCode: '121141',
  );

  /// value121142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121142 = AuditEventID(
    fhirCode: '121142',
  );

  /// value121143
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121143 = AuditEventID(
    fhirCode: '121143',
  );

  /// value121144
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121144 = AuditEventID(
    fhirCode: '121144',
  );

  /// value121145
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121145 = AuditEventID(
    fhirCode: '121145',
  );

  /// value121146
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121146 = AuditEventID(
    fhirCode: '121146',
  );

  /// value121147
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121147 = AuditEventID(
    fhirCode: '121147',
  );

  /// value121148
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121148 = AuditEventID(
    fhirCode: '121148',
  );

  /// value121149
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121149 = AuditEventID(
    fhirCode: '121149',
  );

  /// value121150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121150 = AuditEventID(
    fhirCode: '121150',
  );

  /// value121151
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121151 = AuditEventID(
    fhirCode: '121151',
  );

  /// value121152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121152 = AuditEventID(
    fhirCode: '121152',
  );

  /// value121153
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121153 = AuditEventID(
    fhirCode: '121153',
  );

  /// value121154
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121154 = AuditEventID(
    fhirCode: '121154',
  );

  /// value121155
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121155 = AuditEventID(
    fhirCode: '121155',
  );

  /// value121156
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121156 = AuditEventID(
    fhirCode: '121156',
  );

  /// value121157
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121157 = AuditEventID(
    fhirCode: '121157',
  );

  /// value121158
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121158 = AuditEventID(
    fhirCode: '121158',
  );

  /// value121160
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121160 = AuditEventID(
    fhirCode: '121160',
  );

  /// value121161
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121161 = AuditEventID(
    fhirCode: '121161',
  );

  /// value121162
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121162 = AuditEventID(
    fhirCode: '121162',
  );

  /// value121163
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121163 = AuditEventID(
    fhirCode: '121163',
  );

  /// value121165
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121165 = AuditEventID(
    fhirCode: '121165',
  );

  /// value121166
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121166 = AuditEventID(
    fhirCode: '121166',
  );

  /// value121167
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121167 = AuditEventID(
    fhirCode: '121167',
  );

  /// value121168
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121168 = AuditEventID(
    fhirCode: '121168',
  );

  /// value121169
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121169 = AuditEventID(
    fhirCode: '121169',
  );

  /// value121171
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121171 = AuditEventID(
    fhirCode: '121171',
  );

  /// value121172
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121172 = AuditEventID(
    fhirCode: '121172',
  );

  /// value121173
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121173 = AuditEventID(
    fhirCode: '121173',
  );

  /// value121174
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121174 = AuditEventID(
    fhirCode: '121174',
  );

  /// value121180
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121180 = AuditEventID(
    fhirCode: '121180',
  );

  /// value121181
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121181 = AuditEventID(
    fhirCode: '121181',
  );

  /// value121190
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121190 = AuditEventID(
    fhirCode: '121190',
  );

  /// value121191
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121191 = AuditEventID(
    fhirCode: '121191',
  );

  /// value121192
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121192 = AuditEventID(
    fhirCode: '121192',
  );

  /// value121193
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121193 = AuditEventID(
    fhirCode: '121193',
  );

  /// value121194
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121194 = AuditEventID(
    fhirCode: '121194',
  );

  /// value121195
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121195 = AuditEventID(
    fhirCode: '121195',
  );

  /// value121196
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121196 = AuditEventID(
    fhirCode: '121196',
  );

  /// value121197
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121197 = AuditEventID(
    fhirCode: '121197',
  );

  /// value121198
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121198 = AuditEventID(
    fhirCode: '121198',
  );

  /// value121200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121200 = AuditEventID(
    fhirCode: '121200',
  );

  /// value121201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121201 = AuditEventID(
    fhirCode: '121201',
  );

  /// value121202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121202 = AuditEventID(
    fhirCode: '121202',
  );

  /// value121206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121206 = AuditEventID(
    fhirCode: '121206',
  );

  /// value121207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121207 = AuditEventID(
    fhirCode: '121207',
  );

  /// value121208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121208 = AuditEventID(
    fhirCode: '121208',
  );

  /// value121210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121210 = AuditEventID(
    fhirCode: '121210',
  );

  /// value121211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121211 = AuditEventID(
    fhirCode: '121211',
  );

  /// value121213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121213 = AuditEventID(
    fhirCode: '121213',
  );

  /// value121214
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121214 = AuditEventID(
    fhirCode: '121214',
  );

  /// value121216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121216 = AuditEventID(
    fhirCode: '121216',
  );

  /// value121217
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121217 = AuditEventID(
    fhirCode: '121217',
  );

  /// value121218
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121218 = AuditEventID(
    fhirCode: '121218',
  );

  /// value121219
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121219 = AuditEventID(
    fhirCode: '121219',
  );

  /// value121220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121220 = AuditEventID(
    fhirCode: '121220',
  );

  /// value121221
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121221 = AuditEventID(
    fhirCode: '121221',
  );

  /// value121222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121222 = AuditEventID(
    fhirCode: '121222',
  );

  /// value121230
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121230 = AuditEventID(
    fhirCode: '121230',
  );

  /// value121231
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121231 = AuditEventID(
    fhirCode: '121231',
  );

  /// value121232
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121232 = AuditEventID(
    fhirCode: '121232',
  );

  /// value121233
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121233 = AuditEventID(
    fhirCode: '121233',
  );

  /// value121242
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121242 = AuditEventID(
    fhirCode: '121242',
  );

  /// value121243
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121243 = AuditEventID(
    fhirCode: '121243',
  );

  /// value121244
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121244 = AuditEventID(
    fhirCode: '121244',
  );

  /// value121290
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121290 = AuditEventID(
    fhirCode: '121290',
  );

  /// value121291
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121291 = AuditEventID(
    fhirCode: '121291',
  );

  /// value121301
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121301 = AuditEventID(
    fhirCode: '121301',
  );

  /// value121302
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121302 = AuditEventID(
    fhirCode: '121302',
  );

  /// value121303
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121303 = AuditEventID(
    fhirCode: '121303',
  );

  /// value121304
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121304 = AuditEventID(
    fhirCode: '121304',
  );

  /// value121305
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121305 = AuditEventID(
    fhirCode: '121305',
  );

  /// value121306
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121306 = AuditEventID(
    fhirCode: '121306',
  );

  /// value121307
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121307 = AuditEventID(
    fhirCode: '121307',
  );

  /// value121311
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121311 = AuditEventID(
    fhirCode: '121311',
  );

  /// value121312
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121312 = AuditEventID(
    fhirCode: '121312',
  );

  /// value121313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121313 = AuditEventID(
    fhirCode: '121313',
  );

  /// value121314
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121314 = AuditEventID(
    fhirCode: '121314',
  );

  /// value121315
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121315 = AuditEventID(
    fhirCode: '121315',
  );

  /// value121316
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121316 = AuditEventID(
    fhirCode: '121316',
  );

  /// value121317
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121317 = AuditEventID(
    fhirCode: '121317',
  );

  /// value121318
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121318 = AuditEventID(
    fhirCode: '121318',
  );

  /// value121320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121320 = AuditEventID(
    fhirCode: '121320',
  );

  /// value121321
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121321 = AuditEventID(
    fhirCode: '121321',
  );

  /// value121322
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121322 = AuditEventID(
    fhirCode: '121322',
  );

  /// value121323
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121323 = AuditEventID(
    fhirCode: '121323',
  );

  /// value121324
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121324 = AuditEventID(
    fhirCode: '121324',
  );

  /// value121325
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121325 = AuditEventID(
    fhirCode: '121325',
  );

  /// value121326
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121326 = AuditEventID(
    fhirCode: '121326',
  );

  /// value121327
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121327 = AuditEventID(
    fhirCode: '121327',
  );

  /// value121328
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121328 = AuditEventID(
    fhirCode: '121328',
  );

  /// value121329
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121329 = AuditEventID(
    fhirCode: '121329',
  );

  /// value121330
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121330 = AuditEventID(
    fhirCode: '121330',
  );

  /// value121331
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121331 = AuditEventID(
    fhirCode: '121331',
  );

  /// value121332
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121332 = AuditEventID(
    fhirCode: '121332',
  );

  /// value121333
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121333 = AuditEventID(
    fhirCode: '121333',
  );

  /// value121334
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121334 = AuditEventID(
    fhirCode: '121334',
  );

  /// value121335
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121335 = AuditEventID(
    fhirCode: '121335',
  );

  /// value121338
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121338 = AuditEventID(
    fhirCode: '121338',
  );

  /// value121339
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121339 = AuditEventID(
    fhirCode: '121339',
  );

  /// value121340
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121340 = AuditEventID(
    fhirCode: '121340',
  );

  /// value121341
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121341 = AuditEventID(
    fhirCode: '121341',
  );

  /// value121342
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121342 = AuditEventID(
    fhirCode: '121342',
  );

  /// value121346
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121346 = AuditEventID(
    fhirCode: '121346',
  );

  /// value121347
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121347 = AuditEventID(
    fhirCode: '121347',
  );

  /// value121348
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121348 = AuditEventID(
    fhirCode: '121348',
  );

  /// value121349
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121349 = AuditEventID(
    fhirCode: '121349',
  );

  /// value121350
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121350 = AuditEventID(
    fhirCode: '121350',
  );

  /// value121351
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121351 = AuditEventID(
    fhirCode: '121351',
  );

  /// value121352
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121352 = AuditEventID(
    fhirCode: '121352',
  );

  /// value121353
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121353 = AuditEventID(
    fhirCode: '121353',
  );

  /// value121354
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121354 = AuditEventID(
    fhirCode: '121354',
  );

  /// value121358
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121358 = AuditEventID(
    fhirCode: '121358',
  );

  /// value121360
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121360 = AuditEventID(
    fhirCode: '121360',
  );

  /// value121361
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121361 = AuditEventID(
    fhirCode: '121361',
  );

  /// value121362
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121362 = AuditEventID(
    fhirCode: '121362',
  );

  /// value121363
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121363 = AuditEventID(
    fhirCode: '121363',
  );

  /// value121370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121370 = AuditEventID(
    fhirCode: '121370',
  );

  /// value121371
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121371 = AuditEventID(
    fhirCode: '121371',
  );

  /// value121372
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121372 = AuditEventID(
    fhirCode: '121372',
  );

  /// value121380
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121380 = AuditEventID(
    fhirCode: '121380',
  );

  /// value121381
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121381 = AuditEventID(
    fhirCode: '121381',
  );

  /// value121382
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121382 = AuditEventID(
    fhirCode: '121382',
  );

  /// value121383
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121383 = AuditEventID(
    fhirCode: '121383',
  );

  /// value121401
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121401 = AuditEventID(
    fhirCode: '121401',
  );

  /// value121402
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121402 = AuditEventID(
    fhirCode: '121402',
  );

  /// value121403
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121403 = AuditEventID(
    fhirCode: '121403',
  );

  /// value121404
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121404 = AuditEventID(
    fhirCode: '121404',
  );

  /// value121405
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121405 = AuditEventID(
    fhirCode: '121405',
  );

  /// value121406
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121406 = AuditEventID(
    fhirCode: '121406',
  );

  /// value121407
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121407 = AuditEventID(
    fhirCode: '121407',
  );

  /// value121408
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121408 = AuditEventID(
    fhirCode: '121408',
  );

  /// value121410
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121410 = AuditEventID(
    fhirCode: '121410',
  );

  /// value121411
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121411 = AuditEventID(
    fhirCode: '121411',
  );

  /// value121412
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121412 = AuditEventID(
    fhirCode: '121412',
  );

  /// value121414
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121414 = AuditEventID(
    fhirCode: '121414',
  );

  /// value121415
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121415 = AuditEventID(
    fhirCode: '121415',
  );

  /// value121416
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121416 = AuditEventID(
    fhirCode: '121416',
  );

  /// value121417
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121417 = AuditEventID(
    fhirCode: '121417',
  );

  /// value121420
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121420 = AuditEventID(
    fhirCode: '121420',
  );

  /// value121421
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121421 = AuditEventID(
    fhirCode: '121421',
  );

  /// value121422
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121422 = AuditEventID(
    fhirCode: '121422',
  );

  /// value121423
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121423 = AuditEventID(
    fhirCode: '121423',
  );

  /// value121424
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121424 = AuditEventID(
    fhirCode: '121424',
  );

  /// value121425
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121425 = AuditEventID(
    fhirCode: '121425',
  );

  /// value121427
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121427 = AuditEventID(
    fhirCode: '121427',
  );

  /// value121428
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121428 = AuditEventID(
    fhirCode: '121428',
  );

  /// value121430
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121430 = AuditEventID(
    fhirCode: '121430',
  );

  /// value121431
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121431 = AuditEventID(
    fhirCode: '121431',
  );

  /// value121432
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121432 = AuditEventID(
    fhirCode: '121432',
  );

  /// value121433
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121433 = AuditEventID(
    fhirCode: '121433',
  );

  /// value121434
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121434 = AuditEventID(
    fhirCode: '121434',
  );

  /// value121435
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121435 = AuditEventID(
    fhirCode: '121435',
  );

  /// value121436
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121436 = AuditEventID(
    fhirCode: '121436',
  );

  /// value121437
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121437 = AuditEventID(
    fhirCode: '121437',
  );

  /// value121438
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121438 = AuditEventID(
    fhirCode: '121438',
  );

  /// value121439
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121439 = AuditEventID(
    fhirCode: '121439',
  );

  /// value121701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121701 = AuditEventID(
    fhirCode: '121701',
  );

  /// value121702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121702 = AuditEventID(
    fhirCode: '121702',
  );

  /// value121703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121703 = AuditEventID(
    fhirCode: '121703',
  );

  /// value121704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121704 = AuditEventID(
    fhirCode: '121704',
  );

  /// value121705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121705 = AuditEventID(
    fhirCode: '121705',
  );

  /// value121706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121706 = AuditEventID(
    fhirCode: '121706',
  );

  /// value121707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121707 = AuditEventID(
    fhirCode: '121707',
  );

  /// value121708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121708 = AuditEventID(
    fhirCode: '121708',
  );

  /// value121709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121709 = AuditEventID(
    fhirCode: '121709',
  );

  /// value121710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121710 = AuditEventID(
    fhirCode: '121710',
  );

  /// value121711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121711 = AuditEventID(
    fhirCode: '121711',
  );

  /// value121712
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121712 = AuditEventID(
    fhirCode: '121712',
  );

  /// value121713
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121713 = AuditEventID(
    fhirCode: '121713',
  );

  /// value121714
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121714 = AuditEventID(
    fhirCode: '121714',
  );

  /// value121715
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121715 = AuditEventID(
    fhirCode: '121715',
  );

  /// value121716
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121716 = AuditEventID(
    fhirCode: '121716',
  );

  /// value121717
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121717 = AuditEventID(
    fhirCode: '121717',
  );

  /// value121718
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121718 = AuditEventID(
    fhirCode: '121718',
  );

  /// value121719
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121719 = AuditEventID(
    fhirCode: '121719',
  );

  /// value121720
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121720 = AuditEventID(
    fhirCode: '121720',
  );

  /// value121721
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121721 = AuditEventID(
    fhirCode: '121721',
  );

  /// value121722
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121722 = AuditEventID(
    fhirCode: '121722',
  );

  /// value121723
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121723 = AuditEventID(
    fhirCode: '121723',
  );

  /// value121724
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121724 = AuditEventID(
    fhirCode: '121724',
  );

  /// value121725
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121725 = AuditEventID(
    fhirCode: '121725',
  );

  /// value121726
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121726 = AuditEventID(
    fhirCode: '121726',
  );

  /// value121727
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121727 = AuditEventID(
    fhirCode: '121727',
  );

  /// value121728
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121728 = AuditEventID(
    fhirCode: '121728',
  );

  /// value121729
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121729 = AuditEventID(
    fhirCode: '121729',
  );

  /// value121730
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121730 = AuditEventID(
    fhirCode: '121730',
  );

  /// value121731
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121731 = AuditEventID(
    fhirCode: '121731',
  );

  /// value121732
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121732 = AuditEventID(
    fhirCode: '121732',
  );

  /// value121733
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121733 = AuditEventID(
    fhirCode: '121733',
  );

  /// value121734
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121734 = AuditEventID(
    fhirCode: '121734',
  );

  /// value121740
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value121740 = AuditEventID(
    fhirCode: '121740',
  );

  /// value122001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122001 = AuditEventID(
    fhirCode: '122001',
  );

  /// value122002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122002 = AuditEventID(
    fhirCode: '122002',
  );

  /// value122003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122003 = AuditEventID(
    fhirCode: '122003',
  );

  /// value122004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122004 = AuditEventID(
    fhirCode: '122004',
  );

  /// value122005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122005 = AuditEventID(
    fhirCode: '122005',
  );

  /// value122006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122006 = AuditEventID(
    fhirCode: '122006',
  );

  /// value122007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122007 = AuditEventID(
    fhirCode: '122007',
  );

  /// value122008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122008 = AuditEventID(
    fhirCode: '122008',
  );

  /// value122009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122009 = AuditEventID(
    fhirCode: '122009',
  );

  /// value122010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122010 = AuditEventID(
    fhirCode: '122010',
  );

  /// value122011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122011 = AuditEventID(
    fhirCode: '122011',
  );

  /// value122012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122012 = AuditEventID(
    fhirCode: '122012',
  );

  /// value122020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122020 = AuditEventID(
    fhirCode: '122020',
  );

  /// value122021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122021 = AuditEventID(
    fhirCode: '122021',
  );

  /// value122022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122022 = AuditEventID(
    fhirCode: '122022',
  );

  /// value122023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122023 = AuditEventID(
    fhirCode: '122023',
  );

  /// value122024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122024 = AuditEventID(
    fhirCode: '122024',
  );

  /// value122025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122025 = AuditEventID(
    fhirCode: '122025',
  );

  /// value122026
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122026 = AuditEventID(
    fhirCode: '122026',
  );

  /// value122027
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122027 = AuditEventID(
    fhirCode: '122027',
  );

  /// value122028
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122028 = AuditEventID(
    fhirCode: '122028',
  );

  /// value122029
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122029 = AuditEventID(
    fhirCode: '122029',
  );

  /// value122030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122030 = AuditEventID(
    fhirCode: '122030',
  );

  /// value122031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122031 = AuditEventID(
    fhirCode: '122031',
  );

  /// value122032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122032 = AuditEventID(
    fhirCode: '122032',
  );

  /// value122033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122033 = AuditEventID(
    fhirCode: '122033',
  );

  /// value122034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122034 = AuditEventID(
    fhirCode: '122034',
  );

  /// value122035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122035 = AuditEventID(
    fhirCode: '122035',
  );

  /// value122036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122036 = AuditEventID(
    fhirCode: '122036',
  );

  /// value122037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122037 = AuditEventID(
    fhirCode: '122037',
  );

  /// value122038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122038 = AuditEventID(
    fhirCode: '122038',
  );

  /// value122039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122039 = AuditEventID(
    fhirCode: '122039',
  );

  /// value122041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122041 = AuditEventID(
    fhirCode: '122041',
  );

  /// value122042
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122042 = AuditEventID(
    fhirCode: '122042',
  );

  /// value122043
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122043 = AuditEventID(
    fhirCode: '122043',
  );

  /// value122044
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122044 = AuditEventID(
    fhirCode: '122044',
  );

  /// value122045
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122045 = AuditEventID(
    fhirCode: '122045',
  );

  /// value122046
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122046 = AuditEventID(
    fhirCode: '122046',
  );

  /// value122047
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122047 = AuditEventID(
    fhirCode: '122047',
  );

  /// value122048
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122048 = AuditEventID(
    fhirCode: '122048',
  );

  /// value122049
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122049 = AuditEventID(
    fhirCode: '122049',
  );

  /// value122052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122052 = AuditEventID(
    fhirCode: '122052',
  );

  /// value122053
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122053 = AuditEventID(
    fhirCode: '122053',
  );

  /// value122054
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122054 = AuditEventID(
    fhirCode: '122054',
  );

  /// value122055
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122055 = AuditEventID(
    fhirCode: '122055',
  );

  /// value122056
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122056 = AuditEventID(
    fhirCode: '122056',
  );

  /// value122057
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122057 = AuditEventID(
    fhirCode: '122057',
  );

  /// value122058
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122058 = AuditEventID(
    fhirCode: '122058',
  );

  /// value122059
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122059 = AuditEventID(
    fhirCode: '122059',
  );

  /// value122060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122060 = AuditEventID(
    fhirCode: '122060',
  );

  /// value122061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122061 = AuditEventID(
    fhirCode: '122061',
  );

  /// value122062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122062 = AuditEventID(
    fhirCode: '122062',
  );

  /// value122072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122072 = AuditEventID(
    fhirCode: '122072',
  );

  /// value122073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122073 = AuditEventID(
    fhirCode: '122073',
  );

  /// value122075
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122075 = AuditEventID(
    fhirCode: '122075',
  );

  /// value122076
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122076 = AuditEventID(
    fhirCode: '122076',
  );

  /// value122077
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122077 = AuditEventID(
    fhirCode: '122077',
  );

  /// value122078
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122078 = AuditEventID(
    fhirCode: '122078',
  );

  /// value122079
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122079 = AuditEventID(
    fhirCode: '122079',
  );

  /// value122081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122081 = AuditEventID(
    fhirCode: '122081',
  );

  /// value122082
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122082 = AuditEventID(
    fhirCode: '122082',
  );

  /// value122083
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122083 = AuditEventID(
    fhirCode: '122083',
  );

  /// value122084
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122084 = AuditEventID(
    fhirCode: '122084',
  );

  /// value122085
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122085 = AuditEventID(
    fhirCode: '122085',
  );

  /// value122086
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122086 = AuditEventID(
    fhirCode: '122086',
  );

  /// value122087
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122087 = AuditEventID(
    fhirCode: '122087',
  );

  /// value122088
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122088 = AuditEventID(
    fhirCode: '122088',
  );

  /// value122089
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122089 = AuditEventID(
    fhirCode: '122089',
  );

  /// value122090
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122090 = AuditEventID(
    fhirCode: '122090',
  );

  /// value122091
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122091 = AuditEventID(
    fhirCode: '122091',
  );

  /// value122092
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122092 = AuditEventID(
    fhirCode: '122092',
  );

  /// value122093
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122093 = AuditEventID(
    fhirCode: '122093',
  );

  /// value122094
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122094 = AuditEventID(
    fhirCode: '122094',
  );

  /// value122095
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122095 = AuditEventID(
    fhirCode: '122095',
  );

  /// value122096
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122096 = AuditEventID(
    fhirCode: '122096',
  );

  /// value122097
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122097 = AuditEventID(
    fhirCode: '122097',
  );

  /// value122098
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122098 = AuditEventID(
    fhirCode: '122098',
  );

  /// value122099
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122099 = AuditEventID(
    fhirCode: '122099',
  );

  /// value122101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122101 = AuditEventID(
    fhirCode: '122101',
  );

  /// value122102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122102 = AuditEventID(
    fhirCode: '122102',
  );

  /// value122103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122103 = AuditEventID(
    fhirCode: '122103',
  );

  /// value122104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122104 = AuditEventID(
    fhirCode: '122104',
  );

  /// value122105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122105 = AuditEventID(
    fhirCode: '122105',
  );

  /// value122106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122106 = AuditEventID(
    fhirCode: '122106',
  );

  /// value122107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122107 = AuditEventID(
    fhirCode: '122107',
  );

  /// value122108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122108 = AuditEventID(
    fhirCode: '122108',
  );

  /// value122109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122109 = AuditEventID(
    fhirCode: '122109',
  );

  /// value122110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122110 = AuditEventID(
    fhirCode: '122110',
  );

  /// value122111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122111 = AuditEventID(
    fhirCode: '122111',
  );

  /// value122112
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122112 = AuditEventID(
    fhirCode: '122112',
  );

  /// value122113
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122113 = AuditEventID(
    fhirCode: '122113',
  );

  /// value122114
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122114 = AuditEventID(
    fhirCode: '122114',
  );

  /// value122120
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122120 = AuditEventID(
    fhirCode: '122120',
  );

  /// value122121
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122121 = AuditEventID(
    fhirCode: '122121',
  );

  /// value122122
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122122 = AuditEventID(
    fhirCode: '122122',
  );

  /// value122123
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122123 = AuditEventID(
    fhirCode: '122123',
  );

  /// value122124
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122124 = AuditEventID(
    fhirCode: '122124',
  );

  /// value122125
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122125 = AuditEventID(
    fhirCode: '122125',
  );

  /// value122126
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122126 = AuditEventID(
    fhirCode: '122126',
  );

  /// value122127
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122127 = AuditEventID(
    fhirCode: '122127',
  );

  /// value122128
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122128 = AuditEventID(
    fhirCode: '122128',
  );

  /// value122129
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122129 = AuditEventID(
    fhirCode: '122129',
  );

  /// value122130
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122130 = AuditEventID(
    fhirCode: '122130',
  );

  /// value122131
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122131 = AuditEventID(
    fhirCode: '122131',
  );

  /// value122132
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122132 = AuditEventID(
    fhirCode: '122132',
  );

  /// value122133
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122133 = AuditEventID(
    fhirCode: '122133',
  );

  /// value122134
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122134 = AuditEventID(
    fhirCode: '122134',
  );

  /// value122138
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122138 = AuditEventID(
    fhirCode: '122138',
  );

  /// value122139
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122139 = AuditEventID(
    fhirCode: '122139',
  );

  /// value122140
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122140 = AuditEventID(
    fhirCode: '122140',
  );

  /// value122141
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122141 = AuditEventID(
    fhirCode: '122141',
  );

  /// value122142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122142 = AuditEventID(
    fhirCode: '122142',
  );

  /// value122143
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122143 = AuditEventID(
    fhirCode: '122143',
  );

  /// value122144
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122144 = AuditEventID(
    fhirCode: '122144',
  );

  /// value122145
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122145 = AuditEventID(
    fhirCode: '122145',
  );

  /// value122146
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122146 = AuditEventID(
    fhirCode: '122146',
  );

  /// value122147
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122147 = AuditEventID(
    fhirCode: '122147',
  );

  /// value122148
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122148 = AuditEventID(
    fhirCode: '122148',
  );

  /// value122149
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122149 = AuditEventID(
    fhirCode: '122149',
  );

  /// value122150
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122150 = AuditEventID(
    fhirCode: '122150',
  );

  /// value122151
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122151 = AuditEventID(
    fhirCode: '122151',
  );

  /// value122152
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122152 = AuditEventID(
    fhirCode: '122152',
  );

  /// value122153
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122153 = AuditEventID(
    fhirCode: '122153',
  );

  /// value122154
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122154 = AuditEventID(
    fhirCode: '122154',
  );

  /// value122157
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122157 = AuditEventID(
    fhirCode: '122157',
  );

  /// value122158
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122158 = AuditEventID(
    fhirCode: '122158',
  );

  /// value122159
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122159 = AuditEventID(
    fhirCode: '122159',
  );

  /// value122160
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122160 = AuditEventID(
    fhirCode: '122160',
  );

  /// value122161
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122161 = AuditEventID(
    fhirCode: '122161',
  );

  /// value122162
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122162 = AuditEventID(
    fhirCode: '122162',
  );

  /// value122163
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122163 = AuditEventID(
    fhirCode: '122163',
  );

  /// value122164
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122164 = AuditEventID(
    fhirCode: '122164',
  );

  /// value122165
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122165 = AuditEventID(
    fhirCode: '122165',
  );

  /// value122166
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122166 = AuditEventID(
    fhirCode: '122166',
  );

  /// value122167
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122167 = AuditEventID(
    fhirCode: '122167',
  );

  /// value122170
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122170 = AuditEventID(
    fhirCode: '122170',
  );

  /// value122171
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122171 = AuditEventID(
    fhirCode: '122171',
  );

  /// value122172
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122172 = AuditEventID(
    fhirCode: '122172',
  );

  /// value122173
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122173 = AuditEventID(
    fhirCode: '122173',
  );

  /// value122175
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122175 = AuditEventID(
    fhirCode: '122175',
  );

  /// value122176
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122176 = AuditEventID(
    fhirCode: '122176',
  );

  /// value122177
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122177 = AuditEventID(
    fhirCode: '122177',
  );

  /// value122178
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122178 = AuditEventID(
    fhirCode: '122178',
  );

  /// value122179
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122179 = AuditEventID(
    fhirCode: '122179',
  );

  /// value122180
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122180 = AuditEventID(
    fhirCode: '122180',
  );

  /// value122181
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122181 = AuditEventID(
    fhirCode: '122181',
  );

  /// value122182
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122182 = AuditEventID(
    fhirCode: '122182',
  );

  /// value122183
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122183 = AuditEventID(
    fhirCode: '122183',
  );

  /// value122185
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122185 = AuditEventID(
    fhirCode: '122185',
  );

  /// value122187
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122187 = AuditEventID(
    fhirCode: '122187',
  );

  /// value122188
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122188 = AuditEventID(
    fhirCode: '122188',
  );

  /// value122189
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122189 = AuditEventID(
    fhirCode: '122189',
  );

  /// value122190
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122190 = AuditEventID(
    fhirCode: '122190',
  );

  /// value122191
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122191 = AuditEventID(
    fhirCode: '122191',
  );

  /// value122192
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122192 = AuditEventID(
    fhirCode: '122192',
  );

  /// value122193
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122193 = AuditEventID(
    fhirCode: '122193',
  );

  /// value122194
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122194 = AuditEventID(
    fhirCode: '122194',
  );

  /// value122195
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122195 = AuditEventID(
    fhirCode: '122195',
  );

  /// value122196
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122196 = AuditEventID(
    fhirCode: '122196',
  );

  /// value122197
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122197 = AuditEventID(
    fhirCode: '122197',
  );

  /// value122198
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122198 = AuditEventID(
    fhirCode: '122198',
  );

  /// value122199
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122199 = AuditEventID(
    fhirCode: '122199',
  );

  /// value122201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122201 = AuditEventID(
    fhirCode: '122201',
  );

  /// value122202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122202 = AuditEventID(
    fhirCode: '122202',
  );

  /// value122203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122203 = AuditEventID(
    fhirCode: '122203',
  );

  /// value122204
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122204 = AuditEventID(
    fhirCode: '122204',
  );

  /// value122205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122205 = AuditEventID(
    fhirCode: '122205',
  );

  /// value122206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122206 = AuditEventID(
    fhirCode: '122206',
  );

  /// value122207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122207 = AuditEventID(
    fhirCode: '122207',
  );

  /// value122208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122208 = AuditEventID(
    fhirCode: '122208',
  );

  /// value122209
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122209 = AuditEventID(
    fhirCode: '122209',
  );

  /// value122210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122210 = AuditEventID(
    fhirCode: '122210',
  );

  /// value122211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122211 = AuditEventID(
    fhirCode: '122211',
  );

  /// value122212
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122212 = AuditEventID(
    fhirCode: '122212',
  );

  /// value122213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122213 = AuditEventID(
    fhirCode: '122213',
  );

  /// value122214
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122214 = AuditEventID(
    fhirCode: '122214',
  );

  /// value122215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122215 = AuditEventID(
    fhirCode: '122215',
  );

  /// value122216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122216 = AuditEventID(
    fhirCode: '122216',
  );

  /// value122217
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122217 = AuditEventID(
    fhirCode: '122217',
  );

  /// value122218
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122218 = AuditEventID(
    fhirCode: '122218',
  );

  /// value122219
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122219 = AuditEventID(
    fhirCode: '122219',
  );

  /// value122220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122220 = AuditEventID(
    fhirCode: '122220',
  );

  /// value122221
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122221 = AuditEventID(
    fhirCode: '122221',
  );

  /// value122222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122222 = AuditEventID(
    fhirCode: '122222',
  );

  /// value122223
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122223 = AuditEventID(
    fhirCode: '122223',
  );

  /// value122224
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122224 = AuditEventID(
    fhirCode: '122224',
  );

  /// value122225
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122225 = AuditEventID(
    fhirCode: '122225',
  );

  /// value122227
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122227 = AuditEventID(
    fhirCode: '122227',
  );

  /// value122228
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122228 = AuditEventID(
    fhirCode: '122228',
  );

  /// value122229
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122229 = AuditEventID(
    fhirCode: '122229',
  );

  /// value122230
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122230 = AuditEventID(
    fhirCode: '122230',
  );

  /// value122231
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122231 = AuditEventID(
    fhirCode: '122231',
  );

  /// value122232
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122232 = AuditEventID(
    fhirCode: '122232',
  );

  /// value122233
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122233 = AuditEventID(
    fhirCode: '122233',
  );

  /// value122234
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122234 = AuditEventID(
    fhirCode: '122234',
  );

  /// value122235
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122235 = AuditEventID(
    fhirCode: '122235',
  );

  /// value122236
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122236 = AuditEventID(
    fhirCode: '122236',
  );

  /// value122237
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122237 = AuditEventID(
    fhirCode: '122237',
  );

  /// value122238
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122238 = AuditEventID(
    fhirCode: '122238',
  );

  /// value122239
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122239 = AuditEventID(
    fhirCode: '122239',
  );

  /// value122240
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122240 = AuditEventID(
    fhirCode: '122240',
  );

  /// value122241
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122241 = AuditEventID(
    fhirCode: '122241',
  );

  /// value122242
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122242 = AuditEventID(
    fhirCode: '122242',
  );

  /// value122243
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122243 = AuditEventID(
    fhirCode: '122243',
  );

  /// value122244
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122244 = AuditEventID(
    fhirCode: '122244',
  );

  /// value122245
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122245 = AuditEventID(
    fhirCode: '122245',
  );

  /// value122246
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122246 = AuditEventID(
    fhirCode: '122246',
  );

  /// value122247
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122247 = AuditEventID(
    fhirCode: '122247',
  );

  /// value122248
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122248 = AuditEventID(
    fhirCode: '122248',
  );

  /// value122249
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122249 = AuditEventID(
    fhirCode: '122249',
  );

  /// value122250
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122250 = AuditEventID(
    fhirCode: '122250',
  );

  /// value122251
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122251 = AuditEventID(
    fhirCode: '122251',
  );

  /// value122252
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122252 = AuditEventID(
    fhirCode: '122252',
  );

  /// value122253
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122253 = AuditEventID(
    fhirCode: '122253',
  );

  /// value122254
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122254 = AuditEventID(
    fhirCode: '122254',
  );

  /// value122255
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122255 = AuditEventID(
    fhirCode: '122255',
  );

  /// value122256
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122256 = AuditEventID(
    fhirCode: '122256',
  );

  /// value122257
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122257 = AuditEventID(
    fhirCode: '122257',
  );

  /// value122258
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122258 = AuditEventID(
    fhirCode: '122258',
  );

  /// value122259
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122259 = AuditEventID(
    fhirCode: '122259',
  );

  /// value122260
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122260 = AuditEventID(
    fhirCode: '122260',
  );

  /// value122261
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122261 = AuditEventID(
    fhirCode: '122261',
  );

  /// value122262
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122262 = AuditEventID(
    fhirCode: '122262',
  );

  /// value122263
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122263 = AuditEventID(
    fhirCode: '122263',
  );

  /// value122265
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122265 = AuditEventID(
    fhirCode: '122265',
  );

  /// value122266
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122266 = AuditEventID(
    fhirCode: '122266',
  );

  /// value122267
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122267 = AuditEventID(
    fhirCode: '122267',
  );

  /// value122268
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122268 = AuditEventID(
    fhirCode: '122268',
  );

  /// value122269
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122269 = AuditEventID(
    fhirCode: '122269',
  );

  /// value122270
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122270 = AuditEventID(
    fhirCode: '122270',
  );

  /// value122271
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122271 = AuditEventID(
    fhirCode: '122271',
  );

  /// value122272
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122272 = AuditEventID(
    fhirCode: '122272',
  );

  /// value122273
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122273 = AuditEventID(
    fhirCode: '122273',
  );

  /// value122274
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122274 = AuditEventID(
    fhirCode: '122274',
  );

  /// value122275
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122275 = AuditEventID(
    fhirCode: '122275',
  );

  /// value122276
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122276 = AuditEventID(
    fhirCode: '122276',
  );

  /// value122277
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122277 = AuditEventID(
    fhirCode: '122277',
  );

  /// value122278
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122278 = AuditEventID(
    fhirCode: '122278',
  );

  /// value122279
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122279 = AuditEventID(
    fhirCode: '122279',
  );

  /// value122281
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122281 = AuditEventID(
    fhirCode: '122281',
  );

  /// value122282
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122282 = AuditEventID(
    fhirCode: '122282',
  );

  /// value122283
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122283 = AuditEventID(
    fhirCode: '122283',
  );

  /// value122288
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122288 = AuditEventID(
    fhirCode: '122288',
  );

  /// value122291
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122291 = AuditEventID(
    fhirCode: '122291',
  );

  /// value122292
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122292 = AuditEventID(
    fhirCode: '122292',
  );

  /// value122301
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122301 = AuditEventID(
    fhirCode: '122301',
  );

  /// value122302
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122302 = AuditEventID(
    fhirCode: '122302',
  );

  /// value122303
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122303 = AuditEventID(
    fhirCode: '122303',
  );

  /// value122304
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122304 = AuditEventID(
    fhirCode: '122304',
  );

  /// value122305
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122305 = AuditEventID(
    fhirCode: '122305',
  );

  /// value122306
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122306 = AuditEventID(
    fhirCode: '122306',
  );

  /// value122307
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122307 = AuditEventID(
    fhirCode: '122307',
  );

  /// value122308
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122308 = AuditEventID(
    fhirCode: '122308',
  );

  /// value122309
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122309 = AuditEventID(
    fhirCode: '122309',
  );

  /// value122310
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122310 = AuditEventID(
    fhirCode: '122310',
  );

  /// value122311
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122311 = AuditEventID(
    fhirCode: '122311',
  );

  /// value122312
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122312 = AuditEventID(
    fhirCode: '122312',
  );

  /// value122313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122313 = AuditEventID(
    fhirCode: '122313',
  );

  /// value122319
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122319 = AuditEventID(
    fhirCode: '122319',
  );

  /// value122320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122320 = AuditEventID(
    fhirCode: '122320',
  );

  /// value122321
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122321 = AuditEventID(
    fhirCode: '122321',
  );

  /// value122322
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122322 = AuditEventID(
    fhirCode: '122322',
  );

  /// value122325
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122325 = AuditEventID(
    fhirCode: '122325',
  );

  /// value122330
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122330 = AuditEventID(
    fhirCode: '122330',
  );

  /// value122331
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122331 = AuditEventID(
    fhirCode: '122331',
  );

  /// value122332
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122332 = AuditEventID(
    fhirCode: '122332',
  );

  /// value122333
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122333 = AuditEventID(
    fhirCode: '122333',
  );

  /// value122334
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122334 = AuditEventID(
    fhirCode: '122334',
  );

  /// value122335
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122335 = AuditEventID(
    fhirCode: '122335',
  );

  /// value122336
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122336 = AuditEventID(
    fhirCode: '122336',
  );

  /// value122337
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122337 = AuditEventID(
    fhirCode: '122337',
  );

  /// value122339
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122339 = AuditEventID(
    fhirCode: '122339',
  );

  /// value122340
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122340 = AuditEventID(
    fhirCode: '122340',
  );

  /// value122341
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122341 = AuditEventID(
    fhirCode: '122341',
  );

  /// value122343
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122343 = AuditEventID(
    fhirCode: '122343',
  );

  /// value122344
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122344 = AuditEventID(
    fhirCode: '122344',
  );

  /// value122345
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122345 = AuditEventID(
    fhirCode: '122345',
  );

  /// value122346
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122346 = AuditEventID(
    fhirCode: '122346',
  );

  /// value122347
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122347 = AuditEventID(
    fhirCode: '122347',
  );

  /// value122348
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122348 = AuditEventID(
    fhirCode: '122348',
  );

  /// value122350
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122350 = AuditEventID(
    fhirCode: '122350',
  );

  /// value122351
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122351 = AuditEventID(
    fhirCode: '122351',
  );

  /// value122352
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122352 = AuditEventID(
    fhirCode: '122352',
  );

  /// value122354
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122354 = AuditEventID(
    fhirCode: '122354',
  );

  /// value122355
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122355 = AuditEventID(
    fhirCode: '122355',
  );

  /// value122356
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122356 = AuditEventID(
    fhirCode: '122356',
  );

  /// value122357
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122357 = AuditEventID(
    fhirCode: '122357',
  );

  /// value122360
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122360 = AuditEventID(
    fhirCode: '122360',
  );

  /// value122361
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122361 = AuditEventID(
    fhirCode: '122361',
  );

  /// value122363
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122363 = AuditEventID(
    fhirCode: '122363',
  );

  /// value122364
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122364 = AuditEventID(
    fhirCode: '122364',
  );

  /// value122367
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122367 = AuditEventID(
    fhirCode: '122367',
  );

  /// value122368
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122368 = AuditEventID(
    fhirCode: '122368',
  );

  /// value122369
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122369 = AuditEventID(
    fhirCode: '122369',
  );

  /// value122370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122370 = AuditEventID(
    fhirCode: '122370',
  );

  /// value122371
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122371 = AuditEventID(
    fhirCode: '122371',
  );

  /// value122372
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122372 = AuditEventID(
    fhirCode: '122372',
  );

  /// value122374
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122374 = AuditEventID(
    fhirCode: '122374',
  );

  /// value122375
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122375 = AuditEventID(
    fhirCode: '122375',
  );

  /// value122376
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122376 = AuditEventID(
    fhirCode: '122376',
  );

  /// value122380
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122380 = AuditEventID(
    fhirCode: '122380',
  );

  /// value122381
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122381 = AuditEventID(
    fhirCode: '122381',
  );

  /// value122382
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122382 = AuditEventID(
    fhirCode: '122382',
  );

  /// value122383
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122383 = AuditEventID(
    fhirCode: '122383',
  );

  /// value122384
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122384 = AuditEventID(
    fhirCode: '122384',
  );

  /// value122385
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122385 = AuditEventID(
    fhirCode: '122385',
  );

  /// value122386
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122386 = AuditEventID(
    fhirCode: '122386',
  );

  /// value122387
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122387 = AuditEventID(
    fhirCode: '122387',
  );

  /// value122388
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122388 = AuditEventID(
    fhirCode: '122388',
  );

  /// value122389
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122389 = AuditEventID(
    fhirCode: '122389',
  );

  /// value122390
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122390 = AuditEventID(
    fhirCode: '122390',
  );

  /// value122391
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122391 = AuditEventID(
    fhirCode: '122391',
  );

  /// value122393
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122393 = AuditEventID(
    fhirCode: '122393',
  );

  /// value122394
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122394 = AuditEventID(
    fhirCode: '122394',
  );

  /// value122395
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122395 = AuditEventID(
    fhirCode: '122395',
  );

  /// value122398
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122398 = AuditEventID(
    fhirCode: '122398',
  );

  /// value122399
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122399 = AuditEventID(
    fhirCode: '122399',
  );

  /// value122400
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122400 = AuditEventID(
    fhirCode: '122400',
  );

  /// value122401
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122401 = AuditEventID(
    fhirCode: '122401',
  );

  /// value122402
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122402 = AuditEventID(
    fhirCode: '122402',
  );

  /// value122403
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122403 = AuditEventID(
    fhirCode: '122403',
  );

  /// value122404
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122404 = AuditEventID(
    fhirCode: '122404',
  );

  /// value122405
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122405 = AuditEventID(
    fhirCode: '122405',
  );

  /// value122406
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122406 = AuditEventID(
    fhirCode: '122406',
  );

  /// value122407
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122407 = AuditEventID(
    fhirCode: '122407',
  );

  /// value122408
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122408 = AuditEventID(
    fhirCode: '122408',
  );

  /// value122410
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122410 = AuditEventID(
    fhirCode: '122410',
  );

  /// value122411
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122411 = AuditEventID(
    fhirCode: '122411',
  );

  /// value122417
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122417 = AuditEventID(
    fhirCode: '122417',
  );

  /// value122421
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122421 = AuditEventID(
    fhirCode: '122421',
  );

  /// value122422
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122422 = AuditEventID(
    fhirCode: '122422',
  );

  /// value122423
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122423 = AuditEventID(
    fhirCode: '122423',
  );

  /// value122428
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122428 = AuditEventID(
    fhirCode: '122428',
  );

  /// value122429
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122429 = AuditEventID(
    fhirCode: '122429',
  );

  /// value122430
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122430 = AuditEventID(
    fhirCode: '122430',
  );

  /// value122431
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122431 = AuditEventID(
    fhirCode: '122431',
  );

  /// value122432
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122432 = AuditEventID(
    fhirCode: '122432',
  );

  /// value122433
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122433 = AuditEventID(
    fhirCode: '122433',
  );

  /// value122434
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122434 = AuditEventID(
    fhirCode: '122434',
  );

  /// value122435
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122435 = AuditEventID(
    fhirCode: '122435',
  );

  /// value122438
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122438 = AuditEventID(
    fhirCode: '122438',
  );

  /// value122445
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122445 = AuditEventID(
    fhirCode: '122445',
  );

  /// value122446
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122446 = AuditEventID(
    fhirCode: '122446',
  );

  /// value122447
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122447 = AuditEventID(
    fhirCode: '122447',
  );

  /// value122448
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122448 = AuditEventID(
    fhirCode: '122448',
  );

  /// value122449
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122449 = AuditEventID(
    fhirCode: '122449',
  );

  /// value122450
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122450 = AuditEventID(
    fhirCode: '122450',
  );

  /// value122451
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122451 = AuditEventID(
    fhirCode: '122451',
  );

  /// value122452
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122452 = AuditEventID(
    fhirCode: '122452',
  );

  /// value122453
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122453 = AuditEventID(
    fhirCode: '122453',
  );

  /// value122459
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122459 = AuditEventID(
    fhirCode: '122459',
  );

  /// value122461
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122461 = AuditEventID(
    fhirCode: '122461',
  );

  /// value122464
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122464 = AuditEventID(
    fhirCode: '122464',
  );

  /// value122465
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122465 = AuditEventID(
    fhirCode: '122465',
  );

  /// value122466
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122466 = AuditEventID(
    fhirCode: '122466',
  );

  /// value122467
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122467 = AuditEventID(
    fhirCode: '122467',
  );

  /// value122468
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122468 = AuditEventID(
    fhirCode: '122468',
  );

  /// value122469
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122469 = AuditEventID(
    fhirCode: '122469',
  );

  /// value122470
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122470 = AuditEventID(
    fhirCode: '122470',
  );

  /// value122471
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122471 = AuditEventID(
    fhirCode: '122471',
  );

  /// value122472
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122472 = AuditEventID(
    fhirCode: '122472',
  );

  /// value122473
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122473 = AuditEventID(
    fhirCode: '122473',
  );

  /// value122474
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122474 = AuditEventID(
    fhirCode: '122474',
  );

  /// value122475
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122475 = AuditEventID(
    fhirCode: '122475',
  );

  /// value122476
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122476 = AuditEventID(
    fhirCode: '122476',
  );

  /// value122477
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122477 = AuditEventID(
    fhirCode: '122477',
  );

  /// value122480
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122480 = AuditEventID(
    fhirCode: '122480',
  );

  /// value122481
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122481 = AuditEventID(
    fhirCode: '122481',
  );

  /// value122482
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122482 = AuditEventID(
    fhirCode: '122482',
  );

  /// value122485
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122485 = AuditEventID(
    fhirCode: '122485',
  );

  /// value122486
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122486 = AuditEventID(
    fhirCode: '122486',
  );

  /// value122487
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122487 = AuditEventID(
    fhirCode: '122487',
  );

  /// value122488
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122488 = AuditEventID(
    fhirCode: '122488',
  );

  /// value122489
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122489 = AuditEventID(
    fhirCode: '122489',
  );

  /// value122490
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122490 = AuditEventID(
    fhirCode: '122490',
  );

  /// value122491
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122491 = AuditEventID(
    fhirCode: '122491',
  );

  /// value122493
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122493 = AuditEventID(
    fhirCode: '122493',
  );

  /// value122495
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122495 = AuditEventID(
    fhirCode: '122495',
  );

  /// value122496
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122496 = AuditEventID(
    fhirCode: '122496',
  );

  /// value122497
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122497 = AuditEventID(
    fhirCode: '122497',
  );

  /// value122498
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122498 = AuditEventID(
    fhirCode: '122498',
  );

  /// value122499
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122499 = AuditEventID(
    fhirCode: '122499',
  );

  /// value122501
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122501 = AuditEventID(
    fhirCode: '122501',
  );

  /// value122502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122502 = AuditEventID(
    fhirCode: '122502',
  );

  /// value122503
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122503 = AuditEventID(
    fhirCode: '122503',
  );

  /// value122505
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122505 = AuditEventID(
    fhirCode: '122505',
  );

  /// value122507
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122507 = AuditEventID(
    fhirCode: '122507',
  );

  /// value122508
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122508 = AuditEventID(
    fhirCode: '122508',
  );

  /// value122509
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122509 = AuditEventID(
    fhirCode: '122509',
  );

  /// value122510
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122510 = AuditEventID(
    fhirCode: '122510',
  );

  /// value122511
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122511 = AuditEventID(
    fhirCode: '122511',
  );

  /// value122516
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122516 = AuditEventID(
    fhirCode: '122516',
  );

  /// value122517
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122517 = AuditEventID(
    fhirCode: '122517',
  );

  /// value122528
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122528 = AuditEventID(
    fhirCode: '122528',
  );

  /// value122529
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122529 = AuditEventID(
    fhirCode: '122529',
  );

  /// value122542
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122542 = AuditEventID(
    fhirCode: '122542',
  );

  /// value122544
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122544 = AuditEventID(
    fhirCode: '122544',
  );

  /// value122545
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122545 = AuditEventID(
    fhirCode: '122545',
  );

  /// value122546
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122546 = AuditEventID(
    fhirCode: '122546',
  );

  /// value122547
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122547 = AuditEventID(
    fhirCode: '122547',
  );

  /// value122548
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122548 = AuditEventID(
    fhirCode: '122548',
  );

  /// value122549
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122549 = AuditEventID(
    fhirCode: '122549',
  );

  /// value122550
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122550 = AuditEventID(
    fhirCode: '122550',
  );

  /// value122551
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122551 = AuditEventID(
    fhirCode: '122551',
  );

  /// value122554
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122554 = AuditEventID(
    fhirCode: '122554',
  );

  /// value122555
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122555 = AuditEventID(
    fhirCode: '122555',
  );

  /// value122558
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122558 = AuditEventID(
    fhirCode: '122558',
  );

  /// value122559
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122559 = AuditEventID(
    fhirCode: '122559',
  );

  /// value122560
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122560 = AuditEventID(
    fhirCode: '122560',
  );

  /// value122562
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122562 = AuditEventID(
    fhirCode: '122562',
  );

  /// value122563
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122563 = AuditEventID(
    fhirCode: '122563',
  );

  /// value122564
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122564 = AuditEventID(
    fhirCode: '122564',
  );

  /// value122565
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122565 = AuditEventID(
    fhirCode: '122565',
  );

  /// value122566
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122566 = AuditEventID(
    fhirCode: '122566',
  );

  /// value122572
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122572 = AuditEventID(
    fhirCode: '122572',
  );

  /// value122574
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122574 = AuditEventID(
    fhirCode: '122574',
  );

  /// value122575
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122575 = AuditEventID(
    fhirCode: '122575',
  );

  /// value122582
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122582 = AuditEventID(
    fhirCode: '122582',
  );

  /// value122600
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122600 = AuditEventID(
    fhirCode: '122600',
  );

  /// value122601
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122601 = AuditEventID(
    fhirCode: '122601',
  );

  /// value122602
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122602 = AuditEventID(
    fhirCode: '122602',
  );

  /// value122603
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122603 = AuditEventID(
    fhirCode: '122603',
  );

  /// value122604
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122604 = AuditEventID(
    fhirCode: '122604',
  );

  /// value122605
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122605 = AuditEventID(
    fhirCode: '122605',
  );

  /// value122606
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122606 = AuditEventID(
    fhirCode: '122606',
  );

  /// value122607
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122607 = AuditEventID(
    fhirCode: '122607',
  );

  /// value122608
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122608 = AuditEventID(
    fhirCode: '122608',
  );

  /// value122609
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122609 = AuditEventID(
    fhirCode: '122609',
  );

  /// value122611
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122611 = AuditEventID(
    fhirCode: '122611',
  );

  /// value122612
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122612 = AuditEventID(
    fhirCode: '122612',
  );

  /// value122616
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122616 = AuditEventID(
    fhirCode: '122616',
  );

  /// value122617
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122617 = AuditEventID(
    fhirCode: '122617',
  );

  /// value122618
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122618 = AuditEventID(
    fhirCode: '122618',
  );

  /// value122619
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122619 = AuditEventID(
    fhirCode: '122619',
  );

  /// value122620
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122620 = AuditEventID(
    fhirCode: '122620',
  );

  /// value122621
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122621 = AuditEventID(
    fhirCode: '122621',
  );

  /// value122624
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122624 = AuditEventID(
    fhirCode: '122624',
  );

  /// value122627
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122627 = AuditEventID(
    fhirCode: '122627',
  );

  /// value122628
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122628 = AuditEventID(
    fhirCode: '122628',
  );

  /// value122631
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122631 = AuditEventID(
    fhirCode: '122631',
  );

  /// value122633
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122633 = AuditEventID(
    fhirCode: '122633',
  );

  /// value122634
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122634 = AuditEventID(
    fhirCode: '122634',
  );

  /// value122635
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122635 = AuditEventID(
    fhirCode: '122635',
  );

  /// value122636
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122636 = AuditEventID(
    fhirCode: '122636',
  );

  /// value122637
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122637 = AuditEventID(
    fhirCode: '122637',
  );

  /// value122638
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122638 = AuditEventID(
    fhirCode: '122638',
  );

  /// value122639
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122639 = AuditEventID(
    fhirCode: '122639',
  );

  /// value122640
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122640 = AuditEventID(
    fhirCode: '122640',
  );

  /// value122642
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122642 = AuditEventID(
    fhirCode: '122642',
  );

  /// value122643
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122643 = AuditEventID(
    fhirCode: '122643',
  );

  /// value122645
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122645 = AuditEventID(
    fhirCode: '122645',
  );

  /// value122650
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122650 = AuditEventID(
    fhirCode: '122650',
  );

  /// value122651
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122651 = AuditEventID(
    fhirCode: '122651',
  );

  /// value122652
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122652 = AuditEventID(
    fhirCode: '122652',
  );

  /// value122655
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122655 = AuditEventID(
    fhirCode: '122655',
  );

  /// value122656
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122656 = AuditEventID(
    fhirCode: '122656',
  );

  /// value122657
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122657 = AuditEventID(
    fhirCode: '122657',
  );

  /// value122658
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122658 = AuditEventID(
    fhirCode: '122658',
  );

  /// value122659
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122659 = AuditEventID(
    fhirCode: '122659',
  );

  /// value122660
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122660 = AuditEventID(
    fhirCode: '122660',
  );

  /// value122661
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122661 = AuditEventID(
    fhirCode: '122661',
  );

  /// value122664
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122664 = AuditEventID(
    fhirCode: '122664',
  );

  /// value122665
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122665 = AuditEventID(
    fhirCode: '122665',
  );

  /// value122666
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122666 = AuditEventID(
    fhirCode: '122666',
  );

  /// value122667
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122667 = AuditEventID(
    fhirCode: '122667',
  );

  /// value122668
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122668 = AuditEventID(
    fhirCode: '122668',
  );

  /// value122670
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122670 = AuditEventID(
    fhirCode: '122670',
  );

  /// value122675
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122675 = AuditEventID(
    fhirCode: '122675',
  );

  /// value122680
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122680 = AuditEventID(
    fhirCode: '122680',
  );

  /// value122683
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122683 = AuditEventID(
    fhirCode: '122683',
  );

  /// value122684
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122684 = AuditEventID(
    fhirCode: '122684',
  );

  /// value122685
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122685 = AuditEventID(
    fhirCode: '122685',
  );

  /// value122686
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122686 = AuditEventID(
    fhirCode: '122686',
  );

  /// value122687
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122687 = AuditEventID(
    fhirCode: '122687',
  );

  /// value122698
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122698 = AuditEventID(
    fhirCode: '122698',
  );

  /// value122699
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122699 = AuditEventID(
    fhirCode: '122699',
  );

  /// value122700
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122700 = AuditEventID(
    fhirCode: '122700',
  );

  /// value122701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122701 = AuditEventID(
    fhirCode: '122701',
  );

  /// value122702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122702 = AuditEventID(
    fhirCode: '122702',
  );

  /// value122703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122703 = AuditEventID(
    fhirCode: '122703',
  );

  /// value122704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122704 = AuditEventID(
    fhirCode: '122704',
  );

  /// value122705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122705 = AuditEventID(
    fhirCode: '122705',
  );

  /// value122706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122706 = AuditEventID(
    fhirCode: '122706',
  );

  /// value122707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122707 = AuditEventID(
    fhirCode: '122707',
  );

  /// value122708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122708 = AuditEventID(
    fhirCode: '122708',
  );

  /// value122709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122709 = AuditEventID(
    fhirCode: '122709',
  );

  /// value122710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122710 = AuditEventID(
    fhirCode: '122710',
  );

  /// value122711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122711 = AuditEventID(
    fhirCode: '122711',
  );

  /// value122712
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122712 = AuditEventID(
    fhirCode: '122712',
  );

  /// value122713
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122713 = AuditEventID(
    fhirCode: '122713',
  );

  /// value122715
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122715 = AuditEventID(
    fhirCode: '122715',
  );

  /// value122716
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122716 = AuditEventID(
    fhirCode: '122716',
  );

  /// value122717
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122717 = AuditEventID(
    fhirCode: '122717',
  );

  /// value122718
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122718 = AuditEventID(
    fhirCode: '122718',
  );

  /// value122720
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122720 = AuditEventID(
    fhirCode: '122720',
  );

  /// value122721
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122721 = AuditEventID(
    fhirCode: '122721',
  );

  /// value122726
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122726 = AuditEventID(
    fhirCode: '122726',
  );

  /// value122727
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122727 = AuditEventID(
    fhirCode: '122727',
  );

  /// value122728
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122728 = AuditEventID(
    fhirCode: '122728',
  );

  /// value122729
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122729 = AuditEventID(
    fhirCode: '122729',
  );

  /// value122730
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122730 = AuditEventID(
    fhirCode: '122730',
  );

  /// value122731
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122731 = AuditEventID(
    fhirCode: '122731',
  );

  /// value122732
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122732 = AuditEventID(
    fhirCode: '122732',
  );

  /// value122733
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122733 = AuditEventID(
    fhirCode: '122733',
  );

  /// value122734
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122734 = AuditEventID(
    fhirCode: '122734',
  );

  /// value122735
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122735 = AuditEventID(
    fhirCode: '122735',
  );

  /// value122739
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122739 = AuditEventID(
    fhirCode: '122739',
  );

  /// value122740
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122740 = AuditEventID(
    fhirCode: '122740',
  );

  /// value122741
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122741 = AuditEventID(
    fhirCode: '122741',
  );

  /// value122742
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122742 = AuditEventID(
    fhirCode: '122742',
  );

  /// value122743
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122743 = AuditEventID(
    fhirCode: '122743',
  );

  /// value122744
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122744 = AuditEventID(
    fhirCode: '122744',
  );

  /// value122745
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122745 = AuditEventID(
    fhirCode: '122745',
  );

  /// value122748
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122748 = AuditEventID(
    fhirCode: '122748',
  );

  /// value122750
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122750 = AuditEventID(
    fhirCode: '122750',
  );

  /// value122751
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122751 = AuditEventID(
    fhirCode: '122751',
  );

  /// value122752
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122752 = AuditEventID(
    fhirCode: '122752',
  );

  /// value122753
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122753 = AuditEventID(
    fhirCode: '122753',
  );

  /// value122755
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122755 = AuditEventID(
    fhirCode: '122755',
  );

  /// value122756
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122756 = AuditEventID(
    fhirCode: '122756',
  );

  /// value122757
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122757 = AuditEventID(
    fhirCode: '122757',
  );

  /// value122758
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122758 = AuditEventID(
    fhirCode: '122758',
  );

  /// value122759
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122759 = AuditEventID(
    fhirCode: '122759',
  );

  /// value122760
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122760 = AuditEventID(
    fhirCode: '122760',
  );

  /// value122762
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122762 = AuditEventID(
    fhirCode: '122762',
  );

  /// value122764
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122764 = AuditEventID(
    fhirCode: '122764',
  );

  /// value122768
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122768 = AuditEventID(
    fhirCode: '122768',
  );

  /// value122769
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122769 = AuditEventID(
    fhirCode: '122769',
  );

  /// value122770
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122770 = AuditEventID(
    fhirCode: '122770',
  );

  /// value122771
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122771 = AuditEventID(
    fhirCode: '122771',
  );

  /// value122772
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122772 = AuditEventID(
    fhirCode: '122772',
  );

  /// value122773
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122773 = AuditEventID(
    fhirCode: '122773',
  );

  /// value122775
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122775 = AuditEventID(
    fhirCode: '122775',
  );

  /// value122776
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122776 = AuditEventID(
    fhirCode: '122776',
  );

  /// value122781
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122781 = AuditEventID(
    fhirCode: '122781',
  );

  /// value122782
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122782 = AuditEventID(
    fhirCode: '122782',
  );

  /// value122783
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122783 = AuditEventID(
    fhirCode: '122783',
  );

  /// value122784
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122784 = AuditEventID(
    fhirCode: '122784',
  );

  /// value122785
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122785 = AuditEventID(
    fhirCode: '122785',
  );

  /// value122791
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122791 = AuditEventID(
    fhirCode: '122791',
  );

  /// value122792
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122792 = AuditEventID(
    fhirCode: '122792',
  );

  /// value122793
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122793 = AuditEventID(
    fhirCode: '122793',
  );

  /// value122795
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122795 = AuditEventID(
    fhirCode: '122795',
  );

  /// value122796
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122796 = AuditEventID(
    fhirCode: '122796',
  );

  /// value122797
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122797 = AuditEventID(
    fhirCode: '122797',
  );

  /// value122799
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value122799 = AuditEventID(
    fhirCode: '122799',
  );

  /// value123001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value123001 = AuditEventID(
    fhirCode: '123001',
  );

  /// value123003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value123003 = AuditEventID(
    fhirCode: '123003',
  );

  /// value123004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value123004 = AuditEventID(
    fhirCode: '123004',
  );

  /// value123005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value123005 = AuditEventID(
    fhirCode: '123005',
  );

  /// value123006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value123006 = AuditEventID(
    fhirCode: '123006',
  );

  /// value123007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value123007 = AuditEventID(
    fhirCode: '123007',
  );

  /// value123009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value123009 = AuditEventID(
    fhirCode: '123009',
  );

  /// value123010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value123010 = AuditEventID(
    fhirCode: '123010',
  );

  /// value123011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value123011 = AuditEventID(
    fhirCode: '123011',
  );

  /// value123012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value123012 = AuditEventID(
    fhirCode: '123012',
  );

  /// value123014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value123014 = AuditEventID(
    fhirCode: '123014',
  );

  /// value123015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value123015 = AuditEventID(
    fhirCode: '123015',
  );

  /// value123016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value123016 = AuditEventID(
    fhirCode: '123016',
  );

  /// value123019
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value123019 = AuditEventID(
    fhirCode: '123019',
  );

  /// value123101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value123101 = AuditEventID(
    fhirCode: '123101',
  );

  /// value123102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value123102 = AuditEventID(
    fhirCode: '123102',
  );

  /// value123103
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value123103 = AuditEventID(
    fhirCode: '123103',
  );

  /// value123104
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value123104 = AuditEventID(
    fhirCode: '123104',
  );

  /// value123105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value123105 = AuditEventID(
    fhirCode: '123105',
  );

  /// value123106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value123106 = AuditEventID(
    fhirCode: '123106',
  );

  /// value123107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value123107 = AuditEventID(
    fhirCode: '123107',
  );

  /// value123108
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value123108 = AuditEventID(
    fhirCode: '123108',
  );

  /// value123109
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value123109 = AuditEventID(
    fhirCode: '123109',
  );

  /// value123110
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value123110 = AuditEventID(
    fhirCode: '123110',
  );

  /// value123111
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value123111 = AuditEventID(
    fhirCode: '123111',
  );

  /// value125000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125000 = AuditEventID(
    fhirCode: '125000',
  );

  /// value125001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125001 = AuditEventID(
    fhirCode: '125001',
  );

  /// value125002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125002 = AuditEventID(
    fhirCode: '125002',
  );

  /// value125003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125003 = AuditEventID(
    fhirCode: '125003',
  );

  /// value125004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125004 = AuditEventID(
    fhirCode: '125004',
  );

  /// value125005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125005 = AuditEventID(
    fhirCode: '125005',
  );

  /// value125006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125006 = AuditEventID(
    fhirCode: '125006',
  );

  /// value125007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125007 = AuditEventID(
    fhirCode: '125007',
  );

  /// value125008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125008 = AuditEventID(
    fhirCode: '125008',
  );

  /// value125009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125009 = AuditEventID(
    fhirCode: '125009',
  );

  /// value125010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125010 = AuditEventID(
    fhirCode: '125010',
  );

  /// value125011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125011 = AuditEventID(
    fhirCode: '125011',
  );

  /// value125012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125012 = AuditEventID(
    fhirCode: '125012',
  );

  /// value125013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125013 = AuditEventID(
    fhirCode: '125013',
  );

  /// value125015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125015 = AuditEventID(
    fhirCode: '125015',
  );

  /// value125016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125016 = AuditEventID(
    fhirCode: '125016',
  );

  /// value125021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125021 = AuditEventID(
    fhirCode: '125021',
  );

  /// value125022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125022 = AuditEventID(
    fhirCode: '125022',
  );

  /// value125023
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125023 = AuditEventID(
    fhirCode: '125023',
  );

  /// value125024
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125024 = AuditEventID(
    fhirCode: '125024',
  );

  /// value125025
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125025 = AuditEventID(
    fhirCode: '125025',
  );

  /// value125030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125030 = AuditEventID(
    fhirCode: '125030',
  );

  /// value125031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125031 = AuditEventID(
    fhirCode: '125031',
  );

  /// value125032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125032 = AuditEventID(
    fhirCode: '125032',
  );

  /// value125033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125033 = AuditEventID(
    fhirCode: '125033',
  );

  /// value125034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125034 = AuditEventID(
    fhirCode: '125034',
  );

  /// value125035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125035 = AuditEventID(
    fhirCode: '125035',
  );

  /// value125036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125036 = AuditEventID(
    fhirCode: '125036',
  );

  /// value125037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125037 = AuditEventID(
    fhirCode: '125037',
  );

  /// value125038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125038 = AuditEventID(
    fhirCode: '125038',
  );

  /// value125040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125040 = AuditEventID(
    fhirCode: '125040',
  );

  /// value125041
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125041 = AuditEventID(
    fhirCode: '125041',
  );

  /// value125100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125100 = AuditEventID(
    fhirCode: '125100',
  );

  /// value125101
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125101 = AuditEventID(
    fhirCode: '125101',
  );

  /// value125102
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125102 = AuditEventID(
    fhirCode: '125102',
  );

  /// value125105
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125105 = AuditEventID(
    fhirCode: '125105',
  );

  /// value125106
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125106 = AuditEventID(
    fhirCode: '125106',
  );

  /// value125107
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125107 = AuditEventID(
    fhirCode: '125107',
  );

  /// value125195
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125195 = AuditEventID(
    fhirCode: '125195',
  );

  /// value125196
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125196 = AuditEventID(
    fhirCode: '125196',
  );

  /// value125197
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125197 = AuditEventID(
    fhirCode: '125197',
  );

  /// value125200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125200 = AuditEventID(
    fhirCode: '125200',
  );

  /// value125201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125201 = AuditEventID(
    fhirCode: '125201',
  );

  /// value125202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125202 = AuditEventID(
    fhirCode: '125202',
  );

  /// value125203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125203 = AuditEventID(
    fhirCode: '125203',
  );

  /// value125204
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125204 = AuditEventID(
    fhirCode: '125204',
  );

  /// value125205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125205 = AuditEventID(
    fhirCode: '125205',
  );

  /// value125206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125206 = AuditEventID(
    fhirCode: '125206',
  );

  /// value125207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125207 = AuditEventID(
    fhirCode: '125207',
  );

  /// value125208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125208 = AuditEventID(
    fhirCode: '125208',
  );

  /// value125209
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125209 = AuditEventID(
    fhirCode: '125209',
  );

  /// value125210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125210 = AuditEventID(
    fhirCode: '125210',
  );

  /// value125211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125211 = AuditEventID(
    fhirCode: '125211',
  );

  /// value125212
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125212 = AuditEventID(
    fhirCode: '125212',
  );

  /// value125213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125213 = AuditEventID(
    fhirCode: '125213',
  );

  /// value125214
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125214 = AuditEventID(
    fhirCode: '125214',
  );

  /// value125215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125215 = AuditEventID(
    fhirCode: '125215',
  );

  /// value125216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125216 = AuditEventID(
    fhirCode: '125216',
  );

  /// value125217
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125217 = AuditEventID(
    fhirCode: '125217',
  );

  /// value125218
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125218 = AuditEventID(
    fhirCode: '125218',
  );

  /// value125219
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125219 = AuditEventID(
    fhirCode: '125219',
  );

  /// value125220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125220 = AuditEventID(
    fhirCode: '125220',
  );

  /// value125221
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125221 = AuditEventID(
    fhirCode: '125221',
  );

  /// value125222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125222 = AuditEventID(
    fhirCode: '125222',
  );

  /// value125223
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125223 = AuditEventID(
    fhirCode: '125223',
  );

  /// value125224
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125224 = AuditEventID(
    fhirCode: '125224',
  );

  /// value125225
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125225 = AuditEventID(
    fhirCode: '125225',
  );

  /// value125226
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125226 = AuditEventID(
    fhirCode: '125226',
  );

  /// value125227
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125227 = AuditEventID(
    fhirCode: '125227',
  );

  /// value125228
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125228 = AuditEventID(
    fhirCode: '125228',
  );

  /// value125230
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125230 = AuditEventID(
    fhirCode: '125230',
  );

  /// value125231
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125231 = AuditEventID(
    fhirCode: '125231',
  );

  /// value125233
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125233 = AuditEventID(
    fhirCode: '125233',
  );

  /// value125234
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125234 = AuditEventID(
    fhirCode: '125234',
  );

  /// value125235
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125235 = AuditEventID(
    fhirCode: '125235',
  );

  /// value125236
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125236 = AuditEventID(
    fhirCode: '125236',
  );

  /// value125237
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125237 = AuditEventID(
    fhirCode: '125237',
  );

  /// value125238
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125238 = AuditEventID(
    fhirCode: '125238',
  );

  /// value125239
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125239 = AuditEventID(
    fhirCode: '125239',
  );

  /// value125240
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125240 = AuditEventID(
    fhirCode: '125240',
  );

  /// value125241
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125241 = AuditEventID(
    fhirCode: '125241',
  );

  /// value125242
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125242 = AuditEventID(
    fhirCode: '125242',
  );

  /// value125251
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125251 = AuditEventID(
    fhirCode: '125251',
  );

  /// value125252
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125252 = AuditEventID(
    fhirCode: '125252',
  );

  /// value125253
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125253 = AuditEventID(
    fhirCode: '125253',
  );

  /// value125254
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125254 = AuditEventID(
    fhirCode: '125254',
  );

  /// value125255
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125255 = AuditEventID(
    fhirCode: '125255',
  );

  /// value125256
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125256 = AuditEventID(
    fhirCode: '125256',
  );

  /// value125257
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125257 = AuditEventID(
    fhirCode: '125257',
  );

  /// value125258
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125258 = AuditEventID(
    fhirCode: '125258',
  );

  /// value125259
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125259 = AuditEventID(
    fhirCode: '125259',
  );

  /// value125261
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125261 = AuditEventID(
    fhirCode: '125261',
  );

  /// value125262
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125262 = AuditEventID(
    fhirCode: '125262',
  );

  /// value125263
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125263 = AuditEventID(
    fhirCode: '125263',
  );

  /// value125264
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125264 = AuditEventID(
    fhirCode: '125264',
  );

  /// value125265
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125265 = AuditEventID(
    fhirCode: '125265',
  );

  /// value125270
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125270 = AuditEventID(
    fhirCode: '125270',
  );

  /// value125271
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125271 = AuditEventID(
    fhirCode: '125271',
  );

  /// value125272
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125272 = AuditEventID(
    fhirCode: '125272',
  );

  /// value125273
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125273 = AuditEventID(
    fhirCode: '125273',
  );

  /// value125901
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125901 = AuditEventID(
    fhirCode: '125901',
  );

  /// value125902
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125902 = AuditEventID(
    fhirCode: '125902',
  );

  /// value125903
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125903 = AuditEventID(
    fhirCode: '125903',
  );

  /// value125904
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125904 = AuditEventID(
    fhirCode: '125904',
  );

  /// value125905
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125905 = AuditEventID(
    fhirCode: '125905',
  );

  /// value125906
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125906 = AuditEventID(
    fhirCode: '125906',
  );

  /// value125907
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125907 = AuditEventID(
    fhirCode: '125907',
  );

  /// value125908
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value125908 = AuditEventID(
    fhirCode: '125908',
  );

  /// value126000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126000 = AuditEventID(
    fhirCode: '126000',
  );

  /// value126001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126001 = AuditEventID(
    fhirCode: '126001',
  );

  /// value126002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126002 = AuditEventID(
    fhirCode: '126002',
  );

  /// value126003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126003 = AuditEventID(
    fhirCode: '126003',
  );

  /// value126010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126010 = AuditEventID(
    fhirCode: '126010',
  );

  /// value126011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126011 = AuditEventID(
    fhirCode: '126011',
  );

  /// value126020
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126020 = AuditEventID(
    fhirCode: '126020',
  );

  /// value126021
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126021 = AuditEventID(
    fhirCode: '126021',
  );

  /// value126022
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126022 = AuditEventID(
    fhirCode: '126022',
  );

  /// value126030
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126030 = AuditEventID(
    fhirCode: '126030',
  );

  /// value126031
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126031 = AuditEventID(
    fhirCode: '126031',
  );

  /// value126032
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126032 = AuditEventID(
    fhirCode: '126032',
  );

  /// value126033
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126033 = AuditEventID(
    fhirCode: '126033',
  );

  /// value126034
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126034 = AuditEventID(
    fhirCode: '126034',
  );

  /// value126035
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126035 = AuditEventID(
    fhirCode: '126035',
  );

  /// value126036
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126036 = AuditEventID(
    fhirCode: '126036',
  );

  /// value126037
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126037 = AuditEventID(
    fhirCode: '126037',
  );

  /// value126038
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126038 = AuditEventID(
    fhirCode: '126038',
  );

  /// value126039
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126039 = AuditEventID(
    fhirCode: '126039',
  );

  /// value126040
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126040 = AuditEventID(
    fhirCode: '126040',
  );

  /// value126050
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126050 = AuditEventID(
    fhirCode: '126050',
  );

  /// value126051
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126051 = AuditEventID(
    fhirCode: '126051',
  );

  /// value126052
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126052 = AuditEventID(
    fhirCode: '126052',
  );

  /// value126060
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126060 = AuditEventID(
    fhirCode: '126060',
  );

  /// value126061
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126061 = AuditEventID(
    fhirCode: '126061',
  );

  /// value126062
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126062 = AuditEventID(
    fhirCode: '126062',
  );

  /// value126063
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126063 = AuditEventID(
    fhirCode: '126063',
  );

  /// value126064
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126064 = AuditEventID(
    fhirCode: '126064',
  );

  /// value126065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126065 = AuditEventID(
    fhirCode: '126065',
  );

  /// value126066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126066 = AuditEventID(
    fhirCode: '126066',
  );

  /// value126067
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126067 = AuditEventID(
    fhirCode: '126067',
  );

  /// value126070
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126070 = AuditEventID(
    fhirCode: '126070',
  );

  /// value126071
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126071 = AuditEventID(
    fhirCode: '126071',
  );

  /// value126072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126072 = AuditEventID(
    fhirCode: '126072',
  );

  /// value126073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126073 = AuditEventID(
    fhirCode: '126073',
  );

  /// value126074
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126074 = AuditEventID(
    fhirCode: '126074',
  );

  /// value126075
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126075 = AuditEventID(
    fhirCode: '126075',
  );

  /// value126080
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126080 = AuditEventID(
    fhirCode: '126080',
  );

  /// value126081
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126081 = AuditEventID(
    fhirCode: '126081',
  );

  /// value126100
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126100 = AuditEventID(
    fhirCode: '126100',
  );

  /// value126200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126200 = AuditEventID(
    fhirCode: '126200',
  );

  /// value126201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126201 = AuditEventID(
    fhirCode: '126201',
  );

  /// value126202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126202 = AuditEventID(
    fhirCode: '126202',
  );

  /// value126203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126203 = AuditEventID(
    fhirCode: '126203',
  );

  /// value126220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126220 = AuditEventID(
    fhirCode: '126220',
  );

  /// value126300
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126300 = AuditEventID(
    fhirCode: '126300',
  );

  /// value126301
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126301 = AuditEventID(
    fhirCode: '126301',
  );

  /// value126302
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126302 = AuditEventID(
    fhirCode: '126302',
  );

  /// value126303
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126303 = AuditEventID(
    fhirCode: '126303',
  );

  /// value126310
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126310 = AuditEventID(
    fhirCode: '126310',
  );

  /// value126311
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126311 = AuditEventID(
    fhirCode: '126311',
  );

  /// value126312
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126312 = AuditEventID(
    fhirCode: '126312',
  );

  /// value126313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126313 = AuditEventID(
    fhirCode: '126313',
  );

  /// value126314
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126314 = AuditEventID(
    fhirCode: '126314',
  );

  /// value126320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126320 = AuditEventID(
    fhirCode: '126320',
  );

  /// value126321
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126321 = AuditEventID(
    fhirCode: '126321',
  );

  /// value126322
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126322 = AuditEventID(
    fhirCode: '126322',
  );

  /// value126330
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126330 = AuditEventID(
    fhirCode: '126330',
  );

  /// value126331
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126331 = AuditEventID(
    fhirCode: '126331',
  );

  /// value126340
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126340 = AuditEventID(
    fhirCode: '126340',
  );

  /// value126341
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126341 = AuditEventID(
    fhirCode: '126341',
  );

  /// value126342
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126342 = AuditEventID(
    fhirCode: '126342',
  );

  /// value126343
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126343 = AuditEventID(
    fhirCode: '126343',
  );

  /// value126344
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126344 = AuditEventID(
    fhirCode: '126344',
  );

  /// value126350
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126350 = AuditEventID(
    fhirCode: '126350',
  );

  /// value126351
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126351 = AuditEventID(
    fhirCode: '126351',
  );

  /// value126352
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126352 = AuditEventID(
    fhirCode: '126352',
  );

  /// value126353
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126353 = AuditEventID(
    fhirCode: '126353',
  );

  /// value126360
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126360 = AuditEventID(
    fhirCode: '126360',
  );

  /// value126361
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126361 = AuditEventID(
    fhirCode: '126361',
  );

  /// value126362
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126362 = AuditEventID(
    fhirCode: '126362',
  );

  /// value126363
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126363 = AuditEventID(
    fhirCode: '126363',
  );

  /// value126364
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126364 = AuditEventID(
    fhirCode: '126364',
  );

  /// value126370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126370 = AuditEventID(
    fhirCode: '126370',
  );

  /// value126371
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126371 = AuditEventID(
    fhirCode: '126371',
  );

  /// value126372
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126372 = AuditEventID(
    fhirCode: '126372',
  );

  /// value126373
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126373 = AuditEventID(
    fhirCode: '126373',
  );

  /// value126374
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126374 = AuditEventID(
    fhirCode: '126374',
  );

  /// value126375
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126375 = AuditEventID(
    fhirCode: '126375',
  );

  /// value126376
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126376 = AuditEventID(
    fhirCode: '126376',
  );

  /// value126377
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126377 = AuditEventID(
    fhirCode: '126377',
  );

  /// value126380
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126380 = AuditEventID(
    fhirCode: '126380',
  );

  /// value126390
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126390 = AuditEventID(
    fhirCode: '126390',
  );

  /// value126391
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126391 = AuditEventID(
    fhirCode: '126391',
  );

  /// value126392
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126392 = AuditEventID(
    fhirCode: '126392',
  );

  /// value126393
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126393 = AuditEventID(
    fhirCode: '126393',
  );

  /// value126394
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126394 = AuditEventID(
    fhirCode: '126394',
  );

  /// value126400
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126400 = AuditEventID(
    fhirCode: '126400',
  );

  /// value126401
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126401 = AuditEventID(
    fhirCode: '126401',
  );

  /// value126402
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126402 = AuditEventID(
    fhirCode: '126402',
  );

  /// value126403
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126403 = AuditEventID(
    fhirCode: '126403',
  );

  /// value126404
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126404 = AuditEventID(
    fhirCode: '126404',
  );

  /// value126410
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126410 = AuditEventID(
    fhirCode: '126410',
  );

  /// value126411
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126411 = AuditEventID(
    fhirCode: '126411',
  );

  /// value126412
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126412 = AuditEventID(
    fhirCode: '126412',
  );

  /// value126413
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126413 = AuditEventID(
    fhirCode: '126413',
  );

  /// value126500
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126500 = AuditEventID(
    fhirCode: '126500',
  );

  /// value126501
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126501 = AuditEventID(
    fhirCode: '126501',
  );

  /// value126502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126502 = AuditEventID(
    fhirCode: '126502',
  );

  /// value126503
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126503 = AuditEventID(
    fhirCode: '126503',
  );

  /// value126510
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126510 = AuditEventID(
    fhirCode: '126510',
  );

  /// value126511
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126511 = AuditEventID(
    fhirCode: '126511',
  );

  /// value126512
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126512 = AuditEventID(
    fhirCode: '126512',
  );

  /// value126513
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126513 = AuditEventID(
    fhirCode: '126513',
  );

  /// value126514
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126514 = AuditEventID(
    fhirCode: '126514',
  );

  /// value126515
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126515 = AuditEventID(
    fhirCode: '126515',
  );

  /// value126516
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126516 = AuditEventID(
    fhirCode: '126516',
  );

  /// value126517
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126517 = AuditEventID(
    fhirCode: '126517',
  );

  /// value126518
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126518 = AuditEventID(
    fhirCode: '126518',
  );

  /// value126519
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126519 = AuditEventID(
    fhirCode: '126519',
  );

  /// value126520
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126520 = AuditEventID(
    fhirCode: '126520',
  );

  /// value126600
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126600 = AuditEventID(
    fhirCode: '126600',
  );

  /// value126601
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126601 = AuditEventID(
    fhirCode: '126601',
  );

  /// value126602
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126602 = AuditEventID(
    fhirCode: '126602',
  );

  /// value126603
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126603 = AuditEventID(
    fhirCode: '126603',
  );

  /// value126604
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126604 = AuditEventID(
    fhirCode: '126604',
  );

  /// value126605
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126605 = AuditEventID(
    fhirCode: '126605',
  );

  /// value126606
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126606 = AuditEventID(
    fhirCode: '126606',
  );

  /// value126700
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126700 = AuditEventID(
    fhirCode: '126700',
  );

  /// value126701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126701 = AuditEventID(
    fhirCode: '126701',
  );

  /// value126702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126702 = AuditEventID(
    fhirCode: '126702',
  );

  /// value126703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126703 = AuditEventID(
    fhirCode: '126703',
  );

  /// value126704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126704 = AuditEventID(
    fhirCode: '126704',
  );

  /// value126705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126705 = AuditEventID(
    fhirCode: '126705',
  );

  /// value126706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126706 = AuditEventID(
    fhirCode: '126706',
  );

  /// value126707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126707 = AuditEventID(
    fhirCode: '126707',
  );

  /// value126708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126708 = AuditEventID(
    fhirCode: '126708',
  );

  /// value126709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126709 = AuditEventID(
    fhirCode: '126709',
  );

  /// value126710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126710 = AuditEventID(
    fhirCode: '126710',
  );

  /// value126711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126711 = AuditEventID(
    fhirCode: '126711',
  );

  /// value126712
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126712 = AuditEventID(
    fhirCode: '126712',
  );

  /// value126713
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126713 = AuditEventID(
    fhirCode: '126713',
  );

  /// value126714
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126714 = AuditEventID(
    fhirCode: '126714',
  );

  /// value126715
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126715 = AuditEventID(
    fhirCode: '126715',
  );

  /// value126716
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126716 = AuditEventID(
    fhirCode: '126716',
  );

  /// value126801
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126801 = AuditEventID(
    fhirCode: '126801',
  );

  /// value126802
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126802 = AuditEventID(
    fhirCode: '126802',
  );

  /// value126803
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126803 = AuditEventID(
    fhirCode: '126803',
  );

  /// value126804
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126804 = AuditEventID(
    fhirCode: '126804',
  );

  /// value126805
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126805 = AuditEventID(
    fhirCode: '126805',
  );

  /// value126806
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126806 = AuditEventID(
    fhirCode: '126806',
  );

  /// value126807
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126807 = AuditEventID(
    fhirCode: '126807',
  );

  /// value126808
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126808 = AuditEventID(
    fhirCode: '126808',
  );

  /// value126809
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126809 = AuditEventID(
    fhirCode: '126809',
  );

  /// value126810
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126810 = AuditEventID(
    fhirCode: '126810',
  );

  /// value126811
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID value126811 = AuditEventID(
    fhirCode: '126811',
  );

  /// rest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID rest = AuditEventID(
    fhirCode: 'rest',
  );

  /// access
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID access = AuditEventID(
    fhirCode: 'access',
  );

  /// hold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID hold = AuditEventID(
    fhirCode: 'hold',
  );

  /// amend
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID amend = AuditEventID(
    fhirCode: 'amend',
  );

  /// archive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID archive = AuditEventID(
    fhirCode: 'archive',
  );

  /// attest
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID attest = AuditEventID(
    fhirCode: 'attest',
  );

  /// decrypt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID decrypt = AuditEventID(
    fhirCode: 'decrypt',
  );

  /// deidentify
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID deidentify = AuditEventID(
    fhirCode: 'deidentify',
  );

  /// deprecate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID deprecate = AuditEventID(
    fhirCode: 'deprecate',
  );

  /// destroy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID destroy = AuditEventID(
    fhirCode: 'destroy',
  );

  /// disclose
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID disclose = AuditEventID(
    fhirCode: 'disclose',
  );

  /// encrypt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID encrypt = AuditEventID(
    fhirCode: 'encrypt',
  );

  /// extract
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID extract = AuditEventID(
    fhirCode: 'extract',
  );

  /// link
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID link = AuditEventID(
    fhirCode: 'link',
  );

  /// merge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID merge = AuditEventID(
    fhirCode: 'merge',
  );

  /// originate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID originate = AuditEventID(
    fhirCode: 'originate',
  );

  /// pseudonymize
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID pseudonymize = AuditEventID(
    fhirCode: 'pseudonymize',
  );

  /// reactivate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID reactivate = AuditEventID(
    fhirCode: 'reactivate',
  );

  /// receive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID receive = AuditEventID(
    fhirCode: 'receive',
  );

  /// reidentify
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID reidentify = AuditEventID(
    fhirCode: 'reidentify',
  );

  /// unhold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID unhold = AuditEventID(
    fhirCode: 'unhold',
  );

  /// report
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID report = AuditEventID(
    fhirCode: 'report',
  );

  /// restore
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID restore = AuditEventID(
    fhirCode: 'restore',
  );

  /// transform
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID transform = AuditEventID(
    fhirCode: 'transform',
  );

  /// transmit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID transmit = AuditEventID(
    fhirCode: 'transmit',
  );

  /// unlink
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID unlink = AuditEventID(
    fhirCode: 'unlink',
  );

  /// unmerge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID unmerge = AuditEventID(
    fhirCode: 'unmerge',
  );

  /// verify
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AuditEventID verify = AuditEventID(
    fhirCode: 'verify',
  );

  /// For instances where an Element is present but not value

  static final AuditEventID elementOnly = AuditEventID();

  /// List of all enum-like values
  static final List<AuditEventID> values = [
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
    rest,
    access,
    hold,
    amend,
    archive,
    attest,
    decrypt,
    deidentify,
    deprecate,
    destroy,
    disclose,
    encrypt,
    extract,
    link,
    merge,
    originate,
    pseudonymize,
    reactivate,
    receive,
    reidentify,
    unhold,
    report,
    restore,
    transform,
    transmit,
    unlink,
    unmerge,
    verify,
  ];

  /// Returns the enum value with an element attached
  AuditEventID withElement(Element? newElement) {
    return AuditEventID(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AuditEventID] from JSON.
  static AuditEventID fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventID.elementOnly.withElement(element);
    }
    return AuditEventID.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AuditEventID.$fhirCode';
}
